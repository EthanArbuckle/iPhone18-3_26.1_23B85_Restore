uint64_t anonymous namespace::ring_updater_t<1ul,(anonymous namespace::ring_speed_t)1,false>::function(float32x4_t *a1, float *a2)
{
  v4 = *a2;
  v5 = (*a2 / 1280.0) * 6.28318531;
  v6 = vrsqrte_f32(0x40000000);
  v7 = vmul_f32(v6, vrsqrts_f32(0x40000000, vmul_f32(v6, v6)));
  LODWORD(v18) = vmul_f32(v7, vrsqrts_f32(0x40000000, vmul_f32(v7, v7))).u32[0];
  v8 = __sincosf_stret(v5 * 0.5);
  v9 = vmulq_n_f32(vmulq_n_f32(xmmword_25611D350, v18), v8.__sinval);
  v9.i32[3] = LODWORD(v8.__cosval);
  v17 = v9;
  v9.f32[0] = (v4 / 2630.0) * 6.28318531;
  v10 = __sincosf_stret(v9.f32[0] * 0.5);
  v11 = vmulq_n_f32(vmulq_n_f32(xmmword_25611D2F0, v18), v10.__sinval);
  v12 = vnegq_f32(v17);
  v13 = vtrn2q_s32(v17, vtrn1q_s32(v17, v12));
  v14 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v17, v12, 8uLL), *v11.f32, 1), vextq_s8(v13, v13, 8uLL), v11.f32[0]);
  v15 = vrev64q_s32(v17);
  v15.i32[0] = v12.i32[1];
  v15.i32[3] = v12.i32[2];
  a1[1] = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v17, v10.__cosval), v15, v11, 2), v14);
  if (*a2 >= 3366400.0)
  {
    *a2 = fmodf(*a2, 3366400.0);
  }

  return 0;
}

uint64_t anonymous namespace::ring_updater_t<0ul,(anonymous namespace::ring_speed_t)2,true>::function(float32x4_t *a1, float *a2)
{
  v4 = *a2;
  v5 = (*a2 / 600.0) * 6.28318531;
  v6 = vrsqrte_f32(0x40000000);
  v7 = vmul_f32(v6, vrsqrts_f32(0x40000000, vmul_f32(v6, v6)));
  LODWORD(v39) = vmul_f32(v7, vrsqrts_f32(0x40000000, vmul_f32(v7, v7))).u32[0];
  v8 = __sincosf_stret(v5 * 0.5);
  v9 = vmulq_n_f32(vmulq_n_f32(xmmword_25611D2E0, v39), v8.__sinval);
  v9.i32[3] = LODWORD(v8.__cosval);
  v38 = v9;
  v9.f32[0] = (v4 / 1200.0) * 6.28318531;
  v10 = __sincosf_stret(v9.f32[0] * 0.5);
  v11 = 0;
  v12 = vmulq_n_f32(vmulq_n_f32(xmmword_25611D2F0, v39), v10.__sinval);
  v13 = vnegq_f32(v38);
  v14 = vtrn2q_s32(v38, vtrn1q_s32(v38, v13));
  v15 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v38, v13, 8uLL), *v12.f32, 1), vextq_s8(v14, v14, 8uLL), v12.f32[0]);
  v16 = vrev64q_s32(v38);
  v16.i32[0] = v13.i32[1];
  v16.i32[3] = v13.i32[2];
  v17 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v38, v10.__cosval), v16, v12, 2), v15);
  a1[1] = v17;
  v18 = vmulq_f32(v17, xmmword_25611D300);
  v19 = vnegq_f32(v18);
  v20 = vtrn2q_s32(v18, vtrn1q_s32(v18, v19));
  v21 = vmlaq_f32(vmulq_f32(vextq_s8(v18, v19, 8uLL), 0), 0, vextq_s8(v20, v20, 8uLL));
  v22 = vrev64q_s32(v18);
  v22.i32[0] = v19.i32[1];
  v22.i32[3] = v19.i32[2];
  v23 = vaddq_f32(v22, v21);
  v24 = vnegq_f32(v23);
  v25 = vtrn2q_s32(v23, vtrn1q_s32(v23, v24));
  v26 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v23, v24, 8uLL), *v17.f32, 1), vextq_s8(v25, v25, 8uLL), v17.f32[0]);
  v27 = vrev64q_s32(v23);
  v27.i32[0] = v24.i32[1];
  v27.i32[3] = v24.i32[2];
  v28 = vmulq_f32(vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v23, v17, 3), v27, v17, 2), v26), xmmword_25611D040);
  v23.f32[0] = vaddv_f32(*v28.f32);
  *v24.i32 = fminf(fmaxf(((v28.f32[2] + v23.f32[0]) + 1.0) / 0.7, 0.0), 1.0);
  v29 = fminf(fmaxf(((v28.f32[2] + v23.f32[0]) + 0.3) / 0.6, 0.0), 1.0);
  v28.f32[0] = fminf(fmaxf(((v28.f32[2] + v23.f32[0]) + -0.3) / 0.7, 0.0), 1.0);
  v30 = vmlaq_n_f32(xmmword_25611D320, xmmword_25611D310, (*v24.i32 * *v24.i32) * ((*v24.i32 * -2.0) + 3.0));
  v31 = vmlaq_n_f32(v30, vsubq_f32(xmmword_25611D330, v30), (v29 * v29) * ((v29 * -2.0) + 3.0));
  v32 = vmlaq_n_f32(v31, vsubq_f32(xmmword_25611D340, v31), (v28.f32[0] * v28.f32[0]) * ((v28.f32[0] * -2.0) + 3.0));
  do
  {
    v42 = v32;
    v33 = *(&v42 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3)));
    if (v33 <= 0.04045)
    {
      v34 = v33 / 12.92;
    }

    else
    {
      v40 = v32;
      v34 = powf((v33 + 0.055) / 1.055, 2.4);
      v32 = v40;
    }

    v41 = v32;
    *(&v41 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3))) = v34;
    v35 = v41;
    v36 = v41;
    v36.i32[3] = v32.i32[3];
    ++v11;
    v32 = v36;
  }

  while (v11 != 3);
  v35.i32[3] = 1.0;
  a1[5] = v35;
  if (*a2 >= 720000.0)
  {
    *a2 = fmodf(*a2, 720000.0);
  }

  return 0;
}

uint64_t anonymous namespace::ring_updater_t<1ul,(anonymous namespace::ring_speed_t)2,true>::function(float32x4_t *a1, float *a2)
{
  v4 = *a2;
  v5 = (*a2 / 600.0) * 6.28318531;
  v6 = vrsqrte_f32(0x40000000);
  v7 = vmul_f32(v6, vrsqrts_f32(0x40000000, vmul_f32(v6, v6)));
  LODWORD(v39) = vmul_f32(v7, vrsqrts_f32(0x40000000, vmul_f32(v7, v7))).u32[0];
  v8 = __sincosf_stret(v5 * 0.5);
  v9 = vmulq_n_f32(vmulq_n_f32(xmmword_25611D350, v39), v8.__sinval);
  v9.i32[3] = LODWORD(v8.__cosval);
  v38 = v9;
  v9.f32[0] = (v4 / 1200.0) * 6.28318531;
  v10 = __sincosf_stret(v9.f32[0] * 0.5);
  v11 = 0;
  v12 = vmulq_n_f32(vmulq_n_f32(xmmword_25611D2F0, v39), v10.__sinval);
  v13 = vnegq_f32(v38);
  v14 = vtrn2q_s32(v38, vtrn1q_s32(v38, v13));
  v15 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v38, v13, 8uLL), *v12.f32, 1), vextq_s8(v14, v14, 8uLL), v12.f32[0]);
  v16 = vrev64q_s32(v38);
  v16.i32[0] = v13.i32[1];
  v16.i32[3] = v13.i32[2];
  v17 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v38, v10.__cosval), v16, v12, 2), v15);
  a1[1] = v17;
  v18 = vmulq_f32(v17, xmmword_25611D300);
  v19 = vnegq_f32(v18);
  v20 = vtrn2q_s32(v18, vtrn1q_s32(v18, v19));
  v21 = vmlaq_f32(vmulq_f32(vextq_s8(v18, v19, 8uLL), 0), 0, vextq_s8(v20, v20, 8uLL));
  v22 = vrev64q_s32(v18);
  v22.i32[0] = v19.i32[1];
  v22.i32[3] = v19.i32[2];
  v23 = vaddq_f32(v22, v21);
  v24 = vnegq_f32(v23);
  v25 = vtrn2q_s32(v23, vtrn1q_s32(v23, v24));
  v26 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v23, v24, 8uLL), *v17.f32, 1), vextq_s8(v25, v25, 8uLL), v17.f32[0]);
  v27 = vrev64q_s32(v23);
  v27.i32[0] = v24.i32[1];
  v27.i32[3] = v24.i32[2];
  v28 = vmulq_f32(vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v23, v17, 3), v27, v17, 2), v26), xmmword_25611D020);
  v23.f32[0] = vaddv_f32(*v28.f32);
  *v24.i32 = fminf(fmaxf(((v28.f32[2] + v23.f32[0]) + 1.0) / 0.7, 0.0), 1.0);
  v29 = fminf(fmaxf(((v28.f32[2] + v23.f32[0]) + 0.3) / 0.6, 0.0), 1.0);
  v28.f32[0] = fminf(fmaxf(((v28.f32[2] + v23.f32[0]) + -0.3) / 0.7, 0.0), 1.0);
  v30 = vmlaq_n_f32(xmmword_25611D320, xmmword_25611D310, (*v24.i32 * *v24.i32) * ((*v24.i32 * -2.0) + 3.0));
  v31 = vmlaq_n_f32(v30, vsubq_f32(xmmword_25611D330, v30), (v29 * v29) * ((v29 * -2.0) + 3.0));
  v32 = vmlaq_n_f32(v31, vsubq_f32(xmmword_25611D340, v31), (v28.f32[0] * v28.f32[0]) * ((v28.f32[0] * -2.0) + 3.0));
  do
  {
    v42 = v32;
    v33 = *(&v42 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3)));
    if (v33 <= 0.04045)
    {
      v34 = v33 / 12.92;
    }

    else
    {
      v40 = v32;
      v34 = powf((v33 + 0.055) / 1.055, 2.4);
      v32 = v40;
    }

    v41 = v32;
    *(&v41 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3))) = v34;
    v35 = v41;
    v36 = v41;
    v36.i32[3] = v32.i32[3];
    ++v11;
    v32 = v36;
  }

  while (v11 != 3);
  v35.i32[3] = 1.0;
  a1[5] = v35;
  if (*a2 >= 720000.0)
  {
    *a2 = fmodf(*a2, 720000.0);
  }

  return 0;
}

uint64_t anonymous namespace::ring_updater_t<0ul,(anonymous namespace::ring_speed_t)2,false>::function(float32x4_t *a1, float *a2)
{
  v4 = *a2;
  v5 = (*a2 / 600.0) * 6.28318531;
  v6 = vrsqrte_f32(0x40000000);
  v7 = vmul_f32(v6, vrsqrts_f32(0x40000000, vmul_f32(v6, v6)));
  LODWORD(v18) = vmul_f32(v7, vrsqrts_f32(0x40000000, vmul_f32(v7, v7))).u32[0];
  v8 = __sincosf_stret(v5 * 0.5);
  v9 = vmulq_n_f32(vmulq_n_f32(xmmword_25611D2E0, v18), v8.__sinval);
  v9.i32[3] = LODWORD(v8.__cosval);
  v17 = v9;
  v9.f32[0] = (v4 / 1200.0) * 6.28318531;
  v10 = __sincosf_stret(v9.f32[0] * 0.5);
  v11 = vmulq_n_f32(vmulq_n_f32(xmmword_25611D2F0, v18), v10.__sinval);
  v12 = vnegq_f32(v17);
  v13 = vtrn2q_s32(v17, vtrn1q_s32(v17, v12));
  v14 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v17, v12, 8uLL), *v11.f32, 1), vextq_s8(v13, v13, 8uLL), v11.f32[0]);
  v15 = vrev64q_s32(v17);
  v15.i32[0] = v12.i32[1];
  v15.i32[3] = v12.i32[2];
  a1[1] = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v17, v10.__cosval), v15, v11, 2), v14);
  if (*a2 >= 720000.0)
  {
    *a2 = fmodf(*a2, 720000.0);
  }

  return 0;
}

uint64_t anonymous namespace::ring_updater_t<1ul,(anonymous namespace::ring_speed_t)2,false>::function(float32x4_t *a1, float *a2)
{
  v4 = *a2;
  v5 = (*a2 / 600.0) * 6.28318531;
  v6 = vrsqrte_f32(0x40000000);
  v7 = vmul_f32(v6, vrsqrts_f32(0x40000000, vmul_f32(v6, v6)));
  LODWORD(v18) = vmul_f32(v7, vrsqrts_f32(0x40000000, vmul_f32(v7, v7))).u32[0];
  v8 = __sincosf_stret(v5 * 0.5);
  v9 = vmulq_n_f32(vmulq_n_f32(xmmword_25611D350, v18), v8.__sinval);
  v9.i32[3] = LODWORD(v8.__cosval);
  v17 = v9;
  v9.f32[0] = (v4 / 1200.0) * 6.28318531;
  v10 = __sincosf_stret(v9.f32[0] * 0.5);
  v11 = vmulq_n_f32(vmulq_n_f32(xmmword_25611D2F0, v18), v10.__sinval);
  v12 = vnegq_f32(v17);
  v13 = vtrn2q_s32(v17, vtrn1q_s32(v17, v12));
  v14 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v17, v12, 8uLL), *v11.f32, 1), vextq_s8(v13, v13, 8uLL), v11.f32[0]);
  v15 = vrev64q_s32(v17);
  v15.i32[0] = v12.i32[1];
  v15.i32[3] = v12.i32[2];
  a1[1] = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v17, v10.__cosval), v15, v11, 2), v14);
  if (*a2 >= 720000.0)
  {
    *a2 = fmodf(*a2, 720000.0);
  }

  return 0;
}

uint64_t anonymous namespace::ring_updater_t<0ul,(anonymous namespace::ring_speed_t)3,false>::function(float32x4_t *a1, float *a2)
{
  v4 = *a2;
  v5 = (*a2 / 1280.0) * 6.28318531;
  v6 = vrsqrte_f32(0x40000000);
  v7 = vmul_f32(v6, vrsqrts_f32(0x40000000, vmul_f32(v6, v6)));
  LODWORD(v18) = vmul_f32(v7, vrsqrts_f32(0x40000000, vmul_f32(v7, v7))).u32[0];
  v8 = __sincosf_stret(v5 * 0.5);
  v9 = vmulq_n_f32(vmulq_n_f32(xmmword_25611D2E0, v18), v8.__sinval);
  v9.i32[3] = LODWORD(v8.__cosval);
  v17 = v9;
  v9.f32[0] = (v4 / 2560.0) * 6.28318531;
  v10 = __sincosf_stret(v9.f32[0] * 0.5);
  v11 = vmulq_n_f32(vmulq_n_f32(xmmword_25611D2F0, v18), v10.__sinval);
  v12 = vnegq_f32(v17);
  v13 = vtrn2q_s32(v17, vtrn1q_s32(v17, v12));
  v14 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v17, v12, 8uLL), *v11.f32, 1), vextq_s8(v13, v13, 8uLL), v11.f32[0]);
  v15 = vrev64q_s32(v17);
  v15.i32[0] = v12.i32[1];
  v15.i32[3] = v12.i32[2];
  a1[1] = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v17, v10.__cosval), v15, v11, 2), v14);
  if (*a2 >= 3276800.0)
  {
    *a2 = fmodf(*a2, 3276800.0);
  }

  return 0;
}

uint64_t anonymous namespace::ring_updater_t<1ul,(anonymous namespace::ring_speed_t)3,false>::function(float32x4_t *a1, float *a2)
{
  v4 = *a2;
  v5 = (*a2 / 1280.0) * 6.28318531;
  v6 = vrsqrte_f32(0x40000000);
  v7 = vmul_f32(v6, vrsqrts_f32(0x40000000, vmul_f32(v6, v6)));
  LODWORD(v18) = vmul_f32(v7, vrsqrts_f32(0x40000000, vmul_f32(v7, v7))).u32[0];
  v8 = __sincosf_stret(v5 * 0.5);
  v9 = vmulq_n_f32(vmulq_n_f32(xmmword_25611D350, v18), v8.__sinval);
  v9.i32[3] = LODWORD(v8.__cosval);
  v17 = v9;
  v9.f32[0] = (v4 / 2560.0) * 6.28318531;
  v10 = __sincosf_stret(v9.f32[0] * 0.5);
  v11 = vmulq_n_f32(vmulq_n_f32(xmmword_25611D2F0, v18), v10.__sinval);
  v12 = vnegq_f32(v17);
  v13 = vtrn2q_s32(v17, vtrn1q_s32(v17, v12));
  v14 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v17, v12, 8uLL), *v11.f32, 1), vextq_s8(v13, v13, 8uLL), v11.f32[0]);
  v15 = vrev64q_s32(v17);
  v15.i32[0] = v12.i32[1];
  v15.i32[3] = v12.i32[2];
  a1[1] = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v17, v10.__cosval), v15, v11, 2), v14);
  if (*a2 >= 3276800.0)
  {
    *a2 = fmodf(*a2, 3276800.0);
  }

  return 0;
}

