@interface TapbackPickerCircleView
- (_TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF323TapbackPickerCircleView)initWithCoder:(id)a3;
- (_TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF323TapbackPickerCircleView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation TapbackPickerCircleView

- (void)layoutSubviews
{
  v2 = self;
  sub_190BD55B8();
}

- (_TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF323TapbackPickerCircleView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TapbackPickerCircleView();
  return [(TapbackPickerCircleView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF323TapbackPickerCircleView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TapbackPickerCircleView();
  v4 = a3;
  v5 = [(TapbackPickerCircleView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end