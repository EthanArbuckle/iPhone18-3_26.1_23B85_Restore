@interface FPDMoveReader
+ (BOOL)_hasDiskWriterSupportForDomain:(id)a3;
- (BOOL)_isCancelled;
- (BOOL)_isRootCancelled:(id)a3;
- (BOOL)_isSingleMoveForRoot:(id)a3;
- (BOOL)_isSinglePkgCopyForRoot:(id)a3;
- (BOOL)_shouldCheckFileSystemBitsForRoot:(id)a3 targetFolderURL:(id)a4;
- (BOOL)_shouldCheckSpaceForRoot:(id)a3 targetFolderURL:(id)a4;
- (BOOL)_shouldUseDiskWriterToPerformMoveForItem:(id)a3;
- (FPDMoveReader)init;
- (FPDMoveReader)initWithMoveWriter:(id)a3 operation:(id)a4 queue:(id)a5;
- (id)_getTargetFolderFor:(id)a3 root:(id)a4 error:(id *)a5;
- (id)_targetNameForSource:(id)a3;
- (int64_t)_fileSizeBitsSupportAtPath:(id)a3;
- (void)_bailOutOfRoot:(id)a3;
- (void)_enqueueAtomsForRoot:(id)a3;
- (void)_finishWithError:(id)a3;
- (void)_getSpaceForWriteSize:(int64_t)a3 atTargetPath:(id)a4 completion:(id)a5;
- (void)_progressComputationPreflight:(id)a3 completion:(id)a4;
- (void)_run;
- (void)_runWithDownloadedTarget:(id)a3;
- (void)_t_unblock;
- (void)_t_waitForUnblock;
- (void)cancel;
- (void)cancelRoot:(id)a3;
- (void)dumpStateTo:(id)a3;
- (void)start;
- (void)verifyTargetURL:(id)a3;
@end

@implementation FPDMoveReader

- (FPDMoveReader)init
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"should not call this"];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_fault_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v4, 0xCu);
  }

  __assert_rtn("-[FPDMoveReader init]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/move/FPDMoveReader.m", 66, [v2 UTF8String]);
}

- (FPDMoveReader)initWithMoveWriter:(id)a3 operation:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26.receiver = self;
  v26.super_class = FPDMoveReader;
  v11 = [(FPDMoveReader *)&v26 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_operation, v9);
    v13 = [v9 info];
    info = v12->_info;
    v12->_info = v13;

    objc_storeWeak(&v12->_moveQueue, v10);
    objc_storeWeak(&v12->_writer, v8);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, [(FPMoveInfo *)v12->_info qos], 0);
    v17 = dispatch_queue_create("FileProvider.move-reader", v16);
    queue = v12->_queue;
    v12->_queue = v17;

    v19 = objc_opt_new();
    cancelledRoots = v12->_cancelledRoots;
    v12->_cancelledRoots = v19;

    section = __fp_create_section();
    v22 = fp_current_or_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [FPDMoveReader initWithMoveWriter:operation:queue:];
    }

    v12->_logSection = section;
    if ([(FPMoveInfo *)v12->_info _t_clientDrivenReader])
    {
      v23 = dispatch_semaphore_create(0);
      clientUnblockSema = v12->_clientUnblockSema;
      v12->_clientUnblockSema = v23;
    }
  }

  return v12;
}

- (void)verifyTargetURL:(id)a3
{
  v4 = a3;
  v5 = [(FPMoveInfo *)self->_info targetFolder];
  v6 = [v5 isExternalURL];
  v7 = [(FPMoveInfo *)self->_info targetFolder];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 asURL];
  }

  else
  {
    v10 = [v7 asFPItem];
    v9 = [v10 fileURL];
  }

  if (v9)
  {
    v4[2](v4, v9, 0);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_operation);
    v12 = [WeakRetained manager];
    v13 = [(FPMoveInfo *)self->_info targetFolder];
    v14 = [v13 asFPItem];
    v15 = [v14 itemID];
    v16 = [v12 domainFromItemID:v15 reason:0];

    v17 = [v16 defaultBackend];
    v18 = [(FPMoveInfo *)self->_info targetFolder];
    v19 = [v18 asFPItem];
    v20 = [v19 itemID];
    v21 = +[FPDRequest requestForSelf];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __33__FPDMoveReader_verifyTargetURL___block_invoke;
    v22[3] = &unk_1E83BFAE8;
    v22[4] = self;
    v23 = v4;
    [v17 URLForItemID:v20 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 forBookmarkResolution:0 request:v21 completionHandler:v22];
  }
}

void __33__FPDMoveReader_verifyTargetURL___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 40) + 16);

    v5();
  }

  else
  {
    v6 = [a3 url];
    v7 = [*(*(a1 + 32) + 16) targetFolder];
    v8 = [v7 asFPItem];
    [v8 setFileURL:v6];

    v9 = [*(*(a1 + 32) + 16) targetFolder];
    v10 = [v9 asFPItem];
    v11 = [v10 fileURL];
    [v11 stopAccessingSecurityScopedResource];

    v12 = *(a1 + 40);
    v15 = [*(*(a1 + 32) + 16) targetFolder];
    v13 = [v15 asFPItem];
    v14 = [v13 fileURL];
    (*(v12 + 16))(v12, v14, 0);
  }
}

- (void)start
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __22__FPDMoveReader_start__block_invoke;
  v2[3] = &unk_1E83BF200;
  v2[4] = self;
  [(FPDMoveReader *)self verifyTargetURL:v2];
}

void __22__FPDMoveReader_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __22__FPDMoveReader_start__block_invoke_cold_1(v6);
    }
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 80);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __22__FPDMoveReader_start__block_invoke_6;
  v11[3] = &unk_1E83BE158;
  v11[4] = v8;
  v12 = v5;
  v10 = v5;
  dispatch_async(v9, v11);
}

