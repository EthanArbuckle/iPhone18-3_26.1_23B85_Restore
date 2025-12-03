@interface _SFTouchIconCache
+ (id)_generateDefaultFavoritesIcon;
+ (id)_monogramConfiguration;
- (BOOL)canHandleRequest:(id)request;
- (id)_operationWithRequest:(id)request completionHandler:(id)handler;
- (void)_didLoadTouchIcon:(id)icon withCacheSettingsEntry:(id)entry;
@end

@implementation _SFTouchIconCache

- (id)_operationWithRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  v7 = [(WBSTouchIconFetchOperation *)[_SFTouchIconFetchOperation alloc] initWithRequest:requestCopy completionHandler:handlerCopy];

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
  defaultBackgroundColor = [self defaultBackgroundColor];
  v9 = [v3 configurationWithIconSize:0 fontSize:0 fontWeight:defaultBackgroundColor fontDesign:v5 baselineOffset:v7 backgroundColor:44.0 cornerRadius:{20.0, 0.0}];

  return v9;
}

- (BOOL)canHandleRequest:(id)request
{
  requestCopy = request;
  v7.receiver = self;
  v7.super_class = _SFTouchIconCache;
  if ([(WBSTouchIconCache *)&v7 canHandleRequest:requestCopy])
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

- (void)_didLoadTouchIcon:(id)icon withCacheSettingsEntry:(id)entry
{
  iconCopy = icon;
  entryCopy = entry;
  if (iconCopy)
  {
    v10.receiver = self;
    v10.super_class = _SFTouchIconCache;
    [(WBSTouchIconCache *)&v10 _didLoadTouchIcon:iconCopy withCacheSettingsEntry:entryCopy];
    safari_transparencyAnalysisResult = [iconCopy safari_transparencyAnalysisResult];
    if (safari_transparencyAnalysisResult != [entryCopy transparencyAnalysisResult])
    {
      v9 = [entryCopy entryWithTransparencyAnalysisResult:safari_transparencyAnalysisResult];
      [(WBSTouchIconCache *)self saveTouchIconSettings:v9 touchIcon:iconCopy];
    }
  }
}

@end