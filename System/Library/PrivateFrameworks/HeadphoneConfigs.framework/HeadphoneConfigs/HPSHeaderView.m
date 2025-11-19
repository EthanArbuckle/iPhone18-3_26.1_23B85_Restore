@interface HPSHeaderView
- (_TtC16HeadphoneConfigsP33_D51FEB6A68E3E202054F6E29D55400B013HPSHeaderView)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (_TtC16HeadphoneConfigsP33_D51FEB6A68E3E202054F6E29D55400B013HPSHeaderView)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 animated:(BOOL)a6;
@end

@implementation HPSHeaderView

- (_TtC16HeadphoneConfigsP33_D51FEB6A68E3E202054F6E29D55400B013HPSHeaderView)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  v7 = sub_25121179C();
  v9 = v8;
  if (a4)
  {
    sub_25121179C();
    a4 = v10;
  }

  v11 = a5;
  sub_2511F78E0(v7, v9, a4, a5);
  return result;
}

- (_TtC16HeadphoneConfigsP33_D51FEB6A68E3E202054F6E29D55400B013HPSHeaderView)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 animated:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end