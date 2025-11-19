@interface EDReadLaterCloudStorage
- (EDReadLaterCloudStorage)initWithHookRegistry:(id)a3;
- (EDReadLaterCloudStorage)initWithMutableDictionary:(id)a3 hookRegistry:(id)a4;
- (id)_dateFromDictionary:(id)a3 forKey:(id)a4;
- (id)_keyForMessage:(id)a3;
- (id)_messageHashForKey:(id)a3;
- (id)cloudStorageReadLaterDateForMessage:(id)a3 displayDate:(id *)a4;
- (void)addEntryForMessage:(id)a3 date:(id)a4;
- (void)persistedDictionaryDidChangeRemotelyWithChangedItems:(id)a3 deletedItems:(id)a4;
- (void)persistenceDidChangeReadLaterDate:(id)a3 messages:(id)a4 changeIsRemote:(BOOL)a5 generationWindow:(id)a6;
- (void)persistenceDidUpdateDisplayDateForMessages:(id)a3 changeIsRemote:(BOOL)a4 generation:(int64_t)a5;
- (void)removeEntryForMessage:(id)a3;
- (void)updateDisplayDateForMessage:(id)a3 displayDate:(id)a4;
@end

@implementation EDReadLaterCloudStorage

- (EDReadLaterCloudStorage)initWithMutableDictionary:(id)a3 hookRegistry:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"EDReadLaterCloudStorage.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"dictionary"}];
  }

  v14.receiver = self;
  v14.super_class = EDReadLaterCloudStorage;
  v10 = [(EDReadLaterCloudStorage *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_persistentDictionary, a3);
    objc_storeStrong(&v11->_hookRegistry, a4);
    [v9 registerMessageChangeHookResponder:v11];
  }

  return v11;
}

- (EDReadLaterCloudStorage)initWithHookRegistry:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E699AF10]) initWithIdentifier:@"com.apple.mail.remindMe" encrypted:0 delegate:self];
  v6 = [(EDReadLaterCloudStorage *)self initWithMutableDictionary:v5 hookRegistry:v4];

  return v6;
}

