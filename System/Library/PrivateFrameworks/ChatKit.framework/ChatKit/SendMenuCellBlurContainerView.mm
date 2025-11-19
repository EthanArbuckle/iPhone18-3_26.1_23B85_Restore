@interface SendMenuCellBlurContainerView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (_TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView)initWithCoder:(id)a3;
- (_TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView)initWithFrame:(CGRect)a3;
@end

@implementation SendMenuCellBlurContainerView

- (_TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_hasActiveBlurFilter) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView____lazy_storage___blurFilter) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_activeAnimationCount) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SendMenuCellBlurContainerView();
  return [(SendMenuCellBlurContainerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_hasActiveBlurFilter) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView____lazy_storage___blurFilter) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_activeAnimationCount) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SendMenuCellBlurContainerView();
  v4 = a3;
  v5 = [(SendMenuCellBlurContainerView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  if (a3)
  {
    v4 = sub_190D56F10();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8 = sub_190A18710(v4, v6);

  return v8 & 1;
}

@end