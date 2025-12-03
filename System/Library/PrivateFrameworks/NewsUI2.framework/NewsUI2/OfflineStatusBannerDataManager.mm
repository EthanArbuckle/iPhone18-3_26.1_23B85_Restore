@interface OfflineStatusBannerDataManager
- (_TtC7NewsUI230OfflineStatusBannerDataManager)init;
- (void)bundleSubscriptionDidSubscribe:(void *)subscribe;
- (void)configurationManager:(id)manager appConfigurationDidChange:(id)change;
- (void)dealloc;
- (void)triggerAction;
@end

@implementation OfflineStatusBannerDataManager

- (void)bundleSubscriptionDidSubscribe:(void *)subscribe
{
  subscribeCopy = subscribe;
  MEMORY[0x21CEC15C0]();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7NewsUI230OfflineStatusBannerDataManager_bundleSubscriptionManager);
  selfCopy = self;
  [v4 removeObserver_];
  [*(&selfCopy->super.isa + OBJC_IVAR____TtC7NewsUI230OfflineStatusBannerDataManager_appConfigManager) removeAppConfigObserver_];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(OfflineStatusBannerDataManager *)&v6 dealloc];
}

- (void)triggerAction
{
  selfCopy = self;
  MEMORY[0x21CEC15C0]();
}

- (_TtC7NewsUI230OfflineStatusBannerDataManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)configurationManager:(id)manager appConfigurationDidChange:(id)change
{
  selfCopy = self;
  MEMORY[0x21CEC15C0]();
}

@end