@interface CUINamedLayerImage
- (BOOL)_updateFromCatalog:(id)a3 displayGamut:(int64_t)a4 deviceIdiom:(int64_t)a5 appearanceName:(id)a6;
- (CGColor)color;
- (CGRect)frame;
- (CUINamedGradient)gradient;
- (CUINamedLayerImage)initWithName:(id)a3 usingRenditionKey:(id)a4 fromTheme:(unint64_t)a5;
- (double)opacity;
- (id)sdfTextureWithBufferAllocator:(id)a3;
- (int)blendMode;
- (void)_setGradientOrColorName:(id)a3;
- (void)dealloc;
@end

@implementation CUINamedLayerImage

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUINamedLayerImage;
  [(CUINamedLookup *)&v3 dealloc];
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

- (BOOL)_updateFromCatalog:(id)a3 displayGamut:(int64_t)a4 deviceIdiom:(int64_t)a5 appearanceName:(id)a6
{
  v21.receiver = self;
  v21.super_class = CUINamedLayerImage;
  v11 = [CUINamedLookup _updateFromCatalog:sel__updateFromCatalog_displayGamut_deviceIdiom_appearanceName_ displayGamut:? deviceIdiom:? appearanceName:?];
  if (v11)
  {
    if (![(NSString *)[(CUINamedLayerImage *)self gradientOrColorName] length])
    {
LABEL_6:
      LOBYTE(v11) = 1;
      return v11;
    }

    v12 = [a3 _appearancefallback_gradientWithName:-[CUINamedLayerImage gradientOrColorName](self displayGamut:"gradientOrColorName") deviceIdiom:a4 appearanceName:{a5, a6}];
    if (v12 || (v12 = [a3 _appearancefallback_colorWithName:-[CUINamedLayerImage gradientOrColorName](self displayGamut:"gradientOrColorName") deviceIdiom:a4 appearanceName:{a5, a6}]) != 0)
    {
      [(CUINamedLayerImage *)self _setGradientOrColor:v12];
      goto LABEL_6;
    }

    v13 = [(CUINamedLayerImage *)self gradientOrColorName];
    [(CUINamedLookup *)self name];
    _CUILog(4, "CoreUI: Couldn't find gradient/colorname '%@' for icon layer stack %@", v14, v15, v16, v17, v18, v19, v13);
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)sdfTextureWithBufferAllocator:(id)a3
{
  AssociatedObject = objc_getAssociatedObject(self, "com.apple.coreui.iconstack.sdf");
  if (!AssociatedObject)
  {
    v6 = [(CUINamedLookup *)self storageRef];
    v8 = _LookupStructuredThemeProvider(v6, v7);
    v9 = CUIRenditionKeyValueForAttribute([v8 renditionKeyForName:{-[CUINamedLookup name](self, "name")}], 17);
    v10 = [(CUIRenditionKey *)[(CUINamedLookup *)self renditionKey] copy];
    [v10 setThemeElement:41];
    [v10 setThemePart:0];
    [v10 setThemeIdentifier:v9];
    [v10 setThemeDisplayGamut:1];
    [v10 setThemeDimension1:0];
    [v10 setThemeDimension2:0];
    if ([v8 canGetRenditionWithKey:{objc_msgSend(v10, "keyList")}] || (objc_msgSend(v10, "setThemeDisplayGamut:", 0), objc_msgSend(v8, "canGetRenditionWithKey:", objc_msgSend(v10, "keyList"))))
    {
      AssociatedObject = [(CUINamedLookup *)[CUINamedTexture alloc] initWithName:[(CUINamedLookup *)self name] usingRenditionKey:v10 fromTheme:[(CUINamedLookup *)self storageRef]];
    }

    else
    {
      v11 = [(CUINamedLookup *)self name];
      _CUILog(4, "CoreUI: unable to locate sdf '%@' key:%@ releasing", v12, v13, v14, v15, v16, v17, v11);
      AssociatedObject = 0;
    }

    objc_setAssociatedObject(self, "com.apple.coreui.iconstack.sdf", AssociatedObject, 0x301);
  }

  return [(CUINamedTexture *)AssociatedObject textureWithBufferAllocator:a3];
}

- (CUINamedLayerImage)initWithName:(id)a3 usingRenditionKey:(id)a4 fromTheme:(unint64_t)a5
{
  v6.receiver = self;
  v6.super_class = CUINamedLayerImage;
  result = [(CUINamedImage *)&v6 initWithName:a3 usingRenditionKey:a4 fromTheme:a5];
  if (result)
  {
    result->_opacity = 1.0;
    result->_blendMode = 0;
  }

  return result;
}

- (double)opacity
{
  v5.receiver = self;
  v5.super_class = CUINamedLayerImage;
  [(CUINamedImage *)&v5 opacity];
  return v3 * self->_opacity;
}

- (int)blendMode
{
  v4.receiver = self;
  v4.super_class = CUINamedLayerImage;
  result = [(CUINamedImage *)&v4 blendMode];
  if (self->_blendMode > 0)
  {
    return self->_blendMode;
  }

  return result;
}

- (void)_setGradientOrColorName:(id)a3
{
  gradientOrColorName = self->_gradientOrColorName;
  if (gradientOrColorName != a3)
  {

    self->_gradientOrColorName = [a3 copy];
  }
}

- (CGColor)color
{
  v2 = [(CUINamedLayerImage *)self _gradientOrColor];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  return [v2 cgColor];
}

- (CUINamedGradient)gradient
{
  v2 = [(CUINamedLayerImage *)self _gradientOrColor];
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

@end