uint64_t anonymous namespace::coplanar_ring_updater<false>::function(float32x4_t *a1, float *a2)
{
  v3 = *a2;
  if (*a2 >= 1000.0)
  {
    v3 = fmodf(v3, 1000.0);
    *a2 = v3;
  }

  v5 = v3 * 0.00628318531;
  v6 = __sincosf_stret(v5 * 0.5);
  v7 = vmulq_n_f32(xmmword_25611D360, v6.__sinval);
  v7.i32[3] = LODWORD(v6.__cosval);
  a1[1] = v7;
  return 0;
}

BOOL LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_target<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>(uint64_t a1, float32x4_t *a2, int a3)
{
  if (*(a1 + 88))
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 80);
    *(a1 + 88) = 0;
  }

  f32 = a2[1].f32;
  v8 = vmulq_f32(*a1, *a2);
  *v8.f32 = vadd_f32(*v8.f32, *&vextq_s8(v8, v8, 8uLL));
  v7 = vaddv_f32(*v8.f32);
  v8.i32[0] = 1.0;
  if (v7 == 1.0)
  {
    LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_timing(a1, f32, a3, v8);
  }

  else
  {
    v9 = a2[2].f32[2];
    if (v9 < 0.0)
    {
      operator new();
    }

    *v13 = *f32;
    *&v13[16] = a2[2].i64[0];
    *&v13[24] = 0;
    LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::_set_timing(a1, v13, *v13);
    *v12 = *v13;
    *&v12[12] = *&v13[12];
    *a1 = *a2;
    *(a1 + 16) = *v12;
    *(a1 + 28) = *&v12[12];
    if (*(a1 + 32) <= 0.0)
    {
      v10 = *a1;
      *(a1 + 48) = *a1;
      *(a1 + 64) = v10;
    }

    else if (v9 > 0.0)
    {
      LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(a1, v9);
    }
  }

  return v7 != 1.0;
}

void LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_timing(uint64_t a1, uint64_t a2, int a3, float32x4_t a4)
{
  if (*(a1 + 88))
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 80);
    *(a1 + 88) = 0;
  }

  if (a3)
  {
    v7 = *(a1 + 32);
    if (v7 > 0.0)
    {
      if ((v8 = *(a1 + 40), a4.f32[0] = v7 - v8, v9 = *(a1 + 36) - v8, v10 = *(a2 + 24), v11 = *(a2 + 16) - v10, v12 = *(a2 + 20) - v10, (a3 & 2) != 0) && (v11 >= a4.f32[0] ? (v13 = v12 < v9) : (v13 = 1), v13) || (a3 & 4) != 0 && (v11 <= a4.f32[0] ? (v14 = v12 <= v9) : (v14 = 0), !v14))
      {
        if (v10 >= 0.0)
        {

          LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::_set_timing(a1, a2, a4);
        }

        else if ((a4.f32[0] + v10) > 0.0)
        {
          operator new();
        }
      }
    }
  }
}

void LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::_set_timing(uint64_t a1, __int128 *a2, float32x4_t a3)
{
  v3 = *(a2 + 6);
  if (v3 < 0.0)
  {
    __break(1u);
    return;
  }

  v6 = *(a2 + 4);
  v7 = a1 + 16;
  if (*(a1 + 32) > 0.0 && v6 > 0.0 && *v7 != *a2)
  {
    v8 = (*a2 * (1.0 - *v7)) / (*v7 * (1.0 - *a2));
    v9 = (COERCE_INT(fabs(v8)) - 0x800000) >> 24;
    v10 = v8 < 0.0 || v9 > 0x7E;
    if (!v10 || (LODWORD(v8) - 1) <= 0x7FFFFE)
    {
      v12 = *(a1 + 48);
      v13 = vmulq_f32(v12, *a1);
      *v13.f32 = vadd_f32(*v13.f32, *&vextq_s8(v13, v13, 8uLL));
      v13.f32[0] = vaddv_f32(*v13.f32);
      if (v13.f32[0] != 1.0)
      {
        v14 = 1.0 - v8;
        a3.i64[0] = 0;
        v15 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v13, a3)), 0), vnegq_f32(*a1), *a1);
        v16 = 1.0;
        v17 = 1.0 - (1.0 - v8);
        v18 = vsubq_f32(v12, v15);
        v19 = vmulq_f32(v18, v18);
        v45 = v15;
        v46 = *(a1 + 48);
        v20 = vaddq_f32(v12, v15);
        v21 = vmulq_f32(v20, v20);
        v22 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL)))));
        v23 = v22 + v22;
        v24 = (v22 + v22) == 0.0;
        v25 = 1.0;
        if (!v24)
        {
          v25 = sinf(v23) / v23;
        }

        v26 = v25;
        v27 = vrecpe_f32(LODWORD(v25));
        v28 = vmul_f32(v27, vrecps_f32(LODWORD(v26), v27));
        LODWORD(v29) = vmul_f32(v28, vrecps_f32(LODWORD(v26), v28)).u32[0];
        if ((v17 * v23) != 0.0)
        {
          v43 = v29;
          v28.f32[0] = sinf(v17 * v23);
          v29 = v43;
          v16 = v28.f32[0] / (v17 * v23);
        }

        v28.f32[0] = v17 * (v29 * v16);
        v30 = vdupq_lane_s32(v28, 0);
        v31 = v14 * v23;
        v32 = 1.0;
        if (v31 != 0.0)
        {
          v42 = v30;
          v44 = v29;
          v33 = sinf(v31);
          v30 = v42;
          v29 = v44;
          v32 = v33 / v31;
        }

        v34 = vmlaq_f32(vmulq_n_f32(v45, v14 * (v29 * v32)), v46, v30);
        v35 = vmulq_f32(v34, v34);
        v36 = vadd_f32(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
        if (vaddv_f32(v36) == 0.0)
        {
          v12 = xmmword_25611D010;
        }

        else
        {
          v37 = vadd_f32(v36, vdup_lane_s32(v36, 1)).u32[0];
          v38 = vrsqrte_f32(v37);
          v39 = vmul_f32(v38, vrsqrts_f32(v37, vmul_f32(v38, v38)));
          v12 = vmulq_n_f32(v34, vmul_f32(v39, vrsqrts_f32(v37, vmul_f32(v39, v39))).f32[0]);
        }
      }

      *(a1 + 48) = v12;
    }
  }

  v40 = *a2;
  *(v7 + 12) = *(a2 + 12);
  *v7 = v40;
  if (v3 <= 0.0)
  {
    if (v6 > 0.0)
    {
      return;
    }

    goto LABEL_29;
  }

  *(a1 + 40) = 0;
  if (v6 <= 0.0)
  {
LABEL_29:
    v41 = *a1;
    *(a1 + 48) = *a1;
    *(a1 + 64) = v41;
    return;
  }

  LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(a1, v3);
}

uint64_t LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(uint64_t a1, float a2)
{
  v10 = a2;
  v11 = a1;
  v2 = *(a1 + 88);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v9[0] = &v11;
  if ((*(&off_286829BD0 + v2))(v9, a1 + 80))
  {
    if (a2 == 0.0)
    {
      LOBYTE(v6) = 0;
      v7 = 0;
    }

    else
    {
      v9[0] = a1;
      v9[1] = &v10;
      v5 = *(a1 + 88);
      if (v5 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v11 = v9;
      v6 = (*(&off_286829BE8 + v5))(&v11, a1 + 80);
      v7 = HIBYTE(v6);
    }
  }

  else
  {
    LOBYTE(v6) = 1;
    v7 = 1;
  }

  return v6 | (v7 << 8);
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>>::__assign_alt[abi:ne200100]<2ul,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 8) == 2)
  {
    v4 = *a3;
    *a3 = 0;
    result = *a2;
    *a2 = v4;
    if (result)
    {

      JUMPOUT(0x259C5A8E0);
    }
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v7 = *a3;
    *a3 = 0;
    *a1 = v7;
    *(a1 + 8) = 2;
  }

  return result;
}

float *LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::_update(float *result, float a2)
{
  v3 = result[8];
  if (v3 <= 0.0)
  {
    goto LABEL_14;
  }

  if (a2 >= 0.0)
  {
    v4 = result;
    v5 = result[10] + a2;
    result[10] = v5;
    if (v5 < v3)
    {
      v6 = fmax((1.0 - powf(result[4], a2)), 0.0);
      v7 = v4[3];
      v9 = vmulq_f32(v7, *v4);
      v8 = vextq_s8(v9, v9, 8uLL);
      *v9.f32 = vadd_f32(*v9.f32, *v8.f32);
      v9.f32[0] = vaddv_f32(*v9.f32);
      if (v9.f32[0] != 1.0)
      {
        v8.i64[0] = 0;
        v10 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v9, v8)), 0), vnegq_f32(*v4), *v4);
        v11 = 1.0 - v6;
        v12 = vsubq_f32(v7, v10);
        v13 = vmulq_f32(v12, v12);
        v70 = v10;
        v72 = v4[3];
        v14 = vaddq_f32(v7, v10);
        v15 = vmulq_f32(v14, v14);
        v16 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL)))));
        v17 = 1.0;
        v18 = v16 + v16;
        if ((v16 + v16) != 0.0)
        {
          v17 = sinf(v16 + v16) / v18;
        }

        v19 = v17;
        v20 = vrecpe_f32(LODWORD(v17));
        v21 = vmul_f32(v20, vrecps_f32(LODWORD(v19), v20));
        v24 = vrecps_f32(LODWORD(v19), v21);
        LODWORD(v22) = vmul_f32(v21, v24).u32[0];
        v23 = 1.0;
        v24.i32[0] = 1.0;
        if ((v11 * v18) != 0.0)
        {
          v66 = v22;
          v24.f32[0] = sinf(v11 * v18);
          v22 = v66;
          v24.f32[0] = v24.f32[0] / (v11 * v18);
        }

        v24.f32[0] = v11 * (v22 * v24.f32[0]);
        v25 = vdupq_lane_s32(v24, 0);
        v26 = v18 * v6;
        if (v26 != 0.0)
        {
          v64 = v25;
          v67 = v22;
          v27 = sinf(v26);
          v25 = v64;
          v22 = v67;
          v23 = v27 / v26;
        }

        v28 = vmlaq_f32(vmulq_n_f32(v70, (v22 * v23) * v6), v72, v25);
        v29 = vmulq_f32(v28, v28);
        v30 = vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
        if (vaddv_f32(v30) == 0.0)
        {
          v7 = xmmword_25611D010;
        }

        else
        {
          v34 = vadd_f32(v30, vdup_lane_s32(v30, 1)).u32[0];
          v35 = vrsqrte_f32(v34);
          v36 = vmul_f32(v35, vrsqrts_f32(v34, vmul_f32(v35, v35)));
          v7 = vmulq_n_f32(v28, vmul_f32(v36, vrsqrts_f32(v34, vmul_f32(v36, v36))).f32[0]);
        }
      }

      v4[3] = v7;
      v37 = v4[4];
      v39 = vmulq_f32(v7, v37);
      v38 = vextq_s8(v39, v39, 8uLL);
      *v39.f32 = vadd_f32(*v39.f32, *v38.f32);
      v39.f32[0] = vaddv_f32(*v39.f32);
      if (v39.f32[0] != 1.0)
      {
        v38.i64[0] = 0;
        v40 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v39, v38)), 0), vnegq_f32(v7), v7);
        v41 = 1.0 - v6;
        v42 = vsubq_f32(v37, v40);
        v43 = vmulq_f32(v42, v42);
        v71 = v40;
        v73 = v4[4];
        v44 = vaddq_f32(v37, v40);
        v45 = vmulq_f32(v44, v44);
        v46 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL)))));
        v47 = 1.0;
        v48 = v46 + v46;
        if ((v46 + v46) != 0.0)
        {
          v47 = sinf(v46 + v46) / v48;
        }

        v49 = v47;
        v50 = vrecpe_f32(LODWORD(v47));
        v51 = vmul_f32(v50, vrecps_f32(LODWORD(v49), v50));
        v54 = vrecps_f32(LODWORD(v49), v51);
        LODWORD(v52) = vmul_f32(v51, v54).u32[0];
        v53 = 1.0;
        v54.i32[0] = 1.0;
        if ((v41 * v48) != 0.0)
        {
          v68 = v52;
          v54.f32[0] = sinf(v41 * v48);
          v52 = v68;
          v54.f32[0] = v54.f32[0] / (v41 * v48);
        }

        v54.f32[0] = v41 * (v52 * v54.f32[0]);
        v55 = vdupq_lane_s32(v54, 0);
        v56 = v48 * v6;
        if (v56 != 0.0)
        {
          v65 = v55;
          v69 = v52;
          v57 = sinf(v56);
          v55 = v65;
          v52 = v69;
          v53 = v57 / v56;
        }

        v58 = vmlaq_f32(vmulq_n_f32(v71, (v52 * v53) * v6), v73, v55);
        v59 = vmulq_f32(v58, v58);
        v60 = vadd_f32(*v59.i8, *&vextq_s8(v59, v59, 8uLL));
        if (vaddv_f32(v60) == 0.0)
        {
          v37 = xmmword_25611D010;
        }

        else
        {
          v61 = vadd_f32(v60, vdup_lane_s32(v60, 1)).u32[0];
          v62 = vrsqrte_f32(v61);
          v63 = vmul_f32(v62, vrsqrts_f32(v61, vmul_f32(v62, v62)));
          v37 = vmulq_n_f32(v58, vmul_f32(v63, vrsqrts_f32(v61, vmul_f32(v63, v63))).f32[0]);
        }
      }

      v33 = 0;
      v4[4] = v37;
      v32 = v5 >= v4[2].f32[1];
      return (v32 | (v33 << 8));
    }

    result[4] = fmaxf(fminf(nexttowardf(1.0, 0.0), 0.0), 0.0);
    v4[1].i8[4] = 0;
    v4[1].i8[12] = 0;
    v4[2].i64[0] = 0;
    v4[2].i32[2] = 0;
    v31 = *v4;
    v4[3] = *v4;
    v4[4] = v31;
LABEL_14:
    v32 = 1;
    v33 = 1;
    return (v32 | (v33 << 8));
  }

  __break(1u);
  return result;
}

uint64_t *LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(float)::{lambda(simd::quatf &)#1}::operator()<std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>>(uint64_t *result, float32x4_t **a2)
{
  v2 = result[1];
  if (*v2 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v4 = *result;
    v5 = *a2;
    v6 = *v2 + (*a2)[2].f32[2];
    (*a2)[2].f32[2] = v6;
    if (v6 >= 0.0)
    {
      v5[2].i32[2] = 0;
      v9 = fmax((*v2 - v6), 0.0);
      LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::_update(v4, v9);
      v10 = *a2;
      *a2 = 0;
      if (*(v4 + 88))
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4 + 80);
        *(v4 + 88) = 0;
      }

      LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_target<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>(v4, v10, 6);
      MEMORY[0x259C5A8E0](v10, 0x1000C40FC2635F5);
      v7 = LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(v4, v6);
      v8 = HIBYTE(v7);
    }

    else
    {
      LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::_update(v4, *v2);
      LOBYTE(v7) = 0;
      v8 = 0;
    }

    return (v7 | (v8 << 8));
  }

  return result;
}

void sub_256112EE0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x259C5A8E0](v1, 0x1000C40FC2635F5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(float)::{lambda(simd::quatf &)#1}::operator()<std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>(uint64_t *result, uint64_t *a2)
{
  v2 = result[1];
  if (*v2 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v4 = *result;
    v5 = *a2;
    v6 = *v2 + *(*a2 + 24);
    *(*a2 + 24) = v6;
    if (v6 >= 0.0)
    {
      *(v5 + 24) = 0;
      v9 = fmax((*v2 - v6), 0.0);
      LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::_update(v4, v9);
      v11 = *a2;
      *a2 = 0;
      if (*(v4 + 88))
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4 + 80);
        *(v4 + 88) = 0;
      }

      LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_timing(v4, v11, 6, v10);
      MEMORY[0x259C5A8E0](v11, 0x1000C40CBDA3C1BLL);
      v7 = LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(v4, v6);
      v8 = HIBYTE(v7);
    }

    else
    {
      LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::_update(v4, *v2);
      LOBYTE(v7) = 0;
      v8 = 0;
    }

    return (v7 | (v8 << 8));
  }

  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>>::__assign_alt[abi:ne200100]<1ul,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 8) == 1)
  {
    v4 = *a3;
    *a3 = 0;
    result = *a2;
    *a2 = v4;
    if (result)
    {

      JUMPOUT(0x259C5A8E0);
    }
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v7 = *a3;
    *a3 = 0;
    *a1 = v7;
    *(a1 + 8) = 1;
  }

  return result;
}