uint64_t __22__FPDMoveReader_start__block_invoke_6(uint64_t a1)
{
  v13 = *(*(a1 + 32) + 88);
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __22__FPDMoveReader_start__block_invoke_6_cold_1();
  }

  v3 = [*(a1 + 40) startAccessingSecurityScopedResource];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __22__FPDMoveReader_start__block_invoke_7;
  v9[3] = &unk_1E83BFB10;
  v12 = v3;
  v6 = v4;
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  [v5 _progressComputationPreflight:v6 completion:v9];

  return __fp_leave_section_Debug();
}

uint64_t __22__FPDMoveReader_start__block_invoke_7(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) stopAccessingSecurityScopedResource];
  }

  v2 = *(a1 + 40);

  return [v2 _run];
}

- (BOOL)_isCancelled
{
  v2 = self;
  objc_sync_enter(v2);
  cancelled = v2->__cancelled;
  objc_sync_exit(v2);

  return cancelled;
}

- (void)_finishWithError:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (![(FPDMoveReader *)self _isCancelled])
  {
    v6 = fp_current_or_default_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      if (v7)
      {
        [FPDMoveReader _finishWithError:v5];
      }
    }

    else if (v7)
    {
      [FPDMoveReader _finishWithError:];
    }

    self->__cancelled = 1;
    objc_storeStrong(&self->_error, a3);
    errorBlock = self->_errorBlock;
    if (v5 && errorBlock)
    {
      errorBlock[2](errorBlock, v5);
      errorBlock = self->_errorBlock;
    }

    self->_errorBlock = 0;
  }
}

- (void)_progressComputationPreflight:(id)a3 completion:(id)a4
{
  v92 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v54 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [FPDMoveReader _progressComputationPreflight:completion:];
  }

  self->_startedPreflight = 1;
  v8 = [(FPMoveInfo *)self->_info targetFolder];
  self->_isTargetFolderMaterialized = [v8 isDownloaded];

  v9 = [v6 path];
  v62 = [(FPDMoveReader *)self _fileSizeBitsSupportAtPath:v9];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v10 = [(FPMoveInfo *)self->_info roots];
  v11 = [v10 countByEnumeratingWithState:&v75 objects:v91 count:16];
  if (v11)
  {
    v12 = v11;
    v65 = 0;
    v13 = *v76;
    v68 = self;
    v57 = v10;
    v58 = v6;
    v55 = *v76;
LABEL_5:
    v14 = 0;
    v56 = v12;
    while (1)
    {
      if (*v76 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v75 + 1) + 8 * v14);
      if ([(FPDMoveReader *)self _isCancelled])
      {
        break;
      }

      if (!self->_isTargetFolderMaterialized && !self->_willMaterializeTargetFolder)
      {
        v16 = [(FPMoveInfo *)self->_info targetFolder];
        WeakRetained = objc_loadWeakRetained(&self->_operation);
        [WeakRetained manager];
        v19 = v18 = v14;
        v68->_willMaterializeTargetFolder = [v16 willRequireDownloadForSourceItem:v15 extensionManager:v19];

        v14 = v18;
        self = v68;
      }

      if ([(FPDMoveReader *)self _isSingleMoveForRoot:v15])
      {
        v20 = fp_current_or_default_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          willMaterializeTargetFolder = self->_willMaterializeTargetFolder;
          *buf = 138412546;
          v80 = v15;
          v81 = 1024;
          LODWORD(v82) = willMaterializeTargetFolder;
          _os_log_debug_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] move-reader: preflight for root: %@, atomic move, willMaterializeTargetFolder=%{BOOL}d", buf, 0x12u);
        }

        v21 = [(FPDMoveReader *)self rootPreflightCompletionBlock];
        v21[2](v21, v15, 1, 0, 0);
      }

      else
      {
        v74 = 0;
        v22 = [(FPDMoveReader *)self _iteratorForRoot:v15 enforceFPItem:0 error:&v74];
        v23 = v74;
        v24 = v23;
        if (!v22)
        {
          [(FPDMoveReader *)self _finishWithError:v23];

          v48 = v54;
          goto LABEL_68;
        }

        v59 = v14;
        v60 = v23;
        v25 = [(FPDMoveReader *)self _shouldCheckFileSystemBitsForRoot:v15 targetFolderURL:v6];
        v66 = [(FPDMoveReader *)self _shouldCheckSpaceForRoot:v15 targetFolderURL:v6];
        if (([v22 done] & 1) == 0)
        {
          v27 = 0;
          v67 = 0;
          v26 = 0;
          v61 = 0;
          v28 = v62 > 0 && v25;
          v64 = v28;
          v63 = v22;
          while (1)
          {
            v29 = objc_autoreleasePoolPush();
            if ([(FPDMoveReader *)self _isCancelled])
            {
              v48 = v54;
              v54[2](v54);
              goto LABEL_67;
            }

            if ([(FPDMoveReader *)self _isRootCancelled:v15])
            {
              v67 = 0;
              v27 = 0;
LABEL_46:
              objc_autoreleasePoolPop(v29);
              goto LABEL_47;
            }

            v73 = 0;
            v30 = [v22 nextWithError:&v73];
            v31 = v73;
            if (v64 && [v30 size] > v62)
            {
              break;
            }

            if (v30)
            {
              v32 = v66;
            }

            else
            {
              v32 = 0;
            }

            if (v32)
            {
              v65 += [v30 size];
            }

            else if (!v30 && v31)
            {
              v51 = fp_current_or_default_log();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
              {
                [FPDMoveReader _progressComputationPreflight:v31 completion:?];
              }

              [(FPDMoveReader *)v68 _finishWithError:v31];
              v48 = v54;
              v54[2](v54);
              goto LABEL_66;
            }

            if ([v22 done] || !v30)
            {

              self = v68;
              goto LABEL_46;
            }

            v33 = v26;
            v34 = [(FPMoveInfo *)v68->_info targetFolder];
            v35 = [v30 filename];
            LOBYTE(v53) = 0;
            v36 = [FPDMoveAtom atomForMoving:v30 toTargetFolder:v34 as:v35 root:v15 atomically:0 sourceMaterializeOption:0 targetMaterializeOption:0 useDiskWriter:v53];

            info = v68->_info;
            v38 = objc_loadWeakRetained(&v68->_operation);
            v39 = [v38 manager];
            LODWORD(info) = [v36 shouldAccountForDownloadOfSourceItemForMoveInfo:info extensionManager:v39];

            if (info)
            {
              v67 += [v30 size];
              v61 = 1;
            }

            self = v68;
            if (([v30 requiresCrossDeviceCopy] & 1) != 0 || (-[FPMoveInfo targetFolder](v68->_info, "targetFolder"), v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "requiresCrossDeviceCopy"), v40, v41))
            {
              v26 = [v30 size] + v33;
            }

            else
            {
              v26 = v33;
            }

            objc_autoreleasePoolPop(v29);
            v22 = v63;
            ++v27;
            if ([v63 done])
            {
              goto LABEL_47;
            }
          }

          v49 = fp_current_or_default_log();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            [FPDMoveReader _progressComputationPreflight:completion:];
          }

          v50 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:27 userInfo:MEMORY[0x1E695E0F8]];
          [(FPDMoveReader *)v68 _finishWithError:v50];
          v48 = v54;
          v54[2](v54);

