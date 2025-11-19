@interface IXFileManager
+ (id)defaultManager;
- (BOOL)_moveItemAtURL:(id)a3 toURL:(id)a4 failIfSrcMissing:(BOOL)a5 error:(id *)a6;
- (BOOL)_removeACLAtPath:(const char *)a3 isDir:(BOOL)a4 error:(id *)a5;
- (BOOL)_traverseDirectory:(id)a3 ignoringFTSErrors:(BOOL)a4 error:(id *)a5 withBlock:(id)a6;
- (BOOL)_validateSymlink:(id)a3 withStartingDepth:(unsigned int)a4 andEndingDepth:(unsigned int *)a5;
- (BOOL)createSymbolicLinkAtURL:(id)a3 withDestinationURL:(id)a4 error:(id *)a5;
- (BOOL)dataProtectionClassOfItemAtURL:(id)a3 class:(int *)a4 error:(id *)a5;
- (BOOL)itemDoesNotExistAtURL:(id)a3;
- (BOOL)releaseSandboxExtensionToken:(int64_t)a3 error:(id *)a4;
- (BOOL)setPermissions:(unsigned __int16)a3 onAllChildrenOfPath:(id)a4 error:(id *)a5;
- (BOOL)setPermissionsOfItemAtURL:(id)a3 toMode:(unsigned __int16)a4 error:(id *)a5;
- (BOOL)standardizeOwnershipAtURL:(id)a3 toUID:(unsigned int)a4 toGID:(unsigned int)a5 error:(id *)a6;
- (id)_realPathForURL:(id)a3 allowNonExistentPathComponents:(BOOL)a4;
- (id)_realPathWhatExistsInPath:(id)a3;
- (id)createTemporaryExtractionDirectoryWithError:(id *)a3;
- (id)debugDescriptionOfItemAtURL:(id)a3;
- (id)destinationOfSymbolicLinkAtURL:(id)a3 error:(id *)a4;
- (id)issueSandboxExtensionForURL:(id)a3 withExtensionClass:(const char *)a4 error:(id *)a5;
- (id)realPathForURL:(id)a3 ifChildOfURL:(id)a4;
- (int64_t)consumeSandboxExtension:(id)a3 error:(id *)a4;
- (unint64_t)_diskUsageForDirectoryURL:(id)a3;
- (unint64_t)diskUsageForURL:(id)a3;
@end

@implementation IXFileManager

+ (id)defaultManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__IXFileManager_defaultManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultManager_onceToken != -1)
  {
    dispatch_once(&defaultManager_onceToken, block);
  }

  v2 = defaultManager_defaultInstance;

  return v2;
}

uint64_t __31__IXFileManager_defaultManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  defaultManager_defaultInstance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_moveItemAtURL:(id)a3 toURL:(id)a4 failIfSrcMissing:(BOOL)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  if (!a5)
  {
    memset(&v36, 0, sizeof(v36));
    if (lstat([v10 fileSystemRepresentation], &v36))
    {
      v12 = *__error();
      v13 = v12 == 2;
      if (v12 == 2)
      {
        v14 = 0;
        if (a6)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v28 = *MEMORY[0x1E696A798];
        v29 = *__error();
        v30 = __error();
        strerror(*v30);
        v14 = _CreateError("[IXFileManager _moveItemAtURL:toURL:failIfSrcMissing:error:]", 83, v28, v29, 0, 0, @"stat of %@ failed: %s", v31, v10);
        if (a6)
        {
LABEL_20:
          if (!v13)
          {
            v32 = v14;
            v13 = 0;
            *a6 = v14;
          }
        }
      }

LABEL_22:
      v22 = v14;
      goto LABEL_23;
    }
  }

  v15 = [v10 fileSystemRepresentation];
  v16 = [v11 fileSystemRepresentation];
  rename(v15, v16, v17);
  if (v18)
  {
    if (*__error() == 18)
    {
      v35 = 0;
      v19 = [(IXFileManager *)self _copyItemAtURL:v10 toURL:v11 failIfSrcMissing:1 error:&v35];
      v20 = v35;
      v14 = v20;
      if (v19)
      {
        v34 = v20;
        v21 = [(IXFileManager *)self removeItemAtURL:v10 error:&v34];
        v22 = v34;

        if (!v21)
        {
          v23 = IXGetLoggingHandle(kIXLoggingSubsystem);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [IXFileManager _moveItemAtURL:v10 toURL:v22 failIfSrcMissing:v23 error:?];
          }
        }

        goto LABEL_15;
      }
    }

    else
    {
      v24 = *MEMORY[0x1E696A798];
      v25 = *__error();
      v26 = __error();
      strerror(*v26);
      v14 = _CreateError("[IXFileManager _moveItemAtURL:toURL:failIfSrcMissing:error:]", 98, v24, v25, 0, 0, @"rename of %@ to %@ failed: %s", v27, v10);
    }

    v13 = 0;
    if (a6)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  v22 = 0;
LABEL_15:
  v13 = 1;
LABEL_23:

  return v13;
}

