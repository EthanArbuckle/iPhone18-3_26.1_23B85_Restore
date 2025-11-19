@interface ISTrailingStatusBadgeRecipe
- (ISTrailingStatusBadgeRecipe)init;
- (id)badgedDocumentIconRect;
- (id)badgedFolderIconRect;
- (id)defaultBadgeRect;
- (id)layerTreeForSize:(CGSize)a3 scale:(double)a4;
- (id)trailingBottomBadgeRect;
@end

@implementation ISTrailingStatusBadgeRecipe

- (ISTrailingStatusBadgeRecipe)init
{
  v3.receiver = self;
  v3.super_class = ISTrailingStatusBadgeRecipe;
  result = [(ISTrailingStatusBadgeRecipe *)&v3 init];
  if (result)
  {
    result->_primaryIconType = 0;
  }

  return result;
}

- (id)defaultBadgeRect
{
  if (defaultBadgeRect_onceToken != -1)
  {
    [ISTrailingStatusBadgeRecipe defaultBadgeRect];
  }

  v3 = defaultBadgeRect_rect;

  return v3;
}

uint64_t __47__ISTrailingStatusBadgeRecipe_defaultBadgeRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:3];
  v1 = defaultBadgeRect_rect;
  defaultBadgeRect_rect = v0;

  [defaultBadgeRect_rect addHintedRect:10.0 forSize:{0.0, 6.0, 6.0, 16.0, 16.0}];
  [defaultBadgeRect_rect addHintedRect:21.0 forSize:{1.0, 10.0, 10.0, 32.0, 32.0}];
  [defaultBadgeRect_rect addHintedRect:91.0 forSize:{1.0, 37.0, 37.0, 128.0, 128.0}];
  [defaultBadgeRect_rect addHintedRect:185.0 forSize:{4.0, 68.0, 68.0, 256.0, 256.0}];
  v2 = defaultBadgeRect_rect;

  return [v2 addHintedRect:370.0 forSize:{8.0, 135.0, 135.0, 512.0, 512.0}];
}

- (id)badgedDocumentIconRect
{
  if (badgedDocumentIconRect_onceToken != -1)
  {
    [ISTrailingStatusBadgeRecipe badgedDocumentIconRect];
  }

  v3 = badgedDocumentIconRect_rect;

  return v3;
}

uint64_t __53__ISTrailingStatusBadgeRecipe_badgedDocumentIconRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:3];
  v1 = badgedDocumentIconRect_rect;
  badgedDocumentIconRect_rect = v0;

  [badgedDocumentIconRect_rect addHintedRect:10.0 forSize:{0.0, 6.0, 6.0, 16.0, 16.0}];
  [badgedDocumentIconRect_rect addHintedRect:20.0 forSize:{0.0, 12.0, 12.0, 32.0, 32.0}];
  [badgedDocumentIconRect_rect addHintedRect:81.0 forSize:{0.0, 38.0, 38.0, 128.0, 128.0}];
  [badgedDocumentIconRect_rect addHintedRect:164.0 forSize:{1.0, 74.0, 74.0, 256.0, 256.0}];
  v2 = badgedDocumentIconRect_rect;

  return [v2 addHintedRect:334.0 forSize:{7.0, 136.0, 136.0, 512.0, 512.0}];
}

- (id)badgedFolderIconRect
{
  if (badgedFolderIconRect_onceToken != -1)
  {
    [ISTrailingStatusBadgeRecipe badgedFolderIconRect];
  }

  v3 = badgedFolderIconRect_rect;

  return v3;
}

uint64_t __51__ISTrailingStatusBadgeRecipe_badgedFolderIconRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:3];
  v1 = badgedFolderIconRect_rect;
  badgedFolderIconRect_rect = v0;

  [badgedFolderIconRect_rect addHintedRect:10.0 forSize:{0.0, 6.0, 6.0, 16.0, 16.0}];
  [badgedFolderIconRect_rect addHintedRect:20.0 forSize:{0.0, 12.0, 12.0, 32.0, 32.0}];
  [badgedFolderIconRect_rect addHintedRect:90.0 forSize:{0.0, 38.0, 38.0, 128.0, 128.0}];
  [badgedFolderIconRect_rect addHintedRect:182.0 forSize:{1.0, 74.0, 74.0, 256.0, 256.0}];
  v2 = badgedFolderIconRect_rect;

  return [v2 addHintedRect:374.0 forSize:{7.0, 136.0, 136.0, 512.0, 512.0}];
}

- (id)trailingBottomBadgeRect
{
  v3 = [(ISTrailingStatusBadgeRecipe *)self primaryIconType];
  if (v3 == 2)
  {
    v4 = [(ISTrailingStatusBadgeRecipe *)self badgedFolderIconRect];
  }

  else
  {
    if (v3 == 1)
    {
      [(ISTrailingStatusBadgeRecipe *)self badgedDocumentIconRect];
    }

    else
    {
      [(ISTrailingStatusBadgeRecipe *)self defaultBadgeRect];
    }
    v4 = ;
  }

  return v4;
}

- (id)layerTreeForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v8 setSize:width, height];
  [(ISLayer *)v8 setName:@"layer"];
  v9 = objc_opt_new();
  v10 = hintedShadowBlur();
  [v10 hintedFloatForSize:{width, height}];
  [v9 setBlur:?];

  v11 = hintedShadowSpread();
  [v11 hintedFloatForSize:{width, height}];
  [v9 setSpread:?];

  [v9 setScale:a4];
  [(ISLayer *)v8 setEffect:v9];
  v12 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v12 setName:@"Trailing bottom badge"];
  [(ISContentLayer *)v12 setContent:@"kISPrimaryResourceKey"];
  v13 = [(ISTrailingStatusBadgeRecipe *)self trailingBottomBadgeRect];
  [v13 hintedRectForSize:{width, height}];
  [(ISLayer *)v12 setFrame:?];

  [(ISLayer *)v8 addSublayer:v12];

  return v8;
}

@end