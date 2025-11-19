@interface NSSCompanionServer
+ (void)associateProtobufHandlers:(id)a3;
- (BOOL)handleDarwinNotification:(id)a3;
- (BOOL)messageIdentifier:(id)a3 hasBeenDeliveredWithContext:(id)a4;
- (BOOL)shouldFetchBuiltinAppsNotice;
- (NPSDomainAccessor)nssDomainAccessor;
- (NPSManager)npsManager;
- (NSSCompanionServer)init;
- (id)_fullFileNamesFrom:(id)a3 files:(id)a4;
- (id)acceptConnection:(id)a3;
- (void)cancelActiveLogFileTranfers;
- (void)cancelDiagnosticLogTranfer:(id)a3 withCompletion:(id)a4;
- (void)deleteDiagnosticLogFile:(id)a3 withResult:(id)a4;
- (void)earlyIvarInitialzation;
- (void)fetchBetaEnrollmentStatus:(id)a3;
- (void)getAboutInfo:(id)a3;
- (void)getAccountsInfoForAccountType:(id)a3 completionHandler:(id)a4;
- (void)getDiagnosticLogFileFromGizmo:(id)a3 withResults:(id)a4;
- (void)getDiagnosticLogsInfo:(id)a3;
- (void)getFullProfileInfoWithIdentifier:(id)a3 includeManagedPayloads:(BOOL)a4 completionHandler:(id)a5;
- (void)getLegalDocuments:(id)a3;
- (void)getLocalesInfo:(id)a3;
- (void)getProfilesInfo:(id)a3;
- (void)getUsage:(id)a3;
- (void)getUsageData:(id)a3;
- (void)getWatchFaces:(id)a3;
- (void)handleAboutInfoRespMsg:(id)a3;
- (void)handleAccountsInfoRespMsg:(id)a3;
- (void)handleAirplaneModeSettingsRespMsg:(id)a3;
- (void)handleBetaEnrollmentRespMsg:(id)a3;
- (void)handleCancelLogTransferRespMsg:(id)a3;
- (void)handleDiagnosticLogsInfoRespMsg:(id)a3;
- (void)handleIncomingDiagnosticLogFile:(id)a3 withContext:(id)a4;
- (void)handleIncomingFileTransferProgressMsg:(id)a3;
- (void)handleInstallProfileRespMsg:(id)a3;
- (void)handleLPMAutoDisabledRespMsg:(id)a3;
- (void)handleLegalDocumentsRespMsg:(id)a3;
- (void)handleLocalesInfoRespMsg:(id)a3;
- (void)handleLogDeleteRespMsg:(id)a3;
- (void)handleMemoryPressureEvent;
- (void)handleProfileDataRespMsg:(id)a3;
- (void)handleProfilesInfoRespMsg:(id)a3;
- (void)handlePurgeUsageBundleRespMsg:(id)a3;
- (void)handleRefreshAirplaneModeSettingsReqMsg:(id)a3;
- (void)handleRemoveProfileRespMsg:(id)a3;
- (void)handleUpdateEnrollmentStatusRespMsg:(id)a3;
- (void)handleUsageRespMsg:(id)a3;
- (void)installProfile:(id)a3 replyHandler:(id)a4;
- (void)invalidateOutstandingRequestsWithError:(id)a3;
- (void)obliterateGizmoPreservingeSIM:(BOOL)a3 completionHandler:(id)a4;
- (void)purgeUsageBundle:(id)a3 replyHandler:(id)a4;
- (void)rebootDevice;
- (void)recordSoftwareUpdateSpaceFailure:(id)a3 osBeingUpdatedTo:(id)a4 completion:(id)a5;
- (void)removeProfileWithIdentifier:(id)a3 replyHandler:(id)a4;
- (void)resetBecauseTheActivePairedDeviceChanged;
- (void)retrieveAirplaneModeSettingsWithCompletionHandler:(id)a3;
- (void)retrieveDiagnosticLogTransferProgress:(id)a3 withProgress:(id)a4;
- (void)setAirplaneModeSettings:(id)a3 withCompletionHandler:(id)a4;
- (void)setDeviceName:(id)a3;
- (void)setWatchFaceIdentifier:(id)a3 forFocusModeIdentifier:(id)a4 completionHandler:(id)a5;
- (void)updateCompanionGenerativeModelsEligibilityState:(id)a3;
@end

@implementation NSSCompanionServer