- (id)createTemporaryExtractionDirectoryWithError:(id *)a3
{
  v5 = +[IXGlobalConfiguration sharedInstance];
  v15 = 0;
  v6 = [v5 extractedInstallableStagingDirectory:&v15];
  v7 = v15;

  if (v6)
  {
    v14 = v7;
    v8 = [(IXFileManager *)self createDirectoryAtURL:v6 withIntermediateDirectories:0 mode:493 error:&v14];
    v9 = v14;

    if (v8)
    {
      v13 = v9;
      v10 = [(IXFileManager *)self createTemporaryDirectoryInDirectoryURL:v6 error:&v13];
      v7 = v13;

      if (!a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = 0;
      v7 = v9;
      if (!a3)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v10 = 0;
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  if (!v10)
  {
    v11 = v7;
    *a3 = v7;
  }

LABEL_10:

  return v10;
}

- (BOOL)_traverseDirectory:(id)a3 ignoringFTSErrors:(BOOL)a4 error:(id *)a5 withBlock:(id)a6
{
  v38[2] = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = [a3 fileSystemRepresentation];
  v38[0] = v10;
  v38[1] = 0;
  v11 = fts_open(v38, 84, 0);
  if (!v11)
  {
    v22 = *MEMORY[0x1E696A798];
    v23 = *__error();
    v24 = __error();
    strerror(*v24);
    _CreateError("[IXFileManager _traverseDirectory:ignoringFTSErrors:error:withBlock:]", 184, v22, v23, 0, 0, @"fts_open failed for %s with error %s", v25, v10);
    v15 = LABEL_22:;
    goto LABEL_23;
  }

  v12 = v11;
  v13 = fts_read(v11);
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    do
    {
      v16 = v15;
      v17 = v14;
      while (1)
      {
        fts_info = v17->fts_info;
        v19 = fts_info > 0xA;
        v20 = (1 << fts_info) & 0x490;
        if (v19 || v20 == 0)
        {
          break;
        }

        if (!a4)
        {
          v26 = *MEMORY[0x1E696A798];
          fts_errno = v14->fts_errno;
          v28 = fts_errno;
          strerror(fts_errno);
          v15 = _CreateError("[IXFileManager _traverseDirectory:ignoringFTSErrors:error:withBlock:]", 196, v26, v28, 0, 0, @"Error for path %s: %s", v29, v10);

          LOBYTE(v30) = 0;
          goto LABEL_19;
        }

        v17 = fts_read(v12);
        if (!v17)
        {
          LOBYTE(v30) = 1;
          goto LABEL_19;
        }
      }

      v30 = v9[2](v9);
      v15 = v15;

      if (!v30)
      {
        break;
      }

      v14 = fts_read(v12);
    }

    while (v14);
LABEL_19:
    if (fts_close(v12))
    {
      if (v15)
      {
LABEL_23:
        LOBYTE(v30) = 0;
        goto LABEL_24;
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (fts_close(v12))
    {
LABEL_21:
      v31 = *MEMORY[0x1E696A798];
      v32 = *__error();
      v33 = __error();
      strerror(*v33);
      _CreateError("[IXFileManager _traverseDirectory:ignoringFTSErrors:error:withBlock:]", 213, v31, v32, 0, 0, @"fts_close failed for %s with error %s", v34, v10);
      goto LABEL_22;
    }

    LOBYTE(v30) = 0;
    v15 = 0;
  }

LABEL_24:
  if (a5 && (v30 & 1) == 0)
  {
    v35 = v15;
    *a5 = v15;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v30;
}

- (BOOL)_removeACLAtPath:(const char *)a3 isDir:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = acl_init(0);
  if (v8)
  {
    v9 = v8;
    if (v6)
    {
      v10 = opendir(a3);
      if (v10)
      {
        v11 = v10;
        if (dirfd(v10) < 0)
        {
          v58 = IXGetLoggingHandle(kIXLoggingSubsystem);
          v59 = os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);
          v60 = *MEMORY[0x1E696A798];
          if (v59)
          {
            v70 = *MEMORY[0x1E696A798];
            [IXFileManager _removeACLAtPath:isDir:error:];
          }

          v61 = *__error();
          v62 = __error();
          strerror(*v62);
          v19 = _CreateError("[IXFileManager _removeACLAtPath:isDir:error:]", 248, v60, v61, 0, 0, @"dirfd of %s failed: %s", v63, a3);
          v20 = 248;
        }

        else
        {
          if (!MEMORY[0x1DA74EEF0]())
          {
            v30 = 0;
            v31 = 1;
            goto LABEL_32;
          }

          v12 = IXGetLoggingHandle(kIXLoggingSubsystem);
          v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
          v14 = *MEMORY[0x1E696A798];
          if (v13)
          {
            v69 = *MEMORY[0x1E696A798];
            [IXFileManager _removeACLAtPath:isDir:error:];
          }

          v15 = *__error();
          v16 = __error();
          strerror(*v16);
          v19 = _CreateError("[IXFileManager _removeACLAtPath:isDir:error:]", 253, v14, v15, 0, 0, @"Failed to set ACL on dir %s: %s", v17, a3);
          v20 = 253;
        }

        v30 = _CreateError("[IXFileManager _removeACLAtPath:isDir:error:]", v20, @"IXErrorDomain", 1uLL, v19, 0, @"Failed to remove ACL", v18, v71);

        v31 = 0;
LABEL_32:
        closedir(v11);
        goto LABEL_33;
      }

      v43 = IXGetLoggingHandle(kIXLoggingSubsystem);
      v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
      v45 = *MEMORY[0x1E696A798];
      if (v44)
      {
        v67 = *MEMORY[0x1E696A798];
        [IXFileManager _removeACLAtPath:isDir:error:];
      }

      v46 = *__error();
      v47 = __error();
      strerror(*v47);
      v50 = _CreateError("[IXFileManager _removeACLAtPath:isDir:error:]", 242, v45, v46, 0, 0, @"opendir of %s failed: %s", v48, a3);
      v51 = 242;
    }

    else
    {
      v32 = open(a3, 2097154);
      if ((v32 & 0x80000000) == 0)
      {
        v33 = v32;
        v34 = MEMORY[0x1DA74EEF0]();
        v31 = v34 == 0;
        if (v34)
        {
          v35 = IXGetLoggingHandle(kIXLoggingSubsystem);
          v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
          v37 = *MEMORY[0x1E696A798];
          if (v36)
          {
            v66 = *MEMORY[0x1E696A798];
            [IXFileManager _removeACLAtPath:isDir:error:];
          }

          v38 = *__error();
          v39 = __error();
          strerror(*v39);
          v41 = _CreateError("[IXFileManager _removeACLAtPath:isDir:error:]", 264, v37, v38, 0, 0, @"Failed to set ACL on %s: %s", v40, a3);
          v30 = _CreateError("[IXFileManager _removeACLAtPath:isDir:error:]", 264, @"IXErrorDomain", 1uLL, v41, 0, @"Failed to remove ACL", v42, v73);
        }

        else
        {
          v30 = 0;
        }

        close(v33);
LABEL_33:
        acl_free(v9);
        if (!a5)
        {
          goto LABEL_36;
        }

        goto LABEL_34;
      }

      v52 = IXGetLoggingHandle(kIXLoggingSubsystem);
      v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
      v54 = *MEMORY[0x1E696A798];
      if (v53)
      {
        v68 = *MEMORY[0x1E696A798];
        [IXFileManager _removeACLAtPath:isDir:error:];
      }

      v55 = *__error();
      v56 = __error();
      strerror(*v56);
      v50 = _CreateError("[IXFileManager _removeACLAtPath:isDir:error:]", 259, v54, v55, 0, 0, @"open of %s failed: %s", v57, a3);
      v51 = 259;
    }

    v30 = _CreateError("[IXFileManager _removeACLAtPath:isDir:error:]", v51, @"IXErrorDomain", 1uLL, v50, 0, @"Failed to remove ACL", v49, v74);

    v31 = 0;
    goto LABEL_33;
  }

  v21 = IXGetLoggingHandle(kIXLoggingSubsystem);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
  v23 = *MEMORY[0x1E696A798];
  if (v22)
  {
    [IXFileManager _removeACLAtPath:? isDir:? error:?];
  }

  v24 = *__error();
  v25 = __error();
  v26 = strerror(*v25);
  v28 = _CreateError("[IXFileManager _removeACLAtPath:isDir:error:]", 235, v23, v24, 0, 0, @"acl_init() failed: %s", v27, v26);
  v30 = _CreateError("[IXFileManager _removeACLAtPath:isDir:error:]", 235, @"IXErrorDomain", 1uLL, v28, 0, @"Failed to remove ACL", v29, v72);

  v31 = 0;
  if (a5)
  {
LABEL_34:
    if (!v31)
    {
      v64 = v30;
      *a5 = v30;
    }
  }

LABEL_36:

  return v31;
}

- (BOOL)setPermissions:(unsigned __int16)a3 onAllChildrenOfPath:(id)a4 error:(id *)a5
{
  v11 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__IXFileManager_setPermissions_onAllChildrenOfPath_error___block_invoke;
  v9[3] = &__block_descriptor_34_e79_B24__0___ftsent____ftsent____ftsent____ftsent_q_v__iiSSQiSsSSS__stat__1c__8__16l;
  v10 = a3;
  v6 = [(IXFileManager *)self _traverseDirectory:a4 ignoringFTSErrors:0 error:&v11 withBlock:v9];
  v7 = v11;
  if (a5 && !v6)
  {
    v7 = v7;
    *a5 = v7;
  }

  return v6;
}

BOOL __58__IXFileManager_setPermissions_onAllChildrenOfPath_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 88);
  v4 = v3 > 0xC;
  v5 = (1 << v3) & 0x110A;
  if (v4 || v5 == 0)
  {
    return 1;
  }

  v9 = *(a2 + 48);
  v10 = lchmod(v9, *(a1 + 32));
  if (a3 && v10)
  {
    v11 = *__error();
    v12 = *MEMORY[0x1E696A798];
    v13 = v11;
    v18 = *(a1 + 32);
    strerror(v11);
    v15 = _CreateError("[IXFileManager setPermissions:onAllChildrenOfPath:error:]_block_invoke", 304, v12, v13, 0, 0, @"Failed to lchmod %s to mode 0%o : %s", v14, v9);
    v16 = v15;
    result = 0;
    *a3 = v15;
    return result;
  }

  return !v10;
}

- (BOOL)standardizeOwnershipAtURL:(id)a3 toUID:(unsigned int)a4 toGID:(unsigned int)a5 error:(id *)a6
{
  v13 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__IXFileManager_standardizeOwnershipAtURL_toUID_toGID_error___block_invoke;
  v10[3] = &__block_descriptor_40_e79_B24__0___ftsent____ftsent____ftsent____ftsent_q_v__iiSSQiSsSSS__stat__1c__8__16l;
  v11 = a4;
  v12 = a5;
  v7 = [(IXFileManager *)self _traverseDirectory:a3 ignoringFTSErrors:0 error:&v13 withBlock:v10];
  v8 = v13;
  if (a6 && !v7)
  {
    v8 = v8;
    *a6 = v8;
  }

  return v7;
}

BOOL __61__IXFileManager_standardizeOwnershipAtURL_toUID_toGID_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 88);
  v4 = v3 > 0xC;
  v5 = (1 << v3) & 0x110A;
  if (v4 || v5 == 0)
  {
    return 1;
  }

  v9 = *(a2 + 48);
  v10 = lchown(v9, *(a1 + 32), *(a1 + 36));
  if (a3 && v10)
  {
    v11 = *__error();
    v12 = *MEMORY[0x1E696A798];
    v13 = v11;
    v14 = *(a1 + 32);
    v19 = *(a1 + 36);
    strerror(v11);
    v16 = _CreateError("[IXFileManager standardizeOwnershipAtURL:toUID:toGID:error:]_block_invoke", 337, v12, v13, 0, 0, @"Failed to lchown %s with uid/gid %d/%d : %s", v15, v9);
    v17 = v16;
    result = 0;
    *a3 = v16;
    return result;
  }

  return !v10;
}

