@interface NDManagedFeedItemPoolOptions
- (NDManagedFeedItemPoolOptions)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NDManagedFeedItemPoolOptions

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  NDManagedFeedItemPoolOptions.encode(with:)(v4);
}

- (NDManagedFeedItemPoolOptions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end