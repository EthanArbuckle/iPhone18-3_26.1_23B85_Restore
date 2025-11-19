@interface NPSDomainAccessor
+ (id)copyDomainList;
+ (id)copyDomainListForPairingID:(id)a3 pairingDataStore:(id)a4;
+ (void)resolveActivePairedDevicePairingID:(id *)a3 pairingDataStore:(id *)a4;
- (BOOL)BOOLForKey:(id)a3;
- (BOOL)BOOLForKey:(id)a3 keyExistsAndHasValidFormat:(BOOL *)a4;
- (BOOL)activeDeviceChanged;
- (BOOL)requiresDeviceUnlockedSinceBoot;
- (NPSDomainAccessor)initWithDomain:(id)a3;
- (NPSDomainAccessor)initWithDomain:(id)a3 pairedDevice:(id)a4;
- (NPSDomainAccessor)initWithDomain:(id)a3 pdrDevice:(id)a4;
- (NPSDomainAccessor)initWithDomain:(id)a3 queue:(id)a4;
- (NPSDomainAccessor)initWithDomain:(id)a3 queue:(id)a4 pairingID:(id)a5 pairingDataStore:(id)a6;
- (NPSDomainAccessor)initWithInternalDomainAccessor:(id)a3 queue:(id)a4;
- (NPSDomainAccessorInternal)internalAccessor;
- (NSString)domain;
- (NSUUID)pairingID;
- (double)doubleForKey:(id)a3;
- (double)doubleForKey:(id)a3 keyExistsAndHasValidFormat:(BOOL *)a4;
- (float)floatForKey:(id)a3;
- (float)floatForKey:(id)a3 keyExistsAndHasValidFormat:(BOOL *)a4;
- (id)URLForKey:(id)a3;
- (id)arrayForKey:(id)a3;
- (id)copyKeyList;
- (id)dataForKey:(id)a3;
- (id)dictionaryForKey:(id)a3;
- (id)dictionaryRepresentation;
- (id)objectForKey:(id)a3;
- (id)shouldNotDoWork;
- (id)stringArrayForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (id)synchronize;
- (int64_t)integerForKey:(id)a3;
- (int64_t)integerForKey:(id)a3 keyExistsAndHasValidFormat:(BOOL *)a4;
- (int64_t)longForKey:(id)a3;
- (int64_t)longForKey:(id)a3 keyExistsAndHasValidFormat:(BOOL *)a4;
- (unint64_t)domainSize;
- (void)dealloc;
- (void)invalidate;
- (void)objectForKey:(id)a3 completionHandler:(id)a4;
- (void)removeObjectForKey:(id)a3;
- (void)setDouble:(double)a3 forKey:(id)a4;
- (void)setFloat:(float)a3 forKey:(id)a4;
- (void)setInteger:(int64_t)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4 completionHandler:(id)a5;
- (void)setURL:(id)a3 forKey:(id)a4;
- (void)synchronizeWithCompletionHandler:(id)a3;
@end

