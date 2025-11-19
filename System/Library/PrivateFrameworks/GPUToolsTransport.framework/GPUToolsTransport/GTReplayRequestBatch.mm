@interface GTReplayRequestBatch
- (GTReplayRequestBatch)init;
- (id)initNoRequestID;
@end

@implementation GTReplayRequestBatch

- (GTReplayRequestBatch)init
{
  v6.receiver = self;
  v6.super_class = GTReplayRequestBatch;
  v2 = [(GTReplayRequestBatch *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_requestID = atomic_fetch_add(globalRequestID_0, 1u);
    v4 = v2;
  }

  return v3;
}

- (id)initNoRequestID
{
  v6.receiver = self;
  v6.super_class = GTReplayRequestBatch;
  v2 = [(GTReplayRequestBatch *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end