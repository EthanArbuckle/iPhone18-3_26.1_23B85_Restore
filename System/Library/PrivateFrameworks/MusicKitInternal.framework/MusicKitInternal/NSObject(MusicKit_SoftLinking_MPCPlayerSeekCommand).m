@interface NSObject(MusicKit_SoftLinking_MPCPlayerSeekCommand)
- (id)_musicKit_self_seekCommand;
- (id)musicKit_seekCommand_beginSeekCommandRequestWithDirection:()MusicKit_SoftLinking_MPCPlayerSeekCommand;
- (id)musicKit_seekCommand_changePositionCommandRequestToElapsedInterval:()MusicKit_SoftLinking_MPCPlayerSeekCommand;
- (id)musicKit_seekCommand_endSeekCommandRequest;
- (id)musicKit_seekCommand_jumpCommandRequestByInterval:()MusicKit_SoftLinking_MPCPlayerSeekCommand;
- (id)musicKit_seekCommand_preferredBackwardJumpInterval;
- (id)musicKit_seekCommand_preferredForwardJumpInterval;
@end

@implementation NSObject(MusicKit_SoftLinking_MPCPlayerSeekCommand)

- (id)_musicKit_self_seekCommand
{
  if ([a1 conformsToProtocol:&unk_1F50DDE80])
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)musicKit_seekCommand_preferredForwardJumpInterval
{
  v1 = [a1 _musicKit_self_seekCommand];
  v2 = [v1 preferredForwardJumpIntervals];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &unk_1F50D0008;
  }

  return v4;
}

- (id)musicKit_seekCommand_preferredBackwardJumpInterval
{
  v1 = [a1 _musicKit_self_seekCommand];
  v2 = [v1 preferredBackwardJumpIntervals];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &unk_1F50D0020;
  }

  return v4;
}

- (id)musicKit_seekCommand_beginSeekCommandRequestWithDirection:()MusicKit_SoftLinking_MPCPlayerSeekCommand
{
  if ((a3 + 2) > 7)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_1D5619BF8[a3 + 2];
  }

  v4 = [a1 _musicKit_self_seekCommand];
  v5 = [v4 beginSeekWithDirection:v3];

  return v5;
}

- (id)musicKit_seekCommand_endSeekCommandRequest
{
  v1 = [a1 _musicKit_self_seekCommand];
  v2 = [v1 endSeek];

  return v2;
}

- (id)musicKit_seekCommand_jumpCommandRequestByInterval:()MusicKit_SoftLinking_MPCPlayerSeekCommand
{
  v3 = [a1 _musicKit_self_seekCommand];
  v4 = [v3 jumpByInterval:a2];

  return v4;
}

- (id)musicKit_seekCommand_changePositionCommandRequestToElapsedInterval:()MusicKit_SoftLinking_MPCPlayerSeekCommand
{
  v3 = [a1 _musicKit_self_seekCommand];
  v4 = [v3 changePositionToElapsedInterval:a2];

  return v4;
}

@end