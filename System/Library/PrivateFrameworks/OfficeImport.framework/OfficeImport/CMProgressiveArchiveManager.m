@interface CMProgressiveArchiveManager
- (CMProgressiveArchiveManager)initWithClient:(const void *)a3 andCallBacks:(id *)a4;
- (id)copyResourceWithName:(id)a3 type:(int)a4;
- (void)closeResourceAtPath:(id)a3;
- (void)commitDataAtPath:(id)a3;
- (void)pushCssToPath:(id)a3;
- (void)pushData:(id)a3 toPath:(id)a4;
- (void)pushText:(id)a3 toPath:(id)a4;
@end

@implementation CMProgressiveArchiveManager

- (CMProgressiveArchiveManager)initWithClient:(const void *)a3 andCallBacks:(id *)a4
{
  v11.receiver = self;
  v11.super_class = CMProgressiveArchiveManager;
  v6 = [(CMStylingArchiveManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->mClient = a3;
    v6->mCallBacks = a4;
    v8 = objc_opt_new();
    mDataCache = v7->mDataCache;
    v7->mDataCache = v8;

    v7->super.super.mCommitInterval = 2.0;
    v7->super.super.mAutoCommit = 1;
  }

  return v7;
}

- (id)copyResourceWithName:(id)a3 type:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [CMArchiveManager resourceTypeToMIME:v4];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v7, @"MimeType", @"UTF-8", @"TextEncoding", 0}];
  v9 = (self->mCallBacks->var1)(self->mClient, v6, v8);
  v10 = v9;
  if (v9)
  {
    v11 = [v9 absoluteString];
    CFRelease(v10);
    v10 = [v11 copy];
  }

  return v10;
}

- (void)pushData:(id)a3 toPath:(id)a4
{
  v17 = a3;
  v6 = a4;
  if (!self->mStartDate)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    mStartDate = self->mStartDate;
    self->mStartDate = v7;
  }

  v9 = @"##main##";
  if (v6)
  {
    v9 = v6;
  }

  v10 = v9;
  if (![(CMArchiveManager *)self progressiveMappingIsPausedOnPath:v10])
  {
    v11 = [(NSMutableDictionary *)self->mDataCache objectForKey:v10];
    if (!v11)
    {
      v11 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(v17, "length")}];
      [(NSMutableDictionary *)self->mDataCache setObject:v17 forKey:v10];
    }

    [v11 appendData:v17];
    if (!v6 && self->super.super.mAutoCommit)
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

- (void)pushText:(id)a3 toPath:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (![(CMArchiveManager *)self progressiveMappingIsPausedOnPath:v6])
  {
    if (!v6)
    {
      [(NSMutableString *)self->mHtmlLogString appendString:v8];
    }

    v7 = [v8 dataUsingEncoding:4];
    [(CMProgressiveArchiveManager *)self pushData:v7 toPath:v6];
  }
}

- (void)commitDataAtPath:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (!v4)
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

    v4 = @"##main##";
  }

  v9 = v4;
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

- (void)closeResourceAtPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:v4];
  }

  (self->mCallBacks->var2)(self->mClient, v4, 0, 1);
}

- (void)pushCssToPath:(id)a3
{
  v4 = [(CMStylingArchiveManager *)self commitStylesheet];
  if (v4)
  {
    [(CMProgressiveArchiveManager *)self pushText:v4 toPath:0];
  }
}

@end