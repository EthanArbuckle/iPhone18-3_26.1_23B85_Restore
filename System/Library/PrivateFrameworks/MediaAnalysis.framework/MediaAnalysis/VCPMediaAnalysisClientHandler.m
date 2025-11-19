@interface VCPMediaAnalysisClientHandler
+ (id)clientHandlerWithXPCConnection:(id)a3;
+ (id)errorForStatus:(int)a3 withDescription:(id)a4;
- (BOOL)scheduleDatabaseMigrationIfNeededForPhotoLibraries:(id)a3;
- (CF<__SecTask)secTask;
- (VCPMediaAnalysisClientHandler)initWithXPCConnection:(id)a3;
- (id)assetWithIdentifier:(id)a3 identifierType:(unint64_t)a4 fromPhotoLibraryWithURL:(id)a5 error:(id *)a6;
- (int64_t)consumeSandboxExtension:(id)a3 url:(id)a4;
- (void)_resetPECFailureVersionForPhotoLibrary:(id)a3;
- (void)_resetProcessingStatusForTaskID:(unint64_t)a3 andPhotoLibrary:(id)a4;
- (void)cacheHitWithQueryID:(unint64_t)a3 cachedResultQueryID:(unint64_t)a4 engagementSuggestionType:(id)a5;
- (void)cancelAllRequests;
- (void)cancelBackgroundActivityWithReply:(id)a3;
- (void)cancelRequest:(int)a3;
- (void)currentOutstandingTasksWithReply:(id)a3;
- (void)downloadVideoEncoderIfNeededWithReply:(id)a3;
- (void)notifyLibraryAvailableAtURL:(id)a3;
- (void)queryAssetsPendingDeferredProcessingWithPhotoLibraryURL:(id)a3 andReply:(id)a4;
- (void)queryAutoCounterOptInStatus:(int)a3 withPhotoLibraryURL:(id)a4 personLocalIdentifiers:(id)a5 andReply:(id)a6;
- (void)queryImagePriority1MCEnableDateWithPhotoLibraryURL:(id)a3 reply:(id)a4;
- (void)queryPerformanceMeasurementsWithReply:(id)a3;
- (void)queryUserSafetyEnablement:(id)a3;
- (void)queryVUIndexAssetCountForType:(int64_t)a3 photoLibraryURL:(id)a4 reply:(id)a5;
- (void)queryVUIndexLastFullModeClusterDateWithPhotoLibraryURL:(id)a3 reply:(id)a4;
- (void)requestAnalysisXPCStoreListenerEndpointWithPhotoLibraryURL:(id)a3 reply:(id)a4;
- (void)requestAssetAnalysis:(int)a3 forLocalIdentifiers:(id)a4 fromPhotoLibraryWithURL:(id)a5 withOptions:(id)a6 analysisTypes:(unint64_t)a7 withReply:(id)a8;
- (void)requestAssetAnalysis:(int)a3 forPhotoLibraryURL:(id)a4 withLocalIdentifiers:(id)a5 realTime:(BOOL)a6 withReply:(id)a7;
- (void)requestAssetProcessing:(int)a3 withTaskID:(unint64_t)a4 forLocalIdentifiers:(id)a5 fromPhotoLibraryWithURL:(id)a6 withOptions:(id)a7 andReply:(id)a8;
- (void)requestAutoCounterAccuracyCalculation:(int)a3 withPhotoLibraryURL:(id)a4 andReply:(id)a5;
- (void)requestAutoCounterAccuracyCalculation:(int)a3 withPhotoLibraryURL:(id)a4 clusterStateURL:(id)a5 groundTruthURL:(id)a6 andReply:(id)a7;
- (void)requestAutoCounterSIMLValidation:(int)a3 withPhotoLibraryURL:(id)a4 simlGroundTruthURL:(id)a5 andReply:(id)a6;
- (void)requestClusterCacheValidation:(int)a3 withPhotoLibraryURL:(id)a4 andReply:(id)a5;
- (void)requestCollectionTheme:(int)a3 forLocalIdentifiers:(id)a4 fromPhotoLibraryWithURL:(id)a5 withOptions:(id)a6 andReply:(id)a7;
- (void)requestCollectionThemeVersion:(int)a3 withOptions:(id)a4 andReply:(id)a5;
- (void)requestDatabaseRestoreFastPassProcessing:(int)a3 reply:(id)a4;
- (void)requestDeferredProcessingTypes:(id)a3 forAssetsWithLocalIdentifiers:(id)a4 withPhotoLibraryURL:(id)a5 andReply:(id)a6;
- (void)requestDumpAutoCounter:(int)a3 withPhotoLibraryURL:(id)a4 andReply:(id)a5;
- (void)requestFaceCandidatesforKeyFace:(int)a3 withPersonsWithLocalIdentifiers:(id)a4 andPhotoLibraryURL:(id)a5 andReply:(id)a6;
- (void)requestForceDeferredProcessing:(int)a3 andReply:(id)a4;
- (void)requestIdentificationOfFacesWithLocalIdentifiers:(id)a3 fromPhotoLibraryWithURL:(id)a4 withRequestID:(int)a5 andReply:(id)a6;
- (void)requestImageProcessing:(id)a3 forAssetURL:(id)a4 withSandboxToken:(id)a5 identifier:(id)a6 requestID:(int)a7 andReply:(id)a8;
- (void)requestImageProcessing:(id)a3 forAssetWithCloudIdentifier:(id)a4 requestID:(int)a5 andReply:(id)a6;
- (void)requestImageProcessing:(id)a3 forAssetWithIdentifier:(id)a4 identifierType:(unint64_t)a5 fromPhotoLibraryWithURL:(id)a6 requestID:(int)a7 andReply:(id)a8;
- (void)requestImageProcessing:(id)a3 forIOSurface:(id)a4 withOrientation:(unsigned int)a5 assetLocalIdentifier:(id)a6 photoLibraryURL:(id)a7 requestID:(int)a8 andReply:(id)a9;
- (void)requestImageProcessing:(id)a3 forIOSurface:(id)a4 withOrientation:(unsigned int)a5 identifier:(id)a6 requestID:(int)a7 andReply:(id)a8;
- (void)requestImageProcessing:(id)a3 forImageData:(id)a4 withUniformTypeIdentifier:(id)a5 identifier:(id)a6 requestID:(int)a7 andReply:(id)a8;
- (void)requestImageProcessingWithCloudIdentifierRequests:(id)a3 requestID:(int)a4 andReply:(id)a5;
- (void)requestLibraryProcessing:(int)a3 withTaskID:(unint64_t)a4 forPhotoLibraryURL:(id)a5 withOptions:(id)a6 andReply:(id)a7;
- (void)requestMediaAnalysisDatabaseAccessSandboxExtensionWithPhotoLibraryURL:(id)a3 andReply:(id)a4;
- (void)requestMultiModalPrewarming:(id)a3 requestID:(int)a4 reply:(id)a5;
- (void)requestOTAMaintenance:(int)a3 options:(id)a4 reply:(id)a5;
- (void)requestOptInAutoCounter:(int)a3 withPhotoLibraryURL:(id)a4 persons:(id)a5 andReply:(id)a6;
- (void)requestPersonPreferenceForPhotoLibraryURL:(id)a3 andReply:(id)a4;
- (void)requestPersonPromoterStatus:(int)a3 withAdvancedFlag:(BOOL)a4 andPhotoLibraryURL:(id)a5 andReply:(id)a6;
- (void)requestPhotosDeferredProcessing:(int)a3 reply:(id)a4;
- (void)requestPhotosFaceFastPassProcessing:(int)a3 withPhotoLibraryURL:(id)a4 andReply:(id)a5;
- (void)requestPhotosSceneFastPassProcessing:(int)a3 withPhotoLibraryURL:(id)a4 andReply:(id)a5;
- (void)requestProcessing:(id)a3 multiModalInputs:(id)a4 requestID:(int)a5 reply:(id)a6;
- (void)requestProcessingTypes:(unint64_t)a3 forAssetsWithLocalIdentifiers:(id)a4 fromPhotoLibraryWithURL:(id)a5 withRequestID:(int)a6 andReply:(id)a7;
- (void)requestProgressReport:(int)a3 reply:(id)a4;
- (void)requestRebuildPersons:(int)a3 withLocalIdentifiers:(id)a4 andPhotoLibraryURL:(id)a5 andReply:(id)a6;
- (void)requestRecentsProcessing:(int)a3 withTaskID:(unint64_t)a4 photoLibraryWithURL:(id)a5 reply:(id)a6;
- (void)requestReclusterFaces:(int)a3 withPhotoLibraryURL:(id)a4 andReply:(id)a5;
- (void)requestResetFaceClassificationModel:(int)a3 withPhotoLibraryURL:(id)a4 andReply:(id)a5;
- (void)requestResetFaceClusteringState:(int)a3 withPhotoLibraryURL:(id)a4 andReply:(id)a5;
- (void)requestResetPersons:(int)a3 withPhotoLibraryURL:(id)a4 andReply:(id)a5;
- (void)requestResetPetClassificationModel:(int)a3 withPhotoLibraryURL:(id)a4 andReply:(id)a5;
- (void)requestResetProcessingStatus:(int)a3 taskID:(unint64_t)a4 photoLibraryURL:(id)a5 options:(id)a6 reply:(id)a7;
- (void)requestStaticStickerScoring:(int)a3 photoLibraryURL:(id)a4 options:(id)a5 reply:(id)a6;
- (void)requestSuggestedMePersonIdentifier:(int)a3 withContext:(id)a4 andPhotoLibraryURL:(id)a5 andReply:(id)a6;
- (void)requestSuggestedPersons:(int)a3 withPersonWithLocalIdentifier:(id)a4 toBeConfirmedPersonSuggestions:(id)a5 toBeRejectedPersonSuggestions:(id)a6 andPhotoLibraryURL:(id)a7 andReply:(id)a8;
- (void)requestSystemXPCStoreListenerEndpoint:(id)a3;
- (void)requestTextPrewarming:(id)a3 requestID:(int)a4 reply:(id)a5;
- (void)requestTextProcessing:(id)a3 textInputs:(id)a4 requestID:(int)a5 reply:(id)a6;
- (void)requestURLAssetAnalysis:(int)a3 forAssetWithResourcePaths:(id)a4 withOptions:(id)a5 analysisTypes:(unint64_t)a6 sandboxTokens:(id)a7 withReply:(id)a8;
- (void)requestUpdateKeyFacesOfPersons:(int)a3 withLocalIdentifiers:(id)a4 andForceUpdate:(BOOL)a5 andPhotoLibraryURL:(id)a6 andReply:(id)a7;
- (void)requestVIPModelStorageFilepathForPhotoLibraryURL:(id)a3 forModelType:(unint64_t)a4 andReply:(id)a5;
- (void)requestVideoFramesProcessing:(int)a3 withTaskID:(unint64_t)a4 frames:(id)a5 options:(id)a6 andReply:(id)a7;
- (void)requestVideoProcessing:(id)a3 asset:(id)a4 requestID:(int)a5 isIncremental:(BOOL)a6 reply:(id)a7;
- (void)requestVideoProcessing:(id)a3 assetIdentifier:(id)a4 identifierType:(unint64_t)a5 photoLibraryURL:(id)a6 requestID:(int)a7 isIncremental:(BOOL)a8 reply:(id)a9;
- (void)requestVideoProcessing:(id)a3 assetURL:(id)a4 sandboxToken:(id)a5 identifier:(id)a6 requestID:(int)a7 reply:(id)a8;
- (void)requestVisionCacheStorageDirectoryURLForPhotoLibraryURL:(id)a3 reply:(id)a4;
- (void)requestWallpaperUpgrade:(int)a3 atSourceURL:(id)a4 toDestinationURL:(id)a5 withOptions:(id)a6 sandboxTokens:(id)a7 andReply:(id)a8;
- (void)submitSpotlightAssetURL:(id)a3 uniqueIdentifier:(id)a4 bundleIdentifier:(id)a5 typeIdentifier:(id)a6 sandboxToken:(id)a7 reply:(id)a8;
- (void)subscribeUserSafety:(id)a3;
@end

@implementation VCPMediaAnalysisClientHandler

- (void)cancelAllRequests
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = *(&VCPLogToOSLogType + 6);
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[MAClientHandler] Service received call to cancel all tasks", buf, 2u);
    }
  }

  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = sub_100069088;
  v23 = sub_100069098;
  v24 = 0;
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003048;
  block[3] = &unk_100283178;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(managementQueue, block);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(v20 + 5);
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v27 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = +[VCPMADTaskScheduler sharedInstance];
        [v10 cancelTaskWithID:{objc_msgSend(v9, "unsignedIntegerValue")}];
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v27 count:16];
    }

    while (v6);
  }

  v11 = [(MADServiceClientTaskQueuingScheduler *)self->_queuingTaskScheduler cancelAllTasks];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v12 = *(&VCPLogToOSLogType + 6);
    if (os_log_type_enabled(&_os_log_default, v12))
    {
      v13 = [*(v20 + 5) count];
      *v25 = 134217984;
      v26 = &v13[v11];
      _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[MAClientHandler] Service canceled all %lu tasks", v25, 0xCu);
    }
  }

  _Block_object_dispose(buf, 8);
}

- (VCPMediaAnalysisClientHandler)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v47.receiver = self;
  v47.super_class = VCPMediaAnalysisClientHandler;
  v6 = [(VCPMediaAnalysisClientHandler *)&v47 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    objc_initWeak(&location, v7);
    [(NSXPCConnection *)v7->_connection setExportedObject:v7];
    connection = v7->_connection;
    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___VCPMediaAnalysisClientProtocol];
    [(NSXPCConnection *)connection setRemoteObjectInterface:v9];

    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___VCPMediaAnalysisServerProtocol];
    [MADServicePrivate configureServerInterface:v10];
    v49[0] = objc_opt_class();
    v49[1] = objc_opt_class();
    v11 = [NSArray arrayWithObjects:v49 count:2];
    v12 = [NSSet setWithArray:v11];
    [v10 setClasses:v12 forSelector:"requestVideoFramesProcessing:withTaskID:frames:options:andReply:" argumentIndex:2 ofReply:0];

    [(NSXPCConnection *)v7->_connection setExportedInterface:v10];
    v13 = v7->_connection;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10005E300;
    v44[3] = &unk_100282A30;
    objc_copyWeak(&v45, &location);
    [(NSXPCConnection *)v13 setInterruptionHandler:v44];
    v14 = v7->_connection;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10005E3AC;
    v42[3] = &unk_100282A30;
    objc_copyWeak(&v43, &location);
    [(NSXPCConnection *)v14 setInvalidationHandler:v42];
    v15 = dispatch_queue_create("com.apple.mediaanalysisd.clientmanagment", 0);
    managementQueue = v7->_managementQueue;
    v7->_managementQueue = v15;

    v17 = dispatch_queue_create("com.apple.mediaanalysisd.UserSafety", 0);
    userSafetyQueue = v7->_userSafetyQueue;
    v7->_userSafetyQueue = v17;

    v19 = [(NSXPCConnection *)v7->_connection remoteObjectProxy];
    clientProxy = v7->_clientProxy;
    v7->_clientProxy = v19;

    v21 = +[NSMutableDictionary dictionary];
    taskIDMapping = v7->_taskIDMapping;
    v7->_taskIDMapping = v21;

    v40 = 0;
    cf = 0;
    v23 = v7->_connection;
    if (v23)
    {
      [(NSXPCConnection *)v23 auditToken];
    }

    else
    {
      memset(&token, 0, sizeof(token));
    }

    v39 = SecTaskCreateWithAuditToken(0, &token);
    sub_100003424(&v7->_secTask.value_, &v39);
    sub_100002CBC(&v39);
    value = v7->_secTask.value_;
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v25 = SecTaskCopySigningIdentifier(value, &cf);
    clientBundleID = v7->_clientBundleID;
    v7->_clientBundleID = &v25->isa;

    if (v40)
    {
      CFRelease(v40);
      v40 = 0;
    }

    v27 = SecTaskCopyTeamIdentifier();
    clientTeamID = v7->_clientTeamID;
    v7->_clientTeamID = v27;

    if (cf)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v29 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v29))
        {
          token.val[0] = 138412290;
          *&token.val[1] = cf;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "[MAClientHandler] Failed to query client bundle ID (%@)", &token, 0xCu);
        }
      }
    }

    if (v40)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v30 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v30))
        {
          token.val[0] = 138412290;
          *&token.val[1] = v40;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v30, "[MAClientHandler] Failed to query client team ID (%@)", &token, 0xCu);
        }
      }
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v31 = VCPPersistentLogInstance();
      v32 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(v31, v32))
      {
        v33 = v7->_clientBundleID;
        v34 = v7->_clientTeamID;
        token.val[0] = 138412546;
        *&token.val[1] = v33;
        LOWORD(token.val[3]) = 2112;
        *(&token.val[3] + 2) = v34;
        _os_log_impl(&_mh_execute_header, v31, v32, "[MAClientHandler] Client BundleID: %@ TeamID: %@", &token, 0x16u);
      }
    }

    v7->_userSafetyEntitled = [MADUserSafetySettings isTaskEntitled:v7->_secTask.value_];
    v7->_userSafetyEntitledPolicySubscription = [MADUserSafetySettings isTaskEntitledForPolicySubscription:v7->_secTask.value_];
    v35 = [[MADServiceClientTaskQueuingScheduler alloc] initWithClientBundleID:v7->_clientBundleID];
    queuingTaskScheduler = v7->_queuingTaskScheduler;
    v7->_queuingTaskScheduler = v35;

    v37 = v7;
    sub_100002CBC(&v40);
    sub_100002CBC(&cf);
    objc_destroyWeak(&v43);
    objc_destroyWeak(&v45);

    objc_destroyWeak(&location);
  }

  return v7;
}

+ (id)clientHandlerWithXPCConnection:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithXPCConnection:v3];

  return v4;
}

+ (id)errorForStatus:(int)a3 withDescription:(id)a4
{
  v5 = a4;
  if (a3 == -128)
  {
    v6 = @"[MAClientHandler] Analysis was canceled";
  }

  else
  {
    if (!a3)
    {
      v7 = 0;
      goto LABEL_13;
    }

    if (a3 == -50)
    {
      [NSString stringWithFormat:@"[MAClientHandler] Invalid parameter - %@", v5];
    }

    else
    {
      [NSString stringWithFormat:@"[MAClientHandler] Analysis failed - %@", v5];
    }
    v6 = ;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v8 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@", buf, 0xCu);
    }
  }

  v11 = NSLocalizedDescriptionKey;
  v12 = v6;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v7 = [NSError errorWithDomain:@"MediaAnalysisService" code:a3 userInfo:v9];

LABEL_13:

  return v7;
}

- (void)requestMediaAnalysisDatabaseAccessSandboxExtensionWithPhotoLibraryURL:(id)a3 andReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[VCPPhotoLibraryManager sharedManager];
  v8 = [v7 photoLibraryWithURL:v5];

  if (v8)
  {
    v9 = [v8 vcp_mediaAnalysisDirectory];
    [v9 UTF8String];
    v10 = sandbox_extension_issue_file();
    if (v10)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v11 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v11))
        {
          v16 = 138412290;
          v17 = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[MAClientHandler] Issuing sandbox extension for %@", &v16, 0xCu);
        }
      }

      v12 = [NSString stringWithUTF8String:v10];
      v6[2](v6, v12);

      free(v10);
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v15 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v15))
        {
          v16 = 138412290;
          v17 = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[MAClientHandler] Failed to issue sandbox extension on %@", &v16, 0xCu);
        }
      }

      v6[2](v6, 0);
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v13 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        v14 = [v5 path];
        v16 = 138412290;
        v17 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MAClientHandler] Failed to open Photos Library at %@; cannot issue sandbox extension", &v16, 0xCu);
      }
    }

    v6[2](v6, 0);
  }
}

- (BOOL)scheduleDatabaseMigrationIfNeededForPhotoLibraries:(id)a3
{
  v17 = a3;
  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = v17;
    v4 = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v4)
    {
      v5 = *v20;
      v6 = VCPLogToOSLogType[3];
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v20 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v19 + 1) + 8 * i);
          v9 = objc_autoreleasePoolPush();
          v10 = [MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:v8];
          v11 = v10;
          if (v10)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v6))
            {
              v12 = [v8 photoLibraryURL];
              *buf = 138412290;
              v24 = v12;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[MAClientHandler] Database migration incomplete for photo library %@", buf, 0xCu);
            }

            v13 = +[MADPhotosDatabaseMigrationBackgroundSystemTask sharedTask];
            v18 = 0;
            [v13 submitTask:&v18];
            v14 = v18;

            if (v14 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v6))
            {
              *buf = 138412290;
              v24 = v14;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[MAClientHandler] Failed to submit database migration BGST task: %@", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v9);
          if (v11)
          {
            v15 = 1;
            goto LABEL_22;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_22:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (int64_t)consumeSandboxExtension:(id)a3 url:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 fileSystemRepresentation];
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection auditToken];
  }

  else
  {
    *buf = 0u;
    v18 = 0u;
  }

  v10 = sandbox_check_by_audit_token();
  if (v10 == -1)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_13;
    }

    v11 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v11))
    {
      goto LABEL_13;
    }

    *buf = 136315138;
    *&buf[4] = v8;
    v12 = "[MAClientHandler] Failed to check for client read access to file %s";
    goto LABEL_12;
  }

  if (v10 == 1)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_13;
    }

    v11 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v11))
    {
      goto LABEL_13;
    }

    *buf = 136315138;
    *&buf[4] = v8;
    v12 = "[MAClientHandler] Client does not have read access to file %s";
LABEL_12:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v11, v12, buf, 0xCu);
LABEL_13:
    v13 = -1;
    goto LABEL_18;
  }

  v14 = v6;
  [v6 UTF8String];
  v13 = sandbox_extension_consume();
  if (v13 < 0 && MediaAnalysisLogLevel() >= 3)
  {
    v15 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v15))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[MAClientHandler] Failed to consume sandbox extension", buf, 2u);
    }
  }

