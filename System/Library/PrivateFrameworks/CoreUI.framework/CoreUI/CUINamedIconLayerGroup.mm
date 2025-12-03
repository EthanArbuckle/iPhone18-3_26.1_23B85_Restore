@interface CUINamedIconLayerGroup
- (BOOL)_updateFromCatalog:(id)catalog displayGamut:(int64_t)gamut deviceIdiom:(int64_t)idiom appearanceName:(id)name;
- (CGColor)color;
- (CUINamedGradient)gradient;
- (CUINamedIconLayerGroup)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme resolvingWithBlock:(id)block;
- (id)mutableCopy;
- (void)_addLayer:(id)layer;
- (void)_setGradientOrColor:(id)color;
- (void)_setGradientOrColorName:(id)name;
- (void)dealloc;
@end

@implementation CUINamedIconLayerGroup

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUINamedIconLayerGroup;
  [(CUINamedLookup *)&v3 dealloc];
}

- (CGColor)color
{
  _gradientOrColor = [(CUINamedIconLayerGroup *)self _gradientOrColor];
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
  _gradientOrColor = [(CUINamedIconLayerGroup *)self _gradientOrColor];
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

- (CUINamedIconLayerGroup)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme resolvingWithBlock:(id)block
{
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = CUINamedIconLayerGroup;
  v9 = [(CUINamedLookup *)&v20 initWithName:name usingRenditionKey:key fromTheme:?];
  v10 = v9;
  if (v9)
  {
    _rendition = [(CUINamedLookup *)v9 _rendition];
    if ([(CUIThemeRendition *)_rendition type]!= 1020)
    {
      _CUILog(4, "CoreUI: Attempting to create named icon layer stack '%@' from inappropriate rendition type: %@", v12, v13, v14, v15, v16, v17, nameCopy);
LABEL_8:

      return 0;
    }

    if (!nameCopy)
    {
      [(CUINamedLookup *)v10 setName:[(CUIThemeRendition *)_rendition name]];
      nameCopy = [(CUIThemeRendition *)_rendition name];
    }

    v18 = [objc_opt_class() _createLayers:nameCopy fromTheme:theme baseRendition:_rendition withBlock:block];
    v10->_layers = v18;
    if (!v18)
    {
      goto LABEL_8;
    }
  }

  return v10;
}

- (BOOL)_updateFromCatalog:(id)catalog displayGamut:(int64_t)gamut deviceIdiom:(int64_t)idiom appearanceName:(id)name
{
  v22.receiver = self;
  v22.super_class = CUINamedIconLayerGroup;
  v11 = [CUINamedLookup _updateFromCatalog:sel__updateFromCatalog_displayGamut_deviceIdiom_appearanceName_ displayGamut:? deviceIdiom:? appearanceName:?];
  if (v11)
  {
    if (![(NSString *)[(CUINamedIconLayerGroup *)self gradientOrColorName] length])
    {
LABEL_7:
      LOBYTE(v11) = 1;
      return v11;
    }

    cgColor = [catalog _appearancefallback_gradientWithName:-[CUINamedIconLayerGroup gradientOrColorName](self displayGamut:"gradientOrColorName") deviceIdiom:gamut appearanceName:{idiom, name}];
    if (cgColor)
    {
LABEL_6:
      [(CUINamedIconLayerGroup *)self _setGradientOrColor:cgColor];
      goto LABEL_7;
    }

    v13 = [catalog _appearancefallback_colorWithName:-[CUINamedIconLayerGroup gradientOrColorName](self displayGamut:"gradientOrColorName") deviceIdiom:gamut appearanceName:{idiom, name}];
    if (v13)
    {
      cgColor = [v13 cgColor];
      goto LABEL_6;
    }

    gradientOrColorName = [(CUINamedIconLayerGroup *)self gradientOrColorName];
    [(CUINamedLookup *)self name];
    _CUILog(4, "CoreUI: Couldn't find gradient/colorname '%@' for icon layer stack %@", v15, v16, v17, v18, v19, v20, gradientOrColorName);
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (void)_addLayer:(id)layer
{
  layers = self->_layers;
  if (!layers)
  {
    layers = objc_alloc_init(NSMutableArray);
    self->_layers = layers;
  }

  [(NSMutableArray *)layers addObject:layer];
}

- (void)_setGradientOrColorName:(id)name
{
  gradientOrColorName = self->_gradientOrColorName;
  if (gradientOrColorName != name)
  {

    self->_gradientOrColorName = name;
  }
}

- (void)_setGradientOrColor:(id)color
{
  gradientOrColor = self->_gradientOrColor;
  if (gradientOrColor != color)
  {

    self->_gradientOrColor = color;
  }
}

- (id)mutableCopy
{
  v3 = objc_alloc_init(CUIMutableNamedIconLayerGroup);
  v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](-[CUINamedIconLayerGroup layers](self, "layers"), "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  layers = [(CUINamedIconLayerGroup *)self layers];
  v6 = [(NSArray *)layers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(layers);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) mutableCopy];
        [v4 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)layers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(CUINamedIconLayerGroup *)v3 setLayers:v4];
  [(CUINamedIconLayerGroup *)self opacity];
  [(CUIMutableNamedIconLayerGroup *)v3 setOpacity:?];
  [(CUIMutableNamedIconLayerGroup *)v3 setBlendMode:[(CUINamedIconLayerGroup *)self blendMode]];
  [(CUINamedIconLayerGroup *)self blurStrength];
  [(CUIMutableNamedIconLayerGroup *)v3 setBlurStrength:?];
  [(CUIMutableNamedIconLayerGroup *)v3 setHasLightingEffects:[(CUINamedIconLayerGroup *)self hasLightingEffects]];
  [(CUIMutableNamedIconLayerGroup *)v3 setShadowStyle:[(CUINamedIconLayerGroup *)self shadowStyle]];
  [(CUINamedIconLayerGroup *)self shadowOpacity];
  [(CUIMutableNamedIconLayerGroup *)v3 setShadowOpacity:?];
  [(CUIMutableNamedIconLayerGroup *)v3 setHasSpecular:[(CUINamedIconLayerGroup *)self hasSpecular]];
  [(CUINamedIconLayerGroup *)self translucency];
  [(CUIMutableNamedIconLayerGroup *)v3 setTranslucency:?];
  if ([(CUINamedIconLayerGroup *)self color])
  {
    [(CUIMutableNamedIconLayerGroup *)v3 setColor:[(CUINamedIconLayerGroup *)self color]];
  }

  else
  {
    [(CUIMutableNamedIconLayerGroup *)v3 setGradient:[(CUINamedIconLayerGroup *)self gradient]];
  }

  return v3;
}

@end