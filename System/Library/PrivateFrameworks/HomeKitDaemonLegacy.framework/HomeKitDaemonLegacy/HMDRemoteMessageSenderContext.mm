@interface HMDRemoteMessageSenderContext
- (HMDRemoteMessageSenderContext)initWithDeviceHandle:(id)handle accountHandle:(id)accountHandle accountIdentifier:(id)identifier deviceVersion:(id)version pairingIdentityIdentifier:(id)identityIdentifier;
- (NSString)mergeID;
- (NSString)propertyDescription;
@end

@implementation HMDRemoteMessageSenderContext

- (NSString)propertyDescription
{
  v3 = MEMORY[0x277CCACA8];
  deviceHandle = [(HMDRemoteMessageSenderContext *)self deviceHandle];
  accountHandle = [(HMDRemoteMessageSenderContext *)self accountHandle];
  accountIdentifier = [(HMDRemoteMessageSenderContext *)self accountIdentifier];
  deviceVersion = [(HMDRemoteMessageSenderContext *)self deviceVersion];
  pairingIdentityIdentifier = [(HMDRemoteMessageSenderContext *)self pairingIdentityIdentifier];
  v9 = [v3 stringWithFormat:@", Device Handle = %@, Account Handle = %@, Account Identifier = %@, Device Version = %@, Pairing Identity Identifier = %@", deviceHandle, accountHandle, accountIdentifier, deviceVersion, pairingIdentityIdentifier];

  return v9;
}

- (NSString)mergeID
{
  accountIdentifier = [(HMDRemoteMessageSenderContext *)self accountIdentifier];
  senderCorrelationIdentifier = [accountIdentifier senderCorrelationIdentifier];

  return senderCorrelationIdentifier;
}

- (HMDRemoteMessageSenderContext)initWithDeviceHandle:(id)handle accountHandle:(id)accountHandle accountIdentifier:(id)identifier deviceVersion:(id)version pairingIdentityIdentifier:(id)identityIdentifier
{
  handleCopy = handle;
  accountHandleCopy = accountHandle;
  identifierCopy = identifier;
  versionCopy = version;
  identityIdentifierCopy = identityIdentifier;
  if (handleCopy)
  {
    v30.receiver = self;
    v30.super_class = HMDRemoteMessageSenderContext;
    v17 = [(HMDRemoteMessageSenderContext *)&v30 init];
    if (v17)
    {
      v18 = [handleCopy copy];
      deviceHandle = v17->_deviceHandle;
      v17->_deviceHandle = v18;

      v20 = [accountHandleCopy copy];
      accountHandle = v17->_accountHandle;
      v17->_accountHandle = v20;

      v22 = [identifierCopy copy];
      accountIdentifier = v17->_accountIdentifier;
      v17->_accountIdentifier = v22;

      v24 = [versionCopy copy];
      deviceVersion = v17->_deviceVersion;
      v17->_deviceVersion = v24;

      v26 = [identityIdentifierCopy copy];
      pairingIdentityIdentifier = v17->_pairingIdentityIdentifier;
      v17->_pairingIdentityIdentifier = v26;
    }

    self = v17;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end