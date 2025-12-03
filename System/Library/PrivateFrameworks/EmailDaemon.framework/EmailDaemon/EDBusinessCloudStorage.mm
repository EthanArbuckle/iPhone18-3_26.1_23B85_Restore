@interface EDBusinessCloudStorage
- (BOOL)_setLastSeenDate:(id)date forCategoryType:(id)type onDictionary:(id)dictionary isDisplayDate:(BOOL)displayDate;
- (EDBusinessCloudStorage)initWithBusinessPersistence:(id)persistence categoryPersistence:(id)categoryPersistence messagePersistence:(id)messagePersistence hookRegistry:(id)registry;
- (id)_categoryStringForCategoryType:(id)type;
- (id)_dateForKey:(id)key categoryType:(id)type businessWithExternalID:(id)d;
- (id)_dictionaryForBusiness:(id)business;
- (id)_hashSchemeForGrouping:(int64_t)grouping;
- (id)_mutableDictionaryForBusiness:(id)business;
- (id)_syncKeyForExternalID:(id)d;
- (id)categoryForBusinessWithExternalID:(id)d lastModifiedDate:(id *)date;
- (id)lastSeenDateForCategoryType:(id)type businessWithExternalID:(id)d;
- (id)lastSeenDisplayDateForCategoryType:(id)type businessWithExternalID:(id)d;
- (id)mergeChangesForRemotelyChangedKeys:(id)keys localStore:(id)store cloudStore:(id)cloudStore;
- (void)_removeDictionaryForBusiness:(id)business;
- (void)_setMutableDictionary:(id)dictionary forBusiness:(id)business;
- (void)_updateCategoryOverrideForBusinessExternalID:(id)d;
- (void)_updateCategoryOverrideForBusinessID:(int64_t)d withBusinessExternalID:(id)iD;
- (void)beginObserving:(id)observing;
- (void)persistedDictionaryDidChangeRemotelyWithChangedItems:(id)items deletedItems:(id)deletedItems;
- (void)removeAllEntries;
- (void)removeCategoryForBusinessWithExternalID:(id)d;
- (void)removeCategoryForBusinessWithExternalID:(id)d withLastModifiedDate:(id)date;
- (void)scheduleRecurringActivity;
- (void)setCategory:(unint64_t)category forBusinessWithExternalID:(id)d;
- (void)setCategory:(unint64_t)category forBusinessWithExternalID:(id)d withLastModifiedDate:(id)date;
- (void)setIfNeededLastSeenDate:(id)date andDisplayDate:(id)displayDate forCategoryType:(id)type businessWithExternalID:(id)d;
- (void)stopObserving:(id)observing;
@end

@implementation EDBusinessCloudStorage

void ___ef_log_EDBusinessCloudStorage_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EDBusinessCloudStorage");
  v1 = _ef_log_EDBusinessCloudStorage_log;
  _ef_log_EDBusinessCloudStorage_log = v0;
}

- (EDBusinessCloudStorage)initWithBusinessPersistence:(id)persistence categoryPersistence:(id)categoryPersistence messagePersistence:(id)messagePersistence hookRegistry:(id)registry
{
  persistenceCopy = persistence;
  categoryPersistenceCopy = categoryPersistence;
  messagePersistenceCopy = messagePersistence;
  registryCopy = registry;
  v27.receiver = self;
  v27.super_class = EDBusinessCloudStorage;
  v14 = [(EDBusinessCloudStorage *)&v27 init];
  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x1E699B7E0]);
    syncKeyCache = v14->_syncKeyCache;
    v14->_syncKeyCache = v15;

    v17 = objc_alloc(MEMORY[0x1E699B7F0]);
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = [v17 initWithObject:v18];
    deletedKeyMap = v14->_deletedKeyMap;
    v14->_deletedKeyMap = v19;

    v21 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"EDBusinessCloudStorage.observerScheduler"];
    observerScheduler = v14->_observerScheduler;
    v14->_observerScheduler = v21;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v14->_observers;
    v14->_observers = weakObjectsHashTable;

    objc_storeStrong(&v14->_businessPersistence, persistence);
    objc_storeStrong(&v14->_categoryPersistence, categoryPersistence);
    objc_storeStrong(&v14->_messagePersistence, messagePersistence);
    [registryCopy registerBusinessChangeHookResponder:v14];
  }

  return v14;
}

- (void)scheduleRecurringActivity
{
  v3 = [objc_alloc(MEMORY[0x1E699AF10]) initWithIdentifier:@"com.apple.mail.businesses" encrypted:1 delegate:self];
  persistentDictionary = self->_persistentDictionary;
  self->_persistentDictionary = v3;
}

