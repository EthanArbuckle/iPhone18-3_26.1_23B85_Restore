@interface ResourceBundleContainer
- (void)encodeWithCoder:(id)coder;
@end

@implementation ResourceBundleContainer

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ResourceBundleContainer.encode(with:)(coderCopy);
}

@end