@interface PlusButtonClippingView
- (_TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387322PlusButtonClippingView)init;
- (_TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387322PlusButtonClippingView)initWithCoder:(id)coder;
- (_TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387322PlusButtonClippingView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PlusButtonClippingView

- (_TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387322PlusButtonClippingView)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387322PlusButtonClippingView_automaticallyAdjustsCornerRadius) = 1;
  v4.receiver = self;
  v4.super_class = type metadata accessor for PlusButtonClippingView();
  v2 = [(PlusButtonClippingView *)&v4 initWithFrame:0.0, 0.0, 0.0, 0.0];
  [(PlusButtonClippingView *)v2 setClipsToBounds:1];
  return v2;
}

- (_TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387322PlusButtonClippingView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387322PlusButtonClippingView_automaticallyAdjustsCornerRadius) = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for PlusButtonClippingView();
  coderCopy = coder;
  v5 = [(PlusButtonClippingView *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    [(PlusButtonClippingView *)v7 setClipsToBounds:1, v9.receiver, v9.super_class];
  }

  return v6;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for PlusButtonClippingView();
  v2 = v6.receiver;
  [(PlusButtonClippingView *)&v6 layoutSubviews];
  [v2 bounds];
  if (*(v2 + OBJC_IVAR____TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387322PlusButtonClippingView_automaticallyAdjustsCornerRadius) == 1)
  {
    if (v4 >= v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    [v2 _setContinuousCornerRadius_];
  }
}

- (_TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387322PlusButtonClippingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end