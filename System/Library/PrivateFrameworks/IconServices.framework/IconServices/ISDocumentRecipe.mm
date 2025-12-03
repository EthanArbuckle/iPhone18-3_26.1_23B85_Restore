@interface ISDocumentRecipe
- (id)curlResource;
- (id)hintedBadgeRect;
- (id)hintedPaperRect;
- (id)hintedShadowBlur;
- (id)hintedShadowOffset;
- (id)hintedShadowSpread;
- (id)hintedSymbolFontSize;
- (id)hintedTextFontSize;
- (id)hintedTextRect;
- (id)iconSpecification;
- (id)layerTreeForSize:(CGSize)size scale:(double)scale;
- (id)pageResource;
@end

@implementation ISDocumentRecipe

- (id)hintedPaperRect
{
  if (([(ISDocumentRecipe *)self platform]& 0x3C) != 0)
  {
    if (hintedPaperRect_onceToken != -1)
    {
      [ISDocumentRecipe hintedPaperRect];
    }

    v2 = &hintedPaperRect_rect;
  }

  else
  {
    if (hintedPaperRect_onceToken_106 != -1)
    {
      [ISDocumentRecipe hintedPaperRect];
    }

    v2 = &hintedPaperRect_rect_105;
  }

  v3 = *v2;

  return v3;
}

uint64_t __35__ISDocumentRecipe_hintedPaperRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:5];
  v1 = hintedPaperRect_rect;
  hintedPaperRect_rect = v0;

  [hintedPaperRect_rect addHintedRect:9.0 forSize:{4.0, 33.0, 43.0, 51.0, 51.0}];
  [hintedPaperRect_rect addHintedRect:10.0 forSize:{4.0, 36.0, 48.0, 56.0, 56.0}];
  [hintedPaperRect_rect addHintedRect:18.0 forSize:{7.0, 62.0, 84.0, 98.0, 98.0}];
  [hintedPaperRect_rect addHintedRect:27.0 forSize:{11.0, 94.0, 126.0, 148.0, 148.0}];
  [hintedPaperRect_rect addHintedRect:67.0 forSize:{27.0, 238.0, 320.0, 373.0, 373.0}];
  v2 = hintedPaperRect_rect;

  return [v2 addHintedRect:201.0 forSize:{80.0, 717.0, 960.0, 1120.0, 1120.0}];
}

uint64_t __35__ISDocumentRecipe_hintedPaperRect__block_invoke_2()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:5];
  v1 = hintedPaperRect_rect_105;
  hintedPaperRect_rect_105 = v0;

  [hintedPaperRect_rect_105 addHintedRect:3.0 forSize:{1.0, 10.0, 14.0, 16.0, 16.0}];
  [hintedPaperRect_rect_105 addHintedRect:5.0 forSize:{2.0, 22.0, 28.0, 32.0, 32.0}];
  [hintedPaperRect_rect_105 addHintedRect:23.0 forSize:{9.0, 82.0, 110.0, 128.0, 128.0}];
  [hintedPaperRect_rect_105 addHintedRect:46.0 forSize:{18.0, 166.0, 220.0, 256.0, 256.0}];
  v2 = hintedPaperRect_rect_105;

  return [v2 addHintedRect:92.0 forSize:{37.0, 327.0, 438.0, 512.0, 512.0}];
}

- (id)hintedBadgeRect
{
  v3 = [(ISDocumentRecipe *)self platform]& 0x3C;
  badgeWithSymbol = [(ISDocumentRecipe *)self badgeWithSymbol];
  if (v3)
  {
    if (badgeWithSymbol)
    {
      if (hintedBadgeRect_onceToken_110 != -1)
      {
        [ISDocumentRecipe hintedBadgeRect];
      }

      v5 = &hintedBadgeRect_rect_109;
    }

    else
    {
      if (hintedBadgeRect_onceToken_114 != -1)
      {
        [ISDocumentRecipe hintedBadgeRect];
      }

      v5 = &hintedBadgeRect_rect_113;
    }
  }

  else if (badgeWithSymbol)
  {
    if (hintedBadgeRect_onceToken_118 != -1)
    {
      [ISDocumentRecipe hintedBadgeRect];
    }

    v5 = &hintedBadgeRect_rect_117;
  }

  else
  {
    if (hintedBadgeRect_onceToken_122 != -1)
    {
      [ISDocumentRecipe hintedBadgeRect];
    }

    v5 = &hintedBadgeRect_rect_121;
  }

  v6 = *v5;

  return v6;
}

