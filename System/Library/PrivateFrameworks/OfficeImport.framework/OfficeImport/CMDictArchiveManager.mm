@interface CMDictArchiveManager
- (CMDictArchiveManager)initWithName:(id)name resourcePathPrefix:(id)prefix;
- (id)copyDictionaryWithSizeInfos:(BOOL)infos;
- (id)copyResourceWithName:(id)name type:(int)type;
- (void)pushCssToPath:(id)path;
- (void)pushData:(id)data toPath:(id)path;
- (void)pushText:(id)text toPath:(id)path;
@end

@implementation CMDictArchiveManager

- (CMDictArchiveManager)initWithName:(id)name resourcePathPrefix:(id)prefix
{
  nameCopy = name;
  prefixCopy = prefix;
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

    objc_storeStrong(&v9->mPrefix, prefix);
    objc_storeStrong(&v9->mResourceUrlProtocol, prefix);
    objc_storeStrong(&v9->mName, name);
    v9->mIsFrameset = 0;
    v9->super.super.mIsThumbnail = 0;
  }

  return v9;
}

- (id)copyResourceWithName:(id)name type:(int)type
{
  nameCopy = name;
  v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(NSMutableDictionary *)self->mResources setObject:v6 forKey:nameCopy];
  v7 = 2;
  if (self->mIsFrameset)
  {
    v7 = 3;
  }

  v8 = [*(&self->super.super.super.isa + OBJC_IVAR___CMDictArchiveManager_mMainHtml[v7]) stringByAppendingString:nameCopy];

  return v8;
}

- (void)pushData:(id)data toPath:(id)path
{
  dataCopy = data;
  pathCopy = path;
  if (![(CMArchiveManager *)self progressiveMappingIsPausedOnPath:pathCopy])
  {
    v7 = pathCopy;
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
    [v11 appendData:dataCopy];
  }
}

- (void)pushText:(id)text toPath:(id)path
{
  textCopy = text;
  pathCopy = path;
  if (![(CMArchiveManager *)self progressiveMappingIsPausedOnPath:pathCopy])
  {
    if (pathCopy)
    {
      v7 = [textCopy dataUsingEncoding:4];
      [(CMDictArchiveManager *)self pushData:v7 toPath:pathCopy];
    }

    else
    {
      [(NSMutableString *)self->mMainHtml appendString:textCopy];
    }
  }
}

- (id)copyDictionaryWithSizeInfos:(BOOL)infos
{
  infosCopy = infos;
  v5 = objc_alloc(MEMORY[0x277CBEAC0]);
  mMainHtml = self->mMainHtml;
  mResources = self->mResources;
  v8 = HTMLMainContent;
  v9 = HTMLResources;
  if (infosCopy)
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

- (void)pushCssToPath:(id)path
{
  pathCopy = path;
  if (![(CMArchiveManager *)self progressiveMappingIsPausedOnPath:?])
  {
    commitStylesheet = [(CMStylingArchiveManager *)self commitStylesheet];
    if (commitStylesheet)
    {
      [(CMDictArchiveManager *)self pushText:commitStylesheet toPath:pathCopy];
    }
  }
}

@end