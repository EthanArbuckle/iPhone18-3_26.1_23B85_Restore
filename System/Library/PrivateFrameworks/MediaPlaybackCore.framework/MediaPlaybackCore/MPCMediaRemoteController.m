@interface MPCMediaRemoteController
+ (OS_dispatch_queue)mediaRemoteReplyQueue;
+ (id)controllerForPlayerPath:(id)a3;
+ (void)_sendCommand:(unsigned int)a3 options:(id)a4 appOptions:(unsigned int)a5 toPlayerPath:(id)a6 completion:(id)a7;
+ (void)_sendCommand:(unsigned int)a3 playbackIntent:(id)a4 options:(id)a5 toPlayerPath:(id)a6 completion:(id)a7;
+ (void)sendCommand:(unsigned int)a3 options:(id)a4 toPlayerPath:(id)a5 completion:(id)a6;
- (CGSize)overlayScaledFittingSizeForCatalog:(id)a3 scaledFittingSize:(CGSize)result;
- (MPCFuture)playbackQueueParticipants;
- (MPCFuture)playbackState;
- (MPCFuture)supportedCommands;
- (id)_animatedArtworkKeyForSize:(CGSize)a3 artworkFormat:(id)a4;
- (id)_artworkCatalogBlockForContentItem:(id)a3;
- (id)_createExportableArtworkPropertiesForContentItem:(id)a3;
- (id)_initWithResolvedPlayerPath:(id)a3;
- (id)_legacyCommands;
- (id)_onQueue_identifiersForRange:(_MSVSignedRange)a3;
- (id)_onQueue_playbackQueueForRange:(_MSVSignedRange)a3;
- (id)_onQueue_setOptimisticElapsedTimeForContentItem:(id)a3 elapsedTime:(double)a4 rate:(float)a5;
- (id)_onQueue_setOptimisticPlaybackState:(unsigned int)a3 withOptions:(id)a4;
- (id)_onQueue_stateDictionary;
- (id)_onQueue_updateOptimisticStateForCommand:(unsigned int)a3 options:(id)a4;
- (id)artworkCatalogBlockForContentItem:(id)a3;
- (id)contentItemAnimatedArtworkForContentItemIdentifier:(id)a3 artworkIdentifier:(id)a4 size:(CGSize)a5 artworkFormat:(id)a6;
- (id)contentItemAnimatedArtworkPreviewFrameForContentItemIdentifier:(id)a3 artworkIdentifier:(id)a4 size:(CGSize)a5 artworkFormat:(id)a6;
- (id)contentItemArtworkForContentItemIdentifier:(id)a3 artworkIdentifier:(id)a4 size:(CGSize)a5;
- (id)contentItemForIdentifier:(id)a3;
- (id)contentItemRemoteArtworkForContentItemIdentifier:(id)a3 artworkIdentifier:(id)a4 size:(CGSize)a5 artworkFormat:(id)a6;
- (id)formattedAnimatedArtworkCatalogBlockForContentItem:(id)a3;
- (id)mediaRemoteAnimatedArtworkDataSource;
- (id)mediaRemoteArtworkDataSource;
- (id)playbackQueueForRequest:(id)a3;
- (id)remoteArtworkDataSource;
- (int64_t)contentItemAnimatedArtworkCacheStateForArtworkIdentifier:(id)a3 size:(CGSize)a4 artworkFormat:(id)a5;
- (int64_t)contentItemAnimatedArtworkPreviewFrameCacheStateForArtworkIdentifier:(id)a3 size:(CGSize)a4 artworkFormat:(id)a5;
- (int64_t)contentItemArtworkCacheStateForArtworkIdentifier:(id)a3 size:(CGSize)a4;
- (int64_t)contentItemCacheStateForIdentifier:(id)a3;
- (int64_t)playbackQueueParticipantsCacheState;
- (int64_t)playbackStateCacheState;
- (int64_t)supportedCommandsCacheState;
- (void)_contentItemArtworkChangedNotification:(id)a3;
- (void)_onQueue_invalidateAnimatedArtworkFuturesForContentItemID:(id)a3;
- (void)_onQueue_invalidateArtworkFuturesForContentItemID:(id)a3;
- (void)_onQueue_mergeContentItems:(id)a3;
- (void)_onQueue_mergeContentItems:(id)a3 queueRange:(_MSVSignedRange)a4 requestRange:(_MSVSignedRange)a5 requestProperties:(id)a6;
- (void)_onQueue_purgeArtworkForContentItemIdentifier:(id)a3 artworkIdentifier:(id)a4;
- (void)_onQueue_purgeContentItemIdentifierForProperties:(id)a3;
- (void)_onQueue_setOptimisticReorderedPlaybackQueueWithMovingContentItemIdentifier:(id)a3 afterContentItemIdentifier:(id)a4;
- (void)_onQueue_setOptimisticReorderedPlaybackQueueWithMovingContentItemIdentifier:(id)a3 beforeContentItemIdentifier:(id)a4;
- (void)_playbackQueueChangedNotification:(id)a3;
- (void)_playbackQueueContentItemsChangedNotification:(id)a3;
- (void)_playbackQueueParticipantsDidChangeNotification:(id)a3;
- (void)_playbackStateDidChangeNotification:(id)a3;
- (void)_supportedCommandsDidChangeNotification:(id)a3;
- (void)artworkCatalog:(id)a3 didClearFromView:(id)a4;
- (void)artworkCatalog:(id)a3 didConfigureView:(id)a4 withRepresentation:(id)a5;
- (void)artworkCatalog:(id)a3 willConfigureView:(id)a4;
- (void)dealloc;
- (void)dictionary:(id)a3 willRemoveObject:(id)a4 forKey:(id)a5;
- (void)invalidateAllTokens;
- (void)sendCommand:(unsigned int)a3 options:(id)a4 completion:(id)a5;
@end

@implementation MPCMediaRemoteController

void __41__MPCMediaRemoteController_playbackState__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 32));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    if (![v2 isInvalid])
    {
      return;
    }

    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  [v2 disconnect];
  v3 = [[MPCFuture alloc] initWithQueue:*(*(a1 + 32) + 16)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = v3;

  [*(*(a1 + 32) + 32) setDebugLabel:@"playbackState [was nil before]"];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 32));
  v6 = *(a1 + 32);
  if (v6[24] == 1)
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v9 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:28 debugDescription:{@"%@ has been invalidated", v6}];
    [v7 finishWithError:v9];
  }

  else
  {
    v8 = [v6 resolvedPlayerPath];
    [v8 mediaRemotePlayerPath];
    MRMediaRemoteGetPlaybackStateForPlayer();
  }
}

void __53__MPCMediaRemoteController_playbackQueueParticipants__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 64));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    if (![v2 isInvalid])
    {
      return;
    }

    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  [v2 disconnect];
  v3 = [[MPCFuture alloc] initWithQueue:*(*(a1 + 32) + 16)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  *(v4 + 64) = v3;

  [*(*(a1 + 32) + 64) setDebugLabel:@"playbackQueueParticipants [was nil before]"];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 64));
  v6 = *(a1 + 32);
  if (*(v6 + 24) == 1)
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v16 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:28 debugDescription:{@"%@ has been invalidated", v6}];
    [v7 finishWithError:v16];
  }

  else if (_os_feature_enabled_impl())
  {
    v8 = MEMORY[0x1E69B0AB0];
    v9 = [MEMORY[0x1E69B0AB8] defaultRequest];
    v10 = [*(a1 + 32) resolvedPlayerPath];
    v11 = [v10 mediaRemotePlayerPath];
    v19[0] = MEMORY[0x1E69E9820];
    v12 = *(a1 + 32);
    v13 = *(*(a1 + 32) + 8);
    v19[1] = 3221225472;
    v19[2] = __53__MPCMediaRemoteController_playbackQueueParticipants__block_invoke_2;
    v19[3] = &unk_1E8238170;
    v20 = v12;
    [v8 fetchParticipantsWithRequest:v9 forPlayerPath:v11 queue:v13 completion:v19];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    v14 = *(a1 + 32);
    v15 = *(*(a1 + 32) + 8);
    block[1] = 3221225472;
    block[2] = __53__MPCMediaRemoteController_playbackQueueParticipants__block_invoke_3;
    block[3] = &unk_1E82394D8;
    v18 = v14;
    dispatch_async(v15, block);
  }
}

- (MPCFuture)supportedCommands
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__26312;
  v10 = __Block_byref_object_dispose__26313;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__MPCMediaRemoteController_supportedCommands__block_invoke;
  v5[3] = &unk_1E82394D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __45__MPCMediaRemoteController_supportedCommands__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 48));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    if (![v2 isInvalid])
    {
      return;
    }

    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  [v2 disconnect];
  v3 = [[MPCFuture alloc] initWithQueue:*(*(a1 + 32) + 16)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 48) = v3;

  [*(*(a1 + 32) + 48) setDebugLabel:@"supportedCommands [was nil before]"];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 48));
  v6 = *(a1 + 32);
  if (v6[24] == 1)
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v9 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:28 debugDescription:{@"%@ has been invalidated", v6}];
    [v7 finishWithError:v9];
  }

  else
  {
    v8 = [v6 resolvedPlayerPath];
    [v8 mediaRemotePlayerPath];
    MRMediaRemoteGetSupportedCommandsForPlayer();
  }
}

void __53__MPCMediaRemoteController_playbackQueueParticipants__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = *(*(*(a1 + 40) + 8) + 40);
  if (v5)
  {
    v7 = *(a1 + 32);
    if (v6 == *(v7 + 64))
    {
      *(v7 + 72) = 0;
      v8 = *(a1 + 32);
      v9 = *(v8 + 64);
      *(v8 + 64) = 0;

      v6 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v6 finishWithError:v5];
  }

  else
  {
    if (v12)
    {
      v10 = v12;
    }

    else
    {
      v10 = MEMORY[0x1E695E0F0];
    }

    [v6 finishWithValue:v10];
    v11 = *(a1 + 32);
    if (*(*(*(a1 + 40) + 8) + 40) == *(v11 + 64))
    {
      *(v11 + 72) = 1;
    }
  }
}

- (MPCFuture)playbackQueueParticipants
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__26312;
  v10 = __Block_byref_object_dispose__26313;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__MPCMediaRemoteController_playbackQueueParticipants__block_invoke;
  v5[3] = &unk_1E82394D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __45__MPCMediaRemoteController_supportedCommands__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = *(a1 + 32);
    v6 = *(*(*(a1 + 40) + 8) + 40);
    if (v6 == *(v5 + 48))
    {
      *(v5 + 56) = 0;
      v7 = *(a1 + 32);
      v8 = *(v7 + 48);
      *(v7 + 48) = 0;

      v6 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v6 finishWithError:a3];
  }

  else
  {
    v9 = a2;
    if ([v9 count])
    {
      v10 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:1282 valueOptions:0 capacity:{objc_msgSend(v9, "count")}];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v25;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v25 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v24 + 1) + 8 * i);
            v17 = MEMORY[0x1C6954DE0](v16);
            NSMapInsert(v10, (v17 | 0x80000000), v16);
          }

          v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v13);
      }

      [*(*(*(a1 + 40) + 8) + 40) finishWithValue:{v10, v24}];
    }

    else
    {
      v18 = [*(a1 + 32) resolvedPlayerPath];
      v19 = [v18 isInProcess];

      v20 = *(*(a1 + 40) + 8);
      v21 = *(v20 + 40);
      if (v19)
      {
        [*(v20 + 40) finishWithValue:MEMORY[0x1E695E0F8]];
      }

      else
      {
        v22 = [*(a1 + 32) _legacyCommands];
        [v21 finishWithValue:v22];
      }
    }

    v23 = *(a1 + 32);
    if (*(*(*(a1 + 40) + 8) + 40) == *(v23 + 48))
    {
      *(v23 + 56) = 1;
    }
  }
}

void __41__MPCMediaRemoteController_playbackState__block_invoke_2(uint64_t a1, int a2)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  v4 = *(*(*(a1 + 40) + 8) + 40);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__MPCMediaRemoteController_playbackState__block_invoke_3;
  aBlock[3] = &__block_descriptor_36_e5_I8__0l;
  v8 = a2;
  v5 = _Block_copy(aBlock);
  [v4 finishWithValue:v5];

  v6 = *(a1 + 32);
  if (*(*(*(a1 + 40) + 8) + 40) == *(v6 + 32))
  {
    *(v6 + 40) = 1;
  }
}

- (MPCFuture)playbackState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__26312;
  v10 = __Block_byref_object_dispose__26313;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__MPCMediaRemoteController_playbackState__block_invoke;
  v5[3] = &unk_1E82394D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_onQueue_setOptimisticReorderedPlaybackQueueWithMovingContentItemIdentifier:(id)a3 beforeContentItemIdentifier:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_accessQueue);
  v8 = [(NSMutableArray *)self->_contentItemIDs indexOfObject:v6];
  v9 = [(NSMutableArray *)self->_contentItemIDs indexOfObject:v7];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL && v9 != 0x7FFFFFFFFFFFFFFFLL && v8 != v9)
  {
    v12 = v9;
    v13 = v9 - 1;
    if (v8 != v9 - 1)
    {
      v14 = [(NSDictionary *)self->_queueProperties objectForKeyedSubscript:@"tailInsertionContentItemID"];
      if (v14)
      {
        v15 = [(NSMutableArray *)self->_contentItemIDs indexOfObject:v14];
      }

      else
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      [(NSMutableArray *)self->_contentItemIDs removeObjectAtIndex:v8];
      if (v8 >= v12)
      {
        v16 = v12;
      }

      else
      {
        v16 = v13;
      }

      [(NSMutableArray *)self->_contentItemIDs insertObject:v6 atIndex:v16];
      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [(NSMutableArray *)self->_contentItemIDs objectAtIndex:v15];
        if (v17)
        {
          v18 = [(NSDictionary *)self->_queueProperties mutableCopy];
          [v18 setObject:v17 forKeyedSubscript:@"tailInsertionContentItemID"];
          [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"optimistic"];
          v19 = [v18 copy];
          queueProperties = self->_queueProperties;
          self->_queueProperties = v19;
        }
      }

      v21 = NSAllMapTableValues(self->_playbackQueueFutures);
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v22 = [v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v27;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v27 != v24)
            {
              objc_enumerationMutation(v21);
            }

            [*(*(&v26 + 1) + 8 * i) invalidate];
          }

          v23 = [v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v23);
      }
    }
  }
}

- (void)_onQueue_setOptimisticReorderedPlaybackQueueWithMovingContentItemIdentifier:(id)a3 afterContentItemIdentifier:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_accessQueue);
  v8 = [(NSMutableArray *)self->_contentItemIDs indexOfObject:v6];
  v9 = [(NSMutableArray *)self->_contentItemIDs indexOfObject:v7];
  v11 = v8 == 0x7FFFFFFFFFFFFFFFLL || v9 == 0x7FFFFFFFFFFFFFFFLL || v8 == v9;
  v12 = v9 + 1;
  if (!v11 && v8 != v12)
  {
    v14 = v9;
    v15 = [(NSDictionary *)self->_queueProperties objectForKeyedSubscript:@"tailInsertionContentItemID"];
    if (v15)
    {
      v16 = [(NSMutableArray *)self->_contentItemIDs indexOfObject:v15];
    }

    else
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [(NSMutableArray *)self->_contentItemIDs removeObjectAtIndex:v8];
    if (v8 <= v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v12;
    }

    [(NSMutableArray *)self->_contentItemIDs insertObject:v6 atIndex:v17];
    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = [(NSMutableArray *)self->_contentItemIDs objectAtIndex:v16];
      if (v18)
      {
        v19 = [(NSDictionary *)self->_queueProperties mutableCopy];
        [v19 setObject:v18 forKeyedSubscript:@"tailInsertionContentItemID"];
        [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"optimistic"];
        v20 = [v19 copy];
        queueProperties = self->_queueProperties;
        self->_queueProperties = v20;
      }
    }

    v22 = NSAllMapTableValues(self->_playbackQueueFutures);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v23 = [v22 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v28;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v28 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [*(*(&v27 + 1) + 8 * i) invalidate];
        }

        v24 = [v22 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v24);
    }
  }
}

- (id)_onQueue_setOptimisticPlaybackState:(unsigned int)a3 withOptions:(id)a4
{
  dispatch_assert_queue_V2(self->_accessQueue);
  v6 = [(MPCFuture *)self->_playbackStateFuture result];
  [(MPCFuture *)self->_playbackStateFuture invalidate];
  [(MPCFuture *)self->_playbackStateFuture disconnect];
  v7 = [[MPCFuture alloc] initWithQueue:self->_calloutQueue];
  playbackStateFuture = self->_playbackStateFuture;
  self->_playbackStateFuture = v7;

  [(MPCFuture *)self->_playbackStateFuture setDebugLabel:@"playbackState [optimistic state]"];
  v9 = self->_playbackStateFuture;
  if (self->_invalidated)
  {
    v10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:28 debugDescription:{@"%@ has been invalidated", self}];
    [(MPCFuture *)v9 finishWithError:v10];
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__MPCMediaRemoteController__onQueue_setOptimisticPlaybackState_withOptions___block_invoke;
    aBlock[3] = &__block_descriptor_36_e5_I8__0l;
    v18 = a3;
    v11 = _Block_copy(aBlock);
    [(MPCFuture *)v9 finishWithValue:v11];

    self->_playbackStateCacheState = 2;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__MPCMediaRemoteController__onQueue_setOptimisticPlaybackState_withOptions___block_invoke_2;
  v15[3] = &unk_1E8239170;
  v15[4] = self;
  v16 = v6;
  v12 = v6;
  v13 = _Block_copy(v15);

  return v13;
}

