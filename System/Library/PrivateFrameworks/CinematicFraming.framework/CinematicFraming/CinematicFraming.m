void sub_2434D3D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VCProcessor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void warpPoint(uint64_t a1, float32x4_t *a2, float32x2_t a3)
{
  v5 = *a1;
  if (*(a1 + 160) == 1)
  {
    v6 = vmul_f32(v5, a3);
    v7 = *(a1 + 168);
    v8 = vsub_f32(v6, v7);
    v9 = vaddv_f32(vmul_f32(v8, v8));
    if (sqrtf(v9) <= *(a1 + 240))
    {
      v10 = v9 * *(a1 + 164);
      a3 = vdiv_f32(vadd_f32(v7, vmul_n_f32(v8, 1.0 / (((*(a1 + 208) + ((*(a1 + 212) + ((*(a1 + 216) + ((*(a1 + 220) + ((*(a1 + 224) + ((*(a1 + 228) + ((*(a1 + 232) + ((*(a1 + 236) + (v10 * 0.0)) * v10)) * v10)) * v10)) * v10)) * v10)) * v10)) * v10)) * 0.01) + 1.0))), v5);
    }

    else
    {
      a3 = vneg_f32(0x3F0000003FLL);
    }
  }

  v11 = vmla_f32(vneg_f32(*(a1 + 8)), v5, a3);
  v12 = sqrtf(vaddv_f32(vmul_f32(v11, v11)));
  if (v12 <= *(a1 + 24))
  {
    v15 = *(a1 + 16);
    v16 = *(a1 + 20);
    if (fabsf(v16) <= 0.00000011921)
    {
      v19 = v12 / v15;
    }

    else
    {
      v32 = v11;
      v17 = (v16 * v12) / v15;
      if (v16 <= 0.0)
      {
        v18 = asinf(v17);
      }

      else
      {
        v18 = atanf(v17);
      }

      v19 = v18 / v16;
      v11 = v32;
    }

    v20 = atan2f(v11.f32[1], v11.f32[0]);
    v22 = __sincosf_stret(v19);
    *&v21 = v22.__sinval;
    v31 = v21;
    v23 = __sincosf_stret(v20);
    *v14.f32 = vmul_n_f32(__PAIR64__(LODWORD(v23.__sinval), LODWORD(v23.__cosval)), *&v31);
    v14.i64[1] = __PAIR64__(HIDWORD(v31), LODWORD(v22.__cosval));
  }

  else
  {
    v13.i64[0] = 0x3F0000003FLL;
    v13.i64[1] = 0x3F0000003FLL;
    v14 = vnegq_f32(v13);
  }

  v24 = vaddq_f32(*(a1 + 144), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*(a1 + 96), v14.f32[0]), *(a1 + 112), *v14.f32, 1), *(a1 + 128), v14, 2));
  v25 = vaddq_f32(a2[5], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2[2], v24.f32[0]), a2[3], *v24.f32, 1), a2[4], v24, 2));
  v26 = a2[1].f32[1];
  v27 = vmulq_f32(v25, v25);
  *&v28 = v27.f32[2] + vaddv_f32(*v27.f32);
  *v27.f32 = vrsqrte_f32(v28);
  *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32)));
  v29 = acosf(COERCE_FLOAT(vmulq_n_f32(v25, COERCE_FLOAT(vmul_f32(*&v27, vrsqrts_f32(v28, vmul_f32(*&v27, *&v27))))).i32[2]));
  if (fabsf(v26) > 0.00000011921)
  {
    v30 = v26 * v29;
    if (v26 <= 0.0)
    {
      sinf(v30);
    }

    else
    {
      tanf(v30);
    }
  }
}

void sub_2434D52B8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2434D571C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

