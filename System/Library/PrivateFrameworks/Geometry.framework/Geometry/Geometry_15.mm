uint64_t geom_intersect_ray_circle_2f(uint64_t a1, int a2, float *a3, float *a4, float32x2_t a5, float32x2_t a6)
{
  v6 = vaddv_f32(vmul_f32(a6, a6));
  if (fabsf(v6) <= 0.00001)
  {
    goto LABEL_4;
  }

  v7 = vsub_f32(a5, a1);
  v8 = vaddv_f32(vmul_f32(v7, v7)) - (*&a2 * *&a2);
  v7.f32[0] = vaddv_f32(vmul_f32(a6, v7));
  v9 = v7.f32[0] + v7.f32[0];
  if (v8 > 0.0 && v9 > 0.0)
  {
    goto LABEL_4;
  }

  v12 = ((v6 * -4.0) * v8) + (v9 * v9);
  if (v12 != 0.0)
  {
    v17 = fabsf(v12);
    if (v17 == INFINITY)
    {
      if (v12 < 0.0)
      {
        result = 0;
LABEL_5:
        v11 = INFINITY;
        if (!a4)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }

    else if ((((v17 + 1.0) * -0.00001) + 0.0) >= v12)
    {
LABEL_4:
      result = 0;
      goto LABEL_5;
    }
  }

  v13 = sqrtf(v12);
  v14 = 1.0 / (v6 + v6);
  v15 = -v9;
  if (fabsf(v13) <= 0.00001)
  {
    v11 = v14 * v15;
    result = 1;
    if (!a4)
    {
LABEL_7:
      if (!a3)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_6:
    *a4 = v11;
    goto LABEL_7;
  }

  v16 = v14 * (v15 - v13);
  if (a3)
  {
    *a3 = v16;
    v16 = 0.0;
  }

  if (a4)
  {
    *a4 = v14 * (v13 - v9);
  }

  if (a3)
  {
    v16 = *a3;
  }

  if (v16 >= 0.0)
  {
    return 2;
  }

  result = 1;
  v11 = 0.0;
  if (a3)
  {
LABEL_8:
    *a3 = v11;
  }

  return result;
}

uint64_t geom_intersect_ray_circle_2d(float64x2_t *a1, double *a2, double *a3, float64x2_t a4, float64x2_t a5)
{
  v5 = vaddvq_f64(vmulq_f64(a5, a5));
  if (fabs(v5) <= 0.000001 || (v6 = vsubq_f64(a4, *a1), v7 = vaddvq_f64(vmulq_f64(v6, v6)) - a1[1].f64[0] * a1[1].f64[0], v6.f64[0] = vaddvq_f64(vmulq_f64(a5, v6)), v8 = v6.f64[0] + v6.f64[0], v7 > 0.0) && v8 > 0.0 || (v9 = v5 * -4.0 * v7 + v8 * v8, v9 != 0.0) && v9 <= -0.000001)
  {
    result = 0;
    v11 = INFINITY;
    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = sqrt(v9);
  v13 = 1.0 / (v5 + v5);
  v14 = -v8;
  if (fabs(v12) <= 0.000001)
  {
    v11 = v13 * v14;
    result = 1;
    if (a3)
    {
LABEL_7:
      *a3 = v11;
    }
  }

  else
  {
    v15 = v13 * (v14 - v12);
    if (a2)
    {
      *a2 = v15;
      v15 = 0.0;
    }

    if (a3)
    {
      *a3 = v13 * (v12 - v8);
    }

    if (a2)
    {
      v15 = *a2;
    }

    if (v15 >= 0.0)
    {
      return 2;
    }

    result = 1;
    v11 = 0.0;
  }

LABEL_8:
  if (a2)
  {
    *a2 = v11;
  }

  return result;
}

uint64_t geom_intersect_ray_sphere_3f(float32x4_t *a1, float *a2, float *a3, float32x4_t a4, float32x4_t a5)
{
  v5 = vmulq_f32(a5, a5);
  v6 = v5.f32[2] + vaddv_f32(*v5.f32);
  if (fabsf(v6) <= 0.00001)
  {
    goto LABEL_4;
  }

  v7 = vsubq_f32(a4, *a1);
  v8 = vmulq_f32(v7, v7);
  v9 = (v8.f32[2] + vaddv_f32(*v8.f32)) - (a1[1].f32[0] * a1[1].f32[0]);
  v10 = vmulq_f32(a5, v7);
  v11 = vaddv_f32(*v10.f32);
  v12 = (v10.f32[2] + v11) + (v10.f32[2] + v11);
  if (v9 > 0.0 && v12 > 0.0)
  {
    goto LABEL_4;
  }

  v15 = ((v6 * -4.0) * v9) + (v12 * v12);
  if (v15 != 0.0)
  {
    v20 = fabsf(v15);
    if (v20 == INFINITY)
    {
      if (v15 < 0.0)
      {
        result = 0;
LABEL_5:
        v14 = INFINITY;
        if (!a3)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }

    else if ((((v20 + 1.0) * -0.00001) + 0.0) >= v15)
    {
LABEL_4:
      result = 0;
      goto LABEL_5;
    }
  }

  v16 = sqrtf(v15);
  v17 = 1.0 / (v6 + v6);
  v18 = -v12;
  if (fabsf(v16) <= 0.00001)
  {
    v14 = v17 * v18;
    result = 1;
    if (!a3)
    {
LABEL_7:
      if (!a2)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_6:
    *a3 = v14;
    goto LABEL_7;
  }

  v19 = v17 * (v18 - v16);
  if (a2)
  {
    *a2 = v19;
    v19 = 0.0;
  }

  if (a3)
  {
    *a3 = v17 * (v16 - v12);
  }

  if (a2)
  {
    v19 = *a2;
  }

  if (v19 >= 0.0)
  {
    return 2;
  }

  result = 1;
  v14 = 0.0;
  if (a2)
  {
LABEL_8:
    *a2 = v14;
  }

  return result;
}

uint64_t geom_intersect_ray_sphere_3d(float64x2_t *a1, float64x2_t *a2, double *a3, double *a4)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = vmulq_f64(v5, v5).f64[0] + vaddvq_f64(vmulq_f64(v4, v4));
  if (fabs(v6) <= 0.000001 || (v7 = vsubq_f64(*a1, *a2), v8 = vsubq_f64(a1[1], a2[1]), v9 = vmulq_f64(v8, v8).f64[0] + vaddvq_f64(vmulq_f64(v7, v7)) - a2[2].f64[0] * a2[2].f64[0], v10 = vmulq_f64(v5, v8).f64[0], v11 = vaddvq_f64(vmulq_f64(v4, v7)), v12 = v10 + v11 + v10 + v11, v9 > 0.0) && v12 > 0.0 || (v13 = v6 * -4.0 * v9 + v12 * v12, v13 != 0.0) && v13 <= -0.000001)
  {
    result = 0;
    v15 = INFINITY;
    if (!a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v16 = sqrt(v13);
  v17 = 1.0 / (v6 + v6);
  v18 = -v12;
  if (fabs(v16) <= 0.000001)
  {
    v15 = v17 * v18;
    result = 1;
    if (a4)
    {
LABEL_7:
      *a4 = v15;
    }
  }

  else
  {
    v19 = v17 * (v18 - v16);
    if (a3)
    {
      *a3 = v19;
      v19 = 0.0;
    }

    if (a4)
    {
      *a4 = v17 * (v16 - v12);
    }

    if (a3)
    {
      v19 = *a3;
    }

    if (v19 >= 0.0)
    {
      return 2;
    }

    result = 1;
    v15 = 0.0;
  }

LABEL_8:
  if (a3)
  {
    *a3 = v15;
  }

  return result;
}

uint64_t geom_intersect_line_segment_plane_3f(float32x4_t *a1, float *a2, float32x4_t *a3, float32x4_t a4, float32x4_t a5)
{
  v5 = *a1;
  v6 = a1[1].f32[0];
  v7 = vsubq_f32(a5, a4);
  v8 = vmulq_f32(v7, *a1);
  v9 = v8.f32[2] + vaddv_f32(*v8.f32);
  if (fabsf(v9) > 0.00000011921)
  {
    v10 = -v6;
    v11 = vmulq_f32(a4, v5);
    v12 = (v10 - (v11.f32[2] + vaddv_f32(*v11.f32))) / v9;
    if (a2)
    {
      *a2 = v12;
    }

    if (v12 >= 0.0 && v12 <= 1.0)
    {
      v14 = vmlaq_n_f32(a4, v7, v12);
      if (!a3)
      {
        return 1;
      }

      goto LABEL_15;
    }

    return 0;
  }

  v15 = vmulq_f32(a4, v5);
  if ((v6 + (v15.f32[2] + vaddv_f32(*v15.f32))) > 0.00000011921)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = 0.5;
  }

  v17 = vaddq_f32(a4, a5);
  v18.i64[0] = 0x3F0000003F000000;
  v18.i64[1] = 0x3F0000003F000000;
  v14 = vmulq_f32(v17, v18);
  if (!a3)
  {
    return 1;
  }

LABEL_15:
  *a3 = v14;
  return 1;
}

uint64_t geom_intersect_line_segment_plane_3d(float64x2_t *a1, float64x2_t *a2, void *a3, int8x16_t *a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2].f64[0];
  v11 = vsubq_f64(v6, *a1);
  v12 = vsubq_f64(v7, v5);
  v13 = vmulq_f64(v9, v12).f64[0] + vaddvq_f64(vmulq_f64(*a2, v11));
  if (fabs(v13) <= 2.22044605e-16)
  {
    if (v10 + vmulq_f64(v5, v9).f64[0] + vaddvq_f64(vmulq_f64(v4, v8)) <= 2.22044605e-16)
    {
      if (a3)
      {
        *a3 = 0x3FE0000000000000;
      }

      __asm { FMOV            V2.2D, #0.5 }

      v16 = vmulq_f64(vaddq_f64(v4, v6), _Q2);
      v15 = vmulq_f64(vaddq_f64(v5, v7), _Q2);
      goto LABEL_14;
    }

    return 0;
  }

  v6.f64[0] = (-v10 - (vmulq_f64(v5, v9).f64[0] + vaddvq_f64(vmulq_f64(v4, v8)))) / v13;
  if (a3)
  {
    *a3 = *&v6.f64[0];
  }

  if (v6.f64[0] < 0.0 || v6.f64[0] > 1.0)
  {
    return 0;
  }

  v15 = vmlaq_f64(v5, v12, v6);
  *&v11.f64[1] = vextq_s8(v11, v11, 8uLL).u64[0];
  v16 = vmlaq_n_f64(v4, v11, v6.f64[0]);
LABEL_14:
  v23 = vextq_s8(v16, v16, 8uLL).u64[0];
  if (a4)
  {
    v16.i64[1] = v23;
    *a4 = v16;
    a4[1] = v15;
  }

  return 1;
}

uint64_t *geom::cluster_parallel_clipper<float>::init(uint64_t *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result[3] = a4;
  result[4] = a5;
  result[5] = a2;
  result[6] = a3;
  v5 = a2[15] - a2[14];
  v6 = ((v5 >> 4) * a5) >> 11;
  if (v6 <= 0x20)
  {
    v6 = 32;
  }

  v7 = a2[12] - a2[11];
  v8 = ((v7 >> 3) * a5) >> 10;
  if (v8 <= 0x40)
  {
    v8 = 64;
  }

  result[7] = v6;
  result[8] = v8;
  v9 = ((v8 + (v7 >> 3) - 1) / v8 + (v6 + (v5 >> 4) - 1) / v6) * a5;
  if (0xEEEEEEEEEEEEEEEFLL * ((result[1] - *result) >> 4) < v9)
  {
    return std::vector<geom::cluster_parallel_clipper<float>::clipping_context,std::allocator<geom::cluster_parallel_clipper<float>::clipping_context>>::resize(result, v9);
  }

  return result;
}

uint64_t *std::vector<geom::cluster_parallel_clipper<float>::clipping_context,std::allocator<geom::cluster_parallel_clipper<float>::clipping_context>>::resize(uint64_t *a1, unint64_t a2)
{
  result = a1[1];
  v4 = 0xEEEEEEEEEEEEEEEFLL * ((result - *a1) >> 4);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return std::vector<geom::cluster_parallel_clipper<float>::clipping_context,std::allocator<geom::cluster_parallel_clipper<float>::clipping_context>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 240 * a2;
    while (result != v7)
    {
      result = geom::cluster_parallel_clipper<float>::clipping_context::~clipping_context((result - 30));
    }

    a1[1] = v7;
  }

  return result;
}

void geom::cluster_parallel_clipper<float>::compute_clipped_clusters(void *a1)
{
  v1 = a1[5];
  v2 = ((a1[8] + ((v1[12] - v1[11]) >> 3) - 1) / a1[8] + (a1[7] + ((v1[15] - v1[14]) >> 4) - 1) / a1[7]) * a1[4];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN4geom14dispatch_applyIZNS_24cluster_parallel_clipperIfE24compute_clipped_clustersEvEUlmE_Lb1EEEvmP16dispatch_queue_sT__block_invoke_1;
  block[3] = &__block_descriptor_tmp_4;
  block[4] = a1;
  dispatch_apply(v2, 0, block);
}

void geom::cluster_parallel_clipper<float>::get_split_clusters(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = a1[5];
  v6 = (a1[8] + ((v5[12] - v5[11]) >> 3) - 1) / a1[8] + (a1[7] + ((v5[15] - v5[14]) >> 4) - 1) / a1[7];
  v7 = v6 * a4;
  v8 = v6 * a4 + v6;
  if (v6 * a4 >= v8)
  {
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = v6 * a4;
    do
    {
      v15 = (*a1 + 240 * v14);
      v10 += (v15[10] - v15[9]) >> 4;
      v11 += (v15[13] - v15[12]) >> 4;
      v12 += (v15[16] - v15[15]) >> 3;
      v13 += (v15[19] - v15[18]) >> 3;
      ++v14;
    }

    while (v14 < v8);
  }

  memset(v43, 0, sizeof(v43));
  memset(v42, 0, sizeof(v42));
  memset(&__c, 0, sizeof(__c));
  __p = 0uLL;
  v40 = 0;
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::reserve(v43, v10);
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::reserve(v42, v11);
  std::vector<double>::reserve(&__c, v12);
  std::vector<double>::reserve(&__p, v13);
  v16.n128_u64[0] = 0x7F0000007FLL;
  v16.n128_u64[1] = 0x7F0000007FLL;
  if (v7 >= v8)
  {
    v18 = vnegq_f32(v16);
    v33.n128_u64[0] = 0x7F0000007FLL;
    v33.n128_u64[1] = 0x7F0000007FLL;
    v37 = v18;
    v38 = v33;
  }

  else
  {
    v17.n128_u64[0] = 0x7F0000007FLL;
    v17.n128_u64[1] = 0x7F0000007FLL;
    v18 = vnegq_f32(v16);
    v37 = v18;
    v38 = v17;
    do
    {
      v35 = v18;
      v36 = v16;
      v19 = *a1 + 240 * v7;
      v20 = *(v19 + 72);
      v21 = *(v19 + 80);
      while (v20 != v21)
      {
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100](v43, v20);
        v20 += 16;
      }

      v23 = *(v19 + 96);
      v22 = *(v19 + 104);
      while (v23 != v22)
      {
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100](v42, v23);
        v23 += 16;
      }

      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<unsigned long long const*,unsigned long long const*,std::back_insert_iterator<std::vector<unsigned long long>>>(v44, *(v19 + 120), *(v19 + 128), &__c.__begin_);
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<unsigned long long const*,unsigned long long const*,std::back_insert_iterator<std::vector<unsigned long long>>>(v44, *(v19 + 144), *(v19 + 152), &__p);
      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::clear[abi:nn200100]((v19 + 72));
      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::clear[abi:nn200100]((v19 + 96));
      v25 = v35;
      v24 = v36;
      v25.i32[3] = 0;
      v26 = *(v19 + 176);
      v27 = *(v19 + 192);
      v26.i32[3] = 0;
      v18 = vminnmq_f32(v25, v26);
      v24.i32[3] = 0;
      v27.i32[3] = 0;
      v16 = vmaxnmq_f32(v24, v27);
      v28 = v37;
      v28.i32[3] = 0;
      v29 = *(v19 + 208);
      v30 = *(v19 + 224);
      v29.i32[3] = 0;
      v31 = vminnmq_f32(v28, v29);
      *(v19 + 128) = *(v19 + 120);
      v32 = v38;
      v32.i32[3] = 0;
      *(v19 + 152) = *(v19 + 144);
      v30.i32[3] = 0;
      v37 = v31;
      v38 = vmaxnmq_f32(v32, v30);
      ++v7;
    }

    while (v7 < v8);
  }

  geom::cluster<float>::init(a2, *(a1[5] + 72), *(a1[5] + 80), a1[6], &__c, v43, *(a1[5] + 64), v18, v16, *(a1[5] + 68));
  geom::cluster<float>::init(a3, *(a1[5] + 72), *(a1[5] + 80), a1[6], &__p, v42, *(a1[5] + 64), v37, v38, *(a1[5] + 68));
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (__c.__begin_)
  {
    __c.__end_ = __c.__begin_;
    operator delete(__c.__begin_);
  }

  __c.__begin_ = v42;
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&__c);
  v42[0] = v43;
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v42);
}

void geom::cluster_parallel_clipper<float>::deinit(uint64_t *a1)
{
  v2 = a1[6];
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  if (v3 != v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = (v4 + 16 * v5);
      v8 = v7[1];
      if (v8 && !*(v8 + 8))
      {
        ++v6;
      }

      else
      {
        v9 = *v7;
        *v7 = *(v3 - 16);
        *(v3 - 16) = v9;
        v10 = v7[1];
        v7[1] = *(v3 - 8);
        *(v3 - 8) = v10;
        v11 = *(v2 + 16);
        v12 = *(v11 - 8);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v12);
        }

        v3 = v11 - 16;
        *(v2 + 16) = v11 - 16;
        v4 = *(v2 + 8);
      }

      v5 = v6;
    }

    while (v6 < ((v3 - v4) >> 4));
  }

  atomic_store(0, v2);
  v13 = *a1;
  v14 = a1[1];
  if (*a1 != v14)
  {
    v15.i64[0] = 0x7F0000007FLL;
    v15.i64[1] = 0x7F0000007FLL;
    v30 = vnegq_f32(v15);
    v16 = vneg_f32(0x3F0000003FLL);
    do
    {
      *(v13 + 8) = *v13;
      *(v13 + 32) = *(v13 + 24);
      *(v13 + 56) = *(v13 + 48);
      v17 = *(v13 + 72);
      v18 = *(v13 + 80);
      while (v17 != v18)
      {
        v19 = *(v17 + 8);
        if (v19)
        {
          if (!*(v19 + 8))
          {
            v20 = a1[6];
            std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((v20 + 8), v17);
            v21 = *(*(v20 + 16) - 16);
            *(v21 + 56) = *(v21 + 48);
            *(v21 + 80) = *(v21 + 72);
            *v21 = v16;
            *&v22 = 0x7F0000007FLL;
            *(&v22 + 1) = 0x7F0000007FLL;
            *(v21 + 16) = v30;
            *(v21 + 32) = v22;
          }
        }

        v17 += 16;
      }

      v23 = *(v13 + 96);
      v24 = *(v13 + 104);
      while (v23 != v24)
      {
        v25 = *(v23 + 8);
        if (v25 && !*(v25 + 8))
        {
          v26 = a1[6];
          std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((v26 + 8), v23);
          v27 = *(*(v26 + 16) - 16);
          *(v27 + 56) = *(v27 + 48);
          *(v27 + 80) = *(v27 + 72);
          *v27 = v16;
          *&v28 = 0x7F0000007FLL;
          *(&v28 + 1) = 0x7F0000007FLL;
          *(v27 + 16) = v30;
          *(v27 + 32) = v28;
        }

        v23 += 16;
      }

      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::clear[abi:nn200100]((v13 + 72));
      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::clear[abi:nn200100]((v13 + 96));
      *(v13 + 128) = *(v13 + 120);
      *(v13 + 152) = *(v13 + 144);
      *&v29 = 0x7F0000007FLL;
      *(&v29 + 1) = 0x7F0000007FLL;
      *(v13 + 176) = v30;
      *(v13 + 192) = v29;
      *(v13 + 208) = v30;
      *(v13 + 224) = v29;
      v13 += 240;
    }

    while (v13 != v14);
  }

  a1[5] = 0;
  a1[6] = 0;
}

