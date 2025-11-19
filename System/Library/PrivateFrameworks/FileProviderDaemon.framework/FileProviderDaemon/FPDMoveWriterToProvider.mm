@interface FPDMoveWriterToProvider
- (FPDMoveWriterToProvider)initWithWriter:(id)a3;
- (id)_remoteProxy;
- (id)_targetSession;
- (void)_createFolder:(id)a3 under:(id)a4 completion:(id)a5;
- (void)_createTargetItemWithProxy:(id)a3 target:(id)a4 contents:(id)a5 targetName:(id)a6 lastUsedDate:(id)a7 completionHandler:(id)a8;
- (void)_importURL:(id)a3 source:(id)a4 target:(id)a5 as:(id)a6 lastUsedDate:(id)a7 initialImportFinished:(id)a8 progressAvailable:(id)a9 completion:(id)a10;
- (void)_postImportStepForItem:(id)a3 sourceURL:(id)a4 targetURL:(id)a5 tempFolder:(id)a6 wasCopyRequested:(BOOL)a7 error:(id)a8 completion:(id)a9;
- (void)dealloc;
- (void)performCopyOfItem:(id)a3 to:(id)a4 as:(id)a5 sourceMaterializeOption:(unint64_t)a6 targetMaterializeOption:(unint64_t)a7 completion:(id)a8;
- (void)performMoveOfFolder:(id)a3 to:(id)a4 as:(id)a5 sourceMaterializeOption:(unint64_t)a6 targetMaterializeOption:(unint64_t)a7 atomically:(BOOL)a8 completion:(id)a9;
- (void)performMoveOfItem:(id)a3 to:(id)a4 as:(id)a5 sourceMaterializeOption:(unint64_t)a6 targetMaterializeOption:(unint64_t)a7 completion:(id)a8;
@end

@implementation FPDMoveWriterToProvider

- (FPDMoveWriterToProvider)initWithWriter:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FPDMoveWriterToProvider;
  v5 = [(FPDMoveWriterToProvider *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_writer, v4);
    v7 = [v4 info];
    v8 = [v7 targetFolder];
    v9 = [v8 startAccessingLocator];
    stopAccessingToken = v6->_stopAccessingToken;
    v6->_stopAccessingToken = v9;
  }

  return v6;
}

- (void)dealloc
{
  [(FPActionLocatorAccess *)self->_stopAccessingToken stopAccessing];
  v3.receiver = self;
  v3.super_class = FPDMoveWriterToProvider;
  [(FPDMoveWriterToProvider *)&v3 dealloc];
}

- (id)_targetSession
{
  WeakRetained = objc_loadWeakRetained(&self->_writer);
  v4 = [WeakRetained info];
  v5 = [v4 targetFolder];
  v6 = [v5 asFPItem];
  v7 = [v6 itemID];

  v8 = objc_loadWeakRetained(&self->_writer);
  v9 = [v8 operation];
  v10 = [v9 manager];

  v11 = [v7 providerID];
  v12 = [v10 providerWithIdentifier:v11 reason:0];
  v13 = [v7 domainIdentifier];
  v14 = [v12 domainForIdentifier:v13 reason:0];

  v15 = [v14 session];

  return v15;
}

- (id)_remoteProxy
{
  v2 = [(FPDMoveWriterToProvider *)self _targetSession];
  v3 = [v2 newFileProviderProxyWithTimeout:0 pid:180.0];

  return v3;
}

- (void)_createTargetItemWithProxy:(id)a3 target:(id)a4 contents:(id)a5 targetName:(id)a6 lastUsedDate:(id)a7 completionHandler:(id)a8
{
  v41 = a3;
  v40 = a5;
  v39 = a8;
  v37 = a7;
  v14 = a6;
  v15 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_writer);
  v17 = [WeakRetained operation];
  v18 = [v17 manager];
  v19 = [v15 asFPItem];
  v20 = [v19 itemID];
  v36 = [v18 domainFromItemID:v20 reason:0];

  v21 = objc_alloc(MEMORY[0x1E6967388]);
  v22 = [v15 asFPItem];
  v23 = [v22 providerDomainID];
  v24 = [v15 asFPItem];

  v25 = [v24 itemIdentifier];
  v26 = [v21 initWithProviderDomainID:v23 itemIdentifier:@"__" parentItemIdentifier:v25 filename:v14 isDirectory:0];

  [v26 setLastUsedDate:v37];
  v38 = objc_loadWeakRetained(&self->_writer);
  v35 = [v38 operation];
  v27 = [v35 request];
  v28 = [v36 session];
  v29 = [v27 nsfpRequestForSession:v28];
  v30 = objc_loadWeakRetained(&self->_writer);
  v31 = [v30 info];
  v32 = [v31 shouldBounce];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __112__FPDMoveWriterToProvider__createTargetItemWithProxy_target_contents_targetName_lastUsedDate_completionHandler___block_invoke;
  v42[3] = &unk_1E83C1218;
  v43 = v39;
  v33 = v39;
  v34 = [v41 createItemBasedOnTemplate:v26 fields:14 contents:v40 options:0x10000 request:v29 bounce:v32 completionHandler:v42];
}

