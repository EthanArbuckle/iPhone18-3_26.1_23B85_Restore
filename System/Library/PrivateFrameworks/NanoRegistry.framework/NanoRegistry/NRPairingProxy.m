@interface NRPairingProxy
+ (id)clientExportedInterface;
+ (id)clientRemoteObjectInterface;
+ (id)serverExportedInterface;
+ (id)serverRemoteObjectInterface;
- (id)pairingQueue;
- (id)pairingServicesDelegate;
- (void)xpcAbortPairingReason:(id)a3 withBlock:(id)a4;
- (void)xpcActiveDeviceAssertions:(id)a3;
- (void)xpcBeginDiscoveryWithBlock:(id)a3;
- (void)xpcBeginMigrationWithCompletion:(id)a3;
- (void)xpcBeginMigrationWithDeviceID:(id)a3 completion:(id)a4;
- (void)xpcBeginMigrationWithDeviceID:(id)a3 passcode:(id)a4 withBlock:(id)a5;
- (void)xpcCheckIfFlaggedForRecoveryWithCompletion:(id)a3;
- (void)xpcClearRecoveryFlagWithCompletion:(id)a3;
- (void)xpcClearWatchNeedsGraduation:(id)a3;
- (void)xpcCompanionOOBDiscoverAndPairWithName:(id)a3 withOutOfBandPairingKey:(id)a4 withOptions:(id)a5 operationHasBegun:(id)a6;
- (void)xpcCompanionPasscodePairWithDeviceID:(id)a3 withOptions:(id)a4 operationHasBegun:(id)a5;
- (void)xpcEndDiscoveryWithBlock:(id)a3;
- (void)xpcEnterCompatibilityState:(unsigned __int16)a3 withDeviceID:(id)a4;
- (void)xpcFakePairedSyncIsCompleteWithCompletion:(id)a3;
- (void)xpcGetInitialSyncCompletedForPairingID:(id)a3 completion:(id)a4;
- (void)xpcGetLastMigrationRequestPhoneNameWithCompletion:(id)a3;
- (void)xpcGetLastSwitchIndex:(id)a3;
- (void)xpcGetMigrationCountForPairingID:(id)a3 completion:(id)a4;
- (void)xpcGetMigrationPairingCharacteristicReadDataWithCompletion:(id)a3;
- (void)xpcGizmoOOBAdvertiseAndPairWithName:(id)a3 operationHasBegun:(id)a4;
- (void)xpcGizmoPasscodeAdvertiseAndPairWithName:(id)a3 operationHasBegun:(id)a4;
- (void)xpcInvalidateSwitchAssertionWithIdentifier:(id)a3 block:(id)a4;
- (void)xpcIsAssertionActive:(id)a3 withCompletion:(id)a4;
- (void)xpcIsPhoneReadyToMigrateDevice:(id)a3 withCompletion:(id)a4;
- (void)xpcKeepPhoneUnlockedInternalTestSPI:(id)a3;
- (void)xpcListWatchStagedForTransferWithCompletion:(id)a3;
- (void)xpcNotifyActivationCompleted:(id)a3 withSuccess:(BOOL)a4;
- (void)xpcNotifyPasscode:(id)a3 withDeviceID:(id)a4;
- (void)xpcPairWithSimulator:(id)a3 withCompletion:(id)a4;
- (void)xpcPairingClientDidEnterPhase:(id)a3 withBlock:(id)a4;
- (void)xpcPairingClientSetAltAccountName:(id)a3 altDSID:(id)a4 forPairingID:(id)a5 completion:(id)a6;
- (void)xpcPairingClientSetPairingParentName:(id)a3 pairingParentAltDSID:(id)a4 forPairingID:(id)a5 completion:(id)a6;
- (void)xpcPairingShouldContinue;
- (void)xpcPingActiveGizmoWithPriority:(int)a3 withMessageSize:(int64_t)a4 withBlock:(id)a5;
- (void)xpcPutMigrationChallengeCharacteristicWriteData:(id)a3 completion:(id)a4;
- (void)xpcResumePairingClientCrashMonitoring:(id)a3;
- (void)xpcRetriggerUnpairInfoDialogWithBlock:(id)a3;
- (void)xpcScanForMigratableWatchesWithBlock:(id)a3;
- (void)xpcSetWatchNeedsGraduation:(id)a3;
- (void)xpcStageWatchForGraduationWithDeviceID:(id)a3 completion:(id)a4;
- (void)xpcStageWatchForTransferWithDeviceID:(id)a3 completion:(id)a4;
- (void)xpcStartAdvertisingForMigration;
- (void)xpcStartWatchSetupPushWithBlock:(id)a3;
- (void)xpcStopAdvertisingForMigration;
- (void)xpcStopWatchSetupPushWithBlock:(id)a3;
- (void)xpcSubmitAlbertPairingReport:(id)a3;
- (void)xpcSubmitRTCPairingMetricForMetricID:(id)a3 withSuccess:(id)a4;
- (void)xpcSubmitServerRequestReportWithRequestType:(id)a3 duration:(double)a4 errorCode:(unsigned int)a5 block:(id)a6;
- (void)xpcSuspendPairingClientCrashMonitoring:(id)a3;
- (void)xpcSwitchActiveDeviceWithDeviceID:(id)a3 isMagicSwitch:(BOOL)a4 operationHasCompleted:(id)a5;
- (void)xpcSwitchActiveDeviceWithDeviceID:(id)a3 withAssertionHandler:(id)a4;
- (void)xpcSwitchToSimulator:(id)a3 withCompletion:(id)a4;
- (void)xpcTriggerTailspinFrom:(unint64_t)a3 forApp:(id)a4;
- (void)xpcTriggerVersion4Workaround;
- (void)xpcUnpairWithDeviceID:(id)a3 withOptions:(id)a4 operationHasBegun:(id)a5;
- (void)xpcUnpairWithSimulator:(id)a3 withCompletion:(id)a4;
- (void)xpcUpdateWatchBuddyStage:(unsigned int)a3 forPairingID:(id)a4;
- (void)xpcWaitForWatchPairingExtendedMetadataForAdvertisedName:(id)a3 completion:(id)a4;
- (void)xpcWatchBuddyCompletedSetupSteps:(id)a3;
- (void)xpcWatchNeedsGraduation:(id)a3;
@end

@implementation NRPairingProxy

+ (id)clientRemoteObjectInterface
{
  if (qword_1ED6F0AC8 != -1)
  {
    dispatch_once(&qword_1ED6F0AC8, &__block_literal_global_182);
  }

  v3 = qword_1ED6F0AC0;

  return v3;
}

void __45__NRPairingProxy_clientRemoteObjectInterface__block_invoke()
{
  v11[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5B88610];
  v1 = qword_1ED6F0AC0;
  qword_1ED6F0AC0 = v0;

  v2 = qword_1ED6F0AC0;
  v3 = +[NRMutableDeviceProperty enclosedClassTypes];
  [v2 setClasses:v3 forSelector:sel_xpcRetrieveSecureProperties_block_ argumentIndex:0 ofReply:1];

  v4 = qword_1ED6F0AC0;
  v5 = MEMORY[0x1E695DFD8];
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v5 setWithArray:v6];
  [v4 setClasses:v7 forSelector:sel_xpcClientInfo_ argumentIndex:0 ofReply:1];

  v8 = qword_1ED6F0AC0;
  v9 = +[NRSecureDevicePropertyStore enclosedClassTypes];
  [v8 setClasses:v9 forSelector:sel_xpcGetDiffSinceTokenValue_getSecureProperties_withBlock_ argumentIndex:1 ofReply:1];

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)clientExportedInterface
{
  if (qword_1ED6F0AB8 != -1)
  {
    dispatch_once(&qword_1ED6F0AB8, &__block_literal_global_180);
  }

  v3 = qword_1ED6F0AB0;

  return v3;
}

uint64_t __41__NRPairingProxy_clientExportedInterface__block_invoke()
{
  qword_1ED6F0AB0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5B8A428];

  return MEMORY[0x1EEE66BB8]();
}

- (id)pairingQueue
{
  if (a1)
  {
    v1 = [a1 target];
    v2 = [v1 pairingQueue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)pairingServicesDelegate
{
  if (a1)
  {
    a1 = [a1 target];
    v1 = vars8;
  }

  return a1;
}

+ (id)serverExportedInterface
{
  if (qword_1ED6F0A98 != -1)
  {
    dispatch_once(&qword_1ED6F0A98, &__block_literal_global_1);
  }

  v3 = _MergedGlobals_7;

  return v3;
}

void __41__NRPairingProxy_serverExportedInterface__block_invoke()
{
  v21[3] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5B88610];
  v1 = _MergedGlobals_7;
  _MergedGlobals_7 = v0;

  v2 = _MergedGlobals_7;
  v3 = +[NRSecureDevicePropertyStore enclosedClassTypes];
  [v2 setClasses:v3 forSelector:sel_xpcRetrieveSecureProperties_block_ argumentIndex:0 ofReply:0];

  v4 = _MergedGlobals_7;
  v5 = MEMORY[0x1E695DFD8];
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v21[2] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
  v7 = [v5 setWithArray:v6];
  [v4 setClasses:v7 forSelector:sel_xpcUnpairWithDeviceID_withOptions_operationHasBegun_ argumentIndex:1 ofReply:0];

  v8 = _MergedGlobals_7;
  v9 = MEMORY[0x1E695DFD8];
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v20[2] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v11 = [v9 setWithArray:v10];
  [v8 setClasses:v11 forSelector:sel_xpcCompanionOOBDiscoverAndPairWithName_withOutOfBandPairingKey_withOptions_operationHasBegun_ argumentIndex:2 ofReply:0];

  v12 = _MergedGlobals_7;
  v13 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:3];
  v15 = [v13 setWithArray:{v14, v17, v18}];
  [v12 setClasses:v15 forSelector:sel_xpcCompanionPasscodePairWithDeviceID_withOptions_operationHasBegun_ argumentIndex:1 ofReply:0];

  v16 = *MEMORY[0x1E69E9840];
}

+ (id)serverRemoteObjectInterface
{
  if (qword_1ED6F0AA8 != -1)
  {
    dispatch_once(&qword_1ED6F0AA8, &__block_literal_global_172);
  }

  v3 = qword_1ED6F0AA0;

  return v3;
}

uint64_t __45__NRPairingProxy_serverRemoteObjectInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5B8A428];
  v1 = qword_1ED6F0AA0;
  qword_1ED6F0AA0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)xpcCompanionOOBDiscoverAndPairWithName:(id)a3 withOutOfBandPairingKey:(id)a4 withOptions:(id)a5 operationHasBegun:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v14 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __111__NRPairingProxy_xpcCompanionOOBDiscoverAndPairWithName_withOutOfBandPairingKey_withOptions_operationHasBegun___block_invoke;
    block[3] = &unk_1E86DB468;
    block[4] = self;
    v22 = v10;
    v23 = v11;
    v24 = v12;
    v25 = v13;
    v15 = v13;
    dispatch_async(v14, block);

    v16 = v22;
  }

  else
  {
    v17 = [(NRXPCProxy *)self connection];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __111__NRPairingProxy_xpcCompanionOOBDiscoverAndPairWithName_withOutOfBandPairingKey_withOptions_operationHasBegun___block_invoke_4;
    v19[3] = &unk_1E86DAE70;
    v20 = v13;
    v18 = v13;
    [v17 runCompletionBlock:v19];

    v16 = v20;
  }
}

