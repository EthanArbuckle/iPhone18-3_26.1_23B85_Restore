@interface EDInMemoryThreadCollection
+ (id)_comparatorForInThreadProxiesWithSortDescriptors:(id)a3;
+ (uint64_t)_comparisonForSortDescriptor:(void *)a3 value1:(void *)a4 value2:;
- (EDInMemoryThreadCollection)initWithQuery:(id)a3 mailboxTypeResolver:(id)a4 dataSource:(id)a5 delgate:(id)a6 logClient:(id)a7 limitedCache:(BOOL)a8 inMemoryThreadClass:(Class)a9;
- (EDInMemoryThreadCollectionDataSource)dataSource;
- (EDInMemoryThreadCollectionDelegate)delegate;
- (id)_cachedInMemoryThreadForConversationID:(uint64_t)a1;
- (id)_createInMemoryThreadForConversationID:(id)a1;
- (id)_createInMemoryThreadForConversationID:(void *)a3 messages:(int)a4 cacheResults:;
- (id)_inMemoryThreadsForObjectIDs:(char)a3 cacheResults:;
- (id)_messagesByConversationIDForMessages:(void *)a1;
- (id)_updateThreadProxy:(_BYTE *)a3 threadIsEmpty:(void *)a4 thread:;
- (id)inMemoryThreadForConversationID:(int64_t)a3;
- (id)itemIDs;
- (id)messageListItemForObjectID:(id)a3 error:(id *)a4;
- (id)messagesForThread:(id)a3;
- (id)sectionIdentifierForThreadObjectID:(id)a3;
- (id)threadsAndMessagesForObjectIDs:(id)a3;
- (os_unfair_lock_s)_removeThreadProxies:(char)a3 forMove:;
- (uint64_t)_didMergeInThreads:(uint64_t)a1;
- (uint64_t)_hasLoaded;
- (uint64_t)_mergeInThreads:(void *)a3 searchInfo:(unsigned int)a4 forMove:;
- (uint64_t)_messageListItemChangeAffectsSorting:(void *)a1;
- (uint64_t)_updateCurrentOldestThreadWithThreadIfApplicable:(void *)a3 forMailbox:;
- (uint64_t)_updateOldestThreadsForMailboxes:(void *)a1;
- (void)_notifyObserverOfOldestThreadsByMailboxObjectIDs;
- (void)_threadsWereDeleted;
- (void)clearInMemoryThreadCache;
- (void)conversationIDDidChangeForMessages:(id)a3 fromConversationID:(int64_t)a4;
- (void)conversationNotificationLevelDidChangeForConversation:(int64_t)a3 conversationID:(int64_t)a4;
- (void)enumerateObjectIDsInBatchesOfSize:(unint64_t)a3 block:(id)a4;
- (void)initializeOldestThreadsByMailbox;
- (void)messagesWereAdded:(id)a3 searchInfo:(id)a4;
- (void)messagesWereChanged:(id)a3 forKeyPaths:(id)a4 deleted:(BOOL)a5;
- (void)notifyObserverOfOldestThreadsByMailboxObjectIDs;
- (void)objectIDDidChangeForMessage:(id)a3 oldObjectID:(id)a4 oldConversationID:(int64_t)a5;
@end

@implementation EDInMemoryThreadCollection

- (EDInMemoryThreadCollection)initWithQuery:(id)a3 mailboxTypeResolver:(id)a4 dataSource:(id)a5 delgate:(id)a6 logClient:(id)a7 limitedCache:(BOOL)a8 inMemoryThreadClass:(Class)a9
{
  v16 = a3;
  v60 = a4;
  obj = a5;
  v58 = a6;
  v57 = a7;
  if (([(objc_class *)a9 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v56 = [MEMORY[0x1E696AAA8] currentHandler];
    [v56 handleFailureInMethod:a2 object:self file:@"EDInMemoryThreadCollection.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"[inMemoryThreadClass isSubclassOfClass:EDInMemoryThread.class]"}];
  }

  v61.receiver = self;
  v61.super_class = EDInMemoryThreadCollection;
  v17 = [(EDInMemoryThreadCollection *)&v61 init];
  if (v17)
  {
    v18 = [v16 copy];
    query = v17->_query;
    v17->_query = v18;

    v20 = MEMORY[0x1E699ADA0];
    v21 = [v16 predicate];
    v22 = [v20 threadScopeForPredicate:v21 withMailboxTypeResolver:v60];
    threadScope = v17->_threadScope;
    v17->_threadScope = v22;

    objc_storeStrong(&v17->_mailboxTypeResolver, a4);
    objc_storeWeak(&v17->_dataSource, obj);
    objc_storeWeak(&v17->_delegate, v58);
    objc_storeStrong(&v17->_logClient, a7);
    v17->_threadsLock._os_unfair_lock_opaque = 0;
    v24 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    conversationIDs = v17->_conversationIDs;
    v17->_conversationIDs = v24;

    v26 = objc_alloc_init(MEMORY[0x1E699B818]);
    threadsByConversationID = v17->_threadsByConversationID;
    v17->_threadsByConversationID = v26;

    v28 = MEMORY[0x1E699ADA0];
    v29 = [(EMQuery *)v17->_query sortDescriptors];
    v17->_dateSortOrder = [v28 dateSortOrderFromSortDescriptors:v29];

    v17->_limitedCache = a8;
    v30 = objc_alloc(MEMORY[0x1E699B7F0]);
    v31 = objc_alloc_init(_EDInMemoryThreadCollectionOldestThreadsState);
    v32 = [v30 initWithObject:v31];
    oldestThreadsByMailboxObjectIDs = v17->_oldestThreadsByMailboxObjectIDs;
    v17->_oldestThreadsByMailboxObjectIDs = v32;

    v34 = objc_alloc(MEMORY[0x1E699B7E0]);
    if (v17->_limitedCache)
    {
      v35 = 500;
    }

    else
    {
      v35 = 0;
    }

    v36 = [v34 initWithCountLimit:v35];
    inMemoryThreadCache = v17->_inMemoryThreadCache;
    v17->_inMemoryThreadCache = v36;

    objc_storeStrong(&v17->_inMemoryThreadClass, a9);
    if (!v17->_limitedCache || (-[EDInMemoryThreadCollection query](v17, "query"), v38 = objc_claimAutoreleasedReturnValue(), v39 = [v38 queryOptions], v38, (v39 & 0x20) != 0))
    {
      v40 = objc_opt_new();
      inMemoryThreadsByConversationID = v17->_inMemoryThreadsByConversationID;
      v17->_inMemoryThreadsByConversationID = v40;
    }

    v42 = [(EDInMemoryThreadCollection *)v17 query];
    v43 = [v42 queryOptions];

    if (v43)
    {
      v44 = objc_opt_new();
      mailboxesByConversationID = v17->_mailboxesByConversationID;
      v17->_mailboxesByConversationID = v44;
    }

    v46 = [EDSectionQueryItemHelper sectionQueryItemHelperWithQuery:v16];
    sectionQueryHelper = v17->_sectionQueryHelper;
    v17->_sectionQueryHelper = v46;

    v48 = objc_opt_class();
    v49 = [v16 sortDescriptors];
    v50 = [v48 _comparatorForInThreadProxiesWithSortDescriptors:v49];

    v51 = [(EDSectionQueryItemHelper *)v17->_sectionQueryHelper comparatorForItemComparator:v50];
    v52 = v51;
    if (!v51)
    {
      v51 = v50;
    }

    v53 = _Block_copy(v51);
    comparator = v17->_comparator;
    v17->_comparator = v53;
  }

  return v17;
}

+ (id)_comparatorForInThreadProxiesWithSortDescriptors:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__EDInMemoryThreadCollection__comparatorForInThreadProxiesWithSortDescriptors___block_invoke;
  aBlock[3] = &unk_1E8252710;
  v10 = v5;
  v11 = a1;
  v12 = a2;
  v6 = v5;
  v7 = _Block_copy(aBlock);

  return v7;
}

uint64_t __79__EDInMemoryThreadCollection__comparatorForInThreadProxiesWithSortDescriptors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (![*(a1 + 32) count])
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) firstObject];
  v9 = [v5 primarySortValue];
  v10 = [v6 primarySortValue];
  v11 = [(EDInMemoryThreadCollection *)v7 _comparisonForSortDescriptor:v8 value1:v9 value2:v10];

  if (!v11)
  {
LABEL_3:
    if ([*(a1 + 32) count] >= 2)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"EDInMemoryThreadCollection.m" lineNumber:113 description:@"Multiple sort descriptors is unexpected"];
    }

    v13 = [v5 objectID];
    v14 = [v13 conversationID];
    v15 = [v6 objectID];
    if (v14 < [v15 conversationID])
    {
      v11 = 1;
    }

    else
    {
      v11 = -1;
    }
  }

  return v11;
}

+ (uint64_t)_comparisonForSortDescriptor:(void *)a3 value1:(void *)a4 value2:
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v9 = [v6 key];
  if ([v9 isEqualToString:*MEMORY[0x1E699A9A0]])
  {
    v10 = [v7 compare:v8 options:65];
LABEL_5:
    v25[3] = v10;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v7 localizedCaseInsensitiveCompare:v8];
    goto LABEL_5;
  }

  if (([v9 isEqualToString:*MEMORY[0x1E699A9C0]] & 1) == 0 && !objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E699A988]))
  {
    v10 = [v7 compare:v8];
    goto LABEL_5;
  }

  v14 = v7;
  v15 = v8;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __73__EDInMemoryThreadCollection__comparisonForSortDescriptor_value1_value2___block_invoke;
  v21 = &unk_1E8252738;
  v16 = v15;
  v22 = v16;
  v23 = &v24;
  [v14 enumerateObjectsUsingBlock:&v18];
  if (!v25[3])
  {
    v17 = [v16 count];
    if (v17 > [v14 count])
    {
      v25[3] = 1;
    }
  }

