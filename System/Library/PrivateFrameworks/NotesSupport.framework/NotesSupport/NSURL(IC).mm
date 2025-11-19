@interface NSURL(IC)
- (id)ic_UTI;
- (id)ic_dedupedURLWithProhibitedNames:()IC;
- (id)ic_uniquedURL;
- (uint64_t)ic_fileOrDirectorySize;
- (uint64_t)ic_fileSize;
- (uint64_t)ic_isAppStoreURL;
- (uint64_t)ic_isBooksURL;
- (uint64_t)ic_isExcludedFromBackups;
- (uint64_t)ic_isExcludedFromCloudBackups;
- (uint64_t)ic_isNewsURL;
- (uint64_t)ic_isPodcastsURL;
- (uint64_t)ic_isSafeFileURLForAttachment;
- (uint64_t)ic_isSupportedAsAttachment;
- (uint64_t)ic_isWebURL;
- (uint64_t)ic_isiTunesURL;
- (void)ic_updateFlagToExcludeFromBackup:()IC;
@end

@implementation NSURL(IC)

- (id)ic_dedupedURLWithProhibitedNames:()IC
{
  v27 = a3;
  v4 = a1;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v4 lastPathComponent];
  v7 = [v6 pathExtension];
  v25 = v6;
  v8 = [v6 stringByDeletingPathExtension];
  v9 = [v4 URLByDeletingLastPathComponent];
  v10 = 1;
  v11 = 0x1E696A000uLL;
  v12 = @"%@-%lu";
  v26 = v7;
  while (1)
  {
    if ([v4 checkResourceIsReachableAndReturnError:0])
    {
      goto LABEL_6;
    }

    v13 = [v4 path];
    if ([v5 fileExistsAtPath:v13])
    {

      goto LABEL_6;
    }

    [v4 lastPathComponent];
    v14 = v9;
    v15 = v8;
    v16 = v12;
    v17 = v11;
    v19 = v18 = v5;
    v20 = [v27 containsObject:v19];

    v5 = v18;
    v11 = v17;
    v12 = v16;
    v8 = v15;
    v9 = v14;
    v7 = v26;

    if (!v20)
    {
      break;
    }

LABEL_6:
    v21 = [*(v11 + 3776) stringWithFormat:v12, v8, v10];
    if ([v7 length])
    {
      v22 = [v21 stringByAppendingPathExtension:v7];

      v21 = v22;
    }

    v23 = [v9 URLByAppendingPathComponent:v21 isDirectory:0];

    ++v10;
    v4 = v23;
  }

  return v4;
}

- (void)ic_updateFlagToExcludeFromBackup:()IC
{
  if (ic_updateFlagToExcludeFromBackup__token != -1)
  {
    [NSURL(IC) ic_updateFlagToExcludeFromBackup:];
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__NSURL_IC__ic_updateFlagToExcludeFromBackup___block_invoke_2;
  v5[3] = &unk_1E8485860;
  v5[4] = a1;
  v6 = a3;
  dispatch_async(ic_updateFlagToExcludeFromBackup__excludeFromBackupQueue, v5);
}

- (uint64_t)ic_isExcludedFromBackups
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v2 = *MEMORY[0x1E695DB80];
  v9 = 0;
  v3 = [a1 getResourceValue:&v10 forKey:v2 error:&v9];
  v4 = v10;
  v5 = v9;
  if ((v3 & 1) == 0)
  {
    v6 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v12 = v2;
      v13 = 2112;
      v14 = a1;
      v15 = 2112;
      v16 = v5;
      _os_log_error_impl(&dword_1D4576000, v6, OS_LOG_TYPE_ERROR, "Error checking backup exclusion flag %@ for %@: %@", buf, 0x20u);
    }
  }

  v7 = [v4 BOOLValue];

  return v7;
}

- (uint64_t)ic_isExcludedFromCloudBackups
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v2 = *MEMORY[0x1E695E300];
  v9 = 0;
  v3 = [a1 getResourceValue:&v10 forKey:v2 error:&v9];
  v4 = v10;
  v5 = v9;
  if ((v3 & 1) == 0)
  {
    v6 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v12 = v2;
      v13 = 2112;
      v14 = a1;
      v15 = 2112;
      v16 = v5;
      _os_log_error_impl(&dword_1D4576000, v6, OS_LOG_TYPE_ERROR, "Error checking backup exclusion flag %@ for %@: %@", buf, 0x20u);
    }
  }

  v7 = [v4 BOOLValue];

  return v7;
}

