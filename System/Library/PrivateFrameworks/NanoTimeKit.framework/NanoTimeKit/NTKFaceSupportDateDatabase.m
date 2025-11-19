@interface NTKFaceSupportDateDatabase
- (NTKFaceSupportDateDatabase)initWithFileAtPath:(id)a3;
- (id)_queue_save;
- (void)_queue_loadLookup;
- (void)deleteDateForBundleIdentifier:(id)a3 completion:(id)a4;
- (void)recordDate:(id)a3 bundleIdentifier:(id)a4 completion:(id)a5;
- (void)retreiveDateForBundleIdentifier:(id)a3 completion:(id)a4;
@end

@implementation NTKFaceSupportDateDatabase

- (NTKFaceSupportDateDatabase)initWithFileAtPath:(id)a3
{
  v4 = a3;
  if ([v4 length] && (objc_msgSend(v4, "pathExtension"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"db"), v5, v6))
  {
    v15.receiver = self;
    v15.super_class = NTKFaceSupportDateDatabase;
    v7 = [(NTKFaceSupportDateDatabase *)&v15 init];
    if (v7)
    {
      v8 = [v4 copy];
      filePath = v7->_filePath;
      v7->_filePath = v8;

      v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v11 = dispatch_queue_create("com.apple.facesupport.dateDatabase", v10);
      fileQueue = v7->_fileQueue;
      v7->_fileQueue = v11;
    }

    self = v7;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)recordDate:(id)a3 bundleIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    v11 = v9;
    goto LABEL_9;
  }

  v11 = [v9 copy];

  if (!v8)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportDateDatabaseErrorDomain" code:405 userInfo:0];
    fileQueue = self->_fileQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__NTKFaceSupportDateDatabase_recordDate_bundleIdentifier_completion___block_invoke;
    block[3] = &unk_27877E570;
    v27 = v13;
    v28 = v10;
    v15 = v13;
    dispatch_async(fileQueue, block);

    v16 = v28;
LABEL_8:

    goto LABEL_9;
  }

  if (![v11 length])
  {
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportDateDatabaseErrorDomain" code:411 userInfo:0];
    v18 = self->_fileQueue;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__NTKFaceSupportDateDatabase_recordDate_bundleIdentifier_completion___block_invoke_2;
    v23[3] = &unk_27877E570;
    v24 = v17;
    v25 = v10;
    v15 = v17;
    dispatch_async(v18, v23);

    v16 = v25;
    goto LABEL_8;
  }

  v12 = self->_fileQueue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __69__NTKFaceSupportDateDatabase_recordDate_bundleIdentifier_completion___block_invoke_3;
  v19[3] = &unk_2787808C8;
  v19[4] = self;
  v20 = v8;
  v11 = v11;
  v21 = v11;
  v22 = v10;
  dispatch_async(v12, v19);

LABEL_9:
}

void __69__NTKFaceSupportDateDatabase_recordDate_bundleIdentifier_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _queue_loadLookup];
  v2 = *(*(a1 + 32) + 16);
  v3 = MEMORY[0x277CCABB0];
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  v4 = [v3 numberWithDouble:?];
  [v2 setObject:v4 forKey:*(a1 + 48)];

  v5 = [*(a1 + 32) _queue_save];
  (*(*(a1 + 56) + 16))();
}

- (void)retreiveDateForBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 copy];

    if ([v8 length])
    {
      fileQueue = self->_fileQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__NTKFaceSupportDateDatabase_retreiveDateForBundleIdentifier_completion___block_invoke_2;
      block[3] = &unk_27877DC88;
      block[4] = self;
      v8 = v8;
      v14 = v8;
      v15 = v7;
      dispatch_async(fileQueue, block);
    }

    else
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportDateDatabaseErrorDomain" code:411 userInfo:0];
      v11 = self->_fileQueue;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __73__NTKFaceSupportDateDatabase_retreiveDateForBundleIdentifier_completion___block_invoke;
      v16[3] = &unk_27877E570;
      v17 = v10;
      v18 = v7;
      v12 = v10;
      dispatch_async(v11, v16);
    }
  }

  else
  {
    v8 = v6;
  }
}

void __73__NTKFaceSupportDateDatabase_retreiveDateForBundleIdentifier_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _queue_loadLookup];
  v3 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportDateDatabaseErrorDomain" code:404 userInfo:0];
  }
  v2 = ;
  (*(*(a1 + 48) + 16))();
}

