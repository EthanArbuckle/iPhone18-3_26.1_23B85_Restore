@interface FPFSChecker
- (BOOL)isDataProtectedFileAtPath:(id)a3 handle:(fpfs_item_handle *)a4;
- (void)enumerateItemsOnDiskAtURL:(id)a3 detachedRoots:(id)a4 usingFPFS:(BOOL)a5 ioContext:(id *)a6 delegate:(id)a7;
@end

@implementation FPFSChecker

- (BOOL)isDataProtectedFileAtPath:(id)a3 handle:(fpfs_item_handle *)a4
{
  v9 = 0;
  v8 = xmmword_1CF9F4C90;
  memset(v7, 0, 40);
  if (getattrlist([a3 fileSystemRepresentation], &v8, v7, 0x28uLL, 0x21u) < 0)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [FPFSChecker isDataProtectedFileAtPath:v6 handle:?];
    }
  }

  else if (DWORD2(v7[0]) == 1 && (DWORD1(v7[2]) - 3) >= 0xFFFFFFFE)
  {
    a4->var5 = DWORD1(v7[0]);
    *&a4->var0 = *(&v7[1] + 4);
    *&a4->var2 = vrev64_s32(*(v7 + 12));
    a4->var4 = 0;
    return 1;
  }

  return 0;
}

- (void)enumerateItemsOnDiskAtURL:(id)a3 detachedRoots:(id)a4 usingFPFS:(BOOL)a5 ioContext:(id *)a6 delegate:(id)a7
{
  v45 = a6;
  v44 = a5;
  v48 = self;
  v83 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v47 = a7;
  v11 = [v10 count];
  v42[1] = v42;
  v12 = (v42 - ((8 * v11 + 31) & 0xFFFFFFFFFFFFFFF0));
  bzero(v12, 8 * v11 + 16);
  v13 = v9;
  v46 = v9;
  v14 = [v13 fileSystemRepresentation];
  *&v43 = v12;
  *v12 = v14;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v15 = v10;
  v16 = [v15 countByEnumeratingWithState:&v70 objects:v82 count:16];
  if (v16)
  {
    v17 = 0;
    v18 = *v71;
    v19 = v43 + 8;
    do
    {
      v20 = 0;
      v21 = v17 << 32;
      v17 = v17;
      do
      {
        if (*v71 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v22 = [*(*(&v70 + 1) + 8 * v20) physicalLocation];
        v23 = v22;
        *(v19 + 8 * v17) = [v22 fileSystemRepresentation];

        ++v17;
        ++v20;
        v21 += 0x100000000;
      }

      while (v16 != v20);
      v16 = [v15 countByEnumeratingWithState:&v70 objects:v82 count:16];
    }

    while (v16);
    v24 = v21 >> 32;
  }

  else
  {
    v24 = 0;
  }

  v25 = v43;
  *(v43 + 8 * v24 + 8) = 0;
  v26 = v48;
  *&v48->_itemIsInsideAPackage = 0;
  v26->_itemIsInsideAnIgnoredFolder = 0;
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = __Block_byref_object_copy__20;
  v68[4] = __Block_byref_object_dispose__20;
  v69 = 0;
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x3032000000;
  v66[3] = __Block_byref_object_copy__20;
  v66[4] = __Block_byref_object_dispose__20;
  v67 = 0;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3032000000;
  v64[3] = __Block_byref_object_copy__20;
  v64[4] = __Block_byref_object_dispose__20;
  v65 = 0;
  v27 = fts_open(v25, 16, 0);
  if (v27)
  {
    v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
    *&v29 = 138543874;
    v43 = v29;
    while (1)
    {
      v30 = fts_read(v27);
      if (!v30)
      {
LABEL_28:
        fts_close(v27);
        goto LABEL_31;
      }

      v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v30->fts_path];
      v81 = 0;
      memset(v80, 0, sizeof(v80));
      v32 = objc_autoreleasePoolPush();
      if (v30->fts_info == 8 && errorInjectionPointEnabled(0, 4))
      {
        *__error() = 1;
      }

      else
      {
        fts_path = v30->fts_path;
        v49 = MEMORY[0x1E69E9820];
        v50 = 3221225472;
        v51 = __84__FPFSChecker_enumerateItemsOnDiskAtURL_detachedRoots_usingFPFS_ioContext_delegate___block_invoke;
        v52 = &unk_1E83C18F8;
        v61 = v30;
        v62 = v45;
        v53 = v48;
        v58 = v66;
        v63 = v44;
        v54 = v15;
        v55 = v46;
        v56 = v47;
        v57 = v28;
        v59 = v68;
        v60 = v64;
        v34 = fpfs_open();

        if (!v34)
        {
          goto LABEL_26;
        }
      }

      if (*__error() != 4)
      {
        if (*__error() != 1 || ![(FPFSChecker *)v48 isDataProtectedFileAtPath:v31 handle:v80])
        {
          v36 = fp_current_or_default_log();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = [v31 fp_obfuscatedPath];
            fts_ino = v30->fts_ino;
            v39 = *__error();
            v74 = v43;
            v75 = v37;
            v76 = 2048;
            v77 = fts_ino;
            v78 = 1024;
            v79 = v39;
            _os_log_impl(&dword_1CEFC7000, v36, OS_LOG_TYPE_DEFAULT, "[WARNING] FPCK checking %{public}@ (fileID=%llu) failed with %{errno}d", &v74, 0x1Cu);
          }

LABEL_26:
          v35 = 1;
          goto LABEL_27;
        }

        if ([v47 checker:v48 handleLockedItemAtPath:v31 handle:v80])
        {
          goto LABEL_26;
        }
      }

      v35 = 0;
LABEL_27:
      objc_autoreleasePoolPop(v32);

      if ((v35 & 1) == 0)
      {
        goto LABEL_28;
      }
    }
  }

  v28 = fp_current_or_default_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v40 = __error();
    [FPFSChecker enumerateItemsOnDiskAtURL:v40 detachedRoots:v80 usingFPFS:v28 ioContext:? delegate:?];
  }

