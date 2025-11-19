@interface _GDSServerConnection
+ (id)createSessionConfiguration;
+ (id)dateFormatter;
+ (id)dateFromString:(id)a3;
+ (id)dateStringFromDate:(id)a3;
+ (id)fetchConfigWithError:(id *)a3;
+ (id)fetchEstimatedCountryCode;
+ (id)osBuildVersion;
+ (id)queryItemsMetaParams;
+ (id)sharedInstance;
- (_GDSServerConnection)init;
- (id)dataFromLocation:(id)a3;
- (id)fetchBalancingAuthorityFromLocation:(id)a3;
- (id)fetchBalancingAuthorityPolygons;
- (id)fetchCarbonIntensityHistoryForBA:(id)a3 from:(id)a4 to:(id)a5;
- (id)fetchMarginalEmissionForecastFor:(id)a3;
- (id)getFakeSecret;
- (id)getFakeSecretVersion;
- (id)getFakeServerURL;
- (id)getRequestForEndpoint:(id)a3 withData:(id)a4 keySequence:(id)a5;
- (id)postRequestForEndpoint:(id)a3 withData:(id)a4;
- (void)checkServerConfiguration;
- (void)handleNewConfig:(id)a3;
- (void)loadConfigState;
@end

@implementation _GDSServerConnection

