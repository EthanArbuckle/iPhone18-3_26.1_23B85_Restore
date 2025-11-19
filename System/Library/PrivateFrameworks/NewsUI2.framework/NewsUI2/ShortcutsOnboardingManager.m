@interface ShortcutsOnboardingManager
- (_TtC7NewsUI226ShortcutsOnboardingManager)init;
- (void)dealloc;
- (void)userInfoDidChangeShortcutsOnboardingState:(id)a3;
@end

@implementation ShortcutsOnboardingManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7NewsUI226ShortcutsOnboardingManager_userInfo);
  v5 = self;
  [v4 removeObserver_];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(ShortcutsOnboardingManager *)&v6 dealloc];
}

- (_TtC7NewsUI226ShortcutsOnboardingManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)userInfoDidChangeShortcutsOnboardingState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_219B041A0();
}

@end