- (void)beginObserving:(id)observing
{
  observingCopy = observing;
  observerScheduler = [(EDBusinessCloudStorage *)self observerScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__EDBusinessCloudStorage_beginObserving___block_invoke;
  v7[3] = &unk_1E8250128;
  v7[4] = self;
  v6 = observingCopy;
  v8 = v6;
  [observerScheduler performBlock:v7];
}

- (void)stopObserving:(id)observing
{
  observingCopy = observing;
  observerScheduler = [(EDBusinessCloudStorage *)self observerScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__EDBusinessCloudStorage_stopObserving___block_invoke;
  v7[3] = &unk_1E8250128;
  v7[4] = self;
  v6 = observingCopy;
  v8 = v6;
  [observerScheduler performBlock:v7];
}

- (id)categoryForBusinessWithExternalID:(id)d lastModifiedDate:(id *)date
{
  dCopy = d;
  v7 = [(EDBusinessCloudStorage *)self _dictionaryForBusiness:dCopy];
  v8 = [v7 objectForKeyedSubscript:@"category"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 objectForKeyedSubscript:@"type"];
    v10 = [v8 objectForKeyedSubscript:@"lastModified"];
    v11 = v10;
    if (v10)
    {
      v12 = MEMORY[0x1E695DF00];
      [v10 doubleValue];
      v13 = [v12 dateWithTimeIntervalSince1970:?];
      if (!date)
      {
LABEL_5:

        goto LABEL_12;
      }
    }

    else
    {
      v13 = 0;
      if (!date)
      {
        goto LABEL_5;
      }
    }

    v13 = v13;
    *date = v13;
    goto LABEL_5;
  }

  if (v8)
  {
    v14 = _ef_log_EDBusinessCloudStorage();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [EDBusinessCloudStorage categoryForBusinessWithExternalID:lastModifiedDate:];
    }
  }

  v9 = 0;
  if (date)
  {
    *date = 0;
  }

LABEL_12:

  return v9;
}

- (void)setCategory:(unint64_t)category forBusinessWithExternalID:(id)d
{
  dCopy = d;
  v6 = [MEMORY[0x1E695DF00] now];
  [(EDBusinessCloudStorage *)self setCategory:category forBusinessWithExternalID:dCopy withLastModifiedDate:v6];
}

- (void)setCategory:(unint64_t)category forBusinessWithExternalID:(id)d withLastModifiedDate:(id)date
{
  v32 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  v10 = [(EDBusinessCloudStorage *)self _mutableDictionaryForBusiness:dCopy];
  v11 = [v10 objectForKeyedSubscript:@"category"];
  v12 = [v11 objectForKeyedSubscript:@"lastModified"];

  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x1E695DF00]);
    [v12 doubleValue];
    v14 = [v13 initWithTimeIntervalSince1970:?];
    if ([dateCopy ef_isEarlierThanOrEqualDate:v14])
    {
      v15 = _ef_log_EDBusinessCloudStorage();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218754;
        categoryCopy2 = category;
        v26 = 2114;
        v27 = dateCopy;
        v28 = 2114;
        v29 = v14;
        v30 = 2114;
        v31 = dCopy;
        _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "Skipping setting category to %lu (%{public}@ older than %{public}@) for business: %{public}@", buf, 0x2Au);
      }

      goto LABEL_10;
    }
  }

  v16 = _ef_log_EDBusinessCloudStorage();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    categoryCopy2 = category;
    v26 = 2114;
    v27 = dCopy;
    _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Setting category to %lu for business: %{public}@", buf, 0x16u);
  }

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{category, @"type"}];
  v22[1] = @"lastModified";
  v23[0] = v17;
  v18 = MEMORY[0x1E696AD98];
  [dateCopy timeIntervalSince1970];
  v19 = [v18 numberWithDouble:?];
  v23[1] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  [v10 setObject:v20 forKeyedSubscript:@"category"];

  [(EDBusinessCloudStorage *)self _setMutableDictionary:v10 forBusiness:dCopy];
LABEL_10:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)removeCategoryForBusinessWithExternalID:(id)d
{
  dCopy = d;
  v4 = [MEMORY[0x1E695DF00] now];
  [(EDBusinessCloudStorage *)self removeCategoryForBusinessWithExternalID:dCopy withLastModifiedDate:v4];
}

