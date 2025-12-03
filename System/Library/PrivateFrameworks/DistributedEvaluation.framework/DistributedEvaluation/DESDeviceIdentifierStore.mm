@interface DESDeviceIdentifierStore
- (DESDeviceIdentifierStore)init;
- (DESDeviceIdentifierStore)initWithStoreURL:(id)l;
- (id)identifierForBundleId:(id)id;
- (void)_readIdentifierStore;
- (void)_writeIdentifierStore;
@end

@implementation DESDeviceIdentifierStore

- (DESDeviceIdentifierStore)init
{
  v3 = DESDeviceIdentifierStoreURL();
  v4 = [(DESDeviceIdentifierStore *)self initWithStoreURL:v3];

  return v4;
}

- (DESDeviceIdentifierStore)initWithStoreURL:(id)l
{
  lCopy = l;
  v14.receiver = self;
  v14.super_class = DESDeviceIdentifierStore;
  v6 = [(DESDeviceIdentifierStore *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeURL, l);
    v8 = dispatch_queue_create("com.apple.distributed-evaluation.identifier-store", 0);
    queue = v7->_queue;
    v7->_queue = v8;

    v10 = v7->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__DESDeviceIdentifierStore_initWithStoreURL___block_invoke;
    block[3] = &unk_278F83C58;
    v13 = v7;
    dispatch_async(v10, block);
  }

  return v7;
}

- (id)identifierForBundleId:(id)id
{
  idCopy = id;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  idCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"dodML_%@_identifier", idCopy];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__DESDeviceIdentifierStore_identifierForBundleId___block_invoke;
  block[3] = &unk_278F83C80;
  v22 = &v23;
  block[4] = self;
  v7 = idCopy;
  v21 = v7;
  dispatch_sync(queue, block);
  v8 = v24[5];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v12 = v24[5];
    v24[5] = uUIDString;

    v13 = self->_queue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __50__DESDeviceIdentifierStore_identifierForBundleId___block_invoke_2;
    v15[3] = &unk_278F83CA8;
    v16 = idCopy;
    selfCopy = self;
    v19 = &v23;
    v18 = v7;
    dispatch_async(v13, v15);
    v9 = v24[5];
  }

  _Block_object_dispose(&v23, 8);

  return v9;
}

uint64_t __50__DESDeviceIdentifierStore_identifierForBundleId___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

uint64_t __50__DESDeviceIdentifierStore_identifierForBundleId___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_248FF7000, v2, OS_LOG_TYPE_INFO, "Saving new DES identifier for: %@", &v6, 0xCu);
  }

  [*(*(a1 + 40) + 24) setObject:*(*(*(a1 + 56) + 8) + 40) forKey:*(a1 + 48)];
  result = [*(a1 + 40) _writeIdentifierStore];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_readIdentifierStore
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_248FF7000, a2, OS_LOG_TYPE_ERROR, "Failed to read DES identifier data because %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_writeIdentifierStore
{
  v14 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->_deviceIdentifiers];
  v11 = 0;
  v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:0 error:&v11];
  v5 = v11;
  v6 = v5;
  if (v4)
  {
    storeURL = self->_storeURL;
    v10 = v5;
    [v4 writeToURL:storeURL options:0x40000000 error:&v10];
    v8 = v6;
    v6 = v10;
  }

  else
  {
    v8 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_248FF7000, v8, OS_LOG_TYPE_DEFAULT, "Could not write new DES identifier file because %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end