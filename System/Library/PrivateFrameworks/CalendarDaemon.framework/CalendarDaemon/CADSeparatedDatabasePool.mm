@interface CADSeparatedDatabasePool
- (CADSeparatedDatabasePool)initWithConfig:(id)config databaseID:(int)d;
- (void)_returnConnectionToPool:(id)pool;
- (void)purgeConnectionsLastUsedPriorTo:(unint64_t)to stats:(id *)stats;
@end

@implementation CADSeparatedDatabasePool

- (CADSeparatedDatabasePool)initWithConfig:(id)config databaseID:(int)d
{
  configCopy = config;
  v18.receiver = self;
  v18.super_class = CADSeparatedDatabasePool;
  v8 = [(CADSeparatedDatabasePool *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_config, config);
    directoryURL = [configCopy directoryURL];
    path = [directoryURL path];
    databasePath = v9->_databasePath;
    v9->_databasePath = path;

    if (![(NSString *)v9->_databasePath hasSuffix:@"/"])
    {
      v13 = [(NSString *)v9->_databasePath stringByAppendingString:@"/"];
      v14 = v9->_databasePath;
      v9->_databasePath = v13;
    }

    v9->_databaseID = d;
    v15 = objc_opt_new();
    connections = v9->_connections;
    v9->_connections = v15;
  }

  return v9;
}

- (void)_returnConnectionToPool:(id)pool
{
  poolCopy = pool;
  [poolCopy setLastUsedTimestamp:CalApproximateContinuousTime()];
  [(NSMutableArray *)self->_connections addObject:poolCopy];
}

- (void)purgeConnectionsLastUsedPriorTo:(unint64_t)to stats:(id *)stats
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_connections;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v8)
  {
    v11 = v7;
    goto LABEL_18;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  v12 = *v18;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v18 != v12)
      {
        objc_enumerationMutation(v7);
      }

      lastUsedTimestamp = [*(*(&v17 + 1) + 8 * i) lastUsedTimestamp];
      if (lastUsedTimestamp >= to)
      {
        ++stats->var1;
        var2 = stats->var2;
        if (var2 >= lastUsedTimestamp)
        {
          var2 = lastUsedTimestamp;
        }

        stats->var2 = var2;
      }

      else
      {
        if (!v11)
        {
          v11 = objc_opt_new();
        }

        [v11 addIndex:v10];
        ++stats->var0;
      }

      ++v10;
    }

    v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v9);

  if (v11)
  {
    [(NSMutableArray *)self->_connections removeObjectsAtIndexes:v11];
LABEL_18:
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end