@interface NSURL(FCAdditions)
+ (id)fc_NewsURLForArticleID:()FCAdditions internal:targetIsVideo:hardPaywall:;
+ (id)fc_NewsURLForArticleID:()FCAdditions routeURL:;
+ (id)fc_NewsURLForTagID:()FCAdditions;
+ (id)fc_NewsURLWithPathComponents:()FCAdditions queryItems:internal:;
+ (id)fc_safeURLWithString:()FCAdditions;
- (BOOL)_isFeldsparOldArticleURL;
- (BOOL)_isFeldsparOldChannelURL;
- (BOOL)_isFeldsparOldTopicURL;
- (id)fc_NewsArticleID;
- (id)fc_NewsArticleIDs;
- (id)fc_NewsIssueID;
- (id)fc_NewsRecipeID;
- (id)fc_URLByDeletingFragment;
- (id)fc_URLByDeletingQuery;
- (id)fc_URLWithVideoTarget:()FCAdditions;
- (id)fc_feldsparTagID;
- (id)fc_valueForQueryItemWithName:()FCAdditions;
- (uint64_t)fc_directoryExists;
- (uint64_t)fc_fileSystemFreeSize;
- (uint64_t)fc_hasValidArticleComponents;
- (uint64_t)fc_isEqualToURL:()FCAdditions;
- (uint64_t)fc_isFeldsparInterstitialPreviewURL;
- (uint64_t)fc_isGzippedWithMIMETypeHint:()FCAdditions;
- (uint64_t)fc_isHTTPScheme;
- (uint64_t)fc_isHardPaywallNewsArticleURL:()FCAdditions;
- (uint64_t)fc_isNewsArticleURL;
- (uint64_t)fc_isNewsArticleVideoURL;
- (uint64_t)fc_isNewsIssueURL;
- (uint64_t)fc_isNewsPuzzleTypeURL;
- (uint64_t)fc_isNewsPuzzleURL;
- (uint64_t)fc_isNewsSportsEventURL;
- (uint64_t)fc_isNewsTagURL;
- (uint64_t)fc_isNewsURL;
- (uint64_t)fc_isStocksURL;
- (uint64_t)fc_isStoreURL;
- (uint64_t)fc_isWebArchiveURL;
- (uint64_t)fc_isWebOptInURL;
- (uint64_t)fc_volumeAvailableCapacityForOpportunisticUsage;
- (uint64_t)getUInt16XAttrWithName:()FCAdditions;
- (uint64_t)setUInt16XAttr:()FCAdditions withName:;
- (void)fc_URLByAddingQueryItem:()FCAdditions;
@end

@implementation NSURL(FCAdditions)

+ (id)fc_safeURLWithString:()FCAdditions
{
  if (a3)
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)fc_isWebOptInURL
{
  result = [self fc_isNewsURL];
  if (result)
  {
    path = [self path];
    v4 = [path containsString:@"weboptin"];

    return v4;
  }

  return result;
}

