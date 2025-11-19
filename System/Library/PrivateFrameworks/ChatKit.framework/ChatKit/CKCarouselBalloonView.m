@interface CKCarouselBalloonView
- (CKCarouselBalloonView)initWithCoder:(id)a3;
- (CKCarouselBalloonView)initWithFrame:(CGRect)a3;
- (void)carousel:(id)a3 didScrollToIndex:(int64_t)a4;
- (void)layoutSubviews;
@end

@implementation CKCarouselBalloonView

- (CKCarouselBalloonView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKCarouselBalloonView_carouselStackView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKCarouselBalloonView_dataSource) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CarouselBalloonView();
  return [(CKBalloonView *)&v8 initWithFrame:x, y, width, height];
}

- (CKCarouselBalloonView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKCarouselBalloonView_carouselStackView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKCarouselBalloonView_dataSource) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_190CE83FC();
}

- (void)carousel:(id)a3 didScrollToIndex:(int64_t)a4
{
  v7 = self;
  v5 = [(CKBalloonView *)v7 delegate];
  if (v5)
  {
    v6 = v5;
    if (([(CKBalloonViewDelegate *)v5 respondsToSelector:sel_balloonView_carouselScrolledToIndex_]& 1) != 0)
    {
      [(CKBalloonViewDelegate *)v6 balloonView:v7 carouselScrolledToIndex:a4];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

@end