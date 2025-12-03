@interface MKGETMigratorRouter
- (NSHashTable)migrators;
- (id)keyFromMigratorType:(int64_t)type;
- (void)server:(id)server didReceiveRequest:(id)request response:(id)response;
@end

@implementation MKGETMigratorRouter

- (void)server:(id)server didReceiveRequest:(id)request response:(id)response
{
  v37 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  requestCopy = request;
  responseCopy = response;
  v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = objc_loadWeakRetained(&self->_migrators);
  v8 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v31;
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v30 + 1) + 8 * v13);
        v11 = -[MKGETMigratorRouter keyFromMigratorType:](self, "keyFromMigratorType:", [v15 type]);

        if (v11)
        {
          v34[0] = @"import_count";
          v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v15, "importCount")}];
          v34[1] = @"import_error_count";
          v35[0] = v16;
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v15, "importErrorCount")}];
          v35[1] = v17;
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];

          [v28 setObject:v18 forKey:v11];
          v10 = v18;
        }

        ++v13;
        v14 = v11;
      }

      while (v9 != v13);
      v9 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v29 = 0;
  v19 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v28 options:0 error:&v29];
  v20 = v29;
  if (v20)
  {
    v21 = +[MKLog log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MKGETMigratorRouter server:v20 didReceiveRequest:v21 response:?];
    }
  }

  v22 = responseCopy;
  [responseCopy setBody:{v19, responseCopy}];

  v23 = *MEMORY[0x277D85DE8];
}

- (id)keyFromMigratorType:(int64_t)type
{
  if (type > 0x10)
  {
    return 0;
  }

  else
  {
    return off_2798DD068[type];
  }
}

- (NSHashTable)migrators
{
  WeakRetained = objc_loadWeakRetained(&self->_migrators);

  return WeakRetained;
}

@end