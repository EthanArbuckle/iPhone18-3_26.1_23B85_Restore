@interface CPLResourceIdentity
+ (id)extensionForFileUTI:(id)i;
+ (id)fileUTIForExtension:(id)extension;
+ (id)fingerPrintForData:(id)data error:(id *)error;
+ (id)fingerPrintForFileAtURL:(id)l error:(id *)error;
+ (id)identityForStorageName:(id)name;
+ (id)identityFromStoredIdentity:(id)identity;
+ (id)storageNameForFingerPrint:(id)print fileUTI:(id)i bucket:(id *)bucket;
- (CGSize)imageDimensions;
- (CPLResourceIdentity)initWithCoder:(id)coder;
- (CPLResourceIdentity)initWithFileURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)identityForStorage;
- (id)realStableHash;
- (unint64_t)hash;
@end

@implementation CPLResourceIdentity

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 cplCopyPropertiesFromObject:self withCopyBlock:0];
  return v4;
}

- (CPLResourceIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CPLResourceIdentity;
  v5 = [(CPLResourceIdentity *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [v5 cplDecodePropertiesFromCoder:coderCopy];
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
  fingerPrint = [(CPLResourceIdentity *)self fingerPrint];
  if (!fingerPrint)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "Can't create identity for storage for an identity without finger print: %@", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLResourceIdentity.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v14 lineNumber:100 description:{@"Can't create identity for storage for an identity without finger print: %@", self}];

    abort();
  }

  v5 = fingerPrint;
  fileUTI = [(CPLResourceIdentity *)self fileUTI];
  v7 = fileUTI;
  if (fileUTI)
  {
    v8 = [fileUTI stringByReplacingOccurrencesOfString:@"." withString:@"_"];
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
  path = [(NSURL *)self->_fileURL path];
  v6 = [v3 stringWithFormat:@"%@: filePath: %@ fingerPrint: %@  size: %.0fx%.0f fileUTI: %@", v4, path, self->_fingerPrint, *&self->_imageDimensions.width, *&self->_imageDimensions.height, self->_fileUTI];

  return v6;
}

- (unint64_t)hash
{
  fingerPrint = [(CPLResourceIdentity *)self fingerPrint];
  v3 = [fingerPrint hash];

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

- (CPLResourceIdentity)initWithFileURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = CPLResourceIdentity;
  v5 = [(CPLResourceIdentity *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    fileURL = v5->_fileURL;
    v5->_fileURL = v6;
  }

  return v5;
}

+ (id)identityForStorageName:(id)name
{
  v21 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if ([nameCopy hasPrefix:@"cpl"])
  {
    v6 = [nameCopy substringFromIndex:3];

    pathExtension = [v6 pathExtension];
    stringByDeletingPathExtension = [v6 stringByDeletingPathExtension];
    if ([stringByDeletingPathExtension rangeOfString:@"_"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [stringByDeletingPathExtension stringByReplacingOccurrencesOfString:@"_" withString:@"/"];

      stringByDeletingPathExtension = v9;
    }

    if ([pathExtension length])
    {
      if ([stringByDeletingPathExtension length])
      {
        if ([pathExtension isEqual:@"cplunknown"])
        {
          v10 = 0;
        }

        else
        {
          v10 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:pathExtension];
        }

        v11 = objc_alloc_init(self);
        identifier = [v10 identifier];
        [v11 setFileUTI:identifier];

        [v11 setFingerPrint:stringByDeletingPathExtension];
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

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLResourceIdentity.m"];
      [currentHandler handleFailureInMethod:a2 object:self file:v17 lineNumber:190 description:{@"Storage name should always have a finger print (%@)", v6}];
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

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLResourceIdentity.m"];
      [currentHandler handleFailureInMethod:a2 object:self file:v17 lineNumber:189 description:{@"Storage name should always have an extension (%@)", v6}];
    }

    abort();
  }

  v11 = 0;
  v6 = nameCopy;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)storageNameForFingerPrint:(id)print fileUTI:(id)i bucket:(id *)bucket
{
  v23 = *MEMORY[0x1E69E9840];
  printCopy = print;
  iCopy = i;
  if ([printCopy hasPrefix:@"."])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v18 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = printCopy;
        _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_ERROR, "%@ is not a valid finger print", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLResourceIdentity.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v20 lineNumber:158 description:{@"%@ is not a valid finger print", printCopy}];

    abort();
  }

  if ([printCopy rangeOfString:@"/"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [printCopy stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

    printCopy = v11;
  }

  if (bucket)
  {
    if ([printCopy length] < 4)
    {
      v12 = printCopy;
    }

    else
    {
      v12 = [printCopy substringToIndex:3];
    }

    *bucket = v12;
  }

  v13 = [self extensionForFileUTI:iCopy];
  v14 = [@"cpl" stringByAppendingString:printCopy];
  v15 = [v14 cplStringByAppendingPathExtension:v13 fallbackExtension:@"cplunknown"];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)extensionForFileUTI:(id)i
{
  if (i)
  {
    v3 = [MEMORY[0x1E6982C40] typeWithIdentifier:?];
    preferredFilenameExtension = [v3 preferredFilenameExtension];
  }

  else
  {
    preferredFilenameExtension = 0;
  }

  return preferredFilenameExtension;
}

+ (id)fileUTIForExtension:(id)extension
{
  extensionCopy = extension;
  if (![extensionCopy length])
  {
    v5 = 0;
LABEL_6:
    v6 = *MEMORY[0x1E6982D60];

    goto LABEL_7;
  }

  v4 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:extensionCopy];
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
  identifier = [v6 identifier];

  return identifier;
}

+ (id)identityFromStoredIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [identityCopy rangeOfString:@"."];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = identityCopy;
    v7 = 0;
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v8 = v5;
  v6 = [identityCopy substringToIndex:v5];
  v9 = [identityCopy substringFromIndex:v8 + 1];
  v7 = v9;
  if (!v9 || ![v9 length] || (objc_msgSend(v7, "isEqualToString:", @"CPLUNKNOWN") & 1) != 0)
  {
    goto LABEL_6;
  }

  v10 = [v7 stringByReplacingOccurrencesOfString:@"_" withString:@"."];
LABEL_7:
  v11 = objc_alloc_init(self);
  [v11 setFingerPrint:v6];
  [v11 setFileUTI:v10];

  return v11;
}

+ (id)fingerPrintForData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = +[CPLFingerprintScheme fingerprintSchemeForStableHash];
  v7 = [v6 fingerPrintForData:dataCopy error:error];

  return v7;
}

+ (id)fingerPrintForFileAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = +[CPLFingerprintScheme fingerprintSchemeForStableHash];
  v7 = [v6 fingerPrintForFileAtURL:lCopy error:error];

  return v7;
}

@end