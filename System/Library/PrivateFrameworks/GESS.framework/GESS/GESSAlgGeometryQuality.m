@interface GESSAlgGeometryQuality
- (GESSMathAABB)AABB;
- (id).cxx_construct;
- (void)setAABB:(id)a3;
- (void)setQualityImpl:(const void *)a3;
@end

@implementation GESSAlgGeometryQuality

- (void)setQualityImpl:(const void *)a3
{
  v3 = *a3;
  self->_qualityImpl.faceAngleSD = *(a3 + 4);
  *&self->_qualityImpl.avgEdgeLength = v3;
  *self[1]._anon_8 = *(a3 + 2);
  *&self[1]._qualityImpl.vertexValenceDeviation = *(a3 + 3);
}

- (GESSMathAABB)AABB
{
  v3 = objc_alloc_init(GESSMathAABB);
  objc_msgSend_setBoxImpl_(v3, v4, self[1]._anon_8, v5);

  return v3;
}

- (void)setAABB:(id)a3
{
  v5 = objc_msgSend_boxImpl(a3, a2, a3, v3);
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