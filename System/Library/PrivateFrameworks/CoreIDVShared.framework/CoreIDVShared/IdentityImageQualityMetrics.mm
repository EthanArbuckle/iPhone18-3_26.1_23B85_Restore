@interface IdentityImageQualityMetrics
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityImageQualityMetrics

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IdentityImageQualityMetrics.encode(with:)(coderCopy);
}

@end