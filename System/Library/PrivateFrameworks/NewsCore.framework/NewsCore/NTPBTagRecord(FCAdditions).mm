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
  v5 = [a1 logoURL];
  if (v5)
  {
    v6 = [a1 logoURL];
    v7 = [a1 base];
    v8 = [v7 cacheLifetimeHint];
    if (v8 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = v8 == 1;
    }

    v10 = [v4 assetHandleForCKAssetURLString:v6 lifetimeHint:v9];
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
  v5 = [a1 nameImageURL];
  if (v5)
  {
    v6 = [a1 nameImageURL];
    v7 = [a1 base];
    v8 = [v7 cacheLifetimeHint];
    if (v8 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = v8 == 1;
    }

    v10 = [v4 assetHandleForCKAssetURLString:v6 lifetimeHint:v9];
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
  v5 = [a1 nameImageCompactURL];
  if (v5)
  {
    v6 = [a1 nameImageCompactURL];
    v7 = [a1 base];
    v8 = [v7 cacheLifetimeHint];
    if (v8 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = v8 == 1;
    }

    v10 = [v4 assetHandleForCKAssetURLString:v6 lifetimeHint:v9];
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
  v5 = [a1 nameImageForDarkBackgroundURL];
  if (v5)
  {
    v6 = [a1 nameImageForDarkBackgroundURL];
    v7 = [a1 base];
    v8 = [v7 cacheLifetimeHint];
    if (v8 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = v8 == 1;
    }

    v10 = [v4 assetHandleForCKAssetURLString:v6 lifetimeHint:v9];
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
  v5 = [a1 coverImageURL];
  if (v5)
  {
    v6 = [a1 coverImageURL];
    v7 = [a1 base];
    v8 = [v7 cacheLifetimeHint];
    if (v8 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = v8 == 1;
    }

    v10 = [v4 assetHandleForCKAssetURLString:v6 lifetimeHint:v9];
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

- (id)generateFeedNavImageAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  v5 = [a1 feedNavImageURL];
  if (v5)
  {
    v6 = [a1 feedNavImageURL];
    v7 = [a1 base];
    v8 = [v7 cacheLifetimeHint];
    if (v8 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = v8 == 1;
    }

    v10 = [v4 assetHandleForCKAssetURLString:v6 lifetimeHint:v9];
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
  v5 = [a1 feedNavImageHQURL];
  if (v5)
  {
    v6 = [a1 feedNavImageHQURL];
    v7 = [a1 base];
    v8 = [v7 cacheLifetimeHint];
    if (v8 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = v8 == 1;
    }

    v10 = [v4 assetHandleForCKAssetURLString:v6 lifetimeHint:v9];
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

- (id)generateNameImageLargeMaskAssetHandleForURLString:()FCAdditions withAssetManager:
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

- (id)generateNavigationChromeBackgroundImageAssetHandleForURLString:()FCAdditions withAssetManager:
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

- (id)generateNavigationChromeBackgroundImageCompactAssetHandleForURLString:()FCAdditions withAssetManager:
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

- (id)generateNavigationChromeBackgroundImageLargeAssetHandleForURLString:()FCAdditions withAssetManager:
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

- (id)generateSportsLogoImageAssetHandleWithAssetManager:()FCAdditions
{
  v4 = a3;
  v5 = [a1 sportsLogoImageURL];

  if (v5)
  {
    v6 = [a1 sportsLogoImageURL];
    v7 = [a1 base];
    v8 = [v7 cacheLifetimeHint];
    if (v8 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = v8 == 1;
    }

    v10 = [v4 assetHandleForCKAssetURLString:v6 lifetimeHint:v9];
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
  v5 = [a1 sportsLogoImageCompactURL];

  if (v5)
  {
    v6 = [a1 sportsLogoImageCompactURL];
    v7 = [a1 base];
    v8 = [v7 cacheLifetimeHint];
    if (v8 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = v8 == 1;
    }

    v10 = [v4 assetHandleForCKAssetURLString:v6 lifetimeHint:v9];
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
  v5 = [a1 sportsLogoImageLargeURL];

  if (v5)
  {
    v6 = [a1 sportsLogoImageLargeURL];
    v7 = [a1 base];
    v8 = [v7 cacheLifetimeHint];
    if (v8 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = v8 == 1;
    }

    v10 = [v4 assetHandleForCKAssetURLString:v6 lifetimeHint:v9];
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
  v5 = [a1 sportsLogoAltImageURL];

  if (v5)
  {
    v6 = [a1 sportsLogoAltImageURL];
    v7 = [a1 base];
    v8 = [v7 cacheLifetimeHint];
    if (v8 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = v8 == 1;
    }

    v10 = [v4 assetHandleForCKAssetURLString:v6 lifetimeHint:v9];
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
  v5 = [a1 sportsLogoAltImageCompactURL];

  if (v5)
  {
    v6 = [a1 sportsLogoAltImageCompactURL];
    v7 = [a1 base];
    v8 = [v7 cacheLifetimeHint];
    if (v8 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = v8 == 1;
    }

    v10 = [v4 assetHandleForCKAssetURLString:v6 lifetimeHint:v9];
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
  v5 = [a1 sportsLogoAltImageLargeURL];

  if (v5)
  {
    v6 = [a1 sportsLogoAltImageLargeURL];
    v7 = [a1 base];
    v8 = [v7 cacheLifetimeHint];
    if (v8 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = v8 == 1;
    }

    v10 = [v4 assetHandleForCKAssetURLString:v6 lifetimeHint:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end