void __76__MPCMediaRemoteController__onQueue_setOptimisticPlaybackState_withOptions___block_invoke_2(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  if (*(v2 + 40) == 2)
  {
    [*(v2 + 32) invalidate];
    *(*(a1 + 32) + 40) = 0;
    if (*(a1 + 40))
    {
      [*(*(a1 + 32) + 32) disconnect];
      v3 = [[MPCFuture alloc] initWithQueue:*(*(a1 + 32) + 16)];
      v4 = *(a1 + 32);
      v5 = *(v4 + 32);
      *(v4 + 32) = v3;

      [*(*(a1 + 32) + 32) setDebugLabel:@"playbackState [restored state / optimistic failure]"];
      v6 = *(*(a1 + 32) + 32);
      v7 = _Block_copy(*(a1 + 40));
      [v6 finishWithValue:v7];

      *(*(a1 + 32) + 40) = 1;
    }
  }
}

- (id)_onQueue_setOptimisticElapsedTimeForContentItem:(id)a3 elapsedTime:(double)a4 rate:(float)a5
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_accessQueue);
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E6970830]);
    v9 = [v7 identifier];
    v10 = [v8 initWithIdentifier:v9];

    v11 = MEMORY[0x1E69704F0];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __93__MPCMediaRemoteController__onQueue_setOptimisticElapsedTimeForContentItem_elapsedTime_rate___block_invoke;
    v27[3] = &unk_1E8239338;
    v28 = v10;
    v29 = a4;
    v12 = v10;
    [v11 performSuppressingChangeNotifications:v27];
    optimisticStateContentItems = self->_optimisticStateContentItems;
    v14 = [v7 identifier];
    [(NSMutableDictionary *)optimisticStateContentItems setObject:v12 forKeyedSubscript:v14];

    contentItemFutures = self->_contentItemFutures;
    v16 = [v7 identifier];
    v17 = [(NSMapTable *)contentItemFutures objectForKey:v16];
    [v17 invalidate];

    v18 = self->_contentItemFutures;
    v19 = [v7 identifier];
    v20 = [(NSMapTable *)v18 objectForKey:v19];
    [v20 disconnect];

    v21 = self->_contentItemFutures;
    v22 = [v7 identifier];
    [(NSMapTable *)v21 removeObjectForKey:v22];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __93__MPCMediaRemoteController__onQueue_setOptimisticElapsedTimeForContentItem_elapsedTime_rate___block_invoke_2;
    v25[3] = &unk_1E82392C0;
    v25[4] = self;
    v26 = v7;
    v23 = _Block_copy(v25);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

void __93__MPCMediaRemoteController__onQueue_setOptimisticElapsedTimeForContentItem_elapsedTime_rate___block_invoke_2(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  v2 = *(*(a1 + 32) + 128);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(*(a1 + 32) + 128);
    v6 = [*(a1 + 40) identifier];
    [v5 setObject:0 forKeyedSubscript:v6];

    v7 = *(*(a1 + 32) + 184);
    v8 = [*(a1 + 40) identifier];
    v9 = [v7 objectForKey:v8];
    [v9 invalidate];

    v10 = *(*(a1 + 32) + 184);
    v11 = [*(a1 + 40) identifier];
    v12 = [v10 objectForKey:v11];
    [v12 disconnect];

    v13 = *(a1 + 40);
    v14 = *(*(a1 + 32) + 184);
    v15 = [v13 identifier];
    [v14 removeObjectForKey:v15];
  }
}

- (id)_onQueue_updateOptimisticStateForCommand:(unsigned int)a3 options:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_accessQueue);
  if (a3 == 2)
  {
    v7 = [(MPCFuture *)self->_playbackStateFuture result];
    if (!v7)
    {
      goto LABEL_32;
    }

    v8 = v7;
    v9 = [(MPCFuture *)self->_playbackStateFuture isInvalid];

    if (v9)
    {
      goto LABEL_32;
    }

    v10 = [(MPCFuture *)self->_playbackStateFuture result];
    a3 = v10[2]() == 1;
  }

  v11 = 0;
  if (a3 <= 2)
  {
    if (!a3)
    {
      v11 = [(MPCMediaRemoteController *)self _onQueue_setOptimisticPlaybackState:1 withOptions:v6];
      goto LABEL_33;
    }

    if (a3 != 1)
    {
      goto LABEL_33;
    }
  }

  else if (a3 != 3)
  {
    if (a3 != 24)
    {
      if (a3 != 130)
      {
        goto LABEL_33;
      }

      v12 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69B10C8]];
      v13 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69B1138]];
      v14 = v13;
      if (v12)
      {
        v15 = v13 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        v16 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69B1130]];
        v17 = v16;
        if (v12 && v16)
        {
          [(MPCMediaRemoteController *)self _onQueue_setOptimisticReorderedPlaybackQueueWithMovingContentItemIdentifier:v12 afterContentItemIdentifier:v16];
        }
      }

      else
      {
        [(MPCMediaRemoteController *)self _onQueue_setOptimisticReorderedPlaybackQueueWithMovingContentItemIdentifier:v12 beforeContentItemIdentifier:v13];
      }

      goto LABEL_32;
    }

    if (self->_playingItemIdentifier)
    {
      v31 = [(MSVLRUDictionary *)self->_contentItems objectForKeyedSubscript:?];
      v32 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69B1168]];
      [v32 doubleValue];
      v34 = v33;

      [v31 duration];
      if (v34 < v35)
      {
        v35 = v34;
      }

      v11 = [(MPCMediaRemoteController *)self _onQueue_setOptimisticElapsedTimeForContentItem:v31 elapsedTime:fmax(v35 rate:0.0), 0.0];

      goto LABEL_33;
    }

LABEL_32:
    v11 = 0;
    goto LABEL_33;
  }

  v18 = [(MPCMediaRemoteController *)self _onQueue_setOptimisticPlaybackState:2 withOptions:v6];
  v19 = self->_playingItemIdentifier;
  if (v19)
  {
    v20 = [(MSVLRUDictionary *)self->_contentItems objectForKeyedSubscript:v19];
    [v20 elapsedTime];
    v22 = v21;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v24 = v23;
    [v20 elapsedTimeTimestamp];
    v26 = v24 - v25;
    [v20 playbackRate];
    v28 = v22 + v26 * v27;
    [v20 duration];
    if (v28 < v29)
    {
      v29 = v28;
    }

    v30 = [(MPCMediaRemoteController *)self _onQueue_setOptimisticElapsedTimeForContentItem:v20 elapsedTime:v29 rate:0.0];
  }

  else
  {
    v30 = 0;
  }

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __77__MPCMediaRemoteController__onQueue_updateOptimisticStateForCommand_options___block_invoke;
  v40[3] = &unk_1E8238438;
  v41 = v18;
  v42 = v30;
  v36 = v30;
  v37 = v18;
  v11 = _Block_copy(v40);

LABEL_33:
  v38 = _Block_copy(v11);

  return v38;
}

uint64_t __77__MPCMediaRemoteController__onQueue_updateOptimisticStateForCommand_options___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (int64_t)playbackQueueParticipantsCacheState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__MPCMediaRemoteController_playbackQueueParticipantsCacheState__block_invoke;
  v5[3] = &unk_1E82394D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)supportedCommandsCacheState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__MPCMediaRemoteController_supportedCommandsCacheState__block_invoke;
  v5[3] = &unk_1E82394D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)playbackStateCacheState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__MPCMediaRemoteController_playbackStateCacheState__block_invoke;
  v5[3] = &unk_1E82394D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_onQueue_stateDictionary
{
  v30[11] = *MEMORY[0x1E69E9840];
  v3 = self->_playbackStateFuture;
  v4 = [(MPCFuture *)v3 result];

  v28 = v3;
  if (v4)
  {
    v5 = [(MPCFuture *)v3 result];
    v5[2]();
  }

  v6 = [(NSMutableDictionary *)self->_contentItemChanges allKeys];
  v7 = [(MPCFuture *)self->_supportedCommandsFuture result];
  v8 = MEMORY[0x1E695DF90];
  v29[0] = @"_obj";
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), self];
  resolvedPlayerPath = self->_resolvedPlayerPath;
  v30[0] = v9;
  v30[1] = resolvedPlayerPath;
  v29[1] = @"resolvedPlayerPath";
  v29[2] = @"contentItemIDs";
  contentItemIDs = self->_contentItemIDs;
  if (!contentItemIDs)
  {
    contentItemIDs = MEMORY[0x1E695E0F0];
  }

  v30[2] = contentItemIDs;
  v29[3] = @"contentItemChanges:keys";
  optimisticStateContentItems = @"<EMPTY>";
  if ([(__CFString *)v6 count])
  {
    v13 = v6;
  }

  else
  {
    v13 = @"<EMPTY>";
  }

  queueIdentifier = self->_queueIdentifier;
  queueProperties = self->_queueProperties;
  if (!queueIdentifier)
  {
    queueIdentifier = @"<NULL>";
  }

  v30[3] = v13;
  v30[4] = queueIdentifier;
  v29[4] = @"queueIdentifier";
  v29[5] = @"queueProperties";
  if (queueProperties)
  {
    v16 = queueProperties;
  }

  else
  {
    v16 = @"<NULL>";
  }

  v30[5] = v16;
  v29[6] = @"optimisticStateContentItems";
  if ([(NSMutableDictionary *)self->_optimisticStateContentItems count])
  {
    optimisticStateContentItems = self->_optimisticStateContentItems;
  }

  v30[6] = optimisticStateContentItems;
  v29[7] = @"supportedCommands";
  v17 = [v7 allCommandInfos];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"<NULL>";
  }

  v30[7] = v19;
  v29[8] = @"playbackState";
  v20 = MRMediaRemoteCopyPlaybackStateDescription();
  v30[8] = v20;
  v29[9] = @"loadedRange";
  v21 = NSStringFromMSVSignedRange();
  v30[9] = v21;
  v29[10] = @"requestedRange";
  v22 = NSStringFromMSVSignedRange();
  v30[10] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:11];
  v24 = [v8 dictionaryWithDictionary:v23];

  playingItemIdentifier = self->_playingItemIdentifier;
  if (playingItemIdentifier)
  {
    [v24 setObject:playingItemIdentifier forKeyedSubscript:@"playingItemIdentifier"];
    v26 = [(MSVLRUDictionary *)self->_contentItems objectForKeyedSubscript:self->_playingItemIdentifier];
    [v24 setObject:v26 forKeyedSubscript:@"playingItem"];
  }

  return v24;
}

- (void)_onQueue_invalidateAnimatedArtworkFuturesForContentItemID:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    dispatch_assert_queue_V2(self->_accessQueue);
    v5 = [(NSMutableDictionary *)self->_contentItemAnimatedArtworkPreviewFrameFutures objectForKeyedSubscript:v4];
    v6 = v5;
    if (v5)
    {
      v7 = NSAllMapTableValues(v5);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v26;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v26 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v25 + 1) + 8 * i);
            [v12 invalidate];
            [v12 disconnect];
          }

          v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v9);
      }

      [(NSMapTable *)v6 removeAllObjects];
    }

    v13 = [(NSMutableDictionary *)self->_contentItemAnimatedArtworkFutures objectForKeyedSubscript:v4];
    v14 = v13;
    if (v13)
    {
      v15 = NSAllMapTableValues(v13);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v22;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v22 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v21 + 1) + 8 * j);
            [v20 invalidate];
            [v20 disconnect];
          }

          v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
        }

        while (v17);
      }

      [(NSMapTable *)v14 removeAllObjects];
    }
  }
}

- (void)_onQueue_invalidateArtworkFuturesForContentItemID:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_accessQueue);
  v5 = [(NSMutableDictionary *)self->_contentItemArtworkFutures objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = NSAllMapTableValues(v5);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          [v12 invalidate];
          [v12 disconnect];
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    [(NSMapTable *)v6 removeAllObjects];
  }
}

- (void)_onQueue_purgeArtworkForContentItemIdentifier:(id)a3 artworkIdentifier:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = v6;
  if (![v6 length])
  {
    v8 = [(MSVLRUDictionary *)self->_contentItems objectForKeyedSubscript:v12];
    v9 = [v8 artworkIdentifier];
    if ([v9 length])
    {
      v10 = [v8 artworkIdentifier];
    }

    else
    {
      v10 = v12;
    }

    v7 = v10;
  }

  if ([v7 length])
  {
    v11 = [(NSMutableDictionary *)self->_contentItemArtworkIdentifiers objectForKeyedSubscript:v7];
    if ([v11 count])
    {
      [v11 removeObject:v12];
    }

    if (![v11 count])
    {
      [(MSVLRUDictionary *)self->_contentItemArtwork removeObjectForKey:v7];
      [(MSVLRUDictionary *)self->_contentItemAnimatedArtworkPreviewFrames removeObjectForKey:v7];
      [(MPCMediaRemoteControllerAnimatedArtworkCache *)self->_contentItemAnimatedArtwork removeAssetsForArtworkID:v7];
    }

    [(NSMutableDictionary *)self->_contentItemArtworkIdentifiers setObject:v11 forKeyedSubscript:v7];
  }
}

- (void)_onQueue_purgeContentItemIdentifierForProperties:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_accessQueue);
  v5 = [MEMORY[0x1E695DF70] array];
  contentItemIDsForProperties = self->_contentItemIDsForProperties;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __77__MPCMediaRemoteController__onQueue_purgeContentItemIdentifierForProperties___block_invoke;
  v12 = &unk_1E8238410;
  v13 = v4;
  v14 = v5;
  v7 = v5;
  v8 = v4;
  [(NSMutableDictionary *)contentItemIDsForProperties enumerateKeysAndObjectsUsingBlock:&v9];
  [(NSMutableDictionary *)self->_contentItemIDsForProperties removeObjectsForKeys:v7, v9, v10, v11, v12];
}

void __77__MPCMediaRemoteController__onQueue_purgeContentItemIdentifierForProperties___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  [v6 removeObject:v5];
  v7 = [v6 count];

  if (!v7)
  {
    [*(a1 + 40) addObject:v8];
  }
}

- (void)_onQueue_mergeContentItems:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_accessQueue);
  contentItems = self->_contentItems;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__MPCMediaRemoteController__onQueue_mergeContentItems___block_invoke;
  v7[3] = &unk_1E82392C0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(MSVLRUDictionary *)contentItems performTransaction:v7];
}

