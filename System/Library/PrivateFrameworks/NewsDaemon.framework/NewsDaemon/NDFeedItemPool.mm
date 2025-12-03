@interface NDFeedItemPool
- (NDFeedItemPool)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NDFeedItemPool

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  NDFeedItemPool.encode(with:)(coderCopy);
}

- (NDFeedItemPool)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end