void __111__NRPairingProxy_xpcCompanionOOBDiscoverAndPairWithName_withOutOfBandPairingKey_withOptions_operationHasBegun___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v2 proxyWillBeginPairing:*(a1 + 32)];

  v3 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __111__NRPairingProxy_xpcCompanionOOBDiscoverAndPairWithName_withOutOfBandPairingKey_withOptions_operationHasBegun___block_invoke_2;
  v7[3] = &unk_1E86DAD10;
  v7[4] = *(a1 + 32);
  v6 = *(a1 + 56);
  v8 = *(a1 + 64);
  [v3 xpcCompanionOOBDiscoverAndPairWithName:v4 withOutOfBandPairingKey:v5 withOptions:v6 operationHasBegun:v7];
}

void __111__NRPairingProxy_xpcCompanionOOBDiscoverAndPairWithName_withOutOfBandPairingKey_withOptions_operationHasBegun___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __111__NRPairingProxy_xpcCompanionOOBDiscoverAndPairWithName_withOutOfBandPairingKey_withOptions_operationHasBegun___block_invoke_3;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

void __111__NRPairingProxy_xpcCompanionOOBDiscoverAndPairWithName_withOutOfBandPairingKey_withOptions_operationHasBegun___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0x14uLL);
  (*(v1 + 16))(v1, v2);
}

- (void)xpcCompanionPasscodePairWithDeviceID:(id)a3 withOptions:(id)a4 operationHasBegun:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v11 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__NRPairingProxy_xpcCompanionPasscodePairWithDeviceID_withOptions_operationHasBegun___block_invoke;
    block[3] = &unk_1E86DB490;
    block[4] = self;
    v19 = v8;
    v20 = v9;
    v21 = v10;
    v12 = v10;
    dispatch_async(v11, block);

    v13 = v19;
  }

  else
  {
    v14 = [(NRXPCProxy *)self connection];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __85__NRPairingProxy_xpcCompanionPasscodePairWithDeviceID_withOptions_operationHasBegun___block_invoke_4;
    v16[3] = &unk_1E86DAE70;
    v17 = v10;
    v15 = v10;
    [v14 runCompletionBlock:v16];

    v13 = v17;
  }
}

void __85__NRPairingProxy_xpcCompanionPasscodePairWithDeviceID_withOptions_operationHasBegun___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v2 proxyWillBeginPairing:*(a1 + 32)];

  v3 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__NRPairingProxy_xpcCompanionPasscodePairWithDeviceID_withOptions_operationHasBegun___block_invoke_2;
  v6[3] = &unk_1E86DAD10;
  v6[4] = *(a1 + 32);
  v7 = *(a1 + 56);
  [v3 xpcCompanionPasscodePairWithDeviceID:v4 withOptions:v5 operationHasBegun:v6];
}

void __85__NRPairingProxy_xpcCompanionPasscodePairWithDeviceID_withOptions_operationHasBegun___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__NRPairingProxy_xpcCompanionPasscodePairWithDeviceID_withOptions_operationHasBegun___block_invoke_3;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

void __85__NRPairingProxy_xpcCompanionPasscodePairWithDeviceID_withOptions_operationHasBegun___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0x14uLL);
  (*(v1 + 16))(v1, v2);
}

- (void)xpcGizmoOOBAdvertiseAndPairWithName:(id)a3 operationHasBegun:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v8 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__NRPairingProxy_xpcGizmoOOBAdvertiseAndPairWithName_operationHasBegun___block_invoke;
    block[3] = &unk_1E86DB4B8;
    block[4] = self;
    v16 = v6;
    v17 = v7;
    v9 = v7;
    dispatch_async(v8, block);

    v10 = v16;
  }

  else
  {
    v11 = [(NRXPCProxy *)self connection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__NRPairingProxy_xpcGizmoOOBAdvertiseAndPairWithName_operationHasBegun___block_invoke_4;
    v13[3] = &unk_1E86DAE70;
    v14 = v7;
    v12 = v7;
    [v11 runCompletionBlock:v13];

    v10 = v14;
  }
}

void __72__NRPairingProxy_xpcGizmoOOBAdvertiseAndPairWithName_operationHasBegun___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v2 proxyWillBeginPairing:*(a1 + 32)];

  v3 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__NRPairingProxy_xpcGizmoOOBAdvertiseAndPairWithName_operationHasBegun___block_invoke_2;
  v5[3] = &unk_1E86DAD10;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  [v3 xpcGizmoOOBAdvertiseAndPairWithName:v4 operationHasBegun:v5];
}

void __72__NRPairingProxy_xpcGizmoOOBAdvertiseAndPairWithName_operationHasBegun___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__NRPairingProxy_xpcGizmoOOBAdvertiseAndPairWithName_operationHasBegun___block_invoke_3;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

void __72__NRPairingProxy_xpcGizmoOOBAdvertiseAndPairWithName_operationHasBegun___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0x14uLL);
  (*(v1 + 16))(v1, v2);
}

- (void)xpcGizmoPasscodeAdvertiseAndPairWithName:(id)a3 operationHasBegun:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v8 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__NRPairingProxy_xpcGizmoPasscodeAdvertiseAndPairWithName_operationHasBegun___block_invoke;
    block[3] = &unk_1E86DB4B8;
    block[4] = self;
    v16 = v6;
    v17 = v7;
    v9 = v7;
    dispatch_async(v8, block);

    v10 = v16;
  }

  else
  {
    v11 = [(NRXPCProxy *)self connection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77__NRPairingProxy_xpcGizmoPasscodeAdvertiseAndPairWithName_operationHasBegun___block_invoke_4;
    v13[3] = &unk_1E86DAE70;
    v14 = v7;
    v12 = v7;
    [v11 runCompletionBlock:v13];

    v10 = v14;
  }
}

void __77__NRPairingProxy_xpcGizmoPasscodeAdvertiseAndPairWithName_operationHasBegun___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v2 proxyWillBeginPairing:*(a1 + 32)];

  v3 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__NRPairingProxy_xpcGizmoPasscodeAdvertiseAndPairWithName_operationHasBegun___block_invoke_2;
  v5[3] = &unk_1E86DAD10;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  [v3 xpcGizmoPasscodeAdvertiseAndPairWithName:v4 operationHasBegun:v5];
}

void __77__NRPairingProxy_xpcGizmoPasscodeAdvertiseAndPairWithName_operationHasBegun___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__NRPairingProxy_xpcGizmoPasscodeAdvertiseAndPairWithName_operationHasBegun___block_invoke_3;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

void __77__NRPairingProxy_xpcGizmoPasscodeAdvertiseAndPairWithName_operationHasBegun___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0x14uLL);
  (*(v1 + 16))(v1, v2);
}

- (void)xpcPairingClientSetAltAccountName:(id)a3 altDSID:(id)a4 forPairingID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v14 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__NRPairingProxy_xpcPairingClientSetAltAccountName_altDSID_forPairingID_completion___block_invoke;
    block[3] = &unk_1E86DB468;
    block[4] = self;
    v22 = v10;
    v23 = v11;
    v24 = v12;
    v25 = v13;
    v15 = v13;
    dispatch_async(v14, block);

    v16 = v22;
  }

  else
  {
    v17 = [(NRXPCProxy *)self connection];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __84__NRPairingProxy_xpcPairingClientSetAltAccountName_altDSID_forPairingID_completion___block_invoke_4;
    v19[3] = &unk_1E86DAE70;
    v20 = v13;
    v18 = v13;
    [v17 runCompletionBlock:v19];

    v16 = v20;
  }
}

void __84__NRPairingProxy_xpcPairingClientSetAltAccountName_altDSID_forPairingID_completion___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __84__NRPairingProxy_xpcPairingClientSetAltAccountName_altDSID_forPairingID_completion___block_invoke_2;
  v6[3] = &unk_1E86DAD10;
  v6[4] = *(a1 + 32);
  v5 = *(a1 + 56);
  v7 = *(a1 + 64);
  [v2 xpcPairingClientSetAltAccountName:v3 altDSID:v4 forPairingID:v5 completion:v6];
}

void __84__NRPairingProxy_xpcPairingClientSetAltAccountName_altDSID_forPairingID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__NRPairingProxy_xpcPairingClientSetAltAccountName_altDSID_forPairingID_completion___block_invoke_3;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

void __84__NRPairingProxy_xpcPairingClientSetAltAccountName_altDSID_forPairingID_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0x14uLL);
  (*(v1 + 16))(v1, v2);
}

- (void)xpcPairingClientSetPairingParentName:(id)a3 pairingParentAltDSID:(id)a4 forPairingID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v14 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __100__NRPairingProxy_xpcPairingClientSetPairingParentName_pairingParentAltDSID_forPairingID_completion___block_invoke;
    block[3] = &unk_1E86DB468;
    block[4] = self;
    v22 = v10;
    v23 = v11;
    v24 = v12;
    v25 = v13;
    v15 = v13;
    dispatch_async(v14, block);

    v16 = v22;
  }

  else
  {
    v17 = [(NRXPCProxy *)self connection];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __100__NRPairingProxy_xpcPairingClientSetPairingParentName_pairingParentAltDSID_forPairingID_completion___block_invoke_4;
    v19[3] = &unk_1E86DAE70;
    v20 = v13;
    v18 = v13;
    [v17 runCompletionBlock:v19];

    v16 = v20;
  }
}

void __100__NRPairingProxy_xpcPairingClientSetPairingParentName_pairingParentAltDSID_forPairingID_completion___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __100__NRPairingProxy_xpcPairingClientSetPairingParentName_pairingParentAltDSID_forPairingID_completion___block_invoke_2;
  v6[3] = &unk_1E86DAD10;
  v6[4] = *(a1 + 32);
  v5 = *(a1 + 56);
  v7 = *(a1 + 64);
  [v2 xpcPairingClientSetPairingParentName:v3 pairingParentAltDSID:v4 forPairingID:v5 completion:v6];
}

void __100__NRPairingProxy_xpcPairingClientSetPairingParentName_pairingParentAltDSID_forPairingID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __100__NRPairingProxy_xpcPairingClientSetPairingParentName_pairingParentAltDSID_forPairingID_completion___block_invoke_3;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

void __100__NRPairingProxy_xpcPairingClientSetPairingParentName_pairingParentAltDSID_forPairingID_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0x14uLL);
  (*(v1 + 16))(v1, v2);
}

- (void)xpcWatchNeedsGraduation:(id)a3
{
  v4 = a3;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v5 = [(NRPairingProxy *)self pairingQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__NRPairingProxy_xpcWatchNeedsGraduation___block_invoke;
    v6[3] = &unk_1E86DB530;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void __42__NRPairingProxy_xpcWatchNeedsGraduation___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__NRPairingProxy_xpcWatchNeedsGraduation___block_invoke_2;
  v4[3] = &unk_1E86DB508;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 xpcWatchNeedsGraduation:v4];
}

void __42__NRPairingProxy_xpcWatchNeedsGraduation___block_invoke_2(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) connection];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__NRPairingProxy_xpcWatchNeedsGraduation___block_invoke_3;
  v5[3] = &unk_1E86DB4E0;
  v6 = *(a1 + 40);
  v7 = a2;
  [v4 runCompletionBlock:v5];
}

- (void)xpcClearWatchNeedsGraduation:(id)a3
{
  v4 = a3;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v5 = [(NRPairingProxy *)self pairingQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__NRPairingProxy_xpcClearWatchNeedsGraduation___block_invoke;
    v6[3] = &unk_1E86DB530;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void __47__NRPairingProxy_xpcClearWatchNeedsGraduation___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__NRPairingProxy_xpcClearWatchNeedsGraduation___block_invoke_2;
  v4[3] = &unk_1E86DAD10;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 xpcClearWatchNeedsGraduation:v4];
}

