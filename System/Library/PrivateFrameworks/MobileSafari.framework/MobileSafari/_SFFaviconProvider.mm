@interface _SFFaviconProvider
+ (id)_faviconWithSystemImageNamed:(id)named;
- (_SFFaviconProvider)initWithPersistenceBaseURL:(id)l persistenceName:(id)name preferredIconSize:(CGSize)size atScale:(double)scale allScales:(id)scales isReadOnly:(BOOL)only shouldCheckIntegrityWhenOpeningDatabaseBlock:(id)block;
- (id)fallbackIconForRequest:(id)request;
@end

@implementation _SFFaviconProvider

+ (id)_faviconWithSystemImageNamed:(id)named
{
  v3 = MEMORY[0x1E69DCAD8];
  v4 = *MEMORY[0x1E69DDCF8];
  namedCopy = named;
  v6 = [v3 configurationWithTextStyle:v4 scale:1];
  v7 = [MEMORY[0x1E69DCAB8] _systemImageNamed:namedCopy withConfiguration:v6];

  return v7;
}

- (_SFFaviconProvider)initWithPersistenceBaseURL:(id)l persistenceName:(id)name preferredIconSize:(CGSize)size atScale:(double)scale allScales:(id)scales isReadOnly:(BOOL)only shouldCheckIntegrityWhenOpeningDatabaseBlock:(id)block
{
  v14.receiver = self;
  v14.super_class = _SFFaviconProvider;
  scale = [(WBSFaviconProvider *)&v14 initWithPersistenceBaseURL:l persistenceName:name preferredIconSize:scales atScale:only allScales:block isReadOnly:size.width shouldCheckIntegrityWhenOpeningDatabaseBlock:size.height, scale];
  if (scale)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    monogramTitleToImageCache = scale->_monogramTitleToImageCache;
    scale->_monogramTitleToImageCache = v10;

    v12 = scale;
  }

  return scale;
}

- (id)fallbackIconForRequest:(id)request
{
  requestCopy = request;
  fallbackType = [requestCopy fallbackType];
  if (fallbackType == 2)
  {
    v7 = MEMORY[0x1E69C9888];
    v8 = [requestCopy url];
    v9 = [v7 monogramStringForURL:v8];

    v6 = [(NSCache *)self->_monogramTitleToImageCache objectForKey:v9];
    if (!v6)
    {
      v10 = MEMORY[0x1E69C9888];
      v11 = [requestCopy url];
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

  else if (fallbackType == 1)
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