BOOL _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE10set_targetINS_18animation_target_tIS1_EEEEbOT_NS_25animation_target_option_tE(uint64_t a1, float32x4_t *a2, int a3)
{
  if (*(a1 + 88))
  {
    _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv4_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(a1 + 80);
    *(a1 + 88) = 0;
  }

  f32 = a2[1].f32;
  v7 = vmulq_f32(*a1, *a2);
  v8 = vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)));
  if (v8 == 1.0)
  {
    _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE10set_timingERKNS_18animation_timing_tENS_25animation_target_option_tE(a1, f32, a3);
  }

  else
  {
    v9 = a2[2].f32[2];
    if (v9 < 0.0)
    {
      operator new();
    }

    *v13 = *f32;
    *&v13[16] = a2[2].i64[0];
    *&v13[24] = 0;
    _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE11_set_timingERKNS_18animation_timing_tE(a1, v13);
    v10 = *a2;
    *(a1 + 28) = *&v13[12];
    v11 = *v13;
    *a1 = v10;
    *(a1 + 16) = v11;
    if (*(a1 + 32) <= 0.0)
    {
      *(a1 + 48) = v10;
      *(a1 + 64) = v10;
    }

    else if (v9 > 0.0)
    {
      _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE6updateEf(a1, v9);
    }
  }

  return v8 != 1.0;
}

uint64_t _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE10set_timingERKNS_18animation_timing_tENS_25animation_target_option_tE(uint64_t result, uint64_t a2, int a3)
{
  v5 = result;
  if (*(result + 88))
  {
    result = _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv4_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(result + 80);
    *(v5 + 88) = 0;
  }

  if (a3)
  {
    v6 = *(v5 + 32);
    if (v6 > 0.0)
    {
      if ((v7 = *(v5 + 40), v8 = v6 - v7, v9 = *(v5 + 36) - v7, v10 = *(a2 + 24), v11 = *(a2 + 16) - v10, v12 = *(a2 + 20) - v10, (a3 & 2) != 0) && (v11 >= v8 ? (v13 = v12 < v9) : (v13 = 1), v13) || (a3 & 4) != 0 && (v11 <= v8 ? (v14 = v12 <= v9) : (v14 = 0), !v14))
      {
        if (v10 >= 0.0)
        {

          return _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE11_set_timingERKNS_18animation_timing_tE(v5, a2);
        }

        else if ((v8 + v10) > 0.0)
        {
          operator new();
        }
      }
    }
  }

  return result;
}

uint64_t _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE11_set_timingERKNS_18animation_timing_tE(uint64_t result, __int128 *a2)
{
  v2 = *(a2 + 6);
  if (v2 < 0.0)
  {
    __break(1u);
    return result;
  }

  v3 = *(a2 + 4);
  v4 = (result + 16);
  if (*(result + 32) > 0.0 && v3 > 0.0 && *v4 != *a2)
  {
    v5 = (*a2 * (1.0 - *v4)) / (*v4 * (1.0 - *a2));
    v6 = v5 < 0.0 || (COERCE_INT(fabs((*a2 * (1.0 - *v4)) / (*v4 * (1.0 - *a2)))) - 0x800000) >> 24 > 0x7E;
    if (!v6 || (LODWORD(v5) - 1) <= 0x7FFFFE)
    {
      v8 = *(result + 48);
      v9 = vmulq_f32(v8, *result);
      if (vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL))) != 1.0)
      {
        v8 = vmlaq_n_f32(vmulq_n_f32(*result, 1.0 - v5), v8, 1.0 - (1.0 - v5));
      }

      *(result + 48) = v8;
    }
  }

  v10 = *a2;
  *(result + 28) = *(a2 + 12);
  *v4 = v10;
  if (v2 <= 0.0)
  {
    if (v3 > 0.0)
    {
      return result;
    }
  }

  else
  {
    *(result + 40) = 0;
    if (v3 > 0.0)
    {
      return _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE6updateEf(result, v2);
    }
  }

  v11 = *result;
  *(result + 48) = *result;
  *(result + 64) = v11;
  return result;
}

uint64_t _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE6updateEf(uint64_t a1, float a2)
{
  v10 = a2;
  v11 = a1;
  v2 = *(a1 + 88);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v9[0] = &v11;
  if ((*(&off_286829C00 + v2))(v9, a1 + 80))
  {
    if (a2 == 0.0)
    {
      LOBYTE(v6) = 0;
      v7 = 0;
    }

    else
    {
      v9[0] = a1;
      v9[1] = &v10;
      v5 = *(a1 + 88);
      if (v5 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v11 = v9;
      v6 = (*(&off_286829C18 + v5))(&v11, a1 + 80);
      v7 = HIBYTE(v6);
    }
  }

  else
  {
    LOBYTE(v6) = 1;
    v7 = 1;
  }

  return v6 | (v7 << 8);
}

uint64_t _ZNSt3__116__variant_detail12__assignmentINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv4_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEEE12__assign_altB8ne200100ILm2ESE_SE_EEvRNS0_5__altIXT_ET0_EEOT1_(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 8) == 2)
  {
    v4 = *a3;
    *a3 = 0;
    result = *a2;
    *a2 = v4;
    if (result)
    {

      JUMPOUT(0x259C5A8E0);
    }
  }

  else
  {
    result = _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv4_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(a1);
    v7 = *a3;
    *a3 = 0;
    *a1 = v7;
    *(a1 + 8) = 2;
  }

  return result;
}

float *_ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE7_updateEf(float *result, float a2)
{
  v3 = result[8];
  if (v3 <= 0.0)
  {
    goto LABEL_10;
  }

  if (a2 >= 0.0)
  {
    v4 = result;
    v5 = result[10] + a2;
    result[10] = v5;
    if (v5 < v3)
    {
      v6 = fmax((1.0 - powf(result[4], a2)), 0.0);
      v7 = v4[3];
      v8 = vmulq_f32(v7, *v4);
      if (vaddv_f32(vadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL))) != 1.0)
      {
        v7 = vmlaq_n_f32(vmulq_n_f32(*v4, v6), v7, 1.0 - v6);
      }

      v4[3] = v7;
      v9 = v4[4];
      v10 = vmulq_f32(v7, v9);
      if (vaddv_f32(vadd_f32(*v10.i8, *&vextq_s8(v10, v10, 8uLL))) != 1.0)
      {
        v9 = vmlaq_n_f32(vmulq_n_f32(v7, v6), v9, 1.0 - v6);
      }

      v11 = 0;
      v4[4] = v9;
      v12 = v5 >= v4[2].f32[1];
      return (v12 | (v11 << 8));
    }

    result[4] = fmaxf(fminf(nexttowardf(1.0, 0.0), 0.0), 0.0);
    v4[1].i8[4] = 0;
    v4[1].i8[12] = 0;
    v4[2].i64[0] = 0;
    v4[2].i32[2] = 0;
    v13 = *v4;
    v4[3] = *v4;
    v4[4] = v13;
LABEL_10:
    v12 = 1;
    v11 = 1;
    return (v12 | (v11 << 8));
  }

  __break(1u);
  return result;
}

uint64_t *_ZZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE6updateEfENKUlRT_E_clINSt3__110unique_ptrINS_18animation_target_tIS1_EENS8_14default_deleteISB_EEEEEENS_15animator_statusES5_(uint64_t *result, float32x4_t **a2)
{
  v2 = result[1];
  if (*v2 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v4 = *result;
    v5 = *a2;
    v6 = *v2 + (*a2)[2].f32[2];
    (*a2)[2].f32[2] = v6;
    if (v6 >= 0.0)
    {
      v5[2].i32[2] = 0;
      v9 = fmax((*v2 - v6), 0.0);
      _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE7_updateEf(v4, v9);
      v10 = *a2;
      *a2 = 0;
      if (*(v4 + 88))
      {
        _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv4_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(v4 + 80);
        *(v4 + 88) = 0;
      }

      _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE10set_targetINS_18animation_target_tIS1_EEEEbOT_NS_25animation_target_option_tE(v4, v10, 6);
      MEMORY[0x259C5A8E0](v10, 0x1000C40FC2635F5);
      v7 = _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE6updateEf(v4, v6);
      v8 = HIBYTE(v7);
    }

    else
    {
      _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE7_updateEf(v4, *v2);
      LOBYTE(v7) = 0;
      v8 = 0;
    }

    return (v7 | (v8 << 8));
  }

  return result;
}

