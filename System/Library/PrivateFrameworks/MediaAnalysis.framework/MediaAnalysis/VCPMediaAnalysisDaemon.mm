@interface VCPMediaAnalysisDaemon
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (VCPMediaAnalysisDaemon)init;
- (int)run:(int)run argv:(const char *)argv;
- (void)registerClient:(id)client forPhotoLibraryURL:(id)l withReply:(id)reply;
- (void)registerPhotosTasks;
- (void)storeAnalysis:(id)analysis forAsset:(id)asset fromPhotoLibraryURL:(id)l withReply:(id)reply;
@end

@implementation VCPMediaAnalysisDaemon

- (VCPMediaAnalysisDaemon)init
{
  v12.receiver = self;
  v12.super_class = VCPMediaAnalysisDaemon;
  v2 = [(VCPMediaAnalysisDaemon *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MADDatabaseRestoreFastPassBackgroundSystemTask);
    databaseRestoreFastPassProcessing = v2->_databaseRestoreFastPassProcessing;
    v2->_databaseRestoreFastPassProcessing = v3;

    v5 = objc_alloc_init(MADPhotosSceneFastPassBackgroundSystemTask);
    photosSceneFastPassProcessing = v2->_photosSceneFastPassProcessing;
    v2->_photosSceneFastPassProcessing = v5;

    v7 = objc_alloc_init(MADPhotosFaceFastPassBackgroundSystemTask);
    photosFaceFastPassProcessing = v2->_photosFaceFastPassProcessing;
    v2->_photosFaceFastPassProcessing = v7;

    v9 = +[NSMutableArray array];
    analysisClients = v2->_analysisClients;
    v2->_analysisClients = v9;
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  if (self->_publicServiceListener == listenerCopy || self->_videoSessionListener == listenerCopy)
  {
    goto LABEL_21;
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v8 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      LOWORD(buf.val[0]) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "Checking client entitlements...", &buf, 2u);
    }
  }

  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(&buf, 0, sizeof(buf));
  }

  v9 = SecTaskCreateWithAuditToken(0, &buf);
  v27 = v9;
  if (!v9)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v15 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        LOWORD(buf.val[0]) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "Failed to query client entitlements; denying connection", &buf, 2u);
      }
    }

    goto LABEL_41;
  }

  error = 0;
  v10 = SecTaskCopyValueForEntitlement(v9, @"com.apple.mediaanalysisd.client", &error);
  cf1 = v10;
  if (!error)
  {
    if (!v10 || (v16 = CFGetTypeID(v10), v16 != CFBooleanGetTypeID()) || !CFEqual(cf1, kCFBooleanTrue))
    {
      if (MediaAnalysisLogLevel() < 4)
      {
        goto LABEL_40;
      }

      v20 = VCPLogToOSLogType[4];
      if (!os_log_type_enabled(&_os_log_default, v20))
      {
        goto LABEL_40;
      }

      LOWORD(buf.val[0]) = 0;
      v12 = "Client not entitled; denying connection";
      v13 = v20;
      v14 = 2;
      goto LABEL_39;
    }

    sub_100002CBC(&cf1);
    sub_100002CBC(&error);
    sub_100002CBC(&v27);
LABEL_21:
    if (self->_storageListener == listenerCopy)
    {
      v19 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___VCPStorageServiceProtocol];
      [connectionCopy setExportedInterface:v19];

      [connectionCopy setExportedObject:self];
    }

    else
    {
      if (self->_realTimeListener != listenerCopy && self->_analysisListener != listenerCopy && self->_publicServiceListener != listenerCopy && self->_homeKitListener != listenerCopy && self->_homeKitSessionListener != listenerCopy && self->_macsListener != listenerCopy && self->_videoSessionListener != listenerCopy && self->_embeddingStoreListener != listenerCopy)
      {
        if (MediaAnalysisLogLevel() < 4)
        {
          goto LABEL_42;
        }

        v17 = VCPLogToOSLogType[4];
        if (!os_log_type_enabled(&_os_log_default, v17))
        {
          goto LABEL_42;
        }

        LOWORD(buf.val[0]) = 0;
        v18 = "Unknown service requested; denying connection";
        goto LABEL_50;
      }

      v22 = [objc_opt_class() clientHandlerWithXPCConnection:connectionCopy];
      if (!v22)
      {
        if (MediaAnalysisLogLevel() < 4)
        {
          goto LABEL_42;
        }

        v17 = VCPLogToOSLogType[4];
        if (!os_log_type_enabled(&_os_log_default, v17))
        {
          goto LABEL_42;
        }

        LOWORD(buf.val[0]) = 0;
        v18 = "Failed to add client; dropping connection";
LABEL_50:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v17, v18, &buf, 2u);
        goto LABEL_42;
      }

      v23 = +[VCPClientManager sharedManager];
      [v23 addClientHandler:v22];
    }

    [connectionCopy resume];
    v21 = 1;
    goto LABEL_46;
  }

  if (MediaAnalysisLogLevel() < 4)
  {
    goto LABEL_40;
  }

  v11 = VCPLogToOSLogType[4];
  if (!os_log_type_enabled(&_os_log_default, v11))
  {
    goto LABEL_40;
  }

  buf.val[0] = 138412290;
  *&buf.val[1] = error;
  v12 = "Failed to copy value for entitlement (%@)";
  v13 = v11;
  v14 = 12;
