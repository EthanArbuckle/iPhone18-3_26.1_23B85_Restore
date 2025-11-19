@interface BLDAAPServerInfoRequest
- (BLDAAPServerInfoRequest)initWithDSID:(id)a3 reason:(int64_t)a4;
@end

@implementation BLDAAPServerInfoRequest

- (BLDAAPServerInfoRequest)initWithDSID:(id)a3 reason:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = BLDAAPServerInfoRequest;
  v4 = [(BLDAAPURLRequest *)&v7 initWithDSID:a3 reason:a4];
  v5 = v4;
  if (v4)
  {
    [(BLDAAPURLRequest *)v4 setDaapURL:@"server-info"];
    [(BLDAAPURLRequest *)v5 setRequestMethod:2];
  }

  return v5;
}

@end