- (void)removeCategoryForBusinessWithExternalID:(id)d withLastModifiedDate:(id)date
{
  v27 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  v8 = [(EDBusinessCloudStorage *)self _mutableDictionaryForBusiness:dCopy];
  v9 = [v8 objectForKeyedSubscript:@"category"];
  v10 = [v9 objectForKeyedSubscript:@"lastModified"];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x1E695DF00]);
    [v10 doubleValue];
    v12 = [v11 initWithTimeIntervalSince1970:?];
    if ([dateCopy ef_isEarlierThanOrEqualDate:v12])
    {
      v13 = _ef_log_EDBusinessCloudStorage();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v22 = dateCopy;
        v23 = 2114;
        v24 = v12;
        v25 = 2114;
        v26 = dCopy;
        _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Skipping removing category (%{public}@ older than %{public}@) for business: %{public}@", buf, 0x20u);
      }

      goto LABEL_10;
    }
  }

  v14 = _ef_log_EDBusinessCloudStorage();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = dCopy;
    _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "Removing category for business: %{public}@", buf, 0xCu);
  }

  v15 = MEMORY[0x1E696AD98];
  [dateCopy timeIntervalSince1970];
  v16 = [v15 numberWithDouble:?];
  v20 = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  [v8 setObject:v17 forKeyedSubscript:@"category"];

  [(EDBusinessCloudStorage *)self _setMutableDictionary:v8 forBusiness:dCopy];
LABEL_10:

  v18 = *MEMORY[0x1E69E9840];
}

- (id)lastSeenDateForCategoryType:(id)type businessWithExternalID:(id)d
{
  v4 = [(EDBusinessCloudStorage *)self _dateForKey:@"lastSeenDates" categoryType:type businessWithExternalID:d];

  return v4;
}

- (id)lastSeenDisplayDateForCategoryType:(id)type businessWithExternalID:(id)d
{
  v4 = [(EDBusinessCloudStorage *)self _dateForKey:@"lastSeenDisplayDates" categoryType:type businessWithExternalID:d];

  return v4;
}

- (id)_dateForKey:(id)key categoryType:(id)type businessWithExternalID:(id)d
{
  keyCopy = key;
  typeCopy = type;
  dCopy = d;
  v11 = [(EDBusinessCloudStorage *)self _dictionaryForBusiness:dCopy];
  v12 = [v11 objectForKeyedSubscript:keyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [(EDBusinessCloudStorage *)self _categoryStringForCategoryType:typeCopy];
    v14 = [v12 objectForKeyedSubscript:v13];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = MEMORY[0x1E695DF00];
      [v14 doubleValue];
      v16 = [v15 dateWithTimeIntervalSince1970:?];
    }

    else
    {
      if (v14)
      {
        v17 = _ef_log_EDBusinessCloudStorage();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [EDBusinessCloudStorage _dateForKey:categoryType:businessWithExternalID:];
        }
      }

      v16 = 0;
    }

LABEL_14:
    goto LABEL_15;
  }

  if (v12)
  {
    v13 = _ef_log_EDBusinessCloudStorage();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [EDBusinessCloudStorage _dateForKey:categoryType:businessWithExternalID:];
    }

    v16 = 0;
    goto LABEL_14;
  }

  v16 = 0;
LABEL_15:

  return v16;
}

