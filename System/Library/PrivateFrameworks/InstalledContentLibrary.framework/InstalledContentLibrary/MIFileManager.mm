@interface MIFileManager
+ (id)_sanitizeFilePathForVarOrTmpSymlink:(id)a3 error:(id *)a4;
+ (id)defaultManager;
- (BOOL)_bulkSetPropertiesForPath:(const char *)a3 existingFD:(int)a4 UID:(unsigned int)a5 GID:(unsigned int)a6 mode:(unsigned __int16)a7 flags:(unsigned int)a8 dataProtectionClass:(int)a9 removeACL:(BOOL)a10 error:(id *)a11;
- (BOOL)_copyItemAtURL:(id)a3 toURL:(id)a4 failIfSrcMissing:(BOOL)a5 alwaysClone:(BOOL)a6 ignoreErrors:(BOOL)a7 error:(id *)a8;
- (BOOL)_itemIsType:(unsigned __int16)a3 withDescription:(id)a4 atURL:(id)a5 error:(id *)a6;
- (BOOL)_markEAFlag:(const char *)a3 forAppIdentifier:(id)a4 insecurelyCachedOnBundle:(id)a5 error:(id *)a6;
- (BOOL)_moveItemAtURL:(id)a3 toURL:(id)a4 failIfSrcMissing:(BOOL)a5 error:(id *)a6;
- (BOOL)_removeACLAtPath:(const char *)a3 isDir:(BOOL)a4 error:(id *)a5;
- (BOOL)_setData:(id)a3 forExtendedAttributeNamed:(id)a4 onURL:(id)a5 orFD:(int)a6 error:(id *)a7;
- (BOOL)_stageURLByCopying:(id)a3 toItemName:(id)a4 inStagingDir:(id)a5 stagingMode:(int)a6 settingUID:(unsigned int)a7 gid:(unsigned int)a8 dataProtectionClass:(int)a9 hasSymlink:(BOOL *)a10 error:(id *)a11;
- (BOOL)_validateSymlink:(id)a3 withStartingDepth:(unsigned int)a4 andEndingDepth:(unsigned int *)a5;
- (BOOL)captureStoreDataFromDirectory:(id)a3 toDirectory:(id)a4 doCopy:(BOOL)a5 failureIsFatal:(BOOL)a6 includeiTunesMetadata:(BOOL)a7 withError:(id *)a8;
- (BOOL)clearExtendedAttributesAtURL:(id)a3 error:(id *)a4;
- (BOOL)clearPlaceholderStatusForBundle:(id)a3 withError:(id *)a4;
- (BOOL)copyVolumeInfo:(id *)a3 forURL:(id)a4 error:(id *)a5;
- (BOOL)createDirectoryAtURL:(id)a3 withIntermediateDirectories:(BOOL)a4 mode:(unsigned __int16)a5 class:(int)a6 error:(id *)a7;
- (BOOL)createSymbolicLinkAtURL:(id)a3 withDestinationURL:(id)a4 error:(id *)a5;
- (BOOL)dataProtectionClassOfItemAtURL:(id)a3 class:(int *)a4 error:(id *)a5;
- (BOOL)enumerateExtendedAttributeNamesAtURL:(id)a3 includeCompression:(BOOL)a4 error:(id *)a5 enumerator:(id)a6;
- (BOOL)itemDoesNotExistAtURL:(id)a3;
- (BOOL)itemDoesNotExistOrIsNotDirectoryAtURL:(id)a3;
- (BOOL)itemExistsAtURL:(id)a3 error:(id *)a4;
- (BOOL)markBundleAsPlaceholder:(id)a3 withError:(id *)a4;
- (BOOL)removeExtendedAttributeNamed:(id)a3 fromURL:(id)a4 error:(id *)a5;
- (BOOL)removeItemAtURL:(id)a3 keepParent:(BOOL)a4 error:(id *)a5;
- (BOOL)secureRenameFromSourceURL:(id)a3 toDestinationURL:(id)a4 destinationStatus:(unsigned __int8)a5 error:(id *)a6;
- (BOOL)setDataProtectionClassOfItemAtURL:(id)a3 toClass:(int)a4 ifPredicate:(id)a5 error:(id *)a6;
- (BOOL)setInstallType:(id)a3 inExtendedAttributeOnBundle:(id)a4 error:(id *)a5;
- (BOOL)setModificationDateToNowForURL:(id)a3 error:(id *)a4;
- (BOOL)setOwnerOfURL:(id)a3 toUID:(unsigned int)a4 gid:(unsigned int)a5 error:(id *)a6;
- (BOOL)setOwnershipAtURL:(id)a3 toUID:(unsigned int)a4 gid:(unsigned int)a5 error:(id *)a6;
- (BOOL)setPermissionsForURL:(id)a3 toMode:(unsigned __int16)a4 error:(id *)a5;
- (BOOL)stageURL:(id)a3 toItemName:(id)a4 inStagingDir:(id)a5 stagingMode:(int)a6 settingUID:(unsigned int)a7 gid:(unsigned int)a8 hasSymlink:(BOOL *)a9 error:(id *)a10;
- (BOOL)stageURLByMoving:(id)a3 toItemName:(id)a4 inStagingDir:(id)a5 settingUID:(unsigned int)a6 gid:(unsigned int)a7 dataProtectionClass:(int)a8 breakHardlinks:(BOOL)a9 hasSymlink:(BOOL *)a10 error:(id *)a11;
- (BOOL)standardizeOwnershipAtURL:(id)a3 toUID:(unsigned int)a4 GID:(unsigned int)a5 removeACLs:(BOOL)a6 setProtectionClass:(BOOL)a7 foundSymlink:(BOOL *)a8 error:(id *)a9;
- (BOOL)validateSymlinksInURLDoNotEscapeURL:(id)a3 error:(id *)a4;
- (id)_dataForExtendedAttributeNamed:(id)a3 length:(int64_t)a4 onURL:(id)a5 orFD:(int)a6 error:(id *)a7;
- (id)_firstAvailableParentForURL:(id)a3 error:(id *)a4;
- (id)_insecureCachedAppIdentifierIfMarkedWithEAFlag:(const char *)a3 bundleURL:(id)a4 allowPlaceholders:(BOOL)a5 error:(id *)a6;
- (id)_realPathWhatExistsInPath:(id)a3 isDirectory:(BOOL)a4;
- (id)_traverseUntilFirstAvailableParentOfURL:(id)a3 withBlock:(id)a4;
- (id)aclTextFromURL:(id)a3 error:(id *)a4;
- (id)createRelativeDirectoryPath:(id)a3 inBaseDirectory:(id)a4 mode:(unsigned __int16)a5 class:(int)a6 error:(id *)a7;
- (id)createTemporaryDirectoryInDirectoryURL:(id)a3 error:(id *)a4;
- (id)debugDescriptionForItemAtURL:(id)a3;
- (id)destinationOfSymbolicLinkAtURL:(id)a3 error:(id *)a4;
- (id)enumerateExternalVolumesWithBlock:(id)a3;
- (id)enumerateURLsForItemsInDirectoryAtURL:(id)a3 ignoreSymlinks:(BOOL)a4 withBlock:(id)a5;
- (id)extendedAttributesFromURL:(id)a3 includeCompression:(BOOL)a4 error:(id *)a5;
- (id)installTypeFromExtendedAttributeOnBundle:(id)a3 error:(id *)a4;
- (id)modificationDateForURL:(id)a3 error:(id *)a4;
- (id)mountPointForURL:(id)a3 error:(id *)a4;
- (id)mountPointForVolumeUUID:(id)a3 error:(id *)a4;
- (id)realPathForURL:(id)a3 allowNonExistentPathComponents:(BOOL)a4 isDirectory:(BOOL)a5 error:(id *)a6;
- (id)realPathForURL:(id)a3 ifChildOfURL:(id)a4;
- (id)traverseDirectoryAtURL:(id)a3 withBlock:(id)a4;
- (id)upToFirstFourBytesFromURL:(id)a3 error:(id *)a4;
- (id)urlsForItemsInDirectoryAtURL:(id)a3 ignoringSymlinks:(BOOL)a4 error:(id *)a5;
- (id)volumeUUIDForURL:(id)a3 error:(id *)a4;
- (int)deviceForURLOrFirstAvailableParent:(id)a3 error:(id *)a4;
- (unint64_t)diskUsageForURL:(id)a3;
- (void)logAccessPermissionsForURL:(id)a3;
@end

@implementation MIFileManager

+ (id)defaultManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__MIFileManager_defaultManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultManager_onceToken_1 != -1)
  {
    dispatch_once(&defaultManager_onceToken_1, block);
  }

  v2 = defaultManager_defaultInstance;

  return v2;
}

uint64_t __31__MIFileManager_defaultManager__block_invoke()
{
  defaultManager_defaultInstance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)removeItemAtURL:(id)a3 keepParent:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v8 = removefile_state_alloc();
  v10 = v8;
  value = 0;
  if (!v7)
  {
    v17 = *MEMORY[0x1E696A798];
    v18 = @"nil url passed to -removeItemAtURL:error:";
    v19 = 111;
    v20 = 14;
LABEL_19:
    _CreateError("[MIFileManager removeItemAtURL:keepParent:error:]", v19, v17, v20, 0, 0, v18, v9, v28);
    goto LABEL_20;
  }

  if (removefile_state_set(v8, 3u, _removefile_error_callback) && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v11 = __error();
    strerror(*v11);
    MOLogWrite();
  }

  if (removefile_state_set(v10, 4u, &value) && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v12 = __error();
    strerror(*v12);
    MOLogWrite();
  }

  if (v6)
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  if (removefile([v7 fileSystemRepresentation], v10, v13) && *__error() != 2)
  {
    v21 = *MEMORY[0x1E696A798];
    v22 = *__error();
    v23 = __error();
    v28 = v7;
    strerror(*v23);
    v18 = @"removefile of %@ failed: %s";
    v19 = 132;
    v17 = v21;
    v20 = v22;
    goto LABEL_19;
  }

  v14 = value;
  if ((value & 0xFFFFFFFD) == 0)
  {
    removefile_state_free(v10);
    v24 = 0;
    v26 = 1;
    goto LABEL_24;
  }

  v15 = *MEMORY[0x1E696A798];
  strerror(value);
  _CreateError("[MIFileManager removeItemAtURL:keepParent:error:]", 138, v15, v14, 0, 0, @"removefile of %@ failed: %s", v16, v7);
  v24 = LABEL_20:;
  removefile_state_free(v10);
  if (a5)
  {
    v25 = v24;
    v26 = 0;
    *a5 = v24;
  }

  else
  {
    v26 = 0;
  }

LABEL_24:

  return v26;
}

- (BOOL)createDirectoryAtURL:(id)a3 withIntermediateDirectories:(BOOL)a4 mode:(unsigned __int16)a5 class:(int)a6 error:(id *)a7
{
  v8 = *&a6;
  v10 = a4;
  v11 = a3;
  v12 = [v11 fileSystemRepresentation];
  if (v10)
  {
    v13 = mkpath_np(v12, a5);
    if (v13)
    {
      v14 = v13;
      if (v13 != 17)
      {
        v15 = *MEMORY[0x1E696A798];
        v16 = [v11 path];
        strerror(v14);
        v18 = _CreateError("[MIFileManager createDirectoryAtURL:withIntermediateDirectories:mode:class:error:]", 161, v15, v14, 0, 0, @"mkpath_np of %@ failed: %s", v17, v16);

        goto LABEL_15;
      }
    }
  }

  else if (mkdir(v12, a5) && *__error() != 17)
  {
    v34 = *MEMORY[0x1E696A798];
    v35 = *__error();
    v31 = [v11 path];
    v36 = __error();
    strerror(*v36);
    _CreateError("[MIFileManager createDirectoryAtURL:withIntermediateDirectories:mode:class:error:]", 167, v34, v35, 0, 0, @"mkdir of %@ failed: %s", v37, v31);
    goto LABEL_14;
  }

  if (v8 == -1)
  {
    v18 = 0;
    v23 = 1;
    goto LABEL_21;
  }

  v19 = opendir([v11 fileSystemRepresentation]);
  if (!v19)
  {
    v29 = *MEMORY[0x1E696A798];
    v30 = *__error();
    v31 = [v11 path];
    v32 = __error();
    strerror(*v32);
    _CreateError("[MIFileManager createDirectoryAtURL:withIntermediateDirectories:mode:class:error:]", 177, v29, v30, 0, 0, @"opendir of %@ failed: %s", v33, v31);
    v18 = LABEL_14:;

LABEL_15:
    v23 = 0;
    if (!a7)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v20 = v19;
  v21 = dirfd(v19);
  v22 = fcntl(v21, 64, v8);
  v23 = v22 == 0;
  if (v22)
  {
    v24 = *MEMORY[0x1E696A798];
    v25 = *__error();
    v26 = [v11 path];
    v27 = __error();
    strerror(*v27);
    v18 = _CreateError("[MIFileManager createDirectoryAtURL:withIntermediateDirectories:mode:class:error:]", 183, v24, v25, 0, 0, @"Failed to setclass(%d) on directory %@: %s", v28, v8);
  }

  else
  {
    v18 = 0;
  }

  closedir(v20);
  if (a7)
  {
LABEL_19:
    if (!v23)
    {
      v38 = v18;
      v23 = 0;
      *a7 = v18;
    }
  }

LABEL_21:

  return v23;
}

- (id)createRelativeDirectoryPath:(id)a3 inBaseDirectory:(id)a4 mode:(unsigned __int16)a5 class:(int)a6 error:(id *)a7
{
  v8 = *&a6;
  v9 = a5;
  v12 = a4;
  v13 = [a3 pathComponents];
  v14 = [v13 count];
  v15 = v12;
  v21 = v15;
  if (!v14)
  {
LABEL_8:
    v15 = v15;
    v19 = v15;
    goto LABEL_10;
  }

  v16 = 0;
  while (1)
  {
    v17 = v15;
    v18 = [v13 objectAtIndexedSubscript:v16];
    v15 = [v15 URLByAppendingPathComponent:v18 isDirectory:1];

    if (v14 != 1)
    {
      break;
    }

    if (![(MIFileManager *)self createDirectoryAtURL:v15 withIntermediateDirectories:0 mode:v9 class:v8 error:a7])
    {
      goto LABEL_9;
    }

LABEL_7:
    ++v16;
    if (!--v14)
    {
      goto LABEL_8;
    }
  }

  if ([(MIFileManager *)self createDirectoryAtURL:v15 withIntermediateDirectories:0 mode:v9 error:a7])
  {
    goto LABEL_7;
  }

LABEL_9:
  v19 = 0;
LABEL_10:

  return v19;
}

- (BOOL)_copyItemAtURL:(id)a3 toURL:(id)a4 failIfSrcMissing:(BOOL)a5 alwaysClone:(BOOL)a6 ignoreErrors:(BOOL)a7 error:(id *)a8
{
  v9 = a7;
  v10 = a6;
  v13 = a3;
  v14 = a4;
  v15 = objc_opt_new();
  [v15 setIgnoreErrors:v9];
  [v15 setError:0];
  if (a5 || (memset(&v38, 0, sizeof(v38)), !lstat([v13 fileSystemRepresentation], &v38)))
  {
    memset(&v37, 0, sizeof(v37));
    if (lstat([v14 fileSystemRepresentation], &v37) || (v37.st_mode & 0xF000) != 0x4000)
    {
      if (v10)
      {
        v22 = 34373647;
      }

      else
      {
        v22 = 17596431;
      }

      v23 = copyfile_state_alloc();
      copyfile_state_set(v23, 6u, _CopyfileStatusCallback);
      copyfile_state_set(v23, 7u, v15);
      v24 = copyfile([v13 fileSystemRepresentation], objc_msgSend(v14, "fileSystemRepresentation"), v23, v22);
      v17 = v24 == 0;
      if (v24)
      {
        v25 = [v15 error];
        v26 = v25;
        if (v25)
        {
          v18 = v25;
        }

        else
        {
          v30 = *__error();
          v36 = *MEMORY[0x1E696A798];
          v31 = [v13 path];
          v35 = [v14 path];
          strerror(v30);
          v18 = _CreateError("[MIFileManager _copyItemAtURL:toURL:failIfSrcMissing:alwaysClone:ignoreErrors:error:]", 360, v36, v30, 0, 0, @"copyfile of %@ to %@ failed: %s", v32, v31);
        }

        if (!v23)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v18 = 0;
        if (!v23)
        {
          goto LABEL_20;
        }
      }

      copyfile_state_free(v23);
    }

    else
    {
      v19 = *MEMORY[0x1E696A798];
      v20 = [v14 path];
      v18 = _CreateError("[MIFileManager _copyItemAtURL:toURL:failIfSrcMissing:alwaysClone:ignoreErrors:error:]", 326, v19, 17, 0, 0, @"Destination %@ exists and is a directory", v21, v20);

      v17 = 0;
    }
  }

  else
  {
    v16 = *__error();
    v17 = v16 == 2;
    if (v16 == 2)
    {
      v18 = 0;
    }

    else
    {
      v27 = *MEMORY[0x1E696A798];
      v28 = [v13 path];
      strerror(v16);
      v18 = _CreateError("[MIFileManager _copyItemAtURL:toURL:failIfSrcMissing:alwaysClone:ignoreErrors:error:]", 315, v27, v16, 0, 0, @"stat of %@ failed: %s", v29, v28);
    }
  }

LABEL_20:
  if (a8 && !v17)
  {
    v33 = v18;
    *a8 = v18;
  }

  return v17;
}

- (BOOL)_moveItemAtURL:(id)a3 toURL:(id)a4 failIfSrcMissing:(BOOL)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [v10 fileSystemRepresentation];
  v14 = [v11 fileSystemRepresentation];
  if (!a5)
  {
    memset(&v38, 0, sizeof(v38));
    if (lstat(v12, &v38))
    {
      v15 = __error();
      v16 = *v15;
      LOBYTE(v17) = v16 == 2;
      if (v16 == 2)
      {
        v18 = 0;
      }

      else
      {
        v23 = *MEMORY[0x1E696A798];
        strerror(*v15);
        v18 = _CreateError("[MIFileManager _moveItemAtURL:toURL:failIfSrcMissing:error:]", 394, v23, v16, 0, 0, @"stat of %s failed: %s", v24, v12);
      }

      goto LABEL_26;
    }
  }

  rename(v12, v14, v13);
  if (!v19)
  {
    v22 = 0;
    goto LABEL_24;
  }

  v20 = *__error();
  if (v20 == 30)
  {
    v21 = 1;
LABEL_17:
    v25 = [v10 path];
    v26 = [v25 containsString:@"/System/Library/AppPlaceholders"];

    v37 = 0;
    v17 = [(MIFileManager *)self _copyItemAtURL:v10 toURL:v11 failIfSrcMissing:1 alwaysClone:0 ignoreErrors:0 error:&v37];
    v27 = v37;
    v18 = v27;
    if (!v17 || (v21 & 1) != 0 || (v26 & 1) != 0)
    {
      goto LABEL_26;
    }

    v36 = v27;
    v28 = [(MIFileManager *)self removeItemAtURL:v10 error:&v36];
    v22 = v36;

    if (!v28 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      MOLogWrite();
    }

LABEL_24:
    LOBYTE(v17) = 1;
    goto LABEL_30;
  }

  if (v20 == 18)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      [MIFileManager _moveItemAtURL:v12 toURL:v14 failIfSrcMissing:? error:?];
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v34 = v12;
      v35 = v14;
      MOLogWrite();
    }

    v21 = 0;
    goto LABEL_17;
  }

  v29 = v20;
  v30 = *MEMORY[0x1E696A798];
  strerror(v20);
  v18 = _CreateError("[MIFileManager _moveItemAtURL:toURL:failIfSrcMissing:error:]", 414, v30, v29, 0, 0, @"rename of %s to %s failed: %s", v31, v12);
  LOBYTE(v17) = 0;
