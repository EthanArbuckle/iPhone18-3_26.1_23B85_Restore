@interface NDFeedItemPool
- (NDFeedItemPool)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NDFeedItemPool

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  NDFeedItemPool.encode(with:)(v4);
}

- (NDFeedItemPool)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end