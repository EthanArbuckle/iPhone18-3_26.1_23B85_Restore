@interface ISAppNotificationBadgeRecipe
- (id)hintedBadgeRect;
- (id)hintedMaskRect;
- (id)layerTreeForSize:(CGSize)size scale:(double)scale;
@end

@implementation ISAppNotificationBadgeRecipe

- (id)hintedBadgeRect
{
  if (hintedBadgeRect_onceToken_132 != -1)
  {
    [ISAppNotificationBadgeRecipe hintedBadgeRect];
  }

  v3 = hintedBadgeRect_rect_131;

  return v3;
}

uint64_t __47__ISAppNotificationBadgeRecipe_hintedBadgeRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:3];
  v1 = hintedBadgeRect_rect_131;
  hintedBadgeRect_rect_131 = v0;

  v2 = hintedBadgeRect_rect_131;

  return [v2 addHintedRect:70.5 forSize:{0.0, 56.0, 56.0, 128.0, 128.0}];
}

- (id)hintedMaskRect
{
  if (hintedMaskRect_onceToken != -1)
  {
    [ISAppNotificationBadgeRecipe hintedMaskRect];
  }

  v3 = hintedMaskRect_rect;

  return v3;
}

uint64_t __46__ISAppNotificationBadgeRecipe_hintedMaskRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:3];
  v1 = hintedMaskRect_rect;
  hintedMaskRect_rect = v0;

  v2 = hintedMaskRect_rect;

  return [v2 addHintedRect:12.0 forSize:{12.0, 104.0, 104.0, 128.0, 128.0}];
}

- (id)layerTreeForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  hintedBadgeRect = [(ISAppNotificationBadgeRecipe *)self hintedBadgeRect];
  [hintedBadgeRect hintedRectForSize:{width, height}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v17 setSize:width, height];
  [(ISLayer *)v17 setName:@"root"];
  v18 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v18 setSize:width, height];
  [(ISLayer *)v18 setName:@"shadow background"];
  v19 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v19 setSize:width, height];
  [(ISLayer *)v19 setName:@"shadow"];
  v20 = objc_opt_new();
  [v20 setOffset:{0.0, -3.0}];
  [v20 setBlur:8.0];
  [v20 setSpread:9.0];
  [v20 setScale:scale];
  v21 = [objc_alloc(MEMORY[0x1E69A8968]) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.2];
  [v20 setColor:v21];

  [(ISLayer *)v19 setEffect:v20];
  v22 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v22 setName:@"shadow badge"];
  [(ISLayer *)v22 setFrame:v10 + 1.0, v12, v14 + -2.0, v16];
  [(ISContentLayer *)v22 setContent:@"kISPrimaryResourceKey"];
  [(ISLayer *)v19 addSublayer:v22];

  [(ISLayer *)v18 addSublayer:v19];
  v23 = objc_alloc_init(ISContentLayer);
  hintedMaskRect = [(ISAppNotificationBadgeRecipe *)self hintedMaskRect];
  [hintedMaskRect hintedRectForSize:{width, height}];
  [(ISLayer *)v23 setFrame:?];

  [(ISLayer *)v23 setName:@"mask layer"];
  v25 = +[ISShapeCompositorResource continuousRoundedRectShape];
  [(ISContentLayer *)v23 setContent:v25];

  [(ISLayer *)v18 setMask:v23];
  [(ISLayer *)v17 addSublayer:v18];

  v26 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v26 setName:@"Center badge"];
  [(ISLayer *)v26 setFrame:v10, v12, v14, v16];
  [(ISContentLayer *)v26 setContent:@"kISPrimaryResourceKey"];
  [(ISLayer *)v17 addSublayer:v26];

  return v17;
}

@end