double zRotationForOrientation(int a1, int a2)
{
  if (!a1)
  {
    return 0.0;
  }

  if (a2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  v8[2] = v2;
  v8[3] = 2;
  v3 = -1;
  v4 = v8;
  do
  {
    v5 = *v4++;
    ++v3;
  }

  while (v5 != a1);
  result = v3 * 1.57079633;
  *&result = result;
  if (*&result > 3.14159265)
  {
    v7 = *&result + -6.28318531;
    *&result = v7;
  }

  return result;
}

uint64_t isViewFrustumContained(VCCamera *a1, VCCamera *a2, float a3)
{
  v4 = a1;
  v5 = a2;
  v6 = 0;
  __asm { FMOV            V12.2S, #1.0 }

  while (2)
  {
    v12 = 0;
    v13 = qword_2434F7710[v6++];
    v14 = vsub_f32(qword_2434F7710[v6 & 3], v13);
    do
    {
      warpPoint([(VCCamera *)v4 model], [(VCCamera *)v5 model], vmla_n_f32(v13, v14, v12 / 5.0));
      v16 = v15;
      v17 = [(VCCamera *)v5 hasGeometricDistortionCalibration];
      v18 = vand_s8(vcgez_f32(v16), vcge_f32(_D12, v16));
      v19 = vpmin_u32(v18, v18).u32[0];
      if (v17 && [(VCCamera *)v5 geometricDistortionCalibrationMaxRadius]>= 1)
      {
        [(VCCamera *)v5 sensorSize];
        v21 = v20;
        [(VCCamera *)v5 geometricDistortionCenter];
        v23 = v22;
        v24 = [(VCCamera *)v5 geometricDistortionCalibrationMaxRadius];
        v25 = 0;
        if ((v19 & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        v26 = vsub_f32(vmul_f32(v16, v21), v23);
        if (sqrtf(vaddv_f32(vmul_f32(v26, v26))) >= v24)
        {
          goto LABEL_13;
        }
      }

      else if ((v19 & 0x80000000) == 0)
      {
        v25 = 0;
        goto LABEL_13;
      }

      ++v12;
    }

    while (v12 != 6);
    if (v6 != 4)
    {
      continue;
    }

    break;
  }

  v25 = 1;
LABEL_13:

  return v25;
}

void sub_2434D6A84(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

float OUTLINED_FUNCTION_0(double a1, double a2, float32x4_t a3, float32x4_t a4)
{
  v4 = vsubq_f32(a4, a3);
  v5 = vmulq_f32(v4, v4);
  return sqrtf(v5.f32[2] + vaddv_f32(*v5.f32));
}

uint64_t OUTLINED_FUNCTION_2(float a1)
{
  v3 = *(v1 + 176);
  v4 = *(v1 + 160);

  return isViewFrustumContained(v3, v4, a1);
}

float ApplyMotionConstraints(float result, float a2, float a3)
{
  if (a2 >= result)
  {
    result = a2;
  }

  if (result >= a3)
  {
    return a3;
  }

  return result;
}

float CombineMotionConstraints(float result, double a2, float a3)
{
  if (result <= a3)
  {
    return a3;
  }

  return result;
}

float ComputeSizeVelocityConstraints(void *a1)
{
  v1 = a1;
  [v1 zoomInSpeedMultiplier];
  v3 = v2 * -0.3;
  [v1 zoomOutSpeedMultiplier];

  return v3;
}

float ComputeSizeFrameEdgeConstraints@<S0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v11 = a1;
  [v11 zoomAccelerationMultiplier];
  v13 = v12 * 0.425;
  CGRectGetVerticalRightMargin(a3, a4, a5, a6);
  v15 = v14;
  CGRectGetRightMargin(a3, a4, a5, a6);
  v17 = v16 + v16;
  LeftMargin = CGRectGetLeftMargin(a3, a4, a5, a6);
  if (v17 >= LeftMargin + LeftMargin)
  {
    v19 = CGRectGetLeftMargin(a3, a4, a5, a6);
  }

  else
  {
    CGRectGetRightMargin(a3, a4, a5, a6);
  }

  v20 = v13;
  v44 = v20;
  if (v15 >= v19 + v19)
  {
    CGRectGetRightMargin(a3, a4, a5, a6);
    v23 = v22 + v22;
    v24 = CGRectGetLeftMargin(a3, a4, a5, a6);
    if (v23 >= v24 + v24)
    {
      v25 = CGRectGetLeftMargin(a3, a4, a5, a6);
    }

    else
    {
      CGRectGetRightMargin(a3, a4, a5, a6);
    }

    v21 = v25 + v25;
  }

  else
  {
    CGRectGetVerticalRightMargin(a3, a4, a5, a6);
  }

  v43 = v21;
  v46.origin.x = a3;
  v46.origin.y = a4;
  v46.size.width = a5;
  v46.size.height = a6;
  CGRectGetWidth(v46);
  v47.origin.x = a3;
  v47.origin.y = a4;
  v47.size.width = a5;
  v47.size.height = a6;
  CGRectGetWidth(v47);
  v48.origin.x = a3;
  v48.origin.y = a4;
  v48.size.width = a5;
  v48.size.height = a6;
  v26.f64[0] = CGRectGetWidth(v48);
  *a2 = -v44;
  *(a2 + 4) = v44;
  v26.f64[1] = v43;
  *&v26.f64[0] = vcvt_f32_f64(v26);
  *&v26.f64[0] = vmul_n_f32(vadd_f32(*&v26.f64[0], *&v26.f64[0]), v44);
  *&v26.f64[0] = vsqrt_f32(vbic_s8(*&v26.f64[0], vcltz_f32(*&v26.f64[0])));
  v27 = vcgt_f32(*&v26.f64[0], vdup_n_s32(0x4CBEBC20u));
  *v26.f64 = -*v26.f64;
  *(a2 + 8) = vbsl_s8(v27, 0x4CBEBC20CCBEBC20, *&v26.f64[0]);
  *(a2 + 16) = 0x4CBEBC20CCBEBC20;
  [v11 viewportMinimumFOV];
  v45 = v28;

  v49.origin.x = a3;
  v49.origin.y = a4;
  v49.size.width = a5;
  v49.size.height = a6;
  v29 = CGRectGetMidX(v49) * -2.0 + 2.0;
  v50.origin.x = a3;
  v50.origin.y = a4;
  v50.size.width = a5;
  v50.size.height = a6;
  MidX = CGRectGetMidX(v50);
  v31 = MidX + MidX;
  v51.origin.x = a3;
  v51.origin.y = a4;
  v51.size.width = a5;
  v51.size.height = a6;
  v32 = CGRectGetMidX(v51);
  v33 = v32 * -2.0 + 2.0;
  v34 = v32 + v32;
  if (v29 >= v31)
  {
    v35 = v34;
  }

  else
  {
    v35 = v33;
  }

  v52.origin.x = a3;
  v52.origin.y = a4;
  v52.size.width = a5;
  v52.size.height = a6;
  if (v35 >= 1.0 - CGRectGetMinY(v52))
  {
    v56.origin.x = a3;
    v56.origin.y = a4;
    v56.size.width = a5;
    v56.size.height = a6;
    v40 = 1.0 - CGRectGetMinY(v56);
  }

  else
  {
    v53.origin.x = a3;
    v53.origin.y = a4;
    v53.size.width = a5;
    v53.size.height = a6;
    v36 = CGRectGetMidX(v53) * -2.0 + 2.0;
    v54.origin.x = a3;
    v54.origin.y = a4;
    v54.size.width = a5;
    v54.size.height = a6;
    v37 = CGRectGetMidX(v54);
    v38 = v37 + v37;
    v55.origin.x = a3;
    v55.origin.y = a4;
    v55.size.width = a5;
    v55.size.height = a6;
    v39 = CGRectGetMidX(v55);
    if (v36 >= v38)
    {
      v40 = v39 + v39;
    }

    else
    {
      v40 = v39 * -2.0 + 2.0;
    }
  }

  v41 = logf(v45);
  result = log(v40);
  *(a2 + 16) = v41;
  *(a2 + 20) = result;
  return result;
}

float ComputeSizeEaseInAccelerationConstraintsForVelocityAndDisplacement(void *a1, float a2, float a3)
{
  v5 = a1;
  [v5 zoomEaseInCurveB];
  v7 = v6;
  [v5 zoomEaseInCurveA];
  v9 = v8;
  [v5 zoomEaseInCurveB];
  [v5 zoomEaseInCurveA];
  v10 = fabsf(a2);
  if (a3 >= 0.0)
  {
    v11 = -100000000.0;
  }

  else
  {
    v11 = -(v7 - ((fabsf(sqrtf(v10)) * a3) * v9));
  }

  [v5 zoomAccelerationMultiplier];
  v13 = v11 * v12;
  [v5 zoomAccelerationMultiplier];

  return v13;
}

float ComputeXVelocityConstraints(void *a1, double a2, double a3, double a4)
{
  v4 = a4 / 3.0;
  [a1 horizontalSpeedMultiplier];
  v6 = v4 * v5;
  return -v6;
}

float ComputeYVelocityConstraints(void *a1, double a2, double a3, double a4, double a5)
{
  v5 = a5 / 3.0;
  [a1 verticalSpeedMultiplier];
  v7 = v5 * v6;
  return -v7;
}

float ComputeXFrameEdgeConstraints@<S0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, CGFloat a7@<D4>, CGFloat a8@<D5>, CGFloat a9@<D6>, CGFloat a10@<D7>)
{
  [a1 horizontalAccelerationMultiplier];
  v37 = v18;
  v39.origin.x = a3;
  v39.origin.y = a4;
  v39.size.width = a5;
  v39.size.height = a6;
  MinX = CGRectGetMinX(v39);
  v40.origin.x = a7;
  v40.origin.y = a8;
  v40.size.width = a9;
  v40.size.height = a10;
  v20 = MinX < CGRectGetMinX(v40);
  v21 = 0.0;
  if (!v20)
  {
    v41.origin.x = a3;
    v41.origin.y = a4;
    v41.size.width = a5;
    v41.size.height = a6;
    v22 = CGRectGetMinX(v41);
    v42.origin.x = a7;
    v42.origin.y = a8;
    v42.size.width = a9;
    v42.size.height = a10;
    v23 = v22 - CGRectGetMinX(v42);
    v21 = (v23 * 100.0) + (v23 * 100.0);
  }

  v36 = v21;
  v43.origin.x = a7;
  v43.origin.y = a8;
  v43.size.width = a9;
  v43.size.height = a10;
  MaxX = CGRectGetMaxX(v43);
  v44.origin.x = a3;
  v44.origin.y = a4;
  v44.size.width = a5;
  v44.size.height = a6;
  v25 = CGRectGetMaxX(v44);
  v26 = 0.0;
  if (MaxX >= v25)
  {
    v45.origin.x = a7;
    v45.origin.y = a8;
    v45.size.width = a9;
    v45.size.height = a10;
    v27 = CGRectGetMaxX(v45);
    v46.origin.x = a3;
    v46.origin.y = a4;
    v46.size.width = a5;
    v46.size.height = a6;
    v28 = v27 - CGRectGetMaxX(v46);
    v26 = (v28 * 100.0) + (v28 * 100.0);
  }

  v29 = a5 * 0.6 * v37;
  *a2 = -v29;
  *(a2 + 4) = v29;
  v30 = vmul_n_f32(__PAIR64__(LODWORD(v26), LODWORD(v36)), v29);
  v31 = vsqrt_f32(vbic_s8(v30, vcltz_f32(v30)));
  v32 = vcgt_f32(v31, vdup_n_s32(0x4CBEBC20u));
  v31.f32[0] = -v31.f32[0];
  *(a2 + 8) = vbsl_s8(v32, 0x4CBEBC20CCBEBC20, v31);
  v47.origin.x = a7;
  v47.origin.y = a8;
  v47.size.width = a9;
  v47.size.height = a10;
  v33 = a5 * 0.5;
  v34 = a5 * 0.5 + CGRectGetMinX(v47);
  v48.origin.x = a7;
  v48.origin.y = a8;
  v48.size.width = a9;
  v48.size.height = a10;
  result = CGRectGetMaxX(v48) - v33;
  *(a2 + 16) = v34;
  *(a2 + 20) = result;
  return result;
}

float ComputeYFrameEdgeConstraints@<S0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, CGFloat a7@<D4>, CGFloat a8@<D5>, CGFloat a9@<D6>, CGFloat a10@<D7>)
{
  [a1 verticalAccelerationMultiplier];
  v37 = v19;
  v39.origin.x = a3;
  v39.origin.y = a4;
  v39.size.width = a5;
  rect = a6;
  v39.size.height = a6;
  MinY = CGRectGetMinY(v39);
  v40.origin.x = a7;
  v40.origin.y = a8;
  v40.size.width = a9;
  v40.size.height = a10;
  v21 = MinY < CGRectGetMinY(v40);
  v22 = 0.0;
  if (!v21)
  {
    v41.origin.x = a3;
    v41.origin.y = a4;
    v41.size.width = a5;
    v41.size.height = rect;
    v23 = CGRectGetMinY(v41);
    v42.origin.x = a7;
    v42.origin.y = a8;
    v42.size.width = a9;
    v42.size.height = a10;
    v24 = v23 - CGRectGetMinY(v42);
    v22 = (v24 * 10000.0) + (v24 * 10000.0);
  }

  v36 = v22;
  v43.origin.x = a7;
  v43.origin.y = a8;
  v43.size.width = a9;
  v43.size.height = a10;
  MaxY = CGRectGetMaxY(v43);
  v44.origin.x = a3;
  v44.origin.y = a4;
  v44.size.width = a5;
  v44.size.height = rect;
  v26 = CGRectGetMaxY(v44);
  v27 = 0.0;
  if (MaxY >= v26)
  {
    v45.origin.x = a7;
    v45.origin.y = a8;
    v45.size.width = a9;
    v45.size.height = a10;
    v28 = CGRectGetMaxY(v45);
    v46.origin.x = a3;
    v46.origin.y = a4;
    v46.size.width = a5;
    v46.size.height = rect;
    v29 = v28 - CGRectGetMaxY(v46);
    v27 = (v29 * 10000.0) + (v29 * 10000.0);
  }

  v30 = a5 * 0.6 * v37;
  *a2 = -v30;
  *(a2 + 4) = v30;
  v31 = vmul_n_f32(__PAIR64__(LODWORD(v27), LODWORD(v36)), v30);
  v32 = vsqrt_f32(vbic_s8(v31, vcltz_f32(v31)));
  v33 = vcgt_f32(v32, vdup_n_s32(0x4CBEBC20u));
  v32.f32[0] = -v32.f32[0];
  *(a2 + 8) = vbsl_s8(v33, 0x4CBEBC20CCBEBC20, v32);
  v47.origin.x = a7;
  v47.origin.y = a8;
  v47.size.width = a9;
  v47.size.height = a10;
  v34 = CGRectGetMinY(v47);
  v48.origin.x = a7;
  v48.origin.y = a8;
  v48.size.width = a9;
  v48.size.height = a10;
  result = CGRectGetMaxY(v48) - rect;
  *(a2 + 16) = v34;
  *(a2 + 20) = result;
  return result;
}

float ComputeXEaseInAccelerationConstraintsForVelocityAndDisplacement(void *a1, float a2, float a3, float a4)
{
  v7 = a1;
  [v7 xEaseInCurveB];
  v9 = v8;
  [v7 xEaseInCurveA];
  v11 = v10;

  v12 = fabsf(a2 / a4);
  if ((a3 / a4) >= 0.0)
  {
    v13 = -100000000.0;
  }

  else
  {
    v13 = -(v9 - (((a3 / a4) * fabsf(sqrtf(v12))) * v11));
  }

  return v13 * a4;
}

float ComputeYEaseInAccelerationConstraintsForVelocityAndDisplacement(void *a1, float a2, float a3, float a4)
{
  v7 = a1;
  [v7 yEaseInCurveB];
  v9 = v8;
  [v7 yEaseInCurveA];
  v11 = v10;

  v12 = fabsf(a2 / a4);
  if ((a3 / a4) >= 0.0)
  {
    v13 = -100000000.0;
  }

  else
  {
    v13 = -(v9 - (((a3 / a4) * fabsf(sqrtf(v12))) * v11));
  }

  return v13 * a4;
}

float PlistReadFloat(void *a1, void *a2, float a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:v6];
    [v8 floatValue];
    a3 = v9;
  }

  return a3;
}