void sub_256113808(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x259C5A8E0](v1, 0x1000C40FC2635F5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE6updateEfENKUlRT_E_clINSt3__110unique_ptrINS_18animation_timing_tENS8_14default_deleteISA_EEEEEENS_15animator_statusES5_(uint64_t *result, uint64_t *a2)
{
  v2 = result[1];
  if (*v2 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v4 = *result;
    v5 = *a2;
    v6 = *v2 + *(*a2 + 24);
    *(*a2 + 24) = v6;
    if (v6 >= 0.0)
    {
      *(v5 + 24) = 0;
      v9 = fmax((*v2 - v6), 0.0);
      _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE7_updateEf(v4, v9);
      v10 = *a2;
      *a2 = 0;
      if (*(v4 + 88))
      {
        _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv4_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(v4 + 80);
        *(v4 + 88) = 0;
      }

      _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE10set_timingERKNS_18animation_timing_tENS_25animation_target_option_tE(v4, v10, 6);
      MEMORY[0x259C5A8E0](v10, 0x1000C40CBDA3C1BLL);
      v7 = _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE6updateEf(v4, v6);
      v8 = HIBYTE(v7);
    }

    else
    {
      _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE7_updateEf(v4, *v2);
      LOBYTE(v7) = 0;
      v8 = 0;
    }

    return (v7 | (v8 << 8));
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__assignmentINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv4_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEEE12__assign_altB8ne200100ILm1ESB_SB_EEvRNS0_5__altIXT_ET0_EEOT1_(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 8) == 1)
  {
    v4 = *a3;
    *a3 = 0;
    result = *a2;
    *a2 = v4;
    if (result)
    {

      JUMPOUT(0x259C5A8E0);
    }
  }

  else
  {
    result = _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv4_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(a1);
    v7 = *a3;
    *a3 = 0;
    *a1 = v7;
    *(a1 + 8) = 1;
  }

  return result;
}

void std::vector<anonymous namespace::face_id_animator_t::quadrant_context_t>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = v4 - (v6 - *a1);
  if (v6 != *a1)
  {
    v8 = v5 + 192;
    v9 = v4 - 16 * ((v6 - *a1) >> 4) + 192;
    do
    {
      *(v9 - 192) = *(v8 - 192);
      *(v9 - 184) = 0;
      *(v9 - 176) = 0;
      *(v9 - 168) = 0;
      *(v9 - 184) = *(v8 - 184);
      v10 = *(v8 - 160);
      *(v9 - 168) = *(v8 - 168);
      *(v8 - 176) = 0;
      *(v8 - 168) = 0;
      *(v8 - 184) = 0;
      *(v9 - 144) = 0;
      *(v9 - 136) = 0;
      *(v9 - 160) = v10;
      *(v9 - 152) = 0;
      *(v9 - 152) = *(v8 - 152);
      *(v9 - 136) = *(v8 - 136);
      *(v8 - 152) = 0;
      *(v8 - 144) = 0;
      *(v8 - 136) = 0;
      v11 = *(v8 - 128);
      v12 = *(v8 - 96);
      *(v9 - 112) = *(v8 - 112);
      *(v9 - 96) = v12;
      *(v9 - 128) = v11;
      v13 = *(v8 - 16);
      v15 = *(v8 - 64);
      v14 = *(v8 - 48);
      *(v9 - 32) = *(v8 - 32);
      *(v9 - 16) = v13;
      *(v9 - 64) = v15;
      *(v9 - 48) = v14;
      *(v9 - 80) = *(v8 - 80);
      v16 = _ZNSt3__116__variant_detail18__move_constructorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EEC2B8ne200100EOSH_(v9, v8);
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = 0;
      *(v16 + 1) = *(v8 + 16);
      v16[4] = *(v8 + 32);
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      v17 = v8 + 48;
      v8 += 240;
      v9 = (v16 + 30);
    }

    while (v17 != v6);
    do
    {
      v5 += 240;
    }

    while (v5 != v6);
  }

  a2[1] = v7;
  v18 = *a1;
  *a1 = v7;
  a1[1] = v18;
  a2[1] = v18;
  v19 = a1[1];
  a1[1] = a2[2];
  a2[2] = v19;
  v20 = a1[2];
  a1[2] = a2[3];
  a2[3] = v20;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<anonymous namespace::face_id_animator_t::quadrant_context_t>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 240;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t _ZNSt3__116__variant_detail18__move_constructorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EEC2B8ne200100EOSH_(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  _ZNSt3__116__variant_detail6__ctorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEEE19__generic_constructB8ne200100INS0_18__move_constructorISF_LNS0_6_TraitE1EEEEEvRSG_OT_(a1, a2);
  return a1;
}

uint64_t _ZNSt3__116__variant_detail6__ctorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEEE19__generic_constructB8ne200100INS0_18__move_constructorISF_LNS0_6_TraitE1EEEEEvRSG_OT_(uint64_t a1, uint64_t a2)
{
  result = _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(a1);
  v5 = *(a2 + 8);
  if (v5 != -1)
  {
    v6 = a1;
    result = (*(&off_286829C48 + v5))(&v6, a2);
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 != -1)
  {
    result = (*(&off_286829C30 + v2))(&v3, result);
  }

  *(v1 + 8) = -1;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteISD_EEEENS9_INSA_18animation_timing_tENSE_ISH_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJS8_SG_SJ_EEEEEEDcSN_DpT0_(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    JUMPOUT(0x259C5A8E0);
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteISD_EEEENS9_INSA_18animation_timing_tENSE_ISH_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJS8_SG_SJ_EEEEEEDcSN_DpT0_(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    JUMPOUT(0x259C5A8E0);
  }

  return result;
}

void **_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteISD_EEEENS9_INSA_18animation_timing_tENSE_ISH_EEEEEEEE19__generic_constructB8ne200100INS0_18__move_constructorISK_LNS0_6_TraitE1EEEEEvRSL_OT_EUlSS_E_JONS0_6__baseILSO_1EJS8_SG_SJ_EEEEEEDcSR_DpT0_(void **result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *a2 = 0;
  *v2 = v3;
  return result;
}

void **_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteISD_EEEENS9_INSA_18animation_timing_tENSE_ISH_EEEEEEEE19__generic_constructB8ne200100INS0_18__move_constructorISK_LNS0_6_TraitE1EEEEEvRSL_OT_EUlSS_E_JONS0_6__baseILSO_1EJS8_SG_SJ_EEEEEEDcSR_DpT0_(void **result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *a2 = 0;
  *v2 = v3;
  return result;
}

void std::allocator_traits<std::allocator<anonymous namespace::face_id_animator_t::quadrant_context_t>>::destroy[abi:ne200100]<anonymous namespace::face_id_animator_t::quadrant_context_t,void,0>(uint64_t a1)
{
  v3 = (a1 + 208);
  _ZNSt3__16vectorIN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS1_27animator_interpolation_typeE0EEENS_9allocatorIS5_EEE16__destroy_vectorclB8ne200100Ev(&v3);
  _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(a1 + 192);
  v3 = (a1 + 40);
  std::vector<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void anonymous namespace::face_id_animator_t::quadrant_context_t::static_state_t::~static_state_t(_anonymous_namespace_::face_id_animator_t::quadrant_context_t::static_state_t *this)
{
  v3 = (this + 40);
  std::vector<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__16vectorIN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS1_27animator_interpolation_typeE0EEENS_9allocatorIS5_EEE16__destroy_vectorclB8ne200100Ev(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 96;
        _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev((v4 - 16));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::__hash_table<std::__hash_value_type<LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<LAUI_uniform_cubic_b_spline_renderer::spline_t::instance_t,LAUI_uniform_cubic_b_spline_renderer::spline_t>,LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<anonymous namespace::face_id_animator_t::ring_context_t>>,std::__unordered_map_hasher<LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<LAUI_uniform_cubic_b_spline_renderer::spline_t::instance_t,LAUI_uniform_cubic_b_spline_renderer::spline_t>,std::__hash_value_type<LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<LAUI_uniform_cubic_b_spline_renderer::spline_t::instance_t,LAUI_uniform_cubic_b_spline_renderer::spline_t>,LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<anonymous namespace::face_id_animator_t::ring_context_t>>,std::hash<LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<LAUI_uniform_cubic_b_spline_renderer::spline_t::instance_t,LAUI_uniform_cubic_b_spline_renderer::spline_t>>,std::equal_to<LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<LAUI_uniform_cubic_b_spline_renderer::spline_t::instance_t,LAUI_uniform_cubic_b_spline_renderer::spline_t>>,true>,std::__unordered_map_equal<LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<LAUI_uniform_cubic_b_spline_renderer::spline_t::instance_t,LAUI_uniform_cubic_b_spline_renderer::spline_t>,std::__hash_value_type<LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<LAUI_uniform_cubic_b_spline_renderer::spline_t::instance_t,LAUI_uniform_cubic_b_spline_renderer::spline_t>,LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<anonymous namespace::face_id_animator_t::ring_context_t>>,std::equal_to<LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<LAUI_uniform_cubic_b_spline_renderer::spline_t::instance_t,LAUI_uniform_cubic_b_spline_renderer::spline_t>>,std::hash<LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<LAUI_uniform_cubic_b_spline_renderer::spline_t::instance_t,LAUI_uniform_cubic_b_spline_renderer::spline_t>>,true>,std::allocator<std::__hash_value_type<LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<LAUI_uniform_cubic_b_spline_renderer::spline_t::instance_t,LAUI_uniform_cubic_b_spline_renderer::spline_t>,LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<anonymous namespace::face_id_animator_t::ring_context_t>>>>::__rehash_unique[abi:ne200100](uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void *std::unordered_map<LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<LAUI_uniform_cubic_b_spline_renderer::spline_t::instance_t,LAUI_uniform_cubic_b_spline_renderer::spline_t>,LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<anonymous namespace::face_id_animator_t::ring_context_t>>::try_emplace[abi:ne200100]<LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<anonymous namespace::face_id_animator_t::ring_context_t> const&>(void *result, void *a2)
{
  v2 = a2[1];
  v3 = result[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1];
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*result + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_22;
    }

LABEL_21:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (v7[2] != *a2 || v7[3] != v2)
  {
    goto LABEL_21;
  }

  return result;
}

float32x4_t anonymous namespace::morphable_quadrant_t<9ul>::convert(float32x4_t *a1, unsigned int a2, float32x4_t result)
{
  if (a2 != 2)
  {
    v4 = a2 == 3 || a2 == 0;
    if (a2 >= 2 && a2 != 3)
    {
    }

    v5 = 0;
    v6 = -1.0;
    if (v4)
    {
      v7 = -1.0;
    }

    else
    {
      v7 = 1.0;
    }

    if (a2 >= 2)
    {
      v6 = 1.0;
    }

    __asm { FMOV            V0.4S, #1.0 }

    result.i64[0] = __PAIR64__(LODWORD(v6), LODWORD(v7));
    do
    {
      a1[v5] = vmulq_f32(result, a1[v5]);
      ++v5;
    }

    while (v5 != 9);
    if (((a2 < 2) ^ v4))
    {
      v11 = a1 + 8;
      v12 = &a1[1];
      do
      {
        result = *(v12 - 16);
        *(v12 - 16) = *v11;
        *v11-- = result;
        _CF = v12 >= v11;
        v12 += 16;
      }

      while (!_CF);
    }
  }

  return result;
}

void *std::vector<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::allocator<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_256114468(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>,LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v6 += 24;
      a4 += 3;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v7;
        operator delete(v7);
      }

      v5 += 24;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>,LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>,LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>,LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>,LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::__split_buffer<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

uint64_t _ZNSt3__16vectorIN36LAUI_uniform_cubic_b_spline_renderer8spline_t7state_tENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJNS0_IDv3_fNS4_IS8_EEEEEEEPS3_DpOT_(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_12:
    std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::allocator<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (*(24 * v2 + 8) - *(24 * v2) <= 0x3FuLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  *&v16 = v7 + 24;
  v8 = a1[1];
  v9 = (v7 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>,LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>::~__split_buffer(&v14);
  return v13;
}

void sub_2561147F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_25611485C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<LAUI_uniform_cubic_b_spline_renderer_private::control_point>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
}

uint64_t *LAUI_uniform_cubic_b_spline_renderer::weighted_spline_t::weighted_spline_t<std::vector<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>>(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 8) = *a2;
  *(a1 + 24) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = a1 + 8;
  result = *(a1 + 8);
  v4 = *(v5 + 8);
  if (v4 == result)
  {
    __break(1u);
  }

  else
  {
    v6 = std::__minmax_element_impl[abi:ne200100]<std::__wrap_iter<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t *>,std::__wrap_iter<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t *>,std::__identity,LAUI_uniform_cubic_b_spline_renderer::weighted_spline_t::weighted_spline_t<std::vector<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>>(std::vector<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t> &&)::{lambda(LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t const&,LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t const)#1}>(result, v4);
    v7 = v6[1] - *v6;
    if (v7 != v8[1] - *v8)
    {
      __assert_rtn("weighted_spline_t", "LAUICubicBSplineRenderer.h", 1508, "minimum_control_point_count == maximum_control_point_count");
    }

    *a1 = v7 >> 4;
    return a1;
  }

  return result;
}

uint64_t *std::__minmax_element_impl[abi:ne200100]<std::__wrap_iter<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t *>,std::__wrap_iter<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t *>,std::__identity,LAUI_uniform_cubic_b_spline_renderer::weighted_spline_t::weighted_spline_t<std::vector<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>>(std::vector<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t> &&)::{lambda(LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t const&,LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t const)#1}>(uint64_t *result, uint64_t *a2)
{
  v2 = result;
  if (result != a2 && result + 3 != a2)
  {
    v4 = result[3];
    v5 = result[4] - v4;
    v6 = *result;
    v7 = result[1] - *result;
    if (v5 >= v7)
    {
      v8 = result + 3;
    }

    else
    {
      result += 3;
      v8 = v2;
    }

    v9 = v2 + 6;
    if (v9 != a2)
    {
      v10 = v5 >= v7;
      if (v5 >= v7)
      {
        v11 = v4;
      }

      else
      {
        v11 = v6;
      }

      if (v10)
      {
        v4 = v6;
      }

      while (v9 + 3 != a2)
      {
        v12 = v9[4] - v9[3];
        v13 = v9[1] - *v9;
        v14 = result[1];
        if (v12 >= v13)
        {
          if (v13 < v14 - v4)
          {
            v4 = *v9;
            result = v9;
          }

          if (v12 >= v8[1] - v11)
          {
            v11 = v9[3];
            v8 = v9 + 3;
          }
        }

        else
        {
          v4 = *result;
          if (v12 < v14 - *result)
          {
            v4 = v9[3];
            result = v9 + 3;
          }

          v15 = v8[1] - *v8;
          v16 = v13 >= v15;
          if (v13 >= v15)
          {
            v11 = *v9;
          }

          else
          {
            v11 = *v8;
          }

          if (v16)
          {
            v8 = v9;
          }
        }

        v9 += 6;
        if (v9 == a2)
        {
          return result;
        }
      }

      if (v9[1] - *v9 < (result[1] - *result))
      {
        return v9;
      }
    }
  }

  return result;
}

void *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100EmRKS1_(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a2);
  }

  return result;
}

void sub_256114AE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator_traits<std::allocator<anonymous namespace::face_id_animator_t::quadrant_context_t>>::construct[abi:ne200100]<anonymous namespace::face_id_animator_t::quadrant_context_t,anonymous namespace::face_id_animator_t::quadrant_context_t::static_state_t,anonymous namespace::face_id_state_t &,void,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v5 = *(a2 + 32);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 32) = v5;
  *(a1 + 40) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v6 = *(a2 + 64);
  v7 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v7;
  *(a1 + 64) = v6;
  *(a1 + 112) = 0u;
  v8 = a1 + 112;
  v9 = fmaxf(fminf(nexttowardf(1.0, 0.0), 0.0), 0.0);
  *(a1 + 128) = v9;
  *(a1 + 132) = 0;
  *(a1 + 140) = 0;
  *(a1 + 152) = 0;
  *(a1 + 144) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  v15 = v14;
  v16 = v9;
  v17 = 0;
  v18 = 0;
  v20 = 0;
  v19 = 0;
  _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE10set_targetINS_18animation_target_tIS1_EEEEbOT_NS_25animation_target_option_tE(v8, &v15, 0);
  _ZNSt3__16vectorIN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS1_27animator_interpolation_typeE0EEENS_9allocatorIS5_EEE7reserveEm((a1 + 208), v13 - v12);
  v10 = v12;
  v11 = v13;
  if (v12 != v13)
  {
    do
    {
      v15 = *v10;
      v16 = v9;
      v17 = 0;
      v18 = 0;
      v20 = 0;
      v19 = 0;
      v21 = v15;
      v22 = v15;
      v23[2] = 0;
      _ZNSt3__16vectorIN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS1_27animator_interpolation_typeE0EEENS_9allocatorIS5_EEE9push_backB8ne200100EOS5_(a1 + 208, &v15);
      _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(v23);
      ++v10;
    }

    while (v10 != v11);
    v10 = v12;
  }

  if (v10)
  {
    v13 = v10;
    operator delete(v10);
  }
}

void anonymous namespace::face_id_animator_t::quadrant_context_t::static_state_t::target_state(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 72);
  if (v4 >= 7)
  {
    goto LABEL_17;
  }

  v7 = qword_25611D660[v4];
  LODWORD(__p[0]) = 0;
  std::vector<float>::vector[abi:ne200100](v12, v7 + 1);
  v8 = *v12;
  *(v12[0] + v7) = 1065353216;
  *__p = v8;
  v15 = v13;
  v12[1] = 0;
  v13 = 0;
  v12[0] = 0;
  LAUI_uniform_cubic_b_spline_renderer::weighted_spline_t::state((a1 + 32), __p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  v9 = *(a2 + 72);
  if (v9 > 2)
  {
    v10 = 0uLL;
    if (v9 - 3 >= 4)
    {
      goto LABEL_17;
    }

LABEL_16:
    *(a3 + 32) = v10;
    return;
  }

  if (!*(a2 + 72))
  {
    v11 = 80;
    goto LABEL_15;
  }

  if (v9 == 1)
  {
    v11 = 64;
    goto LABEL_15;
  }

  if (v9 == 2)
  {
    v11 = 96;
LABEL_15:
    v10 = *(a1 + v11);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

void *_ZNSt3__16vectorIN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS1_27animator_interpolation_typeE0EEENS_9allocatorIS5_EEE7reserveEm(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 < 0x2AAAAAAAAAAAAABLL)
    {
      _ZNSt3__19allocatorIN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS1_27animator_interpolation_typeE0EEEE17allocate_at_leastB8ne200100Em(result, a2);
    }

    std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_256114E98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__114__split_bufferIN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS1_27animator_interpolation_typeE0EEERNS_9allocatorIS5_EEED2Ev(va);
  _Unwind_Resume(a1);
}

void *LAUI_uniform_cubic_b_spline_renderer::weighted_spline_t::state@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100EmRKS1_(&v16, *a1);
  v9 = a1[1];
  v8 = a1[2];
  if (v8 != v9)
  {
    v10 = 0;
    do
    {
      if (v10 >= (a2[1] - *a2) >> 2)
      {
        break;
      }

      v7.i32[0] = *(*a2 + 4 * v10);
      if (v7.f32[0] != 0.0)
      {
        v11 = (v9 + 24 * v10);
        v12 = *v11;
        if (v11[1] != *v11)
        {
          v13 = 0;
          v7 = vdupq_lane_s32(*v7.f32, 0);
          do
          {
            if (v13 >= (v17 - v16) >> 4)
            {
              break;
            }

            *(v16 + 16 * v13) = vmlaq_f32(*(v16 + 16 * v13), *(v12 + 16 * v13), v7);
            ++v13;
            v12 = *v11;
          }

          while (v13 < (v11[1] - *v11) >> 4);
          v9 = a1[1];
          v8 = a1[2];
        }
      }

      ++v10;
    }

    while (v10 < 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3));
  }

  v14 = v16;
  *a3 = v16;
  v15 = v17;
  *(a3 + 8) = v17;
  if ((v15 - v14) <= 0x3F)
  {
    __break(1u);
  }

  return result;
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2561150BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::allocator<float>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
}

void std::allocator<float>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

BOOL _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE10set_targetINS_18animation_target_tIS1_EEEEbOT_NS_25animation_target_option_tE(uint64_t a1, float32x4_t *a2, int a3)
{
  if (*(a1 + 88))
  {
    _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(a1 + 80);
    *(a1 + 88) = 0;
  }

  f32 = a2[1].f32;
  v7 = vmulq_f32(*a1, *a2);
  v8 = v7.f32[2] + vaddv_f32(*v7.f32);
  if (v8 == 1.0)
  {
    _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE10set_timingERKNS_18animation_timing_tENS_25animation_target_option_tE(a1, f32, a3);
  }

  else
  {
    v9 = a2[2].f32[2];
    if (v9 < 0.0)
    {
      operator new();
    }

    *v13 = *f32;
    *&v13[16] = a2[2].i64[0];
    *&v13[24] = 0;
    _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE11_set_timingERKNS_18animation_timing_tE(a1, v13);
    v10 = *a2;
    *(a1 + 28) = *&v13[12];
    v11 = *v13;
    *a1 = v10;
    *(a1 + 16) = v11;
    if (*(a1 + 32) <= 0.0)
    {
      *(a1 + 48) = v10;
      *(a1 + 64) = v10;
    }

    else if (v9 > 0.0)
    {
      _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE6updateEf(a1, v9);
    }
  }

  return v8 != 1.0;
}

uint64_t _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE10set_timingERKNS_18animation_timing_tENS_25animation_target_option_tE(uint64_t result, uint64_t a2, int a3)
{
  v5 = result;
  if (*(result + 88))
  {
    result = _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(result + 80);
    *(v5 + 88) = 0;
  }

  if (a3)
  {
    v6 = *(v5 + 32);
    if (v6 > 0.0)
    {
      if ((v7 = *(v5 + 40), v8 = v6 - v7, v9 = *(v5 + 36) - v7, v10 = *(a2 + 24), v11 = *(a2 + 16) - v10, v12 = *(a2 + 20) - v10, (a3 & 2) != 0) && (v11 >= v8 ? (v13 = v12 < v9) : (v13 = 1), v13) || (a3 & 4) != 0 && (v11 <= v8 ? (v14 = v12 <= v9) : (v14 = 0), !v14))
      {
        if (v10 >= 0.0)
        {

          return _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE11_set_timingERKNS_18animation_timing_tE(v5, a2);
        }

        else if ((v8 + v10) > 0.0)
        {
          operator new();
        }
      }
    }
  }

  return result;
}

uint64_t _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE11_set_timingERKNS_18animation_timing_tE(uint64_t result, __int128 *a2)
{
  v2 = *(a2 + 6);
  if (v2 < 0.0)
  {
    __break(1u);
    return result;
  }

  v3 = *(a2 + 4);
  v4 = (result + 16);
  if (*(result + 32) > 0.0 && v3 > 0.0 && *v4 != *a2)
  {
    v5 = (*a2 * (1.0 - *v4)) / (*v4 * (1.0 - *a2));
    v6 = v5 < 0.0 || (COERCE_INT(fabs((*a2 * (1.0 - *v4)) / (*v4 * (1.0 - *a2)))) - 0x800000) >> 24 > 0x7E;
    if (!v6 || (LODWORD(v5) - 1) <= 0x7FFFFE)
    {
      v8 = *(result + 48);
      v9 = vmulq_f32(v8, *result);
      if ((v9.f32[2] + vaddv_f32(*v9.f32)) != 1.0)
      {
        v8 = vmlaq_n_f32(vmulq_n_f32(*result, 1.0 - v5), v8, 1.0 - (1.0 - v5));
      }

      *(result + 48) = v8;
    }
  }

  v10 = *a2;
  *(result + 28) = *(a2 + 12);
  *v4 = v10;
  if (v2 <= 0.0)
  {
    if (v3 > 0.0)
    {
      return result;
    }
  }

  else
  {
    *(result + 40) = 0;
    if (v3 > 0.0)
    {
      return _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE6updateEf(result, v2);
    }
  }

  v11 = *result;
  *(result + 48) = *result;
  *(result + 64) = v11;
  return result;
}

uint64_t _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE6updateEf(uint64_t a1, float a2)
{
  v10 = a2;
  v11 = a1;
  v2 = *(a1 + 88);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v9[0] = &v11;
  if ((*(&off_286829C60 + v2))(v9, a1 + 80))
  {
    if (a2 == 0.0)
    {
      LOBYTE(v6) = 0;
      v7 = 0;
    }

    else
    {
      v9[0] = a1;
      v9[1] = &v10;
      v5 = *(a1 + 88);
      if (v5 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v11 = v9;
      v6 = (*(&off_286829C78 + v5))(&v11, a1 + 80);
      v7 = HIBYTE(v6);
    }
  }

  else
  {
    LOBYTE(v6) = 1;
    v7 = 1;
  }

  return v6 | (v7 << 8);
}

uint64_t _ZNSt3__116__variant_detail12__assignmentINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEEE12__assign_altB8ne200100ILm2ESE_SE_EEvRNS0_5__altIXT_ET0_EEOT1_(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 8) == 2)
  {
    v4 = *a3;
    *a3 = 0;
    result = *a2;
    *a2 = v4;
    if (result)
    {

      JUMPOUT(0x259C5A8E0);
    }
  }

  else
  {
    result = _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(a1);
    v7 = *a3;
    *a3 = 0;
    *a1 = v7;
    *(a1 + 8) = 2;
  }

  return result;
}

float *_ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE7_updateEf(float *result, float a2)
{
  v3 = result[8];
  if (v3 <= 0.0)
  {
    goto LABEL_10;
  }

  if (a2 >= 0.0)
  {
    v4 = result;
    v5 = result[10] + a2;
    result[10] = v5;
    if (v5 < v3)
    {
      v6 = fmax((1.0 - powf(result[4], a2)), 0.0);
      v7 = v4[3];
      v8 = vmulq_f32(v7, *v4);
      if ((v8.f32[2] + vaddv_f32(*v8.f32)) != 1.0)
      {
        v7 = vmlaq_n_f32(vmulq_n_f32(*v4, v6), v7, 1.0 - v6);
      }

      v4[3] = v7;
      v9 = v4[4];
      v10 = vmulq_f32(v7, v9);
      if ((v10.f32[2] + vaddv_f32(*v10.f32)) != 1.0)
      {
        v9 = vmlaq_n_f32(vmulq_n_f32(v7, v6), v9, 1.0 - v6);
      }

      v11 = 0;
      v4[4] = v9;
      v12 = v5 >= v4[2].f32[1];
      return (v12 | (v11 << 8));
    }

    result[4] = fmaxf(fminf(nexttowardf(1.0, 0.0), 0.0), 0.0);
    v4[1].i8[4] = 0;
    v4[1].i8[12] = 0;
    v4[2].i64[0] = 0;
    v4[2].i32[2] = 0;
    v13 = *v4;
    v4[3] = *v4;
    v4[4] = v13;
LABEL_10:
    v12 = 1;
    v11 = 1;
    return (v12 | (v11 << 8));
  }

  __break(1u);
  return result;
}

uint64_t *_ZZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE6updateEfENKUlRT_E_clINSt3__110unique_ptrINS_18animation_target_tIS1_EENS8_14default_deleteISB_EEEEEENS_15animator_statusES5_(uint64_t *result, float32x4_t **a2)
{
  v2 = result[1];
  if (*v2 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v4 = *result;
    v5 = *a2;
    v6 = *v2 + (*a2)[2].f32[2];
    (*a2)[2].f32[2] = v6;
    if (v6 >= 0.0)
    {
      v5[2].i32[2] = 0;
      v9 = fmax((*v2 - v6), 0.0);
      _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE7_updateEf(v4, v9);
      v10 = *a2;
      *a2 = 0;
      if (*(v4 + 88))
      {
        _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(v4 + 80);
        *(v4 + 88) = 0;
      }

      _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE10set_targetINS_18animation_target_tIS1_EEEEbOT_NS_25animation_target_option_tE(v4, v10, 6);
      MEMORY[0x259C5A8E0](v10, 0x1000C40FC2635F5);
      v7 = _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE6updateEf(v4, v6);
      v8 = HIBYTE(v7);
    }

    else
    {
      _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE7_updateEf(v4, *v2);
      LOBYTE(v7) = 0;
      v8 = 0;
    }

    return (v7 | (v8 << 8));
  }

  return result;
}

void sub_2561158D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x259C5A8E0](v1, 0x1000C40FC2635F5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE6updateEfENKUlRT_E_clINSt3__110unique_ptrINS_18animation_timing_tENS8_14default_deleteISA_EEEEEENS_15animator_statusES5_(uint64_t *result, uint64_t *a2)
{
  v2 = result[1];
  if (*v2 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v4 = *result;
    v5 = *a2;
    v6 = *v2 + *(*a2 + 24);
    *(*a2 + 24) = v6;
    if (v6 >= 0.0)
    {
      *(v5 + 24) = 0;
      v9 = fmax((*v2 - v6), 0.0);
      _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE7_updateEf(v4, v9);
      v10 = *a2;
      *a2 = 0;
      if (*(v4 + 88))
      {
        _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(v4 + 80);
        *(v4 + 88) = 0;
      }

      _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE10set_timingERKNS_18animation_timing_tENS_25animation_target_option_tE(v4, v10, 6);
      MEMORY[0x259C5A8E0](v10, 0x1000C40CBDA3C1BLL);
      v7 = _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE6updateEf(v4, v6);
      v8 = HIBYTE(v7);
    }

    else
    {
      _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE7_updateEf(v4, *v2);
      LOBYTE(v7) = 0;
      v8 = 0;
    }

    return (v7 | (v8 << 8));
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__assignmentINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEEE12__assign_altB8ne200100ILm1ESB_SB_EEvRNS0_5__altIXT_ET0_EEOT1_(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 8) == 1)
  {
    v4 = *a3;
    *a3 = 0;
    result = *a2;
    *a2 = v4;
    if (result)
    {

      JUMPOUT(0x259C5A8E0);
    }
  }

  else
  {
    result = _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(a1);
    v7 = *a3;
    *a3 = 0;
    *a1 = v7;
    *(a1 + 8) = 1;
  }

  return result;
}

void _ZNSt3__19allocatorIN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS1_27animator_interpolation_typeE0EEEE17allocate_at_leastB8ne200100Em(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void _ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS2_27animator_interpolation_typeE0EEEEEPS6_EEvRT_T0_SB_SB_(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 80;
    v7 = a2;
    do
    {
      *(v6 - 80) = *v7;
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[4];
      *(v6 - 32) = v7[3];
      *(v6 - 16) = v10;
      *(v6 - 64) = v8;
      *(v6 - 48) = v9;
      v11 = _ZNSt3__116__variant_detail18__move_constructorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EEC2B8ne200100EOSH_(v6, (v7 + 5));
      v7 += 6;
      v6 = v11 + 96;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev((v5 + 5));
      v5 += 6;
    }
  }
}

uint64_t _ZNSt3__114__split_bufferIN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS1_27animator_interpolation_typeE0EEERNS_9allocatorIS5_EEED2Ev(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(i - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t _ZNSt3__16vectorIN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS1_27animator_interpolation_typeE0EEENS_9allocatorIS5_EEE9push_backB8ne200100EOS5_(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = _ZNSt3__16vectorIN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS1_27animator_interpolation_typeE0EEENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJS5_EEEPS5_DpOT_(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = a2[1];
    v5 = a2[2];
    v6 = a2[4];
    v3[3] = a2[3];
    v3[4] = v6;
    v3[1] = v4;
    v3[2] = v5;
    _ZNSt3__116__variant_detail18__move_constructorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EEC2B8ne200100EOSH_((v3 + 5), (a2 + 5));
    result = (v3 + 6);
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t _ZNSt3__16vectorIN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS1_27animator_interpolation_typeE0EEENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJS5_EEEPS5_DpOT_(uint64_t a1, _OWORD *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    _ZNSt3__19allocatorIN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS1_27animator_interpolation_typeE0EEEE17allocate_at_leastB8ne200100Em(a1, v6);
  }

  v7 = 96 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[4];
  *(v7 + 48) = a2[3];
  *(v7 + 64) = v10;
  *(v7 + 32) = v9;
  *v7 = *a2;
  *(v7 + 16) = v8;
  _ZNSt3__116__variant_detail18__move_constructorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EEC2B8ne200100EOSH_(v7 + 80, (a2 + 5));
  *&v19 = v7 + 96;
  v11 = *(a1 + 8);
  v12 = v7 + *a1 - v11;
  _ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS2_27animator_interpolation_typeE0EEEEEPS6_EEvRT_T0_SB_SB_(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  _ZNSt3__114__split_bufferIN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS1_27animator_interpolation_typeE0EEERNS_9allocatorIS5_EEED2Ev(&v17);
  return v16;
}

void sub_256115D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  _ZNSt3__114__split_bufferIN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS1_27animator_interpolation_typeE0EEERNS_9allocatorIS5_EEED2Ev(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<LAUI_uniform_cubic_b_spline_renderer::spline_t::instance_t,LAUI_uniform_cubic_b_spline_renderer::spline_t>>::__init_with_size[abi:ne200100]<LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<LAUI_uniform_cubic_b_spline_renderer::spline_t::instance_t,LAUI_uniform_cubic_b_spline_renderer::spline_t> const*,LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<LAUI_uniform_cubic_b_spline_renderer::spline_t::instance_t,LAUI_uniform_cubic_b_spline_renderer::spline_t> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_256115DBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float64x2_t _ZN21LAUI_metal_transforms20look_at_transform_LHIDv3_ddEEN4simd6MatrixIT0_Lm4ELm4EE4typeERKT_S9_S9_@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1[1];
  v5 = vsubq_f64(*a2, *a1);
  v6 = vsubq_f64(a2[1], v4);
  v7 = vmulq_f64(v6, v6);
  v8 = vmulq_f64(v5, v5);
  v7.f64[0] = 1.0 / sqrt(v7.f64[0] + vaddvq_f64(v8));
  v9 = vmulq_n_f64(v5, v7.f64[0]);
  v10 = vmulq_f64(v6, v7);
  v11 = a3[1];
  v12.f64[0] = v10.f64[0];
  v12.f64[1] = v9.f64[0];
  v13 = vnegq_f64(v11);
  v11.f64[1] = a3->f64[0];
  v14 = vmlaq_laneq_f64(vmulq_laneq_f64(v13, v9, 1), v10, *a3, 1);
  v15 = vmlaq_f64(vmulq_f64(v12, vnegq_f64(*a3)), v9, v11);
  v16 = vmulq_f64(v15, v15);
  v11.f64[0] = vmulq_f64(v14, v14).f64[0];
  v14.f64[1] = v15.f64[0];
  v16.f64[0] = 1.0 / sqrt(v16.f64[1] + v11.f64[0] + v16.f64[0]);
  v17 = vmulq_n_f64(v14, v16.f64[0]);
  v18 = vmulq_laneq_f64(v16, v15, 1);
  *&v16.f64[0] = vdupq_laneq_s64(v17, 1).u64[0];
  v15.f64[0] = v18.f64[0];
  v15.f64[1] = v17.f64[0];
  v19 = vmlaq_f64(vmulq_f64(v15, vnegq_f64(v9)), v17, v12);
  v20 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v10), v17, 1), v18, v9, 1);
  v21 = vmulq_f64(v19, v19);
  v22 = vmulq_f64(v20, v20).f64[0];
  v20.f64[1] = v19.f64[0];
  v8.f64[0] = 1.0 / sqrt(v21.f64[1] + v22 + v21.f64[0]);
  v23 = vmulq_laneq_f64(v8, v19, 1);
  v24 = vmulq_n_f64(v20, v8.f64[0]);
  v25 = vzip1q_s64(v17, v24);
  v16.f64[1] = v24.f64[1];
  v26 = vpaddq_f64(vmulq_f64(*a1, v17), vmulq_f64(*a1, v24));
  __asm { FMOV            V6.2D, #1.0 }

  *&_Q6 = -(vmulq_f64(v4, v10).f64[0] + vaddvq_f64(vmulq_f64(*a1, v9)));
  *a4 = v25;
  *(a4 + 16) = *&v9.f64[0];
  *(a4 + 32) = v16;
  *(a4 + 48) = *&v9.f64[1];
  *(a4 + 64) = vzip1q_s64(v18, v23);
  *(a4 + 80) = *&v10.f64[0];
  result = vnegq_f64(vaddq_f64(vzip1q_s64(vmulq_f64(v4, v18), vmulq_f64(v4, v23)), v26));
  *(a4 + 96) = result;
  *(a4 + 112) = _Q6;
  return result;
}

void *LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t::state_t(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
  return a1;
}

uint64_t _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_256115FB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void LAUI_uniform_cubic_b_spline_renderer::renderer_t::~renderer_t(LAUI_uniform_cubic_b_spline_renderer::renderer_t *this)
{
  v2 = *(this + 104);
  if (v2)
  {
    *(this + 105) = v2;
    operator delete(v2);
  }

  v3 = *(this + 101);
  if (v3)
  {
    *(this + 102) = v3;
    operator delete(v3);
  }

  v4 = *(this + 98);
  if (v4)
  {
    *(this + 99) = v4;
    operator delete(v4);
  }

  v5 = *(this + 95);
  if (v5)
  {
    *(this + 96) = v5;
    operator delete(v5);
  }

  v6 = *(this + 92);
  if (v6)
  {
    *(this + 93) = v6;
    operator delete(v6);
  }

  v8 = (this + 688);
  std::vector<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t>::__destroy_vector::operator()[abi:ne200100](&v8);

  v7 = *(this + 73);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = (this + 552);
  std::vector<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t>::__destroy_vector::operator()[abi:ne200100](&v8);

  LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::~shared_state_t(this + 3);
}

void std::vector<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void std::vector<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
  {

    v4 = *(i - 48);
  }

  a1[1] = v2;
}

void std::__optional_storage_base<UIColor * {__strong},false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<UIColor * {__strong},false> const&>(id *location, uint64_t a2)
{
  if (*(location + 8) == *(a2 + 8))
  {
    if (*(location + 8))
    {
      v3 = *a2;

      objc_storeStrong(location, v3);
    }
  }

  else if (*(location + 8))
  {

    *(location + 8) = 0;
  }

  else
  {
    *location = *a2;
    *(location + 8) = 1;
  }
}

uint64_t __copy_helper_block_ea8_32c102_ZTSKZN17LAUI_CA_utilities38animation_completion_handler_container7executeEU13block_pointerFvbEbEUlvE_(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x259C5AE60](*(a2 + 32));
  *(a1 + 32) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

id *LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::operator=(id *a1, id *a2)
{
  objc_storeStrong(a1, *a2);
  objc_storeStrong(a1 + 1, a2[1]);
  objc_storeStrong(a1 + 2, a2[2]);
  objc_storeStrong(a1 + 3, a2[3]);
  for (i = 4; i != 7; ++i)
  {
    objc_storeStrong(&a1[i], a2[i]);
  }

  do
  {
    objc_storeStrong(&a1[i], a2[i]);
    ++i;
  }

  while (i != 10);
  objc_storeStrong(a1 + 10, a2[10]);
  objc_storeStrong(a1 + 11, a2[11]);
  objc_storeStrong(a1 + 12, a2[12]);
  return a1;
}

uint64_t ___ZN17LAUI_CA_utilities38animation_completion_handler_container7executeINSt3__16vectorIU8__strongU13block_pointerFvbENS2_9allocatorIS6_EEEEEEvOT_b_block_invoke_0(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      result = *v1;
      if (*v1)
      {
        result = (*(result + 16))(result, *(v3 + 56));
      }

      ++v1;
    }

    while (v1 != v2);
  }

  return result;
}

CGColor *LAUI_CA_utilities::create_converted_color(CGColor *color, CGColor *a2, CGColorSpace *a3)
{
  if (color)
  {
    v4 = color;
    if (!a2)
    {
      return CGColorRetain(v4);
    }

    ColorSpace = CGColorGetColorSpace(color);
    if (!ColorSpace || ColorSpace == a2)
    {
      return CGColorRetain(v4);
    }

    v6 = CGColorSpaceCopyName(ColorSpace);
    v7 = v6;
    v8 = MEMORY[0x277CBF430];
    if (!v6)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      goto LABEL_16;
    }

    if (CFStringCompare(v6, *MEMORY[0x277CBF430], 0))
    {
      if (CFStringCompare(v7, *MEMORY[0x277CBF428], 0))
      {
        if (CFStringCompare(v7, *MEMORY[0x277CBF4B8], 0))
        {
          v9 = 0;
          v10 = CFStringCompare(v7, *MEMORY[0x277CBF4A8], 0) == kCFCompareEqualTo;
          v11 = v10;
LABEL_15:
          CFRelease(v7);
LABEL_16:
          v12 = CGColorSpaceCopyName(a2);
          v13 = v12;
          if (!v12)
          {
            goto LABEL_29;
          }

          if (CFStringCompare(v12, *v8, 0))
          {
            if (CFStringCompare(v13, *MEMORY[0x277CBF428], 0))
            {
              if (CFStringCompare(v13, *MEMORY[0x277CBF4B8], 0))
              {
                v14 = 0;
                v15 = CFStringCompare(v13, *MEMORY[0x277CBF4A8], 0) == kCFCompareEqualTo;
                v16 = v15;
LABEL_25:
                CFRelease(v13);
                if ((v11 & v16) == 1 && ((((v14 << 16) | (v15 << 8)) ^ ((v9 << 16) | (v10 << 8))) & 0x10000) == 0)
                {
                  if ((((v15 << 8) ^ (v10 << 8)) & 0x100) == 0)
                  {
                    return CGColorRetain(v4);
                  }

                  v17 = kCGRenderingIntentAbsoluteColorimetric;
                  return CGColorCreateCopyByMatchingToColorSpace(a2, v17, v4, 0);
                }

LABEL_29:
                v17 = kCGRenderingIntentPerceptual;
                return CGColorCreateCopyByMatchingToColorSpace(a2, v17, v4, 0);
              }

              v14 = 0;
              v15 = 0;
            }

            else
            {
              v14 = 1;
              v15 = 1;
            }
          }

          else
          {
            v15 = 0;
            v14 = 1;
          }

          v16 = 1;
          goto LABEL_25;
        }

        v9 = 0;
        v10 = 0;
      }

      else
      {
        v9 = 1;
        v10 = 1;
      }
    }

    else
    {
      v10 = 0;
      v9 = 1;
    }

    v11 = 1;
    goto LABEL_15;
  }

  return color;
}