- (NSSCompanionServer)init
{
  v8.receiver = self;
  v8.super_class = NSSCompanionServer;
  v2 = [(NSSServer *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_shouldRecreateNSSDomainAccessor = 0;
    v2->_shouldRecreateNPSManager = 0;
    v4 = objc_alloc_init(NSSCompanionSyncManager);
    syncManager = v3->_syncManager;
    v3->_syncManager = v4;

    v6 = +[NSSGizmoPowerMonitor sharedMonitor];
  }

  return v3;
}

- (void)earlyIvarInitialzation
{
  v79.receiver = self;
  v79.super_class = NSSCompanionServer;
  [(NSSServer *)&v79 earlyIvarInitialzation];
  v3 = objc_opt_new();
  coalescedUsageRequests = self->_coalescedUsageRequests;
  self->_coalescedUsageRequests = v3;

  v5 = objc_opt_new();
  usageRequests = self->_usageRequests;
  self->_usageRequests = v5;

  v7 = objc_opt_new();
  purgeUsageBundleRequests = self->_purgeUsageBundleRequests;
  self->_purgeUsageBundleRequests = v7;

  v9 = objc_opt_new();
  diagnosticLogFileRequests = self->_diagnosticLogFileRequests;
  self->_diagnosticLogFileRequests = v9;

  v11 = objc_opt_new();
  diagnosticLogsInfoRequests = self->_diagnosticLogsInfoRequests;
  self->_diagnosticLogsInfoRequests = v11;

  v13 = objc_opt_new();
  cancelLogTransferRequests = self->_cancelLogTransferRequests;
  self->_cancelLogTransferRequests = v13;

  v15 = objc_opt_new();
  airplaneModeSettingsRequests = self->_airplaneModeSettingsRequests;
  self->_airplaneModeSettingsRequests = v15;

  v17 = objc_opt_new();
  logDeleteRequests = self->_logDeleteRequests;
  self->_logDeleteRequests = v17;

  v19 = objc_opt_new();
  aboutInfoRequests = self->_aboutInfoRequests;
  self->_aboutInfoRequests = v19;

  v21 = objc_opt_new();
  obliterationRequests = self->_obliterationRequests;
  self->_obliterationRequests = v21;

  v23 = objc_opt_new();
  accountsInfoRequests = self->_accountsInfoRequests;
  self->_accountsInfoRequests = v23;

  v25 = objc_opt_new();
  profilesInfoRequests = self->_profilesInfoRequests;
  self->_profilesInfoRequests = v25;

  v27 = objc_opt_new();
  profileDataRequests = self->_profileDataRequests;
  self->_profileDataRequests = v27;

  v29 = objc_opt_new();
  installProfileRequests = self->_installProfileRequests;
  self->_installProfileRequests = v29;

  v31 = objc_opt_new();
  removeProfileRequests = self->_removeProfileRequests;
  self->_removeProfileRequests = v31;

  v33 = objc_opt_new();
  legalDocumentsRequests = self->_legalDocumentsRequests;
  self->_legalDocumentsRequests = v33;

  v35 = objc_opt_new();
  localesInfoRequests = self->_localesInfoRequests;
  self->_localesInfoRequests = v35;

  v37 = objc_opt_new();
  betaEnrollmentStatusRequests = self->_betaEnrollmentStatusRequests;
  self->_betaEnrollmentStatusRequests = v37;

  v39 = objc_opt_new();
  updateBetaEnrollmentStatusRequests = self->_updateBetaEnrollmentStatusRequests;
  self->_updateBetaEnrollmentStatusRequests = v39;

  v41 = objc_opt_new();
  usageReplyTimers = self->_usageReplyTimers;
  self->_usageReplyTimers = v41;

  v43 = objc_opt_new();
  purgeUsageBundleReplyTimers = self->_purgeUsageBundleReplyTimers;
  self->_purgeUsageBundleReplyTimers = v43;

  v45 = objc_opt_new();
  diagnosticLogFileReplyTimers = self->_diagnosticLogFileReplyTimers;
  self->_diagnosticLogFileReplyTimers = v45;

  v47 = objc_opt_new();
  diagnosticLogsInfoReplyTimers = self->_diagnosticLogsInfoReplyTimers;
  self->_diagnosticLogsInfoReplyTimers = v47;

  v49 = objc_opt_new();
  cancelLogTransferReplyTimers = self->_cancelLogTransferReplyTimers;
  self->_cancelLogTransferReplyTimers = v49;

  v51 = objc_opt_new();
  airplaneModeSettingsReplyTimers = self->_airplaneModeSettingsReplyTimers;
  self->_airplaneModeSettingsReplyTimers = v51;

  v53 = objc_opt_new();
  logDeleteReplyTimers = self->_logDeleteReplyTimers;
  self->_logDeleteReplyTimers = v53;

  v55 = objc_opt_new();
  aboutInfoReplyTimers = self->_aboutInfoReplyTimers;
  self->_aboutInfoReplyTimers = v55;

  v57 = objc_opt_new();
  obliterationDeliveryTimers = self->_obliterationDeliveryTimers;
  self->_obliterationDeliveryTimers = v57;

  v59 = objc_opt_new();
  accountsInfoReplyTimers = self->_accountsInfoReplyTimers;
  self->_accountsInfoReplyTimers = v59;

  v61 = objc_opt_new();
  profilesInfoReplyTimers = self->_profilesInfoReplyTimers;
  self->_profilesInfoReplyTimers = v61;

  v63 = objc_opt_new();
  profileDataReplyTimers = self->_profileDataReplyTimers;
  self->_profileDataReplyTimers = v63;

  v65 = objc_opt_new();
  installProfileReplyTimers = self->_installProfileReplyTimers;
  self->_installProfileReplyTimers = v65;

  v67 = objc_opt_new();
  removeProfileReplyTimers = self->_removeProfileReplyTimers;
  self->_removeProfileReplyTimers = v67;

  v69 = objc_opt_new();
  legalDocumentsReplyTimers = self->_legalDocumentsReplyTimers;
  self->_legalDocumentsReplyTimers = v69;

  v71 = objc_opt_new();
  localesInfoReplyTimers = self->_localesInfoReplyTimers;
  self->_localesInfoReplyTimers = v71;

  v73 = objc_opt_new();
  betaEnrollmentStatusReplyTimers = self->_betaEnrollmentStatusReplyTimers;
  self->_betaEnrollmentStatusReplyTimers = v73;

  v75 = objc_opt_new();
  updateBetaEnrollmentStatusReplyTimers = self->_updateBetaEnrollmentStatusReplyTimers;
  self->_updateBetaEnrollmentStatusReplyTimers = v75;

  v77 = objc_opt_new();
  fileTransferProgress = self->_fileTransferProgress;
  self->_fileTransferProgress = v77;
}

- (id)acceptConnection:(id)a3
{
  v4 = a3;
  v5 = [[NSSCompanionConnectionHandler alloc] initWithConnection:v4 delegate:self];

  return v5;
}

- (void)resetBecauseTheActivePairedDeviceChanged
{
  [(NSSCompanionServer *)self handleMemoryPressureEvent];
  v3 = self && self->_shouldRecreateNSSDomainAccessor || self->_nssDomainAccessor != 0;
  self->_shouldRecreateNSSDomainAccessor = v3;
  v4 = self->_shouldRecreateNPSManager || self->_npsManager != 0;
  self->_shouldRecreateNPSManager = v4;
  nssDomainAccessor = self->_nssDomainAccessor;
  self->_nssDomainAccessor = 0;

  npsManager = self->_npsManager;
  self->_npsManager = 0;

  v14 = NSLocalizedFailureReasonErrorKey;
  v15 = @"Watch switch invalidated request";
  v7 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v8 = [NSError errorWithDomain:@"com.apple.NanoSystemSettings" code:333 userInfo:v7];

  [(NSSCompanionServer *)self invalidateOutstandingRequestsWithError:v8];
  v9 = [(NSSServer *)self activeDeviceID];

  if (v9)
  {
    if (self->_shouldRecreateNSSDomainAccessor)
    {
      self->_shouldRecreateNSSDomainAccessor = 0;
      v10 = sub_100003F24();
      v11 = self->_nssDomainAccessor;
      self->_nssDomainAccessor = v10;
    }

    if (self->_shouldRecreateNPSManager)
    {
      self->_shouldRecreateNPSManager = 0;
      v12 = sub_100003F64();
      v13 = self->_npsManager;
      self->_npsManager = v12;
    }
  }
}

- (void)invalidateOutstandingRequestsWithError:(id)a3
{
  v4 = a3;
  v5 = [(NSSServer *)self idsQueue];
  dispatch_assert_queue_V2(v5);

  v338 = 0u;
  v337 = 0u;
  v336 = 0u;
  v335 = 0u;
  v6 = [(NSMutableDictionary *)self->_usageReplyTimers allValues];
  v7 = [v6 countByEnumeratingWithState:&v335 objects:v375 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v336;
    do
    {
      v10 = 0;
      do
      {
        if (*v336 != v9)
        {
          objc_enumerationMutation(v6);
        }

        dispatch_source_cancel(*(*(&v335 + 1) + 8 * v10));
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v335 objects:v375 count:16];
    }

    while (v8);
  }

  [(NSMutableDictionary *)self->_usageReplyTimers removeAllObjects];
  v334 = 0u;
  v333 = 0u;
  v332 = 0u;
  v331 = 0u;
  v11 = self->_coalescedUsageRequests;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v331 objects:v374 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v332;
    do
    {
      v15 = 0;
      do
      {
        if (*v332 != v14)
        {
          objc_enumerationMutation(v11);
        }

        (*(*(*(&v331 + 1) + 8 * v15) + 16))();
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v331 objects:v374 count:16];
    }

    while (v13);
  }

  [(NSMutableArray *)self->_coalescedUsageRequests removeAllObjects];
  v330 = 0u;
  v329 = 0u;
  v328 = 0u;
  v327 = 0u;
  v16 = [(NSMutableDictionary *)self->_usageRequests allValues];
  v17 = [v16 countByEnumeratingWithState:&v327 objects:v373 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v328;
    do
    {
      v20 = 0;
      do
      {
        if (*v328 != v19)
        {
          objc_enumerationMutation(v16);
        }

        (*(*(*(&v327 + 1) + 8 * v20) + 16))();
        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v327 objects:v373 count:16];
    }

    while (v18);
  }

  [(NSMutableDictionary *)self->_usageRequests removeAllObjects];
  v326 = 0u;
  v325 = 0u;
  v324 = 0u;
  v323 = 0u;
  v21 = [(NSMutableDictionary *)self->_purgeUsageBundleReplyTimers allValues];
  v22 = [v21 countByEnumeratingWithState:&v323 objects:v372 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v324;
    do
    {
      v25 = 0;
      do
      {
        if (*v324 != v24)
        {
          objc_enumerationMutation(v21);
        }

        dispatch_source_cancel(*(*(&v323 + 1) + 8 * v25));
        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v323 objects:v372 count:16];
    }

    while (v23);
  }

  [(NSMutableDictionary *)self->_purgeUsageBundleReplyTimers removeAllObjects];
  v322 = 0u;
  v321 = 0u;
  v320 = 0u;
  v319 = 0u;
  v26 = [(NSMutableDictionary *)self->_purgeUsageBundleRequests allValues];
  v27 = [v26 countByEnumeratingWithState:&v319 objects:v371 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v320;
    do
    {
      v30 = 0;
      do
      {
        if (*v320 != v29)
        {
          objc_enumerationMutation(v26);
        }

        (*(*(*(&v319 + 1) + 8 * v30) + 16))();
        v30 = v30 + 1;
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v319 objects:v371 count:16];
    }

    while (v28);
  }

  [(NSMutableDictionary *)self->_purgeUsageBundleRequests removeAllObjects];
  v318 = 0u;
  v317 = 0u;
  v316 = 0u;
  v315 = 0u;
  v31 = [(NSMutableDictionary *)self->_diagnosticLogFileReplyTimers allValues];
  v32 = [v31 countByEnumeratingWithState:&v315 objects:v370 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v316;
    do
    {
      v35 = 0;
      do
      {
        if (*v316 != v34)
        {
          objc_enumerationMutation(v31);
        }

        dispatch_source_cancel(*(*(&v315 + 1) + 8 * v35));
        v35 = v35 + 1;
      }

      while (v33 != v35);
      v33 = [v31 countByEnumeratingWithState:&v315 objects:v370 count:16];
    }

    while (v33);
  }

  [(NSMutableDictionary *)self->_diagnosticLogFileReplyTimers removeAllObjects];
  v314 = 0u;
  v313 = 0u;
  v312 = 0u;
  v311 = 0u;
  v36 = [(NSMutableDictionary *)self->_diagnosticLogFileRequests allValues];
  v37 = [v36 countByEnumeratingWithState:&v311 objects:v369 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v312;
    do
    {
      v40 = 0;
      do
      {
        if (*v312 != v39)
        {
          objc_enumerationMutation(v36);
        }

        (*(*(*(&v311 + 1) + 8 * v40) + 16))();
        v40 = v40 + 1;
      }

      while (v38 != v40);
      v38 = [v36 countByEnumeratingWithState:&v311 objects:v369 count:16];
    }

    while (v38);
  }

  [(NSMutableDictionary *)self->_diagnosticLogFileRequests removeAllObjects];
  v310 = 0u;
  v309 = 0u;
  v308 = 0u;
  v307 = 0u;
  v41 = [(NSMutableDictionary *)self->_cancelLogTransferReplyTimers allValues];
  v42 = [v41 countByEnumeratingWithState:&v307 objects:v368 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v308;
    do
    {
      v45 = 0;
      do
      {
        if (*v308 != v44)
        {
          objc_enumerationMutation(v41);
        }

        dispatch_source_cancel(*(*(&v307 + 1) + 8 * v45));
        v45 = v45 + 1;
      }

      while (v43 != v45);
      v43 = [v41 countByEnumeratingWithState:&v307 objects:v368 count:16];
    }

    while (v43);
  }

  [(NSMutableDictionary *)self->_cancelLogTransferReplyTimers removeAllObjects];
  v306 = 0u;
  v305 = 0u;
  v304 = 0u;
  v303 = 0u;
  v46 = [(NSMutableDictionary *)self->_cancelLogTransferRequests allValues];
  v47 = [v46 countByEnumeratingWithState:&v303 objects:v367 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v304;
    do
    {
      v50 = 0;
      do
      {
        if (*v304 != v49)
        {
          objc_enumerationMutation(v46);
        }

        (*(*(*(&v303 + 1) + 8 * v50) + 16))();
        v50 = v50 + 1;
      }

      while (v48 != v50);
      v48 = [v46 countByEnumeratingWithState:&v303 objects:v367 count:16];
    }

    while (v48);
  }

  [(NSMutableDictionary *)self->_cancelLogTransferRequests removeAllObjects];
  v302 = 0u;
  v301 = 0u;
  v300 = 0u;
  v299 = 0u;
  v51 = [(NSMutableDictionary *)self->_diagnosticLogsInfoReplyTimers allValues];
  v52 = [v51 countByEnumeratingWithState:&v299 objects:v366 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v300;
    do
    {
      v55 = 0;
      do
      {
        if (*v300 != v54)
        {
          objc_enumerationMutation(v51);
        }

        dispatch_source_cancel(*(*(&v299 + 1) + 8 * v55));
        v55 = v55 + 1;
      }

      while (v53 != v55);
      v53 = [v51 countByEnumeratingWithState:&v299 objects:v366 count:16];
    }

    while (v53);
  }

  [(NSMutableDictionary *)self->_diagnosticLogsInfoReplyTimers removeAllObjects];
  v298 = 0u;
  v297 = 0u;
  v296 = 0u;
  v295 = 0u;
  v56 = [(NSMutableDictionary *)self->_diagnosticLogsInfoRequests allValues];
  v57 = [v56 countByEnumeratingWithState:&v295 objects:v365 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v296;
    do
    {
      v60 = 0;
      do
      {
        if (*v296 != v59)
        {
          objc_enumerationMutation(v56);
        }

        (*(*(*(&v295 + 1) + 8 * v60) + 16))();
        v60 = v60 + 1;
      }

      while (v58 != v60);
      v58 = [v56 countByEnumeratingWithState:&v295 objects:v365 count:16];
    }

    while (v58);
  }

  [(NSMutableDictionary *)self->_diagnosticLogsInfoRequests removeAllObjects];
  v294 = 0u;
  v293 = 0u;
  v292 = 0u;
  v291 = 0u;
  v61 = [(NSMutableDictionary *)self->_airplaneModeSettingsReplyTimers allValues];
  v62 = [v61 countByEnumeratingWithState:&v291 objects:v364 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v292;
    do
    {
      v65 = 0;
      do
      {
        if (*v292 != v64)
        {
          objc_enumerationMutation(v61);
        }

        dispatch_source_cancel(*(*(&v291 + 1) + 8 * v65));
        v65 = v65 + 1;
      }

      while (v63 != v65);
      v63 = [v61 countByEnumeratingWithState:&v291 objects:v364 count:16];
    }

    while (v63);
  }

  [(NSMutableDictionary *)self->_airplaneModeSettingsReplyTimers removeAllObjects];
  v290 = 0u;
  v289 = 0u;
  v288 = 0u;
  v287 = 0u;
  v66 = [(NSMutableDictionary *)self->_airplaneModeSettingsRequests allValues];
  v67 = [v66 countByEnumeratingWithState:&v287 objects:v363 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v288;
    do
    {
      v70 = 0;
      do
      {
        if (*v288 != v69)
        {
          objc_enumerationMutation(v66);
        }

        (*(*(*(&v287 + 1) + 8 * v70) + 16))();
        v70 = v70 + 1;
      }

      while (v68 != v70);
      v68 = [v66 countByEnumeratingWithState:&v287 objects:v363 count:16];
    }

    while (v68);
  }

  [(NSMutableDictionary *)self->_airplaneModeSettingsRequests removeAllObjects];
  v286 = 0u;
  v285 = 0u;
  v284 = 0u;
  v283 = 0u;
  v71 = [(NSMutableDictionary *)self->_logDeleteReplyTimers allValues];
  v72 = [v71 countByEnumeratingWithState:&v283 objects:v362 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v284;
    do
    {
      v75 = 0;
      do
      {
        if (*v284 != v74)
        {
          objc_enumerationMutation(v71);
        }

        dispatch_source_cancel(*(*(&v283 + 1) + 8 * v75));
        v75 = v75 + 1;
      }

      while (v73 != v75);
      v73 = [v71 countByEnumeratingWithState:&v283 objects:v362 count:16];
    }

    while (v73);
  }

  [(NSMutableDictionary *)self->_logDeleteReplyTimers removeAllObjects];
  v282 = 0u;
  v281 = 0u;
  v280 = 0u;
  v279 = 0u;
  v76 = [(NSMutableDictionary *)self->_logDeleteRequests allValues];
  v77 = [v76 countByEnumeratingWithState:&v279 objects:v361 count:16];
  if (v77)
  {
    v78 = v77;
    v79 = *v280;
    do
    {
      v80 = 0;
      do
      {
        if (*v280 != v79)
        {
          objc_enumerationMutation(v76);
        }

        (*(*(*(&v279 + 1) + 8 * v80) + 16))();
        v80 = v80 + 1;
      }

      while (v78 != v80);
      v78 = [v76 countByEnumeratingWithState:&v279 objects:v361 count:16];
    }

    while (v78);
  }

  [(NSMutableDictionary *)self->_logDeleteRequests removeAllObjects];
  v278 = 0u;
  v277 = 0u;
  v276 = 0u;
  v275 = 0u;
  v81 = [(NSMutableDictionary *)self->_aboutInfoReplyTimers allValues];
  v82 = [v81 countByEnumeratingWithState:&v275 objects:v360 count:16];
  if (v82)
  {
    v83 = v82;
    v84 = *v276;
    do
    {
      v85 = 0;
      do
      {
        if (*v276 != v84)
        {
          objc_enumerationMutation(v81);
        }

        dispatch_source_cancel(*(*(&v275 + 1) + 8 * v85));
        v85 = v85 + 1;
      }

      while (v83 != v85);
      v83 = [v81 countByEnumeratingWithState:&v275 objects:v360 count:16];
    }

    while (v83);
  }

  [(NSMutableDictionary *)self->_aboutInfoReplyTimers removeAllObjects];
  v274 = 0u;
  v273 = 0u;
  v272 = 0u;
  v271 = 0u;
  v86 = [(NSMutableDictionary *)self->_aboutInfoRequests allValues];
  v87 = [v86 countByEnumeratingWithState:&v271 objects:v359 count:16];
  if (v87)
  {
    v88 = v87;
    v89 = *v272;
    do
    {
      v90 = 0;
      do
      {
        if (*v272 != v89)
        {
          objc_enumerationMutation(v86);
        }

        (*(*(*(&v271 + 1) + 8 * v90) + 16))();
        v90 = v90 + 1;
      }

      while (v88 != v90);
      v88 = [v86 countByEnumeratingWithState:&v271 objects:v359 count:16];
    }

    while (v88);
  }

  [(NSMutableDictionary *)self->_aboutInfoRequests removeAllObjects];
  v270 = 0u;
  v269 = 0u;
  v268 = 0u;
  v267 = 0u;
  v91 = [(NSMutableDictionary *)self->_obliterationDeliveryTimers allValues];
  v92 = [v91 countByEnumeratingWithState:&v267 objects:v358 count:16];
  if (v92)
  {
    v93 = v92;
    v94 = *v268;
    do
    {
      v95 = 0;
      do
      {
        if (*v268 != v94)
        {
          objc_enumerationMutation(v91);
        }

        dispatch_source_cancel(*(*(&v267 + 1) + 8 * v95));
        v95 = v95 + 1;
      }

      while (v93 != v95);
      v93 = [v91 countByEnumeratingWithState:&v267 objects:v358 count:16];
    }

    while (v93);
  }

  [(NSMutableDictionary *)self->_obliterationDeliveryTimers removeAllObjects];
  v266 = 0u;
  v265 = 0u;
  v264 = 0u;
  v263 = 0u;
  v96 = [(NSMutableDictionary *)self->_obliterationRequests allValues];
  v97 = [v96 countByEnumeratingWithState:&v263 objects:v357 count:16];
  if (v97)
  {
    v98 = v97;
    v99 = *v264;
    do
    {
      v100 = 0;
      do
      {
        if (*v264 != v99)
        {
          objc_enumerationMutation(v96);
        }

        (*(*(*(&v263 + 1) + 8 * v100) + 16))();
        v100 = v100 + 1;
      }

      while (v98 != v100);
      v98 = [v96 countByEnumeratingWithState:&v263 objects:v357 count:16];
    }

    while (v98);
  }

  [(NSMutableDictionary *)self->_obliterationRequests removeAllObjects];
  v262 = 0u;
  v261 = 0u;
  v260 = 0u;
  v259 = 0u;
  v101 = [(NSMutableDictionary *)self->_accountsInfoReplyTimers allValues];
  v102 = [v101 countByEnumeratingWithState:&v259 objects:v356 count:16];
  if (v102)
  {
    v103 = v102;
    v104 = *v260;
    do
    {
      v105 = 0;
      do
      {
        if (*v260 != v104)
        {
          objc_enumerationMutation(v101);
        }

        dispatch_source_cancel(*(*(&v259 + 1) + 8 * v105));
        v105 = v105 + 1;
      }

      while (v103 != v105);
      v103 = [v101 countByEnumeratingWithState:&v259 objects:v356 count:16];
    }

    while (v103);
  }

  [(NSMutableDictionary *)self->_accountsInfoReplyTimers removeAllObjects];
  v258 = 0u;
  v257 = 0u;
  v256 = 0u;
  v255 = 0u;
  v106 = [(NSMutableDictionary *)self->_accountsInfoRequests allValues];
  v107 = [v106 countByEnumeratingWithState:&v255 objects:v355 count:16];
  if (v107)
  {
    v108 = v107;
    v109 = *v256;
    do
    {
      v110 = 0;
      do
      {
        if (*v256 != v109)
        {
          objc_enumerationMutation(v106);
        }

        (*(*(*(&v255 + 1) + 8 * v110) + 16))();
        v110 = v110 + 1;
      }

      while (v108 != v110);
      v108 = [v106 countByEnumeratingWithState:&v255 objects:v355 count:16];
    }

    while (v108);
  }

  [(NSMutableDictionary *)self->_accountsInfoRequests removeAllObjects];
  v253 = 0u;
  v254 = 0u;
  v251 = 0u;
  v252 = 0u;
  v111 = [(NSMutableDictionary *)self->_profilesInfoReplyTimers allValues];
  v112 = [v111 countByEnumeratingWithState:&v251 objects:v354 count:16];
  if (v112)
  {
    v113 = v112;
    v114 = *v252;
    do
    {
      v115 = 0;
      do
      {
        if (*v252 != v114)
        {
          objc_enumerationMutation(v111);
        }

        dispatch_source_cancel(*(*(&v251 + 1) + 8 * v115));
        v115 = v115 + 1;
      }

      while (v113 != v115);
      v113 = [v111 countByEnumeratingWithState:&v251 objects:v354 count:16];
    }

    while (v113);
  }

  [(NSMutableDictionary *)self->_profilesInfoReplyTimers removeAllObjects];
  v249 = 0u;
  v250 = 0u;
  v247 = 0u;
  v248 = 0u;
  v116 = [(NSMutableDictionary *)self->_profilesInfoRequests allValues];
  v117 = [v116 countByEnumeratingWithState:&v247 objects:v353 count:16];
  if (v117)
  {
    v118 = v117;
    v119 = *v248;
    do
    {
      v120 = 0;
      do
      {
        if (*v248 != v119)
        {
          objc_enumerationMutation(v116);
        }

        (*(*(*(&v247 + 1) + 8 * v120) + 16))();
        v120 = v120 + 1;
      }

      while (v118 != v120);
      v118 = [v116 countByEnumeratingWithState:&v247 objects:v353 count:16];
    }

    while (v118);
  }

  [(NSMutableDictionary *)self->_profilesInfoRequests removeAllObjects];
  v245 = 0u;
  v246 = 0u;
  v243 = 0u;
  v244 = 0u;
  v121 = [(NSMutableDictionary *)self->_profileDataReplyTimers allValues];
  v122 = [v121 countByEnumeratingWithState:&v243 objects:v352 count:16];
  if (v122)
  {
    v123 = v122;
    v124 = *v244;
    do
    {
      v125 = 0;
      do
      {
        if (*v244 != v124)
        {
          objc_enumerationMutation(v121);
        }

        dispatch_source_cancel(*(*(&v243 + 1) + 8 * v125));
        v125 = v125 + 1;
      }

      while (v123 != v125);
      v123 = [v121 countByEnumeratingWithState:&v243 objects:v352 count:16];
    }

    while (v123);
  }

  [(NSMutableDictionary *)self->_profileDataReplyTimers removeAllObjects];
  v241 = 0u;
  v242 = 0u;
  v239 = 0u;
  v240 = 0u;
  v126 = [(NSMutableDictionary *)self->_profileDataRequests allValues];
  v127 = [v126 countByEnumeratingWithState:&v239 objects:v351 count:16];
  if (v127)
  {
    v128 = v127;
    v129 = *v240;
    do
    {
      v130 = 0;
      do
      {
        if (*v240 != v129)
        {
          objc_enumerationMutation(v126);
        }

        (*(*(*(&v239 + 1) + 8 * v130) + 16))();
        v130 = v130 + 1;
      }

      while (v128 != v130);
      v128 = [v126 countByEnumeratingWithState:&v239 objects:v351 count:16];
    }

    while (v128);
  }

  [(NSMutableDictionary *)self->_profileDataRequests removeAllObjects];
  v237 = 0u;
  v238 = 0u;
  v235 = 0u;
  v236 = 0u;
  v131 = [(NSMutableDictionary *)self->_installProfileReplyTimers allValues];
  v132 = [v131 countByEnumeratingWithState:&v235 objects:v350 count:16];
  if (v132)
  {
    v133 = v132;
    v134 = *v236;
    do
    {
      v135 = 0;
      do
      {
        if (*v236 != v134)
        {
          objc_enumerationMutation(v131);
        }

        dispatch_source_cancel(*(*(&v235 + 1) + 8 * v135));
        v135 = v135 + 1;
      }

      while (v133 != v135);
      v133 = [v131 countByEnumeratingWithState:&v235 objects:v350 count:16];
    }

    while (v133);
  }

  [(NSMutableDictionary *)self->_installProfileReplyTimers removeAllObjects];
  v233 = 0u;
  v234 = 0u;
  v231 = 0u;
  v232 = 0u;
  v136 = [(NSMutableDictionary *)self->_installProfileRequests allValues];
  v137 = [v136 countByEnumeratingWithState:&v231 objects:v349 count:16];
  if (v137)
  {
    v138 = v137;
    v139 = *v232;
    do
    {
      v140 = 0;
      do
      {
        if (*v232 != v139)
        {
          objc_enumerationMutation(v136);
        }

        (*(*(*(&v231 + 1) + 8 * v140) + 16))();
        v140 = v140 + 1;
      }

      while (v138 != v140);
      v138 = [v136 countByEnumeratingWithState:&v231 objects:v349 count:16];
    }

    while (v138);
  }

  [(NSMutableDictionary *)self->_installProfileRequests removeAllObjects];
  v229 = 0u;
  v230 = 0u;
  v227 = 0u;
  v228 = 0u;
  v141 = [(NSMutableDictionary *)self->_removeProfileReplyTimers allValues];
  v142 = [v141 countByEnumeratingWithState:&v227 objects:v348 count:16];
  if (v142)
  {
    v143 = v142;
    v144 = *v228;
    do
    {
      v145 = 0;
      do
      {
        if (*v228 != v144)
        {
          objc_enumerationMutation(v141);
        }

        dispatch_source_cancel(*(*(&v227 + 1) + 8 * v145));
        v145 = v145 + 1;
      }

      while (v143 != v145);
      v143 = [v141 countByEnumeratingWithState:&v227 objects:v348 count:16];
    }

    while (v143);
  }

  [(NSMutableDictionary *)self->_removeProfileReplyTimers removeAllObjects];
  v225 = 0u;
  v226 = 0u;
  v223 = 0u;
  v224 = 0u;
  v146 = [(NSMutableDictionary *)self->_removeProfileRequests allValues];
  v147 = [v146 countByEnumeratingWithState:&v223 objects:v347 count:16];
  if (v147)
  {
    v148 = v147;
    v149 = *v224;
    do
    {
      v150 = 0;
      do
      {
        if (*v224 != v149)
        {
          objc_enumerationMutation(v146);
        }

        (*(*(*(&v223 + 1) + 8 * v150) + 16))();
        v150 = v150 + 1;
      }

      while (v148 != v150);
      v148 = [v146 countByEnumeratingWithState:&v223 objects:v347 count:16];
    }

    while (v148);
  }

  [(NSMutableDictionary *)self->_removeProfileRequests removeAllObjects];
  v221 = 0u;
  v222 = 0u;
  v219 = 0u;
  v220 = 0u;
  v151 = [(NSMutableDictionary *)self->_legalDocumentsReplyTimers allValues];
  v152 = [v151 countByEnumeratingWithState:&v219 objects:v346 count:16];
  if (v152)
  {
    v153 = v152;
    v154 = *v220;
    do
    {
      v155 = 0;
      do
      {
        if (*v220 != v154)
        {
          objc_enumerationMutation(v151);
        }

        dispatch_source_cancel(*(*(&v219 + 1) + 8 * v155));
        v155 = v155 + 1;
      }

      while (v153 != v155);
      v153 = [v151 countByEnumeratingWithState:&v219 objects:v346 count:16];
    }

    while (v153);
  }

  [(NSMutableDictionary *)self->_legalDocumentsReplyTimers removeAllObjects];
  v217 = 0u;
  v218 = 0u;
  v215 = 0u;
  v216 = 0u;
  v156 = [(NSMutableDictionary *)self->_legalDocumentsRequests allValues];
  v157 = [v156 countByEnumeratingWithState:&v215 objects:v345 count:16];
  if (v157)
  {
    v158 = v157;
    v159 = *v216;
    do
    {
      v160 = 0;
      do
      {
        if (*v216 != v159)
        {
          objc_enumerationMutation(v156);
        }

        (*(*(*(&v215 + 1) + 8 * v160) + 16))();
        v160 = v160 + 1;
      }

      while (v158 != v160);
      v158 = [v156 countByEnumeratingWithState:&v215 objects:v345 count:16];
    }

    while (v158);
  }

  [(NSMutableDictionary *)self->_legalDocumentsRequests removeAllObjects];
  v213 = 0u;
  v214 = 0u;
  v211 = 0u;
  v212 = 0u;
  v161 = [(NSMutableDictionary *)self->_localesInfoReplyTimers allValues];
  v162 = [v161 countByEnumeratingWithState:&v211 objects:v344 count:16];
  if (v162)
  {
    v163 = v162;
    v164 = *v212;
    do
    {
      v165 = 0;
      do
      {
        if (*v212 != v164)
        {
          objc_enumerationMutation(v161);
        }

        dispatch_source_cancel(*(*(&v211 + 1) + 8 * v165));
        v165 = v165 + 1;
      }

      while (v163 != v165);
      v163 = [v161 countByEnumeratingWithState:&v211 objects:v344 count:16];
    }

    while (v163);
  }

  [(NSMutableDictionary *)self->_localesInfoReplyTimers removeAllObjects];
  v209 = 0u;
  v210 = 0u;
  v207 = 0u;
  v208 = 0u;
  v166 = [(NSMutableDictionary *)self->_localesInfoRequests allValues];
  v167 = [v166 countByEnumeratingWithState:&v207 objects:v343 count:16];
  if (v167)
  {
    v168 = v167;
    v169 = *v208;
    do
    {
      v170 = 0;
      do
      {
        if (*v208 != v169)
        {
          objc_enumerationMutation(v166);
        }

        (*(*(*(&v207 + 1) + 8 * v170) + 16))();
        v170 = v170 + 1;
      }

      while (v168 != v170);
      v168 = [v166 countByEnumeratingWithState:&v207 objects:v343 count:16];
    }

    while (v168);
  }

  [(NSMutableDictionary *)self->_localesInfoRequests removeAllObjects];
  v205 = 0u;
  v206 = 0u;
  v203 = 0u;
  v204 = 0u;
  v171 = [(NSMutableDictionary *)self->_betaEnrollmentStatusReplyTimers allValues];
  v172 = [v171 countByEnumeratingWithState:&v203 objects:v342 count:16];
  if (v172)
  {
    v173 = v172;
    v174 = *v204;
    do
    {
      v175 = 0;
      do
      {
        if (*v204 != v174)
        {
          objc_enumerationMutation(v171);
        }

        dispatch_source_cancel(*(*(&v203 + 1) + 8 * v175));
        v175 = v175 + 1;
      }

      while (v173 != v175);
      v173 = [v171 countByEnumeratingWithState:&v203 objects:v342 count:16];
    }

    while (v173);
  }

  [(NSMutableDictionary *)self->_betaEnrollmentStatusReplyTimers removeAllObjects];
  v201 = 0u;
  v202 = 0u;
  v199 = 0u;
  v200 = 0u;
  v176 = [(NSMutableDictionary *)self->_betaEnrollmentStatusRequests allValues];
  v177 = [v176 countByEnumeratingWithState:&v199 objects:v341 count:16];
  if (v177)
  {
    v178 = v177;
    v179 = *v200;
    do
    {
      v180 = 0;
      do
      {
        if (*v200 != v179)
        {
          objc_enumerationMutation(v176);
        }

        (*(*(*(&v199 + 1) + 8 * v180) + 16))();
        v180 = v180 + 1;
      }

      while (v178 != v180);
      v178 = [v176 countByEnumeratingWithState:&v199 objects:v341 count:16];
    }

    while (v178);
  }

  [(NSMutableDictionary *)self->_betaEnrollmentStatusRequests removeAllObjects];
  v197 = 0u;
  v198 = 0u;
  v195 = 0u;
  v196 = 0u;
  v181 = [(NSMutableDictionary *)self->_updateBetaEnrollmentStatusReplyTimers allValues];
  v182 = [v181 countByEnumeratingWithState:&v195 objects:v340 count:16];
  if (v182)
  {
    v183 = v182;
    v184 = *v196;
    do
    {
      v185 = 0;
      do
      {
        if (*v196 != v184)
        {
          objc_enumerationMutation(v181);
        }

        dispatch_source_cancel(*(*(&v195 + 1) + 8 * v185));
        v185 = v185 + 1;
      }

      while (v183 != v185);
      v183 = [v181 countByEnumeratingWithState:&v195 objects:v340 count:16];
    }

    while (v183);
  }

  [(NSMutableDictionary *)self->_updateBetaEnrollmentStatusReplyTimers removeAllObjects];
  v193 = 0u;
  v194 = 0u;
  v191 = 0u;
  v192 = 0u;
  v186 = [(NSMutableDictionary *)self->_updateBetaEnrollmentStatusRequests allValues];
  v187 = [v186 countByEnumeratingWithState:&v191 objects:v339 count:16];
  if (v187)
  {
    v188 = v187;
    v189 = *v192;
    do
    {
      v190 = 0;
      do
      {
        if (*v192 != v189)
        {
          objc_enumerationMutation(v186);
        }

        (*(*(*(&v191 + 1) + 8 * v190) + 16))();
        v190 = v190 + 1;
      }

      while (v188 != v190);
      v188 = [v186 countByEnumeratingWithState:&v191 objects:v339 count:16];
    }

    while (v188);
  }

  [(NSMutableDictionary *)self->_updateBetaEnrollmentStatusRequests removeAllObjects];
}