uint64_t __74__IXFileManager_copyACLFrom_toAllChildrenOfPath_ignoringCopyErrors_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 88);
  result = 1;
  v6 = v4 > 8;
  v7 = (1 << v4) & 0x10A;
  if (!v6 && v7 != 0)
  {
    v10 = *(a2 + 48);
    v11 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __74__IXFileManager_copyACLFrom_toAllChildrenOfPath_ignoringCopyErrors_error___block_invoke_cold_1(v10, v11);
    }

    if (!acl_set_link_np(v10, ACL_TYPE_EXTENDED, *(a1 + 32)))
    {
      goto LABEL_12;
    }

    v13 = *__error();
    if (*(a1 + 40) == 1)
    {
      v14 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v19 = "[IXFileManager copyACLFrom:toAllChildrenOfPath:ignoringCopyErrors:error:]_block_invoke";
        v20 = 2080;
        v21 = strerror(v13);
        v22 = 2080;
        v23 = v10;
        _os_log_impl(&dword_1DA47A000, v14, OS_LOG_TYPE_DEFAULT, "%s: Ignoring error %s from acl_set_link_np for %s", buf, 0x20u);
      }

LABEL_12:
      result = 1;
      goto LABEL_16;
    }

    if (a3)
    {
      v15 = _CreateError("[IXFileManager copyACLFrom:toAllChildrenOfPath:ignoringCopyErrors:error:]_block_invoke", 398, *MEMORY[0x1E696A798], v13, 0, 0, @"acl_set_link_np for %s failed", v12, v10);
      v16 = v15;
      result = 0;
      *a3 = v15;
    }

    else
    {
      result = 0;
    }
  }

LABEL_16:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)createSymbolicLinkAtURL:(id)a3 withDestinationURL:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = symlink([v8 fileSystemRepresentation], objc_msgSend(v7, "fileSystemRepresentation"));
  if (v9)
  {
    v10 = *MEMORY[0x1E696A798];
    v11 = *__error();
    v12 = [v8 fileSystemRepresentation];
    [v7 fileSystemRepresentation];
    v13 = __error();
    strerror(*v13);
    v15 = _CreateError("[IXFileManager createSymbolicLinkAtURL:withDestinationURL:error:]", 433, v10, v11, 0, 0, @"Could not create symlink containing %s at %s: %s", v14, v12);
    if (a5)
    {
      v15 = v15;
      *a5 = v15;
    }
  }

  else
  {
    v15 = 0;
  }

  return v9 == 0;
}

