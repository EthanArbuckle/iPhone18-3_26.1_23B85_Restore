@interface NUArticleTextActivityItemSource
- (NUArticleTextActivityItemSource)initWithHeadline:(id)a3;
- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4;
@end

@implementation NUArticleTextActivityItemSource

- (NUArticleTextActivityItemSource)initWithHeadline:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = NUArticleTextActivityItemSource;
  v5 = [(NUArticleActivityItemSource *)&v18 initWithHeadline:v4];
  if (v5)
  {
    v6 = [v4 title];
    if (v6 && (v7 = v6, [v4 sourceName], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [v4 title];
      v11 = [v4 sourceName];
      v12 = [v9 stringWithFormat:@"%@ - %@", v10, v11];
      itemTitle = v5->_itemTitle;
      v5->_itemTitle = v12;
    }

    else
    {
      v14 = [v4 title];

      if (v14)
      {
        v15 = [v4 title];
      }

      else
      {
        v16 = [v4 sourceName];

        if (!v16)
        {
          v10 = v5->_itemTitle;
          v5->_itemTitle = &stru_286E03B58;
          goto LABEL_10;
        }

        v15 = [v4 sourceName];
      }

      v10 = v5->_itemTitle;
      v5->_itemTitle = v15;
    }

LABEL_10:
  }

  return v5;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v5 = a4;
  if ([v5 isEqualToString:*MEMORY[0x277D54738]] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277D54720]))
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:*MEMORY[0x277D54748]] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277D54728]))
  {
    v6 = &stru_286E03B58;
  }

  else if ([v5 isEqualToString:@"com.apple.mobilenotes.SharingExtension"])
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    v9 = [(NUArticleTextActivityItemSource *)self itemTitle];

    if (v9)
    {
      v10 = [(NUArticleTextActivityItemSource *)self itemTitle];
      [v8 setObject:v10 forKeyedSubscript:@"article-title"];
    }

    v11 = [(NUArticleActivityItemSource *)self headline];
    v12 = [v11 shortExcerpt];

    if (v12)
    {
      v13 = [(NUArticleActivityItemSource *)self headline];
      v14 = [v13 shortExcerpt];
      [v8 setObject:v14 forKeyedSubscript:@"article-summary"];
    }

    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];
  }

  else
  {
    v6 = [(NUArticleTextActivityItemSource *)self itemTitle];
  }

  return v6;
}

- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4
{
  if ([a4 isEqualToString:@"com.apple.mobilenotes.SharingExtension"])
  {
    return @"com.apple.news.notes-metadata";
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NUArticleTextActivityItemSource activityViewController:dataTypeIdentifierForActivityType:];
  }

  return &stru_286E03B58;
}

- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4
{
  v5 = a4;
  v6 = [(NUArticleTextActivityItemSource *)self itemTitle];
  v7 = [v5 isEqualToString:*MEMORY[0x277D54728]];

  if (v7)
  {
    v8 = [(NUArticleActivityItemSource *)self headline];
    v9 = [v8 title];
    if (v9)
    {
      v10 = v9;
      v11 = [(NUArticleActivityItemSource *)self headline];
      v12 = [v11 sourceName];

      if (!v12)
      {
        goto LABEL_6;
      }

      v13 = MEMORY[0x277CCACA8];
      v8 = [(NUArticleActivityItemSource *)self headline];
      v14 = [v8 sourceName];
      v15 = [(NUArticleActivityItemSource *)self headline];
      v16 = [v15 title];
      v17 = [v13 stringWithFormat:@"%@: %@", v14, v16];

      v6 = v17;
    }
  }

LABEL_6:

  return v6;
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