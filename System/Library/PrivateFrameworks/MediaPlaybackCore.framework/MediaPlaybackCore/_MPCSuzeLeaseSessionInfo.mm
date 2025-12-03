@interface _MPCSuzeLeaseSessionInfo
- (_MPCSuzeLeaseSessionInfo)initWithICLeaseSession:(id)session;
@end

@implementation _MPCSuzeLeaseSessionInfo

- (_MPCSuzeLeaseSessionInfo)initWithICLeaseSession:(id)session
{
  sessionCopy = session;
  v11.receiver = self;
  v11.super_class = _MPCSuzeLeaseSessionInfo;
  v6 = [(_MPCSuzeLeaseSessionInfo *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_icLeaseSession, session);
    v8 = [[MPCSuzeLeaseSession alloc] initWithICSuzeLeaseSession:v7->_icLeaseSession];
    mpcLeaseSession = v7->_mpcLeaseSession;
    v7->_mpcLeaseSession = v8;
  }

  return v7;
}

@end