- (id)ic_uniquedURL
{
  v1 = a1;
  if ([v1 checkResourceIsReachableAndReturnError:0])
  {
    v2 = [v1 lastPathComponent];
    v3 = [v2 pathExtension];
    v4 = [v2 stringByDeletingPathExtension];
    v5 = [v1 URLByDeletingLastPathComponent];
    v6 = 1;
    do
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%lu", v4, v6];
      if ([v3 length])
      {
        v8 = [v7 stringByAppendingPathExtension:v3];

        v7 = v8;
      }

      v9 = [v5 URLByAppendingPathComponent:v7 isDirectory:0];

      ++v6;
      v1 = v9;
    }

    while (([v9 checkResourceIsReachableAndReturnError:0] & 1) != 0);
  }

  else
  {
    v9 = v1;
  }

  return v9;
}

- (uint64_t)ic_isBooksURL
{
  v1 = [a1 host];
  v2 = [v1 isEqualToString:@"books.apple.com"];

  return v2;
}

- (uint64_t)ic_isNewsURL
{
  v1 = [a1 host];
  if ([v1 isEqualToString:@"apple.news"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqual:@"news.apple.com"];
  }

  return v2;
}

- (uint64_t)ic_isiTunesURL
{
  v1 = [a1 host];
  if ([v1 isEqual:@"itunes.apple.com"] & 1) != 0 || (objc_msgSend(v1, "isEqual:", @"itunes.com"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqual:@"itun.es"];
  }

  return v2;
}

- (uint64_t)ic_isAppStoreURL
{
  v1 = [a1 host];
  v2 = [v1 isEqual:@"appsto.re"];

  return v2;
}

- (uint64_t)ic_isPodcastsURL
{
  v1 = [a1 host];
  v2 = [v1 isEqual:@"podcasts.apple.com"];

  return v2;
}

- (uint64_t)ic_isWebURL
{
  v2 = [a1 scheme];
  if ([v2 isEqualToString:@"http"])
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 scheme];
    v3 = [v4 isEqualToString:@"https"];
  }

  return v3;
}

- (uint64_t)ic_isSupportedAsAttachment
{
  if ([a1 ic_isWebURL] & 1) != 0 || (objc_msgSend(a1, "ic_isMapURL"))
  {
    return 1;
  }

  return [a1 ic_isSafeFileURLForAttachment];
}

- (uint64_t)ic_isSafeFileURLForAttachment
{
  v24 = *MEMORY[0x1E69E9840];
  if ([a1 isFileURL])
  {
    v2 = [a1 path];
    v3 = [v2 stringByStandardizingPath];

    v4 = ic_isSafeFileURLForAttachment_unsafePathPrefixes;
    if (!ic_isSafeFileURLForAttachment_unsafePathPrefixes)
    {
      ic_isSafeFileURLForAttachment_unsafePathPrefixes = &unk_1F4FD72D8;

      v4 = &unk_1F4FD72D8;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if ([v3 hasPrefix:*(*(&v19 + 1) + 8 * v9)])
          {

            goto LABEL_18;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v10 = ic_isSafeFileURLForAttachment_unsafeFilenames;
    if (!ic_isSafeFileURLForAttachment_unsafeFilenames)
    {
      v11 = [MEMORY[0x1E695DFD8] setWithObjects:{@"notes.sqlite", @"notes.sqlite-shm", @"notes.sqlite-wal", @"NoteStore.sqlite", @"NoteStore.sqlite-shm", @"NoteStore.sqlite-wal", 0, v19}];
      v12 = ic_isSafeFileURLForAttachment_unsafeFilenames;
      ic_isSafeFileURLForAttachment_unsafeFilenames = v11;

      v10 = ic_isSafeFileURLForAttachment_unsafeFilenames;
    }

    v13 = [v3 lastPathComponent];
    v14 = [v10 containsObject:v13];

    if (v14)
    {
LABEL_18:
      v17 = 0;
    }

    else
    {
      v15 = [a1 pathComponents];
      v16 = [v15 containsObject:@".."];

      v17 = v16 ^ 1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

- (id)ic_UTI
{
  if ([a1 isFileURL])
  {
    v7 = 0;
    v2 = [a1 getResourceValue:&v7 forKey:*MEMORY[0x1E695DC68] error:0];
    v3 = v7;
    v4 = v3;
    v5 = 0;
    if (v2)
    {
      v5 = v3;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)ic_fileSize
{
  if ([a1 isFileURL] && (v3 = 0, objc_msgSend(a1, "getResourceValue:forKey:error:", &v3, *MEMORY[0x1E695DB50], 0)))
  {
    return [v3 integerValue];
  }

  else
  {
    return 0;
  }
}

- (uint64_t)ic_fileOrDirectorySize
{
  v16 = *MEMORY[0x1E69E9840];
  if (![a1 isFileURL])
  {
    return 0;
  }

  if ([a1 hasDirectoryPath])
  {
    v2 = [MEMORY[0x1E696AC08] defaultManager];
    v3 = [v2 contentsOfDirectoryAtURL:a1 includingPropertiesForKeys:0 options:0 error:0];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v7 += [*(*(&v11 + 1) + 8 * i) ic_fileOrDirectorySize];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    return v7;
  }

  return [a1 ic_fileSize];
}

@end