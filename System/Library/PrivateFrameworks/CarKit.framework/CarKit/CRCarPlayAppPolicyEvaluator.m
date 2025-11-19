@interface CRCarPlayAppPolicyEvaluator
+ (id)_carIntentIdentifiers;
+ (id)allIntentIdentifiers;
- (BOOL)_automakerAppServiceContainsAppDeclaration:(id)a3;
- (BOOL)_checkIfDeclaration:(id)a3 supportsIntents:(id)a4 requireAllIntents:(BOOL)a5;
- (BOOL)_vehicleProtocolsIntersectAppProtocols:(id)a3 certificateSerial:(id)a4;
- (BOOL)isGeoSupported;
- (CRCarPlayAppPolicyEvaluator)initWithSession:(id)a3;
- (id)_retrievePunchThroughIdentifiersFromInfoResponse;
- (id)_vehicleForCurrentSession;
- (id)_vehicleProtocolsForCertificateSerial:(id)a3;
- (id)currentSession;
- (id)effectivePolicyForAppDeclaration:(id)a3 inVehicleWithCertificateSerial:(id)a4;
- (id)effectivePolicyForAppDeclaration:(id)a3 withVerifiedPunchThroughs:(id)a4;
- (unint64_t)_applicationCategoryForAppDeclaration:(id)a3 policy:(id)a4;
- (void)_hideAppIfPunchThroughExistsForBundleIdentifier:(id)a3 withPunchThroughsAppData:(id)a4 andAppPolicy:(id)a5;
- (void)_hideAppIfPunchThroughExistsForBundleIdentifier:(id)a3 withVerifiedPunchThroughs:(id)a4 andAppPolicy:(id)a5;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
- (void)fetchApplicationBundleIdentifiersForCarIntents:(id)a3;
- (void)setWantsGeoSupported;
- (void)updateGeoSupportedWithCompletion:(id)a3;
@end

@implementation CRCarPlayAppPolicyEvaluator

- (id)_vehicleForCurrentSession
{
  v3 = [(CRCarPlayAppPolicyEvaluator *)self currentSession];
  v4 = [v3 MFiCertificateSerialNumber];

  v5 = [(CRCarPlayAppPolicyEvaluator *)self pairedVehicleManager];
  v6 = [v5 vehicleForCertificateSerial:v4];

  return v6;
}

- (id)currentSession
{
  v3 = [(CRCarPlayAppPolicyEvaluator *)self session];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    sessionStatus = self->_sessionStatus;
    if (!sessionStatus)
    {
      v7 = objc_alloc_init(CARSessionStatus);
      v8 = self->_sessionStatus;
      self->_sessionStatus = v7;

      sessionStatus = self->_sessionStatus;
    }

    [(CARSessionStatus *)sessionStatus waitForSessionInitialization];
    v5 = [(CARSessionStatus *)self->_sessionStatus currentSession];
  }

  v9 = v5;

  return v9;
}

+ (id)_carIntentIdentifiers
{
  v7[7] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E696E6B0];
  v7[0] = *MEMORY[0x1E696E6A8];
  v7[1] = v2;
  v3 = *MEMORY[0x1E696E6D0];
  v7[2] = *MEMORY[0x1E696E6B8];
  v7[3] = v3;
  v4 = *MEMORY[0x1E696E690];
  v7[4] = *MEMORY[0x1E696E6C0];
  v7[5] = v4;
  v7[6] = *MEMORY[0x1E696E6C8];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:7];

  return v5;
}

+ (id)allIntentIdentifiers
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E696E6E0];
  v9[0] = *MEMORY[0x1E696E6E8];
  v9[1] = v3;
  v4 = *MEMORY[0x1E696E6A0];
  v9[2] = *MEMORY[0x1E696E698];
  v9[3] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];
  v6 = [a1 _carIntentIdentifiers];
  v7 = [v5 arrayByAddingObjectsFromArray:v6];

  return v7;
}

