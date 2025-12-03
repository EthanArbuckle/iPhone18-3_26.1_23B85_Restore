@interface NUArticleContentSizeManager
- (NUArticleContentSizeManager)initWithTagSettings:(id)settings;
- (id)contentSizeCategoryForArticle:(id)article;
- (id)contentSizeCategoryForSize:(int64_t)size;
- (int64_t)contentScaleForArticle:(id)article;
- (int64_t)textSizeForContentSizeCategory:(id)category;
- (void)updateContentScale:(int64_t)scale forArticle:(id)article;
- (void)updateContentSizeCategory:(id)category forArticle:(id)article;
@end

@implementation NUArticleContentSizeManager

- (NUArticleContentSizeManager)initWithTagSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = NUArticleContentSizeManager;
  v6 = [(NUArticleContentSizeManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tagSettings, settings);
  }

  return v7;
}

- (id)contentSizeCategoryForArticle:(id)article
{
  articleCopy = article;
  if ([articleCopy role] == 2)
  {
    v5 = 0;
  }

  else
  {
    sourceChannel = [articleCopy sourceChannel];
    if (sourceChannel)
    {
      tagSettings = [(NUArticleContentSizeManager *)self tagSettings];
      identifier = [sourceChannel identifier];
      v9 = [tagSettings fontSizeForTagID:identifier];

      if (v9)
      {
        v5 = -[NUArticleContentSizeManager contentSizeCategoryForSize:](self, "contentSizeCategoryForSize:", [v9 integerValue]);
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)updateContentSizeCategory:(id)category forArticle:(id)article
{
  categoryCopy = category;
  sourceChannel = [article sourceChannel];
  if (sourceChannel)
  {
    v7 = [(NUArticleContentSizeManager *)self textSizeForContentSizeCategory:categoryCopy];
    tagSettings = [(NUArticleContentSizeManager *)self tagSettings];
    identifier = [sourceChannel identifier];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
    [tagSettings setFontSizeForTagID:identifier fontSize:v10];

    tagSettings2 = [(NUArticleContentSizeManager *)self tagSettings];
    identifier2 = [sourceChannel identifier];
    [tagSettings2 syncForTagID:identifier2];
  }
}

- (int64_t)contentScaleForArticle:(id)article
{
  articleCopy = article;
  if ([articleCopy role] == 2)
  {
    unsignedIntegerValue = 0;
  }

  else
  {
    sourceChannel = [articleCopy sourceChannel];
    if (sourceChannel)
    {
      tagSettings = [(NUArticleContentSizeManager *)self tagSettings];
      identifier = [sourceChannel identifier];
      v9 = [tagSettings contentScaleForTagID:identifier];
      unsignedIntegerValue = [v9 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }
  }

  return unsignedIntegerValue;
}

- (void)updateContentScale:(int64_t)scale forArticle:(id)article
{
  sourceChannel = [article sourceChannel];
  if (sourceChannel)
  {
    v12 = sourceChannel;
    tagSettings = [(NUArticleContentSizeManager *)self tagSettings];
    identifier = [v12 identifier];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:scale];
    [tagSettings setContentScaleForTagID:identifier contentScale:v9];

    tagSettings2 = [(NUArticleContentSizeManager *)self tagSettings];
    identifier2 = [v12 identifier];
    [tagSettings2 syncForTagID:identifier2];

    sourceChannel = v12;
  }
}

- (id)contentSizeCategoryForSize:(int64_t)size
{
  if ((size - 1) > 0xB)
  {
    v3 = MEMORY[0x277D76838];
  }

  else
  {
    v3 = qword_2799A46A0[size - 1];
  }

  return *v3;
}

- (int64_t)textSizeForContentSizeCategory:(id)category
{
  categoryCopy = category;
  if ([categoryCopy isEqualToString:*MEMORY[0x277D76830]])
  {
    v4 = 1;
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x277D76858]])
  {
    v4 = 2;
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x277D76840]])
  {
    v4 = 3;
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x277D76838]])
  {
    v4 = 4;
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x277D76828]])
  {
    v4 = 5;
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x277D76820]])
  {
    v4 = 6;
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x277D76818]])
  {
    v4 = 7;
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x277D76808]])
  {
    v4 = 8;
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x277D76800]])
  {
    v4 = 9;
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x277D767F8]])
  {
    v4 = 10;
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x277D767F0]])
  {
    v4 = 11;
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x277D767E8]])
  {
    v4 = 12;
  }

  else
  {
    v4 = 4;
  }

  return v4;
}

@end