void _estimateGaussianWeights(int a1, float *a2, float a3)
{
  v3 = (a3 * a3) + (a3 * a3);
  if (v3 < 0.00000011921)
  {
    v3 = 0.00000011921;
  }

  if ((a1 & 0x80000000) == 0)
  {
    v4 = a2;
    v5 = (a1 - 1) / -2;
    v6 = (a1 - 1) / 2;
    if (v6 >= 0)
    {
      v7 = (a1 - 1) / 2;
    }

    else
    {
      v7 = (a1 - 1) / -2;
    }

    v8 = 0.0;
    v9 = a2;
    v10 = (a1 - 1) / -2;
    v11 = 1.0 / v3;
    do
    {
      v12 = v5;
      do
      {
        v13 = expf(-(((v10 * v10) + (v12 * v12)) * v11));
        *v9++ = v13;
        v8 = v8 + v13;
        ++v12;
      }

      while (v7 + 1 != v12);
      v14 = v10++ == v7;
    }

    while (!v14);
    do
    {
      v15 = v6 + v7 + 1;
      do
      {
        *v4 = *v4 / v8;
        ++v4;
        --v15;
      }

      while (v15);
      v14 = v5++ == v7;
    }

    while (!v14);
  }
}

void _getLineToRectIntersectionPoints(int8x8_t *a1, float32x2_t a2, int32x2_t a3, double a4, double a5, double a6, double a7)
{
  v12.f32[0] = a4;
  v21 = v12.i32[0];
  *&v13 = a5;
  v12.i32[1] = v13;
  *v14.i32 = a4 + a6;
  v18 = v12;
  v19 = v14.i32[0];
  v14.i32[1] = v13;
  v17 = v14;
  *a1 = _getlineToLineIntersectionPoint(a2, a3, v12, v14);
  *&v15 = a5 + a7;
  v16 = v15;
  v20 = __PAIR64__(v15, v19);
  a1[1] = _getlineToLineIntersectionPoint(a2, a3, v17, v20);
  v22 = __PAIR64__(v16, v21);
  a1[2] = _getlineToLineIntersectionPoint(a2, a3, v20, v22);
  a1[3] = _getlineToLineIntersectionPoint(a2, a3, v22, v18);
}

double simd_matrix3x3(float32x4_t a1)
{
  _S4 = a1.i32[1];
  _S5 = a1.i32[2];
  __asm { FMLS            S3, S5, V0.S[2] }

  _S6 = a1.i32[3];
  __asm { FMLA            S3, S6, V0.S[3] }

  v10 = vmuls_lane_f32(a1.f32[2], a1, 3);
  __asm
  {
    FMLA            S2, S4, V0.S[1]
    FMLA            S2, S6, V0.S[3]
    FMLA            S2, S5, V0.S[1]
    FMLA            S6, S5, V0.S[2]
  }

  *(&_D3 + 1) = (v10 + (a1.f32[0] * a1.f32[1])) + (v10 + (a1.f32[0] * a1.f32[1]));
  __asm { FMLS            S5, S4, V0.S[1] }

  return _D3;
}

void __destructor_8_s0_s8_s32(uint64_t a1)
{
  v2 = *(a1 + 32);
}

int8x8_t _getlineToLineIntersectionPoint(float32x2_t a1, int32x2_t a2, float32x2_t a3, int32x2_t a4)
{
  v4 = vsub_f32(a1, a3);
  *v5.f32 = vsub_f32(vzip1_s32(a3, a1), vzip1_s32(a4, a2));
  v6 = vzip2_s32(a4, a2);
  *v7.f32 = vsub_f32(vzip2_s32(a3, a1), v6);
  v6.f32[0] = (-v7.f32[1] * v5.f32[0]) + (v5.f32[1] * v7.f32[0]);
  v7.i64[1] = v7.i64[0];
  v5.i64[1] = v5.i64[0];
  v8 = vmlaq_n_f32(vmulq_n_f32(v5, -*&v4.i32[1]), v7, *v4.i32);
  v9 = vdivq_f32(v8, vdupq_lane_s32(v6, 0));
  v4.i32[0] = vmovn_s32(vcgeq_f32(xmmword_2434F7950, v9)).u32[0];
  v4.i32[1] = vmovn_s32(vcgeq_f32(v9, xmmword_2434F7950)).i32[1];
  v10 = vandq_s8(vmovl_s16(v4), xmmword_2434F7960);
  v10.i32[0] = vaddvq_s32(v10);
  v11.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v11.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v8.i32[0] = 15;
  v10.i64[0] = vceqq_s8(vandq_s8(v10, v11), vandq_s8(v8, v11)).u64[0];
  v12 = vdupq_lane_s8(*v10.i8, 0);
  return vbsl_s8((v10.i8[0] & 0xF | (16 * (v12.i8[1] & 0xF)) | ((v12.i8[2] & 0xF) << 8) & 0xFFF | ((v12.i8[3] & 0xFu) << 12) | ((v12.i8[4] & 0xF) << 16) & 0xFFFFFFFFFF0FFFFFLL | ((v12.i8[5] & 0xF) << 20) | ((v12.i8[6] & 0xF) << 24) | ((v12.i8[7] & 0xF) << 28) | ((v12.i8[8] & 0xF) << 32) | ((v12.i8[9] & 0xF) << 36) | ((v12.i8[10] & 0xF) << 40) | ((v12.i8[11] & 0xF) << 44) | ((v12.i8[12] & 0xF) << 48) | ((v12.i8[13] & 0xF) << 52) | ((v12.i8[14] & 0xF) << 56) | (v12.u8[15] << 60)), vmla_n_f32(a1, vsub_f32(a2, a1), v9.f32[0]), vneg_f32(0x80000000800000));
}

