@interface NSURL(NSSAdditions)
+ (id)nss_MarketingPageURL;
+ (id)nss_NewsURLForArticleID:()NSSAdditions title:;
+ (id)nss_NewsURLForFavoritesPicker;
+ (id)nss_NewsURLForFood;
+ (id)nss_NewsURLForForYou;
+ (id)nss_NewsURLForFullArchivePuzzleTypeID:()NSSAdditions;
+ (id)nss_NewsURLForHistory;
+ (id)nss_NewsURLForIssueID:()NSSAdditions;
+ (id)nss_NewsURLForMagazines;
+ (id)nss_NewsURLForManageNotifications;
+ (id)nss_NewsURLForMyMagazines;
+ (id)nss_NewsURLForMySports;
+ (id)nss_NewsURLForMySportsHighlights;
+ (id)nss_NewsURLForMySportsScores;
+ (id)nss_NewsURLForPuzzle;
+ (id)nss_NewsURLForPuzzleHub;
+ (id)nss_NewsURLForPuzzleID:()NSSAdditions;
+ (id)nss_NewsURLForPuzzleTypeID:()NSSAdditions;
+ (id)nss_NewsURLForRecipeBox;
+ (id)nss_NewsURLForRecipeCatalog;
+ (id)nss_NewsURLForRecipeCatalog:()NSSAdditions;
+ (id)nss_NewsURLForRecipeID:()NSSAdditions articleID:;
+ (id)nss_NewsURLForSaved;
+ (id)nss_NewsURLForTagID:()NSSAdditions feedConfiguration:;
+ (id)nss_NewsURLForWebLinkURL:()NSSAdditions;
+ (id)nss_NewsURLWithPathComponents:()NSSAdditions queryItems:internal:;
- (id)_nss_URLByAppendingQueryItem:()NSSAdditions;
- (id)_nss_valueForQueryParameterWithKey:()NSSAdditions;
- (id)nss_URLWithCampaignID:()NSSAdditions;
- (uint64_t)nss_hasRefreshParameter;
- (uint64_t)nss_isAudioURL;
- (uint64_t)nss_isNewsURL;
- (uint64_t)nss_isSubscribeURL;
@end

@implementation NSURL(NSSAdditions)

- (uint64_t)nss_isNewsURL
{
  v2 = [self _nss_valueForQueryParameterWithKey:@"open_in"];
  v3 = [v2 isEqualToString:@"app"];

  return ([self fc_isNewsURL] | v3) & 1;
}

- (uint64_t)nss_isAudioURL
{
  result = [self nss_isNewsURL];
  if (result)
  {
    pathComponents = [self pathComponents];
    v4 = [pathComponents containsObject:@"nowPlaying"];

    return v4;
  }

  return result;
}

+ (id)nss_NewsURLForWebLinkURL:()NSSAdditions
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NSURL(NSSAdditions) nss_NewsURLForWebLinkURL:];
  }

  scheme = [v3 scheme];
  if ([scheme isEqualToString:@"http"])
  {
    absoluteString = [v3 absoluteString];
    v6 = absoluteString;
    v7 = @"http";
    v8 = @"applenews";
  }

  else
  {
    if (![scheme isEqualToString:@"https"])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = scheme;
        _os_log_impl(&dword_25BF0A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unsupported scheme: %@", &v13, 0xCu);
      }

      goto LABEL_12;
    }

    absoluteString = [v3 absoluteString];
    v6 = absoluteString;
    v7 = @"https";
    v8 = @"applenewss";
  }

  v9 = [absoluteString fc_stringByReplacingPrefix:v7 withString:v8];

  if (v9)
  {
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];

    goto LABEL_13;
  }

LABEL_12:
  v10 = 0;
