@interface EMMailboxCategoryCloudStorage
- (BOOL)setIfNeededLastSeenDate:(id)a3 lastSeenDisplayDate:(id)a4 forCategoryType:(id)a5 inMailboxWithExternalURL:(id)a6 originator:(unint64_t)a7;
- (EMMailboxCategoryCloudStorage)init;
- (EMUbiquitouslyPersistedDictionary)ubiquitousDictionary;
- (id)_dateForCategoryType:(void *)a3 inMailboxWithExternalURL:(void *)a4 dateKey:;
- (id)_dateFromValueDictionary:(void *)a3 forKey:;
- (id)_keyForMailboxURL:(void *)a3 categoryType:;
- (id)_loggingStringForMailboxURL:(void *)a3 categoryType:;
- (id)lastSeenDateForCategoryType:(id)a3 inMailboxWithExternalURL:(id)a4;
- (id)lastSeenDisplayDateForCategoryType:(id)a3 inMailboxWithExternalURL:(id)a4;
- (void)_notifyObserversAboutChangedLastSeenDate:(void *)a3 lastSeenDisplayDate:(void *)a4 forCategoryType:(void *)a5 inMailboxWithExternalURL:(uint64_t)a6 originator:;
- (void)addCloudStorageObserver:(id)a3;
- (void)clearAll;
- (void)removeCloudStorageObserver:(id)a3;
@end

@implementation EMMailboxCategoryCloudStorage

- (EMMailboxCategoryCloudStorage)init
{
  v17.receiver = self;
  v17.super_class = EMMailboxCategoryCloudStorage;
  v2 = [(EMMailboxCategoryCloudStorage *)&v17 init];
  if (v2)
  {
    v3 = MEMORY[0x1E699B7C8];
    v4 = [MEMORY[0x1E699B978] globalAsyncSchedulerWithQualityOfService:25];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __37__EMMailboxCategoryCloudStorage_init__block_invoke;
    v15[3] = &unk_1E826D6D0;
    v5 = v2;
    v16 = v5;
    v6 = [v3 onScheduler:v4 futureWithBlock:v15];
    ubiquitousDictionaryFuture = v5->_ubiquitousDictionaryFuture;
    v5->_ubiquitousDictionaryFuture = v6;

    v8 = objc_alloc_init(MEMORY[0x1E699B7E0]);
    syncKeyByMailboxURLCache = v5->_syncKeyByMailboxURLCache;
    v5->_syncKeyByMailboxURLCache = v8;

    v10 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"EMMailboxCategoryCloudStorage"];
    observerScheduler = v5->_observerScheduler;
    v5->_observerScheduler = v10;

    v12 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = v12;
  }

  return v2;
}

EMUbiquitouslyPersistedDictionary *__37__EMMailboxCategoryCloudStorage_init__block_invoke(uint64_t a1)
{
  v1 = [[EMUbiquitouslyPersistedDictionary alloc] initWithIdentifier:@"com.apple.mail.mailboxCategories" encrypted:1 delegate:*(a1 + 32)];

  return v1;
}

- (EMUbiquitouslyPersistedDictionary)ubiquitousDictionary
{
  v2 = [(EMMailboxCategoryCloudStorage *)self ubiquitousDictionaryFuture];
  v3 = [v2 result];

  return v3;
}

void ___ef_log_EMMailboxCategoryCloudStorage_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EMMailboxCategoryCloudStorage");
  v1 = _ef_log_EMMailboxCategoryCloudStorage_log;
  _ef_log_EMMailboxCategoryCloudStorage_log = v0;
}

- (id)lastSeenDateForCategoryType:(id)a3 inMailboxWithExternalURL:(id)a4
{
  v4 = [(EMMailboxCategoryCloudStorage *)self _dateForCategoryType:a3 inMailboxWithExternalURL:a4 dateKey:@"ls"];

  return v4;
}

