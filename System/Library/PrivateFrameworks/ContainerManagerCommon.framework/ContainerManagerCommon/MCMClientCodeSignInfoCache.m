@interface MCMClientCodeSignInfoCache
- (MCMCache)cache;
- (MCMClientCodeSignInfoCache)init;
- (id)codeSignInfoForCDHash:(id)a3 identifier:(id)a4 error:(id *)a5 generator:(id)a6;
- (void)flush;
@end

@implementation MCMClientCodeSignInfoCache

- (MCMCache)cache
{
  result = self->_cache;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)codeSignInfoForCDHash:(id)a3 identifier:(id)a4 error:(id *)a5 generator:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a6;
  v12 = a3;
  v13 = [[MCMClientCodeSignIndex alloc] initWithCDHash:v12 identifier:v10];

  if (v13)
  {
    v14 = [(MCMClientCodeSignInfoCache *)self cache];
    v15 = [v14 objectForKey:v13];

    if (v15)
    {
      v16 = 0;
LABEL_13:
      v19 = 0;
      goto LABEL_14;
    }

    v26 = 0;
    v15 = v11[2](v11, &v26);
    v16 = v26;
    if (v15)
    {
      v20 = [v15 clientCodeSignInfoByChangingCached:1];
      v19 = v20;
      if (v20)
      {
        v21 = [v20 entitlements];
        [v21 prune];

        v22 = [(MCMClientCodeSignInfoCache *)self cache];
        [v22 setObject:v19 forKey:v13];
      }

      goto LABEL_14;
    }
  }

  else
  {
    v17 = container_log_handle_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v10;
      _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "Could not generate code sign index for [%@]", buf, 0xCu);
    }

    v16 = 0;
  }

  if (!a5)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v18 = v16;
  v15 = 0;
  v19 = 0;
  *a5 = v16;
LABEL_14:
  v23 = v15;

  v24 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)flush
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = [(MCMClientCodeSignInfoCache *)self cache];
  [v3 removeAllObjects];
  v2 = *MEMORY[0x1E69E9840];
}

- (MCMClientCodeSignInfoCache)init
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = MCMClientCodeSignInfoCache;
  v2 = [(MCMClientCodeSignInfoCache *)&v7 init];
  if (v2)
  {
    v3 = [[MCMLRUCache alloc] initWithName:@"clientCodeSignInfo" maxCount:30];
    cache = v2->_cache;
    v2->_cache = v3;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

@end