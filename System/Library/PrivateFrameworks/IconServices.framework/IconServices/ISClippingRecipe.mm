@interface ISClippingRecipe
- (id)hintedBadgeRect;
- (id)hintedCornerSize;
- (id)hintedFontSize;
- (id)hintedPageCurlSize;
- (id)hintedPaperRect;
- (id)hintedShadowBlur;
- (id)hintedShadowOffset;
- (id)hintedTextRect;
- (id)layerTreeForSize:(CGSize)a3 scale:(double)a4;
@end

@implementation ISClippingRecipe

- (id)hintedPaperRect
{
  if (hintedPaperRect_onceToken_381 != -1)
  {
    [ISClippingRecipe hintedPaperRect];
  }

  v3 = hintedPaperRect_rect_380;

  return v3;
}

uint64_t __35__ISClippingRecipe_hintedPaperRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:3];
  v1 = hintedPaperRect_rect_380;
  hintedPaperRect_rect_380 = v0;

  [hintedPaperRect_rect_380 addHintedRect:1.0 forSize:{1.0, 14.0, 14.0, 16.0, 16.0}];
  [hintedPaperRect_rect_380 addHintedRect:2.0 forSize:{2.0, 28.0, 28.0, 32.0, 32.0}];
  [hintedPaperRect_rect_380 addHintedRect:7.0 forSize:{7.0, 114.0, 114.0, 128.0, 128.0}];
  [hintedPaperRect_rect_380 addHintedRect:14.0 forSize:{14.0, 228.0, 228.0, 256.0, 256.0}];
  v2 = hintedPaperRect_rect_380;

  return [v2 addHintedRect:29.0 forSize:{29.0, 454.0, 454.0, 512.0, 512.0}];
}

- (id)hintedBadgeRect
{
  if (hintedBadgeRect_onceToken_385 != -1)
  {
    [ISClippingRecipe hintedBadgeRect];
  }

  v3 = hintedBadgeRect_rect_384;

  return v3;
}

uint64_t __35__ISClippingRecipe_hintedBadgeRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:3];
  v1 = hintedBadgeRect_rect_384;
  hintedBadgeRect_rect_384 = v0;

  [hintedBadgeRect_rect_384 addHintedRect:3.0 forSize:{3.0, 8.0, 8.0, 16.0, 16.0}];
  [hintedBadgeRect_rect_384 addHintedRect:6.0 forSize:{6.0, 16.0, 16.0, 32.0, 32.0}];
  v2 = hintedBadgeRect_rect_384;

  return [v2 addHintedRect:96.0 forSize:{96.0, 256.0, 256.0, 512.0, 512.0}];
}

- (id)hintedPageCurlSize
{
  if (hintedPageCurlSize_onceToken_389 != -1)
  {
    [ISClippingRecipe hintedPageCurlSize];
  }

  v3 = hintedPageCurlSize_size_388;

  return v3;
}

uint64_t __38__ISClippingRecipe_hintedPageCurlSize__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedSize alloc] initWithOptions:3];
  v1 = hintedPageCurlSize_size_388;
  hintedPageCurlSize_size_388 = v0;

  [hintedPageCurlSize_size_388 addHintedSize:6.0 forSize:{6.0, 16.0, 16.0}];
  [hintedPageCurlSize_size_388 addHintedSize:12.0 forSize:{12.0, 32.0, 32.0}];
  [hintedPageCurlSize_size_388 addHintedSize:48.0 forSize:{48.0, 128.0, 128.0}];
  [hintedPageCurlSize_size_388 addHintedSize:95.0 forSize:{95.0, 256.0, 256.0}];
  v2 = hintedPageCurlSize_size_388;

  return [v2 addHintedSize:190.0 forSize:{190.0, 512.0, 512.0}];
}

- (id)hintedCornerSize
{
  if (hintedCornerSize_onceToken_393 != -1)
  {
    [ISClippingRecipe hintedCornerSize];
  }

  v3 = hintedCornerSize_size_392;

  return v3;
}

