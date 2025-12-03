@interface CATIDSServiceConnectionInvitation
- (CATIDSServiceConnectionInvitation)initWithConnectionIdentifier:(id)identifier senderAppleID:(id)d senderAddress:(id)address assertion:(id)assertion messagingVersion:(unint64_t)version userInfo:(id)info;
- (CATIDSServiceConnectionInvitation)initWithSenderAppleID:(id)d senderAddress:(id)address assertion:(id)assertion messagingVersion:(unint64_t)version userInfo:(id)info;
@end

@implementation CATIDSServiceConnectionInvitation

- (CATIDSServiceConnectionInvitation)initWithSenderAppleID:(id)d senderAddress:(id)address assertion:(id)assertion messagingVersion:(unint64_t)version userInfo:(id)info
{
  v12 = MEMORY[0x277CCAD78];
  infoCopy = info;
  assertionCopy = assertion;
  addressCopy = address;
  dCopy = d;
  uUID = [v12 UUID];
  v18 = [(CATIDSServiceConnectionInvitation *)self initWithConnectionIdentifier:uUID senderAppleID:dCopy senderAddress:addressCopy assertion:assertionCopy messagingVersion:version userInfo:infoCopy];

  return v18;
}

- (CATIDSServiceConnectionInvitation)initWithConnectionIdentifier:(id)identifier senderAppleID:(id)d senderAddress:(id)address assertion:(id)assertion messagingVersion:(unint64_t)version userInfo:(id)info
{
  identifierCopy = identifier;
  dCopy = d;
  addressCopy = address;
  assertionCopy = assertion;
  infoCopy = info;
  v29.receiver = self;
  v29.super_class = CATIDSServiceConnectionInvitation;
  v20 = [(CATIDSServiceConnectionInvitation *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_connectionIdentifier, identifier);
    v22 = [dCopy copy];
    senderAppleID = v21->_senderAppleID;
    v21->_senderAppleID = v22;

    v24 = [addressCopy copy];
    senderAddress = v21->_senderAddress;
    v21->_senderAddress = v24;

    objc_storeStrong(&v21->_assertion, assertion);
    v21->_messagingVersion = version;
    v26 = [infoCopy copy];
    userInfo = v21->_userInfo;
    v21->_userInfo = v26;
  }

  return v21;
}

@end