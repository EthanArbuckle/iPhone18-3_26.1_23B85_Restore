@interface ISGenericRecipe
- (id)layerTreeForSize:(CGSize)size scale:(double)scale;
@end

@implementation ISGenericRecipe

- (id)layerTreeForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v8 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v8 setSize:width, height];
  [(ISLayer *)v8 setName:@"layer"];
  v9 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v9 setName:@"Base layer"];
  [(ISLayer *)v9 setSize:width, height];
  [(ISContentLayer *)v9 setContent:@"kISPrimaryResourceKey"];
  [(ISLayer *)v8 addSublayer:v9];

  if ([(ISGenericRecipe *)self borderWidth])
  {
    v10 = [objc_alloc(MEMORY[0x1E69A8968]) initWithWhite:0.5 alpha:1.0];
    scale = [[ISBorderEffect alloc] initWithLineWidth:v10 color:[(ISGenericRecipe *)self borderWidth]* scale];
    [(ISLayer *)v8 setEffect:scale];
  }

  return v8;
}

@end