LABEL_18:

  return v13;
}

- (void)requestImageProcessing:(id)a3 forIOSurface:(id)a4 withOrientation:(unsigned int)a5 identifier:(id)a6 requestID:(int)a7 andReply:(id)a8
{
  v9 = *&a7;
  v11 = *&a5;
  v14 = a3;
  surface = a4;
  v15 = a6;
  v16 = a8;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v17 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v17))
    {
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[MAClientHandler] Received on-demand image processing request (CVPixelBuffer) with MADRequestID %d", buf, 8u);
    }
  }

  v18 = objc_autoreleasePoolPush();
  v32 = [NSString stringWithFormat:@"Request: %d Identifier: %@", v9, v15];
  v19 = VCPSignPostLog();
  v20 = os_signpost_id_generate(v19);

  v21 = VCPSignPostLog();
  v22 = v21;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 138412290;
    *&buf[4] = v32;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "VCPMediaAnalysisClientHandler_IOSurface", "%@", buf, 0xCu);
  }

  *buf = 0;
  v23 = CVPixelBufferCreateWithIOSurface(0, surface, 0, buf);
  if (v23)
  {
    v43 = NSLocalizedDescriptionKey;
    v24 = [NSString stringWithFormat:@"[MAClientHandler] Failed to create CVPixelBuffer from specified IOSurface"];
    v44 = v24;
    v25 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v26 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v23 userInfo:v25];
    v16[2](v16, 0, v26);
  }

  else
  {
    v24 = [VCPMADServiceImageAsset assetWithPixelBuffer:*buf orientation:v11 identifier:v15 clientBundleID:self->_clientBundleID clientTeamID:self->_clientTeamID];
    v27 = self->_userSafetyEntitled && [MADUserSafetySettings isEnabledForTask:self->_secTask.value_];
    [v24 setUserSafetyEligible:v27];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10005F430;
    v36[3] = &unk_100284390;
    v42 = v9;
    v40 = v20;
    v28 = v32;
    v37 = v28;
    v41 = 0;
    v29 = v16;
    v39 = v29;
    v38 = v14;
    v30 = [VCPMADServiceImageProcessingTask taskWithRequests:v38 forAsset:v24 cancelBlock:&stru_100284368 andCompletionHandler:v36];
    [v30 setSignpostPayload:v28];
    queuingTaskScheduler = self->_queuingTaskScheduler;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10005F5DC;
    v34[3] = &unk_100282AC0;
    v35 = v29;
    [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v30 withRequestID:v9 schedulingErrorHandler:v34];

    v25 = v37;
  }

  sub_100002CBC(buf);
  objc_autoreleasePoolPop(v18);
}

- (void)requestImageProcessing:(id)a3 forAssetURL:(id)a4 withSandboxToken:(id)a5 identifier:(id)a6 requestID:(int)a7 andReply:(id)a8
{
  v9 = *&a7;
  v14 = a3;
  v33 = a4;
  v32 = a5;
  v34 = a6;
  v15 = a8;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v16 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v16))
    {
      *buf = 67109120;
      LODWORD(v49) = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[MAClientHandler] Received on-demand image processing request (URL) with MADRequestID %d", buf, 8u);
    }
  }

  v17 = objc_autoreleasePoolPush();
  v31 = [NSString stringWithFormat:@"Request: %d Identifier: %@", v9, v34];
  v18 = VCPSignPostLog();
  v19 = os_signpost_id_generate(v18);

  v20 = VCPSignPostLog();
  v21 = v20;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 138412290;
    v49 = v31;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "VCPMediaAnalysisClientHandler_URL", "%@", buf, 0xCu);
  }

  v22 = [(VCPMediaAnalysisClientHandler *)self consumeSandboxExtension:v32 url:v33];
  if (v22 < 0)
  {
    v46 = NSLocalizedDescriptionKey;
    v23 = [NSString stringWithFormat:@"[MAClientHandler] Failed to consume sandbox extension"];
    v47 = v23;
    v25 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v26 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v25];
    v15[2](v15, 0, v26);
  }

  else
  {
    v23 = [VCPMADServiceImageAsset assetWithURL:v33 identifier:v34 clientBundleID:self->_clientBundleID clientTeamID:self->_clientTeamID];
    v24 = self->_userSafetyEntitled && [MADUserSafetySettings isEnabledForTask:self->_secTask.value_];
    [v23 setUserSafetyEligible:v24];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10005FB5C;
    v38[3] = &unk_1002843D8;
    v45 = v9;
    v42 = v19;
    v27 = v31;
    v39 = v27;
    v43 = 0;
    v28 = v15;
    v41 = v28;
    v40 = v14;
    v44 = v22;
    v29 = [VCPMADServiceImageProcessingTask taskWithRequests:v40 forAsset:v23 cancelBlock:&stru_1002843B0 andCompletionHandler:v38];
    [v29 setSignpostPayload:v27];
    queuingTaskScheduler = self->_queuingTaskScheduler;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10005FD10;
    v35[3] = &unk_100282B30;
    v36 = v28;
    v37 = v22;
    [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v29 withRequestID:v9 schedulingErrorHandler:v35];

    v25 = v39;
  }

  objc_autoreleasePoolPop(v17);
}

- (void)requestImageProcessing:(id)a3 forImageData:(id)a4 withUniformTypeIdentifier:(id)a5 identifier:(id)a6 requestID:(int)a7 andReply:(id)a8
{
  v9 = *&a7;
  v33 = a3;
  v14 = a4;
  v15 = a5;
  v35 = a6;
  v34 = a8;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v16 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v16))
    {
      *buf = 67109120;
      LODWORD(v46) = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[MAClientHandler] Received on-demand image processing request (ImageData) with MADRequestID %d", buf, 8u);
    }
  }

  v17 = objc_autoreleasePoolPush();
  v18 = [NSString stringWithFormat:@"Request: %d Identifier: %@", v9, v35];
  v19 = VCPSignPostLog();
  v20 = os_signpost_id_generate(v19);

  v21 = VCPSignPostLog();
  v22 = v21;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 138412290;
    v46 = v18;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "VCPMediaAnalysisClientHandler_URL", "%@", buf, 0xCu);
  }

  v23 = [VCPMADServiceImageAsset assetWithImageData:v14 uniformTypeIdentifier:v15 identifier:v35 clientBundleID:self->_clientBundleID clientTeamID:self->_clientTeamID];
  v32 = v15;
  v24 = self->_userSafetyEntitled && [MADUserSafetySettings isEnabledForTask:self->_secTask.value_];
  [v23 setUserSafetyEligible:v24];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100060200;
  v38[3] = &unk_100284390;
  v44 = v9;
  v42 = v20;
  v25 = v18;
  v39 = v25;
  v43 = 0;
  v26 = v34;
  v41 = v26;
  v27 = v33;
  v40 = v27;
  v28 = [VCPMADServiceImageProcessingTask taskWithRequests:v27 forAsset:v23 cancelBlock:&stru_1002843F8 andCompletionHandler:v38];
  [v28 setSignpostPayload:v25];
  queuingTaskScheduler = self->_queuingTaskScheduler;
  v30 = v9;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000603AC;
  v36[3] = &unk_100282AC0;
  v31 = v26;
  v37 = v31;
  [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v28 withRequestID:v30 schedulingErrorHandler:v36];

  objc_autoreleasePoolPop(v17);
}

- (id)assetWithIdentifier:(id)a3 identifierType:(unint64_t)a4 fromPhotoLibraryWithURL:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    if (!a6)
    {
      v22 = 0;
      goto LABEL_35;
    }

    v42 = NSLocalizedDescriptionKey;
    v15 = [NSString stringWithFormat:@"[MAClientHandler] Specified nil identifier"];
    v43 = v15;
    v17 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v21 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v17];
    v22 = 0;
    v23 = *a6;
    *a6 = v21;
    goto LABEL_33;
  }

  if (a4 == 2 && !v10)
  {
    v12 = [PHPhotoLibrary wellKnownPhotoLibraryURLForIdentifier:3];
    if (MediaAnalysisLogLevel() >= 7)
    {
      v13 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        *buf = 138412290;
        v41 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MAClientHandler] Fetch Syndication Photo library at %@", buf, 0xCu);
      }
    }

    v11 = v12;
  }

  v14 = +[VCPPhotoLibraryManager sharedManager];
  v15 = [v14 photoLibraryWithURL:v11];

  if (!v15)
  {
    if (!a6)
    {
      v22 = 0;
      goto LABEL_34;
    }

    v38 = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithFormat:@"[MAClientHandler] Specified Photo Library is invalid (%@)", v11];
    v39 = v17;
    v23 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v24 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v23];
    v25 = *a6;
    *a6 = v24;

    goto LABEL_32;
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v16 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v16))
    {
      *buf = 138412290;
      v41 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[MAClientHandler] Fetching Photos asset with identifier %@", buf, 0xCu);
    }
  }

  v17 = [PHFetchOptions fetchOptionsWithInclusiveDefaultsForPhotoLibrary:v15];
  [v17 setIncludeHiddenAssets:1];
  [v17 setIncludeTrashedAssets:1];
  [v17 setIncludeGuestAssets:1];
  v37[0] = PHAssetPropertySetCharacterRecognition;
  v37[1] = PHAssetPropertySetMediaAnalysis;
  v37[2] = PHAssetPropertySetOriginalMetadata;
  v37[3] = PHAssetPropertySetPhotoIris;
  v37[4] = PHAssetPropertySetSceneAnalysis;
  v37[5] = PHAssetPropertySetVisualSearch;
  v37[6] = PHAssetPropertySetPhotosInfoPanelExtended;
  v18 = [NSArray arrayWithObjects:v37 count:7];
  [v17 addFetchPropertySets:v18];

  if (a4 == 1)
  {
    v35 = v9;
    v19 = [NSArray arrayWithObjects:&v35 count:1];
    v20 = [PHAsset fetchAssetsWithCloudIdentifiers:v19 options:v17];
  }

  else if (a4)
  {
    if (a4 != 2)
    {
      v23 = 0;
      goto LABEL_24;
    }

    v34 = v9;
    v19 = [NSArray arrayWithObjects:&v34 count:1];
    v20 = [PHAsset fetchAssetsWithSyndicationIdentifiers:v19 options:v17];
  }

  else
  {
    v36 = v9;
    v19 = [NSArray arrayWithObjects:&v36 count:1];
    v20 = [PHAsset fetchAssetsWithLocalIdentifiers:v19 options:v17];
  }

  v23 = v20;

LABEL_24:
  if ([v23 count])
  {
    if ([v23 count] >= 2 && MediaAnalysisLogLevel() >= 4)
    {
      v26 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v26))
      {
        *buf = 138412290;
        v41 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "[MAClientHandler] Fetch returned multiple assets for identifier (%@)", buf, 0xCu);
      }
    }

    v22 = [v23 firstObject];
    goto LABEL_33;
  }

  if (a6)
  {
    v32 = NSLocalizedDescriptionKey;
    v27 = [NSString stringWithFormat:@"[MAClientHandler] Specified identifier not found (%@)", v9];
    v33 = v27;
    v28 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v29 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v28];
    v30 = *a6;
    *a6 = v29;
  }

LABEL_32:
  v22 = 0;
LABEL_33:

LABEL_34:
LABEL_35:

  return v22;
}

- (void)requestImageProcessing:(id)a3 forAssetWithIdentifier:(id)a4 identifierType:(unint64_t)a5 fromPhotoLibraryWithURL:(id)a6 requestID:(int)a7 andReply:(id)a8
{
  v9 = *&a7;
  v14 = a3;
  v15 = a4;
  v32 = a6;
  v33 = a8;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v16 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v16))
    {
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[MAClientHandler] Received on-demand image processing request (Photos) with MADRequestID %d", buf, 8u);
    }
  }

  v17 = objc_autoreleasePoolPush();
  v31 = [NSString stringWithFormat:@"Request: %d Identifier: (%lu)%@", v9, a5, v15];
  v18 = VCPSignPostLog();
  v19 = os_signpost_id_generate(v18);

  v20 = VCPSignPostLog();
  v21 = v20;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 138412290;
    *&buf[4] = v31;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "VCPMediaAnalysisClientHandler_PHAsset", "%@", buf, 0xCu);
  }

  *buf = 0;
  v22 = [(VCPMediaAnalysisClientHandler *)self assetWithIdentifier:v15 identifierType:a5 fromPhotoLibraryWithURL:v32 error:buf];
  if (v22)
  {
    v23 = [VCPMADServiceImageAsset assetWithPhotosAsset:v22 clientBundleID:self->_clientBundleID clientTeamID:self->_clientTeamID];
    v30 = v15;
    v24 = self->_userSafetyEntitled && [MADUserSafetySettings isEnabledForTask:self->_secTask.value_];
    [v23 setUserSafetyEligible:v24];
    v25 = v17;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100060F30;
    v36[3] = &unk_100284390;
    v42 = v9;
    v40 = v19;
    v26 = v31;
    v37 = v26;
    v41 = 0;
    v27 = v33;
    v39 = v27;
    v38 = v14;
    v28 = [VCPMADServiceImageProcessingTask taskWithRequests:v38 forAsset:v23 cancelBlock:&stru_100284418 andCompletionHandler:v36];
    [v28 setSignpostPayload:v26];
    queuingTaskScheduler = self->_queuingTaskScheduler;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000610DC;
    v34[3] = &unk_100282AC0;
    v35 = v27;
    [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v28 withRequestID:v9 schedulingErrorHandler:v34];

    v17 = v25;
    v15 = v30;
  }

  else
  {
    (*(v33 + 2))(v33, 0, *buf);
  }

  objc_autoreleasePoolPop(v17);
}

- (void)requestImageProcessing:(id)a3 forIOSurface:(id)a4 withOrientation:(unsigned int)a5 assetLocalIdentifier:(id)a6 photoLibraryURL:(id)a7 requestID:(int)a8 andReply:(id)a9
{
  v9 = *&a8;
  v12 = *&a5;
  v33 = a3;
  surface = a4;
  v15 = a6;
  v36 = a7;
  v16 = a9;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v17 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v17))
    {
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[MAClientHandler] Received on-demand image processing request (Photos+IOSurface) with MADRequestID %d", buf, 8u);
    }
  }

  context = objc_autoreleasePoolPush();
  v34 = [NSString stringWithFormat:@"Request: %d Identifier: %@", v9, v15];
  v18 = VCPSignPostLog();
  v19 = os_signpost_id_generate(v18);

  v20 = VCPSignPostLog();
  v21 = v20;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 138412290;
    *&buf[4] = v34;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "VCPMediaAnalysisClientHandler_PHAsset", "%@", buf, 0xCu);
  }

  *buf = 0;
  v22 = [(VCPMediaAnalysisClientHandler *)self assetWithIdentifier:v15 identifierType:0 fromPhotoLibraryWithURL:v36 error:buf];
  if (v22)
  {
    pixelBufferOut = 0;
    v23 = CVPixelBufferCreateWithIOSurface(0, surface, 0, &pixelBufferOut);
    if (v23)
    {
      v47 = NSLocalizedDescriptionKey;
      v24 = [NSString stringWithFormat:@"[MAClientHandler] Failed to create CVPixelBuffer from specified IOSurface"];
      v48 = v24;
      v25 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v26 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v23 userInfo:v25];
      v16[2](v16, 0, v26);
    }

    else
    {
      v24 = [VCPMADServiceImageAsset assetWithPhotosAsset:v22 pixelBuffer:pixelBufferOut orientation:v12 clientBundleID:self->_clientBundleID clientTeamID:self->_clientTeamID];
      v27 = self->_userSafetyEntitled && [MADUserSafetySettings isEnabledForTask:self->_secTask.value_];
      [v24 setUserSafetyEligible:v27];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_1000616BC;
      v39[3] = &unk_100284390;
      v45 = v9;
      v43 = v19;
      v28 = v34;
      v40 = v28;
      v44 = 0;
      v29 = v16;
      v42 = v29;
      v41 = v33;
      v30 = [VCPMADServiceImageProcessingTask taskWithRequests:v41 forAsset:v24 cancelBlock:&stru_100284438 andCompletionHandler:v39];
      [v30 setSignpostPayload:v28];
      queuingTaskScheduler = self->_queuingTaskScheduler;
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100061868;
      v37[3] = &unk_100282AC0;
      v38 = v29;
      [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v30 withRequestID:v9 schedulingErrorHandler:v37];

      v25 = v40;
    }

    sub_100002CBC(&pixelBufferOut);
  }

  else
  {
    v16[2](v16, 0, *buf);
  }

  objc_autoreleasePoolPop(context);
}

- (void)requestImageProcessing:(id)a3 forAssetWithCloudIdentifier:(id)a4 requestID:(int)a5 andReply:(id)a6
{
  v7 = *&a5;
  v33 = a3;
  v35 = a4;
  v10 = a6;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v11 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v11))
    {
      *buf = 67109120;
      LODWORD(v50) = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[MAClientHandler] Received on-demand image processing request (Photos) with MADRequestID %d", buf, 8u);
    }
  }

  context = objc_autoreleasePoolPush();
  v34 = [NSString stringWithFormat:@"Request: %d Identifier: %@", v7, v35];
  v12 = VCPSignPostLog();
  v13 = os_signpost_id_generate(v12);

  v14 = VCPSignPostLog();
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 138412290;
    v50 = v34;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VCPMediaAnalysisClientHandler_PHAsset", "%@", buf, 0xCu);
  }

  v16 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
  if ([v16 vcp_isCPLEnabled])
  {
    v48 = 0;
    if (MediaAnalysisLogLevel() >= 7)
    {
      v17 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v17))
      {
        *buf = 138412546;
        v50 = v35;
        v51 = 1024;
        v52 = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[MAClientHandler] Process asset (%@) for MADRequestID %d", buf, 0x12u);
      }
    }

    v18 = [v16 photoLibraryURL];
    v19 = [(VCPMediaAnalysisClientHandler *)self assetWithIdentifier:v35 identifierType:1 fromPhotoLibraryWithURL:v18 error:&v48];

    if (v19)
    {
      v31 = [VCPMADServiceImageAsset assetWithPhotosAsset:v19 clientBundleID:self->_clientBundleID clientTeamID:self->_clientTeamID];
      v20 = self->_userSafetyEntitled && [MADUserSafetySettings isEnabledForTask:self->_secTask.value_];
      [v31 setUserSafetyEligible:v20];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100061FE4;
      v40[3] = &unk_100284480;
      v47 = v7;
      v45 = v13;
      v26 = v34;
      v41 = v26;
      v46 = 0;
      v27 = v35;
      v42 = v27;
      v28 = v10;
      v44 = v28;
      v43 = v33;
      v29 = [VCPMADServiceImageProcessingTask taskWithRequests:v43 forAsset:v31 cancelBlock:&stru_100284458 andCompletionHandler:v40];
      [v29 setSignpostPayload:v26];
      queuingTaskScheduler = self->_queuingTaskScheduler;
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100062290;
      v36[3] = &unk_1002844A8;
      v37 = v27;
      v39 = v7;
      v38 = v28;
      [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v29 withRequestID:v7 schedulingErrorHandler:v36];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v25 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v25))
        {
          *buf = 138412802;
          v50 = v35;
          v51 = 1024;
          v52 = v7;
          v53 = 2112;
          v54 = v48;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "[MAClientHandler] Failed to fetch asset (%@) for MADRequestID %d - %@", buf, 0x1Cu);
        }
      }

      (*(v10 + 2))(v10, 0, v48);
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v21 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v21))
      {
        *buf = 67109120;
        LODWORD(v50) = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[MAClientHandler] iCloud photo library is not enabled for MADRequestID %d", buf, 8u);
      }
    }

    v55 = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithFormat:@"iCloud photo library is not enabled"];
    v56 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v24 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v23];
    (*(v10 + 2))(v10, 0, v24);
  }

  objc_autoreleasePoolPop(context);
}

- (void)requestImageProcessingWithCloudIdentifierRequests:(id)a3 requestID:(int)a4 andReply:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v10 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      *buf = 67109120;
      v34 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[MAClientHandler] Received on-demand image processing request (Photos) with MADRequestID %d", buf, 8u);
    }
  }

  v11 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
  if ([v11 vcp_isCPLEnabled])
  {
    v22 = v8;
    v12 = [NSString stringWithFormat:@"MADRequestID: %d", v6];
    clientBundleID = self->_clientBundleID;
    clientTeamID = self->_clientTeamID;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000627EC;
    v27[3] = &unk_1002844F0;
    v30 = v6;
    v15 = v9;
    v29 = v15;
    v16 = v8;
    v28 = v16;
    v17 = [VCPMADServiceImageProcessingTaskBatch taskWithCloudIdentifierRequests:v16 photoLibrary:v11 clientBundleID:clientBundleID clientTeamID:clientTeamID cancelBlock:&stru_1002844C8 andCompletionHandler:v27];
    [v17 setSignpostPayload:v12];
    queuingTaskScheduler = self->_queuingTaskScheduler;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100062978;
    v23[3] = &unk_1002844A8;
    v24 = v16;
    v26 = v6;
    v25 = v15;
    [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v17 withRequestID:v6 schedulingErrorHandler:v23];

    v8 = v22;
    v19 = v29;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v20 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v20))
      {
        *buf = 67109120;
        v34 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[MAClientHandler] iCloud photo library is not enabled for MADRequestID %d", buf, 8u);
      }
    }

    v31 = NSLocalizedDescriptionKey;
    v12 = [NSString stringWithFormat:@"iCloud photo library is not enabled"];
    v32 = v12;
    v19 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v21 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v19];
    (*(v9 + 2))(v9, 0, v21);
  }
}