uint64_t __35__ISDocumentRecipe_hintedBadgeRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:5];
  v1 = hintedBadgeRect_rect_109;
  hintedBadgeRect_rect_109 = v0;

  [hintedBadgeRect_rect_109 addHintedRect:7.0 forSize:{14.0449438, 18.0, 18.0, 51.0, 51.0}];
  [hintedBadgeRect_rect_109 addHintedRect:8.0 forSize:{15.7303371, 20.0, 20.0, 56.0, 56.0}];
  [hintedBadgeRect_rect_109 addHintedRect:14.0 forSize:{28.0898876, 34.0, 34.0, 98.0, 98.0}];
  [hintedBadgeRect_rect_109 addHintedRect:21.0 forSize:{41.5730337, 52.0, 52.0, 148.0, 148.0}];
  v2 = hintedBadgeRect_rect_109;

  return [v2 addHintedRect:54.0 forSize:{106.741573, 130.0, 130.0, 373.0, 373.0}];
}

uint64_t __35__ISDocumentRecipe_hintedBadgeRect__block_invoke_2()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:5];
  v1 = hintedBadgeRect_rect_113;
  hintedBadgeRect_rect_113 = v0;

  [hintedBadgeRect_rect_113 addHintedRect:7.0 forSize:{12.0, 18.0, 18.0, 51.0, 51.0}];
  [hintedBadgeRect_rect_113 addHintedRect:8.0 forSize:{14.0, 20.0, 20.0, 56.0, 56.0}];
  [hintedBadgeRect_rect_113 addHintedRect:14.0 forSize:{25.0, 34.0, 34.0, 98.0, 98.0}];
  [hintedBadgeRect_rect_113 addHintedRect:21.0 forSize:{37.0, 52.0, 52.0, 148.0, 148.0}];
  v2 = hintedBadgeRect_rect_113;

  return [v2 addHintedRect:54.0 forSize:{95.0, 130.0, 130.0, 373.0, 373.0}];
}

uint64_t __35__ISDocumentRecipe_hintedBadgeRect__block_invoke_3()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:5];
  v1 = hintedBadgeRect_rect_117;
  hintedBadgeRect_rect_117 = v0;

  [hintedBadgeRect_rect_117 addHintedRect:2.0 forSize:{5.0, 6.0, 6.0, 16.0, 16.0}];
  [hintedBadgeRect_rect_117 addHintedRect:4.0 forSize:{9.0, 14.0, 14.0, 32.0, 32.0}];
  [hintedBadgeRect_rect_117 addHintedRect:21.0 forSize:{42.0, 40.0, 40.0, 128.0, 128.0}];
  [hintedBadgeRect_rect_117 addHintedRect:42.0 forSize:{84.0, 80.0, 80.0, 256.0, 256.0}];
  v2 = hintedBadgeRect_rect_117;

  return [v2 addHintedRect:80.0 forSize:{164.0, 168.0, 168.0, 512.0, 512.0}];
}

uint64_t __35__ISDocumentRecipe_hintedBadgeRect__block_invoke_4()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:5];
  v1 = hintedBadgeRect_rect_121;
  hintedBadgeRect_rect_121 = v0;

  [hintedBadgeRect_rect_121 addHintedRect:2.0 forSize:{4.0, 6.0, 6.0, 16.0, 16.0}];
  [hintedBadgeRect_rect_121 addHintedRect:3.0 forSize:{6.0, 16.0, 16.0, 32.0, 32.0}];
  [hintedBadgeRect_rect_121 addHintedRect:16.0 forSize:{30.0, 50.0, 50.0, 128.0, 128.0}];
  [hintedBadgeRect_rect_121 addHintedRect:33.0 forSize:{61.0, 98.0, 98.0, 256.0, 256.0}];
  v2 = hintedBadgeRect_rect_121;

  return [v2 addHintedRect:60.0 forSize:{115.0, 208.0, 208.0, 512.0, 512.0}];
}

- (id)hintedTextRect
{
  if (([(ISDocumentRecipe *)self platform]& 0x3C) != 0)
  {
    if (hintedTextRect_onceToken_126 != -1)
    {
      [ISDocumentRecipe hintedTextRect];
    }

    v2 = &hintedTextRect_rect_125;
  }

  else
  {
    if (hintedTextRect_onceToken_130 != -1)
    {
      [ISDocumentRecipe hintedTextRect];
    }

    v2 = &hintedTextRect_rect_129;
  }

  v3 = *v2;

  return v3;
}