- (void)_importURL:(id)a3 source:(id)a4 target:(id)a5 as:(id)a6 lastUsedDate:(id)a7 initialImportFinished:(id)a8 progressAvailable:(id)a9 completion:(id)a10
{
  v115 = *MEMORY[0x1E69E9840];
  v78 = a3;
  v82 = a4;
  v16 = a5;
  v72 = a6;
  v73 = a7;
  v74 = a8;
  v71 = a9;
  v75 = a10;
  v76 = [(FPDMoveWriterToProvider *)self _remoteProxy];
  WeakRetained = objc_loadWeakRetained(&self->_writer);
  v18 = [WeakRetained operation];
  v81 = [v18 manager];

  v77 = [v81 domainForActionOperationLocator:v82];
  v19 = [v81 domainForActionOperationLocator:v16];
  v20 = [v77 nsDomain];
  v21 = [v20 personaIdentifier];
  v22 = [v19 nsDomain];
  v23 = [v22 personaIdentifier];

  v24 = [MEMORY[0x1E69DF068] sharedManager];
  v79 = [v24 currentPersona];

  v110 = 0;
  v80 = [v79 userPersonaUniqueString];
  v25 = [v19 nsDomain];
  v26 = [v25 personaIdentifier];
  v27 = v26;
  if (v80 == v26)
  {

LABEL_13:
    v70 = 0;
    goto LABEL_14;
  }

  v28 = [v19 nsDomain];
  v29 = [v28 personaIdentifier];
  v30 = [v80 isEqualToString:v29];

  if ((v30 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_13;
  }

  v109 = 0;
  v31 = [v79 copyCurrentPersonaContextWithError:&v109];
  v32 = v109;
  v33 = v110;
  v110 = v31;

  if (v32)
  {
    v34 = fp_current_or_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [(FPItemOperationLocator(Daemon) *)v32 annotateWithPersonaSandboxIfNeeded:v34];
    }
  }

  v35 = [v19 nsDomain];
  v36 = [v35 personaIdentifier];
  v70 = [v79 generateAndRestorePersonaContextWithPersonaUniqueString:v36];

  if (!v70)
  {
    goto LABEL_13;
  }

  v37 = fp_current_or_default_log();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v67 = [v19 nsDomain];
    v68 = [v67 personaIdentifier];
    *buf = 138412546;
    v112 = v68;
    v113 = 2112;
    v114 = v70;
    _os_log_error_impl(&dword_1CEFC7000, v37, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
  }

LABEL_14:
  if ([v16 requiresCrossDeviceCopy])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_3;
    aBlock[3] = &unk_1E83C1330;
    aBlock[4] = self;
    v38 = v78;
    v94 = v38;
    v95 = v82;
    v39 = v76;
    v96 = v39;
    v40 = v75;
    v97 = v40;
    v98 = v71;
    v41 = _Block_copy(aBlock);
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_8;
    v83[3] = &unk_1E83C13D0;
    v90 = v74;
    v42 = v38;
    v84 = v42;
    v85 = self;
    v91 = v40;
    v86 = v39;
    v87 = v16;
    v88 = v72;
    v89 = v73;
    v43 = v41;
    v92 = v43;
    v44 = _Block_copy(v83);
    v45 = [v42 fp_isPackage];
    v46 = MEMORY[0x1E695DFF8];
    if (v45)
    {
      v47 = [v42 lastPathComponent];
      [v46 fp_createEmptyTempPackageWithName:v47 completion:v44];
    }

    else
    {
      v47 = [v42 lastPathComponent];
      [v46 fp_createEmptyTempFileWithName:v47 completion:v44];
    }
  }

  else
  {
    if ([v82 requiresCrossDeviceCopy])
    {
      v48 = 1;
    }

    else
    {
      v49 = objc_loadWeakRetained(&self->_writer);
      v50 = [v49 info];
      v51 = [v50 byCopy];
      if (v21 == v23)
      {
        v52 = v51;
      }

      else
      {
        v52 = 1;
      }

      if (v52)
      {
        v48 = 1;
      }

      else
      {
        getpid();
        v53 = [v78 path];
        v54 = v53;
        v55 = [v53 fileSystemRepresentation];
        v56 = (*MEMORY[0x1E69E9BD0] | *MEMORY[0x1E69E9BC8]);
        v69 = v55;
        v48 = sandbox_check() == 1;
      }
    }

    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke;
    v99[3] = &unk_1E83C1268;
    v106 = v74;
    v57 = v78;
    v100 = v57;
    v101 = self;
    v107 = v75;
    v102 = v76;
    v103 = v16;
    v58 = v72;
    v104 = v58;
    v105 = v73;
    v108 = v48;
    v59 = _Block_copy(v99);
    v60 = [v82 requiresCrossDeviceCopy];
    if (v21 == v23)
    {
      v61 = v60;
    }

    else
    {
      v61 = 1;
    }

    v62 = objc_loadWeakRetained(&self->_writer);
    v63 = [v62 queue];
    if (v61)
    {
      v64 = [v82 size];
    }

    else
    {
      v64 = 0;
    }

    v65 = [v57 fp_copyToTempFolderWithFilename:v58 queue:v63 precomputedItemSize:v64 completion:{v59, v69, v70}];

    if (v61)
    {
      (*(v71 + 2))(v71, v65);
    }
  }

  _FPRestorePersona();
  v66 = *MEMORY[0x1E69E9840];
}

