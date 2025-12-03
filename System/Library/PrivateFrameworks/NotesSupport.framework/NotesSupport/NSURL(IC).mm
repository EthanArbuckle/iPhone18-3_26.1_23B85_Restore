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
  selfCopy = self;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  lastPathComponent = [selfCopy lastPathComponent];
  pathExtension = [lastPathComponent pathExtension];
  v25 = lastPathComponent;
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  uRLByDeletingLastPathComponent = [selfCopy URLByDeletingLastPathComponent];
  v10 = 1;
  v11 = 0x1E696A000uLL;
  v12 = @"%@-%lu";
  v26 = pathExtension;
  while (1)
  {
    if ([selfCopy checkResourceIsReachableAndReturnError:0])
    {
      goto LABEL_6;
    }

    path = [selfCopy path];
    if ([defaultManager fileExistsAtPath:path])
    {

      goto LABEL_6;
    }

    [selfCopy lastPathComponent];
    v14 = uRLByDeletingLastPathComponent;
    v15 = stringByDeletingPathExtension;
    v16 = v12;
    v17 = v11;
    v19 = v18 = defaultManager;
    v20 = [v27 containsObject:v19];

    defaultManager = v18;
    v11 = v17;
    v12 = v16;
    stringByDeletingPathExtension = v15;
    uRLByDeletingLastPathComponent = v14;
    pathExtension = v26;

    if (!v20)
    {
      break;
    }

LABEL_6:
    v21 = [*(v11 + 3776) stringWithFormat:v12, stringByDeletingPathExtension, v10];
    if ([pathExtension length])
    {
      v22 = [v21 stringByAppendingPathExtension:pathExtension];

      v21 = v22;
    }

    v23 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v21 isDirectory:0];

    ++v10;
    selfCopy = v23;
  }

  return selfCopy;
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
  v5[4] = self;
  v6 = a3;
  dispatch_async(ic_updateFlagToExcludeFromBackup__excludeFromBackupQueue, v5);
}

- (uint64_t)ic_isExcludedFromBackups
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v2 = *MEMORY[0x1E695DB80];
  v9 = 0;
  v3 = [self getResourceValue:&v10 forKey:v2 error:&v9];
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
      selfCopy = self;
      v15 = 2112;
      v16 = v5;
      _os_log_error_impl(&dword_1D4576000, v6, OS_LOG_TYPE_ERROR, "Error checking backup exclusion flag %@ for %@: %@", buf, 0x20u);
    }
  }

  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (uint64_t)ic_isExcludedFromCloudBackups
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v2 = *MEMORY[0x1E695E300];
  v9 = 0;
  v3 = [self getResourceValue:&v10 forKey:v2 error:&v9];
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
      selfCopy = self;
      v15 = 2112;
      v16 = v5;
      _os_log_error_impl(&dword_1D4576000, v6, OS_LOG_TYPE_ERROR, "Error checking backup exclusion flag %@ for %@: %@", buf, 0x20u);
    }
  }

  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (id)ic_uniquedURL
{
  selfCopy = self;
  if ([selfCopy checkResourceIsReachableAndReturnError:0])
  {
    lastPathComponent = [selfCopy lastPathComponent];
    pathExtension = [lastPathComponent pathExtension];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
    uRLByDeletingLastPathComponent = [selfCopy URLByDeletingLastPathComponent];
    v6 = 1;
    do
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%lu", stringByDeletingPathExtension, v6];
      if ([pathExtension length])
      {
        v8 = [v7 stringByAppendingPathExtension:pathExtension];

        v7 = v8;
      }

      v9 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v7 isDirectory:0];

      ++v6;
      selfCopy = v9;
    }

    while (([v9 checkResourceIsReachableAndReturnError:0] & 1) != 0);
  }

  else
  {
    v9 = selfCopy;
  }

  return v9;
}

- (uint64_t)ic_isBooksURL
{
  host = [self host];
  v2 = [host isEqualToString:@"books.apple.com"];

  return v2;
}

- (uint64_t)ic_isNewsURL
{
  host = [self host];
  if ([host isEqualToString:@"apple.news"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [host isEqual:@"news.apple.com"];
  }

  return v2;
}

- (uint64_t)ic_isiTunesURL
{
  host = [self host];
  if ([host isEqual:@"itunes.apple.com"] & 1) != 0 || (objc_msgSend(host, "isEqual:", @"itunes.com"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [host isEqual:@"itun.es"];
  }

  return v2;
}

- (uint64_t)ic_isAppStoreURL
{
  host = [self host];
  v2 = [host isEqual:@"appsto.re"];

  return v2;
}

- (uint64_t)ic_isPodcastsURL
{
  host = [self host];
  v2 = [host isEqual:@"podcasts.apple.com"];

  return v2;
}

- (uint64_t)ic_isWebURL
{
  scheme = [self scheme];
  if ([scheme isEqualToString:@"http"])
  {
    v3 = 1;
  }

  else
  {
    scheme2 = [self scheme];
    v3 = [scheme2 isEqualToString:@"https"];
  }

  return v3;
}

- (uint64_t)ic_isSupportedAsAttachment
{
  if ([self ic_isWebURL] & 1) != 0 || (objc_msgSend(self, "ic_isMapURL"))
  {
    return 1;
  }

  return [self ic_isSafeFileURLForAttachment];
}

- (uint64_t)ic_isSafeFileURLForAttachment
{
  v24 = *MEMORY[0x1E69E9840];
  if ([self isFileURL])
  {
    path = [self path];
    stringByStandardizingPath = [path stringByStandardizingPath];

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

          if ([stringByStandardizingPath hasPrefix:*(*(&v19 + 1) + 8 * v9)])
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

    lastPathComponent = [stringByStandardizingPath lastPathComponent];
    v14 = [v10 containsObject:lastPathComponent];

    if (v14)
    {
LABEL_18:
      v17 = 0;
    }

    else
    {
      pathComponents = [self pathComponents];
      v16 = [pathComponents containsObject:@".."];

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
  if ([self isFileURL])
  {
    v7 = 0;
    v2 = [self getResourceValue:&v7 forKey:*MEMORY[0x1E695DC68] error:0];
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
  if ([self isFileURL] && (v3 = 0, objc_msgSend(self, "getResourceValue:forKey:error:", &v3, *MEMORY[0x1E695DB50], 0)))
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
  if (![self isFileURL])
  {
    return 0;
  }

  if ([self hasDirectoryPath])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v3 = [defaultManager contentsOfDirectoryAtURL:self includingPropertiesForKeys:0 options:0 error:0];

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

  return [self ic_fileSize];
}

@end