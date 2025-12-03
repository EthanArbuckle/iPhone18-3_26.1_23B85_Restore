@interface SFTabOverviewItemView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation SFTabOverviewItemView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for TabOverviewItemView();
  eventCopy = event;
  v8 = v13.receiver;
  if ([(SFTabOverviewItemView *)&v13 pointInside:eventCopy withEvent:x, y])
  {
    v9 = 1;
    v10 = eventCopy;
  }

  else
  {
    v11 = *&v8[OBJC_IVAR___SFTabOverviewItemView_thumbnailView];
    [v8 convertPoint:v11 toCoordinateSpace:{x, y, v13.receiver, v13.super_class}];
    v9 = [v11 pointInside:eventCopy withEvent:?];
    v10 = v8;
    v8 = eventCopy;
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
  selfCopy = self;
  tintColor = [(SFTabOverviewItemView *)selfCopy tintColor];
  [v2 setBorderColor_];
}

@end