- (CRCarPlayAppPolicyEvaluator)initWithSession:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = CRCarPlayAppPolicyEvaluator;
  v6 = [(CRCarPlayAppPolicyEvaluator *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, a3);
    v8 = objc_alloc_init(CRCarPlayAppDenylist);
    [(CRCarPlayAppPolicyEvaluator *)v7 setDenylist:v8];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__CRCarPlayAppPolicyEvaluator_initWithSession___block_invoke;
    block[3] = &unk_1E82FBF70;
    v9 = v7;
    v22 = v9;
    if (initWithSession__onceToken != -1)
    {
      dispatch_once(&initWithSession__onceToken, block);
    }

    v10 = objc_alloc_init(CRPairedVehicleManager);
    pairedVehicleManager = v9->_pairedVehicleManager;
    v9->_pairedVehicleManager = v10;

    v12 = MEMORY[0x1E695DFA8];
    v13 = [MEMORY[0x1E698B0D0] lockedAppBundleIdentifiers];
    v14 = [v12 setWithSet:v13];

    v15 = [MEMORY[0x1E698B0D0] hiddenAppBundleIdentifiers];
    [v14 unionSet:v15];

    v16 = [MEMORY[0x1E695DFD8] setWithSet:v14];
    lockedOrHiddenApps = v9->_lockedOrHiddenApps;
    v9->_lockedOrHiddenApps = v16;

    v18 = [MEMORY[0x1E698B0F0] subjectMonitorRegistry];
    v19 = [v18 addMonitor:v9 subjectMask:1 subscriptionOptions:1];
  }

  return v7;
}

void __47__CRCarPlayAppPolicyEvaluator_initWithSession___block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = objc_opt_class();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, v1, CRCarPlayAppServicePolicyChangedHandler, @"com.apple.carkit.app.denylist-changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)setWantsGeoSupported
{
  if (![(CRCarPlayAppPolicyEvaluator *)self evaluatorWantsGeoManagement])
  {
    self->_evaluatorWantsGeoManagement = 1;
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v3 = dispatch_queue_create("com.apple.carplay.policy_geo_queue", v5);
    geoQueue = self->_geoQueue;
    self->_geoQueue = v3;

    [(CRCarPlayAppPolicyEvaluator *)self updateGeoSupported];
  }
}

- (void)updateGeoSupportedWithCompletion:(id)a3
{
  v4 = a3;
  if ([(CRCarPlayAppPolicyEvaluator *)self evaluatorWantsGeoManagement])
  {
    geoQueue = self->_geoQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__CRCarPlayAppPolicyEvaluator_updateGeoSupportedWithCompletion___block_invoke;
    v6[3] = &unk_1E82FC270;
    v6[4] = self;
    v7 = v4;
    dispatch_async(geoQueue, v6);
  }
}

void __64__CRCarPlayAppPolicyEvaluator_updateGeoSupportedWithCompletion___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
  v2 = [v4 currentCountrySupportsCarIntegration];
  *(*(a1 + 32) + 17) = v2;
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v2);
  }
}

- (BOOL)isGeoSupported
{
  if ([(CRCarPlayAppPolicyEvaluator *)self evaluatorWantsGeoManagement])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    geoQueue = self->_geoQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__CRCarPlayAppPolicyEvaluator_isGeoSupported__block_invoke;
    v6[3] = &unk_1E82FD160;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(geoQueue, v6);
    geoSupported = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    geoSupported = self->_geoSupported;
  }

  return geoSupported & 1;
}

- (id)_vehicleProtocolsForCertificateSerial:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    goto LABEL_4;
  }

  v6 = [(CRCarPlayAppPolicyEvaluator *)self currentSession];
  v5 = [v6 MFiCertificateSerialNumber];

  if (v5)
  {
LABEL_4:
    v7 = +[CRVehicleAccessoryManager sharedInstance];
    v8 = [v7 vehicleAccessoryForCertificateSerial:v5];
    v9 = v8;
    if (v8)
    {
      v10 = MEMORY[0x1E695DFD8];
      v11 = [v8 accessoryProtocols];
      v12 = [v10 setWithArray:v11];
    }

    else
    {
      v13 = [(CRCarPlayAppPolicyEvaluator *)self _vehicleForCurrentSession];
      v11 = v13;
      if (!v13)
      {
        v14 = 0;
        goto LABEL_9;
      }

      v12 = [v13 accessoryProtocols];
    }

    v14 = v12;
LABEL_9:

    v15 = v14;
    goto LABEL_10;
  }

  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CRCarPlayAppPolicyEvaluator _vehicleProtocolsForCertificateSerial:v5];
  }

  v15 = 0;
