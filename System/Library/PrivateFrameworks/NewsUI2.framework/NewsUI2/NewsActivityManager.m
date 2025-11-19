@interface NewsActivityManager
- (_TtC7NewsUI219NewsActivityManager)init;
- (void)clearAllSavedUserActivities;
- (void)deregisterActivityWithData:(id)a3;
- (void)registerCurrentActivityWithData:(id)a3;
@end

@implementation NewsActivityManager

- (void)registerCurrentActivityWithData:(id)a3
{
  v4 = a3;
  v5 = self;
  NewsActivityManager.registerCurrentActivity(with:)(v4);
}

- (void)deregisterActivityWithData:(id)a3
{
  v4 = a3;
  v5 = self;
  NewsActivityManager.deregisterActivity(with:)(v4);
}

- (void)clearAllSavedUserActivities
{
  v2 = self;

  sub_219BE7874();
}

- (_TtC7NewsUI219NewsActivityManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end