LABEL_66:
LABEL_67:
          objc_autoreleasePoolPop(v29);

          v10 = v57;
          v6 = v58;
          goto LABEL_68;
        }

        v61 = 0;
        v26 = 0;
        v67 = 0;
        v27 = 0;
LABEL_47:
        v42 = fp_current_or_default_log();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          v45 = self->_willMaterializeTargetFolder;
          *buf = 138413570;
          v80 = v15;
          v81 = 2048;
          v82 = v27;
          v83 = 2048;
          v84 = v67;
          v85 = 2048;
          v86 = v26;
          v87 = 1024;
          v88 = v61 & 1;
          v89 = 1024;
          v90 = v45;
          _os_log_debug_impl(&dword_1CEFC7000, v42, OS_LOG_TYPE_DEBUG, "[DEBUG] move-reader: preflight for root: %@, numItems:%lu, undownloadedSize:%lu, crossDeviceCopySize:%lu,                   isRequiringDownload:%{BOOL}d, willMaterializeTargetFolder:%{BOOL}d", buf, 0x36u);
        }

        v43 = [(FPDMoveReader *)self rootPreflightCompletionBlock];
        v43[2](v43, v15, v27, v67, v26);

        v10 = v57;
        v6 = v58;
        v13 = v55;
        v12 = v56;
        v14 = v59;
        v21 = v60;
      }

      if (++v14 == v12)
      {
        v12 = [v10 countByEnumeratingWithState:&v75 objects:v91 count:16];
        if (v12)
        {
          goto LABEL_5;
        }

        goto LABEL_54;
      }
    }

    v48 = v54;
    v54[2](v54);
LABEL_68:

    goto LABEL_69;
  }

  v65 = 0;
LABEL_54:

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__FPDMoveReader__progressComputationPreflight_completion___block_invoke;
  aBlock[3] = &unk_1E83BE068;
  aBlock[4] = self;
  v46 = _Block_copy(aBlock);
  v47 = v46;
  if (v65)
  {
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __58__FPDMoveReader__progressComputationPreflight_completion___block_invoke_13;
    v69[3] = &unk_1E83BFB60;
    v69[4] = self;
    v48 = v54;
    v70 = v54;
    v71 = v47;
    [(FPDMoveReader *)self _getSpaceForWriteSize:v65 atTargetPath:v6 completion:v69];
  }

  else
  {
    (*(v46 + 2))(v46);
    v48 = v54;
    v54[2](v54);
  }

LABEL_69:
  v52 = *MEMORY[0x1E69E9840];
}

void __58__FPDMoveReader__progressComputationPreflight_completion___block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__FPDMoveReader__progressComputationPreflight_completion___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) preflightCompletionBlock];
  v3[2]();

  *(*(a1 + 32) + 41) = 1;
}

void __58__FPDMoveReader__progressComputationPreflight_completion___block_invoke_13(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 80);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__FPDMoveReader__progressComputationPreflight_completion___block_invoke_2;
    block[3] = &unk_1E83BFB38;
    v11 = *(a1 + 48);
    v12 = *(a1 + 40);
    dispatch_async(v3, block);

    v4 = v11;
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:28 userInfo:MEMORY[0x1E695E0F8]];
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __58__FPDMoveReader__progressComputationPreflight_completion___block_invoke_13_cold_1();
    }

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(v8 + 80);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__FPDMoveReader__progressComputationPreflight_completion___block_invoke_14;
    v13[3] = &unk_1E83BE828;
    v13[4] = v8;
    v14 = v5;
    v15 = v7;
    v4 = v5;
    dispatch_async(v9, v13);
  }
}

