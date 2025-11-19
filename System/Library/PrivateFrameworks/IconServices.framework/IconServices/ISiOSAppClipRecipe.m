@interface ISiOSAppClipRecipe
- (id)appRect;
- (id)blurRadius;
- (id)layerTreeForSize:(CGSize)a3 scale:(double)a4;
@end

@implementation ISiOSAppClipRecipe

- (id)appRect
{
  if (appRect_onceToken != -1)
  {
    [ISiOSAppClipRecipe appRect];
  }

  v3 = appRect_rect;

  return v3;
}

uint64_t __29__ISiOSAppClipRecipe_appRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:3];
  v1 = appRect_rect;
  appRect_rect = v0;

  [appRect_rect addHintedRect:2.0 forSize:{2.0, 16.0, 16.0, 20.0, 20.0}];
  [appRect_rect addHintedRect:3.0 forSize:{3.0, 23.0, 23.0, 29.0, 29.0}];
  [appRect_rect addHintedRect:4.0 forSize:{4.0, 28.0, 28.0, 36.0, 36.0}];
  [appRect_rect addHintedRect:4.0 forSize:{4.0, 32.0, 32.0, 40.0, 40.0}];
  [appRect_rect addHintedRect:6.0 forSize:{6.0, 44.0, 44.0, 56.0, 56.0}];
  [appRect_rect addHintedRect:6.0 forSize:{6.0, 47.0, 47.0, 60.0, 60.0}];
  [appRect_rect addHintedRect:7.0 forSize:{7.0, 50.0, 50.0, 64.0, 64.0}];
  [appRect_rect addHintedRect:9.0 forSize:{9.0, 58.0, 58.0, 76.0, 76.0}];
  [appRect_rect addHintedRect:10.0 forSize:{10.0, 63.5, 63.5, 83.5, 83.5}];
  v2 = appRect_rect;

  return [v2 addHintedRect:51.0 forSize:{51.0, 410.0, 410.0, 512.0, 512.0}];
}

- (id)blurRadius
{
  if (blurRadius_onceToken != -1)
  {
    [ISiOSAppClipRecipe blurRadius];
  }

  v3 = blurRadius_value;

  return v3;
}

uint64_t __32__ISiOSAppClipRecipe_blurRadius__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedFloat alloc] initWithOptions:3];
  v1 = blurRadius_value;
  blurRadius_value = v0;

  [blurRadius_value addHintedFloat:2.0 forSize:{20.0, 20.0}];
  v2 = blurRadius_value;

  return [v2 addHintedFloat:50.0 forSize:{512.0, 512.0}];
}

- (id)layerTreeForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v7 = objc_alloc_init(ISLayer);
  [(ISLayer *)v7 setSize:width, height];
  [(ISLayer *)v7 setName:@"root layer"];
  v8 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v8 setName:@"Background layer"];
  [(ISLayer *)v8 setSize:width, height];
  v9 = [objc_alloc(MEMORY[0x1E69A8968]) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  [(ISContentLayer *)v8 setContent:v9];

  v10 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v10 setName:@"Blur layer"];
  [(ISLayer *)v10 setSize:width, height];
  [(ISContentLayer *)v10 setContent:@"kISPrimaryResourceKey"];
  v11 = [ISBlurEffect alloc];
  v12 = [(ISiOSAppClipRecipe *)self blurRadius];
  [v12 hintedFloatForSize:{width, height}];
  v13 = [(ISBlurEffect *)v11 initWithRadius:?];
  [(ISLayer *)v10 setEffect:v13];

  [(ISLayer *)v8 addSublayer:v10];
  if (!self->_shouldOnlyDrawBorder)
  {
    v14 = objc_alloc_init(ISContentLayer);
    [(ISLayer *)v14 setName:@"Center Image"];
    v15 = [(ISiOSAppClipRecipe *)self appRect];
    [v15 hintedRectForSize:{width, height}];
    [(ISLayer *)v14 setFrame:?];

    [(ISContentLayer *)v14 setContent:@"kISPrimaryResourceKey"];
    if ([(ISiOSAppClipRecipe *)self generic])
    {
      v16 = objc_alloc_init(ISContentLayer);
      [(ISLayer *)v16 setName:@"Center Image mask"];
      [(ISLayer *)v14 bounds];
      [(ISLayer *)v16 setFrame:?];
      v17 = +[ISShapeCompositorResource continuousRoundedRectShape];
      [(ISContentLayer *)v16 setContent:v17];

      [(ISLayer *)v14 setMask:v16];
    }

    [(ISLayer *)v8 addSublayer:v14];
  }

  v18 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v18 setSize:width, height];
  [(ISLayer *)v18 setName:@"mask layer"];
  v19 = MEMORY[0x1E69A8990];
  v20 = [MEMORY[0x1E69A8960] iconsetResourceBundle];
  v21 = [v19 imageBagWithResourcesNamed:@"AppClipMask" fromBundle:v20];
  [(ISContentLayer *)v18 setContent:v21];

  [(ISLayer *)v10 setMask:v18];
  [(ISLayer *)v7 addSublayer:v8];

  return v7;
}

@end