- (BOOL)handleDarwinNotification:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NSSCompanionServer;
  if ([(NSSServer *)&v13 handleDarwinNotification:v4])
  {
    goto LABEL_18;
  }

  if ([v4 isEqualToString:@"AppleKeyboardsEmojiChangedNotification"])
  {
    v5 = [(NSSCompanionServer *)self npsManager];
    v6 = [NSSet setWithObject:@"EMFDefaultsKey"];
    v7 = @"com.apple.EmojiPreferences";
LABEL_16:
    [v5 synchronizeUserDefaultsDomain:v7 keys:v6];

LABEL_17:
    goto LABEL_18;
  }

  if ([v4 isEqualToString:@"AppleKeyboardsPreferencesChangedNotification"])
  {
    v5 = [(NSSCompanionServer *)self npsManager];
    [NSSet setWithObjects:@"AppleKeyboards", @"AppleKeyboardsExpanded", 0];
    v8 = LABEL_6:;
LABEL_7:
    v6 = v8;
    v7 = @".GlobalPreferences";
    goto LABEL_16;
  }

  if ([v4 isEqualToString:@"AppleKeyboardsSettingsChangedNotification"])
  {
    v5 = [(NSSCompanionServer *)self npsManager];
    v6 = [NSSet setWithObjects:@"KeyboardLastUsed", @"KeyboardsCurrentAndNext", @"DictationLanguagesLastUsed", @"DictationLanguagesEnabled", @"KeyboardAutocapitalization", 0];
    v7 = @"com.apple.keyboard.preferences";
    goto LABEL_16;
  }

  if ([v4 isEqualToString:@"CPActiveCountryCodeChanged"])
  {
    v5 = [(NSSCompanionServer *)self npsManager];
    v9 = @"CPActiveCountryCode";
LABEL_14:
    v10 = [NSSet setWithObject:v9];
LABEL_15:
    v6 = v10;
    v7 = @"com.apple.AppSupport";
    goto LABEL_16;
  }

  if ([v4 isEqualToString:@"CPHomeCountryCodeChanged"])
  {
    v5 = [(NSSCompanionServer *)self npsManager];
    v9 = @"CPHomeCountryCode";
    goto LABEL_14;
  }

  if ([v4 isEqualToString:@"CPNetworkCountryCodeChanged"])
  {
    v5 = [(NSSCompanionServer *)self npsManager];
    v10 = [NSSet setWithObjects:@"CPNetworkCountryCode", @"CPLastKnownNetworkCountryCode", 0];
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"AppleTemperatureUnitPreferencesChangedNotification"])
  {
    v5 = [(NSSCompanionServer *)self npsManager];
    v8 = [NSSet setWithObject:@"AppleTemperatureUnit"];
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"AppleMeasurementSystemPreferencesChangedNotification"])
  {
    v5 = [(NSSCompanionServer *)self npsManager];
    [NSSet setWithObjects:@"AppleMeasurementUnits", @"AppleMetricUnits", 0];
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"com.apple.sharing.powerStatusNotification.watch"])
  {
    v5 = +[NSSGizmoPowerMonitor sharedMonitor];
    [v5 processBatteryUpdate];
    goto LABEL_17;
  }

  if (([v4 isEqualToString:@"com.apple.gms.availability.notification"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"com.apple.os-eligibility-domain.change.greymatter") & 1) == 0 && !objc_msgSend(v4, "isEqualToString:", NRInitialPairedSyncDidCompleteDarwinNotification))
  {
    v11 = 0;
    goto LABEL_19;
  }

  [(NSSCompanionServer *)self updateCompanionGenerativeModelsEligibilityState:&stru_100034AE0];
