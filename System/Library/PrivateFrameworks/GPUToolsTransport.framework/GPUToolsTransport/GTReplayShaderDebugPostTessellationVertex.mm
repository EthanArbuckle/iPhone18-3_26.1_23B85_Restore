@interface GTReplayShaderDebugPostTessellationVertex
- (GTReplayShaderDebugPostTessellationVertex)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTReplayShaderDebugPostTessellationVertex

- (GTReplayShaderDebugPostTessellationVertex)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GTReplayShaderDebugPostTessellationVertex;
  v5 = [(GTReplayShaderDebugRequest *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"PatchIDs"];
    patchIDs = v5->_patchIDs;
    v5->_patchIDs = v6;

    v5->_instanceID = [v4 decodeInt32ForKey:@"InstanceID"];
    v5->_amplificationID = [v4 decodeInt32ForKey:@"AmplificationID"];
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GTReplayShaderDebugPostTessellationVertex;
  v4 = a3;
  [(GTReplayShaderDebugRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_patchIDs forKey:{@"PatchIDs", v5.receiver, v5.super_class}];
  [v4 encodeInt32:self->_instanceID forKey:@"InstanceID"];
  [v4 encodeInt32:self->_amplificationID forKey:@"AmplificationID"];
}

@end