double CGRectSafeIntersection(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinX = CGRectGetMinX(*&a1);
  v25.origin.x = a5;
  v25.origin.y = a6;
  v25.size.width = a7;
  v25.size.height = a8;
  v16 = fmax(MinX, CGRectGetMinX(v25));
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  v17 = fmin(v16, CGRectGetMaxX(v26));
  *&MinX = v17;
  v27.origin.x = a1;
  v27.origin.y = a2;
  v27.size.width = a3;
  v27.size.height = a4;
  MinY = CGRectGetMinY(v27);
  v28.size.height = a8;
  v28.origin.x = a5;
  v28.origin.y = a6;
  v28.size.width = a7;
  fmax(MinY, CGRectGetMinY(v28));
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  CGRectGetMaxY(v29);
  v30.origin.x = a1;
  v30.origin.y = a2;
  v30.size.width = a3;
  v30.size.height = a4;
  MaxX = CGRectGetMaxX(v30);
  v31.origin.x = a5;
  v31.origin.y = a6;
  v31.size.width = a7;
  v31.size.height = a8;
  fmin(MaxX, CGRectGetMaxX(v31));
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  CGRectGetMinX(v32);
  v33.origin.x = a1;
  v33.origin.y = a2;
  v33.size.width = a3;
  v33.size.height = a4;
  CGRectGetMaxY(v33);
  v34.origin.x = a5;
  v34.origin.y = a6;
  v34.size.width = a7;
  v34.size.height = a8;
  CGRectGetMaxY(v34);
  v35.origin.x = a1;
  v35.origin.y = a2;
  v35.size.width = a3;
  v35.size.height = a4;
  CGRectGetMinY(v35);
  return *&MinX;
}

float ComputeSizeToFitSubjectsInDeadband(float result, double a2, double _D2, double a4, double a5, double _D5, double a7)
{
  *&a7 = *&a4 + (result * *&_D2);
  v8 = *(&a2 + 1);
  v9 = *(&_D2 + 1);
  __asm { FMLS            S5, S0, V2.S[1] }

  v13.f32[0] = fmaxf(*&a2, *&a7);
  v13.i32[1] = fminf(*(&a2 + 1), *&_D5);
  _NF = *&_D5 < *&a2;
  v14 = vdup_lane_s32(*&_D5, 0);
  if (!_NF)
  {
    v14 = v13;
  }

  v15 = COERCE_DOUBLE(vdup_lane_s32(*&a7, 0));
  if (*(&a2 + 1) < *&a7)
  {
    v9 = *(&_D2 + 1);
    *&v14 = v15;
  }

  v16 = 1.0 - *&_D2;
  _D7 = result * (v16 - v9) + 0.001;
  if (_D7 <= vsub_f32(vdup_lane_s32(v14, 1), v14).f32[0])
  {
    __asm { FMLS            S7, S0, V2.S[1] }

    _NF = *&_D7 < *&a2;
    v18.f32[0] = fmaxf(*&a2, *&a7);
    v18.i32[1] = fminf(*(&a2 + 1), *&_D7);
    v19 = COERCE_DOUBLE(vdup_lane_s32(*&_D7, 0));
    v20 = COERCE_DOUBLE(vdup_lane_s32(*&a7, 0));
    if (_NF)
    {
      *&v18 = v19;
    }

    v21 = *(&_D2 + 1);
    _NF = *(&a2 + 1) < *&a7;
    if (*(&a2 + 1) < *&a7)
    {
      *&v18 = v20;
    }

    v23 = vdup_lane_s32(v18, 1);
    if (!_NF)
    {
      v21 = *(&_D2 + 1);
    }

    v24 = vsub_f32(v23, v18);
    v25 = v16 - v21;
    result = v24.f32[0] / v25;
    *&v16 = *&a4 + (result * *&_D2);
    *&v20 = *(&a4 + 1) - (result * v21);
    _NF = *&v20 < *&a2;
    *&v26 = fmaxf(*&a2, *&v16);
    HIDWORD(v26) = fminf(*(&a2 + 1), *&v20);
    v27 = COERCE_DOUBLE(vdup_lane_s32(*&v20, 0));
    if (!_NF)
    {
      v27 = v26;
    }

    v28 = COERCE_DOUBLE(vdup_lane_s32(*&v16, 0));
    if (*(&a2 + 1) < *&v16)
    {
      *&v29 = v28;
    }

    else
    {
      *&v29 = v27;
    }

    if (fabsf(vsub_f32(vsub_f32(vdup_lane_s32(v29, 1), v29), v24).f32[0]) >= 0.001)
    {
      LODWORD(v30) = vdiv_f32(vsub_f32(*&a2, *&a4), *&_D2).u32[0];
      v31 = (*(&a4 + 1) - *(&a2 + 1)) / v21;
      v32 = fmaxf(v30, v31);
      *&v28 = *&a4 + (v32 * *&_D2);
      *v7.i32 = *(&a4 + 1) - (v32 * v21);
      _NF = *v7.i32 < *&a2;
      *&v33 = fmaxf(*&a2, *&v28);
      HIDWORD(v33) = fminf(*(&a2 + 1), *v7.i32);
      v34 = COERCE_DOUBLE(vdup_lane_s32(v7, 0));
      if (!_NF)
      {
        v34 = v33;
      }

      v35 = COERCE_DOUBLE(vdup_lane_s32(*&v28, 0));
      if (*(&a2 + 1) < *&v28)
      {
        *&v36 = v35;
      }

      else
      {
        *&v36 = v34;
      }

      v37 = vsub_f32(vdup_lane_s32(v36, 1), v36).f32[0];
      if (v30 < v31)
      {
        v38 = *&_D2;
      }

      else
      {
        v30 = (*(&a4 + 1) - *(&a2 + 1)) / v21;
        v38 = v21;
      }

      if (v32 * v25 + 0.001 > v37)
      {
        v39 = v38;
      }

      else
      {
        v30 = v32;
        v39 = *&_D2 + v21;
      }

      *&_D2 = *&a4 + (v30 * *&_D2);
      *&a4 = *(&a4 + 1) - (v30 * v21);
      _NF = *&a4 < *&a2;
      *&a2 = fmaxf(*&a2, *&_D2);
      HIDWORD(a2) = fminf(*(&a2 + 1), *&a4);
      v41 = COERCE_DOUBLE(vdup_lane_s32(*&a4, 0));
      if (_NF)
      {
        a2 = v41;
      }

      v42 = COERCE_DOUBLE(vdup_lane_s32(*&_D2, 0));
      if (v8 < *&_D2)
      {
        a2 = v42;
      }

      v43 = (vsub_f32(vdup_lane_s32(*&a2, 1), *&a2).f32[0] - v30 * v25) / (v25 + v39);
      return v30 + v43;
    }
  }

  return result;
}

float DetermineNewDeadbandMinComponent(double a1, double a2, double _D2, float a4, float _S4)
{
  v5 = *&a1;
  v6 = vaddv_f32(*&a1) * 0.5;
  v7 = _S4 * 0.5;
  *&a1 = v6 - v7;
  v8 = v6 + v7;
  v9 = *(&a2 + 1);
  v10 = v8 + 0.001;
  if (*&a2 + 0.001 <= *&a1)
  {
    if (v10 > v9)
    {
      *&a1 = fmaxf(*(&a2 + 1) - (v8 - *&a1), *&a2);
    }
  }

  else if (v10 <= v9)
  {
    *&a1 = fminf(*(&a2 + 1) - (v8 - *&a1), *&a2);
  }

  v11 = *&a1 + _S4;
  v12 = *(&a1 + 1);
  v13 = (*&a1 + _S4) + 0.001;
  if (v5 + 0.001 <= *&a1)
  {
    if (v13 > v12)
    {
      *&a1 = fmaxf(*(&a1 + 1) - (v11 - *&a1), v5);
    }
  }

  else if (v13 <= v12)
  {
    *&a1 = fminf(*(&a1 + 1) - (v11 - *&a1), v5);
  }

  v14 = a4 + (_S4 * *&_D2);
  __asm { FMLS            S3, S4, V2.S[1] }

  v20 = *&a1 + _S4;
  v21 = _S3;
  v22 = v20 + 0.001;
  if (v14 + 0.001 <= *&a1)
  {
    if (v22 > v21)
    {
      *&a1 = fmaxf(_S3 - (v20 - *&a1), v14);
    }
  }

  else if (v22 <= v21)
  {
    *&a1 = fminf(_S3 - (v20 - *&a1), v14);
  }

  return *&a1;
}