void __47__NRPairingProxy_xpcClearWatchNeedsGraduation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__NRPairingProxy_xpcClearWatchNeedsGraduation___block_invoke_3;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

- (void)xpcSetWatchNeedsGraduation:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0ADF000, v7, OS_LOG_TYPE_ERROR, "xpcSetWatchNeedsGraduation - framework", buf, 2u);
    }
  }

  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v8 = [(NRPairingProxy *)self pairingQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__NRPairingProxy_xpcSetWatchNeedsGraduation___block_invoke;
    v9[3] = &unk_1E86DB530;
    v9[4] = self;
    v10 = v4;
    dispatch_async(v8, v9);
  }
}

void __45__NRPairingProxy_xpcSetWatchNeedsGraduation___block_invoke(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0ADF000, v4, OS_LOG_TYPE_ERROR, "dispatch xpcSetWatchNeedsGraduation - framework", buf, 2u);
    }
  }

  v5 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__NRPairingProxy_xpcSetWatchNeedsGraduation___block_invoke_192;
  v7[3] = &unk_1E86DAD10;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v5 xpcSetWatchNeedsGraduation:v7];
}

void __45__NRPairingProxy_xpcSetWatchNeedsGraduation___block_invoke_192(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__NRPairingProxy_xpcSetWatchNeedsGraduation___block_invoke_2;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

- (void)xpcWatchBuddyCompletedSetupSteps:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0ADF000, v7, OS_LOG_TYPE_ERROR, "xpcWatchBuddyCompletedSetupSteps - framework", buf, 2u);
    }
  }

  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v8 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__NRPairingProxy_xpcWatchBuddyCompletedSetupSteps___block_invoke;
    block[3] = &unk_1E86DB530;
    block[4] = self;
    v16 = v4;
    v9 = v4;
    dispatch_async(v8, block);

    v10 = v16;
  }

  else
  {
    v11 = [(NRXPCProxy *)self connection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__NRPairingProxy_xpcWatchBuddyCompletedSetupSteps___block_invoke_3;
    v13[3] = &unk_1E86DAE70;
    v14 = v4;
    v12 = v4;
    [v11 runCompletionBlock:v13];

    v10 = v14;
  }
}

void __51__NRPairingProxy_xpcWatchBuddyCompletedSetupSteps___block_invoke(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0ADF000, v4, OS_LOG_TYPE_ERROR, "dispatch xpcWatchBuddyCompletedSetupSteps - framework", buf, 2u);
    }
  }

  v5 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__NRPairingProxy_xpcWatchBuddyCompletedSetupSteps___block_invoke_193;
  v7[3] = &unk_1E86DAD10;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v5 xpcWatchBuddyCompletedSetupSteps:v7];
}

void __51__NRPairingProxy_xpcWatchBuddyCompletedSetupSteps___block_invoke_193(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__NRPairingProxy_xpcWatchBuddyCompletedSetupSteps___block_invoke_2;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

uint64_t __51__NRPairingProxy_xpcWatchBuddyCompletedSetupSteps___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __51__NRPairingProxy_xpcWatchBuddyCompletedSetupSteps___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = nrGetPairingError(0x14uLL);
    (*(v1 + 16))(v1, v2);
  }
}

- (void)xpcBeginMigrationWithDeviceID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v8 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__NRPairingProxy_xpcBeginMigrationWithDeviceID_completion___block_invoke;
    block[3] = &unk_1E86DB4B8;
    block[4] = self;
    v16 = v6;
    v17 = v7;
    v9 = v7;
    dispatch_async(v8, block);

    v10 = v16;
  }

  else
  {
    v11 = [(NRXPCProxy *)self connection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__NRPairingProxy_xpcBeginMigrationWithDeviceID_completion___block_invoke_4;
    v13[3] = &unk_1E86DAE70;
    v14 = v7;
    v12 = v7;
    [v11 runCompletionBlock:v13];

    v10 = v14;
  }
}

void __59__NRPairingProxy_xpcBeginMigrationWithDeviceID_completion___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__NRPairingProxy_xpcBeginMigrationWithDeviceID_completion___block_invoke_2;
  v4[3] = &unk_1E86DAD10;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 xpcBeginMigrationWithDeviceID:v3 completion:v4];
}

void __59__NRPairingProxy_xpcBeginMigrationWithDeviceID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__NRPairingProxy_xpcBeginMigrationWithDeviceID_completion___block_invoke_3;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

void __59__NRPairingProxy_xpcBeginMigrationWithDeviceID_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0x14uLL);
  (*(v1 + 16))(v1, v2);
}

- (void)xpcBeginMigrationWithCompletion:(id)a3
{
  v4 = a3;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v5 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__NRPairingProxy_xpcBeginMigrationWithCompletion___block_invoke;
    block[3] = &unk_1E86DB530;
    block[4] = self;
    v13 = v4;
    v6 = v4;
    dispatch_async(v5, block);

    v7 = v13;
  }

  else
  {
    v8 = [(NRXPCProxy *)self connection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__NRPairingProxy_xpcBeginMigrationWithCompletion___block_invoke_4;
    v10[3] = &unk_1E86DAE70;
    v11 = v4;
    v9 = v4;
    [v8 runCompletionBlock:v10];

    v7 = v11;
  }
}

void __50__NRPairingProxy_xpcBeginMigrationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__NRPairingProxy_xpcBeginMigrationWithCompletion___block_invoke_2;
  v4[3] = &unk_1E86DAD10;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 xpcBeginMigrationWithCompletion:v4];
}

void __50__NRPairingProxy_xpcBeginMigrationWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__NRPairingProxy_xpcBeginMigrationWithCompletion___block_invoke_3;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

void __50__NRPairingProxy_xpcBeginMigrationWithCompletion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0x14uLL);
  (*(v1 + 16))(v1, v2);
}

- (void)xpcAbortPairingReason:(id)a3 withBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"reason=%@", v7];
  [(NRRegistryProxy *)self logCaller:a2 args:v9];

  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v10 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__NRPairingProxy_xpcAbortPairingReason_withBlock___block_invoke;
    block[3] = &unk_1E86DB4B8;
    v11 = v18;
    v18[0] = v7;
    v18[1] = self;
    v19 = v8;
    v12 = v8;
    dispatch_async(v10, block);
  }

  else
  {
    v13 = [(NRXPCProxy *)self connection];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__NRPairingProxy_xpcAbortPairingReason_withBlock___block_invoke_2;
    v15[3] = &unk_1E86DAE70;
    v11 = &v16;
    v16 = v8;
    v14 = v8;
    [v13 runCompletionBlock:v15];
  }
}

void __50__NRPairingProxy_xpcAbortPairingReason_withBlock___block_invoke(id *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!CFPreferencesGetAppBooleanValue(@"ignoreSharingdRequestsToAbortPairing", @"com.apple.NanoRegistry", 0) || ![a1[4] hasPrefix:@"com.apple.sharingd."])
  {
    v7 = [(NRPairingProxy *)a1[5] pairingServicesDelegate];
    [v7 proxyWillAbortPairing:a1[5]];

    v4 = [(NRPairingProxy *)a1[5] pairingServicesDelegate];
    [v4 xpcAbortPairingReason:a1[4] withBlock:a1[6]];
LABEL_7:

    goto LABEL_8;
  }

  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1[5] appPath];
      v6 = a1[4];
      *buf = 138543618;
      v13 = v5;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_1E0ADF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ called abort pairing with reason %{public}@; Ignoring since flag is set to ignore sharingd failures", buf, 0x16u);
    }

    goto LABEL_7;
  }

LABEL_8:
  v8 = [a1[5] connection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__NRPairingProxy_xpcAbortPairingReason_withBlock___block_invoke_206;
  v10[3] = &unk_1E86DAE70;
  v11 = a1[6];
  [v8 runCompletionBlock:v10];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)xpcUnpairWithDeviceID:(id)a3 withOptions:(id)a4 operationHasBegun:(id)a5
{
  v64 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x1E696AEC0];
  v13 = [v9 UUIDString];
  v14 = [v12 stringWithFormat:@"deviceID=%@ options=%@", v13, v10];
  [(NRRegistryProxy *)self logCaller:a2 args:v14];

  if (![(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v16 = [(NRXPCProxy *)self connection];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __70__NRPairingProxy_xpcUnpairWithDeviceID_withOptions_operationHasBegun___block_invoke_3;
    v54[3] = &unk_1E86DAE70;
    v55 = v11;
    v17 = v11;
    [v16 runCompletionBlock:v54];

    v18 = v55;
    goto LABEL_42;
  }

  v53 = v11;
  v52 = self;
  if ([v10 count])
  {
    v15 = [v10 objectForKeyedSubscript:@"obliterate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = [v15 BOOLValue];
    }

    else
    {
      v51 = 1;
    }

    v23 = [v10 objectForKeyedSubscript:@"brick"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v23 BOOLValue])
    {
      if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.unpairwithbrick"])
      {
        v50 = 1;
        goto LABEL_17;
      }

      v24 = nr_daemon_log();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (v25)
      {
        v26 = nr_daemon_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v48 = [(NRXPCProxy *)self appPath];
          *buf = 138543874;
          v59 = v48;
          v60 = 2112;
          v61 = @"com.apple.nano.nanoregistry.unpairwithbrick";
          v62 = 2112;
          v63 = @"brick";
          _os_log_error_impl(&dword_1E0ADF000, v26, OS_LOG_TYPE_ERROR, "%{public}@ needs entitlement %@ to enable %@", buf, 0x20u);
        }
      }
    }

    v50 = 0;
LABEL_17:
    v27 = [v10 objectForKeyedSubscript:@"store"];

    v28 = nr_daemon_log();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

    if (v29)
    {
      v30 = nr_daemon_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v47 = [(NRXPCProxy *)self appPath];
        *buf = 138543618;
        v59 = v47;
        v60 = 2112;
        v61 = v27;
        _os_log_error_impl(&dword_1E0ADF000, v30, OS_LOG_TYPE_ERROR, "%{public}@ valueID=%@", buf, 0x16u);
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [(__CFString *)v27 BOOLValue];
    }

    else
    {
      v20 = 0;
    }

    v31 = [v10 objectForKeyedSubscript:@"BDE85C67-0FDD-4A95-A9B9-3CB5DD0C06A2"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v31 BOOLValue])
    {
      if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nanoregistry.BDE85C67-0FDD-4A95-A9B9-3CB5DD0C06A2"])
      {
        v19 = 1;
LABEL_33:
        v34 = [v10 objectForKeyedSubscript:@"unpairAbortErrorReason"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v34;
        }

        else
        {
          v17 = 0;
        }

        v21 = v50;

        v22 = v51;
        goto LABEL_37;
      }

      v32 = nr_daemon_log();
      v19 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

      if (!v19)
      {
        goto LABEL_33;
      }

      v33 = nr_daemon_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v49 = [(NRXPCProxy *)self appPath];
        *buf = 138543874;
        v59 = v49;
        v60 = 2112;
        v61 = @"com.apple.nanoregistry.BDE85C67-0FDD-4A95-A9B9-3CB5DD0C06A2";
        v62 = 2112;
        v63 = @"BDE85C67-0FDD-4A95-A9B9-3CB5DD0C06A2";
        _os_log_error_impl(&dword_1E0ADF000, v33, OS_LOG_TYPE_ERROR, "%{public}@ needs entitlement %@ to enable %@", buf, 0x20u);
      }
    }

    v19 = 0;
    goto LABEL_33;
  }

  v17 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 1;