uint64_t __36__ISClippingRecipe_hintedCornerSize__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedSize alloc] initWithOptions:3];
  v1 = hintedCornerSize_size_392;
  hintedCornerSize_size_392 = v0;

  [hintedCornerSize_size_392 addHintedSize:1.0 forSize:{1.0, 16.0, 16.0}];
  [hintedCornerSize_size_392 addHintedSize:2.0 forSize:{2.0, 32.0, 32.0}];
  [hintedCornerSize_size_392 addHintedSize:5.0 forSize:{5.0, 128.0, 128.0}];
  [hintedCornerSize_size_392 addHintedSize:9.0 forSize:{9.0, 256.0, 256.0}];
  v2 = hintedCornerSize_size_392;

  return [v2 addHintedSize:18.0 forSize:{18.0, 512.0, 512.0}];
}

- (id)hintedTextRect
{
  if (hintedTextRect_onceToken_397 != -1)
  {
    [ISClippingRecipe hintedTextRect];
  }

  v3 = hintedTextRect_rect_396;

  return v3;
}

uint64_t __34__ISClippingRecipe_hintedTextRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:3];
  v1 = hintedTextRect_rect_396;
  hintedTextRect_rect_396 = v0;

  [hintedTextRect_rect_396 addHintedRect:1.0 forSize:{1.0, 20.0, 5.0, 32.0, 32.0}];
  v2 = hintedTextRect_rect_396;

  return [v2 addHintedRect:30.0 forSize:{24.0, 284.0, 65.0, 512.0, 512.0}];
}

- (id)hintedFontSize
{
  if (hintedFontSize_onceToken_401 != -1)
  {
    [ISClippingRecipe hintedFontSize];
  }

  v3 = hintedFontSize_value_400;

  return v3;
}

uint64_t __34__ISClippingRecipe_hintedFontSize__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedFloat alloc] initWithOptions:3];
  v1 = hintedFontSize_value_400;
  hintedFontSize_value_400 = v0;

  [hintedFontSize_value_400 addHintedFloat:4.0 forSize:{32.0, 32.0}];
  [hintedFontSize_value_400 addHintedFloat:17.0 forSize:{128.0, 128.0}];
  [hintedFontSize_value_400 addHintedFloat:34.0 forSize:{256.0, 256.0}];
  v2 = hintedFontSize_value_400;

  return [v2 addHintedFloat:67.0 forSize:{512.0, 512.0}];
}

- (id)hintedShadowBlur
{
  if (hintedShadowBlur_onceToken_405 != -1)
  {
    [ISClippingRecipe hintedShadowBlur];
  }

  v3 = hintedShadowBlur_value_404;

  return v3;
}

uint64_t __36__ISClippingRecipe_hintedShadowBlur__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedFloat alloc] initWithOptions:1];
  v1 = hintedShadowBlur_value_404;
  hintedShadowBlur_value_404 = v0;

  [hintedShadowBlur_value_404 addHintedFloat:0.25 forSize:{16.0, 16.0}];
  [hintedShadowBlur_value_404 addHintedFloat:1.0 forSize:{32.0, 32.0}];
  [hintedShadowBlur_value_404 addHintedFloat:3.0 forSize:{128.0, 128.0}];
  [hintedShadowBlur_value_404 addHintedFloat:6.0 forSize:{256.0, 256.0}];
  v2 = hintedShadowBlur_value_404;

  return [v2 addHintedFloat:11.5 forSize:{512.0, 512.0}];
}

- (id)hintedShadowOffset
{
  if (hintedShadowOffset_onceToken_409 != -1)
  {
    [ISClippingRecipe hintedShadowOffset];
  }

  v3 = hintedShadowOffset_value_408;

  return v3;
}

uint64_t __38__ISClippingRecipe_hintedShadowOffset__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedSize alloc] initWithOptions:1];
  v1 = hintedShadowOffset_value_408;
  hintedShadowOffset_value_408 = v0;

  [hintedShadowOffset_value_408 addHintedSize:0.0 forSize:{-0.5, 16.0, 16.0}];
  [hintedShadowOffset_value_408 addHintedSize:0.0 forSize:{-1.0, 32.0, 32.0}];
  [hintedShadowOffset_value_408 addHintedSize:0.0 forSize:{-2.5, 128.0, 128.0}];
  [hintedShadowOffset_value_408 addHintedSize:0.0 forSize:{-5.0, 256.0, 256.0}];
  v2 = hintedShadowOffset_value_408;

  return [v2 addHintedSize:0.0 forSize:{-10.0, 512.0, 512.0}];
}

