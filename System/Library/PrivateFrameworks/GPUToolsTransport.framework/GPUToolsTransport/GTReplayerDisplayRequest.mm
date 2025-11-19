@interface GTReplayerDisplayRequest
- (GTReplayerDisplayRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTReplayerDisplayRequest

- (GTReplayerDisplayRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GTReplayerDisplayRequest;
  v5 = [(GTReplayRequest *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_streamRef = [v4 decodeInt64ForKey:@"streamRef"];
    v5->_index = [v4 decodeInt32ForKey:@"index"];
    v5->_filters = [v4 decodeInt32ForKey:@"filters"];
    v5->_dispatchUID.uid = GTDispatchUIDDecode(v4, @"dispatchUID");
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GTReplayerDisplayRequest;
  v4 = a3;
  [(GTReplayRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_streamRef forKey:{@"streamRef", v5.receiver, v5.super_class}];
  [v4 encodeInt32:self->_index forKey:@"index"];
  [v4 encodeInt32:self->_filters forKey:@"filters"];
  GTDispatchUIDEncode(v4, self->_dispatchUID.uid, @"dispatchUID");
}

@end