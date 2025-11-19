@interface GTDisplayShowTextureRequest
- (GTDisplayShowTextureRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTDisplayShowTextureRequest

- (GTDisplayShowTextureRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = GTDisplayShowTextureRequest;
  v5 = [(GTDisplayRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v5->_replayServicePort = [v4 decodeInt64ForKey:@"replayServicePort"];
    v6 = v4;
    v7 = [@"dispatchUID" stringByAppendingString:@".dispatchIndex"];
    v8 = [v6 decodeInt32ForKey:v7];

    v9 = [@"dispatchUID" stringByAppendingString:@".dispatchICBIndex"];
    v10 = [v6 decodeInt32ForKey:v9];

    v5->_dispatchUID.uid = v8 | (v10 << 32);
    v5->_streamRef = [v6 decodeInt64ForKey:@"streamRef"];
    v5->_slice = [v6 decodeInt64ForKey:@"slice"];
    v5->_level = [v6 decodeInt64ForKey:@"level"];
    v5->_depth = [v6 decodeInt64ForKey:@"depth"];
    v5->_plane = [v6 decodeInt64ForKey:@"plane"];
    v5->_pixelFormat = [v6 decodeInt64ForKey:@"pixelFormat"];
    v5->_width = [v6 decodeInt64ForKey:@"width"];
    v5->_height = [v6 decodeInt64ForKey:@"height"];
    v11 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GTDisplayShowTextureRequest;
  [(GTDisplayRequest *)&v10 encodeWithCoder:v4];
  [v4 encodeInt64:self->_replayServicePort forKey:@"replayServicePort"];
  dispatchIndex = self->_dispatchUID.var0.dispatchIndex;
  dispatchICBIndex = self->_dispatchUID.var0.dispatchICBIndex;
  v7 = v4;
  v8 = [@"dispatchUID" stringByAppendingString:@".dispatchIndex"];
  [v7 encodeInt32:dispatchIndex forKey:v8];

  v9 = [@"dispatchUID" stringByAppendingString:@".dispatchICBIndex"];
  [v7 encodeInt32:dispatchICBIndex forKey:v9];

  [v7 encodeInt64:self->_streamRef forKey:@"streamRef"];
  [v7 encodeInt64:self->_slice forKey:@"slice"];
  [v7 encodeInt64:self->_level forKey:@"level"];
  [v7 encodeInt64:self->_depth forKey:@"depth"];
  [v7 encodeInt64:self->_plane forKey:@"plane"];
  [v7 encodeInt64:self->_pixelFormat forKey:@"pixelFormat"];
  [v7 encodeInt64:self->_width forKey:@"width"];
  [v7 encodeInt64:self->_height forKey:@"height"];
}

@end