LABEL_13:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)nss_NewsURLForIssueID:()NSSAdditions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NSURL(NSSAdditions) nss_NewsURLForIssueID:];
  }

  if (![v4 length] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NSURL(NSSAdditions) nss_NewsURLForIssueID:];
  }

  if ([v4 rangeOfString:@"/"] != 0x7FFFFFFFFFFFFFFFLL && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NSURL(NSSAdditions) nss_NewsURLForIssueID:];
    if (v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
LABEL_10:
    v9[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v6 = [self nss_NewsURLWithPathComponents:v5 internal:0];

    goto LABEL_13;
  }

  v6 = 0;
LABEL_13:

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)nss_NewsURLForPuzzleID:()NSSAdditions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NSURL(NSSAdditions) nss_NewsURLForPuzzleID:];
  }

  if (![v4 length] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NSURL(NSSAdditions) nss_NewsURLForPuzzleID:];
  }

  if ([v4 rangeOfString:@"/"] != 0x7FFFFFFFFFFFFFFFLL && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NSURL(NSSAdditions) nss_NewsURLForPuzzleID:];
    if (v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
LABEL_10:
    v9[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v6 = [self nss_NewsURLWithPathComponents:v5 internal:0];

    goto LABEL_13;
  }

  v6 = 0;
LABEL_13:

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)nss_NewsURLForFullArchivePuzzleTypeID:()NSSAdditions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NSURL(NSSAdditions) nss_NewsURLForFullArchivePuzzleTypeID:];
  }

  if (![v4 length] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NSURL(NSSAdditions) nss_NewsURLForFullArchivePuzzleTypeID:];
  }

  if ([v4 rangeOfString:@"/"] != 0x7FFFFFFFFFFFFFFFLL && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NSURL(NSSAdditions) nss_NewsURLForFullArchivePuzzleTypeID:];
    if (v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
LABEL_10:
    v9[0] = v4;
    v9[1] = @"archive";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    v6 = [self nss_NewsURLWithPathComponents:v5 internal:0];

    goto LABEL_13;
  }

  v6 = 0;
LABEL_13:

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)nss_NewsURLForPuzzleTypeID:()NSSAdditions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NSURL(NSSAdditions) nss_NewsURLForPuzzleTypeID:];
  }

  if (![v4 length] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NSURL(NSSAdditions) nss_NewsURLForPuzzleTypeID:];
  }

  if ([v4 rangeOfString:@"/"] != 0x7FFFFFFFFFFFFFFFLL && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NSURL(NSSAdditions) nss_NewsURLForPuzzleTypeID:];
    if (v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
LABEL_10:
    v9[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v6 = [self nss_NewsURLWithPathComponents:v5 internal:0];

    goto LABEL_13;
  }

  v6 = 0;
LABEL_13:

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)nss_NewsURLForArticleID:()NSSAdditions title:
{
  v6 = a4;
  v7 = [self nss_NewsURLForArticleID:a3 internal:0 targetIsVideo:0 hardPaywall:0];
  [v7 _setTitle:v6];

  return v7;
}

- (uint64_t)nss_hasRefreshParameter
{
  result = [self nss_isNewsURL];
  if (result)
  {
    v3 = [self _nss_valueForQueryParameterWithKey:@"r"];
    v4 = [v3 isEqualToString:@"1"];

    return v4;
  }

  return result;
}

+ (id)nss_NewsURLForTagID:()NSSAdditions feedConfiguration:
{
  v6 = a3;
  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NSURL(NSSAdditions) nss_NewsURLForTagID:feedConfiguration:];
  }

  if (![v6 length] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NSURL(NSSAdditions) nss_NewsURLForTagID:feedConfiguration:];
  }

  if ([v6 rangeOfString:@"/"] != 0x7FFFFFFFFFFFFFFFLL && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NSURL(NSSAdditions) nss_NewsURLForTagID:feedConfiguration:];
  }

  v7 = [MEMORY[0x277CBEB18] arrayWithObject:v6];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a4 <= 5)
  {
    switch(a4)
    {
      case 2:
        v9 = objc_alloc(MEMORY[0x277CCAD18]);
        v10 = @"backCatalog";
        break;
      case 4:
        v9 = objc_alloc(MEMORY[0x277CCAD18]);
        v10 = @"sportsStandings";
        break;
      case 5:
        v9 = objc_alloc(MEMORY[0x277CCAD18]);
        v10 = @"sportsScores";
        break;
      default:
        goto LABEL_24;
    }

    goto LABEL_23;
  }

  switch(a4)
  {
    case 6:
      v9 = objc_alloc(MEMORY[0x277CCAD18]);
      v10 = @"sportsHighlights";
LABEL_23:
      v11 = [v9 initWithName:@"alternate_feed" value:v10];
      [v8 addObject:v11];

      break;
    case 7:
      v9 = objc_alloc(MEMORY[0x277CCAD18]);
      v10 = @"sportsBracket";
      goto LABEL_23;
    case 11:
      [v7 addObject:@"archive"];
      break;
  }