uint64_t PixelFormatIs420(int a1)
{
  result = 1;
  if (a1 > 792229423)
  {
    if (a1 <= 875704437)
    {
      if (a1 == 792229424)
      {
        return result;
      }

      v3 = 875704422;
      goto LABEL_14;
    }

    if (a1 != 875704438 && a1 != 2084070960)
    {
      v3 = 2084075056;
LABEL_14:
      if (a1 != v3)
      {
        return 0;
      }
    }
  }

  else
  {
    if (a1 <= 758670895)
    {
      if (a1 == 641230384)
      {
        return result;
      }

      v3 = 641234480;
      goto LABEL_14;
    }

    if (a1 != 758670896 && a1 != 758674992)
    {
      v3 = 792225328;
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t cachedTexturesFromPixelBuffer(__CVBuffer *a1, uint64_t a2, __CVMetalTextureCache *a3)
{
  image = 0;
  if (!a1)
  {
    cachedTexturesFromPixelBuffer_cold_6();
LABEL_76:
    v7 = 0;
    v8 = 4294954516;
    goto LABEL_73;
  }

  if (!a2)
  {
    cachedTexturesFromPixelBuffer_cold_5();
    goto LABEL_76;
  }

  *a2 = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v7 = 0;
  v8 = 4294954514;
  v9 = MTLPixelFormatR8Unorm;
  if (PixelFormatType <= 796419631)
  {
    if (PixelFormatType <= 758674991)
    {
      if (PixelFormatType <= 645424687)
      {
        if (PixelFormatType == 641230384)
        {
          goto LABEL_33;
        }

        v10 = 641234480;
        goto LABEL_32;
      }

      if (PixelFormatType != 645424688 && PixelFormatType != 645428784)
      {
        v10 = 758670896;
        goto LABEL_32;
      }

LABEL_29:
      v9 = 588;
      goto LABEL_33;
    }

    if (PixelFormatType > 762869295)
    {
      if (PixelFormatType != 762869296)
      {
        if (PixelFormatType == 792225328)
        {
          goto LABEL_33;
        }

        v10 = 792229424;
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (PixelFormatType == 758674992)
    {
      goto LABEL_33;
    }

    v11 = 762865200;
LABEL_28:
    if (PixelFormatType != v11)
    {
      goto LABEL_73;
    }

    goto LABEL_29;
  }

  if (PixelFormatType <= 1885745711)
  {
    if (PixelFormatType <= 875704421)
    {
      if (PixelFormatType == 796419632)
      {
        goto LABEL_29;
      }

      v11 = 796423728;
    }

    else
    {
      if (PixelFormatType == 875704422 || PixelFormatType == 875704438)
      {
        goto LABEL_33;
      }

      v11 = 1882468912;
    }

    goto LABEL_28;
  }

  if (PixelFormatType > 2084075055)
  {
    if (PixelFormatType == 2084075056)
    {
      goto LABEL_33;
    }

    if (PixelFormatType == 2088269360)
    {
      goto LABEL_29;
    }

    v11 = 2088265264;
    goto LABEL_28;
  }

  if (PixelFormatType == 1885745712)
  {
    goto LABEL_29;
  }

  v10 = 2084070960;
LABEL_32:
  if (PixelFormatType != v10)
  {
    goto LABEL_73;
  }

LABEL_33:
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v14 = *MEMORY[0x277CC4D50];
  v30 = *MEMORY[0x277CC4D50];
  v31 = &unk_28563D590;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v15 = *MEMORY[0x277CBECE8];
  if (CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], a3, a1, v7, v9, WidthOfPlane, HeightOfPlane, 0, &image))
  {
    cachedTexturesFromPixelBuffer_cold_1();
LABEL_79:
    v8 = 4294954510;
    goto LABEL_73;
  }

  v16 = CVMetalTextureGetTexture(image);
  v17 = *(a2 + 8);
  *(a2 + 8) = v16;

  if (!*(a2 + 8))
  {
    cachedTexturesFromPixelBuffer_cold_4();
    goto LABEL_79;
  }

  ++*a2;
  if (image)
  {
    CFRelease(image);
  }

  v18 = CVPixelBufferGetPixelFormatType(a1);
  v8 = 4294954514;
  v19 = MTLPixelFormatRG8Unorm;
  if (v18 > 796419631)
  {
    if (v18 > 1885745711)
    {
      if (v18 <= 2084075055)
      {
        if (v18 == 1885745712)
        {
          goto LABEL_63;
        }

        v20 = 2084070960;
        goto LABEL_66;
      }

      if (v18 == 2084075056)
      {
        goto LABEL_67;
      }

      if (v18 == 2088269360)
      {
        goto LABEL_63;
      }

      v21 = 2088265264;
    }

    else if (v18 <= 875704421)
    {
      if (v18 == 796419632)
      {
        goto LABEL_63;
      }

      v21 = 796423728;
    }

    else
    {
      if (v18 == 875704422 || v18 == 875704438)
      {
LABEL_67:
        v22 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
        v23 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
        v28 = v14;
        v29 = &unk_28563D590;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];

        if (CVMetalTextureCacheCreateTextureFromImage(v15, a3, a1, v24, v19, v22, v23, 1uLL, &image))
        {
          cachedTexturesFromPixelBuffer_cold_2();
        }

        else
        {
          v25 = CVMetalTextureGetTexture(image);
          v26 = *(a2 + 16);
          *(a2 + 16) = v25;

          if (*(a2 + 16))
          {
            ++*a2;
            if (image)
            {
              CFRelease(image);
            }

            v8 = 0;
            goto LABEL_72;
          }

          cachedTexturesFromPixelBuffer_cold_3();
        }

        v8 = 4294954510;
LABEL_72:
        v7 = v24;
        goto LABEL_73;
      }

      v21 = 1882468912;
    }

    goto LABEL_62;
  }

  if (v18 > 758674991)
  {
    if (v18 > 762869295)
    {
      if (v18 == 762869296)
      {
        goto LABEL_63;
      }

      if (v18 == 792225328)
      {
        goto LABEL_67;
      }

      v20 = 792229424;
      goto LABEL_66;
    }

    if (v18 == 758674992)
    {
      goto LABEL_67;
    }

    v21 = 762865200;
LABEL_62:
    if (v18 != v21)
    {
      goto LABEL_73;
    }

    goto LABEL_63;
  }

  if (v18 > 645424687)
  {
    if (v18 != 645424688 && v18 != 645428784)
    {
      v20 = 758670896;
      goto LABEL_66;
    }

LABEL_63:
    v19 = MTLPixelFormatRGBA8Uint|0x204;
    goto LABEL_67;
  }

  if (v18 == 641230384)
  {
    goto LABEL_67;
  }

  v20 = 641234480;
LABEL_66:
  if (v18 == v20)
  {
    goto LABEL_67;
  }

LABEL_73:

  return v8;
}

uint64_t computeNumberOfCCWRotationsFromInputToFramingSpaceForCameraOrientation(int a1, int a2, int a3)
{
  if (!a1)
  {
    return 4;
  }

  if (a2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
  }

  v9[2] = v3;
  v9[3] = 1;
  v4 = -1;
  v5 = v9;
  do
  {
    v6 = *v5++;
    ++v4;
  }

  while (v6 != a1);
  v7 = v4 + 2;
  if (a3)
  {
    v7 = v4;
  }

  if (a2)
  {
    v4 = v7;
  }

  return (4 - v4);
}

double rotatePointCCW(int a1, double a2, double a3)
{
  if (a1)
  {
    v5 = a1 * 1.57079633;
    v6 = __sincosf_stret(v5 * 0.5);
    v7 = vmulq_n_f32(xmmword_2434F7680, v6.__sinval);
    v8 = v7;
    v8.i32[3] = LODWORD(v6.__cosval);
    v9 = a2;
    v10 = a3;
    v11 = vmulq_f32(v8, xmmword_2434F7700);
    v12 = vnegq_f32(v11);
    v13 = vtrn2q_s32(v11, vtrn1q_s32(v11, v12));
    v14 = vmlaq_n_f32(vmulq_n_f32(vextq_s8(v11, v12, 8uLL), v10), vextq_s8(v13, v13, 8uLL), v9);
    v15 = vrev64q_s32(v11);
    v15.i32[0] = v12.i32[1];
    v15.i32[3] = v12.i32[2];
    v16 = vmlaq_f32(v14, 0, v15);
    v17 = vnegq_f32(v16);
    v18 = vtrn2q_s32(v16, vtrn1q_s32(v16, v17));
    v19 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v16, v17, 8uLL), *v7.f32, 1), vextq_s8(v18, v18, 8uLL), v7.f32[0]);
    v20 = vrev64q_s32(v16);
    v20.i32[0] = v17.i32[1];
    v20.i32[3] = v17.i32[2];
    return vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v16, v8, 3), v20, v7, 2), v19).f32[0];
  }

  return a2;
}

