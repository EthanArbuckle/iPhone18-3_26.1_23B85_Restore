@interface CMProgressiveArchiveManager
- (CMProgressiveArchiveManager)initWithClient:(const void *)client andCallBacks:(id *)backs;
- (id)copyResourceWithName:(id)name type:(int)type;
- (void)closeResourceAtPath:(id)path;
- (void)commitDataAtPath:(id)path;
- (void)pushCssToPath:(id)path;
- (void)pushData:(id)data toPath:(id)path;
- (void)pushText:(id)text toPath:(id)path;
@end

@implementation CMProgressiveArchiveManager

- (CMProgressiveArchiveManager)initWithClient:(const void *)client andCallBacks:(id *)backs
{
  v11.receiver = self;
  v11.super_class = CMProgressiveArchiveManager;
  v6 = [(CMStylingArchiveManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->mClient = client;
    v6->mCallBacks = backs;
    v8 = objc_opt_new();
    mDataCache = v7->mDataCache;
    v7->mDataCache = v8;

    v7->super.super.mCommitInterval = 2.0;
    v7->super.super.mAutoCommit = 1;
  }

  return v7;
}

- (id)copyResourceWithName:(id)name type:(int)type
{
  v4 = *&type;
  nameCopy = name;
  v7 = [CMArchiveManager resourceTypeToMIME:v4];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v7, @"MimeType", @"UTF-8", @"TextEncoding", 0}];
  v9 = (self->mCallBacks->var1)(self->mClient, nameCopy, v8);
  v10 = v9;
  if (v9)
  {
    absoluteString = [v9 absoluteString];
    CFRelease(v10);
    v10 = [absoluteString copy];
  }

  return v10;
}

- (void)pushData:(id)data toPath:(id)path
{
  dataCopy = data;
  pathCopy = path;
  if (!self->mStartDate)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    mStartDate = self->mStartDate;
    self->mStartDate = v7;
  }

  v9 = @"##main##";
  if (pathCopy)
  {
    v9 = pathCopy;
  }

  v10 = v9;
  if (![(CMArchiveManager *)self progressiveMappingIsPausedOnPath:v10])
  {
    v11 = [(NSMutableDictionary *)self->mDataCache objectForKey:v10];
    if (!v11)
    {
      v11 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(dataCopy, "length")}];
      [(NSMutableDictionary *)self->mDataCache setObject:dataCopy forKey:v10];
    }

    [v11 appendData:dataCopy];
    if (!pathCopy && self->super.super.mAutoCommit)
    {
      if (self->super.super.mCommitInterval == 0.0 || ([(NSDate *)self->mStartDate timeIntervalSinceNow], fabs(v12) < 2.0))
      {
        [(CMProgressiveArchiveManager *)self commitDataAtPath:0];
      }

      else
      {
        mLastCommitDate = self->mLastCommitDate;
        if (!mLastCommitDate || ([(NSDate *)mLastCommitDate timeIntervalSinceNow], fabs(v14) > self->super.super.mCommitInterval))
        {
          [(CMProgressiveArchiveManager *)self commitDataAtPath:0];
          v15 = objc_alloc_init(MEMORY[0x277CBEAA8]);
          v16 = self->mLastCommitDate;
          self->mLastCommitDate = v15;
        }
      }
    }
  }
}

- (void)pushText:(id)text toPath:(id)path
{
  textCopy = text;
  pathCopy = path;
  if (![(CMArchiveManager *)self progressiveMappingIsPausedOnPath:pathCopy])
  {
    if (!pathCopy)
    {
      [(NSMutableString *)self->mHtmlLogString appendString:textCopy];
    }

    v7 = [textCopy dataUsingEncoding:4];
    [(CMProgressiveArchiveManager *)self pushData:v7 toPath:pathCopy];
  }
}

- (void)commitDataAtPath:(id)path
{
  pathCopy = path;
  v12 = pathCopy;
  if (!pathCopy)
  {
    if (!self->mMainDataInited)
    {
      v5 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"text/html", @"MimeType", @"UTF-8", @"TextEncoding", 0}];
      if (self->super.super.mWidth)
      {
        v6 = [MEMORY[0x277CCABB0] numberWithInt:?];
        [v5 setObject:v6 forKey:HTMLWidth];
      }

      if (self->super.super.mHeight)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithInt:?];
        [v5 setObject:v7 forKey:HTMLHeight];
      }

      if (self->super.super.mPageCount)
      {
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
        [v5 setObject:v8 forKey:HTMLPageCount];
      }

      (self->mCallBacks->var0)(self->mClient, @"public.html", v5);
      self->mMainDataInited = 1;
    }

    pathCopy = @"##main##";
  }

  v9 = pathCopy;
  v10 = [(NSMutableDictionary *)self->mDataCache objectForKey:v9];
  if (v10)
  {
    if (v12)
    {
      v11 = [MEMORY[0x277CBEBC0] URLWithString:?];
    }

    else
    {
      v11 = 0;
    }

    (self->mCallBacks->var2)(self->mClient, v11, v10, 0);
    [(NSMutableDictionary *)self->mDataCache removeObjectForKey:v9];
  }
}

- (void)closeResourceAtPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  if (pathCopy)
  {
    pathCopy = [MEMORY[0x277CBEBC0] URLWithString:pathCopy];
  }

  (self->mCallBacks->var2)(self->mClient, pathCopy, 0, 1);
}

- (void)pushCssToPath:(id)path
{
  commitStylesheet = [(CMStylingArchiveManager *)self commitStylesheet];
  if (commitStylesheet)
  {
    [(CMProgressiveArchiveManager *)self pushText:commitStylesheet toPath:0];
  }
}

@end