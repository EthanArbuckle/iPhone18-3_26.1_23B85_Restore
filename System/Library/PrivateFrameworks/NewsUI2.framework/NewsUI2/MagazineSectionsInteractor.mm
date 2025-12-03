@interface MagazineSectionsInteractor
- (_TtC7NewsUI226MagazineSectionsInteractor)init;
- (void)bundleSubscriptionDidSubscribe:(void *)subscribe;
@end

@implementation MagazineSectionsInteractor

- (void)bundleSubscriptionDidSubscribe:(void *)subscribe
{
  subscribeCopy = subscribe;
  selfCopy = self;
  sub_219458D48();
}

- (_TtC7NewsUI226MagazineSectionsInteractor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end