LABEL_31:

  _Block_object_dispose(v64, 8);
  _Block_object_dispose(v66, 8);

  _Block_object_dispose(v68, 8);
  v41 = *MEMORY[0x1E69E9840];
}

uint64_t __84__FPFSChecker_enumerateItemsOnDiskAtURL_detachedRoots_usingFPFS_ioContext_delegate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 96) + 88);
  if (v2 == 6)
  {
    [*(a1 + 64) removeLastObject];
    v3 = *(a1 + 32);
    if (v3[8] == 1)
    {
      v4 = *(*(*(a1 + 80) + 8) + 40);
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(*(a1 + 96) + 48)];
      LODWORD(v4) = [v4 isEqualToString:v5];

      v3 = *(a1 + 32);
      if (v4)
      {
        v3[8] = 0;
        v3 = *(a1 + 32);
      }
    }

    if (v3[9] == 1)
    {
      v6 = *(*(*(a1 + 72) + 8) + 40);
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(*(a1 + 96) + 48)];
      LODWORD(v6) = [v6 isEqualToString:v7];

      v3 = *(a1 + 32);
      if (v6)
      {
        v3[9] = 0;
        v3 = *(a1 + 32);
      }
    }

    if (v3[10] == 1)
    {
      v8 = *(*(*(a1 + 88) + 8) + 40);
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(*(a1 + 96) + 48)];
      LODWORD(v8) = [v8 isEqualToString:v9];

      if (v8)
      {
        *(*(a1 + 32) + 10) = 0;
      }
    }
  }

  else
  {
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x2020000000;
    v42[3] = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v33 = 0;
    v29 = *(a1 + 72);
    v31 = *(a1 + 112);
    v30 = *(a1 + 104);
    v25 = *(a1 + 32);
    v10 = *(&v25 + 1);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    v26 = *(&v25 + 1);
    v27 = v13;
    v28 = *(a1 + 64);
    v14 = fpfs_fgetfileattrs();
    if ((v14 & 0x80000000) == 0)
    {
      if (*(v39 + 24) == 1)
      {
        v15 = *(a1 + 32);
        if ((*(v15 + 8) & 1) == 0)
        {
          *(v15 + 8) = 1;
          v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(*(a1 + 96) + 48)];
          v17 = *(*(a1 + 80) + 8);
          v18 = *(v17 + 40);
          *(v17 + 40) = v16;
        }
      }

      if (v2 == 1)
      {
        if (*(v35 + 24) == 1)
        {
          *(*(a1 + 32) + 10) = 1;
          v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(*(a1 + 96) + 48)];
          v20 = *(*(a1 + 88) + 8);
          v21 = *(v20 + 40);
          *(v20 + 40) = v19;
        }

        v22 = *(a1 + 64);
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{*(*(a1 + 96) + 72), v25}];
        [v22 addObject:v23];
      }
    }

    _Block_object_dispose(v32, 8);
    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(v42, 8);
    if (v14 < 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

uint64_t __84__FPFSChecker_enumerateItemsOnDiskAtURL_detachedRoots_usingFPFS_ioContext_delegate___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 72) + 8) + 24) = (*(a2 + 44) & 0x200) != 0;
  if (*(a1 + 132) == 1 && (*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v4 = *(a2 + 45) & 1;
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 80) + 8) + 24) = v4;
  *(*(*(a1 + 88) + 8) + 24) = *(a2 + 40) == 3;
  if (*(a1 + 132) == 1)
  {
    v5 = *(a1 + 32);
    if ((*(v5 + 9) & 1) == 0 && (*(a2 + 44) & 0x80) != 0)
    {
      *(v5 + 9) = 1;
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(*(a1 + 112) + 48)];
      v7 = *(*(a1 + 96) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }

  v45 = 0u;
  *&v44[1] = 0u;
  v39[0] = *(a1 + 133);
  v9 = *(a1 + 32);
  v39[1] = *(v9 + 8);
  v40 = *(v9 + 9);
  v10 = *(a1 + 80);
  v41 = *(*(*(a1 + 72) + 8) + 24);
  v42 = *(*(*(a1 + 88) + 8) + 24);
  v43 = *(*(v10 + 8) + 24);
  *v44 = 0;
  v44[2] = 0;
  *&v44[9] = a2;
  v11 = *(a1 + 112);
  DWORD2(v45) = *(*(a1 + 120) + 8);
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11 + 104];
  v13 = *(a1 + 112);
  v14 = *(v13 + 96);
  if (v14)
  {
    v15 = (*(v14 + 116) & 0x40) == 0;
  }

  else
  {
    v15 = 1;
  }

  v44[3] = *(a2 + 260) != 0 && v15;
  *&v45 = v14;
  if ((*(a2 + 40) & 0xFFFFFFFE) == 2 && (*(a2 + 45) & 0x40) != 0)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v16 = *(a1 + 40);
    v17 = [v16 countByEnumeratingWithState:&v35 objects:v46 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v36;
LABEL_16:
      v20 = 0;
      while (1)
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v35 + 1) + 8 * v20);
        if ([v21 inode] == *(v14 + 8))
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = [v16 countByEnumeratingWithState:&v35 objects:v46 count:16];
          if (v18)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }
      }

      v22 = v21;
      v44[0] = 1;

      if (v22)
      {
        goto LABEL_30;
      }
    }

    else
    {
LABEL_22:
    }

    v23 = MEMORY[0x1E695DFF8];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(*(a1 + 112) + 48)];
    v25 = [v23 fileURLWithPath:v24 isDirectory:1];

    v26 = [_TtC18FileProviderDaemon16FPCKDetachedRoot alloc];
    v27 = *(a1 + 48);
    v34 = 0;
    v22 = [(FPCKDetachedRoot *)v26 initWithPhysicalLocation:v25 rootURL:v27 error:&v34];
    v28 = v34;
    if (v22)
    {
      v44[2] = [(FPCKDetachedRoot *)v22 shouldRefreshBookmark];
      v29 = [(FPCKDetachedRoot *)v22 logicalLocation];
      v44[1] = v29 == 0;
    }

    else
    {
      v30 = fp_current_or_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        __84__FPFSChecker_enumerateItemsOnDiskAtURL_detachedRoots_usingFPFS_ioContext_delegate___block_invoke_2_cold_1(v25, v28, v30);
      }

      v44[1] = 1;
    }