- (id)_dateForCategoryType:(void *)a3 inMailboxWithExternalURL:(void *)a4 dateKey:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = [(EMMailboxCategoryCloudStorage *)a1 _keyForMailboxURL:v8 categoryType:v7];
    v11 = [a1 ubiquitousDictionary];
    v12 = [v11 objectForKeyedSubscript:v10];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a1 = [(EMMailboxCategoryCloudStorage *)a1 _dateFromValueDictionary:v12 forKey:v9];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (id)lastSeenDisplayDateForCategoryType:(id)a3 inMailboxWithExternalURL:(id)a4
{
  v4 = [(EMMailboxCategoryCloudStorage *)self _dateForCategoryType:a3 inMailboxWithExternalURL:a4 dateKey:@"lsd"];

  return v4;
}

- (id)_keyForMailboxURL:(void *)a3 categoryType:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (v6)
    {
      v8 = objc_alloc(MEMORY[0x1E696AEC0]);
      v9 = [v5 absoluteString];
      v10 = EMStringFromCategoryType([v7 unsignedIntegerValue]);
      v11 = [v8 initWithFormat:@"%@ (%@)", v9, v10];
    }

    else
    {
      v11 = [v5 absoluteString];
    }

    v12 = [a1 syncKeyByMailboxURLCache];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __64__EMMailboxCategoryCloudStorage__keyForMailboxURL_categoryType___block_invoke;
    v16[3] = &unk_1E826D720;
    v17 = v11;
    v18 = v7;
    v13 = v11;
    v14 = [v12 objectForKey:v13 generator:v16];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_dateFromValueDictionary:(void *)a3 forKey:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 objectForKeyedSubscript:v6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = MEMORY[0x1E695DF00];
      [v7 doubleValue];
      v9 = [v8 dateWithTimeIntervalSince1970:?];
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

- (BOOL)setIfNeededLastSeenDate:(id)a3 lastSeenDisplayDate:(id)a4 forCategoryType:(id)a5 inMailboxWithExternalURL:(id)a6 originator:(unint64_t)a7
{
  v42 = *MEMORY[0x1E69E9840];
  v35 = a3;
  v36 = a4;
  v12 = a5;
  v13 = a6;
  v34 = [(EMMailboxCategoryCloudStorage *)self _keyForMailboxURL:v13 categoryType:v12];
  v14 = [(EMMailboxCategoryCloudStorage *)self ubiquitousDictionary];
  v15 = [v14 objectForKeyedSubscript:v34];

  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v19 = _ef_log_EMMailboxCategoryCloudStorage();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = [(EMMailboxCategoryCloudStorage *)self _loggingStringForMailboxURL:v13 categoryType:v12];
      [EMMailboxCategoryCloudStorage setIfNeededLastSeenDate:v21 lastSeenDisplayDate:v22 forCategoryType:buf inMailboxWithExternalURL:v19 originator:?];
    }

    v23 = 0;
  }

  else
  {
    v16 = [v15 mutableCopy];
    v17 = v16;
    v33 = a7;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [MEMORY[0x1E695DF90] dictionary];
    }

    v24 = v18;

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __129__EMMailboxCategoryCloudStorage_setIfNeededLastSeenDate_lastSeenDisplayDate_forCategoryType_inMailboxWithExternalURL_originator___block_invoke;
    aBlock[3] = &unk_1E826D6F8;
    aBlock[4] = self;
    v19 = v24;
    v38 = v19;
    v25 = v13;
    v39 = v25;
    v26 = v12;
    v40 = v26;
    v27 = _Block_copy(aBlock);
    v28 = v27[2](v27, v35, @"ls", @"lastSeenDate");
    v23 = v27[2](v27, v36, @"lsd", @"lastSeenDisplayDate") | v28;
    if (v23)
    {
      v29 = [v25 absoluteString];
      [v19 setObject:v29 forKeyedSubscript:@"mailbox"];

      [v19 setObject:v26 forKeyedSubscript:@"category"];
      v30 = [(EMMailboxCategoryCloudStorage *)self ubiquitousDictionary];
      [v30 setObject:v19 forKeyedSubscript:v34];

      [(EMMailboxCategoryCloudStorage *)self _notifyObserversAboutChangedLastSeenDate:v35 lastSeenDisplayDate:v36 forCategoryType:v26 inMailboxWithExternalURL:v25 originator:v33];
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return v23 & 1;
}

