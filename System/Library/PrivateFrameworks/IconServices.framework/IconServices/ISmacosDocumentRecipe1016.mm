@interface ISmacosDocumentRecipe1016
- (id)hintedBadgeRect;
- (id)hintedCornerSize;
- (id)hintedFontSize;
- (id)hintedPageCurlSize;
- (id)hintedPaperRect;
- (id)hintedShadowBlur;
- (id)hintedShadowOffset;
- (id)hintedShadowSpread;
- (id)hintedTextRect;
- (id)layerTreeForSize:(CGSize)size scale:(double)scale;
@end

@implementation ISmacosDocumentRecipe1016

- (id)hintedPaperRect
{
  if (hintedPaperRect_onceToken_235 != -1)
  {
    [ISmacosDocumentRecipe1016 hintedPaperRect];
  }

  v3 = hintedPaperRect_rect_234;

  return v3;
}

uint64_t __44__ISmacosDocumentRecipe1016_hintedPaperRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:5];
  v1 = hintedPaperRect_rect_234;
  hintedPaperRect_rect_234 = v0;

  [hintedPaperRect_rect_234 addHintedRect:2.0 forSize:{1.0, 12.0, 14.0, 16.0, 16.0}];
  [hintedPaperRect_rect_234 addHintedRect:5.0 forSize:{2.0, 22.0, 28.0, 32.0, 32.0}];
  [hintedPaperRect_rect_234 addHintedRect:21.0 forSize:{7.0, 86.0, 114.0, 128.0, 128.0}];
  [hintedPaperRect_rect_234 addHintedRect:42.0 forSize:{14.0, 172.0, 228.0, 256.0, 256.0}];
  v2 = hintedPaperRect_rect_234;

  return [v2 addHintedRect:84.0 forSize:{29.0, 344.0, 454.0, 512.0, 512.0}];
}

- (id)hintedPageCurlSize
{
  if (hintedPageCurlSize_onceToken != -1)
  {
    [ISmacosDocumentRecipe1016 hintedPageCurlSize];
  }

  v3 = hintedPageCurlSize_size;

  return v3;
}

uint64_t __47__ISmacosDocumentRecipe1016_hintedPageCurlSize__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedSize alloc] initWithOptions:3];
  v1 = hintedPageCurlSize_size;
  hintedPageCurlSize_size = v0;

  [hintedPageCurlSize_size addHintedSize:6.0 forSize:{6.0, 16.0, 16.0}];
  [hintedPageCurlSize_size addHintedSize:12.0 forSize:{12.0, 32.0, 32.0}];
  [hintedPageCurlSize_size addHintedSize:48.0 forSize:{48.0, 128.0, 128.0}];
  [hintedPageCurlSize_size addHintedSize:95.0 forSize:{95.0, 256.0, 256.0}];
  v2 = hintedPageCurlSize_size;

  return [v2 addHintedSize:190.0 forSize:{190.0, 512.0, 512.0}];
}

- (id)hintedCornerSize
{
  if (hintedCornerSize_onceToken != -1)
  {
    [ISmacosDocumentRecipe1016 hintedCornerSize];
  }

  v3 = hintedCornerSize_size;

  return v3;
}

uint64_t __45__ISmacosDocumentRecipe1016_hintedCornerSize__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedSize alloc] initWithOptions:3];
  v1 = hintedCornerSize_size;
  hintedCornerSize_size = v0;

  [hintedCornerSize_size addHintedSize:1.0 forSize:{1.0, 16.0, 16.0}];
  [hintedCornerSize_size addHintedSize:2.0 forSize:{2.0, 32.0, 32.0}];
  [hintedCornerSize_size addHintedSize:5.0 forSize:{5.0, 128.0, 128.0}];
  [hintedCornerSize_size addHintedSize:9.0 forSize:{9.0, 256.0, 256.0}];
  v2 = hintedCornerSize_size;

  return [v2 addHintedSize:18.0 forSize:{18.0, 512.0, 512.0}];
}

