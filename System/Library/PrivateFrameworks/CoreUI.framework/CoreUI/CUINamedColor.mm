@interface CUINamedColor
- (CGColor)cgColor;
- (CUINamedColor)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme;
- (id)mutableCopy;
- (void)_setCGColor:(CGColor *)color;
- (void)dealloc;
@end

@implementation CUINamedColor

- (CGColor)cgColor
{
  result = self->_cgColor;
  if (!result)
  {
    cgColor = [(CUIThemeRendition *)[(CUINamedLookup *)self _rendition] cgColor];
    self->_cgColor = cgColor;
    CGColorRetain(cgColor);
    return self->_cgColor;
  }

  return result;
}

- (void)dealloc
{
  CGColorRelease(self->_cgColor);

  v3.receiver = self;
  v3.super_class = CUINamedColor;
  [(CUINamedLookup *)&v3 dealloc];
}

- (id)mutableCopy
{
  v3 = objc_alloc_init(CUIMutableNamedColor);
  [(CUIMutableNamedColor *)v3 setCGColor:[(CUINamedColor *)self cgColor]];
  return v3;
}

- (CUINamedColor)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme
{
  v17.receiver = self;
  v17.super_class = CUINamedColor;
  v6 = [(CUINamedLookup *)&v17 initWithName:name usingRenditionKey:key fromTheme:theme];
  v7 = v6;
  if (v6)
  {
    _rendition = [(CUINamedLookup *)v6 _rendition];
    if ([(CUIThemeRendition *)_rendition type]== 1009)
    {
      substituteWithSystemColor = [(CUIThemeRendition *)_rendition substituteWithSystemColor];
      v7->_substituteWithSystemColor = substituteWithSystemColor;
      if (substituteWithSystemColor)
      {
        v7->_colorName = [-[CUIThemeRendition systemColorName](_rendition "systemColorName")];
      }
    }

    else
    {
      _CUILog(4, "CoreUI: attempting to lookup a named color '%@' with a name that s not a color type in the AssetCatalog", v9, v10, v11, v12, v13, v14, name);

      return 0;
    }
  }

  return v7;
}

- (void)_setCGColor:(CGColor *)color
{
  cgColor = self->_cgColor;
  if (cgColor != color)
  {
    if (cgColor)
    {
      CFRelease(cgColor);
    }

    CFRetain(color);
    self->_cgColor = color;
  }
}

@end