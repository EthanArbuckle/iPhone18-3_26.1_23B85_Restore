@interface OCMapper
+ (id)mapperForCurrentThread;
- (OCMapper)init;
- (id)temporaryDirectoryPath;
- (void)setup;
- (void)teardown;
@end

@implementation OCMapper

- (OCMapper)init
{
  v6.receiver = self;
  v6.super_class = OCMapper;
  v2 = [(OCMapper *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(OCCancel);
    mCancel = v2->mCancel;
    v2->mCancel = v3;
  }

  return v2;
}

- (void)setup
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v4 = [threadDictionary objectForKey:@"kOCMapper"];

  if (v4)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OCMapper setup]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeCommon/ImportExport/OCMapper.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v8 file:v5 lineNumber:53 isFatal:0 description:"More than one exporter document controller in one thread"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  currentThread2 = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary2 = [currentThread2 threadDictionary];
  [threadDictionary2 setObject:self forKey:@"kOCMapper"];
}

- (void)teardown
{
  +[TCBundleResourceManager disposeInstance];
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v5 = [threadDictionary objectForKey:@"kOCMapper"];

  if (v5 != self)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OCMapper teardown]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeCommon/ImportExport/OCMapper.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:63 isFatal:0 description:"More than one exporter document controller in one thread"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  currentThread2 = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary2 = [currentThread2 threadDictionary];
  [threadDictionary2 removeObjectForKey:@"kOCMapper"];

  mTemporaryDirectoryObject = self->mTemporaryDirectoryObject;
  self->mTemporaryDirectoryObject = 0;
}

+ (id)mapperForCurrentThread
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v4 = [threadDictionary objectForKey:@"kOCMapper"];

  return v4;
}

- (id)temporaryDirectoryPath
{
  mTemporaryDirectoryObject = self->mTemporaryDirectoryObject;
  if (!mTemporaryDirectoryObject)
  {
    v4 = [[OITSUTemporaryDirectory alloc] initWithError:0];
    v5 = self->mTemporaryDirectoryObject;
    self->mTemporaryDirectoryObject = v4;

    mTemporaryDirectoryObject = self->mTemporaryDirectoryObject;
  }

  return [(OITSUTemporaryDirectory *)mTemporaryDirectoryObject path];
}

@end