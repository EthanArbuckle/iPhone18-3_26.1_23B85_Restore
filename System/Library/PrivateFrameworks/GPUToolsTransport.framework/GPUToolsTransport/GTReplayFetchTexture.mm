@interface GTReplayFetchTexture
- (GTRegion)region;
- (GTReplayFetchTexture)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setRegion:(GTRegion *)region;
- (void)setSize:(GTSize *)size;
@end

@implementation GTReplayFetchTexture

- (GTReplayFetchTexture)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = GTReplayFetchTexture;
  v5 = [(GTReplayRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_streamRef = [coderCopy decodeInt64ForKey:@"streamRef"];
    v5->_plane = [coderCopy decodeInt32ForKey:@"plane"];
    v5->_slice = [coderCopy decodeInt32ForKey:@"slice"];
    v5->_level = [coderCopy decodeInt32ForKey:@"level"];
    v5->_depth = [coderCopy decodeInt32ForKey:@"depth"];
    v5->_size.width = [coderCopy decodeInt64ForKey:@"size.width"];
    v5->_size.height = [coderCopy decodeInt64ForKey:@"size.height"];
    v5->_size.depth = [coderCopy decodeInt64ForKey:@"size.depth"];
    v5->_dispatchUID.uid = GTDispatchUIDDecode(coderCopy, @"dispatchUID");
    v5->_resolveMultisampleTexture = [coderCopy decodeBoolForKey:@"resolveMultisampleTexture"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GTReplayFetchTexture;
  coderCopy = coder;
  [(GTReplayRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_streamRef forKey:{@"streamRef", v5.receiver, v5.super_class}];
  [coderCopy encodeInt32:self->_plane forKey:@"plane"];
  [coderCopy encodeInt32:self->_slice forKey:@"slice"];
  [coderCopy encodeInt32:self->_level forKey:@"level"];
  [coderCopy encodeInt32:self->_depth forKey:@"depth"];
  [coderCopy encodeInt64:self->_size.width forKey:@"size.width"];
  [coderCopy encodeInt64:self->_size.height forKey:@"size.height"];
  [coderCopy encodeInt64:self->_size.depth forKey:@"size.depth"];
  [coderCopy encodeBool:self->_resolveMultisampleTexture forKey:@"resolveMultisampleTexture"];
  GTDispatchUIDEncode(coderCopy, self->_dispatchUID.uid, @"dispatchUID");
}

- (void)setSize:(GTSize *)size
{
  depth = size->depth;
  *&self->_size.width = *&size->width;
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

- (void)setRegion:(GTRegion *)region
{
  v4 = *&region->origin.z;
  v3 = *&region->size.height;
  *&self->_region.origin.x = *&region->origin.x;
  *&self->_region.origin.z = v4;
  *&self->_region.size.height = v3;
}

@end