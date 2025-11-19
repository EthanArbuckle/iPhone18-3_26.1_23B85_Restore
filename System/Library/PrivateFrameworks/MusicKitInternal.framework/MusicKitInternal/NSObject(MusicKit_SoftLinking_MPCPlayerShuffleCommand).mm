@interface NSObject(MusicKit_SoftLinking_MPCPlayerShuffleCommand)
- (id)_musicKit_self_shuffleCommand;
- (id)musicKit_shuffleCommand_setShuffleType:()MusicKit_SoftLinking_MPCPlayerShuffleCommand;
@end

@implementation NSObject(MusicKit_SoftLinking_MPCPlayerShuffleCommand)

- (id)_musicKit_self_shuffleCommand
{
  if ([a1 conformsToProtocol:&unk_1F50DDB08])
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)musicKit_shuffleCommand_setShuffleType:()MusicKit_SoftLinking_MPCPlayerShuffleCommand
{
  if (a3 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = a3 == 1;
  }

  v4 = [a1 _musicKit_self_shuffleCommand];
  v5 = [v4 setShuffleType:v3];

  return v5;
}

@end