void geom::cluster_parallel_clipper<float>::boundary_component_work_item(uint64_t a1, uint64_t a2, float32x4_t *a3, __int128 *a4, uint64_t a5)
{
  if (a5)
  {
    v5 = a4;
    v9 = fmaxf(fmaxf(fmaxf(COERCE_FLOAT(*(*(*(a1 + 40) + 72) + 16)), COERCE_FLOAT(*(*(*(a1 + 40) + 72) + 24))), COERCE_FLOAT(HIDWORD(*(*(*(a1 + 40) + 72) + 16)))), 1.0) * 0.00000011921;
    v10 = &a4[a5];
    v11 = (a2 + 24);
    do
    {
      v12 = *(*v5 + 16);
      v13 = *(*v5 + 32);
      v14.i64[0] = 0x3F0000003F000000;
      v14.i64[1] = 0x3F0000003F000000;
      v15 = vmulq_f32(vaddq_f32(v12, v13), v14);
      v16 = vsubq_f32(v13, v12);
      v17 = vmulq_f32(v16, v16);
      v18 = (sqrtf(v17.f32[2] + vaddv_f32(*v17.f32)) * 0.5) - v9;
      v19 = vmulq_f32(*a3, v15);
      v20 = a3[1].f32[0] + (v19.f32[2] + vaddv_f32(*v19.f32));
      if (v20 <= -v18)
      {
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((a2 + 72), v5);
        v25 = *v5;
        v26 = *(a2 + 176);
        v27 = *(a2 + 192);
        v26.i32[3] = 0;
        v28 = *(*v5 + 16);
        v28.i32[3] = 0;
        *(a2 + 176) = vminnmq_f32(v26, v28);
        v29 = v25[2];
        v27.i32[3] = 0;
        v29.i32[3] = 0;
        *(a2 + 192) = vmaxnmq_f32(v27, v29);
      }

      else
      {
        if (v20 < v18)
        {
          v22 = *(a1 + 48);
          add = atomic_fetch_add(v22, 1u);
          v23 = *(v22 + 8);
          if (add >= (*(v22 + 16) - v23) >> 4)
          {
            operator new();
          }

          v24 = *(v23 + 16 * add);
          v84 = v24;
          if (*(&v24 + 1))
          {
            atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v36 = *(a1 + 48);
          v35 = atomic_fetch_add(v36, 1u);
          v37 = *(v36 + 8);
          if (v35 >= (*(v36 + 16) - v37) >> 4)
          {
            operator new();
          }

          v38 = *(v37 + 16 * v35);
          v83 = v38;
          if (*(&v38 + 1))
          {
            atomic_fetch_add_explicit((*(&v38 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v39 = *v5;
          v40 = (*(*v5 + 56) - *(*v5 + 48)) >> 4;
          v82[0] = *(*v5 + 48);
          v82[1] = v40;
          v41 = v39[4].i64[1];
          v42 = (v39[5].i64[0] - v41) >> 2;
          v81[0] = v41;
          v81[1] = v42;
          geom::split_triangle_mesh_with_plane<float>(v82, v81, a3, (v84 + 48), (v84 + 72), (v38 + 48), (v38 + 72), (a2 + 48), a2, v11);
          if (*(v84 + 56) == *(v84 + 48))
          {
            std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((a2 + 96), v5);
            v71 = *v5;
            v72 = *(a2 + 208);
            v73 = *(a2 + 224);
            v72.i32[3] = 0;
            v74 = *(*v5 + 16);
            v74.i32[3] = 0;
            *(a2 + 208) = vminnmq_f32(v72, v74);
            v75 = v71[2];
            v73.i32[3] = 0;
            v75.i32[3] = 0;
            *(a2 + 224) = vmaxnmq_f32(v73, v75);
          }

          else if (*(v83 + 56) != *(v83 + 48))
          {
            geom::close_triangle_mesh<float>((v84 + 48), v84 + 72);
            geom::close_triangle_mesh<float>((v83 + 48), v83 + 72);
            v43 = v84;
            v44 = *(v84 + 48);
            v45 = *(v84 + 56);
            v46.i64[0] = 0x7F0000007FLL;
            v46.i64[1] = 0x7F0000007FLL;
            v47 = vnegq_f32(v46);
            v48 = v47;
            v49.i64[0] = 0x7F0000007FLL;
            v49.i64[1] = 0x7F0000007FLL;
            if (v45 != v44)
            {
              v48 = vnegq_f32(v49);
              do
              {
                v50 = *v44++;
                v51 = v50;
                v51.i32[3] = 0;
                v48.i32[3] = 0;
                v48 = vminnmq_f32(v51, v48);
                v49.i32[3] = 0;
                v49 = vmaxnmq_f32(v51, v49);
              }

              while (v44 != v45);
            }

            *(v84 + 16) = v48;
            v43[2] = v49;
            v52 = v83;
            v53 = *(v83 + 48);
            v54 = *(v83 + 56);
            if (v54 != v53)
            {
              v46.i64[0] = 0x7F0000007FLL;
              v46.i64[1] = 0x7F0000007FLL;
              v47 = vnegq_f32(v46);
              do
              {
                v55 = *v53++;
                v56 = v55;
                v56.i32[3] = 0;
                v47.i32[3] = 0;
                v47 = vminnmq_f32(v56, v47);
                v46.i32[3] = 0;
                v46 = vmaxnmq_f32(v56, v46);
              }

              while (v53 != v54);
            }

            *(v83 + 16) = v47;
            v52[2] = v46;
            v57 = geom::triangle_mesh_volume_3<float>(v43[3].i64[0], (v43[3].i64[1] - v43[3].i64[0]) >> 4, v43[4].i64[1], (v43[5].i64[0] - v43[4].i64[1]) >> 2);
            *v84 = v57;
            v58 = geom::triangle_mesh_volume_3<float>(*(v83 + 48), (*(v83 + 56) - *(v83 + 48)) >> 4, *(v83 + 72), (*(v83 + 80) - *(v83 + 72)) >> 2);
            *v83 = v58;
            v59 = geom::triangle_mesh_surface_area_3<float>(*(v84 + 48), (*(v84 + 56) - *(v84 + 48)) >> 4, *(v84 + 72), (*(v84 + 80) - *(v84 + 72)) >> 2);
            *(v84 + 4) = LODWORD(v59);
            v60 = geom::triangle_mesh_surface_area_3<float>(*(v83 + 48), (*(v83 + 56) - *(v83 + 48)) >> 4, *(v83 + 72), (*(v83 + 80) - *(v83 + 72)) >> 2);
            v61 = v83;
            *(v83 + 4) = LODWORD(v60);
            v62 = v84;
            v63 = *(v84 + 16);
            v64 = *(a2 + 176);
            v65 = *(a2 + 192);
            v64.i32[3] = 0;
            v63.i32[3] = 0;
            *(a2 + 176) = vminnmq_f32(v64, v63);
            v66 = v62[2];
            v65.i32[3] = 0;
            v66.i32[3] = 0;
            *(a2 + 192) = vmaxnmq_f32(v65, v66);
            v67 = *(a2 + 208);
            v68 = *(a2 + 224);
            v67.i32[3] = 0;
            v69 = v61[1];
            v69.i32[3] = 0;
            *(a2 + 208) = vminnmq_f32(v67, v69);
            v70 = v61[2];
            v68.i32[3] = 0;
            v70.i32[3] = 0;
            *(a2 + 224) = vmaxnmq_f32(v68, v70);
            std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((a2 + 72), &v84);
            std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((a2 + 96), &v83);
LABEL_27:
            if (*(&v83 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v83 + 1));
            }

            if (*(&v84 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v84 + 1));
            }

            goto LABEL_31;
          }

          if (*(v83 + 48) == *(v83 + 56))
          {
            std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((a2 + 72), v5);
            v76 = *v5;
            v77 = *(a2 + 176);
            v78 = *(a2 + 192);
            v77.i32[3] = 0;
            v79 = *(*v5 + 16);
            v79.i32[3] = 0;
            *(a2 + 176) = vminnmq_f32(v77, v79);
            v80 = v76[2];
            v78.i32[3] = 0;
            v80.i32[3] = 0;
            *(a2 + 192) = vmaxnmq_f32(v78, v80);
          }

          goto LABEL_27;
        }

        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((a2 + 96), v5);
        v30 = *v5;
        v31 = *(a2 + 208);
        v32 = *(a2 + 224);
        v31.i32[3] = 0;
        v33 = *(*v5 + 16);
        v33.i32[3] = 0;
        *(a2 + 208) = vminnmq_f32(v31, v33);
        v34 = v30[2];
        v32.i32[3] = 0;
        v34.i32[3] = 0;
        *(a2 + 224) = vmaxnmq_f32(v32, v34);
      }

LABEL_31:
      ++v5;
    }

    while (v5 != v10);
  }
}

uint64_t geom::close_triangle_mesh<float>(uint64_t *a1, uint64_t a2)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 1065353216;
  if ((((*(a2 + 8) - *a2) >> 2) / 3uLL))
  {
    v4 = 0;
    v5 = 3 * (((*(a2 + 8) - *a2) >> 2) / 3uLL);
    do
    {
      v6 = *(*a2 + 4 * (v4 + 1));
      v7 = *(*a2 + 4 * (v4 + 2));
      v14.i32[0] = *(*a2 + 4 * v4);
      v14.i32[1] = v6;
      v16[0] = v7;
      v16[1] = v6;
      v15[0] = v14.i32[0];
      v15[1] = v7;
      if (!std::__hash_table<geom::edge,geom::edge_hash,std::equal_to<geom::edge>,std::allocator<geom::edge>>::__erase_unique<geom::edge>(&v17, &v14))
      {
        std::__hash_table<geom::edge,geom::edge_hash,std::equal_to<geom::edge>,std::allocator<geom::edge>>::__emplace_unique_key_args<geom::edge,geom::edge const&>(&v17, &v14);
      }

      if (!std::__hash_table<geom::edge,geom::edge_hash,std::equal_to<geom::edge>,std::allocator<geom::edge>>::__erase_unique<geom::edge>(&v17, v16))
      {
        std::__hash_table<geom::edge,geom::edge_hash,std::equal_to<geom::edge>,std::allocator<geom::edge>>::__emplace_unique_key_args<geom::edge,geom::edge const&>(&v17, v16);
      }

      if (!std::__hash_table<geom::edge,geom::edge_hash,std::equal_to<geom::edge>,std::allocator<geom::edge>>::__erase_unique<geom::edge>(&v17, v15))
      {
        std::__hash_table<geom::edge,geom::edge_hash,std::equal_to<geom::edge>,std::allocator<geom::edge>>::__emplace_unique_key_args<geom::edge,geom::edge const&>(&v17, v15);
      }

      v4 += 3;
    }

    while (v5 != v4);
    if (*(&v18 + 1))
    {
      v9 = v18;
      v10 = *a1;
      for (i = 0uLL; v9; v9 = *v9)
      {
        v8 = *(v10 + 16 * *(v9 + 5));
        i = vaddq_f32(vaddq_f32(*(v10 + 16 * *(v9 + 4)), i), v8);
        v14 = i;
      }

      v8.f32[0] = (2 * *(&v18 + 1));
      v14 = vdivq_f32(i, vdupq_lane_s32(*v8.f32, 0));
      v16[0] = (a1[1] - v10) >> 4;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1, &v14);
      for (j = v18; j; j = *j)
      {
        std::vector<unsigned int>::push_back[abi:nn200100](a2, v16);
        std::vector<unsigned int>::push_back[abi:nn200100](a2, j + 4);
        std::vector<unsigned int>::push_back[abi:nn200100](a2, j + 5);
      }
    }
  }

  return std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(&v17);
}

void geom::cluster_parallel_clipper<float>::interior_component_work_item(uint64_t a1, uint64_t a2, float32x4_t *a3, void *a4, uint64_t a5, double a6, uint32x4_t a7, double a8, __n128 a9, __n128 a10)
{
  v111 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v10 = a4;
    v14 = fmaxf(fmaxf(fmaxf(COERCE_FLOAT(*(*(*(a1 + 40) + 72) + 16)), COERCE_FLOAT(*(*(*(a1 + 40) + 72) + 24))), COERCE_FLOAT(HIDWORD(*(*(*(a1 + 40) + 72) + 16)))), 1.0) * 0.00000011921;
    v15 = &a4[a5];
    v16 = (a2 + 24);
    do
    {
      v17 = a10.n128_u32[3];
      v18 = *(*(a1 + 40) + 72);
      v19 = v18->i32[2];
      a7.i32[0] = v19 & *v10;
      a7.i32[1] = (*v10 >> v18->i32[0]) & v19;
      a7.i32[2] = (*v10 >> (2 * v18->i8[0])) & v19;
      v20 = v18[1];
      v21 = vmlaq_f32(v18[2], vcvtq_f32_u32(a7), v20);
      v22 = vaddq_f32(v20, v21);
      v23 = v21;
      v23.i32[3] = v17;
      v24 = v22;
      v24.i32[3] = a9.n128_i32[3];
      v25.i64[0] = 0x3F0000003F000000;
      v25.i64[1] = 0x3F0000003F000000;
      v26 = vsubq_f32(v24, v23);
      v27 = vmulq_f32(v26, v26);
      v28 = (sqrtf(v27.f32[2] + vaddv_f32(*v27.f32)) * 0.5) - v14;
      v29 = vmulq_f32(*a3, vmulq_f32(vaddq_f32(v21, v22), v25));
      v30 = a3[1].f32[0] + (v29.f32[2] + vaddv_f32(*v29.f32));
      v103 = v23;
      v104 = v24;
      if (v30 <= -v28)
      {
        std::vector<unsigned long long>::push_back[abi:nn200100]((a2 + 120), v10);
        a10.n128_u32[3] = v103.u32[3];
        a9.n128_u32[3] = v104.u32[3];
        v40 = *(a2 + 176);
        v41 = *(a2 + 192);
        v40.i32[3] = 0;
        v42 = v103;
        v42.i32[3] = 0;
        v43 = vminnmq_f32(v40, v42);
        v41.i32[3] = 0;
        v44 = v104;
        v44.i32[3] = 0;
        a7 = vmaxnmq_f32(v41, v44);
        *(a2 + 176) = v43;
        *(a2 + 192) = a7;
      }

      else
      {
        if (v30 < v28)
        {
          v31 = v21;
          v31.i32[0] = v22.i32[0];
          v32 = v22;
          v32.i32[2] = v21.i32[2];
          v110[0] = v21;
          v110[1] = v31;
          v33 = v21;
          v33.i32[1] = v22.i32[1];
          v110[2] = v32;
          v110[3] = v33;
          v34 = v21;
          v34.i32[2] = v22.i32[2];
          v35 = v22;
          v35.i32[1] = v21.i32[1];
          v110[4] = v34;
          v110[5] = v35;
          v110[6] = v22;
          v22.i32[0] = v21.i32[0];
          v110[7] = v22;
          v109[6] = xmmword_2500D13B0;
          v109[7] = unk_2500D13C0;
          v109[8] = xmmword_2500D13D0;
          v109[2] = xmmword_2500D1370;
          v109[3] = unk_2500D1380;
          v109[4] = xmmword_2500D1390;
          v109[5] = unk_2500D13A0;
          v109[0] = xmmword_2500D1350;
          v109[1] = unk_2500D1360;
          v37 = *(a1 + 48);
          add = atomic_fetch_add(v37, 1u);
          v38 = *(v37 + 8);
          if (add >= (*(v37 + 16) - v38) >> 4)
          {
            operator new();
          }

          v39 = *(v38 + 16 * add);
          v108 = v39;
          if (*(&v39 + 1))
          {
            atomic_fetch_add_explicit((*(&v39 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v51 = *(a1 + 48);
          v50 = atomic_fetch_add(v51, 1u);
          v52 = *(v51 + 8);
          if (v50 >= (*(v51 + 16) - v52) >> 4)
          {
            operator new();
          }

          v53 = *(v52 + 16 * v50);
          v107 = v53;
          if (*(&v53 + 1))
          {
            atomic_fetch_add_explicit((*(&v53 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v105[1] = 36;
          v106[0] = v110;
          v106[1] = 8;
          v105[0] = v109;
          geom::split_triangle_mesh_with_plane<float>(v106, v105, a3, (v108 + 48), (v108 + 72), (v53 + 48), (v53 + 72), (a2 + 48), a2, v16);
          v54 = v108;
          v55 = *(v108 + 48);
          v56 = *(v108 + 56) - v55;
          if (v56)
          {
            if (*(v107 + 56) == *(v107 + 48))
            {
              v95 = *(*(*(a1 + 40) + 72) + 16);
              *v108 = vmuls_lane_f32(vmuls_lane_f32(v95.f32[0], *v95.f32, 1), v95, 2);
              v96 = geom::triangle_mesh_surface_area_3<float>(v55, v56 >> 4, *(v54 + 72), (*(v54 + 80) - *(v54 + 72)) >> 2);
              v97 = v108;
              *(v108 + 4) = LODWORD(v96);
              v98 = v103;
              v97[1] = v103;
              v97[2] = v104;
              v99 = *(a2 + 176);
              v100 = *(a2 + 192);
              v99.i32[3] = 0;
              v98.i32[3] = 0;
              *(a2 + 176) = vminnmq_f32(v99, v98);
              v101 = v97[2];
              v100.i32[3] = 0;
              v101.i32[3] = 0;
              *(a2 + 192) = vmaxnmq_f32(v100, v101);
              v93 = (a2 + 72);
              v94 = &v108;
            }

            else
            {
              geom::close_triangle_mesh<float>((v108 + 48), v108 + 72);
              geom::close_triangle_mesh<float>((v107 + 48), v107 + 72);
              v57 = v108;
              v58 = *(v108 + 48);
              v59 = *(v108 + 56);
              v60.i64[0] = 0x7F0000007FLL;
              v60.i64[1] = 0x7F0000007FLL;
              v61 = vnegq_f32(v60);
              v62 = v61;
              v63.i64[0] = 0x7F0000007FLL;
              v63.i64[1] = 0x7F0000007FLL;
              if (v59 != v58)
              {
                v62 = vnegq_f32(v63);
                do
                {
                  v64 = *v58++;
                  v65 = v64;
                  v65.i32[3] = 0;
                  v62.i32[3] = 0;
                  v62 = vminnmq_f32(v65, v62);
                  v63.i32[3] = 0;
                  v63 = vmaxnmq_f32(v65, v63);
                }

                while (v58 != v59);
              }

              *(v108 + 16) = v62;
              v57[2] = v63;
              v66 = v107;
              v67 = *(v107 + 48);
              v68 = *(v107 + 56);
              if (v68 != v67)
              {
                v60.i64[0] = 0x7F0000007FLL;
                v60.i64[1] = 0x7F0000007FLL;
                v61 = vnegq_f32(v60);
                do
                {
                  v69 = *v67++;
                  v70 = v69;
                  v70.i32[3] = 0;
                  v61.i32[3] = 0;
                  v61 = vminnmq_f32(v70, v61);
                  v60.i32[3] = 0;
                  v60 = vmaxnmq_f32(v70, v60);
                }

                while (v67 != v68);
              }

              *(v107 + 16) = v61;
              v66[2] = v60;
              v71 = geom::triangle_mesh_volume_3<float>(v57[3].i64[0], (v57[3].i64[1] - v57[3].i64[0]) >> 4, v57[4].i64[1], (v57[5].i64[0] - v57[4].i64[1]) >> 2);
              *v108 = v71;
              v72 = geom::triangle_mesh_volume_3<float>(*(v107 + 48), (*(v107 + 56) - *(v107 + 48)) >> 4, *(v107 + 72), (*(v107 + 80) - *(v107 + 72)) >> 2);
              *v107 = v72;
              v73 = geom::triangle_mesh_surface_area_3<float>(*(v108 + 48), (*(v108 + 56) - *(v108 + 48)) >> 4, *(v108 + 72), (*(v108 + 80) - *(v108 + 72)) >> 2);
              *(v108 + 4) = LODWORD(v73);
              v74 = geom::triangle_mesh_surface_area_3<float>(*(v107 + 48), (*(v107 + 56) - *(v107 + 48)) >> 4, *(v107 + 72), (*(v107 + 80) - *(v107 + 72)) >> 2);
              v75 = v107;
              *(v107 + 4) = LODWORD(v74);
              v76 = v108;
              v77 = *(v108 + 16);
              v78 = *(a2 + 176);
              v79 = *(a2 + 192);
              v78.i32[3] = 0;
              v77.i32[3] = 0;
              *(a2 + 176) = vminnmq_f32(v78, v77);
              v80 = v76[2];
              v79.i32[3] = 0;
              v80.i32[3] = 0;
              *(a2 + 192) = vmaxnmq_f32(v79, v80);
              v81 = *(a2 + 208);
              v82 = *(a2 + 224);
              v81.i32[3] = 0;
              v83 = v75[1];
              v83.i32[3] = 0;
              *(a2 + 208) = vminnmq_f32(v81, v83);
              v84 = v75[2];
              v82.i32[3] = 0;
              v84.i32[3] = 0;
              *(a2 + 224) = vmaxnmq_f32(v82, v84);
              std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((a2 + 72), &v108);
LABEL_25:
              v93 = (a2 + 96);
              v94 = &v107;
            }

            std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100](v93, v94);
            if (*(&v107 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v107 + 1));
            }

            if (*(&v108 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v108 + 1));
            }

            a10.n128_u32[3] = v103.u32[3];
            a9.n128_u32[3] = v104.u32[3];
            goto LABEL_32;
          }

          v85 = *(*(*(a1 + 40) + 72) + 16);
          v86 = v107;
          *v107 = vmuls_lane_f32(vmuls_lane_f32(v85.f32[0], *v85.f32, 1), v85, 2);
          v87 = geom::triangle_mesh_surface_area_3<float>(v86[6], (v86[7] - v86[6]) >> 4, v86[9], (v86[10] - v86[9]) >> 2);
          v88 = v107;
          *(v107 + 4) = LODWORD(v87);
          v89 = v103;
          v88[1] = v103;
          v88[2] = v104;
          v90 = *(a2 + 208);
          v91 = *(a2 + 224);
          v90.i32[3] = 0;
          v89.i32[3] = 0;
          *(a2 + 208) = vminnmq_f32(v90, v89);
          v92 = v88[2];
          v91.i32[3] = 0;
          v92.i32[3] = 0;
          *(a2 + 224) = vmaxnmq_f32(v91, v92);
          goto LABEL_25;
        }

        std::vector<unsigned long long>::push_back[abi:nn200100]((a2 + 144), v10);
        a10.n128_u32[3] = v103.u32[3];
        a9.n128_u32[3] = v104.u32[3];
        v45 = *(a2 + 208);
        v46 = *(a2 + 224);
        v45.i32[3] = 0;
        v47 = v103;
        v47.i32[3] = 0;
        v48 = vminnmq_f32(v45, v47);
        v46.i32[3] = 0;
        v49 = v104;
        v49.i32[3] = 0;
        a7 = vmaxnmq_f32(v46, v49);
        *(a2 + 208) = v48;
        *(a2 + 224) = a7;
      }

LABEL_32:
      ++v10;
    }

    while (v10 != v15);
  }

  v102 = *MEMORY[0x277D85DE8];
}

uint64_t *geom::cluster_parallel_clipper<double>::init(uint64_t *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, __n128 a8, double a9, __n128 a10)
{
  result[3] = a4;
  result[4] = a5;
  result[5] = a2;
  result[6] = a3;
  v10 = a2[22] - a2[21];
  v11 = ((v10 >> 4) * a5) >> 11;
  if (v11 <= 0x20)
  {
    v11 = 32;
  }

  v12 = a2[19] - a2[18];
  v13 = ((v12 >> 3) * a5) >> 10;
  if (v13 <= 0x40)
  {
    v13 = 64;
  }

  result[7] = v11;
  result[8] = v13;
  v14 = ((v13 + (v12 >> 3) - 1) / v13 + (v11 + (v10 >> 4) - 1) / v11) * a5;
  if (0x86BCA1AF286BCA1BLL * ((result[1] - *result) >> 4) < v14)
  {
    return std::vector<geom::cluster_parallel_clipper<double>::clipping_context,std::allocator<geom::cluster_parallel_clipper<double>::clipping_context>>::resize(result, v14, a6, a7, a8, a9, a10);
  }

  return result;
}

uint64_t *std::vector<geom::cluster_parallel_clipper<double>::clipping_context,std::allocator<geom::cluster_parallel_clipper<double>::clipping_context>>::resize(uint64_t *a1, unint64_t a2, double a3, double a4, __n128 a5, double a6, __n128 a7)
{
  result = a1[1];
  v9 = 0x86BCA1AF286BCA1BLL * ((result - *a1) >> 4);
  v10 = a2 >= v9;
  v11 = a2 - v9;
  if (v11 != 0 && v10)
  {

    return std::vector<geom::cluster_parallel_clipper<double>::clipping_context,std::allocator<geom::cluster_parallel_clipper<double>::clipping_context>>::__append(a1, v11, a3, a4, a5, a6, a7);
  }

  else if (!v10)
  {
    v12 = *a1 + 304 * a2;
    while (result != v12)
    {
      result = geom::cluster_parallel_clipper<float>::clipping_context::~clipping_context((result - 38));
    }

    a1[1] = v12;
  }

  return result;
}

void geom::cluster_parallel_clipper<double>::compute_clipped_clusters(void *a1)
{
  v1 = a1[5];
  v2 = ((a1[8] + ((v1[19] - v1[18]) >> 3) - 1) / a1[8] + (a1[7] + ((v1[22] - v1[21]) >> 4) - 1) / a1[7]) * a1[4];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN4geom14dispatch_applyIZNS_24cluster_parallel_clipperIdE24compute_clipped_clustersEvEUlmE_Lb1EEEvmP16dispatch_queue_sT__block_invoke_1;
  block[3] = &__block_descriptor_tmp_5_0;
  block[4] = a1;
  dispatch_apply(v2, 0, block);
}

void geom::cluster_parallel_clipper<double>::get_split_clusters(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = a1[5];
  v7 = (a1[8] + ((v6[19] - v6[18]) >> 3) - 1) / a1[8] + (a1[7] + ((v6[22] - v6[21]) >> 4) - 1) / a1[7];
  v8 = v7 * a4;
  v9 = v7 * a4 + v7;
  if (v7 * a4 >= v9)
  {
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = v7 * a4;
    do
    {
      v15 = (*a1 + 304 * v14);
      v10 += (v15[10] - v15[9]) >> 4;
      v11 += (v15[13] - v15[12]) >> 4;
      v12 += (v15[16] - v15[15]) >> 3;
      v13 += (v15[19] - v15[18]) >> 3;
      ++v14;
    }

    while (v14 < v9);
  }

  memset(v49, 0, 24);
  memset(v48, 0, sizeof(v48));
  memset(&__c, 0, sizeof(__c));
  memset(&v46, 0, sizeof(v46));
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::reserve(v49, v10);
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::reserve(v48, v11);
  std::vector<double>::reserve(&__c, v12);
  std::vector<double>::reserve(&v46, v13);
  if (v8 >= v9)
  {
    v16.f64[0] = INFINITY;
    v17.f64[0] = -INFINITY;
    v18 = vdupq_n_s64(0x7FF0000000000000uLL);
    v19 = vdupq_n_s64(0xFFF0000000000000);
    v40 = v19;
    v41 = v17;
    v38 = v18;
    v39 = v16;
  }

  else
  {
    v38 = vdupq_n_s64(0x7FF0000000000000uLL);
    v39.f64[0] = INFINITY;
    v18 = v38;
    v16.f64[0] = INFINITY;
    v40 = vdupq_n_s64(0xFFF0000000000000);
    v41.f64[0] = -INFINITY;
    v19 = v40;
    v17.f64[0] = -INFINITY;
    do
    {
      v34 = v19;
      v35 = v17.f64[0];
      v36 = v18;
      v37 = v16.f64[0];
      v20 = *a1 + 304 * v8;
      v21 = *(v20 + 72);
      v22 = *(v20 + 80);
      while (v21 != v22)
      {
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100](v49, v21);
        v21 += 16;
      }

      v24 = *(v20 + 96);
      v23 = *(v20 + 104);
      while (v24 != v23)
      {
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100](v48, v24);
        v24 += 16;
      }

      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<unsigned long long const*,unsigned long long const*,std::back_insert_iterator<std::vector<unsigned long long>>>(&v42, *(v20 + 120), *(v20 + 128), &__c.__begin_);
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<unsigned long long const*,unsigned long long const*,std::back_insert_iterator<std::vector<unsigned long long>>>(&v42, *(v20 + 144), *(v20 + 152), &v46.__begin_);
      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::clear[abi:nn200100]((v20 + 72));
      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::clear[abi:nn200100]((v20 + 96));
      *(v20 + 128) = *(v20 + 120);
      *(v20 + 152) = *(v20 + 144);
      v18 = vminnmq_f64(v36, *(v20 + 176));
      v16 = vminnmq_f64(*&v37, *(v20 + 192));
      v19 = vmaxnmq_f64(v34, *(v20 + 208));
      v17 = vmaxnmq_f64(*&v35, *(v20 + 224));
      v38 = vminnmq_f64(v38, *(v20 + 240));
      v39 = vminnmq_f64(*&v39.f64[0], *(v20 + 256));
      v40 = vmaxnmq_f64(v40, *(v20 + 272));
      v41 = vmaxnmq_f64(*&v41.f64[0], *(v20 + 288));
      ++v8;
    }

    while (v8 < v9);
  }

  v26 = a1[5];
  v25 = a1[6];
  v27 = *(v26 + 128);
  v28 = *(v26 + 136);
  v42 = v18;
  v43 = v16;
  v44 = v19;
  v45 = v17;
  geom::cluster<double>::init(a2, v27, v28, v25, &__c, v49, &v42, *(v26 + 112), *(v26 + 120));
  v30 = a1[5];
  v29 = a1[6];
  v31 = *(v30 + 128);
  v32 = *(v30 + 136);
  v42 = v38;
  v43 = v39;
  v44 = v40;
  v45 = v41;
  geom::cluster<double>::init(a3, v31, v32, v29, &v46, v48, &v42, *(v30 + 112), *(v30 + 120));
  if (v46.__begin_)
  {
    v46.__end_ = v46.__begin_;
    operator delete(v46.__begin_);
  }

  if (__c.__begin_)
  {
    __c.__end_ = __c.__begin_;
    operator delete(__c.__begin_);
  }

  *&v42.f64[0] = v48;
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v42);
  *&v42.f64[0] = v49;
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v42);
}

void geom::cluster_parallel_clipper<double>::deinit(uint64_t *a1, __n128 a2)
{
  v3 = a1[6];
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  if (v4 != v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (v5 + 16 * v6);
      v9 = v8[1];
      if (v9 && !*(v9 + 8))
      {
        ++v7;
      }

      else
      {
        v10 = *v8;
        *v8 = *(v4 - 16);
        *(v4 - 16) = v10;
        v11 = v8[1];
        v8[1] = *(v4 - 8);
        *(v4 - 8) = v11;
        v12 = *(v3 + 16);
        v13 = *(v12 - 8);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v13);
        }

        v4 = v12 - 16;
        *(v3 + 16) = v12 - 16;
        v5 = *(v3 + 8);
      }

      v6 = v7;
    }

    while (v7 < ((v4 - v5) >> 4));
  }

  atomic_store(0, v3);
  v14 = *a1;
  v15 = a1[1];
  if (*a1 != v15)
  {
    a2.n128_u64[0] = 0x7FF0000000000000;
    v29 = a2;
    v30 = vdupq_n_s64(0x7FF0000000000000uLL);
    a2.n128_u64[0] = 0xFFF0000000000000;
    v27 = a2;
    v28 = vdupq_n_s64(0xFFF0000000000000);
    v26 = vdupq_n_s64(0x7FF8000000000000uLL);
    do
    {
      *(v14 + 8) = *v14;
      *(v14 + 32) = *(v14 + 24);
      *(v14 + 56) = *(v14 + 48);
      v16 = *(v14 + 72);
      v17 = *(v14 + 80);
      while (v16 != v17)
      {
        v18 = *(v16 + 8);
        if (v18)
        {
          if (!*(v18 + 8))
          {
            v19 = a1[6];
            std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((v19 + 8), v16);
            v20 = *(*(v19 + 16) - 16);
            *(v20 + 88) = *(v20 + 80);
            *(v20 + 112) = *(v20 + 104);
            *v20 = v26;
            *(v20 + 16) = v30;
            *(v20 + 32) = v29;
            *(v20 + 48) = v28;
            *(v20 + 64) = v27;
          }
        }

        v16 += 16;
      }

      v21 = *(v14 + 96);
      v22 = *(v14 + 104);
      while (v21 != v22)
      {
        v23 = *(v21 + 8);
        if (v23 && !*(v23 + 8))
        {
          v24 = a1[6];
          std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((v24 + 8), v21);
          v25 = *(*(v24 + 16) - 16);
          *(v25 + 88) = *(v25 + 80);
          *(v25 + 112) = *(v25 + 104);
          *v25 = v26;
          *(v25 + 16) = v30;
          *(v25 + 32) = v29;
          *(v25 + 48) = v28;
          *(v25 + 64) = v27;
        }

        v21 += 16;
      }

      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::clear[abi:nn200100]((v14 + 72));
      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::clear[abi:nn200100]((v14 + 96));
      *(v14 + 128) = *(v14 + 120);
      *(v14 + 152) = *(v14 + 144);
      *(v14 + 176) = v30;
      *(v14 + 192) = v29;
      *(v14 + 208) = v28;
      *(v14 + 224) = v27;
      *(v14 + 240) = v30;
      *(v14 + 256) = v29;
      *(v14 + 272) = v28;
      *(v14 + 288) = v27;
      v14 += 304;
    }

    while (v14 != v15);
  }

  a1[5] = 0;
  a1[6] = 0;
}

