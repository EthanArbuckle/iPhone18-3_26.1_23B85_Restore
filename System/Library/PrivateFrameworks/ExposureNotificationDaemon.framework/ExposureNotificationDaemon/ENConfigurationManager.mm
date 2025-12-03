@interface ENConfigurationManager
+ (BOOL)isRampModeEnabledFromServerResponse:(id)response;
+ (BOOL)serverResponse:(id)response isOnRampMode:(unint64_t)mode;
+ (BOOL)verifyAppleServerResponse:(id)response signatureHeader:(id)header;
+ (double)randomSelectPercentagePerDayFromServerResponse:(id)response;
+ (id)iCloudServerEndpoint;
+ (id)staticRegionForBundleID:(id)d;
+ (unint64_t)rampModeFromServerResponse:(id)response;
+ (void)_printServerConfiguration:(id)configuration;
- (BOOL)isInGracePeriodTransition;
- (BOOL)updateRampModeForRegion:(id)region rampMode:(unint64_t)mode;
- (ENConfigurationManager)initWithDelegate:(id)delegate activeEntity:(id)entity;
- (ENConfigurationManagerDelegate)delegate;
- (uint64_t)_scheduleRegionConfigurationRefresh;
- (unint64_t)readCachedRampModeForRegion:(id)region;
- (void)_activate;
- (void)_processServerConfiguration:(id)configuration forceUpdate:(BOOL)update;
- (void)_reportErrorMetricForHTTPStatus:(int64_t)status;
- (void)_saveAndRemoveStaleConfigurations:(id)configurations region:(id)region error:(id)error;
- (void)_scheduleRegionConfigurationRefresh;
- (void)_serverFetchRegionConfiguration:(id)configuration userInitiated:(BOOL)initiated completion:(id)completion;
- (void)activate;
- (void)dealloc;
- (void)fetchServerConfigurationsForRegion:(id)region userInitiated:(BOOL)initiated withCompletion:(id)completion;
- (void)overrideRampModeForRegion:(id)region rampMode:(unint64_t)mode;
- (void)prefsChanged;
- (void)refreshServerConfigurationsUponProfileChange;
- (void)regionMonitor:(id)monitor authorizationStateDidChange:(unint64_t)change;
- (void)regionMonitor:(id)monitor regionDidChange:(id)change;
- (void)resetConfigurationCache;
- (void)resetConfigurationManager;
- (void)serverFetchRegionConfiguration:(id)configuration userInitiated:(BOOL)initiated completion:(id)completion;
- (void)setActiveEntity:(id)entity;
- (void)setRegionMonitor:(id)monitor;
- (void)setupGracePeriodFetchTimerWithDelay:(double)delay;
- (void)stopGracePeriodTimer;
- (void)updateRegionMonitorModeForCurrentRegion;
@end

@implementation ENConfigurationManager

- (ENConfigurationManager)initWithDelegate:(id)delegate activeEntity:(id)entity
{
  delegateCopy = delegate;
  entityCopy = entity;
  v14.receiver = self;
  v14.super_class = ENConfigurationManager;
  v8 = [(ENConfigurationManager *)&v14 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.exposureNotification.configManager.serialQueue", v9);
    [(ENConfigurationManager *)v8 setSerialQueue:v10];

    v11 = objc_alloc_init(ENCloudServerChannel);
    [(ENConfigurationManager *)v8 setCloudServerChannel:v11];

    v12 = objc_alloc_init(ENConfigurationStore);
    [(ENConfigurationManager *)v8 setConfigurationStore:v12];

    [(ENConfigurationManager *)v8 setDelegate:delegateCopy];
    [(ENConfigurationManager *)v8 setActiveEntity:entityCopy];
  }

  return v8;
}

