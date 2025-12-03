@interface CUINamedLookup
- (BOOL)_cacheRenditionProperties;
- (BOOL)isEqual:(id)equal;
- (BOOL)isTintable;
- (CUINamedLookup)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme;
- (NSString)appearance;
- (NSString)renditionName;
- (id)_renditionForSpecificKey:(id)key;
- (int64_t)appearanceIdentifier;
- (int64_t)displayGamut;
- (int64_t)graphicsClass;
- (int64_t)layoutDirection;
- (int64_t)localization;
- (int64_t)memoryClass;
- (void)dealloc;
@end

@implementation CUINamedLookup

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUINamedLookup;
  [(CUINamedLookup *)&v3 dealloc];
}

- (BOOL)_cacheRenditionProperties
{
  v3 = _LookupStructuredThemeProvider(self->_storageRef, a2);
  self->_signature = [v3 copyLookupKeySignatureForKey:{-[CUIRenditionKey keyList](self->_key, "keyList")}];
  self->_distilledInVersion = [v3 distilledInCoreUIVersion];
  return 1;
}

- (int64_t)layoutDirection
{
  renditionKey = [(CUINamedLookup *)self renditionKey];

  return [(CUIRenditionKey *)renditionKey themeDirection];
}

- (int64_t)appearanceIdentifier
{
  renditionKey = [(CUINamedLookup *)self renditionKey];

  return [(CUIRenditionKey *)renditionKey themeAppearance];
}

- (NSString)appearance
{
  v3 = _LookupStructuredThemeProvider(self->_storageRef, a2);
  v4 = [v3 nameForAppearanceIdentifier:{-[CUIRenditionKey themeAppearance](-[CUINamedLookup renditionKey](self, "renditionKey"), "themeAppearance")}];
  if ([(NSString *)v4 length])
  {
    return v4;
  }

  return [v3 defaultAppearanceName];
}

- (CUINamedLookup)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme
{
  v16.receiver = self;
  v16.super_class = CUINamedLookup;
  v8 = [(CUINamedLookup *)&v16 init];
  if (v8)
  {
    v8->_name = [name copy];
    v8->_key = [key copy];
    v8->_storageRef = theme;
    if ([(CUINamedLookup *)v8 _cacheRenditionProperties])
    {
      v8->_lock._os_unfair_lock_opaque = 0;
    }

    else
    {
      [(CUINamedLookup *)v8 key];
      _CUILog(4, "CoreUI: unable to locate asset '%@' key:%@ releasing", v9, v10, v11, v12, v13, v14, name);

      return 0;
    }
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0 || *(equal + 4) != self->_storageRef)
  {
    return 0;
  }

  v5 = *(equal + 3);
  signature = self->_signature;

  return [v5 isEqualToString:signature];
}

- (id)_renditionForSpecificKey:(id)key
{
  v5 = _LookupStructuredThemeProvider(self->_storageRef, a2);
  keyList = [key keyList];
  signature = self->_signature;

  return [v5 renditionWithKey:keyList usingKeySignature:signature];
}

- (NSString)renditionName
{
  _rendition = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)_rendition name];
}

- (BOOL)isTintable
{
  _rendition = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)_rendition isTintable];
}

- (int64_t)memoryClass
{
  renditionKey = [(CUINamedLookup *)self renditionKey];

  return [(CUIRenditionKey *)renditionKey themeMemoryClass];
}

- (int64_t)graphicsClass
{
  renditionKey = [(CUINamedLookup *)self renditionKey];

  return [(CUIRenditionKey *)renditionKey themeGraphicsClass];
}

- (int64_t)displayGamut
{
  renditionKey = [(CUINamedLookup *)self renditionKey];

  return [(CUIRenditionKey *)renditionKey themeDisplayGamut];
}

- (int64_t)localization
{
  renditionKey = [(CUINamedLookup *)self renditionKey];

  return [(CUIRenditionKey *)renditionKey themeLocalization];
}

@end