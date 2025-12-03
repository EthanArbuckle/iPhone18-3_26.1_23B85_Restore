@interface CPLConfigurationDictionary
- (BOOL)isStale;
- (BOOL)writeToURL:(id)l error:(id *)error;
- (CPLConfigurationDictionary)initWithConfiguration:(id)configuration refreshIntervalKey:(id)key minRefreshInterval:(double)interval lastUpdateDate:(id)date;
- (CPLConfigurationDictionary)initWithConfigurationName:(id)name refreshIntervalKey:(id)key minRefreshInterval:(double)interval;
- (CPLConfigurationDictionary)initWithContentsOfURL:(id)l refreshIntervalKey:(id)key minRefreshInterval:(double)interval error:(id *)error;
- (CPLConfigurationDictionary)initWithData:(id)data refreshIntervalKey:(id)key minRefreshInterval:(double)interval error:(id *)error;
- (double)refreshInterval;
- (id)copyConfigurationDictionaryWithUpdatedDate;
- (id)copyConfigurationDictionaryWithUpdatedKey:(id)key value:(id)value;
- (int64_t)compare:(id)compare;
@end

@implementation CPLConfigurationDictionary

- (id)copyConfigurationDictionaryWithUpdatedKey:(id)key value:(id)value
{
  configuration = self->_configuration;
  valueCopy = value;
  keyCopy = key;
  v9 = [(NSDictionary *)configuration mutableCopy];
  [v9 setObject:valueCopy forKeyedSubscript:keyCopy];

  v10 = [CPLConfigurationDictionary alloc];
  refreshIntervalKey = self->_refreshIntervalKey;
  minRefreshInterval = self->_minRefreshInterval;
  date = [MEMORY[0x1E695DF00] date];
  v14 = [(CPLConfigurationDictionary *)v10 initWithConfiguration:v9 refreshIntervalKey:refreshIntervalKey minRefreshInterval:date lastUpdateDate:minRefreshInterval];

  return v14;
}

- (id)copyConfigurationDictionaryWithUpdatedDate
{
  v3 = [CPLConfigurationDictionary alloc];
  configuration = self->_configuration;
  refreshIntervalKey = self->_refreshIntervalKey;
  minRefreshInterval = self->_minRefreshInterval;
  date = [MEMORY[0x1E695DF00] date];
  v8 = [(CPLConfigurationDictionary *)v3 initWithConfiguration:configuration refreshIntervalKey:refreshIntervalKey minRefreshInterval:date lastUpdateDate:minRefreshInterval];

  return v8;
}

- (int64_t)compare:(id)compare
{
  lastUpdateDate = self->_lastUpdateDate;
  v4 = *(compare + 4);
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

  date = [MEMORY[0x1E695DF00] date];
  if ([(NSDate *)self->_lastUpdateDate compare:date]== NSOrderedDescending)
  {
    v4 = 1;
  }

  else
  {
    [date timeIntervalSinceDate:self->_lastUpdateDate];
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

- (BOOL)writeToURL:(id)l error:(id *)error
{
  v29[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
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
    v19 = [v16 writeToURL:lCopy options:1 error:&v24];
    v20 = v24;

    objc_autoreleasePoolPop(v15);
    if (error && v19)
    {
      v21 = v20;
      *error = v20;
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

- (CPLConfigurationDictionary)initWithContentsOfURL:(id)l refreshIntervalKey:(id)key minRefreshInterval:(double)interval error:(id *)error
{
  lCopy = l;
  keyCopy = key;
  v12 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:lCopy error:error];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 objectForKeyedSubscript:@"configuration"];
    if (v14)
    {
      lastPathComponent = [v13 objectForKeyedSubscript:@"lastUpdate"];
      v16 = [(CPLConfigurationDictionary *)self initWithConfiguration:v14 refreshIntervalKey:keyCopy minRefreshInterval:lastPathComponent lastUpdateDate:interval];
    }

    else
    {
      lastPathComponent = [lCopy lastPathComponent];
      v16 = [(CPLConfigurationDictionary *)self initWithConfigurationName:lastPathComponent refreshIntervalKey:keyCopy minRefreshInterval:interval];
    }

    self = v16;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CPLConfigurationDictionary)initWithData:(id)data refreshIntervalKey:(id)key minRefreshInterval:(double)interval error:(id *)error
{
  keyCopy = key;
  v11 = [MEMORY[0x1E696AE40] propertyListWithData:data options:0 format:0 error:error];
  if (v11)
  {
    date = [MEMORY[0x1E695DF00] date];
    self = [(CPLConfigurationDictionary *)self initWithConfiguration:v11 refreshIntervalKey:keyCopy minRefreshInterval:date lastUpdateDate:interval];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CPLConfigurationDictionary)initWithConfigurationName:(id)name refreshIntervalKey:(id)key minRefreshInterval:(double)interval
{
  v34 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  keyCopy = key;
  v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v12 = [v11 URLForResource:nameCopy withExtension:0];

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

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLConfigurationDictionary.m"];
    v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    [currentHandler handleFailureInMethod:a2 object:self file:v22 lineNumber:60 description:{@"Can't find configuration in %@ for %@", v23, objc_opt_class()}];

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
        path = [v12 path];
        *buf = 138412546;
        v31 = path;
        v32 = 2112;
        v33 = v14;
        _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_ERROR, "Unable to load configuration from %@: %@", buf, 0x16u);
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLConfigurationDictionary.m"];
    path2 = [v12 path];
    [currentHandler2 handleFailureInMethod:a2 object:self file:v27 lineNumber:63 description:{@"Unable to load configuration from %@: %@", path2, v14}];

    abort();
  }

  v15 = [(CPLConfigurationDictionary *)self initWithConfiguration:v13 refreshIntervalKey:keyCopy minRefreshInterval:0 lastUpdateDate:interval];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (CPLConfigurationDictionary)initWithConfiguration:(id)configuration refreshIntervalKey:(id)key minRefreshInterval:(double)interval lastUpdateDate:(id)date
{
  configurationCopy = configuration;
  keyCopy = key;
  dateCopy = date;
  v23.receiver = self;
  v23.super_class = CPLConfigurationDictionary;
  v13 = [(CPLConfigurationDictionary *)&v23 init];
  if (v13)
  {
    v14 = [configurationCopy copy];
    configuration = v13->_configuration;
    v13->_configuration = v14;

    v16 = [keyCopy copy];
    refreshIntervalKey = v13->_refreshIntervalKey;
    v13->_refreshIntervalKey = v16;

    v13->_minRefreshInterval = interval;
    v18 = 0;
    if (interval < 0.0 || (v18 = 0x4144105400000000, interval > 2629800.0))
    {
      *&v13->_minRefreshInterval = v18;
    }

    [(NSDate *)v13->_lastUpdateDate timeIntervalSinceNow];
    if (v19 <= 0.0)
    {
      v20 = [dateCopy copy];
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