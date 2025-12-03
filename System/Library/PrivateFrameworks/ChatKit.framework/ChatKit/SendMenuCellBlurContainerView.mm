@interface SendMenuCellBlurContainerView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (_TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView)initWithCoder:(id)coder;
- (_TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView)initWithFrame:(CGRect)frame;
@end

@implementation SendMenuCellBlurContainerView

- (_TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_hasActiveBlurFilter) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView____lazy_storage___blurFilter) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_activeAnimationCount) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SendMenuCellBlurContainerView();
  return [(SendMenuCellBlurContainerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_hasActiveBlurFilter) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView____lazy_storage___blurFilter) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_activeAnimationCount) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SendMenuCellBlurContainerView();
  coderCopy = coder;
  v5 = [(SendMenuCellBlurContainerView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
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
  v8 = sub_190A18710(v4, v6);

  return v8 & 1;
}

@end