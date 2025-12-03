@interface MBDomainRecordQuota
+ (id)domainRecordQuotaWithBaseRecordID:(id)d quota:(int64_t)quota;
- (MBDomainRecordQuota)initWithBaseRecordID:(id)d domainHmac:(id)hmac quota:(int64_t)quota;
@end

@implementation MBDomainRecordQuota

- (MBDomainRecordQuota)initWithBaseRecordID:(id)d domainHmac:(id)hmac quota:(int64_t)quota
{
  dCopy = d;
  hmacCopy = hmac;
  v14.receiver = self;
  v14.super_class = MBDomainRecordQuota;
  v11 = [(MBDomainRecordQuota *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_baseRecordID, d);
    objc_storeStrong(&v12->_domainHmac, hmac);
    v12->_quota = quota;
  }

  return v12;
}

+ (id)domainRecordQuotaWithBaseRecordID:(id)d quota:(int64_t)quota
{
  dCopy = d;
  v6 = [MBDomainRecord domainHmacFromBaseRecordID:dCopy];
  v7 = [[MBDomainRecordQuota alloc] initWithBaseRecordID:dCopy domainHmac:v6 quota:quota];

  return v7;
}

@end