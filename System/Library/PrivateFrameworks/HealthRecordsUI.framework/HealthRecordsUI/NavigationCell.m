@interface NavigationCell
- (void)layoutSubviews;
- (void)showDetailViewController:(id)a3 viewController:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation NavigationCell

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NavigationCell();
  v2 = v3.receiver;
  [(NavigationCell *)&v3 layoutSubviews];
  sub_1D138D84C();
  sub_1D1390C8C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D11BF8F4(a3);
}

- (void)showDetailViewController:(id)a3 viewController:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = self;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a4;
    v9 = self;
  }

  sub_1D11C02E4(v10, a4);

  sub_1D1096BE0(v10);
}

@end