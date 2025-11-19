@interface CATIDSServiceConnectionInvitationRequest
- (CATIDSServiceConnectionInvitationRequest)initWithInvitationIdentifier:(id)a3 appleID:(id)a4 assertion:(id)a5 userInfo:(id)a6;
@end

@implementation CATIDSServiceConnectionInvitationRequest

- (CATIDSServiceConnectionInvitationRequest)initWithInvitationIdentifier:(id)a3 appleID:(id)a4 assertion:(id)a5 userInfo:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = CATIDSServiceConnectionInvitationRequest;
  v15 = [(CATIDSServiceConnectionInvitationRequest *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_invitationIdentifier, a3);
    v17 = [v12 copy];
    appleID = v16->_appleID;
    v16->_appleID = v17;

    objc_storeStrong(&v16->_assertion, a5);
    v19 = [v14 copy];
    userInfo = v16->_userInfo;
    v16->_userInfo = v19;
  }

  return v16;
}

@end