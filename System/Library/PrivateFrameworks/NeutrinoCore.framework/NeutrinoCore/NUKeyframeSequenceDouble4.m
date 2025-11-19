@interface NUKeyframeSequenceDouble4
- (CMTime)tangentOfKeyframeAtIndex:(float64x2_t *)a3@<X8>;
- (NUKeyframeSequenceDouble4)initWithInterpolation:(int64_t)a3 count:(unint64_t)a4 times:(id *)a5 values:;
- (NUKeyframeSequenceDouble4)initWithKeyframeSequence:(id)a3 values:;
- (float64x2_t)valueOfKeyframeAtIndex:(float64x2_t *)a3@<X8>;
- (id)debugQuickLookObject;
- (id)sparseSequence;
- (uint64_t)sampleAtTime:(float64x2_t *)a3@<X8>;
- (void)_compressAndStoreValues:(NUKeyframeSequenceDouble4 *)self count:(SEL)a2;
- (void)dealloc;
@end

@implementation NUKeyframeSequenceDouble4

- (id)debugQuickLookObject
{
  v82 = *MEMORY[0x1E69E9840];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v4 = CGBitmapContextCreate(0, 0x40AuLL, 0x20AuLL, 8uLL, 0, DeviceRGB, 1u);
  CGColorSpaceRelease(DeviceRGB);
  CGContextSetAllowsAntialiasing(v4, 1);
  CGContextSetShouldAntialias(v4, 1);
  v5 = 0.0;
  SRGB = CGColorCreateSRGB(0.0, 0.0, 0.0, 1.0);
  CGContextSetFillColorWithColor(v4, SRGB);
  Width = CGBitmapContextGetWidth(v4);
  v84.size.height = CGBitmapContextGetHeight(v4);
  v84.origin.x = 0.0;
  v84.origin.y = 0.0;
  v84.size.width = Width;
  CGContextFillRect(v4, v84);
  CGColorRelease(SRGB);
  c = v4;
  CGContextSetLineWidth(v4, 1.5);
  v8 = [(NUKeyframeSequence *)self count];
  memset(&v77[1], 0, sizeof(CMTime));
  [(NUKeyframeSequence *)self timeOfKeyframeAtIndex:0];
  memset(v77, 0, 24);
  [(NUKeyframeSequence *)self timeOfKeyframeAtIndex:v8 - 1];
  memset(&v76, 0, sizeof(v76));
  lhs = v77[0];
  rhs = v77[1];
  CMTimeSubtract(&v76, &lhs, &rhs);
  v56 = *self->_scale;
  v59 = *&self->_scale[16];
  lhs.value = CGPathCreateMutable();
  *&lhs.timescale = CGPathCreateMutable();
  lhs.epoch = CGPathCreateMutable();
  Mutable = CGPathCreateMutable();
  memset(&v75, 0, sizeof(v75));
  [(NUKeyframeSequence *)self timeOfKeyframeAtIndex:0];
  if (v8 >= 1)
  {
    v9 = 0;
    __asm { FMOV            V2.2D, #1.0 }

    v53 = vbslq_s8(vcgtzq_f64(v59), vdivq_f64(_Q2, v59), vdupq_n_s64(0x7FF0000000000000uLL));
    v52 = vbslq_s8(vcgtzq_f64(v56), vdivq_f64(_Q2, v56), xmmword_1C03C2780);
    v15 = 0uLL;
    v48 = v8 & 0x7FFFFFFF;
    v47 = vdupq_n_s64(0x3F80001000100010uLL);
    v16 = -2.0;
    v17 = 0uLL;
    do
    {
      v57 = v17;
      v60 = v15;
      memset(&rhs, 0, sizeof(rhs));
      [(NUKeyframeSequence *)self timeOfKeyframeAtIndex:v9];
      memset(&v74, 0, sizeof(v74));
      v73 = rhs;
      v72 = v77[1];
      CMTimeSubtract(&v74, &v73, &v72);
      v18 = v74.value / v74.timescale * 1024.0 / (v76.value / v76.timescale);
      [(NUKeyframeSequenceDouble4 *)self valueOfKeyframeAtIndex:v9];
      v17 = vmulq_f64(v53, vmulq_f64(vsubq_f64(v71, *&self->_bias[16]), v47));
      v15 = vmulq_f64(v52, vmulq_f64(vsubq_f64(v70, *self->_bias), v47));
      v50 = v15;
      v51 = v17;
      if (v9)
      {
        v49 = v9;
        v19 = 0;
        v20 = 0;
        v21 = v18 + 5.0;
        do
        {
          v22 = *(&lhs.value + v20);
          v67[0] = v60;
          v67[1] = v57;
          CGPathMoveToPoint(v22, 0, v5 + 5.0, *(v67 + (v20++ & 3)) * 0.25 + vcvtd_n_f64_u32(v19, 2uLL) + 5.0);
          v19 += 512;
        }

        while (v20 != 4);
        v23 = 1;
        v24 = 1.0;
        v25 = 1.0;
        do
        {
          v26 = v18 * (v24 * 0.03125) + 5.0 + v5 * (v25 - v24 * 0.03125);
          memset(&v73, 0, sizeof(v73));
          time = rhs;
          CMTimeMultiplyByRatio(&v72, &time, v23, 32);
          v68 = v75;
          CMTimeMultiplyByRatio(&time, &v68, 32 - v23, 32);
          CMTimeAdd(&v73, &v72, &time);
          v72 = v73;
          [(NUKeyframeSequenceDouble4 *)self sampleAtTime:&v72];
          v27 = 0;
          v28 = 0;
          v58 = v67[2];
          v61 = v67[3];
          v54 = *self->_bias;
          v55 = *&self->_bias[16];
          do
          {
            v29 = *(&lhs.value + v28);
            v66[0] = v58;
            v66[1] = v61;
            v30 = 8 * (v28 & 3);
            v31 = *(v66 + v30);
            v65[0] = v54;
            v65[1] = v55;
            v32 = (v31 - *(v65 + v30)) * 0.00781261921;
            v64[0] = v52;
            v64[1] = v53;
            CGPathAddLineToPoint(v29, 0, v26, vcvtd_n_f64_u32(v27, 2uLL) + *(v64 + v30) * v32 * 0.25 + 5.0);
            ++v28;
            v27 += 512;
          }

          while (v28 != 4);
          v25 = 1.0;
          v24 = v24 + 1.0;
          ++v23;
        }

        while (v23 != 33);
        v9 = v49;
        v16 = -2.0;
        v15 = v50;
        v17 = v51;
      }

      else
      {
        v33 = 0;
        v34 = 0;
        v21 = v18 + 5.0;
        do
        {
          v35 = *(&lhs.value + v34);
          v63[0] = v15;
          v63[1] = v17;
          CGPathMoveToPoint(v35, 0, v18 + 5.0, *(v63 + (v34 & 3)) * 0.25 + vcvtd_n_f64_u32(v33, 2uLL) + 5.0);
          v15 = v50;
          v17 = v51;
          ++v34;
          v33 += 512;
        }

        while (v34 != 4);
      }

      v36 = 0;
      v37 = 0;
      v38 = v21 + -1.0;
      do
      {
        v39 = *(&lhs.value + v37);
        v62[0] = v15;
        v62[1] = v17;
        v85.origin.y = *(v62 + (v37 & 3)) * 0.25 + vcvtd_n_f64_u32(v36, 2uLL) + 5.0 + v16;
        v85.size.width = 5.0;
        v85.size.height = 5.0;
        v85.origin.x = v38;
        CGPathAddEllipseInRect(v39, 0, v85);
        v15 = v50;
        v17 = v51;
        ++v37;
        v36 += 512;
      }

      while (v37 != 4);
      v75 = rhs;
      ++v9;
      v5 = v18;
    }

    while (v9 != v48);
  }

  rhs.value = CGColorCreateSRGB(1.0, 0.0, 0.0, 1.0);
  *&rhs.timescale = CGColorCreateSRGB(0.0, 1.0, 0.0, 1.0);
  rhs.epoch = CGColorCreateSRGB(0.0, 0.0, 1.0, 1.0);
  v40 = 0;
  v79 = CGColorCreateSRGB(0.8, 0.8, 0.0, 1.0);
  do
  {
    v41 = *(&lhs.value + v40);
    CGContextAddPath(c, v41);
    v42 = *(&rhs.value + v40);
    CGContextSetStrokeColorWithColor(c, v42);
    CGContextStrokePath(c);
    CGPathRelease(v41);
    CGColorRelease(v42);
    v40 += 8;
  }

  while (v40 != 32);
  CGContextFlush(c);
  Image = CGBitmapContextCreateImage(c);
  v44 = NUDebugQuicklookWrapCGImage(Image);
  CGImageRelease(Image);
  CGContextRelease(c);

  return v44;
}

- (id)sparseSequence
{
  v81 = *MEMORY[0x1E69E9840];
  if ([(NUKeyframeSequence *)self count]> 3)
  {
    v4 = vandq_s8(vceqzq_f64(*self->_scale), vceqzq_f64(*&self->_scale[16]));
    if ((vandq_s8(v4, vdupq_laneq_s64(v4, 1)).u64[0] & 0x8000000000000000) != 0)
    {
      [(NUKeyframeSequence *)self timeOfKeyframeAtIndex:0];
      [(NUKeyframeSequenceDouble4 *)self valueOfKeyframeAtIndex:0];
      v78 = v75;
      v79 = v76;
      v34 = objc_alloc(objc_opt_class());
      v3 = [v34 initWithInterpolation:-[NUKeyframeSequence interpolation](self count:"interpolation") times:1 values:{&v80, &v78}];
    }

    else
    {
      v51 = *&self->_scale[16];
      *obj = *self->_scale;
      v5 = objc_opt_new();
      if ([(NUKeyframeSequence *)self count]>= 5)
      {
        __asm { FMOV            V2.2D, #1.0 }

        v43 = vbslq_s8(vcgtzq_f64(*obj), vdivq_f64(_Q2, *obj), xmmword_1C03C2780);
        v42 = vbslq_s8(vcgtzq_f64(v51), vdivq_f64(_Q2, v51), vdupq_n_s64(0x7FF0000000000000uLL));
        v11 = 2;
        v41 = vdupq_n_s64(0x4058000000000000uLL);
        do
        {
          v78 = 0uLL;
          *&v79 = 0;
          [(NUKeyframeSequence *)self timeOfKeyframeAtIndex:v11 - 2, *&v41, *&v42, *&v43];
          memset(&v80, 0, sizeof(v80));
          [(NUKeyframeSequence *)self timeOfKeyframeAtIndex:v11 + 2];
          [(NUKeyframeSequenceDouble4 *)self valueOfKeyframeAtIndex:v11 - 2];
          v47 = v73;
          v49 = v74;
          [(NUKeyframeSequenceDouble4 *)self valueOfKeyframeAtIndex:v11 + 2];
          v12 = 1;
          v13 = 7;
          v44 = v71;
          v45 = v72;
          while (1)
          {
            memset(&v70, 0, sizeof(v70));
            *&time.value = v78;
            time.epoch = v79;
            CMTimeMultiplyByRatio(&lhs, &time, v13, 8);
            v67 = v80;
            CMTimeMultiplyByRatio(&time, &v67, v12, 8);
            CMTimeAdd(&v70, &lhs, &time);
            v14 = vcvtd_n_f64_u32(v12, 3uLL);
            v52 = vmlaq_n_f64(vmulq_n_f64(v44, v14), v47, 1.0 - v14);
            objb = vmlaq_n_f64(vmulq_n_f64(v45, v14), v49, 1.0 - v14);
            lhs = v70;
            [(NUKeyframeSequenceDouble4 *)self sampleAtTime:&lhs];
            v15 = vcgtq_f64(vmaxnmq_f64(vmulq_f64(v43, vabdq_f64(v52, v65)), vmulq_f64(v42, vabdq_f64(objb, v66))), v41);
            if ((vorrq_s8(v15, vdupq_laneq_s64(v15, 1)).u64[0] & 0x8000000000000000) != 0)
            {
              break;
            }

            ++v12;
            if (!--v13)
            {
              v16 = [MEMORY[0x1E696AD98] numberWithInt:v11];
              [v5 addObject:v16];

              break;
            }
          }

          ++v11;
        }

        while (v11 < ([(NUKeyframeSequence *)self count]- 2));
      }

      if ([v5 count])
      {
        v17 = [(NUKeyframeSequence *)self count];
        v18 = v17 - [v5 count];
        v50 = malloc_type_malloc(24 * v18, 0x1000040504FFAC1uLL);
        v48 = v18;
        v19 = malloc_type_malloc(32 * v18, 0x1000040E0EAB150uLL);
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        obja = v5;
        v20 = [obja countByEnumeratingWithState:&v61 objects:v77 count:16];
        if (v20)
        {
          v21 = v20;
          v46 = v5;
          LODWORD(v22) = 0;
          v23 = 0;
          v24 = *v62;
          do
          {
            v25 = 0;
            v53 = v21;
            do
            {
              if (*v62 != v24)
              {
                objc_enumerationMutation(obja);
              }

              v26 = [*(*(&v61 + 1) + 8 * v25) intValue];
              if (v22 >= v26)
              {
                v27 = v22;
              }

              else
              {
                v27 = v26;
                v28 = v23;
                v22 = v22;
                v29 = &v50[24 * v23];
                v30 = v26;
                do
                {
                  v31 = v28;
                  [(NUKeyframeSequence *)self timeOfKeyframeAtIndex:v22];
                  v32 = v78;
                  *(v29 + 2) = v79;
                  *v29 = v32;
                  v29 += 24;
                  [(NUKeyframeSequenceDouble4 *)self valueOfKeyframeAtIndex:v22];
                  v28 = v31 + 1;
                  v33 = &v19[32 * v31];
                  *v33 = v59;
                  *(v33 + 1) = v60;
                  ++v22;
                }

                while (v30 != v22);
                v23 = v31 + 1;
                v21 = v53;
              }

              v22 = (v27 + 1);
              ++v25;
            }

            while (v25 != v21);
            v21 = [obja countByEnumeratingWithState:&v61 objects:v77 count:16];
          }

          while (v21);
          v5 = v46;
        }

        else
        {
          v22 = 0;
          v23 = 0;
        }

        if (v23 < v48)
        {
          v35 = &v19[32 * v23];
          v36 = v48 - v23;
          v37 = &v50[24 * v23];
          do
          {
            [(NUKeyframeSequence *)self timeOfKeyframeAtIndex:v22];
            v38 = v78;
            *(v37 + 2) = v79;
            *v37 = v38;
            v37 += 24;
            [(NUKeyframeSequenceDouble4 *)self valueOfKeyframeAtIndex:v22];
            *v35 = v57;
            *(v35 + 1) = v58;
            v35 += 32;
            ++v22;
            --v36;
          }

          while (v36);
        }

        v39 = objc_alloc(objc_opt_class());
        v3 = [v39 initWithInterpolation:-[NUKeyframeSequence interpolation](self count:"interpolation") times:v48 values:{v50, v19}];

        free(v50);
        free(v19);
      }

      else
      {
        v3 = self;
      }
    }
  }

  else
  {
    v3 = self;
  }

  return v3;
}

- (uint64_t)sampleAtTime:(float64x2_t *)a3@<X8>
{
  if ((*(a2 + 12) & 1) == 0)
  {
    result = [a1 valueOfKeyframeAtIndex:0];
    v7 = v29;
    v6 = v30;
LABEL_3:
    *a3 = v7;
    a3[1] = v6;
    return result;
  }

  v27 = *a2;
  v28 = *(a2 + 2);
  v9 = [a1 indexOfKeyframeAtOrBeforeTime:&v27];
  result = [a1 interpolation];
  switch(result)
  {
    case 2:
      [a1 valueOfKeyframeAtIndex:v9];
      [a1 valueOfKeyframeAtIndex:v9 + 1];
      [a1 tangentOfKeyframeAtIndex:v9];
      [a1 tangentOfKeyframeAtIndex:v9 + 1];
      v27 = *a2;
      v28 = *(a2 + 2);
      result = [a1 interpolantAtTime:&v27];
      v6 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_laneq_f64(v15, v10, 1), v19, v10.f64[0]), v17, v11.f64[0]), v13, v11, 1);
      v7 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_laneq_f64(v14, v10, 1), v18, v10.f64[0]), v16, v11.f64[0]), v12, v11, 1);
      goto LABEL_3;
    case 1:
      [a1 valueOfKeyframeAtIndex:v9];
      [a1 valueOfKeyframeAtIndex:v9 + 1];
      v27 = *a2;
      v28 = *(a2 + 2);
      result = [a1 interpolantAtTime:&v27];
      v6 = vmlaq_n_f64(vmulq_laneq_f64(v22, v20, 1), v24, v20.f64[0]);
      v7 = vmlaq_n_f64(vmulq_laneq_f64(v21, v20, 1), v23, v20.f64[0]);
      goto LABEL_3;
    case 0:
      result = [a1 valueOfKeyframeAtIndex:v9];
      v7 = v25;
      v6 = v26;
      goto LABEL_3;
  }

  return result;
}