@implementation NPSDomainAccessor

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = self;
    _os_log_impl(&dword_1C0D93000, v3, OS_LOG_TYPE_DEFAULT, "self: (%p)", buf, 0xCu);
  }

  if (self->_internalAccessor)
  {
    [NPSDomainAccessorInternal decrementInternalAccessorReferenceCount:?];
  }

  v5.receiver = self;
  v5.super_class = NPSDomainAccessor;
  [(NPSDomainAccessor *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (id)shouldNotDoWork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  invalidationQueue = self->_invalidationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__NPSDomainAccessor_shouldNotDoWork__block_invoke;
  v5[3] = &unk_1E81294F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(invalidationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NPSDomainAccessorInternal)internalAccessor
{
  v3 = [(NPSDomainAccessor *)self shouldNotDoWork];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy_;
    v14 = __Block_byref_object_dispose_;
    v15 = 0;
    invalidationQueue = self->_invalidationQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__NPSDomainAccessor_internalAccessor__block_invoke;
    v9[3] = &unk_1E8129540;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(invalidationQueue, v9);
    v6 = v11[5];
    if (!v6)
    {
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Accessor is used after being invalidated" userInfo:0];
      objc_exception_throw(v8);
    }

    v4 = v6;
    _Block_object_dispose(&v10, 8);
  }

  return v4;
}

void __36__NPSDomainAccessor_shouldNotDoWork__block_invoke(uint64_t a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[8] == 1 && [v2 activeDeviceChanged])
  {
    v3 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A578];
    v28[0] = @"NPS domain accessor invalid because the active watch has changed- to resolve this specify a device when creating an NPSDomainAccessor";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v5 = [v3 errorWithDomain:@"com.apple.NanoPreferencesSync" code:1 userInfo:v4];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  if ((*(*(a1 + 32) + 8) & 1) == 0 && !NPSShouldRun())
  {
    v8 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26 = @"NPS domain accessor invalid because there are no paired or pairing watches";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v10 = [v8 errorWithDomain:@"com.apple.NanoPreferencesSync" code:1 userInfo:v9];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(*(a1 + 32) + 32);
    v15 = v13;
    v16 = [v14 domain];
    v17 = *(*(*(a1 + 40) + 8) + 40);
    v19 = 136315650;
    v20 = "[NPSDomainAccessor shouldNotDoWork]_block_invoke";
    v21 = 2114;
    v22 = v16;
    v23 = 2114;
    v24 = v17;
    _os_log_impl(&dword_1C0D93000, v15, OS_LOG_TYPE_DEFAULT, "%s: domain: %{public}@ error: %{public}@", &v19, 0x20u);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)activeDeviceChanged
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = 0;
  [objc_opt_class() resolveActivePairedDevicePairingID:&v12 pairingDataStore:0];
  v3 = v12;
  v4 = nps_framework_log;
  if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    internalAccessor = self->_internalAccessor;
    v6 = v4;
    v7 = [(NPSDomainAccessorInternal *)internalAccessor pairingID];
    *buf = 136315650;
    v14 = "[NPSDomainAccessor activeDeviceChanged]";
    v15 = 2112;
    v16 = v3;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_1C0D93000, v6, OS_LOG_TYPE_DEFAULT, "%s: Current active pairing ID: %@. Old ID %@.", buf, 0x20u);
  }

  v8 = [(NPSDomainAccessorInternal *)self->_internalAccessor pairingID];
  v9 = [v3 isEqual:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9 ^ 1;
}

- (id)synchronize
{
  v2 = [(NPSDomainAccessor *)self internalAccessor];
  v3 = [v2 synchronize];

  return v3;
}