- (void)requestVideoProcessing:(id)a3 asset:(id)a4 requestID:(int)a5 isIncremental:(BOOL)a6 reply:(id)a7
{
  v8 = a6;
  v9 = *&a5;
  v12 = a3;
  v13 = a4;
  v28 = a7;
  v14 = [v13 identifier];
  v29 = [NSString stringWithFormat:@"Request: %d Identifier: %@", v9, v14];

  v15 = VCPSignPostLog();
  v16 = os_signpost_id_generate(v15);

  v17 = VCPSignPostLog();
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 138412290;
    v43 = v29;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "VCPMediaAnalysisClientHandler_VideoE2E", "%@", buf, 0xCu);
  }

  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100062E80;
  v40[3] = &unk_100282B58;
  v40[4] = self;
  v41 = v9;
  v19 = objc_retainBlock(v40);
  if (v8)
  {
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100062E9C;
    v38[3] = &unk_100284518;
    v38[4] = self;
    v39 = v9;
    v20 = objc_retainBlock(v38);
  }

  else
  {
    v20 = 0;
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100062EC8;
  v32[3] = &unk_100284560;
  v37 = v9;
  v35 = v16;
  v21 = v29;
  v33 = v21;
  v36 = 0;
  v22 = v28;
  v34 = v22;
  v23 = [MADServiceVideoProcessingTask taskWithRequests:v12 forAsset:v13 cancelBlock:&stru_100284538 progressHandler:v19 resultHandler:v20 andCompletionHandler:v32];
  v24 = v12;
  [v23 setSignpostPayload:v21];
  queuingTaskScheduler = self->_queuingTaskScheduler;
  v26 = v9;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10006308C;
  v30[3] = &unk_100282AC0;
  v27 = v22;
  v31 = v27;
  [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v23 withRequestID:v26 schedulingErrorHandler:v30];
}

- (void)requestVideoProcessing:(id)a3 assetURL:(id)a4 sandboxToken:(id)a5 identifier:(id)a6 requestID:(int)a7 reply:(id)a8
{
  v9 = *&a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = [(VCPMediaAnalysisClientHandler *)self consumeSandboxExtension:v16 url:v15];
  if (v19 < 0)
  {
    v27 = NSLocalizedDescriptionKey;
    v20 = [NSString stringWithFormat:@"[MAClientHandler] Failed to consume sandbox extension"];
    v28 = v20;
    v22 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v23 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v22];
    v18[2](v18, 0, v23);
  }

  else
  {
    v20 = [MADServiceVideoAsset assetWithURL:v15 identifier:v17 clientBundleID:self->_clientBundleID clientTeamID:self->_clientTeamID];
    v21 = self->_userSafetyEntitled && [MADUserSafetySettings isEnabledForTask:self->_secTask.value_];
    [v20 setUserSafetyEligible:v21];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100063374;
    v24[3] = &unk_100284588;
    v26 = v19;
    v25 = v18;
    [(VCPMediaAnalysisClientHandler *)self requestVideoProcessing:v14 asset:v20 requestID:v9 isIncremental:0 reply:v24];
    v22 = v25;
  }
}

- (void)requestVideoProcessing:(id)a3 assetIdentifier:(id)a4 identifierType:(unint64_t)a5 photoLibraryURL:(id)a6 requestID:(int)a7 isIncremental:(BOOL)a8 reply:(id)a9
{
  v9 = a8;
  v10 = *&a7;
  v15 = a3;
  v16 = a9;
  v20 = 0;
  v17 = [(VCPMediaAnalysisClientHandler *)self assetWithIdentifier:a4 identifierType:a5 fromPhotoLibraryWithURL:a6 error:&v20];
  if (v17)
  {
    v18 = [MADServiceVideoAsset assetWithPhotosAsset:v17 clientBundleID:self->_clientBundleID clientTeamID:self->_clientTeamID];
    v19 = self->_userSafetyEntitled && [MADUserSafetySettings isEnabledForTask:self->_secTask.value_];
    [v18 setUserSafetyEligible:v19];
    [(VCPMediaAnalysisClientHandler *)self requestVideoProcessing:v15 asset:v18 requestID:v10 isIncremental:v9 reply:v16];
  }

  else
  {
    v16[2](v16, 0, v20);
  }
}

- (void)requestVisionCacheStorageDirectoryURLForPhotoLibraryURL:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSString stringWithFormat:@"[MAClientHandler][VUGalleryDirectoryURLAccess]"];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v8 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      *buf = 138412546;
      v38 = v7;
      v39 = 2112;
      v40 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ Received request for vision cache storage directory URL (%@)", buf, 0x16u);
    }
  }

  if (v5)
  {
    v9 = +[VCPPhotoLibraryManager sharedManager];
    v10 = [v9 photoLibraryWithURL:v5];

    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
    if (v10)
    {
LABEL_6:
      v11 = [v10 vcp_visionCacheStorageDirectoryURL];
      v30 = 0;
      v12 = [[VUWGallery alloc] initWithClient:0 path:v11 error:&v30];
      v29 = v30;
      if (v12)
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v13 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v13))
          {
            *buf = 138412546;
            v38 = v7;
            v39 = 2112;
            v40 = v11;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "%@ Creating sandbox extension for directory %@", buf, 0x16u);
          }
        }

        v14 = [v11 path];
        v15 = v14;
        [v14 UTF8String];
        v16 = sandbox_extension_issue_file();

        if (v16)
        {
          v17 = [NSString stringWithUTF8String:v16];
          free(v16);
          if ([v17 length])
          {
            v18 = v17;
            v19 = [v17 UTF8String];
            v20 = v17;
            v21 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", v19, strlen([v17 UTF8String]) + 1);

            if (v21)
            {
              if (MediaAnalysisLogLevel() >= 7)
              {
                v22 = VCPLogToOSLogType[7];
                if (os_log_type_enabled(&_os_log_default, v22))
                {
                  *buf = 138412290;
                  v38 = v7;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "%@ Returning sandbox extension for vision cache storage directory URL ...", buf, 0xCu);
                }
              }

              v6[2](v6, v11, v21, 0);
              goto LABEL_32;
            }
          }

          else
          {
          }
        }

        if (MediaAnalysisLogLevel() >= 3)
        {
          v27 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v27))
          {
            *buf = 138412290;
            v38 = v7;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "%@ Failed to generate sandbox extension", buf, 0xCu);
          }
        }

        v31 = NSLocalizedDescriptionKey;
        v25 = [NSString stringWithFormat:@"%@ Failed to generate sandbox extension", v7];
        v32 = v25;
        v26 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v28 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v26];
        (v6)[2](v6, 0, 0, v28);

        v21 = 0;
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v24 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v24))
          {
            *buf = 138412546;
            v38 = v7;
            v39 = 2112;
            v40 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "%@ Failed to obtain gallery for Photo Library (%@)", buf, 0x16u);
          }
        }

        v33 = NSLocalizedDescriptionKey;
        v21 = [NSString stringWithFormat:@"%@ Failed to obtain Gallery for Photo Library", v7];
        v34 = v21;
        v25 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v26 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v25];
        (v6)[2](v6, 0, 0, v26);
      }

LABEL_32:
      goto LABEL_33;
    }
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v23 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v23))
    {
      *buf = 138412546;
      v38 = v7;
      v39 = 2112;
      v40 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "%@ Failed to obtain specified Photo Library (%@)", buf, 0x16u);
    }
  }

  v35 = NSLocalizedDescriptionKey;
  v11 = [NSString stringWithFormat:@"%@ Failed to obtain specified Photo Library", v7];
  v36 = v11;
  v29 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v12 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:?];
  (v6)[2](v6, 0, 0, v12);
LABEL_33:
}

- (void)queryVUIndexAssetCountForType:(int64_t)a3 photoLibraryURL:(id)a4 reply:(id)a5
{
  v7 = a4;
  v8 = a5;
  v28 = [NSString stringWithFormat:@"[MAClientHandler][VUGalleryAssetCount]"];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v9 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      *buf = 138412802;
      v31 = v28;
      v32 = 1024;
      *v33 = a3;
      *&v33[4] = 2112;
      *&v33[6] = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "%@ Received request to query VU index asset count for type %d (%@)", buf, 0x1Cu);
    }
  }

  if (v7)
  {
    v10 = +[VCPPhotoLibraryManager sharedManager];
    v11 = [v10 photoLibraryWithURL:v7];

    if (v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
    if (v11)
    {
LABEL_6:
      v12 = [v11 vcp_visionCacheStorageDirectoryURL];
      v29 = 0;
      v13 = [[VUWGallery alloc] initWithClient:0 path:v12 error:&v29];
      v27 = v29;
      if (v13)
      {
        v14 = VCPSignPostLog();
        v15 = os_signpost_id_generate(v14);

        v16 = VCPSignPostLog();
        v17 = v16;
        if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
        {
          *buf = 67109120;
          LODWORD(v31) = a3;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "VCPMediaAnalysisClientHandler_VUGalleryAssetCountForType", "%d", buf, 8u);
        }

        v18 = [v13 assetCountForType:a3];
        v19 = VCPSignPostLog();
        v20 = v19;
        if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
        {
          *buf = 67109120;
          LODWORD(v31) = a3;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, v15, "VCPMediaAnalysisClientHandler_VUGalleryAssetCountForType", "%d", buf, 8u);
        }

        if (MediaAnalysisLogLevel() >= 7)
        {
          v21 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v21))
          {
            *buf = 138413058;
            v31 = v28;
            v32 = 1024;
            *v33 = a3;
            *&v33[4] = 2112;
            *&v33[6] = v7;
            v34 = 1024;
            v35 = v18;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@ Queried asset count for type %d for Photo Library (%@): %d", buf, 0x22u);
          }
        }

        v8[2](v8, v18, 0);
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v23 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v23))
          {
            *buf = 138412546;
            v31 = v28;
            v32 = 2112;
            *v33 = v7;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "%@ Failed to obtain VU gallery for Photo Library (%@)", buf, 0x16u);
          }
        }

        v36 = NSLocalizedDescriptionKey;
        v24 = [NSString stringWithFormat:@"%@ Failed to obtain VU gallery for Photo Library (%@)", v28, v7];
        v37 = v24;
        v25 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v26 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v25];
        (v8)[2](v8, 0, v26);
      }

      goto LABEL_26;
    }
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v22 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v22))
    {
      *buf = 138412546;
      v31 = v28;
      v32 = 2112;
      *v33 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "%@ Failed to obtain specified Photo Library (%@)", buf, 0x16u);
    }
  }

  v38 = NSLocalizedDescriptionKey;
  v12 = [NSString stringWithFormat:@"%@ Failed to obtain specified Photo Library (%@)", v28, v7];
  v39 = v12;
  v27 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v13 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:?];
  (v8)[2](v8, 0, v13);
LABEL_26:
}

- (void)queryVUIndexLastFullModeClusterDateWithPhotoLibraryURL:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"[MAClientHandler][VUFullModeClusterDate]"];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v9 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      *buf = 138412546;
      v24 = v8;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "%@ Received request to query VU last full-mode cluster date (%@)", buf, 0x16u);
    }
  }

  if (v6)
  {
    v10 = +[VCPPhotoLibraryManager sharedManager];
    v11 = [v10 photoLibraryWithURL:v6];

    if (v11)
    {
      goto LABEL_6;
    }

LABEL_9:
    if (MediaAnalysisLogLevel() >= 3)
    {
      v16 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        *buf = 138412546;
        v24 = v8;
        v25 = 2112;
        v26 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "%@ Failed to obtain specified Photo Library (%@)", buf, 0x16u);
      }
    }

    v32 = NSLocalizedDescriptionKey;
    v14 = [NSString stringWithFormat:@"%@ Failed to obtain specified Photo Library (%@)", v8, v6];
    v33 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v17 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v15];
    v7[2](v7, 0, v17);

    goto LABEL_13;
  }

  v11 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_6:
  v31 = v11;
  v12 = [NSArray arrayWithObjects:&v31 count:1];
  v13 = [(VCPMediaAnalysisClientHandler *)self scheduleDatabaseMigrationIfNeededForPhotoLibraries:v12];

  if (v13)
  {
    v14 = [NSString stringWithFormat:@"Failed to query VU last full-mode cluster date due to MediaAnalysis database migration incomplete for photo library %@", v6];
    v15 = [objc_opt_class() errorForStatus:4294967278 withDescription:v14];
    v7[2](v7, 0, v15);
LABEL_13:

    goto LABEL_28;
  }

  if (+[MADManagedKeyValueStore isMACDReadEnabled])
  {
    v18 = [v11 mad_fetchRequest];
    v19 = [v18 fetchDataStoreValueIfKeyExists:VCPKeyValueMediaAnalysisImagePriority1LastFullModeClusterTimestamp];

    if (v19)
    {
      v14 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v19 longLongValue]);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v19 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v11];
    v20 = VCPKeyValueMediaAnalysisImagePriority1LastFullModeClusterTimestamp;
    if ([v19 keyExistsInKeyValueStore:VCPKeyValueMediaAnalysisImagePriority1LastFullModeClusterTimestamp])
    {
      v14 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v19 valueForKey:v20]);
    }

    else
    {
      v14 = 0;
    }

    [VCPDatabaseManager releaseSharedDatabaseForPhotoLibrary:v11];
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v21 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v21))
    {
      v22 = @"is";
      *buf = 138413058;
      v24 = v8;
      if (!v14)
      {
        v22 = @"is NOT";
      }

      v25 = 2112;
      v26 = v6;
      v27 = 2112;
      v28 = v22;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@ VU index for Photo Library (%@) %@ full-mode clustered (last clustered date: %@)", buf, 0x2Au);
    }
  }

  (v7)[2](v7, v14, 0);
LABEL_28:
}

- (void)queryImagePriority1MCEnableDateWithPhotoLibraryURL:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"[MAClientHandler][ImagePriority1MCEnableDate]"];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v9 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      *buf = 138412546;
      v24 = v8;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "%@ Received request to query image priority 1 MC enable date (%@)", buf, 0x16u);
    }
  }

  if (v6)
  {
    v10 = +[VCPPhotoLibraryManager sharedManager];
    v11 = [v10 photoLibraryWithURL:v6];

    if (v11)
    {
      goto LABEL_6;
    }

LABEL_9:
    if (MediaAnalysisLogLevel() >= 3)
    {
      v16 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        *buf = 138412546;
        v24 = v8;
        v25 = 2112;
        v26 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "%@ Failed to obtain specified Photo Library (%@)", buf, 0x16u);
      }
    }

    v32 = NSLocalizedDescriptionKey;
    v14 = [NSString stringWithFormat:@"%@ Failed to obtain specified Photo Library (%@)", v8, v6];
    v33 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v17 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v15];
    v7[2](v7, 0, v17);

    goto LABEL_13;
  }

  v11 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_6:
  v31 = v11;
  v12 = [NSArray arrayWithObjects:&v31 count:1];
  v13 = [(VCPMediaAnalysisClientHandler *)self scheduleDatabaseMigrationIfNeededForPhotoLibraries:v12];

  if (v13)
  {
    v14 = [NSString stringWithFormat:@"Failed to query image priority 1 MC enable date due to MediaAnalysis database migration incomplete for photo library %@", v6];
    v15 = [objc_opt_class() errorForStatus:4294967278 withDescription:v14];
    v7[2](v7, 0, v15);
LABEL_13:

    goto LABEL_28;
  }

  if (+[MADManagedKeyValueStore isMACDReadEnabled])
  {
    v18 = [v11 mad_fetchRequest];
    v19 = [v18 fetchDataStoreValueIfKeyExists:VCPKeyValueMediaAnalysisImagePriority1MCEnableTimestamp];

    if (v19)
    {
      v14 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v19 longLongValue]);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v19 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v11];
    v20 = VCPKeyValueMediaAnalysisImagePriority1MCEnableTimestamp;
    if ([v19 keyExistsInKeyValueStore:VCPKeyValueMediaAnalysisImagePriority1MCEnableTimestamp])
    {
      v14 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v19 valueForKey:v20]);
    }

    else
    {
      v14 = 0;
    }

    [VCPDatabaseManager releaseSharedDatabaseForPhotoLibrary:v11];
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v21 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v21))
    {
      v22 = @"is";
      *buf = 138413058;
      v24 = v8;
      if (!v14)
      {
        v22 = @"is NOT";
      }

      v25 = 2112;
      v26 = v6;
      v27 = 2112;
      v28 = v22;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@ Photo Library (%@) %@ image priority 1 MC enabled (enabled date: %@)", buf, 0x2Au);
    }
  }

  (v7)[2](v7, v14, 0);
LABEL_28:
}

- (void)requestSystemXPCStoreListenerEndpoint:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"[MAClientHandler][SystemXPCStore]"];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v6 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "%@ Received request for Listener Endpoint", buf, 0xCu);
    }
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      clientBundleID = self->_clientBundleID;
      *buf = 138412546;
      v21 = v5;
      v22 = 2112;
      v23 = clientBundleID;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Starting shared XPC Store Container for %@ ...", buf, 0x16u);
    }
  }

  v9 = +[MADSystemXPCStoreContainer sharedContainer];
  v10 = [v9 listenerEndpoint];

  if (v10)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v11 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v11))
      {
        v12 = self->_clientBundleID;
        *buf = 138412802;
        v21 = v5;
        v22 = 2112;
        v23 = v10;
        v24 = 2112;
        v25 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "%@ Returning XPC Store Listener Endpoint %@ for %@", buf, 0x20u);
      }
    }

    v4[2](v4, v10, 0);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v13 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        v14 = self->_clientBundleID;
        *buf = 138412546;
        v21 = v5;
        v22 = 2112;
        v23 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "%@ Failed to start XPC Store Listener Endpoint for %@", buf, 0x16u);
      }
    }

    v18 = NSLocalizedDescriptionKey;
    v15 = [NSString stringWithFormat:@"%@ Failed to start XPC Store Listener Endpoint", v5];
    v19 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v17 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v16];
    (v4)[2](v4, 0, v17);
  }
}

- (void)requestAnalysisXPCStoreListenerEndpointWithPhotoLibraryURL:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"[MAClientHandler][AnalysisXPCStore]"];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v9 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      *buf = 138412290;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "%@ Received request for Listener Endpoint", buf, 0xCu);
    }
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v10 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      clientBundleID = self->_clientBundleID;
      *buf = 138412546;
      v26 = v8;
      v27 = 2112;
      v28 = clientBundleID;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Starting shared XPC Store Container for %@ ...", buf, 0x16u);
    }
  }

  v12 = +[VCPPhotoLibraryManager sharedManager];
  v13 = [v12 photoLibraryWithURL:v6];

  if (!v13)
  {
    v31 = NSLocalizedDescriptionKey;
    v15 = [NSString stringWithFormat:@"%@ Failed to find Photos Library %@", v8, v6];
    v32 = v15;
    v18 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v19 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v18];
    v7[2](v7, 0, v19);
LABEL_18:

    goto LABEL_19;
  }

  v14 = [MADPhotosXPCStoreContainer sharedContainerWithPhotoLibrary:v13];
  v15 = [v14 listenerEndpoint];

  if (!v15)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v20 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v20))
      {
        v21 = self->_clientBundleID;
        *buf = 138412546;
        v26 = v8;
        v27 = 2112;
        v28 = v21;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "%@ Failed to start XPC Store Listener Endpoint for %@", buf, 0x16u);
      }
    }

    v23 = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithFormat:@"%@ Failed to start XPC Store Listener Endpoint", v8];
    v24 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v22 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v19];
    v7[2](v7, 0, v22);

    goto LABEL_18;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v16 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v16))
    {
      v17 = self->_clientBundleID;
      *buf = 138412802;
      v26 = v8;
      v27 = 2112;
      v28 = v15;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "%@ Returning XPC Store Listener Endpoint %@ for %@", buf, 0x20u);
    }
  }

  (v7)[2](v7, v15, 0);
LABEL_19:
}

- (void)queryPerformanceMeasurementsWithReply:(id)a3
{
  v4 = a3;
  Measurements = VCPPerformance_QueryMeasurements();
  v4[2](v4, Measurements);
}

- (void)queryUserSafetyEnablement:(id)a3
{
  v4 = a3;
  if (!self->_userSafetyEntitled)
  {
    v9 = NSLocalizedDescriptionKey;
    v5 = [NSString stringWithFormat:@"Client not entitled to query User Safety enablement"];
    v10 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v6];
    v4[2](v4, 0, v7);
  }

  v8 = [NSNumber numberWithUnsignedInteger:[MADUserSafetySettings policyForTask:self->_secTask.value_]];
  (v4)[2](v4, v8, 0);
}

- (void)subscribeUserSafety:(id)a3
{
  v4 = a3;
  if (!self->_userSafetyEntitledPolicySubscription)
  {
    v31 = NSLocalizedDescriptionKey;
    v5 = [NSString stringWithFormat:@"Client not entitled to query User Safety enablement"];
    v32 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v6];
    v4[2](v4, 0, v7);
  }

  if (self->_userSafetySubscription)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v8 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[MAClientHandler] already subscribed for MADUserSafetyPolicy", buf, 2u);
      }
    }

    v4[2](v4, 1, 0);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    if (MediaAnalysisLogLevel() >= 5)
    {
      v10 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[MAClientHandler] Starting subscribeUserSafety", buf, 2u);
      }
    }

    objc_initWeak(&location, self);
    v11 = [NSSet setWithObject:MOSettingsGroupNameUserSafety];
    v12 = [MOEffectiveSettingsStore publisherForGroups:v11];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100065F30;
    v27[3] = &unk_100282BF0;
    objc_copyWeak(&v28, &location);
    v13 = [v12 sinkWithRecieveInput:v27];
    userSafetySubscription = self->_userSafetySubscription;
    self->_userSafetySubscription = v13;

    if (MediaAnalysisLogLevel() >= 5)
    {
      v15 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[MAClientHandler] Successfully subscribed for MADUserSafetyPolicy", buf, 2u);
      }
    }

    v4[2](v4, 1, 0);
    v16 = objc_alloc_init(MOEffectiveSettingsStore);
    v17 = [v16 userSafety];
    v18 = [v17 scanningPolicy];

    if (MediaAnalysisLogLevel() >= 5)
    {
      v19 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        *buf = 138412290;
        *&buf[4] = v18;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[MAClientHandler] Updated user safety scanning policy (%@)", buf, 0xCu);
      }
    }

    [(VCPMediaAnalysisClientHandler *)self secTask];
    v20 = [MADUserSafetySettings policyTypeForTask:*buf scanningPolicy:v18];
    sub_100002CBC(buf);
    if (MediaAnalysisLogLevel() >= 5)
    {
      v21 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v21))
      {
        *buf = 67109120;
        *&buf[4] = v20;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[MAClientHandler] Starting reportMADUserSafetyPolicy, type: %u", buf, 8u);
      }
    }

    v22 = [[MADUserSafetyPolicy alloc] initWithPolicyType:v20];
    userSafetyQueue = self->_userSafetyQueue;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000662D8;
    v25[3] = &unk_100282BC8;
    v25[4] = self;
    v26 = v22;
    v24 = v22;
    dispatch_async(userSafetyQueue, v25);

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
    objc_autoreleasePoolPop(v9);
  }
}