LABEL_10:

  return v15;
}

- (BOOL)_vehicleProtocolsIntersectAppProtocols:(id)a3 certificateSerial:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_DEFAULT, "Received app automaker protocols %{public}@", &v13, 0xCu);
  }

  v9 = [(CRCarPlayAppPolicyEvaluator *)self _vehicleProtocolsForCertificateSerial:v7];

  v10 = CarGeneralLogging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&dword_1C81FC000, v10, OS_LOG_TYPE_DEFAULT, "Received session automaker protocols %{public}@", &v13, 0xCu);
  }

  if (v9)
  {
    v11 = [v6 intersectsSet:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_automakerAppServiceContainsAppDeclaration:(id)a3
{
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = [v3 bundleIdentifier];
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__3;
    v21 = __Block_byref_object_dispose__3;
    v22 = 0;
    v5 = dispatch_semaphore_create(0);
    v6 = [MEMORY[0x1E696AFB0] UUID];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __74__CRCarPlayAppPolicyEvaluator__automakerAppServiceContainsAppDeclaration___block_invoke;
    v14 = &unk_1E82FC548;
    v16 = &v17;
    v7 = v5;
    v15 = v7;
    [CRAppClipsDeclarationClient fetchSupportedAppClipsForPairedVehicleIdentifier:v6 completion:&v11];
    v8 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v7, v8);
    v9 = [v18[5] containsObject:{v4, v11, v12, v13, v14}];

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __74__CRCarPlayAppPolicyEvaluator__automakerAppServiceContainsAppDeclaration___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithArray:a2];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = CarGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __74__CRCarPlayAppPolicyEvaluator__automakerAppServiceContainsAppDeclaration___block_invoke_cold_1();
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_checkIfDeclaration:(id)a3 supportsIntents:(id)a4 requireAllIntents:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v9 = [MEMORY[0x1E695DFD8] setWithArray:v8];
  v10 = [v7 bundleIdentifier];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2050000000;
  v11 = getLSApplicationRecordClass_softClass;
  v35 = getLSApplicationRecordClass_softClass;
  if (!getLSApplicationRecordClass_softClass)
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __getLSApplicationRecordClass_block_invoke;
    v31[3] = &unk_1E82FC8F8;
    v31[4] = &v32;
    __getLSApplicationRecordClass_block_invoke(v31);
    v11 = v33[3];
  }

  v12 = v11;
  _Block_object_dispose(&v32, 8);
  v26 = 0;
  v13 = [[v11 alloc] initWithBundleIdentifier:v10 allowPlaceholder:0 error:&v26];
  v14 = v26;
  if (!v13)
  {
    v17 = CarGeneralLogging();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CRCarPlayAppPolicyEvaluator _checkIfDeclaration:supportsIntents:requireAllIntents:];
    }

    goto LABEL_15;
  }

  v15 = MEMORY[0x1E695DFD8];
  v16 = [v13 supportedIntents];
  v17 = [v15 setWithArray:v16];

  if (!-[NSObject count](v17, "count") || (!v5 ? (v18 = [v9 intersectsSet:v17]) : (v18 = objc_msgSend(v9, "isSubsetOfSet:", v17)), (v18 & 1) == 0))
  {
    v20 = [v13 applicationExtensionRecords];
    if ([v20 count])
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __85__CRCarPlayAppPolicyEvaluator__checkIfDeclaration_supportsIntents_requireAllIntents___block_invoke;
      v22[3] = &unk_1E82FD188;
      v25 = v5;
      v24 = &v27;
      v23 = v9;
      [v20 enumerateObjectsUsingBlock:v22];
    }

LABEL_15:
    v19 = *(v28 + 24);
    goto LABEL_16;
  }

  v19 = 1;
LABEL_16:

  _Block_object_dispose(&v27, 8);
  return v19 & 1;
}

void __85__CRCarPlayAppPolicyEvaluator__checkIfDeclaration_supportsIntents_requireAllIntents___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = [a2 supportedIntents];
  v9 = [v5 setWithArray:v6];

  v7 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    v8 = [v7 isSubsetOfSet:v9];
  }

  else
  {
    v8 = [v7 intersectsSet:v9];
  }

  *(*(*(a1 + 40) + 8) + 24) = v8;
  *a3 = *(*(*(a1 + 40) + 8) + 24);
}

