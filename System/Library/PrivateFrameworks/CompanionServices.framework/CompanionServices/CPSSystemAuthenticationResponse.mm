@interface CPSSystemAuthenticationResponse
- (CPSSystemAuthenticationResponse)initWithCoder:(id)coder;
@end

@implementation CPSSystemAuthenticationResponse

- (CPSSystemAuthenticationResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CPSSystemAuthenticationResponse;
  return [(CPSSystemAuthenticationResponse *)&v4 init];
}

@end