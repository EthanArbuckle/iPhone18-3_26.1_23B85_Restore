@interface LSSQuaternionSmoothFilter
- (double)value;
- (uint64_t)hasValue;
- (uint64_t)reset;
- (void)updateQuaternion:(double)a3 alpha:;
@end

@implementation LSSQuaternionSmoothFilter

- (double)value
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 32);
    *a2 = v2;
    a2[1] = v3;
  }

  else
  {
    *&v2 = 0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return *&v2;
}

- (void)updateQuaternion:(double)a3 alpha:
{
  if (a1)
  {
    if (*(a1 + 8))
    {
      if (a3 >= 1.0)
      {
        v28 = a2[1];
        *(a1 + 16) = *a2;
        *(a1 + 32) = v28;
      }

      else
      {
        v4 = fmax(a3, 0.0);
        v6 = *(a1 + 16);
        v5 = *(a1 + 32);
        v7 = *a2;
        v8 = a2[1];
        v52 = v6;
        v53 = v5;
        v48 = v8;
        v50 = *a2;
        v9 = 1.0 - v4;
        if (vaddvq_f64(vaddq_f64(vmulq_f64(v6, *a2), vmulq_f64(v5, v8))) >= 0.0)
        {
          v29 = OUTLINED_FUNCTION_1(vsubq_f64(v5, v8), vsubq_f64(v6, v7));
          v34 = OUTLINED_FUNCTION_2(v29, vaddq_f64(v30, v31), vaddq_f64(v32, v33));
          v35 = v34 + v34;
          v17 = v34 + v34 == 0.0;
          v36 = 1.0;
          if (!v17)
          {
            v36 = sin(v35) / v35;
          }

          v37 = 1.0 / v36;
          if (v9 * v35 != 0.0)
          {
            sin(v9 * v35);
          }

          v38 = OUTLINED_FUNCTION_0();
          if (!v17)
          {
            v47 = v22;
            v39 = sin(v35);
            v22 = v47;
            v38 = v39 / v35;
          }

          v25 = v4 * (v37 * v38);
          v21 = v50;
          v26 = vmulq_n_f64(v48, v25);
        }

        else
        {
          v10 = OUTLINED_FUNCTION_1(vaddq_f64(v5, v8), vaddq_f64(v6, v7));
          v15 = OUTLINED_FUNCTION_2(v10, vsubq_f64(v11, v12), vsubq_f64(v13, v14));
          v16 = v15 + v15;
          v17 = v15 + v15 == 0.0;
          v18 = 1.0;
          if (!v17)
          {
            v18 = sin(v16) / v16;
          }

          v19 = 1.0 / v18;
          if (v9 * v16 != 0.0)
          {
            sin(v9 * v16);
          }

          v20 = OUTLINED_FUNCTION_0();
          if (!v17)
          {
            v49 = v22;
            v51 = v21;
            v46 = v23;
            v24 = sin(v16);
            v23 = v46;
            v22 = v49;
            v21 = v51;
            v20 = v24 / v16;
          }

          v25 = v4 * (v19 * v20);
          v26 = vmulq_n_f64(v23, v25);
        }

        v40 = vmlaq_f64(vmulq_n_f64(v21, v25), v52, v22);
        v41 = vmlaq_f64(v26, v53, v22);
        v42 = vaddvq_f64(vaddq_f64(vmulq_f64(v40, v40), vmulq_f64(v41, v41)));
        if (v42 == 0.0)
        {
          v43 = xmmword_255E9C9F0;
          v44 = 0uLL;
        }

        else
        {
          v45 = 1.0 / sqrt(v42);
          v43 = vmulq_n_f64(v41, v45);
          v44 = vmulq_n_f64(v40, v45);
        }

        *(a1 + 16) = v44;
        *(a1 + 32) = v43;
      }
    }

    else
    {
      v27 = a2[1];
      *(a1 + 16) = *a2;
      *(a1 + 32) = v27;
      *(a1 + 8) = 1;
    }
  }
}

- (uint64_t)reset
{
  if (result)
  {
    *(result + 8) = 0;
  }

  return result;
}

- (uint64_t)hasValue
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

@end