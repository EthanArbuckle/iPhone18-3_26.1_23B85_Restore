@interface HMDHomeReprovisioningPendingInformation
- (HMDHomeReprovisioningPendingInformation)initWithMessageUUID:(id)a3 networkCredential:(id)a4;
@end

@implementation HMDHomeReprovisioningPendingInformation

- (HMDHomeReprovisioningPendingInformation)initWithMessageUUID:(id)a3 networkCredential:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDHomeReprovisioningPendingInformation;
  v9 = [(HMDHomeReprovisioningPendingInformation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messageIdentifier, a3);
    objc_storeStrong(&v10->_networkCredential, a4);
  }

  return v10;
}

@end