- (CMTime)tangentOfKeyframeAtIndex:(float64x2_t *)a3@<X8>
{
  v4 = a2 - 1;
  if (a2 < 1 || (v6 = result, result = [(CMTime *)result count], &result[-1].epoch + 7 <= a2))
  {
    *a3 = 0u;
    a3[1] = 0u;
  }

  else
  {
    [(CMTime *)v6 valueOfKeyframeAtIndex:v4];
    v12 = v20;
    v13 = v21;
    [(CMTime *)v6 valueOfKeyframeAtIndex:a2 + 1];
    v10 = v18;
    v11 = v19;
    memset(&v17[1], 0, sizeof(CMTime));
    [(CMTime *)v6 timeOfKeyframeAtIndex:v4];
    memset(v17, 0, 24);
    [(CMTime *)v6 timeOfKeyframeAtIndex:a2 + 1];
    memset(&v16, 0, sizeof(v16));
    lhs = v17[0];
    rhs = v17[1];
    result = CMTimeSubtract(&v16, &lhs, &rhs);
    if (v16.value < 1)
    {
      v9 = 0uLL;
      v8 = 0uLL;
    }

    else
    {
      v7 = vdupq_lane_s64(COERCE__INT64(fmax(v16.value / v16.timescale, 0.015625)), 0);
      v8 = vdivq_f64(vsubq_f64(v11, v13), v7);
      v9 = vdivq_f64(vsubq_f64(v10, v12), v7);
    }

    *a3 = v9;
    a3[1] = v8;
  }

  return result;
}

