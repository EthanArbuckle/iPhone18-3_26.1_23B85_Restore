@interface NRDeviceCollectionHistory
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHistory:(id)history;
- (NRDeviceCollectionHistory)init;
- (NRDeviceCollectionHistory)initWithCoder:(id)coder;
- (NRDeviceCollectionHistory)initWithProtobuf:(id)protobuf;
- (NRPBDeviceCollectionHistory)protobuf;
- (id)_mostRecentStateBefore:(id)before;
- (id)addObserverQueue:(id)queue withBlock:(id)block;
- (id)applyDiff:(id)diff;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)deviceIDAtSwitchIndex:(unsigned int)index date:(id *)date;
- (id)historyEntryAtIndex:(unint64_t)index;
- (id)switchDeviceIDFromDiff:(id)diff;
- (unint64_t)_findIndexInHistoryStateCache:(id)cache type:(unint64_t)type;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unsigned)switchIndex;
- (void)_createIndex;
- (void)_sanitizeHistory;
- (void)_truncateHistory;
- (void)_updateHistoryCachesWithIndex:(id)index;
- (void)child:(id)child didApplyDiff:(id)diff;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)notifyHistoryObserversWithEntry:(id)entry;
- (void)pruneStateCacheItems:(unint64_t)items;
- (void)removeObserver:(id)observer;
@end

@implementation NRDeviceCollectionHistory

- (NRDeviceCollectionHistory)init
{
  v22.receiver = self;
  v22.super_class = NRDeviceCollectionHistory;
  v2 = [(NRDeviceCollectionHistory *)&v22 init];
  if (v2)
  {
    v3 = MGGetStringAnswer();
    [v3 isEqualToString:@"Watch"];
    *(v2 + 2) = 10;
    array = [MEMORY[0x1E695DF70] array];
    v5 = *(v2 + 7);
    *(v2 + 7) = array;

    v6 = [NRDeviceCollectionHistoryEntry alloc];
    date = [MEMORY[0x1E695DF00] date];
    v8 = [(NRDeviceCollectionHistoryEntry *)v6 initWithHistory:v2 index:0 date:date diff:0 switchIndex:0];

    [*(v2 + 7) addObject:v8];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v10 = *(v2 + 9);
    *(v2 + 9) = dictionary;

    array2 = [MEMORY[0x1E695DF70] array];
    v12 = *(v2 + 10);
    *(v2 + 10) = array2;

    array3 = [MEMORY[0x1E695DF70] array];
    v14 = *(v2 + 11);
    *(v2 + 11) = array3;

    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    v16 = *(v2 + 1);
    *(v2 + 1) = orderedSet;

    v17 = objc_alloc_init(NRMutableDeviceCollection);
    v18 = *(v2 + 5);
    *(v2 + 5) = v17;

    [*(v2 + 5) setParentDelegate:v2];
    atomic_store(0, v2 + 24);
    *(v2 + 7) = 0;
    *(v2 + 8) = 0;
    v19 = objc_opt_new();
    v20 = *(v2 + 8);
    *(v2 + 8) = v19;

    [(NRSwitchRecordCollection *)*(v2 + 8) addSwitchRecordWithHistoryEntry:v8];
  }

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  if (self)
  {
    switchRecords = self->_switchRecords;
  }

  else
  {
    switchRecords = 0;
  }

  coderCopy = coder;
  [(NRSwitchRecordCollection *)switchRecords truncateSwitchRecords];
  protobuf = [(NRDeviceCollectionHistory *)self protobuf];
  data = [protobuf data];
  [coderCopy encodeObject:data forKey:@"data"];

  atomic_store(0, &self->_atomicDirty);
}

- (void)_createIndex
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = self->_history;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(NRDeviceCollectionHistoryEntry *)*(*(&v16 + 1) + 8 * v7++) setHistoryManager:?];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  lastObject = [(NSMutableArray *)self->_history lastObject];
  state = [lastObject state];
  v10 = [state copyWithZone:0];
  deviceCollection = self->_deviceCollection;
  self->_deviceCollection = v10;

  v12 = self->_deviceCollection;
  if (!v12)
  {
    v13 = objc_alloc_init(NRMutableDeviceCollection);
    v14 = self->_deviceCollection;
    self->_deviceCollection = v13;

    v12 = self->_deviceCollection;
  }

  [(NRMutableStateBase *)v12 setParentDelegate:self];

  v15 = *MEMORY[0x1E69E9840];
}

