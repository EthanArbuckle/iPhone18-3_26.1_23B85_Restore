@interface NUKeyframeSequenceDouble2
- (NUKeyframeSequenceDouble2)initWithInterpolation:(int64_t)a3 count:(unint64_t)a4 times:(id *)a5 values:;
- (NUKeyframeSequenceDouble2)initWithKeyframeSequence:(id)a3 values:;
- (double)sampleAtTime:(__int128 *)a3;
- (double)tangentOfKeyframeAtIndex:(uint64_t)a3;
- (double)valueOfKeyframeAtIndex:(uint64_t)a3;
- (id)debugQuickLookObject;
- (void)_compressAndStoreValues:(NUKeyframeSequenceDouble2 *)self count:(SEL)a2;
- (void)dealloc;
@end

@implementation NUKeyframeSequenceDouble2

- (id)debugQuickLookObject
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v4 = CGBitmapContextCreate(0, 0x40AuLL, 0x20AuLL, 8uLL, 0, DeviceRGB, 1u);
  CGColorSpaceRelease(DeviceRGB);
  CGContextSetAllowsAntialiasing(v4, 1);
  CGContextSetShouldAntialias(v4, 1);
  SRGB = CGColorCreateSRGB(0.0, 0.0, 0.0, 1.0);
  CGContextSetFillColorWithColor(v4, SRGB);
  Width = CGBitmapContextGetWidth(v4);
  v65.size.height = CGBitmapContextGetHeight(v4);
  v65.origin.x = 0.0;
  v65.origin.y = 0.0;
  v65.size.width = Width;
  CGContextFillRect(v4, v65);
  CGColorRelease(SRGB);
  CGContextSetLineWidth(v4, 1.5);
  v7 = [(NUKeyframeSequence *)self count];
  memset(&v63[1], 0, sizeof(CMTime));
  [(NUKeyframeSequence *)self timeOfKeyframeAtIndex:0];
  memset(v63, 0, 24);
  [(NUKeyframeSequence *)self timeOfKeyframeAtIndex:v7 - 1];
  memset(&v62, 0, sizeof(v62));
  lhs = v63[0];
  rhs = v63[1];
  CMTimeSubtract(&v62, &lhs, &rhs);
  v48 = *self->_scale;
  Mutable = CGPathCreateMutable();
  v9 = CGPathCreateMutable();
  memset(&lhs, 0, sizeof(lhs));
  [(NUKeyframeSequence *)self timeOfKeyframeAtIndex:0];
  if (v7 >= 1)
  {
    v10 = 0;
    __asm { FMOV            V1.2D, #1.0 }

    v46 = vbslq_s8(vcgtzq_f64(v48), vdivq_f64(_Q1, v48), _Q1);
    v16 = v7 & 0x7FFFFFFF;
    v17 = 0uLL;
    v44 = vdupq_n_s64(0x3F7F601F601F601FuLL);
    v18 = 0.0;
    do
    {
      v49 = v17;
      memset(&rhs, 0, sizeof(rhs));
      [(NUKeyframeSequence *)self timeOfKeyframeAtIndex:v10];
      memset(&v59, 0, sizeof(v59));
      v58 = rhs;
      v57 = v63[1];
      CMTimeSubtract(&v59, &v58, &v57);
      v19 = v59.value / v59.timescale * 1024.0 / (v62.value / v62.timescale);
      [(NUKeyframeSequenceDouble2 *)self valueOfKeyframeAtIndex:v10];
      v21 = vmulq_f64(v46, vmulq_f64(vsubq_f64(v20, *self->_bias), v44));
      v45 = v21;
      if (v10)
      {
        CGPathMoveToPoint(Mutable, 0, v18 + 5.0, 0.5 * v49.f64[0] + 0.0 + 5.0);
        v22 = 1.0;
        CGPathMoveToPoint(v9, 0, v18 + 5.0, vmuld_lane_f64(0.5, v49, 1) + 256.0 + 5.0);
        v23 = 1;
        v24 = 1.0;
        do
        {
          v25 = v19 * (v24 * 0.03125) + 5.0 + v18 * (v22 - v24 * 0.03125);
          memset(&v58, 0, sizeof(v58));
          time = rhs;
          CMTimeMultiplyByRatio(&v57, &time, v23, 32);
          v55 = lhs;
          CMTimeMultiplyByRatio(&time, &v55, 32 - v23, 32);
          CMTimeAdd(&v58, &v57, &time);
          v57 = v58;
          [(NUKeyframeSequenceDouble2 *)self sampleAtTime:&v57];
          v50 = v26;
          v27 = 0;
          v47 = *self->_bias;
          v28 = 1;
          v29 = Mutable;
          do
          {
            v30 = v28;
            v54 = v50;
            v31 = *(&v54 & 0xFFFFFFFFFFFFFFF7 | (8 * (v27 & 1)));
            v53 = v47;
            v32 = (v31 - *(&v53 & 0xFFFFFFFFFFFFFFF7 | (8 * (v27 & 1)))) * 0.00766002899;
            v52 = v46;
            CGPathAddLineToPoint(v29, 0, v25, vcvtd_n_f64_u32(v27 << 9, 1uLL) + *(&v52 & 0xFFFFFFFFFFFFFFF7 | (8 * (v27 & 1))) * v32 * 0.5 + 5.0);
            v28 = 0;
            v27 = 1;
            v29 = v9;
          }

          while ((v30 & 1) != 0);
          v22 = 1.0;
          v24 = v24 + 1.0;
          ++v23;
        }

        while (v23 != 33);
        v33 = v19 + 5.0;
      }

      else
      {
        v33 = v19 + 5.0;
        CGPathMoveToPoint(Mutable, 0, v19 + 5.0, 0.5 * v21.f64[0] + 0.0 + 5.0);
        CGPathMoveToPoint(v9, 0, v19 + 5.0, vmuld_lane_f64(0.5, v45, 1) + 256.0 + 5.0);
      }

      v34 = 0;
      v35 = v33 + -1.0;
      v36 = 1;
      v37 = Mutable;
      do
      {
        v38 = v36;
        v51 = v45;
        v66.origin.y = *(&v51 & 0xFFFFFFFFFFFFFFF7 | (8 * (v34 & 1))) * 0.5 + vcvtd_n_f64_u32(v34 << 9, 1uLL) + 5.0 + -2.0;
        v66.size.width = 5.0;
        v66.size.height = 5.0;
        v66.origin.x = v35;
        CGPathAddEllipseInRect(v37, 0, v66);
        v36 = 0;
        v34 = 1;
        v37 = v9;
      }

      while ((v38 & 1) != 0);
      lhs = rhs;
      ++v10;
      v18 = v19;
      v17 = v45;
    }

    while (v10 != v16);
  }

  v39 = CGColorCreateSRGB(1.0, 0.0, 0.0, 1.0);
  v40 = CGColorCreateSRGB(0.0, 1.0, 0.0, 1.0);
  CGContextAddPath(v4, Mutable);
  CGContextSetStrokeColorWithColor(v4, v39);
  CGContextStrokePath(v4);
  CGPathRelease(Mutable);
  CGColorRelease(v39);
  CGContextAddPath(v4, v9);
  CGContextSetStrokeColorWithColor(v4, v40);
  CGContextStrokePath(v4);
  CGPathRelease(v9);
  CGColorRelease(v40);
  CGContextFlush(v4);
  Image = CGBitmapContextCreateImage(v4);
  v42 = NUDebugQuicklookWrapCGImage(Image);
  CGImageRelease(Image);
  CGContextRelease(v4);

  return v42;
}