uint64_t __34__ISDocumentRecipe_hintedTextRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:3];
  v1 = hintedTextRect_rect_125;
  hintedTextRect_rect_125 = v0;

  [hintedTextRect_rect_125 addHintedRect:3.3 forSize:{3.0, 26.4, 6.0, 51.0, 51.0}];
  [hintedTextRect_rect_125 addHintedRect:3.6 forSize:{3.0, 28.8, 6.0, 56.0, 56.0}];
  [hintedTextRect_rect_125 addHintedRect:6.2 forSize:{6.0, 49.6, 12.0, 98.0, 98.0}];
  [hintedTextRect_rect_125 addHintedRect:9.4 forSize:{9.0, 75.2, 18.0, 148.0, 148.0}];
  v2 = hintedTextRect_rect_125;

  return [v2 addHintedRect:23.8 forSize:{22.0, 190.4, 44.0, 373.0, 373.0}];
}

uint64_t __34__ISDocumentRecipe_hintedTextRect__block_invoke_2()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:3];
  v1 = hintedTextRect_rect_129;
  hintedTextRect_rect_129 = v0;

  [hintedTextRect_rect_129 addHintedRect:1.0 forSize:{1.0, 20.0, 1.0, 32.0, 32.0}];
  [hintedTextRect_rect_129 addHintedRect:9.0 forSize:{8.0, 64.0, 17.0, 128.0, 128.0}];
  [hintedTextRect_rect_129 addHintedRect:16.0 forSize:{17.0, 132.0, 33.0, 256.0, 256.0}];
  v2 = hintedTextRect_rect_129;

  return [v2 addHintedRect:33.0 forSize:{31.0, 261.0, 60.0, 512.0, 512.0}];
}

- (id)hintedTextFontSize
{
  if (([(ISDocumentRecipe *)self platform]& 0x3C) != 0)
  {
    if (hintedTextFontSize_onceToken != -1)
    {
      [ISDocumentRecipe hintedTextFontSize];
    }

    v2 = &hintedTextFontSize_value;
  }

  else
  {
    if (hintedTextFontSize_onceToken_136 != -1)
    {
      [ISDocumentRecipe hintedTextFontSize];
    }

    v2 = &hintedTextFontSize_value_135;
  }

  v3 = *v2;

  return v3;
}

uint64_t __38__ISDocumentRecipe_hintedTextFontSize__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedFloat alloc] initWithOptions:1];
  v1 = hintedTextFontSize_value;
  hintedTextFontSize_value = v0;

  [hintedTextFontSize_value addHintedFloat:5.0 forSize:{51.0, 51.0}];
  [hintedTextFontSize_value addHintedFloat:5.5 forSize:{56.0, 56.0}];
  [hintedTextFontSize_value addHintedFloat:9.75 forSize:{98.0, 98.0}];
  [hintedTextFontSize_value addHintedFloat:14.75 forSize:{148.0, 148.0}];
  v2 = hintedTextFontSize_value;

  return [v2 addHintedFloat:36.75 forSize:{373.0, 373.0}];
}

uint64_t __38__ISDocumentRecipe_hintedTextFontSize__block_invoke_2()
{
  v0 = [(ISHintedValue *)[ISHintedFloat alloc] initWithOptions:1];
  v1 = hintedTextFontSize_value_135;
  hintedTextFontSize_value_135 = v0;

  [hintedTextFontSize_value_135 addHintedFloat:16.5 forSize:{128.0, 128.0}];
  [hintedTextFontSize_value_135 addHintedFloat:33.0 forSize:{256.0, 256.0}];
  v2 = hintedTextFontSize_value_135;

  return [v2 addHintedFloat:60.0 forSize:{512.0, 512.0}];
}

- (id)hintedSymbolFontSize
{
  hasText = [(ISDocumentRecipe *)self hasText];
  v4 = [(ISDocumentRecipe *)self platform]& 0x3C;
  if (hasText)
  {
    if (v4)
    {
      if (hintedSymbolFontSize_onceToken != -1)
      {
        [ISDocumentRecipe hintedSymbolFontSize];
      }

      v5 = &hintedSymbolFontSize_value;
    }

    else
    {
      if (hintedSymbolFontSize_onceToken_142 != -1)
      {
        [ISDocumentRecipe hintedSymbolFontSize];
      }

      v5 = &hintedSymbolFontSize_value_141;
    }
  }

  else if (v4)
  {
    if (hintedSymbolFontSize_onceToken_146 != -1)
    {
      [ISDocumentRecipe hintedSymbolFontSize];
    }

    v5 = &hintedSymbolFontSize_value_145;
  }

  else
  {
    if (hintedSymbolFontSize_onceToken_150 != -1)
    {
      [ISDocumentRecipe hintedSymbolFontSize];
    }

    v5 = &hintedSymbolFontSize_value_149;
  }

  v6 = *v5;

  return v6;
}