- (unint64_t)_applicationCategoryForAppDeclaration:(id)a3 policy:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 _applicationCategory];
  if (!v7)
  {
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CRCarPlayAppPolicyEvaluator _applicationCategoryForAppDeclaration:v5 policy:v8];
    }

    if ([v6 launchUsingTemplateUI])
    {
      if ([v5 supportsAudio])
      {
        goto LABEL_27;
      }

      if ([v5 supportsMaps])
      {
        v7 = 8;
        goto LABEL_28;
      }

      if ([v5 supportsCalling])
      {
        v7 = 4;
        goto LABEL_28;
      }

      if ([v5 supportsMessaging])
      {
        v7 = 2;
        goto LABEL_28;
      }

      if ([v5 supportsCharging])
      {
        v7 = 256;
        goto LABEL_28;
      }

      if ([v5 supportsParking])
      {
        v7 = 512;
        goto LABEL_28;
      }

      if ([v5 supportsQuickOrdering])
      {
        v7 = 128;
        goto LABEL_28;
      }

      if ([v5 supportsFueling])
      {
        v7 = 2048;
        goto LABEL_28;
      }

      if ([v5 supportsDrivingTask])
      {
        v7 = 4096;
        goto LABEL_28;
      }

      if ([v5 supportsPublicSafety])
      {
        v7 = 0x2000;
        goto LABEL_28;
      }

      if ([v5 supportsVideo])
      {
        v7 = 0x4000;
        goto LABEL_28;
      }
    }

    if (([v6 launchUsingMusicUIService] & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_27:
    v7 = 16;
  }

LABEL_28:

  return v7;
}

