@interface _DKSyncDeletedEventIDs
- (_DKSyncDeletedEventIDs)init;
- (id)deletedEventIDsForSourceDeviceID:(id *)a1;
- (id)sourceDeviceIDs;
- (uint64_t)count;
- (void)addDeletedEventID:(void *)a3 forSourceDeviceID:;
@end

@implementation _DKSyncDeletedEventIDs

- (_DKSyncDeletedEventIDs)init
{
  v6.receiver = self;
  v6.super_class = _DKSyncDeletedEventIDs;
  v2 = [(_DKSyncDeletedEventIDs *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    deletedEventIDsBySourceDeviceID = v2->_deletedEventIDsBySourceDeviceID;
    v2->_deletedEventIDsBySourceDeviceID = v3;
  }

  return v2;
}

- (uint64_t)count
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = *(a1 + 8);
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v12;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = [*(a1 + 8) objectForKeyedSubscript:{*(*(&v11 + 1) + 8 * i), v11}];
          v5 += [v8 count];
        }

        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)sourceDeviceIDs
{
  if (a1)
  {
    a1 = [a1[1] allKeys];
    v1 = vars8;
  }

  return a1;
}

- (id)deletedEventIDsForSourceDeviceID:(id *)a1
{
  if (a1)
  {
    a1 = [a1[1] objectForKeyedSubscript:a2];
    v2 = vars8;
  }

  return a1;
}

- (void)addDeletedEventID:(void *)a3 forSourceDeviceID:
{
  v7 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [*(a1 + 8) objectForKeyedSubscript:v5];
    if (!v6)
    {
      v6 = objc_opt_new();
      [*(a1 + 8) setObject:v6 forKeyedSubscript:v5];
    }

    [v6 addObject:v7];
  }
}

@end