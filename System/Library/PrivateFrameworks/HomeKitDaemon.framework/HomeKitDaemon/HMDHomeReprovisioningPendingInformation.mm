@interface HMDHomeReprovisioningPendingInformation
- (HMDHomeReprovisioningPendingInformation)initWithMessageUUID:(id)d networkCredential:(id)credential;
@end

@implementation HMDHomeReprovisioningPendingInformation

- (HMDHomeReprovisioningPendingInformation)initWithMessageUUID:(id)d networkCredential:(id)credential
{
  dCopy = d;
  credentialCopy = credential;
  v12.receiver = self;
  v12.super_class = HMDHomeReprovisioningPendingInformation;
  v9 = [(HMDHomeReprovisioningPendingInformation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messageIdentifier, d);
    objc_storeStrong(&v10->_networkCredential, credential);
  }

  return v10;
}

@end