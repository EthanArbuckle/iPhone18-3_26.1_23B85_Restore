@interface HMDAccessoryNetworkProtectionGroupRecord
- (HMDAccessoryNetworkProtectionGroupRecord)initWithGroup:(id)a3 active:(BOOL)a4 persisted:(BOOL)a5;
@end

@implementation HMDAccessoryNetworkProtectionGroupRecord

- (HMDAccessoryNetworkProtectionGroupRecord)initWithGroup:(id)a3 active:(BOOL)a4 persisted:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = HMDAccessoryNetworkProtectionGroupRecord;
  v10 = [(HMDAccessoryNetworkProtectionGroupRecord *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_active = a4;
    v10->_persisted = a5;
    objc_storeStrong(&v10->_group, a3);
  }

  return v11;
}

@end