- (id)destinationOfSymbolicLinkAtURL:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = readlink([v5 fileSystemRepresentation], v18, 0x400uLL);
  if (v6 < 0)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = *__error();
    v13 = [v5 fileSystemRepresentation];
    v14 = __error();
    strerror(*v14);
    v10 = _CreateError("[IXFileManager destinationOfSymbolicLinkAtURL:error:]", 453, v11, v12, 0, 0, @"Could not readlink %s : %s", v15, v13);
    v9 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v18[v6] = 0;
    v7 = MEMORY[0x1E695DFF8];
    v8 = [MEMORY[0x1E696AEC0] stringWithFileSystemRepresentation:v18 length:v6];
    v9 = [v7 fileURLWithPath:v8];

    v10 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (!v9)
  {
    v10 = v10;
    *a4 = v10;
  }

LABEL_7:

  v16 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)itemDoesNotExistAtURL:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  memset(&v10, 0, sizeof(v10));
  if (!lstat([v3 fileSystemRepresentation], &v10))
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (*__error() != 2)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = __error();
      v7 = strerror(*v6);
      *buf = 136315650;
      v12 = "[IXFileManager itemDoesNotExistAtURL:]";
      v13 = 2112;
      v14 = v3;
      v15 = 2080;
      v16 = v7;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to determine if %@ exists: %s", buf, 0x20u);
    }

    goto LABEL_7;
  }

  v4 = 1;
LABEL_8:

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)debugDescriptionOfItemAtURL:(id)a3
{
  memset(&v12, 0, sizeof(v12));
  v3 = lstat([a3 fileSystemRepresentation], &v12);
  v4 = MEMORY[0x1E696AEC0];
  if (v3)
  {
    v5 = __error();
    v8 = strerror(*v5);
    [v4 stringWithFormat:@"<lstat error: %s>", v8, v9, v10, v11, *&v12.st_dev, v12.st_ino];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<uid:%u gid:%u mode:0%ho flags:0x%x>", v12.st_uid, v12.st_gid, v12.st_mode, v12.st_flags, *&v12.st_dev, v12.st_ino];
  }
  v6 = ;

  return v6;
}

- (BOOL)dataProtectionClassOfItemAtURL:(id)a3 class:(int *)a4 error:(id *)a5
{
  v7 = a3;
  v8 = open([v7 fileSystemRepresentation], 256);
  v9 = v8;
  if (v8 < 0)
  {
    v13 = *MEMORY[0x1E696A798];
    v14 = *__error();
    v15 = [v7 fileSystemRepresentation];
    v16 = __error();
    strerror(*v16);
    _CreateError("[IXFileManager dataProtectionClassOfItemAtURL:class:error:]", 513, v13, v14, 0, 0, @"Failed to open %s : %s", v17, v15);
  }

  else
  {
    v10 = fcntl(v8, 63);
    if ((v10 & 0x80000000) == 0)
    {
      v11 = 0;
      *a4 = v10;
      v12 = 1;
LABEL_9:
      close(v9);
      v25 = v12;
      goto LABEL_10;
    }

    v18 = *MEMORY[0x1E696A798];
    v19 = *__error();
    v20 = [v7 fileSystemRepresentation];
    v21 = __error();
    strerror(*v21);
    _CreateError("[IXFileManager dataProtectionClassOfItemAtURL:class:error:]", 519, v18, v19, 0, 0, @"Failed to getclass of file %s: %s", v22, v20);
  }
  v23 = ;
  v11 = v23;
  if (a5)
  {
    v24 = v23;
    *a5 = v11;
  }

  v12 = 0;
  v25 = 0;
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v25;
}

- (BOOL)setPermissionsOfItemAtURL:(id)a3 toMode:(unsigned __int16)a4 error:(id *)a5
{
  v7 = [a3 fileSystemRepresentation];
  v8 = lchmod(v7, a4);
  if (v8)
  {
    v9 = *MEMORY[0x1E696A798];
    v10 = *__error();
    v11 = __error();
    strerror(*v11);
    v13 = _CreateError("[IXFileManager setPermissionsOfItemAtURL:toMode:error:]", 582, v9, v10, 0, 0, @"Failed to lchmod %s to mode 0%o : %s", v12, v7);
    if (a5)
    {
      v13 = v13;
      *a5 = v13;
    }
  }

  return v8 == 0;
}

- (id)_realPathWhatExistsInPath:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [a3 pathComponents];
  v5 = [v4 count];
  v6 = v5 - 1;
  if (v5 == 1)
  {
    v9 = 0;
  }

  else
  {
    do
    {
      v7 = [v4 subarrayWithRange:{0, v6 + 1}];
      v8 = [MEMORY[0x1E695DFF8] fileURLWithPathComponents:v7];
      v9 = 0;
      if ([(IXFileManager *)self itemExistsAtURL:v8])
      {
        v10 = [(IXFileManager *)self _realPathForURL:v8 allowNonExistentPathComponents:0];
        if (v10)
        {
          v11 = [v4 subarrayWithRange:{v6 + 1, objc_msgSend(v4, "count") - (v6 + 1)}];
          v12 = [MEMORY[0x1E696AEC0] pathWithComponents:v11];
          v13 = IXGetLoggingHandle(kIXLoggingSubsystem);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v16 = [v10 path];
            *buf = 136315650;
            v18 = "[IXFileManager _realPathWhatExistsInPath:]";
            v19 = 2112;
            v20 = v16;
            v21 = 2112;
            v22 = v12;
            _os_log_debug_impl(&dword_1DA47A000, v13, OS_LOG_TYPE_DEBUG, "%s: Realpathed %@ ; appending non-existing components %@", buf, 0x20u);
          }

          v9 = [v10 URLByAppendingPathComponent:v12 isDirectory:0];
        }

        else
        {
          v9 = 0;
        }
      }

      if (v9)
      {
        break;
      }

      --v6;
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_realPathForURL:(id)a3 allowNonExistentPathComponents:(BOOL)a4
{
  v4 = a4;
  v26 = *MEMORY[0x1E69E9840];
  bzero(v25, 0x400uLL);
  v7 = [a3 path];
  if (realpath_DARWIN_EXTSN([v7 fileSystemRepresentation], v25))
  {
    v8 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v25 isDirectory:0 relativeToURL:0];
LABEL_11:
    v14 = v8;
    goto LABEL_12;
  }

  if (*__error() == 2 && v4)
  {
    v8 = [(IXFileManager *)self _realPathWhatExistsInPath:v7];
    goto LABEL_11;
  }

  v10 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 fileSystemRepresentation];
    v12 = __error();
    v13 = strerror(*v12);
    v17 = 136315906;
    v18 = "[IXFileManager _realPathForURL:allowNonExistentPathComponents:]";
    v19 = 2080;
    v20 = v11;
    v21 = 2080;
    v22 = v13;
    v23 = 2080;
    v24 = v25;
    _os_log_impl(&dword_1DA47A000, v10, OS_LOG_TYPE_DEFAULT, "%s: Failed to realpath %s : %s at %s", &v17, 0x2Au);
  }

  v14 = 0;