LABEL_26:
  if (a6 && !v17)
  {
    v32 = v18;
    LOBYTE(v17) = 0;
    *a6 = v18;
  }

  v22 = v18;
LABEL_30:

  return v17;
}

- (id)createTemporaryDirectoryInDirectoryURL:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *a4 = 0;
  }

  v5 = [a3 URLByAppendingPathComponent:@"temp.XXXXXX" isDirectory:1];
  v6 = strdup([v5 fileSystemRepresentation]);
  if (mkdtemp(v6))
  {
    v7 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v6 isDirectory:1 relativeToURL:0];
    free(v6);
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
    v14 = @"PathArgument";
    v15[0] = v5;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v11 = _CreateAndLogError("[MIFileManager createTemporaryDirectoryInDirectoryURL:error:]", 478, @"MIInstallerErrorDomain", 4, v8, v9, @"Failed to create temp dir at path %s", v10, v6);

    if (a4)
    {
      v12 = v11;
      *a4 = v11;
    }

    free(v6);

    v7 = 0;
  }

  return v7;
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
          v48 = *MEMORY[0x1E696A798];
          v49 = *__error();
          v50 = __error();
          strerror(*v50);
          v17 = _CreateError("[MIFileManager _removeACLAtPath:isDir:error:]", 511, v48, v49, 0, 0, @"dirfd of %s failed: %s", v51, a3);
          v18 = 511;
        }

        else
        {
          if (!MEMORY[0x1B2732E10]())
          {
            v26 = 0;
            v27 = 1;
            goto LABEL_20;
          }

          v12 = *MEMORY[0x1E696A798];
          v13 = *__error();
          v14 = __error();
          strerror(*v14);
          v17 = _CreateError("[MIFileManager _removeACLAtPath:isDir:error:]", 516, v12, v13, 0, 0, @"Failed to set ACL on dir %s: %s", v15, a3);
          v18 = 516;
        }

        v26 = _CreateAndLogError("[MIFileManager _removeACLAtPath:isDir:error:]", v18, @"MIInstallerErrorDomain", 4, v17, 0, @"Failed to remove ACL", v16, v54);

        v27 = 0;
LABEL_20:
        closedir(v11);
        goto LABEL_21;
      }

      v37 = *MEMORY[0x1E696A798];
      v38 = *__error();
      v39 = __error();
      strerror(*v39);
      v42 = _CreateError("[MIFileManager _removeACLAtPath:isDir:error:]", 505, v37, v38, 0, 0, @"opendir of %s failed: %s", v40, a3);
      v43 = 505;
    }

    else
    {
      v28 = open(a3, 2097154);
      if ((v28 & 0x80000000) == 0)
      {
        v29 = v28;
        v30 = MEMORY[0x1B2732E10]();
        v27 = v30 == 0;
        if (v30)
        {
          v31 = *MEMORY[0x1E696A798];
          v32 = *__error();
          v33 = __error();
          strerror(*v33);
          v35 = _CreateError("[MIFileManager _removeACLAtPath:isDir:error:]", 527, v31, v32, 0, 0, @"Failed to set ACL on %s: %s", v34, a3);
          v26 = _CreateAndLogError("[MIFileManager _removeACLAtPath:isDir:error:]", 527, @"MIInstallerErrorDomain", 4, v35, 0, @"Failed to remove ACL", v36, v56);
        }

        else
        {
          v26 = 0;
        }

        close(v29);
LABEL_21:
        acl_free(v9);
        if (!a5)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }

      v44 = *MEMORY[0x1E696A798];
      v45 = *__error();
      v46 = __error();
      strerror(*v46);
      v42 = _CreateError("[MIFileManager _removeACLAtPath:isDir:error:]", 522, v44, v45, 0, 0, @"open of %s failed: %s", v47, a3);
      v43 = 522;
    }

    v26 = _CreateAndLogError("[MIFileManager _removeACLAtPath:isDir:error:]", v43, @"MIInstallerErrorDomain", 4, v42, 0, @"Failed to remove ACL", v41, v57);

    v27 = 0;
    goto LABEL_21;
  }

  v19 = *MEMORY[0x1E696A798];
  v20 = *__error();
  v21 = __error();
  v22 = strerror(*v21);
  v24 = _CreateError("[MIFileManager _removeACLAtPath:isDir:error:]", 498, v19, v20, 0, 0, @"acl_init() failed: %s", v23, v22);
  v26 = _CreateAndLogError("[MIFileManager _removeACLAtPath:isDir:error:]", 498, @"MIInstallerErrorDomain", 4, v24, 0, @"Failed to remove ACL", v25, v55);

  v27 = 0;
  if (!a5)
  {
    goto LABEL_24;
  }

LABEL_22:
  if (!v27)
  {
    v52 = v26;
    *a5 = v26;
  }

LABEL_24:

  return v27;
}

- (BOOL)_bulkSetPropertiesForPath:(const char *)a3 existingFD:(int)a4 UID:(unsigned int)a5 GID:(unsigned int)a6 mode:(unsigned __int16)a7 flags:(unsigned int)a8 dataProtectionClass:(int)a9 removeACL:(BOOL)a10 error:(id *)a11
{
  v33 = a4;
  v34 = a3;
  v36[3] = *MEMORY[0x1E69E9840];
  v36[0] = 5;
  v36[1] = 0;
  v36[2] = 0;
  v15 = acl_size(1);
  v35 = v32;
  v16 = v15 + 28;
  if (!a10)
  {
    v16 = 28;
  }

  v17 = &v32[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = 12;
  if (a9 == -1)
  {
    v19 = 8;
  }

  else
  {
    v19 = 12;
  }

  if (geteuid())
  {
    v20 = 0;
    v21 = v17;
  }

  else
  {
    *v17 = a5;
    v21 = v17 + 1;
    v20 = 0x8000;
    v18 = 16;
  }

  *v21 = a6;
  v21[1] = a7 & 0xFFF;
  v21[2] = a8;
  v22 = (v21 + 3);
  v23 = v20 | 0x70000;
  HIDWORD(v36[0]) = v20 | 0x70000;
  if (a10)
  {
    *(v21 + 3) = v19;
    v18 += 8;
    v24 = v21 + 3;
    v22 = (v21 + 5);
    v23 = v20 | 0x470000;
    HIDWORD(v36[0]) = v20 | 0x470000;
  }

  else
  {
    v24 = 0;
  }

  if (a9 != -1)
  {
    *v22++ = a9;
    v18 += 4;
    HIDWORD(v36[0]) = v23 | 0x40000000;
  }

  if (a10)
  {
    v25 = acl_copy_ext_native(v22, 1, v15);
    if (v25 > v15)
    {
      _CreateAndLogError("[MIFileManager _bulkSetPropertiesForPath:existingFD:UID:GID:mode:flags:dataProtectionClass:removeACL:error:]", 665, @"MIInstallerErrorDomain", 4, 0, 0, @"acl_copy_ext_native returned size %zd which was more than we had allocated (%zd)", v26, v25);
      goto LABEL_21;
    }

    v24[1] = v25;
    v18 += v25;
  }

  if (v33 < 0)
  {
    if (setattrlist(v34, v36, v17, v18, 1u))
    {
      goto LABEL_20;
    }

LABEL_24:
    v29 = 0;
    v30 = 1;
    goto LABEL_26;
  }

  if (!fsetattrlist(v33, v36, v17, v18, 0))
  {
    goto LABEL_24;
  }

LABEL_20:
  v27 = *__error();
  _CreateAndLogError("[MIFileManager _bulkSetPropertiesForPath:existingFD:UID:GID:mode:flags:dataProtectionClass:removeACL:error:]", 684, *MEMORY[0x1E696A798], v27, 0, 0, @"setattrlist failed for file %s", v28, v34);
  v29 = LABEL_21:;
  if (a11)
  {
    v29 = v29;
    v30 = 0;
    *a11 = v29;
  }

  else
  {
    v30 = 0;
  }

LABEL_26:

  return v30;
}

- (BOOL)stageURLByMoving:(id)a3 toItemName:(id)a4 inStagingDir:(id)a5 settingUID:(unsigned int)a6 gid:(unsigned int)a7 dataProtectionClass:(int)a8 breakHardlinks:(BOOL)a9 hasSymlink:(BOOL *)a10 error:(id *)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__11;
  v49 = __Block_byref_object_dispose__11;
  v50 = 0;
  v20 = [v19 URLByAppendingPathComponent:v18 isDirectory:0];
  v21 = objc_opt_new();
  v44 = 0;
  LOBYTE(a5) = [(MIFileManager *)self moveItemAtURL:v17 toURL:v20 error:&v44];
  v32 = v17;
  v22 = v44;
  if ((a5 & 1) == 0)
  {
    goto LABEL_9;
  }

  v23 = [v20 fileSystemRepresentation];
  v43 = v22;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __125__MIFileManager_stageURLByMoving_toItemName_inStagingDir_settingUID_gid_dataProtectionClass_breakHardlinks_hasSymlink_error___block_invoke;
  v34[3] = &unk_1E7AE21D0;
  v34[4] = self;
  v35 = v19;
  v39 = a6;
  v40 = a7;
  v41 = a8;
  v42 = a9;
  v24 = v21;
  v36 = v24;
  v37 = &v45;
  v38 = &v51;
  v25 = TraverseDirectory(v23, 0, 0x88u, &v43, v34);
  v26 = v43;

  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25;
  }

  if (v27 != 1)
  {

    v22 = v26;
LABEL_9:
    if (a11)
    {
      if (v22)
      {
        v29 = v22;
        v30 = 0;
        *a11 = v22;
      }

      else
      {
        v30 = 0;
        *a11 = v46[5];
      }
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_19;
  }

  v28 = v46[5];

  if (v28 || [v24 count] && (v33[0] = MEMORY[0x1E69E9820], v33[1] = 3221225472, v33[2] = __125__MIFileManager_stageURLByMoving_toItemName_inStagingDir_settingUID_gid_dataProtectionClass_breakHardlinks_hasSymlink_error___block_invoke_2, v33[3] = &unk_1E7AE21F8, v33[4] = self, v33[5] = &v45, objc_msgSend(v24, "enumerateKeysAndObjectsUsingBlock:", v33), v46[5]))
  {
    v22 = 0;
    goto LABEL_9;
  }

  v22 = 0;
  if (a10)
  {
    *a10 = *(v52 + 24);
  }

  v30 = 1;
LABEL_19:

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v51, 8);

  return v30;
}

