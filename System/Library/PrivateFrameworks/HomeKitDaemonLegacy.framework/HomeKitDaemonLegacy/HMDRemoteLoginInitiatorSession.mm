@interface HMDRemoteLoginInitiatorSession
- (HMDRemoteLoginInitiatorSession)initWithSessionID:(id)a3;
- (id)description;
@end

@implementation HMDRemoteLoginInitiatorSession

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDRemoteLoginInitiatorSession *)self sessionID];
  v4 = [v2 stringWithFormat:@"[Login-Initiator-Session: %@]", v3];

  return v4;
}

- (HMDRemoteLoginInitiatorSession)initWithSessionID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDRemoteLoginInitiatorSession;
  v6 = [(HMDRemoteLoginInitiatorSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionID, a3);
  }

  return v7;
}

@end