uint64_t __58__FPDMoveReader__progressComputationPreflight_completion___block_invoke_14(uint64_t a1)
{
  [*(a1 + 32) _finishWithError:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t __58__FPDMoveReader__progressComputationPreflight_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_getSpaceForWriteSize:(int64_t)a3 atTargetPath:(id)a4 completion:(id)a5
{
  v46[3] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  if (v7)
  {
    v9 = *MEMORY[0x1E695DD50];
    v10 = *MEMORY[0x1E695DD60];
    v46[0] = *MEMORY[0x1E695DD50];
    v46[1] = v10;
    v11 = *MEMORY[0x1E695DDA8];
    v46[2] = *MEMORY[0x1E695DDA8];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:3];
    v41 = 0;
    v13 = [v7 resourceValuesForKeys:v12 error:&v41];
    v14 = v41;
    v15 = v14;
    if (v13)
    {
LABEL_3:
      v16 = [v13 objectForKeyedSubscript:v9];
      v17 = [v16 longLongValue];

      v18 = [v13 objectForKeyedSubscript:v11];
      LODWORD(v16) = [v18 BOOLValue];

      if (v16)
      {
        v19 = v17 <= 0;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        v20 = [v13 objectForKeyedSubscript:v10];
        v21 = [v20 longLongValue];

        if (v21)
        {
          v22 = v21 < a3;
        }

        else
        {
          v22 = 0;
        }

        v23 = !v22;
        v8[2](v8, v23);
      }

      else if (v17 >= a3)
      {
        v8[2](v8, 1);
      }

      else
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __63__FPDMoveReader__getSpaceForWriteSize_atTargetPath_completion___block_invoke;
        aBlock[3] = &unk_1E83BFB88;
        v38 = v8;
        v39 = a3;
        v29 = _Block_copy(aBlock);
        v30 = fp_current_or_default_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v45 = a3;
          _os_log_impl(&dword_1CEFC7000, v30, OS_LOG_TYPE_INFO, "[INFO] Low disk space: purging to make room for %ld bytes", buf, 0xCu);
        }

        v42[0] = @"CACHE_DELETE_VOLUME";
        v31 = [v7 path];
        v42[1] = @"CACHE_DELETE_AMOUNT";
        v43[0] = v31;
        v32 = [MEMORY[0x1E696AD98] numberWithInteger:a3 + 10485760];
        v43[1] = v32;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
        v33 = CacheDeletePurgeSpaceWithInfo();
      }

LABEL_32:
      goto LABEL_33;
    }

    v25 = [v14 domain];
    if ([v25 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v26 = [v15 code];

      if (v26 == 260)
      {
        v27 = [v7 URLByDeletingLastPathComponent];
        v40 = v15;
        v13 = [v27 resourceValuesForKeys:v12 error:&v40];
        v36 = v40;

        v28 = [v7 URLByDeletingLastPathComponent];

        if (v13)
        {
          v15 = v36;
          v7 = v28;
          goto LABEL_3;
        }

        v7 = v28;
        v15 = v36;
      }
    }

    else
    {
    }

    v34 = fp_current_or_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [FPDMoveReader _getSpaceForWriteSize:v7 atTargetPath:v15 completion:?];
    }

    v8[2](v8, 1);
    goto LABEL_32;
  }

  v24 = fp_current_or_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [FPDMoveReader _getSpaceForWriteSize:atTargetPath:completion:];
  }

  v8[2](v8, 1);
LABEL_33:

  v35 = *MEMORY[0x1E69E9840];
}

uint64_t __63__FPDMoveReader__getSpaceForWriteSize_atTargetPath_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
    v4 = [v3 longLongValue];

    v5 = v4 >= *(a1 + 40);
    v6 = *(*(a1 + 32) + 16);

    return v6();
  }

  else
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __63__FPDMoveReader__getSpaceForWriteSize_atTargetPath_completion___block_invoke_cold_1();
    }

    return (*(*(a1 + 32) + 16))();
  }
}

- (int64_t)_fileSizeBitsSupportAtPath:(id)a3
{
  v3 = a3;
  v4 = open([v3 fileSystemRepresentation], 2097156);
  if (v4 < 0)
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FPDMoveReader _fileSizeBitsSupportAtPath:];
    }

    goto LABEL_9;
  }

  v5 = v4;
  v6 = fpathconf(v4, 18);
  close(v5);
  if (v6 < 0)
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FPDMoveReader _fileSizeBitsSupportAtPath:];
    }

LABEL_9:

    v7 = -1;
    goto LABEL_10;
  }

  if (v6)
  {
    v7 = exp2((v6 - 1));
  }

  else
  {
    v7 = 0;
  }

LABEL_10:

  return v7;
}

- (BOOL)_shouldCheckSpaceForRoot:(id)a3 targetFolderURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(FPMoveInfo *)self->_info byCopy])
  {
    v33 = 0;
    v32 = xmmword_1CF9F4BF8;
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    v8 = [v7 path];
    if (getattrlist([v8 fileSystemRepresentation], &v32, v30, 0x28uLL, 0x21u) < 0)
    {
      v24 = fp_current_or_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [FPDMoveReader _shouldCheckSpaceForRoot:v8 targetFolderURL:?];
      }

      v9 = 1;
    }

    else
    {
      v9 = (BYTE14(v30[0]) & 1) == 0;
    }

    goto LABEL_22;
  }

  if (![v6 isProviderItem])
  {
    goto LABEL_8;
  }

  v10 = [(FPMoveInfo *)self->_info targetFolder];
  v11 = [v10 isProviderItem];

  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = [v6 asFPItem];
  v13 = [v12 providerDomainID];
  v14 = [(FPMoveInfo *)self->_info targetFolder];
  v15 = [v14 asFPItem];
  v16 = [v15 providerDomainID];
  v17 = [v13 isEqualToString:v16];

  if ((v17 & 1) == 0)
  {
LABEL_8:
    if ([v6 isExternalURL])
    {
      v8 = [v6 asURL];
    }

    else
    {
      v18 = [v6 asFPItem];
      v8 = [v18 fileURL];
    }

    v29 = 0;
    v19 = *MEMORY[0x1E695DD70];
    v28 = 0;
    [v8 getResourceValue:&v29 forKey:v19 error:&v28];
    v20 = v29;
    v26 = 0;
    v27 = 0;
    v21 = v28;
    [v7 getResourceValue:&v27 forKey:v19 error:&v26];
    v22 = v27;
    v23 = v26;

    v9 = v7 && !v23 && v20 && v22 && ![v20 isEqual:v22];
LABEL_22:

    goto LABEL_23;
  }

  v9 = 0;
