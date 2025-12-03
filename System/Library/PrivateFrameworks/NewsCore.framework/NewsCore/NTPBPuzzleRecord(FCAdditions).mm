@interface NTPBPuzzleRecord(FCAdditions)
- (id)generateThumbnailLargeImageAssetHandleWithAssetManager:()FCAdditions;
- (id)generateThumbnailSmallImageAssetHandleWithAssetManager:()FCAdditions;
@end

@implementation NTPBPuzzleRecord(FCAdditions)

- (id)generateThumbnailSmallImageAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  thumbnailImageCompactURL = [self thumbnailImageCompactURL];
  if (thumbnailImageCompactURL)
  {
    thumbnailImageCompactURL2 = [self thumbnailImageCompactURL];
    base = [self base];
    cacheLifetimeHint = [base cacheLifetimeHint];
    if (cacheLifetimeHint == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = cacheLifetimeHint == 1;
    }

    v10 = [v4 assetHandleForCKAssetURLString:thumbnailImageCompactURL2 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)generateThumbnailLargeImageAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  thumbnailImageLargeURL = [self thumbnailImageLargeURL];
  if (thumbnailImageLargeURL)
  {
    thumbnailImageLargeURL2 = [self thumbnailImageLargeURL];
    base = [self base];
    cacheLifetimeHint = [base cacheLifetimeHint];
    if (cacheLifetimeHint == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = cacheLifetimeHint == 1;
    }

    v10 = [v4 assetHandleForCKAssetURLString:thumbnailImageLargeURL2 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end