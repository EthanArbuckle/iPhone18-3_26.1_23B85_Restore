@interface _CDInteractionCache
- (BOOL)containsUniqueCacheCandidate:(id)candidate;
- (NSArray)interactions;
- (_CDInteractionCache)initWithInteractionStore:(id)store size:(unint64_t)size queryPredicate:(id)predicate filterBlock:(id)block;
- (id)_init;
- (id)initForTestingWithSize:(unint64_t)size;
- (id)mostRecentInteractionForCandidateIdentifier:(id)identifier;
- (id)mostRecentInteractionForCandidateIdentifier:(id)identifier direction:(int64_t)direction;
- (id)mostRecentInteractionForCandidateIdentifier:(id)identifier direction:(int64_t)direction mechanism:(int64_t)mechanism;
- (id)uniqueConversationCandidates;
- (void)_cacheInteractions:(id)interactions;
- (void)_countConversationIDsForInteraction:(id)interaction deleted:(BOOL)deleted;
- (void)_deleteInteractions:(id)interactions;
- (void)_forceRefetch;
- (void)_handleInteractionRemoval:(id)removal;
- (void)_invalidate;
- (void)_rebuildMostRecentInteractions;
- (void)_refetch;
- (void)_updateMostRecentInteractionsWithInteraction:(id)interaction deleted:(BOOL)deleted;
- (void)debounceRefetch;
- (void)interactionsDeleted:(id)deleted;
- (void)interactionsRecorded:(id)recorded;
@end

@implementation _CDInteractionCache

- (_CDInteractionCache)initWithInteractionStore:(id)store size:(unint64_t)size queryPredicate:(id)predicate filterBlock:(id)block
{
  storeCopy = store;
  predicateCopy = predicate;
  blockCopy = block;
  _init = [(_CDInteractionCache *)self _init];
  v15 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 8, store);
    v15[9] = size;
    v15[4] = vcvtas_u32_f32(size * 0.65);
    objc_storeStrong(v15 + 10, predicate);
    v16 = MEMORY[0x193B00C50](blockCopy);
    v17 = v15[11];
    v15[11] = v16;

    *(v15 + 56) = 1;
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("com.apple.coreduetd.cdinteractioncache.queue", v18);
    v20 = v15[1];
    v15[1] = v19;

    v21 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, v15[1]);
    v22 = v15[2];
    v15[2] = v21;

    objc_initWeak(&location, v15);
    dispatch_source_set_timer(v15[2], 0, 0xFFFFFFFFFFFFFFFFLL, 0);
    v23 = v15[2];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __80___CDInteractionCache_initWithInteractionStore_size_queryPredicate_filterBlock___block_invoke;
    v30 = &unk_1E7367220;
    objc_copyWeak(&v31, &location);
    dispatch_source_set_event_handler(v23, &v27);
    dispatch_activate(v15[2]);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v15 selector:sel_interactionsRecorded_ name:@"_CDInteractionStoreRecordedInteractionsNotification" object:0];
    [defaultCenter addObserver:v15 selector:sel_interactionsDeleted_ name:@"_CDInteractionStoreDeletedInteractionsNotification" object:0];
    [defaultCenter2 addObserver:v15 selector:sel_debounceRefetch name:@"_CDInteractionStoreDeleteAllInteractionsNotification" object:0];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v15;
}

