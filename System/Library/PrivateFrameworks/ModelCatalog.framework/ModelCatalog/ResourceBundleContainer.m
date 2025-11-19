@interface ResourceBundleContainer
- (void)encodeWithCoder:(id)a3;
@end

@implementation ResourceBundleContainer

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ResourceBundleContainer.encode(with:)(v4);
}

@end