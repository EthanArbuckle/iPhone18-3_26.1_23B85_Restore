@interface PhonePaneViewController
- (_TtC10CallsAppUI23PhonePaneViewController)initWithCoder:(id)a3;
- (_TtC10CallsAppUI23PhonePaneViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation PhonePaneViewController

- (_TtC10CallsAppUI23PhonePaneViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1CFC9F768();
    v6 = a4;
    v7 = sub_1CFC9F728();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for PhonePaneViewController();
  v9 = [(PhonePaneViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC10CallsAppUI23PhonePaneViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PhonePaneViewController();
  v4 = a3;
  v5 = [(PhonePaneViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end