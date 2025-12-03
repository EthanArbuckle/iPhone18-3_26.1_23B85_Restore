@interface GTReplayShaderDebugRequest
- (GTReplayShaderDebugRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplayShaderDebugRequest

- (GTReplayShaderDebugRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = GTReplayShaderDebugRequest;
  v5 = [(GTReplayRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_dispatchUID.uid = GTDispatchUIDDecode(coderCopy, @"dispatchUID");
    v5->_programDataVersion = [coderCopy decodeInt64ForKey:@"ProgramDataVersion"];
    decodeDataObject = [coderCopy decodeDataObject];
    programData = v5->_programData;
    v5->_programData = decodeDataObject;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GTReplayShaderDebugRequest;
  coderCopy = coder;
  [(GTReplayRequest *)&v5 encodeWithCoder:coderCopy];
  GTDispatchUIDEncode(coderCopy, self->_dispatchUID.uid, @"dispatchUID");
  [coderCopy encodeInt64:self->_programDataVersion forKey:{@"ProgramDataVersion", v5.receiver, v5.super_class}];
  [coderCopy encodeDataObject:self->_programData];
}

@end