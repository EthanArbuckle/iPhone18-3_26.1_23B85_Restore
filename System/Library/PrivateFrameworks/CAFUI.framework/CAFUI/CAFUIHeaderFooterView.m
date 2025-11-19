@interface CAFUIHeaderFooterView
- (_TtC5CAFUI21CAFUIHeaderFooterView)initWithCoder:(id)a3;
- (_TtC5CAFUI21CAFUIHeaderFooterView)initWithReuseIdentifier:(id)a3;
@end

@implementation CAFUIHeaderFooterView

- (_TtC5CAFUI21CAFUIHeaderFooterView)initWithReuseIdentifier:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = MEMORY[0x245D0D180](v4);
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for CAFUIHeaderFooterView();
  v6 = [(CAFUIHeaderFooterView *)&v8 initWithReuseIdentifier:v5];

  return v6;
}

- (_TtC5CAFUI21CAFUIHeaderFooterView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CAFUIHeaderFooterView();
  v4 = a3;
  v5 = [(CAFUIHeaderFooterView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end