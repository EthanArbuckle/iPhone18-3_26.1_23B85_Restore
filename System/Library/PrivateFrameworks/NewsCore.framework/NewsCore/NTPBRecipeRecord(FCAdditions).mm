@interface NTPBRecipeRecord(FCAdditions)
- (id)generateContentAssetHandleWithAssetManager:()FCAdditions;
- (id)generateThumbnailAssetHandleForURL:()FCAdditions withAssetManager:;
- (id)topicTagIDs;
@end

@implementation NTPBRecipeRecord(FCAdditions)

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

- (id)generateContentAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  contentURL = [self contentURL];
  if (!contentURL)
  {
    goto LABEL_7;
  }

  v6 = contentURL;
  v7 = MEMORY[0x1E695DFF8];
  contentURL2 = [self contentURL];
  v9 = [v7 URLWithString:contentURL2];

  if (v9)
  {
    base = [self base];
    cacheLifetimeHint = [base cacheLifetimeHint];
    if (cacheLifetimeHint == 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = cacheLifetimeHint == 1;
    }

    v13 = [v4 assetHandleForURL:v9 lifetimeHint:v12];
  }

  else
  {
LABEL_7:
    v13 = 0;
  }

  return v13;
}

- (id)topicTagIDs
{
  topics = [self topics];
  v2 = [topics fc_arrayByTransformingWithBlock:&__block_literal_global_76];

  return v2;
}

@end