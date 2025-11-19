@interface GESSMathAABB
- (id).cxx_construct;
@end

@implementation GESSMathAABB

- (id).cxx_construct
{
  v2.i64[0] = 0x80000000800000;
  v2.i64[1] = 0x80000000800000;
  *(self + 1) = vnegq_f32(v2);
  *(self + 2) = v2;
  return self;
}

@end