uint64_t __40__ISDocumentRecipe_hintedSymbolFontSize__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedFloat alloc] initWithOptions:1];
  v1 = hintedSymbolFontSize_value;
  hintedSymbolFontSize_value = v0;

  [hintedSymbolFontSize_value addHintedFloat:15.0 forSize:{51.0, 51.0}];
  [hintedSymbolFontSize_value addHintedFloat:16.5 forSize:{56.0, 56.0}];
  [hintedSymbolFontSize_value addHintedFloat:28.75 forSize:{98.0, 98.0}];
  [hintedSymbolFontSize_value addHintedFloat:43.75 forSize:{148.0, 148.0}];
  v2 = hintedSymbolFontSize_value;

  return [v2 addHintedFloat:109.5 forSize:{373.0, 373.0}];
}

uint64_t __40__ISDocumentRecipe_hintedSymbolFontSize__block_invoke_2()
{
  v0 = [(ISHintedValue *)[ISHintedFloat alloc] initWithOptions:1];
  v1 = hintedSymbolFontSize_value_141;
  hintedSymbolFontSize_value_141 = v0;

  [hintedSymbolFontSize_value_141 addHintedFloat:5.25 forSize:{16.0, 16.0}];
  [hintedSymbolFontSize_value_141 addHintedFloat:10.25 forSize:{32.0, 32.0}];
  [hintedSymbolFontSize_value_141 addHintedFloat:37.5 forSize:{128.0, 128.0}];
  [hintedSymbolFontSize_value_141 addHintedFloat:75.0 forSize:{256.0, 256.0}];
  v2 = hintedSymbolFontSize_value_141;

  return [v2 addHintedFloat:150.0 forSize:{512.0, 512.0}];
}

uint64_t __40__ISDocumentRecipe_hintedSymbolFontSize__block_invoke_3()
{
  v0 = [(ISHintedValue *)[ISHintedFloat alloc] initWithOptions:1];
  v1 = hintedSymbolFontSize_value_145;
  hintedSymbolFontSize_value_145 = v0;

  [hintedSymbolFontSize_value_145 addHintedFloat:16.5 forSize:{51.0, 51.0}];
  [hintedSymbolFontSize_value_145 addHintedFloat:18.0 forSize:{56.0, 56.0}];
  [hintedSymbolFontSize_value_145 addHintedFloat:31.5 forSize:{98.0, 98.0}];
  [hintedSymbolFontSize_value_145 addHintedFloat:48.0 forSize:{148.0, 148.0}];
  v2 = hintedSymbolFontSize_value_145;

  return [v2 addHintedFloat:120.0 forSize:{373.0, 373.0}];
}

uint64_t __40__ISDocumentRecipe_hintedSymbolFontSize__block_invoke_4()
{
  v0 = [(ISHintedValue *)[ISHintedFloat alloc] initWithOptions:1];
  v1 = hintedSymbolFontSize_value_149;
  hintedSymbolFontSize_value_149 = v0;

  [hintedSymbolFontSize_value_149 addHintedFloat:5.25 forSize:{16.0, 16.0}];
  [hintedSymbolFontSize_value_149 addHintedFloat:10.25 forSize:{32.0, 32.0}];
  [hintedSymbolFontSize_value_149 addHintedFloat:41.25 forSize:{128.0, 128.0}];
  [hintedSymbolFontSize_value_149 addHintedFloat:82.5 forSize:{256.0, 256.0}];
  v2 = hintedSymbolFontSize_value_149;

  return [v2 addHintedFloat:165.0 forSize:{512.0, 512.0}];
}

- (id)hintedShadowBlur
{
  if (hintedShadowBlur_onceToken_1 != -1)
  {
    [ISDocumentRecipe hintedShadowBlur];
  }

  v3 = hintedShadowBlur_value_1;

  return v3;
}