- (NRDeviceCollectionHistory)initWithCoder:(id)coder
{
  v37 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(NRDeviceCollectionHistory *)self init];
  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (!v6)
  {
    v5->_startIndex = [coderCopy decodeInt64ForKey:@"startIndex"];
    v10 = MEMORY[0x1E695DFD8];
    v35[0] = objc_opt_class();
    v35[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"history"];
    history = v5->_history;
    v5->_history = v13;

    [(NRDeviceCollectionHistory *)v5 _sanitizeHistory];
    [(NRDeviceCollectionHistory *)v5 _createIndex];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"switchRecordCollection"];
    switchRecords = v5->_switchRecords;
    v5->_switchRecords = v15;

    v17 = v5->_switchRecords;
    v18 = nr_daemon_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      if (!v19)
      {
LABEL_24:
        [(NRDeviceCollectionHistory *)v5 _truncateHistory];
LABEL_25:
        v9 = v5;
        goto LABEL_26;
      }

      p_super = nr_daemon_log();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E0ADF000, p_super, OS_LOG_TYPE_DEFAULT, "Loaded switch history", buf, 2u);
      }
    }

    else
    {
      if (v19)
      {
        v21 = nr_daemon_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E0ADF000, v21, OS_LOG_TYPE_DEFAULT, "Migrating switch history", buf, 2u);
        }
      }

      v22 = [NRSwitchRecordCollection alloc];
      v23 = v5->_history;
      if (v22)
      {
        v22 = [(NRSwitchRecordCollection *)v22 init];
        if (v22)
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v24 = v23;
          v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v31 objects:buf count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v32;
            do
            {
              v28 = 0;
              do
              {
                if (*v32 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                [(NRSwitchRecordCollection *)v22 addSwitchRecordWithHistoryEntry:?];
              }

              while (v26 != v28);
              v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v31 objects:buf count:16];
            }

            while (v26);
          }
        }
      }

      p_super = &v5->_switchRecords->super.super.super;
      v5->_switchRecords = v22;
    }

    goto LABEL_24;
  }

  v7 = v6;
  v8 = [[NRPBDeviceCollectionHistory alloc] initWithData:v6];
  v9 = [(NRDeviceCollectionHistory *)v5 initWithProtobuf:v8];

LABEL_26:
  v29 = *MEMORY[0x1E69E9840];
  return v9;
}

- (NRDeviceCollectionHistory)initWithProtobuf:(id)protobuf
{
  v32 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v5 = [(NRDeviceCollectionHistory *)self init];
  v6 = v5;
  if (v5)
  {
    if (protobufCopy)
    {
      v7 = protobufCopy[1];
    }

    else
    {
      v7 = 0;
    }

    v5->_startIndex = v7;
    array = [MEMORY[0x1E695DF70] array];
    history = v6->_history;
    v6->_history = array;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    if (protobufCopy)
    {
      v10 = protobufCopy[2];
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        v15 = 0;
        do
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v27 + 1) + 8 * v15);
          v17 = v6->_history;
          v18 = [NRDeviceCollectionHistoryEntry alloc];
          v19 = [(NRDeviceCollectionHistoryEntry *)v18 initWithProtobuf:v16, v27];
          [(NSMutableArray *)v17 addObject:v19];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }

    [(NRDeviceCollectionHistory *)v6 _createIndex];
    v20 = objc_opt_new();
    switchRecords = v6->_switchRecords;
    v6->_switchRecords = v20;

    v22 = v6->_switchRecords;
    if (protobufCopy)
    {
      v23 = protobufCopy[3];
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    [(NRPBSwitchRecordCollection *)v22 mergeFrom:v24];

    [(NRDeviceCollectionHistory *)v6 _truncateHistory];
  }

  v25 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)_sanitizeHistory
{
  v18 = *MEMORY[0x1E69E9840];
  history = self->_history;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = nr_framework_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = self->_history;
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_1E0ADF000, v4, OS_LOG_TYPE_ERROR, "Deserialized history is not a supported type: %@", &buf, 0xCu);
    }

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = self->_history;
    self->_history = v8;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  v10 = self->_history;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__NRDeviceCollectionHistory__sanitizeHistory__block_invoke;
  v12[3] = &unk_1E86DC3F8;
  v12[4] = &buf;
  [(NSMutableArray *)v10 enumerateObjectsUsingBlock:v12];
  if (*(*(&buf + 1) + 40))
  {
    [(NSMutableArray *)self->_history removeObjectsAtIndexes:?];
  }

  _Block_object_dispose(&buf, 8);

  v11 = *MEMORY[0x1E69E9840];
}

