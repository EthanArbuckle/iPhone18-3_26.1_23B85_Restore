@interface CPSRestrictedAccessResponse
- (CPSRestrictedAccessResponse)initWithCoder:(id)coder;
@end

@implementation CPSRestrictedAccessResponse

- (CPSRestrictedAccessResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CPSRestrictedAccessResponse;
  return [(CPSRestrictedAccessResponse *)&v4 init];
}

@end