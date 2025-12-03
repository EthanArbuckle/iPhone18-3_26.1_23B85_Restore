@interface _EFProtectedFile
- (NSString)ef_publicDescription;
- (id)initWithFilePath:(char)path isSensitive:(void *)sensitive protectionType:;
- (uint64_t)fileDescriptorWithError:(uint64_t)error;
@end

@implementation _EFProtectedFile

- (id)initWithFilePath:(char)path isSensitive:(void *)sensitive protectionType:
{
  v8 = a2;
  sensitiveCopy = sensitive;
  if (self)
  {
    v14.receiver = self;
    v14.super_class = _EFProtectedFile;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    self = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 3, a2);
      *(self + 16) = path;
      v11 = sensitiveCopy;
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

      *(self + 5) = v12;
      *(self + 3) = 0;
    }
  }

  return self;
}

- (uint64_t)fileDescriptorWithError:(uint64_t)error
{
  if (!error)
  {
    return 0;
  }

  os_unfair_lock_lock((error + 12));
  v4 = *(error + 8);
  if (!v4 && (v5 = *(error + 24), *(error + 8) = open_dprotected_np([v5 UTF8String], 0, *(error + 20), 0, 384), v5, v4 = *(error + 8), v4 == -1))
  {
    *(error + 8) = 0;
    v9 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = [v9 initWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
    v4 = *(error + 8);
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock((error + 12));
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
    pathComponents = [(_EFProtectedFile *)self pathComponents];
    v4 = +[EFDevice currentDevice];
    if ([v4 isInternal])
    {
      lastObject = [pathComponents lastObject];
      [EFPrivacy partiallyRedactedStringForString:lastObject];
    }

    else
    {
      lastObject = [pathComponents lastObject];
      [EFPrivacy fullyRedactedStringForString:lastObject];
    }
    v7 = ;

    selfCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<depth=%lu>/%@", objc_msgSend(pathComponents, "count") - 1, v7];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end