@interface SportsOnboardingManager
- (_TtC7NewsUI223SportsOnboardingManager)init;
- (void)appleAccountChanged;
@end

@implementation SportsOnboardingManager

- (_TtC7NewsUI223SportsOnboardingManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)appleAccountChanged
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  sub_2186C6148(0, &qword_280E8E3B0);
  v9 = self;
  v6 = sub_219BF66A4();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = *(v5 + 8);

  v8(v6, sub_218DB23E0, v7, v4, v5);
}

@end