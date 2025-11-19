@interface HMIMotionVector
- (CGPoint)midpoint;
- (CGPoint)origin;
- (CGPoint)target;
- (CGRect)boundingBox;
- (CGVector)motion;
- (HMIMotionVector)initWithOrigin:(CGPoint)a3 motion:(CGVector)a4;
@end

@implementation HMIMotionVector

- (HMIMotionVector)initWithOrigin:(CGPoint)a3 motion:(CGVector)a4
{
  dy = a4.dy;
  dx = a4.dx;
  y = a3.y;
  x = a3.x;
  v12.receiver = self;
  v12.super_class = HMIMotionVector;
  v8 = [(HMIMotionVector *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_origin.x = x;
    v8->_origin.y = y;
    v8->_motion.dx = dx;
    v8->_motion.dy = dy;
    eventClass = v8->_eventClass;
    v8->_eventClass = 0;
  }

  return v9;
}

- (CGPoint)target
{
  v2 = vaddq_f64(self->_origin, self->_motion);
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (CGPoint)midpoint
{
  __asm { FMOV            V2.2D, #0.5 }

  v7 = vaddq_f64(self->_origin, vmulq_f64(self->_motion, _Q2));
  v8 = v7.f64[1];
  result.x = v7.f64[0];
  result.y = v8;
  return result;
}

- (CGRect)boundingBox
{
  x = self->_origin.x;
  y = self->_origin.y;
  [(HMIMotionVector *)self target];
  v5 = v4 - x;
  v7 = v6 - y;
  v8 = x;
  v9 = y;

  return CGRectStandardize(*&v8);
}

- (CGPoint)origin
{
  objc_copyStruct(v4, &self->_origin, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGVector)motion
{
  objc_copyStruct(v4, &self->_motion, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.dy = v3;
  result.dx = v2;
  return result;
}

@end