void __45__NRDeviceCollectionHistory__sanitizeHistory__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = nr_framework_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = nr_framework_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v16 = 134218242;
        v17 = a3;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_1E0ADF000, v8, OS_LOG_TYPE_DEFAULT, "History entry at index %lu is not recognized type: %@", &v16, 0x16u);
      }
    }

    v11 = *(*(*(a1 + 32) + 8) + 40);
    if (!v11)
    {
      v12 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v13 = *(*(a1 + 32) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v11 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v11 addIndex:a3];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (NRPBDeviceCollectionHistory)protobuf
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = v3;
  if (v3)
  {
    startIndex = self->_startIndex;
    *(v3 + 32) |= 1u;
    *(v3 + 8) = startIndex;
  }

  array = [MEMORY[0x1E695DF70] array];
  [(NRPBDeviceCollectionHistory *)v4 setHistorys:array];

  [(NRPBDeviceCollectionHistory *)v4 setSwitchRecords:?];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_history;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        if (v4)
        {
          v13 = v4[2];
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;
        protobuf = [v12 protobuf];
        [v14 addObject:protobuf];

        ++v11;
      }

      while (v9 != v11);
      v16 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v9 = v16;
    }

    while (v16);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v4;
}

- (unint64_t)_findIndexInHistoryStateCache:(id)cache type:(unint64_t)type
{
  historyStateCacheIndex = self->_historyStateCacheIndex;
  cacheCopy = cache;
  v7 = [(NSMutableArray *)historyStateCacheIndex indexOfObject:cacheCopy inSortedRange:0 options:[(NSMutableArray *)historyStateCacheIndex count] usingComparator:type, &__block_literal_global_148];

  return v7;
}

