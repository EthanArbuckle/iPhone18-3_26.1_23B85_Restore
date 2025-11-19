@interface NSObject(MusicKit_SoftLinking_MPCPlayerRepeatCommand)
- (id)_musicKit_self_repeatCommand;
- (id)musicKit_repeatCommand_setRepeatType:()MusicKit_SoftLinking_MPCPlayerRepeatCommand;
@end

@implementation NSObject(MusicKit_SoftLinking_MPCPlayerRepeatCommand)

- (id)_musicKit_self_repeatCommand
{
  if ([a1 conformsToProtocol:&unk_1F50DDA20])
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
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

  v4 = [a1 _musicKit_self_repeatCommand];
  v5 = [v4 setRepeatType:v3];

  return v5;
}

@end