LABEL_23:

  return v9;
}

- (BOOL)_shouldCheckFileSystemBitsForRoot:(id)a3 targetFolderURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 isProviderItem])
  {
    goto LABEL_5;
  }

  v8 = [(FPMoveInfo *)self->_info targetFolder];
  v9 = [v8 isProviderItem];

  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = [v6 asFPItem];
  v11 = [v10 providerDomainID];
  v12 = [(FPMoveInfo *)self->_info targetFolder];
  v13 = [v12 asFPItem];
  v14 = [v13 providerDomainID];
  v15 = [v11 isEqualToString:v14];

  if (v15)
  {
    LOBYTE(v16) = 0;
  }

  else
  {
LABEL_5:
    if ([v6 isExternalURL])
    {
      v17 = [v6 asURL];
    }

    else
    {
      v18 = [v6 asFPItem];
      v17 = [v18 fileURL];
    }

    v27 = 0;
    v16 = *MEMORY[0x1E695DD70];
    v26 = 0;
    [v17 getResourceValue:&v27 forKey:v16 error:&v26];
    v19 = v27;
    v24 = 0;
    v25 = 0;
    v20 = v26;
    [v7 getResourceValue:&v25 forKey:v16 error:&v24];
    v21 = v25;
    v22 = v24;

    LOBYTE(v16) = 0;
    if (v7 && !v22 && v19 && v21)
    {
      LODWORD(v16) = [v19 isEqual:v21] ^ 1;
    }
  }

  return v16;
}

- (id)_getTargetFolderFor:(id)a3 root:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v10 = [(FPMoveInfo *)self->_info roots];
  v11 = [v10 containsObject:v8];

  if (v11)
  {
    v12 = [(FPMoveInfo *)self->_info targetFolder];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_writer);
    v14 = [v8 parentIdentifier];
    v12 = [WeakRetained waitForResultOfSourceID:v14 root:v9 error:a5];
  }

  return v12;
}

- (id)_targetNameForSource:(id)a3
{
  v4 = a3;
  v5 = [(FPMoveInfo *)self->_info roots];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v4 filename];
  }

  else
  {
    v8 = [(FPMoveInfo *)self->_info rootFilenames];
    v7 = [v8 objectAtIndexedSubscript:v6];
  }

  return v7;
}

- (void)_bailOutOfRoot:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FPDMoveReader _bailOutOfRoot:];
  }

  if (self->_depth)
  {
    do
    {
      v6 = fp_current_or_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        depth = self->_depth;
        *buf = 67109120;
        v13 = depth;
        _os_log_debug_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] move-reader:_bailOutOfRoot: adding atomForPostFolder %d", buf, 8u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_moveQueue);
      v8 = [FPDMoveAtom atomForPostFolderUnderRoot:v4 atomically:0 useDiskWriter:0];
      [WeakRetained enqueue:v8];

      v9 = self->_depth - 1;
      self->_depth = v9;
    }

    while (v9);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isSingleMoveForRoot:(id)a3
{
  v4 = a3;
  if ([(FPMoveInfo *)self->_info byCopy])
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [FPDMoveReader _isSingleMoveForRoot:];
    }

LABEL_16:
    v14 = 0;
    goto LABEL_32;
  }

  if (![(FPMoveInfo *)self->_info byMoving])
  {
    goto LABEL_11;
  }

  if (![v4 isProviderItem])
  {
    goto LABEL_11;
  }

  v6 = [(FPMoveInfo *)self->_info targetFolder];
  v7 = [v6 isProviderItem];

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = [v4 asFPItem];
  v9 = [v8 providerDomainID];
  v10 = [(FPMoveInfo *)self->_info targetFolder];
  v11 = [v10 asFPItem];
  v12 = [v11 providerDomainID];
  v13 = [v9 isEqualToString:v12];

  if (v13)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [FPDMoveReader _isSingleMoveForRoot:];
    }

    v14 = 1;
  }

  else
  {
LABEL_11:
    if (![(FPDMoveReader *)self _shouldUseDiskWriterToPerformMoveForItem:v4])
    {
      v5 = fp_current_or_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [FPDMoveReader _isSingleMoveForRoot:];
      }

      goto LABEL_16;
    }

    if ([v4 isExternalURL])
    {
      v5 = [v4 asURL];
    }

    else
    {
      v15 = [v4 asFPItem];
      v5 = [v15 fileURL];
    }

    v16 = [(FPMoveInfo *)self->_info targetFolder];
    v17 = [v16 isExternalURL];
    v18 = [(FPMoveInfo *)self->_info targetFolder];
    v19 = v18;
    if (v17)
    {
      v20 = [v18 asURL];
    }

    else
    {
      v21 = [v18 asFPItem];
      v20 = [v21 fileURL];
    }

    v32 = 0;
    v22 = *MEMORY[0x1E695DD70];
    v31 = 0;
    [v5 getResourceValue:&v32 forKey:v22 error:&v31];
    v23 = v32;
    v29 = 0;
    v30 = 0;
    v24 = v31;
    [v20 getResourceValue:&v30 forKey:v22 error:&v29];
    v25 = v30;
    v26 = v29;

    if (!v26 && v23 && v20 && [v23 isEqual:v25])
    {
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [FPDMoveReader _isSingleMoveForRoot:];
      }

      v14 = 1;
    }

    else
    {
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [FPDMoveReader _isSingleMoveForRoot:];
      }

      v14 = 0;
    }
  }