LABEL_6:
  v11 = [v6 ascending];
  v12 = v25[3];
  if ((v11 & 1) == 0 && v12)
  {
    if (v12 == -1)
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }

    v25[3] = v12;
  }

  _Block_object_dispose(&v24, 8);
  return v12;
}

void __73__EDInMemoryThreadCollection__comparisonForSortDescriptor_value1_value2___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v19 = a2;
  if ([*(a1 + 32) count] <= a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = -1;
    *a4 = 1;
  }

  else
  {
    v7 = v19;
    v8 = [v7 emailAddressValue];
    v9 = [v8 displayName];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v7 stringValue];
    }

    v12 = v11;

    v13 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v14 = [v13 emailAddressValue];
    v15 = [v14 displayName];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = [v13 stringValue];
    }

    v18 = v17;

    *(*(*(a1 + 40) + 8) + 24) = [v12 localizedCaseInsensitiveCompare:v18];
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      *a4 = 1;
    }
  }
}

- (void)enumerateObjectIDsInBatchesOfSize:(unint64_t)a3 block:(id)a4
{
  v6 = a4;
  v7 = [(EDInMemoryThreadCollection *)self delegate];
  [v7 assertCorrectSchedulerForCollection:self];

  v8 = [(NSMutableOrderedSet *)self->_conversationIDs array];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__EDInMemoryThreadCollection_enumerateObjectIDsInBatchesOfSize_block___block_invoke;
  v10[3] = &unk_1E8252788;
  v10[4] = self;
  v9 = v6;
  v11 = v9;
  [v8 ef_enumerateObjectsInBatchesOfSize:a3 block:v10];
}

void __70__EDInMemoryThreadCollection_enumerateObjectIDsInBatchesOfSize_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  os_unfair_lock_lock(v4 + 14);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__EDInMemoryThreadCollection_enumerateObjectIDsInBatchesOfSize_block___block_invoke_2;
  v6[3] = &unk_1E8252760;
  v6[4] = *(a1 + 32);
  v5 = [v3 ef_compactMap:v6];
  os_unfair_lock_unlock(v4 + 14);
  (*(*(a1 + 40) + 16))();
}

id __70__EDInMemoryThreadCollection_enumerateObjectIDsInBatchesOfSize_block___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:a2];
  v3 = [v2 objectID];

  return v3;
}

- (id)_messagesByConversationIDForMessages:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    a1 = [v3 ef_groupBy:&__block_literal_global_31];
  }

  return a1;
}

id __67__EDInMemoryThreadCollection__messagesByConversationIDForMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "conversationID")}];

  return v3;
}

- (id)_inMemoryThreadsForObjectIDs:(char)a3 cacheResults:
{
  v39 = *MEMORY[0x1E69E9840];
  v23 = a2;
  if (a1)
  {
    v5 = objc_opt_new();
    v22 = a3;
    v6 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = v23;
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v8)
    {
      v9 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(*(&v28 + 1) + 8 * i), "conversationID")}];
          v12 = [(EDInMemoryThreadCollection *)a1 _cachedInMemoryThreadForConversationID:v11];
          if (v12)
          {
            [v5 addObject:v12];
          }

          else
          {
            [v6 addObject:v11];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v8);
    }

    if ([v6 count])
    {
      v13 = [a1 logClient];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v33 = a1;
        v34 = 2114;
        v35 = v6;
        _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "%p: Fetching messages for %{public}@", buf, 0x16u);
      }

      v14 = [a1 dataSource];
      v15 = [v14 collection:a1 messagesInConversationIDs:v6 limit:0x7FFFFFFFFFFFFFFFLL];

      v16 = [(EDInMemoryThreadCollection *)a1 _messagesByConversationIDForMessages:v15];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __72__EDInMemoryThreadCollection__inMemoryThreadsForObjectIDs_cacheResults___block_invoke;
      v24[3] = &unk_1E82527B0;
      v25 = v5;
      v26 = a1;
      v27 = v22;
      [v16 enumerateKeysAndObjectsUsingBlock:v24];
      v17 = [a1 logClient];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v15 count];
        v19 = [v16 count];
        *buf = 134218496;
        v33 = a1;
        v34 = 2048;
        v35 = v18;
        v36 = 2048;
        v37 = v19;
        _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "%p: Fetched %lu messages for %lu threads", buf, 0x20u);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_cachedInMemoryThreadForConversationID:(uint64_t)a1
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (![v3 integerValue])
    {
      v5 = [a1 logClient];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(EDInMemoryThreadCollection *)v4 _cachedInMemoryThreadForConversationID:v5];
      }
    }

    if (*(a1 + 24))
    {
      os_unfair_lock_lock((a1 + 56));
      v6 = [*(a1 + 24) objectForKeyedSubscript:v4];
      os_unfair_lock_unlock((a1 + 56));
      if (v6)
      {
        goto LABEL_12;
      }

      v7 = [a1 logClient];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134218242;
        v11 = a1;
        v12 = 2112;
        v13 = v4;
        _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "%p: Thread with conversation ID: %@ is not present in _inMemoryThreadsByConversationID.", &v10, 0x16u);
      }
    }

    else
    {
      v7 = [a1 inMemoryThreadCache];
      v6 = [v7 cachedObjectForKey:v4];
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_12:

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

void __72__EDInMemoryThreadCollection__inMemoryThreadsForObjectIDs_cacheResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = -[EDInMemoryThreadCollection _createInMemoryThreadForConversationID:messages:cacheResults:](*(a1 + 40), [v8 longLongValue], v5, *(a1 + 48));
  [v6 ef_addOptionalObject:v7];
}

- (id)_createInMemoryThreadForConversationID:(void *)a3 messages:(int)a4 cacheResults:
{
  v7 = a3;
  if (a1)
  {
    v8 = objc_alloc([a1 inMemoryThreadClass]);
    v9 = [a1 query];
    v10 = [a1 threadScope];
    v11 = [v8 initWithMessages:v7 originatingQuery:v9 threadScope:v10];

    if (v11 && a4)
    {
      v12 = [a1 inMemoryThreadCache];
      v13 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __91__EDInMemoryThreadCollection__createInMemoryThreadForConversationID_messages_cacheResults___block_invoke;
      v17[3] = &unk_1E8252820;
      v17[4] = a1;
      v19 = a2;
      v14 = v11;
      v18 = v14;
      v15 = [v12 objectForKey:v13 generator:v17];

      v11 = v14;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)messageListItemForObjectID:(id)a3 error:(id *)a4
{
  v34[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a4)
    {
      v21 = 0;
      goto LABEL_28;
    }

LABEL_26:
    v26 = [MEMORY[0x1E696ABC0] em_itemNotFoundErrorWithItemID:v6];
    v21 = 0;
    goto LABEL_27;
  }

  v7 = [v6 conversationID];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:v7];
  v9 = [(EDInMemoryThreadCollection *)self _cachedInMemoryThreadForConversationID:v8];
  v10 = [(EDInMemoryThreadCollection *)self query];
  v11 = [v10 queryOptions];

  if (v9 || (v11 & 0x20) != 0)
  {
    if (!v9)
    {
      goto LABEL_23;
    }

    v20 = [(EDInMemoryThreadCollection *)self logClient];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v31 = self;
      v32 = 2114;
      v33 = v8;
      _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEFAULT, "%p: Fetched messageListItem for %{public}@ from cache", buf, 0x16u);
    }
  }

  else
  {
    os_unfair_lock_lock(&self->_threadsLock);
    v12 = [(EFMutableOrderedDictionary *)self->_threadsByConversationID indexOfKey:v8];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v34[0] = v6;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    }

    else
    {
      v13 = [(EFMutableOrderedDictionary *)self->_threadsByConversationID count];
      v14 = objc_alloc(MEMORY[0x1E696AC90]);
      if (v12 >= 0xE)
      {
        v15 = v12 - 14;
      }

      else
      {
        v15 = 0;
      }

      v16 = 14;
      if (v12 < 0xE)
      {
        v16 = v12;
      }

      v17 = v13 - v12;
      if (v13 - v12 >= 0xF)
      {
        v17 = 15;
      }

      v18 = [v14 initWithIndexesInRange:{v15, v17 + v16}];
      v19 = [(EFMutableOrderedDictionary *)self->_threadsByConversationID objectsAtIndexes:v18];
      v20 = [v19 ef_mapSelector:sel_objectID];
    }

    os_unfair_lock_unlock(&self->_threadsLock);
    if ([v20 count])
    {
      v22 = [(EDInMemoryThreadCollection *)self _inMemoryThreadsForObjectIDs:v20 cacheResults:v12 != 0x7FFFFFFFFFFFFFFFLL];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __63__EDInMemoryThreadCollection_messageListItemForObjectID_error___block_invoke;
      v29[3] = &__block_descriptor_40_e26_B16__0__EDInMemoryThread_8l;
      v29[4] = v7;
      v9 = [v22 ef_firstObjectPassingTest:v29];
    }

    else
    {
      v9 = 0;
    }
  }

