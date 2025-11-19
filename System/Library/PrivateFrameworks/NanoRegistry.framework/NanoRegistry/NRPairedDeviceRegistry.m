@interface NRPairedDeviceRegistry
+ (BOOL)shouldBoostProcess;
+ (id)sharedInstance;
- (BOOL)canPairAnotherClassic;
- (BOOL)canPairAnotherTinker;
- (BOOL)hasCompletedInitialSyncForPairingID:(id)a3;
- (BOOL)isAssertionActive:(id)a3;
- (BOOL)isKeychainEnabled;
- (BOOL)isPaired;
- (BOOL)isWatchSetupPushActive;
- (BOOL)pairedDeviceCountIsLessThanMaxAllPairedDevices;
- (BOOL)pairedDeviceCountIsLessThanMaxClassicPairedDevices;
- (BOOL)pairedDeviceCountIsLessThanMaxTinkerPairedDevices;
- (BOOL)pairedDeviceSupportQuickSwitch;
- (BOOL)supportsWatch;
- (BOOL)watchNeedsGraduation;
- (NRPairedDeviceRegistry)init;
- (id)_getChangeHistory;
- (id)_getClientInfo;
- (id)_getLocalDeviceCollection;
- (id)_getSecureProperties:(id)a3;
- (id)_mostlyClassicPairedDevices;
- (id)_mostlyTinkerPairedDevices;
- (id)applyDiff:(id)a3;
- (id)blockAndQueryVersions;
- (id)deviceForBTDeviceID:(id)a3;
- (id)deviceForBluetoothID:(id)a3;
- (id)deviceForIDSDevice:(id)a3;
- (id)deviceForNRDevice:(id)a3 fromIDSDevices:(id)a4;
- (id)deviceForPairingID:(id)a3;
- (id)devicesFromMigrationConsentRequestData:(id)a3;
- (id)getActivePairedDeviceExcludingAltAccount;
- (id)getActivePairedDeviceIncludingAltAccount;
- (id)getAllDevicesWithArchivedAltAccountDevicesMatching:(id)a3;
- (id)getAllDevicesWithArchivedDevicesMatching:(id)a3;
- (id)getDevices;
- (id)getDevicesMatching:(id)a3;
- (id)getPairedDevices;
- (id)getSetupCompletedDevices;
- (id)lastMigrationRequestPhoneName;
- (id)migrationConsentRequestData;
- (id)nonActiveDeviceForBTDeviceID:(id)a3;
- (id)nonActiveDeviceForBluetoothID:(id)a3;
- (id)nonActiveDeviceForIDSDevice:(id)a3;
- (id)pairingID;
- (id)pairingStorePath;
- (id)waitForActiveDevice;
- (id)waitForActiveOrAltAccountDevice;
- (id)waitForActivePairedDevice;
- (id)waitForActivePairedOrAltAccountDevice;
- (int64_t)lastSyncSwitchIndex;
- (int64_t)maxAllPairedDeviceCount;
- (int64_t)maxClassicPairedDeviceCount;
- (int64_t)maxPairingCompatibilityVersion;
- (int64_t)maxTinkerPairedDeviceCount;
- (int64_t)migrationCountForPairingID:(id)a3;
- (int64_t)minPairingCompatibilityVersion;
- (int64_t)minQuickSwitchCompatibilityVersion;
- (int64_t)pairingCompatibilityVersion;
- (uint64_t)_getCompatibilityStateWithCollection:(void *)a1;
- (unint64_t)_getStatusWithCollection:(id)a3;
- (unint64_t)status;
- (unsigned)compatibilityState;
- (unsigned)switchIndex;
- (void)_getActiveDeviceAssertionsWithInlineBlock:(id)a3;
- (void)_invalidateActiveDeviceAssertionWithIdentifier:(id)a3;
- (void)_pingActiveGizmoWithPriority:(int64_t)a3 withMessageSize:(int64_t)a4 withBlock:(id)a5;
- (void)_postNotification:(void *)a3 forDeviceID:(void *)a4 withUserInfo:;
- (void)_submitAlbertPairingReport;
- (void)abortPairingWithReason:(id)a3;
- (void)altAccountPairingStorePathPairingID:(id)a3;
- (void)beginDiscovery;
- (void)beginMigrationWithDevice:(id)a3 passcode:(id)a4 withBlock:(id)a5;
- (void)beginMigrationWithDevice:(id)a3 withCompletion:(id)a4;
- (void)checkIfFlaggedForRecoveryWithCompletion:(id)a3;
- (void)clearRecoveryFlagWithCompletion:(id)a3;
- (void)clearWatchNeedsGraduation:(id)a3;
- (void)companionOOBDiscoverAndPairWithName:(id)a3 withOutOfBandPairingKey:(id)a4 withOptions:(id)a5 operationHasBegun:(id)a6;
- (void)companionPasscodePairWithDevice:(id)a3 withOptions:(id)a4 operationHasBegun:(id)a5;
- (void)completeRTCPairingMetricForMetricID:(id)a3 withSuccess:(id)a4;
- (void)endDiscovery;
- (void)fakePairedSyncIsCompleteWithCompletion:(id)a3;
- (void)getDevicesWithBlock:(id)a3;
- (void)getMigrationPairingCharacteristicReadDataWithQueue:(id)a3 completion:(id)a4;
- (void)getSwitchEventsFromIndex:(unsigned int)a3 inlineCallback:(id)a4;
- (void)gizmoOOBAdvertiseAndPairWithName:(id)a3 operationHasBegun:(id)a4;
- (void)gizmoPasscodeAdvertiseAndPairWithName:(id)a3 operationHasBegun:(id)a4;
- (void)isPhoneReadyToMigrateDevice:(id)a3 withCompletion:(id)a4;
- (void)keepPhoneUnlockedInternalTestSPI:(id)a3;
- (void)listWatchStagedForTransferWithCompletion:(id)a3;
- (void)logCallFrequency;
- (void)notifyPairingShouldContinue;
- (void)notifyPasscode:(id)a3 forDevice:(id)a4;
- (void)overrideSignalStrengthLimit:(int64_t)a3;
- (void)pairWithSimulator:(id)a3 withQueue:(id)a4 withCompletion:(id)a5;
- (void)pairingClientDidEnterPhase:(id)a3;
- (void)pairingClientSetAltAccountName:(id)a3 altDSID:(id)a4 forDevice:(id)a5 completion:(id)a6;
- (void)pairingClientSetPairingParentName:(id)a3 pairingParentAltDSID:(id)a4 forDevice:(id)a5 completion:(id)a6;
- (void)pairingStorePathPairingID:(id)a3;
- (void)putMigrationChallengeCharacteristicWriteData:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)resumePairingClientCrashMonitoring;
- (void)retriggerUnpairInfoDialog;
- (void)sendDevicesUpdatedNotification;
- (void)setActivePairedDevice:(id)a3 withActiveDeviceAssertionHandler:(id)a4;
- (void)setWatchBuddyCompletedSetupSteps:(id)a3;
- (void)setWatchBuddyPushedSyncTrapUI:(id)a3;
- (void)setWatchNeedsGraduation:(id)a3;
- (void)stageWatchForGraduationWithDeviceID:(id)a3 completion:(id)a4;
- (void)stageWatchForTransferWithDeviceID:(id)a3 completion:(id)a4;
- (void)startAdvertisingForMigration;
- (void)startWatchSetupPush;
- (void)stopAdvertisingForMigration;
- (void)stopWatchSetupPush;
- (void)suspendPairingClientCrashMonitoring;
- (void)switchToSimulator:(id)a3 withQueue:(id)a4 withCompletion:(id)a5;
- (void)threadIsBlockedWaitingOn_nanoregistryd_syncGrabLegacyRegistryWithBlock:(id)a3;
- (void)triggerTailspinFrom:(unint64_t)a3;
- (void)unpairWithDevice:(id)a3 withOptions:(id)a4 operationHasBegun:(id)a5;
- (void)unpairWithSimulator:(id)a3 withQueue:(id)a4 withCompletion:(id)a5;
- (void)userIsCheckingForUpdate;
- (void)waitForAltAccountPairingStorePathPairingID:(id)a3;
- (void)waitForPairingStorePathPairingID:(id)a3;
- (void)waitForWatchPairingExtendedMetadataForAdvertisedName:(id)a3 completion:(id)a4;
- (void)xpcDeviceID:(id)a3 needsPasscode:(id)a4;
- (void)xpcHasNewOOBKey:(id)a3;
@end

@implementation NRPairedDeviceRegistry

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__NRPairedDeviceRegistry_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED6F0A38 != -1)
  {
    dispatch_once(&qword_1ED6F0A38, block);
  }

  v2 = qword_1ED6F0A30;

  return v2;
}

uint64_t __40__NRPairedDeviceRegistry_sharedInstance__block_invoke(uint64_t a1)
{
  qword_1ED6F0A30 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (NRPairedDeviceRegistry)init
{
  v3 = [objc_opt_class() shouldBoostProcess];

  return [(NRPairedDeviceRegistry *)self initWithBoost:v3];
}

+ (BOOL)shouldBoostProcess
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v20 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  if (proc_pidpath(v2, buffer, 0x1000u) < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buffer];
    v4 = [v3 lastPathComponent];
  }

  v5 = @"(unknown)";
  if (v4)
  {
    v5 = v4;
  }

  v6 = v5;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [&unk_1F5B848E8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(&unk_1F5B848E8);
        }

        if ([*(*(&v14 + 1) + 8 * i) isEqualToString:v6])
        {
          v11 = 1;
          goto LABEL_16;
        }
      }

      v8 = [&unk_1F5B848E8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_16:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)supportsWatch
{
  if (self->_disconnected)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = NRPairedDeviceRegistry;
  return [(NRRegistry *)&v5 supportsWatch];
}

- (id)getPairedDevices
{
  v3 = [objc_opt_class() pairedDevicesSelectorBlock];
  v4 = [(NRPairedDeviceRegistry *)self getDevicesMatching:v3];

  return v4;
}

- (id)getActivePairedDeviceExcludingAltAccount
{
  v3 = [objc_opt_class() activePairedDeviceSelectorBlock];
  v4 = [(NRPairedDeviceRegistry *)self getDevicesMatching:v3];
  v5 = [v4 firstObject];

  return v5;
}

- (void)logCallFrequency
{
  v4 = self->_callCount + 1;
  self->_callCount = v4;
  if (__ROR8__(0x1CAC083126E978D5 * v4, 1) <= 0x10624DD2F1A9FBEuLL)
  {
    v9 = v2;
    v10 = v3;
    v5 = nr_framework_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = nr_framework_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_error_impl(&dword_1E0ADF000, v7, OS_LOG_TYPE_ERROR, "NanoRegistry APIs called 250 times", v8, 2u);
      }
    }
  }
}

- (void)sendDevicesUpdatedNotification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__NRPairedDeviceRegistry_sendDevicesUpdatedNotification__block_invoke;
  block[3] = &unk_1E86DAE98;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __56__NRPairedDeviceRegistry_sendDevicesUpdatedNotification__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"NRPairedDeviceRegistryDevicesDidUpdateNotification" object:*(a1 + 32) userInfo:0];
}

- (BOOL)canPairAnotherClassic
{
  v3 = [(NRPairedDeviceRegistry *)self pairedDeviceCountIsLessThanMaxClassicPairedDevices];
  if (v3)
  {

    LOBYTE(v3) = [(NRPairedDeviceRegistry *)self pairedDeviceCountIsLessThanMaxAllPairedDevices];
  }

  return v3;
}

- (BOOL)pairedDeviceCountIsLessThanMaxClassicPairedDevices
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(NRPairedDeviceRegistry *)self _mostlyClassicPairedDevices];
  v4 = [v3 count];

  v5 = [(NRPairedDeviceRegistry *)self maxClassicPairedDeviceCount];
  v6 = nr_framework_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = nr_framework_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218240;
      v12 = v4;
      v13 = 2048;
      v14 = v5;
      _os_log_impl(&dword_1E0ADF000, v8, OS_LOG_TYPE_DEFAULT, "ClassicPairedDevices check: paired %lu vs. limit %ld", &v11, 0x16u);
    }
  }

  result = v4 < [(NRPairedDeviceRegistry *)self maxClassicPairedDeviceCount];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_mostlyClassicPairedDevices
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:&__block_literal_global_4];

  return v3;
}

- (unsigned)compatibilityState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (![(NRRegistryClient *)self daemonIdle])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__NRPairedDeviceRegistry_compatibilityState__block_invoke;
    v5[3] = &unk_1E86DC090;
    v5[4] = self;
    v5[5] = &v6;
    [(NRRegistryClient *)self syncGrabRegistryWithReadBlock:v5];
  }

  v3 = *(v7 + 12);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)maxClassicPairedDeviceCount
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = numberFromCFPrefs(@"maxClassicPairedDeviceCount");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
    v5 = nr_framework_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_framework_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = v4;
        _os_log_impl(&dword_1E0ADF000, v7, OS_LOG_TYPE_DEFAULT, "Overriding maxClassicPairedDeviceCount to %ld", &v10, 0xCu);
      }
    }
  }

  else
  {
    v4 = 5;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)pairedDeviceCountIsLessThanMaxAllPairedDevices
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(NRPairedDeviceRegistry *)self _mostlyClassicPairedDevices];
  v4 = [v3 count];

  v5 = [(NRPairedDeviceRegistry *)self _mostlyTinkerPairedDevices];
  v6 = [v5 count];

  v7 = [(NRPairedDeviceRegistry *)self maxAllPairedDeviceCount];
  v8 = nr_framework_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_framework_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218496;
      v14 = v4;
      v15 = 2048;
      v16 = v6;
      v17 = 2048;
      v18 = v7;
      _os_log_impl(&dword_1E0ADF000, v10, OS_LOG_TYPE_DEFAULT, "AllPairedDevices check: Classic paired %lu + Tinker paired %lu vs. limit %ld", &v13, 0x20u);
    }
  }

  result = v6 + v4 < v7;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_mostlyTinkerPairedDevices
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:&__block_literal_global_318];

  return v3;
}

