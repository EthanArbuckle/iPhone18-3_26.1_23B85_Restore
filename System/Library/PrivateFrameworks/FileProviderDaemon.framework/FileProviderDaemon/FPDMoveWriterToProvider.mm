@interface FPDMoveWriterToProvider
- (FPDMoveWriterToProvider)initWithWriter:(id)writer;
- (id)_remoteProxy;
- (id)_targetSession;
- (void)_createFolder:(id)folder under:(id)under completion:(id)completion;
- (void)_createTargetItemWithProxy:(id)proxy target:(id)target contents:(id)contents targetName:(id)name lastUsedDate:(id)date completionHandler:(id)handler;
- (void)_importURL:(id)l source:(id)source target:(id)target as:(id)as lastUsedDate:(id)date initialImportFinished:(id)finished progressAvailable:(id)available completion:(id)self0;
- (void)_postImportStepForItem:(id)item sourceURL:(id)l targetURL:(id)rL tempFolder:(id)folder wasCopyRequested:(BOOL)requested error:(id)error completion:(id)completion;
- (void)dealloc;
- (void)performCopyOfItem:(id)item to:(id)to as:(id)as sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)materializeOption completion:(id)completion;
- (void)performMoveOfFolder:(id)folder to:(id)to as:(id)as sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)materializeOption atomically:(BOOL)atomically completion:(id)completion;
- (void)performMoveOfItem:(id)item to:(id)to as:(id)as sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)materializeOption completion:(id)completion;
@end

@implementation FPDMoveWriterToProvider