LABEL_37:
  v35 = objc_alloc(MEMORY[0x1E695DF90]);
  v36 = [MEMORY[0x1E696AD98] numberWithBool:v21];
  v37 = [MEMORY[0x1E696AD98] numberWithBool:v22];
  v38 = [MEMORY[0x1E696AD98] numberWithBool:v20];
  v39 = [MEMORY[0x1E696AD98] numberWithBool:v19];
  v18 = [v35 initWithObjectsAndKeys:{v36, @"brick", v37, @"obliterate", v38, @"store", v39, @"BDE85C67-0FDD-4A95-A9B9-3CB5DD0C06A2", 0}];

  [(__CFString *)v18 setObject:v17 forKeyedSubscript:@"unpairAbortErrorReason"];
  v40 = nr_daemon_log();
  LODWORD(v38) = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);

  if (v38)
  {
    v41 = nr_daemon_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v46 = [(NRXPCProxy *)v52 appPath];
      *buf = 138543618;
      v59 = v46;
      v60 = 2112;
      v61 = v18;
      _os_log_error_impl(&dword_1E0ADF000, v41, OS_LOG_TYPE_ERROR, "%{public}@ options again=%@", buf, 0x16u);
    }
  }

  v42 = [(NRPairingProxy *)v52 pairingServicesDelegate];
  [v42 proxyWillBeginUnpairing:v52];

  v43 = [(NRPairingProxy *)v52 pairingServicesDelegate];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __70__NRPairingProxy_xpcUnpairWithDeviceID_withOptions_operationHasBegun___block_invoke;
  v56[3] = &unk_1E86DAD10;
  v56[4] = v52;
  v57 = v53;
  v44 = v53;
  [v43 xpcUnpairWithDeviceID:v9 withOptions:v18 operationHasBegun:v56];

LABEL_42:
  v45 = *MEMORY[0x1E69E9840];
}

void __70__NRPairingProxy_xpcUnpairWithDeviceID_withOptions_operationHasBegun___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__NRPairingProxy_xpcUnpairWithDeviceID_withOptions_operationHasBegun___block_invoke_2;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

void __70__NRPairingProxy_xpcUnpairWithDeviceID_withOptions_operationHasBegun___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0x14uLL);
  (*(v1 + 16))(v1, v2);
}

- (void)xpcNotifyActivationCompleted:(id)a3 withSuccess:(BOOL)a4
{
  v7 = a3;
  v8 = MEMORY[0x1E696AEC0];
  v9 = [v7 UUIDString];
  v10 = [v8 stringWithFormat:@"deviceID=%@", v9];
  [(NRRegistryProxy *)self logCaller:a2 args:v10];

  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v11 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__NRPairingProxy_xpcNotifyActivationCompleted_withSuccess___block_invoke;
    block[3] = &unk_1E86DB558;
    block[4] = self;
    v13 = v7;
    v14 = a4;
    dispatch_async(v11, block);
  }
}

void __59__NRPairingProxy_xpcNotifyActivationCompleted_withSuccess___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v2 xpcNotifyActivationCompleted:*(a1 + 40) withSuccess:*(a1 + 48)];
}

- (void)xpcNotifyPasscode:(id)a3 withDeviceID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x1E696AEC0];
  v10 = [v8 UUIDString];
  v11 = [v9 stringWithFormat:@"deviceID=%@", v10];
  [(NRRegistryProxy *)self logCaller:a2 args:v11];

  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v12 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__NRPairingProxy_xpcNotifyPasscode_withDeviceID___block_invoke;
    block[3] = &unk_1E86DAEE8;
    block[4] = self;
    v14 = v7;
    v15 = v8;
    dispatch_async(v12, block);
  }
}

void __49__NRPairingProxy_xpcNotifyPasscode_withDeviceID___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v2 xpcNotifyPasscode:*(a1 + 40) withDeviceID:*(a1 + 48)];
}

- (void)xpcPairingShouldContinue
{
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v3 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__NRPairingProxy_xpcPairingShouldContinue__block_invoke;
    block[3] = &unk_1E86DAE98;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

void __42__NRPairingProxy_xpcPairingShouldContinue__block_invoke(uint64_t a1)
{
  v1 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v1 xpcPairingShouldContinue];
}

- (void)xpcEnterCompatibilityState:(unsigned __int16)a3 withDeviceID:(id)a4
{
  v6 = a4;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v7 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__NRPairingProxy_xpcEnterCompatibilityState_withDeviceID___block_invoke;
    block[3] = &unk_1E86DB580;
    block[4] = self;
    v10 = a3;
    v9 = v6;
    dispatch_async(v7, block);
  }
}

void __58__NRPairingProxy_xpcEnterCompatibilityState_withDeviceID___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v2 xpcEnterCompatibilityState:*(a1 + 48) withDeviceID:*(a1 + 40)];
}

- (void)xpcSwitchActiveDeviceWithDeviceID:(id)a3 isMagicSwitch:(BOOL)a4 operationHasCompleted:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = MEMORY[0x1E696AEC0];
  v12 = [v9 UUIDString];
  v13 = [v11 stringWithFormat:@"deviceID=%@", v12];
  [(NRRegistryProxy *)self logCaller:a2 args:v13];

  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v14 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__NRPairingProxy_xpcSwitchActiveDeviceWithDeviceID_isMagicSwitch_operationHasCompleted___block_invoke;
    block[3] = &unk_1E86DB5A8;
    block[4] = self;
    v24 = a4;
    v22 = v9;
    v23 = v10;
    v15 = v10;
    dispatch_async(v14, block);

    v16 = v22;
  }

  else
  {
    v17 = [(NRXPCProxy *)self connection];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __88__NRPairingProxy_xpcSwitchActiveDeviceWithDeviceID_isMagicSwitch_operationHasCompleted___block_invoke_4;
    v19[3] = &unk_1E86DAE70;
    v20 = v10;
    v18 = v10;
    [v17 runCompletionBlock:v19];

    v16 = v20;
  }
}

void __88__NRPairingProxy_xpcSwitchActiveDeviceWithDeviceID_isMagicSwitch_operationHasCompleted___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v2 proxyWillTakeSwitchAssertion:*(a1 + 32)];

  v3 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v4 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88__NRPairingProxy_xpcSwitchActiveDeviceWithDeviceID_isMagicSwitch_operationHasCompleted___block_invoke_2;
  v6[3] = &unk_1E86DAD10;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = *(a1 + 48);
  [v3 xpcSwitchActiveDeviceWithDeviceID:v5 isMagicSwitch:v4 operationHasCompleted:v6];
}

void __88__NRPairingProxy_xpcSwitchActiveDeviceWithDeviceID_isMagicSwitch_operationHasCompleted___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__NRPairingProxy_xpcSwitchActiveDeviceWithDeviceID_isMagicSwitch_operationHasCompleted___block_invoke_3;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

void __88__NRPairingProxy_xpcSwitchActiveDeviceWithDeviceID_isMagicSwitch_operationHasCompleted___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0x14uLL);
  (*(v1 + 16))(v1, v2);
}

- (void)xpcSwitchActiveDeviceWithDeviceID:(id)a3 withAssertionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x1E696AEC0];
  v10 = [v7 UUIDString];
  v11 = [v9 stringWithFormat:@"deviceID=%@", v10];
  [(NRRegistryProxy *)self logCaller:a2 args:v11];

  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v12 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__NRPairingProxy_xpcSwitchActiveDeviceWithDeviceID_withAssertionHandler___block_invoke;
    block[3] = &unk_1E86DB4B8;
    block[4] = self;
    v20 = v7;
    v21 = v8;
    v13 = v8;
    dispatch_async(v12, block);

    v14 = v20;
  }

  else
  {
    v15 = [(NRXPCProxy *)self connection];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __73__NRPairingProxy_xpcSwitchActiveDeviceWithDeviceID_withAssertionHandler___block_invoke_4;
    v17[3] = &unk_1E86DAE70;
    v18 = v8;
    v16 = v8;
    [v15 runCompletionBlock:v17];

    v14 = v18;
  }
}

void __73__NRPairingProxy_xpcSwitchActiveDeviceWithDeviceID_withAssertionHandler___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v2 proxyWillTakeSwitchAssertion:*(a1 + 32)];

  v3 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__NRPairingProxy_xpcSwitchActiveDeviceWithDeviceID_withAssertionHandler___block_invoke_2;
  v5[3] = &unk_1E86DB5F8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  [v3 xpcSwitchActiveDeviceWithDeviceID:v4 withAssertionHandler:v5];
}

void __73__NRPairingProxy_xpcSwitchActiveDeviceWithDeviceID_withAssertionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__NRPairingProxy_xpcSwitchActiveDeviceWithDeviceID_withAssertionHandler___block_invoke_3;
  v11[3] = &unk_1E86DB5D0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  [v7 runCompletionBlock:v11];
}

void __73__NRPairingProxy_xpcSwitchActiveDeviceWithDeviceID_withAssertionHandler___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0x14uLL);
  (*(v1 + 16))(v1, v2, 0);
}

- (void)xpcInvalidateSwitchAssertionWithIdentifier:(id)a3 block:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"assertionID=%@", v7];
  [(NRRegistryProxy *)self logCaller:a2 args:v9];

  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v10 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__NRPairingProxy_xpcInvalidateSwitchAssertionWithIdentifier_block___block_invoke;
    block[3] = &unk_1E86DB4B8;
    block[4] = self;
    v18 = v7;
    v19 = v8;
    v11 = v8;
    dispatch_async(v10, block);

    v12 = v18;
  }

  else
  {
    v13 = [(NRXPCProxy *)self connection];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__NRPairingProxy_xpcInvalidateSwitchAssertionWithIdentifier_block___block_invoke_4;
    v15[3] = &unk_1E86DAE70;
    v16 = v8;
    v14 = v8;
    [v13 runCompletionBlock:v15];

    v12 = v16;
  }
}

void __67__NRPairingProxy_xpcInvalidateSwitchAssertionWithIdentifier_block___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v2 proxyWillInvalidateSwitchAssertion:*(a1 + 32)];

  v3 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__NRPairingProxy_xpcInvalidateSwitchAssertionWithIdentifier_block___block_invoke_2;
  v5[3] = &unk_1E86DAD10;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  [v3 xpcInvalidateSwitchAssertionWithIdentifier:v4 block:v5];
}

void __67__NRPairingProxy_xpcInvalidateSwitchAssertionWithIdentifier_block___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__NRPairingProxy_xpcInvalidateSwitchAssertionWithIdentifier_block___block_invoke_3;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

void __67__NRPairingProxy_xpcInvalidateSwitchAssertionWithIdentifier_block___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(0x14uLL);
  (*(v1 + 16))(v1, v2);
}

- (void)xpcBeginDiscoveryWithBlock:(id)a3
{
  v5 = a3;
  [(NRRegistryProxy *)self logCaller:a2 args:0];
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v6 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__NRPairingProxy_xpcBeginDiscoveryWithBlock___block_invoke;
    block[3] = &unk_1E86DB530;
    block[4] = self;
    v14 = v5;
    v7 = v5;
    dispatch_async(v6, block);

    v8 = v14;
  }

  else
  {
    v9 = [(NRXPCProxy *)self connection];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__NRPairingProxy_xpcBeginDiscoveryWithBlock___block_invoke_4;
    v11[3] = &unk_1E86DAE70;
    v12 = v5;
    v10 = v5;
    [v9 runCompletionBlock:v11];

    v8 = v12;
  }
}