- (_GDSServerConnection)init
{
  v14.receiver = self;
  v14.super_class = _GDSServerConnection;
  v2 = [(_GDSServerConnection *)&v14 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.gds", "serverConnection");
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.gridDataServices.config"];
    v6 = *(v2 + 6);
    *(v2 + 6) = v5;

    v7 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.gridDataServices.fakeData"];
    v8 = *(v2 + 7);
    *(v2 + 7) = v7;

    v9 = [*(v2 + 6) objectForKey:@"configDate"];
    v10 = *(v2 + 4);
    *(v2 + 4) = v9;

    if (!*(v2 + 4))
    {
      if (os_log_type_enabled(*(v2 + 2), OS_LOG_TYPE_ERROR))
      {
        [_GDSServerConnection init];
      }

      v11 = [MEMORY[0x277CBEAA8] distantPast];
      v12 = *(v2 + 4);
      *(v2 + 4) = v11;
    }

    [v2 checkServerConfiguration];
    [v2 loadConfigState];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[_GDSServerConnection sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

+ (id)dateFormatter
{
  if (dateFormatter_once != -1)
  {
    +[_GDSServerConnection dateFormatter];
  }

  v3 = dateFormatter_dateFormatter;

  return v3;
}

+ (id)dateFromString:(id)a3
{
  v3 = a3;
  v4 = +[_GDSServerConnection dateFormatter];
  v5 = [v4 dateFromString:v3];

  return v5;
}

+ (id)dateStringFromDate:(id)a3
{
  v3 = a3;
  v4 = +[_GDSServerConnection dateFormatter];
  v5 = [v4 stringFromDate:v3];

  return v5;
}

+ (id)fetchEstimatedCountryCode
{
  v2 = [MEMORY[0x277D443A8] currentEstimates];
  if ([v2 count])
  {
    v3 = v2;
LABEL_5:
    v4 = [v2 objectAtIndexedSubscript:0];
    v5 = [v4 countryCode];

    goto LABEL_6;
  }

  v3 = [MEMORY[0x277D443A8] lastKnownEstimates];

  if ([v3 count])
  {
    v2 = v3;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

+ (id)queryItemsMetaParams
{
  v2 = +[_GDSServerConnection fetchEstimatedCountryCode];
  v3 = v2;
  if (!v2 || [(__CFString *)v2 length]!= 2)
  {
    AnalyticsSendEventLazy();

    v3 = @"US";
  }

  v4 = +[_GDSServerConnection platform];
  v5 = +[_GDSServerConnection osBuildVersion];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277CCAD18] queryItemWithName:@"country" value:v3];
  [v6 addObject:v7];

  v8 = [MEMORY[0x277CCAD18] queryItemWithName:@"platform" value:v4];
  [v6 addObject:v8];

  v9 = [MEMORY[0x277CCAD18] queryItemWithName:@"build" value:v5];
  [v6 addObject:v9];

  return v6;
}

+ (id)fetchConfigWithError:(id *)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = os_log_create("com.apple.gds", "serverConnection");
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy_;
  v48 = __Block_byref_object_dispose_;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy_;
  v42 = __Block_byref_object_dispose_;
  v43 = 0;
  v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.gridDataServices.fakeData"];
  v6 = [v5 stringForKey:@"fakeConfigURL"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45___GDSServerConnection_fetchConfigWithError___block_invoke;
    block[3] = &unk_27969E078;
    v36 = v4;
    v9 = v8;
    v37 = v9;
    if (fetchConfigWithError__once != -1)
    {
      dispatch_once(&fetchConfigWithError__once, block);
    }
  }

  else
  {
    v9 = @"https://cabana-config.cdn-apple.com/static/v1/bootstrap-31e8c871-9a82-4a76-af31-7857bae5b03e.json";
  }

  v10 = [MEMORY[0x277CCACE0] componentsWithString:{v9, v5}];
  v11 = +[_GDSServerConnection queryItemsMetaParams];
  [v10 setQueryItems:v11];

  v12 = MEMORY[0x277CCAB70];
  v13 = [v10 URL];
  v14 = [v12 requestWithURL:v13];

  [v14 setHTTPMethod:@"GET"];
  [v14 addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  [v14 addValue:@"application/json" forHTTPHeaderField:@"Accept"];
  v15 = v4;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v14 allHTTPHeaderFields];
    *buf = 138412546;
    v51 = v14;
    v52 = 2112;
    v53 = v16;
    _os_log_impl(&dword_2507E1000, v15, OS_LOG_TYPE_DEFAULT, "Request: %@, Header: %@", buf, 0x16u);
  }

  v17 = +[_GDSServerConnection createSessionConfiguration];
  v18 = dispatch_semaphore_create(0);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __45___GDSServerConnection_fetchConfigWithError___block_invoke_144;
  v29[3] = &unk_27969E188;
  v19 = v15;
  v30 = v19;
  v32 = &v38;
  v20 = v18;
  v31 = v20;
  v33 = &v44;
  v34 = a3;
  v21 = [v17 dataTaskWithRequest:v14 completionHandler:v29];
  [v21 resume];
  [v17 finishTasksAndInvalidate];
  v22 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v20, v22);
  if (a3)
  {
    v23 = v39[5];
    if (v23)
    {
      *a3 = v23;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *a3;
        *buf = 138412290;
        v51 = v24;
        _os_log_impl(&dword_2507E1000, v19, OS_LOG_TYPE_DEFAULT, "Reporting error %@", buf, 0xCu);
      }
    }
  }

  v25 = v45[5];

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)checkServerConfiguration
{
  v18 = *MEMORY[0x277D85DE8];
  configFetchDate = self->_configFetchDate;
  if (!configFetchDate || ([(NSDate *)configFetchDate timeIntervalSinceNow], v4 < -1209600.0))
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_configFetchDate;
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_2507E1000, log, OS_LOG_TYPE_DEFAULT, "Server connection config needs refresh (Config date %@)", buf, 0xCu);
    }

    v7 = 0;
    v8 = 0;
    v9 = 3;
    while (1)
    {
      v10 = v8;
      v15 = v7;
      v8 = [_GDSServerConnection fetchConfigWithError:&v15];
      v11 = v15;

      if (!v11 && v8 != 0)
      {
        break;
      }

      v13 = self->_log;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2507E1000, v13, OS_LOG_TYPE_DEFAULT, "Config request failed. Retrying", buf, 2u);
      }

      v7 = v11;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }

    v11 = 0;