void LAUI_CA_utilities::animation_completion_handler_container::set_completion(void **a1, void *a2)
{
  v5 = a2;
  LAUI_CA_utilities::animation_completion_handler_container::operator()(a1, 0);
  v3 = [v5 copy];
  v4 = *a1;
  *a1 = v3;
}

void LAUI_uniform_cubic_b_spline_renderer::targetable_animator_t<anonymous namespace::face_id_animator_t,anonymous namespace::face_id_state_t,anonymous namespace::face_id_target_t>::set_target(uint64_t a1, uint64_t a2)
{
  *(a1 + 49) = 1;
  v2 = *(a2 + 100);
  v133.i32[0] = 953267991;
  v133.i32[1] = v2;
  if (*&v2 <= 0.0 || *&v2 >= 1.0)
  {
    goto LABEL_232;
  }

  if (*&v2 < 0.0001)
  {
    v133.i32[0] = v2;
  }

  LAUI_uniform_cubic_b_spline_renderer::animation_timing_t::animation_timing_t(v132, &v133, *(a2 + 80));
  if (*(a2 + 88) == 1)
  {
    LAUI_uniform_cubic_b_spline_renderer::animation_timing_t::animation_timing_t(v131, &v133, *(a2 + 84));
  }

  else
  {
    *v131 = *v132;
    *&v131[12] = *&v132[12];
  }

  if (*(a2 + 96) == 1)
  {
    LAUI_uniform_cubic_b_spline_renderer::animation_timing_t::animation_timing_t(v130, &v133, *(a2 + 92));
  }

  else
  {
    v130[0] = *v132;
    *(v130 + 12) = *&v132[12];
  }

  v6 = *(a2 + 72);
  if ((v6 - 3) >= 2u && *(a1 + 40) == 1)
  {
    v7 = ((*(a1 + 8) - *a1) / 112) > 1;
    v8 = 2 * v7;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = *&v132[16] <= 0.0 ? 6 : v8;
  if (v6 >= 7)
  {
    goto LABEL_232;
  }

  v10 = 0x78u >> v6;
  v125.i8[0] = 0x1020403uLL >> (8 * (v6 & 0x1F));
  LOBYTE(v126) = 0;
  LOBYTE(v128) = 0;
  *(a1 + 80) = *a2;
  v12 = *(a2 + 32);
  v11 = *(a2 + 48);
  v13 = *(a2 + 16);
  *(a1 + 137) = *(a2 + 57);
  *(a1 + 112) = v12;
  *(a1 + 128) = v11;
  *(a1 + 96) = v13;
  v121 = (a1 + 80);
  v14 = *(a1 + 872);
  v15 = *(a1 + 880);
  v16 = v126;
  v116 = a2;
  v117 = v128;
  if (v14 != v15)
  {
    v17 = *(a2 + 72);
    if (v17 <= 6)
    {
      v18 = 0;
      v19 = 0;
      v20 = 8u >> v6;
      v22 = v17 != 3 || *(a2 + 56) < 0xAuLL;
      v23 = v126;
      while (1)
      {
        if (!v22)
        {
          goto LABEL_232;
        }

        if (v20)
        {
          goto LABEL_40;
        }

        v24 = v14[10];
        v25 = vmulq_f32(v24, xmmword_25611D010);
        v26 = vextq_s8(v25, v25, 8uLL);
        *v25.f32 = vadd_f32(*v25.f32, *v26.f32);
        v25.f32[0] = vaddv_f32(*v25.f32);
        v26.i64[0] = 0;
        v27 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v26, v25), 0), vnegq_f32(v24), v24);
        v28 = vmulq_f32(v27, v27);
        *v28.i8 = vadd_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
        v28.i32[0] = vadd_f32(*v28.i8, vdup_lane_s32(*v28.i8, 1)).u32[0];
        *v26.f32 = vrecpe_f32(v28.u32[0]);
        *v26.f32 = vmul_f32(*v26.f32, vrecps_f32(v28.u32[0], *v26.f32));
        v29 = vmulq_n_f32(vmulq_f32(v27, xmmword_25611D300), vmul_f32(*v26.f32, vrecps_f32(v28.u32[0], *v26.f32)).f32[0]);
        v30 = vnegq_f32(v29);
        v31 = vtrn2q_s32(v29, vtrn1q_s32(v29, v30));
        v32 = vmlaq_f32(vmulq_f32(vextq_s8(v29, v30, 8uLL), 0), 0, vextq_s8(v31, v31, 8uLL));
        v33 = vrev64q_s32(v29);
        v33.i32[0] = v30.i32[1];
        v33.i32[3] = v30.i32[2];
        v34 = vaddq_f32(vmlaq_f32(v29, 0, v33), v32);
        v35 = vmulq_f32(v34, v34);
        v120 = v35.f32[2] + vaddv_f32(*v35.f32);
        v122 = v34;
        v36 = atan2f(sqrtf(v120), v34.f32[3]);
        v37 = fabsf(v36 + v36) / 0.785398163;
        if (v37 == 0.0)
        {
          goto LABEL_40;
        }

        v38 = vrsqrte_f32(LODWORD(v120));
        v39 = vmul_f32(v38, vrsqrts_f32(LODWORD(v120), vmul_f32(v38, v38)));
        v40 = vmulq_n_f32(v122, vmul_f32(v39, vrsqrts_f32(LODWORD(v120), vmul_f32(v39, v39))).f32[0]);
        v41 = vmulq_f32(v40, xmmword_25611D360);
        v42 = vmulq_f32(v40, v40);
        v43 = acos(((v41.f32[2] + vaddv_f32(*v41.f32)) / sqrtf(v42.f32[2] + vaddv_f32(*v42.f32))));
        if (v43 >= 1.57079633)
        {
          v43 = 3.14159265 - v43;
        }

        v44 = v43 / 1.57079633;
        if (v10)
        {
          if (v44 == 0.0)
          {
            goto LABEL_40;
          }

          v37 = v37 * v44;
        }

        if (v37 != 0.0)
        {
          v16 = fmin(v37, 1.0);
          v45 = fmin(v44, 1.0);
          v46 = v117;
          if (v117 < v45)
          {
            v46 = v45;
          }

          if (v18)
          {
            v45 = v46;
          }

          else
          {
            v18 = 1;
          }

          v117 = v45;
          if (v19)
          {
            if (v23 >= v16)
            {
              v16 = v23;
            }
          }

          else
          {
            v19 = 1;
          }

          goto LABEL_41;
        }

LABEL_40:
        v16 = v23;
LABEL_41:
        v14 += 18;
        v23 = v16;
        if (v14 == v15)
        {
          goto LABEL_54;
        }
      }
    }

    goto LABEL_232;
  }

  v19 = 0;
  v18 = 0;
