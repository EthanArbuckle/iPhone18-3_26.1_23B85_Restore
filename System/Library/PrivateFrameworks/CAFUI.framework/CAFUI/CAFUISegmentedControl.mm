@interface CAFUISegmentedControl
- (_TtC5CAFUI21CAFUISegmentedControl)initWithItems:(id)a3;
- (void)layoutSubviews;
@end

@implementation CAFUISegmentedControl

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CAFUISegmentedControl();
  v2 = v4.receiver;
  [(CAFUISegmentedControl *)&v4 layoutSubviews];
  [v2 frame];
  if (v3 != 32.0)
  {
    [v2 frame];
    [v2 setFrame_];
  }
}

- (_TtC5CAFUI21CAFUISegmentedControl)initWithItems:(id)a3
{
  if (a3)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for CAFUISegmentedControl();
  v5 = [(CAFUISegmentedControl *)&v7 initWithItems:v4.super.isa];

  return v5;
}

@end