LABEL_14:
    [(_GDSServerConnection *)self handleNewConfig:v8];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleNewConfig:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"version"];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    if (v7 > 1.0 || ([v6 doubleValue], v8 < 0.0))
    {
      v9 = [(_GDSServerConnection *)self log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(_GDSServerConnection *)v6 handleNewConfig:v9];
      }
    }

    [v6 doubleValue];
    self->_configVersion = v10;
    defaults = self->_defaults;
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [(NSUserDefaults *)defaults setObject:v12 forKey:@"configVersion"];
  }

  v13 = [v4 objectForKeyedSubscript:@"serverUrl"];
  if (v13)
  {
    objc_storeStrong(&self->_serverURL, v13);
    [(NSUserDefaults *)self->_defaults setObject:self->_serverURL forKey:@"serverURL"];
  }

  else
  {
    v14 = [(_GDSServerConnection *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_GDSServerConnection handleNewConfig:];
    }
  }

  v15 = [v4 objectForKeyedSubscript:@"configuration"];
  v16 = [v15 objectForKeyedSubscript:@"cecEnabled"];
  v17 = v16;
  if (v16)
  {
    self->_isCECSupported = [v16 BOOLValue];
    [(NSUserDefaults *)self->_defaults setObject:v17 forKey:@"CECSupported"];
  }

  v18 = [v15 objectForKeyedSubscript:@"accountingEnabled"];

  if (v18)
  {
    self->_isCASupported = [v18 BOOLValue];
    [(NSUserDefaults *)self->_defaults setObject:v18 forKey:@"AccountingSupported"];
  }

  v19 = [MEMORY[0x277CBEAA8] date];
  configFetchDate = self->_configFetchDate;
  self->_configFetchDate = v19;

  [(NSUserDefaults *)self->_defaults setObject:self->_configFetchDate forKey:@"configDate"];
}

- (void)loadConfigState
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (id)postRequestForEndpoint:(id)a3 withData:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(_GDSServerConnection *)self checkServerConfiguration];
  v8 = [(_GDSServerConnection *)self getFakeServerURL];
  serverURL = v8;
  if (!v8)
  {
    serverURL = self->_serverURL;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", serverURL, v7];

  v11 = [MEMORY[0x277CCACE0] componentsWithString:v10];
  v12 = MEMORY[0x277CCAB70];
  v13 = [v11 URL];
  v14 = [v12 requestWithURL:v13];

  [v14 setHTTPMethod:@"POST"];
  [v14 setHTTPBody:v6];

  [v14 addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  [v14 addValue:@"application/json" forHTTPHeaderField:@"Accept"];
  v15 = [(_GDSServerConnection *)self getFakeSecret];
  v16 = [(_GDSServerConnection *)self getFakeSecretVersion];
  v17 = v16;
  if (v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = @"f971ea5835cead5eaf7e2750224fd8f4";
  }

  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = @"1";
  }

  v20 = [_GDSHMACGenerator HMACSignedRequest:v14 secret:v18 secretVersion:v19];
  v21 = [v20 mutableCopy];

  return v21;
}

