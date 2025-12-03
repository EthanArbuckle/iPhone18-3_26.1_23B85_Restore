@interface _SFSiteIcon
+ (CGSize)defaultSize;
+ (CGSize)minimumAcceptableSizeForDownloadedIcon;
+ (CGSize)sizeForIconSize:(int64_t)size;
+ (double)fontPointSizeForIconSize:(int64_t)size;
+ (double)labelWidthForIconSize:(int64_t)size;
+ (id)defaultGlyph;
+ (id)precompositedDefaultIcon;
+ (int64_t)_defaultIconSize;
@end

@implementation _SFSiteIcon

+ (int64_t)_defaultIconSize
{
  if (_SFDeviceIsPad())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (CGSize)defaultSize
{
  _defaultIconSize = [self _defaultIconSize];

  [self sizeForIconSize:_defaultIconSize];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)minimumAcceptableSizeForDownloadedIcon
{
  v2 = 57.0;
  v3 = 57.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)sizeForIconSize:(int64_t)size
{
  v3 = 32.0;
  if (size == 1)
  {
    v3 = 60.0;
  }

  if (size == 2)
  {
    v3 = 76.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

+ (double)fontPointSizeForIconSize:(int64_t)size
{
  result = 37.0;
  if (size != 1)
  {
    result = 18.0;
  }

  if (size == 2)
  {
    return 44.0;
  }

  return result;
}

+ (double)labelWidthForIconSize:(int64_t)size
{
  result = 46.0;
  if (size != 1)
  {
    result = 22.0;
  }

  if (size == 2)
  {
    return 56.0;
  }

  return result;
}

+ (id)defaultGlyph
{
  [self fontPointSizeForIconSize:{objc_msgSend(self, "_defaultIconSize")}];
  v2 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:3 weight:2 scale:?];
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"safari" withConfiguration:v2];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v5 = [v3 flattenedImageWithColor:whiteColor];

  v6 = [v5 imageWithRenderingMode:1];

  return v6;
}

+ (id)precompositedDefaultIcon
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39___SFSiteIcon_precompositedDefaultIcon__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (precompositedDefaultIcon_onceToken != -1)
  {
    dispatch_once(&precompositedDefaultIcon_onceToken, block);
  }

  v2 = precompositedDefaultIcon_icon;

  return v2;
}

@end