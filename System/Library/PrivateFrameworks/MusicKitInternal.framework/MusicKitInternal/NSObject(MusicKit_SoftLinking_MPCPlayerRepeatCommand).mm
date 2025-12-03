@interface NSObject(MusicKit_SoftLinking_MPCPlayerRepeatCommand)
- (id)_musicKit_self_repeatCommand;
- (id)musicKit_repeatCommand_setRepeatType:()MusicKit_SoftLinking_MPCPlayerRepeatCommand;
@end

@implementation NSObject(MusicKit_SoftLinking_MPCPlayerRepeatCommand)

- (id)_musicKit_self_repeatCommand
{
  if ([self conformsToProtocol:&unk_1F50DDA20])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)musicKit_repeatCommand_setRepeatType:()MusicKit_SoftLinking_MPCPlayerRepeatCommand
{
  if (a3 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = a3 == 1;
  }

  _musicKit_self_repeatCommand = [self _musicKit_self_repeatCommand];
  v5 = [_musicKit_self_repeatCommand setRepeatType:v3];

  return v5;
}

@end