- (uint64_t)fc_hasValidArticleComponents
{
  lastPathComponent = [self lastPathComponent];
  lowercaseString = [lastPathComponent lowercaseString];
  v4 = [lowercaseString isEqualToString:@"articles"];

  pathComponents = [self pathComponents];
  if ([pathComponents count] == 2)
  {
    fc_isValidArticleID = [lastPathComponent fc_isValidArticleID];

    if (!(v4 & 1 | ((fc_isValidArticleID & 1) == 0)))
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  if (([self _isFeldsparOldArticleURL] & 1) == 0)
  {
    v7 = [self fc_isHardPaywallNewsArticleURL:0];
    goto LABEL_8;
  }

LABEL_6:
  v7 = 1;
LABEL_8:

  return v7;
}

- (uint64_t)fc_isNewsArticleURL
{
  result = [self fc_isNewsURL];
  if (result)
  {

    return [self fc_hasValidArticleComponents];
  }

  return result;
}

- (uint64_t)fc_isNewsArticleVideoURL
{
  result = [self fc_isNewsArticleURL];
  if (result)
  {
    v3 = [self fc_valueForQueryItemWithName:@"v"];
    v4 = [v3 isEqualToString:@"1"];

    return v4;
  }

  return result;
}

- (id)fc_URLWithVideoTarget:()FCAdditions
{
  selfCopy = self;
  if (a3)
  {
    v5 = [MEMORY[0x1E696AF60] queryItemWithName:@"v" value:@"1"];
    v6 = [selfCopy fc_URLByAddingQueryItem:v5];

    selfCopy = v6;
  }

  return selfCopy;
}

- (uint64_t)fc_isNewsIssueURL
{
  if (![self fc_isNewsURL])
  {
    return 0;
  }

  lastPathComponent = [self lastPathComponent];
  pathComponents = [self pathComponents];
  if ([pathComponents count] == 2)
  {
    fc_isValidIssueID = [lastPathComponent fc_isValidIssueID];
  }

  else
  {
    fc_isValidIssueID = 0;
  }

  return fc_isValidIssueID;
}

- (uint64_t)fc_isHardPaywallNewsArticleURL:()FCAdditions
{
  if (![self fc_isNewsURL])
  {
    return 0;
  }

  lastPathComponent = [self lastPathComponent];
  pathComponents = [self pathComponents];
  v7 = [pathComponents count];
  v8 = v7 == 2;
  if (v7 == 2)
  {
    fc_isValidHardPaywallArticleID = [lastPathComponent fc_isValidHardPaywallArticleID];

    if (!a3 || !fc_isValidHardPaywallArticleID)
    {
      goto LABEL_8;
    }

    pathComponents = lastPathComponent;
    if ([pathComponents length] >= 2)
    {
      v10 = [pathComponents substringFromIndex:1];
      nf_stringByReversingString = [v10 nf_stringByReversingString];

      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"A%@", nf_stringByReversingString];
      *a3 = v12;
    }
  }

  fc_isValidHardPaywallArticleID = v8;
LABEL_8:

  return fc_isValidHardPaywallArticleID;
}

- (id)fc_NewsArticleID
{
  path = [self path];
  lastPathComponent = [path lastPathComponent];

  if ([lastPathComponent fc_isValidArticleID])
  {
    v4 = lastPathComponent;
  }

  else
  {
    v9 = 0;
    v5 = [self fc_isHardPaywallNewsArticleURL:&v9];
    v6 = v9;
    v7 = v6;
    v4 = 0;
    if (v5 && v6)
    {
      v4 = v6;
    }
  }

  return v4;
}