LABEL_23:
  v21 = [v9 messageListItem];
  os_unfair_lock_lock(&self->_threadsLock);
  v23 = [(EFMutableOrderedDictionary *)self->_threadsByConversationID objectForKeyedSubscript:v8];
  v24 = [v9 thread];
  v25 = [(EDInMemoryThreadCollection *)self query];
  [v23 updateFromThread:v24 addingAdditionalInformation:1 query:v25];

  os_unfair_lock_unlock(&self->_threadsLock);
  if (!a4)
  {
    goto LABEL_28;
  }

  if (!v21)
  {
    goto LABEL_26;
  }

  v26 = 0;
LABEL_27:
  *a4 = v26;
LABEL_28:

  v27 = *MEMORY[0x1E69E9840];

  return v21;
}

BOOL __63__EDInMemoryThreadCollection_messageListItemForObjectID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 thread];
  v4 = [v3 conversationID] == *(a1 + 32);

  return v4;
}

- (id)threadsAndMessagesForObjectIDs:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(EDInMemoryThreadCollection *)self _inMemoryThreadsForObjectIDs:a3 cacheResults:0];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 messages];
        v11 = [v9 thread];
        [v4 setObject:v10 forKeyedSubscript:v11];
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)messagesForThread:(id)a3
{
  v4 = a3;
  v5 = -[EDInMemoryThreadCollection inMemoryThreadForConversationID:](self, "inMemoryThreadForConversationID:", [v4 conversationID]);
  v6 = [v5 messages];

  return v6;
}

- (id)inMemoryThreadForConversationID:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"EDInMemoryThreadCollection.m" lineNumber:294 description:@"Got a conversationID of 0"];
  }

  if (self->_inMemoryThreadsByConversationID)
  {
    os_unfair_lock_lock(&self->_threadsLock);
    inMemoryThreadsByConversationID = self->_inMemoryThreadsByConversationID;
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
    v7 = [(NSMutableDictionary *)inMemoryThreadsByConversationID objectForKeyedSubscript:v6];

    os_unfair_lock_unlock(&self->_threadsLock);
    if (v7)
    {
      goto LABEL_9;
    }

    v8 = [(EDInMemoryThreadCollection *)self logClient];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v16 = self;
      v17 = 2050;
      v18 = a3;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%p: Thread with conversation ID: %{public}lld is not present in _inMemoryThreadsByConversationID.", buf, 0x16u);
    }
  }

  else
  {
    v8 = [(EDInMemoryThreadCollection *)self inMemoryThreadCache];
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__EDInMemoryThreadCollection_inMemoryThreadForConversationID___block_invoke;
    v14[3] = &unk_1E82527F8;
    v14[4] = self;
    v14[5] = a3;
    v7 = [v8 objectForKey:v9 generator:v14];
  }

LABEL_9:
  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

id __62__EDInMemoryThreadCollection_inMemoryThreadForConversationID___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(EDInMemoryThreadCollection *)*(a1 + 32) _createInMemoryThreadForConversationID:?];
  v4 = [*(a1 + 32) logClient];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = [v3 thread];
    v7 = [v6 displayDate];
    v10 = 134349314;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Didn't find conversationID in Cache: %{public}lld, displayDate = %@", &v10, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_createInMemoryThreadForConversationID:(id)a1
{
  v2 = a1;
  v18[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = [a1 dataSource];
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
    v18[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v7 = [v4 collection:v2 messagesInConversationIDs:v6 limit:0x7FFFFFFFFFFFFFFFLL];

    if (![v7 count])
    {
      v8 = [v2 logClient];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 134218240;
        v15 = v2;
        v16 = 2050;
        v17 = a2;
        _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%p: Could not find any messages for conversation ID: %{public}lld", &v14, 0x16u);
      }
    }

    if ([v7 count])
    {
      v9 = objc_alloc([v2 inMemoryThreadClass]);
      v10 = [v2 query];
      v11 = [v2 threadScope];
      v2 = [v9 initWithMessages:v7 originatingQuery:v10 threadScope:v11];
    }

    else
    {
      v2 = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v2;
}

id __91__EDInMemoryThreadCollection__createInMemoryThreadForConversationID_messages_cacheResults___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logClient];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 48);
    v4 = [*(a1 + 40) thread];
    v5 = [v4 displayDate];
    v9 = 134349314;
    v10 = v3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_INFO, "Caching thread for conversationID: %{public}lld displayDate = %@", &v9, 0x16u);
  }

  v6 = *(a1 + 40);
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (os_unfair_lock_s)_removeThreadProxies:(char)a3 forMove:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = [v5 array];
    v8 = [v7 ef_map:&__block_literal_global_52];

    v9 = [(os_unfair_lock_s *)a1 delegate];
    [v9 assertCorrectSchedulerForCollection:a1];

    [*&a1[2]._os_unfair_lock_opaque removeObjectsInArray:v8];
    if (a3)
    {
      a1 = 0;
    }

    else
    {
      [*&a1[12]._os_unfair_lock_opaque removeIDs:v8];
      os_unfair_lock_lock(a1 + 14);
      [*&a1[4]._os_unfair_lock_opaque removeObjectsForKeys:v8];
      [*&a1[8]._os_unfair_lock_opaque removeObjectsForKeys:v8];
      os_unfair_lock_unlock(a1 + 14);
      a1 = [(EDInMemoryThreadCollection *)a1 _threadsWereDeleted];
    }
  }

  return a1;
}

id __59__EDInMemoryThreadCollection__removeThreadProxies_forMove___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "conversationID")}];

  return v3;
}

- (void)_threadsWereDeleted
{
  v1 = a1;
  if (a1)
  {
    if ([(EDInMemoryThreadCollection *)a1 _hasLoaded])
    {
      v5 = 0;
      v6 = &v5;
      v7 = 0x3032000000;
      v8 = __Block_byref_object_copy__13;
      v9 = __Block_byref_object_dispose__13;
      v10 = [MEMORY[0x1E695DFA8] set];
      v2 = v1[5];
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __49__EDInMemoryThreadCollection__threadsWereDeleted__block_invoke;
      v4[3] = &unk_1E8252890;
      v4[4] = v1;
      v4[5] = &v5;
      [v2 performWhileLocked:v4];
      if ([v6[5] count])
      {
        v1 = [(EDInMemoryThreadCollection *)v1 _updateOldestThreadsForMailboxes:?];
      }

      else
      {
        v1 = 0;
      }

      _Block_object_dispose(&v5, 8);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

- (uint64_t)_hasLoaded
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v1 = *(a1 + 40);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __40__EDInMemoryThreadCollection__hasLoaded__block_invoke;
    v4[3] = &unk_1E8252900;
    v4[4] = &v5;
    [v1 performWhileLocked:v4];
    v2 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void __49__EDInMemoryThreadCollection__threadsWereDeleted__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 oldestThreadsByMailboxObjectIDs];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__EDInMemoryThreadCollection__threadsWereDeleted__block_invoke_2;
  v7[3] = &unk_1E8252868;
  v8 = *(a1 + 32);
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  if ([*(*(*(a1 + 40) + 8) + 40) count])
  {
    v5 = [v3 oldestThreadsByMailboxObjectIDs];
    v6 = [*(*(*(a1 + 40) + 8) + 40) allObjects];
    [v5 removeObjectsForKeys:v6];
  }
}

void __49__EDInMemoryThreadCollection__threadsWereDeleted__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  os_unfair_lock_lock(v6 + 14);
  v7 = *(*(a1 + 32) + 16);
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v5, "conversationID")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (!v9)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v10];
  }

  os_unfair_lock_unlock(v6 + 14);
}

- (uint64_t)_updateOldestThreadsForMailboxes:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v5 = [v3 mutableCopy];
    v6 = [a1 dateSortOrder] == 1;
    v7 = [a1 dateSortOrder] != 0;
    v8 = [a1 delegate];
    [v8 assertCorrectSchedulerForCollection:a1];

    v9 = a1[1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__EDInMemoryThreadCollection__updateOldestThreadsForMailboxes___block_invoke;
    v13[3] = &unk_1E82528B8;
    v13[4] = a1;
    v10 = v5;
    v14 = v10;
    v15 = &v17;
    v16 = v7;
    [v9 enumerateObjectsWithOptions:2 * v6 usingBlock:v13];
    if (*(v18 + 24) == 1)
    {
      [(EDInMemoryThreadCollection *)a1 _notifyObserverOfOldestThreadsByMailboxObjectIDs];
      v11 = *(v18 + 24);
    }

    else
    {
      v11 = 0;
    }

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void __63__EDInMemoryThreadCollection__updateOldestThreadsForMailboxes___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = *(a1 + 32);
  os_unfair_lock_lock(v7 + 14);
  v8 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v6];
  v9 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v6];
  os_unfair_lock_unlock(v7 + 14);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ([*(a1 + 40) containsObject:{v14, v16}])
        {
          if ([(EDInMemoryThreadCollection *)*(a1 + 32) _updateCurrentOldestThreadWithThreadIfApplicable:v9 forMailbox:v14])
          {
            *(*(*(a1 + 48) + 8) + 24) = 1;
          }

          if (*(a1 + 56) == 1)
          {
            [*(a1 + 40) removeObject:v14];
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  if (*(a1 + 56) == 1 && ![*(a1 + 40) count])
  {
    *a4 = 1;
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_updateCurrentOldestThreadWithThreadIfApplicable:(void *)a3 forMailbox:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__13;
    v26 = __Block_byref_object_dispose__13;
    v27 = 0;
    v8 = *(a1 + 40);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __90__EDInMemoryThreadCollection__updateCurrentOldestThreadWithThreadIfApplicable_forMailbox___block_invoke;
    v19[3] = &unk_1E8252978;
    v21 = &v22;
    v9 = v6;
    v20 = v9;
    [v8 performWhileLocked:v19];
    if (([v5 isEqual:v23[5]] & 1) != 0 || v23[5] && (objc_msgSend(v5, "date"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23[5], "date"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "compare:", v11), v11, v10, v12 != -1))
    {
      v13 = 0;
    }

    else
    {
      v14 = *(a1 + 40);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __90__EDInMemoryThreadCollection__updateCurrentOldestThreadWithThreadIfApplicable_forMailbox___block_invoke_2;
      v16[3] = &unk_1E82529A0;
      v17 = v9;
      v18 = v5;
      [v14 performWhileLocked:v16];

      v13 = 1;
    }

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_notifyObserverOfOldestThreadsByMailboxObjectIDs
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__13;
    v9 = __Block_byref_object_dispose__13;
    v10 = 0;
    v2 = a1[5];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __78__EDInMemoryThreadCollection__notifyObserverOfOldestThreadsByMailboxObjectIDs__block_invoke;
    v4[3] = &unk_1E8252900;
    v4[4] = &v5;
    [v2 performWhileLocked:v4];
    v3 = [a1 delegate];
    [v3 collection:a1 notifyOfOldestThreadsByMailboxObjectIDs:v6[5]];

    _Block_object_dispose(&v5, 8);
  }
}

- (void)notifyObserverOfOldestThreadsByMailboxObjectIDs
{
  v3 = [(EDInMemoryThreadCollection *)self delegate];
  [v3 assertCorrectSchedulerForCollection:self];

  [(EDInMemoryThreadCollection *)self _notifyObserverOfOldestThreadsByMailboxObjectIDs];
}

void __78__EDInMemoryThreadCollection__notifyObserverOfOldestThreadsByMailboxObjectIDs__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 oldestThreadsByMailboxObjectIDs];
  v4 = [v3 ef_mapValues:&__block_literal_global_59];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