void geom::cluster_parallel_clipper<double>::boundary_component_work_item(uint64_t a1, uint64_t a2, float64x2_t *a3, float64x2_t **a4, uint64_t a5)
{
  if (a5)
  {
    v5 = a4;
    v9 = fmax(fmax(fmax(*(*(*(a1 + 40) + 128) + 16), *(*(*(a1 + 40) + 128) + 32)), *(*(*(a1 + 40) + 128) + 24)), 1.0) * 2.22044605e-16;
    v10 = &a4[2 * a5];
    v11 = (a2 + 24);
    __asm { FMOV            V1.2D, #0.5 }

    v78 = vdupq_n_s64(0xFFF0000000000000);
    v79 = _Q1;
    v77 = vdupq_n_s64(0x7FF0000000000000uLL);
    do
    {
      v17 = (*v5)[1];
      v18 = (*v5)[2];
      v19 = (*v5)[3];
      v20 = (*v5)[4];
      v21 = vmulq_f64(vaddq_f64(v17, v19), v79);
      v22 = vmulq_f64(vaddq_f64(v18, v20), v79);
      v23 = vsubq_f64(v19, v17);
      v24 = vsubq_f64(v20, v18);
      v25 = sqrt(vmulq_f64(v24, v24).f64[0] + vaddvq_f64(vmulq_f64(v23, v23))) * 0.5 - v9;
      v26 = a3[2].f64[0] + vmulq_f64(a3[1], v22).f64[0] + vaddvq_f64(vmulq_f64(*a3, v21));
      if (v26 <= -v25)
      {
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((a2 + 72), v5);
        v31 = *v5;
        v32 = vminnmq_f64(*(a2 + 192), *&(*v5)[2].f64[0]);
        *(a2 + 176) = vminnmq_f64(*(a2 + 176), (*v5)[1]);
        *(a2 + 192) = v32;
        v33 = vmaxnmq_f64(*(a2 + 224), *&v31[4].f64[0]);
        *(a2 + 208) = vmaxnmq_f64(*(a2 + 208), v31[3]);
        *(a2 + 224) = v33;
      }

      else
      {
        if (v26 < v25)
        {
          v28 = *(a1 + 48);
          add = atomic_fetch_add(v28, 1u);
          v29 = *(v28 + 8);
          if (add >= (*(v28 + 16) - v29) >> 4)
          {
            operator new();
          }

          v30 = *(v29 + 16 * add);
          v83 = v30;
          if (*(&v30 + 1))
          {
            atomic_fetch_add_explicit((*(&v30 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v38 = *(a1 + 48);
          v37 = atomic_fetch_add(v38, 1u);
          v39 = *(v38 + 8);
          if (v37 >= (*(v38 + 16) - v39) >> 4)
          {
            operator new();
          }

          v40 = *(v39 + 16 * v37);
          v82 = v40;
          if (*(&v40 + 1))
          {
            atomic_fetch_add_explicit((*(&v40 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v41 = *v5;
          v42 = (*&(*v5)[5].f64[1] - *&(*v5)[5].f64[0]) >> 5;
          v81[0] = *&(*v5)[5].f64[0];
          v81[1] = v42;
          v43 = *&v41[6].f64[1];
          v44 = (*&v41[7].f64[0] - v43) >> 2;
          v80[0] = v43;
          v80[1] = v44;
          geom::split_triangle_mesh_with_plane<double>(v81, v80, a3, (v83 + 80), (v83 + 104), (v40 + 80), (v40 + 104), (a2 + 48), a2, v11);
          if (*(v83 + 88) == *(v83 + 80))
          {
            std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((a2 + 96), v5);
            v54 = *v5;
            v55 = vminnmq_f64(*(a2 + 256), *&(*v5)[2].f64[0]);
            *(a2 + 240) = vminnmq_f64(*(a2 + 240), (*v5)[1]);
            *(a2 + 256) = v55;
            v56 = vmaxnmq_f64(*(a2 + 288), *&v54[4].f64[0]);
            *(a2 + 272) = vmaxnmq_f64(*(a2 + 272), v54[3]);
            *(a2 + 288) = v56;
          }

          else if (*(v82 + 88) != *(v82 + 80))
          {
            geom::close_triangle_mesh<double>((v83 + 80), v83 + 104);
            geom::close_triangle_mesh<double>((v82 + 80), v82 + 104);
            v47 = v83;
            v48 = *(v83 + 80);
            v49 = *(v83 + 88);
            if (v49 == v48)
            {
              v45.f64[0] = -INFINITY;
              v46.f64[0] = INFINITY;
              v51 = v77;
              v50 = v78;
            }

            else
            {
              v46.f64[0] = INFINITY;
              v45.f64[0] = -INFINITY;
              v51 = v77;
              v50 = v78;
              do
              {
                v52 = *v48;
                v53 = v48[1];
                v48 += 2;
                v51 = vminnmq_f64(v52, v51);
                v46 = vminnmq_f64(*&v53.f64[0], *&v46.f64[0]);
                v50 = vmaxnmq_f64(v52, v50);
                v45 = vmaxnmq_f64(*&v53.f64[0], *&v45.f64[0]);
              }

              while (v48 != v49);
            }

            *(v83 + 16) = v51;
            *(v47 + 32) = v46;
            *(v47 + 48) = v50;
            *(v47 + 64) = v45;
            v60 = v82;
            v61 = *(v82 + 80);
            v62 = *(v82 + 88);
            if (v62 == v61)
            {
              v45.f64[0] = -INFINITY;
              v46.f64[0] = INFINITY;
              v64 = v77;
              v63 = v78;
            }

            else
            {
              v46.f64[0] = INFINITY;
              v45.f64[0] = -INFINITY;
              v64 = v77;
              v63 = v78;
              do
              {
                v65 = *v61;
                v66 = v61[1];
                v61 += 2;
                v64 = vminnmq_f64(v65, v64);
                v46 = vminnmq_f64(*&v66.f64[0], *&v46.f64[0]);
                v63 = vmaxnmq_f64(v65, v63);
                v45 = vmaxnmq_f64(*&v66.f64[0], *&v45.f64[0]);
              }

              while (v61 != v62);
            }

            *(v82 + 16) = v64;
            v60[2] = v46;
            v60[3] = v63;
            v60[4] = v45;
            v67 = geom::triangle_mesh_volume_3<double>(*(v47 + 80), (*(v47 + 88) - *(v47 + 80)) >> 5, *(v47 + 104), (*(v47 + 112) - *(v47 + 104)) >> 2);
            *v83 = v67;
            v68 = geom::triangle_mesh_volume_3<double>(*(v82 + 80), (*(v82 + 88) - *(v82 + 80)) >> 5, *(v82 + 104), (*(v82 + 112) - *(v82 + 104)) >> 2);
            *v82 = v68;
            v69 = geom::triangle_mesh_surface_area_3<double>(*(v83 + 80), (*(v83 + 88) - *(v83 + 80)) >> 5, *(v83 + 104), (*(v83 + 112) - *(v83 + 104)) >> 2);
            *(v83 + 8) = v69;
            v70 = geom::triangle_mesh_surface_area_3<double>(*(v82 + 80), (*(v82 + 88) - *(v82 + 80)) >> 5, *(v82 + 104), (*(v82 + 112) - *(v82 + 104)) >> 2);
            v71 = v82;
            *(v82 + 8) = v70;
            v72 = v83;
            v73 = vminnmq_f64(*(a2 + 192), *(v83 + 32));
            *(a2 + 176) = vminnmq_f64(*(a2 + 176), *(v83 + 16));
            *(a2 + 192) = v73;
            v74 = vmaxnmq_f64(*(a2 + 224), *(v72 + 64));
            *(a2 + 208) = vmaxnmq_f64(*(a2 + 208), *(v72 + 48));
            *(a2 + 224) = v74;
            v75 = vminnmq_f64(*(a2 + 256), *(v71 + 32));
            *(a2 + 240) = vminnmq_f64(*(a2 + 240), *(v71 + 16));
            *(a2 + 256) = v75;
            v76 = vmaxnmq_f64(*(a2 + 288), *(v71 + 64));
            *(a2 + 272) = vmaxnmq_f64(*(a2 + 272), *(v71 + 48));
            *(a2 + 288) = v76;
            std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((a2 + 72), &v83);
            std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((a2 + 96), &v82);
LABEL_31:
            if (*(&v82 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v82 + 1));
            }

            if (*(&v83 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v83 + 1));
            }

            goto LABEL_35;
          }

          if (*(v82 + 80) == *(v82 + 88))
          {
            std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((a2 + 72), v5);
            v57 = *v5;
            v58 = vminnmq_f64(*(a2 + 192), *&(*v5)[2].f64[0]);
            *(a2 + 176) = vminnmq_f64(*(a2 + 176), (*v5)[1]);
            *(a2 + 192) = v58;
            v59 = vmaxnmq_f64(*(a2 + 224), *&v57[4].f64[0]);
            *(a2 + 208) = vmaxnmq_f64(*(a2 + 208), v57[3]);
            *(a2 + 224) = v59;
          }

          goto LABEL_31;
        }

        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((a2 + 96), v5);
        v34 = *v5;
        v35 = vminnmq_f64(*(a2 + 256), *&(*v5)[2].f64[0]);
        *(a2 + 240) = vminnmq_f64(*(a2 + 240), (*v5)[1]);
        *(a2 + 256) = v35;
        v36 = vmaxnmq_f64(*(a2 + 288), *&v34[4].f64[0]);
        *(a2 + 272) = vmaxnmq_f64(*(a2 + 272), v34[3]);
        *(a2 + 288) = v36;
      }

LABEL_35:
      v5 += 2;
    }

    while (v5 != v10);
  }
}

uint64_t geom::close_triangle_mesh<double>(uint64_t *a1, uint64_t a2)
{
  v23 = 0u;
  v24 = 0u;
  v25 = 1065353216;
  if ((((*(a2 + 8) - *a2) >> 2) / 3uLL))
  {
    v4 = 0;
    v5 = 3 * (((*(a2 + 8) - *a2) >> 2) / 3uLL);
    do
    {
      v6 = *(*a2 + 4 * (v4 + 1));
      v7 = *(*a2 + 4 * (v4 + 2));
      LODWORD(v19.f64[0]) = *(*a2 + 4 * v4);
      HIDWORD(v19.f64[0]) = v6;
      v22[0] = v7;
      v22[1] = v6;
      v21[0] = LODWORD(v19.f64[0]);
      v21[1] = v7;
      if (!std::__hash_table<geom::edge,geom::edge_hash,std::equal_to<geom::edge>,std::allocator<geom::edge>>::__erase_unique<geom::edge>(&v23, &v19))
      {
        std::__hash_table<geom::edge,geom::edge_hash,std::equal_to<geom::edge>,std::allocator<geom::edge>>::__emplace_unique_key_args<geom::edge,geom::edge const&>(&v23, &v19);
      }

      if (!std::__hash_table<geom::edge,geom::edge_hash,std::equal_to<geom::edge>,std::allocator<geom::edge>>::__erase_unique<geom::edge>(&v23, v22))
      {
        std::__hash_table<geom::edge,geom::edge_hash,std::equal_to<geom::edge>,std::allocator<geom::edge>>::__emplace_unique_key_args<geom::edge,geom::edge const&>(&v23, v22);
      }

      if (!std::__hash_table<geom::edge,geom::edge_hash,std::equal_to<geom::edge>,std::allocator<geom::edge>>::__erase_unique<geom::edge>(&v23, v21))
      {
        std::__hash_table<geom::edge,geom::edge_hash,std::equal_to<geom::edge>,std::allocator<geom::edge>>::__emplace_unique_key_args<geom::edge,geom::edge const&>(&v23, v21);
      }

      v4 += 3;
    }

    while (v5 != v4);
    if (*(&v24 + 1))
    {
      v8 = v24;
      v9 = *a1;
      v10 = 0uLL;
      for (i = 0uLL; v8; v8 = *v8)
      {
        v12 = (v9 + 32 * *(v8 + 4));
        v13 = vaddq_f64(*v12, v10);
        v14 = vaddq_f64(v12[1], i);
        v15 = (v9 + 32 * *(v8 + 5));
        i = vaddq_f64(v14, v15[1]);
        v10 = vaddq_f64(v13, *v15);
        v19 = v10;
        v20 = i;
      }

      v16 = vdupq_lane_s64(COERCE__INT64((2 * *(&v24 + 1))), 0);
      v19 = vdivq_f64(v10, v16);
      v20 = vdivq_f64(i, v16);
      v22[0] = (a1[1] - v9) >> 5;
      _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1, &v19);
      for (j = v24; j; j = *j)
      {
        std::vector<unsigned int>::push_back[abi:nn200100](a2, v22);
        std::vector<unsigned int>::push_back[abi:nn200100](a2, j + 4);
        std::vector<unsigned int>::push_back[abi:nn200100](a2, j + 5);
      }
    }
  }

  return std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(&v23);
}

void geom::cluster_parallel_clipper<double>::interior_component_work_item(uint64_t a1, uint64_t a2, float64x2_t *a3, void *a4, uint64_t a5, double a6, double a7, double a8, float64x2_t a9)
{
  v108 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v9 = a4;
    v13 = fmax(fmax(fmax(*(*(*(a1 + 40) + 128) + 16), *(*(*(a1 + 40) + 128) + 32)), *(*(*(a1 + 40) + 128) + 24)), 1.0) * 2.22044605e-16;
    v14 = &a4[a5];
    v15 = (a2 + 24);
    __asm { FMOV            V1.2D, #0.5 }

    v95 = vdupq_n_s64(0xFFF0000000000000);
    v96 = _Q1;
    v94 = vdupq_n_s64(0x7FF0000000000000uLL);
    do
    {
      v21 = *(*(a1 + 40) + 128);
      v22 = *(v21 + 8);
      v24 = *(v21 + 16);
      v23 = *(v21 + 32);
      v25.i64[0] = v22 & *v9;
      v25.i64[1] = (*v9 >> *v21) & v22;
      v26 = vcvtq_f64_u64(v25);
      v25.i64[0] = (*v9 >> (2 * *v21)) & v22;
      v25.i64[1] = HIDWORD(a9.f64[0]);
      v27 = vmlaq_f64(*(v21 + 48), v26, v24);
      v28 = vextq_s8(v27, v27, 8uLL).u64[0];
      v29 = vmlaq_f64(*(v21 + 64), vcvtq_f64_u64(v25), v23);
      v30 = vaddq_f64(v24, v27);
      v31 = vaddq_f64(v23, v29);
      v32 = vsubq_f64(v30, v27);
      v33 = vsubq_f64(v31, v29);
      v34 = sqrt(vmulq_f64(v33, v33).f64[0] + vaddvq_f64(vmulq_f64(v32, v32))) * 0.5 - v13;
      v35 = a3[2].f64[0] + vmulq_f64(a3[1], vmulq_f64(vaddq_f64(v29, v31), v96)).f64[0] + vaddvq_f64(vmulq_f64(*a3, vmulq_f64(vaddq_f64(v27, v30), v96)));
      v100 = v27;
      v101 = v29;
      v98 = v30;
      v99 = *&v28;
      v97 = v31;
      if (v35 <= -v34)
      {
        std::vector<unsigned long long>::push_back[abi:nn200100]((a2 + 120), v9);
        *&a9.f64[0] = v100.i64[0];
        a9.f64[1] = v99;
        v43 = vminnmq_f64(*(a2 + 192), *&v101.f64[0]);
        *(a2 + 176) = vminnmq_f64(*(a2 + 176), a9);
        *(a2 + 192) = v43;
        HIDWORD(a9.f64[0]) = HIDWORD(v98.f64[0]);
        v44 = vmaxnmq_f64(*(a2 + 224), *&v97.f64[0]);
        *(a2 + 208) = vmaxnmq_f64(*(a2 + 208), v98);
        *(a2 + 224) = v44;
      }

      else
      {
        if (v35 < v34)
        {
          v107[0] = v27;
          v107[1] = v29;
          *&v36 = v27.i64[0];
          *(&v36 + 1) = v28;
          *&v37 = v30.i64[0];
          *(&v37 + 1) = v28;
          v107[2] = v37;
          v107[3] = v29;
          v107[4] = v30;
          v107[5] = v29;
          *&v38 = v27.i64[0];
          *(&v38 + 1) = vextq_s8(v30, v30, 8uLL).u64[0];
          v107[6] = v38;
          v107[7] = v29;
          v107[8] = v36;
          v107[9] = v31;
          v107[10] = v37;
          v107[11] = v31;
          v107[12] = v30;
          v107[13] = v31;
          v107[14] = v38;
          v107[15] = v31;
          v106[6] = xmmword_2500D13B0;
          v106[7] = unk_2500D13C0;
          v106[8] = xmmword_2500D13D0;
          v106[2] = xmmword_2500D1370;
          v106[3] = unk_2500D1380;
          v106[4] = xmmword_2500D1390;
          v106[5] = unk_2500D13A0;
          v106[0] = xmmword_2500D1350;
          v106[1] = unk_2500D1360;
          v40 = *(a1 + 48);
          add = atomic_fetch_add(v40, 1u);
          v41 = *(v40 + 8);
          if (add >= (*(v40 + 16) - v41) >> 4)
          {
            operator new();
          }

          v42 = *(v41 + 16 * add);
          v105 = v42;
          if (*(&v42 + 1))
          {
            atomic_fetch_add_explicit((*(&v42 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v48 = *(a1 + 48);
          v47 = atomic_fetch_add(v48, 1u);
          v49 = *(v48 + 8);
          if (v47 >= (*(v48 + 16) - v49) >> 4)
          {
            operator new();
          }

          v50 = *(v49 + 16 * v47);
          v104 = v50;
          if (*(&v50 + 1))
          {
            atomic_fetch_add_explicit((*(&v50 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v103[0] = v107;
          v103[1] = 8;
          v102[0] = v106;
          v102[1] = 36;
          geom::split_triangle_mesh_with_plane<double>(v103, v102, a3, (v105 + 80), (v105 + 104), (v50 + 80), (v50 + 104), (a2 + 48), a2, v15);
          v51 = v105;
          v52 = *(v105 + 80);
          v53 = *(v105 + 88) - v52;
          if (v53)
          {
            if (*(v104 + 88) == *(v104 + 80))
            {
              *v105 = *(*(*(a1 + 40) + 128) + 32) * vmuld_lane_f64(*(*(*(a1 + 40) + 128) + 16), *(*(*(a1 + 40) + 128) + 16), 1);
              v69 = geom::triangle_mesh_surface_area_3<double>(v52, v53 >> 5, *(v51 + 104), (*(v51 + 112) - *(v51 + 104)) >> 2);
              v70 = v105;
              *(v105 + 8) = v69;
              *&v71.f64[0] = v100.i64[0];
              *(v70 + 16) = v100;
              *(v70 + 32) = v101;
              *(v70 + 48) = v98;
              *(v70 + 64) = v97;
              v71.f64[1] = v99;
              v72 = vminnmq_f64(*(a2 + 192), *&v101.f64[0]);
              *(a2 + 176) = vminnmq_f64(*(a2 + 176), v71);
              *(a2 + 192) = v72;
              v73 = vmaxnmq_f64(*(a2 + 224), *(v70 + 64));
              *(a2 + 208) = vmaxnmq_f64(*(a2 + 208), *(v70 + 48));
              *(a2 + 224) = v73;
              v74 = (a2 + 72);
              v75 = &v105;
            }

            else
            {
              geom::close_triangle_mesh<double>((v105 + 80), v105 + 104);
              geom::close_triangle_mesh<double>((v104 + 80), v104 + 104);
              v56 = v105;
              v57 = *(v105 + 80);
              v58 = *(v105 + 88);
              if (v58 == v57)
              {
                v54.f64[0] = -INFINITY;
                v55.f64[0] = INFINITY;
                v59 = v94;
                v60 = v95;
              }

              else
              {
                v55.f64[0] = INFINITY;
                v54.f64[0] = -INFINITY;
                v59 = vdupq_n_s64(0x7FF0000000000000uLL);
                v60 = vdupq_n_s64(0xFFF0000000000000);
                do
                {
                  v61 = *v57;
                  v62 = v57[1];
                  v57 += 2;
                  v59 = vminnmq_f64(v61, v59);
                  v55 = vminnmq_f64(*&v62.f64[0], *&v55.f64[0]);
                  v60 = vmaxnmq_f64(v61, v60);
                  v54 = vmaxnmq_f64(*&v62.f64[0], *&v54.f64[0]);
                }

                while (v57 != v58);
              }

              *(v105 + 16) = v59;
              *(v56 + 32) = v55;
              *(v56 + 48) = v60;
              *(v56 + 64) = v54;
              v76 = v104;
              v77 = *(v104 + 80);
              v78 = *(v104 + 88);
              if (v78 == v77)
              {
                v54.f64[0] = -INFINITY;
                v55.f64[0] = INFINITY;
                v79 = v94;
                v80 = v95;
              }

              else
              {
                v55.f64[0] = INFINITY;
                v54.f64[0] = -INFINITY;
                v79 = vdupq_n_s64(0x7FF0000000000000uLL);
                v80 = vdupq_n_s64(0xFFF0000000000000);
                do
                {
                  v81 = *v77;
                  v82 = v77[1];
                  v77 += 2;
                  v79 = vminnmq_f64(v81, v79);
                  v55 = vminnmq_f64(*&v82.f64[0], *&v55.f64[0]);
                  v80 = vmaxnmq_f64(v81, v80);
                  v54 = vmaxnmq_f64(*&v82.f64[0], *&v54.f64[0]);
                }

                while (v77 != v78);
              }

              *(v104 + 16) = v79;
              v76[2] = v55;
              v76[3] = v80;
              v76[4] = v54;
              v83 = geom::triangle_mesh_volume_3<double>(*(v56 + 80), (*(v56 + 88) - *(v56 + 80)) >> 5, *(v56 + 104), (*(v56 + 112) - *(v56 + 104)) >> 2);
              *v105 = v83;
              v84 = geom::triangle_mesh_volume_3<double>(*(v104 + 80), (*(v104 + 88) - *(v104 + 80)) >> 5, *(v104 + 104), (*(v104 + 112) - *(v104 + 104)) >> 2);
              *v104 = v84;
              v85 = geom::triangle_mesh_surface_area_3<double>(*(v105 + 80), (*(v105 + 88) - *(v105 + 80)) >> 5, *(v105 + 104), (*(v105 + 112) - *(v105 + 104)) >> 2);
              *(v105 + 8) = v85;
              v86 = geom::triangle_mesh_surface_area_3<double>(*(v104 + 80), (*(v104 + 88) - *(v104 + 80)) >> 5, *(v104 + 104), (*(v104 + 112) - *(v104 + 104)) >> 2);
              v87 = v104;
              *(v104 + 8) = v86;
              v88 = v105;
              v89 = vminnmq_f64(*(a2 + 192), *(v105 + 32));
              *(a2 + 176) = vminnmq_f64(*(a2 + 176), *(v105 + 16));
              *(a2 + 192) = v89;
              v90 = vmaxnmq_f64(*(a2 + 224), *(v88 + 64));
              *(a2 + 208) = vmaxnmq_f64(*(a2 + 208), *(v88 + 48));
              *(a2 + 224) = v90;
              v91 = vminnmq_f64(*(a2 + 256), *(v87 + 32));
              *(a2 + 240) = vminnmq_f64(*(a2 + 240), *(v87 + 16));
              *(a2 + 256) = v91;
              v92 = vmaxnmq_f64(*(a2 + 288), *(v87 + 64));
              *(a2 + 272) = vmaxnmq_f64(*(a2 + 272), *(v87 + 48));
              *(a2 + 288) = v92;
              std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((a2 + 72), &v105);
LABEL_30:
              v74 = (a2 + 96);
              v75 = &v104;
            }

            std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100](v74, v75);
            if (*(&v104 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v104 + 1));
            }

            if (*(&v105 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v105 + 1));
            }

            goto LABEL_35;
          }

          v63 = v104;
          *v104 = *(*(*(a1 + 40) + 128) + 32) * vmuld_lane_f64(*(*(*(a1 + 40) + 128) + 16), *(*(*(a1 + 40) + 128) + 16), 1);
          v64 = geom::triangle_mesh_surface_area_3<double>(v63[10], (v63[11] - v63[10]) >> 5, v63[13], (v63[14] - v63[13]) >> 2);
          v65 = v104;
          *(v104 + 8) = v64;
          *&v66.f64[0] = v100.i64[0];
          *(v65 + 16) = v100;
          *(v65 + 32) = v101;
          *(v65 + 48) = v98;
          *(v65 + 64) = v97;
          v66.f64[1] = v99;
          v67 = vminnmq_f64(*(a2 + 256), *&v101.f64[0]);
          *(a2 + 240) = vminnmq_f64(*(a2 + 240), v66);
          *(a2 + 256) = v67;
          v68 = vmaxnmq_f64(*(a2 + 288), *(v65 + 64));
          *(a2 + 272) = vmaxnmq_f64(*(a2 + 272), *(v65 + 48));
          *(a2 + 288) = v68;
          goto LABEL_30;
        }

        std::vector<unsigned long long>::push_back[abi:nn200100]((a2 + 144), v9);
        *&a9.f64[0] = v100.i64[0];
        a9.f64[1] = v99;
        v45 = vminnmq_f64(*(a2 + 256), *&v101.f64[0]);
        *(a2 + 240) = vminnmq_f64(*(a2 + 240), a9);
        *(a2 + 256) = v45;
        HIDWORD(a9.f64[0]) = HIDWORD(v98.f64[0]);
        v46 = vmaxnmq_f64(*(a2 + 288), *&v97.f64[0]);
        *(a2 + 272) = vmaxnmq_f64(*(a2 + 272), v98);
        *(a2 + 288) = v46;
      }

LABEL_35:
      ++v9;
    }

    while (v9 != v14);
  }

  v93 = *MEMORY[0x277D85DE8];
}

void geom::cluster_parallel_merger<float>::init(uint64_t a1, uint64_t a2, uint64_t a3, int a4, float a5)
{
  *(a1 + 16) = a2;
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 12) = a5;
  v5 = *(a2 + 24);
  if (v5)
  {
    __p = 0;
    v30 = 0;
    v31 = 0;
    std::vector<double>::reserve(&__p, ((v5 - 1) * v5) >> 1);
    for (i = *(*(a1 + 16) + 16); i; i = *i)
    {
      v9 = *i;
      if (!*i)
      {
        break;
      }

      do
      {
        v10 = *(v9 + 4);
        LODWORD(block[0]) = *(i + 4);
        HIDWORD(block[0]) = v10;
        _ZNSt3__16vectorIZNK4geom3bvhIfLh2EE13closest_pointINS_8functionIFDv2_fjS6_EEEEES6_T_S6_RfRjE5stateNS_9allocatorISC_EEE9push_backB8nn200100EOSC_(&__p, block);
        v9 = *v9;
      }

      while (v9);
    }

    memset(v28, 0, sizeof(v28));
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::resize(v28, (v30 - __p) >> 3);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN4geom14dispatch_applyIZNS_23cluster_parallel_mergerIfE4initEPNSt3__113unordered_mapIjNS3_10unique_ptrINS_7clusterIfEENS3_14default_deleteIS7_EEEENS3_4hashIjEENS3_8equal_toIjEENS3_9allocatorINS3_4pairIKjSA_EEEEEEPNS_17convex_mesh_cacheIfEEjfEUlmE_Lb1EEEvmP16dispatch_queue_sT__block_invoke;
    block[3] = &__block_descriptor_tmp_7;
    block[4] = &__p;
    block[5] = v28;
    block[6] = a1;
    dispatch_apply((v30 - __p) >> 3, 0, block);
    v12 = *(a3 + 8);
    v11 = *(a3 + 16);
    if (v11 != v12)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = (v12 + 16 * v13);
        v16 = v15[1];
        if (v16 && !*(v16 + 8))
        {
          ++v14;
        }

        else
        {
          v17 = *v15;
          *v15 = *(v11 - 16);
          *(v11 - 16) = v17;
          v18 = v15[1];
          v15[1] = *(v11 - 8);
          *(v11 - 8) = v18;
          v19 = *(a3 + 16);
          v20 = *(v19 - 8);
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v20);
          }

          v11 = v19 - 16;
          *(a3 + 16) = v19 - 16;
          v12 = *(a3 + 8);
        }

        v13 = v14;
      }

      while (v14 < ((v11 - v12) >> 4));
    }

    atomic_store(0, a3);
    v21 = __p;
    if (v30 != __p)
    {
      v22 = 0;
      v23 = 1;
      do
      {
        v24 = v28[0] + 16 * v22;
        block[0] = &v21[8 * v22];
        v25 = std::__hash_table<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>>>::__emplace_unique_key_args<geom::edge,std::piecewise_construct_t const&,std::tuple<geom::edge const&>,std::tuple<>>((a1 + 24), block[0]);
        v26 = *v24;
        *v24 = 0;
        *(v24 + 8) = 0;
        v27 = v25[4];
        *(v25 + 3) = v26;
        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v27);
        }

        v22 = v23;
        v21 = __p;
        ++v23;
      }

      while (v22 < (v30 - __p) >> 3);
    }

    block[0] = v28;
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](block);
    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }
  }
}

void std::vector<std::shared_ptr<geom::convex_mesh<float>>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 4;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 16 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        }

        v3 -= 16;
      }

      *(a1 + 8) = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__append(a1, v5);
  }
}

void geom::cluster_parallel_merger<float>::deinit(void *a1)
{
  v2 = *a1;
  v4 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  if (v3 != v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = (v4 + 16 * v5);
      v8 = v7[1];
      if (v8 && !*(v8 + 8))
      {
        ++v6;
      }

      else
      {
        v9 = *v7;
        *v7 = *(v3 - 16);
        *(v3 - 16) = v9;
        v10 = v7[1];
        v7[1] = *(v3 - 8);
        *(v3 - 8) = v10;
        v11 = *(v2 + 16);
        v12 = *(v11 - 8);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v12);
        }

        v3 = v11 - 16;
        *(v2 + 16) = v11 - 16;
        v4 = *(v2 + 8);
      }

      v5 = v6;
    }

    while (v6 < ((v3 - v4) >> 4));
  }

  atomic_store(0, v2);
  v13 = a1[5];
  if (v13)
  {
    v14 = vneg_f32(0x3F0000003FLL);
    v15.i64[0] = 0x7F0000007FLL;
    v15.i64[1] = 0x7F0000007FLL;
    v20 = vnegq_f32(v15);
    do
    {
      v16 = v13[4];
      if (v16 && !*(v16 + 8))
      {
        v17 = *a1;
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((*a1 + 8), (v13 + 3));
        v18 = *(*(v17 + 16) - 16);
        *(v18 + 56) = *(v18 + 48);
        *(v18 + 80) = *(v18 + 72);
        *v18 = v14;
        *&v19 = 0x7F0000007FLL;
        *(&v19 + 1) = 0x7F0000007FLL;
        *(v18 + 16) = v20;
        *(v18 + 32) = v19;
      }

      v13 = *v13;
    }

    while (v13);
  }

  std::__hash_table<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>>>::clear((a1 + 3));
  a1[2] = 0;
  *a1 = 0;
}

void geom::cluster_parallel_merger<float>::perform_merge(uint64_t *a1, unint64_t a2)
{
  v42 = a2;
  v3 = HIDWORD(a2);
  if (HIDWORD(a2) >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = HIDWORD(a2);
  }

  if (a2 > HIDWORD(a2))
  {
    LODWORD(v3) = a2;
  }

  v40 = v3;
  v41 = v4;
  v5 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(a1[2], &v40);
  if (!v5)
  {
    goto LABEL_44;
  }

  v6 = v5;
  v7 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(a1[2], &v41);
  if (!v7)
  {
    goto LABEL_44;
  }

  v8 = v7;
  v9 = *a1;
  v11 = *(*a1 + 8);
  v10 = *(*a1 + 16);
  if (v10 != v11)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = (v11 + 16 * v12);
      v15 = v14[1];
      if (v15 && !*(v15 + 8))
      {
        ++v13;
      }

      else
      {
        v16 = *v14;
        *v14 = *(v10 - 16);
        *(v10 - 16) = v16;
        v17 = v14[1];
        v14[1] = *(v10 - 8);
        *(v10 - 8) = v17;
        v18 = *(v9 + 16);
        v19 = *(v18 - 8);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v19);
        }

        v10 = v18 - 16;
        *(v9 + 16) = v18 - 16;
        v11 = *(v9 + 8);
      }

      v12 = v13;
    }

    while (v13 < ((v10 - v11) >> 4));
  }

  atomic_store(0, v9);
  v20 = v8[3];
  v21 = v6[3];
  v22 = std::__hash_table<std::__hash_value_type<geom::edge,unsigned int>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,unsigned int>>>::find<geom::edge>(a1 + 3, &v42);
  if (!v22)
  {
LABEL_44:
    abort();
  }

  geom::cluster<float>::merge_into(v20, v21, (v22 + 3), *a1);
  std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::__erase_unique<unsigned int>(a1[2], &v40);
  v23 = a1[5];
  if (v23)
  {
    v24 = vneg_f32(0x3F0000003FLL);
    v25.i64[0] = 0x7F0000007FLL;
    v25.i64[1] = 0x7F0000007FLL;
    v36 = vnegq_f32(v25);
    do
    {
      v26 = *(v23 + 16);
      if (v26 == v40 || ((v27 = *(v23 + 20), v26 != v41) ? (v28 = v27 == v40) : (v28 = 1), !v28 ? (v29 = v27 == v41) : (v29 = 1), v29))
      {
        if (*(v23 + 24))
        {
          v30 = *(v23 + 32);
          if (v30)
          {
            if (!*(v30 + 8))
            {
              v31 = *a1;
              std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((*a1 + 8), v23 + 24);
              v32 = *(*(v31 + 16) - 16);
              *(v32 + 56) = *(v32 + 48);
              *(v32 + 80) = *(v32 + 72);
              *v32 = v24;
              *&v33 = 0x7F0000007FLL;
              *(&v33 + 1) = 0x7F0000007FLL;
              *(v32 + 16) = v36;
              *(v32 + 32) = v33;
            }
          }
        }

        v23 = std::__hash_table<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>>>::erase(a1 + 3, v23);
      }

      else
      {
        v23 = *v23;
      }
    }

    while (v23);
  }

  v38 = 0;
  v39 = 0;
  __p = 0;
  v34 = *(a1[2] + 16);
  if (v34)
  {
    do
    {
      if (*(v34 + 4) != v41)
      {
        LODWORD(block[0]) = *(v34 + 4);
        HIDWORD(block[0]) = v41;
        _ZNSt3__16vectorIZNK4geom3bvhIfLh2EE13closest_pointINS_8functionIFDv2_fjS6_EEEEES6_T_S6_RfRjE5stateNS_9allocatorISC_EEE9push_backB8nn200100EOSC_(&__p, block);
      }

      v34 = *v34;
    }

    while (v34);
    v35 = (v38 - __p) >> 3;
  }

  else
  {
    v35 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN4geom14dispatch_applyIZNS_23cluster_parallel_mergerIfE13perform_mergeENS_4edgeEEUlmE_Lb1EEEvmP16dispatch_queue_sT__block_invoke;
  block[3] = &__block_descriptor_tmp_9;
  block[4] = a1;
  block[5] = &__p;
  dispatch_apply(v35, 0, block);
  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }
}

void geom::cluster_parallel_merger<float>::compute_merged_mesh(uint64_t a1@<X0>, unsigned int *a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *a1;
  add = atomic_fetch_add(*a1, 1u);
  v8 = *(v7 + 1);
  if (add >= (*(v7 + 2) - v8) >> 4)
  {
    operator new();
  }

  v9 = *(v8 + 16 * add);
  *a3 = v9;
  v10 = v9;
  if (*(&v9 + 1))
  {
    atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v11 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(*(a1 + 16), a2);
  if (!v11 || (v12 = v11, (v13 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(*(a1 + 16), a2 + 1)) == 0))
  {
    abort();
  }

  v14 = v13;
  v15 = v12[3];
  v16 = *(v15 + 112);
  v17 = *(v15 + 120);
  if (v16 != v17)
  {
    do
    {
      v18 = *(*v16 + 48);
      v19 = *(*v16 + 56);
      while (v18 != v19)
      {
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(v10 + 48, v18++);
      }

      v16 += 16;
    }

    while (v16 != v17);
    v10 = *a3;
  }

  v20 = v14[3];
  v21 = *(v20 + 112);
  v22 = *(v20 + 120);
  while (v21 != v22)
  {
    v23 = *(*v21 + 48);
    v24 = *(*v21 + 56);
    while (v23 != v24)
    {
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(v10 + 48, v23++);
    }

    v21 += 16;
  }

  geom::convex_hull_triangulated_3<float>((*(v10 + 56) - *(v10 + 48)) >> 4, *(v10 + 48), (v10 + 72));
  __p = 0;
  v36 = 0uLL;
  memset(&v34, 0, sizeof(v34));
  v25 = (*(v10 + 56) - *(v10 + 48)) >> 4;
  __x = -1;
  std::vector<unsigned int>::resize(&v34, v25, &__x);
  v26 = *(v10 + 72);
  v27 = *(v10 + 80);
  while (v26 != v27)
  {
    v28 = *v26;
    begin = v34.__begin_;
    v30 = v34.__begin_[v28];
    if (v30 == -1)
    {
      v34.__begin_[v28] = (v36 - __p) >> 4;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&__p, (*(v10 + 48) + 16 * *v26));
      v30 = begin[v28];
    }

    *v26++ = v30;
  }

  v31 = *(v10 + 48);
  if (v31)
  {
    *(v10 + 56) = v31;
    operator delete(v31);
  }

  v32 = __p;
  *(v10 + 48) = __p;
  v33 = v36;
  *(v10 + 56) = v36;
  v36 = 0uLL;
  __p = 0;
  *v10 = geom::triangle_mesh_volume_3<float>(v32, (v33 - v32) >> 4, *(v10 + 72), (*(v10 + 80) - *(v10 + 72)) >> 2);
  if (v34.__begin_)
  {
    v34.__end_ = v34.__begin_;
    operator delete(v34.__begin_);
  }

  if (__p)
  {
    *&v36 = __p;
    operator delete(__p);
  }
}

void geom::cluster_parallel_merger<double>::init(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  *(a1 + 24) = a2;
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a5;
  v5 = *(a2 + 24);
  if (v5)
  {
    __p = 0;
    v30 = 0;
    v31 = 0;
    std::vector<double>::reserve(&__p, ((v5 - 1) * v5) >> 1);
    for (i = *(*(a1 + 24) + 16); i; i = *i)
    {
      v9 = *i;
      if (!*i)
      {
        break;
      }

      do
      {
        v10 = *(v9 + 4);
        LODWORD(block[0]) = *(i + 4);
        HIDWORD(block[0]) = v10;
        _ZNSt3__16vectorIZNK4geom3bvhIfLh2EE13closest_pointINS_8functionIFDv2_fjS6_EEEEES6_T_S6_RfRjE5stateNS_9allocatorISC_EEE9push_backB8nn200100EOSC_(&__p, block);
        v9 = *v9;
      }

      while (v9);
    }

    memset(v28, 0, sizeof(v28));
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::resize(v28, (v30 - __p) >> 3);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN4geom14dispatch_applyIZNS_23cluster_parallel_mergerIdE4initEPNSt3__113unordered_mapIjNS3_10unique_ptrINS_7clusterIdEENS3_14default_deleteIS7_EEEENS3_4hashIjEENS3_8equal_toIjEENS3_9allocatorINS3_4pairIKjSA_EEEEEEPNS_17convex_mesh_cacheIdEEjdEUlmE_Lb1EEEvmP16dispatch_queue_sT__block_invoke;
    block[3] = &__block_descriptor_tmp_10;
    block[4] = &__p;
    block[5] = v28;
    block[6] = a1;
    dispatch_apply((v30 - __p) >> 3, 0, block);
    v12 = *(a3 + 8);
    v11 = *(a3 + 16);
    if (v11 != v12)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = (v12 + 16 * v13);
        v16 = v15[1];
        if (v16 && !*(v16 + 8))
        {
          ++v14;
        }

        else
        {
          v17 = *v15;
          *v15 = *(v11 - 16);
          *(v11 - 16) = v17;
          v18 = v15[1];
          v15[1] = *(v11 - 8);
          *(v11 - 8) = v18;
          v19 = *(a3 + 16);
          v20 = *(v19 - 8);
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v20);
          }

          v11 = v19 - 16;
          *(a3 + 16) = v19 - 16;
          v12 = *(a3 + 8);
        }

        v13 = v14;
      }

      while (v14 < ((v11 - v12) >> 4));
    }

    atomic_store(0, a3);
    v21 = __p;
    if (v30 != __p)
    {
      v22 = 0;
      v23 = 1;
      do
      {
        v24 = v28[0] + 16 * v22;
        block[0] = &v21[8 * v22];
        v25 = std::__hash_table<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>>>::__emplace_unique_key_args<geom::edge,std::piecewise_construct_t const&,std::tuple<geom::edge const&>,std::tuple<>>((a1 + 32), block[0]);
        v26 = *v24;
        *v24 = 0;
        *(v24 + 8) = 0;
        v27 = v25[4];
        *(v25 + 3) = v26;
        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v27);
        }

        v22 = v23;
        v21 = __p;
        ++v23;
      }

      while (v22 < (v30 - __p) >> 3);
    }

    block[0] = v28;
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](block);
    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }
  }
}

void geom::cluster_parallel_merger<double>::deinit(void *a1)
{
  v2 = *a1;
  v4 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  if (v3 != v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = (v4 + 16 * v5);
      v8 = v7[1];
      if (v8 && !*(v8 + 8))
      {
        ++v6;
      }

      else
      {
        v9 = *v7;
        *v7 = *(v3 - 16);
        *(v3 - 16) = v9;
        v10 = v7[1];
        v7[1] = *(v3 - 8);
        *(v3 - 8) = v10;
        v11 = *(v2 + 16);
        v12 = *(v11 - 8);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v12);
        }

        v3 = v11 - 16;
        *(v2 + 16) = v11 - 16;
        v4 = *(v2 + 8);
      }

      v5 = v6;
    }

    while (v6 < ((v3 - v4) >> 4));
  }

  atomic_store(0, v2);
  v13 = a1[6];
  if (v13)
  {
    v20 = vdupq_n_s64(0x7FF0000000000000uLL);
    v21 = vdupq_n_s64(0x7FF8000000000000uLL);
    v19 = vdupq_n_s64(0xFFF0000000000000);
    do
    {
      v14 = v13[4];
      if (v14 && !*(v14 + 8))
      {
        v15 = *a1;
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((*a1 + 8), (v13 + 3));
        v16 = *(*(v15 + 16) - 16);
        *(v16 + 88) = *(v16 + 80);
        *(v16 + 112) = *(v16 + 104);
        *&v17 = 0x7FF0000000000000;
        *(&v18 + 1) = v20.i64[1];
        *v16 = v21;
        *(v16 + 16) = v20;
        *&v18 = 0xFFF0000000000000;
        *(v16 + 32) = v17;
        *(v16 + 48) = v19;
        *(v16 + 64) = v18;
      }

      v13 = *v13;
    }

    while (v13);
  }

  std::__hash_table<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>>>::clear((a1 + 4));
  a1[3] = 0;
  *a1 = 0;
}

void geom::cluster_parallel_merger<double>::perform_merge(uint64_t *a1, unint64_t a2)
{
  v43 = a2;
  v3 = HIDWORD(a2);
  if (HIDWORD(a2) >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = HIDWORD(a2);
  }

  if (a2 > HIDWORD(a2))
  {
    LODWORD(v3) = a2;
  }

  v41 = v3;
  v42 = v4;
  v5 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(a1[3], &v41);
  if (!v5)
  {
    goto LABEL_44;
  }

  v6 = v5;
  v7 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(a1[3], &v42);
  if (!v7)
  {
    goto LABEL_44;
  }

  v8 = v7;
  v9 = *a1;
  v11 = *(*a1 + 8);
  v10 = *(*a1 + 16);
  if (v10 != v11)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = (v11 + 16 * v12);
      v15 = v14[1];
      if (v15 && !*(v15 + 8))
      {
        ++v13;
      }

      else
      {
        v16 = *v14;
        *v14 = *(v10 - 16);
        *(v10 - 16) = v16;
        v17 = v14[1];
        v14[1] = *(v10 - 8);
        *(v10 - 8) = v17;
        v18 = *(v9 + 16);
        v19 = *(v18 - 8);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v19);
        }

        v10 = v18 - 16;
        *(v9 + 16) = v18 - 16;
        v11 = *(v9 + 8);
      }

      v12 = v13;
    }

    while (v13 < ((v10 - v11) >> 4));
  }

  atomic_store(0, v9);
  v20 = v8[3];
  v21 = v6[3];
  v22 = std::__hash_table<std::__hash_value_type<geom::edge,unsigned int>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,unsigned int>>>::find<geom::edge>(a1 + 4, &v43);
  if (!v22)
  {
LABEL_44:
    abort();
  }

  geom::cluster<double>::merge_into(v20, v21, (v22 + 3), *a1);
  std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::__erase_unique<unsigned int>(a1[3], &v41);
  v23 = a1[6];
  if (v23)
  {
    v36 = vdupq_n_s64(0x7FF0000000000000uLL);
    v37 = vdupq_n_s64(0x7FF8000000000000uLL);
    v35 = vdupq_n_s64(0xFFF0000000000000);
    do
    {
      v24 = *(v23 + 16);
      if (v24 == v41 || ((v25 = *(v23 + 20), v24 != v42) ? (v26 = v25 == v41) : (v26 = 1), !v26 ? (v27 = v25 == v42) : (v27 = 1), v27))
      {
        if (*(v23 + 24))
        {
          v28 = *(v23 + 32);
          if (v28)
          {
            if (!*(v28 + 8))
            {
              v29 = *a1;
              std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((*a1 + 8), v23 + 24);
              v30 = *(*(v29 + 16) - 16);
              *(v30 + 88) = *(v30 + 80);
              *(v30 + 112) = *(v30 + 104);
              *&v31 = 0x7FF0000000000000;
              *(&v32 + 1) = v36.i64[1];
              *v30 = v37;
              *(v30 + 16) = v36;
              *&v32 = 0xFFF0000000000000;
              *(v30 + 32) = v31;
              *(v30 + 48) = v35;
              *(v30 + 64) = v32;
            }
          }
        }

        v23 = std::__hash_table<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>>>::erase(a1 + 4, v23);
      }

      else
      {
        v23 = *v23;
      }
    }

    while (v23);
  }

  v39 = 0;
  v40 = 0;
  __p = 0;
  v33 = *(a1[3] + 16);
  if (v33)
  {
    do
    {
      if (*(v33 + 4) != v42)
      {
        LODWORD(block[0]) = *(v33 + 4);
        HIDWORD(block[0]) = v42;
        _ZNSt3__16vectorIZNK4geom3bvhIfLh2EE13closest_pointINS_8functionIFDv2_fjS6_EEEEES6_T_S6_RfRjE5stateNS_9allocatorISC_EEE9push_backB8nn200100EOSC_(&__p, block);
      }

      v33 = *v33;
    }

    while (v33);
    v34 = (v39 - __p) >> 3;
  }

  else
  {
    v34 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN4geom14dispatch_applyIZNS_23cluster_parallel_mergerIdE13perform_mergeENS_4edgeEEUlmE_Lb1EEEvmP16dispatch_queue_sT__block_invoke;
  block[3] = &__block_descriptor_tmp_11;
  block[4] = a1;
  block[5] = &__p;
  dispatch_apply(v34, 0, block);
  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }
}

