@interface NSObject(MusicKit_SoftLinking_MPCPlayerShuffleCommand)
- (id)_musicKit_self_shuffleCommand;
- (id)musicKit_shuffleCommand_setShuffleType:()MusicKit_SoftLinking_MPCPlayerShuffleCommand;
@end

@implementation NSObject(MusicKit_SoftLinking_MPCPlayerShuffleCommand)

- (id)_musicKit_self_shuffleCommand
{
  if ([self conformsToProtocol:&unk_1F50DDB08])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

  _musicKit_self_shuffleCommand = [self _musicKit_self_shuffleCommand];
  v5 = [_musicKit_self_shuffleCommand setShuffleType:v3];

  return v5;
}

@end