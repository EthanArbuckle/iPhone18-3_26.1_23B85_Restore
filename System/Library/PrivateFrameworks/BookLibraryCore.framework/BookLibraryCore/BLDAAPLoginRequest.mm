@interface BLDAAPLoginRequest
- (BLDAAPLoginRequest)initWithDSID:(id)a3 reason:(int64_t)a4;
@end

@implementation BLDAAPLoginRequest

- (BLDAAPLoginRequest)initWithDSID:(id)a3 reason:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = BLDAAPLoginRequest;
  v4 = [(BLDAAPURLRequest *)&v7 initWithDSID:a3 reason:a4];
  v5 = v4;
  if (v4)
  {
    [(BLDAAPURLRequest *)v4 setDaapURL:@"login"];
    [(BLDAAPURLRequest *)v5 setContentType:0];
  }

  return v5;
}

@end