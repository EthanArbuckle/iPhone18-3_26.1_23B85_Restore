@interface MCMClientCodeSignInfoCache
- (MCMCache)cache;
- (MCMClientCodeSignInfoCache)init;
- (id)codeSignInfoForCDHash:(id)hash identifier:(id)identifier error:(id *)error generator:(id)generator;
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

- (id)codeSignInfoForCDHash:(id)hash identifier:(id)identifier error:(id *)error generator:(id)generator
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  generatorCopy = generator;
  hashCopy = hash;
  v13 = [[MCMClientCodeSignIndex alloc] initWithCDHash:hashCopy identifier:identifierCopy];

  if (v13)
  {
    cache = [(MCMClientCodeSignInfoCache *)self cache];
    v15 = [cache objectForKey:v13];

    if (v15)
    {
      v16 = 0;
LABEL_13:
      v19 = 0;
      goto LABEL_14;
    }

    v26 = 0;
    v15 = generatorCopy[2](generatorCopy, &v26);
    v16 = v26;
    if (v15)
    {
      v20 = [v15 clientCodeSignInfoByChangingCached:1];
      v19 = v20;
      if (v20)
      {
        entitlements = [v20 entitlements];
        [entitlements prune];

        cache2 = [(MCMClientCodeSignInfoCache *)self cache];
        [cache2 setObject:v19 forKey:v13];
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
      v28 = identifierCopy;
      _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "Could not generate code sign index for [%@]", buf, 0xCu);
    }

    v16 = 0;
  }

  if (!error)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v18 = v16;
  v15 = 0;
  v19 = 0;
  *error = v16;
LABEL_14:
  v23 = v15;

  v24 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)flush
{
  v4 = *MEMORY[0x1E69E9840];
  cache = [(MCMClientCodeSignInfoCache *)self cache];
  [cache removeAllObjects];
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