LABEL_54:
  v129 = v18;
  v128 = v117;
  v127 = v19;
  v126 = v16;
  v47 = *(a1 + 152);
  v48 = 0;
  v49 = 1.0;
  if (*(a1 + 144))
  {
    v50 = -3.1416;
    v51 = 3.1416;
    if (*(a1 + 152) <= 3u)
    {
      v52 = 0;
      goto LABEL_70;
    }

    if (v47 != 6)
    {
      v52 = 0;
      if (v47 == 5)
      {
        goto LABEL_70;
      }

      goto LABEL_64;
    }

LABEL_69:
    v52 = 0;
    v51 = 0.0;
    v50 = 0.0;
    goto LABEL_70;
  }

  v50 = -3.1416;
  v51 = 3.1416;
  if (*(a1 + 152) <= 2u)
  {
    v52 = 0;
    goto LABEL_70;
  }

  if (*(a1 + 152) > 4u)
  {
    v52 = 0;
    if (v47 == 5)
    {
      goto LABEL_70;
    }

    if (v47 != 6)
    {
      goto LABEL_232;
    }

    goto LABEL_69;
  }

  if (v47 != 3)
  {
LABEL_64:
    if (v47 != 4)
    {
      goto LABEL_232;
    }

    v50 = *(a1 + 248);
    v51 = *(a1 + 256);
    v49 = 1.0;
    v52 = 0;
    goto LABEL_70;
  }

  v53 = *(a1 + 136);
  if (v53 >= 0xA)
  {
    goto LABEL_232;
  }

  v48 = dword_25611D698[v53];
  v52 = dword_25611D6C0[v53];
  v49 = 1045220557;
