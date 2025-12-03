@interface GTReplayRequest
- (GTReplayRequest)init;
- (GTReplayRequest)initWithCoder:(id)coder;
- (id)initNoRequestID;
@end

@implementation GTReplayRequest

- (GTReplayRequest)init
{
  v6.receiver = self;
  v6.super_class = GTReplayRequest;
  v2 = [(GTReplayRequest *)&v6 init];
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
  v6.super_class = GTReplayRequest;
  v2 = [(GTReplayRequest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (GTReplayRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = GTReplayRequest;
  v5 = [(GTReplayRequest *)&v8 init];
  if (v5)
  {
    v5->_requestID = [coderCopy decodeInt64ForKey:@"requestID"];
    v6 = v5;
  }

  return v5;
}

@end