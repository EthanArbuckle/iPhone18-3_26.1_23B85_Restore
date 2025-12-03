@interface GTDisplayRequest
- (GTDisplayRequest)init;
- (GTDisplayRequest)initWithCoder:(id)coder;
@end

@implementation GTDisplayRequest

- (GTDisplayRequest)init
{
  v6.receiver = self;
  v6.super_class = GTDisplayRequest;
  v2 = [(GTDisplayRequest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_requestID = atomic_fetch_add(&nextRequestID, 1uLL);
    v4 = v2;
  }

  return v3;
}

- (GTDisplayRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = GTDisplayRequest;
  v5 = [(GTDisplayRequest *)&v8 init];
  if (v5)
  {
    v5->_requestID = [coderCopy decodeInt64ForKey:@"requestID"];
    v6 = v5;
  }

  return v5;
}

@end