LABEL_12:

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)_validateSymlink:(id)a3 withStartingDepth:(unsigned int)a4 andEndingDepth:(unsigned int *)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v19 = a5;
    [v7 pathComponents];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v23 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      v13 = a4;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          if ([v15 isEqualToString:@".."])
          {
            --v13;
          }

          else if (([v15 isEqualToString:&stru_1F55F76E0] & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", @".") & 1) == 0)
          {
            v13 += [v15 isEqualToString:@"/"] ^ 1;
          }

          if (v13 < a4)
          {

            goto LABEL_18;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v13 = a4;
    }

    if (v19)
    {
      *v19 = v13;
    }

    v16 = 1;
  }

  else
  {
    v9 = 0;
LABEL_18:
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)realPathForURL:(id)a3 ifChildOfURL:(id)a4
{
  v106 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  bzero(v105, 0x400uLL);
  if (!v6 || !v7)
  {
    v25 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 136315650;
    v92 = "[IXFileManager realPathForURL:ifChildOfURL:]";
    v93 = 2112;
    v94 = v7;
    v95 = 2112;
    v96 = v6;
    v30 = "%s: The base path %@ and/or suspicious path %@ were nil";
    v31 = v25;
    v32 = 32;
    goto LABEL_14;
  }

  v8 = [v7 path];
  v9 = [v8 hasPrefix:@"/private/"];

  if (v9)
  {
    v10 = MEMORY[0x1E695DFF8];
    v11 = [v7 path];
    v12 = [v11 substringFromIndex:{objc_msgSend(@"/private", "length")}];
    v13 = [v10 fileURLWithPath:v12];

    v7 = v13;
  }

  v14 = [v6 path];
  v15 = [v14 hasPrefix:@"/private/"];

  if (v15)
  {
    v16 = MEMORY[0x1E695DFF8];
    v17 = [v6 path];
    v18 = [v17 substringFromIndex:{objc_msgSend(@"/private", "length")}];
    v19 = [v16 fileURLWithPath:v18];

    v6 = v19;
  }

  v20 = [v6 path];
  v21 = [v7 path];
  v22 = [v20 hasPrefix:v21];

  if ((v22 & 1) == 0)
  {
    v25 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v6 path];
      v33 = [v7 path];
      *buf = 136315650;
      v92 = "[IXFileManager realPathForURL:ifChildOfURL:]";
      v93 = 2112;
      v94 = v26;
      v95 = 2112;
      v96 = v33;
      _os_log_impl(&dword_1DA47A000, v25, OS_LOG_TYPE_DEFAULT, "%s: supiscious path %@ does not contain base path %@ as a prefix", buf, 0x20u);

LABEL_22:
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v23 = [v6 pathComponents];
  v24 = [v23 containsObject:@".."];

  if (v24)
  {
    v25 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v6 path];
      *buf = 136315394;
      v92 = "[IXFileManager realPathForURL:ifChildOfURL:]";
      v93 = 2112;
      v94 = v26;
      v27 = "%s: The suspicious path %@ contains '..' paths, which are invalid";
LABEL_11:
      v28 = v25;
      v29 = 22;
LABEL_21:
      _os_log_impl(&dword_1DA47A000, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
      goto LABEL_22;
    }

LABEL_23:

    v35 = 0;
    v36 = 0;
LABEL_24:
    v37 = 0;
LABEL_25:
    v38 = 0;
LABEL_26:
    v39 = 0;
    goto LABEL_27;
  }

  v34 = readlink([v6 fileSystemRepresentation], v105, 0x400uLL);
  if (v34 < 0)
  {
    if (*__error() == 22 || *__error() == 2)
    {
      v36 = [v6 path];
      v35 = 0;
      goto LABEL_35;
    }

    v25 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v53 = __error();
    v54 = strerror(*v53);
    *buf = 136315394;
    v92 = "[IXFileManager realPathForURL:ifChildOfURL:]";
    v93 = 2080;
    v94 = v54;
    v30 = "%s: Readlink failed: %s";
    v31 = v25;
    v32 = 22;
LABEL_14:
    _os_log_impl(&dword_1DA47A000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
    goto LABEL_23;
  }

  if (v105[0] == 47)
  {
    v25 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v6 path];
      *buf = 136315650;
      v92 = "[IXFileManager realPathForURL:ifChildOfURL:]";
      v93 = 2112;
      v94 = v26;
      v95 = 2080;
      v96 = v105;
      v27 = "%s: Rejecting %@ -> %s, as absolute symlinks are not allowed";
      v28 = v25;
      v29 = 32;
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  v90 = 0;
  v43 = [v7 path];
  v44 = [(IXFileManager *)self _validateSymlink:v43 withStartingDepth:0 andEndingDepth:&v90];

  if (!v44)
  {
    v25 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v26 = [v7 path];
    *buf = 136315394;
    v92 = "[IXFileManager realPathForURL:ifChildOfURL:]";
    v93 = 2112;
    v94 = v26;
    v27 = "%s: Failed to retrieve depth of %@";
    goto LABEL_11;
  }

  v45 = [v6 path];
  v46 = [v7 path];
  v47 = [v45 substringFromIndex:{objc_msgSend(v46, "length")}];

  v35 = [v47 stringByDeletingLastPathComponent];

  v48 = [MEMORY[0x1E696AEC0] stringWithFileSystemRepresentation:v105 length:v34];
  v36 = [v35 stringByAppendingPathComponent:v48];

  if (![(IXFileManager *)self _validateSymlink:v36 withStartingDepth:v90 andEndingDepth:0])
  {
    v51 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = [v6 path];
      v57 = [v7 path];
      *buf = 136315906;
      v92 = "[IXFileManager realPathForURL:ifChildOfURL:]";
      v93 = 2112;
      v94 = v52;
      v95 = 2112;
      v96 = v36;
      v97 = 2112;
      v98 = v57;
      _os_log_impl(&dword_1DA47A000, v51, OS_LOG_TYPE_DEFAULT, "%s: Rejecting %@ -> %@, as it is points outside or to the base %@", buf, 0x2Au);

      goto LABEL_50;
    }

LABEL_51:

    goto LABEL_24;
  }

LABEL_35:
  v49 = [(IXFileManager *)self _realPathForURL:v7 allowNonExistentPathComponents:0];
  if (!v49)
  {
    v51 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = [v7 path];
      *buf = 136315394;
      v92 = "[IXFileManager realPathForURL:ifChildOfURL:]";
      v93 = 2112;
      v94 = v52;
      _os_log_impl(&dword_1DA47A000, v51, OS_LOG_TYPE_DEFAULT, "%s: Failed to retrieve realpath for base path %@ ", buf, 0x16u);
LABEL_50:

      goto LABEL_51;
    }

    goto LABEL_51;
  }

  v37 = v49;
  v50 = [(IXFileManager *)self _realPathForURL:v6 allowNonExistentPathComponents:1];
  if (!v50)
  {
    v55 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = [v6 path];
      *buf = 136315394;
      v92 = "[IXFileManager realPathForURL:ifChildOfURL:]";
      v93 = 2112;
      v94 = v56;
      _os_log_impl(&dword_1DA47A000, v55, OS_LOG_TYPE_DEFAULT, "%s: Failed to retrieve realpath for suspicious path %@", buf, 0x16u);
    }

    goto LABEL_25;
  }

  v38 = v50;
  if (v34 < 0)
  {
    v58 = [v50 pathComponents];
    v88 = [v37 pathComponents];
    v59 = [v88 count];
    v89 = v58;
    v60 = [v58 count];
    if (v60 < 2 || v59 <= 1)
    {
      v66 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        [v6 path];
        v71 = loga = v66;
        v72 = [v7 path];
        v73 = [v38 path];
        v74 = [v37 path];
        *buf = 136316162;
        v92 = "[IXFileManager realPathForURL:ifChildOfURL:]";
        v93 = 2112;
        v94 = v71;
        v95 = 2112;
        v96 = v72;
        v97 = 2112;
        v98 = v73;
        v99 = 2112;
        v100 = v74;
        _os_log_impl(&dword_1DA47A000, loga, OS_LOG_TYPE_DEFAULT, "%s: Rejecting %@ with base %@ because real component counts don't make sense (reals %@ ; %@)", buf, 0x34u);

        v66 = loga;
      }
    }

    else
    {
      v61 = v60;
      v62 = 1;
      v63 = [v88 objectAtIndexedSubscript:1];
      if ([v63 isEqualToString:@"private"])
      {
        v62 = 2;
      }

      [v89 objectAtIndexedSubscript:1];
      v64 = v83 = v59;
      if ([v64 isEqualToString:@"private"])
      {
        v65 = 2;
      }

      else
      {
        v65 = 1;
      }

      if (v83 - v62 <= v61 - v65)
      {
        if (v83 <= v62)
        {
LABEL_67:

          goto LABEL_38;
        }

        while (1)
        {
          v75 = [v88 objectAtIndexedSubscript:v62];
          v76 = [v89 objectAtIndexedSubscript:v65];
          logb = [v75 isEqualToString:v76];

          if ((logb & 1) == 0)
          {
            break;
          }

          ++v62;
          ++v65;
          if (v83 == v62)
          {
            goto LABEL_67;
          }
        }

        v66 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          logc = [v6 path];
          v82 = [v7 path];
          v80 = [v38 path];
          v81 = [v37 path];
          v77 = [v88 objectAtIndexedSubscript:v62];
          v78 = [v89 objectAtIndexedSubscript:v65];
          *buf = 136316674;
          v92 = "[IXFileManager realPathForURL:ifChildOfURL:]";
          v93 = 2112;
          v94 = logc;
          v95 = 2112;
          v96 = v82;
          v97 = 2112;
          v98 = v80;
          v99 = 2112;
          v100 = v81;
          v101 = 2112;
          v102 = v77;
          v103 = 2112;
          v104 = v78;
          v79 = v78;
          _os_log_impl(&dword_1DA47A000, v66, OS_LOG_TYPE_DEFAULT, "%s: Rejecting %@ with base %@ (reals %@ ; %@) because components diverge at %@ != %@", buf, 0x48u);
        }
      }

      else
      {
        v66 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          log = [v6 path];
          v67 = [v7 path];
          v68 = [v38 path];
          v69 = [v37 path];
          *buf = 136316162;
          v92 = "[IXFileManager realPathForURL:ifChildOfURL:]";
          v93 = 2112;
          v94 = log;
          v95 = 2112;
          v96 = v67;
          v97 = 2112;
          v98 = v68;
          v99 = 2112;
          v100 = v69;
          v70 = v69;
          _os_log_impl(&dword_1DA47A000, v66, OS_LOG_TYPE_DEFAULT, "%s: Rejecting %@ with base %@ because base component count is greater than child component count (reals %@ ; %@)", buf, 0x34u);
        }
      }
    }

    goto LABEL_26;
  }

