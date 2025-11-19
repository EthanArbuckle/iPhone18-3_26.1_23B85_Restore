@interface GTCaptureRequestBatch
- (GTCaptureRequestBatch)init;
- (GTCaptureRequestBatch)initWithCoder:(id)a3;
- (GTCaptureRequestBatch)initWithRequestID:(unint64_t)a3;
@end

@implementation GTCaptureRequestBatch

- (GTCaptureRequestBatch)init
{
  v6.receiver = self;
  v6.super_class = GTCaptureRequestBatch;
  v2 = [(GTCaptureRequestBatch *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_requestID = atomic_fetch_add(g_requestID, 1u);
    v4 = v2;
  }

  return v3;
}

- (GTCaptureRequestBatch)initWithRequestID:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = GTCaptureRequestBatch;
  result = [(GTCaptureRequestBatch *)&v5 init];
  if (result)
  {
    result->_requestID = a3;
  }

  return result;
}

- (GTCaptureRequestBatch)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GTCaptureRequestBatch;
  v5 = [(GTCaptureRequestBatch *)&v8 init];
  if (v5)
  {
    v5->_requestID = [v4 decodeInt64ForKey:@"requestID"];
    v6 = v5;
  }

  return v5;
}

@end