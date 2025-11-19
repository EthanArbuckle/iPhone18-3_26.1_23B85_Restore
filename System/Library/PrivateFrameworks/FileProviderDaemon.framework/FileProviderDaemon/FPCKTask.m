@interface FPCKTask
+ (id)sharedManager;
+ (id)xpcServiceConnection;
+ (id)xpcServiceProxyWithConnection:(id)a3;
+ (void)runFPCKForDomain:(id)a3 domainUserInfo:(id)a4 domainRootURL:(id)a5 databaseBackupPath:(id)a6 urls:(id)a7 volumeRole:(unsigned int)a8 options:(unint64_t)a9 reason:(unint64_t)a10 fpfs:(BOOL)a11 iCDPackageDetection:(BOOL)a12 shouldPause:(id)a13 sendDiagnostics:(id)a14 saveCheckpoint:(id)a15 reingestItems:(id)a16 isInvalidated:(id)a17 contentBarrier:(int64_t)a18 completionHandler:(id)a19;
- (FPCKTask)init;
- (unint64_t)_resolveLaunchType:(unint64_t)a3;
- (void)_prepareXPCService:(id)a3 domainUserInfo:(id)a4 domainRootURL:(id)a5 databaseBackupPath:(id)a6 urls:(id)a7 volumeRole:(unsigned int)a8 personaIdentifier:(id)a9 options:(unint64_t)a10 reason:(unint64_t)a11 fpfs:(BOOL)a12 iCDPackageDetection:(BOOL)a13 completionHandler:(id)a14;
- (void)dumpDatabaseAt:(id)a3 fullDump:(BOOL)a4 writeTo:(id)a5 completionHandler:(id)a6;
- (void)prepareFPCKRun:(id)a3 domainUserInfo:(id)a4 domainRootURL:(id)a5 databaseBackupPath:(id)a6 urls:(id)a7 volumeRole:(unsigned int)a8 personaIdentifier:(id)a9 options:(unint64_t)a10 reason:(unint64_t)a11 fpfs:(BOOL)a12 iCDPackageDetection:(BOOL)a13 launchType:(unint64_t)a14 runOnWorkQueue:(BOOL)a15 completionHandler:(id)a16;
- (void)scheduleFPCKRun:(id)a3 domainUserInfo:(id)a4 domainRootURL:(id)a5 databaseBackupPath:(id)a6 urls:(id)a7 volumeRole:(unsigned int)a8 options:(unint64_t)a9 reason:(unint64_t)a10 fpfs:(BOOL)a11 iCDPackageDetection:(BOOL)a12 launchType:(unint64_t)a13 updateReceiver:(id)a14 shouldPause:(id)a15 contentBarrier:(int64_t)a16 proxy:(id)a17 completionHandler:(id)a18;
@end

@implementation FPCKTask

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[FPCKTask sharedManager];
  }

  v3 = sharedManager_sharedManager_0;

  return v3;
}

void __25__FPCKTask_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(FPCKTask);
  v1 = sharedManager_sharedManager_0;
  sharedManager_sharedManager_0 = v0;
}

- (FPCKTask)init
{
  v7.receiver = self;
  v7.super_class = FPCKTask;
  v2 = [(FPCKTask *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("FPCKTask-queue", v3);
    workQueue = v2->workQueue;
    v2->workQueue = v4;
  }

  return v2;
}

+ (id)xpcServiceConnection
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.FileProviderDaemon.FPCKService"];
  v3 = FPDFPCKServiceXPCInterface();
  [v2 setRemoteObjectInterface:v3];

  [v2 activate];

  return v2;
}

+ (id)xpcServiceProxyWithConnection:(id)a3
{
  v3 = MEMORY[0x1E696B0B8];
  v4 = a3;
  v5 = [v3 currentConnection];
  v6 = [v5 processIdentifier];

  v7 = [objc_alloc(MEMORY[0x1E69674B0]) initWithConnection:v4 protocol:&unk_1F4C8C450 orError:0 name:@"FPCKServiceProxy" requestPid:v6];
  v8 = [v7 synchronousRemoteObjectProxy];

  return v8;
}

