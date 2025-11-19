@interface GTReplayFetchPostVertex
- (GTReplayFetchPostVertex)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setObjectShaderThreadgroupBeginBounds:(GTPoint3D *)a3;
- (void)setObjectShaderThreadgroupEndBounds:(GTPoint3D *)a3;
@end

@implementation GTReplayFetchPostVertex

- (GTReplayFetchPostVertex)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GTReplayFetchPostVertex;
  v5 = [(GTReplayRequest *)&v10 initWithCoder:v4];
  if (v5)
  {
    v5[16] = [v4 decodeBoolForKey:@"objectShaderThreadgroupBoundsPresent"];
    GTPoint3DDecode(v4, @"objectShaderThreadgroupBeginBounds", &v8);
    *(v5 + 2) = v8;
    *(v5 + 6) = v9;
    GTPoint3DDecode(v4, @"objectShaderThreadgroupEndBounds", &v8);
    *(v5 + 56) = v8;
    *(v5 + 9) = v9;
    *(v5 + 3) = GTDispatchUIDDecode(v4, @"dispatchUID");
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = GTReplayFetchPostVertex;
  v4 = a3;
  [(GTReplayRequest *)&v6 encodeWithCoder:v4];
  [v4 encodeBool:self->_objectShaderThreadgroupBoundsPresent forKey:@"objectShaderThreadgroupBoundsPresent"];
  objectShaderThreadgroupBeginBounds = self->_objectShaderThreadgroupBeginBounds;
  GTPoint3DEncode(v4, &objectShaderThreadgroupBeginBounds, @"objectShaderThreadgroupBeginBounds");
  objectShaderThreadgroupBeginBounds = self->_objectShaderThreadgroupEndBounds;
  GTPoint3DEncode(v4, &objectShaderThreadgroupBeginBounds, @"objectShaderThreadgroupEndBounds");
  GTDispatchUIDEncode(v4, self->_dispatchUID.uid, @"dispatchUID");
}

- (void)setObjectShaderThreadgroupBeginBounds:(GTPoint3D *)a3
{
  z = a3->z;
  *&self->_objectShaderThreadgroupBeginBounds.x = *&a3->x;
  self->_objectShaderThreadgroupBeginBounds.z = z;
}

- (void)setObjectShaderThreadgroupEndBounds:(GTPoint3D *)a3
{
  z = a3->z;
  *&self->_objectShaderThreadgroupEndBounds.x = *&a3->x;
  self->_objectShaderThreadgroupEndBounds.z = z;
}

@end