void geom::cluster_parallel_merger<double>::compute_merged_mesh(uint64_t a1@<X0>, unsigned int *a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *a1;
  add = atomic_fetch_add(*a1, 1u);
  v8 = *(v7 + 1);
  if (add >= (*(v7 + 2) - v8) >> 4)
  {
    operator new();
  }

  v9 = *(v8 + 16 * add);
  *a3 = v9;
  v10 = v9;
  if (*(&v9 + 1))
  {
    atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v11 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(*(a1 + 24), a2);
  if (!v11 || (v12 = v11, (v13 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(*(a1 + 24), a2 + 1)) == 0))
  {
    abort();
  }

  v14 = v13;
  v15 = v12[3];
  v16 = *(v15 + 168);
  v17 = *(v15 + 176);
  if (v16 != v17)
  {
    do
    {
      v18 = *(*v16 + 80);
      v19 = *(*v16 + 88);
      while (v18 != v19)
      {
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(v10 + 80, v18);
        v18 += 2;
      }

      v16 += 16;
    }

    while (v16 != v17);
    v10 = *a3;
  }

  v20 = v14[3];
  v21 = *(v20 + 168);
  v22 = *(v20 + 176);
  while (v21 != v22)
  {
    v23 = *(*v21 + 80);
    v24 = *(*v21 + 88);
    while (v23 != v24)
    {
      _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(v10 + 80, v23);
      v23 += 2;
    }

    v21 += 16;
  }

  geom::convex_hull_triangulated_3<double>((*(v10 + 88) - *(v10 + 80)) >> 5, *(v10 + 80), (v10 + 104));
  __p = 0;
  v36 = 0uLL;
  memset(&v34, 0, sizeof(v34));
  v25 = (*(v10 + 88) - *(v10 + 80)) >> 5;
  __x = -1;
  std::vector<unsigned int>::resize(&v34, v25, &__x);
  v26 = *(v10 + 104);
  v27 = *(v10 + 112);
  while (v26 != v27)
  {
    v28 = *v26;
    begin = v34.__begin_;
    v30 = v34.__begin_[v28];
    if (v30 == -1)
    {
      v34.__begin_[v28] = (v36 - __p) >> 5;
      _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&__p, (*(v10 + 80) + 32 * *v26));
      v30 = begin[v28];
    }

    *v26++ = v30;
  }

  v31 = *(v10 + 80);
  if (v31)
  {
    *(v10 + 88) = v31;
    operator delete(v31);
  }

  v32 = __p;
  *(v10 + 80) = __p;
  v33 = v36;
  *(v10 + 88) = v36;
  v36 = 0uLL;
  __p = 0;
  *v10 = geom::triangle_mesh_volume_3<double>(v32, (v33 - v32) >> 5, *(v10 + 104), (*(v10 + 112) - *(v10 + 104)) >> 2);
  if (v34.__begin_)
  {
    v34.__end_ = v34.__begin_;
    operator delete(v34.__begin_);
  }

  if (__p)
  {
    *&v36 = __p;
    operator delete(__p);
  }
}

uint64_t *std::vector<geom::cluster_parallel_clipper<float>::clipping_context,std::allocator<geom::cluster_parallel_clipper<float>::clipping_context>>::__append(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (0xEEEEEEEEEEEEEEEFLL * ((v5 - v4) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = &v4[15 * a2];
      v11.i64[0] = 0x7F0000007FLL;
      v11.i64[1] = 0x7F0000007FLL;
      v12 = vnegq_f32(v11);
      do
      {
        v4[8] = 0uLL;
        v4[9] = 0uLL;
        v4[6] = 0uLL;
        v4[7] = 0uLL;
        v4[4] = 0uLL;
        v4[5] = 0uLL;
        v4[2] = 0uLL;
        v4[3] = 0uLL;
        *v4 = 0uLL;
        v4[1] = 0uLL;
        v4[10] = 0uLL;
        v4[11] = v12;
        v4[12] = v11;
        v4[13] = v12;
        v4[14] = v11;
        v4 += 15;
      }

      while (v4 != v10);
      v4 = v10;
    }

    result[1] = v4;
  }

  else
  {
    v6 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - *result) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x111111111111111)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xEEEEEEEEEEEEEEEFLL * ((v5 - *result) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x88888888888888)
    {
      v9 = 0x111111111111111;
    }

    else
    {
      v9 = v7;
    }

    v21[4] = result;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::cluster_parallel_clipper<float>::clipping_context>>(result, v9);
    }

    v13 = 240 * v6 + 240 * a2;
    v14.i64[0] = 0x7F0000007FLL;
    v14.i64[1] = 0x7F0000007FLL;
    v15 = vnegq_f32(v14);
    v16 = 240 * v6;
    do
    {
      *(v16 + 128) = 0uLL;
      *(v16 + 144) = 0uLL;
      *(v16 + 96) = 0uLL;
      *(v16 + 112) = 0uLL;
      *(v16 + 64) = 0uLL;
      *(v16 + 80) = 0uLL;
      *(v16 + 32) = 0uLL;
      *(v16 + 48) = 0uLL;
      *v16 = 0uLL;
      *(v16 + 16) = 0uLL;
      *(v16 + 160) = 0uLL;
      *(v16 + 176) = v15;
      *(v16 + 192) = v14;
      *(v16 + 208) = v15;
      *(v16 + 224) = v14;
      v16 += 240;
    }

    while (v16 != v13);
    v17 = result[1];
    v18 = 240 * v6 + *result - v17;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::cluster_parallel_clipper<float>::clipping_context>,geom::cluster_parallel_clipper<float>::clipping_context*>(result, *result, v17, v18);
    v19 = *v3;
    *v3 = v18;
    v3[1] = v13;
    v20 = v3[2];
    v3[2] = 0;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    return std::__split_buffer<geom::cluster_parallel_clipper<float>::clipping_context,std::allocator<geom::cluster_parallel_clipper<float>::clipping_context> &>::~__split_buffer(v21);
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::cluster_parallel_clipper<float>::clipping_context>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x111111111111112)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::cluster_parallel_clipper<float>::clipping_context>,geom::cluster_parallel_clipper<float>::clipping_context*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 64) = *(v6 + 64);
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v6 + 72);
      *(a4 + 88) = *(v6 + 88);
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 96) = *(v6 + 96);
      *(a4 + 112) = *(v6 + 112);
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 120) = *(v6 + 120);
      *(a4 + 136) = *(v6 + 136);
      *(v6 + 120) = 0;
      *(v6 + 128) = 0;
      *(v6 + 136) = 0;
      *(a4 + 144) = 0;
      *(a4 + 152) = 0;
      *(a4 + 160) = 0;
      *(a4 + 144) = *(v6 + 144);
      *(a4 + 160) = *(v6 + 160);
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      v7 = *(v6 + 176);
      v8 = *(v6 + 192);
      v9 = *(v6 + 224);
      *(a4 + 208) = *(v6 + 208);
      *(a4 + 224) = v9;
      *(a4 + 176) = v7;
      *(a4 + 192) = v8;
      v6 += 240;
      a4 += 240;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v5 = geom::cluster_parallel_clipper<float>::clipping_context::~clipping_context(v5) + 240;
    }
  }
}

uint64_t std::__split_buffer<geom::cluster_parallel_clipper<float>::clipping_context,std::allocator<geom::cluster_parallel_clipper<float>::clipping_context> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 240;
    geom::cluster_parallel_clipper<float>::clipping_context::~clipping_context(i - 240);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ___ZN4geom14dispatch_applyIZNS_24cluster_parallel_clipperIfE24compute_clipped_clustersEvEUlmE_Lb1EEEvmP16dispatch_queue_sT__block_invoke_1(uint64_t a1, unint64_t a2, double a3, uint32x4_t a4, double a5, __n128 a6, __n128 a7)
{
  v7 = *(a1 + 32);
  v8 = v7[5];
  v9 = v8[14];
  v10 = v8[15] - v9;
  v11 = v7[7];
  v12 = v7[8];
  v13 = (v11 + (v10 >> 4) - 1) / v11;
  v15 = v8 + 11;
  v14 = v8[11];
  v16 = v15[1] - v14;
  v17 = (v12 + (v16 >> 3) - 1) / v12 + v13;
  v18 = a2 / v17;
  v19 = a2 % v17;
  v20 = (v7[3] + 32 * v18);
  v21 = v19 >= v13;
  v22 = v19 - v13;
  if (v21)
  {
    v26 = v16 >> 3;
    if (v22 * v12 + v12 < v16 >> 3)
    {
      v26 = v22 * v12 + v12;
    }

    geom::cluster_parallel_clipper<float>::interior_component_work_item(v7, *v7 + 240 * a2, v20, (v14 + 8 * v22 * v12), v26 - v22 * v12, a3, a4, a5, a6, a7);
  }

  else
  {
    v23 = v10 >> 4;
    v24 = v19 * v11;
    v25 = v19 * v11 + v11;
    if (v25 >= v23)
    {
      v25 = v23;
    }

    geom::cluster_parallel_clipper<float>::boundary_component_work_item(v7, *v7 + 240 * a2, v20, (v9 + 16 * v24), v25 - v24);
  }
}

uint64_t *std::__hash_table<geom::edge,geom::edge_hash,std::equal_to<geom::edge>,std::allocator<geom::edge>>::__erase_unique<geom::edge>(void *a1, unsigned int *a2)
{
  result = std::__hash_table<std::__hash_value_type<geom::edge,unsigned int>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,unsigned int>>>::find<geom::edge>(a1, a2);
  if (result)
  {
    std::__hash_table<geom::edge,geom::edge_hash,std::equal_to<geom::edge>,std::allocator<geom::edge>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<geom::edge,geom::edge_hash,std::equal_to<geom::edge>,std::allocator<geom::edge>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

uint64_t *std::__hash_table<geom::edge,geom::edge_hash,std::equal_to<geom::edge>,std::allocator<geom::edge>>::__emplace_unique_key_args<geom::edge,geom::edge const&>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3 >= v2)
  {
    v4 = *a2;
  }

  else
  {
    v4 = a2[1];
  }

  if (v2 <= v3)
  {
    v5 = a2[1];
  }

  else
  {
    v5 = *a2;
  }

  v6 = (v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_38;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_38:
    operator new();
  }

  if (v3 >= v2)
  {
    v12 = *a2;
  }

  else
  {
    v12 = a2[1];
  }

  if (v2 <= v3)
  {
    LODWORD(v2) = a2[1];
  }

  while (1)
  {
    v13 = v11[1];
    if (v13 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v9)
    {
      goto LABEL_38;
    }

LABEL_37:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_38;
    }
  }

  v15 = *(v11 + 4);
  v14 = *(v11 + 5);
  if (v14 >= v15)
  {
    v16 = *(v11 + 4);
  }

  else
  {
    v16 = *(v11 + 5);
  }

  if (v15 > v14)
  {
    v14 = *(v11 + 4);
  }

  if (v16 != v12 || v14 != v2)
  {
    goto LABEL_37;
  }

  return v11;
}

uint64_t *std::vector<geom::cluster_parallel_clipper<double>::clipping_context,std::allocator<geom::cluster_parallel_clipper<double>::clipping_context>>::__append(uint64_t *result, unint64_t a2, double a3, double a4, __n128 a5, double a6, __n128 a7)
{
  v8 = result;
  v9 = result[1];
  v10 = result[2];
  if (0x86BCA1AF286BCA1BLL * ((v10 - v9) >> 4) >= a2)
  {
    if (a2)
    {
      v15 = v9 + 304 * a2;
      v16 = vdupq_n_s64(0x7FF0000000000000uLL);
      a5.n128_u64[0] = 0x7FF0000000000000;
      v17 = vdupq_n_s64(0xFFF0000000000000);
      a7.n128_u64[0] = 0xFFF0000000000000;
      do
      {
        *(v9 + 128) = 0uLL;
        *(v9 + 144) = 0uLL;
        *(v9 + 96) = 0uLL;
        *(v9 + 112) = 0uLL;
        *(v9 + 64) = 0uLL;
        *(v9 + 80) = 0uLL;
        *(v9 + 32) = 0uLL;
        *(v9 + 48) = 0uLL;
        *v9 = 0uLL;
        *(v9 + 16) = 0uLL;
        *(v9 + 160) = 0uLL;
        *(v9 + 176) = v16;
        *(v9 + 192) = a5;
        *(v9 + 208) = v17;
        *(v9 + 224) = a7;
        *(v9 + 240) = v16;
        *(v9 + 256) = a5;
        *(v9 + 272) = v17;
        *(v9 + 288) = a7;
        v9 += 304;
      }

      while (v9 != v15);
      v9 = v15;
    }

    result[1] = v9;
  }

  else
  {
    v11 = 0x86BCA1AF286BCA1BLL * ((v9 - *result) >> 4);
    v12 = v11 + a2;
    if (v11 + a2 > 0xD79435E50D7943)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = 0x86BCA1AF286BCA1BLL * ((v10 - *result) >> 4);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x6BCA1AF286BCA1)
    {
      v14 = 0xD79435E50D7943;
    }

    else
    {
      v14 = v12;
    }

    v26[4] = result;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::cluster_parallel_clipper<double>::clipping_context>>(result, v14);
    }

    v18 = 304 * v11 + 304 * a2;
    v19 = vdupq_n_s64(0x7FF0000000000000uLL);
    a5.n128_u64[0] = 0x7FF0000000000000;
    v20 = vdupq_n_s64(0xFFF0000000000000);
    a7.n128_u64[0] = 0xFFF0000000000000;
    v21 = 304 * v11;
    do
    {
      *(v21 + 128) = 0uLL;
      *(v21 + 144) = 0uLL;
      *(v21 + 96) = 0uLL;
      *(v21 + 112) = 0uLL;
      *(v21 + 64) = 0uLL;
      *(v21 + 80) = 0uLL;
      *(v21 + 32) = 0uLL;
      *(v21 + 48) = 0uLL;
      *v21 = 0uLL;
      *(v21 + 16) = 0uLL;
      *(v21 + 160) = 0uLL;
      *(v21 + 176) = v19;
      *(v21 + 192) = a5;
      *(v21 + 208) = v20;
      *(v21 + 224) = a7;
      *(v21 + 240) = v19;
      *(v21 + 256) = a5;
      *(v21 + 272) = v20;
      *(v21 + 288) = a7;
      v21 += 304;
    }

    while (v21 != v18);
    v22 = result[1];
    v23 = 304 * v11 + *result - v22;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::cluster_parallel_clipper<double>::clipping_context>,geom::cluster_parallel_clipper<double>::clipping_context*>(result, *result, v22, v23);
    v24 = *v8;
    *v8 = v23;
    v8[1] = v18;
    v25 = v8[2];
    v8[2] = 0;
    v26[2] = v24;
    v26[3] = v25;
    v26[0] = v24;
    v26[1] = v24;
    return std::__split_buffer<geom::cluster_parallel_clipper<double>::clipping_context,std::allocator<geom::cluster_parallel_clipper<double>::clipping_context> &>::~__split_buffer(v26);
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::cluster_parallel_clipper<double>::clipping_context>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xD79435E50D7944)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::cluster_parallel_clipper<double>::clipping_context>,geom::cluster_parallel_clipper<double>::clipping_context*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 64) = *(v6 + 64);
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v6 + 72);
      *(a4 + 88) = *(v6 + 88);
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 96) = *(v6 + 96);
      *(a4 + 112) = *(v6 + 112);
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 120) = *(v6 + 120);
      *(a4 + 136) = *(v6 + 136);
      *(v6 + 120) = 0;
      *(v6 + 128) = 0;
      *(v6 + 136) = 0;
      *(a4 + 144) = 0;
      *(a4 + 152) = 0;
      *(a4 + 160) = 0;
      *(a4 + 144) = *(v6 + 144);
      *(a4 + 160) = *(v6 + 160);
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      *(v6 + 144) = 0;
      v7 = *(v6 + 288);
      v9 = *(v6 + 240);
      v8 = *(v6 + 256);
      *(a4 + 272) = *(v6 + 272);
      *(a4 + 288) = v7;
      *(a4 + 240) = v9;
      *(a4 + 256) = v8;
      v10 = *(v6 + 176);
      v11 = *(v6 + 192);
      v12 = *(v6 + 224);
      *(a4 + 208) = *(v6 + 208);
      *(a4 + 224) = v12;
      *(a4 + 176) = v10;
      *(a4 + 192) = v11;
      v6 += 304;
      a4 += 304;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v5 = geom::cluster_parallel_clipper<float>::clipping_context::~clipping_context(v5) + 304;
    }
  }
}

uint64_t std::__split_buffer<geom::cluster_parallel_clipper<double>::clipping_context,std::allocator<geom::cluster_parallel_clipper<double>::clipping_context> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 304;
    geom::cluster_parallel_clipper<float>::clipping_context::~clipping_context(i - 304);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ___ZN4geom14dispatch_applyIZNS_24cluster_parallel_clipperIdE24compute_clipped_clustersEvEUlmE_Lb1EEEvmP16dispatch_queue_sT__block_invoke_1(uint64_t a1, unint64_t a2, double a3, double a4, double a5, float64x2_t a6)
{
  v6 = *(a1 + 32);
  v7 = v6[5];
  v8 = v7[21];
  v9 = v7[22] - v8;
  v10 = v6[7];
  v11 = v6[8];
  v12 = (v10 + (v9 >> 4) - 1) / v10;
  v14 = v7 + 18;
  v13 = v7[18];
  v15 = v14[1] - v13;
  v16 = (v11 + (v15 >> 3) - 1) / v11 + v12;
  v17 = a2 / v16;
  v18 = a2 % v16;
  v19 = (v6[3] + 48 * v17);
  v20 = v18 >= v12;
  v21 = v18 - v12;
  if (v20)
  {
    v25 = v15 >> 3;
    if (v21 * v11 + v11 < v15 >> 3)
    {
      v25 = v21 * v11 + v11;
    }

    geom::cluster_parallel_clipper<double>::interior_component_work_item(v6, *v6 + 304 * a2, v19, (v13 + 8 * v21 * v11), v25 - v21 * v11, a3, a4, a5, a6);
  }

  else
  {
    v22 = v9 >> 4;
    v23 = v18 * v10;
    v24 = v18 * v10 + v10;
    if (v24 >= v22)
    {
      v24 = v22;
    }

    geom::cluster_parallel_clipper<double>::boundary_component_work_item(v6, *v6 + 304 * a2, v19, (v8 + 16 * v23), v24 - v23);
  }
}

void std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(a1[1], 16 * a2);
      v5 += 16 * a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    v16[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<geom::convex_mesh<float>>>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = a1[1] - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v11;
    v15 = a1[2];
    a1[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    std::__split_buffer<std::shared_ptr<geom::convex_mesh<float>>>::~__split_buffer(v16);
  }
}

void ___ZN4geom14dispatch_applyIZNS_23cluster_parallel_mergerIfE4initEPNSt3__113unordered_mapIjNS3_10unique_ptrINS_7clusterIfEENS3_14default_deleteIS7_EEEENS3_4hashIjEENS3_8equal_toIjEENS3_9allocatorINS3_4pairIKjSA_EEEEEEPNS_17convex_mesh_cacheIfEEjfEUlmE_Lb1EEEvmP16dispatch_queue_sT__block_invoke(uint64_t a1, uint64_t a2)
{
  geom::cluster_parallel_merger<float>::compute_merged_mesh(*(a1 + 48), (**(a1 + 32) + 8 * a2), &v7);
  v4 = **(a1 + 40) + 16 * a2;
  v5 = v7;
  v7 = 0uLL;
  v6 = *(v4 + 8);
  *v4 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  if (*(&v7 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v7 + 1));
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>>>::__emplace_unique_key_args<geom::edge,std::piecewise_construct_t const&,std::tuple<geom::edge const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3 >= v2)
  {
    v4 = *a2;
  }

  else
  {
    v4 = a2[1];
  }

  if (v2 <= v3)
  {
    v5 = a2[1];
  }

  else
  {
    v5 = *a2;
  }

  v6 = (v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_38;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_38:
    operator new();
  }

  if (v3 >= v2)
  {
    v12 = *a2;
  }

  else
  {
    v12 = a2[1];
  }

  if (v2 <= v3)
  {
    LODWORD(v2) = a2[1];
  }

  while (1)
  {
    v13 = v11[1];
    if (v13 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v9)
    {
      goto LABEL_38;
    }

LABEL_37:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_38;
    }
  }

  v15 = *(v11 + 4);
  v14 = *(v11 + 5);
  if (v14 >= v15)
  {
    v16 = *(v11 + 4);
  }

  else
  {
    v16 = *(v11 + 5);
  }

  if (v15 > v14)
  {
    v14 = *(v11 + 4);
  }

  if (v16 != v12 || v14 != v2)
  {
    goto LABEL_37;
  }

  return v11;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,void *>>>::operator()[abi:nn200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__hash_table<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,void *>>>::operator()[abi:nn200100](&v6, v3);
  }

  return v2;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,void *>>>::operator()[abi:nn200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    __p[3] = 0;
    if (v3)
    {
      v6 = (v3 + 112);
      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v6);
      v4 = *(v3 + 88);
      if (v4)
      {
        *(v3 + 96) = v4;
        operator delete(v4);
      }

      v5 = *(v3 + 8);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }

      MEMORY[0x25305E3F0](v3, 0x10F0C401673C24ALL);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__hash_table<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,void *>>>::operator()[abi:nn200100](&v6, v3);
  }

  return v2;
}

void ___ZN4geom14dispatch_applyIZNS_23cluster_parallel_mergerIfE13perform_mergeENS_4edgeEEUlmE_Lb1EEEvmP16dispatch_queue_sT__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = (**(a1 + 40) + 8 * a2);
  geom::cluster_parallel_merger<float>::compute_merged_mesh(v2, v3, &v7);
  v8 = v3;
  v4 = std::__hash_table<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>>>::__emplace_unique_key_args<geom::edge,std::piecewise_construct_t const&,std::tuple<geom::edge const&>,std::tuple<>>((v2 + 24), v3);
  v5 = v7;
  v7 = 0uLL;
  v6 = v4[4];
  *(v4 + 3) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    if (*(&v7 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v7 + 1));
    }
  }
}

void ___ZN4geom14dispatch_applyIZNS_23cluster_parallel_mergerIdE4initEPNSt3__113unordered_mapIjNS3_10unique_ptrINS_7clusterIdEENS3_14default_deleteIS7_EEEENS3_4hashIjEENS3_8equal_toIjEENS3_9allocatorINS3_4pairIKjSA_EEEEEEPNS_17convex_mesh_cacheIdEEjdEUlmE_Lb1EEEvmP16dispatch_queue_sT__block_invoke(uint64_t a1, uint64_t a2)
{
  geom::cluster_parallel_merger<double>::compute_merged_mesh(*(a1 + 48), (**(a1 + 32) + 8 * a2), &v7);
  v4 = **(a1 + 40) + 16 * a2;
  v5 = v7;
  v7 = 0uLL;
  v6 = *(v4 + 8);
  *v4 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  if (*(&v7 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v7 + 1));
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,void *>>>::operator()[abi:nn200100](&v6, v3);
  }

  return v2;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,void *>>>::operator()[abi:nn200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    __p[3] = 0;
    if (v3)
    {
      v6 = (v3 + 168);
      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v6);
      v4 = *(v3 + 144);
      if (v4)
      {
        *(v3 + 152) = v4;
        operator delete(v4);
      }

      v5 = *(v3 + 8);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }

      MEMORY[0x25305E3F0](v3, 0x10F0C408DC99B65);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void ___ZN4geom14dispatch_applyIZNS_23cluster_parallel_mergerIdE13perform_mergeENS_4edgeEEUlmE_Lb1EEEvmP16dispatch_queue_sT__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = (**(a1 + 40) + 8 * a2);
  geom::cluster_parallel_merger<double>::compute_merged_mesh(v2, v3, &v7);
  v8 = v3;
  v4 = std::__hash_table<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>>>::__emplace_unique_key_args<geom::edge,std::piecewise_construct_t const&,std::tuple<geom::edge const&>,std::tuple<>>((v2 + 32), v3);
  v5 = v7;
  v7 = 0uLL;
  v6 = v4[4];
  *(v4 + 3) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    if (*(&v7 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v7 + 1));
    }
  }
}

float32x2_t geom::spoke<float>::evaluate_at(float32x2_t *a1, float a2)
{
  v2 = a1[2].f32[0];
  if (fabsf(v2) <= 0.000005)
  {
    return *a1;
  }

  else
  {
    return vmla_n_f32(*a1, a1[1], v2 * (a2 - a1[3].f32[0]));
  }
}

float32x2_t *geom::spoke<float>::halt(float32x2_t *result, float32_t a2)
{
  v2 = result[2].f32[0];
  if (fabsf(v2) <= 0.000005)
  {
    v3 = *result;
  }

  else
  {
    v3 = vmla_n_f32(*result, result[1], v2 * (a2 - result[3].f32[0]));
  }

  *result = v3;
  result[3].f32[0] = a2;
  result[2].i32[0] = 0;
  result[2].i16[2] = 256;
  return result;
}

uint64_t geom::spoke<float>::spoke(uint64_t a1, double a2, float32x2_t a3, float32x2_t a4, float a5)
{
  *(a1 + 8) = 0;
  *a1 = a2;
  *(a1 + 24) = a5;
  *(a1 + 21) = 0;
  v6 = vsub_f32(*&a2, a3);
  v7 = vmul_f32(v6, v6);
  v8 = vsub_f32(*&a2, a4);
  v9 = vmul_f32(v8, v8);
  v10 = vadd_f32(vzip1_s32(v9, v7), vzip2_s32(v9, v7));
  v11 = vdup_n_s32(0x36A7C5ACu);
  v12 = vcge_f32(v11, vsqrt_f32(v10));
  v13 = v12.i32[1];
  v14 = 0;
  v15 = 0;
  if ((v12.i8[4] & 1) == 0)
  {
    v11 = vsub_f32(a3, *&a2);
    v16 = vmul_f32(v11, v11);
    v16.i32[0] = vadd_f32(v16, vdup_lane_s32(v16, 1)).u32[0];
    v17 = vrsqrte_f32(v16.u32[0]);
    v18 = vmul_f32(v17, vrsqrts_f32(v16.u32[0], vmul_f32(v17, v17)));
    v15 = vmul_n_f32(v11, vmul_f32(v18, vrsqrts_f32(v16.u32[0], vmul_f32(v18, v18))).f32[0]);
  }

  v19 = v12.i32[0];
  if ((v12.i8[0] & 1) == 0)
  {
    v20 = vsub_f32(a4, *&a2);
    v21 = vmul_f32(v20, v20);
    v21.i32[0] = vadd_f32(v21, vdup_lane_s32(v21, 1)).u32[0];
    v22 = vrsqrte_f32(v21.u32[0]);
    v23 = vmul_f32(v22, vrsqrts_f32(v21.u32[0], vmul_f32(v22, v22)));
    v11 = vmul_f32(v23, vrsqrts_f32(v21.u32[0], vmul_f32(v23, v23)));
    v14 = vmul_n_f32(v20, v11.f32[0]);
  }

  v24 = vadd_f32(v15, v14);
  v25 = vsub_f32(v15, v14);
  if (sqrtf(vaddv_f32(vmul_f32(v25, v25))) <= 0.000005)
  {
    *(a1 + 20) = 0;
    v27 = vmul_f32(v24, 0x3F0000003F000000);
    *(a1 + 8) = v27;
    v28 = sqrtf(vaddv_f32(vmul_f32(v27, v27))) > 0.000005;
    v26 = 0.0;
    if (v28)
    {
      v26 = 1.0;
    }
  }

  else if ((v13 | v19))
  {
    *(a1 + 20) = 0;
    v26 = 0.0;
    *(a1 + 8) = 0;
  }

  else
  {
    v11.f32[0] = sqrtf(vaddv_f32(vmul_f32(v24, v24)));
    if (fabsf(v11.f32[0]) <= 0.000005)
    {
      *(a1 + 20) = 0;
      *&a2 = -v14.f32[1];
      *(a1 + 8) = vzip1_s32(*&a2, v14);
      v26 = 1.0;
    }

    else
    {
      v38 = v11;
      v39 = v14;
      v30.f32[0] = _simd_orient_vf2(vsub_f32(a3, *&a2), vsub_f32(a4, *&a2));
      v31 = vdiv_f32(v24, vdup_lane_s32(v38, 0));
      *(a1 + 20) = v30.f32[0] > 0.0;
      *(a1 + 8) = vbsl_s8(vdup_lane_s32(vcgt_f32(v30, 0), 0), vneg_f32(v31), v31);
      v32 = vaddv_f32(vmul_f32(v15, v39));
      if (v32 <= 1.0)
      {
        v33 = v32;
      }

      else
      {
        v33 = 1.0;
      }

      if (v32 >= -1.0)
      {
        v34 = v33;
      }

      else
      {
        v34 = -1.0;
      }

      v35 = acosf(v34);
      v36 = sinf(v35 * 0.5);
      v37 = fabsf(v36);
      v26 = 1.0 / v36;
      if (v37 <= 0.000005)
      {
        v26 = 1.0;
      }
    }
  }

  *(a1 + 16) = v26;
  return a1;
}

uint64_t geom::spoke<float>::spoke(uint64_t result, double a2, float a3)
{
  *(result + 24) = a3;
  *(result + 20) = 256;
  *result = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

__n128 geom::spoke<double>::evaluate_at(float64x2_t *a1, double a2)
{
  v2 = a1[2].f64[0];
  if (fabs(v2) <= 1.0e-10)
  {
    return *a1;
  }

  else
  {
    result.n128_u64[0] = *&vmlaq_n_f64(*a1, a1[1], v2 * (a2 - a1[3].f64[0]));
  }

  return result;
}

uint64_t geom::spoke<double>::halt(uint64_t result, double a2)
{
  v2 = *(result + 32);
  if (fabs(v2) <= 1.0e-10)
  {
    v3 = *result;
  }

  else
  {
    v3 = vmlaq_n_f64(*result, *(result + 16), v2 * (a2 - *(result + 48)));
  }

  *result = v3;
  *(result + 48) = a2;
  *(result + 32) = 0;
  *(result + 40) = 256;
  return result;
}

__n128 *geom::spoke<double>::spoke(__n128 *a1, __n128 a2, float64x2_t a3, float64x2_t a4, double a5)
{
  a1[1].n128_u64[0] = 0;
  a1[1].n128_u64[1] = 0;
  *a1 = a2;
  a1[3].n128_f64[0] = a5;
  a1[2].n128_u8[9] = 0;
  v6 = vsubq_f64(a2, a3);
  v7 = vsubq_f64(a2, a4);
  v8 = vmovn_s64(vcgeq_f64(vdupq_n_s64(0x3DDB7CDFD9D7BDBBuLL), vsqrtq_f64(vpaddq_f64(vmulq_f64(v7, v7), vmulq_f64(v6, v6)))));
  v9 = v8.i32[1];
  v10 = 0uLL;
  v11 = 0uLL;
  if ((v8.i8[4] & 1) == 0)
  {
    v12 = vsubq_f64(a3, a2);
    v11 = vmulq_n_f64(v12, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v12, v12))));
  }

  v13 = v8.i32[0];
  if ((v8.i8[0] & 1) == 0)
  {
    v14 = vsubq_f64(a4, a2);
    v10 = vmulq_n_f64(v14, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v14, v14))));
  }

  v15 = vaddq_f64(v11, v10);
  v16 = vsubq_f64(v11, v10);
  if (sqrt(vaddvq_f64(vmulq_f64(v16, v16))) <= 1.0e-10)
  {
    a1[2].n128_u8[8] = 0;
    __asm { FMOV            V0.2D, #0.5 }

    v22 = vmulq_f64(v15, _Q0);
    a1[1] = v22;
    v23 = sqrt(vaddvq_f64(vmulq_f64(v22, v22))) > 1.0e-10;
    v24 = 0.0;
    if (v23)
    {
      v24 = 1.0;
    }

    goto LABEL_10;
  }

  if (((v9 | v13) & 1) == 0)
  {
    v25 = sqrt(vaddvq_f64(vmulq_f64(v15, v15)));
    if (fabs(v25) <= 1.0e-10)
    {
      a1[2].n128_u8[8] = 0;
      a2.n128_f64[0] = -v10.f64[1];
      a1[1] = vzip1q_s64(a2, v10);
    }

    else
    {
      v37 = v11;
      v38 = v10;
      v35 = *&v25;
      v36 = v15;
      v26.f64[0] = _simd_orient_vd2(vsubq_f64(a3, a2), vsubq_f64(a4, a2));
      v27.f64[0] = 0.0;
      v28 = vdivq_f64(v36, vdupq_lane_s64(v35, 0));
      a1[2].n128_u8[8] = v26.f64[0] > 0.0;
      a1[1] = vbslq_s8(vdupq_lane_s64(vcgtq_f64(v26, v27).i64[0], 0), vnegq_f64(v28), v28);
      v29 = vaddvq_f64(vmulq_f64(v37, v38));
      if (v29 <= 1.0)
      {
        v30 = v29;
      }

      else
      {
        v30 = 1.0;
      }

      if (v29 >= -1.0)
      {
        v31 = v30;
      }

      else
      {
        v31 = -1.0;
      }

      v32 = acos(v31);
      v33 = sin(v32 * 0.5);
      if (fabs(v33) > 1.0e-10)
      {
        v24 = 1.0 / v33;
LABEL_10:
        a1[2].n128_f64[0] = v24;
        return a1;
      }
    }

    a1[2].n128_u64[0] = 0x3FF0000000000000;
    return a1;
  }

  a1[1].n128_u64[0] = 0;
  a1[1].n128_u64[1] = 0;
  a1[2].n128_u8[8] = 0;
  a1[2].n128_u64[0] = 0;
  return a1;
}

__n128 *geom::spoke<double>::spoke(__n128 *result, __n128 a2, double a3)
{
  result[3].n128_f64[0] = a3;
  result[2].n128_u16[4] = 256;
  *result = a2;
  result[1].n128_u64[1] = 0;
  result[2].n128_u64[0] = 0;
  result[1].n128_u64[0] = 0;
  return result;
}

