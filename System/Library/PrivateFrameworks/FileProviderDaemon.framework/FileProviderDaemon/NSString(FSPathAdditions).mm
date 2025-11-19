@interface NSString(FSPathAdditions)
- (id)fpfs_extractFSEventsBarrierUUID;
- (id)fpfs_extractFSEventsNotifyUUID;
- (id)fpfs_filenameExtension;
- (uint64_t)fpfs_isSafeSaveTempFile:()FSPathAdditions;
@end

@implementation NSString(FSPathAdditions)

- (id)fpfs_extractFSEventsBarrierUUID
{
  v1 = [a1 lastPathComponent];
  if ([v1 hasPrefix:@".rendez-vous."])
  {
    if (fpfs_extractFSEventsBarrierUUID_once != -1)
    {
      [NSString(FSPathAdditions) fpfs_extractFSEventsBarrierUUID];
    }

    v2 = [fpfs_extractFSEventsBarrierUUID_regexp firstMatchInString:v1 options:0 range:{0, objc_msgSend(v1, "length")}];
    if (v2)
    {
      v3 = objc_alloc(MEMORY[0x1E696AFB0]);
      v4 = [v2 rangeAtIndex:1];
      v6 = [v1 substringWithRange:{v4, v5}];
      v7 = [v3 initWithUUIDString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)fpfs_extractFSEventsNotifyUUID
{
  v1 = [a1 lastPathComponent];
  if ([v1 hasPrefix:@".notify."])
  {
    if (fpfs_extractFSEventsNotifyUUID_once != -1)
    {
      [NSString(FSPathAdditions) fpfs_extractFSEventsNotifyUUID];
    }

    v2 = [fpfs_extractFSEventsNotifyUUID_regexp firstMatchInString:v1 options:0 range:{0, objc_msgSend(v1, "length")}];
    if (v2)
    {
      v3 = objc_alloc(MEMORY[0x1E696AFB0]);
      v4 = [v2 rangeAtIndex:1];
      v6 = [v1 substringWithRange:{v4, v5}];
      v7 = [v3 initWithUUIDString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)fpfs_filenameExtension
{
  [a1 fileSystemRepresentation];
  v1 = fpfs_extension_in_filename();
  if (v1)
  {
    v1 = [MEMORY[0x1E696AEC0] fp_pathWithFileSystemRepresentation:v1];
  }

  return v1;
}

- (uint64_t)fpfs_isSafeSaveTempFile:()FSPathAdditions
{
  v8 = *MEMORY[0x1E69E9840];
  if ([a1 length])
  {
    bzero(v7, 0x400uLL);
    v2 = [a1 fileSystemRepresentation];
    if (__strlcpy_chk() > 0x3FF)
    {
      v4 = strdup(v2);
      is_safe_save_temp_file = fpfs_path_is_safe_save_temp_file();
      free(v4);
    }

    else
    {
      is_safe_save_temp_file = fpfs_path_is_safe_save_temp_file();
    }
  }

  else
  {
    is_safe_save_temp_file = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return is_safe_save_temp_file;
}

@end