- (double)sampleAtTime:(__int128 *)a3
{
  if (*(a3 + 12))
  {
    v23 = *a3;
    v24 = *(a3 + 2);
    v6 = [a1 indexOfKeyframeAtOrBeforeTime:&v23];
    v7 = [a1 interpolation];
    switch(v7)
    {
      case 2:
        [a1 valueOfKeyframeAtIndex:v6];
        v19 = v10;
        [a1 valueOfKeyframeAtIndex:v6 + 1];
        v17 = v11;
        [a1 tangentOfKeyframeAtIndex:v6];
        v15 = v12;
        [a1 tangentOfKeyframeAtIndex:v6 + 1];
        v14 = v13;
        v23 = *a3;
        v24 = *(a3 + 2);
        [a1 interpolantAtTime:&v23];
        *&result = *&vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_laneq_f64(v15, v20, 1), v19, v20.f64[0]), v17, v21.f64[0]), v14, v21, 1);
        break;
      case 1:
        [a1 valueOfKeyframeAtIndex:v6];
        v18 = v8;
        [a1 valueOfKeyframeAtIndex:v6 + 1];
        v16 = v9;
        v23 = *a3;
        v24 = *(a3 + 2);
        [a1 interpolantAtTime:&v23];
        *&result = *&vmlaq_n_f64(vmulq_laneq_f64(v16, v22, 1), v18, v22.f64[0]);
        break;
      case 0:
        [a1 valueOfKeyframeAtIndex:v6];
        break;
    }
  }

  else
  {

    [a1 valueOfKeyframeAtIndex:0];
  }

  return result;
}

