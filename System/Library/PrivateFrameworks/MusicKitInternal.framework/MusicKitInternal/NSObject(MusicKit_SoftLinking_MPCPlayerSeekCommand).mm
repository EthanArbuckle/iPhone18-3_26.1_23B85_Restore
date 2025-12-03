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
  if ([self conformsToProtocol:&unk_1F50DDE80])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)musicKit_seekCommand_preferredForwardJumpInterval
{
  _musicKit_self_seekCommand = [self _musicKit_self_seekCommand];
  preferredForwardJumpIntervals = [_musicKit_self_seekCommand preferredForwardJumpIntervals];
  firstObject = [preferredForwardJumpIntervals firstObject];

  if (firstObject)
  {
    v4 = firstObject;
  }

  else
  {
    v4 = &unk_1F50D0008;
  }

  return v4;
}

- (id)musicKit_seekCommand_preferredBackwardJumpInterval
{
  _musicKit_self_seekCommand = [self _musicKit_self_seekCommand];
  preferredBackwardJumpIntervals = [_musicKit_self_seekCommand preferredBackwardJumpIntervals];
  firstObject = [preferredBackwardJumpIntervals firstObject];

  if (firstObject)
  {
    v4 = firstObject;
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

  _musicKit_self_seekCommand = [self _musicKit_self_seekCommand];
  v5 = [_musicKit_self_seekCommand beginSeekWithDirection:v3];

  return v5;
}

- (id)musicKit_seekCommand_endSeekCommandRequest
{
  _musicKit_self_seekCommand = [self _musicKit_self_seekCommand];
  endSeek = [_musicKit_self_seekCommand endSeek];

  return endSeek;
}

- (id)musicKit_seekCommand_jumpCommandRequestByInterval:()MusicKit_SoftLinking_MPCPlayerSeekCommand
{
  _musicKit_self_seekCommand = [self _musicKit_self_seekCommand];
  v4 = [_musicKit_self_seekCommand jumpByInterval:a2];

  return v4;
}

- (id)musicKit_seekCommand_changePositionCommandRequestToElapsedInterval:()MusicKit_SoftLinking_MPCPlayerSeekCommand
{
  _musicKit_self_seekCommand = [self _musicKit_self_seekCommand];
  v4 = [_musicKit_self_seekCommand changePositionToElapsedInterval:a2];

  return v4;
}

@end