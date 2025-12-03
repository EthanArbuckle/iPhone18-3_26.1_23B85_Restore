@interface MRDGroupSessionInvitationRequest
- (MRDGroupSessionInvitationRequest)initWithSession:(id)session pendingParticipant:(id)participant;
@end

@implementation MRDGroupSessionInvitationRequest

- (MRDGroupSessionInvitationRequest)initWithSession:(id)session pendingParticipant:(id)participant
{
  sessionCopy = session;
  participantCopy = participant;
  v12.receiver = self;
  v12.super_class = MRDGroupSessionInvitationRequest;
  v9 = [(MRDGroupSessionInvitationRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_session, session);
    objc_storeStrong(&v10->_pendingParticipant, participant);
  }

  return v10;
}

@end