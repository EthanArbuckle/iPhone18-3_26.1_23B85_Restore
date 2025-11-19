@interface MRPlaybackQueueSubscriptionController
- (BOOL)hasRequest:(id)a3;
- (MRPlaybackQueueSubscriptionController)initWithCoder:(id)a3;
- (MRPlaybackQueueSubscriptionController)initWithPlayerPath:(id)a3;
- (id)contentItemIdentifierForOffset:(int64_t)a3;
- (id)filteredContentItemsBySubscriptionsForContentItems:(id)a3;
- (id)offsetForIdentifier:(id)a3;
- (id)requestForSubscribedContentItemIdentifier:(id)a3;
- (void)_removeRequestID:(uint64_t)a1;
- (void)addRequest:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateFilteredContentItemsBySubscriptionsForContentItems:(id)a3 block:(id)a4;
- (void)invalidate;
- (void)removeRequest:(id)a3;
- (void)restoreStateFromController:(id)a3;
- (void)subscribeToPlaybackQueue:(id)a3 forRequest:(id)a4;
@end

@implementation MRPlaybackQueueSubscriptionController

- (MRPlaybackQueueSubscriptionController)initWithPlayerPath:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = MRPlaybackQueueSubscriptionController;
  v6 = [(MRPlaybackQueueSubscriptionController *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playerPath, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_USER_INTERACTIVE, 0);
    v10 = dispatch_queue_create("com.apple.MediaRemote.MRPlaybackQueueClient/serialQueue", v9);
    queue = v7->_queue;
    v7->_queue = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    requestFilters = v7->_requestFilters;
    v7->_requestFilters = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    requests = v7->_requests;
    v7->_requests = v14;

    v16 = objc_alloc_init(MEMORY[0x1E69B1450]);
    offsets = v7->_offsets;
    v7->_offsets = v16;
  }

  return v7;
}

- (MRPlaybackQueueSubscriptionController)initWithCoder:(id)a3
{
  v27[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"playerPath"];
  if (v5)
  {
    v6 = [(MRPlaybackQueueSubscriptionController *)self initWithPlayerPath:v5];
    if (v6)
    {
      v7 = MEMORY[0x1E695DFD8];
      v27[0] = objc_opt_class();
      v27[1] = objc_opt_class();
      v27[2] = objc_opt_class();
      v27[3] = objc_opt_class();
      v27[4] = objc_opt_class();
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:5];
      v9 = [v7 setWithArray:v8];
      v10 = [v4 decodeObjectOfClasses:v9 forKey:@"requestFilters"];
      requestFilters = v6->_requestFilters;
      v6->_requestFilters = v10;

      v12 = MEMORY[0x1E695DFD8];
      v26[0] = objc_opt_class();
      v26[1] = objc_opt_class();
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
      v14 = [v12 setWithArray:v13];
      v15 = [v4 decodeObjectOfClasses:v14 forKey:@"requests"];
      requests = v6->_requests;
      v6->_requests = v15;

      v17 = MEMORY[0x1E695DFD8];
      v25[0] = objc_opt_class();
      v25[1] = objc_opt_class();
      v25[2] = objc_opt_class();
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
      v19 = [v17 setWithArray:v18];
      v20 = [v4 decodeObjectOfClasses:v19 forKey:@"offsets"];
      offsets = v6->_offsets;
      v6->_offsets = v20;
    }

    self = v6;
    v22 = self;
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__MRPlaybackQueueSubscriptionController_encodeWithCoder___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

uint64_t __57__MRPlaybackQueueSubscriptionController_encodeWithCoder___block_invoke(uint64_t a1)
{
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 40) forKey:@"playerPath"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 8) forKey:@"requestFilters"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 16) forKey:@"requests"];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 24);

  return [v2 encodeObject:v3 forKey:@"offsets"];
}

- (void)restoreStateFromController:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(MRPlaybackQueueSubscriptionController *)v5 restoreStateFromController:a2, self];
  }

  v6 = [v5 playerPath];
  v7 = [(MRPlaybackQueueSubscriptionController *)self playerPath];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    [(MRPlaybackQueueSubscriptionController *)v5 restoreStateFromController:a2];
  }

  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__MRPlaybackQueueSubscriptionController_restoreStateFromController___block_invoke;
  v11[3] = &unk_1E769A4A0;
  v11[4] = self;
  v12 = v5;
  v10 = v5;
  dispatch_sync(queue, v11);
}

void __68__MRPlaybackQueueSubscriptionController_restoreStateFromController___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 8), *(*(a1 + 40) + 8));
  objc_storeStrong((*(a1 + 32) + 16), *(*(a1 + 40) + 16));
  v2 = *(*(a1 + 40) + 24);
  v3 = (*(a1 + 32) + 24);

  objc_storeStrong(v3, v2);
}

- (void)addRequest:(id)a3
{
  v4 = [a3 requestIdentifier];
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__MRPlaybackQueueSubscriptionController_addRequest___block_invoke;
    v7[3] = &unk_1E769A4A0;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(queue, v7);
  }
}

