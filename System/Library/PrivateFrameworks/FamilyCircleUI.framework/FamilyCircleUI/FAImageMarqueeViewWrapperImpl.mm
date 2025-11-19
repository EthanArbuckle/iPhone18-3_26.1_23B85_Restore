@interface FAImageMarqueeViewWrapperImpl
- (UIViewController)viewController;
- (_TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl)init;
- (_TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl)initWithFamilyCircle:(id)a3;
- (_TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl)initWithMembersToRender:(id)a3 familyCircle:(id)a4;
- (void)setViewController:(id)a3;
@end

@implementation FAImageMarqueeViewWrapperImpl

- (_TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl)initWithFamilyCircle:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_familyCircle) = a3;
  v4 = a3;
  v5 = [v4 members];
  sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
  v6 = sub_21BE28C3C();

  *(&self->super.isa + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_membersToRender) = v6;
  v9.receiver = self;
  v9.super_class = type metadata accessor for FAImageMarqueeViewWrapperImpl();
  v7 = [(FAImageMarqueeViewWrapperImpl *)&v9 init];

  return v7;
}

- (_TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl)initWithMembersToRender:(id)a3 familyCircle:(id)a4
{
  sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
  v6 = sub_21BE28C3C();
  *(&self->super.isa + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_membersToRender) = v6;
  *(&self->super.isa + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_familyCircle) = a4;
  v9.receiver = self;
  v9.super_class = type metadata accessor for FAImageMarqueeViewWrapperImpl();
  v7 = a4;
  return [(FAImageMarqueeViewWrapperImpl *)&v9 init];
}

- (UIViewController)viewController
{
  v2 = self;
  v3 = sub_21BD64E2C();

  return v3;
}

- (void)setViewController:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController);
  *(&self->super.isa + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController) = a3;
  v3 = a3;
}

- (_TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end