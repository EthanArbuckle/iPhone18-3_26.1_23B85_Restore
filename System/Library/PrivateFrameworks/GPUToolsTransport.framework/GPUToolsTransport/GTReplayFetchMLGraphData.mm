@interface GTReplayFetchMLGraphData
- (GTReplayFetchMLGraphData)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplayFetchMLGraphData

- (GTReplayFetchMLGraphData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = GTReplayFetchMLGraphData;
  v5 = [(GTReplayRequest *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_dispatchUID.uid = GTDispatchUIDDecode(coderCopy, @"dispatchUID");
    v5->_pipelineRef = [coderCopy decodeInt64ForKey:@"pipelineRef"];
    v6 = [coderCopy decodeObjectForKey:@"mlModuleKey"];
    mlModuleKey = v5->_mlModuleKey;
    v5->_mlModuleKey = v6;

    v8 = [coderCopy decodeObjectForKey:@"mlResourceKey"];
    mlResourceKey = v5->_mlResourceKey;
    v5->_mlResourceKey = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GTReplayFetchMLGraphData;
  coderCopy = coder;
  [(GTReplayRequest *)&v5 encodeWithCoder:coderCopy];
  GTDispatchUIDEncode(coderCopy, self->_dispatchUID.uid, @"dispatchUID");
  [coderCopy encodeInt64:self->_pipelineRef forKey:{@"pipelineRef", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_mlModuleKey forKey:@"mlModuleKey"];
  [coderCopy encodeObject:self->_mlResourceKey forKey:@"mlResourceKey"];
}

@end