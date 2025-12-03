@interface PlusButtonBlurContainerView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (_TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387327PlusButtonBlurContainerView)initWithCoder:(id)coder;
- (void)updateRasterizationScale;
@end

@implementation PlusButtonBlurContainerView

- (_TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387327PlusButtonBlurContainerView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387327PlusButtonBlurContainerView_rasterizationPercent) = 0x3FF0000000000000;
  v9.receiver = self;
  v9.super_class = type metadata accessor for PlusButtonBlurContainerView();
  coderCopy = coder;
  v5 = [(PlusButtonBlurContainerView *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_1908FE79C();
  }

  return v6;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  if (key)
  {
    v4 = sub_190D56F10();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_1908FE8EC(v4, v6);

  return v8 & 1;
}

- (void)updateRasterizationScale
{
  selfCopy = self;
  sub_1908FEA54();
}

@end