CGFloat rotateRectCCW(int a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (a1)
  {
    v9 = a1 * 1.57079633;
    v10 = __sincosf_stret(v9 * 0.5);
    v11 = vmulq_n_f32(xmmword_2434F7680, v10.__sinval);
    v55 = v11;
    v11.i32[3] = LODWORD(v10.__cosval);
    v54 = v11;
    *v11.i64 = a2;
    v12 = a3;
    v13 = a4;
    v14 = a5;
    MinX = CGRectGetMinX(*v11.f32);
    v56.origin.x = a2;
    v56.origin.y = a3;
    v56.size.width = a4;
    v56.size.height = a5;
    MaxX = CGRectGetMaxX(v56);
    v57.origin.x = a2;
    v57.origin.y = a3;
    v57.size.width = a4;
    v57.size.height = a5;
    MinY = CGRectGetMinY(v57);
    v58.origin.x = a2;
    v58.origin.y = a3;
    v58.size.width = a4;
    v58.size.height = a5;
    MaxY = CGRectGetMaxY(v58);
    v19 = MinX;
    v20 = MinY;
    v21 = vmulq_f32(v54, xmmword_2434F7700);
    v22 = vnegq_f32(v21);
    v23 = vtrn2q_s32(v21, vtrn1q_s32(v21, v22));
    v24 = vextq_s8(v23, v23, 8uLL);
    v25 = vextq_s8(v21, v22, 8uLL);
    v26 = vmulq_n_f32(v25, v20);
    v27 = vrev64q_s32(v21);
    v27.i32[0] = v22.i32[1];
    v27.i32[3] = v22.i32[2];
    v28 = vmlaq_f32(vmlaq_n_f32(v26, v24, v19), 0, v27);
    v29 = vnegq_f32(v28);
    v30 = vtrn2q_s32(v28, vtrn1q_s32(v28, v29));
    v31 = vrev64q_s32(v28);
    v31.i32[0] = v29.i32[1];
    v31.i32[3] = v29.i32[2];
    v32 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v28, v54, 3), v31, v55, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v28, v29, 8uLL), *v55.f32, 1), vextq_s8(v30, v30, 8uLL), v55.f32[0]));
    *v29.i32 = MaxX;
    v33 = vmlaq_f32(vmlaq_n_f32(v26, v24, *v29.i32), 0, v27);
    v34 = vnegq_f32(v33);
    v35 = vtrn2q_s32(v33, vtrn1q_s32(v33, v34));
    v36 = vrev64q_s32(v33);
    v36.i32[0] = v34.i32[1];
    v36.i32[3] = v34.i32[2];
    v37 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v33, v54, 3), v36, v55, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v33, v34, 8uLL), *v55.f32, 1), vextq_s8(v35, v35, 8uLL), v55.f32[0]));
    *&MaxY = MaxY;
    v38 = vmulq_n_f32(v25, *&MaxY);
    v39 = vmlaq_f32(vmlaq_n_f32(v38, v24, v19), 0, v27);
    v40 = vnegq_f32(v39);
    v41 = vtrn2q_s32(v39, vtrn1q_s32(v39, v40));
    v42 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v39, v40, 8uLL), *v55.f32, 1), vextq_s8(v41, v41, 8uLL), v55.f32[0]);
    v43 = vrev64q_s32(v39);
    v43.i32[0] = v40.i32[1];
    v43.i32[3] = v40.i32[2];
    v44 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v39, v54, 3), v43, v55, 2), v42);
    v45 = vmlaq_f32(vmlaq_n_f32(v38, v24, *v29.i32), 0, v27);
    v46 = vnegq_f32(v45);
    v47 = vtrn2q_s32(v45, vtrn1q_s32(v45, v46));
    v48 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v45, v46, 8uLL), *v55.f32, 1), vextq_s8(v47, v47, 8uLL), v55.f32[0]);
    v49 = vrev64q_s32(v45);
    v49.i32[0] = v46.i32[1];
    v49.i32[3] = v46.i32[2];
    v50 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v45, v54, 3), v49, v55, 2), v48);
    v32.i32[3] = 0;
    v37.i32[3] = 0;
    v51 = vminnmq_f32(v32, v37);
    v44.i32[3] = 0;
    v50.i32[3] = 0;
    v51.i32[3] = 0;
    v52 = vminnmq_f32(v44, v50);
    v52.i32[3] = 0;
    return vminnmq_f32(v51, v52).f32[0];
  }

  return a2;
}

double rotateRectInImageCCW(int a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v8 = a2;
  if (a1)
  {
    v9 = a1;
    MinX = CGRectGetMinX(*&a2);
    v28.origin.x = v8;
    v28.origin.y = a3;
    v28.size.width = a4;
    v28.size.height = a5;
    MaxX = CGRectGetMaxX(v28);
    v29.origin.x = v8;
    v29.origin.y = a3;
    v29.size.width = a4;
    v29.size.height = a5;
    MinY = CGRectGetMinY(v29);
    v30.origin.x = v8;
    v30.origin.y = a3;
    v30.size.width = a4;
    v30.size.height = a5;
    MaxY = CGRectGetMaxY(v30);
    if (v9 < 1)
    {
      v16 = MinX;
      v19 = MaxX;
    }

    else
    {
      v14 = v9;
      v15 = MinY;
      v16 = MinX;
      do
      {
        v17 = v16;
        v16 = v15;
        v15 = 1.0 - v17;
        --v14;
      }

      while (v14);
      v18 = v9;
      v19 = MaxX;
      do
      {
        v20 = v19;
        v19 = MinY;
        MinY = 1.0 - v20;
        --v18;
      }

      while (v18);
      v21 = v9;
      v22 = MaxY;
      do
      {
        v23 = MinX;
        MinX = v22;
        v22 = 1.0 - v23;
        --v21;
      }

      while (v21);
      do
      {
        v24 = MaxX;
        MaxX = MaxY;
        MaxY = 1.0 - v24;
        --v9;
      }

      while (v9);
    }

    if (MinX >= MaxX)
    {
      v25 = MaxX;
    }

    else
    {
      v25 = MinX;
    }

    if (v16 >= v19)
    {
      v26 = v19;
    }

    else
    {
      v26 = v16;
    }

    if (v26 >= v25)
    {
      return v25;
    }

    else
    {
      return v26;
    }
  }

  return v8;
}

float32x2_t distortPoint(float32x2_t *a1, float32x2_t a2)
{
  v2 = a1[15];
  v3 = vsub_f32(a2, v2);
  v4 = a1[16].f32[0] * vaddv_f32(vmul_f32(v3, v3));
  return vmla_n_f32(v2, v3, 1.0 / (((a1[21].f32[0] + ((a1[21].f32[1] + ((a1[22].f32[0] + ((a1[22].f32[1] + ((a1[23].f32[0] + ((a1[23].f32[1] + ((a1[24].f32[0] + (a1[24].f32[1] * v4)) * v4)) * v4)) * v4)) * v4)) * v4)) * v4)) * 0.01) + 1.0));
}

float32x2_t undistortPoint(float32x2_t *a1, float32x2_t a2)
{
  v3 = a1[15];
  v4 = vsub_f32(a2, v3);
  LODWORD(v5) = HIDWORD(*a1);
  v6.i32[0] = COERCE_FLOAT(*a1);
  v6.i32[1] = v5;
  v7 = a1[16].i32[1];
  v8 = vmul_f32(vcvt_f32_s32(v6), 0x3F0000003F000000);
  v9 = vmul_f32(v8, v8);
  v9.f32[0] = sqrtf(vaddv_f32(v9));
  v10 = (v9.f32[0] - v7);
  v11 = COERCE_FLOAT(*a1) / 2;
  if (v9.f32[0] <= v7)
  {
    v10 = 0;
  }

  v12 = __OFSUB__(v11, v7);
  v13 = v11 - v7;
  if ((v13 < 0) ^ v12 | (v13 == 0))
  {
    v13 = v10;
  }

  else
  {
    LODWORD(v5) = HIDWORD(*a1);
  }

  v14 = vsub_f32(*a1, v3).f32[0] - v13;
  if (v14 <= (v3.f32[0] - v13))
  {
    v14 = v3.f32[0] - v13;
  }

  v15 = v5 - v3.f32[1];
  if (v15 <= v3.f32[1])
  {
    LODWORD(v15) = HIDWORD(*&a1[15]);
  }

  if (v14 > v15)
  {
    v15 = v14;
  }

  v16 = vaddv_f32(vmul_f32(v4, v4));
  v9.f32[0] = sqrtf(v16);
  if (v9.f32[0] > v15)
  {
    v4 = vmul_n_f32(vdiv_f32(v4, vdup_lane_s32(v9, 0)), v15);
    v16 = vaddv_f32(vmul_f32(v4, v4));
  }

  v17 = a1[16].f32[0] * v16;
  return vmla_n_f32(v3, v4, 1.0 / (((a1[17].f32[0] + ((a1[17].f32[1] + ((a1[18].f32[0] + ((a1[18].f32[1] + ((a1[19].f32[0] + ((a1[19].f32[1] + ((a1[20].f32[0] + (a1[20].f32[1] * v17)) * v17)) * v17)) * v17)) * v17)) * v17)) * v17)) * 0.01) + 1.0));
}

