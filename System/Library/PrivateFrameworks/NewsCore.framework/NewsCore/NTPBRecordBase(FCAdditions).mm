@interface NTPBRecordBase(FCAdditions)
- (BOOL)fc_isCachedAgeGreaterThan:()FCAdditions;
- (BOOL)fc_isCachedAgeLessThan:()FCAdditions;
- (BOOL)fc_isNewerThan:()FCAdditions;
- (FCContentManifest)contentManifest;
- (id)generateThumbnailAssetHandleForURL:()FCAdditions withAssetManager:;
@end

@implementation NTPBRecordBase(FCAdditions)

- (id)generateThumbnailAssetHandleForURL:()FCAdditions withAssetManager:
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    cacheLifetimeHint = [self cacheLifetimeHint];
    if (cacheLifetimeHint == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = cacheLifetimeHint == 1;
    }

    v10 = [v6 assetHandleForCKAssetURLString:v7 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)fc_isCachedAgeGreaterThan:()FCAdditions
{
  v3 = MEMORY[0x1E695DF00];
  fetchDate = [self fetchDate];
  v5 = [v3 dateWithPBDate:fetchDate];
  [v5 fc_timeIntervalUntilNow];
  v7 = v6 > a2;

  return v7;
}

- (BOOL)fc_isCachedAgeLessThan:()FCAdditions
{
  v3 = MEMORY[0x1E695DF00];
  fetchDate = [self fetchDate];
  v5 = [v3 dateWithPBDate:fetchDate];
  [v5 fc_timeIntervalUntilNow];
  v7 = v6 < a2;

  return v7;
}

- (BOOL)fc_isNewerThan:()FCAdditions
{
  v4 = a3;
  modificationDate = [self modificationDate];
  [modificationDate timeIntervalSince1970];
  v7 = v6;

  modificationDate2 = [v4 modificationDate];

  [modificationDate2 timeIntervalSince1970];
  v10 = v9;

  return v7 > v10 + 0.001;
}

- (FCContentManifest)contentManifest
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [FCContentManifest alloc];
  identifier = [self identifier];
  v8[0] = identifier;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [(FCContentManifest *)v2 initWithRecordIDs:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end