+ (void)runFPCKForDomain:(id)a3 domainUserInfo:(id)a4 domainRootURL:(id)a5 databaseBackupPath:(id)a6 urls:(id)a7 volumeRole:(unsigned int)a8 options:(unint64_t)a9 reason:(unint64_t)a10 fpfs:(BOOL)a11 iCDPackageDetection:(BOOL)a12 shouldPause:(id)a13 sendDiagnostics:(id)a14 saveCheckpoint:(id)a15 reingestItems:(id)a16 isInvalidated:(id)a17 contentBarrier:(int64_t)a18 completionHandler:(id)a19
{
  v55[1] = *MEMORY[0x1E69E9840];
  v23 = a13;
  v46 = v23 != 0;
  v24 = &__block_literal_global_12;
  if (v23)
  {
    v24 = v23;
  }

  v50 = v24;
  v49 = a19;
  v25 = a17;
  v26 = a16;
  v27 = a15;
  v28 = a14;
  v48 = a7;
  v29 = a6;
  v30 = a5;
  v31 = a4;
  v32 = a3;
  v33 = [_TtC18FileProviderDaemon4FPCK alloc];
  v34 = [v30 path];

  v54 = v34;
  v35 = [v29 path];

  v55[0] = v35;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
  BYTE1(v44) = v46;
  LOBYTE(v44) = a12;
  v37 = [(FPCK *)v33 initWithDatabasesBackupsPaths:v36 volumeRole:a8 providerDomainID:v32 domainUserInfo:v31 reason:a10 usingFPFS:a11 iCDPackageDetection:v44 useShouldPause:v50 shouldPause:v28 sendDiagnostics:v27 saveCheckpoint:v26 reingestItems:v25 isInvalidated:?];

  v38 = [MEMORY[0x1E696AD60] string];
  v53 = 0;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __237__FPCKTask_runFPCKForDomain_domainUserInfo_domainRootURL_databaseBackupPath_urls_volumeRole_options_reason_fpfs_iCDPackageDetection_shouldPause_sendDiagnostics_saveCheckpoint_reingestItems_isInvalidated_contentBarrier_completionHandler___block_invoke_2;
  v51[3] = &unk_1E83C1988;
  v52 = v38;
  v39 = v38;
  [(FPCK *)v37 launchFromURLs:v48 options:a9 contentBarrier:a18 error:&v53 resultHandler:v51];

  v40 = v53;
  v41 = objc_alloc_init(MEMORY[0x1E69672C8]);
  [v41 setNumberOfFilesChecked:{-[FPCK numberOfFilesChecked](v37, "numberOfFilesChecked")}];
  [v41 setNumberOfBrokenFilesInFSAndFSSnapshotCheck:{-[FPCK numberOfBrokenFilesInFSAndFSSnapshotCheck](v37, "numberOfBrokenFilesInFSAndFSSnapshotCheck")}];
  [v41 setNumberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck:{-[FPCK numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck](v37, "numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck")}];
  [v41 setNumberOfBrokenFilesInReconciliationTableCheck:{-[FPCK numberOfBrokenFilesInReconciliationTableCheck](v37, "numberOfBrokenFilesInReconciliationTableCheck")}];
  [v41 setNumberOfBrokenFilesInBackupManifestCheck:{-[FPCK numberOfBrokenFilesInBackupManifestCheck](v37, "numberOfBrokenFilesInBackupManifestCheck")}];
  v42 = [(FPCK *)v37 telemetryReport];
  v49[2](v49, v39, v41, v42, v40);

  v43 = *MEMORY[0x1E69E9840];
}

_TtC18FileProviderDaemon19FPShouldPauseResult *__237__FPCKTask_runFPCKForDomain_domainUserInfo_domainRootURL_databaseBackupPath_urls_volumeRole_options_reason_fpfs_iCDPackageDetection_shouldPause_sendDiagnostics_saveCheckpoint_reingestItems_isInvalidated_contentBarrier_completionHandler___block_invoke()
{
  v0 = [[_TtC18FileProviderDaemon19FPShouldPauseResult alloc] initWithShouldPause:0 semaphore:0];

  return v0;
}

