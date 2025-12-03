@interface NSObject(MusicKit_SoftLinking_MPCPlayerInsertItemsCommand)
- (id)_musicKit_self_insertItemsCommand;
- (id)musicKit_insertItemCommand_insertAfterLastSection;
- (id)musicKit_insertItemsCommand_insertAfterPlayingItemCommandRequestWithPlaybackIntent:()MusicKit_SoftLinking_MPCPlayerInsertItemsCommand;
- (id)musicKit_insertItemsCommand_insertAtEndOfTracklistCommandRequestWithPlaybackIntent:()MusicKit_SoftLinking_MPCPlayerInsertItemsCommand;
- (id)musicKit_insertItemsCommand_insertAtEndOfUpNextCommandRequestWithPlaybackIntent:()MusicKit_SoftLinking_MPCPlayerInsertItemsCommand;
@end

@implementation NSObject(MusicKit_SoftLinking_MPCPlayerInsertItemsCommand)

- (id)_musicKit_self_insertItemsCommand
{
  if ([self conformsToProtocol:&unk_1F50DD840])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)musicKit_insertItemsCommand_insertAfterPlayingItemCommandRequestWithPlaybackIntent:()MusicKit_SoftLinking_MPCPlayerInsertItemsCommand
{
  v4 = a3;
  _musicKit_self_insertItemsCommand = [self _musicKit_self_insertItemsCommand];
  _underlyingPlaybackIntent = [v4 _underlyingPlaybackIntent];

  v7 = [_musicKit_self_insertItemsCommand insertAfterPlayingItemWithPlaybackIntent:_underlyingPlaybackIntent];

  return v7;
}

- (id)musicKit_insertItemsCommand_insertAtEndOfTracklistCommandRequestWithPlaybackIntent:()MusicKit_SoftLinking_MPCPlayerInsertItemsCommand
{
  v4 = a3;
  _musicKit_self_insertItemsCommand = [self _musicKit_self_insertItemsCommand];
  _underlyingPlaybackIntent = [v4 _underlyingPlaybackIntent];

  v7 = [_musicKit_self_insertItemsCommand insertAtEndOfTracklistWithPlaybackIntent:_underlyingPlaybackIntent];

  return v7;
}

- (id)musicKit_insertItemsCommand_insertAtEndOfUpNextCommandRequestWithPlaybackIntent:()MusicKit_SoftLinking_MPCPlayerInsertItemsCommand
{
  v4 = a3;
  _musicKit_self_insertItemsCommand = [self _musicKit_self_insertItemsCommand];
  _underlyingPlaybackIntent = [v4 _underlyingPlaybackIntent];

  v7 = [_musicKit_self_insertItemsCommand insertAtEndOfUpNextWithPlaybackIntent:_underlyingPlaybackIntent];

  return v7;
}

- (id)musicKit_insertItemCommand_insertAfterLastSection
{
  _musicKit_self_insertItemsCommand = [self _musicKit_self_insertItemsCommand];
  insertAfterLastSection = [_musicKit_self_insertItemsCommand insertAfterLastSection];

  return insertAfterLastSection;
}

@end