- (id)getRequestForEndpoint:(id)a3 withData:(id)a4 keySequence:(id)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v42 = a3;
  v8 = a4;
  v9 = a5;
  [(_GDSServerConnection *)self checkServerConfiguration];
  v40 = self;
  v41 = [(_GDSServerConnection *)self getFakeServerURL];
  v10 = +[_GDSServerConnection queryItemsMetaParams];
  v11 = [v10 mutableCopy];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v44;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v44 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v43 + 1) + 8 * i);
        v18 = [v8 objectForKeyedSubscript:v17];

        if (v18)
        {
          v19 = MEMORY[0x277CCAD18];
          v20 = [v8 objectForKeyedSubscript:v17];
          v21 = [v19 queryItemWithName:v17 value:v20];
          [v11 addObject:v21];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v14);
  }

  serverURL = v41;
  if (!v41)
  {
    serverURL = v40->_serverURL;
  }

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", serverURL, v42];
  v24 = [MEMORY[0x277CCACE0] componentsWithString:v23];
  [v24 setQueryItems:v11];
  log = v40->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v26 = log;
    v27 = [v24 URL];
    *buf = 138412290;
    v48 = v27;
    _os_log_impl(&dword_2507E1000, v26, OS_LOG_TYPE_DEFAULT, "URL: %@", buf, 0xCu);
  }

  v28 = MEMORY[0x277CCAB70];
  v29 = [v24 URL];
  v30 = [v28 requestWithURL:v29];

  [v30 setHTTPMethod:@"GET"];
  [v30 addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  [v30 addValue:@"application/json" forHTTPHeaderField:@"Accept"];
  v31 = [(_GDSServerConnection *)v40 getFakeSecret];
  v32 = [(_GDSServerConnection *)v40 getFakeSecretVersion];
  v33 = v32;
  if (v31)
  {
    v34 = v31;
  }

  else
  {
    v34 = @"f971ea5835cead5eaf7e2750224fd8f4";
  }

  if (v32)
  {
    v35 = v32;
  }

  else
  {
    v35 = @"1";
  }

  v36 = [_GDSHMACGenerator HMACSignedRequest:v30 secret:v34 secretVersion:v35];
  v37 = [v36 mutableCopy];

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

- (id)getFakeSecret
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(_GDSServerConnection *)self fakeDataDefaults];
  v4 = [v3 stringForKey:@"fakeSecret"];

  log = self->_log;
  v6 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = v4;
      v8 = log;
      v12 = 136315138;
      v13 = [v4 UTF8String];
      _os_log_impl(&dword_2507E1000, v8, OS_LOG_TYPE_DEFAULT, "Found fakeSecret: %s", &v12, 0xCu);
    }

    v9 = v4;
  }

  else if (v6)
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_2507E1000, log, OS_LOG_TYPE_DEFAULT, "Found no fakeSecret.", &v12, 2u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)getFakeSecretVersion
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(_GDSServerConnection *)self fakeDataDefaults];
  v4 = [v3 stringForKey:@"fakeSecretVersion"];

  log = self->_log;
  v6 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = v4;
      v8 = log;
      v12 = 136315138;
      v13 = [v4 UTF8String];
      _os_log_impl(&dword_2507E1000, v8, OS_LOG_TYPE_DEFAULT, "Found fakeSecretVersion: %s", &v12, 0xCu);
    }

    v9 = v4;
  }

  else if (v6)
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_2507E1000, log, OS_LOG_TYPE_DEFAULT, "Found no fakeSecretVersion.", &v12, 2u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)getFakeServerURL
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(_GDSServerConnection *)self fakeDataDefaults];
  v4 = [v3 stringForKey:@"fakeServerURL"];

  log = self->_log;
  v6 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = v4;
      v8 = log;
      v12 = 136315138;
      v13 = [v4 UTF8String];
      _os_log_impl(&dword_2507E1000, v8, OS_LOG_TYPE_DEFAULT, "Found fakeServerURL: %s", &v12, 0xCu);
    }

    v9 = v4;
  }

  else if (v6)
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_2507E1000, log, OS_LOG_TYPE_DEFAULT, "Found no fakeServerURL.", &v12, 2u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)dataFromLocation:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = @"longitude";
  v3 = MEMORY[0x277CCABB0];
  v4 = a3;
  [v4 coordinate];
  v6 = [v3 numberWithDouble:v5];
  v20[1] = @"latitude";
  v21[0] = v6;
  v7 = MEMORY[0x277CCABB0];
  [v4 coordinate];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v21[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v12 = [MEMORY[0x277CBEB18] array];
  [v12 addObject:v11];
  v13 = MEMORY[0x277CCAAA0];
  v18 = @"locations";
  v19 = v12;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v15 = [v13 dataWithJSONObject:v14 options:0 error:0];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)createSessionConfiguration
{
  v2 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  [v2 setRequestCachePolicy:5];
  v3 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v2 delegate:0 delegateQueue:0];

  return v3;
}

