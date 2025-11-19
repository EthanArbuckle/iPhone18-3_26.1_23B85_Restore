@interface ISiosmacDocumentRecipe
- (id)hintedBadgeRect;
- (id)layerTreeForSize:(CGSize)a3 scale:(double)a4;
@end

@implementation ISiosmacDocumentRecipe

- (id)hintedBadgeRect
{
  if (hintedBadgeRect_onceToken_2 != -1)
  {
    [ISiosmacDocumentRecipe hintedBadgeRect];
  }

  v3 = hintedBadgeRect_rect_2;

  return v3;
}

uint64_t __41__ISiosmacDocumentRecipe_hintedBadgeRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:3];
  v1 = hintedBadgeRect_rect_2;
  hintedBadgeRect_rect_2 = v0;

  v2 = hintedBadgeRect_rect_2;

  return [v2 addHintedRect:112.0 forSize:{112.0, 288.0, 288.0, 512.0, 512.0}];
}

- (id)layerTreeForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v6 = [(ISiosmacDocumentRecipe *)self hintedBadgeRect:a3.width];
  [v6 hintedRectForSize:{width, height}];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = objc_alloc_init(ISLayer);
  [(ISLayer *)v15 setSize:width, height];
  [(ISLayer *)v15 setName:@"layer"];
  v16 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v16 setName:@"Background layer"];
  [(ISLayer *)v16 setSize:width, height];
  v17 = MEMORY[0x1E69A8990];
  v18 = [MEMORY[0x1E69A8960] iconsetResourceBundle];
  v19 = [v17 imageBagWithResourcesNamed:@"GenericBackground" fromBundle:v18];

  [(ISContentLayer *)v16 setContent:v19];
  [(ISLayer *)v15 addSublayer:v16];

  v20 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v20 setName:@"masked layer"];
  [(ISLayer *)v20 setSize:width, height];
  v21 = [objc_alloc(MEMORY[0x1E69A8968]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  [(ISContentLayer *)v20 setContent:v21];

  v22 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v22 setName:@"masked badge layer"];
  [(ISLayer *)v22 setFrame:v8, v10, v12, v14];
  v23 = [objc_alloc(MEMORY[0x1E69A8968]) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  [(ISContentLayer *)v22 setBackgroundColor:v23];

  [(ISContentLayer *)v22 setContent:@"kISPrimaryResourceKey"];
  v24 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v24 setSize:v12, v14];
  [(ISLayer *)v24 setName:@"mask layer"];
  v25 = +[ISShapeCompositorResource continuousRoundedRectShape];
  [(ISContentLayer *)v24 setContent:v25];

  [(ISLayer *)v22 setMask:v24];
  [(ISLayer *)v20 addSublayer:v22];

  v26 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v26 setSize:width, height];
  [(ISLayer *)v26 setName:@"mask layer"];
  v27 = MEMORY[0x1E69A8990];
  v28 = [MEMORY[0x1E69A8960] iconsetResourceBundle];
  v29 = [v27 imageBagWithResourcesNamed:@"GenericFullDocumentMask" fromBundle:v28];

  if (v29)
  {
    [(ISContentLayer *)v26 setContent:v29];
    [(ISLayer *)v20 setMask:v26];
  }

  [(ISLayer *)v15 addSublayer:v20];
  v30 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v30 setName:@"Forground layer"];
  [(ISLayer *)v30 setSize:width, height];
  v31 = MEMORY[0x1E69A8990];
  v32 = [MEMORY[0x1E69A8960] iconsetResourceBundle];
  v33 = [v31 imageBagWithResourcesNamed:@"GenericForeground" fromBundle:v32];

  [(ISContentLayer *)v30 setContent:v33];
  [(ISLayer *)v15 addSublayer:v30];

  return v15;
}

@end