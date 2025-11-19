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

- (id)generateContentAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  v5 = [a1 contentURL];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = MEMORY[0x1E695DFF8];
  v8 = [a1 contentURL];
  v9 = [v7 URLWithString:v8];

  if (v9)
  {
    v10 = [a1 base];
    v11 = [v10 cacheLifetimeHint];
    if (v11 == 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = v11 == 1;
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
  v1 = [a1 topics];
  v2 = [v1 fc_arrayByTransformingWithBlock:&__block_literal_global_76];

  return v2;
}

@end