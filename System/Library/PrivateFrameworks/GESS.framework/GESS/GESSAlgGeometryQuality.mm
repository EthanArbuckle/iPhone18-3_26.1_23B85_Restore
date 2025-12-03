@interface GESSAlgGeometryQuality
- (GESSMathAABB)AABB;
- (id).cxx_construct;
- (void)setAABB:(id)b;
- (void)setQualityImpl:(const void *)impl;
@end

@implementation GESSAlgGeometryQuality

- (void)setQualityImpl:(const void *)impl
{
  v3 = *impl;
  self->_qualityImpl.faceAngleSD = *(impl + 4);
  *&self->_qualityImpl.avgEdgeLength = v3;
  *self[1]._anon_8 = *(impl + 2);
  *&self[1]._qualityImpl.vertexValenceDeviation = *(impl + 3);
}

- (GESSMathAABB)AABB
{
  v3 = objc_alloc_init(GESSMathAABB);
  objc_msgSend_setBoxImpl_(v3, v4, self[1]._anon_8, v5);

  return v3;
}

- (void)setAABB:(id)b
{
  v5 = objc_msgSend_boxImpl(b, a2, b, v3);
  *self[1]._anon_8 = *v5;
  *&self[1]._qualityImpl.vertexValenceDeviation = v5[1];
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 8) = 0;
  v2.i64[0] = 0x80000000800000;
  v2.i64[1] = 0x80000000800000;
  *(self + 3) = vnegq_f32(v2);
  *(self + 4) = v2;
  return self;
}

@end