void __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  (*(*(a1 + 80) + 16))();
  if (v7)
  {
    v32 = v9;
    v10 = [MEMORY[0x1E6967408] wrapperWithURL:v7 extensionClass:"com.apple.fileprovider.read-write" error:&v32];
    v11 = v32;

    if (v10)
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      v15 = *(a1 + 64);
      v16 = *(a1 + 72);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_2;
      v24[3] = &unk_1E83C1240;
      v24[4] = v12;
      v25 = *(a1 + 32);
      v26 = v8;
      v28 = *(a1 + 96);
      v27 = *(a1 + 88);
      [v12 _createTargetItemWithProxy:v13 target:v14 contents:v10 targetName:v15 lastUsedDate:v16 completionHandler:v24];

      v17 = v25;
    }

    else
    {
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_cold_1();
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
      v23 = [WeakRetained queue];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_10;
      v29[3] = &unk_1E83BF450;
      v31 = *(a1 + 88);
      v11 = v11;
      v30 = v11;
      dispatch_async(v23, v29);

      v17 = v31;
    }
  }

  else
  {
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_cold_2();
    }

    v19 = objc_loadWeakRetained((*(a1 + 40) + 8));
    v20 = [v19 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_6;
    block[3] = &unk_1E83BF450;
    v35 = *(a1 + 88);
    v11 = v9;
    v34 = v11;
    dispatch_async(v20, block);

    v10 = v35;
  }
}

uint64_t __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_6(uint64_t a1)
{
  return (*(*(a1 + 40) + 16))(*(a1 + 40), 0, *(a1 + 32));
}

{
  return [*(a1 + 32) _postImportStepForItem:0 sourceURL:*(a1 + 40) targetURL:*(a1 + 48) tempFolder:*(a1 + 56) wasCopyRequested:1 error:*(a1 + 64) completion:*(a1 + 72)];
}

void __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [a2 url];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v11 = [WeakRetained coordinator];
  [v11 startAccessingURLForAtomDuration:v9];

  v12 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v13 = [v12 coordinator];
  v14 = *(a1 + 40);
  v15 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v16 = [v15 operation];
  v17 = [v16 request];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_4;
  v21[3] = &unk_1E83C1308;
  v21[4] = *(a1 + 32);
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  v24 = v7;
  v25 = *(a1 + 40);
  v26 = v9;
  v27 = v8;
  v28 = *(a1 + 64);
  v29 = *(a1 + 72);
  v18 = v8;
  v19 = v9;
  v20 = v7;
  [v13 coordinateForCopyingFromURL:v14 toURL:v19 request:v17 handler:v21];
}

void __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_4(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = *(a1 + 32);
  v10 = a3;
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((v9 + 8));
  v13 = [WeakRetained queue];
  v14 = [*(a1 + 40) size];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_5;
  v21[3] = &unk_1E83C12E0;
  v28 = v8;
  v22 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 32);
  v23 = v15;
  v24 = v16;
  v25 = *(a1 + 64);
  v26 = *(a1 + 72);
  v27 = *(a1 + 80);
  v29 = *(a1 + 88);
  v17 = v8;
  v18 = [v11 fp_copyToURL:v10 queue:v13 precomputedItemSize:v14 replacePlaceholder:1 ignoreVFSSkipMtime:0 completion:v21];

  (*(*(a1 + 96) + 16))(*(a1 + 96), v18, v19, v20);
}