- (void)_prepareXPCService:(id)a3 domainUserInfo:(id)a4 domainRootURL:(id)a5 databaseBackupPath:(id)a6 urls:(id)a7 volumeRole:(unsigned int)a8 personaIdentifier:(id)a9 options:(unint64_t)a10 reason:(unint64_t)a11 fpfs:(BOOL)a12 iCDPackageDetection:(BOOL)a13 completionHandler:(id)a14
{
  v100 = *MEMORY[0x1E69E9840];
  v77 = a3;
  v80 = a4;
  v79 = a5;
  v78 = a6;
  v18 = a7;
  v81 = a9;
  v76 = a14;
  v83 = +[FPCKTask xpcServiceConnection];
  v82 = [FPCKTask xpcServiceProxyWithConnection:?];
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v20 = v18;
  v21 = [v20 countByEnumeratingWithState:&v94 objects:v99 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = 0;
    v24 = *v95;
    while (2)
    {
      v25 = 0;
      v26 = v23;
      do
      {
        if (*v95 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v27 = *(*(&v94 + 1) + 8 * v25);
        v93 = v26;
        v28 = [MEMORY[0x1E6967408] wrapperWithURL:v27 readonly:0 error:&v93];
        v23 = v93;

        if (!v28)
        {
          v29 = fp_current_or_default_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            [FPCKTask _prepareXPCService:v27 domainUserInfo:? domainRootURL:? databaseBackupPath:? urls:? volumeRole:? personaIdentifier:? options:? reason:? fpfs:? iCDPackageDetection:? completionHandler:?];
          }

          v30 = v76;
          v31 = v82;
          v32 = v83;
          (*(v76 + 2))(v76, v82, v83, v23);
          v33 = v20;
          v34 = v77;
          v35 = v78;
          v36 = v79;
          v37 = v81;
          goto LABEL_34;
        }

        [v19 addObject:v28];

        ++v25;
        v26 = v23;
      }

      while (v22 != v25);
      v22 = [v20 countByEnumeratingWithState:&v94 objects:v99 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v23 = 0;
  }

  v38 = v23;

  v92 = v23;
  v36 = v79;
  v39 = [MEMORY[0x1E6967408] wrapperWithURL:v79 readonly:0 error:&v92];
  v23 = v92;

  v74 = v39;
  if (v39)
  {
    v91 = v23;
    v35 = v78;
    v40 = [MEMORY[0x1E6967408] wrapperWithURL:v78 readonly:0 error:&v91];
    v41 = v91;

    if (!v40)
    {
      v30 = v76;
      (*(v76 + 2))(v76, v82, v83, v41);
      v34 = v77;
      v37 = v81;
LABEL_32:

      v23 = v41;
      v31 = v82;
      v32 = v83;
      goto LABEL_33;
    }

    v42 = MEMORY[0x1E6967408];
    v43 = [v78 URLByDeletingLastPathComponent];
    v90 = v41;
    v44 = [v42 wrapperWithURL:v43 readonly:0 error:&v90];
    v45 = v90;

    v73 = v44;
    if (!v44)
    {
      v30 = v76;
      (*(v76 + 2))(v76, v82, v83, v45);
      v34 = v77;
      v37 = v81;
      v41 = v45;
LABEL_31:

      goto LABEL_32;
    }

    v72 = v45;
    v46 = [MEMORY[0x1E69DF068] sharedManager];
    v47 = [v46 currentPersona];

    v48 = [v47 userPersonaUniqueString];
    v37 = v81;
    v70 = v48;
    if (!v81 || v48 && ([v48 isEqualToString:v81] & 1) != 0)
    {
      v69 = v47;
      v49 = [MEMORY[0x1E695DFF8] fp_supportDirectoryForVolume:v79];
      v50 = +[_TtC18FileProviderDaemon20InternalPathsManager purgatoryPrefix];
      v51 = [v49 URLByAppendingPathComponent:v50 isDirectory:1];

      v52 = v51;
    }

    else
    {
      v89 = 0;
      v55 = [v47 copyCurrentPersonaContextWithError:&v89];
      v57 = v89;
      if (v57)
      {
        v58 = v57;
        (*(v76 + 2))(v76, v82, v83, v57);
        v71 = v58;
        v30 = v76;
        v34 = v77;
LABEL_30:

        v41 = v72;
        goto LABEL_31;
      }

      v71 = v55;
      v60 = [v47 generateAndRestorePersonaContextWithIdentityString:v81];
      if (v60)
      {
        v55 = v60;
        v61 = fp_current_or_default_log();
        v34 = v77;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          [FPCKTask _prepareXPCService:v55 domainUserInfo:? domainRootURL:? databaseBackupPath:? urls:? volumeRole:? personaIdentifier:? options:? reason:? fpfs:? iCDPackageDetection:? completionHandler:?];
        }

        v30 = v76;
        (*(v76 + 2))(v76, v82, v83, v55);
        goto LABEL_30;
      }

      v62 = [MEMORY[0x1E695DFF8] fp_supportDirectoryForVolume:v79];
      v63 = +[_TtC18FileProviderDaemon20InternalPathsManager purgatoryPrefix];
      v68 = [v62 URLByAppendingPathComponent:v63 isDirectory:1];

      v64 = [v47 restorePersonaWithSavedPersonaContext:v55];
      if (v64)
      {
        v55 = v64;
        v65 = fp_current_or_default_log();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          [FPCKTask _prepareXPCService:v55 domainUserInfo:? domainRootURL:? databaseBackupPath:? urls:? volumeRole:? personaIdentifier:? options:? reason:? fpfs:? iCDPackageDetection:? completionHandler:?];
        }

        (*(v76 + 2))(v76, v82, v83, v55);
        v30 = v76;
        v34 = v77;
        v37 = v81;
        goto LABEL_30;
      }

      v69 = v47;
      v49 = v55;
      v52 = v68;
      v37 = v81;
    }

    v88 = v72;
    v71 = v52;
    v53 = [MEMORY[0x1E6967408] wrapperWithURL:v52 readonly:0 error:&v88];
    v54 = v88;

    v55 = v53;
    if (v53)
    {
      v72 = v54;
      v98[0] = v73;
      v98[1] = v53;
      v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:2];
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __171__FPCKTask__prepareXPCService_domainUserInfo_domainRootURL_databaseBackupPath_urls_volumeRole_personaIdentifier_options_reason_fpfs_iCDPackageDetection_completionHandler___block_invoke;
      v84[3] = &unk_1E83C19B0;
      v30 = v76;
      v87 = v76;
      v85 = v82;
      v86 = v83;
      LOWORD(v67) = __PAIR16__(a13, a12);
      v35 = v78;
      v36 = v79;
      LODWORD(v66) = a8;
      v37 = v81;
      v34 = v77;
      [v85 prepareFPCKForDomain:v77 domainUserInfo:v80 domainRootURL:v74 databaseBackupPath:v40 accessingPaths:v56 urls:v19 volumeRole:v66 options:a10 reason:a11 fpfs:v67 iCDPackageDetection:v84 completionHandler:?];
    }

    else
    {
      v30 = v76;
      (*(v76 + 2))(v76, v82, v83, v54);
      v72 = v54;
      v34 = v77;
    }

    v47 = v69;
    goto LABEL_30;
  }

  v30 = v76;
  v31 = v82;
  v32 = v83;
  (*(v76 + 2))(v76, v82, v83, v23);
  v34 = v77;
  v35 = v78;
  v37 = v81;