- (id)initForTestingWithSize:(unint64_t)size
{
  _init = [(_CDInteractionCache *)self _init];
  v5 = _init;
  if (_init)
  {
    _init[9] = size;
    _init[4] = 0;
    v6 = objc_opt_new();
    v7 = v5[3];
    v5[3] = v6;

    *(v5 + 56) = 0;
  }

  return v5;
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = _CDInteractionCache;
  v2 = [(_CDInteractionCache *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mostRecentInteractionsByTaxonomyAndIdentifier = v2->_mostRecentInteractionsByTaxonomyAndIdentifier;
    v2->_mostRecentInteractionsByTaxonomyAndIdentifier = v3;

    v5 = objc_opt_new();
    conversationCandidates = v2->_conversationCandidates;
    v2->_conversationCandidates = v5;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)uniqueConversationCandidates
{
  os_unfair_lock_lock(&self->_lock);
  [(_CDInteractionCache *)self _refetch];
  v3 = [(NSCountedSet *)self->_conversationCandidates copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)containsUniqueCacheCandidate:(id)candidate
{
  candidateCopy = candidate;
  os_unfair_lock_lock(&self->_lock);
  [(_CDInteractionCache *)self _refetch];
  v5 = [(NSCountedSet *)self->_conversationCandidates containsObject:candidateCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)debounceRefetch
{
  os_unfair_lock_lock(&self->_lock);
  [(_CDInteractionCache *)self _invalidate];
  dispatch_suspend(self->_timer);
  v3 = dispatch_time(0, 2000000000);
  dispatch_source_set_timer(self->_timer, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(self->_timer);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_invalidate
{
  self->_needsRefetch = 1;
  mutableInteractions = self->_mutableInteractions;
  self->_mutableInteractions = 0;

  [(NSMutableDictionary *)self->_mostRecentInteractionsByTaxonomyAndIdentifier removeAllObjects];
  conversationCandidates = self->_conversationCandidates;

  [(NSCountedSet *)conversationCandidates removeAllObjects];
}

- (void)_refetch
{
  v33 = *MEMORY[0x1E69E9840];
  if (self->_needsRefetch)
  {
    self->_needsRefetch = 0;
    v3 = _os_activity_create(&dword_191750000, "CoreDuet: CDInteractionCache refetch", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    os_activity_scope_leave(&state);

    [(NSCountedSet *)self->_conversationCandidates removeAllObjects];
    [(NSMutableDictionary *)self->_mostRecentInteractionsByTaxonomyAndIdentifier removeAllObjects];
    v4 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(state.opaque[0]) = 0;
      _os_log_impl(&dword_191750000, v4, OS_LOG_TYPE_DEFAULT, "CDInteractionCache: Refetching interactions", &state, 2u);
    }

    v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    if (_refetch__pasOnceToken6 != -1)
    {
      [_CDInteractionCache _refetch];
    }

    v6 = _refetch__pasExprOnceResult;
    state.opaque[0] = 0;
    state.opaque[1] = &state;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy_;
    v28 = __Block_byref_object_dispose_;
    v29 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31___CDInteractionCache__refetch__block_invoke_92;
    block[3] = &unk_1E7367248;
    p_state = &state;
    block[4] = self;
    v7 = v5;
    v23 = v7;
    dispatch_sync(v6, block);
    v8 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(state.opaque[1] + 40) count];
      *buf = 134217984;
      v32 = v9;
      _os_log_impl(&dword_191750000, v8, OS_LOG_TYPE_DEFAULT, "Re-fetched interaction cache with %tu interactions", buf, 0xCu);
    }

    v10 = [*(state.opaque[1] + 40) mutableCopy];
    mutableInteractions = self->_mutableInteractions;
    self->_mutableInteractions = v10;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = *(state.opaque[1] + 40);
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v30 count:16];
    if (v13)
    {
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          [(_CDInteractionCache *)self _countConversationIDsForInteraction:v16 deleted:0, v18];
          [(_CDInteractionCache *)self _updateMostRecentInteractionsWithInteraction:v16 deleted:0];
        }

        v13 = [v12 countByEnumeratingWithState:&v18 objects:v30 count:16];
      }

      while (v13);
    }

    _Block_object_dispose(&state, 8);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_forceRefetch
{
  [(_CDInteractionCache *)self _invalidate];

  [(_CDInteractionCache *)self _refetch];
}

- (void)_countConversationIDsForInteraction:(id)interaction deleted:(BOOL)deleted
{
  interactionCopy = interaction;
  domainIdentifier = [interactionCopy domainIdentifier];
  derivedIntentIdentifier = [interactionCopy derivedIntentIdentifier];
  targetBundleId = [interactionCopy targetBundleId];
  v10 = targetBundleId;
  if (targetBundleId)
  {
    bundleId = targetBundleId;
  }

  else
  {
    bundleId = [interactionCopy bundleId];
  }

  v12 = bundleId;

  recipients = [interactionCopy recipients];
  v14 = [_CDInteraction generateConversationIdFromInteractionRecipients:recipients];

  if (v12)
  {
    v15 = [[_CDCacheCandidate alloc] initWithDomainId:domainIdentifier derivedIntentId:derivedIntentIdentifier bundleId:v12 recipientsId:v14];
    conversationCandidates = self->_conversationCandidates;
    if (deleted)
    {
      [(NSCountedSet *)conversationCandidates removeObject:v15];
    }

    else
    {
      [(NSCountedSet *)conversationCandidates addObject:v15];
    }
  }

  else
  {
    v17 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [_CDInteractionCache _countConversationIDsForInteraction:v17 deleted:?];
    }
  }
}

- (void)_updateMostRecentInteractionsWithInteraction:(id)interaction deleted:(BOOL)deleted
{
  interactionCopy = interaction;
  v7 = [_CDCandidateInteractionTaxonomy taxonomyOfInteraction:interactionCopy];
  v8 = [(NSMutableDictionary *)self->_mostRecentInteractionsByTaxonomyAndIdentifier objectForKeyedSubscript:v7];
  if (v8)
  {
    goto LABEL_4;
  }

  if (!deleted)
  {
    v8 = objc_opt_new();
    [(NSMutableDictionary *)self->_mostRecentInteractionsByTaxonomyAndIdentifier setObject:v8 forKeyedSubscript:v7];
LABEL_4:
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __76___CDInteractionCache__updateMostRecentInteractionsWithInteraction_deleted___block_invoke;
    v14[3] = &unk_1E7367270;
    v15 = v8;
    deletedCopy = deleted;
    v9 = interactionCopy;
    v16 = v9;
    v10 = v8;
    v11 = MEMORY[0x193B00C50](v14);
    domainIdentifier = [v9 domainIdentifier];
    (v11)[2](v11, domainIdentifier);

    derivedIntentIdentifier = [v9 derivedIntentIdentifier];
    (v11)[2](v11, derivedIntentIdentifier);
  }
}

- (id)mostRecentInteractionForCandidateIdentifier:(id)identifier direction:(int64_t)direction mechanism:(int64_t)mechanism
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  [(_CDInteractionCache *)self _refetch];
  v9 = [_CDCandidateInteractionTaxonomy taxonomyWithDirection:direction mechanism:mechanism];
  v10 = [(NSMutableDictionary *)self->_mostRecentInteractionsByTaxonomyAndIdentifier objectForKeyedSubscript:v9];
  v11 = [v10 objectForKeyedSubscript:identifierCopy];
  isUncachedSentinel = [v11 isUncachedSentinel];

  if (isUncachedSentinel)
  {
    [(_CDInteractionCache *)self _rebuildMostRecentInteractions];
  }

  v13 = [(NSMutableDictionary *)self->_mostRecentInteractionsByTaxonomyAndIdentifier objectForKeyedSubscript:v9];
  v14 = [v13 objectForKeyedSubscript:identifierCopy];
  interactionIfCached = [v14 interactionIfCached];

  os_unfair_lock_unlock(&self->_lock);

  return interactionIfCached;
}

- (id)mostRecentInteractionForCandidateIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = 0;
  for (i = 0; i != 4; ++i)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [(_CDInteractionCache *)self mostRecentInteractionForCandidateIdentifier:identifierCopy direction:i];
    v9 = v8;
    if (v5)
    {
      if (_CDStartDateCompare(v5, v8) == -1)
      {
        v10 = v9;

        v5 = v10;
      }
    }

    else
    {
      v5 = v8;
    }

    objc_autoreleasePoolPop(v7);
  }

  return v5;
}

