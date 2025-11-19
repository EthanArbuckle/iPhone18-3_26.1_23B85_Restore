@interface ISwatchOSAppRecipe
- (ISwatchOSAppRecipe)init;
- (id)layerTreeForSize:(CGSize)a3 scale:(double)a4;
@end

@implementation ISwatchOSAppRecipe

- (ISwatchOSAppRecipe)init
{
  v5.receiver = self;
  v5.super_class = ISwatchOSAppRecipe;
  v2 = [(ISwatchOSAppRecipe *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ISwatchOSAppRecipe *)v2 setShouldApplyMask:1];
  }

  return v3;
}

- (id)layerTreeForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v7 = objc_alloc_init(ISLayer);
  [(ISLayer *)v7 setSize:width, height];
  [(ISLayer *)v7 setName:@"layer"];
  v8 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v8 setName:@"Background"];
  [(ISLayer *)v8 setSize:width, height];
  v9 = [objc_alloc(MEMORY[0x1E69A8968]) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  [(ISContentLayer *)v8 setContent:v9];

  [(ISLayer *)v7 addSublayer:v8];
  v10 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v10 setName:@"Image"];
  [(ISLayer *)v10 setSize:width, height];
  [(ISContentLayer *)v10 setContent:@"kISPrimaryResourceKey"];
  [(ISLayer *)v7 addSublayer:v10];

  if ([(ISwatchOSAppRecipe *)self shouldApplyMask])
  {
    v11 = objc_alloc_init(ISContentLayer);
    [(ISLayer *)v11 setSize:width, height];
    [(ISLayer *)v11 setName:@"mask layer"];
    v12 = +[ISShapeCompositorResource circleShape];
    [(ISContentLayer *)v11 setContent:v12];

    [(ISLayer *)v7 setMask:v11];
  }

  return v7;
}

@end