void __45__NRPairingProxy_xpcBeginDiscoveryWithBlock___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v2 proxyWillBeginDiscovering:*(a1 + 32)];

  v3 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__NRPairingProxy_xpcBeginDiscoveryWithBlock___block_invoke_2;
  v5[3] = &unk_1E86DB530;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 xpcBeginDiscoveryWithBlock:v5];
}

void __45__NRPairingProxy_xpcBeginDiscoveryWithBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__NRPairingProxy_xpcBeginDiscoveryWithBlock___block_invoke_3;
  v3[3] = &unk_1E86DAE70;
  v4 = *(a1 + 40);
  [v2 runCompletionBlock:v3];
}

- (void)xpcEndDiscoveryWithBlock:(id)a3
{
  v4 = a3;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v5 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__NRPairingProxy_xpcEndDiscoveryWithBlock___block_invoke;
    block[3] = &unk_1E86DB530;
    block[4] = self;
    v13 = v4;
    v6 = v4;
    dispatch_async(v5, block);

    v7 = v13;
  }

  else
  {
    v8 = [(NRXPCProxy *)self connection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__NRPairingProxy_xpcEndDiscoveryWithBlock___block_invoke_4;
    v10[3] = &unk_1E86DAE70;
    v11 = v4;
    v9 = v4;
    [v8 runCompletionBlock:v10];

    v7 = v11;
  }
}

void __43__NRPairingProxy_xpcEndDiscoveryWithBlock___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v2 proxyWillEndDiscovering:*(a1 + 32)];

  v3 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__NRPairingProxy_xpcEndDiscoveryWithBlock___block_invoke_2;
  v5[3] = &unk_1E86DB530;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 xpcEndDiscoveryWithBlock:v5];
}

void __43__NRPairingProxy_xpcEndDiscoveryWithBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__NRPairingProxy_xpcEndDiscoveryWithBlock___block_invoke_3;
  v3[3] = &unk_1E86DAE70;
  v4 = *(a1 + 40);
  [v2 runCompletionBlock:v3];
}

- (void)xpcTriggerVersion4Workaround
{
  v3 = [(NRPairingProxy *)self pairingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__NRPairingProxy_xpcTriggerVersion4Workaround__block_invoke;
  block[3] = &unk_1E86DAE98;
  block[4] = self;
  dispatch_async(v3, block);
}

void __46__NRPairingProxy_xpcTriggerVersion4Workaround__block_invoke(uint64_t a1)
{
  v1 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v1 xpcTriggerVersion4Workaround];
}

- (void)xpcSubmitAlbertPairingReport:(id)a3
{
  v4 = a3;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.internal"])
  {
    v5 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__NRPairingProxy_xpcSubmitAlbertPairingReport___block_invoke;
    block[3] = &unk_1E86DB530;
    block[4] = self;
    v13 = v4;
    v6 = v4;
    dispatch_async(v5, block);

    v7 = v13;
  }

  else
  {
    v8 = [(NRXPCProxy *)self connection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__NRPairingProxy_xpcSubmitAlbertPairingReport___block_invoke_4;
    v10[3] = &unk_1E86DAE70;
    v11 = v4;
    v9 = v4;
    [v8 runCompletionBlock:v10];

    v7 = v11;
  }
}

void __47__NRPairingProxy_xpcSubmitAlbertPairingReport___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__NRPairingProxy_xpcSubmitAlbertPairingReport___block_invoke_2;
  v4[3] = &unk_1E86DB530;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 xpcSubmitAlbertPairingReport:v4];
}

void __47__NRPairingProxy_xpcSubmitAlbertPairingReport___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__NRPairingProxy_xpcSubmitAlbertPairingReport___block_invoke_3;
  v3[3] = &unk_1E86DAE70;
  v4 = *(a1 + 40);
  [v2 runCompletionBlock:v3];
}

- (void)xpcSubmitRTCPairingMetricForMetricID:(id)a3 withSuccess:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.submitrtcpairingmetric"])
  {
    v8 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__NRPairingProxy_xpcSubmitRTCPairingMetricForMetricID_withSuccess___block_invoke;
    block[3] = &unk_1E86DB4B8;
    block[4] = self;
    v16 = v6;
    v17 = v7;
    v9 = v7;
    dispatch_async(v8, block);

    v10 = v16;
  }

  else
  {
    v11 = [(NRXPCProxy *)self connection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__NRPairingProxy_xpcSubmitRTCPairingMetricForMetricID_withSuccess___block_invoke_4;
    v13[3] = &unk_1E86DAE70;
    v14 = v7;
    v12 = v7;
    [v11 runCompletionBlock:v13];

    v10 = v14;
  }
}

void __67__NRPairingProxy_xpcSubmitRTCPairingMetricForMetricID_withSuccess___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__NRPairingProxy_xpcSubmitRTCPairingMetricForMetricID_withSuccess___block_invoke_2;
  v4[3] = &unk_1E86DAD38;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 xpcSubmitRTCPairingMetricForMetricID:v3 withSuccess:v4];
}

void __67__NRPairingProxy_xpcSubmitRTCPairingMetricForMetricID_withSuccess___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__NRPairingProxy_xpcSubmitRTCPairingMetricForMetricID_withSuccess___block_invoke_3;
  v9[3] = &unk_1E86DB620;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 runCompletionBlock:v9];
}

- (void)xpcPairingClientDidEnterPhase:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v8 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__NRPairingProxy_xpcPairingClientDidEnterPhase_withBlock___block_invoke;
    block[3] = &unk_1E86DB4B8;
    block[4] = self;
    v16 = v6;
    v17 = v7;
    v9 = v7;
    dispatch_async(v8, block);

    v10 = v16;
  }

  else
  {
    v11 = [(NRXPCProxy *)self connection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__NRPairingProxy_xpcPairingClientDidEnterPhase_withBlock___block_invoke_4;
    v13[3] = &unk_1E86DAE70;
    v14 = v7;
    v12 = v7;
    [v11 runCompletionBlock:v13];

    v10 = v14;
  }
}

void __58__NRPairingProxy_xpcPairingClientDidEnterPhase_withBlock___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__NRPairingProxy_xpcPairingClientDidEnterPhase_withBlock___block_invoke_2;
  v4[3] = &unk_1E86DB530;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 xpcPairingClientDidEnterPhase:v3 withBlock:v4];
}

void __58__NRPairingProxy_xpcPairingClientDidEnterPhase_withBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__NRPairingProxy_xpcPairingClientDidEnterPhase_withBlock___block_invoke_3;
  v3[3] = &unk_1E86DAE70;
  v4 = *(a1 + 40);
  [v2 runCompletionBlock:v3];
}

- (void)xpcSuspendPairingClientCrashMonitoring:(id)a3
{
  v5 = a3;
  [(NRRegistryProxy *)self logCaller:a2 args:0];
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v6 = [(NRPairingProxy *)self pairingServicesDelegate];
    v7 = [v6 setPairingClientCrashMonitoringCache:1 proxy:self];

    if (v7)
    {
      v8 = [(NRXPCProxy *)self connection];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __57__NRPairingProxy_xpcSuspendPairingClientCrashMonitoring___block_invoke_4;
      v14[3] = &unk_1E86DAE70;
      v15 = v5;
      [v8 runCompletionBlock:v14];

      v9 = v15;
    }

    else
    {
      v11 = [(NRPairingProxy *)self pairingQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__NRPairingProxy_xpcSuspendPairingClientCrashMonitoring___block_invoke;
      block[3] = &unk_1E86DB530;
      block[4] = self;
      v17 = v5;
      dispatch_async(v11, block);

      v9 = v17;
    }
  }

  else
  {
    v10 = [(NRXPCProxy *)self connection];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__NRPairingProxy_xpcSuspendPairingClientCrashMonitoring___block_invoke_5;
    v12[3] = &unk_1E86DAE70;
    v13 = v5;
    [v10 runCompletionBlock:v12];

    v9 = v13;
  }
}

void __57__NRPairingProxy_xpcSuspendPairingClientCrashMonitoring___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v2 proxyRequestsSuspensionOfCrashMonitoring:*(a1 + 32)];

  v3 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__NRPairingProxy_xpcSuspendPairingClientCrashMonitoring___block_invoke_2;
  v5[3] = &unk_1E86DB530;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 xpcSuspendPairingClientCrashMonitoring:v5];
}

void __57__NRPairingProxy_xpcSuspendPairingClientCrashMonitoring___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__NRPairingProxy_xpcSuspendPairingClientCrashMonitoring___block_invoke_3;
  v3[3] = &unk_1E86DAE70;
  v4 = *(a1 + 40);
  [v2 runCompletionBlock:v3];
}

- (void)xpcResumePairingClientCrashMonitoring:(id)a3
{
  v5 = a3;
  [(NRRegistryProxy *)self logCaller:a2 args:0];
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v6 = [(NRPairingProxy *)self pairingServicesDelegate];
    v7 = [v6 setPairingClientCrashMonitoringCache:0 proxy:self];

    if (v7)
    {
      v8 = [(NRXPCProxy *)self connection];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __56__NRPairingProxy_xpcResumePairingClientCrashMonitoring___block_invoke_4;
      v14[3] = &unk_1E86DAE70;
      v15 = v5;
      [v8 runCompletionBlock:v14];

      v9 = v15;
    }

    else
    {
      v11 = [(NRPairingProxy *)self pairingQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56__NRPairingProxy_xpcResumePairingClientCrashMonitoring___block_invoke;
      block[3] = &unk_1E86DB530;
      block[4] = self;
      v17 = v5;
      dispatch_async(v11, block);

      v9 = v17;
    }
  }

  else
  {
    v10 = [(NRXPCProxy *)self connection];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__NRPairingProxy_xpcResumePairingClientCrashMonitoring___block_invoke_5;
    v12[3] = &unk_1E86DAE70;
    v13 = v5;
    [v10 runCompletionBlock:v12];

    v9 = v13;
  }
}

void __56__NRPairingProxy_xpcResumePairingClientCrashMonitoring___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v2 proxyRequestsResumptionOfCrashMonitoring:*(a1 + 32)];

  v3 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__NRPairingProxy_xpcResumePairingClientCrashMonitoring___block_invoke_2;
  v5[3] = &unk_1E86DB530;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 xpcResumePairingClientCrashMonitoring:v5];
}

void __56__NRPairingProxy_xpcResumePairingClientCrashMonitoring___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__NRPairingProxy_xpcResumePairingClientCrashMonitoring___block_invoke_3;
  v3[3] = &unk_1E86DAE70;
  v4 = *(a1 + 40);
  [v2 runCompletionBlock:v3];
}

- (void)xpcRetriggerUnpairInfoDialogWithBlock:(id)a3
{
  v5 = a3;
  [(NRRegistryProxy *)self logCaller:a2 args:0];
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v6 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__NRPairingProxy_xpcRetriggerUnpairInfoDialogWithBlock___block_invoke;
    block[3] = &unk_1E86DB530;
    block[4] = self;
    v14 = v5;
    v7 = v5;
    dispatch_async(v6, block);

    v8 = v14;
  }

  else
  {
    v9 = [(NRXPCProxy *)self connection];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__NRPairingProxy_xpcRetriggerUnpairInfoDialogWithBlock___block_invoke_4;
    v11[3] = &unk_1E86DAE70;
    v12 = v5;
    v10 = v5;
    [v9 runCompletionBlock:v11];

    v8 = v12;
  }
}

