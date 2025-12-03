@interface DNDSSyncEngineLastChanceDataStore
- (DNDSSyncEngineLastChanceDataStore)initWithURL:(id)l;
- (NSDictionary)records;
- (id)_decodeRecordFromData:(id)data;
- (id)_encodedDataFromRecord:(id)record;
- (id)recordWithID:(id)d;
- (id)recordsWithZoneID:(id)d;
- (void)_queue_read;
- (void)_queue_write;
- (void)addRecord:(id)record;
- (void)purge;
- (void)removeRecordWithID:(id)d;
- (void)removeRecordsWithZoneID:(id)d;
@end

@implementation DNDSSyncEngineLastChanceDataStore

- (DNDSSyncEngineLastChanceDataStore)initWithURL:(id)l
{
  lCopy = l;
  v15.receiver = self;
  v15.super_class = DNDSSyncEngineLastChanceDataStore;
  v5 = [(DNDSSyncEngineLastChanceDataStore *)&v15 init];
  if (v5)
  {
    v6 = [lCopy copy];
    url = v5->_url;
    v5->_url = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.donotdisturb.DNDSSyncEngineLastChanceDataStore.queue", v8);
    queue = v5->_queue;
    v5->_queue = v9;

    v11 = v5->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__DNDSSyncEngineLastChanceDataStore_initWithURL___block_invoke;
    block[3] = &unk_278F89ED0;
    v14 = v5;
    dispatch_async(v11, block);
  }

  return v5;
}

- (NSDictionary)records
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__DNDSSyncEngineLastChanceDataStore_records__block_invoke;
  v5[3] = &unk_278F89EA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __44__DNDSSyncEngineLastChanceDataStore_records__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)recordsWithZoneID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  array = [MEMORY[0x277CBEB18] array];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__DNDSSyncEngineLastChanceDataStore_recordsWithZoneID___block_invoke;
  block[3] = &unk_278F8ACC8;
  block[4] = self;
  v10 = dCopy;
  v11 = &v12;
  v6 = dCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __55__DNDSSyncEngineLastChanceDataStore_recordsWithZoneID___block_invoke(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1[4] + 8);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 zoneID];
        v9 = [v8 isEqual:a1[5]];

        if (v9)
        {
          v10 = [*(a1[4] + 8) objectForKeyedSubscript:v7];
          [*(*(a1[6] + 8) + 40) addObject:v10];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)recordWithID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__DNDSSyncEngineLastChanceDataStore_recordWithID___block_invoke;
  block[3] = &unk_278F8ACF0;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __50__DNDSSyncEngineLastChanceDataStore_recordWithID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)addRecord:(id)record
{
  recordCopy = record;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__DNDSSyncEngineLastChanceDataStore_addRecord___block_invoke;
  v7[3] = &unk_278F89F48;
  v7[4] = self;
  v8 = recordCopy;
  v6 = recordCopy;
  dispatch_sync(queue, v7);
}

uint64_t __47__DNDSSyncEngineLastChanceDataStore_addRecord___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = [v2 recordID];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = *(a1 + 32);

  return [v5 _queue_write];
}

- (void)removeRecordWithID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__DNDSSyncEngineLastChanceDataStore_removeRecordWithID___block_invoke;
  v7[3] = &unk_278F89F48;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(queue, v7);
}

void __56__DNDSSyncEngineLastChanceDataStore_removeRecordWithID___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];

  if (v2)
  {
    [*(*(a1 + 32) + 8) setObject:0 forKeyedSubscript:*(a1 + 40)];
    v3 = *(a1 + 32);

    [v3 _queue_write];
  }
}

- (void)removeRecordsWithZoneID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__DNDSSyncEngineLastChanceDataStore_removeRecordsWithZoneID___block_invoke;
  v7[3] = &unk_278F89F48;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(queue, v7);
}

void __61__DNDSSyncEngineLastChanceDataStore_removeRecordsWithZoneID___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = *(*(a1 + 32) + 8);
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v8 zoneID];
        v10 = [v9 isEqual:*(a1 + 40)];

        if (v10)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v2;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(a1 + 32) + 8) setObject:0 forKeyedSubscript:{*(*(&v17 + 1) + 8 * j), v17}];
        }

        v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v13);
    }

    [*(a1 + 32) _queue_write];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)purge
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_24912E000, a2, a3, "Failed to delete last chance store: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_queue_read
{
  v23 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  queue_recordsByID = self->_queue_recordsByID;
  self->_queue_recordsByID = dictionary;

  if (self->_url)
  {
    v5 = [MEMORY[0x277CBEA60] arrayWithContentsOfURL:?];
    v6 = v5;
    if (v5)
    {
      array = v5;
    }

    else
    {
      array = [MEMORY[0x277CBEA60] array];
    }

    v8 = array;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [(DNDSSyncEngineLastChanceDataStore *)self _decodeRecordFromData:*(*(&v18 + 1) + 8 * i), v18];
          v15 = self->_queue_recordsByID;
          recordID = [v14 recordID];
          [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:recordID];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_queue_write
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_24912E000, a2, a3, "Failed to write last chance store: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)_encodedDataFromRecord:(id)record
{
  v3 = MEMORY[0x277CCAAB0];
  recordCopy = record;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [recordCopy encodeWithCoder:v5];

  encodedData = [v5 encodedData];

  return encodedData;
}

- (id)_decodeRecordFromData:(id)data
{
  v3 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  v5 = [[v3 alloc] initForReadingFromData:dataCopy error:0];

  v6 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithCoder:v5];

  return v6;
}

@end