+ (void)resolveActivePairedDevicePairingID:(id *)a3 pairingDataStore:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E69B7DA0] sharedInstance];
  v7 = [v6 pairingID];

  v8 = [MEMORY[0x1E69B7DA0] sharedInstance];
  v9 = [v8 pairingStorePath];

  if (v7)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = nps_domain_accessor_log;
    if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_1C0D93000, v11, OS_LOG_TYPE_DEFAULT, "Failed to resolve pairing ID (%@) or data store (%@) for active device", &v15, 0x16u);
    }
  }

  else
  {
    if (a3)
    {
      v12 = v7;
      *a3 = v7;
    }

    if (a4)
    {
      v13 = v9;
      *a4 = v9;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (NSString)domain
{
  v2 = [(NPSDomainAccessor *)self internalAccessor];
  v3 = [v2 domain];

  return v3;
}

- (NSUUID)pairingID
{
  v2 = [(NPSDomainAccessor *)self internalAccessor];
  v3 = [v2 pairingID];

  return v3;
}

- (NPSDomainAccessor)initWithDomain:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[NPSDomainAccessor initWithDomain:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1C0D93000, v5, OS_LOG_TYPE_DEFAULT, "%s: domain: (%@)", &v9, 0x16u);
  }

  v6 = [(NPSDomainAccessor *)self initWithDomain:v4 queue:0];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (NPSDomainAccessor)initWithDomain:(id)a3 queue:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = 0;
  [objc_opt_class() resolveActivePairedDevicePairingID:&v16 pairingDataStore:&v15];
  v8 = v16;
  v9 = v15;
  self->_initializedWithActiveDevice = 1;
  v10 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v18 = "[NPSDomainAccessor initWithDomain:queue:]";
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_1C0D93000, v10, OS_LOG_TYPE_DEFAULT, "%s: domain: (%@) pairingID: (%@); pairingDataStore: (%@)", buf, 0x2Au);
  }

  if (v8 && v9)
  {
    self = [(NPSDomainAccessor *)self initWithDomain:v6 queue:v7 pairingID:v8 pairingDataStore:v9];
    v11 = self;
  }

  else
  {
    v12 = nps_domain_accessor_log;
    if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "[NPSDomainAccessor initWithDomain:queue:]";
      _os_log_impl(&dword_1C0D93000, v12, OS_LOG_TYPE_DEFAULT, "%s: Unable to create domain accessor. No pairing ID or data store.", buf, 0xCu);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

- (NPSDomainAccessor)initWithDomain:(id)a3 pdrDevice:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 pairingID];
  v9 = [v6 pairingStorePath];

  v10 = [(NPSDomainAccessor *)self initWithDomain:v7 pairingID:v8 pairingDataStore:v9];
  return v10;
}

- (NPSDomainAccessor)initWithDomain:(id)a3 pairedDevice:(id)a4
{
  v6 = *MEMORY[0x1E69B3610];
  v7 = a4;
  v8 = a3;
  v9 = [v7 valueForProperty:v6];
  v10 = [v7 valueForProperty:*MEMORY[0x1E69B35F8]];

  v11 = [(NPSDomainAccessor *)self initWithDomain:v8 pairingID:v9 pairingDataStore:v10];
  return v11;
}

- (NPSDomainAccessor)initWithDomain:(id)a3 queue:(id)a4 pairingID:(id)a5 pairingDataStore:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136316162;
    v23 = "[NPSDomainAccessor initWithDomain:queue:pairingID:pairingDataStore:]";
    v24 = 2112;
    v25 = v10;
    v26 = 2112;
    v27 = v11;
    v28 = 2112;
    v29 = v12;
    v30 = 2112;
    v31 = v13;
    _os_log_impl(&dword_1C0D93000, v14, OS_LOG_TYPE_DEFAULT, "%s: domain: (%@); queue: (%@); pairingID: (%@); pairingDataStore: (%@)", &v22, 0x34u);
  }

  v15 = [NPSDomainAccessorInternal domainIsValid:v10];
  if (v13 && v12 && v15)
  {
    v16 = [NPSDomainAccessorInternal internalAccessorForPairingID:v12 pairingDataStore:v13 domain:v10];
    if (v16)
    {
      self = [(NPSDomainAccessor *)self initWithInternalDomainAccessor:v16 queue:v11];
      v17 = self;
    }

    else
    {
      v19 = nps_domain_accessor_log;
      if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136315138;
        v23 = "[NPSDomainAccessor initWithDomain:queue:pairingID:pairingDataStore:]";
        _os_log_impl(&dword_1C0D93000, v19, OS_LOG_TYPE_DEFAULT, "%s: Unable to create domain accessor.", &v22, 0xCu);
      }

      v17 = 0;
    }
  }

  else
  {
    v18 = nps_domain_accessor_log;
    if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315138;
      v23 = "[NPSDomainAccessor initWithDomain:queue:pairingID:pairingDataStore:]";
      _os_log_impl(&dword_1C0D93000, v18, OS_LOG_TYPE_DEFAULT, "%s: Unable to create domain accessor. domain not valid.", &v22, 0xCu);
    }

    v17 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