LABEL_70:
  __p[0].i32[0] = v49;
  *(__p + 4) = *v131;
  __p[1] = *&v131[12];
  LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_target<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>(a1 + 272, __p, v9);
  __p[0].i32[0] = v48;
  *(__p + 4) = *v131;
  __p[1] = *&v131[12];
  LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_target<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>(a1 + 328, __p, v9);
  __p[0].i32[0] = v52;
  *(__p + 4) = *v131;
  __p[1] = *&v131[12];
  LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_target<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>(a1 + 384, __p, v9);
  __p[0].i32[0] = 1066285284;
  *(__p + 4) = *v131;
  __p[1] = *&v131[12];
  LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::set_target<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>(a1 + 440, __p, v9);
  *&v138[12] = *&v132[12];
  *v138 = *v132;
  if (*&v132[16] > 0.0 && (v10 & 1) == 0)
  {
    if (v136 == 1)
    {
      if ((v18 & 1) != 0 && v117 > 0.0)
      {
        if (v117 >= 1.0)
        {
          v55 = *(a1 + 176);
          v54 = *(a1 + 192);
        }

        else
        {
          v54 = vmlaq_n_f64(vmulq_n_f64(*(a1 + 192), v117), *(a1 + 224), 1.0 - v117);
          v55 = vmlaq_n_f64(vmulq_n_f64(*(a1 + 176), v117), *(a1 + 208), 1.0 - v117);
        }
      }

      else
      {
        v55 = *(a1 + 208);
        v54 = *(a1 + 224);
      }

      __p[0] = v55;
      __p[1] = v54;
      __p[2] = *v138;
      *(&__p[2] + 12) = *&v138[12];
      _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_dLNS_27animator_interpolation_typeE0EE10set_targetINS_18animation_target_tIS1_EEEEbOT_NS_25animation_target_option_tE(a1 + 496, __p, v9);
      *v138 = *v135;
      *&v138[12] = *&v135[12];
    }
  }

  __p[0] = 0uLL;
  __asm { FMOV            V0.2D, #-3.0 }

  __p[1] = _Q0;
  __p[2] = *v138;
  *(&__p[2] + 12) = *&v138[12];
  _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_dLNS_27animator_interpolation_typeE0EE10set_targetINS_18animation_target_tIS1_EEEEbOT_NS_25animation_target_option_tE(a1 + 496, __p, v9);
  __p[0].f32[0] = v50;
  *(__p + 4) = *v132;
  __p[1] = *&v132[12];
  LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_target<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>(a1 + 640, __p, v9);
  __p[0].f32[0] = v51;
  *(__p + 4) = *v132;
  __p[1] = *&v132[12];
  LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_target<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>(a1 + 696, __p, v9);
  if (((*&v132[16] > 0.0) & ~v7) == 0)
  {
    __p[0].i64[0] = 0;
    *(__p + 8) = *v132;
    *(&__p[1] + 4) = *&v132[12];
    LAUI_uniform_cubic_b_spline_renderer::animator_t<decltype(nullptr),(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_target<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<decltype(nullptr)>>(a1 + 752, __p);
  }

  v59 = *(a1 + 848);
  v118 = *(a1 + 856);
  if (v59 == v118)
  {
    goto LABEL_218;
  }

  while (2)
  {
    *&v140[12] = *&v132[12];
    *v140 = *v132;
    v119 = v59;
    if (*&v132[16] <= 0.0 || v125.u8[0] - 2 < 3)
    {
      goto LABEL_110;
    }

    if (v125.u8[0] >= 2u)
    {
LABEL_233:
      __break(1u);
      goto LABEL_234;
    }

    if (v139 != 1)
    {
      goto LABEL_110;
    }

    v60 = *(a1 + 152);
    if (v60 >= 7)
    {
      goto LABEL_232;
    }

    v61 = qword_25611D6E8[v60];
    __p[0].i32[0] = 0;
    std::vector<float>::vector[abi:ne200100](&v141, v61 + 1);
    v62 = v141;
    *(v141.i64[0] + 4 * v61) = 1065353216;
    __p[0] = v62;
    __p[1].i64[0] = v142;
    v142 = 0;
    v141 = 0uLL;
    LAUI_uniform_cubic_b_spline_renderer::weighted_spline_t::state(v59 + 4, __p, v135);
    if (__p[0].i64[0])
    {
      __p[0].i64[1] = __p[0].i64[0];
      operator delete(__p[0].i64[0]);
    }

    if (v141.i64[0])
    {
      v141.i64[1] = v141.i64[0];
      operator delete(v141.i64[0]);
    }

    v63 = *(a1 + 152);
    if (v63 >= 7)
    {
      goto LABEL_232;
    }

    v64 = 8 * v63;
    if (v125.u8[0] - 2 >= 3)
    {
      if (v125.u8[0] >= 2u)
      {
LABEL_234:
        __break(1u);
        return;
      }

      v65 = 0x1010101020403uLL >> v64;
    }

    else
    {
      v65 = 0x1020403uLL >> v64;
    }

    if (v65 > 2u)
    {
      if (v65 == 4)
      {
        v67 = 8;
      }

      else
      {
        v67 = 10;
      }

      goto LABEL_103;
    }

    v66 = 0uLL;
    if (v65 >= 2u)
    {
      v67 = 12;
LABEL_103:
      v66 = *&v59[v67];
    }

    v137 = v66;
    __p[0] = v66;
    __p[1] = *v140;
    *(&__p[1] + 12) = *&v140[12];
    _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE10set_targetINS_18animation_target_tIS1_EEEEbOT_NS_25animation_target_option_tE((v59 + 14), __p, v9);
    v68 = *v135;
    v70 = v59[26];
    v69 = v59[27];
    if (0xAAAAAAAAAAAAAAABLL * ((v69 - v70) >> 5) != (*&v135[8] - *v135) >> 4)
    {
      goto LABEL_232;
    }

    if (v70 != v69)
    {
      do
      {
        __p[0] = *v68;
        __p[1] = *v140;
        *(&__p[1] + 12) = *&v140[12];
        _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE10set_targetINS_18animation_target_tIS1_EEEEbOT_NS_25animation_target_option_tE(v70, __p, v9);
        ++v68;
        v70 += 96;
      }

      while (v70 != v69);
      v68 = *v135;
    }

    *v140 = *v138;
    *&v140[12] = *&v138[12];
    if (v68)
    {
      *&v135[8] = v68;
      operator delete(v68);
    }

LABEL_110:
    __p[0] = v137;
    __p[1] = *v140;
    *(&__p[1] + 12) = *&v140[12];
    _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE10set_targetINS_18animation_target_tIS1_EEEEbOT_NS_25animation_target_option_tE((v59 + 14), __p, v9);
    v71 = *v135;
    v73 = v59[26];
    v72 = v59[27];
    if (0xAAAAAAAAAAAAAAABLL * ((v72 - v73) >> 5) != (*&v135[8] - *v135) >> 4)
    {
      goto LABEL_232;
    }

    if (v73 != v72)
    {
      do
      {
        __p[0] = *v71;
        __p[1] = *v140;
        *(&__p[1] + 12) = *&v140[12];
        _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE10set_targetINS_18animation_target_tIS1_EEEEbOT_NS_25animation_target_option_tE(v73, __p, v9);
        ++v71;
        v73 += 96;
      }

      while (v73 != v72);
      v71 = *v135;
    }

    if (v71)
    {
      *&v135[8] = v71;
      operator delete(v71);
    }

    v75 = v59[1];
    v74 = v59[2];
    while (v75 != v74)
    {
      v76 = *(a1 + 1152);
      if (!*&v76)
      {
        goto LABEL_231;
      }

      v77 = v75[1];
      v78 = vcnt_s8(v76);
      v78.i16[0] = vaddlv_u8(v78);
      if (v78.u32[0] > 1uLL)
      {
        v79 = v75[1];
        if (v77 >= *&v76)
        {
          v79 = v77 % *&v76;
        }
      }

      else
      {
        v79 = (*&v76 - 1) & v77;
      }

      v80 = *(*(a1 + 1144) + 8 * v79);
      if (!v80 || (v81 = *v80) == 0)
      {
LABEL_231:
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      while (1)
      {
        v82 = v81[1];
        if (v82 == v77)
        {
          break;
        }

        if (v78.u32[0] > 1uLL)
        {
          if (v82 >= *&v76)
          {
            v82 %= *&v76;
          }
        }

        else
        {
          v82 &= *&v76 - 1;
        }

        if (v82 != v79)
        {
          goto LABEL_231;
        }

LABEL_137:
        v81 = *v81;
        if (!v81)
        {
          goto LABEL_231;
        }
      }

      if (v81[2] != *v75 || v81[3] != v77)
      {
        goto LABEL_137;
      }

      v84 = *(a1 + 152);
      if (v84 > 6)
      {
        goto LABEL_232;
      }

      v85 = (*(a1 + 872) + 288 * v81[4]);
      if (((1 << v84) & 0x37) == 0)
      {
        if (v84 != 3)
        {
          v96 = *v121;
          v96.i32[3] = 0;
          v123 = v96;
          goto LABEL_158;
        }

        v123 = *v121;
LABEL_149:
        v88 = *(a1 + 136);
        if (v88 > 9)
        {
          goto LABEL_232;
        }

        if (((1 << v88) & 0x157) == 0)
        {
          v94 = *v85 == 0;
          if (*(a1 + 145))
          {
          }

          else
          {
          }

          goto LABEL_178;
        }

        v89 = *v85;
        if (*(a1 + 145))
        {
          if (v88 <= 2)
          {
            v90 = v89 == 0;
            goto LABEL_172;
          }

          v94 = v89 == 0;
LABEL_178:
          if (!v94)
          {
            v91 = v95;
          }

          v93 = 0x20000;
LABEL_181:
          v103 = 2;
        }

        else
        {
          if (v88 > 2)
          {
            v94 = v89 == 0;
            goto LABEL_178;
          }

          v90 = v89 == 0;
LABEL_172:
          if (!v90)
          {
            v91 = v92;
          }

          v93 = 2228224;
          v103 = 34;
        }

        v102 = v103 | v93;
        v98 = (v85 + 16);
        v104 = *(v85 + 2);
        v99 = (v85 + 8);
        {
LABEL_212:
          *v99 = v102;
          *v98 = v91;
          LOBYTE(v103) = v102;
          if ((v102 & 2) != 0)
          {
            goto LABEL_210;
          }

          goto LABEL_213;
        }

        *v99 = v102;
        if (v91 == v104)
        {
          goto LABEL_209;
        }

        *(v85 + 2) = v91;
        {
          v106 = 0.988;
        }

        else
        {
          v106 = 0.99986;
        }

        if (v104)
        {
          v106 = 0.979;
        }

        *(v85 + 7) = v106;
        v107 = *&v132[8];
        if ((v132[12] & 1) == 0)
        {
          v107 = 0.001;
        }

        *(v85 + 22) = v107;
        __p[0].f32[0] = v106;
        __p[0].i32[1] = fmaxf(fminf(nexttowardf(1.0, 0.0), 0.0), 0.0);
        __p[0].i8[8] = 0;
        __p[1].i8[0] = 0;
        __p[1].i64[1] = 0;
        __p[1].i32[1] = 0;
        LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::set_target<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>((v85 + 32), __p, 6);
        v108 = *(v85 + 7);
        if (v108 <= 0.0)
        {
          goto LABEL_207;
        }

        v109 = *(v85 + 22);
        __p[0].i32[0] = 953267991;
        __p[0].i32[1] = v109;
        if (*&v109 > 0.0 && *&v109 < 1.0)
        {
          if (*&v109 < 0.0001)
          {
            __p[0].i32[0] = v109;
          }

          LAUI_uniform_cubic_b_spline_renderer::animation_timing_t::animation_timing_t(v135, __p, v108);
          __p[0].i32[0] = 0;
          *(__p + 4) = *v135;
          __p[1] = *&v135[12];
          LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::set_target<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>((v85 + 32), __p, 0);
          goto LABEL_207;
        }

        goto LABEL_232;
      }

      v86 = *v121;
      v86.i32[3] = 0;
      if (*v85)
      {
        v87 = -1;
      }

      else
      {
        v87 = 0;
      }

      v123 = vbslq_s8(vdupq_n_s32(v87), *v121, v86);
      if (v84 == 4)
      {
        v93 = 0;
        goto LABEL_181;
      }

      if (v84 == 3)
      {
        goto LABEL_149;
      }

LABEL_158:
      v98 = (v85 + 16);
      v97 = *(v85 + 2);
      v99 = (v85 + 8);
      if (v97)
      {
        if (v84 - 3 <= 3 && v101)
        {
          v102 = 2;
          goto LABEL_212;
        }

        *v99 = 0;
        *(v85 + 2) = 0;
LABEL_207:
        if (*v98)
        {
          LOWORD(v103) = *v99;
LABEL_209:
          if ((v103 & 2) != 0)
          {
LABEL_210:
            if ((v103 & 0x20) != 0)
            {
              goto LABEL_216;
            }

LABEL_215:
            __p[0] = v123;
            __p[1] = *v132;
            *(&__p[1] + 12) = *&v132[12];
            _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE10set_targetINS_18animation_target_tIS1_EEEEbOT_NS_25animation_target_option_tE((v85 + 192), __p, v9);
            goto LABEL_216;
          }
        }
      }

      else
      {
        *v99 = 0;
        *(v85 + 2) = 0;
      }

LABEL_213:
      __p[0] = xmmword_25611D010;
      __p[1] = *v132;
      *(&__p[1] + 12) = *&v132[12];
      LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_target<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>((v85 + 96), __p, v9);
      if (!*v98 || (*v99 & 0x20) == 0)
      {
        goto LABEL_215;
      }

LABEL_216:
      v75 += 2;
    }

    v59 = v119 + 30;
    if (v119 + 30 != v118)
    {
      continue;
    }

    break;
  }

LABEL_218:
  if (*(v116 + 104))
  {
    __p[0] = xmmword_25611D390;
    __p[1].i32[0] = fmaxf(fminf(nexttowardf(1.0, 0.0), 0.0), 0.0);
    __p[1].i8[4] = 0;
    __p[1].i8[12] = 0;
    __p[2].i32[2] = 0;
    __p[2].i64[0] = 0;
    LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_target<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>(a1 + 912, __p, 6);
  }

  v111 = *(a1 + 112) ? 16 : 0;
  v112 = *(a1 + 152);
  if (v112 > 6)
  {
LABEL_232:
    __break(1u);
    goto LABEL_233;
  }

  v113 = *(v121 + v111);
  if (((1 << v112) & 0x27) != 0)
  {
    v114 = *(v121 + v111);
    v114.i32[3] = 0;
    if (*(a1 + 128))
    {
      v115 = -1;
    }

    else
    {
      v115 = 0;
    }

    v113 = vbslq_s8(vdupq_n_s32(v115), v113, v114);
  }

  else
  {
    v113.i32[3] = 0;
  }

  v124 = v113;
  __p[0] = xmmword_25611D010;
  __p[1] = v130[0];
  *(&__p[1] + 12) = *(v130 + 12);
  LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_target<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>(a1 + 912, __p, v9);
  __p[0] = v124;
  __p[1] = v130[0];
  *(&__p[1] + 12) = *(v130 + 12);
  _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE10set_targetINS_18animation_target_tIS1_EEEEbOT_NS_25animation_target_option_tE(a1 + 1008, __p, v9);
}

float32x2_t *LAUI_uniform_cubic_b_spline_renderer::animation_timing_t::animation_timing_t(float32x2_t *a1, float32x2_t *a2, float a3)
{
  v5 = fmaxf(fminf(a3, nexttowardf(1.0, 0.0)), 0.0);
  a1->f32[0] = v5;
  a1->i8[4] = 0;
  a1[1].i8[4] = 0;
  a1[3].i32[0] = 0;
  if (v5 <= 0.0)
  {
    goto LABEL_4;
  }

  *v6.i32 = logf(v5);
  v26 = v6;
  __asm { FMOV            V8.2S, #1.0 }

  v12 = vsqrt_f32(vsub_f32(_D8, *a2));
  v13 = vadd_f32(v12, _D8);
  v23 = v13.f32[0];
  v24 = logf(v13.f32[1]);
  v14.f32[0] = logf(v23);
  v14.f32[1] = v24;
  v15 = vdup_lane_s32(v26, 0);
  v16 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(v14, v15)), 0));
  v17 = vsub_f32(_D8, v12);
  v25 = v17.f32[0];
  v26.i32[0] = logf(v17.f32[1]);
  v18.f32[0] = logf(v25);
  v18.i32[1] = v26.i32[0];
  v19 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(v18, v15)), 0));
  v20 = vbsl_s8(vand_s8(vcgtz_f32(v16), vcgtz_f32(v19)), vminnm_f32(v16, v19), vmaxnm_f32(v16, v19));
  a1[2] = v20;
  v21 = *a2;
  a1[1].i8[4] = 1;
  *(a1 + 4) = v21;
  if (vcgt_f32(vdup_lane_s32(v20, 1), v20).u32[0])
  {
    __break(1u);
LABEL_4:
    a1[2] = 0;
  }

  return a1;
}

float32x2_t *anonymous namespace::face_id_state_t::transition_t::restriction_delayed_timing@<X0>(float32x2_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result[2].i8[0] == 1 && *(a2 + 16) > 0.0 && (v4 = *(a2 + 4), v5 = *(a2 + 12), v24 = v4, v25 = v5, (v5 & 1) != 0))
  {
    v6 = result;
    v7 = sqrtf(1.0 - v4.f32[1]);
    v8 = logf(*a2);
    v9 = v7 + 1.0;
    v10 = fmax((logf(v7 + 1.0) / v8), 0.0);
    v11 = 1.0 - v7;
    v12 = fmax((logf(v11) / v8), 0.0);
    v13 = v12 <= 0.0 || v10 <= 0.0;
    v14 = fminf(v10, v12);
    v15 = fmaxf(v10, v12);
    if (!v13)
    {
      v15 = v14;
    }

    v16 = *&v6[1] * v15;
    v17 = 1.0 / (v15 / 1.618);
    v18 = fmax(powf(v9, v17), 0.0);
    v19 = fmax(powf(v11, v17), 0.0);
    if (v18 <= 0.0 || v19 <= 0.0 || (v18 < 1.0 ? (v20 = v19 < 1.0) : (v20 = 0), v20))
    {
      v21 = fmaxf(v18, v19);
    }

    else
    {
      v21 = fminf(v18, v19);
    }

    v22 = nexttowardf(1.0, 0.0);
    result = LAUI_uniform_cubic_b_spline_renderer::animation_timing_t::animation_timing_t(v23, &v24, fmaxf(fminf(v21, v22), 0.0));
    *&v23[24] = -v16;
    *a3 = *v23;
    *(a3 + 12) = *&v23[12];
    *(a3 + 28) = 1;
  }

  else
  {
    *a3 = 0;
    *(a3 + 28) = 0;
  }

  return result;
}

