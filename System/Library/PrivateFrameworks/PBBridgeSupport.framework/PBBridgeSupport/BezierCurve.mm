@interface BezierCurve
- (BezierCurve)initWithDictionary:(id)a3;
- (double)derivativeAt:(float32x4_t *)a1;
- (double)pointAt:(float32x4_t *)a1;
- (void)scaleBy:(BezierCurve *)self;
@end

@implementation BezierCurve

- (BezierCurve)initWithDictionary:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = BezierCurve;
  v5 = [(BezierCurve *)&v43 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"p0"];
    v7 = [v4 objectForKeyedSubscript:@"p1"];
    v8 = [v4 objectForKeyedSubscript:@"p2"];
    v9 = [v4 objectForKeyedSubscript:@"p3"];
    v10 = [v6 objectAtIndexedSubscript:0];
    [v10 floatValue];
    *v5->_p0 = v11;

    v12 = [v6 objectAtIndexedSubscript:1];
    [v12 floatValue];
    *&v5->_p0[4] = v13;

    v14 = [v6 objectAtIndexedSubscript:2];
    [v14 floatValue];
    *&v5->_p0[8] = v15;

    v16 = [v6 objectAtIndexedSubscript:3];
    [v16 floatValue];
    *&v5->_p0[12] = v17;

    v18 = [v7 objectAtIndexedSubscript:0];
    [v18 floatValue];
    *v5->_p1 = v19;

    v20 = [v7 objectAtIndexedSubscript:1];
    [v20 floatValue];
    *&v5->_p1[4] = v21;

    v22 = [v7 objectAtIndexedSubscript:2];
    [v22 floatValue];
    *&v5->_p1[8] = v23;

    v24 = [v7 objectAtIndexedSubscript:3];
    [v24 floatValue];
    *&v5->_p1[12] = v25;

    v26 = [v8 objectAtIndexedSubscript:0];
    [v26 floatValue];
    *v5->_p2 = v27;

    v28 = [v8 objectAtIndexedSubscript:1];
    [v28 floatValue];
    *&v5->_p2[4] = v29;

    v30 = [v8 objectAtIndexedSubscript:2];
    [v30 floatValue];
    *&v5->_p2[8] = v31;

    v32 = [v8 objectAtIndexedSubscript:3];
    [v32 floatValue];
    *&v5->_p2[12] = v33;

    v34 = [v9 objectAtIndexedSubscript:0];
    [v34 floatValue];
    *v5->_p3 = v35;

    v36 = [v9 objectAtIndexedSubscript:1];
    [v36 floatValue];
    *&v5->_p3[4] = v37;

    v38 = [v9 objectAtIndexedSubscript:2];
    [v38 floatValue];
    *&v5->_p3[8] = v39;

    v40 = [v9 objectAtIndexedSubscript:3];
    [v40 floatValue];
    *&v5->_p3[12] = v41;
  }

  return v5;
}

- (double)pointAt:(float32x4_t *)a1
{
  __asm { FMOV            V3.4S, #3.0 }

  *&result = vaddq_f32(vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(a1[4], a2), a2), a2), vaddq_f32(vaddq_f32(vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(a1[1], 1.0 - a2), 1.0 - a2), 1.0 - a2), vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(vmulq_f32(a1[2], _Q3), a2), 1.0 - a2), 1.0 - a2)), vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(vmulq_f32(a1[3], _Q3), a2), a2), 1.0 - a2))).u64[0];
  return result;
}

- (double)derivativeAt:(float32x4_t *)a1
{
  __asm
  {
    FMOV            V2.4S, #3.0
    FMOV            V6.4S, #6.0
  }

  *&result = vaddq_f32(vmulq_n_f32(vmulq_n_f32(vmulq_f32(a1[4], _Q2), a2), a2), vsubq_f32(vaddq_f32(vmulq_n_f32(vmulq_n_f32(vmulq_f32(a1[3], _Q6), 1.0 - a2), a2), vsubq_f32(vsubq_f32(vmulq_n_f32(vmulq_n_f32(vmulq_f32(a1[2], _Q2), 1.0 - a2), 1.0 - a2), vmulq_n_f32(vmulq_n_f32(vmulq_f32(a1[1], _Q2), 1.0 - a2), 1.0 - a2)), vmulq_n_f32(vmulq_n_f32(vmulq_f32(a1[2], _Q6), 1.0 - a2), a2))), vmulq_n_f32(vmulq_n_f32(vmulq_f32(a1[3], _Q2), a2), a2))).u64[0];
  return result;
}

- (void)scaleBy:(BezierCurve *)self
{
  v3 = vmulq_f32(*self->_p1, v2);
  *self->_p0 = vmulq_f32(*self->_p0, v2);
  *self->_p1 = v3;
  v4 = vmulq_f32(*self->_p2, v2);
  v5 = vmulq_f32(*self->_p3, v2);
  *self->_p2 = v4;
  *self->_p3 = v5;
}

@end