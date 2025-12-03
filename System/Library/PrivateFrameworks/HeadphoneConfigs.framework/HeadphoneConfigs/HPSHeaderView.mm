@interface HPSHeaderView
- (_TtC16HeadphoneConfigsP33_D51FEB6A68E3E202054F6E29D55400B013HPSHeaderView)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (_TtC16HeadphoneConfigsP33_D51FEB6A68E3E202054F6E29D55400B013HPSHeaderView)initWithTitle:(id)title detailText:(id)text symbolName:(id)name animated:(BOOL)animated;
@end

@implementation HPSHeaderView

- (_TtC16HeadphoneConfigsP33_D51FEB6A68E3E202054F6E29D55400B013HPSHeaderView)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  v7 = sub_25121179C();
  v9 = v8;
  if (text)
  {
    sub_25121179C();
    text = v10;
  }

  iconCopy = icon;
  sub_2511F78E0(v7, v9, text, icon);
  return result;
}

- (_TtC16HeadphoneConfigsP33_D51FEB6A68E3E202054F6E29D55400B013HPSHeaderView)initWithTitle:(id)title detailText:(id)text symbolName:(id)name animated:(BOOL)animated
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end