LABEL_33:
  v33 = v74;
LABEL_34:

  v59 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_resolveLaunchType:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 1;
  }

  else
  {
    return a3;
  }
}

- (void)prepareFPCKRun:(id)a3 domainUserInfo:(id)a4 domainRootURL:(id)a5 databaseBackupPath:(id)a6 urls:(id)a7 volumeRole:(unsigned int)a8 personaIdentifier:(id)a9 options:(unint64_t)a10 reason:(unint64_t)a11 fpfs:(BOOL)a12 iCDPackageDetection:(BOOL)a13 launchType:(unint64_t)a14 runOnWorkQueue:(BOOL)a15 completionHandler:(id)a16
{
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a9;
  v27 = a16;
  v28 = [(FPCKTask *)self _resolveLaunchType:a14];
  if (a15)
  {
    workQueue = self->workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __193__FPCKTask_prepareFPCKRun_domainUserInfo_domainRootURL_databaseBackupPath_urls_volumeRole_personaIdentifier_options_reason_fpfs_iCDPackageDetection_launchType_runOnWorkQueue_completionHandler___block_invoke;
    block[3] = &unk_1E83C19D8;
    v40 = v28;
    v39 = v27;
    block[4] = self;
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v36 = v24;
    v37 = v25;
    v43 = a8;
    v38 = v26;
    v41 = a10;
    v42 = a11;
    v44 = a12;
    v45 = a13;
    dispatch_async(workQueue, block);
  }

  else if (v28)
  {
    LOWORD(v30) = __PAIR16__(a13, a12);
    [(FPCKTask *)self _prepareXPCService:v21 domainUserInfo:v22 domainRootURL:v23 databaseBackupPath:v24 urls:v25 volumeRole:a8 personaIdentifier:v26 options:a10 reason:a11 fpfs:v30 iCDPackageDetection:v27 completionHandler:?];
  }

  else
  {
    (*(v27 + 2))(v27, 0, 0, 0);
  }
}

