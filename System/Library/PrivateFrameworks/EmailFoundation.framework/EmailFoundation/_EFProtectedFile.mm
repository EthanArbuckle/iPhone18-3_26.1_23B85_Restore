@interface _EFProtectedFile
- (NSString)ef_publicDescription;
- (id)initWithFilePath:(char)a3 isSensitive:(void *)a4 protectionType:;
- (uint64_t)fileDescriptorWithError:(uint64_t)a1;
@end

@implementation _EFProtectedFile

- (id)initWithFilePath:(char)a3 isSensitive:(void *)a4 protectionType:
{
  v8 = a2;
  v9 = a4;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = _EFProtectedFile;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 3, a2);
      *(a1 + 16) = a3;
      v11 = v9;
      if ([v11 isEqualToString:*MEMORY[0x1E696A378]])
      {
        v12 = 1;
      }

      else if ([v11 isEqualToString:*MEMORY[0x1E696A380]])
      {
        v12 = 2;
      }

      else if ([v11 isEqualToString:*MEMORY[0x1E696A388]])
      {
        v12 = 3;
      }

      else if ([v11 isEqualToString:*MEMORY[0x1E696A3A8]])
      {
        v12 = 4;
      }

      else if ([v11 isEqualToString:*MEMORY[0x1E696A398]])
      {
        v12 = 7;
      }

      else
      {
        v12 = -1;
      }

      *(a1 + 5) = v12;
      *(a1 + 3) = 0;
    }
  }

  return a1;
}

- (uint64_t)fileDescriptorWithError:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 12));
  v4 = *(a1 + 8);
  if (!v4 && (v5 = *(a1 + 24), *(a1 + 8) = open_dprotected_np([v5 UTF8String], 0, *(a1 + 20), 0, 384), v5, v4 = *(a1 + 8), v4 == -1))
  {
    *(a1 + 8) = 0;
    v9 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = [v9 initWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
    v4 = *(a1 + 8);
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock((a1 + 12));
  if (a2)
  {
    v7 = v6;
    *a2 = v6;
  }

  return v4;
}

- (NSString)ef_publicDescription
{
  if (self && (filePathIsSensitive = self->_filePathIsSensitive, self = self->_filePath, filePathIsSensitive))
  {
    v3 = [(_EFProtectedFile *)self pathComponents];
    v4 = +[EFDevice currentDevice];
    if ([v4 isInternal])
    {
      v5 = [v3 lastObject];
      [EFPrivacy partiallyRedactedStringForString:v5];
    }

    else
    {
      v5 = [v3 lastObject];
      [EFPrivacy fullyRedactedStringForString:v5];
    }
    v7 = ;

    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<depth=%lu>/%@", objc_msgSend(v3, "count") - 1, v7];
  }

  else
  {
    v6 = self;
  }

  return v6;
}

@end