- (void)setIfNeededLastSeenDate:(id)date andDisplayDate:(id)displayDate forCategoryType:(id)type businessWithExternalID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  displayDateCopy = displayDate;
  typeCopy = type;
  dCopy = d;
  v14 = _ef_log_EDBusinessCloudStorage();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138544130;
    v18 = dateCopy;
    v19 = 2114;
    v20 = displayDateCopy;
    v21 = 2114;
    v22 = dCopy;
    v23 = 2114;
    v24 = typeCopy;
    _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "Updating last seen date to %{public}@ and display date to %{public}@ for business: %{public}@, category: %{public}@", &v17, 0x2Au);
  }

  v15 = [(EDBusinessCloudStorage *)self _mutableDictionaryForBusiness:dCopy];
  [(EDBusinessCloudStorage *)self _setLastSeenDate:dateCopy forCategoryType:typeCopy onDictionary:v15 isDisplayDate:0];
  [(EDBusinessCloudStorage *)self _setLastSeenDate:displayDateCopy forCategoryType:typeCopy onDictionary:v15 isDisplayDate:1];
  [(EDBusinessCloudStorage *)self _setMutableDictionary:v15 forBusiness:dCopy];

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)_setLastSeenDate:(id)date forCategoryType:(id)type onDictionary:(id)dictionary isDisplayDate:(BOOL)displayDate
{
  displayDateCopy = displayDate;
  v36 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  dictionaryCopy = dictionary;
  v12 = @"lastSeenDates";
  if (displayDateCopy)
  {
    v12 = @"lastSeenDisplayDates";
  }

  v13 = v12;
  v14 = [(EDBusinessCloudStorage *)self _categoryStringForCategoryType:type];
  v15 = [dictionaryCopy objectForKeyedSubscript:v13];
  v16 = [v15 mutableCopy];
  v17 = v16;
  if (v16)
  {
    dictionary = v16;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v19 = dictionary;

  v20 = [v19 objectForKeyedSubscript:v14];
  v21 = v20;
  if (v20 && (v22 = MEMORY[0x1E695DF00], [v20 doubleValue], objc_msgSend(v22, "dateWithTimeIntervalSince1970:"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(dateCopy, "ef_isLaterThanDate:", v23), v23, !v24))
  {
    v29 = 0;
  }

  else
  {
    v25 = _ef_log_EDBusinessCloudStorage();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = &stru_1F45B4608;
      if (displayDateCopy)
      {
        v26 = @" display";
      }

      v32 = 138412546;
      v33 = v26;
      v34 = 2114;
      v35 = dateCopy;
      _os_log_impl(&dword_1C61EF000, v25, OS_LOG_TYPE_INFO, "Setting last seen%@ date to %{public}@", &v32, 0x16u);
    }

    v27 = MEMORY[0x1E696AD98];
    [dateCopy timeIntervalSince1970];
    v28 = [v27 numberWithDouble:?];
    [v19 setObject:v28 forKeyedSubscript:v14];

    [dictionaryCopy setObject:v19 forKeyedSubscript:v13];
    v29 = 1;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

- (void)removeAllEntries
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _ef_log_EDBusinessCloudStorage();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    persistentDictionary = [(EDBusinessCloudStorage *)self persistentDictionary];
    v7 = 134217984;
    v8 = [persistentDictionary count];
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Clearing all data with oldCount:%lu", &v7, 0xCu);
  }

  persistentDictionary2 = [(EDBusinessCloudStorage *)self persistentDictionary];
  [persistentDictionary2 removeAllObjects];

  v6 = *MEMORY[0x1E69E9840];
}

- (id)_syncKeyForExternalID:(id)d
{
  dCopy = d;
  syncKeyCache = [(EDBusinessCloudStorage *)self syncKeyCache];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__EDBusinessCloudStorage__syncKeyForExternalID___block_invoke;
  v9[3] = &unk_1E8250CA8;
  v9[4] = self;
  v6 = dCopy;
  v10 = v6;
  v7 = [syncKeyCache objectForKey:v6 generator:v9];

  return v7;
}

id __48__EDBusinessCloudStorage__syncKeyForExternalID___block_invoke(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = [*(a1 + 32) _hashSchemeForGrouping:{objc_msgSend(*(a1 + 40), "grouping")}];
  v3 = [*v1 serializedRepresentation];
  v4 = [objc_alloc(MEMORY[0x1E699B990]) initWithString:v3];
  v5 = [v4 hexStringValue];
  v6 = [v5 rangeOfString:@"0x" options:8];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v5 substringFromIndex:v6 + v7];
  }

  if ([v8 length])
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v9 setScheme:v2];
    [v9 setHost:v8];
    v10 = [v9 string];
  }

  else
  {
    v11 = _ef_log_EDBusinessCloudStorage();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __48__EDBusinessCloudStorage__syncKeyForExternalID___block_invoke_cold_1(v1, v11, v12, v13, v14, v15, v16, v17);
    }

    v10 = 0;
  }

  return v10;
}

- (id)_hashSchemeForGrouping:(int64_t)grouping
{
  if (grouping > 4)
  {
    return @"bh-addr";
  }

  else
  {
    return off_1E8250D40[grouping];
  }
}

- (void)_removeDictionaryForBusiness:(id)business
{
  v5 = [(EDBusinessCloudStorage *)self _syncKeyForExternalID:business];
  persistentDictionary = [(EDBusinessCloudStorage *)self persistentDictionary];
  [persistentDictionary removeObjectForKey:v5];
}