- (id)hintedBadgeRect
{
  if (hintedBadgeRect_onceToken_243 != -1)
  {
    [ISmacosDocumentRecipe1016 hintedBadgeRect];
  }

  v3 = hintedBadgeRect_rect_242;

  return v3;
}

uint64_t __44__ISmacosDocumentRecipe1016_hintedBadgeRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:5];
  v1 = hintedBadgeRect_rect_242;
  hintedBadgeRect_rect_242 = v0;

  [hintedBadgeRect_rect_242 addHintedRect:1.5 forSize:{3.0, 8.0, 8.0, 16.0, 16.0}];
  [hintedBadgeRect_rect_242 addHintedRect:3.0 forSize:{6.0, 16.0, 16.0, 32.0, 32.0}];
  v2 = hintedBadgeRect_rect_242;

  return [v2 addHintedRect:44.0 forSize:{91.0, 256.0, 256.0, 512.0, 512.0}];
}

- (id)hintedTextRect
{
  if (hintedTextRect_onceToken_247 != -1)
  {
    [ISmacosDocumentRecipe1016 hintedTextRect];
  }

  v3 = hintedTextRect_rect_246;

  return v3;
}

uint64_t __43__ISmacosDocumentRecipe1016_hintedTextRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:3];
  v1 = hintedTextRect_rect_246;
  hintedTextRect_rect_246 = v0;

  [hintedTextRect_rect_246 addHintedRect:1.0 forSize:{1.0, 20.0, 5.0, 32.0, 32.0}];
  v2 = hintedTextRect_rect_246;

  return [v2 addHintedRect:30.0 forSize:{40.0, 284.0, 65.0, 512.0, 512.0}];
}

- (id)hintedFontSize
{
  if (hintedFontSize_onceToken_251 != -1)
  {
    [ISmacosDocumentRecipe1016 hintedFontSize];
  }

  v3 = hintedFontSize_value_250;

  return v3;
}

uint64_t __43__ISmacosDocumentRecipe1016_hintedFontSize__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedFloat alloc] initWithOptions:3];
  v1 = hintedFontSize_value_250;
  hintedFontSize_value_250 = v0;

  [hintedFontSize_value_250 addHintedFloat:4.0 forSize:{32.0, 32.0}];
  [hintedFontSize_value_250 addHintedFloat:17.0 forSize:{128.0, 128.0}];
  [hintedFontSize_value_250 addHintedFloat:34.0 forSize:{256.0, 256.0}];
  v2 = hintedFontSize_value_250;

  return [v2 addHintedFloat:67.0 forSize:{512.0, 512.0}];
}

- (id)hintedShadowBlur
{
  if (hintedShadowBlur_onceToken_255 != -1)
  {
    [ISmacosDocumentRecipe1016 hintedShadowBlur];
  }

  v3 = hintedShadowBlur_value_254;

  return v3;
}

uint64_t __45__ISmacosDocumentRecipe1016_hintedShadowBlur__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedFloat alloc] initWithOptions:1];
  v1 = hintedShadowBlur_value_254;
  hintedShadowBlur_value_254 = v0;

  [hintedShadowBlur_value_254 addHintedFloat:1.0 forSize:{16.0, 16.0}];
  [hintedShadowBlur_value_254 addHintedFloat:1.0 forSize:{32.0, 32.0}];
  [hintedShadowBlur_value_254 addHintedFloat:3.0 forSize:{128.0, 128.0}];
  [hintedShadowBlur_value_254 addHintedFloat:6.0 forSize:{256.0, 256.0}];
  v2 = hintedShadowBlur_value_254;

  return [v2 addHintedFloat:11.5 forSize:{512.0, 512.0}];
}

- (id)hintedShadowOffset
{
  if (hintedShadowOffset_onceToken_259 != -1)
  {
    [ISmacosDocumentRecipe1016 hintedShadowOffset];
  }

  v3 = hintedShadowOffset_value_258;

  return v3;
}

