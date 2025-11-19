@interface BiometricKitXPCServer
+ (void)initialize;
- ($89967B733E8F0E8859294B5D59E7AF0F)userAccountsInfo;
- (BOOL)hasMultipleUserAccounts;
- (BOOL)init;
- (BOOL)isCatacombAccessible;
- (BOOL)isClassCFileAccessible;
- (BOOL)isDisplayOn;
- (BOOL)isFingerprintModificationRestricted;
- (BOOL)isXARTAvailableWithClient:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)setPreferencesValue:(id)a3 forKey:(id)a4 withClient:(id)a5;
- (BOOL)templatesExistAtBoot;
- (BOOL)validateAllUsers;
- (BiometricKitXPCServer)init;
- (id)allClients;
- (id)catacombComponentForIdentity:(id)a3;
- (id)catacombFileNameForComponent:(id)a3;
- (id)connectedAccessories;
- (id)createEnrollOperation;
- (id)createMatchEventDictionary:(id *)a3;
- (id)createMatchOperation;
- (id)createPresenceDetectOperation;
- (id)getAccessoryObject:(id *)a3;
- (id)getIdentityFromUUID:(id)a3 withClient:(id)a4;
- (id)getIdentityObject:(id *)a3;
- (id)getIdentityObjectByUserID:(unsigned int)a3 UUID:(id)a4;
- (id)getSystemProtectedConfigurationWithClient:(id)a3;
- (id)getUserKeybagUUIDForUID:(unsigned int)a3;
- (id)hexDumpData:(char *)a3 size:(unint64_t)a4;
- (id)identities;
- (id)identities:(id)a3 withClient:(id)a4;
- (id)identitiesOfComponent:(id)a3;
- (id)identitiesOfUser:(unsigned int)a3;
- (id)pairedAccessories;
- (id)stateDictionaryWithHints:(os_state_hints_s *)a3;
- (int)archiveCatacombDataForComponent:(id)a3 toArchiver:(id)a4;
- (int)cacheAccessories;
- (int)cacheCatacombInfo;
- (int)cancelWithClient:(id)a3;
- (int)detectPresenceWithOptions:(id)a3 withClient:(id)a4;
- (int)dropUnlockTokenWithClient:(id)a3;
- (int)filterIdentities:(id)a3 withFilter:(id)a4;
- (int)getBiometryAvailability:(int64_t *)a3 forUser:(unsigned int)a4 withClient:(id)a5;
- (int)getCatacombSaveListForComponents:(id)a3 list:(id *)a4;
- (int)getDeviceHardwareState:(unsigned int *)a3 withClient:(id)a4;
- (int)getLastMatchEvent:(id *)a3 withClient:(id)a4;
- (int)getPreferencesValue:(id *)a3 forKey:(id)a4 withClient:(id)a5;
- (int)getUserUUIDsForUIDs:(id)a3 userUUIDs:(id *)a4;
- (int)handleCatacombUnlock;
- (int)handleFirstUnlock;
- (int)initAutoBugCapture;
- (int)initMatchOperation:(id)a3 filter:(id)a4 options:(id)a5 client:(id)a6;
- (int)initPresenceDetectOperation:(id)a3 options:(id)a4 client:(id)a5;
- (int)isValidUser:(unsigned int)a3;
- (int)listAccessories:(id *)a3 client:(id)a4;
- (int)loadCatacomb;
- (int)loadCatacombAfterFirstUnlock;
- (int)loadCatacombForComponent:(id)a3;
- (int)logCatacombInfo:(id)a3 data:(id)a4;
- (int)match:(id)a3 withOptions:(id)a4 withClient:(id)a5;
- (int)parseAuthDict:(id)a3 toAuthData:(id *)a4;
- (int)pauseBioOperation:(id)a3;
- (int)processBioOperation:(id)a3;
- (int)readCatacombState;
- (int)removeIdentity:(id)a3 withOptions:(id)a4 withClient:(id)a5;
- (int)restoreAndSyncTemplates;
- (int)saveCatacomb;
- (int)saveCatacombForComponents:(id)a3;
- (int)saveCatacombForIdentity:(id)a3;
- (int)saveCatacombIfDirtyWithInterval:(double)a3 andDelay:(double)a4;
- (int)saveTemplateListAfterTemplateUpdate;
- (int)serviceStatus:(unsigned int)a3 version:(unsigned int)a4 ordinal:(unint64_t)a5 data:(id)a6 timestamp:(unint64_t)a7;
- (int)setSystemProtectedConfiguration:(id)a3 withOptions:(id)a4 withClient:(id)a5;
- (int)startBioOperation:(id)a3;
- (int)startEnrollOperation:(id)a3;
- (int)startMatchOperation:(id)a3;
- (int)startPresenceDetectOperation:(id)a3;
- (int)unarchiveCatacombDataForComponent:(id)a3 fromUnarchiver:(id)a4 secureData:(id *)a5 identities:(id *)a6;
- (int)updateIdentity:(id)a3 withOptions:(id)a4 withClient:(id)a5;
- (int)updatePropertiesOfIdentities;
- (int)writeStringToPersistentLog:(id)a3;
- (int64_t)getMaxIdentityCount:(int)a3 withClient:(id)a4;
- (os_state_data_s)osStateHandler:(os_state_hints_s *)a3;
- (unint64_t)identitiesCount;
- (unsigned)currentAccountUserID;
- (unsigned)singleEnrolledUser;
- (void)addIdentityObject:(id)a3;
- (void)addIdentityObjects:(id)a3;
- (void)cacheAccessories;
- (void)cacheUserAccountsInfo;
- (void)clearTemplateList;
- (void)dealloc;
- (void)deleteUnusedCatacombFiles;
- (void)disconnectingClient:(id)a3;
- (void)doSharedMemoryTransfers;
- (void)handleCatacombUnlock;
- (void)handleSharedMemoryTransfer:(unsigned int)a3 withHeader:(id)a4 data:(id)a5;
- (void)init;
- (void)initAutoBugCapture;
- (void)isDisplayOn;
- (void)loadCatacomb;
- (void)notifyAppIsInactive:(BOOL)a3 withClient:(id)a4;
- (void)postGeneralLockoutStateNotification;
- (void)readCatacombState;
- (void)registerDelegate:(BOOL)a3 withClient:(id)a4;
- (void)removeBioOperationOfClient:(id)a3;
- (void)removeIdentityObject:(id)a3;
- (void)resumeQueuedBioOperation;
- (void)saveTemplateListAfterTemplateUpdate;
- (void)serviceStatus:(unsigned int)a3 type:(unsigned int)a4 inValue:(void *)a5;
- (void)setGracePeriod:(unint64_t)a3;
- (void)stopBioOperationsAfterReconnect;
- (void)suspendAllConnections:(BOOL)a3;
- (void)switchToNextBioOperation:(BOOL)a3;
- (void)updateActiveOperationNotificationWithOverride:(int)a3;
- (void)updateEnrollmentChangedNotification:(BOOL)a3;
- (void)updateExpressModeState;
- (void)updateExpressModeStateNotification;
- (void)updateExpressModeStateWithEnrollmentCount:(unsigned int)a3;
- (void)updateExpressModeStateWithLockoutState:(unsigned int)a3;
- (void)updatePropertiesOfIdentities;
- (void)userListDidUpdate;
- (void)validateAllUsers;
- (void)validateUsersKeybagUUIDs;
@end

@implementation BiometricKitXPCServer

- (int)loadCatacombAfterFirstUnlock
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "loadCatacombAfterFirstUnlock\n", &v13, 2u);
  }

  if ([(BiometricKitXPCServer *)self catacombFileAccessed]|| ![(BiometricKitXPCServer *)self isCatacombAccessible])
  {
    goto LABEL_14;
  }

  if (__osLog)
  {
    v5 = __osLog;
  }

  else
  {
    v5 = v3;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_DEFAULT, "loadCatacombAfterFirstUnlock: not received first unlock notification yet\n", &v13, 2u);
  }

  v6 = [(BiometricKitXPCServer *)self handleCatacombUnlock];
  if (v6)
  {
    v8 = v6;
    if (__osLog)
    {
      v11 = __osLog;
    }

    else
    {
      v11 = v3;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136316162;
      v14 = "err == 0 ";
      v15 = 2048;
      v16 = v8;
      v17 = 2080;
      v18 = &unk_223E5FC53;
      v19 = 2080;
      v20 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v21 = 1024;
      v22 = 3274;
      _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v13, 0x30u);
    }

    if (__osLogTrace)
    {
      v12 = __osLogTrace;
    }

    else
    {
      v12 = v3;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 67109120;
      LODWORD(v14) = v8;
      _os_log_impl(&dword_223E00000, v12, OS_LOG_TYPE_ERROR, "loadCatacombAfterFirstUnlock -> err:0x%x\n", &v13, 8u);
    }
  }

  else
  {
LABEL_14:
    if (__osLogTrace)
    {
      v7 = __osLogTrace;
    }

    else
    {
      v7 = v3;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = 67109120;
      LODWORD(v14) = 0;
      _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_DEBUG, "loadCatacombAfterFirstUnlock -> err:0x%x\n", &v13, 8u);
    }

    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)validateAllUsers
{
  v39 = *MEMORY[0x277D85DE8];
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v3, OS_LOG_TYPE_DEBUG, "validateAllUsers\n", buf, 2u);
  }

  if (!self->_userListChangeDetected)
  {
    v7 = 0;
    obj = 0;
LABEL_32:
    v21 = 1;
    goto LABEL_34;
  }

  v4 = self->_expressModeState;
  objc_sync_enter(v4);
  obj = [self->_expressModeState allKeys];
  objc_sync_exit(v4);

  self->_userListChangeDetected = 0;
  v31 = 0;
  v5 = [(BiometricKitXPCServer *)self getUserUUIDsForUIDs:obj userUUIDs:&v31];
  v6 = v31;
  v7 = v6;
  if (v5)
  {
    [BiometricKitXPCServer validateAllUsers];
    goto LABEL_32;
  }

  if (!v6)
  {
    [BiometricKitXPCServer validateAllUsers];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = obj;
  v8 = [obj countByEnumeratingWithState:&v27 objects:v38 count:16];
  if (!v8)
  {

    goto LABEL_32;
  }

  v10 = 0;
  v11 = *v28;
  *&v9 = 67109634;
  v25 = v9;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v27 + 1) + 8 * i);
      v14 = [v7 objectForKeyedSubscript:{v13, v25}];
      v15 = self->_expressModeState;
      objc_sync_enter(v15);
      v16 = [self->_expressModeState objectForKeyedSubscript:v13];
      objc_sync_exit(v15);

      if (v14)
      {
        v17 = v16 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (v17 || ([v14 isEqual:v16] & 1) == 0)
      {
        if (__osLog)
        {
          v18 = __osLog;
        }

        else
        {
          v18 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
          v20 = [v13 unsignedIntValue];
          *buf = v25;
          v33 = v20;
          v34 = 2112;
          v35 = v14;
          v36 = 2112;
          v37 = v16;
          _os_log_impl(&dword_223E00000, v19, OS_LOG_TYPE_DEFAULT, "validateAllUsers: removing user %u because of invalid user UUID (real:%@ vs catacomb:%@)\n", buf, 0x1Cu);
        }

        -[BiometricKitXPCServer removeUser:](self, "removeUser:", [v13 unsignedIntValue]);
        v10 = 1;
      }
    }

    v8 = [obj countByEnumeratingWithState:&v27 objects:v38 count:16];
  }

  while (v8);

  if (v10)
  {
    [(BiometricKitXPCServer *)self saveCatacomb];
    [(BiometricKitXPCServer *)self syncTemplateListForUser:0xFFFFFFFFLL];
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

LABEL_34:
  if (__osLogTrace)
  {
    v22 = __osLogTrace;
  }

  else
  {
    v22 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v33 = v21;
    _os_log_impl(&dword_223E00000, v22, OS_LOG_TYPE_DEBUG, "validateAllUsers -> %d\n", buf, 8u);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)resumeQueuedBioOperation
{
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "resumeQueuedBioOperation\n", buf, 2u);
  }

  do
  {
    if (![(OS_dispatch_queue *)self->_cmdDispatchQueue count])
    {
      break;
    }

    v5 = [(OS_dispatch_queue *)self->_cmdDispatchQueue objectAtIndex:0];
    [(OS_dispatch_queue *)self->_cmdDispatchQueue removeObject:v5];
    v6 = [(BiometricKitXPCServer *)self startBioOperation:v5];
    if (v6)
    {
      v7 = [v5 taskResumeFailedMessage];
    }

    else
    {
      v7 = [v5 taskResumedMessage];
    }

    v8 = v7;
    if (v7)
    {
      v9 = [v5 client];
      [(BiometricKitXPCServer *)self sendStatusMessage:v8 toClient:v9];

      v10 = [v5 client];
      [v10 taskResumeStatus:v6];
    }
  }

  while (v6);
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v3;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEBUG, "resumeQueuedBioOperation -> void\n", v12, 2u);
  }
}

- (id)allClients
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = self->_exportedObjects;
  objc_sync_enter(v4);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_exportedObjects;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) clients];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v4);
  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)validateUsersKeybagUUIDs
{
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "validateUsersKeybagUUIDs\n", buf, 2u);
  }

  *buf = 0;
  v11 = buf;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = self->_catacombUserUUIDs;
  objc_sync_enter(v5);
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->_catacombUserUUIDs];
  objc_sync_exit(v5);

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__BiometricKitXPCServer_validateUsersKeybagUUIDs__block_invoke;
  v9[3] = &unk_2784FA490;
  v9[4] = self;
  v9[5] = buf;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];
  if (v11[24] == 1)
  {
    [(BiometricKitXPCServer *)self saveCatacomb];
    [(BiometricKitXPCServer *)self syncTemplateListForUser:0xFFFFFFFFLL];
  }

  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = v3;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_DEBUG, "validateUsersKeybagUUIDs -> void\n", v8, 2u);
  }

  _Block_object_dispose(buf, 8);
}

- (BOOL)hasMultipleUserAccounts
{
  if ((self->_userAccountsInfo.currentAccountUserID & 0x10000) == 0)
  {
    [(BiometricKitXPCServer *)self cacheAndSetUserAccountsInfo];
  }

  return BYTE1(self->_userAccountsInfo.currentAccountUserID) != 0;
}

void __29__BiometricKitXPCServer_init__block_invoke_369(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) validateUsersKeybagUUIDs];

  objc_autoreleasePoolPop(v2);
}

- (id)identities
{
  v3 = self->_ongoingBiometricOperation;
  objc_sync_enter(v3);
  v4 = [MEMORY[0x277CBEA60] arrayWithArray:self->_ongoingBiometricOperation];
  objc_sync_exit(v3);

  return v4;
}

+ (void)initialize
{
  v2 = os_log_create("com.apple.BiometricKit", "Daemon-Common");
  v3 = __osLog;
  __osLog = v2;

  v4 = __osLog;
  if (!__osLog)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[BiometricKitXPCServer initialize];
    }

    v4 = __osLog;
  }

  objc_storeStrong(&__osLogTrace, v4);
}

- (BiometricKitXPCServer)init
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "BiometricKitXPCServer::init\n", buf, 2u);
  }

  v5 = dispatch_get_global_queue(0, 0);
  v62 = MEMORY[0x277D85DD0];
  v63 = 3221225472;
  v64 = __29__BiometricKitXPCServer_init__block_invoke;
  v65 = &unk_2784FA3A0;
  v6 = self;
  v66 = v6;
  v6->_osStateHandle = os_state_add_handler();

  v61.receiver = v6;
  v61.super_class = BiometricKitXPCServer;
  v7 = [(BiometricKitXPCServer *)&v61 init];
  if (v7)
  {
    v8 = *MEMORY[0x277CD2898];
    v9 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
    *(v7 + 18) = v9;
    if (v9)
    {
      IONotificationPortSetDispatchQueue(v9, MEMORY[0x277D85CD0]);
      v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v11 = *(v7 + 2);
      *(v7 + 2) = v10;

      if (*(v7 + 2))
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v13 = *(v7 + 20);
        *(v7 + 20) = v12;

        if (*(v7 + 20))
        {
          v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v15 = *(v7 + 21);
          *(v7 + 21) = v14;

          if (*(v7 + 21))
          {
            v16 = [[ActivityTracker alloc] initWithDescription:@"com.apple.biometrickitd.ongoingBiometricOperation"];
            v17 = *(v7 + 24);
            *(v7 + 24) = v16;

            v18 = [[ActivityTracker alloc] initWithDescription:@"com.apple.biometrickitd.ongoingCatacomSaveTimer"];
            v19 = *(v7 + 23);
            *(v7 + 23) = v18;

            v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v21 = *(v7 + 25);
            *(v7 + 25) = v20;

            if (*(v7 + 25))
            {
              v22 = objc_alloc_init(MEMORY[0x277CCAC60]);
              v23 = *(v7 + 26);
              *(v7 + 26) = v22;

              if (*(v7 + 26))
              {
                v24 = [MEMORY[0x277CBEB58] set];
                v25 = *(v7 + 31);
                *(v7 + 31) = v24;

                if (*(v7 + 31))
                {
                  v26 = dispatch_queue_create("com.apple.biometrickitd.abcQueue", 0);
                  v27 = *(v7 + 30);
                  *(v7 + 30) = v26;

                  if (*(v7 + 30))
                  {
                    if ([v7 initAutoBugCapture])
                    {
                      v28 = (__osLog ? __osLog : v3);
                      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_223E00000, v28, OS_LOG_TYPE_ERROR, "Failed to initialize BiometricAutoBugCapture. On systems without SymptomDiagnosticReporter this is expected behavior.\n", buf, 2u);
                      }
                    }

                    v29 = [EntitlementABCIssueReporter alloc];
                    v30 = [v7 biometricABC];
                    v31 = [(EntitlementABCIssueReporter *)v29 initWithBiometricABC:v30];
                    [v7 setReporter:v31];

                    v32 = [BKCatacomb catacombWithDir:@"/var/root/Library/Catacomb/"];
                    v33 = *(v7 + 27);
                    *(v7 + 27) = v32;

                    v34 = *(v7 + 27);
                    if (v34)
                    {
                      [v34 recover];
                      v35 = objc_alloc_init(CatacombStateCache);
                      v36 = *(v7 + 28);
                      *(v7 + 28) = v35;

                      if (*(v7 + 28))
                      {
                        v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
                        v38 = *(v7 + 14);
                        *(v7 + 14) = v37;

                        if (*(v7 + 14))
                        {
                          v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
                          v40 = *(v7 + 15);
                          *(v7 + 15) = v39;

                          if (*(v7 + 15))
                          {
                            *(v7 + 40) = notify_register_check("com.apple.BiometricKit.activeOperation", v7 + 9) == 0;
                            v41 = dispatch_queue_create("com.apple.biometrickitd.activeOpNtf", 0);
                            v42 = *(v7 + 6);
                            *(v7 + 6) = v41;

                            if (*(v7 + 6))
                            {
                              [v7 updateActiveOperationNotification];
                              *(v7 + 76) = notify_register_check("com.apple.BiometricKit.enrollmentChanged", v7 + 18) == 0;
                              [v7 cacheUserAccountsInfo];
                              *(v7 + 88) = notify_register_check("com.apple.BiometricKit.lockoutStateChanged", v7 + 21) == 0;
                              *(v7 + 96) = notify_register_check("com.apple.BiometricKit.expressModeStateChanged", v7 + 23) == 0;
                              *(v7 + 136) = notify_register_check("com.apple.BiometricKit.connectedAccessoriesChanged", v7 + 33) == 0;
                              v43 = dispatch_queue_create("com.apple.biometrickitd.cmd", 0);
                              v44 = *(v7 + 19);
                              *(v7 + 19) = v43;

                              if (*(v7 + 19))
                              {
                                MatchingService = IOServiceGetMatchingService(v8, &unk_28374C4F0);
                                *(v7 + 15) = MatchingService;
                                if (MatchingService || ![(BiometricKitXPCServer *)v7 + 15 init])
                                {
                                  v46 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
                                  v47 = dispatch_queue_attr_make_with_qos_class(v46, QOS_CLASS_BACKGROUND, 0);
                                  v48 = dispatch_queue_create("com.apple.biometrickitd.backlight", v47);

                                  handler[0] = MEMORY[0x277D85DD0];
                                  handler[1] = 3221225472;
                                  handler[2] = __29__BiometricKitXPCServer_init__block_invoke_365;
                                  handler[3] = &unk_2784FA3C8;
                                  v60 = v7;
                                  if (notify_register_dispatch("com.apple.iokit.hid.displayStatus", v7 + 16, v48, handler))
                                  {
                                    [BiometricKitXPCServer init];
                                  }
                                }

                                *(v7 + 17) = -1;
                                v57[0] = MEMORY[0x277D85DD0];
                                v57[1] = 3221225472;
                                v57[2] = __29__BiometricKitXPCServer_init__block_invoke_369;
                                v57[3] = &unk_2784FA3C8;
                                v49 = v7;
                                v58 = v49;
                                v50 = MEMORY[0x277D85CD0];
                                notify_register_dispatch("com.apple.mobile.keybagd.lock_status", v7 + 32, MEMORY[0x277D85CD0], v57);

                                v51 = [MEMORY[0x277D77BF8] sharedManager];
                                [v51 registerUserListUpdateObserver:v49];

                                DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
                                CFNotificationCenterAddObserver(DarwinNotifyCenter, v49, __PasscodeChangedNotificationCallback, @"com.apple.managedconfiguration.passcodechanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
                                if (__osLogTrace)
                                {
                                  v53 = __osLogTrace;
                                }

                                else
                                {
                                  v53 = v3;
                                }

                                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
                                {
                                  *buf = 138412290;
                                  v68 = v49;
                                  _os_log_impl(&dword_223E00000, v53, OS_LOG_TYPE_DEBUG, "BiometricKitXPCServer::init -> %@\n", buf, 0xCu);
                                }

                                goto LABEL_36;
                              }

                              [BiometricKitXPCServer init];
                            }

                            else
                            {
                              [BiometricKitXPCServer init];
                            }
                          }

                          else
                          {
                            [BiometricKitXPCServer init];
                          }
                        }

                        else
                        {
                          [BiometricKitXPCServer init];
                        }
                      }

                      else
                      {
                        [BiometricKitXPCServer init];
                      }
                    }

                    else
                    {
                      [BiometricKitXPCServer init];
                    }
                  }

                  else
                  {
                    [BiometricKitXPCServer init];
                  }
                }

                else
                {
                  [BiometricKitXPCServer init];
                }
              }

              else
              {
                [BiometricKitXPCServer init];
              }
            }

            else
            {
              [BiometricKitXPCServer init];
            }
          }

          else
          {
            [BiometricKitXPCServer init];
          }
        }

        else
        {
          [BiometricKitXPCServer init];
        }
      }

      else
      {
        [BiometricKitXPCServer init];
      }
    }

    else
    {
      [BiometricKitXPCServer init];
    }
  }

  else
  {
    [BiometricKitXPCServer init];
  }

  if (__osLogTrace)
  {
    v56 = __osLogTrace;
  }

  else
  {
    v56 = v3;
  }

  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v68 = 0;
    _os_log_impl(&dword_223E00000, v56, OS_LOG_TYPE_ERROR, "BiometricKitXPCServer::init -> %@\n", buf, 0xCu);
  }

  v49 = 0;
LABEL_36:

  v54 = *MEMORY[0x277D85DE8];
  return v49;
}

uint64_t __29__BiometricKitXPCServer_init__block_invoke_365(uint64_t a1, int token)
{
  state64 = 0;
  result = notify_get_state(token, &state64);
  if (!result)
  {
    return [*(a1 + 32) displayStateChanged:state64 != 0];
  }

  return result;
}

- (int)initAutoBugCapture
{
  v3 = [[BiometricAutoBugCapture alloc] initWithDomain:@"BiometricSupport" process:@"biometrickitd" dispatchQueue:self->_biometricABC];
  catacombStateCache = self->_catacombStateCache;
  self->_catacombStateCache = v3;

  if (self->_catacombStateCache)
  {
    return 0;
  }

  [BiometricKitXPCServer initAutoBugCapture];
  return v6;
}

- (void)dealloc
{
  v3 = *&self->_connectedAccessoriesChgNtfTokenValid;
  if (v3)
  {
    IONotificationPortDestroy(v3);
  }

  osStateHandle = self->_osStateHandle;
  os_state_remove_handler();
  if (self->_activeOperationNtfTokenValid)
  {
    notify_cancel(self->_activeOperationNtfToken);
  }

  if (self->_enrollChgNtfTokenValid)
  {
    notify_cancel(self->_enrollChgNtfToken);
  }

  if (self->_userAccountsInfoValid)
  {
    notify_cancel(*&self->_userAccountsInfo.hasMultipleUserAccounts);
  }

  if (self->_lockoutChgNtfTokenValid)
  {
    notify_cancel(self->_lockoutChgNtfToken);
  }

  if (LOBYTE(self->_mkbLockStatusNtfToken) == 1)
  {
    notify_cancel(HIDWORD(self->_catacombUserKeybagUUIDs));
  }

  backlightService = self->_backlightService;
  if (backlightService)
  {
    IOObjectRelease(backlightService);
  }

  displayStatusNotifyToken = self->_displayStatusNotifyToken;
  if (displayStatusNotifyToken)
  {
    notify_cancel(displayStatusNotifyToken);
    self->_displayStatusNotifyToken = 0;
  }

  catacombUserKeybagUUIDs = self->_catacombUserKeybagUUIDs;
  if (catacombUserKeybagUUIDs)
  {
    notify_cancel(catacombUserKeybagUUIDs);
  }

  v8.receiver = self;
  v8.super_class = BiometricKitXPCServer;
  [(BiometricKitXPCServer *)&v8 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v82 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    *&buf[4] = v5;
    v74 = 2112;
    v75 = v5;
    v76 = 2048;
    v77 = v6;
    v78 = 2112;
    v79 = v6;
    _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_DEBUG, "listener:shouldAcceptNewConnection: %p(%@), %p(%@)\n", buf, 0x2Au);
  }

  v60 = v5;
  v67 = [v6 valueForEntitlement:@"com.apple.private.bmk.allow"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v67 BOOLValue])
  {
    if (isInternalBuild())
    {
      v8 = (__osLog ? __osLog : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = v8;
        v10 = [v6 processIdentifier];
        *buf = 67109120;
        *&buf[4] = v10;
        _os_log_impl(&dword_223E00000, v9, OS_LOG_TYPE_ERROR, "PID %d does have legacy entitlement com.apple.private.bmk.allow, please set one of fine grained entitlements com.apple.private.biometrickit.allow-*\n", buf, 8u);
      }
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v66 = [v6 valueForEntitlement:@"com.apple.private.biometrickit.allow-default"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v66 BOOLValue])
    {
      v11 = v11 | 2;
    }

    else
    {
      v11 = v11;
    }
  }

  v65 = [v6 valueForEntitlement:@"com.apple.private.biometrickit.allow-enroll"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v65 BOOLValue])
    {
      v11 = v11 | 4;
    }

    else
    {
      v11 = v11;
    }
  }

  v64 = [v6 valueForEntitlement:@"com.apple.private.biometrickit.allow-id-mgmt"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v64 BOOLValue])
    {
      v11 = v11 | 8;
    }

    else
    {
      v11 = v11;
    }
  }

  v63 = [v6 valueForEntitlement:@"com.apple.private.biometrickit.allow-match"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v63 BOOLValue])
    {
      v11 = v11 | 0x10;
    }

    else
    {
      v11 = v11;
    }
  }

  v62 = [v6 valueForEntitlement:@"com.apple.private.biometrickit.allow-config"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v62 BOOLValue])
    {
      v11 = v11 | 0x20;
    }

    else
    {
      v11 = v11;
    }
  }

  v61 = [v6 valueForEntitlement:@"com.apple.private.biometrickit.allow-internal"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v61 BOOLValue])
  {
    v11 = v11 | 0x40;
    goto LABEL_40;
  }

  if (v11)
  {
LABEL_40:
    if (listener_shouldAcceptNewConnection__onceToken != -1)
    {
      [BiometricKitXPCServer listener:shouldAcceptNewConnection:];
    }

    if (listener_shouldAcceptNewConnection__ifc)
    {
      if (listener_shouldAcceptNewConnection__delegateIfc)
      {
        v69 = objc_alloc_init(BiometricKitXPCExportedObject);
        if (v69)
        {
          v12 = [(BiometricKitXPCServer *)self biometricABC];
          v13 = [(BiometricKitXPCServer *)self reporter];
          [v13 setBiometricABC:v12];

          [(BiometricKitXPCExportedObject *)v69 setServer:self];
          [(BiometricKitXPCExportedObject *)v69 setConnection:v6];
          [(BiometricKitXPCExportedObject *)v69 setClientEntitlement:v11];
          [v6 setExportedInterface:listener_shouldAcceptNewConnection__ifc];
          [v6 setExportedObject:v69];
          [v6 setRemoteObjectInterface:listener_shouldAcceptNewConnection__delegateIfc];
          v14 = listener_shouldAcceptNewConnection__ifc;
          v15 = MEMORY[0x277CBEB98];
          v16 = objc_opt_class();
          v17 = objc_opt_class();
          v18 = objc_opt_class();
          v19 = objc_opt_class();
          v20 = objc_opt_class();
          v21 = [v15 setWithObjects:{v16, v17, v18, v19, v20, objc_opt_class(), 0}];
          [v14 setClasses:v21 forSelector:sel_match_options_async_client_replyBlock_ argumentIndex:0 ofReply:0];

          v22 = listener_shouldAcceptNewConnection__ifc;
          v23 = MEMORY[0x277CBEB98];
          v24 = objc_opt_class();
          v25 = objc_opt_class();
          v26 = objc_opt_class();
          v27 = objc_opt_class();
          v28 = objc_opt_class();
          v29 = objc_opt_class();
          v30 = [v23 setWithObjects:{v24, v25, v26, v27, v28, v29, objc_opt_class(), 0}];
          [v22 setClasses:v30 forSelector:sel_match_options_async_client_replyBlock_ argumentIndex:1 ofReply:0];

          v31 = listener_shouldAcceptNewConnection__ifc;
          v32 = MEMORY[0x277CBEB98];
          v33 = objc_opt_class();
          v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
          [v31 setClasses:v34 forSelector:sel_setPreferencesValue_forKey_client_replyBlock_ argumentIndex:0 ofReply:0];

          v35 = listener_shouldAcceptNewConnection__ifc;
          v36 = MEMORY[0x277CBEB98];
          v37 = objc_opt_class();
          v38 = objc_opt_class();
          v39 = objc_opt_class();
          v40 = objc_opt_class();
          v41 = objc_opt_class();
          v42 = objc_opt_class();
          v43 = [v36 setWithObjects:{v37, v38, v39, v40, v41, v42, objc_opt_class(), 0}];
          [v35 setClasses:v43 forSelector:sel_enroll_user_options_async_client_replyBlock_ argumentIndex:2 ofReply:0];

          v44 = listener_shouldAcceptNewConnection__ifc;
          v45 = MEMORY[0x277CBEB98];
          v46 = objc_opt_class();
          v47 = objc_opt_class();
          v48 = objc_opt_class();
          v49 = [v45 setWithObjects:{v46, v47, v48, objc_opt_class(), 0}];
          [v44 setClasses:v49 forSelector:sel_removePeriocularTemplatesWithOptions_async_client_replyBlock_ argumentIndex:0 ofReply:0];

          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v70[2] = __60__BiometricKitXPCServer_listener_shouldAcceptNewConnection___block_invoke_606;
          v70[3] = &unk_2784FA3F0;
          v70[4] = self;
          v50 = v69;
          v71 = v50;
          [v6 setInvalidationHandler:v70];

          v51 = self->_exportedObjects;
          objc_sync_enter(v51);
          [(NSMutableSet *)self->_exportedObjects addObject:v50];
          if (!self->_connectionsSuspended)
          {
            [v6 resume];
          }

          objc_sync_exit(v51);

          v52 = 1;
          goto LABEL_59;
        }

        [BiometricKitXPCServer listener:shouldAcceptNewConnection:];
      }

      else
      {
        [BiometricKitXPCServer listener:shouldAcceptNewConnection:];
      }
    }

    else
    {
      [BiometricKitXPCServer listener:shouldAcceptNewConnection:];
    }

    v50 = *buf;
    v52 = v72;
    goto LABEL_59;
  }

  if (__osLog)
  {
    v53 = __osLog;
  }

  else
  {
    v53 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
    v54 = v53;
    v55 = [v6 processIdentifier];
    *buf = 67109120;
    *&buf[4] = v55;
    _os_log_impl(&dword_223E00000, v54, OS_LOG_TYPE_ERROR, "PID %d is missing entitlement (com.apple.private.biometrickit.*), dropping connection.\n", buf, 8u);
  }

  if (__osLog)
  {
    v56 = __osLog;
  }

  else
  {
    v56 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    *&buf[4] = "acceptConnection";
    v74 = 2048;
    v75 = 0;
    v76 = 2080;
    v77 = &unk_223E5FC53;
    v78 = 2080;
    v79 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
    v80 = 1024;
    v81 = 1092;
    _os_log_impl(&dword_223E00000, v56, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
  }

  v50 = 0;
  v52 = 0;
LABEL_59:
  if (__osLogTrace)
  {
    v57 = __osLogTrace;
  }

  else
  {
    v57 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = v52;
    _os_log_impl(&dword_223E00000, v57, OS_LOG_TYPE_DEBUG, "listener:shouldAcceptNewConnection: -> %d\n", buf, 8u);
  }

  v58 = *MEMORY[0x277D85DE8];
  return v52;
}