void __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 80) + 16))();
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [*(a1 + 40) itemID];
    v7 = [*(a1 + 40) itemVersion];
    v24 = v5;
    v8 = objc_opt_new();
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_6;
    v30[3] = &unk_1E83C1290;
    v9 = &v31 + 1;
    v10 = &v32;
    v11 = &v32 + 1;
    v23 = *(a1 + 48);
    v12 = *(&v23 + 1);
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    *&v15 = v13;
    *(&v15 + 1) = v14;
    v31 = v23;
    v32 = v15;
    v16 = &v33;
    v33 = v4;
    v34 = *(a1 + 88);
    v17 = [v24 deleteItemWithID:v6 baseVersion:v7 options:0 request:v8 completionHandler:v30];
  }

  else
  {
    v18 = *(a1 + 64);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_7;
    v26[3] = &unk_1E83C12B8;
    v9 = &v27 + 1;
    v10 = &v28;
    v11 = &v28 + 1;
    v25 = *(a1 + 48);
    v19 = *(&v25 + 1);
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    *&v22 = v20;
    *(&v22 + 1) = v21;
    v27 = v25;
    v28 = v22;
    v16 = &v29;
    v29 = *(a1 + 88);
    [v5 itemForURL:v18 completionHandler:v26];
  }
}

void __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  (*(*(a1 + 80) + 16))();
  if (v7)
  {
    v36 = v9;
    v10 = [MEMORY[0x1E6967408] wrapperWithURL:v7 extensionClass:"com.apple.fileprovider.read-write" error:&v36];
    v11 = v36;

    if (v10)
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      v15 = *(a1 + 72);
      v26 = *(a1 + 64);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_2_20;
      v27[3] = &unk_1E83C13A8;
      v16 = v28;
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v28[0] = v17;
      v28[1] = v18;
      v31 = *(a1 + 88);
      v29 = *(a1 + 48);
      v32 = *(a1 + 96);
      v30 = v8;
      [v12 _createTargetItemWithProxy:v13 target:v14 contents:v10 targetName:v26 lastUsedDate:v15 completionHandler:v27];

      v19 = v31;
    }

    else
    {
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_cold_1();
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
      v25 = [WeakRetained queue];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_19;
      v33[3] = &unk_1E83BF450;
      v16 = &v35;
      v35 = *(a1 + 88);
      v34 = v11;
      dispatch_async(v25, v33);

      v19 = v34;
    }
  }

  else
  {
    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_8_cold_2();
    }

    v21 = objc_loadWeakRetained((*(a1 + 40) + 8));
    v22 = [v21 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_18;
    block[3] = &unk_1E83BF450;
    v39 = *(a1 + 88);
    v11 = v9;
    v38 = v11;
    dispatch_async(v22, block);

    v10 = v39;
  }
}

void __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_2_20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 48);
    v8 = [v5 itemID];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_2_22;
    v18[3] = &unk_1E83C1380;
    v9 = &v19;
    v19 = v5;
    v10 = &v20;
    *&v11 = *(a1 + 32);
    *(&v11 + 1) = *(a1 + 40);
    v17 = v11;
    v12 = *(a1 + 64);
    v22 = *(a1 + 72);
    *&v13 = *(a1 + 56);
    *(&v13 + 1) = v12;
    v20 = v17;
    v21 = v13;
    [v7 URLForItemID:v8 creatingPlaceholderIfMissing:0 ignoreAlternateContentsURL:0 completionHandler:v18];
  }

  else
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_2_20_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
    v16 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_21;
    block[3] = &unk_1E83BF450;
    v9 = &v25;
    v25 = *(a1 + 64);
    v10 = &v24;
    v24 = v6;
    dispatch_async(v16, block);
  }
}

void __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_2_22(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
    v9 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_2_24;
    block[3] = &unk_1E83C1358;
    v10 = &v23;
    v23 = *(a1 + 72);
    v11 = &v19;
    v19 = v6;
    v20 = *(a1 + 32);
    v21 = *(a1 + 56);
    v22 = v7;
    v12 = v7;
    dispatch_async(v9, block);

    v13 = v20;
  }

  else
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_2_22_cold_1();
    }

    v13 = objc_loadWeakRetained((*(a1 + 48) + 8));
    v15 = [v13 queue];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_23;
    v24[3] = &unk_1E83BF450;
    v10 = &v26;
    v16 = *(a1 + 64);
    v11 = &v25;
    v25 = v7;
    v26 = v16;
    v17 = v7;
    dispatch_async(v15, v24);
  }
}