LABEL_18:
  v11 = 1;
LABEL_19:

  return v11;
}

- (void)handleMemoryPressureEvent
{
  v4.receiver = self;
  v4.super_class = NSSCompanionServer;
  [(NSSServer *)&v4 handleMemoryPressureEvent];
  v3 = [(NSSServer *)self idsQueue];
  dispatch_async(v3, &stru_100034B20);
}

+ (void)associateProtobufHandlers:(id)a3
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___NSSCompanionServer;
  v3 = a3;
  objc_msgSendSuper2(&v4, "associateProtobufHandlers:", v3);
  [v3 setProtobufAction:"handleUsageRespMsg:" forIncomingResponsesOfType:{2, v4.receiver, v4.super_class}];
  [v3 setProtobufAction:"handlePurgeUsageBundleRespMsg:" forIncomingResponsesOfType:4];
  [v3 setProtobufAction:"handleAboutInfoRespMsg:" forIncomingResponsesOfType:6];
  [v3 setProtobufAction:"handleDiagnosticLogsInfoRespMsg:" forIncomingResponsesOfType:25];
  [v3 setProtobufAction:"handleCancelLogTransferRespMsg:" forIncomingResponsesOfType:34];
  [v3 setProtobufAction:"handleLogDeleteRespMsg:" forIncomingResponsesOfType:28];
  [v3 setProtobufAction:"handleIncomingFileTransferProgressMsg:" forIncomingRequestsOfType:32];
  [v3 setProtobufAction:"handleAirplaneModeSettingsRespMsg:" forIncomingResponsesOfType:30];
  [v3 setProtobufAction:"handleRefreshAirplaneModeSettingsReqMsg:" forIncomingRequestsOfType:35];
  [v3 setProtobufAction:"handleAccountsInfoRespMsg:" forIncomingResponsesOfType:10];
  [v3 setProtobufAction:"handleProfilesInfoRespMsg:" forIncomingResponsesOfType:12];
  [v3 setProtobufAction:"handleProfileDataRespMsg:" forIncomingResponsesOfType:14];
  [v3 setProtobufAction:"handleInstallProfileRespMsg:" forIncomingResponsesOfType:16];
  [v3 setProtobufAction:"handleRemoveProfileRespMsg:" forIncomingResponsesOfType:18];
  [v3 setProtobufAction:"handleLegalDocumentsRespMsg:" forIncomingResponsesOfType:21];
  [v3 setProtobufAction:"handleLocalesInfoRespMsg:" forIncomingResponsesOfType:23];
  [v3 setProtobufAction:"handleLPMAutoDisabledRespMsg:" forIncomingRequestsOfType:36];
  [v3 setProtobufAction:"handleBetaEnrollmentRespMsg:" forIncomingResponsesOfType:38];
  [v3 setProtobufAction:"handleUpdateEnrollmentStatusRespMsg:" forIncomingResponsesOfType:40];
}

- (NPSDomainAccessor)nssDomainAccessor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000610C;
  block[3] = &unk_100034B48;
  block[4] = self;
  if (qword_10003DCF8 != -1)
  {
    dispatch_once(&qword_10003DCF8, block);
  }

  return self->_nssDomainAccessor;
}

- (NPSManager)npsManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006204;
  block[3] = &unk_100034B48;
  block[4] = self;
  if (qword_10003DD00 != -1)
  {
    dispatch_once(&qword_10003DD00, block);
  }

  return self->_npsManager;
}

- (void)getUsage:(id)a3
{
  v4 = a3;
  v5 = NSSLogForType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_retainBlock(v4);
    *buf = 134217984;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (v4)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100006398;
    v8[3] = &unk_100034B70;
    v9 = v4;
    v7 = objc_retainBlock(v8);
    [(NSSCompanionServer *)self getUsageData:v7];
  }
}

- (void)getUsageData:(id)a3
{
  v4 = a3;
  v5 = NSSLogForType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_retainBlock(v4);
    *buf = 134217984;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (v4)
  {
    v7 = [(NSSServer *)self idsQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100006584;
    v8[3] = &unk_100034BC0;
    v8[4] = self;
    v9 = v4;
    dispatch_async(v7, v8);
  }
}

- (void)purgeUsageBundle:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = NSSLogForType();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_retainBlock(v7);
    *buf = 138412546;
    v16 = v6;
    v17 = 2048;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "bundleIdentifier: (%@); replyBlock: (%p)", buf, 0x16u);
  }

  if (v6)
  {
    v10 = [(NSSServer *)self idsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000069B4;
    block[3] = &unk_100034BE8;
    v12 = v6;
    v13 = self;
    v14 = v7;
    dispatch_async(v10, block);
  }
}

- (void)getDiagnosticLogFileFromGizmo:(id)a3 withResults:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = NSSLogForType();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_retainBlock(v7);
    *buf = 134217984;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (v7)
  {
    v10 = objc_opt_new();
    [v10 setLogFilePath:v6];
    v11 = NSSLogForType();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending request to download file: %@", buf, 0xCu);
    }

    v12 = [(NSSServer *)self idsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006C54;
    block[3] = &unk_100034BE8;
    block[4] = self;
    v15 = v10;
    v16 = v7;
    v13 = v10;
    dispatch_async(v12, block);
  }
}

- (void)retrieveDiagnosticLogTransferProgress:(id)a3 withProgress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = NSSLogForType();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_retainBlock(v7);
    *buf = 134217984;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "replyBlock (%p)", buf, 0xCu);
  }

  if (v7)
  {
    v10 = [(NSSServer *)self idsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006E74;
    block[3] = &unk_100034BE8;
    block[4] = self;
    v12 = v6;
    v13 = v7;
    dispatch_async(v10, block);
  }
}

- (void)cancelDiagnosticLogTranfer:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = NSSLogForType();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_retainBlock(v7);
    *buf = 134217984;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (v7)
  {
    v10 = objc_opt_new();
    [v10 setLogFilePath:v6];
    [(NSSCompanionServer *)self setCancelledLogInTransit:v6];
    v11 = NSSLogForType();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending request to download file: %@", buf, 0xCu);
    }

    v12 = [(NSSServer *)self idsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100007284;
    block[3] = &unk_100034BE8;
    block[4] = self;
    v15 = v10;
    v16 = v7;
    v13 = v10;
    dispatch_async(v12, block);
  }
}

- (void)cancelActiveLogFileTranfers
{
  v3 = objc_opt_new();
  v6 = 0;
  v4 = [(NSSServer *)self sendMessage:v3 identifier:&v6 sendTimeout:0 wantsAcknowledgement:@"cancelLogTranfers" queueOneIdentifier:0 overBluetoothOnly:30.0];
  v5 = v6;
  [(NSMutableDictionary *)self->_diagnosticLogFileRequests removeAllObjects];
}

- (void)getDiagnosticLogsInfo:(id)a3
{
  v4 = a3;
  v5 = NSSLogForType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_retainBlock(v4);
    *buf = 134217984;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (v4)
  {
    v7 = NSSLogForType();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending diagnostic logs request", buf, 2u);
    }

    v8 = [(NSSServer *)self idsQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100007554;
    v9[3] = &unk_100034BC0;
    v9[4] = self;
    v10 = v4;
    dispatch_async(v8, v9);
  }
}

- (void)retrieveAirplaneModeSettingsWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = NSSLogForType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Retrieving airplane mode settings", buf, 2u);
    }

    v6 = [(NSSServer *)self idsQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000771C;
    v7[3] = &unk_100034BC0;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v6, v7);
  }
}

- (void)setAirplaneModeSettings:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = a3;
    v8 = objc_opt_new();
    v9 = [v7 objectForKey:kNSSAirplaneModeCellularKey];
    [v8 setCellularOn:{objc_msgSend(v9, "BOOLValue")}];

    v10 = [v7 objectForKey:kNSSAirplaneModeWifiKey];
    [v8 setWifiOn:{objc_msgSend(v10, "BOOLValue")}];

    v11 = [v7 objectForKey:kNSSAirplaneModeBluetoothKey];

    [v8 setBluetoothOn:{objc_msgSend(v11, "BOOLValue")}];
    v12 = [(NSSServer *)self idsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000796C;
    block[3] = &unk_100034BE8;
    block[4] = self;
    v15 = v8;
    v16 = v6;
    v13 = v8;
    dispatch_async(v12, block);
  }
}

- (void)deleteDiagnosticLogFile:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = NSSLogForType();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_retainBlock(v7);
    *buf = 134217984;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (v7)
  {
    v10 = NSSLogForType();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sending request to delete %@", buf, 0xCu);
    }

    v11 = [(NSSServer *)self idsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100007BDC;
    block[3] = &unk_100034BE8;
    v13 = v6;
    v14 = self;
    v15 = v7;
    dispatch_async(v11, block);
  }
}

- (void)recordSoftwareUpdateSpaceFailure:(id)a3 osBeingUpdatedTo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = NSSLogForType();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_retainBlock(v10);
    *buf = 134217984;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (v10)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100007E4C;
    v13[3] = &unk_100034C10;
    v16 = v10;
    v14 = v8;
    v15 = v9;
    [(NSSCompanionServer *)self getAboutInfo:v13];
  }
}

- (void)getAboutInfo:(id)a3
{
  v4 = a3;
  v5 = NSSLogForType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_retainBlock(v4);
    *buf = 134217984;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (v4)
  {
    v7 = [(NSSServer *)self idsQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100008358;
    v8[3] = &unk_100034BC0;
    v8[4] = self;
    v9 = v4;
    dispatch_async(v7, v8);
  }
}

- (void)setDeviceName:(id)a3
{
  v4 = a3;
  v5 = NSSLogForType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "name: (%@)", buf, 0xCu);
  }

  v6 = objc_opt_new();
  [v6 setName:v4];
  v8 = 0;
  v7 = [(NSSServer *)self sendMessage:v6 identifier:&v8 sendTimeout:0 wantsAcknowledgement:@"setName" queueOneIdentifier:0 overBluetoothOnly:30.0];
}

- (void)obliterateGizmoPreservingeSIM:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = NSSLogForType();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_retainBlock(v6);
    *buf = 134218240;
    v15 = v8;
    v16 = 1024;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p); preserveeSIM: (%d)", buf, 0x12u);
  }

  v9 = [(NSSServer *)self idsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008684;
  block[3] = &unk_100034C38;
  v13 = v4;
  block[4] = self;
  v12 = v6;
  v10 = v6;
  dispatch_async(v9, block);
}

- (void)getAccountsInfoForAccountType:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = NSSLogForType();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_retainBlock(v7);
    *buf = 138412546;
    v16 = v6;
    v17 = 2048;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "accountType: (%@); replyBlock: (%p)", buf, 0x16u);
  }

  if (v7)
  {
    v10 = [(NSSServer *)self idsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008900;
    block[3] = &unk_100034BE8;
    v12 = v6;
    v13 = self;
    v14 = v7;
    dispatch_async(v10, block);
  }
}

- (void)getProfilesInfo:(id)a3
{
  v4 = a3;
  v5 = NSSLogForType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_retainBlock(v4);
    *buf = 134217984;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (v4)
  {
    v7 = [(NSSServer *)self idsQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100008B0C;
    v8[3] = &unk_100034BC0;
    v8[4] = self;
    v9 = v4;
    dispatch_async(v7, v8);
  }
}

- (void)getFullProfileInfoWithIdentifier:(id)a3 includeManagedPayloads:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = NSSLogForType();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_retainBlock(v9);
    *buf = 138412802;
    v19 = v8;
    v20 = 1024;
    v21 = v6;
    v22 = 2048;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "identifier: (%@); includeManagedPayloads: %{BOOL}d replyBlock: (%p)", buf, 0x1Cu);
  }

  if (v8 && v9)
  {
    v12 = [(NSSServer *)self idsQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100008D60;
    v13[3] = &unk_100034C60;
    v17 = v6;
    v14 = v8;
    v15 = self;
    v16 = v9;
    dispatch_async(v12, v13);
  }
}

