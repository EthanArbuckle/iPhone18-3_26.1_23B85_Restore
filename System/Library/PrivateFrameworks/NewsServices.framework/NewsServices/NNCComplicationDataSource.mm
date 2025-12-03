@interface NNCComplicationDataSource
+ (id)_oneLineHeadlineTextProviderForResult:(id)result;
+ (id)fullColorImageProviderWithName:(id)name;
@end

@implementation NNCComplicationDataSource

+ (id)_oneLineHeadlineTextProviderForResult:(id)result
{
  if (result)
  {
    headlineTitle = [result headlineTitle];
    v5 = headlineTitle;
    if (headlineTitle)
    {
      _noNewStoriesShortString = headlineTitle;
    }

    else
    {
      _noNewStoriesShortString = [self _noNewStoriesShortString];
    }

    _loadingStoriesShortString = _noNewStoriesShortString;

    v9 = MEMORY[0x277CBBB90];
  }

  else
  {
    v7 = MEMORY[0x277CBBB90];
    _loadingStoriesShortString = [self _loadingStoriesShortString];
    v9 = v7;
  }

  v10 = [v9 textProviderWithText:_loadingStoriesShortString];

  return v10;
}

+ (id)fullColorImageProviderWithName:(id)name
{
  nameCopy = name;
  v5 = objc_autoreleasePoolPush();
  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"complication-%@", nameCopy];
  v7 = MEMORY[0x277D755B8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v7 imageNamed:nameCopy inBundle:v8 compatibleWithTraitCollection:0];

  if (v9)
  {
    preferredFormat = [MEMORY[0x277D75568] preferredFormat];
    [v9 scale];
    [preferredFormat setScale:?];
    [preferredFormat setPreferredRange:2];
    [v9 size];
    v12 = v11;
    v14 = v13;
    v15 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:preferredFormat format:{v11, v13}];
    newsTintColor = [self newsTintColor];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __60__NNCComplicationDataSource_fullColorImageProviderWithName___block_invoke;
    v21[3] = &unk_2799800B0;
    v22 = newsTintColor;
    v24 = v12;
    v25 = v14;
    v23 = v9;
    v17 = newsTintColor;
    v18 = [v15 imageWithActions:v21];
    v19 = [MEMORY[0x277CBBB18] providerWithFullColorImage:v18 monochromeFilterType:1];
  }

  else
  {
    v19 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v19;
}

uint64_t __60__NNCComplicationDataSource_fullColorImageProviderWithName___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFill];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v7.origin.x = 0.0;
  v7.origin.y = 0.0;
  v7.size.width = v2;
  v7.size.height = v3;
  UIRectFill(v7);
  v4 = *(a1 + 40);

  return [v4 drawInRect:22 blendMode:0.0 alpha:{0.0, v2, v3, 1.0}];
}

+ (void)_templateForFamily:(uint64_t)a1 newsStoryResult:compact:.cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "+[NNCComplicationDataSource _templateForFamily:newsStoryResult:compact:]";
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&dword_25BF04000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s Unsupported family: %ld", &v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)_templateForFamily:newsStoryResult:compact:.cold.2()
{
  dlerror();
  abort_report_np();
  NSSNewsWidgetMessageForStaticNewsHeadlineTitle();
}

@end