- (id)effectivePolicyForAppDeclaration:(id)a3 inVehicleWithCertificateSerial:(id)a4
{
  v83 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v68 = a4;
  v7 = objc_alloc_init(CRCarPlayAppPolicy);
  if (v6)
  {
    v8 = [(CRCarPlayAppPolicyEvaluator *)self denylist];
    v9 = [v6 bundleIdentifier];
    v10 = [v8 containsBundleIdentifier:v9];

    if ((v10 & 1) == 0)
    {
      v65 = [v6 launchUsingSiri];
      v11 = [v6 launchNotificationsUsingSiri];
      v12 = [v6 supportsTemplates];
      if ([v6 isSystemApp])
      {
        if ([v6 requiresGeoSupport])
        {
          v63 = v12;
          v13 = [(CRCarPlayAppPolicyEvaluator *)self isGeoSupported];
          v14 = 1;
        }

        else
        {
          v13 = [v6 supportsVideo] ^ 1;
          v63 = v13 & v12;
          v14 = v13;
        }
      }

      else
      {
        v63 = v12;
        v13 = 0;
        v14 = 0;
      }

      v15 = [v6 supportsPlayableContent];
      if ([v6 supportsAutomakerAppService])
      {
        v16 = [(CRCarPlayAppPolicyEvaluator *)self _automakerAppServiceContainsAppDeclaration:v6];
      }

      else
      {
        v16 = 0;
      }

      *&v64[4] = [v6 autoMakerProtocols];
      if (*&v64[4])
      {
        v17 = [(CRCarPlayAppPolicyEvaluator *)self _vehicleProtocolsIntersectAppProtocols:*&v64[4] certificateSerial:v68];
        *v64 = 1;
      }

      else
      {
        *v64 = [v6 supportsAutomakerAppService];
        v17 = 0;
      }

      if (v16 || v17)
      {
        v18 = +[CRCarPlayAppPolicyEvaluator _carIntentIdentifiers];
        v62 = [(CRCarPlayAppPolicyEvaluator *)self _appWithDeclaration:v6 supportsAnyIntents:v18];

        v13 = 1;
        v19 = 1;
        v20 = 1;
      }

      else
      {
        v62 = 0;
        v19 = v15 | v13;
        v20 = v15 | v14;
      }

      v21 = [v6 supportsPublicSafety];
      v67 = v21 | v13;
      v22 = v21 | v19;
      v23 = v21 | v20;
      if (([v6 supportsMessaging] & 1) != 0 || objc_msgSend(v6, "supportsCommunication"))
      {
        v24 = *MEMORY[0x1E696E6A0];
        v78[0] = *MEMORY[0x1E696E698];
        v78[1] = v24;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
        v26 = [(CRCarPlayAppPolicyEvaluator *)self _appWithDeclaration:v6 supportsAllIntents:v25];

        v27 = v67;
        if (v26)
        {
          v27 = [v6 supportsTemplates];
          v11 = 1;
          v65 = [v6 supportsTemplates] ^ 1;
          LOBYTE(v67) = 1;
          v22 = 1;
          v23 = 1;
        }
      }

      else
      {
        v27 = v67;
      }

      if (([v6 supportsCalling] & 1) != 0 || objc_msgSend(v6, "supportsCommunication"))
      {
        v28 = *MEMORY[0x1E696E6E0];
        v77[0] = *MEMORY[0x1E696E6E8];
        v77[1] = v28;
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
        v30 = [(CRCarPlayAppPolicyEvaluator *)self _appWithDeclaration:v6 supportsAnyIntents:v29];

        if (v30)
        {
          v27 = [v6 supportsTemplates];
          v11 = 1;
          v65 = [v6 supportsTemplates] ^ 1;
          LOBYTE(v67) = 1;
          v22 = 1;
          v23 = 1;
        }
      }

      if (([v6 supportsMaps] & 1) != 0 || (objc_msgSend(v6, "supportsAudio") & 1) != 0 || (objc_msgSend(v6, "supportsCharging") & 1) != 0 || (objc_msgSend(v6, "supportsParking") & 1) != 0 || (objc_msgSend(v6, "supportsQuickOrdering") & 1) != 0 || (objc_msgSend(v6, "supportsFueling") & 1) != 0 || objc_msgSend(v6, "supportsDrivingTask"))
      {
        v27 = 1;
        v22 = 1;
        v23 = 1;
      }

      if (([v6 supportsParking] & 1) != 0 || (objc_msgSend(v6, "supportsCharging") & 1) != 0 || (v31 = objc_msgSend(v6, "supportsDrivingTask"), v32 = v67, v31))
      {
        v11 = 0;
        v32 = 1;
      }

      v61 = v32;
      if ([v6 supportsVideo])
      {
        v33 = [(CRCarPlayAppPolicyEvaluator *)self currentSession];
        v34 = [v33 configuration];
        v35 = [v34 videoPlaybackSupported];

        v22 |= v35;
        v27 |= v35;
        *v64 = 1;
        v23 = 1;
      }

      v36 = [v6 bundleIdentifier];
      if ([v36 isEqualToString:@"com.apple.Home"])
      {
      }

      else
      {
        v37 = [v6 bundleIdentifier];
        v38 = [v37 isEqualToString:@"com.apple.shortcuts"];

        if ((v38 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      v65 = 0;
      v11 = 1;
LABEL_44:
      v39 = [v6 bundleIdentifier];
      v40 = [v39 isEqualToString:@"com.apple.mobilephone"];

      v41 = [v6 bundleIdentifier];
      v42 = [v41 isEqualToString:@"com.apple.MobileSMS"];

      if (v42)
      {
        v23 = 1;
        LOBYTE(v22) = 1;
        LOBYTE(v27) = 1;
        v63 = 1;
        v66 = 0;
        LOBYTE(v67) = 1;
        v60 = 1;
      }

      else
      {
        v66 = (v40 ^ 1) & v65;
        v60 = (v40 ^ 1) & v11;
        if (((v22 | v27) & 1) == 0)
        {
          v55 = 0;
          LOBYTE(v27) = 0;
          goto LABEL_62;
        }
      }

      lockedOrHiddenApps = self->_lockedOrHiddenApps;
      v44 = [v6 bundleIdentifier];
      v45 = [(NSSet *)lockedOrHiddenApps containsObject:v44];

      if (v45)
      {
        v46 = CarGeneralLogging();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = [v6 bundleIdentifier];
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v47;
          _os_log_impl(&dword_1C81FC000, v46, OS_LOG_TYPE_DEFAULT, "Application locked by policy: %{public}@", &buf, 0xCu);
        }

        LOBYTE(v27) = 0;
        v48 = 0;
LABEL_65:

        v55 = !v45;
        goto LABEL_66;
      }

      if (v22)
      {
        v46 = [v6 bundleIdentifier];
        v69 = 0;
        v70 = &v69;
        v71 = 0x2020000000;
        v49 = getkAssistantDirectActionEventKeySymbolLoc_ptr;
        v72 = getkAssistantDirectActionEventKeySymbolLoc_ptr;
        if (!getkAssistantDirectActionEventKeySymbolLoc_ptr)
        {
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          v80 = __getkAssistantDirectActionEventKeySymbolLoc_block_invoke;
          v81 = &unk_1E82FC8F8;
          v82 = &v69;
          __getkAssistantDirectActionEventKeySymbolLoc_block_invoke(&buf);
          v49 = v70[3];
        }

        _Block_object_dispose(&v69, 8);
        if (!v49)
        {
          [CRCarPlayAppPolicyEvaluator effectivePolicyForAppDeclaration:inVehicleWithCertificateSerial:];
          __break(1u);
        }

        v50 = *v49;
        if (v50)
        {
          v51 = v66;
        }

        else
        {
          v51 = 0;
        }

        if (v51 == 1)
        {
          v76[0] = v46;
          v75[0] = @"__bundleId";
          v75[1] = @"__supportsCarFullScreen";
          v52 = MEMORY[0x1E696AD98];
          v53 = v50;
          v54 = [v52 numberWithBool:v27 & 1];
          v76[1] = v54;
          v75[2] = v53;
          v76[2] = &unk_1F47F26B8;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:3];
        }

        else
        {
          v73[1] = @"__supportsCarFullScreen";
          v74[0] = v46;
          v73[0] = @"__bundleId";
          v56 = MEMORY[0x1E696AD98];
          v57 = v50;
          v54 = [v56 numberWithBool:v27 & 1];
          v74[1] = v54;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:2];
        }
        v48 = ;

        goto LABEL_65;
      }

      v55 = 0;
LABEL_62:
      v48 = 0;
LABEL_66:
      [(CRCarPlayAppPolicy *)v7 setCarPlayCapable:v23 & 1];
      [(CRCarPlayAppPolicy *)v7 setCarPlaySupported:v55];
      [(CRCarPlayAppPolicy *)v7 setCanDisplayOnCarScreen:v27 & 1];
      [(CRCarPlayAppPolicy *)v7 setLaunchUsingSiri:v66];
      [(CRCarPlayAppPolicy *)v7 setLaunchNotificationsUsingSiri:v60];
      [(CRCarPlayAppPolicy *)v7 setSiriActivationOptions:v48];
      if (v27)
      {
        v58 = 0;
      }

      else
      {
        v58 = [v6 supportsPlayableContent];
      }

      [(CRCarPlayAppPolicy *)v7 setLaunchUsingMusicUIService:v58];
      [(CRCarPlayAppPolicy *)v7 setBadgesAppIcon:v67 & 1];
      [(CRCarPlayAppPolicy *)v7 setShowsNotifications:v61 & 1];
      [(CRCarPlayAppPolicy *)v7 setHandlesCarIntents:v62];
      [(CRCarPlayAppPolicy *)v7 setLaunchUsingTemplateUI:v63];
      [(CRCarPlayAppPolicy *)v7 setSessionDependentPolicy:*v64];
      [(CRCarPlayAppPolicy *)v7 setApplicationCategory:[(CRCarPlayAppPolicyEvaluator *)self _applicationCategoryForAppDeclaration:v6 policy:v7]];
    }
  }

  return v7;
}