- (void)addEntryForMessage:(id)a3 date:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v45 = a4;
  v47 = v6;
  v46 = [(EDReadLaterCloudStorage *)self _keyForMessage:v6];
  if (v46)
  {
    [v45 timeIntervalSince1970];
    v8 = v7;
    v9 = EDRemindMeLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v6;
      v11 = MEMORY[0x1E696AEC0];
      v12 = [v10 globalMessageID];
      v13 = [v10 subject];
      v14 = [v13 ef_publicDescription];
      v15 = [v10 displayDate];
      v16 = [v10 readLater];
      v17 = [v16 ef_publicDescription];
      v18 = [v11 stringWithFormat:@"<id=%lld, subject=%@, displayDate=%@, readLater=%@>", v12, v14, v15, v17];

      *buf = 138543874;
      v51 = v18;
      v52 = 2114;
      v53 = v46;
      v54 = 2048;
      v55 = v8;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Adding entry for message: %{public}@, key: %{public}@, date: %f", buf, 0x20u);
    }

    v19 = [v47 messageIDHeader];
    v20 = [v19 ec_messageIDSubstring];

    v21 = objc_alloc(MEMORY[0x1E695DF90]);
    v48 = EDReadLaterCloudStorageDictionaryKeyDate;
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
    v49 = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v24 = [v21 initWithDictionary:v23];

    if (v20)
    {
      [v24 setObject:v20 forKeyedSubscript:EDReadLaterCloudStorageDictionaryKeyMessageID];
    }

    else
    {
      v34 = EDRemindMeLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v36 = v47;
        v37 = MEMORY[0x1E696AEC0];
        v38 = [v36 globalMessageID];
        v39 = [v36 subject];
        v44 = [v39 ef_publicDescription];
        v43 = [v36 displayDate];
        v40 = [v36 readLater];
        v41 = [v40 ef_publicDescription];
        v42 = [v37 stringWithFormat:@"<id=%lld, subject=%@, displayDate=%@, readLater=%@>", v38, v44, v43, v41];

        *buf = 138543362;
        v51 = v42;
        _os_log_error_impl(&dword_1C61EF000, v34, OS_LOG_TYPE_ERROR, "Unable to find message ID for message: %{public}@", buf, 0xCu);
      }
    }

    [(EMMutableDictionaryProtocol *)self->_persistentDictionary setObject:v24 forKey:v46];
  }

  else
  {
    v20 = EDRemindMeLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v25 = v6;
      v26 = MEMORY[0x1E696AEC0];
      v27 = [v25 globalMessageID];
      v28 = [v25 subject];
      v29 = [v28 ef_publicDescription];
      v30 = [v25 displayDate];
      v31 = [v25 readLater];
      v32 = [v31 ef_publicDescription];
      v33 = [v26 stringWithFormat:@"<id=%lld, subject=%@, displayDate=%@, readLater=%@>", v27, v29, v30, v32];

      *buf = 138543362;
      v51 = v33;
      _os_log_error_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_ERROR, "Unable to find key for message: %{public}@", buf, 0xCu);
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)updateDisplayDateForMessage:(id)a3 displayDate:(id)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v53 = a3;
  v54 = a4;
  v55 = [(EDReadLaterCloudStorage *)self _keyForMessage:v53];
  if (v55)
  {
    [v54 timeIntervalSince1970];
    v7 = v6;
    v8 = [v53 dateReceived];
    v9 = [v8 isEqualToDate:v54];

    v10 = EDRemindMeLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v50 = v9;
      v11 = v53;
      v12 = MEMORY[0x1E696AEC0];
      v13 = [v11 globalMessageID];
      v14 = [v11 subject];
      v15 = [v14 ef_publicDescription];
      v16 = [v11 displayDate];
      v17 = [v11 readLater];
      v18 = [v17 ef_publicDescription];
      v19 = [v12 stringWithFormat:@"<id=%lld, subject=%@, displayDate=%@, readLater=%@>", v13, v15, v16, v18];

      *buf = 138544130;
      v57 = v19;
      v58 = 2114;
      v59 = v55;
      v60 = 2048;
      v61 = v7;
      v62 = 1024;
      v63 = v50;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Updating display date for message: %{public}@, key: %{public}@, date: %f isDisplayDateDateReceived:%{BOOL}d", buf, 0x26u);
    }

    v20 = [(EMMutableDictionaryProtocol *)self->_persistentDictionary objectForKey:v55];
    if (v20)
    {
      v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v20];
      v22 = [v20 objectForKeyedSubscript:EDReadLaterCloudStorageDictionaryKeyDisplayDate];
      if (v22)
      {
        v23 = EDRemindMeLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = v53;
          v25 = MEMORY[0x1E696AEC0];
          v26 = [v24 globalMessageID];
          v48 = [v24 subject];
          v51 = [v48 ef_publicDescription];
          v49 = [v24 displayDate];
          v27 = [v24 readLater];
          v28 = [v27 ef_publicDescription];
          v29 = [v25 stringWithFormat:@"<id=%lld, subject=%@, displayDate=%@, readLater=%@>", v26, v51, v49, v28];

          *buf = 138543874;
          v57 = v22;
          v58 = 2114;
          v59 = v29;
          v60 = 2114;
          v61 = *&v55;
          _os_log_error_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_ERROR, "An existing display date (%{public}@) already exists for message: %{public}@, key: %{public}@", buf, 0x20u);
        }
      }

      else
      {
        v23 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
        [v21 setObject:v23 forKeyedSubscript:EDReadLaterCloudStorageDictionaryKeyDisplayDate];
      }

      [(EMMutableDictionaryProtocol *)self->_persistentDictionary setObject:v21 forKey:v55];
    }

    else
    {
      v21 = EDRemindMeLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v39 = v53;
        v40 = MEMORY[0x1E696AEC0];
        v41 = [v39 globalMessageID];
        v52 = [v39 subject];
        v42 = [v52 ef_publicDescription];
        v43 = [v39 displayDate];
        v44 = [v39 readLater];
        v45 = [v44 ef_publicDescription];
        v46 = [v40 stringWithFormat:@"<id=%lld, subject=%@, displayDate=%@, readLater=%@>", v41, v42, v43, v45];

        *buf = 138543618;
        v57 = v46;
        v58 = 2114;
        v59 = v55;
        _os_log_error_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_ERROR, "No value found for message: %{public}@, key: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v20 = EDRemindMeLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v30 = v53;
      v31 = MEMORY[0x1E696AEC0];
      v32 = [v30 globalMessageID];
      v33 = [v30 subject];
      v34 = [v33 ef_publicDescription];
      v35 = [v30 displayDate];
      v36 = [v30 readLater];
      v37 = [v36 ef_publicDescription];
      v38 = [v31 stringWithFormat:@"<id=%lld, subject=%@, displayDate=%@, readLater=%@>", v32, v34, v35, v37];

      *buf = 138543362;
      v57 = v38;
      _os_log_error_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_ERROR, "Unable to find key to update display date for message: %{public}@", buf, 0xCu);
    }
  }

  v47 = *MEMORY[0x1E69E9840];
}

- (void)removeEntryForMessage:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EDReadLaterCloudStorage *)self _keyForMessage:v4];
  v6 = EDRemindMeLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v4;
    v7 = v4;
    v8 = MEMORY[0x1E696AEC0];
    v9 = [v7 globalMessageID];
    v16 = [v7 subject];
    v10 = [v16 ef_publicDescription];
    v11 = [v7 displayDate];
    v12 = [v7 readLater];
    v13 = [v12 ef_publicDescription];
    v14 = [v8 stringWithFormat:@"<id=%lld, subject=%@, displayDate=%@, readLater=%@>", v9, v10, v11, v13];

    *buf = 138543618;
    v19 = v14;
    v20 = 2114;
    v21 = v5;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Removing entry for message: %{public}@, key: %{public}@", buf, 0x16u);

    v4 = v17;
  }

  [(EMMutableDictionaryProtocol *)self->_persistentDictionary removeObjectForKey:v5];
  v15 = *MEMORY[0x1E69E9840];
}

