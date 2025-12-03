@interface _GDSManager
+ (id)managerWithID:(id)d locationBundlePath:(id)path;
- (_GDSManager)initWithID:(id)d locationBundlePath:(id)path;
- (id)carbonIntensityHistoryForBA:(id)a from:(id)from to:(id)to;
- (id)getFakeMarginalEmissionForecast;
- (id)latestBalancingAuthority;
- (id)latestBalancingAuthorityWithError:(id *)error;
- (id)latestMarginalEmissionForecast;
- (void)dealloc;
- (void)fixMarginalEmissionForecast:(id)forecast;
- (void)latestBalancingAuthority;
- (void)latestMarginalEmissionForecast;
- (void)registerClientID:(id)d locationBundlePath:(id)path;
- (void)setFakeConfigURL:(id)l;
- (void)setFakeSecret:(id)secret;
- (void)setFakeSecretVersion:(id)version;
- (void)setFakeServerURL:(id)l;
- (void)triggerBAUpdateWithHandler:(id)handler;
- (void)unFixMarginalEmissionForecast;
- (void)unSetFakeConfigURL;
- (void)unSetFakeSecret;
- (void)unSetFakeSecretVersion;
- (void)unSetFakeServerURL;
@end

@implementation _GDSManager

- (_GDSManager)initWithID:(id)d locationBundlePath:(id)path
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  pathCopy = path;
  v26.receiver = self;
  v26.super_class = _GDSManager;
  v9 = [(_GDSManager *)&v26 init];
  if (v9)
  {
    v10 = os_log_create("com.apple.gds", "manager");
    log = v9->_log;
    v9->_log = v10;

    v12 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.gridDataServices.fakeData"];
    fakeDataDefaults = v9->_fakeDataDefaults;
    v9->_fakeDataDefaults = v12;

    v14 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.griddatad.registration" options:4096];
    connection = v9->_connection;
    v9->_connection = v14;

    v16 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2862C7D40];
    [(NSXPCConnection *)v9->_connection setRemoteObjectInterface:v16];

    [(NSXPCConnection *)v9->_connection resume];
    objc_storeStrong(&v9->_clientID, d);
    objc_storeStrong(&v9->_locBundlePath, path);
    v17 = +[_GDSBalancingAuthority loadRegistrations];
    v18 = [v17 objectForKeyedSubscript:v9->_clientID];
    if (!v18 || (v19 = v18, [v17 objectForKeyedSubscript:v9->_clientID], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToString:", pathCopy), v20, v19, (v21 & 1) == 0))
    {
      v22 = [(_GDSManager *)v9 log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        clientID = v9->_clientID;
        *buf = 138412290;
        v28 = clientID;
        _os_log_impl(&dword_2507E1000, v22, OS_LOG_TYPE_DEFAULT, "Registering client %@", buf, 0xCu);
      }

      [(_GDSManager *)v9 registerClientID:dCopy locationBundlePath:pathCopy];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)managerWithID:(id)d locationBundlePath:(id)path
{
  dCopy = d;
  pathCopy = path;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48___GDSManager_managerWithID_locationBundlePath___block_invoke;
  v13[3] = &unk_27969E078;
  v14 = dCopy;
  v15 = pathCopy;
  v7 = managerWithID_locationBundlePath__once;
  v8 = pathCopy;
  v9 = dCopy;
  if (v7 != -1)
  {
    dispatch_once(&managerWithID_locationBundlePath__once, v13);
  }

  v10 = managerWithID_locationBundlePath__instance;
  v11 = managerWithID_locationBundlePath__instance;

  return v10;
}

- (void)registerClientID:(id)d locationBundlePath:(id)path
{
  pathCopy = path;
  dCopy = d;
  v9 = [(_GDSManager *)self log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2507E1000, v9, OS_LOG_TYPE_DEFAULT, "Calling registration with griddatad", buf, 2u);
  }

  connection = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51___GDSManager_registerClientID_locationBundlePath___block_invoke;
  v13[3] = &unk_27969E0A0;
  v13[4] = self;
  v13[5] = a2;
  v11 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51___GDSManager_registerClientID_locationBundlePath___block_invoke_62;
  v12[3] = &unk_27969E0A0;
  v12[4] = self;
  v12[5] = a2;
  [v11 registerClientID:dCopy locationBundlePath:pathCopy handler:v12];
}

- (void)triggerBAUpdateWithHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [(_GDSManager *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2507E1000, v6, OS_LOG_TYPE_DEFAULT, "Calling fetch BA with griddatad", buf, 2u);
  }

  connection = self->_connection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42___GDSManager_triggerBAUpdateWithHandler___block_invoke;
  v14[3] = &unk_27969E0A0;
  v14[4] = self;
  v14[5] = a2;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  clientID = self->_clientID;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42___GDSManager_triggerBAUpdateWithHandler___block_invoke_63;
  v11[3] = &unk_27969E0C8;
  v12 = handlerCopy;
  v13 = a2;
  v11[4] = self;
  v10 = handlerCopy;
  [v8 updateBAClientID:clientID handler:v11];
}