LABEL_38:
  v38 = v38;
  v39 = v38;
LABEL_27:
  v40 = v39;

  v41 = *MEMORY[0x1E69E9840];

  return v40;
}

- (unint64_t)_diskUsageForDirectoryURL:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  v57 = 0;
  v59 = 0;
  v56 = 0xA200000900000005;
  v58 = 0x500000002;
  v6 = malloc_type_malloc(0x8000uLL, 0x223271D7uLL);
  v48 = v3;
  v7 = [v3 path];
  v47 = v7;
  if (v7)
  {
    [v5 addObject:v7];
  }

  else
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v61 = "[IXFileManager _diskUsageForDirectoryURL:]";
      v62 = 2112;
      v63 = v48;
      _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to get path to url %@", buf, 0x16u);
    }
  }

  if ([v5 count])
  {
    v54 = 0;
    v53 = v4;
    v51 = v5;
    v49 = v6;
    while (1)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [v5 objectAtIndex:0];
      [v5 removeObjectAtIndex:0];
      v55 = v10;
      v52 = open([v10 fileSystemRepresentation], 1048832);
      if (v52 < 0)
      {
        v39 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = __error();
          v41 = strerror(*v40);
          *buf = 136315650;
          v61 = "[IXFileManager _diskUsageForDirectoryURL:]";
          v62 = 2112;
          v63 = v55;
          v64 = 2080;
          v65 = v41;
          _os_log_impl(&dword_1DA47A000, v39, OS_LOG_TYPE_DEFAULT, "%s: Failed to open directory %@ : %s", buf, 0x20u);
        }
      }

      else
      {
        v50 = v9;
        v11 = 0;
LABEL_10:
        v6 = v49;
        while (1)
        {
          v12 = getattrlistbulk(v52, &v56, v49, 0x8000uLL, 0);
          if (v12 == -1)
          {
            break;
          }

          v13 = v12;
          if (!v12)
          {
            goto LABEL_60;
          }

          if (v12 >= 1)
          {
            while (1)
            {
              v15 = *v6;
              v14 = v6[1];
              v16 = v6[4];
              if ((v14 & 0x20000000) != 0)
              {
                if (v6[6])
                {
                  v29 = IXGetLoggingHandle(kIXLoggingSubsystem);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    v30 = __error();
                    v31 = strerror(*v30);
                    *buf = 136315906;
                    v61 = "[IXFileManager _diskUsageForDirectoryURL:]";
                    v62 = 2080;
                    v63 = v31;
                    v64 = 2048;
                    v65 = v11;
                    v66 = 2112;
                    v67 = v55;
                    v32 = v29;
                    v33 = "%s: Got error %s while processing entry %llu in %@";
                    v34 = 42;
                    goto LABEL_42;
                  }

LABEL_51:

                  goto LABEL_52;
                }

                v17 = v6 + 7;
                if ((v14 & 1) == 0)
                {
LABEL_16:
                  v18 = 0;
                  v19 = 0xFFFFFFFFLL;
                  if ((v14 & 8) != 0)
                  {
                    goto LABEL_17;
                  }

                  goto LABEL_30;
                }
              }

              else
              {
                v17 = v6 + 6;
                if ((v14 & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              v35 = v17[1];
              v18 = v17 + *v17;
              v17 += 2;
              v19 = (v35 - 1);
              if ((v14 & 8) != 0)
              {
LABEL_17:
                v20 = *v17++;
                v21 = v20 == 2;
                if ((v14 & 0x2000000) != 0)
                {
                  goto LABEL_18;
                }

                goto LABEL_31;
              }

LABEL_30:
              v21 = 0;
              if ((v14 & 0x2000000) != 0)
              {
LABEL_18:
                v23 = *v17;
                v17 += 2;
                v22 = v23;
                if (v21)
                {
                  goto LABEL_32;
                }

                goto LABEL_19;
              }

LABEL_31:
              v22 = 0;
              if (v21)
              {
LABEL_32:
                if ((v6[3] & 2) != 0 && !*v17)
                {
                  v29 = IXGetLoggingHandle(kIXLoggingSubsystem);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136315650;
                    v61 = "[IXFileManager _diskUsageForDirectoryURL:]";
                    v62 = 2112;
                    v63 = v55;
                    v64 = 2080;
                    v65 = v18;
                    _os_log_debug_impl(&dword_1DA47A000, v29, OS_LOG_TYPE_DEBUG, "%s: skipping empty directory at %@/%s", buf, 0x20u);
                  }

                  goto LABEL_51;
                }

                if (!v18)
                {
                  v29 = IXGetLoggingHandle(kIXLoggingSubsystem);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    v61 = "[IXFileManager _diskUsageForDirectoryURL:]";
                    v62 = 2048;
                    v63 = v11;
                    v64 = 2112;
                    v65 = v55;
                    v32 = v29;
                    v33 = "%s: Failed to get name for directory item %llu in %@; not counting its children";
                    v34 = 32;
LABEL_42:
                    _os_log_impl(&dword_1DA47A000, v32, OS_LOG_TYPE_DEFAULT, v33, buf, v34);
                  }

                  goto LABEL_51;
                }

                v26 = objc_autoreleasePoolPush();
                v36 = [MEMORY[0x1E696AEC0] stringWithFileSystemRepresentation:v18 length:v19];
                v27 = [v55 stringByAppendingPathComponent:v36];

                if (v27)
                {
                  v37 = v51;
                  goto LABEL_44;
                }

                v28 = IXGetLoggingHandle(kIXLoggingSubsystem);
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v61 = "[IXFileManager _diskUsageForDirectoryURL:]";
                  v62 = 2080;
                  v63 = v18;
                  v64 = 2112;
                  v65 = v55;
                  _os_log_impl(&dword_1DA47A000, v28, OS_LOG_TYPE_DEFAULT, "%s: Failed to create path to child directory by appending %s to %@", buf, 0x20u);
                }

LABEL_47:

LABEL_48:
                objc_autoreleasePoolPop(v26);
                goto LABEL_52;
              }

LABEL_19:
              if (v16)
              {
                v38 = *v17++;
                v24 = v38 == 1;
                if ((v16 & 4) != 0)
                {
LABEL_21:
                  v25 = *v17;
                  if (!v24)
                  {
                    goto LABEL_22;
                  }

                  goto LABEL_39;
                }
              }

              else
              {
                v24 = 0;
                if ((v16 & 4) != 0)
                {
                  goto LABEL_21;
                }
              }

              v25 = 0;
              if (!v24)
              {
LABEL_22:
                v26 = objc_autoreleasePoolPush();
                v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v22];
                if ([v53 containsObject:v27])
                {
                  v28 = IXGetLoggingHandle(kIXLoggingSubsystem);
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136315650;
                    v61 = "[IXFileManager _diskUsageForDirectoryURL:]";
                    v62 = 2112;
                    v63 = v55;
                    v64 = 2080;
                    v65 = v18;
                    _os_log_debug_impl(&dword_1DA47A000, v28, OS_LOG_TYPE_DEBUG, "%s: Skipping hardlinked file at %@/%s", buf, 0x20u);
                  }

                  goto LABEL_47;
                }

                v54 += v25;
                v37 = v53;
LABEL_44:
                [v37 addObject:v27];
                goto LABEL_48;
              }

LABEL_39:
              v54 += v25;
LABEL_52:
              v6 = (v6 + v15);
              ++v11;
              if (!--v13)
              {
                goto LABEL_10;
              }
            }
          }
        }

        v42 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = __error();
          v44 = strerror(*v43);
          *buf = 136315906;
          v61 = "[IXFileManager _diskUsageForDirectoryURL:]";
          v62 = 2048;
          v63 = v11;
          v64 = 2112;
          v65 = v55;
          v66 = 2080;
          v67 = v44;
          _os_log_impl(&dword_1DA47A000, v42, OS_LOG_TYPE_DEFAULT, "%s: getattrlistbulk on entry %llu in %@ returned error %s", buf, 0x2Au);
        }

