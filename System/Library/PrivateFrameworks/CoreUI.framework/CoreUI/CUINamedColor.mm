@interface CUINamedColor
- (CGColor)cgColor;
- (CUINamedColor)initWithName:(id)a3 usingRenditionKey:(id)a4 fromTheme:(unint64_t)a5;
- (id)mutableCopy;
- (void)_setCGColor:(CGColor *)a3;
- (void)dealloc;
@end

@implementation CUINamedColor

- (CGColor)cgColor
{
  result = self->_cgColor;
  if (!result)
  {
    v4 = [(CUIThemeRendition *)[(CUINamedLookup *)self _rendition] cgColor];
    self->_cgColor = v4;
    CGColorRetain(v4);
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

- (CUINamedColor)initWithName:(id)a3 usingRenditionKey:(id)a4 fromTheme:(unint64_t)a5
{
  v17.receiver = self;
  v17.super_class = CUINamedColor;
  v6 = [(CUINamedLookup *)&v17 initWithName:a3 usingRenditionKey:a4 fromTheme:a5];
  v7 = v6;
  if (v6)
  {
    v8 = [(CUINamedLookup *)v6 _rendition];
    if ([(CUIThemeRendition *)v8 type]== 1009)
    {
      v15 = [(CUIThemeRendition *)v8 substituteWithSystemColor];
      v7->_substituteWithSystemColor = v15;
      if (v15)
      {
        v7->_colorName = [-[CUIThemeRendition systemColorName](v8 "systemColorName")];
      }
    }

    else
    {
      _CUILog(4, "CoreUI: attempting to lookup a named color '%@' with a name that s not a color type in the AssetCatalog", v9, v10, v11, v12, v13, v14, a3);

      return 0;
    }
  }

  return v7;
}

- (void)_setCGColor:(CGColor *)a3
{
  cgColor = self->_cgColor;
  if (cgColor != a3)
  {
    if (cgColor)
    {
      CFRelease(cgColor);
    }

    CFRetain(a3);
    self->_cgColor = a3;
  }
}

@end