- (int64_t)maxAllPairedDeviceCount
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = numberFromCFPrefs(@"maxAllPairedDeviceCount");
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
    v6 = nr_framework_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = nr_framework_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134217984;
        v13 = v5;
        _os_log_impl(&dword_1E0ADF000, v8, OS_LOG_TYPE_DEFAULT, "Overriding maxAllPairedDeviceCount to %ld", &v12, 0xCu);
      }
    }
  }

  else
  {
    v9 = [(NRPairedDeviceRegistry *)self maxClassicPairedDeviceCount];
    v5 = [(NRPairedDeviceRegistry *)self maxTinkerPairedDeviceCount]+ v9;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (int64_t)maxTinkerPairedDeviceCount
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = numberFromCFPrefs(@"maxTinkerPairedDeviceCount");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
    v5 = nr_framework_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_framework_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = v4;
        _os_log_impl(&dword_1E0ADF000, v7, OS_LOG_TYPE_DEFAULT, "Overriding maxTinkerPairedDeviceCount to %ld", &v10, 0xCu);
      }
    }
  }

  else
  {
    v4 = 5;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)canPairAnotherTinker
{
  v3 = [(NRPairedDeviceRegistry *)self pairedDeviceCountIsLessThanMaxTinkerPairedDevices];
  if (v3)
  {

    LOBYTE(v3) = [(NRPairedDeviceRegistry *)self pairedDeviceCountIsLessThanMaxAllPairedDevices];
  }

  return v3;
}

- (BOOL)pairedDeviceCountIsLessThanMaxTinkerPairedDevices
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(NRPairedDeviceRegistry *)self _mostlyTinkerPairedDevices];
  v4 = [v3 count];

  v5 = [(NRPairedDeviceRegistry *)self maxTinkerPairedDeviceCount];
  v6 = nr_framework_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = nr_framework_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218240;
      v12 = v4;
      v13 = 2048;
      v14 = v5;
      _os_log_impl(&dword_1E0ADF000, v8, OS_LOG_TYPE_DEFAULT, "TinkerPairedDevices check: paired %lu vs. limit %ld", &v11, 0x16u);
    }
  }

  result = v4 < v5;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)status
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if ([(NRPairedDeviceRegistry *)self supportsWatch])
  {
    v7[3] = 2;
    if (![(NRRegistryClient *)self daemonIdle])
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __32__NRPairedDeviceRegistry_status__block_invoke;
      v5[3] = &unk_1E86DC090;
      v5[4] = self;
      v5[5] = &v6;
      [(NRRegistryClient *)self syncGrabRegistryWithReadBlock:v5];
    }
  }

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)retriggerUnpairInfoDialog
{
  v3 = [(NRRegistryClient *)self connection];
  v2 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_387];
  [v2 xpcRetriggerUnpairInfoDialogWithBlock:&__block_literal_global_389];
}

uint64_t __57__NRPairedDeviceRegistry_activePairedDeviceSelectorBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 valueForProperty:@"isPaired"];
  if ([v3 BOOLValue])
  {
    v4 = [v2 valueForProperty:@"isActive"];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __51__NRPairedDeviceRegistry_activeDeviceSelectorBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 valueForProperty:@"isActive"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)threadIsBlockedWaitingOn_nanoregistryd_syncGrabLegacyRegistryWithBlock:(id)a3
{
  v4 = a3;
  v5 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v6 = [(NRRegistry *)self managementQueue];
  dispatch_assert_queue_not_V2(v6);

  dispatch_assert_queue_not_V2(self->_pairedDeviceRegistryDeviceListQueue);
  dispatch_assert_queue_not_V2(self->_pairedRegistryGetDevicesQueue);
  pairedRegistryGetDevicesQueue = self->_pairedRegistryGetDevicesQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __97__NRPairedDeviceRegistry_threadIsBlockedWaitingOn_nanoregistryd_syncGrabLegacyRegistryWithBlock___block_invoke;
  v9[3] = &unk_1E86DBFA0;
  v9[4] = self;
  v10 = v4;
  v11 = v13;
  v12 = v5;
  v8 = v4;
  dispatch_sync(pairedRegistryGetDevicesQueue, v9);

  _Block_object_dispose(v13, 8);
}

void __97__NRPairedDeviceRegistry_threadIsBlockedWaitingOn_nanoregistryd_syncGrabLegacyRegistryWithBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) logCallFrequency];
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __97__NRPairedDeviceRegistry_threadIsBlockedWaitingOn_nanoregistryd_syncGrabLegacyRegistryWithBlock___block_invoke_2;
  v6[3] = &unk_1E86DBF78;
  v6[4] = v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  [v2 syncGrabRegistryWithReadBlock:v6];
}

void __97__NRPairedDeviceRegistry_threadIsBlockedWaitingOn_nanoregistryd_syncGrabLegacyRegistryWithBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 copy];
  v7 = [v5 copy];

  v8 = *(*(a1 + 32) + 160);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __97__NRPairedDeviceRegistry_threadIsBlockedWaitingOn_nanoregistryd_syncGrabLegacyRegistryWithBlock___block_invoke_3;
  v18[3] = &unk_1E86DBF50;
  v22 = *(a1 + 40);
  v9 = v6;
  v19 = v9;
  v10 = v7;
  v11 = *(a1 + 32);
  v20 = v10;
  v21 = v11;
  v12 = *(a1 + 56);
  v23 = *(a1 + 48);
  v24 = v12;
  dispatch_sync(v8, v18);
  if (*(*(*(a1 + 48) + 8) + 24) > 9.0)
  {
    v13 = nr_daemon_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v15 = nr_daemon_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(*(*(a1 + 48) + 8) + 24);
        *buf = 134217984;
        v26 = v16;
        _os_log_impl(&dword_1E0ADF000, v15, OS_LOG_TYPE_DEFAULT, "client was blocked on threadIsBlockedWaitingOn_nanoregistryd_syncGrabLegacyRegistryWithBlock for %lu milliseconds", buf, 0xCu);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

double __97__NRPairedDeviceRegistry_threadIsBlockedWaitingOn_nanoregistryd_syncGrabLegacyRegistryWithBlock___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[6] + 152);
  (*(a1[7] + 16))();
  result = (clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - a1[9]) / 1000000.0;
  *(*(a1[8] + 8) + 24) = result;
  return result;
}

- (BOOL)watchNeedsGraduation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(NRRegistryClient *)self connection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__NRPairedDeviceRegistry_watchNeedsGraduation__block_invoke;
  v5[3] = &unk_1E86DBFC8;
  v5[4] = &v6;
  [v3 xpcWatchNeedsGraduation:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)clearWatchNeedsGraduation:(id)a3
{
  v4 = a3;
  v5 = [(NRRegistryClient *)self connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__NRPairedDeviceRegistry_clearWatchNeedsGraduation___block_invoke;
  v8[3] = &unk_1E86DACE8;
  v9 = v4;
  v7 = v4;
  [v6 xpcClearWatchNeedsGraduation:v8];
}

- (void)setWatchNeedsGraduation:(id)a3
{
  v4 = a3;
  v5 = nr_framework_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_framework_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0ADF000, v7, OS_LOG_TYPE_DEFAULT, "setWatchNeedsGraduation", buf, 2u);
    }
  }

  v8 = [(NRRegistryClient *)self connection];
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__NRPairedDeviceRegistry_setWatchNeedsGraduation___block_invoke;
  v11[3] = &unk_1E86DACE8;
  v12 = v4;
  v10 = v4;
  [v9 xpcSetWatchNeedsGraduation:v11];
}

uint64_t __53__NRPairedDeviceRegistry__mostlyClassicPairedDevices__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 valueForProperty:@"isArchived"];
  v4 = [v2 valueForProperty:@"isPaired"];
  v5 = [v2 valueForProperty:@"isAltAccount"];

  if ([v4 BOOLValue] && (objc_msgSend(v5, "BOOLValue") & 1) == 0)
  {
    v6 = [v3 BOOLValue] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __52__NRPairedDeviceRegistry__mostlyTinkerPairedDevices__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 valueForProperty:@"isArchived"];
  v4 = [v2 valueForProperty:@"isPaired"];
  v5 = [v2 valueForProperty:@"isAltAccount"];

  if ([v4 BOOLValue] && (objc_msgSend(v5, "BOOLValue") & 1) != 0)
  {
    v6 = 1;
  }

  else if ([v3 BOOLValue])
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)pairedDeviceSupportQuickSwitch
{
  v2 = [(NRPairedDeviceRegistry *)self getPairedDevices];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = [v3 valueForProperty:@"maxPairingCompatibilityVersion"];
    v5 = [v4 integerValue];
    v6 = [v3 valueForProperty:@"chipID"];
    v7 = +[NRPairingCompatibilityVersionInfo systemVersions];
    v8 = v5 >= [v7 minQuickSwitchPairingCompatibilityVersionForChipID:v6];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

void __84__NRPairedDeviceRegistry_setActivePairedDevice_isMagicSwitch_operationHasCompleted___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__NRPairedDeviceRegistry_setActivePairedDevice_isMagicSwitch_operationHasCompleted___block_invoke_2;
    block[3] = &unk_1E86DAE70;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __84__NRPairedDeviceRegistry_setActivePairedDevice_isMagicSwitch_operationHasCompleted___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

void __84__NRPairedDeviceRegistry_setActivePairedDevice_isMagicSwitch_operationHasCompleted___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __84__NRPairedDeviceRegistry_setActivePairedDevice_isMagicSwitch_operationHasCompleted___block_invoke_4;
    v5[3] = &unk_1E86DACC0;
    v7 = v4;
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

void __84__NRPairedDeviceRegistry_setActivePairedDevice_isMagicSwitch_operationHasCompleted___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

- (void)setActivePairedDevice:(id)a3 withActiveDeviceAssertionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(NRRegistryClient *)self daemonIdle])
  {
    v8 = [(NRRegistryClient *)self connection];

    if (v8)
    {
      v9 = [(NRRegistryClient *)self connection];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __81__NRPairedDeviceRegistry_setActivePairedDevice_withActiveDeviceAssertionHandler___block_invoke;
      v19[3] = &unk_1E86DACE8;
      v10 = &v20;
      v11 = v7;
      v20 = v11;
      v12 = [v9 remoteObjectProxyWithErrorHandler:v19];
      v13 = [v6 pairingID];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __81__NRPairedDeviceRegistry_setActivePairedDevice_withActiveDeviceAssertionHandler___block_invoke_3;
      v16[3] = &unk_1E86DBFF0;
      v18 = v11;
      v17 = v6;
      [v12 xpcSwitchActiveDeviceWithDeviceID:v13 withAssertionHandler:v16];

LABEL_6:
      goto LABEL_7;
    }
  }

  if (v7)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __81__NRPairedDeviceRegistry_setActivePairedDevice_withActiveDeviceAssertionHandler___block_invoke_5;
    v14[3] = &unk_1E86DAE70;
    v10 = &v15;
    v15 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v14);
    goto LABEL_6;
  }

LABEL_7:
}

void __81__NRPairedDeviceRegistry_setActivePairedDevice_withActiveDeviceAssertionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__NRPairedDeviceRegistry_setActivePairedDevice_withActiveDeviceAssertionHandler___block_invoke_2;
    block[3] = &unk_1E86DAE70;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __81__NRPairedDeviceRegistry_setActivePairedDevice_withActiveDeviceAssertionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2, 0);
}

void __81__NRPairedDeviceRegistry_setActivePairedDevice_withActiveDeviceAssertionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 40))
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __81__NRPairedDeviceRegistry_setActivePairedDevice_withActiveDeviceAssertionHandler___block_invoke_4;
    v7[3] = &unk_1E86DB490;
    v8 = v5;
    v9 = *(a1 + 32);
    v10 = v6;
    v11 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

void __81__NRPairedDeviceRegistry_setActivePairedDevice_withActiveDeviceAssertionHandler___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
  }

  else
  {
    v2 = [[NRActiveDeviceAssertion alloc] initWithDevice:*(a1 + 48) identifier:?];
    v3 = *(a1 + 32);
  }

  v4 = v2;
  (*(*(a1 + 56) + 16))();
}

void __81__NRPairedDeviceRegistry_setActivePairedDevice_withActiveDeviceAssertionHandler___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2, 0);
}

void __53__NRPairedDeviceRegistry_initWithBoost_disconnected___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v14 = [v11 copy];
    v15 = [v12 copy];
    v16 = WeakRetained[20];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __53__NRPairedDeviceRegistry_initWithBoost_disconnected___block_invoke_2;
    v19[3] = &unk_1E86DC018;
    v20 = WeakRetained;
    v21 = v10;
    v22 = v14;
    v23 = v15;
    v25 = a6;
    v24 = v11;
    v17 = v15;
    v18 = v14;
    dispatch_async(v16, v19);
  }
}

void __53__NRPairedDeviceRegistry_initWithBoost_disconnected___block_invoke_2(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v5 = v3;
  v6 = v5;
  if (v2)
  {
    v27 = v5;
    dispatch_assert_queue_V2(*(v2 + 160));
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v29 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          v13 = [v7 objectForKeyedSubscript:{v12, v27}];
          if ([v13 changeType])
          {
            if ([v13 changeType] == 2)
            {
              [*(v2 + 152) removeObjectForKey:v12];
            }
          }

          else
          {
            v14 = [[NRDevice alloc] initWithRegistry:v2 diff:v7 pairingID:v12 notify:1];
            [*(v2 + 152) setObject:v14 forKeyedSubscript:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v29 objects:v40 count:16];
      }

      while (v9);
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __99__NRPairedDeviceRegistry__fireChangeNotificationsForDiff_collection_secureProperties_index_notify___block_invoke;
    v28[3] = &unk_1E86DC0E0;
    v28[4] = v2;
    [NRMutableDeviceCollection parseDiff:v7 forPropertyChange:@"lastPairingError" withBlock:v28];
    v6 = v27;
    v15 = v27;
    v16 = [(NRPairedDeviceRegistry *)v2 _getCompatibilityStateWithCollection:v15];
    if ([v2 daemonIdle])
    {
      v17 = 0;
    }

    else
    {
      v17 = [v15 activeDeviceID];
    }

    v18 = [v2 managementQueue];
    block = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __83__NRPairedDeviceRegistry__fireCompatibilityStateChangedNotificationWithCollection___block_invoke;
    v36 = &unk_1E86DB580;
    v39 = v16;
    v37 = v2;
    v38 = v17;
    v19 = v17;
    dispatch_async(v18, &block);

    v20 = [v2 _getStatusWithCollection:v15];
    v21 = [v2 managementQueue];
    block = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __71__NRPairedDeviceRegistry__fireStatusChangedNotificationWithCollection___block_invoke;
    v36 = &unk_1E86DB760;
    v37 = v2;
    v38 = v20;
    dispatch_async(v21, &block);

    [v2 sendDevicesUpdatedNotification];
  }

  v22 = *(a1 + 32);
  if (v22)
  {
    v23 = *(a1 + 64);
    v24 = *(v22 + 184);
    v25 = *MEMORY[0x1E69E9840];

    [v24 sweepWithCollection:v23];
  }

  else
  {
    v26 = *MEMORY[0x1E69E9840];
  }
}

