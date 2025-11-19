@interface CMDictArchiveManager
- (CMDictArchiveManager)initWithName:(id)a3 resourcePathPrefix:(id)a4;
- (id)copyDictionaryWithSizeInfos:(BOOL)a3;
- (id)copyResourceWithName:(id)a3 type:(int)a4;
- (void)pushCssToPath:(id)a3;
- (void)pushData:(id)a3 toPath:(id)a4;
- (void)pushText:(id)a3 toPath:(id)a4;
@end

@implementation CMDictArchiveManager

- (CMDictArchiveManager)initWithName:(id)a3 resourcePathPrefix:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CMDictArchiveManager;
  v9 = [(CMStylingArchiveManager *)&v15 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCAB68]);
    mMainHtml = v9->mMainHtml;
    v9->mMainHtml = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mResources = v9->mResources;
    v9->mResources = v12;

    objc_storeStrong(&v9->mPrefix, a4);
    objc_storeStrong(&v9->mResourceUrlProtocol, a4);
    objc_storeStrong(&v9->mName, a3);
    v9->mIsFrameset = 0;
    v9->super.super.mIsThumbnail = 0;
  }

  return v9;
}

- (id)copyResourceWithName:(id)a3 type:(int)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(NSMutableDictionary *)self->mResources setObject:v6 forKey:v5];
  v7 = 2;
  if (self->mIsFrameset)
  {
    v7 = 3;
  }

  v8 = [*(&self->super.super.super.isa + OBJC_IVAR___CMDictArchiveManager_mMainHtml[v7]) stringByAppendingString:v5];

  return v8;
}

- (void)pushData:(id)a3 toPath:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (![(CMArchiveManager *)self progressiveMappingIsPausedOnPath:v6])
  {
    v7 = v6;
    v8 = 2;
    if (self->mIsFrameset)
    {
      v8 = 3;
    }

    v9 = *(&self->super.super.super.isa + OBJC_IVAR___CMDictArchiveManager_mMainHtml[v8]);
    if ([v7 hasPrefix:v9])
    {
      v10 = [v7 substringFromIndex:{objc_msgSend(v9, "length")}];

      v7 = v10;
    }

    v11 = [(NSMutableDictionary *)self->mResources objectForKey:v7];
    [v11 appendData:v12];
  }
}

- (void)pushText:(id)a3 toPath:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (![(CMArchiveManager *)self progressiveMappingIsPausedOnPath:v6])
  {
    if (v6)
    {
      v7 = [v8 dataUsingEncoding:4];
      [(CMDictArchiveManager *)self pushData:v7 toPath:v6];
    }

    else
    {
      [(NSMutableString *)self->mMainHtml appendString:v8];
    }
  }
}

- (id)copyDictionaryWithSizeInfos:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEAC0]);
  mMainHtml = self->mMainHtml;
  mResources = self->mResources;
  v8 = HTMLMainContent;
  v9 = HTMLResources;
  if (v3)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInt:self->super.super.mHeight];
    v16 = HTMLHeight;
    v11 = [MEMORY[0x277CCABB0] numberWithInt:self->super.super.mWidth];
    v12 = HTMLWidth;
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:self->super.super.mPageCount];
    v14 = [v5 initWithObjectsAndKeys:{mMainHtml, v8, mResources, v9, v10, v16, v11, v12, v13, HTMLPageCount, 0}];
  }

  else
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->super.super.mPageCount];
    v14 = [v5 initWithObjectsAndKeys:{mMainHtml, v8, mResources, v9, v10, HTMLPageCount, 0}];
  }

  return v14;
}

- (void)pushCssToPath:(id)a3
{
  v5 = a3;
  if (![(CMArchiveManager *)self progressiveMappingIsPausedOnPath:?])
  {
    v4 = [(CMStylingArchiveManager *)self commitStylesheet];
    if (v4)
    {
      [(CMDictArchiveManager *)self pushText:v4 toPath:v5];
    }
  }
}

@end