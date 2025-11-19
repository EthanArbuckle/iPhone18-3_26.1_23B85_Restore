@interface AspectFitScalingImageView
- (_TtC18HealthExperienceUI25AspectFitScalingImageView)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI25AspectFitScalingImageView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation AspectFitScalingImageView

- (_TtC18HealthExperienceUI25AspectFitScalingImageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI25AspectFitScalingImageView_image) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI25AspectFitScalingImageView____lazy_storage___contentView) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for AspectFitScalingImageView();
  v7 = [(AspectFitScalingImageView *)&v10 initWithFrame:x, y, width, height];
  v8 = sub_1BA3B4DA4();
  [(AspectFitScalingImageView *)v7 addSubview:v8];

  return v7;
}

- (_TtC18HealthExperienceUI25AspectFitScalingImageView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI25AspectFitScalingImageView_image) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI25AspectFitScalingImageView____lazy_storage___contentView) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AspectFitScalingImageView();
  v2 = v3.receiver;
  [(AspectFitScalingImageView *)&v3 layoutSubviews];
  sub_1BA3B4FB0();
}

@end