@interface GTReplayDecodeAB
- (GTReplayDecodeAB)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplayDecodeAB

- (GTReplayDecodeAB)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = GTReplayDecodeAB;
  v5 = [(GTReplayRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_type = [coderCopy decodeInt32ForKey:@"type"];
    v5->_index = [coderCopy decodeInt32ForKey:@"index"];
    v5->_dispatchUID.uid = GTDispatchUIDDecode(coderCopy, @"dispatchUID");
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GTReplayDecodeAB;
  coderCopy = coder;
  [(GTReplayRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
  [coderCopy encodeInt32:self->_index forKey:@"index"];
  GTDispatchUIDEncode(coderCopy, self->_dispatchUID.uid, @"dispatchUID");
}

@end