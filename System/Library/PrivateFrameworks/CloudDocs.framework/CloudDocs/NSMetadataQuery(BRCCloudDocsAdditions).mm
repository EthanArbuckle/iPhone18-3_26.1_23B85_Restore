@interface NSMetadataQuery(BRCCloudDocsAdditions)
- (uint64_t)br_setupForMonitoringChildrenOfItemAtURL:()BRCCloudDocsAdditions;
- (uint64_t)br_setupForMonitoringChildrenOfItemAtURL:()BRCCloudDocsAdditions searchScopes:;
- (uint64_t)br_setupForMonitoringItemAtURL:()BRCCloudDocsAdditions;
- (uint64_t)br_setupForMonitoringItemAtURL:()BRCCloudDocsAdditions searchScopes:;
- (void)br_setupForMonitoringChildrenOfFolderAtURL:()BRCCloudDocsAdditions;
- (void)br_setupForMonitoringChildrenOfFolderAtURL:()BRCCloudDocsAdditions searchScopes:;
@end

@implementation NSMetadataQuery(BRCCloudDocsAdditions)

- (void)br_setupForMonitoringChildrenOfFolderAtURL:()BRCCloudDocsAdditions searchScopes:
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![v6 isFileURL])
  {
    v14 = brc_bread_crumbs("[NSMetadataQuery(BRCCloudDocsAdditions) br_setupForMonitoringChildrenOfFolderAtURL:searchScopes:]", 54);
    v15 = brc_default_log(0, 0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [NSMetadataQuery(BRCCloudDocsAdditions) br_setupForMonitoringChildrenOfFolderAtURL:searchScopes:];
    }

    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v23 = @"url";
    null = v6;
    if (!v6)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v24[0] = null;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v20 = [v16 exceptionWithName:v17 reason:@"invalid url" userInfo:v19];
    v21 = v20;

    if (!v6)
    {
    }

    objc_exception_throw(v20);
  }

  v8 = MEMORY[0x1E696AE18];
  v9 = *MEMORY[0x1E696A6E0];
  v22 = v6;
  path = [v22 path];
  v11 = [v8 predicateWithFormat:@"%K.URLByDeletingLastPathComponent.path = %@", v9, path];

  [self setPredicate:v11];
  v12 = [v7 copy];
  [self setSearchScopes:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)br_setupForMonitoringChildrenOfFolderAtURL:()BRCCloudDocsAdditions
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E696A638];
  v9 = *MEMORY[0x1E696A640];
  v10 = v4;
  v11 = *MEMORY[0x1E696A610];
  v5 = MEMORY[0x1E695DEC8];
  v6 = a3;
  v7 = [v5 arrayWithObjects:&v9 count:3];
  [self br_setupForMonitoringChildrenOfFolderAtURL:v6 searchScopes:{v7, v9, v10, v11, v12}];

  v8 = *MEMORY[0x1E69E9840];
}

- (uint64_t)br_setupForMonitoringItemAtURL:()BRCCloudDocsAdditions searchScopes:
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  isFileURL = [v6 isFileURL];
  if (isFileURL)
  {
    path = [v6 path];
    if (path)
    {
      null = path;
      v11 = MEMORY[0x1E696AE18];
      v12 = *MEMORY[0x1E696A6E0];
      v13 = v6;
      path2 = [v13 path];
      v15 = [v11 predicateWithFormat:@"%K.path = %@", v12, path2];

      [self setPredicate:v15];
      v16 = [v7 copy];
      [self setSearchScopes:v16];

LABEL_10:
      goto LABEL_11;
    }
  }

  else
  {
    v17 = brc_bread_crumbs("[NSMetadataQuery(BRCCloudDocsAdditions) br_setupForMonitoringItemAtURL:searchScopes:]", 73);
    v18 = brc_default_log(0, 0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [NSMetadataQuery(BRCCloudDocsAdditions) br_setupForMonitoringChildrenOfFolderAtURL:searchScopes:];
    }

    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v25 = @"url";
    null = v6;
    if (!v6)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v26[0] = null;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v22 = [v19 exceptionWithName:v20 reason:@"invalid url" userInfo:v21];
    [v22 raise];

    if (!v6)
    {
      goto LABEL_10;
    }
  }

  isFileURL = 0;
LABEL_11:

  v23 = *MEMORY[0x1E69E9840];
  return isFileURL;
}

- (uint64_t)br_setupForMonitoringItemAtURL:()BRCCloudDocsAdditions
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E696A638];
  v11 = *MEMORY[0x1E696A640];
  v12 = v4;
  v13 = *MEMORY[0x1E696A610];
  v5 = MEMORY[0x1E695DEC8];
  v6 = a3;
  v7 = [v5 arrayWithObjects:&v11 count:3];
  v8 = [self br_setupForMonitoringItemAtURL:v6 searchScopes:{v7, v11, v12, v13, v14}];

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (uint64_t)br_setupForMonitoringChildrenOfItemAtURL:()BRCCloudDocsAdditions searchScopes:
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  isFileURL = [v6 isFileURL];
  if (isFileURL)
  {
    path = [v6 path];
    if (path)
    {
      null = path;
      v11 = MEMORY[0x1E696AE18];
      v12 = *MEMORY[0x1E696A6E0];
      v13 = v6;
      path2 = [v13 path];
      v15 = [v11 predicateWithFormat:@"%K.URLByDeletingLastPathComponent.path = %@", v12, path2];

      [self setPredicate:v15];
      v16 = [v7 copy];
      [self setSearchScopes:v16];

LABEL_10:
      goto LABEL_11;
    }
  }

  else
  {
    v17 = brc_bread_crumbs("[NSMetadataQuery(BRCCloudDocsAdditions) br_setupForMonitoringChildrenOfItemAtURL:searchScopes:]", 103);
    v18 = brc_default_log(0, 0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [NSMetadataQuery(BRCCloudDocsAdditions) br_setupForMonitoringChildrenOfFolderAtURL:searchScopes:];
    }

    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v25 = @"url";
    null = v6;
    if (!v6)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v26[0] = null;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v22 = [v19 exceptionWithName:v20 reason:@"invalid url" userInfo:v21];
    [v22 raise];

    if (!v6)
    {
      goto LABEL_10;
    }
  }

  isFileURL = 0;
LABEL_11:

  v23 = *MEMORY[0x1E69E9840];
  return isFileURL;
}

- (uint64_t)br_setupForMonitoringChildrenOfItemAtURL:()BRCCloudDocsAdditions
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E696A638];
  v11 = *MEMORY[0x1E696A640];
  v12 = v4;
  v13 = *MEMORY[0x1E696A610];
  v5 = MEMORY[0x1E695DEC8];
  v6 = a3;
  v7 = [v5 arrayWithObjects:&v11 count:3];
  v8 = [self br_setupForMonitoringChildrenOfItemAtURL:v6 searchScopes:{v7, v11, v12, v13, v14}];

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)br_setupForMonitoringChildrenOfFolderAtURL:()BRCCloudDocsAdditions searchScopes:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_1(&dword_1AE2A9000, v0, v1, "[CRIT] UNREACHABLE: invalid url %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

@end