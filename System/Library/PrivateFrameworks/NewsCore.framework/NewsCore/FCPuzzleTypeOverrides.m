@interface FCPuzzleTypeOverrides
- (FCPuzzleTypeOverrides)initWithThemeColor:(id)a3 darkStyleThemeColor:(id)a4 exploreTileImageAssetHandle:(id)a5;
@end

@implementation FCPuzzleTypeOverrides

- (FCPuzzleTypeOverrides)initWithThemeColor:(id)a3 darkStyleThemeColor:(id)a4 exploreTileImageAssetHandle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = FCPuzzleTypeOverrides;
  v11 = [(FCPuzzleTypeOverrides *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(FCPuzzleTypeOverrides *)v11 setThemeColor:v8];
    [(FCPuzzleTypeOverrides *)v12 setDarkStyleThemeColor:v9];
    [(FCPuzzleTypeOverrides *)v12 setExploreTileImageAssetHandle:v10];
  }

  return v12;
}

@end