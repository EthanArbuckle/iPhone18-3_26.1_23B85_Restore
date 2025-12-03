@interface ISMultipleFilesRecipe
- (id)documentLayerWithRect:(CGRect)rect withPageFold:(BOOL)fold iconSize:(CGSize)size scale:(double)scale;
- (id)hintedCornerSize;
- (id)hintedPageCurlSize;
- (id)hintedPaperRect;
- (id)hintedShadowBlur;
- (id)hintedShadowOffset;
- (id)hintedUnderPaperRect;
- (id)layerTreeForSize:(CGSize)size scale:(double)scale;
@end

@implementation ISMultipleFilesRecipe

- (id)hintedPaperRect
{
  if (hintedPaperRect_onceToken_352 != -1)
  {
    [ISMultipleFilesRecipe hintedPaperRect];
  }

  v3 = hintedPaperRect_rect_351;

  return v3;
}

uint64_t __40__ISMultipleFilesRecipe_hintedPaperRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:3];
  v1 = hintedPaperRect_rect_351;
  hintedPaperRect_rect_351 = v0;

  [hintedPaperRect_rect_351 addHintedRect:4.0 forSize:{2.0, 12.0, 14.0, 16.0, 16.0}];
  [hintedPaperRect_rect_351 addHintedRect:7.0 forSize:{4.0, 22.0, 28.0, 32.0, 32.0}];
  v2 = hintedPaperRect_rect_351;

  return [v2 addHintedRect:104.0 forSize:{58.0, 344.0, 454.0, 512.0, 512.0}];
}

- (id)hintedUnderPaperRect
{
  if (hintedUnderPaperRect_onceToken != -1)
  {
    [ISMultipleFilesRecipe hintedUnderPaperRect];
  }

  v3 = hintedUnderPaperRect_rect;

  return v3;
}

uint64_t __45__ISMultipleFilesRecipe_hintedUnderPaperRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:3];
  v1 = hintedUnderPaperRect_rect;
  hintedUnderPaperRect_rect = v0;

  [hintedUnderPaperRect_rect addHintedRect:2.0 forSize:{1.0, 12.0, 14.0, 16.0, 16.0}];
  [hintedUnderPaperRect_rect addHintedRect:3.0 forSize:{1.0, 22.0, 28.0, 32.0, 32.0}];
  v2 = hintedUnderPaperRect_rect;

  return [v2 addHintedRect:68.0 forSize:{22.0, 344.0, 454.0, 512.0, 512.0}];
}

- (id)hintedPageCurlSize
{
  if (hintedPageCurlSize_onceToken_358 != -1)
  {
    [ISMultipleFilesRecipe hintedPageCurlSize];
  }

  v3 = hintedPageCurlSize_size_357;

  return v3;
}

uint64_t __43__ISMultipleFilesRecipe_hintedPageCurlSize__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedSize alloc] initWithOptions:3];
  v1 = hintedPageCurlSize_size_357;
  hintedPageCurlSize_size_357 = v0;

  [hintedPageCurlSize_size_357 addHintedSize:6.0 forSize:{6.0, 16.0, 16.0}];
  [hintedPageCurlSize_size_357 addHintedSize:12.0 forSize:{12.0, 32.0, 32.0}];
  [hintedPageCurlSize_size_357 addHintedSize:48.0 forSize:{48.0, 128.0, 128.0}];
  [hintedPageCurlSize_size_357 addHintedSize:95.0 forSize:{95.0, 256.0, 256.0}];
  v2 = hintedPageCurlSize_size_357;

  return [v2 addHintedSize:190.0 forSize:{190.0, 512.0, 512.0}];
}

- (id)hintedCornerSize
{
  if (hintedCornerSize_onceToken_362 != -1)
  {
    [ISMultipleFilesRecipe hintedCornerSize];
  }

  v3 = hintedCornerSize_size_361;

  return v3;
}

