@interface NUArticleTextActivityItemSource
- (NUArticleTextActivityItemSource)initWithHeadline:(id)headline;
- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
@end

@implementation NUArticleTextActivityItemSource

- (NUArticleTextActivityItemSource)initWithHeadline:(id)headline
{
  headlineCopy = headline;
  v18.receiver = self;
  v18.super_class = NUArticleTextActivityItemSource;
  v5 = [(NUArticleActivityItemSource *)&v18 initWithHeadline:headlineCopy];
  if (v5)
  {
    title = [headlineCopy title];
    if (title && (v7 = title, [headlineCopy sourceName], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
    {
      v9 = MEMORY[0x277CCACA8];
      title2 = [headlineCopy title];
      sourceName = [headlineCopy sourceName];
      v12 = [v9 stringWithFormat:@"%@ - %@", title2, sourceName];
      itemTitle = v5->_itemTitle;
      v5->_itemTitle = v12;
    }

    else
    {
      title3 = [headlineCopy title];

      if (title3)
      {
        title4 = [headlineCopy title];
      }

      else
      {
        sourceName2 = [headlineCopy sourceName];

        if (!sourceName2)
        {
          title2 = v5->_itemTitle;
          v5->_itemTitle = &stru_286E03B58;
          goto LABEL_10;
        }

        title4 = [headlineCopy sourceName];
      }

      title2 = v5->_itemTitle;
      v5->_itemTitle = title4;
    }

LABEL_10:
  }

  return v5;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:*MEMORY[0x277D54738]] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277D54720]))
  {
    itemTitle3 = 0;
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x277D54748]] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277D54728]))
  {
    itemTitle3 = &stru_286E03B58;
  }

  else if ([typeCopy isEqualToString:@"com.apple.mobilenotes.SharingExtension"])
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    itemTitle = [(NUArticleTextActivityItemSource *)self itemTitle];

    if (itemTitle)
    {
      itemTitle2 = [(NUArticleTextActivityItemSource *)self itemTitle];
      [v8 setObject:itemTitle2 forKeyedSubscript:@"article-title"];
    }

    headline = [(NUArticleActivityItemSource *)self headline];
    shortExcerpt = [headline shortExcerpt];

    if (shortExcerpt)
    {
      headline2 = [(NUArticleActivityItemSource *)self headline];
      shortExcerpt2 = [headline2 shortExcerpt];
      [v8 setObject:shortExcerpt2 forKeyedSubscript:@"article-summary"];
    }

    itemTitle3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];
  }

  else
  {
    itemTitle3 = [(NUArticleTextActivityItemSource *)self itemTitle];
  }

  return itemTitle3;
}

- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type
{
  if ([type isEqualToString:@"com.apple.mobilenotes.SharingExtension"])
  {
    return @"com.apple.news.notes-metadata";
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NUArticleTextActivityItemSource activityViewController:dataTypeIdentifierForActivityType:];
  }

  return &stru_286E03B58;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  typeCopy = type;
  itemTitle = [(NUArticleTextActivityItemSource *)self itemTitle];
  v7 = [typeCopy isEqualToString:*MEMORY[0x277D54728]];

  if (v7)
  {
    headline = [(NUArticleActivityItemSource *)self headline];
    title = [headline title];
    if (title)
    {
      v10 = title;
      headline2 = [(NUArticleActivityItemSource *)self headline];
      sourceName = [headline2 sourceName];

      if (!sourceName)
      {
        goto LABEL_6;
      }

      v13 = MEMORY[0x277CCACA8];
      headline = [(NUArticleActivityItemSource *)self headline];
      sourceName2 = [headline sourceName];
      headline3 = [(NUArticleActivityItemSource *)self headline];
      title2 = [headline3 title];
      v17 = [v13 stringWithFormat:@"%@: %@", sourceName2, title2];

      itemTitle = v17;
    }
  }

LABEL_6:

  return itemTitle;
}

- (void)activityViewController:dataTypeIdentifierForActivityType:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"case not implemented"];
  v2 = 136315906;
  v3 = "[NUArticleTextActivityItemSource activityViewController:dataTypeIdentifierForActivityType:]";
  v4 = 2080;
  v5 = "NUArticleTextActivityItemSource.m";
  v6 = 1024;
  v7 = 86;
  v8 = 2114;
  v9 = v0;
  _os_log_error_impl(&dword_25C2D6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v2, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end