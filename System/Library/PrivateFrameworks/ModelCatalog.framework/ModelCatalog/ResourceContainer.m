@interface ResourceContainer
- (void)encodeWithCoder:(id)a3;
@end

@implementation ResourceContainer

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ResourceContainer.encode(with:)(v4);
}

@end