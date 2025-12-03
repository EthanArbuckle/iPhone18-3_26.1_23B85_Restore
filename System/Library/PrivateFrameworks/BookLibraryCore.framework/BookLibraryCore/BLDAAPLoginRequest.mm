@interface BLDAAPLoginRequest
- (BLDAAPLoginRequest)initWithDSID:(id)d reason:(int64_t)reason;
@end

@implementation BLDAAPLoginRequest

- (BLDAAPLoginRequest)initWithDSID:(id)d reason:(int64_t)reason
{
  v7.receiver = self;
  v7.super_class = BLDAAPLoginRequest;
  v4 = [(BLDAAPURLRequest *)&v7 initWithDSID:d reason:reason];
  v5 = v4;
  if (v4)
  {
    [(BLDAAPURLRequest *)v4 setDaapURL:@"login"];
    [(BLDAAPURLRequest *)v5 setContentType:0];
  }

  return v5;
}

@end