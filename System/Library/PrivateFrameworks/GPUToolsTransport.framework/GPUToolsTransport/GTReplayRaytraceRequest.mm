@interface GTReplayRaytraceRequest
- (GTReplayRaytraceRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplayRaytraceRequest

- (GTReplayRaytraceRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = GTReplayRaytraceRequest;
  v5 = [(GTReplayRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_streamRef = [coderCopy decodeInt64ForKey:@"streamRef"];
    v5->_dispatchUID.uid = GTDispatchUIDDecode(coderCopy, @"dispatchUID");
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GTReplayRaytraceRequest;
  coderCopy = coder;
  [(GTReplayRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_streamRef forKey:{@"streamRef", v5.receiver, v5.super_class}];
  GTDispatchUIDEncode(coderCopy, self->_dispatchUID.uid, @"dispatchUID");
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v6.receiver = self;
  v6.super_class = GTReplayRaytraceRequest;
  v3 = [(GTReplayRaytraceRequest *)&v6 self];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

@end