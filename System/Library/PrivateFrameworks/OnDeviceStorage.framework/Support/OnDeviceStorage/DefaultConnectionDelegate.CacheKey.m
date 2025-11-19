@interface DefaultConnectionDelegate.CacheKey
- (BOOL)isEqual:(id)a3;
- (_TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey)init;
- (int64_t)hash;
@end

@implementation DefaultConnectionDelegate.CacheKey

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_10002C680(v8);

  sub_10002D504(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_10002C880();

  return v3;
}

- (_TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end