- (void)cacheHitWithQueryID:(unint64_t)a3 cachedResultQueryID:(unint64_t)a4 engagementSuggestionType:(id)a5
{
  v8 = a5;
  v9 = +[NSMutableDictionary dictionary];
  v10 = [NSNumber numberWithUnsignedLongLong:a3];
  [v9 setObject:v10 forKeyedSubscript:VIACacheHitContextQueryIDKey];

  v11 = [NSNumber numberWithUnsignedLongLong:a4];
  [v9 setObject:v11 forKeyedSubscript:VIACacheHitContextCachedResultQueryID];

  clientBundleID = self->_clientBundleID;
  if (clientBundleID)
  {
    [v9 setObject:clientBundleID forKeyedSubscript:VIACacheHitContextApplicationIdentifierKey];
  }

  if (v8)
  {
    [v9 setObject:v8 forKeyedSubscript:VIACacheHitContextEngagementSuggestionTypeKey];
  }

  v16 = 0;
  v13 = [VIACacheHitContext contextWithDictionary:v9 error:&v16];
  v14 = v16;
  if (v14)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v15 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        *buf = 138412290;
        v18 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "Failed to create VIACacheHitContext, error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    VIAnalyticsLogCacheHitWithContext();
  }
}

- (void)requestOTAMaintenance:(int)a3 options:(id)a4 reply:(id)a5
{
  v7 = a5;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000667B4;
  v20[3] = &unk_100282B58;
  v20[4] = self;
  v21 = a3;
  v8 = objc_retainBlock(v20);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000667D0;
  v17[3] = &unk_1002845B0;
  v19 = a3;
  v9 = v7;
  v17[4] = self;
  v18 = v9;
  v10 = objc_retainBlock(v17);
  v11 = [MADOTAMaintenanceProcessingTask taskWithCancelBlock:&stru_1002845D0 progressHandler:v8 completionHandler:v10];
  queuingTaskScheduler = self->_queuingTaskScheduler;
  v13 = a3;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000669A0;
  v15[3] = &unk_100282AC0;
  v14 = v9;
  v16 = v14;
  [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v11 withRequestID:v13 schedulingErrorHandler:v15];
}

- (void)submitSpotlightAssetURL:(id)a3 uniqueIdentifier:(id)a4 bundleIdentifier:(id)a5 typeIdentifier:(id)a6 sandboxToken:(id)a7 reply:(id)a8
{
  v44 = a3;
  v45 = a4;
  v14 = a5;
  v15 = a6;
  v43 = a7;
  v16 = a8;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v17 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v17))
    {
      *buf = 138412802;
      v60 = v45;
      v61 = 2112;
      v62 = v14;
      v63 = 2112;
      v64 = v44;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[Spotlight] Scheduling asset (UUID: %@ BundleID: %@ URL: %@)", buf, 0x20u);
    }
  }

  v18 = [UTType typeWithIdentifier:v15];
  if ([v18 conformsToType:UTTypeMovie] & 1) != 0 || (objc_msgSend(v18, "conformsToType:", UTTypeVideo))
  {
    v42 = 0;
    v19 = 2;
  }

  else
  {
    if (([v18 conformsToType:UTTypeImage] & 1) == 0)
    {
      v57 = NSLocalizedDescriptionKey;
      v29 = [NSString stringWithFormat:@"Type identifier (%@), does not resolve to image/video", v15];
      v58 = v29;
      v24 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v24];
      v16[2](v16, v8);
      goto LABEL_44;
    }

    v42 = 1;
    v19 = 1;
  }

  v20 = [v14 lowercaseString];
  v21 = [v20 containsString:@"apple"];

  v22 = [v14 lowercaseString];
  v23 = [v22 isEqualToString:@"com.apple.jujubectl"];

  if (v23 & 1 | ((v21 & 1) == 0))
  {
    v50 = 0;
    v24 = [MADManagedSpotlightEntry fetchEntryWithUniqueIdentifier:v45 error:&v50];
    v25 = v50;
    if (v25)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v26 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v26))
        {
          *buf = 138412546;
          v60 = v45;
          v61 = 2112;
          v62 = v25;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "[Spotlight] Failed to fetch entry with %@ (%@). New entry will still be created", buf, 0x16u);
        }
      }
    }

    if (v24)
    {
      [v24 setUrl:v44];
      [v24 setSandboxToken:v43];
      v27 = +[MADSystemDataStore systemDataStore];
      v49 = v25;
      v28 = [v27 commitChangesOrRollback:&v49];
      v29 = v49;

      if (v28)
      {
        v30 = v29;
        if (MediaAnalysisLogLevel() >= 6)
        {
          v31 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v31))
          {
            *buf = 138412290;
            v60 = v24;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "[Spotlight] Updated asset %@", buf, 0xCu);
          }
        }

        v32 = 0;
      }

      else
      {
        v53 = NSLocalizedDescriptionKey;
        v8 = [NSString stringWithFormat:@"Failed to update entry (%@)", v29];
        v54 = v8;
        v30 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        v32 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v30];
      }

      v16[2](v16, v32);
      if ((v28 & 1) == 0)
      {

        goto LABEL_44;
      }
    }

    else
    {
      v48 = v25;
      v33 = [MADManagedSpotlightEntry entryWithURL:v44 uniqueIdentifier:v45 bundleIdentifier:v14 typeIdentifier:v15 sandboxToken:v43 mediaType:v19 error:&v48];
      v29 = v48;

      if (v33)
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v34 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v34))
          {
            *buf = 138412290;
            v60 = v33;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "[Spotlight] Scheduled asset %@", buf, 0xCu);
          }
        }

        v35 = 0;
      }

      else
      {
        v51 = NSLocalizedDescriptionKey;
        v8 = [NSString stringWithFormat:@"Failed to store entry %@", v29];
        v52 = v8;
        v25 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        v35 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v25];
      }

      v16[2](v16, v35);
      if (!v33)
      {

        goto LABEL_44;
      }
    }

    v36 = v29;
    if (MediaAnalysisLogLevel() >= 6)
    {
      v37 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v37))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v37, "[Spotlight] Submit BGST task", buf, 2u);
      }
    }

    if (v42)
    {
      v38 = +[MADSpotlightImageBackgroundSystemTask identifier];
      v39 = +[MADSpotlightImageBackgroundSystemTask sharedTask];
      v47 = v29;
      v40 = &v47;
      [v39 submitTask:&v47];
    }

    else
    {
      v38 = +[MADSpotlightMovieBackgroundSystemTask identifier];
      v39 = +[MADSpotlightMovieBackgroundSystemTask sharedTask];
      v46 = v29;
      v40 = &v46;
      [v39 submitTask:&v46];
    }

    v8 = v38;
    v29 = *v40;

    if (v29)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v41 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v41))
        {
          *buf = 138412546;
          v60 = v8;
          v61 = 2112;
          v62 = v29;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v41, "[Spotlight][%@] Failed to submit the BGST task with error: %@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v55 = NSLocalizedDescriptionKey;
    v29 = [NSString stringWithFormat:@"BundleID %@ is not supported", v14];
    v56 = v29;
    v24 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v24];
    v16[2](v16, v8);
  }

LABEL_44:
}

- (void)requestTextPrewarming:(id)a3 requestID:(int)a4 reply:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v10 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[MADService] Received text pre-warming request", buf, 2u);
    }
  }

  v11 = [NSString stringWithFormat:@"Request: %d", v6];
  v12 = VCPSignPostLog();
  v13 = os_signpost_id_generate(v12);

  v14 = VCPSignPostLog();
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 138412290;
    v31 = v11;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VCPMediaAnalysisClientHandler_TextPrewarmingE2E", "%@", buf, 0xCu);
  }

  v16 = [MADServiceTextPrewarmingTask alloc];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100067684;
  v25[3] = &unk_100282C38;
  v28 = v13;
  v17 = v11;
  v26 = v17;
  v29 = 0;
  v18 = v9;
  v27 = v18;
  v19 = [v16 initWithRequests:v8 cancelBlock:&stru_1002845F0 completionHandler:v25];
  [v19 setSignpostPayload:v17];
  queuingTaskScheduler = self->_queuingTaskScheduler;
  v21 = v6;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000677AC;
  v23[3] = &unk_100282AC0;
  v22 = v18;
  v24 = v22;
  [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v19 withRequestID:v21 schedulingErrorHandler:v23];
}

- (void)requestTextProcessing:(id)a3 textInputs:(id)a4 requestID:(int)a5 reply:(id)a6
{
  v7 = *&a5;
  v26 = a3;
  v10 = a4;
  v11 = a6;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v12 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v12))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[MADService] Received text processing request", buf, 2u);
    }
  }

  v13 = [NSString stringWithFormat:@"Request: %d", v7];
  v14 = VCPSignPostLog();
  v15 = os_signpost_id_generate(v14);

  v16 = VCPSignPostLog();
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 138412290;
    v35 = v13;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "VCPMediaAnalysisClientHandler_TextProcessingE2E", "%@", buf, 0xCu);
  }

  v18 = [MADServiceTextAsset assetWithTextInputs:v10 clientBundleID:self->_clientBundleID clientTeamID:self->_clientTeamID];
  v19 = [MADServiceTextProcessingTask alloc];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100067B60;
  v29[3] = &unk_100282C80;
  v32 = v15;
  v20 = v13;
  v30 = v20;
  v33 = 0;
  v21 = v11;
  v31 = v21;
  v22 = [v19 initWithRequests:v26 asset:v18 cancelBlock:&stru_100284610 completionHandler:v29];
  [v22 setSignpostPayload:v20];
  queuingTaskScheduler = self->_queuingTaskScheduler;
  v24 = v7;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100067CA8;
  v27[3] = &unk_100282AC0;
  v25 = v21;
  v28 = v25;
  [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v22 withRequestID:v24 schedulingErrorHandler:v27];
}

- (void)requestMultiModalPrewarming:(id)a3 requestID:(int)a4 reply:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v10 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[MADService] Received multi-modal pre-warming request", buf, 2u);
    }
  }

  v11 = [NSString stringWithFormat:@"Request: %d", v6];
  v12 = VCPSignPostLog();
  v13 = os_signpost_id_generate(v12);

  v14 = VCPSignPostLog();
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 138412290;
    v31 = v11;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VCPMediaAnalysisClientHandler_MultiModalPrewarmingE2E", "%@", buf, 0xCu);
  }

  v16 = [MADMultiModalPrewarmingTask alloc];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100067FF8;
  v25[3] = &unk_100282C38;
  v28 = v13;
  v17 = v11;
  v26 = v17;
  v29 = 0;
  v18 = v9;
  v27 = v18;
  v19 = [v16 initWithRequests:v8 cancelBlock:&stru_100284630 completionHandler:v25];
  [v19 setSignpostPayload:v17];
  queuingTaskScheduler = self->_queuingTaskScheduler;
  v21 = v6;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100068120;
  v23[3] = &unk_100282AC0;
  v22 = v18;
  v24 = v22;
  [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v19 withRequestID:v21 schedulingErrorHandler:v23];
}

- (void)requestProcessing:(id)a3 multiModalInputs:(id)a4 requestID:(int)a5 reply:(id)a6
{
  v7 = *&a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v13 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v13))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MAClientHandler] Received multi-modal processing request", buf, 2u);
    }
  }

  v14 = [NSString stringWithFormat:@"Request: %d", v7];
  v15 = VCPSignPostLog();
  v16 = os_signpost_id_generate(v15);

  v17 = VCPSignPostLog();
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 138412290;
    v34 = v14;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "VCPMediaAnalysisClientHandler_MultiModalProcessingE2E", "%@", buf, 0xCu);
  }

  v19 = [MADMultiModalProcessingTask alloc];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100068480;
  v28[3] = &unk_100282C80;
  v31 = v16;
  v20 = v14;
  v29 = v20;
  v32 = 0;
  v21 = v12;
  v30 = v21;
  v22 = [v19 initWithRequests:v10 inputs:v11 cancelBlock:&stru_100284650 completionHandler:v28];
  [v22 setSignpostPayload:v20];
  queuingTaskScheduler = self->_queuingTaskScheduler;
  v24 = v7;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000685C8;
  v26[3] = &unk_100282AC0;
  v25 = v21;
  v27 = v25;
  [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v22 withRequestID:v24 schedulingErrorHandler:v26];
}

- (void)requestURLAssetAnalysis:(int)a3 forAssetWithResourcePaths:(id)a4 withOptions:(id)a5 analysisTypes:(unint64_t)a6 sandboxTokens:(id)a7 withReply:(id)a8
{
  v12 = a4;
  v44 = a5;
  v51 = a7;
  v49 = a8;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v13 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v13))
    {
      v14 = [v12 firstObject];
      *buf = 67109378;
      *&buf[4] = a3;
      LOWORD(v77) = 2112;
      *(&v77 + 2) = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MAClientHandler] Received MADRequestID %d to analyze asset %@", buf, 0x12u);
    }
  }

  *buf = 0;
  *&v77 = buf;
  *(&v77 + 1) = 0x3032000000;
  v78 = sub_100069088;
  v79 = sub_100069098;
  v80 = VCPTransactionWithName(@"VCPMediaAnalysisClientHandler-requestURLAssetAnalysis");
  v15 = [v51 count];
  if (v15 == [v12 count])
  {
    v48 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    v42 = a6;
    v47 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    v16 = 0;
    type = VCPLogToOSLogType[7];
    v46 = VCPLogToOSLogType[3];
    while (1)
    {
      if (v16 >= [v12 count])
      {
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 3221225472;
        v62[2] = sub_1000690A0;
        v62[3] = &unk_1002846C8;
        v62[4] = self;
        v48 = v48;
        v63 = v48;
        v35 = v47;
        v64 = v35;
        v67 = a3;
        v36 = v49;
        v65 = v36;
        v66 = buf;
        v37 = objc_retainBlock(v62);
        v60[0] = _NSConcreteStackBlock;
        v60[1] = 3221225472;
        v60[2] = sub_100069558;
        v60[3] = &unk_100282B58;
        v60[4] = self;
        v61 = a3;
        v38 = objc_retainBlock(v60);
        managementQueue = self->_managementQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100069574;
        block[3] = &unk_1002846F0;
        block[4] = self;
        v59 = a3;
        v55 = v36;
        v47 = v35;
        v53 = v47;
        v54 = v44;
        v56 = v38;
        v57 = v37;
        v58 = v42;
        v40 = v37;
        v41 = v38;
        dispatch_sync(managementQueue, block);

        goto LABEL_29;
      }

      v17 = objc_autoreleasePoolPush();
      v18 = [v12 objectAtIndexedSubscript:v16];
      v19 = [NSURL fileURLWithPath:v18];

      v20 = [v51 objectAtIndexedSubscript:v16];
      v21 = [(VCPMediaAnalysisClientHandler *)self consumeSandboxExtension:v20 url:v19];

      if (v21 < 0)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v46))
        {
          *v74 = 138412290;
          v75 = @"[MAClientHandler] Failed to consume sandbox extension";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v46, "%@", v74, 0xCu);
        }

        v70 = NSLocalizedDescriptionKey;
        v27 = [NSString stringWithFormat:@"%@", @"[MAClientHandler] Failed to consume sandbox extension"];
        v71 = v27;
        v28 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
        v29 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v28];
        (*(v49 + 2))(v49, 0, v29);
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          v22 = [v12 objectAtIndexedSubscript:v16];
          *v74 = 138412290;
          v75 = v22;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[MAClientHandler] Consuming sandbox extension for %@", v74, 0xCu);
        }

        v23 = [NSNumber numberWithLongLong:v21];
        [(__CFString *)v48 addObject:v23];

        [v47 addObject:v19];
        v24 = [v12 objectAtIndexedSubscript:v16];
        [NSURL fileURLWithPath:v24];
        v25 = FigSandboxRegisterURLWithProcess();

        if (!v25)
        {
          v31 = 1;
          goto LABEL_22;
        }

        v26 = [v12 objectAtIndexedSubscript:v16];
        v27 = [NSString stringWithFormat:@"[MAClientHandler] Failed to register sandbox extension (%@) to CoreMedia (%d)", v26, v25];

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v46))
        {
          *v74 = 138412290;
          v75 = v27;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v46, "%@", v74, 0xCu);
        }

        v68 = NSLocalizedDescriptionKey;
        v28 = [NSString stringWithFormat:@"%@", v27];
        v69 = v28;
        v29 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        v30 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v29];
        (*(v49 + 2))(v49, 0, v30);
      }

      v31 = 0;
LABEL_22:

      objc_autoreleasePoolPop(v17);
      ++v16;
      if ((v31 & 1) == 0)
      {
        goto LABEL_29;
      }
    }
  }

  v48 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[MAClientHandler] Sandbox token count (%lu) does not match resource count (%lu)", [v51 count], objc_msgSend(v12, "count"));
  if (MediaAnalysisLogLevel() >= 3)
  {
    v32 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v32))
    {
      *v74 = 138412290;
      v75 = v48;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "%@", v74, 0xCu);
    }
  }

  v72 = NSLocalizedDescriptionKey;
  v73 = [NSString stringWithFormat:@"%@", v48];
  v47 = v73;
  v33 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
  v34 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v33];
  (*(v49 + 2))(v49, 0, v34);

LABEL_29:
  _Block_object_dispose(buf, 8);
}

- (void)requestAssetAnalysis:(int)a3 forLocalIdentifiers:(id)a4 fromPhotoLibraryWithURL:(id)a5 withOptions:(id)a6 analysisTypes:(unint64_t)a7 withReply:(id)a8
{
  v12 = *&a3;
  v14 = a4;
  v15 = a5;
  v48 = a6;
  v46 = a8;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v16 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v16))
    {
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[MAClientHandler] Received on-demand analysis asset processing request (%d)", buf, 8u);
    }
  }

  v17 = +[VCPPhotoLibraryManager sharedManager];
  v47 = [v17 photoLibraryWithURL:v15];

  if (v47)
  {
    v18 = VCPMediaAnalysisOutputPathSandboxTokenKey;
    v19 = [v48 objectForKeyedSubscript:VCPMediaAnalysisOutputPathSandboxTokenKey];
    v20 = v19 == 0;

    if (v20)
    {
      v23 = 0;
    }

    else
    {
      v21 = [v48 objectForKeyedSubscript:v18];
      v22 = v21;
      [v21 UTF8String];
      v23 = sandbox_extension_consume();
      if (v23 < 0)
      {
        v71 = NSLocalizedDescriptionKey;
        v40 = [NSString stringWithFormat:@"[MAClientHandler] Failed to consume sandbox extension"];
        v72 = v40;
        v41 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
        v42 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v41];
        v46[2](v46, 0, v42);

        goto LABEL_18;
      }

      if (MediaAnalysisLogLevel() >= 3)
      {
        v24 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v24))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "[MAClientHandler] Consumed sandbox extension successfully", buf, 2u);
        }
      }
    }

    *buf = 0;
    v66 = buf;
    v67 = 0x3032000000;
    v68 = sub_100069088;
    v69 = sub_100069098;
    v70 = VCPTransactionWithName(@"VCPMediaAnalysisClientHandler-requestAssetProcessing");
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_100069F3C;
    v63[3] = &unk_100282B58;
    v63[4] = self;
    v64 = v12;
    v44 = objc_retainBlock(v63);
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_100069F58;
    v57[3] = &unk_100284740;
    v57[4] = self;
    v28 = v48;
    v58 = v28;
    v61 = v23;
    v62 = v12;
    v29 = v46;
    v59 = v29;
    v60 = buf;
    v45 = objc_retainBlock(v57);
    v30 = [PHAsset vcp_fetchOptionsForLibrary:v47 forTaskID:1];
    v43 = [PHAsset fetchAssetsWithLocalIdentifiers:v14 options:v30];
    v31 = [v43 fetchedObjects];
    if ([v31 count])
    {
      v32 = v30;
      v33 = v15;
      v34 = v14;
      managementQueue = self->_managementQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006A2A4;
      block[3] = &unk_1002846F0;
      block[4] = self;
      v56 = v12;
      v52 = v29;
      v50 = v31;
      v55 = a7;
      v51 = v28;
      v53 = v44;
      v54 = v45;
      v36 = managementQueue;
      v14 = v34;
      v15 = v33;
      v30 = v32;
      dispatch_sync(v36, block);

      v37 = v43;
    }

    else
    {
      v38 = [NSString stringWithFormat:@"Failed to fetch localIdentifiers for asset processing MADRequestID %d", v12];
      v39 = [objc_opt_class() errorForStatus:4294967246 withDescription:v38];
      v29[2](v29, 0, v39);

      v37 = v43;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v25 = [v15 path];
    v26 = [NSString stringWithFormat:@"Failed to find client specified Photos Library (%@) for MADRequestID %d", v25, v12];

    v27 = [objc_opt_class() errorForStatus:4294967246 withDescription:v26];
    v46[2](v46, 0, v27);
  }

LABEL_18:
}

