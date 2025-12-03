@interface NTPBIssueRecord(FCAdditions)
- (id)generateCoverImageAssetHandleWithAssetManager:()FCAdditions;
- (id)generateMetadataJSONAssetHandleWithAssetManager:()FCAdditions;
- (uint64_t)isAllowedInStorefront:()FCAdditions;
@end

@implementation NTPBIssueRecord(FCAdditions)

- (id)generateMetadataJSONAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  if ([self hasMetadataURL])
  {
    metadataURL = [self metadataURL];
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

    v9 = [v4 assetHandleForCKAssetURLString:metadataURL lifetimeHint:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)generateCoverImageAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  if ([self hasCoverImageURL])
  {
    coverImageURL = [self coverImageURL];
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

    v9 = [v4 assetHandleForCKAssetURLString:coverImageURL lifetimeHint:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
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

@end