@interface GTReplayerDisplayRequest
- (GTReplayerDisplayRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplayerDisplayRequest

- (GTReplayerDisplayRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = GTReplayerDisplayRequest;
  v5 = [(GTReplayRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_streamRef = [coderCopy decodeInt64ForKey:@"streamRef"];
    v5->_index = [coderCopy decodeInt32ForKey:@"index"];
    v5->_filters = [coderCopy decodeInt32ForKey:@"filters"];
    v5->_dispatchUID.uid = GTDispatchUIDDecode(coderCopy, @"dispatchUID");
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GTReplayerDisplayRequest;
  coderCopy = coder;
  [(GTReplayRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_streamRef forKey:{@"streamRef", v5.receiver, v5.super_class}];
  [coderCopy encodeInt32:self->_index forKey:@"index"];
  [coderCopy encodeInt32:self->_filters forKey:@"filters"];
  GTDispatchUIDEncode(coderCopy, self->_dispatchUID.uid, @"dispatchUID");
}

@end