- (id)effectivePolicyForAppDeclaration:(id)a3 withVerifiedPunchThroughs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRCarPlayAppPolicyEvaluator *)self effectivePolicyForAppDeclaration:v6 inVehicleWithCertificateSerial:0];
  v9 = [v6 bundleIdentifier];
  if (v7)
  {
    [(CRCarPlayAppPolicyEvaluator *)self _hideAppIfPunchThroughExistsForBundleIdentifier:v9 withVerifiedPunchThroughs:v7 andAppPolicy:v8];
  }

  else
  {
    v10 = [(CRCarPlayAppPolicyEvaluator *)self _vehicleForCurrentSession];
    v11 = [v10 oemPunchThroughsAsApp];
    v12 = [v11 mutableCopy];

    v13 = [v6 bundleIdentifier];
    v14 = [v12 valueForKey:v13];

    if (v14)
    {
      [(CRCarPlayAppPolicyEvaluator *)self _hideAppIfPunchThroughExistsForBundleIdentifier:v9 withPunchThroughsAppData:v14 andAppPolicy:v8];
    }
  }

  return v8;
}

- (void)fetchApplicationBundleIdentifiersForCarIntents:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696ABD0];
  v6 = +[CRCarPlayAppPolicyEvaluator _carIntentIdentifiers];
  v7 = [v5 _intents_extensionMatchingAttributesForIntents:v6];

  v8 = MEMORY[0x1E696ABD0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__CRCarPlayAppPolicyEvaluator_fetchApplicationBundleIdentifiersForCarIntents___block_invoke;
  v10[3] = &unk_1E82FD1B0;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v8 extensionsWithMatchingAttributes:v7 completion:v10];
}

