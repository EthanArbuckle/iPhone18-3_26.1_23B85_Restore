@interface CPSIncomingCallsResponse
- (CPSIncomingCallsResponse)initWithCoder:(id)coder;
@end

@implementation CPSIncomingCallsResponse

- (CPSIncomingCallsResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CPSIncomingCallsResponse;
  return [(CPSIncomingCallsResponse *)&v4 init];
}

@end