id __78__EDInMemoryThreadCollection__notifyObserverOfOldestThreadsByMailboxObjectIDs__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectID];

  return v2;
}

- (void)initializeOldestThreadsByMailbox
{
  v4 = [(EDInMemoryThreadCollection *)self delegate];
  [v4 assertCorrectSchedulerForCollection:self];

  v5 = [(EDInMemoryThreadCollection *)self query];
  v6 = [v5 queryOptions];

  if (v6)
  {
    oldestThreadsByMailboxObjectIDs = self->_oldestThreadsByMailboxObjectIDs;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__EDInMemoryThreadCollection_initializeOldestThreadsByMailbox__block_invoke;
    v12[3] = &unk_1E8252928;
    v12[4] = self;
    v12[5] = a2;
    [(EFLocked *)oldestThreadsByMailboxObjectIDs performWhileLocked:v12];
    v8 = [(EDInMemoryThreadCollection *)self dataSource];
    v9 = [v8 mailboxesInCollection:self];
    [(EDInMemoryThreadCollection *)self _updateOldestThreadsForMailboxes:v9];

    v10 = self->_oldestThreadsByMailboxObjectIDs;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__EDInMemoryThreadCollection_initializeOldestThreadsByMailbox__block_invoke_2;
    v11[3] = &unk_1E8252950;
    v11[4] = self;
    [(EFLocked *)v10 performWhileLocked:v11];
  }
}

void __62__EDInMemoryThreadCollection_initializeOldestThreadsByMailbox__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 oldestThreadsByMailboxObjectIDs];

  if (v3)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"EDInMemoryThreadCollection.m" lineNumber:474 description:@"oldestThreadsByMailboxObjectIDs should be only initialized once"];
  }

  v4 = [MEMORY[0x1E695DF90] dictionary];
  [v6 setOldestThreadsByMailboxObjectIDs:v4];
}

void __62__EDInMemoryThreadCollection_initializeOldestThreadsByMailbox__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) logClient];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 oldestThreadsByMailboxObjectIDs];
    v8 = 134218240;
    v9 = v5;
    v10 = 1024;
    v11 = [v6 count];
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "%p: Oldest threads initialized for %u mailboxes", &v8, 0x12u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __90__EDInMemoryThreadCollection__updateCurrentOldestThreadWithThreadIfApplicable_forMailbox___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 oldestThreadsByMailboxObjectIDs];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __90__EDInMemoryThreadCollection__updateCurrentOldestThreadWithThreadIfApplicable_forMailbox___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = [a2 oldestThreadsByMailboxObjectIDs];
  [v4 setObject:v3 forKeyedSubscript:*(a1 + 32)];
}

- (void)clearInMemoryThreadCache
{
  v2 = [(EDInMemoryThreadCollection *)self inMemoryThreadCache];
  [v2 removeAllObjects];
}

- (void)messagesWereAdded:(id)a3 searchInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(EDInMemoryThreadCollection *)self delegate];
  [v9 assertCorrectSchedulerForCollection:self];

  v10 = [(EDInMemoryThreadCollection *)self _messagesByConversationIDForMessages:v7];
  v20 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v11 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __59__EDInMemoryThreadCollection_messagesWereAdded_searchInfo___block_invoke;
  v21[3] = &unk_1E82529E8;
  v21[4] = self;
  v25 = a2;
  v13 = v11;
  v22 = v13;
  v14 = v12;
  v23 = v14;
  v15 = v20;
  v24 = v15;
  [v10 enumerateKeysAndObjectsUsingBlock:v21];
  v16 = [(EDInMemoryThreadCollection *)self delegate];
  [v16 prepareToSendUpdatesInCollection:self];

  v17 = [(EDInMemoryThreadCollection *)self delegate];
  v18 = [v17 collection:self reportChanges:v14];

  LODWORD(v17) = [(EDInMemoryThreadCollection *)self _mergeInThreads:v13 searchInfo:v8 forMove:1u];
  if (([(EDInMemoryThreadCollection *)self _mergeInThreads:v15 searchInfo:v8 forMove:0]| v17 | v18))
  {
    v19 = [(EDInMemoryThreadCollection *)self delegate];
    [v19 didSendUpdatesInCollection:self];
  }
}

void __59__EDInMemoryThreadCollection_messagesWereAdded_searchInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  if (*(v8 + 32))
  {
    v9 = objc_opt_new();
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v54 objects:v66 count:16];
    if (v11)
    {
      v12 = *v55;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v55 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [*(*(&v54 + 1) + 8 * i) mailboxObjectIDs];
          [v9 ef_addAbsentObjectsFromArrayAccordingToEquals:v14];
        }

        v11 = [v10 countByEnumeratingWithState:&v54 objects:v66 count:16];
      }

      while (v11);
    }

    v15 = *(a1 + 32);
    os_unfair_lock_lock(v15 + 14);
    v16 = *(*(a1 + 32) + 32);
    if (v16)
    {
      v17 = [v16 objectForKeyedSubscript:v5];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 ef_arrayByAddingAbsentObjectsFromArray:v9];
        [*(*(a1 + 32) + 32) setObject:v19 forKeyedSubscript:v5];
      }

      else
      {
        [*(*(a1 + 32) + 32) setObject:v9 forKeyedSubscript:v5];
      }
    }

    os_unfair_lock_unlock(v15 + 14);

    v8 = *(a1 + 32);
  }

  v20 = [(EDInMemoryThreadCollection *)v8 _cachedInMemoryThreadForConversationID:v5];
  v21 = *(a1 + 32);
  os_unfair_lock_lock(v21 + 14);
  v22 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v5];
  os_unfair_lock_unlock(v21 + 14);
  if (v20)
  {
    v23 = [v20 addMessages:v6];
    v24 = [v20 thread];
    v25 = [*(a1 + 32) query];
    [(EDSortableThreadProxy *)v22 updateFromThread:v24 addingAdditionalInformation:0 query:v25];

    if (v23)
    {
      v26 = *(*(a1 + 32) + 48);
      v27 = [v20 thread];
      LODWORD(v26) = [v26 updateSectionForItem:v27];

      if (([(EDInMemoryThreadCollection *)*(a1 + 32) _messageListItemChangeAffectsSorting:v23]| v26))
      {
        if (!v22)
        {
          v28 = [EDSortableThreadProxy alloc];
          v29 = [v20 thread];
          v30 = [*(a1 + 32) query];
          v22 = [(EDSortableThreadProxy *)v28 initWithThread:v29 originatingQuery:v30];

          v31 = [*(a1 + 32) logClient];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v51 = *(a1 + 32);
            v52 = NSStringFromSelector(*(a1 + 64));
            v49 = [v20 thread];
            v50 = [v49 itemID];
            *buf = 134218754;
            v59 = v51;
            v60 = 2114;
            v61 = v52;
            v62 = 2048;
            v63 = v22;
            v64 = 2114;
            v65 = v50;
            _os_log_error_impl(&dword_1C61EF000, v31, OS_LOG_TYPE_ERROR, "%p: Missing threadProxy in %{public}@. Created new threadProxy:%p for itemID:%{public}@", buf, 0x2Au);
          }
        }

        [*(a1 + 40) addObject:v22];
      }

      v32 = *(a1 + 48);
      v33 = [v20 thread];
      v34 = [v33 objectID];
      [v32 setObject:v23 forKeyedSubscript:v34];
    }
  }

  else if (v22)
  {
    buf[0] = 0;
    v35 = *(a1 + 32);
    v53 = 0;
    v36 = [(EDInMemoryThreadCollection *)v35 _updateThreadProxy:v22 threadIsEmpty:buf thread:&v53];
    v37 = v53;
    v20 = v37;
    if (v36)
    {
      v38 = *(*(a1 + 32) + 48);
      v39 = [v37 thread];
      LODWORD(v38) = [v38 updateSectionForItem:v39];

      if (([(EDInMemoryThreadCollection *)*(a1 + 32) _messageListItemChangeAffectsSorting:v36]| v38))
      {
        [*(a1 + 40) addObject:v22];
      }

      v40 = *(a1 + 48);
      v41 = [(EDSortableThreadProxy *)v22 objectID];
      [v40 setObject:v36 forKeyedSubscript:v41];
    }
  }

  else
  {
    v20 = -[EDInMemoryThreadCollection _createInMemoryThreadForConversationID:messages:cacheResults:](*(a1 + 32), [v5 longLongValue], v6, 1);
    v42 = [EDSortableThreadProxy alloc];
    v43 = [v20 thread];
    v44 = [*(a1 + 32) query];
    v22 = [(EDSortableThreadProxy *)v42 initWithThread:v43 originatingQuery:v44];

    [*(a1 + 56) addObject:v22];
    v45 = *(*(a1 + 32) + 48);
    v46 = [v20 thread];
    [v45 updateSectionForItem:v46];

    v47 = *(a1 + 32);
    if (*(v47 + 24))
    {
      os_unfair_lock_lock((v47 + 56));
      [*(*(a1 + 32) + 24) setObject:v20 forKeyedSubscript:v5];
      os_unfair_lock_unlock((v47 + 56));
    }
  }

  objc_autoreleasePoolPop(v7);
  v48 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_messageListItemChangeAffectsSorting:(void *)a1
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [a1 query];
    v5 = [v4 sortDescriptors];

    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(*(&v13 + 1) + 8 * i) key];
          v10 = [v3 valueForKeyPath:v9];

          if (v10)
          {
            v6 = 1;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)_updateThreadProxy:(_BYTE *)a3 threadIsEmpty:(void *)a4 thread:
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = v7;
  if (a1)
  {
    v9 = [a1 inMemoryThreadForConversationID:{objc_msgSend(v7, "conversationID")}];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 thread];
      v12 = [v8 calculateChangeFromThread:v11];

      v13 = [v10 thread];
      v14 = [a1 query];
      [v8 updateFromThread:v13 addingAdditionalInformation:0 query:v14];

      if (a4)
      {
        v15 = v10;
        *a4 = v10;
      }
    }

    else
    {
      *a3 = 1;
      if (a4)
      {
        *a4 = 0;
      }

      v16 = [a1 logClient];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        -[EDInMemoryThreadCollection _updateThreadProxy:threadIsEmpty:thread:].cold.1(a1, v19, [v8 conversationID], v16);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v12;
}