void __78__CRCarPlayAppPolicyEvaluator_fetchApplicationBundleIdentifiersForCarIntents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v27 = v6;
    v30 = [MEMORY[0x1E695DFA8] set];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v28 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
    v10 = a1;
    if (v9)
    {
      v11 = v9;
      v12 = *v32;
      v13 = 0x1E6963000uLL;
      v29 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v15 = [*(*(&v31 + 1) + 8 * i) _plugIn];
          v16 = [v15 containingUrl];

          if (v16)
          {
            v17 = [*(v13 + 1504) applicationProxyForBundleURL:v16];
            if (v17)
            {
              v18 = [CRCarPlayAppDeclaration declarationForAppProxy:v17];
              v19 = [v18 autoMakerProtocols];
              if (v19 && [*(v10 + 32) _vehicleProtocolsIntersectAppProtocols:v19 certificateSerial:0])
              {
                [v18 bundleIdentifier];
                v20 = v8;
                v21 = v13;
                v23 = v22 = v10;
                [v30 addObject:v23];

                v10 = v22;
                v13 = v21;
                v8 = v20;
                v12 = v29;
              }
            }
          }
        }

        v11 = [v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v11);
    }

    v24 = CarGeneralLogging();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v36 = v30;
      _os_log_impl(&dword_1C81FC000, v24, OS_LOG_TYPE_INFO, "car intents applications: %@", buf, 0xCu);
    }

    v25 = *(v10 + 40);
    v7 = v27;
    if (v25)
    {
      (*(v25 + 16))(v25, v30, 0);
    }

    v5 = v28;
  }

  else
  {
    v26 = *(a1 + 40);
    if (v26)
    {
      (*(v26 + 16))(v26, 0, v7);
    }
  }
}

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  v5 = MEMORY[0x1E695DFA8];
  v6 = [MEMORY[0x1E698B0D0] lockedAppBundleIdentifiers];
  v10 = [v5 setWithSet:v6];

  v7 = [MEMORY[0x1E698B0D0] hiddenAppBundleIdentifiers];
  [v10 unionSet:v7];

  v8 = [MEMORY[0x1E695DFD8] setWithSet:v10];
  lockedOrHiddenApps = self->_lockedOrHiddenApps;
  self->_lockedOrHiddenApps = v8;
}

- (void)_hideAppIfPunchThroughExistsForBundleIdentifier:(id)a3 withPunchThroughsAppData:(id)a4 andAppPolicy:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CarGeneralLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81FC000, v11, OS_LOG_TYPE_DEFAULT, "AppPolicy infoResponse punchThroughs check", buf, 2u);
  }

  v12 = [v9 punchThroughs];
  v13 = v12;
  if (v12 && [v12 count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = [(CRCarPlayAppPolicyEvaluator *)self _retrievePunchThroughIdentifiersFromInfoResponse];
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          if ([v13 containsObject:*(*(&v20 + 1) + 8 * i)])
          {
            v19 = CarGeneralLogging();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v26 = v8;
              _os_log_impl(&dword_1C81FC000, v19, OS_LOG_TYPE_DEFAULT, "AppPolicy hiding app: %@", buf, 0xCu);
            }

            [v10 setCarPlaySupported:0];
            goto LABEL_19;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v14 = CarGeneralLogging();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v8;
      _os_log_impl(&dword_1C81FC000, v14, OS_LOG_TYPE_DEFAULT, "AppPolicy No punchThrough identifier in CRVehicle for app: %@", buf, 0xCu);
    }
  }