uint64_t __60__BiometricKitXPCServer_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28374EFF0];
  v1 = listener_shouldAcceptNewConnection__ifc;
  listener_shouldAcceptNewConnection__ifc = v0;

  listener_shouldAcceptNewConnection__delegateIfc = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283755528];

  return MEMORY[0x2821F96F8]();
}

void __60__BiometricKitXPCServer_listener_shouldAcceptNewConnection___block_invoke_606(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 16);
  objc_sync_enter(v2);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [*(a1 + 40) clients];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) disconnectingClient:*(*(&v10 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  [*(a1 + 40) terminate];
  v7 = *(a1 + 32);
  if (*(v7 + 24) == 1)
  {
    v8 = [*(a1 + 40) connection];
    [v8 resume];

    v7 = *(a1 + 32);
  }

  [*(v7 + 16) removeObject:*(a1 + 40)];
  objc_sync_exit(v2);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)suspendAllConnections:(BOOL)a3
{
  v3 = a3;
  v27 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    connectionsSuspended = self->_connectionsSuspended;
    *buf = 67109376;
    v24 = v3;
    v25 = 1024;
    v26 = connectionsSuspended;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "suspendAllConnections: %d (_suspended:%d)\n", buf, 0xEu);
  }

  v8 = self->_exportedObjects;
  objc_sync_enter(v8);
  if (self->_connectionsSuspended != v3)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = self->_exportedObjects;
    v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          if (v3)
          {
            v14 = [v13 connection];
            [v14 suspend];
          }

          else
          {
            v14 = [v13 connection];
            [v14 resume];
          }
        }

        v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    self->_connectionsSuspended = v3;
  }

  objc_sync_exit(v8);

  if (__osLogTrace)
  {
    v15 = __osLogTrace;
  }

  else
  {
    v15 = v5;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = self->_connectionsSuspended;
    *buf = 67109120;
    v24 = v16;
    _os_log_impl(&dword_223E00000, v15, OS_LOG_TYPE_DEBUG, "suspendAllConnections: -> void (_suspended:%d)\n", buf, 8u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (os_state_data_s)osStateHandler:(os_state_hints_s *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    var0 = a3->var0;
    var1 = a3->var1;
    var2 = a3->var2;
    var3 = a3->var3;
    *buf = 67109890;
    *&buf[4] = var0;
    *&buf[8] = 2080;
    *&buf[10] = var1;
    v22 = 1024;
    v23 = var2;
    v24 = 1024;
    v25 = var3;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "osStateHandler: hints(osh_version:%d, osh_requestor:'%s', osh_api:%d, osh_reason:%d)\n", buf, 0x1Eu);
  }

  v11 = [(BiometricKitXPCServer *)self stateDictionaryWithHints:a3];
  if (v11)
  {
    v20 = 0;
    v12 = [MEMORY[0x277CCAC58] dataWithPropertyList:v11 format:200 options:0 error:&v20];
    v13 = v20;
    v14 = v13;
    if (v12)
    {
      if ([v12 length] >= 0xFFFFFFFF)
      {
        [BiometricKitXPCServer osStateHandler:];
      }

      else
      {
        v15 = malloc_type_calloc(1uLL, [v12 length] + 200, 0x1000040BEF03554uLL);
        if (v15)
        {
          v16 = v15;
          v15->var0 = 1;
          v15->var1.var1 = [v12 length];
          __strlcpy_chk();
          memcpy(v16->var4, [v12 bytes], objc_msgSend(v12, "length"));
LABEL_11:

          goto LABEL_13;
        }

        [BiometricKitXPCServer osStateHandler:];
      }
    }

    else
    {
      [(BiometricKitXPCServer *)v13 osStateHandler:buf];
    }

    v16 = *buf;
    goto LABEL_11;
  }

  v16 = 0;
LABEL_13:
  if (__osLogTrace)
  {
    v17 = __osLogTrace;
  }

  else
  {
    v17 = v5;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = v16;
    _os_log_impl(&dword_223E00000, v17, OS_LOG_TYPE_DEBUG, "osStateHandler: -> %p\n", buf, 0xCu);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)stateDictionaryWithHints:(os_state_hints_s *)a3
{
  if (a3->var2 == 3)
  {
    v3 = [MEMORY[0x277CF1BF0] sharedInstance];
    v4 = [v3 stateDictionary];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)createEnrollOperation
{
  v2 = objc_alloc_init(BiometricEnrollOperation);

  return v2;
}

- (int)startEnrollOperation:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "startEnrollOperation: %@\n", &v12, 0xCu);
  }

  if (v4)
  {
    if (-[BiometricKitXPCServer isValidUser:](self, "isValidUser:", [v4 userID]))
    {
      [BiometricKitXPCServer startEnrollOperation:];
    }

    else if (-[BiometricKitXPCServer checkCatacombForUser:](self, "checkCatacombForUser:", [v4 userID]))
    {
      [BiometricKitXPCServer startEnrollOperation:];
    }

    else
    {
      if (![(BiometricKitXPCServer *)self performEnrollCommand:v4])
      {
        if (__osLogTrace)
        {
          v7 = __osLogTrace;
        }

        else
        {
          v7 = v5;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v12 = 67109120;
          LODWORD(v13) = 0;
          _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_DEBUG, "startEnrollOperation: -> err:0x%x\n", &v12, 8u);
        }

        v8 = 0;
        goto LABEL_16;
      }

      [BiometricKitXPCServer startEnrollOperation:];
    }
  }

  else
  {
    [BiometricKitXPCServer startEnrollOperation:];
  }

  v8 = v12;
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v5;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = 67109120;
    LODWORD(v13) = v8;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_ERROR, "startEnrollOperation: -> err:0x%x\n", &v12, 8u);
  }

LABEL_16:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (int)match:(id)a3 withOptions:(id)a4 withClient:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = v8;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_223E00000, v12, OS_LOG_TYPE_DEFAULT, "match:withOptions:withClient: %@, %@, %@\n", buf, 0x20u);
  }

  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  notify_post("com.apple.BiometricKit.matchOperationStartAttempted");
  if (isEphemeralMultiUser())
  {
    [BiometricKitXPCServer match:withOptions:withClient:];
  }

  else
  {
    v13 = [(BiometricKitXPCServer *)self createMatchOperation];
    if (v13)
    {
      v14 = v13;
      v15 = [(BiometricKitXPCServer *)self initMatchOperation:v13 filter:v8 options:v9 client:v10];
      if (v15)
      {
        [(BiometricKitXPCServer *)v15 match:v14 withOptions:v15 withClient:buf, &v23];
      }

      else
      {
        v16 = [(BiometricKitXPCServer *)self processBioOperation:v14];
        if (!v16)
        {
          v17 = 0;
          goto LABEL_13;
        }

        [(BiometricKitXPCServer *)v16 match:v14 withOptions:v16 withClient:buf, &v23];
      }
    }

    else
    {
      [BiometricKitXPCServer match:withOptions:withClient:];
    }
  }

  v14 = *buf;
  v17 = v23;
LABEL_13:
  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if (__osLogTrace)
  {
    v18 = __osLogTrace;
  }

  else
  {
    v18 = v11;
  }

  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v17;
      v19 = v18;
      v20 = OS_LOG_TYPE_ERROR;
LABEL_23:
      _os_log_impl(&dword_223E00000, v19, v20, "match:withOptions:withClient: -> err:0x%x\n", buf, 8u);
    }
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = 0;
    v19 = v18;
    v20 = OS_LOG_TYPE_DEBUG;
    goto LABEL_23;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)createMatchOperation
{
  v2 = objc_alloc_init(BiometricMatchOperation);

  return v2;
}

- (int)initMatchOperation:(id)a3 filter:(id)a4 options:(id)a5 client:(id)a6
{
  v69 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  if (!v10)
  {
    [BiometricKitXPCServer initMatchOperation:filter:options:client:];
LABEL_67:
    v29 = v57;
    v30 = *buf;
    Data = v58;
    goto LABEL_62;
  }

  if (!v13)
  {
    [BiometricKitXPCServer initMatchOperation:filter:options:client:];
    goto LABEL_67;
  }

  if (v11)
  {
    *buf = 0xFFFFFFFFLL;
    Integer = dictionaryGetInteger();
    if (Integer)
    {
      Data = Integer;
      [BiometricKitXPCServer initMatchOperation:filter:options:client:];
      v29 = 0;
      v30 = 0;
      goto LABEL_62;
    }
  }

  if ([(BiometricKitXPCServer *)self hasMultipleUserAccounts])
  {
    v16 = 0xFFFFFFFFLL;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = [(BiometricKitXPCServer *)self currentAccountUserID];
    if (v12)
    {
LABEL_7:
      v17 = [v12 objectForKeyedSubscript:@"BKOptionMatchSelectedIdentities"];
      v49 = v17;
      v44 = self;
      v48 = v16;
      if (v17)
      {
        v18 = v17;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = [MEMORY[0x277CBEB28] dataWithLength:{20 * objc_msgSend(v18, "count") + 4}];
          if (v19)
          {
            v46 = v14;
            v47 = v12;
            v45 = v19;
            v20 = [v45 mutableBytes];
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v53 = 0u;
            v21 = v18;
            v22 = [v21 countByEnumeratingWithState:&v50 objects:v68 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v51;
              v25 = v20 + 1;
              while (2)
              {
                for (i = 0; i != v23; ++i)
                {
                  if (*v51 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v27 = *(*(&v50 + 1) + 8 * i);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    [BiometricKitXPCServer initMatchOperation:v21 filter:? options:? client:?];
                    v30 = 0;
                    Data = 258;
                    v12 = v47;
                    v29 = v45;
                    v14 = v46;
                    v18 = v49;
                    goto LABEL_64;
                  }

                  v25[5 * *v20] = [v27 userID];
                  v28 = [v27 uuid];
                  [v28 getUUIDBytes:&v25[5 * *v20 + 1]];

                  ++*v20;
                }

                v23 = [v21 countByEnumeratingWithState:&v50 objects:v68 count:16];
                if (v23)
                {
                  continue;
                }

                break;
              }
            }

            v12 = v47;
            v29 = v45;
            v14 = v46;
LABEL_22:
            Bool = dictionaryGetBool();
            if (Bool)
            {
              Data = Bool;
              if (__osLog)
              {
                v42 = __osLog;
              }

              else
              {
                v42 = MEMORY[0x277D86220];
              }

              v18 = v49;
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                *buf = 136316162;
                *&buf[4] = "err == 0 ";
                v60 = 2048;
                v61 = Data;
                v62 = 2080;
                v63 = &unk_223E5FC53;
                v64 = 2080;
                v65 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
                v66 = 1024;
                v67 = 1464;
                _os_log_impl(&dword_223E00000, v42, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
              }

              v30 = 0;
              goto LABEL_64;
            }

            Data = dictionaryGetData();
            v35 = 0;
            v30 = v35;
            if (Data)
            {
              if (__osLog)
              {
                v43 = __osLog;
              }

              else
              {
                v43 = MEMORY[0x277D86220];
              }

              v18 = v49;
              if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_64;
              }

              *buf = 136316162;
              *&buf[4] = "err == 0 ";
              v60 = 2048;
              v61 = Data;
              v62 = 2080;
              v63 = &unk_223E5FC53;
              v64 = 2080;
              v65 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
              v66 = 1024;
              v67 = 1467;
            }

            else
            {
              v32 = v35 != 0;
              v36 = dictionaryGetBool();
              v18 = v49;
              if (v36)
              {
                Data = v36;
                if (__osLog)
                {
                  v43 = __osLog;
                }

                else
                {
                  v43 = MEMORY[0x277D86220];
                }

                if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_64;
                }

                *buf = 136316162;
                *&buf[4] = "err == 0 ";
                v60 = 2048;
                v61 = Data;
                v62 = 2080;
                v63 = &unk_223E5FC53;
                v64 = 2080;
                v65 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
                v66 = 1024;
                v67 = 1473;
              }

              else
              {
                v37 = dictionaryGetBool();
                if (!v37)
                {
                  *buf = 0;
                  if (dictionaryGetInteger())
                  {
                    [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                  }

                  else
                  {
                    v31 = *buf;
                    if (*&buf[4])
                    {
                      [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                    }

                    else if (dictionaryGetBool())
                    {
                      [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                    }

                    else
                    {
                      v38 = [v12 objectForKeyedSubscript:@"BKOptionMatchAuthTokenToBypassPasscodeBiolockout"];

                      if (v38)
                      {
                        LOBYTE(v55) = 1;
                      }

                      if (v56 == 1)
                      {
                        v16 = v48;
                        if (HIBYTE(v56) == 1)
                        {
                          [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                        }

                        else if (v30)
                        {
                          [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                        }

                        else if (HIBYTE(v55) == 1)
                        {
                          [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                        }

                        else if (v55 == 1)
                        {
                          [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                        }

                        else
                        {
                          if (!v29)
                          {
                            v54 = -101;
LABEL_48:

                            goto LABEL_49;
                          }

                          [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                        }
                      }

                      else
                      {
                        v16 = v48;
                        if (dictionaryGetInteger())
                        {
                          [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                        }

                        else
                        {
                          v39 = v54;
                          if (v54 >= 100)
                          {
                            v39 = 100;
                          }

                          if (v39 <= -100)
                          {
                            v39 = -100;
                          }

                          v54 = v39;
                          if ((v55 & 1) == 0)
                          {
                            goto LABEL_48;
                          }

                          if (HIBYTE(v56) == 1)
                          {
                            [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                          }

                          else if (v30)
                          {
                            [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                          }

                          else if (v56 == 1)
                          {
                            [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                          }

                          else
                          {
                            [v10 setNoBioLockoutUserID:v48];
                            if (!-[BiometricKitXPCServer parseAuthDict:toAuthData:](v44, "parseAuthDict:toAuthData:", v12, [v10 noBioLockoutAuthData]))
                            {
                              goto LABEL_48;
                            }

                            [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                          }
                        }
                      }
                    }
                  }

                  Data = v57;
LABEL_64:

                  goto LABEL_62;
                }

                Data = v37;
                if (__osLog)
                {
                  v43 = __osLog;
                }

                else
                {
                  v43 = MEMORY[0x277D86220];
                }

                if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_64;
                }

                *buf = 136316162;
                *&buf[4] = "err == 0 ";
                v60 = 2048;
                v61 = Data;
                v62 = 2080;
                v63 = &unk_223E5FC53;
                v64 = 2080;
                v65 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
                v66 = 1024;
                v67 = 1476;
              }
            }

            _os_log_impl(&dword_223E00000, v43, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
            goto LABEL_64;
          }

          [BiometricKitXPCServer initMatchOperation:filter:options:client:];
        }

        else
        {
          [BiometricKitXPCServer initMatchOperation:filter:options:client:];
        }

        v29 = v57;
        v30 = *buf;
        Data = v58;
        goto LABEL_64;
      }

      v29 = 0;
      goto LABEL_22;
    }
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
LABEL_49:
  [v10 setUserID:{v16, v44}];
  [v10 setSelectedIdentitiesBlob:v29];
  [v10 setPriority:v54];
  [v10 setForUnlock:HIBYTE(v56)];
  [v10 setForCredentialSet:v32];
  [v10 setAcmContext:v30];
  [v10 setForPreArm:v56];
  [v10 setStopOnSuccess:HIBYTE(v55)];
  [v10 setUseCase:v31];
  [v10 setNoBioLockout:v55];
  [v10 setClient:v14];
  if (v29)
  {
    [v10 setProcessedFlags:{objc_msgSend(v10, "processedFlags") | 0x4000}];
  }

  if (HIBYTE(v56) == 1)
  {
    [v10 setProcessedFlags:{objc_msgSend(v10, "processedFlags") | 1}];
  }

  if (v32)
  {
    [v10 setProcessedFlags:{objc_msgSend(v10, "processedFlags") | 8}];
  }

  if (v56 == 1)
  {
    [v10 setProcessedFlags:{objc_msgSend(v10, "processedFlags") | 0x100}];
  }

  if (HIBYTE(v55) == 1)
  {
    [v10 setProcessedFlags:{objc_msgSend(v10, "processedFlags") | 0x80}];
  }

  if (v55 == 1)
  {
    [v10 setProcessedFlags:{objc_msgSend(v10, "processedFlags") | 0x10}];
  }

  Data = 0;
LABEL_62:

  v40 = *MEMORY[0x277D85DE8];
  return Data;
}

- (int)startMatchOperation:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "startMatchOperation: %@\n", &v14, 0xCu);
  }

  if (!v4)
  {
    [BiometricKitXPCServer startMatchOperation:];
    goto LABEL_28;
  }

  if (![(BiometricKitXPCServer *)self identitiesCount]&& (self->_mkbLockStatusNtfToken & 0x10000) == 0)
  {
    [BiometricKitXPCServer startMatchOperation:];
    goto LABEL_28;
  }

  if (![(BiometricKitXPCServer *)self validateAllUsers])
  {
    if ([v4 userID] == -1)
    {
      if (![(BiometricKitXPCServer *)self identitiesCount])
      {
        [BiometricKitXPCServer startMatchOperation:];
        goto LABEL_28;
      }
    }

    else
    {
      v7 = -[BiometricKitXPCServer identitiesOfUser:](self, "identitiesOfUser:", [v4 userID]);
      v8 = [v7 count];

      if (!v8)
      {
        [BiometricKitXPCServer startMatchOperation:];
LABEL_28:
        v10 = v14;
        if (__osLogTrace)
        {
          v13 = __osLogTrace;
        }

        else
        {
          v13 = v5;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = 67109120;
          LODWORD(v15) = v10;
          _os_log_impl(&dword_223E00000, v13, OS_LOG_TYPE_ERROR, "startMatchOperation: -> err:0x%x\n", &v14, 8u);
        }

        goto LABEL_22;
      }
    }
  }

  if (-[BiometricKitXPCServer checkCatacombForUser:](self, "checkCatacombForUser:", [v4 userID]))
  {
    [BiometricKitXPCServer startMatchOperation:];
    goto LABEL_28;
  }

  if ([(BiometricKitXPCServer *)self performMatchCommand:v4])
  {
    [BiometricKitXPCServer startMatchOperation:];
    goto LABEL_28;
  }

  if (__osLogTrace)
  {
    v9 = __osLogTrace;
  }

  else
  {
    v9 = v5;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v14 = 67109120;
    LODWORD(v15) = 0;
    _os_log_impl(&dword_223E00000, v9, OS_LOG_TYPE_DEBUG, "startMatchOperation: -> err:0x%x\n", &v14, 8u);
  }

  v10 = 0;
LABEL_22:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (int)detectPresenceWithOptions:(id)a3 withClient:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v9 = __osLogTrace;
  }

  else
  {
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_223E00000, v9, OS_LOG_TYPE_DEFAULT, "detectPresenceWithOptions:withClient: %@, %@\n", &v17, 0x16u);
  }

  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  v10 = [(BiometricKitXPCServer *)self createPresenceDetectOperation];
  if (v10)
  {
    if ([(BiometricKitXPCServer *)self initPresenceDetectOperation:v10 options:v6 client:v7])
    {
      [BiometricKitXPCServer detectPresenceWithOptions:withClient:];
    }

    else
    {
      if (![(BiometricKitXPCServer *)self processBioOperation:v10])
      {
        v11 = 0;
        goto LABEL_12;
      }

      [BiometricKitXPCServer detectPresenceWithOptions:withClient:];
    }
  }

  else
  {
    [BiometricKitXPCServer detectPresenceWithOptions:withClient:];
  }

  v11 = v17;
LABEL_12:
  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = v8;
  }

  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = 67109120;
      LODWORD(v18) = v11;
      v13 = v12;
      v14 = OS_LOG_TYPE_ERROR;
LABEL_22:
      _os_log_impl(&dword_223E00000, v13, v14, "detectPresenceWithOptions:withClient: -> err:0x%x\n", &v17, 8u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v17 = 67109120;
    LODWORD(v18) = 0;
    v13 = v12;
    v14 = OS_LOG_TYPE_DEBUG;
    goto LABEL_22;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)createPresenceDetectOperation
{
  v2 = objc_alloc_init(BiometricPresenceDetectOperation);

  return v2;
}

- (int)initPresenceDetectOperation:(id)a3 options:(id)a4 client:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v7)
  {
    [BiometricKitXPCServer initPresenceDetectOperation:options:client:];
    goto LABEL_12;
  }

  if (!v9)
  {
    [BiometricKitXPCServer initPresenceDetectOperation:options:client:];
    goto LABEL_12;
  }

  if (v8)
  {
    if (dictionaryGetInteger())
    {
      [BiometricKitXPCServer initPresenceDetectOperation:options:client:];
    }

    else
    {
      if (!dictionaryGetBool())
      {
        goto LABEL_6;
      }

      [BiometricKitXPCServer initPresenceDetectOperation:options:client:];
    }

LABEL_12:
    v11 = v13;
    goto LABEL_7;
  }

LABEL_6:
  [v7 setPriority:0x8000000000000064];
  [v7 setClient:v10];
  v11 = 0;
LABEL_7:

  return v11;
}

- (int)startPresenceDetectOperation:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "startPresenceDetectOperation: %@\n", &v11, 0xCu);
  }

  v7 = [(BiometricKitXPCServer *)self performPresenceDetectCommand:v4];
  if (v7)
  {
    [BiometricKitXPCServer startPresenceDetectOperation:];
  }

  else
  {
    if (__osLogTrace)
    {
      v8 = __osLogTrace;
    }

    else
    {
      v8 = v5;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = 67109120;
      LODWORD(v12) = 0;
      _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEBUG, "startPresenceDetectOperation: -> err:0x%x\n", &v11, 8u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int)cancelWithClient:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_DEFAULT, "cancelWithClient: %@\n", buf, 0xCu);
  }

  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  v6 = self->_cmdDispatchQueue;
  objc_sync_enter(v6);
  activeBioOpsQueue = self->_activeBioOpsQueue;
  if (activeBioOpsQueue)
  {
    if ([(NSMutableArray *)activeBioOpsQueue status]!= 2 || ([(NSMutableArray *)self->_activeBioOpsQueue client], v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 == v4, v8, !v9))
    {
      v10 = self->_bioOpsQueue;
      objc_sync_enter(v10);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v11 = self->_bioOpsQueue;
      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v12)
      {
        v13 = *v26;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v25 + 1) + 8 * i);
            v16 = [v15 client];
            v17 = v16 == v4;

            if (v17)
            {
              [v15 setStatus:4];

              objc_sync_exit(v10);
              goto LABEL_26;
            }
          }

          v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      objc_sync_exit(v10);
      [(BiometricKitXPCServer *)self removeBioOperationOfClient:v4];
      goto LABEL_26;
    }

    v18 = self->_activeBioOpsQueue;
    if (v18)
    {
      [(NSMutableArray *)v18 setStatus:4];
    }
  }

  if ([(OS_dispatch_queue *)self->_cmdDispatchQueue count])
  {
    [(BiometricKitXPCServer *)self resumeQueuedBioOperation];
LABEL_26:
    v19 = 0;
    goto LABEL_27;
  }

  if (![(BiometricKitXPCServer *)self performCancelCommand])
  {
    goto LABEL_26;
  }

  [BiometricKitXPCServer cancelWithClient:];
  v19 = *buf;
LABEL_27:
  objc_sync_exit(v6);

  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = MEMORY[0x277D86220];
  }

  if (v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v19;
      v21 = v20;
      v22 = OS_LOG_TYPE_ERROR;
LABEL_37:
      _os_log_impl(&dword_223E00000, v21, v22, "cancelWithClient -> err:0x%x\n", buf, 8u);
    }
  }

  else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v21 = v20;
    v22 = OS_LOG_TYPE_DEBUG;
    goto LABEL_37;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)registerDelegate:(BOOL)a3 withClient:(id)a4
{
  v4 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (__osLog)
  {
    v6 = __osLog;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEFAULT, "registerDelegate:withClient: %d, %@ -> void\n", v8, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)notifyAppIsInactive:(BOOL)a3 withClient:(id)a4
{
  v4 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (__osLog)
  {
    v6 = __osLog;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEFAULT, "notifyAppIsInactive:withClient: %d, %@ -> void\n", v8, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (int)startBioOperation:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v21 = 138412290;
    v22 = v5;
    _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_DEBUG, "startBioOperation: %@\n", &v21, 0xCu);
  }

  if (!v5)
  {
    [BiometricKitXPCServer startBioOperation:];
    v11 = v21;
    goto LABEL_45;
  }

  v8 = self->_bioOpsQueue;
  objc_sync_enter(v8);
  [(NSMutableArray *)self->_bioOpsQueue addObject:v5];
  objc_sync_exit(v8);

  v9 = [v5 type];
  switch(v9)
  {
    case 1:
      v10 = [(BiometricKitXPCServer *)self startEnrollOperation:v5];
      break;
    case 2:
      v10 = [(BiometricKitXPCServer *)self startMatchOperation:v5];
      break;
    case 3:
      v10 = [(BiometricKitXPCServer *)self startPresenceDetectOperation:v5];
      break;
    default:
      if (__osLog)
      {
        v13 = __osLog;
      }

      else
      {
        v13 = v6;
      }

      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v11 = 258;
        goto LABEL_45;
      }

      v21 = 136316162;
      v22 = "err == 0 ";
      v23 = 2048;
      v11 = 258;
      v24 = 258;
      v25 = 2080;
      v26 = &unk_223E5FC53;
      v27 = 2080;
      v28 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v29 = 1024;
      v30 = 1819;
LABEL_37:
      _os_log_impl(&dword_223E00000, v13, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v21, 0x30u);
LABEL_45:
      v17 = self->_bioOpsQueue;
      objc_sync_enter(v17);
      [(NSMutableArray *)self->_bioOpsQueue removeObject:v5];
      objc_sync_exit(v17);

      if (__osLogTrace)
      {
        v18 = __osLogTrace;
      }

      else
      {
        v18 = v6;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v21 = 67109120;
        LODWORD(v22) = v11;
        _os_log_impl(&dword_223E00000, v18, OS_LOG_TYPE_ERROR, "startBioOperation: -> err:0x%x\n", &v21, 8u);
      }

      goto LABEL_50;
  }

  v11 = v10;
  if (v10)
  {
    activeBioOpsQueue = self->_activeBioOpsQueue;
    if (activeBioOpsQueue && ([(NSMutableArray *)activeBioOpsQueue status]== 3 || [(NSMutableArray *)self->_activeBioOpsQueue status]== 4))
    {
      if ([(NSMutableArray *)self->_activeBioOpsQueue status]== 3)
      {
        [(OS_dispatch_queue *)self->_cmdDispatchQueue insertObject:self->_activeBioOpsQueue atIndex:0];
      }

      [(BiometricKitXPCServer *)self performCancelCommand];
    }

    if (__osLog)
    {
      v13 = __osLog;
    }

    else
    {
      v13 = v6;
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    v21 = 136316162;
    v22 = "err == 0 ";
    v23 = 2048;
    v24 = v11;
    v25 = 2080;
    v26 = &unk_223E5FC53;
    v27 = 2080;
    v28 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
    v29 = 1024;
    v30 = 1860;
    goto LABEL_37;
  }

  v14 = self->_bioOpsQueue;
  objc_sync_enter(v14);
  if (![(NSMutableArray *)self->_bioOpsQueue count])
  {
    [(BiometricKitXPCServer *)self performCancelCommand];
    if (__osLog)
    {
      v16 = __osLog;
    }

    else
    {
      v16 = v6;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = 136316162;
      v22 = "err == 0 ";
      v23 = 2048;
      v24 = 257;
      v25 = 2080;
      v26 = &unk_223E5FC53;
      v27 = 2080;
      v28 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v29 = 1024;
      v30 = 1834;
      _os_log_impl(&dword_223E00000, v16, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v21, 0x30u);
    }

    objc_sync_exit(v14);

    v11 = 257;
    goto LABEL_45;
  }

  objc_sync_exit(v14);

  [v5 setStatus:2];
  objc_storeStrong(&self->_activeBioOpsQueue, a3);
  [(ActivityTracker *)self->_ongoingCatacombSaveTimer setActive:1];
  if (__osLogTrace)
  {
    v15 = __osLogTrace;
  }

  else
  {
    v15 = v6;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v21 = 67109120;
    LODWORD(v22) = 0;
    _os_log_impl(&dword_223E00000, v15, OS_LOG_TYPE_DEBUG, "startBioOperation: -> err:0x%x\n", &v21, 8u);
  }

  v11 = 0;
LABEL_50:

  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)removeBioOperationOfClient:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v20 = v4;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "removeBioOperationOfClient: %@\n", buf, 0xCu);
  }

  v7 = self->_cmdDispatchQueue;
  objc_sync_enter(v7);
  cmdDispatchQueue = self->_cmdDispatchQueue;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __52__BiometricKitXPCServer_removeBioOperationOfClient___block_invoke;
  v16 = &unk_2784FA418;
  v9 = v4;
  v17 = v9;
  v18 = self;
  v10 = [(OS_dispatch_queue *)cmdDispatchQueue indexOfObjectPassingTest:&v13];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(OS_dispatch_queue *)self->_cmdDispatchQueue removeObjectAtIndex:v10, v13, v14, v15, v16];
  }

  objc_sync_exit(v7);
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v5;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEBUG, "removeBioOperationOfClient: -> void\n", buf, 2u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

