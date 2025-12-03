@interface RemotePersonalizationAppStateDataSource
- (_TtC12GameStoreKit39RemotePersonalizationAppStateDataSource)init;
- (void)dealloc;
- (void)storeAccountDidChange;
@end

@implementation RemotePersonalizationAppStateDataSource

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver_];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(RemotePersonalizationAppStateDataSource *)&v7 dealloc];
}

- (void)storeAccountDidChange
{
  selfCopy = self;
  sub_24F577134();
}

- (_TtC12GameStoreKit39RemotePersonalizationAppStateDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end