- (id)fetchBalancingAuthorityFromLocation:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = [(_GDSServerConnection *)self dataFromLocation:v4];
  v7 = [(_GDSServerConnection *)self postRequestForEndpoint:@"getBalancingAuthorities" withData:v6];
  v8 = self->_log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v7 allHTTPHeaderFields];
    [(_GDSServerConnection *)v7 fetchBalancingAuthorityFromLocation:v9, buf, v8];
  }

  v10 = +[_GDSServerConnection createSessionConfiguration];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __60___GDSServerConnection_fetchBalancingAuthorityFromLocation___block_invoke;
  v21 = &unk_27969E1B0;
  v22 = self;
  v11 = v5;
  v23 = v11;
  v12 = v4;
  v24 = v12;
  v25 = &v26;
  v13 = [v10 dataTaskWithRequest:v7 completionHandler:&v18];
  [v13 resume];
  [v10 finishTasksAndInvalidate];
  v14 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v11, v14);
  v15 = v27[5];

  _Block_object_dispose(&v26, 8);
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)osBuildVersion
{
  v2 = _CFCopySystemVersionDictionary();
  v3 = [MEMORY[0x277CCACA8] stringWithString:{CFDictionaryGetValue(v2, *MEMORY[0x277CBEC70])}];
  CFRelease(v2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"UnknownBuildVersion";
  }

  return v4;
}

- (id)fetchBalancingAuthorityPolygons
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = [MEMORY[0x277CBEB38] dictionary];
  v4 = os_transaction_create();
  v5 = [(_GDSServerConnection *)self getRequestForEndpoint:@"getBaBoundaries" withData:0 keySequence:0];
  v6 = self->_log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 allHTTPHeaderFields];
    *buf = 138412546;
    v26 = v5;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_2507E1000, v6, OS_LOG_TYPE_DEFAULT, "Request: %@, Header: %@", buf, 0x16u);
  }

  v8 = +[_GDSServerConnection createSessionConfiguration];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55___GDSServerConnection_fetchBalancingAuthorityPolygons__block_invoke;
  v16[3] = &unk_27969E1D8;
  v16[4] = self;
  v9 = v3;
  v17 = v9;
  v18 = &v19;
  v10 = [v8 dataTaskWithRequest:v5 completionHandler:v16];
  v11 = objc_autoreleasePoolPush();
  [v10 resume];
  [v8 finishTasksAndInvalidate];
  objc_autoreleasePoolPop(v11);
  v12 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v9, v12);
  v13 = v20[5];

  _Block_object_dispose(&v19, 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)fetchMarginalEmissionForecastFor:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!self->_isCECSupported)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 0;
      _os_log_impl(&dword_2507E1000, log, OS_LOG_TYPE_DEFAULT, "Fetching for CEC disabled. Returning nil", v34, 2u);
    }

    goto LABEL_10;
  }

  v6 = [v4 identifier];

  if (!v6)
  {
    v17 = self->_log;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(_GDSServerConnection *)v17 fetchMarginalEmissionForecastFor:v5];
    }

LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  v7 = dispatch_semaphore_create(0);
  *v34 = 0;
  v35 = v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy_;
  v32[4] = __Block_byref_object_dispose_;
  v33 = [MEMORY[0x277CBEB38] dictionary];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy_;
  v30[4] = __Block_byref_object_dispose_;
  v31 = 0;
  v8 = [(_GDSServerConnection *)self getRequestForEndpoint:@"getEmissionsForecasts" withData:0 keySequence:0];
  v9 = self->_log;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 allHTTPHeaderFields];
    *buf = 138412546;
    v41 = v8;
    v42 = 2112;
    v43 = v10;
    _os_log_impl(&dword_2507E1000, v9, OS_LOG_TYPE_DEFAULT, "Request: %@, Header: %@", buf, 0x16u);
  }

  v11 = +[_GDSServerConnection createSessionConfiguration];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __57___GDSServerConnection_fetchMarginalEmissionForecastFor___block_invoke;
  v23 = &unk_27969E200;
  v24 = self;
  v12 = v7;
  v25 = v12;
  v26 = v5;
  v27 = v30;
  v28 = v32;
  v29 = v34;
  v13 = [v11 dataTaskWithRequest:v8 completionHandler:&v20];
  [v13 resume];
  [v11 finishTasksAndInvalidate];
  v14 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v12, v14);
  v15 = *(v35 + 5);

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);

  _Block_object_dispose(v34, 8);
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)fetchCarbonIntensityHistoryForBA:(id)a3 from:(id)a4 to:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!self->_isCASupported)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v44 = 0;
      _os_log_impl(&dword_2507E1000, log, OS_LOG_TYPE_DEFAULT, "Fetching for Carbon Accounting disabled. Returning nil", v44, 2u);
    }

    goto LABEL_12;
  }

  if (!v8 || !v9 || !v10)
  {
    v25 = self->_log;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *v44 = 138412802;
      *&v44[4] = v8;
      *&v44[12] = 2112;
      *&v44[14] = v9;
      *&v44[22] = 2112;
      v45 = v11;
      _os_log_error_impl(&dword_2507E1000, v25, OS_LOG_TYPE_ERROR, "Parameters not specified BA:%@ startDate:%@ endDate:%@", v44, 0x20u);
    }

LABEL_12:
    v23 = 0;
    goto LABEL_13;
  }

  v12 = dispatch_semaphore_create(0);
  *v44 = 0;
  *&v44[8] = v44;
  *&v44[16] = 0x3032000000;
  v45 = __Block_byref_object_copy_;
  v46 = __Block_byref_object_dispose_;
  v47 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy_;
  v36[4] = __Block_byref_object_dispose_;
  v37 = [MEMORY[0x277CBEB38] dictionary];
  v43[0] = v8;
  v42[0] = @"balancingAuthorityId";
  v42[1] = @"startTime";
  v13 = [_GDSServerConnection dateStringFromDate:v9];
  v43[1] = v13;
  v42[2] = @"endTime";
  v14 = [_GDSServerConnection dateStringFromDate:v11];
  v43[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];

  v16 = [(_GDSServerConnection *)self getRequestForEndpoint:@"getEmissionsHistory" withData:v15 keySequence:&unk_2862C5DE8];
  v17 = self->_log;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v16 allHTTPHeaderFields];
    *buf = 138412546;
    v39 = v16;
    v40 = 2112;
    v41 = v18;
    _os_log_impl(&dword_2507E1000, v17, OS_LOG_TYPE_DEFAULT, "Request: %@, Header: %@", buf, 0x16u);
  }

  v19 = +[_GDSServerConnection createSessionConfiguration];
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __65___GDSServerConnection_fetchCarbonIntensityHistoryForBA_from_to___block_invoke;
  v31 = &unk_27969E228;
  v32 = self;
  v20 = v12;
  v33 = v20;
  v34 = v36;
  v35 = v44;
  v21 = [v19 dataTaskWithRequest:v16 completionHandler:&v28];
  [v21 resume];
  [v19 finishTasksAndInvalidate];
  v22 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v20, v22);
  v23 = *(*&v44[8] + 40);

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v44, 8);

LABEL_13:
  v26 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)handleNewConfig:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  [a1 doubleValue];
  v5 = 134218496;
  v6 = v3;
  v7 = 2048;
  v8 = 0;
  v9 = 2048;
  v10 = 0x3FF0000000000000;
  _os_log_error_impl(&dword_2507E1000, a2, OS_LOG_TYPE_ERROR, "Config version %lf not supported by OS versions (%lf - %lf)", &v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)fetchBalancingAuthorityFromLocation:(uint8_t *)buf .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_2507E1000, log, OS_LOG_TYPE_DEBUG, "Request: %@, Header: %@", buf, 0x16u);
}

- (void)fetchMarginalEmissionForecastFor:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 identifier];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_2507E1000, v3, OS_LOG_TYPE_ERROR, "Parameter not specified BA:%@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end