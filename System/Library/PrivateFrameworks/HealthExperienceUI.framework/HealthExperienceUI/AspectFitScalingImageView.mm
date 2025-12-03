@interface AspectFitScalingImageView
- (_TtC18HealthExperienceUI25AspectFitScalingImageView)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI25AspectFitScalingImageView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation AspectFitScalingImageView

- (_TtC18HealthExperienceUI25AspectFitScalingImageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI25AspectFitScalingImageView_image) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI25AspectFitScalingImageView____lazy_storage___contentView) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for AspectFitScalingImageView();
  height = [(AspectFitScalingImageView *)&v10 initWithFrame:x, y, width, height];
  v8 = sub_1BA3B4DA4();
  [(AspectFitScalingImageView *)height addSubview:v8];

  return height;
}

- (_TtC18HealthExperienceUI25AspectFitScalingImageView)initWithCoder:(id)coder
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