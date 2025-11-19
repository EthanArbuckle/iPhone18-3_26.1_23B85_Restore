@interface COMessageSessionRequest
- (COMessageSessionRequest)init;
@end

@implementation COMessageSessionRequest

- (COMessageSessionRequest)init
{
  v3.receiver = self;
  v3.super_class = COMessageSessionRequest;
  return [(COMessageSessionRequest *)&v3 init];
}

@end