LABEL_39:
  _os_log_impl(&_mh_execute_header, &_os_log_default, v13, v12, &buf, v14);
LABEL_40:
  sub_100002CBC(&cf1);
  sub_100002CBC(&error);
LABEL_41:
  sub_100002CBC(&v27);
LABEL_42:
  v21 = 0;
LABEL_46:

  return v21;
}

- (void)storeAnalysis:(id)analysis forAsset:(id)asset fromPhotoLibraryURL:(id)l withReply:(id)reply
{
  analysisCopy = analysis;
  assetCopy = asset;
  lCopy = l;
  replyCopy = reply;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v13 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v13))
    {
      [analysisCopy vcp_types];
      v14 = MediaAnalysisTypeDescription();
      *buf = 138412546;
      v66 = assetCopy;
      v67 = 2112;
      v68 = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "  [%@] Received storage request with analysis types: (%@)", buf, 0x16u);
    }
  }

  v15 = +[VCPPhotoLibraryManager sharedManager];
  v16 = [v15 photoLibraryWithURL:lCopy];

  if (!v16)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v19 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        path = [lCopy path];
        *buf = 138412290;
        v66 = path;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, " Failed to open Photos Library at %@; cannot store analysis", buf, 0xCu);
      }
    }

    goto LABEL_68;
  }

  v17 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v16];
  if (v17)
  {
    if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
    {
      v57 = [MADVectorDatabaseChangeManager sharedManagerForPhotoLibrary:v16];
      if (!v57)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v18 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v18))
          {
            *buf = 138412290;
            v66 = assetCopy;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v18, " [%@] Failed to initialize MADVectorDatabaseChangeManager", buf, 0xCu);
          }
        }

        goto LABEL_68;
      }
    }

    else
    {
      v57 = 0;
    }

    v58 = [PHAsset vcp_fetchOptionsForLibrary:v16 forTaskID:1];
    v64 = assetCopy;
    v21 = [NSArray arrayWithObjects:&v64 count:1];
    v59 = [PHAsset fetchAssetsWithLocalIdentifiers:v21 options:v58];

    if ([v59 count] != 1)
    {
      goto LABEL_66;
    }

    if (+[MADManagedPhotosAsset isMACDPersistEnabled])
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v22 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v22))
        {
          firstObject = [v59 firstObject];
          localIdentifier = [firstObject localIdentifier];
          *buf = 138412290;
          v66 = localIdentifier;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[%@][MACD] Persisting results to CoreData", buf, 0xCu);
        }
      }

      v25 = VCPSignPostLog();
      v26 = os_signpost_id_generate(v25);

      v27 = VCPSignPostLog();
      v28 = v27;
      v29 = v26 - 1;
      if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_BEGIN, v26, "VCPMediaAnalysisDaemon_PublishCoreData_Single", "", buf, 2u);
      }

      spid = v26;
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_1000050D8;
      v61[3] = &unk_100282938;
      v62 = v59;
      v63 = analysisCopy;
      v60 = 0;
      v30 = [v16 mad_performAnalysisDataStoreChanges:v61 error:&v60];
      v31 = v60;
      v32 = v31;
      if (v30)
      {
        v33 = VCPSignPostLog();
        v34 = v33;
        if (v29 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, OS_SIGNPOST_INTERVAL_END, spid, "VCPMediaAnalysisDaemon_PublishCoreData_Single", "", buf, 2u);
        }

        code = 0;
      }

      else
      {
        code = [v31 code];
      }

      if ((v30 & 1) == 0)
      {
LABEL_67:

        if (!code)
        {
          goto LABEL_71;
        }

        goto LABEL_68;
      }
    }

    else
    {
      code = 0;
    }

    if (+[VCPDatabaseWriter isLegacyPersistEnabled])
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v36 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v36))
        {
          firstObject2 = [v59 firstObject];
          localIdentifier2 = [firstObject2 localIdentifier];
          *buf = 138412290;
          v66 = localIdentifier2;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "[%@][MACD] Persisting results to MA DB", buf, 0xCu);
        }
      }

      v39 = VCPSignPostLog();
      v40 = os_signpost_id_generate(v39);

      v41 = VCPSignPostLog();
      v42 = v41;
      spida = v40 - 1;
      if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_INTERVAL_BEGIN, v40, "VCPMediaAnalysisDaemon_PublishLegacy_Single", "", buf, 2u);
      }

      v43 = [v59 objectAtIndexedSubscript:0];
      v44 = [v17 storeAnalysisForAsset:v43 analysis:analysisCopy];

      v45 = 6;
      if (v44 == -108 || v44 == -36)
      {
        v46 = v44;
      }

      else
      {
        v46 = v44;
        if (v44 != -23)
        {
          v45 = 0;
          v46 = code;
        }
      }

      if (v44 != -108 && v44 != -36 && v44 != -23)
      {
        commit = [v17 commit];
        v45 = 6;
        if (commit == -108 || commit == -36)
        {
          code = commit;
        }

        else
        {
          code = commit;
          if (commit != -23)
          {
            v45 = 0;
            code = v46;
          }
        }

        if (commit != -108 && commit != -36 && commit != -23)
        {
          v53 = VCPSignPostLog();
          v54 = v53;
          if (spida <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v54, OS_SIGNPOST_INTERVAL_END, v40, "VCPMediaAnalysisDaemon_PublishLegacy_Single", "", buf, 2u);
          }

          goto LABEL_57;
        }

        v46 = code;
      }

      code = v46;
      if (v45)
      {
        goto LABEL_67;
      }
    }