- (uint64_t)_mergeInThreads:(void *)a3 searchInfo:(unsigned int)a4 forMove:
{
  v74 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v49 = a3;
  v55 = v6;
  if (!a1 || ![v6 count])
  {
    v33 = 0;
    goto LABEL_47;
  }

  v60 = 0;
  if (a4)
  {
    v60 = [(EDInMemoryThreadCollection *)a1 _removeThreadProxies:v6 forMove:1];
  }

  if (![v6 count])
  {
    goto LABEL_46;
  }

  v54 = [a1 comparator];
  [v6 sortUsingComparator:?];
  v7 = [v6 array];
  v47 = [v7 copy];

  v8 = [v6 firstObject];
  v9 = [a1 delegate];
  [v9 assertCorrectSchedulerForCollection:a1];

  if (!v8)
  {
    v14 = 0;
    goto LABEL_36;
  }

  v11 = 0;
  v52 = 0;
  *&v10 = 134219266;
  v46 = v10;
  while (v11 < [*(a1 + 8) count])
  {
    v12 = [*(a1 + 8) objectAtIndexedSubscript:v11];
    os_unfair_lock_lock((a1 + 56));
    v51 = v12;
    v13 = [*(a1 + 16) objectForKeyedSubscript:v12];
    os_unfair_lock_unlock((a1 + 56));
    v14 = v13;
    if ((v54)[2](v54, v13, v8) == 1)
    {
      v8 = v8;
      v50 = v8;
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v16 = v8;
      while (1)
      {
        v17 = v16;
        v18 = v11;
        v16 = v8;

        v19 = [v16 objectID];
        [v15 addObject:v19];

        v20 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v16, "conversationID")}];
        [*(a1 + 8) insertObject:v20 atIndex:v18];
        os_unfair_lock_lock((a1 + 56));
        [*(a1 + 16) setOrInsertObject:v16 forKey:v20 atIndex:v18];
        os_unfair_lock_unlock((a1 + 56));
        [v55 removeObjectAtIndex:0];
        v8 = [v55 firstObject];

        if (!v8)
        {
          break;
        }

        v21 = (v54)[2](v54, v14, v8);

        v11 = v18 + 1;
        if (v21 != 1)
        {
          goto LABEL_15;
        }
      }

LABEL_15:
      v22 = [v14 objectID];
      if (v52 && (v54)[2](v54, v50, v52) != 1 || (v54)[2](v54, v16, v14) != -1)
      {
        if ([v15 count] == 1)
        {
          v23 = [a1 logClient];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            *buf = 134218754;
            v63 = a1;
            v64 = 2114;
            v65 = v50;
            v66 = 2114;
            v67 = v52;
            v68 = 2114;
            v69 = v14;
            v24 = v23;
            v25 = "%p: Merged in 1 new thread out of order! %{public}@ between existing threads %{public}@ and %{public}@";
            v26 = 42;
            goto LABEL_23;
          }
        }

        else
        {
          v23 = [a1 logClient];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            v27 = [v15 count];
            *buf = v46;
            v63 = a1;
            v64 = 2048;
            v65 = v27;
            v66 = 2114;
            v67 = v50;
            v68 = 2114;
            v69 = v16;
            v70 = 2114;
            v71 = v52;
            v72 = 2114;
            v73 = v14;
            v24 = v23;
            v25 = "%p: Merged in %lu new threads out of order! %{public}@ to %{public}@ between existing threads %{public}@ and %{public}@";
            v26 = 62;
LABEL_23:
            _os_log_fault_impl(&dword_1C61EF000, v24, OS_LOG_TYPE_FAULT, v25, buf, v26);
          }
        }

LABEL_30:

        v32 = [a1 delegate];
        [v32 collection:a1 didMergeInThreadsForMove:a4 newObjectIDs:v15 existingObjectID:v22 searchInfo:v49 hasChanges:&v60];

        v11 = v18 + 1;
        goto LABEL_31;
      }

      if ([v15 count] == 1)
      {
        v23 = [a1 logClient];
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        *buf = 134218754;
        v63 = a1;
        v64 = 2114;
        v65 = v50;
        v66 = 2114;
        v67 = v52;
        v68 = 2114;
        v69 = v14;
        v28 = v23;
        v29 = "%p: Merged in 1 new thread %{public}@ between existing threads %{public}@ and %{public}@";
        v30 = 42;
      }

      else
      {
        v23 = [a1 logClient];
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        v31 = [v15 count];
        *buf = v46;
        v63 = a1;
        v64 = 2048;
        v65 = v31;
        v66 = 2114;
        v67 = v50;
        v68 = 2114;
        v69 = v16;
        v70 = 2114;
        v71 = v52;
        v72 = 2114;
        v73 = v14;
        v28 = v23;
        v29 = "%p: Merged in %lu new threads %{public}@ to %{public}@ between existing threads %{public}@ and %{public}@";
        v30 = 62;
      }

      _os_log_impl(&dword_1C61EF000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, v30);
      goto LABEL_30;
    }

LABEL_31:

    ++v11;
    v52 = v14;
    if (!v8)
    {
      goto LABEL_36;
    }
  }

  v14 = v52;
LABEL_36:
  if ([v55 count])
  {
    v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v35 = v55;
    v53 = v14;
    v36 = [v35 countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v36)
    {
      v37 = *v57;
      do
      {
        v38 = 0;
        v39 = v8;
        do
        {
          if (*v57 != v37)
          {
            objc_enumerationMutation(v35);
          }

          v8 = *(*(&v56 + 1) + 8 * v38);

          v40 = [v8 objectID];
          [v34 addObject:v40];

          v41 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v8, "conversationID")}];
          [*(a1 + 8) addObject:v41];
          os_unfair_lock_lock((a1 + 56));
          [*(a1 + 16) setOrAddObject:v8 forKey:v41];
          os_unfair_lock_unlock((a1 + 56));

          ++v38;
          v39 = v8;
        }

        while (v36 != v38);
        v36 = [v35 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v36);
    }

    v42 = [a1 delegate];
    [v42 collection:a1 didMergeInThreadsForMove:a4 newObjectIDs:v34 existingObjectID:0 searchInfo:v49 hasChanges:&v60];

    v8 = 0;
    v14 = v53;
  }

  v43 = [(EDInMemoryThreadCollection *)a1 _didMergeInThreads:v47];
  v60 = (v43 | v60) & 1;

LABEL_46:
  v33 = v60;
LABEL_47:

  v44 = *MEMORY[0x1E69E9840];
  return v33 & 1;
}

