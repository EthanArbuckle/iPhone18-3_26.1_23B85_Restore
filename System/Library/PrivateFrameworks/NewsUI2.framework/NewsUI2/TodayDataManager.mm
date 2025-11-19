@interface TodayDataManager
- (_TtC7NewsUI216TodayDataManager)init;
- (void)bundleSubscriptionDidExpire:(id)a3;
- (void)bundleSubscriptionDidSubscribe:(id)a3;
- (void)readingList:(id)a3 didAddArticles:(id)a4 removeArticles:(id)a5 eventInitiationLevel:(int64_t)a6;
@end

@implementation TodayDataManager

- (_TtC7NewsUI216TodayDataManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bundleSubscriptionDidSubscribe:(id)a3
{
  v4 = self + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 48);
    v7 = self;
    v6();
    swift_unknownObjectRelease();
  }
}

- (void)bundleSubscriptionDidExpire:(id)a3
{
  v4 = self + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 56);
    v7 = self;
    v6();
    swift_unknownObjectRelease();
  }
}

- (void)readingList:(id)a3 didAddArticles:(id)a4 removeArticles:(id)a5 eventInitiationLevel:(int64_t)a6
{
  v7 = a3;
  v8 = self;
  sub_2193A4830(v7);
}

@end