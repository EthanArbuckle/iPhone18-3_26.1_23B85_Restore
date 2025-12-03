@interface CKCarouselBalloonView
- (CKCarouselBalloonView)initWithCoder:(id)coder;
- (CKCarouselBalloonView)initWithFrame:(CGRect)frame;
- (void)carousel:(id)carousel didScrollToIndex:(int64_t)index;
- (void)layoutSubviews;
@end

@implementation CKCarouselBalloonView

- (CKCarouselBalloonView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKCarouselBalloonView_carouselStackView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKCarouselBalloonView_dataSource) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CarouselBalloonView();
  return [(CKBalloonView *)&v8 initWithFrame:x, y, width, height];
}

- (CKCarouselBalloonView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKCarouselBalloonView_carouselStackView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKCarouselBalloonView_dataSource) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_190CE83FC();
}

- (void)carousel:(id)carousel didScrollToIndex:(int64_t)index
{
  selfCopy = self;
  delegate = [(CKBalloonView *)selfCopy delegate];
  if (delegate)
  {
    v6 = delegate;
    if (([(CKBalloonViewDelegate *)delegate respondsToSelector:sel_balloonView_carouselScrolledToIndex_]& 1) != 0)
    {
      [(CKBalloonViewDelegate *)v6 balloonView:selfCopy carouselScrolledToIndex:index];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

@end