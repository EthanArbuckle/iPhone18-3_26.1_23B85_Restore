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
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)musicKit_playerResponse_tracklist
{
  v1 = [a1 _musicKit_self_playerResponse];
  v2 = [v1 tracklist];

  return v2;
}

- (id)musicKit_playerPath
{
  v1 = [a1 _musicKit_self_playerResponse];
  v2 = [v1 playerPath];

  return v2;
}

- (uint64_t)musicKit_playerResponse_state
{
  v1 = [a1 _musicKit_self_playerResponse];
  v2 = [v1 state];

  if ((v2 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1D5619C90[v2 - 1];
  }
}

- (id)musicKit_playerResponse_playCommandRequest
{
  v1 = [a1 _musicKit_self_playerResponse];
  v2 = [v1 play];

  return v2;
}

- (id)musicKit_playerResponse_pauseCommandRequest
{
  v1 = [a1 _musicKit_self_playerResponse];
  v2 = [v1 pause];

  return v2;
}

- (id)musicKit_playerResponse_stopCommandRequest
{
  v1 = [a1 _musicKit_self_playerResponse];
  v2 = [v1 stop];

  return v2;
}

@end