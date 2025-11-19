@interface GTReplayFetchMLIntermediateData
- (GTReplayFetchMLIntermediateData)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTReplayFetchMLIntermediateData

- (GTReplayFetchMLIntermediateData)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GTReplayFetchMLIntermediateData;
  v5 = [(GTReplayRequest *)&v10 initWithCoder:v4];
  if (v5)
  {
    v5->_dispatchUID.uid = GTDispatchUIDDecode(v4, @"dispatchUID");
    v5->_pipelineRef = [v4 decodeInt64ForKey:@"pipelineRef"];
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"intermediateOps"];
    intermediateOps = v5->_intermediateOps;
    v5->_intermediateOps = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GTReplayFetchMLIntermediateData;
  v4 = a3;
  [(GTReplayRequest *)&v5 encodeWithCoder:v4];
  GTDispatchUIDEncode(v4, self->_dispatchUID.uid, @"dispatchUID");
  [v4 encodeInt64:self->_pipelineRef forKey:{@"pipelineRef", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_intermediateOps forKey:@"intermediateOps"];
}

@end