- (void)_postImportStepForItem:(id)a3 sourceURL:(id)a4 targetURL:(id)a5 tempFolder:(id)a6 wasCopyRequested:(BOOL)a7 error:(id)a8 completion:(id)a9
{
  v40 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v21 = objc_opt_new();
  if (v19)
  {
    v22 = fp_current_or_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [FPDMoveWriterToProvider _postImportStepForItem:sourceURL:targetURL:tempFolder:wasCopyRequested:error:completion:];
    }
  }

  v43 = v17;
  v44 = v16;
  if (v18)
  {
    [v21 removeItemAtURL:v18 error:{0, v40}];
  }

  v41 = v18;
  WeakRetained = objc_loadWeakRetained(&self->_writer);
  v24 = [WeakRetained info];
  v25 = [v24 byCopy];

  if (v25 && !a7)
  {
    [FPDMoveWriterToProvider _postImportStepForItem:v40 sourceURL:self targetURL:? tempFolder:? wasCopyRequested:? error:? completion:?];
  }

  v26 = v21;
  v42 = v15;
  if (!v15 || v19)
  {
    v35 = objc_loadWeakRetained(&self->_writer);
    v36 = [v35 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __115__FPDMoveWriterToProvider__postImportStepForItem_sourceURL_targetURL_tempFolder_wasCopyRequested_error_completion___block_invoke_2;
    block[3] = &unk_1E83BF450;
    v27 = &v47;
    v47 = v20;
    v29 = &v46;
    v46 = v19;
    v37 = v20;
    dispatch_async(v36, block);

    v34 = v43;
    v30 = v44;
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __115__FPDMoveWriterToProvider__postImportStepForItem_sourceURL_targetURL_tempFolder_wasCopyRequested_error_completion___block_invoke;
    aBlock[3] = &unk_1E83C1420;
    v27 = &v49;
    v28 = v15;
    v49 = v28;
    v29 = &v50;
    v30 = v44;
    v50 = v44;
    v54 = a7;
    v51 = v26;
    v52 = self;
    v53 = v20;
    v31 = v20;
    v32 = _Block_copy(aBlock);
    v33 = v32;
    v34 = v43;
    if (v43)
    {
      (*(v32 + 2))(v32, v43, 0);
    }

    else
    {
      v38 = objc_loadWeakRetained(&self->_writer);
      v39 = [v38 coordinator];
      [v39 resolveItem:v28 completion:v33];

      v34 = 0;
      v30 = v44;
    }

    v35 = v51;
  }
}

void __115__FPDMoveWriterToProvider__postImportStepForItem_sourceURL_targetURL_tempFolder_wasCopyRequested_error_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __115__FPDMoveWriterToProvider__postImportStepForItem_sourceURL_targetURL_tempFolder_wasCopyRequested_error_completion___block_invoke_cold_1((a1 + 32), v6);
    }

    v9 = v7;
    v7 = 0;
    goto LABEL_5;
  }

  v19 = *(a1 + 40);
  v31 = 0;
  [v5 fp_associateThumbnailFromDocumentAtURL:v19 error:&v31];
  v10 = v31;
  if (v10)
  {
    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v24 = [*(a1 + 40) fp_shortDescription];
      v25 = [v10 fp_prettyDescription];
      *buf = 138412802;
      v33 = v5;
      v34 = 2112;
      v35 = v24;
      v36 = 2112;
      v37 = v25;
      _os_log_error_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_ERROR, "[ERROR] couldn't generate thumbnail for %@ from %@; %@", buf, 0x20u);
    }
  }

  if ((*(a1 + 72) & 1) == 0)
  {
    v22 = *(a1 + 40);
    v21 = *(a1 + 48);
    v30 = v10;
    v23 = [v21 removeItemAtURL:v22 error:&v30];
    v9 = v30;

    if (v23)
    {
      goto LABEL_6;
    }

    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __115__FPDMoveWriterToProvider__postImportStepForItem_sourceURL_targetURL_tempFolder_wasCopyRequested_error_completion___block_invoke_cold_2();
    }

LABEL_5:

LABEL_6:
    v10 = v9;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 56) + 8));
  v12 = [WeakRetained coordinator];
  [v12 stopAccessingURL:v5];

  v13 = objc_loadWeakRetained((*(a1 + 56) + 8));
  v14 = [v13 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __115__FPDMoveWriterToProvider__postImportStepForItem_sourceURL_targetURL_tempFolder_wasCopyRequested_error_completion___block_invoke_35;
  block[3] = &unk_1E83C13F8;
  v15 = *(a1 + 64);
  v28 = v6;
  v29 = v15;
  v27 = v7;
  v16 = v6;
  v17 = v7;
  dispatch_async(v14, block);

  v18 = *MEMORY[0x1E69E9840];
}

void __115__FPDMoveWriterToProvider__postImportStepForItem_sourceURL_targetURL_tempFolder_wasCopyRequested_error_completion___block_invoke_35(void *a1)
{
  v2 = a1[6];
  v3 = [MEMORY[0x1E69672A8] locatorForItem:a1[4]];
  (*(v2 + 16))(v2, v3, a1[5]);
}

