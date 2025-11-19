@interface AppUserEmbeddingManager
- (_TtC19NewsPersonalization23AppUserEmbeddingManager)init;
- (id)generateUserEmbeddingIfNeeded;
@end

@implementation AppUserEmbeddingManager

- (_TtC19NewsPersonalization23AppUserEmbeddingManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)generateUserEmbeddingIfNeeded
{
  v2 = self;
  v3 = sub_1C6D389B8();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v7 = sub_1C6D75E50();
    sub_1C6B75B88(v3, v5);
    v6 = v7;
  }

  return v6;
}

@end