void __55__MPCMediaRemoteController__onQueue_mergeContentItems___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = MRContentItemGetIdentifier();
        [*(*(a1 + 40) + 120) pokeKey:{v8, v12}];
        v9 = [*(*(a1 + 40) + 120) objectForKeyedSubscript:v8];
        v10 = [v9 copy];

        if (v10)
        {
          [v10 _mediaRemoteContentItem];
          MRContentItemMerge();
        }

        else
        {
          v10 = [objc_alloc(MEMORY[0x1E6970830]) _initWithMediaRemoteContentItem:v7];
        }

        v11 = [*(*(a1 + 40) + 136) objectForKeyedSubscript:v8];
        if (v11)
        {
          [v10 _mediaRemoteContentItem];
          [v11 _mediaRemoteContentItem];
          MRContentItemMerge();
        }

        [*(*(a1 + 40) + 120) setObject:v10 forKeyedSubscript:v8];
        [*(*(a1 + 40) + 136) setObject:0 forKeyedSubscript:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

- (void)_onQueue_mergeContentItems:(id)a3 queueRange:(_MSVSignedRange)a4 requestRange:(_MSVSignedRange)a5 requestProperties:(id)a6
{
  length = a4.length;
  location = a4.location;
  v43 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  dispatch_assert_queue_V2(self->_accessQueue);
  if (location <= 0 && length > -location)
  {
    if ([v10 count])
    {
      [v10 objectAtIndexedSubscript:-location];
    }

    v12 = MRContentItemGetIdentifier();
    v13 = v12;
    if (v12 != self->_playingItemIdentifier && ![(NSString *)v12 isEqualToString:?])
    {
      objc_storeStrong(&self->_playingItemIdentifier, v13);
      v14 = NSAllMapTableValues(self->_playbackQueueFutures);
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v15 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v39;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v39 != v17)
            {
              objc_enumerationMutation(v14);
            }

            [*(*(&v38 + 1) + 8 * i) invalidate];
          }

          v16 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v16);
      }
    }
  }

  v19 = MSVSignedUnionRange();
  v21 = v20;
  v22 = vcvtpd_s64_f64(v20 * 1.5);
  if ([(MSVLRUDictionary *)self->_contentItems maximumCapacity]< v22)
  {
    [(MSVLRUDictionary *)self->_contentItems setMaximumCapacity:v22];
    [(MSVLRUDictionary *)self->_contentItemArtwork setMaximumCapacity:v22];
    [(MSVLRUDictionary *)self->_contentItemAnimatedArtworkPreviewFrames setMaximumCapacity:v22];
  }

  v23 = [(NSMutableDictionary *)self->_contentItemIDsForProperties objectForKeyedSubscript:v11];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = [MEMORY[0x1E695DFA8] setWithCapacity:v22];
  }

  v26 = v25;

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __97__MPCMediaRemoteController__onQueue_mergeContentItems_queueRange_requestRange_requestProperties___block_invoke;
  v36[3] = &unk_1E82383E8;
  v27 = v26;
  v37 = v27;
  v28 = [v10 msv_map:v36];
  [(NSMutableDictionary *)self->_contentItemIDsForProperties setObject:v27 forKeyedSubscript:v11];
  [(MPCMediaRemoteController *)self _onQueue_mergeContentItems:v10];
  contentItemIDs = self->_contentItemIDs;
  v30 = MSVReplacementRangeForRanges();
  [(NSMutableArray *)contentItemIDs replaceObjectsInRange:v30 withObjectsFromArray:v31, v28];
  self->_loadedContentItemsRange.location = v19;
  self->_loadedContentItemsRange.length = v21;
  self->_requestedContentItemsRange.location = MSVSignedUnionRange();
  self->_requestedContentItemsRange.length = v32;
  if (self->_playingItemIdentifier)
  {
    v33 = [(MSVLRUDictionary *)self->_contentItems objectForKeyedSubscript:?];
    v34 = [v33 _mediaRemoteContentItem];

    if (v34)
    {
      v35 = MRContentItemGetArtworkIdentifier();
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  [(MPCMediaRemoteControllerAnimatedArtworkCache *)self->_contentItemAnimatedArtwork updateArtworkID:v35];
}

id __97__MPCMediaRemoteController__onQueue_mergeContentItems_queueRange_requestRange_requestProperties___block_invoke(uint64_t a1)
{
  v2 = MRContentItemGetIdentifier();
  [*(a1 + 32) addObject:v2];

  return v2;
}

- (id)_onQueue_playbackQueueForRange:(_MSVSignedRange)a3
{
  length = a3.length;
  location = a3.location;
  dispatch_assert_queue_V2(self->_accessQueue);
  v6 = self->_loadedContentItemsRange.location;
  if (location <= v6)
  {
    v7 = self->_loadedContentItemsRange.location;
  }

  else
  {
    v7 = location;
  }

  if (v6 < 0)
  {
    v6 = -v6;
  }

  v8 = v6 + v7;
  v9 = [(NSMutableArray *)self->_contentItemIDs count];
  if (length >= v9 - v8)
  {
    v10 = v9 - v8;
  }

  else
  {
    v10 = length;
  }

  v11 = [(NSMutableArray *)self->_contentItemIDs subarrayWithRange:v8, v10];
  v12 = [[MPCMediaRemoteControllerPlaybackQueue alloc] initWithIdentifiers:v11 playingIdentifier:self->_playingItemIdentifier queueIdentifier:self->_queueIdentifier queueProperties:self->_queueProperties];

  return v12;
}

- (id)_onQueue_identifiersForRange:(_MSVSignedRange)a3
{
  length = a3.length;
  location = a3.location;
  dispatch_assert_queue_V2(self->_accessQueue);
  v6 = self->_loadedContentItemsRange.location;
  if (location <= v6)
  {
    v7 = self->_loadedContentItemsRange.location;
  }

  else
  {
    v7 = location;
  }

  if (v6 < 0)
  {
    v6 = -v6;
  }

  v8 = v6 + v7;
  v9 = [(NSMutableArray *)self->_contentItemIDs count];
  if (length >= v9 - v8)
  {
    v10 = v9 - v8;
  }

  else
  {
    v10 = length;
  }

  contentItemIDs = self->_contentItemIDs;

  return [(NSMutableArray *)contentItemIDs subarrayWithRange:v8, v10];
}

- (id)_legacyCommands
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(&unk_1F4599940, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [&unk_1F4599940 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(&unk_1F4599940);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = MRMediaRemoteCommandInfoCreate();
        [v7 unsignedIntValue];
        MRMediaRemoteCommandInfoSetCommand();
        MRMediaRemoteCommandInfoSetEnabled();
        [v2 setObject:v8 forKeyedSubscript:v7];
      }

      v4 = [&unk_1F4599940 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return v2;
}

- (id)_createExportableArtworkPropertiesForContentItem:(id)a3
{
  v3 = a3;
  v4 = [v3 artworkURLTemplates];
  v5 = [v3 artworkURL];
  v6 = objc_alloc_init(MEMORY[0x1E6970528]);
  [v6 setArtworkTemplateItems:v4];
  [v6 setResolvedURLString:v5];
  v7 = [v3 mediaType];

  [v6 setMediaType:v7];
  [v6 setMediaLibraryArtworkType:1];

  return v6;
}

- (id)_artworkCatalogBlockForContentItem:(id)a3
{
  v4 = a3;
  if ([(MPCPlayerPath *)self->_resolvedPlayerPath isInProcess])
  {
    v5 = [(MPCPlayerPath *)self->_resolvedPlayerPath playerID];
    v6 = [MEMORY[0x1E6970850] infoCenterForPlayerID:v5];
    if ([v6 supportsArtworkCatalogLoading])
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __63__MPCMediaRemoteController__artworkCatalogBlockForContentItem___block_invoke;
      aBlock[3] = &unk_1E8238398;
      v17 = v6;
      v18 = v4;
      v7 = v4;
      v8 = v6;
      v9 = _Block_copy(aBlock);
      v10 = _Block_copy(v9);

      goto LABEL_6;
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__MPCMediaRemoteController__artworkCatalogBlockForContentItem___block_invoke_2;
  v13[3] = &unk_1E8238398;
  v14 = v4;
  v15 = self;
  v5 = v4;
  v11 = _Block_copy(v13);
  v10 = _Block_copy(v11);

  v8 = v14;
LABEL_6:

  return v10;
}

id __63__MPCMediaRemoteController__artworkCatalogBlockForContentItem___block_invoke_2(uint64_t a1)
{
  v49[1] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) artworkIdentifier];
  v4 = [v3 length];
  v5 = *v2;
  if (v4)
  {
    [v5 artworkIdentifier];
  }

  else
  {
    [v5 identifier];
  }
  v6 = ;

  v7 = [*(a1 + 40) _createExportableArtworkPropertiesForContentItem:*(a1 + 32)];
  if ([v7 isValid])
  {
    v8 = [*(a1 + 32) deviceSpecificUserInfo];
    v9 = *MEMORY[0x1E6970338];
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E6970338]];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 BOOLValue];

      if (v12)
      {
LABEL_7:
        v13 = +[MPCMRLegacyRemoteArtworkDataSource sharedDataSource];
        v14 = [MPNowPlayingContentItemLegacyRemoteArtworkToken alloc];
        v15 = [*(a1 + 32) identifier];
        v16 = [(MPNowPlayingContentItemLegacyRemoteArtworkToken *)v14 initWithIdentifier:v15 artworkProperties:v7 artworkIdentifier:v6];

        goto LABEL_22;
      }
    }

    else
    {
      v17 = [*(a1 + 32) userInfo];
      v18 = [v17 objectForKeyedSubscript:v9];
      v19 = [v18 BOOLValue];

      if (v19)
      {
        goto LABEL_7;
      }
    }
  }

  v20 = [*(a1 + 40) resolvedPlayerPath];
  v21 = [v20 origin];

  v22 = [*(a1 + 32) supportedRemoteArtworkFormats];
  if ([v22 count])
  {
    v23 = 0;
  }

  else
  {
    v24 = [*(a1 + 32) remoteArtworks];
    v23 = [v24 count] == 0;
  }

  if (_os_feature_enabled_impl() && (([v21 isLocal] | v23) & 1) == 0)
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__26312;
    v46 = __Block_byref_object_dispose__26313;
    v47 = 0;
    v27 = *(a1 + 40);
    v28 = *(v27 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__MPCMediaRemoteController__artworkCatalogBlockForContentItem___block_invoke_3;
    block[3] = &unk_1E8238A50;
    v41 = &v42;
    block[4] = v27;
    v38 = v6;
    v29 = v6;
    v40 = v29;
    dispatch_sync(v28, block);
    v30 = [v43[5] result];
    v31 = v30;
    if (v30)
    {
      v48 = *MEMORY[0x1E6970298];
      v49[0] = v30;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    }

    else
    {
      v32 = MEMORY[0x1E695E0F8];
    }

    v13 = [*(a1 + 40) remoteArtworkDataSource];
    v33 = [MPCMRContentItemRemoteArtworkToken alloc];
    v34 = [*(a1 + 32) identifier];
    v35 = [*(a1 + 32) supportedRemoteArtworkFormats];
    v16 = [(MPCMRContentItemRemoteArtworkToken *)v33 initWithIdentifier:v34 artworkIdentifier:v29 supportedRemoteArtworkFormats:v35 remoteArtworks:v32];

    v6 = v38;
    _Block_object_dispose(&v42, 8);
  }

  else
  {
    [*(a1 + 32) _mediaRemoteContentItem];
    if (MRContentItemGetHasArtworkData())
    {
      v13 = [*(a1 + 40) mediaRemoteArtworkDataSource];
      v25 = [MPCMRContentItemArtworkDataToken alloc];
      v26 = [*(a1 + 32) identifier];
      v16 = [(MPCMRContentItemArtworkDataToken *)v25 initWithIdentifier:v26 artworkIdentifier:v6];
    }

    else
    {
      v16 = 0;
      v13 = 0;
    }
  }

LABEL_22:
  if (v13)
  {
    v36 = [objc_alloc(MEMORY[0x1E69704A0]) initWithToken:v16 dataSource:v13];
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

uint64_t __63__MPCMediaRemoteController__artworkCatalogBlockForContentItem___block_invoke_3(void *a1)
{
  v2 = [*(a1[4] + 200) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)_animatedArtworkKeyForSize:(CGSize)a3 artworkFormat:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a4;
  v11.width = width;
  v11.height = height;
  v7 = NSStringFromCGSize(v11);
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@--%@", v7, v6];

  return v8;
}

- (void)artworkCatalog:(id)a3 didClearFromView:(id)a4
{
  v6 = [a3 overlayStorage];
  v4 = [v6 viewController];
  v5 = [v4 view];
  [v5 removeFromSuperview];
}

- (void)artworkCatalog:(id)a3 didConfigureView:(id)a4 withRepresentation:(id)a5
{
  v6 = a5;
  v9 = [a3 overlayStorage];
  v7 = [v6 imageRepresentation];

  v8 = [v7 image];
  [v9 setImage:v8];
}

- (CGSize)overlayScaledFittingSizeForCatalog:(id)a3 scaledFittingSize:(CGSize)result
{
  if (result.width < 600.0)
  {
    result.width = 600.0;
    result.height = 600.0;
  }

  return result;
}

- (void)artworkCatalog:(id)a3 willConfigureView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 != 3)
  {
    v10 = [v7 artworkCatalog];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = [v7 _lastArtworkCatalog];
      if (!v11)
      {
LABEL_6:
        v13 = [v7 viewWithTag:11259375];
        v14 = v13;
        if (v13)
        {
          [v13 removeFromSuperview];
        }

        v34 = 0;
        v35 = &v34;
        v36 = 0x2050000000;
        v15 = getMFDebugOverlayControllerClass_softClass;
        v37 = getMFDebugOverlayControllerClass_softClass;
        if (!getMFDebugOverlayControllerClass_softClass)
        {
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __getMFDebugOverlayControllerClass_block_invoke;
          v33[3] = &unk_1E8238488;
          v33[4] = &v34;
          __getMFDebugOverlayControllerClass_block_invoke(v33);
          v15 = v35[3];
        }

        v16 = v15;
        _Block_object_dispose(&v34, 8);
        v17 = objc_alloc_init(v15);
        if (!v17)
        {
          goto LABEL_15;
        }

        v12 = v17;
        v18 = [v17 viewController];
        v19 = [v18 view];

        [v19 setTag:11259375];
        [v7 addSubview:v19];
        [v7 bounds];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v28 = [v12 viewController];
        v29 = [v28 view];
        [v29 setFrame:{v21, v23, v25, v27}];

        v30 = v7;
        do
        {
          [v30 setUserInteractionEnabled:1];
          v31 = [v30 superview];

          v30 = v31;
        }

        while (v31);
        [v6 setOverlayStorage:v12];

LABEL_14:
        [v12 setPlayerPath:{-[MPCPlayerPath mediaRemotePlayerPath](self->_resolvedPlayerPath, "mediaRemotePlayerPath")}];
        v32 = [v6 overlayToken];
        [v12 setContentItemID:v32];

        v14 = v12;
LABEL_15:

        goto LABEL_16;
      }
    }

    v12 = [v11 overlayStorage];
    [v11 setOverlayStorage:0];
    [v6 setOverlayStorage:v12];
    if (v12)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

LABEL_16:
}

- (id)formattedAnimatedArtworkCatalogBlockForContentItem:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__MPCMediaRemoteController_formattedAnimatedArtworkCatalogBlockForContentItem___block_invoke;
  v8[3] = &unk_1E82383C0;
  v9 = v4;
  v10 = self;
  v5 = v4;
  v6 = _Block_copy(v8);

  return v6;
}

id __79__MPCMediaRemoteController_formattedAnimatedArtworkCatalogBlockForContentItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_os_feature_enabled_impl())
  {
    v4 = [*(a1 + 32) _mediaRemoteContentItem];
    v5 = [v4 availableAnimatedArtworkFormats];
    v6 = [v5 containsObject:v3];

    if (v6)
    {
      v7 = [*(a1 + 32) artworkIdentifier];
      v8 = [v7 length];
      v9 = *(a1 + 32);
      if (v8)
      {
        [v9 artworkIdentifier];
      }

      else
      {
        [v9 identifier];
      }
      v11 = ;

      v12 = [MPCMRContentItemAnimatedArtworkToken alloc];
      v13 = [*(a1 + 32) identifier];
      v14 = [(MPCMRContentItemAnimatedArtworkToken *)v12 initWithIdentifier:v13 artworkIdentifier:v11 artworkFormat:v3];

      v15 = objc_alloc(MEMORY[0x1E69704A0]);
      v16 = [*(a1 + 40) mediaRemoteAnimatedArtworkDataSource];
      v10 = [v15 initWithToken:v14 dataSource:v16];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)artworkCatalogBlockForContentItem:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__MPCMediaRemoteController_artworkCatalogBlockForContentItem___block_invoke;
  v8[3] = &unk_1E8238398;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = _Block_copy(v8);

  return v6;
}

id __62__MPCMediaRemoteController_artworkCatalogBlockForContentItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _artworkCatalogBlockForContentItem:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = (*(v2 + 16))(v2);
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x1E69708A8] standardUserDefaults];
  v6 = [v5 showDebugUI];

  if (v6)
  {
    if (ICMediaLibraryAccessPermissionsHelperServiceName_block_invoke_onceToken != -1)
    {
      dispatch_once(&ICMediaLibraryAccessPermissionsHelperServiceName_block_invoke_onceToken, &__block_literal_global_282_26323);
    }

    if (ICMediaLibraryAccessPermissionsHelperServiceName_block_invoke_processSupportsDebugUI == 1)
    {
      if (!v4)
      {
        v4 = [MEMORY[0x1E69704A0] placeholderCatalogWithSymbolName:@"music"];
      }

      [v4 setOverlayDelegate:*(a1 + 32)];
      v7 = [*(a1 + 40) identifier];
      [v4 setOverlayToken:v7];
    }
  }

  return v4;
}

void __62__MPCMediaRemoteController_artworkCatalogBlockForContentItem___block_invoke_2()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v0 bundleIdentifier];

  if (ICMediaLibraryAccessPermissionsHelperServiceName_block_invoke_processSupportsDebugUI == 1)
  {
    v1 = [v2 hasPrefix:@"com.apple.MediaRemoteUI"] ^ 1;
  }

  else
  {
    v1 = 0;
  }

  ICMediaLibraryAccessPermissionsHelperServiceName_block_invoke_processSupportsDebugUI = v1;
}

- (void)invalidateAllTokens
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__MPCMediaRemoteController_invalidateAllTokens__block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