- (void)installProfile:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = NSSLogForType();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 length];
    v10 = objc_retainBlock(v7);
    *buf = 134218240;
    v17 = v9;
    v18 = 2048;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "profileData: (%lu bytes); replyBlock: (%p)", buf, 0x16u);
  }

  if (v6 && v7)
  {
    v11 = [(NSSServer *)self idsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008FB8;
    block[3] = &unk_100034BE8;
    v13 = v6;
    v14 = self;
    v15 = v7;
    dispatch_async(v11, block);
  }
}

- (void)removeProfileWithIdentifier:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = NSSLogForType();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_retainBlock(v7);
    *buf = 138412546;
    v16 = v6;
    v17 = 2048;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "identifier: (%@); replyBlock: (%p)", buf, 0x16u);
  }

  if (v6 && v7)
  {
    v10 = [(NSSServer *)self idsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000091F4;
    block[3] = &unk_100034BE8;
    v12 = v6;
    v13 = self;
    v14 = v7;
    dispatch_async(v10, block);
  }
}

- (void)rebootDevice
{
  v3 = NSSLogForType();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, &unk_100025E91, v7, 2u);
  }

  v4 = objc_opt_new();
  v8[0] = IDSSendMessageOptionQueueOneIdentifierKey;
  v8[1] = IDSSendMessageOptionFireAndForgetKey;
  v9[0] = @"reboot";
  v9[1] = &__kCFBooleanTrue;
  v8[2] = IDSSendMessageOptionBypassDuetKey;
  v9[2] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];
  v6 = [(NSSServer *)self sendProtobuf:v4 options:v5 identifier:0];
}

- (BOOL)shouldFetchBuiltinAppsNotice
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  v5 = [v4 firstObject];

  NRWatchOSVersionForRemoteDevice();
  v6 = [v5 valueForProperty:NRDevicePropertyGreenTeaDevice];
  if ([v6 BOOLValue])
  {
    IsGreaterThanOrEqual = NRVersionIsGreaterThanOrEqual();
  }

  else
  {
    IsGreaterThanOrEqual = 0;
  }

  return IsGreaterThanOrEqual;
}

- (void)getLegalDocuments:(id)a3
{
  v4 = a3;
  v5 = NSSLogForType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_retainBlock(v4);
    *buf = 134217984;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (v4)
  {
    v7 = [(NSSServer *)self idsQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000095FC;
    v8[3] = &unk_100034C88;
    v8[4] = self;
    v9 = v4;
    dispatch_async(v7, v8);
  }
}

- (void)getLocalesInfo:(id)a3
{
  v4 = a3;
  v5 = NSSLogForType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_retainBlock(v4);
    *buf = 134217984;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (v4)
  {
    v7 = [(NSSServer *)self idsQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100009928;
    v8[3] = &unk_100034C88;
    v8[4] = self;
    v9 = v4;
    dispatch_async(v7, v8);
  }
}

- (void)getWatchFaces:(id)a3
{
  v4 = a3;
  v5 = NSSLogForType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[NSSCompanionServer getWatchFaces:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = [(NSSServer *)self idsQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100009B5C;
  v8[3] = &unk_100034BC0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)setWatchFaceIdentifier:(id)a3 forFocusModeIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = NSSLogForType();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[NSSCompanionServer setWatchFaceIdentifier:forFocusModeIdentifier:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v12 = [(NSSServer *)self idsQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100009EA0;
  v16[3] = &unk_100034CD8;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(v12, v16);
}

- (BOOL)messageIdentifier:(id)a3 hasBeenDeliveredWithContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = NSSCompanionServer;
  if ([(NSSServer *)&v26 messageIdentifier:v6 hasBeenDeliveredWithContext:v7])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_obliterationRequests objectForKey:v6];
    v8 = v9 != 0;
    if (v9)
    {
      v10 = NSSLogForType();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_retainBlock(v9);
        *buf = 134218242;
        *&buf[4] = v11;
        *&buf[12] = 2112;
        *&buf[14] = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Found matching replyBlock (%p) for identifier: (%@)", buf, 0x16u);
      }

      [(NSMutableDictionary *)self->_obliterationRequests removeObjectForKey:v6];
      [(NSSServer *)self cancelTimerForIdentifier:v6 timers:self->_obliterationDeliveryTimers utilityName:@"obliteration"];
      v12 = +[NRPairedDeviceRegistry sharedInstance];
      v13 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
      v14 = [v12 getAllDevicesWithArchivedAltAccountDevicesMatching:v13];
      v15 = [v14 firstObject];

      v31 = NRUnpairOptionObliterate;
      v32 = &__kCFBooleanTrue;
      v16 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v17 = [v16 mutableCopy];

      v18 = objc_retainBlock(v9);
      v19 = objc_getAssociatedObject(v18, "kNSSObliterationRequestPreserveeSIMAssociatedObjectKey");

      if ([v19 BOOLValue])
      {
        [v17 setObject:v19 forKeyedSubscript:@"BDE85C67-0FDD-4A95-A9B9-3CB5DD0C06A2"];
      }

      v20 = NSSLogForType();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        *&buf[4] = v15;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        v28 = v17;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Unpairing from (%@) using (%@) options: (%@)", buf, 0x20u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v28 = sub_10000B44C;
      v29 = sub_10000B45C;
      v21 = [NSString stringWithFormat:@"%s", "[NSSCompanionServer messageIdentifier:hasBeenDeliveredWithContext:]"];
      v30 = NSSOSTransactionCreate();

      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10000B464;
      v23[3] = &unk_100034DF0;
      v24 = v9;
      v25 = buf;
      [v12 unpairWithDevice:v15 withOptions:v17 operationHasBegun:v23];

      _Block_object_dispose(buf, 8);
    }
  }

  return v8;
}

- (void)handleUsageRespMsg:(id)a3
{
  v4 = a3;
  v5 = [v4 context];
  v6 = [v5 incomingResponseIdentifier];

  v7 = [v4 context];
  v8 = [v7 outgoingResponseIdentifier];

  v9 = NSSLogForType();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134218498;
    v22 = v4;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "idsProtobuf: (%p); incomingResponseIdentifier: (%@); outgoingResponseIdentifier: (%@)", &v21, 0x20u);
  }

  v10 = objc_opt_new();
  v11 = [PBDataReader alloc];
  v12 = [v4 data];
  v13 = [v11 initWithData:v12];

  v14 = [(NSMutableDictionary *)self->_usageRequests objectForKey:v6];
  v15 = NSSLogForType();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      v17 = objc_retainBlock(v14);
      v21 = 134217984;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Found matching replyBlock (%p)", &v21, 0xCu);
    }

    [(NSMutableDictionary *)self->_usageRequests removeObjectForKey:v6];
    [(NSSServer *)self cancelTimerForIdentifier:v6 timers:self->_usageReplyTimers utilityName:@"usage"];
    v18 = NSSUsageRespMsgReadFrom();
    v19 = NSSLogForType();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v20)
      {
        v21 = 138412290;
        v22 = v10;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending usageRespMsg to client: %@", &v21, 0xCu);
      }

      (v14)[2](v14, v10, 0);
    }

    else
    {
      if (v20)
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Could not parse incoming protobuf.", &v21, 2u);
      }
    }
  }

  else
  {
    if (v16)
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Could not find reply block", &v21, 2u);
    }
  }
}

- (void)handlePurgeUsageBundleRespMsg:(id)a3
{
  v4 = a3;
  v5 = [v4 context];
  v6 = [v5 incomingResponseIdentifier];

  v7 = [v4 context];
  v8 = [v7 outgoingResponseIdentifier];

  v9 = NSSLogForType();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v28 = v4;
    v29 = 2112;
    v30 = v6;
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "idsProtobuf: (%p); incomingResponseIdentifier: (%@); outgoingResponseIdentifier: (%@)", buf, 0x20u);
  }

  v10 = [(NSMutableDictionary *)self->_purgeUsageBundleRequests objectForKey:v6];
  v11 = NSSLogForType();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = objc_retainBlock(v10);
      *buf = 134217984;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found matching replyBlock (%p)", buf, 0xCu);
    }

    [(NSMutableDictionary *)self->_purgeUsageBundleRequests removeObjectForKey:v6];
    [(NSSServer *)self cancelTimerForIdentifier:v6 timers:self->_purgeUsageBundleReplyTimers utilityName:@"purgeBundle"];
    v11 = objc_opt_new();
    v14 = [PBDataReader alloc];
    v15 = [v4 data];
    v16 = [v14 initWithData:v15];

    v17 = NSSUsagePurgeBundleRespMsgReadFrom();
    v18 = NSSLogForType();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (!v17)
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Could not parse incoming protobuf.", buf, 2u);
      }

      goto LABEL_21;
    }

    if (v19)
    {
      *buf = 138412290;
      v28 = v11;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Successfully decoded message: %@", buf, 0xCu);
    }

    if ([v11 hasError])
    {
      v20 = [NSSet setWithObject:objc_opt_class()];
      v21 = [v11 error];
      v22 = [NSSKeyedArchiverUtil unarchiveObjectOfClasses:v20 withData:v21];

      if (v22)
      {
        v25 = NSUnderlyingErrorKey;
        v26 = v22;
        v23 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        v18 = [NSError errorWithDomain:@"NSSErrorDomain" code:2 userInfo:v23];

        v24 = NSSLogForType();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = v18;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Returning an error: (%@)", buf, 0xCu);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v22 = 0;
    }

    v18 = 0;
LABEL_20:
    (v10)[2](v10, v18);

LABEL_21:
    goto LABEL_22;
  }

  if (v12)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not find reply block", buf, 2u);
  }

LABEL_22:
}

- (void)handleIncomingDiagnosticLogFile:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = NSSLogForType();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Incoming log file at location: %@ with identifier: %@", &v12, 0x16u);
  }

  v9 = [(NSMutableDictionary *)self->_diagnosticLogFileRequests objectForKey:v7];
  if (v9)
  {
    v10 = NSSLogForType();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_retainBlock(v9);
      v12 = 134217984;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Found matching replyBlock (%p)", &v12, 0xCu);
    }

    [(NSMutableDictionary *)self->_diagnosticLogFileRequests removeObjectForKey:v7];
    [(NSSServer *)self cancelTimerForIdentifier:v7 timers:self->_diagnosticLogFileReplyTimers utilityName:@"diagnosticLogFile"];
    (v9)[2](v9, v6, 0);
  }
}

- (void)handleDiagnosticLogsInfoRespMsg:(id)a3
{
  v3 = a3;
  v4 = [v3 context];
  v5 = [v4 incomingResponseIdentifier];

  v6 = [v3 context];
  v7 = [v6 outgoingResponseIdentifier];

  v8 = NSSLogForType();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v56 = v3;
    v57 = 2112;
    v58 = v5;
    v59 = 2112;
    v60 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "idsProtobuf: (%p); incomingResponseIdentifier: (%@); outgoingResponseIdentifier: (%@)", buf, 0x20u);
  }

  v9 = [(NSMutableDictionary *)self->_diagnosticLogsInfoRequests objectForKey:v5];
  v10 = NSSLogForType();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = objc_retainBlock(v9);
      *buf = 134217984;
      v56 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Found matching replyBlock (%p)", buf, 0xCu);
    }

    [(NSMutableDictionary *)self->_diagnosticLogsInfoRequests removeObjectForKey:v5];
    [(NSSServer *)self cancelTimerForIdentifier:v5 timers:self->_diagnosticLogsInfoReplyTimers utilityName:@"diagnosticLogs"];
    v10 = objc_opt_new();
    v13 = [PBDataReader alloc];
    v14 = [v3 data];
    v15 = [v13 initWithData:v14];

    LODWORD(v13) = NSSDiagnosticLogsInfoRespMsgReadFrom();
    v16 = NSSLogForType();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v17)
      {
        *buf = 138412290;
        v56 = v10;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Successfully decoded message: %@", buf, 0xCu);
      }

      v16 = objc_opt_new();
      v18 = [v10 paths];

      v44 = v15;
      if (v18)
      {
        v19 = [v10 paths];

        v16 = v19;
      }

      v20 = objc_alloc_init(NSMutableDictionary);
      v21 = [v10 filesByCategorys];

      if (v21)
      {
        v38 = v16;
        v39 = v10;
        v40 = v9;
        v41 = v7;
        v42 = v5;
        v43 = v3;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        obj = [v10 filesByCategorys];
        v22 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v51;
          v45 = NSSFilesCategoryTypeAppPrivacyReports;
          v46 = NSSFilesCategoryTypeScreenCaptures;
          v47 = NSSFilesCategoryTypeSysdiagnose;
          v25 = NSSFilesCategoryTypeScreenshots;
          v26 = NSSFilesCategoryTypeDiagnostics;
          do
          {
            for (i = 0; i != v23; i = i + 1)
            {
              if (*v51 != v24)
              {
                objc_enumerationMutation(obj);
              }

              v28 = *(*(&v50 + 1) + 8 * i);
              v29 = [v28 directoryPath];
              v30 = [v28 filePaths];
              v31 = [(NSSCompanionServer *)self _fullFileNamesFrom:v29 files:v30];

              v32 = [v28 filesType];
              v33 = v26;
              if (v32 == 1)
              {
                goto LABEL_22;
              }

              v34 = [v28 filesType];
              v33 = v25;
              if (v34 == 3 || (v35 = [v28 filesType], v33 = v47, v35 == 2) || (v36 = objc_msgSend(v28, "filesType"), v33 = v46, v36 == 4) || (v37 = objc_msgSend(v28, "filesType"), v33 = v45, v37 == 5))
              {
LABEL_22:
                [v20 setObject:v31 forKeyedSubscript:v33];
              }
            }

            v23 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
          }

          while (v23);
        }

        v5 = v42;
        v3 = v43;
        v9 = v40;
        v7 = v41;
        v16 = v38;
        v10 = v39;
      }

      (v9)[2](v9, v16, v20, 0);

      v15 = v44;
    }

    else if (v17)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Could not parse incoming protobuf", buf, 2u);
    }
  }

  else if (v11)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Could not find reply block", buf, 2u);
  }
}

