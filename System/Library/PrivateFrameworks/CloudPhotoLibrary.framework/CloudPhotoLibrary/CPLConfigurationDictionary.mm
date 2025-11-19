@interface CPLConfigurationDictionary
- (BOOL)isStale;
- (BOOL)writeToURL:(id)a3 error:(id *)a4;
- (CPLConfigurationDictionary)initWithConfiguration:(id)a3 refreshIntervalKey:(id)a4 minRefreshInterval:(double)a5 lastUpdateDate:(id)a6;
- (CPLConfigurationDictionary)initWithConfigurationName:(id)a3 refreshIntervalKey:(id)a4 minRefreshInterval:(double)a5;
- (CPLConfigurationDictionary)initWithContentsOfURL:(id)a3 refreshIntervalKey:(id)a4 minRefreshInterval:(double)a5 error:(id *)a6;
- (CPLConfigurationDictionary)initWithData:(id)a3 refreshIntervalKey:(id)a4 minRefreshInterval:(double)a5 error:(id *)a6;
- (double)refreshInterval;
- (id)copyConfigurationDictionaryWithUpdatedDate;
- (id)copyConfigurationDictionaryWithUpdatedKey:(id)a3 value:(id)a4;
- (int64_t)compare:(id)a3;
@end

@implementation CPLConfigurationDictionary

- (id)copyConfigurationDictionaryWithUpdatedKey:(id)a3 value:(id)a4
{
  configuration = self->_configuration;
  v7 = a4;
  v8 = a3;
  v9 = [(NSDictionary *)configuration mutableCopy];
  [v9 setObject:v7 forKeyedSubscript:v8];

  v10 = [CPLConfigurationDictionary alloc];
  refreshIntervalKey = self->_refreshIntervalKey;
  minRefreshInterval = self->_minRefreshInterval;
  v13 = [MEMORY[0x1E695DF00] date];
  v14 = [(CPLConfigurationDictionary *)v10 initWithConfiguration:v9 refreshIntervalKey:refreshIntervalKey minRefreshInterval:v13 lastUpdateDate:minRefreshInterval];

  return v14;
}

- (id)copyConfigurationDictionaryWithUpdatedDate
{
  v3 = [CPLConfigurationDictionary alloc];
  configuration = self->_configuration;
  refreshIntervalKey = self->_refreshIntervalKey;
  minRefreshInterval = self->_minRefreshInterval;
  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [(CPLConfigurationDictionary *)v3 initWithConfiguration:configuration refreshIntervalKey:refreshIntervalKey minRefreshInterval:v7 lastUpdateDate:minRefreshInterval];

  return v8;
}