LABEL_60:
        close(v52);
        v4 = v53;
        v5 = v51;
        v9 = v50;
      }

      objc_autoreleasePoolPop(v9);
      if (![v5 count])
      {
        goto LABEL_64;
      }
    }
  }

  v54 = 0;
LABEL_64:
  free(v6);

  v45 = *MEMORY[0x1E69E9840];
  return v54;
}

- (unint64_t)diskUsageForURL:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  memset(&v12, 0, sizeof(v12));
  if (lstat([v4 fileSystemRepresentation], &v12))
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 fileSystemRepresentation];
      v7 = __error();
      v8 = strerror(*v7);
      *buf = 136315650;
      v14 = "[IXFileManager diskUsageForURL:]";
      v15 = 2080;
      v16 = v6;
      v17 = 2080;
      v18 = v8;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to stat %s : %s", buf, 0x20u);
    }

    v9 = 0;
  }

  else if ((v12.st_mode & 0xF000) == 0x4000)
  {
    v9 = [(IXFileManager *)self _diskUsageForDirectoryURL:v4];
  }

  else
  {
    v9 = v12.st_blocks << 9;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)issueSandboxExtensionForURL:(id)a3 withExtensionClass:(const char *)a4 error:(id *)a5
{
  v6 = a3;
  [v6 fileSystemRepresentation];
  v7 = *MEMORY[0x1E69E9BE0];
  v8 = sandbox_extension_issue_file();
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v8 length:strlen(v8) encoding:4 freeWhenDone:1];
    v10 = 0;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = *__error();
    v12 = *MEMORY[0x1E696A798];
    v13 = [v6 path];
    strerror(v11);
    v10 = _CreateError("[IXFileManager issueSandboxExtensionForURL:withExtensionClass:error:]", 1071, v12, v11, 0, 0, @"sandbox_extension_issue_file for path %@ failed: %s", v14, v13);

    v9 = 0;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  if (!v9)
  {
    v15 = v10;
    *a5 = v10;
  }

