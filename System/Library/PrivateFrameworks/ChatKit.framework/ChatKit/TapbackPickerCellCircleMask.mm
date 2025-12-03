@interface TapbackPickerCellCircleMask
- (_TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF327TapbackPickerCellCircleMask)initWithCoder:(id)coder;
- (_TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF327TapbackPickerCellCircleMask)initWithFrame:(CGRect)frame;
@end

@implementation TapbackPickerCellCircleMask

- (_TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF327TapbackPickerCellCircleMask)initWithCoder:(id)coder
{
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (_TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF327TapbackPickerCellCircleMask)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for TapbackPickerCellCircleMask();
  v3 = [(TapbackPickerCircleView *)&v8 initWithFrame:0.0, 0.0, 0.0, 0.0];
  v4 = objc_opt_self();
  v5 = v3;
  whiteColor = [v4 whiteColor];
  [(TapbackPickerCellCircleMask *)v5 setBackgroundColor:whiteColor];

  return v5;
}

@end