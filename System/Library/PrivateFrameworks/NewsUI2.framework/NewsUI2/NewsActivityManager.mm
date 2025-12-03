@interface NewsActivityManager
- (_TtC7NewsUI219NewsActivityManager)init;
- (void)clearAllSavedUserActivities;
- (void)deregisterActivityWithData:(id)data;
- (void)registerCurrentActivityWithData:(id)data;
@end

@implementation NewsActivityManager

- (void)registerCurrentActivityWithData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  NewsActivityManager.registerCurrentActivity(with:)(dataCopy);
}

- (void)deregisterActivityWithData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  NewsActivityManager.deregisterActivity(with:)(dataCopy);
}

- (void)clearAllSavedUserActivities
{
  selfCopy = self;

  sub_219BE7874();
}

- (_TtC7NewsUI219NewsActivityManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end