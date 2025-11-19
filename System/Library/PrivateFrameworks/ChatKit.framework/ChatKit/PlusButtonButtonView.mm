@interface PlusButtonButtonView
- (_TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387320PlusButtonButtonView)initWithCoder:(id)a3;
- (_TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387320PlusButtonButtonView)initWithFrame:(CGRect)a3;
@end

@implementation PlusButtonButtonView

- (_TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387320PlusButtonButtonView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PlusButtonButtonView();
  return [(PlusButtonButtonView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387320PlusButtonButtonView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlusButtonButtonView();
  v4 = a3;
  v5 = [(PlusButtonButtonView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end