- (id)_fullFileNamesFrom:(id)a3 files:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v5 stringByAppendingPathComponent:{*(*(&v15 + 1) + 8 * i), v15}];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)handleCancelLogTransferRespMsg:(id)a3
{
  v4 = a3;
  v5 = [v4 context];
  v6 = [v5 incomingResponseIdentifier];

  v7 = [v4 context];
  v8 = [v7 outgoingResponseIdentifier];

  v9 = NSSLogForType();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134218498;
    v24 = v4;
    v25 = 2112;
    v26 = v6;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "idsProtobuf: (%p); incomingResponseIdentifier: (%@); outgoingResponseIdentifier: (%@)", &v23, 0x20u);
  }

  v10 = [(NSMutableDictionary *)self->_cancelLogTransferRequests objectForKey:v6];
  [(NSMutableDictionary *)self->_cancelLogTransferRequests removeObjectForKey:v6];
  [(NSSServer *)self cancelTimerForIdentifier:v6 timers:self->_cancelLogTransferReplyTimers utilityName:@"cancelLogTransfer"];
  v11 = NSSLogForType();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = objc_retainBlock(v10);
      v23 = 134217984;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found matching replyBlock: (%p)", &v23, 0xCu);
    }

    v11 = objc_opt_new();
    v14 = [PBDataReader alloc];
    v15 = [v4 data];
    v16 = [v14 initWithData:v15];

    if (NSSCancelLogTransferRespMsgReadFrom())
    {
      v17 = [NSSet setWithObject:objc_opt_class()];
      v18 = [v11 error];
      v19 = [NSSKeyedArchiverUtil unarchiveObjectOfClasses:v17 withData:v18];

      v20 = NSSLogForType();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Error returned from deletion attempt: %@", &v23, 0xCu);
      }

      if (!v19)
      {
        v21 = [(NSSCompanionServer *)self fileTransferProgress];
        v22 = [(NSSCompanionServer *)self cancelledLogInTransit];
        [v21 removeObjectForKey:v22];
      }

      (v10)[2](v10, v19);
    }

    else
    {
      v19 = NSSLogForType();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Could not parse incoming protobuf.", &v23, 2u);
      }
    }
  }

  else if (v12)
  {
    LOWORD(v23) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not find reply block", &v23, 2u);
  }

  [(NSSCompanionServer *)self setCancelledLogInTransit:0];
}

- (void)handleLogDeleteRespMsg:(id)a3
{
  v4 = a3;
  v5 = [v4 context];
  v6 = [v5 incomingResponseIdentifier];

  v7 = [v4 context];
  v8 = [v7 outgoingResponseIdentifier];

  v9 = NSSLogForType();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134218498;
    v22 = v4;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "idsProtobuf: (%p); incomingResponseIdentifier: (%@); outgoingResponseIdentifier: (%@)", &v21, 0x20u);
  }

  v10 = [(NSMutableDictionary *)self->_logDeleteRequests objectForKey:v6];
  v11 = NSSLogForType();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = objc_retainBlock(v10);
      v21 = 134217984;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found matching replyBlock: (%p)", &v21, 0xCu);
    }

    [(NSMutableDictionary *)self->_logDeleteRequests removeObjectForKey:v6];
    [(NSSServer *)self cancelTimerForIdentifier:v6 timers:self->_logDeleteReplyTimers utilityName:@"logDelete"];
    v11 = objc_opt_new();
    v14 = [PBDataReader alloc];
    v15 = [v4 data];
    v16 = [v14 initWithData:v15];

    if (NSSLogDeleteRespMsgReadFrom())
    {
      v17 = [NSSet setWithObject:objc_opt_class()];
      v18 = [v11 error];
      v19 = [NSSKeyedArchiverUtil unarchiveObjectOfClasses:v17 withData:v18];

      v20 = NSSLogForType();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Error returned from deletion attempt: %@", &v21, 0xCu);
      }

      (v10)[2](v10, v19);
    }

    else
    {
      v19 = NSSLogForType();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Could not parse incoming protobuf.", &v21, 2u);
      }
    }
  }

  else if (v12)
  {
    LOWORD(v21) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not find reply block", &v21, 2u);
  }
}

- (void)handleIncomingFileTransferProgressMsg:(id)a3
{
  v4 = a3;
  v5 = [v4 context];
  v6 = [v5 incomingResponseIdentifier];

  v7 = [v4 context];
  v8 = [v7 outgoingResponseIdentifier];

  v9 = NSSLogForType();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v24 = v4;
    v25 = 2112;
    v26 = v6;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "idsProtobuf: (%p); incomingResponseIdentifier: (%@); outgoingResponseIdentifier: (%@)", buf, 0x20u);
  }

  v10 = objc_opt_new();
  v11 = [PBDataReader alloc];
  v12 = [v4 data];
  v13 = [v11 initWithData:v12];

  if (NSSLogTransferProgressMsgReadFrom())
  {
    v14 = [v10 path];
    v15 = [v10 progress];
    v16 = NSSLogForType();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = v14;
      v25 = 2048;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "received file transfer progress message for filename: %@ and progress: %lu", buf, 0x16u);
    }

    v17 = [(NSSServer *)self idsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000CEF8;
    block[3] = &unk_100034E18;
    v21 = self;
    v22 = v15;
    v20 = v14;
    v18 = v14;
    dispatch_async(v17, block);
  }

  else
  {
    v18 = NSSLogForType();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Could not parse incoming protobuf.", buf, 2u);
    }
  }
}

- (void)handleAirplaneModeSettingsRespMsg:(id)a3
{
  v4 = a3;
  v5 = [v4 context];
  v6 = [v5 incomingResponseIdentifier];

  v7 = [v4 context];
  v8 = [v7 outgoingResponseIdentifier];

  v9 = NSSLogForType();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v24 = v4;
    v25 = 2112;
    v26 = v6;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "idsProtobuf: (%p); incomingResponseIdentifier: (%@); outgoingResponseIdentifier: (%@)", buf, 0x20u);
  }

  v10 = [(NSMutableDictionary *)self->_airplaneModeSettingsRequests objectForKey:v6];
  v11 = NSSLogForType();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_retainBlock(v10);
      *buf = 134217984;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found matching replyBlock (%p)", buf, 0xCu);
    }

    [(NSMutableDictionary *)self->_airplaneModeSettingsRequests removeObjectForKey:v6];
    [(NSSServer *)self cancelTimerForIdentifier:v6 timers:self->_airplaneModeSettingsReplyTimers utilityName:@"airplaneModeSettings"];
    v12 = objc_opt_new();
    v14 = [PBDataReader alloc];
    v15 = [v4 data];
    v16 = [v14 initWithData:v15];

    if (NSSAirplaneModeSettingsMsgReadFrom())
    {
      v17 = [NSNumber numberWithBool:[v12 cellularOn]];
      v22[0] = v17;
      v21[1] = kNSSAirplaneModeBluetoothKey;
      v18 = [NSNumber numberWithBool:[v12 bluetoothOn]];
      v22[1] = v18;
      v21[2] = kNSSAirplaneModeWifiKey;
      v19 = [NSNumber numberWithBool:[v12 wifiOn]];
      v22[2] = v19;
      v20 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];

      (v10)[2](v10, v20, 0);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10001F6E0(v12);
  }
}

- (void)handleRefreshAirplaneModeSettingsReqMsg:(id)a3
{
  v3 = a3;
  v4 = [v3 context];
  v5 = [v4 incomingResponseIdentifier];

  v6 = [v3 context];
  v7 = [v6 outgoingResponseIdentifier];

  v8 = NSSLogForType();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218498;
    v11 = v3;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "idsProtobuf: (%p); incomingResponseIdentifier: (%@); outgoingResponseIdentifier: (%@)", &v10, 0x20u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, NSSAirplaneModeSettingsChangedNotification, 0, 0, 0);
}

- (void)handleAboutInfoRespMsg:(id)a3
{
  v4 = a3;
  v5 = [v4 context];
  v6 = [v5 incomingResponseIdentifier];

  v7 = [v4 context];
  v8 = [v7 outgoingResponseIdentifier];

  v9 = NSSLogForType();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 134218498;
    v29 = v4;
    v30 = 2112;
    v31 = v6;
    v32 = 2112;
    v33 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "idsProtobuf: (%p); incomingResponseIdentifier: (%@); outgoingResponseIdentifier: (%@)", &v28, 0x20u);
  }

  v10 = [(NSMutableDictionary *)self->_aboutInfoRequests objectForKey:v6];
  v11 = NSSLogForType();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = objc_retainBlock(v10);
      v28 = 134217984;
      v29 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found matching replyBlock (%p)", &v28, 0xCu);
    }

    [(NSMutableDictionary *)self->_aboutInfoRequests removeObjectForKey:v6];
    [(NSSServer *)self cancelTimerForIdentifier:v6 timers:self->_aboutInfoReplyTimers utilityName:@"about"];
    v11 = objc_opt_new();
    v14 = [PBDataReader alloc];
    v15 = [v4 data];
    v16 = [v14 initWithData:v15];

    v17 = NSSAboutInfoRespMsgReadFrom();
    v18 = NSSLogForType();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        v28 = 138412290;
        v29 = v11;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Successfully decoded message: %@", &v28, 0xCu);
      }

      v18 = objc_opt_new();
      if ([v11 hasAvailableStorageInBytes])
      {
        v20 = [NSNumber numberWithUnsignedLongLong:[v11 availableStorageInBytes]];
        [v18 setObject:v20 forKey:kNSSAboutAvailableStorageKey];
      }

      if ([v11 hasNumberOfApps])
      {
        v21 = [NSNumber numberWithUnsignedLongLong:[v11 numberOfApps]];
        [v18 setObject:v21 forKey:kNSSAboutAppsKey];
      }

      if ([v11 hasNumberOfSongs])
      {
        v22 = [NSNumber numberWithUnsignedLongLong:[v11 numberOfSongs]];
        [v18 setObject:v22 forKey:kNSSAboutSongsKey];
      }

      if ([v11 hasNumberOfPhotos])
      {
        v23 = [NSNumber numberWithUnsignedLongLong:[v11 numberOfPhotos]];
        [v18 setObject:v23 forKey:kNSSAboutPhotosKey];
      }

      if ([v11 hasBatteryCurrentCapacity])
      {
        v24 = [NSNumber numberWithUnsignedLongLong:[v11 batteryCurrentCapacity]];
        [v18 setObject:v24 forKey:kNSSAboutBatteryCurrentCapacityKey];
      }

      if ([v11 hasBatteryIsCharging])
      {
        v25 = [NSNumber numberWithBool:[v11 batteryIsCharging]];
        [v18 setObject:v25 forKey:kNSSAboutBatteryIsChargingKey];
      }

      if ([v11 hasPurgeableSpace])
      {
        v26 = [NSNumber numberWithUnsignedLongLong:[v11 purgeableSpace]];
        [v18 setObject:v26 forKey:kNSSAboutPurgableStorageKey];
      }

      if ([v11 userDeletableSpace])
      {
        v27 = [NSNumber numberWithUnsignedLongLong:[v11 userDeletableSpace]];
        [v18 setObject:v27 forKey:kNSSAboutUserDeletableStorageKey];
      }

      (v10)[2](v10, v18, 0);
    }

    else if (v19)
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Could not parse incoming protobuf.", &v28, 2u);
    }
  }

  else if (v12)
  {
    LOWORD(v28) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not find reply block", &v28, 2u);
  }
}

- (void)handleAccountsInfoRespMsg:(id)a3
{
  v4 = a3;
  v5 = [v4 context];
  v6 = [v5 incomingResponseIdentifier];

  v7 = [v4 context];
  v8 = [v7 outgoingResponseIdentifier];

  v9 = NSSLogForType();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v59 = v4;
    v60 = 2112;
    v61 = v6;
    v62 = 2112;
    v63 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "idsProtobuf: (%p); incomingResponseIdentifier: (%@); outgoingResponseIdentifier: (%@)", buf, 0x20u);
  }

  v10 = [(NSMutableDictionary *)self->_accountsInfoRequests objectForKey:v6];
  v11 = NSSLogForType();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = objc_retainBlock(v10);
      *buf = 134217984;
      v59 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found matching replyBlock (%p)", buf, 0xCu);
    }

    [(NSMutableDictionary *)self->_accountsInfoRequests removeObjectForKey:v6];
    [(NSSServer *)self cancelTimerForIdentifier:v6 timers:self->_accountsInfoReplyTimers utilityName:@"accounts"];
    v11 = objc_opt_new();
    v14 = [PBDataReader alloc];
    v15 = [v4 data];
    v16 = [v14 initWithData:v15];

    if (NSSAccountsInfoRespMsgReadFrom())
    {
      v40 = v16;
      v42 = v10;
      v43 = v8;
      v44 = v6;
      v45 = v4;
      v39 = objc_opt_new();
      v17 = objc_opt_new();
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v41 = v11;
      obj = [v11 accounts];
      v18 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v54;
        v51 = kNSSAccountIdentifierKey;
        v49 = kNSSAccountDSIDKey;
        v50 = kNSSAccountTypeKey;
        v47 = kNSSAccountUsernameKey;
        v48 = kNSSAccountAltDSIDKey;
        v46 = kNSSAccountIsAuthenticatedKey;
        v21 = kNSSAccountIsPrimaryiCloudAccountKey;
        v22 = kNSSAccountIsManagedKey;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v54 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v53 + 1) + 8 * i);
            v25 = NSSLogForType();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v59 = v24;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Found account: %@", buf, 0xCu);
            }

            v26 = objc_opt_new();
            if ([v24 hasIdentifier])
            {
              v27 = [v24 identifier];
              [v26 setObject:v27 forKeyedSubscript:v51];
            }

            if ([v24 hasType])
            {
              v28 = [v24 type];
              [v26 setObject:v28 forKeyedSubscript:v50];
            }

            if ([v24 hasDSID])
            {
              v29 = [v24 dSID];
              [v26 setObject:v29 forKeyedSubscript:v49];
            }

            if ([v24 hasAltDSID])
            {
              v30 = [v24 altDSID];
              [v26 setObject:v30 forKeyedSubscript:v48];
            }

            if ([v24 hasUsername])
            {
              v31 = [v24 username];
              [v26 setObject:v31 forKeyedSubscript:v47];
            }

            if ([v24 hasAuthenticated])
            {
              v32 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v24 authenticated]);
              [v26 setObject:v32 forKeyedSubscript:v46];
            }

            if ([v24 hasAaPrimaryAccount])
            {
              v33 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v24 aaPrimaryAccount]);
              [v26 setObject:v33 forKeyedSubscript:v21];
            }

            if ([v24 hasAaIsManaged])
            {
              v34 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v24 aaIsManaged]);
              [v26 setObject:v34 forKeyedSubscript:v22];
            }

            [v17 addObject:v26];
          }

          v19 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
        }

        while (v19);
      }

      if ([v17 count])
      {
        v35 = v39;
        [v39 setObject:v17 forKeyedSubscript:kNSSAccountsKey];
        v10 = v42;
        v8 = v43;
      }

      else
      {
        v36 = NSSLogForType();
        v10 = v42;
        v8 = v43;
        v35 = v39;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "No account on device", buf, 2u);
        }
      }

      v11 = v41;
      v6 = v44;
      v4 = v45;
      if ([v41 hasWatchAKDevice])
      {
        v37 = [v41 watchAKDevice];
        v38 = [AKDevice deviceWithSerializedData:v37];
        [v35 setObject:v38 forKeyedSubscript:kNSSAKDeviceKey];
      }

      (v10)[2](v10, v35, 0);

      v16 = v40;
    }

    else
    {
      v35 = NSSLogForType();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Could not parse incoming protobuf.", buf, 2u);
      }
    }
  }

  else if (v12)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not find reply block", buf, 2u);
  }
}

