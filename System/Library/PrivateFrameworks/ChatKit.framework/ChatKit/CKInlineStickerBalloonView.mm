@interface CKInlineStickerBalloonView
- (void)addFilter:(id)filter;
- (void)clearFilters;
- (void)configureForMessagePart:(id)part;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation CKInlineStickerBalloonView

- (void)addFilter:(id)filter
{
  filterCopy = filter;
  balloonFilters = [filterCopy balloonFilters];

  if (balloonFilters)
  {
    layer = [(CKInlineStickerBalloonView *)self layer];
    filters = [layer filters];
    if (filters)
    {
      layer2 = [(CKInlineStickerBalloonView *)self layer];
      filters2 = [layer2 filters];
      balloonFilters2 = [filterCopy balloonFilters];
      [filters2 arrayByAddingObjectsFromArray:balloonFilters2];
    }

    else
    {
      [filterCopy balloonFilters];
    }
    v10 = ;
    layer3 = [(CKInlineStickerBalloonView *)self layer];
    [layer3 setFilters:v10];

    if (filters)
    {

      v10 = layer2;
    }
  }

  [filterCopy contentAlpha];
  [(CKInlineStickerBalloonView *)self setAlpha:?];
}

- (void)clearFilters
{
  v4.receiver = self;
  v4.super_class = CKInlineStickerBalloonView;
  [(CKImageBalloonView *)&v4 clearFilters];
  layer = [(CKInlineStickerBalloonView *)self layer];
  [layer setFilters:0];

  [(CKInlineStickerBalloonView *)self setAlpha:1.0];
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = CKInlineStickerBalloonView;
  [(CKImageBalloonView *)&v2 layoutSubviews];
}

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = CKInlineStickerBalloonView;
  [(CKImageBalloonView *)&v2 prepareForReuse];
}

- (void)configureForMessagePart:(id)part
{
  v9.receiver = self;
  v9.super_class = CKInlineStickerBalloonView;
  partCopy = part;
  [(CKImageBalloonView *)&v9 configureForMessagePart:partCopy];
  mediaObject = [partCopy mediaObject];

  transfer = [mediaObject transfer];
  attributionInfo = [transfer attributionInfo];
  v8 = [attributionInfo objectForKey:*MEMORY[0x1E69A6F98]];

  if ([v8 length])
  {
    [(CKBalloonImageView *)self setStickerAccessibilityDescription:v8];
  }
}

@end