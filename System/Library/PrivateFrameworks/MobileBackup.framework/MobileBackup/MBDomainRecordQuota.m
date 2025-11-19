@interface MBDomainRecordQuota
+ (id)domainRecordQuotaWithBaseRecordID:(id)a3 quota:(int64_t)a4;
- (MBDomainRecordQuota)initWithBaseRecordID:(id)a3 domainHmac:(id)a4 quota:(int64_t)a5;
@end

@implementation MBDomainRecordQuota

- (MBDomainRecordQuota)initWithBaseRecordID:(id)a3 domainHmac:(id)a4 quota:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = MBDomainRecordQuota;
  v11 = [(MBDomainRecordQuota *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_baseRecordID, a3);
    objc_storeStrong(&v12->_domainHmac, a4);
    v12->_quota = a5;
  }

  return v12;
}

+ (id)domainRecordQuotaWithBaseRecordID:(id)a3 quota:(int64_t)a4
{
  v5 = a3;
  v6 = [MBDomainRecord domainHmacFromBaseRecordID:v5];
  v7 = [[MBDomainRecordQuota alloc] initWithBaseRecordID:v5 domainHmac:v6 quota:a4];

  return v7;
}

@end