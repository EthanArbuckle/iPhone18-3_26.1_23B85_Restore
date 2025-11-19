@interface CWFKeyValueStore
- (BOOL)__synchronize;
- (BOOL)synchronize;
- (CWFKeyValueStore)initWithType:(int64_t)a3 identifier:(id)a4;
- (id)__debugDescriptionForType:(int64_t)a3;
- (id)dictionaryRepresentation;
- (id)objectForKey:(id)a3;
- (void)__ubiquitousKVSChanged:(id)a3;
- (void)activate;
- (void)addEntriesFromDictionary:(id)a3;
- (void)invalidate;
- (void)removeAllEntries;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation CWFKeyValueStore

- (void)__ubiquitousKVSChanged:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696A9D8]];

  v7 = [v4 userInfo];

  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696A9E0]];

  v9 = [v6 integerValue];
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v16 = CWFGetOSLog();
      if (v16)
      {
        v13 = CWFGetOSLog();
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v25 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v9 != 3)
      {
        goto LABEL_30;
      }

      v12 = CWFGetOSLog();
      if (v12)
      {
        v13 = CWFGetOSLog();
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v21 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_29:

        goto LABEL_30;
      }
    }

    identifier = self->_identifier;
    [(CWFKeyValueStore *)self __debugDescriptionForType:self->_type];
    v32 = 138543618;
    v33 = identifier;
    v35 = v34 = 2114;
    _os_log_send_and_compose_impl();

    goto LABEL_29;
  }

  if (!v9)
  {
    v14 = CWFGetOSLog();
    if (v14)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v23 = self->_identifier;
      [(CWFKeyValueStore *)self __debugDescriptionForType:self->_type];
      v32 = 138543618;
      v33 = v23;
      v35 = v34 = 2114;
      _os_log_send_and_compose_impl();
    }

    eventQueue = self->_eventQueue;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_1E0D2CA40;
    v28[3] = &unk_1E86E6420;
    v28[4] = self;
    v29 = v8;
    dispatch_async(eventQueue, v28);
    v20 = v29;
    goto LABEL_25;
  }

  if (v9 == 1)
  {
    v10 = CWFGetOSLog();
    if (v10)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v18 = self->_identifier;
      [(CWFKeyValueStore *)self __debugDescriptionForType:self->_type];
      v32 = 138543618;
      v33 = v18;
      v35 = v34 = 2114;
      _os_log_send_and_compose_impl();
    }

    v19 = self->_eventQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0D2C9BC;
    block[3] = &unk_1E86E6420;
    block[4] = self;
    v31 = v8;
    dispatch_async(v19, block);
    v20 = v31;
LABEL_25:
  }

LABEL_30:

  v27 = *MEMORY[0x1E69E9840];
}

- (id)__debugDescriptionForType:(int64_t)a3
{
  if ((a3 - 1) >= 6)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", a3];
  }

  else
  {
    v4 = off_1E86E97F8[a3 - 1];
  }

  return v4;
}

