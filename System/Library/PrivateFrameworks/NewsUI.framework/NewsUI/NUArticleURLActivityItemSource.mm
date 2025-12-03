@interface NUArticleURLActivityItemSource
- (NUArticleURLActivityItemSource)initWithHeadline:(id)headline URLModifier:(id)modifier;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)bodyStringForMailMessage;
@end

@implementation NUArticleURLActivityItemSource

- (NUArticleURLActivityItemSource)initWithHeadline:(id)headline URLModifier:(id)modifier
{
  headlineCopy = headline;
  modifierCopy = modifier;
  v22.receiver = self;
  v22.super_class = NUArticleURLActivityItemSource;
  v8 = [(NUArticleActivityItemSource *)&v22 initWithHeadline:headlineCopy];
  if (v8)
  {
    articleID = [headlineCopy articleID];
    if (articleID)
    {
      v10 = articleID;
      sourceChannel = [headlineCopy sourceChannel];
      isPublic = [sourceChannel isPublic];

      if (isPublic)
      {
        v13 = MEMORY[0x277CBEBC0];
        v14 = MEMORY[0x277CCACA8];
        articleID2 = [headlineCopy articleID];
        v16 = [v14 stringWithFormat:@"https://apple.news/%@", articleID2];
        contentURL2 = [v13 URLWithString:v16];

        if (modifierCopy)
        {
          v18 = [modifierCopy modifyURL:contentURL2];

          contentURL2 = v18;
        }

        goto LABEL_8;
      }
    }

    contentURL = [headlineCopy contentURL];

    if (contentURL)
    {
      contentURL2 = [headlineCopy contentURL];
LABEL_8:
      articleURL = v8->_articleURL;
      v8->_articleURL = contentURL2;
    }
  }

  return v8;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  typeCopy = type;
  if (([typeCopy isEqualToString:*MEMORY[0x277D54708]] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"com.apple.news.activity.OpenInSafari") & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", @"com.apple.news.activity.AddToSafariReadingList"))
  {
    headline = [(NUArticleActivityItemSource *)self headline];
    contentURL = [headline contentURL];
  }

  else
  {
    if ([typeCopy isEqualToString:*MEMORY[0x277D54728]])
    {
      [(NUArticleURLActivityItemSource *)self bodyStringForMailMessage];
    }

    else
    {
      [(NUArticleURLActivityItemSource *)self articleURL];
    }
    contentURL = ;
  }

  return contentURL;
}

- (id)bodyStringForMailMessage
{
  v3 = objc_alloc_init(NUHTMLBuilder);
  headline = [(NUArticleActivityItemSource *)self headline];
  title = [headline title];
  v6 = [(NUHTMLBuilder *)v3 appendStrong:title];

  appendBreak = [(NUHTMLBuilder *)v3 appendBreak];
  headline2 = [(NUArticleActivityItemSource *)self headline];
  sourceName = [headline2 sourceName];
  v10 = [(NUHTMLBuilder *)v3 appendText:sourceName];

  v11 = objc_alloc_init(NUHTMLBuilder);
  appendBreak2 = [(NUHTMLBuilder *)v11 appendBreak];
  v13 = [(NUHTMLBuilder *)v11 appendParagraph:v3];
  v14 = objc_alloc_init(NUHTMLBuilder);
  headline3 = [(NUArticleActivityItemSource *)self headline];
  shortExcerpt = [headline3 shortExcerpt];

  if (shortExcerpt)
  {
    headline4 = [(NUArticleActivityItemSource *)self headline];
    shortExcerpt2 = [headline4 shortExcerpt];
    v19 = [(NUHTMLBuilder *)v14 appendText:shortExcerpt2];

    v20 = [(NUHTMLBuilder *)v14 appendText:@" "];
  }

  v21 = NUBundle();
  v22 = [v21 localizedStringForKey:@"Read the full story" value:&stru_286E03B58 table:0];
  articleURL = [(NUArticleURLActivityItemSource *)self articleURL];
  absoluteString = [articleURL absoluteString];
  v25 = [(NUHTMLBuilder *)v14 appendLink:v22 withURL:absoluteString];

  v26 = [(NUHTMLBuilder *)v11 appendParagraph:v14];
  headline5 = [(NUArticleActivityItemSource *)self headline];
  sourceChannel = [headline5 sourceChannel];
  LODWORD(v22) = [sourceChannel isPublic];

  if (v22)
  {
    v29 = objc_alloc_init(NUHTMLBuilder);
    nss_MarketingPageURL = [MEMORY[0x277CBEBC0] nss_MarketingPageURL];
    absoluteString2 = [nss_MarketingPageURL absoluteString];

    appendBreak3 = [(NUHTMLBuilder *)v29 appendBreak];
    v33 = NUBundle();
    v34 = [v33 localizedStringForKey:@"Shared from" value:&stru_286E03B58 table:0];
    v35 = [(NUHTMLBuilder *)v29 appendText:v34];

    v36 = [(NUHTMLBuilder *)v29 appendText:@" "];
    v37 = NUBundle();
    v38 = [v37 localizedStringForKey:@"Apple News" value:&stru_286E03B58 table:0];
    v39 = [(NUHTMLBuilder *)v29 appendLink:v38 withURL:absoluteString2];

    v40 = [(NUHTMLBuilder *)v11 appendParagraph:v29];
  }

  fullHTML = [(NUHTMLBuilder *)v11 fullHTML];

  return fullHTML;
}

@end