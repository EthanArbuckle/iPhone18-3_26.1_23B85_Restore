@interface CATIDSServiceConnectionInvitation
- (CATIDSServiceConnectionInvitation)initWithConnectionIdentifier:(id)a3 senderAppleID:(id)a4 senderAddress:(id)a5 assertion:(id)a6 messagingVersion:(unint64_t)a7 userInfo:(id)a8;
- (CATIDSServiceConnectionInvitation)initWithSenderAppleID:(id)a3 senderAddress:(id)a4 assertion:(id)a5 messagingVersion:(unint64_t)a6 userInfo:(id)a7;
@end

@implementation CATIDSServiceConnectionInvitation

- (CATIDSServiceConnectionInvitation)initWithSenderAppleID:(id)a3 senderAddress:(id)a4 assertion:(id)a5 messagingVersion:(unint64_t)a6 userInfo:(id)a7
{
  v12 = MEMORY[0x277CCAD78];
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v12 UUID];
  v18 = [(CATIDSServiceConnectionInvitation *)self initWithConnectionIdentifier:v17 senderAppleID:v16 senderAddress:v15 assertion:v14 messagingVersion:a6 userInfo:v13];

  return v18;
}

- (CATIDSServiceConnectionInvitation)initWithConnectionIdentifier:(id)a3 senderAppleID:(id)a4 senderAddress:(id)a5 assertion:(id)a6 messagingVersion:(unint64_t)a7 userInfo:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v29.receiver = self;
  v29.super_class = CATIDSServiceConnectionInvitation;
  v20 = [(CATIDSServiceConnectionInvitation *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_connectionIdentifier, a3);
    v22 = [v16 copy];
    senderAppleID = v21->_senderAppleID;
    v21->_senderAppleID = v22;

    v24 = [v17 copy];
    senderAddress = v21->_senderAddress;
    v21->_senderAddress = v24;

    objc_storeStrong(&v21->_assertion, a6);
    v21->_messagingVersion = a7;
    v26 = [v19 copy];
    userInfo = v21->_userInfo;
    v21->_userInfo = v26;
  }

  return v21;
}

@end