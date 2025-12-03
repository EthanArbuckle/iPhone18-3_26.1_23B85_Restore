@interface MastheadViewProvider
- (_TtC7NewsUI220MastheadViewProvider)init;
- (void)bundleSubscriptionDidSubscribe:(void *)subscribe;
@end

@implementation MastheadViewProvider

- (void)bundleSubscriptionDidSubscribe:(void *)subscribe
{
  subscribeCopy = subscribe;
  selfCopy = self;
  sub_218F896DC();
}

- (_TtC7NewsUI220MastheadViewProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end