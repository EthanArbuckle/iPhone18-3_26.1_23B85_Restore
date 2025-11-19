@interface CKInlineStickerBalloonView
- (void)addFilter:(id)a3;
- (void)clearFilters;
- (void)configureForMessagePart:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation CKInlineStickerBalloonView

- (void)addFilter:(id)a3
{
  v12 = a3;
  v7 = [v12 balloonFilters];

  if (v7)
  {
    v8 = [(CKInlineStickerBalloonView *)self layer];
    v9 = [v8 filters];
    if (v9)
    {
      v3 = [(CKInlineStickerBalloonView *)self layer];
      v4 = [v3 filters];
      v5 = [v12 balloonFilters];
      [v4 arrayByAddingObjectsFromArray:v5];
    }

    else
    {
      [v12 balloonFilters];
    }
    v10 = ;
    v11 = [(CKInlineStickerBalloonView *)self layer];
    [v11 setFilters:v10];

    if (v9)
    {

      v10 = v3;
    }
  }

  [v12 contentAlpha];
  [(CKInlineStickerBalloonView *)self setAlpha:?];
}

- (void)clearFilters
{
  v4.receiver = self;
  v4.super_class = CKInlineStickerBalloonView;
  [(CKImageBalloonView *)&v4 clearFilters];
  v3 = [(CKInlineStickerBalloonView *)self layer];
  [v3 setFilters:0];

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

- (void)configureForMessagePart:(id)a3
{
  v9.receiver = self;
  v9.super_class = CKInlineStickerBalloonView;
  v4 = a3;
  [(CKImageBalloonView *)&v9 configureForMessagePart:v4];
  v5 = [v4 mediaObject];

  v6 = [v5 transfer];
  v7 = [v6 attributionInfo];
  v8 = [v7 objectForKey:*MEMORY[0x1E69A6F98]];

  if ([v8 length])
  {
    [(CKBalloonImageView *)self setStickerAccessibilityDescription:v8];
  }
}

@end