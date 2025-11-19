@interface CUINamedLookup
- (BOOL)_cacheRenditionProperties;
- (BOOL)isEqual:(id)a3;
- (BOOL)isTintable;
- (CUINamedLookup)initWithName:(id)a3 usingRenditionKey:(id)a4 fromTheme:(unint64_t)a5;
- (NSString)appearance;
- (NSString)renditionName;
- (id)_renditionForSpecificKey:(id)a3;
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
  v2 = [(CUINamedLookup *)self renditionKey];

  return [(CUIRenditionKey *)v2 themeDirection];
}

- (int64_t)appearanceIdentifier
{
  v2 = [(CUINamedLookup *)self renditionKey];

  return [(CUIRenditionKey *)v2 themeAppearance];
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

- (CUINamedLookup)initWithName:(id)a3 usingRenditionKey:(id)a4 fromTheme:(unint64_t)a5
{
  v16.receiver = self;
  v16.super_class = CUINamedLookup;
  v8 = [(CUINamedLookup *)&v16 init];
  if (v8)
  {
    v8->_name = [a3 copy];
    v8->_key = [a4 copy];
    v8->_storageRef = a5;
    if ([(CUINamedLookup *)v8 _cacheRenditionProperties])
    {
      v8->_lock._os_unfair_lock_opaque = 0;
    }

    else
    {
      [(CUINamedLookup *)v8 key];
      _CUILog(4, "CoreUI: unable to locate asset '%@' key:%@ releasing", v9, v10, v11, v12, v13, v14, a3);

      return 0;
    }
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0 || *(a3 + 4) != self->_storageRef)
  {
    return 0;
  }

  v5 = *(a3 + 3);
  signature = self->_signature;

  return [v5 isEqualToString:signature];
}

- (id)_renditionForSpecificKey:(id)a3
{
  v5 = _LookupStructuredThemeProvider(self->_storageRef, a2);
  v6 = [a3 keyList];
  signature = self->_signature;

  return [v5 renditionWithKey:v6 usingKeySignature:signature];
}

- (NSString)renditionName
{
  v2 = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)v2 name];
}

- (BOOL)isTintable
{
  v2 = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)v2 isTintable];
}

- (int64_t)memoryClass
{
  v2 = [(CUINamedLookup *)self renditionKey];

  return [(CUIRenditionKey *)v2 themeMemoryClass];
}

- (int64_t)graphicsClass
{
  v2 = [(CUINamedLookup *)self renditionKey];

  return [(CUIRenditionKey *)v2 themeGraphicsClass];
}

- (int64_t)displayGamut
{
  v2 = [(CUINamedLookup *)self renditionKey];

  return [(CUIRenditionKey *)v2 themeDisplayGamut];
}

- (int64_t)localization
{
  v2 = [(CUINamedLookup *)self renditionKey];

  return [(CUIRenditionKey *)v2 themeLocalization];
}

@end