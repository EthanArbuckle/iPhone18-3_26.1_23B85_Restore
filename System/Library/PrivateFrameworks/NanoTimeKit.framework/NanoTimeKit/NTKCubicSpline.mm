@interface NTKCubicSpline
- (NTKCubicSpline)initWithNumberOfControlPoints:(int)a3 isClosed:(BOOL)a4;
- (float32x2_t)interpolateAt:(double)a3 derivative:(double)a4;
- (void)_processClosedSpline;
- (void)_processOpenSpline;
- (void)_processSpline;
- (void)dealloc;
- (void)interpolateWithSteps:(int)a3 interpolation:(id)a4;
- (void)process;
@end

@implementation NTKCubicSpline

- (NTKCubicSpline)initWithNumberOfControlPoints:(int)a3 isClosed:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v12.receiver = self;
  v12.super_class = NTKCubicSpline;
  v6 = [(NTKCubicSpline *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_length = v5;
    v6->_startIndex = -1;
    v6->_processedPoints = NTKSplineVector_new(v5);
    v7->_controlPoints = NTKSplineVector_new(v5);
    v7->_workspace = NTKSplineVector_new(v5);
    v7->_closed = v4;
    v8 = +[NTKCubicSplineMatrixCache sharedInstance];
    v9 = v8;
    if (v4)
    {
      v10 = [v8 closedSplineMatrixWithDimension:v5];
    }

    else
    {
      v10 = [v8 openSplineMatrixWithDimension:v5];
    }

    v7->_splineMatrix = v10;
  }

  return v7;
}

- (void)dealloc
{
  NTKSplineVector_destroy(&self->_processedPoints->var0);
  NTKSplineVector_destroy(&self->_controlPoints->var0);
  NTKSplineVector_destroy(&self->_workspace->var0);
  v3.receiver = self;
  v3.super_class = NTKCubicSpline;
  [(NTKCubicSpline *)&v3 dealloc];
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
  [(NTKCubicSpline *)self _processSpline];
}

- (void)_processOpenSpline
{
  controlPoints = self->_controlPoints;
  v3 = *(controlPoints + 2);
  __asm { FMOV            V1.2S, #3.0 }

  *self->_workspace->var0 = vmul_f32(vsub_f32((*controlPoints)[1], **controlPoints), _D1);
  *&self->_workspace->var0[2 * v3 - 2] = vmul_f32(vsub_f32(*&self->_controlPoints->var0[2 * v3 - 2], *&self->_controlPoints->var0[2 * v3 - 4]), _D1);
  [(NTKCubicSpline *)self _processSpline];
}

- (void)process
{
  if (self->_closed)
  {
    [(NTKCubicSpline *)self _processClosedSpline];
  }

  else
  {
    [(NTKCubicSpline *)self _processOpenSpline];
  }

  NTKSplineVector_zero(self->_processedPoints);
  NTKSplineMatrix_times_NTKSplineVector_float(self->_splineMatrix, &self->_workspace->var0, &self->_processedPoints->var0);
  self->_startIndex = -1;
}

- (float32x2_t)interpolateAt:(double)a3 derivative:(double)a4
{
  v9 = a2;
  *&a3 = a2 - a2;
  if (*(a1 + 48) == a2)
  {
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    *&a7 = *&a3 * *&a3;
    v13 = *(a1 + 72);
    v12 = *(a1 + 80);
    v14 = vdup_lane_s32(*&a3, 0);
    if (a9)
    {
      __asm { FMOV            V7.2S, #3.0 }

      v20 = vmul_f32(v12, _D7);
      v21 = vdup_lane_s32(*&a7, 0);
      *a9 = vmla_n_f32(vmla_n_f32(v11, vadd_f32(v13, v13), *&a3), v20, *&a7);
    }

    else
    {
      v21 = vdup_lane_s32(*&a7, 0);
    }

    return vmla_n_f32(vmla_f32(vmla_f32(v10, v11, v14), v13, v21), v12, *&a3 * *&a7);
  }

  else
  {
    *(a1 + 48) = v9;
    v22 = *(a1 + 16);
    v23 = *(v22 + 2);
    v24 = *v22;
    v25 = **(a1 + 8);
    v26 = *(v24 + 8 * v9);
    *(a1 + 56) = v26;
    v27 = *(v25 + 8 * v9);
    v28 = (v9 + 1) % v23;
    *(a1 + 64) = v27;
    v29 = vsub_f32(*(v24 + 8 * v28), *(v24 + 8 * v9));
    v33.i32[1] = -1073741824;
    __asm { FMOV            V7.2S, #3.0 }

    v31 = vsub_f32(vmla_f32(vmul_f32(v27, 0xC0000000C0000000), _D7, v29), *(v25 + 8 * v28));
    *(a1 + 72) = v31;
    v32 = vadd_f32(vmla_f32(*(v25 + 8 * v9), 0xC0000000C0000000, v29), *(v25 + 8 * v28));
    *(a1 + 80) = v32;
    *v33.i32 = *&a3 * *&a3;
    v34 = vdup_lane_s32(*&a3, 0);
    if (a9)
    {
      v35 = vmul_f32(v32, _D7);
      v36 = vdup_lane_s32(v33, 0);
      *a9 = vmla_n_f32(vmla_n_f32(v27, vadd_f32(v31, v31), *&a3), v35, *v33.i32);
    }

    else
    {
      v36 = vdup_lane_s32(v33, 0);
    }

    return vmla_n_f32(vmla_f32(vmla_f32(v26, v27, v34), v31, v36), v32, *&a3 * *v33.i32);
  }
}

- (void)interpolateWithSteps:(int)a3 interpolation:(id)a4
{
  v6 = a4;
  if ((a3 & 0x80000000) == 0)
  {
    v7 = 0;
    v8 = (self->_length - !self->_closed) / a3;
    v9 = a3 + 1;
    do
    {
      v10 = fmod((v8 * v7), self->_length);
      *&v10 = v10;
      v11 = 0;
      [(NTKCubicSpline *)self interpolateAt:&v11 derivative:v10];
      v6[2](v6, v7);
      v7 = (v7 + 1);
    }

    while (v9 != v7);
  }
}

@end