@interface GTReplayFetchMLIntermediateData
- (GTReplayFetchMLIntermediateData)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplayFetchMLIntermediateData

- (GTReplayFetchMLIntermediateData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = GTReplayFetchMLIntermediateData;
  v5 = [(GTReplayRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_dispatchUID.uid = GTDispatchUIDDecode(coderCopy, @"dispatchUID");
    v5->_pipelineRef = [coderCopy decodeInt64ForKey:@"pipelineRef"];
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"intermediateOps"];
    intermediateOps = v5->_intermediateOps;
    v5->_intermediateOps = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GTReplayFetchMLIntermediateData;
  coderCopy = coder;
  [(GTReplayRequest *)&v5 encodeWithCoder:coderCopy];
  GTDispatchUIDEncode(coderCopy, self->_dispatchUID.uid, @"dispatchUID");
  [coderCopy encodeInt64:self->_pipelineRef forKey:{@"pipelineRef", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_intermediateOps forKey:@"intermediateOps"];
}

@end