@interface ENTestResultManager
+ (BOOL)checkValidNonce:(id)nonce size:(unint64_t)size;
+ (id)generateSecureNonce:(unint64_t)nonce;
- (BOOL)_getRevisionToken:(id *)token forSession:(id)session error:(id *)error;
- (BOOL)_setRevisionToken:(id)token forSession:(id)session error:(id *)error;
- (ENTestResultManager)initWithConfigurationStore:(id)store exposureDatabase:(id)database temporaryExposureKeyManager:(id)manager queue:(id)queue;
- (ENTestResultManagerDelegate)delegate;
- (id)_configurationForRegion:(id)region error:(id *)error;
- (id)_createSessionWithVerificationCode:(id)code proxyEnabled:(BOOL)enabled region:(id)region maxRetryTime:(unint64_t)time error:(id *)error;
- (id)_createURLSessionWithSecondaryIdentifier:(BOOL)identifier;
- (id)_existingSessionForVerificationCode:(id)code region:(id)region;
- (id)_metadataForSessionWithUUID:(id)d error:(id *)error;
- (id)_revisionTokenKeyForSession:(id)session;
- (id)_serverConfigurationForRegion:(id)region error:(id *)error;
- (id)_sessionWithUUID:(id)d error:(id *)error;
- (id)metadataForSessionWithUUID:(id)d error:(id *)error;
- (void)_activateAutomatedChaffingWithRegion:(id)region;
- (void)_deactivateAutomatedChaffing;
- (void)_finishSessionWithUUID:(id)d userDidConsent:(BOOL)consent metadata:(id)metadata completionHandler:(id)handler;
- (void)_invalidate;
- (void)_invalidateSession:(id)session;
- (void)_startChaffTestVerficationSessionForRegion:(id)region completionHandler:(id)handler;
- (void)_startSelfReportWebSession:(id)session completionHandler:(id)handler;
- (void)_updateChaffingTimerBlock;
- (void)activateAutomatedChaffingWithRegion:(id)region;
- (void)activateWebSession:(id)session verificationTimestamp:(double)timestamp nonceTimestamp:(double)nonceTimestamp;
- (void)deactivateAutomatedChaffing;
- (void)deactivateWebSession;
- (void)finishSessionWithUUID:(id)d userDidConsent:(BOOL)consent metadata:(id)metadata completionHandler:(id)handler;
- (void)invalidate;
- (void)startChaffTestVerficationSessionForRegion:(id)region completionHandler:(id)handler;
- (void)startSelfReportWebSession:(id)session completionHandler:(id)handler;
- (void)startTestVerficationSessionWithCode:(id)code proxyEnabled:(BOOL)enabled region:(id)region completionHandler:(id)handler;
@end

@implementation ENTestResultManager

+ (id)generateSecureNonce:(unint64_t)nonce
{
  v4 = [MEMORY[0x277CBEB20] dataWithLength:?];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC548], nonce, [v4 mutableBytes]))
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 base64EncodedStringWithOptions:0];
  }

  return v5;
}

- (ENTestResultManager)initWithConfigurationStore:(id)store exposureDatabase:(id)database temporaryExposureKeyManager:(id)manager queue:(id)queue
{
  storeCopy = store;
  databaseCopy = database;
  managerCopy = manager;
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = ENTestResultManager;
  v15 = [(ENTestResultManager *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_configurationStore, store);
    objc_storeStrong(&v16->_exposureDatabase, database);
    objc_storeStrong(&v16->_temporaryExposureKeyManager, manager);
    objc_storeStrong(&v16->_queue, queue);
    v17 = [(ENTestResultManager *)v16 _createURLSessionWithSecondaryIdentifier:1];
    URLSession = v16->_URLSession;
    v16->_URLSession = v17;

    v19 = [(ENTestResultManager *)v16 _createURLSessionWithSecondaryIdentifier:0];
    URLBackupSession = v16->_URLBackupSession;
    v16->_URLBackupSession = v19;

    v16->_maxRetryTime = 900;
  }

  return v16;
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ENTestResultManager_invalidate__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_invalidate
{
  v16 = *MEMORY[0x277D85DE8];
  [(ENChaffTestResultSession *)self->_chaffSession invalidate];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSMutableDictionary *)self->_sessionsByUUID allValues];
  v4 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v11 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_sessionsByUUID removeAllObjects];
  chaffingRegion = self->_chaffingRegion;
  self->_chaffingRegion = 0;

  [(ENXPCTimer *)self->_chaffingTimer invalidate];
  chaffingTimer = self->_chaffingTimer;
  self->_chaffingTimer = 0;

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_createURLSessionWithSecondaryIdentifier:(BOOL)identifier
{
  identifierCopy = identifier;
  defaultSessionConfiguration = [MEMORY[0x277CBABC0] defaultSessionConfiguration];
  v5 = ENBundleIdentifierForURLSessions();
  [defaultSessionConfiguration set_sourceApplicationBundleIdentifier:v5];

  if (identifierCopy)
  {
    [defaultSessionConfiguration set_sourceApplicationSecondaryIdentifier:*MEMORY[0x277CC5BE8]];
  }

  v6 = [MEMORY[0x277CBABB0] sessionWithConfiguration:defaultSessionConfiguration];

  return v6;
}