- (FPDMoveWriterToProvider)initWithWriter:(id)writer
{
  writerCopy = writer;
  v12.receiver = self;
  v12.super_class = FPDMoveWriterToProvider;
  v5 = [(FPDMoveWriterToProvider *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_writer, writerCopy);
    info = [writerCopy info];
    targetFolder = [info targetFolder];
    startAccessingLocator = [targetFolder startAccessingLocator];
    stopAccessingToken = v6->_stopAccessingToken;
    v6->_stopAccessingToken = startAccessingLocator;
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
  info = [WeakRetained info];
  targetFolder = [info targetFolder];
  asFPItem = [targetFolder asFPItem];
  itemID = [asFPItem itemID];

  v8 = objc_loadWeakRetained(&self->_writer);
  operation = [v8 operation];
  manager = [operation manager];

  providerID = [itemID providerID];
  v12 = [manager providerWithIdentifier:providerID reason:0];
  domainIdentifier = [itemID domainIdentifier];
  v14 = [v12 domainForIdentifier:domainIdentifier reason:0];

  session = [v14 session];

  return session;
}

- (id)_remoteProxy
{
  _targetSession = [(FPDMoveWriterToProvider *)self _targetSession];
  v3 = [_targetSession newFileProviderProxyWithTimeout:0 pid:180.0];

  return v3;
}

- (void)_createTargetItemWithProxy:(id)proxy target:(id)target contents:(id)contents targetName:(id)name lastUsedDate:(id)date completionHandler:(id)handler
{
  proxyCopy = proxy;
  contentsCopy = contents;
  handlerCopy = handler;
  dateCopy = date;
  nameCopy = name;
  targetCopy = target;
  WeakRetained = objc_loadWeakRetained(&self->_writer);
  operation = [WeakRetained operation];
  manager = [operation manager];
  asFPItem = [targetCopy asFPItem];
  itemID = [asFPItem itemID];
  v36 = [manager domainFromItemID:itemID reason:0];

  v21 = objc_alloc(MEMORY[0x1E6967388]);
  asFPItem2 = [targetCopy asFPItem];
  providerDomainID = [asFPItem2 providerDomainID];
  asFPItem3 = [targetCopy asFPItem];

  itemIdentifier = [asFPItem3 itemIdentifier];
  v26 = [v21 initWithProviderDomainID:providerDomainID itemIdentifier:@"__" parentItemIdentifier:itemIdentifier filename:nameCopy isDirectory:0];

  [v26 setLastUsedDate:dateCopy];
  v38 = objc_loadWeakRetained(&self->_writer);
  operation2 = [v38 operation];
  request = [operation2 request];
  session = [v36 session];
  v29 = [request nsfpRequestForSession:session];
  v30 = objc_loadWeakRetained(&self->_writer);
  info = [v30 info];
  shouldBounce = [info shouldBounce];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __112__FPDMoveWriterToProvider__createTargetItemWithProxy_target_contents_targetName_lastUsedDate_completionHandler___block_invoke;
  v42[3] = &unk_1E83C1218;
  v43 = handlerCopy;
  v33 = handlerCopy;
  v34 = [proxyCopy createItemBasedOnTemplate:v26 fields:14 contents:contentsCopy options:0x10000 request:v29 bounce:shouldBounce completionHandler:v42];
}

- (void)_importURL:(id)l source:(id)source target:(id)target as:(id)as lastUsedDate:(id)date initialImportFinished:(id)finished progressAvailable:(id)available completion:(id)self0
{
  v115 = *MEMORY[0x1E69E9840];
  lCopy = l;
  sourceCopy = source;
  targetCopy = target;
  asCopy = as;
  dateCopy = date;
  finishedCopy = finished;
  availableCopy = available;
  completionCopy = completion;
  _remoteProxy = [(FPDMoveWriterToProvider *)self _remoteProxy];
  WeakRetained = objc_loadWeakRetained(&self->_writer);
  operation = [WeakRetained operation];
  manager = [operation manager];

  v77 = [manager domainForActionOperationLocator:sourceCopy];
  v19 = [manager domainForActionOperationLocator:targetCopy];
  nsDomain = [v77 nsDomain];
  personaIdentifier = [nsDomain personaIdentifier];
  nsDomain2 = [v19 nsDomain];
  personaIdentifier2 = [nsDomain2 personaIdentifier];

  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v110 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  nsDomain3 = [v19 nsDomain];
  personaIdentifier3 = [nsDomain3 personaIdentifier];
  v27 = personaIdentifier3;
  if (userPersonaUniqueString == personaIdentifier3)
  {

LABEL_13:
    v70 = 0;
    goto LABEL_14;
  }

  nsDomain4 = [v19 nsDomain];
  personaIdentifier4 = [nsDomain4 personaIdentifier];
  v30 = [userPersonaUniqueString isEqualToString:personaIdentifier4];

  if ((v30 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_13;
  }

  v109 = 0;
  v31 = [currentPersona copyCurrentPersonaContextWithError:&v109];
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

  nsDomain5 = [v19 nsDomain];
  personaIdentifier5 = [nsDomain5 personaIdentifier];
  v70 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier5];

  if (!v70)
  {
    goto LABEL_13;
  }

  v37 = fp_current_or_default_log();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    nsDomain6 = [v19 nsDomain];
    personaIdentifier6 = [nsDomain6 personaIdentifier];
    *buf = 138412546;
    v112 = personaIdentifier6;
    v113 = 2112;
    v114 = v70;
    _os_log_error_impl(&dword_1CEFC7000, v37, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
  }

LABEL_14:
  if ([targetCopy requiresCrossDeviceCopy])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_3;
    aBlock[3] = &unk_1E83C1330;
    aBlock[4] = self;
    v38 = lCopy;
    v94 = v38;
    v95 = sourceCopy;
    v39 = _remoteProxy;
    v96 = v39;
    v40 = completionCopy;
    v97 = v40;
    v98 = availableCopy;
    v41 = _Block_copy(aBlock);
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke_8;
    v83[3] = &unk_1E83C13D0;
    v90 = finishedCopy;
    v42 = v38;
    v84 = v42;
    selfCopy = self;
    v91 = v40;
    v86 = v39;
    v87 = targetCopy;
    v88 = asCopy;
    v89 = dateCopy;
    v43 = v41;
    v92 = v43;
    v44 = _Block_copy(v83);
    fp_isPackage = [v42 fp_isPackage];
    v46 = MEMORY[0x1E695DFF8];
    if (fp_isPackage)
    {
      lastPathComponent = [v42 lastPathComponent];
      [v46 fp_createEmptyTempPackageWithName:lastPathComponent completion:v44];
    }

    else
    {
      lastPathComponent = [v42 lastPathComponent];
      [v46 fp_createEmptyTempFileWithName:lastPathComponent completion:v44];
    }
  }

  else
  {
    if ([sourceCopy requiresCrossDeviceCopy])
    {
      v48 = 1;
    }

    else
    {
      v49 = objc_loadWeakRetained(&self->_writer);
      info = [v49 info];
      byCopy = [info byCopy];
      if (personaIdentifier == personaIdentifier2)
      {
        v52 = byCopy;
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
        path = [lCopy path];
        v54 = path;
        fileSystemRepresentation = [path fileSystemRepresentation];
        v56 = (*MEMORY[0x1E69E9BD0] | *MEMORY[0x1E69E9BC8]);
        v69 = fileSystemRepresentation;
        v48 = sandbox_check() == 1;
      }
    }

    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = __119__FPDMoveWriterToProvider__importURL_source_target_as_lastUsedDate_initialImportFinished_progressAvailable_completion___block_invoke;
    v99[3] = &unk_1E83C1268;
    v106 = finishedCopy;
    v57 = lCopy;
    v100 = v57;
    selfCopy2 = self;
    v107 = completionCopy;
    v102 = _remoteProxy;
    v103 = targetCopy;
    v58 = asCopy;
    v104 = v58;
    v105 = dateCopy;
    v108 = v48;
    v59 = _Block_copy(v99);
    requiresCrossDeviceCopy = [sourceCopy requiresCrossDeviceCopy];
    if (personaIdentifier == personaIdentifier2)
    {
      v61 = requiresCrossDeviceCopy;
    }

    else
    {
      v61 = 1;
    }

    v62 = objc_loadWeakRetained(&self->_writer);
    queue = [v62 queue];
    if (v61)
    {
      v64 = [sourceCopy size];
    }

    else
    {
      v64 = 0;
    }

    v65 = [v57 fp_copyToTempFolderWithFilename:v58 queue:queue precomputedItemSize:v64 completion:{v59, v69, v70}];

    if (v61)
    {
      (*(availableCopy + 2))(availableCopy, v65);
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

- (void)_postImportStepForItem:(id)item sourceURL:(id)l targetURL:(id)rL tempFolder:(id)folder wasCopyRequested:(BOOL)requested error:(id)error completion:(id)completion
{
  v40 = a2;
  itemCopy = item;
  lCopy = l;
  rLCopy = rL;
  folderCopy = folder;
  errorCopy = error;
  completionCopy = completion;
  v21 = objc_opt_new();
  if (errorCopy)
  {
    v22 = fp_current_or_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [FPDMoveWriterToProvider _postImportStepForItem:sourceURL:targetURL:tempFolder:wasCopyRequested:error:completion:];
    }
  }

  v43 = rLCopy;
  v44 = lCopy;
  if (folderCopy)
  {
    [v21 removeItemAtURL:folderCopy error:{0, v40}];
  }

  v41 = folderCopy;
  WeakRetained = objc_loadWeakRetained(&self->_writer);
  info = [WeakRetained info];
  byCopy = [info byCopy];

  if (byCopy && !requested)
  {
    [FPDMoveWriterToProvider _postImportStepForItem:v40 sourceURL:self targetURL:? tempFolder:? wasCopyRequested:? error:? completion:?];
  }

  v26 = v21;
  v42 = itemCopy;
  if (!itemCopy || errorCopy)
  {
    v35 = objc_loadWeakRetained(&self->_writer);
    queue = [v35 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __115__FPDMoveWriterToProvider__postImportStepForItem_sourceURL_targetURL_tempFolder_wasCopyRequested_error_completion___block_invoke_2;
    block[3] = &unk_1E83BF450;
    v27 = &v47;
    v47 = completionCopy;
    v29 = &v46;
    v46 = errorCopy;
    v37 = completionCopy;
    dispatch_async(queue, block);

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
    v28 = itemCopy;
    v49 = v28;
    v29 = &v50;
    v30 = v44;
    v50 = v44;
    requestedCopy = requested;
    v51 = v26;
    selfCopy = self;
    v53 = completionCopy;
    v31 = completionCopy;
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
      coordinator = [v38 coordinator];
      [coordinator resolveItem:v28 completion:v33];

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

- (void)performCopyOfItem:(id)item to:(id)to as:(id)as sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)materializeOption completion:(id)completion
{
  itemCopy = item;
  toCopy = to;
  asCopy = as;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_writer);
  coordinator = [WeakRetained coordinator];
  v18 = objc_loadWeakRetained(&self->_writer);
  operation = [v18 operation];
  request = [operation request];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __110__FPDMoveWriterToProvider_performCopyOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_completion___block_invoke;
  v25[3] = &unk_1E83C1470;
  v25[4] = self;
  v26 = itemCopy;
  v28 = asCopy;
  v29 = completionCopy;
  v27 = toCopy;
  v21 = asCopy;
  v22 = toCopy;
  v23 = completionCopy;
  v24 = itemCopy;
  [coordinator resolveItemOrURL:v24 recursively:1 coordinateIfExport:1 request:request handler:v25];
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

- (void)performMoveOfItem:(id)item to:(id)to as:(id)as sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)materializeOption completion:(id)completion
{
  itemCopy = item;
  toCopy = to;
  asCopy = as;
  completionCopy = completion;
  if ([itemCopy isProviderItem])
  {
    asFPItem = [itemCopy asFPItem];
    strippedCopy = [asFPItem strippedCopy];

    asFPItem2 = [toCopy asFPItem];
    itemIdentifier = [asFPItem2 itemIdentifier];
    [strippedCopy setParentItemIdentifier:itemIdentifier];

    asFPItem3 = [itemCopy asFPItem];
    filename = [asFPItem3 filename];
    v24 = [filename isEqualToString:asCopy];

    if (v24)
    {
      v25 = 4;
    }

    else
    {
      [strippedCopy setFilename:asCopy];
      v25 = 6;
    }

    WeakRetained = objc_loadWeakRetained(&self->_writer);
    info = [WeakRetained info];
    lastUsedDatePolicy = [info lastUsedDatePolicy];

    v43 = strippedCopy;
    if (lastUsedDatePolicy == 2)
    {
      date = [MEMORY[0x1E695DF00] date];
      [strippedCopy setLastUsedDate:date];

      v25 |= 8uLL;
    }

    _remoteProxy = [(FPDMoveWriterToProvider *)self _remoteProxy];
    synchronousRemoteObjectProxy = [_remoteProxy synchronousRemoteObjectProxy];
    v39 = objc_loadWeakRetained(&self->_writer);
    info2 = [v39 info];
    shouldBounce = [info2 shouldBounce];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __110__FPDMoveWriterToProvider_performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_completion___block_invoke;
    v48[3] = &unk_1E83C12B8;
    v48[4] = self;
    v49 = itemCopy;
    v50 = toCopy;
    v51 = asCopy;
    v52 = completionCopy;
    v32 = completionCopy;
    v29 = toCopy;
    v30 = itemCopy;
    v31 = v43;
    [synchronousRemoteObjectProxy singleItemChange:v43 changedFields:v42 bounce:shouldBounce completionHandler:v48];
  }

  else
  {
    v26 = objc_loadWeakRetained(&self->_writer);
    coordinator = [v26 coordinator];
    asURL = [itemCopy asURL];
    [coordinator startAccessingURLForAtomDuration:asURL];

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __110__FPDMoveWriterToProvider_performMoveOfItem_to_as_sourceMaterializeOption_targetMaterializeOption_completion___block_invoke_2_43;
    v44[3] = &unk_1E83C14C0;
    v45 = itemCopy;
    v46 = toCopy;
    v47 = completionCopy;
    v29 = completionCopy;
    v30 = toCopy;
    v31 = itemCopy;
    [(FPDMoveWriterToProvider *)self performCopyOfItem:v31 to:v30 as:asCopy sourceMaterializeOption:option targetMaterializeOption:materializeOption completion:v44];

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

- (void)_createFolder:(id)folder under:(id)under completion:(id)completion
{
  folderCopy = folder;
  underCopy = under;
  completionCopy = completion;
  v10 = objc_alloc(MEMORY[0x1E6967388]);
  asFPItem = [underCopy asFPItem];
  providerDomainID = [asFPItem providerDomainID];
  asFPItem2 = [underCopy asFPItem];
  itemIdentifier = [asFPItem2 itemIdentifier];
  v26 = [v10 initWithProviderDomainID:providerDomainID itemIdentifier:@"__" parentItemIdentifier:itemIdentifier filename:folderCopy isDirectory:1];

  _remoteProxy = [(FPDMoveWriterToProvider *)self _remoteProxy];
  synchronousRemoteObjectProxy = [_remoteProxy synchronousRemoteObjectProxy];
  WeakRetained = objc_loadWeakRetained(&self->_writer);
  operation = [WeakRetained operation];
  request = [operation request];
  _targetSession = [(FPDMoveWriterToProvider *)self _targetSession];
  v17 = [request nsfpRequestForSession:_targetSession];
  v18 = objc_loadWeakRetained(&self->_writer);
  info = [v18 info];
  shouldBounce = [info shouldBounce];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __58__FPDMoveWriterToProvider__createFolder_under_completion___block_invoke;
  v31[3] = &unk_1E83C1510;
  v31[4] = self;
  v32 = folderCopy;
  v33 = underCopy;
  v34 = completionCopy;
  v29 = completionCopy;
  v21 = underCopy;
  v22 = folderCopy;
  v23 = [synchronousRemoteObjectProxy createItemBasedOnTemplate:v26 fields:6 contents:0 options:0x10000 request:v17 bounce:shouldBounce completionHandler:v31];
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

- (void)performMoveOfFolder:(id)folder to:(id)to as:(id)as sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)materializeOption atomically:(BOOL)atomically completion:(id)completion
{
  atomicallyCopy = atomically;
  folderCopy = folder;
  toCopy = to;
  asCopy = as;
  completionCopy = completion;
  if (([toCopy isProviderItem] & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ unexpected url"];
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [(FPDProcessMonitor *)v18 _addPIDToObserve:v19];
    }

    __assert_rtn("-[FPDMoveWriterToProvider performMoveOfFolder:to:as:sourceMaterializeOption:targetMaterializeOption:atomically:completion:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/move/FPDMoveWriterToProvider.m", 486, [v18 UTF8String]);
  }

  if (atomicallyCopy)
  {
    [(FPDMoveWriterToProvider *)self performMoveOfItem:folderCopy to:toCopy as:asCopy sourceMaterializeOption:option targetMaterializeOption:materializeOption completion:completionCopy];
  }

  else
  {
    [(FPDMoveWriterToProvider *)self _createFolder:asCopy under:toCopy completion:completionCopy];
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