LABEL_57:
    v48 = [v59 objectAtIndexedSubscript:{0, spida}];
    v49 = [v57 updateAsset:v48 analysis:analysisCopy imageOnly:0 vskResults:0];

    if (v49)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_66;
      }

      v50 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v50))
      {
        goto LABEL_66;
      }

      *buf = 138412290;
      v66 = assetCopy;
      v51 = " [%@] Failed to update vector database changes";
    }

    else
    {
      if (![v57 publishPendingChanges])
      {
        goto LABEL_67;
      }

      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_66;
      }

      v50 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v50))
      {
        goto LABEL_66;
      }

      *buf = 138412290;
      v66 = assetCopy;
      v51 = " [%@] Failed to publish vector database changes";
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v50, v51, buf, 0xCu);
LABEL_66:
    code = -18;
    goto LABEL_67;
  }

LABEL_68:
  if (MediaAnalysisLogLevel() >= 6)
  {
    v52 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v52))
    {
      *buf = 138412290;
      v66 = assetCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v52, "  [%@] Failed to store analysis", buf, 0xCu);
    }
  }

LABEL_71:
  replyCopy[2](replyCopy);
}

- (void)registerClient:(id)client forPhotoLibraryURL:(id)l withReply:(id)reply
{
  clientCopy = client;
  lCopy = l;
  replyCopy = reply;
  v10 = +[VCPPhotoLibraryManager sharedManager];
  v11 = [v10 photoLibraryWithURL:lCopy];

  if (v11)
  {
    vcp_mediaAnalysisDirectory = [v11 vcp_mediaAnalysisDirectory];
    [vcp_mediaAnalysisDirectory UTF8String];
    v13 = sandbox_extension_issue_file();
    if (v13)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v14 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v14))
        {
          v19 = 138412546;
          v20 = vcp_mediaAnalysisDirectory;
          v21 = 2112;
          v22 = clientCopy;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "Issuing sandbox extension for %@ to %@", &v19, 0x16u);
        }
      }

      v15 = [NSString stringWithUTF8String:v13];
      replyCopy[2](replyCopy, v15);

      free(v13);
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v18 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v18))
        {
          v19 = 138412546;
          v20 = vcp_mediaAnalysisDirectory;
          v21 = 2112;
          v22 = clientCopy;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "Failed to issue sandbox extension on %@ for %@", &v19, 0x16u);
        }
      }

      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v16 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        path = [lCopy path];
        v19 = 138412290;
        v20 = path;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "Failed to open Photos Library at %@; cannot issue sandbox extension", &v19, 0xCu);
      }
    }

    replyCopy[2](replyCopy, 0);
  }
}