- (void)activate
{
  serialQueue = [(ENConfigurationManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ENConfigurationManager_activate__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (void)_activate
{
  if (_MergedGlobals_0 <= 50 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    [ENConfigurationManager _activate];
  }

  CFPrefs_RemoveValue();
  CFPrefs_RemoveValue();
  CFPrefs_RemoveValue();
  CFPrefs_RemoveValue();

  [(ENConfigurationManager *)self _scheduleRegionConfigurationRefresh];
}

- (void)dealloc
{
  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    [ENConfigurationManager dealloc];
  }

  [(ENRegionMonitor *)self->_regionMonitor setDelegate:0];
  regionMonitor = self->_regionMonitor;
  self->_regionMonitor = 0;

  serverConfigurationFetchTimer = [(ENConfigurationManager *)self serverConfigurationFetchTimer];
  [serverConfigurationFetchTimer invalidate];

  [(ENConfigurationManager *)self setServerConfigurationFetchTimer:0];
  v5.receiver = self;
  v5.super_class = ENConfigurationManager;
  [(ENConfigurationManager *)&v5 dealloc];
}

- (void)_reportErrorMetricForHTTPStatus:(int64_t)status
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (status <= 0x3E7)
  {
    v6 = (status + 10000);
  }

  else
  {
    v6 = 10000;
  }

  [WeakRetained configurationManager:self errorDetected:v6];
}

- (void)serverFetchRegionConfiguration:(id)configuration userInitiated:(BOOL)initiated completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  serialQueue = [(ENConfigurationManager *)self serialQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__ENConfigurationManager_serverFetchRegionConfiguration_userInitiated_completion___block_invoke;
  v13[3] = &unk_278FD24C8;
  v13[4] = self;
  v14 = configurationCopy;
  initiatedCopy = initiated;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = configurationCopy;
  dispatch_async(serialQueue, v13);
}

- (void)_serverFetchRegionConfiguration:(id)configuration userInitiated:(BOOL)initiated completion:(id)completion
{
  initiatedCopy = initiated;
  configurationCopy = configuration;
  completionCopy = completion;
  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    v10 = "no";
    if (initiatedCopy)
    {
      v10 = "yes";
    }

    v45 = configurationCopy;
    v47 = v10;
    LogPrintF_safe();
  }

  countryCode = [configurationCopy countryCode];

  if (!countryCode)
  {
    [ENConfigurationManager _serverFetchRegionConfiguration:completionCopy userInitiated:? completion:?];
    goto LABEL_40;
  }

  countryCode2 = [configurationCopy countryCode];
  uppercaseString = [countryCode2 uppercaseString];

  if (!CFPrefs_GetInt64())
  {
    if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
    {
      [ENConfigurationManager _serverFetchRegionConfiguration:userInitiated:completion:];
    }

    v16 = +[ENConfigurationManager iCloudServerEndpoint];
    v53 = [v16 URLByAppendingPathComponent:@"/v2/app/config"];

    dictionary = [MEMORY[0x277CBEB30] dictionary];
    date = [MEMORY[0x277CBEAA0] date];
    [date timeIntervalSince1970];
    v20 = (v19 * 1000.0);

    v52 = [MEMORY[0x277CCACA0] stringWithFormat:@"%lld", v20];
    [dictionary setObject:? forKey:?];
    v13UppercaseString = [uppercaseString uppercaseString];
    [dictionary setObject:v13UppercaseString forKey:@"x-apple-ct-region-identifier"];

    configurationStore = [(ENConfigurationManager *)self configurationStore];
    v23 = [configurationStore regionHashForRegion:configurationCopy];

    if (v23)
    {
      [dictionary setObject:v23 forKey:@"x-apple-ct-region-hash"];
    }

    string = [MEMORY[0x277CCAB60] string];
    v25 = GestaltCopyAnswer();
    v26 = v25;
    if (v25)
    {
      [string appendFormat:@"%@/", v25];
    }

    v27 = GestaltCopyAnswer();
    if (v27)
    {
      [string appendString:v27];
    }

    if ([string length])
    {
      [dictionary setObject:string forKey:@"x-apple-en-os-version"];
    }

    v50 = v27;
    v51 = v26;
    if (CFPrefs_GetInt64())
    {
      [dictionary setObject:@"true" forKey:@"x-apple-test-application"];
    }

    regionRampModeOverride = [(ENConfigurationManager *)self regionRampModeOverride];
    v29 = [regionRampModeOverride objectForKeyedSubscript:configurationCopy];

    if (v29)
    {
      regionRampModeOverride2 = [(ENConfigurationManager *)self regionRampModeOverride];
      v31 = [regionRampModeOverride2 objectForKeyedSubscript:configurationCopy];
      unsignedIntegerValue = [v31 unsignedIntegerValue];

      regionRampModeOverride3 = [(ENConfigurationManager *)self regionRampModeOverride];
      [regionRampModeOverride3 setObject:0 forKeyedSubscript:configurationCopy];

      if (!unsignedIntegerValue)
      {
LABEL_35:
        v35 = [ENCloudNetworkRequest requestWithURL:v53 httpMethod:0 headers:dictionary parameters:MEMORY[0x277CBEC08] andBody:0, v46];
        delegate = [(ENConfigurationManager *)self delegate];
        if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
        {
          [ENConfigurationManager _serverFetchRegionConfiguration:userInitiated:completion:];
        }

        cloudServerChannel = [(ENConfigurationManager *)self cloudServerChannel];
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke_3;
        v54[3] = &unk_278FD28B0;
        v54[4] = v35;
        v54[5] = delegate;
        v56 = completionCopy;
        v54[6] = self;
        v55 = configurationCopy;
        [cloudServerChannel enqueueRequest:v35 withCompletion:v54];

        v15 = v53;
        goto LABEL_39;
      }

LABEL_34:
      v34 = [MEMORY[0x277CCACA0] stringWithFormat:@"%lu", unsignedIntegerValue, v48];
      [dictionary setObject:v34 forKey:@"x-apple-ramp-mode"];

      goto LABEL_35;
    }

    if (CFPrefs_GetInt64())
    {
      if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
      {
        [ENConfigurationManager _serverFetchRegionConfiguration:userInitiated:completion:];
      }

      unsignedIntegerValue = 1;
      goto LABEL_34;
    }

    if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
    {
      [ENConfigurationManager _serverFetchRegionConfiguration:userInitiated:completion:];
    }

    activeEntity = [(ENConfigurationManager *)self activeEntity];
    entity = [activeEntity entity];
    region = [entity region];

    if (!region)
    {
      goto LABEL_64;
    }

    activeEntity2 = [(ENConfigurationManager *)self activeEntity];
    entity2 = [activeEntity2 entity];
    region2 = [entity2 region];
    v43 = [(ENConfigurationManager *)self readCachedRampModeForRegion:region2];

    if (v43 > 1)
    {
      if (v43 == 2)
      {
        if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
        {
          [ENConfigurationManager _serverFetchRegionConfiguration:? userInitiated:? completion:?];
        }

LABEL_84:
        unsignedIntegerValue = 2;
        goto LABEL_34;
      }

      if (v43 == 3)
      {
        if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
        {
          [ENConfigurationManager _serverFetchRegionConfiguration:? userInitiated:? completion:?];
        }

        unsignedIntegerValue = 3;
        goto LABEL_34;
      }

      goto LABEL_64;
    }

    if (v43)
    {
      if (v43 != 1)
      {
        goto LABEL_64;
      }

      if (_MergedGlobals_0 > 30)
      {
        goto LABEL_67;
      }

      if (_MergedGlobals_0 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (_MergedGlobals_0 > 30)
      {
        goto LABEL_67;
      }

      if (_MergedGlobals_0 == -1 && !_LogCategory_Initialize())
      {
LABEL_64:
        if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
        {
          [ENConfigurationManager _serverFetchRegionConfiguration:userInitiated:completion:];
        }

LABEL_67:
        v44 = [(ENConfigurationManager *)self readCachedRampModeForRegion:configurationCopy];
        if (!v44)
        {
          goto LABEL_80;
        }

        unsignedIntegerValue = v44;
        if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
        {
          v46 = configurationCopy;
          v48 = unsignedIntegerValue;
          LogPrintF_safe();
        }

        if (unsignedIntegerValue != 1)
        {
          if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
          {
            v48 = unsignedIntegerValue;
            LogPrintF_safe();
          }

          goto LABEL_34;
        }

        if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
        {
          [ENConfigurationManager _serverFetchRegionConfiguration:userInitiated:completion:];
          if (!initiatedCopy)
          {
            goto LABEL_35;
          }
        }

        else
        {
LABEL_80:
          if (!initiatedCopy)
          {
            goto LABEL_35;
          }
        }

        if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
        {
          [ENConfigurationManager _serverFetchRegionConfiguration:userInitiated:completion:];
        }

        goto LABEL_84;
      }
    }

    [ENConfigurationManager _serverFetchRegionConfiguration:? userInitiated:? completion:?];
    goto LABEL_64;
  }

  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    [ENConfigurationManager _serverFetchRegionConfiguration:userInitiated:completion:];
  }

  configurationStore2 = [(ENConfigurationManager *)self configurationStore];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke;
  v57[3] = &unk_278FD27B8;
  v57[4] = self;
  v58 = completionCopy;
  [configurationStore2 allCachedServerResponseConfigurationsWithCompletion:v57];

  v15 = v58;
LABEL_39:

LABEL_40:
}

void __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke_2;
  v6[3] = &unk_278FD1490;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke_2(uint64_t a1)
{
  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke_2_cold_1(a1);
  }

  if (![*(a1 + 32) count])
  {
    NSErrorF();
    objc_claimAutoreleasedReturnValue();
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32));
  }

  return MEMORY[0x2821F9730]();
}

void __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    if (a2 == 200 && v10)
    {
      if ([v10 length])
      {
        v14 = [v9 objectForKeyedSubscript:@"Content-Type"];
        v15 = [v14 containsString:@"application/json"];

        if (v15)
        {
          if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
          {
            __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke_3_cold_1(v10);
          }

          v16 = [v9 objectForKeyedSubscript:@"x-apple-ct-region-identifier"];
          v17 = [v9 objectForKeyedSubscript:@"x-apple-pt-server-sign1"];
          v18 = v10;
          if ([ENConfigurationManager verifyAppleServerResponse:v18 signatureHeader:v17])
          {
            v19 = [*(a1 + 56) countryCode];
            v20 = [v16 isEqualToString:v19];

            if (v20)
            {
              v21 = [v9 objectForKeyedSubscript:@"x-apple-ct-region-hash"];
              v22 = [*(a1 + 48) configurationStore];
              v23 = *(a1 + 56);
              v54 = 0;
              v52 = v21;
              LOBYTE(v21) = [v22 saveRegionHash:v21 region:v23 error:&v54];
              v51 = v54;

              if ((v21 & 1) == 0 && dword_2813465E8 <= 30 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
              {
                __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke_3_cold_3((a1 + 56));
              }

              v24 = [MEMORY[0x277CCAA98] JSONObjectWithData:v18 options:0 error:0];
              v25 = +[ENLoggingPrefs sharedENLoggingPrefs];
              v26 = [v25 isSensitiveLoggingAllowed];

              if (v26 && _MergedGlobals_0 <= 10 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
              {
                __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke_3_cold_4();
              }

              v27 = [v24 objectForKeyedSubscript:@"subdivisions"];
              objc_opt_class();
              v53 = v27;
              if (objc_opt_isKindOfClass())
              {
                v28 = [*(a1 + 48) configurationStore];
                [v28 saveCountrySubdivisionList:v53 region:*(a1 + 56) error:0];
              }

              v29 = [v24 objectForKeyedSubscript:@"appConfigs"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v29 count])
              {
                v30 = *(a1 + 64);
                if (v30)
                {
                  (*(v30 + 16))(v30, v29, 0);
                }
              }

              else
              {
                v50 = v24;
                v47 = *(a1 + 64);
                if (v47)
                {
                  v48 = NSErrorF();
                  (*(v47 + 16))(v47, 0, v48);
                }

                [*(a1 + 40) configurationManager:*(a1 + 48) errorDetected:6002];
                v24 = v50;
              }

              goto LABEL_57;
            }

            if (dword_2813465E8 <= 30 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
            {
              __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke_3_cold_2((a1 + 56));
            }

            v45 = *(a1 + 64);
            if (v45)
            {
              v49 = v16;
              v46 = NSErrorF();
              (*(v45 + 16))(v45, 0, v46);
            }

            v42 = *(a1 + 40);
            v43 = *(a1 + 48);
            v44 = 6004;
          }

          else
          {
            v40 = *(a1 + 64);
            if (v40)
            {
              v41 = NSErrorF();
              (*(v40 + 16))(v40, 0, v41);
            }

            v42 = *(a1 + 40);
            v43 = *(a1 + 48);
            v44 = 6001;
          }

          [v42 configurationManager:v43 errorDetected:{v44, v49}];
LABEL_57:

          goto LABEL_58;
        }
      }
    }

    else
    {
      switch(a2)
      {
        case 503:
          v16 = [v9 objectForKeyedSubscript:@"Retry-After"];
          v38 = *(a1 + 64);
          if (v38)
          {
            v49 = v16;
            v39 = NSErrorF();
            (*(v38 + 16))(v38, 0, v39);
          }

          [*(a1 + 48) _reportErrorMetricForHTTPStatus:{503, v49}];
          goto LABEL_58;
        case 404:
          v37 = *(a1 + 64);
          if (!v37)
          {
            goto LABEL_59;
          }

          v16 = NSErrorF();
          (*(v37 + 16))(v37, 0, v16);
LABEL_58:

          goto LABEL_59;
        case 304:
          v31 = *(a1 + 64);
          if (v31)
          {
            v32 = NSErrorF();
            (*(v31 + 16))(v31, 0, v32);
          }

          v33 = *(a1 + 48);
          v34 = 304;
          goto LABEL_37;
      }
    }

    v35 = *(a1 + 64);
    if (v35)
    {
      v36 = NSErrorF();
      (*(v35 + 16))(v35, 0, v36);
    }

    v33 = *(a1 + 48);
    v34 = a2;
LABEL_37:
    [v33 _reportErrorMetricForHTTPStatus:v34];
    goto LABEL_59;
  }

  v12 = *(a1 + 64);
  if (v12)
  {
    v49 = *(a1 + 32);
    v13 = NSErrorNestedF();
    (*(v12 + 16))(v12, 0, v13);
  }

  [*(a1 + 40) configurationManager:*(a1 + 48) errorDetected:{6000, v49}];
LABEL_59:
}

