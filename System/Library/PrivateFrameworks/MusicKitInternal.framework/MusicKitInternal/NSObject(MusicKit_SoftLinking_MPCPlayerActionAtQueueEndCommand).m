@interface NSObject(MusicKit_SoftLinking_MPCPlayerActionAtQueueEndCommand)
- (id)_musicKit_self_actionAtQueueEndCommand;
- (id)musicKit_actionAtQueueEndCommand_setQueueEndActionCommandRequest:()MusicKit_SoftLinking_MPCPlayerActionAtQueueEndCommand;
- (uint64_t)musicKit_actionAtQueueEndCommand_isAutoPlaySupported;
@end

@implementation NSObject(MusicKit_SoftLinking_MPCPlayerActionAtQueueEndCommand)

- (id)_musicKit_self_actionAtQueueEndCommand
{
  if ([a1 conformsToProtocol:&unk_1F50DDCF8])
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
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

  v4 = [a1 _musicKit_self_actionAtQueueEndCommand];
  v5 = [v4 setQueueEndAction:v3];

  return v5;
}

- (uint64_t)musicKit_actionAtQueueEndCommand_isAutoPlaySupported
{
  v1 = [a1 _musicKit_self_actionAtQueueEndCommand];
  v2 = [v1 supportedActions];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:3];
  v4 = [v2 containsObject:v3];

  return v4;
}

@end