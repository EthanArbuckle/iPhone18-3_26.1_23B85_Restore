@interface NTPBTagRecord(FCAdditions)
- (id)generateCoverImageAssetHandleForURLString:()FCAdditions withAssetManager:;
- (id)generateCoverImageAssetHandleWithAssetManager:()FCAdditions;
- (id)generateFeedNavImageAssetHandleWithAssetManager:()FCAdditions;
- (id)generateFeedNavImageHQAssetHandleWithAssetManager:()FCAdditions;
- (id)generateLogoImageAssetHandleWithAssetManager:()FCAdditions;
- (id)generateNameImageAssetHandleWithAssetManager:()FCAdditions;
- (id)generateNameImageCompactAssetHandleWithAssetManager:()FCAdditions;
- (id)generateNameImageForDarkBackgroundAssetHandleWithAssetManager:()FCAdditions;
- (id)generateNameImageLargeAssetHandleForURLString:()FCAdditions withAssetManager:;
- (id)generateNameImageLargeMaskAssetHandleForURLString:()FCAdditions withAssetManager:;
- (id)generateNameImageMaskAssetHandleForURL:()FCAdditions withAssetManager:;
- (id)generateNavigationChromeBackgroundImageAssetHandleForURLString:()FCAdditions withAssetManager:;
- (id)generateNavigationChromeBackgroundImageCompactAssetHandleForURLString:()FCAdditions withAssetManager:;
- (id)generateNavigationChromeBackgroundImageLargeAssetHandleForURLString:()FCAdditions withAssetManager:;
- (id)generateSportsLogoAltImageAssetHandleWithAssetManager:()FCAdditions;
- (id)generateSportsLogoAltImageCompactAssetHandleWithAssetManager:()FCAdditions;
- (id)generateSportsLogoAltImageLargeAssetHandleWithAssetManager:()FCAdditions;
- (id)generateSportsLogoImageAssetHandleWithAssetManager:()FCAdditions;
- (id)generateSportsLogoImageCompactAssetHandleWithAssetManager:()FCAdditions;
- (id)generateSportsLogoImageLargeAssetHandleWithAssetManager:()FCAdditions;
@end

@implementation NTPBTagRecord(FCAdditions)

- (id)generateLogoImageAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  logoURL = [self logoURL];
  if (logoURL)
  {
    logoURL2 = [self logoURL];
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

    v10 = [v4 assetHandleForCKAssetURLString:logoURL2 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

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

- (id)generateNameImageMaskAssetHandleForURL:()FCAdditions withAssetManager:
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "assetManager"];
    *buf = 136315906;
    v16 = "[NTPBTagRecord(FCAdditions) generateNameImageMaskAssetHandleForURL:withAssetManager:]";
    v17 = 2080;
    v18 = "NTPBTagRecord+FCAdditions.m";
    v19 = 1024;
    v20 = 41;
    v21 = 2114;
    v22 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v6)
    {
      goto LABEL_4;
    }
  }

  else if (v6)
  {
LABEL_4:
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

    v11 = [v7 assetHandleForCKAssetURLString:v6 lifetimeHint:v10];

    goto LABEL_10;
  }

  v11 = 0;
LABEL_10:

  v13 = *MEMORY[0x1E69E9840];

  return v11;
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

- (id)generateCoverImageAssetHandleForURLString:()FCAdditions withAssetManager:
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

- (id)generateFeedNavImageHQAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  feedNavImageHQURL = [self feedNavImageHQURL];
  if (feedNavImageHQURL)
  {
    feedNavImageHQURL2 = [self feedNavImageHQURL];
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

    v10 = [v4 assetHandleForCKAssetURLString:feedNavImageHQURL2 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)generateNameImageLargeAssetHandleForURLString:()FCAdditions withAssetManager:
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

- (id)generateNameImageLargeMaskAssetHandleForURLString:()FCAdditions withAssetManager:
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

- (id)generateNavigationChromeBackgroundImageAssetHandleForURLString:()FCAdditions withAssetManager:
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

- (id)generateNavigationChromeBackgroundImageCompactAssetHandleForURLString:()FCAdditions withAssetManager:
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

- (id)generateNavigationChromeBackgroundImageLargeAssetHandleForURLString:()FCAdditions withAssetManager:
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

- (id)generateSportsLogoImageAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  sportsLogoImageURL = [self sportsLogoImageURL];

  if (sportsLogoImageURL)
  {
    sportsLogoImageURL2 = [self sportsLogoImageURL];
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

    v10 = [v4 assetHandleForCKAssetURLString:sportsLogoImageURL2 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)generateSportsLogoImageCompactAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  sportsLogoImageCompactURL = [self sportsLogoImageCompactURL];

  if (sportsLogoImageCompactURL)
  {
    sportsLogoImageCompactURL2 = [self sportsLogoImageCompactURL];
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

    v10 = [v4 assetHandleForCKAssetURLString:sportsLogoImageCompactURL2 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)generateSportsLogoImageLargeAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  sportsLogoImageLargeURL = [self sportsLogoImageLargeURL];

  if (sportsLogoImageLargeURL)
  {
    sportsLogoImageLargeURL2 = [self sportsLogoImageLargeURL];
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

    v10 = [v4 assetHandleForCKAssetURLString:sportsLogoImageLargeURL2 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)generateSportsLogoAltImageAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  sportsLogoAltImageURL = [self sportsLogoAltImageURL];

  if (sportsLogoAltImageURL)
  {
    sportsLogoAltImageURL2 = [self sportsLogoAltImageURL];
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

    v10 = [v4 assetHandleForCKAssetURLString:sportsLogoAltImageURL2 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)generateSportsLogoAltImageCompactAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  sportsLogoAltImageCompactURL = [self sportsLogoAltImageCompactURL];

  if (sportsLogoAltImageCompactURL)
  {
    sportsLogoAltImageCompactURL2 = [self sportsLogoAltImageCompactURL];
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

    v10 = [v4 assetHandleForCKAssetURLString:sportsLogoAltImageCompactURL2 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)generateSportsLogoAltImageLargeAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  sportsLogoAltImageLargeURL = [self sportsLogoAltImageLargeURL];

  if (sportsLogoAltImageLargeURL)
  {
    sportsLogoAltImageLargeURL2 = [self sportsLogoAltImageLargeURL];
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

    v10 = [v4 assetHandleForCKAssetURLString:sportsLogoAltImageLargeURL2 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end