BOOL __52__BiometricKitXPCServer_removeBioOperationOfClient___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = [v6 client];

  if (v7 == v8)
  {
    if ([v6 status] == 3)
    {
      [*(a1 + 40) sendStatusMessage:objc_msgSend(v6 toClient:{"taskResumedMessage"), *(a1 + 32)}];
    }

    [*(a1 + 40) sendStatusMessage:objc_msgSend(v6 toClient:{"cancelledMessage"), *(a1 + 32)}];
    *a4 = 1;
  }

  return v7 == v8;
}

- (int)pauseBioOperation:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v20 = v4;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "pauseBioOperation: %@\n", buf, 0xCu);
  }

  if (v4)
  {
    [v4 setStatus:3];
    v7 = [v4 taskPausedMessage];
    v8 = [v4 client];
    [(BiometricKitXPCServer *)self sendStatusMessage:v7 toClient:v8];

    cmdDispatchQueue = self->_cmdDispatchQueue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __43__BiometricKitXPCServer_pauseBioOperation___block_invoke;
    v17[3] = &unk_2784FA440;
    v10 = v4;
    v18 = v10;
    v11 = [(OS_dispatch_queue *)cmdDispatchQueue indexOfObjectPassingTest:v17];

    v12 = self->_cmdDispatchQueue;
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(OS_dispatch_queue *)v12 addObject:v10];
    }

    else
    {
      [(OS_dispatch_queue *)v12 insertObject:v10 atIndex:v11];
    }

    if (__osLogTrace)
    {
      v13 = __osLogTrace;
    }

    else
    {
      v13 = v5;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v20) = 0;
      _os_log_impl(&dword_223E00000, v13, OS_LOG_TYPE_DEBUG, "pauseBioOperation: -> err:0x%x\n", buf, 8u);
    }

    v14 = 0;
  }

  else
  {
    [BiometricKitXPCServer pauseBioOperation:];
    v14 = *buf;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

BOOL __43__BiometricKitXPCServer_pauseBioOperation___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 priority];
  v8 = [v6 priority];

  if (v7 >= v8)
  {
    *a4 = 1;
  }

  return v7 >= v8;
}

- (int)processBioOperation:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v26 = 138412290;
    v27 = v4;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "processBioOperation: %@\n", &v26, 0xCu);
  }

  if (!v4)
  {
    [BiometricKitXPCServer processBioOperation:];
LABEL_40:
    v20 = v26;
    goto LABEL_26;
  }

  v7 = [v4 client];
  v8 = v7 == 0;

  if (v8)
  {
    [BiometricKitXPCServer processBioOperation:];
    goto LABEL_40;
  }

  [v4 setStatus:1];
  v9 = self->_cmdDispatchQueue;
  objc_sync_enter(v9);
  v10 = [v4 client];
  [(BiometricKitXPCServer *)self removeBioOperationOfClient:v10];

  activeBioOpsQueue = self->_activeBioOpsQueue;
  if (!activeBioOpsQueue)
  {
    goto LABEL_23;
  }

  v12 = [(NSMutableArray *)activeBioOpsQueue client];
  v13 = [v4 client];
  v14 = v12 == v13;

  v15 = self->_activeBioOpsQueue;
  if (!v14)
  {
    v16 = [(NSMutableArray *)v15 priority];
    if (v16 > [v4 priority])
    {
      v17 = [(BiometricKitXPCServer *)self pauseBioOperation:v4];
LABEL_24:
      v20 = v17;
      goto LABEL_25;
    }

    if ([(NSMutableArray *)self->_activeBioOpsQueue type]== 1 || [(NSMutableArray *)self->_activeBioOpsQueue type]== 2 && ([(NSMutableArray *)self->_activeBioOpsQueue forPreArm]& 1) != 0)
    {
      v21 = 4;
LABEL_22:
      [(NSMutableArray *)self->_activeBioOpsQueue setStatus:v21];
      goto LABEL_23;
    }

    if ([(NSMutableArray *)self->_activeBioOpsQueue status]!= 4)
    {
      v21 = 3;
      goto LABEL_22;
    }

LABEL_23:
    v17 = [(BiometricKitXPCServer *)self startBioOperation:v4];
    goto LABEL_24;
  }

  [(NSMutableArray *)v15 setStatus:4];
  if (![(OS_dispatch_queue *)self->_cmdDispatchQueue count])
  {
    goto LABEL_23;
  }

  v18 = [(OS_dispatch_queue *)self->_cmdDispatchQueue firstObject];
  v19 = [v18 priority];
  LODWORD(v19) = v19 > [v4 priority];

  if (!v19)
  {
    goto LABEL_23;
  }

  v20 = [(BiometricKitXPCServer *)self pauseBioOperation:v4];
  if (!v20)
  {
    [(BiometricKitXPCServer *)self resumeQueuedBioOperation];
    v20 = 0;
  }

LABEL_25:
  objc_sync_exit(v9);

  [(BiometricKitXPCServer *)self updateActiveOperationNotification];
  if (v20)
  {
LABEL_26:
    if (__osLogTrace)
    {
      v22 = __osLogTrace;
    }

    else
    {
      v22 = v5;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v26 = 67109120;
      LODWORD(v27) = v20;
      _os_log_impl(&dword_223E00000, v22, OS_LOG_TYPE_ERROR, "processBioOperation: -> err:0x%x\n", &v26, 8u);
    }

    goto LABEL_37;
  }

  if (__osLogTrace)
  {
    v23 = __osLogTrace;
  }

  else
  {
    v23 = v5;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v26 = 67109120;
    LODWORD(v27) = 0;
    _os_log_impl(&dword_223E00000, v23, OS_LOG_TYPE_DEBUG, "processBioOperation: -> err:0x%x\n", &v26, 8u);
  }

  v20 = 0;
LABEL_37:

  v24 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)switchToNextBioOperation:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v20[0] = 67109120;
    v20[1] = v3;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "switchToNextBioOperation: %d\n", v20, 8u);
  }

  v7 = self->_cmdDispatchQueue;
  objc_sync_enter(v7);
  v8 = self->_bioOpsQueue;
  objc_sync_enter(v8);
  if (![(NSMutableArray *)self->_bioOpsQueue count])
  {
    goto LABEL_11;
  }

  v9 = [(NSMutableArray *)self->_bioOpsQueue objectAtIndex:0];
  if ([v9 status] == 3)
  {
    v10 = [v9 taskPausedMessage];
    v11 = [v9 client];
    [(BiometricKitXPCServer *)self sendStatusMessage:v10 toClient:v11];

    [(OS_dispatch_queue *)self->_cmdDispatchQueue insertObject:v9 atIndex:0];
  }

  [(NSMutableArray *)self->_bioOpsQueue removeObject:v9];
  if ([(NSMutableArray *)self->_bioOpsQueue count])
  {

LABEL_11:
    objc_sync_exit(v8);

    goto LABEL_12;
  }

  [(ActivityTracker *)self->_ongoingCatacombSaveTimer setActive:0];

  objc_sync_exit(v8);
  activeBioOpsQueue = self->_activeBioOpsQueue;
  if (activeBioOpsQueue)
  {
    v15 = [(NSMutableArray *)activeBioOpsQueue status];
    v16 = self->_activeBioOpsQueue;
    self->_activeBioOpsQueue = 0;

    v17 = (v15 - 3) < 2;
    if (v3)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v17 = 0;
    if (v3)
    {
LABEL_25:
      [(BiometricKitXPCServer *)self resumeQueuedBioOperation];
      goto LABEL_12;
    }
  }

  if (v17)
  {
    goto LABEL_25;
  }

  while ([(OS_dispatch_queue *)self->_cmdDispatchQueue count])
  {
    v18 = [(OS_dispatch_queue *)self->_cmdDispatchQueue objectAtIndex:0];
    v19 = [v18 client];
    [(BiometricKitXPCServer *)self removeBioOperationOfClient:v19];
  }

  [(ActivityTracker *)self->_ongoingCatacombSaveTimer setActive:0];
LABEL_12:
  objc_sync_exit(v7);

  [(BiometricKitXPCServer *)self updateActiveOperationNotification];
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = v5;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v20[0]) = 0;
    _os_log_impl(&dword_223E00000, v12, OS_LOG_TYPE_DEBUG, "switchToNextBioOperation: -> void\n", v20, 2u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)stopBioOperationsAfterReconnect
{
  v26 = *MEMORY[0x277D85DE8];
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v3, OS_LOG_TYPE_DEBUG, "stopBioOperationsAfterReconnect\n", buf, 2u);
  }

  v4 = self->_cmdDispatchQueue;
  objc_sync_enter(v4);
  v5 = self->_bioOpsQueue;
  objc_sync_enter(v5);
  v6 = [MEMORY[0x277CBEB18] array];
  while ([(NSMutableArray *)self->_bioOpsQueue count])
  {
    [v6 addObjectsFromArray:self->_bioOpsQueue];
    [(NSMutableArray *)self->_bioOpsQueue removeAllObjects];
  }

  if ([(OS_dispatch_queue *)self->_cmdDispatchQueue count])
  {
    [v6 addObjectsFromArray:self->_cmdDispatchQueue];
    [(OS_dispatch_queue *)self->_cmdDispatchQueue removeAllObjects];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 status];
        if (v12 != 1)
        {
          if (v12 == 3)
          {
            v13 = [v11 taskResumedMessage];
            v14 = [v11 client];
            [(BiometricKitXPCServer *)self sendStatusMessage:v13 toClient:v14];
          }

          v15 = [v11 cancelledMessage];
          v16 = [v11 client];
          [(BiometricKitXPCServer *)self sendStatusMessage:v15 toClient:v16];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  activeBioOpsQueue = self->_activeBioOpsQueue;
  if (activeBioOpsQueue)
  {
    self->_activeBioOpsQueue = 0;
  }

  [(ActivityTracker *)self->_ongoingCatacombSaveTimer setActive:0, v20];

  objc_sync_exit(v5);
  objc_sync_exit(v4);

  if (__osLogTrace)
  {
    v18 = __osLogTrace;
  }

  else
  {
    v18 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v18, OS_LOG_TYPE_DEBUG, "stopBioOperationsAfterReconnect -> void\n", buf, 2u);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)updateActiveOperationNotificationWithOverride:(int)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_activeOperationNtfTokenValid)
  {
    LODWORD(v3) = a3;
    v5 = self->_bioOpsQueue;
    objc_sync_enter(v5);
    v6 = [(NSMutableArray *)self->_bioOpsQueue firstObject];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 type];
      v9 = v8 != 3;
      if (v8 == 3)
      {
        v10 = 3;
      }

      else
      {
        v10 = 0;
      }

      if (v8 == 2)
      {
        v9 = 0;
        v11 = 2;
      }

      else
      {
        v11 = v10;
      }

      v12 = v8 != 1 && v9;
      if (v8 == 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v11;
      }
    }

    else
    {
      v13 = 0;
      v12 = 1;
    }

    if (((v3 != 0) & v12) != 0)
    {
      v3 = v3;
    }

    else
    {
      v3 = v13;
    }

    state64 = -1;
    notify_get_state(self->_activeOperationNtfToken, &state64);
    if (state64 != v3)
    {
      notify_set_state(self->_activeOperationNtfToken, v3);
      notify_post("com.apple.BiometricKit.activeOperation");
      if (__osLog)
      {
        v14 = __osLog;
      }

      else
      {
        v14 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v18 = v3;
        _os_log_impl(&dword_223E00000, v14, OS_LOG_TYPE_DEFAULT, "updateActiveOperationNotificationWithOverride: BKActiveOperationNotification: %d\n", buf, 8u);
      }
    }

    objc_sync_exit(v5);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)isClassCFileAccessible
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "isClassCFileAccessible\n", buf, 2u);
  }

  v5 = MKBDeviceUnlockedSinceBoot();
  if (v5 >= 1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__BiometricKitXPCServer_isClassCFileAccessible__block_invoke;
    block[3] = &unk_2784FA338;
    block[4] = self;
    if (isClassCFileAccessible_onceToken != -1)
    {
      dispatch_once(&isClassCFileAccessible_onceToken, block);
    }
  }

  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = v3;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v11 = v5 > 0;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "isClassCFileAccessible -> %d\n", buf, 8u);
  }

  result = v5 > 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __47__BiometricKitXPCServer_isClassCFileAccessible__block_invoke(uint64_t a1)
{
  v1 = &__osLog;
  v36 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D86220];
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v3, OS_LOG_TYPE_DEFAULT, "Starting catacomb file check\n", buf, 2u);
  }

  [*(*(a1 + 32) + 208) lock];
  v4 = [*(*(a1 + 32) + 216) catacombDir];
  v5 = *(a1 + 32);
  v6 = +[CatacombComponent masterComponent];
  v7 = [v5 catacombFileNameForComponent:v6];
  v8 = [v4 stringByAppendingString:v7];

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  LODWORD(v6) = [v9 fileExistsAtPath:v8];

  if (v6)
  {
    v10 = 0;
    v11 = 1;
    v12 = 0x277CCA000uLL;
    v13 = 0x277CBE000uLL;
    v31 = v8;
    while (1)
    {
      v14 = v10;
      v15 = *(v12 + 2552);
      v16 = [*(v13 + 3008) fileURLWithPath:v8];
      v33 = v14;
      v17 = [v15 fileHandleForReadingFromURL:v16 error:&v33];
      v10 = v33;

      if (v17)
      {
        break;
      }

      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Catacomb file check (attempt %d) failed, fileHandleForReadingFromURL(file:'%@') -> %@", v11, v8, v10];
      if (isInternalBuild())
      {
        v19 = *(a1 + 32);
        v20 = v13;
        v21 = v12;
        v22 = v1;
        v23 = v2;
        v24 = MEMORY[0x277CCACA8];
        v25 = [MEMORY[0x277CBEAA8] date];
        v26 = [v24 stringWithFormat:@"%@ - %@", v25, v18];
        [v19 writeStringToPersistentLog:v26];

        v2 = v23;
        v1 = v22;
        v12 = v21;
        v13 = v20;
        v8 = v31;
      }

      if (*v1)
      {
        v27 = *v1;
      }

      else
      {
        v27 = v2;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v35 = v18;
        _os_log_impl(&dword_223E00000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@\n", buf, 0xCu);
      }

      sleep(1u);

      v11 = (v11 + 1);
      if (v11 == 11)
      {
        goto LABEL_30;
      }
    }

    if (*v1)
    {
      v29 = *v1;
    }

    else
    {
      v29 = v2;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223E00000, v29, OS_LOG_TYPE_DEFAULT, "Catacomb file check succeeded\n", buf, 2u);
    }
  }

  else
  {
    if (__osLog)
    {
      v28 = __osLog;
    }

    else
    {
      v28 = v2;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223E00000, v28, OS_LOG_TYPE_DEFAULT, "Catacomb file check skipped (file not found)\n", buf, 2u);
    }

    v10 = 0;
  }

LABEL_30:
  [*(*(a1 + 32) + 208) unlock];

  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCatacombAccessible
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "isCatacombAccessible\n", v9, 2u);
  }

  v5 = [(BiometricKitXPCServer *)self isClassCFileAccessible];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = v3;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 67109120;
    v9[1] = v5;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "isCatacombAccessible -> %d\n", v9, 8u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (int)writeStringToPersistentLog:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:@"/var/mobile/Library/Logs/biometrickitd.log"];
  if (v4 || ([MEMORY[0x277CCAA00] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "createFileAtPath:contents:attributes:", @"/var/mobile/Library/Logs/biometrickitd.log", 0, 0), v5, objc_msgSend(MEMORY[0x277CCA9F8], "fileHandleForWritingAtPath:", @"/var/mobile/Library/Logs/biometrickitd.log"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    [v4 seekToEndOfFile];
    v6 = [v3 dataUsingEncoding:4];
    [v4 writeData:v6];

    v7 = [@"\n" dataUsingEncoding:4];
    [v4 writeData:v7];

    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [v8 attributesOfItemAtPath:@"/var/mobile/Library/Logs/biometrickitd.log" error:0];

    if (v9)
    {
      v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA1C0]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 integerValue];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    [v4 closeFile];

    if (v11 > 0x200000)
    {
      v12 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:@"/var/mobile/Library/Logs/biometrickitd.log"];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 subdataWithRange:{v11 - 0x100000, 0x100000}];

        [v14 writeToFile:@"/var/mobile/Library/Logs/biometrickitd.log" atomically:0];
      }

      else
      {
        v14 = 0;
      }
    }

    v15 = 0;
  }

  else
  {
    [BiometricKitXPCServer writeStringToPersistentLog:];
    v15 = v18;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)hexDumpData:(char *)a3 size:(unint64_t)a4
{
  v6 = [MEMORY[0x277CCAB68] string];
  if (a3)
  {
    for (; a4; --a4)
    {
      v7 = *a3++;
      [v6 appendFormat:@"%02x", v7];
    }
  }

  else
  {
    [BiometricKitXPCServer hexDumpData:size:];
  }

  return v6;
}

- (int)logCatacombInfo:(id)a3 data:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  if (v7)
  {
    ccsha1_di();
    [v7 length];
    [v7 bytes];
    ccdigest();
    v8 = MEMORY[0x277CCAB68];
    v9 = [MEMORY[0x277CBEAA8] date];
    v10 = [v8 stringWithFormat:@"%@ - %@: ", v9, v6];

    v11 = [(BiometricKitXPCServer *)self hexDumpData:v16 size:20];
    [v10 appendFormat:@"SHA1: %@, ", v11];

    [v10 appendFormat:@"Size: %zu", objc_msgSend(v7, "length")];
    v12 = [(BiometricKitXPCServer *)self writeStringToPersistentLog:v10];
  }

  else
  {
    [BiometricKitXPCServer logCatacombInfo:data:];
    v12 = v15;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (int)filterIdentities:(id)a3 withFilter:(id)a4
{
  v229 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = __osLogTrace;
  if (!__osLogTrace)
  {
    v7 = MEMORY[0x277D86220];
  }

  v8 = v7;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = v5;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEBUG, "filterIdentities:withFilter: %@, %@\n", buf, 0x16u);
  }

  v136 = v5;
  v137 = v6;
  if (!v5 || !v6)
  {
    if (__osLog)
    {
      v131 = __osLog;
    }

    else
    {
      v131 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      *&buf[4] = "filter != ((void*)0) && identities != ((void*)0)";
      *&buf[12] = 2048;
      *&buf[14] = 0;
      v223 = 2080;
      v224 = &unk_223E5FC53;
      v225 = 2080;
      v226 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v227 = 1024;
      v228 = 2525;
      _os_log_impl(&dword_223E00000, v131, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v9 = 0;
    obj = 0;
    v148 = 0;
    v127 = 263;
    goto LABEL_196;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (__osLog)
    {
      v132 = __osLog;
    }

    else
    {
      v132 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      *&buf[4] = "[filter isKindOfClass:[NSDictionary class]]";
      *&buf[12] = 2048;
      *&buf[14] = 0;
      v223 = 2080;
      v224 = &unk_223E5FC53;
      v225 = 2080;
      v226 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v227 = 1024;
      v228 = 2526;
      _os_log_impl(&dword_223E00000, v132, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v9 = 0;
    obj = 0;
    v148 = 0;
    goto LABEL_195;
  }

  v9 = [MEMORY[0x277CBEB18] arrayWithArray:v5];
  v10 = [v6 objectForKeyedSubscript:@"BKFilterIdentity"];
  v11 = 0x277CBE000uLL;
  if (v10)
  {
    v12 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [MEMORY[0x277CBEA60] arrayWithObject:v12];

      v12 = v13;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      obj = v12;
      if (__osLog)
      {
        v133 = __osLog;
      }

      else
      {
        v133 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = "[value isKindOfClass:[NSArray class]]";
        *&buf[12] = 2048;
        *&buf[14] = 0;
        v223 = 2080;
        v224 = &unk_223E5FC53;
        v225 = 2080;
        v226 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        v227 = 1024;
        v228 = 2535;
        _os_log_impl(&dword_223E00000, v133, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v148 = 0;
      goto LABEL_195;
    }

    v148 = [MEMORY[0x277CBEB18] arrayWithArray:v9];
    [v9 removeAllObjects];
    v206 = 0u;
    v207 = 0u;
    v204 = 0u;
    v205 = 0u;
    obj = v12;
    v139 = [obj countByEnumeratingWithState:&v204 objects:v221 count:16];
    if (v139)
    {
      v138 = *v205;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v205 != v138)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v204 + 1) + 8 * v14);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [BiometricKitXPCServer filterIdentities:? withFilter:?];
            goto LABEL_195;
          }

          v142 = v14;
          v202 = 0u;
          v203 = 0u;
          v200 = 0u;
          v201 = 0u;
          v16 = v148;
          v17 = [v16 countByEnumeratingWithState:&v200 objects:v220 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v201;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v201 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v200 + 1) + 8 * i);
                v22 = [v21 uuid];
                v23 = [v15 uuid];
                if ([v22 isEqual:v23] && (v24 = objc_msgSend(v21, "userID"), v24 == objc_msgSend(v15, "userID")) && (v25 = objc_msgSend(v21, "type"), v25 == objc_msgSend(v15, "type")))
                {
                  v26 = [v9 containsObject:v21];

                  if ((v26 & 1) == 0)
                  {
                    [v9 addObject:v21];
                  }
                }

                else
                {
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v200 objects:v220 count:16];
            }

            while (v18);
          }

          v14 = v142 + 1;
        }

        while (v142 + 1 != v139);
        v139 = [obj countByEnumeratingWithState:&v204 objects:v221 count:16];
        if (v139)
        {
          continue;
        }

        break;
      }
    }

    v6 = v137;
    v11 = 0x277CBE000;
  }

  else
  {
    v148 = 0;
  }

  v27 = [v6 objectForKeyedSubscript:@"BKFilterUUID"];
  if (v27)
  {
    v28 = v27;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [*(v11 + 2656) arrayWithObject:v28];

      v28 = v29;
    }

    v30 = *(v11 + 2656);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      obj = v28;
      if (__osLog)
      {
        v134 = __osLog;
      }

      else
      {
        v134 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_195;
      }

      *buf = 136316162;
      *&buf[4] = "[value isKindOfClass:[NSArray class]]";
      *&buf[12] = 2048;
      *&buf[14] = 0;
      v223 = 2080;
      v224 = &unk_223E5FC53;
      v225 = 2080;
      v226 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v227 = 1024;
      v228 = 2560;
      goto LABEL_246;
    }

    v143 = [MEMORY[0x277CBEB18] arrayWithArray:v9];

    [v9 removeAllObjects];
    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    obj = v28;
    v149 = [obj countByEnumeratingWithState:&v196 objects:v219 count:16];
    if (v149)
    {
      v140 = *v197;
      while (2)
      {
        for (j = 0; j != v149; ++j)
        {
          if (*v197 != v140)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v196 + 1) + 8 * j);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [BiometricKitXPCServer filterIdentities:? withFilter:?];
            goto LABEL_193;
          }

          v194 = 0u;
          v195 = 0u;
          v192 = 0u;
          v193 = 0u;
          v33 = v143;
          v34 = [v33 countByEnumeratingWithState:&v192 objects:v218 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v193;
            do
            {
              for (k = 0; k != v35; ++k)
              {
                if (*v193 != v36)
                {
                  objc_enumerationMutation(v33);
                }

                v38 = *(*(&v192 + 1) + 8 * k);
                v39 = [v38 uuid];
                if ([v39 isEqual:v32])
                {
                  v40 = [v9 containsObject:v38];

                  if ((v40 & 1) == 0)
                  {
                    [v9 addObject:v38];
                  }
                }

                else
                {
                }
              }

              v35 = [v33 countByEnumeratingWithState:&v192 objects:v218 count:16];
            }

            while (v35);
          }
        }

        v149 = [obj countByEnumeratingWithState:&v196 objects:v219 count:16];
        if (v149)
        {
          continue;
        }

        break;
      }
    }

    v6 = v137;
    v11 = 0x277CBE000;
  }

  else
  {
    v143 = v148;
  }

  v41 = [v6 objectForKeyedSubscript:@"BKFilterUserID"];
  v42 = 0x277CCA000uLL;
  if (v41)
  {
    v43 = v41;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = [*(v11 + 2656) arrayWithObject:v43];

      v43 = v44;
    }

    v45 = *(v11 + 2656);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      obj = v43;
      if (__osLog)
      {
        v135 = __osLog;
      }

      else
      {
        v135 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_193;
      }

      *buf = 136316162;
      *&buf[4] = "[value isKindOfClass:[NSArray class]]";
      *&buf[12] = 2048;
      *&buf[14] = 0;
      v223 = 2080;
      v224 = &unk_223E5FC53;
      v225 = 2080;
      v226 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v227 = 1024;
      v228 = 2582;
      goto LABEL_240;
    }

    v148 = [MEMORY[0x277CBEB18] arrayWithArray:v9];

    [v9 removeAllObjects];
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    obj = v43;
    v46 = [obj countByEnumeratingWithState:&v188 objects:v217 count:16];
    if (v46)
    {
      v47 = v46;
      v144 = *v189;
      while (2)
      {
        for (m = 0; m != v47; ++m)
        {
          if (*v189 != v144)
          {
            objc_enumerationMutation(obj);
          }

          v49 = *(*(&v188 + 1) + 8 * m);
          v50 = *(v42 + 2992);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [BiometricKitXPCServer filterIdentities:? withFilter:?];
            goto LABEL_195;
          }

          v186 = 0u;
          v187 = 0u;
          v184 = 0u;
          v185 = 0u;
          v51 = v148;
          v52 = [v51 countByEnumeratingWithState:&v184 objects:v216 count:16];
          if (v52)
          {
            v53 = v52;
            v54 = *v185;
            do
            {
              for (n = 0; n != v53; ++n)
              {
                if (*v185 != v54)
                {
                  objc_enumerationMutation(v51);
                }

                v56 = *(*(&v184 + 1) + 8 * n);
                v57 = [v56 userID];
                if (v57 == [v49 intValue] && (objc_msgSend(v9, "containsObject:", v56) & 1) == 0)
                {
                  [v9 addObject:v56];
                }
              }

              v53 = [v51 countByEnumeratingWithState:&v184 objects:v216 count:16];
            }

            while (v53);
          }

          v42 = 0x277CCA000;
        }

        v47 = [obj countByEnumeratingWithState:&v188 objects:v217 count:16];
        if (v47)
        {
          continue;
        }

        break;
      }
    }

    v6 = v137;
    v11 = 0x277CBE000;
  }

  else
  {
    v148 = v143;
  }

  v58 = [v6 objectForKeyedSubscript:@"BKFilterType"];
  if (v58)
  {
    v59 = v58;
    v60 = *(v42 + 2992);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = [*(v11 + 2656) arrayWithObject:v59];

      v59 = v61;
    }

    v62 = *(v11 + 2656);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      obj = v59;
      if (__osLog)
      {
        v134 = __osLog;
      }

      else
      {
        v134 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_195;
      }

      *buf = 136316162;
      *&buf[4] = "[value isKindOfClass:[NSArray class]]";
      *&buf[12] = 2048;
      *&buf[14] = 0;
      v223 = 2080;
      v224 = &unk_223E5FC53;
      v225 = 2080;
      v226 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v227 = 1024;
      v228 = 2604;
      goto LABEL_246;
    }

    v143 = [MEMORY[0x277CBEB18] arrayWithArray:v9];

    [v9 removeAllObjects];
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    obj = v59;
    v63 = [obj countByEnumeratingWithState:&v180 objects:v215 count:16];
    if (v63)
    {
      v64 = v63;
      v150 = *v181;
      while (2)
      {
        for (ii = 0; ii != v64; ++ii)
        {
          if (*v181 != v150)
          {
            objc_enumerationMutation(obj);
          }

          v66 = *(*(&v180 + 1) + 8 * ii);
          v67 = *(v42 + 2992);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [BiometricKitXPCServer filterIdentities:? withFilter:?];
            goto LABEL_193;
          }

          v178 = 0u;
          v179 = 0u;
          v176 = 0u;
          v177 = 0u;
          v68 = v143;
          v69 = [v68 countByEnumeratingWithState:&v176 objects:v214 count:16];
          if (v69)
          {
            v70 = v69;
            v71 = *v177;
            do
            {
              for (jj = 0; jj != v70; ++jj)
              {
                if (*v177 != v71)
                {
                  objc_enumerationMutation(v68);
                }

                v73 = *(*(&v176 + 1) + 8 * jj);
                v74 = [v73 type];
                if (v74 == [v66 intValue] && (objc_msgSend(v9, "containsObject:", v73) & 1) == 0)
                {
                  [v9 addObject:v73];
                }
              }

              v70 = [v68 countByEnumeratingWithState:&v176 objects:v214 count:16];
            }

            while (v70);
          }

          v42 = 0x277CCA000;
        }

        v64 = [obj countByEnumeratingWithState:&v180 objects:v215 count:16];
        if (v64)
        {
          continue;
        }

        break;
      }
    }

    v6 = v137;
    v11 = 0x277CBE000;
  }

  else
  {
    v143 = v148;
  }

  v75 = [v6 objectForKeyedSubscript:@"BKFilterAttribute"];
  if (!v75)
  {
    v148 = v143;
LABEL_132:
    v92 = [v6 objectForKeyedSubscript:@"BKFilterEntity"];
    if (!v92)
    {
      v143 = v148;
LABEL_156:
      v109 = [v6 objectForKeyedSubscript:@"BKFilterName"];
      if (!v109)
      {
        obj = 0;
        v148 = v143;
LABEL_182:
        v124 = v136;
        [v136 setArray:v9];
        v125 = __osLogTrace;
        if (!__osLogTrace)
        {
          v125 = MEMORY[0x277D86220];
        }

        v126 = v125;
        if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109378;
          *&buf[8] = 2112;
          *&buf[10] = v136;
          _os_log_impl(&dword_223E00000, v126, OS_LOG_TYPE_DEBUG, "filterIdentities:withFilter: -> err:0x%x, filteredIdentities:%@\n", buf, 0x12u);
        }

        v127 = 0;
        goto LABEL_201;
      }

      v110 = v109;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v111 = [*(v11 + 2656) arrayWithObject:v110];

        v110 = v111;
      }

      v112 = *(v11 + 2656);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v148 = [MEMORY[0x277CBEB18] arrayWithArray:v9];

        [v9 removeAllObjects];
        v158 = 0u;
        v159 = 0u;
        v156 = 0u;
        v157 = 0u;
        obj = v110;
        v146 = [obj countByEnumeratingWithState:&v156 objects:v209 count:16];
        if (v146)
        {
          v141 = *v157;
          while (2)
          {
            for (kk = 0; kk != v146; ++kk)
            {
              if (*v157 != v141)
              {
                objc_enumerationMutation(obj);
              }

              v114 = *(*(&v156 + 1) + 8 * kk);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                [BiometricKitXPCServer filterIdentities:? withFilter:?];
                goto LABEL_195;
              }

              v154 = 0u;
              v155 = 0u;
              v152 = 0u;
              v153 = 0u;
              v115 = v148;
              v116 = [v115 countByEnumeratingWithState:&v152 objects:v208 count:16];
              if (v116)
              {
                v117 = v116;
                v118 = *v153;
                do
                {
                  for (mm = 0; mm != v117; ++mm)
                  {
                    if (*v153 != v118)
                    {
                      objc_enumerationMutation(v115);
                    }

                    v120 = *(*(&v152 + 1) + 8 * mm);
                    v121 = [v120 name];
                    if (([v121 isEqual:v114] & 1) == 0 && (objc_msgSend(v120, "name"), v122 = objc_claimAutoreleasedReturnValue(), v122 | v114))
                    {
                    }

                    else
                    {
                      v123 = [v9 containsObject:v120];

                      if ((v123 & 1) == 0)
                      {
                        [v9 addObject:v120];
                      }
                    }
                  }

                  v117 = [v115 countByEnumeratingWithState:&v152 objects:v208 count:16];
                }

                while (v117);
              }
            }

            v146 = [obj countByEnumeratingWithState:&v156 objects:v209 count:16];
            if (v146)
            {
              continue;
            }

            break;
          }
        }

        goto LABEL_182;
      }

      obj = v110;
      [BiometricKitXPCServer filterIdentities:withFilter:];
      goto LABEL_193;
    }

    v93 = v92;
    v94 = *(v42 + 2992);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v95 = [*(v11 + 2656) arrayWithObject:v93];

      v93 = v95;
    }

    v96 = *(v11 + 2656);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v143 = [MEMORY[0x277CBEB18] arrayWithArray:v9];

      [v9 removeAllObjects];
      v166 = 0u;
      v167 = 0u;
      v164 = 0u;
      v165 = 0u;
      obj = v93;
      v97 = [obj countByEnumeratingWithState:&v164 objects:v211 count:16];
      if (v97)
      {
        v98 = v97;
        v151 = *v165;
        while (2)
        {
          for (nn = 0; nn != v98; ++nn)
          {
            if (*v165 != v151)
            {
              objc_enumerationMutation(obj);
            }

            v100 = *(*(&v164 + 1) + 8 * nn);
            v101 = *(v42 + 2992);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [BiometricKitXPCServer filterIdentities:? withFilter:?];
              goto LABEL_193;
            }

            v162 = 0u;
            v163 = 0u;
            v160 = 0u;
            v161 = 0u;
            v102 = v143;
            v103 = [v102 countByEnumeratingWithState:&v160 objects:v210 count:16];
            if (v103)
            {
              v104 = v103;
              v105 = *v161;
              do
              {
                for (i1 = 0; i1 != v104; ++i1)
                {
                  if (*v161 != v105)
                  {
                    objc_enumerationMutation(v102);
                  }

                  v107 = *(*(&v160 + 1) + 8 * i1);
                  v108 = [v107 entity];
                  if (v108 == [v100 intValue] && (objc_msgSend(v9, "containsObject:", v107) & 1) == 0)
                  {
                    [v9 addObject:v107];
                  }
                }

                v104 = [v102 countByEnumeratingWithState:&v160 objects:v210 count:16];
              }

              while (v104);
            }

            v42 = 0x277CCA000;
          }

          v98 = [obj countByEnumeratingWithState:&v164 objects:v211 count:16];
          if (v98)
          {
            continue;
          }

          break;
        }
      }

      v6 = v137;
      v11 = 0x277CBE000;
      goto LABEL_156;
    }

    obj = v93;
    if (__osLog)
    {
      v134 = __osLog;
    }

    else
    {
      v134 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
    {
LABEL_195:
      v127 = 258;
      goto LABEL_196;
    }

    *buf = 136316162;
    *&buf[4] = "[value isKindOfClass:[NSArray class]]";
    *&buf[12] = 2048;
    *&buf[14] = 0;
    v223 = 2080;
    v224 = &unk_223E5FC53;
    v225 = 2080;
    v226 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
    v227 = 1024;
    v228 = 2648;
LABEL_246:
    _os_log_impl(&dword_223E00000, v134, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    goto LABEL_195;
  }

  v76 = v75;
  v77 = *(v42 + 2992);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v78 = [*(v11 + 2656) arrayWithObject:v76];

    v76 = v78;
  }

  v79 = *(v11 + 2656);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v148 = [MEMORY[0x277CBEB18] arrayWithArray:v9];

    [v9 removeAllObjects];
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    obj = v76;
    v80 = [obj countByEnumeratingWithState:&v172 objects:v213 count:16];
    if (v80)
    {
      v81 = v80;
      v145 = *v173;
      while (2)
      {
        for (i2 = 0; i2 != v81; ++i2)
        {
          if (*v173 != v145)
          {
            objc_enumerationMutation(obj);
          }

          v83 = *(*(&v172 + 1) + 8 * i2);
          v84 = *(v42 + 2992);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [BiometricKitXPCServer filterIdentities:? withFilter:?];
            goto LABEL_195;
          }

          v170 = 0u;
          v171 = 0u;
          v168 = 0u;
          v169 = 0u;
          v85 = v148;
          v86 = [v85 countByEnumeratingWithState:&v168 objects:v212 count:16];
          if (v86)
          {
            v87 = v86;
            v88 = *v169;
            do
            {
              for (i3 = 0; i3 != v87; ++i3)
              {
                if (*v169 != v88)
                {
                  objc_enumerationMutation(v85);
                }

                v90 = *(*(&v168 + 1) + 8 * i3);
                v91 = [v90 attribute];
                if (v91 == [v83 intValue] && (objc_msgSend(v9, "containsObject:", v90) & 1) == 0)
                {
                  [v9 addObject:v90];
                }
              }

              v87 = [v85 countByEnumeratingWithState:&v168 objects:v212 count:16];
            }

            while (v87);
          }

          v42 = 0x277CCA000;
        }

        v81 = [obj countByEnumeratingWithState:&v172 objects:v213 count:16];
        if (v81)
        {
          continue;
        }

        break;
      }
    }

    v6 = v137;
    v11 = 0x277CBE000;
    goto LABEL_132;
  }

  obj = v76;
  if (__osLog)
  {
    v135 = __osLog;
  }

  else
  {
    v135 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    *&buf[4] = "[value isKindOfClass:[NSArray class]]";
    *&buf[12] = 2048;
    *&buf[14] = 0;
    v223 = 2080;
    v224 = &unk_223E5FC53;
    v225 = 2080;
    v226 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
    v227 = 1024;
    v228 = 2626;
LABEL_240:
    _os_log_impl(&dword_223E00000, v135, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
  }

LABEL_193:
  v127 = 258;
  v148 = v143;
LABEL_196:
  v128 = __osLogTrace;
  if (!__osLogTrace)
  {
    v128 = MEMORY[0x277D86220];
  }

  v126 = v128;
  if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109378;
    *&buf[4] = v127;
    *&buf[8] = 2112;
    v124 = v136;
    *&buf[10] = v136;
    _os_log_impl(&dword_223E00000, v126, OS_LOG_TYPE_ERROR, "filterIdentities:withFilter: -> err:0x%x, filteredIdentities:%@\n", buf, 0x12u);
  }

  else
  {
    v124 = v136;
  }