- (id)latestBalancingAuthority
{
  v7 = 0;
  v3 = [(_GDSManager *)self latestBalancingAuthorityWithError:&v7];
  v4 = v7;
  if (v4)
  {
    v5 = [(_GDSManager *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(_GDSManager *)v4 latestBalancingAuthority];
    }
  }

  return v3;
}

- (id)latestBalancingAuthorityWithError:(id *)error
{
  v44[1] = *MEMORY[0x277D85DE8];
  v5 = +[_GDSBalancingAuthority loadBalancingAuthorityStatus];
  if (![v5 count])
  {
    v15 = [(_GDSManager *)self log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [_GDSManager latestBalancingAuthorityWithError:v15];
    }

    v16 = MEMORY[0x277CCA9B8];
    v43 = *MEMORY[0x277CCA450];
    v44[0] = @"Failed to get latest BA. Location availability status not found";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    *error = [v16 errorWithDomain:@"com.apple.gds" code:2 userInfo:v17];

    goto LABEL_17;
  }

  v6 = [v5 objectForKeyedSubscript:self->_clientID];

  if (!v6)
  {
    v18 = [(_GDSManager *)self log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(_GDSManager *)&self->_clientID latestBalancingAuthorityWithError:v18];
    }

    v19 = MEMORY[0x277CCA9B8];
    v41 = *MEMORY[0x277CCA450];
    v42 = @"Failed to get latest BA. Location availability status not found for client";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    *error = [v19 errorWithDomain:@"com.apple.gds" code:1 userInfo:v20];

    goto LABEL_17;
  }

  v7 = [v5 objectForKeyedSubscript:self->_clientID];
  bOOLValue = [v7 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_2507E1000, log, OS_LOG_TYPE_DEFAULT, "Location not available", &v31, 2u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v39 = *MEMORY[0x277CCA450];
    v40 = @"Failed to get latest BA. Location authorization not available for client";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    *error = [v22 errorWithDomain:@"com.apple.gds" code:2 userInfo:v23];

LABEL_17:
    AnalyticsSendEventLazy();
    v9 = 0;
    goto LABEL_18;
  }

  v9 = +[_GDSBalancingAuthority currentBalancingAuthority];
  name = [v9 name];
  v11 = [name isEqualToString:@"Unkown"];

  if (v11)
  {
    v12 = [(_GDSManager *)self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_GDSManager latestBalancingAuthorityWithError:v12];
    }

    v13 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277CCA450];
    v38 = @"Failed to get latest BA. Unable to find BA name";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    *error = [v13 errorWithDomain:@"com.apple.gds" code:3 userInfo:v14];
  }

  AnalyticsSendEventLazy();
  v26 = self->_log;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = v26;
    name2 = [v9 name];
    identifier = [v9 identifier];
    lastUpdatedDate = [v9 lastUpdatedDate];
    v31 = 138412802;
    v32 = name2;
    v33 = 2112;
    v34 = identifier;
    v35 = 2112;
    v36 = lastUpdatedDate;
    _os_log_impl(&dword_2507E1000, v27, OS_LOG_TYPE_DEFAULT, "Balancing Authority Output Name:%@, ID:%@, Date:%@", &v31, 0x20u);
  }