uint64_t __125__MIFileManager_stageURLByMoving_toItemName_inStagingDir_settingUID_gid_dataProtectionClass_breakHardlinks_hasSymlink_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v6 = *(a1 + 72);
  v5 = *(a1 + 76);
  v53 = *(a1 + 80);
  v7 = *(a1 + 84);
  v8 = *(a1 + 48);
  v56 = *(a1 + 32);
  v9 = v4;
  v10 = v8;
  v60 = 0;
  v11 = *(a2 + 60);
  v12 = *(a2 + 24);
  v55 = v10;
  v57 = v9;
  if (v11 != 1)
  {
    if (v11 == 2)
    {
      v13 = 0;
      v14 = 0xFFFFFFFFLL;
      v15 = 493;
    }

    else
    {
      if (v11 == 5)
      {
        v13 = 1;
        v60 = 1;
      }

      else
      {
        v13 = 0;
      }

      v14 = 0xFFFFFFFFLL;
      v15 = 420;
    }

    goto LABEL_18;
  }

  v16 = v10;
  v17 = open(v12, 256);
  v14 = v17;
  if ((v17 & 0x80000000) != 0)
  {
    v35 = *__error();
    v36 = *MEMORY[0x1E696A798];
    v37 = v35;
    strerror(v35);
    v30 = _CreateAndLogError("_StageURLByMovingProcessItem", 738, v36, v37, 0, 0, @"Failed to open %s : %s", v38, v12);
    v28 = v56;
    goto LABEL_27;
  }

  v18 = *(a2 + 80);
  LODWORD(v59) = 0;
  v19 = ffsctl(v17, 0xC0044115uLL, &v59, 0);
  if (v19)
  {
    v20 = v19;
    v21 = v18;
    if (*__error() != 16)
    {
      v22 = __error();
      v23 = *v22;
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        v50 = strerror(*v22);
        v51 = v12;
        v47 = v20;
        v49 = v23;
        MOLogWrite();
      }
    }

    v24 = gLogHandle;
    if (v21 == 1)
    {
      v52 = v5;
      v25 = v6;
      if (!gLogHandle || *(gLogHandle + 44) >= 5)
      {
        v47 = v12;
LABEL_40:
        MOLogWrite();
        goto LABEL_41;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v13 = 0;
    v15 = 420;
    if (v18 == 1 || !v7)
    {
LABEL_18:
      if ((*(a2 + 56) & 0x20) != 0)
      {
        if (gLogHandle && *(gLogHandle + 44) >= 7)
        {
          HIDWORD(v47) = HIDWORD(v12);
          MOLogWrite();
        }

        v26 = 32;
      }

      else
      {
        v26 = 0;
      }

      v59 = 0;
      v27 = 1;
      BYTE4(v47) = 1;
      LODWORD(v47) = v53;
      v28 = v56;
      v29 = [v56 bulkSetPropertiesForPath:v12 withOpenFD:v14 UID:v6 GID:v5 mode:v15 flags:v26 dataProtectionClass:v47 removeACL:&v59 error:?];
      v30 = v59;
      if (v29)
      {
        v31 = 0;
        v16 = v55;
        goto LABEL_28;
      }

      v16 = v55;
LABEL_27:
      v32 = v30;
      v27 = 0;
      v13 = v60;
      v31 = v30;
LABEL_28:
      if ((v14 & 0x80000000) != 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v24 = gLogHandle;
    v9 = v57;
  }

  v52 = v5;
  v25 = v6;
  if (!v24 || *(v24 + 44) >= 5)
  {
    v47 = v12;
    goto LABEL_40;
  }

LABEL_41:
  v39 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v12 isDirectory:0 relativeToURL:{0, v47, v49, v50, v51}];
  v59 = 0;
  v28 = v56;
  v40 = [v56 createTemporaryDirectoryInDirectoryURL:v9 error:&v59];
  v41 = v59;
  v42 = v41;
  if (!v40)
  {
    v30 = v41;
    v16 = v55;
LABEL_46:

    goto LABEL_27;
  }

  v43 = [v39 lastPathComponent];
  v58 = v42;
  LODWORD(v48) = v53;
  v54 = v39;
  v44 = [v56 _stageURLByCopying:v39 toItemName:v43 inStagingDir:v40 stagingMode:2 settingUID:v25 gid:v52 dataProtectionClass:v48 hasSymlink:&v60 error:&v58];
  v30 = v58;

  if ((v44 & 1) == 0)
  {
    v39 = v54;
    v16 = v55;
    goto LABEL_46;
  }

  v45 = [v54 lastPathComponent];
  v46 = [v40 URLByAppendingPathComponent:v45 isDirectory:0];

  v16 = v55;
  [v55 setObject:v54 forKeyedSubscript:v46];

  v31 = 0;
  v27 = 1;
  v13 = v60;
LABEL_29:
  close(v14);
LABEL_30:

  v33 = v31;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v31);
  if (v13)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  return v27;
}

void __125__MIFileManager_stageURLByMoving_toItemName_inStagingDir_settingUID_gid_dataProtectionClass_breakHardlinks_hasSymlink_error___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = *(a1 + 32);
  v20 = 0;
  v9 = a2;
  LOBYTE(v8) = [v8 moveItemAtURL:v9 toURL:v7 error:&v20];
  v10 = v20;
  if (v8)
  {
    v11 = [v9 URLByDeletingLastPathComponent];

    v12 = [v11 fileSystemRepresentation];
    if (rmdir(v12))
    {
      v13 = *__error();
      if (!gLogHandle || *(gLogHandle + 44) >= 5)
      {
        strerror(v13);
        MOLogWrite();
      }
    }
  }

  else
  {
    v14 = [v9 path];

    v19 = [v7 path];
    v16 = _CreateAndLogError("[MIFileManager stageURLByMoving:toItemName:inStagingDir:settingUID:gid:dataProtectionClass:breakHardlinks:hasSymlink:error:]_block_invoke_2", 843, @"MIInstallerErrorDomain", 4, v10, 0, @"Failed to move clone replaced file from %@ to %@", v15, v14);
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    *a4 = 1;
  }
}

- (BOOL)_stageURLByCopying:(id)a3 toItemName:(id)a4 inStagingDir:(id)a5 stagingMode:(int)a6 settingUID:(unsigned int)a7 gid:(unsigned int)a8 dataProtectionClass:(int)a9 hasSymlink:(BOOL *)a10 error:(id *)a11
{
  v57 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__11;
  v50 = __Block_byref_object_dispose__11;
  v51 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v45 = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v43 = 0;
  v20 = [v19 URLByAppendingPathComponent:v18 isDirectory:0];
  v21 = v20;
  [v20 fileSystemRepresentation];
  v22 = __strlcpy_chk();
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v41[3] = v22;
  if (v22 >= 0x400)
  {
    v23 = v20;
    v24 = [v20 fileSystemRepresentation];
    v26 = _CreateAndLogError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]", 947, @"MIInstallerErrorDomain", 4, 0, 0, @"Staging destination path was too long: %s (%zu)", v25, v24);
LABEL_5:
    if (a11)
    {
      if (v26)
      {
        v31 = v26;
        v32 = 0;
        *a11 = v26;
      }

      else
      {
        v32 = 0;
        v26 = 0;
        *a11 = v47[5];
      }
    }

    else
    {
      v32 = 0;
    }

    goto LABEL_13;
  }

  v27 = v17;
  v28 = [v17 fileSystemRepresentation];
  v40 = 0;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __124__MIFileManager__stageURLByCopying_toItemName_inStagingDir_stagingMode_settingUID_gid_dataProtectionClass_hasSymlink_error___block_invoke;
  v35[3] = &unk_1E7AE2220;
  v35[6] = v41;
  v35[7] = &v46;
  v35[8] = v42;
  v35[9] = &v52;
  v35[10] = v56;
  v35[4] = self;
  v35[5] = v44;
  v36 = a6;
  v37 = a7;
  v38 = a8;
  v39 = a9;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __124__MIFileManager__stageURLByCopying_toItemName_inStagingDir_stagingMode_settingUID_gid_dataProtectionClass_hasSymlink_error___block_invoke_2;
  v34[3] = &unk_1E7AE2248;
  v34[4] = v41;
  v34[5] = v56;
  v29 = TraverseDirectoryWithPostTraversal(v28, 0, 8u, &v40, v35, v34);
  v30 = v40;
  v26 = v30;
  if (!v29 || v47[5] | v30)
  {
    goto LABEL_5;
  }

  v26 = 0;
  if (a10)
  {
    *a10 = *(v53 + 24);
  }

  v32 = 1;
LABEL_13:
  _Block_object_dispose(v41, 8);

  _Block_object_dispose(v42, 8);
  _Block_object_dispose(v44, 8);

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v52, 8);

  return v32;
}

uint64_t __124__MIFileManager__stageURLByCopying_toItemName_inStagingDir_stagingMode_settingUID_gid_dataProtectionClass_hasSymlink_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v96 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 40);
  if ((*(a2 + 56) & 0x20) != 0 && (*(a2 + 60) == 1 ? (v11 = (*(a1 + 88) & 0xFFFFFFFE) == 2) : (v11 = 0), v11))
  {
    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      v93 = *(a2 + 24);
      MOLogWrite();
    }

    v12 = 32;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(a1 + 40) + 8);
  if (*(v13 + 24))
  {
    v14 = *(*(a1 + 48) + 8);
    v15 = strlen(v10);
    v16 = *(v14 + 24);
    v17 = v16 + 1 + v15;
    if (v17 <= 0x3FF)
    {
      v18 = *(a1 + 80);
      *(v18 + v16) = 47;
      memcpy((v18 + v16 + 1), v10, v15);
      *(v18 + v17) = 0;
      *(v14 + 24) = v17;
    }
  }

  else
  {
    *(v13 + 24) = 1;
  }

  v19 = *(a2 + 60);
  if (v19 == 1)
  {
    v38 = *(a1 + 88);
    switch(v38)
    {
      case 1:
        if (copyfile(*(a2 + 24), *(a1 + 80), 0, 0xC0008u))
        {
          v65 = *__error();
          v66 = *MEMORY[0x1E696A798];
          v67 = v65;
          v68 = *(a2 + 24);
          strerror(v65);
          v57 = _CreateError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1044, v66, v67, 0, 0, @"copyfile failed for %s to %s: %s", v69, v68);
          _CreateAndLogError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1044, @"MIInstallerErrorDomain", 4, v57, &unk_1F2888970, @"Failed to copyfile %s to %s", v70, *(a2 + 24));
          goto LABEL_45;
        }

        break;
      case 3:
        if (link(*(a2 + 24), *(a1 + 80)))
        {
          v59 = *__error();
          v60 = *MEMORY[0x1E696A798];
          v61 = v59;
          v62 = *(a2 + 24);
          strerror(v59);
          v57 = _CreateError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1054, v60, v61, 0, 0, @"link failed for %s to %s: %s", v63, v62);
          _CreateAndLogError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1054, @"MIInstallerErrorDomain", 4, v57, &unk_1F2888998, @"Failed to link %s to %s", v64, *(a2 + 24));
          goto LABEL_45;
        }

        break;
      case 2:
        v39 = (a2 + 24);
        v40 = clonefile(*(a2 + 24), *(a1 + 80), 3u);
        v41 = __error();
        if (v40)
        {
          v42 = *v41;
          if (v42 != 18)
          {
            v89 = *MEMORY[0x1E696A798];
            v90 = *v39;
            strerror(*v41);
            v26 = _CreateError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1012, v89, v42, 0, 0, @"clonefile failed for %s to %s: %s", v91, v90);
            _CreateAndLogError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1012, @"MIInstallerErrorDomain", 4, v26, &unk_1F2888920, @"Failed to clonefile %s to %s", v92, *v39);
            goto LABEL_23;
          }

          if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
            {
              __124__MIFileManager__stageURLByCopying_toItemName_inStagingDir_stagingMode_settingUID_gid_dataProtectionClass_hasSymlink_error___block_invoke_cold_1((a2 + 24), (a1 + 80));
            }

            if (!gLogHandle || *(gLogHandle + 44) >= 3)
            {
              v93 = *v39;
              MOLogWrite();
            }

            *(*(*(a1 + 64) + 8) + 24) = 1;
          }

          if (copyfile(*v39, *(a1 + 80), 0, 0xC0008u))
          {
            v43 = *__error();
            v44 = *MEMORY[0x1E696A798];
            v45 = v43;
            v46 = *v39;
            strerror(v43);
            v26 = _CreateError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1030, v44, v45, 0, 0, @"copyfile after clonefile failed for %s to %s: %s", v47, v46);
            _CreateAndLogError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1030, @"MIInstallerErrorDomain", 4, v26, &unk_1F2888948, @"Failed to copyfile %s to %s", v48, *v39);
            goto LABEL_23;
          }
        }

        break;
      default:
        _CreateAndLogError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1061, @"MIInstallerErrorDomain", 4, 0, 0, @"Unexpected staging mode: %d", a8, *(a1 + 88));
        goto LABEL_39;
    }

LABEL_49:
    v20 = 420;
    goto LABEL_50;
  }

  if (v19 == 5)
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    v28 = readlink(*(a2 + 24), v95, 0x400uLL);
    if (v28 != -1)
    {
      v95[v28] = 0;
      if (symlink(v95, *(a1 + 80)))
      {
        v29 = *__error();
        v30 = *MEMORY[0x1E696A798];
        v31 = v29;
        v32 = *(a1 + 80);
        strerror(v29);
        v26 = _CreateError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1084, v30, v31, 0, 0, @"symlink failed for %s -> %s: %s", v33, v32);
        _CreateAndLogError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1084, @"MIInstallerErrorDomain", 4, v26, &unk_1F28889E8, @"Failed to symlink %s -> %s", v34, *(a1 + 80));
        goto LABEL_23;
      }

      goto LABEL_49;
    }

    v52 = *__error();
    v53 = *MEMORY[0x1E696A798];
    v54 = v52;
    v55 = *(a2 + 24);
    strerror(v52);
    v57 = _CreateError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1074, v53, v54, 0, 0, @"readlink failed for %s: %s", v56, v55);
    _CreateAndLogError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1074, @"MIInstallerErrorDomain", 4, v57, &unk_1F28889C0, @"Failed to readlink %s", v58, *(a2 + 24));
    v71 = LABEL_45:;
    v72 = *(*(a1 + 56) + 8);
    v73 = *(v72 + 40);
    *(v72 + 40) = v71;

    goto LABEL_46;
  }

  if (v19 != 2)
  {
    _CreateAndLogError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1090, @"MIInstallerErrorDomain", 3, 0, &unk_1F2888A10, @"Unknown filesystem object type %u encountered at %s", a8, *(a2 + 60));
    v49 = LABEL_39:;
    v50 = *(*(a1 + 56) + 8);
    v51 = *(v50 + 40);
    *(v50 + 40) = v49;

    goto LABEL_46;
  }

  v20 = 493;
  if (mkdir(*(a1 + 80), 0x1EDu))
  {
    v21 = *__error();
    v22 = *MEMORY[0x1E696A798];
    v23 = v21;
    v24 = *(a1 + 80);
    strerror(v21);
    v26 = _CreateError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 990, v22, v23, 0, 0, @"mkdir failed for %s: %s", v25, v24);
    _CreateAndLogError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 990, @"MIInstallerErrorDomain", 4, v26, &unk_1F28888F8, @"Failed to mkdir %s", v27, *(a1 + 80));
    v35 = LABEL_23:;
    v36 = *(*(a1 + 56) + 8);
    v37 = *(v36 + 40);
    *(v36 + 40) = v35;

LABEL_46:
    v74 = 0;
LABEL_47:
    v75 = 0;
    goto LABEL_48;
  }

LABEL_50:
  v77 = *(a1 + 32);
  v78 = *(a1 + 80);
  v79 = *(a1 + 92);
  v80 = *(a1 + 96);
  v81 = *(a1 + 100);
  v94 = 0;
  LOBYTE(v93) = 1;
  v82 = [v77 bulkSetPropertiesForPath:v78 UID:v79 GID:v80 mode:v20 flags:v12 dataProtectionClass:v81 removeACL:v93 error:&v94];
  v83 = v94;
  v74 = v94;
  if ((v82 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v83);
    goto LABEL_47;
  }

  if (*(a2 + 60) != 2)
  {
    v84 = *(a1 + 80);
    v85 = *(*(a1 + 48) + 8);
    v86 = *(v85 + 24);
    if (v86)
    {
      do
      {
        v87 = --v86;
      }

      while (*(v84 + v86) != 47 && v86 != 0);
    }

    else
    {
      v87 = 0;
    }

    *(v84 + v87) = 0;
    *(v85 + 24) = v87;
  }

  v75 = 1;
LABEL_48:

  return v75;
}

uint64_t __124__MIFileManager__stageURLByCopying_toItemName_inStagingDir_stagingMode_settingUID_gid_dataProtectionClass_hasSymlink_error___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 24);
  if (v3)
  {
    do
    {
      v4 = --v3;
    }

    while (*(v1 + v3) != 47 && v3 != 0);
  }

  else
  {
    v4 = 0;
  }

  *(v1 + v4) = 0;
  *(v2 + 24) = v4;
  return 1;
}

