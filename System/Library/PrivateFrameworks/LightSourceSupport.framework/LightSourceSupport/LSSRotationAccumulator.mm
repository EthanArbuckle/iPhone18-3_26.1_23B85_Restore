@interface LSSRotationAccumulator
- (LSSRotationAccumulator)init;
- (__n64)update:(uint64_t)update;
- (uint64_t)setSampleBias:(uint64_t)result;
- (uint64_t)setSampleClampMax:(uint64_t)result;
@end

@implementation LSSRotationAccumulator

- (LSSRotationAccumulator)init
{
  v6.receiver = self;
  v6.super_class = LSSRotationAccumulator;
  v2 = [(LSSRotationAccumulator *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    accumulator = v2->_accumulator;
    v2->_accumulator = v3;

    v2->_sampleClampMax = INFINITY;
  }

  return v2;
}

- (__n64)update:(uint64_t)update
{
  if (update)
  {
    if ((*(update + 48) & 1) == 0)
    {
      v4 = a2[1];
      *(update + 16) = *a2;
      *(update + 32) = v4;
      *(update + 48) = 1;
    }

    v5 = a2[1];
    v7 = *(update + 16);
    v6 = *(update + 32);
    v8 = vmulq_f64(v5, xmmword_255E9CA30);
    v9 = vnegq_f64(*a2);
    v10 = vextq_s8(v8, vnegq_f64(v8), 8uLL);
    v11 = vmlaq_f64(vmulq_f64(v8, 0), 0, v10);
    v12 = vaddq_f64(v10, vmlaq_f64(vmulq_f64(*a2, 0), 0, vextq_s8(v9, *a2, 8uLL)));
    v13 = vaddq_f64(vextq_s8(*a2, v9, 8uLL), v11);
    v14 = vnegq_f64(v13);
    v15 = vextq_s8(v12, vnegq_f64(v12), 8uLL);
    v16 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v13, v5, 1), vextq_s8(v14, v13, 8uLL), v5.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v12, *a2, 1), v15, a2->f64[0]));
    v17 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v12, v5, 1), v15, v5.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v14, *a2, 1), vextq_s8(v13, v14, 8uLL), a2->f64[0]));
    v18 = vmulq_f64(v6, xmmword_255E9CA30);
    v19 = vnegq_f64(v7);
    v20 = vextq_s8(v18, vnegq_f64(v18), 8uLL);
    v21 = vmlaq_f64(vmulq_f64(v18, 0), 0, v20);
    v22 = vaddq_f64(v20, vmlaq_f64(vmulq_f64(v7, 0), 0, vextq_s8(v19, v7, 8uLL)));
    v23 = vaddq_f64(vextq_s8(v7, v19, 8uLL), v21);
    v24 = vnegq_f64(v23);
    v25 = vextq_s8(v22, vnegq_f64(v22), 8uLL);
    v26 = acos(fmin(fmax(vmulq_f64(v17, vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v22, v6, 1), v25, v6.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v24, v7, 1), vextq_s8(v23, v24, 8uLL), v7.f64[0]))).f64[0] + vaddvq_f64(vmulq_f64(v16, vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v23, v6, 1), vextq_s8(v24, v23, 8uLL), v6.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v22, v7, 1), v25, v7.f64[0])))), -1.0), 1.0));
    v27 = a2[1];
    *(update + 16) = *a2;
    *(update + 32) = v27;
    *&v26 = v26;
    *&v26 = fmax((*(update + 56) + fabsf(*&v26)), 0.0);
    v28 = fminf(*&v26, *(update + 52));
    v29 = *(update + 8);

    return [(LSSAccumulator *)v29 addSample:v28];
  }

  else
  {
    return 0;
  }
}

- (uint64_t)setSampleClampMax:(uint64_t)result
{
  if (result)
  {
    *(result + 52) = a2;
  }

  return result;
}

- (uint64_t)setSampleBias:(uint64_t)result
{
  if (result)
  {
    *(result + 56) = a2;
  }

  return result;
}

@end