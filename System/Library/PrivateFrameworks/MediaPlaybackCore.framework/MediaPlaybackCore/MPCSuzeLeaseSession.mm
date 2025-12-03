@interface MPCSuzeLeaseSession
- (MPCSuzeLeaseSession)initWithICSuzeLeaseSession:(id)session;
@end

@implementation MPCSuzeLeaseSession

- (MPCSuzeLeaseSession)initWithICSuzeLeaseSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = MPCSuzeLeaseSession;
  v6 = [(MPCSuzeLeaseSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_icSuzeLeaseSession, session);
  }

  return v7;
}

@end