LABEL_19:
}

- (void)_hideAppIfPunchThroughExistsForBundleIdentifier:(id)a3 withVerifiedPunchThroughs:(id)a4 andAppPolicy:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CarGeneralLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_1C81FC000, v11, OS_LOG_TYPE_DEFAULT, "AppPolicy asset punchThroughs check", &v21, 2u);
  }

  v12 = [(CRCarPlayAppPolicyEvaluator *)self _vehicleForCurrentSession];
  v13 = [v12 oemPunchThroughsAsApp];
  v14 = [v13 mutableCopy];

  v15 = v9;
  v16 = v15;
  if (v15 && [v15 count])
  {
    v17 = CarGeneralLogging();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v8;
      _os_log_impl(&dword_1C81FC000, v17, OS_LOG_TYPE_DEFAULT, "AppPolicy hiding app: %@", &v21, 0xCu);
    }

    [v10 setCarPlaySupported:0];
    v18 = [[CROEMPunchThroughsAppData alloc] initWithPunchThroughIDs:v16];
    [v14 setValue:v18 forKey:v8];
  }

  else
  {
    v19 = CarGeneralLogging();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_1C81FC000, v19, OS_LOG_TYPE_DEFAULT, "AppPolicy no punchThroughs match between asset and infoResponse", &v21, 2u);
    }

    [v14 removeObjectForKey:v8];
  }

  [v12 setOemPunchThroughsAsApp:v14];
  v20 = [(CRCarPlayAppPolicyEvaluator *)self pairedVehicleManager];
  [v20 saveVehicle:v12 completion:&__block_literal_global_22];
}

void __118__CRCarPlayAppPolicyEvaluator__hideAppIfPunchThroughExistsForBundleIdentifier_withVerifiedPunchThroughs_andAppPolicy___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = CarGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __118__CRCarPlayAppPolicyEvaluator__hideAppIfPunchThroughExistsForBundleIdentifier_withVerifiedPunchThroughs_andAppPolicy___block_invoke_cold_1();
    }
  }
}

- (id)_retrievePunchThroughIdentifiersFromInfoResponse
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [(CRCarPlayAppPolicyEvaluator *)self currentSession];
  v5 = [v4 configuration];
  v6 = [v5 displays];

  v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v12 = [v11 oemPunchThroughs];
        v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v20;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v20 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [*(*(&v19 + 1) + 8 * j) identifier];
              [v3 addObject:v17];
            }

            v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v14);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  return v3;
}

void __74__CRCarPlayAppPolicyEvaluator__automakerAppServiceContainsAppDeclaration___block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1C81FC000, v0, OS_LOG_TYPE_ERROR, "failed to fetch app clip declarations: %@", v1, 0xCu);
}

- (void)_checkIfDeclaration:supportsIntents:requireAllIntents:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1C81FC000, v1, OS_LOG_TYPE_ERROR, "Failed to lookup app %@ with error: %@", v2, 0x16u);
}

- (void)_applicationCategoryForAppDeclaration:(void *)a1 policy:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_ERROR, "App with unknown category: %@", v4, 0xCu);
}

- (uint64_t)effectivePolicyForAppDeclaration:inVehicleWithCertificateSerial:.cold.1()
{
  dlerror();
  v0 = abort_report_np();
  return __118__CRCarPlayAppPolicyEvaluator__hideAppIfPunchThroughExistsForBundleIdentifier_withVerifiedPunchThroughs_andAppPolicy___block_invoke_cold_1(v0);
}

void __118__CRCarPlayAppPolicyEvaluator__hideAppIfPunchThroughExistsForBundleIdentifier_withVerifiedPunchThroughs_andAppPolicy___block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1C81FC000, v0, OS_LOG_TYPE_ERROR, "Failed to save vehicle with OEM PunchThroughs as app with error: %@", v1, 0xCu);
}

@end