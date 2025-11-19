@interface DeviceAppStateDataSource
- (_TtC12GameStoreKit24DeviceAppStateDataSource)init;
- (void)appQuery:(id)a3 resultsDidChange:(id)a4;
@end

@implementation DeviceAppStateDataSource

- (void)appQuery:(id)a3 resultsDidChange:(id)a4
{
  sub_24E69A5C4(0, &qword_27F22BDE0);
  v6 = sub_24F92B5A8();
  v7 = a3;
  v8 = self;
  sub_24EC36224(v6);
}

- (_TtC12GameStoreKit24DeviceAppStateDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end