uint64_t __36__ISDocumentRecipe_hintedShadowBlur__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedFloat alloc] initWithOptions:1];
  v1 = hintedShadowBlur_value_1;
  hintedShadowBlur_value_1 = v0;

  [hintedShadowBlur_value_1 addHintedFloat:1.0 forSize:{16.0, 16.0}];
  [hintedShadowBlur_value_1 addHintedFloat:1.0 forSize:{32.0, 32.0}];
  [hintedShadowBlur_value_1 addHintedFloat:3.0 forSize:{128.0, 128.0}];
  [hintedShadowBlur_value_1 addHintedFloat:6.0 forSize:{256.0, 256.0}];
  v2 = hintedShadowBlur_value_1;

  return [v2 addHintedFloat:11.5 forSize:{512.0, 512.0}];
}

- (id)hintedShadowOffset
{
  if (hintedShadowOffset_onceToken_0 != -1)
  {
    [ISDocumentRecipe hintedShadowOffset];
  }

  v3 = hintedShadowOffset_value_0;

  return v3;
}

uint64_t __38__ISDocumentRecipe_hintedShadowOffset__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedSize alloc] initWithOptions:1];
  v1 = hintedShadowOffset_value_0;
  hintedShadowOffset_value_0 = v0;

  [hintedShadowOffset_value_0 addHintedSize:0.0 forSize:{-0.5, 16.0, 16.0}];
  [hintedShadowOffset_value_0 addHintedSize:0.0 forSize:{-1.0, 32.0, 32.0}];
  [hintedShadowOffset_value_0 addHintedSize:0.0 forSize:{-2.5, 128.0, 128.0}];
  [hintedShadowOffset_value_0 addHintedSize:0.0 forSize:{-5.0, 256.0, 256.0}];
  v2 = hintedShadowOffset_value_0;

  return [v2 addHintedSize:0.0 forSize:{-10.0, 512.0, 512.0}];
}

- (id)hintedShadowSpread
{
  if (hintedShadowSpread_onceToken_0 != -1)
  {
    [ISDocumentRecipe hintedShadowSpread];
  }

  v3 = hintedShadowSpread_value_0;

  return v3;
}

uint64_t __38__ISDocumentRecipe_hintedShadowSpread__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedFloat alloc] initWithOptions:1];
  v1 = hintedShadowSpread_value_0;
  hintedShadowSpread_value_0 = v0;

  [hintedShadowSpread_value_0 addHintedFloat:1.0 forSize:{16.0, 16.0}];
  [hintedShadowSpread_value_0 addHintedFloat:1.0 forSize:{32.0, 32.0}];
  [hintedShadowSpread_value_0 addHintedFloat:1.0 forSize:{128.0, 128.0}];
  [hintedShadowSpread_value_0 addHintedFloat:1.0 forSize:{256.0, 256.0}];
  v2 = hintedShadowSpread_value_0;

  return [v2 addHintedFloat:1.0 forSize:{512.0, 512.0}];
}

- (id)pageResource
{
  if (([(ISDocumentRecipe *)self platform]& 0x3C) != 0)
  {
    v2 = @"document/solarium_ios/page";
  }

  else
  {
    v2 = @"document/solarium/page";
  }

  iconFoundationFrameworkBundle = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
  assetCatalogURL = [iconFoundationFrameworkBundle assetCatalogURL];
  v5 = [ISAssetCatalogResource assetCatalogResourceWithURL:assetCatalogURL imageName:v2 error:0];

  return v5;
}

- (id)curlResource
{
  if (([(ISDocumentRecipe *)self platform]& 0x3C) != 0)
  {
    v2 = @"document/solarium_ios/page-fold";
  }

  else
  {
    v2 = @"document/solarium/page-fold";
  }

  iconFoundationFrameworkBundle = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
  assetCatalogURL = [iconFoundationFrameworkBundle assetCatalogURL];
  v5 = [ISAssetCatalogResource assetCatalogResourceWithURL:assetCatalogURL imageName:v2 error:0];

  return v5;
}