- (void)requestAssetAnalysis:(int)a3 forPhotoLibraryURL:(id)a4 withLocalIdentifiers:(id)a5 realTime:(BOOL)a6 withReply:(id)a7
{
  v12 = a4;
  v29 = a5;
  v30 = a7;
  v28 = v12;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v13 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v13))
    {
      *buf = 67109376;
      *&buf[4] = a3;
      *&buf[8] = 2048;
      *&buf[10] = [v29 count];
      _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MAClientHandler] Received MADRequestID %d to analyze %lu assets", buf, 0x12u);
    }
  }

  v14 = +[VCPPhotoLibraryManager sharedManager];
  v15 = [v14 photoLibraryWithURL:v12];

  if (v15)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v46 = sub_100069088;
    v47 = sub_100069098;
    v48 = VCPTransactionWithName(@"VCPMediaAnalysisClientHandler-requestAssetAnalysis");
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10006AA44;
    v43[3] = &unk_100282B58;
    v43[4] = self;
    v44 = a3;
    v16 = objc_retainBlock(v43);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10006AA60;
    v39[3] = &unk_100284790;
    v39[4] = self;
    v42 = a3;
    v17 = v30;
    v40 = v17;
    v41 = buf;
    v18 = objc_retainBlock(v39);
    managementQueue = self->_managementQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006ADB0;
    block[3] = &unk_1002847B8;
    block[4] = self;
    v37 = a3;
    v34 = v17;
    v32 = v15;
    v38 = a6;
    v33 = v29;
    v35 = v16;
    v36 = v18;
    v20 = v18;
    v21 = v16;
    dispatch_sync(managementQueue, block);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v22 = [v12 path];
    v23 = [NSString stringWithFormat:@"[MAClientHandler] Failed to find client specified Photos Library (%@)", v22];

    if (MediaAnalysisLogLevel() >= 3)
    {
      v24 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v24))
      {
        *buf = 138412290;
        *&buf[4] = v23;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "%@", buf, 0xCu);
      }
    }

    v49 = NSLocalizedDescriptionKey;
    v25 = [NSString stringWithFormat:@"%@", v23];
    v50 = v25;
    v26 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v27 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v26];
    (*(v30 + 2))(v30, 0, v27);
  }
}

- (void)_resetPECFailureVersionForPhotoLibrary:(id)a3
{
  v27 = a3;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[MAClientHandler] Reseting PEC Failure Versions", buf, 2u);
    }
  }

  v26 = objc_alloc_init(PHMediaProcessingAlgorithmVersionProvider);
  [v26 setVaAnalysisVersion:VCPPhotosPECProcessingVersion_Failures];
  [PHAsset mad_sceneConfidenceThresholdForTask:16];
  v5 = v4;
  v34 = 0;
  v25 = [v27 countOfProcessedAssetsForMediaProcessingTaskID:16 priority:0 algorithmVersion:v26 sceneConfidenceThreshold:&v34 error:?];
  v23 = v34;
  if (v23)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v7 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        *buf = 138412290;
        v37 = v23;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MAClientHandler] Failed to count PEC Failures: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    type = VCPLogToOSLogType[3];
    *&v6 = 138412290;
    v22 = v6;
    do
    {
      if (v9 || v8 >= v25)
      {
        break;
      }

      v10 = objc_autoreleasePoolPush();
      v33 = 0;
      LODWORD(v11) = v5;
      v12 = [v27 fetchProcessedAssetsForMediaProcessingTaskID:16 priority:0 algorithmVersion:v26 sceneConfidenceThreshold:&v33 error:v11];
      v13 = v33;
      if (v13)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = v22;
          v37 = v13;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[MAClientHandler] Failed to fetch PEC Failure assets: %@", buf, 0xCu);
        }

        v9 = 0;
        v14 = 0;
      }

      else
      {
        v15 = +[NSMutableArray array];
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v16 = v12;
        v17 = [v16 countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v17)
        {
          v18 = *v30;
          do
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v30 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = [*(*(&v29 + 1) + 8 * i) localIdentifier];
              [v15 addObject:v20];
            }

            v17 = [v16 countByEnumeratingWithState:&v29 objects:v35 count:16];
          }

          while (v17);
        }

        v28 = 0;
        [v27 resetStateForMediaProcessingTaskID:16 assetIdentifiers:v15 resetOptions:1 error:&v28];
        v21 = v28;
        v14 = v21 == 0;
        if (v21)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = v22;
            v37 = v21;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[MAClientHandler] Error while clearing PEC Failure version: %@", buf, 0xCu);
          }

          v9 = 0;
        }

        else
        {
          v8 += [v16 count];
          v9 = [v16 count] == 0;
        }
      }

      objc_autoreleasePoolPop(v10);
    }

    while (v14);
  }
}

- (void)_resetProcessingStatusForTaskID:(unint64_t)a3 andPhotoLibrary:(id)a4
{
  v6 = a4;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MAClientHandler] Canceling background activity if exists to avoid dual MADB writer scenario", buf, 2u);
    }
  }

  v8 = +[VCPMADTaskScheduler sharedInstance];
  [v8 cancelBackgroundTasks];

  if (MADHasProcessingStatusForTaskID())
  {
    v34 = v6;
    v9 = [NSArray arrayWithObjects:&v34 count:1];
    v10 = [(VCPMediaAnalysisClientHandler *)self scheduleDatabaseMigrationIfNeededForPhotoLibraries:v9];

    if (v10)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v11 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v11))
        {
          v12 = [v6 photoLibraryURL];
          *buf = 138412290;
          v33[0] = v12;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[MAClientHandler] Failed to reset processing status due to MediaAnalysis database migration incomplete for photo library %@", buf, 0xCu);
        }
      }

      goto LABEL_56;
    }

    if (MediaAnalysisLogLevel() >= 5)
    {
      v14 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        v15 = VCPTaskIDDescription();
        *buf = 138412290;
        v33[0] = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[MAClientHandler] Resetting processing status for %@ ...", buf, 0xCu);
      }
    }

    v16 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v6];
    if (+[MADManagedChangeToken isMACDPersistEnabled](MADManagedChangeToken, "isMACDPersistEnabled") && +[MADManagedProcessingStatus isMACDPersistEnabled])
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v17 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v17))
        {
          *buf = 67109120;
          LODWORD(v33[0]) = a3;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[MAClientHandler][MACD] Removing all processing status and change tokens for taskID %d", buf, 8u);
        }
      }

      v30 = 0;
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10006BC64;
      v31[3] = &unk_100282F90;
      v31[4] = a3;
      v18 = [v6 mad_performAnalysisDataStoreChanges:v31 error:&v30];
      v19 = v30;
      if ((v18 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
      {
        v20 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v20))
        {
          *buf = 67109378;
          LODWORD(v33[0]) = a3;
          WORD2(v33[0]) = 2112;
          *(v33 + 6) = v19;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[MAClientHandler][MACD] Failed to remove all processing status/change tokens for taskID %d: %@", buf, 0x12u);
        }
      }
    }

    else
    {
      v29 = 0;
      if (![v16 removeAllChangeTokensForTaskID:a3] && !objc_msgSend(v16, "removeAllProcessingStatusForTaskID:", a3))
      {
        if (a3 == 1 && (+[NSDate now](NSDate, "now"), v9 = objc_claimAutoreleasedReturnValue(), [v16 ageOutBlacklistBefore:v9 count:&v29]))
        {
        }

        else
        {
          v27 = [v16 commit];
          if (a3 == 1)
          {
            v28 = v27 == 0;

            if (v28)
            {
              goto LABEL_32;
            }
          }

          else if (!v27)
          {
            goto LABEL_32;
          }
        }
      }

      if (MediaAnalysisLogLevel() >= 4)
      {
        v21 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v21))
        {
          v22 = VCPTaskIDDescription();
          *buf = 138412290;
          v33[0] = v22;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[MAClientHandler] Failed to reset %@ state", buf, 0xCu);
        }
      }

      if (a3 == 21)
      {
        [v16 removeAllChangeTokensForTaskID:3];
        [v16 commit];
      }
    }

LABEL_32:
    if (a3 <= 20)
    {
      if (a3 == 1)
      {
        goto LABEL_46;
      }

      if (a3 == 3)
      {
LABEL_40:
        if (MediaAnalysisLogLevel() >= 5)
        {
          v23 = VCPLogToOSLogType[5];
          if (os_log_type_enabled(&_os_log_default, v23))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[MAClientHandler] Resetting person process timestamps ...", buf, 2u);
          }
        }

        if ((+[MADManagedKeyValueStore isMACDPersistEnabled]& 1) != 0)
        {
          v24 = &stru_1002847D8;
LABEL_51:
          [v6 mad_performAnalysisDataStoreChanges:v24 error:0];
          goto LABEL_55;
        }

        [v16 removeKey:@"ContactIngestionTimestamp"];
        [v16 removeKey:@"HomePersonIngestionTimestamp"];
        [v16 removeKey:@"VUDeepSyncTimestamp"];
        v26 = &VCPKeyValueFaceAnalysisLastFullModeClusterTimestamp;
        goto LABEL_54;
      }
    }

    else
    {
      if (a3 == 255)
      {
        goto LABEL_46;
      }

      if (a3 != 22)
      {
        if (a3 != 21 || !_os_feature_enabled_impl())
        {
          goto LABEL_55;
        }

        goto LABEL_40;
      }

      if (_os_feature_enabled_impl())
      {
LABEL_46:
        if (MediaAnalysisLogLevel() >= 5)
        {
          v25 = VCPLogToOSLogType[5];
          if (os_log_type_enabled(&_os_log_default, v25))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "[MAClientHandler] Resetting full cluster timestamps ...", buf, 2u);
          }
        }

        if (+[MADManagedKeyValueStore isMACDPersistEnabled])
        {
          v24 = &stru_1002847F8;
          goto LABEL_51;
        }

        v26 = &VCPKeyValueMediaAnalysisImagePriority1LastFullModeClusterTimestamp;
LABEL_54:
        [v16 removeKey:*v26];
        [v16 commit];
      }
    }

LABEL_55:
    [VCPDatabaseManager releaseSharedDatabaseForPhotoLibrary:v6];

    goto LABEL_56;
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v13 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v13))
    {
      *buf = 67109120;
      LODWORD(v33[0]) = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MAClientHandler] TaskID %d does not have processing status to clear", buf, 8u);
    }
  }

LABEL_56:
}

- (void)requestResetProcessingStatus:(int)a3 taskID:(unint64_t)a4 photoLibraryURL:(id)a5 options:(id)a6 reply:(id)a7
{
  v10 = *&a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (a4 <= 0x16 && ((1 << a4) & 0x60140E) != 0 || a4 == 255)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v15 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        v16 = VCPTaskIDDescription();
        *buf = 67109634;
        v26 = v10;
        v27 = 2112;
        v28 = v16;
        v29 = 2048;
        v30 = a4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[MAClientHandler] Received reset processing status MADRequestID %d for task %@(%lu)", buf, 0x1Cu);
      }
    }

    v17 = +[VCPPhotoLibraryManager sharedManager];
    v18 = [v17 photoLibraryWithURL:v12];

    if (v18)
    {
      [(VCPMediaAnalysisClientHandler *)self _resetProcessingStatusForTaskID:a4 andPhotoLibrary:v18];
      v14[2](v14, 0);
    }

    else
    {
      v19 = [v12 path];
      v20 = [NSString stringWithFormat:@"Unable to open specified photo library (%@)", v19];

      v21 = [objc_opt_class() errorForStatus:4294967246 withDescription:v20];
      (v14)[2](v14, v21);
    }
  }

  else
  {
    v22 = VCPTaskIDDescription();
    v23 = [NSString stringWithFormat:@"MADRequestID %d requestResetProcessingStatus with unsupported task %@(%lu)", v10, v22, a4];

    v24 = [objc_opt_class() errorForStatus:4294967292 withDescription:v23];
    (v14)[2](v14, v24);
  }
}

- (void)requestLibraryProcessing:(int)a3 withTaskID:(unint64_t)a4 forPhotoLibraryURL:(id)a5 withOptions:(id)a6 andReply:(id)a7
{
  v10 = *&a3;
  v12 = a5;
  v44 = a6;
  v45 = a7;
  if (a4 > 0x16 || ((1 << a4) & 0x60158E) == 0)
  {
    v41 = VCPTaskIDDescription();
    v42 = [NSString stringWithFormat:@"MADRequestID %d requestLibraryProcessing with unsupported task %@(%lu)", v10, v41, a4];

    v43 = [objc_opt_class() errorForStatus:4294967292 withDescription:v42];
    v45[2](v45, v43);

    goto LABEL_25;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v13 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v13))
    {
      v14 = VCPTaskIDDescription();
      *buf = 67109634;
      *&buf[4] = v10;
      *v71 = 2112;
      *&v71[2] = v14;
      *&v71[10] = 2048;
      *&v71[12] = a4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MAClientHandler] Received Photos analysis MADRequestID %d for task %@(%lu)", buf, 0x1Cu);
    }
  }

  v15 = +[VCPPhotoLibraryManager sharedManager];
  v16 = [v15 photoLibraryWithURL:v12];

  if (v16)
  {
    if (a4 == 7)
    {
      [v44 objectForKeyedSubscript:VCPTurboProcessing_VCPTaskIDsKey];
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v17 = v67 = 0u;
      v18 = [v17 countByEnumeratingWithState:&v66 objects:v75 count:16];
      if (v18)
      {
        v19 = *v67;
        v20 = 1;
LABEL_10:
        v21 = 0;
        while (1)
        {
          if (*v67 != v19)
          {
            objc_enumerationMutation(v17);
          }

          if ([*(*(&v66 + 1) + 8 * v21) unsignedIntegerValue] == 259)
          {
            break;
          }

          v20 &= MADAllowedToRunBeforeDatabaseMigrationCompleteForTaskID();
          if (v18 == ++v21)
          {
            v18 = [v17 countByEnumeratingWithState:&v66 objects:v75 count:16];
            if (v18)
            {
              goto LABEL_10;
            }

            if ((v20 & 1) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_23;
          }
        }
      }

      goto LABEL_23;
    }

    if ((MADAllowedToRunBeforeDatabaseMigrationCompleteForTaskID() & 1) == 0)
    {
LABEL_20:
      v74 = v16;
      v25 = [NSArray arrayWithObjects:&v74 count:1];
      v26 = [(VCPMediaAnalysisClientHandler *)self scheduleDatabaseMigrationIfNeededForPhotoLibraries:v25];

      if (v26)
      {
        v27 = [v12 path];
        v28 = [NSString stringWithFormat:@"Failed to process library (%@) with taskID %d for MADRequestID %d due to MediaAnalysis database migration incomplete", v27, a4, v10];

        v29 = [objc_opt_class() errorForStatus:4294967278 withDescription:v28];
        v45[2](v45, v29);

        goto LABEL_24;
      }
    }

LABEL_23:
    *buf = 0;
    *v71 = buf;
    *&v71[8] = 0x3032000000;
    *&v71[16] = sub_100069088;
    v72 = sub_100069098;
    v73 = objc_alloc_init(VCPTimeMeasurement);
    [*(*v71 + 40) start];
    v64[0] = 0;
    v64[1] = v64;
    v64[2] = 0x3032000000;
    v64[3] = sub_100069088;
    v64[4] = sub_100069098;
    v65 = VCPTransactionWithName(@"VCPMediaAnalysisClientHandler-requestLibraryProcessing");
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_10006C8DC;
    v62[3] = &unk_100282B58;
    v62[4] = self;
    v63 = v10;
    v30 = objc_retainBlock(v62);
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_10006C8F8;
    v60[3] = &unk_100284820;
    v60[4] = self;
    v61 = v10;
    v31 = objc_retainBlock(v60);
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_10006C914;
    v55[3] = &unk_100284870;
    v59 = v10;
    v55[4] = self;
    v57 = buf;
    v32 = v45;
    v56 = v32;
    v58 = v64;
    v33 = objc_retainBlock(v55);
    v34 = v10;
    v35 = v12;
    managementQueue = self->_managementQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006CC80;
    block[3] = &unk_100284A00;
    block[4] = self;
    v54 = v34;
    v49 = v32;
    v53 = a4;
    v47 = v44;
    v48 = v16;
    v50 = v30;
    v51 = v33;
    v52 = v31;
    v37 = v31;
    v38 = v33;
    v39 = v30;
    v40 = managementQueue;
    v12 = v35;
    dispatch_sync(v40, block);

    _Block_object_dispose(v64, 8);
    _Block_object_dispose(buf, 8);

    goto LABEL_24;
  }

  v22 = [v12 path];
  v23 = [NSString stringWithFormat:@"Unable to open specified photo library (%@)", v22];

  v24 = [objc_opt_class() errorForStatus:4294967246 withDescription:v23];
  v45[2](v45, v24);

LABEL_24:
LABEL_25:
}

- (void)requestVideoFramesProcessing:(int)a3 withTaskID:(unint64_t)a4 frames:(id)a5 options:(id)a6 andReply:(id)a7
{
  v10 = *&a3;
  v12 = a5;
  v25 = a6;
  v13 = a7;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v14 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v14))
    {
      v15 = VCPTaskIDDescription();
      *buf = 67109634;
      *&buf[4] = v10;
      *v38 = 2112;
      *&v38[2] = v15;
      *&v38[10] = 2048;
      *&v38[12] = a4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[MAClientHandler] Received video frames processing MADRequestID %d for task %@(%lu)", buf, 0x1Cu);
    }
  }

  if (a4 == 15)
  {
    if ([v12 count])
    {
      *buf = 0;
      *v38 = buf;
      *&v38[8] = 0x3032000000;
      *&v38[16] = sub_100069088;
      v39 = sub_100069098;
      v40 = VCPTransactionWithName(@"VCPMediaAnalysisClientHandler-requestVideoFramesProcessing");
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10006E490;
      v33[3] = &unk_100283390;
      v33[4] = self;
      v36 = v10;
      v16 = v13;
      v34 = v16;
      v35 = buf;
      v17 = objc_retainBlock(v33);
      managementQueue = self->_managementQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006E788;
      block[3] = &unk_100284A28;
      block[4] = self;
      v32 = v10;
      v29 = v16;
      v27 = v25;
      v28 = v12;
      v30 = v17;
      v31 = 15;
      v19 = v17;
      dispatch_sync(managementQueue, block);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v23 = [NSString stringWithFormat:@"No frames specified for MADRequestID %d", v10];
      v24 = [objc_opt_class() errorForStatus:4294967246 withDescription:v23];
      (*(v13 + 2))(v13, 0, v24);
    }
  }

  else
  {
    v20 = VCPTaskIDDescription();
    v21 = [NSString stringWithFormat:@"MADRequestID %d requestVideoFramesProcessing with unsupported task %@(%lu)", v10, v20, a4];

    v22 = [objc_opt_class() errorForStatus:4294967292 withDescription:v21];
    (*(v13 + 2))(v13, 0, v22);
  }
}

- (void)requestCollectionTheme:(int)a3 forLocalIdentifiers:(id)a4 fromPhotoLibraryWithURL:(id)a5 withOptions:(id)a6 andReply:(id)a7
{
  v10 = *&a3;
  v12 = a4;
  v13 = a5;
  v33 = a6;
  v14 = a7;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v15 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v15))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "Client handler receiving theme requests for : %@", &buf, 0xCu);
    }
  }

  if ([v12 count])
  {
    v16 = +[VCPPhotoLibraryManager sharedManager];
    v17 = [v16 photoLibraryWithURL:v13];

    if (v17)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v48 = 0x3032000000;
      v49 = sub_100069088;
      v50 = sub_100069098;
      v31 = v13;
      v51 = VCPTransactionWithName(@"VCPMediaAnalysisClientHandler-requestCollectionThemeProcessing");
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_10006F0A4;
      v45[3] = &unk_100282B58;
      v45[4] = self;
      v46 = v10;
      v29 = objc_retainBlock(v45);
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_10006F0C0;
      v41[3] = &unk_100283390;
      v41[4] = self;
      v44 = v10;
      v18 = v14;
      v42 = v18;
      p_buf = &buf;
      v32 = objc_retainBlock(v41);
      v30 = [PHAsset vcp_fetchOptionsForLibrary:v17 forTaskID:1];
      v19 = [PHAsset fetchAssetsWithLocalIdentifiers:v12 options:v30];
      v20 = [v19 fetchedObjects];
      if ([v20 count])
      {
        managementQueue = self->_managementQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10006F3CC;
        block[3] = &unk_100284A50;
        block[4] = self;
        v40 = v10;
        v38 = v18;
        v35 = v20;
        v36 = v31;
        v37 = v33;
        v39 = v32;
        v22 = managementQueue;
        v13 = v31;
        dispatch_sync(v22, block);
      }

      else
      {
        v27 = [NSString stringWithFormat:@"Failed to fetch localIdentifiers for asset processing MADRequestID %d", v10];
        v28 = [objc_opt_class() errorForStatus:4294967246 withDescription:v27];
        (*(v18 + 2))(v18, 0, v28);
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v24 = [v13 path];
      v25 = [NSString stringWithFormat:@"Failed to find client specified Photos Library (%@) for MADRequestID %d", v24, v10];

      v26 = [objc_opt_class() errorForStatus:4294967246 withDescription:v25];
      (*(v14 + 2))(v14, 0, v26);
    }
  }

  else
  {
    v17 = [NSString stringWithFormat:@"No localIdentifiers specified for MADRequestID %d", v10];
    v23 = [objc_opt_class() errorForStatus:4294967246 withDescription:v17];
    (*(v14 + 2))(v14, 0, v23);
  }
}

- (void)requestCollectionThemeVersion:(int)a3 withOptions:(id)a4 andReply:(id)a5
{
  v7 = a5;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v8 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "Client handler receiving collection theme version request", buf, 2u);
    }
  }

  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F768;
  block[3] = &unk_100284A78;
  v13 = a3;
  block[4] = self;
  v12 = v7;
  v10 = v7;
  dispatch_sync(managementQueue, block);
}