- (CWFKeyValueStore)initWithType:(int64_t)a3 identifier:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v38.receiver = self;
  v38.super_class = CWFKeyValueStore;
  v8 = [(CWFKeyValueStore *)&v38 init];
  v9 = v8;
  if ((a3 - 7) < 0xFFFFFFFFFFFFFFFALL)
  {
    goto LABEL_22;
  }

  if (!v8)
  {
    goto LABEL_22;
  }

  v8->_type = a3;
  if (!v7)
  {
    goto LABEL_22;
  }

  objc_storeStrong(&v8->_identifier, a4);
  v10 = MEMORY[0x1E696AEC0];
  v11 = [(CWFKeyValueStore *)v9 __debugDescriptionForType:v9->_type];
  v12 = [v10 stringWithFormat:@"com.apple.corewifi.kvs-%@.mutex.(%@)", v11, v7];
  v13 = [v12 UTF8String];
  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_create(v13, v14);
  mutexQueue = v9->_mutexQueue;
  v9->_mutexQueue = v15;

  if (!v9->_mutexQueue)
  {
    goto LABEL_22;
  }

  v17 = MEMORY[0x1E696AEC0];
  v18 = [(CWFKeyValueStore *)v9 __debugDescriptionForType:v9->_type];
  v19 = [v17 stringWithFormat:@"com.apple.corewifi.kvs-%@.events.(%@)", v18, v7];
  v20 = [v19 UTF8String];
  v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v22 = dispatch_queue_create(v20, v21);
  eventQueue = v9->_eventQueue;
  v9->_eventQueue = v22;

  if (!v9->_eventQueue)
  {
    goto LABEL_22;
  }

  type = v9->_type;
  if (type == 6)
  {
    v29 = [objc_alloc(MEMORY[0x1E696AFB8]) initWithStoreIdentifier:v9->_identifier type:1];
    ubiquitousKVS = v9->_ubiquitousKVS;
    v9->_ubiquitousKVS = v29;

    if (!v9->_ubiquitousKVS)
    {
      v33 = CWFGetOSLog();
      if (v33)
      {
        v28 = CWFGetOSLog();
      }

      else
      {
        v28 = MEMORY[0x1E69E9C10];
        v35 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

LABEL_20:
      identifier = v9->_identifier;
      v37 = [(CWFKeyValueStore *)v9 __debugDescriptionForType:v9->_type];
      v39 = 138543618;
      v40 = identifier;
      v41 = 2114;
      v42 = v37;
      _os_log_send_and_compose_impl();

LABEL_21:
LABEL_22:

      v9 = 0;
    }
  }

  else if (type == 3)
  {
    v25 = [objc_alloc(MEMORY[0x1E696AFB8]) initWithStoreIdentifier:v9->_identifier type:0];
    v26 = v9->_ubiquitousKVS;
    v9->_ubiquitousKVS = v25;

    if (!v9->_ubiquitousKVS)
    {
      v27 = CWFGetOSLog();
      if (v27)
      {
        v28 = CWFGetOSLog();
      }

      else
      {
        v28 = MEMORY[0x1E69E9C10];
        v34 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)activate
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D2CF34;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (void)invalidate
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D2D268;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1E0BC2DF0;
  v16 = sub_1E0BC6234;
  v17 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D2D51C;
  block[3] = &unk_1E86E7BE0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(mutexQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D2D720;
  block[3] = &unk_1E86E6060;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(mutexQueue, block);
}

- (void)removeAllEntries
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D2DAB0;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (void)addEntriesFromDictionary:(id)a3
{
  v4 = a3;
  mutexQueue = self->_mutexQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D2DFAC;
  v7[3] = &unk_1E86E6420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(mutexQueue, v7);
}

- (id)dictionaryRepresentation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2DF0;
  v10 = sub_1E0BC6234;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0D2E46C;
  v5[3] = &unk_1E86E6A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)__synchronize
{
  v25 = *MEMORY[0x1E69E9840];
  type = self->_type;
  if (type > 3)
  {
    if (type == 6)
    {
      goto LABEL_10;
    }

    if (type != 5 && type != 4)
    {
LABEL_13:
      v9 = CWFGetOSLog();
      if (v9)
      {
        v10 = CWFGetOSLog();
      }

      else
      {
        v10 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        identifier = self->_identifier;
        v23 = [(CWFKeyValueStore *)self __debugDescriptionForType:self->_type];
        _os_log_send_and_compose_impl();
      }

      goto LABEL_24;
    }

    v11 = self->_identifier;
    v5 = 1;
    _CFPreferencesSetAccessRestricted();
    v12 = self->_identifier;
    v13 = *MEMORY[0x1E695E8A0];
    v14 = *MEMORY[0x1E695E898];
    _CFPreferencesSetFileProtectionClass();
    v6 = self->_identifier;
    v7 = v13;
    v8 = v14;
LABEL_18:
    if (CFPreferencesSynchronize(v6, v7, v8))
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  if (type == 1)
  {
    v4 = self->_identifier;
    v5 = 1;
    _CFPreferencesSetAccessRestricted();
    v6 = self->_identifier;
    v7 = *MEMORY[0x1E695E8A0];
    v8 = *MEMORY[0x1E695E898];
    goto LABEL_18;
  }

  if (type != 2)
  {
    if (type != 3)
    {
      goto LABEL_13;
    }

LABEL_10:
    if (![(NSUbiquitousKeyValueStore *)self->_ubiquitousKVS synchronize])
    {
      goto LABEL_24;
    }

LABEL_16:
    v5 = 1;
    goto LABEL_30;
  }

  if (CFPreferencesSynchronize(self->_identifier, @"mobile", *MEMORY[0x1E695E898]))
  {
    goto LABEL_16;
  }

LABEL_24:
  v17 = CWFGetOSLog();
  if (v17)
  {
    v18 = CWFGetOSLog();
  }

  else
  {
    v18 = MEMORY[0x1E69E9C10];
    v19 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v20 = self->_identifier;
    v24 = [(CWFKeyValueStore *)self __debugDescriptionForType:self->_type];
    _os_log_send_and_compose_impl();
  }

  v5 = 0;
LABEL_30:
  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)synchronize
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0D2E958;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end