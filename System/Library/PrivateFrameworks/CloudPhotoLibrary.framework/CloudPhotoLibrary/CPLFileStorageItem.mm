@interface CPLFileStorageItem
- (BOOL)getResourceValue:(id *)value forKey:(id)key error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (CPLFileStorageItem)initWithIdentity:(id)identity original:(BOOL)original markedForDelete:(BOOL)delete lastAccessDate:(id)date;
- (id)description;
- (unint64_t)hash;
@end

@implementation CPLFileStorageItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identity = [(CPLFileStorageItem *)self identity];
  fingerPrint = [identity fingerPrint];
  identity2 = [(CPLFileStorageItem *)self identity];
  fileUTI = [identity2 fileUTI];
  if ([(CPLFileStorageItem *)self isOriginal])
  {
    v9 = " [original]";
  }

  else
  {
    v9 = "";
  }

  isMarkedForDelete = [(CPLFileStorageItem *)self isMarkedForDelete];
  v11 = " [to be deleted]";
  if (!isMarkedForDelete)
  {
    v11 = "";
  }

  v12 = [v3 stringWithFormat:@"<%@ [%@ %@]%s%s>", v4, fingerPrint, fileUTI, v9, v11];

  return v12;
}

- (unint64_t)hash
{
  identity = [(CPLFileStorageItem *)self identity];
  fingerPrint = [identity fingerPrint];
  v4 = [fingerPrint hash];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isOriginal = [(CPLFileStorageItem *)self isOriginal];
    if (isOriginal == [(CPLFileStorageItem *)equalCopy isOriginal])
    {
      isMarkedForDelete = [(CPLFileStorageItem *)self isMarkedForDelete];
      if (isMarkedForDelete == [(CPLFileStorageItem *)equalCopy isMarkedForDelete])
      {
        lastAccessDate = [(CPLFileStorageItem *)self lastAccessDate];

        lastAccessDate2 = [(CPLFileStorageItem *)equalCopy lastAccessDate];
        v11 = lastAccessDate2;
        if (lastAccessDate)
        {
          if (!lastAccessDate2)
          {
            goto LABEL_5;
          }

          lastAccessDate3 = [(CPLFileStorageItem *)self lastAccessDate];
          lastAccessDate4 = [(CPLFileStorageItem *)equalCopy lastAccessDate];
          v14 = [lastAccessDate3 isEqual:lastAccessDate4];

          if ((v14 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        else
        {

          if (v11)
          {
            goto LABEL_5;
          }
        }

        identity = [(CPLFileStorageItem *)self identity];
        identity2 = [(CPLFileStorageItem *)equalCopy identity];
        v7 = [identity isEqual:identity2];

        goto LABEL_7;
      }
    }
  }

LABEL_5:
  v7 = 0;
LABEL_7:

  return v7;
}

- (BOOL)getResourceValue:(id *)value forKey:(id)key error:(id *)error
{
  keyCopy = key;
  fileURL = [(CPLResourceIdentity *)self->_identity fileURL];
  v10 = fileURL;
  if (fileURL)
  {
    v11 = [fileURL getResourceValue:value forKey:keyCopy error:error];
  }

  else
  {
    *value = 0;
    v11 = 1;
  }

  return v11;
}

- (CPLFileStorageItem)initWithIdentity:(id)identity original:(BOOL)original markedForDelete:(BOOL)delete lastAccessDate:(id)date
{
  identityCopy = identity;
  dateCopy = date;
  v33.receiver = self;
  v33.super_class = CPLFileStorageItem;
  v14 = [(CPLFileStorageItem *)&v33 init];
  v15 = v14;
  if (v14)
  {
    if (identityCopy)
    {
      objc_storeStrong(&v14->_identity, identity);
      fingerPrint = [identityCopy fingerPrint];

      if (fingerPrint)
      {
        fileUTI = [identityCopy fileUTI];

        if (fileUTI)
        {
          v15->_original = original;
          v15->_markedForDelete = delete;
          v18 = [dateCopy copy];
          lastAccessDate = v15->_lastAccessDate;
          v15->_lastAccessDate = v18;

          goto LABEL_6;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v31 = __CPLItemOSLogDomain();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *v32 = 0;
            _os_log_impl(&dword_1DC05A000, v31, OS_LOG_TYPE_ERROR, "Can't create a file storage item without a type identifier", v32, 2u);
          }
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineFileStorage.m"];
        v24 = @"Can't create a file storage item without a type identifier";
        v25 = currentHandler;
        v26 = a2;
        v27 = v15;
        v28 = v23;
        v29 = 694;
      }

      else
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v30 = __CPLItemOSLogDomain();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *v32 = 0;
            _os_log_impl(&dword_1DC05A000, v30, OS_LOG_TYPE_ERROR, "Can't create a file storage item without an identity finger print", v32, 2u);
          }
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineFileStorage.m"];
        v24 = @"Can't create a file storage item without an identity finger print";
        v25 = currentHandler;
        v26 = a2;
        v27 = v15;
        v28 = v23;
        v29 = 693;
      }
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v21 = __CPLItemOSLogDomain();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *v32 = 0;
          _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_ERROR, "Can't create a file storage item without an identity", v32, 2u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineFileStorage.m"];
      v24 = @"Can't create a file storage item without an identity";
      v25 = currentHandler;
      v26 = a2;
      v27 = v15;
      v28 = v23;
      v29 = 690;
    }

    [v25 handleFailureInMethod:v26 object:v27 file:v28 lineNumber:v29 description:v24];

    abort();
  }

LABEL_6:

  return v15;
}

@end