LABEL_24:
  v12 = [self nss_NewsURLWithPathComponents:v7 queryItems:v8 internal:0];

  return v12;
}

+ (id)nss_NewsURLForRecipeID:()NSSAdditions articleID:
{
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NSURL(NSSAdditions) nss_NewsURLForRecipeID:articleID:];
  }

  if ([v6 rangeOfString:@"/"] != 0x7FFFFFFFFFFFFFFFLL && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NSURL(NSSAdditions) nss_NewsURLForRecipeID:articleID:];
  }

  v8 = [MEMORY[0x277CBEB18] arrayWithObject:v6];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v7)
  {
    v10 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"article_id" value:v7];
    [v9 addObject:v10];
  }

  v11 = [self nss_NewsURLWithPathComponents:v8 queryItems:v9 internal:0];

  return v11;
}

- (uint64_t)nss_isSubscribeURL
{
  v1 = [self _nss_valueForQueryParameterWithKey:@"subscribe"];
  v2 = [v1 isEqualToString:@"1"];

  return v2;
}

+ (id)nss_NewsURLForForYou
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = @"foryou";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [self nss_NewsURLWithPathComponents:v2 internal:0];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)nss_NewsURLForMagazines
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = @"magazines";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [self nss_NewsURLWithPathComponents:v2 internal:0];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)nss_NewsURLForMyMagazines
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = @"mymagazines";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [self nss_NewsURLWithPathComponents:v2 internal:0];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)nss_NewsURLForPuzzleHub
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = @"puzzles";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [self nss_NewsURLWithPathComponents:v2 internal:0];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)nss_NewsURLForMySports
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = @"mysports";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [self nss_NewsURLWithPathComponents:v2 internal:0];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)nss_NewsURLForMySportsScores
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = @"myscores";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [self nss_NewsURLWithPathComponents:v2 internal:0];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)nss_NewsURLForMySportsHighlights
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = @"mysportshighlights";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [self nss_NewsURLWithPathComponents:v2 internal:0];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)nss_NewsURLForSaved
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = @"saved";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [self nss_NewsURLWithPathComponents:v2 internal:0];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)nss_NewsURLForHistory
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = @"history";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [self nss_NewsURLWithPathComponents:v2 internal:0];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)nss_NewsURLForFavoritesPicker
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = @"favoritespicker";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [self nss_NewsURLWithPathComponents:v2 internal:0];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)nss_NewsURLForManageNotifications
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = @"notifications";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [self nss_NewsURLWithPathComponents:v2 internal:0];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)nss_NewsURLForPuzzle
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = @"puzzle";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [self nss_NewsURLWithPathComponents:v2 internal:0];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)nss_NewsURLForFood
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = @"food";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [self nss_NewsURLWithPathComponents:v2 internal:0];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)nss_NewsURLForRecipeCatalog
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = @"recipes";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [self nss_NewsURLWithPathComponents:v2 internal:0];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)nss_NewsURLForRecipeCatalog:()NSSAdditions
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = @"recipes";
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];
  v7 = [self nss_NewsURLWithPathComponents:v6 queryItems:v5 internal:{0, v10, v11}];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)nss_NewsURLForRecipeBox
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = @"savedRecipes";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [self nss_NewsURLWithPathComponents:v2 internal:0];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)nss_URLWithCampaignID:()NSSAdditions
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSURL(NSSAdditions) nss_URLWithCampaignID:];
  }

  v5 = [MEMORY[0x277CCAD18] queryItemWithName:@"campaign_id" value:v4];
  v6 = [self _nss_URLByAppendingQueryItem:v5];

  return v6;
}

- (id)_nss_URLByAppendingQueryItem:()NSSAdditions
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSURL(NSSAdditions) _nss_URLByAppendingQueryItem:];
  }

  v5 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:self resolvingAgainstBaseURL:1];
  v6 = MEMORY[0x277CBEB18];
  queryItems = [v5 queryItems];
  v8 = [v6 arrayWithArray:queryItems];

  [v8 addObject:v4];
  [v5 setQueryItems:v8];
  v9 = [v5 URL];

  return v9;
}