LABEL_18:

  v24 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)latestMarginalEmissionForecast
{
  latestBalancingAuthority = [(_GDSManager *)self latestBalancingAuthority];
  getFakeMarginalEmissionForecast = [(_GDSManager *)self getFakeMarginalEmissionForecast];
  if (getFakeMarginalEmissionForecast)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_2507E1000, log, OS_LOG_TYPE_DEFAULT, "Returning the fake forecast set in defaults.", v11, 2u);
    }

    v6 = getFakeMarginalEmissionForecast;
  }

  else
  {
    identifier = [latestBalancingAuthority identifier];

    if (identifier)
    {
      v8 = +[_GDSServerConnection sharedInstance];
      v6 = [v8 fetchMarginalEmissionForecastFor:latestBalancingAuthority];
    }

    else
    {
      v9 = self->_log;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(_GDSManager *)v9 latestMarginalEmissionForecast];
      }

      v6 = 0;
    }
  }

  return v6;
}

- (id)carbonIntensityHistoryForBA:(id)a from:(id)from to:(id)to
{
  v23 = *MEMORY[0x277D85DE8];
  aCopy = a;
  fromCopy = from;
  toCopy = to;
  v11 = toCopy;
  if (aCopy && fromCopy && toCopy)
  {
    v12 = +[_GDSServerConnection sharedInstance];
    v13 = [v12 fetchCarbonIntensityHistoryForBA:aCopy from:fromCopy to:v11];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412802;
      v18 = aCopy;
      v19 = 2112;
      v20 = fromCopy;
      v21 = 2112;
      v22 = v11;
      _os_log_error_impl(&dword_2507E1000, log, OS_LOG_TYPE_ERROR, "Parameters not specified BA:%@ startDate:%@ endDate:%@", &v17, 0x20u);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)fixMarginalEmissionForecast:(id)forecast
{
  forecastCopy = forecast;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2507E1000, log, OS_LOG_TYPE_DEFAULT, "Fixing the marginal emission forecast.", v7, 2u);
  }

  fakeDataDefaults = [(_GDSManager *)self fakeDataDefaults];
  [fakeDataDefaults setObject:forecastCopy forKey:@"fakeForecast"];
}

- (void)unFixMarginalEmissionForecast
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2507E1000, log, OS_LOG_TYPE_DEFAULT, "Unfixing the marginal emission forecast.", v5, 2u);
  }

  fakeDataDefaults = [(_GDSManager *)self fakeDataDefaults];
  [fakeDataDefaults removeObjectForKey:@"fakeForecast"];
}

- (void)setFakeSecret:(id)secret
{
  secretCopy = secret;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2507E1000, log, OS_LOG_TYPE_DEFAULT, "Setting the HMAC secret.", v7, 2u);
  }

  fakeDataDefaults = [(_GDSManager *)self fakeDataDefaults];
  [fakeDataDefaults setObject:secretCopy forKey:@"fakeSecret"];
}

- (void)unSetFakeSecret
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2507E1000, log, OS_LOG_TYPE_DEFAULT, "Unsetting the HMAC secret.", v5, 2u);
  }

  fakeDataDefaults = [(_GDSManager *)self fakeDataDefaults];
  [fakeDataDefaults removeObjectForKey:@"fakeSecret"];
}

- (void)setFakeSecretVersion:(id)version
{
  versionCopy = version;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2507E1000, log, OS_LOG_TYPE_DEFAULT, "Setting the HMAC secret version.", v7, 2u);
  }

  fakeDataDefaults = [(_GDSManager *)self fakeDataDefaults];
  [fakeDataDefaults setObject:versionCopy forKey:@"fakeSecretVersion"];
}

