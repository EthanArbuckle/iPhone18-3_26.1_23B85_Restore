@interface GTReplayFetchPostVertex
- (GTReplayFetchPostVertex)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setObjectShaderThreadgroupBeginBounds:(GTPoint3D *)bounds;
- (void)setObjectShaderThreadgroupEndBounds:(GTPoint3D *)bounds;
@end

@implementation GTReplayFetchPostVertex

- (GTReplayFetchPostVertex)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = GTReplayFetchPostVertex;
  v5 = [(GTReplayRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v5[16] = [coderCopy decodeBoolForKey:@"objectShaderThreadgroupBoundsPresent"];
    GTPoint3DDecode(coderCopy, @"objectShaderThreadgroupBeginBounds", &v8);
    *(v5 + 2) = v8;
    *(v5 + 6) = v9;
    GTPoint3DDecode(coderCopy, @"objectShaderThreadgroupEndBounds", &v8);
    *(v5 + 56) = v8;
    *(v5 + 9) = v9;
    *(v5 + 3) = GTDispatchUIDDecode(coderCopy, @"dispatchUID");
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = GTReplayFetchPostVertex;
  coderCopy = coder;
  [(GTReplayRequest *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_objectShaderThreadgroupBoundsPresent forKey:@"objectShaderThreadgroupBoundsPresent"];
  objectShaderThreadgroupBeginBounds = self->_objectShaderThreadgroupBeginBounds;
  GTPoint3DEncode(coderCopy, &objectShaderThreadgroupBeginBounds, @"objectShaderThreadgroupBeginBounds");
  objectShaderThreadgroupBeginBounds = self->_objectShaderThreadgroupEndBounds;
  GTPoint3DEncode(coderCopy, &objectShaderThreadgroupBeginBounds, @"objectShaderThreadgroupEndBounds");
  GTDispatchUIDEncode(coderCopy, self->_dispatchUID.uid, @"dispatchUID");
}

- (void)setObjectShaderThreadgroupBeginBounds:(GTPoint3D *)bounds
{
  z = bounds->z;
  *&self->_objectShaderThreadgroupBeginBounds.x = *&bounds->x;
  self->_objectShaderThreadgroupBeginBounds.z = z;
}

- (void)setObjectShaderThreadgroupEndBounds:(GTPoint3D *)bounds
{
  z = bounds->z;
  *&self->_objectShaderThreadgroupEndBounds.x = *&bounds->x;
  self->_objectShaderThreadgroupEndBounds.z = z;
}

@end