LABEL_32:

  return v14;
}

- (BOOL)_isSinglePkgCopyForRoot:(id)a3
{
  v3 = a3;
  if ([v3 isExternalURL])
  {
    v4 = [v3 asURL];
  }

  else
  {
    v5 = [v3 asFPItem];

    v4 = [v5 fileURL];
    v3 = v5;
  }

  v6 = [v4 fp_isPackage];
  return v6;
}

+ (BOOL)_hasDiskWriterSupportForDomain:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 isUsingFPFS] & 1) == 0)
  {
    v6 = [v4 providerDomainID];
    v7 = [v6 fp_toProviderID];

    if ([v7 isEqualToString:@"com.apple.FileProvider.LocalStorage"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"com.apple.filesystems.UserFS.FileProvider"))
    {
      v5 = 1;
    }

    else
    {
      v5 = [v7 isEqualToString:@"com.apple.SMBClientProvider.FileProvider"];
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)_shouldUseDiskWriterToPerformMoveForItem:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isProviderItem])
  {
    v5 = [v4 asFPItem];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(FPMoveInfo *)self->_info targetFolder];
  if ([v6 isProviderItem])
  {
    v7 = [(FPMoveInfo *)self->_info targetFolder];
    v8 = [v7 asFPItem];
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_operation);
    v10 = [WeakRetained manager];
    v11 = [v5 itemID];
    v12 = [v10 domainFromItemID:v11 reason:0];

    if (v8)
    {
LABEL_9:
      v13 = objc_loadWeakRetained(&self->_operation);
      v14 = [v13 manager];
      v15 = [v8 itemID];
      v16 = [v14 domainFromItemID:v15 reason:0];

      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  v16 = 0;
LABEL_12:
  v17 = [FPDMoveReader _hasDiskWriterSupportForDomain:v12];
  if ([FPDMoveReader _hasDiskWriterSupportForDomain:v16])
  {
    LOBYTE(v18) = [v16 isUsingFPFS];
    if ((v18 & 1) == 0 && v17)
    {
      if ([v12 isUsingFPFS] && objc_msgSend(v16, "isUsingFPFS") && (!objc_msgSend(v4, "isProviderItem") || (-[FPMoveInfo targetFolder](self->_info, "targetFolder"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isProviderItem"), v19, v20)))
      {
        if (-[FPMoveInfo byMoving](self->_info, "byMoving") && [v4 isProviderItem] && (-[FPMoveInfo targetFolder](self->_info, "targetFolder"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isProviderItem"), v21, v22))
        {
          v56 = [v4 asFPItem];
          v54 = [v56 providerDomainID];
          v23 = [(FPMoveInfo *)self->_info targetFolder];
          v24 = [v23 asFPItem];
          v25 = [v24 providerDomainID];
          v18 = [v54 isEqualToString:v25];
        }

        else
        {
          v18 = 0;
        }

        v28 = !self->_isTargetFolderMaterialized && !self->_willMaterializeTargetFolder;
        if (((v18 | v28) & 1) == 0)
        {
          v29 = [(FPMoveInfo *)self->_info targetFolder];
          v30 = [v29 isExternalURL];
          v31 = [(FPMoveInfo *)self->_info targetFolder];
          v32 = v31;
          if (v30)
          {
            v33 = [v31 asURL];
          }

          else
          {
            v34 = [v31 asFPItem];
            v33 = [v34 fileURL];
          }

          if ([v4 isExternalURL])
          {
            v35 = [v4 asURL];
          }

          else
          {
            v36 = [v4 asFPItem];
            v35 = [v36 fileURL];
          }

          if (!v35)
          {
            v37 = objc_loadWeakRetained(&self->_operation);
            v38 = [v37 manager];
            v39 = [v4 materializedURLWithExtensionManager:v38];

            v35 = v39;
          }

          if (!v33)
          {
            v40 = [(FPMoveInfo *)self->_info targetFolder];
            v41 = objc_loadWeakRetained(&self->_operation);
            [v41 manager];
            v43 = v42 = v35;
            v33 = [v40 materializedURLWithExtensionManager:v43];

            v35 = v42;
          }

          v61 = 0;
          v44 = *MEMORY[0x1E695DD70];
          v60 = 0;
          [v35 getResourceValue:&v61 forKey:v44 error:{&v60, v35}];
          v45 = v61;
          v46 = v60;
          v47 = fp_current_or_default_log();
          v57 = v33;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            v52 = [v46 fp_prettyDescription];
            *buf = 138412802;
            v63 = v55;
            v64 = 2112;
            v65 = v45;
            v66 = 2112;
            v67 = v52;
            _os_log_debug_impl(&dword_1CEFC7000, v47, OS_LOG_TYPE_DEBUG, "[DEBUG] move-reader: sourceURL %@ sourceVolume %@ error %@", buf, 0x20u);

            v33 = v57;
          }

          v58 = 0;
          v59 = 0;
          [v33 getResourceValue:&v59 forKey:v44 error:&v58];
          v48 = v59;
          v49 = v58;

          v50 = fp_current_or_default_log();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            v53 = [v49 fp_prettyDescription];
            *buf = 138412802;
            v63 = v57;
            v64 = 2112;
            v65 = v48;
            v66 = 2112;
            v67 = v53;
            _os_log_debug_impl(&dword_1CEFC7000, v50, OS_LOG_TYPE_DEBUG, "[DEBUG] move-reader: targetFolderURL %@ destVolume %@ error %@", buf, 0x20u);
          }

          LOBYTE(v18) = 0;
          if (v49)
          {
            v51 = v55;
          }

          else
          {
            v51 = v55;
            if (v45 && v48)
            {
              LOBYTE(v18) = [v45 isEqual:v48];
            }
          }
        }
      }

      else
      {
        LOBYTE(v18) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)_enqueueAtomsForRoot:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(FPDMoveReader *)self _isRootCancelled:v4])
  {
    goto LABEL_52;
  }

  v5 = [(FPDMoveReader *)self _shouldUseDiskWriterToPerformMoveForItem:v4];
  if ([(FPDMoveReader *)self _isSinglePkgCopyForRoot:v4])
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [FPDMoveReader _enqueueAtomsForRoot:v4];
    }

    if (![(FPDMoveReader *)self _enqueueItem:v4 forRoot:v4 atomically:1 useDiskWriter:v5])
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ enqueuing a root should never fail"];
      v8 = fp_current_or_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        +[FPDVolume prettyNameForDomain:];
      }

      __assert_rtn("-[FPDMoveReader _enqueueAtomsForRoot:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/move/FPDMoveReader.m", 714, [v7 UTF8String]);
    }

    goto LABEL_52;
  }

  v9 = [(FPDMoveReader *)self _isSingleMoveForRoot:v4];
  v10 = fp_current_or_default_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (!v9)
  {
    if (v11)
    {
      [FPDMoveReader _enqueueAtomsForRoot:];
    }

    self->_depth = 0;
    v36 = 0;
    v14 = [(FPDMoveReader *)self _iteratorForRoot:v4 enforceFPItem:1 error:&v36];
    v13 = v36;
    if (v14)
    {
      if (([v14 done] & 1) == 0)
      {
        v33 = v13;
        *&v15 = 138412546;
        v32 = v15;
        while (1)
        {
          v16 = objc_autoreleasePoolPush();
          [(FPDMoveReader *)self _t_waitForUnblock];
          if ([(FPDMoveReader *)self _isCancelled])
          {
            goto LABEL_41;
          }

          if ([(FPDMoveReader *)self _isRootCancelled:v4])
          {
            [(FPDMoveReader *)self _bailOutOfRoot:v4];
LABEL_41:
            objc_autoreleasePoolPop(v16);
LABEL_42:
            v13 = v33;
            goto LABEL_51;
          }

          v35 = 0;
          v17 = [v14 nextWithError:&v35];
          v18 = v35;
          v19 = v18;
          if (!v17)
          {
            if (v18)
            {
              break;
            }
          }

          v34 = v16;
          v20 = v18;
          for (i = [v14 numFoldersPopped]; i; --i)
          {
            v23 = fp_current_or_default_log();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              depth = self->_depth;
              *buf = 67109120;
              LODWORD(v38) = depth;
              _os_log_debug_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] move-reader: adding atomForPostFolder %d", buf, 8u);
            }

            WeakRetained = objc_loadWeakRetained(&self->_moveQueue);
            v25 = [FPDMoveAtom atomForPostFolderUnderRoot:v4 atomically:0 useDiskWriter:0];
            [WeakRetained enqueue:v25];

            --self->_depth;
          }

          if (!v17)
          {
            v19 = v20;
LABEL_47:
            v16 = v34;
            goto LABEL_49;
          }

          v19 = v20;
          if ([v14 done])
          {
            goto LABEL_47;
          }

          v26 = fp_current_or_default_log();
          v16 = v34;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v27 = [v17 identifier];
            *buf = v32;
            v38 = v27;
            v39 = 1024;
            v40 = v5;
            _os_log_debug_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] move-reader: itemID %@ shouldUseDiskWriterToPerformMoveForItem %{BOOL}d", buf, 0x12u);
          }

          if (![(FPDMoveReader *)self _enqueueItem:v17 forRoot:v4 atomically:0 useDiskWriter:v5])
          {
            [(FPDMoveReader *)self _bailOutOfRoot:v4];
LABEL_49:

            goto LABEL_50;
          }

          if ([v17 isFolder])
          {
            ++self->_depth;
          }

          objc_autoreleasePoolPop(v34);
          if ([v14 done])
          {
            goto LABEL_42;
          }
        }

        v28 = fp_current_or_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [FPDMoveReader _enqueueAtomsForRoot:v19];
        }

        [(FPDMoveReader *)self _finishWithError:v19];
