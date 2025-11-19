@interface COMessageSessionResponse
- (COMessageSessionResponse)init;
@end

@implementation COMessageSessionResponse

- (COMessageSessionResponse)init
{
  v3.receiver = self;
  v3.super_class = COMessageSessionResponse;
  return [(COMessageSessionResponse *)&v3 init];
}

@end