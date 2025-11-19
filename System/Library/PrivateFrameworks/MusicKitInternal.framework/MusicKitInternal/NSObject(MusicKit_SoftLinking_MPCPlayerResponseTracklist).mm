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
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)musicKit_responseTracklist_playingItem
{
  v1 = [a1 _musicKit_self_responseTracklist];
  v2 = [v1 playingItem];

  return v2;
}

- (uint64_t)musicKit_responseTracklist_repeatType
{
  v1 = [a1 _musicKit_self_responseTracklist];
  v2 = [v1 repeatType];

  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return v2 == 1;
  }
}

- (uint64_t)musicKit_responseTracklist_shuffleType
{
  v1 = [a1 _musicKit_self_responseTracklist];
  v2 = [v1 shuffleType];

  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return v2 == 1;
  }
}

- (uint64_t)musicKit_responseTracklist_actionAtQueueEnd
{
  v1 = [a1 _musicKit_self_responseTracklist];
  v2 = [v1 actionAtQueueEnd];

  if ((v2 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

- (id)musicKit_responseTracklist_resetCommand
{
  v1 = [a1 _musicKit_self_responseTracklist];
  v2 = [v1 resetCommand];

  return v2;
}

- (id)musicKit_responseTracklist_insertCommand
{
  v1 = [a1 _musicKit_self_responseTracklist];
  v2 = [v1 insertCommand];

  return v2;
}

- (id)musicKit_responseTracklist_reorderCommand
{
  v1 = [a1 _musicKit_self_responseTracklist];
  v2 = [v1 reorderCommand];

  return v2;
}

- (id)musicKit_responseTracklist_changeItemCommand
{
  v1 = [a1 _musicKit_self_responseTracklist];
  v2 = [v1 changeItemCommand];

  return v2;
}

- (id)musicKit_responseTracklist_repeatCommand
{
  v1 = [a1 _musicKit_self_responseTracklist];
  v2 = [v1 repeatCommand];

  return v2;
}

- (id)musicKit_responseTracklist_shuffleCommand
{
  v1 = [a1 _musicKit_self_responseTracklist];
  v2 = [v1 shuffleCommand];

  return v2;
}

- (id)musicKit_responseTracklist_actionAtQueueEndCommand
{
  v1 = [a1 _musicKit_self_responseTracklist];
  v2 = [v1 actionAtQueueEndCommand];

  return v2;
}

- (id)musicKit_responseTracklist_sectionedCollection
{
  v1 = [a1 _musicKit_self_responseTracklist];
  v2 = [v1 displayItems];
  v3 = [objc_alloc(MEMORY[0x1E69776C8]) initWithUnderlyingSectionedCollection:v2];

  return v3;
}

- (id)musicKit_responseTracklist_underlyingSectionObjectAtIndexPathBlock
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__NSObject_MusicKit_SoftLinking_MPCPlayerResponseTracklist__musicKit_responseTracklist_underlyingSectionObjectAtIndexPathBlock__block_invoke;
  aBlock[3] = &unk_1E84C3DD0;
  aBlock[4] = a1;
  v1 = _Block_copy(aBlock);

  return v1;
}

- (uint64_t)musicKit_globalItemCount
{
  v1 = [a1 _musicKit_self_responseTracklist];
  v2 = [v1 globalItemCount];

  return v2;
}

@end