uint64_t __41__ISMultipleFilesRecipe_hintedCornerSize__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedSize alloc] initWithOptions:3];
  v1 = hintedCornerSize_size_361;
  hintedCornerSize_size_361 = v0;

  [hintedCornerSize_size_361 addHintedSize:1.0 forSize:{1.0, 16.0, 16.0}];
  [hintedCornerSize_size_361 addHintedSize:2.0 forSize:{2.0, 32.0, 32.0}];
  [hintedCornerSize_size_361 addHintedSize:5.0 forSize:{5.0, 128.0, 128.0}];
  [hintedCornerSize_size_361 addHintedSize:9.0 forSize:{9.0, 256.0, 256.0}];
  v2 = hintedCornerSize_size_361;

  return [v2 addHintedSize:18.0 forSize:{18.0, 512.0, 512.0}];
}

- (id)hintedShadowBlur
{
  if (hintedShadowBlur_onceToken_366 != -1)
  {
    [ISMultipleFilesRecipe hintedShadowBlur];
  }

  v3 = hintedShadowBlur_value_365;

  return v3;
}

uint64_t __41__ISMultipleFilesRecipe_hintedShadowBlur__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedFloat alloc] initWithOptions:1];
  v1 = hintedShadowBlur_value_365;
  hintedShadowBlur_value_365 = v0;

  [hintedShadowBlur_value_365 addHintedFloat:1.0 forSize:{16.0, 16.0}];
  [hintedShadowBlur_value_365 addHintedFloat:1.0 forSize:{32.0, 32.0}];
  [hintedShadowBlur_value_365 addHintedFloat:3.0 forSize:{128.0, 128.0}];
  [hintedShadowBlur_value_365 addHintedFloat:6.0 forSize:{256.0, 256.0}];
  v2 = hintedShadowBlur_value_365;

  return [v2 addHintedFloat:11.5 forSize:{512.0, 512.0}];
}

- (id)hintedShadowOffset
{
  if (hintedShadowOffset_onceToken_370 != -1)
  {
    [ISMultipleFilesRecipe hintedShadowOffset];
  }

  v3 = hintedShadowOffset_value_369;

  return v3;
}

uint64_t __43__ISMultipleFilesRecipe_hintedShadowOffset__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedSize alloc] initWithOptions:1];
  v1 = hintedShadowOffset_value_369;
  hintedShadowOffset_value_369 = v0;

  [hintedShadowOffset_value_369 addHintedSize:0.0 forSize:{-0.5, 16.0, 16.0}];
  [hintedShadowOffset_value_369 addHintedSize:0.0 forSize:{-1.0, 32.0, 32.0}];
  [hintedShadowOffset_value_369 addHintedSize:0.0 forSize:{-2.5, 128.0, 128.0}];
  [hintedShadowOffset_value_369 addHintedSize:0.0 forSize:{-5.0, 256.0, 256.0}];
  v2 = hintedShadowOffset_value_369;

  return [v2 addHintedSize:0.0 forSize:{-10.0, 512.0, 512.0}];
}