uint64_t geom::straight_skeleton_evaluator<float>::straight_skeleton_evaluator(uint64_t a1, float32x2_t *a2, unint64_t a3, unsigned int *a4, uint64_t a5)
{
  *(a1 + 96) = 0u;
  v48 = (a1 + 96);
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 144) = 0u;
  std::vector<std::optional<unsigned int>>::resize((a1 + 144), a3);
  v49 = a2;
  v10 = 0x7F0000007FLL;
  v11 = vneg_f32(0x7F0000007FLL);
  if (a3)
  {
    v12 = 8 * a3;
    do
    {
      v13 = *a2++;
      v11 = vminnm_f32(v13, v11);
      v10 = vmaxnm_f32(v13, v10);
      v12 -= 8;
    }

    while (v12);
  }

  *(a1 + 200) = vmul_f32(vadd_f32(v11, v10), 0x3F0000003F000000);
  v54 = vsub_f32(v10, v11);
  v14 = *(&v54 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*&vcgt_f32(vdup_lane_s32(v54, 1), v54) & 1)));
  if (fabsf(v14) <= 0.000005)
  {
    v14 = 1.0;
  }

  *(a1 + 208) = v14;
  if (a5)
  {
    v15 = 0;
    v50 = &a4[a5];
    do
    {
      v51 = a4;
      v52 = *a4;
      if (v52 != v15)
      {
        v16 = 0;
        v17 = &v49[v15];
        v18 = v52 - v15;
        v19 = 1;
        do
        {
          v20 = v17[v16];
          v21 = (v18 - 1 + v16) % v18;
          v16 = v19;
          v22 = v19 % v18;
          v23 = (a1 + 208);
          v24 = vld1_dup_f32(v23);
          geom::spoke<float>::spoke(&v61, COERCE_DOUBLE(vdiv_f32(vsub_f32(v20, *(a1 + 200)), v24)), vdiv_f32(vsub_f32(v17[v21], *(a1 + 200)), v24), vdiv_f32(vsub_f32(v17[v22], *(a1 + 200)), v24), 0.0);
          *v63 = v15 + v21;
          *&v63[4] = v15 + v22;
          v25 = v15 + v19 - 1;
          *&v63[8] = v25;
          v63[12] = 0;
          v63[16] = 0;
          v63[20] = 0;
          v63[24] = 0;
          LODWORD(v56) = v25;
          std::vector<unsigned int>::vector[abi:nn200100](&__p, &v56, 1uLL);
          LOBYTE(v66) = 0;
          BYTE4(v66) = 0;
          v26 = *(a1 + 144) + 8 * v25;
          *v26 = v25;
          *(v26 + 4) = 1;
          v28 = *(a1 + 8);
          v27 = *(a1 + 16);
          if (v28 >= v27)
          {
            v30 = (v28 - *a1) >> 3;
            if ((v30 + 1) >> 61)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v31 = v27 - *a1;
            v32 = v31 >> 2;
            if (v31 >> 2 <= (v30 + 1))
            {
              v32 = v30 + 1;
            }

            if (v31 >= 0x7FFFFFFFFFFFFFF8)
            {
              v33 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v33 = v32;
            }

            if (v33)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, v33);
            }

            *(8 * v30) = v61;
            v29 = 8 * v30 + 8;
            v34 = *(a1 + 8) - *a1;
            v35 = (8 * v30 - v34);
            memcpy(v35, *a1, v34);
            v36 = *a1;
            *a1 = v35;
            *(a1 + 8) = v29;
            *(a1 + 16) = 0;
            if (v36)
            {
              operator delete(v36);
            }
          }

          else
          {
            *v28 = v61;
            v29 = (v28 + 1);
          }

          *(a1 + 8) = v29;
          v56 = v61;
          v57 = v62;
          v58[0] = *v63;
          *(v58 + 9) = *&v63[9];
          memset(v59, 0, 24);
          if (v65 != __p)
          {
            std::vector<float>::__vallocate[abi:nn200100](v59, (v65 - __p) >> 2);
          }

          v59[3] = v66;
          v60 = 0;
          std::vector<geom::straight_skeleton_evaluator<float>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<float>::vertex_state>>::push_back[abi:nn200100](a1 + 120, &v56);
          if (v60 != -1)
          {
            (*(&off_286292F88 + v60))(v55, &v56);
          }

          if (__p)
          {
            v65 = __p;
            operator delete(__p);
          }

          v19 = v16 + 1;
        }

        while (v18 > v16);
      }

      a4 = v51 + 1;
      v15 = v52;
    }

    while (v51 + 1 != v50);
  }

  LODWORD(v56) = (*(a1 + 8) - *a1) >> 3;
  std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 72), &v56);
  LODWORD(v56) = 0;
  std::vector<float>::push_back[abi:nn200100](v48, &v56);
  v37 = 0uLL;
  memset(v55, 0, sizeof(v55));
  if (*(a1 + 128) == *(a1 + 120))
  {
    v41 = 0;
  }

  else
  {
    LODWORD(v38) = 0;
    do
    {
      geom::straight_skeleton_evaluator<float>::edge_event_for_edge(a1, v38, &v56);
      if (BYTE8(v57) == 1)
      {
        v61 = v56;
        *&v62 = v57;
        DWORD2(v62) = 0;
        std::vector<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event>>::push_back[abi:nn200100](v55, &v61);
      }

      geom::straight_skeleton_evaluator<float>::best_split_event_for_vertex(a1, v38, &v56, v39, v40);
      if (BYTE8(v57) == 1)
      {
        v61 = v56;
        *&v62 = v57;
        DWORD2(v62) = 1;
        std::vector<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event>>::push_back[abi:nn200100](v55, &v61);
      }

      v38 = (v38 + 1);
    }

    while (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 128) - *(a1 + 120)) >> 3) > v38);
    v41 = v55[0];
    v37 = *&v55[1];
  }

  memset(v55, 0, sizeof(v55));
  v53 = v37;
  v42 = (v37 - v41) >> 5;
  if (v42 >= 2)
  {
    v43 = (v42 - 2) >> 1;
    v44 = &v41[32 * v43];
    v45 = v43 + 1;
    do
    {
      std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<float>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event> *>>(v41, &v56, v42, v44);
      v44 -= 32;
      --v45;
    }

    while (v45);
  }

  v46 = *(a1 + 168);
  if (v46)
  {
    *(a1 + 176) = v46;
    operator delete(v46);
  }

  *(a1 + 168) = v41;
  *(a1 + 176) = v53;
  if (v55[0])
  {
    v55[1] = v55[0];
    operator delete(v55[0]);
  }

  return a1;
}

void std::vector<std::optional<unsigned int>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<std::optional<unsigned int>>::__append(a1, a2 - v2);
  }
}

uint64_t std::vector<geom::straight_skeleton_evaluator<float>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<float>::vertex_state>>::push_back[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<geom::straight_skeleton_evaluator<float>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<float>::vertex_state>>::__emplace_back_slow_path<geom::straight_skeleton_evaluator<float>::vertex_state>(a1, a2);
  }

  else
  {
    *v3 = 0;
    *(v3 + 96) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<float>::active_vertex,geom::straight_skeleton_evaluator<float>::inactive_vertex>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<float>::active_vertex,geom::straight_skeleton_evaluator<float>::inactive_vertex>,(std::__variant_detail::_Trait)1>>(v3, a2);
    result = v3 + 104;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t geom::straight_skeleton_evaluator<float>::vertex_state::vertex_state(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *a1 = v4;
  std::vector<float>::vector[abi:nn200100]((a1 + 64), a2 + 8);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 96) = 0;
  return a1;
}

uint64_t geom::straight_skeleton_evaluator<float>::edge_event_for_edge@<X0>(uint64_t result@<X0>, unsigned __int32 a2@<W1>, float32x2_t *a3@<X8>)
{
  v4 = *(result + 120);
  v5 = (v4 + 104 * a2);
  if (!v5[12].i32[0])
  {
    v7 = v5[4].u32[1];
    if (v7 == a2)
    {
      goto LABEL_5;
    }

    v8 = (v4 + 104 * v7);
    if (!v8[12].i32[0])
    {
      result = geom::intersect_adjacent_spokes<float>(v5, v8);
      if ((result & 0x100000000) != 0)
      {
        v10 = v5[2].f32[0];
        if (fabsf(v10) <= 0.000005)
        {
          v11 = *v5;
        }

        else
        {
          v11 = vmla_n_f32(*v5, v5[1], v10 * (*&result - v5[3].f32[0]));
        }

        v12 = v8[2].f32[0];
        if (fabsf(v12) <= 0.000005)
        {
          v13 = *v8;
        }

        else
        {
          v13 = vmla_n_f32(*v8, v8[1], v12 * (*&result - v8[3].f32[0]));
        }

        a3->i32[0] = result;
        a3->i32[1] = a2;
        a3[1].i32[0] = v7;
        a3[2] = vmul_f32(vadd_f32(v11, v13), 0x3F0000003F000000);
        v9 = 1;
        goto LABEL_13;
      }

LABEL_5:
      v9 = 0;
      a3->i8[0] = 0;
LABEL_13:
      a3[3].i8[0] = v9;
      return result;
    }
  }

  v14 = std::__throw_bad_variant_access[abi:nn200100]();
  return std::vector<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event>>::push_back[abi:nn200100](v14);
}

void std::vector<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event>>>(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

uint64_t geom::straight_skeleton_evaluator<float>::best_split_event_for_vertex@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, _BYTE *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v9 = a2;
  v5 = *(result + 120) + 104 * a2;
  if (*(v5 + 96))
  {
    v7 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom::straight_skeleton_evaluator<float>::straight_skeleton_evaluator(v7);
  }

  else
  {
    v6 = *(v5 + 20);
    *a3 = 0;
    a3[24] = 0;
    if (v6 == 1)
    {
      v8[0] = result;
      v8[1] = &v9;
      v8[2] = a3;
      return geom::straight_skeleton_evaluator<float>::for_each_wavefront_edge<geom::straight_skeleton_evaluator<float>::best_split_event_for_vertex::{lambda(unsigned int,unsigned int)#1}>(result, v8, a4, a5);
    }
  }

  return result;
}

void geom::straight_skeleton_evaluator<float>::advance_to_inset_distance(uint64_t a1, float a2)
{
  v3 = *(a1 + 208);
  v4 = *(a1 + 168);
  v5 = *(a1 + 176);
  v6 = a2 / v3;
  if (v4 == v5)
  {
    v8 = *(a1 + 120);
    v7 = *(a1 + 128);
    if (v7 == v8)
    {
      goto LABEL_18;
    }

    v9 = 0;
    v10 = 0;
    do
    {
      v11 = v8 + 104 * v9;
      if (!*(v11 + 96) && *(v11 + 21) == 1)
      {
        geom::straight_skeleton_evaluator<float>::remove_vertex_from_face_neighbors(a1, v10, v11);
        geom::straight_skeleton_evaluator<float>::vertex_state::make_inactive(*(a1 + 120) + 104 * v9);
        v8 = *(a1 + 120);
        v7 = *(a1 + 128);
      }

      v9 = (v10 + 1);
      v10 = v9;
    }

    while (0x4EC4EC4EC4EC4EC5 * ((v7 - v8) >> 3) > v9);
    v4 = *(a1 + 168);
    v5 = *(a1 + 176);
  }

  if (v4 != v5)
  {
    do
    {
      geom::straight_skeleton_evaluator<float>::event_time(v4);
      if (v12 > v6)
      {
        break;
      }

      v14 = *(a1 + 120);
      v13 = *(a1 + 128);
      if (v13 != v14)
      {
        v15 = 0;
        v16 = 0;
        do
        {
          v17 = v14 + 104 * v15;
          if (!*(v17 + 96) && *(v17 + 21) == 1)
          {
            geom::straight_skeleton_evaluator<float>::remove_vertex_from_face_neighbors(a1, v16, v17);
            geom::straight_skeleton_evaluator<float>::vertex_state::make_inactive(*(a1 + 120) + 104 * v15);
            v14 = *(a1 + 120);
            v13 = *(a1 + 128);
          }

          v15 = (v16 + 1);
          v16 = v15;
        }

        while (0x4EC4EC4EC4EC4EC5 * ((v13 - v14) >> 3) > v15);
      }

      geom::straight_skeleton_evaluator<float>::process_next_event(a1);
      v4 = *(a1 + 168);
    }

    while (v4 != *(a1 + 176));
  }

LABEL_18:

  geom::straight_skeleton_evaluator<float>::add_joiner_patch_to_time(a1, v6);
}

uint64_t geom::straight_skeleton_evaluator<float>::event_time(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 == -1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom::straight_skeleton_evaluator<float>::process_next_event(v3);
  }

  else
  {
    v5 = &v4;
    return (*(&off_286292F98 + v1))(&v5, a1);
  }
}

uint64_t geom::straight_skeleton_evaluator<float>::process_next_event(void *a1)
{
  geom::straight_skeleton_evaluator<float>::event_time(a1[21]);
  v3 = v2;
  v23 = 0u;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  memset(v20, 0, sizeof(v20));
  geom::straight_skeleton_evaluator<float>::pop_coincident_events(a1, v22, v20, v2);
  v4 = 0;
  if ((v21.i64[1] + v23.i64[1]) << 6 <= 0x100uLL)
  {
    v5 = 256;
  }

  else
  {
    v5 = (v21.i64[1] + v23.i64[1]) << 6;
  }

  __p = 0;
  v18 = 0;
  v19 = 0;
  v6 = v5 | 1;
  while (v23.i64[1] | v21.i64[1])
  {
    if (v23.i64[1])
    {
      if (v4 + 1 > v6)
      {
        v7 = v4 + 1;
      }

      else
      {
        v7 = v5 | 1;
      }

      while (++v4 <= v5)
      {
        v8 = geom::straight_skeleton_evaluator<float>::apply_edge_event(a1, *(*(&v22[0] + 1) + 8 * (v23.i64[0] / 0xAAuLL)) + 24 * (v23.i64[0] % 0xAAuLL));
        if ((v8 & 0x100000000) != 0)
        {
          LODWORD(v15) = v8;
          v16 = 0;
          std::vector<std::variant<geom::straight_skeleton_evaluator<float>::edge_event_result,geom::straight_skeleton_evaluator<float>::split_event_result>>::push_back[abi:nn200100](&__p, &v15);
        }

        v9 = vaddq_s64(v23, xmmword_2500D1400);
        v23 = v9;
        if (v9.i64[0] >= 0x154uLL)
        {
          operator delete(**(&v22[0] + 1));
          *(&v22[0] + 1) += 8;
          v23.i64[0] -= 170;
          v10 = v23.i64[1];
        }

        else
        {
          v10 = v9.i64[1];
        }

        if (!v10)
        {
          goto LABEL_31;
        }
      }

LABEL_30:
      v4 = v7;
      goto LABEL_31;
    }

    if (v21.i64[1])
    {
      if (v4 + 1 > v6)
      {
        v7 = v4 + 1;
      }

      else
      {
        v7 = v5 | 1;
      }

      while (++v4 <= v5)
      {
        v11 = geom::straight_skeleton_evaluator<float>::apply_split_event(a1, *(*(&v20[0] + 1) + 8 * (v21.i64[0] / 0xAAuLL)) + 24 * (v21.i64[0] % 0xAAuLL));
        if (v12)
        {
          v15 = v11;
          v16 = 1;
          std::vector<std::variant<geom::straight_skeleton_evaluator<float>::edge_event_result,geom::straight_skeleton_evaluator<float>::split_event_result>>::push_back[abi:nn200100](&__p, &v15);
        }

        v13 = vaddq_s64(v21, xmmword_2500D1400);
        v21 = v13;
        if (v13.i64[0] >= 0x154uLL)
        {
          operator delete(**(&v20[0] + 1));
          *(&v20[0] + 1) += 8;
          v21.i64[0] -= 170;
          if (!v21.i64[1])
          {
            goto LABEL_31;
          }
        }

        else if (!v13.i64[1])
        {
          goto LABEL_31;
        }
      }

      goto LABEL_30;
    }

LABEL_31:
    geom::straight_skeleton_evaluator<float>::pop_coincident_events(a1, v22, v20, v3);
    if (v4 > v5)
    {
      break;
    }
  }

  geom::straight_skeleton_evaluator<float>::add_joiner_mesh_faces_for_events(a1, __p, 0xAAAAAAAAAAAAAAABLL * ((v18 - __p) >> 2), v3);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  std::deque<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state,std::allocator<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state>>::~deque[abi:nn200100](v20);
  return std::deque<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state,std::allocator<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state>>::~deque[abi:nn200100](v22);
}

void geom::straight_skeleton_evaluator<float>::add_joiner_patch_to_time(uint64_t a1, float a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v21 = a2;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  geom::hash_brown<unsigned int,unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>>::init(&v22, 1uLL);
  v18 = a1;
  v19 = &v21;
  v20 = &v22;
  geom::straight_skeleton_evaluator<float>::for_each_wavefront_vertex<geom::straight_skeleton_evaluator<float>::add_joiner_patch_to_time(float)::{lambda#1},geom::straight_skeleton_evaluator<float>::add_joiner_patch_to_time(float)::{lambda(void)#1}>(a1, &v18);
  v3 = *(a1 + 8) - *a1;
  v4 = *(a1 + 80);
  if (*(v4 - 4) < (v3 >> 3))
  {
    v5 = *(*(a1 + 104) - 4);
    if (v21 == v5 || (v5 + 0.000005) > v21)
    {
      *(v4 - 4) = v3 >> 3;
    }

    else
    {
      std::vector<float>::push_back[abi:nn200100]((a1 + 96), &v21);
      LODWORD(v18) = (*(a1 + 8) - *a1) >> 3;
      std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 72), &v18);
    }
  }

  v18 = a1;
  v19 = &v22;
  geom::straight_skeleton_evaluator<float>::for_each_wavefront_edge<geom::straight_skeleton_evaluator<float>::add_joiner_patch_to_time(float)::{lambda(unsigned int,unsigned int)#1}>(a1, &v18);
  v18 = &v22;
  if (v23 >= 0x10)
  {
    v7 = 0;
    v8 = v22;
    v9 = v23 >> 4;
    while (1)
    {
      v10 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v8), xmmword_2500C4D40)))), 0x3830282018100800).u16[0];
      v19 = (v10 ^ 0xFFFFLL);
      if (v10 != 0xFFFFLL)
      {
        break;
      }

      v7 -= 16;
      ++v8;
      if (!--v9)
      {
        goto LABEL_16;
      }
    }

    v11 = __clz(__rbit64(v10 ^ 0xFFFFLL));
    v12 = (v11 - v7);
    v20 = (v11 - v7);
    if (v11 + 1 != v7)
    {
      do
      {
        v13 = (*(v18 + 1) + 8 * v12);
        v14 = *v13;
        __src = v13[1];
        v15 = *(a1 + 120) + 104 * v14;
        if (*(v15 + 96))
        {
          std::__throw_bad_variant_access[abi:nn200100]();
        }

        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int const*,unsigned int const*>((v15 + 64), &__src, &v18, 1uLL);
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE19hash_brown_iteratorIRNS2_4pairIKSP_S4_EEEppEv(&v18);
        v12 = v20;
      }

      while (v20 != -1);
    }
  }

LABEL_16:
  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6deinitEv(&v22);
  v16 = *MEMORY[0x277D85DE8];
}

void geom::straight_skeleton_evaluator<float>::pop_coincident_events(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v4 = *(a1 + 168);
  if (v4 != *(a1 + 176))
  {
    v9 = a4 + 0.000005;
    do
    {
      geom::straight_skeleton_evaluator<float>::event_time(v4);
      if (v10 != a4 && v9 < v10)
      {
        break;
      }

      v12 = *(a1 + 168);
      v13 = v12[1].n128_u32[2];
      if (v13 == 1)
      {
        std::deque<geom::straight_skeleton_evaluator<float>::edge_event,std::allocator<geom::straight_skeleton_evaluator<float>::edge_event>>::push_back(a3, v12);
      }

      else
      {
        if (v13)
        {
          v22 = std::__throw_bad_variant_access[abi:nn200100]();
          geom::straight_skeleton_evaluator<float>::apply_edge_event(v22);
          return;
        }

        std::deque<geom::straight_skeleton_evaluator<float>::edge_event,std::allocator<geom::straight_skeleton_evaluator<float>::edge_event>>::push_back(a2, v12);
      }

      v4 = *(a1 + 168);
      v14 = *(a1 + 176);
      v15 = (v14 - v4) >> 5;
      if (v15 >= 2)
      {
        v16 = *(v4 + 1);
        v24 = *v4;
        v25 = v16;
        v17 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<float>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event> *>>(v4, &v23, v15);
        v18 = (v14 - 32);
        if ((v14 - 32) == v17)
        {
          v21 = v25;
          *v17 = v24;
          v17[1] = v21;
        }

        else
        {
          v19 = *(v14 - 16);
          *v17 = *v18;
          v17[1] = v19;
          v20 = v25;
          *v18 = v24;
          *(v14 - 16) = v20;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<float>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event> *>>(v4, (v17 + 2), &v23, ((v17 + 2) - v4) >> 5);
        }

        v4 = *(a1 + 168);
        v14 = *(a1 + 176);
      }

      *(a1 + 176) = v14 - 32;
    }

    while (v4 != (v14 - 32));
  }
}

uint64_t geom::straight_skeleton_evaluator<float>::apply_edge_event(void *a1, uint64_t a2)
{
  v3 = a1 + 15;
  v2 = a1[15];
  v4 = (v2 + 104 * *(a2 + 4));
  if (*(v4 + 24) || *(v2 + 104 * *(a2 + 8) + 96))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    return v8 | v7 | v6;
  }

  v11 = *v4;
  v12 = v4[1];
  v13 = v4[2];
  *(v73 + 9) = *(v4 + 41);
  v72[1] = v12;
  v73[0] = v13;
  v72[0] = v11;
  std::vector<float>::vector[abi:nn200100](&v74, v4 + 8);
  v76 = *(v4 + 11);
  v14 = *v3 + 104 * *(a2 + 8);
  if (!*(v14 + 96))
  {
    v15 = *v14;
    v16 = *(v14 + 16);
    v17 = *(v14 + 32);
    *(v68 + 9) = *(v14 + 41);
    v67[1] = v16;
    v68[0] = v17;
    v67[0] = v15;
    std::vector<float>::vector[abi:nn200100](&__p, (v14 + 64));
    v71 = *(v14 + 88);
    v18 = DWORD1(v73[0]);
    v19 = DWORD1(v68[0]);
    v20 = *(a2 + 4);
    v21 = *(a2 + 8);
    if (DWORD1(v73[0]) != v21 && DWORD1(v68[0]) != v20)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
LABEL_44:
      if (__p)
      {
        v70 = __p;
        operator delete(__p);
      }

      if (v74)
      {
        v75 = v74;
        operator delete(v74);
      }

      return v8 | v7 | v6;
    }

    v22 = v73;
    if (DWORD1(v73[0]) != v21)
    {
      v22 = v68;
    }

    v23 = *v22;
    if (DWORD1(v73[0]) == v21)
    {
      v24 = DWORD1(v68[0]);
    }

    else
    {
      v24 = DWORD1(v73[0]);
    }

    v46 = v24;
    v47 = v23;
    geom::straight_skeleton_evaluator<float>::vertex_state::make_inactive(a1[15] + 104 * v20);
    geom::straight_skeleton_evaluator<float>::vertex_state::make_inactive(a1[15] + 104 * *(a2 + 8));
    v25 = (a1[16] - a1[15]) >> 3;
    geom::straight_skeleton_evaluator<float>::remove_vertex_from_face_neighbors(a1, *(a2 + 4), v72);
    geom::straight_skeleton_evaluator<float>::remove_vertex_from_face_neighbors(a1, *(a2 + 8), v67);
    __dst[0] = 0;
    __dst[1] = 0;
    v66 = 0;
    if (v75 != v74)
    {
      std::vector<float>::__vallocate[abi:nn200100](__dst, (v75 - v74) >> 2);
    }

    v26 = -991146299 * v25;
    v27 = __p;
    v28 = v70;
    while (v27 != v28)
    {
      std::vector<unsigned int>::push_back[abi:nn200100](__dst, v27++);
    }

    v29 = v67;
    if (BYTE4(v76))
    {
      v29 = v72;
    }

    v30 = *(v29 + 22) | (*(v29 + 92) << 32);
    if (v18 == v21 && v19 == v20)
    {
      v31 = *(a2 + 16);
      v32 = *a2;
      v33 = v66;
      v34 = *__dst;
      __dst[1] = 0;
      v66 = 0;
      __dst[0] = 0;
      v51 = v31;
      LODWORD(v52) = 0;
      WORD2(v52) = 256;
      v53 = v32;
      v54 = v26;
      v55 = v26;
      v56 = -1;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v61 = v34;
      v62 = v33;
      v63 = v30 & 0xFFFFFFFFFFLL;
      v64 = 0;
      std::vector<geom::straight_skeleton_evaluator<float>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<float>::vertex_state>>::push_back[abi:nn200100](v3, &v51);
      if (v64 != -1)
      {
        (*(&off_286292F88 + v64))(&v48, &v51);
      }

LABEL_41:
      v8 = v26 & 0xFFFFFF00;
      if (__dst[0])
      {
        __dst[1] = __dst[0];
        operator delete(__dst[0]);
      }

      v7 = v26;
      v6 = 0x100000000;
      goto LABEL_44;
    }

    geom::straight_skeleton_evaluator<float>::create_vertex_and_update_neighbors(a1, v47, v46, *(&v68[1] + 4), *(v68 + 12), __dst, v30 & 0xFFFFFFFFFFLL, DWORD2(v68[0]), *a2, *(a2 + 16));
    if (v47 != v46)
    {
LABEL_35:
      geom::straight_skeleton_evaluator<float>::edge_event_for_edge(a1, v26, &v51);
      if (LOBYTE(v53) == 1)
      {
        v48 = v51;
        v49 = v52;
        v50 = 0;
        std::vector<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event>>::push_back[abi:nn200100]((a1 + 21), &v48);
        std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<float>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event> *>>(a1[21], a1[22], v77, (a1[22] - a1[21]) >> 5);
      }

      geom::straight_skeleton_evaluator<float>::edge_event_for_edge(a1, v47, &v51);
      if (LOBYTE(v53) == 1)
      {
        v48 = v51;
        v49 = v52;
        v50 = 0;
        std::vector<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event>>::push_back[abi:nn200100]((a1 + 21), &v48);
        std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<float>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event> *>>(a1[21], a1[22], v77, (a1[22] - a1[21]) >> 5);
      }

      geom::straight_skeleton_evaluator<float>::best_split_event_for_vertex(a1, v26, &v51, v43, v44);
      if (LOBYTE(v53) == 1)
      {
        v48 = v51;
        v49 = v52;
        v50 = 1;
        std::vector<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event>>::push_back[abi:nn200100]((a1 + 21), &v48);
        std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<float>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event> *>>(a1[21], a1[22], v77, (a1[22] - a1[21]) >> 5);
      }

      goto LABEL_41;
    }

    v35 = (*v3 + 104 * v47);
    if (!v35[12].i32[0])
    {
      v36 = *a2;
      v37 = v35[2].f32[0];
      if (fabsf(v37) <= 0.000005)
      {
        v38 = *v35;
      }

      else
      {
        v38 = vmla_n_f32(*v35, v35[1], v37 * (v36 - v35[3].f32[0]));
      }

      *v35 = v38;
      v35[3].f32[0] = v36;
      v35[2].i32[0] = 0;
      v35[2].i16[2] = 256;
      v39 = (*v3 + 104 * v26);
      if (!v39[12].i32[0])
      {
        v40 = *a2;
        v41 = v39[2].f32[0];
        if (fabsf(v41) <= 0.000005)
        {
          v42 = *v39;
        }

        else
        {
          v42 = vmla_n_f32(*v39, v39[1], v41 * (v40 - v39[3].f32[0]));
        }

        *v39 = v42;
        v39[3].f32[0] = v40;
        v39[2].i32[0] = 0;
        v39[2].i16[2] = 256;
        goto LABEL_35;
      }
    }
  }

  v45 = std::__throw_bad_variant_access[abi:nn200100]();
  return std::vector<std::variant<geom::straight_skeleton_evaluator<float>::edge_event_result,geom::straight_skeleton_evaluator<float>::split_event_result>>::push_back[abi:nn200100](v45);
}

void std::vector<std::variant<geom::straight_skeleton_evaluator<float>::edge_event_result,geom::straight_skeleton_evaluator<float>::split_event_result>>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<unsigned int,3,1>>>(a1, v11);
    }

    v12 = 12 * v8;
    v13 = *a2;
    *(v12 + 8) = *(a2 + 2);
    *v12 = v13;
    v7 = 12 * v8 + 12;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 12;
  }

  *(a1 + 8) = v7;
}

uint64_t geom::straight_skeleton_evaluator<float>::apply_split_event(void *a1, uint64_t a2)
{
  v2 = a1[15] + 104 * *(a2 + 8);
  if (*(v2 + 96))
  {
    return 0;
  }

  v6 = *v2;
  v7 = *(v2 + 16);
  v8 = *(v2 + 32);
  *&v59[9] = *(v2 + 41);
  v58[1] = v7;
  *v59 = v8;
  v58[0] = v6;
  std::vector<float>::vector[abi:nn200100](__p, (v2 + 64));
  __p[3] = *(v2 + 88);
  LOBYTE(v55) = 0;
  v57 = 0;
  v52[0] = a1;
  v52[1] = v58;
  v53 = &v55;
  geom::straight_skeleton_evaluator<float>::for_each_wavefront_edge_on_face<geom::straight_skeleton_evaluator<float>::apply_split_event(geom::straight_skeleton_evaluator<float>::split_event const&)::{lambda(unsigned int,unsigned int)#1}>(a1, v52, *(a2 + 4), v9, v10);
  if (v57 != 1)
  {
    goto LABEL_8;
  }

  v11 = v55;
  v12 = a1[15];
  v13 = v12 + 104 * v55;
  if (*(v13 + 96))
  {
    goto LABEL_47;
  }

  v14 = v56;
  v15 = v12 + 104 * v56;
  if (*(v15 + 96))
  {
    goto LABEL_47;
  }

  v16 = *v59;
  v17 = *(a2 + 8);
  if (*v59 != v17)
  {
    v18 = *&v59[4];
    if (*&v59[4] != v17)
    {
      geom::straight_skeleton_evaluator<float>::add_triangle_fan_for_active_vertex(a1, v17, *a2);
      v22 = v21;
      geom::straight_skeleton_evaluator<float>::add_joiner_mesh_triangle(a1, *(*(v13 + 72) - 4), **(v15 + 64), v21);
      v23 = a1[15];
      v24 = v23 + 104 * v11;
      if (!*(v24 + 96))
      {
        v25 = *(v24 + 40);
        v48 = *&v59[8];
        v26 = *(v24 + 44);
        v47 = *&v59[20];
        v27 = *&v59[12];
        geom::straight_skeleton_evaluator<float>::vertex_state::make_inactive(v23 + 104 * *(a2 + 8));
        LODWORD(v49) = v22;
        std::vector<unsigned int>::vector[abi:nn200100](v52, &v49, 1uLL);
        vertex_and_update_neighbors = geom::straight_skeleton_evaluator<float>::create_vertex_and_update_neighbors(a1, v16, v14, v11 | 0x100000000, v26, v52, 0, v25, *a2, *(a2 + 16));
        if (v52[0])
        {
          v52[1] = v52[0];
          operator delete(v52[0]);
        }

        LODWORD(v49) = v22;
        std::vector<unsigned int>::vector[abi:nn200100](v52, &v49, 1uLL);
        v29 = geom::straight_skeleton_evaluator<float>::create_vertex_and_update_neighbors(a1, v11, v18, v47, v27, v52, 0, v48, *a2, *(a2 + 16));
        if (v52[0])
        {
          v52[1] = v52[0];
          operator delete(v52[0]);
        }

        if (v16 == v14)
        {
          v30 = (a1[15] + 104 * v14);
          if (v30[12].i32[0])
          {
            goto LABEL_47;
          }

          v31 = *a2;
          v32 = v30[2].f32[0];
          if (fabsf(v32) <= 0.000005)
          {
            v33 = *v30;
          }

          else
          {
            v33 = vmla_n_f32(*v30, v30[1], v32 * (v31 - v30[3].f32[0]));
          }

          *v30 = v33;
          v30[3].f32[0] = v31;
          v30[2].i32[0] = 0;
          v30[2].i16[2] = 256;
          v34 = (a1[15] + 104 * vertex_and_update_neighbors);
          if (v34[12].i32[0])
          {
            goto LABEL_47;
          }

          v35 = *a2;
          v36 = v34[2].f32[0];
          if (fabsf(v36) <= 0.000005)
          {
            v37 = *v34;
          }

          else
          {
            v37 = vmla_n_f32(*v34, v34[1], v36 * (v35 - v34[3].f32[0]));
          }

          *v34 = v37;
          v34[3].f32[0] = v35;
          v34[2].i32[0] = 0;
          v34[2].i16[2] = 256;
        }

        if (v11 != v18)
        {
LABEL_38:
          geom::straight_skeleton_evaluator<float>::edge_event_for_edge(a1, vertex_and_update_neighbors, v52);
          if (v54 == 1)
          {
            v49 = *v52;
            v50 = v53;
            v51 = 0;
            std::vector<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event>>::push_back[abi:nn200100]((a1 + 21), &v49);
            std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<float>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event> *>>(a1[21], a1[22], v61, (a1[22] - a1[21]) >> 5);
          }

          geom::straight_skeleton_evaluator<float>::edge_event_for_edge(a1, v16, v52);
          if (v54 == 1)
          {
            v49 = *v52;
            v50 = v53;
            v51 = 0;
            std::vector<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event>>::push_back[abi:nn200100]((a1 + 21), &v49);
            std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<float>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event> *>>(a1[21], a1[22], v61, (a1[22] - a1[21]) >> 5);
          }

          geom::straight_skeleton_evaluator<float>::edge_event_for_edge(a1, v29, v52);
          if (v54 == 1)
          {
            v49 = *v52;
            v50 = v53;
            v51 = 0;
            std::vector<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event>>::push_back[abi:nn200100]((a1 + 21), &v49);
            std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<float>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event> *>>(a1[21], a1[22], v61, (a1[22] - a1[21]) >> 5);
          }

          geom::straight_skeleton_evaluator<float>::edge_event_for_edge(a1, v11, v52);
          if (v54 == 1)
          {
            v49 = *v52;
            v50 = v53;
            v51 = 0;
            std::vector<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event>>::push_back[abi:nn200100]((a1 + 21), &v49);
            std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<float>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event> *>>(a1[21], a1[22], v61, (a1[22] - a1[21]) >> 5);
          }

          v20 = vertex_and_update_neighbors & 0xFFFFFF00 | (v29 << 32);
          v19 = vertex_and_update_neighbors;
          goto LABEL_9;
        }

        v38 = (a1[15] + 104 * v11);
        if (!v38[12].i32[0])
        {
          v39 = *a2;
          v40 = v38[2].f32[0];
          if (fabsf(v40) <= 0.000005)
          {
            v41 = *v38;
          }

          else
          {
            v41 = vmla_n_f32(*v38, v38[1], v40 * (v39 - v38[3].f32[0]));
          }

          *v38 = v41;
          v38[3].f32[0] = v39;
          v38[2].i32[0] = 0;
          v38[2].i16[2] = 256;
          v42 = (a1[15] + 104 * v29);
          if (!v42[12].i32[0])
          {
            v43 = *a2;
            v44 = v42[2].f32[0];
            if (fabsf(v44) <= 0.000005)
            {
              v45 = *v42;
            }

            else
            {
              v45 = vmla_n_f32(*v42, v42[1], v44 * (v43 - v42[3].f32[0]));
            }

            *v42 = v45;
            v42[3].f32[0] = v43;
            v42[2].i32[0] = 0;
            v42[2].i16[2] = 256;
            goto LABEL_38;
          }
        }
      }

LABEL_47:
      v46 = std::__throw_bad_variant_access[abi:nn200100]();
      return geom::straight_skeleton_evaluator<float>::add_joiner_mesh_faces_for_events(v46);
    }
  }

LABEL_8:
  v19 = 0;
  v20 = 0;
LABEL_9:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v20 | v19;
}

uint64_t geom::straight_skeleton_evaluator<float>::add_joiner_mesh_faces_for_events(uint64_t a1, uint64_t *a2, uint64_t a3, float a4)
{
  v19 = 0u;
  v20 = 0u;
  v21 = 1065353216;
  if (a3)
  {
    v6 = a2;
    v7 = (a2 + 12 * a3);
    while (1)
    {
      v8 = *v6;
      v9 = *(v6 + 2);
      if (v9)
      {
        break;
      }

      LODWORD(__src) = *v6;
      if (!*(*(a1 + 120) + 104 * v8 + 96))
      {
        p_src = &__src;
LABEL_12:
        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v19, p_src);
      }

LABEL_13:
      v6 = (v6 + 12);
      if (v6 == v7)
      {
        v13 = v20;
        if (v20)
        {
          do
          {
            geom::straight_skeleton_evaluator<float>::add_triangle_fan_for_active_vertex(a1, *(v13 + 4), a4);
            v13 = *v13;
          }

          while (v13);
          goto LABEL_16;
        }

        return std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(&v19);
      }
    }

    if (v9 != 1)
    {
      goto LABEL_22;
    }

    __src = *v6;
    v10 = *(a1 + 120);
    if (*(v10 + 104 * v8 + 96))
    {
      v11 = HIDWORD(v8);
    }

    else
    {
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v19, &__src);
      LODWORD(v11) = HIDWORD(__src);
      v10 = *(a1 + 120);
    }

    if (*(v10 + 104 * v11 + 96))
    {
      goto LABEL_13;
    }

    p_src = &__src + 1;
    goto LABEL_12;
  }

