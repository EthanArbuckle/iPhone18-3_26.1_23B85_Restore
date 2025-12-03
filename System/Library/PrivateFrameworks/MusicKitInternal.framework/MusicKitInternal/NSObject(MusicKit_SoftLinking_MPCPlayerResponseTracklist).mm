@interface NSObject(MusicKit_SoftLinking_MPCPlayerResponseTracklist)
- (id)_musicKit_self_responseTracklist;
- (id)musicKit_responseTracklist_actionAtQueueEndCommand;
- (id)musicKit_responseTracklist_changeItemCommand;
- (id)musicKit_responseTracklist_insertCommand;
- (id)musicKit_responseTracklist_playingItem;
- (id)musicKit_responseTracklist_reorderCommand;
- (id)musicKit_responseTracklist_repeatCommand;
- (id)musicKit_responseTracklist_resetCommand;
- (id)musicKit_responseTracklist_sectionedCollection;
- (id)musicKit_responseTracklist_shuffleCommand;
- (id)musicKit_responseTracklist_underlyingSectionObjectAtIndexPathBlock;
- (uint64_t)musicKit_globalItemCount;
- (uint64_t)musicKit_responseTracklist_actionAtQueueEnd;
- (uint64_t)musicKit_responseTracklist_repeatType;
- (uint64_t)musicKit_responseTracklist_shuffleType;
@end

@implementation NSObject(MusicKit_SoftLinking_MPCPlayerResponseTracklist)

- (id)_musicKit_self_responseTracklist
{
  getMPCPlayerResponseTracklistClass();
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

- (id)musicKit_responseTracklist_playingItem
{
  _musicKit_self_responseTracklist = [self _musicKit_self_responseTracklist];
  playingItem = [_musicKit_self_responseTracklist playingItem];

  return playingItem;
}

- (uint64_t)musicKit_responseTracklist_repeatType
{
  _musicKit_self_responseTracklist = [self _musicKit_self_responseTracklist];
  repeatType = [_musicKit_self_responseTracklist repeatType];

  if (repeatType == 2)
  {
    return 2;
  }

  else
  {
    return repeatType == 1;
  }
}

- (uint64_t)musicKit_responseTracklist_shuffleType
{
  _musicKit_self_responseTracklist = [self _musicKit_self_responseTracklist];
  shuffleType = [_musicKit_self_responseTracklist shuffleType];

  if (shuffleType == 2)
  {
    return 2;
  }

  else
  {
    return shuffleType == 1;
  }
}

- (uint64_t)musicKit_responseTracklist_actionAtQueueEnd
{
  _musicKit_self_responseTracklist = [self _musicKit_self_responseTracklist];
  actionAtQueueEnd = [_musicKit_self_responseTracklist actionAtQueueEnd];

  if ((actionAtQueueEnd - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return actionAtQueueEnd;
  }
}

- (id)musicKit_responseTracklist_resetCommand
{
  _musicKit_self_responseTracklist = [self _musicKit_self_responseTracklist];
  resetCommand = [_musicKit_self_responseTracklist resetCommand];

  return resetCommand;
}

- (id)musicKit_responseTracklist_insertCommand
{
  _musicKit_self_responseTracklist = [self _musicKit_self_responseTracklist];
  insertCommand = [_musicKit_self_responseTracklist insertCommand];

  return insertCommand;
}

- (id)musicKit_responseTracklist_reorderCommand
{
  _musicKit_self_responseTracklist = [self _musicKit_self_responseTracklist];
  reorderCommand = [_musicKit_self_responseTracklist reorderCommand];

  return reorderCommand;
}

- (id)musicKit_responseTracklist_changeItemCommand
{
  _musicKit_self_responseTracklist = [self _musicKit_self_responseTracklist];
  changeItemCommand = [_musicKit_self_responseTracklist changeItemCommand];

  return changeItemCommand;
}

- (id)musicKit_responseTracklist_repeatCommand
{
  _musicKit_self_responseTracklist = [self _musicKit_self_responseTracklist];
  repeatCommand = [_musicKit_self_responseTracklist repeatCommand];

  return repeatCommand;
}

- (id)musicKit_responseTracklist_shuffleCommand
{
  _musicKit_self_responseTracklist = [self _musicKit_self_responseTracklist];
  shuffleCommand = [_musicKit_self_responseTracklist shuffleCommand];

  return shuffleCommand;
}

- (id)musicKit_responseTracklist_actionAtQueueEndCommand
{
  _musicKit_self_responseTracklist = [self _musicKit_self_responseTracklist];
  actionAtQueueEndCommand = [_musicKit_self_responseTracklist actionAtQueueEndCommand];

  return actionAtQueueEndCommand;
}

- (id)musicKit_responseTracklist_sectionedCollection
{
  _musicKit_self_responseTracklist = [self _musicKit_self_responseTracklist];
  displayItems = [_musicKit_self_responseTracklist displayItems];
  v3 = [objc_alloc(MEMORY[0x1E69776C8]) initWithUnderlyingSectionedCollection:displayItems];

  return v3;
}

- (id)musicKit_responseTracklist_underlyingSectionObjectAtIndexPathBlock
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__NSObject_MusicKit_SoftLinking_MPCPlayerResponseTracklist__musicKit_responseTracklist_underlyingSectionObjectAtIndexPathBlock__block_invoke;
  aBlock[3] = &unk_1E84C3DD0;
  aBlock[4] = self;
  v1 = _Block_copy(aBlock);

  return v1;
}

- (uint64_t)musicKit_globalItemCount
{
  _musicKit_self_responseTracklist = [self _musicKit_self_responseTracklist];
  globalItemCount = [_musicKit_self_responseTracklist globalItemCount];

  return globalItemCount;
}

@end