uint64_t __193__FPCKTask_prepareFPCKRun_domainUserInfo_domainRootURL_databaseBackupPath_urls_volumeRole_personaIdentifier_options_reason_fpfs_iCDPackageDetection_launchType_runOnWorkQueue_completionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 96))
  {
    LOWORD(v4) = *(a1 + 124);
    return [*(a1 + 32) _prepareXPCService:*(a1 + 40) domainUserInfo:*(a1 + 48) domainRootURL:*(a1 + 56) databaseBackupPath:*(a1 + 64) urls:*(a1 + 72) volumeRole:*(a1 + 120) personaIdentifier:*(a1 + 80) options:*(a1 + 104) reason:*(a1 + 112) fpfs:v4 iCDPackageDetection:*(a1 + 88) completionHandler:?];
  }

  else
  {
    v3 = *(*(a1 + 88) + 16);

    return v3();
  }
}

- (void)scheduleFPCKRun:(id)a3 domainUserInfo:(id)a4 domainRootURL:(id)a5 databaseBackupPath:(id)a6 urls:(id)a7 volumeRole:(unsigned int)a8 options:(unint64_t)a9 reason:(unint64_t)a10 fpfs:(BOOL)a11 iCDPackageDetection:(BOOL)a12 launchType:(unint64_t)a13 updateReceiver:(id)a14 shouldPause:(id)a15 contentBarrier:(int64_t)a16 proxy:(id)a17 completionHandler:(id)a18
{
  v44 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a14;
  v28 = a15;
  v29 = a17;
  v30 = a18;
  v31 = [(FPCKTask *)self _resolveLaunchType:a13];
  switch(v31)
  {
    case 2uLL:
      v39 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
      (*(v30 + 2))(v30, 0, 0, 0, v39);

      break;
    case 1uLL:
      [(FPCKTask *)self _launchXPCServiceWithUpdateReceiver:v27 contentBarrier:a16 proxy:v29 completionHandler:v30];
      break;
    case 0uLL:
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __209__FPCKTask_scheduleFPCKRun_domainUserInfo_domainRootURL_databaseBackupPath_urls_volumeRole_options_reason_fpfs_iCDPackageDetection_launchType_updateReceiver_shouldPause_contentBarrier_proxy_completionHandler___block_invoke_2;
      aBlock[3] = &unk_1E83C1A20;
      v32 = v27;
      v50 = v32;
      v41 = _Block_copy(aBlock);
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __209__FPCKTask_scheduleFPCKRun_domainUserInfo_domainRootURL_databaseBackupPath_urls_volumeRole_options_reason_fpfs_iCDPackageDetection_launchType_updateReceiver_shouldPause_contentBarrier_proxy_completionHandler___block_invoke_3;
      v47[3] = &unk_1E83C1A48;
      v42 = v26;
      v33 = v25;
      v34 = v24;
      v35 = v23;
      v36 = v32;
      v48 = v36;
      v37 = _Block_copy(v47);
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __209__FPCKTask_scheduleFPCKRun_domainUserInfo_domainRootURL_databaseBackupPath_urls_volumeRole_options_reason_fpfs_iCDPackageDetection_launchType_updateReceiver_shouldPause_contentBarrier_proxy_completionHandler___block_invoke_4;
      v45[3] = &unk_1E83C1A48;
      v46 = v36;
      v38 = _Block_copy(v45);
      LOWORD(v40) = __PAIR16__(a12, a11);
      [FPCKTask runFPCKForDomain:v44 domainUserInfo:v35 domainRootURL:v34 databaseBackupPath:v33 urls:v42 volumeRole:a8 options:a9 reason:a10 fpfs:v40 iCDPackageDetection:v28 shouldPause:v37 sendDiagnostics:v41 saveCheckpoint:v38 reingestItems:&__block_literal_global_28_0 isInvalidated:a16 contentBarrier:v30 completionHandler:?];

      v23 = v35;
      v24 = v34;
      v25 = v33;
      v26 = v42;

      break;
  }
}

