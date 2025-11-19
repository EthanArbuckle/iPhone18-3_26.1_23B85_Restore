@interface OfflineStatusBannerDataManager
- (_TtC7NewsUI230OfflineStatusBannerDataManager)init;
- (void)bundleSubscriptionDidSubscribe:(void *)a1;
- (void)configurationManager:(id)a3 appConfigurationDidChange:(id)a4;
- (void)dealloc;
- (void)triggerAction;
@end

@implementation OfflineStatusBannerDataManager

- (void)bundleSubscriptionDidSubscribe:(void *)a1
{
  v1 = a1;
  MEMORY[0x21CEC15C0]();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7NewsUI230OfflineStatusBannerDataManager_bundleSubscriptionManager);
  v5 = self;
  [v4 removeObserver_];
  [*(&v5->super.isa + OBJC_IVAR____TtC7NewsUI230OfflineStatusBannerDataManager_appConfigManager) removeAppConfigObserver_];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(OfflineStatusBannerDataManager *)&v6 dealloc];
}

- (void)triggerAction
{
  v2 = self;
  MEMORY[0x21CEC15C0]();
}

- (_TtC7NewsUI230OfflineStatusBannerDataManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)configurationManager:(id)a3 appConfigurationDidChange:(id)a4
{
  v4 = self;
  MEMORY[0x21CEC15C0]();
}

@end