LABEL_7:

  return v9;
}

- (int64_t)consumeSandboxExtension:(id)a3 error:(id *)a4
{
  v5 = [a3 UTF8String];
  v6 = sandbox_extension_consume();
  if (v6 < 0)
  {
    v9 = *__error();
    v10 = *MEMORY[0x1E696A798];
    v11 = v9;
    strerror(v9);
    v8 = _CreateError("[IXFileManager consumeSandboxExtension:error:]", 1094, v10, v11, 0, 0, @"sandbox_extension_consume for %s failed: %s.", v12, v5);
    if (a4)
    {
      v8 = v8;
      *a4 = v8;
    }

    v7 = -1;
  }

  else
  {
    v7 = v6;
    v8 = 0;
  }

  return v7;
}

- (BOOL)releaseSandboxExtensionToken:(int64_t)a3 error:(id *)a4
{
  v6 = sandbox_extension_release();
  if (v6)
  {
    v7 = *__error();
    v8 = *MEMORY[0x1E696A798];
    v9 = v7;
    strerror(v7);
    v11 = _CreateError("[IXFileManager releaseSandboxExtensionToken:error:]", 1115, v8, v9, 0, 0, @"sandbox_extension_release for %lld failed: %s.", v10, a3);
    if (a4)
    {
      v11 = v11;
      *a4 = v11;
    }
  }

  else
  {
    v11 = 0;
  }

  return v6 == 0;
}

- (void)_moveItemAtURL:(NSObject *)a3 toURL:failIfSrcMissing:error:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [a1 path];
  v7 = 136315650;
  v8 = "[IXFileManager _moveItemAtURL:toURL:failIfSrcMissing:error:]";
  v9 = 2112;
  v10 = v5;
  v11 = 2112;
  v12 = a2;
  _os_log_error_impl(&dword_1DA47A000, a3, OS_LOG_TYPE_ERROR, "%s: Failed to remove move source after copy at %@ : %@", &v7, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_removeACLAtPath:isDir:error:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v22 = *MEMORY[0x1E69E9840];
  v1 = *__error();
  v2 = __error();
  v20 = strerror(*v2);
  OUTLINED_FUNCTION_1();
  v11 = _CreateError(v3, v4, v5, v6, v7, v8, v9, v10, v0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1DA47A000, v12, v13, "%s: Failed to remove ACL : %@", v14, v15, v16, v17, v19, v20, v21);

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_removeACLAtPath:isDir:error:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v22 = *MEMORY[0x1E69E9840];
  v1 = *__error();
  v2 = __error();
  v20 = strerror(*v2);
  OUTLINED_FUNCTION_1();
  v11 = _CreateError(v3, v4, v5, v6, v7, v8, v9, v10, v0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1DA47A000, v12, v13, "%s: Failed to remove ACL : %@", v14, v15, v16, v17, v19, v20, v21);

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_removeACLAtPath:isDir:error:.cold.3()
{
  OUTLINED_FUNCTION_3();
  v22 = *MEMORY[0x1E69E9840];
  v1 = *__error();
  v2 = __error();
  v20 = strerror(*v2);
  OUTLINED_FUNCTION_1();
  v11 = _CreateError(v3, v4, v5, v6, v7, v8, v9, v10, v0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1DA47A000, v12, v13, "%s: Failed to remove ACL : %@", v14, v15, v16, v17, v19, v20, v21);

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_removeACLAtPath:isDir:error:.cold.4()
{
  OUTLINED_FUNCTION_3();
  v22 = *MEMORY[0x1E69E9840];
  v1 = *__error();
  v2 = __error();
  v20 = strerror(*v2);
  OUTLINED_FUNCTION_1();
  v11 = _CreateError(v3, v4, v5, v6, v7, v8, v9, v10, v0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1DA47A000, v12, v13, "%s: Failed to remove ACL : %@", v14, v15, v16, v17, v19, v20, v21);

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_removeACLAtPath:isDir:error:.cold.5()
{
  OUTLINED_FUNCTION_3();
  v22 = *MEMORY[0x1E69E9840];
  v1 = *__error();
  v2 = __error();
  v20 = strerror(*v2);
  OUTLINED_FUNCTION_1();
  v11 = _CreateError(v3, v4, v5, v6, v7, v8, v9, v10, v0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1DA47A000, v12, v13, "%s: Failed to remove ACL : %@", v14, v15, v16, v17, v19, v20, v21);

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_removeACLAtPath:(void *)a1 isDir:error:.cold.6(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v15 = _CreateError("[IXFileManager _removeACLAtPath:isDir:error:]", 235, a1, v2, 0, 0, @"acl_init() failed: %s", v5, v4);
  OUTLINED_FUNCTION_2(&dword_1DA47A000, v6, v7, "%s: Failed to remove ACL : %@", v8, v9, v10, v11, v13, v14, 2u);

  v12 = *MEMORY[0x1E69E9840];
}

void __74__IXFileManager_copyACLFrom_toAllChildrenOfPath_ignoringCopyErrors_error___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "[IXFileManager copyACLFrom:toAllChildrenOfPath:ignoringCopyErrors:error:]_block_invoke";
  v5 = 2080;
  v6 = a1;
  _os_log_debug_impl(&dword_1DA47A000, a2, OS_LOG_TYPE_DEBUG, "%s: Writing ACL to %s", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end