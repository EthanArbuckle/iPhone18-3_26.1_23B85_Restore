@interface CPLFileStorageItem
- (BOOL)getResourceValue:(id *)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (CPLFileStorageItem)initWithIdentity:(id)a3 original:(BOOL)a4 markedForDelete:(BOOL)a5 lastAccessDate:(id)a6;
- (id)description;
- (unint64_t)hash;
@end

@implementation CPLFileStorageItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CPLFileStorageItem *)self identity];
  v6 = [v5 fingerPrint];
  v7 = [(CPLFileStorageItem *)self identity];
  v8 = [v7 fileUTI];
  if ([(CPLFileStorageItem *)self isOriginal])
  {
    v9 = " [original]";
  }

  else
  {
    v9 = "";
  }

  v10 = [(CPLFileStorageItem *)self isMarkedForDelete];
  v11 = " [to be deleted]";
  if (!v10)
  {
    v11 = "";
  }

  v12 = [v3 stringWithFormat:@"<%@ [%@ %@]%s%s>", v4, v6, v8, v9, v11];

  return v12;
}

- (unint64_t)hash
{
  v2 = [(CPLFileStorageItem *)self identity];
  v3 = [v2 fingerPrint];
  v4 = [v3 hash];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CPLFileStorageItem *)self isOriginal];
    if (v5 == [(CPLFileStorageItem *)v4 isOriginal])
    {
      v6 = [(CPLFileStorageItem *)self isMarkedForDelete];
      if (v6 == [(CPLFileStorageItem *)v4 isMarkedForDelete])
      {
        v9 = [(CPLFileStorageItem *)self lastAccessDate];

        v10 = [(CPLFileStorageItem *)v4 lastAccessDate];
        v11 = v10;
        if (v9)
        {
          if (!v10)
          {
            goto LABEL_5;
          }

          v12 = [(CPLFileStorageItem *)self lastAccessDate];
          v13 = [(CPLFileStorageItem *)v4 lastAccessDate];
          v14 = [v12 isEqual:v13];

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

        v15 = [(CPLFileStorageItem *)self identity];
        v16 = [(CPLFileStorageItem *)v4 identity];
        v7 = [v15 isEqual:v16];

        goto LABEL_7;
      }
    }
  }

LABEL_5:
  v7 = 0;
LABEL_7:

  return v7;
}

- (BOOL)getResourceValue:(id *)a3 forKey:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(CPLResourceIdentity *)self->_identity fileURL];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 getResourceValue:a3 forKey:v8 error:a5];
  }

  else
  {
    *a3 = 0;
    v11 = 1;
  }

  return v11;
}

- (CPLFileStorageItem)initWithIdentity:(id)a3 original:(BOOL)a4 markedForDelete:(BOOL)a5 lastAccessDate:(id)a6
{
  v12 = a3;
  v13 = a6;
  v33.receiver = self;
  v33.super_class = CPLFileStorageItem;
  v14 = [(CPLFileStorageItem *)&v33 init];
  v15 = v14;
  if (v14)
  {
    if (v12)
    {
      objc_storeStrong(&v14->_identity, a3);
      v16 = [v12 fingerPrint];

      if (v16)
      {
        v17 = [v12 fileUTI];

        if (v17)
        {
          v15->_original = a4;
          v15->_markedForDelete = a5;
          v18 = [v13 copy];
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

        v22 = [MEMORY[0x1E696AAA8] currentHandler];
        v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineFileStorage.m"];
        v24 = @"Can't create a file storage item without a type identifier";
        v25 = v22;
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

        v22 = [MEMORY[0x1E696AAA8] currentHandler];
        v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineFileStorage.m"];
        v24 = @"Can't create a file storage item without an identity finger print";
        v25 = v22;
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

      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineFileStorage.m"];
      v24 = @"Can't create a file storage item without an identity";
      v25 = v22;
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