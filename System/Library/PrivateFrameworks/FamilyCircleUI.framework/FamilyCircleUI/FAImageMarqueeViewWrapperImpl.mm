@interface FAImageMarqueeViewWrapperImpl
- (UIViewController)viewController;
- (_TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl)init;
- (_TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl)initWithFamilyCircle:(id)circle;
- (_TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl)initWithMembersToRender:(id)render familyCircle:(id)circle;
- (void)setViewController:(id)controller;
@end

@implementation FAImageMarqueeViewWrapperImpl

- (_TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl)initWithFamilyCircle:(id)circle
{
  *(&self->super.isa + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_familyCircle) = circle;
  circleCopy = circle;
  members = [circleCopy members];
  sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
  v6 = sub_21BE28C3C();

  *(&self->super.isa + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_membersToRender) = v6;
  v9.receiver = self;
  v9.super_class = type metadata accessor for FAImageMarqueeViewWrapperImpl();
  v7 = [(FAImageMarqueeViewWrapperImpl *)&v9 init];

  return v7;
}

- (_TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl)initWithMembersToRender:(id)render familyCircle:(id)circle
{
  sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
  v6 = sub_21BE28C3C();
  *(&self->super.isa + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_membersToRender) = v6;
  *(&self->super.isa + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_familyCircle) = circle;
  v9.receiver = self;
  v9.super_class = type metadata accessor for FAImageMarqueeViewWrapperImpl();
  circleCopy = circle;
  return [(FAImageMarqueeViewWrapperImpl *)&v9 init];
}

- (UIViewController)viewController
{
  selfCopy = self;
  v3 = sub_21BD64E2C();

  return v3;
}

- (void)setViewController:(id)controller
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController);
  *(&self->super.isa + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController) = controller;
  controllerCopy = controller;
}

- (_TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end