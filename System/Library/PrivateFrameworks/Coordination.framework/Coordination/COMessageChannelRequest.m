@interface COMessageChannelRequest
- (COMessageChannelRequest)init;
@end

@implementation COMessageChannelRequest

- (COMessageChannelRequest)init
{
  v3.receiver = self;
  v3.super_class = COMessageChannelRequest;
  return [(COMessageChannelRequest *)&v3 init];
}

@end