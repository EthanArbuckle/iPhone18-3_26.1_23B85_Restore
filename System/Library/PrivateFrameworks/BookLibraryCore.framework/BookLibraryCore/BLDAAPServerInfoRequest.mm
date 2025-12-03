@interface BLDAAPServerInfoRequest
- (BLDAAPServerInfoRequest)initWithDSID:(id)d reason:(int64_t)reason;
@end

@implementation BLDAAPServerInfoRequest

- (BLDAAPServerInfoRequest)initWithDSID:(id)d reason:(int64_t)reason
{
  v7.receiver = self;
  v7.super_class = BLDAAPServerInfoRequest;
  v4 = [(BLDAAPURLRequest *)&v7 initWithDSID:d reason:reason];
  v5 = v4;
  if (v4)
  {
    [(BLDAAPURLRequest *)v4 setDaapURL:@"server-info"];
    [(BLDAAPURLRequest *)v5 setRequestMethod:2];
  }

  return v5;
}

@end