- (NPSDomainAccessor)initWithInternalDomainAccessor:(id)a3 queue:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = NPSDomainAccessor;
  v9 = [(NPSDomainAccessor *)&v22 init];
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v24 = v9;
    v25 = 2112;
    v26 = v8;
    v27 = 2048;
    v28 = v7;
    _os_log_impl(&dword_1C0D93000, v10, OS_LOG_TYPE_DEFAULT, "self: (%p); queue: (%@); internalAccessor: (%p)", buf, 0x20u);
  }

  objc_storeStrong(&v9->_internalAccessor, a3);
  if (v8)
  {
    v11 = v8;
    externalQueue = v9->_externalQueue;
    v9->_externalQueue = v11;
  }

  else
  {
    v13 = MEMORY[0x1E69E96A0];
    v14 = MEMORY[0x1E69E96A0];
    externalQueue = v9->_externalQueue;
    v9->_externalQueue = v13;
  }

  v15 = dispatch_queue_create("com.apple.nanoprefsync.frmrk.accessor", 0);
  invalidationQueue = v9->_invalidationQueue;
  v9->_invalidationQueue = v15;

  v17 = [(NPSDomainAccessor *)v9 shouldNotDoWork];

  if (v17)
  {
    v18 = nps_domain_accessor_log;
    if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "[NPSDomainAccessor initWithInternalDomainAccessor:queue:]";
      _os_log_impl(&dword_1C0D93000, v18, OS_LOG_TYPE_DEFAULT, "%s: Unable to create domain accessor.", buf, 0xCu);
    }

    v19 = 0;
  }

  else
  {
LABEL_11:
    v19 = v9;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)invalidate
{
  invalidationQueue = self->_invalidationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__NPSDomainAccessor_invalidate__block_invoke;
  block[3] = &unk_1E8129518;
  block[4] = self;
  dispatch_sync(invalidationQueue, block);
}

void __31__NPSDomainAccessor_invalidate__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 32) invalidatePresenter];

  objc_autoreleasePoolPop(v2);
}

- (void)synchronizeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = self->_externalQueue;
  v6 = [(NPSDomainAccessor *)self shouldNotDoWork];
  if (v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__NPSDomainAccessor_synchronizeWithCompletionHandler___block_invoke;
    block[3] = &unk_1E8129568;
    v7 = &v15;
    v15 = v4;
    v8 = &v14;
    v14 = v6;
    dispatch_async(v5, block);
  }

  else
  {
    v9 = [(NPSDomainAccessor *)self internalAccessor];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__NPSDomainAccessor_synchronizeWithCompletionHandler___block_invoke_2;
    v10[3] = &unk_1E8129590;
    v7 = &v12;
    v12 = v4;
    v8 = &v11;
    v11 = v5;
    [v9 synchronizeWithCompletionHandler:v10];
  }
}

void __54__NPSDomainAccessor_synchronizeWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__NPSDomainAccessor_synchronizeWithCompletionHandler___block_invoke_3;
    v6[3] = &unk_1E8129568;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(NPSDomainAccessor *)self internalAccessor];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)objectForKey:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_externalQueue;
  v9 = [(NPSDomainAccessor *)self shouldNotDoWork];
  if (v9)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__NPSDomainAccessor_objectForKey_completionHandler___block_invoke;
    block[3] = &unk_1E8129568;
    v10 = &v18;
    v18 = v7;
    v11 = &v17;
    v17 = v9;
    dispatch_async(v8, block);
  }

  else
  {
    v12 = [(NPSDomainAccessor *)self internalAccessor];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__NPSDomainAccessor_objectForKey_completionHandler___block_invoke_2;
    v13[3] = &unk_1E81295E0;
    v10 = &v15;
    v15 = v7;
    v11 = &v14;
    v14 = v8;
    [v12 objectForKey:v6 completionHandler:v13];
  }
}

void __52__NPSDomainAccessor_objectForKey_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__NPSDomainAccessor_objectForKey_completionHandler___block_invoke_3;
    block[3] = &unk_1E81295B8;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NPSDomainAccessor *)self internalAccessor];
  [v8 setObject:v7 forKey:v6];
}