void __52__MRPlaybackQueueSubscriptionController_addRequest___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
  objc_initWeak(&location, *(a1 + 32));
  v2 = dispatch_time(0, 420000000000);
  v3 = dispatch_get_global_queue(-2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MRPlaybackQueueSubscriptionController_addRequest___block_invoke_2;
  block[3] = &unk_1E769B150;
  objc_copyWeak(&v6, &location);
  v5 = *(a1 + 40);
  dispatch_after(v2, v3, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __52__MRPlaybackQueueSubscriptionController_addRequest___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(MRPlaybackQueueSubscriptionController *)WeakRetained _removeRequestID:?];
}

- (void)_removeRequestID:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__MRPlaybackQueueSubscriptionController__removeRequestID___block_invoke;
    v6[3] = &unk_1E769A4A0;
    v6[4] = a1;
    v7 = v3;
    dispatch_sync(v5, v6);
  }
}

- (BOOL)hasRequest:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MRPlaybackQueueSubscriptionController_hasRequest___block_invoke;
  block[3] = &unk_1E769BBB8;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

uint64_t __52__MRPlaybackQueueSubscriptionController_hasRequest___block_invoke(void *a1)
{
  result = [*(a1[4] + 16) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)removeRequest:(id)a3
{
  v4 = [a3 requestIdentifier];
  [(MRPlaybackQueueSubscriptionController *)self _removeRequestID:v4];
}

- (id)contentItemIdentifierForOffset:(int64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__38;
  v11 = __Block_byref_object_dispose__38;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__MRPlaybackQueueSubscriptionController_contentItemIdentifierForOffset___block_invoke;
  block[3] = &unk_1E769EE88;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __72__MRPlaybackQueueSubscriptionController_contentItemIdentifierForOffset___block_invoke(void *a1)
{
  v2 = *(a1[4] + 24);
  v6 = [MEMORY[0x1E696AD98] numberWithLong:a1[6]];
  v3 = [v2 objectForKey:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)offsetForIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__38;
  v16 = __Block_byref_object_dispose__38;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MRPlaybackQueueSubscriptionController_offsetForIdentifier___block_invoke;
  block[3] = &unk_1E769BBB8;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __61__MRPlaybackQueueSubscriptionController_offsetForIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) keyForObject:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __74__MRPlaybackQueueSubscriptionController_augmentCommandOptions_forCommand___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 48) setObject:v2 forKeyedSubscript:@"kMRMediaRemoteOptionContentItemID"];
  }

  else
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 56);
      v7 = 138412802;
      v8 = @"kMRMediaRemoteOptionPlaybackQueueOffset";
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRPlaybackQueueClient] No ContentItem in playback queue with provided '%@':%@ for command <%@>", &v7, 0x20u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __74__MRPlaybackQueueSubscriptionController_augmentCommandOptions_forCommand___block_invoke_35(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 24) keyForObject:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 48) setObject:v2 forKeyedSubscript:@"kMRMediaRemoteOptionPlaybackQueueOffset"];
  }

  else
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 56);
      v7 = 138412802;
      v8 = @"kMRMediaRemoteOptionContentItemID";
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRPlaybackQueueClient] No ContentItem in playback queue with provided '%@':%@ for command <%@>", &v7, 0x20u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __74__MRPlaybackQueueSubscriptionController_augmentCommandOptions_forCommand___block_invoke_36(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  v3 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(*(a1 + 40), "longValue") - 1}];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    [*(a1 + 48) setObject:v4 forKeyedSubscript:@"kMRMediaRemoteOptionInsertAfterContentItemID"];
  }

  else
  {
    v5 = _MRLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 56);
      v9 = 138412802;
      v10 = @"kMRMediaRemoteOptionPlaybackQueueDestinationOffset";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRPlaybackQueueClient] No ContentItem in playback queue with provided '%@':%@ for command <%@>", &v9, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __74__MRPlaybackQueueSubscriptionController_augmentCommandOptions_forCommand___block_invoke_37(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 24) keyForObject:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(v2, "longValue") + 1}];
    [*(a1 + 48) setObject:v4 forKeyedSubscript:@"kMRMediaRemoteOptionPlaybackQueueDestinationOffset"];
  }

  else
  {
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 56);
      v8 = 138412802;
      v9 = @"kMRMediaRemoteOptionInsertAfterContentItemID";
      v10 = 2112;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[MRPlaybackQueueClient] No ContentItem in playback queue with provided '%@':%@ for command <%@>", &v8, 0x20u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)subscribeToPlaybackQueue:(id)a3 forRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__MRPlaybackQueueSubscriptionController_subscribeToPlaybackQueue_forRequest___block_invoke;
    block[3] = &unk_1E769BA00;
    v11 = v7;
    v12 = self;
    v13 = v6;
    dispatch_sync(queue, block);
  }
}

