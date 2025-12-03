@interface CUINamedLayerVectorSVGImage
- (BOOL)_updateFromCatalog:(id)catalog displayGamut:(int64_t)gamut deviceIdiom:(int64_t)idiom appearanceName:(id)name;
- (CGColor)color;
- (CGRect)frame;
- (CUINamedGradient)gradient;
- (CUINamedLayerVectorSVGImage)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme;
- (id)mutableCopy;
- (void)_setGradientOrColorName:(id)name;
- (void)dealloc;
@end

@implementation CUINamedLayerVectorSVGImage

- (CUINamedLayerVectorSVGImage)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme
{
  v6.receiver = self;
  v6.super_class = CUINamedLayerVectorSVGImage;
  result = [(CUINamedLookup *)&v6 initWithName:name usingRenditionKey:key fromTheme:theme];
  if (result)
  {
    result->_opacity = 1.0;
    result->_blendMode = 0;
  }

  return result;
}

- (BOOL)_updateFromCatalog:(id)catalog displayGamut:(int64_t)gamut deviceIdiom:(int64_t)idiom appearanceName:(id)name
{
  v22.receiver = self;
  v22.super_class = CUINamedLayerVectorSVGImage;
  v11 = [CUINamedLookup _updateFromCatalog:sel__updateFromCatalog_displayGamut_deviceIdiom_appearanceName_ displayGamut:? deviceIdiom:? appearanceName:?];
  if (v11)
  {
    if (![(NSString *)[(CUINamedLayerVectorSVGImage *)self gradientOrColorName] length])
    {
LABEL_7:
      LOBYTE(v11) = 1;
      return v11;
    }

    cgColor = [catalog _appearancefallback_gradientWithName:-[CUINamedLayerVectorSVGImage gradientOrColorName](self displayGamut:"gradientOrColorName") deviceIdiom:gamut appearanceName:{idiom, name}];
    if (cgColor)
    {
LABEL_6:
      [(CUINamedLayerVectorSVGImage *)self _setGradientOrColor:cgColor];
      goto LABEL_7;
    }

    v13 = [catalog _appearancefallback_colorWithName:-[CUINamedLayerVectorSVGImage gradientOrColorName](self displayGamut:"gradientOrColorName") deviceIdiom:gamut appearanceName:{idiom, name}];
    if (v13)
    {
      cgColor = [v13 cgColor];
      goto LABEL_6;
    }

    gradientOrColorName = [(CUINamedLayerVectorSVGImage *)self gradientOrColorName];
    [(CUINamedLookup *)self name];
    _CUILog(4, "CoreUI: Couldn't find gradient/colorname '%@' for icon layer stack %@", v15, v16, v17, v18, v19, v20, gradientOrColorName);
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUINamedLayerVectorSVGImage;
  [(CUINamedLookup *)&v3 dealloc];
}

- (void)_setGradientOrColorName:(id)name
{
  gradientOrColorName = self->_gradientOrColorName;
  if (gradientOrColorName != name)
  {

    self->_gradientOrColorName = [name copy];
  }
}

- (CGColor)color
{
  _gradientOrColor = [(CUINamedLayerVectorSVGImage *)self _gradientOrColor];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  else
  {
    return _gradientOrColor;
  }
}

- (CUINamedGradient)gradient
{
  _gradientOrColor = [(CUINamedLayerVectorSVGImage *)self _gradientOrColor];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return _gradientOrColor;
  }

  else
  {
    return 0;
  }
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)mutableCopy
{
  v3 = objc_alloc_init(CUIMutableNamedLayerVectorSVGImage);
  [(CUIMutableNamedLayerVectorSVGImage *)v3 setSvgDocument:[(CUINamedVectorSVGImage *)self svgDocument]];
  [(CUINamedVectorImage *)self scale];
  [(CUIMutableNamedLayerVectorSVGImage *)v3 setScale:?];
  [(CUINamedLayerVectorSVGImage *)self frame];
  [(CUIMutableNamedLayerVectorSVGImage *)v3 setFrame:?];
  [(CUINamedLayerVectorSVGImage *)self opacity];
  [(CUINamedLayerVectorSVGImage *)v3 setOpacity:?];
  [(CUINamedLayerVectorSVGImage *)self blurStrength];
  [(CUIMutableNamedLayerVectorSVGImage *)v3 setBlurStrength:?];
  if ([(CUINamedLayerVectorSVGImage *)self color])
  {
    [(CUIMutableNamedLayerVectorSVGImage *)v3 setColor:[(CUINamedLayerVectorSVGImage *)self color]];
  }

  else
  {
    [(CUIMutableNamedLayerVectorSVGImage *)v3 setGradient:[(CUINamedLayerVectorSVGImage *)self gradient]];
  }

  [(CUIMutableNamedLayerVectorSVGImage *)v3 setHasLightingEffects:[(CUINamedLayerVectorSVGImage *)self hasLightingEffects]];
  return v3;
}

@end