uint64_t __47__ISmacosDocumentRecipe1016_hintedShadowOffset__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedSize alloc] initWithOptions:1];
  v1 = hintedShadowOffset_value_258;
  hintedShadowOffset_value_258 = v0;

  [hintedShadowOffset_value_258 addHintedSize:0.0 forSize:{-0.5, 16.0, 16.0}];
  [hintedShadowOffset_value_258 addHintedSize:0.0 forSize:{-1.0, 32.0, 32.0}];
  [hintedShadowOffset_value_258 addHintedSize:0.0 forSize:{-2.5, 128.0, 128.0}];
  [hintedShadowOffset_value_258 addHintedSize:0.0 forSize:{-5.0, 256.0, 256.0}];
  v2 = hintedShadowOffset_value_258;

  return [v2 addHintedSize:0.0 forSize:{-10.0, 512.0, 512.0}];
}

- (id)hintedShadowSpread
{
  if (hintedShadowSpread_onceToken_263 != -1)
  {
    [ISmacosDocumentRecipe1016 hintedShadowSpread];
  }

  v3 = hintedShadowSpread_value_262;

  return v3;
}

uint64_t __47__ISmacosDocumentRecipe1016_hintedShadowSpread__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedFloat alloc] initWithOptions:1];
  v1 = hintedShadowSpread_value_262;
  hintedShadowSpread_value_262 = v0;

  [hintedShadowSpread_value_262 addHintedFloat:1.0 forSize:{16.0, 16.0}];
  [hintedShadowSpread_value_262 addHintedFloat:1.0 forSize:{32.0, 32.0}];
  [hintedShadowSpread_value_262 addHintedFloat:1.0 forSize:{128.0, 128.0}];
  [hintedShadowSpread_value_262 addHintedFloat:1.0 forSize:{256.0, 256.0}];
  v2 = hintedShadowSpread_value_262;

  return [v2 addHintedFloat:1.0 forSize:{512.0, 512.0}];
}