void __47__MPCMediaRemoteController_invalidateAllTokens__block_invoke(uint64_t a1)
{
  v93 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 24) = 1;
  [*(*(a1 + 32) + 32) invalidate];
  [*(*(a1 + 32) + 32) disconnect];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  *(*(a1 + 32) + 40) = 0;
  [*(*(a1 + 32) + 48) invalidate];
  [*(*(a1 + 32) + 48) disconnect];
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 48) = 0;

  *(*(a1 + 32) + 56) = 0;
  v52 = a1;
  v6 = NSAllMapTableValues(*(*(a1 + 32) + 184));
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v81 objects:v92 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v82;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v82 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v81 + 1) + 8 * i);
        [v11 invalidate];
        [v11 disconnect];
      }

      v8 = [v6 countByEnumeratingWithState:&v81 objects:v92 count:16];
    }

    while (v8);
  }

  [*(*(a1 + 32) + 184) removeAllObjects];
  v12 = NSAllMapTableValues(*(*(a1 + 32) + 176));

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v77 objects:v91 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v78;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v78 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v77 + 1) + 8 * j);
        [v18 invalidate];
        [v18 disconnect];
      }

      v15 = [v13 countByEnumeratingWithState:&v77 objects:v91 count:16];
    }

    while (v15);
  }

  [*(*(a1 + 32) + 224) removeAllObjects];
  [*(*(a1 + 32) + 176) removeAllObjects];
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v19 = [*(*(a1 + 32) + 192) allValues];
  v20 = [v19 countByEnumeratingWithState:&v73 objects:v90 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v74;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v74 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = NSAllMapTableValues(*(*(&v73 + 1) + 8 * k));
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v25 = [v24 countByEnumeratingWithState:&v69 objects:v89 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v70;
          do
          {
            for (m = 0; m != v26; ++m)
            {
              if (*v70 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v69 + 1) + 8 * m);
              [v29 invalidate];
              [v29 disconnect];
            }

            v26 = [v24 countByEnumeratingWithState:&v69 objects:v89 count:16];
          }

          while (v26);
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v73 objects:v90 count:16];
    }

    while (v21);
  }

  [*(*(v52 + 32) + 192) removeAllObjects];
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v30 = [*(*(v52 + 32) + 208) allValues];
  v31 = [v30 countByEnumeratingWithState:&v65 objects:v88 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v66;
    do
    {
      for (n = 0; n != v32; ++n)
      {
        if (*v66 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = NSAllMapTableValues(*(*(&v65 + 1) + 8 * n));
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v36 = [v35 countByEnumeratingWithState:&v61 objects:v87 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v62;
          do
          {
            for (ii = 0; ii != v37; ++ii)
            {
              if (*v62 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = *(*(&v61 + 1) + 8 * ii);
              [v40 invalidate];
              [v40 disconnect];
            }

            v37 = [v35 countByEnumeratingWithState:&v61 objects:v87 count:16];
          }

          while (v37);
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v65 objects:v88 count:16];
    }

    while (v32);
  }

  [*(*(v52 + 32) + 208) removeAllObjects];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v41 = [*(*(v52 + 32) + 216) allValues];
  v42 = [v41 countByEnumeratingWithState:&v57 objects:v86 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v58;
    do
    {
      for (jj = 0; jj != v43; ++jj)
      {
        if (*v58 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = NSAllMapTableValues(*(*(&v57 + 1) + 8 * jj));
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v47 = [v46 countByEnumeratingWithState:&v53 objects:v85 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v54;
          do
          {
            for (kk = 0; kk != v48; ++kk)
            {
              if (*v54 != v49)
              {
                objc_enumerationMutation(v46);
              }

              v51 = *(*(&v53 + 1) + 8 * kk);
              [v51 invalidate];
              [v51 disconnect];
            }

            v48 = [v46 countByEnumeratingWithState:&v53 objects:v85 count:16];
          }

          while (v48);
        }
      }

      v43 = [v41 countByEnumeratingWithState:&v57 objects:v86 count:16];
    }

    while (v43);
  }

  [*(*(v52 + 32) + 216) removeAllObjects];
  [*(*(v52 + 32) + 144) removeAllObjects];
  [*(*(v52 + 32) + 152) removeAllObjects];
  [*(*(v52 + 32) + 160) updateArtworkID:0];
  [*(*(v52 + 32) + 168) removeAllObjects];
}

- (void)dictionary:(id)a3 willRemoveObject:(id)a4 forKey:(id)a5
{
  v7 = a4;
  v8 = v7;
  if (self->_contentItems == a3)
  {
    v9 = [v7 identifier];
    v10 = [v8 artworkIdentifier];
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__MPCMediaRemoteController_dictionary_willRemoveObject_forKey___block_invoke;
    block[3] = &unk_1E82391C0;
    block[4] = self;
    v15 = v9;
    v16 = v10;
    v12 = v10;
    v13 = v9;
    dispatch_async(accessQueue, block);
  }
}

void __63__MPCMediaRemoteController_dictionary_willRemoveObject_forKey___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _onQueue_purgeContentItemIdentifierForProperties:*(a1 + 40)];
  [*(a1 + 32) _onQueue_purgeArtworkForContentItemIdentifier:*(a1 + 40) artworkIdentifier:*(a1 + 48)];
  [*(*(a1 + 32) + 128) setObject:0 forKeyedSubscript:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 184) objectForKey:*(a1 + 40)];
  [v2 invalidate];
}

- (void)_playbackQueueParticipantsDidChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  [v4 objectForKeyedSubscript:*MEMORY[0x1E69B1310]];

  v5 = [(MPCMediaRemoteController *)self resolvedPlayerPath];
  [v5 mediaRemotePlayerPath];
  v6 = MRNowPlayingPlayerPathEqualToPlayerPath();

  if (v6)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__MPCMediaRemoteController__playbackQueueParticipantsDidChangeNotification___block_invoke;
    block[3] = &unk_1E8239298;
    block[4] = self;
    dispatch_async(accessQueue, block);
  }
}

void __76__MPCMediaRemoteController__playbackQueueParticipantsDidChangeNotification___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 64) invalidate];
  [*(*(a1 + 32) + 64) disconnect];
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;

  *(*(a1 + 32) + 72) = 0;
}

- (void)_contentItemArtworkChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  [v5 objectForKeyedSubscript:*MEMORY[0x1E69B1310]];

  v6 = [(MPCMediaRemoteController *)self resolvedPlayerPath];
  [v6 mediaRemotePlayerPath];
  v7 = MRNowPlayingPlayerPathEqualToPlayerPath();

  if (v7)
  {
    v8 = [v4 userInfo];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B1300]];

    accessQueue = self->_accessQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__MPCMediaRemoteController__contentItemArtworkChangedNotification___block_invoke;
    v12[3] = &unk_1E82392C0;
    v13 = v9;
    v14 = self;
    v11 = v9;
    dispatch_async(accessQueue, v12);
  }
}

void __67__MPCMediaRemoteController__contentItemArtworkChangedNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = MRContentItemGetIdentifier();
        v8 = [*(*(a1 + 40) + 184) objectForKey:{v7, v10}];
        [v8 invalidate];

        v9 = [*(*(a1 + 40) + 184) objectForKey:v7];
        [v9 disconnect];

        [*(*(a1 + 40) + 184) removeObjectForKey:v7];
        [*(a1 + 40) _onQueue_invalidateArtworkFuturesForContentItemID:v7];
        [*(a1 + 40) _onQueue_invalidateAnimatedArtworkFuturesForContentItemID:v7];
        [*(a1 + 40) _onQueue_purgeArtworkForContentItemIdentifier:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)_supportedCommandsDidChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  [v4 objectForKeyedSubscript:*MEMORY[0x1E69B1310]];

  v5 = [(MPCMediaRemoteController *)self resolvedPlayerPath];
  [v5 mediaRemotePlayerPath];
  v6 = MRNowPlayingPlayerPathEqualToPlayerPath();

  if (v6)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__MPCMediaRemoteController__supportedCommandsDidChangeNotification___block_invoke;
    block[3] = &unk_1E8239298;
    block[4] = self;
    dispatch_async(accessQueue, block);
  }
}

void __68__MPCMediaRemoteController__supportedCommandsDidChangeNotification___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) invalidate];
  [*(*(a1 + 32) + 48) disconnect];
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  *(*(a1 + 32) + 56) = 0;
}

- (void)_playbackStateDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  [v5 objectForKeyedSubscript:*MEMORY[0x1E69B1310]];

  v6 = [(MPCMediaRemoteController *)self resolvedPlayerPath];
  [v6 mediaRemotePlayerPath];
  v7 = MRNowPlayingPlayerPathEqualToPlayerPath();

  if (v7)
  {
    v8 = [v4 userInfo];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B12B8]];

    accessQueue = self->_accessQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__MPCMediaRemoteController__playbackStateDidChangeNotification___block_invoke;
    v12[3] = &unk_1E82392C0;
    v13 = v9;
    v14 = self;
    v11 = v9;
    dispatch_async(accessQueue, v12);
  }
}

void __64__MPCMediaRemoteController__playbackStateDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(*(a1 + 40) + 32) invalidate];
  [*(*(a1 + 40) + 32) disconnect];
  if (v2)
  {
    v3 = [[MPCFuture alloc] initWithQueue:*(*(a1 + 40) + 16)];
    v4 = *(a1 + 40);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    [*(*(a1 + 40) + 32) setDebugLabel:@"playbackState [from notification]"];
    v6 = *(a1 + 40);
    if (*(v6 + 24) == 1)
    {
      v7 = *(v6 + 32);
      v13 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:28 debugDescription:{@"%@ has been invalidated", v6}];
      [v7 finishWithError:v13];
    }

    else
    {
      v10 = [*(a1 + 32) unsignedIntValue];
      v11 = *(*(a1 + 40) + 32);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __64__MPCMediaRemoteController__playbackStateDidChangeNotification___block_invoke_2;
      aBlock[3] = &__block_descriptor_36_e5_I8__0l;
      v15 = v10;
      v12 = _Block_copy(aBlock);
      [v11 finishWithValue:v12];

      *(*(a1 + 40) + 40) = 1;
    }
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = *(v8 + 32);
    *(v8 + 32) = 0;

    *(*(a1 + 40) + 40) = 0;
  }
}

- (void)_playbackQueueContentItemsChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  [v5 objectForKeyedSubscript:*MEMORY[0x1E69B1310]];

  v6 = [(MPCMediaRemoteController *)self resolvedPlayerPath];
  [v6 mediaRemotePlayerPath];
  v7 = MRNowPlayingPlayerPathEqualToPlayerPath();

  if (v7)
  {
    v8 = [v4 userInfo];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B1300]];

    accessQueue = self->_accessQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__MPCMediaRemoteController__playbackQueueContentItemsChangedNotification___block_invoke;
    v12[3] = &unk_1E82392C0;
    v13 = v9;
    v14 = self;
    v11 = v9;
    dispatch_async(accessQueue, v12);
  }
}

void __74__MPCMediaRemoteController__playbackQueueContentItemsChangedNotification___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = MRContentItemGetIdentifier();
        if (v8)
        {
          v9 = [*(*(a1 + 40) + 120) objectForKeyedSubscript:{v8, v16}];
          [*(*(a1 + 40) + 128) setObject:0 forKeyedSubscript:v8];
          if (v9)
          {
            v10 = [v9 copy];
            [v10 _mediaRemoteContentItem];
            MRContentItemMerge();
            [*(*(a1 + 40) + 120) setObject:v10 forKeyedSubscript:v8];
            v11 = [*(*(a1 + 40) + 184) objectForKey:v8];
            [v11 invalidate];

            v12 = [*(*(a1 + 40) + 184) objectForKey:v8];
            [v12 disconnect];

            [*(*(a1 + 40) + 184) removeObjectForKey:v8];
          }

          else
          {
            v13 = [*(*(a1 + 40) + 136) objectForKeyedSubscript:v8];
            if (v13)
            {
              v10 = v13;
              [v13 _mediaRemoteContentItem];
              MRContentItemMerge();
            }

            else
            {
              v14 = [objc_alloc(MEMORY[0x1E6970830]) _initWithMediaRemoteContentItem:v7];
              v15 = [v14 copy];
              [*(*(a1 + 40) + 136) setObject:v15 forKeyedSubscript:v8];

              v10 = 0;
            }
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }
}

- (void)_playbackQueueChangedNotification:(id)a3
{
  v4 = [a3 userInfo];
  [v4 objectForKeyedSubscript:*MEMORY[0x1E69B1310]];

  v5 = [(MPCMediaRemoteController *)self resolvedPlayerPath];
  [v5 mediaRemotePlayerPath];
  v6 = MRNowPlayingPlayerPathEqualToPlayerPath();

  if (v6)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__MPCMediaRemoteController__playbackQueueChangedNotification___block_invoke;
    block[3] = &unk_1E8239298;
    block[4] = self;
    dispatch_async(accessQueue, block);
  }
}

void __62__MPCMediaRemoteController__playbackQueueChangedNotification___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 280);
  *(v2 + 280) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 288);
  *(v4 + 288) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 272);
  *(v6 + 272) = 0;

  v8 = *MEMORY[0x1E69B1388];
  *(*(a1 + 32) + 80) = *MEMORY[0x1E69B1388];
  *(*(a1 + 32) + 96) = v8;
  [*(*(a1 + 32) + 112) removeAllObjects];
  v9 = NSAllMapTableValues(*(*(a1 + 32) + 176));
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        [v14 invalidate];
        [v14 disconnect];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  [*(*(a1 + 32) + 176) removeAllObjects];
  [*(*(a1 + 32) + 136) removeAllObjects];
  [*(*(a1 + 32) + 224) removeAllObjects];
}

- (id)contentItemAnimatedArtworkForContentItemIdentifier:(id)a3 artworkIdentifier:(id)a4 size:(CGSize)a5 artworkFormat:(id)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__26312;
  v31 = __Block_byref_object_dispose__26313;
  v32 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __116__MPCMediaRemoteController_contentItemAnimatedArtworkForContentItemIdentifier_artworkIdentifier_size_artworkFormat___block_invoke;
  block[3] = &unk_1E8238370;
  v25 = width;
  v26 = height;
  block[4] = self;
  v21 = v13;
  v23 = v11;
  v24 = &v27;
  v22 = v12;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  dispatch_sync(accessQueue, block);
  v18 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v18;
}

void __116__MPCMediaRemoteController_contentItemAnimatedArtworkForContentItemIdentifier_artworkIdentifier_size_artworkFormat___block_invoke(uint64_t a1)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _animatedArtworkKeyForSize:*(a1 + 40) artworkFormat:*(a1 + 72), *(a1 + 80)];
  v3 = [*(*(a1 + 32) + 216) objectForKeyedSubscript:*(a1 + 48)];
  v4 = [v3 objectForKey:v2];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 64) + 8) + 40);
  if (v7)
  {
    if (![v7 isInvalid])
    {
      goto LABEL_16;
    }

    v7 = *(*(*(a1 + 64) + 8) + 40);
  }

  [v7 disconnect];
  v8 = [[MPCFuture alloc] initWithQueue:*(*(a1 + 32) + 16)];
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"contentItemAnimatedArtwork[%@] - %@", v2, *(a1 + 56)];
  [*(*(*(a1 + 64) + 8) + 40) setDebugLabel:v11];

  if (!v3)
  {
    v3 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    [*(*(a1 + 32) + 216) setObject:v3 forKeyedSubscript:*(a1 + 48)];
  }

  [v3 setObject:*(*(*(a1 + 64) + 8) + 40) forKey:v2];
  if (_os_feature_enabled_impl())
  {
    v12 = [*(*(a1 + 32) + 168) objectForKeyedSubscript:*(a1 + 48)];
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [*(*(a1 + 32) + 168) setObject:v12 forKeyedSubscript:*(a1 + 48)];
    }

    [v12 addObject:*(a1 + 56)];
    v13 = [*(*(a1 + 32) + 160) assetForArtworkID:*(a1 + 48) artworkKey:v2];
    if (v13)
    {
      [*(*(*(a1 + 64) + 8) + 40) finishWithValue:v13];
    }

    else
    {
      [*(*(a1 + 32) + 160) updateArtworkID:*(a1 + 48)];
      v30[0] = *(a1 + 56);
      [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
      v14 = MRPlaybackQueueRequestCreateWithIdentifiers();
      MRPlaybackQueueRequestSetIncludeArtwork();
      v29 = *(a1 + 40);
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
      [v14 setRequestedAnimatedArtworkAssetURLFormats:v15];

      v23 = [*(a1 + 32) resolvedPlayerPath];
      v22 = [v23 mediaRemotePlayerPath];
      v16 = dispatch_get_global_queue(21, 0);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __116__MPCMediaRemoteController_contentItemAnimatedArtworkForContentItemIdentifier_artworkIdentifier_size_artworkFormat___block_invoke_2;
      v24[3] = &unk_1E8238348;
      v24[4] = *(a1 + 32);
      v17 = *(a1 + 64);
      v25 = v3;
      v26 = v2;
      v18 = *(a1 + 56);
      v19 = *(a1 + 40);
      *&v20 = *(a1 + 48);
      *(&v20 + 1) = v17;
      *&v21 = v18;
      *(&v21 + 1) = v19;
      v27 = v21;
      v28 = v20;
      MEMORY[0x1C6954F90](v14, v22, v16, v24);

      if (v14)
      {
        CFRelease(v14);
      }
    }
  }

  else
  {
    [*(*(*(a1 + 64) + 8) + 40) finishWithValue:0];
  }

LABEL_16:
}