- (void)messagesWereChanged:(id)a3 forKeyPaths:(id)a4 deleted:(BOOL)a5
{
  v28 = a3;
  v25 = a4;
  v9 = [(EDInMemoryThreadCollection *)self delegate];
  [v9 assertCorrectSchedulerForCollection:self];

  v10 = [(EDInMemoryThreadCollection *)self _messagesByConversationIDForMessages:v28];
  v24 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v27 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v26 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __70__EDInMemoryThreadCollection_messagesWereChanged_forKeyPaths_deleted___block_invoke;
  v29[3] = &unk_1E8252A38;
  v29[4] = self;
  v36 = a5;
  v12 = v25;
  v30 = v12;
  v35 = a2;
  v13 = v24;
  v31 = v13;
  v14 = v27;
  v32 = v14;
  v15 = v11;
  v33 = v15;
  v16 = v26;
  v34 = v16;
  [v10 enumerateKeysAndObjectsUsingBlock:v29];
  v17 = [(EDInMemoryThreadCollection *)self delegate];
  [v17 prepareToSendUpdatesInCollection:self];

  if ([v13 count] && !a5)
  {
    v18 = [(EDInMemoryThreadCollection *)self logClient];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [EDInMemoryThreadCollection messagesWereChanged:v28 forKeyPaths:v18 deleted:?];
    }
  }

  v19 = [(EDInMemoryThreadCollection *)self delegate];
  v20 = [v19 collection:self reportDeletes:v13];

  if (v20)
  {
    [(EDInMemoryThreadCollection *)self removeThreadProxies:v13 forMove:0];
  }

  v21 = [(EDInMemoryThreadCollection *)self delegate];
  v22 = [v21 collection:self reportChanges:v15];

  LODWORD(v21) = [(EDInMemoryThreadCollection *)self _mergeInThreads:v14 searchInfo:0 forMove:1u];
  if (([(EDInMemoryThreadCollection *)self _mergeInThreads:v16 searchInfo:0 forMove:0]| v21 | v22 | v20))
  {
    v23 = [(EDInMemoryThreadCollection *)self delegate];
    [v23 didSendUpdatesInCollection:self];
  }
}

void __70__EDInMemoryThreadCollection_messagesWereChanged_forKeyPaths_deleted___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v103 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v81 = a3;
  context = objc_autoreleasePoolPush();
  v80 = v5;
  v6 = [(EDInMemoryThreadCollection *)*(a1 + 32) _cachedInMemoryThreadForConversationID:v5];
  v89 = 0;
  v90 = &v89;
  v91 = 0x3032000000;
  v92 = __Block_byref_object_copy__13;
  v93 = __Block_byref_object_dispose__13;
  v94 = 0;
  v7 = *(a1 + 32);
  os_unfair_lock_lock(v7 + 14);
  v8 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v5];
  v9 = v90[5];
  v90[5] = v8;

  os_unfair_lock_unlock(v7 + 14);
  if (v6)
  {
    v88 = 0;
    if (*(a1 + 88) == 1)
    {
      v10 = [*(a1 + 32) inMemoryThreadCache];
      [v10 removeObjectForKey:v5];

      [v6 removeMessages:v81 threadIsEmpty:&v88];
    }

    else
    {
      [v6 changeMessages:v81 forKeyPaths:*(a1 + 40) threadIsEmpty:&v88];
    }
    v21 = ;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__EDInMemoryThreadCollection_messagesWereChanged_forKeyPaths_deleted___block_invoke_2;
    aBlock[3] = &unk_1E8252A10;
    v86 = &v89;
    v14 = v6;
    v22 = *(a1 + 32);
    v84 = v14;
    v85 = v22;
    v87 = *(a1 + 80);
    v23 = _Block_copy(aBlock);
    v24 = v23;
    if (v88 == 1)
    {
      v25 = *(a1 + 48);
      v26 = v23[2](v23);
      [v25 addObject:v26];

      v27 = [*(a1 + 32) logClient];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 32);
        v29 = [v14 thread];
        v30 = [v29 itemID];
        *buf = 134218242;
        v96 = v28;
        v97 = 2114;
        v98 = v30;
        _os_log_impl(&dword_1C61EF000, v27, OS_LOG_TYPE_DEFAULT, "%p: Marking thread %{public}@ as deleted", buf, 0x16u);
      }
    }

    else
    {
      v31 = *(a1 + 32);
      if (v21)
      {
        v32 = v31[6];
        v33 = [v14 thread];
        v34 = [v32 updateSectionForItem:v33];

        v35 = [*(a1 + 32) logClient];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v78 = v21;
          v36 = *(a1 + 32);
          v37 = [v14 thread];
          v38 = [v37 itemID];
          v39 = [v78 ef_publicDescription];
          *buf = 134218754;
          v96 = v36;
          v97 = 2114;
          v98 = v38;
          v99 = 2114;
          v100 = v39;
          v101 = 1024;
          v102 = v34;
          _os_log_impl(&dword_1C61EF000, v35, OS_LOG_TYPE_DEFAULT, "%p: Updating thread (%{public}@) with change: %{public}@, sectionDidChange: %{BOOL}d", buf, 0x26u);

          v21 = v78;
        }

        if (([(EDInMemoryThreadCollection *)*(a1 + 32) _messageListItemChangeAffectsSorting:v21]| v34))
        {
          v40 = *(a1 + 56);
          v41 = v24[2](v24);
          [v40 addObject:v41];
        }

        v42 = v90[5];
        v43 = [v14 thread];
        v44 = [*(a1 + 32) query];
        [v42 updateFromThread:v43 addingAdditionalInformation:0 query:v44];

        v45 = *(a1 + 64);
        v27 = [v14 thread];
        v46 = [v27 objectID];
        [v45 setObject:v21 forKeyedSubscript:v46];
      }

      else
      {
        v27 = [v31 logClient];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v56 = *(a1 + 32);
          v57 = [v14 thread];
          v58 = [v57 itemID];
          v59 = *(a1 + 40);
          *buf = 134218498;
          v96 = v56;
          v97 = 2114;
          v98 = v58;
          v99 = 2114;
          v100 = v59;
          _os_log_impl(&dword_1C61EF000, v27, OS_LOG_TYPE_DEFAULT, "%p: No change detected for thread with item ID: %{public}@, keyPaths: %{public}@", buf, 0x20u);
        }
      }
    }

    goto LABEL_37;
  }

  v11 = v90[5];
  if (v11)
  {
    v88 = 0;
    v12 = *(a1 + 32);
    v82 = 0;
    v13 = [(EDInMemoryThreadCollection *)v12 _updateThreadProxy:v11 threadIsEmpty:&v88 thread:&v82];
    v14 = v82;
    if (v88 == 1)
    {
      [*(a1 + 48) addObject:v90[5]];
      v15 = [*(a1 + 32) logClient];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        v17 = [v90[5] conversationID];
        *buf = 134218240;
        v96 = v16;
        v97 = 2050;
        v98 = v17;
        v18 = "%p: Marking thread proxy %{public}lld as deleted";
        v19 = v15;
        v20 = 22;
LABEL_35:
        _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
      }
    }

    else
    {
      v47 = *(a1 + 32);
      if (v13)
      {
        v48 = v47[6];
        v49 = [v14 thread];
        v50 = [v48 updateSectionForItem:v49];

        v51 = [*(a1 + 32) logClient];
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = *(a1 + 32);
          v53 = [v90[5] conversationID];
          v54 = [v13 ef_publicDescription];
          *buf = 134218754;
          v96 = v52;
          v97 = 2048;
          v98 = v53;
          v99 = 2114;
          v100 = v54;
          v101 = 1024;
          v102 = v50;
          _os_log_impl(&dword_1C61EF000, v51, OS_LOG_TYPE_DEFAULT, "%p: Updating thread proxy (%lld) with change: %{public}@, sectionDidChange: %{BOOL}d", buf, 0x26u);
        }

        if (([(EDInMemoryThreadCollection *)*(a1 + 32) _messageListItemChangeAffectsSorting:v13]| v50))
        {
          [*(a1 + 56) addObject:v90[5]];
        }

        v55 = *(a1 + 64);
        v15 = [v90[5] objectID];
        [v55 setObject:v13 forKeyedSubscript:v15];
        goto LABEL_36;
      }

      v15 = [v47 logClient];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v74 = *(a1 + 32);
        v75 = [v90[5] conversationID];
        v76 = *(a1 + 40);
        *buf = 134218498;
        v96 = v74;
        v97 = 2048;
        v98 = v75;
        v99 = 2114;
        v100 = v76;
        v18 = "%p: No change detected for thread proxy with item ID: %lld, keyPaths: %{public}@";
        v19 = v15;
        v20 = 32;
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  if (*(a1 + 88))
  {
    v14 = 0;
  }

  else
  {
    v60 = [*(a1 + 32) logClient];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v61 = *(a1 + 32);
      v62 = [v80 longLongValue];
      *buf = 134218240;
      v96 = v61;
      v97 = 2048;
      v98 = v62;
      _os_log_impl(&dword_1C61EF000, v60, OS_LOG_TYPE_DEFAULT, "%p: Unable to find thread for conversation ID: %lld", buf, 0x16u);
    }

    v63 = objc_alloc([*(a1 + 32) inMemoryThreadClass]);
    v64 = [*(a1 + 32) query];
    v65 = [*(a1 + 32) threadScope];
    v14 = [v63 initWithMessages:v81 originatingQuery:v64 threadScope:v65];

    v66 = [EDSortableThreadProxy alloc];
    v67 = [v14 thread];
    v68 = [*(a1 + 32) query];
    v69 = [(EDSortableThreadProxy *)v66 initWithThread:v67 originatingQuery:v68];
    v70 = v90[5];
    v90[5] = v69;

    [*(a1 + 72) addObject:v90[5]];
    v71 = *(*(a1 + 32) + 48);
    v72 = [v14 thread];
    [v71 updateSectionForItem:v72];

    v73 = *(a1 + 32);
    if (*(v73 + 24))
    {
      os_unfair_lock_lock((v73 + 56));
      [*(*(a1 + 32) + 24) setObject:v14 forKeyedSubscript:v80];
      os_unfair_lock_unlock((v73 + 56));
    }
  }

