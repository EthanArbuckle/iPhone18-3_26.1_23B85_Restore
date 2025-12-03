@interface SFTabThumbnailView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
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
  selfCopy = self;
  v3 = sub_18BC1E1A8();
  v2(v3);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  if (UIViewIgnoresTouchEvents())
  {

    v9 = 0;
  }

  else
  {
    v10 = sub_18BA16374(eventCopy, x, y);
    if (!v10)
    {
      v13.receiver = selfCopy;
      v13.super_class = type metadata accessor for TabThumbnailView();
      v10 = [(SFTabThumbnailView *)&v13 hitTest:eventCopy withEvent:x, y];
    }

    v11 = v10;

    v9 = v11;
  }

  return v9;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v11.receiver = self;
  v11.super_class = type metadata accessor for TabThumbnailView();
  eventCopy = event;
  v8 = v11.receiver;
  if ([(SFTabThumbnailView *)&v11 pointInside:eventCopy withEvent:x, y])
  {

LABEL_5:
    return 1;
  }

  v9 = sub_18BA16374(eventCopy, x, y);

  if (v9)
  {
    v8 = v9;
    goto LABEL_5;
  }

  return 0;
}

- (void)contentSizeCategoryDidChange
{
  selfCopy = self;
  sub_18BA165F8();
}

- (void)displayScaleDidChange
{
  selfCopy = self;
  traitCollection = [(SFTabThumbnailView *)selfCopy traitCollection];
  [traitCollection displayScale];
  v4 = v3;

  layer = [*(&selfCopy->super.super.super.super.isa + OBJC_IVAR___SFTabThumbnailView_snapshotImageView) layer];
  [layer setRasterizationScale_];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_18BA1799C();
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_18BA191C8();
}

@end