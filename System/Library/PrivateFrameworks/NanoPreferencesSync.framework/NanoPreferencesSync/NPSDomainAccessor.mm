@interface NPSDomainAccessor
+ (id)copyDomainList;
+ (id)copyDomainListForPairingID:(id)d pairingDataStore:(id)store;
+ (void)resolveActivePairedDevicePairingID:(id *)d pairingDataStore:(id *)store;
- (BOOL)BOOLForKey:(id)key;
- (BOOL)BOOLForKey:(id)key keyExistsAndHasValidFormat:(BOOL *)format;
- (BOOL)activeDeviceChanged;
- (BOOL)requiresDeviceUnlockedSinceBoot;
- (NPSDomainAccessor)initWithDomain:(id)domain;
- (NPSDomainAccessor)initWithDomain:(id)domain pairedDevice:(id)device;
- (NPSDomainAccessor)initWithDomain:(id)domain pdrDevice:(id)device;
- (NPSDomainAccessor)initWithDomain:(id)domain queue:(id)queue;
- (NPSDomainAccessor)initWithDomain:(id)domain queue:(id)queue pairingID:(id)d pairingDataStore:(id)store;
- (NPSDomainAccessor)initWithInternalDomainAccessor:(id)accessor queue:(id)queue;
- (NPSDomainAccessorInternal)internalAccessor;
- (NSString)domain;
- (NSUUID)pairingID;
- (double)doubleForKey:(id)key;
- (double)doubleForKey:(id)key keyExistsAndHasValidFormat:(BOOL *)format;
- (float)floatForKey:(id)key;
- (float)floatForKey:(id)key keyExistsAndHasValidFormat:(BOOL *)format;
- (id)URLForKey:(id)key;
- (id)arrayForKey:(id)key;
- (id)copyKeyList;
- (id)dataForKey:(id)key;
- (id)dictionaryForKey:(id)key;
- (id)dictionaryRepresentation;
- (id)objectForKey:(id)key;
- (id)shouldNotDoWork;
- (id)stringArrayForKey:(id)key;
- (id)stringForKey:(id)key;
- (id)synchronize;
- (int64_t)integerForKey:(id)key;
- (int64_t)integerForKey:(id)key keyExistsAndHasValidFormat:(BOOL *)format;
- (int64_t)longForKey:(id)key;
- (int64_t)longForKey:(id)key keyExistsAndHasValidFormat:(BOOL *)format;
- (unint64_t)domainSize;
- (void)dealloc;
- (void)invalidate;
- (void)objectForKey:(id)key completionHandler:(id)handler;
- (void)removeObjectForKey:(id)key;
- (void)setDouble:(double)double forKey:(id)key;
- (void)setFloat:(float)float forKey:(id)key;
- (void)setInteger:(int64_t)integer forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key completionHandler:(id)handler;
- (void)setURL:(id)l forKey:(id)key;
- (void)synchronizeWithCompletionHandler:(id)handler;
@end

@implementation NPSDomainAccessor

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
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
  shouldNotDoWork = [(NPSDomainAccessor *)self shouldNotDoWork];

  if (shouldNotDoWork)
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
    pairingID = [(NPSDomainAccessorInternal *)internalAccessor pairingID];
    *buf = 136315650;
    v14 = "[NPSDomainAccessor activeDeviceChanged]";
    v15 = 2112;
    v16 = v3;
    v17 = 2112;
    v18 = pairingID;
    _os_log_impl(&dword_1C0D93000, v6, OS_LOG_TYPE_DEFAULT, "%s: Current active pairing ID: %@. Old ID %@.", buf, 0x20u);
  }

  pairingID2 = [(NPSDomainAccessorInternal *)self->_internalAccessor pairingID];
  v9 = [v3 isEqual:pairingID2];

  v10 = *MEMORY[0x1E69E9840];
  return v9 ^ 1;
}

- (id)synchronize
{
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  synchronize = [internalAccessor synchronize];

  return synchronize;
}