- (void)activateAutomatedChaffingWithRegion:(id)region
{
  regionCopy = region;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ENTestResultManager_activateAutomatedChaffingWithRegion___block_invoke;
  v7[3] = &unk_278FD1120;
  v7[4] = self;
  v8 = regionCopy;
  v6 = regionCopy;
  dispatch_async(queue, v7);
}

- (void)_activateAutomatedChaffingWithRegion:(id)region
{
  regionCopy = region;
  if (self->_chaffingTimer && ([(ENRegion *)self->_chaffingRegion isEqual:regionCopy]& 1) == 0)
  {
    v6 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v6 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
    {
      [ENTestResultManager _activateAutomatedChaffingWithRegion:];
    }

    [(ENTestResultManager *)self _deactivateAutomatedChaffing];
  }

  date = [MEMORY[0x277CBEAA0] date];
  CFPrefs_GetDouble();
  if (v9 != 0.0)
  {
    v10 = [MEMORY[0x277CBEAA0] dateWithTimeIntervalSince1970:?];
    currentCalendar = [MEMORY[0x277CBEA88] currentCalendar];
    v12 = [currentCalendar isDate:v10 inSameDayAsDate:date];

    if ((v12 & 1) == 0)
    {
      CFPrefs_RemoveValue();
      CFPrefs_RemoveValue();
    }
  }

  v59 = 0;
  v13 = [(ENTestResultManager *)self _serverConfigurationForRegion:regionCopy error:&v59];
  v14 = v59;
  if (!v13)
  {
    [ENTestResultManager _activateAutomatedChaffingWithRegion:?];
    goto LABEL_69;
  }

  if (![v13 isChaffingEnabled] || (objc_msgSend(v13, "chaffingSelectionPercentage"), v15 <= 0.0) && (objc_msgSend(v13, "chaffingSelectionPercentageAlternative"), v16 <= 0.0))
  {
    [ENTestResultManager _activateAutomatedChaffingWithRegion:?];
    goto LABEL_69;
  }

  v57 = regionCopy;
  CFPrefs_GetInt64();
  CFPrefs_GetInt64();
  if (self->_chaffingTimer)
  {
    [ENTestResultManager _activateAutomatedChaffingWithRegion:v13];
    goto LABEL_68;
  }

  delegate = [(ENTestResultManager *)self delegate];
  if ([delegate isProxyEnabledForTestResultManager:self])
  {
    [v13 chaffingSelectionPercentageAlternative];
  }

  else
  {
    [v13 chaffingSelectionPercentage];
  }

  v19 = v18;

  CFPrefs_GetDouble();
  if (v20 == 0.0 || (v21 = v20, !IsAppleInternalBuild()))
  {
    v21 = v19;
  }

  v56 = v14;
  v22 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed2 = [v22 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed2 && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
  {
    [ENTestResultManager _activateAutomatedChaffingWithRegion:];
  }

  if (v21 <= 0.0)
  {
    [(ENTestResultManager *)self _deactivateAutomatedChaffing];
LABEL_67:
    v14 = v56;
LABEL_68:
    regionCopy = v57;
    goto LABEL_69;
  }

  Int64 = CFPrefs_GetInt64();
  v25 = vcvtd_n_f64_u32(arc4random(), 0x20uLL) * 100.0;
  v27 = v25 >= v21 && Int64 == 0;
  v28 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed3 = [v28 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed3 && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
  {
    v30 = "yes";
    if (v27)
    {
      v31 = "no";
    }

    else
    {
      v31 = "yes";
    }

    if (!Int64)
    {
      v30 = "no";
    }

    v53 = v25;
    v54 = v31;
    v55 = v30;
    LogPrintF_safe();
  }

  if (Int64)
  {
LABEL_45:
    if (v27)
    {
      [ENTestResultManager _activateAutomatedChaffingWithRegion:];
    }

    else
    {
      v32 = 0x15180 / [v13 maximumChaffsAllowedPerDay];
      v33 = arc4random_uniform(0x1C20u);
      if (Int64)
      {
        v34 = arc4random_uniform(0x2A30u) + 3600;
      }

      else
      {
        v34 = v33 + 60;
      }

      v41 = v34;
      CFPrefs_GetDouble();
      if (v42 <= 0.0)
      {
        v43 = 900.0;
      }

      else
      {
        v41 = v42;
        v43 = 10.0;
      }

      v44 = CFPrefs_GetInt64();
      if (v44)
      {
        v45 = v44;
      }

      else
      {
        v45 = v32;
      }

      v46 = [ENLoggingPrefs sharedENLoggingPrefs:*&v53];
      isSensitiveLoggingAllowed4 = [v46 isSensitiveLoggingAllowed];

      if (isSensitiveLoggingAllowed4 && gLogCategory_ENTestResultManager <= 50 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
      {
        [ENTestResultManager _activateAutomatedChaffingWithRegion:v45];
      }

      v48 = [ENXPCTimer alloc];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __60__ENTestResultManager__activateAutomatedChaffingWithRegion___block_invoke;
      v58[3] = &unk_278FD1580;
      v58[4] = self;
      v49 = [(ENXPCTimer *)v48 initWithName:@"com.apple.exposureNotification.chaffing" delay:v45 gracePeriod:0 cadence:9153 priority:v58 options:v41 block:v43];
      chaffingTimer = self->_chaffingTimer;
      self->_chaffingTimer = v49;

      objc_storeStrong(&self->_chaffingRegion, region);
    }

    goto LABEL_67;
  }

  CFPrefs_GetDouble();
  if (v35 == 0.0)
  {
    [date timeIntervalSince1970];
    CFPrefs_SetDouble();
    goto LABEL_45;
  }

  v36 = [MEMORY[0x277CBEAA0] dateWithTimeIntervalSince1970:?];
  currentCalendar2 = [MEMORY[0x277CBEA88] currentCalendar];
  v38 = [currentCalendar2 isDate:v36 inSameDayAsDate:date];

  if ((v38 & 1) == 0)
  {
    v51 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed5 = [v51 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed5 && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
    {
      [ENTestResultManager _activateAutomatedChaffingWithRegion:];
    }

    [date timeIntervalSince1970];
    CFPrefs_SetDouble();

    goto LABEL_45;
  }

  v39 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed6 = [v39 isSensitiveLoggingAllowed];

  v14 = v56;
  regionCopy = v57;
  if (isSensitiveLoggingAllowed6 && gLogCategory_ENTestResultManager <= 10 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
  {
    [ENTestResultManager _activateAutomatedChaffingWithRegion:];
  }

LABEL_69:
}

void __60__ENTestResultManager__activateAutomatedChaffingWithRegion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ENTestResultManager__activateAutomatedChaffingWithRegion___block_invoke_2;
  block[3] = &unk_278FD0F90;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)activateWebSession:(id)session verificationTimestamp:(double)timestamp nonceTimestamp:(double)nonceTimestamp
{
  sessionCopy = session;
  CFPrefs_SetDouble();
  CFPrefs_SetDouble();
  CFPrefs_SetValue();
}

- (void)deactivateAutomatedChaffing
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ENTestResultManager_deactivateAutomatedChaffing__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_deactivateAutomatedChaffing
{
  v0 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v0 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
  {

    LogPrintF_safe();
  }
}

- (void)deactivateWebSession
{
  CFPrefs_RemoveValue();

  CFPrefs_RemoveValue();
}

void __48__ENTestResultManager__updateChaffingTimerBlock__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (v10)
  {
    v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v4 = [v3 isSensitiveLoggingAllowed];

    if (v4 && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
    {
      __48__ENTestResultManager__updateChaffingTimerBlock__block_invoke_cold_1();
    }
  }

  else
  {
    v5 = *(a1 + 40);
    CFPrefs_SetInt64();
    v6 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v7 = [v6 isSensitiveLoggingAllowed];

    if (v7 && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
    {
      __48__ENTestResultManager__updateChaffingTimerBlock__block_invoke_cold_2((a1 + 40));
    }
  }

  [*(*(a1 + 32) + 16) invalidate];
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  *(v8 + 16) = 0;
}

- (void)startChaffTestVerficationSessionForRegion:(id)region completionHandler:(id)handler
{
  regionCopy = region;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__ENTestResultManager_startChaffTestVerficationSessionForRegion_completionHandler___block_invoke;
  block[3] = &unk_278FD1080;
  block[4] = self;
  v12 = regionCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = regionCopy;
  dispatch_async(queue, block);
}

- (void)_startChaffTestVerficationSessionForRegion:(id)region completionHandler:(id)handler
{
  handlerCopy = handler;
  v17 = 0;
  v7 = [(ENTestResultManager *)self _configurationForRegion:region error:&v17];
  v8 = v17;
  if (v7)
  {
    delegate = [(ENTestResultManager *)self delegate];
    v10 = [delegate isProxyEnabledForTestResultManager:self];
    v11 = 40;
    if (v10)
    {
      v11 = 32;
    }

    v12 = *(&self->super.isa + v11);

    queue = self->_queue;
    v16 = v8;
    v14 = [ENChaffTestResultSession sessionWithConfiguration:v7 URLSession:v12 queue:queue error:&v16];
    v15 = v16;

    if (v14)
    {
      [(ENChaffTestResultSession *)self->_chaffSession invalidate];
      objc_storeStrong(&self->_chaffSession, v14);
      [v14 sendChaffMessagesWithCompletion:handlerCopy];
    }

    else
    {
      handlerCopy[2](handlerCopy, v15);
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, v8);
    v15 = v8;
  }
}

- (void)startTestVerficationSessionWithCode:(id)code proxyEnabled:(BOOL)enabled region:(id)region completionHandler:(id)handler
{
  codeCopy = code;
  regionCopy = region;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__ENTestResultManager_startTestVerficationSessionWithCode_proxyEnabled_region_completionHandler___block_invoke;
  block[3] = &unk_278FD2658;
  block[4] = self;
  v18 = codeCopy;
  enabledCopy = enabled;
  v19 = regionCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = regionCopy;
  v16 = codeCopy;
  dispatch_async(queue, block);
}

uint64_t __98__ENTestResultManager__startTestVerficationSessionWithCode_proxyEnabled_region_completionHandler___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (a2)
  {
    a3 = 0;
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  return (*(v4 + 16))(v4, v5, a3);
}

- (void)startSelfReportWebSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ENTestResultManager_startSelfReportWebSession_completionHandler___block_invoke;
  block[3] = &unk_278FD1080;
  block[4] = self;
  v12 = sessionCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = sessionCopy;
  dispatch_async(queue, block);
}

- (void)_startSelfReportWebSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  v22 = 0;
  v8 = [(ENTestResultManager *)self _configurationForRegion:sessionCopy error:&v22];
  v9 = v22;
  v10 = v9;
  if (v8)
  {
    v21 = v9;
    v11 = [(ENTestResultManager *)self _serverConfigurationForRegion:sessionCopy error:&v21];
    v12 = v21;

    if (v11)
    {
      testVerificationAPIKey = [v8 testVerificationAPIKey];
      if (testVerificationAPIKey)
      {
        v14 = [ENTestResultManager generateSecureNonce:256];
        if ([ENTestResultManager checkValidNonce:v14 size:256])
        {
          CFPrefs_GetDouble();
          if (v15 > 0.0 && (v16 = v15, [MEMORY[0x277CBEAA0] date], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "timeIntervalSince1970"), v19 = v18 - v16, v17, v19 < (86400 * objc_msgSend(v11, "selfReportTimeoutDays"))))
          {
            [ENTestResultManager _startSelfReportWebSession:handlerCopy completionHandler:testVerificationAPIKey];
          }

          else
          {
            CFPrefs_SetValue();
            date = [MEMORY[0x277CBEAA0] date];
            [date timeIntervalSince1970];
            CFPrefs_SetDouble();

            handlerCopy[2](handlerCopy, testVerificationAPIKey, v14, v12);
          }
        }

        else
        {
          [ENTestResultManager _startSelfReportWebSession:handlerCopy completionHandler:?];
        }
      }

      else
      {
        [ENTestResultManager _startSelfReportWebSession:handlerCopy completionHandler:&v23];
        v14 = v23;
      }
    }

    else
    {
      handlerCopy[2](handlerCopy, 0, 0, v12);
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, 0, v9);
    v12 = v10;
  }
}

- (id)metadataForSessionWithUUID:(id)d error:(id *)error
{
  dCopy = d;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__ENTestResultManager_metadataForSessionWithUUID_error___block_invoke;
  v11[3] = &unk_278FD13C8;
  v11[4] = self;
  v12 = dCopy;
  v13 = &v15;
  errorCopy = error;
  v8 = dCopy;
  dispatch_sync(queue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __56__ENTestResultManager_metadataForSessionWithUUID_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _metadataForSessionWithUUID:*(a1 + 40) error:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)finishSessionWithUUID:(id)d userDidConsent:(BOOL)consent metadata:(id)metadata completionHandler:(id)handler
{
  dCopy = d;
  metadataCopy = metadata;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__ENTestResultManager_finishSessionWithUUID_userDidConsent_metadata_completionHandler___block_invoke;
  block[3] = &unk_278FD2658;
  block[4] = self;
  v18 = dCopy;
  consentCopy = consent;
  v19 = metadataCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = metadataCopy;
  v16 = dCopy;
  dispatch_sync(queue, block);
}

- (void)_finishSessionWithUUID:(id)d userDidConsent:(BOOL)consent metadata:(id)metadata completionHandler:(id)handler
{
  dCopy = d;
  metadataCopy = metadata;
  handlerCopy = handler;
  v34 = 0;
  v13 = [(ENTestResultManager *)self _sessionWithUUID:dCopy error:&v34];
  v14 = v34;
  if (!v13)
  {
    handlerCopy[2](handlerCopy, 0, v14);
    goto LABEL_16;
  }

  if (!consent)
  {
    [(ENTestResultManager *)self _invalidateSession:v13];
    handlerCopy[2](handlerCopy, 1, 0);
    goto LABEL_16;
  }

  getUploadingTemporaryExposureKeys = [v13 getUploadingTemporaryExposureKeys];
  if (getUploadingTemporaryExposureKeys)
  {
    v16 = getUploadingTemporaryExposureKeys;
  }

  else
  {
    region = [v13 region];
    v33 = v14;
    v16 = [(ENTestResultManager *)self _getTemporaryExposureKeysForUpload:1 requireConsentForRegion:region error:&v33];
    v18 = v33;

    if (!v16)
    {
      [(ENTestResultManager *)self _invalidateSession:v13];
      handlerCopy[2](handlerCopy, 0, v18);
      v14 = v18;
      goto LABEL_16;
    }

    v14 = v18;
  }

  v31 = v14;
  v32 = 0;
  v19 = [(ENTestResultManager *)self _getRevisionToken:&v32 forSession:v13 error:&v31];
  v20 = v32;
  v21 = v31;

  if (v19)
  {
    v30 = v21;
    v22 = [(ENTestResultManager *)self _metadataForSessionWithUUID:dCopy error:&v30];
    v14 = v30;

    if (v22)
    {
      CFStringGetTypeID();
      v25 = CFPrefs_CopyTypedValue();
      v23 = [v22 objectForKeyedSubscript:*MEMORY[0x277CC5B88]];
      v26 = v20;
      v24 = [v23 isEqualToNumber:&unk_285D6E4B0];

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __88__ENTestResultManager__finishSessionWithUUID_userDidConsent_metadata_completionHandler___block_invoke;
      v27[3] = &unk_278FD26A8;
      v27[4] = self;
      v27[5] = v13;
      v27[6] = v25;
      v29 = v24;
      v20 = v26;
      v28 = handlerCopy;
      [v13 uploadTemporaryExposureKeys:v16 revisionToken:v26 userMetadata:metadataCopy completionHandler:v27];
    }

    else
    {
      [(ENTestResultManager *)self _invalidateSession:v13];
      handlerCopy[2](handlerCopy, 0, v14);
    }
  }

  else
  {
    [(ENTestResultManager *)self _invalidateSession:v13];
    handlerCopy[2](handlerCopy, 0, v21);
    v14 = v21;
  }

LABEL_16:
}

void __88__ENTestResultManager__finishSessionWithUUID_userDidConsent_metadata_completionHandler___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v7 && a2)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v16 = v8;
    v11 = [v9 _setRevisionToken:v7 forSession:v10 error:&v16];
    v12 = v16;

    v8 = v12;
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  else if (v7 || (a2 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (*(a1 + 48) && *(a1 + 64) == 1)
  {
    v13 = [MEMORY[0x277CBEAA0] date];
    [v13 timeIntervalSince1970];
    CFPrefs_SetDouble();

    CFPrefs_RemoveValue();
    CFPrefs_RemoveValue();
  }

  [*(a1 + 32) _invalidateSession:*(a1 + 40)];
LABEL_11:
  Int64 = CFPrefs_GetInt64();
  CFPrefs_SetInt64();
  if (!Int64)
  {
    v15 = [MEMORY[0x277CBEAA0] date];
    [v15 timeIntervalSince1970];
    CFPrefs_SetDouble();
  }

  (*(*(a1 + 56) + 16))();
}

- (void)_invalidateSession:(id)session
{
  sessionsByUUID = self->_sessionsByUUID;
  sessionCopy = session;
  uUID = [sessionCopy UUID];
  [(NSMutableDictionary *)sessionsByUUID setObject:0 forKeyedSubscript:uUID];

  [sessionCopy invalidate];
}

- (id)_configurationForRegion:(id)region error:(id *)error
{
  regionCopy = region;
  v7 = [(ENConfigurationStore *)self->_configurationStore serverConfigurationForRegion:regionCopy];
  v8 = v7;
  if (v7)
  {
    if ([v7 enVersion] >= 2 && (objc_msgSend(v8, "enEnabled") & 1) != 0)
    {
      v9 = [(ENConfigurationStore *)self->_configurationStore downloadConfigurationForRegion:regionCopy];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        [ENTestResultManager _configurationForRegion:error error:?];
      }

      goto LABEL_7;
    }

    if (error)
    {
      v13 = 10;
LABEL_14:
      ENTestResultErrorF(v13);
      *error = v10 = 0;
      goto LABEL_7;
    }
  }

  else if (error)
  {
    v13 = 9;
    goto LABEL_14;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (id)_serverConfigurationForRegion:(id)region error:(id *)error
{
  regionCopy = region;
  v7 = [(ENConfigurationStore *)self->_configurationStore serverConfigurationForRegion:regionCopy];
  v8 = v7;
  if (v7)
  {
    if ([v7 enVersion] >= 2 && (objc_msgSend(v8, "enEnabled") & 1) != 0)
    {
      v9 = v8;
      goto LABEL_5;
    }

    if (error)
    {
      v11 = 10;
LABEL_12:
      ENTestResultErrorF(v11);
      *error = v9 = 0;
      goto LABEL_5;
    }
  }

  else if (error)
  {
    v11 = 9;
    goto LABEL_12;
  }

  v9 = 0;
LABEL_5:

  return v9;
}

- (id)_sessionWithUUID:(id)d error:(id *)error
{
  v5 = [(NSMutableDictionary *)self->_sessionsByUUID objectForKeyedSubscript:d];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    [ENTestResultManager _sessionWithUUID:error error:?];
  }

  return v6;
}

- (id)_existingSessionForVerificationCode:(id)code region:(id)region
{
  v23 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  regionCopy = region;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allValues = [(NSMutableDictionary *)self->_sessionsByUUID allValues];
  v9 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        verificationCode = [v12 verificationCode];
        if ([verificationCode isEqualToString:codeCopy])
        {
          region = [v12 region];
          v15 = [region isEqual:regionCopy];

          if (v15)
          {
            v9 = v12;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v9 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

LABEL_12:

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_revisionTokenKeyForSession:(id)session
{
  uploadURL = [session uploadURL];
  v4 = MEMORY[0x277CCACA0];
  absoluteString = [uploadURL absoluteString];
  v6 = [v4 stringWithFormat:@"TEKUploadRevisionToken(%@)", absoluteString];

  return v6;
}

- (ENTestResultManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (BOOL)checkValidNonce:(id)nonce size:(unint64_t)size
{
  if (!nonce)
  {
    return 0;
  }

  v5 = MEMORY[0x277CBEA98];
  nonceCopy = nonce;
  v7 = [[v5 alloc] initWithBase64EncodedString:nonceCopy options:0];

  if (v7)
  {
    v8 = [v7 length] == size;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_updateChaffingTimerBlock
{
  v3 = self->_chaffingRegion;
  if (v3)
  {
    v29 = 0;
    v4 = [(ENTestResultManager *)self _serverConfigurationForRegion:v3 error:&v29];
    v5 = v29;
    v6 = v5;
    if (!v4)
    {
      [(ENTestResultManager *)self _deactivateAutomatedChaffing];
      v17 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed = [v17 isSensitiveLoggingAllowed];

      if (isSensitiveLoggingAllowed && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      goto LABEL_17;
    }

    v27 = v5;
    date = [MEMORY[0x277CBEAA0] date];
    currentCalendar = [MEMORY[0x277CBEA88] currentCalendar];
    Int64 = CFPrefs_GetInt64();
    CFPrefs_GetDouble();
    v11 = v10;
    if (!Int64 && v10 == 0.0)
    {
      [date timeIntervalSince1970];
      v11 = v12;
      CFPrefs_SetDouble();
    }

    v13 = [MEMORY[0x277CBEAA0] dateWithTimeIntervalSince1970:v11];
    v14 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed2 = [v14 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed2 && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
    {
      v24 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:Int64];
      v25 = v13;
      LogPrintF_safe();
    }

    if (self->_chaffSession)
    {
      v19 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed3 = [v19 isSensitiveLoggingAllowed];

      if (!isSensitiveLoggingAllowed3 || gLogCategory_ENTestResultManager > 40 || gLogCategory_ENTestResultManager == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      v21 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{Int64 + 1, v24, v25}];
      LogPrintF_safe();
    }

    else
    {
      if (([v13 isEqualToDate:date] & 1) == 0 && (objc_msgSend(currentCalendar, "isDate:inSameDayAsDate:", v13, date) & 1) == 0)
      {
        [(ENTestResultManager *)self _deactivateAutomatedChaffing];
        goto LABEL_16;
      }

      v16 = CFPrefs_GetInt64();
      if (Int64 < [v4 maximumChaffsAllowedPerDay] - v16)
      {
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __48__ENTestResultManager__updateChaffingTimerBlock__block_invoke;
        v28[3] = &unk_278FD2630;
        v28[4] = self;
        v28[5] = Int64;
        [(ENTestResultManager *)self _startChaffTestVerficationSessionForRegion:v3 completionHandler:v28];
LABEL_16:

        v6 = v27;
LABEL_17:

        goto LABEL_18;
      }

      v22 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed4 = [v22 isSensitiveLoggingAllowed];

      if (!isSensitiveLoggingAllowed4 || gLogCategory_ENTestResultManager > 40 || gLogCategory_ENTestResultManager == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      v21 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{Int64, v24, v25}];
      v26 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:v16];
      LogPrintF_safe();
    }

    goto LABEL_16;
  }

LABEL_18:
}

- (id)_metadataForSessionWithUUID:(id)d error:(id *)error
{
  v5 = [(ENTestResultManager *)self _sessionWithUUID:d error:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 getMetadataAndReturnError:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_createSessionWithVerificationCode:(id)code proxyEnabled:(BOOL)enabled region:(id)region maxRetryTime:(unint64_t)time error:(id *)error
{
  enabledCopy = enabled;
  codeCopy = code;
  v13 = [(ENTestResultManager *)self _configurationForRegion:region error:error];
  if (v13)
  {
    v14 = [(ENTestResultManager *)self _getTemporaryExposureKeysForUpload:0 requireConsentForRegion:0 error:error];
    if (!v14)
    {
      v26 = 0;
      goto LABEL_22;
    }

    CFStringGetTypeID();
    v15 = CFPrefs_CopyTypedValue();
    v33 = v14;
    if (!v15)
    {
      goto LABEL_8;
    }

    if (![ENTestResultManager checkValidNonce:v15 size:256])
    {
      if (error)
      {
        ENTestResultErrorF(5);
        *error = v26 = 0;
      }

      else
      {
        v26 = 0;
      }

LABEL_21:

LABEL_22:
      goto LABEL_23;
    }

    CFPrefs_GetDouble();
    if (v16 > 0.0 && (v17 = v16, [MEMORY[0x277CBEAA0] date], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "timeIntervalSince1970"), v20 = v19 - v17, v18, v20 > 86400.0))
    {
      v21 = codeCopy;
      CFPrefs_RemoveValue();

      v15 = 0;
    }

    else
    {
LABEL_8:
      v21 = codeCopy;
    }

    v22 = 40;
    if (enabledCopy)
    {
      v22 = 32;
    }

    v23 = *(&self->super.isa + v22);
    v24 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v24 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    codeCopy = v21;
    v26 = [ENTestResultSession sessionWithVerificationCode:v21 configuration:v13 maxRetryTime:time nonce:v15 URLSession:v23 queue:self->_queue error:error];
    if (v26)
    {
      sessionsByUUID = self->_sessionsByUUID;
      if (!sessionsByUUID)
      {
        v28 = objc_alloc_init(MEMORY[0x277CBEB30]);
        v29 = self->_sessionsByUUID;
        self->_sessionsByUUID = v28;

        sessionsByUUID = self->_sessionsByUUID;
      }

      uUID = [v26 UUID];
      [(NSMutableDictionary *)sessionsByUUID setObject:v26 forKeyedSubscript:uUID];

      v31 = v26;
    }

    v14 = v33;
    goto LABEL_21;
  }

  v26 = 0;
LABEL_23:

  return v26;
}

- (BOOL)_getRevisionToken:(id *)token forSession:(id)session error:(id *)error
{
  sessionCopy = session;
  if ([(ENExposureDatabase *)self->_exposureDatabase openWithError:error])
  {
    exposureDatabase = self->_exposureDatabase;
    v10 = [(ENTestResultManager *)self _revisionTokenKeyForSession:sessionCopy];
    v11 = [(ENExposureDatabase *)exposureDatabase getValue:token forKey:v10 ofClass:objc_opt_class() error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_setRevisionToken:(id)token forSession:(id)session error:(id *)error
{
  tokenCopy = token;
  sessionCopy = session;
  if ([(ENExposureDatabase *)self->_exposureDatabase openWithError:error])
  {
    exposureDatabase = self->_exposureDatabase;
    v11 = [(ENTestResultManager *)self _revisionTokenKeyForSession:sessionCopy];
    v12 = ENDefaultExpirationDate();
    v13 = [(ENExposureDatabase *)exposureDatabase setValue:tokenCopy forKey:v11 expiryDate:v12 error:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_activateAutomatedChaffingWithRegion:(void *)a1 .cold.2(void *a1)
{
  [a1 _deactivateAutomatedChaffing];
  v1 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v2 = [v1 isSensitiveLoggingAllowed];

  if (v2 && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

- (void)_activateAutomatedChaffingWithRegion:(void *)a1 .cold.3(void *a1)
{
  v2 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v3 = [v2 isSensitiveLoggingAllowed];

  if (v3 && gLogCategory_ENTestResultManager <= 10 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
  {
    [a1 maximumChaffsAllowedPerDay];
    LogPrintF_safe();
  }
}

- (void)_activateAutomatedChaffingWithRegion:(uint64_t)a1 .cold.6(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABA8] numberWithDouble:?];
  v3 = [MEMORY[0x277CCABA8] numberWithUnsignedInteger:a1];
  LogPrintF_safe();
}

- (void)_activateAutomatedChaffingWithRegion:.cold.7()
{
  v0 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v1 = [v0 isSensitiveLoggingAllowed];

  if (v1 && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

- (void)_activateAutomatedChaffingWithRegion:(void *)a1 .cold.9(void *a1)
{
  [a1 _deactivateAutomatedChaffing];
  v1 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v2 = [v1 isSensitiveLoggingAllowed];

  if (v2 && gLogCategory_ENTestResultManager <= 40 && (gLogCategory_ENTestResultManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

void __48__ENTestResultManager__updateChaffingTimerBlock__block_invoke_cold_2(void *a1)
{
  v1 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*a1 + 1];
  LogPrintF_safe();
}

- (void)_startSelfReportWebSession:(uint64_t)a1 completionHandler:.cold.1(uint64_t a1)
{
  v2 = ENTestResultErrorF(5);
  (*(a1 + 16))(a1, 0, 0, v2);
}

- (void)_startSelfReportWebSession:(uint64_t)a1 completionHandler:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = ENTestResultErrorF(5);
  (*(a1 + 16))(a1, a2, 0, v4);
}

- (uint64_t)_startSelfReportWebSession:(uint64_t)a1 completionHandler:(uint64_t *)a2 .cold.3(uint64_t a1, uint64_t *a2)
{
  v4 = ENTestResultErrorF(10);
  *a2 = v4;
  return (*(a1 + 16))(a1, 0, 0, v4);
}

- (void)_configurationForRegion:(void *)result error:.cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    result = ENTestResultErrorF(9);
    *v1 = result;
  }

  return result;
}

- (void)_sessionWithUUID:(void *)result error:.cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    result = ENTestResultErrorF(5);
    *v1 = result;
  }

  return result;
}

@end