- (id)layerTreeForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8 = [(ISClippingRecipe *)self hintedBadgeRect];
  [v8 hintedRectForSize:{width, height}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [(ISClippingRecipe *)self hintedTextRect];
  [v17 hintedRectForSize:{width, height}];

  v18 = objc_alloc_init(ISLayer);
  [(ISLayer *)v18 setSize:width, height];
  v70 = v18;
  [(ISLayer *)v18 setName:@"layer"];
  v19 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v19 setName:@"masked layer"];
  v69 = v19;
  [(ISLayer *)v19 setSize:width, height];
  v20 = [objc_alloc(MEMORY[0x1E69A8968]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  [(ISContentLayer *)v19 setContent:v20];

  v21 = objc_alloc_init(ISContentLayer);
  v22 = [(ISClippingRecipe *)self hintedPaperRect];
  [v22 hintedRectForSize:{width, height}];
  [(ISLayer *)v21 setFrame:?];

  [(ISLayer *)v21 setName:@"mask shape layer"];
  v23 = [objc_alloc(MEMORY[0x1E69A8968]) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  [(ISContentLayer *)v21 setContent:v23];

  v24 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v24 setCoordinateSystem:0];
  [(ISLayer *)v24 setBlendMode:19];
  [(ISLayer *)v24 setName:@"bottomLeft"];
  v25 = [(ISClippingRecipe *)self hintedCornerSize];
  [v25 hintedSizeForSize:{width, height}];
  [(ISLayer *)v24 setSize:?];

  v26 = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
  v27 = [v26 assetCatalogURL];
  v28 = [ISAssetCatalogResource assetCatalogResourceWithURL:v27 imageName:@"document/bottom-right-mask" error:0];
  [(ISContentLayer *)v24 setContent:v28];

  [(ISLayer *)v21 addSublayer:v24];
  v29 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v29 setCoordinateSystem:3];
  [(ISLayer *)v29 setBlendMode:19];
  [(ISLayer *)v29 setName:@"topRight"];
  v30 = [(ISClippingRecipe *)self hintedPageCurlSize];
  [v30 hintedSizeForSize:{width, height}];
  [(ISLayer *)v29 setSize:?];

  v31 = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
  v32 = [v31 assetCatalogURL];
  v33 = [ISAssetCatalogResource assetCatalogResourceWithURL:v32 imageName:@"document/top-right-mask" error:0];
  [(ISContentLayer *)v29 setContent:v33];

  [(ISLayer *)v21 addSublayer:v29];
  v34 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v34 setCoordinateSystem:2];
  [(ISLayer *)v34 setFlipped:2];
  [(ISLayer *)v34 setBlendMode:19];
  [(ISLayer *)v34 setName:@"bottomRight"];
  v35 = [(ISClippingRecipe *)self hintedCornerSize];
  [v35 hintedSizeForSize:{width, height}];
  [(ISLayer *)v34 setSize:?];

  v36 = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
  v37 = [v36 assetCatalogURL];
  v38 = [ISAssetCatalogResource assetCatalogResourceWithURL:v37 imageName:@"document/bottom-right-mask" error:0];
  [(ISContentLayer *)v34 setContent:v38];

  [(ISLayer *)v21 addSublayer:v34];
  v39 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v39 setCoordinateSystem:1];
  [(ISLayer *)v39 setFlipped:1];
  [(ISLayer *)v39 setBlendMode:19];
  [(ISLayer *)v39 setName:@"topLeft"];
  v40 = [(ISClippingRecipe *)self hintedCornerSize];
  [v40 hintedSizeForSize:{width, height}];
  [(ISLayer *)v39 setSize:?];

  v41 = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
  v42 = [v41 assetCatalogURL];
  v43 = [ISAssetCatalogResource assetCatalogResourceWithURL:v42 imageName:@"document/bottom-right-mask" error:0];
  [(ISContentLayer *)v39 setContent:v43];

  [(ISLayer *)v21 addSublayer:v39];
  v44 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v44 setSize:width, height];
  [(ISLayer *)v44 setName:@"mask layer"];
  v45 = [objc_alloc(MEMORY[0x1E69A8968]) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  [(ISContentLayer *)v44 setContent:v45];

  [(ISLayer *)v44 addSublayer:v21];
  [(ISLayer *)v69 setMask:v44];

  v46 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v46 setName:@"background layer"];
  [(ISLayer *)v46 setSize:width, height];
  v47 = [objc_alloc(MEMORY[0x1E69A8968]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  [(ISContentLayer *)v46 setBackgroundColor:v47];

  [(ISContentLayer *)v46 setContent:@"kISBackgroundResourceKey"];
  [(ISLayer *)v69 addSublayer:v46];

  v48 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v48 setName:@"gradient layer"];
  [(ISLayer *)v48 setSize:width, height];
  v49 = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
  v50 = [v49 assetCatalogURL];
  v51 = [ISAssetCatalogResource assetCatalogResourceWithURL:v50 imageName:@"document/gradient" error:0];
  [(ISContentLayer *)v48 setContent:v51];

  [(ISLayer *)v69 addSublayer:v48];
  v52 = objc_alloc_init(ISContentLayer);
  v53 = [(ISClippingRecipe *)self hintedPaperRect];
  [v53 hintedRectForSize:{width, height}];
  [(ISLayer *)v52 setFrame:?];

  [(ISLayer *)v69 addSublayer:v52];
  v54 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v54 setName:@"badge layer"];
  [(ISContentLayer *)v54 setContent:@"kISBadgeResourceKey"];
  v55 = [(ISClippingRecipe *)self badgeTintColor];

  if (v55)
  {
    [(ISLayer *)v54 setSize:v14, v16];
    v56 = objc_alloc_init(ISContentLayer);
    [(ISLayer *)v56 setName:@"Tint layer"];
    [(ISLayer *)v56 setFrame:v10, v12, v14, v16];
    v57 = [(ISClippingRecipe *)self badgeTintColor];
    [(ISContentLayer *)v56 setContent:v57];

    [(ISLayer *)v56 setMask:v54];
    [(ISLayer *)v56 setCoordinateSystem:1];
    [(ISLayer *)v52 addSublayer:v56];
  }

  else
  {
    [(ISLayer *)v54 setCoordinateSystem:1];
    [(ISLayer *)v54 setFrame:v10, v12, v14, v16];
    [(ISLayer *)v52 addSublayer:v54];
  }

  v58 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v58 setName:@"Forground layer"];
  [(ISLayer *)v58 setCoordinateSystem:3];
  v59 = [(ISClippingRecipe *)self hintedPageCurlSize];
  [v59 hintedSizeForSize:{width, height}];
  [(ISLayer *)v58 setSize:?];

  [(ISLayer *)v58 setPosition:0.0, 0.0];
  v60 = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
  v61 = [v60 assetCatalogURL];
  v62 = [ISAssetCatalogResource assetCatalogResourceWithURL:v61 imageName:@"document/page-fold" error:0];
  [(ISContentLayer *)v58 setContent:v62];

  [(ISLayer *)v52 addSublayer:v58];
  v63 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v63 setName:@"shadow background layer"];
  [(ISLayer *)v63 setSize:width, height];
  v64 = objc_opt_new();
  v65 = [(ISClippingRecipe *)self hintedShadowBlur];
  [v65 hintedFloatForSize:{width, height}];
  [v64 setBlur:?];

  v66 = [(ISClippingRecipe *)self hintedShadowOffset];
  [v66 hintedSizeForSize:{width, height}];
  [v64 setOffset:?];

  v67 = [objc_alloc(MEMORY[0x1E69A8968]) initWithWhite:0.0 alpha:0.28];
  [v64 setColor:v67];

  [v64 setScale:a4];
  [(ISLayer *)v63 setEffect:v64];
  [(ISLayer *)v70 addSublayer:v63];
  [(ISLayer *)v63 addSublayer:v69];

  return v70;
}

@end