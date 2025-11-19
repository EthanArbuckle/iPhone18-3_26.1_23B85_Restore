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
  if ([a1 conformsToProtocol:&unk_1F50DD840])
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)musicKit_insertItemsCommand_insertAfterPlayingItemCommandRequestWithPlaybackIntent:()MusicKit_SoftLinking_MPCPlayerInsertItemsCommand
{
  v4 = a3;
  v5 = [a1 _musicKit_self_insertItemsCommand];
  v6 = [v4 _underlyingPlaybackIntent];

  v7 = [v5 insertAfterPlayingItemWithPlaybackIntent:v6];

  return v7;
}

- (id)musicKit_insertItemsCommand_insertAtEndOfTracklistCommandRequestWithPlaybackIntent:()MusicKit_SoftLinking_MPCPlayerInsertItemsCommand
{
  v4 = a3;
  v5 = [a1 _musicKit_self_insertItemsCommand];
  v6 = [v4 _underlyingPlaybackIntent];

  v7 = [v5 insertAtEndOfTracklistWithPlaybackIntent:v6];

  return v7;
}

- (id)musicKit_insertItemsCommand_insertAtEndOfUpNextCommandRequestWithPlaybackIntent:()MusicKit_SoftLinking_MPCPlayerInsertItemsCommand
{
  v4 = a3;
  v5 = [a1 _musicKit_self_insertItemsCommand];
  v6 = [v4 _underlyingPlaybackIntent];

  v7 = [v5 insertAtEndOfUpNextWithPlaybackIntent:v6];

  return v7;
}

- (id)musicKit_insertItemCommand_insertAfterLastSection
{
  v1 = [a1 _musicKit_self_insertItemsCommand];
  v2 = [v1 insertAfterLastSection];

  return v2;
}

@end