- (id)_dictionaryForBusiness:(id)business
{
  businessCopy = business;
  v5 = [(EDBusinessCloudStorage *)self _syncKeyForExternalID:businessCopy];
  persistentDictionary = [(EDBusinessCloudStorage *)self persistentDictionary];
  v7 = [persistentDictionary objectForKeyedSubscript:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    if (v7)
    {
      v9 = _ef_log_EDBusinessCloudStorage();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [EDBusinessCloudStorage _dictionaryForBusiness:];
      }
    }

    v8 = 0;
  }

  return v8;
}

- (id)_mutableDictionaryForBusiness:(id)business
{
  v3 = [(EDBusinessCloudStorage *)self _dictionaryForBusiness:business];
  v4 = [v3 mutableCopy];
  v5 = v4;
  if (v4)
  {
    dictionary = v4;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v7 = dictionary;

  return v7;
}

- (void)_setMutableDictionary:(id)dictionary forBusiness:(id)business
{
  dictionaryCopy = dictionary;
  businessCopy = business;
  v7 = [(EDBusinessCloudStorage *)self _syncKeyForExternalID:businessCopy];
  serializedRepresentation = [businessCopy serializedRepresentation];
  [dictionaryCopy setObject:serializedRepresentation forKeyedSubscript:@"id"];

  persistentDictionary = [(EDBusinessCloudStorage *)self persistentDictionary];
  [persistentDictionary setObject:dictionaryCopy forKeyedSubscript:v7];
}

- (id)_categoryStringForCategoryType:(id)type
{
  typeCopy = type;
  v4 = typeCopy;
  if (typeCopy)
  {
    [typeCopy unsignedIntegerValue];
    v5 = EMStringFromCategoryType();
  }

  else
  {
    v5 = @"None";
  }

  return v5;
}

- (void)persistedDictionaryDidChangeRemotelyWithChangedItems:(id)items deletedItems:(id)deletedItems
{
  itemsCopy = items;
  deletedItemsCopy = deletedItems;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __92__EDBusinessCloudStorage_persistedDictionaryDidChangeRemotelyWithChangedItems_deletedItems___block_invoke;
  v23[3] = &unk_1E8250CD0;
  v9 = v8;
  v24 = v9;
  selfCopy = self;
  [itemsCopy enumerateKeysAndObjectsUsingBlock:v23];
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(deletedItemsCopy, "count")}];
  deletedKeyMap = [(EDBusinessCloudStorage *)self deletedKeyMap];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __92__EDBusinessCloudStorage_persistedDictionaryDidChangeRemotelyWithChangedItems_deletedItems___block_invoke_2;
  v20[3] = &unk_1E8250CF8;
  v12 = deletedItemsCopy;
  v21 = v12;
  v13 = v10;
  v22 = v13;
  [deletedKeyMap performWhileLocked:v20];

  observerScheduler = [(EDBusinessCloudStorage *)self observerScheduler];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __92__EDBusinessCloudStorage_persistedDictionaryDidChangeRemotelyWithChangedItems_deletedItems___block_invoke_3;
  v17[3] = &unk_1E8250720;
  v17[4] = self;
  v15 = v9;
  v18 = v15;
  v16 = v13;
  v19 = v16;
  [observerScheduler performBlock:v17];
}

void __92__EDBusinessCloudStorage_persistedDictionaryDidChangeRemotelyWithChangedItems_deletedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (isValidKey(v8))
  {
    v6 = [v5 objectForKeyedSubscript:@"id"];
    if (v6)
    {
      v7 = [MEMORY[0x1E699AC30] externalIDForSerializedRepresentation:v6];
      if (v7)
      {
        [*(a1 + 32) addObject:v7];
        [*(a1 + 40) _updateCategoryOverrideForBusinessExternalID:v7];
      }
    }
  }
}

