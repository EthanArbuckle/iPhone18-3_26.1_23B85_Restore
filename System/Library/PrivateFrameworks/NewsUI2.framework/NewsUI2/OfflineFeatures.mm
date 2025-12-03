@interface OfflineFeatures
- (_TtC7NewsUI215OfflineFeatures)init;
- (void)bundleSubscriptionDidSubscribe:(void *)subscribe;
@end

@implementation OfflineFeatures

- (void)bundleSubscriptionDidSubscribe:(void *)subscribe
{
  subscribeCopy = subscribe;
  sub_21870A434();
}

- (_TtC7NewsUI215OfflineFeatures)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end