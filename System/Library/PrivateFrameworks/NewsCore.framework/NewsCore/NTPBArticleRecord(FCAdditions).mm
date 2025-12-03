@interface NTPBArticleRecord(FCAdditions)
- (id)generateFlintDocumentAssetHandleWithAssetManager:()FCAdditions;
- (id)generateThumbnailAssetHandleForURL:()FCAdditions withAssetManager:;
- (id)generateWebExcerptAssetHandleWithAssetManager:()FCAdditions;
- (id)narrativeTrackFullIdentifier;
- (id)narrativeTrackSampleIdentifier;
- (id)topicIDs;
- (uint64_t)isAllowedInStorefront:()FCAdditions;
@end

@implementation NTPBArticleRecord(FCAdditions)

- (id)topicIDs
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF70];
  topics = [self topics];
  v4 = [v2 arrayWithCapacity:{objc_msgSend(topics, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  topics2 = [self topics];
  v6 = [topics2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(topics2);
        }

        tagID = [*(*(&v13 + 1) + 8 * i) tagID];
        [v4 addObject:tagID];
      }

      v7 = [topics2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)generateThumbnailAssetHandleForURL:()FCAdditions withAssetManager:
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    base = [self base];
    cacheLifetimeHint = [base cacheLifetimeHint];
    if (cacheLifetimeHint == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = cacheLifetimeHint == 1;
    }

    v11 = [v6 assetHandleForCKAssetURLString:v7 lifetimeHint:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)generateFlintDocumentAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  flintDocumentURL = [self flintDocumentURL];
  if (flintDocumentURL)
  {
    base = [self base];
    cacheLifetimeHint = [base cacheLifetimeHint];
    if (cacheLifetimeHint == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = cacheLifetimeHint == 1;
    }

    v9 = [v4 assetHandleForCKAssetURLString:flintDocumentURL lifetimeHint:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)generateWebExcerptAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  base = [self base];
  cacheLifetimeHint = [base cacheLifetimeHint];
  if (cacheLifetimeHint == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = cacheLifetimeHint == 1;
  }

  excerptURL = [self excerptURL];

  if (excerptURL)
  {
    excerptURL2 = [self excerptURL];
    [v4 assetHandleForCKAssetURLString:excerptURL2 lifetimeHint:v7];
  }

  else
  {
    base2 = [self base];
    identifier = [base2 identifier];
    base3 = [self base];
    changeTag = [base3 changeTag];
    excerptURL2 = [FCExcerptURLProtocol excerptURLForArticleID:identifier changeTag:changeTag];

    [v4 assetHandleForURL:excerptURL2 lifetimeHint:v7];
  }
  v14 = ;

  return v14;
}

- (uint64_t)isAllowedInStorefront:()FCAdditions
{
  v4 = a3;
  v5 = +[FCRestrictions sharedInstance];
  allowedStorefrontIDs = [self allowedStorefrontIDs];
  blockedStorefrontIDs = [self blockedStorefrontIDs];
  v8 = [v5 isContentAllowedInStorefrontID:v4 withAllowedStorefrontIDs:allowedStorefrontIDs blockedStorefrontIDs:blockedStorefrontIDs];

  return v8;
}

- (id)narrativeTrackFullIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  base = [self base];
  identifier = [base identifier];
  v5 = MEMORY[0x1E696AD98];
  narrativeTrackFullURL = [self narrativeTrackFullURL];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(narrativeTrackFullURL, "hash")}];
  v8 = [v2 stringWithFormat:@"%@-narration-full-%@", identifier, v7];

  return v8;
}

- (id)narrativeTrackSampleIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  base = [self base];
  identifier = [base identifier];
  v5 = MEMORY[0x1E696AD98];
  narrativeTrackSampleURL = [self narrativeTrackSampleURL];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(narrativeTrackSampleURL, "hash")}];
  v8 = [v2 stringWithFormat:@"%@-narration-sample-%@", identifier, v7];

  return v8;
}

@end