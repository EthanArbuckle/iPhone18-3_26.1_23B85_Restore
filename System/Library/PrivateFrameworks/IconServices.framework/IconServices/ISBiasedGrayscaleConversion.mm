@interface ISBiasedGrayscaleConversion
- (ISBiasedGrayscaleConversion)init;
- (__n128)computeGrayscaleConversionColorWithWidth:(int)width height:(int)height samples:(__int128 *)samples;
- (double)computeGrayscaleConversionColorWithNumberOfRepresentativeSamples:(__n128)samples representativeSamples:(uint64_t)representativeSamples;
@end

@implementation ISBiasedGrayscaleConversion

- (ISBiasedGrayscaleConversion)init
{
  v3.receiver = self;
  v3.super_class = ISBiasedGrayscaleConversion;
  result = [(ISBiasedGrayscaleConversion *)&v3 init];
  if (result)
  {
    result->_saturation = 0.65;
    result->_energyRatio = 0.3;
  }

  return result;
}

- (__n128)computeGrayscaleConversionColorWithWidth:(int)width height:(int)height samples:(__int128 *)samples
{
  v7 = height * width;
  v8 = malloc_type_malloc(0x7D00uLL, 0x1000040451B5BE8uLL);
  v9 = 0;
  v20 = 10;
  v10 = 2000;
  do
  {
    v11 = ISSegmentationMathUtils_rand_open(&v20, 0, v7);
    v19.i32[2] = 0;
    v19.i64[0] = 0;
    v17 = *samples;
    v18 = *(samples + 2);
    v12 = ISSegmentationSamples_readOpaqueSample_i(&v17, v11, &v19, *&v17).u64[0];
    if (v13)
    {
      v12 = v19.i64[0];
      v8[v9] = v19;
      v9 = (v9 + 1);
    }

    --v10;
  }

  while (v10);
  if (v9)
  {
    [self computeGrayscaleConversionColorWithNumberOfRepresentativeSamples:v9 representativeSamples:{v8, *&v12}];
  }

  else
  {
    v14 = xmmword_1A7825130;
  }

  v16 = v14;
  free(v8);
  return v16;
}

- (double)computeGrayscaleConversionColorWithNumberOfRepresentativeSamples:(__n128)samples representativeSamples:(uint64_t)representativeSamples
{
  v36 = *(self + 8);
  v35 = *(self + 12);
  v8 = a5;
  v9 = a5;
  v10 = -3.4028e38;
  v11 = 0.0;
  samples.n128_u64[0] = 0;
  do
  {
    v12.i64[1] = 0x3F0000003F000000;
    samplesCopy = samples;
    v12.i64[0] = __PAIR64__(v36, samples.n128_u32[0]);
    *v13.i64 = ISSegmentationMathUtils_hsv2rgb(v12);
    v39 = v13;
    v14 = 1.0 / (v13.f32[2] + vaddv_f32(*v13.f32));
    v15 = 0.217637641 / ISSegmentationMathUtils_luma(v13);
    v16 = vmulq_n_f32(v39, v14 + ((v15 - v14) * 0.0));
    v17 = 0.0;
    v38 = v16;
    if (a5 >= 1)
    {
      v18 = v9;
      v19 = a6;
      do
      {
        v20 = *v19++;
        v21 = vmulq_f32(v38, v20);
        v17 = v17 + vabds_f32(v21.f32[2] + vaddv_f32(*v21.f32), ISSegmentationMathUtils_luma(v20));
        --v18;
      }

      while (v18);
    }

    v22 = 0;
    v42 = 10;
    v23 = 0.0;
    v24 = 300;
    do
    {
      v40 = a6[ISSegmentationMathUtils_rand_open(&v42, 0, a5)];
      v25 = a6[ISSegmentationMathUtils_rand_open(&v42, 0, a5)];
      v26 = vsubq_f32(v40, v25);
      v27 = vmulq_f32(v26, v26);
      if (sqrtf(v27.f32[2] + vaddv_f32(*v27.f32)) > 0.0784313725)
      {
        v28 = vmulq_f32(v38, v25);
        v29 = vmulq_f32(v38, v40);
        *v28.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v28, v28, 8uLL)), vadd_f32(vzip1_s32(*v29.i8, *v28.i8), vzip2_s32(*v29.i8, *v28.i8)));
        v23 = v23 + logf(fabsf(vsub_f32(*v28.i8, vdup_lane_s32(*v28.i8, 1)).f32[0]) + 1.0);
        ++v22;
      }

      --v24;
    }

    while (v24);
    samples = samplesCopy;
    if (((v23 / v22) + (v35 * ((-v17 / v8) - (v23 / v22)))) > v10)
    {
      v11 = samplesCopy.n128_f32[0];
      v10 = (v23 / v22) + (v35 * ((-v17 / v8) - (v23 / v22)));
    }

    samples.n128_f32[0] = samplesCopy.n128_f32[0] + 0.02;
  }

  while (samples.n128_f32[0] < 1.0);
  v30.i64[1] = 0x3F0000003F000000;
  v30.i64[0] = __PAIR64__(v36, COERCE_UNSIGNED_INT(fminf(v11 - floorf(v11), 1.0)));
  *v31.i64 = ISSegmentationMathUtils_hsv2rgb(v30);
  v41 = v31;
  v32 = 1.0 / (v31.f32[2] + vaddv_f32(*v31.f32));
  v33 = 0.217637641 / ISSegmentationMathUtils_luma(v31);
  *&result = vmulq_n_f32(v41, v32 + ((v33 - v32) * 0.0)).u64[0];
  return result;
}

@end