- (void)performCopyOfItem:(id)a3 to:(id)a4 as:(id)a5 sourceMaterializeOption:(unint64_t)a6 targetMaterializeOption:(unint64_t)a7 completion:(id)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a8;
  WeakRetained = objc_loadWeakRetained(&self->_writer);
  v17 = [WeakRetained coordinator];
  v18 = objc_loadWeakRetained(&self->_writer);
  v19 = [v18 operation];
  v20 = [v19 request];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __110__FPDMoveWriterToProvider_performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_completion___block_invoke;
  v25[3] = &unk_1E83C1470;
  v25[4] = self;
  v26 = v12;
  v28 = v14;
  v29 = v15;
  v27 = v13;
  v21 = v14;
  v22 = v13;
  v23 = v15;
  v24 = v12;
  [v17 resolveItemOrURL:v24 recursively:1 coordinateIfExport:1 request:v20 handler:v25];
}

void __110__FPDMoveWriterToProvider_performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v11 = [WeakRetained queue];
  dispatch_assert_queue_V2(v11);

  if (!v8)
  {
    v13 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v14 = [v13 info];
    v15 = [v14 lastUsedDatePolicy];

    if (v15 == 1)
    {
      if (![*(a1 + 40) isProviderItem])
      {
        v16 = [MEMORY[0x1E695DF00] distantPast];
        goto LABEL_12;
      }

      v17 = [*(a1 + 40) asFPItem];
      v18 = [v17 lastUsedDate];
    }

    else
    {
      if (v15 == 2)
      {
        v16 = [MEMORY[0x1E695DF00] date];
LABEL_12:
        v18 = v16;
        goto LABEL_13;
      }

      v18 = 0;
    }

LABEL_13:
    v20 = *(a1 + 32);
    v19 = *(a1 + 40);
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __110__FPDMoveWriterToProvider_performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_completion___block_invoke_39;
    v23[3] = &unk_1E83C1448;
    v23[4] = v20;
    v24 = v19;
    [v20 _importURL:v7 source:v24 target:v21 as:v22 lastUsedDate:v18 initialImportFinished:v9 progressAvailable:v23 completion:*(a1 + 64)];

    goto LABEL_14;
  }

  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    __110__FPDMoveWriterToProvider_performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_completion___block_invoke_cold_1(a1, v8);
  }

  (*(*(a1 + 64) + 16))();
LABEL_14:
}

void __110__FPDMoveWriterToProvider_performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_completion___block_invoke_39(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 8));
  [WeakRetained setProgress:v4 forRoot:*(a1 + 40)];
}

- (void)performMoveOfItem:(id)a3 to:(id)a4 as:(id)a5 sourceMaterializeOption:(unint64_t)a6 targetMaterializeOption:(unint64_t)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  if ([v14 isProviderItem])
  {
    v18 = [v14 asFPItem];
    v19 = [v18 strippedCopy];

    v20 = [v15 asFPItem];
    v21 = [v20 itemIdentifier];
    [v19 setParentItemIdentifier:v21];

    v22 = [v14 asFPItem];
    v23 = [v22 filename];
    v24 = [v23 isEqualToString:v16];

    if (v24)
    {
      v25 = 4;
    }

    else
    {
      [v19 setFilename:v16];
      v25 = 6;
    }

    WeakRetained = objc_loadWeakRetained(&self->_writer);
    v34 = [WeakRetained info];
    v35 = [v34 lastUsedDatePolicy];

    v43 = v19;
    if (v35 == 2)
    {
      v36 = [MEMORY[0x1E695DF00] date];
      [v19 setLastUsedDate:v36];

      v25 |= 8uLL;
    }

    v37 = [(FPDMoveWriterToProvider *)self _remoteProxy];
    v38 = [v37 synchronousRemoteObjectProxy];
    v39 = objc_loadWeakRetained(&self->_writer);
    v40 = [v39 info];
    v41 = [v40 shouldBounce];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __110__FPDMoveWriterToProvider_performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_completion___block_invoke;
    v48[3] = &unk_1E83C12B8;
    v48[4] = self;
    v49 = v14;
    v50 = v15;
    v51 = v16;
    v52 = v17;
    v32 = v17;
    v29 = v15;
    v30 = v14;
    v31 = v43;
    [v38 singleItemChange:v43 changedFields:v42 bounce:v41 completionHandler:v48];
  }

  else
  {
    v26 = objc_loadWeakRetained(&self->_writer);
    v27 = [v26 coordinator];
    v28 = [v14 asURL];
    [v27 startAccessingURLForAtomDuration:v28];

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __110__FPDMoveWriterToProvider_performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_completion___block_invoke_2_43;
    v44[3] = &unk_1E83C14C0;
    v45 = v14;
    v46 = v15;
    v47 = v17;
    v29 = v17;
    v30 = v15;
    v31 = v14;
    [(FPDMoveWriterToProvider *)self performCopyOfItem:v31 to:v30 as:v16 sourceMaterializeOption:a6 targetMaterializeOption:a7 completion:v44];

    v32 = v45;
  }
}

