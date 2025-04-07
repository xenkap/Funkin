package funkin.play.character;

import funkin.data.animation.AnimationData;
import haxe.Json;
import flixel.graphics.frames.FlxFrame;

/**
 * The JSON data schema used to define a character.
 */
typedef PsychCharacterData =
{
  /**
   * The readable name of the character.
   */
  var name:String;

  /**
   * `assetPath` on VSlice characters. Blehh!
   */
  var image:String;

  /**
   * The scale of the graphic as a float.
   * Pro tip: On pixel-art levels, save the sprites small and set this value to 6 or so to save memory.
   * @default 1
   */
  var scale:Null<Float>;

  /**
   * String containing the path to the health icon for the character.
   * `healthIcon.id` on VSlice characters.
   */
  var healthIcon:String;

  /**
   * The global offset to the character's position, in pixels.
   * `offsets` on VSlice characters.
   * @default [0, 0]
   */
  var position:Null<Array<Float>>;

  /**
   * The amount to offset the camera by while focusing on this character.
   * Default value focuses on the character directly.
   * `cameraOffsets` on VSlice characters.
   * @default [0, 0]
   */
  var camera_position:Array<Float>;

  /**
   * Setting this to true disables anti-aliasing for the character.
   * `isPixel` on VSlice characters.
   * @default false
   */
  var no_antialiasing:Null<Bool>;

  /**
   * The minimum duration that a character will play a note animation for, in beats.
   * If this number is too low, you may see the character start playing the idle animation between notes.
   * If this number is too high, you may see the the character play the sing animation for too long after the notes are gone.
   * `singTime` on VSlice characters.
   *
   * Examples:
   * - Daddy Dearest uses a value of `1.525`.
   * @default 1.0
   */
  var sing_duration:Null<Float>;

  /**
   * An optional array of animations which the character can play.
   */
  var animations:Array<PsychAnimArray>;

  /**
   * Whether or not the whole ass sprite is flipped by default.
   * Useful for characters that could also be played (Pico)
   * `flipX` on VSlice characters.
   *
   * @default false
   */
  var flip_x:Null<Bool>;
};

typedef PsychAnimArray =
{
  /**
   * `name` on VSlice characters.
   * Replace `-loop` suffixes with `-hold`.
   */
  var anim:String;

  /**
   * `prefix` on VSlice characters.
   */
  var name:String;

  /**
   * `frameRate` on VSlice characters.
   */
  var fps:Int;

  /**
   * `looped` on VSlice characters.
   */
  var loop:Bool;

  /**
   * `frameIndices` on VSlice characters.
   */
  var indices:Array<Int>;

  /**
   * ...Huh. It's the same on VSlice characters.
   * So it is...
   */
  var offsets:Array<Float>;

  // var offsets:Array<Int>;
}
