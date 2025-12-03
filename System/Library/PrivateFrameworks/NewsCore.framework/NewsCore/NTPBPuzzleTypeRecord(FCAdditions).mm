@interface NTPBPuzzleTypeRecord(FCAdditions)
- (id)generateCoverImageAssetHandleWithAssetManager:()FCAdditions;
- (id)generateExploreTileImageAssetHandleWithAssetManager:()FCAdditions;
- (id)generateFeedNavImageAssetHandleWithAssetManager:()FCAdditions;
- (id)generateNameImageAssetHandleWithAssetManager:()FCAdditions;
- (id)generateNameImageCompactAssetHandleWithAssetManager:()FCAdditions;
- (id)generateNameImageForDarkBackgroundAssetHandleWithAssetManager:()FCAdditions;
- (id)generateNameImageMaskAssetHandleWithAssetManager:()FCAdditions;
- (id)generateNavigationChromeBackgroundDarkModeImageCompactHandleWithAssetManager:()FCAdditions;
- (id)generateNavigationChromeBackgroundDarkModeImageHandleWithAssetManager:()FCAdditions;
- (id)generateNavigationChromeBackgroundDarkModeImageLargeHandleWithAssetManager:()FCAdditions;
- (id)generateNavigationChromeBackgroundImageCompactHandleWithAssetManager:()FCAdditions;
- (id)generateNavigationChromeBackgroundImageHandleWithAssetManager:()FCAdditions;
- (id)generateNavigationChromeBackgroundImageLargeHandleWithAssetManager:()FCAdditions;
- (id)generateThumbnailImageAssetHandleForDate:()FCAdditions difficulty:assetManager:;
@end

@implementation NTPBPuzzleTypeRecord(FCAdditions)

- (id)generateNameImageAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  nameImageURL = [self nameImageURL];
  if (nameImageURL)
  {
    nameImageURL2 = [self nameImageURL];
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

    v10 = [v4 assetHandleForCKAssetURLString:nameImageURL2 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)generateNameImageCompactAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  nameImageCompactURL = [self nameImageCompactURL];
  if (nameImageCompactURL)
  {
    nameImageCompactURL2 = [self nameImageCompactURL];
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

    v10 = [v4 assetHandleForCKAssetURLString:nameImageCompactURL2 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)generateNameImageForDarkBackgroundAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  nameImageForDarkBackgroundURL = [self nameImageForDarkBackgroundURL];
  if (nameImageForDarkBackgroundURL)
  {
    nameImageForDarkBackgroundURL2 = [self nameImageForDarkBackgroundURL];
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

    v10 = [v4 assetHandleForCKAssetURLString:nameImageForDarkBackgroundURL2 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)generateNameImageMaskAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  nameImageMaskURL = [self nameImageMaskURL];
  if (nameImageMaskURL)
  {
    nameImageMaskURL2 = [self nameImageMaskURL];
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

    v10 = [v4 assetHandleForCKAssetURLString:nameImageMaskURL2 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)generateCoverImageAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  coverImageURL = [self coverImageURL];
  if (coverImageURL)
  {
    coverImageURL2 = [self coverImageURL];
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

    v10 = [v4 assetHandleForCKAssetURLString:coverImageURL2 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)generateFeedNavImageAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  feedNavImageURL = [self feedNavImageURL];
  if (feedNavImageURL)
  {
    feedNavImageURL2 = [self feedNavImageURL];
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

    v10 = [v4 assetHandleForCKAssetURLString:feedNavImageURL2 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)generateExploreTileImageAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  exploreTileImageURL = [self exploreTileImageURL];
  if (exploreTileImageURL)
  {
    exploreTileImageURL2 = [self exploreTileImageURL];
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

    v10 = [v4 assetHandleForCKAssetURLString:exploreTileImageURL2 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)generateNavigationChromeBackgroundImageHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  navigationChromeBackgroundImageURL = [self navigationChromeBackgroundImageURL];
  if (navigationChromeBackgroundImageURL)
  {
    navigationChromeBackgroundImageURL2 = [self navigationChromeBackgroundImageURL];
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

    v10 = [v4 assetHandleForCKAssetURLString:navigationChromeBackgroundImageURL2 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)generateNavigationChromeBackgroundImageCompactHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  navigationChromeBackgroundImageCompactURL = [self navigationChromeBackgroundImageCompactURL];
  if (navigationChromeBackgroundImageCompactURL)
  {
    navigationChromeBackgroundImageCompactURL2 = [self navigationChromeBackgroundImageCompactURL];
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

    v10 = [v4 assetHandleForCKAssetURLString:navigationChromeBackgroundImageCompactURL2 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)generateNavigationChromeBackgroundImageLargeHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  navigationChromeBackgroundImageLargeURL = [self navigationChromeBackgroundImageLargeURL];
  if (navigationChromeBackgroundImageLargeURL)
  {
    navigationChromeBackgroundImageLargeURL2 = [self navigationChromeBackgroundImageLargeURL];
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

    v10 = [v4 assetHandleForCKAssetURLString:navigationChromeBackgroundImageLargeURL2 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)generateNavigationChromeBackgroundDarkModeImageHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  navigationChromeBackgroundDarkModeImageURL = [self navigationChromeBackgroundDarkModeImageURL];
  if (navigationChromeBackgroundDarkModeImageURL)
  {
    navigationChromeBackgroundDarkModeImageURL2 = [self navigationChromeBackgroundDarkModeImageURL];
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

    v10 = [v4 assetHandleForCKAssetURLString:navigationChromeBackgroundDarkModeImageURL2 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)generateNavigationChromeBackgroundDarkModeImageCompactHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  navigationChromeBackgroundDarkModeImageCompactURL = [self navigationChromeBackgroundDarkModeImageCompactURL];
  if (navigationChromeBackgroundDarkModeImageCompactURL)
  {
    navigationChromeBackgroundDarkModeImageCompactURL2 = [self navigationChromeBackgroundDarkModeImageCompactURL];
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

    v10 = [v4 assetHandleForCKAssetURLString:navigationChromeBackgroundDarkModeImageCompactURL2 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)generateNavigationChromeBackgroundDarkModeImageLargeHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  navigationChromeBackgroundDarkModeImageLargeURL = [self navigationChromeBackgroundDarkModeImageLargeURL];
  if (navigationChromeBackgroundDarkModeImageLargeURL)
  {
    navigationChromeBackgroundDarkModeImageLargeURL2 = [self navigationChromeBackgroundDarkModeImageLargeURL];
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

    v10 = [v4 assetHandleForCKAssetURLString:navigationChromeBackgroundDarkModeImageLargeURL2 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)generateThumbnailImageAssetHandleForDate:()FCAdditions difficulty:assetManager:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  imagesResourceID = [self imagesResourceID];
  if (imagesResourceID)
  {
    v12 = [FCPuzzleThumbnailURLProtocol URLForResourceMapID:imagesResourceID publishDate:v8 difficulty:v9];
    base = [self base];
    cacheLifetimeHint = [base cacheLifetimeHint];
    if (cacheLifetimeHint == 2)
    {
      v15 = 2;
    }

    else
    {
      v15 = cacheLifetimeHint == 1;
    }

    v16 = [v10 assetHandleForURL:v12 lifetimeHint:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end