void __56__NRPairingProxy_xpcRetriggerUnpairInfoDialogWithBlock___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__NRPairingProxy_xpcRetriggerUnpairInfoDialogWithBlock___block_invoke_2;
  v4[3] = &unk_1E86DB530;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 xpcRetriggerUnpairInfoDialogWithBlock:v4];
}

void __56__NRPairingProxy_xpcRetriggerUnpairInfoDialogWithBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__NRPairingProxy_xpcRetriggerUnpairInfoDialogWithBlock___block_invoke_3;
  v3[3] = &unk_1E86DAE70;
  v4 = *(a1 + 40);
  [v2 runCompletionBlock:v3];
}

- (void)xpcActiveDeviceAssertions:(id)a3
{
  v4 = a3;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v5 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__NRPairingProxy_xpcActiveDeviceAssertions___block_invoke;
    block[3] = &unk_1E86DB530;
    block[4] = self;
    v13 = v4;
    v6 = v4;
    dispatch_async(v5, block);

    v7 = v13;
  }

  else
  {
    v8 = [(NRXPCProxy *)self connection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__NRPairingProxy_xpcActiveDeviceAssertions___block_invoke_4;
    v10[3] = &unk_1E86DAE70;
    v11 = v4;
    v9 = v4;
    [v8 runCompletionBlock:v10];

    v7 = v11;
  }
}

void __44__NRPairingProxy_xpcActiveDeviceAssertions___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__NRPairingProxy_xpcActiveDeviceAssertions___block_invoke_2;
  v4[3] = &unk_1E86DB648;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 xpcActiveDeviceAssertions:v4];
}

void __44__NRPairingProxy_xpcActiveDeviceAssertions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__NRPairingProxy_xpcActiveDeviceAssertions___block_invoke_3;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

- (void)xpcPairWithSimulator:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v8 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__NRPairingProxy_xpcPairWithSimulator_withCompletion___block_invoke;
    block[3] = &unk_1E86DB4B8;
    block[4] = self;
    v16 = v6;
    v17 = v7;
    v9 = v7;
    dispatch_async(v8, block);

    v10 = v16;
  }

  else
  {
    v11 = [(NRXPCProxy *)self connection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __54__NRPairingProxy_xpcPairWithSimulator_withCompletion___block_invoke_4;
    v13[3] = &unk_1E86DAE70;
    v14 = v7;
    v12 = v7;
    [v11 runCompletionBlock:v13];

    v10 = v14;
  }
}

void __54__NRPairingProxy_xpcPairWithSimulator_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__NRPairingProxy_xpcPairWithSimulator_withCompletion___block_invoke_2;
  v4[3] = &unk_1E86DAD10;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 xpcPairWithSimulator:v3 withCompletion:v4];
}

void __54__NRPairingProxy_xpcPairWithSimulator_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__NRPairingProxy_xpcPairWithSimulator_withCompletion___block_invoke_3;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

void __54__NRPairingProxy_xpcPairWithSimulator_withCompletion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(5uLL);
  (*(v1 + 16))(v1, v2);
}

- (void)xpcUnpairWithSimulator:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v8 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__NRPairingProxy_xpcUnpairWithSimulator_withCompletion___block_invoke;
    block[3] = &unk_1E86DB4B8;
    block[4] = self;
    v16 = v6;
    v17 = v7;
    v9 = v7;
    dispatch_async(v8, block);

    v10 = v16;
  }

  else
  {
    v11 = [(NRXPCProxy *)self connection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__NRPairingProxy_xpcUnpairWithSimulator_withCompletion___block_invoke_4;
    v13[3] = &unk_1E86DAE70;
    v14 = v7;
    v12 = v7;
    [v11 runCompletionBlock:v13];

    v10 = v14;
  }
}

void __56__NRPairingProxy_xpcUnpairWithSimulator_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__NRPairingProxy_xpcUnpairWithSimulator_withCompletion___block_invoke_2;
  v4[3] = &unk_1E86DAD10;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 xpcUnpairWithSimulator:v3 withCompletion:v4];
}

void __56__NRPairingProxy_xpcUnpairWithSimulator_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__NRPairingProxy_xpcUnpairWithSimulator_withCompletion___block_invoke_3;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

void __56__NRPairingProxy_xpcUnpairWithSimulator_withCompletion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(5uLL);
  (*(v1 + 16))(v1, v2);
}

- (void)xpcSwitchToSimulator:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v8 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__NRPairingProxy_xpcSwitchToSimulator_withCompletion___block_invoke;
    block[3] = &unk_1E86DB4B8;
    block[4] = self;
    v16 = v6;
    v17 = v7;
    v9 = v7;
    dispatch_async(v8, block);

    v10 = v16;
  }

  else
  {
    v11 = [(NRXPCProxy *)self connection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __54__NRPairingProxy_xpcSwitchToSimulator_withCompletion___block_invoke_4;
    v13[3] = &unk_1E86DAE70;
    v14 = v7;
    v12 = v7;
    [v11 runCompletionBlock:v13];

    v10 = v14;
  }
}

void __54__NRPairingProxy_xpcSwitchToSimulator_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__NRPairingProxy_xpcSwitchToSimulator_withCompletion___block_invoke_2;
  v4[3] = &unk_1E86DAD10;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 xpcSwitchToSimulator:v3 withCompletion:v4];
}

void __54__NRPairingProxy_xpcSwitchToSimulator_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__NRPairingProxy_xpcSwitchToSimulator_withCompletion___block_invoke_3;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

void __54__NRPairingProxy_xpcSwitchToSimulator_withCompletion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError(5uLL);
  (*(v1 + 16))(v1, v2);
}

- (void)xpcPutMigrationChallengeCharacteristicWriteData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.ids.plugin"])
  {
    v8 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__NRPairingProxy_xpcPutMigrationChallengeCharacteristicWriteData_completion___block_invoke;
    block[3] = &unk_1E86DB4B8;
    block[4] = self;
    v16 = v6;
    v17 = v7;
    v9 = v7;
    dispatch_async(v8, block);

    v10 = v16;
  }

  else
  {
    v11 = [(NRXPCProxy *)self connection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77__NRPairingProxy_xpcPutMigrationChallengeCharacteristicWriteData_completion___block_invoke_4;
    v13[3] = &unk_1E86DAE70;
    v14 = v7;
    v12 = v7;
    [v11 runCompletionBlock:v13];

    v10 = v14;
  }
}

void __77__NRPairingProxy_xpcPutMigrationChallengeCharacteristicWriteData_completion___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77__NRPairingProxy_xpcPutMigrationChallengeCharacteristicWriteData_completion___block_invoke_2;
  v4[3] = &unk_1E86DB508;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 xpcPutMigrationChallengeCharacteristicWriteData:v3 completion:v4];
}

void __77__NRPairingProxy_xpcPutMigrationChallengeCharacteristicWriteData_completion___block_invoke_2(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) connection];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__NRPairingProxy_xpcPutMigrationChallengeCharacteristicWriteData_completion___block_invoke_3;
  v5[3] = &unk_1E86DB4E0;
  v6 = *(a1 + 40);
  v7 = a2;
  [v4 runCompletionBlock:v5];
}

- (void)xpcGetMigrationPairingCharacteristicReadDataWithCompletion:(id)a3
{
  v4 = a3;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.ids.plugin"])
  {
    v5 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__NRPairingProxy_xpcGetMigrationPairingCharacteristicReadDataWithCompletion___block_invoke;
    block[3] = &unk_1E86DB530;
    block[4] = self;
    v13 = v4;
    v6 = v4;
    dispatch_async(v5, block);

    v7 = v13;
  }

  else
  {
    v8 = [(NRXPCProxy *)self connection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__NRPairingProxy_xpcGetMigrationPairingCharacteristicReadDataWithCompletion___block_invoke_4;
    v10[3] = &unk_1E86DAE70;
    v11 = v4;
    v9 = v4;
    [v8 runCompletionBlock:v10];

    v7 = v11;
  }
}

void __77__NRPairingProxy_xpcGetMigrationPairingCharacteristicReadDataWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77__NRPairingProxy_xpcGetMigrationPairingCharacteristicReadDataWithCompletion___block_invoke_2;
  v4[3] = &unk_1E86DB670;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 xpcGetMigrationPairingCharacteristicReadDataWithCompletion:v4];
}

void __77__NRPairingProxy_xpcGetMigrationPairingCharacteristicReadDataWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__NRPairingProxy_xpcGetMigrationPairingCharacteristicReadDataWithCompletion___block_invoke_3;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

- (void)xpcBeginMigrationWithDeviceID:(id)a3 passcode:(id)a4 withBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v11 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__NRPairingProxy_xpcBeginMigrationWithDeviceID_passcode_withBlock___block_invoke;
    block[3] = &unk_1E86DB490;
    block[4] = self;
    v19 = v8;
    v20 = v9;
    v21 = v10;
    v12 = v10;
    dispatch_async(v11, block);

    v13 = v19;
  }

  else
  {
    v14 = [(NRXPCProxy *)self connection];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__NRPairingProxy_xpcBeginMigrationWithDeviceID_passcode_withBlock___block_invoke_4;
    v16[3] = &unk_1E86DAE70;
    v17 = v10;
    v15 = v10;
    [v14 runCompletionBlock:v16];

    v13 = v17;
  }
}

void __67__NRPairingProxy_xpcBeginMigrationWithDeviceID_passcode_withBlock___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__NRPairingProxy_xpcBeginMigrationWithDeviceID_passcode_withBlock___block_invoke_2;
  v5[3] = &unk_1E86DB530;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 56);
  [v2 xpcBeginMigrationWithDeviceID:v3 passcode:v4 withBlock:v5];
}

void __67__NRPairingProxy_xpcBeginMigrationWithDeviceID_passcode_withBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__NRPairingProxy_xpcBeginMigrationWithDeviceID_passcode_withBlock___block_invoke_3;
  v3[3] = &unk_1E86DAE70;
  v4 = *(a1 + 40);
  [v2 runCompletionBlock:v3];
}

- (void)xpcStartAdvertisingForMigration
{
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.ids.plugin"])
  {
    v3 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__NRPairingProxy_xpcStartAdvertisingForMigration__block_invoke;
    block[3] = &unk_1E86DAE98;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

void __49__NRPairingProxy_xpcStartAdvertisingForMigration__block_invoke(uint64_t a1)
{
  v1 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v1 xpcStartAdvertisingForMigration];
}

- (void)xpcStopAdvertisingForMigration
{
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.ids.plugin"])
  {
    v3 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__NRPairingProxy_xpcStopAdvertisingForMigration__block_invoke;
    block[3] = &unk_1E86DAE98;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

void __48__NRPairingProxy_xpcStopAdvertisingForMigration__block_invoke(uint64_t a1)
{
  v1 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v1 xpcStopAdvertisingForMigration];
}

- (void)xpcStageWatchForGraduationWithDeviceID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v8 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__NRPairingProxy_xpcStageWatchForGraduationWithDeviceID_completion___block_invoke;
    block[3] = &unk_1E86DB4B8;
    block[4] = self;
    v16 = v6;
    v17 = v7;
    v9 = v7;
    dispatch_async(v8, block);

    v10 = v16;
  }

  else
  {
    v11 = [(NRXPCProxy *)self connection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68__NRPairingProxy_xpcStageWatchForGraduationWithDeviceID_completion___block_invoke_2;
    v13[3] = &unk_1E86DAE70;
    v14 = v7;
    v12 = v7;
    [v11 runCompletionBlock:v13];

    v10 = v14;
  }
}

void __68__NRPairingProxy_xpcStageWatchForGraduationWithDeviceID_completion___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v2 xpcStageWatchForGraduationWithDeviceID:*(a1 + 40) completion:*(a1 + 48)];
}

