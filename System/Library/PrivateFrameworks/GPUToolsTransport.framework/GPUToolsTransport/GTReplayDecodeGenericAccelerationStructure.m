@interface GTReplayDecodeGenericAccelerationStructure
- (GTReplayDecodeGenericAccelerationStructure)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTReplayDecodeGenericAccelerationStructure

- (GTReplayDecodeGenericAccelerationStructure)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = GTReplayDecodeGenericAccelerationStructure;
  v5 = [(GTReplayRequest *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_streamRef = [v4 decodeInt64ForKey:@"streamRef"];
    v5->_dispatchUID.uid = GTDispatchUIDDecode(v4, @"dispatchUID");
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GTReplayDecodeGenericAccelerationStructure;
  v4 = a3;
  [(GTReplayRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_streamRef forKey:{@"streamRef", v5.receiver, v5.super_class}];
  GTDispatchUIDEncode(v4, self->_dispatchUID.uid, @"dispatchUID");
}

@end