void __53__NRPairedDeviceRegistry_initWithBoost_disconnected___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  *(*(a1 + 32) + 176) = [v5 _getStatusWithCollection:v7];
  *(*(a1 + 32) + 146) = [(NRPairedDeviceRegistry *)*(a1 + 32) _getCompatibilityStateWithCollection:v7];
  v8 = [v7 copy];

  v9 = [v6 copy];
  v10 = nr_framework_log();
  LODWORD(v7) = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v11 = nr_framework_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = *(v12 + 176);
      LODWORD(v12) = *(v12 + 146);
      *buf = 136446722;
      v24 = "[NRPairedDeviceRegistry initWithBoost:disconnected:]_block_invoke_3";
      v25 = 2048;
      v26 = v13;
      v27 = 1024;
      v28 = v12;
      _os_log_impl(&dword_1E0ADF000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: status(%lu) compatibilityState (%u)", buf, 0x1Cu);
    }
  }

  v14 = *(a1 + 32);
  v15 = v14[20];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__NRPairedDeviceRegistry_initWithBoost_disconnected___block_invoke_341;
  block[3] = &unk_1E86DAEE8;
  v20 = v14;
  v21 = v8;
  v22 = v9;
  v16 = v9;
  v17 = v8;
  dispatch_async(v15, block);

  v18 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_getCompatibilityStateWithCollection:(void *)a1
{
  v3 = a2;
  if (a1 && ([a1 daemonIdle] & 1) == 0 && (objc_msgSend(v3, "activeDeviceID"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v3 objectForKeyedSubscript:v4];
    if ([v6 isArchived])
    {
      v7 = 0;
    }

    else
    {
      v8 = [v6 objectForKeyedSubscript:@"compatibilityState"];
      v9 = [v8 value];
      v7 = [v9 integerValue];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __53__NRPairedDeviceRegistry_initWithBoost_disconnected___block_invoke_341(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v23 = v2;
  if (v1)
  {
    v3 = v2;
    v22 = objc_opt_new();
    v4 = [NRMutableDeviceCollection diffFrom:"diffFrom:to:" to:?];
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:buf count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          v12 = [[NRDevice alloc] initWithRegistry:v1 diff:v4 pairingID:v11 notify:0];
          [v5 setObject:v12 forKeyedSubscript:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v25 objects:buf count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v13 = *(a1 + 32);
  v14 = *(v13 + 152);
  *(v13 + 152) = v5;

  [*(a1 + 32) sendDevicesUpdatedNotification];
  v15 = nr_framework_log();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  if (v16)
  {
    v17 = nr_framework_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0ADF000, v17, OS_LOG_TYPE_DEFAULT, "Resuming registry operation queue.", buf, 2u);
    }
  }

  dispatch_resume(*(*(a1 + 32) + 168));
  v18 = *(a1 + 32);
  v29 = @"status";
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v18 + 176)];
  v30 = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  [(NRPairedDeviceRegistry *)v18 _postNotification:0 forDeviceID:v20 withUserInfo:?];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_postNotification:(void *)a3 forDeviceID:(void *)a4 withUserInfo:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    if (v8)
    {
      v10 = *(a1 + 168);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__NRPairedDeviceRegistry__postNotification_forDeviceID_withUserInfo___block_invoke;
      block[3] = &unk_1E86DC0B8;
      block[4] = a1;
      v17 = v8;
      v18 = v9;
      v19 = v7;
      dispatch_async(v10, block);

      v11 = v17;
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __69__NRPairedDeviceRegistry__postNotification_forDeviceID_withUserInfo___block_invoke_3;
      v12[3] = &unk_1E86DAEE8;
      v13 = v7;
      v14 = a1;
      v15 = v9;
      dispatch_async(MEMORY[0x1E69E96A0], v12);

      v11 = v13;
    }
  }
}

void __71__NRPairedDeviceRegistry__fireStatusChangedNotificationWithCollection___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 176) != v2)
  {
    *(v1 + 176) = v2;
    v7 = @"status";
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(NRPairedDeviceRegistry *)v3 _postNotification:0 forDeviceID:v5 withUserInfo:?];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_getStatusWithCollection:(id)a3
{
  v4 = a3;
  if (![(NRPairedDeviceRegistry *)self supportsWatch])
  {
    v5 = 0;
    goto LABEL_14;
  }

  if (![(NRRegistryClient *)self daemonIdle])
  {
    v6 = [v4 activeDevice];
    v7 = v6;
    if (v6)
    {
      if (([v6 isArchived] & 1) == 0)
      {
        v8 = [v7 objectForKeyedSubscript:@"statusCode"];
        v9 = [v8 value];
        v5 = [v9 integerValue];

LABEL_13:
        goto LABEL_14;
      }
    }

    else if ([v4 paired])
    {
      if ([v4 allAltAccount])
      {
        v5 = 2;
      }

      else
      {
        v5 = 3;
      }

      goto LABEL_13;
    }

    v5 = 2;
    goto LABEL_13;
  }

  v5 = 2;
LABEL_14:

  return v5;
}

uint64_t __32__NRPairedDeviceRegistry_status__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _getStatusWithCollection:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __83__NRPairedDeviceRegistry__fireCompatibilityStateChangedNotificationWithCollection___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  if (*(v1 + 146) != v2)
  {
    *(v1 + 146) = v2;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = @"compatibilityState";
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*(a1 + 48)];
    v9[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [(NRPairedDeviceRegistry *)v3 _postNotification:v4 forDeviceID:v6 withUserInfo:?];
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __44__NRPairedDeviceRegistry_compatibilityState__block_invoke(uint64_t a1, void *a2)
{
  result = [(NRPairedDeviceRegistry *)*(a1 + 32) _getCompatibilityStateWithCollection:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __69__NRPairedDeviceRegistry__postNotification_forDeviceID_withUserInfo___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 152) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    v3 = [*(a1 + 48) mutableCopy];
    if (!v3)
    {
      v3 = [MEMORY[0x1E695DF90] dictionary];
    }

    [v3 setObject:v2 forKeyedSubscript:@"device"];
    [v3 setObject:*(a1 + 40) forKeyedSubscript:@"pairingID"];
  }

  else
  {
    v3 = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__NRPairedDeviceRegistry__postNotification_forDeviceID_withUserInfo___block_invoke_2;
  v7[3] = &unk_1E86DC0B8;
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v10 = v3;
  v11 = *(a1 + 48);
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __69__NRPairedDeviceRegistry__postNotification_forDeviceID_withUserInfo___block_invoke_2(void *a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = a1[6];
  if (!v3)
  {
    v3 = a1[7];
  }

  v4 = v2;
  [v2 postNotificationName:a1[4] object:a1[5] userInfo:v3];
}

void __69__NRPairedDeviceRegistry__postNotification_forDeviceID_withUserInfo___block_invoke_3(void *a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:a1[4] object:a1[5] userInfo:a1[6]];
}

void __99__NRPairedDeviceRegistry__fireChangeNotificationsForDiff_collection_secureProperties_index_notify___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v16 = @"error";
    v17[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v10 = [v9 mutableCopy];

    if ([v8 code] == 1)
    {
      v11 = [v8 userInfo];
      v12 = [v11 objectForKeyedSubscript:@"previousDeviceID"];
      v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v12];
      if (v13)
      {
        v14 = [*(*(a1 + 32) + 152) objectForKeyedSubscript:v13];
        if (v14)
        {
          [v10 setObject:v14 forKeyedSubscript:@"previousDevice"];
        }
      }
    }

    [(NRPairedDeviceRegistry *)*(a1 + 32) _postNotification:v6 forDeviceID:v10 withUserInfo:?];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)getDevicesWithBlock:(id)a3
{
  v4 = a3;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__NRPairedDeviceRegistry_getDevicesWithBlock___block_invoke;
  v5[3] = &unk_1E86DC108;
  v5[4] = &v6;
  [(NRPairedDeviceRegistry *)self threadIsBlockedWaitingOn_nanoregistryd_syncGrabLegacyRegistryWithBlock:v5];
  v4[2](v4, v7[5]);
  _Block_object_dispose(&v6, 8);
}

void __46__NRPairedDeviceRegistry_getDevicesWithBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = [a4 allValues];
  v5 = [v8 copy];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getDevices
{
  v3 = [objc_opt_class() activePairedDeviceSelectorBlock];
  v4 = [(NRPairedDeviceRegistry *)self getDevicesMatching:v3];

  return v4;
}

- (id)getActivePairedDeviceIncludingAltAccount
{
  v3 = [objc_opt_class() activePairedDeviceSelectorBlock];
  v4 = [(NRPairedDeviceRegistry *)self getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  v5 = [v4 firstObject];

  return v5;
}

- (id)getSetupCompletedDevices
{
  v3 = [objc_opt_class() setupCompletedDevicesSelectorBlock];
  v4 = [(NRPairedDeviceRegistry *)self getDevicesMatching:v3];

  return v4;
}

uint64_t __52__NRPairedDeviceRegistry_pairedDevicesSelectorBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 valueForProperty:@"isPaired"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t __60__NRPairedDeviceRegistry_setupCompletedDevicesSelectorBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 valueForProperty:@"isPaired"];
  if ([v3 BOOLValue])
  {
    v4 = [v2 valueForProperty:@"isSetup"];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getDevicesMatching:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__NRPairedDeviceRegistry_getDevicesMatching___block_invoke;
  v8[3] = &unk_1E86DC130;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(NRPairedDeviceRegistry *)self getDevicesWithBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __45__NRPairedDeviceRegistry_getDevicesMatching___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = [v7 valueForProperty:@"isArchived"];
        if ([v8 BOOLValue])
        {
          goto LABEL_9;
        }

        v9 = [v7 valueForProperty:@"isAltAccount"];
        if ([v9 BOOLValue])
        {

LABEL_9:
          goto LABEL_10;
        }

        v10 = (*(*(a1 + 32) + 16))();

        if (v10)
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:v7];
        }

