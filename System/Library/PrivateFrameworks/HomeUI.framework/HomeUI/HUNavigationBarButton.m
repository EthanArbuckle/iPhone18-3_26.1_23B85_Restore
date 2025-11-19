@interface HUNavigationBarButton
- (HUNavigationBarButtonOwner)owner;
- (NSNumber)badgeValue;
- (NSString)buttonIdentifier;
- (NSString)description;
- (SEL)action;
- (UIFont)font;
- (void)handleTap:(id)a3;
- (void)performAction;
- (void)setAction:(SEL)a3;
- (void)setBadgeValue:(id)a3;
- (void)setButtonIdentifier:(id)a3;
- (void)setFont:(id)a3;
- (void)setMenu:(id)a3;
- (void)setTarget:(id)a3;
@end

@implementation HUNavigationBarButton

- (NSString)description
{
  v2 = self;
  sub_20D0872B4();

  v3 = sub_20D5677F8();

  return v3;
}

- (void)setTarget:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_20D087490(a3);
}

- (SEL)action
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NavigationBarButton();
  return [(HUNavigationBarButton *)&v3 action];
}

- (void)setAction:(SEL)a3
{
  v4 = self;
  sub_20D087630(a3);
}

- (void)setMenu:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for NavigationBarButton();
  v4 = a3;
  v5 = v6.receiver;
  [(HUNavigationBarButton *)&v6 setMenu:v4];
  sub_20D0877F8();
}

- (NSString)buttonIdentifier
{
  v2 = self + OBJC_IVAR___HUNavigationBarButton_buttonIdentifier;
  swift_beginAccess();
  if (*(v2 + 1))
  {
    sub_20D5663C8();
    v3 = sub_20D5677F8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setButtonIdentifier:(id)a3
{
  if (a3)
  {
    v4 = sub_20D567838();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___HUNavigationBarButton_buttonIdentifier);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (HUNavigationBarButtonOwner)owner
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSNumber)badgeValue
{
  v3 = OBJC_IVAR___HUNavigationBarButton_badgeValue;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setBadgeValue:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_20D087E80(a3);
}

- (UIFont)font
{
  v2 = self;
  v3 = sub_20D088118();

  return v3;
}

- (void)setFont:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_20D0882A8(a3);
}

- (void)handleTap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20D08A6C0();
}

- (void)performAction
{
  v2 = *(self + OBJC_IVAR___HUNavigationBarButton_actionHandler);
  if (v2)
  {
    v3 = self;
    sub_20CEC81F4(v2);
    v2(v3);

    sub_20CEC8164(v2);
  }
}

@end