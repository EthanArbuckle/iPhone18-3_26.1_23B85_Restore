@interface ISMessagesAppRecipe
- (ISMessagesAppRecipe)init;
- (id)layerTreeForSize:(CGSize)a3 scale:(double)a4;
@end

@implementation ISMessagesAppRecipe

- (ISMessagesAppRecipe)init
{
  v5.receiver = self;
  v5.super_class = ISMessagesAppRecipe;
  v2 = [(ISMessagesAppRecipe *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ISMessagesAppRecipe *)v2 setShouldApplyMask:1];
    [(ISMessagesAppRecipe *)v3 setShouldDrawBorder:0];
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

  if ([(ISMessagesAppRecipe *)self shouldDrawBorder])
  {
    v11 = objc_alloc_init(ISContentLayer);
    [(ISLayer *)v11 setName:@"Image"];
    [(ISLayer *)v11 setSize:width, height];
    v12 = MEMORY[0x1E69A8990];
    v13 = [MEMORY[0x1E69A8960] iconsetResourceBundle];
    v14 = [v12 imageBagWithResourcesNamed:@"MessagesAppOutline" fromBundle:v13];

    [(ISContentLayer *)v11 setContent:v14];
    [(ISLayer *)v7 addSublayer:v11];
  }

  if ([(ISMessagesAppRecipe *)self shouldApplyMask])
  {
    v15 = objc_alloc_init(ISContentLayer);
    [(ISLayer *)v15 setSize:width, height];
    [(ISLayer *)v15 setName:@"mask layer"];
    v16 = MEMORY[0x1E69A8990];
    v17 = [MEMORY[0x1E69A8960] iconsetResourceBundle];
    v18 = [v16 imageBagWithResourcesNamed:@"MessagesAppMask" fromBundle:v17];

    [(ISContentLayer *)v15 setContent:v18];
    [(ISLayer *)v7 setMask:v15];
  }

  return v7;
}

@end