uint64_t LAUI_uniform_cubic_b_spline_renderer::animator_t<decltype(nullptr),(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_target<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<decltype(nullptr)>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64))
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<decltype(nullptr)>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 56);
    *(a1 + 64) = 0;
  }

  v4 = *(a2 + 32);
  if (v4 < 0.0)
  {
    operator new();
  }

  *v6 = *(a2 + 8);
  *&v6[16] = *(a2 + 24);
  *&v6[24] = 0;
  LAUI_uniform_cubic_b_spline_renderer::animator_t<decltype(nullptr),(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::_set_timing(a1, v6);
  *a1 = 0;
  *(a1 + 20) = *&v6[12];
  *(a1 + 8) = *v6;
  if (*(a1 + 24) <= 0.0)
  {
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  else if (v4 > 0.0)
  {
    LAUI_uniform_cubic_b_spline_renderer::animator_t<decltype(nullptr),(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(a1, v4);
  }

  return 1;
}

uint64_t LAUI_uniform_cubic_b_spline_renderer::animator_t<decltype(nullptr),(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_timing(uint64_t result, uint64_t a2, int a3)
{
  v5 = result;
  if (*(result + 64))
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<decltype(nullptr)>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](result + 56);
    *(v5 + 64) = 0;
  }

  if (a3)
  {
    v6 = *(v5 + 24);
    if (v6 > 0.0)
    {
      if ((v7 = *(v5 + 32), v8 = v6 - v7, v9 = *(v5 + 28) - v7, v10 = *(a2 + 24), v11 = *(a2 + 16) - v10, v12 = *(a2 + 20) - v10, (a3 & 2) != 0) && (v11 >= v8 ? (v13 = v12 < v9) : (v13 = 1), v13) || (a3 & 4) != 0 && (v11 <= v8 ? (v14 = v12 <= v9) : (v14 = 0), !v14))
      {
        if (v10 >= 0.0)
        {

          return LAUI_uniform_cubic_b_spline_renderer::animator_t<decltype(nullptr),(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::_set_timing(v5, a2);
        }

        else if ((v8 + v10) > 0.0)
        {
          operator new();
        }
      }
    }
  }

  return result;
}

uint64_t LAUI_uniform_cubic_b_spline_renderer::animator_t<decltype(nullptr),(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::_set_timing(uint64_t result, __int128 *a2)
{
  v2 = *(a2 + 6);
  if (v2 < 0.0)
  {
    __break(1u);
    return result;
  }

  v3 = *(a2 + 4);
  v4 = (result + 8);
  if (*(result + 24) > 0.0 && v3 > 0.0 && *v4 != *a2)
  {
    v5 = (*a2 * (1.0 - *v4)) / (*v4 * (1.0 - *a2));
    v6 = (COERCE_INT(fabs(v5)) - 0x800000) >> 24;
    if (v5 >= 0.0 && v6 <= 0x7E || (LODWORD(v5) - 1) <= 0x7FFFFE)
    {
      *(result + 40) = 0;
    }
  }

  v9 = *a2;
  *(result + 20) = *(a2 + 12);
  *v4 = v9;
  if (v2 <= 0.0)
  {
    if (v3 > 0.0)
    {
      return result;
    }
  }

  else
  {
    *(result + 32) = 0;
    if (v3 > 0.0)
    {
      return LAUI_uniform_cubic_b_spline_renderer::animator_t<decltype(nullptr),(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(result, v2);
    }
  }

  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t LAUI_uniform_cubic_b_spline_renderer::animator_t<decltype(nullptr),(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(uint64_t a1, float a2)
{
  v10 = a2;
  v11 = a1;
  v2 = *(a1 + 64);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v9[0] = &v11;
  if ((*(&off_286829C90 + v2))(v9, a1 + 56))
  {
    if (a2 == 0.0)
    {
      LOBYTE(v6) = 0;
      v7 = 0;
    }

    else
    {
      v9[0] = a1;
      v9[1] = &v10;
      v5 = *(a1 + 64);
      if (v5 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v11 = v9;
      v6 = (*(&off_286829CA8 + v5))(&v11, a1 + 56);
      v7 = HIBYTE(v6);
    }
  }

  else
  {
    LOBYTE(v6) = 1;
    v7 = 1;
  }

  return v6 | (v7 << 8);
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<decltype(nullptr)>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>>::__assign_alt[abi:ne200100]<2ul,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 8) == 2)
  {
    v4 = *a3;
    *a3 = 0;
    result = *a2;
    *a2 = v4;
    if (result)
    {

      JUMPOUT(0x259C5A8E0);
    }
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<decltype(nullptr)>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v7 = *a3;
    *a3 = 0;
    *a1 = v7;
    *(a1 + 8) = 2;
  }

  return result;
}

uint64_t LAUI_uniform_cubic_b_spline_renderer::animator_t<decltype(nullptr),(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::_update(uint64_t result, float a2)
{
  v2 = *(result + 24);
  if (v2 <= 0.0)
  {
    goto LABEL_6;
  }

  if (a2 >= 0.0)
  {
    v3 = result;
    v4 = *(result + 32) + a2;
    *(result + 32) = v4;
    if (v4 < v2)
    {
      v5 = 0;
      *(result + 40) = 0;
      *(result + 48) = 0;
      v6 = v4 >= *(result + 28);
      return v6 | (v5 << 8);
    }

    *(result + 8) = fmaxf(fminf(nexttowardf(1.0, 0.0), 0.0), 0.0);
    *(v3 + 12) = 0;
    *(v3 + 20) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
LABEL_6:
    v6 = 1;
    v5 = 1;
    return v6 | (v5 << 8);
  }

  __break(1u);
  return result;
}

uint64_t *LAUI_uniform_cubic_b_spline_renderer::animator_t<decltype(nullptr),(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(float)::{lambda(decltype(nullptr) &)#1}::operator()<std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<decltype(nullptr)>>>(uint64_t *result, uint64_t *a2)
{
  v2 = result[1];
  if (*v2 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v4 = *result;
    v5 = *a2;
    v6 = *v2 + *(*a2 + 32);
    *(*a2 + 32) = v6;
    if (v6 >= 0.0)
    {
      *(v5 + 32) = 0;
      v9 = fmax((*v2 - v6), 0.0);
      LAUI_uniform_cubic_b_spline_renderer::animator_t<decltype(nullptr),(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::_update(v4, v9);
      v10 = *a2;
      *a2 = 0;
      if (*(v4 + 64))
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<decltype(nullptr)>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4 + 56);
        *(v4 + 64) = 0;
      }

      LAUI_uniform_cubic_b_spline_renderer::animator_t<decltype(nullptr),(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_target<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<decltype(nullptr)>>(v4, v10);
      MEMORY[0x259C5A8E0](v10, 0x1080C405E4FE669);
      v7 = LAUI_uniform_cubic_b_spline_renderer::animator_t<decltype(nullptr),(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(v4, v6);
      v8 = HIBYTE(v7);
    }

    else
    {
      LAUI_uniform_cubic_b_spline_renderer::animator_t<decltype(nullptr),(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::_update(v4, *v2);
      LOBYTE(v7) = 0;
      v8 = 0;
    }

    return (v7 | (v8 << 8));
  }

  return result;
}

void sub_256118174(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x259C5A8E0](v1, 0x1080C405E4FE669);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *LAUI_uniform_cubic_b_spline_renderer::animator_t<decltype(nullptr),(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(float)::{lambda(decltype(nullptr) &)#1}::operator()<std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>(uint64_t *result, uint64_t *a2)
{
  v2 = result[1];
  if (*v2 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v4 = *result;
    v5 = *a2;
    v6 = *v2 + *(*a2 + 24);
    *(*a2 + 24) = v6;
    if (v6 >= 0.0)
    {
      *(v5 + 24) = 0;
      v9 = fmax((*v2 - v6), 0.0);
      LAUI_uniform_cubic_b_spline_renderer::animator_t<decltype(nullptr),(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::_update(v4, v9);
      v10 = *a2;
      *a2 = 0;
      if (*(v4 + 64))
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<decltype(nullptr)>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4 + 56);
        *(v4 + 64) = 0;
      }

      LAUI_uniform_cubic_b_spline_renderer::animator_t<decltype(nullptr),(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_timing(v4, v10, 6);
      MEMORY[0x259C5A8E0](v10, 0x1000C40CBDA3C1BLL);
      v7 = LAUI_uniform_cubic_b_spline_renderer::animator_t<decltype(nullptr),(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(v4, v6);
      v8 = HIBYTE(v7);
    }

    else
    {
      LAUI_uniform_cubic_b_spline_renderer::animator_t<decltype(nullptr),(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::_update(v4, *v2);
      LOBYTE(v7) = 0;
      v8 = 0;
    }

    return (v7 | (v8 << 8));
  }

  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<decltype(nullptr)>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>>::__assign_alt[abi:ne200100]<1ul,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<decltype(nullptr)>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<decltype(nullptr)>>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 8) == 1)
  {
    v4 = *a3;
    *a3 = 0;
    result = *a2;
    *a2 = v4;
    if (result)
    {

      JUMPOUT(0x259C5A8E0);
    }
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<decltype(nullptr)>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v7 = *a3;
    *a3 = 0;
    *a1 = v7;
    *(a1 + 8) = 1;
  }

  return result;
}

BOOL anonymous namespace::face_id_animator_t::ring_context_t::clear_infinite_durations(_anonymous_namespace_::face_id_animator_t::ring_context_t *this)
{
  v2 = *(this + 22);
  v44.i32[0] = 953267991;
  if (*&v2 <= 0.0)
  {
    v44.i32[1] = 981668463;
  }

  else
  {
    v44.i32[1] = v2;
    if (*&v2 >= 1.0)
    {
      goto LABEL_20;
    }

    if (*&v2 < 0.0001)
    {
      v44.i32[0] = v2;
    }
  }

  v45 = &v44;
  v3 = *(this + 46);
  if (v3 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v46 = &v45;
  (*(&off_286829CC0 + v3))(&v46, this + 176);
  if (*(this + 32) == INFINITY)
  {
    v4 = *(this + 28);
    if (v4 <= 0.0)
    {
      *(this + 16) = 0;
    }

    else
    {
      *v5.i32 = logf(v4);
      v42 = v5;
      __asm { FMOV            V8.2S, #1.0 }

      v11 = vsqrt_f32(vsub_f32(_D8, v44));
      v12 = vadd_f32(v11, _D8);
      v36 = v12.f32[0];
      v38 = logf(v12.f32[1]);
      v13.f32[0] = logf(v36);
      v13.f32[1] = v38;
      v14 = vdup_lane_s32(v42, 0);
      v15 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(v13, v14)), 0));
      v16 = vsub_f32(_D8, v11);
      v39 = v16.f32[0];
      v42.i32[0] = logf(v16.f32[1]);
      v17.f32[0] = logf(v39);
      v17.i32[1] = v42.i32[0];
      v18 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(v17, v14)), 0));
      v19 = vbsl_s8(vand_s8(vcgtz_f32(v15), vcgtz_f32(v18)), vminnm_f32(v15, v18), vmaxnm_f32(v15, v18));
      *(this + 16) = v19;
      v20 = v44;
      if ((*(this + 124) & 1) == 0)
      {
        *(this + 124) = 1;
      }

      *(this + 116) = v20;
      if (vcgt_f32(vdup_lane_s32(v19, 1), v19).u32[0])
      {
        goto LABEL_20;
      }
    }
  }

  v45 = &v44;
  v21 = *(this + 70);
  if (v21 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v46 = &v45;
  (*(&off_286829CD8 + v21))(&v46, this + 272);
  if (*(this + 56) == INFINITY)
  {
    v22 = *(this + 52);
    if (v22 <= 0.0)
    {
LABEL_21:
      *(this + 28) = 0;
      goto LABEL_22;
    }

    *v23.i32 = logf(v22);
    v43 = v23;
    __asm { FMOV            V8.2S, #1.0 }

    v25 = vsqrt_f32(vsub_f32(_D8, v44));
    v26 = vadd_f32(v25, _D8);
    v37 = v26.f32[0];
    v40 = logf(v26.f32[1]);
    v27.f32[0] = logf(v37);
    v27.f32[1] = v40;
    v28 = vdup_lane_s32(v43, 0);
    v29 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(v27, v28)), 0));
    v30 = vsub_f32(_D8, v25);
    v41 = v30.f32[0];
    v43.i32[0] = logf(v30.f32[1]);
    v31.f32[0] = logf(v41);
    v31.i32[1] = v43.i32[0];
    v32 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(v31, v28)), 0));
    v33 = vbsl_s8(vand_s8(vcgtz_f32(v29), vcgtz_f32(v32)), vminnm_f32(v29, v32), vmaxnm_f32(v29, v32));
    *(this + 28) = v33;
    v34 = v44;
    if ((*(this + 220) & 1) == 0)
    {
      *(this + 220) = 1;
    }

    *(this + 212) = v34;
    if (vcgt_f32(vdup_lane_s32(v33, 1), v33).u8[0])
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

LABEL_22:
  *(this + 3) = 0;
  *(this + 22) = 0;
  LODWORD(v46) = 0;
  HIDWORD(v46) = fmaxf(fminf(nexttowardf(1.0, 0.0), 0.0), 0.0);
  v47 = 0;
  v48 = 0;
  v50 = 0;
  v49 = 0;
  return LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::set_target<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>(this + 32, &v46, 6);
}

BOOL anonymous namespace::coplanar_ring_updater<true>::function(float32x4_t *a1, float *a2)
{
  v4 = *a2;
  if (*a2 > 1000.0)
  {
    v4 = 1000.0;
  }

  *a2 = v4;
  v5 = v4 * 0.00628318531;
  v6 = __sincosf_stret(v5 * 0.5);
  v7 = vmulq_n_f32(xmmword_25611D360, v6.__sinval);
  v7.i32[3] = LODWORD(v6.__cosval);
  a1[1] = v7;
  return *a2 == 1000.0;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIN4simd5quatfELNS8_27animator_interpolation_typeE0EE25resolve_infinite_durationERKNS8_18animation_timing_t23epsilon_configuration_tEEUlOT_E_EEJRNS0_6__baseILNS0_6_TraitE1EJNS_9monostateENS_10unique_ptrINS8_18animation_target_tISB_EENS_14default_deleteISS_EEEENSQ_ISE_NST_ISE_EEEEEEEEEEDcSI_DpT0_(float32x2_t ***a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(*a2 + 32) == INFINITY)
  {
    v3 = *(v2 + 16);
    if (v3 <= 0.0)
    {
LABEL_7:
      *(v2 + 32) = 0;
      return;
    }

    v4 = **a1;
    *v5.i32 = logf(v3);
    v24 = v5;
    __asm { FMOV            V8.2S, #1.0 }

    v11 = vsqrt_f32(vsub_f32(_D8, *v4));
    v12 = vadd_f32(v11, _D8);
    v21 = v12.f32[0];
    v22 = logf(v12.f32[1]);
    v13.f32[0] = logf(v21);
    v13.f32[1] = v22;
    v14 = vdup_lane_s32(v24, 0);
    v15 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(v13, v14)), 0));
    v16 = vsub_f32(_D8, v11);
    v23 = v16.f32[0];
    v24.i32[0] = logf(v16.f32[1]);
    v17.f32[0] = logf(v23);
    v17.i32[1] = v24.i32[0];
    v18 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(v17, v14)), 0));
    v19 = vbsl_s8(vand_s8(vcgtz_f32(v15), vcgtz_f32(v18)), vminnm_f32(v15, v18), vmaxnm_f32(v15, v18));
    *(v2 + 32) = v19;
    v20 = *v4;
    if ((*(v2 + 28) & 1) == 0)
    {
      *(v2 + 28) = 1;
    }

    *(v2 + 20) = v20;
    if (vcgt_f32(vdup_lane_s32(v19, 1), v19).u32[0])
    {
      __break(1u);
      goto LABEL_7;
    }
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIN4simd5quatfELNS8_27animator_interpolation_typeE0EE25resolve_infinite_durationERKNS8_18animation_timing_t23epsilon_configuration_tEEUlOT_E_EEJRNS0_6__baseILNS0_6_TraitE1EJNS_9monostateENS_10unique_ptrINS8_18animation_target_tISB_EENS_14default_deleteISS_EEEENSQ_ISE_NST_ISE_EEEEEEEEEEDcSI_DpT0_(float32x2_t ***a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(*a2 + 16) == INFINITY)
  {
    if (*v2 <= 0.0)
    {
LABEL_7:
      *(v2 + 16) = 0;
      return;
    }

    v3 = **a1;
    *v4.i32 = logf(*v2);
    v23 = v4;
    __asm { FMOV            V8.2S, #1.0 }

    v10 = vsqrt_f32(vsub_f32(_D8, *v3));
    v11 = vadd_f32(v10, _D8);
    v20 = v11.f32[0];
    v21 = logf(v11.f32[1]);
    v12.f32[0] = logf(v20);
    v12.f32[1] = v21;
    v13 = vdup_lane_s32(v23, 0);
    v14 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(v12, v13)), 0));
    v15 = vsub_f32(_D8, v10);
    v22 = v15.f32[0];
    v23.i32[0] = logf(v15.f32[1]);
    v16.f32[0] = logf(v22);
    v16.i32[1] = v23.i32[0];
    v17 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(v16, v13)), 0));
    v18 = vbsl_s8(vand_s8(vcgtz_f32(v14), vcgtz_f32(v17)), vminnm_f32(v14, v17), vmaxnm_f32(v14, v17));
    *(v2 + 16) = v18;
    v19 = *v3;
    if ((*(v2 + 12) & 1) == 0)
    {
      *(v2 + 12) = 1;
    }

    *(v2 + 4) = v19;
    if (vcgt_f32(vdup_lane_s32(v18, 1), v18).u32[0])
    {
      __break(1u);
      goto LABEL_7;
    }
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS8_27animator_interpolation_typeE0EE25resolve_infinite_durationERKNS8_18animation_timing_t23epsilon_configuration_tEEUlOT_E_EEJRNS0_6__baseILNS0_6_TraitE1EJNS_9monostateENS_10unique_ptrINS8_18animation_target_tISA_EENS_14default_deleteISR_EEEENSP_ISD_NSS_ISD_EEEEEEEEEEDcSH_DpT0_(float32x2_t ***a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(*a2 + 32) == INFINITY)
  {
    v3 = *(v2 + 16);
    if (v3 <= 0.0)
    {
LABEL_7:
      *(v2 + 32) = 0;
      return;
    }

    v4 = **a1;
    *v5.i32 = logf(v3);
    v24 = v5;
    __asm { FMOV            V8.2S, #1.0 }

    v11 = vsqrt_f32(vsub_f32(_D8, *v4));
    v12 = vadd_f32(v11, _D8);
    v21 = v12.f32[0];
    v22 = logf(v12.f32[1]);
    v13.f32[0] = logf(v21);
    v13.f32[1] = v22;
    v14 = vdup_lane_s32(v24, 0);
    v15 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(v13, v14)), 0));
    v16 = vsub_f32(_D8, v11);
    v23 = v16.f32[0];
    v24.i32[0] = logf(v16.f32[1]);
    v17.f32[0] = logf(v23);
    v17.i32[1] = v24.i32[0];
    v18 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(v17, v14)), 0));
    v19 = vbsl_s8(vand_s8(vcgtz_f32(v15), vcgtz_f32(v18)), vminnm_f32(v15, v18), vmaxnm_f32(v15, v18));
    *(v2 + 32) = v19;
    v20 = *v4;
    if ((*(v2 + 28) & 1) == 0)
    {
      *(v2 + 28) = 1;
    }

    *(v2 + 20) = v20;
    if (vcgt_f32(vdup_lane_s32(v19, 1), v19).u32[0])
    {
      __break(1u);
      goto LABEL_7;
    }
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS8_27animator_interpolation_typeE0EE25resolve_infinite_durationERKNS8_18animation_timing_t23epsilon_configuration_tEEUlOT_E_EEJRNS0_6__baseILNS0_6_TraitE1EJNS_9monostateENS_10unique_ptrINS8_18animation_target_tISA_EENS_14default_deleteISR_EEEENSP_ISD_NSS_ISD_EEEEEEEEEEDcSH_DpT0_(float32x2_t ***a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(*a2 + 16) == INFINITY)
  {
    if (*v2 <= 0.0)
    {
LABEL_7:
      *(v2 + 16) = 0;
      return;
    }

    v3 = **a1;
    *v4.i32 = logf(*v2);
    v23 = v4;
    __asm { FMOV            V8.2S, #1.0 }

    v10 = vsqrt_f32(vsub_f32(_D8, *v3));
    v11 = vadd_f32(v10, _D8);
    v20 = v11.f32[0];
    v21 = logf(v11.f32[1]);
    v12.f32[0] = logf(v20);
    v12.f32[1] = v21;
    v13 = vdup_lane_s32(v23, 0);
    v14 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(v12, v13)), 0));
    v15 = vsub_f32(_D8, v10);
    v22 = v15.f32[0];
    v23.i32[0] = logf(v15.f32[1]);
    v16.f32[0] = logf(v22);
    v16.i32[1] = v23.i32[0];
    v17 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(v16, v13)), 0));
    v18 = vbsl_s8(vand_s8(vcgtz_f32(v14), vcgtz_f32(v17)), vminnm_f32(v14, v17), vmaxnm_f32(v14, v17));
    *(v2 + 16) = v18;
    v19 = *v3;
    if ((*(v2 + 12) & 1) == 0)
    {
      *(v2 + 12) = 1;
    }

    *(v2 + 4) = v19;
    if (vcgt_f32(vdup_lane_s32(v18, 1), v18).u32[0])
    {
      __break(1u);
      goto LABEL_7;
    }
  }
}

void NSStringFromCaptureState_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_2560E6000, a2, OS_LOG_TYPE_FAULT, "Invalid state: %d", v2, 8u);
}

void CaptureStateFromNSString_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_2560E6000, a2, OS_LOG_TYPE_FAULT, "Invalid state: %{public}@", &v2, 0xCu);
}

void CASecureFlipBookLayerBaseNameFromLAUISecureFaceIDViewType_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_2560E6000, a2, OS_LOG_TYPE_ERROR, "Invalid LAUISecureFaceIDViewType: %d", v2, 8u);
}

void LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create()
{
  if (__cxa_guard_acquire(&qword_27F82AC30))
  {
    _MergedGlobals = 0;

    __cxa_guard_release(&qword_27F82AC30);
  }
}

void LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_1::operator()()
{
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void ContainerStateFromSingleState_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_2560E6000, a2, OS_LOG_TYPE_ERROR, "Invalid container state: %{public}@", &v2, 0xCu);
}

void anonymous namespace::create_static_resources()
{
  if (__cxa_guard_acquire(&qword_27F82AC48))
  {
    _MergedGlobals_0 = 0;

    __cxa_guard_release(&qword_27F82AC48);
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
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

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}