@interface AudioFeedInteractor
- (_TtC7NewsUI219AudioFeedInteractor)init;
- (void)bundleSubscriptionDidSubscribe:(void *)subscribe;
@end

@implementation AudioFeedInteractor

- (void)bundleSubscriptionDidSubscribe:(void *)subscribe
{
  subscribeCopy = subscribe;
  selfCopy = self;
  sub_21914F5B4();
}

- (_TtC7NewsUI219AudioFeedInteractor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end