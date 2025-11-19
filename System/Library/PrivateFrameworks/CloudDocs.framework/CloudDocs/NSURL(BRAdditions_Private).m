@interface NSURL(BRAdditions_Private)
+ (BOOL)br_isURL:()BRAdditions_Private syncRootOwnedByICloudDrive:withError:;
- (BOOL)br_getBirthDate:()BRAdditions_Private;
- (BOOL)br_isIgnoredByFileProviderWithError:()BRAdditions_Private;
- (BOOL)br_isRootOwned;
- (id)_br_getAttributeValue:()BRAdditions_Private withSecondaryConnection:withError:;
@end

@implementation NSURL(BRAdditions_Private)

+ (BOOL)br_isURL:()BRAdditions_Private syncRootOwnedByICloudDrive:withError:
{
  v7 = a3;
  v8 = v7;
  if (a4)
  {
    *a4 = 0;
    v15 = 0;
    v9 = [v7 fp_fpfsProviderDomainID:0 error:&v15];
    v10 = v15;
    v11 = v10;
    v12 = v10 == 0;
    if (v10)
    {
      if (a5)
      {
        v13 = v10;
        *a5 = v11;
      }
    }

    else
    {
      *a4 = [v9 hasPrefix:@"com.apple.CloudDocs.iCloudDriveFileProvider"];
    }
  }

  else if (a5)
  {
    [MEMORY[0x1E696ABC0] br_errorWithPOSIXCode:22];
    *a5 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_br_getAttributeValue:()BRAdditions_Private withSecondaryConnection:withError:
{
  v26[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v26[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__8;
  v24 = __Block_byref_object_dispose__8;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__8;
  v18 = __Block_byref_object_dispose__8;
  v19 = 0;
  v9 = [a1 _br_itemServiceSyncProxy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__NSURL_BRAdditions_Private___br_getAttributeValue_withSecondaryConnection_withError___block_invoke;
  v13[3] = &unk_1E7A14FA8;
  v13[4] = &v20;
  v13[5] = &v14;
  [v9 getAttributeValues:v8 reply:v13];
  if (a5)
  {
    *a5 = v15[5];
  }

  v10 = [v21[5] objectForKey:v7];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)br_getBirthDate:()BRAdditions_Private
{
  memset(&v10.st_birthtimespec, 0, 64);
  v4 = [a1 path];
  v5 = lstat([v4 fileSystemRepresentation], &v10);

  if (v5)
  {
    v6 = *__error();
    v7 = brc_bread_crumbs("[NSURL(BRAdditions_Private) br_getBirthDate:]", 1140);
    v8 = brc_default_log(0, 0);
    if (os_log_type_enabled(v8, 0x90u))
    {
      [NSURL(BRAdditions_Private) br_getBirthDate:];
    }

    *__error() = v6;
  }

  else if (a3)
  {
    *a3 = v10.st_birthtimespec.tv_sec;
  }

  return v5 == 0;
}

- (BOOL)br_isIgnoredByFileProviderWithError:()BRAdditions_Private
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = getxattr([a1 fileSystemRepresentation], "com.apple.fileprovider.ignore#P", 0, 0, 0, 1);
  if (v4 < 0)
  {
    v7 = __error();
    if (a3 && *v7 != 93)
    {
      *a3 = [MEMORY[0x1E696ABC0] br_errorFromErrno];
    }
  }

  else
  {
    v5 = brc_bread_crumbs("[NSURL(BRAdditions_Private) br_isIgnoredByFileProviderWithError:]", 1164);
    v6 = brc_default_log(1, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] URL has com.apple.fileprovider.ignore#P attribute%@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4 >= 0;
}

- (BOOL)br_isRootOwned
{
  v5 = 0;
  v4 = xmmword_1AE33E000;
  v3 = 0;
  return getattrlist([a1 fileSystemRepresentation], &v4, &v3, 8uLL, 0x20u) && HIDWORD(v3) == 0;
}

- (void)br_getBirthDate:()BRAdditions_Private .cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696ABC0] br_errorFromErrno];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v1, v2, 0x90u, v3, v4, 0x1Cu);

  v5 = *MEMORY[0x1E69E9840];
}

@end