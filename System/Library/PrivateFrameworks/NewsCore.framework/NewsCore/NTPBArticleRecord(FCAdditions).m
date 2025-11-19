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
  v3 = [a1 topics];
  v4 = [v2 arrayWithCapacity:{objc_msgSend(v3, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a1 topics];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) tagID];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
    v8 = [a1 base];
    v9 = [v8 cacheLifetimeHint];
    if (v9 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = v9 == 1;
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
  v5 = [a1 flintDocumentURL];
  if (v5)
  {
    v6 = [a1 base];
    v7 = [v6 cacheLifetimeHint];
    if (v7 == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = v7 == 1;
    }

    v9 = [v4 assetHandleForCKAssetURLString:v5 lifetimeHint:v8];
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
  v5 = [a1 base];
  v6 = [v5 cacheLifetimeHint];
  if (v6 == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6 == 1;
  }

  v8 = [a1 excerptURL];

  if (v8)
  {
    v9 = [a1 excerptURL];
    [v4 assetHandleForCKAssetURLString:v9 lifetimeHint:v7];
  }

  else
  {
    v10 = [a1 base];
    v11 = [v10 identifier];
    v12 = [a1 base];
    v13 = [v12 changeTag];
    v9 = [FCExcerptURLProtocol excerptURLForArticleID:v11 changeTag:v13];

    [v4 assetHandleForURL:v9 lifetimeHint:v7];
  }
  v14 = ;

  return v14;
}

- (uint64_t)isAllowedInStorefront:()FCAdditions
{
  v4 = a3;
  v5 = +[FCRestrictions sharedInstance];
  v6 = [a1 allowedStorefrontIDs];
  v7 = [a1 blockedStorefrontIDs];
  v8 = [v5 isContentAllowedInStorefrontID:v4 withAllowedStorefrontIDs:v6 blockedStorefrontIDs:v7];

  return v8;
}

- (id)narrativeTrackFullIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [a1 base];
  v4 = [v3 identifier];
  v5 = MEMORY[0x1E696AD98];
  v6 = [a1 narrativeTrackFullURL];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "hash")}];
  v8 = [v2 stringWithFormat:@"%@-narration-full-%@", v4, v7];

  return v8;
}

- (id)narrativeTrackSampleIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [a1 base];
  v4 = [v3 identifier];
  v5 = MEMORY[0x1E696AD98];
  v6 = [a1 narrativeTrackSampleURL];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "hash")}];
  v8 = [v2 stringWithFormat:@"%@-narration-sample-%@", v4, v7];

  return v8;
}

@end