LABEL_201:

  v129 = *MEMORY[0x277D85DE8];
  return v127;
}

- (int)parseAuthDict:(id)a3 toAuthData:(id *)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = v5;
    v30 = 2048;
    v31 = a4;
    _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_DEBUG, "parseAuthDict:toAuthData: %@, %p\n", buf, 0x16u);
  }

  if (!a4)
  {
    [BiometricKitXPCServer parseAuthDict:toAuthData:];
    goto LABEL_36;
  }

  *&a4->var2[24] = 0;
  *&a4->var0 = 0u;
  *&a4->var2[8] = 0u;
  if (!v5)
  {
    goto LABEL_24;
  }

  v8 = @"BKOptionAuthWithCredentialSet";
  v9 = [v5 objectForKeyedSubscript:@"BKOptionAuthWithCredentialSet"];

  if (v9)
  {
    goto LABEL_11;
  }

  v8 = @"BKOptionEnrollWithCredentialSet";
  v10 = [v5 objectForKeyedSubscript:@"BKOptionEnrollWithCredentialSet"];

  if (v10 || (v8 = @"BKOptionMatchCredentialSetForExtendEnrollment", [v5 objectForKeyedSubscript:@"BKOptionMatchCredentialSetForExtendEnrollment"], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
LABEL_11:
    v12 = 0;
  }

  else
  {
    v8 = @"BKOptionAuthWithAuthToken";
    v18 = [v5 objectForKeyedSubscript:@"BKOptionAuthWithAuthToken"];

    if (!v18)
    {
      v8 = @"BKOptionEnrollWithAuthToken";
      v19 = [v5 objectForKeyedSubscript:@"BKOptionEnrollWithAuthToken"];

      if (!v19)
      {
        v8 = @"BKOptionMatchAuthTokenForExtendEnrollment";
        v20 = [v5 objectForKeyedSubscript:@"BKOptionMatchAuthTokenForExtendEnrollment"];

        if (!v20)
        {
          v8 = @"BKOptionMatchAuthTokenToBypassPasscodeBiolockout";
          v21 = [v5 objectForKeyedSubscript:@"BKOptionMatchAuthTokenToBypassPasscodeBiolockout"];

          if (!v21)
          {
            goto LABEL_24;
          }
        }
      }
    }

    v12 = 1;
  }

  v13 = [v5 objectForKeyedSubscript:v8];
  if (!v13)
  {
LABEL_24:
    v15 = 0;
    a4->var0 = 1;
    goto LABEL_25;
  }

  v14 = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
    v16 = [v15 length];
    if (v16 >= 0x21)
    {
      [BiometricKitXPCServer parseAuthDict:toAuthData:];
    }

    else
    {
      v17 = (v16 & 0x2F) != 0;
      if (!v12)
      {
        v17 = v16 == 0;
      }

      if (!v17)
      {
        a4->var0 = v12;
        a4->var1 = v16;
        [v15 getBytes:a4->var2 length:?];
LABEL_25:
        if (__osLogTrace)
        {
          v22 = __osLogTrace;
        }

        else
        {
          v22 = v6;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          *&buf[4] = 0;
          _os_log_impl(&dword_223E00000, v22, OS_LOG_TYPE_DEBUG, "parseAuthDict:toAuthData: -> err:0x%x\n", buf, 8u);
        }

        v23 = 0;
        v24 = v15;
        goto LABEL_31;
      }

      [BiometricKitXPCServer parseAuthDict:toAuthData:];
    }
  }

  else
  {
    [BiometricKitXPCServer parseAuthDict:toAuthData:];
  }

LABEL_36:
  v24 = v28;
  v15 = *buf;
  if (__osLogTrace)
  {
    v27 = __osLogTrace;
  }

  else
  {
    v27 = v6;
  }

  v23 = 258;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = 258;
    _os_log_impl(&dword_223E00000, v27, OS_LOG_TYPE_ERROR, "parseAuthDict:toAuthData: -> err:0x%x\n", buf, 8u);
  }

LABEL_31:

  v25 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)isDisplayOn
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLog)
  {
    v4 = __osLog;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "isDisplayOn\n", buf, 2u);
  }

  valuePtr = 0;
  backlightService = self->_backlightService;
  if (!backlightService)
  {
    [(BiometricKitXPCServer *)buf isDisplayOn];
LABEL_20:
    v10 = buf[0];
    goto LABEL_12;
  }

  CFProperty = IORegistryEntryCreateCFProperty(backlightService, @"IODisplayParameters", *MEMORY[0x277CBECE8], 0);
  if (!CFProperty)
  {
    [(BiometricKitXPCServer *)buf isDisplayOn];
    goto LABEL_20;
  }

  v7 = CFProperty;
  Value = CFDictionaryGetValue(CFProperty, @"brightness");
  if (Value)
  {
    v9 = CFDictionaryGetValue(Value, @"value");
    if (v9)
    {
      CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr);
    }

    else
    {
      [BiometricKitXPCServer isDisplayOn];
    }
  }

  else
  {
    [BiometricKitXPCServer isDisplayOn];
  }

  CFRelease(v7);
  v10 = valuePtr != 0;
LABEL_12:
  if (__osLog)
  {
    v11 = __osLog;
  }

  else
  {
    v11 = v3;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v16 = v10;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEBUG, "isDisplayOn -> %d\n", buf, 8u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)postGeneralLockoutStateNotification
{
  if (__osLog)
  {
    v2 = __osLog;
  }

  else
  {
    v2 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_223E00000, v2, OS_LOG_TYPE_DEBUG, "postGeneralLockoutStateNotification\n", v3, 2u);
  }

  notify_post("com.apple.BiometricKit.generalLockoutStateChanged");
}

- (void)updateEnrollmentChangedNotification:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v13[0] = 67109120;
    v13[1] = v3;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "updateEnrollmentChangedNotification: %d\n", v13, 8u);
  }

  if (self->_enrollChgNtfTokenValid)
  {
    enrollChgNtfToken = self->_enrollChgNtfToken;
    v8 = (self->_mkbLockStatusNtfToken & 0x10000) != 0 ? 1 : [(BiometricKitXPCServer *)self identitiesCount];
    notify_set_state(enrollChgNtfToken, v8);
    if (v3)
    {
      notify_post("com.apple.BiometricKit.enrollmentChanged");
    }
  }

  if (BYTE2(self->_mkbLockStatusNtfToken) == 1)
  {
    [(BiometricKitXPCServer *)self updateExpressModeStateWithEnrollmentCount:1];
  }

  else
  {
    v9 = [(BiometricKitXPCServer *)self identitiesOfUser:[(BiometricKitXPCServer *)self currentAccountUserID]];
    v10 = [v9 count];

    [(BiometricKitXPCServer *)self updateExpressModeStateWithEnrollmentCount:v10];
    if (!v10)
    {
      [(BiometricKitXPCServer *)self updateLockoutStateNotification:0];
    }
  }

  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v5;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v13[0]) = 0;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEBUG, "updateEnrollmentChangedNotification: -> void\n", v13, 2u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)cacheUserAccountsInfo
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  *a1 = 0;
  v7 = *MEMORY[0x277D85DE8];
}

- ($89967B733E8F0E8859294B5D59E7AF0F)userAccountsInfo
{
  if ((self->_userAccountsInfo.currentAccountUserID & 0x10000) == 0)
  {
    [(BiometricKitXPCServer *)self cacheAndSetUserAccountsInfo];
  }

  return (&self->_enrollChgNtfTokenValid + 1);
}

- (unsigned)currentAccountUserID
{
  if ((self->_userAccountsInfo.currentAccountUserID & 0x10000) == 0)
  {
    [(BiometricKitXPCServer *)self cacheAndSetUserAccountsInfo];
  }

  return *(&self->_enrollChgNtfTokenValid + 1);
}

- (void)updateExpressModeStateWithLockoutState:(unsigned int)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v12[0] = 67109120;
    v12[1] = a3;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "updateExpressModeStateWithLockoutState: %u\n", v12, 8u);
  }

  v7 = *&self->_expressModeChgNtfTokenValid;
  v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
  if ((a3 & 0x16) != 0)
  {
    ++v8;
  }

  if ((v7 & 4) != 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFFFFDLL | (2 * ((a3 & 0x208) == 0));
  }

  else
  {
    v9 = v8;
  }

  *&self->_expressModeChgNtfTokenValid = v9;
  [(BiometricKitXPCServer *)self updateExpressModeStateNotification];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v5;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_DEBUG, "updateExpressModeStateWithLockoutState: -> void\n", v12, 2u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateExpressModeStateWithEnrollmentCount:(unsigned int)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 67109120;
    v9[1] = a3;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "updateExpressModeStateWithEnrollmentCount: %u\n", v9, 8u);
  }

  if (a3 != 1)
  {
    if (!a3)
    {
      *&self->_expressModeChgNtfTokenValid = 0;
    }

    goto LABEL_11;
  }

  if ((self->_expressModeChgNtfTokenValid & 4) != 0 || ![(BiometricKitXPCServer *)self getExpressModeState:&self->_expressModeChgNtfTokenValid forUser:[(BiometricKitXPCServer *)self currentAccountUserID] withClient:0])
  {
LABEL_11:
    [(BiometricKitXPCServer *)self updateExpressModeStateNotification];
    goto LABEL_12;
  }

  [BiometricKitXPCServer updateExpressModeStateWithEnrollmentCount:];
LABEL_12:
  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = v5;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_DEBUG, "updateExpressModeStateWithEnrollmentCount: -> void\n", v9, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateExpressModeState
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateExpressModeStateNotification
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *&self->_expressModeChgNtfTokenValid;
    *v9 = 134217984;
    *&v9[4] = v5;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "updateExpressModeStateNotification (_expressModeState: %ld)\n", v9, 0xCu);
  }

  if (self->_lockoutChgNtfTokenValid)
  {
    *v9 = 0;
    if (!notify_get_state(self->_lockoutChgNtfToken, v9))
    {
      v6 = *&self->_expressModeChgNtfTokenValid;
      if (v6 != *v9)
      {
        notify_set_state(self->_lockoutChgNtfToken, v6);
        notify_post("com.apple.BiometricKit.expressModeStateChanged");
      }
    }
  }

  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = v3;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_DEBUG, "updateExpressModeStateNotification -> void\n", v9, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)disconnectingClient:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (__osLog)
  {
    v4 = __osLog;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEFAULT, "disconnectingClient: %@\n", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)createMatchEventDictionary:(id *)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v15[0] = @"BKMatchEventResult";
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a3->var1];
    v15[1] = @"BKMatchEventTimeStamp";
    v16[0] = v5;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3->var0];
    v16[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

    if (a3->var1)
    {
      v8 = [(BiometricKitXPCServer *)self getIdentityObject:&a3->var1 + 1];
      if (v8)
      {
        v9 = [v7 mutableCopy];
        [v9 setObject:v8 forKey:@"BKMatchEventMatchedIdentity"];
        v10 = [v9 copy];

        v7 = v10;
      }

      else
      {
        [BiometricKitXPCServer createMatchEventDictionary:];
        v9 = v13;
        v7 = v14;
      }
    }
  }

  else
  {
    [BiometricKitXPCServer createMatchEventDictionary:];
    v7 = v14;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)isFingerprintModificationRestricted
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.applicationaccess"];
  v3 = v2;
  if (v2 && [v2 objectIsForcedForKey:@"allowFingerprintModification"])
  {
    v4 = [v3 BOOLForKey:@"allowFingerprintModification"];
    v5 = v4 ^ 1;
    if (__osLog)
    {
      v6 = __osLog;
    }

    else
    {
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"YES";
      if (v4)
      {
        v7 = @"NO";
      }

      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEFAULT, "'FingerprintModification' restricted: %@\n", &v10, 0xCu);
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (int)restoreAndSyncTemplates
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "restoreAndSyncTemplates\n", &v17, 2u);
  }

  v5 = [(BiometricKitXPCServer *)self loadCatacomb];
  v6 = v5;
  if (__osLog)
  {
    v7 = __osLog;
  }

  else
  {
    v7 = v3;
  }

  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v17 = 136316162;
      v18 = "err == 0 ";
      v19 = 2048;
      v20 = v6;
      v21 = 2080;
      v22 = &unk_223E5FC53;
      v23 = 2080;
      v24 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v25 = 1024;
      v26 = 3161;
      _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v17, 0x30u);
    }

    if (__osLogTrace)
    {
      v16 = __osLogTrace;
    }

    else
    {
      v16 = v3;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = 67109120;
      LODWORD(v18) = v6;
      v12 = v16;
      v13 = OS_LOG_TYPE_ERROR;
      goto LABEL_17;
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [(BiometricKitXPCServer *)self identitiesCount];
      v10 = [(BiometricKitXPCServer *)self identities];
      v17 = 134218242;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEFAULT, "restoreAndSyncTemplates identities %lu: %{public}@\n", &v17, 0x16u);
    }

    if (__osLogTrace)
    {
      v11 = __osLogTrace;
    }

    else
    {
      v11 = v3;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v17 = 67109120;
      LODWORD(v18) = 0;
      v12 = v11;
      v13 = OS_LOG_TYPE_DEBUG;
LABEL_17:
      _os_log_impl(&dword_223E00000, v12, v13, "restoreAndSyncTemplates -> err:0x%x\n", &v17, 8u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)clearTemplateList
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v3, OS_LOG_TYPE_DEBUG, "clearTemplateList\n", buf, 2u);
  }

  obj = self->_ongoingBiometricOperation;
  objc_sync_enter(obj);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_ongoingBiometricOperation;
  v5 = [(ActivityTracker *)v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = __osLog;
        if (!__osLog)
        {
          v9 = v2;
        }

        v10 = v9;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v8 uuid];
          *buf = 138412290;
          v21 = v11;
          _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_DEFAULT, "clearTemplateList removing identity %@\n", buf, 0xCu);
        }
      }

      v5 = [(ActivityTracker *)v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }

  [(ActivityTracker *)self->_ongoingBiometricOperation removeAllObjects];
  objc_sync_exit(obj);

  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = v2;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v12, OS_LOG_TYPE_DEBUG, "clearTemplateList -> void\n", buf, 2u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (int)handleFirstUnlock
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "handleFirstUnlock\n", &v12, 2u);
  }

  v5 = [(BiometricKitXPCServer *)self handleCatacombUnlock];
  v6 = v5;
  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = v3;
  }

  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 67109120;
      v13 = v6;
      v8 = v7;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_14:
      _os_log_impl(&dword_223E00000, v8, v9, "handleFirstUnlock -> err:0x%x\n", &v12, 8u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = 67109120;
    v13 = 0;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEBUG;
    goto LABEL_14;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (int)handleCatacombUnlock
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "handleCatacombUnlock\n", v8, 2u);
  }

  if ([(BiometricKitXPCServer *)self isCatacombAccessible])
  {
    [(NSMutableArray *)self->_cachedIdentities lock];
    if (![(BiometricKitXPCServer *)self catacombFileAccessed])
    {
      [(BiometricKitXPCServer *)self restoreAndSyncTemplates];
      [(BiometricKitXPCServer *)self setCatacombFileAccessed:1];
      [(BiometricKitXPCServer *)self setTemplatesAtBoot:0];
      [(BiometricKitXPCServer *)self updateEnrollmentChangedNotification:1];
    }

    [(NSMutableArray *)self->_cachedIdentities unlock];
    if (__osLogTrace)
    {
      v5 = __osLogTrace;
    }

    else
    {
      v5 = v3;
    }

    result = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v8[0] = 67109120;
      v8[1] = 0;
      _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_DEBUG, "handleCatacombUnlock -> err:0x%x\n", v8, 8u);
      result = 0;
    }
  }

  else
  {
    [BiometricKitXPCServer handleCatacombUnlock];
    result = v8[0];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)isValidUser:(unsigned int)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = 67109120;
    v11 = a3;
    _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_DEBUG, "isValidUser: %u\n", &v10, 8u);
  }

  if (a3 == 501)
  {
    v6 = 0;
  }

  else
  {
    [BiometricKitXPCServer isValidUser:];
    v6 = v10;
  }

  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = v4;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 67109120;
    v11 = v6;
    _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_DEBUG, "isValidUser: -> err:0x%x\n", &v10, 8u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (int)updatePropertiesOfIdentities
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "updatePropertiesOfIdentities\n", buf, 2u);
  }

  v5 = [(BiometricKitXPCServer *)self identitiesCount];
  if (!v5)
  {
    goto LABEL_26;
  }

  v6 = v5;
  if ([(BiometricKitXPCServer *)self supportsRemovableAccessories])
  {
    v7 = [MEMORY[0x277CBEB28] dataWithLength:40 * v6];
    if ([(BiometricKitXPCServer *)self performGetIdentityRecordsCommand:v7])
    {
      [BiometricKitXPCServer updatePropertiesOfIdentities];
    }

    else
    {
      if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * [v7 length], 3) < 0x666666666666667uLL)
      {
        v8 = [v7 length];
        v9 = [v7 mutableBytes];
        if (v8 >= 0x28)
        {
          v10 = v9;
          v11 = v8 / 0x28;
          while (1)
          {
            v12 = [(BiometricKitXPCServer *)self getIdentityObject:v10];
            if (!v12)
            {
              [BiometricKitXPCServer updatePropertiesOfIdentities];
              goto LABEL_34;
            }

            v13 = v12;
            v14 = [(BiometricKitXPCServer *)self getAccessoryObject:v10 + 20];
            if (!v14)
            {
              break;
            }

            v15 = v14;
            [v13 setAccessory:v14];

            v10 += 40;
            if (!--v11)
            {
              goto LABEL_25;
            }
          }

          [(BiometricKitXPCServer *)v13 updatePropertiesOfIdentities];
          v23 = 261;
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      [BiometricKitXPCServer updatePropertiesOfIdentities];
    }

LABEL_34:
    v23 = *buf;
LABEL_36:

    goto LABEL_37;
  }

  v35 = 0;
  *buf = xmmword_223E5EA80;
  v16 = [(BiometricKitXPCServer *)self getAccessoryObject:buf];
  if (v16)
  {
    v7 = v16;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = [(BiometricKitXPCServer *)self identities];
    v18 = [v17 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v27 + 1) + 8 * i) setAccessory:v7];
        }

        v19 = [v17 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v19);
    }

LABEL_25:
LABEL_26:
    if (__osLogTrace)
    {
      v22 = __osLogTrace;
    }

    else
    {
      v22 = v3;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      _os_log_impl(&dword_223E00000, v22, OS_LOG_TYPE_DEBUG, "updatePropertiesOfIdentities -> err:0x%x\n", buf, 8u);
    }

    v23 = 0;
    goto LABEL_32;
  }

  [BiometricKitXPCServer updatePropertiesOfIdentities];
  v23 = 261;
LABEL_37:
  if (__osLogTrace)
  {
    v26 = __osLogTrace;
  }

  else
  {
    v26 = v3;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *v31 = 67109120;
    v32 = v23;
    _os_log_impl(&dword_223E00000, v26, OS_LOG_TYPE_ERROR, "updatePropertiesOfIdentities -> err:0x%x\n", v31, 8u);
  }

LABEL_32:
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)templatesExistAtBoot
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf.st_dev) = 0;
    _os_log_impl(&dword_223E00000, v3, OS_LOG_TYPE_DEBUG, "templatesExistAtBoot\n", &buf, 2u);
  }

  memset(&buf, 0, sizeof(buf));
  [(NSRecursiveLock *)self->_catacombLock content];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = v28 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v40 count:16];
  if (!v5)
  {
    v19 = 0;
    goto LABEL_29;
  }

  v7 = v5;
  v8 = *v26;
  *&v6 = 136316162;
  v23 = v6;
LABEL_8:
  v9 = 0;
  while (1)
  {
    if (*v26 != v8)
    {
      objc_enumerationMutation(v4);
    }

    v10 = *(*(&v25 + 1) + 8 * v9);
    if (![v10 hasPrefix:{@"user_", v23}] || !objc_msgSend(v10, "hasSuffix:", @".cat"))
    {
      goto LABEL_17;
    }

    v11 = [(NSRecursiveLock *)self->_catacombLock catacombDir];
    v12 = [v11 stringByAppendingString:v10];

    v13 = open_dprotected_np([v12 UTF8String], 0, 0, 1);
    if (v13 == -1)
    {
      if (__osLog)
      {
        v17 = __osLog;
      }

      else
      {
        v17 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v30 = v23;
        v31 = "fd != -1";
        v32 = 2048;
        v33 = 0;
        v34 = 2080;
        v35 = &unk_223E5FC53;
        v36 = 2080;
        v37 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        v38 = 1024;
        v39 = 3646;
        _os_log_impl(&dword_223E00000, v17, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v30, 0x30u);
      }

      goto LABEL_16;
    }

    v14 = v13;
    v15 = fstat(v13, &buf);
    st_size = buf.st_size;
    close(v14);
    if (v15 != -1 && st_size > 1024)
    {
      break;
    }

LABEL_16:

LABEL_17:
    if (v7 == ++v9)
    {
      v18 = [v4 countByEnumeratingWithState:&v25 objects:v40 count:16];
      v7 = v18;
      if (!v18)
      {
        v19 = 0;
        goto LABEL_27;
      }

      goto LABEL_8;
    }
  }

  v19 = 1;
LABEL_27:
  v2 = MEMORY[0x277D86220];
LABEL_29:

  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = v2;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *v30 = 67109120;
    LODWORD(v31) = v19;
    _os_log_impl(&dword_223E00000, v20, OS_LOG_TYPE_DEBUG, "templatesExistAtBoot -> %d\n", v30, 8u);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (int)cacheCatacombInfo
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "cacheCatacombInfo\n", buf, 2u);
  }

  if (self->_maxTemplatesPerUser && self->_maxSupportedUsers)
  {
    goto LABEL_10;
  }

  v12 = 0;
  v13[0] = 0;
  *(v13 + 7) = 0;
  v5 = [(BiometricKitXPCServer *)self performGetBiometrickitdInfoCommand:&v12];
  if (!v5)
  {
    *&self->_maxTemplatesPerUser = v12;
LABEL_10:
    if (__osLogTrace)
    {
      v6 = __osLogTrace;
    }

    else
    {
      v6 = v3;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v15) = 0;
      _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "cacheCatacombInfo -> err:0x%x\n", buf, 8u);
    }

    v7 = 0;
    goto LABEL_16;
  }

  v7 = v5;
  if (__osLog)
  {
    v10 = __osLog;
  }

  else
  {
    v10 = v3;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v15 = "err == 0 ";
    v16 = 2048;
    v17 = v7;
    v18 = 2080;
    v19 = &unk_223E5FC53;
    v20 = 2080;
    v21 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
    v22 = 1024;
    v23 = 3685;
    _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
  }

  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v3;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v15) = v7;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_ERROR, "cacheCatacombInfo -> err:0x%x\n", buf, 8u);
  }

