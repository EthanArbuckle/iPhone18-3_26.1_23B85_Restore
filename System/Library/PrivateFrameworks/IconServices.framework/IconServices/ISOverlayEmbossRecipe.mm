@interface ISOverlayEmbossRecipe
- (id)layerTreeForSize:(CGSize)size scale:(double)scale;
@end

@implementation ISOverlayEmbossRecipe

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
  [(ISLayer *)v9 setSize:width, height];
  [(ISContentLayer *)v9 setContent:@"kISPrimaryResourceKey"];
  [(ISLayer *)v7 addSublayer:v9];

  return v7;
}

@end