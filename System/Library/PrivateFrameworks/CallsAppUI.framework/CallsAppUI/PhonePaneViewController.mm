@interface PhonePaneViewController
- (_TtC10CallsAppUI23PhonePaneViewController)initWithCoder:(id)coder;
- (_TtC10CallsAppUI23PhonePaneViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation PhonePaneViewController

- (_TtC10CallsAppUI23PhonePaneViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1CFC9F768();
    bundleCopy = bundle;
    v7 = sub_1CFC9F728();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for PhonePaneViewController();
  v9 = [(PhonePaneViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC10CallsAppUI23PhonePaneViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PhonePaneViewController();
  coderCopy = coder;
  v5 = [(PhonePaneViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end