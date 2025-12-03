@interface GTReplayFetchBuffer
- (GTRange)range;
- (GTReplayFetchBuffer)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplayFetchBuffer

- (GTReplayFetchBuffer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = GTReplayFetchBuffer;
  v5 = [(GTReplayRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_streamRef = [coderCopy decodeInt64ForKey:@"streamRef"];
    v5->_range.location = [coderCopy decodeInt64ForKey:@"range.location"];
    v5->_range.length = [coderCopy decodeInt64ForKey:@"range.length"];
    v5->_dispatchUID.uid = GTDispatchUIDDecode(coderCopy, @"dispatchUID");
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GTReplayFetchBuffer;
  coderCopy = coder;
  [(GTReplayRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_streamRef forKey:{@"streamRef", v5.receiver, v5.super_class}];
  [coderCopy encodeInt64:self->_range.location forKey:@"range.location"];
  [coderCopy encodeInt64:self->_range.length forKey:@"range.length"];
  GTDispatchUIDEncode(coderCopy, self->_dispatchUID.uid, @"dispatchUID");
}

- (GTRange)range
{
  p_range = &self->_range;
  location = self->_range.location;
  length = p_range->length;
  result.length = length;
  result.location = location;
  return result;
}

@end