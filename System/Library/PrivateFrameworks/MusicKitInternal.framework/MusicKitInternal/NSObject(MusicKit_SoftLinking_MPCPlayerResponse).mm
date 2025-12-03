@interface NSObject(MusicKit_SoftLinking_MPCPlayerResponse)
- (id)_musicKit_self_playerResponse;
- (id)musicKit_playerPath;
- (id)musicKit_playerResponse_pauseCommandRequest;
- (id)musicKit_playerResponse_playCommandRequest;
- (id)musicKit_playerResponse_stopCommandRequest;
- (id)musicKit_playerResponse_tracklist;
- (uint64_t)musicKit_playerResponse_state;
@end

@implementation NSObject(MusicKit_SoftLinking_MPCPlayerResponse)

- (id)_musicKit_self_playerResponse
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getMPCPlayerResponseClass_softClass;
  v10 = getMPCPlayerResponseClass_softClass;
  if (!getMPCPlayerResponseClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getMPCPlayerResponseClass_block_invoke;
    v6[3] = &unk_1E84C3838;
    v6[4] = &v7;
    __getMPCPlayerResponseClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)musicKit_playerResponse_tracklist
{
  _musicKit_self_playerResponse = [self _musicKit_self_playerResponse];
  tracklist = [_musicKit_self_playerResponse tracklist];

  return tracklist;
}

- (id)musicKit_playerPath
{
  _musicKit_self_playerResponse = [self _musicKit_self_playerResponse];
  playerPath = [_musicKit_self_playerResponse playerPath];

  return playerPath;
}

- (uint64_t)musicKit_playerResponse_state
{
  _musicKit_self_playerResponse = [self _musicKit_self_playerResponse];
  state = [_musicKit_self_playerResponse state];

  if ((state - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1D5619C90[state - 1];
  }
}

- (id)musicKit_playerResponse_playCommandRequest
{
  _musicKit_self_playerResponse = [self _musicKit_self_playerResponse];
  play = [_musicKit_self_playerResponse play];

  return play;
}

- (id)musicKit_playerResponse_pauseCommandRequest
{
  _musicKit_self_playerResponse = [self _musicKit_self_playerResponse];
  pause = [_musicKit_self_playerResponse pause];

  return pause;
}

- (id)musicKit_playerResponse_stopCommandRequest
{
  _musicKit_self_playerResponse = [self _musicKit_self_playerResponse];
  stop = [_musicKit_self_playerResponse stop];

  return stop;
}

@end