- (void)registerPhotosTasks
{
  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    v2 = +[MADPhotosDatabaseMigrationBackgroundSystemTask sharedTask];
    [v2 registerTask];
  }

  v3 = +[MADPhotosSceneBackgroundSystemTask sharedTask];
  [v3 registerTask];

  v4 = +[MADPhotosFullBackgroundSystemTask sharedTask];
  [v4 registerTask];

  v5 = +[MADPhotosFullClusterBackgroundSystemTask sharedTask];
  [v5 registerTask];

  v6 = +[MADPhotosFaceBackgroundSystemTask sharedTask];
  [v6 registerTask];

  v7 = +[MADPhotosPersonBackgroundSystemTask sharedTask];
  [v7 registerTask];

  v8 = +[MADPhotosMaintenanceBackgroundSystemTask sharedTask];
  [v8 registerTask];

  v9 = +[MADPhotosTelemetryBackgroundSystemTask sharedTask];
  [v9 registerTask];

  v10 = +[MADPhotosOCRBackgroundSystemTask sharedTask];
  [v10 registerTask];

  v11 = +[MADProgressReporterBackgroundSystemTask sharedTask];
  [v11 registerTask];

  v12 = +[MADPhotosVisualSearchBackgroundSystemTask sharedTask];
  [v12 registerTask];

  if (_os_feature_enabled_impl())
  {
    v13 = +[MADPhotosPECBackgroundSystemTask sharedTask];
    [v13 registerTask];
  }

  v14 = +[MADPhotosBackupBackgroundSystemTask sharedTask];
  [v14 registerTask];
}

