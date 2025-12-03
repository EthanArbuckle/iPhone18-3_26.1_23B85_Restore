@interface TSUSafeSaveAssistant
+ (BOOL)finishWritingToURL:(id)l byMovingOrCopyingItemAtURL:(id)rL addingAttributes:(id)attributes error:(id *)error;
+ (void)writeAttributes:(id)attributes toURL:(id)l;
- (BOOL)endSaveWithSuccess:(BOOL)success toURL:(id)l addingAttributes:(id)attributes error:(id *)error;
- (TSUSafeSaveAssistant)init;
- (id)initForSavingToURL:(id)l error:(id *)error;
@end

@implementation TSUSafeSaveAssistant

- (TSUSafeSaveAssistant)init
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSafeSaveAssistant init]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUSafeSaveAssistant.m"];
  [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:22 isFatal:0 description:"Do not call method"];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUSafeSaveAssistant init]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)initForSavingToURL:(id)l error:(id *)error
{
  lCopy = l;
  if (lCopy)
  {
    v22.receiver = self;
    v22.super_class = TSUSafeSaveAssistant;
    v7 = [(TSUSafeSaveAssistant *)&v22 init];
    if (v7)
    {
      v8 = [lCopy copy];
      saveURL = v7->_saveURL;
      v7->_saveURL = v8;

      v21 = 0;
      v10 = [[OITSUTemporaryDirectory alloc] initForWritingToURL:lCopy error:&v21];
      v11 = v21;
      temporaryDirectory = v7->_temporaryDirectory;
      v7->_temporaryDirectory = v10;

      v13 = v7->_temporaryDirectory;
      if (v13)
      {
        v14 = [(OITSUTemporaryDirectory *)v13 URL];
        lastPathComponent = [(NSURL *)v7->_saveURL lastPathComponent];
        v16 = [v14 URLByAppendingPathComponent:lastPathComponent];
        writeURL = v7->_writeURL;
        v7->_writeURL = v16;
      }

      else
      {
        v14 = v7;
        v7 = 0;
      }

      if (!error)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v11 = 0;
      if (!error)
      {
        goto LABEL_11;
      }
    }

    v19 = v11;
    *error = v11;
LABEL_11:
    self = v7;

    selfCopy = self;
    goto LABEL_12;
  }

  selfCopy = 0;
LABEL_12:

  return selfCopy;
}

- (BOOL)endSaveWithSuccess:(BOOL)success toURL:(id)l addingAttributes:(id)attributes error:(id *)error
{
  successCopy = success;
  lCopy = l;
  attributesCopy = attributes;
  if (!self->_temporaryDirectory)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSafeSaveAssistant endSaveWithSuccess:toURL:addingAttributes:error:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUSafeSaveAssistant.m"];
    v16 = NSStringFromSelector(a2);
    [OITSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:57 isFatal:0 description:"%{public}@ should only be called once.", v16];

    +[OITSUAssertionHandler logBacktraceThrottled];
    goto LABEL_5;
  }

  if (!successCopy)
  {
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v13 = [objc_opt_class() finishWritingToURL:lCopy byMovingOrCopyingItemAtURL:self->_writeURL addingAttributes:attributesCopy error:error];
LABEL_6:
  temporaryDirectory = self->_temporaryDirectory;
  self->_temporaryDirectory = 0;

  return v13;
}

+ (void)writeAttributes:(id)attributes toURL:(id)l
{
  attributesCopy = attributes;
  lCopy = l;
  v6 = [attributesCopy objectForKey:*MEMORY[0x277CCA110]];
  if ([attributesCopy count] != (v6 != 0) || objc_msgSend(v6, "BOOLValue"))
  {
    path = [lCopy path];
    if (path)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager setAttributes:attributesCopy ofItemAtPath:path error:0];
    }
  }
}

+ (BOOL)finishWritingToURL:(id)l byMovingOrCopyingItemAtURL:(id)rL addingAttributes:(id)attributes error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  attributesCopy = attributes;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  if ([defaultManager fileExistsAtPath:path])
  {
    v29 = 0;
    v15 = [[TSUExtendedAttributeCollection alloc] initWithPath:path options:0 error:&v29];
    v16 = v29;
    v17 = v16;
    if (!v15)
    {
      LOBYTE(v20) = 0;
      goto LABEL_11;
    }

    errorCopy = error;
    v28 = v16;
    v18 = [defaultManager removeItemAtURL:lCopy error:&v28];
    v19 = v28;

    if (!v18)
    {
      LOBYTE(v20) = 0;
      v17 = v19;
      error = errorCopy;
      if (!errorCopy)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    error = errorCopy;
  }

  else
  {
    v15 = 0;
    v19 = 0;
  }

  [self writeAttributes:attributesCopy toURL:rLCopy];
  v27 = v19;
  v20 = [defaultManager moveItemAtURL:rLCopy toURL:lCopy error:&v27];
  v17 = v27;

  if (v20 && v15)
  {
    v26 = v17;
    LOBYTE(v20) = [(TSUExtendedAttributeCollection *)v15 setAttributeCollectionToPath:path intent:2 options:0 error:&v26];
    errorCopy2 = error;
    v22 = v26;

    v17 = v22;
    error = errorCopy2;
    if (!errorCopy2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_11:
  if (error)
  {
LABEL_12:
    v23 = v17;
    *error = v17;
  }

LABEL_13:

  return v20;
}

@end