- (id)_loggingStringForMailboxURL:(void *)a3 categoryType:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [MEMORY[0x1E699B7B0] currentDevice];
    v8 = [v7 isInternal];

    a1 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v9 = [v5 scheme];
    [a1 appendFormat:@"%@://", v9];

    v10 = [v5 user];
    v11 = [v5 host];
    if ([v10 length] && objc_msgSend(v11, "length"))
    {
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@@%@", v10, v11];
      if (v8)
      {
        v13 = [MEMORY[0x1E699B858] ec_partiallyRedactedStringForAddress:v12];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:v12];
        }

        v17 = v15;
      }

      else
      {
        v17 = [MEMORY[0x1E699B858] fullyRedactedStringForString:v12];
        v14 = v11;
      }

      v16 = v17;
    }

    else
    {
      if (v8)
      {
        [MEMORY[0x1E699B858] partiallyRedactedStringForString:v11];
      }

      else
      {
        [MEMORY[0x1E699B858] fullyRedactedStringForString:v11];
      }

      v16 = v12 = v11;
    }

    [a1 appendFormat:@"[%@]", v16];
    v18 = [v5 path];
    if (([v18 ef_caseInsensitiveIsEqualToString:@"/INBOX"] & 1) == 0)
    {
      v19 = objc_alloc(MEMORY[0x1E696AEC0]);
      v20 = [MEMORY[0x1E699B858] fullyRedactedStringForString:v18];
      v21 = [v19 initWithFormat:@"/%@", v20];

      v18 = v21;
    }

    [a1 appendString:v18];
    v22 = MEMORY[0x1E699B858];
    v23 = [v5 absoluteString];
    v24 = [v22 partiallyRedactedStringForString:v23 maximumUnredactedLength:0];

    [a1 appendString:v24];
    if (v6)
    {
      v25 = EMStringFromCategoryType([v6 unsignedIntegerValue]);
      [a1 appendFormat:@" (%@)", v25];
    }
  }

  return a1;
}

uint64_t __129__EMMailboxCategoryCloudStorage_setIfNeededLastSeenDate_lastSeenDisplayDate_forCategoryType_inMailboxWithExternalURL_originator___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [(EMMailboxCategoryCloudStorage *)*(a1 + 32) _dateFromValueDictionary:v8 forKey:?];
    v11 = [v10 ec_integerDate];

    if (v11 && ([v7 ec_integerDate], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "ef_isLaterThanDate:", v11), v12, !v13))
    {
      v17 = _ef_log_EMMailboxCategoryCloudStorage();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(EMMailboxCategoryCloudStorage *)*(a1 + 32) _loggingStringForMailboxURL:*(a1 + 56) categoryType:?];
        v22 = 138544130;
        v23 = v9;
        v24 = 2114;
        v25 = v7;
        v26 = 2114;
        v27 = v11;
        v28 = 2114;
        v29 = v19;
        _os_log_impl(&dword_1C6655000, v17, OS_LOG_TYPE_DEFAULT, "Not setting %{public}@ - %{public}@ earlier than %{public}@ for: %{public}@", &v22, 0x2Au);
      }

      v18 = 0;
    }

    else
    {
      v14 = _ef_log_EMMailboxCategoryCloudStorage();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(EMMailboxCategoryCloudStorage *)*(a1 + 32) _loggingStringForMailboxURL:*(a1 + 56) categoryType:?];
        v22 = 138543874;
        v23 = v9;
        v24 = 2114;
        v25 = v7;
        v26 = 2114;
        v27 = v15;
        _os_log_impl(&dword_1C6655000, v14, OS_LOG_TYPE_DEFAULT, "Setting %{public}@ to %{public}@ for: %{public}@", &v22, 0x20u);
      }

      v16 = MEMORY[0x1E696AD98];
      [v7 timeIntervalSince1970];
      v17 = [v16 numberWithDouble:?];
      [*(a1 + 40) setObject:v17 forKeyedSubscript:v8];
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)_notifyObserversAboutChangedLastSeenDate:(void *)a3 lastSeenDisplayDate:(void *)a4 forCategoryType:(void *)a5 inMailboxWithExternalURL:(uint64_t)a6 originator:
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (a1)
  {
    v15 = [a1 observerScheduler];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __146__EMMailboxCategoryCloudStorage__notifyObserversAboutChangedLastSeenDate_lastSeenDisplayDate_forCategoryType_inMailboxWithExternalURL_originator___block_invoke;
    v16[3] = &unk_1E826D4C0;
    v16[4] = a1;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = v14;
    v21 = a6;
    [v15 performBlock:v16];
  }
}