void __92__EDBusinessCloudStorage_persistedDictionaryDidChangeRemotelyWithChangedItems_deletedItems___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [v3 objectForKeyedSubscript:{*(*(&v11 + 1) + 8 * v7), v11}];
        if (v8)
        {
          v9 = [MEMORY[0x1E699AC30] externalIDForSerializedRepresentation:v8];
          if (v9)
          {
            [*(a1 + 40) addObject:v9];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [v3 removeAllObjects];
  v10 = *MEMORY[0x1E69E9840];
}

void __92__EDBusinessCloudStorage_persistedDictionaryDidChangeRemotelyWithChangedItems_deletedItems___block_invoke_3(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1[4] + 8);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v5++) updatedBusinessesWithExternalIDs:a1[5] removedBusinessesWithExternalIDs:{a1[6], v7}];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)mergeChangesForRemotelyChangedKeys:(id)keys localStore:(id)store cloudStore:(id)cloudStore
{
  v34 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  storeCopy = store;
  cloudStoreCopy = cloudStore;
  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = keysCopy;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = *v30;
    v26 = *MEMORY[0x1E699AB38];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        if (isValidKey(v14))
        {
          v15 = [storeCopy objectForKeyedSubscript:v14];
          if (v15)
          {
            v16 = [cloudStoreCopy objectForKey:v14];
            v17 = v16 == 0;

            if (v17)
            {
              v18 = [v15 objectForKeyedSubscript:v26];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v19 = [v18 objectForKeyedSubscript:@"id"];
                [v25 setObject:v19 forKeyedSubscript:v14];
              }
            }
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v11);
  }

  deletedKeyMap = [(EDBusinessCloudStorage *)self deletedKeyMap];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __83__EDBusinessCloudStorage_mergeChangesForRemotelyChangedKeys_localStore_cloudStore___block_invoke;
  v27[3] = &unk_1E8250D20;
  v21 = v25;
  v28 = v21;
  [deletedKeyMap performWhileLocked:v27];

  v22 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)_updateCategoryOverrideForBusinessExternalID:(id)d
{
  dCopy = d;
  businessPersistence = [(EDBusinessCloudStorage *)self businessPersistence];
  v6 = [businessPersistence businessIDForBusinessExternalID:dCopy];

  if (v6 == *MEMORY[0x1E699A728])
  {
    v7 = _ef_log_EDBusinessCloudStorage();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [EDBusinessCloudStorage _updateCategoryOverrideForBusinessExternalID:];
    }
  }

  else
  {
    [(EDBusinessCloudStorage *)self _updateCategoryOverrideForBusinessID:v6 withBusinessExternalID:dCopy];
  }
}

- (void)_updateCategoryOverrideForBusinessID:(int64_t)d withBusinessExternalID:(id)iD
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = [(EDBusinessCloudStorage *)self categoryForBusinessWithExternalID:iD lastModifiedDate:0];
  businessPersistence = [(EDBusinessCloudStorage *)self businessPersistence];
  v8 = [businessPersistence categoryTypeForBusinessID:d];

  if ([(EDBusinessCloudStorage *)self _hasCategoryChanged:v6 from:v8])
  {
    messagePersistence = [(EDBusinessCloudStorage *)self messagePersistence];
    v10 = [messagePersistence persistedMessagesForBusinessID:d];

    if (v6)
    {
      unsignedIntegerValue = [v6 unsignedIntegerValue];
      businessPersistence2 = [(EDBusinessCloudStorage *)self businessPersistence];
      v13 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
      v21[0] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      v15 = [MEMORY[0x1E695DF00] now];
      [businessPersistence2 insertOrUpdateUserOverrideForBusinessIDs:v14 category:unsignedIntegerValue userInitiated:0 timestamp:v15];
    }

    else
    {
      businessPersistence2 = [(EDBusinessCloudStorage *)self businessPersistence];
      v13 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
      v20 = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
      v15 = [MEMORY[0x1E695DF00] now];
      unsignedIntegerValue = 0;
      [businessPersistence2 removeUserOverridesForBusinessIDs:v14 timestamp:v15 originator:0 userInitiated:0];
    }

    categoryPersistence = [(EDBusinessCloudStorage *)self categoryPersistence];
    analyticsLogger = [categoryPersistence analyticsLogger];
    categoryPersistence2 = [(EDBusinessCloudStorage *)self categoryPersistence];
    [analyticsLogger logRecategorizationEventForMessages:v10 categoryType:unsignedIntegerValue categoryPersistence:categoryPersistence2];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)categoryForBusinessWithExternalID:lastModifiedDate:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(&dword_1C61EF000, v0, v1, "Value for category key is not a dictionary for business: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_dateForKey:categoryType:businessWithExternalID:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2(&dword_1C61EF000, v0, v1, "Value for date key %{public}@ is not a dictionary for business: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_dateForKey:categoryType:businessWithExternalID:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2(&dword_1C61EF000, v0, v1, "Date value (for %{public}@) is not a number for business: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void __48__EDBusinessCloudStorage__syncKeyForExternalID___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_4(&dword_1C61EF000, a2, a3, "Invalid attributes for external ID: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_dictionaryForBusiness:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(&dword_1C61EF000, v0, v1, "Value for business is not a dictionary: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_updateCategoryOverrideForBusinessExternalID:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(&dword_1C61EF000, v0, v1, "Skipping updating category for business %{public}@, no corresponding businessID on this device", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end