- (BOOL)updateRampModeForRegion:(id)region rampMode:(unint64_t)mode
{
  regionCopy = region;
  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  if (!regionCopy)
  {
    [ENConfigurationManager updateRampModeForRegion:? rampMode:?];
    v10 = v14;
    goto LABEL_23;
  }

  configurationStore = [(ENConfigurationManager *)self configurationStore];
  v8 = [configurationStore configurationForRegion:regionCopy];

  if (v8)
  {
    if (mode <= 3)
    {
      [v8 setEnRampMode:mode];
      configurationStore2 = [(ENConfigurationManager *)self configurationStore];
      v13 = 0;
      v10 = [configurationStore2 saveRegionConfiguration:v8 error:&v13];
      v11 = v13;

      if ((v10 & 1) == 0 && _MergedGlobals_0 <= 90 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
      {
        [ENConfigurationManager updateRampModeForRegion:rampMode:];
      }

      goto LABEL_22;
    }

    if (_MergedGlobals_0 <= 90 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  else if (_MergedGlobals_0 <= 40 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    [ENConfigurationManager updateRampModeForRegion:rampMode:];
  }

  v10 = 0;
LABEL_22:

LABEL_23:
  return v10;
}

- (unint64_t)readCachedRampModeForRegion:(id)region
{
  regionCopy = region;
  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    [ENConfigurationManager readCachedRampModeForRegion:];
    if (regionCopy)
    {
      goto LABEL_5;
    }

LABEL_14:
    [ENConfigurationManager readCachedRampModeForRegion:?];
    enRampMode = v9;
    goto LABEL_12;
  }

  if (!regionCopy)
  {
    goto LABEL_14;
  }

LABEL_5:
  configurationStore = [(ENConfigurationManager *)self configurationStore];
  v6 = [configurationStore configurationForRegion:regionCopy];

  if (v6)
  {
    enRampMode = [v6 enRampMode];
  }

  else
  {
    if (_MergedGlobals_0 <= 90 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
    {
      [ENConfigurationManager readCachedRampModeForRegion:];
    }

    enRampMode = 0;
  }

LABEL_12:
  return enRampMode;
}

+ (id)iCloudServerEndpoint
{
  v2 = [MEMORY[0x277CBEBC8] URLWithString:@"https://gateway.icloud.com/enservice"];
  if (CFPrefs_GetInt64() && IsAppleInternalBuild())
  {
    if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
    {
      +[ENConfigurationManager iCloudServerEndpoint];
    }

    v3 = [MEMORY[0x277CBEBC8] URLWithString:@"https://gateway-ic3.icloud.com/enservice"];

    v2 = v3;
  }

  return v2;
}

- (void)_scheduleRegionConfigurationRefresh
{
  countryCode = [self countryCode];
  LogPrintF_safe();
}

void __61__ENConfigurationManager__scheduleRegionConfigurationRefresh__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    __61__ENConfigurationManager__scheduleRegionConfigurationRefresh__block_invoke_2_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__ENConfigurationManager__scheduleRegionConfigurationRefresh__block_invoke_3;
  v6[3] = &unk_278FD1030;
  objc_copyWeak(&v7, (a1 + 40));
  v6[4] = *(a1 + 32);
  dispatch_async(v5, v6);

  objc_destroyWeak(&v7);
}

void __61__ENConfigurationManager__scheduleRegionConfigurationRefresh__block_invoke_3(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  val = objc_loadWeakRetained((a1 + 40));
  v1 = [val activeEntity];
  v2 = [v1 entity];
  v3 = [v2 region];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v20 = 0;
  }

  else
  {
    v6 = [val regionMonitor];
    v30 = 0;
    v7 = [v6 getCurrentRegionVisitWithError:&v30];
    v20 = v30;
    v5 = [v7 region];
  }

  if (v5)
  {
    objc_initWeak(&location, val);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __61__ENConfigurationManager__scheduleRegionConfigurationRefresh__block_invoke_4;
    v27[3] = &unk_278FD28D8;
    objc_copyWeak(&v28, &location);
    v27[4] = v5;
    [val fetchServerConfigurationsForRegion:v5 userInitiated:0 withCompletion:v27];
    v8 = [*(a1 + 32) configurationStore];
    v9 = [v8 allCachedCountries];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v11)
    {
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [v5 countryCode];
          v16 = [v14 isEqualToString:v15];

          if ((v16 & 1) == 0)
          {
            v17 = [objc_alloc(MEMORY[0x277CC5CA0]) initWithCountryCode:v14];
            if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
            {
              v19 = v17;
              LogPrintF_safe();
            }

            [*(a1 + 32) fetchServerConfigurationsForRegion:v17 userInitiated:0 withCompletion:{&__block_literal_global_194, v19}];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v11);
    }

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  else
  {
    __61__ENConfigurationManager__scheduleRegionConfigurationRefresh__block_invoke_3_cold_1();
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __61__ENConfigurationManager__scheduleRegionConfigurationRefresh__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v9)
  {
    if (dword_2813465E8 <= 90 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
    {
      __61__ENConfigurationManager__scheduleRegionConfigurationRefresh__block_invoke_4_cold_1();
    }
  }

  else
  {
    v5 = [WeakRetained configurationStore];
    v7 = *(a1 + 32);
    v6 = (a1 + 32);
    v8 = [v5 serverConfigurationForRegion:v7];

    if (v8)
    {
      if (dword_2813465E8 <= 30 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
      {
        __61__ENConfigurationManager__scheduleRegionConfigurationRefresh__block_invoke_4_cold_2(v6);
      }

      [WeakRetained _processServerConfiguration:v8 forceUpdate:1];
    }

    else if (dword_2813465E8 <= 30 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
    {
      __61__ENConfigurationManager__scheduleRegionConfigurationRefresh__block_invoke_4_cold_3(v6);
    }
  }
}

- (void)resetConfigurationCache
{
  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    [ENConfigurationManager resetConfigurationCache];
  }

  configurationStore = [(ENConfigurationManager *)self configurationStore];
  [configurationStore resetStore];

  [(ENConfigurationManager *)self resetConfigurationManager];
}

- (void)resetConfigurationManager
{
  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    [ENConfigurationManager resetConfigurationManager];
  }

  serialQueue = [(ENConfigurationManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ENConfigurationManager_resetConfigurationManager__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

uint64_t __51__ENConfigurationManager_resetConfigurationManager__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serverConfigurationFetchTimer];
  [v2 invalidate];

  [*(a1 + 32) setServerConfigurationFetchTimer:0];
  v3 = *(a1 + 32);

  return [v3 stopGracePeriodTimer];
}

+ (void)_printServerConfiguration:(id)configuration
{
  v17 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    +[ENConfigurationManager _printServerConfiguration:];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allKeys = [configurationCopy allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        if (_MergedGlobals_0 <= 30)
        {
          v9 = *(*(&v12 + 1) + 8 * v8);
          if (_MergedGlobals_0 != -1 || _LogCategory_Initialize())
          {
            [(ENConfigurationManager *)configurationCopy _printServerConfiguration:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v10 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
      v6 = v10;
    }

    while (v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isInGracePeriodTransition
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = [(ENConfigurationManager *)self serialQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__ENConfigurationManager_isInGracePeriodTransition__block_invoke;
  v5[3] = &unk_278FD2370;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __51__ENConfigurationManager_isInGracePeriodTransition__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) gracePeriodConfigurationFetchTimer];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

- (void)setupGracePeriodFetchTimerWithDelay:(double)delay
{
  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    [ENConfigurationManager setupGracePeriodFetchTimerWithDelay:];
  }

  gracePeriodConfigurationFetchTimer = [(ENConfigurationManager *)self gracePeriodConfigurationFetchTimer];

  if (gracePeriodConfigurationFetchTimer)
  {
    gracePeriodConfigurationFetchTimer2 = [(ENConfigurationManager *)self gracePeriodConfigurationFetchTimer];
    [gracePeriodConfigurationFetchTimer2 invalidate];

    [(ENConfigurationManager *)self setGracePeriodConfigurationFetchTimer:0];
  }

  serialQueue = [(ENConfigurationManager *)self serialQueue];
  regionMonitor = [(ENConfigurationManager *)self regionMonitor];
  objc_initWeak(&location, self);
  v9 = [ENXPCTimer alloc];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __62__ENConfigurationManager_setupGracePeriodFetchTimerWithDelay___block_invoke;
  v16 = &unk_278FD2950;
  v10 = serialQueue;
  v17 = v10;
  objc_copyWeak(&v19, &location);
  v11 = regionMonitor;
  v18 = v11;
  v12 = [(ENXPCTimer *)v9 initWithName:@"com.apple.bluetooth.exposureNotification.gracePeriodConfigurationFetchTimer" delay:1 gracePeriod:193 priority:&v13 options:delay block:30.0];
  [(ENConfigurationManager *)self setGracePeriodConfigurationFetchTimer:v12, v13, v14, v15, v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __62__ENConfigurationManager_setupGracePeriodFetchTimerWithDelay___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    __62__ENConfigurationManager_setupGracePeriodFetchTimerWithDelay___block_invoke_cold_1();
  }

  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ENConfigurationManager_setupGracePeriodFetchTimerWithDelay___block_invoke_2;
  block[3] = &unk_278FD2928;
  v7 = v3;
  v5 = v3;
  objc_copyWeak(&v9, (a1 + 48));
  v8 = *(a1 + 40);
  dispatch_async(v4, block);

  objc_destroyWeak(&v9);
}

void __62__ENConfigurationManager_setupGracePeriodFetchTimerWithDelay___block_invoke_2(id *a1)
{
  [a1[4] invalidate];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained stopGracePeriodTimer];
  CFDataGetTypeID();
  v3 = CFPrefs_CopyTypedValue();
  if ([v3 length])
  {
    v18 = 0;
    v4 = [MEMORY[0x277CCAAC0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v18];
    v5 = v18;
    if (dword_2813465E8 <= 90 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
    {
      __62__ENConfigurationManager_setupGracePeriodFetchTimerWithDelay___block_invoke_2_cold_1();
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = [v4 entity];
  v7 = [v6 region];

  v8 = [a1[5] getCurrentRegionVisitWithError:0];
  v9 = [v8 region];

  v10 = v7;
  v11 = v9;
  v12 = v11;
  if (v10 == v11)
  {
  }

  else
  {
    if ((v10 != 0) == (v11 == 0))
    {

LABEL_17:
      v14 = [WeakRetained configurationStore];
      v15 = [v14 serverConfigurationForRegion:v12];

      if (v15)
      {
        v16 = +[ENLoggingPrefs sharedENLoggingPrefs];
        v17 = [v16 isSensitiveLoggingAllowed];

        if (v17 && _MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
        {
          __62__ENConfigurationManager_setupGracePeriodFetchTimerWithDelay___block_invoke_2_cold_2();
        }

        [WeakRetained _processServerConfiguration:v15 forceUpdate:1];
      }

      else if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
      {
        __62__ENConfigurationManager_setupGracePeriodFetchTimerWithDelay___block_invoke_2_cold_3();
      }

      goto LABEL_27;
    }

    v13 = [v10 isEqual:v11];

    if ((v13 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    __62__ENConfigurationManager_setupGracePeriodFetchTimerWithDelay___block_invoke_2_cold_4();
  }

LABEL_27:
}

- (void)stopGracePeriodTimer
{
  gracePeriodConfigurationFetchTimer = [(ENConfigurationManager *)self gracePeriodConfigurationFetchTimer];

  if (gracePeriodConfigurationFetchTimer)
  {
    if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
    {
      [ENConfigurationManager stopGracePeriodTimer];
    }

    gracePeriodConfigurationFetchTimer2 = [(ENConfigurationManager *)self gracePeriodConfigurationFetchTimer];
    [gracePeriodConfigurationFetchTimer2 invalidate];

    [(ENConfigurationManager *)self setGracePeriodConfigurationFetchTimer:0];
  }

  CFPrefs_RemoveValue();
}

- (void)_processServerConfiguration:(id)configuration forceUpdate:(BOOL)update
{
  updateCopy = update;
  configurationCopy = configuration;
  activeEntity = [(ENConfigurationManager *)self activeEntity];
  entity = [activeEntity entity];
  region = [entity region];

  if (region)
  {
    configurationStore = [(ENConfigurationManager *)self configurationStore];
    v10 = [configurationStore serverConfigurationForRegion:region];
  }

  else
  {
    v10 = 0;
  }

  [(ENConfigurationManager *)self updateRegionMonitorModeForCurrentRegion];
  v11 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v11 isSensitiveLoggingAllowed];

  if ((isSensitiveLoggingAllowed & 1) != 0 && _MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    [ENConfigurationManager _processServerConfiguration:configurationCopy forceUpdate:?];
  }

  if ([v10 enEnabled])
  {
    if (updateCopy)
    {
LABEL_20:
      configurationStore2 = [(ENConfigurationManager *)self configurationStore];
      region2 = [configurationCopy region];
      v21 = [configurationStore2 configurationForRegion:region2];

      delegate = [(ENConfigurationManager *)self delegate];
      [delegate configurationManager:self exposureNotificationRegionConfigurationChanged:v21];

      goto LABEL_28;
    }
  }

  else if (([configurationCopy enEnabled] & 1) != 0 || updateCopy)
  {
    goto LABEL_20;
  }

  gracePeriodConfigurationFetchTimer = [(ENConfigurationManager *)self gracePeriodConfigurationFetchTimer];

  v14 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed2 = [v14 isSensitiveLoggingAllowed];

  if (gracePeriodConfigurationFetchTimer)
  {
    [ENConfigurationManager _processServerConfiguration:isSensitiveLoggingAllowed2 forceUpdate:self];
  }

  else
  {
    v16 = configurationCopy;
    if (isSensitiveLoggingAllowed2)
    {
      if (_MergedGlobals_0 <= 30)
      {
        if (_MergedGlobals_0 != -1 || (v17 = _LogCategory_Initialize(), v16 = configurationCopy, v17))
        {
          [ENConfigurationManager _processServerConfiguration:v16 forceUpdate:?];
          v16 = configurationCopy;
        }
      }
    }

    if ([v16 enEnabled])
    {
      [configurationCopy regionTransitionGracePeriod];
    }

    else
    {
      [configurationCopy regionDisabledTransitionGracePeriod];
    }

    v23 = v18;
    if (IsAppleInternalBuild())
    {
      CFPrefs_GetDouble();
      if (v24 > 0.0)
      {
        CFPrefs_GetDouble();
        v23 = v25;
        if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
        {
          [ENConfigurationManager _processServerConfiguration:forceUpdate:];
        }
      }
    }

    date = [MEMORY[0x277CBEAA0] date];
    v27 = [date dateByAddingTimeInterval:v23];
    [v27 timeIntervalSince1970];
    CFPrefs_SetDouble();

    [(ENConfigurationManager *)self setupGracePeriodFetchTimerWithDelay:v23];
  }

LABEL_28:
}

- (void)refreshServerConfigurationsUponProfileChange
{
  serialQueue = [(ENConfigurationManager *)self serialQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__ENConfigurationManager_refreshServerConfigurationsUponProfileChange__block_invoke;
  v5[3] = &unk_278FD11C8;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(serialQueue, v5);
}

void __70__ENConfigurationManager_refreshServerConfigurationsUponProfileChange__block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) activeEntity];
  v2 = [v1 entity];
  v3 = [v2 region];

  if (v3)
  {
    if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
    {
      __70__ENConfigurationManager_refreshServerConfigurationsUponProfileChange__block_invoke_cold_1();
    }

    [*(a1 + 32) fetchServerConfigurationsForRegion:v3 userInitiated:0 withCompletion:&__block_literal_global_224];
  }

  v4 = [*(a1 + 32) regionMonitor];
  v33 = 0;
  v5 = [v4 getCurrentRegionVisitWithError:&v33];
  v24 = v33;
  v6 = [v5 region];

  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    __70__ENConfigurationManager_refreshServerConfigurationsUponProfileChange__block_invoke_cold_2(a1);
  }

  if (v6 && ([v6 isEqual:v3] & 1) == 0)
  {
    if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
    {
      __70__ENConfigurationManager_refreshServerConfigurationsUponProfileChange__block_invoke_cold_3();
    }

    v7 = [v6 countryCode];
    v8 = [v3 countryCode];
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      [*(a1 + 32) updateRegionMonitorModeForCurrentRegion];
      v10 = [*(a1 + 32) configurationStore];
      v11 = [v10 serverConfigurationForRegion:v6];

      if (v11)
      {
        [*(a1 + 32) _processServerConfiguration:v11 forceUpdate:1];
      }
    }

    else
    {
      objc_initWeak(&location, *(a1 + 32));
      v12 = *(a1 + 32);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __70__ENConfigurationManager_refreshServerConfigurationsUponProfileChange__block_invoke_3;
      v30[3] = &unk_278FD28D8;
      objc_copyWeak(&v31, &location);
      v30[4] = v6;
      [v12 fetchServerConfigurationsForRegion:v6 userInitiated:0 withCompletion:v30];
      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
    }
  }

  v13 = [*(a1 + 32) configurationStore];
  v14 = [v13 allCachedCountries];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v16)
  {
    v17 = *v27;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        v20 = [v3 countryCode];
        if (([v19 isEqualToString:v20] & 1) == 0)
        {
          v21 = [v6 countryCode];
          v22 = [v19 isEqualToString:v21];

          if (v22)
          {
            continue;
          }

          v20 = [objc_alloc(MEMORY[0x277CC5CA0]) initWithCountryCode:v19];
          if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
          {
            __70__ENConfigurationManager_refreshServerConfigurationsUponProfileChange__block_invoke_cold_4();
          }

          [*(a1 + 32) fetchServerConfigurationsForRegion:v20 userInitiated:0 withCompletion:&__block_literal_global_230];
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v16);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __70__ENConfigurationManager_refreshServerConfigurationsUponProfileChange__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateRegionMonitorModeForCurrentRegion];
  if (v8)
  {
    if (dword_2813465E8 <= 90 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
    {
      v7 = *(a1 + 32);
      LogPrintF_safe();
    }
  }

  else
  {
    v5 = [WeakRetained configurationStore];
    v6 = [v5 serverConfigurationForRegion:*(a1 + 32)];

    if (v6)
    {
      [WeakRetained _processServerConfiguration:v6 forceUpdate:1];
    }
  }
}

- (void)fetchServerConfigurationsForRegion:(id)region userInitiated:(BOOL)initiated withCompletion:(id)completion
{
  regionCopy = region;
  completionCopy = completion;
  serialQueue = [(ENConfigurationManager *)self serialQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__ENConfigurationManager_fetchServerConfigurationsForRegion_userInitiated_withCompletion___block_invoke;
  v13[3] = &unk_278FD24C8;
  v13[4] = self;
  v14 = regionCopy;
  initiatedCopy = initiated;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = regionCopy;
  dispatch_async(serialQueue, v13);
}

void __87__ENConfigurationManager__fetchServerConfigurationsForRegion_userInitiated_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__ENConfigurationManager__fetchServerConfigurationsForRegion_userInitiated_completion___block_invoke_2;
  block[3] = &unk_278FD2978;
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v15 = *(a1 + 48);
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __87__ENConfigurationManager__fetchServerConfigurationsForRegion_userInitiated_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _saveAndRemoveStaleConfigurations:*(a1 + 40) region:*(a1 + 48) error:*(a1 + 56)];
  result = *(a1 + 64);
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 56);
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)_saveAndRemoveStaleConfigurations:(id)configurations region:(id)region error:(id)error
{
  v65 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  regionCopy = region;
  errorCopy = error;
  val = self;
  delegate = [(ENConfigurationManager *)self delegate];
  if (errorCopy)
  {
    if (dword_2813465E8 <= 90 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
    {
      [ENConfigurationManager _saveAndRemoveStaleConfigurations:regionCopy region:? error:?];
    }

    configurationStore = [(ENConfigurationManager *)self configurationStore];
    v9 = [configurationStore configurationForRegion:regionCopy];
    if (v9)
    {
      v10 = errorCopy;
      domain = [v10 domain];
      if ([domain isEqualToString:@"ENConfigurationManagerErrorDomain"])
      {
        code = [v10 code];

        if (code == 5)
        {
          configurationStore2 = [(ENConfigurationManager *)val configurationStore];
          v63 = 0;
          v14 = [configurationStore2 removeConfigurationsForRegion:regionCopy includingSubdivisions:1 error:&v63];
          v15 = v63;

          if (v14)
          {
            [delegate configurationManager:val exposureNotificationRegionConfigurationRemovedForRegion:regionCopy];
          }

          else if (dword_2813465E8 <= 90 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }
        }

        goto LABEL_118;
      }
    }

    goto LABEL_118;
  }

  if (dword_2813465E8 <= 30 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
  {
    [ENConfigurationManager _saveAndRemoveStaleConfigurations:configurationsCopy region:regionCopy error:?];
  }

  context = objc_autoreleasePoolPush();
  objc_initWeak(&location, self);
  configurationStore3 = [(ENConfigurationManager *)self configurationStore];
  countryCode = [regionCopy countryCode];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __73__ENConfigurationManager__saveAndRemoveStaleConfigurations_region_error___block_invoke;
  v57[3] = &unk_278FD29C8;
  objc_copyWeak(&v61, &location);
  v18 = configurationsCopy;
  v58 = v18;
  v19 = regionCopy;
  v59 = v19;
  v60 = delegate;
  [configurationStore3 enumerateCachedRegionServerConfigurationsWithCountryCode:countryCode handler:v57];

  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __73__ENConfigurationManager__saveAndRemoveStaleConfigurations_region_error___block_invoke_3;
  v56[3] = &unk_278FD29F0;
  v56[4] = val;
  v56[5] = delegate;
  v50 = MEMORY[0x24C214430](v56);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v18;
  v20 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v20)
  {
    v21 = 0;
    v22 = *v53;
    while (1)
    {
      v23 = 0;
      do
      {
        if (*v53 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v52 + 1) + 8 * v23);
        v25 = [objc_alloc(MEMORY[0x277CC5CD0]) initWithServerResponseDictionary:v24];
        if (v25)
        {
          if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
          {
            [v25 region];
            v41 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            LogPrintF_safe();
          }

          if ([ENConfigurationManager isRampModeEnabledFromServerResponse:v24, *&v41, v42, v43, context])
          {
            region = [v25 region];
            v27 = [region isEqual:v19];

            if (v27)
            {
              v28 = [ENConfigurationManager rampModeFromServerResponse:v24];
              if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
              {
                v41 = *&v19;
                v42 = v28;
                LogPrintF_safe();
              }

              switch(v28)
              {
                case 1uLL:
                  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
                  {
                    v41 = *&v19;
                    v42 = 1;
                    LogPrintF_safe();
                  }

                  (v50)[2](v50, v24);
                  v37 = [(ENConfigurationManager *)val readCachedRampModeForRegion:v19];
                  if (v37 == 1 || _MergedGlobals_0 > 90 || _MergedGlobals_0 == -1 && !_LogCategory_Initialize())
                  {
                    goto LABEL_69;
                  }

                  break;
                case 2uLL:
                  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
                  {
                    v41 = *&v19;
                    v42 = 2;
                    LogPrintF_safe();
                  }

                  (v50)[2](v50, v24);
                  v37 = [(ENConfigurationManager *)val readCachedRampModeForRegion:v19];
                  if (v37 == 2 || _MergedGlobals_0 > 90 || _MergedGlobals_0 == -1 && !_LogCategory_Initialize())
                  {
                    goto LABEL_69;
                  }

                  break;
                case 3uLL:
                  configurationStore4 = [(ENConfigurationManager *)val configurationStore];
                  region2 = [v25 region];
                  v34 = [configurationStore4 serverConfigurationForRegion:region2];

                  if (v34)
                  {
                    if (_MergedGlobals_0 > 30 || _MergedGlobals_0 == -1 && !_LogCategory_Initialize())
                    {
                      goto LABEL_88;
                    }

LABEL_57:
                    v41 = *&v19;
                    LogPrintF_safe();
                    goto LABEL_88;
                  }

                  [ENConfigurationManager randomSelectPercentagePerDayFromServerResponse:v24];
                  v36 = v35;
                  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
                  {
                    v42 = *&v36;
                    v41 = *&v19;
                    LogPrintF_safe();
                  }

                  v38 = vcvtd_n_f64_u32(arc4random(), 0x20uLL);
                  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
                  {
                    v41 = v38;
                    LogPrintF_safe();
                  }

                  if (v38 >= v36)
                  {
                    goto LABEL_69;
                  }

                  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
                  {
                    goto LABEL_57;
                  }

LABEL_88:
                  (v50)[2](v50, v24);
                  [(ENConfigurationManager *)val updateRampModeForRegion:v19 rampMode:3];
LABEL_69:
                  v21 = 1;
                  goto LABEL_70;
                default:
                  if (_MergedGlobals_0 <= 90 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
                  {
                    v41 = *&v19;
                    v42 = v28;
                    LogPrintF_safe();
                  }

                  goto LABEL_69;
              }

              v41 = *&v37;
              LogPrintF_safe();
              goto LABEL_69;
            }

            if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
            {
              region3 = [v25 region];
              v42 = [ENConfigurationManager rampModeFromServerResponse:v24];
              v43 = v19;
              v41 = *&region3;
              LogPrintF_safe();
            }
          }

          else
          {
            (v50)[2](v50, v24);
            if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
            {
              [v25 region];
              v41 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              LogPrintF_safe();
            }

            region4 = [v25 region];
            v31 = [region4 isEqual:v19];

            if (v31)
            {
              if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF_safe();
                [(ENConfigurationManager *)val updateRampModeForRegion:v19 rampMode:0, v19];
              }

              else
              {
                [(ENConfigurationManager *)val updateRampModeForRegion:v19 rampMode:0, *&v41];
              }

              goto LABEL_69;
            }
          }
        }

        else if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
        {
          v41 = *&v24;
          LogPrintF_safe();
        }

LABEL_70:

        ++v23;
      }

      while (v20 != v23);
      v39 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
      v20 = v39;
      if (!v39)
      {

        if (v21)
        {
          goto LABEL_115;
        }

        goto LABEL_108;
      }
    }
  }

LABEL_108:
  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

LABEL_115:

  objc_destroyWeak(&v61);
  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(context);
LABEL_118:

  v40 = *MEMORY[0x277D85DE8];
}

void __73__ENConfigurationManager__saveAndRemoveStaleConfigurations_region_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v5 = *(a1 + 32);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __73__ENConfigurationManager__saveAndRemoveStaleConfigurations_region_error___block_invoke_2;
  v24[3] = &unk_278FD29A0;
  v6 = v3;
  v25 = v6;
  v26 = &v27;
  [v5 enumerateObjectsUsingBlock:v24];
  if (*(v28 + 24) == 1)
  {
    v7 = [v6 region];
    v8 = [v7 isCountryCodeEqualToRegion:*(a1 + 40)];

    if (v8)
    {
      v9 = [WeakRetained configurationStore];
      v10 = [v6 region];
      v23 = 0;
      v11 = [v9 removeConfigurationsForRegion:v10 includingSubdivisions:0 error:&v23];
      v12 = v23;

      if (v11)
      {
        if (dword_2813465E8 <= 30 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
        {
          v20 = [v6 region];
          v22 = *(a1 + 40);
          LogPrintF_safe();
        }

        v13 = [WeakRetained activeEntity];
        v14 = [v13 entity];
        v15 = [v14 region];
        v16 = [v6 region];
        v17 = [v15 isEqual:v16];

        if (v17)
        {
          v18 = *(a1 + 48);
          v19 = [v6 region];
          [v18 configurationManager:WeakRetained exposureNotificationRegionConfigurationRemovedForRegion:v19];
        }
      }

      else if (dword_2813465E8 <= 90 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
      {
        v21 = *(a1 + 40);
        LogPrintF_safe();
      }
    }
  }

  _Block_object_dispose(&v27, 8);
}

void __73__ENConfigurationManager__saveAndRemoveStaleConfigurations_region_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = MEMORY[0x277CC5CD0];
  v7 = a2;
  v11 = [[v6 alloc] initWithServerResponseDictionary:v7];

  v8 = [*(a1 + 32) region];
  v9 = [v11 region];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __73__ENConfigurationManager__saveAndRemoveStaleConfigurations_region_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) configurationStore];
  v7 = 0;
  v5 = [v4 saveServerConfigurationResponse:v3 error:&v7];
  v6 = v7;

  if (v5)
  {
    [ENConfigurationManager _printServerConfiguration:v3];
  }

  else
  {
    if (dword_2813465E8 <= 90 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
    {
      __73__ENConfigurationManager__saveAndRemoveStaleConfigurations_region_error___block_invoke_3_cold_1(v3);
    }

    [*(a1 + 40) configurationManager:*(a1 + 32) errorDetected:6003];
  }
}

- (void)overrideRampModeForRegion:(id)region rampMode:(unint64_t)mode
{
  regionCopy = region;
  regionRampModeOverride = [(ENConfigurationManager *)self regionRampModeOverride];

  if (!regionRampModeOverride)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB30]);
    [(ENConfigurationManager *)self setRegionRampModeOverride:v8];
  }

  v10 = [MEMORY[0x277CCABA8] numberWithUnsignedInteger:mode];
  regionRampModeOverride2 = [(ENConfigurationManager *)self regionRampModeOverride];
  [regionRampModeOverride2 setObject:v10 forKeyedSubscript:regionCopy];
}

+ (BOOL)isRampModeEnabledFromServerResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    CFDictionaryGetTypeID();
    v4 = CFDictionaryGetTypedValue();
    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (Int64Ranged > 1)
    {
      v5 = CFDictionaryGetInt64() != 0;
    }

    else
    {
      if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
      {
        +[ENConfigurationManager isRampModeEnabledFromServerResponse:];
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)serverResponse:(id)response isOnRampMode:(unint64_t)mode
{
  responseCopy = response;
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && [ENConfigurationManager isRampModeEnabledFromServerResponse:responseCopy]&& [ENConfigurationManager rampModeFromServerResponse:responseCopy]== mode;

  return v6;
}

+ (unint64_t)rampModeFromServerResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    CFDictionaryGetTypeID();
    v4 = CFDictionaryGetTypedValue();
    Int64 = CFDictionaryGetInt64();
  }

  else
  {
    Int64 = 0;
  }

  return Int64;
}