void __110__FPDMoveWriterToProvider_performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v8 = [WeakRetained queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110__FPDMoveWriterToProvider_performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_completion___block_invoke_2;
  block[3] = &unk_1E83C1498;
  v18 = v6;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  *&v13 = v11;
  *(&v13 + 1) = *(a1 + 32);
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v19 = v14;
  v20 = v13;
  v21 = v5;
  v22 = v12;
  v15 = v5;
  v16 = v6;
  dispatch_async(v8, block);
}

void __110__FPDMoveWriterToProvider_performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_completion___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __110__FPDMoveWriterToProvider_performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_completion___block_invoke_2_cold_1(a1, v2);
    }

    v4 = *(a1 + 32);
    (*(*(a1 + 80) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 64) + 8));
    v6 = [WeakRetained operation];
    v7 = [v6 manager];
    v8 = [*(a1 + 72) itemID];
    v9 = [v7 domainFromItemID:v8 reason:0];

    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __110__FPDMoveWriterToProvider_performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_completion___block_invoke_2_cold_2((a1 + 72), v10);
    }

    v11 = [*(a1 + 72) itemID];
    v12 = objc_loadWeakRetained((*(a1 + 64) + 8));
    v13 = [v12 operation];
    v14 = [v13 request];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __110__FPDMoveWriterToProvider_performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_completion___block_invoke_42;
    v15[3] = &unk_1E83C0188;
    v16 = *(a1 + 72);
    v17 = *(a1 + 80);
    [v9 forceIngestionForItemID:v11 request:v14 completionHandler:v15];
  }
}

void __110__FPDMoveWriterToProvider_performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_completion___block_invoke_42(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if ([v5 fp_isFeatureUnsupportedError])
  {

    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = (v7 + 16);
    v9 = v6;
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = (v7 + 16);
    if (v5)
    {
      (*(v7 + 16))(*(a1 + 40), 0, v5);
      goto LABEL_9;
    }

    v9 = v11;
  }

  v10 = v9;
  v11 = v9;
  if (!v9)
  {
    v10 = *(a1 + 32);
  }

  v5 = [MEMORY[0x1E69672A8] locatorForItem:v10];
  (*v8)(v7, v5, 0);
LABEL_9:
}

void __110__FPDMoveWriterToProvider_performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_completion___block_invoke_2_43(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6 && (([*(a1 + 32) requiresCrossDeviceCopy] & 1) != 0 || objc_msgSend(*(a1 + 40), "requiresCrossDeviceCopy")))
  {
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [*(a1 + 32) asURL];
    v12 = 0;
    v9 = [v7 removeItemAtURL:v8 error:&v12];
    v10 = v12;

    if ((v9 & 1) == 0)
    {
      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __110__FPDMoveWriterToProvider_performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_completion___block_invoke_2_43_cold_1(v10);
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_createFolder:(id)a3 under:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v28 = a5;
  v10 = objc_alloc(MEMORY[0x1E6967388]);
  v11 = [v9 asFPItem];
  v12 = [v11 providerDomainID];
  v13 = [v9 asFPItem];
  v14 = [v13 itemIdentifier];
  v26 = [v10 initWithProviderDomainID:v12 itemIdentifier:@"__" parentItemIdentifier:v14 filename:v8 isDirectory:1];

  v30 = [(FPDMoveWriterToProvider *)self _remoteProxy];
  v24 = [v30 synchronousRemoteObjectProxy];
  WeakRetained = objc_loadWeakRetained(&self->_writer);
  v25 = [WeakRetained operation];
  v15 = [v25 request];
  v16 = [(FPDMoveWriterToProvider *)self _targetSession];
  v17 = [v15 nsfpRequestForSession:v16];
  v18 = objc_loadWeakRetained(&self->_writer);
  v19 = [v18 info];
  v20 = [v19 shouldBounce];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __58__FPDMoveWriterToProvider__createFolder_under_completion___block_invoke;
  v31[3] = &unk_1E83C1510;
  v31[4] = self;
  v32 = v8;
  v33 = v9;
  v34 = v28;
  v29 = v28;
  v21 = v9;
  v22 = v8;
  v23 = [v24 createItemBasedOnTemplate:v26 fields:6 contents:0 options:0x10000 request:v17 bounce:v20 completionHandler:v31];
}

void __58__FPDMoveWriterToProvider__createFolder_under_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a2;
  v9 = a6;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v11 = [WeakRetained queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__FPDMoveWriterToProvider__createFolder_under_completion___block_invoke_2;
  block[3] = &unk_1E83C14E8;
  v16 = v9;
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v12 = *(a1 + 56);
  v19 = v8;
  v20 = v12;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, block);
}

