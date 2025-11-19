@interface ClearableUserEmbeddingManager
- (_TtC19NewsPersonalization29ClearableUserEmbeddingManager)init;
- (void)clearHistory;
@end

@implementation ClearableUserEmbeddingManager

- (void)clearHistory
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC19NewsPersonalization29ClearableUserEmbeddingManager_userEmbeddingManager);
  v3 = self;
  UserEmbeddingManager.clearCachedUserEmbedding()();
}

- (_TtC19NewsPersonalization29ClearableUserEmbeddingManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end