- (int64_t)compare:(id)a3
{
  lastUpdateDate = self->_lastUpdateDate;
  v4 = *(a3 + 4);
  if (lastUpdateDate)
  {
    if (v4)
    {
      return [(NSDate *)lastUpdateDate compare:?];
    }

    else
    {
      return 1;
    }
  }

  else if (v4)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isStale
{
  if (!self->_lastUpdateDate)
  {
    return 1;
  }

  v3 = [MEMORY[0x1E695DF00] date];
  if ([(NSDate *)self->_lastUpdateDate compare:v3]== NSOrderedDescending)
  {
    v4 = 1;
  }

  else
  {
    [v3 timeIntervalSinceDate:self->_lastUpdateDate];
    v6 = v5;
    [(CPLConfigurationDictionary *)self refreshInterval];
    v4 = v6 > v7;
  }

  return v4;
}

- (double)refreshInterval
{
  v3 = [(NSDictionary *)self->_configuration objectForKeyedSubscript:self->_refreshIntervalKey];
  [v3 doubleValue];
  minRefreshInterval = self->_minRefreshInterval;
  if (v4 >= minRefreshInterval)
  {
    minRefreshInterval = v4;
    if (v4 > 2629800.0)
    {
      minRefreshInterval = 2629800.0;
    }
  }

  return minRefreshInterval;
}

- (BOOL)writeToURL:(id)a3 error:(id *)a4
{
  v29[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  lastUpdateDate = self->_lastUpdateDate;
  if (lastUpdateDate)
  {
    configuration = self->_configuration;
    v28[0] = @"configuration";
    v28[1] = @"lastUpdate";
    v29[0] = configuration;
    v29[1] = lastUpdateDate;
    v9 = MEMORY[0x1E695DF20];
    v10 = v29;
    v11 = v28;
    v12 = 2;
  }

  else
  {
    v13 = self->_configuration;
    v26 = @"configuration";
    v27 = v13;
    v9 = MEMORY[0x1E695DF20];
    v10 = &v27;
    v11 = &v26;
    v12 = 1;
  }

  v14 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:v12];
  v15 = objc_autoreleasePoolPush();
  v25 = 0;
  v16 = [MEMORY[0x1E696AE40] dataWithPropertyList:v14 format:200 options:0 error:&v25];
  v17 = v25;
  v18 = v17;
  if (v16)
  {
    v24 = v17;
    v19 = [v16 writeToURL:v6 options:1 error:&v24];
    v20 = v24;

    objc_autoreleasePoolPop(v15);
    if (a4 && v19)
    {
      v21 = v20;
      *a4 = v20;
      LOBYTE(v19) = 1;
    }

    v18 = v20;
  }

  else
  {
    objc_autoreleasePoolPop(v15);
    LOBYTE(v19) = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v19;
}

- (CPLConfigurationDictionary)initWithContentsOfURL:(id)a3 refreshIntervalKey:(id)a4 minRefreshInterval:(double)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v10 error:a6];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 objectForKeyedSubscript:@"configuration"];
    if (v14)
    {
      v15 = [v13 objectForKeyedSubscript:@"lastUpdate"];
      v16 = [(CPLConfigurationDictionary *)self initWithConfiguration:v14 refreshIntervalKey:v11 minRefreshInterval:v15 lastUpdateDate:a5];
    }

    else
    {
      v15 = [v10 lastPathComponent];
      v16 = [(CPLConfigurationDictionary *)self initWithConfigurationName:v15 refreshIntervalKey:v11 minRefreshInterval:a5];
    }

    self = v16;

    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (CPLConfigurationDictionary)initWithData:(id)a3 refreshIntervalKey:(id)a4 minRefreshInterval:(double)a5 error:(id *)a6
{
  v10 = a4;
  v11 = [MEMORY[0x1E696AE40] propertyListWithData:a3 options:0 format:0 error:a6];
  if (v11)
  {
    v12 = [MEMORY[0x1E695DF00] date];
    self = [(CPLConfigurationDictionary *)self initWithConfiguration:v11 refreshIntervalKey:v10 minRefreshInterval:v12 lastUpdateDate:a5];

    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (CPLConfigurationDictionary)initWithConfigurationName:(id)a3 refreshIntervalKey:(id)a4 minRefreshInterval:(double)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v12 = [v11 URLForResource:v9 withExtension:0];

  if (!v12)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v18 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        *buf = 138412546;
        v31 = v19;
        v32 = 2112;
        v33 = objc_opt_class();
        v20 = v33;
        _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_ERROR, "Can't find configuration in %@ for %@", buf, 0x16u);
      }
    }

    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLConfigurationDictionary.m"];
    v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    [v21 handleFailureInMethod:a2 object:self file:v22 lineNumber:60 description:{@"Can't find configuration in %@ for %@", v23, objc_opt_class()}];

    abort();
  }

  v29 = 0;
  v13 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v12 error:&v29];
  v14 = v29;
  if (!v13)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v24 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = [v12 path];
        *buf = 138412546;
        v31 = v25;
        v32 = 2112;
        v33 = v14;
        _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_ERROR, "Unable to load configuration from %@: %@", buf, 0x16u);
      }
    }

    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLConfigurationDictionary.m"];
    v28 = [v12 path];
    [v26 handleFailureInMethod:a2 object:self file:v27 lineNumber:63 description:{@"Unable to load configuration from %@: %@", v28, v14}];

    abort();
  }

  v15 = [(CPLConfigurationDictionary *)self initWithConfiguration:v13 refreshIntervalKey:v10 minRefreshInterval:0 lastUpdateDate:a5];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (CPLConfigurationDictionary)initWithConfiguration:(id)a3 refreshIntervalKey:(id)a4 minRefreshInterval:(double)a5 lastUpdateDate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v23.receiver = self;
  v23.super_class = CPLConfigurationDictionary;
  v13 = [(CPLConfigurationDictionary *)&v23 init];
  if (v13)
  {
    v14 = [v10 copy];
    configuration = v13->_configuration;
    v13->_configuration = v14;

    v16 = [v11 copy];
    refreshIntervalKey = v13->_refreshIntervalKey;
    v13->_refreshIntervalKey = v16;

    v13->_minRefreshInterval = a5;
    v18 = 0;
    if (a5 < 0.0 || (v18 = 0x4144105400000000, a5 > 2629800.0))
    {
      *&v13->_minRefreshInterval = v18;
    }

    [(NSDate *)v13->_lastUpdateDate timeIntervalSinceNow];
    if (v19 <= 0.0)
    {
      v20 = [v12 copy];
    }

    else
    {
      v20 = 0;
    }

    lastUpdateDate = v13->_lastUpdateDate;
    v13->_lastUpdateDate = v20;
  }

  return v13;
}

@end