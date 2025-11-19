@interface ISCenterBadgeRecipe
- (id)hintedBadgeRect;
- (id)layerTreeForSize:(CGSize)a3 scale:(double)a4;
@end

@implementation ISCenterBadgeRecipe

- (id)hintedBadgeRect
{
  if (hintedBadgeRect_onceToken_121 != -1)
  {
    [ISCenterBadgeRecipe hintedBadgeRect];
  }

  v3 = hintedBadgeRect_rect_120;

  return v3;
}

uint64_t __38__ISCenterBadgeRecipe_hintedBadgeRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:3];
  v1 = hintedBadgeRect_rect_120;
  hintedBadgeRect_rect_120 = v0;

  v2 = hintedBadgeRect_rect_120;

  return [v2 addHintedRect:73.0 forSize:{135.0, 366.0, 190.0, 512.0, 512.0}];
}

- (id)layerTreeForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v7 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v7 setSize:width, height];
  [(ISLayer *)v7 setName:@"layer"];
  v8 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v8 setName:@"Center badge"];
  v9 = [(ISCenterBadgeRecipe *)self hintedBadgeRect];
  [v9 hintedRectForSize:{width, height}];
  [(ISLayer *)v8 setFrame:?];

  [(ISContentLayer *)v8 setContent:@"kISPrimaryResourceKey"];
  [(ISLayer *)v7 addSublayer:v8];

  return v7;
}

@end