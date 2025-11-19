@interface CKPluginPlaybackManager
- (CKPluginPlaybackManager)initWithPluginItems:(id)a3;
- (CKPluginPlaybackManagerDelegate)delegate;
- (void)_cleanup;
- (void)addPluginItem:(id)a3;
- (void)dealloc;
- (void)startPlayback;
- (void)stopPlayback;
@end

@implementation CKPluginPlaybackManager

- (CKPluginPlaybackManager)initWithPluginItems:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CKPluginPlaybackManager;
  v5 = [(CKPluginPlaybackManager *)&v8 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    [(CKPluginPlaybackManager *)v5 _setPluginItems:v6];

    [(CKPluginPlaybackManager *)v5 _setPlayingBack:0];
    v5->_currentIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (void)_cleanup
{
  v3 = [(CKPluginPlaybackManager *)self delegate];
  [v3 pluginPlaybackManagerDidStopPlayback:self];

  [(CKPluginPlaybackManager *)self _setPluginItems:0];
}

- (void)startPlayback
{
  if (self->_currentIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_currentIndex = 0;
  }

  v3 = [(CKPluginPlaybackManager *)self _pluginItems];
  currentIndex = self->_currentIndex;
  if (currentIndex < [v3 count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __40__CKPluginPlaybackManager_startPlayback__block_invoke;
    aBlock[3] = &unk_1E72EBA18;
    aBlock[4] = self;
    v5 = _Block_copy(aBlock);
    v6 = [v3 objectAtIndex:self->_currentIndex];
    v7 = [v6 message];
    v8 = [v7 guid];
    v9 = [CKSnapshotUtilities snapshotExistsForGUID:v8];

    if (v9)
    {
      v5[2](v5);
    }

    else
    {
      [(CKPluginPlaybackManager *)self _setPlayingBack:1];
      v10 = [v6 IMChatItem];
      v11 = [v10 dataSource];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __40__CKPluginPlaybackManager_startPlayback__block_invoke_2;
      v12[3] = &unk_1E72ED638;
      v13 = v6;
      v14 = v5;
      [v11 playbackWithCompletionBlock:v12];
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

- (void)addPluginItem:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v15 = self;
  v5 = [(CKPluginPlaybackManager *)self _pluginItems];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        objc_enumerationMutation(v5);
      }

      v10 = [*(*(&v16 + 1) + 8 * v9) IMChatItem];
      v11 = [v10 guid];
      v12 = [v4 IMChatItem];
      v13 = [v12 guid];
      v14 = [v11 isEqualToString:v13];

      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

    v5 = [(CKPluginPlaybackManager *)v15 _pluginItems];
    [v5 addObject:v4];
  }
}

- (void)stopPlayback
{
  [(CKPluginPlaybackManager *)self _setPlayingBack:0];
  if (self->_currentIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [(CKPluginPlaybackManager *)self _pluginItems];
    currentIndex = self->_currentIndex;
    v8 = v3;
    if (currentIndex < [v3 count])
    {
      v5 = [v8 objectAtIndex:self->_currentIndex];
      v6 = [v5 IMChatItem];
      v7 = [v6 dataSource];
      [v7 stopPlayback];
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