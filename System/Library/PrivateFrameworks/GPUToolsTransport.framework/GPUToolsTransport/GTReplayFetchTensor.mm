@interface GTReplayFetchTensor
- (GTReplayFetchTensor)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplayFetchTensor

- (GTReplayFetchTensor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = GTReplayFetchTensor;
  v5 = [(GTReplayRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_dispatchUID.uid = GTDispatchUIDDecode(coderCopy, @"dispatchUID");
    v5->_streamRef = [coderCopy decodeInt64ForKey:@"streamRef"];
    GTMTLTensorSliceDecode(coderCopy, @"slice", v8);
    memcpy(&v5->_slice, v8, sizeof(v5->_slice));
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = GTReplayFetchTensor;
  coderCopy = coder;
  [(GTReplayRequest *)&v6 encodeWithCoder:coderCopy];
  GTDispatchUIDEncode(coderCopy, self->_dispatchUID.uid, @"dispatchUID");
  [coderCopy encodeInt64:self->_streamRef forKey:@"streamRef"];
  memcpy(v5, &self->_slice, sizeof(v5));
  GTMTLTensorSliceEncode(coderCopy, v5, @"slice");
}

@end