- (id)_nss_valueForQueryParameterWithKey:()NSSAdditions
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  query = [self query];
  stringByRemovingPercentEncoding = [query stringByRemovingPercentEncoding];
  v7 = [stringByRemovingPercentEncoding componentsSeparatedByString:@"&"];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [*(*(&v20 + 1) + 8 * i) componentsSeparatedByString:@"="];
        firstObject = [v13 firstObject];
        lastObject = [v13 lastObject];
        if ([firstObject isEqualToString:v4])
        {
          v16 = lastObject;

          v10 = v16;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)nss_NewsURLWithPathComponents:()NSSAdditions queryItems:internal:
{
  v7 = a4;
  v8 = MEMORY[0x277CBEB18];
  v9 = a3;
  array = [v8 array];
  [array addObject:@"/"];
  [array addObjectsFromArray:v9];

  v11 = [MEMORY[0x277CCACA8] pathWithComponents:array];
  v12 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v12 setPath:v11];
  if ([v7 count])
  {
    [v12 setQueryItems:v7];
  }

  if (a5)
  {
    v13 = @"applenews";
  }

  else
  {
    v13 = @"https";
  }

  if (a5)
  {
    v14 = &stru_286D8BB50;
  }

  else
  {
    v14 = @"apple.news";
  }

  [v12 setScheme:v13];
  [v12 setHost:v14];
  v15 = [v12 URL];

  return v15;
}

+ (id)nss_MarketingPageURL
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v1 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];
  lowercaseString = [v1 lowercaseString];

  v3 = [&unk_286D8E490 objectForKeyedSubscript:lowercaseString];

  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [&unk_286D8E490 objectForKeyedSubscript:lowercaseString];
    v6 = [v4 stringWithFormat:@"https://www.apple.com/%@/news", v5];
  }

  else
  {
    v6 = @"https://www.apple.com/news";
  }

  v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];

  return v7;
}

+ (void)nss_NewsURLForWebLinkURL:()NSSAdditions .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "webLinkURL != nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)nss_NewsURLForIssueID:()NSSAdditions .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "issueID != nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)nss_NewsURLForIssueID:()NSSAdditions .cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "issueID.length != 0", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)nss_NewsURLForIssueID:()NSSAdditions .cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"issue IDs with slashes won't be handled properly"];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)nss_NewsURLForPuzzleID:()NSSAdditions .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "puzzleID != nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)nss_NewsURLForPuzzleID:()NSSAdditions .cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "puzzleID.length != 0", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)nss_NewsURLForPuzzleID:()NSSAdditions .cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"puzzle IDs with slashes won't be handled properly"];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)nss_NewsURLForFullArchivePuzzleTypeID:()NSSAdditions .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "puzzleTypeID != nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)nss_NewsURLForFullArchivePuzzleTypeID:()NSSAdditions .cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "puzzleTypeID.length != 0", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)nss_NewsURLForFullArchivePuzzleTypeID:()NSSAdditions .cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"puzzle type IDs with slashes won't be handled properly"];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)nss_NewsURLForPuzzleTypeID:()NSSAdditions .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "puzzleTypeID != nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)nss_NewsURLForPuzzleTypeID:()NSSAdditions .cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "puzzleTypeID.length != 0", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)nss_NewsURLForPuzzleTypeID:()NSSAdditions .cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"puzzle type IDs with slashes won't be handled properly"];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)nss_NewsURLForTagID:()NSSAdditions feedConfiguration:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "tagID != nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)nss_NewsURLForTagID:()NSSAdditions feedConfiguration:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "tagID.length != 0", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)nss_NewsURLForTagID:()NSSAdditions feedConfiguration:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"tag IDs with slashes won't be handled properly"];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)nss_NewsURLForRecipeID:()NSSAdditions articleID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "recipeID != nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)nss_NewsURLForRecipeID:()NSSAdditions articleID:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"recipe IDs with slashes won't be handled properly"];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)nss_URLWithCampaignID:()NSSAdditions .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "campaignID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_nss_URLByAppendingQueryItem:()NSSAdditions .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "queryItem", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end