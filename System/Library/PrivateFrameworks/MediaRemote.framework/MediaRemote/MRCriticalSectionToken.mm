@interface MRCriticalSectionToken
- (MRCriticalSectionToken)init;
- (id)description;
- (void)dealloc;
@end

@implementation MRCriticalSectionToken

- (MRCriticalSectionToken)init
{
  v6.receiver = self;
  v6.super_class = MRCriticalSectionToken;
  v2 = [(MRCriticalSectionToken *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    requestID = v2->_requestID;
    v2->_requestID = v3;

    v2->_invalidated = 0;
  }

  return v2;
}

- (void)dealloc
{
  if (![(MRCriticalSectionToken *)self invalidated])
  {
    v3 = [(MRCriticalSectionToken *)self requestID];
    v4 = [v3 copy];

    [MRCriticalSectionCoordinator exitCriticalSectionUsingRequestID:v4];
  }

  v5.receiver = self;
  v5.super_class = MRCriticalSectionToken;
  [(MRCriticalSectionToken *)&v5 dealloc];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(MRCriticalSectionToken *)self requestID];
  v4 = [v3 UUIDString];
  v5 = [v2 stringWithFormat:@"requestID: %@", v4];

  return v5;
}

@end