- (float64x2_t)valueOfKeyframeAtIndex:(float64x2_t *)a3@<X8>
{
  if (*&result[7].f64[0])
  {
    v5 = result;
    result = [(float64x2_t *)result count];
    v6 = &result[-1].f64[1] + 7;
    if (&result[-1].f64[1] + 7 >= a2)
    {
      v6 = a2;
    }

    v7 = vmovl_u16(*(*&v5[7].f64[0] + 8 * (v6 & ~(v6 >> 63))));
    v8.i64[0] = v7.u32[0];
    v8.i64[1] = v7.u32[1];
    v9 = vcvtq_f64_u64(v8);
    v8.i64[0] = v7.u32[2];
    v8.i64[1] = v7.u32[3];
    v10 = vmlaq_f64(v5[6], v5[4], vcvtq_f64_u64(v8));
    v11 = vmlaq_f64(v5[5], v5[3], v9);
  }

  else
  {
    v11 = 0uLL;
    v10 = 0uLL;
  }

  *a3 = v11;
  a3[1] = v10;
  return result;
}

- (void)dealloc
{
  v3 = *self->_values;
  if (v3)
  {
    free(v3);
  }

  v4.receiver = self;
  v4.super_class = NUKeyframeSequenceDouble4;
  [(NUKeyframeSequence *)&v4 dealloc];
}

