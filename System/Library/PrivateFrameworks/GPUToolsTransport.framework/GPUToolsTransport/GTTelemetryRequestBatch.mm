@interface GTTelemetryRequestBatch
- (GTTelemetryRequestBatch)init;
- (id)initNoRequestID;
@end

@implementation GTTelemetryRequestBatch

- (GTTelemetryRequestBatch)init
{
  v6.receiver = self;
  v6.super_class = GTTelemetryRequestBatch;
  v2 = [(GTTelemetryRequestBatch *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_requestID = atomic_fetch_add(globalRequestID, 1u);
    v4 = v2;
  }

  return v3;
}

- (id)initNoRequestID
{
  v6.receiver = self;
  v6.super_class = GTTelemetryRequestBatch;
  v2 = [(GTTelemetryRequestBatch *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end