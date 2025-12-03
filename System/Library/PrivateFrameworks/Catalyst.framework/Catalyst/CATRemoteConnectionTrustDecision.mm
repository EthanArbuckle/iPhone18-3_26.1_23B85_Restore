@interface CATRemoteConnectionTrustDecision
- (CATRemoteConnectionTrustDecision)initWithConnection:(id)connection trust:(__SecTrust *)trust;
- (void)dealloc;
@end

@implementation CATRemoteConnectionTrustDecision

- (void)dealloc
{
  v3 = atomic_load(&self->mHasResponded);
  if ((v3 & 1) == 0)
  {
    [(CATRemoteConnectionTrustDecision *)self respondWithDecisionToAllowUntrustedConnection:0];
  }

  v4.receiver = self;
  v4.super_class = CATRemoteConnectionTrustDecision;
  [(CATRemoteConnectionTrustDecision *)&v4 dealloc];
}

- (CATRemoteConnectionTrustDecision)initWithConnection:(id)connection trust:(__SecTrust *)trust
{
  connectionCopy = connection;
  v10.receiver = self;
  v10.super_class = CATRemoteConnectionTrustDecision;
  v7 = [(CATRemoteConnectionTrustDecision *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->mConnection, connectionCopy);
    objc_storeStrong(&v8->_trust, trust);
  }

  return v8;
}

@end