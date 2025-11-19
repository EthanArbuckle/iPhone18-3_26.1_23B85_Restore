@interface IKAppDataStorage
- (IKAppDataStorage)initWithFilePath:(id)a3 identifier:(id)a4;
- (id)dictionaryRepresentation;
- (id)getDataForKey:(id)a3;
- (id)keyAtIndex:(unint64_t)a3;
- (unint64_t)count;
- (unint64_t)setData:(id)a3 forKey:(id)a4;
- (void)_saveDict:(id)a3;
- (void)clear;
- (void)removeDataForKey:(id)a3;
@end

@implementation IKAppDataStorage

- (IKAppDataStorage)initWithFilePath:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (initWithFilePath_identifier__onceToken != -1)
  {
    [IKAppDataStorage initWithFilePath:identifier:];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_14:
    v20 = 0;
    goto LABEL_15;
  }

  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_3:
  v23.receiver = self;
  v23.super_class = IKAppDataStorage;
  v9 = [(IKAppDataStorage *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a4);
    objc_storeStrong(&v10->_filePath, a3);
    v10->_format = 200;
    v11 = objc_opt_new();
    storageDict = v10->_storageDict;
    v10->_storageDict = v11;

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_Storage_Queue", v8];
    v14 = dispatch_queue_create([v13 UTF8String], 0);
    storageQueue = v10->_storageQueue;
    v10->_storageQueue = v14;

    v16 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v10->_filePath];
    if (v16)
    {
      v22 = 0;
      v17 = [MEMORY[0x277CCAC58] propertyListWithData:v16 options:0 format:&v10->_format error:&v22];
      v18 = v22;
      if (v17)
      {
        [(NSMutableDictionary *)v10->_storageDict addEntriesFromDictionary:v17];
      }

      else
      {
        v19 = ITMLKitGetLogObject(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [(IKAppDataStorage *)&v10->_filePath initWithFilePath:v18 identifier:v19];
        }
      }
    }
  }

  self = v10;
  v20 = self;
LABEL_15:

  return v20;
}

uint64_t __48__IKAppDataStorage_initWithFilePath_identifier___block_invoke()
{
  sStorageWriteQueue = dispatch_queue_create("Storage Write Queue", 0);

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)count
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(IKAppDataStorage *)self storageQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __25__IKAppDataStorage_count__block_invoke;
  v6[3] = &unk_2797997E0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __25__IKAppDataStorage_count__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storageDict];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

- (id)keyAtIndex:(unint64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  v5 = [(IKAppDataStorage *)self storageQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__IKAppDataStorage_keyAtIndex___block_invoke;
  block[3] = &unk_279799808;
  block[5] = &v9;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(v5, block);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __31__IKAppDataStorage_keyAtIndex___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) storageDict];
  v4 = [v3 count];

  if (v2 < v4)
  {
    v9 = [*(a1 + 32) storageDict];
    v5 = [v9 allKeys];
    v6 = [v5 objectAtIndex:*(a1 + 48)];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (id)getDataForKey:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = 0;
  if ([v4 length])
  {
    v5 = [(IKAppDataStorage *)self storageQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__IKAppDataStorage_getDataForKey___block_invoke;
    block[3] = &unk_279799830;
    v10 = &v11;
    block[4] = self;
    v9 = v4;
    dispatch_sync(v5, block);
  }

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __34__IKAppDataStorage_getDataForKey___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) storageDict];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unint64_t)setData:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length] && objc_msgSend(v6, "length"))
  {
    v8 = [(IKAppDataStorage *)self storageQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__IKAppDataStorage_setData_forKey___block_invoke;
    block[3] = &unk_279799858;
    block[4] = self;
    v11 = v6;
    v12 = v7;
    dispatch_async(v8, block);
  }

  return 0;
}

void __35__IKAppDataStorage_setData_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storageDict];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];

  v3 = *(a1 + 32);
  v5 = [v3 storageDict];
  v4 = [v5 copy];
  [v3 _saveDict:v4];
}

- (void)removeDataForKey:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(IKAppDataStorage *)self storageQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__IKAppDataStorage_removeDataForKey___block_invoke;
    v6[3] = &unk_279799880;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void __37__IKAppDataStorage_removeDataForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storageDict];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) storageDict];
    [v4 removeObjectForKey:*(a1 + 40)];

    v5 = *(a1 + 32);
    v7 = [v5 storageDict];
    v6 = [v7 copy];
    [v5 _saveDict:v6];
  }
}

- (void)clear
{
  v3 = [(IKAppDataStorage *)self storageQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__IKAppDataStorage_clear__block_invoke;
  block[3] = &unk_279799488;
  block[4] = self;
  dispatch_async(v3, block);
}

void __25__IKAppDataStorage_clear__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storageDict];
  [v2 removeAllObjects];

  v3 = *(a1 + 32);
  v5 = [v3 storageDict];
  v4 = [v5 copy];
  [v3 _saveDict:v4];
}

- (id)dictionaryRepresentation
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v3 = [(IKAppDataStorage *)self storageQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__IKAppDataStorage_dictionaryRepresentation__block_invoke;
  v6[3] = &unk_2797997E0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __44__IKAppDataStorage_dictionaryRepresentation__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) storageDict];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_saveDict:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = sStorageWriteQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__IKAppDataStorage__saveDict___block_invoke;
  block[3] = &unk_2797998A8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __30__IKAppDataStorage__saveDict___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = WeakRetained[1];
    v10 = 0;
    v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:v3 format:v4 options:0 error:&v10];
    v6 = v10;
    if (v5)
    {
      v7 = [WeakRetained filePath];
      v8 = [v5 writeToFile:v7 atomically:1];

      if (v8)
      {
LABEL_9:

        goto LABEL_10;
      }

      v9 = ITMLKitGetLogObject(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __30__IKAppDataStorage__saveDict___block_invoke_cold_1(WeakRetained, v9);
      }
    }

    else
    {
      v9 = ITMLKitGetLogObject(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __30__IKAppDataStorage__saveDict___block_invoke_cold_2(WeakRetained, v6, v9);
      }
    }

    goto LABEL_9;
  }

LABEL_10:
}

@end