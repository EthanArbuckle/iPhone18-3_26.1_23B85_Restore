@interface EDRemoteContentCacheConfiguration
- (EDRemoteContentCacheConfiguration)initWithBaseURL:(id)a3 diskCapacity:(unint64_t)a4;
- (id)_cacheURLWithBaseURL:(id)a3;
@end

@implementation EDRemoteContentCacheConfiguration

void ___ef_log_EDRemoteContentCacheConfiguration_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EDRemoteContentCacheConfiguration");
  v1 = _ef_log_EDRemoteContentCacheConfiguration_log;
  _ef_log_EDRemoteContentCacheConfiguration_log = v0;
}

- (EDRemoteContentCacheConfiguration)initWithBaseURL:(id)a3 diskCapacity:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = EDRemoteContentCacheConfiguration;
  v7 = [(EDRemoteContentCacheConfiguration *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v9 = [(EDRemoteContentCacheConfiguration *)v7 _cacheURLWithBaseURL:v6];
    cacheURL = v8->_cacheURL;
    v8->_cacheURL = v9;

    v8->_diskCapacity = a4;
  }

  return v8;
}

- (id)_cacheURLWithBaseURL:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = [a3 URLByAppendingPathComponent:@"RemoteContentURLCache" isDirectory:1];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v18 = *MEMORY[0x1E696A3A0];
  v19[0] = *MEMORY[0x1E696A388];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v16 = 0;
  v6 = [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:v5 error:&v16];
  v7 = v16;
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    v9 = [v7 domain];
    v10 = v9;
    if (v9 == *MEMORY[0x1E696A250])
    {
      v11 = [v8 code] == 516;

      if (v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v12 = _ef_log_EDRemoteContentCacheConfiguration();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v8 ef_publicDescription];
      [(EDRemoteContentCacheConfiguration *)v13 _cacheURLWithBaseURL:buf, v12];
    }
  }

LABEL_8:

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)_cacheURLWithBaseURL:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Failed to create URL Cache directory:\n%{public}@", buf, 0xCu);
}

@end