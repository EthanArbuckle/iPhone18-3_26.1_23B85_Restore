@interface HMDRemoteLoginInitiatorSession
- (HMDRemoteLoginInitiatorSession)initWithSessionID:(id)d;
- (id)description;
@end

@implementation HMDRemoteLoginInitiatorSession

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  sessionID = [(HMDRemoteLoginInitiatorSession *)self sessionID];
  v4 = [v2 stringWithFormat:@"[Login-Initiator-Session: %@]", sessionID];

  return v4;
}

- (HMDRemoteLoginInitiatorSession)initWithSessionID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = HMDRemoteLoginInitiatorSession;
  v6 = [(HMDRemoteLoginInitiatorSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionID, d);
  }

  return v7;
}

@end