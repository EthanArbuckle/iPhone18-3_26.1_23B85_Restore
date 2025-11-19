@interface CUINamedIconLayerGroup
- (BOOL)_updateFromCatalog:(id)a3 displayGamut:(int64_t)a4 deviceIdiom:(int64_t)a5 appearanceName:(id)a6;
- (CGColor)color;
- (CUINamedGradient)gradient;
- (CUINamedIconLayerGroup)initWithName:(id)a3 usingRenditionKey:(id)a4 fromTheme:(unint64_t)a5 resolvingWithBlock:(id)a6;
- (id)mutableCopy;
- (void)_addLayer:(id)a3;
- (void)_setGradientOrColor:(id)a3;
- (void)_setGradientOrColorName:(id)a3;
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
  v2 = [(CUINamedIconLayerGroup *)self _gradientOrColor];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

- (CUINamedGradient)gradient
{
  v2 = [(CUINamedIconLayerGroup *)self _gradientOrColor];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (CUINamedIconLayerGroup)initWithName:(id)a3 usingRenditionKey:(id)a4 fromTheme:(unint64_t)a5 resolvingWithBlock:(id)a6
{
  v8 = a3;
  v20.receiver = self;
  v20.super_class = CUINamedIconLayerGroup;
  v9 = [(CUINamedLookup *)&v20 initWithName:a3 usingRenditionKey:a4 fromTheme:?];
  v10 = v9;
  if (v9)
  {
    v11 = [(CUINamedLookup *)v9 _rendition];
    if ([(CUIThemeRendition *)v11 type]!= 1020)
    {
      _CUILog(4, "CoreUI: Attempting to create named icon layer stack '%@' from inappropriate rendition type: %@", v12, v13, v14, v15, v16, v17, v8);
LABEL_8:

      return 0;
    }

    if (!v8)
    {
      [(CUINamedLookup *)v10 setName:[(CUIThemeRendition *)v11 name]];
      v8 = [(CUIThemeRendition *)v11 name];
    }

    v18 = [objc_opt_class() _createLayers:v8 fromTheme:a5 baseRendition:v11 withBlock:a6];
    v10->_layers = v18;
    if (!v18)
    {
      goto LABEL_8;
    }
  }

  return v10;
}

- (BOOL)_updateFromCatalog:(id)a3 displayGamut:(int64_t)a4 deviceIdiom:(int64_t)a5 appearanceName:(id)a6
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

    v12 = [a3 _appearancefallback_gradientWithName:-[CUINamedIconLayerGroup gradientOrColorName](self displayGamut:"gradientOrColorName") deviceIdiom:a4 appearanceName:{a5, a6}];
    if (v12)
    {
LABEL_6:
      [(CUINamedIconLayerGroup *)self _setGradientOrColor:v12];
      goto LABEL_7;
    }

    v13 = [a3 _appearancefallback_colorWithName:-[CUINamedIconLayerGroup gradientOrColorName](self displayGamut:"gradientOrColorName") deviceIdiom:a4 appearanceName:{a5, a6}];
    if (v13)
    {
      v12 = [v13 cgColor];
      goto LABEL_6;
    }

    v14 = [(CUINamedIconLayerGroup *)self gradientOrColorName];
    [(CUINamedLookup *)self name];
    _CUILog(4, "CoreUI: Couldn't find gradient/colorname '%@' for icon layer stack %@", v15, v16, v17, v18, v19, v20, v14);
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (void)_addLayer:(id)a3
{
  layers = self->_layers;
  if (!layers)
  {
    layers = objc_alloc_init(NSMutableArray);
    self->_layers = layers;
  }

  [(NSMutableArray *)layers addObject:a3];
}

- (void)_setGradientOrColorName:(id)a3
{
  gradientOrColorName = self->_gradientOrColorName;
  if (gradientOrColorName != a3)
  {

    self->_gradientOrColorName = a3;
  }
}

- (void)_setGradientOrColor:(id)a3
{
  gradientOrColor = self->_gradientOrColor;
  if (gradientOrColor != a3)
  {

    self->_gradientOrColor = a3;
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
  v5 = [(CUINamedIconLayerGroup *)self layers];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) mutableCopy];
        [v4 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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