LABEL_16:
  v14 = v20;
  if (!v20)
  {
    return std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(&v19);
  }

  while (1)
  {
    v15 = *(a1 + 120) + 104 * *(v14 + 4);
    if (*(v15 + 96))
    {
      break;
    }

    LODWORD(__src) = *(v15 + 88);
    std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int const*,unsigned int const*>((v15 + 64), &__src, &__src + 4, 1uLL);
    if (*(v15 + 92) == 1)
    {
      *(v15 + 92) = 0;
    }

    v14 = *v14;
    if (!v14)
    {
      return std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(&v19);
    }
  }

LABEL_22:
  v17 = std::__throw_bad_variant_access[abi:nn200100]();
  return geom::straight_skeleton_evaluator<float>::extract_offset_curve(v17);
}

void geom::straight_skeleton_evaluator<float>::extract_offset_curve(float32x2_t *a1, float32x2_t *a2, void *a3)
{
  a2[1] = *a2;
  a3[1] = *a3;
  v4[0] = a1;
  v4[1] = a2;
  v3[0] = a3;
  v3[1] = a2;
  _ZNK4geom27straight_skeleton_evaluatorIfE25for_each_wavefront_vertexIZNKS1_20extract_offset_curveERNSt3__16vectorIDv2_fNS3_9allocatorIS5_EEEERNS4_IjNS6_IjEEEEEUljE_ZNKS1_20extract_offset_curveES9_SC_EUlvE_EEvOT_OT0_(a1, v4, v3);
}

void _ZNK4geom27straight_skeleton_evaluatorIfE25for_each_wavefront_vertexIZNKS1_20extract_offset_curveERNSt3__16vectorIDv2_fNS3_9allocatorIS5_EEEERNS4_IjNS6_IjEEEEEUljE_ZNKS1_20extract_offset_curveES9_SC_EUlvE_EEvOT_OT0_(uint64_t a1, float32x2_t **a2, uint64_t a3)
{
  memset(__p, 0, sizeof(__p));
  std::vector<BOOL>::resize(__p, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 128) - *(a1 + 120)) >> 3), 0);
  v7 = *(a1 + 120);
  v6 = *(a1 + 128);
  if (v6 == v7)
  {
LABEL_17:
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = *(__p[0] + (v8 >> 6));
      if ((v10 & (1 << v8)) == 0 && !*(v7 + 104 * v8 + 96))
      {
        break;
      }

      *(__p[0] + (v8 >> 6)) = v10 | (1 << v8);
LABEL_6:
      v8 = ++v9;
      if (0x4EC4EC4EC4EC4EC5 * ((v6 - v7) >> 3) <= v9)
      {
        goto LABEL_17;
      }
    }

    v11 = v9;
    v12 = v9 >> 6;
    v13 = 1 << v9;
    for (i = *(__p[0] + v12); ; i = v20[v11 >> 6])
    {
      if ((v13 & i) != 0)
      {
        v22 = *a3;
        v25.i32[0] = (*(*(a3 + 8) + 8) - **(a3 + 8)) >> 3;
        std::vector<unsigned int>::push_back[abi:nn200100](v22, &v25);
        v7 = *(a1 + 120);
        v6 = *(a1 + 128);
        goto LABEL_6;
      }

      v15 = *a2;
      v16 = (*&(*a2)[15] + 104 * v11);
      if (v16[12].i32[0])
      {
        break;
      }

      v17 = v16[2].f32[0];
      if (fabsf(v17) <= 0.000005)
      {
        v18 = *v16;
      }

      else
      {
        v18 = vmla_n_f32(*v16, v16[1], v17 * (*(*&v15[13] - 4) - v16[3].f32[0]));
      }

      v19 = a2[1];
      v25 = vmla_n_f32(v15[25], v18, v15[26].f32[0]);
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(v19, &v25);
      v20 = __p[0];
      *(__p[0] + v12) |= v13;
      v21 = *(a1 + 120) + 104 * v11;
      if (*(v21 + 96))
      {
        break;
      }

      v11 = *(v21 + 36);
      v12 = v11 >> 6;
      v13 = 1 << v11;
    }

    v23 = std::__throw_bad_variant_access[abi:nn200100]();
    geom::straight_skeleton_evaluator<float>::extract_joiner_mesh(v23);
  }
}

void geom::straight_skeleton_evaluator<float>::extract_joiner_mesh(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a2[1] = *a2;
  *(a3 + 8) = *a3;
  *(a4 + 8) = *a4;
  *(a5 + 8) = *a5;
  *(a6 + 8) = *a6;
  v11 = *a1;
  v12 = *(a1 + 8);
  if (*a1 != v12)
  {
    do
    {
      v14 = *v11++;
      v24 = vmla_n_f32(*(a1 + 200), v14, *(a1 + 208));
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(a2, &v24);
    }

    while (v11 != v12);
  }

  v15 = *(a1 + 96);
  v16 = *(a1 + 104);
  while (v15 != v16)
  {
    v17 = *v15++;
    v25 = v17 * *(a1 + 208);
    std::vector<float>::push_back[abi:nn200100](a6, &v25);
  }

  v18 = *(a1 + 24);
  v19 = *(a1 + 32);
  while (v18 != v19)
  {
    std::vector<unsigned int>::push_back[abi:nn200100](a3, v18++);
  }

  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  while (v20 != v21)
  {
    std::vector<unsigned int>::push_back[abi:nn200100](a4, v20++);
  }

  v22 = *(a1 + 72);
  v23 = *(a1 + 80);
  while (v22 != v23)
  {
    std::vector<unsigned int>::push_back[abi:nn200100](a5, v22++);
  }
}

BOOL geom::straight_skeleton_evaluator<float>::event_time_comparator::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  geom::straight_skeleton_evaluator<float>::event_time(a2);
  v5 = v4;
  geom::straight_skeleton_evaluator<float>::event_time(a3);
  return v5 > v6;
}

__n128 geom::straight_skeleton_evaluator<float>::vertex_state::vertex_state(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = v2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  result = a2[4];
  *(a1 + 64) = result;
  *(a1 + 80) = *(a2 + 10);
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 8) = 0;
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 96) = 0;
  return result;
}

__n128 geom::straight_skeleton_evaluator<float>::vertex_state::vertex_state(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 96) = 1;
  return result;
}

uint64_t geom::straight_skeleton_evaluator<float>::vertex_state::get_active(uint64_t result)
{
  if (*(result + 96))
  {
    v1 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom::straight_skeleton_evaluator<float>::vertex_state::get_active_or_null(v1);
  }

  return result;
}

uint64_t geom::straight_skeleton_evaluator<float>::vertex_state::get_active_or_null(uint64_t result)
{
  if (*(result + 96))
  {
    return 0;
  }

  return result;
}

uint64_t geom::straight_skeleton_evaluator<float>::vertex_state::get_inactive(uint64_t result)
{
  if (*(result + 96) != 1)
  {
    v1 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom::straight_skeleton_evaluator<float>::vertex_state::spoke(v1);
  }

  return result;
}

uint64_t geom::straight_skeleton_evaluator<float>::vertex_state::spoke(uint64_t result)
{
  if (*(result + 96) >= 2u)
  {
    v1 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom::straight_skeleton_evaluator<float>::vertex_state::make_inactive(v1);
  }

  return result;
}

uint64_t geom::straight_skeleton_evaluator<float>::remove_vertex_from_face_neighbors(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 56) == 1)
  {
    v3 = *(result + 120) + 104 * *(a3 + 52);
    if (*(v3 + 96))
    {
      goto LABEL_10;
    }

    v4 = *(a3 + 44);
    *(v3 + 48) = *(a3 + 48);
    *(v3 + 44) = v4;
  }

  else
  {
    v5 = *(a3 + 40);
    if (v5 != -1)
    {
      v6 = *(result + 144) + 8 * v5;
      v7 = *(a3 + 44);
      *(v6 + 4) = *(a3 + 48);
      *v6 = v7;
    }
  }

  if (*(a3 + 48) != 1)
  {
    return result;
  }

  v8 = *(result + 120) + 104 * *(a3 + 44);
  if (*(v8 + 96))
  {
LABEL_10:
    v10 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom::straight_skeleton_evaluator<float>::create_vertex_and_update_neighbors(v10);
  }

  v9 = *(a3 + 52);
  *(v8 + 56) = *(a3 + 56);
  *(v8 + 52) = v9;
  return result;
}

uint64_t geom::straight_skeleton_evaluator<float>::create_vertex_and_update_neighbors(void *a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, unsigned int a8, float a9, double a10)
{
  v20 = a1 + 15;
  v19 = a1[15];
  v41 = a1[16];
  geom::straight_skeleton_evaluator<float>::find_distinct_neighbor(a1, a2, a3, 0, *&a10, a9);
  if ((v21 & 0x100000000) != 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = a2;
  }

  geom::straight_skeleton_evaluator<float>::find_distinct_neighbor(a1, a3, a2, 1, *&a10, a9);
  if ((v23 & 0x100000000) != 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = a3;
  }

  v25 = (*v20 + 104 * v22);
  if (v25[12].i32[0])
  {
    goto LABEL_31;
  }

  v26 = v25[2].f32[0];
  if (fabsf(v26) <= 0.000005)
  {
    v27 = *v25;
  }

  else
  {
    v27 = vmla_n_f32(*v25, v25[1], v26 * (a9 - v25[3].f32[0]));
  }

  v28 = (*v20 + 104 * v24);
  if (v28[12].i32[0])
  {
    goto LABEL_31;
  }

  v29 = v28[2].f32[0];
  if (fabsf(v29) <= 0.000005)
  {
    v30 = *v28;
  }

  else
  {
    v30 = vmla_n_f32(*v28, v28[1], v29 * (a9 - v28[3].f32[0]));
  }

  geom::spoke<float>::spoke(v43, a10, v27, v30, a9);
  *v44 = a2;
  *&v44[4] = a3;
  *&v44[8] = a8;
  *&v44[12] = a5;
  v44[16] = BYTE4(a5);
  *&v44[20] = a4;
  v44[24] = BYTE4(a4);
  v31 = *(a6 + 2);
  v32 = *a6;
  *(a6 + 1) = 0;
  *(a6 + 2) = 0;
  *a6 = 0;
  BYTE4(v48) = BYTE4(a7);
  LODWORD(v48) = a7;
  v49[0] = v43[0];
  v49[1] = v43[1];
  v50[0] = *v44;
  *(v50 + 9) = *&v44[9];
  v50[2] = v32;
  __p = 0;
  v46 = 0;
  v47 = 0;
  v51 = v31;
  v52 = v48;
  v53 = 0;
  std::vector<geom::straight_skeleton_evaluator<float>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<float>::vertex_state>>::push_back[abi:nn200100](v20, v49);
  if (v53 != -1)
  {
    (*(&off_286292F88 + v53))(v54, v49);
  }

  v53 = -1;
  if (__p)
  {
    v46 = __p;
    operator delete(__p);
  }

  v33 = *v20;
  v34 = *v20 + 104 * a2;
  if (*(v34 + 96))
  {
    goto LABEL_31;
  }

  result = -991146299 * ((v41 - v19) >> 3);
  *(v34 + 36) = result;
  v36 = v33 + 104 * a3;
  if (*(v36 + 96))
  {
    goto LABEL_31;
  }

  *(v36 + 32) = result;
  if ((a4 & 0x100000000) != 0)
  {
    v37 = v33 + 104 * a4;
    if (*(v37 + 96))
    {
      goto LABEL_31;
    }

    *(v37 + 44) = result;
    *(v37 + 48) = 1;
  }

  if ((a5 & 0x100000000) == 0)
  {
    goto LABEL_27;
  }

  v38 = *v20 + 104 * a5;
  if (*(v38 + 96))
  {
LABEL_31:
    v40 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom::straight_skeleton_evaluator<float>::for_each_wavefront_edge_on_face<geom::straight_skeleton_evaluator<float>::apply_split_event(geom::straight_skeleton_evaluator<float>::split_event const&)::{lambda(unsigned int,unsigned int)#1}>(v40);
  }

  *(v38 + 52) = result;
  *(v38 + 56) = 1;
LABEL_27:
  if (a8 != -1 && (a4 & 0x100000000) == 0)
  {
    v39 = a1[18] + 8 * a8;
    *v39 = result;
    *(v39 + 4) = 1;
  }

  return result;
}

uint64_t geom::straight_skeleton_evaluator<float>::for_each_wavefront_edge_on_face<geom::straight_skeleton_evaluator<float>::apply_split_event(geom::straight_skeleton_evaluator<float>::split_event const&)::{lambda(unsigned int,unsigned int)#1}>(uint64_t result, uint64_t a2, unsigned int a3, double a4, double a5)
{
  v5 = *(*(result + 144) + 8 * a3);
  if ((v5 & 0x100000000) != 0)
  {
    v7 = result;
    v8 = v5;
    while (1)
    {
      v9 = *(v7 + 120) + 104 * v8;
      if (*(v9 + 96))
      {
        break;
      }

      v10 = *(*a2 + 120);
      v11 = (v10 + 104 * v8);
      if (v11[12].i32[0])
      {
        break;
      }

      v12 = *(v9 + 36);
      v13 = (v10 + 104 * v12);
      if (v13[12].i32[0])
      {
        break;
      }

      result = geom::intersect_wavefront_edge_spoke<float>(v11, v13, *(a2 + 8), a4, a5);
      if ((result & 0x100000000) != 0)
      {
        v14 = *(a2 + 16);
        if (*(v14 + 8) == 1)
        {
          *v14 = v8;
          *(v14 + 4) = v12;
        }

        else
        {
          *v14 = v8 | (v12 << 32);
          *(v14 + 8) = 1;
        }
      }

      v8 = *(v9 + 44);
      if ((*(v9 + 48) & 1) == 0)
      {
        return result;
      }
    }

    v15 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom::straight_skeleton_evaluator<float>::add_triangle_fan_for_active_vertex(v15);
  }

  return result;
}

void geom::straight_skeleton_evaluator<float>::add_triangle_fan_for_active_vertex(uint64_t a1, unsigned int a2, float a3)
{
  v35 = a3;
  v3 = (*(a1 + 120) + 104 * a2);
  if (!v3[12].i32[0])
  {
    if (v3[11].i8[4] == 1)
    {
      LODWORD(v7) = v3[11].i32[0];
    }

    else
    {
      v7 = (*(a1 + 8) - *a1) >> 3;
      v8 = v3[2].f32[0];
      if (fabsf(v8) <= 0.000005)
      {
        v9 = *v3;
      }

      else
      {
        v9 = vmla_n_f32(*v3, v3[1], v8 * (a3 - v3[3].f32[0]));
      }

      v34 = v9;
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(a1, &v34);
    }

    v10 = *(*a1 + 8 * v7);
    v11 = *(*(a1 + 104) - 4);
    if (v11 == a3 || (v11 + 0.000005) > a3)
    {
      *(*(a1 + 80) - 4) = (*(a1 + 8) - *a1) >> 3;
    }

    else
    {
      std::vector<float>::push_back[abi:nn200100]((a1 + 96), &v35);
      v34.i32[0] = (*(a1 + 8) - *a1) >> 3;
      std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 72), &v34);
    }

    v13 = v3[8];
    if (*&v3[9] - *&v13 >= 5uLL)
    {
      v14 = 2;
      v15 = 1;
      do
      {
        geom::straight_skeleton_evaluator<float>::add_joiner_mesh_triangle(a1, *(*&v13 + 4 * (v14 - 2)), *(*&v13 + 4 * v15), v7);
        v15 = v14;
        v13 = v3[8];
        ++v14;
      }

      while (v15 < (*&v3[9] - *&v13) >> 2);
    }

    v16 = v3[4].u32[0];
    v17 = v3[4].i32[1];
    geom::straight_skeleton_evaluator<float>::find_distinct_neighbor(a1, v16, a2, 0, v10, v35);
    if ((v18 & 0x100000000) != 0)
    {
      v16 = v18;
    }

    geom::straight_skeleton_evaluator<float>::find_distinct_neighbor(a1, v3[4].u32[1], a2, 1, v10, v35);
    v20 = *(a1 + 120);
    v21 = v20 + 104 * v16;
    if (!*(v21 + 96))
    {
      v22 = (v19 & 0x100000000) != 0 ? v19 : v17;
      v23 = v20 + 104 * v22;
      if (!*(v23 + 96))
      {
        if (v3[4].i32[1] == a2)
        {
          v24 = v3[8];
          v25 = v3[9];
          if (*&v25 - v24 < 9uLL)
          {
LABEL_36:
            v3[11].i32[0] = v7;
            v3[11].i8[4] = 1;
            return;
          }

          v26 = *(*&v25 - 4);
LABEL_35:
          geom::straight_skeleton_evaluator<float>::add_joiner_mesh_triangle(a1, v26, *v24, v7);
          goto LABEL_36;
        }

        v27 = v20 + 104 * *(v21 + 36);
        if (!*(v27 + 96))
        {
          v28 = v20 + 104 * *(v23 + 32);
          if (!*(v28 + 96))
          {
            if (*(v21 + 92))
            {
              v29 = (v21 + 88);
            }

            else
            {
              v29 = (*(v21 + 72) - 4);
            }

            geom::straight_skeleton_evaluator<float>::add_joiner_mesh_triangle(a1, *v29, **(v27 + 64), v7);
            v26 = *(*(v28 + 72) - 4);
            if (*(v23 + 92))
            {
              v24 = (v23 + 88);
            }

            else
            {
              v24 = *(v23 + 64);
            }

            goto LABEL_35;
          }
        }
      }
    }
  }

  v30 = std::__throw_bad_variant_access[abi:nn200100]();
  geom::straight_skeleton_evaluator<float>::add_joiner_mesh_triangle(v30, v31, v32, v33);
}

void geom::straight_skeleton_evaluator<float>::add_joiner_mesh_triangle(uint64_t a1, int a2, int a3, int a4)
{
  v7 = a3;
  v8 = a2;
  v6 = a4;
  std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 24), &v8);
  std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 24), &v7);
  std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 24), &v6);
  v5 = (*(a1 + 32) - *(a1 + 24)) >> 2;
  std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 48), &v5);
}

float32x2_t geom::straight_skeleton_evaluator<float>::find_distinct_neighbor(uint64_t a1, unsigned int a2, unsigned int a3, int a4, float32x2_t result, float a6)
{
  v6 = a2;
  if (a2 != a3)
  {
    v7 = 8;
    if (a4)
    {
      v7 = 9;
    }

    while (1)
    {
      v8 = (*(a1 + 120) + 104 * v6);
      if (v8[12].i32[0])
      {
        break;
      }

      v9 = v8[2].f32[0];
      if (fabsf(v9) <= 0.000005)
      {
        v10 = *v8;
      }

      else
      {
        v10 = vmla_n_f32(*v8, v8[1], v9 * (a6 - v8[3].f32[0]));
      }

      v11 = vsub_f32(v10, result);
      if (sqrtf(vaddv_f32(vmul_f32(v11, v11))) <= 0.000005)
      {
        v6 = v8->u32[v7];
        if (v6 != a3)
        {
          continue;
        }
      }

      return result;
    }

    v12 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom::straight_skeleton_evaluator<float>::internal_to_user_position(v12, v13);
  }

  return result;
}

void geom::straight_skeleton_evaluator<float>::check_topological_invariants(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v181 = 0;
  v182 = 0;
  v183 = 0;
  v3 = a1[15];
  if (a1[16] != v3)
  {
    v4 = 0;
    v5 = 0;
    v170 = *MEMORY[0x277D82818];
    v6 = *(MEMORY[0x277D82818] + 64);
    v7 = *(MEMORY[0x277D82818] + 72);
    do
    {
      v8 = v3 + 104 * v4;
      if (*(v8 + 96))
      {
        goto LABEL_81;
      }

      v9 = v3 + 104 * *(v8 + 36);
      if (*(v9 + 96))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
        v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "vertex ", 7);
        v11 = MEMORY[0x25305E2F0](v10, v5);
        v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, ": next = ", 9);
        v13 = MEMORY[0x25305E2F0](v12, *(v8 + 36));
        v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, ", but ", 6);
        v15 = MEMORY[0x25305E2F0](v14, *(v8 + 36));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, " is inactive", 12);
      }

      else
      {
        if (v5 == *(v9 + 32))
        {
          goto LABEL_13;
        }

        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
        v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "vertex ", 7);
        v17 = MEMORY[0x25305E2F0](v16, v5);
        v18 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, ": prev and next pointers do not match.  next = ", 47);
        v19 = MEMORY[0x25305E2F0](v18, *(v8 + 36));
        v20 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, ", and next->prev = ", 19);
        MEMORY[0x25305E2F0](v20, *(v9 + 32));
      }

      std::stringbuf::str();
      std::vector<std::string>::push_back[abi:nn200100](&v181, __p);
      if (v173 < 0)
      {
        operator delete(__p[0]);
      }

      v174[0] = v170;
      *(v174 + *(v170 - 3)) = v6;
      v175 = v7;
      v176 = MEMORY[0x277D82878] + 16;
      if (v179 < 0)
      {
        operator delete(v178);
      }

      v176 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v177);
      std::iostream::~basic_iostream();
      MEMORY[0x25305E3C0](v180);
LABEL_13:
      v21 = a1[15];
      if (!v21 || (v22 = v21 + 104 * *(v8 + 32), *(v22 + 96)))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
        v28 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "vertex ", 7);
        v29 = MEMORY[0x25305E2F0](v28, v5);
        v30 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v29, ": prev = ", 9);
        v31 = MEMORY[0x25305E2F0](v30, *(v8 + 32));
        v32 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v31, ", but ", 6);
        v33 = MEMORY[0x25305E2F0](v32, *(v8 + 32));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33, " is inactive", 12);
      }

      else
      {
        if (v5 == *(v22 + 36))
        {
          goto LABEL_23;
        }

        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
        v23 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "vertex ", 7);
        v24 = MEMORY[0x25305E2F0](v23, v5);
        v25 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, ": prev and next pointers do not match.  prev = ", 47);
        v26 = MEMORY[0x25305E2F0](v25, *(v8 + 32));
        v27 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v26, ", and prev->next = ", 19);
        MEMORY[0x25305E2F0](v27, *(v22 + 36));
      }

      std::stringbuf::str();
      std::vector<std::string>::push_back[abi:nn200100](&v181, __p);
      if (v173 < 0)
      {
        operator delete(__p[0]);
      }

      v174[0] = v170;
      *(v174 + *(v170 - 3)) = v6;
      v175 = v7;
      v176 = MEMORY[0x277D82878] + 16;
      if (v179 < 0)
      {
        operator delete(v178);
      }

      v176 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v177);
      std::iostream::~basic_iostream();
      MEMORY[0x25305E3C0](v180);
LABEL_23:
      if (*(v8 + 48) != 1)
      {
        goto LABEL_37;
      }

      v34 = a1[15];
      if (!v34 || (v35 = v34 + 104 * *(v8 + 44), *(v35 + 96)))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
        v41 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "vertex ", 7);
        v42 = MEMORY[0x25305E2F0](v41, v5);
        v43 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v42, ": next_in_face = ", 17);
        v44 = MEMORY[0x25305E2F0](v43, *(v8 + 44));
        v45 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v44, ", but ", 6);
        v46 = MEMORY[0x25305E2F0](v45, *(v8 + 44));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v46, " is inactive", 12);
        std::stringbuf::str();
        std::vector<std::string>::push_back[abi:nn200100](&v181, __p);
        if (v173 < 0)
        {
          operator delete(__p[0]);
        }

        v174[0] = v170;
        *(v174 + *(v170 - 3)) = v6;
        v175 = v7;
        v176 = MEMORY[0x277D82878] + 16;
        if (v179 < 0)
        {
LABEL_35:
          operator delete(v178);
        }

LABEL_36:
        v176 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v177);
        std::iostream::~basic_iostream();
        MEMORY[0x25305E3C0](v180);
        goto LABEL_37;
      }

      if (*(v35 + 56) != 1 || v5 != *(v35 + 52))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
        v37 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "vertex ", 7);
        v38 = MEMORY[0x25305E2F0](v37, v5);
        v39 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v38, ": prev_in_face and next_next_in_face pointers do not match.  next = ", 68);
        v40 = MEMORY[0x25305E2F0](v39, *(v8 + 44));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v40, ", and next->prev = ", 19);
        if (*(v35 + 56) == 1)
        {
          MEMORY[0x25305E2F0](&v175, *(v35 + 52));
        }

        else
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "nullopt", 7);
        }

        std::stringbuf::str();
        std::vector<std::string>::push_back[abi:nn200100](&v181, __p);
        if (v173 < 0)
        {
          operator delete(__p[0]);
        }

        v174[0] = v170;
        *(v174 + *(v170 - 3)) = v6;
        v175 = v7;
        v176 = MEMORY[0x277D82878] + 16;
        if (v179 < 0)
        {
          goto LABEL_35;
        }

        goto LABEL_36;
      }

LABEL_37:
      if (*(v8 + 56) != 1)
      {
        goto LABEL_51;
      }

      v47 = a1[15];
      if (!v47 || (v48 = v47 + 104 * *(v8 + 52), *(v48 + 96)))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
        v54 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "vertex ", 7);
        v55 = MEMORY[0x25305E2F0](v54, v5);
        v56 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v55, ": prev_in_face = ", 17);
        v57 = MEMORY[0x25305E2F0](v56, *(v8 + 52));
        v58 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v57, ", but ", 6);
        v59 = MEMORY[0x25305E2F0](v58, *(v8 + 52));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v59, " is inactive", 12);
        std::stringbuf::str();
        std::vector<std::string>::push_back[abi:nn200100](&v181, __p);
        if (v173 < 0)
        {
          operator delete(__p[0]);
        }

        v174[0] = v170;
        *(v174 + *(v170 - 3)) = v6;
        v175 = v7;
        v176 = MEMORY[0x277D82878] + 16;
        if (v179 < 0)
        {
LABEL_49:
          operator delete(v178);
        }

LABEL_50:
        v176 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v177);
        std::iostream::~basic_iostream();
        MEMORY[0x25305E3C0](v180);
        goto LABEL_51;
      }

      if (*(v48 + 48) != 1 || v5 != *(v48 + 44))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
        v50 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "vertex ", 7);
        v51 = MEMORY[0x25305E2F0](v50, v5);
        v52 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v51, ": prev_in_face and next_next_in_face pointers do not match.  prev = ", 68);
        v53 = MEMORY[0x25305E2F0](v52, *(v8 + 52));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v53, ", and prev->next = ", 19);
        if (*(v48 + 48) == 1)
        {
          MEMORY[0x25305E2F0](&v175, *(v48 + 44));
        }

        else
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "nullopt", 7);
        }

        std::stringbuf::str();
        std::vector<std::string>::push_back[abi:nn200100](&v181, __p);
        if (v173 < 0)
        {
          operator delete(__p[0]);
        }

        v174[0] = v170;
        *(v174 + *(v170 - 3)) = v6;
        v175 = v7;
        v176 = MEMORY[0x277D82878] + 16;
        if (v179 < 0)
        {
          goto LABEL_49;
        }

        goto LABEL_50;
      }

LABEL_51:
      v60 = *(v8 + 40);
      if (v60 == -1)
      {
        if (v5 != *(v8 + 36))
        {
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
          v66 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "vertex ", 7);
          v67 = MEMORY[0x25305E2F0](v66, v5);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v67, ": is not a self loop but points to the null face in face_for_next_edge", 70);
          std::stringbuf::str();
          std::vector<std::string>::push_back[abi:nn200100](&v181, __p);
          if (v173 < 0)
          {
            operator delete(__p[0]);
          }

          v174[0] = v170;
          *(v174 + *(v170 - 3)) = v6;
          v175 = v7;
          v176 = MEMORY[0x277D82878] + 16;
          if (v179 < 0)
          {
            operator delete(v178);
          }

          v176 = MEMORY[0x277D82868] + 16;
          std::locale::~locale(v177);
          std::iostream::~basic_iostream();
          MEMORY[0x25305E3C0](v180);
        }

        if ((*(v8 + 56) & 1) == 0 && *(v8 + 48) != 1)
        {
          goto LABEL_81;
        }

        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
        v68 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "vertex ", 7);
        v69 = MEMORY[0x25305E2F0](v68, v5);
        v70 = ": face_for_next_edge == null but {prev,next}_in_face != null";
        v71 = 60;
        goto LABEL_76;
      }

      v61 = a1[18];
      if (v60 >= (a1[19] - v61) >> 3)
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
        v72 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "vertex ", 7);
        v73 = MEMORY[0x25305E2F0](v72, v5);
        v74 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v73, ": face_for_next_edge = ", 23);
        v75 = MEMORY[0x25305E2F0](v74, *(v8 + 40));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v75, " which is out of range", 22);
        std::stringbuf::str();
        std::vector<std::string>::push_back[abi:nn200100](&v181, __p);
        if (v173 < 0)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (*(v61 + 8 * v60 + 4))
        {
          goto LABEL_70;
        }

        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
        v62 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "vertex ", 7);
        v63 = MEMORY[0x25305E2F0](v62, v5);
        v64 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v63, ": face_for_next_edge = ", 23);
        v65 = MEMORY[0x25305E2F0](v64, *(v8 + 40));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v65, " but m_face_to_first_vertex_map has stored this face as empty", 61);
        std::stringbuf::str();
        std::vector<std::string>::push_back[abi:nn200100](&v181, __p);
        if (v173 < 0)
        {
LABEL_66:
          operator delete(__p[0]);
        }
      }

      v174[0] = v170;
      *(v174 + *(v170 - 3)) = v6;
      v175 = v7;
      v176 = MEMORY[0x277D82878] + 16;
      if (v179 < 0)
      {
        operator delete(v178);
      }

      v176 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v177);
      std::iostream::~basic_iostream();
      MEMORY[0x25305E3C0](v180);
