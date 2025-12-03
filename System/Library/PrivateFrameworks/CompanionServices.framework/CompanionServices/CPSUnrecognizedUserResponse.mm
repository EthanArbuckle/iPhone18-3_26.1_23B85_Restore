@interface CPSUnrecognizedUserResponse
- (CPSUnrecognizedUserResponse)initWithCoder:(id)coder;
@end

@implementation CPSUnrecognizedUserResponse

- (CPSUnrecognizedUserResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CPSUnrecognizedUserResponse;
  return [(CPSUnrecognizedUserResponse *)&v4 init];
}

@end