LABEL_10:
        ++v6;
      }

      while (v4 != v6);
      v11 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v4 = v11;
    }

    while (v11);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)getAllDevicesWithArchivedDevicesMatching:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__NRPairedDeviceRegistry_getAllDevicesWithArchivedDevicesMatching___block_invoke;
  v8[3] = &unk_1E86DC130;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(NRPairedDeviceRegistry *)self getDevicesWithBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __67__NRPairedDeviceRegistry_getAllDevicesWithArchivedDevicesMatching___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        if ((*(*(a1 + 32) + 16))())
        {
          v9 = [v8 valueForProperty:@"isAltAccount"];
          v10 = [v9 BOOLValue];

          if ((v10 & 1) == 0)
          {
            [*(*(*(a1 + 40) + 8) + 40) addObject:v8];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)getAllDevicesWithArchivedAltAccountDevicesMatching:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__NRPairedDeviceRegistry_getAllDevicesWithArchivedAltAccountDevicesMatching___block_invoke;
  v8[3] = &unk_1E86DC130;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(NRPairedDeviceRegistry *)self getDevicesWithBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __77__NRPairedDeviceRegistry_getAllDevicesWithArchivedAltAccountDevicesMatching___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if ((*(*(a1 + 32) + 16))())
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)companionOOBDiscoverAndPairWithName:(id)a3 withOutOfBandPairingKey:(id)a4 withOptions:(id)a5 operationHasBegun:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(NRRegistryClient *)self connection];

  if (v14)
  {
    v15 = [(NRRegistryClient *)self connection];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __116__NRPairedDeviceRegistry_companionOOBDiscoverAndPairWithName_withOutOfBandPairingKey_withOptions_operationHasBegun___block_invoke;
    v25[3] = &unk_1E86DACE8;
    v16 = &v26;
    v17 = v13;
    v26 = v17;
    v18 = [v15 remoteObjectProxyWithErrorHandler:v25];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __116__NRPairedDeviceRegistry_companionOOBDiscoverAndPairWithName_withOutOfBandPairingKey_withOptions_operationHasBegun___block_invoke_3;
    v23[3] = &unk_1E86DACE8;
    v24 = v17;
    v19 = v17;
    [v18 xpcCompanionOOBDiscoverAndPairWithName:v10 withOutOfBandPairingKey:v11 withOptions:v12 operationHasBegun:v23];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __116__NRPairedDeviceRegistry_companionOOBDiscoverAndPairWithName_withOutOfBandPairingKey_withOptions_operationHasBegun___block_invoke_5;
    block[3] = &unk_1E86DAE70;
    v16 = &v22;
    v22 = v13;
    v20 = v13;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __116__NRPairedDeviceRegistry_companionOOBDiscoverAndPairWithName_withOutOfBandPairingKey_withOptions_operationHasBegun___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __116__NRPairedDeviceRegistry_companionOOBDiscoverAndPairWithName_withOutOfBandPairingKey_withOptions_operationHasBegun___block_invoke_2;
    block[3] = &unk_1E86DAE70;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __116__NRPairedDeviceRegistry_companionOOBDiscoverAndPairWithName_withOutOfBandPairingKey_withOptions_operationHasBegun___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

void __116__NRPairedDeviceRegistry_companionOOBDiscoverAndPairWithName_withOutOfBandPairingKey_withOptions_operationHasBegun___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __116__NRPairedDeviceRegistry_companionOOBDiscoverAndPairWithName_withOutOfBandPairingKey_withOptions_operationHasBegun___block_invoke_4;
  v6[3] = &unk_1E86DACC0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __116__NRPairedDeviceRegistry_companionOOBDiscoverAndPairWithName_withOutOfBandPairingKey_withOptions_operationHasBegun___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

- (void)companionPasscodePairWithDevice:(id)a3 withOptions:(id)a4 operationHasBegun:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NRRegistryClient *)self connection];

  if (v11)
  {
    v12 = [(NRRegistryClient *)self connection];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __88__NRPairedDeviceRegistry_companionPasscodePairWithDevice_withOptions_operationHasBegun___block_invoke;
    v23[3] = &unk_1E86DACE8;
    v13 = &v24;
    v14 = v10;
    v24 = v14;
    v15 = [v12 remoteObjectProxyWithErrorHandler:v23];
    v16 = [v8 pairingID];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __88__NRPairedDeviceRegistry_companionPasscodePairWithDevice_withOptions_operationHasBegun___block_invoke_3;
    v21[3] = &unk_1E86DACE8;
    v22 = v14;
    v17 = v14;
    [v15 xpcCompanionPasscodePairWithDeviceID:v16 withOptions:v9 operationHasBegun:v21];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__NRPairedDeviceRegistry_companionPasscodePairWithDevice_withOptions_operationHasBegun___block_invoke_5;
    block[3] = &unk_1E86DAE70;
    v13 = &v20;
    v20 = v10;
    v18 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __88__NRPairedDeviceRegistry_companionPasscodePairWithDevice_withOptions_operationHasBegun___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__NRPairedDeviceRegistry_companionPasscodePairWithDevice_withOptions_operationHasBegun___block_invoke_2;
    block[3] = &unk_1E86DAE70;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __88__NRPairedDeviceRegistry_companionPasscodePairWithDevice_withOptions_operationHasBegun___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

void __88__NRPairedDeviceRegistry_companionPasscodePairWithDevice_withOptions_operationHasBegun___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88__NRPairedDeviceRegistry_companionPasscodePairWithDevice_withOptions_operationHasBegun___block_invoke_4;
  v6[3] = &unk_1E86DACC0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __88__NRPairedDeviceRegistry_companionPasscodePairWithDevice_withOptions_operationHasBegun___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

- (void)gizmoOOBAdvertiseAndPairWithName:(id)a3 operationHasBegun:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NRRegistryClient *)self connection];

  if (v8)
  {
    v9 = [(NRRegistryClient *)self connection];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __77__NRPairedDeviceRegistry_gizmoOOBAdvertiseAndPairWithName_operationHasBegun___block_invoke;
    v19[3] = &unk_1E86DACE8;
    v10 = &v20;
    v11 = v7;
    v20 = v11;
    v12 = [v9 remoteObjectProxyWithErrorHandler:v19];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __77__NRPairedDeviceRegistry_gizmoOOBAdvertiseAndPairWithName_operationHasBegun___block_invoke_3;
    v17[3] = &unk_1E86DACE8;
    v18 = v11;
    v13 = v11;
    [v12 xpcGizmoOOBAdvertiseAndPairWithName:v6 operationHasBegun:v17];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__NRPairedDeviceRegistry_gizmoOOBAdvertiseAndPairWithName_operationHasBegun___block_invoke_5;
    block[3] = &unk_1E86DAE70;
    v10 = &v16;
    v16 = v7;
    v14 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __77__NRPairedDeviceRegistry_gizmoOOBAdvertiseAndPairWithName_operationHasBegun___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__NRPairedDeviceRegistry_gizmoOOBAdvertiseAndPairWithName_operationHasBegun___block_invoke_2;
    block[3] = &unk_1E86DAE70;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __77__NRPairedDeviceRegistry_gizmoOOBAdvertiseAndPairWithName_operationHasBegun___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

void __77__NRPairedDeviceRegistry_gizmoOOBAdvertiseAndPairWithName_operationHasBegun___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__NRPairedDeviceRegistry_gizmoOOBAdvertiseAndPairWithName_operationHasBegun___block_invoke_4;
  v6[3] = &unk_1E86DACC0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __77__NRPairedDeviceRegistry_gizmoOOBAdvertiseAndPairWithName_operationHasBegun___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

- (void)gizmoPasscodeAdvertiseAndPairWithName:(id)a3 operationHasBegun:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NRRegistryClient *)self connection];

  if (v8)
  {
    v9 = [(NRRegistryClient *)self connection];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __82__NRPairedDeviceRegistry_gizmoPasscodeAdvertiseAndPairWithName_operationHasBegun___block_invoke;
    v19[3] = &unk_1E86DACE8;
    v10 = &v20;
    v11 = v7;
    v20 = v11;
    v12 = [v9 remoteObjectProxyWithErrorHandler:v19];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __82__NRPairedDeviceRegistry_gizmoPasscodeAdvertiseAndPairWithName_operationHasBegun___block_invoke_3;
    v17[3] = &unk_1E86DACE8;
    v18 = v11;
    v13 = v11;
    [v12 xpcGizmoOOBAdvertiseAndPairWithName:v6 operationHasBegun:v17];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__NRPairedDeviceRegistry_gizmoPasscodeAdvertiseAndPairWithName_operationHasBegun___block_invoke_5;
    block[3] = &unk_1E86DAE70;
    v10 = &v16;
    v16 = v7;
    v14 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __82__NRPairedDeviceRegistry_gizmoPasscodeAdvertiseAndPairWithName_operationHasBegun___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__NRPairedDeviceRegistry_gizmoPasscodeAdvertiseAndPairWithName_operationHasBegun___block_invoke_2;
    block[3] = &unk_1E86DAE70;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __82__NRPairedDeviceRegistry_gizmoPasscodeAdvertiseAndPairWithName_operationHasBegun___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

void __82__NRPairedDeviceRegistry_gizmoPasscodeAdvertiseAndPairWithName_operationHasBegun___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__NRPairedDeviceRegistry_gizmoPasscodeAdvertiseAndPairWithName_operationHasBegun___block_invoke_4;
  v6[3] = &unk_1E86DACC0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __82__NRPairedDeviceRegistry_gizmoPasscodeAdvertiseAndPairWithName_operationHasBegun___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

- (void)notifyPasscode:(id)a3 forDevice:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(NRRegistryClient *)self connection];
  v8 = [v10 remoteObjectProxy];
  v9 = [v6 pairingID];

  [v8 xpcNotifyPasscode:v7 withDeviceID:v9];
}

- (void)notifyPairingShouldContinue
{
  v3 = [(NRRegistryClient *)self connection];
  v2 = [v3 remoteObjectProxy];
  [v2 xpcPairingShouldContinue];
}

- (void)unpairWithDevice:(id)a3 withOptions:(id)a4 operationHasBegun:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NRRegistryClient *)self connection];

  if (v11)
  {
    v12 = [(NRRegistryClient *)self connection];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __73__NRPairedDeviceRegistry_unpairWithDevice_withOptions_operationHasBegun___block_invoke;
    v21[3] = &unk_1E86DACE8;
    v13 = &v22;
    v14 = v10;
    v22 = v14;
    v15 = [v12 remoteObjectProxyWithErrorHandler:v21];
    v16 = [v8 pairingID];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __73__NRPairedDeviceRegistry_unpairWithDevice_withOptions_operationHasBegun___block_invoke_3;
    v19[3] = &unk_1E86DACE8;
    v20 = v14;
    [v15 xpcUnpairWithDeviceID:v16 withOptions:v9 operationHasBegun:v19];

LABEL_5:
    goto LABEL_6;
  }

  if (v10)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__NRPairedDeviceRegistry_unpairWithDevice_withOptions_operationHasBegun___block_invoke_5;
    block[3] = &unk_1E86DAE70;
    v13 = &v18;
    v18 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    goto LABEL_5;
  }

LABEL_6:
}

void __73__NRPairedDeviceRegistry_unpairWithDevice_withOptions_operationHasBegun___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__NRPairedDeviceRegistry_unpairWithDevice_withOptions_operationHasBegun___block_invoke_2;
    block[3] = &unk_1E86DAE70;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __73__NRPairedDeviceRegistry_unpairWithDevice_withOptions_operationHasBegun___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

void __73__NRPairedDeviceRegistry_unpairWithDevice_withOptions_operationHasBegun___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __73__NRPairedDeviceRegistry_unpairWithDevice_withOptions_operationHasBegun___block_invoke_4;
    v5[3] = &unk_1E86DACC0;
    v7 = v4;
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

void __73__NRPairedDeviceRegistry_unpairWithDevice_withOptions_operationHasBegun___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

- (void)pairWithSimulator:(id)a3 withQueue:(id)a4 withCompletion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(NRRegistryClient *)self connection];

  if (v9)
  {
    v10 = [(NRRegistryClient *)self connection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __69__NRPairedDeviceRegistry_pairWithSimulator_withQueue_withCompletion___block_invoke;
    v20[3] = &unk_1E86DACE8;
    v11 = &v21;
    v12 = v8;
    v21 = v12;
    v13 = [v10 remoteObjectProxyWithErrorHandler:v20];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69__NRPairedDeviceRegistry_pairWithSimulator_withQueue_withCompletion___block_invoke_3;
    v18[3] = &unk_1E86DACE8;
    v19 = v12;
    v14 = v12;
    [v13 xpcPairWithSimulator:v7 withCompletion:v18];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__NRPairedDeviceRegistry_pairWithSimulator_withQueue_withCompletion___block_invoke_5;
    block[3] = &unk_1E86DAE70;
    v11 = &v17;
    v17 = v8;
    v15 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __69__NRPairedDeviceRegistry_pairWithSimulator_withQueue_withCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__NRPairedDeviceRegistry_pairWithSimulator_withQueue_withCompletion___block_invoke_2;
    block[3] = &unk_1E86DAE70;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __69__NRPairedDeviceRegistry_pairWithSimulator_withQueue_withCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

void __69__NRPairedDeviceRegistry_pairWithSimulator_withQueue_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__NRPairedDeviceRegistry_pairWithSimulator_withQueue_withCompletion___block_invoke_4;
  v6[3] = &unk_1E86DACC0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __69__NRPairedDeviceRegistry_pairWithSimulator_withQueue_withCompletion___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

- (void)unpairWithSimulator:(id)a3 withQueue:(id)a4 withCompletion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(NRRegistryClient *)self connection];

  if (v9)
  {
    v10 = [(NRRegistryClient *)self connection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __71__NRPairedDeviceRegistry_unpairWithSimulator_withQueue_withCompletion___block_invoke;
    v20[3] = &unk_1E86DACE8;
    v11 = &v21;
    v12 = v8;
    v21 = v12;
    v13 = [v10 remoteObjectProxyWithErrorHandler:v20];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71__NRPairedDeviceRegistry_unpairWithSimulator_withQueue_withCompletion___block_invoke_3;
    v18[3] = &unk_1E86DACE8;
    v19 = v12;
    v14 = v12;
    [v13 xpcUnpairWithSimulator:v7 withCompletion:v18];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__NRPairedDeviceRegistry_unpairWithSimulator_withQueue_withCompletion___block_invoke_5;
    block[3] = &unk_1E86DAE70;
    v11 = &v17;
    v17 = v8;
    v15 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __71__NRPairedDeviceRegistry_unpairWithSimulator_withQueue_withCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__NRPairedDeviceRegistry_unpairWithSimulator_withQueue_withCompletion___block_invoke_2;
    block[3] = &unk_1E86DAE70;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __71__NRPairedDeviceRegistry_unpairWithSimulator_withQueue_withCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

void __71__NRPairedDeviceRegistry_unpairWithSimulator_withQueue_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__NRPairedDeviceRegistry_unpairWithSimulator_withQueue_withCompletion___block_invoke_4;
  v6[3] = &unk_1E86DACC0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __71__NRPairedDeviceRegistry_unpairWithSimulator_withQueue_withCompletion___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

- (void)switchToSimulator:(id)a3 withQueue:(id)a4 withCompletion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(NRRegistryClient *)self connection];

  if (v9)
  {
    v10 = [(NRRegistryClient *)self connection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __69__NRPairedDeviceRegistry_switchToSimulator_withQueue_withCompletion___block_invoke;
    v20[3] = &unk_1E86DACE8;
    v11 = &v21;
    v12 = v8;
    v21 = v12;
    v13 = [v10 remoteObjectProxyWithErrorHandler:v20];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69__NRPairedDeviceRegistry_switchToSimulator_withQueue_withCompletion___block_invoke_3;
    v18[3] = &unk_1E86DACE8;
    v19 = v12;
    v14 = v12;
    [v13 xpcSwitchToSimulator:v7 withCompletion:v18];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__NRPairedDeviceRegistry_switchToSimulator_withQueue_withCompletion___block_invoke_5;
    block[3] = &unk_1E86DAE70;
    v11 = &v17;
    v17 = v8;
    v15 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __69__NRPairedDeviceRegistry_switchToSimulator_withQueue_withCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__NRPairedDeviceRegistry_switchToSimulator_withQueue_withCompletion___block_invoke_2;
    block[3] = &unk_1E86DAE70;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __69__NRPairedDeviceRegistry_switchToSimulator_withQueue_withCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

void __69__NRPairedDeviceRegistry_switchToSimulator_withQueue_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__NRPairedDeviceRegistry_switchToSimulator_withQueue_withCompletion___block_invoke_4;
  v6[3] = &unk_1E86DACC0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __69__NRPairedDeviceRegistry_switchToSimulator_withQueue_withCompletion___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

- (void)fakePairedSyncIsCompleteWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NRRegistryClient *)self connection];

  if (v5)
  {
    v6 = [(NRRegistryClient *)self connection];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65__NRPairedDeviceRegistry_fakePairedSyncIsCompleteWithCompletion___block_invoke;
    v16[3] = &unk_1E86DACE8;
    v7 = &v17;
    v8 = v4;
    v17 = v8;
    v9 = [v6 remoteObjectProxyWithErrorHandler:v16];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__NRPairedDeviceRegistry_fakePairedSyncIsCompleteWithCompletion___block_invoke_3;
    v14[3] = &unk_1E86DACE8;
    v15 = v8;
    v10 = v8;
    [v9 xpcFakePairedSyncIsCompleteWithCompletion:v14];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__NRPairedDeviceRegistry_fakePairedSyncIsCompleteWithCompletion___block_invoke_5;
    block[3] = &unk_1E86DAE70;
    v7 = &v13;
    v13 = v4;
    v11 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __65__NRPairedDeviceRegistry_fakePairedSyncIsCompleteWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__NRPairedDeviceRegistry_fakePairedSyncIsCompleteWithCompletion___block_invoke_2;
    block[3] = &unk_1E86DAE70;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __65__NRPairedDeviceRegistry_fakePairedSyncIsCompleteWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

void __65__NRPairedDeviceRegistry_fakePairedSyncIsCompleteWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__NRPairedDeviceRegistry_fakePairedSyncIsCompleteWithCompletion___block_invoke_4;
  v6[3] = &unk_1E86DACC0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __65__NRPairedDeviceRegistry_fakePairedSyncIsCompleteWithCompletion___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

- (void)triggerTailspinFrom:(unint64_t)a3
{
  v5 = [(NRRegistryClient *)self connection];

  if (v5)
  {
    v7 = [(NRRegistryClient *)self connection];
    v6 = [v7 remoteObjectProxyWithErrorHandler:&__block_literal_global_367];
    [v6 xpcTriggerTailspinFrom:a3 forApp:0];
  }
}

- (void)pairingStorePathPairingID:(id)a3
{
  v4 = a3;
  v7 = [(NRPairedDeviceRegistry *)self getActivePairedDevice];
  v5 = [v7 objectForKeyedSubscript:@"localPairingDataStorePath"];
  v6 = [v7 pairingID];
  v4[2](v4, v5, v6);
}

- (void)altAccountPairingStorePathPairingID:(id)a3
{
  v4 = a3;
  v5 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
  v6 = [(NRPairedDeviceRegistry *)self getAllDevicesWithArchivedAltAccountDevicesMatching:v5];
  v9 = [v6 firstObject];

  v7 = [v9 objectForKeyedSubscript:@"localPairingDataStorePath"];
  v8 = [v9 pairingID];
  v4[2](v4, v7, v8);
}

- (void)waitForPairingStorePathPairingID:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v6 = [(NRRegistry *)self managementQueue];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __59__NRPairedDeviceRegistry_waitForPairingStorePathPairingID___block_invoke;
  v11 = &unk_1E86DAF10;
  v12 = self;
  v13 = v5;
  v7 = v5;
  dispatch_async(v6, &v8);

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  [(NRPairedDeviceRegistry *)self pairingStorePathPairingID:v4, v8, v9, v10, v11, v12];
}

void __59__NRPairedDeviceRegistry_waitForPairingStorePathPairingID___block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__NRPairedDeviceRegistry_waitForPairingStorePathPairingID___block_invoke_2;
  v6[3] = &unk_1E86DC158;
  v2 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v2;
  v3 = MEMORY[0x1E12E7560](v6);
  [*(*(a1 + 32) + 184) addObject:v3];
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__NRPairedDeviceRegistry_waitForPairingStorePathPairingID___block_invoke_4;
  v5[3] = &unk_1E86DC068;
  v5[4] = v4;
  [v4 _grabRegistryWithReadBlock:v5];
}

uint64_t __59__NRPairedDeviceRegistry_waitForPairingStorePathPairingID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 activeDevice];
  if ([v3 isPaired] && (objc_msgSend(v3, "isAltAccount") & 1) == 0)
  {
    v5 = [*(a1 + 32) managementQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__NRPairedDeviceRegistry_waitForPairingStorePathPairingID___block_invoke_3;
    block[3] = &unk_1E86DAE98;
    v8 = *(a1 + 40);
    dispatch_async(v5, block);

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __59__NRPairedDeviceRegistry_waitForPairingStorePathPairingID___block_invoke_4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    return [*(v2 + 184) sweepWithCollection:a2];
  }

  return result;
}

