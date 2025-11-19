@interface MusicKit_SoftLinking(MusicKit_SoftLinking_MPCPlayerResponseTracklist)
+ (id)resetCommandForPlayerPath:()MusicKit_SoftLinking_MPCPlayerResponseTracklist;
@end

@implementation MusicKit_SoftLinking(MusicKit_SoftLinking_MPCPlayerResponseTracklist)

+ (id)resetCommandForPlayerPath:()MusicKit_SoftLinking_MPCPlayerResponseTracklist
{
  v3 = a3;
  MPCPlayerResponseTracklistClass = getMPCPlayerResponseTracklistClass();
  v5 = [v3 _musicKit_self_playerPath];

  v6 = [MPCPlayerResponseTracklistClass resetCommandForPlayerPath:v5 devices:MEMORY[0x1E695E0F0]];

  return v6;
}

@end