void __116__MPCMediaRemoteController_contentItemAnimatedArtworkForContentItemIdentifier_artworkIdentifier_size_artworkFormat___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:3000 underlyingError:a3 debugDescription:@"Got error from animated artwork request."];
    [*(*(*(a1 + 80) + 8) + 40) finishWithError:v4];
    v5 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __116__MPCMediaRemoteController_contentItemAnimatedArtworkForContentItemIdentifier_artworkIdentifier_size_artworkFormat___block_invoke_3;
    block[3] = &unk_1E8238A50;
    v36 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 80);
    v37 = v6;
    v38 = v7;
    dispatch_async(v5, block);

    v8 = v36;
    goto LABEL_19;
  }

  v9 = MRPlaybackQueueCopyContentItems();
  v10 = v9;
  if (!v9)
  {
    v15 = @"Got nil items for animated artwork request.";
LABEL_10:
    v4 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:3100 debugDescription:v15];

LABEL_11:
    [*(*(*(a1 + 80) + 8) + 40) finishWithError:v4];
    v16 = *(*(a1 + 32) + 8);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __116__MPCMediaRemoteController_contentItemAnimatedArtworkForContentItemIdentifier_artworkIdentifier_size_artworkFormat___block_invoke_5;
    v26[3] = &unk_1E8238510;
    v27 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = *(a1 + 32);
    v28 = v17;
    v29 = v18;
    v25 = *(a1 + 72);
    v19 = v25;
    v30 = v25;
    dispatch_async(v16, v26);

    v8 = v27;
    goto LABEL_19;
  }

  if (![v9 count])
  {
    v15 = @"Got zero items for animated artwork request.";
    goto LABEL_10;
  }

  v11 = [v10 objectAtIndexedSubscript:0];
  v12 = MRContentItemGetIdentifier();
  if ([v12 isEqualToString:*(a1 + 56)])
  {
    v13 = [v11 animatedArtworks];
    v14 = [v13 objectForKeyedSubscript:*(a1 + 64)];

    if (v14)
    {
      v8 = [v14 assetFileURL];
      v4 = 0;
    }

    else
    {
      v4 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:3102 debugDescription:@"Got no animated artwork for animated artwork request."];
      v8 = 0;
    }
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:3101 debugDescription:{@"Got a different artwork identifier from animated artwork loading than when we requested %@ -> %@", v12, *(a1 + 56)}];
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  v20 = [v8 startAccessingSecurityScopedResource];
  v21 = [objc_alloc(MEMORY[0x1E6988168]) initWithURL:v8 options:0];
  if (v20)
  {
    [v8 stopAccessingSecurityScopedResource];
  }

  [*(*(*(a1 + 80) + 8) + 40) finishWithValue:v21];
  v22 = *(a1 + 32);
  v23 = *(v22 + 8);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __116__MPCMediaRemoteController_contentItemAnimatedArtworkForContentItemIdentifier_artworkIdentifier_size_artworkFormat___block_invoke_4;
  v31[3] = &unk_1E8239310;
  v31[4] = v22;
  v32 = v21;
  v33 = *(a1 + 72);
  v34 = *(a1 + 48);
  v24 = v21;
  dispatch_async(v23, v31);

LABEL_19:
}

void __116__MPCMediaRemoteController_contentItemAnimatedArtworkForContentItemIdentifier_artworkIdentifier_size_artworkFormat___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  if (v2 == *(*(*(a1 + 48) + 8) + 40))
  {
    v3 = v2;
    [*(a1 + 32) removeObjectForKey:*(a1 + 40)];
    v2 = v3;
  }
}

void __116__MPCMediaRemoteController_contentItemAnimatedArtworkForContentItemIdentifier_artworkIdentifier_size_artworkFormat___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  if (v2 == *(*(*(a1 + 64) + 8) + 40))
  {
    [*(a1 + 32) setObject:0 forKey:*(a1 + 40)];
  }

  [*(*(a1 + 48) + 160) insertAsset:0 forArtworkID:*(a1 + 56) artworkKey:*(a1 + 40)];
}

- (id)contentItemAnimatedArtworkPreviewFrameForContentItemIdentifier:(id)a3 artworkIdentifier:(id)a4 size:(CGSize)a5 artworkFormat:(id)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__26312;
  v31 = __Block_byref_object_dispose__26313;
  v32 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __128__MPCMediaRemoteController_contentItemAnimatedArtworkPreviewFrameForContentItemIdentifier_artworkIdentifier_size_artworkFormat___block_invoke;
  block[3] = &unk_1E8238370;
  v25 = width;
  v26 = height;
  block[4] = self;
  v21 = v13;
  v23 = v11;
  v24 = &v27;
  v22 = v12;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  dispatch_sync(accessQueue, block);
  v18 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v18;
}

void __128__MPCMediaRemoteController_contentItemAnimatedArtworkPreviewFrameForContentItemIdentifier_artworkIdentifier_size_artworkFormat___block_invoke(uint64_t a1)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _animatedArtworkKeyForSize:*(a1 + 40) artworkFormat:*(a1 + 72), *(a1 + 80)];
  v3 = [*(*(a1 + 32) + 208) objectForKeyedSubscript:*(a1 + 48)];
  v4 = [v3 objectForKey:v2];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 64) + 8) + 40);
  if (v7)
  {
    if (![v7 isInvalid])
    {
      goto LABEL_18;
    }

    v7 = *(*(*(a1 + 64) + 8) + 40);
  }

  [v7 disconnect];
  v8 = [[MPCFuture alloc] initWithQueue:*(*(a1 + 32) + 16)];
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"contentItemAnimatedArtworkPreviewFrame[%@] - %@", v2, *(a1 + 56)];
  [*(*(*(a1 + 64) + 8) + 40) setDebugLabel:v11];

  if (!v3)
  {
    v3 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    [*(*(a1 + 32) + 208) setObject:v3 forKeyedSubscript:*(a1 + 48)];
  }

  [v3 setObject:*(*(*(a1 + 64) + 8) + 40) forKey:v2];
  if (_os_feature_enabled_impl())
  {
    v12 = [*(*(a1 + 32) + 168) objectForKeyedSubscript:*(a1 + 48)];
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [*(*(a1 + 32) + 168) setObject:v12 forKeyedSubscript:*(a1 + 48)];
    }

    [v12 addObject:*(a1 + 56)];
    v13 = [*(*(a1 + 32) + 152) objectForKeyedSubscript:*(a1 + 48)];
    v14 = [v13 objectForKeyedSubscript:v2];

    if (v14)
    {
      [*(*(*(a1 + 64) + 8) + 40) finishWithValue:v14];
    }

    else
    {
      v15 = [*(*(a1 + 32) + 152) objectForKeyedSubscript:*(a1 + 48)];

      if (!v15)
      {
        v16 = [MEMORY[0x1E695DF90] dictionary];
        [*(*(a1 + 32) + 152) setObject:v16 forKeyedSubscript:*(a1 + 48)];
      }

      v33[0] = *(a1 + 56);
      [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
      v17 = MRPlaybackQueueRequestCreateWithIdentifiers();
      MRPlaybackQueueRequestSetIncludeArtwork();
      v32 = *(a1 + 40);
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
      [v17 setRequestedAnimatedArtworkPreviewFrameFormats:v18];

      v26 = [*(a1 + 32) resolvedPlayerPath];
      v25 = [v26 mediaRemotePlayerPath];
      v19 = dispatch_get_global_queue(21, 0);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __128__MPCMediaRemoteController_contentItemAnimatedArtworkPreviewFrameForContentItemIdentifier_artworkIdentifier_size_artworkFormat___block_invoke_2;
      v27[3] = &unk_1E8238348;
      v27[4] = *(a1 + 32);
      v20 = *(a1 + 64);
      v28 = v3;
      v29 = v2;
      v21 = *(a1 + 56);
      v22 = *(a1 + 40);
      *&v23 = *(a1 + 48);
      *(&v23 + 1) = v20;
      *&v24 = v21;
      *(&v24 + 1) = v22;
      v30 = v24;
      v31 = v23;
      MEMORY[0x1C6954F90](v17, v25, v19, v27);

      if (v17)
      {
        CFRelease(v17);
      }
    }
  }

  else
  {
    [*(*(*(a1 + 64) + 8) + 40) finishWithValue:0];
  }

LABEL_18:
}

void __128__MPCMediaRemoteController_contentItemAnimatedArtworkPreviewFrameForContentItemIdentifier_artworkIdentifier_size_artworkFormat___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v9 = MRPlaybackQueueCopyContentItems();
    v10 = v9;
    if (v9)
    {
      if ([v9 count])
      {
        v11 = [v10 objectAtIndexedSubscript:0];
        v12 = MRContentItemGetIdentifier();
        if ([v12 isEqualToString:*(a1 + 56)])
        {
          v13 = [v11 animatedArtworkPreviewFrames];
          v14 = [v13 objectForKeyedSubscript:*(a1 + 64)];

          if (v14)
          {
            v15 = [v14 imageData];
            if (v15)
            {
              v16 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v15];
              if (v16)
              {
                v4 = 0;
              }

              else
              {
                v4 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:3103 debugDescription:@"Got invalid image data for artwork request."];
              }
            }

            else
            {
              v4 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:3102 debugDescription:@"Got no preview frame data for animated artwork preview frame request."];
              v16 = 0;
            }
          }

          else
          {
            v4 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:3102 debugDescription:@"Got no preview frame for animated artwork preview frame request."];
            v16 = 0;
          }
        }

        else
        {
          v4 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:3101 debugDescription:{@"Got a different artwork identifier from animated artwork preview image loading than when we requested %@ -> %@", v12, *(a1 + 56)}];
          v16 = 0;
        }

        if (v16)
        {
          [*(*(*(a1 + 80) + 8) + 40) finishWithValue:v16];
          v22 = *(a1 + 32);
          v23 = *(v22 + 8);
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __128__MPCMediaRemoteController_contentItemAnimatedArtworkPreviewFrameForContentItemIdentifier_artworkIdentifier_size_artworkFormat___block_invoke_4;
          v30[3] = &unk_1E8239310;
          v30[4] = v22;
          v31 = *(a1 + 72);
          v32 = *(a1 + 48);
          v33 = v16;
          v8 = v16;
          dispatch_async(v23, v30);

          goto LABEL_22;
        }

        goto LABEL_13;
      }

      v17 = @"Got zero items for animated artwork preview image request.";
    }

    else
    {
      v17 = @"Got nil items for animated artwork preview image request.";
    }

    v4 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:3100 debugDescription:v17];

LABEL_13:
    [*(*(*(a1 + 80) + 8) + 40) finishWithError:v4];
    v18 = *(*(a1 + 32) + 8);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __128__MPCMediaRemoteController_contentItemAnimatedArtworkPreviewFrameForContentItemIdentifier_artworkIdentifier_size_artworkFormat___block_invoke_5;
    v25[3] = &unk_1E8238510;
    v26 = *(a1 + 40);
    v19 = *(a1 + 48);
    v20 = *(a1 + 32);
    v27 = v19;
    v28 = v20;
    v24 = *(a1 + 72);
    v21 = v24;
    v29 = v24;
    dispatch_async(v18, v25);

    v8 = v26;
    goto LABEL_22;
  }

  v4 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:3000 underlyingError:a3 debugDescription:@"Got error from animated artwork preview image request."];
  [*(*(*(a1 + 80) + 8) + 40) finishWithError:v4];
  v5 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __128__MPCMediaRemoteController_contentItemAnimatedArtworkPreviewFrameForContentItemIdentifier_artworkIdentifier_size_artworkFormat___block_invoke_3;
  block[3] = &unk_1E8238A50;
  v35 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 80);
  v36 = v6;
  v37 = v7;
  dispatch_async(v5, block);

  v8 = v35;
LABEL_22:
}

void __128__MPCMediaRemoteController_contentItemAnimatedArtworkPreviewFrameForContentItemIdentifier_artworkIdentifier_size_artworkFormat___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  if (v2 == *(*(*(a1 + 48) + 8) + 40))
  {
    v3 = v2;
    [*(a1 + 32) removeObjectForKey:*(a1 + 40)];
    v2 = v3;
  }
}

void __128__MPCMediaRemoteController_contentItemAnimatedArtworkPreviewFrameForContentItemIdentifier_artworkIdentifier_size_artworkFormat___block_invoke_4(void *a1)
{
  v2 = a1[7];
  v3 = [*(a1[4] + 152) objectForKeyedSubscript:a1[5]];
  [v3 setObject:v2 forKeyedSubscript:a1[6]];
}

void __128__MPCMediaRemoteController_contentItemAnimatedArtworkPreviewFrameForContentItemIdentifier_artworkIdentifier_size_artworkFormat___block_invoke_5(uint64_t a1)
{
  v3 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  if (v3 == *(*(*(a1 + 64) + 8) + 40))
  {
    [*(a1 + 32) setObject:0 forKey:*(a1 + 40)];
  }

  v2 = [*(*(a1 + 48) + 152) objectForKeyedSubscript:*(a1 + 56)];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

- (id)contentItemRemoteArtworkForContentItemIdentifier:(id)a3 artworkIdentifier:(id)a4 size:(CGSize)a5 artworkFormat:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__26312;
  v27 = __Block_byref_object_dispose__26313;
  v28 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114__MPCMediaRemoteController_contentItemRemoteArtworkForContentItemIdentifier_artworkIdentifier_size_artworkFormat___block_invoke;
  block[3] = &unk_1E8238510;
  v21 = v11;
  v22 = &v23;
  block[4] = self;
  v19 = v10;
  v20 = v9;
  v13 = v11;
  v14 = v9;
  v15 = v10;
  dispatch_sync(accessQueue, block);
  v16 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v16;
}

void __114__MPCMediaRemoteController_contentItemRemoteArtworkForContentItemIdentifier_artworkIdentifier_size_artworkFormat___block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 200) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 64) + 8) + 40);
  if (v5)
  {
    if (![v5 isInvalid])
    {
      return;
    }

    v5 = *(*(*(a1 + 64) + 8) + 40);
  }

  [v5 disconnect];
  v6 = [[MPCFuture alloc] initWithQueue:*(*(a1 + 32) + 16)];
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"contentItemRemoteArtwork - %@", *(a1 + 48)];
  [*(*(*(a1 + 64) + 8) + 40) setDebugLabel:v9];

  v10 = *(a1 + 32);
  v11 = *(*(*(a1 + 64) + 8) + 40);
  if (*(v10 + 24) == 1)
  {
    v17 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:28 debugDescription:{@"%@ has been invalidated", *(a1 + 32)}];
    [v11 finishWithError:?];
  }

  else
  {
    [*(v10 + 200) setObject:*(*(*(a1 + 64) + 8) + 40) forKeyedSubscript:*(a1 + 40)];
    v22[0] = *(a1 + 48);
    [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v12 = MRPlaybackQueueRequestCreateWithIdentifiers();
    v21 = *(a1 + 56);
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    [v12 setRequestedRemoteArtworkFormats:v13];

    v14 = [*(a1 + 32) resolvedPlayerPath];
    v15 = [v14 mediaRemotePlayerPath];
    v16 = dispatch_get_global_queue(21, 0);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __114__MPCMediaRemoteController_contentItemRemoteArtworkForContentItemIdentifier_artworkIdentifier_size_artworkFormat___block_invoke_2;
    v18[3] = &unk_1E8238320;
    v20 = *(a1 + 64);
    v19 = *(a1 + 48);
    MEMORY[0x1C6954F90](v12, v15, v16, v18);

    if (v12)
    {
      CFRelease(v12);
    }
  }
}

void __114__MPCMediaRemoteController_contentItemRemoteArtworkForContentItemIdentifier_artworkIdentifier_size_artworkFormat___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:3000 underlyingError:a3 debugDescription:@"Got error from remote artwork request."];
    v14 = v4;
    v5 = *(*(*(a1 + 40) + 8) + 40);
LABEL_12:
    [v5 finishWithError:v4];
    goto LABEL_13;
  }

  v6 = MRPlaybackQueueCopyContentItems();
  v7 = v6;
  if (!v6)
  {
    v13 = @"Got nil items for remote artwork request.";
LABEL_10:
    v14 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:3100 debugDescription:v13];

LABEL_11:
    v5 = *(*(*(a1 + 40) + 8) + 40);
    v4 = v14;
    goto LABEL_12;
  }

  if (![v6 count])
  {
    v13 = @"Got zero items for remote artwork request.";
    goto LABEL_10;
  }

  v8 = [v7 objectAtIndexedSubscript:0];
  v9 = [v8 identifier];
  if ([v9 isEqualToString:*(a1 + 32)])
  {
    v10 = [v8 remoteArtworks];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E6970298]];

    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x1E6970838]) initWithMediaRemoteRemoteArtwork:v11];
      v14 = 0;
    }

    else
    {
      v14 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:3102 debugDescription:@"Got no RemoteArtwork for remote artwork request."];
      v12 = 0;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:3101 debugDescription:{@"Got a different contentItemID from remote artwork loading than when we requested %@ -> %@", v9, *(a1 + 32)}];
    v12 = 0;
  }

  if (!v12)
  {
    goto LABEL_11;
  }

  [*(*(*(a1 + 40) + 8) + 40) finishWithValue:v12];

LABEL_13:
}

