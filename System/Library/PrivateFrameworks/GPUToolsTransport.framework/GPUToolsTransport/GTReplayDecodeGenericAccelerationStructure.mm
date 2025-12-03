@interface GTReplayDecodeGenericAccelerationStructure
- (GTReplayDecodeGenericAccelerationStructure)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplayDecodeGenericAccelerationStructure

- (GTReplayDecodeGenericAccelerationStructure)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = GTReplayDecodeGenericAccelerationStructure;
  v5 = [(GTReplayRequest *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_streamRef = [coderCopy decodeInt64ForKey:@"streamRef"];
    v5->_dispatchUID.uid = GTDispatchUIDDecode(coderCopy, @"dispatchUID");
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GTReplayDecodeGenericAccelerationStructure;
  coderCopy = coder;
  [(GTReplayRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_streamRef forKey:{@"streamRef", v5.receiver, v5.super_class}];
  GTDispatchUIDEncode(coderCopy, self->_dispatchUID.uid, @"dispatchUID");
}

@end