uint64_t isCinematicFramingFrontCamera(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277CF3D20]])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x277CF3D08]];
  }

  return v2;
}

uint64_t isCinematicFramingAllowedCamera(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277CF3D20]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277CF3D08]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277CF3CD8]))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x277CF3CF8]];
  }

  return v2;
}

uint64_t isDeskCamAllowedCamera(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277CF3D20]])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x277CF3CF8]];
  }

  return v2;
}

BOOL _isRectAlmostEqual(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, float a9)
{
  v27 = CGRectIntersection(*&a1, *&a5);
  v24 = v27.size.width * v27.size.height;
  if (v24 == 0.0)
  {
    return 0;
  }

  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  v30.origin.x = a5;
  v30.origin.y = a6;
  v30.size.width = a7;
  v30.size.height = a8;
  v29 = CGRectUnion(v28, v30);
  *&v29.origin.x = v29.size.width * v29.size.height;
  return (v24 / *&v29.origin.x) >= a9;
}

id getVisionCoreProcessingDescriptorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVisionCoreProcessingDescriptorClass_softClass;
  v7 = getVisionCoreProcessingDescriptorClass_softClass;
  if (!getVisionCoreProcessingDescriptorClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getVisionCoreProcessingDescriptorClass_block_invoke;
    v3[3] = &unk_278DBCD18;
    v3[4] = &v4;
    __getVisionCoreProcessingDescriptorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2434E81C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getVisionCoreInferenceNetworkIdentifierCamGaze()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getVisionCoreInferenceNetworkIdentifierCamGazeSymbolLoc_ptr;
  v7 = getVisionCoreInferenceNetworkIdentifierCamGazeSymbolLoc_ptr;
  if (!getVisionCoreInferenceNetworkIdentifierCamGazeSymbolLoc_ptr)
  {
    v1 = VisionCoreLibrary();
    v5[3] = dlsym(v1, "VisionCoreInferenceNetworkIdentifierCamGaze");
    getVisionCoreInferenceNetworkIdentifierCamGazeSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getVisionCoreInferenceNetworkIdentifierCamGaze_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_2434E82C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t VisionCoreLibraryCore()
{
  if (!VisionCoreLibraryCore_frameworkLibrary)
  {
    VisionCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return VisionCoreLibraryCore_frameworkLibrary;
}

uint64_t __VisionCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VisionCoreLibraryCore_frameworkLibrary = result;
  return result;
}

id getVisionCoreResourceVersionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVisionCoreResourceVersionClass_softClass;
  v7 = getVisionCoreResourceVersionClass_softClass;
  if (!getVisionCoreResourceVersionClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getVisionCoreResourceVersionClass_block_invoke;
    v3[3] = &unk_278DBCD18;
    v3[4] = &v4;
    __getVisionCoreResourceVersionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2434E88F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVisionCoreResourceVersionClass_block_invoke(uint64_t a1)
{
  VisionCoreLibrary();
  result = objc_getClass("VisionCoreResourceVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVisionCoreResourceVersionClass_block_invoke_cold_1();
  }

  getVisionCoreResourceVersionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t VisionCoreLibrary()
{
  v1 = 0;
  result = VisionCoreLibraryCore();
  if (!result)
  {
    VisionCoreLibrary_cold_1(&v1);
  }

  return result;
}

Class __getVisionCoreProcessingDescriptorClass_block_invoke(uint64_t a1)
{
  VisionCoreLibrary();
  result = objc_getClass("VisionCoreProcessingDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVisionCoreProcessingDescriptorClass_block_invoke_cold_1();
  }

  getVisionCoreProcessingDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVisionCoreInferenceNetworkIdentifierCamGazeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionCoreLibrary();
  result = dlsym(v2, "VisionCoreInferenceNetworkIdentifierCamGaze");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVisionCoreInferenceNetworkIdentifierCamGazeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

float RectToState@<S0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  MinX = CGRectGetMinX(*&a2);
  *a1 = MinX;
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  MinY = CGRectGetMinY(v13);
  *(a1 + 4) = MinY;
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  result = CGRectGetWidth(v14);
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  *(a1 + 12) = 0;
  return result;
}

__n128 PivotDescriptionsToState@<Q0>(void *a1@<X0>, uint64_t a2@<X8>, __n128 _Q0@<Q0>, __n128 a4@<Q1>, float _S2@<S2>, float a6@<S3>)
{
  _S9 = _S2;
  v25 = _Q0;
  v9 = _Q0.n128_u32[2];
  __asm { FMLS            S1, S2, V0.S[2] }

  *a2 = _S1;
  v15 = _Q0.n128_f32[1];
  v16 = a1;
  LODWORD(v17) = v9;
  [v16 getHeightForWidth:v17];
  *(a2 + 8) = v25.n128_u32[2];
  *(a2 + 4) = v15 - (v18 * a6);
  _D1 = __PAIR64__(v25.n128_u32[1], a4.n128_u32[2]);
  __asm { FMLS            S0, S9, V2.S[2] }

  *(a2 + 12) = _S0;
  LODWORD(v21) = v9;
  [v16 getHeightDerivativeForWidth:v21 widthDerivative:{COERCE_DOUBLE(__PAIR64__(v25.n128_u32[1], a4.n128_u32[2]))}];
  v23 = v22;

  *(a2 + 16) = a4.n128_f32[1] - (v23 * a6);
  result = a4;
  *(a2 + 20) = a4.n128_u32[2];
  return result;
}

float ComputeTPivot(float a1, float a2, float a3, float a4, float a5)
{
  v5 = a2 - a1;
  v6 = a4 - a3;
  if (vabds_f32(v5, v6) >= 0.001)
  {
    v7 = v5 - v6;
    v8 = (a3 - a1) / v7;
    a5 = 1.0;
    v9 = v8 >= 1.0 || v8 <= 0.0;
    v10 = a1 - a3;
    v11 = (v10 + (v7 * v8)) * (v10 + (v7 * v8));
    if (v9)
    {
      v11 = *"(knN";
    }

    if (((v10 + (v7 * 0.0)) * (v10 + (v7 * 0.0))) < v11)
    {
      v8 = 0.0;
      v11 = (v10 + (v7 * 0.0)) * (v10 + (v7 * 0.0));
    }

    if (((v10 + v7) * (v10 + v7)) >= v11)
    {
      return v8;
    }
  }

  return a5;
}

uint64_t __filterTracksThatCanFitInView_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *(a1 + 64);
  v22 = *(a1 + 80);
  v5 = a3;
  [a2 faceBoundingBoxForFramingAtTime:&v21];
  v10 = distanceToViewport(v6, v7, v8, v9, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  v21 = *(a1 + 64);
  v22 = *(a1 + 80);
  [v5 faceBoundingBoxForFramingAtTime:&v21];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = distanceToViewport(v12, v14, v16, v18, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  if (v10 < v19)
  {
    return -1;
  }

  else
  {
    return v10 != v19;
  }
}

float distanceToViewport(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v28.origin.x = a5;
  v28.origin.y = a6;
  v28.size.width = a7;
  v28.size.height = a8;
  MidX = CGRectGetMidX(v28);
  v27 = MidX;
  v15 = MidX;
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  MinX = v15;
  if (CGRectGetMinX(v29) <= v15)
  {
    v30.origin.x = a1;
    v30.origin.y = a2;
    v30.size.width = a3;
    v30.size.height = a4;
    MinX = CGRectGetMinX(v30);
  }

  v31.origin.x = a1;
  v31.origin.y = a2;
  v31.size.width = a3;
  v31.size.height = a4;
  if (MinX <= CGRectGetMaxX(v31))
  {
    v34.origin.x = a1;
    v34.origin.y = a2;
    v34.size.width = a3;
    v34.size.height = a4;
    MaxX = CGRectGetMaxX(v34);
  }

  else
  {
    v32.origin.x = a1;
    v32.origin.y = a2;
    v32.size.width = a3;
    v32.size.height = a4;
    if (CGRectGetMinX(v32) > v15)
    {
      goto LABEL_8;
    }

    v33.origin.x = a1;
    v33.origin.y = a2;
    v33.size.width = a3;
    v33.size.height = a4;
    MaxX = CGRectGetMinX(v33);
  }

  v15 = MaxX;
LABEL_8:
  v35.origin.x = a5;
  v35.origin.y = a6;
  v35.size.width = a7;
  v35.size.height = a8;
  MidY = CGRectGetMidY(v35);
  v19 = MidY;
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  MinY = MidY;
  if (CGRectGetMinY(v36) <= MidY)
  {
    v37.origin.x = a1;
    v37.origin.y = a2;
    v37.size.width = a3;
    v37.size.height = a4;
    MinY = CGRectGetMinY(v37);
  }

  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  if (MinY <= CGRectGetMaxY(v38))
  {
    v41.origin.x = a1;
    v41.origin.y = a2;
    v41.size.width = a3;
    v41.size.height = a4;
    MaxY = CGRectGetMaxY(v41);
    goto LABEL_14;
  }

  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  if (CGRectGetMinY(v39) <= v19)
  {
    v40.origin.x = a1;
    v40.origin.y = a2;
    v40.size.width = a3;
    v40.size.height = a4;
    MaxY = CGRectGetMinY(v40);
LABEL_14:
    v19 = MaxY;
  }

  v22 = v15;
  v23 = v19;
  return ((MidY - v23) * (MidY - v23)) + ((v27 - v22) * (v27 - v22));
}

void SpringAnimation<double,4ul>::update(uint64_t a1, __n128 a2)
{
  if (a2.n128_f64[0] > 0.00833333333)
  {
    do
    {
      v20 = a2;
      SpringAnimation<double,4ul>::update(a1, 0.00833333333);
      a2.n128_u64[1] = v20.n128_u64[1];
      a2.n128_f64[0] = v20.n128_f64[0] + -0.00833333333;
    }

    while (v20.n128_f64[0] + -0.00833333333 > 0.00833333333);
  }

  v21 = a2.n128_f64[0];
  v3 = SpringAnimation<double,4ul>::currentForce(a1);
  v4 = 0;
  *v23 = v3;
  v23[1] = v5;
  v23[2] = v6;
  v23[3] = v7;
  v22[0] = *(a1 + 8);
  v22[1] = v22[0];
  v22[2] = v22[0];
  v22[3] = v22[0];
  v24 = 0u;
  v25 = 0u;
  do
  {
    *(&v24 + v4 * 8) = vdivq_f64(*&v23[v4], *&v22[v4]);
    v4 += 2;
  }

  while (v4 != 4);
  v8 = 0;
  v9 = *(a1 + 56);
  v10 = (a1 + 88);
  v11 = vmulq_n_f64(v25, v21);
  v12 = vaddq_f64(vmulq_n_f64(v24, v21), *(a1 + 88));
  *(a1 + 88) = v12;
  v13 = vaddq_f64(v11, *(a1 + 104));
  *(a1 + 104) = v13;
  v14 = vaddq_f64(vmulq_n_f64(v13, v21), *(a1 + 72));
  *(a1 + 56) = vaddq_f64(vmulq_n_f64(v12, v21), v9);
  *(a1 + 72) = v14;
  *(a1 + 120) = v21 + *(a1 + 120);
  v15 = 0.0;
  do
  {
    v15 = v15 + *&v23[v8] * *&v23[v8];
    ++v8;
  }

  while (v8 != 4);
  v16 = 0;
  v17 = 0.0;
  v18 = sqrt(v15);
  do
  {
    v17 = v17 + *(v10 + v16) * *(v10 + v16);
    v16 += 8;
  }

  while (v16 != 32);
  if (v18 < 0.01 && sqrt(v17) < 0.01)
  {
    v19 = *(a1 + 40);
    *(a1 + 56) = *(a1 + 24);
    *(a1 + 72) = v19;
    *v10 = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0;
  }
}

double SpringAnimation<double,4ul>::currentForce(uint64_t a1)
{
  v1 = sqrt(*a1 * *(a1 + 8));
  *&result = *&vaddq_f64(vmulq_n_f64(vsubq_f64(*(a1 + 56), *(a1 + 24)), -*a1), vmulq_n_f64(*(a1 + 88), -(*(a1 + 16) * (v1 + v1))));
  return result;
}

double CGRectGetLeftMargin(double a1, double a2, double a3, double a4)
{
  if (CGRectGetMinX(*&a1) < 0.0)
  {
    return 0.0;
  }

  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;

  return CGRectGetMinX(*&v9);
}

void CGRectGetRightMargin(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (CGRectGetMaxX(*&a1) <= 1.0)
  {
    v8.origin.x = a1;
    v8.origin.y = a2;
    v8.size.width = a3;
    v8.size.height = a4;
    CGRectGetMaxX(v8);
  }
}

void CGRectGetVerticalRightMargin(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (CGRectGetMaxY(*&a1) <= 1.0)
  {
    v8.origin.x = a1;
    v8.origin.y = a2;
    v8.size.width = a3;
    v8.size.height = a4;
    CGRectGetMaxY(v8);
  }
}

id defaultCalibrationDictionaryForPennsylvania()
{
  if (defaultCalibrationDictionaryForPennsylvania_onceToken != -1)
  {
    defaultCalibrationDictionaryForPennsylvania_cold_1();
  }

  v1 = defaultCalibrationDictionaryForPennsylvania_paCalibrationDictionary;

  return v1;
}

void __defaultCalibrationDictionaryForPennsylvania_block_invoke()
{
  v6[0] = &unk_28563D680;
  v6[1] = &unk_28563D770;
  v6[2] = &unk_28563D6A8;
  v0 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&_block_invoke_intrinsicBytes length:{48, @"IntrinsicMatrixReferenceDimensions", @"PixelSize", @"LensDistortionCenter", @"IntrinsicMatrix"}];
  v6[3] = v0;
  v5[4] = @"LensDistortionCoefficients";
  v1 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&_block_invoke_lensDistortionCoefficients length:32];
  v6[4] = v1;
  v5[5] = @"InverseLensDistortionCoefficients";
  v2 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&_block_invoke_inverseLensDistortionCoefficients length:32];
  v5[6] = @"DistortionCalibrationValidMaxRadiusInPixels";
  v6[5] = v2;
  v6[6] = &unk_28563D5D8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:7];
  v4 = defaultCalibrationDictionaryForPennsylvania_paCalibrationDictionary;
  defaultCalibrationDictionaryForPennsylvania_paCalibrationDictionary = v3;
}

id defaultCalibrationDictionaryForPictou()
{
  if (defaultCalibrationDictionaryForPictou_onceToken != -1)
  {
    defaultCalibrationDictionaryForPictou_cold_1();
  }

  v1 = defaultCalibrationDictionaryForPictou_ptCalibrationDictionary;

  return v1;
}

void __defaultCalibrationDictionaryForPictou_block_invoke()
{
  v6[0] = &unk_28563D6D0;
  v6[1] = &unk_28563D770;
  v6[2] = &unk_28563D6F8;
  v0 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&_block_invoke_2_intrinsicBytes length:{48, @"IntrinsicMatrixReferenceDimensions", @"PixelSize", @"LensDistortionCenter", @"IntrinsicMatrix"}];
  v6[3] = v0;
  v5[4] = @"LensDistortionCoefficients";
  v1 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&_block_invoke_2_lensDistortionCoefficients length:32];
  v6[4] = v1;
  v5[5] = @"InverseLensDistortionCoefficients";
  v2 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&_block_invoke_2_inverseLensDistortionCoefficients length:32];
  v5[6] = @"DistortionCalibrationValidMaxRadiusInPixels";
  v6[5] = v2;
  v6[6] = &unk_28563D608;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:7];
  v4 = defaultCalibrationDictionaryForPictou_ptCalibrationDictionary;
  defaultCalibrationDictionaryForPictou_ptCalibrationDictionary = v3;
}

uint64_t cachedTexturesFromPixelBuffer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t cachedTexturesFromPixelBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t cachedTexturesFromPixelBuffer_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t cachedTexturesFromPixelBuffer_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t cachedTexturesFromPixelBuffer_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t cachedTexturesFromPixelBuffer_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

void getVisionCoreInferenceNetworkIdentifierCamGaze_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getVisionCoreInferenceNetworkIdentifierCamGaze(void)"];
  [v0 handleFailureInFunction:v1 file:@"SubjectSelectionSession.m" lineNumber:32 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getVisionCoreResourceVersionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getVisionCoreResourceVersionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SubjectSelectionSession.m" lineNumber:31 description:{@"Unable to find class %s", "VisionCoreResourceVersion"}];

  __break(1u);
}

void VisionCoreLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *VisionCoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SubjectSelectionSession.m" lineNumber:29 description:{@"%s", *a1}];

  __break(1u);
}

void __getVisionCoreProcessingDescriptorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getVisionCoreProcessingDescriptorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SubjectSelectionSession.m" lineNumber:30 description:{@"Unable to find class %s", "VisionCoreProcessingDescriptor"}];

  __break(1u);
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x2822043A0](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}