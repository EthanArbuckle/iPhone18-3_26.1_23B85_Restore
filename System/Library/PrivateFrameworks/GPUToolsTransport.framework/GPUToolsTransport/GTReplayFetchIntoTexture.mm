@interface GTReplayFetchIntoTexture
- (GTReplayFetchIntoTexture)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTReplayFetchIntoTexture

- (GTReplayFetchIntoTexture)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GTReplayFetchIntoTexture;
  v5 = [(GTReplayFetchInto *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_streamRef = [v4 decodeInt64ForKey:@"streamRef"];
    v5->_plane = [v4 decodeInt32ForKey:@"plane"];
    v5->_slice = [v4 decodeInt32ForKey:@"slice"];
    v5->_level = [v4 decodeInt32ForKey:@"level"];
    v5->_depth = [v4 decodeInt32ForKey:@"depth"];
    v5->_resolveMultisampleTexture = [v4 decodeBoolForKey:@"resolveMultisampleTexture"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GTReplayFetchIntoTexture;
  v4 = a3;
  [(GTReplayFetchInto *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_streamRef forKey:{@"streamRef", v5.receiver, v5.super_class}];
  [v4 encodeInt32:self->_plane forKey:@"plane"];
  [v4 encodeInt32:self->_slice forKey:@"slice"];
  [v4 encodeInt32:self->_level forKey:@"level"];
  [v4 encodeInt32:self->_depth forKey:@"depth"];
  [v4 encodeBool:self->_resolveMultisampleTexture forKey:@"resolveMultisampleTexture"];
}

@end