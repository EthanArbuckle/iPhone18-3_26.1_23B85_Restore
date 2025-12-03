@interface Readiness
- (void)encodeWithCoder:(id)coder;
@end

@implementation Readiness

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  Readiness.encode(with:)(coderCopy);
}

@end