+ (double)randomSelectPercentagePerDayFromServerResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  v4 = 0.0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && [ENConfigurationManager serverResponse:responseCopy isOnRampMode:3])
  {
    CFDictionaryGetTypeID();
    v5 = CFDictionaryGetTypedValue();
    CFDictionaryGetDouble();
    v4 = v6 / 100.0;
  }

  return v4;
}

- (void)setActiveEntity:(id)entity
{
  entityCopy = entity;
  serialQueue = [(ENConfigurationManager *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ENConfigurationManager_setActiveEntity___block_invoke;
  v7[3] = &unk_278FD1120;
  v7[4] = self;
  v8 = entityCopy;
  v6 = entityCopy;
  dispatch_sync(serialQueue, v7);
}

uint64_t __42__ENConfigurationManager_setActiveEntity___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = (a1 + 40);
  result = [*(*(a1 + 32) + 32) isEqual:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v4 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v5 = [v4 isSensitiveLoggingAllowed];

    if (v5 && _MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
    {
      __42__ENConfigurationManager_setActiveEntity___block_invoke_cold_1(v1, v1 + 1);
    }

    objc_storeStrong((*v1 + 32), *v2);
    [*v1 _scheduleRegionConfigurationRefresh];
    v6 = *v1;

    return [v6 stopGracePeriodTimer];
  }

  return result;
}

- (void)updateRegionMonitorModeForCurrentRegion
{
  v1 = NSStringFromSelector(self);
  LogPrintF_safe();
}

- (void)prefsChanged
{
  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    [ENConfigurationManager prefsChanged];
  }

  v3 = CFPrefs_GetInt64() != 0;
  if (self->_prefTestHeaderEnabled != v3)
  {
    if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
    {
      [ENConfigurationManager prefsChanged];
    }

    self->_prefTestHeaderEnabled = v3;
    [(ENConfigurationManager *)self refreshServerConfigurationsUponProfileChange];
  }

  v4 = CFPrefs_GetInt64() != 0;
  if (self->_prefRampTrialPeriodProfile != v4)
  {
    if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
    {
      [ENConfigurationManager prefsChanged];
    }

    self->_prefRampTrialPeriodProfile = v4;

    [(ENConfigurationManager *)self refreshServerConfigurationsUponProfileChange];
  }
}

- (void)setRegionMonitor:(id)monitor
{
  monitorCopy = monitor;
  serialQueue = [(ENConfigurationManager *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ENConfigurationManager_setRegionMonitor___block_invoke;
  v7[3] = &unk_278FD1120;
  v8 = monitorCopy;
  selfCopy = self;
  v6 = monitorCopy;
  dispatch_sync(serialQueue, v7);
}

void __43__ENConfigurationManager_setRegionMonitor___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    objc_storeStrong((v3 + 40), v2);
    v4 = *(*(a1 + 40) + 40);

    [v4 setDelegate:?];
  }

  else
  {
    [*(v3 + 40) setDelegate:0];
    v5 = *(a1 + 40);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

- (void)regionMonitor:(id)monitor regionDidChange:(id)change
{
  changeCopy = change;
  serialQueue = [(ENConfigurationManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ENConfigurationManager_regionMonitor_regionDidChange___block_invoke;
  block[3] = &unk_278FD1558;
  v10 = changeCopy;
  selfCopy = self;
  v12 = a2;
  v8 = changeCopy;
  dispatch_async(serialQueue, block);
}

void __56__ENConfigurationManager_regionMonitor_regionDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    __56__ENConfigurationManager_regionMonitor_regionDidChange___block_invoke_cold_1();
    return;
  }

  v3 = v1;
  v4 = [*(a1 + 40) configurationStore];
  v5 = [v4 serverConfigurationForRegion:v3];

  v6 = [*(a1 + 40) configurationStore];
  v7 = [v6 subdivisionListForRegion:v3];
  v8 = [v7 count];

  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    v9 = NSStringFromSelector(*(a1 + 48));
    v10 = [*(a1 + 40) activeEntity];
    v11 = v10;
    v12 = "yes";
    if (v5)
    {
      v13 = "yes";
    }

    else
    {
      v13 = "no";
    }

    if (!v8)
    {
      v12 = "no";
    }

    v26 = v13;
    v27 = v12;
    v24 = v3;
    v25 = v10;
    v23 = v9;
    LogPrintF_safe();
  }

  v14 = [*(a1 + 40) activeEntity];
  v15 = [v14 entity];
  v16 = [v15 region];
  v17 = [v16 isEqual:v3];

  if (v17)
  {
    [*(a1 + 40) stopGracePeriodTimer];
  }

  v18 = [*(a1 + 40) serverConfigurationFetchTimer];

  if (!v18)
  {
    [*(a1 + 40) _scheduleRegionConfigurationRefresh];
    if (v5)
    {
      goto LABEL_15;
    }

LABEL_17:
    if (v8)
    {
      [*(a1 + 40) updateRegionMonitorModeForCurrentRegion];
    }

    else
    {
      objc_initWeak(&location, *(a1 + 40));
      v21 = *(a1 + 40);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __56__ENConfigurationManager_regionMonitor_regionDidChange___block_invoke_2;
      v28[3] = &unk_278FD28D8;
      objc_copyWeak(&v30, &location);
      v29 = v3;
      [v21 fetchServerConfigurationsForRegion:v29 userInitiated:0 withCompletion:v28];

      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }

    goto LABEL_20;
  }

  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_15:
  v19 = *(a1 + 40);
  v20 = [v19 activeEntity];
  [v19 _processServerConfiguration:v5 forceUpdate:v20 == 0];

LABEL_20:
  v22 = [*(a1 + 40) delegate];
  [v22 configurationManager:*(a1 + 40) didResolveCurrentRegion:1];
}

void __56__ENConfigurationManager_regionMonitor_regionDidChange___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateRegionMonitorModeForCurrentRegion];
  if (v9)
  {
    if (dword_2813465E8 <= 90 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
    {
      v8 = *(a1 + 32);
      LogPrintF_safe();
    }
  }

  else
  {
    v5 = [WeakRetained configurationStore];
    v6 = [v5 serverConfigurationForRegion:*(a1 + 32)];

    if (v6)
    {
      v7 = [WeakRetained activeEntity];
      [WeakRetained _processServerConfiguration:v6 forceUpdate:v7 == 0];
    }
  }
}

- (void)regionMonitor:(id)monitor authorizationStateDidChange:(unint64_t)change
{
  serialQueue = [(ENConfigurationManager *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__ENConfigurationManager_regionMonitor_authorizationStateDidChange___block_invoke;
  v7[3] = &unk_278FD11C8;
  v7[4] = self;
  v7[5] = change;
  dispatch_async(serialQueue, v7);
}

void __68__ENConfigurationManager_regionMonitor_authorizationStateDidChange___block_invoke(uint64_t a1)
{
  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    __68__ENConfigurationManager_regionMonitor_authorizationStateDidChange___block_invoke_cold_1(a1);
  }

  v8 = [*(a1 + 32) activeEntity];
  if ([v8 activeStatus] == 1)
  {
    v2 = *(a1 + 40);

    if (v2 == 1)
    {
      v3 = [*(a1 + 32) activeEntity];
      v4 = [v3 entity];
      v5 = [v4 region];

      if (v5)
      {
        v6 = [*(a1 + 32) delegate];
        [v6 configurationManager:*(a1 + 32) exposureNotificationRegionConfigurationRemovedForRegion:v5];
      }

      v7 = *(a1 + 32);

      [v7 stopGracePeriodTimer];
    }
  }

  else
  {
  }
}

- (ENConfigurationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (BOOL)verifyAppleServerResponse:(id)response signatureHeader:(id)header
{
  v24[3] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  headerCopy = header;
  if (IsAppleInternalBuild() && CFPrefs_GetInt64())
  {
    if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v7 = 1;
    goto LABEL_48;
  }

  v7 = 0;
  if (!responseCopy || !headerCopy)
  {
    goto LABEL_48;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = [objc_alloc(MEMORY[0x277CBEA98]) initWithBase64EncodedString:@"BP6sTAdk49vlNzoEmFS15HX3QjglGJLaTUl1JwGVSn9nAEiZa1dPc811nQVQFKtnYVYhnZswXx63UUM8L/O9aF4=" options:0];
  if (IsAppleInternalBuild() && CFPrefs_GetInt64())
  {
    if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v10 = [objc_alloc(MEMORY[0x277CBEA98]) initWithBase64EncodedString:@"BLZMQHP6FNq1JzrOft1byshgng28vue0mruB3/Nzx0hhKQA2++MecTBcMWJhh+juPNhjmnKGM/Mpi2WxH8/L5AA=" options:0];

    v9 = v10;
  }

  if (dword_2813465E8 <= 30 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
  {
    v21 = [v9 length];
    LogPrintF_safe();
  }

  error = 0;
  v11 = *MEMORY[0x277CDC038];
  v12 = *MEMORY[0x277CDBFE8];
  v23[0] = *MEMORY[0x277CDC020];
  v23[1] = v12;
  v13 = *MEMORY[0x277CDBFF8];
  v24[0] = v11;
  v24[1] = v13;
  v23[2] = *MEMORY[0x277CDC010];
  v24[2] = &unk_285D6E4C8;
  v14 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:v24 forKeys:v23 count:{3, v21}];
  v15 = SecKeyCreateWithData(v9, v14, &error);
  v16 = error;
  if (!error)
  {
    [headerCopy utf8ValueSafe];
    v17 = NSDataWithHex();
    if (_MergedGlobals_0 <= 10 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
    {
      [v17 length];
      LogPrintF_safe();
    }

    v18 = SecKeyVerifySignature(v15, *MEMORY[0x277CDC2F8], responseCopy, v17, &error);
    v7 = v18 != 0;
    if (v18)
    {
      if (_MergedGlobals_0 > 50 || _MergedGlobals_0 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_42;
      }
    }

    else if (dword_2813465E8 > 90 || dword_2813465E8 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_42;
    }

    LogPrintF_safe();
LABEL_42:

    goto LABEL_43;
  }

  if (dword_2813465E8 > 90)
  {
    v7 = 0;
LABEL_44:
    CFRelease(v16);
    goto LABEL_45;
  }

  if (dword_2813465E8 != -1 || _LogCategory_Initialize())
  {
    LogPrintF_safe();
  }

  v7 = 0;
LABEL_43:
  v16 = error;
  if (error)
  {
    goto LABEL_44;
  }

LABEL_45:
  if (v15)
  {
    CFRelease(v15);
  }

  objc_autoreleasePoolPop(v8);
LABEL_48:

  v19 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)staticRegionForBundleID:(id)d
{
  dCopy = d;
  v4 = ENDaemonBundle();
  v5 = [v4 URLForResource:@"RegionBundleID" withExtension:@".plist"];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEAC8] dictionaryWithContentsOfURL:v5];
    v7 = [v6 objectForKeyedSubscript:dCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_serverFetchRegionConfiguration:(void *)a1 userInitiated:completion:.cold.5(void *a1)
{
  v3 = [a1 activeEntity];
  v1 = [v3 entity];
  v2 = [v1 region];
  LogPrintF_safe();
}

- (void)_serverFetchRegionConfiguration:(void *)a1 userInitiated:completion:.cold.6(void *a1)
{
  v3 = [a1 activeEntity];
  v1 = [v3 entity];
  v2 = [v1 region];
  LogPrintF_safe();
}

- (void)_serverFetchRegionConfiguration:(void *)a1 userInitiated:completion:.cold.7(void *a1)
{
  v3 = [a1 activeEntity];
  v1 = [v3 entity];
  v2 = [v1 region];
  LogPrintF_safe();
}

- (void)_serverFetchRegionConfiguration:(uint64_t)a1 userInitiated:completion:.cold.12(uint64_t a1)
{
  if (a1)
  {
    v2 = ENErrorF();
    (*(a1 + 16))(a1, 0, v2);
  }
}

void __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke_3_cold_2(id *a1)
{
  v1 = [*a1 countryCode];
  LogPrintF_safe();
}

void __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke_3_cold_3(id *a1)
{
  v1 = [*a1 countryCode];
  LogPrintF_safe();
}

- (uint64_t)updateRampModeForRegion:(uint64_t)result rampMode:.cold.3(uint64_t result)
{
  v1 = result;
  if (_MergedGlobals_0 <= 90)
  {
    if (_MergedGlobals_0 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

- (uint64_t)regionSupportsFeatures:(uint64_t)a1 featureFlags:(_BYTE *)a2 .cold.1(uint64_t a1, _BYTE *a2)
{
  if (_MergedGlobals_0 <= 90)
  {
    if (_MergedGlobals_0 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *a2 = 0;
  return result;
}

- (uint64_t)regionSupportsFeatures:(uint64_t)result featureFlags:.cold.2(uint64_t result)
{
  v1 = result;
  if (_MergedGlobals_0 <= 90)
  {
    if (_MergedGlobals_0 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

- (uint64_t)readCachedRampModeForRegion:(uint64_t)result .cold.3(uint64_t result)
{
  v1 = result;
  if (_MergedGlobals_0 <= 90)
  {
    if (_MergedGlobals_0 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

- (uint64_t)_scheduleRegionConfigurationRefresh
{
  if (_MergedGlobals_0 <= 10)
  {
    if (_MergedGlobals_0 != -1)
    {
      return LogPrintF_safe();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF_safe();
    }
  }

  return result;
}

uint64_t __61__ENConfigurationManager__scheduleRegionConfigurationRefresh__block_invoke_3_cold_1()
{
  if (dword_2813465E8 <= 90)
  {
    if (dword_2813465E8 != -1)
    {
      return LogPrintF_safe();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF_safe();
    }
  }

  return result;
}

+ (void)_printServerConfiguration:(void *)a1 .cold.2(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  LogPrintF_safe();
}

- (void)_processServerConfiguration:(void *)a1 forceUpdate:.cold.1(void *a1)
{
  v2 = [a1 region];
  [a1 hasSubdivisions];
  LogPrintF_safe();
}

- (void)_processServerConfiguration:(char)a1 forceUpdate:(void *)a2 .cold.2(char a1, void *a2)
{
  if ((a1 & 1) != 0 && _MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    v3 = [a2 gracePeriodConfigurationFetchTimer];
    LogPrintF_safe();
  }
}

- (void)_processServerConfiguration:(void *)a1 forceUpdate:.cold.3(void *a1)
{
  v2 = [a1 region];
  [a1 enVersion];
  [a1 enEnabled];
  LogPrintF_safe();
}

void __70__ENConfigurationManager_refreshServerConfigurationsUponProfileChange__block_invoke_cold_2(uint64_t a1)
{
  v1 = NSStringFromSelector(*(a1 + 40));
  LogPrintF_safe();
}

- (void)_saveAndRemoveStaleConfigurations:(void *)a1 region:error:.cold.1(void *a1)
{
  v1 = [a1 regionCode];
  LogPrintF_safe();
}

- (void)_saveAndRemoveStaleConfigurations:(void *)a1 region:(void *)a2 error:.cold.2(void *a1, void *a2)
{
  [a1 count];
  v3 = [a2 regionCode];
  LogPrintF_safe();
}

void __73__ENConfigurationManager__saveAndRemoveStaleConfigurations_region_error___block_invoke_3_cold_1(void *a1)
{
  v1 = [a1 allKeys];
  LogPrintF_safe();
}

uint64_t __42__ENConfigurationManager_setActiveEntity___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v3 = *(*a1 + 32);
  v4 = *a2;
  return LogPrintF_safe();
}

void __56__ENConfigurationManager_regionMonitor_regionDidChange___block_invoke_cold_1()
{
  if (dword_2813465E8 <= 90 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
  {

    LogPrintF_safe();
  }
}

void __68__ENConfigurationManager_regionMonitor_authorizationStateDidChange___block_invoke_cold_1(uint64_t a1)
{
  v3 = [ENRegionMonitor regionMonitorAuthorizationStateToString:*(a1 + 40)];
  v2 = [*(a1 + 32) activeEntity];
  LogPrintF_safe();
}

@end