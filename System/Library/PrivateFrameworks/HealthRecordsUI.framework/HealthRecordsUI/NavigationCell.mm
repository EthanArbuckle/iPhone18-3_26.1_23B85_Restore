@interface NavigationCell
- (void)layoutSubviews;
- (void)showDetailViewController:(id)controller viewController:(id)viewController;
- (void)traitCollectionDidChange:(id)change;
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1D11BF8F4(change);
}

- (void)showDetailViewController:(id)controller viewController:(id)viewController
{
  if (controller)
  {
    viewControllerCopy = viewController;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    viewControllerCopy2 = viewController;
    selfCopy2 = self;
  }

  sub_1D11C02E4(v10, viewController);

  sub_1D1096BE0(v10);
}

@end