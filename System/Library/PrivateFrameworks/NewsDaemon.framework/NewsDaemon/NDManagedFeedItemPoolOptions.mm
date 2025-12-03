@interface NDManagedFeedItemPoolOptions
- (NDManagedFeedItemPoolOptions)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NDManagedFeedItemPoolOptions

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  NDManagedFeedItemPoolOptions.encode(with:)(coderCopy);
}

- (NDManagedFeedItemPoolOptions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end