- (void)waitForAltAccountPairingStorePathPairingID:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v6 = [(NRRegistry *)self managementQueue];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __69__NRPairedDeviceRegistry_waitForAltAccountPairingStorePathPairingID___block_invoke;
  v11 = &unk_1E86DAF10;
  v12 = v5;
  v13 = self;
  v7 = v5;
  dispatch_async(v6, &v8);

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  [(NRPairedDeviceRegistry *)self altAccountPairingStorePathPairingID:v4, v8, v9, v10, v11];
}

void __69__NRPairedDeviceRegistry_waitForAltAccountPairingStorePathPairingID___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__NRPairedDeviceRegistry_waitForAltAccountPairingStorePathPairingID___block_invoke_2;
  v5[3] = &unk_1E86DC180;
  v6 = *(a1 + 32);
  v2 = MEMORY[0x1E12E7560](v5);
  [*(*(a1 + 40) + 184) addObject:v2];
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__NRPairedDeviceRegistry_waitForAltAccountPairingStorePathPairingID___block_invoke_3;
  v4[3] = &unk_1E86DC068;
  v4[4] = v3;
  [v3 _grabRegistryWithReadBlock:v4];
}

uint64_t __69__NRPairedDeviceRegistry_waitForAltAccountPairingStorePathPairingID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 activeDevice];
  v4 = [v3 isPaired];
  if (v4)
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }

  return v4;
}

uint64_t __69__NRPairedDeviceRegistry_waitForAltAccountPairingStorePathPairingID___block_invoke_3(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    return [*(v2 + 184) sweepWithCollection:a2];
  }

  return result;
}

- (id)waitForActivePairedDevice
{
  [(NRPairedDeviceRegistry *)self waitForPairingStorePathPairingID:&__block_literal_global_371];

  return [(NRPairedDeviceRegistry *)self getActivePairedDevice];
}

- (id)waitForActivePairedOrAltAccountDevice
{
  [(NRPairedDeviceRegistry *)self waitForAltAccountPairingStorePathPairingID:&__block_literal_global_373];

  return [(NRPairedDeviceRegistry *)self getActivePairedDevice];
}

- (id)waitForActiveOrAltAccountDevice
{
  v3 = dispatch_semaphore_create(0);
  v4 = [(NRRegistry *)self managementQueue];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __57__NRPairedDeviceRegistry_waitForActiveOrAltAccountDevice__block_invoke;
  v13 = &unk_1E86DAF10;
  v14 = v3;
  v15 = self;
  v5 = v3;
  dispatch_async(v4, &v10);

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = [objc_opt_class() activeDeviceSelectorBlock];
  v7 = [(NRPairedDeviceRegistry *)self getAllDevicesWithArchivedAltAccountDevicesMatching:v6];
  v8 = [v7 firstObject];

  return v8;
}

void __57__NRPairedDeviceRegistry_waitForActiveOrAltAccountDevice__block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__NRPairedDeviceRegistry_waitForActiveOrAltAccountDevice__block_invoke_2;
  v5[3] = &unk_1E86DC180;
  v6 = *(a1 + 32);
  v2 = MEMORY[0x1E12E7560](v5);
  [*(*(a1 + 40) + 184) addObject:v2];
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__NRPairedDeviceRegistry_waitForActiveOrAltAccountDevice__block_invoke_3;
  v4[3] = &unk_1E86DC068;
  v4[4] = v3;
  [v3 _grabRegistryWithReadBlock:v4];
}

BOOL __57__NRPairedDeviceRegistry_waitForActiveOrAltAccountDevice__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 activeDevice];
  if (v3)
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }

  return v3 != 0;
}

uint64_t __57__NRPairedDeviceRegistry_waitForActiveOrAltAccountDevice__block_invoke_3(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    return [*(v2 + 184) sweepWithCollection:a2];
  }

  return result;
}

- (id)waitForActiveDevice
{
  v3 = dispatch_semaphore_create(0);
  v4 = [(NRRegistry *)self managementQueue];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __45__NRPairedDeviceRegistry_waitForActiveDevice__block_invoke;
  v13 = &unk_1E86DAF10;
  v14 = v3;
  v15 = self;
  v5 = v3;
  dispatch_async(v4, &v10);

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = [objc_opt_class() activeDeviceSelectorBlock];
  v7 = [(NRPairedDeviceRegistry *)self getAllDevicesWithArchivedAltAccountDevicesMatching:v6];
  v8 = [v7 firstObject];

  return v8;
}

void __45__NRPairedDeviceRegistry_waitForActiveDevice__block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__NRPairedDeviceRegistry_waitForActiveDevice__block_invoke_2;
  v5[3] = &unk_1E86DC180;
  v6 = *(a1 + 32);
  v2 = MEMORY[0x1E12E7560](v5);
  [*(*(a1 + 40) + 184) addObject:v2];
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__NRPairedDeviceRegistry_waitForActiveDevice__block_invoke_3;
  v4[3] = &unk_1E86DC068;
  v4[4] = v3;
  [v3 _grabRegistryWithReadBlock:v4];
}

uint64_t __45__NRPairedDeviceRegistry_waitForActiveDevice__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 activeDevice];
  v4 = v3;
  if (v3 && ([v3 isAltAccount] & 1) == 0)
  {
    dispatch_semaphore_signal(*(a1 + 32));
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __45__NRPairedDeviceRegistry_waitForActiveDevice__block_invoke_3(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    return [*(v2 + 184) sweepWithCollection:a2];
  }

  return result;
}

- (void)abortPairingWithReason:(id)a3
{
  v6 = a3;
  if (![(NRRegistryClient *)self daemonIdle])
  {
    v4 = [(NRRegistryClient *)self connection];
    v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_375];
    [v5 xpcAbortPairingReason:v6 withBlock:&__block_literal_global_377];
  }
}

- (void)suspendPairingClientCrashMonitoring
{
  v3 = [(NRRegistryClient *)self connection];
  v2 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_379];
  [v2 xpcSuspendPairingClientCrashMonitoring:&__block_literal_global_381];
}

- (void)resumePairingClientCrashMonitoring
{
  v3 = [(NRRegistryClient *)self connection];
  v2 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_383];
  [v2 xpcResumePairingClientCrashMonitoring:&__block_literal_global_385];
}

- (id)pairingStorePath
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy__2;
  v5[4] = __Block_byref_object_dispose__2;
  v6 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__NRPairedDeviceRegistry_pairingStorePath__block_invoke;
  v4[3] = &unk_1E86DC1C8;
  v4[4] = &v7;
  v4[5] = v5;
  [(NRPairedDeviceRegistry *)self pairingStorePathPairingID:v4];
  v2 = v8[5];
  _Block_object_dispose(v5, 8);

  _Block_object_dispose(&v7, 8);

  return v2;
}

void __42__NRPairedDeviceRegistry_pairingStorePath__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)pairingID
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__2;
  v11[4] = __Block_byref_object_dispose__2;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__NRPairedDeviceRegistry_pairingID__block_invoke;
  v4[3] = &unk_1E86DC1C8;
  v4[4] = v11;
  v4[5] = &v5;
  [(NRPairedDeviceRegistry *)self pairingStorePathPairingID:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  _Block_object_dispose(v11, 8);

  return v2;
}

void __35__NRPairedDeviceRegistry_pairingID__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)isPaired
{
  v2 = [(NRPairedDeviceRegistry *)self getPairedDevices];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)blockAndQueryVersions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  v2 = [(NRRegistry *)self managementQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__NRPairedDeviceRegistry_blockAndQueryVersions__block_invoke;
  block[3] = &unk_1E86DC1F0;
  block[4] = &v6;
  dispatch_sync(v2, block);

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __47__NRPairedDeviceRegistry_blockAndQueryVersions__block_invoke(uint64_t a1)
{
  v2 = +[NRPairingCompatibilityVersionInfo systemVersions];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)userIsCheckingForUpdate
{
  v3 = [(NRRegistryClient *)self connection];
  v2 = [v3 remoteObjectProxy];
  [v2 xpcTriggerVersion4Workaround];
}

- (int64_t)pairingCompatibilityVersion
{
  v2 = +[NRPairingCompatibilityVersionInfo systemVersions];
  v3 = [v2 pairingCompatibilityVersion];

  return v3;
}

- (int64_t)maxPairingCompatibilityVersion
{
  v2 = +[NRPairingCompatibilityVersionInfo systemVersions];
  v3 = [v2 maxPairingCompatibilityVersion];

  return v3;
}

- (int64_t)minPairingCompatibilityVersion
{
  v2 = +[NRPairingCompatibilityVersionInfo systemVersions];
  v3 = [v2 minPairingCompatibilityVersion];

  return v3;
}

- (int64_t)minQuickSwitchCompatibilityVersion
{
  v2 = +[NRPairingCompatibilityVersionInfo systemVersions];
  v3 = [v2 minQuickSwitchCompatibilityVersion];

  return v3;
}

- (void)beginDiscovery
{
  v3 = [(NRRegistryClient *)self connection];
  v2 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_391];
  [v2 xpcBeginDiscoveryWithBlock:&__block_literal_global_393];
}

- (void)endDiscovery
{
  v3 = [(NRRegistryClient *)self connection];
  v2 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_395];
  [v2 xpcEndDiscoveryWithBlock:&__block_literal_global_397];
}

- (void)overrideSignalStrengthLimit:(int64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = nr_framework_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_framework_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = a3;
      _os_log_impl(&dword_1E0ADF000, v6, OS_LOG_TYPE_DEFAULT, "overrideSignalStrengthLimit:%ld not implemented", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)xpcDeviceID:(id)a3 needsPasscode:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4)
  {
    v10 = @"passcode";
    v11[0] = a4;
    v7 = MEMORY[0x1E695DF20];
    v8 = a4;
    a4 = [v7 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  [(NRPairedDeviceRegistry *)self _postNotification:v6 forDeviceID:a4 withUserInfo:?];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)xpcHasNewOOBKey:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v8 = @"OOBKey";
    v9[0] = a3;
    v4 = MEMORY[0x1E695DF20];
    v5 = a3;
    v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  [(NRPairedDeviceRegistry *)self _postNotification:0 forDeviceID:v6 withUserInfo:?];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)completeRTCPairingMetricForMetricID:(id)a3 withSuccess:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NRRegistryClient *)self connection];

  if (v8)
  {
    v9 = [(NRRegistryClient *)self connection];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__NRPairedDeviceRegistry_completeRTCPairingMetricForMetricID_withSuccess___block_invoke;
    v16[3] = &unk_1E86DACE8;
    v10 = &v17;
    v17 = v7;
    v11 = v7;
    v12 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v16];
    [v12 xpcSubmitRTCPairingMetricForMetricID:v6 withSuccess:v11];
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__NRPairedDeviceRegistry_completeRTCPairingMetricForMetricID_withSuccess___block_invoke_3;
    v14[3] = &unk_1E86DAE70;
    v10 = &v15;
    v15 = v7;
    v13 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v14);
  }
}

void __74__NRPairedDeviceRegistry_completeRTCPairingMetricForMetricID_withSuccess___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__NRPairedDeviceRegistry_completeRTCPairingMetricForMetricID_withSuccess___block_invoke_2;
    block[3] = &unk_1E86DAE70;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __61__NRPairedDeviceRegistry_updateWatchBuddyStage_forPairingID___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = nr_framework_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = nr_framework_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v2;
      _os_log_error_impl(&dword_1E0ADF000, v5, OS_LOG_TYPE_ERROR, "connection error updating buddy stage: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)deviceForPairingID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__NRPairedDeviceRegistry_deviceForPairingID___block_invoke;
  v8[3] = &unk_1E86DC218;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [(NRPairedDeviceRegistry *)self threadIsBlockedWaitingOn_nanoregistryd_syncGrabLegacyRegistryWithBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __45__NRPairedDeviceRegistry_deviceForPairingID___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [a4 objectForKeyedSubscript:*(a1 + 32)];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x1EEE66BB8](v5, v7);
}

- (id)deviceForBTDeviceID:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [[v4 alloc] initWithUUIDString:v5];

  v7 = [(NRPairedDeviceRegistry *)self deviceForBluetoothID:v6];

  return v7;
}

