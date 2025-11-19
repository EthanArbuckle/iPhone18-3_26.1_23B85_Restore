@interface ReflectionView
- (_TtC12MobileSafari14ReflectionView)initWithCoder:(id)a3;
- (_TtC12MobileSafari14ReflectionView)initWithFrame:(CGRect)a3;
- (void)displayScaleDidChange;
- (void)layoutSubviews;
@end

@implementation ReflectionView

- (_TtC12MobileSafari14ReflectionView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v11 = [(ReflectionView *)&v13 initWithFrame:x, y, width, height];
  sub_18BBDD218();

  return v11;
}

- (_TtC12MobileSafari14ReflectionView)initWithCoder:(id)a3
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
  v7 = self;
  v3 = [v2 layer];
  v4 = [(ReflectionView *)v7 traitCollection];
  [v4 displayScale];
  v6 = v5;

  [v3 setRasterizationScale_];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_18BBDD58C();
}

@end