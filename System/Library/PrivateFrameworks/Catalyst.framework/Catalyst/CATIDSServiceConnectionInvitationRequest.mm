@interface CATIDSServiceConnectionInvitationRequest
- (CATIDSServiceConnectionInvitationRequest)initWithInvitationIdentifier:(id)identifier appleID:(id)d assertion:(id)assertion userInfo:(id)info;
@end

@implementation CATIDSServiceConnectionInvitationRequest

- (CATIDSServiceConnectionInvitationRequest)initWithInvitationIdentifier:(id)identifier appleID:(id)d assertion:(id)assertion userInfo:(id)info
{
  identifierCopy = identifier;
  dCopy = d;
  assertionCopy = assertion;
  infoCopy = info;
  v22.receiver = self;
  v22.super_class = CATIDSServiceConnectionInvitationRequest;
  v15 = [(CATIDSServiceConnectionInvitationRequest *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_invitationIdentifier, identifier);
    v17 = [dCopy copy];
    appleID = v16->_appleID;
    v16->_appleID = v17;

    objc_storeStrong(&v16->_assertion, assertion);
    v19 = [infoCopy copy];
    userInfo = v16->_userInfo;
    v16->_userInfo = v19;
  }

  return v16;
}

@end