LABEL_50:
        v13 = v33;

        objc_autoreleasePoolPop(v16);
      }
    }

    else
    {
      [(FPDMoveReader *)self _finishWithError:v13];
    }

    goto LABEL_51;
  }

  if (v11)
  {
    [FPDMoveReader _enqueueAtomsForRoot:v4];
  }

  if (![(FPDMoveReader *)self _enqueueItem:v4 forRoot:v4 atomically:1 useDiskWriter:v5])
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ enqueuing a root should never fail"];
    v31 = fp_current_or_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDMoveReader _enqueueAtomsForRoot:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/move/FPDMoveReader.m", 727, [v30 UTF8String]);
  }

  if ([v4 isFolder])
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [FPDMoveReader _enqueueAtomsForRoot:];
    }

    v13 = objc_loadWeakRetained(&self->_moveQueue);
    v14 = [FPDMoveAtom atomForPostFolderUnderRoot:v4 atomically:1 useDiskWriter:v5];
    [v13 enqueue:v14];
LABEL_51:
  }

LABEL_52:

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_runWithDownloadedTarget:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_willMaterializeTargetFolder)
  {
    v6 = [(FPMoveInfo *)self->_info targetFolder];
    v7 = [v6 asFPItem];

    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [FPDMoveReader _runWithDownloadedTarget:];
    }

    v9 = [(FPDMoveReader *)self startDownloadBlock];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__FPDMoveReader__runWithDownloadedTarget___block_invoke;
    v10[3] = &unk_1E83BE1A8;
    v10[4] = self;
    v11 = v5;
    (v9)[2](v9, v7, 0, v10);
  }

  else
  {
    (*(v4 + 2))(v4);
  }
}