LABEL_37:
  _Block_object_dispose(&v89, 8);

  objc_autoreleasePoolPop(context);
  v77 = *MEMORY[0x1E69E9840];
}

id __70__EDInMemoryThreadCollection_messagesWereChanged_forKeyPaths_deleted___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (!v2)
  {
    v3 = [EDSortableThreadProxy alloc];
    v4 = [*(a1 + 32) thread];
    v5 = [*(a1 + 40) query];
    v6 = [(EDSortableThreadProxy *)v3 initWithThread:v4 originatingQuery:v5];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [*(a1 + 40) logClient];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      v13 = NSStringFromSelector(*(a1 + 56));
      v14 = *(*(*(a1 + 48) + 8) + 40);
      v15 = [*(a1 + 32) thread];
      v16 = [v15 itemID];
      v17 = 134218754;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      v21 = 2048;
      v22 = v14;
      v23 = 2114;
      v24 = v16;
      _os_log_error_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_ERROR, "%p: Missing threadProxy in %{public}@. Created new threadProxy:%p for itemID:%{public}@", &v17, 0x2Au);
    }

    v2 = *(*(*(a1 + 48) + 8) + 40);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)objectIDDidChangeForMessage:(id)a3 oldObjectID:(id)a4 oldConversationID:(int64_t)a5
{
  v8 = a3;
  v50 = a4;
  v9 = [(EDInMemoryThreadCollection *)self delegate];
  [v9 assertCorrectSchedulerForCollection:self];

  v10 = [(EDInMemoryThreadCollection *)self delegate];
  [v10 prepareToSendUpdatesInCollection:self];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__EDInMemoryThreadCollection_objectIDDidChangeForMessage_oldObjectID_oldConversationID___block_invoke;
  aBlock[3] = &unk_1E8252A60;
  aBlock[4] = self;
  v11 = v50;
  v57 = v11;
  v12 = _Block_copy(aBlock);
  if ([v8 conversationID] == a5)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:a5];
    v14 = [(EDInMemoryThreadCollection *)self _cachedInMemoryThreadForConversationID:v13];

    os_unfair_lock_lock(&self->_threadsLock);
    threadsByConversationID = self->_threadsByConversationID;
    v16 = [MEMORY[0x1E696AD98] numberWithLongLong:a5];
    v17 = [(EFMutableOrderedDictionary *)threadsByConversationID objectForKeyedSubscript:v16];

    os_unfair_lock_unlock(&self->_threadsLock);
    if (v14)
    {
      v18 = [v14 updateMessage:v8 fromOldObjectID:v11];
      v19 = [v14 thread];
      v20 = [(EDInMemoryThreadCollection *)self query];
      [v17 updateFromThread:v19 addingAdditionalInformation:0 query:v20];

      v21 = [v14 thread];
      v22 = [v21 objectID];
      v12[2](v12, v18, v22);
    }

    else
    {
      v53 = 0;
      v51 = 0;
      v18 = [(EDInMemoryThreadCollection *)self _updateThreadProxy:v17 threadIsEmpty:&v53 thread:&v51];
      v33 = v51;
      v14 = v33;
      if (v53 == 1)
      {

        v14 = 0;
      }

      v34 = [v17 objectID];
      v12[2](v12, v18, v34);
    }

    sectionQueryHelper = self->_sectionQueryHelper;
    v36 = [v14 thread];
    [(EDSectionQueryItemHelper *)sectionQueryHelper updateSectionForItem:v36];

    v37 = [(EDInMemoryThreadCollection *)self delegate];
    v38 = [v8 objectID];
    [v37 collection:self notifyReplacedExistingObjectID:v11 newObjectID:v38];
  }

  else
  {
    v23 = [MEMORY[0x1E696AD98] numberWithLongLong:a5];
    v14 = [(EDInMemoryThreadCollection *)self _cachedInMemoryThreadForConversationID:v23];

    os_unfair_lock_lock(&self->_threadsLock);
    v24 = self->_threadsByConversationID;
    v25 = [MEMORY[0x1E696AD98] numberWithLongLong:a5];
    v17 = [(EFMutableOrderedDictionary *)v24 objectForKeyedSubscript:v25];

    os_unfair_lock_unlock(&self->_threadsLock);
    if (v14)
    {
      v26 = [v14 messages];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __88__EDInMemoryThreadCollection_objectIDDidChangeForMessage_oldObjectID_oldConversationID___block_invoke_69;
      v54[3] = &unk_1E8250858;
      v55 = v11;
      v27 = [v26 ef_filter:v54];

      v53 = 0;
      v49 = [v14 removeMessages:v27 threadIsEmpty:&v53];
      if (v53 == 1)
      {

        v28 = [(EDInMemoryThreadCollection *)self inMemoryThreadCache];
        v29 = [MEMORY[0x1E696AD98] numberWithLongLong:a5];
        [v28 removeObjectForKey:v29];

        v30 = v49;
        v31 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithObjects:{v17, 0}];
        v32 = [(EDInMemoryThreadCollection *)self delegate];
        LODWORD(v29) = [v32 collection:self reportDeletes:v31];

        if (v29)
        {
          [(EDInMemoryThreadCollection *)self removeThreadProxies:v31 forMove:0];
        }

        v14 = 0;
      }

      else
      {
        v44 = [v14 thread];
        v45 = [(EDInMemoryThreadCollection *)self query];
        [v17 updateFromThread:v44 addingAdditionalInformation:0 query:v45];

        v31 = [v14 thread];
        v46 = [v31 objectID];
        v30 = v49;
        v12[2](v12, v49, v46);
      }
    }

    else if (v17)
    {
      v53 = 0;
      v52 = 0;
      v39 = [(EDInMemoryThreadCollection *)self _updateThreadProxy:v17 threadIsEmpty:&v53 thread:&v52];
      v40 = v52;
      v14 = v40;
      if (v53 == 1)
      {

        v41 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithObjects:{v17, 0}];
        v42 = [(EDInMemoryThreadCollection *)self delegate];
        v43 = [v42 collection:self reportDeletes:v41];

        if (v43)
        {
          [(EDInMemoryThreadCollection *)self removeThreadProxies:v41 forMove:0];
        }

        v14 = 0;
      }

      else
      {
        v41 = [v17 objectID];
        v12[2](v12, v39, v41);
      }
    }

    else
    {
      v14 = 0;
    }

    v47 = self->_sectionQueryHelper;
    v37 = [v14 thread];
    [(EDSectionQueryItemHelper *)v47 updateSectionForItem:v37];
  }

  v48 = [(EDInMemoryThreadCollection *)self delegate];
  [v48 didSendUpdatesInCollection:self];
}

void __88__EDInMemoryThreadCollection_objectIDDidChangeForMessage_oldObjectID_oldConversationID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) logClient];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 134218498;
      v17 = v8;
      v18 = 2114;
      v19 = v9;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "%p: Changed objectID from %{public}@ for message in thread: %{public}@", buf, 0x20u);
    }

    v10 = [*(a1 + 32) delegate];
    v11 = *(a1 + 32);
    v14 = v6;
    v15 = v5;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [v10 collection:v11 reportChanges:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __88__EDInMemoryThreadCollection_objectIDDidChangeForMessage_oldObjectID_oldConversationID___block_invoke_69(uint64_t a1, void *a2)
{
  v3 = [a2 objectID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)conversationIDDidChangeForMessages:(id)a3 fromConversationID:(int64_t)a4
{
  v6 = a3;
  v7 = [(EDInMemoryThreadCollection *)self delegate];
  [v7 assertCorrectSchedulerForCollection:self];

  v56 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [(EDInMemoryThreadCollection *)self delegate];
  [v8 prepareToSendUpdatesInCollection:self];

  v54 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v9 = [v6 firstObject];
  v10 = [v9 conversationID];

  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:v10];
  v12 = [(EDInMemoryThreadCollection *)self _cachedInMemoryThreadForConversationID:v11];

  os_unfair_lock_lock(&self->_threadsLock);
  threadsByConversationID = self->_threadsByConversationID;
  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:v10];
  v55 = [(EFMutableOrderedDictionary *)threadsByConversationID objectForKeyedSubscript:v14];

  os_unfair_lock_unlock(&self->_threadsLock);
  if (v12)
  {
    v15 = [v12 addMessages:v6];
    v16 = [v12 thread];
    v17 = [(EDInMemoryThreadCollection *)self query];
    [(EDSortableThreadProxy *)v55 updateFromThread:v16 addingAdditionalInformation:0 query:v17];

    if (v15)
    {
      v18 = [v12 thread];
      v19 = [v18 objectID];
      [v56 setObject:v15 forKeyedSubscript:v19];

      sectionQueryHelper = self->_sectionQueryHelper;
      v21 = [v12 thread];
      LODWORD(sectionQueryHelper) = [(EDSectionQueryItemHelper *)sectionQueryHelper updateSectionForItem:v21];

      if (sectionQueryHelper)
      {
        [v54 addObject:v55];
      }
    }

LABEL_9:

    v25 = 0;
    goto LABEL_10;
  }

  if (v55)
  {
    v61 = 0;
    v60 = 0;
    v15 = [(EDInMemoryThreadCollection *)self _updateThreadProxy:v55 threadIsEmpty:&v61 thread:&v60];
    v12 = v60;
    if (v15)
    {
      v22 = [(EDSortableThreadProxy *)v55 objectID];
      [v56 setObject:v15 forKeyedSubscript:v22];

      v23 = self->_sectionQueryHelper;
      v24 = [v12 thread];
      LODWORD(v23) = [(EDSectionQueryItemHelper *)v23 updateSectionForItem:v24];

      if (v23)
      {
        [v54 addObject:v55];
      }
    }

    goto LABEL_9;
  }

  v41 = objc_alloc([(EDInMemoryThreadCollection *)self inMemoryThreadClass]);
  v42 = [(EDInMemoryThreadCollection *)self query];
  v43 = [(EDInMemoryThreadCollection *)self threadScope];
  v12 = [v41 initWithMessages:v6 originatingQuery:v42 threadScope:v43];

  v44 = [EDSortableThreadProxy alloc];
  v45 = [v12 thread];
  v46 = [(EDInMemoryThreadCollection *)self query];
  v55 = [(EDSortableThreadProxy *)v44 initWithThread:v45 originatingQuery:v46];

  v47 = self->_sectionQueryHelper;
  v48 = [v12 thread];
  [(EDSectionQueryItemHelper *)v47 updateSectionForItem:v48];

  v49 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithObjects:{v55, 0}];
  v25 = [(EDInMemoryThreadCollection *)self _mergeInThreads:v49 searchInfo:0 forMove:0];

