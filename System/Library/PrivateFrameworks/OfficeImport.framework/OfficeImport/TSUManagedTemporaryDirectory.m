@interface TSUManagedTemporaryDirectory
- (TSUManagedTemporaryDirectory)init;
- (TSUManagedTemporaryDirectory)initWithURL:(id)a3;
- (void)dealloc;
@end

@implementation TSUManagedTemporaryDirectory

- (TSUManagedTemporaryDirectory)initWithURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = TSUManagedTemporaryDirectory;
    v5 = [(TSUManagedTemporaryDirectory *)&v10 init];
    if (v5)
    {
      v6 = [v4 copy];
      URL = v5->_URL;
      v5->_URL = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (TSUManagedTemporaryDirectory)init
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUManagedTemporaryDirectory init]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUTemporaryDirectoryManager.m"];
  [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:30 isFatal:0 description:"Do not call method"];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUManagedTemporaryDirectory init]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)dealloc
{
  if (TSUManagedTemporaryLogCat_init_token != -1)
  {
    [TSUManagedTemporaryDirectory dealloc];
  }

  if ([(NSURL *)self->_URL checkResourceIsReachableAndReturnError:0])
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    URL = self->_URL;
    v7 = 0;
    v5 = [v3 removeItemAtURL:URL error:&v7];

    if ((v5 & 1) == 0 && TSUDefaultCat_init_token != -1)
    {
      [TSUManagedTemporaryDirectory dealloc];
    }
  }

  v6.receiver = self;
  v6.super_class = TSUManagedTemporaryDirectory;
  [(TSUManagedTemporaryDirectory *)&v6 dealloc];
}

void __39__TSUManagedTemporaryDirectory_dealloc__block_invoke()
{
  v0 = TSULogCreateCategory("TSUManagedTemporaryLogCat");
  v1 = TSUManagedTemporaryLogCat_log_t;
  TSUManagedTemporaryLogCat_log_t = v0;
}

void __39__TSUManagedTemporaryDirectory_dealloc__block_invoke_2()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

@end