- (NUKeyframeSequenceDouble4)initWithKeyframeSequence:(id)a3 values:
{
  v4 = v3;
  v7.receiver = self;
  v7.super_class = NUKeyframeSequenceDouble4;
  v5 = [(NUKeyframeSequence *)&v7 initWithKeyframeSequence:a3];
  if ([(NUKeyframeSequence *)v5 count])
  {
    [(NUKeyframeSequenceDouble4 *)v5 _compressAndStoreValues:v4 count:[(NUKeyframeSequence *)v5 count]];
  }

  return v5;
}

- (NUKeyframeSequenceDouble4)initWithInterpolation:(int64_t)a3 count:(unint64_t)a4 times:(id *)a5 values:
{
  v6 = v5;
  v11.receiver = self;
  v11.super_class = NUKeyframeSequenceDouble4;
  v8 = [(NUKeyframeSequence *)&v11 initWithInterpolation:a3 count:a4 times:a5];
  v9 = v8;
  if (a4)
  {
    [(NUKeyframeSequenceDouble4 *)v8 _compressAndStoreValues:v6 count:a4];
  }

  return v9;
}

- (void)_compressAndStoreValues:(NUKeyframeSequenceDouble4 *)self count:(SEL)a2
{
  v4 = v3;
  v5 = v2;
  *self->_values = malloc_type_calloc(v3, 8uLL, 0x100004000313F17uLL);
  v8 = *v5;
  v7 = v5[1];
  if (v4 < 2)
  {
    v11 = *v5;
    v12 = v5[1];
  }

  else
  {
    v9 = 2;
    v10 = 1;
    v11 = *v5;
    v12 = v5[1];
    do
    {
      v13 = &v5[2 * v10];
      v14 = v13[1];
      v11 = vminnmq_f64(v11, *v13);
      v12 = vminnmq_f64(v12, v14);
      v8 = vmaxnmq_f64(v8, *v13);
      v7 = vmaxnmq_f64(v7, v14);
      v10 = v9++;
    }

    while (v10 < v4);
  }

  v15 = vsubq_f64(v7, v12);
  v16 = vdupq_n_s64(0x40EFFFE000000000uLL);
  *self->_scale = vdivq_f64(vsubq_f64(v8, v11), v16);
  *&self->_scale[16] = vdivq_f64(v15, v16);
  *self->_bias = v11;
  *&self->_bias[16] = v12;
  if (v4)
  {
    v17 = 0;
    __asm { FMOV            V4.2D, #1.0 }

    v23 = vbslq_s8(vcgtzq_f64(*&self->_scale[16]), vdivq_f64(_Q4, *&self->_scale[16]), vdupq_n_s64(0x7FF0000000000000uLL));
    v24 = vbslq_s8(vcgtzq_f64(*self->_scale), vdivq_f64(_Q4, *self->_scale), xmmword_1C03C2780);
    do
    {
      *(*self->_values + 8 * v17) = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vminnmq_f64(vmaxnmq_f64(vrndaq_f64(vmulq_f64(v24, vsubq_f64(v5[2 * v17], *self->_bias))), 0), v16)), vcvtq_s64_f64(vminnmq_f64(vmaxnmq_f64(vrndaq_f64(vmulq_f64(v23, vsubq_f64(v5[2 * v17 + 1], *&self->_bias[16]))), 0), v16))));
      ++v17;
    }

    while (v4 > v17);
  }
}

@end