LABEL_10:
  v26 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
  v27 = [(EDInMemoryThreadCollection *)self _cachedInMemoryThreadForConversationID:v26];

  os_unfair_lock_lock(&self->_threadsLock);
  v28 = self->_threadsByConversationID;
  v29 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
  v30 = [(EFMutableOrderedDictionary *)v28 objectForKeyedSubscript:v29];

  os_unfair_lock_unlock(&self->_threadsLock);
  v61 = 0;
  if (v27)
  {
    v31 = [v27 removeMessages:v6 threadIsEmpty:&v61];
    if (v61 == 1)
    {
      v32 = [(EDInMemoryThreadCollection *)self inMemoryThreadCache];
      v33 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
      [v32 removeObjectForKey:v33];
    }

    else
    {
      v34 = [v27 thread];
      v35 = [(EDInMemoryThreadCollection *)self query];
      [v30 updateFromThread:v34 addingAdditionalInformation:0 query:v35];
    }
  }

  else
  {
    if (!v30)
    {
      v31 = 0;
      v27 = 0;
      goto LABEL_25;
    }

    v59 = 0;
    v31 = [(EDInMemoryThreadCollection *)self _updateThreadProxy:v30 threadIsEmpty:&v61 thread:&v59];
    v27 = v59;
  }

  if (v61 == 1)
  {
    v36 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithObjects:{v30, 0}];
    v37 = [(EDInMemoryThreadCollection *)self delegate];
    v25 |= [v37 collection:self reportDeletes:v36];

    if (v25)
    {
      [(EDInMemoryThreadCollection *)self removeThreadProxies:v36 forMove:0];
    }
  }

  else if (v31)
  {
    v38 = [v30 objectID];
    [v56 setObject:v31 forKeyedSubscript:v38];

    v39 = self->_sectionQueryHelper;
    v40 = [v27 thread];
    LODWORD(v39) = [(EDSectionQueryItemHelper *)v39 updateSectionForItem:v40];

    if (v39)
    {
      [v54 addObject:v30];
    }
  }

LABEL_25:
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __84__EDInMemoryThreadCollection_conversationIDDidChangeForMessages_fromConversationID___block_invoke;
  v57[3] = &unk_1E8252A88;
  v57[4] = self;
  v50 = v54;
  v58 = v50;
  [v56 enumerateKeysAndObjectsUsingBlock:v57];
  v51 = [(EDInMemoryThreadCollection *)self delegate];
  v52 = [v51 collection:self reportChanges:v56];

  if (([(EDInMemoryThreadCollection *)self _mergeInThreads:v50 searchInfo:0 forMove:1u]| v52 | v25))
  {
    v53 = [(EDInMemoryThreadCollection *)self delegate];
    [v53 didSendUpdatesInCollection:self];
  }
}

void __84__EDInMemoryThreadCollection_conversationIDDidChangeForMessages_fromConversationID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  if ([(EDInMemoryThreadCollection *)*(a1 + 32) _messageListItemChangeAffectsSorting:a3])
  {
    v5 = *(a1 + 32);
    os_unfair_lock_lock(v5 + 14);
    v6 = *(*(a1 + 32) + 16);
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v9, "conversationID")}];
    v8 = [v6 objectForKeyedSubscript:v7];

    os_unfair_lock_unlock(v5 + 14);
    [*(a1 + 40) addObject:v8];
  }
}

- (void)conversationNotificationLevelDidChangeForConversation:(int64_t)a3 conversationID:(int64_t)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = [(EDInMemoryThreadCollection *)self delegate];
  [v7 assertCorrectSchedulerForCollection:self];

  os_unfair_lock_lock(&self->_threadsLock);
  threadsByConversationID = self->_threadsByConversationID;
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
  v10 = [(EFMutableOrderedDictionary *)threadsByConversationID objectForKeyedSubscript:v9];

  os_unfair_lock_unlock(&self->_threadsLock);
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E699AD98]);
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v11 setConversationNotificationLevel:v12];

    v13 = [(EDInMemoryThreadCollection *)self delegate];
    [v13 prepareToSendUpdatesInCollection:self];

    v14 = [(EDInMemoryThreadCollection *)self delegate];
    v15 = [v10 objectID];
    v19 = v15;
    v20[0] = v11;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    [v14 collection:self reportChanges:v16];

    v17 = [(EDInMemoryThreadCollection *)self delegate];
    [v17 didSendUpdatesInCollection:self];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_didMergeInThreads:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if (([(EDInMemoryThreadCollection *)a1 _hasLoaded]& 1) != 0)
    {
      v4 = [a1 dateSortOrder] == 1;
      v5 = [a1 dateSortOrder] != 0;
      v6 = [a1 dataSource];
      v7 = [v6 mailboxesInCollection:a1];
      v8 = [v7 mutableCopy];

      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v18 = 0;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __49__EDInMemoryThreadCollection__didMergeInThreads___block_invoke;
      v11[3] = &unk_1E8252AB0;
      v11[4] = a1;
      v13 = &v15;
      v14 = v5;
      v9 = v8;
      v12 = v9;
      [v3 enumerateObjectsWithOptions:2 * v4 usingBlock:v11];
      if (*(v16 + 24) == 1)
      {
        [(EDInMemoryThreadCollection *)a1 _notifyObserverOfOldestThreadsByMailboxObjectIDs];
        LOBYTE(a1) = *(v16 + 24);
      }

      else
      {
        LOBYTE(a1) = 0;
      }

      _Block_object_dispose(&v15, 8);
    }

    else
    {
      LOBYTE(a1) = 0;
    }
  }

  return a1 & 1;
}

void __40__EDInMemoryThreadCollection__hasLoaded__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 oldestThreadsByMailboxObjectIDs];
  v4 = v3 != 0;

  *(*(*(a1 + 32) + 8) + 24) = v4;
}

void __49__EDInMemoryThreadCollection__didMergeInThreads___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = *(a1 + 32);
  os_unfair_lock_lock(v7 + 14);
  v8 = *(*(a1 + 32) + 32);
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v6, "conversationID")}];
  v10 = [v8 objectForKeyedSubscript:v9];

  os_unfair_lock_unlock(v7 + 14);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [(EDInMemoryThreadCollection *)*(a1 + 32) _updateCurrentOldestThreadWithThreadIfApplicable:v6 forMailbox:v15];
        v17 = *(*(a1 + 48) + 8);
        if (v16)
        {
          v18 = 1;
        }

        else
        {
          v18 = *(v17 + 24);
        }

        *(v17 + 24) = v18 & 1;
        if (*(a1 + 56) == 1)
        {
          [*(a1 + 40) removeObject:{v15, v20}];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  if (*(a1 + 56) == 1 && ![*(a1 + 40) count])
  {
    *a4 = 1;
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)itemIDs
{
  v3 = [(EDInMemoryThreadCollection *)self delegate];
  [v3 assertCorrectSchedulerForCollection:self];

  v4 = [(NSMutableOrderedSet *)self->_conversationIDs array];
  v5 = [v4 ef_compactMap:&__block_literal_global_77_0];

  return v5;
}

id __37__EDInMemoryThreadCollection_itemIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_alloc(MEMORY[0x1E699AEF0]) initWithConversationID:{objc_msgSend(v2, "longLongValue")}];

  return v3;
}

- (id)sectionIdentifierForThreadObjectID:(id)a3
{
  v4 = a3;
  sectionQueryHelper = self->_sectionQueryHelper;
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v4, "conversationID")}];
  v7 = [(EDSectionQueryItemHelper *)sectionQueryHelper sectionIdentifierForID:v6];

  return v7;
}

- (EDInMemoryThreadCollectionDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (EDInMemoryThreadCollectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_cachedInMemoryThreadForConversationID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "_cachedInMemoryThreadForConversationID called with conversationID %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_updateThreadProxy:(uint64_t)a3 threadIsEmpty:(os_log_t)log thread:.cold.1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a1;
  *(buf + 6) = 2050;
  *(buf + 14) = a3;
  _os_log_impl(&dword_1C61EF000, log, OS_LOG_TYPE_DEFAULT, "%p: Thread %{public}lld no longer exists.", buf, 0x16u);
}

- (void)messagesWereChanged:(uint64_t)a1 forKeyPaths:(uint64_t)a2 deleted:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218242;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "%p: Marking threads from messages %{public}@ as deleted even though no messages were deleted.", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end