- (void)setObject:(id)a3 forKey:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self->_externalQueue;
  v12 = [(NPSDomainAccessor *)self shouldNotDoWork];

  if (v12)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__NPSDomainAccessor_setObject_forKey_completionHandler___block_invoke;
    block[3] = &unk_1E8129608;
    v13 = &v21;
    v21 = v10;
    v14 = v10;
    dispatch_async(v11, block);
  }

  else
  {
    v15 = [(NPSDomainAccessor *)self internalAccessor];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __56__NPSDomainAccessor_setObject_forKey_completionHandler___block_invoke_2;
    v17[3] = &unk_1E8129568;
    v13 = &v19;
    v19 = v10;
    v18 = v11;
    v16 = v10;
    [v15 setObject:v8 forKey:v9 completionHandler:v17];
  }
}

void __56__NPSDomainAccessor_setObject_forKey_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__NPSDomainAccessor_setObject_forKey_completionHandler___block_invoke_3;
    block[3] = &unk_1E8129608;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(NPSDomainAccessor *)self internalAccessor];
  [v5 removeObjectForKey:v4];
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = [(NPSDomainAccessor *)self internalAccessor];
  v6 = [v5 stringForKey:v4];

  return v6;
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = [(NPSDomainAccessor *)self internalAccessor];
  v6 = [v5 arrayForKey:v4];

  return v6;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = [(NPSDomainAccessor *)self internalAccessor];
  v6 = [v5 dictionaryForKey:v4];

  return v6;
}

- (id)dataForKey:(id)a3
{
  v4 = a3;
  v5 = [(NPSDomainAccessor *)self internalAccessor];
  v6 = [v5 dataForKey:v4];

  return v6;
}

- (id)stringArrayForKey:(id)a3
{
  v4 = a3;
  v5 = [(NPSDomainAccessor *)self internalAccessor];
  v6 = [v5 arrayForKey:v4];

  return v6;
}

- (int64_t)integerForKey:(id)a3
{
  v4 = a3;
  v5 = [(NPSDomainAccessor *)self internalAccessor];
  v6 = [v5 integerForKey:v4];

  return v6;
}

- (int64_t)longForKey:(id)a3
{
  v4 = a3;
  v5 = [(NPSDomainAccessor *)self internalAccessor];
  v6 = [v5 longForKey:v4];

  return v6;
}

- (float)floatForKey:(id)a3
{
  v4 = a3;
  v5 = [(NPSDomainAccessor *)self internalAccessor];
  [v5 floatForKey:v4];
  v7 = v6;

  return v7;
}

- (double)doubleForKey:(id)a3
{
  v4 = a3;
  v5 = [(NPSDomainAccessor *)self internalAccessor];
  [v5 doubleForKey:v4];
  v7 = v6;

  return v7;
}

- (BOOL)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = [(NPSDomainAccessor *)self internalAccessor];
  v6 = [v5 BOOLForKey:v4];

  return v6;
}

- (id)URLForKey:(id)a3
{
  v4 = a3;
  v5 = [(NPSDomainAccessor *)self internalAccessor];
  v6 = [v5 URLForKey:v4];

  return v6;
}

- (int64_t)integerForKey:(id)a3 keyExistsAndHasValidFormat:(BOOL *)a4
{
  v6 = a3;
  v7 = [(NPSDomainAccessor *)self internalAccessor];
  v8 = [v7 integerForKey:v6 keyExistsAndHasValidFormat:a4];

  return v8;
}

- (int64_t)longForKey:(id)a3 keyExistsAndHasValidFormat:(BOOL *)a4
{
  v6 = a3;
  v7 = [(NPSDomainAccessor *)self internalAccessor];
  v8 = [v7 longForKey:v6 keyExistsAndHasValidFormat:a4];

  return v8;
}

