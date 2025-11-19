@interface GTReplayShaderDebugRequest
- (GTReplayShaderDebugRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTReplayShaderDebugRequest

- (GTReplayShaderDebugRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GTReplayShaderDebugRequest;
  v5 = [(GTReplayRequest *)&v10 initWithCoder:v4];
  if (v5)
  {
    v5->_dispatchUID.uid = GTDispatchUIDDecode(v4, @"dispatchUID");
    v5->_programDataVersion = [v4 decodeInt64ForKey:@"ProgramDataVersion"];
    v6 = [v4 decodeDataObject];
    programData = v5->_programData;
    v5->_programData = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GTReplayShaderDebugRequest;
  v4 = a3;
  [(GTReplayRequest *)&v5 encodeWithCoder:v4];
  GTDispatchUIDEncode(v4, self->_dispatchUID.uid, @"dispatchUID");
  [v4 encodeInt64:self->_programDataVersion forKey:{@"ProgramDataVersion", v5.receiver, v5.super_class}];
  [v4 encodeDataObject:self->_programData];
}

@end