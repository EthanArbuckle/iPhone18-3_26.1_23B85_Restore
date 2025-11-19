@interface CPLResourceIdentity
+ (id)extensionForFileUTI:(id)a3;
+ (id)fileUTIForExtension:(id)a3;
+ (id)fingerPrintForData:(id)a3 error:(id *)a4;
+ (id)fingerPrintForFileAtURL:(id)a3 error:(id *)a4;
+ (id)identityForStorageName:(id)a3;
+ (id)identityFromStoredIdentity:(id)a3;
+ (id)storageNameForFingerPrint:(id)a3 fileUTI:(id)a4 bucket:(id *)a5;
- (CGSize)imageDimensions;
- (CPLResourceIdentity)initWithCoder:(id)a3;
- (CPLResourceIdentity)initWithFileURL:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)identityForStorage;
- (id)realStableHash;
- (unint64_t)hash;
@end

@implementation CPLResourceIdentity

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 cplCopyPropertiesFromObject:self withCopyBlock:0];
  return v4;
}

- (CPLResourceIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CPLResourceIdentity;
  v5 = [(CPLResourceIdentity *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [v5 cplDecodePropertiesFromCoder:v4];
  }

  return v6;
}

- (CGSize)imageDimensions
{
  width = self->_imageDimensions.width;
  height = self->_imageDimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)identityForStorage
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [(CPLResourceIdentity *)self fingerPrint];
  if (!v4)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = self;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "Can't create identity for storage for an identity without finger print: %@", buf, 0xCu);
      }
    }

    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLResourceIdentity.m"];
    [v13 handleFailureInMethod:a2 object:self file:v14 lineNumber:100 description:{@"Can't create identity for storage for an identity without finger print: %@", self}];

    abort();
  }

  v5 = v4;
  v6 = [(CPLResourceIdentity *)self fileUTI];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 stringByReplacingOccurrencesOfString:@"." withString:@"_"];
  }

  else
  {
    v8 = @"CPLUNKNOWN";
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v5, v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NSURL *)self->_fileURL path];
  v6 = [v3 stringWithFormat:@"%@: filePath: %@ fingerPrint: %@  size: %.0fx%.0f fileUTI: %@", v4, v5, self->_fingerPrint, *&self->_imageDimensions.width, *&self->_imageDimensions.height, self->_fileUTI];

  return v6;
}

- (unint64_t)hash
{
  v2 = [(CPLResourceIdentity *)self fingerPrint];
  v3 = [v2 hash];

  return v3;
}

- (id)realStableHash
{
  fingerPrint = self->_fingerPrint;
  if (fingerPrint)
  {
    if (self->_stableHash)
    {
      fingerPrint = self->_stableHash;
    }

    v4 = fingerPrint;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CPLResourceIdentity)initWithFileURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CPLResourceIdentity;
  v5 = [(CPLResourceIdentity *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    fileURL = v5->_fileURL;
    v5->_fileURL = v6;
  }

  return v5;
}

+ (id)identityForStorageName:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 hasPrefix:@"cpl"])
  {
    v6 = [v5 substringFromIndex:3];

    v7 = [v6 pathExtension];
    v8 = [v6 stringByDeletingPathExtension];
    if ([v8 rangeOfString:@"_"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [v8 stringByReplacingOccurrencesOfString:@"_" withString:@"/"];

      v8 = v9;
    }

    if ([v7 length])
    {
      if ([v8 length])
      {
        if ([v7 isEqual:@"cplunknown"])
        {
          v10 = 0;
        }

        else
        {
          v10 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:v7];
        }

        v11 = objc_alloc_init(a1);
        v12 = [v10 identifier];
        [v11 setFileUTI:v12];

        [v11 setFingerPrint:v8];
        goto LABEL_11;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v18 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v20 = v6;
          _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_ERROR, "Storage name should always have a finger print (%@)", buf, 0xCu);
        }
      }

      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLResourceIdentity.m"];
      [v16 handleFailureInMethod:a2 object:a1 file:v17 lineNumber:190 description:{@"Storage name should always have a finger print (%@)", v6}];
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v15 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v20 = v6;
          _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_ERROR, "Storage name should always have an extension (%@)", buf, 0xCu);
        }
      }

      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLResourceIdentity.m"];
      [v16 handleFailureInMethod:a2 object:a1 file:v17 lineNumber:189 description:{@"Storage name should always have an extension (%@)", v6}];
    }

    abort();
  }

  v11 = 0;
  v6 = v5;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)storageNameForFingerPrint:(id)a3 fileUTI:(id)a4 bucket:(id *)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if ([v9 hasPrefix:@"."])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v18 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v9;
        _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_ERROR, "%@ is not a valid finger print", buf, 0xCu);
      }
    }

    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLResourceIdentity.m"];
    [v19 handleFailureInMethod:a2 object:a1 file:v20 lineNumber:158 description:{@"%@ is not a valid finger print", v9}];

    abort();
  }

  if ([v9 rangeOfString:@"/"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v9 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

    v9 = v11;
  }

  if (a5)
  {
    if ([v9 length] < 4)
    {
      v12 = v9;
    }

    else
    {
      v12 = [v9 substringToIndex:3];
    }

    *a5 = v12;
  }

  v13 = [a1 extensionForFileUTI:v10];
  v14 = [@"cpl" stringByAppendingString:v9];
  v15 = [v14 cplStringByAppendingPathExtension:v13 fallbackExtension:@"cplunknown"];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)extensionForFileUTI:(id)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x1E6982C40] typeWithIdentifier:?];
    v4 = [v3 preferredFilenameExtension];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)fileUTIForExtension:(id)a3
{
  v3 = a3;
  if (![v3 length])
  {
    v5 = 0;
LABEL_6:
    v6 = *MEMORY[0x1E6982D60];

    goto LABEL_7;
  }

  v4 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:v3];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = v4;
  if ([v4 isDynamic])
  {
    goto LABEL_6;
  }

LABEL_7:
  v7 = [v6 identifier];

  return v7;
}

+ (id)identityFromStoredIdentity:(id)a3
{
  v4 = a3;
  v5 = [v4 rangeOfString:@"."];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v4;
    v7 = 0;
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v8 = v5;
  v6 = [v4 substringToIndex:v5];
  v9 = [v4 substringFromIndex:v8 + 1];
  v7 = v9;
  if (!v9 || ![v9 length] || (objc_msgSend(v7, "isEqualToString:", @"CPLUNKNOWN") & 1) != 0)
  {
    goto LABEL_6;
  }

  v10 = [v7 stringByReplacingOccurrencesOfString:@"_" withString:@"."];
LABEL_7:
  v11 = objc_alloc_init(a1);
  [v11 setFingerPrint:v6];
  [v11 setFileUTI:v10];

  return v11;
}

+ (id)fingerPrintForData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[CPLFingerprintScheme fingerprintSchemeForStableHash];
  v7 = [v6 fingerPrintForData:v5 error:a4];

  return v7;
}

+ (id)fingerPrintForFileAtURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[CPLFingerprintScheme fingerprintSchemeForStableHash];
  v7 = [v6 fingerPrintForFileAtURL:v5 error:a4];

  return v7;
}

@end