LABEL_16:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int)readCatacombState
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "readCatacombState\n", buf, 2u);
  }

  v5 = [MEMORY[0x277CBEB18] array];
  [(BiometricKitXPCServer *)self cacheCatacombInfo];
  v6 = [MEMORY[0x277CBEB28] dataWithLength:8 * (self->_maxSupportedUsers + 1)];
  if (v6)
  {
    v7 = v6;
    v8 = [(BiometricKitXPCServer *)self performGetCatacombStateCommand:v6];
    if (v8)
    {
      [(BiometricKitXPCServer *)v8 readCatacombState:v7];
    }

    else
    {
      [(BKCatacomb *)self->_catacomb reset];
      v9 = [(BKCatacomb *)self->_catacomb addUserStatesFromBuffer:v7];
      if (v9)
      {
        [(BiometricKitXPCServer *)v9 readCatacombState:v7];
      }

      else
      {
        if (![(BiometricKitXPCServer *)self supportsRemovableAccessories])
        {
          v36 = v7;
          goto LABEL_15;
        }

        v10 = [MEMORY[0x277CBEB28] dataWithLength:140 * self->_maxSupportedUsers];

        if (v10)
        {
          v11 = [(BiometricKitXPCServer *)self performGetCatacombGroupStateCommand:v10];
          if (v11)
          {
            [(BiometricKitXPCServer *)v11 readCatacombState:v10];
          }

          else
          {
            v12 = [(BKCatacomb *)self->_catacomb addGroupStatesFromBuffer:v10];
            if (!v12)
            {
              v36 = v10;
LABEL_15:
              v44 = 0u;
              v45 = 0u;
              v42 = 0u;
              v43 = 0u;
              v13 = [(BiometricKitXPCServer *)self identities];
              v14 = [v13 countByEnumeratingWithState:&v42 objects:v51 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v43;
                do
                {
                  for (i = 0; i != v15; ++i)
                  {
                    if (*v43 != v16)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v18 = *(*(&v42 + 1) + 8 * i);
                    if ([v18 userID] != -1 && (-[BKCatacomb stateOfUserComponent:](self->_catacomb, "stateOfUserComponent:", objc_msgSend(v18, "userID")) & 1) == 0)
                    {
                      [v5 addObject:v18];
                    }
                  }

                  v15 = [v13 countByEnumeratingWithState:&v42 objects:v51 count:16];
                }

                while (v15);
              }

              if ([v5 count])
              {
                v40 = 0u;
                v41 = 0u;
                v38 = 0u;
                v39 = 0u;
                v35 = v5;
                obj = v5;
                v19 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
                if (v19)
                {
                  v20 = v19;
                  v21 = *v39;
                  do
                  {
                    for (j = 0; j != v20; ++j)
                    {
                      if (*v39 != v21)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v23 = *(*(&v38 + 1) + 8 * j);
                      if (__osLog)
                      {
                        v24 = __osLog;
                      }

                      else
                      {
                        v24 = v3;
                      }

                      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                      {
                        v25 = v24;
                        v26 = v3;
                        v27 = [v23 userID];
                        v28 = [v23 uuid];
                        *buf = 67109378;
                        *&buf[4] = v27;
                        v3 = v26;
                        v48 = 2112;
                        v49 = v28;
                        _os_log_impl(&dword_223E00000, v25, OS_LOG_TYPE_DEFAULT, "readCatacombState: removing biometrickitd identity [%u:%@]\n", buf, 0x12u);
                      }

                      [(BiometricKitXPCServer *)self removeIdentityObject:v23, v35];
                    }

                    v20 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
                  }

                  while (v20);
                }

                [(BiometricKitXPCServer *)self updateEnrollmentChangedNotification:1];
                v5 = v35;
              }

              if (__osLogTrace)
              {
                v29 = __osLogTrace;
              }

              else
              {
                v29 = v3;
              }

              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                *buf = 67109120;
                *&buf[4] = 0;
                _os_log_impl(&dword_223E00000, v29, OS_LOG_TYPE_DEBUG, "readCatacombState -> 0x%x\n", buf, 8u);
              }

              v30 = 0;
              v31 = v36;
              goto LABEL_45;
            }

            [(BiometricKitXPCServer *)v12 readCatacombState:v10];
          }
        }

        else
        {
          [BiometricKitXPCServer readCatacombState];
        }
      }
    }
  }

  else
  {
    [BiometricKitXPCServer readCatacombState];
  }

  v31 = *buf;
  v30 = v46;
  if (__osLogTrace)
  {
    v34 = __osLogTrace;
  }

  else
  {
    v34 = v3;
  }

  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v30;
    _os_log_impl(&dword_223E00000, v34, OS_LOG_TYPE_ERROR, "readCatacombState -> 0x%x\n", buf, 8u);
  }

LABEL_45:

  v32 = *MEMORY[0x277D85DE8];
  return v30;
}

- (id)catacombFileNameForComponent:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277D86220];
  if (__osLog)
  {
    v5 = __osLog;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v15 = v3;
    _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_DEBUG, "catacombFileNameForComponent: %p\n", buf, 0xCu);
  }

  if (([(__CFString *)v3 isMasterComponent]& 1) != 0)
  {
    v6 = @"master.cat";
  }

  else if ([(__CFString *)v3 isUserComponent])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"user_%08x.cat", -[__CFString userID](v3, "userID")];
  }

  else if ([(__CFString *)v3 isGroupComponent])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [(__CFString *)v3 userID];
    v9 = *[(__CFString *)v3 group];
    v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{-[__CFString group](v3, "group") + 4}];
    v6 = [v7 stringWithFormat:@"group_%08x_%x_%@.cat", v8, v9, v10];
  }

  else
  {
    v6 = 0;
  }

  if (__osLog)
  {
    v11 = __osLog;
  }

  else
  {
    v11 = v4;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEBUG, "catacombFileNameForComponent: -> %@\n", buf, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)getIdentityObjectByUserID:(unsigned int)a3 UUID:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109378;
    *v25 = a3;
    *&v25[4] = 2112;
    *&v25[6] = v6;
    _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_DEBUG, "getIdentityObjectByUserID:UUID: %u, %@\n", buf, 0x12u);
  }

  v8 = self->_ongoingBiometricOperation;
  objc_sync_enter(v8);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = self->_ongoingBiometricOperation;
  v10 = [(ActivityTracker *)v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v10)
  {
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([v13 userID] == a3)
        {
          v14 = [v13 uuid];
          v15 = [v14 isEqual:v6];

          if (v15)
          {
            v16 = v13;
            goto LABEL_17;
          }
        }
      }

      v10 = [(ActivityTracker *)v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_17:

  objc_sync_exit(v8);
  if (__osLogTrace)
  {
    v17 = __osLogTrace;
  }

  else
  {
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    *v25 = v16;
    *&v25[8] = 2112;
    *&v25[10] = v16;
    _os_log_impl(&dword_223E00000, v17, OS_LOG_TYPE_DEBUG, "getIdentityObjectByUserID:UUID: -> %p(%@)\n", buf, 0x16u);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)getIdentityObject:(id *)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134217984;
    v14 = a3;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "getIdentityObject: %p\n", &v13, 0xCu);
  }

  if (a3)
  {
    var0 = a3->var0;
    v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3->var1];
    v9 = [(BiometricKitXPCServer *)self getIdentityObjectByUserID:var0 UUID:v8];
  }

  else
  {
    v9 = 0;
  }

  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v5;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = v9;
    _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_DEBUG, "getIdentityObject: -> %@\n", &v13, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (unint64_t)identitiesCount
{
  v3 = self->_ongoingBiometricOperation;
  objc_sync_enter(v3);
  v4 = [(ActivityTracker *)self->_ongoingBiometricOperation count];
  objc_sync_exit(v3);

  return v4;
}

- (id)identitiesOfUser:(unsigned int)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v22) = a3;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "identitiesOfUser: %u\n", buf, 8u);
  }

  v7 = [MEMORY[0x277CBEB18] array];
  v8 = self->_ongoingBiometricOperation;
  objc_sync_enter(v8);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_ongoingBiometricOperation;
  v10 = [(ActivityTracker *)v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v13 userID] == a3)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [(ActivityTracker *)v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v5;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v22 = v7;
    _os_log_impl(&dword_223E00000, v14, OS_LOG_TYPE_DEBUG, "identitiesOfUser: -> %@\n", buf, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)identitiesOfComponent:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v25 = a3;
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v32 = v25;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "identitiesOfComponent: %@\n", buf, 0xCu);
  }

  if (![(BiometricKitXPCServer *)self supportsRemovableAccessories])
  {
    if ([v25 isUserComponent])
    {
      v21 = -[BiometricKitXPCServer identitiesOfUser:](self, "identitiesOfUser:", [v25 userID]);
      goto LABEL_27;
    }

    goto LABEL_12;
  }

  if ([v25 isMasterComponent])
  {
LABEL_12:
    v21 = 0;
    goto LABEL_27;
  }

  if ([v25 isGroupComponent])
  {
    v5 = *[v25 group];
  }

  else
  {
    v5 = 1;
  }

  v23 = v5;
  v22 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v25, "group") + 4}];
  v21 = [MEMORY[0x277CBEB18] array];
  v20 = self->_ongoingBiometricOperation;
  objc_sync_enter(v20);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->_ongoingBiometricOperation;
  v6 = [(ActivityTracker *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = [v9 userID];
        if (v10 == [v25 userID])
        {
          v11 = [v9 accessory];
          v12 = [v11 group];
          if ([v12 type] == v23)
          {
            v13 = [v9 accessory];
            v14 = [v13 group];
            v15 = [v14 uuid];
            v16 = [v15 isEqual:v22];

            if (v16)
            {
              [v21 addObject:v9];
            }
          }

          else
          {
          }
        }
      }

      v6 = [(ActivityTracker *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v20);
LABEL_27:
  if (__osLogTrace)
  {
    v17 = __osLogTrace;
  }

  else
  {
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v32 = v21;
    _os_log_impl(&dword_223E00000, v17, OS_LOG_TYPE_DEBUG, "identitiesOfComponent: -> %@\n", buf, 0xCu);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)catacombComponentForIdentity:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v20 = 138412290;
    *&v20[4] = v4;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "catacombComponentForIdentity: %@\n", v20, 0xCu);
  }

  if (v4)
  {
    if (-[BiometricKitXPCServer supportsRemovableAccessories](self, "supportsRemovableAccessories") && ([v4 accessory], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "group"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "type"), v8, v7, v9 != 1))
    {
      *&v20[8] = 0uLL;
      *v20 = [v4 userID];
      v12 = [v4 accessory];
      v13 = [v12 group];
      *&v20[4] = [v13 type];

      v14 = [v4 accessory];
      v15 = [v14 group];
      v16 = [v15 uuid];
      [v16 getUUIDBytes:&v20[8]];

      v10 = [CatacombComponent component:v20];
    }

    else
    {
      v10 = +[CatacombComponent componentForUserID:](CatacombComponent, "componentForUserID:", [v4 userID]);
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (__osLogTrace)
  {
    v17 = __osLogTrace;
  }

  else
  {
    v17 = v5;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *v20 = 138412290;
    *&v20[4] = v11;
    _os_log_impl(&dword_223E00000, v17, OS_LOG_TYPE_DEBUG, "identitiesOfComponent: -> %@\n", v20, 0xCu);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

- (unsigned)singleEnrolledUser
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "singleEnrolledUser\n", buf, 2u);
  }

  v5 = self->_ongoingBiometricOperation;
  objc_sync_enter(v5);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_ongoingBiometricOperation;
  v7 = [(ActivityTracker *)v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v7)
  {
    v8 = *v16;
    v9 = -1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (v9 == -1)
        {
          v9 = [v11 userID];
        }

        else if (v9 != [v11 userID])
        {
          goto LABEL_18;
        }
      }

      v7 = [(ActivityTracker *)v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  else
  {
LABEL_18:
    v9 = -1;
  }

  objc_sync_exit(v5);
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = v3;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v20 = v9;
    _os_log_impl(&dword_223E00000, v12, OS_LOG_TYPE_DEBUG, "singleEnrolledUser -> %u\n", buf, 8u);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)removeIdentityObject:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 userID];
    v8 = [v4 uuid];
    *buf = 67109378;
    v29 = v7;
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEFAULT, "removeIdentityObject: %u:%@\n", buf, 0x12u);
  }

  v9 = self->_ongoingBiometricOperation;
  objc_sync_enter(v9);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22 = self;
  v10 = self->_ongoingBiometricOperation;
  v11 = [(ActivityTracker *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = *v24;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [v14 userID];
        if (v15 == [v4 userID])
        {
          v16 = [v14 uuid];
          v17 = [v4 uuid];
          v18 = [v16 isEqual:v17];

          if (v18)
          {
            v19 = v14;

            if (v19)
            {
              [(ActivityTracker *)v22->_ongoingBiometricOperation removeObject:v19];
            }

            goto LABEL_18;
          }
        }
      }

      v11 = [(ActivityTracker *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_18:

  objc_sync_exit(v9);
  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v20, OS_LOG_TYPE_DEBUG, "removeIdentityObject: -> void\n", buf, 2u);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)addIdentityObject:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v12) = 138412290;
    *(&v12 + 4) = v4;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "addIdentityObject: %@\n", &v12, 0xCu);
  }

  if (v4)
  {
    v7 = [v4 accessory];
    if (v7)
    {
    }

    else if (![(BiometricKitXPCServer *)self supportsRemovableAccessories])
    {
      v13 = 0;
      v12 = xmmword_223E5EA80;
      v8 = [(BiometricKitXPCServer *)self getAccessoryObject:&v12];
      [v4 setAccessory:v8];
    }

    v9 = self->_ongoingBiometricOperation;
    objc_sync_enter(v9);
    [(ActivityTracker *)self->_ongoingBiometricOperation addObject:v4];
    objc_sync_exit(v9);
  }

  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v5;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_DEBUG, "addIdentityObject: -> void\n", &v12, 2u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addIdentityObjects:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "addIdentityObjects: %@\n", buf, 0xCu);
  }

  if (v4)
  {
    if (![(BiometricKitXPCServer *)self supportsRemovableAccessories])
    {
      v24 = 0;
      *buf = xmmword_223E5EA80;
      v7 = [(BiometricKitXPCServer *)self getAccessoryObject:buf];
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = v4;
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        v10 = *v19;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v18 + 1) + 8 * i);
            v13 = [v12 accessory];
            v14 = v13 == 0;

            if (v14)
            {
              [v12 setAccessory:v7];
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v9);
      }
    }

    v15 = self->_ongoingBiometricOperation;
    objc_sync_enter(v15);
    [(ActivityTracker *)self->_ongoingBiometricOperation addObjectsFromArray:v4];
    objc_sync_exit(v15);
  }

  if (__osLogTrace)
  {
    v16 = __osLogTrace;
  }

  else
  {
    v16 = v5;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v16, OS_LOG_TYPE_DEBUG, "addIdentityObjects: -> void\n", buf, 2u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (int)saveCatacombIfDirtyWithInterval:(double)a3 andDelay:(double)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = a3;
    *&buf[12] = 2048;
    *&buf[14] = a4;
    _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEBUG, "saveCatacombIfDirtyWithInterval:andDelay: %f, %f\n", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = 0;
  *&buf[15] = 0;
  v9 = [(BiometricKitXPCServer *)self performGetBiometrickitdInfoCommand:buf];
  if (v9)
  {
    [BiometricKitXPCServer saveCatacombIfDirtyWithInterval:andDelay:];
  }

  else
  {
    if (buf[20])
    {
      if (a3 <= 0.0)
      {
        v12 = 1.79769313e308;
      }

      else
      {
        v10 = [MEMORY[0x277CBEAA8] date];
        [v10 timeIntervalSince1970];
        v12 = v11 - *&buf[12];
      }

      if (a3 == 0.0 || v12 > a3)
      {
        [(BiometricOperation *)self->_runningBioOp setActive:1];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __66__BiometricKitXPCServer_saveCatacombIfDirtyWithInterval_andDelay___block_invoke;
        v16[3] = &unk_2784FA468;
        v16[4] = self;
        *&v16[5] = a4;
        dispatch_async(MEMORY[0x277D85CD0], v16);
      }
    }

    if (__osLogTrace)
    {
      v13 = __osLogTrace;
    }

    else
    {
      v13 = v7;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *v17 = 67109120;
      v18 = 0;
      _os_log_impl(&dword_223E00000, v13, OS_LOG_TYPE_DEBUG, "saveCatacombIfDirtyWithInterval:andDelay: -> err:0x%x\n", v17, 8u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __66__BiometricKitXPCServer_saveCatacombIfDirtyWithInterval_andDelay___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel_saveTemplateListAfterTemplateUpdate object:0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 performSelector:sel_saveTemplateListAfterTemplateUpdate withObject:0 afterDelay:v4];
}

- (int)saveTemplateListAfterTemplateUpdate
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "saveTemplateListAfterTemplateUpdate\n", v9, 2u);
  }

  v5 = [(BiometricKitXPCServer *)self saveCatacomb];
  if (v5)
  {
    [BiometricKitXPCServer saveTemplateListAfterTemplateUpdate];
  }

  else
  {
    if (__osLogTrace)
    {
      v6 = __osLogTrace;
    }

    else
    {
      v6 = v3;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 67109120;
      v9[1] = 0;
      _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "saveTemplateListAfterTemplateUpdate -> err:0x%x\n", v9, 8u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)deleteUnusedCatacombFiles
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "deleteUnusedCatacombFiles\n", buf, 2u);
  }

  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB18] array];
  if (([(BKCatacomb *)self->_catacomb stateOfMasterComponent]& 2) != 0)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = [(BKCatacomb *)self->_catacomb cachedComponents];
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v35;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(BiometricKitXPCServer *)self catacombFileNameForComponent:*(*(&v34 + 1) + 8 * i)];
          [v5 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v9);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = [(NSRecursiveLock *)self->_catacombLock content];
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v30 + 1) + 8 * j);
          if (([v5 containsObject:v18] & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"biolockout.cat") & 1) == 0)
          {
            [v6 addObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v15);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v19 = v6;
    v20 = [v19 countByEnumeratingWithState:&v26 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v27;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [(NSRecursiveLock *)self->_catacombLock deleteFile:*(*(&v26 + 1) + 8 * k), v26];
        }

        v21 = [v19 countByEnumeratingWithState:&v26 objects:v39 count:16];
      }

      while (v21);
    }
  }

  if (__osLogTrace)
  {
    v24 = __osLogTrace;
  }

  else
  {
    v24 = v3;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v24, OS_LOG_TYPE_DEBUG, "deleteUnusedCatacombFiles -> void\n", buf, 2u);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (int)getCatacombSaveListForComponents:(id)a3 list:(id *)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *v41 = v6;
    *&v41[8] = 2048;
    *&v41[10] = a4;
    _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEBUG, "getCatacombSaveListForComponents:list: %@, %p\n", buf, 0x16u);
  }

  v9 = [MEMORY[0x277CBEB18] array];
  if (v6)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v35 objects:v48 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = v7;
      v14 = *v36;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          if (([v16 isMasterComponent] & 1) == 0)
          {
            [v9 addObject:v16];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v35 objects:v48 count:16];
      }

      while (v12);

      v7 = v13;
LABEL_30:
      v10 = +[CatacombComponent masterComponent];
      [v9 addObject:v10];
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  v17 = [(BiometricKitXPCServer *)self readCatacombState];
  if (!v17)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = [(BKCatacomb *)self->_catacomb cachedComponents];
    v18 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = *v32;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v10);
          }

          v23 = *(*(&v31 + 1) + 8 * j);
          if (([(BKCatacomb *)self->_catacomb stateOfComponent:v23]& 4) != 0)
          {
            if (([v23 isMasterComponent] & 1) == 0)
            {
              [v9 addObject:v23];
            }

            v20 = 1;
          }
        }

        v19 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v19);

      v7 = MEMORY[0x277D86220];
      if ((v20 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

LABEL_31:

LABEL_32:
    if (a4)
    {
      v24 = v9;
      *a4 = v9;
    }

    if (__osLogTrace)
    {
      v25 = __osLogTrace;
    }

    else
    {
      v25 = v7;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109378;
      *v41 = 0;
      *&v41[4] = 2112;
      *&v41[6] = v9;
      _os_log_impl(&dword_223E00000, v25, OS_LOG_TYPE_DEBUG, "getCatacombSaveListForComponents:list: -> err:0x%x (list:%@)\n", buf, 0x12u);
    }

    v26 = 0;
    goto LABEL_40;
  }

  v26 = v17;
  if (__osLog)
  {
    v29 = __osLog;
  }

  else
  {
    v29 = v7;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    *v41 = "err == 0 ";
    *&v41[8] = 2048;
    *&v41[10] = v26;
    v42 = 2080;
    v43 = &unk_223E5FC53;
    v44 = 2080;
    v45 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
    v46 = 1024;
    v47 = 4201;
    _os_log_impl(&dword_223E00000, v29, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
  }

  if (__osLogTrace)
  {
    v30 = __osLogTrace;
  }

  else
  {
    v30 = v7;
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109378;
    *v41 = v26;
    *&v41[4] = 2112;
    *&v41[6] = v9;
    _os_log_impl(&dword_223E00000, v30, OS_LOG_TYPE_ERROR, "getCatacombSaveListForComponents:list: -> err:0x%x (list:%@)\n", buf, 0x12u);
  }

LABEL_40:

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

- (int)archiveCatacombDataForComponent:(id)a3 toArchiver:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = v6;
    v35 = 2048;
    v36 = v7;
    _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEBUG, "archiveCatacombDataForComponent:toArchiver: %p, %p\n", buf, 0x16u);
  }

  v32 = 0;
  if (v6)
  {
    if (v7)
    {
      v9 = [(BiometricKitXPCServer *)self performPrepareSaveCatacombCommand:v6 outDataSize:&v32];
      if (v9)
      {
        [(BiometricKitXPCServer *)v9 archiveCatacombDataForComponent:v9 toArchiver:buf, &v33];
      }

      else
      {
        v10 = [MEMORY[0x277CBEB28] dataWithLength:v32];
        if (v10)
        {
          v11 = [(BiometricKitXPCServer *)self performCompleteSaveCatacombCommand:v6 outBuffer:v10];
          if (!v11)
          {
            if (isInternalBuild())
            {
              v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Saving secure data, component = %@", v6];
              [(BiometricKitXPCServer *)self logCatacombInfo:v12 data:v10];
            }

            [v7 encodeInt32:-[BiometricKitXPCServer catacombVersion](self forKey:{"catacombVersion"), @"CatacombVersion"}];
            [v7 encodeInt32:objc_msgSend(v6 forKey:{"userID"), @"CatacombUserID"}];
            [v7 encodeObject:v10 forKey:@"CatacombSecureData"];
            if ([v6 isMasterComponent])
            {
              goto LABEL_30;
            }

            v13 = [(BiometricKitXPCServer *)self identitiesOfComponent:v6];
            if (v13)
            {
              [v7 encodeObject:v13 forKey:@"CatacombIdentityList"];
            }

            if ([v6 isUserComponent])
            {
              v14 = self->_expressModeState;
              objc_sync_enter(v14);
              expressModeState = self->_expressModeState;
              v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v6, "userID")}];
              v17 = [expressModeState objectForKeyedSubscript:v16];

              objc_sync_exit(v14);
              if (!v17)
              {
                v31 = 0;
                -[BiometricKitXPCServer getUserUUIDForUID:userUUID:](self, "getUserUUIDForUID:userUUID:", [v6 userID], &v31);
                v18 = v31;
                if (v18)
                {
                  v17 = v18;
                  v19 = self->_expressModeState;
                  objc_sync_enter(v19);
                  v20 = self->_expressModeState;
                  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v6, "userID")}];
                  [v20 setObject:v17 forKey:v21];

                  objc_sync_exit(v19);
                }

                else
                {
                  [BiometricKitXPCServer archiveCatacombDataForComponent:toArchiver:];
                  v17 = *buf;
                }
              }

              [v7 encodeObject:v17 forKey:@"CatacombUserUUID"];
              v22 = -[BiometricKitXPCServer getUserKeybagUUIDForUID:](self, "getUserKeybagUUIDForUID:", [v6 userID]);
              v23 = self->_catacombUserUUIDs;
              objc_sync_enter(v23);
              catacombUserUUIDs = self->_catacombUserUUIDs;
              v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v6, "userID")}];
              if (v22)
              {
                [(NSMutableDictionary *)catacombUserUUIDs setObject:v22 forKey:v25];
              }

              else
              {
                v22 = [(NSMutableDictionary *)catacombUserUUIDs objectForKeyedSubscript:v25];
              }

              objc_sync_exit(v23);
              if (v22)
              {
                [v7 encodeObject:v22 forKey:@"CatacombUserKeybagUUID"];
              }
            }

            else
            {
              if (![v6 isGroupComponent])
              {
LABEL_29:

LABEL_30:
                if (__osLogTrace)
                {
                  v26 = __osLogTrace;
                }

                else
                {
                  v26 = MEMORY[0x277D86220];
                }

                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 67109120;
                  *&buf[4] = 0;
                  _os_log_impl(&dword_223E00000, v26, OS_LOG_TYPE_DEBUG, "archiveCatacombDataForComponent:toArchiver: -> err:0x%x\n", buf, 8u);
                }

                v27 = 0;
                goto LABEL_36;
              }

              v17 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v6 length:{"group"), 8}];
              [v7 encodeObject:v17 forKey:@"CatacombGroup"];
            }

            goto LABEL_29;
          }

          [(BiometricKitXPCServer *)v11 archiveCatacombDataForComponent:v10 toArchiver:v11, buf, &v33];
        }

        else
        {
          [BiometricKitXPCServer archiveCatacombDataForComponent:toArchiver:];
        }
      }
    }

    else
    {
      [BiometricKitXPCServer archiveCatacombDataForComponent:toArchiver:];
    }
  }

  else
  {
    [BiometricKitXPCServer archiveCatacombDataForComponent:toArchiver:];
  }

  v10 = *buf;
  v27 = v33;
  if (__osLogTrace)
  {
    v30 = __osLogTrace;
  }

  else
  {
    v30 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v27;
    _os_log_impl(&dword_223E00000, v30, OS_LOG_TYPE_ERROR, "archiveCatacombDataForComponent:toArchiver: -> err:0x%x\n", buf, 8u);
  }

LABEL_36:

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (int)unarchiveCatacombDataForComponent:(id)a3 fromUnarchiver:(id)a4 secureData:(id *)a5 identities:(id *)a6
{
  v69 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    *&buf[4] = v9;
    v63 = 2048;
    v64 = v10;
    v65 = 2048;
    v66 = a5;
    v67 = 2048;
    v68 = a6;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEBUG, "unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities: %@, %p, %p, %p\n", buf, 0x2Au);
  }

  if (!v9)
  {
    [BiometricKitXPCServer unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities:];
LABEL_55:
    v14 = v59;
    v53 = *buf;
    v34 = HIDWORD(v60);
    goto LABEL_28;
  }

  if (!v10)
  {
    [BiometricKitXPCServer unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities:];
    goto LABEL_55;
  }

  v12 = [(BiometricKitXPCServer *)self catacombVersion];
  if (v12 != [v10 decodeInt32ForKey:@"CatacombVersion"])
  {
    [BiometricKitXPCServer unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities:];
    goto LABEL_55;
  }

  v13 = [v9 userID];
  if (v13 != [v10 decodeInt32ForKey:@"CatacombUserID"])
  {
    [BiometricKitXPCServer unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities:];
    goto LABEL_55;
  }

  v53 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"CatacombSecureData"];
  if ([v9 isMasterComponent])
  {
    v14 = 0;
LABEL_40:
    if (a5)
    {
      v44 = v53;
      *a5 = v53;
    }

    if (a6)
    {
      v45 = v14;
      *a6 = v14;
    }

    if (__osLogTrace)
    {
      v46 = __osLogTrace;
    }

    else
    {
      v46 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      _os_log_impl(&dword_223E00000, v46, OS_LOG_TYPE_DEBUG, "unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities: -> err:0x%x\n", buf, 8u);
    }

    v34 = 0;
    goto LABEL_50;
  }

  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v49 = objc_opt_class();
  v17 = [v15 setWithObjects:v16];
  v18 = [v10 decodeObjectOfClasses:v17 forKey:@"CatacombIdentityList"];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v14 = v18;
  v19 = [v14 countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v19)
  {
    v20 = *v56;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v56 != v20)
        {
          objc_enumerationMutation(v14);
        }

        v22 = [*(*(&v55 + 1) + 8 * i) userID];
        if (v22 != [v9 userID])
        {
          [BiometricKitXPCServer unarchiveCatacombDataForComponent:v14 fromUnarchiver:? secureData:? identities:?];
          goto LABEL_27;
        }
      }

      v19 = [v14 countByEnumeratingWithState:&v55 objects:v61 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  if (![v9 isUserComponent])
  {
    if (![v9 isGroupComponent])
    {
      goto LABEL_40;
    }

    v28 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"CatacombGroup"];
    v29 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v9 length:{"group"), 8}];
    v30 = [v28 isEqualToData:v29];

    if (v30)
    {
      goto LABEL_40;
    }

    [(BiometricKitXPCServer *)v14 unarchiveCatacombDataForComponent:v53 fromUnarchiver:&v59 secureData:buf identities:&v60 + 4, v31, v32, v33, v49, 0, v50, a6, v53, v54, SHIDWORD(v54), v55, *(&v55 + 1), v56, *(&v56 + 1), v57, *(&v57 + 1), v58, *(&v58 + 1), v59, v60];
    goto LABEL_55;
  }

  v23 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"CatacombUserUUID"];
  v24 = self->_expressModeState;
  objc_sync_enter(v24);
  if (v23)
  {
    expressModeState = self->_expressModeState;
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "userID")}];
    [expressModeState setObject:v23 forKey:v26];

    v27 = 0x277CCA000;
  }

  else
  {
    v54 = 0;
    -[BiometricKitXPCServer getUserUUIDForUID:userUUID:](self, "getUserUUIDForUID:userUUID:", [v9 userID], &v54);
    v36 = v54;
    if (v36)
    {
      v23 = v36;
      v37 = self->_expressModeState;
      objc_sync_enter(v37);
      v51 = self->_expressModeState;
      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "userID")}];
      [v51 setObject:v23 forKey:v38];

      v27 = 0x277CCA000uLL;
      objc_sync_exit(v37);
    }

    else
    {
      [BiometricKitXPCServer unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities:];
      v27 = 0x277CCA000;
      v23 = *buf;
    }
  }

  objc_sync_exit(v24);

  v39 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"CatacombUserKeybagUUID"];
  if (!v39)
  {
    goto LABEL_39;
  }

  v40 = self->_catacombUserUUIDs;
  objc_sync_enter(v40);
  catacombUserUUIDs = self->_catacombUserUUIDs;
  v42 = [*(v27 + 2992) numberWithUnsignedInt:{objc_msgSend(v9, "userID")}];
  [(NSMutableDictionary *)catacombUserUUIDs setObject:v39 forKey:v42];

  objc_sync_exit(v40);
  v43 = -[BiometricKitXPCServer getUserKeybagUUIDForUID:](self, "getUserKeybagUUIDForUID:", [v9 userID]);
  if (!v43 || ([v39 isEqual:v43] & 1) != 0)
  {

LABEL_39:
    goto LABEL_40;
  }

  [BiometricKitXPCServer unarchiveCatacombDataForComponent:v43 fromUnarchiver:v39 secureData:v23 identities:?];
