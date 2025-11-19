@interface CookingKitOfflineStatusProvider.Observer
- (_TtCC12NewsArticles31CookingKitOfflineStatusProviderP33_EF59ED90E032401F143361A339AB67998Observer)init;
- (void)networkReachabilityDidChange:(id)a3;
@end

@implementation CookingKitOfflineStatusProvider.Observer

- (void)networkReachabilityDidChange:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCC12NewsArticles31CookingKitOfflineStatusProviderP33_EF59ED90E032401F143361A339AB67998Observer_statusDidChange);
  v4 = self;
  v3();
}

- (_TtCC12NewsArticles31CookingKitOfflineStatusProviderP33_EF59ED90E032401F143361A339AB67998Observer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end