void __58__FPDMoveWriterToProvider__createFolder_under_completion___block_invoke_2(void *a1)
{
  v2 = (a1 + 4);
  if (a1[4])
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __58__FPDMoveWriterToProvider__createFolder_under_completion___block_invoke_2_cold_1(a1, v2);
    }
  }

  v4 = a1[8];
  v5 = [MEMORY[0x1E69672A8] locatorForItem:a1[7]];
  (*(v4 + 16))(v4, v5, a1[4]);
}

- (void)performMoveOfFolder:(id)a3 to:(id)a4 as:(id)a5 sourceMaterializeOption:(unint64_t)a6 targetMaterializeOption:(unint64_t)a7 atomically:(BOOL)a8 completion:(id)a9
{
  v9 = a8;
  v20 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a9;
  if (([v15 isProviderItem] & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ unexpected url"];
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [(FPDProcessMonitor *)v18 _addPIDToObserve:v19];
    }

    __assert_rtn("-[FPDMoveWriterToProvider performMoveOfFolder:to:as:sourceMaterializeOption:targetMaterializeOption:atomically:completion:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/move/FPDMoveWriterToProvider.m", 486, [v18 UTF8String]);
  }

  if (v9)
  {
    [(FPDMoveWriterToProvider *)self performMoveOfItem:v20 to:v15 as:v16 sourceMaterializeOption:a6 targetMaterializeOption:a7 completion:v17];
  }

  else
  {
    [(FPDMoveWriterToProvider *)self _createFolder:v16 under:v15 completion:v17];
  }
}

void __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v1 = *MEMORY[0x1E69E9840];
  [OUTLINED_FUNCTION_8(v2) fp_shortDescription];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_5_4() fp_prettyDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_11();
  v1 = *MEMORY[0x1E69E9840];
  [OUTLINED_FUNCTION_8(v2) fp_shortDescription];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_5_4() fp_prettyDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_8_cold_2()
{
  OUTLINED_FUNCTION_11();
  v1 = *MEMORY[0x1E69E9840];
  [OUTLINED_FUNCTION_8(v2) fp_shortDescription];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_5_4() fp_prettyDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_2_20_cold_1()
{
  OUTLINED_FUNCTION_11();
  v1 = *MEMORY[0x1E69E9840];
  [OUTLINED_FUNCTION_8(v2) fp_shortDescription];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_5_4() fp_prettyDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_2_22_cold_1()
{
  OUTLINED_FUNCTION_11();
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 32);
  [*(v1 + 40) fp_shortDescription];
  objc_claimAutoreleasedReturnValue();
  v9 = [OUTLINED_FUNCTION_5_4() fp_prettyDescription];
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_postImportStepForItem:sourceURL:targetURL:tempFolder:wasCopyRequested:error:completion:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v9 = *MEMORY[0x1E69E9840];
  [v1 fp_shortDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_5_4() fp_prettyDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_postImportStepForItem:(uint64_t)a1 sourceURL:(uint64_t)a2 targetURL:tempFolder:wasCopyRequested:error:completion:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPDMoveWriterToProvider.m" lineNumber:290 description:@"byCopy set but wasCopyRequested NO"];
}

void __115__FPDMoveWriterToProvider__postImportStepForItem_sourceURL_targetURL_tempFolder_wasCopyRequested_error_completion___block_invoke_cold_1(uint64_t *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __115__FPDMoveWriterToProvider__postImportStepForItem_sourceURL_targetURL_tempFolder_wasCopyRequested_error_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_11();
  v9 = *MEMORY[0x1E69E9840];
  [*v1 fp_shortDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_5_4() fp_prettyDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __110__FPDMoveWriterToProvider_performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __110__FPDMoveWriterToProvider_performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_completion___block_invoke_2_cold_1(void *a1, id *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = [*a2 fp_prettyDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Au);

  v11 = *MEMORY[0x1E69E9840];
}

void __110__FPDMoveWriterToProvider_performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_completion___block_invoke_2_cold_2(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] move-writer: forcing ingestion of %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __110__FPDMoveWriterToProvider_performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_completion___block_invoke_2_43_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void __58__FPDMoveWriterToProvider__createFolder_under_completion___block_invoke_2_cold_1(uint64_t a1, id *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*a2 fp_prettyDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
}

@end