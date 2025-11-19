@interface DKPointSmoothing
+ (void)_interpolateFromPoint:(float)a3 toPoint:(id)a4 withControlPoint:atUnitScale:emissionHandler:;
- (DKPointSmoothing)initWithWidth:(unint64_t)a3 spacing:(float)a4;
@end

@implementation DKPointSmoothing

- (DKPointSmoothing)initWithWidth:(unint64_t)a3 spacing:(float)a4
{
  v17.receiver = self;
  v17.super_class = DKPointSmoothing;
  v6 = [(DKPointSmoothing *)&v17 init];
  v7 = v6;
  if (v6)
  {
    v6->_width = a3;
    v6->_spacing = a4;
    v8 = [objc_alloc(MEMORY[0x277D74320]) initWithFIFO:0];
    interpolatingFIFO = v7->_interpolatingFIFO;
    v7->_interpolatingFIFO = v8;

    [(UIQuadCurvePointFIFO *)v7->_interpolatingFIFO setEmitInterpolatedPoints:1];
    v10 = objc_alloc(MEMORY[0x277D742F0]);
    *&v11 = v7->_spacing;
    v12 = [v10 initWithFIFO:v7->_interpolatingFIFO width:v7->_width spacing:v11];
    boxcarFIFO = v7->_boxcarFIFO;
    v7->_boxcarFIFO = v12;

    v14 = [objc_alloc(MEMORY[0x277D74318]) initWithFIFO:v7->_boxcarFIFO];
    strokeFIFO = v7->_strokeFIFO;
    v7->_strokeFIFO = v14;
  }

  return v7;
}

+ (void)_interpolateFromPoint:(float)a3 toPoint:(id)a4 withControlPoint:atUnitScale:emissionHandler:
{
  v7 = v6;
  v25 = v4;
  v26 = v5;
  v27 = *&a3;
  v8 = a4;
  v9 = vsub_f32(v26, v25);
  v10 = vmul_f32(v9, v9);
  v11 = vsub_f32(*&v27, v26);
  v12 = vmul_f32(v11, v11);
  v13 = vaddv_f32(vsqrt_f32(vadd_f32(vzip1_s32(v12, v10), vzip2_s32(v12, v10)))) / v7;
  v14 = vcvtps_u32_f32(v13);
  v24 = v8;
  if (!v14)
  {
    v19 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    v8 = v24;
    if (!v19)
    {
      goto LABEL_14;
    }

    *v19 = v27;
    if (!v24)
    {
      goto LABEL_13;
    }

    v23 = v24[2];
    goto LABEL_12;
  }

  if (!(v14 >> 60))
  {
    v15 = malloc_type_malloc(16 * v14, 0x1000040451B5BE8uLL);
    v17 = *&v25;
    v18 = *&v26;
    v19 = v15;
    v8 = v24;
    if (v19)
    {
      v20 = *&v27;
      if (v14 >= 1)
      {
        v21 = 0;
        do
        {
          *&v16 = v21 / v13;
          [DKPointSmoothing interpolateFromPoint:v20 toPoint:v17 controlPoint:v18 time:v16];
          v18 = *&v26;
          v20 = *&v27;
          v17 = *&v25;
          v19[v21++] = v22;
        }

        while ((v14 & 0x7FFFFFFF) != v21);
      }

      if (!v24)
      {
        goto LABEL_13;
      }

      v23 = v24[2];
LABEL_12:
      v23();
LABEL_13:
      free(v19);
      v8 = v24;
    }
  }

LABEL_14:
}

@end