- (BOOL)stageURL:(id)a3 toItemName:(id)a4 inStagingDir:(id)a5 stagingMode:(int)a6 settingUID:(unsigned int)a7 gid:(unsigned int)a8 hasSymlink:(BOOL *)a9 error:(id *)a10
{
  if (a6)
  {
    LODWORD(v11) = 4;
    return [(MIFileManager *)self _stageURLByCopying:a3 toItemName:a4 inStagingDir:a5 stagingMode:*&a6 settingUID:*&a7 gid:*&a8 dataProtectionClass:v11 hasSymlink:a9 error:a10];
  }

  else
  {
    LOBYTE(v11) = 1;
    return [(MIFileManager *)self stageURLByMoving:a3 toItemName:a4 inStagingDir:a5 settingUID:*&a7 gid:*&a8 dataProtectionClass:4 breakHardlinks:v11 hasSymlink:a9 error:a10];
  }
}

- (BOOL)standardizeOwnershipAtURL:(id)a3 toUID:(unsigned int)a4 GID:(unsigned int)a5 removeACLs:(BOOL)a6 setProtectionClass:(BOOL)a7 foundSymlink:(BOOL *)a8 error:(id *)a9
{
  v15 = a3;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__11;
  v38 = __Block_byref_object_dispose__11;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v16 = [v15 fileSystemRepresentation];
  v29 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __102__MIFileManager_standardizeOwnershipAtURL_toUID_GID_removeACLs_setProtectionClass_foundSymlink_error___block_invoke;
  v24[3] = &unk_1E7AE2270;
  v27 = a7;
  v24[4] = self;
  v24[5] = &v30;
  v25 = a4;
  v26 = a5;
  v28 = a6;
  v24[6] = &v34;
  v17 = TraverseDirectory(v16, 0, 8u, &v29, v24);
  v18 = v29;
  v19 = v29;
  v20 = v35;
  if ((v17 & 1) == 0 && !v35[5])
  {
    objc_storeStrong(v35 + 5, v18);
    v20 = v35;
  }

  v21 = v20[5];
  v22 = (v21 == 0) & v17;
  if (a9 && !v22)
  {
    *a9 = v21;
  }

  if (a8)
  {
    *a8 = *(v31 + 24);
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);

  return v22;
}

uint64_t __102__MIFileManager_standardizeOwnershipAtURL_toUID_GID_removeACLs_setProtectionClass_foundSymlink_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 60);
  if (v4 == 2)
  {
    v5 = 493;
  }

  else
  {
    v5 = 420;
  }

  if (v4 == 5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (*(a1 + 64))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  if ((*(a2 + 56) & 0x20) != 0)
  {
    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      v17 = *(a2 + 24);
      MOLogWrite();
    }

    v7 = 32;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 32);
  v9 = *(a2 + 24);
  v10 = *(a1 + 56);
  v11 = *(a1 + 60);
  v12 = *(a1 + 65);
  v18 = 0;
  LOBYTE(v17) = v12;
  v13 = [v8 bulkSetPropertiesForPath:v9 UID:v10 GID:v11 mode:v5 flags:v7 dataProtectionClass:v6 removeACL:v17 error:&v18];
  v14 = v18;
  v15 = v18;
  if ((v13 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v14);
  }

  return v13;
}

- (BOOL)setOwnershipAtURL:(id)a3 toUID:(unsigned int)a4 gid:(unsigned int)a5 error:(id *)a6
{
  v9 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__11;
  v26 = __Block_byref_object_dispose__11;
  v27 = 0;
  v10 = [v9 fileSystemRepresentation];
  v21 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__MIFileManager_setOwnershipAtURL_toUID_gid_error___block_invoke;
  v18[3] = &unk_1E7AE2298;
  v19 = a4;
  v20 = a5;
  v18[4] = &v22;
  v11 = TraverseDirectory(v10, 0, 0, &v21, v18);
  v12 = v21;
  v13 = v21;
  v14 = v23;
  if ((v11 & 1) == 0 && !v23[5])
  {
    objc_storeStrong(v23 + 5, v12);
    v14 = v23;
  }

  v15 = v14[5];
  v16 = (v15 == 0) & v11;
  if (a6 && !v16)
  {
    *a6 = v15;
  }

  _Block_object_dispose(&v22, 8);

  return v16;
}

BOOL __51__MIFileManager_setOwnershipAtURL_toUID_gid_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = lchown(v3, *(a1 + 40), *(a1 + 44));
  if (v4)
  {
    v5 = *__error();
    v6 = *MEMORY[0x1E696A798];
    v7 = v5;
    strerror(v5);
    v9 = _CreateError("[MIFileManager setOwnershipAtURL:toUID:gid:error:]_block_invoke", 1214, v6, v7, 0, 0, @"Failed to lchown %s : %s", v8, v3);
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  return v4 == 0;
}

- (BOOL)validateSymlinksInURLDoNotEscapeURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__11;
  v24 = __Block_byref_object_dispose__11;
  v25 = 0;
  v7 = [v6 fileSystemRepresentation];
  v19 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__MIFileManager_validateSymlinksInURLDoNotEscapeURL_error___block_invoke;
  v16[3] = &unk_1E7AE22C0;
  v16[4] = self;
  v8 = v6;
  v17 = v8;
  v18 = &v20;
  v9 = TraverseDirectory(v7, 0, 0, &v19, v16);
  v10 = v19;
  v11 = v19;
  v12 = v21;
  if ((v9 & 1) == 0 && !v21[5])
  {
    objc_storeStrong(v21 + 5, v10);
    v12 = v21;
  }

  v13 = v12[5];
  v14 = (v13 == 0) & v9;
  if (a4 && !v14)
  {
    *a4 = v13;
  }

  _Block_object_dispose(&v20, 8);
  return v14;
}

uint64_t __59__MIFileManager_validateSymlinksInURLDoNotEscapeURL_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 60) != 5)
  {
    return 1;
  }

  v4 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:*(a2 + 24) isDirectory:0 relativeToURL:0];
  v5 = [*(a1 + 32) realPathForURL:v4 ifChildOfURL:*(a1 + 40)];
  v6 = v5 != 0;

  if (!v5)
  {
    v8 = _CreateAndLogError("[MIFileManager validateSymlinksInURLDoNotEscapeURL:error:]_block_invoke", 1249, @"MIInstallerErrorDomain", 70, 0, &unk_1F2888A38, @"invalid symlink at %s", v7, *(a2 + 24));
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  return v6;
}

- (id)enumerateURLsForItemsInDirectoryAtURL:(id)a3 ignoreSymlinks:(BOOL)a4 withBlock:(id)a5
{
  v7 = a5;
  v8 = [a3 fileSystemRepresentation];
  v18 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__MIFileManager_enumerateURLsForItemsInDirectoryAtURL_ignoreSymlinks_withBlock___block_invoke;
  v15[3] = &unk_1E7AE22E8;
  v17 = a4;
  v9 = v7;
  v16 = v9;
  v10 = TraverseDirectory(v8, 1, 0, &v18, v15);
  v11 = v18;
  v12 = v11;
  v13 = 0;
  if ((v10 & 1) == 0)
  {
    v13 = v11;
  }

  return v13;
}

uint64_t __80__MIFileManager_enumerateURLsForItemsInDirectoryAtURL_ignoreSymlinks_withBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = *(a2 + 60);
  if (*(a1 + 40) == 1 && v4 == 5)
  {
    if (gLogHandle)
    {
      if (*(gLogHandle + 44) >= 7)
      {
        MOLogWrite();
      }
    }

    return 1;
  }

  else
  {
    v8 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:*(a2 + 24) isDirectory:v4 == 2 relativeToURL:0];
    *a3 = 0;
    v9 = *(a1 + 32);
    v10 = _DTypeForVFSType(*(a2 + 60));
    v11 = (*(v9 + 16))(v9, v8, v10);

    return v11;
  }
}

- (id)traverseDirectoryAtURL:(id)a3 withBlock:(id)a4
{
  v5 = a4;
  v6 = [a3 fileSystemRepresentation];
  v15 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__MIFileManager_traverseDirectoryAtURL_withBlock___block_invoke;
  v13[3] = &unk_1E7AE2310;
  v7 = v5;
  v14 = v7;
  v8 = TraverseDirectory(v6, 1, 0, &v15, v13);
  v9 = v15;
  v10 = v9;
  v11 = 0;
  if ((v8 & 1) == 0)
  {
    v11 = v9;
  }

  return v11;
}

uint64_t __50__MIFileManager_traverseDirectoryAtURL_withBlock___block_invoke(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:*(a2 + 24) isDirectory:*(a2 + 60) == 2 relativeToURL:0];
  v11 = 1;
  v7 = *(a1 + 32);
  v8 = _DTypeForVFSType(*(a2 + 60));
  v9 = (*(v7 + 16))(v7, v6, v8, &v11);
  *a3 = v11;

  return v9;
}

- (id)urlsForItemsInDirectoryAtURL:(id)a3 ignoringSymlinks:(BOOL)a4 error:(id *)a5
{
  v7 = a3;
  v8 = objc_opt_new();
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__11;
  v28 = __Block_byref_object_dispose__11;
  v29 = 0;
  v9 = [v7 fileSystemRepresentation];
  v23 = 0;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __69__MIFileManager_urlsForItemsInDirectoryAtURL_ignoringSymlinks_error___block_invoke;
  v19 = &unk_1E7AE2338;
  v22 = a4;
  v21 = &v24;
  v10 = v8;
  v20 = v10;
  v11 = TraverseDirectory(v9, 1, 0, &v23, &v16);
  v12 = v23;
  v13 = v23;
  if (!v25[5])
  {
    if (v11)
    {
      v14 = [v10 copy];
      if (!a5)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    objc_storeStrong(v25 + 5, v12);
  }

  v14 = 0;
  if (!a5)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (!v14)
  {
    *a5 = v25[5];
  }

LABEL_9:

  _Block_object_dispose(&v24, 8);

  return v14;
}

uint64_t __69__MIFileManager_urlsForItemsInDirectoryAtURL_ignoringSymlinks_error___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = *(a2 + 60);
  if (*(a1 + 48) == 1 && v4 == 5)
  {
    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      MOLogWrite();
    }

    return 1;
  }

  else
  {
    v9 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:*(a2 + 24) isDirectory:v4 == 2 relativeToURL:0];
    v10 = v9 != 0;
    if (v9)
    {
      *a3 = 0;
      [*(a1 + 32) addObject:v9];
    }

    else
    {
      v11 = _CreateAndLogError("[MIFileManager urlsForItemsInDirectoryAtURL:ignoringSymlinks:error:]_block_invoke", 1353, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to create URL for %s", v8, *(a2 + 24));
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }
  }

  return v10;
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
    v15 = _CreateError("[MIFileManager createSymbolicLinkAtURL:withDestinationURL:error:]", 1386, v10, v11, 0, 0, @"Could not create symlink containing %s at %s: %s", v14, v12);
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
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = readlink([v5 fileSystemRepresentation], v17, 0x400uLL);
  if (v6 < 0)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = *__error();
    v13 = [v5 fileSystemRepresentation];
    v14 = __error();
    strerror(*v14);
    v10 = _CreateError("[MIFileManager destinationOfSymbolicLinkAtURL:error:]", 1406, v11, v12, 0, 0, @"Could not readlink %s : %s", v15, v13);
    v9 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v17[v6] = 0;
    v7 = MEMORY[0x1E695DFF8];
    v8 = [MEMORY[0x1E696AEC0] stringWithFileSystemRepresentation:v17 length:v6];
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

  return v9;
}

- (BOOL)itemExistsAtURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  memset(&v13, 0, sizeof(v13));
  v6 = lstat([v5 fileSystemRepresentation], &v13);
  if (v6)
  {
    v7 = __error();
    v8 = *v7;
    if (v8 != 2 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      strerror(*v7);
      MOLogWrite();
    }

    if (a4)
    {
      v9 = *MEMORY[0x1E696A798];
      v10 = [v5 fileSystemRepresentation];
      strerror(v8);
      *a4 = _CreateError("[MIFileManager itemExistsAtURL:error:]", 1433, v9, v8, 0, 0, @"lstat of %s failed: %s", v11, v10);
    }
  }

  return v6 == 0;
}

- (BOOL)itemDoesNotExistAtURL:(id)a3
{
  v3 = a3;
  memset(&v7, 0, sizeof(v7));
  if (!lstat([v3 fileSystemRepresentation], &v7))
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (*__error() != 2)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v5 = __error();
      strerror(*v5);
      MOLogWrite();
    }

    goto LABEL_7;
  }

  v4 = 1;
LABEL_8:

  return v4;
}

- (BOOL)itemDoesNotExistOrIsNotDirectoryAtURL:(id)a3
{
  v13 = 0;
  v3 = [(MIFileManager *)self itemIsDirectoryAtURL:a3 error:&v13];
  v4 = v13;
  v5 = v4;
  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 domain];
    v8 = *MEMORY[0x1E696A798];
    if ([v7 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v9 = [v5 code] == 2;
    }

    else
    {
      v9 = 0;
    }

    v10 = [v5 domain];
    if ([v10 isEqualToString:v8])
    {
      v11 = [v5 code] == 22;
    }

    else
    {
      v11 = 0;
    }

    v6 = v9 || v11;
  }

  return v6;
}

- (BOOL)_itemIsType:(unsigned __int16)a3 withDescription:(id)a4 atURL:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  memset(&v18, 0, sizeof(v18));
  v10 = [a5 fileSystemRepresentation];
  if (lstat(v10, &v18))
  {
    v12 = __error();
    v13 = *v12;
    if (v13 != 2 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      strerror(*v12);
      MOLogWrite();
    }

    if (a6)
    {
      v14 = *MEMORY[0x1E696A798];
      strerror(v13);
      _CreateError("[MIFileManager _itemIsType:withDescription:atURL:error:]", 1491, v14, v13, 0, 0, @"lstat of %s failed: %s", v15, v10);
LABEL_12:
      *a6 = v16 = 0;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ((v18.st_mode & 0xF000) != v8)
  {
    if (a6)
    {
      _CreateError("[MIFileManager _itemIsType:withDescription:atURL:error:]", 1481, *MEMORY[0x1E696A798], 22, 0, 0, @"%s is not a %@ (mode 0%ho)", v11, v10);
      goto LABEL_12;
    }

LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  v16 = 1;
LABEL_14:

  return v16;
}

- (id)_traverseUntilFirstAvailableParentOfURL:(id)a3 withBlock:(id)a4
{
  v5 = a4;
  v6 = [a3 path];
  memset(&v16, 0, sizeof(v16));
  v7 = [v6 fileSystemRepresentation];
  if (lstat(v7, &v16))
  {
    v9 = *__error();
    if (v9 == 2)
    {
      while (![v6 isEqualToString:@"/"])
      {
        v11 = [v6 stringByDeletingLastPathComponent];

        memset(&v16, 0, sizeof(v16));
        v6 = v11;
        v7 = [v11 fileSystemRepresentation];
        if (!lstat(v7, &v16))
        {
          goto LABEL_7;
        }

        v9 = *__error();
        if (v9 != 2)
        {
          goto LABEL_6;
        }
      }

      _CreateError("[MIFileManager _traverseUntilFirstAvailableParentOfURL:withBlock:]", 1543, *MEMORY[0x1E696A798], 2, 0, 0, @"lstat for path / failed, which should never happen!", v10, v15);
    }

    else
    {
LABEL_6:
      _CreateError("[MIFileManager _traverseUntilFirstAvailableParentOfURL:withBlock:]", 1550, *MEMORY[0x1E696A798], v9, 0, 0, @"lstat failed for %s", v8, v7);
    }
    v12 = ;
  }

  else
  {
LABEL_7:
    v12 = v5[2](v5, v7, &v16);
  }

  v13 = v12;

  return v13;
}

- (id)_firstAvailableParentForURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__11;
  v18 = __Block_byref_object_dispose__11;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__MIFileManager__firstAvailableParentForURL_error___block_invoke;
  v13[3] = &unk_1E7AE2360;
  v13[4] = &v14;
  v7 = [(MIFileManager *)self _traverseUntilFirstAvailableParentOfURL:v6 withBlock:v13];
  v8 = v7;
  v9 = v15[5];
  if (a4 && !v9)
  {
    v10 = v7;
    *a4 = v8;
    v9 = v15[5];
  }

  v11 = v9;

  _Block_object_dispose(&v14, 8);

  return v11;
}

uint64_t __51__MIFileManager__firstAvailableParentForURL_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:a2 isDirectory:(*(a3 + 4) & 0xF000) == 0x4000 relativeToURL:0];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 0;
}