- (void)requestAssetProcessing:(int)a3 withTaskID:(unint64_t)a4 forLocalIdentifiers:(id)a5 fromPhotoLibraryWithURL:(id)a6 withOptions:(id)a7 andReply:(id)a8
{
  v12 = *&a3;
  v36 = a5;
  v35 = a6;
  v34 = a7;
  v14 = a8;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v15 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v15))
    {
      v16 = VCPTaskIDDescription();
      *buf = 67109634;
      *&buf[4] = v12;
      *v54 = 2112;
      *&v54[2] = v16;
      *&v54[10] = 2048;
      *&v54[12] = a4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[MAClientHandler] Received Photos asset processing MADRequestID %d for task %@(%lu)", buf, 0x1Cu);
    }
  }

  if (a4 <= 0xC && ((1 << a4) & 0x157E) != 0 || a4 == 255)
  {
    if ([v36 count])
    {
      v17 = +[VCPPhotoLibraryManager sharedManager];
      v18 = [v17 photoLibraryWithURL:v35];

      if (v18)
      {
        *buf = 0;
        *v54 = buf;
        *&v54[8] = 0x3032000000;
        *&v54[16] = sub_100069088;
        v55 = sub_100069098;
        v56 = VCPTransactionWithName(@"VCPMediaAnalysisClientHandler-requestAssetProcessing");
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_10006FFD8;
        v51[3] = &unk_100282B58;
        v51[4] = self;
        v52 = v12;
        v32 = objc_retainBlock(v51);
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_10006FFF4;
        v47[3] = &unk_100283390;
        v47[4] = self;
        v50 = v12;
        v19 = v14;
        v48 = v19;
        v49 = buf;
        v33 = objc_retainBlock(v47);
        v31 = [PHAsset vcp_fetchOptionsForLibrary:v18 forTaskID:a4];
        v20 = [PHAsset fetchAssetsWithLocalIdentifiers:v36 options:v31];
        v21 = [v20 fetchedObjects];
        if ([v21 count])
        {
          managementQueue = self->_managementQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100070300;
          block[3] = &unk_100284B68;
          block[4] = self;
          v46 = v12;
          v42 = v19;
          v45 = a4;
          v38 = v21;
          v43 = v32;
          v44 = v33;
          v39 = v36;
          v40 = v35;
          v41 = v34;
          dispatch_sync(managementQueue, block);
        }

        else
        {
          v29 = [NSString stringWithFormat:@"Failed to fetch localIdentifiers for asset processing MADRequestID %d", v12];
          v30 = [objc_opt_class() errorForStatus:4294967246 withDescription:v29];
          (*(v19 + 2))(v19, 0, v30);
        }

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v24 = [v35 path];
        v25 = [NSString stringWithFormat:@"Failed to find client specified Photos Library (%@) for MADRequestID %d", v24, v12];

        v26 = [objc_opt_class() errorForStatus:4294967246 withDescription:v25];
        (*(v14 + 2))(v14, 0, v26);
      }
    }

    else
    {
      v18 = [NSString stringWithFormat:@"No localIdentifiers specified for MADRequestID %d", v12];
      v23 = [objc_opt_class() errorForStatus:4294967246 withDescription:v18];
      (*(v14 + 2))(v14, 0, v23);
    }
  }

  else
  {
    v27 = VCPTaskIDDescription();
    v18 = [NSString stringWithFormat:@"MADRequestID %d requestAssetProcessing with unsupported task %@(%lu)", v12, v27, a4];

    v28 = [objc_opt_class() errorForStatus:4294967292 withDescription:v18];
    (*(v14 + 2))(v14, 0, v28);
  }
}

- (void)requestWallpaperUpgrade:(int)a3 atSourceURL:(id)a4 toDestinationURL:(id)a5 withOptions:(id)a6 sandboxTokens:(id)a7 andReply:(id)a8
{
  v12 = *&a3;
  v37 = a4;
  v38 = a5;
  v36 = a6;
  v14 = a7;
  v39 = a8;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v15 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v15))
    {
      *buf = 67109120;
      LODWORD(v48) = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[MAClientHandler] Received requestWallpaperUpgrade MADRequestID %d", buf, 8u);
    }
  }

  if ([v14 count] != 2)
  {
    v52 = NSLocalizedDescriptionKey;
    v16 = [NSString stringWithFormat:@"[MAClientHandler] Sandbox token count not euqal to 2"];
    v53 = v16;
    v24 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v25 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v24];
    v39[2](v39, 0, v25);
    goto LABEL_31;
  }

  v35 = v12;
  v51[0] = v37;
  v51[1] = v38;
  v16 = [NSArray arrayWithObjects:v51 count:2];
  v17 = 0;
  v18 = VCPLogToOSLogType[7];
  while (v17 < [v14 count])
  {
    v19 = [v14 objectAtIndexedSubscript:v17];
    v20 = [v16 objectAtIndexedSubscript:v17];
    v21 = [(VCPMediaAnalysisClientHandler *)self consumeSandboxExtension:v19 url:v20];

    if (v21 < 0)
    {
      v49 = NSLocalizedDescriptionKey;
      v24 = [NSString stringWithFormat:@"[MAClientHandler] Failed to consume sandbox extension"];
      v50 = v24;
      v25 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v32 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v25];
      v39[2](v39, 0, v32);
      goto LABEL_30;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v18))
    {
      v22 = [v16 objectAtIndexedSubscript:v17];
      *buf = 138412290;
      v48 = v22;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[MAClientHandler] Consuming sandbox extension for %@", buf, 0xCu);
    }

    v23 = [NSNumber numberWithLongLong:v21];
    [0 addObject:v23];

    ++v17;
  }

  v26 = [[VCPParallaxAnalyzer alloc] initWithOptions:v36 andExistingResults:0];
  v25 = v26;
  if (!v26)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v33 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v33))
      {
        *buf = 67109120;
        LODWORD(v48) = v35;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v33, "[MAClientHandler] Failed to initialize analyzer MADRequestID %d", buf, 8u);
      }
    }

    v45 = NSLocalizedDescriptionKey;
    v29 = [NSString stringWithFormat:@"[MAClientHandler] to initialize analyzer with MADRequestID %d", v35];
    v46 = v29;
    v30 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v31 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-108 userInfo:v30];
    v24 = 0;
    v39[2](v39, 0, v31);
    goto LABEL_24;
  }

  v42 = 0;
  v27 = [v26 upgradeWallPaperAtURL:v37 toURL:v38 cancel:0 results:&v42];
  v24 = v42;
  if (v27)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v28 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v28))
      {
        *buf = 67109120;
        LODWORD(v48) = v35;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "[MAClientHandler] Failed to requestWallpaperUpgrade MADRequestID %d", buf, 8u);
      }
    }

    v43 = NSLocalizedDescriptionKey;
    v29 = [NSString stringWithFormat:@"[MAClientHandler] Failed to requestWallpaperUpgrade with MADRequestID %d", v35];
    v44 = v29;
    v30 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v31 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v27 userInfo:v30];
    v39[2](v39, 0, v31);
LABEL_24:

    goto LABEL_29;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v34 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v34))
    {
      *buf = 67109120;
      LODWORD(v48) = v35;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "[MAClientHandler] Completed requestWallpaperUpgrade MADRequestID %d", buf, 8u);
    }
  }

  (v39)[2](v39, v24, 0);
LABEL_29:
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000714B0;
  v40[3] = &unk_100284678;
  v41 = v16;
  [0 enumerateObjectsUsingBlock:v40];
  v32 = v41;
LABEL_30:

LABEL_31:
}

- (void)requestRecentsProcessing:(int)a3 withTaskID:(unint64_t)a4 photoLibraryWithURL:(id)a5 reply:(id)a6
{
  v8 = *&a3;
  v10 = a5;
  v11 = a6;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v12 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v12))
    {
      v13 = VCPTaskIDDescription();
      *buf = 67109634;
      *&buf[4] = v8;
      *v45 = 2112;
      *&v45[2] = v13;
      *&v45[10] = 2048;
      *&v45[12] = a4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[MAClientHandler] Received recents processing MADRequestID %d for task %@ (%lu)", buf, 0x1Cu);
    }
  }

  if (a4 == 12)
  {
    v14 = +[VCPPhotoLibraryManager sharedManager];
    v15 = [v14 photoLibraryWithURL:v10];

    if (v15)
    {
      if ((MADAllowedToRunBeforeDatabaseMigrationCompleteForTaskID() & 1) != 0 || (v48 = v15, [NSArray arrayWithObjects:&v48 count:1], v16 = objc_claimAutoreleasedReturnValue(), v17 = [(VCPMediaAnalysisClientHandler *)self scheduleDatabaseMigrationIfNeededForPhotoLibraries:v16], v16, !v17))
      {
        *buf = 0;
        *v45 = buf;
        *&v45[8] = 0x3032000000;
        *&v45[16] = sub_100069088;
        v46 = sub_100069098;
        v47 = VCPTransactionWithName(@"VCPMediaAnalysisClientHandler-requestRecentsProcessing");
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_100071B54;
        v42[3] = &unk_100282B58;
        v42[4] = self;
        v43 = v8;
        v22 = objc_retainBlock(v42);
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_100071B70;
        v38[3] = &unk_100284B90;
        v38[4] = self;
        v41 = v8;
        v23 = v11;
        v39 = v23;
        v40 = buf;
        v24 = objc_retainBlock(v38);
        managementQueue = self->_managementQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100071EE4;
        block[3] = &unk_100284BF8;
        block[4] = self;
        v37 = v8;
        v33 = v23;
        v36 = 12;
        v32 = v10;
        v34 = v22;
        v35 = v24;
        v26 = v24;
        v27 = v22;
        dispatch_sync(managementQueue, block);

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v18 = [NSString stringWithFormat:@"Failed to run recents processing request (taskID %d) for MADRequestID %d due to MediaAnalysis database migration incomplete for photo library %@", 12, v8, v10];
        v19 = [objc_opt_class() errorForStatus:4294967278 withDescription:v18];
        (*(v11 + 2))(v11, v19);
      }
    }

    else
    {
      v28 = [v10 path];
      v29 = [NSString stringWithFormat:@"Failed to find client specified Photos Library (%@) for MADRequestID %d", v28, v8];

      v30 = [objc_opt_class() errorForStatus:4294967246 withDescription:v29];
      (*(v11 + 2))(v11, v30);
    }
  }

  else
  {
    v20 = VCPTaskIDDescription();
    v15 = [NSString stringWithFormat:@"MADRequestID %d requestRecentsProcessing with unsupported task %@(%lu)", v8, v20, a4];

    v21 = [objc_opt_class() errorForStatus:4294967292 withDescription:v15];
    (*(v11 + 2))(v11, v21);
  }
}

- (void)cancelRequest:(int)a3
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[MAClientHandler] Service received call to cancel task for MADRequestID %d", buf, 8u);
    }
  }

  *buf = 0;
  v14 = buf;
  v15 = 0x3032000000;
  v16 = sub_100069088;
  managementQueue = self->_managementQueue;
  v17 = sub_100069098;
  v18 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000726F0;
  block[3] = &unk_100283428;
  block[4] = self;
  block[5] = buf;
  v10 = a3;
  dispatch_sync(managementQueue, block);
  if (*(v14 + 5))
  {
    v7 = +[VCPMADTaskScheduler sharedInstance];
    [v7 cancelTaskWithID:{objc_msgSend(*(v14 + 5), "unsignedIntegerValue")}];
  }

  else
  {
    [(MADServiceClientTaskQueuingScheduler *)self->_queuingTaskScheduler cancelTaskWithRequestID:a3];
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v8 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      *v11 = 67109120;
      v12 = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[MAClientHandler] Canceled task for MADRequestID %d ", v11, 8u);
    }
  }

  _Block_object_dispose(buf, 8);
}

- (void)notifyLibraryAvailableAtURL:(id)a3
{
  v3 = a3;
  v4 = +[VCPPhotoLibraryManager sharedManager];
  v5 = [v4 photoLibraryWithURL:v3];

  if (v5)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v6 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        v7 = [v5 photoLibraryURL];
        v8 = [v7 path];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[MAClientHandler] Added Photo Library %@", &v11, 0xCu);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v9 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      v10 = [v3 path];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[MAClientHandler] Failed to add Photo Library with path %@", &v11, 0xCu);
    }
  }
}

- (void)cancelBackgroundActivityWithReply:(id)a3
{
  v4 = a3;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = [(VCPMediaAnalysisClientHandler *)self description];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[MAClientHandler] Service %@ to cancel background analysis", &v8, 0xCu);
    }
  }

  v7 = +[VCPMADTaskScheduler sharedInstance];
  [v7 cancelBackgroundTasks];

  v4[2](v4, 0);
}

- (void)currentOutstandingTasksWithReply:(id)a3
{
  v6 = a3;
  v4 = +[VCPMADTaskScheduler sharedInstance];
  v5 = [v4 currentOutstandingTasks];

  v6[2](v6, &v5[[(MADServiceClientTaskQueuingScheduler *)self->_queuingTaskScheduler currentPendingTasks]]);
}

- (void)requestSuggestedPersons:(int)a3 withPersonWithLocalIdentifier:(id)a4 toBeConfirmedPersonSuggestions:(id)a5 toBeRejectedPersonSuggestions:(id)a6 andPhotoLibraryURL:(id)a7 andReply:(id)a8
{
  v14 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v15 = a8;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v16 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v16))
    {
      *buf = 67109378;
      *&buf[4] = a3;
      LOWORD(v47) = 2112;
      *(&v47 + 2) = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[MAClientHandler] Received requestSuggestedPersons MADRequestID %d to analyze %@", buf, 0x12u);
    }
  }

  *buf = 0;
  *&v47 = buf;
  *(&v47 + 1) = 0x3032000000;
  v48 = sub_100069088;
  v49 = sub_100069098;
  v50 = VCPTransactionWithName(@"VCPMediaAnalysisClientHandler-requestSuggestedPersons");
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100072EE4;
  v44[3] = &unk_100282B58;
  v44[4] = self;
  v45 = a3;
  v17 = objc_retainBlock(v44);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100072F00;
  v40[3] = &unk_100284C20;
  v40[4] = self;
  v43 = a3;
  v18 = v15;
  v41 = v18;
  v42 = buf;
  v19 = objc_retainBlock(v40);
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000731F8;
  block[3] = &unk_100284C48;
  v39 = a3;
  block[4] = self;
  v32 = v14;
  v33 = v28;
  v34 = v29;
  v35 = v30;
  v36 = v18;
  v37 = v17;
  v38 = v19;
  v21 = v19;
  v22 = v17;
  v23 = v30;
  v24 = v29;
  v25 = v28;
  v26 = v14;
  v27 = v18;
  dispatch_sync(managementQueue, block);

  _Block_object_dispose(buf, 8);
}

- (void)requestUpdateKeyFacesOfPersons:(int)a3 withLocalIdentifiers:(id)a4 andForceUpdate:(BOOL)a5 andPhotoLibraryURL:(id)a6 andReply:(id)a7
{
  v12 = a4;
  v13 = a6;
  v14 = a7;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v15 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v15))
    {
      *buf = 67109378;
      *&buf[4] = a3;
      LOWORD(v40) = 2112;
      *(&v40 + 2) = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[MAClientHandler] Received requestUpdateKeyFacesOfPersons MADRequestID %d to analyze %@", buf, 0x12u);
    }
  }

  *buf = 0;
  *&v40 = buf;
  *(&v40 + 1) = 0x3032000000;
  v41 = sub_100069088;
  v42 = sub_100069098;
  v43 = VCPTransactionWithName(@"VCPMediaAnalysisClientHandler-requestUpdateKeyFacesOfPersons");
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100073798;
  v37[3] = &unk_100282B58;
  v37[4] = self;
  v38 = a3;
  v16 = objc_retainBlock(v37);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000737B4;
  v33[3] = &unk_100284C98;
  v33[4] = self;
  v36 = a3;
  v17 = v14;
  v34 = v17;
  v35 = buf;
  v18 = objc_retainBlock(v33);
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073A90;
  block[3] = &unk_1002847B8;
  v31 = a3;
  block[4] = self;
  v26 = v12;
  v32 = a5;
  v27 = v13;
  v28 = v17;
  v29 = v16;
  v30 = v18;
  v20 = v18;
  v21 = v16;
  v22 = v13;
  v23 = v12;
  v24 = v17;
  dispatch_sync(managementQueue, block);

  _Block_object_dispose(buf, 8);
}

- (void)requestFaceCandidatesforKeyFace:(int)a3 withPersonsWithLocalIdentifiers:(id)a4 andPhotoLibraryURL:(id)a5 andReply:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v13 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v13))
    {
      *buf = 67109378;
      *&buf[4] = a3;
      LOWORD(v37) = 2112;
      *(&v37 + 2) = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MAClientHandler] Received requestFaceCandidatesforKeyFace MADRequestID %d to analyze %@", buf, 0x12u);
    }
  }

  *buf = 0;
  *&v37 = buf;
  *(&v37 + 1) = 0x3032000000;
  v38 = sub_100069088;
  v39 = sub_100069098;
  v40 = VCPTransactionWithName(@"VCPMediaAnalysisClientHandler-requestFaceCandidatesforKeyFace");
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100074028;
  v34[3] = &unk_100282B58;
  v34[4] = self;
  v35 = a3;
  v14 = objc_retainBlock(v34);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100074044;
  v30[3] = &unk_100284C20;
  v30[4] = self;
  v33 = a3;
  v15 = v12;
  v31 = v15;
  v32 = buf;
  v16 = objc_retainBlock(v30);
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007433C;
  block[3] = &unk_1002833B8;
  v29 = a3;
  block[4] = self;
  v24 = v10;
  v25 = v11;
  v26 = v15;
  v27 = v14;
  v28 = v16;
  v18 = v16;
  v19 = v14;
  v20 = v11;
  v21 = v10;
  v22 = v15;
  dispatch_sync(managementQueue, block);

  _Block_object_dispose(buf, 8);
}

- (void)requestResetPersons:(int)a3 withPhotoLibraryURL:(id)a4 andReply:(id)a5
{
  v6 = *&a3;
  v8 = a4;
  v9 = a5;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v10 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      *buf = 67109120;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[MAClientHandler] Received requestResetPersons MADRequestID %d", buf, 8u);
    }
  }

  v11 = +[VCPPhotoLibraryManager sharedManager];
  v12 = [v11 photoLibraryWithURL:v8];

  if (v12)
  {
    v44 = v12;
    v13 = [NSArray arrayWithObjects:&v44 count:1];
    v14 = [(VCPMediaAnalysisClientHandler *)self scheduleDatabaseMigrationIfNeededForPhotoLibraries:v13];

    if (v14)
    {
      v15 = [NSString stringWithFormat:@"Failed to run requestResetPersons MADRequestID %d due to MediaAnalysis database migration incomplete for photo library %@", v6, v8];
      v16 = [objc_opt_class() errorForStatus:4294967278 withDescription:v15];
      v9[2](v9, 0, v16);
    }

    else
    {
      *buf = 0;
      v39 = buf;
      v40 = 0x3032000000;
      v41 = sub_100069088;
      v42 = sub_100069098;
      v43 = VCPTransactionWithName(@"VCPMediaAnalysisClientHandler-requestResetPersons");
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100074A50;
      v36[3] = &unk_100282B58;
      v36[4] = self;
      v37 = v6;
      v20 = objc_retainBlock(v36);
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100074A6C;
      v32[3] = &unk_100284C98;
      v32[4] = self;
      v35 = v6;
      v21 = v9;
      v33 = v21;
      v34 = buf;
      v22 = objc_retainBlock(v32);
      managementQueue = self->_managementQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100074D48;
      block[3] = &unk_100284CC0;
      block[4] = self;
      v31 = v6;
      v28 = v21;
      v27 = v8;
      v29 = v20;
      v30 = v22;
      v24 = v22;
      v25 = v20;
      dispatch_sync(managementQueue, block);

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v17 = [v8 path];
    v18 = [NSString stringWithFormat:@"Failed to find client specified Photos Library (%@) for MADRequestID %d", v17, v6];

    v19 = [objc_opt_class() errorForStatus:4294967246 withDescription:v18];
    v9[2](v9, 0, v19);
  }
}

- (void)requestResetFaceClassificationModel:(int)a3 withPhotoLibraryURL:(id)a4 andReply:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v10 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[MAClientHandler] Received requestResetFaceClassificationModel MADRequestID %d", buf, 8u);
    }
  }

  *buf = 0;
  v32 = buf;
  v33 = 0x3032000000;
  v34 = sub_100069088;
  v35 = sub_100069098;
  v36 = VCPTransactionWithName(@"VCPMediaAnalysisClientHandler-requestResetFaceClassificationModel");
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000752A8;
  v29[3] = &unk_100282B58;
  v29[4] = self;
  v30 = a3;
  v11 = objc_retainBlock(v29);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000752C4;
  v25[3] = &unk_100284C98;
  v25[4] = self;
  v28 = a3;
  v12 = v9;
  v26 = v12;
  v27 = buf;
  v13 = objc_retainBlock(v25);
  managementQueue = self->_managementQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000755A0;
  v19[3] = &unk_100284CC0;
  v24 = a3;
  v19[4] = self;
  v20 = v8;
  v21 = v12;
  v22 = v11;
  v23 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v8;
  v18 = v12;
  dispatch_sync(managementQueue, v19);

  _Block_object_dispose(buf, 8);
}

- (void)requestResetPetClassificationModel:(int)a3 withPhotoLibraryURL:(id)a4 andReply:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v10 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[MAClientHandler] Received requestResetPetClassificationModel MADRequestID %d", buf, 8u);
    }
  }

  *buf = 0;
  v32 = buf;
  v33 = 0x3032000000;
  v34 = sub_100069088;
  v35 = sub_100069098;
  v36 = VCPTransactionWithName(@"VCPMediaAnalysisClientHandler-requestResetPetClassificationModel");
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100075B00;
  v29[3] = &unk_100282B58;
  v29[4] = self;
  v30 = a3;
  v11 = objc_retainBlock(v29);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100075B1C;
  v25[3] = &unk_100284C98;
  v25[4] = self;
  v28 = a3;
  v12 = v9;
  v26 = v12;
  v27 = buf;
  v13 = objc_retainBlock(v25);
  managementQueue = self->_managementQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100075DF8;
  v19[3] = &unk_100284CC0;
  v24 = a3;
  v19[4] = self;
  v20 = v8;
  v21 = v12;
  v22 = v11;
  v23 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v8;
  v18 = v12;
  dispatch_sync(managementQueue, v19);

  _Block_object_dispose(buf, 8);
}

