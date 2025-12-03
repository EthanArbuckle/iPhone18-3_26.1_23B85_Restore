@interface ISLeadingStatusBadgeRecipe
- (ISLeadingStatusBadgeRecipe)init;
- (id)badgedDocumentIconRect;
- (id)badgedFolderIconRect;
- (id)defaultBadgeRect;
- (id)layerTreeForSize:(CGSize)size scale:(double)scale;
- (id)leadingBottomBadgeRect;
@end

@implementation ISLeadingStatusBadgeRecipe

- (ISLeadingStatusBadgeRecipe)init
{
  v3.receiver = self;
  v3.super_class = ISLeadingStatusBadgeRecipe;
  result = [(ISLeadingStatusBadgeRecipe *)&v3 init];
  if (result)
  {
    result->_primaryIconType = 0;
  }

  return result;
}

- (id)defaultBadgeRect
{
  if (defaultBadgeRect_onceToken_71 != -1)
  {
    [ISLeadingStatusBadgeRecipe defaultBadgeRect];
  }

  v3 = defaultBadgeRect_rect_70;

  return v3;
}

uint64_t __46__ISLeadingStatusBadgeRecipe_defaultBadgeRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:3];
  v1 = defaultBadgeRect_rect_70;
  defaultBadgeRect_rect_70 = v0;

  [defaultBadgeRect_rect_70 addHintedRect:0.0 forSize:{0.0, 6.0, 6.0, 16.0, 16.0}];
  [defaultBadgeRect_rect_70 addHintedRect:1.0 forSize:{1.0, 10.0, 10.0, 32.0, 32.0}];
  [defaultBadgeRect_rect_70 addHintedRect:1.0 forSize:{1.0, 37.0, 37.0, 128.0, 128.0}];
  [defaultBadgeRect_rect_70 addHintedRect:3.0 forSize:{4.0, 68.0, 68.0, 256.0, 256.0}];
  v2 = defaultBadgeRect_rect_70;

  return [v2 addHintedRect:8.0 forSize:{8.0, 135.0, 135.0, 512.0, 512.0}];
}

- (id)badgedDocumentIconRect
{
  if (badgedDocumentIconRect_onceToken_75 != -1)
  {
    [ISLeadingStatusBadgeRecipe badgedDocumentIconRect];
  }

  v3 = badgedDocumentIconRect_rect_74;

  return v3;
}

uint64_t __52__ISLeadingStatusBadgeRecipe_badgedDocumentIconRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:3];
  v1 = badgedDocumentIconRect_rect_74;
  badgedDocumentIconRect_rect_74 = v0;

  [badgedDocumentIconRect_rect_74 addHintedRect:0.0 forSize:{0.0, 6.0, 6.0, 16.0, 16.0}];
  [badgedDocumentIconRect_rect_74 addHintedRect:0.0 forSize:{0.0, 12.0, 12.0, 32.0, 32.0}];
  [badgedDocumentIconRect_rect_74 addHintedRect:9.0 forSize:{0.0, 38.0, 38.0, 128.0, 128.0}];
  [badgedDocumentIconRect_rect_74 addHintedRect:18.0 forSize:{1.0, 74.0, 74.0, 256.0, 256.0}];
  v2 = badgedDocumentIconRect_rect_74;

  return [v2 addHintedRect:42.0 forSize:{7.0, 136.0, 136.0, 512.0, 512.0}];
}

- (id)badgedFolderIconRect
{
  if (badgedFolderIconRect_onceToken_79 != -1)
  {
    [ISLeadingStatusBadgeRecipe badgedFolderIconRect];
  }

  v3 = badgedFolderIconRect_rect_78;

  return v3;
}

uint64_t __50__ISLeadingStatusBadgeRecipe_badgedFolderIconRect__block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:3];
  v1 = badgedFolderIconRect_rect_78;
  badgedFolderIconRect_rect_78 = v0;

  [badgedFolderIconRect_rect_78 addHintedRect:0.0 forSize:{0.0, 6.0, 6.0, 16.0, 16.0}];
  [badgedFolderIconRect_rect_78 addHintedRect:0.0 forSize:{0.0, 12.0, 12.0, 32.0, 32.0}];
  [badgedFolderIconRect_rect_78 addHintedRect:0.0 forSize:{0.0, 38.0, 38.0, 128.0, 128.0}];
  [badgedFolderIconRect_rect_78 addHintedRect:0.0 forSize:{1.0, 74.0, 74.0, 256.0, 256.0}];
  v2 = badgedFolderIconRect_rect_78;

  return [v2 addHintedRect:2.0 forSize:{7.0, 136.0, 136.0, 512.0, 512.0}];
}

- (id)leadingBottomBadgeRect
{
  primaryIconType = [(ISLeadingStatusBadgeRecipe *)self primaryIconType];
  if (primaryIconType == 2)
  {
    badgedFolderIconRect = [(ISLeadingStatusBadgeRecipe *)self badgedFolderIconRect];
  }

  else
  {
    if (primaryIconType == 1)
    {
      [(ISLeadingStatusBadgeRecipe *)self badgedDocumentIconRect];
    }

    else
    {
      [(ISLeadingStatusBadgeRecipe *)self defaultBadgeRect];
    }
    badgedFolderIconRect = ;
  }

  return badgedFolderIconRect;
}

- (id)layerTreeForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
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

  [v9 setScale:scale];
  [(ISLayer *)v8 setEffect:v9];
  v12 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v12 setName:@"Leading bottom badge"];
  leadingBottomBadgeRect = [(ISLeadingStatusBadgeRecipe *)self leadingBottomBadgeRect];
  [leadingBottomBadgeRect hintedRectForSize:{width, height}];
  [(ISLayer *)v12 setFrame:?];

  [(ISContentLayer *)v12 setContent:@"kISPrimaryResourceKey"];
  [(ISLayer *)v8 addSublayer:v12];

  return v8;
}

@end