- (double)tangentOfKeyframeAtIndex:(uint64_t)a3
{
  result = 0.0;
  v4 = a3 - 1;
  if (a3 >= 1)
  {
    v7 = [a1 count];
    result = 0.0;
    if (v7 - 1 > a3)
    {
      [a1 valueOfKeyframeAtIndex:{v4, 0.0}];
      v11 = v8;
      [a1 valueOfKeyframeAtIndex:a3 + 1];
      v10 = v9;
      memset(&v15[1], 0, sizeof(CMTime));
      [a1 timeOfKeyframeAtIndex:v4];
      memset(v15, 0, 24);
      [a1 timeOfKeyframeAtIndex:a3 + 1];
      memset(&v14, 0, sizeof(v14));
      lhs = v15[0];
      rhs = v15[1];
      CMTimeSubtract(&v14, &lhs, &rhs);
      if (v14.value < 1)
      {
        return 0.0;
      }

      else
      {
        *&result = *&vdivq_f64(vsubq_f64(v10, v11), vdupq_lane_s64(COERCE__INT64(fmax(v14.value / v14.timescale, 0.015625)), 0));
      }
    }
  }

  return result;
}

- (double)valueOfKeyframeAtIndex:(uint64_t)a3
{
  if (!*(a1 + 80))
  {
    return 0.0;
  }

  v5 = [a1 count] - 1;
  if (v5 >= a3)
  {
    v5 = a3;
  }

  v6 = (*(a1 + 80) + 4 * (v5 & ~(v5 >> 63)));
  v7.i64[0] = *v6;
  v7.i64[1] = v6[1];
  *&result = *&vmlaq_f64(*(a1 + 64), *(a1 + 48), vcvtq_f64_u64(v7));
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
  v4.super_class = NUKeyframeSequenceDouble2;
  [(NUKeyframeSequence *)&v4 dealloc];
}

- (NUKeyframeSequenceDouble2)initWithKeyframeSequence:(id)a3 values:
{
  v4 = v3;
  v7.receiver = self;
  v7.super_class = NUKeyframeSequenceDouble2;
  v5 = [(NUKeyframeSequence *)&v7 initWithKeyframeSequence:a3];
  if ([(NUKeyframeSequence *)v5 count])
  {
    [(NUKeyframeSequenceDouble2 *)v5 _compressAndStoreValues:v4 count:[(NUKeyframeSequence *)v5 count]];
  }

  return v5;
}

- (NUKeyframeSequenceDouble2)initWithInterpolation:(int64_t)a3 count:(unint64_t)a4 times:(id *)a5 values:
{
  v6 = v5;
  v11.receiver = self;
  v11.super_class = NUKeyframeSequenceDouble2;
  v8 = [(NUKeyframeSequence *)&v11 initWithInterpolation:a3 count:a4 times:a5];
  v9 = v8;
  if (a4)
  {
    [(NUKeyframeSequenceDouble2 *)v8 _compressAndStoreValues:v6 count:a4];
  }

  return v9;
}

- (void)_compressAndStoreValues:(NUKeyframeSequenceDouble2 *)self count:(SEL)a2
{
  v4 = v3;
  v5 = v2;
  *self->_values = malloc_type_calloc(v3, 4uLL, 0x100004052888210uLL);
  v7 = *v5;
  if (v4 < 2)
  {
    v10 = *v5;
  }

  else
  {
    v8 = 2;
    v9 = 1;
    v10 = *v5;
    do
    {
      v11 = v5[v9];
      v10 = vminnmq_f64(v10, v11);
      v7 = vmaxnmq_f64(v7, v11);
      v9 = v8++;
    }

    while (v9 < v4);
  }

  v12 = vsubq_f64(v7, v10);
  v13 = vdupq_n_s64(0x40EFFFE000000000uLL);
  *self->_scale = vdivq_f64(v12, v13);
  *self->_bias = v10;
  if (v4)
  {
    v14 = 0;
    __asm { FMOV            V3.2D, #1.0 }

    v20 = vbslq_s8(vcgtzq_f64(*self->_scale), vdivq_f64(_Q3, *self->_scale), _Q3);
    do
    {
      v21 = vmovn_s64(vcvtq_s64_f64(vminnmq_f64(vmaxnmq_f64(vrndaq_f64(vmulq_f64(v20, vsubq_f64(v5[v14], *self->_bias))), 0), v13)));
      v22 = (*self->_values + 4 * v14);
      v22[1] = v21.i16[2];
      *v22 = v21.i16[0];
      ++v14;
    }

    while (v4 > v14);
  }
}

@end