- (void)deleteDateForBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 copy];

    if ([v8 length])
    {
      if (![v8 isEqualToString:@"NTKFaceSupportDateDatabaseInvalidDeleteIdentifier"])
      {
        fileQueue = self->_fileQueue;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __71__NTKFaceSupportDateDatabase_deleteDateForBundleIdentifier_completion___block_invoke_3;
        v16[3] = &unk_27877DC88;
        v16[4] = self;
        v8 = v8;
        v17 = v8;
        v18 = v7;
        dispatch_async(fileQueue, v16);

        goto LABEL_9;
      }

      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportDateDatabaseErrorDomain" code:503 userInfo:0];
      v10 = self->_fileQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__NTKFaceSupportDateDatabase_deleteDateForBundleIdentifier_completion___block_invoke_2;
      block[3] = &unk_27877E570;
      v20 = v9;
      v21 = v7;
      v11 = v9;
      dispatch_async(v10, block);

      v12 = v21;
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportDateDatabaseErrorDomain" code:411 userInfo:0];
      v14 = self->_fileQueue;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __71__NTKFaceSupportDateDatabase_deleteDateForBundleIdentifier_completion___block_invoke;
      v22[3] = &unk_27877E570;
      v23 = v13;
      v24 = v7;
      v11 = v13;
      dispatch_async(v14, v22);

      v12 = v24;
    }
  }

  else
  {
    v8 = v6;
  }

LABEL_9:
}

void __71__NTKFaceSupportDateDatabase_deleteDateForBundleIdentifier_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _queue_loadLookup];
  v3 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  if (v3)
  {
    [*(*(a1 + 32) + 16) removeObjectForKey:*(a1 + 40)];
    [*(a1 + 32) _queue_save];
  }

  else
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportDateDatabaseErrorDomain" code:404 userInfo:0];
  }
  v2 = ;
  (*(*(a1 + 48) + 16))();
}

- (void)_queue_loadLookup
{
  dispatch_assert_queue_V2(self->_fileQueue);
  if (!self->_lookup)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [v3 fileExistsAtPath:self->_filePath];

    if (v4)
    {
      v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:self->_filePath options:1 error:0];
      v19 = 0;
      v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:1 error:&v19];
      v7 = v19;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = 0;
        v16 = &v15;
        v17 = 0x2020000000;
        v18 = 1;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __47__NTKFaceSupportDateDatabase__queue_loadLookup__block_invoke;
        v14[3] = &unk_278786610;
        v14[4] = &v15;
        [v6 enumerateKeysAndObjectsUsingBlock:v14];
        if (v16[3])
        {
          v8 = v6;
        }

        else
        {
          v8 = [MEMORY[0x277CBEB38] dictionary];
        }

        lookup = self->_lookup;
        self->_lookup = v8;

        _Block_object_dispose(&v15, 8);
      }

      else
      {
        v11 = [MEMORY[0x277CBEB38] dictionary];
        v12 = self->_lookup;
        self->_lookup = v11;
      }
    }

    else
    {
      v9 = [MEMORY[0x277CBEB38] dictionary];
      v10 = self->_lookup;
      self->_lookup = v9;
    }
  }
}

void __47__NTKFaceSupportDateDatabase__queue_loadLookup__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (id)_queue_save
{
  v21[1] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_fileQueue);
  [(NTKFaceSupportDateDatabase *)self _queue_loadLookup];
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:self->_lookup options:3 error:0];
  if (v3)
  {
    v4 = [(NSString *)self->_filePath stringByDeletingLastPathComponent];
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v5 fileExistsAtPath:self->_filePath isDirectory:0];

    if ((v6 & 1) == 0)
    {
      v7 = [MEMORY[0x277CCAA00] defaultManager];
      v20 = *MEMORY[0x277CCA1B0];
      v21[0] = *MEMORY[0x277CCA1B8];
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      [v7 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:v8 error:0];
    }

    filePath = self->_filePath;
    v17 = 0;
    v10 = [v3 writeToFile:filePath options:1 error:&v17];
    v11 = v17;
    v12 = v11;
    if (v10)
    {
      v13 = 0;
    }

    else
    {
      v14 = MEMORY[0x277CCA9B8];
      v18 = @"writeError";
      v19 = v11;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v13 = [v14 errorWithDomain:@"NTKFaceSupportDateDatabaseErrorDomain" code:503 userInfo:v15];
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportDateDatabaseErrorDomain" code:302 userInfo:0];
  }

  return v13;
}

@end