void *__209__FPCKTask_scheduleFPCKRun_domainUserInfo_domainRootURL_databaseBackupPath_urls_volumeRole_options_reason_fpfs_iCDPackageDetection_launchType_updateReceiver_shouldPause_contentBarrier_proxy_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return [result saveCheckpointWithReport:a2];
  }

  return result;
}

void *__209__FPCKTask_scheduleFPCKRun_domainUserInfo_domainRootURL_databaseBackupPath_urls_volumeRole_options_reason_fpfs_iCDPackageDetection_launchType_updateReceiver_shouldPause_contentBarrier_proxy_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return [result sendDiagnosticsForItemIDs:a2];
  }

  return result;
}

void *__209__FPCKTask_scheduleFPCKRun_domainUserInfo_domainRootURL_databaseBackupPath_urls_volumeRole_options_reason_fpfs_iCDPackageDetection_launchType_updateReceiver_shouldPause_contentBarrier_proxy_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return [result reingestItemIDs:a2];
  }

  return result;
}

- (void)dumpDatabaseAt:(id)a3 fullDump:(BOOL)a4 writeTo:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  workQueue = self->workQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__FPCKTask_dumpDatabaseAt_fullDump_writeTo_completionHandler___block_invoke;
  v17[3] = &unk_1E83BF850;
  v21 = a4;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(workQueue, v17);
}

void __62__FPCKTask_dumpDatabaseAt_fullDump_writeTo_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = 0;
  [_TtC18FileProviderDaemon4FPCK dumpDatabaseAt:v3 fullDump:v2 writeTo:v4 error:&v6];
  v5 = v6;
  (*(*(a1 + 48) + 16))();
}

- (void)_prepareXPCService:(void *)a1 domainUserInfo:domainRootURL:databaseBackupPath:urls:volumeRole:personaIdentifier:options:reason:fpfs:iCDPackageDetection:completionHandler:.cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_4_5(&dword_1CEFC7000, v2, v3, "[ERROR] Unable to launch FPCK, unable to sandbox wrap URL: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_prepareXPCService:(void *)a1 domainUserInfo:domainRootURL:databaseBackupPath:urls:volumeRole:personaIdentifier:options:reason:fpfs:iCDPackageDetection:completionHandler:.cold.2(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_4_5(&dword_1CEFC7000, v2, v3, "[ERROR] 🧹 FPCK error adopting persona during XPC Service preparation %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_prepareXPCService:(void *)a1 domainUserInfo:domainRootURL:databaseBackupPath:urls:volumeRole:personaIdentifier:options:reason:fpfs:iCDPackageDetection:completionHandler:.cold.3(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_4_5(&dword_1CEFC7000, v2, v3, "[ERROR] 🧹 FPCK error restoring persona during XPC Service preparation %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end