@interface GTReplayShaderDebugPostTessellationVertex
- (GTReplayShaderDebugPostTessellationVertex)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplayShaderDebugPostTessellationVertex

- (GTReplayShaderDebugPostTessellationVertex)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = GTReplayShaderDebugPostTessellationVertex;
  v5 = [(GTReplayShaderDebugRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"PatchIDs"];
    patchIDs = v5->_patchIDs;
    v5->_patchIDs = v6;

    v5->_instanceID = [coderCopy decodeInt32ForKey:@"InstanceID"];
    v5->_amplificationID = [coderCopy decodeInt32ForKey:@"AmplificationID"];
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GTReplayShaderDebugPostTessellationVertex;
  coderCopy = coder;
  [(GTReplayShaderDebugRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_patchIDs forKey:{@"PatchIDs", v5.receiver, v5.super_class}];
  [coderCopy encodeInt32:self->_instanceID forKey:@"InstanceID"];
  [coderCopy encodeInt32:self->_amplificationID forKey:@"AmplificationID"];
}

@end