@interface NSObject(MusicKit_SoftLinking_MPCPlayerChangeItemCommand)
- (id)_musicKit_self_changeItemCommand;
- (id)musicKit_changeItemCommand_changeToItem:()MusicKit_SoftLinking_MPCPlayerChangeItemCommand;
- (id)musicKit_changeItemCommand_nextChapterCommandRequest;
- (id)musicKit_changeItemCommand_nextItemCommandRequest;
- (id)musicKit_changeItemCommand_nextSectionCommandRequest;
- (id)musicKit_changeItemCommand_previousChapterCommandRequest;
- (id)musicKit_changeItemCommand_previousItemCommandRequest;
- (id)musicKit_changeItemCommand_previousItemDeferringToPlaybackQueuePositionCommandRequest;
- (id)musicKit_changeItemCommand_previousSectionCommandRequest;
@end

@implementation NSObject(MusicKit_SoftLinking_MPCPlayerChangeItemCommand)

- (id)_musicKit_self_changeItemCommand
{
  if ([self conformsToProtocol:&unk_1F50DDC10])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)musicKit_changeItemCommand_previousItemCommandRequest
{
  _musicKit_self_changeItemCommand = [self _musicKit_self_changeItemCommand];
  previousItem = [_musicKit_self_changeItemCommand previousItem];

  return previousItem;
}

- (id)musicKit_changeItemCommand_previousItemDeferringToPlaybackQueuePositionCommandRequest
{
  _musicKit_self_changeItemCommand = [self _musicKit_self_changeItemCommand];
  previousItemDeferringToPlaybackQueuePosition = [_musicKit_self_changeItemCommand previousItemDeferringToPlaybackQueuePosition];

  return previousItemDeferringToPlaybackQueuePosition;
}

- (id)musicKit_changeItemCommand_previousSectionCommandRequest
{
  _musicKit_self_changeItemCommand = [self _musicKit_self_changeItemCommand];
  previousSection = [_musicKit_self_changeItemCommand previousSection];

  return previousSection;
}

- (id)musicKit_changeItemCommand_previousChapterCommandRequest
{
  _musicKit_self_changeItemCommand = [self _musicKit_self_changeItemCommand];
  previousChapter = [_musicKit_self_changeItemCommand previousChapter];

  return previousChapter;
}

- (id)musicKit_changeItemCommand_nextItemCommandRequest
{
  _musicKit_self_changeItemCommand = [self _musicKit_self_changeItemCommand];
  nextItem = [_musicKit_self_changeItemCommand nextItem];

  return nextItem;
}

- (id)musicKit_changeItemCommand_nextSectionCommandRequest
{
  _musicKit_self_changeItemCommand = [self _musicKit_self_changeItemCommand];
  nextSection = [_musicKit_self_changeItemCommand nextSection];

  return nextSection;
}

- (id)musicKit_changeItemCommand_nextChapterCommandRequest
{
  _musicKit_self_changeItemCommand = [self _musicKit_self_changeItemCommand];
  nextChapter = [_musicKit_self_changeItemCommand nextChapter];

  return nextChapter;
}

- (id)musicKit_changeItemCommand_changeToItem:()MusicKit_SoftLinking_MPCPlayerChangeItemCommand
{
  v4 = a3;
  _musicKit_self_changeItemCommand = [self _musicKit_self_changeItemCommand];
  v6 = [_musicKit_self_changeItemCommand changeToItem:v4];

  return v6;
}

@end