@interface SGCubicSpline
- (float32x2_t)interpolateAt:(double)at derivative:(double)derivative;
- (void)_processClosedSpline;
- (void)_processOpenSpline;
- (void)_processSpline;
- (void)dealloc;
- (void)interpolateWithSteps:(int)steps interpolation:(id)interpolation;
- (void)process;
@end

@implementation SGCubicSpline

- (void)dealloc
{
  SGSplineVector_destroy(&self->_processedPoints->var0);
  SGSplineVector_destroy(&self->_controlPoints->var0);
  SGSplineVector_destroy(&self->_workspace->var0);
  v3.receiver = self;
  v3.super_class = SGCubicSpline;
  [(SGCubicSpline *)&v3 dealloc];
}

- (void)_processSpline
{
  controlPoints = self->_controlPoints;
  workspace = self->_workspace;
  v4 = *(controlPoints + 2);
  __C = 3.0;
  vDSP_vsbsm(*controlPoints + 4, 1, *controlPoints, 1, &__C, workspace->var0 + 2, 1, 2 * v4 - 4);
}

- (void)_processClosedSpline
{
  controlPoints = self->_controlPoints;
  var0_low = SLODWORD(controlPoints[1].var0);
  v4 = 8 * var0_low - 8;
  __asm { FMOV            V1.2S, #3.0 }

  *self->_workspace->var0 = vmul_f32(vsub_f32(*(controlPoints->var0 + 2), *(controlPoints->var0 + v4)), _D1);
  *(self->_workspace->var0 + v4) = vmul_f32(vsub_f32(*self->_controlPoints->var0, *&self->_controlPoints->var0[2 * var0_low - 4]), _D1);
  [(SGCubicSpline *)self _processSpline];
}

- (void)_processOpenSpline
{
  controlPoints = self->_controlPoints;
  v3 = *(controlPoints + 2);
  __asm { FMOV            V1.2S, #3.0 }

  *self->_workspace->var0 = vmul_f32(vsub_f32((*controlPoints)[1], **controlPoints), _D1);
  *&self->_workspace->var0[2 * v3 - 2] = vmul_f32(vsub_f32(*&self->_controlPoints->var0[2 * v3 - 2], *&self->_controlPoints->var0[2 * v3 - 4]), _D1);
  [(SGCubicSpline *)self _processSpline];
}

- (void)process
{
  if (self->_closed)
  {
    [(SGCubicSpline *)self _processClosedSpline];
  }

  else
  {
    [(SGCubicSpline *)self _processOpenSpline];
  }

  SGSplineVector_zero(self->_processedPoints);
  SGSplineMatrix_times_SGSplineVector_float(self->_splineMatrix, &self->_workspace->var0, &self->_processedPoints->var0);
  self->_startIndex = -1;
}

- (float32x2_t)interpolateAt:(double)at derivative:(double)derivative
{
  v9 = a2;
  *&at = a2 - a2;
  if (*(self + 48) == a2)
  {
    v10 = *(self + 56);
    v11 = *(self + 64);
    *&a7 = *&at * *&at;
    v13 = *(self + 72);
    v12 = *(self + 80);
    v14 = vdup_lane_s32(*&at, 0);
    if (a9)
    {
      __asm { FMOV            V7.2S, #3.0 }

      v20 = vmul_f32(v12, _D7);
      v21 = vdup_lane_s32(*&a7, 0);
      *a9 = vmla_n_f32(vmla_n_f32(v11, vadd_f32(v13, v13), *&at), v20, *&a7);
    }

    else
    {
      v21 = vdup_lane_s32(*&a7, 0);
    }

    return vmla_n_f32(vmla_f32(vmla_f32(v10, v11, v14), v13, v21), v12, *&at * *&a7);
  }

  else
  {
    *(self + 48) = v9;
    v22 = *(self + 16);
    v23 = *(v22 + 2);
    v24 = *v22;
    v25 = **(self + 8);
    v26 = *(v24 + 8 * v9);
    *(self + 56) = v26;
    v27 = *(v25 + 8 * v9);
    v28 = (v9 + 1) % v23;
    *(self + 64) = v27;
    v29 = vsub_f32(*(v24 + 8 * v28), *(v24 + 8 * v9));
    v33.i32[1] = -1073741824;
    __asm { FMOV            V7.2S, #3.0 }

    v31 = vsub_f32(vmla_f32(vmul_f32(v27, 0xC0000000C0000000), _D7, v29), *(v25 + 8 * v28));
    *(self + 72) = v31;
    v32 = vadd_f32(vmla_f32(*(v25 + 8 * v9), 0xC0000000C0000000, v29), *(v25 + 8 * v28));
    *(self + 80) = v32;
    *v33.i32 = *&at * *&at;
    v34 = vdup_lane_s32(*&at, 0);
    if (a9)
    {
      v35 = vmul_f32(v32, _D7);
      v36 = vdup_lane_s32(v33, 0);
      *a9 = vmla_n_f32(vmla_n_f32(v27, vadd_f32(v31, v31), *&at), v35, *v33.i32);
    }

    else
    {
      v36 = vdup_lane_s32(v33, 0);
    }

    return vmla_n_f32(vmla_f32(vmla_f32(v26, v27, v34), v31, v36), v32, *&at * *v33.i32);
  }
}

- (void)interpolateWithSteps:(int)steps interpolation:(id)interpolation
{
  interpolationCopy = interpolation;
  if ((steps & 0x80000000) == 0)
  {
    v7 = 0;
    v8 = (self->_length - !self->_closed) / steps;
    v9 = steps + 1;
    do
    {
      v10 = fmod((v8 * v7), self->_length);
      *&v10 = v10;
      v11 = 0;
      [(SGCubicSpline *)self interpolateAt:&v11 derivative:v10];
      interpolationCopy[2](interpolationCopy, v7);
      v7 = (v7 + 1);
    }

    while (v9 != v7);
  }
}

@end