void __68__NRPairingProxy_xpcStageWatchForGraduationWithDeviceID_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.nanoregistry.pairingerror" code:20 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (void)xpcStageWatchForTransferWithDeviceID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v8 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__NRPairingProxy_xpcStageWatchForTransferWithDeviceID_completion___block_invoke;
    block[3] = &unk_1E86DB4B8;
    block[4] = self;
    v16 = v6;
    v17 = v7;
    v9 = v7;
    dispatch_async(v8, block);

    v10 = v16;
  }

  else
  {
    v11 = [(NRXPCProxy *)self connection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__NRPairingProxy_xpcStageWatchForTransferWithDeviceID_completion___block_invoke_2;
    v13[3] = &unk_1E86DAE70;
    v14 = v7;
    v12 = v7;
    [v11 runCompletionBlock:v13];

    v10 = v14;
  }
}

void __66__NRPairingProxy_xpcStageWatchForTransferWithDeviceID_completion___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v2 xpcStageWatchForTransferWithDeviceID:*(a1 + 40) completion:*(a1 + 48)];
}

void __66__NRPairingProxy_xpcStageWatchForTransferWithDeviceID_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.nanoregistry.pairingerror" code:20 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (void)xpcListWatchStagedForTransferWithCompletion:(id)a3
{
  v4 = a3;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v5 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__NRPairingProxy_xpcListWatchStagedForTransferWithCompletion___block_invoke;
    block[3] = &unk_1E86DB530;
    block[4] = self;
    v13 = v4;
    v6 = v4;
    dispatch_async(v5, block);

    v7 = v13;
  }

  else
  {
    v8 = [(NRXPCProxy *)self connection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__NRPairingProxy_xpcListWatchStagedForTransferWithCompletion___block_invoke_2;
    v10[3] = &unk_1E86DAE70;
    v11 = v4;
    v9 = v4;
    [v8 runCompletionBlock:v10];

    v7 = v11;
  }
}

void __62__NRPairingProxy_xpcListWatchStagedForTransferWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v2 xpcListWatchStagedForTransferWithCompletion:*(a1 + 40)];
}

void __62__NRPairingProxy_xpcListWatchStagedForTransferWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.nanoregistry.pairingerror" code:20 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)xpcGetLastMigrationRequestPhoneNameWithCompletion:(id)a3
{
  v4 = a3;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v5 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__NRPairingProxy_xpcGetLastMigrationRequestPhoneNameWithCompletion___block_invoke;
    block[3] = &unk_1E86DB530;
    block[4] = self;
    v13 = v4;
    v6 = v4;
    dispatch_async(v5, block);

    v7 = v13;
  }

  else
  {
    v8 = [(NRXPCProxy *)self connection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__NRPairingProxy_xpcGetLastMigrationRequestPhoneNameWithCompletion___block_invoke_4;
    v10[3] = &unk_1E86DAE70;
    v11 = v4;
    v9 = v4;
    [v8 runCompletionBlock:v10];

    v7 = v11;
  }
}

void __68__NRPairingProxy_xpcGetLastMigrationRequestPhoneNameWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__NRPairingProxy_xpcGetLastMigrationRequestPhoneNameWithCompletion___block_invoke_2;
  v4[3] = &unk_1E86DB698;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 xpcGetLastMigrationRequestPhoneNameWithCompletion:v4];
}

void __68__NRPairingProxy_xpcGetLastMigrationRequestPhoneNameWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__NRPairingProxy_xpcGetLastMigrationRequestPhoneNameWithCompletion___block_invoke_3;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

- (void)xpcKeepPhoneUnlockedInternalTestSPI:(id)a3
{
  v4 = a3;
  v5 = [(NRPairingProxy *)self pairingQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__NRPairingProxy_xpcKeepPhoneUnlockedInternalTestSPI___block_invoke;
  v7[3] = &unk_1E86DB530;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __54__NRPairingProxy_xpcKeepPhoneUnlockedInternalTestSPI___block_invoke(uint64_t a1)
{
  if (_NRIsInternalInstall___onceToken != -1)
  {
    dispatch_once(&_NRIsInternalInstall___onceToken, &__block_literal_global_18);
  }

  if (_NRIsInternalInstall___internalInstall == 1 && [*(a1 + 32) loudHasEntitlement:@"com.apple.nanoregistry.unlock.assertion.test.5FB2508F-9F17-42C2-90A4-03E7817791D9"])
  {
    v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__NRPairingProxy_xpcKeepPhoneUnlockedInternalTestSPI___block_invoke_2;
    v5[3] = &unk_1E86DB530;
    v3 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v6 = v3;
    [v2 xpcKeepPhoneUnlockedInternalTestSPI:v5];
  }

  else
  {
    v4 = [*(a1 + 32) connection];
    [v4 runCompletionBlock:*(a1 + 40)];
  }
}

void __54__NRPairingProxy_xpcKeepPhoneUnlockedInternalTestSPI___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  [v2 runCompletionBlock:*(a1 + 40)];
}

- (void)xpcPingActiveGizmoWithPriority:(int)a3 withMessageSize:(int64_t)a4 withBlock:(id)a5
{
  v8 = a5;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v9 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__NRPairingProxy_xpcPingActiveGizmoWithPriority_withMessageSize_withBlock___block_invoke;
    block[3] = &unk_1E86DB710;
    v19 = a3;
    v17 = v8;
    v18 = a4;
    block[4] = self;
    v10 = v8;
    dispatch_async(v9, block);

    v11 = v17;
  }

  else
  {
    v12 = [(NRXPCProxy *)self connection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __75__NRPairingProxy_xpcPingActiveGizmoWithPriority_withMessageSize_withBlock___block_invoke_4;
    v14[3] = &unk_1E86DAE70;
    v15 = v8;
    v13 = v8;
    [v12 runCompletionBlock:v14];

    v11 = v15;
  }
}

void __75__NRPairingProxy_xpcPingActiveGizmoWithPriority_withMessageSize_withBlock___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v3 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__NRPairingProxy_xpcPingActiveGizmoWithPriority_withMessageSize_withBlock___block_invoke_2;
  v6[3] = &unk_1E86DB6E8;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v4;
  [v2 xpcPingActiveGizmoWithPriority:v3 withMessageSize:v5 withBlock:v6];
}

void __75__NRPairingProxy_xpcPingActiveGizmoWithPriority_withMessageSize_withBlock___block_invoke_2(uint64_t a1, char a2, double a3, double a4)
{
  v8 = [*(a1 + 32) connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__NRPairingProxy_xpcPingActiveGizmoWithPriority_withMessageSize_withBlock___block_invoke_3;
  v9[3] = &unk_1E86DB6C0;
  v10 = *(a1 + 40);
  v13 = a2;
  v11 = a3;
  v12 = a4;
  [v8 runCompletionBlock:v9];
}

- (void)xpcScanForMigratableWatchesWithBlock:(id)a3
{
  v4 = a3;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v5 = [(NRPairingProxy *)self pairingQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__NRPairingProxy_xpcScanForMigratableWatchesWithBlock___block_invoke;
    v7[3] = &unk_1E86DB530;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v5, v7);
  }

  else
  {
    v6 = [(NRXPCProxy *)self connection];
    [v6 runCompletionBlock:v4];
  }
}

void __55__NRPairingProxy_xpcScanForMigratableWatchesWithBlock___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v2 proxyWillBeginPushing:*(a1 + 32)];

  v3 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__NRPairingProxy_xpcScanForMigratableWatchesWithBlock___block_invoke_2;
  v5[3] = &unk_1E86DB530;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 xpcScanForMigratableWatchesWithBlock:v5];
}

void __55__NRPairingProxy_xpcScanForMigratableWatchesWithBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  [v2 runCompletionBlock:*(a1 + 40)];
}

- (void)xpcStartWatchSetupPushWithBlock:(id)a3
{
  v4 = a3;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v5 = [(NRPairingProxy *)self pairingQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__NRPairingProxy_xpcStartWatchSetupPushWithBlock___block_invoke;
    v7[3] = &unk_1E86DB530;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v5, v7);
  }

  else
  {
    v6 = [(NRXPCProxy *)self connection];
    [v6 runCompletionBlock:v4];
  }
}

void __50__NRPairingProxy_xpcStartWatchSetupPushWithBlock___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v2 proxyWillBeginPushing:*(a1 + 32)];

  v3 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__NRPairingProxy_xpcStartWatchSetupPushWithBlock___block_invoke_2;
  v5[3] = &unk_1E86DB530;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 xpcStartWatchSetupPushWithBlock:v5];
}

void __50__NRPairingProxy_xpcStartWatchSetupPushWithBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  [v2 runCompletionBlock:*(a1 + 40)];
}

- (void)xpcStopWatchSetupPushWithBlock:(id)a3
{
  v4 = a3;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v5 = [(NRPairingProxy *)self pairingQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__NRPairingProxy_xpcStopWatchSetupPushWithBlock___block_invoke;
    v7[3] = &unk_1E86DB530;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v5, v7);
  }

  else
  {
    v6 = [(NRXPCProxy *)self connection];
    [v6 runCompletionBlock:v4];
  }
}

void __49__NRPairingProxy_xpcStopWatchSetupPushWithBlock___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v2 proxyWillEndPushing:*(a1 + 32)];

  v3 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__NRPairingProxy_xpcStopWatchSetupPushWithBlock___block_invoke_2;
  v5[3] = &unk_1E86DB530;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 xpcStopWatchSetupPushWithBlock:v5];
}

void __49__NRPairingProxy_xpcStopWatchSetupPushWithBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  [v2 runCompletionBlock:*(a1 + 40)];
}

- (void)xpcWaitForWatchPairingExtendedMetadataForAdvertisedName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v8 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__NRPairingProxy_xpcWaitForWatchPairingExtendedMetadataForAdvertisedName_completion___block_invoke;
    block[3] = &unk_1E86DB4B8;
    block[4] = self;
    v16 = v6;
    v17 = v7;
    v9 = v7;
    dispatch_async(v8, block);

    v10 = v16;
  }

  else
  {
    v11 = [(NRXPCProxy *)self connection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __85__NRPairingProxy_xpcWaitForWatchPairingExtendedMetadataForAdvertisedName_completion___block_invoke_2;
    v13[3] = &unk_1E86DAE70;
    v14 = v7;
    v12 = v7;
    [v11 runCompletionBlock:v13];

    v10 = v14;
  }
}

void __85__NRPairingProxy_xpcWaitForWatchPairingExtendedMetadataForAdvertisedName_completion___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v2 xpcWaitForWatchPairingExtendedMetadataForAdvertisedName:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)xpcSubmitServerRequestReportWithRequestType:(id)a3 duration:(double)a4 errorCode:(unsigned int)a5 block:(id)a6
{
  v10 = a3;
  v11 = a6;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v12 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__NRPairingProxy_xpcSubmitServerRequestReportWithRequestType_duration_errorCode_block___block_invoke;
    block[3] = &unk_1E86DB738;
    block[4] = self;
    v15 = v10;
    v17 = a4;
    v18 = a5;
    v16 = v11;
    dispatch_async(v12, block);
  }

  else
  {
    v13 = [(NRXPCProxy *)self connection];
    [v13 runCompletionBlock:v11];
  }
}

