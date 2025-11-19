@interface AcquireCoherenceTokenResponse
- (void)encodeWithCoder:(id)a3;
@end

@implementation AcquireCoherenceTokenResponse

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  AcquireCoherenceTokenResponse.encode(with:)(v4);
}

@end