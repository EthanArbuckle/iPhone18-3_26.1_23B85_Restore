@interface PlusButtonBlendedBackgroundView
- (_TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387331PlusButtonBlendedBackgroundView)init;
- (_TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387331PlusButtonBlendedBackgroundView)initWithCoder:(id)coder;
- (_TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387331PlusButtonBlendedBackgroundView)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PlusButtonBlendedBackgroundView

- (_TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387331PlusButtonBlendedBackgroundView)init
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for PlusButtonBlendedBackgroundView();
  v2 = [(PlusButtonBlendedBackgroundView *)&v4 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_1908FF1CC();

  return v2;
}

- (_TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387331PlusButtonBlendedBackgroundView)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for PlusButtonBlendedBackgroundView();
  coderCopy = coder;
  v5 = [(PlusButtonBlendedBackgroundView *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_1908FF1CC();
  }

  return v6;
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for PlusButtonBlendedBackgroundView();
  changeCopy = change;
  v5 = v6.receiver;
  [(PlusButtonBlendedBackgroundView *)&v6 traitCollectionDidChange:changeCopy];
  sub_1908FF1CC();
}

- (_TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387331PlusButtonBlendedBackgroundView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end