- (void)requestSuggestedMePersonIdentifier:(int)a3 withContext:(id)a4 andPhotoLibraryURL:(id)a5 andReply:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v13 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v13))
    {
      *buf = 67109378;
      *&buf[4] = a3;
      LOWORD(v37) = 2112;
      *(&v37 + 2) = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MAClientHandler] Received MADRequestID requestSuggestedMePersonIdentifier %d with context %@", buf, 0x12u);
    }
  }

  *buf = 0;
  *&v37 = buf;
  *(&v37 + 1) = 0x3032000000;
  v38 = sub_100069088;
  v39 = sub_100069098;
  v40 = VCPTransactionWithName(@"VCPMediaAnalysisClientHandler-requestSuggestedMePersonIdentifier");
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10007638C;
  v34[3] = &unk_100282B58;
  v34[4] = self;
  v35 = a3;
  v14 = objc_retainBlock(v34);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000763A8;
  v30[3] = &unk_100284CE8;
  v30[4] = self;
  v33 = a3;
  v15 = v12;
  v31 = v15;
  v32 = buf;
  v16 = objc_retainBlock(v30);
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000766A0;
  block[3] = &unk_1002833B8;
  v29 = a3;
  block[4] = self;
  v24 = v10;
  v25 = v11;
  v26 = v15;
  v27 = v14;
  v28 = v16;
  v18 = v16;
  v19 = v14;
  v20 = v11;
  v21 = v10;
  v22 = v15;
  dispatch_sync(managementQueue, block);

  _Block_object_dispose(buf, 8);
}

- (void)requestPersonPromoterStatus:(int)a3 withAdvancedFlag:(BOOL)a4 andPhotoLibraryURL:(id)a5 andReply:(id)a6
{
  v7 = a4;
  v10 = a5;
  v11 = a6;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v12 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v12))
    {
      *buf = 67109120;
      v18 = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[MAClientHandler] Received requestPersonPromoterStatus MADRequestID %d", buf, 8u);
    }
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100076ABC;
  v15[3] = &unk_100282B58;
  v15[4] = self;
  v16 = a3;
  v13 = objc_retainBlock(v15);
  v14 = [VCPRequestPersonPromoterStatusTask taskWithAdvancedFlag:v7 andPhotoLibraryURL:v10 andProgressHandler:v13 andReply:v11];
  [v14 run];
}

- (void)requestClusterCacheValidation:(int)a3 withPhotoLibraryURL:(id)a4 andReply:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v10 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[MAClientHandler] Received requestClusterCacheValidation MADRequestID %d", buf, 8u);
    }
  }

  *buf = 0;
  v32 = buf;
  v33 = 0x3032000000;
  v34 = sub_100069088;
  v35 = sub_100069098;
  v36 = VCPTransactionWithName(@"VCPMediaAnalysisClientHandler-requestClusterCacheValidation");
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100076DC4;
  v29[3] = &unk_100282B58;
  v29[4] = self;
  v30 = a3;
  v11 = objc_retainBlock(v29);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100076DE0;
  v25[3] = &unk_100283390;
  v25[4] = self;
  v28 = a3;
  v12 = v9;
  v26 = v12;
  v27 = buf;
  v13 = objc_retainBlock(v25);
  managementQueue = self->_managementQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000770D8;
  v19[3] = &unk_100284CC0;
  v24 = a3;
  v19[4] = self;
  v20 = v8;
  v21 = v12;
  v22 = v11;
  v23 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v8;
  v18 = v12;
  dispatch_sync(managementQueue, v19);

  _Block_object_dispose(buf, 8);
}

- (void)requestResetFaceClusteringState:(int)a3 withPhotoLibraryURL:(id)a4 andReply:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v10 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "Received requestResetFaceClusteringState MADRequestID %d", buf, 8u);
    }
  }

  *buf = 0;
  v32 = buf;
  v33 = 0x3032000000;
  v34 = sub_100069088;
  v35 = sub_100069098;
  v36 = VCPTransactionWithName(@"VCPMediaAnalysisClientHandler-requestResetFaceClusteringState");
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100077638;
  v29[3] = &unk_100282B58;
  v29[4] = self;
  v30 = a3;
  v11 = objc_retainBlock(v29);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100077654;
  v25[3] = &unk_100284C98;
  v25[4] = self;
  v28 = a3;
  v12 = v9;
  v26 = v12;
  v27 = buf;
  v13 = objc_retainBlock(v25);
  managementQueue = self->_managementQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100077930;
  v19[3] = &unk_100284CC0;
  v24 = a3;
  v19[4] = self;
  v20 = v8;
  v21 = v12;
  v22 = v11;
  v23 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v8;
  v18 = v12;
  dispatch_sync(managementQueue, v19);

  _Block_object_dispose(buf, 8);
}

- (void)requestReclusterFaces:(int)a3 withPhotoLibraryURL:(id)a4 andReply:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v10 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "Received requestReclusterFaces MADRequestID %d", buf, 8u);
    }
  }

  *buf = 0;
  v32 = buf;
  v33 = 0x3032000000;
  v34 = sub_100069088;
  v35 = sub_100069098;
  v36 = VCPTransactionWithName(@"VCPMediaAnalysisClientHandler-requestReclusterFaces");
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100077E90;
  v29[3] = &unk_100282B58;
  v29[4] = self;
  v30 = a3;
  v11 = objc_retainBlock(v29);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100077EAC;
  v25[3] = &unk_100284C98;
  v25[4] = self;
  v28 = a3;
  v12 = v9;
  v26 = v12;
  v27 = buf;
  v13 = objc_retainBlock(v25);
  managementQueue = self->_managementQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100078188;
  v19[3] = &unk_100284CC0;
  v24 = a3;
  v19[4] = self;
  v20 = v8;
  v21 = v12;
  v22 = v11;
  v23 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v8;
  v18 = v12;
  dispatch_sync(managementQueue, v19);

  _Block_object_dispose(buf, 8);
}

- (void)requestRebuildPersons:(int)a3 withLocalIdentifiers:(id)a4 andPhotoLibraryURL:(id)a5 andReply:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v13 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v13))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "Received requestRebuildPersons MADRequestID %d", buf, 8u);
    }
  }

  *buf = 0;
  v37 = buf;
  v38 = 0x3032000000;
  v39 = sub_100069088;
  v40 = sub_100069098;
  v41 = VCPTransactionWithName(@"VCPMediaAnalysisClientHandler-requestRebuildPersons");
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100078710;
  v34[3] = &unk_100282B58;
  v34[4] = self;
  v35 = a3;
  v14 = objc_retainBlock(v34);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10007872C;
  v30[3] = &unk_100284C98;
  v30[4] = self;
  v33 = a3;
  v15 = v12;
  v31 = v15;
  v32 = buf;
  v16 = objc_retainBlock(v30);
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100078A08;
  block[3] = &unk_1002833B8;
  v29 = a3;
  block[4] = self;
  v24 = v10;
  v25 = v11;
  v26 = v15;
  v27 = v14;
  v28 = v16;
  v18 = v16;
  v19 = v14;
  v20 = v11;
  v21 = v10;
  v22 = v15;
  dispatch_sync(managementQueue, block);

  _Block_object_dispose(buf, 8);
}

- (void)requestPersonPreferenceForPhotoLibraryURL:(id)a3 andReply:(id)a4
{
  v11 = a3;
  v5 = a4;
  v6 = +[VCPPhotoLibraryManager sharedManager];
  v7 = [v6 photoLibraryWithURL:v11];

  if (v7)
  {
    v8 = [v7 vcp_analysisPreferences];
    v5[2](v5, v8, 0);
  }

  else
  {
    v9 = [v11 path];
    v8 = [NSString stringWithFormat:@"Failed to find specified Photos Library (%@)", v9];

    v10 = [objc_opt_class() errorForStatus:4294967278 withDescription:v8];
    (v5)[2](v5, 0, v10);
  }
}

- (void)requestVIPModelStorageFilepathForPhotoLibraryURL:(id)a3 forModelType:(unint64_t)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[VCPPhotoLibraryManager sharedManager];
  v11 = [v10 photoLibraryWithURL:v8];

  if (v11)
  {
    v12 = [v11 vcp_vipModelFilepathForVIPType:a4];
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v10 = [NSString stringWithFormat:@"Unknown VIP model type %lu", a4, NSLocalizedDescriptionKey];
      v18 = v10;
      v5 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v13 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v5];
    }

    v9[2](v9, v12, v13);
    if (!v12)
    {
    }
  }

  else
  {
    v14 = [v8 path];
    v15 = [NSString stringWithFormat:@"Failed to find specified Photos Library (%@)", v14];

    v16 = [objc_opt_class() errorForStatus:4294967278 withDescription:v15];
    v9[2](v9, 0, v16);
  }
}

- (void)requestPhotosSceneFastPassProcessing:(int)a3 withPhotoLibraryURL:(id)a4 andReply:(id)a5
{
  v6 = *&a3;
  v8 = a4;
  v9 = a5;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v10 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      *buf = 67109120;
      v33 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "Received requestFastPassSceneProcessing MADRequestID %d", buf, 8u);
    }
  }

  v11 = +[VCPPhotoLibraryManager sharedManager];
  v12 = [v11 photoLibraryWithURL:v8];

  if (v12)
  {
    if ([v12 isSystemPhotoLibrary])
    {
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10007954C;
      v30[3] = &unk_100282B58;
      v30[4] = self;
      v31 = v6;
      v26 = objc_retainBlock(v30);
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100079568;
      v27[3] = &unk_100284D38;
      v27[4] = self;
      v29 = v6;
      v13 = v9;
      v28 = v13;
      v14 = objc_retainBlock(v27);
      v15 = [MADPhotosSceneFastPassProcessingTask taskWithCancelBlock:&stru_100284D58 progressHandler:v26 andCompletionHandler:v14];
      v16 = +[VCPMADTaskScheduler sharedInstance];
      v17 = [v16 addForegroundTask:v15 withQoS:qos_class_self()];

      if (v17)
      {
        v18 = [NSNumber numberWithUnsignedInteger:v17];
        taskIDMapping = self->_taskIDMapping;
        v20 = [NSNumber numberWithInt:v6];
        [(NSMutableDictionary *)taskIDMapping setObject:v18 forKeyedSubscript:v20];
      }

      else
      {
        v18 = [NSString stringWithFormat:@"Failed to create task for MADRequestID %d", v6];
        v20 = [objc_opt_class() errorForStatus:4294967278 withDescription:v18];
        (*(v13 + 2))(v13, v20);
      }
    }

    else
    {
      v24 = [NSString stringWithFormat:@"Non-SPL is not supported"];
      v25 = [objc_opt_class() errorForStatus:4294967246 withDescription:v24];
      (*(v9 + 2))(v9, v25);
    }
  }

  else
  {
    v21 = [v8 path];
    v22 = [NSString stringWithFormat:@"Failed to find specified Photos Library (%@)", v21];

    v23 = [objc_opt_class() errorForStatus:4294967278 withDescription:v22];
    (*(v9 + 2))(v9, v23);
  }
}

- (void)requestPhotosFaceFastPassProcessing:(int)a3 withPhotoLibraryURL:(id)a4 andReply:(id)a5
{
  v6 = *&a3;
  v8 = a4;
  v9 = a5;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v10 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      *buf = 67109120;
      v33 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "Received requestFastPassFaceProcessing MADRequestID %d", buf, 8u);
    }
  }

  v11 = +[VCPPhotoLibraryManager sharedManager];
  v12 = [v11 photoLibraryWithURL:v8];

  if (v12)
  {
    if ([v12 isSystemPhotoLibrary])
    {
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100079D28;
      v30[3] = &unk_100282B58;
      v30[4] = self;
      v31 = v6;
      v26 = objc_retainBlock(v30);
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100079D44;
      v27[3] = &unk_100284D38;
      v27[4] = self;
      v29 = v6;
      v13 = v9;
      v28 = v13;
      v14 = objc_retainBlock(v27);
      v15 = [MADPhotosFaceFastPassProcessingTask taskWithCancelBlock:&stru_100284D78 progressHandler:v26 andCompletionHandler:v14];
      v16 = +[VCPMADTaskScheduler sharedInstance];
      v17 = [v16 addForegroundTask:v15 withQoS:qos_class_self()];

      if (v17)
      {
        v18 = [NSNumber numberWithUnsignedInteger:v17];
        taskIDMapping = self->_taskIDMapping;
        v20 = [NSNumber numberWithInt:v6];
        [(NSMutableDictionary *)taskIDMapping setObject:v18 forKeyedSubscript:v20];
      }

      else
      {
        v18 = [NSString stringWithFormat:@"Failed to create task for MADRequestID %d", v6];
        v20 = [objc_opt_class() errorForStatus:4294967278 withDescription:v18];
        (*(v13 + 2))(v13, v20);
      }
    }

    else
    {
      v24 = [NSString stringWithFormat:@"Non-SPL is not supported"];
      v25 = [objc_opt_class() errorForStatus:4294967246 withDescription:v24];
      (*(v9 + 2))(v9, v25);
    }
  }

  else
  {
    v21 = [v8 path];
    v22 = [NSString stringWithFormat:@"Failed to find specified Photos Library (%@)", v21];

    v23 = [objc_opt_class() errorForStatus:4294967278 withDescription:v22];
    (*(v9 + 2))(v9, v23);
  }
}

- (void)requestDatabaseRestoreFastPassProcessing:(int)a3 reply:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      *buf = 67109120;
      v27 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "Received requestDatabaseRestoreFastPassProcessing MADRequestID %d", buf, 8u);
    }
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10007A380;
  v24[3] = &unk_100282B58;
  v24[4] = self;
  v25 = v4;
  v8 = objc_retainBlock(v24);
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10007A39C;
  v20 = &unk_100284D38;
  v21 = self;
  v23 = v4;
  v9 = v6;
  v22 = v9;
  v10 = objc_retainBlock(&v17);
  v11 = [MADDatabaseRestoreFastPassProcessingTask taskWithCancelBlock:&stru_100284D98 progressHandler:v8 andCompletionHandler:v10];
  v12 = +[VCPMADTaskScheduler sharedInstance];
  v13 = [v12 addForegroundTask:v11 withQoS:qos_class_self()];

  if (v13)
  {
    v14 = [NSNumber numberWithUnsignedInteger:v13];
    taskIDMapping = self->_taskIDMapping;
    v16 = [NSNumber numberWithInt:v4];
    [(NSMutableDictionary *)taskIDMapping setObject:v14 forKeyedSubscript:v16];
  }

  else
  {
    v14 = [NSString stringWithFormat:@"Failed to create task for MADRequestID %d", v4, v17, v18, v19, v20, v21];
    v16 = [objc_opt_class() errorForStatus:4294967278 withDescription:v14];
    (*(v9 + 2))(v9, v16);
  }
}

- (void)queryAutoCounterOptInStatus:(int)a3 withPhotoLibraryURL:(id)a4 personLocalIdentifiers:(id)a5 andReply:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v12 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v12))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[MAClientHandler] Received queryAutoCounterOptInStatus MADRequestID %d", buf, 8u);
    }
  }

  v13 = +[VCPPhotoLibraryManager sharedManager];
  v14 = [v13 photoLibraryWithURL:v9];

  v15 = [VCPPhotosAutoCounterWorker workerWithPhotoLibrary:v14];
  v16 = +[NSMutableDictionary dictionary];
  *buf = 0;
  v33 = buf;
  v34 = 0x3032000000;
  v35 = sub_100069088;
  v36 = sub_100069098;
  v37 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10007AA64;
  v24[3] = &unk_100284DC0;
  v17 = v15;
  v25 = v17;
  v27 = buf;
  v18 = v16;
  v26 = v18;
  [v10 enumerateObjectsUsingBlock:v24];
  if (*(v33 + 5))
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v19 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        v20 = *(v33 + 5);
        *v28 = 67109378;
        v29 = a3;
        v30 = 2112;
        v31 = v20;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[MAClientHandler] Failed to queryAutoCounterOptInStatus MADRequestID %d %@", v28, 0x12u);
      }
    }

    v21 = 0;
    v22 = *(v33 + 5);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v23 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        *v28 = 67109120;
        v29 = a3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[MAClientHandler] Completed queryAutoCounterOptInStatus MADRequestID %d", v28, 8u);
      }
    }

    v22 = 0;
    v21 = v18;
  }

  v11[2](v11, v21, v22);

  _Block_object_dispose(buf, 8);
}

- (void)requestOptInAutoCounter:(int)a3 withPhotoLibraryURL:(id)a4 persons:(id)a5 andReply:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v12 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v12))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[MAClientHandler] Received requestOptInAutoCounter MADRequestID %d", buf, 8u);
    }
  }

  v13 = +[VCPPhotoLibraryManager sharedManager];
  v14 = [v13 photoLibraryWithURL:v9];

  v15 = [VCPPhotosAutoCounterWorker workerWithPhotoLibrary:v14];
  v16 = +[NSMutableDictionary dictionary];
  *buf = 0;
  v33 = buf;
  v34 = 0x3032000000;
  v35 = sub_100069088;
  v36 = sub_100069098;
  v37 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10007AF74;
  v24[3] = &unk_100284E28;
  v17 = v15;
  v25 = v17;
  v27 = buf;
  v18 = v16;
  v26 = v18;
  [v10 enumerateObjectsUsingBlock:v24];
  if (*(v33 + 5))
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v19 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        v20 = *(v33 + 5);
        *v28 = 67109378;
        v29 = a3;
        v30 = 2112;
        v31 = v20;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[MAClientHandler] Failed to requestOptInAutoCounter MADRequestID %d %@", v28, 0x12u);
      }
    }

    v21 = 0;
    v22 = *(v33 + 5);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v23 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        *v28 = 67109120;
        v29 = a3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[MAClientHandler] Completed requestOptInAutoCounter MADRequestID %d", v28, 8u);
      }
    }

    v22 = 0;
    v21 = v18;
  }

  v11[2](v11, v21, v22);

  _Block_object_dispose(buf, 8);
}

- (void)requestDumpAutoCounter:(int)a3 withPhotoLibraryURL:(id)a4 andReply:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v9 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      *buf = 67109120;
      v25 = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[MAClientHandler] Received requestDumpAutoCounter MADRequestID %d", buf, 8u);
    }
  }

  v10 = +[VCPPhotoLibraryManager sharedManager];
  v11 = [v10 photoLibraryWithURL:v7];

  v12 = [VCPPhotosAutoCounterWorker workerWithPhotoLibrary:v11];
  v20 = 0;
  v21 = 0;
  v13 = [v12 exportVUGalleryClusterStates:&v21 error:&v20 extendTimeoutBlock:&stru_100284E48 cancelBlock:&stru_100284E68];
  v14 = v21;
  v15 = v20;
  if (v13)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v16 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        *buf = 67109378;
        v25 = a3;
        v26 = 2112;
        v27 = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[MAClientHandler] Failed to requestDumpAutoCounter MADRequestID %d %@", buf, 0x12u);
      }
    }

    v8[2](v8, 0, v15);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v17 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v17))
      {
        *buf = 67109120;
        v25 = a3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[MAClientHandler] Completed requestDumpAutoCounter MADRequestID %d", buf, 8u);
      }
    }

    v22 = VCPMAFileURL;
    v18 = [v14 absoluteString];
    v23 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    (v8)[2](v8, v19, 0);
  }
}

- (void)requestAutoCounterAccuracyCalculation:(int)a3 withPhotoLibraryURL:(id)a4 andReply:(id)a5
{
  v6 = *&a3;
  v23 = a4;
  v7 = a5;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v8 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      *buf = 67109120;
      v31 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[MAClientHandler] Received requestAutoCounterAccuracyCalculation MADRequestID %d", buf, 8u);
    }
  }

  v9 = +[VCPPhotoLibraryManager sharedManager];
  v24 = [v9 photoLibraryWithURL:v23];

  v10 = [VCPPhotosAutoCounterWorker workerWithPhotoLibrary:v24];
  v26 = 0;
  v27 = 0;
  v11 = [v10 exportVUGalleryClusterStates:&v27 error:&v26 extendTimeoutBlock:&stru_100284E88 cancelBlock:&stru_100284EA8];
  v12 = v27;
  v13 = v26;
  if (v11)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v14 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        *buf = 67109376;
        v31 = v6;
        v32 = 1024;
        v33 = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[MAClientHandler] Failed to requestAutoCounterAccuracyCalculation MADRequestID %d %d", buf, 0xEu);
      }
    }

    v15 = 0;
    v16 = 0;
    v7[2](v7, 0, v13);
  }

  else
  {
    v25[1] = 0;
    v17 = VCPFetchPersonPromoterClusterForEvaluation();
    v15 = 0;
    if (v17)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v18 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v18))
        {
          *buf = 67109376;
          v31 = v6;
          v32 = 1024;
          v33 = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[MAClientHandler] Failed to VCPFetchPersonPromoterClusterForEvaluation with MADRequestID %d %d", buf, 0xEu);
        }
      }

      v16 = 0;
    }

    else
    {
      v25[0] = 0;
      v17 = [v10 calculateAndReportClusterAccuracyWithVisionClusterURL:v12 andPersonClusters:v15 results:v25 extendTimeoutBlock:&stru_100284E88 cancelBlock:&stru_100284EA8];
      v16 = v25[0];
      if (!v17)
      {
        (v7)[2](v7, v16, 0);
        goto LABEL_15;
      }

      if (MediaAnalysisLogLevel() >= 3)
      {
        v22 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v22))
        {
          *buf = 67109376;
          v31 = v6;
          v32 = 1024;
          v33 = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[MAClientHandler] Failed to calculate Vision and Person cluster accuracy with MADRequestID %d %d", buf, 0xEu);
        }
      }
    }

    v28 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithFormat:@"[MAClientHandler] Failed to calculate cluster accuracy with MADRequestID %d", v6];
    v29 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v21 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v17 userInfo:v20];
    v7[2](v7, 0, v21);
  }

