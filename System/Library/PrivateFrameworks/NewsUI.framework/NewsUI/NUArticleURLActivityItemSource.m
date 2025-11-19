@interface NUArticleURLActivityItemSource
- (NUArticleURLActivityItemSource)initWithHeadline:(id)a3 URLModifier:(id)a4;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)bodyStringForMailMessage;
@end

@implementation NUArticleURLActivityItemSource

- (NUArticleURLActivityItemSource)initWithHeadline:(id)a3 URLModifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = NUArticleURLActivityItemSource;
  v8 = [(NUArticleActivityItemSource *)&v22 initWithHeadline:v6];
  if (v8)
  {
    v9 = [v6 articleID];
    if (v9)
    {
      v10 = v9;
      v11 = [v6 sourceChannel];
      v12 = [v11 isPublic];

      if (v12)
      {
        v13 = MEMORY[0x277CBEBC0];
        v14 = MEMORY[0x277CCACA8];
        v15 = [v6 articleID];
        v16 = [v14 stringWithFormat:@"https://apple.news/%@", v15];
        v17 = [v13 URLWithString:v16];

        if (v7)
        {
          v18 = [v7 modifyURL:v17];

          v17 = v18;
        }

        goto LABEL_8;
      }
    }

    v19 = [v6 contentURL];

    if (v19)
    {
      v17 = [v6 contentURL];
LABEL_8:
      articleURL = v8->_articleURL;
      v8->_articleURL = v17;
    }
  }

  return v8;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v5 = a4;
  if (([v5 isEqualToString:*MEMORY[0x277D54708]] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"com.apple.news.activity.OpenInSafari") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"com.apple.news.activity.AddToSafariReadingList"))
  {
    v6 = [(NUArticleActivityItemSource *)self headline];
    v7 = [v6 contentURL];
  }

  else
  {
    if ([v5 isEqualToString:*MEMORY[0x277D54728]])
    {
      [(NUArticleURLActivityItemSource *)self bodyStringForMailMessage];
    }

    else
    {
      [(NUArticleURLActivityItemSource *)self articleURL];
    }
    v7 = ;
  }

  return v7;
}

- (id)bodyStringForMailMessage
{
  v3 = objc_alloc_init(NUHTMLBuilder);
  v4 = [(NUArticleActivityItemSource *)self headline];
  v5 = [v4 title];
  v6 = [(NUHTMLBuilder *)v3 appendStrong:v5];

  v7 = [(NUHTMLBuilder *)v3 appendBreak];
  v8 = [(NUArticleActivityItemSource *)self headline];
  v9 = [v8 sourceName];
  v10 = [(NUHTMLBuilder *)v3 appendText:v9];

  v11 = objc_alloc_init(NUHTMLBuilder);
  v12 = [(NUHTMLBuilder *)v11 appendBreak];
  v13 = [(NUHTMLBuilder *)v11 appendParagraph:v3];
  v14 = objc_alloc_init(NUHTMLBuilder);
  v15 = [(NUArticleActivityItemSource *)self headline];
  v16 = [v15 shortExcerpt];

  if (v16)
  {
    v17 = [(NUArticleActivityItemSource *)self headline];
    v18 = [v17 shortExcerpt];
    v19 = [(NUHTMLBuilder *)v14 appendText:v18];

    v20 = [(NUHTMLBuilder *)v14 appendText:@" "];
  }

  v21 = NUBundle();
  v22 = [v21 localizedStringForKey:@"Read the full story" value:&stru_286E03B58 table:0];
  v23 = [(NUArticleURLActivityItemSource *)self articleURL];
  v24 = [v23 absoluteString];
  v25 = [(NUHTMLBuilder *)v14 appendLink:v22 withURL:v24];

  v26 = [(NUHTMLBuilder *)v11 appendParagraph:v14];
  v27 = [(NUArticleActivityItemSource *)self headline];
  v28 = [v27 sourceChannel];
  LODWORD(v22) = [v28 isPublic];

  if (v22)
  {
    v29 = objc_alloc_init(NUHTMLBuilder);
    v30 = [MEMORY[0x277CBEBC0] nss_MarketingPageURL];
    v31 = [v30 absoluteString];

    v32 = [(NUHTMLBuilder *)v29 appendBreak];
    v33 = NUBundle();
    v34 = [v33 localizedStringForKey:@"Shared from" value:&stru_286E03B58 table:0];
    v35 = [(NUHTMLBuilder *)v29 appendText:v34];

    v36 = [(NUHTMLBuilder *)v29 appendText:@" "];
    v37 = NUBundle();
    v38 = [v37 localizedStringForKey:@"Apple News" value:&stru_286E03B58 table:0];
    v39 = [(NUHTMLBuilder *)v29 appendLink:v38 withURL:v31];

    v40 = [(NUHTMLBuilder *)v11 appendParagraph:v29];
  }

  v41 = [(NUHTMLBuilder *)v11 fullHTML];

  return v41;
}

@end