uint64_t __64__NRDeviceCollectionHistory__findIndexInHistoryStateCache_type___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 longLongValue];
  if (v6 <= [v5 longLongValue])
  {
    v8 = [v4 longLongValue];
    if (v8 >= [v5 longLongValue])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)_mostRecentStateBefore:(id)before
{
  beforeCopy = before;
  if ([(NSMutableArray *)self->_historyStateCacheIndex count])
  {
    v5 = [(NSMutableDictionary *)self->_historyStateCache objectForKeyedSubscript:beforeCopy];

    if (v5)
    {
      v6 = beforeCopy;
LABEL_6:
      v8 = v6;
      goto LABEL_8;
    }

    v7 = [(NRDeviceCollectionHistory *)self _findIndexInHistoryStateCache:beforeCopy type:1024];
    if (v7)
    {
      v6 = [(NSMutableArray *)self->_historyStateCacheIndex objectAtIndexedSubscript:v7 - 1];
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (void)_updateHistoryCachesWithIndex:(id)index
{
  indexCopy = index;
  [(NSMutableArray *)self->_historyStateCacheMRU removeObject:indexCopy];
  [(NSMutableArray *)self->_historyStateCacheMRU insertObject:indexCopy atIndex:0];
  if (![(NSMutableArray *)self->_historyStateCacheIndex count])
  {
    historyStateCacheIndex = self->_historyStateCacheIndex;
    goto LABEL_6;
  }

  v4 = [(NRDeviceCollectionHistory *)self _findIndexInHistoryStateCache:indexCopy type:1024];
  v5 = [(NSMutableArray *)self->_historyStateCacheIndex count];
  historyStateCacheIndex = self->_historyStateCacheIndex;
  if (v4 == v5)
  {
LABEL_6:
    [(NSMutableArray *)historyStateCacheIndex addObject:indexCopy];
    goto LABEL_7;
  }

  v7 = [(NSMutableArray *)historyStateCacheIndex objectAtIndexedSubscript:v4];
  v8 = [indexCopy isEqual:v7];

  if ((v8 & 1) == 0)
  {
    [(NSMutableArray *)self->_historyStateCacheIndex insertObject:indexCopy atIndex:v4];
  }

LABEL_7:
  [(NRDeviceCollectionHistory *)self pruneStateCacheItems:1];
}

- (void)pruneStateCacheItems:(unint64_t)items
{
  for (i = self->_historyStateCacheMRU; [(NSMutableArray *)i count]> items; i = self->_historyStateCacheMRU)
  {
    lastObject = [(NSMutableArray *)self->_historyStateCacheMRU lastObject];
    [(NSMutableArray *)self->_historyStateCacheMRU removeLastObject];
    [(NSMutableDictionary *)self->_historyStateCache removeObjectForKey:lastObject];
    [(NSMutableArray *)self->_historyStateCacheIndex removeObject:lastObject];
  }
}

- (void)_truncateHistory
{
  v54 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  firstObject = [(NSMutableArray *)self->_history firstObject];
  date2 = [firstObject date];

  [date timeIntervalSinceDate:date2];
  v7 = v6;
  if ([(NRDeviceCollectionHistory *)self count]>= 5 && ([(NRDeviceCollectionHistory *)self count]> self->_maxHistoryDepth || v7 > 86400.0))
  {
    v8 = objc_autoreleasePoolPush();
    v45 = objc_alloc_init(NRMutableDeviceCollection);
    context = v8;
    if ([(NSMutableArray *)self->_history count]<= self->_maxHistoryDepth)
    {
      v46 = 0;
    }

    else
    {
      v46 = [(NSMutableArray *)self->_history count]- self->_maxHistoryDepth;
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v9 = self->_history;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v48;
      while (2)
      {
        v14 = 0;
        v15 = v12;
        v12 += v11;
        do
        {
          if (*v48 != v13)
          {
            objc_enumerationMutation(v9);
          }

          date3 = [*(*(&v47 + 1) + 8 * v14) date];
          [date timeIntervalSinceDate:date3];
          v18 = v17;

          if (v18 <= 86400.0)
          {
            v12 = v15;
            goto LABEL_18;
          }

          ++v15;
          ++v14;
        }

        while (v11 != v14);
        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v47 objects:v53 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_18:

    if (v46 <= v12)
    {
      v19 = v12;
    }

    else
    {
      v19 = v46;
    }

    v20 = [(NRDeviceCollectionHistory *)self count];
    if (v19 >= v20 - 4)
    {
      v21 = v20 - 4;
    }

    else
    {
      v21 = v19;
    }

    v22 = [(NSMutableArray *)self->_history objectAtIndexedSubscript:v21];
    state = [v22 state];
    v24 = nr_daemon_log();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

    if (v25)
    {
      v26 = nr_daemon_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v52 = state;
        _os_log_impl(&dword_1E0ADF000, v26, OS_LOG_TYPE_DEFAULT, "Device collection migrated to most recent history entry %p", buf, 0xCu);
      }
    }

    v43 = v22;
    v27 = [NRMutableDeviceCollection diffFrom:v45 to:state];
    v28 = nr_daemon_log();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

    if (v29)
    {
      v30 = nr_daemon_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v52 = v21;
        _os_log_impl(&dword_1E0ADF000, v30, OS_LOG_TYPE_DEFAULT, "Deleting %lld items from history", buf, 0xCu);
      }
    }

    obj = v27;
    v42 = state;
    if (v21)
    {
      for (i = 0; i != v21; ++i)
      {
        v32 = [(NSMutableArray *)self->_history objectAtIndex:i];
        v33 = nr_daemon_log();
        v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

        if (v34)
        {
          v35 = nr_daemon_log();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            if (v32)
            {
              v36 = v32[5];
            }

            else
            {
              v36 = 0;
            }

            *buf = 134217984;
            v52 = v36;
            _os_log_impl(&dword_1E0ADF000, v35, OS_LOG_TYPE_DEFAULT, "Clearing historical device collection %p", buf, 0xCu);
          }
        }

        [(NRDeviceCollectionHistoryEntry *)v32 setHistoryManager:?];
      }
    }

    [(NSMutableArray *)self->_history removeObjectsInRange:0, v21];
    self->_startIndex += v21;
    if (v43)
    {
      objc_storeStrong(v43 + 4, obj);
    }

    if ([(NSMutableArray *)self->_historyStateCacheIndex count])
    {
      v37 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_startIndex];
      v38 = [(NRDeviceCollectionHistory *)self _findIndexInHistoryStateCache:v37 type:1024];

      if (v38 == [(NSMutableArray *)self->_historyStateCacheIndex count])
      {
        [(NSMutableDictionary *)self->_historyStateCache removeAllObjects];
        [(NSMutableArray *)self->_historyStateCacheIndex removeAllObjects];
        [(NSMutableArray *)self->_historyStateCacheMRU removeAllObjects];
      }

      else
      {
        for (; v38; --v38)
        {
          firstObject2 = [(NSMutableArray *)self->_historyStateCacheIndex firstObject];
          [(NSMutableDictionary *)self->_historyStateCache removeObjectForKey:firstObject2];
          [(NSMutableArray *)self->_historyStateCacheIndex removeObject:firstObject2];
          [(NSMutableArray *)self->_historyStateCacheMRU removeObject:firstObject2];
        }
      }
    }

    objc_autoreleasePoolPop(context);
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (id)historyEntryAtIndex:(unint64_t)index
{
  startIndex = self->_startIndex;
  if (startIndex > index || [(NSMutableArray *)self->_history count]+ startIndex <= index)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_history objectAtIndexedSubscript:index - self->_startIndex];
  }

  return v6;
}

- (id)applyDiff:(id)diff
{
  diffCopy = diff;
  if ([diffCopy count])
  {
    v5 = [(NRMutableDeviceCollection *)self->_deviceCollection applyDiff:diffCopy upOnly:0 notifyParent:1 unconditional:0];

    if (v5)
    {
      lastObject = [(NSMutableArray *)self->_history lastObject];
      diffCopy = v5;
    }

    else
    {
      lastObject = 0;
      diffCopy = 0;
    }
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (id)addObserverQueue:(id)queue withBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  v8 = objc_alloc_init(NRDeviceCollectionHistoryObserverWrapper);
  [(NRDeviceCollectionHistoryObserverWrapper *)v8 setObserver:blockCopy];

  [(NRDeviceCollectionHistoryObserverWrapper *)v8 setQueue:queueCopy];
  os_unfair_lock_lock(&self->_observerLock);
  [(NSMutableOrderedSet *)self->_observers addObject:v8];
  os_unfair_lock_unlock(&self->_observerLock);

  return v8;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observerLock);
  [(NSMutableOrderedSet *)self->_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_observerLock);
}

- (void)child:(id)child didApplyDiff:(id)diff
{
  childCopy = child;
  diffCopy = diff;
  if (diffCopy && self->_deviceCollection == childCopy)
  {
    LODWORD(v7) = [(NRDeviceCollectionHistory *)self switchIndex];
    v8 = [(NRDeviceCollectionHistory *)self switchDeviceIDFromDiff:diffCopy];

    if (v8)
    {
      v7 = (v7 + 1);
    }

    else
    {
      v7 = v7;
    }

    v9 = [NRDeviceCollectionHistoryEntry alloc];
    startIndex = self->_startIndex;
    v11 = [(NSMutableArray *)self->_history count];
    date = [MEMORY[0x1E695DF00] date];
    v13 = [(NRDeviceCollectionHistoryEntry *)v9 initWithHistory:self index:v11 + startIndex date:date diff:diffCopy switchIndex:v7];

    [(NSMutableArray *)self->_history addObject:v13];
    [(NRSwitchRecordCollection *)self->_switchRecords addSwitchRecordWithHistoryEntry:v13];
    [(NRDeviceCollectionHistory *)self _truncateHistory];
    atomic_store(1u, &self->_atomicDirty);
    [(NRDeviceCollectionHistory *)self notifyHistoryObserversWithEntry:v13];
  }
}

- (unsigned)switchIndex
{
  switchRecords = self->_switchRecords;
  if (switchRecords)
  {
    switchRecords = switchRecords->super._records;
  }

  v3 = switchRecords;
  lastObject = [(NRSwitchRecordCollection *)v3 lastObject];
  if (lastObject)
  {
    v5 = lastObject[6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)switchDeviceIDFromDiff:(id)diff
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  diffCopy = diff;
  v4 = [diffCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v18 = *v20;
    v17 = @"isActive";
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v18)
        {
          objc_enumerationMutation(diffCopy);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = [diffCopy objectForKeyedSubscript:{v7, v17}];
        diff = [v8 diff];
        v10 = [diff objectForKeyedSubscript:v17];
        diff2 = [v10 diff];
        value = [diff2 value];
        v13 = [value isEqual:MEMORY[0x1E695E118]];

        if (v13)
        {
          v14 = v7;

          goto LABEL_11;
        }
      }

      v5 = [diffCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)deviceIDAtSwitchIndex:(unsigned int)index date:(id *)date
{
  switchRecords = self->_switchRecords;
  if (!switchRecords || (v7 = switchRecords->super._records, v7, !v7))
  {
    toUUID = 0;
    goto LABEL_15;
  }

  v8 = objc_opt_new();
  v9 = v8;
  if (v8)
  {
    *(v8 + 28) |= 2u;
    *(v8 + 24) = index;
  }

  v10 = switchRecords->super._records;
  v11 = switchRecords->super._records;
  v12 = [(NSMutableArray *)v10 indexOfObject:v9 inSortedRange:0 options:[(NSMutableArray *)v11 count] usingComparator:256, &__block_literal_global_5];

  toUUID = 0;
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [(NSMutableArray *)switchRecords->super._records objectAtIndexedSubscript:v12];
    v15 = objc_opt_new();
    [(NRPBSwitchRecord *)v15 mergeFrom:v14];
    if (v15)
    {
      v16 = *(v15 + 16);
      toUUID = [v16 toUUID];

      if (!date)
      {
LABEL_13:

        goto LABEL_14;
      }

      if (*(v15 + 28))
      {
        v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:*(v15 + 8)];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      toUUID = 0;
      v17 = 0;
      if (!date)
      {
        goto LABEL_13;
      }
    }

    *date = v17;
    goto LABEL_13;
  }

LABEL_14:

LABEL_15:

  return toUUID;
}

- (void)notifyHistoryObserversWithEntry:(id)entry
{
  v23 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  os_unfair_lock_lock(&self->_observerLock);
  v5 = [(NSMutableOrderedSet *)self->_observers copy];
  os_unfair_lock_unlock(&self->_observerLock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        queue = [v11 queue];

        if (queue)
        {
          queue2 = [v11 queue];
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __61__NRDeviceCollectionHistory_notifyHistoryObserversWithEntry___block_invoke;
          v16[3] = &unk_1E86DAF10;
          v16[4] = v11;
          v17 = entryCopy;
          dispatch_async(queue2, v16);
        }

        else
        {
          observer = [v11 observer];
          (observer)[2](observer, entryCopy, v11);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __61__NRDeviceCollectionHistory_notifyHistoryObserversWithEntry___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 32));
}

- (void)invalidate
{
  [(NRMutableDeviceCollection *)self->_deviceCollection invalidate];
  os_unfair_lock_lock(&self->_observerLock);
  [(NSMutableOrderedSet *)self->_observers removeAllObjects];
  os_unfair_lock_unlock(&self->_observerLock);
  [(NSMutableArray *)self->_history removeAllObjects];
  [(NSMutableDictionary *)self->_historyStateCache removeAllObjects];
  [(NSMutableArray *)self->_historyStateCacheMRU removeAllObjects];
  historyStateCacheIndex = self->_historyStateCacheIndex;

  [(NSMutableArray *)historyStateCacheIndex removeAllObjects];
}

- (id)description
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_history;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    v6 = &stru_1F5B7BE00;
    do
    {
      v7 = 0;
      v8 = v6;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v9 = [*(*(&v12 + 1) + 8 * v7) description];
        v6 = [(__CFString *)v8 stringByAppendingString:v9];

        ++v7;
        v8 = v6;
      }

      while (v4 != v7);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = &stru_1F5B7BE00;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v8 = [(NSMutableArray *)self->_history copy];
  v9 = [v8 countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NRDeviceCollectionHistory *)self isEqualToHistory:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToHistory:(id)history
{
  historyCopy = history;
  v5 = historyCopy;
  v6 = historyCopy == self || historyCopy && [(NRMutableDeviceCollection *)self->_deviceCollection isEqual:historyCopy->_deviceCollection]&& self->_startIndex == v5->_startIndex;

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 48) = self->_startIndex;
  v6 = [(NSMutableArray *)self->_history mutableCopyWithZone:zone];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = *(v5 + 56);
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(NRDeviceCollectionHistoryEntry *)*(*(&v22 + 1) + 8 * v12++) setHistoryManager:v5];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  lastObject = [*(v5 + 56) lastObject];
  state = [lastObject state];
  v15 = [state copyWithZone:0];
  v16 = *(v5 + 40);
  *(v5 + 40) = v15;

  v17 = *(v5 + 40);
  if (!v17)
  {
    v18 = objc_alloc_init(NRMutableDeviceCollection);
    v19 = *(v5 + 40);
    *(v5 + 40) = v18;

    v17 = *(v5 + 40);
  }

  [v17 setParentDelegate:v5];
  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

@end