- (id)documentLayerWithRect:(CGRect)rect withPageFold:(BOOL)fold iconSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  foldCopy = fold;
  v9 = rect.size.height;
  v10 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v14 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v14 setName:@"masked layer"];
  [(ISLayer *)v14 setSize:width, height];
  v15 = [objc_alloc(MEMORY[0x1E69A8968]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  [(ISContentLayer *)v14 setContent:v15];

  v16 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v16 setFrame:x, y, v10, v9];
  [(ISLayer *)v16 setName:@"mask shape layer"];
  v17 = [objc_alloc(MEMORY[0x1E69A8968]) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  [(ISContentLayer *)v16 setContent:v17];

  v18 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v18 setCoordinateSystem:0];
  [(ISLayer *)v18 setBlendMode:19];
  [(ISLayer *)v18 setName:@"bottomLeft"];
  hintedCornerSize = [(ISMultipleFilesRecipe *)self hintedCornerSize];
  [hintedCornerSize hintedSizeForSize:{width, height}];
  [(ISLayer *)v18 setSize:?];

  iconFoundationFrameworkBundle = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
  assetCatalogURL = [iconFoundationFrameworkBundle assetCatalogURL];
  v22 = [ISAssetCatalogResource assetCatalogResourceWithURL:assetCatalogURL imageName:@"document/bottom-right-mask" error:0];
  [(ISContentLayer *)v18 setContent:v22];

  [(ISLayer *)v16 addSublayer:v18];
  v23 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v23 setCoordinateSystem:3];
  [(ISLayer *)v23 setBlendMode:19];
  [(ISLayer *)v23 setName:@"topRight"];
  hintedPageCurlSize = [(ISMultipleFilesRecipe *)self hintedPageCurlSize];
  [hintedPageCurlSize hintedSizeForSize:{width, height}];
  [(ISLayer *)v23 setSize:?];

  iconFoundationFrameworkBundle2 = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
  assetCatalogURL2 = [iconFoundationFrameworkBundle2 assetCatalogURL];
  v27 = [ISAssetCatalogResource assetCatalogResourceWithURL:assetCatalogURL2 imageName:@"document/top-right-mask" error:0];
  [(ISContentLayer *)v23 setContent:v27];

  [(ISLayer *)v16 addSublayer:v23];
  v28 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v28 setCoordinateSystem:2];
  [(ISLayer *)v28 setFlipped:2];
  [(ISLayer *)v28 setBlendMode:19];
  [(ISLayer *)v28 setName:@"bottomRight"];
  hintedCornerSize2 = [(ISMultipleFilesRecipe *)self hintedCornerSize];
  [hintedCornerSize2 hintedSizeForSize:{width, height}];
  [(ISLayer *)v28 setSize:?];

  iconFoundationFrameworkBundle3 = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
  assetCatalogURL3 = [iconFoundationFrameworkBundle3 assetCatalogURL];
  v32 = [ISAssetCatalogResource assetCatalogResourceWithURL:assetCatalogURL3 imageName:@"document/bottom-right-mask" error:0];
  [(ISContentLayer *)v28 setContent:v32];

  [(ISLayer *)v16 addSublayer:v28];
  v33 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v33 setCoordinateSystem:1];
  [(ISLayer *)v33 setFlipped:1];
  [(ISLayer *)v33 setBlendMode:19];
  [(ISLayer *)v33 setName:@"topLeft"];
  hintedCornerSize3 = [(ISMultipleFilesRecipe *)self hintedCornerSize];
  [hintedCornerSize3 hintedSizeForSize:{width, height}];
  [(ISLayer *)v33 setSize:?];

  iconFoundationFrameworkBundle4 = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
  assetCatalogURL4 = [iconFoundationFrameworkBundle4 assetCatalogURL];
  v37 = [ISAssetCatalogResource assetCatalogResourceWithURL:assetCatalogURL4 imageName:@"document/bottom-right-mask" error:0];
  [(ISContentLayer *)v33 setContent:v37];

  [(ISLayer *)v16 addSublayer:v33];
  v38 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v38 setSize:width, height];
  [(ISLayer *)v38 setName:@"mask layer"];
  v39 = [objc_alloc(MEMORY[0x1E69A8968]) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  [(ISContentLayer *)v38 setContent:v39];

  [(ISLayer *)v38 addSublayer:v16];
  [(ISLayer *)v14 setMask:v38];

  v40 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v40 setName:@"background layer"];
  [(ISLayer *)v40 setSize:width, height];
  v41 = [objc_alloc(MEMORY[0x1E69A8968]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  [(ISContentLayer *)v40 setBackgroundColor:v41];

  [(ISContentLayer *)v40 setContent:@"kISBackgroundResourceKey"];
  [(ISLayer *)v14 addSublayer:v40];

  v42 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v42 setName:@"gradient layer"];
  [(ISLayer *)v42 setSize:width, height];
  iconFoundationFrameworkBundle5 = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
  assetCatalogURL5 = [iconFoundationFrameworkBundle5 assetCatalogURL];
  v45 = [ISAssetCatalogResource assetCatalogResourceWithURL:assetCatalogURL5 imageName:@"document/gradient" error:0];
  [(ISContentLayer *)v42 setContent:v45];

  [(ISLayer *)v14 addSublayer:v42];
  if (foldCopy)
  {
    v46 = objc_alloc_init(ISContentLayer);
    hintedPaperRect = [(ISMultipleFilesRecipe *)self hintedPaperRect];
    [hintedPaperRect hintedRectForSize:{width, height}];
    [(ISLayer *)v46 setFrame:?];

    [(ISLayer *)v14 addSublayer:v46];
    v48 = objc_alloc_init(ISContentLayer);
    [(ISLayer *)v48 setName:@"Forground layer"];
    [(ISLayer *)v48 setCoordinateSystem:3];
    hintedPageCurlSize2 = [(ISMultipleFilesRecipe *)self hintedPageCurlSize];
    [hintedPageCurlSize2 hintedSizeForSize:{width, height}];
    [(ISLayer *)v48 setSize:?];

    [(ISLayer *)v48 setPosition:0.0, 0.0];
    iconFoundationFrameworkBundle6 = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
    assetCatalogURL6 = [iconFoundationFrameworkBundle6 assetCatalogURL];
    v52 = [ISAssetCatalogResource assetCatalogResourceWithURL:assetCatalogURL6 imageName:@"document/page-fold" error:0];
    [(ISContentLayer *)v48 setContent:v52];

    [(ISLayer *)v46 addSublayer:v48];
  }

  v53 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v53 setName:@"shadow background layer"];
  [(ISLayer *)v53 setSize:width, height];
  v54 = objc_opt_new();
  hintedShadowBlur = [(ISMultipleFilesRecipe *)self hintedShadowBlur];
  [hintedShadowBlur hintedFloatForSize:{width, height}];
  [v54 setBlur:?];

  hintedShadowOffset = [(ISMultipleFilesRecipe *)self hintedShadowOffset];
  [hintedShadowOffset hintedSizeForSize:{width, height}];
  [v54 setOffset:?];

  hintedShadowBlur2 = [(ISMultipleFilesRecipe *)self hintedShadowBlur];
  [hintedShadowBlur2 hintedFloatForSize:{width, height}];
  [v54 setSpread:?];

  v58 = [objc_alloc(MEMORY[0x1E69A8968]) initWithWhite:0.0 alpha:0.28];
  [v54 setColor:v58];

  [v54 setScale:scale];
  [(ISLayer *)v53 setEffect:v54];
  [(ISLayer *)v53 addSublayer:v14];
  v59 = objc_opt_new();
  [v59 setSize:{width, height}];
  [v59 addSublayer:v53];

  return v59;
}

- (id)layerTreeForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v8 = objc_alloc_init(ISLayer);
  [(ISLayer *)v8 setSize:width, height];
  [(ISLayer *)v8 setName:@"root layer"];
  hintedUnderPaperRect = [(ISMultipleFilesRecipe *)self hintedUnderPaperRect];
  [hintedUnderPaperRect hintedRectForSize:{width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  scale = [(ISMultipleFilesRecipe *)self documentLayerWithRect:0 withPageFold:v11 iconSize:v13 scale:v15, v17, width, height, scale];
  [(ISLayer *)v8 addSublayer:scale];

  hintedPaperRect = [(ISMultipleFilesRecipe *)self hintedPaperRect];
  [hintedPaperRect hintedRectForSize:{width, height}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  scale2 = [(ISMultipleFilesRecipe *)self documentLayerWithRect:1 withPageFold:v21 iconSize:v23 scale:v25, v27, width, height, scale];
  [(ISLayer *)v8 addSublayer:scale2];

  return v8;
}

@end