- (void)handleProfilesInfoRespMsg:(id)a3
{
  v4 = a3;
  v5 = [v4 context];
  v6 = [v5 incomingResponseIdentifier];

  v7 = [v4 context];
  v8 = [v7 outgoingResponseIdentifier];

  v9 = NSSLogForType();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v53 = v4;
    v54 = 2112;
    v55 = v6;
    v56 = 2112;
    v57 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "idsProtobuf: (%p); incomingResponseIdentifier: (%@); outgoingResponseIdentifier: (%@)", buf, 0x20u);
  }

  v10 = [(NSMutableDictionary *)self->_profilesInfoRequests objectForKey:v6];
  v11 = NSSLogForType();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = objc_retainBlock(v10);
      *buf = 134217984;
      v53 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found matching replyBlock (%p)", buf, 0xCu);
    }

    [(NSMutableDictionary *)self->_profilesInfoRequests removeObjectForKey:v6];
    [(NSSServer *)self cancelTimerForIdentifier:v6 timers:self->_profilesInfoReplyTimers utilityName:@"profilesInfo"];
    v11 = objc_opt_new();
    v14 = [PBDataReader alloc];
    v15 = [v4 data];
    v16 = [v14 initWithData:v15];

    if (NSSProfilesInfoRespMsgReadFrom())
    {
      v46 = objc_opt_new();
      if ([v11 hasMdmProfile])
      {
        v17 = [v11 mdmProfile];
        v18 = [v17 toMCProfileInfo];

        v19 = [v11 mdmProfile];
        v20 = [v19 toMCProfileInfo];
        [v46 setObject:v20 forKey:kNSSProfilesMDMProfileInfoKey];

        v21 = NSSLogForType();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v53 = v18;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "- MDM profile: %@", buf, 0xCu);
        }
      }

      v40 = v16;
      v42 = v10;
      v43 = v8;
      v44 = v6;
      v45 = v4;
      v22 = [[NSMutableArray alloc] initWithCapacity:{-[NSObject configProfilesCount](v11, "configProfilesCount")}];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v41 = v11;
      v23 = [v11 configProfiles];
      v24 = [v23 countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v48;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v48 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = [*(*(&v47 + 1) + 8 * i) toMCProfileInfo];
            [v22 addObject:v28];
            v29 = NSSLogForType();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v53 = v28;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "- Config profile: %@", buf, 0xCu);
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v47 objects:v51 count:16];
        }

        while (v25);
      }

      v30 = v46;
      if ([v22 count])
      {
        [v46 setObject:v22 forKey:kNSSProfilesConfigurationProfilesInfoKey];
      }

      v11 = v41;
      v10 = v42;
      v16 = v40;
      if ([v41 hasRmAccountData])
      {
        v31 = [NSSet setWithObject:objc_opt_class()];
        v32 = [v41 rmAccountData];
        v33 = [NSSKeyedArchiverUtil unarchiveObjectOfClasses:v31 withData:v32];

        if (v33)
        {
          [v46 setObject:v33 forKey:kNSSRemoteManagementAccountKey];
        }
      }

      v4 = v45;
      if ([v41 hasManagedAppsData])
      {
        v34 = objc_opt_class();
        v35 = objc_opt_class();
        v36 = [NSSet setWithObjects:v34, v35, objc_opt_class(), 0];
        v37 = [v41 managedAppsData];
        v38 = [NSSKeyedArchiverUtil unarchiveObjectOfClasses:v36 withData:v37];

        if (v38)
        {
          [v46 setObject:v38 forKey:kNSSManagedAppsInfoKey];
        }
      }

      if (![v46 count])
      {
        v39 = NSSLogForType();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "No installed profiles", buf, 2u);
        }
      }

      (*(v42 + 2))(v42, v46, 0);

      v8 = v43;
      v6 = v44;
    }

    else
    {
      v30 = NSSLogForType();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Could not parse incoming protobuf.", buf, 2u);
      }
    }
  }

  else if (v12)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not find reply block", buf, 2u);
  }
}

- (void)handleProfileDataRespMsg:(id)a3
{
  v4 = a3;
  v5 = [v4 context];
  v6 = [v5 incomingResponseIdentifier];

  v7 = [v4 context];
  v8 = [v7 outgoingResponseIdentifier];

  v9 = NSSLogForType();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v34 = v4;
    v35 = 2112;
    v36 = v6;
    v37 = 2112;
    v38 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "idsProtobuf: (%p); incomingResponseIdentifier: (%@); outgoingResponseIdentifier: (%@)", buf, 0x20u);
  }

  v10 = [(NSMutableDictionary *)self->_profileDataRequests objectForKey:v6];
  v11 = NSSLogForType();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = objc_retainBlock(v10);
      *buf = 134217984;
      v34 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found matching replyBlock (%p)", buf, 0xCu);
    }

    [(NSMutableDictionary *)self->_profileDataRequests removeObjectForKey:v6];
    [(NSSServer *)self cancelTimerForIdentifier:v6 timers:self->_profileDataReplyTimers utilityName:@"profileData"];
    v11 = objc_opt_new();
    v14 = [PBDataReader alloc];
    v15 = [v4 data];
    v16 = [v14 initWithData:v15];

    v17 = NSSProfileDataRespMsgReadFrom();
    v18 = NSSLogForType();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        v31 = [v11 profileData];
        v32 = v8;
        v20 = [v31 length];
        v21 = [v11 profilePayloadsSummary];
        v22 = [v21 length];
        v23 = [v11 rmConfigurationViewModels];
        v24 = [v23 length];
        *buf = 134218496;
        v34 = v20;
        v8 = v32;
        v35 = 2048;
        v36 = v22;
        v37 = 2048;
        v38 = v24;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Successfully decoded message: {profileData: (%lu bytes)} {profilePayloadsSummary: (%lu bytes)} {rmConfigurationViewModels: (%lu bytes)}", buf, 0x20u);
      }

      v18 = objc_alloc_init(NSMutableDictionary);
      v25 = [v11 profileData];

      if (v25)
      {
        v26 = [v11 profileData];
        [v18 setObject:v26 forKey:kNSSProfileDataKey];
      }

      v27 = [v11 profilePayloadsSummary];

      if (v27)
      {
        v28 = [v11 profilePayloadsSummary];
        [v18 setObject:v28 forKey:kNSSProfilePayloadsSummaryKey];
      }

      v29 = [v11 rmConfigurationViewModels];

      if (v29)
      {
        v30 = [v11 rmConfigurationViewModels];
        [v18 setObject:v30 forKey:kNSSRMConfigurationViewModelsKey];
      }

      (v10)[2](v10, v18, 0);
    }

    else if (v19)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Could not parse incoming protobuf.", buf, 2u);
    }
  }

  else if (v12)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not find reply block", buf, 2u);
  }
}

- (void)handleInstallProfileRespMsg:(id)a3
{
  v4 = a3;
  v5 = [v4 context];
  v6 = [v5 incomingResponseIdentifier];

  v7 = [v4 context];
  v8 = [v7 outgoingResponseIdentifier];

  v9 = NSSLogForType();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v28 = v4;
    v29 = 2112;
    v30 = v6;
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "idsProtobuf: (%p); incomingResponseIdentifier: (%@); outgoingResponseIdentifier: (%@)", buf, 0x20u);
  }

  v10 = [(NSMutableDictionary *)self->_installProfileRequests objectForKey:v6];
  v11 = NSSLogForType();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = objc_retainBlock(v10);
      *buf = 134217984;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found matching replyBlock (%p)", buf, 0xCu);
    }

    [(NSMutableDictionary *)self->_installProfileRequests removeObjectForKey:v6];
    [(NSSServer *)self cancelTimerForIdentifier:v6 timers:self->_installProfileReplyTimers utilityName:@"installProfile"];
    v11 = objc_opt_new();
    v14 = [PBDataReader alloc];
    v15 = [v4 data];
    v16 = [v14 initWithData:v15];

    v17 = NSSInstallProfileRespMsgReadFrom();
    v18 = NSSLogForType();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (!v17)
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Could not parse incoming protobuf.", buf, 2u);
      }

      goto LABEL_21;
    }

    if (v19)
    {
      *buf = 138412290;
      v28 = v11;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Successfully decoded message: %@", buf, 0xCu);
    }

    if ([v11 hasError])
    {
      v20 = [NSSet setWithObject:objc_opt_class()];
      v21 = [v11 error];
      v22 = [NSSKeyedArchiverUtil unarchiveObjectOfClasses:v20 withData:v21];

      if (v22)
      {
        v25 = NSUnderlyingErrorKey;
        v26 = v22;
        v23 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        v18 = [NSError errorWithDomain:@"NSSErrorDomain" code:3 userInfo:v23];

        v24 = NSSLogForType();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = v18;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Returning an error: (%@)", buf, 0xCu);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v22 = 0;
    }

    v18 = 0;
LABEL_20:
    (v10)[2](v10, v18);

LABEL_21:
    goto LABEL_22;
  }

  if (v12)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not find reply block", buf, 2u);
  }

LABEL_22:
}

- (void)handleRemoveProfileRespMsg:(id)a3
{
  v4 = a3;
  v5 = [v4 context];
  v6 = [v5 incomingResponseIdentifier];

  v7 = [v4 context];
  v8 = [v7 outgoingResponseIdentifier];

  v9 = NSSLogForType();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v28 = v4;
    v29 = 2112;
    v30 = v6;
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "idsProtobuf: (%p); incomingResponseIdentifier: (%@); outgoingResponseIdentifier: (%@)", buf, 0x20u);
  }

  v10 = [(NSMutableDictionary *)self->_removeProfileRequests objectForKey:v6];
  v11 = NSSLogForType();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = objc_retainBlock(v10);
      *buf = 134217984;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found matching replyBlock (%p)", buf, 0xCu);
    }

    [(NSMutableDictionary *)self->_removeProfileRequests removeObjectForKey:v6];
    [(NSSServer *)self cancelTimerForIdentifier:v6 timers:self->_removeProfileReplyTimers utilityName:@"removeProfile"];
    v11 = objc_opt_new();
    v14 = [PBDataReader alloc];
    v15 = [v4 data];
    v16 = [v14 initWithData:v15];

    v17 = NSSRemoveProfileRespMsgReadFrom();
    v18 = NSSLogForType();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (!v17)
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Could not parse incoming protobuf.", buf, 2u);
      }

      goto LABEL_21;
    }

    if (v19)
    {
      *buf = 138412290;
      v28 = v11;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Successfully decoded message: %@", buf, 0xCu);
    }

    if ([v11 hasError])
    {
      v20 = [NSSet setWithObject:objc_opt_class()];
      v21 = [v11 error];
      v22 = [NSSKeyedArchiverUtil unarchiveObjectOfClasses:v20 withData:v21];

      if (v22)
      {
        v25 = NSUnderlyingErrorKey;
        v26 = v22;
        v23 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        v18 = [NSError errorWithDomain:@"NSSErrorDomain" code:4 userInfo:v23];

        v24 = NSSLogForType();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = v18;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Returning an error: (%@)", buf, 0xCu);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v22 = 0;
    }

    v18 = 0;
LABEL_20:
    (v10)[2](v10, v18);

LABEL_21:
    goto LABEL_22;
  }

  if (v12)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not find reply block", buf, 2u);
  }

LABEL_22:
}

