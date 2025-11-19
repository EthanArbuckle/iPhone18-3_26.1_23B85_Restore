@interface MSServerSideConfigManager
+ (double)doubleValueForParameter:(id)a3 forPersonID:(id)a4 defaultValue:(double)a5;
+ (id)configManagerForPersonID:(id)a3;
+ (id)objectForKey:(id)a3 forPersonID:(id)a4 defaultValue:(id)a5;
+ (int)intValueForParameter:(id)a3 forPersonID:(id)a4 defaultValue:(int)a5;
+ (int64_t)longLongValueForParameter:(id)a3 forPersonID:(id)a4 defaultValue:(int64_t)a5;
+ (int64_t)longValueForParameter:(id)a3 forPersonID:(id)a4 defaultValue:(int64_t)a5;
+ (void)abortAllActivities;
+ (void)forgetPersonID:(id)a3;
- (MSServerSideConfigManager)initWithPersonID:(id)a3 baseURL:(id)a4;
- (NSDictionary)config;
- (void)abort;
- (void)dealloc;
- (void)refreshConfiguration;
- (void)serverSideConfigProtocol:(id)a3 didFinishWithConfiguration:(id)a4 error:(id)a5;
- (void)serverSideConfigProtocol:(id)a3 didReceiveAuthenticationError:(id)a4;
- (void)setConfig:(id)a3;
@end

@implementation MSServerSideConfigManager

- (void)serverSideConfigProtocol:(id)a3 didReceiveAuthenticationError:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = [a4 MSVerboseDescription];
    v10 = 138543362;
    v11 = v9;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to retrieve configuration due to authentication error: %{public}@", &v10, 0xCu);
  }

  daemon = self->_daemon;
  v7 = [(MSServerSideConfigManager *)self personID];
  [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationFailureForPersonID:v7];

  [(MSDaemon *)self->_daemon releaseBusy];
  self->_state = 0;
  v8 = *MEMORY[0x277D85DE8];
}

- (void)serverSideConfigProtocol:(id)a3 didFinishWithConfiguration:(id)a4 error:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = [v10 MSVerboseDescription];
    v15 = 138543618;
    v16 = v9;
    v17 = 2114;
    v18 = v11;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Finished retrieving server-side configuration: %{public}@, error: %{public}@", &v15, 0x16u);
  }

  if (!v10)
  {
    daemon = self->_daemon;
    v13 = [(MSServerSideConfigManager *)self personID];
    [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationSuccessForPersonID:v13];

    [(MSServerSideConfigManager *)self setConfig:v9];
  }

  [(MSDaemon *)self->_daemon releaseBusy];
  self->_state = 0;

  v14 = *MEMORY[0x277D85DE8];
}

- (void)abort
{
  if (self->_state == 2)
  {
    [(MSServerSideConfigProtocol *)self->_protocol abort];
    [(MSDaemon *)self->_daemon releaseBusy];
  }

  self->_state = 0;
}

- (void)refreshConfiguration
{
  state = self->_state;
  if (state != 1)
  {
    if (state)
    {
      return;
    }

    [(MSDaemon *)self->_daemon retainBusy];
    self->_state = 1;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Refreshing server-side configuration.", v4, 2u);
  }

  self->_state = 2;
  [(MSServerSideConfigProtocol *)self->_protocol queryConfiguration];
}

- (void)setConfig:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  config = self->_config;
  if (!config || ![(NSDictionary *)config isEqualToDictionary:v5])
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = v7;
    if (v5)
    {
      v9 = [(NSString *)self->_configPath stringByDeletingLastPathComponent];
      [v8 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:0];

      v19 = 0;
      v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v19];
      v11 = v19;
      if (!v10 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v11;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to archive config, error: %@", buf, 0xCu);
      }

      if (([v10 writeToFile:self->_configPath atomically:1] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Cannot save config.", buf, 2u);
      }
    }

    else
    {
      [v7 removeItemAtPath:self->_configPath error:0];
    }

    objc_storeStrong(&self->_config, a3);
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = MEMORY[0x277CBEAC0];
    v14 = [(MSServerSideConfigManager *)self personID];
    v15 = [v13 dictionaryWithObjectsAndKeys:{v14, @"personID", 0}];
    [v12 postNotificationName:@"MSServerSideConfigChanged" object:self userInfo:v15];

    daemon = self->_daemon;
    v17 = [(MSServerSideConfigManager *)self personID];
    [(MSMediaStreamDaemon *)daemon didReceiveNewServerSideConfigurationForPersonID:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)config
{
  config = self->_config;
  if (config || ([MEMORY[0x277CCAAC8] MSSafeUnarchiveObjectWithFile:self->_configPath outError:0], v4 = objc_claimAutoreleasedReturnValue(), v5 = self->_config, self->_config = v4, v5, (config = self->_config) != 0))
  {
    v6 = config;
  }

  else
  {
    v6 = [MEMORY[0x277CBEAC0] dictionary];
  }

  return v6;
}

