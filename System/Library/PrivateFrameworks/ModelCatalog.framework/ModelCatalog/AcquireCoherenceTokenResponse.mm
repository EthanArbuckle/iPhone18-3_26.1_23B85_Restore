@interface AcquireCoherenceTokenResponse
- (void)encodeWithCoder:(id)coder;
@end

@implementation AcquireCoherenceTokenResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  AcquireCoherenceTokenResponse.encode(with:)(coderCopy);
}

@end