LABEL_15:
}

- (void)requestAutoCounterAccuracyCalculation:(int)a3 withPhotoLibraryURL:(id)a4 clusterStateURL:(id)a5 groundTruthURL:(id)a6 andReply:(id)a7
{
  v10 = *&a3;
  v26 = a4;
  v25 = a5;
  v11 = a6;
  v12 = a7;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v13 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v13))
    {
      *buf = 67109120;
      v31 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MAClientHandler] Received requestAutoCounterAccuracyCalculationWithgroundTruthURL MADRequestID %d", buf, 8u);
    }
  }

  v14 = +[VCPPhotoLibraryManager sharedManager];
  v15 = [v14 photoLibraryWithURL:v26];

  v16 = [VCPPhotosAutoCounterWorker workerWithPhotoLibrary:v15];
  v27[1] = 0;
  v17 = VCPFetchPersonPromoterClusterForEvaluation();
  v18 = 0;
  if (v17)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v19 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        *buf = 67109120;
        v31 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[MAClientHandler] Failed in fetching unverified persons with MADRequestID %d", buf, 8u);
      }
    }

    v20 = 0;
  }

  else
  {
    v27[0] = 0;
    v17 = [v16 calculateAndReportClusterAccuracyWithVisionClusterURL:v25 andPersonClusters:v18 withGroundtruth:v11 results:v27 extendTimeoutBlock:&stru_100284EC8 cancelBlock:&stru_100284EE8];
    v20 = v27[0];
    if (!v17)
    {
      v12[2](v12, v20, 0);
      goto LABEL_10;
    }

    if (MediaAnalysisLogLevel() >= 3)
    {
      v24 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v24))
      {
        *buf = 67109120;
        v31 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "[MAClientHandler] Failed in calculating Vision and Person cluster accuracy with MADRequestID %d", buf, 8u);
      }
    }
  }

  v28 = NSLocalizedDescriptionKey;
  v21 = [NSString stringWithFormat:@"[MAClientHandler] Failed to calculate cluster accuracy against GroundTruth %@ with MADRequestID %d", v11, v10];
  v29 = v21;
  v22 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v23 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v17 userInfo:v22];
  (v12)[2](v12, 0, v23);

LABEL_10:
}

- (void)requestAutoCounterSIMLValidation:(int)a3 withPhotoLibraryURL:(id)a4 simlGroundTruthURL:(id)a5 andReply:(id)a6
{
  v8 = *&a3;
  v21 = a4;
  v9 = a5;
  v10 = a6;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v11 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v11))
    {
      *buf = 67109120;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[MAClientHandler] Received requestAutoCounterSIMLValidation MADRequestID %d", buf, 8u);
    }
  }

  v12 = +[VCPPhotoLibraryManager sharedManager];
  v13 = [v12 photoLibraryWithURL:v21];

  v14 = [VCPPhotosAutoCounterWorker workerWithPhotoLibrary:v13];
  v22 = 0;
  v15 = [v14 validateClusterAccuracyWithSIMLGroundtruth:v9 results:&v22 extendTimeoutBlock:&stru_100284F08 cancelBlock:&stru_100284F28];
  v16 = v22;
  if (v15)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v17 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v17))
      {
        *buf = 67109120;
        v26 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[MAClientHandler] Failed to validate against SIML ground truth with MADRequestID %d", buf, 8u);
      }
    }

    v23 = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithFormat:@"[MAClientHandler] Failed to validate against SIML ground truth %@ with MADRequestID %d", v9, v8];
    v24 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v20 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v15 userInfo:v19];
    v10[2](v10, 0, v20);
  }

  else
  {
    (v10)[2](v10, v16, 0);
  }
}

- (void)requestIdentificationOfFacesWithLocalIdentifiers:(id)a3 fromPhotoLibraryWithURL:(id)a4 withRequestID:(int)a5 andReply:(id)a6
{
  v10 = a3;
  v23 = a4;
  v11 = a6;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v12 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v12))
    {
      *buf = 67109120;
      *&buf[4] = a5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[MAClientHandler] Received on-demand face identification request (%d)", buf, 8u);
    }
  }

  v13 = objc_autoreleasePoolPush();
  *buf = 0;
  v33 = buf;
  v34 = 0x3032000000;
  v35 = sub_100069088;
  v36 = sub_100069098;
  v37 = VCPTransactionWithName(@"com.apple.mediaanalysisd.service");
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10007C610;
  v31[3] = &unk_100283450;
  v31[4] = buf;
  v14 = objc_retainBlock(v31);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10007C624;
  v27[3] = &unk_100284F50;
  v30 = a5;
  v15 = v11;
  v28 = v15;
  v16 = v14;
  v29 = v16;
  v17 = v10;
  v18 = [VCPPhotosFaceIdentificationTask taskWithFaceLocalIdentifiers:v10 fromPhotoLibraryWithURL:v23 withCompletionHandler:v27];
  queuingTaskScheduler = self->_queuingTaskScheduler;
  v20 = a5;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10007C748;
  v24[3] = &unk_100284F78;
  v21 = v15;
  v25 = v21;
  v22 = v16;
  v26 = v22;
  [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v18 withRequestID:v20 schedulingErrorHandler:v24];

  _Block_object_dispose(buf, 8);
  objc_autoreleasePoolPop(v13);
}

- (void)requestProcessingTypes:(unint64_t)a3 forAssetsWithLocalIdentifiers:(id)a4 fromPhotoLibraryWithURL:(id)a5 withRequestID:(int)a6 andReply:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v15 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v15))
    {
      *buf = 67109120;
      v34 = a6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[MAClientHandler] Received on-demand Photos asset processing request (%d)", buf, 8u);
    }
  }

  v16 = +[VCPPhotoLibraryManager sharedManager];
  v17 = [v16 photoLibraryWithURL:v13];

  if (v17)
  {
    context = objc_autoreleasePoolPush();
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10007CB5C;
    v31[3] = &unk_100282B58;
    v31[4] = self;
    v32 = a6;
    v18 = objc_retainBlock(v31);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10007CB78;
    v28[3] = &unk_100284FA0;
    v30 = a6;
    v19 = v14;
    v29 = v19;
    v20 = v12;
    v21 = [VCPPhotosAssetProcessingTask taskWithProcessingTypes:a3 forAssetsWithLocalIdentifiers:v12 fromPhotoLibraryWithURL:v13 withProgressHandler:v18 andCompletionHandler:v28];
    queuingTaskScheduler = self->_queuingTaskScheduler;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10007CC74;
    v26[3] = &unk_100282AC0;
    v27 = v19;
    [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v21 withRequestID:a6 schedulingErrorHandler:v26];

    v12 = v20;
    objc_autoreleasePoolPop(context);
  }

  else
  {
    v23 = [NSString stringWithFormat:@"[MAClientHandler] Invalid photo library URL (%@)", v13];
    v24 = [objc_opt_class() errorForStatus:4294967278 withDescription:v23];
    (*(v14 + 2))(v14, v24);
  }
}

- (void)requestDeferredProcessingTypes:(id)a3 forAssetsWithLocalIdentifiers:(id)a4 withPhotoLibraryURL:(id)a5 andReply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v14 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v14))
    {
      *buf = 67109120;
      *&buf[4] = [v11 count];
      _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[MAClientHandler] Received Moments request to schedule deferred processing for %u assets", buf, 8u);
    }
  }

  v15 = +[VCPPhotoLibraryManager sharedManager];
  v16 = [v15 photoLibraryWithURL:v12];

  if (!v16)
  {
    v21 = [NSString stringWithFormat:@"[MAClientHandler] Invalid photo library URL (%@)", v12];
    v22 = [objc_opt_class() errorForStatus:4294967278 withDescription:v21];
    v13[2](v13, v22);

    goto LABEL_31;
  }

  v63 = v16;
  v17 = [NSArray arrayWithObjects:&v63 count:1];
  v18 = [(VCPMediaAnalysisClientHandler *)self scheduleDatabaseMigrationIfNeededForPhotoLibraries:v17];

  if (!v18)
  {
    *buf = 0;
    v58 = buf;
    v59 = 0x3032000000;
    v60 = sub_100069088;
    v61 = sub_100069098;
    v62 = 0;
    v23 = +[NSDate now];
    if (+[MADManagedMomentsScheduledAsset isMACDPersistEnabled])
    {
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_10007D4B4;
      v47[3] = &unk_100284FF0;
      v48 = v10;
      v49 = v11;
      v50 = v23;
      v24 = v58;
      obj = *(v58 + 5);
      v25 = [v16 mad_performAnalysisDataStoreChanges:v47 error:&obj];
      objc_storeStrong(v24 + 5, obj);
      if (v25)
      {

LABEL_25:
        v34 = +[MADMomentsDeferredBackgroundSystemTask sharedTask];
        v35 = v58;
        v40 = *(v58 + 5);
        [v34 submitTask:&v40];
        objc_storeStrong(v35 + 5, v40);

        if (*(v58 + 5))
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v36 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v36))
            {
              v37 = +[MADMomentsDeferredBackgroundSystemTask identifier];
              v38 = *(v58 + 5);
              *v51 = 138412546;
              v52 = v37;
              v53 = 2112;
              v54 = v38;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "[MAClientHandler][%@] Failed to submit the BGST task with error: %@", v51, 0x16u);
            }
          }
        }

        v13[2](v13, *(v58 + 5));
        goto LABEL_30;
      }

      if (MediaAnalysisLogLevel() >= 3)
      {
        v28 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v28))
        {
          *v51 = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "[MAClientHandler] Failed to schedule all assets using CoreData for Moments deferred processing", v51, 2u);
        }
      }

      v13[2](v13, *(v58 + 5));

      v27 = v48;
    }

    else
    {
      v26 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v16];
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_10007D6C4;
      v41[3] = &unk_100285018;
      v42 = v11;
      v27 = v26;
      v43 = v27;
      v44 = v23;
      v45 = buf;
      [v10 enumerateIndexesUsingBlock:v41];
      if (!*(v58 + 5))
      {
        v29 = [v27 commit];
        if (v29)
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v30 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v30))
            {
              *v51 = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v30, "[MAClientHandler] Failed to schedule all assets for Moments deferred processing", v51, 2u);
            }
          }

          v55 = NSLocalizedDescriptionKey;
          v39 = [NSString stringWithFormat:@"[MAClientHandler] Failed to schedule all assets for Moments deferred processing"];
          v56 = v39;
          v31 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
          v32 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v29 userInfo:v31];
          v33 = *(v58 + 5);
          *(v58 + 5) = v32;

          v13[2](v13, *(v58 + 5));
        }

        else
        {
          [VCPDatabaseManager releaseSharedDatabaseForPhotoLibrary:v16];
        }

        if (v29)
        {
          goto LABEL_30;
        }

        goto LABEL_25;
      }

      (v13[2])(v13);
    }

LABEL_30:
    _Block_object_dispose(buf, 8);

    goto LABEL_31;
  }

  v19 = [NSString stringWithFormat:@"Failed to schedule Moments deferred processing due to MediaAnalysis database migration incomplete for photo library %@", v12];
  v20 = [objc_opt_class() errorForStatus:4294967278 withDescription:v19];
  v13[2](v13, v20);

LABEL_31:
}

- (void)requestForceDeferredProcessing:(int)a3 andReply:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MAClientHandler] Received Moments request to force deferred processing", buf, 2u);
    }
  }

  v8 = +[VCPPhotoLibraryManager sharedManager];
  v9 = [v8 allPhotoLibraries];

  if ([v9 count])
  {
    if (![(VCPMediaAnalysisClientHandler *)self scheduleDatabaseMigrationIfNeededForPhotoLibraries:v9])
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10007DCF8;
      v22[3] = &unk_100282B58;
      v22[4] = self;
      v23 = v4;
      v12 = objc_retainBlock(v22);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10007DD14;
      v19[3] = &unk_1002845B0;
      v21 = v4;
      v13 = v6;
      v19[4] = self;
      v20 = v13;
      v14 = objc_retainBlock(v19);
      v15 = [MADMomentsDeferredProcessingTask taskWithCancelBlock:&stru_100285038 progressHandler:v12 andCompletionHandler:v14];
      queuingTaskScheduler = self->_queuingTaskScheduler;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10007DEE4;
      v17[3] = &unk_100282AC0;
      v18 = v13;
      [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v15 withRequestID:v4 schedulingErrorHandler:v17];

      goto LABEL_10;
    }

    v10 = [NSString stringWithFormat:@"Failed to run Moments processing task for MADRequestID %d due to database migration incomplete", v4];
    v11 = [objc_opt_class() errorForStatus:4294967278 withDescription:v10];
    (*(v6 + 2))(v6, v11);
  }

  else
  {
    v10 = [NSString stringWithFormat:@"Failed to run Moments processing task for MADRequestID %d due to no photo library present", v4];
    v11 = [objc_opt_class() errorForStatus:4294967278 withDescription:v10];
    (*(v6 + 2))(v6, v11);
  }

LABEL_10:
}

- (void)queryAssetsPendingDeferredProcessingWithPhotoLibraryURL:(id)a3 andReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v8 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      *buf = 138412290;
      v34 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[MAClientHandler] Received Moments request to query scheduled assets in photo library %@", buf, 0xCu);
    }
  }

  v9 = +[VCPPhotoLibraryManager sharedManager];
  v10 = [v9 photoLibraryWithURL:v6];

  if (!v10)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v15 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        *buf = 138412290;
        v34 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[MAClientHandler] Invalid photo library URL (%@)", buf, 0xCu);
      }
    }

    v31 = NSLocalizedDescriptionKey;
    v13 = [NSString stringWithFormat:@"[MAClientHandler] Invalid photo library URL (%@)", v6];
    v32 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v16 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v14];
    v7[2](v7, 0, v16);
    goto LABEL_23;
  }

  v30 = v10;
  v11 = [NSArray arrayWithObjects:&v30 count:1];
  v12 = [(VCPMediaAnalysisClientHandler *)self scheduleDatabaseMigrationIfNeededForPhotoLibraries:v11];

  if (!v12)
  {
    if (+[MADManagedMomentsScheduledAsset isMACDReadEnabled])
    {
      v17 = [v10 mad_fetchRequest];
      v25 = 0;
      v18 = [v17 fetchAllMomentsScheduledAssets:&v25];
      v13 = v25;

      if (v18)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v19 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v19))
          {
            *buf = 138412290;
            v34 = v6;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[MAClientHandler] Failed to fetch scheduled assets in Photo Library %@", buf, 0xCu);
          }
        }

        v28 = NSLocalizedDescriptionKey;
        v14 = [NSString stringWithFormat:@"[MAClientHandler] Failed to fetch scheduled assets in Photo Library %@", v6];
        v29 = v14;
        v16 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v20 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v18 userInfo:v16];
        v7[2](v7, 0, v20);
LABEL_22:

LABEL_23:
        goto LABEL_24;
      }
    }

    else
    {
      v14 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v10];
      v24 = 0;
      v21 = [v14 fetchAllMomentsScheduledAssets:&v24];
      v13 = v24;
      if (v21)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v22 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v22))
          {
            *buf = 138412290;
            v34 = v6;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[MAClientHandler] Failed to fetch scheduled assets in Photo Library %@", buf, 0xCu);
          }
        }

        v26 = NSLocalizedDescriptionKey;
        v16 = [NSString stringWithFormat:@"[MAClientHandler] Failed to fetch scheduled assets in Photo Library %@", v6];
        v27 = v16;
        v20 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v23 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v21 userInfo:v20];
        v7[2](v7, 0, v23);

        goto LABEL_22;
      }

      [VCPDatabaseManager releaseSharedDatabaseForPhotoLibrary:v10];
    }

    (v7)[2](v7, v13, 0);
    goto LABEL_25;
  }

  v13 = [NSString stringWithFormat:@"Failed to query Moments scheduled assets  due to MediaAnalysis database migration incomplete for photo library %@", v6];
  v14 = [objc_opt_class() errorForStatus:4294967278 withDescription:v13];
  v7[2](v7, 0, v14);
LABEL_24:

LABEL_25:
}

- (void)downloadVideoEncoderIfNeededWithReply:(id)a3
{
  v3 = a3;
  v4 = +[VCPMobileAssetManager sharedManager];
  v5 = [v4 retrieveAssetLocalURL:0];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v7 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "Video encoder mobile asset download failed", v10, 2u);
      }
    }

    v11 = NSLocalizedDescriptionKey;
    v8 = [NSString stringWithFormat:@"[MAClientHandler] Video encoder mobile asset download failed"];
    v12 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v6 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v9];
  }

  v3[2](v3, v6);
}

- (void)requestStaticStickerScoring:(int)a3 photoLibraryURL:(id)a4 options:(id)a5 reply:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v13 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v13))
    {
      *buf = 67109120;
      LODWORD(v32) = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MAClientHandler] Received on-demand Photos static sticker scoring request (%d)", buf, 8u);
    }
  }

  v14 = objc_autoreleasePoolPush();
  v15 = +[VCPPhotoLibraryManager sharedManager];
  v16 = [v15 photoLibraryWithURL:v10];

  if (v16)
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10007EB34;
    v26[3] = &unk_100285060;
    v28 = a3;
    v17 = v12;
    v27 = v17;
    v18 = [MADPhotosOnDemandStaticStickerScoreTask taskWithPhotoLibrary:v16 options:v11 completionHandler:v26];
    queuingTaskScheduler = self->_queuingTaskScheduler;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10007EC30;
    v24[3] = &unk_100282AC0;
    v25 = v17;
    [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v18 withRequestID:a3 schedulingErrorHandler:v24];

    v20 = v27;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v21 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v21))
      {
        *buf = 138412290;
        v32 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[MAClientHandler] Invalid photo library URL (%@)", buf, 0xCu);
      }
    }

    v29 = NSLocalizedDescriptionKey;
    v20 = [NSString stringWithFormat:@"[MAClientHandler] Invalid photo library URL (%@)", v10];
    v30 = v20;
    v22 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v23 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v22];
    (*(v12 + 2))(v12, v23);
  }

  objc_autoreleasePoolPop(v14);
}

- (void)requestPhotosDeferredProcessing:(int)a3 reply:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MAClientHandler] Received request to perform photos deferred processing", buf, 2u);
    }
  }

  v8 = +[VCPPhotoLibraryManager sharedManager];
  v9 = [v8 allPhotoLibraries];

  if (![v9 count])
  {
    v10 = [NSString stringWithFormat:@"Failed to schedule Photos deferred BGST for MADRequestID %d due to no photo library present", v4];
    v11 = [objc_opt_class() errorForStatus:4294967278 withDescription:v10];
    v6[2](v6, v11);
    goto LABEL_8;
  }

  if ([(VCPMediaAnalysisClientHandler *)self scheduleDatabaseMigrationIfNeededForPhotoLibraries:v9])
  {
    v10 = [NSString stringWithFormat:@"Failed to schedule Photos deferred BGST for MADRequestID %d due to database migration incomplete", v4];
    v11 = [objc_opt_class() errorForStatus:4294967278 withDescription:v10];
    v6[2](v6, v11);
LABEL_8:

    goto LABEL_15;
  }

  v12 = +[MADPhotosDeferredBackgroundSystemTask sharedTask];
  v15 = 0;
  [v12 submitTask:&v15];
  v10 = v15;

  if (v10)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v13 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        v14 = +[MADPhotosDeferredBackgroundSystemTask identifier];
        *buf = 138412546;
        v17 = v14;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MAClientHandler][%@] Failed to submit the BGST task with error: %@", buf, 0x16u);
      }
    }

    v6[2](v6, v10);
  }

  else
  {
    v6[2](v6, 0);
  }

LABEL_15:
}

- (void)requestProgressReport:(int)a3 reply:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MAClientHandler] Received request to report progress.", buf, 2u);
    }
  }

  v8 = +[VCPPhotoLibraryManager sharedManager];
  v9 = [v8 allPhotoLibraries];

  if (![v9 count])
  {
    v10 = [NSString stringWithFormat:@"Failed to report progress for MADRequestID %d due to no photo library present", v4];
    v11 = [objc_opt_class() errorForStatus:4294967278 withDescription:v10];
    v6[2](v6, v11);
    goto LABEL_8;
  }

  if ([(VCPMediaAnalysisClientHandler *)self scheduleDatabaseMigrationIfNeededForPhotoLibraries:v9])
  {
    v10 = [NSString stringWithFormat:@"Failed to report progress for MADRequestID %d due to database migration incomplete", v4];
    v11 = [objc_opt_class() errorForStatus:4294967278 withDescription:v10];
    v6[2](v6, v11);
LABEL_8:

    goto LABEL_15;
  }

  [MADProgressManager clearLastProgressReportTimestampForTasks:&off_100296110];
  [MADProgressManager requestProgressUpdateForTasks:&off_100296110];
  v12 = +[MADProgressReporterBackgroundSystemTask sharedTask];
  v15 = 0;
  [v12 submitTask:&v15];
  v10 = v15;

  if (v10)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v13 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        v14 = +[MADProgressReporterBackgroundSystemTask identifier];
        *buf = 138412546;
        v17 = v14;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MAClientHandler][%@] Failed to submit the BGST task with error: %@", buf, 0x16u);
      }
    }

    v6[2](v6, v10);
  }

  else
  {
    v6[2](v6, 0);
  }

LABEL_15:
}

- (CF<__SecTask)secTask
{
  value = self->_secTask.value_;
  *v2 = value;
  if (value)
  {
    return CFRetain(value);
  }

  return value;
}

@end