- (id)fc_NewsArticleIDs
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:0];
  [v1 queryItems];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = v17 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        name = [v7 name];
        v9 = [name isEqualToString:@"articleList"];

        if (v9)
        {
          value = [v7 value];
          v10 = [value componentsSeparatedByString:{@", "}];

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)fc_NewsIssueID
{
  path = [self path];
  lastPathComponent = [path lastPathComponent];

  if ([lastPathComponent fc_isValidIssueID])
  {
    v3 = lastPathComponent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)fc_NewsRecipeID
{
  path = [self path];
  lastPathComponent = [path lastPathComponent];

  if ([lastPathComponent fc_isValidRecipeID])
  {
    v3 = lastPathComponent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)fc_isNewsURL
{
  scheme = [self scheme];
  host = [self host];
  if (scheme)
  {
    if ([scheme isEqualToString:@"applenews"])
    {
      v4 = 1;
    }

    else
    {
      v4 = [scheme isEqualToString:@"applenewss"];
    }

    if (([scheme isEqualToString:@"http"] & 1) != 0 || (v6 = objc_msgSend(scheme, "isEqualToString:", @"https")) != 0)
    {
      if ([host isEqualToString:@"news.apple.com"] & 1) != 0 || (objc_msgSend(host, "isEqualToString:", @"apple.news"))
      {
        LOBYTE(v6) = 1;
      }

      else
      {
        LOBYTE(v6) = [host isEqualToString:@"one.apple.com"];
      }
    }

    v5 = v4 | v6;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (uint64_t)fc_isStocksURL
{
  scheme = [self scheme];
  host = [self host];
  if (scheme)
  {
    v4 = [scheme isEqualToString:@"stocks"];
    if (([scheme isEqualToString:@"http"] & 1) != 0 || (v5 = objc_msgSend(scheme, "isEqualToString:", @"https")) != 0)
    {
      LOBYTE(v5) = [host isEqualToString:@"stocks.apple.com"];
    }

    v6 = v4 | v5;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)_isFeldsparOldArticleURL
{
  pathComponents = [self pathComponents];
  v3 = [pathComponents count];

  path = [self path];
  v5 = 0;
  if ([path length] && v3 == 3)
  {
    v5 = [path rangeOfString:@"articles" options:1] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (uint64_t)fc_isFeldsparInterstitialPreviewURL
{
  if (![self fc_isNewsURL])
  {
    return 0;
  }

  pathComponents = [self pathComponents];
  if ([pathComponents count] == 2)
  {
    path = [self path];
    lastPathComponent = [path lastPathComponent];
    v5 = [lastPathComponent isEqualToString:@"interstitial-preview"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)fc_isNewsTagURL
{
  if ([self fc_isNewsURL])
  {
    lastPathComponent = [self lastPathComponent];
    lowercaseString = [lastPathComponent lowercaseString];
    v4 = [lowercaseString isEqualToString:@"topics"];

    lowercaseString2 = [lastPathComponent lowercaseString];
    v6 = [lowercaseString2 isEqualToString:@"channels"];

    LODWORD(lowercaseString2) = [lastPathComponent fc_isValidTagID];
    pathComponents = [self pathComponents];
    v8 = ([pathComponents count] == 2) & lowercaseString2 & ((v4 | v6) ^ 1);

    if (lowercaseString2)
    {
      if ([self _isFeldsparOldChannelURL])
      {
        _isFeldsparOldTopicURL = 1;
      }

      else
      {
        _isFeldsparOldTopicURL = [self _isFeldsparOldTopicURL];
      }
    }

    else
    {
      _isFeldsparOldTopicURL = 0;
    }

    v10 = v8 | _isFeldsparOldTopicURL;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (uint64_t)fc_isNewsSportsEventURL
{
  if (![self fc_isNewsURL])
  {
    return 0;
  }

  lastPathComponent = [self lastPathComponent];
  fc_isValidSportsEventID = [lastPathComponent fc_isValidSportsEventID];
  pathComponents = [self pathComponents];
  v5 = ([pathComponents count] == 2) & fc_isValidSportsEventID;

  return v5;
}

- (uint64_t)fc_isNewsPuzzleURL
{
  if (![self fc_isNewsURL])
  {
    return 0;
  }

  lastPathComponent = [self lastPathComponent];
  fc_isValidPuzzleID = [lastPathComponent fc_isValidPuzzleID];
  pathComponents = [self pathComponents];
  v5 = ([pathComponents count] == 2) & fc_isValidPuzzleID;

  return v5;
}

- (uint64_t)fc_isNewsPuzzleTypeURL
{
  if (![self fc_isNewsURL])
  {
    return 0;
  }

  lastPathComponent = [self lastPathComponent];
  fc_isValidPuzzleTypeID = [lastPathComponent fc_isValidPuzzleTypeID];
  pathComponents = [self pathComponents];
  v5 = ([pathComponents count] == 2) & fc_isValidPuzzleTypeID;

  return v5;
}

+ (id)fc_NewsURLWithPathComponents:()FCAdditions queryItems:internal:
{
  v7 = a4;
  v8 = MEMORY[0x1E695DF70];
  v9 = a3;
  array = [v8 array];
  [array addObject:@"/"];
  [array addObjectsFromArray:v9];

  v11 = [MEMORY[0x1E696AEC0] pathWithComponents:array];
  v12 = objc_alloc_init(MEMORY[0x1E696AF20]);
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
    v14 = &stru_1F2DC7DC0;
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

+ (id)fc_NewsURLForArticleID:()FCAdditions routeURL:
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v28 = [self fc_NewsURLForArticleID:v6 internal:0 targetIsVideo:0 hardPaywall:0];
    goto LABEL_32;
  }

  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleID != nil"];
    *buf = 136315906;
    v52 = "+[NSURL(FCAdditions) fc_NewsURLForArticleID:routeURL:]";
    v53 = 2080;
    v54 = "NSURL+FCAdditions.m";
    v55 = 1024;
    v56 = 396;
    v57 = 2114;
    v58 = v39;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (![v6 length] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleID.length != 0"];
    *buf = 136315906;
    v52 = "+[NSURL(FCAdditions) fc_NewsURLForArticleID:routeURL:]";
    v53 = 2080;
    v54 = "NSURL+FCAdditions.m";
    v55 = 1024;
    v56 = 397;
    v57 = 2114;
    v58 = v40;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if ([v6 rangeOfString:@"/"] != 0x7FFFFFFFFFFFFFFFLL && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"article IDs with slashes won't be handled properly"];
    *buf = 136315906;
    v52 = "+[NSURL(FCAdditions) fc_NewsURLForArticleID:routeURL:]";
    v53 = 2080;
    v54 = "NSURL+FCAdditions.m";
    v55 = 1024;
    v56 = 398;
    v57 = 2114;
    v58 = v36;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v6)
    {
      goto LABEL_11;
    }

LABEL_31:
    v28 = 0;
    goto LABEL_32;
  }

  if (!v6)
  {
    goto LABEL_31;
  }

LABEL_11:
  v44 = v6;
  v50 = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
  v41 = [self fc_NewsURLWithPathComponents:v8];

  v43 = v7;
  v9 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v7 resolvingAgainstBaseURL:0];
  v10 = objc_alloc_init(MEMORY[0x1E696AF20]);
  v42 = v9;
  fragment = [v9 fragment];
  [v10 setQuery:fragment];

  queryItems = [v10 queryItems];
  v13 = queryItems;
  v14 = MEMORY[0x1E695E0F0];
  if (queryItems)
  {
    v14 = queryItems;
  }

  v15 = v14;

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v46;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v46 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v45 + 1) + 8 * i);
        name = [v22 name];
        v24 = [name isEqualToString:@"nff_cid"];

        if ((v24 & 1) == 0)
        {
          [v16 addObject:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v19);
  }

  [v10 setQueryItems:v16];
  query = [v10 query];
  if ([query length])
  {
    query2 = [v10 query];
    v27 = v42;
    [v42 setFragment:query2];
  }

  else
  {
    v27 = v42;
    [v42 setFragment:0];
  }

  v7 = v43;
  v6 = v44;

  v29 = [v27 URL];
  v30 = v29;
  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = v43;
  }

  v32 = v31;

  dataRepresentation = [v32 dataRepresentation];

  v34 = [dataRepresentation base64EncodedStringWithOptions:0];

  v35 = [MEMORY[0x1E696AF60] queryItemWithName:@"route" value:v34];
  v28 = [v41 fc_URLByAddingQueryItem:v35];

LABEL_32:
  v37 = *MEMORY[0x1E69E9840];

  return v28;
}

+ (id)fc_NewsURLForArticleID:()FCAdditions internal:targetIsVideo:hardPaywall:
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleID != nil"];
    *buf = 136315906;
    v24 = "+[NSURL(FCAdditions) fc_NewsURLForArticleID:internal:targetIsVideo:hardPaywall:]";
    v25 = 2080;
    v26 = "NSURL+FCAdditions.m";
    v27 = 1024;
    v28 = 435;
    v29 = 2114;
    v30 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (![v10 length] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleID.length != 0"];
    *buf = 136315906;
    v24 = "+[NSURL(FCAdditions) fc_NewsURLForArticleID:internal:targetIsVideo:hardPaywall:]";
    v25 = 2080;
    v26 = "NSURL+FCAdditions.m";
    v27 = 1024;
    v28 = 436;
    v29 = 2114;
    v30 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if ([v10 rangeOfString:@"/"] != 0x7FFFFFFFFFFFFFFFLL && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"article IDs with slashes won't be handled properly"];
    *buf = 136315906;
    v24 = "+[NSURL(FCAdditions) fc_NewsURLForArticleID:internal:targetIsVideo:hardPaywall:]";
    v25 = 2080;
    v26 = "NSURL+FCAdditions.m";
    v27 = 1024;
    v28 = 438;
    v29 = 2114;
    v30 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v10)
    {
      goto LABEL_10;
    }

LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (a6)
  {
    v11 = [MEMORY[0x1E696AEC0] fc_hardPaywallArticleIDWithArticleID:v10];
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;
  v22 = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v14 = [self fc_NewsURLWithPathComponents:v13 internal:a4];

  if (a5)
  {
    v15 = [MEMORY[0x1E696AF60] queryItemWithName:@"v" value:@"1"];
    v16 = [v14 fc_URLByAddingQueryItem:v15];

    v14 = v16;
  }

LABEL_18:
  v18 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)fc_NewsURLForTagID:()FCAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
    *buf = 136315906;
    v13 = "+[NSURL(FCAdditions) fc_NewsURLForTagID:]";
    v14 = 2080;
    v15 = "NSURL+FCAdditions.m";
    v16 = 1024;
    v17 = 460;
    v18 = 2114;
    v19 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (![v4 length] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID.length != 0"];
    *buf = 136315906;
    v13 = "+[NSURL(FCAdditions) fc_NewsURLForTagID:]";
    v14 = 2080;
    v15 = "NSURL+FCAdditions.m";
    v16 = 1024;
    v17 = 461;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11 = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v6 = [self fc_NewsURLWithPathComponents:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)fc_feldsparTagID
{
  path = [self path];
  lastPathComponent = [path lastPathComponent];

  if ([lastPathComponent fc_isValidTagID])
  {
    v3 = lastPathComponent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)fc_isEqualToURL:()FCAdditions
{
  v4 = a3;
  absoluteURL = [self absoluteURL];
  absoluteURL2 = [v4 absoluteURL];
  if ([absoluteURL isEqual:absoluteURL2])
  {
    v7 = 1;
  }

  else if ([self isFileURL] && objc_msgSend(v4, "isFileURL"))
  {
    path = [self path];
    path2 = [v4 path];
    v7 = [path isEqual:path2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isFeldsparOldTopicURL
{
  pathComponents = [self pathComponents];
  v3 = [pathComponents count];

  path = [self path];
  v5 = 0;
  if ([path length] && v3 == 3)
  {
    v5 = [path rangeOfString:@"topics" options:1] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (BOOL)_isFeldsparOldChannelURL
{
  pathComponents = [self pathComponents];
  v3 = [pathComponents count];

  path = [self path];
  v5 = 0;
  if ([path length] && v3 == 3)
  {
    v5 = [path rangeOfString:@"channels" options:1] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (uint64_t)fc_isWebArchiveURL
{
  scheme = [self scheme];
  pathExtension = [self pathExtension];
  if ([scheme isEqualToString:@"file"])
  {
    v4 = [pathExtension isEqualToString:@"webarchive"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)fc_isHTTPScheme
{
  scheme = [self scheme];
  if ([scheme isEqualToString:@"http"] & 1) != 0 || (objc_msgSend(scheme, "isEqualToString:", @"https"))
  {
    fc_isWebArchiveURL = 1;
  }

  else
  {
    fc_isWebArchiveURL = [self fc_isWebArchiveURL];
  }

  return fc_isWebArchiveURL;
}

- (uint64_t)fc_isStoreURL
{
  scheme = [self scheme];
  if ([scheme hasPrefix:@"itms"])
  {
    v3 = 1;
  }

  else
  {
    host = [self host];
    if ([host isEqualToString:@"itunes.apple.com"])
    {
      v3 = 1;
    }

    else
    {
      host2 = [self host];
      if ([host2 isEqualToString:@"buy.itunes.apple.com"])
      {
        v3 = 1;
      }

      else
      {
        host3 = [self host];
        v3 = [host3 isEqualToString:@"storepreview.apple.com"];
      }
    }
  }

  return v3;
}

- (id)fc_URLByDeletingQuery
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:0];
  [v1 setQuery:0];
  v2 = [v1 URL];

  return v2;
}

- (id)fc_URLByDeletingFragment
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:0];
  [v1 setFragment:0];
  v2 = [v1 URL];

  return v2;
}

- (void)fc_URLByAddingQueryItem:()FCAdditions
{
  v4 = MEMORY[0x1E696AF20];
  v5 = a3;
  v6 = [v4 componentsWithURL:self resolvingAgainstBaseURL:0];
  queryItems = [v6 queryItems];
  if (queryItems)
  {
    queryItems2 = [v6 queryItems];
    array = [queryItems2 mutableCopy];
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
  }

  [array addObject:v5];
  [v6 setQueryItems:array];
  v10 = [v6 URL];
  v11 = v10;
  if (v10)
  {
    self = v10;
  }

  selfCopy = self;

  return self;
}

- (id)fc_valueForQueryItemWithName:()FCAdditions
{
  v25 = *MEMORY[0x1E69E9840];
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

  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

- (uint64_t)fc_directoryExists
{
  v6 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [self path];
  v4 = [defaultManager fileExistsAtPath:path isDirectory:&v6];

  return v4;
}

- (uint64_t)fc_isGzippedWithMIMETypeHint:()FCAdditions
{
  v4 = a3;
  if (FCMIMETypeIsGZip(v4))
  {
    fc_isGzipped = 1;
  }

  else if (v4 && !FCMIMETypeIsBinary(v4))
  {
    fc_isGzipped = 0;
  }

  else
  {
    v6 = MEMORY[0x1E696AC00];
    path = [self path];
    v8 = [v6 fileHandleForReadingAtPath:path];

    v9 = [v8 readDataOfLength:2];
    [v8 closeFile];
    fc_isGzipped = [v9 fc_isGzipped];
  }

  return fc_isGzipped;
}

- (uint64_t)fc_fileSystemFreeSize
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [self path];
  v13 = 0;
  v4 = [defaultManager attributesOfFileSystemForPath:path error:&v13];
  v5 = v13;

  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696A3C0]];
    if (v6)
    {
      v7 = v6;
      longLongValue = [v6 longLongValue];
    }

    else
    {
      v9 = FCDefaultLog;
      if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_ERROR, "failed to lookup file system free size with unknown error", buf, 2u);
      }

      v7 = 0;
      longLongValue = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __43__NSURL_FCAdditions__fc_fileSystemFreeSize__block_invoke;
    v11[3] = &unk_1E7C3F068;
    v12 = v5;
    __43__NSURL_FCAdditions__fc_fileSystemFreeSize__block_invoke(v11);
    longLongValue = 0x7FFFFFFFFFFFFFFFLL;
    v7 = v12;
  }

  return longLongValue;
}

- (uint64_t)fc_volumeAvailableCapacityForOpportunisticUsage
{
  v14 = 0;
  v1 = *MEMORY[0x1E695DD58];
  v13 = 0;
  v2 = [self getResourceValue:&v14 forKey:v1 error:&v13];
  v3 = v14;
  v4 = v13;
  v5 = v4;
  if ((v2 & 1) == 0)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__NSURL_FCAdditions__fc_volumeAvailableCapacityForOpportunisticUsage__block_invoke;
    v11[3] = &unk_1E7C3F068;
    v12 = v4;
    v8 = v3;
    __69__NSURL_FCAdditions__fc_volumeAvailableCapacityForOpportunisticUsage__block_invoke(v11);

LABEL_7:
    longLongValue = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_8;
  }

  v6 = v3;
  if (![v6 longLongValue])
  {
    v9 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_ERROR, "failed to lookup volume available capacity for opportunistic usage with unknown error", buf, 2u);
    }

    goto LABEL_7;
  }

  longLongValue = [v6 longLongValue];
LABEL_8:

  return longLongValue;
}

- (uint64_t)getUInt16XAttrWithName:()FCAdditions
{
  value = 0;
  selfCopy = self;
  v6 = a3;
  fileSystemRepresentation = [self fileSystemRepresentation];
  cString = [v6 cString];

  getxattr(fileSystemRepresentation, cString, &value, 2uLL, 0, 0);
  return value;
}

- (uint64_t)setUInt16XAttr:()FCAdditions withName:
{
  value = a3;
  selfCopy = self;
  v7 = a4;
  fileSystemRepresentation = [self fileSystemRepresentation];
  cString = [v7 cString];

  return setxattr(fileSystemRepresentation, cString, &value, 2uLL, 0, 0);
}

@end