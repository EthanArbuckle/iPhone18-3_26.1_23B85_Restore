@interface ISGenericRecipe
- (id)layerTreeForSize:(CGSize)a3 scale:(double)a4;
@end

@implementation ISGenericRecipe

- (id)layerTreeForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
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
    v11 = [[ISBorderEffect alloc] initWithLineWidth:v10 color:[(ISGenericRecipe *)self borderWidth]* a4];
    [(ISLayer *)v8 setEffect:v11];
  }

  return v8;
}

@end