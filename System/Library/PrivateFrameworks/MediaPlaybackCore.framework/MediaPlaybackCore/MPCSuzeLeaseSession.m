@interface MPCSuzeLeaseSession
- (MPCSuzeLeaseSession)initWithICSuzeLeaseSession:(id)a3;
@end

@implementation MPCSuzeLeaseSession

- (MPCSuzeLeaseSession)initWithICSuzeLeaseSession:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MPCSuzeLeaseSession;
  v6 = [(MPCSuzeLeaseSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_icSuzeLeaseSession, a3);
  }

  return v7;
}

@end