void __42__FPDMoveReader__runWithDownloadedTarget___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v6 = *(a1 + 40);
  v5 = v3;
  fp_dispatch_async_with_logs();
}

uint64_t __42__FPDMoveReader__runWithDownloadedTarget___block_invoke_2(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {

    return [v2 _finishWithError:?];
  }

  else
  {
    result = [v2 _isCancelled];
    if ((result & 1) == 0)
    {
      v5 = *(a1[6] + 16);

      return v5();
    }
  }

  return result;
}

- (void)_run
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __21__FPDMoveReader__run__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(*(a1 + 32) + 16) roots];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = fp_current_or_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v21 = v7;
          _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] move-reader: looking at root %@", buf, 0xCu);
        }

        if ([*(a1 + 32) _isCancelled])
        {
          v12 = fp_current_or_default_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            __21__FPDMoveReader__run__block_invoke_cold_2();
          }

          objc_autoreleasePoolPop(v8);
          goto LABEL_20;
        }

        if ([*(a1 + 32) _isRootCancelled:v7])
        {
          v10 = fp_current_or_default_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            __21__FPDMoveReader__run__block_invoke_cold_1(&v14, v15, v10);
          }
        }

        else
        {
          [*(a1 + 32) _enqueueAtomsForRoot:v7];
        }

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained finishedEnqueuing];

  [*(a1 + 32) _finishWithError:0];
LABEL_20:
  v13 = *MEMORY[0x1E69E9840];
}

- (void)_t_waitForUnblock
{
  if ([(FPMoveInfo *)self->_info _t_clientDrivenReader])
  {
    clientUnblockSema = self->_clientUnblockSema;

    dispatch_semaphore_wait(clientUnblockSema, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)_t_unblock
{
  if (([(FPMoveInfo *)self->_info _t_clientDrivenReader]& 1) == 0)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ unexpected call"];
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDMoveReader _t_unblock]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/move/FPDMoveReader.m", 864, [v4 UTF8String]);
  }

  clientUnblockSema = self->_clientUnblockSema;

  dispatch_semaphore_signal(clientUnblockSema);
}

- (BOOL)_isRootCancelled:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableSet *)v5->_cancelledRoots containsObject:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)cancelRoot:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableSet *)v4->_cancelledRoots addObject:v5];
  objc_sync_exit(v4);
}

- (void)cancel
{
  v2 = self;
  objc_sync_enter(v2);
  v2->__cancelled = 1;
  if ([(FPMoveInfo *)v2->_info _t_clientDrivenReader])
  {
    v3 = 500;
    do
    {
      dispatch_semaphore_signal(v2->_clientUnblockSema);
      --v3;
    }

    while (v3);
  }

  objc_sync_exit(v2);

  queue = v2->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__FPDMoveReader_cancel__block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = v2;
  dispatch_sync(queue, block);
}

void __23__FPDMoveReader_cancel__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
  [v1 _finishWithError:v2];
}

- (void)dumpStateTo:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [v5 write:@"+ reader\n"];
  if (v4->__cancelled)
  {
    [v5 startAttributes:2];
    [v5 write:@"  reader cancelled\n"];
    [v5 reset];
  }

  if ([(NSMutableSet *)v4->_cancelledRoots count])
  {
    [v5 startFgColor:1];
    [v5 write:{@"  roots cancelled: %@\n", v4->_cancelledRoots}];
    [v5 reset];
  }

  if (v4->_error)
  {
    [v5 startFgColor:1];
    [v5 write:{@"  error: %@\n", v4->_error}];
    [v5 reset];
  }

  [v5 write:@"\n"];
  objc_sync_exit(v4);
}

- (void)initWithMoveWriter:operation:queue:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __22__FPDMoveReader_start__block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __22__FPDMoveReader_start__block_invoke_6_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_finishWithError:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_iteratorForRoot:(void *)a1 enforceFPItem:error:.cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 providerDomainID];
  v2 = [v1 fp_obfuscatedProviderDomainID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_progressComputationPreflight:(void *)a1 completion:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_progressComputationPreflight:completion:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v4 = 2048;
  v5 = v0;
  _os_log_error_impl(&dword_1CEFC7000, v1, OS_LOG_TYPE_ERROR, "[ERROR] Filesystem only supports %ld file size bits but we need %ld", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __58__FPDMoveReader__progressComputationPreflight_completion___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v8 = *(v1 + 43);
  v9 = *(v1 + 42);
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xEu);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_getSpaceForWriteSize:(uint64_t)a1 atTargetPath:(void *)a2 completion:.cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [a2 localizedDescription];
  v10 = [a2 userInfo];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

void __63__FPDMoveReader__getSpaceForWriteSize_atTargetPath_completion___block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [0 objectForKeyedSubscript:@"CACHE_DELETE_ERROR"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_fileSizeBitsSupportAtPath:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_fileSizeBitsSupportAtPath:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_shouldCheckSpaceForRoot:(void *)a1 targetFolderURL:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [a1 fileSystemRepresentation];
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_enqueueItem:(uint64_t)a1 forRoot:(void *)a2 atomically:useDiskWriter:.cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_enqueueAtomsForRoot:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_enqueueAtomsForRoot:(void *)a1 .cold.3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_enqueueAtomsForRoot:(void *)a1 .cold.6(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_runWithDownloadedTarget:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __21__FPDMoveReader__run__block_invoke_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] move-reader: root was cancelled, don't enumerate", buf, 2u);
}

@end