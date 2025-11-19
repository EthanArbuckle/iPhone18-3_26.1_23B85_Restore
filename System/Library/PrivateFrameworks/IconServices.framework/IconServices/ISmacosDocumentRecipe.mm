@interface ISmacosDocumentRecipe
- (id)hintedBadgeRect;
- (id)hintedFontSize;
- (id)hintedTextRect;
- (id)layerTreeForSize:(CGSize)a3 scale:(double)a4;
@end

@implementation ISmacosDocumentRecipe

- (id)hintedBadgeRect
{
  if (hintedBadgeRect_onceToken_79 != -1)
  {
    [ISmacosDocumentRecipe hintedBadgeRect];
  }

  v3 = hintedBadgeRect_rect_78;

  return v3;
}

uint64_t __40__ISmacosDocumentRecipe_hintedBadgeRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:3];
  v1 = hintedBadgeRect_rect_78;
  hintedBadgeRect_rect_78 = v0;

  v2 = hintedBadgeRect_rect_78;

  return [v2 addHintedRect:112.0 forSize:{112.0, 288.0, 288.0, 512.0, 512.0}];
}

- (id)hintedTextRect
{
  if (hintedTextRect_onceToken != -1)
  {
    [ISmacosDocumentRecipe hintedTextRect];
  }

  v3 = hintedTextRect_rect;

  return v3;
}

uint64_t __39__ISmacosDocumentRecipe_hintedTextRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:3];
  v1 = hintedTextRect_rect;
  hintedTextRect_rect = v0;

  [hintedTextRect_rect addHintedRect:7.0 forSize:{5.0, 18.0, 6.0, 32.0, 32.0}];
  v2 = hintedTextRect_rect;

  return [v2 addHintedRect:90.0 forSize:{62.0, 332.0, 80.0, 512.0, 512.0}];
}

- (id)hintedFontSize
{
  if (hintedFontSize_onceToken_1 != -1)
  {
    [ISmacosDocumentRecipe hintedFontSize];
  }

  v3 = hintedFontSize_value_1;

  return v3;
}

uint64_t __39__ISmacosDocumentRecipe_hintedFontSize__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedFloat alloc] initWithOptions:3];
  v1 = hintedFontSize_value_1;
  hintedFontSize_value_1 = v0;

  [hintedFontSize_value_1 addHintedFloat:6.75 forSize:{32.0, 32.0}];
  [hintedFontSize_value_1 addHintedFloat:18.0 forSize:{128.0, 128.0}];
  [hintedFontSize_value_1 addHintedFloat:36.0 forSize:{256.0, 256.0}];
  v2 = hintedFontSize_value_1;

  return [v2 addHintedFloat:72.0 forSize:{512.0, 512.0}];
}

- (id)layerTreeForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [(ISmacosDocumentRecipe *)self hintedBadgeRect:a3.width];
  [v7 hintedRectForSize:{width, height}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(ISmacosDocumentRecipe *)self hintedTextRect];
  [v16 hintedRectForSize:{width, height}];
  v45 = v18;
  v46 = v17;
  v20 = v19;
  v22 = v21;

  v23 = objc_alloc_init(ISLayer);
  [(ISLayer *)v23 setSize:width, height];
  [(ISLayer *)v23 setName:@"layer"];
  v24 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v24 setName:@"Background layer"];
  [(ISLayer *)v24 setSize:width, height];
  v25 = MEMORY[0x1E69A8990];
  v26 = [MEMORY[0x1E69A8960] iconsetResourceBundle];
  v27 = [v25 imageBagWithResourcesNamed:@"GenericBackground" fromBundle:v26];

  [(ISContentLayer *)v24 setContent:v27];
  [(ISLayer *)v23 addSublayer:v24];

  v28 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v28 setName:@"masked layer"];
  [(ISLayer *)v28 setSize:width, height];
  v29 = [objc_alloc(MEMORY[0x1E69A8968]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  [(ISContentLayer *)v28 setContent:v29];

  v30 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v30 setName:@"background layer"];
  [(ISLayer *)v30 setSize:width, height];
  [(ISContentLayer *)v30 setContent:@"kISBackgroundResourceKey"];
  [(ISLayer *)v28 addSublayer:v30];

  v31 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v31 setName:@"badge layer"];
  [(ISLayer *)v31 setFrame:v9, v11, v13, v15];
  [(ISContentLayer *)v31 setContent:@"kISBadgeResourceKey"];
  [(ISLayer *)v28 addSublayer:v31];

  if (width > 16.0)
  {
    v32 = objc_alloc_init(ISTextLayer);
    [(ISLayer *)v32 setName:@"text layer"];
    [(ISLayer *)v32 setFrame:v46, v45, v20, v22];
    [(ISTextLayer *)v32 setText:@"kISTextResourceKey"];
    v33 = [(ISmacosDocumentRecipe *)self hintedFontSize];
    [v33 hintedFloatForSize:{width, height}];
    [(ISTextLayer *)v32 setFontSize:?];

    if (width * 0.001953125 >= 0.125)
    {
      v34 = 0.33;
    }

    else
    {
      v34 = fmax((0.125 - width * 0.001953125) * 0.3 / -0.09375 + 0.3, 0.0);
    }

    v35 = [objc_alloc(MEMORY[0x1E69A8968]) initWithWhite:v34 alpha:1.0];
    [(ISTextLayer *)v32 setColor:v35];

    [(ISLayer *)v28 addSublayer:v32];
  }

  v36 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v36 setSize:width, height];
  [(ISLayer *)v36 setName:@"mask layer"];
  v37 = MEMORY[0x1E69A8990];
  v38 = [MEMORY[0x1E69A8960] iconsetResourceBundle];
  v39 = [v37 imageBagWithResourcesNamed:@"GenericFullDocumentMask" fromBundle:v38];

  if (v39)
  {
    [(ISContentLayer *)v36 setContent:v39];
    [(ISLayer *)v28 setMask:v36];
  }

  [(ISLayer *)v23 addSublayer:v28];
  v40 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v40 setName:@"Forground layer"];
  [(ISLayer *)v40 setSize:width, height];
  v41 = MEMORY[0x1E69A8990];
  v42 = [MEMORY[0x1E69A8960] iconsetResourceBundle];
  v43 = [v41 imageBagWithResourcesNamed:@"GenericForeground" fromBundle:v42];

  [(ISContentLayer *)v40 setContent:v43];
  [(ISLayer *)v23 addSublayer:v40];

  return v23;
}

@end