- (int)deviceForURLOrFirstAvailableParent:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__MIFileManager_deviceForURLOrFirstAvailableParent_error___block_invoke;
  v10[3] = &unk_1E7AE2360;
  v10[4] = &v11;
  v7 = [(MIFileManager *)self _traverseUntilFirstAvailableParentOfURL:v6 withBlock:v10];
  v8 = *(v12 + 6);
  if (a4 && v8 == -1)
  {
    v7 = v7;
    *a4 = v7;
    v8 = *(v12 + 6);
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

id __58__MIFileManager_deviceForURLOrFirstAvailableParent_error___block_invoke(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*(*(a1 + 32) + 8) + 24) = *a3;
  if (*(*(*(a1 + 32) + 8) + 24) == -1)
  {
    v9 = _CreateError("[MIFileManager deviceForURLOrFirstAvailableParent:error:]_block_invoke", 1585, *MEMORY[0x1E696A798], 22, 0, 0, @"lstat succeeded but st_dev was -1 for %s", a8, a2);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)mountPointForURL:(id)a3 error:(id *)a4
{
  v19[260] = *MEMORY[0x1E69E9840];
  v6 = a3;
  bzero(v18, 0x878uLL);
  v17 = 0;
  v7 = [(MIFileManager *)self _firstAvailableParentForURL:v6 error:&v17];
  v8 = v17;
  if (v7)
  {
    [v7 fileSystemRepresentation];
    if (statfs_ext() == -1)
    {
      v10 = *__error();
      v11 = *MEMORY[0x1E696A798];
      v12 = [v6 path];
      strerror(v10);
      v14 = _CreateError("[MIFileManager mountPointForURL:error:]", 1616, v11, v10, 0, 0, @"statfs failed for %@: %s", v13, v12);

      v9 = 0;
      v8 = v14;
      if (!a4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v19 isDirectory:1 relativeToURL:0];
      if (!a4)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = 0;
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  if (!v9)
  {
    v15 = v8;
    *a4 = v8;
  }

LABEL_10:

  return v9;
}

- (id)volumeUUIDForURL:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = xmmword_1B175DBE0;
  v17 = 0;
  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  v15 = 0;
  v5 = [(MIFileManager *)self _firstAvailableParentForURL:a3 error:&v15];
  v6 = v15;
  if (v5)
  {
    if (getattrlist([v5 fileSystemRepresentation], &v16, v18, 0x14uLL, 0))
    {
      v7 = *__error();
      v8 = *MEMORY[0x1E696A798];
      v9 = [v5 path];
      strerror(v7);
      v11 = _CreateError("[MIFileManager volumeUUIDForURL:error:]", 1652, v8, v7, 0, 0, @"getattrlist failed for %@: %s", v10, v9);

      v12 = 0;
      v6 = v11;
      if (!a4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v18 + 4];
      if (!a4)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v12 = 0;
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  if (!v12)
  {
    v13 = v6;
    *a4 = v6;
  }

LABEL_10:

  return v12;
}

- (BOOL)copyVolumeInfo:(id *)a3 forURL:(id)a4 error:(id *)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = xmmword_1B175DBF8;
  v21 = 0;
  bzero(v22, 0x434uLL);
  v19 = 0;
  v9 = [(MIFileManager *)self _firstAvailableParentForURL:a4 error:&v19];
  v10 = v19;
  if (!v9)
  {
    goto LABEL_4;
  }

  if (getattrlist([v9 fileSystemRepresentation], &v20, v22, 0x434uLL, 0))
  {
    v11 = *__error();
    v12 = *MEMORY[0x1E696A798];
    v13 = [v9 path];
    strerror(v11);
    v15 = _CreateError("[MIFileManager copyVolumeInfo:forURL:error:]", 1692, v12, v11, 0, 0, @"getattrlist failed for %@: %s", v14, v13);

    v10 = v15;
LABEL_4:
    if (a5)
    {
      v16 = v10;
      v17 = 0;
      *a5 = v10;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_10;
  }

  if (a3)
  {
    memcpy(a3->var2, v23 + v23[0], v23[1]);
    *a3->var0 = v24;
    memcpy(a3->var1, v25 + v25[0], v25[1]);
  }

  v17 = 1;
LABEL_10:

  return v17;
}

- (id)mountPointForVolumeUUID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__11;
  v21 = __Block_byref_object_dispose__11;
  v22 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__MIFileManager_mountPointForVolumeUUID_error___block_invoke;
  v14[3] = &unk_1E7AE2388;
  v7 = v6;
  v15 = v7;
  v16 = &v17;
  v8 = [(MIFileManager *)self enumerateExternalVolumesWithBlock:v14];
  v9 = v8;
  v10 = v18[5];
  if (a4 && !v10)
  {
    v11 = v8;
    *a4 = v9;
    v10 = v18[5];
  }

  v12 = v10;

  _Block_object_dispose(&v17, 8);

  return v12;
}

void __47__MIFileManager_mountPointForVolumeUUID_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v9 = a2;
  if ([*(a1 + 32) isEqual:a3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

- (id)enumerateExternalVolumesWithBlock:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = 0;
  v19 = 0;
  v5 = getmntinfo_r_np(&v20, 2);
  if (!v5)
  {
    v12 = *__error();
    v13 = *MEMORY[0x1E696A798];
    v14 = v12;
    v15 = strerror(v12);
    v7 = _CreateError("[MIFileManager enumerateExternalVolumesWithBlock:]", 1754, v13, v14, 0, 0, @"getmntinfo_r_np failed: %s", v16, v15);
    goto LABEL_13;
  }

  if (v5 < 1)
  {
    v7 = 0;
    goto LABEL_13;
  }

  v6 = 0;
  v7 = 0;
  v8 = 2168 * v5;
  while (1)
  {
    memset(__dst, 0, 512);
    memcpy(__dst, &v20[v6 / 0x878], sizeof(__dst));
    if (!(*&__dst[72] ^ 0x73667061 | __dst[76]))
    {
      break;
    }

LABEL_8:
    v6 += 2168;
    if (v8 == v6)
    {
      goto LABEL_13;
    }
  }

  v9 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:&__dst[88] isDirectory:1 relativeToURL:0];
  v18 = v7;
  v10 = [(MIFileManager *)self volumeUUIDForURL:v9 error:&v18];
  v11 = v18;

  if (v10)
  {
    v4[2](v4, v9, v10, &v19);
    if ((v19 & 1) == 0)
    {

      v7 = v11;
      goto LABEL_8;
    }
  }

  v7 = v11;
LABEL_13:
  if (v20)
  {
    free(v20);
    v20 = 0;
  }

  return v7;
}

- (id)upToFirstFourBytesFromURL:(id)a3 error:(id *)a4
{
  v12 = 0;
  v5 = [MEMORY[0x1E696AC00] fileHandleForReadingFromURL:a3 error:&v12];
  v6 = v12;
  if (v5)
  {
    v11 = 0;
    v7 = [v5 readDataUpToLength:4 error:&v11];
    v8 = v11;

    v6 = v8;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (!v7)
  {
    v9 = v6;
    *a4 = v6;
  }

LABEL_7:

  return v7;
}

- (id)aclTextFromURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  file = acl_get_file([v5 fileSystemRepresentation], ACL_TYPE_EXTENDED);
  if (file)
  {
    v7 = file;
    v8 = acl_to_text(file, 0);
    if (v8)
    {
      v9 = v8;
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
      acl_free(v7);
      acl_free(v9);
      v11 = 0;
      if (!a4)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    v16 = *__error();
    v17 = *MEMORY[0x1E696A798];
    v18 = [v5 path];
    strerror(v16);
    v11 = _CreateError("[MIFileManager aclTextFromURL:error:]", 1831, v17, v16, 0, 0, @"Could not read ACL text for file %@: %s", v19, v18);

    acl_free(v7);
  }

  else
  {
    v12 = *__error();
    v13 = *MEMORY[0x1E696A798];
    v14 = [v5 path];
    strerror(v12);
    v11 = _CreateError("[MIFileManager aclTextFromURL:error:]", 1825, v13, v12, 0, 0, @"Could not get ACL for file %@: %s", v15, v14);
  }

  v10 = 0;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (!v10)
  {
    v20 = v11;
    *a4 = v11;
  }

LABEL_10:

  return v10;
}

- (BOOL)enumerateExtendedAttributeNamesAtURL:(id)a3 includeCompression:(BOOL)a4 error:(id *)a5 enumerator:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  LOBYTE(a5) = _EnumerateExtendedAttributes([a3 fileSystemRepresentation], v8, a5, v11);

  return a5;
}

- (id)extendedAttributesFromURL:(id)a3 includeCompression:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v7 = MEMORY[0x1E695DF90];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  v10 = [v8 fileSystemRepresentation];

  v24 = 0;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __68__MIFileManager_extendedAttributesFromURL_includeCompression_error___block_invoke;
  v22 = &unk_1E7AE23B0;
  v11 = v9;
  v23 = v11;
  LOBYTE(v8) = _EnumerateExtendedAttributes(v10, v6, &v24, &v19);
  v12 = v24;
  v13 = v12;
  if (v8)
  {
    v14 = [v11 copy];
    if (!a5)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v15 = [v12 domain];
  if ([v15 isEqualToString:@"MIInstallerErrorDomain"])
  {
    v16 = [v13 code];

    if (v16 == 140)
    {

      v13 = 0;
      v14 = MEMORY[0x1E695E0F8];
      goto LABEL_11;
    }
  }

  else
  {
  }

  v14 = 0;
  if (a5)
  {
LABEL_9:
    if (!v14)
    {
      v17 = v13;
      *a5 = v13;
    }
  }

LABEL_11:

  return v14;
}

uint64_t __68__MIFileManager_extendedAttributesFromURL_includeCompression_error___block_invoke(uint64_t a1, int a2, char *name)
{
  v12 = 0;
  v5 = _DataForEAKey(name, a2, &v12);
  v6 = v12;
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:name];
  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }

  else
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v10 = v7;
      v11 = v6;
      MOLogWrite();
    }

    v8 = [MEMORY[0x1E695DFB0] null];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }

  return 1;
}

- (BOOL)clearExtendedAttributesAtURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__11;
  v20 = __Block_byref_object_dispose__11;
  v21 = 0;
  v6 = [v5 fileSystemRepresentation];
  v14[4] = &v16;
  v15 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__MIFileManager_clearExtendedAttributesAtURL_error___block_invoke;
  v14[3] = &unk_1E7AE23D8;
  v7 = TraverseDirectory(v6, 0, 0x200u, &v15, v14);
  v8 = v15;
  if (v7)
  {
    v9 = v17[5];
    if (!v9)
    {
      v12 = 1;
      goto LABEL_8;
    }

    v10 = v9;

    v8 = v10;
  }

  if (a4)
  {
    v11 = v8;
    v12 = 0;
    *a4 = v8;
  }

  else
  {
    v12 = 0;
  }

LABEL_8:
  _Block_object_dispose(&v16, 8);

  return v12;
}

uint64_t __52__MIFileManager_clearExtendedAttributesAtURL_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16) & 2) == 0)
  {
    v2 = *(a2 + 24);
    v3 = *(*(a1 + 32) + 8);
    v6 = *(v3 + 40);
    v4 = (v3 + 40);
    v5 = v6;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__11;
    v22 = __Block_byref_object_dispose__11;
    v23 = 0;
    v16[5] = v2;
    v17 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___ClearExtendedAttributes_block_invoke;
    v16[3] = &unk_1E7AE2428;
    v16[4] = &v18;
    v7 = _EnumerateExtendedAttributes(v2, 0, &v17, v16);
    v8 = v17;
    v9 = v8;
    if (v7)
    {
      v10 = v8;
    }

    else
    {
      v10 = [v8 domain];
      if (![v10 isEqualToString:@"MIInstallerErrorDomain"])
      {
LABEL_10:

        goto LABEL_11;
      }

      v13 = [v9 code];

      if (v13 != 140)
      {
LABEL_11:
        v14 = v9;
        v12 = 0;
        v10 = v9;
LABEL_13:
        _Block_object_dispose(&v18, 8);

        objc_storeStrong(v4, v9);
        return v12;
      }

      v10 = 0;
    }

    v11 = v19[5];
    if (!v11)
    {
      v12 = 1;
      v9 = v5;
      goto LABEL_13;
    }

    v9 = v11;
    goto LABEL_10;
  }

  return 1;
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
    _CreateError("[MIFileManager dataProtectionClassOfItemAtURL:class:error:]", 2130, v13, v14, 0, 0, @"Failed to open %s : %s", v17, v15);
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
    _CreateError("[MIFileManager dataProtectionClassOfItemAtURL:class:error:]", 2136, v18, v19, 0, 0, @"Failed to getclass of file %s: %s", v22, v20);
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

- (BOOL)setDataProtectionClassOfItemAtURL:(id)a3 toClass:(int)a4 ifPredicate:(id)a5 error:(id *)a6
{
  v8 = *&a4;
  v9 = a3;
  v10 = a5;
  v11 = open([v9 fileSystemRepresentation], 256);
  v12 = v11;
  if (v11 < 0)
  {
    v18 = *MEMORY[0x1E696A798];
    v19 = *__error();
    v20 = [v9 fileSystemRepresentation];
    v21 = __error();
    v33 = v20;
    strerror(*v21);
    v23 = @"Failed to open %s : %s";
    v24 = 2161;
  }

  else
  {
    if (!v10)
    {
LABEL_5:
      if (fcntl(v12, 64, v8))
      {
        v14 = *MEMORY[0x1E696A798];
        v15 = *__error();
        [v9 fileSystemRepresentation];
        v16 = __error();
        strerror(*v16);
        _CreateError("[MIFileManager setDataProtectionClassOfItemAtURL:toClass:ifPredicate:error:]", 2178, v14, v15, 0, 0, @"Failed to setclass(%d) on file %s: %s", v17, v8);
        goto LABEL_11;
      }

LABEL_8:
      v25 = 0;
      v26 = 1;
LABEL_14:
      close(v12);
      v31 = v26;
      goto LABEL_15;
    }

    v13 = fcntl(v11, 63);
    if ((v13 & 0x80000000) == 0)
    {
      if (!v10[2](v10, v13))
      {
        goto LABEL_8;
      }

      goto LABEL_5;
    }

    v18 = *MEMORY[0x1E696A798];
    v19 = *__error();
    v27 = [v9 fileSystemRepresentation];
    v28 = __error();
    v33 = v27;
    strerror(*v28);
    v23 = @"Failed to getclass of file %s: %s";
    v24 = 2169;
  }

  _CreateError("[MIFileManager setDataProtectionClassOfItemAtURL:toClass:ifPredicate:error:]", v24, v18, v19, 0, 0, v23, v22, v33);
  v29 = LABEL_11:;
  v25 = v29;
  if (a6)
  {
    v30 = v29;
    *a6 = v25;
  }

  v26 = 0;
  v31 = 0;
  if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v31;
}