+ (void)resolveActivePairedDevicePairingID:(id *)d pairingDataStore:(id *)store
{
  v19 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69B7DA0] = [MEMORY[0x1E69B7DA0] sharedInstance];
  pairingID = [mEMORY[0x1E69B7DA0] pairingID];

  mEMORY[0x1E69B7DA0]2 = [MEMORY[0x1E69B7DA0] sharedInstance];
  pairingStorePath = [mEMORY[0x1E69B7DA0]2 pairingStorePath];

  if (pairingID)
  {
    v10 = pairingStorePath == 0;
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
      v16 = pairingID;
      v17 = 2112;
      v18 = pairingStorePath;
      _os_log_impl(&dword_1C0D93000, v11, OS_LOG_TYPE_DEFAULT, "Failed to resolve pairing ID (%@) or data store (%@) for active device", &v15, 0x16u);
    }
  }

  else
  {
    if (d)
    {
      v12 = pairingID;
      *d = pairingID;
    }

    if (store)
    {
      v13 = pairingStorePath;
      *store = pairingStorePath;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (NSString)domain
{
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  domain = [internalAccessor domain];

  return domain;
}

- (NSUUID)pairingID
{
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  pairingID = [internalAccessor pairingID];

  return pairingID;
}

- (NPSDomainAccessor)initWithDomain:(id)domain
{
  v13 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  v5 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[NPSDomainAccessor initWithDomain:]";
    v11 = 2112;
    v12 = domainCopy;
    _os_log_impl(&dword_1C0D93000, v5, OS_LOG_TYPE_DEFAULT, "%s: domain: (%@)", &v9, 0x16u);
  }

  v6 = [(NPSDomainAccessor *)self initWithDomain:domainCopy queue:0];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (NPSDomainAccessor)initWithDomain:(id)domain queue:(id)queue
{
  v25 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  queueCopy = queue;
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
    v20 = domainCopy;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_1C0D93000, v10, OS_LOG_TYPE_DEFAULT, "%s: domain: (%@) pairingID: (%@); pairingDataStore: (%@)", buf, 0x2Au);
  }

  if (v8 && v9)
  {
    self = [(NPSDomainAccessor *)self initWithDomain:domainCopy queue:queueCopy pairingID:v8 pairingDataStore:v9];
    selfCopy = self;
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

    selfCopy = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (NPSDomainAccessor)initWithDomain:(id)domain pdrDevice:(id)device
{
  deviceCopy = device;
  domainCopy = domain;
  pairingID = [deviceCopy pairingID];
  pairingStorePath = [deviceCopy pairingStorePath];

  v10 = [(NPSDomainAccessor *)self initWithDomain:domainCopy pairingID:pairingID pairingDataStore:pairingStorePath];
  return v10;
}

- (NPSDomainAccessor)initWithDomain:(id)domain pairedDevice:(id)device
{
  v6 = *MEMORY[0x1E69B3610];
  deviceCopy = device;
  domainCopy = domain;
  v9 = [deviceCopy valueForProperty:v6];
  v10 = [deviceCopy valueForProperty:*MEMORY[0x1E69B35F8]];

  v11 = [(NPSDomainAccessor *)self initWithDomain:domainCopy pairingID:v9 pairingDataStore:v10];
  return v11;
}

- (NPSDomainAccessor)initWithDomain:(id)domain queue:(id)queue pairingID:(id)d pairingDataStore:(id)store
{
  v32 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  queueCopy = queue;
  dCopy = d;
  storeCopy = store;
  v14 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136316162;
    v23 = "[NPSDomainAccessor initWithDomain:queue:pairingID:pairingDataStore:]";
    v24 = 2112;
    v25 = domainCopy;
    v26 = 2112;
    v27 = queueCopy;
    v28 = 2112;
    v29 = dCopy;
    v30 = 2112;
    v31 = storeCopy;
    _os_log_impl(&dword_1C0D93000, v14, OS_LOG_TYPE_DEFAULT, "%s: domain: (%@); queue: (%@); pairingID: (%@); pairingDataStore: (%@)", &v22, 0x34u);
  }

  v15 = [NPSDomainAccessorInternal domainIsValid:domainCopy];
  if (storeCopy && dCopy && v15)
  {
    v16 = [NPSDomainAccessorInternal internalAccessorForPairingID:dCopy pairingDataStore:storeCopy domain:domainCopy];
    if (v16)
    {
      self = [(NPSDomainAccessor *)self initWithInternalDomainAccessor:v16 queue:queueCopy];
      selfCopy = self;
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

      selfCopy = 0;
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

    selfCopy = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (NPSDomainAccessor)initWithInternalDomainAccessor:(id)accessor queue:(id)queue
{
  v29 = *MEMORY[0x1E69E9840];
  accessorCopy = accessor;
  queueCopy = queue;
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
    v26 = queueCopy;
    v27 = 2048;
    v28 = accessorCopy;
    _os_log_impl(&dword_1C0D93000, v10, OS_LOG_TYPE_DEFAULT, "self: (%p); queue: (%@); internalAccessor: (%p)", buf, 0x20u);
  }

  objc_storeStrong(&v9->_internalAccessor, accessor);
  if (queueCopy)
  {
    v11 = queueCopy;
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

  shouldNotDoWork = [(NPSDomainAccessor *)v9 shouldNotDoWork];

  if (shouldNotDoWork)
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

- (void)synchronizeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = self->_externalQueue;
  shouldNotDoWork = [(NPSDomainAccessor *)self shouldNotDoWork];
  if (shouldNotDoWork)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__NPSDomainAccessor_synchronizeWithCompletionHandler___block_invoke;
    block[3] = &unk_1E8129568;
    v7 = &v15;
    v15 = handlerCopy;
    v8 = &v14;
    v14 = shouldNotDoWork;
    dispatch_async(v5, block);
  }

  else
  {
    internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__NPSDomainAccessor_synchronizeWithCompletionHandler___block_invoke_2;
    v10[3] = &unk_1E8129590;
    v7 = &v12;
    v12 = handlerCopy;
    v8 = &v11;
    v11 = v5;
    [internalAccessor synchronizeWithCompletionHandler:v10];
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

- (id)objectForKey:(id)key
{
  keyCopy = key;
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  v6 = [internalAccessor objectForKey:keyCopy];

  return v6;
}

- (void)objectForKey:(id)key completionHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  v8 = self->_externalQueue;
  shouldNotDoWork = [(NPSDomainAccessor *)self shouldNotDoWork];
  if (shouldNotDoWork)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__NPSDomainAccessor_objectForKey_completionHandler___block_invoke;
    block[3] = &unk_1E8129568;
    v10 = &v18;
    v18 = handlerCopy;
    v11 = &v17;
    v17 = shouldNotDoWork;
    dispatch_async(v8, block);
  }

  else
  {
    internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__NPSDomainAccessor_objectForKey_completionHandler___block_invoke_2;
    v13[3] = &unk_1E81295E0;
    v10 = &v15;
    v15 = handlerCopy;
    v11 = &v14;
    v14 = v8;
    [internalAccessor objectForKey:keyCopy completionHandler:v13];
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

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  [internalAccessor setObject:objectCopy forKey:keyCopy];
}

- (void)setObject:(id)object forKey:(id)key completionHandler:(id)handler
{
  objectCopy = object;
  keyCopy = key;
  handlerCopy = handler;
  v11 = self->_externalQueue;
  shouldNotDoWork = [(NPSDomainAccessor *)self shouldNotDoWork];

  if (shouldNotDoWork)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__NPSDomainAccessor_setObject_forKey_completionHandler___block_invoke;
    block[3] = &unk_1E8129608;
    v13 = &v21;
    v21 = handlerCopy;
    v14 = handlerCopy;
    dispatch_async(v11, block);
  }

  else
  {
    internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __56__NPSDomainAccessor_setObject_forKey_completionHandler___block_invoke_2;
    v17[3] = &unk_1E8129568;
    v13 = &v19;
    v19 = handlerCopy;
    v18 = v11;
    v16 = handlerCopy;
    [internalAccessor setObject:objectCopy forKey:keyCopy completionHandler:v17];
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

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  [internalAccessor removeObjectForKey:keyCopy];
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  v6 = [internalAccessor stringForKey:keyCopy];

  return v6;
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  v6 = [internalAccessor arrayForKey:keyCopy];

  return v6;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  v6 = [internalAccessor dictionaryForKey:keyCopy];

  return v6;
}

- (id)dataForKey:(id)key
{
  keyCopy = key;
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  v6 = [internalAccessor dataForKey:keyCopy];

  return v6;
}

- (id)stringArrayForKey:(id)key
{
  keyCopy = key;
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  v6 = [internalAccessor arrayForKey:keyCopy];

  return v6;
}

- (int64_t)integerForKey:(id)key
{
  keyCopy = key;
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  v6 = [internalAccessor integerForKey:keyCopy];

  return v6;
}

- (int64_t)longForKey:(id)key
{
  keyCopy = key;
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  v6 = [internalAccessor longForKey:keyCopy];

  return v6;
}

- (float)floatForKey:(id)key
{
  keyCopy = key;
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  [internalAccessor floatForKey:keyCopy];
  v7 = v6;

  return v7;
}

- (double)doubleForKey:(id)key
{
  keyCopy = key;
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  [internalAccessor doubleForKey:keyCopy];
  v7 = v6;

  return v7;
}

- (BOOL)BOOLForKey:(id)key
{
  keyCopy = key;
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  v6 = [internalAccessor BOOLForKey:keyCopy];

  return v6;
}

- (id)URLForKey:(id)key
{
  keyCopy = key;
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  v6 = [internalAccessor URLForKey:keyCopy];

  return v6;
}

- (int64_t)integerForKey:(id)key keyExistsAndHasValidFormat:(BOOL *)format
{
  keyCopy = key;
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  v8 = [internalAccessor integerForKey:keyCopy keyExistsAndHasValidFormat:format];

  return v8;
}

- (int64_t)longForKey:(id)key keyExistsAndHasValidFormat:(BOOL *)format
{
  keyCopy = key;
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  v8 = [internalAccessor longForKey:keyCopy keyExistsAndHasValidFormat:format];

  return v8;
}

- (float)floatForKey:(id)key keyExistsAndHasValidFormat:(BOOL *)format
{
  keyCopy = key;
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  [internalAccessor floatForKey:keyCopy keyExistsAndHasValidFormat:format];
  v9 = v8;

  return v9;
}

- (double)doubleForKey:(id)key keyExistsAndHasValidFormat:(BOOL *)format
{
  keyCopy = key;
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  [internalAccessor doubleForKey:keyCopy keyExistsAndHasValidFormat:format];
  v9 = v8;

  return v9;
}

- (BOOL)BOOLForKey:(id)key keyExistsAndHasValidFormat:(BOOL *)format
{
  keyCopy = key;
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  LOBYTE(format) = [internalAccessor BOOLForKey:keyCopy keyExistsAndHasValidFormat:format];

  return format;
}

- (void)setInteger:(int64_t)integer forKey:(id)key
{
  keyCopy = key;
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  [internalAccessor setInteger:integer forKey:keyCopy];
}

- (void)setFloat:(float)float forKey:(id)key
{
  keyCopy = key;
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  *&v7 = float;
  [internalAccessor setFloat:keyCopy forKey:v7];
}

- (void)setDouble:(double)double forKey:(id)key
{
  keyCopy = key;
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  [internalAccessor setDouble:keyCopy forKey:double];
}

- (void)setURL:(id)l forKey:(id)key
{
  keyCopy = key;
  lCopy = l;
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  [internalAccessor setURL:lCopy forKey:keyCopy];
}

- (id)dictionaryRepresentation
{
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  dictionaryRepresentation = [internalAccessor dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (id)copyKeyList
{
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  copyKeyList = [internalAccessor copyKeyList];

  return copyKeyList;
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
      v7 = [self copyDomainListForPairingID:v4 pairingDataStore:v5];
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

+ (id)copyDomainListForPairingID:(id)d pairingDataStore:(id)store
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  storeCopy = store;
  v7 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "+[NPSDomainAccessor copyDomainListForPairingID:pairingDataStore:]";
    v14 = 2112;
    v15 = dCopy;
    v16 = 2112;
    v17 = storeCopy;
    _os_log_impl(&dword_1C0D93000, v7, OS_LOG_TYPE_DEFAULT, "%s: pairingID: (%@); pairingDataStore: (%@)", &v12, 0x20u);
  }

  if (NPSShouldRun())
  {
    v8 = [NPSDomainAccessorInternal copyDomainListForPairingDataStore:storeCopy];
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
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  domainSize = [internalAccessor domainSize];

  return domainSize;
}

- (BOOL)requiresDeviceUnlockedSinceBoot
{
  internalAccessor = [(NPSDomainAccessor *)self internalAccessor];
  requiresDeviceUnlockedSinceBoot = [internalAccessor requiresDeviceUnlockedSinceBoot];

  return requiresDeviceUnlockedSinceBoot;
}

@end