LABEL_27:
  v34 = 269;
LABEL_28:
  if (__osLogTrace)
  {
    v35 = __osLogTrace;
  }

  else
  {
    v35 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v34;
    _os_log_impl(&dword_223E00000, v35, OS_LOG_TYPE_ERROR, "unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities: -> err:0x%x\n", buf, 8u);
  }

LABEL_50:

  v47 = *MEMORY[0x277D85DE8];
  return v34;
}

- (int)saveCatacomb
{
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_223E00000, v3, OS_LOG_TYPE_DEBUG, "saveCatacomb --> saveCatacombForComponents:\n", v5, 2u);
  }

  return [(BiometricKitXPCServer *)self saveCatacombForComponents:0];
}

- (int)saveCatacombForComponents:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v4;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEFAULT, "saveCatacombForComponents: %{public}@\n", buf, 0xCu);
  }

  v7 = os_transaction_create();
  [(NSMutableArray *)self->_cachedIdentities lock];
  v8 = objc_autoreleasePoolPush();
  if (isEphemeralMultiUser())
  {
    [BiometricKitXPCServer saveCatacombForComponents:];
    v21 = v28;
    v11 = *buf;
  }

  else
  {
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel_saveTemplateListAfterTemplateUpdate object:0];
    [(BiometricOperation *)self->_runningBioOp setActive:0];
    [(BiometricKitXPCServer *)self cacheCatacombInfo];
    v27 = 0;
    v9 = [(BiometricKitXPCServer *)self getCatacombSaveListForComponents:v4 list:&v27];
    v10 = v27;
    v11 = v10;
    if (v9)
    {
      [BiometricKitXPCServer saveCatacombForComponents:];
      v21 = *buf;
    }

    else
    {
      if (![v10 count])
      {
        v21 = 0;
        goto LABEL_23;
      }

      v25 = v7;
      v26 = v4;
      v12 = 0;
      while (1)
      {
        v13 = [v11 objectAtIndexedSubscript:v12];
        v14 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
        if (!v14)
        {
          [BiometricKitXPCServer saveCatacombForComponents:];
          goto LABEL_34;
        }

        if ([(BiometricKitXPCServer *)self archiveCatacombDataForComponent:v13 toArchiver:v14])
        {
          [BiometricKitXPCServer saveCatacombForComponents:];
          goto LABEL_34;
        }

        [v14 finishEncoding];
        if (isInternalBuild())
        {
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Saving Catacomb file, component = %@", v13];
          v16 = [v14 encodedData];
          [(BiometricKitXPCServer *)self logCatacombInfo:v15 data:v16];
        }

        catacombLock = self->_catacombLock;
        v18 = [v14 encodedData];
        v19 = [(BiometricKitXPCServer *)self catacombFileNameForComponent:v13];
        v20 = [(NSRecursiveLock *)catacombLock writeData:v18 toFile:v19];

        if (v20)
        {
          [BiometricKitXPCServer saveCatacombForComponents:];
          goto LABEL_34;
        }

        if (v12 == [v11 count] - 1 && -[NSRecursiveLock commitWrite](self->_catacombLock, "commitWrite"))
        {
          break;
        }

        if ([(BiometricKitXPCServer *)self performConfirmSaveCatacombCommand:v13])
        {
          [BiometricKitXPCServer saveCatacombForComponents:];
          goto LABEL_34;
        }

        if ([v13 isUserComponent])
        {
          -[BiometricKitXPCServer logCatacombUUIDForUser:catacombUUID:](self, "logCatacombUUIDForUser:catacombUUID:", [v13 userID], 0);
          -[BiometricKitXPCServer logCatacombHashForUser:catacombHash:](self, "logCatacombHashForUser:catacombHash:", [v13 userID], 0);
        }

        if ([v11 count] <= ++v12)
        {
          v21 = 0;
          v7 = v25;
          v4 = v26;
          v5 = MEMORY[0x277D86220];
          goto LABEL_23;
        }
      }

      [BiometricKitXPCServer saveCatacombForComponents:];
LABEL_34:
      v21 = *buf;

      v7 = v25;
      v4 = v26;
      v5 = MEMORY[0x277D86220];
    }

    if (v21 == 269)
    {
      [(BiometricKitXPCServer *)self clearTemplateList];
      [(NSRecursiveLock *)self->_catacombLock deleteAll];
    }
  }

LABEL_23:

  objc_autoreleasePoolPop(v8);
  [(NSMutableArray *)self->_cachedIdentities unlock];
  if (__osLogTrace)
  {
    v22 = __osLogTrace;
  }

  else
  {
    v22 = v5;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v21;
    _os_log_impl(&dword_223E00000, v22, OS_LOG_TYPE_DEFAULT, "saveCatacombForComponents: -> err:0x%x\n", buf, 8u);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

- (int)saveCatacombForIdentity:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v17 = v4;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "saveCatacombForIdentity: %@\n", buf, 0xCu);
  }

  if (v4)
  {
    v7 = [(BiometricKitXPCServer *)self catacombComponentForIdentity:v4];
    v15 = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    v9 = [(BiometricKitXPCServer *)self saveCatacombForComponents:v8];

    if (!v9)
    {
      if (__osLogTrace)
      {
        v10 = __osLogTrace;
      }

      else
      {
        v10 = v5;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v17) = 0;
        _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_DEBUG, "saveCatacombForIdentity: -> err:0x%x\n", buf, 8u);
      }

      v11 = 0;
      goto LABEL_14;
    }

    [BiometricKitXPCServer saveCatacombForIdentity:];
  }

  else
  {
    [BiometricKitXPCServer saveCatacombForIdentity:];
  }

  v11 = *buf;
  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v5;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v17) = v11;
    _os_log_impl(&dword_223E00000, v14, OS_LOG_TYPE_ERROR, "saveCatacombForIdentity: -> err:0x%x\n", buf, 8u);
  }

LABEL_14:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (int)loadCatacomb
{
  v54 = *MEMORY[0x277D85DE8];
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v3, OS_LOG_TYPE_DEFAULT, "loadCatacomb\n", buf, 2u);
  }

  [(NSMutableArray *)self->_cachedIdentities lock];
  if (![(BiometricKitXPCServer *)self supportsRemovableAccessories])
  {
    [(BiometricKitXPCServer *)self cacheAccessories];
  }

  [(BiometricKitXPCServer *)self clearTemplateList];
  if ([(BiometricKitXPCServer *)self readCatacombState])
  {
    [BiometricKitXPCServer loadCatacomb];
LABEL_59:
    v8 = *buf;
    [(BiometricKitXPCServer *)self clearTemplateList];
    if (v8 == 269)
    {
      [(NSRecursiveLock *)self->_catacombLock deleteAll];
    }

    v9 = 0;
    goto LABEL_14;
  }

  if (isEphemeralMultiUser())
  {
    goto LABEL_13;
  }

  if (isInternalBuild())
  {
    v4 = [(NSRecursiveLock *)self->_catacombLock content];
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CBEAA8] date];
    v7 = [v5 stringWithFormat:@"%@ - BKCatacomb::content(), count = %lu", v6, objc_msgSend(v4, "count")];
    [(BiometricKitXPCServer *)self writeStringToPersistentLog:v7];
  }

  if (([(BKCatacomb *)self->_catacomb stateOfMasterComponent]& 1) == 0)
  {
LABEL_13:
    v8 = 0;
    v9 = 1;
LABEL_14:
    [(BiometricKitXPCServer *)self performNoCatacombCommand:0xFFFFFFFFLL];
    [(BiometricKitXPCServer *)self readCatacombState];
    if ((v9 & 1) == 0 && ([(CatacombStateCache *)self->_catacombStateCache sendAutoBugCaptureEvent:4098]& 1) == 0)
    {
      [BiometricKitXPCServer loadCatacomb];
      v8 = *buf;
    }

    goto LABEL_52;
  }

  v10 = +[CatacombComponent masterComponent];
  v11 = [(BiometricKitXPCServer *)self loadCatacombForComponent:v10];

  if (v11)
  {
    [BiometricKitXPCServer loadCatacomb];
    goto LABEL_59;
  }

  if ([(BiometricKitXPCServer *)self readCatacombState])
  {
    [BiometricKitXPCServer loadCatacomb];
    goto LABEL_59;
  }

  v12 = [MEMORY[0x277CBEB18] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v13 = [(BKCatacomb *)self->_catacomb cachedUserComponents];
  v14 = [v13 countByEnumeratingWithState:&v38 objects:v53 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v39;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v38 + 1) + 8 * i);
        if (([(BKCatacomb *)self->_catacomb stateOfComponent:v18]& 1) != 0)
        {
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v18, "userID")}];
          [v12 addObject:v19];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v38 objects:v53 count:16];
    }

    while (v15);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = v12;
  v21 = [v20 countByEnumeratingWithState:&v34 objects:v52 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v35;
    do
    {
      v24 = 0;
      do
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v34 + 1) + 8 * v24) unsignedIntValue];
        v26 = [(BiometricKitXPCServer *)self loadCatacombForUser:v25];
        if (__osLog)
        {
          v27 = __osLog;
        }

        else
        {
          v27 = MEMORY[0x277D86220];
        }

        if (v26)
        {
          v28 = v26;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v43 = "tempErr == 0 ";
            v44 = 2048;
            v45 = v28;
            v46 = 2080;
            v47 = &unk_223E5FC53;
            v48 = 2080;
            v49 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
            v50 = 1024;
            v51 = 4625;
            _os_log_impl(&dword_223E00000, v27, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
          }

          [(BiometricKitXPCServer *)self performNoCatacombCommand:v25];
          [(BiometricKitXPCServer *)self readCatacombState];
          if (([(CatacombStateCache *)self->_catacombStateCache sendAutoBugCaptureEvent:4098]& 1) == 0)
          {
            v29 = (__osLog ? __osLog : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316162;
              v43 = "abcResult";
              v44 = 2048;
              v45 = 0;
              v46 = 2080;
              v47 = &unk_223E5FC53;
              v48 = 2080;
              v49 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
              v50 = 1024;
              v51 = 4642;
              _os_log_impl(&dword_223E00000, v29, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
            }
          }
        }

        else
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v43) = v25;
            _os_log_impl(&dword_223E00000, v27, OS_LOG_TYPE_DEFAULT, "loadCatacomb loaded user: %u\n", buf, 8u);
          }

          [(BiometricKitXPCServer *)self syncTemplateListForUser:v25];
        }

        ++v24;
      }

      while (v22 != v24);
      v30 = [v20 countByEnumeratingWithState:&v34 objects:v52 count:16];
      v22 = v30;
    }

    while (v30);
  }

  [(BiometricKitXPCServer *)self updatePropertiesOfIdentities];
  self->_userListChangeDetected = 1;
  [(BiometricKitXPCServer *)self validateAllUsers];
  [(BiometricKitXPCServer *)self deleteUnusedCatacombFiles];

  v8 = 0;
LABEL_52:
  [(BiometricKitXPCServer *)self setCatacombRestored:1];
  [(NSMutableArray *)self->_cachedIdentities unlock];
  if (__osLogTrace)
  {
    v31 = __osLogTrace;
  }

  else
  {
    v31 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v43) = v8;
    _os_log_impl(&dword_223E00000, v31, OS_LOG_TYPE_DEFAULT, "loadCatacomb -> err:0x%x\n", buf, 8u);
  }

  v32 = *MEMORY[0x277D85DE8];
  return v8;
}

- (int)loadCatacombForComponent:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v50 = v4;
    _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_DEFAULT, "loadCatacombForComponent: %@\n", buf, 0xCu);
  }

  if (!v4)
  {
    if (__osLog)
    {
      v37 = __osLog;
    }

    else
    {
      v37 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v50 = "component";
      v51 = 2048;
      v52 = 0;
      v53 = 2080;
      v54 = &unk_223E5FC53;
      v55 = 2080;
      v56 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v57 = 1024;
      v58 = 4754;
      _os_log_impl(&dword_223E00000, v37, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v10 = 0;
    v25 = 0;
    v24 = 0;
    v21 = 0;
    v43 = 0;
    v9 = 258;
    goto LABEL_41;
  }

  v6 = [(BKCatacomb *)self->_catacomb stateOfComponent:v4];
  if ([v4 isUserComponent])
  {
    -[BiometricKitXPCServer clearTemplateListForUser:](self, "clearTemplateListForUser:", [v4 userID]);
  }

  if ((v6 & 1) == 0)
  {
    if (__osLog)
    {
      v38 = __osLog;
    }

    else
    {
      v38 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v50 = "catacombState & (1 << 0)";
      v51 = 2048;
      v52 = 0;
      v53 = 2080;
      v54 = &unk_223E5FC53;
      v55 = 2080;
      v56 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v57 = 1024;
      v58 = 4766;
      _os_log_impl(&dword_223E00000, v38, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v10 = 0;
    v25 = 0;
    v24 = 0;
    v21 = 0;
    v43 = 0;
    v9 = 257;
    goto LABEL_41;
  }

  catacombLock = self->_catacombLock;
  v47 = 0;
  v8 = [(BiometricKitXPCServer *)self catacombFileNameForComponent:v4];
  v46 = 0;
  v9 = [(NSRecursiveLock *)catacombLock readData:&v47 fromFile:v8 logString:&v46];
  v10 = v47;
  v43 = v46;

  if (isInternalBuild())
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CBEAA8] date];
    v13 = [(BiometricKitXPCServer *)self catacombFileNameForComponent:v4];
    v14 = [v11 stringWithFormat:@"%@ - BKCatacomb::readData(file = '%@'), err = %d (%@)", v12, v13, v9, v43];
    [(BiometricKitXPCServer *)self writeStringToPersistentLog:v14];
  }

  if (v9)
  {
    if (__osLog)
    {
      v39 = __osLog;
    }

    else
    {
      v39 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v50 = "err == 0 ";
      v51 = 2048;
      v52 = v9;
      v53 = 2080;
      v54 = &unk_223E5FC53;
      v55 = 2080;
      v56 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v57 = 1024;
      v58 = 4773;
      _os_log_impl(&dword_223E00000, v39, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v25 = 0;
    v24 = 0;
    v21 = 0;
    goto LABEL_41;
  }

  if (!v10)
  {
    if (__osLog)
    {
      v40 = __osLog;
    }

    else
    {
      v40 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v50 = "catacombData";
      v51 = 2048;
      v52 = 0;
      v53 = 2080;
      v54 = &unk_223E5FC53;
      v55 = 2080;
      v56 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v57 = 1024;
      v58 = 4774;
      _os_log_impl(&dword_223E00000, v40, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v10 = 0;
    v25 = 0;
    v24 = 0;
    v21 = 0;
    v9 = 261;
    goto LABEL_41;
  }

  if (isInternalBuild())
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Loading Catacomb file, component = %@", v4];
    [(BiometricKitXPCServer *)self logCatacombInfo:v15 data:v10];
  }

  if ([v10 length])
  {
    v16 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v10 error:0];
    v17 = v16;
    if (v16)
    {
      [v16 setDecodingFailurePolicy:0];
      v44 = 0;
      v45 = 0;
      v9 = [(BiometricKitXPCServer *)self unarchiveCatacombDataForComponent:v4 fromUnarchiver:v17 secureData:&v45 identities:&v44];
      v18 = v10;
      v19 = v6;
      v20 = v45;
      v21 = v44;
      if (v9)
      {
        if (__osLog)
        {
          v42 = __osLog;
        }

        else
        {
          v42 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v50 = "err == 0 ";
          v51 = 2048;
          v52 = v9;
          v53 = 2080;
          v54 = &unk_223E5FC53;
          v55 = 2080;
          v56 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
          v57 = 1024;
          v58 = 4791;
          _os_log_impl(&dword_223E00000, v42, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }

        v22 = 4;
      }

      else
      {
        v22 = 0;
      }

      v23 = v17;
      v24 = v20;
      v6 = v19;
      v10 = v18;
      v25 = v23;
    }

    else
    {
      if (__osLog)
      {
        v41 = __osLog;
      }

      else
      {
        v41 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v50 = "unarchiver";
        v51 = 2048;
        v52 = 0;
        v53 = 2080;
        v54 = &unk_223E5FC53;
        v55 = 2080;
        v56 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        v57 = 1024;
        v58 = 4786;
        _os_log_impl(&dword_223E00000, v41, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v21 = 0;
      v24 = 0;
      v25 = 0;
      v9 = 261;
      v22 = 4;
    }

    [v25 finishDecoding];
    if (v22)
    {
LABEL_40:
      if (!v9)
      {
        goto LABEL_51;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v21 = 0;
    v24 = 0;
    v25 = 0;
    v9 = 0;
  }

  if ((v6 & 2) != 0)
  {
LABEL_38:
    if (v21)
    {
      [(BiometricKitXPCServer *)self addIdentityObjects:v21];
    }

    goto LABEL_40;
  }

  if (![v24 length])
  {
    if (([v4 isMasterComponent] & 1) != 0 || objc_msgSend(v4, "isUserComponent"))
    {
      v9 = -[BiometricKitXPCServer performNoCatacombCommand:](self, "performNoCatacombCommand:", [v4 userID]);
      if (v9)
      {
        if (__osLog)
        {
          v27 = __osLog;
        }

        else
        {
          v27 = MEMORY[0x277D86220];
        }

        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        *buf = 136316162;
        v50 = "err == 0 ";
        v51 = 2048;
        v52 = v9;
        v53 = 2080;
        v54 = &unk_223E5FC53;
        v55 = 2080;
        v56 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        v57 = 1024;
        v58 = 4831;
        goto LABEL_98;
      }
    }

    goto LABEL_37;
  }

  if (isInternalBuild())
  {
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Loading secure data, component = %@", v4];
    [(BiometricKitXPCServer *)self logCatacombInfo:v26 data:v24];
  }

  v9 = [(BiometricKitXPCServer *)self performLoadCatacombCommand:v4 inData:v24];
  if (!v9)
  {
LABEL_37:
    [(BiometricKitXPCServer *)self readCatacombState];
    goto LABEL_38;
  }

  if (__osLog)
  {
    v27 = __osLog;
  }

  else
  {
    v27 = MEMORY[0x277D86220];
  }

  if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_41;
  }

  *buf = 136316162;
  v50 = "err == 0 ";
  v51 = 2048;
  v52 = v9;
  v53 = 2080;
  v54 = &unk_223E5FC53;
  v55 = 2080;
  v56 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
  v57 = 1024;
  v58 = 4824;
LABEL_98:
  _os_log_impl(&dword_223E00000, v27, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
LABEL_41:
  if (isInternalBuild())
  {
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Loading catacomb failed, err = %d (0x%x)", v9, v9];
    [(BiometricKitXPCServer *)self writeStringToPersistentLog:v28];
  }

  if ([v4 isUserComponent])
  {
    -[BiometricKitXPCServer clearTemplateListForUser:](self, "clearTemplateListForUser:", [v4 userID]);
  }

  if (v9 == 269)
  {
    v29 = [v4 isMasterComponent];
    v30 = self->_catacombLock;
    if (v29)
    {
      [(NSRecursiveLock *)self->_catacombLock deleteAll];
    }

    else
    {
      v31 = [(BiometricKitXPCServer *)self catacombFileNameForComponent:v4];
      [(NSRecursiveLock *)v30 deleteFile:v31];

      if ([v4 isUserComponent])
      {
        -[BiometricKitXPCServer removeUser:](self, "removeUser:", [v4 userID]);
        v32 = +[CatacombComponent masterComponent];
        v48 = v32;
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
        [(BiometricKitXPCServer *)self saveCatacombForComponents:v33];
      }
    }

    LODWORD(v9) = 269;
  }

LABEL_51:
  if (__osLogTrace)
  {
    v34 = __osLogTrace;
  }

  else
  {
    v34 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v50) = v9;
    _os_log_impl(&dword_223E00000, v34, OS_LOG_TYPE_DEFAULT, "loadCatacombForComponent: -> err:0x%x\n", buf, 8u);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v9;
}

- (int)cacheAccessories
{
  v80 = *MEMORY[0x277D85DE8];
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v3, OS_LOG_TYPE_DEBUG, "cacheAccessories\n", buf, 2u);
  }

  v59 = [MEMORY[0x277CBEB58] set];
  v58 = [MEMORY[0x277CBEB58] set];
  if ([(BiometricKitXPCServer *)self supportsRemovableAccessories])
  {
    v4 = [MEMORY[0x277CBEB28] dataWithLength:264];
    v5 = v4;
    if (!v4)
    {
      [BiometricKitXPCServer cacheAccessories];
      goto LABEL_88;
    }

    v6 = [(BiometricKitXPCServer *)self performGetBioDeviceListCommand:v4];
    if (v6)
    {
      [(BiometricKitXPCServer *)v6 cacheAccessories:v5];
      goto LABEL_88;
    }

    v7 = v5;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB28] dataWithLength:44];
    v9 = v8;
    if (!v8)
    {
      [BiometricKitXPCServer cacheAccessories];
      goto LABEL_88;
    }

    v10 = v8;
    v11 = [v9 mutableBytes];
    *v11 = 1;
    uuid_clear((v11 + 4));
    *(v11 + 20) = 1;
    uuid_clear((v11 + 24));
    *(v11 + 40) = 6;
    v7 = v9;
  }

  v60 = v7;
  if (__ROR8__(0x2E8BA2E8BA2E8BA3 * [v7 length], 2) < 0x5D1745D1745D175uLL)
  {
    v12 = [v60 length];
    if (v12 >= 0x2C)
    {
      v13 = 0;
      v14 = v12 / 0x2C;
      do
      {
        v15 = v60;
        v16 = [v60 mutableBytes];
        v17 = objc_alloc_init(MEMORY[0x277CF1C00]);
        v18 = objc_alloc_init(MEMORY[0x277CF1C08]);
        [v18 setType:*(v16 + v13 + 20)];
        v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v16 + v13 + 24];
        [v18 setUuid:v19];

        if ([v18 type] == 1)
        {
          [v18 setName:@"Builtin"];
        }

        else
        {
          v20 = [v18 type];
          v21 = MEMORY[0x277CCACA8];
          if (v20 == 2)
          {
            v22 = [v18 uuid];
            v23 = [v22 UUIDString];
            v24 = [v21 stringWithFormat:@"Trusted Accessory %@", v23];
            [v18 setName:v24];
          }

          else
          {
            v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Type %u", objc_msgSend(v18, "type")];
            [v18 setName:v22];
          }
        }

        [v17 setType:*(v16 + v13)];
        v25 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v16 + v13 + 4];
        [v17 setUuid:v25];

        if ([v17 type] == 1)
        {
          [v17 setName:@"Builtin"];
        }

        else
        {
          v26 = [v17 type];
          v27 = MEMORY[0x277CCACA8];
          if (v26 == 2)
          {
            v28 = [v17 uuid];
            v29 = [v28 UUIDString];
            v30 = [v27 stringWithFormat:@"Trusted Accessory %@", v29];
            [v17 setName:v30];
          }

          else
          {
            v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Type %u", objc_msgSend(v17, "type")];
            [v18 setName:v28];
          }
        }

        [v17 setGroup:v18];
        [v17 setFlags:*(v16 + v13 + 40)];
        [v59 addObject:v17];
        if (([v17 flags] & 1) != 0 && (objc_msgSend(v17, "flags") & 2) != 0)
        {
          [v58 addObject:v17];
        }

        v13 += 44;
        --v14;
      }

      while (v14);
    }

    v31 = self->_biometricABCDispatchQueue;
    objc_sync_enter(v31);
    v32 = [MEMORY[0x277CBEB58] set];
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v33 = self->_biometricABCDispatchQueue;
    v34 = [(OS_dispatch_queue *)v33 countByEnumeratingWithState:&v69 objects:v79 count:16];
    if (v34)
    {
      v35 = *v70;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v70 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v37 = *(*(&v69 + 1) + 8 * i);
          if (([v37 flags] & 1) != 0 && (objc_msgSend(v37, "flags") & 2) != 0)
          {
            [v32 addObject:v37];
          }
        }

        v34 = [(OS_dispatch_queue *)v33 countByEnumeratingWithState:&v69 objects:v79 count:16];
      }

      while (v34);
    }

    v38 = [v32 isEqualToSet:v58];
    v57 = [(OS_dispatch_queue *)self->_biometricABCDispatchQueue isEqualToSet:v59];
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v39 = v59;
    v40 = [v39 countByEnumeratingWithState:&v65 objects:v78 count:16];
    if (v40)
    {
      v41 = *v66;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v66 != v41)
          {
            objc_enumerationMutation(v39);
          }

          v43 = *(*(&v65 + 1) + 8 * j);
          if ([v43 flags])
          {
            if (([(OS_dispatch_queue *)self->_biometricABCDispatchQueue containsObject:v43]& 1) == 0)
            {
              [(BiometricKitXPCServer *)self accessoryAdded:v43];
            }

            if (([v43 flags] & 2) != 0 && (objc_msgSend(v32, "containsObject:", v43) & 1) == 0)
            {
              [(BiometricKitXPCServer *)self accessoryConnected:v43];
            }

            else if (([v43 flags] & 2) == 0 && objc_msgSend(v32, "containsObject:", v43))
            {
              [(BiometricKitXPCServer *)self accessoryDisconnected:v43];
            }
          }
        }

        v40 = [v39 countByEnumeratingWithState:&v65 objects:v78 count:16];
      }

      while (v40);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v44 = self->_biometricABCDispatchQueue;
    v45 = [(OS_dispatch_queue *)v44 countByEnumeratingWithState:&v61 objects:v77 count:16];
    if (v45)
    {
      v46 = *v62;
      do
      {
        for (k = 0; k != v45; ++k)
        {
          if (*v62 != v46)
          {
            objc_enumerationMutation(v44);
          }

          v48 = *(*(&v61 + 1) + 8 * k);
          if (([v48 flags] & 1) != 0 && (objc_msgSend(v39, "containsObject:", v48) & 1) == 0)
          {
            [(BiometricKitXPCServer *)self accessoryRemoved:v48];
          }
        }

        v45 = [(OS_dispatch_queue *)v44 countByEnumeratingWithState:&v61 objects:v77 count:16];
      }

      while (v45);
    }

    [(OS_dispatch_queue *)self->_biometricABCDispatchQueue setSet:v39];
    if ((v57 & v38) == 1)
    {
      [(BiometricKitXPCServer *)self accessoryMayHaveChanged];
    }

    if ((v38 & 1) == 0 && LOBYTE(self->_mkbLockStatusNtfToken) == 1)
    {
      notify_set_state(HIDWORD(self->_catacombUserKeybagUUIDs), [v58 count]);
      notify_post("com.apple.BiometricKit.connectedAccessoriesChanged");
    }

    objc_sync_exit(v31);
    if (__osLog)
    {
      v49 = __osLog;
    }

    else
    {
      v49 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = v49;
      v51 = [v39 count];
      *buf = 134218242;
      *&buf[4] = v51;
      v75 = 2114;
      v76 = v39;
      _os_log_impl(&dword_223E00000, v50, OS_LOG_TYPE_DEFAULT, "cacheAccessories accessories %lu: %{public}@\n", buf, 0x16u);
    }

    if (__osLogTrace)
    {
      v52 = __osLogTrace;
    }

    else
    {
      v52 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = 0;
      _os_log_impl(&dword_223E00000, v52, OS_LOG_TYPE_DEBUG, "cacheAccessories -> err:0x%x\n", buf, 8u);
    }

    v53 = 0;
    goto LABEL_83;
  }

  [BiometricKitXPCServer cacheAccessories];
LABEL_88:
  v60 = *buf;
  v53 = v73;
  if (__osLogTrace)
  {
    v56 = __osLogTrace;
  }

  else
  {
    v56 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v53;
    _os_log_impl(&dword_223E00000, v56, OS_LOG_TYPE_ERROR, "cacheAccessories -> err:0x%x\n", buf, 8u);
  }

LABEL_83:

  v54 = *MEMORY[0x277D85DE8];
  return v53;
}

- (id)getAccessoryObject:(id *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = a3;
    _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_DEBUG, "getAccessoryObject: %p\n", buf, 0xCu);
  }

  if (a3)
  {
    obj = self->_biometricABCDispatchQueue;
    objc_sync_enter(obj);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = self->_biometricABCDispatchQueue;
    v7 = [(OS_dispatch_queue *)v6 countByEnumeratingWithState:&v19 objects:v26 count:16];
    if (v7)
    {
      v8 = *v20;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          if ([v10 type] == a3->var0)
          {
            v11 = [v10 uuid];
            v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3->var1];
            v13 = [v11 isEqual:v12];

            if (v13)
            {
              v14 = v10;
              goto LABEL_18;
            }
          }
        }

        v7 = [(OS_dispatch_queue *)v6 countByEnumeratingWithState:&v19 objects:v26 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_18:

    objc_sync_exit(obj);
  }

  else
  {
    [BiometricKitXPCServer getAccessoryObject:];
    v14 = *buf;
  }

  if (__osLogTrace)
  {
    v15 = __osLogTrace;
  }

  else
  {
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    *&buf[4] = v14;
    v24 = 2112;
    v25 = v14;
    _os_log_impl(&dword_223E00000, v15, OS_LOG_TYPE_DEBUG, "getAccessoryObject: -> %p(%@)\n", buf, 0x16u);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)pairedAccessories
{
  v3 = self->_biometricABCDispatchQueue;
  objc_sync_enter(v3);
  v4 = [(OS_dispatch_queue *)self->_biometricABCDispatchQueue copy];
  objc_sync_exit(v3);

  return v4;
}

