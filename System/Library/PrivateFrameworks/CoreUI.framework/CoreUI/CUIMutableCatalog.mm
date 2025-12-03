@interface CUIMutableCatalog
- (CUIMutableCatalog)initWithName:(id)name;
- (id)_baseKeyForName:(id)name;
- (void)dealloc;
- (void)insertCGImage:(CGImage *)image name:(id)name scale:(double)scale idiom:(int64_t)idiom subtype:(int64_t)subtype;
- (void)insertCGImage:(CGImage *)image withName:(id)name andDescription:(id)description;
- (void)removeImageNamed:(id)named scale:(double)scale idiom:(int64_t)idiom subtype:(int64_t)subtype;
- (void)removeImageNamed:(id)named withDescription:(id)description;
- (void)removeImagesNamed:(id)named;
@end

@implementation CUIMutableCatalog

- (CUIMutableCatalog)initWithName:(id)name
{
  v12.receiver = self;
  v12.super_class = CUIMutableCatalog;
  v13 = 0;
  v4 = [(CUICatalog *)&v12 init];
  [(CUICatalog *)v4 setStorageRef:[CUIThemeFacet themeNamed:name forBundleIdentifier:kCUIMutableStructureThemeStoreBundlePrefix error:&v13]];
  if (![(CUICatalog *)v4 storageRef])
  {
    _CUILog(4, "[CUIMutableCatalog init] got error: %@", v5, v6, v7, v8, v9, v10, v13);

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  [(CUICatalog *)self clearCachedImageResources];
  v3.receiver = self;
  v3.super_class = CUIMutableCatalog;
  [(CUICatalog *)&v3 dealloc];
}

- (id)_baseKeyForName:(id)name
{
  result = [-[CUICatalog _themeStore](self "_themeStore")];
  if (result)
  {
    v4 = [[CUIRenditionKey alloc] initWithKeyList:result];

    return v4;
  }

  return result;
}

- (void)insertCGImage:(CGImage *)image name:(id)name scale:(double)scale idiom:(int64_t)idiom subtype:(int64_t)subtype
{
  v13 = objc_alloc_init(CUINamedImageDescription);
  [(CUINamedImageDescription *)v13 setScale:scale];
  [(CUINamedImageDescription *)v13 setIdiom:idiom];
  [(CUINamedImageDescription *)v13 setSubtype:subtype];
  [(CUIMutableCatalog *)self insertCGImage:image withName:name andDescription:v13];
}

- (void)removeImageNamed:(id)named scale:(double)scale idiom:(int64_t)idiom subtype:(int64_t)subtype
{
  v11 = objc_alloc_init(CUINamedImageDescription);
  [(CUINamedImageDescription *)v11 setScale:scale];
  [(CUINamedImageDescription *)v11 setIdiom:idiom];
  [(CUINamedImageDescription *)v11 setSubtype:subtype];
  [(CUIMutableCatalog *)self removeImageNamed:named withDescription:v11];
}

- (void)insertCGImage:(CGImage *)image withName:(id)name andDescription:(id)description
{
  _themeStore = [(CUICatalog *)self _themeStore];
  if ((*(self + 88) & 1) == 0)
  {
    *(self + 88) |= 1u;
    v11 = objc_opt_respondsToSelector() & 1;
    v12 = v11 ? 2 : 0;
    *(self + 88) = *(self + 88) & 0xFD | v12;
    if (!v11)
    {
      v13 = NSStringFromSelector(a2);
      NSStringFromSelector(a2);
      _CUILog(4, "[CUIMutableCatalog %@] themeStore doesn't respond to %@ ", v14, v15, v16, v17, v18, v19, v13);
    }
  }

  if ((*(self + 88) & 2) != 0)
  {

    [_themeStore insertCGImage:image withName:name andDescription:description];
  }
}

- (void)removeImageNamed:(id)named withDescription:(id)description
{
  _themeStore = [(CUICatalog *)self _themeStore];
  if ((*(self + 88) & 1) == 0)
  {
    *(self + 88) |= 1u;
    v9 = objc_opt_respondsToSelector() & 1;
    v10 = v9 ? 2 : 0;
    *(self + 88) = *(self + 88) & 0xFD | v10;
    if (!v9)
    {
      v11 = NSStringFromSelector(a2);
      NSStringFromSelector(a2);
      _CUILog(4, "[CUIMutableCatalog %@] themeStore doesn't respond to %@ ", v12, v13, v14, v15, v16, v17, v11);
    }
  }

  if ((*(self + 88) & 2) != 0)
  {

    [_themeStore removeImageNamed:named withDescription:description];
  }
}

- (void)removeImagesNamed:(id)named
{
  _themeStore = [(CUICatalog *)self _themeStore];
  if ((*(self + 88) & 1) == 0)
  {
    *(self + 88) |= 1u;
    v7 = objc_opt_respondsToSelector() & 1;
    v8 = v7 ? 2 : 0;
    *(self + 88) = *(self + 88) & 0xFD | v8;
    if (!v7)
    {
      v9 = NSStringFromSelector(a2);
      NSStringFromSelector(a2);
      _CUILog(4, "[CUIMutableCatalog %@] themeStore doesn't respond to %@ ", v10, v11, v12, v13, v14, v15, v9);
    }
  }

  if ((*(self + 88) & 2) != 0)
  {

    [_themeStore removeImagesNamed:named];
  }
}

@end