- (id)mostRecentInteractionForCandidateIdentifier:(id)identifier direction:(int64_t)direction
{
  identifierCopy = identifier;
  v7 = 0;
  for (i = 0; i != 21; ++i)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [(_CDInteractionCache *)self mostRecentInteractionForCandidateIdentifier:identifierCopy direction:direction mechanism:i];
    v11 = v10;
    if (v7)
    {
      if (_CDStartDateCompare(v7, v10) == -1)
      {
        v12 = v11;

        v7 = v12;
      }
    }

    else
    {
      v7 = v10;
    }

    objc_autoreleasePoolPop(v9);
  }

  return v7;
}

- (void)_rebuildMostRecentInteractions
{
  v16 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self->_mostRecentInteractionsByTaxonomyAndIdentifier removeAllObjects];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_mutableInteractions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        [(_CDInteractionCache *)self _updateMostRecentInteractionsWithInteraction:v8 deleted:0, v11];
        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)interactionsRecorded:(id)recorded
{
  recordedCopy = recorded;
  v5 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "CDInteractionCache: New recorded interactions", v8, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  if (!self->_needsRefetch)
  {
    userInfo = [recordedCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"_CDInteractionsKey"];

    if ([v7 count])
    {
      [(_CDInteractionCache *)self _cacheInteractions:v7];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)interactionsDeleted:(id)deleted
{
  deletedCopy = deleted;
  v5 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "CDInteractionCache: New deleted interactions", v8, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  if (!self->_needsRefetch)
  {
    userInfo = [deletedCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"_CDInteractionsKey"];

    if ([v7 count])
    {
      [(_CDInteractionCache *)self _deleteInteractions:v7];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_cacheInteractions:(id)interactions
{
  v41 = *MEMORY[0x1E69E9840];
  interactionsCopy = interactions;
  oslog = +[_CDLogging interactionChannel];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = interactionsCopy;
  v5 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v33;
    *&v6 = 138740227;
    v29 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        filterBlock = [(_CDInteractionCache *)self filterBlock];
        if (!filterBlock || (v13 = filterBlock, [(_CDInteractionCache *)self filterBlock], v14 = objc_claimAutoreleasedReturnValue(), v15 = (v14)[2](v14, v10), v14, v13, v15))
        {
          v16 = [(NSMutableArray *)self->_mutableInteractions indexOfObject:v10 inSortedRange:0 options:[(NSMutableArray *)self->_mutableInteractions count] usingComparator:1024, &__block_literal_global];
          if (v16 == -[NSMutableArray count](self->_mutableInteractions, "count") || (-[NSMutableArray objectAtIndexedSubscript:](self->_mutableInteractions, "objectAtIndexedSubscript:", v16), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 isEqual:v10], v17, (v18 & 1) == 0))
          {
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
            {
              *buf = v29;
              v37 = v10;
              v38 = 2048;
              v39 = v16;
              _os_log_debug_impl(&dword_191750000, oslog, OS_LOG_TYPE_DEBUG, "Caching interaction %{sensitive}@ to index %tu", buf, 0x16u);
            }

            [(NSMutableArray *)self->_mutableInteractions insertObject:v10 atIndex:v16];
            [(_CDInteractionCache *)self _countConversationIDsForInteraction:v10 deleted:0];
            [(_CDInteractionCache *)self _updateMostRecentInteractionsWithInteraction:v10 deleted:0];
          }
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v7);
  }

  v19 = [(NSMutableArray *)self->_mutableInteractions count];
  if (v19 > [(_CDInteractionCache *)self size])
  {
    v20 = [(_CDInteractionCache *)self size];
    v21 = [(NSMutableArray *)self->_mutableInteractions count];
    v22 = v21 - [(_CDInteractionCache *)self size];
    if (v22)
    {
      v25 = 1;
      *&v23 = 138740227;
      v29 = v23;
      v26 = v20;
      do
      {
        v27 = [(NSMutableArray *)self->_mutableInteractions objectAtIndexedSubscript:v26, v29];
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          *buf = v29;
          v37 = v27;
          v38 = 2048;
          v39 = v26;
          _os_log_debug_impl(&dword_191750000, oslog, OS_LOG_TYPE_DEBUG, "Will truncate interaction %{sensitive}@ at index %tu", buf, 0x16u);
        }

        [(_CDInteractionCache *)self _handleInteractionRemoval:v27];

        if (v20 > ++v26)
        {
          break;
        }
      }

      while (v25++ < v22);
    }

    [(NSMutableArray *)self->_mutableInteractions removeObjectsInRange:v20, v22, v29];
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_deleteInteractions:(id)interactions
{
  v32 = *MEMORY[0x1E69E9840];
  interactionsCopy = interactions;
  oslog = +[_CDLogging interactionChannel];
  v21 = [(NSMutableArray *)self->_mutableInteractions count];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = interactionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v24;
    *&v7 = 138740227;
    v20 = v7;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        filterBlock = [(_CDInteractionCache *)self filterBlock];
        if (!filterBlock || (v14 = filterBlock, [(_CDInteractionCache *)self filterBlock], v15 = objc_claimAutoreleasedReturnValue(), v16 = v15[2](v15, v11), v15, v14, v16))
        {
          v17 = [(NSMutableArray *)self->_mutableInteractions indexOfObject:v11 inSortedRange:0 options:[(NSMutableArray *)self->_mutableInteractions count] usingComparator:256, &__block_literal_global];
          if (v17 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v18 = v17;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
            {
              *buf = v20;
              v28 = v11;
              v29 = 2048;
              v30 = v18;
              _os_log_debug_impl(&dword_191750000, oslog, OS_LOG_TYPE_DEBUG, "Deleting interaction %{sensitive}@ at index %tu", buf, 0x16u);
            }

            [(NSMutableArray *)self->_mutableInteractions removeObjectAtIndex:v18];
            [(_CDInteractionCache *)self _handleInteractionRemoval:v11];
            if (v21 >= self->_minCacheSize && [(NSMutableArray *)self->_mutableInteractions count]< self->_minCacheSize)
            {
              [(_CDInteractionCache *)self _forceRefetch];
              objc_autoreleasePoolPop(v12);
              goto LABEL_17;
            }
          }
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_handleInteractionRemoval:(id)removal
{
  removalCopy = removal;
  [(_CDInteractionCache *)self _countConversationIDsForInteraction:removalCopy deleted:1];
  [(_CDInteractionCache *)self _updateMostRecentInteractionsWithInteraction:removalCopy deleted:1];
}

- (NSArray)interactions
{
  os_unfair_lock_lock(&self->_lock);
  [(_CDInteractionCache *)self _refetch];
  v3 = [(NSMutableArray *)self->_mutableInteractions copy];
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

@end