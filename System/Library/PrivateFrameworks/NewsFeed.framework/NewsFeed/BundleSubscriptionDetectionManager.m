@interface BundleSubscriptionDetectionManager
- (_TtC8NewsFeed34BundleSubscriptionDetectionManager)init;
- (void)bundleSubscriptionDidChange:(id)a3 previousBundleSubscription:(id)a4;
- (void)resetDetectionTimestamp;
@end

@implementation BundleSubscriptionDetectionManager

- (void)resetDetectionTimestamp
{
  v2 = self;
  BundleSubscriptionDetectionManager.resetDetectionTimestamp()();
}

- (_TtC8NewsFeed34BundleSubscriptionDetectionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bundleSubscriptionDidChange:(id)a3 previousBundleSubscription:(id)a4
{
  v6 = MEMORY[0x1E69E85F0];
  sub_1D5B7B480(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v16 - v9;
  v11 = sub_1D726294C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = a3;
  v13 = a3;
  v14 = self;
  v15 = v13;
  sub_1D67E16B0(0, 0, v10, &unk_1D72EEBC8, v12);

  sub_1D5B794C8(v10, &qword_1EDF1ADB0, v6);
}

@end