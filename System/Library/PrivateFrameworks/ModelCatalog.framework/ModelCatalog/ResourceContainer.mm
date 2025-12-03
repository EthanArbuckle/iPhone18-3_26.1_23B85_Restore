@interface ResourceContainer
- (void)encodeWithCoder:(id)coder;
@end

@implementation ResourceContainer

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ResourceContainer.encode(with:)(coderCopy);
}

@end