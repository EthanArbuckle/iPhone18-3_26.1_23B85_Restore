@interface MURollingLabelsView
- (CGSize)intrinsicContentSize;
- (MURollingLabelsView)initWithCoder:(id)a3;
- (MURollingLabelsView)initWithFrame:(CGRect)a3;
- (UIView)viewForLastBaselineLayout;
@end

@implementation MURollingLabelsView

- (MURollingLabelsView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR___MURollingLabelsView____lazy_storage___currentLabelAndConstraints) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MURollingLabelsView____lazy_storage___labelAndConstraintsAnimatingIn) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MURollingLabelsView____lazy_storage___labelForBaselineAlignment) = 0;
  v9 = self + OBJC_IVAR___MURollingLabelsView_transitioningContentSize;
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(MURollingLabelsView *)&v12 initWithFrame:x, y, width, height];
  sub_1C5668F5C();

  return v10;
}

- (MURollingLabelsView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___MURollingLabelsView____lazy_storage___currentLabelAndConstraints) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MURollingLabelsView____lazy_storage___labelAndConstraintsAnimatingIn) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MURollingLabelsView____lazy_storage___labelForBaselineAlignment) = 0;
  v3 = self + OBJC_IVAR___MURollingLabelsView_transitioningContentSize;
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  result = sub_1C584FD00();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = (self + OBJC_IVAR___MURollingLabelsView_transitioningContentSize);
  if (*(&self->super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR___MURollingLabelsView_transitioningContentSize))
  {
    sub_1C5668D2C(&OBJC_IVAR___MURollingLabelsView____lazy_storage___currentLabelAndConstraints);
    v4 = self;
    v5 = sub_1C56685B8();

    [v5 intrinsicContentSize];
    v7 = v6;
    v9 = v8;

    v10 = v7;
    v11 = v9;
  }

  else
  {
    v10 = *v2;
    v11 = v2[1];
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (UIView)viewForLastBaselineLayout
{
  v2 = self;
  BaselineLayoutSo6UIViewCvg_0 = _s6MapsUI17RollingLabelsViewC21forLastBaselineLayoutSo6UIViewCvg_0();

  return BaselineLayoutSo6UIViewCvg_0;
}

@end