- (id)contentItemArtworkForContentItemIdentifier:(id)a3 artworkIdentifier:(id)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a3;
  v10 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__26312;
  v26 = __Block_byref_object_dispose__26313;
  v27 = 0;
  accessQueue = self->_accessQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __94__MPCMediaRemoteController_contentItemArtworkForContentItemIdentifier_artworkIdentifier_size___block_invoke;
  v16[3] = &unk_1E82382F8;
  v20 = width;
  v21 = height;
  v16[4] = self;
  v17 = v10;
  v18 = v9;
  v19 = &v22;
  v12 = v9;
  v13 = v10;
  dispatch_sync(accessQueue, v16);
  v14 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v14;
}

void __94__MPCMediaRemoteController_contentItemArtworkForContentItemIdentifier_artworkIdentifier_size___block_invoke(uint64_t a1)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v2 = NSStringFromCGSize(*(a1 + 64));
  v3 = [*(*(a1 + 32) + 192) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 objectForKey:v2];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 56) + 8) + 40);
  if (v7)
  {
    if (![v7 isInvalid])
    {
      goto LABEL_19;
    }

    v7 = *(*(*(a1 + 56) + 8) + 40);
  }

  [v7 disconnect];
  v8 = [[MPCFuture alloc] initWithQueue:*(*(a1 + 32) + 16)];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"contentItemArtwork[%@] - %@", v2, *(a1 + 48)];
  [*(*(*(a1 + 56) + 8) + 40) setDebugLabel:v11];

  v12 = *(a1 + 32);
  if (*(v12 + 24) == 1)
  {
    v13 = *(*(*(a1 + 56) + 8) + 40);
    v14 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:28 debugDescription:{@"%@ has been invalidated", v12}];
    [v13 finishWithError:v14];
  }

  else
  {
    if (!v3)
    {
      v3 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
      [*(*(a1 + 32) + 192) setObject:v3 forKeyedSubscript:*(a1 + 40)];
    }

    [v3 setObject:*(*(*(a1 + 56) + 8) + 40) forKey:v2];
    v14 = [*(*(a1 + 32) + 168) objectForKeyedSubscript:*(a1 + 40)];
    if (!v14)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [*(*(a1 + 32) + 168) setObject:v14 forKeyedSubscript:*(a1 + 40)];
    }

    [v14 addObject:*(a1 + 48)];
    v15 = [*(*(a1 + 32) + 144) objectForKeyedSubscript:*(a1 + 40)];
    v16 = [v15 objectForKeyedSubscript:v2];

    if (v16)
    {
      [*(*(*(a1 + 56) + 8) + 40) finishWithValue:v16];
    }

    else
    {
      v17 = [*(*(a1 + 32) + 144) objectForKeyedSubscript:*(a1 + 40)];

      if (!v17)
      {
        v18 = [MEMORY[0x1E695DF90] dictionary];
        [*(*(a1 + 32) + 144) setObject:v18 forKeyedSubscript:*(a1 + 40)];
      }

      v30[0] = *(a1 + 48);
      [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
      v19 = MRPlaybackQueueRequestCreateWithIdentifiers();
      MRPlaybackQueueRequestSetIncludeArtwork();
      v20 = [*(a1 + 32) resolvedPlayerPath];
      v21 = [v20 mediaRemotePlayerPath];
      v22 = dispatch_get_global_queue(21, 0);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __94__MPCMediaRemoteController_contentItemArtworkForContentItemIdentifier_artworkIdentifier_size___block_invoke_2;
      v24[3] = &unk_1E82382D0;
      v23 = *(a1 + 32);
      v29 = *(a1 + 56);
      v24[4] = v23;
      v25 = v3;
      v26 = v2;
      v27 = *(a1 + 48);
      v28 = *(a1 + 40);
      MEMORY[0x1C6954F90](v19, v21, v22, v24);

      if (v19)
      {
        CFRelease(v19);
      }
    }
  }

LABEL_19:
}

void __94__MPCMediaRemoteController_contentItemArtworkForContentItemIdentifier_artworkIdentifier_size___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v9 = MRPlaybackQueueCopyContentItems();
    v10 = v9;
    if (v9)
    {
      if ([v9 count])
      {
        [v10 objectAtIndexedSubscript:0];

        v11 = MRContentItemGetIdentifier();
        if ([v11 isEqualToString:*(a1 + 56)])
        {
          ArtworkData = MRContentItemGetArtworkData();
          if (ArtworkData)
          {
            v13 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:ArtworkData];
            if (v13)
            {
              v14 = v13;

              [*(*(*(a1 + 72) + 8) + 40) finishWithValue:v14];
              AnalyticsSendEventLazy();
              v15 = *(a1 + 32);
              v16 = *(v15 + 8);
              v39[0] = MEMORY[0x1E69E9820];
              v39[1] = 3221225472;
              v39[2] = __94__MPCMediaRemoteController_contentItemArtworkForContentItemIdentifier_artworkIdentifier_size___block_invoke_5;
              v39[3] = &unk_1E8239310;
              v39[4] = v15;
              v40 = *(a1 + 64);
              v41 = *(a1 + 48);
              v42 = v14;
              v4 = v14;
              dispatch_async(v16, v39);

              v8 = v40;
              goto LABEL_18;
            }

            v19 = MEMORY[0x1E696ABC0];
            v20 = @"Got invalid image data for artwork request.";
            v21 = 3103;
          }

          else
          {
            v19 = MEMORY[0x1E696ABC0];
            v20 = @"Got no image data for artwork request.";
            v21 = 3102;
          }

          [v19 msv_errorWithDomain:@"MPCPlayerRequestError" code:v21 debugDescription:{v20, v26, v27}];
        }

        else
        {
          [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:3101 debugDescription:{@"Got a different artwork identifier from remote artwork loading than when we requested %@ -> %@", v11, *(a1 + 56)}];
        }
        v18 = ;

LABEL_17:
        [*(*(*(a1 + 72) + 8) + 40) finishWithError:v18];
        v34 = MEMORY[0x1E69E9820];
        v35 = 3221225472;
        v36 = __94__MPCMediaRemoteController_contentItemArtworkForContentItemIdentifier_artworkIdentifier_size___block_invoke_6;
        v37 = &unk_1E82382A8;
        v38 = v18;
        v4 = v18;
        AnalyticsSendEventLazy();
        v22 = *(*(a1 + 32) + 8);
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __94__MPCMediaRemoteController_contentItemArtworkForContentItemIdentifier_artworkIdentifier_size___block_invoke_7;
        v29[3] = &unk_1E8238510;
        v30 = *(a1 + 40);
        v23 = *(a1 + 48);
        v24 = *(a1 + 32);
        v31 = v23;
        v32 = v24;
        v28 = *(a1 + 64);
        v25 = v28;
        v33 = v28;
        dispatch_async(v22, v29);

        v8 = v38;
        goto LABEL_18;
      }

      v17 = @"Got zero items for artwork request.";
    }

    else
    {
      v17 = @"Got nil items for artwork request.";
    }

    v18 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:3100 debugDescription:v17];
    goto LABEL_17;
  }

  v4 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:3000 underlyingError:a3 debugDescription:@"Got error from artwork request."];
  [*(*(*(a1 + 72) + 8) + 40) finishWithError:v4];
  v5 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__MPCMediaRemoteController_contentItemArtworkForContentItemIdentifier_artworkIdentifier_size___block_invoke_3;
  block[3] = &unk_1E8238A50;
  v44 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 72);
  v45 = v6;
  v46 = v7;
  dispatch_async(v5, block);

  v8 = v44;
LABEL_18:
}

void __94__MPCMediaRemoteController_contentItemArtworkForContentItemIdentifier_artworkIdentifier_size___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  if (v2 == *(*(*(a1 + 48) + 8) + 40))
  {
    v3 = v2;
    [*(a1 + 32) removeObjectForKey:*(a1 + 40)];
    v2 = v3;
  }
}

void __94__MPCMediaRemoteController_contentItemArtworkForContentItemIdentifier_artworkIdentifier_size___block_invoke_5(void *a1)
{
  v2 = a1[7];
  v3 = [*(a1[4] + 144) objectForKeyedSubscript:a1[5]];
  [v3 setObject:v2 forKeyedSubscript:a1[6]];
}

id __94__MPCMediaRemoteController_contentItemArtworkForContentItemIdentifier_artworkIdentifier_size___block_invoke_6(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E695DF00] date];
  [v2 setObject:@"MPArtworkImage" forKeyedSubscript:@"mediaType"];
  v4 = MEMORY[0x1E696AD98];
  [v3 timeIntervalSinceNow];
  v6 = [v4 numberWithDouble:fabs(v5)];
  [v2 setObject:v6 forKeyedSubscript:@"duration"];

  [v2 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"success"];
  v7 = [*(a1 + 32) msv_analyticSignature];
  [v2 setObject:v7 forKeyedSubscript:@"errorSignature"];

  return v2;
}

void __94__MPCMediaRemoteController_contentItemArtworkForContentItemIdentifier_artworkIdentifier_size___block_invoke_7(uint64_t a1)
{
  v3 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  if (v3 == *(*(*(a1 + 64) + 8) + 40))
  {
    [*(a1 + 32) setObject:0 forKey:*(a1 + 40)];
  }

  v2 = [*(*(a1 + 48) + 144) objectForKeyedSubscript:*(a1 + 56)];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

id __94__MPCMediaRemoteController_contentItemArtworkForContentItemIdentifier_artworkIdentifier_size___block_invoke_4()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = [MEMORY[0x1E695DF00] date];
  [v0 setObject:@"MPArtworkImage" forKeyedSubscript:@"mediaType"];
  v2 = MEMORY[0x1E696AD98];
  [v1 timeIntervalSinceNow];
  v4 = [v2 numberWithDouble:fabs(v3)];
  [v0 setObject:v4 forKeyedSubscript:@"duration"];

  [v0 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"success"];

  return v0;
}

- (int64_t)contentItemAnimatedArtworkCacheStateForArtworkIdentifier:(id)a3 size:(CGSize)a4 artworkFormat:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  accessQueue = self->_accessQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __104__MPCMediaRemoteController_contentItemAnimatedArtworkCacheStateForArtworkIdentifier_size_artworkFormat___block_invoke;
  v16[3] = &unk_1E82382F8;
  v20 = width;
  v21 = height;
  v16[4] = self;
  v17 = v10;
  v18 = v9;
  v19 = &v22;
  v12 = v9;
  v13 = v10;
  dispatch_sync(accessQueue, v16);
  v14 = v23[3];

  _Block_object_dispose(&v22, 8);
  return v14;
}

void __104__MPCMediaRemoteController_contentItemAnimatedArtworkCacheStateForArtworkIdentifier_size_artworkFormat___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _animatedArtworkKeyForSize:*(a1 + 40) artworkFormat:*(a1 + 64), *(a1 + 72)];
  v2 = [*(*(a1 + 32) + 160) assetForArtworkID:*(a1 + 48) artworkKey:?];
  if (v2)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

- (int64_t)contentItemAnimatedArtworkPreviewFrameCacheStateForArtworkIdentifier:(id)a3 size:(CGSize)a4 artworkFormat:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  accessQueue = self->_accessQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __116__MPCMediaRemoteController_contentItemAnimatedArtworkPreviewFrameCacheStateForArtworkIdentifier_size_artworkFormat___block_invoke;
  v16[3] = &unk_1E82382F8;
  v20 = width;
  v21 = height;
  v16[4] = self;
  v17 = v10;
  v18 = v9;
  v19 = &v22;
  v12 = v9;
  v13 = v10;
  dispatch_sync(accessQueue, v16);
  v14 = v23[3];

  _Block_object_dispose(&v22, 8);
  return v14;
}

void __116__MPCMediaRemoteController_contentItemAnimatedArtworkPreviewFrameCacheStateForArtworkIdentifier_size_artworkFormat___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _animatedArtworkKeyForSize:*(a1 + 40) artworkFormat:*(a1 + 64), *(a1 + 72)];
  v2 = [*(*(a1 + 32) + 152) objectForKey:*(a1 + 48)];
  v3 = [v2 objectForKey:v4];

  if (v3)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

- (int64_t)contentItemArtworkCacheStateForArtworkIdentifier:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__MPCMediaRemoteController_contentItemArtworkCacheStateForArtworkIdentifier_size___block_invoke;
  block[3] = &unk_1E8238260;
  v15 = width;
  v16 = height;
  block[4] = self;
  v13 = v7;
  v14 = &v17;
  v9 = v7;
  dispatch_sync(accessQueue, block);
  v10 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v10;
}

void __82__MPCMediaRemoteController_contentItemArtworkCacheStateForArtworkIdentifier_size___block_invoke(uint64_t a1)
{
  v4 = NSStringFromCGSize(*(a1 + 56));
  v2 = [*(*(a1 + 32) + 144) objectForKey:*(a1 + 40)];
  v3 = [v2 objectForKey:v4];

  if (v3)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (id)contentItemForIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__26312;
  v16 = __Block_byref_object_dispose__26313;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__MPCMediaRemoteController_contentItemForIdentifier___block_invoke;
  block[3] = &unk_1E8238A50;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __53__MPCMediaRemoteController_contentItemForIdentifier___block_invoke(uint64_t *a1)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 184) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1[4] + 120) pokeKey:a1[5]];
  v5 = *(*(a1[6] + 8) + 40);
  if (v5)
  {
    if (![v5 isInvalid])
    {
      return;
    }

    v5 = *(*(a1[6] + 8) + 40);
  }

  [v5 disconnect];
  v6 = [[MPCFuture alloc] initWithQueue:*(a1[4] + 16)];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"contentItem - %@", a1[5]];
  [*(*(a1[6] + 8) + 40) setDebugLabel:v9];

  v10 = a1[4];
  if (*(v10 + 24) == 1)
  {
    v11 = *(*(a1[6] + 8) + 40);
    v22 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:28 debugDescription:{@"%@ has been invalidated", v10}];
    [v11 finishWithError:?];
  }

  else
  {
    [*(v10 + 184) setObject:*(*(a1[6] + 8) + 40) forKey:a1[5]];
    v12 = [*(a1[4] + 120) objectForKeyedSubscript:a1[5]];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
      v15 = [*(a1[4] + 128) objectForKeyedSubscript:a1[5]];
      if (v15)
      {
        v16 = [v14 copy];

        [v16 _mergeContentItem:v15];
        v14 = v16;
      }

      [*(*(a1[6] + 8) + 40) finishWithValue:v14];
    }

    else
    {
      v26[0] = a1[5];
      [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      v17 = MRPlaybackQueueRequestCreateWithIdentifiers();
      MRPlaybackQueueRequestSetIncludeMetadata();
      MRPlaybackQueueRequestSetIncludeLanguageOptions();
      v18 = [a1[4] resolvedPlayerPath];
      v19 = [v18 mediaRemotePlayerPath];
      v20 = dispatch_get_global_queue(21, 0);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __53__MPCMediaRemoteController_contentItemForIdentifier___block_invoke_2;
      v24[3] = &unk_1E8238238;
      v24[4] = a1[4];
      *v23 = *(a1 + 5);
      v21 = v23[0];
      v25 = *v23;
      MEMORY[0x1C6954F90](v17, v19, v20, v24);

      if (v17)
      {
        CFRelease(v17);
      }
    }
  }
}

void __53__MPCMediaRemoteController_contentItemForIdentifier___block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:2000 underlyingError:a3 debugDescription:@"Got error from MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync one-off content item request."];
    [*(*(a1[6] + 8) + 40) finishWithError:v4];
    v6 = a1[4];
    v5 = a1[5];
    v7 = *(v6 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__MPCMediaRemoteController_contentItemForIdentifier___block_invoke_3;
    block[3] = &unk_1E8238A50;
    block[4] = v6;
    v8 = v22;
    v9 = v5;
    v10 = a1[6];
    v22[0] = v9;
    v22[1] = v10;
    dispatch_async(v7, block);
  }

  else
  {
    v11 = MRPlaybackQueueCopyContentItems();
    v13 = a1[4];
    v12 = a1[5];
    v14 = *(v13 + 8);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __53__MPCMediaRemoteController_contentItemForIdentifier___block_invoke_4;
    v17[3] = &unk_1E8238210;
    v8 = &v18;
    v17[4] = v13;
    v18 = v11;
    v15 = v12;
    v16 = a1[6];
    v19 = v15;
    v20 = v16;
    v4 = v11;
    dispatch_async(v14, v17);
  }
}

void __53__MPCMediaRemoteController_contentItemForIdentifier___block_invoke_3(void *a1)
{
  v2 = [*(a1[4] + 184) objectForKey:a1[5]];
  if (v2 == *(*(a1[6] + 8) + 40))
  {
    v3 = v2;
    [*(a1[4] + 120) removeObjectForKey:a1[5]];
    v2 = v3;
  }
}

void __53__MPCMediaRemoteController_contentItemForIdentifier___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _onQueue_mergeContentItems:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 120) objectForKeyedSubscript:*(a1 + 48)];
  [*(*(*(a1 + 56) + 8) + 40) finishWithValue:v2];
}

