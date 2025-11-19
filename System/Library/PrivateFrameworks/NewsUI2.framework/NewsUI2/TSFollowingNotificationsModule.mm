@interface TSFollowingNotificationsModule
- (TSFollowingNotificationsModule)init;
- (id)createViewController;
@end

@implementation TSFollowingNotificationsModule

- (id)createViewController
{
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR___TSFollowingNotificationsModule_resolver), *&self->resolver[OBJC_IVAR___TSFollowingNotificationsModule_resolver + 16]);
  type metadata accessor for FollowingNotificationsViewController();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  v3 = self;

  v4 = sub_219BE1E04();

  if (v4)
  {

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (TSFollowingNotificationsModule)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end