- (void)unSetFakeSecretVersion
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2507E1000, log, OS_LOG_TYPE_DEFAULT, "Unsetting the HMAC secret version", v5, 2u);
  }

  fakeDataDefaults = [(_GDSManager *)self fakeDataDefaults];
  [fakeDataDefaults removeObjectForKey:@"fakeSecretVersion"];
}

- (void)setFakeConfigURL:(id)l
{
  lCopy = l;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2507E1000, log, OS_LOG_TYPE_DEFAULT, "Setting the configURL.", v7, 2u);
  }

  fakeDataDefaults = [(_GDSManager *)self fakeDataDefaults];
  [fakeDataDefaults setObject:lCopy forKey:@"fakeConfigURL"];
}

- (void)unSetFakeConfigURL
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2507E1000, log, OS_LOG_TYPE_DEFAULT, "Unsetting the configURL.", v5, 2u);
  }

  fakeDataDefaults = [(_GDSManager *)self fakeDataDefaults];
  [fakeDataDefaults removeObjectForKey:@"fakeConfigURL"];
}

- (void)setFakeServerURL:(id)l
{
  lCopy = l;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2507E1000, log, OS_LOG_TYPE_DEFAULT, "Setting the serverURL.", v7, 2u);
  }

  fakeDataDefaults = [(_GDSManager *)self fakeDataDefaults];
  [fakeDataDefaults setObject:lCopy forKey:@"fakeServerURL"];
}

- (void)unSetFakeServerURL
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2507E1000, log, OS_LOG_TYPE_DEFAULT, "Unsetting the serverURL.", v5, 2u);
  }

  fakeDataDefaults = [(_GDSManager *)self fakeDataDefaults];
  [fakeDataDefaults removeObjectForKey:@"fakeServerURL"];
}

- (id)getFakeMarginalEmissionForecast
{
  v33 = *MEMORY[0x277D85DE8];
  fakeDataDefaults = [(_GDSManager *)self fakeDataDefaults];
  v4 = [fakeDataDefaults arrayForKey:@"fakeForecast"];

  if (v4)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = [MEMORY[0x277CBEAA8] now];
    v25 = currentCalendar;
    v23 = [currentCalendar components:192 fromDate:v7];
    v24 = v7;
    v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v7 sinceDate:{-fmod((objc_msgSend(v23, "second") + 60 * objc_msgSend(v23, "minute")), 900.0)}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = v4;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v28;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v16 = objc_alloc(MEMORY[0x277CBEAA8]);
          v17 = v12++;
          v18 = [v16 initWithTimeInterval:v8 sinceDate:v17 * 900.0];
          [v6 setObject:v15 forKeyedSubscript:v18];
        }

        v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    v19 = [[_GDSEmissionForecast alloc] initWithForecast:v6 generatedAt:v8 fetchedAt:v24 refetchInterval:14400.0];
    v4 = v26;
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2507E1000, log, OS_LOG_TYPE_DEFAULT, "Found no fakeForecast values.", buf, 2u);
    }

    v19 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = _GDSManager;
  [(_GDSManager *)&v3 dealloc];
}

- (void)latestBalancingAuthority
{
  v8 = *MEMORY[0x277D85DE8];
  userInfo = [self userInfo];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)latestBalancingAuthorityWithError:(os_log_t)log .cold.2(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(a2 + 40);
  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_2507E1000, log, OS_LOG_TYPE_ERROR, "Location availability status not found for clientID %@, bundlePath %@", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)latestMarginalEmissionForecast
{
  v8 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  name = [a2 name];
  v6 = 138412290;
  v7 = name;
  _os_log_error_impl(&dword_2507E1000, selfCopy, OS_LOG_TYPE_ERROR, "Parameter not specified BA:%@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end