void __87__NRPairingProxy_xpcSubmitServerRequestReportWithRequestType_duration_errorCode_block___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __87__NRPairingProxy_xpcSubmitServerRequestReportWithRequestType_duration_errorCode_block___block_invoke_2;
  v6[3] = &unk_1E86DB530;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = *(a1 + 48);
  [v2 xpcSubmitServerRequestReportWithRequestType:v5 duration:v4 errorCode:v6 block:v3];
}

void __87__NRPairingProxy_xpcSubmitServerRequestReportWithRequestType_duration_errorCode_block___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  [v2 runCompletionBlock:*(a1 + 40)];
}

- (void)xpcCheckIfFlaggedForRecoveryWithCompletion:(id)a3
{
  v4 = a3;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.internal"])
  {
    v5 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__NRPairingProxy_xpcCheckIfFlaggedForRecoveryWithCompletion___block_invoke;
    block[3] = &unk_1E86DB530;
    block[4] = self;
    v13 = v4;
    v6 = v4;
    dispatch_async(v5, block);

    v7 = v13;
  }

  else
  {
    v8 = [(NRXPCProxy *)self connection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__NRPairingProxy_xpcCheckIfFlaggedForRecoveryWithCompletion___block_invoke_4;
    v10[3] = &unk_1E86DAE70;
    v11 = v4;
    v9 = v4;
    [v8 runCompletionBlock:v10];

    v7 = v11;
  }
}

void __61__NRPairingProxy_xpcCheckIfFlaggedForRecoveryWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__NRPairingProxy_xpcCheckIfFlaggedForRecoveryWithCompletion___block_invoke_2;
  v4[3] = &unk_1E86DAD38;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 xpcCheckIfFlaggedForRecoveryWithCompletion:v4];
}

void __61__NRPairingProxy_xpcCheckIfFlaggedForRecoveryWithCompletion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__NRPairingProxy_xpcCheckIfFlaggedForRecoveryWithCompletion___block_invoke_3;
  v9[3] = &unk_1E86DB620;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 runCompletionBlock:v9];
}

- (void)xpcClearRecoveryFlagWithCompletion:(id)a3
{
  v4 = a3;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.internal"])
  {
    v5 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__NRPairingProxy_xpcClearRecoveryFlagWithCompletion___block_invoke;
    block[3] = &unk_1E86DB530;
    block[4] = self;
    v13 = v4;
    v6 = v4;
    dispatch_async(v5, block);

    v7 = v13;
  }

  else
  {
    v8 = [(NRXPCProxy *)self connection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__NRPairingProxy_xpcClearRecoveryFlagWithCompletion___block_invoke_4;
    v10[3] = &unk_1E86DAE70;
    v11 = v4;
    v9 = v4;
    [v8 runCompletionBlock:v10];

    v7 = v11;
  }
}

void __53__NRPairingProxy_xpcClearRecoveryFlagWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__NRPairingProxy_xpcClearRecoveryFlagWithCompletion___block_invoke_2;
  v4[3] = &unk_1E86DAD10;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 xpcClearRecoveryFlagWithCompletion:v4];
}

void __53__NRPairingProxy_xpcClearRecoveryFlagWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__NRPairingProxy_xpcClearRecoveryFlagWithCompletion___block_invoke_3;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

- (void)xpcFakePairedSyncIsCompleteWithCompletion:(id)a3
{
  v4 = a3;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v5 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__NRPairingProxy_xpcFakePairedSyncIsCompleteWithCompletion___block_invoke;
    block[3] = &unk_1E86DB530;
    block[4] = self;
    v13 = v4;
    v6 = v4;
    dispatch_async(v5, block);

    v7 = v13;
  }

  else
  {
    v8 = [(NRXPCProxy *)self connection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__NRPairingProxy_xpcFakePairedSyncIsCompleteWithCompletion___block_invoke_4;
    v10[3] = &unk_1E86DAE70;
    v11 = v4;
    v9 = v4;
    [v8 runCompletionBlock:v10];

    v7 = v11;
  }
}

void __60__NRPairingProxy_xpcFakePairedSyncIsCompleteWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__NRPairingProxy_xpcFakePairedSyncIsCompleteWithCompletion___block_invoke_2;
  v4[3] = &unk_1E86DAD10;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 xpcFakePairedSyncIsCompleteWithCompletion:v4];
}

void __60__NRPairingProxy_xpcFakePairedSyncIsCompleteWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__NRPairingProxy_xpcFakePairedSyncIsCompleteWithCompletion___block_invoke_3;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

- (void)xpcTriggerTailspinFrom:(unint64_t)a3 forApp:(id)a4
{
  v6 = [(NRPairingProxy *)self pairingQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__NRPairingProxy_xpcTriggerTailspinFrom_forApp___block_invoke;
  v7[3] = &unk_1E86DB760;
  v7[4] = self;
  v7[5] = a3;
  dispatch_async(v6, v7);
}

void __48__NRPairingProxy_xpcTriggerTailspinFrom_forApp___block_invoke(uint64_t a1)
{
  v5 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) appPath];
  v4 = [v3 lastPathComponent];
  [v5 xpcTriggerTailspinFrom:v2 forApp:v4];
}

- (void)xpcGetLastSwitchIndex:(id)a3
{
  v7 = a3;
  v3 = *MEMORY[0x1E695E898];
  CFPreferencesSynchronize(@"com.apple.pairedsyncd", @"mobile", *MEMORY[0x1E695E898]);
  v4 = CFPreferencesCopyValue(@"lastSwitchIndex", @"com.apple.pairedsyncd", @"mobile", v3);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 intValue];
  }

  else
  {
    v6 = 0;
  }

  v7[2](v7, v6, 0);
}

- (void)xpcGetMigrationCountForPairingID:(id)a3 completion:(id)a4
{
  v5 = *MEMORY[0x1E695E898];
  v6 = a4;
  v7 = a3;
  CFPreferencesSynchronize(@"com.apple.pairedsyncd", @"mobile", v5);
  v10 = CFPreferencesCopyValue(@"pairingIDMigrationCountDictionary", @"com.apple.pairedsyncd", @"mobile", v5);
  v8 = [v7 UUIDString];

  v9 = [v10 objectForKeyedSubscript:v8];

  v6[2](v6, [v9 integerValue], 0);
}

- (void)xpcGetInitialSyncCompletedForPairingID:(id)a3 completion:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x1E695E898];
  CFPreferencesSynchronize(@"com.apple.pairedsyncd", @"mobile", *MEMORY[0x1E695E898]);
  v8 = CFPreferencesCopyValue(@"pairingIDInitialSyncSet", @"com.apple.pairedsyncd", @"mobile", v7);
  v9 = nr_daemon_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = nr_daemon_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v5 UUIDString];
      v23 = 136316162;
      v24 = "[NRPairingProxy xpcGetInitialSyncCompletedForPairingID:completion:]";
      v25 = 2114;
      v26 = v12;
      v27 = 2114;
      v28 = v8;
      v29 = 2114;
      v30 = @"com.apple.pairedsyncd";
      v31 = 2114;
      v32 = @"pairingIDInitialSyncSet";
      _os_log_impl(&dword_1E0ADF000, v11, OS_LOG_TYPE_DEFAULT, "%s[%{public}@]: retrieved %{public}@ from %{public}@/%{public}@", &v23, 0x34u);
    }
  }

  if (v8)
  {
    v13 = [v5 UUIDString];
    v14 = [v8 objectForKeyedSubscript:v13];
    v15 = v14 != 0;
  }

  else
  {
    v15 = 0;
  }

  v16 = nr_daemon_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v18 = nr_daemon_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v5 UUIDString];
      v20 = v19;
      v21 = "NO";
      v24 = "[NRPairingProxy xpcGetInitialSyncCompletedForPairingID:completion:]";
      v23 = 136315650;
      if (v15)
      {
        v21 = "YES";
      }

      v25 = 2114;
      v26 = v19;
      v27 = 2080;
      v28 = v21;
      _os_log_impl(&dword_1E0ADF000, v18, OS_LOG_TYPE_DEFAULT, "%s[%{public}@]: returning hasCompleted=%s", &v23, 0x20u);
    }
  }

  v6[2](v6, v15, 0);

  v22 = *MEMORY[0x1E69E9840];
}

- (void)xpcIsPhoneReadyToMigrateDevice:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v8 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__NRPairingProxy_xpcIsPhoneReadyToMigrateDevice_withCompletion___block_invoke;
    block[3] = &unk_1E86DB4B8;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(v8, block);
  }
}

void __64__NRPairingProxy_xpcIsPhoneReadyToMigrateDevice_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__NRPairingProxy_xpcIsPhoneReadyToMigrateDevice_withCompletion___block_invoke_2;
  v4[3] = &unk_1E86DB7B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 xpcIsPhoneReadyToMigrateDevice:v3 withCompletion:v4];
}

void __64__NRPairingProxy_xpcIsPhoneReadyToMigrateDevice_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__NRPairingProxy_xpcIsPhoneReadyToMigrateDevice_withCompletion___block_invoke_3;
  v8[3] = &unk_1E86DB788;
  v10 = *(a1 + 40);
  v11 = a2;
  v9 = v5;
  v7 = v5;
  [v6 runCompletionBlock:v8];
}

- (void)xpcIsAssertionActive:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v8 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__NRPairingProxy_xpcIsAssertionActive_withCompletion___block_invoke;
    block[3] = &unk_1E86DB4B8;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(v8, block);
  }
}

void __54__NRPairingProxy_xpcIsAssertionActive_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__NRPairingProxy_xpcIsAssertionActive_withCompletion___block_invoke_2;
  v4[3] = &unk_1E86DAD38;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 xpcIsAssertionActive:v3 withCompletion:v4];
}

void __54__NRPairingProxy_xpcIsAssertionActive_withCompletion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__NRPairingProxy_xpcIsAssertionActive_withCompletion___block_invoke_3;
  v9[3] = &unk_1E86DB620;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 runCompletionBlock:v9];
}

- (void)xpcUpdateWatchBuddyStage:(unsigned int)a3 forPairingID:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.pairunpairobliterate"])
  {
    v7 = [(NRPairingProxy *)self pairingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__NRPairingProxy_xpcUpdateWatchBuddyStage_forPairingID___block_invoke;
    block[3] = &unk_1E86DB7D8;
    v14 = a3;
    block[4] = self;
    v13 = v6;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = nr_daemon_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v16 = "[NRPairingProxy xpcUpdateWatchBuddyStage:forPairingID:]";
        _os_log_error_impl(&dword_1E0ADF000, v10, OS_LOG_TYPE_ERROR, "%s client missing entitlement", buf, 0xCu);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __56__NRPairingProxy_xpcUpdateWatchBuddyStage_forPairingID___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v8 = 136315394;
      v9 = "[NRPairingProxy xpcUpdateWatchBuddyStage:forPairingID:]_block_invoke";
      v10 = 1026;
      v11 = v5;
      _os_log_impl(&dword_1E0ADF000, v4, OS_LOG_TYPE_DEFAULT, "%s updating stage: %{public}d", &v8, 0x12u);
    }
  }

  v6 = [(NRPairingProxy *)*(a1 + 32) pairingServicesDelegate];
  [v6 xpcUpdateWatchBuddyStage:*(a1 + 48) forPairingID:*(a1 + 40)];

  v7 = *MEMORY[0x1E69E9840];
}

@end