- (BOOL)setOwnerOfURL:(id)a3 toUID:(unsigned int)a4 gid:(unsigned int)a5 error:(id *)a6
{
  v9 = a3;
  v10 = lchown([v9 fileSystemRepresentation], a4, a5);
  if (v10)
  {
    v11 = *__error();
    v12 = *MEMORY[0x1E696A798];
    v13 = [v9 fileSystemRepresentation];
    strerror(v11);
    v15 = _CreateError("[MIFileManager setOwnerOfURL:toUID:gid:error:]", 2201, v12, v11, 0, 0, @"Failed to lchown %s : %s", v14, v13);
    if (a6)
    {
      v15 = v15;
      *a6 = v15;
    }
  }

  else
  {
    v15 = 0;
  }

  return v10 == 0;
}

- (BOOL)setPermissionsForURL:(id)a3 toMode:(unsigned __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = lchmod([v7 fileSystemRepresentation], a4);
  if (v8)
  {
    v9 = *__error();
    v10 = *MEMORY[0x1E696A798];
    v11 = [v7 fileSystemRepresentation];
    strerror(v9);
    v13 = _CreateError("[MIFileManager setPermissionsForURL:toMode:error:]", 2220, v10, v9, 0, 0, @"Failed to lchmod %s : %s", v12, v11);
    if (a5)
    {
      v13 = v13;
      *a5 = v13;
    }
  }

  else
  {
    v13 = 0;
  }

  return v8 == 0;
}

- (BOOL)captureStoreDataFromDirectory:(id)a3 toDirectory:(id)a4 doCopy:(BOOL)a5 failureIsFatal:(BOOL)a6 includeiTunesMetadata:(BOOL)a7 withError:(id *)a8
{
  v34 = a5;
  v48 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v35 = a4;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = [&unk_1F2888CB8 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v11)
  {
    v12 = v11;
    v30 = a8;
    v13 = 0;
    v14 = 0;
    v15 = *v40;
    v31 = v10;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v40 != v15)
      {
        objc_enumerationMutation(&unk_1F2888CB8);
      }

      v17 = *(*(&v39 + 1) + 8 * v16);
      if (!a7 && ([*(*(&v39 + 1) + 8 * v16) isEqualToString:@"iTunesMetadata.plist"] & 1) != 0)
      {
        goto LABEL_15;
      }

      v18 = [v35 URLByAppendingPathComponent:v17 isDirectory:0];
      v19 = [v10 URLByAppendingPathComponent:v17 isDirectory:0];
      if (v34)
      {
        v38 = v14;
        v20 = [(MIFileManager *)self copyItemIfExistsAtURL:v19 toURL:v18 error:&v38];
        v21 = v38;

        if (!v20)
        {
          v45 = @"LegacyErrorString";
          v22 = [&unk_1F2888CD0 objectAtIndexedSubscript:v13];
          v46 = v22;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          _CreateAndLogError("[MIFileManager captureStoreDataFromDirectory:toDirectory:doCopy:failureIsFatal:includeiTunesMetadata:withError:]", 2252, @"MIInstallerErrorDomain", 24, v21, v23, @"Failed to copy %@ to %@", v24, v19);
          goto LABEL_13;
        }
      }

      else
      {
        v37 = v14;
        v25 = [(MIFileManager *)self moveItemIfExistsAtURL:v19 toURL:v18 error:&v37];
        v21 = v37;

        if (!v25)
        {
          v43 = @"LegacyErrorString";
          v22 = [&unk_1F2888CD0 objectAtIndexedSubscript:v13];
          v44 = v22;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
          _CreateAndLogError("[MIFileManager captureStoreDataFromDirectory:toDirectory:doCopy:failureIsFatal:includeiTunesMetadata:withError:]", 2260, @"MIInstallerErrorDomain", 24, v21, v23, @"Failed to move %@ to %@", v26, v19);
          v14 = LABEL_13:;

          v10 = v31;
          v21 = v14;
          if (a6)
          {

            if (v30)
            {
              v27 = v14;
              v28 = 0;
              *v30 = v14;
            }

            else
            {
              v28 = 0;
            }

            goto LABEL_23;
          }
        }
      }

      ++v13;

      v14 = v21;
LABEL_15:
      if (v12 == ++v16)
      {
        v12 = [&unk_1F2888CB8 countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_21;
      }
    }
  }

  v14 = 0;
LABEL_21:
  v28 = 1;
LABEL_23:

  return v28;
}

- (id)_realPathWhatExistsInPath:(id)a3 isDirectory:(BOOL)a4
{
  v17 = a4;
  v5 = [a3 pathComponents];
  v6 = [v5 count];
  v7 = v6 - 1;
  if (v6 == 1)
  {
    v10 = 0;
  }

  else
  {
    do
    {
      v8 = [v5 subarrayWithRange:{0, v7 + 1}];
      v9 = [MEMORY[0x1E695DFF8] fileURLWithPathComponents:v8];
      v10 = 0;
      if ([(MIFileManager *)self itemExistsAtURL:v9])
      {
        v11 = [(MIFileManager *)self realPathForURL:v9 allowNonExistentPathComponents:0 isDirectory:v17 error:0];
        if (v11)
        {
          v12 = [v5 subarrayWithRange:{v7 + 1, objc_msgSend(v5, "count") - (v7 + 1)}];
          v13 = [MEMORY[0x1E696AEC0] pathWithComponents:v12];
          if (gLogHandle && *(gLogHandle + 44) >= 7)
          {
            [v11 path];
            v15 = v16 = v13;
            MOLogWrite();
          }

          v10 = [v11 URLByAppendingPathComponent:v13 isDirectory:{v17, v15, v16}];
        }

        else
        {
          v10 = 0;
        }
      }

      if (v10)
      {
        break;
      }

      --v7;
    }

    while (v7);
  }

  return v10;
}

- (id)realPathForURL:(id)a3 allowNonExistentPathComponents:(BOOL)a4 isDirectory:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v8 = a4;
  v22 = *MEMORY[0x1E69E9840];
  bzero(v21, 0x400uLL);
  v11 = [a3 path];
  if (realpath_DARWIN_EXTSN([v11 fileSystemRepresentation], v21))
  {
    v12 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v21 isDirectory:v7 relativeToURL:0];
LABEL_11:
    v19 = v12;
    goto LABEL_12;
  }

  v13 = *__error();
  if (v13 == 2 && v8)
  {
    v12 = [(MIFileManager *)self _realPathWhatExistsInPath:v11 isDirectory:v7];
    goto LABEL_11;
  }

  v15 = *MEMORY[0x1E696A798];
  v16 = [v11 fileSystemRepresentation];
  strerror(v13);
  v18 = _CreateAndLogError("[MIFileManager realPathForURL:allowNonExistentPathComponents:isDirectory:error:]", 2319, v15, v13, 0, 0, @"Failed to realpath %s : %s at %s", v17, v16);
  if (a6)
  {
    v18 = v18;
    *a6 = v18;
  }

  v19 = 0;
LABEL_12:

  return v19;
}

- (BOOL)_validateSymlink:(id)a3 withStartingDepth:(unsigned int)a4 andEndingDepth:(unsigned int *)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v18 = a5;
    [v7 pathComponents];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v22 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      v13 = a4;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if ([v15 isEqualToString:@".."])
          {
            --v13;
          }

          else if (([v15 isEqualToString:&stru_1F28762E8] & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", @".") & 1) == 0)
          {
            v13 += [v15 isEqualToString:@"/"] ^ 1;
          }

          if (v13 < a4)
          {

            goto LABEL_18;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

    if (v18)
    {
      *v18 = v13;
    }

    v16 = 1;
  }

  else
  {
    v9 = 0;
LABEL_18:
    v16 = 0;
  }

  return v16;
}

- (id)realPathForURL:(id)a3 ifChildOfURL:(id)a4
{
  v79 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  bzero(v78, 0x400uLL);
  if (!v6 || !v7)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_38;
    }

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
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_38;
    }

    v25 = [v6 path];
    v64 = [v7 path];
    MOLogWrite();

    goto LABEL_37;
  }

  v23 = [v6 pathComponents];
  v24 = [v23 containsObject:@".."];

  if (v24)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_38;
    }

    goto LABEL_11;
  }

  v26 = readlink([v6 fileSystemRepresentation], v78, 0x400uLL);
  if (v26 == -1)
  {
    if (*__error() == 22 || *__error() == 2)
    {
      v27 = [v6 path];
      v28 = 0;
      goto LABEL_28;
    }

    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_38;
    }

    v43 = __error();
    strerror(*v43);
LABEL_14:
    MOLogWrite();
LABEL_38:
    v39 = 0;
    v38 = 0;
    v36 = 0;
    v27 = 0;
    v28 = 0;
    goto LABEL_39;
  }

  if (v78[0] == 47)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_38;
    }

LABEL_11:
    v25 = [v6 path];
LABEL_36:
    MOLogWrite();
LABEL_37:

    goto LABEL_38;
  }

  v77 = 0;
  v29 = [v7 path];
  v30 = [(MIFileManager *)self _validateSymlink:v29 withStartingDepth:0 andEndingDepth:&v77];

  if (!v30)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_38;
    }

    v25 = [v7 path];
    goto LABEL_36;
  }

  v31 = [v6 path];
  v32 = [v7 path];
  v33 = [v31 substringFromIndex:{objc_msgSend(v32, "length")}];

  v28 = [v33 stringByDeletingLastPathComponent];

  v34 = [MEMORY[0x1E696AEC0] stringWithFileSystemRepresentation:v78 length:v26];
  v27 = [v28 stringByAppendingPathComponent:v34];

  if (![(MIFileManager *)self _validateSymlink:v27 withStartingDepth:v77 andEndingDepth:0])
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_56;
    }

    v42 = [v6 path];
    v65 = [v7 path];
    MOLogWrite();

    goto LABEL_55;
  }

LABEL_28:
  v35 = [(MIFileManager *)self _realPathForURL:v7 allowNonExistentPathComponents:0];
  if (!v35)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_56;
    }

    v42 = [v7 path];
    MOLogWrite();
LABEL_55:

LABEL_56:
    v39 = 0;
    v38 = 0;
    v36 = 0;
    goto LABEL_39;
  }

  v36 = v35;
  v37 = [(MIFileManager *)self _realPathForURL:v6 allowNonExistentPathComponents:1];
  if (v37)
  {
    v38 = v37;
    if (!_CheckRealpathHasBasePrefix(v37, v36))
    {
LABEL_74:
      v39 = 0;
      goto LABEL_39;
    }

    if (v26 != -1)
    {
LABEL_32:
      v39 = v38;
      v38 = v39;
      goto LABEL_39;
    }

    v44 = [v38 pathComponents];
    v75 = [v36 pathComponents];
    v45 = [v75 count];
    v76 = v44;
    v46 = [v44 count];
    if (v46 < 2 || v45 <= 1)
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_73;
      }

      v56 = [v6 path];
      v57 = [v7 path];
      v58 = [v38 path];
      v71 = [v36 path];
      v73 = v58;
      v54 = v57;
      v55 = v56;
    }

    else
    {
      v47 = v46;
      v48 = 1;
      v49 = [v75 objectAtIndexedSubscript:1];
      if ([v49 isEqualToString:@"private"])
      {
        v48 = 2;
      }

      [v76 objectAtIndexedSubscript:1];
      v50 = v70 = v45;
      if ([v50 isEqualToString:@"private"])
      {
        v51 = 2;
      }

      else
      {
        v51 = 1;
      }

      if (v70 - v48 <= v47 - v51)
      {
        if (v70 <= v48)
        {
LABEL_78:

          goto LABEL_32;
        }

        while (1)
        {
          v59 = [v75 objectAtIndexedSubscript:v48];
          v60 = [v76 objectAtIndexedSubscript:v51];
          v74 = [v59 isEqualToString:v60];

          if ((v74 & 1) == 0)
          {
            break;
          }

          ++v48;
          ++v51;
          if (v70 == v48)
          {
            goto LABEL_78;
          }
        }

        v72 = v51;
        if (gLogHandle && *(gLogHandle + 44) < 3)
        {
          goto LABEL_73;
        }

        v61 = [v6 path];
        v68 = [v7 path];
        v73 = [v38 path];
        v62 = [v36 path];
        v67 = [v75 objectAtIndexedSubscript:v48];
        v66 = [v76 objectAtIndexedSubscript:v72];
        v71 = v62;
        v55 = v61;
        MOLogWrite();

        v54 = v68;
        goto LABEL_72;
      }

      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_73;
      }

      v69 = [v6 path];
      v52 = [v7 path];
      v53 = [v38 path];
      v71 = [v36 path];
      v73 = v53;
      v54 = v52;
      v55 = v69;
    }

    MOLogWrite();
LABEL_72:

LABEL_73:
    goto LABEL_74;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v63 = [v6 path];
    MOLogWrite();
  }

  v39 = 0;
  v38 = 0;
LABEL_39:
  v40 = v39;

  return v40;
}

- (BOOL)markBundleAsPlaceholder:(id)a3 withError:(id *)a4
{
  value = 1;
  v5 = [a3 fileSystemRepresentation];
  v6 = setxattr(v5, "com.apple.installd.placeholder", &value, 4uLL, 0, 1);
  if (v6)
  {
    v7 = __error();
    v8 = *v7;
    v10 = _CreateError("[MIFileManager markBundleAsPlaceholder:withError:]", 2575, *MEMORY[0x1E696A798], *v7, 0, 0, @"setxattr for %s on %s failed", v9, "com.apple.installd.placeholder");
    strerror(v8);
    v12 = _CreateAndLogError("[MIFileManager markBundleAsPlaceholder:withError:]", 2575, @"MIInstallerErrorDomain", 4, v10, 0, @"Could't set placeholder EA on %s: %s", v11, v5);

    if (a4)
    {
      v13 = v12;
      *a4 = v12;
    }
  }

  else
  {
    v12 = 0;
  }

  return v6 == 0;
}

- (BOOL)clearPlaceholderStatusForBundle:(id)a3 withError:(id *)a4
{
  v5 = [a3 fileSystemRepresentation];
  v6 = removexattr(v5, "com.apple.installd.placeholder", 1);
  if (v6)
  {
    v7 = __error();
    v9 = _CreateError("[MIFileManager clearPlaceholderStatusForBundle:withError:]", 2599, *MEMORY[0x1E696A798], *v7, 0, 0, @"removexattr on %s for %s failed", v8, v5);
    v11 = _CreateAndLogError("[MIFileManager clearPlaceholderStatusForBundle:withError:]", 2599, @"MIInstallerErrorDomain", 4, v9, 0, @"Could't remove placeholder EA on %s", v10, v5);

    if (a4)
    {
      v12 = v11;
      *a4 = v11;
    }
  }

  return v6 == 0;
}

- (BOOL)_markEAFlag:(const char *)a3 forAppIdentifier:(id)a4 insecurelyCachedOnBundle:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  value = 1;
  if (!v9 || ![v9 length])
  {
    v19 = [v10 fileSystemRepresentation];
    v17 = _CreateAndLogError("[MIFileManager _markEAFlag:forAppIdentifier:insecurelyCachedOnBundle:error:]", 2615, @"MIInstallerErrorDomain", 4, 0, 0, @"Attempted to set a zero-length or nil app identifier on %s", v20, v19);
    goto LABEL_10;
  }

  v11 = open([v10 fileSystemRepresentation], 256);
  if (v11 < 0)
  {
    v23 = __error();
    v24 = *v23;
    v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*v23 userInfo:0];
    v26 = [v10 fileSystemRepresentation];
    strerror(v24);
    v17 = _CreateAndLogError("[MIFileManager _markEAFlag:forAppIdentifier:insecurelyCachedOnBundle:error:]", 2622, @"MIInstallerErrorDomain", 4, v25, 0, @"Couldn't open bundle %s for setting extended attributes: %s", v27, v26);

LABEL_10:
    v18 = 0;
    if (!a6)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v12 = v11;
  if (fsetxattr(v11, a3, &value, 4uLL, 0, 0))
  {
    v13 = __error();
    v14 = *v13;
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*v13 userInfo:0];
    [v10 fileSystemRepresentation];
    strerror(v14);
    v17 = _CreateAndLogError("[MIFileManager _markEAFlag:forAppIdentifier:insecurelyCachedOnBundle:error:]", 2628, @"MIInstallerErrorDomain", 4, v15, 0, @"Couldn't set %s EA on %s: %s", v16, a3);

