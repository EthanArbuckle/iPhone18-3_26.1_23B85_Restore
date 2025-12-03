@interface GTReplayShaderDebugVertex
- (GTReplayShaderDebugVertex)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplayShaderDebugVertex

- (GTReplayShaderDebugVertex)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = GTReplayShaderDebugVertex;
  v5 = [(GTReplayShaderDebugRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"VertexIDs"];
    vertexIDs = v5->_vertexIDs;
    v5->_vertexIDs = v6;

    v5->_instanceID = [coderCopy decodeInt32ForKey:@"InstanceID"];
    v5->_amplificationID = [coderCopy decodeInt32ForKey:@"AmplificationID"];
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GTReplayShaderDebugVertex;
  coderCopy = coder;
  [(GTReplayShaderDebugRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_vertexIDs forKey:{@"VertexIDs", v5.receiver, v5.super_class}];
  [coderCopy encodeInt32:self->_instanceID forKey:@"InstanceID"];
  [coderCopy encodeInt32:self->_amplificationID forKey:@"AmplificationID"];
}

@end