@interface CUINamedSolidLayerImage
- (CGRect)frame;
- (CUINamedSolidLayerImage)initWithName:(id)a3 usingRenditionKey:(id)a4 fromTheme:(unint64_t)a5;
- (double)opacity;
- (id)edgeDefinitionTextureWithBufferAllocator:(id)a3;
- (id)gradientTextureWithBufferAllocator:(id)a3;
- (int)blendMode;
- (void)dealloc;
@end

@implementation CUINamedSolidLayerImage

- (CUINamedSolidLayerImage)initWithName:(id)a3 usingRenditionKey:(id)a4 fromTheme:(unint64_t)a5
{
  v26.receiver = self;
  v26.super_class = CUINamedSolidLayerImage;
  v7 = [CUINamedImage initWithName:sel_initWithName_usingRenditionKey_fromTheme_ usingRenditionKey:a3 fromTheme:?];
  v9 = v7;
  if (v7)
  {
    v7->_opacity = 1.0;
    v7->_blendMode = 0;
    v10 = _LookupStructuredThemeProvider(a5, v8);
    v11 = [a4 copy];
    v12 = [a4 copy];
    [v11 setThemeElement:41];
    [v11 setThemePart:0];
    [v11 setThemeDimension1:1];
    [v11 setThemeDimension2:0];
    [v12 setThemeElement:41];
    [v12 setThemePart:0];
    [v12 setThemeDimension1:2];
    [v12 setThemeDimension2:0];
    if ([v10 canGetRenditionWithKey:{objc_msgSend(v11, "keyList")}])
    {
      v9->_edgeTexture = [(CUINamedLookup *)[CUINamedTexture alloc] initWithName:[(CUINamedLookup *)v9 name] usingRenditionKey:v11 fromTheme:a5];
    }

    else
    {
      _CUILog(4, "CoreUI: %s can't find edgeTexture", v13, v14, v15, v16, v17, v18, "[CUINamedSolidLayerImage initWithName:usingRenditionKey:fromTheme:]");
    }

    if ([v10 canGetRenditionWithKey:{objc_msgSend(v12, "keyList")}])
    {
      v9->_gradientTexture = [(CUINamedLookup *)[CUINamedTexture alloc] initWithName:[(CUINamedLookup *)v9 name] usingRenditionKey:v12 fromTheme:a5];
    }

    else
    {
      _CUILog(4, "CoreUI: %s can't find edgeTexture", v19, v20, v21, v22, v23, v24, "[CUINamedSolidLayerImage initWithName:usingRenditionKey:fromTheme:]");
    }
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUINamedSolidLayerImage;
  [(CUINamedLookup *)&v3 dealloc];
}

- (double)opacity
{
  v5.receiver = self;
  v5.super_class = CUINamedSolidLayerImage;
  [(CUINamedImage *)&v5 opacity];
  return v3 * self->_opacity;
}

- (int)blendMode
{
  v4.receiver = self;
  v4.super_class = CUINamedSolidLayerImage;
  result = [(CUINamedImage *)&v4 blendMode];
  if (self->_blendMode > 0)
  {
    return self->_blendMode;
  }

  return result;
}

- (id)edgeDefinitionTextureWithBufferAllocator:(id)a3
{
  edgeTexture = self->_edgeTexture;
  if (edgeTexture)
  {

    return [(CUINamedTexture *)edgeTexture textureWithBufferAllocator:a3];
  }

  else
  {
    edgeTXR = self->_edgeTXR;
    if (edgeTXR)
    {
      CUICurrentPlatform();
      [(CUINamedImage *)self image];
      v7 = CUICreateSDFEdgeTextureFromImage();
      self->_edgeTXR = v7;
      v8 = v7;
      edgeTXR = self->_edgeTXR;
    }

    v9 = edgeTXR;

    return v9;
  }
}

- (id)gradientTextureWithBufferAllocator:(id)a3
{
  gradientTexture = self->_gradientTexture;
  if (gradientTexture)
  {

    return [(CUINamedTexture *)gradientTexture textureWithBufferAllocator:a3];
  }

  else
  {
    gradientTXR = self->_gradientTXR;
    if (gradientTXR)
    {
      CUICurrentPlatform();
      [(CUINamedImage *)self image];
      v7 = CUICreateSDFGradientTextureFromImage();
      self->_gradientTXR = v7;
      v8 = v7;
      gradientTXR = self->_gradientTXR;
    }

    v9 = gradientTXR;

    return v9;
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

@end