@interface SFTabThumbnailView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)contentSizeCategoryDidChange;
- (void)didMoveToWindow;
- (void)displayScaleDidChange;
- (void)layoutSubviews;
- (void)trailingCornerButtonReceivedTap;
@end

@implementation SFTabThumbnailView

- (void)trailingCornerButtonReceivedTap
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR___SFTabThumbnailView_closeHandler);
  v4 = self;
  v3 = sub_18BC1E1A8();
  v2(v3);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  if (UIViewIgnoresTouchEvents())
  {

    v9 = 0;
  }

  else
  {
    v10 = sub_18BA16374(v7, x, y);
    if (!v10)
    {
      v13.receiver = v8;
      v13.super_class = type metadata accessor for TabThumbnailView();
      v10 = [(SFTabThumbnailView *)&v13 hitTest:v7 withEvent:x, y];
    }

    v11 = v10;

    v9 = v11;
  }

  return v9;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v11.receiver = self;
  v11.super_class = type metadata accessor for TabThumbnailView();
  v7 = a4;
  v8 = v11.receiver;
  if ([(SFTabThumbnailView *)&v11 pointInside:v7 withEvent:x, y])
  {

LABEL_5:
    return 1;
  }

  v9 = sub_18BA16374(v7, x, y);

  if (v9)
  {
    v8 = v9;
    goto LABEL_5;
  }

  return 0;
}

- (void)contentSizeCategoryDidChange
{
  v2 = self;
  sub_18BA165F8();
}

- (void)displayScaleDidChange
{
  v6 = self;
  v2 = [(SFTabThumbnailView *)v6 traitCollection];
  [v2 displayScale];
  v4 = v3;

  v5 = [*(&v6->super.super.super.super.isa + OBJC_IVAR___SFTabThumbnailView_snapshotImageView) layer];
  [v5 setRasterizationScale_];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_18BA1799C();
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_18BA191C8();
}

@end