- (float)floatForKey:(id)a3 keyExistsAndHasValidFormat:(BOOL *)a4
{
  v6 = a3;
  v7 = [(NPSDomainAccessor *)self internalAccessor];
  [v7 floatForKey:v6 keyExistsAndHasValidFormat:a4];
  v9 = v8;

  return v9;
}

- (double)doubleForKey:(id)a3 keyExistsAndHasValidFormat:(BOOL *)a4
{
  v6 = a3;
  v7 = [(NPSDomainAccessor *)self internalAccessor];
  [v7 doubleForKey:v6 keyExistsAndHasValidFormat:a4];
  v9 = v8;

  return v9;
}

- (BOOL)BOOLForKey:(id)a3 keyExistsAndHasValidFormat:(BOOL *)a4
{
  v6 = a3;
  v7 = [(NPSDomainAccessor *)self internalAccessor];
  LOBYTE(a4) = [v7 BOOLForKey:v6 keyExistsAndHasValidFormat:a4];

  return a4;
}

- (void)setInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [(NPSDomainAccessor *)self internalAccessor];
  [v7 setInteger:a3 forKey:v6];
}

- (void)setFloat:(float)a3 forKey:(id)a4
{
  v6 = a4;
  v8 = [(NPSDomainAccessor *)self internalAccessor];
  *&v7 = a3;
  [v8 setFloat:v6 forKey:v7];
}

- (void)setDouble:(double)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [(NPSDomainAccessor *)self internalAccessor];
  [v7 setDouble:v6 forKey:a3];
}

- (void)setURL:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NPSDomainAccessor *)self internalAccessor];
  [v8 setURL:v7 forKey:v6];
}

- (id)dictionaryRepresentation
{
  v2 = [(NPSDomainAccessor *)self internalAccessor];
  v3 = [v2 dictionaryRepresentation];

  return v3;
}

- (id)copyKeyList
{
  v2 = [(NPSDomainAccessor *)self internalAccessor];
  v3 = [v2 copyKeyList];

  return v3;
}

+ (id)copyDomainList
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "+[NPSDomainAccessor copyDomainList]";
    _os_log_impl(&dword_1C0D93000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (NPSShouldRun())
  {
    v11 = 0;
    v12 = 0;
    [objc_opt_class() resolveActivePairedDevicePairingID:&v12 pairingDataStore:&v11];
    v4 = v12;
    v5 = v11;
    v6 = v5;
    v7 = 0;
    if (v4 && v5)
    {
      v7 = [a1 copyDomainListForPairingID:v4 pairingDataStore:v5];
    }
  }

  else
  {
    v8 = nps_domain_accessor_log;
    if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "+[NPSDomainAccessor copyDomainList]";
      _os_log_impl(&dword_1C0D93000, v8, OS_LOG_TYPE_DEFAULT, "%s: No paired watches, returning nil", buf, 0xCu);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)copyDomainListForPairingID:(id)a3 pairingDataStore:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "+[NPSDomainAccessor copyDomainListForPairingID:pairingDataStore:]";
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_1C0D93000, v7, OS_LOG_TYPE_DEFAULT, "%s: pairingID: (%@); pairingDataStore: (%@)", &v12, 0x20u);
  }

  if (NPSShouldRun())
  {
    v8 = [NPSDomainAccessorInternal copyDomainListForPairingDataStore:v6];
  }

  else
  {
    v9 = nps_domain_accessor_log;
    if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "+[NPSDomainAccessor copyDomainListForPairingID:pairingDataStore:]";
      _os_log_impl(&dword_1C0D93000, v9, OS_LOG_TYPE_DEFAULT, "%s: No paired watches, returning nil", &v12, 0xCu);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (unint64_t)domainSize
{
  v2 = [(NPSDomainAccessor *)self internalAccessor];
  v3 = [v2 domainSize];

  return v3;
}

- (BOOL)requiresDeviceUnlockedSinceBoot
{
  v2 = [(NPSDomainAccessor *)self internalAccessor];
  v3 = [v2 requiresDeviceUnlockedSinceBoot];

  return v3;
}

@end