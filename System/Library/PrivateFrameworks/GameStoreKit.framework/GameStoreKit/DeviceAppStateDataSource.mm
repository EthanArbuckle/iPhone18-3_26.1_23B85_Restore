@interface DeviceAppStateDataSource
- (_TtC12GameStoreKit24DeviceAppStateDataSource)init;
- (void)appQuery:(id)query resultsDidChange:(id)change;
@end

@implementation DeviceAppStateDataSource

- (void)appQuery:(id)query resultsDidChange:(id)change
{
  sub_24E69A5C4(0, &qword_27F22BDE0);
  v6 = sub_24F92B5A8();
  queryCopy = query;
  selfCopy = self;
  sub_24EC36224(v6);
}

- (_TtC12GameStoreKit24DeviceAppStateDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end