@interface ObservingNavigationItem
- (NSArray)rightBarButtonItems;
- (_TtC10CallsAppUI23ObservingNavigationItem)initWithCoder:(id)a3;
- (_TtC10CallsAppUI23ObservingNavigationItem)initWithTitle:(id)a3;
- (void)setRightBarButtonItems:(id)a3;
- (void)setRightBarButtonItems:(id)a3 animated:(BOOL)a4;
@end

@implementation ObservingNavigationItem

- (NSArray)rightBarButtonItems
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ObservingNavigationItem();
  v2 = v7.receiver;
  v3 = [(ObservingNavigationItem *)&v7 rightBarButtonItems];
  if (v3)
  {
    v4 = v3;
    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    sub_1CFC9F8A8();

    v5 = sub_1CFC9F898();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setRightBarButtonItems:(id)a3
{
  v3 = a3;
  if (a3)
  {
    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    v3 = sub_1CFC9F8A8();
  }

  v5 = self;
  sub_1CFC68864(v3);
}

- (void)setRightBarButtonItems:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  if (a3)
  {
    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    v5 = sub_1CFC9F8A8();
  }

  v7 = self;
  sub_1CFC68A3C(v5, a4);
}

- (_TtC10CallsAppUI23ObservingNavigationItem)initWithTitle:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ObservingNavigationItem();
  return [(ObservingNavigationItem *)&v5 initWithTitle:a3];
}

- (_TtC10CallsAppUI23ObservingNavigationItem)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ObservingNavigationItem();
  v4 = a3;
  v5 = [(ObservingNavigationItem *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end