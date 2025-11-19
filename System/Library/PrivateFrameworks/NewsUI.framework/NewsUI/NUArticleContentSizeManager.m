@interface NUArticleContentSizeManager
- (NUArticleContentSizeManager)initWithTagSettings:(id)a3;
- (id)contentSizeCategoryForArticle:(id)a3;
- (id)contentSizeCategoryForSize:(int64_t)a3;
- (int64_t)contentScaleForArticle:(id)a3;
- (int64_t)textSizeForContentSizeCategory:(id)a3;
- (void)updateContentScale:(int64_t)a3 forArticle:(id)a4;
- (void)updateContentSizeCategory:(id)a3 forArticle:(id)a4;
@end

@implementation NUArticleContentSizeManager

- (NUArticleContentSizeManager)initWithTagSettings:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NUArticleContentSizeManager;
  v6 = [(NUArticleContentSizeManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tagSettings, a3);
  }

  return v7;
}

- (id)contentSizeCategoryForArticle:(id)a3
{
  v4 = a3;
  if ([v4 role] == 2)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 sourceChannel];
    if (v6)
    {
      v7 = [(NUArticleContentSizeManager *)self tagSettings];
      v8 = [v6 identifier];
      v9 = [v7 fontSizeForTagID:v8];

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

- (void)updateContentSizeCategory:(id)a3 forArticle:(id)a4
{
  v13 = a3;
  v6 = [a4 sourceChannel];
  if (v6)
  {
    v7 = [(NUArticleContentSizeManager *)self textSizeForContentSizeCategory:v13];
    v8 = [(NUArticleContentSizeManager *)self tagSettings];
    v9 = [v6 identifier];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
    [v8 setFontSizeForTagID:v9 fontSize:v10];

    v11 = [(NUArticleContentSizeManager *)self tagSettings];
    v12 = [v6 identifier];
    [v11 syncForTagID:v12];
  }
}

- (int64_t)contentScaleForArticle:(id)a3
{
  v4 = a3;
  if ([v4 role] == 2)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 sourceChannel];
    if (v6)
    {
      v7 = [(NUArticleContentSizeManager *)self tagSettings];
      v8 = [v6 identifier];
      v9 = [v7 contentScaleForTagID:v8];
      v5 = [v9 unsignedIntegerValue];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)updateContentScale:(int64_t)a3 forArticle:(id)a4
{
  v6 = [a4 sourceChannel];
  if (v6)
  {
    v12 = v6;
    v7 = [(NUArticleContentSizeManager *)self tagSettings];
    v8 = [v12 identifier];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [v7 setContentScaleForTagID:v8 contentScale:v9];

    v10 = [(NUArticleContentSizeManager *)self tagSettings];
    v11 = [v12 identifier];
    [v10 syncForTagID:v11];

    v6 = v12;
  }
}

- (id)contentSizeCategoryForSize:(int64_t)a3
{
  if ((a3 - 1) > 0xB)
  {
    v3 = MEMORY[0x277D76838];
  }

  else
  {
    v3 = qword_2799A46A0[a3 - 1];
  }

  return *v3;
}

- (int64_t)textSizeForContentSizeCategory:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277D76830]])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D76858]])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D76840]])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D76838]])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D76828]])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D76820]])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D76818]])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D76808]])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D76800]])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D767F8]])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D767F0]])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D767E8]])
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