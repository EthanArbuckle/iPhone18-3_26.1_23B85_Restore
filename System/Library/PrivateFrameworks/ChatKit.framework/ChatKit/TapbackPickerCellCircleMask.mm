@interface TapbackPickerCellCircleMask
- (_TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF327TapbackPickerCellCircleMask)initWithCoder:(id)a3;
- (_TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF327TapbackPickerCellCircleMask)initWithFrame:(CGRect)a3;
@end

@implementation TapbackPickerCellCircleMask

- (_TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF327TapbackPickerCellCircleMask)initWithCoder:(id)a3
{
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (_TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF327TapbackPickerCellCircleMask)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for TapbackPickerCellCircleMask();
  v3 = [(TapbackPickerCircleView *)&v8 initWithFrame:0.0, 0.0, 0.0, 0.0];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 whiteColor];
  [(TapbackPickerCellCircleMask *)v5 setBackgroundColor:v6];

  return v5;
}

@end