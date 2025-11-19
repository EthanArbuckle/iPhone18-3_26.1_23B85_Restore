@interface ISiOSMacAppRecipe
- (id)badgeRect;
- (id)hintedShadowBlur;
- (id)hintedShadowOffset;
- (id)layerTreeForSize:(CGSize)a3 scale:(double)a4;
@end

@implementation ISiOSMacAppRecipe

- (id)hintedShadowBlur
{
  if (hintedShadowBlur_onceToken != -1)
  {
    [ISiOSMacAppRecipe hintedShadowBlur];
  }

  v3 = hintedShadowBlur_value;

  return v3;
}

uint64_t __37__ISiOSMacAppRecipe_hintedShadowBlur__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedFloat alloc] initWithOptions:1];
  v1 = hintedShadowBlur_value;
  hintedShadowBlur_value = v0;

  [hintedShadowBlur_value addHintedFloat:0.25 forSize:{16.0, 16.0}];
  [hintedShadowBlur_value addHintedFloat:1.0 forSize:{32.0, 32.0}];
  [hintedShadowBlur_value addHintedFloat:3.0 forSize:{128.0, 128.0}];
  [hintedShadowBlur_value addHintedFloat:6.0 forSize:{256.0, 256.0}];
  v2 = hintedShadowBlur_value;

  return [v2 addHintedFloat:11.5 forSize:{512.0, 512.0}];
}

- (id)hintedShadowOffset
{
  if (hintedShadowOffset_onceToken != -1)
  {
    [ISiOSMacAppRecipe hintedShadowOffset];
  }

  v3 = hintedShadowOffset_value;

  return v3;
}

uint64_t __39__ISiOSMacAppRecipe_hintedShadowOffset__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedSize alloc] initWithOptions:1];
  v1 = hintedShadowOffset_value;
  hintedShadowOffset_value = v0;

  [hintedShadowOffset_value addHintedSize:0.0 forSize:{-0.5, 16.0, 16.0}];
  [hintedShadowOffset_value addHintedSize:0.0 forSize:{-1.0, 32.0, 32.0}];
  [hintedShadowOffset_value addHintedSize:0.0 forSize:{-2.5, 128.0, 128.0}];
  [hintedShadowOffset_value addHintedSize:0.0 forSize:{-5.0, 256.0, 256.0}];
  v2 = hintedShadowOffset_value;

  return [v2 addHintedSize:0.0 forSize:{-10.0, 512.0, 512.0}];
}

- (id)badgeRect
{
  if (badgeRect_onceToken != -1)
  {
    [ISiOSMacAppRecipe badgeRect];
  }

  v3 = badgeRect_rect;

  return v3;
}

uint64_t __30__ISiOSMacAppRecipe_badgeRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:3];
  v1 = badgeRect_rect;
  badgeRect_rect = v0;

  [badgeRect_rect addHintedRect:1.0 forSize:{1.0, 14.0, 14.0, 16.0, 16.0}];
  [badgeRect_rect addHintedRect:3.0 forSize:{3.0, 26.0, 26.0, 32.0, 32.0}];
  [badgeRect_rect addHintedRect:12.0 forSize:{12.0, 104.0, 104.0, 128.0, 128.0}];
  [badgeRect_rect addHintedRect:25.0 forSize:{25.0, 206.0, 206.0, 256.0, 256.0}];
  v2 = badgeRect_rect;

  return [v2 addHintedRect:50.0 forSize:{50.0, 412.0, 412.0, 512.0, 512.0}];
}

- (id)layerTreeForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8 = objc_alloc_init(ISLayer);
  [(ISLayer *)v8 setSize:width, height];
  [(ISLayer *)v8 setName:@"Root layer"];
  v9 = [(ISiOSMacAppRecipe *)self badgeRect];
  [v9 hintedRectForSize:{width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v18 setName:@"masked layer"];
  [(ISLayer *)v18 setFrame:v11, v13, v15, v17];
  v19 = [MEMORY[0x1E69A8968] white];
  [(ISContentLayer *)v18 setContent:v19];

  v20 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v20 setName:@"Image"];
  [(ISLayer *)v20 setSize:v15, v17];
  [(ISContentLayer *)v20 setContent:@"kISPrimaryResourceKey"];
  [(ISLayer *)v18 addSublayer:v20];

  v21 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v21 setSize:v15, v17];
  [(ISLayer *)v21 setName:@"mask layer"];
  v22 = +[ISShapeCompositorResource continuousRoundedRectShape];
  [(ISContentLayer *)v21 setContent:v22];

  [(ISLayer *)v18 setMask:v21];
  v23 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v23 setName:@"shadow background layer"];
  [(ISLayer *)v23 setSize:width, height];
  v24 = objc_opt_new();
  v25 = [(ISiOSMacAppRecipe *)self hintedShadowBlur];
  [v25 hintedFloatForSize:{width, height}];
  [v24 setBlur:?];

  v26 = [(ISiOSMacAppRecipe *)self hintedShadowOffset];
  [v26 hintedSizeForSize:{width, height}];
  [v24 setOffset:?];

  v27 = [objc_alloc(MEMORY[0x1E69A8968]) initWithWhite:0.0 alpha:0.28];
  [v24 setColor:v27];

  [v24 setScale:a4];
  [(ISLayer *)v23 setEffect:v24];
  [(ISLayer *)v8 addSublayer:v23];
  [(ISLayer *)v23 addSublayer:v18];

  return v8;
}

@end