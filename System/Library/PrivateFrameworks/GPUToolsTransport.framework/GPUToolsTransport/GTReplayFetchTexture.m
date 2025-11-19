@interface GTReplayFetchTexture
- (GTRegion)region;
- (GTReplayFetchTexture)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setRegion:(GTRegion *)a3;
- (void)setSize:(GTSize *)a3;
@end

@implementation GTReplayFetchTexture

- (GTReplayFetchTexture)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GTReplayFetchTexture;
  v5 = [(GTReplayRequest *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_streamRef = [v4 decodeInt64ForKey:@"streamRef"];
    v5->_plane = [v4 decodeInt32ForKey:@"plane"];
    v5->_slice = [v4 decodeInt32ForKey:@"slice"];
    v5->_level = [v4 decodeInt32ForKey:@"level"];
    v5->_depth = [v4 decodeInt32ForKey:@"depth"];
    v5->_size.width = [v4 decodeInt64ForKey:@"size.width"];
    v5->_size.height = [v4 decodeInt64ForKey:@"size.height"];
    v5->_size.depth = [v4 decodeInt64ForKey:@"size.depth"];
    v5->_dispatchUID.uid = GTDispatchUIDDecode(v4, @"dispatchUID");
    v5->_resolveMultisampleTexture = [v4 decodeBoolForKey:@"resolveMultisampleTexture"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GTReplayFetchTexture;
  v4 = a3;
  [(GTReplayRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_streamRef forKey:{@"streamRef", v5.receiver, v5.super_class}];
  [v4 encodeInt32:self->_plane forKey:@"plane"];
  [v4 encodeInt32:self->_slice forKey:@"slice"];
  [v4 encodeInt32:self->_level forKey:@"level"];
  [v4 encodeInt32:self->_depth forKey:@"depth"];
  [v4 encodeInt64:self->_size.width forKey:@"size.width"];
  [v4 encodeInt64:self->_size.height forKey:@"size.height"];
  [v4 encodeInt64:self->_size.depth forKey:@"size.depth"];
  [v4 encodeBool:self->_resolveMultisampleTexture forKey:@"resolveMultisampleTexture"];
  GTDispatchUIDEncode(v4, self->_dispatchUID.uid, @"dispatchUID");
}

- (void)setSize:(GTSize *)a3
{
  depth = a3->depth;
  *&self->_size.width = *&a3->width;
  self->_size.depth = depth;
}

- (GTRegion)region
{
  v3 = *&self[2].origin.x;
  *&retstr->origin.x = *&self[1].size.height;
  *&retstr->origin.z = v3;
  *&retstr->size.height = *&self[2].origin.z;
  return self;
}

- (void)setRegion:(GTRegion *)a3
{
  v4 = *&a3->origin.z;
  v3 = *&a3->size.height;
  *&self->_region.origin.x = *&a3->origin.x;
  *&self->_region.origin.z = v4;
  *&self->_region.size.height = v3;
}

@end