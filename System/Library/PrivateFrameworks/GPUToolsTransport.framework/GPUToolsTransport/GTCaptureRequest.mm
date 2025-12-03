@interface GTCaptureRequest
- (GTCaptureRequest)init;
- (GTCaptureRequest)initWithCoder:(id)coder;
- (GTCaptureRequest)initWithRequestID:(unint64_t)d;
@end

@implementation GTCaptureRequest

- (GTCaptureRequest)init
{
  v6.receiver = self;
  v6.super_class = GTCaptureRequest;
  v2 = [(GTCaptureRequest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_requestID = atomic_fetch_add(g_requestID, 1u);
    v4 = v2;
  }

  return v3;
}

- (GTCaptureRequest)initWithRequestID:(unint64_t)d
{
  v5.receiver = self;
  v5.super_class = GTCaptureRequest;
  result = [(GTCaptureRequest *)&v5 init];
  if (result)
  {
    result->_requestID = d;
  }

  return result;
}

- (GTCaptureRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = GTCaptureRequest;
  v5 = [(GTCaptureRequest *)&v8 init];
  if (v5)
  {
    v5->_requestID = [coderCopy decodeInt64ForKey:@"requestID"];
    v6 = v5;
  }

  return v5;
}

@end