- (id)deviceForBluetoothID:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__NRPairedDeviceRegistry_deviceForBluetoothID___block_invoke;
  v9[3] = &unk_1E86DC240;
  v10 = v4;
  v5 = v4;
  v6 = [(NRPairedDeviceRegistry *)self getAllDevicesWithArchivedAltAccountDevicesMatching:v9];
  v7 = [v6 firstObject];

  return v7;
}

BOOL __47__NRPairedDeviceRegistry_deviceForBluetoothID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"isPaired"];
  v5 = [v3 objectForKeyedSubscript:@"isActive"];
  v8 = 0;
  if (([v4 BOOLValue] & 1) != 0 || objc_msgSend(v5, "BOOLValue"))
  {
    v6 = [v3 objectForKeyedSubscript:@"_bluetoothIdentifier"];
    v7 = [*(a1 + 32) isEqual:v6];

    if (v7)
    {
      v8 = 1;
    }
  }

  return v8;
}

- (id)nonActiveDeviceForBTDeviceID:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [[v4 alloc] initWithUUIDString:v5];

  v7 = [(NRPairedDeviceRegistry *)self nonActiveDeviceForBluetoothID:v6];

  return v7;
}

- (id)nonActiveDeviceForBluetoothID:(id)a3
{
  v3 = [(NRPairedDeviceRegistry *)self getAllDevicesWithArchivedAltAccountDevicesMatching:&__block_literal_global_401];
  v4 = [v3 firstObject];

  return v4;
}

uint64_t __56__NRPairedDeviceRegistry_nonActiveDeviceForBluetoothID___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 valueForProperty:@"isArchived"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue] ^ 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)deviceForIDSDevice:(id)a3
{
  v4 = [(NRPairedDeviceRegistry *)self deviceIDForIDSDevice:a3];
  v5 = [v4 UUIDString];
  v6 = [(NRPairedDeviceRegistry *)self deviceForBTDeviceID:v5];

  return v6;
}

- (id)nonActiveDeviceForIDSDevice:(id)a3
{
  v4 = [(NRPairedDeviceRegistry *)self deviceIDForIDSDevice:a3];
  v5 = [v4 UUIDString];
  v6 = [(NRPairedDeviceRegistry *)self nonActiveDeviceForBTDeviceID:v5];

  return v6;
}

- (id)deviceForNRDevice:(id)a3 fromIDSDevices:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(NRPairedDeviceRegistry *)self deviceIDForNRDevice:a3];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [(NRPairedDeviceRegistry *)self deviceIDForIDSDevice:v13, v19];
        v15 = [v7 isEqual:v14];

        if (v15)
        {
          v16 = v13;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)pairingClientDidEnterPhase:(id)a3
{
  v6 = a3;
  if (![(NRRegistryClient *)self daemonIdle])
  {
    v4 = [(NRRegistryClient *)self connection];
    v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_403];
    [v5 xpcPairingClientDidEnterPhase:v6 withBlock:&__block_literal_global_405];
  }
}

- (void)pairingClientSetAltAccountName:(id)a3 altDSID:(id)a4 forDevice:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (![(NRRegistryClient *)self daemonIdle])
  {
    v14 = [(NRRegistryClient *)self connection];

    if (v14)
    {
      v15 = [(NRRegistryClient *)self connection];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __86__NRPairedDeviceRegistry_pairingClientSetAltAccountName_altDSID_forDevice_completion___block_invoke;
      v24[3] = &unk_1E86DACE8;
      v16 = &v25;
      v17 = v13;
      v25 = v17;
      v18 = [v15 remoteObjectProxyWithErrorHandler:v24];
      v19 = [v12 pairingID];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __86__NRPairedDeviceRegistry_pairingClientSetAltAccountName_altDSID_forDevice_completion___block_invoke_3;
      v22[3] = &unk_1E86DACE8;
      v23 = v17;
      [v18 xpcPairingClientSetAltAccountName:v10 altDSID:v11 forPairingID:v19 completion:v22];

LABEL_6:
      goto LABEL_7;
    }
  }

  if (v13)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__NRPairedDeviceRegistry_pairingClientSetAltAccountName_altDSID_forDevice_completion___block_invoke_5;
    block[3] = &unk_1E86DAE70;
    v16 = &v21;
    v21 = v13;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    goto LABEL_6;
  }

LABEL_7:
}

void __86__NRPairedDeviceRegistry_pairingClientSetAltAccountName_altDSID_forDevice_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__NRPairedDeviceRegistry_pairingClientSetAltAccountName_altDSID_forDevice_completion___block_invoke_2;
    block[3] = &unk_1E86DAE70;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __86__NRPairedDeviceRegistry_pairingClientSetAltAccountName_altDSID_forDevice_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

void __86__NRPairedDeviceRegistry_pairingClientSetAltAccountName_altDSID_forDevice_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __86__NRPairedDeviceRegistry_pairingClientSetAltAccountName_altDSID_forDevice_completion___block_invoke_4;
    v5[3] = &unk_1E86DACC0;
    v7 = v4;
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

void __86__NRPairedDeviceRegistry_pairingClientSetAltAccountName_altDSID_forDevice_completion___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

- (void)pairingClientSetPairingParentName:(id)a3 pairingParentAltDSID:(id)a4 forDevice:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (![(NRRegistryClient *)self daemonIdle])
  {
    v14 = [(NRRegistryClient *)self connection];

    if (v14)
    {
      v15 = [(NRRegistryClient *)self connection];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __102__NRPairedDeviceRegistry_pairingClientSetPairingParentName_pairingParentAltDSID_forDevice_completion___block_invoke;
      v24[3] = &unk_1E86DACE8;
      v16 = &v25;
      v17 = v13;
      v25 = v17;
      v18 = [v15 remoteObjectProxyWithErrorHandler:v24];
      v19 = [v12 pairingID];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __102__NRPairedDeviceRegistry_pairingClientSetPairingParentName_pairingParentAltDSID_forDevice_completion___block_invoke_3;
      v22[3] = &unk_1E86DACE8;
      v23 = v17;
      [v18 xpcPairingClientSetPairingParentName:v10 pairingParentAltDSID:v11 forPairingID:v19 completion:v22];

LABEL_6:
      goto LABEL_7;
    }
  }

  if (v13)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __102__NRPairedDeviceRegistry_pairingClientSetPairingParentName_pairingParentAltDSID_forDevice_completion___block_invoke_5;
    block[3] = &unk_1E86DAE70;
    v16 = &v21;
    v21 = v13;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    goto LABEL_6;
  }

LABEL_7:
}

void __102__NRPairedDeviceRegistry_pairingClientSetPairingParentName_pairingParentAltDSID_forDevice_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __102__NRPairedDeviceRegistry_pairingClientSetPairingParentName_pairingParentAltDSID_forDevice_completion___block_invoke_2;
    block[3] = &unk_1E86DAE70;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __102__NRPairedDeviceRegistry_pairingClientSetPairingParentName_pairingParentAltDSID_forDevice_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

void __102__NRPairedDeviceRegistry_pairingClientSetPairingParentName_pairingParentAltDSID_forDevice_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __102__NRPairedDeviceRegistry_pairingClientSetPairingParentName_pairingParentAltDSID_forDevice_completion___block_invoke_4;
    v5[3] = &unk_1E86DACC0;
    v7 = v4;
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

void __102__NRPairedDeviceRegistry_pairingClientSetPairingParentName_pairingParentAltDSID_forDevice_completion___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

- (void)setWatchBuddyPushedSyncTrapUI:(id)a3
{
  v4 = a3;
  if (![(NRRegistryClient *)self daemonIdle])
  {
    v5 = [(NRRegistryClient *)self connection];

    if (v5)
    {
      v6 = [(NRRegistryClient *)self connection];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __56__NRPairedDeviceRegistry_setWatchBuddyPushedSyncTrapUI___block_invoke;
      v14[3] = &unk_1E86DACE8;
      v7 = &v15;
      v8 = v4;
      v15 = v8;
      v9 = [v6 remoteObjectProxyWithErrorHandler:v14];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __56__NRPairedDeviceRegistry_setWatchBuddyPushedSyncTrapUI___block_invoke_3;
      v12[3] = &unk_1E86DACE8;
      v13 = v8;
      [v9 xpcWatchBuddyCompletedSetupSteps:v12];

LABEL_6:
      goto LABEL_7;
    }
  }

  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__NRPairedDeviceRegistry_setWatchBuddyPushedSyncTrapUI___block_invoke_5;
    block[3] = &unk_1E86DAE70;
    v7 = &v11;
    v11 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    goto LABEL_6;
  }

LABEL_7:
}

void __56__NRPairedDeviceRegistry_setWatchBuddyPushedSyncTrapUI___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__NRPairedDeviceRegistry_setWatchBuddyPushedSyncTrapUI___block_invoke_2;
    block[3] = &unk_1E86DAE70;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __56__NRPairedDeviceRegistry_setWatchBuddyPushedSyncTrapUI___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

void __56__NRPairedDeviceRegistry_setWatchBuddyPushedSyncTrapUI___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__NRPairedDeviceRegistry_setWatchBuddyPushedSyncTrapUI___block_invoke_4;
    v5[3] = &unk_1E86DACC0;
    v7 = v4;
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

void __56__NRPairedDeviceRegistry_setWatchBuddyPushedSyncTrapUI___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

- (void)setWatchBuddyCompletedSetupSteps:(id)a3
{
  v4 = a3;
  if (![(NRRegistryClient *)self daemonIdle])
  {
    v5 = [(NRRegistryClient *)self connection];

    if (v5)
    {
      v6 = [(NRRegistryClient *)self connection];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __59__NRPairedDeviceRegistry_setWatchBuddyCompletedSetupSteps___block_invoke;
      v14[3] = &unk_1E86DACE8;
      v7 = &v15;
      v8 = v4;
      v15 = v8;
      v9 = [v6 remoteObjectProxyWithErrorHandler:v14];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __59__NRPairedDeviceRegistry_setWatchBuddyCompletedSetupSteps___block_invoke_3;
      v12[3] = &unk_1E86DACE8;
      v13 = v8;
      [v9 xpcWatchBuddyCompletedSetupSteps:v12];

LABEL_6:
      goto LABEL_7;
    }
  }

  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__NRPairedDeviceRegistry_setWatchBuddyCompletedSetupSteps___block_invoke_5;
    block[3] = &unk_1E86DAE70;
    v7 = &v11;
    v11 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    goto LABEL_6;
  }

LABEL_7:
}

void __59__NRPairedDeviceRegistry_setWatchBuddyCompletedSetupSteps___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__NRPairedDeviceRegistry_setWatchBuddyCompletedSetupSteps___block_invoke_2;
    block[3] = &unk_1E86DAE70;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __59__NRPairedDeviceRegistry_setWatchBuddyCompletedSetupSteps___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

void __59__NRPairedDeviceRegistry_setWatchBuddyCompletedSetupSteps___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__NRPairedDeviceRegistry_setWatchBuddyCompletedSetupSteps___block_invoke_4;
    v5[3] = &unk_1E86DACC0;
    v7 = v4;
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

void __59__NRPairedDeviceRegistry_setWatchBuddyCompletedSetupSteps___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

- (unsigned)switchIndex
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (![(NRRegistryClient *)self daemonIdle])
  {
    v3 = [(NRRegistryClient *)self connection];
    v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_407];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__NRPairedDeviceRegistry_switchIndex__block_invoke_2;
    v7[3] = &unk_1E86DC268;
    v7[4] = &v8;
    [v4 xpcSwitchIndex:v7];
  }

  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)getSwitchEventsFromIndex:(unsigned int)a3 inlineCallback:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3 + 1;
  v8 = [(NRPairedDeviceRegistry *)self switchIndex];
  *&v9 = 67109376;
  v17 = v9;
  do
  {
    v18 = v6;
    if (self)
    {
      v10 = nr_framework_log();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

      if (v11)
      {
        v12 = nr_framework_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v17;
          *&buf[4] = v7;
          v20 = 1024;
          v21 = v8;
          _os_log_impl(&dword_1E0ADF000, v12, OS_LOG_TYPE_DEFAULT, "%u %u", buf, 0xEu);
        }
      }

      for (; v7 <= v8; v7 = (v7 + 1))
      {
        *buf = 0;
        v13 = [(NRPairedDeviceRegistry *)self _deviceIDAtSwitchIndex:v7 date:buf, v17];
        v14 = v13;
        if (*buf)
        {
          v15 = v13 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          (*(v6 + 2))(v18, v7);
        }
      }
    }

    v7 = v8 + 1;
    v8 = [(NRPairedDeviceRegistry *)self switchIndex];
  }

  while (v8 >= v7);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)getMigrationPairingCharacteristicReadDataWithQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x1E69E96A0];
    v9 = MEMORY[0x1E69E96A0];
  }

  v10 = nr_framework_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = nr_framework_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0ADF000, v12, OS_LOG_TYPE_DEFAULT, "Received request for characteristic read data", buf, 2u);
    }
  }

  if ([(NRRegistryClient *)self daemonIdle]|| ([(NRRegistryClient *)self connection], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__NRPairedDeviceRegistry_getMigrationPairingCharacteristicReadDataWithQueue_completion___block_invoke_5;
    block[3] = &unk_1E86DAE70;
    v15 = &v22;
    v22 = v7;
    v20 = v7;
    dispatch_async(v8, block);
  }

  else
  {
    v14 = [(NRRegistryClient *)self connection];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __88__NRPairedDeviceRegistry_getMigrationPairingCharacteristicReadDataWithQueue_completion___block_invoke;
    v26[3] = &unk_1E86DAD10;
    v15 = &v27;
    v16 = v8;
    v27 = v16;
    v17 = v7;
    v28 = v17;
    v18 = [v14 remoteObjectProxyWithErrorHandler:v26];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __88__NRPairedDeviceRegistry_getMigrationPairingCharacteristicReadDataWithQueue_completion___block_invoke_3;
    v23[3] = &unk_1E86DB670;
    v24 = v16;
    v25 = v17;
    v19 = v17;
    [v18 xpcGetMigrationPairingCharacteristicReadDataWithCompletion:v23];
  }
}

void __88__NRPairedDeviceRegistry_getMigrationPairingCharacteristicReadDataWithQueue_completion___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__NRPairedDeviceRegistry_getMigrationPairingCharacteristicReadDataWithQueue_completion___block_invoke_2;
  block[3] = &unk_1E86DAE70;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

