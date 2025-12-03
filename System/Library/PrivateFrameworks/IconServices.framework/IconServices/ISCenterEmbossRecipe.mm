@interface ISCenterEmbossRecipe
- (id)hintedBadgeRect;
- (id)hintedFontSize;
- (id)hintedImageBadgeRect;
- (id)layerTreeForSize:(CGSize)size scale:(double)scale;
@end

@implementation ISCenterEmbossRecipe

- (id)hintedFontSize
{
  if (hintedFontSize_onceToken_0 != -1)
  {
    [ISCenterEmbossRecipe hintedFontSize];
  }

  v3 = hintedFontSize_value_0;

  return v3;
}

uint64_t __38__ISCenterEmbossRecipe_hintedFontSize__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedFloat alloc] initWithOptions:1];
  v1 = hintedFontSize_value_0;
  hintedFontSize_value_0 = v0;

  [hintedFontSize_value_0 addHintedFloat:6.0 forSize:{16.0, 16.0}];
  v2 = hintedFontSize_value_0;

  return [v2 addHintedFloat:180.0 forSize:{512.0, 512.0}];
}

- (id)hintedBadgeRect
{
  if (hintedBadgeRect_onceToken_1 != -1)
  {
    [ISCenterEmbossRecipe hintedBadgeRect];
  }

  v3 = hintedBadgeRect_rect_1;

  return v3;
}

uint64_t __39__ISCenterEmbossRecipe_hintedBadgeRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:5];
  v1 = hintedBadgeRect_rect_1;
  hintedBadgeRect_rect_1 = v0;

  [hintedBadgeRect_rect_1 addHintedRect:2.0 forSize:{5.5, 12.0, 6.0, 16.0, 16.0}];
  [hintedBadgeRect_rect_1 addHintedRect:4.0 forSize:{11.0, 24.0, 12.0, 32.0, 32.0}];
  v2 = hintedBadgeRect_rect_1;

  return [v2 addHintedRect:73.0 forSize:{165.0, 366.0, 190.0, 512.0, 512.0}];
}

- (id)hintedImageBadgeRect
{
  if (hintedImageBadgeRect_onceToken_0 != -1)
  {
    [ISCenterEmbossRecipe hintedImageBadgeRect];
  }

  v3 = hintedImageBadgeRect_rect_0;

  return v3;
}

uint64_t __44__ISCenterEmbossRecipe_hintedImageBadgeRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:3];
  v1 = hintedImageBadgeRect_rect_0;
  hintedImageBadgeRect_rect_0 = v0;

  [hintedImageBadgeRect_rect_0 addHintedRect:2.0 forSize:{4.0, 12.0, 6.0, 16.0, 16.0}];
  [hintedImageBadgeRect_rect_0 addHintedRect:4.0 forSize:{8.0, 24.0, 12.0, 32.0, 32.0}];
  v2 = hintedImageBadgeRect_rect_0;

  return [v2 addHintedRect:73.0 forSize:{135.0, 366.0, 190.0, 512.0, 512.0}];
}

- (id)layerTreeForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v7 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v7 setSize:width, height];
  [(ISLayer *)v7 setName:@"layer"];
  v8 = objc_opt_new();
  [v8 setVariant:self->_variant];
  [(ISLayer *)v7 setEffect:v8];
  v9 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v9 setName:@"Center Emboss"];
  hintedImageBadgeRect = [(ISCenterEmbossRecipe *)self hintedImageBadgeRect];
  [hintedImageBadgeRect hintedRectForSize:{width, height}];
  [(ISLayer *)v9 setFrame:?];

  [(ISContentLayer *)v9 setContent:@"kISPrimaryResourceKey"];
  [(ISContentLayer *)v9 setAcceptSymbol:0];
  [(ISLayer *)v7 addSublayer:v9];

  hintedBadgeRect = [(ISCenterEmbossRecipe *)self hintedBadgeRect];
  [hintedBadgeRect hintedRectForSize:{width, height}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = objc_alloc_init(ISTextLayer);
  [(ISLayer *)v20 setName:@"Center Emboss Text"];
  [(ISLayer *)v20 setFrame:v13, v15, v17, v19];
  [(ISTextLayer *)v20 setText:@"kISPrimaryResourceKey"];
  hintedFontSize = [(ISCenterEmbossRecipe *)self hintedFontSize];
  [hintedFontSize hintedFloatForSize:{width, height}];
  [(ISTextLayer *)v20 setFontSize:?];

  [(ISLayer *)v7 addSublayer:v20];
  v22 = objc_alloc_init(ISSymbolLayer);
  [(ISLayer *)v22 setName:@"Center Emboss"];
  [(ISLayer *)v22 setFrame:v13, v15, v17, v19];
  [(ISSymbolLayer *)v22 setSymbol:@"kISPrimaryResourceKey"];
  hintedFontSize2 = [(ISCenterEmbossRecipe *)self hintedFontSize];
  [hintedFontSize2 hintedFloatForSize:{width, height}];
  [(ISSymbolLayer *)v22 setFontSize:?];

  [(ISLayer *)v7 addSublayer:v22];

  return v7;
}

@end