- (id)layerTreeForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  hintedBadgeRect = [(ISmacosDocumentRecipe1016 *)self hintedBadgeRect];
  [hintedBadgeRect hintedRectForSize:{width, height}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  hintedTextRect = [(ISmacosDocumentRecipe1016 *)self hintedTextRect];
  [hintedTextRect hintedRectForSize:{width, height}];
  v78 = v18;
  v80 = v17;
  v20 = v19;
  v22 = v21;

  v23 = objc_alloc_init(ISLayer);
  [(ISLayer *)v23 setSize:width, height];
  v82 = v23;
  [(ISLayer *)v23 setName:@"layer"];
  v24 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v24 setName:@"masked layer"];
  [(ISLayer *)v24 setSize:width, height];
  v25 = [objc_alloc(MEMORY[0x1E69A8968]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  [(ISContentLayer *)v24 setContent:v25];

  v26 = objc_alloc_init(ISContentLayer);
  hintedPaperRect = [(ISmacosDocumentRecipe1016 *)self hintedPaperRect];
  [hintedPaperRect hintedRectForSize:{width, height}];
  [(ISLayer *)v26 setFrame:?];

  [(ISLayer *)v26 setName:@"mask shape layer"];
  v28 = [objc_alloc(MEMORY[0x1E69A8968]) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  [(ISContentLayer *)v26 setContent:v28];

  v29 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v29 setCoordinateSystem:0];
  [(ISLayer *)v29 setBlendMode:19];
  [(ISLayer *)v29 setName:@"bottomLeft"];
  hintedCornerSize = [(ISmacosDocumentRecipe1016 *)self hintedCornerSize];
  [hintedCornerSize hintedSizeForSize:{width, height}];
  [(ISLayer *)v29 setSize:?];

  iconFoundationFrameworkBundle = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
  assetCatalogURL = [iconFoundationFrameworkBundle assetCatalogURL];
  v33 = [ISAssetCatalogResource assetCatalogResourceWithURL:assetCatalogURL imageName:@"document/bottom-right-mask" error:0];
  [(ISContentLayer *)v29 setContent:v33];

  [(ISLayer *)v26 addSublayer:v29];
  v34 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v34 setCoordinateSystem:3];
  [(ISLayer *)v34 setBlendMode:19];
  [(ISLayer *)v34 setName:@"topRight"];
  hintedPageCurlSize = [(ISmacosDocumentRecipe1016 *)self hintedPageCurlSize];
  [hintedPageCurlSize hintedSizeForSize:{width, height}];
  [(ISLayer *)v34 setSize:?];

  iconFoundationFrameworkBundle2 = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
  assetCatalogURL2 = [iconFoundationFrameworkBundle2 assetCatalogURL];
  v38 = [ISAssetCatalogResource assetCatalogResourceWithURL:assetCatalogURL2 imageName:@"document/top-right-mask" error:0];
  [(ISContentLayer *)v34 setContent:v38];

  [(ISLayer *)v26 addSublayer:v34];
  v39 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v39 setCoordinateSystem:2];
  [(ISLayer *)v39 setFlipped:2];
  [(ISLayer *)v39 setBlendMode:19];
  [(ISLayer *)v39 setName:@"bottomRight"];
  hintedCornerSize2 = [(ISmacosDocumentRecipe1016 *)self hintedCornerSize];
  [hintedCornerSize2 hintedSizeForSize:{width, height}];
  [(ISLayer *)v39 setSize:?];

  iconFoundationFrameworkBundle3 = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
  assetCatalogURL3 = [iconFoundationFrameworkBundle3 assetCatalogURL];
  v43 = [ISAssetCatalogResource assetCatalogResourceWithURL:assetCatalogURL3 imageName:@"document/bottom-right-mask" error:0];
  [(ISContentLayer *)v39 setContent:v43];

  [(ISLayer *)v26 addSublayer:v39];
  v44 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v44 setCoordinateSystem:1];
  [(ISLayer *)v44 setFlipped:1];
  [(ISLayer *)v44 setBlendMode:19];
  [(ISLayer *)v44 setName:@"topLeft"];
  hintedCornerSize3 = [(ISmacosDocumentRecipe1016 *)self hintedCornerSize];
  [hintedCornerSize3 hintedSizeForSize:{width, height}];
  [(ISLayer *)v44 setSize:?];

  iconFoundationFrameworkBundle4 = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
  assetCatalogURL4 = [iconFoundationFrameworkBundle4 assetCatalogURL];
  v48 = [ISAssetCatalogResource assetCatalogResourceWithURL:assetCatalogURL4 imageName:@"document/bottom-right-mask" error:0];
  [(ISContentLayer *)v44 setContent:v48];

  [(ISLayer *)v26 addSublayer:v44];
  v49 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v49 setSize:width, height];
  [(ISLayer *)v49 setName:@"mask layer"];
  v50 = [objc_alloc(MEMORY[0x1E69A8968]) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  [(ISContentLayer *)v49 setContent:v50];

  [(ISLayer *)v49 addSublayer:v26];
  [(ISLayer *)v24 setMask:v49];

  v51 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v51 setName:@"background layer"];
  [(ISLayer *)v51 setSize:width, height];
  v52 = [objc_alloc(MEMORY[0x1E69A8968]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  [(ISContentLayer *)v51 setBackgroundColor:v52];

  [(ISContentLayer *)v51 setContent:@"kISBackgroundResourceKey"];
  [(ISLayer *)v24 addSublayer:v51];

  v53 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v53 setName:@"gradient layer"];
  [(ISLayer *)v53 setSize:width, height];
  iconFoundationFrameworkBundle5 = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
  assetCatalogURL5 = [iconFoundationFrameworkBundle5 assetCatalogURL];
  v56 = [ISAssetCatalogResource assetCatalogResourceWithURL:assetCatalogURL5 imageName:@"document/gradient" error:0];
  [(ISContentLayer *)v53 setContent:v56];

  [(ISLayer *)v24 addSublayer:v53];
  v57 = objc_alloc_init(ISContentLayer);
  hintedPaperRect2 = [(ISmacosDocumentRecipe1016 *)self hintedPaperRect];
  [hintedPaperRect2 hintedRectForSize:{width, height}];
  [(ISLayer *)v57 setFrame:?];

  [(ISLayer *)v24 addSublayer:v57];
  v59 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v59 setName:@"badge layer"];
  [(ISLayer *)v59 setFrame:v9, v11, v13, v15];
  [(ISLayer *)v59 setCoordinateSystem:1];
  [(ISContentLayer *)v59 setContent:@"kISBadgeResourceKey"];
  if ([(ISmacosDocumentRecipe1016 *)self maskBadgeResource])
  {
    v60 = objc_alloc_init(ISContentLayer);
    [(ISLayer *)v60 setSize:v13, v15];
    [(ISLayer *)v60 setName:@"mask layer"];
    v61 = +[ISShapeCompositorResource continuousRoundedRectShape];
    [(ISContentLayer *)v60 setContent:v61];

    [(ISLayer *)v59 setMask:v60];
  }

  [(ISLayer *)v57 addSublayer:v59, v78, v80];

  if (width >= 32.0)
  {
    v62 = objc_alloc_init(ISTextLayer);
    [(ISLayer *)v62 setName:@"text layer"];
    [(ISLayer *)v62 setFrame:v81, v79, v20, v22];
    [(ISTextLayer *)v62 setText:@"kISTextResourceKey"];
    hintedFontSize = [(ISmacosDocumentRecipe1016 *)self hintedFontSize];
    [hintedFontSize hintedFloatForSize:{width, height}];
    [(ISTextLayer *)v62 setFontSize:?];

    v64 = [objc_alloc(MEMORY[0x1E69A8968]) initWithWhite:0.0 alpha:1.0];
    [(ISTextLayer *)v62 setColor:v64];

    v65 = objc_alloc_init(ISLegibilityEffect);
    [(ISLayer *)v62 setEffect:v65];
    [(ISLayer *)v57 addSublayer:v62];
  }

  v66 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v66 setName:@"Forground layer"];
  [(ISLayer *)v66 setCoordinateSystem:3];
  hintedPageCurlSize2 = [(ISmacosDocumentRecipe1016 *)self hintedPageCurlSize];
  [hintedPageCurlSize2 hintedSizeForSize:{width, height}];
  [(ISLayer *)v66 setSize:?];

  [(ISLayer *)v66 setPosition:0.0, 0.0];
  iconFoundationFrameworkBundle6 = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
  assetCatalogURL6 = [iconFoundationFrameworkBundle6 assetCatalogURL];
  v70 = [ISAssetCatalogResource assetCatalogResourceWithURL:assetCatalogURL6 imageName:@"document/page-fold" error:0];
  [(ISContentLayer *)v66 setContent:v70];

  [(ISLayer *)v57 addSublayer:v66];
  v71 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v71 setName:@"shadow background layer"];
  [(ISLayer *)v71 setSize:width, height];
  v72 = objc_opt_new();
  hintedShadowBlur = [(ISmacosDocumentRecipe1016 *)self hintedShadowBlur];
  [hintedShadowBlur hintedFloatForSize:{width, height}];
  [v72 setBlur:?];

  hintedShadowOffset = [(ISmacosDocumentRecipe1016 *)self hintedShadowOffset];
  [hintedShadowOffset hintedSizeForSize:{width, height}];
  [v72 setOffset:?];

  hintedShadowSpread = [(ISmacosDocumentRecipe1016 *)self hintedShadowSpread];
  [hintedShadowSpread hintedFloatForSize:{width, height}];
  [v72 setSpread:?];

  v76 = [objc_alloc(MEMORY[0x1E69A8968]) initWithWhite:0.0 alpha:0.28];
  [v72 setColor:v76];

  [v72 setScale:scale];
  [(ISLayer *)v71 setEffect:v72];
  [(ISLayer *)v82 addSublayer:v71];
  [(ISLayer *)v71 addSublayer:v24];

  return v82;
}

@end