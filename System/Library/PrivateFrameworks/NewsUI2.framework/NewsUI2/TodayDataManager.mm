@interface TodayDataManager
- (_TtC7NewsUI216TodayDataManager)init;
- (void)bundleSubscriptionDidExpire:(id)expire;
- (void)bundleSubscriptionDidSubscribe:(id)subscribe;
- (void)readingList:(id)list didAddArticles:(id)articles removeArticles:(id)removeArticles eventInitiationLevel:(int64_t)level;
@end

@implementation TodayDataManager

- (_TtC7NewsUI216TodayDataManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bundleSubscriptionDidSubscribe:(id)subscribe
{
  v4 = self + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 48);
    selfCopy = self;
    v6();
    swift_unknownObjectRelease();
  }
}

- (void)bundleSubscriptionDidExpire:(id)expire
{
  v4 = self + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 56);
    selfCopy = self;
    v6();
    swift_unknownObjectRelease();
  }
}

- (void)readingList:(id)list didAddArticles:(id)articles removeArticles:(id)removeArticles eventInitiationLevel:(int64_t)level
{
  listCopy = list;
  selfCopy = self;
  sub_2193A4830(listCopy);
}

@end