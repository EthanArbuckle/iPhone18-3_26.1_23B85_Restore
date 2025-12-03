@interface ISFolderRecipe
- (id)hintedBadgeRect;
- (id)hintedFontSize;
- (id)hintedImageBadgeRect;
- (id)layerTreeForSize:(CGSize)size scale:(double)scale;
- (void)updateRecipeWithImageDescriptor:(id)descriptor;
@end

@implementation ISFolderRecipe

- (id)layerTreeForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v7 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v7 setSize:width, height];
  [(ISLayer *)v7 setName:@"root layer"];
  v8 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v8 setName:@"primary content layer"];
  [(ISLayer *)v8 setSize:width, height];
  [(ISContentLayer *)v8 setContent:@"kISPrimaryResourceKey"];
  tintColor = [(ISFolderRecipe *)self tintColor];

  if (tintColor)
  {
    v10 = [ISMonochromeTintEffect alloc];
    tintColor2 = [(ISFolderRecipe *)self tintColor];
    v12 = [(ISMonochromeTintEffect *)v10 initWithColor:tintColor2];
    [(ISLayer *)v8 setEffect:v12];
  }

  [(ISLayer *)v7 addSublayer:v8];
  v13 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v13 setName:@"secondary resource layer"];
  [(ISLayer *)v13 setSize:width, height];
  [(ISContentLayer *)v13 setContent:@"kISSecondaryResourceKey"];
  [(ISLayer *)v7 addSublayer:v13];
  v14 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v14 setName:@"tertiary resource layer"];
  [(ISLayer *)v14 setSize:width, height];
  [(ISContentLayer *)v14 setContent:@"kISTertiaryResourceKey"];
  tintColor3 = [(ISFolderRecipe *)self tintColor];

  if (tintColor3)
  {
    v16 = [ISMonochromeTintEffect alloc];
    tintColor4 = [(ISFolderRecipe *)self tintColor];
    v18 = [(ISMonochromeTintEffect *)v16 initWithColor:tintColor4];
    [(ISLayer *)v14 setEffect:v18];
  }

  [(ISLayer *)v7 addSublayer:v14];
  hintedFontSize = [(ISFolderRecipe *)self hintedFontSize];
  [hintedFontSize hintedFloatForSize:{width, height}];
  v21 = v20;

  v22 = objc_alloc_init(ISTextLayer);
  [(ISLayer *)v22 setName:@"Center Emoji Text"];
  hintedImageBadgeRect = [(ISFolderRecipe *)self hintedImageBadgeRect];
  [hintedImageBadgeRect hintedRectForSize:{width, height}];
  [(ISLayer *)v22 setFrame:?];

  [(ISTextLayer *)v22 setText:@"kISTextResourceKey"];
  [(ISTextLayer *)v22 setFontSize:v21];
  [(ISLayer *)v7 addSublayer:v22];

  v24 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v24 setSize:width, height];
  [(ISLayer *)v24 setName:@"Emboss Layer"];
  v25 = objc_opt_new();
  [(ISLayer *)v24 setEffect:v25];

  v26 = objc_alloc_init(ISSymbolLayer);
  v27 = +[ISDefaults sharedInstance];
  isSolariumEnabled = [v27 isSolariumEnabled];

  if (isSolariumEnabled)
  {
    folderColor = [MEMORY[0x1E69A8968] folderColor];
    [(ISSymbolLayer *)v26 setColor:folderColor];
  }

  [(ISLayer *)v26 setName:@"Center Emboss"];
  hintedBadgeRect = [(ISFolderRecipe *)self hintedBadgeRect];
  [hintedBadgeRect hintedRectForSize:{width, height}];
  [(ISLayer *)v26 setFrame:?];

  [(ISSymbolLayer *)v26 setSymbol:@"kISBadgeResourceKey"];
  [(ISSymbolLayer *)v26 setFontSize:v21];
  [(ISLayer *)v24 addSublayer:v26];
  v31 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v31 setName:@"Center Content Emboss"];
  [(ISLayer *)v31 setSize:width, height];
  [(ISContentLayer *)v31 setContent:@"kISBadgeResourceKey"];
  [(ISContentLayer *)v31 setAcceptSymbol:0];
  [(ISLayer *)v24 addSublayer:v31];
  [(ISLayer *)v7 addSublayer:v24];

  if (![(ISFolderRecipe *)self disableShadow])
  {
    v32 = height * 0.03125;
    v33 = objc_opt_new();
    [v33 setScale:1.0];
    [v33 setSpread:1.0];
    [v33 setOffset:{0.0, v32 * -0.5}];
    [v33 setBlur:v32 + v32];
    v34 = [objc_alloc(MEMORY[0x1E69A8968]) initWithWhite:0.0 alpha:0.5];
    [v33 setColor:v34];

    [(ISLayer *)v7 setEffect:v33];
  }

  return v7;
}

- (id)hintedFontSize
{
  if (hintedFontSize_onceToken != -1)
  {
    [ISFolderRecipe hintedFontSize];
  }

  v3 = hintedFontSize_value;

  return v3;
}

uint64_t __32__ISFolderRecipe_hintedFontSize__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedFloat alloc] initWithOptions:1];
  v1 = hintedFontSize_value;
  hintedFontSize_value = v0;

  [hintedFontSize_value addHintedFloat:6.0 forSize:{16.0, 16.0}];
  v2 = hintedFontSize_value;

  return [v2 addHintedFloat:180.0 forSize:{512.0, 512.0}];
}

- (id)hintedBadgeRect
{
  if (hintedBadgeRect_onceToken_0 != -1)
  {
    [ISFolderRecipe hintedBadgeRect];
  }

  v3 = hintedBadgeRect_rect_0;

  return v3;
}

uint64_t __33__ISFolderRecipe_hintedBadgeRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:5];
  v1 = hintedBadgeRect_rect_0;
  hintedBadgeRect_rect_0 = v0;

  [hintedBadgeRect_rect_0 addHintedRect:2.0 forSize:{5.5, 12.0, 6.0, 16.0, 16.0}];
  [hintedBadgeRect_rect_0 addHintedRect:4.0 forSize:{11.0, 24.0, 12.0, 32.0, 32.0}];
  v2 = hintedBadgeRect_rect_0;

  return [v2 addHintedRect:73.0 forSize:{165.0, 366.0, 190.0, 512.0, 512.0}];
}

- (id)hintedImageBadgeRect
{
  if (hintedImageBadgeRect_onceToken != -1)
  {
    [ISFolderRecipe hintedImageBadgeRect];
  }

  v3 = hintedImageBadgeRect_rect;

  return v3;
}

uint64_t __38__ISFolderRecipe_hintedImageBadgeRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:3];
  v1 = hintedImageBadgeRect_rect;
  hintedImageBadgeRect_rect = v0;

  [hintedImageBadgeRect_rect addHintedRect:2.0 forSize:{4.0, 12.0, 6.0, 16.0, 16.0}];
  [hintedImageBadgeRect_rect addHintedRect:4.0 forSize:{8.0, 24.0, 12.0, 32.0, 32.0}];
  v2 = hintedImageBadgeRect_rect;

  return [v2 addHintedRect:73.0 forSize:{135.0, 366.0, 190.0, 512.0, 512.0}];
}

- (void)updateRecipeWithImageDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  tintColor = [(ISFolderRecipe *)self tintColor];

  if (!tintColor)
  {
    tintColor2 = [descriptorCopy tintColor];
    [(ISFolderRecipe *)self setTintColor:tintColor2];
  }
}

@end