id __64__EMMailboxCategoryCloudStorage__keyForMailboxURL_categoryType___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E699B990]) initWithString:*(a1 + 32)];
  v3 = [v2 hexStringValue];
  v4 = [v3 rangeOfString:@"0x" options:8];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 substringFromIndex:v4 + v5];
  }

  if ([v6 length])
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AF20]);
    v8 = v7;
    if (*(a1 + 40))
    {
      v9 = @"mailbox-category-h";
    }

    else
    {
      v9 = @"mailbox-h";
    }

    [v7 setScheme:v9];
    [v8 setHost:v6];
    v10 = [v8 string];
  }

  else
  {
    v11 = _ef_log_EMMailboxCategoryCloudStorage();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __64__EMMailboxCategoryCloudStorage__keyForMailboxURL_categoryType___block_invoke_cold_1(v11);
    }

    v10 = 0;
  }

  return v10;
}

- (void)clearAll
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _ef_log_EMMailboxCategoryCloudStorage();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(EMMailboxCategoryCloudStorage *)self ubiquitousDictionary];
    v7 = 134217984;
    v8 = [v4 count];
    _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_DEFAULT, "Clearing all data with oldCount:%lu", &v7, 0xCu);
  }

  v5 = [(EMMailboxCategoryCloudStorage *)self ubiquitousDictionary];
  [v5 removeAllObjects];

  [(EMMailboxCategoryCloudStorage *)self _notifyObserversAboutChangedLastSeenDate:0 lastSeenDisplayDate:0 forCategoryType:0 inMailboxWithExternalURL:0 originator:?];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)addCloudStorageObserver:(id)a3
{
  v4 = a3;
  v5 = [(EMMailboxCategoryCloudStorage *)self observerScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__EMMailboxCategoryCloudStorage_addCloudStorageObserver___block_invoke;
  v7[3] = &unk_1E826C148;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 performBlock:v7];
}

void __57__EMMailboxCategoryCloudStorage_addCloudStorageObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

- (void)removeCloudStorageObserver:(id)a3
{
  v4 = a3;
  v5 = [(EMMailboxCategoryCloudStorage *)self observerScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__EMMailboxCategoryCloudStorage_removeCloudStorageObserver___block_invoke;
  v7[3] = &unk_1E826C148;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 performBlock:v7];
}

void __60__EMMailboxCategoryCloudStorage_removeCloudStorageObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

void __146__EMMailboxCategoryCloudStorage__notifyObserversAboutChangedLastSeenDate_lastSeenDisplayDate_forCategoryType_inMailboxWithExternalURL_originator___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) observers];
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

        [*(*(&v7 + 1) + 8 * v5++) categoryCloudStorage:*(a1 + 32) didChangeLastSeenDate:*(a1 + 40) lastSeenDisplayDate:*(a1 + 48) forCategoryType:*(a1 + 56) inMailboxWithExternalURL:*(a1 + 64) originator:*(a1 + 72)];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setIfNeededLastSeenDate:(uint8_t *)buf lastSeenDisplayDate:(os_log_t)log forCategoryType:inMailboxWithExternalURL:originator:.cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_1C6655000, log, OS_LOG_TYPE_FAULT, "Invalid value type %{public}@ for: %{public}@", buf, 0x16u);
}

@end