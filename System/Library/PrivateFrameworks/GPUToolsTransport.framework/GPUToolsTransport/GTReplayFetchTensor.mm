@interface GTReplayFetchTensor
- (GTReplayFetchTensor)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTReplayFetchTensor

- (GTReplayFetchTensor)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GTReplayFetchTensor;
  v5 = [(GTReplayRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_dispatchUID.uid = GTDispatchUIDDecode(v4, @"dispatchUID");
    v5->_streamRef = [v4 decodeInt64ForKey:@"streamRef"];
    GTMTLTensorSliceDecode(v4, @"slice", v8);
    memcpy(&v5->_slice, v8, sizeof(v5->_slice));
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = GTReplayFetchTensor;
  v4 = a3;
  [(GTReplayRequest *)&v6 encodeWithCoder:v4];
  GTDispatchUIDEncode(v4, self->_dispatchUID.uid, @"dispatchUID");
  [v4 encodeInt64:self->_streamRef forKey:@"streamRef"];
  memcpy(v5, &self->_slice, sizeof(v5));
  GTMTLTensorSliceEncode(v4, v5, @"slice");
}

@end