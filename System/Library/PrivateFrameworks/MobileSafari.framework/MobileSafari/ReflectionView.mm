@interface ReflectionView
- (_TtC12MobileSafari14ReflectionView)initWithCoder:(id)coder;
- (_TtC12MobileSafari14ReflectionView)initWithFrame:(CGRect)frame;
- (void)displayScaleDidChange;
- (void)layoutSubviews;
@end

@implementation ReflectionView

- (_TtC12MobileSafari14ReflectionView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC12MobileSafari14ReflectionView_reflection;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = OBJC_IVAR____TtC12MobileSafari14ReflectionView_backdropView;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(SFBackdropView) init];
  v10 = self + OBJC_IVAR____TtC12MobileSafari14ReflectionView_reflectionFrame;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v10[32] = 1;
  v13.receiver = self;
  v13.super_class = type metadata accessor for ReflectionView();
  height = [(ReflectionView *)&v13 initWithFrame:x, y, width, height];
  sub_18BBDD218();

  return height;
}

- (_TtC12MobileSafari14ReflectionView)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC12MobileSafari14ReflectionView_reflection;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = OBJC_IVAR____TtC12MobileSafari14ReflectionView_backdropView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(SFBackdropView) init];
  v6 = self + OBJC_IVAR____TtC12MobileSafari14ReflectionView_reflectionFrame;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

- (void)displayScaleDidChange
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari14ReflectionView_backdropView);
  selfCopy = self;
  layer = [v2 layer];
  traitCollection = [(ReflectionView *)selfCopy traitCollection];
  [traitCollection displayScale];
  v6 = v5;

  [layer setRasterizationScale_];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_18BBDD58C();
}

@end