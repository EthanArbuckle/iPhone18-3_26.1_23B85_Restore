@interface NSObject(MusicKit_SoftLinking_MPCPlayerResetTracklistCommand)
- (id)_musicKit_self_resetTracklistCommand;
- (id)musicKit_resetTracklistCommand_clearCommandRequest;
- (id)musicKit_resetTracklistCommand_clearUpNextItemsCommandRequest;
- (id)musicKit_resetTracklistCommand_replaceCommandRequestWithPlaybackIntent:()MusicKit_SoftLinking_MPCPlayerResetTracklistCommand replaceIntent:;
@end

@implementation NSObject(MusicKit_SoftLinking_MPCPlayerResetTracklistCommand)

- (id)_musicKit_self_resetTracklistCommand
{
  if ([self conformsToProtocol:&unk_1F50DD660])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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
  _musicKit_self_resetTracklistCommand = [self _musicKit_self_resetTracklistCommand];
  _underlyingPlaybackIntent = [v6 _underlyingPlaybackIntent];

  v9 = [_musicKit_self_resetTracklistCommand replaceWithPlaybackIntent:_underlyingPlaybackIntent replaceIntent:v5];

  return v9;
}

- (id)musicKit_resetTracklistCommand_clearCommandRequest
{
  _musicKit_self_resetTracklistCommand = [self _musicKit_self_resetTracklistCommand];
  clear = [_musicKit_self_resetTracklistCommand clear];

  return clear;
}

- (id)musicKit_resetTracklistCommand_clearUpNextItemsCommandRequest
{
  _musicKit_self_resetTracklistCommand = [self _musicKit_self_resetTracklistCommand];
  clearUpNextItems = [_musicKit_self_resetTracklistCommand clearUpNextItems];

  return clearUpNextItems;
}

@end