@interface SGKeyValueCacheManager
- (SGKeyValueCacheManager)init;
- (SGKeyValueCacheManager)initWithBasePath:(id)path;
- (id)cacheOfType:(unint64_t)type;
- (void)deleteValueByRecordId:(id)id;
- (void)deleteValueByRecordIdSet:(id)set;
- (void)replaceCacheOfType:(unint64_t)type block:(id)block;
@end

@implementation SGKeyValueCacheManager

- (void)deleteValueByRecordId:(id)id
{
  idCopy = id;
  v4 = objc_autoreleasePoolPush();
  v5 = [(SGKeyValueCacheManager *)self cacheOfType:0];
  [v5 deleteValueByRecordId:idCopy];

  objc_autoreleasePoolPop(v4);
  v6 = objc_autoreleasePoolPush();
  v7 = [(SGKeyValueCacheManager *)self cacheOfType:1];
  [v7 deleteValueByRecordId:idCopy];

  objc_autoreleasePoolPop(v6);
}

- (void)deleteValueByRecordIdSet:(id)set
{
  setCopy = set;
  v4 = objc_autoreleasePoolPush();
  v5 = [(SGKeyValueCacheManager *)self cacheOfType:0];
  [v5 deleteValueByRecordIdSet:setCopy];

  objc_autoreleasePoolPop(v4);
  v6 = objc_autoreleasePoolPush();
  v7 = [(SGKeyValueCacheManager *)self cacheOfType:1];
  [v7 deleteValueByRecordIdSet:setCopy];

  objc_autoreleasePoolPop(v6);
}

- (void)replaceCacheOfType:(unint64_t)type block:(id)block
{
  blockCopy = block;
  if (type >= 2)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGKeyValueCacheManager.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"cacheType < SGKeyValueCacheTypeCount"}];
  }

  v7 = [(SGKeyValueCacheManager *)self cacheOfType:type];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D01FF8]) initTemporaryForOverwritingCache:v7];
    if (v8 && blockCopy[2](blockCopy, v8))
    {
      [v8 commitTemporaryFile];
    }
  }
}

- (id)cacheOfType:(unint64_t)type
{
  v26 = *MEMORY[0x277D85DE8];
  if (type >= 2)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGKeyValueCacheManager.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"cacheType < SGKeyValueCacheTypeCount"}];
  }

  pthread_mutex_lock(&self->_lock);
  v5 = [(NSMutableArray *)self->_cacheFiles objectAtIndexedSubscript:type];
  null = [MEMORY[0x277CBEB68] null];

  if (v5 == null)
  {
    v8 = objc_autoreleasePoolPush();
    basePath = self->_basePath;
    v10 = MEMORY[0x277D01FF8];
    if (basePath)
    {
      v11 = @"email-to-name.kvcache";
      if (!type)
      {
        v11 = @"phone-to-name.kvcache";
      }

      v12 = v11;
      v13 = [(NSString *)basePath stringByAppendingPathComponent:v12];
      initInMemory = [v10 keyValueCacheForPath:v13];

      v5 = v13;
    }

    else
    {
      initInMemory = [objc_alloc(MEMORY[0x277D01FF8]) initInMemory];
    }

    if (initInMemory)
    {
      [(NSMutableArray *)self->_cacheFiles setObject:initInMemory atIndexedSubscript:type];
    }

    else
    {
      v14 = sgLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v17 = @"email-to-name.kvcache";
        if (!type)
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
    initInMemory = v5;
  }

  pthread_mutex_unlock(&self->_lock);
  v15 = *MEMORY[0x277D85DE8];

  return initInMemory;
}

- (SGKeyValueCacheManager)init
{
  v3 = +[SGPaths suggestionsDirectory];
  v4 = [(SGKeyValueCacheManager *)self initWithBasePath:v3];

  return v4;
}

- (SGKeyValueCacheManager)initWithBasePath:(id)path
{
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = SGKeyValueCacheManager;
  v6 = [(SGKeyValueCacheManager *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_basePath, path);
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    cacheFiles = v7->_cacheFiles;
    v7->_cacheFiles = v8;

    v10 = v7->_cacheFiles;
    null = [MEMORY[0x277CBEB68] null];
    [(NSMutableArray *)v10 addObject:null];

    v12 = v7->_cacheFiles;
    null2 = [MEMORY[0x277CBEB68] null];
    [(NSMutableArray *)v12 addObject:null2];

    pthread_mutex_init(&v7->_lock, 0);
  }

  return v7;
}

@end