- (id)connectedAccessories
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
  v4 = self->_biometricABCDispatchQueue;
  objc_sync_enter(v4);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_biometricABCDispatchQueue;
  v6 = [(OS_dispatch_queue *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v9 flags] & 2) != 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(OS_dispatch_queue *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v4);
  v10 = [v3 copy];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (int)listAccessories:(id *)a3 client:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v18 = 134218242;
    *v19 = a3;
    *&v19[8] = 2112;
    *&v19[10] = v6;
    _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEBUG, "listAccessories:client: %p, %@\n", &v18, 0x16u);
  }

  if (a3)
  {
    if (![(BiometricKitXPCServer *)self cacheAccessories])
    {
      v9 = self->_biometricABCDispatchQueue;
      objc_sync_enter(v9);
      v10 = [(OS_dispatch_queue *)self->_biometricABCDispatchQueue allObjects];
      *a3 = [v10 copy];

      objc_sync_exit(v9);
      if (__osLogTrace)
      {
        v11 = __osLogTrace;
      }

      else
      {
        v11 = v7;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *a3;
        v18 = 67109378;
        *v19 = 0;
        *&v19[4] = 2112;
        *&v19[6] = v12;
        _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEBUG, "listAccessories:client: -> err:0x%x, accessories:%@\n", &v18, 0x12u);
      }

      v13 = 0;
      goto LABEL_14;
    }

    [BiometricKitXPCServer listAccessories:client:];
  }

  else
  {
    [BiometricKitXPCServer listAccessories:client:];
  }

  v13 = v18;
  if (__osLogTrace)
  {
    v16 = __osLogTrace;
  }

  else
  {
    v16 = v7;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    if (a3)
    {
      v17 = *a3;
    }

    else
    {
      v17 = 0;
    }

    v18 = 67109378;
    *v19 = v13;
    *&v19[4] = 2112;
    *&v19[6] = v17;
    _os_log_impl(&dword_223E00000, v16, OS_LOG_TYPE_ERROR, "listAccessories:client: -> err:0x%x, accessories:%@\n", &v18, 0x12u);
  }

LABEL_14:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (int)getPreferencesValue:(id *)a3 forKey:(id)a4 withClient:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v17 = 134218242;
    *v18 = a3;
    *&v18[8] = 2112;
    *&v18[10] = v7;
    _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_DEBUG, "getPreferencesValue:forKey: %p, %@\n", &v17, 0x16u);
  }

  if (a3)
  {
    *a3 = [MEMORY[0x277CF1BF0] preferenceObjectForKey:v7];
    if (__osLogTrace)
    {
      v11 = __osLogTrace;
    }

    else
    {
      v11 = v9;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = *a3;
      v17 = 67109634;
      *v18 = 0;
      *&v18[4] = 2112;
      *&v18[6] = v7;
      *&v18[14] = 2112;
      *&v18[16] = v12;
      _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEBUG, "getPreferencesValue:forKey: -> err:0x%x, {%@: %@}\n", &v17, 0x1Cu);
    }

    v13 = 0;
  }

  else
  {
    if (__osLogTrace)
    {
      v14 = __osLogTrace;
    }

    else
    {
      v14 = v9;
    }

    v13 = 258;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 67109634;
      *v18 = 258;
      *&v18[4] = 2112;
      *&v18[6] = v7;
      *&v18[14] = 2112;
      *&v18[16] = 0;
      _os_log_impl(&dword_223E00000, v14, OS_LOG_TYPE_ERROR, "getPreferencesValue:forKey: -> err:0x%x, {%@: %@}\n", &v17, 0x1Cu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)setPreferencesValue:(id)a3 forKey:(id)a4 withClient:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v19 = 138412546;
    *v20 = v8;
    *&v20[8] = 2112;
    *&v20[10] = v7;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEBUG, "setPreferencesValue:forKey: {%@: %@}\n", &v19, 0x16u);
  }

  v12 = [MEMORY[0x277CF1BF0] sharedInstance];
  v13 = [v12 setObject:v7 forKey:v8];

  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v10;
  }

  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v19 = 67109634;
      *v20 = 1;
      *&v20[4] = 2112;
      *&v20[6] = v8;
      *&v20[14] = 2112;
      *&v20[16] = v7;
      v15 = v14;
      v16 = OS_LOG_TYPE_DEBUG;
LABEL_14:
      _os_log_impl(&dword_223E00000, v15, v16, "setPreferencesValue:forKey: -> %d, {%@: %@}\n", &v19, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v19 = 67109634;
    *v20 = 0;
    *&v20[4] = 2112;
    *&v20[6] = v8;
    *&v20[14] = 2112;
    *&v20[16] = v7;
    v15 = v14;
    v16 = OS_LOG_TYPE_ERROR;
    goto LABEL_14;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

- (int)getUserUUIDsForUIDs:(id)a3 userUUIDs:(id *)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    v10 = [v6 componentsJoinedByString:{@", "}];
    *buf = 134218498;
    *&buf[4] = v6;
    v47 = 2112;
    *v48 = v10;
    *&v48[8] = 2048;
    *&v48[10] = a4;
    _os_log_impl(&dword_223E00000, v9, OS_LOG_TYPE_DEBUG, "getUserUUIDsForUIDs:userUUIDs: %p(%@), %p\n", buf, 0x20u);
  }

  v11 = [MEMORY[0x277D77BF8] sharedManager];
  v12 = [v11 allUsers];

  if (!v12)
  {
    [BiometricKitXPCServer getUserUUIDsForUIDs:userUUIDs:];
LABEL_38:
    v32 = v44;
    v26 = *buf;
    goto LABEL_31;
  }

  if (![v12 count])
  {
    [BiometricKitXPCServer getUserUUIDsForUIDs:userUUIDs:];
    goto LABEL_38;
  }

  v37 = self;
  v38 = a4;
  v13 = [MEMORY[0x277CBEB38] dictionary];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v39 = v12;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v41;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v41 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v40 + 1) + 8 * i);
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v19, "uid")}];
        v21 = [v6 containsObject:v20];

        if (v21)
        {
          v22 = objc_alloc(MEMORY[0x277CCAD78]);
          v23 = [v19 alternateDSID];
          v24 = [v22 initWithUUIDString:v23];

          if (!v24)
          {
            [BiometricKitXPCServer getUserUUIDsForUIDs:v14 userUUIDs:?];
            v32 = 261;
            v12 = v39;
            v26 = v13;
            v7 = MEMORY[0x277D86220];
            goto LABEL_31;
          }

          v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v19, "uid")}];
          [v13 setObject:v24 forKey:v25];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  if ((v37->_userAccountsInfo.currentAccountUserID & 0x10000) == 0)
  {
    [(BiometricKitXPCServer *)v37 cacheAndSetUserAccountsInfo];
  }

  v26 = v13;
  v7 = MEMORY[0x277D86220];
  if (v38)
  {
    v27 = v13;
    *v38 = v13;
  }

  v28 = [v13 count];
  if (v28 == [v6 count])
  {
    if (__osLogTrace)
    {
      v29 = __osLogTrace;
    }

    else
    {
      v29 = v7;
    }

    v12 = v39;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = v29;
      v31 = [v6 componentsJoinedByString:{@", "}];
      *buf = 138412802;
      *&buf[4] = v31;
      v47 = 1024;
      *v48 = 0;
      *&v48[4] = 2112;
      *&v48[6] = v13;
      _os_log_impl(&dword_223E00000, v30, OS_LOG_TYPE_DEBUG, "getUserUUIDsForUIDs:userUUIDs: %@, - -> err:0x%x, userUUIDs:%@\n", buf, 0x1Cu);
    }

    v32 = 0;
    goto LABEL_35;
  }

  v32 = 0;
  v12 = v39;
LABEL_31:
  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v33 = v7;
    v34 = [v6 componentsJoinedByString:{@", "}];
    *buf = 138412802;
    *&buf[4] = v34;
    v47 = 1024;
    *v48 = v32;
    *&v48[4] = 2112;
    *&v48[6] = v26;
    _os_log_impl(&dword_223E00000, v33, OS_LOG_TYPE_ERROR, "getUserUUIDsForUIDs:userUUIDs: %@, - -> err:0x%x, userUUIDs:%@\n", buf, 0x1Cu);
  }

LABEL_35:

  v35 = *MEMORY[0x277D85DE8];
  return v32;
}

- (void)userListDidUpdate
{
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_223E00000, v3, OS_LOG_TYPE_DEFAULT, "userListDidUpdate\n", v5, 2u);
  }

  v4 = objc_autoreleasePoolPush();
  [(BiometricKitXPCServer *)self cacheAndSetUserAccountsInfo];
  self->_userListChangeDetected = 1;
  [(BiometricKitXPCServer *)self validateAllUsers];
  objc_autoreleasePoolPop(v4);
}

void __49__BiometricKitXPCServer_validateUsersKeybagUUIDs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  v9 = [*(a1 + 32) getUserKeybagUUIDForUID:{objc_msgSend(v7, "unsignedIntValue")}];
  if (v9 && ([v8 isEqual:v9] & 1) == 0)
  {
    if (__osLog)
    {
      v10 = __osLog;
    }

    else
    {
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v13[0] = 67109634;
      v13[1] = [v7 unsignedIntValue];
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEFAULT, "validateUsersKeybagUUIDs: removing user %u because of invalid user keybag UUID (real:%@ vs catacomb:%@)\n", v13, 0x1Cu);
    }

    [*(a1 + 32) removeUser:{objc_msgSend(v7, "unsignedIntValue")}];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (int)updateIdentity:(id)a3 withOptions:(id)a4 withClient:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138543874;
    v24 = v8;
    v25 = 2048;
    v26 = v9;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_223E00000, v12, OS_LOG_TYPE_DEFAULT, "updateIdentity:withOptions:withClient: %{public}@, %p, %@\n", &v23, 0x20u);
  }

  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if (isEphemeralMultiUser())
  {
    [BiometricKitXPCServer updateIdentity:withOptions:withClient:];
LABEL_28:
    v17 = v23;
    goto LABEL_13;
  }

  if ([(BiometricKitXPCServer *)self isFingerprintModificationRestricted])
  {
    [BiometricKitXPCServer updateIdentity:withOptions:withClient:];
    goto LABEL_28;
  }

  [(BiometricKitXPCServer *)self validateAllUsers];
  v13 = [v8 userID];
  v14 = [v8 uuid];
  v15 = [(BiometricKitXPCServer *)self getIdentityObjectByUserID:v13 UUID:v14];

  if (!v15)
  {
    [BiometricKitXPCServer updateIdentity:withOptions:withClient:];
    goto LABEL_28;
  }

  [v15 setAttribute:{objc_msgSend(v8, "attribute")}];
  [v15 setEntity:{objc_msgSend(v8, "entity")}];
  v16 = [v8 name];
  [v15 setName:v16];

  v17 = -[BiometricKitXPCServer checkCatacombForUser:](self, "checkCatacombForUser:", [v8 userID]);
  if (v17)
  {
    [BiometricKitXPCServer updateIdentity:withOptions:withClient:];
  }

  else
  {
    [(BiometricKitXPCServer *)self saveCatacombForIdentity:v15];
  }

LABEL_13:
  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if (__osLogTrace)
  {
    v18 = __osLogTrace;
  }

  else
  {
    v18 = v11;
  }

  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = 67109120;
      LODWORD(v24) = v17;
      v19 = v18;
      v20 = OS_LOG_TYPE_ERROR;
LABEL_23:
      _os_log_impl(&dword_223E00000, v19, v20, "updateIdentity:withOptions:withClient: -> err:0x%x\n", &v23, 8u);
    }
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v23 = 67109120;
    LODWORD(v24) = 0;
    v19 = v18;
    v20 = OS_LOG_TYPE_DEBUG;
    goto LABEL_23;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

- (int)removeIdentity:(id)a3 withOptions:(id)a4 withClient:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = v8;
    *&buf[12] = 2048;
    *&buf[14] = v9;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_223E00000, v12, OS_LOG_TYPE_DEFAULT, "removeIdentity:withOptions:withClient: %{public}@, %p, %@\n", buf, 0x20u);
  }

  memset(buf, 0, 20);
  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if (isEphemeralMultiUser())
  {
    [BiometricKitXPCServer removeIdentity:withOptions:withClient:];
  }

  else if ([(BiometricKitXPCServer *)self isFingerprintModificationRestricted])
  {
    [BiometricKitXPCServer removeIdentity:withOptions:withClient:];
  }

  else if (v8)
  {
    [(BiometricKitXPCServer *)self validateAllUsers];
    if (-[BiometricKitXPCServer checkCatacombForUser:](self, "checkCatacombForUser:", [v8 userID]))
    {
      [BiometricKitXPCServer removeIdentity:withOptions:withClient:];
    }

    else
    {
      *buf = [v8 userID];
      v13 = [v8 uuid];
      [v13 getUUIDBytes:&buf[4]];

      if ([(BiometricKitXPCServer *)self performRemoveIdentityCommand:buf])
      {
        [BiometricKitXPCServer removeIdentity:withOptions:withClient:];
      }

      else
      {
        [(BiometricKitXPCServer *)self removeIdentityObject:v8];
        if (![(BiometricKitXPCServer *)self saveCatacomb])
        {
          [(BiometricKitXPCServer *)self updateEnrollmentChangedNotification:1];
          v14 = 0;
          goto LABEL_15;
        }

        [BiometricKitXPCServer removeIdentity:withOptions:withClient:];
      }
    }
  }

  else
  {
    [BiometricKitXPCServer removeIdentity:withOptions:withClient:];
  }

  v14 = v20;
LABEL_15:
  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if (__osLogTrace)
  {
    v15 = __osLogTrace;
  }

  else
  {
    v15 = v11;
  }

  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = 67109120;
      v21 = v14;
      v16 = v15;
      v17 = OS_LOG_TYPE_ERROR;
LABEL_25:
      _os_log_impl(&dword_223E00000, v16, v17, "removeIdentity:withOptions:withClient: -> err:0x%x\n", &v20, 8u);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v20 = 67109120;
    v21 = 0;
    v16 = v15;
    v17 = OS_LOG_TYPE_DEBUG;
    goto LABEL_25;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)getIdentityFromUUID:(id)a3 withClient:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v19 = a4;
  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v26 = v6;
    v27 = 2112;
    v28 = v6;
    v29 = 2112;
    v30 = v19;
    _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_DEBUG, "getIdentityFromUUID:withClient: %p(%@), %@\n", buf, 0x20u);
  }

  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  [(BiometricKitXPCServer *)self validateAllUsers];
  v8 = self->_ongoingBiometricOperation;
  objc_sync_enter(v8);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = self->_ongoingBiometricOperation;
  v10 = [(ActivityTracker *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 uuid];
        v15 = [v14 isEqual:v6];

        if (v15)
        {
          v10 = v13;
          goto LABEL_18;
        }
      }

      v10 = [(ActivityTracker *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  objc_sync_exit(v8);
  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if (__osLogTrace)
  {
    v16 = __osLogTrace;
  }

  else
  {
    v16 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = v19;
    v27 = 2114;
    v28 = v10;
    _os_log_impl(&dword_223E00000, v16, OS_LOG_TYPE_DEFAULT, "getIdentityFromUUID:withClient: -, %@ -> %{public}@\n", buf, 0x16u);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)identities:(id)a3 withClient:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v9 = __osLogTrace;
  }

  else
  {
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v16 = 134218498;
    v17 = v6;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_223E00000, v9, OS_LOG_TYPE_DEBUG, "identities:withClient: %p(%@), %@\n", &v16, 0x20u);
  }

  [(BiometricKitXPCServer *)self validateAllUsers];
  if (BYTE2(self->_mkbLockStatusNtfToken) == 1)
  {
    v10 = [MEMORY[0x277CF1C10] biometricKitIdentity];
    [v10 setUserID:501];
    [v10 setFlags:1];
    [MEMORY[0x277CBEB18] arrayWithObject:v10];
  }

  else
  {
    v11 = MEMORY[0x277CBEB18];
    v10 = [(BiometricKitXPCServer *)self identities];
    [v11 arrayWithArray:v10];
  }
  v12 = ;

  if (v6 && [(BiometricKitXPCServer *)self filterIdentities:v12 withFilter:v6])
  {
    [v12 removeAllObjects];
  }

  if (__osLogTrace)
  {
    v13 = __osLogTrace;
  }

  else
  {
    v13 = v8;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_223E00000, v13, OS_LOG_TYPE_DEFAULT, "identities:withClient: -, %@ -> %@\n", &v16, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (int64_t)getMaxIdentityCount:(int)a3 withClient:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109378;
    v15 = a3;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEBUG, "getMaxIdentityCount:withClient: %d, %@\n", buf, 0x12u);
  }

  v13 = 0;
  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if ([(BiometricKitXPCServer *)self performRequestMaxIdentityCountCommand:&v13])
  {
    [BiometricKitXPCServer getMaxIdentityCount:withClient:];
  }

  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if (__osLogTrace)
  {
    v9 = __osLogTrace;
  }

  else
  {
    v9 = v7;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v15 = a3;
    v16 = 2112;
    v17 = v6;
    v18 = 1024;
    v19 = v13;
    _os_log_impl(&dword_223E00000, v9, OS_LOG_TYPE_DEFAULT, "getMaxIdentityCount:withClient: %d, %@ -> %u\n", buf, 0x18u);
  }

  v10 = v13;

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (int)dropUnlockTokenWithClient:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "dropUnlockTokenWithClient: %@\n", &v11, 0xCu);
  }

  v7 = [(BiometricKitXPCServer *)self performDropUnlockTokenCommand];
  if (v7)
  {
    [BiometricKitXPCServer dropUnlockTokenWithClient:];
  }

  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = v5;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v4;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEFAULT, "dropUnlockTokenWithClient: %@ -> err:0x%x\n", &v11, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int)getBiometryAvailability:(int64_t *)a3 forUser:(unsigned int)a4 withClient:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v9 = __osLogTrace;
  }

  else
  {
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v21 = 134218498;
    *v22 = a3;
    *&v22[8] = 1024;
    *&v22[10] = a4;
    *&v22[14] = 2112;
    *&v22[16] = v7;
    _os_log_impl(&dword_223E00000, v9, OS_LOG_TYPE_DEBUG, "getBiometryAvailability:forUser:withClient: %p, %u, %@\n", &v21, 0x1Cu);
  }

  if (a3)
  {
    v10 = 3;
    if (a4 == 501)
    {
      v10 = 1;
    }

    *a3 = v10;
    if (!v7)
    {
      if (__osLogTrace)
      {
        v13 = __osLogTrace;
      }

      else
      {
        v13 = v8;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = *a3;
        v21 = 67109890;
        *v22 = a4;
        *&v22[4] = 2112;
        *&v22[6] = 0;
        *&v22[14] = 1024;
        *&v22[16] = 0;
        *&v22[20] = 2048;
        *&v22[22] = v14;
        _os_log_impl(&dword_223E00000, v13, OS_LOG_TYPE_DEBUG, "getBiometryAvailability:forUser:withClient: -, %u, %@ -> err:0x%x, availability:%ld\n", &v21, 0x22u);
      }

      v11 = 0;
      goto LABEL_25;
    }

    v11 = 0;
    goto LABEL_11;
  }

  if (__osLog)
  {
    v19 = __osLog;
  }

  else
  {
    v19 = v8;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v21 = 136316162;
    *v22 = "info";
    *&v22[8] = 2048;
    *&v22[10] = 0;
    *&v22[18] = 2080;
    *&v22[20] = &unk_223E5FC53;
    *&v22[28] = 2080;
    v23 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
    v24 = 1024;
    v25 = 6474;
    _os_log_impl(&dword_223E00000, v19, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v21, 0x30u);
  }

  if (v7)
  {
    v11 = 258;
LABEL_11:
    if (__osLogTrace)
    {
      v8 = __osLogTrace;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v12 = *a3;
      }

      else
      {
        v12 = -1;
      }

      v21 = 67109890;
      *v22 = a4;
      *&v22[4] = 2112;
      *&v22[6] = v7;
      *&v22[14] = 1024;
      *&v22[16] = v11;
      *&v22[20] = 2048;
      *&v22[22] = v12;
      v15 = v8;
      v16 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = v8;
  }

  v11 = 258;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = 67109890;
    *v22 = a4;
    *&v22[4] = 2112;
    *&v22[6] = 0;
    *&v22[14] = 1024;
    *&v22[16] = 258;
    *&v22[20] = 2048;
    *&v22[22] = -1;
    v15 = v20;
    v16 = OS_LOG_TYPE_ERROR;
LABEL_24:
    _os_log_impl(&dword_223E00000, v15, v16, "getBiometryAvailability:forUser:withClient: -, %u, %@ -> err:0x%x, availability:%ld\n", &v21, 0x22u);
  }

LABEL_25:

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)isXARTAvailableWithClient:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_DEBUG, "isXARTAvailableWithClient: %@\n", &v11, 0xCu);
  }

  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = v4;
  }

  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412802;
      v12 = v3;
      v13 = 1024;
      v14 = 1;
      v15 = 1024;
      v16 = 0;
      v7 = v6;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_14:
      _os_log_impl(&dword_223E00000, v7, v8, "isXARTAvailableWithClient: %@ -> %d (err:0x%x)\n", &v11, 0x18u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412802;
    v12 = 0;
    v13 = 1024;
    v14 = 1;
    v15 = 1024;
    v16 = 0;
    v7 = v6;
    v8 = OS_LOG_TYPE_DEBUG;
    goto LABEL_14;
  }

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

- (int)getLastMatchEvent:(id *)a3 withClient:(id)a4
{
  v18[4] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v14 = 134218242;
    v15 = a3;
    v16 = 2112;
    v17[0] = v6;
    _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEBUG, "getLastMatchEvent:withClient: %p, %@\n", &v14, 0x16u);
  }

  if (a3)
  {
    memset(v18, 0, 29);
    if (![(BiometricKitXPCServer *)self performGetLastMatchEventCommand:v18])
    {
      [(BiometricKitXPCServer *)self createMatchEventDictionary:v18];
      *a3 = v9 = 0;
      goto LABEL_9;
    }

    [BiometricKitXPCServer getLastMatchEvent:withClient:];
  }

  else
  {
    [BiometricKitXPCServer getLastMatchEvent:withClient:];
  }

  v9 = v14;
LABEL_9:
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v7;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v11 = *a3;
    }

    else
    {
      v11 = 0;
    }

    v14 = 138412802;
    v15 = v6;
    v16 = 1024;
    LODWORD(v17[0]) = v9;
    WORD2(v17[0]) = 2112;
    *(v17 + 6) = v11;
    _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_DEFAULT, "getLastMatchEvent:withClient: %@ -> err:0x%x, event:%@\n", &v14, 0x1Cu);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (int)getDeviceHardwareState:(unsigned int *)a3 withClient:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v16 = 134218242;
    *v17 = a3;
    *&v17[8] = 2112;
    v18 = v6;
    _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEBUG, "getDeviceHardwareState:withClient: %p, %@\n", &v16, 0x16u);
  }

  if (a3)
  {
    if (![(BiometricKitXPCServer *)self performGetDeviceHardwareStateCommand:a3])
    {
      if (__osLogTrace)
      {
        v9 = __osLogTrace;
      }

      else
      {
        v9 = v7;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = *a3;
        v16 = 67109376;
        *v17 = 0;
        *&v17[4] = 1024;
        *&v17[6] = v10;
        _os_log_impl(&dword_223E00000, v9, OS_LOG_TYPE_DEBUG, "getDeviceHardwareState:withClient: -> err:0x%x, state:%d\n", &v16, 0xEu);
      }

      v11 = 0;
      goto LABEL_14;
    }

    [BiometricKitXPCServer getDeviceHardwareState:withClient:];
  }

  else
  {
    [BiometricKitXPCServer getDeviceHardwareState:withClient:];
  }

  v11 = v16;
  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v7;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    if (a3)
    {
      v15 = *a3;
    }

    else
    {
      v15 = -1;
    }

    v16 = 67109376;
    *v17 = v11;
    *&v17[4] = 1024;
    *&v17[6] = v15;
    _os_log_impl(&dword_223E00000, v14, OS_LOG_TYPE_ERROR, "getDeviceHardwareState:withClient: -> err:0x%x, state:%d\n", &v16, 0xEu);
  }

LABEL_14:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)getSystemProtectedConfigurationWithClient:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "getSystemProtectedConfigurationWithClient: %@\n", buf, 0xCu);
  }

  v22 = 0;
  v7 = [(BiometricKitXPCServer *)self performGetSystemProtectedConfigCommand:&v22];
  v8 = v22;
  if (v7)
  {
    [BiometricKitXPCServer getSystemProtectedConfigurationWithClient:];
LABEL_34:
    v10 = *buf;
    goto LABEL_24;
  }

  v9 = [MEMORY[0x277CBEB38] dictionary];
  if (!v9)
  {
    [BiometricKitXPCServer getSystemProtectedConfigurationWithClient:];
    goto LABEL_34;
  }

  v10 = v9;
  if ([v8 biometryEnabled] != -1)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "biometryEnabled") != 0}];
    [v10 setObject:v11 forKeyedSubscript:@"BKSysCfgTouchIDEnabled"];
  }

  if ([v8 unlockEnabled] != -1)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "unlockEnabled") != 0}];
    [v10 setObject:v12 forKeyedSubscript:@"BKSysCfgTouchIDUnlockEnabled"];
  }

  if ([v8 identificationEnabled] != -1)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "identificationEnabled") != 0}];
    [v10 setObject:v13 forKeyedSubscript:@"BKSysCfgTouchIDIdentificationEnabled"];
  }

  if ([v8 loginEnabled] != -1)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "loginEnabled") != 0}];
    [v10 setObject:v14 forKeyedSubscript:@"BKSysCfgTouchIDLoginEnabled"];
  }

  if (([v8 unlockTokenMaxLifetime] & 0x80000000) == 0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "unlockTokenMaxLifetime")}];
    [v10 setObject:v15 forKeyedSubscript:@"BKSysCfgTouchIDUnlockTokenMaxLifetime"];
  }

  if (([v8 bioMatchLifespan] & 0x80000000) == 0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "bioMatchLifespan")}];
    [v10 setObject:v16 forKeyedSubscript:@"BKSysCfgTouchIDBioMatchLifespan"];
  }

  if (([v8 passcodeInputLifespan] & 0x80000000) == 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "passcodeInputLifespan")}];
    [v10 setObject:v17 forKeyedSubscript:@"BKSysCfgTouchIDPasscodeInputLifespan"];
  }

  if (([v8 periocularMatchEnabled] & 0x80000000) == 0)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "periocularMatchEnabled")}];
    [v10 setObject:v18 forKeyedSubscript:@"BKSysCfgPeriocularMatchEnabled"];
  }

