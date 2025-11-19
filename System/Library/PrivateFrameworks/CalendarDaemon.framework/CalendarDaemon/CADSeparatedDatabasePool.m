@interface CADSeparatedDatabasePool
- (CADSeparatedDatabasePool)initWithConfig:(id)a3 databaseID:(int)a4;
- (void)_returnConnectionToPool:(id)a3;
- (void)purgeConnectionsLastUsedPriorTo:(unint64_t)a3 stats:(id *)a4;
@end

@implementation CADSeparatedDatabasePool

- (CADSeparatedDatabasePool)initWithConfig:(id)a3 databaseID:(int)a4
{
  v7 = a3;
  v18.receiver = self;
  v18.super_class = CADSeparatedDatabasePool;
  v8 = [(CADSeparatedDatabasePool *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_config, a3);
    v10 = [v7 directoryURL];
    v11 = [v10 path];
    databasePath = v9->_databasePath;
    v9->_databasePath = v11;

    if (![(NSString *)v9->_databasePath hasSuffix:@"/"])
    {
      v13 = [(NSString *)v9->_databasePath stringByAppendingString:@"/"];
      v14 = v9->_databasePath;
      v9->_databasePath = v13;
    }

    v9->_databaseID = a4;
    v15 = objc_opt_new();
    connections = v9->_connections;
    v9->_connections = v15;
  }

  return v9;
}

- (void)_returnConnectionToPool:(id)a3
{
  v4 = a3;
  [v4 setLastUsedTimestamp:CalApproximateContinuousTime()];
  [(NSMutableArray *)self->_connections addObject:v4];
}

- (void)purgeConnectionsLastUsedPriorTo:(unint64_t)a3 stats:(id *)a4
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

      v14 = [*(*(&v17 + 1) + 8 * i) lastUsedTimestamp];
      if (v14 >= a3)
      {
        ++a4->var1;
        var2 = a4->var2;
        if (var2 >= v14)
        {
          var2 = v14;
        }

        a4->var2 = var2;
      }

      else
      {
        if (!v11)
        {
          v11 = objc_opt_new();
        }

        [v11 addIndex:v10];
        ++a4->var0;
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