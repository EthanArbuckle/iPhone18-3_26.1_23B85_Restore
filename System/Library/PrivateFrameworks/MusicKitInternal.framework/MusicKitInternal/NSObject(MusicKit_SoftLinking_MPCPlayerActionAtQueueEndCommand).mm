@interface NSObject(MusicKit_SoftLinking_MPCPlayerActionAtQueueEndCommand)
- (id)_musicKit_self_actionAtQueueEndCommand;
- (id)musicKit_actionAtQueueEndCommand_setQueueEndActionCommandRequest:()MusicKit_SoftLinking_MPCPlayerActionAtQueueEndCommand;
- (uint64_t)musicKit_actionAtQueueEndCommand_isAutoPlaySupported;
@end

@implementation NSObject(MusicKit_SoftLinking_MPCPlayerActionAtQueueEndCommand)

- (id)_musicKit_self_actionAtQueueEndCommand
{
  if ([self conformsToProtocol:&unk_1F50DDCF8])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)musicKit_actionAtQueueEndCommand_setQueueEndActionCommandRequest:()MusicKit_SoftLinking_MPCPlayerActionAtQueueEndCommand
{
  if ((a3 - 1) >= 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = a3;
  }

  _musicKit_self_actionAtQueueEndCommand = [self _musicKit_self_actionAtQueueEndCommand];
  v5 = [_musicKit_self_actionAtQueueEndCommand setQueueEndAction:v3];

  return v5;
}

- (uint64_t)musicKit_actionAtQueueEndCommand_isAutoPlaySupported
{
  _musicKit_self_actionAtQueueEndCommand = [self _musicKit_self_actionAtQueueEndCommand];
  supportedActions = [_musicKit_self_actionAtQueueEndCommand supportedActions];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:3];
  v4 = [supportedActions containsObject:v3];

  return v4;
}

@end