LABEL_24:
  if (__osLogTrace)
  {
    v19 = __osLogTrace;
  }

  else
  {
    v19 = v5;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = v4;
    v24 = 2112;
    v25 = v10;
    v26 = 1024;
    v27 = v7;
    _os_log_impl(&dword_223E00000, v19, OS_LOG_TYPE_DEFAULT, "getSystemProtectedConfigurationWithClient: %@ -> %@ (err:0x%x)\n", buf, 0x1Cu);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

- (int)setSystemProtectedConfiguration:(id)a3 withOptions:(id)a4 withClient:(id)a5
{
  v77 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v66 = v8;
    v67 = 2048;
    v68 = v9;
    v69 = 2112;
    v70 = v10;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEBUG, "setSystemProtectedConfiguration:withOptions:withClient: %@, %p, %@\n", buf, 0x20u);
  }

  v76 = 0;
  memset(v75, 0, sizeof(v75));
  v62 = v10;
  v63 = v9;
  if (isEphemeralMultiUser())
  {
    if (__osLog)
    {
      v47 = __osLog;
    }

    else
    {
      v47 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *buf = 136316162;
    v66 = "!isEphemeralMultiUser()";
    v67 = 2048;
    v68 = 0;
    v69 = 2080;
    v70 = &unk_223E5FC53;
    v71 = 2080;
    v72 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
    v73 = 1024;
    v74 = 6883;
    goto LABEL_86;
  }

  if (!v8)
  {
    if (__osLog)
    {
      v48 = __osLog;
    }

    else
    {
      v48 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v66 = "configuration";
      v67 = 2048;
      v68 = 0;
      v69 = 2080;
      v70 = &unk_223E5FC53;
      v71 = 2080;
      v72 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v73 = 1024;
      v74 = 6884;
      _os_log_impl(&dword_223E00000, v48, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v30 = 0;
    v16 = 0;
    v27 = 0;
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v23 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    goto LABEL_158;
  }

  v12 = [v10 exportedObject];
  v13 = [v12 connection];
  v14 = [v13 effectiveUserIdentifier];

  if (v14)
  {
    if (__osLog)
    {
      v47 = __osLog;
    }

    else
    {
      v47 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *buf = 136316162;
    v66 = "userid == 0";
    v67 = 2048;
    v68 = 0;
    v69 = 2080;
    v70 = &unk_223E5FC53;
    v71 = 2080;
    v72 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
    v73 = 1024;
    v74 = 6887;
LABEL_86:
    _os_log_impl(&dword_223E00000, v47, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
LABEL_87:
    v30 = 0;
    v16 = 0;
    v27 = 0;
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v23 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v29 = 257;
    goto LABEL_64;
  }

  v15 = objc_alloc_init(SystemProtectedConfig);
  if (!v15)
  {
    if (__osLog)
    {
      v49 = __osLog;
    }

    else
    {
      v49 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v66 = "cfg";
      v67 = 2048;
      v68 = 0;
      v69 = 2080;
      v70 = &unk_223E5FC53;
      v71 = 2080;
      v72 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v73 = 1024;
      v74 = 6890;
      _os_log_impl(&dword_223E00000, v49, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v30 = 0;
    v16 = 0;
    v27 = 0;
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v23 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v29 = 261;
    goto LABEL_64;
  }

  v16 = v15;
  v17 = [v8 objectForKeyedSubscript:@"BKSysCfgTouchIDEnabled"];
  v61 = v17;
  if (v17)
  {
    v18 = v17;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (__osLog)
      {
        v51 = __osLog;
      }

      else
      {
        v51 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v66 = "[enabledBiometry isKindOfClass:[NSNumber class]]";
        v67 = 2048;
        v68 = 0;
        v69 = 2080;
        v70 = &unk_223E5FC53;
        v71 = 2080;
        v72 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        v73 = 1024;
        v74 = 6895;
        _os_log_impl(&dword_223E00000, v51, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v30 = 0;
      v27 = 0;
      v26 = 0;
      v25 = 0;
      v24 = 0;
      v23 = 0;
      v59 = 0;
      v60 = 0;
      goto LABEL_158;
    }

    -[SystemProtectedConfig setBiometryEnabled:](v16, "setBiometryEnabled:", [v18 BOOLValue]);
  }

  v19 = [v8 objectForKeyedSubscript:@"BKSysCfgTouchIDUnlockEnabled"];
  v60 = v19;
  if (v19)
  {
    v20 = v19;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (__osLog)
      {
        v52 = __osLog;
      }

      else
      {
        v52 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v66 = "[enabledForUnlock isKindOfClass:[NSNumber class]]";
        v67 = 2048;
        v68 = 0;
        v69 = 2080;
        v70 = &unk_223E5FC53;
        v71 = 2080;
        v72 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        v73 = 1024;
        v74 = 6902;
        _os_log_impl(&dword_223E00000, v52, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v30 = 0;
      v27 = 0;
      v26 = 0;
      v25 = 0;
      v24 = 0;
      v23 = 0;
      v59 = 0;
      goto LABEL_158;
    }

    -[SystemProtectedConfig setUnlockEnabled:](v16, "setUnlockEnabled:", [v20 BOOLValue]);
  }

  v21 = [v8 objectForKeyedSubscript:@"BKSysCfgTouchIDIdentificationEnabled"];
  v59 = v21;
  if (v21)
  {
    v22 = v21;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (__osLog)
      {
        v53 = __osLog;
      }

      else
      {
        v53 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v66 = "[enabledForIdentification isKindOfClass:[NSNumber class]]";
        v67 = 2048;
        v68 = 0;
        v69 = 2080;
        v70 = &unk_223E5FC53;
        v71 = 2080;
        v72 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        v73 = 1024;
        v74 = 6909;
        _os_log_impl(&dword_223E00000, v53, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v30 = 0;
      v27 = 0;
      v26 = 0;
      v25 = 0;
      v24 = 0;
      v23 = 0;
      goto LABEL_158;
    }

    -[SystemProtectedConfig setIdentificationEnabled:](v16, "setIdentificationEnabled:", [v22 BOOLValue]);
  }

  v23 = [v8 objectForKeyedSubscript:{@"BKSysCfgTouchIDLoginEnabled", v59}];
  if (v23)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (__osLog)
      {
        v54 = __osLog;
      }

      else
      {
        v54 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v66 = "[enabledForLogin isKindOfClass:[NSNumber class]]";
        v67 = 2048;
        v68 = 0;
        v69 = 2080;
        v70 = &unk_223E5FC53;
        v71 = 2080;
        v72 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        v73 = 1024;
        v74 = 6916;
        _os_log_impl(&dword_223E00000, v54, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v30 = 0;
      v27 = 0;
      v26 = 0;
      v25 = 0;
      v24 = 0;
      goto LABEL_158;
    }

    -[SystemProtectedConfig setLoginEnabled:](v16, "setLoginEnabled:", [v23 BOOLValue]);
  }

  v24 = [v8 objectForKeyedSubscript:@"BKSysCfgTouchIDUnlockTokenMaxLifetime"];
  if (v24)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (__osLog)
      {
        v55 = __osLog;
      }

      else
      {
        v55 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v66 = "[bioTokenLifespan isKindOfClass:[NSNumber class]]";
        v67 = 2048;
        v68 = 0;
        v69 = 2080;
        v70 = &unk_223E5FC53;
        v71 = 2080;
        v72 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        v73 = 1024;
        v74 = 6922;
        _os_log_impl(&dword_223E00000, v55, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v30 = 0;
      v27 = 0;
      v26 = 0;
      v25 = 0;
      goto LABEL_158;
    }

    -[SystemProtectedConfig setUnlockTokenMaxLifetime:](v16, "setUnlockTokenMaxLifetime:", [v24 intValue]);
  }

  v25 = [v8 objectForKeyedSubscript:@"BKSysCfgTouchIDBioMatchLifespan"];
  if (v25)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (__osLog)
      {
        v56 = __osLog;
      }

      else
      {
        v56 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v66 = "[bioMatchLifespan isKindOfClass:[NSNumber class]]";
        v67 = 2048;
        v68 = 0;
        v69 = 2080;
        v70 = &unk_223E5FC53;
        v71 = 2080;
        v72 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        v73 = 1024;
        v74 = 6928;
        _os_log_impl(&dword_223E00000, v56, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v30 = 0;
      v27 = 0;
      v26 = 0;
      goto LABEL_158;
    }

    -[SystemProtectedConfig setBioMatchLifespan:](v16, "setBioMatchLifespan:", [v25 intValue]);
  }

  v26 = [v8 objectForKeyedSubscript:@"BKSysCfgTouchIDPasscodeInputLifespan"];
  if (v26)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (__osLog)
      {
        v57 = __osLog;
      }

      else
      {
        v57 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v66 = "[passcodeInputLifespan isKindOfClass:[NSNumber class]]";
        v67 = 2048;
        v68 = 0;
        v69 = 2080;
        v70 = &unk_223E5FC53;
        v71 = 2080;
        v72 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        v73 = 1024;
        v74 = 6934;
        _os_log_impl(&dword_223E00000, v57, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v30 = 0;
      v27 = 0;
      goto LABEL_158;
    }

    -[SystemProtectedConfig setPasscodeInputLifespan:](v16, "setPasscodeInputLifespan:", [v26 intValue]);
  }

  v27 = [v8 objectForKeyedSubscript:@"BKSysCfgPeriocularMatchEnabled"];
  if (!v27)
  {
    goto LABEL_34;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (__osLog)
    {
      v58 = __osLog;
    }

    else
    {
      v58 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v66 = "[enabledForPeriocularMatch isKindOfClass:[NSNumber class]]";
      v67 = 2048;
      v68 = 0;
      v69 = 2080;
      v70 = &unk_223E5FC53;
      v71 = 2080;
      v72 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v73 = 1024;
      v74 = 6942;
      _os_log_impl(&dword_223E00000, v58, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v30 = 0;
LABEL_158:
    v29 = 258;
    goto LABEL_64;
  }

  -[SystemProtectedConfig setPeriocularMatchEnabled:](v16, "setPeriocularMatchEnabled:", [v27 BOOLValue]);
LABEL_34:
  v28 = [(BiometricKitXPCServer *)self parseAuthDict:v9 toAuthData:v75];
  if (v28)
  {
    v29 = v28;
    if (__osLog)
    {
      v50 = __osLog;
    }

    else
    {
      v50 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v66 = "err == 0 ";
      v67 = 2048;
      v68 = v29;
      v69 = 2080;
      v70 = &unk_223E5FC53;
      v71 = 2080;
      v72 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v73 = 1024;
      v74 = 6948;
      _os_log_impl(&dword_223E00000, v50, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v30 = 0;
    goto LABEL_64;
  }

  v64 = 0;
  v29 = [(BiometricKitXPCServer *)self performGetSystemProtectedConfigCommand:&v64];
  v30 = v64;
  if (!v29)
  {
    v31 = [(BiometricKitXPCServer *)self performSetSystemProtectedConfigCommand:v16 authData:v75];
    if (v31)
    {
      v29 = v31;
      if (__osLog)
      {
        v41 = __osLog;
      }

      else
      {
        v41 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v66 = "err == 0 ";
        v67 = 2048;
        v68 = v29;
        v69 = 2080;
        v70 = &unk_223E5FC53;
        v71 = 2080;
        v72 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        v73 = 1024;
        v74 = 6956;
        goto LABEL_59;
      }

      goto LABEL_64;
    }

    if ([(SystemProtectedConfig *)v16 biometryEnabled]!= -1)
    {
      v32 = [(SystemProtectedConfig *)v16 biometryEnabled];
      if (v32 != [v30 biometryEnabled])
      {
        goto LABEL_53;
      }
    }

    if (-[SystemProtectedConfig unlockEnabled](v16, "unlockEnabled") != -1 && (v33 = -[SystemProtectedConfig unlockEnabled](v16, "unlockEnabled"), v33 != [v30 unlockEnabled]) || -[SystemProtectedConfig identificationEnabled](v16, "identificationEnabled") != -1 && (v34 = -[SystemProtectedConfig identificationEnabled](v16, "identificationEnabled"), v34 != objc_msgSend(v30, "identificationEnabled")) || -[SystemProtectedConfig loginEnabled](v16, "loginEnabled") != -1 && (v35 = -[SystemProtectedConfig loginEnabled](v16, "loginEnabled"), v35 != objc_msgSend(v30, "loginEnabled")) || -[SystemProtectedConfig unlockTokenMaxLifetime](v16, "unlockTokenMaxLifetime") != -1 && (v36 = -[SystemProtectedConfig unlockTokenMaxLifetime](v16, "unlockTokenMaxLifetime"), v36 != objc_msgSend(v30, "unlockTokenMaxLifetime")) || -[SystemProtectedConfig bioMatchLifespan](v16, "bioMatchLifespan") != -1 && (v37 = -[SystemProtectedConfig bioMatchLifespan](v16, "bioMatchLifespan"), v37 != objc_msgSend(v30, "bioMatchLifespan")) || -[SystemProtectedConfig passcodeInputLifespan](v16, "passcodeInputLifespan") != -1 && (v38 = -[SystemProtectedConfig passcodeInputLifespan](v16, "passcodeInputLifespan"), v38 != objc_msgSend(v30, "passcodeInputLifespan")) || -[SystemProtectedConfig periocularMatchEnabled](v16, "periocularMatchEnabled") != -1 && (v39 = -[SystemProtectedConfig periocularMatchEnabled](v16, "periocularMatchEnabled"), v39 != objc_msgSend(v30, "periocularMatchEnabled")))
    {
LABEL_53:
      v40 = [(BiometricKitXPCServer *)self saveCatacomb];
      if (v40)
      {
        v29 = v40;
        if (__osLog)
        {
          v41 = __osLog;
        }

        else
        {
          v41 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v66 = "err == 0 ";
          v67 = 2048;
          v68 = v29;
          v69 = 2080;
          v70 = &unk_223E5FC53;
          v71 = 2080;
          v72 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
          v73 = 1024;
          v74 = 6990;
LABEL_59:
          _os_log_impl(&dword_223E00000, v41, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
          goto LABEL_64;
        }

        goto LABEL_64;
      }

      if (![(SystemProtectedConfig *)v16 biometryEnabled])
      {
        v42 = [(SystemProtectedConfig *)v16 biometryEnabled];
        if (v42 != [v30 biometryEnabled])
        {
          [(BiometricKitXPCServer *)self syncTemplateListForUser:0xFFFFFFFFLL];
          [(BiometricKitXPCServer *)self deleteUnusedCatacombFiles];
        }
      }
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.BiometricKit.systemProtectedConfigUpdated", 0, 0, 1u);
    [(BiometricKitXPCServer *)self updateExpressModeState];
    v29 = 0;
    goto LABEL_64;
  }

  if (__osLog)
  {
    v41 = __osLog;
  }

  else
  {
    v41 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v66 = "err == 0 ";
    v67 = 2048;
    v68 = v29;
    v69 = 2080;
    v70 = &unk_223E5FC53;
    v71 = 2080;
    v72 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
    v73 = 1024;
    v74 = 6952;
    goto LABEL_59;
  }

LABEL_64:
  if (__osLogTrace)
  {
    v44 = __osLogTrace;
  }

  else
  {
    v44 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v66 = v8;
    v67 = 2048;
    v68 = v63;
    v69 = 2112;
    v70 = v62;
    v71 = 1024;
    LODWORD(v72) = v29;
    _os_log_impl(&dword_223E00000, v44, OS_LOG_TYPE_DEFAULT, "setSystemProtectedConfiguration:withOptions:withClient: %@, %p, %@ -> err:0x%x\n", buf, 0x26u);
  }

  v45 = *MEMORY[0x277D85DE8];
  return v29;
}

- (void)doSharedMemoryTransfers
{
  OUTLINED_FUNCTION_16();
  v9 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_35(268);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleSharedMemoryTransfer:(unsigned int)a3 withHeader:(id)a4 data:(id)a5
{
  if (__osLog)
  {
    v5 = __osLog;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_ERROR, "handleSharedMemoryTransfer must be overriden in subclass to do shared memory transfers!\n", v6, 2u);
  }
}

- (void)setGracePeriod:(unint64_t)a3
{
  v4 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__BiometricKitXPCServer_setGracePeriod___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
  dispatch_async(v4, block);
}

void __40__BiometricKitXPCServer_setGracePeriod___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (__osLog)
  {
    v2 = __osLog;
  }

  else
  {
    v2 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_223E00000, v2, OS_LOG_TYPE_DEBUG, "setGracePeriod\n", v7, 2u);
  }

  v8 = @"GracePeriod";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 32)];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  if (MKBDeviceSetGracePeriod())
  {
    __40__BiometricKitXPCServer_setGracePeriod___block_invoke_cold_1();
  }

  else
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.BiometricKit.passcodeGracePeriodChanged", 0, 0, 1u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)serviceStatus:(unsigned int)a3 type:(unsigned int)a4 inValue:(void *)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v22 = a4;
  v9 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    *&buf[4] = a3;
    v24 = 1024;
    *v25 = a4;
    *&v25[4] = 1024;
    *&v25[6] = a5;
    _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_DEBUG, "serviceStatus:type:inValue: %u, 0x%x, 0x%x\n", buf, 0x14u);
  }

  v21 = 0;
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v11 = MCDMExtractMessageData(&v22, &v21, a5, &v20, &v18, &v19, &v17);
  v12 = v11;
  if (v18)
  {
    if (a5 && v11)
    {
      v13 = [BiometricKitXPCServer performRequestMessageDataCommand:"performRequestMessageDataCommand:size:outData:" size:v11 outData:?];
      v14 = 0;
      if (v13)
      {
        [BiometricKitXPCServer serviceStatus:type:inValue:];
LABEL_21:
        v14 = *buf;
        goto LABEL_19;
      }
    }

    else
    {
      v14 = [MEMORY[0x277CBEA90] dataWithBytes:v20 length:?];
    }
  }

  else
  {
    v14 = 0;
  }

  if (__osLog)
  {
    v15 = __osLog;
  }

  else
  {
    v15 = v9;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67111170;
    *&buf[4] = v22;
    v24 = 2048;
    *v25 = v12;
    *&v25[8] = 1024;
    v26 = v21;
    v27 = 2048;
    v28 = v20;
    v29 = 2048;
    v30 = v18;
    v31 = 2112;
    v32 = v14;
    v33 = 2048;
    v34 = v19;
    v35 = 2048;
    v36 = v19;
    v37 = 2048;
    v38 = v17;
    _os_log_impl(&dword_223E00000, v15, OS_LOG_TYPE_DEBUG, "serviceStatus:type:inValue: MCDMExtractMessageData: %u, %llu, %u, %p, %zu, %@, %llu(0x%llx), %llu\n", buf, 0x54u);
  }

  if ([(BiometricKitXPCServer *)self serviceStatus:v22 version:v21 ordinal:v19 data:v14 timestamp:v17])
  {
    [BiometricKitXPCServer serviceStatus:type:inValue:];
    goto LABEL_21;
  }

LABEL_19:

  v16 = *MEMORY[0x277D85DE8];
}

- (int)serviceStatus:(unsigned int)a3 version:(unsigned int)a4 ordinal:(unint64_t)a5 data:(id)a6 timestamp:(unint64_t)a7
{
  v29 = *MEMORY[0x277D85DE8];
  v12 = a6;
  v13 = MEMORY[0x277D86220];
  if (__osLog)
  {
    v14 = __osLog;
  }

  else
  {
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v19 = 67110146;
    v20 = a3;
    v21 = 1024;
    v22 = a4;
    v23 = 2048;
    v24 = a5;
    v25 = 2112;
    v26 = v12;
    v27 = 2048;
    v28 = a7;
    _os_log_impl(&dword_223E00000, v14, OS_LOG_TYPE_DEBUG, "serviceStatus:version:ordinal:data:timestamp: 0x%x, 0x%x, 0x%llx, %@, %llu\n", &v19, 0x2Cu);
  }

  v15 = 0;
  if (a3 > -469794561)
  {
    if (a3 == -469794560 || a3 == -469794304)
    {
      goto LABEL_24;
    }

    if (a3 == -469793536)
    {
      if (a4 == 1)
      {
        if (([(CatacombStateCache *)self->_catacombStateCache sendAutoBugCaptureEvent:a5]& 1) != 0)
        {
          goto LABEL_17;
        }

        [BiometricKitXPCServer serviceStatus:version:ordinal:data:timestamp:];
      }

      else
      {
        [BiometricKitXPCServer serviceStatus:version:ordinal:data:timestamp:];
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (a3 == -536870384 || a3 == -536870352)
    {
      goto LABEL_24;
    }

    if (a3 == -469794815)
    {
      if (a4 == 1)
      {
        [(BiometricKitXPCServer *)self statusMessage:a5 withData:v12 timestamp:a7];
LABEL_17:
        v15 = 0;
        goto LABEL_24;
      }

      [BiometricKitXPCServer serviceStatus:version:ordinal:data:timestamp:];
LABEL_28:
      v15 = v19;
      goto LABEL_24;
    }
  }

  if (__osLog)
  {
    v16 = __osLog;
  }

  else
  {
    v16 = v13;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v19 = 67109120;
    v20 = a3;
    _os_log_impl(&dword_223E00000, v16, OS_LOG_TYPE_ERROR, "serviceStatus: Unknown message type: 0x%x\n", &v19, 8u);
  }

  v15 = 263;
LABEL_24:

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)getUserKeybagUUIDForUID:(unsigned int)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D86220];
  v5 = OUTLINED_FUNCTION_34(__osLogTrace);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_52();
    _os_log_impl(&dword_223E00000, v3, OS_LOG_TYPE_DEBUG, "getUserKeybagUUIDForUID: %u\n", v18, 8u);
  }

  v22[0] = 0;
  v22[1] = 0;
  bag_uuid = aks_get_bag_uuid();
  if (bag_uuid != -536870160)
  {
    if (!bag_uuid)
    {
      v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v22];
      goto LABEL_6;
    }

    if (__osLog)
    {
      v10 = __osLog;
    }

    else
    {
      v10 = v4;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v18[0] = 136316162;
      OUTLINED_FUNCTION_6_0();
      v19 = v11;
      OUTLINED_FUNCTION_26();
      v20 = &unk_223E5FC53;
      OUTLINED_FUNCTION_1();
      v21 = 5833;
      OUTLINED_FUNCTION_7_1(&dword_223E00000, v12, v13, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v14, v15, v16, v17, v18[0]);
    }
  }

  v7 = 0;
LABEL_6:
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)init
{
  v9 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  result = *a1 == 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)init
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initAutoBugCapture
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9(263);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)listener:shouldAcceptNewConnection:.cold.2()
{
  OUTLINED_FUNCTION_16();
  v9 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_30();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)listener:shouldAcceptNewConnection:.cold.3()
{
  OUTLINED_FUNCTION_16();
  v9 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_30();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)listener:shouldAcceptNewConnection:.cold.4()
{
  OUTLINED_FUNCTION_16();
  v9 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_30();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)osStateHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_13();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)osStateHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_13();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)enroll:forUser:withOptions:withClient:.cold.3()
{
  OUTLINED_FUNCTION_16();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_9_0(260);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)enroll:forUser:withOptions:withClient:.cold.4()
{
  OUTLINED_FUNCTION_16();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_9_0(257);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)enroll:forUser:withOptions:withClient:.cold.5()
{
  OUTLINED_FUNCTION_16();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_9_0(257);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initEnrollOperation:biometricType:userID:options:client:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initEnrollOperation:(void *)a1 biometricType:userID:options:client:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initEnrollOperation:biometricType:userID:options:client:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initEnrollOperation:biometricType:userID:options:client:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startEnrollOperation:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)startEnrollOperation:.cold.2()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)startEnrollOperation:.cold.3()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)startEnrollOperation:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)match:withOptions:withClient:.cold.3()
{
  OUTLINED_FUNCTION_16();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_9_0(260);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)match:withOptions:withClient:.cold.4()
{
  OUTLINED_FUNCTION_16();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_9_0(257);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initMatchOperation:filter:options:client:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initMatchOperation:filter:options:client:.cold.2()
{
  OUTLINED_FUNCTION_25();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_10_0(258);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initMatchOperation:(void *)a1 filter:options:client:.cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initMatchOperation:filter:options:client:.cold.4()
{
  OUTLINED_FUNCTION_25();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_10_0(260);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initMatchOperation:filter:options:client:.cold.5()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initMatchOperation:filter:options:client:.cold.6()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initMatchOperation:filter:options:client:.cold.7()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initMatchOperation:filter:options:client:.cold.8()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initMatchOperation:filter:options:client:.cold.9()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initMatchOperation:filter:options:client:.cold.10()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initMatchOperation:filter:options:client:.cold.11()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initMatchOperation:filter:options:client:.cold.12()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initMatchOperation:filter:options:client:.cold.13()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initMatchOperation:filter:options:client:.cold.14()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initMatchOperation:filter:options:client:.cold.15()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initMatchOperation:filter:options:client:.cold.16()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initMatchOperation:filter:options:client:.cold.17()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initMatchOperation:filter:options:client:.cold.18()
{
  OUTLINED_FUNCTION_25();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_10_0(258);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initMatchOperation:filter:options:client:.cold.19()
{
  OUTLINED_FUNCTION_25();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_10_0(258);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)startMatchOperation:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_3_0();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startMatchOperation:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_3_0();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startMatchOperation:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_3_0();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startMatchOperation:.cold.4()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)startMatchOperation:.cold.5()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)startMatchOperation:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)detectPresenceWithOptions:withClient:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)detectPresenceWithOptions:withClient:.cold.2()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)detectPresenceWithOptions:withClient:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9(260);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initPresenceDetectOperation:options:client:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initPresenceDetectOperation:options:client:.cold.2()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initPresenceDetectOperation:options:client:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initPresenceDetectOperation:options:client:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startPresenceDetectOperation:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_32(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_32(__osLogTrace))
  {
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)cancelWithClient:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)startBioOperation:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)pauseBioOperation:.cold.1()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = OUTLINED_FUNCTION_34(__osLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v1, v2, v3, v4, v5, 0x30u);
  }

  v6 = OUTLINED_FUNCTION_34(__osLogTrace);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v7, v8, v9, v10, v11, 8u);
  }

  OUTLINED_FUNCTION_35(258);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)processBioOperation:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)processBioOperation:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeStringToPersistentLog:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9(268);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)hexDumpData:size:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logCatacombInfo:data:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logCatacombUUIDForUser:catacombUUID:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_12();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logCatacombUUIDForUser:catacombUUID:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_12();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logCatacombHashForUser:catacombHash:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_12();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logCatacombHashForUser:catacombHash:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_12();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)filterIdentities:(void *)a1 withFilter:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)filterIdentities:(void *)a1 withFilter:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)filterIdentities:(void *)a1 withFilter:.cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)filterIdentities:(void *)a1 withFilter:.cold.4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)filterIdentities:(void *)a1 withFilter:.cold.5(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)filterIdentities:(void *)a1 withFilter:.cold.6(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)filterIdentities:withFilter:.cold.7()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = __osLog;
  if (!__osLog)
  {
    v0 = MEMORY[0x277D86220];
  }

  v1 = v0;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)filterIdentities:(void *)a1 withFilter:.cold.8(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = __osLog;
  if (!__osLog)
  {
    v2 = MEMORY[0x277D86220];
  }

  v3 = v2;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v4, v5, v6, v7, v8, 0x30u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)parseAuthDict:toAuthData:.cold.1()
{
  OUTLINED_FUNCTION_33();
  v10 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  *v0 = v1;
  OUTLINED_FUNCTION_30();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)parseAuthDict:toAuthData:.cold.2()
{
  OUTLINED_FUNCTION_33();
  v10 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  *v0 = v1;
  OUTLINED_FUNCTION_53();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)parseAuthDict:toAuthData:.cold.3()
{
  OUTLINED_FUNCTION_33();
  v10 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  *v0 = v1;
  OUTLINED_FUNCTION_53();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)parseAuthDict:toAuthData:.cold.4()
{
  OUTLINED_FUNCTION_16();
  v9 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_30();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)isDisplayOn
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  *a1 = 0;
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateExpressModeStateWithEnrollmentCount:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)createMatchEventDictionary:.cold.1()
{
  OUTLINED_FUNCTION_33();
  v9 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_53();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)createMatchEventDictionary:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_13();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleCatacombUnlock
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = OUTLINED_FUNCTION_34(__osLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v1, v2, v3, v4, v5, 0x30u);
  }

  v6 = OUTLINED_FUNCTION_34(__osLogTrace);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v7, v8, v9, v10, v11, 8u);
  }

  OUTLINED_FUNCTION_35(261);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)checkTemplatesValidityForUser:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)checkTemplatesValidityForUser:.cold.2()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)checkTemplatesValidityForUser:.cold.3()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeUser:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeUser:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)isValidUser:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)validateAllUsers
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncTemplateListForUser:.cold.2()
{
  OUTLINED_FUNCTION_16();
  v9 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_35(261);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)syncTemplateListForUser:.cold.3()
{
  OUTLINED_FUNCTION_16();
  v9 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_35(260);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updatePropertiesOfIdentities
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9(261);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)readCatacombState
{
  OUTLINED_FUNCTION_16();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_9_0(260);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveCatacombIfDirtyWithInterval:andDelay:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_32(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_32(__osLogTrace))
  {
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)saveTemplateListAfterTemplateUpdate
{
  v11 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_32(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_32(__osLogTrace))
  {
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)archiveCatacombDataForComponent:toArchiver:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_13();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)archiveCatacombDataForComponent:toArchiver:.cold.4()
{
  OUTLINED_FUNCTION_16();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_9_0(260);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)archiveCatacombDataForComponent:toArchiver:.cold.5()
{
  OUTLINED_FUNCTION_16();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_9_0(258);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)archiveCatacombDataForComponent:toArchiver:.cold.6()
{
  OUTLINED_FUNCTION_16();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_9_0(258);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities:.cold.1()
{
  OUTLINED_FUNCTION_25();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_10_0(269);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities:.cold.2()
{
  OUTLINED_FUNCTION_25();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_10_0(269);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)unarchiveCatacombDataForComponent:(void *)a1 fromUnarchiver:secureData:identities:.cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)unarchiveCatacombDataForComponent:(uint64_t)a3 fromUnarchiver:(uint64_t)a4 secureData:(uint64_t)a5 identities:(uint64_t)a6 .cold.4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_47();
  a24 = v25;
  a25 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  a17 = *MEMORY[0x277D85DE8];
  if (__osLog)
  {
    v37 = __osLog;
  }

  else
  {
    v37 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    a12 = &unk_223E5FC53;
    OUTLINED_FUNCTION_1();
    a15 = 4422;
    OUTLINED_FUNCTION_39(&dword_223E00000, v37, v38, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &a9);
  }

  *v28 = 269;
  *v30 = v34;
  *v32 = v36;
  v39 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_46();
}

- (void)unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_13();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)unarchiveCatacombDataForComponent:(void *)a3 fromUnarchiver:secureData:identities:.cold.6(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v6, v7, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v8, v9, v10, v11, v13);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities:.cold.7()
{
  OUTLINED_FUNCTION_25();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_10_0(258);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities:.cold.8()
{
  OUTLINED_FUNCTION_25();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_10_0(258);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveCatacombForComponents:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveCatacombForComponents:.cold.2()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, 2u);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveCatacombForComponents:.cold.3()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, 2u);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveCatacombForComponents:.cold.4()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, 2u);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveCatacombForComponents:.cold.5()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, 2u);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveCatacombForComponents:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9(261);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)saveCatacombForComponents:.cold.7()
{
  OUTLINED_FUNCTION_16();
  v9 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_35(257);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)saveCatacombForIdentity:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveCatacombForIdentity:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)loadCatacomb
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)loadCatacombForUser:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)cacheAccessories
{
  OUTLINED_FUNCTION_16();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_9_0(260);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getAccessoryObject:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_13();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)listAccessories:client:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)listAccessories:client:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getFreeIdentityCount:forUser:accessoryGroup:client:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getFreeIdentityCount:forUser:accessoryGroup:client:.cold.2()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getFreeIdentityCount:forUser:accessoryGroup:client:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getUserUUIDsForUIDs:(void *)a1 userUUIDs:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)getUserUUIDsForUIDs:userUUIDs:.cold.2()
{
  OUTLINED_FUNCTION_16();
  v9 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_35(261);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)getUserUUIDsForUIDs:userUUIDs:.cold.3()
{
  OUTLINED_FUNCTION_16();
  v9 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_35(261);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)getUserUUIDForUID:userUUID:.cold.2()
{
  OUTLINED_FUNCTION_16();
  v9 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_35(258);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateIdentity:withOptions:withClient:.cold.1()
{
  OUTLINED_FUNCTION_36();
  v7 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v1, v2, v3, v4, v5, 0x30u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateIdentity:withOptions:withClient:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateIdentity:withOptions:withClient:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_3_0();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateIdentity:withOptions:withClient:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_3_0();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeIdentity:withOptions:withClient:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeIdentity:withOptions:withClient:.cold.2()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeIdentity:withOptions:withClient:.cold.3()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeIdentity:withOptions:withClient:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeIdentity:withOptions:withClient:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_3_0();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeIdentity:withOptions:withClient:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_3_0();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeAllIdentitiesForUser:withOptions:withClient:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeAllIdentitiesForUser:(uint64_t)a1 withOptions:(uint64_t)a2 withClient:(void *)a3 .cold.2(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v4, v5, v6, v7, v8, 0x30u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeAllIdentitiesForUser:withOptions:withClient:.cold.3()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeAllIdentitiesForUser:withOptions:withClient:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_3_0();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeAllIdentitiesForUser:withOptions:withClient:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_3_0();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getMaxIdentityCount:withClient:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)getFreeIdentityCount:forUser:withClient:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)dropUnlockTokenWithClient:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)forceBioLockoutForUser:withOptions:withClient:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)forceBioLockoutForUser:withOptions:withClient:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)forceBioLockoutForUser:withOptions:withClient:.cold.3()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)getBioLockoutState:forUser:withClient:.cold.1()
{
  OUTLINED_FUNCTION_36();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v1, v2, v3, v4, v5, 0x30u);
  }

  result = v0 == 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)getBioLockoutState:(uint64_t)a1 forUser:withClient:.cold.2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  result = a1 == 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)getExpressModeState:forUser:withClient:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getExpressModeState:forUser:withClient:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9(261);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getExpressModeState:forUser:withClient:.cold.3()
{
  OUTLINED_FUNCTION_16();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_9_0(261);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getExpressModeState:forUser:withClient:.cold.4()
{
  OUTLINED_FUNCTION_16();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_9_0(258);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getLastMatchEvent:withClient:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getLastMatchEvent:withClient:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getDeviceHardwareState:withClient:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_28();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getDeviceHardwareState:withClient:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getProtectedConfigurationForUser:withClient:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)getSystemProtectedConfigurationWithClient:.cold.1()
{
  OUTLINED_FUNCTION_36();
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_30();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getSystemProtectedConfigurationWithClient:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_13();
  v5 = *MEMORY[0x277D85DE8];
}

void __40__BiometricKitXPCServer_setGracePeriod___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)serviceStatus:type:inValue:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_12();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)serviceStatus:type:inValue:.cold.2()
{
  OUTLINED_FUNCTION_8_1();
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_12();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9(263);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9(263);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9(263);
  v5 = *MEMORY[0x277D85DE8];
}

@end