LABEL_6:
    v18 = 0;
    goto LABEL_7;
  }

  v28 = [v9 UTF8String];
  v29 = strlen(v28);
  if (fsetxattr(v12, "com.apple.installd.appIdentifier", v28, v29, 0, 0))
  {
    v30 = __error();
    v31 = *v30;
    v32 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*v30 userInfo:0];
    v33 = [v10 fileSystemRepresentation];
    strerror(v31);
    v17 = _CreateAndLogError("[MIFileManager _markEAFlag:forAppIdentifier:insecurelyCachedOnBundle:error:]", 2637, @"MIInstallerErrorDomain", 4, v32, 0, @"Couldn't set app identifier EA on %s: %s", v34, v33);

    if (fremovexattr(v12, a3, 1) < 0)
    {
      v35 = *__error();
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        [v10 fileSystemRepresentation];
        strerror(v35);
        MOLogWrite();
      }
    }

    goto LABEL_6;
  }

  v17 = 0;
  v18 = 1;
LABEL_7:
  close(v12);
  if (!a6)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!v18)
  {
    v21 = v17;
    *a6 = v17;
  }

LABEL_13:

  return v18;
}

- (id)_insecureCachedAppIdentifierIfMarkedWithEAFlag:(const char *)a3 bundleURL:(id)a4 allowPlaceholders:(BOOL)a5 error:(id *)a6
{
  v9 = a4;
  value = 0;
  v10 = open([v9 fileSystemRepresentation], 256);
  if (v10 < 0)
  {
    v16 = __error();
    v17 = *v16;
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*v16 userInfo:0];
    v19 = [v9 fileSystemRepresentation];
    strerror(v17);
    v15 = _CreateAndLogError("[MIFileManager _insecureCachedAppIdentifierIfMarkedWithEAFlag:bundleURL:allowPlaceholders:error:]", 2668, @"MIInstallerErrorDomain", 4, v18, 0, @"Couldn't open bundle %s for setting extended attributes: %s", v20, v19);

    v21 = 0;
    v22 = 0;
    if (!a6)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v11 = v10;
  if (fgetxattr(v10, a3, &value, 4uLL, 0, 0) != 4)
  {
    v23 = *__error();
    if (v23 == 93)
    {
      v24 = *MEMORY[0x1E696A798];
      v36 = [v9 path];
      v15 = _CreateError("[MIFileManager _insecureCachedAppIdentifierIfMarkedWithEAFlag:bundleURL:allowPlaceholders:error:]", 2676, v24, 93, 0, 0, @"Attr named %s not present on %@", v25, a3);
    }

    else
    {
      v27 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:v23 userInfo:0];
      [v9 fileSystemRepresentation];
      strerror(v23);
      v15 = _CreateAndLogError("[MIFileManager _insecureCachedAppIdentifierIfMarkedWithEAFlag:bundleURL:allowPlaceholders:error:]", 2678, @"MIInstallerErrorDomain", 4, v27, 0, @"Couldn't get %s EA from %s: %s", v28, a3);
    }

    goto LABEL_13;
  }

  if (value != 1)
  {
    [v9 fileSystemRepresentation];
    v15 = _CreateAndLogError("[MIFileManager _insecureCachedAppIdentifierIfMarkedWithEAFlag:bundleURL:allowPlaceholders:error:]", 2682, @"MIInstallerErrorDomain", 141, 0, 0, @"%s EA was not set to expected value from %s", v26, a3);
    goto LABEL_13;
  }

  if (!a5)
  {
    v38 = 0;
    if (fgetxattr(v11, "com.apple.installd.placeholder", &v38, 4uLL, 0, 0) == 4)
    {
      v12 = *MEMORY[0x1E696A798];
      v13 = [v9 path];
      v15 = _CreateError("[MIFileManager _insecureCachedAppIdentifierIfMarkedWithEAFlag:bundleURL:allowPlaceholders:error:]", 2691, v12, 93, 0, 0, @"Not allowed to mark placeholder as validatedByFreeProfile for %@", v14, v13);

LABEL_13:
      v22 = 0;
      v21 = 0;
      goto LABEL_14;
    }
  }

  v37 = 0;
  v22 = _DataForEAKey("com.apple.installd.appIdentifier", v11, &v37);
  v15 = v37;
  if (v22)
  {
    v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v22 encoding:4];
    if (v31)
    {
      v21 = v31;
      goto LABEL_14;
    }

    [v9 fileSystemRepresentation];
    v34 = _CreateAndLogError("[MIFileManager _insecureCachedAppIdentifierIfMarkedWithEAFlag:bundleURL:allowPlaceholders:error:]", 2704, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to convert app identifier EA data (%@) to string from %s", v35, v22);
  }

  else
  {
    v32 = [v9 fileSystemRepresentation];
    v34 = _CreateAndLogError("[MIFileManager _insecureCachedAppIdentifierIfMarkedWithEAFlag:bundleURL:allowPlaceholders:error:]", 2698, @"MIInstallerErrorDomain", 4, v15, 0, @"Couldn't get appIdentifier EA from %s", v33, v32);

    v22 = 0;
  }

  v21 = 0;
  v15 = v34;
LABEL_14:
  close(v11);
  if (!a6)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (!v21)
  {
    v29 = v15;
    *a6 = v15;
  }

LABEL_17:

  return v21;
}

- (BOOL)setInstallType:(id)a3 inExtendedAttributeOnBundle:(id)a4 error:(id *)a5
{
  v7 = a4;
  value = [a3 unsignedLongLongValue];
  v8 = setxattr([v7 fileSystemRepresentation], "com.apple.installd.installType", &value, 8uLL, 0, 1);
  if (v8)
  {
    v9 = __error();
    v10 = *v9;
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*v9 userInfo:0];
    v12 = [v7 fileSystemRepresentation];
    strerror(v10);
    v14 = _CreateAndLogError("[MIFileManager setInstallType:inExtendedAttributeOnBundle:error:]", 2751, @"MIInstallerErrorDomain", 4, v11, 0, @"Couldn't set installType EA on %s: %s", v13, v12);

    if (a5)
    {
      v15 = v14;
      *a5 = v14;
    }
  }

  else
  {
    v14 = 0;
  }

  return v8 == 0;
}

- (id)installTypeFromExtendedAttributeOnBundle:(id)a3 error:(id *)a4
{
  v5 = a3;
  value = 0;
  v6 = getxattr([v5 fileSystemRepresentation], "com.apple.installd.installType", &value, 8uLL, 0, 1);
  if (v6 < 0)
  {
    v9 = *__error();
    if (v9 == 93)
    {
      v10 = [v5 path];
      v8 = _CreateAndLogError("[MIFileManager installTypeFromExtendedAttributeOnBundle:error:]", 2768, @"MIInstallerErrorDomain", 158, 0, 0, @"Install type extended attribute not found on %@", v11, v10);
    }

    else
    {
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:v9 userInfo:0];
      v15 = [v5 fileSystemRepresentation];
      strerror(v9);
      v8 = _CreateAndLogError("[MIFileManager installTypeFromExtendedAttributeOnBundle:error:]", 2770, @"MIInstallerErrorDomain", 4, v14, 0, @"Couldn't get installType EA from %s: %s", v16, v15);
    }
  }

  else
  {
    if (v6 == 8)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:value];
      v8 = 0;
      if (!a4)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v12 = [v5 fileSystemRepresentation];
    v8 = _CreateAndLogError("[MIFileManager installTypeFromExtendedAttributeOnBundle:error:]", 2776, @"MIInstallerErrorDomain", 4, 0, 0, @"getxattr for installType EA on %s returned %zd (expected %zu)", v13, v12);
  }

  v7 = 0;
  if (!a4)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!v7)
  {
    v17 = v8;
    *a4 = v8;
  }

LABEL_12:

  return v7;
}

- (BOOL)_setData:(id)a3 forExtendedAttributeNamed:(id)a4 onURL:(id)a5 orFD:(int)a6 error:(id *)a7
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [a5 fileSystemRepresentation];
  v16 = [v13 UTF8String];

  v17 = [v14 bytes];
  v18 = [v14 length];

  if (!v14)
  {
    v25 = _CreateAndLogError("[MIFileManager _setData:forExtendedAttributeNamed:onURL:orFD:error:]", 2798, @"MIInstallerErrorDomain", 4, 0, 0, @"Attempted to set nil data on %s for EA named %s", v19, v15);
    if (a7)
    {
      goto LABEL_5;
    }

LABEL_7:
    v27 = 0;
    goto LABEL_10;
  }

  if ((a6 & 0x80000000) == 0)
  {
    if (fsetxattr(a6, v16, v17, v18, 0, 0))
    {
      goto LABEL_4;
    }

LABEL_9:
    v25 = 0;
    v27 = 1;
    goto LABEL_10;
  }

  if (!setxattr(v15, v16, v17, v18, 0, 1))
  {
    goto LABEL_9;
  }

LABEL_4:
  v20 = __error();
  v21 = *v20;
  v23 = _CreateError("[MIFileManager _setData:forExtendedAttributeNamed:onURL:orFD:error:]", 2811, *MEMORY[0x1E696A798], *v20, 0, 0, @"[f]setxattr failed for path %s fd %d", v22, v15);
  strerror(v21);
  v25 = _CreateAndLogError("[MIFileManager _setData:forExtendedAttributeNamed:onURL:orFD:error:]", 2811, @"MIInstallerErrorDomain", 4, v23, 0, @"Failed to set EA named %s on %s: %s", v24, v16);

  if (!a7)
  {
    goto LABEL_7;
  }

LABEL_5:
  v26 = v25;
  v27 = 0;
  *a7 = v25;
LABEL_10:

  return v27;
}

- (id)_dataForExtendedAttributeNamed:(id)a3 length:(int64_t)a4 onURL:(id)a5 orFD:(int)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a5;
  v14 = [a3 fileSystemRepresentation];
  v15 = [v13 fileSystemRepresentation];

  if (a4 < 0 && (a6 < 0 ? (v16 = getxattr(v15, v14, 0, 0, 0, 1)) : (v16 = fgetxattr(a6, v14, 0, 0, 0, 0)), a4 = v16, v16 < 0))
  {
    v28 = *__error();
    if (v28 == 93)
    {
      v22 = _CreateError("[MIFileManager _dataForExtendedAttributeNamed:length:onURL:orFD:error:]", 2857, *MEMORY[0x1E696A798], 93, 0, 0, @"xattr named %s not present on %s", v29, v14);
    }

    else
    {
      v30 = _CreateError("[MIFileManager _dataForExtendedAttributeNamed:length:onURL:orFD:error:]", 2860, *MEMORY[0x1E696A798], v28, 0, 0, @"[f]getxattr failed to get length for xattr named %s path %s fd %d", v29, v14);
      v22 = _CreateAndLogError("[MIFileManager _dataForExtendedAttributeNamed:length:onURL:orFD:error:]", 2860, @"MIInstallerErrorDomain", 4, v30, 0, @"Couldn't get length for xattr named %s on %s", v31, v14);
    }

    v17 = 0;
  }

  else
  {
    v17 = [MEMORY[0x1E695DF88] dataWithLength:a4];
    v18 = [v17 mutableBytes];
    if (a6 < 0)
    {
      v19 = getxattr(v15, v14, v18, a4, 0, 1);
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v19 = fgetxattr(a6, v14, v18, a4, 0, 0);
      if ((v19 & 0x8000000000000000) == 0)
      {
LABEL_8:
        if (v19 == a4)
        {
          v21 = [v17 copy];
          v22 = 0;
          if (!a7)
          {
            goto LABEL_24;
          }

          goto LABEL_22;
        }

        v25 = _CreateAndLogError("[MIFileManager _dataForExtendedAttributeNamed:length:onURL:orFD:error:]", 2893, @"MIInstallerErrorDomain", 4, 0, 0, @"getxattr for xattr named %s on %s returned %zd (expected %zu)", v20, v14);
        goto LABEL_15;
      }
    }

    v23 = *__error();
    if (v23 == 93)
    {
      v25 = _CreateError("[MIFileManager _dataForExtendedAttributeNamed:length:onURL:orFD:error:]", 2886, *MEMORY[0x1E696A798], 93, 0, 0, @"xattr named %s not present on %s", v24, v14);
LABEL_15:
      v22 = v25;
      goto LABEL_21;
    }

    v26 = _CreateError("[MIFileManager _dataForExtendedAttributeNamed:length:onURL:orFD:error:]", 2889, *MEMORY[0x1E696A798], v23, 0, 0, @"[f]getxattr failed for xattr named %s path %s fd %d", v24, v14);
    v22 = _CreateAndLogError("[MIFileManager _dataForExtendedAttributeNamed:length:onURL:orFD:error:]", 2889, @"MIInstallerErrorDomain", 4, v26, 0, @"Couldn't get data from xattr named %s on %s", v27, v14);
  }

LABEL_21:
  v21 = 0;
  if (!a7)
  {
    goto LABEL_24;
  }

LABEL_22:
  if (!v21)
  {
    v32 = v22;
    *a7 = v22;
  }

LABEL_24:

  return v21;
}

- (BOOL)removeExtendedAttributeNamed:(id)a3 fromURL:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = 1;
  if (removexattr([a4 fileSystemRepresentation], objc_msgSend(v7, "fileSystemRepresentation"), 1))
  {
    v9 = __error();
    v10 = *v9;
    if (v10 == 93)
    {
      v11 = 0;
      v8 = 1;
    }

    else
    {
      v12 = *MEMORY[0x1E696A798];
      strerror(*v9);
      v11 = _CreateError("[MIFileManager removeExtendedAttributeNamed:fromURL:error:]", 2924, v12, v10, 0, 0, @"Failed to remove extended attribute named %@ from %s: %s", v13, v7);
      if (a5)
      {
        v11 = v11;
        v8 = 0;
        *a5 = v11;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v8;
}

- (unint64_t)diskUsageForURL:(id)a3
{
  v3 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v4 = [MEMORY[0x1E696AC70] hashTableWithOptions:256];
  v5 = [v3 fileSystemRepresentation];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __33__MIFileManager_diskUsageForURL___block_invoke;
  v12[3] = &unk_1E7AE2400;
  v14 = &v16;
  v15 = 0;
  v6 = v4;
  v13 = v6;
  v7 = TraverseDirectory(v5, 2, 0x1C0u, &v15, v12);
  v8 = v15;
  if ((v7 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v11 = [v3 path];
    MOLogWrite();
  }

  v9 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v9;
}

uint64_t __33__MIFileManager_diskUsageForURL___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 60) != 2)
  {
    if (*(a2 + 80) == 1)
    {
      *(*(*(a1 + 40) + 8) + 24) += *(a2 + 8);
    }

    else
    {
      v4 = *a2;
      if (NSHashGet(*(a1 + 32), *a2))
      {
        if (gLogHandle && *(gLogHandle + 44) >= 7)
        {
          MOLogWrite();
        }
      }

      else
      {
        *(*(*(a1 + 40) + 8) + 24) += *(a2 + 8);
        NSHashInsertKnownAbsent(*(a1 + 32), v4);
      }
    }
  }

  return 1;
}

- (BOOL)setModificationDateToNowForURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = open([v5 fileSystemRepresentation], 256);
  if (v6 < 0)
  {
    v15 = *__error();
    v16 = *MEMORY[0x1E696A798];
    v17 = [v5 path];
    strerror(v15);
    v14 = _CreateError("[MIFileManager setModificationDateToNowForURL:error:]", 3183, v16, v15, 0, 0, @"open() failed for %@: %s", v18, v17);

    v9 = 0;
    if (!a4)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v7 = v6;
  v8 = futimes(v6, 0);
  v9 = v8 == 0;
  if (v8)
  {
    v10 = *__error();
    v11 = *MEMORY[0x1E696A798];
    v12 = [v5 path];
    strerror(v10);
    v14 = _CreateError("[MIFileManager setModificationDateToNowForURL:error:]", 3189, v11, v10, 0, 0, @"futimes() failed for %@: %s", v13, v12);
  }

  else
  {
    v14 = 0;
  }

  close(v7);
  if (a4)
  {
LABEL_8:
    if (!v9)
    {
      v19 = v14;
      *a4 = v14;
    }
  }

LABEL_10:

  return v9;
}

