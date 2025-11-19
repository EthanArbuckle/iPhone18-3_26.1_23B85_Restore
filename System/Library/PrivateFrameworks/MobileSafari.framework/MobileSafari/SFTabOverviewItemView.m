@interface SFTabOverviewItemView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation SFTabOverviewItemView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for TabOverviewItemView();
  v7 = a4;
  v8 = v13.receiver;
  if ([(SFTabOverviewItemView *)&v13 pointInside:v7 withEvent:x, y])
  {
    v9 = 1;
    v10 = v7;
  }

  else
  {
    v11 = *&v8[OBJC_IVAR___SFTabOverviewItemView_thumbnailView];
    [v8 convertPoint:v11 toCoordinateSpace:{x, y, v13.receiver, v13.super_class}];
    v9 = [v11 pointInside:v7 withEvent:?];
    v10 = v8;
    v8 = v7;
  }

  return v9;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TabOverviewItemView();
  v2 = v4.receiver;
  [(SFTabOverviewItemView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR___SFTabOverviewItemView_closingBackgroundView];
  [v2 bounds];
  [v3 setFrame_];
  sub_18BB9F750();
  sub_18BB9F92C();
  sub_18BB9FA80();
}

- (void)tintColorDidChange
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___SFTabOverviewItemView_tintedSelectionBorderView);
  v4 = self;
  v3 = [(SFTabOverviewItemView *)v4 tintColor];
  [v2 setBorderColor_];
}

@end