LABEL_70:
      if ((*(v8 + 56) & 1) == 0)
      {
        v76 = a1[18] + 8 * *(v8 + 40);
        v77 = *(v76 + 4);
        v78 = *v76;
        if (v77 != 1 || v5 != v78)
        {
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
          v80 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "vertex ", 7);
          v81 = MEMORY[0x25305E2F0](v80, v5);
          v82 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v81, ": face_for_next_edge = ", 23);
          v69 = MEMORY[0x25305E2F0](v82, *(v8 + 40));
          v70 = " and prev_in_face == null, but m_face_to_first_vertex_map does not point to this vertex";
          v71 = 87;
LABEL_76:
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v69, v70, v71);
          std::stringbuf::str();
          std::vector<std::string>::push_back[abi:nn200100](&v181, __p);
          if (v173 < 0)
          {
            operator delete(__p[0]);
          }

          v174[0] = v170;
          *(v174 + *(v170 - 3)) = v6;
          v175 = v7;
          v176 = MEMORY[0x277D82878] + 16;
          if (v179 < 0)
          {
            operator delete(v178);
          }

          v176 = MEMORY[0x277D82868] + 16;
          std::locale::~locale(v177);
          std::iostream::~basic_iostream();
          MEMORY[0x25305E3C0](v180);
        }
      }

LABEL_81:
      v4 = (v5 + 1);
      v3 = a1[15];
      v5 = v4;
    }

    while (0x4EC4EC4EC4EC4EC5 * ((a1[16] - v3) >> 3) > v4);
  }

  v84 = a1[18];
  v83 = a1[19];
  if (v83 != v84)
  {
    v85 = 0;
    v86 = 0;
    v171 = *MEMORY[0x277D82818];
    v87 = *(MEMORY[0x277D82818] + 64);
    v88 = *(MEMORY[0x277D82818] + 72);
    do
    {
      v89 = *(v84 + 8 * v85);
      if ((v89 & 0x100000000) != 0)
      {
        v90 = a1[15];
        v91 = v90 + 104 * v89;
        v92 = v90 && *(v91 + 96) == 0;
        if (v92 && v86 != *(v91 + 40))
        {
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
          v93 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "face ", 5);
          v94 = MEMORY[0x25305E2F0](v93, v86);
          v95 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v94, ": vertex ", 9);
          v96 = MEMORY[0x25305E2F0](v95, v89);
          v97 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v96, " is referenced in m_face_to_first_vertex_map, but edge->face map refers to face ", 80);
          MEMORY[0x25305E2F0](v97, *(v91 + 40));
          std::stringbuf::str();
          std::vector<std::string>::push_back[abi:nn200100](&v181, __p);
          if (v173 < 0)
          {
            operator delete(__p[0]);
          }

          v174[0] = v171;
          *(v174 + *(v171 - 3)) = v87;
          v175 = v88;
          v176 = MEMORY[0x277D82878] + 16;
          if (v179 < 0)
          {
            operator delete(v178);
          }

          v176 = MEMORY[0x277D82868] + 16;
          std::locale::~locale(v177);
          std::iostream::~basic_iostream();
          MEMORY[0x25305E3C0](v180);
          v84 = a1[18];
          v83 = a1[19];
        }
      }

      v85 = (v86 + 1);
      v86 = v85;
    }

    while (v85 < (v83 - v84) >> 3);
  }

  v98 = MEMORY[0x277D82818];
  if (a1[10] - a1[9] != a1[13] - a1[12])
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
    v99 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "size of m_joiner_accumulated_boundary_size (", 44);
    v100 = MEMORY[0x25305E300](v99, (a1[10] - a1[9]) >> 2);
    v101 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v100, ") does not match size of m_joiner_parameter_for_boundary (", 58);
    v102 = MEMORY[0x25305E300](v101, (a1[13] - a1[12]) >> 2);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v102, ")", 1);
    std::stringbuf::str();
    std::vector<std::string>::push_back[abi:nn200100](&v181, __p);
    if (v173 < 0)
    {
      operator delete(__p[0]);
    }

    v174[0] = *v98;
    v103 = *(v98 + 72);
    *(v174 + *(v174[0] - 3)) = *(v98 + 64);
    v175 = v103;
    v176 = MEMORY[0x277D82878] + 16;
    if (v179 < 0)
    {
      operator delete(v178);
    }

    v176 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v177);
    std::iostream::~basic_iostream();
    MEMORY[0x25305E3C0](v180);
  }

  v104 = a1[7];
  if (a1[6] == v104)
  {
    v105 = 0;
  }

  else
  {
    v105 = *(v104 - 4);
  }

  v107 = a1[3];
  v106 = a1[4];
  if (v105 != (v106 - v107) >> 2)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
    v108 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "the last entry of m_joiner_accumulated_face_valence is ", 55);
    v109 = MEMORY[0x25305E2F0](v108, v105);
    v110 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v109, " but the m_joiner_face_indices.size() is ", 41);
    MEMORY[0x25305E300](v110, (a1[4] - a1[3]) >> 2);
    std::stringbuf::str();
    std::vector<std::string>::push_back[abi:nn200100](&v181, __p);
    if (v173 < 0)
    {
      operator delete(__p[0]);
    }

    v174[0] = *v98;
    v111 = *(v98 + 72);
    *(v174 + *(v174[0] - 3)) = *(v98 + 64);
    v175 = v111;
    v176 = MEMORY[0x277D82878] + 16;
    if (v179 < 0)
    {
      operator delete(v178);
    }

    v176 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v177);
    std::iostream::~basic_iostream();
    MEMORY[0x25305E3C0](v180);
    v107 = a1[3];
    v106 = a1[4];
  }

  if (v106 != v107)
  {
    v112 = 0;
    v113 = 0;
    v114 = *MEMORY[0x277D82818];
    v115 = *(MEMORY[0x277D82818] + 64);
    v116 = *(MEMORY[0x277D82818] + 72);
    do
    {
      if (*(v107 + 4 * v112) >= ((a1[1] - *a1) >> 3))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
        v117 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "m_joiner_face_indices[", 22);
        v118 = MEMORY[0x25305E2F0](v117, v113);
        v119 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v118, "]: Index out of range (m_joiner_positions.size() = ", 51);
        v120 = MEMORY[0x25305E300](v119, (a1[1] - *a1) >> 3);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v120, ")", 1);
        std::stringbuf::str();
        std::vector<std::string>::push_back[abi:nn200100](&v181, __p);
        if (v173 < 0)
        {
          operator delete(__p[0]);
        }

        v174[0] = v114;
        *(v174 + *(v114 - 3)) = v115;
        v175 = v116;
        v176 = MEMORY[0x277D82878] + 16;
        if (v179 < 0)
        {
          operator delete(v178);
        }

        v176 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v177);
        std::iostream::~basic_iostream();
        MEMORY[0x25305E3C0](v180);
        v107 = a1[3];
        v106 = a1[4];
      }

      v112 = (v113 + 1);
      v113 = v112;
    }

    while (v112 < (v106 - v107) >> 2);
  }

  v122 = a1[6];
  v121 = a1[7];
  if (v121 != v122)
  {
    v123 = 0;
    v124 = 0;
    v125 = *MEMORY[0x277D82818];
    v126 = *(MEMORY[0x277D82818] + 64);
    v127 = *(MEMORY[0x277D82818] + 72);
    do
    {
      if (v124)
      {
        v128 = *(v122 + 4 * (v124 - 1));
      }

      else
      {
        v128 = 0;
      }

      v129 = *(v122 + 4 * v123);
      if (v129 <= v128)
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
        v130 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "m_joiner_accumulated_face_valence has value ", 44);
        v131 = MEMORY[0x25305E2F0](v130, v129);
        v132 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v131, " at index ", 10);
        v133 = MEMORY[0x25305E2F0](v132, v124);
        v134 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v133, " and the previous value is ", 27);
        v135 = MEMORY[0x25305E2F0](v134, v128);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v135, ".  this is not strictly increasing.", 35);
        std::stringbuf::str();
        std::vector<std::string>::push_back[abi:nn200100](&v181, __p);
        if (v173 < 0)
        {
          operator delete(__p[0]);
        }

        v174[0] = v125;
        *(v174 + *(v125 - 3)) = v126;
        v175 = v127;
        v176 = MEMORY[0x277D82878] + 16;
        if (v179 < 0)
        {
          operator delete(v178);
        }

        v176 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v177);
        std::iostream::~basic_iostream();
        MEMORY[0x25305E3C0](v180);
        v122 = a1[6];
        v121 = a1[7];
      }

      v123 = (v124 + 1);
      v124 = v123;
    }

    while (v123 < (v121 - v122) >> 2);
  }

  v137 = a1[9];
  v136 = a1[10];
  if (v137 == v136)
  {
    v138 = 0;
  }

  else
  {
    v138 = *(v136 - 4);
  }

  v139 = MEMORY[0x277D82818];
  if (v138 != (a1[1] - *a1) >> 3)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
    v140 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "the last entry of m_joiner_accumulated_boundary_size is ", 56);
    v141 = MEMORY[0x25305E2F0](v140, v138);
    v142 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v141, " but the m_joiner_positions.size() is ", 38);
    MEMORY[0x25305E300](v142, (a1[1] - *a1) >> 3);
    std::stringbuf::str();
    std::vector<std::string>::push_back[abi:nn200100](&v181, __p);
    if (v173 < 0)
    {
      operator delete(__p[0]);
    }

    v174[0] = *v139;
    v143 = *(v139 + 72);
    *(v174 + *(v174[0] - 3)) = *(v139 + 64);
    v175 = v143;
    v176 = MEMORY[0x277D82878] + 16;
    if (v179 < 0)
    {
      operator delete(v178);
    }

    v176 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v177);
    std::iostream::~basic_iostream();
    MEMORY[0x25305E3C0](v180);
    v137 = a1[9];
    v136 = a1[10];
  }

  if (v136 != v137)
  {
    v144 = 0;
    v145 = 0;
    v146 = *MEMORY[0x277D82818];
    v147 = *(MEMORY[0x277D82818] + 64);
    v148 = *(MEMORY[0x277D82818] + 72);
    do
    {
      if (v145)
      {
        v149 = *(v137 + 4 * (v145 - 1));
      }

      else
      {
        v149 = 0;
      }

      v150 = *(v137 + 4 * v144);
      if (v150 <= v149)
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
        v151 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "m_joiner_accumulated_boundary_size has value ", 45);
        v152 = MEMORY[0x25305E2F0](v151, v150);
        v153 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v152, " at index ", 10);
        v154 = MEMORY[0x25305E2F0](v153, v145);
        v155 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v154, " and the previous value is ", 27);
        v156 = MEMORY[0x25305E2F0](v155, v149);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v156, ".  this is not strictly increasing.", 35);
        std::stringbuf::str();
        std::vector<std::string>::push_back[abi:nn200100](&v181, __p);
        if (v173 < 0)
        {
          operator delete(__p[0]);
        }

        v174[0] = v146;
        *(v174 + *(v146 - 3)) = v147;
        v175 = v148;
        v176 = MEMORY[0x277D82878] + 16;
        if (v179 < 0)
        {
          operator delete(v178);
        }

        v176 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v177);
        std::iostream::~basic_iostream();
        MEMORY[0x25305E3C0](v180);
        v137 = a1[9];
        v136 = a1[10];
      }

      v144 = (v145 + 1);
      v145 = v144;
    }

    while (v144 < (v136 - v137) >> 2);
  }

  if (v181 == v182)
  {
    *a2 = 0;
    a2[24] = 0;
  }

  else
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
    v157 = v181;
    v158 = v182;
    if (v181 != v182)
    {
      v159 = 1;
      v160 = MEMORY[0x277D82680];
      do
      {
        v161 = MEMORY[0x25305E2E0](&v175, v159);
        v162 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v161, ". ", 2);
        v163 = *(v157 + 23);
        if (v163 >= 0)
        {
          v164 = v157;
        }

        else
        {
          v164 = *v157;
        }

        if (v163 >= 0)
        {
          v165 = *(v157 + 23);
        }

        else
        {
          v165 = *(v157 + 8);
        }

        v166 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v162, v164, v165);
        std::ios_base::getloc((v166 + *(*v166 - 24)));
        v167 = std::locale::use_facet(__p, v160);
        (v167->__vftable[2].~facet_0)(v167, 10);
        std::locale::~locale(__p);
        std::ostream::put();
        std::ostream::flush();
        v159 = (v159 + 1);
        v157 += 24;
      }

      while (v157 != v158);
    }

    std::stringbuf::str();
    a2[24] = 1;
    v174[0] = *MEMORY[0x277D82818];
    v168 = *(MEMORY[0x277D82818] + 72);
    *(v174 + *(v174[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v175 = v168;
    v176 = MEMORY[0x277D82878] + 16;
    if (v179 < 0)
    {
      operator delete(v178);
    }

    v176 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v177);
    std::iostream::~basic_iostream();
    MEMORY[0x25305E3C0](v180);
  }

  v174[0] = &v181;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v174);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x277D82890] + 24;
  v3 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v4 = a1 + 16;
  v5 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v6 = a1 + 24;
  v7 = MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 24);
  v9 = *(MEMORY[0x277D82818] + 16);
  *a1 = v9;
  *(a1 + *(v9 - 24)) = v8;
  *(a1 + 8) = 0;
  v10 = (a1 + *(*a1 - 24));
  std::ios_base::init(v10, (a1 + 24));
  v10[1].__vftable = 0;
  v10[1].__fmtflags_ = -1;
  v11 = v7[5];
  v12 = v7[4];
  *(a1 + 16) = v12;
  *(v4 + *(v12 - 24)) = v11;
  v13 = v7[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v7[6];
  *a1 = v2;
  *(a1 + 128) = v3;
  v14 = MEMORY[0x277D82868] + 16;
  *(a1 + 16) = v5;
  *(a1 + 24) = v14;
  MEMORY[0x25305E380](a1 + 32);
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  std::stringbuf::__init_buf_ptrs[abi:nn200100](v6);
  return a1;
}

void std::vector<std::string>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

void geom::straight_skeleton_evaluator<float>::check_geometric_invariants(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v46[0] = a1;
  v46[1] = &v53;
  geom::straight_skeleton_evaluator<float>::for_each_wavefront_edge<geom::straight_skeleton_evaluator<float>::check_geometric_invariants(void)::{lambda(unsigned int,unsigned int)#1}>(a1, v46);
  v3 = *(a1 + 120);
  if (*(a1 + 128) != v3)
  {
    v4 = 0;
    v5 = 0;
    v43 = *MEMORY[0x277D82818];
    v41 = *(MEMORY[0x277D82818] + 72);
    v42 = *(MEMORY[0x277D82818] + 64);
    do
    {
      if (v3)
      {
        v6 = (v3 + 104 * v4);
        if (!v6[12].i32[0])
        {
          v7 = v6[4].i32[1];
          v8 = fabsf(v6[2].f32[0]);
          if ((v5 == v7) != v8 <= 0.000005)
          {
            std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v46);
            v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v47, "vertex ", 7);
            v10 = MEMORY[0x25305E2F0](v9, v5);
            v11 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, ": is self loop = ", 17);
            if (v5 == v7)
            {
              v12 = "YES";
            }

            else
            {
              v12 = "NO";
            }

            if (v5 == v7)
            {
              v13 = 3;
            }

            else
            {
              v13 = 2;
            }

            v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, v12, v13);
            v15 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, "; but is zero speed = ", 22);
            if (v8 > 0.000005)
            {
              v16 = "NO";
            }

            else
            {
              v16 = "YES";
            }

            if (v8 > 0.000005)
            {
              v17 = 2;
            }

            else
            {
              v17 = 3;
            }

            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, v16, v17);
            std::stringbuf::str();
            std::vector<std::string>::push_back[abi:nn200100](&v53, __p);
            if (v45 < 0)
            {
              operator delete(__p[0]);
            }

            v46[0] = v43;
            *(v46 + *(v43 - 3)) = v42;
            v47 = v41;
            v48 = MEMORY[0x277D82878] + 16;
            if (v51 < 0)
            {
              operator delete(v50);
            }

            v48 = MEMORY[0x277D82868] + 16;
            std::locale::~locale(v49);
            std::iostream::~basic_iostream();
            MEMORY[0x25305E3C0](v52);
          }

          if (v8 > 0.000005)
          {
            v18 = sqrtf(vaddv_f32(vmul_f32(v6[1], v6[1])));
            if (v18 != 1.0 && fabsf(v18 + -1.0) > 0.000005)
            {
              std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v46);
              v19 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v47, "vertex ", 7);
              v20 = MEMORY[0x25305E2F0](v19, v5);
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, ": has non-zero speed but direction is non-unit  ([", 50);
              v21 = v6[1];
              v22 = std::ostream::operator<<();
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, ", ", 2);
              v23 = v6[1].i32[1];
              v24 = std::ostream::operator<<();
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, "] has length ", 13);
              v25 = std::ostream::operator<<();
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v25, ")", 1);
              std::stringbuf::str();
              std::vector<std::string>::push_back[abi:nn200100](&v53, __p);
              if (v45 < 0)
              {
                operator delete(__p[0]);
              }

              v46[0] = v43;
              *(v46 + *(v43 - 3)) = v42;
              v47 = v41;
              v48 = MEMORY[0x277D82878] + 16;
              if (v51 < 0)
              {
                operator delete(v50);
              }

              v48 = MEMORY[0x277D82868] + 16;
              std::locale::~locale(v49);
              std::iostream::~basic_iostream();
              MEMORY[0x25305E3C0](v52);
            }
          }

          if (v5 != v7 && *&v6[8] == *&v6[9])
          {
            std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v46);
            v26 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v47, "vertex ", 7);
            v27 = MEMORY[0x25305E2F0](v26, v5);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v27, ": active vertex was not meshed (ancestors_in_joiner is empty)", 61);
            std::stringbuf::str();
            std::vector<std::string>::push_back[abi:nn200100](&v53, __p);
            if (v45 < 0)
            {
              operator delete(__p[0]);
            }

            v46[0] = v43;
            *(v46 + *(v43 - 3)) = v42;
            v47 = v41;
            v48 = MEMORY[0x277D82878] + 16;
            if (v51 < 0)
            {
              operator delete(v50);
            }

            v48 = MEMORY[0x277D82868] + 16;
            std::locale::~locale(v49);
            std::iostream::~basic_iostream();
            MEMORY[0x25305E3C0](v52);
          }
        }
      }

      v4 = (v5 + 1);
      v3 = *(a1 + 120);
      v5 = v4;
    }

    while (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 128) - v3) >> 3) > v4);
  }

  if (v53 == v54)
  {
    *a2 = 0;
    a2[24] = 0;
  }

  else
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v46);
    v28 = v53;
    v29 = v54;
    if (v53 != v54)
    {
      v30 = 1;
      v31 = MEMORY[0x277D82680];
      do
      {
        v32 = MEMORY[0x25305E2E0](&v47, v30);
        v33 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v32, ". ", 2);
        v34 = *(v28 + 23);
        if (v34 >= 0)
        {
          v35 = v28;
        }

        else
        {
          v35 = *v28;
        }

        if (v34 >= 0)
        {
          v36 = *(v28 + 23);
        }

        else
        {
          v36 = *(v28 + 8);
        }

        v37 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33, v35, v36);
        std::ios_base::getloc((v37 + *(*v37 - 24)));
        v38 = std::locale::use_facet(__p, v31);
        (v38->__vftable[2].~facet_0)(v38, 10);
        std::locale::~locale(__p);
        std::ostream::put();
        std::ostream::flush();
        v30 = (v30 + 1);
        v28 += 24;
      }

      while (v28 != v29);
    }

    std::stringbuf::str();
    a2[24] = 1;
    v46[0] = *MEMORY[0x277D82818];
    v39 = *(MEMORY[0x277D82818] + 72);
    *(v46 + *(v46[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v47 = v39;
    v48 = MEMORY[0x277D82878] + 16;
    if (v51 < 0)
    {
      operator delete(v50);
    }

    v48 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v49);
    std::iostream::~basic_iostream();
    MEMORY[0x25305E3C0](v52);
  }

  v46[0] = &v53;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v46);
}

uint64_t geom::straight_skeleton_evaluator<float>::for_each_wavefront_edge<geom::straight_skeleton_evaluator<float>::check_geometric_invariants(void)::{lambda(unsigned int,unsigned int)#1}>(uint64_t result, uint64_t a2)
{
  v3 = *(result + 120);
  v2 = *(result + 128);
  if (v2 != v3)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    do
    {
      if (v3)
      {
        v8 = v3 + 104 * v6;
        if (!*(v8 + 96))
        {
          v9 = *(v8 + 36);
          if (v7 != v9)
          {
            result = geom::straight_skeleton_evaluator<float>::check_geometric_invariants(void)const::{lambda(unsigned int,unsigned int)#1}::operator()(a2, v7, v9);
            v3 = *(v5 + 120);
            v2 = *(v5 + 128);
          }
        }
      }

      v6 = (v7 + 1);
      v7 = v6;
    }

    while (0x4EC4EC4EC4EC4EC5 * ((v2 - v3) >> 3) > v6);
  }

  return result;
}

uint64_t geom::intersect_adjacent_spokes<float>(float32x2_t *a1, float32x2_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2].f32[0];
  v6 = vmul_n_f32(v4, v5);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2].f32[0];
  v10 = vmul_n_f32(v8, v9);
  v11 = vmul_f32(v6, v6);
  v12 = vmul_f32(v10, v10);
  v13 = vadd_f32(vzip1_s32(v12, v11), vzip2_s32(v12, v11));
  v14 = vabs_f32(v13);
  v15 = vcge_f32(0x3400000034000000, v14);
  v16 = v15.i8[4];
  v17 = v15.i8[0];
  if (v15.i32[1] & v15.i32[0])
  {
    v18 = vsub_f32(v3, v7);
    v19 = sqrtf(vaddv_f32(vmul_f32(v18, v18)));
    v20 = 0;
    if (v19 <= 0.00001)
    {
      goto LABEL_41;
    }

    goto LABEL_19;
  }

  v21 = vsub_f32(v7, v3);
  v22 = v16 | v17;
  if (v16)
  {
    v23 = v13.f32[0];
  }

  else
  {
    v23 = v13.f32[1];
  }

  if (v16)
  {
    v24 = -1;
  }

  else
  {
    v24 = 0;
  }

  if (v22)
  {
    v25 = vbsl_s8(vdup_n_s32(v24), v10, v6);
    if (v16)
    {
      v26 = -1;
    }

    else
    {
      v26 = 0;
    }

    v13 = vneg_f32(v21);
    v27 = vbsl_s8(vdup_n_s32(v26), v13, v21);
    if ((((-v25.f32[1] * v27.f32[0]) + (v25.f32[0] * v27.f32[1])) * ((-v25.f32[1] * v27.f32[0]) + (v25.f32[0] * v27.f32[1]))) <= (v23 * 1.0e-10))
    {
      v28 = 0;
      v21 = vcge_f32(0x3400000034000000, v14);
      v29 = vmul_f32(v25, v27);
      v29.f32[0] = vaddv_f32(v29) / v23;
      v30 = vbic_s8(vdup_lane_s32(v29, 0), v21);
      goto LABEL_21;
    }

LABEL_19:
    v31 = 0;
    v32 = 0.0;
    return v31 | LODWORD(v32);
  }

  *v2.i32 = (-v6.f32[1] * v10.f32[0]) + (v6.f32[0] * v10.f32[1]);
  if (fabsf(*v2.i32 * *v2.i32) <= ((v13.f32[1] * v13.f32[0]) * 1.0e-10))
  {
    if (fabsf(((v21.f32[0] * v6.f32[1]) - (v21.f32[1] * v6.f32[0])) * ((v21.f32[0] * v6.f32[1]) - (v21.f32[1] * v6.f32[0]))) > ((vaddv_f32(vmul_f32(v21, v21)) * v13.f32[1]) * 1.0e-10))
    {
      goto LABEL_19;
    }

    v33 = vmul_f32(v21, v6);
    v34 = vmul_f32(v10, vneg_f32(v21));
    v21 = vzip1_s32(v34, v33);
    v30 = vdiv_f32(vadd_f32(v21, vzip2_s32(v34, v33)), v13);
    v28 = 1;
  }

  else
  {
    v28 = 0;
    v13 = vmla_n_f32(vmul_n_f32(vzip1_s32(v6, v10), -v21.f32[1]), vzip2_s32(v6, v10), v21.f32[0]);
    v30 = vdiv_f32(v13, vdup_lane_s32(v2, 0));
  }

LABEL_21:
  v31 = 0;
  v32 = 0.0;
  v36 = v30.f32[1] <= -0.000005 && v30.f32[1] != 0.0;
  v38 = v30.f32[0] <= -0.000005 && v30.f32[0] != 0.0;
  if (!v36 && !v38)
  {
    if (v28)
    {
      v39 = a1[3].f32[0];
      v40 = a2[3].f32[0];
      v21.f32[0] = fabsf(v5);
      v13.i32[0] = 916964780;
      v41 = vdup_lane_s32(vmvn_s8(vcge_f32(v13, v21)), 0);
      if (v39 >= v40)
      {
        v42 = a1[3].f32[0];
      }

      else
      {
        v42 = a2[3].f32[0];
      }

      v43 = vbsl_s8(v41, vmla_n_f32(v3, v4, v5 * (v42 - v39)), v3);
      v4.f32[0] = fabsf(v9);
      v44 = vsub_f32(v43, vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(v13, v4)), 0), vmla_n_f32(v7, v8, v9 * (v42 - v40)), v7));
      v32 = v42 + (sqrtf(vaddv_f32(vmul_f32(v44, v44))) / (v5 + v9));
      goto LABEL_48;
    }

    v20 = vbic_s8(v30, vcltz_f32(v30));
LABEL_41:
    if (fabsf(*&v20.i32[1]) <= 0.000005)
    {
      v32 = a1[3].f32[0];
    }

    else if (fabsf(*v20.i32) <= 0.000005)
    {
      v32 = a2[3].f32[0];
    }

    else
    {
      *v20.i32 = *v20.i32 + a2[3].f32[0];
      if ((*&v20.i32[1] + a1[3].f32[0]) >= *v20.i32)
      {
        v32 = *&v20.i32[1] + a1[3].f32[0];
      }

      else
      {
        v32 = *v20.i32;
      }
    }

LABEL_48:
    v31 = 0x100000000;
  }

  return v31 | LODWORD(v32);
}

uint64_t geom::straight_skeleton_evaluator<float>::for_each_wavefront_edge<geom::straight_skeleton_evaluator<float>::best_split_event_for_vertex(unsigned int)::{lambda(unsigned int,unsigned int)#1}>(uint64_t result, uint64_t a2, double a3, double a4)
{
  v5 = *(result + 120);
  v4 = *(result + 128);
  if (v4 != v5)
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      if (v5)
      {
        v10 = v5 + 104 * v8;
        if (!*(v10 + 96))
        {
          v11 = *(v10 + 36);
          if (v9 != v11)
          {
            result = geom::straight_skeleton_evaluator<float>::best_split_event_for_vertex::{lambda(unsigned int,unsigned int)#1}::operator()(a2, v9, v11, a3, a4);
            v5 = *(v7 + 120);
            v4 = *(v7 + 128);
          }
        }
      }

      v8 = ++v9;
    }

    while (0x4EC4EC4EC4EC4EC5 * ((v4 - v5) >> 3) > v9);
  }

  return result;
}

float geom::straight_skeleton_evaluator<float>::time_of_joiner_vertex(void *a1, unsigned int a2)
{
  v2 = a1[9];
  v3 = a1[10];
  if (v3 != v2)
  {
    v4 = (v3 - v2) >> 2;
    v3 = a1[9];
    do
    {
      v5 = v4 >> 1;
      v6 = &v3[4 * (v4 >> 1)];
      v8 = *v6;
      v7 = (v6 + 1);
      v4 += ~(v4 >> 1);
      if (v8 > a2)
      {
        v4 = v5;
      }

      else
      {
        v3 = v7;
      }
    }

    while (v4);
  }

  return *(a1[12] + ((v3 - v2) & 0x3FFFFFFFCLL));
}

void geom::straight_skeleton_evaluator<float>::for_each_wavefront_vertex<geom::straight_skeleton_evaluator<float>::add_joiner_patch_to_time(float)::{lambda(unsigned int)#1},geom::straight_skeleton_evaluator<float>::add_joiner_patch_to_time(float)::{lambda(void)#1}>(uint64_t a1, void **a2)
{
  memset(__p, 0, sizeof(__p));
  std::vector<BOOL>::resize(__p, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 128) - *(a1 + 120)) >> 3), 0);
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = __p[0];
  if (v6 == v5)
  {
LABEL_13:
    if (v7)
    {
      operator delete(v7);
    }

    return;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = *(v7 + (v8 >> 6));
    if ((v10 & (1 << v8)) == 0 && !*(v5 + 104 * v8 + 96))
    {
      break;
    }

    *(v7 + (v8 >> 6)) = v10 | (1 << v8);
LABEL_6:
    v8 = ++v9;
    if (0x4EC4EC4EC4EC4EC5 * ((v6 - v5) >> 3) <= v9)
    {
      goto LABEL_13;
    }
  }

  v11 = v9;
  v12 = v9 >> 6;
  v13 = 1 << v9;
  if (((1 << v9) & *(v7 + v12)) != 0)
  {
    goto LABEL_6;
  }

  v14 = v9;
  while (1)
  {
    v4 = geom::straight_skeleton_evaluator<float>::add_joiner_patch_to_time(float)::{lambda#1}::operator()(a2, v14, v4);
    v7 = __p[0];
    *(__p[0] + v12) |= v13;
    v5 = *(a1 + 120);
    v15 = v5 + 104 * v11;
    if (*(v15 + 96))
    {
      break;
    }

    v11 = *(v15 + 36);
    v12 = v11 >> 6;
    v13 = 1 << v11;
    v14 = *(v15 + 36);
    if (((1 << v11) & *(v7 + (v11 >> 6))) != 0)
    {
      v6 = *(a1 + 128);
      goto LABEL_6;
    }
  }

  v16 = std::__throw_bad_variant_access[abi:nn200100]();
  geom::straight_skeleton_evaluator<float>::for_each_wavefront_edge<geom::straight_skeleton_evaluator<float>::add_joiner_patch_to_time(float)::{lambda(unsigned int,unsigned int)#1}>(v16);
}

void geom::straight_skeleton_evaluator<float>::for_each_wavefront_edge<geom::straight_skeleton_evaluator<float>::add_joiner_patch_to_time(float)::{lambda(unsigned int,unsigned int)#1}>(uint64_t a1, void *a2)
{
  v3 = *(a1 + 120);
  v2 = *(a1 + 128);
  if (v2 != v3)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (v3)
      {
        v8 = v3 + 104 * v6;
        if (!*(v8 + 96))
        {
          v9 = *(v8 + 36);
          if (v7 != v9)
          {
            geom::straight_skeleton_evaluator<float>::add_joiner_patch_to_time(float)::{lambda(unsigned int,unsigned int)#1}::operator()(a2, v7, v9);
            v3 = *(a1 + 120);
            v2 = *(a1 + 128);
          }
        }
      }

      v6 = ++v7;
    }

    while (0x4EC4EC4EC4EC4EC5 * ((v2 - v3) >> 3) > v7);
  }
}

uint64_t geom::straight_skeleton_evaluator<double>::straight_skeleton_evaluator(uint64_t a1, float64x2_t *a2, unint64_t a3, unsigned int *a4, uint64_t a5)
{
  v78 = *MEMORY[0x277D85DE8];
  *(a1 + 96) = 0u;
  v55 = (a1 + 96);
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 144) = 0u;
  std::vector<std::optional<unsigned int>>::resize((a1 + 144), a3);
  v56 = a2;
  if (a3)
  {
    v10 = vdupq_n_s64(0x7FF0000000000000uLL);
    v11 = vdupq_n_s64(0xFFF0000000000000);
    v12 = 16 * a3;
    do
    {
      v13 = *a2++;
      v10 = vminnmq_f64(v13, v10);
      v11 = vmaxnmq_f64(v13, v11);
      v12 -= 16;
    }

    while (v12);
  }

  else
  {
    v11 = vdupq_n_s64(0xFFF0000000000000);
    v10 = vdupq_n_s64(0x7FF0000000000000uLL);
  }

  __asm { FMOV            V3.2D, #0.5 }

  *(a1 + 208) = vmulq_f64(vaddq_f64(v10, v11), _Q3);
  v61 = vsubq_f64(v11, v10);
  v19 = *(&v61 & 0xFFFFFFFFFFFFFFF7 | (8 * (*&vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v61, 1), v61)) & 1)));
  if (fabs(v19) <= 1.0e-10)
  {
    v19 = 1.0;
  }

  *(a1 + 224) = v19;
  if (a5)
  {
    v20 = 0;
    v57 = &a4[a5];
    do
    {
      v58 = a4;
      v59 = *a4;
      if (v59 != v20)
      {
        v21 = 0;
        v22 = &v56[v20];
        v23 = v59 - v20;
        v24 = 1;
        do
        {
          v25 = v22[v21];
          v26 = (v23 - 1 + v21) % v23;
          v21 = v24;
          v27 = v24 % v23;
          v28 = (a1 + 224);
          v29 = vld1q_dup_f64(v28);
          geom::spoke<double>::spoke(&v70, vdivq_f64(vsubq_f64(v25, *(a1 + 208)), v29), vdivq_f64(vsubq_f64(v22[v26], *(a1 + 208)), v29), vdivq_f64(vsubq_f64(v22[v27], *(a1 + 208)), v29), 0.0);
          *v74 = v20 + v26;
          *&v74[4] = v20 + v27;
          v30 = v20 + v24 - 1;
          *&v74[8] = v30;
          v74[12] = 0;
          v74[16] = 0;
          v74[20] = 0;
          v74[24] = 0;
          v63.n128_u32[0] = v30;
          std::vector<unsigned int>::vector[abi:nn200100](&v75, &v63, 1uLL);
          LOBYTE(v77) = 0;
          BYTE4(v77) = 0;
          v31 = *(a1 + 144) + 8 * v30;
          *v31 = v30;
          *(v31 + 4) = 1;
          v33 = *(a1 + 8);
          v32 = *(a1 + 16);
          if (v33 >= v32)
          {
            v35 = (v33 - *a1) >> 4;
            if ((v35 + 1) >> 60)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v36 = v32 - *a1;
            v37 = v36 >> 3;
            if (v36 >> 3 <= (v35 + 1))
            {
              v37 = v35 + 1;
            }

            if (v36 >= 0x7FFFFFFFFFFFFFF0)
            {
              v38 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v38 = v37;
            }

            if (v38)
            {
              _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v38);
            }

            *(16 * v35) = v70;
            v34 = 16 * v35 + 16;
            v39 = *(a1 + 8) - *a1;
            v40 = (16 * v35 - v39);
            memcpy(v40, *a1, v39);
            v41 = *a1;
            *a1 = v40;
            *(a1 + 8) = v34;
            *(a1 + 16) = 0;
            if (v41)
            {
              operator delete(v41);
            }
          }

          else
          {
            *v33 = v70;
            v34 = &v33[1];
          }

          *(a1 + 8) = v34;
          v65 = v72;
          v66 = v73;
          v67[0] = *v74;
          *(v67 + 9) = *&v74[9];
          v63 = v70;
          v64 = v71;
          memset(v68, 0, 24);
          if (v76 != v75)
          {
            std::vector<float>::__vallocate[abi:nn200100](v68, (v76 - v75) >> 2);
          }

          v68[3] = v77;
          v69 = 0;
          std::vector<geom::straight_skeleton_evaluator<double>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<double>::vertex_state>>::push_back[abi:nn200100](a1 + 120, &v63);
          if (v69 != -1)
          {
            (*(&off_286292FA8 + v69))(__p, &v63);
          }

          if (v75)
          {
            v76 = v75;
            operator delete(v75);
          }

          v24 = v21 + 1;
        }

        while (v23 > v21);
      }

      a4 = v58 + 1;
      v20 = v59;
    }

    while (v58 + 1 != v57);
  }

  v63.n128_u32[0] = (*(a1 + 8) - *a1) >> 4;
  std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 72), &v63);
  v63.n128_u64[0] = 0;
  std::vector<double>::push_back[abi:nn200100](v55, &v63);
  v42 = 0uLL;
  memset(__p, 0, sizeof(__p));
  if (*(a1 + 128) == *(a1 + 120))
  {
    v47 = 0;
  }

  else
  {
    LODWORD(v43) = 0;
    do
    {
      geom::straight_skeleton_evaluator<double>::edge_event_for_edge(a1, v43, &v63);
      if (v65 == 1)
      {
        v70 = v63;
        v71 = v64;
        LODWORD(v72) = 0;
        std::vector<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event>>::push_back[abi:nn200100](__p, &v70);
      }

      geom::straight_skeleton_evaluator<double>::best_split_event_for_vertex(a1, v43, &v63, v44, v45, v46);
      if (v65 == 1)
      {
        v70 = v63;
        v71 = v64;
        LODWORD(v72) = 1;
        std::vector<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event>>::push_back[abi:nn200100](__p, &v70);
      }

      v43 = (v43 + 1);
    }

    while (0x8E38E38E38E38E39 * ((*(a1 + 128) - *(a1 + 120)) >> 4) > v43);
    v47 = __p[0];
    v42 = *&__p[1];
  }

  memset(__p, 0, sizeof(__p));
  v60 = v42;
  if ((v42 - v47) >= 49)
  {
    v48 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v47) >> 4);
    v49 = (v48 - 2) >> 1;
    v50 = v49 + 1;
    v51 = &v47[48 * v49];
    do
    {
      std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<double>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event> *>>(v47, &v63, v48, v51);
      v51 -= 48;
      --v50;
    }

    while (v50);
  }

  v52 = *(a1 + 168);
  if (v52)
  {
    *(a1 + 176) = v52;
    operator delete(v52);
  }

  *(a1 + 168) = v47;
  *(a1 + 176) = v60;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v53 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t std::vector<geom::straight_skeleton_evaluator<double>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<double>::vertex_state>>::push_back[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<geom::straight_skeleton_evaluator<double>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<double>::vertex_state>>::__emplace_back_slow_path<geom::straight_skeleton_evaluator<double>::vertex_state>(a1, a2);
  }

  else
  {
    *v3 = 0;
    *(v3 + 128) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<double>::active_vertex,geom::straight_skeleton_evaluator<double>::inactive_vertex>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<double>::active_vertex,geom::straight_skeleton_evaluator<double>::inactive_vertex>,(std::__variant_detail::_Trait)1>>(v3, a2);
    result = v3 + 144;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t geom::straight_skeleton_evaluator<double>::vertex_state::vertex_state(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 32) = v5;
  std::vector<float>::vector[abi:nn200100]((a1 + 96), (a2 + 96));
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = 0;
  return a1;
}

