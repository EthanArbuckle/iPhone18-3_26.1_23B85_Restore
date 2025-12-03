@interface GTReplayFetchIntoTexture
- (GTReplayFetchIntoTexture)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplayFetchIntoTexture

- (GTReplayFetchIntoTexture)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = GTReplayFetchIntoTexture;
  v5 = [(GTReplayFetchInto *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_streamRef = [coderCopy decodeInt64ForKey:@"streamRef"];
    v5->_plane = [coderCopy decodeInt32ForKey:@"plane"];
    v5->_slice = [coderCopy decodeInt32ForKey:@"slice"];
    v5->_level = [coderCopy decodeInt32ForKey:@"level"];
    v5->_depth = [coderCopy decodeInt32ForKey:@"depth"];
    v5->_resolveMultisampleTexture = [coderCopy decodeBoolForKey:@"resolveMultisampleTexture"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GTReplayFetchIntoTexture;
  coderCopy = coder;
  [(GTReplayFetchInto *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_streamRef forKey:{@"streamRef", v5.receiver, v5.super_class}];
  [coderCopy encodeInt32:self->_plane forKey:@"plane"];
  [coderCopy encodeInt32:self->_slice forKey:@"slice"];
  [coderCopy encodeInt32:self->_level forKey:@"level"];
  [coderCopy encodeInt32:self->_depth forKey:@"depth"];
  [coderCopy encodeBool:self->_resolveMultisampleTexture forKey:@"resolveMultisampleTexture"];
}

@end