void __88__NRPairedDeviceRegistry_getMigrationPairingCharacteristicReadDataWithQueue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__NRPairedDeviceRegistry_getMigrationPairingCharacteristicReadDataWithQueue_completion___block_invoke_4;
  v7[3] = &unk_1E86DACC0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)putMigrationChallengeCharacteristicWriteData:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = MEMORY[0x1E69E96A0];
    v12 = MEMORY[0x1E69E96A0];
  }

  if ([(NRRegistryClient *)self daemonIdle]|| ([(NRRegistryClient *)self connection], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__NRPairedDeviceRegistry_putMigrationChallengeCharacteristicWriteData_queue_completion___block_invoke_5;
    block[3] = &unk_1E86DAE70;
    v15 = &v22;
    v22 = v10;
    v20 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v14 = [(NRRegistryClient *)self connection];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __88__NRPairedDeviceRegistry_putMigrationChallengeCharacteristicWriteData_queue_completion___block_invoke;
    v26[3] = &unk_1E86DAD10;
    v15 = &v27;
    v16 = v11;
    v27 = v16;
    v17 = v10;
    v28 = v17;
    v18 = [v14 remoteObjectProxyWithErrorHandler:v26];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __88__NRPairedDeviceRegistry_putMigrationChallengeCharacteristicWriteData_queue_completion___block_invoke_3;
    v23[3] = &unk_1E86DB508;
    v24 = v16;
    v25 = v17;
    v19 = v17;
    [v18 xpcPutMigrationChallengeCharacteristicWriteData:v8 completion:v23];
  }
}

void __88__NRPairedDeviceRegistry_putMigrationChallengeCharacteristicWriteData_queue_completion___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__NRPairedDeviceRegistry_putMigrationChallengeCharacteristicWriteData_queue_completion___block_invoke_2;
  block[3] = &unk_1E86DAE70;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

void __88__NRPairedDeviceRegistry_putMigrationChallengeCharacteristicWriteData_queue_completion___block_invoke_3(uint64_t a1, char a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __88__NRPairedDeviceRegistry_putMigrationChallengeCharacteristicWriteData_queue_completion___block_invoke_4;
  v4[3] = &unk_1E86DB4E0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(v3, v4);
}

- (void)startAdvertisingForMigration
{
  if (![(NRRegistryClient *)self daemonIdle])
  {
    v3 = [(NRRegistryClient *)self connection];

    if (v3)
    {
      v5 = [(NRRegistryClient *)self connection];
      v4 = [v5 remoteObjectProxyWithErrorHandler:&__block_literal_global_411];
      [v4 xpcStartAdvertisingForMigration];
    }
  }
}

- (void)stopAdvertisingForMigration
{
  if (![(NRRegistryClient *)self daemonIdle])
  {
    v3 = [(NRRegistryClient *)self connection];

    if (v3)
    {
      v5 = [(NRRegistryClient *)self connection];
      v4 = [v5 remoteObjectProxyWithErrorHandler:&__block_literal_global_413];
      [v4 xpcStopAdvertisingForMigration];
    }
  }
}

- (void)stageWatchForGraduationWithDeviceID:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = nr_framework_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

  if (v9)
  {
    v10 = nr_framework_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "[NRPairedDeviceRegistry stageWatchForGraduationWithDeviceID:completion:]";
      _os_log_error_impl(&dword_1E0ADF000, v10, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }
  }

  if ([(NRRegistryClient *)self daemonIdle]|| ([(NRRegistryClient *)self connection], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __73__NRPairedDeviceRegistry_stageWatchForGraduationWithDeviceID_completion___block_invoke_3;
    v18[3] = &unk_1E86DAE70;
    v13 = &v19;
    v19 = v7;
    v16 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v18);
  }

  else
  {
    v12 = [(NRRegistryClient *)self connection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __73__NRPairedDeviceRegistry_stageWatchForGraduationWithDeviceID_completion___block_invoke;
    v20[3] = &unk_1E86DACE8;
    v13 = &v21;
    v21 = v7;
    v14 = v7;
    v15 = [v12 remoteObjectProxyWithErrorHandler:v20];
    [v15 xpcStageWatchForGraduationWithDeviceID:v6 completion:v14];
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __73__NRPairedDeviceRegistry_stageWatchForGraduationWithDeviceID_completion___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__NRPairedDeviceRegistry_stageWatchForGraduationWithDeviceID_completion___block_invoke_2;
  block[3] = &unk_1E86DAE70;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __73__NRPairedDeviceRegistry_stageWatchForGraduationWithDeviceID_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.nanoregistry.pairingerror" code:0 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __73__NRPairedDeviceRegistry_stageWatchForGraduationWithDeviceID_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (void)stageWatchForTransferWithDeviceID:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = nr_framework_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

  if (v9)
  {
    v10 = nr_framework_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "[NRPairedDeviceRegistry stageWatchForTransferWithDeviceID:completion:]";
      _os_log_error_impl(&dword_1E0ADF000, v10, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }
  }

  if ([(NRRegistryClient *)self daemonIdle]|| ([(NRRegistryClient *)self connection], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71__NRPairedDeviceRegistry_stageWatchForTransferWithDeviceID_completion___block_invoke_3;
    v18[3] = &unk_1E86DAE70;
    v13 = &v19;
    v19 = v7;
    v16 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v18);
  }

  else
  {
    v12 = [(NRRegistryClient *)self connection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __71__NRPairedDeviceRegistry_stageWatchForTransferWithDeviceID_completion___block_invoke;
    v20[3] = &unk_1E86DACE8;
    v13 = &v21;
    v21 = v7;
    v14 = v7;
    v15 = [v12 remoteObjectProxyWithErrorHandler:v20];
    [v15 xpcStageWatchForTransferWithDeviceID:v6 completion:v14];
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __71__NRPairedDeviceRegistry_stageWatchForTransferWithDeviceID_completion___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__NRPairedDeviceRegistry_stageWatchForTransferWithDeviceID_completion___block_invoke_2;
  block[3] = &unk_1E86DAE70;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __71__NRPairedDeviceRegistry_stageWatchForTransferWithDeviceID_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.nanoregistry.pairingerror" code:0 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __71__NRPairedDeviceRegistry_stageWatchForTransferWithDeviceID_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (void)listWatchStagedForTransferWithCompletion:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nr_framework_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

  if (v6)
  {
    v7 = nr_framework_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[NRPairedDeviceRegistry listWatchStagedForTransferWithCompletion:]";
      _os_log_error_impl(&dword_1E0ADF000, v7, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }
  }

  v8 = [(NRRegistryClient *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__NRPairedDeviceRegistry_listWatchStagedForTransferWithCompletion___block_invoke;
  v12[3] = &unk_1E86DACE8;
  v13 = v4;
  v9 = v4;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v12];
  [v10 xpcListWatchStagedForTransferWithCompletion:v9];

  v11 = *MEMORY[0x1E69E9840];
}

void __67__NRPairedDeviceRegistry_listWatchStagedForTransferWithCompletion___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__NRPairedDeviceRegistry_listWatchStagedForTransferWithCompletion___block_invoke_2;
  block[3] = &unk_1E86DAE70;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __67__NRPairedDeviceRegistry_listWatchStagedForTransferWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.nanoregistry.pairingerror" code:0 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)startWatchSetupPush
{
  v3 = [(NRRegistryClient *)self connection];
  v2 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_419];
  [v2 xpcStartWatchSetupPushWithBlock:&__block_literal_global_421];
}

- (BOOL)isWatchSetupPushActive
{
  v2 = nr_framework_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = nr_framework_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E0ADF000, v4, OS_LOG_TYPE_ERROR, "isWatchSetupPushActive not implemented", v6, 2u);
    }
  }

  return 0;
}

- (void)stopWatchSetupPush
{
  v3 = [(NRRegistryClient *)self connection];
  v2 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_423];
  [v2 xpcStopWatchSetupPushWithBlock:&__block_literal_global_425];
}

- (void)waitForWatchPairingExtendedMetadataForAdvertisedName:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NRRegistryClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __90__NRPairedDeviceRegistry_waitForWatchPairingExtendedMetadataForAdvertisedName_completion___block_invoke;
  v14[3] = &unk_1E86DACE8;
  v9 = v6;
  v15 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__NRPairedDeviceRegistry_waitForWatchPairingExtendedMetadataForAdvertisedName_completion___block_invoke_3;
  v12[3] = &unk_1E86DC290;
  v13 = v9;
  v11 = v9;
  [v10 xpcWaitForWatchPairingExtendedMetadataForAdvertisedName:v7 completion:v12];
}

void __90__NRPairedDeviceRegistry_waitForWatchPairingExtendedMetadataForAdvertisedName_completion___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__NRPairedDeviceRegistry_waitForWatchPairingExtendedMetadataForAdvertisedName_completion___block_invoke_2;
  block[3] = &unk_1E86DAE70;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __90__NRPairedDeviceRegistry_waitForWatchPairingExtendedMetadataForAdvertisedName_completion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__NRPairedDeviceRegistry_waitForWatchPairingExtendedMetadataForAdvertisedName_completion___block_invoke_4;
  block[3] = &unk_1E86DB620;
  v6 = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __70__NRPairedDeviceRegistry_setMigrationConsented_forDeviceID_withBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__NRPairedDeviceRegistry_setMigrationConsented_forDeviceID_withBlock___block_invoke_2;
    block[3] = &unk_1E86DAE70;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __70__NRPairedDeviceRegistry_setMigrationConsented_forDeviceID_withBlock___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

void __70__NRPairedDeviceRegistry_setMigrationConsented_forDeviceID_withBlock___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__NRPairedDeviceRegistry_setMigrationConsented_forDeviceID_withBlock___block_invoke_4;
    block[3] = &unk_1E86DAE70;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __70__NRPairedDeviceRegistry_setMigrationConsented_forDeviceID_withBlock___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

- (void)beginMigrationWithDevice:(id)a3 passcode:(id)a4 withBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(NRRegistryClient *)self daemonIdle])
  {
    v11 = [(NRRegistryClient *)self connection];

    if (v11)
    {
      v12 = [(NRRegistryClient *)self connection];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __70__NRPairedDeviceRegistry_beginMigrationWithDevice_passcode_withBlock___block_invoke;
      v21[3] = &unk_1E86DACE8;
      v13 = &v22;
      v14 = v10;
      v22 = v14;
      v15 = [v12 remoteObjectProxyWithErrorHandler:v21];
      v16 = [v8 pairingID];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __70__NRPairedDeviceRegistry_beginMigrationWithDevice_passcode_withBlock___block_invoke_3;
      v19[3] = &unk_1E86DAE70;
      v20 = v14;
      [v15 xpcBeginMigrationWithDeviceID:v16 passcode:v9 withBlock:v19];

LABEL_6:
      goto LABEL_7;
    }
  }

  if (v10)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__NRPairedDeviceRegistry_beginMigrationWithDevice_passcode_withBlock___block_invoke_5;
    block[3] = &unk_1E86DAE70;
    v13 = &v18;
    v18 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    goto LABEL_6;
  }

LABEL_7:
}

void __70__NRPairedDeviceRegistry_beginMigrationWithDevice_passcode_withBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__NRPairedDeviceRegistry_beginMigrationWithDevice_passcode_withBlock___block_invoke_2;
    block[3] = &unk_1E86DAE70;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __70__NRPairedDeviceRegistry_beginMigrationWithDevice_passcode_withBlock___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

void __70__NRPairedDeviceRegistry_beginMigrationWithDevice_passcode_withBlock___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__NRPairedDeviceRegistry_beginMigrationWithDevice_passcode_withBlock___block_invoke_4;
    block[3] = &unk_1E86DAE70;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __70__NRPairedDeviceRegistry_beginMigrationWithDevice_passcode_withBlock___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

- (void)beginMigrationWithDevice:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(NRRegistryClient *)self daemonIdle])
  {
    v8 = [(NRRegistryClient *)self connection];

    if (v8)
    {
      v9 = [(NRRegistryClient *)self connection];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __66__NRPairedDeviceRegistry_beginMigrationWithDevice_withCompletion___block_invoke;
      v18[3] = &unk_1E86DACE8;
      v10 = &v19;
      v11 = v7;
      v19 = v11;
      v12 = [v9 remoteObjectProxyWithErrorHandler:v18];
      v13 = [v6 pairingID];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __66__NRPairedDeviceRegistry_beginMigrationWithDevice_withCompletion___block_invoke_3;
      v16[3] = &unk_1E86DACE8;
      v17 = v11;
      [v12 xpcBeginMigrationWithDeviceID:v13 completion:v16];

LABEL_6:
      goto LABEL_7;
    }
  }

  if (v7)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__NRPairedDeviceRegistry_beginMigrationWithDevice_withCompletion___block_invoke_5;
    block[3] = &unk_1E86DAE70;
    v10 = &v15;
    v15 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    goto LABEL_6;
  }

LABEL_7:
}

void __66__NRPairedDeviceRegistry_beginMigrationWithDevice_withCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__NRPairedDeviceRegistry_beginMigrationWithDevice_withCompletion___block_invoke_2;
    block[3] = &unk_1E86DAE70;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __66__NRPairedDeviceRegistry_beginMigrationWithDevice_withCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

void __66__NRPairedDeviceRegistry_beginMigrationWithDevice_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __66__NRPairedDeviceRegistry_beginMigrationWithDevice_withCompletion___block_invoke_4;
    v5[3] = &unk_1E86DACC0;
    v7 = v4;
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

void __66__NRPairedDeviceRegistry_beginMigrationWithDevice_withCompletion___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, v2);
}

- (id)lastMigrationRequestPhoneName
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v2 = [(NRRegistryClient *)self connection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_428];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__NRPairedDeviceRegistry_lastMigrationRequestPhoneName__block_invoke_2;
  v6[3] = &unk_1E86DC2B8;
  v6[4] = &v7;
  [v3 xpcGetLastMigrationRequestPhoneNameWithCompletion:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)migrationConsentRequestData
{
  v2 = +[NRMigrator sharedMigrator];
  v3 = [v2 migrationConsentRequestData];

  return v3;
}

- (id)devicesFromMigrationConsentRequestData:(id)a3
{
  v3 = a3;
  v4 = +[NRMigrator sharedMigrator];
  v5 = [v4 devicesFromMigrationConsentRequestData:v3];

  return v5;
}

