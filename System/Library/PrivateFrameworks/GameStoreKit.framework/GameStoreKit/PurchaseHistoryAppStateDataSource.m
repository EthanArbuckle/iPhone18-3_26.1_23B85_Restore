@interface PurchaseHistoryAppStateDataSource
- (_TtC12GameStoreKit33PurchaseHistoryAppStateDataSource)init;
- (void)accountsDidChange;
- (void)dealloc;
- (void)hostBundleIdDidChange:(id)a3;
- (void)purchaseHistoryUpdated:(id)a3;
@end

@implementation PurchaseHistoryAppStateDataSource

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver_];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for PurchaseHistoryAppStateDataSource();
  [(PurchaseHistoryAppStateDataSource *)&v6 dealloc];
}

- (void)purchaseHistoryUpdated:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24EC5C2C8(sub_24EC5C7A4, &block_descriptor_67_0);
}

- (void)accountsDidChange
{
  v2 = self;
  sub_24EC58438();
}

- (void)hostBundleIdDidChange:(id)a3
{
  v4 = sub_24F91EB58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EB08();
  v8 = self;
  sub_24EC587CC();

  (*(v5 + 8))(v7, v4);
}

- (_TtC12GameStoreKit33PurchaseHistoryAppStateDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end