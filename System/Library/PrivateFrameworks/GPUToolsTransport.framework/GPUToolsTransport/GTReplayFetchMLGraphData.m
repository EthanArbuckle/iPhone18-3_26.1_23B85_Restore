@interface GTReplayFetchMLGraphData
- (GTReplayFetchMLGraphData)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTReplayFetchMLGraphData

- (GTReplayFetchMLGraphData)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = GTReplayFetchMLGraphData;
  v5 = [(GTReplayRequest *)&v12 initWithCoder:v4];
  if (v5)
  {
    v5->_dispatchUID.uid = GTDispatchUIDDecode(v4, @"dispatchUID");
    v5->_pipelineRef = [v4 decodeInt64ForKey:@"pipelineRef"];
    v6 = [v4 decodeObjectForKey:@"mlModuleKey"];
    mlModuleKey = v5->_mlModuleKey;
    v5->_mlModuleKey = v6;

    v8 = [v4 decodeObjectForKey:@"mlResourceKey"];
    mlResourceKey = v5->_mlResourceKey;
    v5->_mlResourceKey = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GTReplayFetchMLGraphData;
  v4 = a3;
  [(GTReplayRequest *)&v5 encodeWithCoder:v4];
  GTDispatchUIDEncode(v4, self->_dispatchUID.uid, @"dispatchUID");
  [v4 encodeInt64:self->_pipelineRef forKey:{@"pipelineRef", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_mlModuleKey forKey:@"mlModuleKey"];
  [v4 encodeObject:self->_mlResourceKey forKey:@"mlResourceKey"];
}

@end