- (void)dealloc
{
  [(MSServerSideConfigManager *)self abort];
  v3.receiver = self;
  v3.super_class = MSServerSideConfigManager;
  [(MSServerSideConfigManager *)&v3 dealloc];
}

- (MSServerSideConfigManager)initWithPersonID:(id)a3 baseURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = MSServerSideConfigManager;
  v9 = [(MSServerSideConfigManager *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_personID, a3);
    v11 = [[MSServerSideConfigProtocol alloc] initWithPersonID:v7 baseURL:v8];
    protocol = v10->_protocol;
    v10->_protocol = v11;

    [(MSServerSideConfigProtocol *)v10->_protocol setDelegate:v10];
    v13 = MSPathServerSideConfigPathForPersonID(v7);
    configPath = v10->_configPath;
    v10->_configPath = v13;
  }

  return v10;
}

+ (id)objectForKey:(id)a3 forPersonID:(id)a4 defaultValue:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = MSPlatform();
  v11 = [v10 theDaemon];
  v12 = [v11 serverSideConfigurationForPersonID:v8];
  v13 = [v12 objectForKey:v7];

  v14 = v9;
  if (v13)
  {
    v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    v14 = v13;
    if (v15)
    {
      v19 = 138412802;
      v20 = v8;
      v21 = 2114;
      v22 = v7;
      v23 = 2114;
      v24 = v13;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "PersonID %@ using server-side value for key %{public}@. Value: %{public}@", &v19, 0x20u);
      v14 = v13;
    }
  }

  v16 = v14;

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (int64_t)longLongValueForParameter:(id)a3 forPersonID:(id)a4 defaultValue:(int64_t)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = MSPlatform();
  v10 = [v9 theDaemon];
  v11 = [v10 serverSideConfigurationForPersonID:v8];
  v12 = [v11 objectForKey:v7];

  if (v12)
  {
    if (objc_opt_respondsToSelector())
    {
      a5 = [v12 longLongValue];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v15 = 138412802;
        v16 = v8;
        v17 = 2114;
        v18 = v7;
        v19 = 2048;
        v20 = a5;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "PersonID %@ using server-side value for parameter %{public}@. Value: %lld", &v15, 0x20u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return a5;
}

+ (int64_t)longValueForParameter:(id)a3 forPersonID:(id)a4 defaultValue:(int64_t)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = MSPlatform();
  v10 = [v9 theDaemon];
  v11 = [v10 serverSideConfigurationForPersonID:v8];
  v12 = [v11 objectForKey:v7];

  if (v12)
  {
    if (objc_opt_respondsToSelector())
    {
      a5 = [v12 longValue];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v15 = 138412802;
        v16 = v8;
        v17 = 2114;
        v18 = v7;
        v19 = 2048;
        v20 = a5;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "PersonID %@ using server-side value for parameter %{public}@. Value: %ld", &v15, 0x20u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return a5;
}

+ (double)doubleValueForParameter:(id)a3 forPersonID:(id)a4 defaultValue:(double)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = MSPlatform();
  v10 = [v9 theDaemon];
  v11 = [v10 serverSideConfigurationForPersonID:v8];
  v12 = [v11 objectForKey:v7];

  if (v12)
  {
    if (objc_opt_respondsToSelector())
    {
      [v12 doubleValue];
      a5 = v13;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v16 = 138412802;
        v17 = v8;
        v18 = 2114;
        v19 = v7;
        v20 = 2048;
        v21 = a5;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "PersonID %@ using server-side value for parameter %{public}@. Value: %f", &v16, 0x20u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return a5;
}

+ (int)intValueForParameter:(id)a3 forPersonID:(id)a4 defaultValue:(int)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = MSPlatform();
  v10 = [v9 theDaemon];
  v11 = [v10 serverSideConfigurationForPersonID:v8];
  v12 = [v11 objectForKey:v7];

  if (v12)
  {
    if (objc_opt_respondsToSelector())
    {
      a5 = [v12 intValue];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v15 = 138412802;
        v16 = v8;
        v17 = 2114;
        v18 = v7;
        v19 = 1024;
        v20 = a5;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "PersonID %@ using server-side value for parameter %{public}@. Value: %d", &v15, 0x1Cu);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return a5;
}

+ (void)forgetPersonID:(id)a3
{
  v5 = a3;
  v3 = [_configManagerByID objectForKey:?];
  v4 = v3;
  if (v3)
  {
    [v3 abort];
    [_configManagerByID removeObjectForKey:v5];
  }
}

+ (void)abortAllActivities
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [_configManagerByID allValues];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) abort];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)configManagerForPersonID:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = _configManagerByID;
    if (!_configManagerByID)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v6 = _configManagerByID;
      _configManagerByID = v5;

      v4 = _configManagerByID;
    }

    v7 = [v4 objectForKey:v3];
    if (!v7)
    {
      v8 = [MSServerSideConfigManager alloc];
      v9 = MSPlatform();
      v10 = [v9 baseURLForPersonID:v3];
      v7 = [(MSServerSideConfigManager *)v8 initWithPersonID:v3 baseURL:v10];

      [_configManagerByID setObject:v7 forKey:v3];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end