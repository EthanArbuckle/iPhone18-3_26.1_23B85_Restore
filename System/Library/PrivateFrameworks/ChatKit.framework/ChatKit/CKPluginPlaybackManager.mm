@interface CKPluginPlaybackManager
- (CKPluginPlaybackManager)initWithPluginItems:(id)items;
- (CKPluginPlaybackManagerDelegate)delegate;
- (void)_cleanup;
- (void)addPluginItem:(id)item;
- (void)dealloc;
- (void)startPlayback;
- (void)stopPlayback;
@end

@implementation CKPluginPlaybackManager

- (CKPluginPlaybackManager)initWithPluginItems:(id)items
{
  itemsCopy = items;
  v8.receiver = self;
  v8.super_class = CKPluginPlaybackManager;
  v5 = [(CKPluginPlaybackManager *)&v8 init];
  if (v5)
  {
    v6 = [itemsCopy mutableCopy];
    [(CKPluginPlaybackManager *)v5 _setPluginItems:v6];

    [(CKPluginPlaybackManager *)v5 _setPlayingBack:0];
    v5->_currentIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (void)_cleanup
{
  delegate = [(CKPluginPlaybackManager *)self delegate];
  [delegate pluginPlaybackManagerDidStopPlayback:self];

  [(CKPluginPlaybackManager *)self _setPluginItems:0];
}

- (void)startPlayback
{
  if (self->_currentIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_currentIndex = 0;
  }

  _pluginItems = [(CKPluginPlaybackManager *)self _pluginItems];
  currentIndex = self->_currentIndex;
  if (currentIndex < [_pluginItems count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __40__CKPluginPlaybackManager_startPlayback__block_invoke;
    aBlock[3] = &unk_1E72EBA18;
    aBlock[4] = self;
    v5 = _Block_copy(aBlock);
    v6 = [_pluginItems objectAtIndex:self->_currentIndex];
    message = [v6 message];
    guid = [message guid];
    v9 = [CKSnapshotUtilities snapshotExistsForGUID:guid];

    if (v9)
    {
      v5[2](v5);
    }

    else
    {
      [(CKPluginPlaybackManager *)self _setPlayingBack:1];
      iMChatItem = [v6 IMChatItem];
      dataSource = [iMChatItem dataSource];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __40__CKPluginPlaybackManager_startPlayback__block_invoke_2;
      v12[3] = &unk_1E72ED638;
      v13 = v6;
      v14 = v5;
      [dataSource playbackWithCompletionBlock:v12];
    }
  }
}

uint64_t __40__CKPluginPlaybackManager_startPlayback__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1] + 1;
  v4 = [v2 _pluginItems];
  v5 = [v4 count];

  v6 = *(a1 + 32);
  if (v3 >= v5)
  {
    [v6 _cleanup];
    v9 = *(a1 + 32);

    return [v9 _setPlayingBack:0];
  }

  else
  {
    ++v6[1];
    v7 = *(a1 + 32);

    return [v7 startPlayback];
  }
}

uint64_t __40__CKPluginPlaybackManager_startPlayback__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) IMChatItem];
    v4 = [v3 dataSource];
    [v4 markAsPlayed];
  }

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

- (void)addPluginItem:(id)item
{
  v21 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  _pluginItems = [(CKPluginPlaybackManager *)self _pluginItems];
  v6 = [_pluginItems countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(_pluginItems);
      }

      iMChatItem = [*(*(&v16 + 1) + 8 * v9) IMChatItem];
      guid = [iMChatItem guid];
      iMChatItem2 = [itemCopy IMChatItem];
      guid2 = [iMChatItem2 guid];
      v14 = [guid isEqualToString:guid2];

      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [_pluginItems countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    _pluginItems = [(CKPluginPlaybackManager *)selfCopy _pluginItems];
    [_pluginItems addObject:itemCopy];
  }
}

- (void)stopPlayback
{
  [(CKPluginPlaybackManager *)self _setPlayingBack:0];
  if (self->_currentIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    _pluginItems = [(CKPluginPlaybackManager *)self _pluginItems];
    currentIndex = self->_currentIndex;
    v8 = _pluginItems;
    if (currentIndex < [_pluginItems count])
    {
      v5 = [v8 objectAtIndex:self->_currentIndex];
      iMChatItem = [v5 IMChatItem];
      dataSource = [iMChatItem dataSource];
      [dataSource stopPlayback];
    }

    [(CKPluginPlaybackManager *)self _cleanup];
  }
}

- (void)dealloc
{
  [(CKPluginPlaybackManager *)self setDelegate:0];
  [(CKPluginPlaybackManager *)self _cleanup];
  v3.receiver = self;
  v3.super_class = CKPluginPlaybackManager;
  [(CKPluginPlaybackManager *)&v3 dealloc];
}

- (CKPluginPlaybackManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end