uint64_t geom::straight_skeleton_evaluator<double>::edge_event_for_edge@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(result + 120);
  v5 = v4 + 144 * a2;
  if (!*(v5 + 128))
  {
    v7 = *(v5 + 68);
    if (v7 == a2)
    {
      goto LABEL_7;
    }

    v8 = v4 + 144 * v7;
    if (!*(v8 + 128))
    {
      *&result = COERCE_DOUBLE(geom::intersect_adjacent_spokes<double>(v5, v8));
      if (v9)
      {
        v10 = *(v5 + 32);
        if (fabs(v10) <= 1.0e-10)
        {
          v11 = *v5;
        }

        else
        {
          v11 = vmlaq_n_f64(*v5, *(v5 + 16), v10 * (*&result - *(v5 + 48)));
        }

        v13 = *(v8 + 32);
        if (fabs(v13) <= 1.0e-10)
        {
          v14 = *v8;
        }

        else
        {
          v14 = vmlaq_n_f64(*v8, *(v8 + 16), v13 * (*&result - *(v8 + 48)));
        }

        v15 = vaddq_f64(v11, v14);
        __asm { FMOV            V1.2D, #0.5 }

        *a3 = *&result;
        *(a3 + 8) = a2;
        *(a3 + 12) = v7;
        *(a3 + 16) = vmulq_f64(v15, _Q1);
        v12 = 1;
        goto LABEL_13;
      }

LABEL_7:
      v12 = 0;
      *a3 = 0;
LABEL_13:
      *(a3 + 32) = v12;
      return result;
    }
  }

  v21 = std::__throw_bad_variant_access[abi:nn200100]();
  *&result = COERCE_DOUBLE(std::vector<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event>>::push_back[abi:nn200100](v21));
  return result;
}

void std::vector<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event>>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event>>>(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    v15 = a2[2];
    *(v13 + 16) = a2[1];
    *(v13 + 32) = v15;
    *v13 = v14;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = (v4 + 3);
  }

  *(a1 + 8) = v8;
}

_DWORD **geom::straight_skeleton_evaluator<double>::best_split_event_for_vertex@<X0>(_DWORD **result@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, float64x2_t a6@<Q2>)
{
  v10 = a2;
  v6 = &result[15][36 * a2];
  if (*(v6 + 128))
  {
    v8 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom::straight_skeleton_evaluator<double>::straight_skeleton_evaluator(v8);
  }

  else
  {
    v7 = *(v6 + 40);
    *a3 = 0;
    *(a3 + 32) = 0;
    if (v7 == 1)
    {
      v9[0] = result;
      v9[1] = &v10;
      v9[2] = a3;
      return geom::straight_skeleton_evaluator<double>::for_each_wavefront_edge<geom::straight_skeleton_evaluator<double>::best_split_event_for_vertex::{lambda(unsigned int,unsigned int)#1}>(result, v9, a4, a5, a6);
    }
  }

  return result;
}

void geom::straight_skeleton_evaluator<double>::advance_to_inset_distance(uint64_t a1, double a2)
{
  v3 = *(a1 + 224);
  v4 = *(a1 + 168);
  v5 = *(a1 + 176);
  v6 = a2 / v3;
  if (v4 == v5)
  {
    v8 = *(a1 + 120);
    v7 = *(a1 + 128);
    if (v7 == v8)
    {
      goto LABEL_18;
    }

    v9 = 0;
    v10 = 0;
    do
    {
      v11 = v8 + 144 * v9;
      if (!*(v11 + 128) && *(v11 + 41) == 1)
      {
        geom::straight_skeleton_evaluator<double>::remove_vertex_from_face_neighbors(a1, v10, v11);
        geom::straight_skeleton_evaluator<double>::vertex_state::make_inactive((*(a1 + 120) + 144 * v9));
        v8 = *(a1 + 120);
        v7 = *(a1 + 128);
      }

      v9 = (v10 + 1);
      v10 = v9;
    }

    while (0x8E38E38E38E38E39 * ((v7 - v8) >> 4) > v9);
    v4 = *(a1 + 168);
    v5 = *(a1 + 176);
  }

  if (v4 != v5)
  {
    do
    {
      geom::straight_skeleton_evaluator<double>::event_time(v4);
      if (v12 > v6)
      {
        break;
      }

      v14 = *(a1 + 120);
      v13 = *(a1 + 128);
      if (v13 != v14)
      {
        v15 = 0;
        v16 = 0;
        do
        {
          v17 = v14 + 144 * v15;
          if (!*(v17 + 128) && *(v17 + 41) == 1)
          {
            geom::straight_skeleton_evaluator<double>::remove_vertex_from_face_neighbors(a1, v16, v17);
            geom::straight_skeleton_evaluator<double>::vertex_state::make_inactive((*(a1 + 120) + 144 * v15));
            v14 = *(a1 + 120);
            v13 = *(a1 + 128);
          }

          v15 = (v16 + 1);
          v16 = v15;
        }

        while (0x8E38E38E38E38E39 * ((v13 - v14) >> 4) > v15);
      }

      geom::straight_skeleton_evaluator<double>::process_next_event(a1);
      v4 = *(a1 + 168);
    }

    while (v4 != *(a1 + 176));
  }

LABEL_18:

  geom::straight_skeleton_evaluator<double>::add_joiner_patch_to_time(a1, v6);
}

uint64_t geom::straight_skeleton_evaluator<double>::event_time(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 == -1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom::straight_skeleton_evaluator<double>::process_next_event(v3);
  }

  else
  {
    v5 = &v4;
    return (*(&off_286292FB8 + v1))(&v5, a1);
  }
}

uint64_t geom::straight_skeleton_evaluator<double>::process_next_event(void *a1)
{
  geom::straight_skeleton_evaluator<double>::event_time(a1[21]);
  v3 = v2;
  v23 = 0u;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  memset(v20, 0, sizeof(v20));
  geom::straight_skeleton_evaluator<double>::pop_coincident_events(a1, v22, v20, v2);
  v4 = 0;
  if ((v21.i64[1] + v23.i64[1]) << 6 <= 0x100uLL)
  {
    v5 = 256;
  }

  else
  {
    v5 = (v21.i64[1] + v23.i64[1]) << 6;
  }

  __p = 0;
  v18 = 0;
  v19 = 0;
  v6 = v5 | 1;
  while (v23.i64[1] | v21.i64[1])
  {
    if (v23.i64[1])
    {
      if (v4 + 1 > v6)
      {
        v7 = v4 + 1;
      }

      else
      {
        v7 = v5 | 1;
      }

      while (++v4 <= v5)
      {
        v8 = geom::straight_skeleton_evaluator<double>::apply_edge_event(a1, *(*(&v22[0] + 1) + ((v23.i64[0] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v23.i8[0] & 0x7F));
        if ((v8 & 0x100000000) != 0)
        {
          LODWORD(v15) = v8;
          v16 = 0;
          std::vector<std::variant<geom::straight_skeleton_evaluator<float>::edge_event_result,geom::straight_skeleton_evaluator<float>::split_event_result>>::push_back[abi:nn200100](&__p, &v15);
        }

        v9 = vaddq_s64(v23, xmmword_2500D1400);
        v23 = v9;
        if (v9.i64[0] >= 0x100uLL)
        {
          operator delete(**(&v22[0] + 1));
          *(&v22[0] + 1) += 8;
          v23.i64[0] -= 128;
          v10 = v23.i64[1];
        }

        else
        {
          v10 = v9.i64[1];
        }

        if (!v10)
        {
          goto LABEL_31;
        }
      }

LABEL_30:
      v4 = v7;
      goto LABEL_31;
    }

    if (v21.i64[1])
    {
      if (v4 + 1 > v6)
      {
        v7 = v4 + 1;
      }

      else
      {
        v7 = v5 | 1;
      }

      while (++v4 <= v5)
      {
        v11 = geom::straight_skeleton_evaluator<double>::apply_split_event(a1, *(*(&v20[0] + 1) + ((v21.i64[0] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v21.i8[0] & 0x7F));
        if (v12)
        {
          v15 = v11;
          v16 = 1;
          std::vector<std::variant<geom::straight_skeleton_evaluator<float>::edge_event_result,geom::straight_skeleton_evaluator<float>::split_event_result>>::push_back[abi:nn200100](&__p, &v15);
        }

        v13 = vaddq_s64(v21, xmmword_2500D1400);
        v21 = v13;
        if (v13.i64[0] >= 0x100uLL)
        {
          operator delete(**(&v20[0] + 1));
          *(&v20[0] + 1) += 8;
          v21.i64[0] -= 128;
          if (!v21.i64[1])
          {
            goto LABEL_31;
          }
        }

        else if (!v13.i64[1])
        {
          goto LABEL_31;
        }
      }

      goto LABEL_30;
    }

LABEL_31:
    geom::straight_skeleton_evaluator<double>::pop_coincident_events(a1, v22, v20, v3);
    if (v4 > v5)
    {
      break;
    }
  }

  geom::straight_skeleton_evaluator<double>::add_joiner_mesh_faces_for_events(a1, __p, 0xAAAAAAAAAAAAAAABLL * ((v18 - __p) >> 2), v3);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  std::deque<geom::straight_skeleton_evaluator<double>::split_event,std::allocator<geom::straight_skeleton_evaluator<double>::split_event>>::~deque[abi:nn200100](v20);
  return std::deque<geom::straight_skeleton_evaluator<double>::split_event,std::allocator<geom::straight_skeleton_evaluator<double>::split_event>>::~deque[abi:nn200100](v22);
}

void geom::straight_skeleton_evaluator<double>::add_joiner_patch_to_time(uint64_t a1, double a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v21 = a2;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  geom::hash_brown<unsigned int,unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>>::init(&v22, 1uLL);
  v18 = a1;
  v19 = &v21;
  v20 = &v22;
  geom::straight_skeleton_evaluator<double>::for_each_wavefront_vertex<geom::straight_skeleton_evaluator<double>::add_joiner_patch_to_time(double)::{lambda#1},geom::straight_skeleton_evaluator<double>::add_joiner_patch_to_time(double)::{lambda(void)#1}>(a1, &v18);
  v3 = *(a1 + 8) - *a1;
  v4 = *(a1 + 80);
  if (*(v4 - 4) < (v3 >> 4))
  {
    v5 = *(*(a1 + 104) - 8);
    if (v21 == v5 || v5 + 1.0e-10 > v21)
    {
      *(v4 - 4) = v3 >> 4;
    }

    else
    {
      std::vector<double>::push_back[abi:nn200100]((a1 + 96), &v21);
      LODWORD(v18) = (*(a1 + 8) - *a1) >> 4;
      std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 72), &v18);
    }
  }

  v18 = a1;
  v19 = &v22;
  geom::straight_skeleton_evaluator<double>::for_each_wavefront_edge<geom::straight_skeleton_evaluator<double>::add_joiner_patch_to_time(double)::{lambda(unsigned int,unsigned int)#1}>(a1, &v18);
  v18 = &v22;
  if (v23 >= 0x10)
  {
    v7 = 0;
    v8 = v22;
    v9 = v23 >> 4;
    while (1)
    {
      v10 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v8), xmmword_2500C4D40)))), 0x3830282018100800).u16[0];
      v19 = (v10 ^ 0xFFFFLL);
      if (v10 != 0xFFFFLL)
      {
        break;
      }

      v7 -= 16;
      ++v8;
      if (!--v9)
      {
        goto LABEL_16;
      }
    }

    v11 = __clz(__rbit64(v10 ^ 0xFFFFLL));
    v12 = (v11 - v7);
    v20 = (v11 - v7);
    if (v11 + 1 != v7)
    {
      do
      {
        v13 = (*(v18 + 1) + 8 * v12);
        v14 = *v13;
        __src = v13[1];
        v15 = *(a1 + 120) + 144 * v14;
        if (*(v15 + 128))
        {
          std::__throw_bad_variant_access[abi:nn200100]();
        }

        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int const*,unsigned int const*>((v15 + 96), &__src, &v18, 1uLL);
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE19hash_brown_iteratorIRNS2_4pairIKSP_S4_EEEppEv(&v18);
        v12 = v20;
      }

      while (v20 != -1);
    }
  }

LABEL_16:
  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6deinitEv(&v22);
  v16 = *MEMORY[0x277D85DE8];
}

void geom::straight_skeleton_evaluator<double>::pop_coincident_events(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 168);
  if (v4 != *(a1 + 176))
  {
    v9 = a4 + 1.0e-10;
    do
    {
      geom::straight_skeleton_evaluator<double>::event_time(v4);
      if (v10 != a4 && v9 < v10)
      {
        break;
      }

      v12 = *(a1 + 168);
      v13 = *(v12 + 32);
      if (v13 == 1)
      {
        std::deque<geom::straight_skeleton_evaluator<double>::edge_event,std::allocator<geom::straight_skeleton_evaluator<double>::edge_event>>::push_back(a3, v12);
      }

      else
      {
        if (v13)
        {
          std::__throw_bad_variant_access[abi:nn200100]();
        }

        std::deque<geom::straight_skeleton_evaluator<double>::edge_event,std::allocator<geom::straight_skeleton_evaluator<double>::edge_event>>::push_back(a2, v12);
      }

      v4 = *(a1 + 168);
      v14 = *(a1 + 176);
      if (v14 - v4 >= 49)
      {
        v15 = v4[1];
        v24 = *v4;
        v25 = v15;
        v26 = v4[2];
        v16 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<double>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event> *>>(v4, &v23, 0xAAAAAAAAAAAAAAABLL * ((v14 - v4) >> 4));
        v17 = (v14 - 48);
        if ((v14 - 48) == v16)
        {
          v21 = v25;
          *v16 = v24;
          v16[1] = v21;
          v16[2] = v26;
        }

        else
        {
          v18 = *v17;
          v19 = *(v14 - 16);
          v16[1] = *(v14 - 32);
          v16[2] = v19;
          *v16 = v18;
          v20 = v25;
          *v17 = v24;
          *(v14 - 32) = v20;
          *(v14 - 16) = v26;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<double>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event> *>>(v4, (v16 + 3), &v23, 0xAAAAAAAAAAAAAAABLL * (v16 + 3 - v4));
        }

        v4 = *(a1 + 168);
        v14 = *(a1 + 176);
      }

      *(a1 + 176) = v14 - 48;
    }

    while (v4 != (v14 - 48));
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t geom::straight_skeleton_evaluator<double>::apply_edge_event(uint64_t a1, uint64_t a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 120);
  v2 = *(a1 + 120);
  v4 = v2 + 144 * *(a2 + 8);
  if (*(v4 + 128) || *(v2 + 144 * *(a2 + 12) + 128))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
LABEL_4:
    v9 = *MEMORY[0x277D85DE8];
    return v8 | v7 | v6;
  }

  v12 = *(v4 + 16);
  v79[0] = *v4;
  v79[1] = v12;
  v13 = *(v4 + 32);
  v14 = *(v4 + 48);
  v15 = *(v4 + 64);
  *(v80 + 9) = *(v4 + 73);
  v79[3] = v14;
  v80[0] = v15;
  v79[2] = v13;
  std::vector<float>::vector[abi:nn200100](&v81, (v4 + 96));
  v83 = *(v4 + 120);
  v16 = *v3 + 144 * *(a2 + 12);
  if (!*(v16 + 128))
  {
    v17 = *(v16 + 16);
    v74[0] = *v16;
    v74[1] = v17;
    v18 = *(v16 + 32);
    v19 = *(v16 + 48);
    v20 = *(v16 + 64);
    *(v75 + 9) = *(v16 + 73);
    v74[3] = v19;
    v75[0] = v20;
    v74[2] = v18;
    std::vector<float>::vector[abi:nn200100](&__p, (v16 + 96));
    v78 = *(v16 + 120);
    v21 = DWORD1(v80[0]);
    v22 = DWORD1(v75[0]);
    v23 = *(a2 + 8);
    v24 = *(a2 + 12);
    if (DWORD1(v80[0]) != v24 && DWORD1(v75[0]) != v23)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
LABEL_44:
      if (__p)
      {
        v77 = __p;
        operator delete(__p);
      }

      if (v81)
      {
        v82 = v81;
        operator delete(v81);
      }

      goto LABEL_4;
    }

    v25 = v80;
    if (DWORD1(v80[0]) != v24)
    {
      v25 = v75;
    }

    v26 = *v25;
    if (DWORD1(v80[0]) == v24)
    {
      v27 = DWORD1(v75[0]);
    }

    else
    {
      v27 = DWORD1(v80[0]);
    }

    v50 = v27;
    v51 = v26;
    geom::straight_skeleton_evaluator<double>::vertex_state::make_inactive((*(a1 + 120) + 144 * v23));
    geom::straight_skeleton_evaluator<double>::vertex_state::make_inactive((*(a1 + 120) + 144 * *(a2 + 12)));
    v28 = (*(a1 + 128) - *(a1 + 120)) >> 4;
    geom::straight_skeleton_evaluator<double>::remove_vertex_from_face_neighbors(a1, *(a2 + 8), v79);
    geom::straight_skeleton_evaluator<double>::remove_vertex_from_face_neighbors(a1, *(a2 + 12), v74);
    __dst[0] = 0;
    __dst[1] = 0;
    v53 = 0;
    if (v82 != v81)
    {
      std::vector<float>::__vallocate[abi:nn200100](__dst, (v82 - v81) >> 2);
    }

    v29 = 954437177 * v28;
    v30 = __p;
    v31 = v77;
    while (v30 != v31)
    {
      std::vector<unsigned int>::push_back[abi:nn200100](__dst, v30++);
    }

    v32 = v74;
    if (BYTE4(v83))
    {
      v32 = v79;
    }

    v33 = *(v32 + 30) | (*(v32 + 124) << 32);
    if (v21 == v24 && v22 == v23)
    {
      v34 = *(a2 + 16);
      v35 = *a2;
      v59 = 0uLL;
      v60 = 0;
      v36 = v53;
      v37 = *__dst;
      __dst[1] = 0;
      v53 = 0;
      __dst[0] = 0;
      v58 = v34;
      v61 = 256;
      v62 = v35;
      v63 = v29;
      v64 = v29;
      v65 = -1;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = v37;
      v71 = v36;
      v72 = v33 & 0xFFFFFFFFFFLL;
      v73 = 0;
      std::vector<geom::straight_skeleton_evaluator<double>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<double>::vertex_state>>::push_back[abi:nn200100](v3, &v58);
      if (v73 != -1)
      {
        (*(&off_286292FA8 + v73))(&v55, &v58);
      }

LABEL_41:
      v8 = v29 & 0xFFFFFF00;
      if (__dst[0])
      {
        __dst[1] = __dst[0];
        operator delete(__dst[0]);
      }

      v7 = v29;
      v6 = 0x100000000;
      goto LABEL_44;
    }

    geom::straight_skeleton_evaluator<double>::create_vertex_and_update_neighbors(a1, v51, v50, *(&v75[1] + 4), *(v75 + 12), __dst, v33 & 0xFFFFFFFFFFLL, DWORD2(v75[0]), *a2, *(a2 + 16));
    if (v51 != v50)
    {
LABEL_35:
      geom::straight_skeleton_evaluator<double>::edge_event_for_edge(a1, v29, &v58);
      if (v60 == 1)
      {
        v55 = v58;
        v56 = v59;
        v57 = 0;
        std::vector<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event>>::push_back[abi:nn200100](a1 + 168, &v55);
        std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<double>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event> *>>(*(a1 + 168), *(a1 + 176), &v54, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 4));
      }

      geom::straight_skeleton_evaluator<double>::edge_event_for_edge(a1, v51, &v58);
      if (v60 == 1)
      {
        v55 = v58;
        v56 = v59;
        v57 = 0;
        std::vector<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event>>::push_back[abi:nn200100](a1 + 168, &v55);
        std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<double>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event> *>>(*(a1 + 168), *(a1 + 176), &v54, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 4));
      }

      geom::straight_skeleton_evaluator<double>::best_split_event_for_vertex(a1, v29, &v58, v46, v47, v48);
      if (v60 == 1)
      {
        v55 = v58;
        v56 = v59;
        v57 = v60;
        std::vector<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event>>::push_back[abi:nn200100](a1 + 168, &v55);
        std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<double>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event> *>>(*(a1 + 168), *(a1 + 176), &v54, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 4));
      }

      goto LABEL_41;
    }

    v38 = *v3 + 144 * v51;
    if (!*(v38 + 128))
    {
      v39 = *a2;
      v40 = *(v38 + 32);
      v41 = fabs(v40) <= 1.0e-10 ? *v38 : vmlaq_n_f64(*v38, *(v38 + 16), v40 * (v39 - *(v38 + 48)));
      *v38 = v41;
      *(v38 + 48) = v39;
      *(v38 + 32) = 0;
      *(v38 + 40) = 256;
      v42 = *v3 + 144 * v29;
      if (!*(v42 + 128))
      {
        v43 = *a2;
        v44 = *(v42 + 32);
        if (fabs(v44) <= 1.0e-10)
        {
          v45 = *v42;
        }

        else
        {
          v45 = vmlaq_n_f64(*v42, *(v42 + 16), v44 * (v43 - *(v42 + 48)));
        }

        *v42 = v45;
        *(v42 + 48) = v43;
        *(v42 + 32) = 0;
        *(v42 + 40) = 256;
        goto LABEL_35;
      }
    }
  }

  v49 = std::__throw_bad_variant_access[abi:nn200100]();
  return geom::straight_skeleton_evaluator<double>::apply_split_event(v49);
}

uint64_t geom::straight_skeleton_evaluator<double>::apply_split_event(void *a1, uint64_t a2)
{
  __p[5] = *MEMORY[0x277D85DE8];
  v2 = a1[15] + 144 * *(a2 + 12);
  if (*(v2 + 128))
  {
    result = 0;
LABEL_12:
    v23 = *MEMORY[0x277D85DE8];
    return result;
  }

  v6 = *(v2 + 16);
  v62[0] = *v2;
  v62[1] = v6;
  v7 = *(v2 + 32);
  v8 = *(v2 + 48);
  v9 = *(v2 + 64);
  *(v63 + 9) = *(v2 + 73);
  v62[3] = v8;
  v63[0] = v9;
  v62[2] = v7;
  std::vector<float>::vector[abi:nn200100](__p, (v2 + 96));
  __p[3] = *(v2 + 120);
  LOBYTE(v52) = 0;
  v54 = 0;
  v59[0] = a1;
  v59[1] = v62;
  *&v60 = &v52;
  geom::straight_skeleton_evaluator<double>::for_each_wavefront_edge_on_face<geom::straight_skeleton_evaluator<double>::apply_split_event(geom::straight_skeleton_evaluator<double>::split_event const&)::{lambda(unsigned int,unsigned int)#1}>(a1, v59, *(a2 + 8), v10, v11, v12);
  if (v54 != 1)
  {
    goto LABEL_8;
  }

  v13 = v52;
  v14 = a1[15];
  v15 = v14 + 144 * v52;
  if (!*(v15 + 128))
  {
    v16 = v53;
    v17 = v14 + 144 * v53;
    if (!*(v17 + 128))
    {
      v18 = v63[0];
      v19 = *(a2 + 12);
      if (LODWORD(v63[0]) == v19 || (v20 = DWORD1(v63[0]), DWORD1(v63[0]) == v19))
      {
LABEL_8:
        v21 = 0;
        v22 = 0;
LABEL_9:
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        result = v22 | v21;
        goto LABEL_12;
      }

      geom::straight_skeleton_evaluator<double>::add_triangle_fan_for_active_vertex(a1, v19, *a2);
      v25 = v24;
      geom::straight_skeleton_evaluator<float>::add_joiner_mesh_triangle(a1, *(*(v15 + 104) - 4), **(v17 + 96), v24);
      v26 = a1[15];
      v27 = v26 + 144 * v13;
      if (!*(v27 + 128))
      {
        v28 = *(v27 + 72);
        v51 = DWORD2(v63[0]);
        v29 = *(v27 + 76);
        v50 = *(&v63[1] + 4);
        v30 = *(v63 + 12);
        geom::straight_skeleton_evaluator<double>::vertex_state::make_inactive((v26 + 144 * *(a2 + 12)));
        LODWORD(v56) = v25;
        std::vector<unsigned int>::vector[abi:nn200100](v59, &v56, 1uLL);
        vertex_and_update_neighbors = geom::straight_skeleton_evaluator<double>::create_vertex_and_update_neighbors(a1, v18, v16, v13 | 0x100000000, v29, v59, 0, v28, *a2, *(a2 + 16));
        if (v59[0])
        {
          v59[1] = v59[0];
          operator delete(v59[0]);
        }

        LODWORD(v56) = v25;
        std::vector<unsigned int>::vector[abi:nn200100](v59, &v56, 1uLL);
        v32 = geom::straight_skeleton_evaluator<double>::create_vertex_and_update_neighbors(a1, v13, v20, v50, v30, v59, 0, v51, *a2, *(a2 + 16));
        if (v59[0])
        {
          v59[1] = v59[0];
          operator delete(v59[0]);
        }

        if (v18 == v16)
        {
          v33 = a1[15] + 144 * v16;
          if (*(v33 + 128))
          {
            goto LABEL_47;
          }

          v34 = *a2;
          v35 = *(v33 + 32);
          v36 = fabs(v35) <= 1.0e-10 ? *v33 : vmlaq_n_f64(*v33, *(v33 + 16), v35 * (v34 - *(v33 + 48)));
          *v33 = v36;
          *(v33 + 48) = v34;
          *(v33 + 32) = 0;
          *(v33 + 40) = 256;
          v37 = a1[15] + 144 * vertex_and_update_neighbors;
          if (*(v37 + 128))
          {
            goto LABEL_47;
          }

          v38 = *a2;
          v39 = *(v37 + 32);
          if (fabs(v39) <= 1.0e-10)
          {
            v40 = *v37;
          }

          else
          {
            v40 = vmlaq_n_f64(*v37, *(v37 + 16), v39 * (v38 - *(v37 + 48)));
          }

          *v37 = v40;
          *(v37 + 48) = v38;
          *(v37 + 32) = 0;
          *(v37 + 40) = 256;
        }

        if (v13 != v20)
        {
LABEL_38:
          geom::straight_skeleton_evaluator<double>::edge_event_for_edge(a1, vertex_and_update_neighbors, v59);
          if (v61 == 1)
          {
            v56 = *v59;
            v57 = v60;
            v58 = 0;
            std::vector<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event>>::push_back[abi:nn200100]((a1 + 21), &v56);
            std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<double>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event> *>>(a1[21], a1[22], &v55, 0xAAAAAAAAAAAAAAABLL * ((a1[22] - a1[21]) >> 4));
          }

          geom::straight_skeleton_evaluator<double>::edge_event_for_edge(a1, v18, v59);
          if (v61 == 1)
          {
            v56 = *v59;
            v57 = v60;
            v58 = 0;
            std::vector<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event>>::push_back[abi:nn200100]((a1 + 21), &v56);
            std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<double>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event> *>>(a1[21], a1[22], &v55, 0xAAAAAAAAAAAAAAABLL * ((a1[22] - a1[21]) >> 4));
          }

          geom::straight_skeleton_evaluator<double>::edge_event_for_edge(a1, v32, v59);
          if (v61 == 1)
          {
            v56 = *v59;
            v57 = v60;
            v58 = 0;
            std::vector<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event>>::push_back[abi:nn200100]((a1 + 21), &v56);
            std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<double>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event> *>>(a1[21], a1[22], &v55, 0xAAAAAAAAAAAAAAABLL * ((a1[22] - a1[21]) >> 4));
          }

          geom::straight_skeleton_evaluator<double>::edge_event_for_edge(a1, v13, v59);
          if (v61 == 1)
          {
            v56 = *v59;
            v57 = v60;
            v58 = 0;
            std::vector<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event>>::push_back[abi:nn200100]((a1 + 21), &v56);
            std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<double>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event> *>>(a1[21], a1[22], &v55, 0xAAAAAAAAAAAAAAABLL * ((a1[22] - a1[21]) >> 4));
          }

          v22 = vertex_and_update_neighbors & 0xFFFFFF00 | (v32 << 32);
          v21 = vertex_and_update_neighbors;
          goto LABEL_9;
        }

        v41 = a1[15] + 144 * v13;
        if (!*(v41 + 128))
        {
          v42 = *a2;
          v43 = *(v41 + 32);
          v44 = fabs(v43) <= 1.0e-10 ? *v41 : vmlaq_n_f64(*v41, *(v41 + 16), v43 * (v42 - *(v41 + 48)));
          *v41 = v44;
          *(v41 + 48) = v42;
          *(v41 + 32) = 0;
          *(v41 + 40) = 256;
          v45 = a1[15] + 144 * v32;
          if (!*(v45 + 128))
          {
            v46 = *a2;
            v47 = *(v45 + 32);
            if (fabs(v47) <= 1.0e-10)
            {
              v48 = *v45;
            }

            else
            {
              v48 = vmlaq_n_f64(*v45, *(v45 + 16), v47 * (v46 - *(v45 + 48)));
            }

            *v45 = v48;
            *(v45 + 48) = v46;
            *(v45 + 32) = 0;
            *(v45 + 40) = 256;
            goto LABEL_38;
          }
        }
      }
    }
  }

LABEL_47:
  v49 = std::__throw_bad_variant_access[abi:nn200100]();
  return geom::straight_skeleton_evaluator<double>::add_joiner_mesh_faces_for_events(v49);
}