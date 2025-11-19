@interface MRDGroupSessionInvitationRequest
- (MRDGroupSessionInvitationRequest)initWithSession:(id)a3 pendingParticipant:(id)a4;
@end

@implementation MRDGroupSessionInvitationRequest

- (MRDGroupSessionInvitationRequest)initWithSession:(id)a3 pendingParticipant:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MRDGroupSessionInvitationRequest;
  v9 = [(MRDGroupSessionInvitationRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_session, a3);
    objc_storeStrong(&v10->_pendingParticipant, a4);
  }

  return v10;
}

@end