- (int64_t)contentItemCacheStateForIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__MPCMediaRemoteController_contentItemCacheStateForIdentifier___block_invoke;
  block[3] = &unk_1E8238A50;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(accessQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __63__MPCMediaRemoteController_contentItemCacheStateForIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 128) objectForKeyedSubscript:a1[5]];
  if (v2)
  {
    *(*(a1[6] + 8) + 24) = 2;
  }

  else
  {
    v3 = [*(a1[4] + 184) objectForKey:a1[5]];
    if ([v3 isFinalized])
    {
      *(*(a1[6] + 8) + 24) = 1;
    }

    v2 = 0;
  }
}

- (id)playbackQueueForRequest:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = [v4 label];
  v7 = [v5 stringWithFormat:@"<MPCMediaRemoteController: %p> %@", self, v6];
  [v4 setLabel:v7];

  v8 = [(MPCMediaRemoteController *)self _requestPropertiesDescriptionForRequest:v4];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__26312;
  v22 = __Block_byref_object_dispose__26313;
  v23 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MPCMediaRemoteController_playbackQueueForRequest___block_invoke;
  block[3] = &unk_1E8238210;
  v14 = v4;
  v15 = self;
  v16 = v8;
  v17 = &v18;
  v10 = v4;
  dispatch_sync(accessQueue, block);
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

void __52__MPCMediaRemoteController_playbackQueueForRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) range];
  v4 = v3;
  v5 = [*(*(a1 + 40) + 224) objectForKey:*(a1 + 48)];
  v6 = [*(*(a1 + 40) + 176) objectForKey:v5];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(*(a1 + 56) + 8) + 40);
  if (v9)
  {
    if (![v9 isInvalid])
    {
      goto LABEL_16;
    }

    v9 = *(*(*(a1 + 56) + 8) + 40);
  }

  [v9 disconnect];
  v10 = [[MPCFuture alloc] initWithQueue:*(*(a1 + 40) + 16)];
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = MEMORY[0x1E696AEC0];
  v14 = NSStringFromMSVSignedRange();
  v15 = [v13 stringWithFormat:@"playbackQueueForRequest[%@]", v14];
  [*(*(*(a1 + 56) + 8) + 40) setDebugLabel:v15];

  v16 = *(a1 + 40);
  if (*(v16 + 24) == 1)
  {
    v17 = *(*(*(a1 + 56) + 8) + 40);
    v18 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:28 debugDescription:{@"%@ has been invalidated", *(a1 + 40)}];
    [v17 finishWithError:v18];
  }

  else
  {
    v19 = *(v16 + 224);
    v47[0] = v2;
    v47[1] = v4;
    v20 = [MEMORY[0x1E696B098] valueWithBytes:v47 objCType:"{_MSVSignedRange=qq}"];
    [v19 setObject:v20 forKey:*(a1 + 48)];

    v21 = *(*(a1 + 40) + 176);
    v22 = *(*(*(a1 + 56) + 8) + 40);
    v46[0] = v2;
    v46[1] = v4;
    v23 = [MEMORY[0x1E696B098] valueWithBytes:v46 objCType:"{_MSVSignedRange=qq}"];
    [v21 setObject:v22 forKey:v23];

    v24 = *(a1 + 40);
    v25 = *(v24 + 96);
    if (v2 < v25 || (v26 = *(v24 + 104), v2 - v25 >= v26) || (v4 <= 1 ? (v27 = 1) : (v27 = v4), (v28 = v2 + v27 - 1, v29 = __OFSUB__(v28, v25), v30 = v28 - v25, !v5) || v30 < 0 != v29 || v30 >= v26))
    {
      [*(v24 + 120) beginTransaction];
      [*(a1 + 32) setIncludeMetadata:1];
      [*(a1 + 32) setIncludeLanguageOptions:1];
      v33 = *(a1 + 32);
      v34 = [*(*(a1 + 40) + 232) objectForKeyedSubscript:*(a1 + 48)];
      v35 = [v34 allObjects];
      MRPlaybackQueueRequestSetIdentifiers();

      v36 = [*(a1 + 40) resolvedPlayerPath];
      v37 = [v36 mediaRemotePlayerPath];
      v41[0] = MEMORY[0x1E69E9820];
      v38 = *(a1 + 56);
      v39 = *(a1 + 40);
      v40 = *(*(a1 + 40) + 8);
      v41[1] = 3221225472;
      v41[2] = __52__MPCMediaRemoteController_playbackQueueForRequest___block_invoke_2;
      v41[3] = &unk_1E82381E8;
      v44 = v2;
      v45 = v4;
      v43 = v38;
      v42 = v39;
      MEMORY[0x1C6954F90](v33, v37, v40, v41);
    }

    else
    {
      v31 = *(*(*(a1 + 56) + 8) + 40);
      v32 = [v24 _onQueue_playbackQueueForRange:{v2, v4}];
      [v31 finishWithValue:v32];
    }
  }

LABEL_16:
}

uint64_t __52__MPCMediaRemoteController_playbackQueueForRequest___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  Range = MRPlaybackQueueGetRange();
  if (!v5)
  {
    v13 = Range;
    v14 = v7;
    if (v7 < 1 || ((v15 = *(a1 + 56), v15 <= 0) ? (v16 = *(a1 + 64) <= -v15) : (v16 = 1), v16 || Range <= 0 && v7 > -Range || ([MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:2000 debugDescription:@"PlaybackQueue Response failed to include now playing item"], (v17 = objc_claimAutoreleasedReturnValue()) == 0)))
    {
      v18 = *(*(a1 + 32) + 176);
      v30 = *(a1 + 56);
      v19 = [MEMORY[0x1E696B098] valueWithBytes:&v30 objCType:"{_MSVSignedRange=qq}"];
      v5 = [v18 objectForKey:v19];

      v10 = MRPlaybackQueueCopyContentItems();
      if (*(*(*(a1 + 48) + 8) + 40) == v5)
      {
        [*(a1 + 32) _onQueue_mergeContentItems:v10 queueRange:v13 requestRange:v14 requestProperties:{*(a1 + 56), *(a1 + 64), *(a1 + 40)}];
      }

      v20 = MRPlaybackQueueGetQueueID();
      v21 = *(a1 + 32);
      v22 = *(v21 + 280);
      *(v21 + 280) = v20;

      v23 = [a2 properties];
      v24 = *(a1 + 32);
      v25 = *(v24 + 288);
      *(v24 + 288) = v23;

      v26 = *(*(*(a1 + 48) + 8) + 40);
      v12 = [*(a1 + 32) _onQueue_playbackQueueForRange:{*(a1 + 56), *(a1 + 64)}];
      [v26 finishWithValue:v12];
      goto LABEL_16;
    }

    v5 = v17;
  }

  [*(*(*(a1 + 48) + 8) + 40) finishWithError:v5];
  v8 = *(*(a1 + 32) + 176);
  v29 = *(a1 + 56);
  v9 = [MEMORY[0x1E696B098] valueWithBytes:&v29 objCType:"{_MSVSignedRange=qq}"];
  v10 = [v8 objectForKey:v9];

  if (v10 == *(*(*(a1 + 48) + 8) + 40))
  {
    v11 = *(*(a1 + 32) + 176);
    v28 = *(a1 + 56);
    v12 = [MEMORY[0x1E696B098] valueWithBytes:&v28 objCType:"{_MSVSignedRange=qq}"];
    [v11 setObject:0 forKey:v12];
LABEL_16:
  }

  return [*(*(a1 + 32) + 120) endTransaction];
}

- (void)sendCommand:(unsigned int)a3 options:(id)a4 completion:(id)a5
{
  v6 = *&a3;
  v8 = a4;
  v9 = a5;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__146;
  v35[4] = __Block_byref_object_dispose__147;
  v36 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__MPCMediaRemoteController_sendCommand_options_completion___block_invoke;
  block[3] = &unk_1E8238198;
  v33 = v35;
  block[4] = self;
  v34 = v6;
  v11 = v8;
  v32 = v11;
  dispatch_sync(accessQueue, block);
  v12 = objc_alloc_init(MEMORY[0x1E69B13F0]);
  v13 = dispatch_time(0, 5500000000);
  v14 = self->_accessQueue;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __59__MPCMediaRemoteController_sendCommand_options_completion___block_invoke_2;
  v26[3] = &unk_1E8238198;
  v29 = v35;
  v15 = v12;
  v27 = v15;
  v28 = self;
  v30 = v6;
  dispatch_after(v13, v14, v26);
  v16 = objc_opt_class();
  v17 = [(MPCMediaRemoteController *)self resolvedPlayerPath];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59__MPCMediaRemoteController_sendCommand_options_completion___block_invoke_149;
  v20[3] = &unk_1E82381C0;
  v18 = v15;
  v24 = v35;
  v21 = v18;
  v22 = self;
  v25 = v6;
  v19 = v9;
  v23 = v19;
  [v16 sendCommand:v6 options:v11 toPlayerPath:v17 completion:v20];

  _Block_object_dispose(v35, 8);
}

uint64_t __59__MPCMediaRemoteController_sendCommand_options_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_updateOptimisticStateForCommand:*(a1 + 56) options:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __59__MPCMediaRemoteController_sendCommand_options_completion___block_invoke_2(uint64_t result)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(*(*(result + 48) + 8) + 40))
  {
    v1 = result;
    result = [*(result + 32) disarm];
    if (result)
    {
      v2 = os_log_create("com.apple.amp.mediaplaybackcore", "MediaRemote");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v3 = *(*(v1 + 40) + 296);
        v4 = MRMediaRemoteCopyCommandDescription();
        v5 = 138543618;
        v6 = v3;
        v7 = 2114;
        v8 = v4;
        _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_ERROR, "MRC %{public}@: Undo optimistic state [timeout] command=%{public}@", &v5, 0x16u);
      }

      return (*(*(*(*(v1 + 48) + 8) + 40) + 16))();
    }
  }

  return result;
}

void __59__MPCMediaRemoteController_sendCommand_options_completion___block_invoke_149(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) disarm] && objc_msgSend(v3, "statusCode") && *(*(*(a1 + 56) + 8) + 40))
  {
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "MediaRemote");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 40) + 296);
      v6 = MRMediaRemoteCopyCommandDescription();
      v7 = 138543874;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_ERROR, "MRC %{public}@: Undo optimistic state [failed] command=%{public}@ status=%{public}@", &v7, 0x20u);
    }

    dispatch_sync(*(*(a1 + 40) + 8), *(*(*(a1 + 56) + 8) + 40));
  }

  (*(*(a1 + 48) + 16))();
}

uint64_t __53__MPCMediaRemoteController_playbackQueueParticipants__block_invoke_3(uint64_t a1)
{
  result = [*(*(*(a1 + 40) + 8) + 40) finishWithValue:MEMORY[0x1E695E0F0]];
  v3 = *(a1 + 32);
  if (*(*(*(a1 + 40) + 8) + 40) == *(v3 + 64))
  {
    *(v3 + 72) = 1;
  }

  return result;
}

- (id)mediaRemoteAnimatedArtworkDataSource
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__26312;
  v10 = __Block_byref_object_dispose__26313;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__MPCMediaRemoteController_mediaRemoteAnimatedArtworkDataSource__block_invoke;
  v5[3] = &unk_1E82394D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __64__MPCMediaRemoteController_mediaRemoteAnimatedArtworkDataSource__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 264);
  if (!v2)
  {
    v3 = [[MPCMRAnimatedArtworkDataSource alloc] initWithController:*(a1 + 32)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 264);
    *(v4 + 264) = v3;

    v2 = *(*(a1 + 32) + 264);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

- (id)mediaRemoteArtworkDataSource
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__26312;
  v10 = __Block_byref_object_dispose__26313;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__MPCMediaRemoteController_mediaRemoteArtworkDataSource__block_invoke;
  v5[3] = &unk_1E82394D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __56__MPCMediaRemoteController_mediaRemoteArtworkDataSource__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 248);
  if (!v2)
  {
    v3 = [[MPCMRArtworkDataSource alloc] initWithController:*(a1 + 32)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 248);
    *(v4 + 248) = v3;

    v2 = *(*(a1 + 32) + 248);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

- (id)remoteArtworkDataSource
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__26312;
  v10 = __Block_byref_object_dispose__26313;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__MPCMediaRemoteController_remoteArtworkDataSource__block_invoke;
  v5[3] = &unk_1E82394D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __51__MPCMediaRemoteController_remoteArtworkDataSource__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 256);
  if (!v2)
  {
    v3 = [[MPCMRRemoteArtworkDataSource alloc] initWithController:*(a1 + 32)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 256);
    *(v4 + 256) = v3;

    v2 = *(*(a1 + 32) + 256);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

- (void)dealloc
{
  MEMORY[0x1C6955540](self->_stateHandle, a2);
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MPCMediaRemoteController;
  [(MPCMediaRemoteController *)&v4 dealloc];
}

- (id)_initWithResolvedPlayerPath:(id)a3
{
  v4 = a3;
  v51.receiver = self;
  v51.super_class = MPCMediaRemoteController;
  v5 = [(MPCMediaRemoteController *)&v51 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.MediaPlaybackCore/MPCMediaRemoteController", v6);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.MediaPlaybackCore/MPCMediaRemoteController.callout", v9);
    calloutQueue = v5->_calloutQueue;
    v5->_calloutQueue = v10;

    v12 = [v4 copy];
    resolvedPlayerPath = v5->_resolvedPlayerPath;
    v5->_resolvedPlayerPath = v12;

    v14 = [MEMORY[0x1E695DF70] array];
    contentItemIDs = v5->_contentItemIDs;
    v5->_contentItemIDs = v14;

    v16 = [MEMORY[0x1E695DF90] dictionary];
    optimisticStateContentItems = v5->_optimisticStateContentItems;
    v5->_optimisticStateContentItems = v16;

    v18 = [MEMORY[0x1E695DF90] dictionary];
    contentItemChanges = v5->_contentItemChanges;
    v5->_contentItemChanges = v18;

    v20 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    playbackQueueFutures = v5->_playbackQueueFutures;
    v5->_playbackQueueFutures = v20;

    v22 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    contentItemFutures = v5->_contentItemFutures;
    v5->_contentItemFutures = v22;

    v24 = [MEMORY[0x1E695DF90] dictionary];
    contentItemArtworkFutures = v5->_contentItemArtworkFutures;
    v5->_contentItemArtworkFutures = v24;

    v26 = [MEMORY[0x1E695DF90] dictionary];
    contentItemRemoteArtworkFutures = v5->_contentItemRemoteArtworkFutures;
    v5->_contentItemRemoteArtworkFutures = v26;

    v28 = [MEMORY[0x1E695DF90] dictionary];
    contentItemAnimatedArtworkPreviewFrameFutures = v5->_contentItemAnimatedArtworkPreviewFrameFutures;
    v5->_contentItemAnimatedArtworkPreviewFrameFutures = v28;

    v30 = [MEMORY[0x1E695DF90] dictionary];
    contentItemAnimatedArtworkFutures = v5->_contentItemAnimatedArtworkFutures;
    v5->_contentItemAnimatedArtworkFutures = v30;

    v32 = [MEMORY[0x1E695DF90] dictionary];
    contentItemArtworkIdentifiers = v5->_contentItemArtworkIdentifiers;
    v5->_contentItemArtworkIdentifiers = v32;

    v34 = [MEMORY[0x1E695DF90] dictionary];
    requestedRangeForProperties = v5->_requestedRangeForProperties;
    v5->_requestedRangeForProperties = v34;

    v36 = [MEMORY[0x1E695DF90] dictionary];
    contentItemIDsForProperties = v5->_contentItemIDsForProperties;
    v5->_contentItemIDsForProperties = v36;

    v38 = [objc_alloc(MEMORY[0x1E69B1430]) initWithMaximumCapacity:1];
    contentItems = v5->_contentItems;
    v5->_contentItems = v38;

    [(MSVLRUDictionary *)v5->_contentItems setDelegate:v5];
    v40 = [objc_alloc(MEMORY[0x1E69B1430]) initWithMaximumCapacity:1];
    contentItemArtwork = v5->_contentItemArtwork;
    v5->_contentItemArtwork = v40;

    v42 = [objc_alloc(MEMORY[0x1E69B1430]) initWithMaximumCapacity:1];
    contentItemAnimatedArtworkPreviewFrames = v5->_contentItemAnimatedArtworkPreviewFrames;
    v5->_contentItemAnimatedArtworkPreviewFrames = v42;

    v44 = objc_alloc_init(MPCMediaRemoteControllerAnimatedArtworkCache);
    contentItemAnimatedArtwork = v5->_contentItemAnimatedArtwork;
    v5->_contentItemAnimatedArtwork = v44;

    if ([objc_opt_class() _shouldRegisterForNotifications])
    {
      v46 = [MEMORY[0x1E696AD88] defaultCenter];
      [v46 addObserver:v5 selector:sel__playbackStateDidChangeNotification_ name:*MEMORY[0x1E69B12C8] object:0];
      [v46 addObserver:v5 selector:sel__supportedCommandsDidChangeNotification_ name:*MEMORY[0x1E69B12D0] object:0];
      [v46 addObserver:v5 selector:sel__playbackQueueChangedNotification_ name:*MEMORY[0x1E69B1318] object:0];
      [v46 addObserver:v5 selector:sel__playbackQueueContentItemsChangedNotification_ name:*MEMORY[0x1E69B1328] object:0];
      [v46 addObserver:v5 selector:sel__contentItemArtworkChangedNotification_ name:*MEMORY[0x1E69B1320] object:0];
      [v46 addObserver:v5 selector:sel__playbackQueueParticipantsDidChangeNotification_ name:*MEMORY[0x1E69B0960] object:0];
    }

    v47 = dispatch_get_global_queue(21, 0);
    _MRMediaRemoteRegisterForNowPlayingNotificationsEx();

    MRMediaRemoteSetWantsSupportedCommandsChangedNotifications();
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __56__MPCMediaRemoteController__initWithResolvedPlayerPath___block_invoke;
    v49[3] = &unk_1E8239270;
    v50 = v5;
    v50->_stateHandle = __56__MPCMediaRemoteController__initWithResolvedPlayerPath___block_invoke(v49);
  }

  return v5;
}