- (id)cloudStorageReadLaterDateForMessage:(id)a3 displayDate:(id *)a4
{
  v6 = a3;
  v7 = [(EDReadLaterCloudStorage *)self _keyForMessage:v6];
  v8 = [(EMMutableDictionaryProtocol *)self->_persistentDictionary objectForKey:v7];
  if (v8)
  {
    if (a4)
    {
      *a4 = [(EDReadLaterCloudStorage *)self _dateFromDictionary:v8 forKey:EDReadLaterCloudStorageDictionaryKeyDisplayDate];
    }

    v9 = [(EDReadLaterCloudStorage *)self _dateFromDictionary:v8 forKey:EDReadLaterCloudStorageDictionaryKeyDate];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_keyForMessage:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 messageIDHeaderHash];
  v5 = [v3 stringWithFormat:@"%lld", objc_msgSend(v4, "int64Value")];

  return v5;
}

- (void)persistenceDidChangeReadLaterDate:(id)a3 messages:(id)a4 changeIsRemote:(BOOL)a5 generationWindow:(id)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!a5)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v18 + 1) + 8 * v15);
          if (v9)
          {
            [(EDReadLaterCloudStorage *)self addEntryForMessage:v16 date:v9];
          }

          else
          {
            [(EDReadLaterCloudStorage *)self removeEntryForMessage:v16, v18];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)persistenceDidUpdateDisplayDateForMessages:(id)a3 changeIsRemote:(BOOL)a4 generation:(int64_t)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (!a4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = [v13 displayDate];
          [(EDReadLaterCloudStorage *)self updateDisplayDateForMessage:v13 displayDate:v14];
        }

        v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_dateFromDictionary:(id)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = [a3 objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x1E695DF00];
    [v6 doubleValue];
    v9 = [v8 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v9 = 0;
  }

  if (([v5 isEqualToString:EDReadLaterCloudStorageDictionaryKeyDisplayDate] & 1) == 0)
  {
    v10 = [v9 ef_dateWithTruncatedSeconds];

    v9 = v10;
  }

  return v9;
}

- (void)persistedDictionaryDidChangeRemotelyWithChangedItems:(id)a3 deletedItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__EDReadLaterCloudStorage_persistedDictionaryDidChangeRemotelyWithChangedItems_deletedItems___block_invoke;
  v13[3] = &unk_1E8256300;
  v13[4] = self;
  v9 = v8;
  v14 = v9;
  [v6 enumerateKeysAndObjectsUsingBlock:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __93__EDReadLaterCloudStorage_persistedDictionaryDidChangeRemotelyWithChangedItems_deletedItems___block_invoke_2;
  v12[3] = &unk_1E8256328;
  v12[4] = self;
  v10 = [v7 ef_compactMap:v12];
  v11 = [(EDReadLaterCloudStorage *)self hookRegistry];
  [v11 remindMeCloudStorageChangedWithAddedOrChangedItems:v9 deletedItems:v10];
}

void __93__EDReadLaterCloudStorage_persistedDictionaryDidChangeRemotelyWithChangedItems_deletedItems___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v5 = [*(a1 + 32) _messageHashForKey:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v10;
    v7 = [*(a1 + 32) _dateFromDictionary:v6 forKey:EDReadLaterCloudStorageDictionaryKeyDate];
    v8 = [*(a1 + 32) _dateFromDictionary:v6 forKey:EDReadLaterCloudStorageDictionaryKeyDisplayDate];
    if (v5 && v7)
    {
      v9 = [[EDReadLaterCloudStorageChangeElement alloc] initWithMessageID:v5 readLaterDate:v7 displayDate:v8];
      [*(a1 + 40) setObject:v9 forKeyedSubscript:v5];
    }
  }
}

id __93__EDReadLaterCloudStorage_persistedDictionaryDidChangeRemotelyWithChangedItems_deletedItems___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _messageHashForKey:a2];

  return v2;
}

- (id)_messageHashForKey:(id)a3
{
  v3 = a3;
  if (_messageHashForKey__onceToken != -1)
  {
    [EDReadLaterCloudStorage _messageHashForKey:];
  }

  v4 = [_messageHashForKey__formatter numberFromString:v3];
  v5 = [v4 longLongValue];
  v6 = [objc_alloc(MEMORY[0x1E699B200]) initWithHash:v5];

  return v6;
}

uint64_t __46__EDReadLaterCloudStorage__messageHashForKey___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _messageHashForKey__formatter;
  _messageHashForKey__formatter = v0;

  v2 = _messageHashForKey__formatter;

  return [v2 setNumberStyle:1];
}

@end