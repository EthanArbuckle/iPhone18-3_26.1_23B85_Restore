@interface PlusButtonButtonView
- (_TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387320PlusButtonButtonView)initWithCoder:(id)coder;
- (_TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387320PlusButtonButtonView)initWithFrame:(CGRect)frame;
@end

@implementation PlusButtonButtonView

- (_TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387320PlusButtonButtonView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PlusButtonButtonView();
  return [(PlusButtonButtonView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387320PlusButtonButtonView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlusButtonButtonView();
  coderCopy = coder;
  v5 = [(PlusButtonButtonView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end