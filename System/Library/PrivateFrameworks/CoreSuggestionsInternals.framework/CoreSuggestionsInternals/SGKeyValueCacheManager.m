@interface SGKeyValueCacheManager
- (SGKeyValueCacheManager)init;
- (SGKeyValueCacheManager)initWithBasePath:(id)a3;
- (id)cacheOfType:(unint64_t)a3;
- (void)deleteValueByRecordId:(id)a3;
- (void)deleteValueByRecordIdSet:(id)a3;
- (void)replaceCacheOfType:(unint64_t)a3 block:(id)a4;
@end

@implementation SGKeyValueCacheManager

- (void)deleteValueByRecordId:(id)a3
{
  v8 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(SGKeyValueCacheManager *)self cacheOfType:0];
  [v5 deleteValueByRecordId:v8];

  objc_autoreleasePoolPop(v4);
  v6 = objc_autoreleasePoolPush();
  v7 = [(SGKeyValueCacheManager *)self cacheOfType:1];
  [v7 deleteValueByRecordId:v8];

  objc_autoreleasePoolPop(v6);
}

- (void)deleteValueByRecordIdSet:(id)a3
{
  v8 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(SGKeyValueCacheManager *)self cacheOfType:0];
  [v5 deleteValueByRecordIdSet:v8];

  objc_autoreleasePoolPop(v4);
  v6 = objc_autoreleasePoolPush();
  v7 = [(SGKeyValueCacheManager *)self cacheOfType:1];
  [v7 deleteValueByRecordIdSet:v8];

  objc_autoreleasePoolPop(v6);
}

- (void)replaceCacheOfType:(unint64_t)a3 block:(id)a4
{
  v10 = a4;
  if (a3 >= 2)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"SGKeyValueCacheManager.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"cacheType < SGKeyValueCacheTypeCount"}];
  }

  v7 = [(SGKeyValueCacheManager *)self cacheOfType:a3];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D01FF8]) initTemporaryForOverwritingCache:v7];
    if (v8 && v10[2](v10, v8))
    {
      [v8 commitTemporaryFile];
    }
  }
}

- (id)cacheOfType:(unint64_t)a3
{
  v26 = *MEMORY[0x277D85DE8];
  if (a3 >= 2)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"SGKeyValueCacheManager.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"cacheType < SGKeyValueCacheTypeCount"}];
  }

  pthread_mutex_lock(&self->_lock);
  v5 = [(NSMutableArray *)self->_cacheFiles objectAtIndexedSubscript:a3];
  v6 = [MEMORY[0x277CBEB68] null];

  if (v5 == v6)
  {
    v8 = objc_autoreleasePoolPush();
    basePath = self->_basePath;
    v10 = MEMORY[0x277D01FF8];
    if (basePath)
    {
      v11 = @"email-to-name.kvcache";
      if (!a3)
      {
        v11 = @"phone-to-name.kvcache";
      }

      v12 = v11;
      v13 = [(NSString *)basePath stringByAppendingPathComponent:v12];
      v7 = [v10 keyValueCacheForPath:v13];

      v5 = v13;
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277D01FF8]) initInMemory];
    }

    if (v7)
    {
      [(NSMutableArray *)self->_cacheFiles setObject:v7 atIndexedSubscript:a3];
    }

    else
    {
      v14 = sgLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v17 = @"email-to-name.kvcache";
        if (!a3)
        {
          v17 = @"phone-to-name.kvcache";
        }

        v18 = v17;
        v19 = self->_basePath;
        *buf = 138412546;
        v23 = v18;
        v24 = 2112;
        v25 = v19;
        _os_log_fault_impl(&dword_231E60000, v14, OS_LOG_TYPE_FAULT, "Error opening file %@ at base path: %@", buf, 0x16u);
      }

      if (_PASEvaluateLogFaultAndProbCrashCriteria())
      {
        abort();
      }
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v7 = v5;
  }

  pthread_mutex_unlock(&self->_lock);
  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (SGKeyValueCacheManager)init
{
  v3 = +[SGPaths suggestionsDirectory];
  v4 = [(SGKeyValueCacheManager *)self initWithBasePath:v3];

  return v4;
}

- (SGKeyValueCacheManager)initWithBasePath:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = SGKeyValueCacheManager;
  v6 = [(SGKeyValueCacheManager *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_basePath, a3);
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    cacheFiles = v7->_cacheFiles;
    v7->_cacheFiles = v8;

    v10 = v7->_cacheFiles;
    v11 = [MEMORY[0x277CBEB68] null];
    [(NSMutableArray *)v10 addObject:v11];

    v12 = v7->_cacheFiles;
    v13 = [MEMORY[0x277CBEB68] null];
    [(NSMutableArray *)v12 addObject:v13];

    pthread_mutex_init(&v7->_lock, 0);
  }

  return v7;
}

@end