uint64_t __56__MPCMediaRemoteController__initWithResolvedPlayerPath___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  objc_copyWeak(&v3, &location);
  v1 = MSVLogAddStateHandler();
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
  return v1;
}

uint64_t __56__MPCMediaRemoteController__initWithResolvedPlayerPath___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v8 = [WeakRetained _onQueue_stateDictionary];
      v9 = v5[2](v5, v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)_sendCommand:(unsigned int)a3 playbackIntent:(id)a4 options:(id)a5 toPlayerPath:(id)a6 completion:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v13)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"MPCMediaRemoteController.m" lineNumber:283 description:{@"Invalid parameter not satisfying: %@", @"playbackIntent"}];
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __88__MPCMediaRemoteController__sendCommand_playbackIntent_options_toPlayerPath_completion___block_invoke;
  v22[3] = &unk_1E82380D8;
  v23 = v13;
  v24 = v14;
  v26 = v16;
  v27 = a1;
  v28 = a3;
  v25 = v15;
  v17 = v15;
  v18 = v14;
  v19 = v16;
  v20 = v13;
  [v17 getPlaybackIntentDestinationWithCompletion:v22];
}

void __88__MPCMediaRemoteController__sendCommand_playbackIntent_options_toPlayerPath_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v14 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:1000 underlyingError:a3 debugDescription:{@"Failed to create playback queue from playback intent %@", *(a1 + 32)}];
    v4 = *(a1 + 56);
    v5 = [MEMORY[0x1E69708F8] statusWithCode:200 error:v14];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    v7 = [*(a1 + 40) objectForKeyedSubscript:@"MPCPlayerCommandRequestMediaRemoteOptionDelegationTokenB"];
    [*(a1 + 32) setDelegateTokenB:v7];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __88__MPCMediaRemoteController__sendCommand_playbackIntent_options_toPlayerPath_completion___block_invoke_2;
    v15[3] = &unk_1E82380B0;
    v8 = *(a1 + 32);
    v9 = *(a1 + 56);
    v10 = *(a1 + 40);
    v11 = *(a1 + 64);
    v18 = a2;
    v19 = v11;
    v20 = *(a1 + 72);
    *&v12 = *(a1 + 48);
    *(&v12 + 1) = v9;
    *&v13 = v8;
    *(&v13 + 1) = v10;
    v16 = v13;
    v17 = v12;
    [v8 getRemotePlaybackQueueWithDestination:a2 completion:v15];
  }
}

void __88__MPCMediaRemoteController__sendCommand_playbackIntent_options_toPlayerPath_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a2;
  if (v24)
  {
    v5 = [*(a1 + 40) mutableCopy];
    [v5 setObject:0 forKeyedSubscript:@"MPCPlayerCommandRequestMediaRemoteOptionPlaybackIntent"];
    [v5 setObject:0 forKeyedSubscript:@"MPCPlayerCommandRequestMediaRemoteOptionDelegationTokenB"];
    v6 = [*(a1 + 40) objectForKeyedSubscript:@"MPCPlayerCommandRequestMediaRemoteOptionReplaceIntent"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 integerValue];
      if ((v8 - 1) >= 3)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8;
      }

      [v5 setObject:0 forKeyedSubscript:@"MPCPlayerCommandRequestMediaRemoteOptionReplaceIntent"];
      [v24 setReplaceIntent:v9];
    }

    [v24 _mediaRemotePlaybackQueue];
    ExternalRepresentation = MRSystemAppPlaybackQueueCreateExternalRepresentation();
    if (ExternalRepresentation)
    {
      [v5 setObject:ExternalRepresentation forKeyedSubscript:*MEMORY[0x1E69B1268]];
      v11 = [v24 mediaRemoteOptions];
      [v5 addEntriesFromDictionary:v11];

      v12 = *(a1 + 64);
      if (v12 == 3)
      {
        v13 = objc_alloc(MEMORY[0x1E69E4418]);
        v14 = [MEMORY[0x1E696AE30] processInfo];
        v15 = [v14 processName];
        v16 = [@"com.apple.MediaPlaybackCore.performRemoteQueueCommand-" stringByAppendingString:v15];
        v17 = [v13 initWithName:v16];

        v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:60.0];
        [v17 setExpirationDate:v18];

        v19 = [MEMORY[0x1E69E4410] sharedService];
        [v19 addAssertion:v17];

        v12 = *(a1 + 64);
      }

      [*(a1 + 72) _sendCommand:*(a1 + 80) options:v5 appOptions:v12 != 1 toPlayerPath:*(a1 + 48) completion:*(a1 + 56)];
    }

    else
    {
      v21 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:1000 debugDescription:{@"Failed to create external representation from playback queue %@", v24}];
      v22 = *(a1 + 56);
      v23 = [MEMORY[0x1E69708F8] statusWithCode:200 error:v21];
      (*(v22 + 16))(v22, v23);
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:1000 underlyingError:a3 debugDescription:{@"Failed to create playback queue from playback intent %@", *(a1 + 32)}];
    v20 = *(a1 + 56);
    v7 = [MEMORY[0x1E69708F8] statusWithCode:200 error:v5];
    (*(v20 + 16))(v20, v7);
  }
}

+ (void)_sendCommand:(unsigned int)a3 options:(id)a4 appOptions:(unsigned int)a5 toPlayerPath:(id)a6 completion:(id)a7
{
  v11 = a4;
  v12 = a7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__MPCMediaRemoteController__sendCommand_options_appOptions_toPlayerPath_completion___block_invoke;
  aBlock[3] = &unk_1E8238038;
  v13 = v12;
  v33 = v13;
  v34 = a3;
  v14 = a6;
  v15 = _Block_copy(aBlock);
  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "MediaRemote");
  v17 = os_signpost_id_generate(v16);

  v18 = [v11 objectForKeyedSubscript:@"MPCPlayerCommandRequestMediaRemoteOptionDevices"];
  if (v18)
  {
    v25 = [v11 mutableCopy];
    [v25 removeObjectForKey:@"MPCPlayerCommandRequestMediaRemoteOptionDevices"];
    v24 = v25;

    v26 = _MPCLogCategoryMediaRemote();
    v27 = v26;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v17, "SendCommand:groupDevicesAndSendCommand", "", buf, 2u);
    }

    [v14 mediaRemotePlayerPath];
    v21 = [a1 mediaRemoteReplyQueue];
    v29[2] = MEMORY[0x1E69E9820];
    v29[3] = 3221225472;
    v29[4] = __84__MPCMediaRemoteController__sendCommand_options_appOptions_toPlayerPath_completion___block_invoke_66;
    v29[5] = &unk_1E8238060;
    v22 = v30;
    v30[0] = v15;
    v30[1] = v17;
    v28 = v15;
    MRAVEndpointGroupDevicesAndSendCommandWithResult();
  }

  else
  {
    v19 = os_log_create("com.apple.amp.mediaplaybackcore", "MediaRemote");
    v20 = v19;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v17, "SendCommand:sendCommandToPlayer", "", buf, 2u);
    }

    [v14 mediaRemotePlayerPath];
    v21 = [a1 mediaRemoteReplyQueue];
    v22 = v29;
    v29[0] = v15;
    v29[1] = v17;
    v23 = v15;
    MRMediaRemoteSendCommandToPlayerWithResult();
    v24 = v11;
  }
}

void __84__MPCMediaRemoteController__sendCommand_options_appOptions_toPlayerPath_completion___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v13 = a3;
  v7 = a4;
  if (a2 != 11 && a2)
  {
    v10 = *(a1 + 32);
    v11 = MEMORY[0x1E69708F8];
    v9 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:1000 underlyingError:v13 debugDescription:{@"Failed to send command %ld", *(a1 + 40)}];
    v12 = [v11 statusWithCode:200 error:v9];
    (*(v10 + 16))(v10, v12);
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = MPRemoteCommandStatusFromMRSendCommandResultStatus();
    (*(v8 + 16))(v8, v9);
  }
}

void __84__MPCMediaRemoteController__sendCommand_options_appOptions_toPlayerPath_completion___block_invoke_66(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "MediaRemote");
  v8 = v7;
  v9 = *(a1 + 40);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v8, OS_SIGNPOST_INTERVAL_END, v9, "SendCommand:groupDevicesAndSendCommand", "", v16, 2u);
  }

  v10 = [v5 error];
  v11 = [v5 sendError];
  if (v6)
  {
    v12 = v6;

    if (v11)
    {
      v11 = v11;
    }

    else
    {
      v11 = 2;
    }

    v10 = v12;
  }

  v13 = *(a1 + 32);
  v14 = [v5 resultStatuses];
  v15 = [v14 firstObject];
  (*(v13 + 16))(v13, v11, v10, v15);
}

void __84__MPCMediaRemoteController__sendCommand_options_appOptions_toPlayerPath_completion___block_invoke_68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "MediaRemote");
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SendCommand:sendCommandToPlayer", "", v14, 2u);
  }

  v7 = [v3 sendError];
  if (!v7)
  {
    v8 = [v3 resultStatuses];
    v9 = [v8 count];

    if (v9)
    {
      v7 = 0;
    }

    else
    {
      v7 = 5;
    }
  }

  v10 = *(a1 + 32);
  v11 = [v3 error];
  v12 = [v3 resultStatuses];
  v13 = [v12 firstObject];
  (*(v10 + 16))(v10, v7, v11, v13);
}

+ (void)sendCommand:(unsigned int)a3 options:(id)a4 toPlayerPath:(id)a5 completion:(id)a6
{
  v8 = *&a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [v12 objectForKeyedSubscript:@"MPCPlayerCommandRequestMediaRemoteOptionPlaybackIntent"];
  v14 = v13;
  if (v13)
  {
    [a1 _sendCommand:v8 playbackIntent:v13 options:v12 toPlayerPath:v11 completion:v10];
  }

  else
  {
    [a1 _sendCommand:v8 options:v12 appOptions:v8 == 132 toPlayerPath:v11 completion:v10];
  }
}

+ (id)controllerForPlayerPath:(id)a3
{
  v3 = a3;
  if (controllerForPlayerPath__onceToken != -1)
  {
    dispatch_once(&controllerForPlayerPath__onceToken, &__block_literal_global_44);
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__26312;
  v15 = __Block_byref_object_dispose__26313;
  v16 = 0;
  v4 = controllerForPlayerPath____playerPathControllersQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__MPCMediaRemoteController_controllerForPlayerPath___block_invoke_47;
  v8[3] = &unk_1E82394D8;
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  dispatch_sync(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __52__MPCMediaRemoteController_controllerForPlayerPath___block_invoke_47(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [controllerForPlayerPath____playerPathControllers objectForKeyedSubscript:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (!v5 || [v5 isInvalid])
  {
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "MediaRemote");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v32 = v7;
      _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEBUG, "MRC: Resolving player path %@", buf, 0xCu);
    }

    [*(*(*(a1 + 40) + 8) + 40) disconnect];
    v8 = [MPCFuture alloc];
    v9 = [(MPCFuture *)v8 initWithQueue:controllerForPlayerPath____playerPathControllersFutureQueue];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    [*(*(*(a1 + 40) + 8) + 40) setDebugLabel:@"controllerForPlayerPath"];
    [controllerForPlayerPath____playerPathControllers setObject:*(*(*(a1 + 40) + 8) + 40) forKeyedSubscript:*(a1 + 32)];
    v12 = +[MPCPlayerPathCache sharedCache];
    v13 = [v12 resolvedPlayerPathForPlayerPath:*(a1 + 32)];

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __52__MPCMediaRemoteController_controllerForPlayerPath___block_invoke_53;
    v28[3] = &unk_1E82394D8;
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v29 = v14;
    v30 = v15;
    v16 = [v13 onInvalid:v28];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __52__MPCMediaRemoteController_controllerForPlayerPath___block_invoke_3;
    v24[3] = &unk_1E8237FE8;
    v25 = *(a1 + 32);
    v26 = v16;
    v27 = *(a1 + 40);
    v17 = v16;
    v18 = [v13 onSuccess:v24];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __52__MPCMediaRemoteController_controllerForPlayerPath___block_invoke_57;
    v22[3] = &unk_1E8238010;
    v21 = *(a1 + 32);
    v19 = v21;
    v23 = v21;
    v20 = [v18 onFailure:v22];
  }
}

void __52__MPCMediaRemoteController_controllerForPlayerPath___block_invoke_53(uint64_t a1)
{
  v2 = controllerForPlayerPath____playerPathControllersQueue;
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __52__MPCMediaRemoteController_controllerForPlayerPath___block_invoke_2;
  v9 = &unk_1E82394D8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v10 = v3;
  v11 = v4;
  dispatch_async(v2, &v6);
  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  v5 = [*(*(*(a1 + 40) + 8) + 40) result];
  [v5 invalidateAllTokens];
}

void __52__MPCMediaRemoteController_controllerForPlayerPath___block_invoke_3(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "MediaRemote");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[4];
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEBUG, "MRC: Resolved player path %@ (resolved = %@)", &v8, 0x16u);
  }

  [v3 mediaRemotePlayerPath];
  v6 = off_1E822D6D0;
  if ((MRNowPlayingPlayerPathIsLocal() & 1) == 0)
  {
    [v3 mediaRemotePlayerPath];
    if (!MRNowPlayingPlayerPathGetIsResolved())
    {
      v6 = off_1E822D8E0;
    }
  }

  v7 = [objc_alloc(*v6) _initWithResolvedPlayerPath:v3];
  [v7 setInvalidationToken:a1[5]];
  [*(*(a1[6] + 8) + 40) finishWithValue:v7];
}

void __52__MPCMediaRemoteController_controllerForPlayerPath___block_invoke_57(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 40) + 8) + 40) finishWithError:a2];
  v3 = controllerForPlayerPath____playerPathControllersQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__MPCMediaRemoteController_controllerForPlayerPath___block_invoke_2_58;
  v6[3] = &unk_1E82394D8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  dispatch_async(v3, v6);
}

void __52__MPCMediaRemoteController_controllerForPlayerPath___block_invoke_2_58(uint64_t a1)
{
  v2 = [controllerForPlayerPath____playerPathControllers objectForKey:*(a1 + 32)];
  if (v2 == *(*(*(a1 + 40) + 8) + 40))
  {
    v3 = v2;
    [controllerForPlayerPath____playerPathControllers removeObjectForKey:*(a1 + 32)];
    v2 = v3;
  }
}

void __52__MPCMediaRemoteController_controllerForPlayerPath___block_invoke_2(uint64_t a1)
{
  v2 = [controllerForPlayerPath____playerPathControllers objectForKeyedSubscript:*(a1 + 32)];
  if (v2 == *(*(*(a1 + 40) + 8) + 40))
  {
    v3 = v2;
    [controllerForPlayerPath____playerPathControllers removeObjectForKey:*(a1 + 32)];
    v2 = v3;
  }
}

uint64_t __52__MPCMediaRemoteController_controllerForPlayerPath___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = controllerForPlayerPath____playerPathControllers;
  controllerForPlayerPath____playerPathControllers = v0;

  v2 = dispatch_queue_create("com.apple.MPCMediaRemoteController.playerPathControllersQueue/access", 0);
  v3 = controllerForPlayerPath____playerPathControllersQueue;
  controllerForPlayerPath____playerPathControllersQueue = v2;

  v4 = dispatch_queue_create("com.apple.MPCMediaRemoteController.playerPathControllersQueue/callout", 0);
  v5 = controllerForPlayerPath____playerPathControllersFutureQueue;
  controllerForPlayerPath____playerPathControllersFutureQueue = v4;

  return MEMORY[0x1EEE66BB8](v4, v5);
}

+ (OS_dispatch_queue)mediaRemoteReplyQueue
{
  if (mediaRemoteReplyQueue_onceToken != -1)
  {
    dispatch_once(&mediaRemoteReplyQueue_onceToken, &__block_literal_global_26551);
  }

  v3 = mediaRemoteReplyQueue___mediaRemoteReplyQueue;

  return v3;
}

void __49__MPCMediaRemoteController_mediaRemoteReplyQueue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("com.apple.MediaPlaybackCore/MediaRemoteReplyQueue", v0);
  v2 = mediaRemoteReplyQueue___mediaRemoteReplyQueue;
  mediaRemoteReplyQueue___mediaRemoteReplyQueue = v1;
}

@end