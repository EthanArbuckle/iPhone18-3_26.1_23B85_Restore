@interface TapbackPickerCircleView
- (_TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF323TapbackPickerCircleView)initWithCoder:(id)coder;
- (_TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF323TapbackPickerCircleView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation TapbackPickerCircleView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_190BD55B8();
}

- (_TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF323TapbackPickerCircleView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TapbackPickerCircleView();
  return [(TapbackPickerCircleView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF323TapbackPickerCircleView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TapbackPickerCircleView();
  coderCopy = coder;
  v5 = [(TapbackPickerCircleView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end