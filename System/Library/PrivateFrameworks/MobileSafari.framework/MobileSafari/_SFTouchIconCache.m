@interface _SFTouchIconCache
+ (id)_generateDefaultFavoritesIcon;
+ (id)_monogramConfiguration;
- (BOOL)canHandleRequest:(id)a3;
- (id)_operationWithRequest:(id)a3 completionHandler:(id)a4;
- (void)_didLoadTouchIcon:(id)a3 withCacheSettingsEntry:(id)a4;
@end

@implementation _SFTouchIconCache

- (id)_operationWithRequest:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(WBSTouchIconFetchOperation *)[_SFTouchIconFetchOperation alloc] initWithRequest:v6 completionHandler:v5];

  return v7;
}

+ (id)_generateDefaultFavoritesIcon
{
  +[_SFSiteIcon defaultSize];
  v3 = v2;
  v5 = v4;
  v6 = +[_SFSiteIcon defaultGlyph];
  [v6 size];
  v8 = v3 - v7;
  [v6 size];
  v10 = v5 - v9;
  v11 = _SFRoundFloatToPixels(v10 * 0.5);
  v12 = _SFRoundFloatToPixels(v8 * 0.5);
  v13 = [v6 _imagePaddedByInsets:{v11, v12, v10 - v11, v8 - v12}];

  return v13;
}

+ (id)_monogramConfiguration
{
  v3 = MEMORY[0x1E69C9880];
  +[_SFSiteIcon defaultSize];
  v5 = v4;
  v7 = v6;
  v8 = [a1 defaultBackgroundColor];
  v9 = [v3 configurationWithIconSize:0 fontSize:0 fontWeight:v8 fontDesign:v5 baselineOffset:v7 backgroundColor:44.0 cornerRadius:{20.0, 0.0}];

  return v9;
}

- (BOOL)canHandleRequest:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _SFTouchIconCache;
  if ([(WBSTouchIconCache *)&v7 canHandleRequest:v4])
  {
    objc_opt_class();
    v5 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)_didLoadTouchIcon:(id)a3 withCacheSettingsEntry:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v10.receiver = self;
    v10.super_class = _SFTouchIconCache;
    [(WBSTouchIconCache *)&v10 _didLoadTouchIcon:v6 withCacheSettingsEntry:v7];
    v8 = [v6 safari_transparencyAnalysisResult];
    if (v8 != [v7 transparencyAnalysisResult])
    {
      v9 = [v7 entryWithTransparencyAnalysisResult:v8];
      [(WBSTouchIconCache *)self saveTouchIconSettings:v9 touchIcon:v6];
    }
  }
}

@end