- (void)keepPhoneUnlockedInternalTestSPI:(id)a3
{
  v4 = a3;
  v5 = [(NRRegistryClient *)self connection];
  v6 = [v5 remoteObjectProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__NRPairedDeviceRegistry_keepPhoneUnlockedInternalTestSPI___block_invoke;
  v8[3] = &unk_1E86DAE70;
  v9 = v4;
  v7 = v4;
  [v6 xpcKeepPhoneUnlockedInternalTestSPI:v8];
}

uint64_t __59__NRPairedDeviceRegistry_keepPhoneUnlockedInternalTestSPI___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (int64_t)lastSyncSwitchIndex
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (![(NRRegistryClient *)self daemonIdle])
  {
    v3 = [(NRRegistryClient *)self connection];
    v4 = v3 == 0;

    if (!v4)
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x3032000000;
      v18 = __Block_byref_object_copy__2;
      v19 = __Block_byref_object_dispose__2;
      v20 = 0;
      v5 = [(NRRegistryClient *)self connection];
      v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_432];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __45__NRPairedDeviceRegistry_lastSyncSwitchIndex__block_invoke_2;
      v14[3] = &unk_1E86DC2E0;
      v14[4] = &v21;
      v14[5] = &v15;
      [v6 xpcGetLastSwitchIndex:v14];

      if (v16[5])
      {
        v7 = nr_framework_log();
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

        if (v8)
        {
          v9 = nr_framework_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v13 = v16[5];
            *buf = 138412290;
            v26 = v13;
            _os_log_error_impl(&dword_1E0ADF000, v9, OS_LOG_TYPE_ERROR, "NanoRegistry client: Failed to get switchIndex value from CFPrefs- error %@", buf, 0xCu);
          }
        }
      }

      _Block_object_dispose(&v15, 8);
    }
  }

  v10 = v22[3];
  _Block_object_dispose(&v21, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (int64_t)migrationCountForPairingID:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  if (![(NRRegistryClient *)self daemonIdle])
  {
    v5 = [(NRRegistryClient *)self connection];
    v6 = !v4 || v5 == 0;
    v7 = !v6;

    if (v7)
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x3032000000;
      v21 = __Block_byref_object_copy__2;
      v22 = __Block_byref_object_dispose__2;
      v23 = 0;
      v8 = [(NRRegistryClient *)self connection];
      v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_435];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __53__NRPairedDeviceRegistry_migrationCountForPairingID___block_invoke_2;
      v17[3] = &unk_1E86DC2E0;
      v17[4] = &v24;
      v17[5] = &v18;
      [v9 xpcGetMigrationCountForPairingID:v4 completion:v17];

      if (v19[5])
      {
        v10 = nr_framework_log();
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

        if (v11)
        {
          v12 = nr_framework_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v16 = v19[5];
            *buf = 138412546;
            v29 = v4;
            v30 = 2112;
            v31 = v16;
            _os_log_error_impl(&dword_1E0ADF000, v12, OS_LOG_TYPE_ERROR, "NanoRegistry client: Failed to get migrationCount value for pairingID %@ from CFPrefs- error %@", buf, 0x16u);
          }
        }
      }

      _Block_object_dispose(&v18, 8);
    }
  }

  v13 = v25[3];
  _Block_object_dispose(&v24, 8);

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)hasCompletedInitialSyncForPairingID:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  if (![(NRRegistryClient *)self daemonIdle])
  {
    v5 = [(NRRegistryClient *)self connection];
    v6 = !v4 || v5 == 0;
    v7 = !v6;

    if (v7)
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x3032000000;
      v21 = __Block_byref_object_copy__2;
      v22 = __Block_byref_object_dispose__2;
      v23 = 0;
      v8 = [(NRRegistryClient *)self connection];
      v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_437];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __62__NRPairedDeviceRegistry_hasCompletedInitialSyncForPairingID___block_invoke_2;
      v17[3] = &unk_1E86DC308;
      v17[4] = &v24;
      v17[5] = &v18;
      [v9 xpcGetInitialSyncCompletedForPairingID:v4 completion:v17];

      if (v19[5])
      {
        v10 = nr_framework_log();
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

        if (v11)
        {
          v12 = nr_framework_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v16 = v19[5];
            *buf = 138412546;
            v29 = v4;
            v30 = 2112;
            v31 = v16;
            _os_log_error_impl(&dword_1E0ADF000, v12, OS_LOG_TYPE_ERROR, "NanoRegistry client: Failed to get initialsynccompleted value for pairingID %@ from CFPrefs- error %@", buf, 0x16u);
          }
        }
      }

      _Block_object_dispose(&v18, 8);
    }
  }

  v13 = *(v25 + 24);
  _Block_object_dispose(&v24, 8);

  v14 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

- (BOOL)isAssertionActive:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  if (![(NRRegistryClient *)self daemonIdle])
  {
    v5 = [(NRRegistryClient *)self connection];
    v6 = !v4 || v5 == 0;
    v7 = !v6;

    if (v7)
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x3032000000;
      v21 = __Block_byref_object_copy__2;
      v22 = __Block_byref_object_dispose__2;
      v23 = 0;
      v8 = [(NRRegistryClient *)self connection];
      v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_440];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __44__NRPairedDeviceRegistry_isAssertionActive___block_invoke_2;
      v17[3] = &unk_1E86DC308;
      v17[4] = &v24;
      v17[5] = &v18;
      [v9 xpcIsAssertionActive:v4 withCompletion:v17];

      if (v19[5])
      {
        v10 = nr_framework_log();
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

        if (v11)
        {
          v12 = nr_framework_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v16 = v19[5];
            *buf = 138412546;
            v29 = v4;
            v30 = 2112;
            v31 = v16;
            _os_log_error_impl(&dword_1E0ADF000, v12, OS_LOG_TYPE_ERROR, "NanoRegistry client: Failed to get isAssertionActive value for assertion %@- error %@", buf, 0x16u);
          }
        }
      }

      _Block_object_dispose(&v18, 8);
    }
  }

  v13 = *(v25 + 24);
  _Block_object_dispose(&v24, 8);

  v14 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

- (void)isPhoneReadyToMigrateDevice:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(NRRegistryClient *)self daemonIdle])
  {
    v8 = [(NRRegistryClient *)self connection];

    if (v8)
    {
      v9 = [(NRRegistryClient *)self connection];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __69__NRPairedDeviceRegistry_isPhoneReadyToMigrateDevice_withCompletion___block_invoke;
      v18[3] = &unk_1E86DACE8;
      v10 = &v19;
      v11 = v7;
      v19 = v11;
      v12 = [v9 remoteObjectProxyWithErrorHandler:v18];
      v13 = [v6 pairingID];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __69__NRPairedDeviceRegistry_isPhoneReadyToMigrateDevice_withCompletion___block_invoke_3;
      v16[3] = &unk_1E86DC330;
      v17 = v11;
      [v12 xpcIsPhoneReadyToMigrateDevice:v13 withCompletion:v16];

LABEL_6:
      goto LABEL_7;
    }
  }

  if (v7)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__NRPairedDeviceRegistry_isPhoneReadyToMigrateDevice_withCompletion___block_invoke_5;
    block[3] = &unk_1E86DAE70;
    v10 = &v15;
    v15 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    goto LABEL_6;
  }

LABEL_7:
}

void __69__NRPairedDeviceRegistry_isPhoneReadyToMigrateDevice_withCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__NRPairedDeviceRegistry_isPhoneReadyToMigrateDevice_withCompletion___block_invoke_2;
    block[3] = &unk_1E86DAE70;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __69__NRPairedDeviceRegistry_isPhoneReadyToMigrateDevice_withCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, 3, v2);
}

void __69__NRPairedDeviceRegistry_isPhoneReadyToMigrateDevice_withCompletion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__NRPairedDeviceRegistry_isPhoneReadyToMigrateDevice_withCompletion___block_invoke_4;
    block[3] = &unk_1E86DB788;
    v9 = v6;
    v10 = a2;
    v8 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __69__NRPairedDeviceRegistry_isPhoneReadyToMigrateDevice_withCompletion___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0);
  (*(v1 + 16))(v1, 0, v2);
}

- (void)_submitAlbertPairingReport
{
  if (![(NRRegistryClient *)self daemonIdle])
  {
    v4 = [(NRRegistryClient *)self connection];
    v3 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_14];
    [v3 xpcSubmitAlbertPairingReport:&__block_literal_global_10];
  }
}

- (id)_getLocalDeviceCollection
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__10;
  v9 = __Block_byref_object_dispose__10;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__NRPairedDeviceRegistry_Internal___getLocalDeviceCollection__block_invoke;
  v4[3] = &unk_1E86DC908;
  v4[4] = &v5;
  [(NRRegistryClient *)self syncGrabRegistryWithReadBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __61__NRPairedDeviceRegistry_Internal___getLocalDeviceCollection__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copyWithZone:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (id)_getChangeHistory
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__10;
  v13 = __Block_byref_object_dispose__10;
  v14 = 0;
  v2 = [(NRRegistryClient *)self connection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__NRPairedDeviceRegistry_Internal___getChangeHistory__block_invoke;
  v8[3] = &unk_1E86DC930;
  v8[4] = &v9;
  [v3 xpcGetChangeHistoryWithBlock:v8];

  v4 = v10[5];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = objc_alloc_init(NRDeviceCollectionHistory);
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)_getSecureProperties:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__10;
  v15 = __Block_byref_object_dispose__10;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__NRPairedDeviceRegistry_Internal___getSecureProperties___block_invoke;
  v8[3] = &unk_1E86DC090;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [(NRRegistryClient *)self syncGrabRegistryWithReadBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __57__NRPairedDeviceRegistry_Internal___getSecureProperties___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = *(a1 + 32);
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = [v6 objectForKeyedSubscript:{v15, v18}];
        [*(*(*(a1 + 40) + 8) + 40) setObject:v16 forKeyedSubscript:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __64__NRPairedDeviceRegistry_Internal___deviceIDAtSwitchIndex_date___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v7 = *(a1 + 40);
  if (v7)
  {
    objc_storeStrong(v7, a3);
  }
}

- (void)_invalidateActiveDeviceAssertionWithIdentifier:(id)a3
{
  v6 = a3;
  if (![(NRRegistryClient *)self daemonIdle])
  {
    v4 = [(NRRegistryClient *)self connection];
    v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_18];
    [v5 xpcInvalidateSwitchAssertionWithIdentifier:v6 block:&__block_literal_global_20];
  }
}

- (void)_getActiveDeviceAssertionsWithInlineBlock:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__10;
  v12 = __Block_byref_object_dispose__10;
  v13 = 0;
  if (![(NRRegistryClient *)self daemonIdle])
  {
    v5 = [(NRRegistryClient *)self connection];
    v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_22];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __78__NRPairedDeviceRegistry_Internal___getActiveDeviceAssertionsWithInlineBlock___block_invoke_2;
    v7[3] = &unk_1E86DC980;
    v7[4] = &v8;
    [v6 xpcActiveDeviceAssertions:v7];
  }

  v4[2](v4, v9[5]);
  _Block_object_dispose(&v8, 8);
}

- (void)_pingActiveGizmoWithPriority:(int64_t)a3 withMessageSize:(int64_t)a4 withBlock:(id)a5
{
  v8 = a5;
  if ([(NRRegistryClient *)self daemonIdle]|| ([(NRRegistryClient *)self connection], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__NRPairedDeviceRegistry_Internal___pingActiveGizmoWithPriority_withMessageSize_withBlock___block_invoke_5;
    block[3] = &unk_1E86DAE70;
    v11 = &v17;
    v17 = v8;
    v15 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v10 = [(NRRegistryClient *)self connection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __91__NRPairedDeviceRegistry_Internal___pingActiveGizmoWithPriority_withMessageSize_withBlock___block_invoke;
    v20[3] = &unk_1E86DACE8;
    v11 = &v21;
    v12 = v8;
    v21 = v12;
    v13 = [v10 remoteObjectProxyWithErrorHandler:v20];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __91__NRPairedDeviceRegistry_Internal___pingActiveGizmoWithPriority_withMessageSize_withBlock___block_invoke_3;
    v18[3] = &unk_1E86DC9D0;
    v19 = v12;
    v14 = v12;
    [v13 xpcPingActiveGizmoWithPriority:a3 withMessageSize:a4 withBlock:v18];
  }
}

void __91__NRPairedDeviceRegistry_Internal___pingActiveGizmoWithPriority_withMessageSize_withBlock___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__NRPairedDeviceRegistry_Internal___pingActiveGizmoWithPriority_withMessageSize_withBlock___block_invoke_2;
  block[3] = &unk_1E86DAE70;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __91__NRPairedDeviceRegistry_Internal___pingActiveGizmoWithPriority_withMessageSize_withBlock___block_invoke_3(uint64_t a1, double a2, double a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__NRPairedDeviceRegistry_Internal___pingActiveGizmoWithPriority_withMessageSize_withBlock___block_invoke_4;
  block[3] = &unk_1E86DC9A8;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)_getClientInfo
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__10;
  v11 = __Block_byref_object_dispose__10;
  v12 = MEMORY[0x1E695E0F0];
  v2 = [(NRRegistryClient *)self connection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__NRPairedDeviceRegistry_Internal___getClientInfo__block_invoke;
  v6[3] = &unk_1E86DC9F8;
  v6[4] = &v7;
  [v3 xpcClientInfo:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)applyDiff:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NRRegistryClient *)self connection];

  if (v5)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__10;
    v20 = __Block_byref_object_dispose__10;
    v21 = 0;
    v6 = [(NRRegistryClient *)self connection];
    v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_27];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __46__NRPairedDeviceRegistry_Internal__applyDiff___block_invoke_2;
    v15[3] = &unk_1E86DCA20;
    v15[4] = &v16;
    [v7 xpcApplyDiff:v4 withSecureProperties:0 block:v15];

    if (v17[5])
    {
      v8 = nr_framework_log();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

      if (v9)
      {
        v10 = nr_framework_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v14 = v17[5];
          *buf = 138412290;
          v23 = v14;
          _os_log_error_impl(&dword_1E0ADF000, v10, OS_LOG_TYPE_ERROR, "NanoRegistry client: Failed to apply diff to registry because %@", buf, 0xCu);
        }
      }
    }

    v11 = v17[5];
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)isKeychainEnabled
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [objc_opt_class() pairedDevicesSelectorBlock];
  v4 = [(NRPairedDeviceRegistry *)self getDevicesMatching:v3];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * v8) valueForProperty:@"_keychainOff"];
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = [v10 BOOLValue];
  v12 = *MEMORY[0x1E69E9840];
  return v11 ^ 1;
}

- (void)checkIfFlaggedForRecoveryWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(NRRegistryClient *)self connection];
  v5 = [v6 remoteObjectProxy];
  [v5 xpcCheckIfFlaggedForRecoveryWithCompletion:v4];
}

- (void)clearRecoveryFlagWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(NRRegistryClient *)self connection];
  v5 = [v6 remoteObjectProxy];
  [v5 xpcClearRecoveryFlagWithCompletion:v4];
}

@end