- (id)layerTreeForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v7 = [(ISDocumentRecipe *)self hintedPaperRect:size.width];
  [v7 hintedRectForSize:{width, height}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  hintedBadgeRect = [(ISDocumentRecipe *)self hintedBadgeRect];
  [hintedBadgeRect hintedRectForSize:{width, height}];
  v50 = v18;
  v51 = v17;
  v52 = v19;
  v21 = v20;

  hintedTextRect = [(ISDocumentRecipe *)self hintedTextRect];
  [hintedTextRect hintedRectForSize:{width, height}];
  v48 = v24;
  v49 = v23;
  v46 = v26;
  v47 = v25;

  v27 = objc_alloc_init(ISLayer);
  [(ISLayer *)v27 setSize:width, height];
  [(ISLayer *)v27 setName:@"root layer"];
  v28 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v28 setName:@"background layer"];
  [(ISLayer *)v28 setSize:width, height];
  pageResource = [(ISDocumentRecipe *)self pageResource];
  [(ISContentLayer *)v28 setContent:pageResource];

  if ([(ISDocumentRecipe *)self hasBespokeBackground])
  {
    v30 = objc_alloc_init(ISContentLayer);
    [(ISLayer *)v30 setName:@"suppliedBackground layer"];
    [(ISLayer *)v30 setSize:width, height];
    [(ISContentLayer *)v30 setContent:@"kISBackgroundResourceKey"];
    treatLikeSymbol = [(ISDocumentRecipe *)self treatLikeSymbol];
    v32 = off_1E77C5FC0;
    if (!treatLikeSymbol)
    {
      v32 = off_1E77C5F88;
    }

    v33 = objc_alloc_init(*v32);
    [(ISLayer *)v30 setEffect:v33];

    [(ISLayer *)v28 addSublayer:v30];
  }

  v34 = objc_opt_new();
  [v34 setScale:1.0];
  [v34 setSpread:1.0];
  [v34 setOffset:{0.0, height * 0.03125 * -0.5}];
  [v34 setBlur:height * 0.03125 + height * 0.03125];
  v35 = [objc_alloc(MEMORY[0x1E69A8968]) initWithWhite:0.0 alpha:0.5];
  [v34 setColor:v35];

  [(ISLayer *)v28 setEffect:v34];
  [(ISLayer *)v27 addSublayer:v28];

  v36 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v36 setFrame:v9, v11, v13, v15];
  [(ISLayer *)v27 addSublayer:v36];
  if ([(ISDocumentRecipe *)self badgeWithSymbol])
  {
    v37 = objc_alloc_init(ISSymbolLayer);
    [(ISSymbolLayer *)v37 setSymbol:@"kISBadgeResourceKey"];
    hintedSymbolFontSize = [(ISDocumentRecipe *)self hintedSymbolFontSize];
    [hintedSymbolFontSize hintedFloatForSize:{width, height}];
    [(ISSymbolLayer *)v37 setFontSize:?];

    [(ISLayer *)v37 setSize:width, height];
  }

  else
  {
    v37 = objc_alloc_init(ISContentLayer);
    [(ISLayer *)v37 setCoordinateSystem:1];
    [(ISSymbolLayer *)v37 setContent:@"kISBadgeResourceKey"];
  }

  [(ISLayer *)v37 setName:@"badge layer"];
  [(ISLayer *)v37 setFrame:v51, v50, v52, v21];
  if ([(ISDocumentRecipe *)self maskBadgeResource]&& ![(ISDocumentRecipe *)self badgeWithSymbol])
  {
    v39 = objc_alloc_init(ISContentLayer);
    [(ISLayer *)v39 setSize:v52, v21];
    [(ISLayer *)v39 setName:@"mask layer"];
    v40 = +[ISShapeCompositorResource continuousRoundedRectShape];
    [(ISContentLayer *)v39 setContent:v40];

    [(ISLayer *)v37 setMask:v39];
  }

  [(ISLayer *)v36 addSublayer:v37];

  if (width > 32.0)
  {
    v41 = objc_alloc_init(ISTextLayer);
    [(ISLayer *)v41 setName:@"text layer"];
    [(ISLayer *)v41 setFrame:v49, v48, v47, v46];
    [(ISTextLayer *)v41 setText:@"kISTextResourceKey"];
    hintedTextFontSize = [(ISDocumentRecipe *)self hintedTextFontSize];
    [hintedTextFontSize hintedFloatForSize:{width, height}];
    [(ISTextLayer *)v41 setFontSize:?];

    [(ISLayer *)v36 addSublayer:v41];
  }

  v43 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v43 setName:@"page fold layer"];
  [(ISLayer *)v43 setSize:width, height];
  curlResource = [(ISDocumentRecipe *)self curlResource];
  [(ISContentLayer *)v43 setContent:curlResource];

  [(ISLayer *)v27 addSublayer:v43];

  return v27;
}

- (id)iconSpecification
{
  if (([(ISDocumentRecipe *)self platform]& 0x3C) != 0)
  {
    [MEMORY[0x1E69A8980] iosDocumentIconSpecification];
  }

  else
  {
    [MEMORY[0x1E69A8980] macosIconSpecification];
  }
  v2 = ;

  return v2;
}

@end