- (int)run:(int)run argv:(const char *)argv
{
  v5 = [MADSystemXPCStoreContainer sharedContainer:*&run];
  +[PHPhotoLibrary enableMultiLibraryMode];
  v6 = +[VCPPhotoLibraryManager sharedManager];
  allPhotoLibraries = [v6 allPhotoLibraries];

  v8 = +[MADPhotosDeferredBackgroundSystemTask sharedTask];
  [v8 registerTask];

  v9 = +[MADMomentsDeferredBackgroundSystemTask sharedTask];
  [v9 registerTask];

  v10 = +[MADSpotlightImageBackgroundSystemTask sharedTask];
  [v10 registerTask];

  v11 = +[MADSpotlightMovieBackgroundSystemTask sharedTask];
  [v11 registerTask];

  v12 = +[MADComputeServiceBackgroundSystemTask sharedTask];
  [v12 registerTask];

  v13 = [NSXPCListener alloc];
  v14 = [v13 initWithMachServiceName:MediaAnalysisPhotosServiceName];
  storageListener = self->_storageListener;
  self->_storageListener = v14;

  [(NSXPCListener *)self->_storageListener setDelegate:self];
  [(NSXPCListener *)self->_storageListener resume];
  v16 = [NSXPCListener alloc];
  v17 = [v16 initWithMachServiceName:MediaAnalysisServiceName];
  analysisListener = self->_analysisListener;
  self->_analysisListener = v17;

  [(NSXPCListener *)self->_analysisListener setDelegate:self];
  [(NSXPCListener *)self->_analysisListener resume];
  v19 = [NSXPCListener alloc];
  v20 = [v19 initWithMachServiceName:HomeKitAnalysisServiceName];
  homeKitListener = self->_homeKitListener;
  self->_homeKitListener = v20;

  [(NSXPCListener *)self->_homeKitListener setDelegate:self];
  [(NSXPCListener *)self->_homeKitListener resume];
  v22 = [NSXPCListener alloc];
  v23 = [v22 initWithMachServiceName:HomeKitSessionAnalysisServiceName];
  homeKitSessionListener = self->_homeKitSessionListener;
  self->_homeKitSessionListener = v23;

  [(NSXPCListener *)self->_homeKitSessionListener setDelegate:self];
  [(NSXPCListener *)self->_homeKitSessionListener resume];
  v25 = [NSXPCListener alloc];
  v26 = [v25 initWithMachServiceName:MediaAnalysisRealTimeServiceName];
  realTimeListener = self->_realTimeListener;
  self->_realTimeListener = v26;

  [(NSXPCListener *)self->_realTimeListener setDelegate:self];
  [(NSXPCListener *)self->_realTimeListener resume];
  v28 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.mediaanalysisd.service.public"];
  publicServiceListener = self->_publicServiceListener;
  self->_publicServiceListener = v28;

  [(NSXPCListener *)self->_publicServiceListener setDelegate:self];
  [(NSXPCListener *)self->_publicServiceListener resume];
  v30 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.mediaanalysisd.computeservice"];
  macsListener = self->_macsListener;
  self->_macsListener = v30;

  [(NSXPCListener *)self->_macsListener setDelegate:self];
  [(NSXPCListener *)self->_macsListener resume];
  v32 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.mediaanalysisd.videosession.public"];
  videoSessionListener = self->_videoSessionListener;
  self->_videoSessionListener = v32;

  [(NSXPCListener *)self->_videoSessionListener setDelegate:self];
  [(NSXPCListener *)self->_videoSessionListener resume];
  v34 = [NSXPCListener alloc];
  v35 = +[MADEmbeddingStoreService serviceName];
  v36 = [v34 initWithMachServiceName:v35];
  embeddingStoreListener = self->_embeddingStoreListener;
  self->_embeddingStoreListener = v36;

  [(NSXPCListener *)self->_embeddingStoreListener setDelegate:self];
  [(NSXPCListener *)self->_embeddingStoreListener resume];
  if ((+[VCPDeviceInformation isHomePod]& 1) != 0)
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v38 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v38))
      {
        *v47 = 138412290;
        *&v47[4] = objc_opt_class();
        v39 = *&v47[4];
        _os_log_impl(&_mh_execute_header, &_os_log_default, v38, "[%@] HomePod system; bypassing registering core activities", v47, 0xCu);
      }
    }
  }

  else
  {
    [(VCPMediaAnalysisDaemon *)self registerPhotosTasks];
    v40 = +[MADOTAMaintenanceBackgroundSystemTask sharedTask];
    [v40 registerTask];
  }

  [(MADFastPassBackgroundSystemTask *)self->_databaseRestoreFastPassProcessing registerTask];
  [(MADFastPassBackgroundSystemTask *)self->_photosSceneFastPassProcessing registerTask];
  [(MADFastPassBackgroundSystemTask *)self->_photosFaceFastPassProcessing registerTask];
  v41 = +[MADPreheatBackgroundSystemTask sharedTask];
  [v41 registerTask];

  v42 = +[MADHomeMaintenanceBackgroundSystemTask sharedTask];
  [v42 registerTask];

  v43 = +[MADSchedulerBackgroundSystemTask sharedTask];
  [v43 registerTask];

  v44 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
  v45 = [MADVUIndexXPCStoreContainer sharedContainerWithPhotoLibrary:v44];
  CFRunLoopRun();

  return 0;
}

@end