@interface _SFFaviconProvider
+ (id)_faviconWithSystemImageNamed:(id)a3;
- (_SFFaviconProvider)initWithPersistenceBaseURL:(id)a3 persistenceName:(id)a4 preferredIconSize:(CGSize)a5 atScale:(double)a6 allScales:(id)a7 isReadOnly:(BOOL)a8 shouldCheckIntegrityWhenOpeningDatabaseBlock:(id)a9;
- (id)fallbackIconForRequest:(id)a3;
@end

@implementation _SFFaviconProvider

+ (id)_faviconWithSystemImageNamed:(id)a3
{
  v3 = MEMORY[0x1E69DCAD8];
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = a3;
  v6 = [v3 configurationWithTextStyle:v4 scale:1];
  v7 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v5 withConfiguration:v6];

  return v7;
}

- (_SFFaviconProvider)initWithPersistenceBaseURL:(id)a3 persistenceName:(id)a4 preferredIconSize:(CGSize)a5 atScale:(double)a6 allScales:(id)a7 isReadOnly:(BOOL)a8 shouldCheckIntegrityWhenOpeningDatabaseBlock:(id)a9
{
  v14.receiver = self;
  v14.super_class = _SFFaviconProvider;
  v9 = [(WBSFaviconProvider *)&v14 initWithPersistenceBaseURL:a3 persistenceName:a4 preferredIconSize:a7 atScale:a8 allScales:a9 isReadOnly:a5.width shouldCheckIntegrityWhenOpeningDatabaseBlock:a5.height, a6];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    monogramTitleToImageCache = v9->_monogramTitleToImageCache;
    v9->_monogramTitleToImageCache = v10;

    v12 = v9;
  }

  return v9;
}

- (id)fallbackIconForRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 fallbackType];
  if (v5 == 2)
  {
    v7 = MEMORY[0x1E69C9888];
    v8 = [v4 url];
    v9 = [v7 monogramStringForURL:v8];

    v6 = [(NSCache *)self->_monogramTitleToImageCache objectForKey:v9];
    if (!v6)
    {
      v10 = MEMORY[0x1E69C9888];
      v11 = [v4 url];
      v12 = +[_SFSiteIcon defaultIconKeyColor];
      v6 = [v10 monogramWithTitle:0 url:v11 backgroundColor:v12];

      if (v6)
      {
        [v6 sf_setIsMonogram:1];
        [(NSCache *)self->_monogramTitleToImageCache setObject:v6 forKey:v9];
      }

      else
      {
        v6 = +[_SFFaviconProvider fallbackFavicon];
      }
    }
  }

  else if (v5 == 1)
  {
    v6 = +[_SFFaviconProvider fallbackFavicon];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end