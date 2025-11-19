@interface NSObject(MusicKit_SoftLinking_MPCPlayerResetTracklistCommand)
- (id)_musicKit_self_resetTracklistCommand;
- (id)musicKit_resetTracklistCommand_clearCommandRequest;
- (id)musicKit_resetTracklistCommand_clearUpNextItemsCommandRequest;
- (id)musicKit_resetTracklistCommand_replaceCommandRequestWithPlaybackIntent:()MusicKit_SoftLinking_MPCPlayerResetTracklistCommand replaceIntent:;
@end

@implementation NSObject(MusicKit_SoftLinking_MPCPlayerResetTracklistCommand)

- (id)_musicKit_self_resetTracklistCommand
{
  if ([a1 conformsToProtocol:&unk_1F50DD660])
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)musicKit_resetTracklistCommand_replaceCommandRequestWithPlaybackIntent:()MusicKit_SoftLinking_MPCPlayerResetTracklistCommand replaceIntent:
{
  if ((a4 - 1) >= 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a4;
  }

  v6 = a3;
  v7 = [a1 _musicKit_self_resetTracklistCommand];
  v8 = [v6 _underlyingPlaybackIntent];

  v9 = [v7 replaceWithPlaybackIntent:v8 replaceIntent:v5];

  return v9;
}

- (id)musicKit_resetTracklistCommand_clearCommandRequest
{
  v1 = [a1 _musicKit_self_resetTracklistCommand];
  v2 = [v1 clear];

  return v2;
}

- (id)musicKit_resetTracklistCommand_clearUpNextItemsCommandRequest
{
  v1 = [a1 _musicKit_self_resetTracklistCommand];
  v2 = [v1 clearUpNextItems];

  return v2;
}

@end