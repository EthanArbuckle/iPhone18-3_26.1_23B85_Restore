@interface OITSUTemporaryDirectory
- (BOOL)_createDirectoryWithSignature:(id)signature subdirectory:(id)subdirectory error:(id *)error;
- (OITSUTemporaryDirectory)init;
- (OITSUTemporaryDirectory)initWithSignature:(id)signature subdirectory:(id)subdirectory error:(id *)error;
- (id)initForWritingToURL:(id)l error:(id *)error;
- (void)dealloc;
@end

@implementation OITSUTemporaryDirectory

- (OITSUTemporaryDirectory)init
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUTemporaryDirectory init]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUTemporaryDirectory.m"];
  [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:26 isFatal:0 description:"Do not call method"];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[OITSUTemporaryDirectory init]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (OITSUTemporaryDirectory)initWithSignature:(id)signature subdirectory:(id)subdirectory error:(id *)error
{
  signatureCopy = signature;
  subdirectoryCopy = subdirectory;
  v13.receiver = self;
  v13.super_class = OITSUTemporaryDirectory;
  v10 = [(OITSUTemporaryDirectory *)&v13 init];
  v11 = v10;
  if (v10 && ![(OITSUTemporaryDirectory *)v10 _createDirectoryWithSignature:signatureCopy subdirectory:subdirectoryCopy error:error])
  {

    v11 = 0;
  }

  return v11;
}

- (id)initForWritingToURL:(id)l error:(id *)error
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = OITSUTemporaryDirectory;
  v7 = [(OITSUTemporaryDirectory *)&v13 init];
  if (v7)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:lCopy create:1 error:error];

    path = [v9 path];
    path = v7->_path;
    v7->_path = path;

    if (!v9)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  if (!self->_leak)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = self->_path;
    v10 = 0;
    v5 = [defaultManager removeItemAtPath:path error:&v10];
    v6 = v10;
    v7 = v6;
    if (v5)
    {
    }

    else
    {
      tsu_isNoSuchFileError = [v6 tsu_isNoSuchFileError];

      if ((tsu_isNoSuchFileError & 1) == 0 && TSUDefaultCat_init_token != -1)
      {
        [OITSUTemporaryDirectory dealloc];
      }
    }
  }

  v9.receiver = self;
  v9.super_class = OITSUTemporaryDirectory;
  [(OITSUTemporaryDirectory *)&v9 dealloc];
}

void __34__OITSUTemporaryDirectory_dealloc__block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

- (BOOL)_createDirectoryWithSignature:(id)signature subdirectory:(id)subdirectory error:(id *)error
{
  signatureCopy = signature;
  subdirectoryCopy = subdirectory;
  if (signatureCopy)
  {
    v10 = signatureCopy;
  }

  else
  {
    v10 = &stru_286EE1130;
  }

  if (_createDirectoryWithSignature_subdirectory_error__secretSubdirectoryNameBaseToken != -1)
  {
    [OITSUTemporaryDirectory _createDirectoryWithSignature:subdirectory:error:];
  }

  v11 = [_createDirectoryWithSignature_subdirectory_error__secretSubdirectoryNameBase stringByAppendingFormat:@"_%@_%d_%d", v10, CFAbsoluteTimeGetCurrent(), atomic_fetch_add(_createDirectoryWithSignature_subdirectory_error__secretSubdirectoryIndex, 1u) + 1];
  if ([v11 length] >= 0x100)
  {
    v12 = [v11 substringToIndex:255];

    v11 = v12;
  }

  v13 = getenv("CIRRUSEXPORTERTEMPDIR");
  if (v13)
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:v13];
  }

  else
  {
    NSTemporaryDirectory();
  }
  v14 = ;
  v15 = v14;
  if (subdirectoryCopy)
  {
    v16 = [v14 stringByAppendingPathComponent:subdirectoryCopy];

    v15 = v16;
  }

  v17 = [v15 stringByAppendingPathComponent:v11];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v24 = 0;
  v19 = [defaultManager createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:0 error:&v24];
  v20 = v24;

  objc_storeStrong(&self->_path, v17);
  if (error && (v19 & 1) == 0)
  {
    if (v20)
    {
      v21 = v20;
      *error = v20;
    }

    else
    {
      v22 = [MEMORY[0x277CCA9B8] tsu_fileWriteUnknownErrorWithUserInfo:0];
      *error = v22;
    }
  }

  return v19;
}

void __76__OITSUTemporaryDirectory__createDirectoryWithSignature_subdirectory_error___block_invoke()
{
  v0 = SFUBundle();
  v7 = [v0 bundleIdentifier];

  v1 = objc_alloc(MEMORY[0x277CCACA8]);
  if (v7)
  {
    v2 = v7;
  }

  else
  {
    v2 = @"com.apple.Unknown";
  }

  v3 = [v1 initWithFormat:@"%@_%d", v2, getpid()];
  v4 = _createDirectoryWithSignature_subdirectory_error__secretSubdirectoryNameBase;
  _createDirectoryWithSignature_subdirectory_error__secretSubdirectoryNameBase = v3;

  if (!_createDirectoryWithSignature_subdirectory_error__secretSubdirectoryNameBase)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUTemporaryDirectory _createDirectoryWithSignature:subdirectory:error:]_block_invoke"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUTemporaryDirectory.m"];
    [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:102 isFatal:0 description:"invalid nil value for '%{public}s'", "secretSubdirectoryNameBase"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }
}

@end