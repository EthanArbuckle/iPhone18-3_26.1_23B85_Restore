@interface FCPuzzleTypeOverrides
- (FCPuzzleTypeOverrides)initWithThemeColor:(id)color darkStyleThemeColor:(id)themeColor exploreTileImageAssetHandle:(id)handle;
@end

@implementation FCPuzzleTypeOverrides

- (FCPuzzleTypeOverrides)initWithThemeColor:(id)color darkStyleThemeColor:(id)themeColor exploreTileImageAssetHandle:(id)handle
{
  colorCopy = color;
  themeColorCopy = themeColor;
  handleCopy = handle;
  v14.receiver = self;
  v14.super_class = FCPuzzleTypeOverrides;
  v11 = [(FCPuzzleTypeOverrides *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(FCPuzzleTypeOverrides *)v11 setThemeColor:colorCopy];
    [(FCPuzzleTypeOverrides *)v12 setDarkStyleThemeColor:themeColorCopy];
    [(FCPuzzleTypeOverrides *)v12 setExploreTileImageAssetHandle:handleCopy];
  }

  return v12;
}

@end