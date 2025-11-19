@interface HMDRemoteMessageSenderContext
- (HMDRemoteMessageSenderContext)initWithDeviceHandle:(id)a3 accountHandle:(id)a4 accountIdentifier:(id)a5 deviceVersion:(id)a6 pairingIdentityIdentifier:(id)a7;
- (NSString)mergeID;
- (NSString)propertyDescription;
@end

@implementation HMDRemoteMessageSenderContext

- (NSString)propertyDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDRemoteMessageSenderContext *)self deviceHandle];
  v5 = [(HMDRemoteMessageSenderContext *)self accountHandle];
  v6 = [(HMDRemoteMessageSenderContext *)self accountIdentifier];
  v7 = [(HMDRemoteMessageSenderContext *)self deviceVersion];
  v8 = [(HMDRemoteMessageSenderContext *)self pairingIdentityIdentifier];
  v9 = [v3 stringWithFormat:@", Device Handle = %@, Account Handle = %@, Account Identifier = %@, Device Version = %@, Pairing Identity Identifier = %@", v4, v5, v6, v7, v8];

  return v9;
}

- (NSString)mergeID
{
  v2 = [(HMDRemoteMessageSenderContext *)self accountIdentifier];
  v3 = [v2 senderCorrelationIdentifier];

  return v3;
}

- (HMDRemoteMessageSenderContext)initWithDeviceHandle:(id)a3 accountHandle:(id)a4 accountIdentifier:(id)a5 deviceVersion:(id)a6 pairingIdentityIdentifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
  {
    v30.receiver = self;
    v30.super_class = HMDRemoteMessageSenderContext;
    v17 = [(HMDRemoteMessageSenderContext *)&v30 init];
    if (v17)
    {
      v18 = [v12 copy];
      deviceHandle = v17->_deviceHandle;
      v17->_deviceHandle = v18;

      v20 = [v13 copy];
      accountHandle = v17->_accountHandle;
      v17->_accountHandle = v20;

      v22 = [v14 copy];
      accountIdentifier = v17->_accountIdentifier;
      v17->_accountIdentifier = v22;

      v24 = [v15 copy];
      deviceVersion = v17->_deviceVersion;
      v17->_deviceVersion = v24;

      v26 = [v16 copy];
      pairingIdentityIdentifier = v17->_pairingIdentityIdentifier;
      v17->_pairingIdentityIdentifier = v26;
    }

    self = v17;
    v28 = self;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

@end