LABEL_30:
    v13 = *(a1 + 112);
  }

  if ((checkInvariants(v13, *(a1 + 128), *(*(a1 + 104) + 8) + 24, v39) & 0x80000000) != 0)
  {
    goto LABEL_35;
  }

  if (([*(a1 + 56) checker:*(a1 + 32) handleItem:*(a1 + 128) itemStatus:v39 under:*(a1 + 64) brokenInvariants:*(*(*(a1 + 104) + 8) + 24)] & 1) == 0)
  {
    *__error() = 4;
LABEL_35:
    v31 = 0xFFFFFFFFLL;
    goto LABEL_36;
  }

  v31 = 0;
LABEL_36:

  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

- (void)isDataProtectedFileAtPath:(NSObject *)a1 handle:.cold.1(NSObject *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = __error();
  v3 = strerror(*v2);
  v5 = 136315138;
  v6 = v3;
  _os_log_error_impl(&dword_1CEFC7000, a1, OS_LOG_TYPE_ERROR, "[ERROR] Unable to getattrlist: %s", &v5, 0xCu);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)enumerateItemsOnDiskAtURL:(os_log_t)log detachedRoots:usingFPFS:ioContext:delegate:.cold.1(int *a1, uint8_t *buf, os_log_t log)
{
  v3 = *a1;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_error_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_ERROR, "[ERROR] Couldn't open stream: %{errno}d", buf, 8u);
}

void __84__FPFSChecker_enumerateItemsOnDiskAtURL_detachedRoots_usingFPFS_ioContext_delegate___block_invoke_2_cold_1(void *a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a1 fp_shortDescription];
  v6 = [a2 fp_prettyDescription];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_ERROR, "[ERROR] cannot build descriptor for detached item %@: %@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end