- (void)handleLegalDocumentsRespMsg:(id)a3
{
  v4 = a3;
  v5 = [v4 context];
  v6 = [v5 incomingResponseIdentifier];

  v7 = [v4 context];
  v8 = [v7 outgoingResponseIdentifier];

  v9 = NSSLogForType();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v45 = v4;
    v46 = 2112;
    v47 = v6;
    v48 = 2112;
    v49 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "idsProtobuf: (%p); incomingResponseIdentifier: (%@); outgoingResponseIdentifier: (%@)", buf, 0x20u);
  }

  v10 = [(NSMutableDictionary *)self->_legalDocumentsRequests objectForKey:v6];
  v11 = NSSLogForType();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = objc_retainBlock(v10);
      *buf = 134217984;
      v45 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found matching replyBlock (%p)", buf, 0xCu);
    }

    [(NSMutableDictionary *)self->_legalDocumentsRequests removeObjectForKey:v6];
    [(NSSServer *)self cancelTimerForIdentifier:v6 timers:self->_legalDocumentsReplyTimers utilityName:@"legal"];
    v14 = objc_opt_new();
    v15 = [PBDataReader alloc];
    v16 = [v4 data];
    v11 = [v15 initWithData:v16];

    LODWORD(v15) = NSSLegalDocumentsRespMsgReadFrom();
    v17 = NSSLogForType();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      v40 = v8;
      v41 = v6;
      if (v18)
      {
        v19 = [v14 legalNotices];
        v34 = [v19 length];
        v38 = [v14 license];
        v33 = [v38 length];
        v36 = [v14 sarStatement];
        v20 = [v36 length];
        v21 = [v14 hasSarUrlAdded];
        v22 = [v14 sarUrlAdded];
        v23 = [v14 buildVersion];
        *buf = 134219266;
        v45 = v34;
        v46 = 2048;
        v47 = v33;
        v48 = 2048;
        v49 = v20;
        v50 = 1024;
        v51 = v21;
        v52 = 1024;
        v53 = v22;
        v54 = 2112;
        v55 = v23;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Successfully decoded message: {legalNotices: (%lu bytes); license: (%lu bytes); sarStatement: (%lu bytes); hasSarUrlAdded: (%d) sarUrlAdded: (%d) buildVersion: (%@)}", buf, 0x36u);
      }

      v39 = [v14 buildVersion];
      v24 = [v14 license];
      v25 = [v14 legalNotices];
      v26 = [v14 sarStatement];
      v17 = [v14 builtinApps];
      v37 = [v14 hasSarUrlAdded];
      v35 = [v14 sarUrlAdded];

      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10000FA58;
      v42[3] = &unk_100034E40;
      v27 = objc_opt_new();
      v43 = v27;
      v28 = objc_retainBlock(v42);
      (v28[2])(v28, kNSSLegalDocumentsLegalNoticesKey, v25);

      (v28[2])(v28, kNSSLegalDocumentsLicenseKey, v24);
      (v28[2])(v28, kNSSLegalDocumentsSarStatementKey, v26);

      v29 = [NSNumber numberWithBool:v35 & 1 | ((v37 & 1) == 0)];
      [v27 setObject:v29 forKeyedSubscript:kNSSLegalDocumentsSarUrlAddedKey];

      if ([v17 length])
      {
        (v28[2])(v28, kNSSLegalDocumentsBuiltinAppsKey, v17);

        v17 = 0;
      }

      v8 = v40;
      (v10)[2](v10, v27, 0);
      v30 = objc_retainBlock(v10);
      v31 = objc_getAssociatedObject(v30, "kNSSLegalDocumentsPreferredLanguagesAssociatedObjectKey");

      v32 = v39;
      [NSSLegalDocumentsCache cacheReply:v27 forPreferredLanguages:v31 gizmoBuildVersion:v39];

      v6 = v41;
    }

    else
    {
      if (v18)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Could not parse incoming protobuf.", buf, 2u);
      }

      v32 = v14;
    }
  }

  else if (v12)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not find reply block", buf, 2u);
  }
}

- (void)handleLocalesInfoRespMsg:(id)a3
{
  v4 = a3;
  v5 = [v4 context];
  v6 = [v5 incomingResponseIdentifier];

  v7 = [v4 context];
  v8 = [v7 outgoingResponseIdentifier];

  v9 = NSSLogForType();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v81 = v4;
    v82 = 2112;
    v83 = v6;
    v84 = 2112;
    v85 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "idsProtobuf: (%p); incomingResponseIdentifier: (%@); outgoingResponseIdentifier: (%@)", buf, 0x20u);
  }

  v10 = [(NSMutableDictionary *)self->_localesInfoRequests objectForKey:v6];
  v11 = NSSLogForType();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = objc_retainBlock(v10);
      *buf = 134217984;
      v81 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found matching replyBlock (%p)", buf, 0xCu);
    }

    [(NSMutableDictionary *)self->_localesInfoRequests removeObjectForKey:v6];
    [(NSSServer *)self cancelTimerForIdentifier:v6 timers:self->_localesInfoReplyTimers utilityName:@"locales"];
    v14 = [NSSLocalesInfoRespMsg alloc];
    v15 = [v4 data];
    v11 = [v14 initWithData:v15];

    v16 = NSSLogForType();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v17)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Successfully decoded message", buf, 2u);
      }

      v18 = NSSLogForType();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v11 buildVersion];
        *buf = 138412290;
        v81 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "- Build version: %@", buf, 0xCu);
      }

      v20 = NSSLogForType();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v11 systemLanguages];
        *buf = 138412290;
        v81 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "- System languages: %@", buf, 0xCu);
      }

      v22 = NSSLogForType();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v11 localeIdentifiers];
        *buf = 138412290;
        v81 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "- Local identifiers: %@", buf, 0xCu);
      }

      v24 = NSSLogForType();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v11 supportedCalendars];
        *buf = 138412290;
        v81 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "- Supported calendars: %@", buf, 0xCu);
      }

      v26 = NSSLogForType();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v11 numberingSystems];
        *buf = 138412290;
        v81 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "- Numbering systems: %@", buf, 0xCu);
      }

      v28 = NSSLogForType();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v11 defaultCalendars];
        *buf = 138412290;
        v81 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "- Default calendars: %@", buf, 0xCu);
      }

      v16 = objc_opt_new();
      v30 = [v11 systemLanguages];

      if (v30)
      {
        v31 = [v11 systemLanguages];
        [v16 setObject:v31 forKeyedSubscript:kNSSLocalesInfoSystemLanguagesKey];
      }

      v32 = [v11 localeIdentifiers];

      if (v32)
      {
        v33 = [v11 localeIdentifiers];
        [v16 setObject:v33 forKeyedSubscript:kNSSLocalesInfoAvailableLocaleIdentifiers];
      }

      v34 = [v11 supportedCalendars];

      if (v34)
      {
        v35 = [v11 supportedCalendars];
        [v16 setObject:v35 forKeyedSubscript:kNSSLocalesInfoSupportedCalendars];
      }

      v36 = [v11 numberingSystems];

      v66 = v6;
      v68 = v4;
      v62 = v10;
      v64 = v8;
      if (v36)
      {
        v37 = objc_opt_new();
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v38 = [v11 numberingSystems];
        v39 = [v38 countByEnumeratingWithState:&v74 objects:v79 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v75;
          do
          {
            for (i = 0; i != v40; i = i + 1)
            {
              if (*v75 != v41)
              {
                objc_enumerationMutation(v38);
              }

              v43 = *(*(&v74 + 1) + 8 * i);
              v44 = [v43 localeIdentifier];
              if (v44)
              {
                v45 = v44;
                v46 = [v43 numberingSystems];

                if (v46)
                {
                  v47 = [v43 numberingSystems];
                  v48 = [v43 localeIdentifier];
                  [v37 setObject:v47 forKeyedSubscript:v48];
                }
              }
            }

            v40 = [v38 countByEnumeratingWithState:&v74 objects:v79 count:16];
          }

          while (v40);
        }

        if ([v37 count])
        {
          [v16 setObject:v37 forKeyedSubscript:kNSSLocalesInfoDefaultNumberingSystems];
        }

        v6 = v66;
        v4 = v68;
        v10 = v62;
        v8 = v64;
      }

      v49 = [v11 defaultCalendars:v62];

      if (v49)
      {
        v50 = objc_opt_new();
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v51 = [v11 defaultCalendars];
        v52 = [v51 countByEnumeratingWithState:&v70 objects:v78 count:16];
        if (v52)
        {
          v53 = v52;
          v54 = *v71;
          do
          {
            for (j = 0; j != v53; j = j + 1)
            {
              if (*v71 != v54)
              {
                objc_enumerationMutation(v51);
              }

              v56 = *(*(&v70 + 1) + 8 * j);
              v57 = [v56 locale];

              if (v57)
              {
                v58 = [v56 calendar];
                v59 = [v56 locale];
                [v50 setObject:v58 forKeyedSubscript:v59];
              }
            }

            v53 = [v51 countByEnumeratingWithState:&v70 objects:v78 count:16];
          }

          while (v53);
        }

        if ([v50 count])
        {
          v60 = [NSDictionary dictionaryWithDictionary:v50];
          [v16 setObject:v60 forKeyedSubscript:kNSSLocalesInfoDefaultCalendars];
        }

        v6 = v67;
        v4 = v69;
        v10 = v63;
        v8 = v65;
      }

      (v10)[2](v10, v16, 0);
      v61 = [v11 buildVersion];
      [NSSLocaleInfoCache cacheReply:v16 forGizmoBuildVersion:v61];
    }

    else if (v17)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Could not parse incoming protobuf.", buf, 2u);
    }
  }

  else if (v12)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not find reply block", buf, 2u);
  }
}

- (void)handleLPMAutoDisabledRespMsg:(id)a3
{
  v3 = a3;
  v4 = [NSSUpdatePowerStatusMsgType alloc];
  v5 = [v3 data];

  v8 = [v4 initWithData:v5];
  v6 = [v8 notificationType];
  v7 = +[NSSGizmoPowerMonitor sharedMonitor];
  [v7 processLowPowerModeAutoDisableUpdateType:v6];
}

- (void)fetchBetaEnrollmentStatus:(id)a3
{
  v4 = a3;
  v5 = NSSLogForType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_retainBlock(v4);
    *buf = 136315394;
    v11 = "[NSSCompanionServer fetchBetaEnrollmentStatus:]";
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: replyBlock: (%p)", buf, 0x16u);
  }

  if (v4)
  {
    v7 = [(NSSServer *)self idsQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000105E0;
    v8[3] = &unk_100034BC0;
    v8[4] = self;
    v9 = v4;
    dispatch_async(v7, v8);
  }
}

- (void)handleBetaEnrollmentRespMsg:(id)a3
{
  v4 = a3;
  v5 = [v4 context];
  v6 = [v5 incomingResponseIdentifier];

  v7 = [v4 context];
  v8 = [v7 outgoingResponseIdentifier];

  v9 = NSSLogForType();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315906;
    v18 = "[NSSCompanionServer handleBetaEnrollmentRespMsg:]";
    v19 = 2048;
    v20 = v4;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: idsProtobuf: (%p); incomingResponseIdentifier: (%@); outgoingResponseIdentifier: (%@)", &v17, 0x2Au);
  }

  v10 = [(NSMutableDictionary *)self->_betaEnrollmentStatusRequests objectForKey:v6];
  v11 = NSSLogForType();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = objc_retainBlock(v10);
      v17 = 136315394;
      v18 = "[NSSCompanionServer handleBetaEnrollmentRespMsg:]";
      v19 = 2048;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Found matching replyBlock (%p)", &v17, 0x16u);
    }

    [(NSMutableDictionary *)self->_betaEnrollmentStatusRequests removeObjectForKey:v6];
    [(NSSServer *)self cancelTimerForIdentifier:v6 timers:self->_betaEnrollmentStatusReplyTimers utilityName:@"betaEnrollmentStatus"];
    v14 = [NSSBetaEnrollmentStatusRespMsg alloc];
    v15 = [v4 data];
    v11 = [v14 initWithData:v15];

    if (v11)
    {
      v16 = [v11 selectedBetaProgramInfo];
      (v10)[2](v10, v16, 0);
    }

    else
    {
      v16 = NSSLogForType();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315138;
        v18 = "[NSSCompanionServer handleBetaEnrollmentRespMsg:]";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: Could not parse incoming protobuf.", &v17, 0xCu);
      }
    }
  }

  else if (v12)
  {
    v17 = 136315138;
    v18 = "[NSSCompanionServer handleBetaEnrollmentRespMsg:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Could not find reply block", &v17, 0xCu);
  }
}

- (void)handleUpdateEnrollmentStatusRespMsg:(id)a3
{
  v4 = a3;
  v5 = [v4 context];
  v6 = [v5 incomingResponseIdentifier];

  v7 = [v4 context];
  v8 = [v7 outgoingResponseIdentifier];

  v9 = NSSLogForType();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315906;
    v20 = "[NSSCompanionServer handleUpdateEnrollmentStatusRespMsg:]";
    v21 = 2048;
    v22 = v4;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: idsProtobuf: (%p); incomingResponseIdentifier: (%@); outgoingResponseIdentifier: (%@)", &v19, 0x2Au);
  }

  v10 = [(NSMutableDictionary *)self->_updateBetaEnrollmentStatusRequests objectForKey:v6];
  v11 = NSSLogForType();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = objc_retainBlock(v10);
      v19 = 136315394;
      v20 = "[NSSCompanionServer handleUpdateEnrollmentStatusRespMsg:]";
      v21 = 2048;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Found matching replyBlock (%p)", &v19, 0x16u);
    }

    [(NSMutableDictionary *)self->_updateBetaEnrollmentStatusRequests removeObjectForKey:v6];
    [(NSSServer *)self cancelTimerForIdentifier:v6 timers:self->_updateBetaEnrollmentStatusReplyTimers utilityName:@"updateBetaEnrollmentStatus"];
    v14 = [NSSUpdateBetaEnrollmentStatusRespMsg alloc];
    v15 = [v4 data];
    v11 = [v14 initWithData:v15];

    if (v11)
    {
      v16 = [v11 error];

      if (v16)
      {
        v17 = [NSSet setWithObject:objc_opt_class()];
        v18 = [v11 error];
        v16 = [NSSKeyedArchiverUtil unarchiveObjectOfClasses:v17 withData:v18];
      }

      (v10)[2](v10, [v11 success], v16);
    }

    else
    {
      v16 = NSSLogForType();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315138;
        v20 = "[NSSCompanionServer handleUpdateEnrollmentStatusRespMsg:]";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: Could not parse incoming protobuf.", &v19, 0xCu);
      }
    }
  }

  else if (v12)
  {
    v19 = 136315138;
    v20 = "[NSSCompanionServer handleUpdateEnrollmentStatusRespMsg:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Could not find reply block", &v19, 0xCu);
  }
}

- (void)updateCompanionGenerativeModelsEligibilityState:(id)a3
{
  v7 = a3;
  v4 = +[NSSCompanionGenerativeModelsEligibilityState currentState];
  if (v4)
  {
    CFPreferencesSetAppValue(@"CompanionGenerativeModelsEligibilityState", v4, @"com.apple.nanosystemsettings");
    CFPreferencesAppSynchronize(@"com.apple.nanosystemsettings");
    v5 = [(NSSCompanionServer *)self npsManager];
    v6 = [NSSet setWithObject:@"CompanionGenerativeModelsEligibilityState"];
    [v5 synchronizeUserDefaultsDomain:@"com.apple.nanosystemsettings" keys:v6 cloudEnabled:1];
  }

  v7[2](v7, v4 != 0, 0);
}

@end