- (id)modificationDateForURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  memset(&v11, 0, sizeof(v11));
  if (lstat([v5 fileSystemRepresentation], &v11))
  {
    if (a4)
    {
      v6 = *__error();
      v7 = *MEMORY[0x1E696A798];
      v8 = [v5 path];
      strerror(v6);
      *a4 = _CreateError("[MIFileManager modificationDateForURL:error:]", 3214, v7, v6, 0, 0, @"lstat() failed for %@: %s", v9, v8);

      a4 = 0;
    }
  }

  else
  {
    a4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v11.st_mtimespec.tv_nsec / 1000000000.0 + v11.st_mtimespec.tv_sec];
  }

  return a4;
}

- (id)debugDescriptionForItemAtURL:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E696AD60]);
  v6 = [v4 path];
  v7 = [v5 initWithFormat:@"Extra info about %@: ", v6];

  memset(&v48, 0, sizeof(v48));
  if (lstat([v4 fileSystemRepresentation], &v48))
  {
    v8 = *__error();
    v9 = [v4 path];
    [v7 appendFormat:@"Couldn't stat %@: %s", v9, strerror(v8)];

    v10 = [v7 copy];
    goto LABEL_50;
  }

  [v7 appendFormat:@"dev=%d ino=%llu mode=0%ho nlink=%hu uid=%u gid=%u rdev=%d size=%lld atime=%lf mtime=%lf ctime=%lf birthtime=%lf blksize=%d blocks=%lld flags=0x%x ", v48.st_dev, v48.st_ino, v48.st_mode, v48.st_nlink, v48.st_uid, v48.st_gid, v48.st_rdev, v48.st_size, v48.st_atimespec.tv_nsec / 1000000000.0 + v48.st_atimespec.tv_sec, v48.st_mtimespec.tv_nsec / 1000000000.0 + v48.st_mtimespec.tv_sec, v48.st_ctimespec.tv_nsec / 1000000000.0 + v48.st_ctimespec.tv_sec, v48.st_birthtimespec.tv_nsec / 1000000000.0 + v48.st_birthtimespec.tv_sec, v48.st_blksize, v48.st_blocks, v48.st_flags];
  if ((v48.st_mode & 0xF000) == 0x8000)
  {
    v47 = 0;
    v11 = [(MIFileManager *)self upToFirstFourBytesFromURL:v4 error:&v47];
    v12 = v47;
    if (v11)
    {
      [v7 appendFormat:@"firstBytes=%@ ", v11];
    }

    else
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        v32 = [v4 path];
        v36 = v12;
        MOLogWrite();
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v46 = v12;
  v13 = [(MIFileManager *)self aclTextFromURL:v4 error:&v46, v32, v36];
  v14 = v46;

  if (v13)
  {
    [v7 appendFormat:@"ACL={ %@ } ", v13];
    goto LABEL_22;
  }

  v15 = [v14 domain];
  if (![v15 isEqualToString:*MEMORY[0x1E696A798]])
  {

    goto LABEL_18;
  }

  v16 = [v14 code];

  if (v16 != 2)
  {
LABEL_18:
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v33 = v14;
      MOLogWrite();
    }

    goto LABEL_21;
  }

  [v7 appendString:@"ACL=<not found> "];
LABEL_21:

  v14 = 0;
LABEL_22:
  v45 = v14;
  v17 = [(MIFileManager *)self extendedAttributesFromURL:v4 error:&v45, v33];
  v18 = v45;

  if (!v17)
  {
    v19 = [v18 domain];
    if ([v19 isEqualToString:@"MIInstallerErrorDomain"])
    {
      v20 = [v18 code];

      if (v20 == 140)
      {
        [v7 appendString:@"extendedAttributes=<not found> "];
LABEL_31:

        v18 = 0;
        goto LABEL_32;
      }
    }

    else
    {
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v34 = v18;
      MOLogWrite();
    }

    goto LABEL_31;
  }

  [v7 appendFormat:@"extendedAttributes=%@ ", v17];
LABEL_32:
  v21 = [v4 pathExtension];
  v22 = [v21 isEqualToString:@"plist"];

  if (v22)
  {
    v44 = v18;
    v23 = [MEMORY[0x1E695DF20] MI_dictionaryWithContentsOfURL:v4 options:0 error:&v44];
    v24 = v44;

    if (v23)
    {
      [v7 appendFormat:@"keyCount=%lu ", objc_msgSend(v23, "count")];
      if ([v23 count])
      {
        v38 = v24;
        v39 = v13;
        [v7 appendString:@"keySample={ "];
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v25 = v23;
        v26 = [v25 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = 0;
          v29 = *v41;
LABEL_37:
          v30 = 0;
          while (1)
          {
            if (*v41 != v29)
            {
              objc_enumerationMutation(v25);
            }

            [v7 appendFormat:@"%@ ", *(*(&v40 + 1) + 8 * v30)];
            if (v28 == 4)
            {
              break;
            }

            ++v30;
            ++v28;
            if (v27 == v30)
            {
              v27 = [v25 countByEnumeratingWithState:&v40 objects:v49 count:16];
              if (v27)
              {
                goto LABEL_37;
              }

              break;
            }
          }
        }

        [v7 appendString:@"} "];
        v24 = v38;
        v13 = v39;
      }
    }

    else
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        v35 = [v4 path];
        v37 = v24;
        MOLogWrite();
      }

      v24 = 0;
    }

    v18 = v24;
  }

  v10 = [v7 copy];

LABEL_50:

  return v10;
}

- (void)logAccessPermissionsForURL:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [a3 MI_allAccessURLs];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    v28 = *MEMORY[0x1E696A798];
    v29 = v3;
    do
    {
      v7 = 0;
      do
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v33 + 1) + 8 * v7);
        memset(&v32, 0, sizeof(v32));
        if (!lstat([v8 fileSystemRepresentation], &v32))
        {
          v31 = 0;
          v11 = [(MIFileManager *)self aclTextFromURL:v8 error:&v31];
          v12 = v31;
          v10 = v12;
          if (v11)
          {
            if (!gLogHandle || *(gLogHandle + 44) >= 5)
            {
              st_mode = v32.st_mode;
              st_uid = v32.st_uid;
              st_gid = v32.st_gid;
              v16 = [v8 path];
              v26 = v16;
              v27 = v11;
              v24 = st_gid;
              v25 = st_mode;
              v23 = st_uid;
              MOLogWrite();
              goto LABEL_24;
            }

            goto LABEL_25;
          }

          v17 = [v12 domain];
          if ([v17 isEqualToString:v28])
          {
            v18 = [v10 code];

            if (v18 == 2)
            {
              goto LABEL_21;
            }
          }

          else
          {
          }

          if (!gLogHandle || *(gLogHandle + 44) >= 3)
          {
            v23 = [v8 path];
            v24 = v10;
            MOLogWrite();
          }

LABEL_21:

          if (gLogHandle && *(gLogHandle + 44) < 5)
          {
            v10 = 0;
          }

          else
          {
            v19 = v32.st_mode;
            v20 = v32.st_uid;
            v21 = v32.st_gid;
            v16 = [v8 path];
            v25 = v19;
            v26 = v16;
            v23 = v20;
            v24 = v21;
            MOLogWrite();
            v10 = 0;
LABEL_24:

            v3 = v29;
          }

LABEL_25:

          goto LABEL_26;
        }

        v9 = *__error();
        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          v10 = [v8 path];
          v23 = v10;
          v24 = strerror(v9);
          MOLogWrite();
LABEL_26:
        }

        ++v7;
      }

      while (v5 != v7);
      v22 = [v3 countByEnumeratingWithState:&v33 objects:v37 count:16];
      v5 = v22;
    }

    while (v22);
  }
}

+ (id)_sanitizeFilePathForVarOrTmpSymlink:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([v5 hasPrefix:@"/var"])
  {
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/var/" isDirectory:1];
    v7 = [objc_opt_class() defaultManager];
    v22 = 0;
    v8 = [v7 realPathForURL:v6 allowNonExistentPathComponents:0 isDirectory:1 error:&v22];
    v9 = v22;

    if (v8)
    {
      v11 = [v8 path];
      v12 = @"/var";
LABEL_7:
      v14 = [v5 substringFromIndex:{-[__CFString length](v12, "length")}];
      v15 = [v11 stringByAppendingString:v14];

      v16 = 0;
      goto LABEL_13;
    }

    v17 = @"Failed to get the real path of /var";
    v18 = 3350;
  }

  else
  {
    if (![v5 hasPrefix:@"/tmp"])
    {
      v15 = v5;
      v16 = 0;
      if (!a4)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/tmp/" isDirectory:1];
    v13 = [objc_opt_class() defaultManager];
    v21 = 0;
    v8 = [v13 realPathForURL:v6 allowNonExistentPathComponents:0 isDirectory:1 error:&v21];
    v9 = v21;

    if (v8)
    {
      v11 = [v8 path];
      v12 = @"/tmp";
      goto LABEL_7;
    }

    v17 = @"Failed to get the real path of /tmp";
    v18 = 3360;
  }

  v16 = _CreateAndLogError("+[MIFileManager _sanitizeFilePathForVarOrTmpSymlink:error:]", v18, @"MIInstallerErrorDomain", 4, v9, 0, v17, v10, v21);
  v15 = 0;
LABEL_13:

  if (!a4)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (!v15)
  {
    v19 = v16;
    *a4 = v16;
  }

LABEL_16:

  return v15;
}

- (BOOL)secureRenameFromSourceURL:(id)a3 toDestinationURL:(id)a4 destinationStatus:(unsigned __int8)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v62 = v10;
  v12 = [v10 URLByDeletingLastPathComponent];
  v61 = v11;
  v13 = [v11 URLByDeletingLastPathComponent];
  v14 = objc_opt_class();
  v15 = [v12 path];
  v65 = 0;
  v16 = [v14 _sanitizeFilePathForVarOrTmpSymlink:v15 error:&v65];
  v17 = v65;

  if (!v16)
  {
    v21 = [v12 path];
    v29 = _CreateAndLogError("[MIFileManager secureRenameFromSourceURL:toDestinationURL:destinationStatus:error:]", 3392, @"MIInstallerErrorDomain", 4, v17, 0, @"Failed to sanitize source file path %@", v28, v21);
    v30 = 0;
    v22 = v17;
LABEL_10:
    v32 = v62;
    goto LABEL_30;
  }

  v60 = a6;
  v18 = [v16 fileSystemRepresentation];
  v19 = objc_opt_class();
  v20 = [v13 path];
  v64 = v17;
  v21 = [v19 _sanitizeFilePathForVarOrTmpSymlink:v20 error:&v64];
  v22 = v64;

  if (!v21)
  {
    v21 = [v13 path];
    v29 = _CreateAndLogError("[MIFileManager secureRenameFromSourceURL:toDestinationURL:destinationStatus:error:]", 3399, @"MIInstallerErrorDomain", 4, v22, 0, @"Failed to sanitize destination file path %@", v31, v21);
    v30 = 0;
    a6 = v60;
    goto LABEL_10;
  }

  v58 = v22;
  v59 = v13;
  v23 = [v21 fileSystemRepresentation];
  v24 = open(v18, 537919488);
  if ((v24 & 0x80000000) != 0)
  {
    v33 = *__error();
    v34 = *MEMORY[0x1E696A798];
    v35 = v33;
    strerror(v33);
    v29 = _CreateError("[MIFileManager secureRenameFromSourceURL:toDestinationURL:destinationStatus:error:]", 3407, v34, v35, 0, 0, @"Failed to open file %s : %s", v36, v18);
  }

  else
  {
    v25 = v24;
    v26 = open(v23, 537919488);
    if ((v26 & 0x80000000) == 0)
    {
      v27 = v26;
      if (v7 == 2)
      {
        v53 = 0;
        v57 = 4;
      }

      else
      {
        if (v7 != 1)
        {
          v41 = v61;
          v53 = [(MIFileManager *)self itemExistsAtURL:v61];
          if (v53)
          {
            v42 = 2;
          }

          else
          {
            v42 = 4;
          }

          v57 = v42;
LABEL_20:
          v43 = [v62 lastPathComponent];
          v44 = [v43 fileSystemRepresentation];
          v45 = [v41 lastPathComponent];
          LODWORD(v44) = renameatx_np(v25, v44, v27, [v45 fileSystemRepresentation], v57);
          v30 = v44 == 0;

          v55 = v27;
          v56 = v25;
          if (v44)
          {
            v46 = *__error();
            v54 = *MEMORY[0x1E696A798];
            v29 = [v62 path];
            v47 = [v61 path];
            strerror(v46);
            v49 = _CreateError("[MIFileManager secureRenameFromSourceURL:toDestinationURL:destinationStatus:error:]", 3433, v54, v46, 0, 0, @"Failed to renameatx_np() for source fd %d path %@ to destination fd %d path %@ with flags 0x%x, Error: %s", v48, v25);
            a6 = v60;
          }

          else
          {
            if (!v53)
            {
              v29 = 0;
              a6 = v60;
              goto LABEL_28;
            }

            v63 = 0;
            v32 = v62;
            v50 = [(MIFileManager *)self removeItemAtURL:v62 error:&v63];
            v29 = v63;
            a6 = v60;
            if (v50)
            {
              v13 = v59;
LABEL_29:
              v22 = v58;
              close(v56);
              close(v55);
              goto LABEL_30;
            }

            if (gLogHandle && *(gLogHandle + 44) < 3)
            {
              v49 = 0;
              goto LABEL_23;
            }

            v47 = [v62 path];
            MOLogWrite();
            v49 = 0;
          }

LABEL_23:
          v29 = v49;
LABEL_28:
          v13 = v59;
          v32 = v62;
          goto LABEL_29;
        }

        v57 = 2;
        v53 = 1;
      }

      v41 = v61;
      goto LABEL_20;
    }

    v37 = *__error();
    v38 = *MEMORY[0x1E696A798];
    v39 = v37;
    strerror(v37);
    v29 = _CreateError("[MIFileManager secureRenameFromSourceURL:toDestinationURL:destinationStatus:error:]", 3414, v38, v39, 0, 0, @"Failed to open file %s : %s", v40, v23);
    close(v25);
  }

  v30 = 0;
  v13 = v59;
  a6 = v60;
  v32 = v62;
LABEL_30:

  if (a6 && !v30)
  {
    v51 = v29;
    *a6 = v29;
  }

  return v30;
}

- (void)_moveItemAtURL:(uint64_t)a1 toURL:(uint64_t)a2 failIfSrcMissing:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = "[MIFileManager _moveItemAtURL:toURL:failIfSrcMissing:error:]";
  v4 = 2080;
  v5 = a1;
  v6 = 2080;
  v7 = a2;
  _os_log_fault_impl(&dword_1B16A0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s: Expected to move %s to %s but got EXDEV; falling back to copyfile", &v2, 0x20u);
}

void __124__MIFileManager__stageURLByCopying_toItemName_inStagingDir_stagingMode_settingUID_gid_dataProtectionClass_hasSymlink_error___block_invoke_cold_1(uint64_t *a1, uint64_t *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *a2;
  v4 = 136315650;
  v5 = "[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke";
  v6 = 2080;
  v7 = v2;
  v8 = 2080;
  v9 = v3;
  _os_log_fault_impl(&dword_1B16A0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s: Attempt to clone %s to %s failed with EXDEV; falling back to copyfile", &v4, 0x20u);
}

@end