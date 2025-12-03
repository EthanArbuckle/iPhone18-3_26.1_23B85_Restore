@interface ML3DatabaseStatementCache
- (ML3DatabaseStatementCache)initWithCacheSize:(unint64_t)size;
- (id)cachedStatementForSQL:(id)l;
- (void)cacheStatement:(id)statement;
- (void)clearCache;
- (void)dealloc;
- (void)pruneCache;
@end

@implementation ML3DatabaseStatementCache

- (void)pruneCache
{
  v20 = *MEMORY[0x277D85DE8];
  cacheSize = self->_cacheSize;
  v4 = [(ML3StatementCacheList *)self->_nodeList count];
  allValues = [(NSMutableDictionary *)self->_statementsDictionary allValues];
  v6 = [allValues msv_firstWhere:&__block_literal_global_6];

  if (v6)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = cacheSize >> 1;
    v9 = v4;
    do
    {
      if ([(ML3StatementCacheList *)self->_nodeList count]<= v8)
      {
        break;
      }

      oldestNode = [(ML3StatementCacheList *)self->_nodeList oldestNode];
      dictionaryKey = [oldestNode dictionaryKey];
      v12 = [(NSMutableDictionary *)self->_statementsDictionary objectForKey:dictionaryKey];
      isExecuting = [v12 isExecuting];
      nodeList = self->_nodeList;
      if (isExecuting)
      {
        [(ML3StatementCacheList *)nodeList promoteNodeWithDictionaryKey:dictionaryKey];
      }

      else
      {
        [(ML3StatementCacheList *)nodeList deleteOldestNode];
        [v12 finalizeStatement];
        [(NSMutableDictionary *)self->_statementsDictionary removeObjectForKey:dictionaryKey];
      }

      --v9;
    }

    while (v9);
  }

  v15 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(ML3StatementCacheList *)self->_nodeList count];
    v17[0] = 67109376;
    v17[1] = v4;
    v18 = 1024;
    v19 = v16;
    _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "Finished pruning statement cache - oldCount=%d, newCount=%d", v17, 0xEu);
  }
}

- (void)clearCache
{
  v13 = *MEMORY[0x277D85DE8];
  allValues = [(NSMutableDictionary *)self->_statementsDictionary allValues];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v8 + 1) + 8 * v7++) finalizeStatement];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_statementsDictionary removeAllObjects];
  [(ML3StatementCacheList *)self->_nodeList deleteAllNodes];
}

- (void)cacheStatement:(id)statement
{
  statementCopy = statement;
  v4 = [statementCopy sql];
  [(NSMutableDictionary *)self->_statementsDictionary setObject:statementCopy forKey:v4];
  v5 = [[ML3StatementCacheNode alloc] initWithDictionaryKey:v4];
  [(ML3StatementCacheList *)self->_nodeList appendNode:v5];
  allValues = [(NSMutableDictionary *)self->_statementsDictionary allValues];
  v7 = [allValues msv_firstWhere:&__block_literal_global_11132];

  if (v7)
  {
    while ([(ML3StatementCacheList *)self->_nodeList count]> self->_cacheSize)
    {
      oldestNode = [(ML3StatementCacheList *)self->_nodeList oldestNode];
      dictionaryKey = [oldestNode dictionaryKey];
      v10 = [(NSMutableDictionary *)self->_statementsDictionary objectForKey:dictionaryKey];
      isExecuting = [v10 isExecuting];
      nodeList = self->_nodeList;
      if (isExecuting)
      {
        [(ML3StatementCacheList *)nodeList promoteNodeWithDictionaryKey:dictionaryKey];
      }

      else
      {
        [(ML3StatementCacheList *)nodeList deleteOldestNode];
        [v10 finalizeStatement];
        [(NSMutableDictionary *)self->_statementsDictionary removeObjectForKey:dictionaryKey];
      }
    }
  }
}

- (id)cachedStatementForSQL:(id)l
{
  lCopy = l;
  v5 = [(NSMutableDictionary *)self->_statementsDictionary objectForKey:lCopy];
  if (v5)
  {
    [(ML3StatementCacheList *)self->_nodeList promoteNodeWithDictionaryKey:lCopy];
  }

  return v5;
}

- (void)dealloc
{
  [(ML3DatabaseStatementCache *)self clearCache];
  v3.receiver = self;
  v3.super_class = ML3DatabaseStatementCache;
  [(ML3DatabaseStatementCache *)&v3 dealloc];
}

- (ML3DatabaseStatementCache)initWithCacheSize:(unint64_t)size
{
  v11.receiver = self;
  v11.super_class = ML3DatabaseStatementCache;
  v4 = [(ML3DatabaseStatementCache *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_cacheSize = size;
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v4->_cacheSize];
    statementsDictionary = v5->_statementsDictionary;
    v5->_statementsDictionary = v6;

    v8 = objc_alloc_init(ML3StatementCacheList);
    nodeList = v5->_nodeList;
    v5->_nodeList = v8;
  }

  return v5;
}

@end