void __77__MRPlaybackQueueSubscriptionController_subscribeToPlaybackQueue_forRequest___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) requestIdentifier];

  if (v2)
  {
    v3 = *(*(a1 + 40) + 16);
    v4 = [*(a1 + 32) requestIdentifier];
    [v3 addObject:v4];
  }

  if ([*(a1 + 48) hasLocation])
  {
    [*(a1 + 48) range];
    v6 = v5;
    v7 = [*(a1 + 32) range];
    if (v7 < v7 + v6)
    {
      v8 = v7;
      do
      {
        v9 = *(*(a1 + 40) + 24);
        v10 = [MEMORY[0x1E696AD98] numberWithLong:v8];
        [v9 removeObjectForKey:v10];

        ++v8;
        --v6;
      }

      while (v6);
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = *(*(a1 + 40) + 8);
  v12 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
LABEL_9:
    v15 = 0;
    while (1)
    {
      if (*v33 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v32 + 1) + 8 * v15);
      v17 = [v16 first];
      v18 = [v17 exactMatch:*(a1 + 32)];

      if (v18)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v13)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }
    }

    v19 = v16;

    if (v19)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_15:
  }

  v20 = objc_alloc(MEMORY[0x1E69B13F8]);
  LODWORD(v21) = 1008981770;
  v22 = [v20 initWithCapacity:500 falsePositiveTolerance:v21];
  v19 = [objc_alloc(MEMORY[0x1E69B1470]) initWithFirst:*(a1 + 32) second:v22];
  [*(*(a1 + 40) + 8) addObject:v19];

LABEL_18:
  v23 = [*(a1 + 48) contentItems];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __77__MRPlaybackQueueSubscriptionController_subscribeToPlaybackQueue_forRequest___block_invoke_2;
  v28[3] = &unk_1E76A30E0;
  v24 = *(a1 + 48);
  v25 = *(a1 + 40);
  v29 = v24;
  v30 = v25;
  v31 = v19;
  v26 = v19;
  [v23 enumerateObjectsUsingBlock:v28];

  v27 = *MEMORY[0x1E69E9840];
}

void __77__MRPlaybackQueueSubscriptionController_subscribeToPlaybackQueue_forRequest___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = [a2 identifier];
  if ([*(a1 + 32) hasLocation])
  {
    v5 = [*(a1 + 32) range];
    v6 = *(*(a1 + 40) + 24);
    v7 = [MEMORY[0x1E696AD98] numberWithLong:v5 + a3];
    [v6 setObject:v9 forKey:v7];
  }

  v8 = [*(a1 + 48) second];
  [v8 addObject:v9];
}

- (id)requestForSubscribedContentItemIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__38;
  v16 = __Block_byref_object_dispose__38;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__MRPlaybackQueueSubscriptionController_requestForSubscribedContentItemIdentifier___block_invoke;
  block[3] = &unk_1E769D1B8;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __83__MRPlaybackQueueSubscriptionController_requestForSubscribedContentItemIdentifier___block_invoke(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1[4] + 8);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [v7 second];
        v9 = [v8 containsObject:a1[5]];

        if (v9)
        {
          v10 = [v7 first];
          v11 = *(*(a1[6] + 8) + 40);
          if (v11)
          {
            [v11 mergeFrom:v10];
          }

          else
          {
            v12 = [v10 copy];
            v13 = *(a1[6] + 8);
            v14 = *(v13 + 40);
            *(v13 + 40) = v12;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)enumerateFilteredContentItemsBySubscriptionsForContentItems:(id)a3 block:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 identifier];
        v15 = [(MRPlaybackQueueSubscriptionController *)self requestForSubscribedContentItemIdentifier:v14];

        if (v15)
        {
          v16 = MRContentItemCreateFromRequest(v13, v15);
          if (v16)
          {
            v18 = 0;
            v7[2](v7, v16, v15, &v18);
            if (v18)
            {

              goto LABEL_14;
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v17 = *MEMORY[0x1E69E9840];
}

- (id)filteredContentItemsBySubscriptionsForContentItems:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __92__MRPlaybackQueueSubscriptionController_filteredContentItemsBySubscriptionsForContentItems___block_invoke;
  v10[3] = &unk_1E76A3108;
  v11 = v6;
  v7 = v6;
  [(MRPlaybackQueueSubscriptionController *)self enumerateFilteredContentItemsBySubscriptionsForContentItems:v5 block:v10];

  v8 = [v7 copy];

  return v8;
}

void __92__MRPlaybackQueueSubscriptionController_filteredContentItemsBySubscriptionsForContentItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!MRContentItemIsEmpty(v3))
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MRPlaybackQueueSubscriptionController_invalidate__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)restoreStateFromController:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:a3 file:@"MRPlaybackQueueClient.m" lineNumber:106 description:{@"Unexpected class attempting to restore controller: %@", objc_opt_class()}];
}

- (void)restoreStateFromController:(uint64_t)a3 .cold.2(void *a1, void *a2, uint64_t a3)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = [a1 playerPath];
  v7 = [a2 playerPath];
  [v8 handleFailureInMethod:a3 object:a2 file:@"MRPlaybackQueueClient.m" lineNumber:107 description:{@"Attempting to restore state for unrelated player path: %@ vs %@", v6, v7}];
}

@end