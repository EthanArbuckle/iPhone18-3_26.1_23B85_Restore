void geom::cut_directions_hierarchy<float>::init(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 24);
  *(a1 + 32) = *(a1 + 24);
  v5 = a1 + 48;
  v6 = *(a1 + 48);
    ;
  }

  *(a1 + 56) = v6;
  v8 = *a1;
  *(a1 + 8) = *a1;
  v20 = 0;
  v21 = 0uLL;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  if (a2)
  {
    v9 = 0;
    do
    {
      if (v9)
      {
        geom::subdivide_triangle_mesh<float>(&v20, &v17, v15);
      }

      else
      {
        v24 = xmmword_2500C7050;
        v25[0] = unk_2500C7060;
        v25[1] = xmmword_2500C7070;
        __src = xmmword_2500C7030;
        v23 = unk_2500C7040;
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8nn200100IPKS1_S7_EEvT_T0_l(&v20, &__src, v26, 5uLL);
        __src = xmmword_2500C7220;
        v23 = unk_2500C7230;
        v24 = xmmword_2500C7240;
        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int const*,unsigned int const*>(&v17, &__src, v25, 0xCuLL);
      }

      LODWORD(__src) = (v21 - v20) >> 4;
      std::vector<unsigned int>::push_back[abi:nn200100](v4, &__src);
      geom::triangle_mesh_connectivity::make(((v21 - v20) >> 4), (v18 - v17) >> 2, &__src);
      std::vector<geom::triangle_mesh_connectivity>::push_back[abi:nn200100](v5, &__src);
      if (v30 == 1)
      {
        if (v29 == 1 && __p)
        {
          v28 = __p;
          operator delete(__p);
        }

        geom::triangle_mesh_connectivity::~triangle_mesh_connectivity(&__src);
      }

      ++v9;
    }

    while (a2 != v9);
    v8 = *a1;
  }

  if (v8)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  v10 = v20;
  *a1 = v20;
  v11 = v21;
  *(a1 + 8) = v21;
  v21 = 0uLL;
  v20 = 0;
  while (v10 != v11)
  {
    v12 = vmulq_f32(*v10, *v10);
    *&v13 = v12.f32[2] + vaddv_f32(*v12.f32);
    *v12.f32 = vrsqrte_f32(v13);
    *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32)));
    *v10 = vmulq_n_f32(*v10, vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32))).f32[0]);
    ++v10;
  }

  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(v15);
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v20)
  {
    *&v21 = v20;
    operator delete(v20);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t geom::acd<float>::impl::merge_clusters_automatically(uint64_t a1, uint64_t a2)
{
  v25 = 0u;
  v24 = 0u;
  v26 = 1065353216;
  geom::cluster_parallel_merger<float>::init(v23, a1 + 112, a1 + 224, *(a1 + 328), *(a1 + 332));
  if (*(a1 + 136) >= 2uLL)
  {
    do
    {
      v5 = v25;
      if (v25)
      {
        v6 = INFINITY;
        do
        {
          if (**(v5 + 3) > 0.00000011921)
          {
            v7 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>((a1 + 112), v5 + 4);
            if (!v7 || (v8 = v7, (v9 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>((a1 + 112), v5 + 5)) == 0))
            {
              abort();
            }

            v10 = v9;
            v11 = v8[3];
            v13 = *v11;
            v12 = *(v11 + 8);
            if (v12)
            {
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              v14 = *v13;
              std::__shared_weak_count::__release_shared[abi:nn200100](v12);
            }

            else
            {
              v14 = *v13;
            }

            v15 = v10[3];
            v17 = *v15;
            v16 = *(v15 + 8);
            if (v16)
            {
              atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
              v18 = *v17;
              std::__shared_weak_count::__release_shared[abi:nn200100](v16);
            }

            else
            {
              v18 = *v17;
            }

            v19 = **(v5 + 3);
            if (v19 > 0.00000011921)
            {
              v20 = ((v19 - v14) - v18) / v19;
              v21 = *(v5 + 2);
              if (v20 < v6)
              {
                v6 = v20;
                v2 = *(v5 + 2);
              }
            }
          }

          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        v6 = INFINITY;
      }

      if (v6 > *(a2 + 8))
      {
        break;
      }

      geom::cluster_parallel_merger<float>::perform_merge(v23, v2);
    }

    while (*(a1 + 136) > 1uLL);
  }

  geom::cluster_parallel_merger<float>::deinit(v23);
  return std::__hash_table<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>>>::~__hash_table(&v24);
}

void geom::acd<float>::impl::get_hull_of_cluster(float32x4_t *a1, unsigned int a2, void *a3, std::vector<unsigned int> *a4)
{
  v22 = a2;
  v17 = a1[1];
  v19 = a1[2];
  v6 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(a1[7].i64, &v22);
  if (!v6)
  {
    abort();
  }

  v7 = v6[3];
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a3[1] = *a3;
  a4->__end_ = a4->__begin_;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(a3, (v9[7] - v9[6]) >> 4);
  std::vector<float>::reserve(a4, (v9[10] - v9[9]) >> 2);
  v10 = v9[6];
  v11 = v9[7];
  if (v10 != v11)
  {
    v12 = vsubq_f32(v19, v17);
    v12.f32[0] = fmaxf(fmaxf(v12.f32[0], v12.f32[2]), v12.f32[1]) * 0.5;
    v13 = vdupq_lane_s32(*v12.f32, 0);
    v12.i64[0] = 0x3F0000003F000000;
    v12.i64[1] = 0x3F0000003F000000;
    v18 = vmulq_f32(vaddq_f32(v19, v17), v12);
    v20 = v13;
    do
    {
      v14 = *v10++;
      v21 = vmlaq_f32(v18, v20, v14);
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, &v21);
    }

    while (v10 != v11);
  }

  v15 = v9[9];
  v16 = v9[10];
  while (v15 != v16)
  {
    std::vector<unsigned int>::push_back[abi:nn200100](&a4->__begin_, v15++);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }
}

void geom::acd<float>::impl::split_cluster_with_plane(float32x4_t *a1, unsigned int a2, float32x4_t *a3)
{
  v19 = a2;
  v5 = a1[1];
  v4 = a1[2];
  v6 = vsubq_f32(v4, v5);
  v7 = vaddq_f32(v4, v5);
  v5.i32[0] = a3[1].i32[0];
  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v9 = vmulq_f32(*a3, vmulq_f32(v7, v8));
  v17 = *a3;
  v18 = (v5.f32[0] + (v9.f32[2] + vaddv_f32(*v9.f32))) / (fmaxf(fmaxf(v6.f32[0], v6.f32[2]), v6.f32[1]) * 0.5);
  v10 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(a1[7].i64, &v19);
  if (v10)
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    geom::cluster_parallel_clipper<float>::init(v12, v10[3], &a1[14], &v17, 1);
    v11 = ((v16 + ((v14[12] - v14[11]) >> 3) - 1) / v16 + (v15 + ((v14[15] - v14[14]) >> 4) - 1) / v15) * v13;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN4geom14dispatch_applyIZNS_24cluster_parallel_clipperIfE24compute_clipped_clustersEvEUlmE_Lb1EEEvmP16dispatch_queue_sT__block_invoke;
    block[3] = &__block_descriptor_tmp_1;
    block[4] = v12;
    dispatch_apply(v11, 0, block);
    operator new();
  }

  abort();
}

uint64_t *geom::acd<float>::impl::merge_clusters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v12 = a2;
  v11 = a3;
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>((a1 + 112), &v11);
  if (!v4 || (v5 = v4, (v6 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>((a1 + 112), &v12)) == 0))
  {
    abort();
  }

  v7 = v6[3];
  v8 = v5[3];
  v10 = 0uLL;
  geom::cluster<float>::merge_into(v7, v8, &v10, a1 + 224);
  if (*(&v10 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v10 + 1));
  }

  return std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::__erase_unique<unsigned int>((a1 + 112), &v11);
}

void geom::acd<double>::impl::init(uint64_t a1, float64x2_t *a2, unint64_t a3, _DWORD *a4, std::vector<unsigned int>::size_type a5, unsigned int a6, int a7, double a8, double a9, double a10, float64x2_t a11, float64x2_t a12)
{
  v16 = a2;
  v51 = *MEMORY[0x277D85DE8];
  v18 = 32 * a3;
  if (a3)
  {
    a12.f64[0] = INFINITY;
    a11.f64[0] = -INFINITY;
    v19 = vdupq_n_s64(0x7FF0000000000000uLL);
    v20 = vdupq_n_s64(0xFFF0000000000000);
    v21 = 32 * a3;
    v22 = a2;
    do
    {
      v23 = *v22;
      v24 = v22[1];
      v22 += 2;
      v19 = vminnmq_f64(v23, v19);
      a12 = vminnmq_f64(*&v24.f64[0], *&a12.f64[0]);
      v20 = vmaxnmq_f64(v23, v20);
      a11 = vmaxnmq_f64(*&v24.f64[0], *&a11.f64[0]);
      v21 -= 32;
    }

    while (v21);
  }

  else
  {
    a11.f64[0] = -INFINITY;
    a12.f64[0] = INFINITY;
    v20 = vdupq_n_s64(0xFFF0000000000000);
    v19 = vdupq_n_s64(0x7FF0000000000000uLL);
  }

  v25 = (a1 + 272);
  v44 = v19;
  v45 = a12;
  *(a1 + 16) = v19;
  *(a1 + 32) = a12;
  v43 = v20;
  *(a1 + 48) = v20;
  *(a1 + 64) = a11;
  v46 = a11;
  *(a1 + 408) = a7;
  *(a1 + 416) = a8;
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE7reserveEm((a1 + 80), a3);
  if (a3)
  {
    __asm { FMOV            V2.2D, #0.5 }

    v48 = vmulq_f64(vaddq_f64(v45, v46), _Q2);
    v49 = vmulq_f64(vaddq_f64(v44, v43), _Q2);
    v32 = vmulq_f64(vsubq_f64(v43, v44), _Q2);
    v33 = fmax(fmax(v32.f64[0], vmulq_f64(vsubq_f64(v46, v45), _Q2).f64[0]), v32.f64[1]);
    if (v33 <= 2.22044605e-16)
    {
      v33 = 1.0;
    }

    v47 = vdupq_lane_s64(*&v33, 0);
    do
    {
      v34 = *v16;
      v35 = v16[1];
      v16 += 2;
      v50[0] = vdivq_f64(vsubq_f64(v34, v49), v47);
      v50[1] = vdivq_f64(vsubq_f64(v35, v48), v47);
      _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1 + 80, v50);
      v18 -= 32;
    }

    while (v18);
  }

  if (a6 >= 0x15)
  {
    v36 = 21;
  }

  else
  {
    v36 = a6;
  }

  v37 = ((1 << v36) - 1);
  *&v26 = 2.0 / v37;
  *(a1 + 192) = v36;
  *(a1 + 196) = 1 << v36;
  *(a1 + 200) = v37;
  *(a1 + 208) = vdupq_lane_s64(v26, 0);
  *(a1 + 224) = v26;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 240) = _Q0;
  *(a1 + 256) = _Q0;
  __asm { FMOV            V0.2D, #1.0 }

  *v25 = _Q0;
  *(a1 + 288) = _Q0;
  std::vector<float>::reserve((a1 + 104), a5);
  if (a5)
  {
    v40 = 4 * a5;
    do
    {
      std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 104), a4++);
      v40 -= 4;
    }

    while (v40);
  }

  geom::cut_directions_hierarchy<double>::init(a1 + 336, 5);
  v41 = (*(a1 + 88) - *(a1 + 80)) >> 5;
  v42 = (((*(a1 + 112) - *(a1 + 104)) >> 2) * 0xAAAAAAAAAAAAAAABLL) >> 64;
  geom::create_approximate_winding_number_3<double>();
}

void geom::cut_directions_hierarchy<double>::init(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 24);
  *(a1 + 32) = *(a1 + 24);
  v5 = a1 + 48;
  v6 = *(a1 + 48);
    ;
  }

  *(a1 + 56) = v6;
  v8 = *a1;
  *(a1 + 8) = *a1;
  j = 0;
  v21 = 0uLL;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  if (a2)
  {
    v9 = 0;
    do
    {
      if (v9)
      {
        geom::subdivide_triangle_mesh<double>(&j, &v17, v15);
      }

      else
      {
        v25[3] = xmmword_2500C71E0;
        v25[4] = unk_2500C71F0;
        v25[5] = xmmword_2500C7200;
        v25[6] = unk_2500C7210;
        v24 = xmmword_2500C71A0;
        memset(v25, 0, 32);
        v25[2] = unk_2500C71D0;
        __src = xmmword_2500C7180;
        v23 = *algn_2500C7190;
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE18__assign_with_sizeB8nn200100IPKS1_S7_EEvT_T0_l(&j, &__src, v26, 5uLL);
        __src = xmmword_2500C7220;
        v23 = unk_2500C7230;
        v24 = xmmword_2500C7240;
        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int const*,unsigned int const*>(&v17, &__src, v25, 0xCuLL);
      }

      LODWORD(__src) = (v21 - j) >> 5;
      std::vector<unsigned int>::push_back[abi:nn200100](v4, &__src);
      geom::triangle_mesh_connectivity::make(((v21 - j) >> 5), (v18 - v17) >> 2, &__src);
      std::vector<geom::triangle_mesh_connectivity>::push_back[abi:nn200100](v5, &__src);
      if (v30 == 1)
      {
        if (v29 == 1 && __p)
        {
          v28 = __p;
          operator delete(__p);
        }

        geom::triangle_mesh_connectivity::~triangle_mesh_connectivity(&__src);
      }

      ++v9;
    }

    while (a2 != v9);
    v8 = *a1;
  }

  if (v8)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  v10 = j;
  *a1 = j;
  v11 = v21;
  *(a1 + 8) = v21;
  v21 = 0uLL;
  for (j = 0; v10 != v11; v10 += 2)
  {
    v12 = v10[1];
    v13 = 1.0 / sqrt(vmulq_f64(v12, v12).f64[0] + vaddvq_f64(vmulq_f64(*v10, *v10)));
    *v10 = vmulq_n_f64(*v10, v13);
    v10[1] = vmulq_n_f64(v12, v13);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(v15);
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (j)
  {
    *&v21 = j;
    operator delete(j);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t geom::acd<double>::impl::merge_clusters_automatically(uint64_t a1, uint64_t a2)
{
  v25 = 0u;
  v24 = 0u;
  v26 = 1065353216;
  geom::cluster_parallel_merger<double>::init(v23, a1 + 144, a1 + 304, *(a1 + 408), *(a1 + 416));
  if (*(a1 + 168) >= 2uLL)
  {
    do
    {
      v5 = v25;
      if (v25)
      {
        v6 = INFINITY;
        do
        {
          if (**(v5 + 3) > 2.22044605e-16)
          {
            v7 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>((a1 + 144), v5 + 4);
            if (!v7 || (v8 = v7, (v9 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>((a1 + 144), v5 + 5)) == 0))
            {
              abort();
            }

            v10 = v9;
            v11 = v8[3];
            v13 = *v11;
            v12 = *(v11 + 8);
            if (v12)
            {
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              v14 = *v13;
              std::__shared_weak_count::__release_shared[abi:nn200100](v12);
            }

            else
            {
              v14 = *v13;
            }

            v15 = v10[3];
            v17 = *v15;
            v16 = *(v15 + 8);
            if (v16)
            {
              atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
              v18 = *v17;
              std::__shared_weak_count::__release_shared[abi:nn200100](v16);
            }

            else
            {
              v18 = *v17;
            }

            v19 = **(v5 + 3);
            if (v19 > 2.22044605e-16)
            {
              v20 = (v19 - v14 - v18) / v19;
              v21 = *(v5 + 2);
              if (v20 < v6)
              {
                v6 = v20;
                v2 = *(v5 + 2);
              }
            }
          }

          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        v6 = INFINITY;
      }

      if (v6 > *(a2 + 16))
      {
        break;
      }

      geom::cluster_parallel_merger<double>::perform_merge(v23, v2);
    }

    while (*(a1 + 168) > 1uLL);
  }

  geom::cluster_parallel_merger<double>::deinit(v23);
  return std::__hash_table<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>>>::~__hash_table(&v24);
}

void geom::acd<double>::impl::get_hull_of_cluster(uint64_t a1, unsigned int a2, void *a3, std::vector<unsigned int> *a4)
{
  v33 = a2;
  v28 = *(a1 + 64);
  v30 = *(a1 + 48);
  v25 = *(a1 + 32);
  v26 = *(a1 + 16);
  v6 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>((a1 + 144), &v33);
  if (!v6)
  {
    abort();
  }

  v7 = v6[3];
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a3[1] = *a3;
  a4->__end_ = a4->__begin_;
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE7reserveEm(a3, (v9[11] - v9[10]) >> 5);
  std::vector<float>::reserve(a4, (v9[14] - v9[13]) >> 2);
  v10 = v9[10];
  v11 = v9[11];
  if (v10 != v11)
  {
    v12 = vsubq_f64(v30, v26);
    v13 = fmax(fmax(v12.f64[0], vsubq_f64(v28, v25).f64[0]), v12.f64[1]);
    v14 = vaddq_f64(v28, v25);
    v15 = vdupq_lane_s64(COERCE__INT64(v13 * 0.5), 0);
    __asm { FMOV            V0.2D, #0.5 }

    v29 = vmulq_f64(vaddq_f64(v30, v26), _Q0);
    v31 = v15;
    v27 = vmulq_f64(v14, _Q0);
    do
    {
      v22 = *v10;
      v21 = v10[1];
      v10 += 2;
      v32[0] = vmlaq_f64(v29, v31, v22);
      v32[1] = vmlaq_f64(v27, v31, v21);
      _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, v32);
    }

    while (v10 != v11);
  }

  v23 = v9[13];
  v24 = v9[14];
  while (v23 != v24)
  {
    std::vector<unsigned int>::push_back[abi:nn200100](&a4->__begin_, v23++);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }
}

void geom::acd<double>::impl::split_cluster_with_plane(uint64_t a1, unsigned int a2, float64x2_t *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v27 = a2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = vsubq_f64(v4, v6);
  v9 = fmax(fmax(v8.f64[0], vsubq_f64(v5, v7).f64[0]), v8.f64[1]) * 0.5;
  v10 = a3[1];
  __asm { FMOV            V6.2D, #0.5 }

  v4.f64[0] = (a3[2].f64[0] + vmulq_f64(v10, vmulq_f64(vaddq_f64(v5, v7), _Q6)).f64[0] + vaddvq_f64(vmulq_f64(*a3, vmulq_f64(vaddq_f64(v4, v6), _Q6)))) / v9;
  v29[0] = *a3;
  v29[1] = v10;
  v30 = v4.f64[0];
  v16 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>((a1 + 144), &v27);
  if (v16)
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    geom::cluster_parallel_clipper<double>::init(v22, v16[3], a1 + 304, v29, 1, 0.0, v17, v18, v19, v20);
    v21 = ((v26 + ((v24[19] - v24[18]) >> 3) - 1) / v26 + (v25 + ((v24[22] - v24[21]) >> 4) - 1) / v25) * v23;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN4geom14dispatch_applyIZNS_24cluster_parallel_clipperIdE24compute_clipped_clustersEvEUlmE_Lb1EEEvmP16dispatch_queue_sT__block_invoke;
    block[3] = &__block_descriptor_tmp_19;
    block[4] = v22;
    dispatch_apply(v21, 0, block);
    operator new();
  }

  abort();
}

uint64_t *geom::acd<double>::impl::merge_clusters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v12 = a2;
  v11 = a3;
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>((a1 + 144), &v11);
  if (!v4 || (v5 = v4, (v6 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>((a1 + 144), &v12)) == 0))
  {
    abort();
  }

  v7 = v6[3];
  v8 = v5[3];
  v10 = 0uLL;
  geom::cluster<double>::merge_into(v7, v8, &v10, a1 + 304);
  if (*(&v10 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v10 + 1));
  }

  return std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::__erase_unique<unsigned int>((a1 + 144), &v11);
}

uint64_t std::__hash_table<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,std::shared_ptr<geom::convex_mesh<float>>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::vector<geom::cluster_parallel_clipper<float>::clipping_context,std::allocator<geom::cluster_parallel_clipper<float>::clipping_context>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = geom::cluster_parallel_clipper<float>::clipping_context::~clipping_context(v4 - 240);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t geom::cluster_parallel_clipper<float>::clipping_context::~clipping_context(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    *(a1 + 152) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    *(a1 + 128) = v3;
    operator delete(v3);
  }

  v8 = (a1 + 96);
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v8);
  v8 = (a1 + 72);
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v8);
  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v6;
    operator delete(v6);
  }

  return a1;
}

void std::vector<geom::cluster_parallel_clipper<double>::clipping_context,std::allocator<geom::cluster_parallel_clipper<double>::clipping_context>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = geom::cluster_parallel_clipper<float>::clipping_context::~clipping_context(v4 - 304);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void geom::subdivide_triangle_mesh<float>(uint64_t *a1, const void **a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  std::__hash_table<std::__hash_value_type<geom::edge,unsigned int>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,unsigned int>>>::clear(a3);
  v21 = (((a2[1] - *a2) >> 2) / 3uLL);
  if ((((a2[1] - *a2) >> 2) / 3uLL))
  {
    v6 = 0;
    do
    {
      v7 = 0;
      v24 = v6;
      v8 = 3 * v6;
      v9 = *a2;
      v31 = *(*a2 + v8);
      v23 = v8 + 1;
      v32 = v9[v8 + 1];
      v22 = v8 + 2;
      v33 = v9[v8 + 2];
      do
      {
        v10 = *(&v31 + v7);
        if (v7 == 2)
        {
          v11 = 0;
        }

        else
        {
          v11 = v7 + 1;
        }

        v12 = *(&v31 + v11);
        v26 = *(&v31 + v7);
        v27 = v12;
        v13 = std::__hash_table<std::__hash_value_type<geom::edge,unsigned int>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,unsigned int>>>::find<geom::edge>(a3, &v26);
        if (v13)
        {
          *(&v28 + v7) = *(v13 + 6);
        }

        else
        {
          v14 = v26;
          v15 = v27;
          v16 = *a1;
          v17 = (a1[1] - *a1) >> 4;
          *(&v28 + v7) = v17;
          v25.i64[0] = &v26;
          *(std::__hash_table<std::__hash_value_type<geom::edge,unsigned int>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,unsigned int>>>::__emplace_unique_key_args<geom::edge,std::piecewise_construct_t const&,std::tuple<geom::edge const&>,std::tuple<>>(a3, &v26) + 6) = v17;
          v18.i64[0] = 0x3F0000003F000000;
          v18.i64[1] = 0x3F0000003F000000;
          v25 = vmulq_f32(vaddq_f32(*(v16 + 16 * v14), *(v16 + 16 * v15)), v18);
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1, &v25);
        }

        ++v7;
      }

      while (v7 != 3);
      v19 = *a2;
      *(*a2 + v23) = v28;
      v19[v22] = v30;
      std::vector<unsigned int>::push_back[abi:nn200100](a2, &v28);
      std::vector<unsigned int>::push_back[abi:nn200100](a2, &v32);
      std::vector<unsigned int>::push_back[abi:nn200100](a2, &v29);
      std::vector<unsigned int>::push_back[abi:nn200100](a2, &v30);
      std::vector<unsigned int>::push_back[abi:nn200100](a2, &v29);
      std::vector<unsigned int>::push_back[abi:nn200100](a2, &v33);
      std::vector<unsigned int>::push_back[abi:nn200100](a2, &v28);
      std::vector<unsigned int>::push_back[abi:nn200100](a2, &v29);
      std::vector<unsigned int>::push_back[abi:nn200100](a2, &v30);
      v6 = v24 + 1;
    }

    while (v24 + 1 != v21);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t std::vector<geom::triangle_mesh_connectivity>::push_back[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<geom::triangle_mesh_connectivity>::__emplace_back_slow_path<geom::triangle_mesh_connectivity>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<geom::triangle_mesh_connectivity>>::construct[abi:nn200100]<geom::triangle_mesh_connectivity,geom::triangle_mesh_connectivity,0>(a1, *(a1 + 8), a2);
    result = v3 + 208;
  }

  *(a1 + 8) = result;
  return result;
}

void *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8nn200100IPKS1_S7_EEvT_T0_l(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(v6, v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 16;
        *v15 = v16;
        v15 += 16;
        v14 += 16;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void *std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int const*,unsigned int const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:nn200100](v6, v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void *std::__hash_table<std::__hash_value_type<geom::edge,unsigned int>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,unsigned int>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<geom::edge,unsigned int>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,unsigned int>>>::find<geom::edge>(void *a1, unsigned int *a2)
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

  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = (v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v7;
    if (v7 >= *&v6)
    {
      v9 = v7 % *&v6;
    }
  }

  else
  {
    v9 = v7 & (*&v6 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  result = *v10;
  if (*v10)
  {
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

    do
    {
      v13 = result[1];
      if (v13 == v7)
      {
        v15 = *(result + 4);
        v14 = *(result + 5);
        if (v14 >= v15)
        {
          v16 = *(result + 4);
        }

        else
        {
          v16 = *(result + 5);
        }

        if (v15 > v14)
        {
          v14 = *(result + 4);
        }

        if (v16 == v12 && v14 == v2)
        {
          return result;
        }
      }

      else
      {
        if (v8.u32[0] > 1uLL)
        {
          if (v13 >= *&v6)
          {
            v13 %= *&v6;
          }
        }

        else
        {
          v13 &= *&v6 - 1;
        }

        if (v13 != v9)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<geom::edge,unsigned int>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,unsigned int>>>::__emplace_unique_key_args<geom::edge,std::piecewise_construct_t const&,std::tuple<geom::edge const&>,std::tuple<>>(void *a1, unsigned int *a2)
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

uint64_t std::vector<geom::triangle_mesh_connectivity>::__emplace_back_slow_path<geom::triangle_mesh_connectivity>(uint64_t a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x13B13B13B13B13BLL)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 4)) >= 0x9D89D89D89D89DLL)
  {
    v6 = 0x13B13B13B13B13BLL;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geom::triangle_mesh_connectivity>>(a1, v6);
  }

  v7 = 208 * v2;
  std::allocator_traits<std::allocator<geom::triangle_mesh_connectivity>>::construct[abi:nn200100]<geom::triangle_mesh_connectivity,geom::triangle_mesh_connectivity,0>(a1, v7, a2);
  v8 = v7 + 208;
  v9 = *(a1 + 8);
  v10 = v7 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::triangle_mesh_connectivity>,geom::triangle_mesh_connectivity*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  std::__split_buffer<geom::triangle_mesh_connectivity>::~__split_buffer(v14);
  return v8;
}

__n128 std::allocator_traits<std::allocator<geom::triangle_mesh_connectivity>>::construct[abi:nn200100]<geom::triangle_mesh_connectivity,geom::triangle_mesh_connectivity,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 40) = *(a3 + 40);
  *(a3 + 40) = 0;
  v3 = *(a2 + 48);
  *(a2 + 48) = *(a3 + 48);
  *(a3 + 48) = v3;
  v4 = *(a2 + 56);
  *(a2 + 56) = *(a3 + 56);
  *(a3 + 56) = v4;
  v5 = *(a2 + 64);
  *(a2 + 64) = *(a3 + 64);
  *(a3 + 64) = v5;
  v6 = *(a2 + 72);
  *(a2 + 72) = *(a3 + 72);
  *(a3 + 72) = v6;
  v7 = *(a2 + 80);
  *(a2 + 80) = *(a3 + 80);
  *(a3 + 80) = v7;
  v8 = *(a2 + 88);
  *(a2 + 88) = *(a3 + 88);
  *(a3 + 88) = v8;
  v9 = *(a2 + 96);
  *(a2 + 96) = *(a3 + 96);
  *(a3 + 96) = v9;
  v10 = *(a2 + 104);
  *(a2 + 104) = *(a3 + 104);
  *(a3 + 104) = v10;
  *a2 = *a3;
  *a3 = 0;
  LODWORD(v10) = *(a2 + 4);
  *(a2 + 4) = *(a3 + 4);
  *(a3 + 4) = v10;
  LODWORD(v10) = *(a2 + 8);
  *(a2 + 8) = *(a3 + 8);
  *(a3 + 8) = v10;
  v11 = *(a2 + 16);
  *(a2 + 16) = *(a3 + 16);
  *(a3 + 16) = v11;
  v12 = *(a2 + 24);
  *(a2 + 24) = *(a3 + 24);
  *(a3 + 24) = v12;
  v13 = *(a2 + 32);
  *(a2 + 32) = *(a3 + 32);
  *(a3 + 32) = v13;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = *(a3 + 160);
  *(a2 + 176) = *(a3 + 176);
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;
  *(a3 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  result = *(a3 + 184);
  *(a2 + 184) = result;
  *(a2 + 200) = *(a3 + 200);
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::triangle_mesh_connectivity>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x13B13B13B13B13CLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::triangle_mesh_connectivity>,geom::triangle_mesh_connectivity*>(uint64_t a1, geom::triangle_mesh_connectivity *a2, geom::triangle_mesh_connectivity *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      std::allocator_traits<std::allocator<geom::triangle_mesh_connectivity>>::construct[abi:nn200100]<geom::triangle_mesh_connectivity,geom::triangle_mesh_connectivity,0>(a1, a4, v8);
      v8 += 208;
      a4 += 208;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      geom::triangle_mesh_connectivity::~triangle_mesh_connectivity(v6);
      v6 = (v6 + 208);
    }
  }
}

uint64_t std::__split_buffer<geom::triangle_mesh_connectivity>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 208;
    geom::triangle_mesh_connectivity::~triangle_mesh_connectivity((i - 208));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::unique_ptr<geom::bvh<float,(unsigned char)3>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 96) == 1)
    {
      v3 = *(v2 + 80);
      if (v3)
      {
        MEMORY[0x25305E3D0](v3, 0x1000C80E0EAB150);
      }
    }

    *(v2 + 80) = 0;
    *(v2 + 88) = 0;
    *(v2 + 96) = 0;
    if (*(v2 + 72) == 1)
    {
      v4 = *(v2 + 56);
      if (v4)
      {
        MEMORY[0x25305E3D0](v4, 0x1000C80451B5BE8);
      }
    }

    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    *(v2 + 72) = 0;
    v5 = *(v2 + 32);
    if (v5)
    {
      *(v2 + 40) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 8);
    if (v6)
    {
      *(v2 + 16) = v6;
      operator delete(v6);
    }

    JUMPOUT(0x25305E3F0);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4geom3acdIfE4impl4initENS2_5sliceIDv3_fEENS6_IjEEjjfEUlRNS2_8bvh_nodeIfLh3EEEE_NS_9allocatorISD_EEFbSC_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN4geom3acdIfE4impl4initENS_5sliceIDv3_fEENS3_IjEEjjfEUlRNS_8bvh_nodeIfLh3EEEE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::__deallocate_node(a1, *(a1 + 16));
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

uint64_t *std::unique_ptr<geom::cluster<float>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v5 = (v2 + 112);
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v5);
    v3 = *(v2 + 88);
    if (v3)
    {
      *(v2 + 96) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    return MEMORY[0x25305E3F0](v2, 0x10F0C401673C24ALL);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<geom::cluster<float>>::reset[abi:nn200100](v2 + 3, 0);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void ___ZN4geom14dispatch_applyIZNS_24cluster_parallel_clipperIfE24compute_clipped_clustersEvEUlmE_Lb1EEEvmP16dispatch_queue_sT__block_invoke(uint64_t a1, unint64_t a2, double a3, uint32x4_t a4, double a5, __n128 a6, __n128 a7)
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

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::__erase_unique<unsigned int>(void *a1, unsigned int *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,void *>>>>::~unique_ptr[abi:nn200100](v4);
    return 1;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
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

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void geom::subdivide_triangle_mesh<double>(void *a1, const void **a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  std::__hash_table<std::__hash_value_type<geom::edge,unsigned int>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,unsigned int>>>::clear(a3);
  v24 = (((a2[1] - *a2) >> 2) / 3uLL);
  if ((((a2[1] - *a2) >> 2) / 3uLL))
  {
    v6 = 0;
    __asm { FMOV            V0.2D, #0.5 }

    v27 = _Q0;
    do
    {
      v12 = 0;
      v13 = *a2;
      v34 = *(*a2 + (3 * v6));
      v26 = 3 * v6 + 1;
      v35 = v13[v26];
      v25 = 3 * v6 + 2;
      v36 = v13[v25];
      do
      {
        v14 = *(&v34 + v12);
        if (v12 == 2)
        {
          v15 = 0;
        }

        else
        {
          v15 = v12 + 1;
        }

        v16 = *(&v34 + v15);
        v29 = *(&v34 + v12);
        v30 = v16;
        v17 = std::__hash_table<std::__hash_value_type<geom::edge,unsigned int>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,unsigned int>>>::find<geom::edge>(a3, &v29);
        if (v17)
        {
          *(&v31 + v12) = *(v17 + 6);
        }

        else
        {
          v18 = (*a1 + 32 * v29);
          v19 = (*a1 + 32 * v30);
          v20 = (a1[1] - *a1) >> 5;
          *(&v31 + v12) = v20;
          *&v28[0] = &v29;
          *(std::__hash_table<std::__hash_value_type<geom::edge,unsigned int>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,unsigned int>>>::__emplace_unique_key_args<geom::edge,std::piecewise_construct_t const&,std::tuple<geom::edge const&>,std::tuple<>>(a3, &v29) + 6) = v20;
          v21 = vmulq_f64(vaddq_f64(v18[1], v19[1]), v27);
          v28[0] = vmulq_f64(vaddq_f64(*v18, *v19), v27);
          v28[1] = v21;
          _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1, v28);
        }

        ++v12;
      }

      while (v12 != 3);
      v22 = *a2;
      *(*a2 + v26) = v31;
      v22[v25] = v33;
      std::vector<unsigned int>::push_back[abi:nn200100](a2, &v31);
      std::vector<unsigned int>::push_back[abi:nn200100](a2, &v35);
      std::vector<unsigned int>::push_back[abi:nn200100](a2, &v32);
      std::vector<unsigned int>::push_back[abi:nn200100](a2, &v33);
      std::vector<unsigned int>::push_back[abi:nn200100](a2, &v32);
      std::vector<unsigned int>::push_back[abi:nn200100](a2, &v36);
      std::vector<unsigned int>::push_back[abi:nn200100](a2, &v31);
      std::vector<unsigned int>::push_back[abi:nn200100](a2, &v32);
      std::vector<unsigned int>::push_back[abi:nn200100](a2, &v33);
      ++v6;
    }

    while (v6 != v24);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void *_ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE18__assign_with_sizeB8nn200100IPKS1_S7_EEvT_T0_l(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(v6, v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 5)
  {
    v19 = a3 - __src;
    if (v19)
    {
      result = memmove(*result, __src, v19);
    }

    v18 = &v8[v19];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v17 = *(v13 + 1);
        v13 += 32;
        *v15 = v16;
        *(v15 + 1) = v17;
        v15 += 32;
        v14 += 32;
      }

      while (v13 != a3);
    }

    v18 = v14;
  }

  v6[1] = v18;
  return result;
}

uint64_t *std::unique_ptr<geom::bvh<double,(unsigned char)3>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 96) == 1)
    {
      v3 = *(v2 + 80);
      if (v3)
      {
        MEMORY[0x25305E3D0](v3, 0x1000C80FA0F61DDLL);
      }
    }

    *(v2 + 80) = 0;
    *(v2 + 88) = 0;
    *(v2 + 96) = 0;
    if (*(v2 + 72) == 1)
    {
      v4 = *(v2 + 56);
      if (v4)
      {
        MEMORY[0x25305E3D0](v4, 0x1000C80E0EAB150);
      }
    }

    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    *(v2 + 72) = 0;
    v5 = *(v2 + 32);
    if (v5)
    {
      *(v2 + 40) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 8);
    if (v6)
    {
      *(v2 + 16) = v6;
      operator delete(v6);
    }

    JUMPOUT(0x25305E3F0);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4geom3acdIdE4impl4initENS2_5sliceIDv3_dEENS6_IjEEjjdEUlRNS2_8bvh_nodeIdLh3EEEE_NS_9allocatorISD_EEFbSC_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN4geom3acdIdE4impl4initENS_5sliceIDv3_dEENS3_IjEEjjdEUlRNS_8bvh_nodeIdLh3EEEE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::__deallocate_node(a1, *(a1 + 16));
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

uint64_t *std::unique_ptr<geom::cluster<double>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v5 = (v2 + 168);
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v5);
    v3 = *(v2 + 144);
    if (v3)
    {
      *(v2 + 152) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    return MEMORY[0x25305E3F0](v2, 0x10F0C408DC99B65);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<geom::cluster<double>>::reset[abi:nn200100](v2 + 3, 0);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZN4geom14dispatch_applyIZNS_24cluster_parallel_clipperIdE24compute_clipped_clustersEvEUlmE_Lb1EEEvmP16dispatch_queue_sT__block_invoke(uint64_t a1, unint64_t a2, double a3, double a4, double a5, float64x2_t a6)
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

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::__erase_unique<unsigned int>(void *a1, unsigned int *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,void *>>>>::~unique_ptr[abi:nn200100](v4);
    return 1;
  }

  return result;
}

double _ZNK4geom3bvhIfLh2EE13closest_pointINSt3__18functionIFDv2_fjS5_EEEEES5_T_S5_RfRj(void *a1, uint64_t a2, float *a3, unsigned int *a4, double a5)
{
  *a3 = INFINITY;
  *a4 = -1;
  v6 = COERCE_DOUBLE(vneg_f32(0x3F0000003FLL));
  if (a1[5] != a1[4])
  {
    v8 = a1[2] - a1[1];
    if (v8)
    {
      __p = 0;
      v53 = 0;
      v54 = 0;
      std::vector<double>::reserve(&__p, 31 - __clz(-858993459 * (v8 >> 3)));
      v12 = vsub_f32(vmaxnm_f32(vminnm_f32(*&a5, *(a1[1] + 32)), *(a1[1] + 24)), *&a5);
      v13 = vaddv_f32(vmul_f32(v12, v12));
      v14 = v53;
      if (v53 >= v54)
      {
        v16 = (v53 - __p) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v18 = v54 - __p;
        if ((v54 - __p) >> 2 > v17)
        {
          v17 = v18 >> 2;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(&__p, v19);
        }

        v20 = 8 * v16;
        *v20 = 0;
        *(v20 + 4) = v13;
        v15 = (8 * v16 + 8);
        v21 = (8 * v16 - (v53 - __p));
        memcpy((v20 - (v53 - __p)), __p, v53 - __p);
        v22 = __p;
        __p = v21;
        v53 = v15;
        v54 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v53 = 0;
        *(v14 + 1) = v13;
        v15 = v14 + 8;
      }

      v23 = __p;
      v6 = COERCE_DOUBLE(vneg_f32(0x3F0000003FLL));
      if (__p != v15)
      {
        do
        {
          v26 = *(v15 - 2);
          v25 = (v15 - 8);
          v24 = v26;
          v27 = v25[1];
          v53 = v25;
          v28 = *a3;
          if (*a3 > v27)
          {
            v29 = a1[1];
            v30 = (v29 + 40 * v24);
            v32 = v30[1];
            v31 = v30[2];
            if (v32 == -1 && v31 == -1)
            {
              v41 = v30[4];
              if (v41)
              {
                v42 = v30[3];
                v43 = (a1[4] + 4 * v42);
                v44 = 4 * (v41 + v42) - 4 * v42;
                do
                {
                  v45 = *v43;
                  _ZNKSt3__18functionIFDv2_fjS1_EEclEjS1_(a2, *v43, a5);
                  v47 = vsub_f32(*&a5, v46);
                  v48 = vaddv_f32(vmul_f32(v47, v47));
                  if (v48 < *a3 || (v48 == *a3 ? (v49 = v45 >= *a4) : (v49 = 1), !v49))
                  {
                    *a3 = v48;
                    *a4 = v45;
                    v6 = *&v46;
                  }

                  ++v43;
                  v44 -= 4;
                }

                while (v44);
              }

              goto LABEL_45;
            }

            v34 = vsub_f32(vmaxnm_f32(vminnm_f32(*&a5, *(v29 + 40 * v32 + 32)), *(v29 + 40 * v32 + 24)), *&a5);
            v35 = vmul_f32(v34, v34);
            v36 = vaddv_f32(v35);
            v37 = vsub_f32(vmaxnm_f32(vminnm_f32(*&a5, *(v29 + 40 * v31 + 32)), *(v29 + 40 * v31 + 24)), *&a5);
            v38 = vmul_f32(v37, v37);
            v39 = vaddv_f32(v38);
            if (v36 < v28 && v39 < v28)
            {
              if (vcgt_f32(vadd_f32(v38, vdup_lane_s32(v38, 1)), vadd_f32(v35, vdup_lane_s32(v35, 1))).u8[0])
              {
                LODWORD(v51) = v30[2];
                *(&v51 + 1) = v39;
                _ZNSt3__16vectorIZNK4geom3bvhIfLh2EE13closest_pointINS_8functionIFDv2_fjS6_EEEEES6_T_S6_RfRjE5stateNS_9allocatorISC_EEE9push_backB8nn200100EOSC_(&__p, &v51);
                LODWORD(v51) = v30[1];
                goto LABEL_41;
              }

              LODWORD(v51) = v30[1];
              *(&v51 + 1) = v36;
              _ZNSt3__16vectorIZNK4geom3bvhIfLh2EE13closest_pointINS_8functionIFDv2_fjS6_EEEEES6_T_S6_RfRjE5stateNS_9allocatorISC_EEE9push_backB8nn200100EOSC_(&__p, &v51);
              LODWORD(v51) = v30[2];
LABEL_43:
              *(&v51 + 1) = v39;
LABEL_44:
              _ZNSt3__16vectorIZNK4geom3bvhIfLh2EE13closest_pointINS_8functionIFDv2_fjS6_EEEEES6_T_S6_RfRjE5stateNS_9allocatorISC_EEE9push_backB8nn200100EOSC_(&__p, &v51);
              goto LABEL_45;
            }

            if (v36 < v28)
            {
              LODWORD(v51) = v30[1];
LABEL_41:
              *(&v51 + 1) = v36;
              goto LABEL_44;
            }

            if (v39 < v28)
            {
              LODWORD(v51) = v30[2];
              goto LABEL_43;
            }
          }

LABEL_45:
          v23 = __p;
          v15 = v53;
        }

        while (__p != v53);
      }

      if (v23)
      {
        v53 = v23;
        operator delete(v23);
      }
    }
  }

  return v6;
}

uint64_t geom::bvh<float,(unsigned char)2>::primitives_for_node(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  result = *(a1 + 32) + 4 * v2;
  v4 = (*(a2 + 16) + v2) - v2;
  return result;
}

void _ZNKSt3__18functionIFDv2_fjS1_EEclEjS1_(uint64_t a1, int a2, double a3)
{
  v7 = a2;
  v6 = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    (*(*v3 + 48))(v3, &v7, &v6);
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    _ZNSt3__16vectorIZNK4geom3bvhIfLh2EE13closest_pointINS_8functionIFDv2_fjS6_EEEEES6_T_S6_RfRjE5stateNS_9allocatorISC_EEE9push_backB8nn200100EOSC_(v4, v5);
  }
}

void _ZNSt3__16vectorIZNK4geom3bvhIfLh2EE13closest_pointINS_8functionIFDv2_fjS6_EEEEES6_T_S6_RfRjE5stateNS_9allocatorISC_EEE9push_backB8nn200100EOSC_(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

double _ZNK4geom3bvhIfLh3EE13closest_pointINSt3__18functionIFDv3_fjS5_EEEEES5_T_S5_RfRj(void *a1, uint64_t a2, unsigned __int32 *a3, unsigned int *a4, float32x4_t a5)
{
  *a3 = 2139095040;
  *a4 = -1;
  v5.i64[0] = 0x3F0000003FLL;
  v5.i64[1] = 0x3F0000003FLL;
  v6 = vnegq_f32(v5).u64[0];
  if (a1[5] == a1[4])
  {
    return *&v6;
  }

  v8 = a1[2] - a1[1];
  if (!v8)
  {
    return *&v6;
  }

  __p = 0;
  v73 = 0;
  v74 = 0;
  std::vector<double>::reserve(&__p, 31 - __clz(v8 >> 6));
  v12 = a5;
  v13 = a1[1];
  v14 = a5;
  v14.i32[3] = 0;
  v16 = v13[2];
  v15 = v13[3];
  v15.i32[3] = 0;
  v68 = v14;
  v17 = vminnmq_f32(v14, v15);
  v17.i32[3] = 0;
  v16.i32[3] = 0;
  v18 = vsubq_f32(vmaxnmq_f32(v17, v16), a5);
  v19 = vmulq_f32(v18, v18);
  v20 = v19.f32[2] + vaddv_f32(*v19.f32);
  v21 = v73;
  if (v73 >= v74)
  {
    v23 = (v73 - __p) >> 3;
    v24 = v23 + 1;
    if ((v23 + 1) >> 61)
    {
      goto LABEL_50;
    }

    v25 = v74 - __p;
    if ((v74 - __p) >> 2 > v24)
    {
      v24 = v25 >> 2;
    }

    if (v25 >= 0x7FFFFFFFFFFFFFF8)
    {
      v26 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v26 = v24;
    }

    if (v26)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(&__p, v26);
    }

    v27 = 8 * v23;
    *v27 = 0;
    *(v27 + 4) = v20;
    v22 = (8 * v23 + 8);
    v28 = (8 * v23 - (v73 - __p));
    memcpy((v27 - (v73 - __p)), __p, v73 - __p);
    v29 = __p;
    __p = v28;
    v73 = v22;
    v74 = 0;
    if (v29)
    {
      operator delete(v29);
    }

    v12 = a5;
  }

  else
  {
    *v73 = 0;
    *(v21 + 1) = v20;
    v22 = v21 + 8;
  }

  v30 = __p;
  v31.i64[0] = 0x3F0000003FLL;
  v31.i64[1] = 0x3F0000003FLL;
  if (__p != v22)
  {
    v32 = vnegq_f32(v31);
    v69 = v32.n128_u64[0];
    while (1)
    {
      v35 = *(v22 - 2);
      v34 = (v22 - 8);
      v33 = v35;
      v36 = v34[1];
      v73 = v34;
      v32.n128_u32[0] = *a3;
      if (*a3 > v36)
      {
        v37 = a1[1];
        v38 = (v37 + (v33 << 6));
        v40 = v38[1];
        v39 = v38[2];
        if (v40 == -1 && v39 == -1)
        {
          v55 = v38[4];
          if (v55)
          {
            v56 = v38[3];
            v57 = (a1[4] + 4 * v56);
            v58 = 4 * (v55 + v56) - 4 * v56;
            while (1)
            {
              v59 = *v57;
              v76 = *v57;
              v75 = v12;
              v60 = *(a2 + 24);
              if (!v60)
              {
                break;
              }

              v32.n128_f64[0] = (*(*v60 + 48))(v60, &v76, &v75, v32);
              v61 = vsubq_f32(a5, v32);
              v62 = vmulq_f32(v61, v61);
              v63 = v62.f32[2] + vaddv_f32(*v62.f32);
              v12 = a5;
              if (v63 < *a3 || (v63 == *a3 ? (v64 = v59 >= *a4) : (v64 = 1), !v64))
              {
                *a3 = v63;
                *a4 = v59;
                v69 = v32.n128_u64[0];
              }

              ++v57;
              v58 -= 4;
              if (!v58)
              {
                goto LABEL_43;
              }
            }

            std::__throw_bad_function_call[abi:nn200100]();
LABEL_50:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }
        }

        else
        {
          v42 = (v37 + (v40 << 6));
          v44 = v42[2];
          v43 = v42[3];
          v43.i32[3] = 0;
          v45 = vminnmq_f32(v68, v43);
          v45.i32[3] = 0;
          v44.i32[3] = 0;
          v46 = vsubq_f32(vmaxnmq_f32(v45, v44), v12);
          v47 = (v37 + (v39 << 6));
          v49 = v47[2];
          v48 = v47[3];
          v48.i32[3] = 0;
          v50 = vmulq_f32(v46, v46);
          v51 = vminnmq_f32(v68, v48);
          v51.i32[3] = 0;
          v49.i32[3] = 0;
          v52 = vsubq_f32(vmaxnmq_f32(v51, v49), v12);
          v53 = vmulq_f32(v52, v52);
          v54 = vadd_f32(vzip1_s32(*&vextq_s8(v53, v53, 8uLL), *&vextq_s8(v50, v50, 8uLL)), vadd_f32(vzip1_s32(*v53.i8, *v50.i8), vzip2_s32(*v53.i8, *v50.i8)));
          v32.n128_u64[0] = vmvn_s8(vcgt_f32(vdup_lane_s32(v32.n128_u64[0], 0), v54));
          if (((v32.n128_u32[1] | v32.n128_u32[0]) & 1) == 0)
          {
            v65 = v54.i32[1];
            if (v54.f32[1] >= v54.f32[0])
            {
              v75.i64[0] = __PAIR64__(v54.u32[1], v40);
              v67 = v54.i32[0];
              _ZNSt3__16vectorIZNK4geom3bvhIfLh2EE13closest_pointINS_8functionIFDv2_fjS6_EEEEES6_T_S6_RfRjE5stateNS_9allocatorISC_EEE9push_backB8nn200100EOSC_(&__p, &v75);
              v75.i32[0] = v38[2];
              v75.i32[1] = v67;
            }

            else
            {
              v75.i32[0] = v38[2];
              v75.i32[1] = v54.i32[0];
              _ZNSt3__16vectorIZNK4geom3bvhIfLh2EE13closest_pointINS_8functionIFDv2_fjS6_EEEEES6_T_S6_RfRjE5stateNS_9allocatorISC_EEE9push_backB8nn200100EOSC_(&__p, &v75);
              v75.i32[0] = v38[1];
              v75.i32[1] = v65;
            }

            goto LABEL_42;
          }

          if ((v32.n128_u8[4] & 1) == 0)
          {
            v75.i64[0] = __PAIR64__(v54.u32[1], v40);
            goto LABEL_42;
          }

          if ((v32.n128_u8[0] & 1) == 0)
          {
            v75.i64[0] = __PAIR64__(v54.u32[0], v39);
LABEL_42:
            _ZNSt3__16vectorIZNK4geom3bvhIfLh2EE13closest_pointINS_8functionIFDv2_fjS6_EEEEES6_T_S6_RfRjE5stateNS_9allocatorISC_EEE9push_backB8nn200100EOSC_(&__p, &v75);
            v12 = a5;
          }
        }
      }

LABEL_43:
      v30 = __p;
      v22 = v73;
      if (__p == v73)
      {
        v6 = v69;
        if (__p)
        {
          goto LABEL_45;
        }

        return *&v6;
      }
    }
  }

  v6 = vnegq_f32(v31).u64[0];
  if (__p)
  {
LABEL_45:
    v73 = v30;
    v70 = v6;
    operator delete(v30);
    v6 = v70;
  }

  return *&v6;
}

void _ZNK4geom3bvhIdLh2EE13closest_pointINSt3__18functionIFDv2_djS5_EEEEES5_T_S5_RdRj(void *a1, uint64_t a2, double *a3, unsigned int *a4, float64x2_t a5)
{
  *a3 = INFINITY;
  *a4 = -1;
  if (a1[5] != a1[4])
  {
    v6 = a1[2] - a1[1];
    if (v6)
    {
      __p = 0;
      v51 = 0;
      v52 = 0;
      _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointINS_8functionIFDv2_djS6_EEEEES6_T_S6_RdRjE5stateNS_9allocatorISC_EEE7reserveEm(&__p, 31 - __clz(v6 >> 6));
      v10 = vsubq_f64(vmaxnmq_f64(vminnmq_f64(a5, *(a1[1] + 48)), *(a1[1] + 32)), a5);
      v11 = vaddvq_f64(vmulq_f64(v10, v10));
      v12 = v51;
      if (v51 >= v52)
      {
        v14 = (v51 - __p) >> 4;
        v15 = v14 + 1;
        if ((v14 + 1) >> 60)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v16 = v52 - __p;
        if ((v52 - __p) >> 3 > v15)
        {
          v15 = v16 >> 3;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF0)
        {
          v17 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<geom::indexed_priority_queue<unsigned int,double>::key>>(&__p, v17);
        }

        v18 = 16 * v14;
        *v18 = 0;
        *(v18 + 8) = v11;
        v13 = (16 * v14 + 16);
        v19 = (16 * v14 - (v51 - __p));
        memcpy((v18 - (v51 - __p)), __p, v51 - __p);
        v20 = __p;
        __p = v19;
        v51 = v13;
        v52 = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v51 = 0;
        v13 = v12 + 16;
        *(v12 + 1) = v11;
      }

      v21 = __p;
      if (__p != v13)
      {
        do
        {
          v24 = *(v13 - 4);
          v23 = (v13 - 16);
          v22 = v24;
          v25 = v23[1];
          v51 = v23;
          v26 = *a3;
          if (*a3 > v25)
          {
            v27 = a1[1];
            v28 = (v27 + (v22 << 6));
            v30 = v28[1];
            v29 = v28[2];
            if (v30 == -1 && v29 == -1)
            {
              v39 = v28[4];
              if (v39)
              {
                v40 = v28[3];
                v41 = (a1[4] + 4 * v40);
                v42 = 4 * (v39 + v40) - 4 * v40;
                do
                {
                  v43 = *v41;
                  _ZNKSt3__18functionIFDv2_djS1_EEclEjS1_(a2, *v41, a5);
                  v45 = vsubq_f64(a5, v44);
                  v46 = vaddvq_f64(vmulq_f64(v45, v45));
                  if (v46 < *a3 || (v46 == *a3 ? (v47 = v43 >= *a4) : (v47 = 1), !v47))
                  {
                    *a3 = v46;
                    *a4 = v43;
                  }

                  ++v41;
                  v42 -= 4;
                }

                while (v42);
              }

              goto LABEL_45;
            }

            v32 = vsubq_f64(vmaxnmq_f64(vminnmq_f64(a5, *(v27 + (v30 << 6) + 48)), *(v27 + (v30 << 6) + 32)), a5);
            v33 = vmulq_f64(v32, v32);
            v34 = vaddvq_f64(v33);
            v35 = vsubq_f64(vmaxnmq_f64(vminnmq_f64(a5, *(v27 + (v29 << 6) + 48)), *(v27 + (v29 << 6) + 32)), a5);
            v36 = vmulq_f64(v35, v35);
            v37 = vaddvq_f64(v36);
            if (v34 < v26 && v37 < v26)
            {
              if (vmovn_s64(vcgtq_f64(vaddq_f64(v36, vdupq_laneq_s64(v36, 1)), vaddq_f64(v33, vdupq_laneq_s64(v33, 1)))).u8[0])
              {
                LODWORD(v49) = v28[2];
                *(&v49 + 1) = v37;
                _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointINS_8functionIFDv2_djS6_EEEEES6_T_S6_RdRjE5stateNS_9allocatorISC_EEE9push_backB8nn200100EOSC_(&__p, &v49);
                LODWORD(v49) = v28[1];
                goto LABEL_41;
              }

              LODWORD(v49) = v28[1];
              *(&v49 + 1) = v34;
              _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointINS_8functionIFDv2_djS6_EEEEES6_T_S6_RdRjE5stateNS_9allocatorISC_EEE9push_backB8nn200100EOSC_(&__p, &v49);
              LODWORD(v49) = v28[2];
LABEL_43:
              *(&v49 + 1) = v37;
LABEL_44:
              _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointINS_8functionIFDv2_djS6_EEEEES6_T_S6_RdRjE5stateNS_9allocatorISC_EEE9push_backB8nn200100EOSC_(&__p, &v49);
              goto LABEL_45;
            }

            if (v34 < v26)
            {
              LODWORD(v49) = v28[1];
LABEL_41:
              *(&v49 + 1) = v34;
              goto LABEL_44;
            }

            if (v37 < v26)
            {
              LODWORD(v49) = v28[2];
              goto LABEL_43;
            }
          }

LABEL_45:
          v21 = __p;
          v13 = v51;
        }

        while (__p != v51);
      }

      if (v21)
      {
        v51 = v21;
        operator delete(v21);
      }
    }
  }
}

void *_ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointINS_8functionIFDv2_djS6_EEEEES6_T_S6_RdRjE5stateNS_9allocatorISC_EEE7reserveEm(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::indexed_priority_queue<unsigned int,double>::key>>(result, a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

uint64_t _ZNKSt3__18functionIFDv2_djS1_EEclEjS1_(uint64_t a1, int a2, __n128 a3)
{
  v7 = a2;
  v6 = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v7, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointINS_8functionIFDv2_djS6_EEEEES6_T_S6_RdRjE5stateNS_9allocatorISC_EEE9push_backB8nn200100EOSC_(v5);
}

void _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointINS_8functionIFDv2_djS6_EEEEES6_T_S6_RdRjE5stateNS_9allocatorISC_EEE9push_backB8nn200100EOSC_(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::indexed_priority_queue<unsigned int,double>::key>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void _ZNK4geom3bvhIdLh3EE13closest_pointINSt3__18functionIFDv3_djS5_EEEEES5_T_S5_RdRj(void *a1@<X0>, uint64_t a2@<X1>, float64x2_t *a3@<X2>, double *a4@<X3>, unsigned int *a5@<X4>, int64x2_t *a6@<X8>)
{
  v7 = a3[1];
  v65 = *a3;
  v66 = v7;
  *a4 = INFINITY;
  *a5 = -1;
  v8 = vdupq_n_s64(0x7FF8000000000000uLL);
  if (a1[5] == a1[4] || (v10 = a1[2] - a1[1]) == 0)
  {
    v7.f64[0] = NAN;
    goto LABEL_50;
  }

  __p = 0;
  v68 = 0;
  v69 = 0;
  _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointINS_8functionIFDv2_djS6_EEEEES6_T_S6_RdRjE5stateNS_9allocatorISC_EEE7reserveEm(&__p, 31 - __clz(-1431655765 * (v10 >> 5)));
  v14 = a1[1];
  v15 = vsubq_f64(vmaxnmq_f64(vminnmq_f64(v65, *(v14 + 64)), *(v14 + 32)), v65);
  v16 = vsubq_f64(vmaxnmq_f64(*&vminnmq_f64(*&v66.f64[0], *(v14 + 80)), *(v14 + 48)), v66);
  v7 = vmulq_f64(v16, v16);
  v17 = vmulq_f64(v15, v15);
  v18 = v7.f64[0] + vaddvq_f64(v17);
  v19 = v68;
  if (v68 >= v69)
  {
    v21 = (v68 - __p) >> 4;
    v22 = v21 + 1;
    if ((v21 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v23 = v69 - __p;
    if ((v69 - __p) >> 3 > v22)
    {
      v22 = v23 >> 3;
    }

    if (v23 >= 0x7FFFFFFFFFFFFFF0)
    {
      v24 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v24 = v22;
    }

    if (v24)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::indexed_priority_queue<unsigned int,double>::key>>(&__p, v24);
    }

    v25 = 16 * v21;
    *v25 = 0;
    *(v25 + 8) = v18;
    v20 = (16 * v21 + 16);
    v26 = (16 * v21 - (v68 - __p));
    memcpy((v25 - (v68 - __p)), __p, v68 - __p);
    v27 = __p;
    __p = v26;
    v68 = v20;
    v69 = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v68 = 0;
    v20 = v19 + 16;
    *(v19 + 1) = v18;
  }

  v28 = __p;
  if (__p != v20)
  {
    v17.f64[0] = NAN;
    v61 = v17;
    v63 = vdupq_n_s64(0x7FF8000000000000uLL);
    while (1)
    {
      v31 = *(v20 - 4);
      v30 = (v20 - 16);
      v29 = v31;
      v32 = v30[1];
      v68 = v30;
      v33 = *a4;
      if (*a4 > v32)
      {
        v34 = a1[1];
        v35 = (v34 + 96 * v29);
        v37 = v35[1];
        v36 = v35[2];
        if (v37 == -1 && v36 == -1)
        {
          v50 = v35[4];
          if (v50)
          {
            v51 = v35[3];
            v52 = (a1[4] + 4 * v51);
            v53 = 4 * (v50 + v51) - 4 * v51;
            do
            {
              v54 = *v52;
              v73 = *v52;
              v72[0] = v65;
              v72[1] = v66;
              _ZNKSt3__110__function12__value_funcIFDv3_djS2_EEclB8nn200100EOjOS2_(a2, &v70);
              v56 = v70;
              v55 = v71;
              v57 = vsubq_f64(v65, v70);
              v58 = vsubq_f64(v66, v71);
              v59 = vmulq_f64(v58, v58).f64[0] + vaddvq_f64(vmulq_f64(v57, v57));
              if (v59 < *a4 || (v59 == *a4 ? (v60 = v54 >= *a5) : (v60 = 1), !v60))
              {
                *a4 = v59;
                *a5 = v54;
                v61 = v55;
                v63 = v56;
              }

              ++v52;
              v53 -= 4;
            }

            while (v53);
          }

          goto LABEL_47;
        }

        v39 = v34 + 96 * v37;
        v40 = vsubq_f64(vmaxnmq_f64(vminnmq_f64(v65, *(v39 + 64)), *(v39 + 32)), v65);
        v41 = vsubq_f64(vmaxnmq_f64(*&vminnmq_f64(*&v66.f64[0], *(v39 + 80)), *(v39 + 48)), v66);
        v42 = vmulq_f64(v41, v41).f64[0] + vaddvq_f64(vmulq_f64(v40, v40));
        v43 = v34 + 96 * v36;
        v44 = vsubq_f64(vmaxnmq_f64(vminnmq_f64(v65, *(v43 + 64)), *(v43 + 32)), v65);
        v45 = vsubq_f64(vmaxnmq_f64(*&vminnmq_f64(*&v66.f64[0], *(v43 + 80)), *(v43 + 48)), v66);
        v46 = vmulq_f64(v45, v45).f64[0];
        v47 = vaddvq_f64(vmulq_f64(v44, v44));
        v48 = v46 + v47;
        if (v42 < v33 && v48 < v33)
        {
          if (v42 < v48)
          {
            LODWORD(v72[0]) = v35[2];
            *(v72 + 1) = v46 + v47;
            _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointINS_8functionIFDv2_djS6_EEEEES6_T_S6_RdRjE5stateNS_9allocatorISC_EEE9push_backB8nn200100EOSC_(&__p, v72);
            LODWORD(v72[0]) = v35[1];
            goto LABEL_43;
          }

          LODWORD(v72[0]) = v35[1];
          *(v72 + 1) = v42;
          _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointINS_8functionIFDv2_djS6_EEEEES6_T_S6_RdRjE5stateNS_9allocatorISC_EEE9push_backB8nn200100EOSC_(&__p, v72);
          LODWORD(v72[0]) = v35[2];
LABEL_45:
          *(v72 + 1) = v48;
LABEL_46:
          _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointINS_8functionIFDv2_djS6_EEEEES6_T_S6_RdRjE5stateNS_9allocatorISC_EEE9push_backB8nn200100EOSC_(&__p, v72);
          goto LABEL_47;
        }

        if (v42 < v33)
        {
          LODWORD(v72[0]) = v35[1];
LABEL_43:
          *(v72 + 1) = v42;
          goto LABEL_46;
        }

        if (v48 < v33)
        {
          LODWORD(v72[0]) = v35[2];
          goto LABEL_45;
        }
      }

LABEL_47:
      v28 = __p;
      v20 = v68;
      if (__p == v68)
      {
        v7 = v61;
        v8 = v63;
        if (__p)
        {
          goto LABEL_49;
        }

        goto LABEL_50;
      }
    }
  }

  v7.f64[0] = NAN;
  v8 = vdupq_n_s64(0x7FF8000000000000uLL);
  if (__p)
  {
LABEL_49:
    v68 = v28;
    v62 = v7;
    v64 = v8;
    operator delete(v28);
    v7 = v62;
    v8 = v64;
  }

LABEL_50:
  *a6 = v8;
  a6[1] = v7;
}

uint64_t geom::bvh<float,(unsigned char)2>::bvh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10[0] = a2;
  v10[1] = a3;
  v9[0] = a4;
  v9[1] = a5;
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  _ZN4geom19make_external_arrayINS_5sliceIDv2_fEEEENSt3__19enable_ifIXaa21collection_has_size_vIT_E21collection_has_data_vIS6_EENS_14external_arrayINS6_10value_typeEEEE4typeERKS6_b(v10, a6, a1 + 56);
  geom::make_external_array<geom::slice<geom::bbox<float,(unsigned char)2>>>(v9, a6, a1 + 80);
  return a1;
}

void *geom::make_external_array<geom::slice<geom::bbox<float,(unsigned char)2>>>@<X0>(void *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  if (v3)
  {
    if (a2)
    {
      operator new[]();
    }

    *a3 = *result;
    *(a3 + 8) = v3;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  *(a3 + 16) = 0;
  return result;
}

double geom::bvh<float,(unsigned char)2>::bvh(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  v4 = *(a2 + 8);
  *(a1 + 56) = *a2;
  *(a1 + 64) = v4;
  *(a1 + 72) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v5 = *(a3 + 8);
  *(a1 + 80) = *a3;
  *(a1 + 88) = v5;
  *(a1 + 96) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

void *geom::bvh<float,(unsigned char)2>::reset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v15[0] = a4;
  v15[1] = a5;
  *a1 = 0;
  if (!a3)
  {
    a2 = 0;
  }

  if (a3 && a6)
  {
    operator new[]();
  }

  if (*(a1 + 72) == 1)
  {
    v10 = *(a1 + 56);
    if (v10)
    {
      MEMORY[0x25305E3D0](v10, 0x1000C8000313F17);
    }
  }

  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  *(a1 + 72) = 0;
  result = geom::make_external_array<geom::slice<geom::bbox<float,(unsigned char)2>>>(v15, a6, v13);
  if (*(a1 + 96) == 1)
  {
    result = *(a1 + 80);
    if (result)
    {
      result = MEMORY[0x25305E3D0](result, 0x1000C80451B5BE8);
    }
  }

  v12 = v13[1];
  *(a1 + 80) = v13[0];
  *(a1 + 88) = v12;
  *(a1 + 96) = v14;
  *(a1 + 40) = *(a1 + 32);
  *(a1 + 16) = *(a1 + 8);
  return result;
}

uint64_t geom::bvh<float,(unsigned char)2>::reset(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  *result = 0;
  if (*(result + 72) == 1)
  {
    result = *(result + 56);
    if (result)
    {
      result = MEMORY[0x25305E3D0](result, 0x1000C8000313F17);
    }
  }

  v6 = *(a2 + 8);
  *(v5 + 56) = *a2;
  *(v5 + 64) = v6;
  *(v5 + 72) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (*(v5 + 96) == 1)
  {
    result = *(v5 + 80);
    if (result)
    {
      result = MEMORY[0x25305E3D0](result, 0x1000C80451B5BE8);
    }
  }

  v7 = *(a3 + 8);
  *(v5 + 80) = *a3;
  *(v5 + 88) = v7;
  *(v5 + 96) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(v5 + 40) = *(v5 + 32);
  *(v5 + 16) = *(v5 + 8);
  return result;
}

uint64_t geom::bvh<float,(unsigned char)2>::iterator::iterator(uint64_t result, uint64_t a2, int a3)
{
  *result = a2;
  *(result + 8) = a3;
  return result;
}

uint64_t geom::bvh<float,(unsigned char)2>::iterator::primitives(unsigned int *a1)
{
  v1 = *(*a1 + 8) + 40 * a1[2];
  v2 = *(v1 + 12);
  result = *(*a1 + 32) + 4 * v2;
  v4 = (*(v1 + 16) + v2) - v2;
  return result;
}

unsigned int *geom::bvh<float,(unsigned char)2>::iterator::operator++(unsigned int *result)
{
  v1 = result[2];
  if (v1 != -1)
  {
    v2 = v1 + 1;
    result[2] = v2;
    if (0xCCCCCCCCCCCCCCCDLL * ((*(*result + 16) - *(*result + 8)) >> 3) <= v2)
    {
      result[2] = -1;
    }
  }

  return result;
}

uint64_t geom::bvh<float,(unsigned char)2>::iterator::operator++(void *a1)
{
  result = *a1;
  v3 = a1[1];
  if (v3 != -1)
  {
    v4 = (v3 + 1);
    *(a1 + 2) = v4;
    if (0xCCCCCCCCCCCCCCCDLL * ((*(result + 16) - *(result + 8)) >> 3) <= v4)
    {
      *(a1 + 2) = -1;
    }
  }

  return result;
}

uint64_t geom::bvh<float,(unsigned char)2>::build_middle_split(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>::__value_func[abi:nn200100](v6, a2);
  v5[0] = &unk_286291818;
  v5[1] = a1;
  v5[3] = v5;
  geom::bvh<float,(unsigned char)2>::build_top_down(a1, v6, v5);
  std::__function::__value_func<unsigned int ()(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)>::~__value_func[abi:nn200100](v5);
  result = std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>::~__value_func[abi:nn200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void geom::bvh<float,(unsigned char)2>::build_top_down(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*a1 & 1) == 0)
  {
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
  }

  std::vector<float>::resize((a1 + 32), *(a1 + 88));
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v6 == v7)
  {
    if (*(a1 + 88))
    {
      goto LABEL_18;
    }

LABEL_21:
    *a1 = 1;
    return;
  }

  v8 = 0;
  v9 = (v7 - v6 - 4) >> 2;
  v10 = vdupq_n_s64(v9);
  v11 = (v9 + 4) & 0x7FFFFFFFFFFFFFFCLL;
  v12 = v6 + 8;
  do
  {
    v13 = vdupq_n_s64(v8);
    v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_2500C1680)));
    if (vuzp1_s16(v14, *v10.i8).u8[0])
    {
      *(v12 - 2) = v8;
    }

    if (vuzp1_s16(v14, *&v10).i8[2])
    {
      *(v12 - 1) = v8 + 1;
    }

    if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_2500C1670)))).i32[1])
    {
      *v12 = v8 + 2;
      v12[1] = v8 + 3;
    }

    v8 += 4;
    v12 += 4;
  }

  while (v11 != v8);
  if (!*(a1 + 88))
  {
    goto LABEL_21;
  }

  if (v6 != v7)
  {
    v15 = 0x7F0000007FLL;
    v16 = vneg_f32(0x7F0000007FLL);
    v17 = v6;
    do
    {
      v18 = *v17;
      v17 += 4;
      v19 = (*(a1 + 80) + 16 * v18);
      v16 = vminnm_f32(v16, *v19);
      v15 = vmaxnm_f32(v15, v19[1]);
    }

    while (v17 != v7);
    goto LABEL_19;
  }

LABEL_18:
  v15 = 0x7F0000007FLL;
  v16 = vneg_f32(0x7F0000007FLL);
LABEL_19:
  v20 = (v7 - v6) >> 2;
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  if (v21 >= v22)
  {
    v24 = *(a1 + 8);
    v25 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - v24) >> 3);
    v26 = v25 + 1;
    if (v25 + 1 > 0x666666666666666)
    {
      goto LABEL_45;
    }

    v27 = 0xCCCCCCCCCCCCCCCDLL * ((v22 - v24) >> 3);
    if (2 * v27 > v26)
    {
      v26 = 2 * v27;
    }

    if (v27 >= 0x333333333333333)
    {
      v28 = 0x666666666666666;
    }

    else
    {
      v28 = v26;
    }

    if (v28)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::bvh_node<float,(unsigned char)2>>>(a1 + 8, v28);
    }

    v29 = 40 * v25;
    *v29 = xmmword_2500C7370;
    *(v29 + 16) = v20;
    *(v29 + 24) = v16;
    *(v29 + 32) = v15;
    v23 = 40 * v25 + 40;
    v30 = *(a1 + 8);
    v31 = *(a1 + 16) - v30;
    v32 = v29 - v31;
    memcpy((v29 - v31), v30, v31);
    v33 = *(a1 + 8);
    *(a1 + 8) = v32;
    *(a1 + 16) = v23;
    *(a1 + 24) = 0;
    if (v33)
    {
      operator delete(v33);
    }
  }

  else
  {
    *v21 = xmmword_2500C7370;
    *(v21 + 16) = v20;
    *(v21 + 24) = v16;
    *(v21 + 32) = v15;
    v23 = v21 + 40;
  }

  *(a1 + 16) = v23;
  v65 = 0u;
  memset(v64, 0, sizeof(v64));
  LODWORD(v61) = 0;
  std::deque<unsigned int>::push_back(v64, &v61);
  v34 = *(&v65 + 1);
  if (*(&v65 + 1))
  {
    v35 = vneg_f32(0x7F0000007FLL);
    while (1)
    {
      v36 = v34 - 1;
      v37 = *(*(*(&v64[0] + 1) + (((v65 + v36) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v65 + v36) & 0x3FF));
      *(&v65 + 1) = v36;
      std::deque<unsigned int>::__maybe_remove_back_spare[abi:nn200100](v64, 1);
      v38 = *(a2 + 24);
      if (!v38)
      {
        break;
      }

      if (((*(*v38 + 48))(v38, *(a1 + 8) + 40 * v37) & 1) == 0)
      {
        v39 = *(a1 + 8) + 40 * v37;
        v40 = *(v39 + 32);
        v41 = *(v39 + 16);
        v61 = *v39;
        v62 = v41;
        v63 = v40;
        *&v60 = v35;
        *(&v60 + 1) = 0x7F0000007FLL;
        *&v59 = v35;
        *(&v59 + 1) = 0x7F0000007FLL;
        v42 = *(a3 + 24);
        if (!v42)
        {
          break;
        }

        v43 = (*(*v42 + 48))(v42, &v61, &v60, &v59);
        if (v43)
        {
          v44 = v62 == v43;
        }

        else
        {
          v44 = 1;
        }

        if (!v44)
        {
          v45 = v43;
          v46 = HIDWORD(v61) + v43;
          v47 = v62 - v43;
          v48 = *(a1 + 8);
          v49 = -858993459 * ((*(a1 + 16) - v48) >> 3);
          v50 = 5 * v37;
          *(v48 + 8 * v50 + 4) = v49;
          LODWORD(v56) = v49;
          std::deque<unsigned int>::push_back(v64, &v56);
          LODWORD(v56) = -858993459 * ((*(a1 + 16) - *(a1 + 8)) >> 3);
          *(&v56 + 4) = -1;
          HIDWORD(v56) = HIDWORD(v61);
          v57 = v45;
          v58 = v60;
          std::vector<geom::bvh_node<float,(unsigned char)2>>::push_back[abi:nn200100](a1 + 8, &v56);
          v51 = *(a1 + 8);
          v52 = -858993459 * ((*(a1 + 16) - v51) >> 3);
          *(v51 + 8 * v50 + 8) = v52;
          LODWORD(v53) = v52;
          std::deque<unsigned int>::push_back(v64, &v53);
          LODWORD(v53) = -858993459 * ((*(a1 + 16) - *(a1 + 8)) >> 3);
          *(&v53 + 4) = -1;
          HIDWORD(v53) = v46;
          v54 = v47;
          v55 = v59;
          std::vector<geom::bvh_node<float,(unsigned char)2>>::push_back[abi:nn200100](a1 + 8, &v53);
        }
      }

      v34 = *(&v65 + 1);
      if (!*(&v65 + 1))
      {
        goto LABEL_43;
      }
    }

    std::__throw_bad_function_call[abi:nn200100]();
LABEL_45:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_43:
  *a1 = 1;
  std::deque<unsigned int>::~deque[abi:nn200100](v64);
}

uint64_t geom::bvh<float,(unsigned char)2>::build_median(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>::__value_func[abi:nn200100](v6, a2);
  v5[0] = &unk_2862918A8;
  v5[1] = a1;
  v5[3] = v5;
  geom::bvh<float,(unsigned char)2>::build_top_down(a1, v6, v5);
  std::__function::__value_func<unsigned int ()(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)>::~__value_func[abi:nn200100](v5);
  result = std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>::~__value_func[abi:nn200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void geom::bvh<float,(unsigned char)2>::build_surface_area_heuristic(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>::__value_func[abi:nn200100](v3, a2);
  geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<geom::surface_area_heuristic_functor<float,(unsigned char)2>>(a1, v3);
}

void geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<geom::surface_area_heuristic_functor<float,(unsigned char)2>>(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>::__value_func[abi:nn200100](v2, a2);
  operator new();
}

void geom::bvh<float,(unsigned char)2>::build_volume_heuristic(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>::__value_func[abi:nn200100](v3, a2);
  geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<geom::volume_heuristic_functor<float,(unsigned char)2>>(a1, v3);
}

void geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<geom::volume_heuristic_functor<float,(unsigned char)2>>(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>::__value_func[abi:nn200100](v2, a2);
  operator new();
}

void geom::bvh<float,(unsigned char)2>::build_intersection_volume_heuristic(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>::__value_func[abi:nn200100](v3, a2);
  geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<geom::intersection_volume_heuristic_functor<float,(unsigned char)2>>(a1, v3);
}

void geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<geom::intersection_volume_heuristic_functor<float,(unsigned char)2>>(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>::__value_func[abi:nn200100](v2, a2);
  operator new();
}

uint64_t geom::bvh<float,(unsigned char)2>::raycast(void *a1, uint64_t a2, float *a3, unsigned int *a4, double a5, double a6)
{
  *a3 = INFINITY;
  *a4 = -1;
  if (a1[5] == a1[4] || (v7 = a1[1], a1[2] == v7))
  {
    v23 = 0;
    return v23 & 1;
  }

  v12 = 0;
  v13 = 0;
  v14 = 1;
  do
  {
    v15 = v14;
    v85 = a6;
    v16 = (&v85 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v12 & 1)));
    v17 = 1.0 / *v16;
    if (fabsf(*v16) <= 0.000005)
    {
      v17 = INFINITY;
    }

    v86 = v13;
    *(&v86 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v12 & 1))) = v17;
    v12 = 1;
    v13 = v86;
    v14 = 0;
  }

  while ((v15 & 1) != 0);
  v90 = 0u;
  memset(v89, 0, sizeof(v89));
  *v88 = 0;
  *&v88[4] = 0x7F80000000000000;
  v18 = v7[3];
  v19 = v7[4];
  if (*v86.i32 == INFINITY)
  {
    if (vcgt_f32(v18, *&a5).u8[0] & 1) != 0 || (vcgt_f32(*&a5, v19).u8[0])
    {
      goto LABEL_141;
    }

    v20 = vzip2_s32(v18, v86);
    v21 = 0.0;
    v22.i32[0] = 2139095040;
  }

  else
  {
    v22 = vmul_f32(v86, vsub_f32(v18, *&a5));
    v24 = vmul_f32(v86, vsub_f32(v19, *&a5));
    v25 = vcgt_f32(v22, v24).u8[0];
    v26 = (v25 & 1) == 0;
    if (v25)
    {
      v27 = v24.f32[0];
    }

    else
    {
      v27 = v22.f32[0];
    }

    if (v26)
    {
      v22.f32[0] = v24.f32[0];
    }

    v21 = 0.0;
    if (v27 >= 0.0)
    {
      v21 = v27;
    }

    *&v88[4] = v21;
    *&v88[8] = v22.i32[0];
    if (v21 > v22.f32[0])
    {
      goto LABEL_141;
    }

    v20 = vzip2_s32(v18, v86);
  }

  v28 = *(&a5 + 1);
  if (*&v20.i32[1] == INFINITY)
  {
    if (*(&a5 + 1) < *v20.i32 || *(&a5 + 1) > v19.f32[1])
    {
      goto LABEL_141;
    }

    goto LABEL_28;
  }

  *v20.i32 = *&v20.i32[1] * (*v20.i32 - *(&a5 + 1));
  v80 = *&v20.i32[1] * (v19.f32[1] - *(&a5 + 1));
  if (v80 >= *v20.i32)
  {
    v81 = *v20.i32;
  }

  else
  {
    v81 = *&v20.i32[1] * (v19.f32[1] - *(&a5 + 1));
  }

  if (v80 >= *v20.i32)
  {
    *v20.i32 = *&v20.i32[1] * (v19.f32[1] - *(&a5 + 1));
  }

  if (v81 >= v21)
  {
    v21 = v81;
  }

  if (v22.f32[0] >= *v20.i32)
  {
    v22.f32[0] = *v20.i32;
  }

  *&v88[4] = v21;
  *&v88[8] = v22.i32[0];
  if (v21 <= v22.f32[0] && (v21 >= 0.0 || v22.f32[0] >= 0.0))
  {
LABEL_28:
    v83 = v86;
    std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(v89, v88);
    v30 = *(&v90 + 1);
    if (!*(&v90 + 1))
    {
      goto LABEL_141;
    }

    v23 = 0;
    while (1)
    {
      v31 = v30 - 1;
      v32 = ((v90 + v31) * 0x8060180601806019) >> 64;
      v33 = (v32 + ((v90 + v31 - v32) >> 1)) >> 8;
      v34 = *(*(&v89[0] + 1) + 8 * v33) + 12 * (v90 + v31 - 341 * v33);
      v35 = *v34;
      v36 = *(v34 + 4);
      *(&v90 + 1) = v31;
      std::deque<geom::bvh<float,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<float,(unsigned char)2>,float &)>,geom::ray<float,(unsigned char)2>,float &,unsigned int &)::state,std::allocator<geom::bvh<float,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<float,(unsigned char)2>,float &)>,geom::ray<float,(unsigned char)2>,float &,unsigned int &)::state>>::__maybe_remove_back_spare[abi:nn200100](v89, 1);
      if (*a3 < v36)
      {
        goto LABEL_125;
      }

      v37 = a1[1];
      v38 = (v37 + 40 * v35);
      v40 = v38[1];
      v39 = v38[2];
      if (v40 == -1 && v39 == -1)
      {
        v49 = v38[4];
        if (v49)
        {
          v50 = v38[3];
          v51 = (a1[4] + 4 * v50);
          v52 = 4 * (v49 + v50) - 4 * v50;
          do
          {
            v53 = *v51;
            *v88 = 0;
            if (std::function<BOOL ()(unsigned int,geom::ray<float,(unsigned char)2>,float &)>::operator()(a2, v53, v88, a5, a6))
            {
              if (*v88 < *a3 || (*v88 == *a3 ? (v54 = v53 >= *a4) : (v54 = 1), !v54))
              {
                *a3 = *v88;
                *a4 = v53;
              }

              v23 = 1;
            }

            ++v51;
            v52 -= 4;
          }

          while (v52);
        }

        goto LABEL_125;
      }

      v42 = (v37 + 40 * v40);
      *v88 = v40;
      *&v88[4] = 0x7F80000000000000;
      v45 = v42[3];
      v44 = v42[4];
      v43 = v42 + 3;
      v46 = (v37 + 40 * v39 + 24);
      if (v83.f32[0] == INFINITY)
      {
        if (vcgt_f32(v45, *&a5).u8[0] & 1) != 0 || (vcgt_f32(*&a5, v44).u8[0])
        {
          v61 = 0;
          *v87 = v39;
          *&v87[4] = 0x7F80000000000000;
          v62 = *(v46 + 1);
          v47 = 0.0;
          goto LABEL_83;
        }

        v47 = 0.0;
        v48.i32[0] = 2139095040;
      }

      else
      {
        v48 = vmul_f32(v83, vsub_f32(v45, *&a5));
        v55 = vmul_f32(v83, vsub_f32(v44, *&a5));
        v56 = vcgt_f32(v48, v55).u8[0];
        v57 = (v56 & 1) == 0;
        if (v56)
        {
          v58 = v55.f32[0];
        }

        else
        {
          v58 = v48.f32[0];
        }

        if (v57)
        {
          v48.f32[0] = v55.f32[0];
        }

        if (v58 >= 0.0)
        {
          v47 = v58;
        }

        else
        {
          v47 = 0.0;
        }

        *&v88[4] = v47;
        *&v88[8] = v48.i32[0];
        if (v47 > v48.f32[0])
        {
          v61 = 0;
          *v87 = v39;
          *&v87[4] = 0x7F80000000000000;
          v62 = *(v46 + 1);
LABEL_89:
          v68 = v83.f32[0] * (COERCE_FLOAT(*v46) - *&a5);
          v69 = v83.f32[0] * (*&v62 - *&a5);
          if (v69 >= v68)
          {
            v70 = v83.f32[0] * (COERCE_FLOAT(*v46) - *&a5);
          }

          else
          {
            v70 = v69;
          }

          if (v69 >= v68)
          {
            v68 = v69;
          }

          if (v70 >= 0.0)
          {
            v67 = v70;
          }

          else
          {
            v67 = 0.0;
          }

          *&v87[4] = v67;
          *&v87[8] = v68;
          if (v67 > v68)
          {
            goto LABEL_123;
          }

          goto LABEL_98;
        }
      }

      v59 = v43->f32[1];
      if (v83.f32[1] == INFINITY)
      {
        if (v28 < v59 || v28 > v43[1].f32[1])
        {
          goto LABEL_66;
        }
      }

      else
      {
        v63 = v83.f32[1] * (v59 - v28);
        v64 = v83.f32[1] * (v43[1].f32[1] - v28);
        if (v64 >= v63)
        {
          v65 = v63;
        }

        else
        {
          v65 = v83.f32[1] * (v43[1].f32[1] - v28);
        }

        if (v64 >= v63)
        {
          v63 = v83.f32[1] * (v43[1].f32[1] - v28);
        }

        if (v65 >= v47)
        {
          v47 = v65;
        }

        if (v48.f32[0] >= v63)
        {
          v48.f32[0] = v63;
        }

        *&v88[4] = v47;
        *&v88[8] = v48.i32[0];
        if (v47 > v48.f32[0])
        {
LABEL_66:
          v61 = 0;
          goto LABEL_82;
        }
      }

      v61 = v48.f32[0] >= 0.0 || v47 >= 0.0;
LABEL_82:
      *v87 = v39;
      *&v87[4] = 0x7F80000000000000;
      v62 = *(v46 + 1);
      if (v83.f32[0] != INFINITY)
      {
        goto LABEL_89;
      }

LABEL_83:
      if (*&a5 < COERCE_FLOAT(*v46) || *&a5 > *&v62)
      {
        goto LABEL_123;
      }

      v67 = 0.0;
      v68 = INFINITY;
LABEL_98:
      v71 = v46[1];
      if (v83.f32[1] == INFINITY)
      {
        if (v28 >= v71 && v28 <= v46[3])
        {
          goto LABEL_114;
        }
      }

      else
      {
        v73 = v83.f32[1] * (v71 - v28);
        v74 = v83.f32[1] * (v46[3] - v28);
        if (v74 >= v73)
        {
          v75 = v73;
        }

        else
        {
          v75 = v83.f32[1] * (v46[3] - v28);
        }

        if (v74 >= v73)
        {
          v73 = v83.f32[1] * (v46[3] - v28);
        }

        if (v75 >= v67)
        {
          v67 = v75;
        }

        if (v68 >= v73)
        {
          v68 = v73;
        }

        *&v87[4] = v67;
        *&v87[8] = v68;
        if (v67 <= v68)
        {
LABEL_114:
          v76 = v67 >= 0.0;
          if (v68 >= 0.0)
          {
            v76 = 1;
          }

          v77 = v67 < v47 && v76;
          if (v77 && v61)
          {
            v78 = *&v88[8];
            v79 = *v88;
            *v88 = *v87;
            *&v88[8] = *&v87[8];
            *v87 = v79;
            *&v87[8] = v78;
          }

          else if (!v76)
          {
            if (!v61)
            {
              goto LABEL_125;
            }

LABEL_124:
            std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(v89, v88);
            goto LABEL_125;
          }

          std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(v89, v87);
        }
      }

LABEL_123:
      if (v61)
      {
        goto LABEL_124;
      }

LABEL_125:
      v30 = *(&v90 + 1);
      if (!*(&v90 + 1))
      {
        goto LABEL_142;
      }
    }
  }

LABEL_141:
  v23 = 0;
LABEL_142:
  std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::~deque[abi:nn200100](v89);
  return v23 & 1;
}

uint64_t std::function<BOOL ()(unsigned int,geom::ray<float,(unsigned char)2>,float &)>::operator()(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  *v12 = a4;
  *&v12[1] = a5;
  v11 = a2;
  v5 = *(a1 + 24);
  if (v5)
  {
    return (*(*v5 + 48))(v5, &v11, v12, a3);
  }

  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return geom::bvh<float,(unsigned char)2>::find_all_intersections(v7, v8, v9, v10);
}

uint64_t geom::bvh<float,(unsigned char)2>::find_all_intersections(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8) = *a4;
  if (*(result + 16) != *(result + 8))
  {
    v7 = result;
    v21 = 0u;
    memset(v20, 0, sizeof(v20));
    v19 = 0;
    std::deque<unsigned int>::push_back(v20, &v19);
    v8 = *(&v21 + 1);
    if (*(&v21 + 1))
    {
      while (1)
      {
        v9 = v8 - 1;
        v10 = *(*(*(&v20[0] + 1) + (((v21 + v9) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v21 + v9) & 0x3FF));
        v11 = *(v7 + 8);
        *(&v21 + 1) = v9;
        std::deque<unsigned int>::__maybe_remove_back_spare[abi:nn200100](v20, 1);
        v12 = *(a3 + 24);
        if (!v12)
        {
          break;
        }

        v13 = (v11 + 40 * v10);
        if ((*(*v12 + 48))(v12, v13 + 6))
        {
          if (v13[1] == -1 && v13[2] == -1)
          {
            v14 = v13[4];
            if (v14)
            {
              v15 = v13[3];
              v16 = (*(v7 + 32) + 4 * v15);
              v17 = 4 * (v14 + v15) - 4 * v15;
              do
              {
                v19 = *v16;
                if (std::function<BOOL ()>::operator()(a2, v19))
                {
                  std::vector<unsigned int>::push_back[abi:nn200100](a4, &v19);
                }

                ++v16;
                v17 -= 4;
              }

              while (v17);
            }
          }

          else
          {
            std::deque<unsigned int>::push_back(v20, v13 + 1);
            std::deque<unsigned int>::push_back(v20, v13 + 2);
          }
        }

        v8 = *(&v21 + 1);
        if (!*(&v21 + 1))
        {
          return std::deque<unsigned int>::~deque[abi:nn200100](v20);
        }
      }

      v18 = std::__throw_bad_function_call[abi:nn200100]();
      return geom::bvh<float,(unsigned char)2>::tree_statistics(v18);
    }

    else
    {
      return std::deque<unsigned int>::~deque[abi:nn200100](v20);
    }
  }

  return result;
}

uint64_t geom::bvh<float,(unsigned char)2>::tree_statistics(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  if (*(a1 + 16) == *(a1 + 8))
  {
    *a2 = 0;
    *a3 = 0;
  }

  else
  {
    v16 = 0x100000000;
    std::deque<std::pair<unsigned int,unsigned int>>::push_back(v17, &v16);
    v6 = *(&v18 + 1);
    *a2 = 0;
    *a3 = 0;
    if (v6)
    {
      do
      {
        v7 = v6 - 1;
        v8 = (*(*(&v17[0] + 1) + (((v18 + v7) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v18 + v7) & 0x1FF));
        v10 = *v8;
        v9 = v8[1];
        *(&v18 + 1) = v7;
        std::deque<std::pair<unsigned int,unsigned int>>::__maybe_remove_back_spare[abi:nn200100](v17, 1);
        v11 = *(a1 + 8) + 40 * v10;
        v12 = *a2;
        if (*a2 <= v9)
        {
          v12 = v9;
        }

        *a2 = v12;
        *a3 += v9;
        v13 = *(v11 + 4);
        if (v13 != -1)
        {
          v16 = v13 | ((v9 + 1) << 32);
          std::deque<std::pair<unsigned int,unsigned int>>::push_back(v17, &v16);
        }

        v14 = *(v11 + 8);
        if (v14 != -1)
        {
          v16 = v14 | ((v9 + 1) << 32);
          std::deque<std::pair<unsigned int,unsigned int>>::push_back(v17, &v16);
        }

        v6 = *(&v18 + 1);
      }

      while (*(&v18 + 1));
    }
  }

  return std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](v17);
}

uint64_t geom::bvh<float,(unsigned char)2>::primitives_for_node_index(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8) + 40 * a2;
  v3 = *(v2 + 12);
  result = *(a1 + 32) + 4 * v3;
  v5 = (*(v2 + 16) + v3) - v3;
  return result;
}

void std::vector<geom::bvh_node<float,(unsigned char)2>>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::bvh_node<float,(unsigned char)2>>>(a1, v12);
    }

    v13 = 40 * v9;
    v14 = *a2;
    v15 = a2[1];
    *(v13 + 32) = *(a2 + 4);
    *v13 = v14;
    *(v13 + 16) = v15;
    v8 = 40 * v9 + 40;
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
    v7 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = v4 + 40;
  }

  *(a1 + 8) = v8;
}

void geom::bvh<float,(unsigned char)2>::partition_node_median(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v6[0] = &unk_286291AA8;
  v6[1] = a1;
  v6[3] = v6;
  v5[0] = &unk_286291BC8;
  v5[1] = a1;
  v5[2] = v6;
  v5[3] = v5;
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  std::function<void ()(geom::bvh_node<float,(unsigned char)2> const&,int,float &,unsigned int &)>::operator()(v5, a2, 0);
  std::function<void ()(geom::bvh_node<float,(unsigned char)2> const&,int,float &,unsigned int &)>::operator()(v5, a2, 1);
  operator new();
}

uint64_t std::function<void ()(geom::bvh_node<float,(unsigned char)2> const&,int,float &,unsigned int &)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v9 = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, a2, &v9);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return geom::bvh<float,(unsigned char)2>::partition_node_middle(v5, v6, v7, v8);
}

uint64_t geom::bvh<float,(unsigned char)2>::partition_node_middle(uint64_t a1, float32x2_t *a2, float32x2_t *a3, float32x2_t *a4)
{
  v8 = a2[3];
  v9 = vsub_f32(a2[4], v8);
  v38 = a2[4];
  v10 = *&vcgt_f32(vdup_lane_s32(v9, 1), v9) & 1;
  v11 = *(&v38 & 0xFFFFFFFFFFFFFFFBLL | (4 * v10));
  v39 = v8;
  *&v12 = (*(&v39 & 0xFFFFFFFFFFFFFFFBLL | (4 * v10)) + v11) * 0.5;
  v13 = *(a1 + 32);
  v14 = a2[1].u32[1];
  v15 = (v13 + 4 * (a2[2].u32[0] + v14));
  v40[0] = a1;
  v40[1] = v10 | (v12 << 32);
  v16 = std::__partition_impl[abi:nn200100]<geom::bvh<float,(unsigned char)2>::partition_node_middle(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>((v13 + 4 * v14), v15, v40);
  v17 = a2[1].u32[1];
  v18 = a2[2].u32[0];
  v19 = (*(a1 + 32) + 4 * v17);
  v20 = (v16 - v19) >> 2;
  v21 = v18 == v20 || v20 == 0;
  v22 = v18 >> 1;
  if (v21)
  {
    result = v22;
  }

  else
  {
    result = v20;
  }

  v24 = 0x7F0000007FLL;
  v25 = vneg_f32(0x7F0000007FLL);
  v26 = v25;
  v27 = 0x7F0000007FLL;
  if (result)
  {
    v28 = 4 * (result + v17) - 4 * v17;
    v26 = vneg_f32(0x7F0000007FLL);
    do
    {
      v29 = *v19;
      v19 += 4;
      v30 = (*(a1 + 80) + 16 * v29);
      v26 = vminnm_f32(v26, *v30);
      v27 = vmaxnm_f32(v27, v30[1]);
      v28 -= 4;
    }

    while (v28);
  }

  *a3 = v26;
  a3[1] = v27;
  v31 = a2[2].i32[0];
  if (v31 != result)
  {
    v32 = a2[1].i32[1];
    v33 = (v31 + v32);
    v34 = (*(a1 + 32) + 4 * (v32 + result));
    v35 = 4 * v33 - 4 * (v32 + result);
    v24 = 0x7F0000007FLL;
    v25 = vneg_f32(0x7F0000007FLL);
    do
    {
      v36 = *v34++;
      v37 = (*(a1 + 80) + 16 * v36);
      v25 = vminnm_f32(v25, *v37);
      v24 = vmaxnm_f32(v24, v37[1]);
      v35 -= 4;
    }

    while (v35);
  }

  *a4 = v25;
  a4[1] = v24;
  return result;
}

uint64_t geom::bvh<double,(unsigned char)2>::bvh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10[0] = a2;
  v10[1] = a3;
  v9[0] = a4;
  v9[1] = a5;
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  _ZN4geom19make_external_arrayINS_5sliceIDv2_dEEEENSt3__19enable_ifIXaa21collection_has_size_vIT_E21collection_has_data_vIS6_EENS_14external_arrayINS6_10value_typeEEEE4typeERKS6_b(v10, a6, a1 + 56);
  geom::make_external_array<geom::slice<geom::bbox<double,(unsigned char)2>>>(v9, a6, a1 + 80);
  return a1;
}

void *geom::make_external_array<geom::slice<geom::bbox<double,(unsigned char)2>>>@<X0>(void *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  if (v3)
  {
    if (a2)
    {
      operator new[]();
    }

    *a3 = *result;
    *(a3 + 8) = v3;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  *(a3 + 16) = 0;
  return result;
}

void *geom::bvh<double,(unsigned char)2>::reset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v15[0] = a4;
  v15[1] = a5;
  *a1 = 0;
  if (!a3)
  {
    a2 = 0;
  }

  if (a3 && a6)
  {
    operator new[]();
  }

  if (*(a1 + 72) == 1)
  {
    v10 = *(a1 + 56);
    if (v10)
    {
      MEMORY[0x25305E3D0](v10, 0x1000C80451B5BE8);
    }
  }

  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  *(a1 + 72) = 0;
  result = geom::make_external_array<geom::slice<geom::bbox<double,(unsigned char)2>>>(v15, a6, v13);
  if (*(a1 + 96) == 1)
  {
    result = *(a1 + 80);
    if (result)
    {
      result = MEMORY[0x25305E3D0](result, 0x1000C80E0EAB150);
    }
  }

  v12 = v13[1];
  *(a1 + 80) = v13[0];
  *(a1 + 88) = v12;
  *(a1 + 96) = v14;
  *(a1 + 40) = *(a1 + 32);
  *(a1 + 16) = *(a1 + 8);
  return result;
}

uint64_t geom::bvh<double,(unsigned char)2>::reset(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  *result = 0;
  if (*(result + 72) == 1)
  {
    result = *(result + 56);
    if (result)
    {
      result = MEMORY[0x25305E3D0](result, 0x1000C80451B5BE8);
    }
  }

  v6 = *(a2 + 8);
  *(v5 + 56) = *a2;
  *(v5 + 64) = v6;
  *(v5 + 72) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (*(v5 + 96) == 1)
  {
    result = *(v5 + 80);
    if (result)
    {
      result = MEMORY[0x25305E3D0](result, 0x1000C80E0EAB150);
    }
  }

  v7 = *(a3 + 8);
  *(v5 + 80) = *a3;
  *(v5 + 88) = v7;
  *(v5 + 96) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(v5 + 40) = *(v5 + 32);
  *(v5 + 16) = *(v5 + 8);
  return result;
}

uint64_t geom::bvh<double,(unsigned char)2>::iterator::primitives(unsigned int *a1)
{
  v1 = *(*a1 + 8) + (a1[2] << 6);
  v2 = *(v1 + 12);
  result = *(*a1 + 32) + 4 * v2;
  v4 = (*(v1 + 16) + v2) - v2;
  return result;
}

unsigned int *geom::bvh<double,(unsigned char)2>::iterator::operator++(unsigned int *result)
{
  v1 = result[2];
  if (v1 != -1)
  {
    v2 = v1 + 1;
    result[2] = v2;
    if (v2 >= (*(*result + 16) - *(*result + 8)) >> 6)
    {
      result[2] = -1;
    }
  }

  return result;
}

uint64_t geom::bvh<double,(unsigned char)2>::iterator::operator++(void *a1)
{
  result = *a1;
  v3 = a1[1];
  if (v3 != -1)
  {
    v4 = (v3 + 1);
    *(a1 + 2) = v4;
    if (v4 >= (*(result + 16) - *(result + 8)) >> 6)
    {
      *(a1 + 2) = -1;
    }
  }

  return result;
}

uint64_t geom::bvh<double,(unsigned char)2>::build_middle_split(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>::__value_func[abi:nn200100](v6, a2);
  v5[0] = &unk_286291CD8;
  v5[1] = a1;
  v5[3] = v5;
  geom::bvh<double,(unsigned char)2>::build_top_down(a1, v6, v5);
  std::__function::__value_func<unsigned int ()(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)>::~__value_func[abi:nn200100](v5);
  result = std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>::~__value_func[abi:nn200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void geom::bvh<double,(unsigned char)2>::build_top_down(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = *MEMORY[0x277D85DE8];
  if ((*a1 & 1) == 0)
  {
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
  }

  std::vector<float>::resize((a1 + 32), *(a1 + 88));
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v6 == v7)
  {
    if (*(a1 + 88))
    {
      goto LABEL_19;
    }

LABEL_18:
    *a1 = 1;
    goto LABEL_44;
  }

  v8 = 0;
  v9 = (v7 - v6 - 4) >> 2;
  v10 = vdupq_n_s64(v9);
  v11 = (v9 + 4) & 0x7FFFFFFFFFFFFFFCLL;
  v12 = v6 + 8;
  do
  {
    v13 = vdupq_n_s64(v8);
    v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_2500C1680)));
    if (vuzp1_s16(v14, *v10.i8).u8[0])
    {
      *(v12 - 2) = v8;
    }

    if (vuzp1_s16(v14, *&v10).i8[2])
    {
      *(v12 - 1) = v8 + 1;
    }

    if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_2500C1670)))).i32[1])
    {
      *v12 = v8 + 2;
      v12[1] = v8 + 3;
    }

    v8 += 4;
    v12 += 4;
  }

  while (v11 != v8);
  if (!*(a1 + 88))
  {
    goto LABEL_18;
  }

  if (v6 != v7)
  {
    v15 = vdupq_n_s64(0x7FF0000000000000uLL);
    v16 = vdupq_n_s64(0xFFF0000000000000);
    v17 = v6;
    do
    {
      v18 = *v17;
      v17 += 4;
      v19 = (*(a1 + 80) + 32 * v18);
      v15 = vminnmq_f64(v15, *v19);
      v16 = vmaxnmq_f64(v16, v19[1]);
    }

    while (v17 != v7);
    goto LABEL_20;
  }

LABEL_19:
  v16 = vdupq_n_s64(0xFFF0000000000000);
  v15 = vdupq_n_s64(0x7FF0000000000000uLL);
LABEL_20:
  v20 = (v7 - v6) >> 2;
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  if (v21 >= v22)
  {
    v24 = *(a1 + 8);
    v25 = (v21 - v24) >> 6;
    v26 = v25 + 1;
    if ((v25 + 1) >> 58)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v27 = v22 - v24;
    if (v27 >> 5 > v26)
    {
      v26 = v27 >> 5;
    }

    if (v27 >= 0x7FFFFFFFFFFFFFC0)
    {
      v28 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v26;
    }

    if (v28)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::bvh_node<double,(unsigned char)2>>>(a1 + 8, v28);
    }

    v29 = v25 << 6;
    *v29 = xmmword_2500C7370;
    *(v29 + 16) = v20;
    *(v29 + 20) = v69;
    *(v29 + 28) = DWORD2(v69);
    *(v29 + 32) = v15;
    *(v29 + 48) = v16;
    v23 = (v25 << 6) + 64;
    v30 = *(a1 + 8);
    v31 = *(a1 + 16) - v30;
    v32 = v29 - v31;
    memcpy((v29 - v31), v30, v31);
    v33 = *(a1 + 8);
    *(a1 + 8) = v32;
    *(a1 + 16) = v23;
    *(a1 + 24) = 0;
    if (v33)
    {
      operator delete(v33);
    }
  }

  else
  {
    *v21 = xmmword_2500C7370;
    *(v21 + 16) = v20;
    *(v21 + 20) = v69;
    *(v21 + 28) = DWORD2(v69);
    *(v21 + 32) = v15;
    *(v21 + 48) = v16;
    v23 = v21 + 64;
  }

  *(a1 + 16) = v23;
  v68 = 0u;
  memset(v67, 0, sizeof(v67));
  LODWORD(v69) = 0;
  std::deque<unsigned int>::push_back(v67, &v69);
  v34 = *(&v68 + 1);
  if (*(&v68 + 1))
  {
    v53 = vdupq_n_s64(0xFFF0000000000000);
    v54 = vdupq_n_s64(0x7FF0000000000000uLL);
    do
    {
      v35 = v34 - 1;
      v36 = *(*(*(&v67[0] + 1) + (((v68 + v35) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v68 + v35) & 0x3FF));
      *(&v68 + 1) = v35;
      std::deque<unsigned int>::__maybe_remove_back_spare[abi:nn200100](v67, 1);
      v37 = *(a2 + 24);
      if (!v37)
      {
LABEL_45:
        std::__throw_bad_function_call[abi:nn200100]();
      }

      if (((*(*v37 + 48))(v37, *(a1 + 8) + (v36 << 6)) & 1) == 0)
      {
        v38 = (*(a1 + 8) + (v36 << 6));
        v39 = v38[3];
        v41 = *v38;
        v40 = v38[1];
        v71 = v38[2];
        v72 = v39;
        v69 = v41;
        v70 = v40;
        v65 = v54;
        v66 = v53;
        v63 = v54;
        v64 = v53;
        v42 = *(a3 + 24);
        if (!v42)
        {
          goto LABEL_45;
        }

        v43 = (*(*v42 + 48))(v42, &v69, &v65, &v63);
        if (v43)
        {
          v44 = v70 == v43;
        }

        else
        {
          v44 = 1;
        }

        if (!v44)
        {
          v45 = v43;
          v46 = HIDWORD(v69) + v43;
          v47 = v70 - v43;
          v48 = *(a1 + 8);
          v49 = (*(a1 + 16) - v48) >> 6;
          *(v48 + (v36 << 6) + 4) = v49;
          LODWORD(v59) = v49;
          std::deque<unsigned int>::push_back(v67, &v59);
          LODWORD(v59) = (*(a1 + 16) - *(a1 + 8)) >> 6;
          *(&v59 + 4) = -1;
          HIDWORD(v59) = HIDWORD(v69);
          v60 = v45;
          v61 = v65;
          v62 = v66;
          std::vector<geom::bvh_node<double,(unsigned char)2>>::push_back[abi:nn200100](a1 + 8, &v59);
          v50 = *(a1 + 8);
          v51 = (*(a1 + 16) - v50) >> 6;
          *(v50 + (v36 << 6) + 8) = v51;
          LODWORD(v55) = v51;
          std::deque<unsigned int>::push_back(v67, &v55);
          LODWORD(v55) = (*(a1 + 16) - *(a1 + 8)) >> 6;
          *(&v55 + 4) = -1;
          HIDWORD(v55) = v46;
          v56 = v47;
          v57 = v63;
          v58 = v64;
          std::vector<geom::bvh_node<double,(unsigned char)2>>::push_back[abi:nn200100](a1 + 8, &v55);
        }
      }

      v34 = *(&v68 + 1);
    }

    while (*(&v68 + 1));
  }

  *a1 = 1;
  std::deque<unsigned int>::~deque[abi:nn200100](v67);
LABEL_44:
  v52 = *MEMORY[0x277D85DE8];
}

uint64_t geom::bvh<double,(unsigned char)2>::build_median(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>::__value_func[abi:nn200100](v6, a2);
  v5[0] = &unk_286291D68;
  v5[1] = a1;
  v5[3] = v5;
  geom::bvh<double,(unsigned char)2>::build_top_down(a1, v6, v5);
  std::__function::__value_func<unsigned int ()(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)>::~__value_func[abi:nn200100](v5);
  result = std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>::~__value_func[abi:nn200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void geom::bvh<double,(unsigned char)2>::build_surface_area_heuristic(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>::__value_func[abi:nn200100](v3, a2);
  geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)2>>(a1, v3);
}

void geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)2>>(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>::__value_func[abi:nn200100](v2, a2);
  operator new();
}

void geom::bvh<double,(unsigned char)2>::build_volume_heuristic(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>::__value_func[abi:nn200100](v3, a2);
  geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<geom::volume_heuristic_functor<double,(unsigned char)2>>(a1, v3);
}

void geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<geom::volume_heuristic_functor<double,(unsigned char)2>>(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>::__value_func[abi:nn200100](v2, a2);
  operator new();
}

void geom::bvh<double,(unsigned char)2>::build_intersection_volume_heuristic(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>::__value_func[abi:nn200100](v3, a2);
  geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<geom::intersection_volume_heuristic_functor<double,(unsigned char)2>>(a1, v3);
}

void geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<geom::intersection_volume_heuristic_functor<double,(unsigned char)2>>(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>::__value_func[abi:nn200100](v2, a2);
  operator new();
}

uint64_t geom::bvh<double,(unsigned char)2>::raycast(void *a1, uint64_t a2, double *a3, unsigned int *a4, float64x2_t a5, __n128 a6)
{
  *a3 = INFINITY;
  *a4 = -1;
  if (a1[5] == a1[4] || (v7 = a1[1], a1[2] == v7))
  {
    v22 = 0;
    return v22 & 1;
  }

  v11 = 0;
  v12 = 0uLL;
  v13 = 1;
  do
  {
    v14 = v13;
    v86 = a6;
    v15 = (&v86 & 0xFFFFFFFFFFFFFFF7 | (8 * (v11 & 1)));
    v16 = 1.0 / *v15;
    if (fabs(*v15) <= 1.0e-10)
    {
      v16 = INFINITY;
    }

    v87 = v12;
    *(&v87 & 0xFFFFFFFFFFFFFFF7 | (8 * (v11 & 1))) = v16;
    v11 = 1;
    v12 = v87;
    v13 = 0;
  }

  while ((v14 & 1) != 0);
  v91 = 0u;
  memset(v90, 0, sizeof(v90));
  *v89 = 0;
  *&v89[8] = xmmword_2500C7380;
  v17 = v7[2];
  v18 = v7[3];
  if (*v87.i64 == INFINITY)
  {
    if (vmovn_s64(vcgtq_f64(v17, a5)).u8[0] & 1) != 0 || (vmovn_s64(vcgtq_f64(a5, v18)).u8[0])
    {
      goto LABEL_143;
    }

    v19 = vzip2q_s64(v17, v87);
    v20 = 0.0;
    v21 = INFINITY;
  }

  else
  {
    v23 = vmulq_f64(v87, vsubq_f64(v17, a5));
    v24 = vmulq_f64(v87, vsubq_f64(v18, a5));
    v25 = vmovn_s64(vcgtq_f64(v23, v24)).u8[0];
    v26 = (v25 & 1) == 0;
    if (v25)
    {
      v27 = v24.f64[0];
    }

    else
    {
      v27 = v23.f64[0];
    }

    if (v26)
    {
      v21 = v24.f64[0];
    }

    else
    {
      v21 = v23.f64[0];
    }

    v20 = 0.0;
    if (v27 >= 0.0)
    {
      v20 = v27;
    }

    *&v89[8] = v20;
    *&v89[16] = v21;
    if (v20 > v21)
    {
      goto LABEL_143;
    }

    v19 = vzip2q_s64(v17, v87);
  }

  v28 = a5.f64[1];
  if (*&v19.i64[1] == INFINITY)
  {
    if (a5.f64[1] < *v19.i64 || a5.f64[1] > v18.f64[1])
    {
      goto LABEL_143;
    }

    goto LABEL_28;
  }

  *v19.i64 = *&v19.i64[1] * (*v19.i64 - a5.f64[1]);
  v78 = *&v19.i64[1] * (v18.f64[1] - a5.f64[1]);
  if (v78 >= *v19.i64)
  {
    v79 = *v19.i64;
  }

  else
  {
    v79 = *&v19.i64[1] * (v18.f64[1] - a5.f64[1]);
  }

  if (v78 < *v19.i64)
  {
    v78 = *v19.i64;
  }

  if (v79 >= v20)
  {
    v80 = v79;
  }

  else
  {
    v80 = v20;
  }

  if (v21 >= v78)
  {
    v81 = v78;
  }

  else
  {
    v81 = v21;
  }

  *&v89[8] = v80;
  *&v89[16] = v81;
  if (v80 <= v81 && (v80 >= 0.0 || v81 >= 0.0))
  {
LABEL_28:
    v83 = v87;
    std::deque<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state,std::allocator<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state>>::push_back(v90, v89);
    v30 = *(&v91 + 1);
    if (!*(&v91 + 1))
    {
      goto LABEL_143;
    }

    v22 = 0;
    while (1)
    {
      v31 = v30 - 1;
      v32 = (*(*(&v90[0] + 1) + 8 * ((v91 + v31) / 0xAAuLL)) + 24 * ((v91 + v31) % 0xAAuLL));
      v33 = *v32;
      v34 = v32[1];
      *(&v91 + 1) = v31;
      std::deque<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state,std::allocator<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state>>::__maybe_remove_back_spare[abi:nn200100](v90, 1);
      if (*a3 < v34)
      {
        goto LABEL_125;
      }

      v35 = a1[1];
      v36 = (v35 + (v33 << 6));
      v38 = v36[1];
      v37 = v36[2];
      if (v38 == -1 && v37 == -1)
      {
        v47 = v36[4];
        if (v47)
        {
          v48 = v36[3];
          v49 = (a1[4] + 4 * v48);
          v50 = 4 * (v47 + v48) - 4 * v48;
          do
          {
            v51 = *v49;
            *v89 = 0;
            if (std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>::operator()(a2, v51, v89, a5, a6))
            {
              if (*v89 < *a3 || (*v89 == *a3 ? (v52 = v51 >= *a4) : (v52 = 1), !v52))
              {
                *a3 = *v89;
                *a4 = v51;
              }

              v22 = 1;
            }

            ++v49;
            v50 -= 4;
          }

          while (v50);
        }

        goto LABEL_125;
      }

      v40 = (v35 + (v38 << 6));
      *v89 = v38;
      *&v89[8] = xmmword_2500C7380;
      v43 = v40[2];
      v42 = v40[3];
      v41 = v40 + 2;
      v44 = (v35 + (v37 << 6));
      if (v83.f64[0] == INFINITY)
      {
        if (vmovn_s64(vcgtq_f64(v43, a5)).u8[0] & 1) != 0 || (vmovn_s64(vcgtq_f64(a5, v42)).u8[0])
        {
          v59 = 0;
          *v88 = v37;
          *&v88[8] = xmmword_2500C7380;
          v60 = v44[6];
          v45 = 0.0;
          goto LABEL_83;
        }

        v45 = 0.0;
        v46.f64[0] = INFINITY;
      }

      else
      {
        v46 = vmulq_f64(v83, vsubq_f64(v43, a5));
        v53 = vmulq_f64(v83, vsubq_f64(v42, a5));
        v54 = vmovn_s64(vcgtq_f64(v46, v53)).u8[0];
        v55 = (v54 & 1) == 0;
        if (v54)
        {
          v56 = v53.f64[0];
        }

        else
        {
          v56 = v46.f64[0];
        }

        if (v55)
        {
          v46.f64[0] = v53.f64[0];
        }

        if (v56 >= 0.0)
        {
          v45 = v56;
        }

        else
        {
          v45 = 0.0;
        }

        *&v89[8] = v45;
        *&v89[16] = v46.f64[0];
        if (v45 > v46.f64[0])
        {
          v59 = 0;
          *v88 = v37;
          *&v88[8] = xmmword_2500C7380;
          v60 = v44[6];
LABEL_89:
          v66 = v83.f64[0] * (v44[4] - a5.f64[0]);
          v67 = v83.f64[0] * (v60 - a5.f64[0]);
          if (v67 >= v66)
          {
            v68 = v83.f64[0] * (v44[4] - a5.f64[0]);
          }

          else
          {
            v68 = v67;
          }

          if (v67 >= v66)
          {
            v66 = v67;
          }

          if (v68 >= 0.0)
          {
            v65 = v68;
          }

          else
          {
            v65 = 0.0;
          }

          *&v88[8] = v65;
          *&v88[16] = v66;
          if (v65 > v66)
          {
            goto LABEL_123;
          }

          goto LABEL_98;
        }
      }

      v57 = v41->f64[1];
      if (v83.f64[1] == INFINITY)
      {
        if (v28 < v57 || v28 > v41[1].f64[1])
        {
          goto LABEL_66;
        }
      }

      else
      {
        v61 = v83.f64[1] * (v57 - v28);
        v62 = v83.f64[1] * (v41[1].f64[1] - v28);
        if (v62 >= v61)
        {
          v63 = v61;
        }

        else
        {
          v63 = v83.f64[1] * (v41[1].f64[1] - v28);
        }

        if (v62 >= v61)
        {
          v61 = v83.f64[1] * (v41[1].f64[1] - v28);
        }

        if (v63 >= v45)
        {
          v45 = v63;
        }

        if (v46.f64[0] >= v61)
        {
          v46.f64[0] = v61;
        }

        *&v89[8] = v45;
        *&v89[16] = v46.f64[0];
        if (v45 > v46.f64[0])
        {
LABEL_66:
          v59 = 0;
          goto LABEL_82;
        }
      }

      v59 = v46.f64[0] >= 0.0 || v45 >= 0.0;
LABEL_82:
      *v88 = v37;
      *&v88[8] = xmmword_2500C7380;
      v60 = v44[6];
      if (v83.f64[0] != INFINITY)
      {
        goto LABEL_89;
      }

LABEL_83:
      if (a5.f64[0] < v44[4] || a5.f64[0] > v60)
      {
        goto LABEL_123;
      }

      v65 = 0.0;
      v66 = INFINITY;
LABEL_98:
      v69 = v44[5];
      if (v83.f64[1] == INFINITY)
      {
        if (v28 >= v69 && v28 <= v44[7])
        {
          goto LABEL_114;
        }
      }

      else
      {
        v71 = v83.f64[1] * (v69 - v28);
        v72 = v83.f64[1] * (v44[7] - v28);
        if (v72 >= v71)
        {
          v73 = v71;
        }

        else
        {
          v73 = v83.f64[1] * (v44[7] - v28);
        }

        if (v72 >= v71)
        {
          v71 = v83.f64[1] * (v44[7] - v28);
        }

        if (v73 >= v65)
        {
          v65 = v73;
        }

        if (v66 >= v71)
        {
          v66 = v71;
        }

        *&v88[8] = v65;
        *&v88[16] = v66;
        if (v65 <= v66)
        {
LABEL_114:
          v74 = v65 >= 0.0;
          if (v66 >= 0.0)
          {
            v74 = 1;
          }

          v75 = v65 < v45 && v74;
          if (v75 && v59)
          {
            v76 = *&v89[16];
            v77 = *v89;
            *v89 = *v88;
            *&v89[16] = *&v88[16];
            *v88 = v77;
            *&v88[16] = v76;
          }

          else if (!v74)
          {
            if (!v59)
            {
              goto LABEL_125;
            }

LABEL_124:
            std::deque<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state,std::allocator<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state>>::push_back(v90, v89);
            goto LABEL_125;
          }

          std::deque<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state,std::allocator<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state>>::push_back(v90, v88);
        }
      }

LABEL_123:
      if (v59)
      {
        goto LABEL_124;
      }

LABEL_125:
      v30 = *(&v91 + 1);
      if (!*(&v91 + 1))
      {
        goto LABEL_144;
      }
    }
  }

LABEL_143:
  v22 = 0;
LABEL_144:
  std::deque<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state,std::allocator<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state>>::~deque[abi:nn200100](v90);
  return v22 & 1;
}

uint64_t std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>::operator()(uint64_t a1, int a2, uint64_t a3, __n128 a4, __n128 a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v11 = a2;
  v5 = *(a1 + 24);
  if (v5)
  {
    return (*(*v5 + 48))(v5, &v11, v12, a3);
  }

  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return geom::bvh<double,(unsigned char)2>::find_all_intersections(v7, v8, v9, v10);
}

uint64_t geom::bvh<double,(unsigned char)2>::find_all_intersections(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8) = *a4;
  if (*(result + 16) != *(result + 8))
  {
    v7 = result;
    v19 = 0u;
    memset(v18, 0, sizeof(v18));
    v17 = 0;
    std::deque<unsigned int>::push_back(v18, &v17);
    while (1)
    {
      if (!*(&v19 + 1))
      {
        return std::deque<unsigned int>::~deque[abi:nn200100](v18);
      }

      v8 = *(*(*(&v18[0] + 1) + (((v19 + *(&v19 + 1) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v19 + *(&v19 + 1) - 1) & 0x3FF));
      v9 = *(v7 + 8);
      --*(&v19 + 1);
      std::deque<unsigned int>::__maybe_remove_back_spare[abi:nn200100](v18, 1);
      v10 = *(a3 + 24);
      if (!v10)
      {
        break;
      }

      v11 = (v9 + (v8 << 6));
      if ((*(*v10 + 48))(v10, v11 + 8))
      {
        if (v11[1] == -1 && v11[2] == -1)
        {
          v12 = v11[4];
          if (v12)
          {
            v13 = v11[3];
            v14 = (*(v7 + 32) + 4 * v13);
            v15 = 4 * (v12 + v13) - 4 * v13;
            do
            {
              v17 = *v14;
              if (std::function<BOOL ()>::operator()(a2, v17))
              {
                std::vector<unsigned int>::push_back[abi:nn200100](a4, &v17);
              }

              ++v14;
              v15 -= 4;
            }

            while (v15);
          }
        }

        else
        {
          std::deque<unsigned int>::push_back(v18, v11 + 1);
          std::deque<unsigned int>::push_back(v18, v11 + 2);
        }
      }
    }

    v16 = std::__throw_bad_function_call[abi:nn200100]();
    return geom::bvh<double,(unsigned char)2>::tree_statistics(v16);
  }

  return result;
}

uint64_t geom::bvh<double,(unsigned char)2>::tree_statistics(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  if (*(a1 + 16) == *(a1 + 8))
  {
    *a2 = 0;
    *a3 = 0;
  }

  else
  {
    v16 = 0x100000000;
    std::deque<std::pair<unsigned int,unsigned int>>::push_back(v17, &v16);
    v6 = *(&v18 + 1);
    *a2 = 0;
    *a3 = 0;
    if (v6)
    {
      do
      {
        v7 = v6 - 1;
        v8 = (*(*(&v17[0] + 1) + (((v18 + v7) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v18 + v7) & 0x1FF));
        v10 = *v8;
        v9 = v8[1];
        *(&v18 + 1) = v7;
        std::deque<std::pair<unsigned int,unsigned int>>::__maybe_remove_back_spare[abi:nn200100](v17, 1);
        v11 = *(a1 + 8) + (v10 << 6);
        v12 = *a2;
        if (*a2 <= v9)
        {
          v12 = v9;
        }

        *a2 = v12;
        *a3 += v9;
        v13 = *(v11 + 4);
        if (v13 != -1)
        {
          v16 = v13 | ((v9 + 1) << 32);
          std::deque<std::pair<unsigned int,unsigned int>>::push_back(v17, &v16);
        }

        v14 = *(v11 + 8);
        if (v14 != -1)
        {
          v16 = v14 | ((v9 + 1) << 32);
          std::deque<std::pair<unsigned int,unsigned int>>::push_back(v17, &v16);
        }

        v6 = *(&v18 + 1);
      }

      while (*(&v18 + 1));
    }
  }

  return std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](v17);
}

uint64_t geom::bvh<double,(unsigned char)2>::primitives_for_node_index(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8) + (a2 << 6);
  v3 = *(v2 + 12);
  result = *(a1 + 32) + 4 * v3;
  v5 = (*(v2 + 16) + v3) - v3;
  return result;
}

void std::vector<geom::bvh_node<double,(unsigned char)2>>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = (v4 - *a1) >> 6;
    v11 = v10 + 1;
    if ((v10 + 1) >> 58)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = v5 - *a1;
    if (v12 >> 5 > v11)
    {
      v11 = v12 >> 5;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFC0)
    {
      v13 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::bvh_node<double,(unsigned char)2>>>(a1, v13);
    }

    v14 = (v10 << 6);
    v15 = *a2;
    v16 = a2[1];
    v17 = a2[3];
    v14[2] = a2[2];
    v14[3] = v17;
    *v14 = v15;
    v14[1] = v16;
    v9 = (v10 << 6) + 64;
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy(v14 - v18, *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    v4[2] = a2[2];
    v4[3] = v8;
    *v4 = v6;
    v4[1] = v7;
    v9 = (v4 + 4);
  }

  *(a1 + 8) = v9;
}

void geom::bvh<double,(unsigned char)2>::partition_node_median(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v6[0] = &unk_286291F68;
  v6[1] = a1;
  v6[3] = v6;
  v5[0] = &unk_286292068;
  v5[1] = a1;
  v5[2] = v6;
  v5[3] = v5;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  std::function<void ()(geom::bvh_node<double,(unsigned char)2> const&,int,double &,unsigned int &)>::operator()(v5, a2, 0);
  std::function<void ()(geom::bvh_node<double,(unsigned char)2> const&,int,double &,unsigned int &)>::operator()(v5, a2, 1);
  operator new();
}

uint64_t std::function<void ()(geom::bvh_node<double,(unsigned char)2> const&,int,double &,unsigned int &)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v9 = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, a2, &v9);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return geom::bvh<double,(unsigned char)2>::partition_node_middle(v5, v6, v7, v8);
}

uint64_t geom::bvh<double,(unsigned char)2>::partition_node_middle(uint64_t a1, uint64_t a2, float64x2_t *a3, float64x2_t *a4)
{
  v8 = *(a2 + 32);
  v9 = vsubq_f64(*(a2 + 48), v8);
  LOBYTE(v9.f64[0]) = vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v9, 1), v9)).u8[0];
  v37 = *(a2 + 48);
  v10 = *(&v37 & 0xFFFFFFFFFFFFFFF7 | (8 * (LOBYTE(v9.f64[0]) & 1)));
  v38 = v8;
  v11 = (*(&v38 & 0xFFFFFFFFFFFFFFF7 | (8 * (LOBYTE(v9.f64[0]) & 1))) + v10) * 0.5;
  v12 = *(a1 + 32);
  v13 = *(a2 + 12);
  v14 = (v12 + 4 * (*(a2 + 16) + v13));
  v39 = a1;
  v40 = LOBYTE(v9.f64[0]) & 1;
  v41 = v11;
  v15 = std::__partition_impl[abi:nn200100]<geom::bvh<double,(unsigned char)2>::partition_node_middle(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>((v12 + 4 * v13), v14, &v39);
  v16 = *(a2 + 12);
  v17 = *(a2 + 16);
  v18 = (*(a1 + 32) + 4 * v16);
  v19 = (v15 - v18) >> 2;
  v20 = v17 == v19 || v19 == 0;
  v21 = v17 >> 1;
  v22 = vdupq_n_s64(0xFFF0000000000000);
  if (v20)
  {
    result = v21;
  }

  else
  {
    result = v19;
  }

  v24 = vdupq_n_s64(0x7FF0000000000000uLL);
  v25 = v24;
  v26 = v22;
  if (result)
  {
    v27 = 4 * (result + v16) - 4 * v16;
    v25 = vdupq_n_s64(0x7FF0000000000000uLL);
    v26 = vdupq_n_s64(0xFFF0000000000000);
    do
    {
      v28 = *v18;
      v18 += 4;
      v29 = (*(a1 + 80) + 32 * v28);
      v25 = vminnmq_f64(v25, *v29);
      v26 = vmaxnmq_f64(v26, v29[1]);
      v27 -= 4;
    }

    while (v27);
  }

  *a3 = v25;
  a3[1] = v26;
  v30 = *(a2 + 16);
  if (v30 != result)
  {
    v31 = *(a2 + 12);
    v32 = (v30 + v31);
    v33 = (*(a1 + 32) + 4 * (v31 + result));
    v34 = 4 * v32 - 4 * (v31 + result);
    v24 = vdupq_n_s64(0x7FF0000000000000uLL);
    v22 = vdupq_n_s64(0xFFF0000000000000);
    do
    {
      v35 = *v33++;
      v36 = (*(a1 + 80) + 32 * v35);
      v24 = vminnmq_f64(v24, *v36);
      v22 = vmaxnmq_f64(v22, v36[1]);
      v34 -= 4;
    }

    while (v34);
  }

  *a4 = v24;
  a4[1] = v22;
  return result;
}

uint64_t geom::bvh<float,(unsigned char)3>::bvh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10[0] = a2;
  v10[1] = a3;
  v9[0] = a4;
  v9[1] = a5;
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  _ZN4geom19make_external_arrayINS_5sliceIDv2_dEEEENSt3__19enable_ifIXaa21collection_has_size_vIT_E21collection_has_data_vIS6_EENS_14external_arrayINS6_10value_typeEEEE4typeERKS6_b(v10, a6, a1 + 56);
  geom::make_external_array<geom::slice<geom::bbox<float,(unsigned char)3>>>(v9, a6, a1 + 80);
  return a1;
}

void *geom::make_external_array<geom::slice<geom::bbox<float,(unsigned char)3>>>@<X0>(void *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  if (v3)
  {
    if (a2)
    {
      operator new[]();
    }

    *a3 = *result;
    *(a3 + 8) = v3;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  *(a3 + 16) = 0;
  return result;
}

void *geom::bvh<float,(unsigned char)3>::reset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v15[0] = a4;
  v15[1] = a5;
  *a1 = 0;
  if (!a3)
  {
    a2 = 0;
  }

  if (a3 && a6)
  {
    operator new[]();
  }

  if (*(a1 + 72) == 1)
  {
    v10 = *(a1 + 56);
    if (v10)
    {
      MEMORY[0x25305E3D0](v10, 0x1000C80451B5BE8);
    }
  }

  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  *(a1 + 72) = 0;
  result = geom::make_external_array<geom::slice<geom::bbox<float,(unsigned char)3>>>(v15, a6, v13);
  if (*(a1 + 96) == 1)
  {
    result = *(a1 + 80);
    if (result)
    {
      result = MEMORY[0x25305E3D0](result, 0x1000C80E0EAB150);
    }
  }

  v12 = v13[1];
  *(a1 + 80) = v13[0];
  *(a1 + 88) = v12;
  *(a1 + 96) = v14;
  *(a1 + 40) = *(a1 + 32);
  *(a1 + 16) = *(a1 + 8);
  return result;
}

uint64_t geom::bvh<float,(unsigned char)3>::build_middle_split(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>::__value_func[abi:nn200100](v6, a2);
  v5[0] = &unk_286292178;
  v5[1] = a1;
  v5[3] = v5;
  geom::bvh<float,(unsigned char)3>::build_top_down(a1, v6, v5);
  std::__function::__value_func<unsigned int ()(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)>::~__value_func[abi:nn200100](v5);
  result = std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>::~__value_func[abi:nn200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void geom::bvh<float,(unsigned char)3>::build_top_down(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = *MEMORY[0x277D85DE8];
  if ((*a1 & 1) == 0)
  {
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
  }

  std::vector<float>::resize((a1 + 32), *(a1 + 88));
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v6 == v7)
  {
    if (*(a1 + 88))
    {
      goto LABEL_18;
    }

LABEL_21:
    *a1 = 1;
    goto LABEL_44;
  }

  v8 = 0;
  v9 = (v7 - v6 - 4) >> 2;
  v10 = vdupq_n_s64(v9);
  v11 = (v9 + 4) & 0x7FFFFFFFFFFFFFFCLL;
  v12 = v6 + 8;
  do
  {
    v13 = vdupq_n_s64(v8);
    v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_2500C1680)));
    if (vuzp1_s16(v14, *v10.i8).u8[0])
    {
      *(v12 - 2) = v8;
    }

    if (vuzp1_s16(v14, *&v10).i8[2])
    {
      *(v12 - 1) = v8 + 1;
    }

    if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_2500C1670)))).i32[1])
    {
      *v12 = v8 + 2;
      v12[1] = v8 + 3;
    }

    v8 += 4;
    v12 += 4;
  }

  while (v11 != v8);
  if (!*(a1 + 88))
  {
    goto LABEL_21;
  }

  if (v6 != v7)
  {
    v15.i64[0] = 0x7F0000007FLL;
    v15.i64[1] = 0x7F0000007FLL;
    v16 = vnegq_f32(v15);
    v17 = v6;
    do
    {
      v18 = *v17;
      v17 += 4;
      v19 = (*(a1 + 80) + 32 * v18);
      v20 = v16;
      v20.i32[3] = 0;
      v21 = *v19;
      v22 = v19[1];
      v21.i32[3] = 0;
      v24 = vminnmq_f32(v20, v21);
      v23 = v15;
      v23.i32[3] = 0;
      v22.i32[3] = 0;
      v24.i32[3] = v16.i32[3];
      v25 = vmaxnmq_f32(v23, v22);
      v25.i32[3] = v15.i32[3];
      v15 = v25;
      v16 = v24;
    }

    while (v17 != v7);
    goto LABEL_19;
  }

LABEL_18:
  v25.i64[0] = 0x7F0000007FLL;
  v25.i64[1] = 0x7F0000007FLL;
  v24 = vnegq_f32(v25);
LABEL_19:
  v26 = (v7 - v6) >> 2;
  v27 = *(a1 + 16);
  v28 = *(a1 + 24);
  if (v27 >= v28)
  {
    v30 = *(a1 + 8);
    v31 = (v27 - v30) >> 6;
    v32 = v31 + 1;
    if ((v31 + 1) >> 58)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v33 = v28 - v30;
    if (v33 >> 5 > v32)
    {
      v32 = v33 >> 5;
    }

    if (v33 >= 0x7FFFFFFFFFFFFFC0)
    {
      v34 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v34 = v32;
    }

    if (v34)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::bvh_node<double,(unsigned char)2>>>(a1 + 8, v34);
    }

    v35 = v31 << 6;
    *v35 = xmmword_2500C7370;
    *(v35 + 16) = v26;
    *(v35 + 20) = v76;
    *(v35 + 28) = DWORD2(v76);
    *(v35 + 32) = v24.i64[0];
    *(v35 + 40) = v24.i32[2];
    *(v35 + 56) = v25.i32[2];
    *(v35 + 48) = v25.i64[0];
    v29 = (v31 << 6) + 64;
    v36 = *(a1 + 8);
    v37 = *(a1 + 16) - v36;
    v38 = v35 - v37;
    memcpy((v35 - v37), v36, v37);
    v39 = *(a1 + 8);
    *(a1 + 8) = v38;
    *(a1 + 16) = v29;
    *(a1 + 24) = 0;
    if (v39)
    {
      operator delete(v39);
    }
  }

  else
  {
    *v27 = xmmword_2500C7370;
    *(v27 + 16) = v26;
    *(v27 + 20) = v76;
    *(v27 + 28) = DWORD2(v76);
    *(v27 + 40) = v24.i32[2];
    *(v27 + 32) = v24.i64[0];
    *(v27 + 56) = v25.i32[2];
    *(v27 + 48) = v25.i64[0];
    v29 = v27 + 64;
  }

  *(a1 + 16) = v29;
  v75 = 0u;
  memset(v74, 0, sizeof(v74));
  LODWORD(v76) = 0;
  std::deque<unsigned int>::push_back(v74, &v76);
  v40 = *(&v75 + 1);
  if (*(&v75 + 1))
  {
    v41.i64[0] = 0x7F0000007FLL;
    v41.i64[1] = 0x7F0000007FLL;
    v61 = vnegq_f32(v41);
    do
    {
      v42 = v40 - 1;
      v43 = *(*(*(&v74[0] + 1) + (((v75 + v42) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v75 + v42) & 0x3FF));
      *(&v75 + 1) = v42;
      std::deque<unsigned int>::__maybe_remove_back_spare[abi:nn200100](v74, 1);
      v44 = *(a2 + 24);
      if (!v44)
      {
LABEL_45:
        std::__throw_bad_function_call[abi:nn200100]();
      }

      if (((*(*v44 + 48))(v44, *(a1 + 8) + (v43 << 6)) & 1) == 0)
      {
        v45 = (*(a1 + 8) + (v43 << 6));
        v46 = v45[3];
        v48 = *v45;
        v47 = v45[1];
        v78 = v45[2];
        v79 = v46;
        v76 = v48;
        v77 = v47;
        *&v49 = 0x7F0000007FLL;
        *(&v49 + 1) = 0x7F0000007FLL;
        v72 = v61;
        v73 = v49;
        v70 = v61;
        v71 = v49;
        v50 = *(a3 + 24);
        if (!v50)
        {
          goto LABEL_45;
        }

        v51 = (*(*v50 + 48))(v50, &v76, &v72, &v70);
        if (v51)
        {
          v52 = v77 == v51;
        }

        else
        {
          v52 = 1;
        }

        if (!v52)
        {
          v53 = v51;
          v54 = HIDWORD(v76) + v51;
          v55 = v77 - v51;
          v56 = *(a1 + 8);
          v57 = (*(a1 + 16) - v56) >> 6;
          *(v56 + (v43 << 6) + 4) = v57;
          LODWORD(v66) = v57;
          std::deque<unsigned int>::push_back(v74, &v66);
          LODWORD(v66) = (*(a1 + 16) - *(a1 + 8)) >> 6;
          *(&v66 + 4) = -1;
          HIDWORD(v66) = HIDWORD(v76);
          v67 = v53;
          v68 = v72;
          v69 = v73;
          std::vector<geom::bvh_node<double,(unsigned char)2>>::push_back[abi:nn200100](a1 + 8, &v66);
          v58 = *(a1 + 8);
          v59 = (*(a1 + 16) - v58) >> 6;
          *(v58 + (v43 << 6) + 8) = v59;
          LODWORD(v62) = v59;
          std::deque<unsigned int>::push_back(v74, &v62);
          LODWORD(v62) = (*(a1 + 16) - *(a1 + 8)) >> 6;
          *(&v62 + 4) = -1;
          HIDWORD(v62) = v54;
          v63 = v55;
          v64 = v70;
          v65 = v71;
          std::vector<geom::bvh_node<double,(unsigned char)2>>::push_back[abi:nn200100](a1 + 8, &v62);
        }
      }

      v40 = *(&v75 + 1);
    }

    while (*(&v75 + 1));
  }

  *a1 = 1;
  std::deque<unsigned int>::~deque[abi:nn200100](v74);
LABEL_44:
  v60 = *MEMORY[0x277D85DE8];
}

uint64_t geom::bvh<float,(unsigned char)3>::build_median(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>::__value_func[abi:nn200100](v6, a2);
  v5[0] = &unk_286292208;
  v5[1] = a1;
  v5[3] = v5;
  geom::bvh<float,(unsigned char)3>::build_top_down(a1, v6, v5);
  std::__function::__value_func<unsigned int ()(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)>::~__value_func[abi:nn200100](v5);
  result = std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>::~__value_func[abi:nn200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void geom::bvh<float,(unsigned char)3>::build_surface_area_heuristic(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>::__value_func[abi:nn200100](v3, a2);
  geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<geom::surface_area_heuristic_functor<float,(unsigned char)3>>(a1, v3);
}

void geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<geom::surface_area_heuristic_functor<float,(unsigned char)3>>(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>::__value_func[abi:nn200100](v2, a2);
  operator new();
}

void geom::bvh<float,(unsigned char)3>::build_volume_heuristic(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>::__value_func[abi:nn200100](v3, a2);
  geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<geom::volume_heuristic_functor<float,(unsigned char)3>>(a1, v3);
}

void geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<geom::volume_heuristic_functor<float,(unsigned char)3>>(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>::__value_func[abi:nn200100](v2, a2);
  operator new();
}

void geom::bvh<float,(unsigned char)3>::build_intersection_volume_heuristic(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>::__value_func[abi:nn200100](v3, a2);
  geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<geom::intersection_volume_heuristic_functor<float,(unsigned char)3>>(a1, v3);
}

void geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<geom::intersection_volume_heuristic_functor<float,(unsigned char)3>>(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>::__value_func[abi:nn200100](v2, a2);
  operator new();
}

uint64_t geom::bvh<float,(unsigned char)3>::raycast(void *a1, uint64_t a2, float *a3, unsigned int *a4, float32x4_t a5, __n128 a6)
{
  *a3 = INFINITY;
  *a4 = -1;
  if (a1[5] == a1[4] || (v7 = a1[1], a1[2] == v7))
  {
    v22 = 0;
    return v22 & 1;
  }

  v12 = 0;
  v13 = 0uLL;
  do
  {
    v101 = a6;
    v14 = (&v101 & 0xFFFFFFFFFFFFFFF3 | (4 * (v12 & 3)));
    v15 = 1.0 / *v14;
    if (fabsf(*v14) <= 0.000005)
    {
      v15 = INFINITY;
    }

    v102 = v13;
    *(&v102 & 0xFFFFFFFFFFFFFFF3 | (4 * (v12 & 3))) = v15;
    v16 = v102;
    HIDWORD(v16) = HIDWORD(v13);
    ++v12;
    v13 = v16;
  }

  while (v12 != 3);
  v106 = 0u;
  memset(v105, 0, sizeof(v105));
  *v104 = 0;
  *&v104[4] = 0x7F80000000000000;
  v18 = *(v7 + 32);
  v17 = *(v7 + 48);
  if (*&v102 == INFINITY)
  {
    if (vmovn_s32(vcgtq_f32(v18, a5)).u8[0] & 1) != 0 || (vmovn_s32(vcgtq_f32(a5, v17)).u8[0])
    {
      goto LABEL_186;
    }

    v19 = vextq_s8(v18, v18, 4uLL).u64[0];
    v20 = 0.0;
    v21 = INFINITY;
  }

  else
  {
    v21 = *&v102 * vsubq_f32(v18, a5).f32[0];
    v23 = vsubq_f32(v17, a5).f32[0];
    v24 = *&v102 * v23;
    v25 = (*&v102 * v23) < v21;
    if ((*&v102 * v23) >= v21)
    {
      v26 = v21;
    }

    else
    {
      v26 = *&v102 * v23;
    }

    if (!v25)
    {
      v21 = v24;
    }

    if (v26 >= 0.0)
    {
      v20 = v26;
    }

    else
    {
      v20 = 0.0;
    }

    *&v104[4] = v20;
    *&v104[8] = v21;
    if (v20 > v21)
    {
      goto LABEL_186;
    }

    v19 = vextq_s8(v18, v18, 4uLL).u64[0];
  }

  v27 = *(&v102 + 1);
  v28 = a5.f32[1];
  if (*(&v102 + 1) == INFINITY)
  {
    if (a5.f32[1] < *&v19 || a5.f32[1] > v17.f32[1])
    {
      goto LABEL_186;
    }
  }

  else
  {
    v30 = *(&v102 + 1) * (*&v19 - a5.f32[1]);
    v31 = *(&v102 + 1) * (v17.f32[1] - a5.f32[1]);
    if (v31 >= v30)
    {
      v32 = *(&v102 + 1) * (*&v19 - a5.f32[1]);
    }

    else
    {
      v32 = *(&v102 + 1) * (v17.f32[1] - a5.f32[1]);
    }

    if (v31 < v30)
    {
      v31 = *(&v102 + 1) * (*&v19 - a5.f32[1]);
    }

    if (v32 >= v20)
    {
      v20 = v32;
    }

    if (v21 >= v31)
    {
      v21 = v31;
    }

    *&v104[4] = v20;
    *&v104[8] = v21;
    if (v20 > v21)
    {
      goto LABEL_186;
    }
  }

  v33 = *(&v102 + 2);
  v34 = a5.f32[2];
  if (*(&v102 + 2) == INFINITY)
  {
    if (a5.f32[2] < *(&v19 + 1) || a5.f32[2] > v17.f32[2])
    {
      goto LABEL_186;
    }

    goto LABEL_52;
  }

  v35 = *(&v102 + 2) * (*(&v19 + 1) - a5.f32[2]);
  v36 = *(&v102 + 2) * (v17.f32[2] - a5.f32[2]);
  if (v36 >= v35)
  {
    v37 = *(&v102 + 2) * (*(&v19 + 1) - a5.f32[2]);
  }

  else
  {
    v37 = *(&v102 + 2) * (v17.f32[2] - a5.f32[2]);
  }

  if (v36 < v35)
  {
    v36 = *(&v102 + 2) * (*(&v19 + 1) - a5.f32[2]);
  }

  if (v37 >= v20)
  {
    v20 = v37;
  }

  if (v21 >= v36)
  {
    v21 = v36;
  }

  *&v104[4] = v20;
  *&v104[8] = v21;
  if (v20 <= v21)
  {
LABEL_52:
    if (v20 < 0.0 && v21 < 0.0)
    {
      goto LABEL_186;
    }

    v98 = *&v102;
    v100 = a5;
    std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(v105, v104);
    v38 = *(&v106 + 1);
    if (!*(&v106 + 1))
    {
      goto LABEL_186;
    }

    v22 = 0;
    while (1)
    {
      v39 = v38 - 1;
      v40 = ((v106 + v39) * 0x8060180601806019) >> 64;
      v41 = (v40 + ((v106 + v39 - v40) >> 1)) >> 8;
      v42 = (*(*(&v105[0] + 1) + 8 * v41) + 12 * (v106 + v39 - 341 * v41));
      v43 = *v42;
      v44 = v42[1];
      *(&v106 + 1) = v39;
      std::deque<geom::bvh<float,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<float,(unsigned char)2>,float &)>,geom::ray<float,(unsigned char)2>,float &,unsigned int &)::state,std::allocator<geom::bvh<float,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<float,(unsigned char)2>,float &)>,geom::ray<float,(unsigned char)2>,float &,unsigned int &)::state>>::__maybe_remove_back_spare[abi:nn200100](v105, 1);
      if (*a3 < v44)
      {
        goto LABEL_182;
      }

      v45 = a1[1];
      v46 = (v45 + (v43 << 6));
      v48 = v46[1];
      v47 = v46[2];
      if (v48 == -1 && v47 == -1)
      {
        v57 = v46[4];
        if (v57)
        {
          v58 = v46[3];
          v59 = (a1[4] + 4 * v58);
          v60 = 4 * (v57 + v58) - 4 * v58;
          do
          {
            v61 = *v59;
            *v104 = 0;
            if (std::function<BOOL ()(unsigned int,geom::ray<float,(unsigned char)3>,float &)>::operator()(a2, v61, v104, v100, a6))
            {
              if (*v104 < *a3 || (*v104 == *a3 ? (v62 = v61 >= *a4) : (v62 = 1), !v62))
              {
                *a3 = *v104;
                *a4 = v61;
              }

              v22 = 1;
            }

            ++v59;
            v60 -= 4;
          }

          while (v60);
        }

        goto LABEL_182;
      }

      v50 = (v45 + (v48 << 6));
      v53 = v50[2];
      v52 = v50[3];
      f32 = v50[2].f32;
      v54 = v45 + (v47 << 6) + 32;
      *v104 = v48;
      *&v104[4] = 0x7F80000000000000;
      if (v98 == INFINITY)
      {
        if (vmovn_s32(vcgtq_f32(v53, v100)).u8[0] & 1) != 0 || (vmovn_s32(vcgtq_f32(v100, v52)).u8[0])
        {
          v67 = 0;
          *v103 = v47;
          *&v103[4] = 0x7F80000000000000;
          v68 = v54 + 16;
          v69 = *(v54 + 16);
          v55 = 0.0;
          goto LABEL_124;
        }

        v55 = 0.0;
        v56 = INFINITY;
      }

      else
      {
        v56 = v98 * vsubq_f32(v53, v100).f32[0];
        v63 = v98 * vsubq_f32(v52, v100).f32[0];
        if (v63 >= v56)
        {
          v64 = v56;
        }

        else
        {
          v64 = v63;
        }

        if (v63 >= v56)
        {
          v56 = v63;
        }

        if (v64 >= 0.0)
        {
          v55 = v64;
        }

        else
        {
          v55 = 0.0;
        }

        *&v104[4] = v55;
        *&v104[8] = v56;
        if (v55 > v56)
        {
          v67 = 0;
          *v103 = v47;
          v68 = v54 + 16;
          v69 = *(v54 + 16);
LABEL_130:
          v80 = v98 * (*v54 - v100.n128_f32[0]);
          v81 = v98 * (*&v69 - v100.n128_f32[0]);
          if (v81 >= v80)
          {
            v82 = v98 * (*v54 - v100.n128_f32[0]);
          }

          else
          {
            v82 = v81;
          }

          if (v81 >= v80)
          {
            v80 = v81;
          }

          if (v82 >= 0.0)
          {
            v79 = v82;
          }

          else
          {
            v79 = 0.0;
          }

          *&v103[4] = v79;
          *&v103[8] = v80;
          if (v79 > v80)
          {
            goto LABEL_180;
          }

          goto LABEL_139;
        }
      }

      v65 = f32[1];
      if (v27 == INFINITY)
      {
        if (v28 < v65 || v28 > f32[5])
        {
          goto LABEL_109;
        }
      }

      else
      {
        v70 = v27 * (v65 - v28);
        v71 = v27 * (f32[5] - v28);
        if (v71 >= v70)
        {
          v72 = v70;
        }

        else
        {
          v72 = v27 * (f32[5] - v28);
        }

        if (v71 >= v70)
        {
          v70 = v27 * (f32[5] - v28);
        }

        if (v72 >= v55)
        {
          v55 = v72;
        }

        if (v56 >= v70)
        {
          v56 = v70;
        }

        *&v104[4] = v55;
        *&v104[8] = v56;
        if (v55 > v56)
        {
LABEL_109:
          v67 = 0;
          goto LABEL_123;
        }
      }

      v73 = f32[2];
      if (v33 == INFINITY)
      {
        if (v34 < v73 || v34 > f32[6])
        {
          goto LABEL_109;
        }
      }

      else
      {
        v75 = v33 * (v73 - v34);
        v76 = v33 * (f32[6] - v34);
        if (v76 >= v75)
        {
          v77 = v75;
        }

        else
        {
          v77 = v33 * (f32[6] - v34);
        }

        if (v76 >= v75)
        {
          v75 = v33 * (f32[6] - v34);
        }

        if (v77 >= v55)
        {
          v55 = v77;
        }

        if (v56 >= v75)
        {
          v56 = v75;
        }

        *&v104[4] = v55;
        *&v104[8] = v56;
        if (v55 > v56)
        {
          goto LABEL_109;
        }
      }

      v67 = v56 >= 0.0 || v55 >= 0.0;
LABEL_123:
      *v103 = v47;
      *&v103[4] = 0x7F80000000000000;
      v68 = v54 + 16;
      v69 = *(v54 + 16);
      if (v98 != INFINITY)
      {
        goto LABEL_130;
      }

LABEL_124:
      if (v100.n128_f32[0] < *v54 || v100.n128_f32[0] > *&v69)
      {
        goto LABEL_180;
      }

      v79 = 0.0;
      v80 = INFINITY;
LABEL_139:
      v83 = *(v54 + 4);
      if (v27 == INFINITY)
      {
        if (v28 < v83 || v28 > *(v68 + 4))
        {
          goto LABEL_180;
        }
      }

      else
      {
        v85 = v27 * (v83 - v28);
        v86 = v27 * (*(v68 + 4) - v28);
        if (v86 >= v85)
        {
          v87 = v85;
        }

        else
        {
          v87 = v27 * (*(v68 + 4) - v28);
        }

        if (v86 >= v85)
        {
          v85 = v27 * (*(v68 + 4) - v28);
        }

        if (v87 >= v79)
        {
          v79 = v87;
        }

        if (v80 >= v85)
        {
          v80 = v85;
        }

        *&v103[4] = v79;
        *&v103[8] = v80;
        if (v79 > v80)
        {
          goto LABEL_180;
        }
      }

      v88 = *(v54 + 8);
      if (v33 == INFINITY)
      {
        if (v34 >= v88 && v34 <= *(v68 + 8))
        {
          goto LABEL_171;
        }
      }

      else
      {
        v90 = v33 * (v88 - v34);
        v91 = v33 * (*(v68 + 8) - v34);
        if (v91 >= v90)
        {
          v92 = v90;
        }

        else
        {
          v92 = v33 * (*(v68 + 8) - v34);
        }

        if (v91 >= v90)
        {
          v90 = v33 * (*(v68 + 8) - v34);
        }

        if (v92 >= v79)
        {
          v79 = v92;
        }

        if (v80 >= v90)
        {
          v80 = v90;
        }

        *&v103[4] = v79;
        *&v103[8] = v80;
        if (v79 <= v80)
        {
LABEL_171:
          v93 = v79 >= 0.0;
          if (v80 >= 0.0)
          {
            v93 = 1;
          }

          v94 = v79 < v55 && v93;
          if (v94 && v67)
          {
            v95 = *&v104[8];
            v96 = *v104;
            *v104 = *v103;
            *&v104[8] = *&v103[8];
            *v103 = v96;
            *&v103[8] = v95;
          }

          else if (!v93)
          {
            if (!v67)
            {
              goto LABEL_182;
            }

LABEL_181:
            std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(v105, v104);
            goto LABEL_182;
          }

          std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(v105, v103);
        }
      }

LABEL_180:
      if (v67)
      {
        goto LABEL_181;
      }

LABEL_182:
      v38 = *(&v106 + 1);
      if (!*(&v106 + 1))
      {
        goto LABEL_187;
      }
    }
  }

LABEL_186:
  v22 = 0;
LABEL_187:
  std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::~deque[abi:nn200100](v105);
  return v22 & 1;
}

uint64_t std::function<BOOL ()(unsigned int,geom::ray<float,(unsigned char)3>,float &)>::operator()(uint64_t a1, int a2, uint64_t a3, __n128 a4, __n128 a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v11 = a2;
  v5 = *(a1 + 24);
  if (v5)
  {
    return (*(*v5 + 48))(v5, &v11, v12, a3);
  }

  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return geom::bvh<float,(unsigned char)3>::find_all_intersections(v7, v8, v9, v10);
}

uint64_t geom::bvh<float,(unsigned char)3>::find_all_intersections(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8) = *a4;
  if (*(result + 16) != *(result + 8))
  {
    v7 = result;
    v20 = 0u;
    memset(v19, 0, sizeof(v19));
    v18 = 0;
    std::deque<unsigned int>::push_back(v19, &v18);
    while (*(&v20 + 1))
    {
      v8 = *(*(*(&v19[0] + 1) + (((v20 + *(&v20 + 1) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v20 + *(&v20 + 1) - 1) & 0x3FF));
      v9 = *(v7 + 8);
      --*(&v20 + 1);
      std::deque<unsigned int>::__maybe_remove_back_spare[abi:nn200100](v19, 1);
      v10 = *(a3 + 24);
      if (!v10)
      {
        v16 = std::__throw_bad_function_call[abi:nn200100]();
        geom::bvh<float,(unsigned char)3>::partition_node_median(v16, v17);
      }

      v11 = (v9 + (v8 << 6));
      if ((*(*v10 + 48))(v10, v11 + 8))
      {
        if (v11[1] == -1 && v11[2] == -1)
        {
          v12 = v11[4];
          if (v12)
          {
            v13 = v11[3];
            v14 = (*(v7 + 32) + 4 * v13);
            v15 = 4 * (v12 + v13) - 4 * v13;
            do
            {
              v18 = *v14;
              if (std::function<BOOL ()>::operator()(a2, v18))
              {
                std::vector<unsigned int>::push_back[abi:nn200100](a4, &v18);
              }

              ++v14;
              v15 -= 4;
            }

            while (v15);
          }
        }

        else
        {
          std::deque<unsigned int>::push_back(v19, v11 + 1);
          std::deque<unsigned int>::push_back(v19, v11 + 2);
        }
      }
    }

    return std::deque<unsigned int>::~deque[abi:nn200100](v19);
  }

  return result;
}

void geom::bvh<float,(unsigned char)3>::partition_node_median(uint64_t a1, uint64_t a2)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v12[0] = &unk_286292408;
  v12[1] = a1;
  v12[3] = v12;
  v11[0] = &unk_286292508;
  v11[1] = a1;
  v11[2] = v12;
  v11[3] = v11;
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v9 = 0;
  std::function<void ()(geom::bvh_node<float,(unsigned char)3> const&,int,float &,unsigned int &)>::operator()(v11, a2, 0);
  v6 = vsubq_f32(v5, v4);
  v10 = 0;
  v8 = 0;
  std::function<void ()(geom::bvh_node<float,(unsigned char)3> const&,int,float &,unsigned int &)>::operator()(v11, a2, 1);
  v3 = 0;
  if (v6.f32[1] > v6.f32[0])
  {
    v9 = v10 | 0x100000000;
    v3 = 1;
  }

  v10 = 0;
  v8 = 0;
  std::function<void ()(geom::bvh_node<float,(unsigned char)3> const&,int,float &,unsigned int &)>::operator()(v11, a2, 2);
  v7 = v6;
  if (v6.f32[2] > *(&v7 | (4 * v3)))
  {
    v9 = v10 | 0x200000000;
  }

  operator new();
}

unint64_t std::function<void ()(geom::bvh_node<float,(unsigned char)3> const&,int,float &,unsigned int &)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v9 = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, a2, &v9);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return geom::bvh<float,(unsigned char)3>::partition_node_middle(v5, v6, v7, v8);
}

unint64_t geom::bvh<float,(unsigned char)3>::partition_node_middle(void *a1, float32x4_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = a2[2];
  v6 = a2[3];
  v7 = vsubq_f32(v6, v5);
  for (i = 1; i != 3; ++i)
  {
    v56 = v7;
    if (*(&v56 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3))) > *(&v56 & 0xFFFFFFFFFFFFFFF3 | (4 * (v4 & 3))))
    {
      v4 = i;
    }
  }

  v55 = v6;
  v9 = *(&v55 & 0xFFFFFFFFFFFFFFF3 | (4 * (v4 & 3)));
  v54 = v5;
  v10 = a1[4];
  v11 = a2->u32[3];
  v12 = 4 * v11;
  v13 = (v10 + 4 * v11);
  v14 = a2[1].u32[0] + v11;
  if (v12 != 4 * v14)
  {
    v15 = (*(&v54 & 0xFFFFFFFFFFFFFFF3 | (4 * (v4 & 3))) + v9) * 0.5;
    v16 = 4 * v14;
    v17 = v13;
    v13 = (v16 + v10);
    v18 = a1[7];
    v19 = v4 & 3;
    while (2)
    {
      while (1)
      {
        v20 = *v17;
        if (*(v18 + 16 * v20 + 4 * v19) >= v15)
        {
          break;
        }

        if (++v17 == v13)
        {
          goto LABEL_15;
        }
      }

      do
      {
        if (--v13 == v17)
        {
          v13 = v17;
          goto LABEL_15;
        }

        v21 = *v13;
      }

      while (*(v18 + 16 * v21 + 4 * v19) >= v15);
      *v17++ = v21;
      *v13 = v20;
      if (v13 != v17)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
  v22 = a2->u32[3];
  v23 = a2[1].u32[0];
  v24 = (v10 + 4 * v22);
  v25 = (v13 - v24) >> 2;
  if (v23 == v25 || v25 == 0)
  {
    v25 = v23 >> 1;
  }

  else
  {
    v25 = v25;
  }

  v27.i64[0] = 0x7F0000007FLL;
  v27.i64[1] = 0x7F0000007FLL;
  v28 = vnegq_f32(v27);
  v29 = v28;
  v30.i64[0] = 0x7F0000007FLL;
  v30.i32[2] = 127;
  if (v25)
  {
    v31 = 4 * (v25 + v22) - 4 * v22;
    v32.i64[0] = 0x7F0000007FLL;
    v32.i64[1] = 0x7F0000007FLL;
    v33 = vnegq_f32(v32);
    do
    {
      v34 = *v24;
      v24 += 4;
      v35 = (a1[10] + 32 * v34);
      v36 = v33;
      v36.i32[3] = 0;
      v37 = *v35;
      v38 = v35[1];
      v37.i32[3] = 0;
      v29 = vminnmq_f32(v36, v37);
      v39 = v32;
      v39.i32[3] = 0;
      v38.i32[3] = 0;
      v29.i32[3] = v33.i32[3];
      v30 = vmaxnmq_f32(v39, v38);
      v30.i32[3] = v32.i32[3];
      v32 = v30;
      v33 = v29;
      v31 -= 4;
    }

    while (v31);
  }

  *(a3 + 8) = v29.i32[2];
  *a3 = v29.i64[0];
  *(a3 + 24) = v30.i32[2];
  *(a3 + 16) = v30.i64[0];
  v40 = a2[1].i32[0];
  if (v40 != v25)
  {
    v41 = a2->i32[3];
    v42 = (v40 + v41);
    v43 = (a1[4] + 4 * (v41 + v25));
    v44 = 4 * v42 - 4 * (v41 + v25);
    v45.i64[0] = 0x7F0000007FLL;
    v45.i64[1] = 0x7F0000007FLL;
    v46 = vnegq_f32(v45);
    do
    {
      v47 = *v43++;
      v48 = (a1[10] + 32 * v47);
      v49 = v46;
      v49.i32[3] = 0;
      v50 = *v48;
      v51 = v48[1];
      v50.i32[3] = 0;
      v28 = vminnmq_f32(v49, v50);
      v52 = v45;
      v52.i32[3] = 0;
      v51.i32[3] = 0;
      v28.i32[3] = v46.i32[3];
      v27 = vmaxnmq_f32(v52, v51);
      v27.i32[3] = v45.i32[3];
      v45 = v27;
      v46 = v28;
      v44 -= 4;
    }

    while (v44);
  }

  *(a4 + 8) = v28.i32[2];
  *a4 = v28.i64[0];
  *(a4 + 24) = v27.i32[2];
  *(a4 + 16) = v27.i64[0];
  return v25;
}

uint64_t geom::bvh<double,(unsigned char)3>::bvh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10[0] = a2;
  v10[1] = a3;
  v9[0] = a4;
  v9[1] = a5;
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  _ZN4geom19make_external_arrayINS_5sliceIDv3_dEEEENSt3__19enable_ifIXaa21collection_has_size_vIT_E21collection_has_data_vIS6_EENS_14external_arrayINS6_10value_typeEEEE4typeERKS6_b(v10, a6, a1 + 56);
  geom::make_external_array<geom::slice<geom::bbox<double,(unsigned char)3>>>(v9, a6, a1 + 80);
  return a1;
}

void *geom::make_external_array<geom::slice<geom::bbox<double,(unsigned char)3>>>@<X0>(void *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  if (v3)
  {
    if (a2)
    {
      operator new[]();
    }

    *a3 = *result;
    *(a3 + 8) = v3;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  *(a3 + 16) = 0;
  return result;
}

void *geom::bvh<double,(unsigned char)3>::reset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v15[0] = a4;
  v15[1] = a5;
  *a1 = 0;
  if (!a3)
  {
    a2 = 0;
  }

  if (a3 && a6)
  {
    operator new[]();
  }

  if (*(a1 + 72) == 1)
  {
    v10 = *(a1 + 56);
    if (v10)
    {
      MEMORY[0x25305E3D0](v10, 0x1000C80E0EAB150);
    }
  }

  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  *(a1 + 72) = 0;
  result = geom::make_external_array<geom::slice<geom::bbox<double,(unsigned char)3>>>(v15, a6, v13);
  if (*(a1 + 96) == 1)
  {
    result = *(a1 + 80);
    if (result)
    {
      result = MEMORY[0x25305E3D0](result, 0x1000C80FA0F61DDLL);
    }
  }

  v12 = v13[1];
  *(a1 + 80) = v13[0];
  *(a1 + 88) = v12;
  *(a1 + 96) = v14;
  *(a1 + 40) = *(a1 + 32);
  *(a1 + 16) = *(a1 + 8);
  return result;
}

uint64_t geom::bvh<double,(unsigned char)3>::reset(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  *result = 0;
  if (*(result + 72) == 1)
  {
    result = *(result + 56);
    if (result)
    {
      result = MEMORY[0x25305E3D0](result, 0x1000C80E0EAB150);
    }
  }

  v6 = *(a2 + 8);
  *(v5 + 56) = *a2;
  *(v5 + 64) = v6;
  *(v5 + 72) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (*(v5 + 96) == 1)
  {
    result = *(v5 + 80);
    if (result)
    {
      result = MEMORY[0x25305E3D0](result, 0x1000C80FA0F61DDLL);
    }
  }

  v7 = *(a3 + 8);
  *(v5 + 80) = *a3;
  *(v5 + 88) = v7;
  *(v5 + 96) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(v5 + 40) = *(v5 + 32);
  *(v5 + 16) = *(v5 + 8);
  return result;
}

uint64_t geom::bvh<double,(unsigned char)3>::iterator::primitives(unsigned int *a1)
{
  v1 = *(*a1 + 8) + 96 * a1[2];
  v2 = *(v1 + 12);
  result = *(*a1 + 32) + 4 * v2;
  v4 = (*(v1 + 16) + v2) - v2;
  return result;
}

unsigned int *geom::bvh<double,(unsigned char)3>::iterator::operator++(unsigned int *result)
{
  v1 = result[2];
  if (v1 != -1)
  {
    v2 = v1 + 1;
    result[2] = v2;
    if (0xAAAAAAAAAAAAAAABLL * ((*(*result + 16) - *(*result + 8)) >> 5) <= v2)
    {
      result[2] = -1;
    }
  }

  return result;
}

uint64_t geom::bvh<double,(unsigned char)3>::iterator::operator++(void *a1)
{
  result = *a1;
  v3 = a1[1];
  if (v3 != -1)
  {
    v4 = (v3 + 1);
    *(a1 + 2) = v4;
    if (0xAAAAAAAAAAAAAAABLL * ((*(result + 16) - *(result + 8)) >> 5) <= v4)
    {
      *(a1 + 2) = -1;
    }
  }

  return result;
}

uint64_t geom::bvh<double,(unsigned char)3>::build_middle_split(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>::__value_func[abi:nn200100](v6, a2);
  v5[0] = &unk_286292618;
  v5[1] = a1;
  v5[3] = v5;
  geom::bvh<double,(unsigned char)3>::build_top_down(a1, v6, v5);
  std::__function::__value_func<unsigned int ()(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)>::~__value_func[abi:nn200100](v5);
  result = std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>::~__value_func[abi:nn200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void geom::bvh<double,(unsigned char)3>::build_top_down(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = *MEMORY[0x277D85DE8];
  if ((*a1 & 1) == 0)
  {
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
  }

  std::vector<float>::resize((a1 + 32), *(a1 + 88));
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (v8 != v9)
  {
    v10 = 0;
    v11 = (v9 - v8 - 4) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = v8 + 8;
    *&v6.f64[1] = 1;
    do
    {
      v15 = vdupq_n_s64(v10);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_2500C1680)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v10 + 1;
      }

      v7 = vcgeq_u64(v12, vorrq_s8(v15, xmmword_2500C1670));
      if (vuzp1_s16(*&v12, vmovn_s64(v7)).i32[1])
      {
        *v14 = v10 + 2;
        v14[1] = v10 + 3;
      }

      v10 += 4;
      v14 += 4;
    }

    while (v13 != v10);
    if (*(a1 + 88))
    {
      v6.f64[0] = INFINITY;
      v7.i64[0] = 0xFFF0000000000000;
      v17 = vdupq_n_s64(0x7FF0000000000000uLL);
      v18 = vdupq_n_s64(0xFFF0000000000000);
      if (v8 != v9)
      {
        v19 = v8;
        do
        {
          v20 = *v19;
          v19 += 4;
          v21 = *(a1 + 80) + (v20 << 6);
          v17 = vminnmq_f64(v17, *v21);
          v6 = vminnmq_f64(*&v6.f64[0], *(v21 + 16));
          v18 = vmaxnmq_f64(v18, *(v21 + 32));
          v7 = vmaxnmq_f64(v7.u64[0], *(v21 + 48));
        }

        while (v19 != v9);
      }

      goto LABEL_19;
    }

LABEL_21:
    *a1 = 1;
    goto LABEL_42;
  }

  if (!*(a1 + 88))
  {
    goto LABEL_21;
  }

  v17 = vdupq_n_s64(0x7FF0000000000000uLL);
  v6.f64[0] = INFINITY;
  v18 = vdupq_n_s64(0xFFF0000000000000);
  v7.i64[0] = 0xFFF0000000000000;
LABEL_19:
  v22 = (v9 - v8) >> 2;
  v23 = *(a1 + 16);
  v24 = *(a1 + 24);
  if (v23 >= v24)
  {
    v26 = *(a1 + 8);
    v27 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v26) >> 5);
    v28 = v27 + 1;
    if (v27 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v29 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v26) >> 5);
    if (2 * v29 > v28)
    {
      v28 = 2 * v29;
    }

    if (v29 >= 0x155555555555555)
    {
      v30 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v30 = v28;
    }

    if (v30)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::bvh_node<double,(unsigned char)3>>>(a1 + 8, v30);
    }

    v31 = 96 * v27;
    *v31 = xmmword_2500C7370;
    *(v31 + 16) = v22;
    *(v31 + 20) = v82;
    *(v31 + 28) = DWORD2(v82);
    *(v31 + 32) = v17;
    *(v31 + 48) = v6;
    *(v31 + 64) = v18;
    *(v31 + 80) = v7;
    v25 = 96 * v27 + 96;
    v32 = *(a1 + 8);
    v33 = *(a1 + 16) - v32;
    v34 = 96 * v27 - v33;
    memcpy((v31 - v33), v32, v33);
    v35 = *(a1 + 8);
    *(a1 + 8) = v34;
    *(a1 + 16) = v25;
    *(a1 + 24) = 0;
    if (v35)
    {
      operator delete(v35);
    }
  }

  else
  {
    *v23 = xmmword_2500C7370;
    *(v23 + 16) = v22;
    *(v23 + 20) = v82;
    *(v23 + 28) = DWORD2(v82);
    *(v23 + 32) = v17;
    *(v23 + 48) = v6;
    *(v23 + 64) = v18;
    *(v23 + 80) = v7;
    v25 = v23 + 96;
  }

  *(a1 + 16) = v25;
  v81 = 0u;
  memset(v80, 0, sizeof(v80));
  LODWORD(v82) = 0;
  std::deque<unsigned int>::push_back(v80, &v82);
  v36 = *(&v81 + 1);
  if (*(&v81 + 1))
  {
    v58 = vdupq_n_s64(0xFFF0000000000000);
    v59 = vdupq_n_s64(0x7FF0000000000000uLL);
    do
    {
      v37 = v36 - 1;
      v38 = *(*(*(&v80[0] + 1) + (((v81 + v37) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v81 + v37) & 0x3FF));
      *(&v81 + 1) = v37;
      std::deque<unsigned int>::__maybe_remove_back_spare[abi:nn200100](v80, 1);
      v39 = *(a2 + 24);
      if (!v39)
      {
LABEL_43:
        std::__throw_bad_function_call[abi:nn200100]();
      }

      if (((*(*v39 + 48))(v39, *(a1 + 8) + 96 * v38) & 1) == 0)
      {
        v40 = (*(a1 + 8) + 96 * v38);
        v41 = v40[1];
        v82 = *v40;
        v83 = v41;
        v42 = v40[5];
        v44 = v40[2];
        v43 = v40[3];
        v86 = v40[4];
        *(&v41 + 1) = *(&v86 + 1);
        v87 = v42;
        v84 = v44;
        v85 = v43;
        *&v41 = 0x7FF0000000000000;
        v76 = v59;
        v77 = v41;
        *&v42 = 0xFFF0000000000000;
        v78 = v58;
        v79 = v42;
        v72 = v59;
        v73 = v41;
        v74 = v58;
        v75 = v42;
        v45 = *(a3 + 24);
        if (!v45)
        {
          goto LABEL_43;
        }

        v46 = (*(*v45 + 48))(v45, &v82, &v76, &v72);
        if (v46)
        {
          v47 = v46;
          if (v83 != v46)
          {
            v48 = a2;
            v49 = a3;
            v50 = HIDWORD(v82) + v46;
            v51 = v83 - v46;
            v52 = *(a1 + 8);
            v53 = -1431655765 * ((*(a1 + 16) - v52) >> 5);
            v54 = 3 * v38;
            *(v52 + 32 * v54 + 4) = v53;
            LODWORD(v66) = v53;
            std::deque<unsigned int>::push_back(v80, &v66);
            LODWORD(v66) = -1431655765 * ((*(a1 + 16) - *(a1 + 8)) >> 5);
            *(&v66 + 4) = -1;
            HIDWORD(v66) = HIDWORD(v82);
            v67 = v47;
            v68 = v76;
            v69 = v77;
            v70 = v78;
            v71 = v79;
            std::vector<geom::bvh_node<double,(unsigned char)3>>::push_back[abi:nn200100](a1 + 8, &v66);
            v55 = *(a1 + 8);
            v56 = -1431655765 * ((*(a1 + 16) - v55) >> 5);
            *(v55 + 32 * v54 + 8) = v56;
            LODWORD(v60) = v56;
            std::deque<unsigned int>::push_back(v80, &v60);
            LODWORD(v60) = -1431655765 * ((*(a1 + 16) - *(a1 + 8)) >> 5);
            *(&v60 + 4) = -1;
            HIDWORD(v60) = v50;
            v61 = v51;
            a3 = v49;
            a2 = v48;
            v62 = v72;
            v63 = v73;
            v64 = v74;
            v65 = v75;
            std::vector<geom::bvh_node<double,(unsigned char)3>>::push_back[abi:nn200100](a1 + 8, &v60);
          }
        }
      }

      v36 = *(&v81 + 1);
    }

    while (*(&v81 + 1));
  }

  *a1 = 1;
  std::deque<unsigned int>::~deque[abi:nn200100](v80);
LABEL_42:
  v57 = *MEMORY[0x277D85DE8];
}

uint64_t geom::bvh<double,(unsigned char)3>::build_median(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>::__value_func[abi:nn200100](v6, a2);
  v5[0] = &unk_2862926A8;
  v5[1] = a1;
  v5[3] = v5;
  geom::bvh<double,(unsigned char)3>::build_top_down(a1, v6, v5);
  std::__function::__value_func<unsigned int ()(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)>::~__value_func[abi:nn200100](v5);
  result = std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>::~__value_func[abi:nn200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void geom::bvh<double,(unsigned char)3>::build_surface_area_heuristic(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>::__value_func[abi:nn200100](v3, a2);
  geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)3>>(a1, v3);
}

void geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)3>>(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>::__value_func[abi:nn200100](v2, a2);
  operator new();
}

void geom::bvh<double,(unsigned char)3>::build_volume_heuristic(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>::__value_func[abi:nn200100](v3, a2);
  geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<geom::volume_heuristic_functor<double,(unsigned char)3>>(a1, v3);
}

void geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<geom::volume_heuristic_functor<double,(unsigned char)3>>(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>::__value_func[abi:nn200100](v2, a2);
  operator new();
}

void geom::bvh<double,(unsigned char)3>::build_intersection_volume_heuristic(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>::__value_func[abi:nn200100](v3, a2);
  geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<geom::intersection_volume_heuristic_functor<double,(unsigned char)3>>(a1, v3);
}

void geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<geom::intersection_volume_heuristic_functor<double,(unsigned char)3>>(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>::__value_func[abi:nn200100](v2, a2);
  operator new();
}

uint64_t geom::bvh<double,(unsigned char)3>::raycast(void *a1, uint64_t a2, uint64_t a3, double *a4, unsigned int *a5, double a6, __n128 a7)
{
  *a4 = INFINITY;
  *a5 = -1;
  if (a1[5] == a1[4] || (v8 = a1[1], a1[2] == v8))
  {
    v30 = 0;
    return v30 & 1;
  }

  v13 = 0;
  v15 = *(a3 + 32);
  a7.n128_u64[0] = *(a3 + 48);
  v14 = 0uLL;
  v15.i64[1] = vextq_s8(v15, v15, 8uLL).u64[0];
  v16 = 0uLL;
  do
  {
    v110[0] = v15;
    v110[1] = a7;
    v17 = *(v110 + (v13 & 3));
    v18 = fabs(v17);
    v19 = 1.0 / v17;
    if (v18 <= 1.0e-10)
    {
      v19 = INFINITY;
    }

    v108 = v14;
    v109 = v16;
    *&v108.i64[v13 & 3] = v19;
    v14 = v108;
    *&v20 = v109;
    *(&v20 + 1) = *(&v16 + 1);
    ++v13;
    v16 = v20;
  }

  while (v13 != 3);
  v116 = 0u;
  memset(v115, 0, sizeof(v115));
  *v112 = 0;
  *&v112[8] = xmmword_2500C7380;
  v22 = *(v8 + 4);
  v21 = v8[5];
  if (*v108.i64 == INFINITY)
  {
    v23 = *a3;
    v24 = *(v8 + 2);
    if (*a3 < *v24.i64 || *v23.i64 > *v22.i64)
    {
      goto LABEL_186;
    }

    v25 = *(a3 + 16);
    v26 = v8[3];
    v27 = vzip2q_s64(v24, v23);
    v28 = 0.0;
    v29 = INFINITY;
  }

  else
  {
    v31 = *(v8 + 2);
    v26 = v8[3];
    v32 = *a3;
    v25 = *(a3 + 16);
    v29 = *v108.i64 * (*v31.i64 - *a3);
    v33 = *v108.i64 * (*v22.i64 - *a3);
    if (v33 >= v29)
    {
      v34 = *v108.i64 * (*v31.i64 - *a3);
    }

    else
    {
      v34 = *v108.i64 * (*v22.i64 - *a3);
    }

    if (v33 >= v29)
    {
      v29 = *v108.i64 * (*v22.i64 - *a3);
    }

    v28 = 0.0;
    if (v34 >= 0.0)
    {
      v28 = v34;
    }

    *&v112[8] = v28;
    *&v112[16] = v29;
    if (v28 > v29)
    {
      goto LABEL_186;
    }

    v27 = vzip2q_s64(v31, v32);
  }

  v35 = *vextq_s8(v108, v108, 8uLL).i64;
  if (v35 == INFINITY)
  {
    v22.i64[0] = v27.i64[1];
    v36 = vmovn_s64(vcgtq_f64(v27, v22));
    if ((v36.i32[0] | v36.i32[1]))
    {
      goto LABEL_186;
    }
  }

  else
  {
    v37 = vmulq_n_f64(vsubq_f64(vextq_s8(v22, v27, 8uLL), vdupq_laneq_s64(v27, 1)), v35);
    if (v37.f64[0] >= v37.f64[1])
    {
      v38 = v37.f64[1];
    }

    else
    {
      v38 = v37.f64[0];
    }

    if (v37.f64[0] < v37.f64[1])
    {
      v37.f64[0] = v37.f64[1];
    }

    if (v38 >= v28)
    {
      v28 = v38;
    }

    if (v29 >= v37.f64[0])
    {
      v29 = v37.f64[0];
    }

    *&v112[8] = v28;
    *&v112[16] = v29;
    if (v28 > v29)
    {
      goto LABEL_186;
    }
  }

  if (*&v109 == INFINITY)
  {
    if (*&v25 < *&v26 || *&v25 > *&v21)
    {
      goto LABEL_186;
    }
  }

  else
  {
    v39 = *&v109 * (*&v26 - *&v25);
    v40 = *&v109 * (*&v21 - *&v25);
    if (v40 >= v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = v40;
    }

    if (v40 < v39)
    {
      v40 = v39;
    }

    if (v41 >= v28)
    {
      v28 = v41;
    }

    if (v29 >= v40)
    {
      v29 = v40;
    }

    *&v112[8] = v28;
    *&v112[16] = v29;
    if (v28 > v29)
    {
      goto LABEL_186;
    }
  }

  if (v28 >= 0.0 || v29 >= 0.0)
  {
    v106 = v35;
    v105 = *&v109;
    v107 = *v108.i64;
    std::deque<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state,std::allocator<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state>>::push_back(v115, v112);
    v42 = *(&v116 + 1);
    if (*(&v116 + 1))
    {
      v30 = 0;
      while (1)
      {
        v43 = v42 - 1;
        v44 = *(*(&v115[0] + 1) + 8 * ((v116 + v43) / 0xAAuLL)) + 24 * ((v116 + v43) % 0xAAuLL);
        v45 = *v44;
        v46 = *(v44 + 8);
        *(&v116 + 1) = v43;
        std::deque<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state,std::allocator<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state>>::__maybe_remove_back_spare[abi:nn200100](v115, 1);
        if (*a4 < v46)
        {
          goto LABEL_182;
        }

        v47 = a1[1];
        v48 = (v47 + 96 * v45);
        v50 = v48[1];
        v49 = v48[2];
        if (v50 == -1 && v49 == -1)
        {
          v64 = v48[4];
          if (v64)
          {
            v65 = v48[3];
            v66 = (a1[4] + 4 * v65);
            v67 = 4 * (v64 + v65) - 4 * v65;
            do
            {
              v68 = *v66;
              *v111 = 0;
              v69 = *(a3 + 16);
              *v112 = *a3;
              *&v112[16] = v69;
              v70 = *(a3 + 48);
              v113 = *(a3 + 32);
              v114 = v70;
              if (std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)3>,double &)>::operator()(a2, v68))
              {
                if (*v111 < *a4 || (*v111 == *a4 ? (v71 = v68 >= *a5) : (v71 = 1), !v71))
                {
                  *a4 = *v111;
                  *a5 = v68;
                }

                v30 = 1;
              }

              ++v66;
              v67 -= 4;
            }

            while (v67);
          }

          goto LABEL_182;
        }

        v52 = (v47 + 96 * v50);
        v53 = v47 + 96 * v49 + 32;
        *v112 = v50;
        *&v112[8] = xmmword_2500C7380;
        v54 = v52[8];
        if (v107 == INFINITY)
        {
          v56 = *a3;
          v55 = *(a3 + 16);
          v57 = *(a3 + 8);
          v58 = *a3 >= v52[4] && *v56.i64 <= v54;
          v59 = v106;
          if (!v58)
          {
            v60 = 0;
            *v111 = v49;
            *&v111[8] = xmmword_2500C7380;
            v61 = v53 + 32;
            v62 = *(v53 + 32);
            v63 = 0.0;
LABEL_123:
            if (*v56.i64 < *v53 || *v56.i64 > *&v62)
            {
              goto LABEL_180;
            }

            v86 = 0.0;
            v87 = INFINITY;
            goto LABEL_139;
          }

          v63 = 0.0;
          v75 = INFINITY;
        }

        else
        {
          v56 = *a3;
          v55 = *(a3 + 16);
          v72 = v107 * (v52[4] - *a3);
          v73 = v107 * (v54 - *a3);
          if (v73 >= v72)
          {
            v74 = v107 * (v52[4] - *a3);
          }

          else
          {
            v74 = v73;
          }

          if (v73 >= v72)
          {
            v75 = v73;
          }

          else
          {
            v75 = v107 * (v52[4] - *a3);
          }

          if (v74 >= 0.0)
          {
            v63 = v74;
          }

          else
          {
            v63 = 0.0;
          }

          *&v112[8] = v63;
          *&v112[16] = v75;
          v57 = *&v56.i64[1];
          v59 = v106;
          if (v63 > v75)
          {
            v60 = 0;
            *v111 = v49;
            v61 = v53 + 32;
            v62 = *(v53 + 32);
            goto LABEL_129;
          }
        }

        v76 = v52[5];
        if (v59 == INFINITY)
        {
          if (v57 < v76 || v57 > v52[9])
          {
            goto LABEL_108;
          }
        }

        else
        {
          v78 = v59 * (v76 - v57);
          v79 = v59 * (v52[9] - v57);
          if (v79 >= v78)
          {
            v80 = v78;
          }

          else
          {
            v80 = v59 * (v52[9] - v57);
          }

          if (v79 >= v78)
          {
            v78 = v59 * (v52[9] - v57);
          }

          if (v80 >= v63)
          {
            v63 = v80;
          }

          if (v75 >= v78)
          {
            v75 = v78;
          }

          *&v112[8] = v63;
          *&v112[16] = v75;
          if (v63 > v75)
          {
LABEL_108:
            v60 = 0;
            goto LABEL_122;
          }
        }

        if (v105 == INFINITY)
        {
          if (*&v55 < v52[6] || *&v55 > v52[10])
          {
            goto LABEL_108;
          }
        }

        else
        {
          v82 = v105 * (v52[6] - *&v55);
          v83 = v105 * (v52[10] - *&v55);
          if (v83 >= v82)
          {
            v84 = v105 * (v52[6] - *&v55);
          }

          else
          {
            v84 = v105 * (v52[10] - *&v55);
          }

          if (v83 >= v82)
          {
            v82 = v105 * (v52[10] - *&v55);
          }

          if (v84 >= v63)
          {
            v63 = v84;
          }

          if (v75 >= v82)
          {
            v75 = v82;
          }

          *&v112[8] = v63;
          *&v112[16] = v75;
          if (v63 > v75)
          {
            goto LABEL_108;
          }
        }

        v60 = v75 >= 0.0 || v63 >= 0.0;
LABEL_122:
        *v111 = v49;
        *&v111[8] = xmmword_2500C7380;
        v61 = v53 + 32;
        v62 = *(v53 + 32);
        if (v107 == INFINITY)
        {
          goto LABEL_123;
        }

LABEL_129:
        v88 = v107 * (*v53 - *v56.i64);
        v89 = v107 * (*&v62 - *v56.i64);
        if (v89 >= v88)
        {
          v90 = v88;
        }

        else
        {
          v90 = v89;
        }

        if (v89 >= v88)
        {
          v87 = v89;
        }

        else
        {
          v87 = v88;
        }

        if (v90 >= 0.0)
        {
          v86 = v90;
        }

        else
        {
          v86 = 0.0;
        }

        *&v111[8] = v86;
        *&v111[16] = v87;
        if (v86 > v87)
        {
          goto LABEL_180;
        }

LABEL_139:
        v91 = *(v53 + 8);
        if (v59 == INFINITY)
        {
          if (v57 < v91 || v57 > *(v61 + 8))
          {
            goto LABEL_180;
          }
        }

        else
        {
          v93 = v59 * (v91 - v57);
          v94 = v59 * (*(v61 + 8) - v57);
          if (v94 >= v93)
          {
            v95 = v93;
          }

          else
          {
            v95 = v94;
          }

          if (v94 < v93)
          {
            v94 = v93;
          }

          if (v95 >= v86)
          {
            v86 = v95;
          }

          if (v87 >= v94)
          {
            v87 = v94;
          }

          *&v111[8] = v86;
          *&v111[16] = v87;
          if (v86 > v87)
          {
            goto LABEL_180;
          }
        }

        if (v105 == INFINITY)
        {
          if (*&v55 >= *(v53 + 16) && *&v55 <= *(v53 + 48))
          {
            goto LABEL_171;
          }
        }

        else
        {
          v97 = v105 * (*(v53 + 16) - *&v55);
          v98 = v105 * (*(v53 + 48) - *&v55);
          if (v98 >= v97)
          {
            v99 = v97;
          }

          else
          {
            v99 = v98;
          }

          if (v98 < v97)
          {
            v98 = v97;
          }

          if (v99 >= v86)
          {
            v86 = v99;
          }

          if (v87 >= v98)
          {
            v87 = v98;
          }

          *&v111[8] = v86;
          *&v111[16] = v87;
          if (v86 <= v87)
          {
LABEL_171:
            v100 = v86 >= 0.0;
            if (v87 >= 0.0)
            {
              v100 = 1;
            }

            v101 = v86 < v63 && v100;
            if (v101 && v60)
            {
              v102 = *&v112[16];
              v103 = *v112;
              *v112 = *v111;
              *&v112[16] = *&v111[16];
              *v111 = v103;
              *&v111[16] = v102;
            }

            else if (!v100)
            {
              if (!v60)
              {
                goto LABEL_182;
              }

LABEL_181:
              std::deque<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state,std::allocator<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state>>::push_back(v115, v112);
              goto LABEL_182;
            }

            std::deque<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state,std::allocator<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state>>::push_back(v115, v111);
          }
        }

LABEL_180:
        if (v60)
        {
          goto LABEL_181;
        }

LABEL_182:
        v42 = *(&v116 + 1);
        if (!*(&v116 + 1))
        {
          goto LABEL_187;
        }
      }
    }
  }

LABEL_186:
  v30 = 0;
LABEL_187:
  std::deque<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state,std::allocator<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state>>::~deque[abi:nn200100](v115);
  return v30 & 1;
}

uint64_t std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)3>,double &)>::operator()(uint64_t a1, int a2)
{
  v8 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v8);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return geom::bvh<double,(unsigned char)3>::find_all_intersections(v4, v5, v6, v7);
}

uint64_t geom::bvh<double,(unsigned char)3>::find_all_intersections(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8) = *a4;
  if (*(result + 16) != *(result + 8))
  {
    v7 = result;
    v23 = 0u;
    memset(v22, 0, sizeof(v22));
    v21 = 0;
    std::deque<unsigned int>::push_back(v22, &v21);
    v8 = *(&v23 + 1);
    if (*(&v23 + 1))
    {
      while (1)
      {
        v9 = v8 - 1;
        v10 = *(*(*(&v22[0] + 1) + (((v23 + v9) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v23 + v9) & 0x3FF));
        v11 = *(v7 + 8);
        *(&v23 + 1) = v9;
        std::deque<unsigned int>::__maybe_remove_back_spare[abi:nn200100](v22, 1);
        v12 = *(a3 + 24);
        if (!v12)
        {
          break;
        }

        v13 = (v11 + 96 * v10);
        if ((*(*v12 + 48))(v12, v13 + 8))
        {
          if (v13[1] == -1 && v13[2] == -1)
          {
            v14 = v13[4];
            if (v14)
            {
              v15 = v13[3];
              v16 = (*(v7 + 32) + 4 * v15);
              v17 = 4 * (v14 + v15) - 4 * v15;
              do
              {
                v21 = *v16;
                if (std::function<BOOL ()>::operator()(a2, v21))
                {
                  std::vector<unsigned int>::push_back[abi:nn200100](a4, &v21);
                }

                ++v16;
                v17 -= 4;
              }

              while (v17);
            }
          }

          else
          {
            std::deque<unsigned int>::push_back(v22, v13 + 1);
            std::deque<unsigned int>::push_back(v22, v13 + 2);
          }
        }

        v8 = *(&v23 + 1);
        if (!*(&v23 + 1))
        {
          return std::deque<unsigned int>::~deque[abi:nn200100](v22);
        }
      }

      v18 = std::__throw_bad_function_call[abi:nn200100]();
      return geom::bvh<double,(unsigned char)3>::tree_statistics(v18, v19, v20);
    }

    else
    {
      return std::deque<unsigned int>::~deque[abi:nn200100](v22);
    }
  }

  return result;
}

uint64_t geom::bvh<double,(unsigned char)3>::tree_statistics(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  if (*(a1 + 16) == *(a1 + 8))
  {
    *a2 = 0;
    *a3 = 0;
  }

  else
  {
    v16 = 0x100000000;
    std::deque<std::pair<unsigned int,unsigned int>>::push_back(v17, &v16);
    v6 = *(&v18 + 1);
    *a2 = 0;
    *a3 = 0;
    if (v6)
    {
      do
      {
        v7 = v6 - 1;
        v8 = (*(*(&v17[0] + 1) + (((v18 + v7) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v18 + v7) & 0x1FF));
        v10 = *v8;
        v9 = v8[1];
        *(&v18 + 1) = v7;
        std::deque<std::pair<unsigned int,unsigned int>>::__maybe_remove_back_spare[abi:nn200100](v17, 1);
        v11 = *(a1 + 8) + 96 * v10;
        v12 = *a2;
        if (*a2 <= v9)
        {
          v12 = v9;
        }

        *a2 = v12;
        *a3 += v9;
        v13 = *(v11 + 4);
        if (v13 != -1)
        {
          v16 = v13 | ((v9 + 1) << 32);
          std::deque<std::pair<unsigned int,unsigned int>>::push_back(v17, &v16);
        }

        v14 = *(v11 + 8);
        if (v14 != -1)
        {
          v16 = v14 | ((v9 + 1) << 32);
          std::deque<std::pair<unsigned int,unsigned int>>::push_back(v17, &v16);
        }

        v6 = *(&v18 + 1);
      }

      while (*(&v18 + 1));
    }
  }

  return std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](v17);
}

uint64_t geom::bvh<double,(unsigned char)3>::primitives_for_node_index(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8) + 96 * a2;
  v3 = *(v2 + 12);
  result = *(a1 + 32) + 4 * v3;
  v5 = (*(v2 + 16) + v3) - v3;
  return result;
}

void std::vector<geom::bvh_node<double,(unsigned char)3>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    v12 = v11 + 1;
    if (v11 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 5);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x155555555555555)
    {
      v14 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::bvh_node<double,(unsigned char)3>>>(a1, v14);
    }

    v15 = 96 * v11;
    v16 = a2[1];
    *v15 = *a2;
    *(v15 + 16) = v16;
    v17 = a2[2];
    v18 = a2[3];
    v19 = a2[5];
    *(v15 + 64) = a2[4];
    *(v15 + 80) = v19;
    *(v15 + 32) = v17;
    *(v15 + 48) = v18;
    v10 = 96 * v11 + 96;
    v20 = *(a1 + 8) - *a1;
    v21 = v15 - v20;
    memcpy((v15 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = a2[2];
    v8 = a2[3];
    v9 = a2[5];
    v4[4] = a2[4];
    v4[5] = v9;
    v4[2] = v7;
    v4[3] = v8;
    v10 = (v4 + 6);
  }

  *(a1 + 8) = v10;
}

void geom::bvh<double,(unsigned char)3>::partition_node_median(uint64_t a1, float64x2_t *a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v17[0] = &unk_2862928A8;
  v17[1] = a1;
  v17[3] = v17;
  v16[0] = &unk_2862929A8;
  v16[1] = a1;
  v16[2] = v17;
  v16[3] = v16;
  v5 = a2[3];
  v6 = a2[5];
  v7 = a2[2];
  v8 = a2[4];
  v14 = 0;
  v13 = 0;
  std::function<void ()(geom::bvh_node<double,(unsigned char)3> const&,int,double &,unsigned int &)>::operator()(v16, a2, 0);
  v9 = vsubq_f64(v8, v7);
  v15 = 0;
  v12 = 0;
  std::function<void ()(geom::bvh_node<double,(unsigned char)3> const&,int,double &,unsigned int &)>::operator()(v16, a2, 1);
  v3 = 0;
  if (v9.f64[1] > v9.f64[0])
  {
    v14 = 1;
    v13 = v15;
    v3 = 1;
  }

  v15 = 0;
  v12 = 0;
  std::function<void ()(geom::bvh_node<double,(unsigned char)3> const&,int,double &,unsigned int &)>::operator()(v16, a2, 2);
  v4 = v9;
  v4.i64[1] = vextq_s8(v4, v4, 8uLL).u64[0];
  v10 = v4;
  v11 = vsubq_f64(v6, v5);
  if (v11.f64[0] > *(&v10 | (8 * v3)))
  {
    v14 = 2;
    v13 = v15;
  }

  operator new();
}

unint64_t std::function<void ()(geom::bvh_node<double,(unsigned char)3> const&,int,double &,unsigned int &)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v9 = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, a2, &v9);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return geom::bvh<double,(unsigned char)3>::partition_node_middle(v5, v6, v7, v8);
}

unint64_t geom::bvh<double,(unsigned char)3>::partition_node_middle(void *a1, uint64_t a2, float64x2_t *a3, float64x2_t *a4)
{
  v4 = *(a2 + 64);
  v5 = *(a2 + 80);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = vsubq_f64(v4, v6);
  v50 = v8;
  v51 = vsubq_f64(v5, v7);
  if (v51.f64[0] <= *(&v50 | (8 * (v8.f64[1] > v8.f64[0]))))
  {
    v9 = v8.f64[1] > v8.f64[0];
  }

  else
  {
    v9 = 2;
  }

  v49[0] = v4;
  v49[1] = v5;
  v10 = *(v49 + v9);
  v48[0] = v6;
  v48[1] = v7;
  v11 = a1[4];
  v12 = *(a2 + 12);
  v13 = 4 * v12;
  v14 = (v11 + 4 * v12);
  v15 = *(a2 + 16) + v12;
  if (v13 != 4 * v15)
  {
    v16 = (*(v48 + v9) + v10) * 0.5;
    v17 = 4 * v15;
    v18 = v14;
    v14 = (v17 + v11);
    v19 = a1[7];
    while (2)
    {
      while (1)
      {
        v20 = *v18;
        v21 = (v19 + 32 * v20);
        v6 = v21[1];
        v47[0] = *v21;
        v47[1] = v6;
        if (*(v47 + v9) >= v16)
        {
          break;
        }

        if (++v18 == v14)
        {
          goto LABEL_14;
        }
      }

      do
      {
        if (--v14 == v18)
        {
          v14 = v18;
          goto LABEL_14;
        }

        v22 = *v14;
        v23 = (v19 + 32 * v22);
        v6 = v23[1];
        v46[0] = *v23;
        v46[1] = v6;
      }

      while (*(v46 + v9) >= v16);
      *v18++ = v22;
      *v14 = v20;
      if (v14 != v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
  v25 = *(a2 + 12);
  v24 = *(a2 + 16);
  v26 = (v11 + 4 * v25);
  v27 = (v14 - v26) >> 2;
  v28 = v24 == v27 || v27 == 0;
  v29 = v24 >> 1;
  if (v28)
  {
    v27 = v29;
  }

  else
  {
    v27 = v27;
  }

  v30 = vdupq_n_s64(0x7FF0000000000000uLL);
  v31 = vdupq_n_s64(0xFFF0000000000000);
  if (v27)
  {
    v6.f64[0] = INFINITY;
    v7.f64[0] = -INFINITY;
    v32 = 4 * (v27 + v25) - 4 * v25;
    v33 = vdupq_n_s64(0x7FF0000000000000uLL);
    v34 = vdupq_n_s64(0xFFF0000000000000);
    do
    {
      v35 = *v26;
      v26 += 4;
      v36 = a1[10] + (v35 << 6);
      v33 = vminnmq_f64(v33, *v36);
      v6 = vminnmq_f64(*&v6.f64[0], *(v36 + 16));
      v34 = vmaxnmq_f64(v34, *(v36 + 32));
      v7 = vmaxnmq_f64(*&v7.f64[0], *(v36 + 48));
      v32 -= 4;
    }

    while (v32);
  }

  else
  {
    v6.f64[0] = INFINITY;
    v7.f64[0] = -INFINITY;
    v34 = v31;
    v33 = v30;
  }

  *a3 = v33;
  a3[1] = v6;
  a3[2] = v34;
  a3[3] = v7;
  v37 = *(a2 + 16);
  if (v37 == v27)
  {
    v6.f64[0] = INFINITY;
    v7.f64[0] = -INFINITY;
  }

  else
  {
    v38 = *(a2 + 12);
    v39 = (v37 + v38);
    v40 = v38 + v27;
    v41 = (a1[4] + 4 * (v38 + v27));
    v30 = vdupq_n_s64(0x7FF0000000000000uLL);
    v6.f64[0] = INFINITY;
    v31 = vdupq_n_s64(0xFFF0000000000000);
    v7.f64[0] = -INFINITY;
    v42 = 4 * v39 - 4 * v40;
    do
    {
      v43 = *v41++;
      v44 = a1[10] + (v43 << 6);
      v30 = vminnmq_f64(v30, *v44);
      v6 = vminnmq_f64(*&v6.f64[0], *(v44 + 16));
      v31 = vmaxnmq_f64(v31, *(v44 + 32));
      v7 = vmaxnmq_f64(*&v7.f64[0], *(v44 + 48));
      v42 -= 4;
    }

    while (v42);
  }

  *a4 = v30;
  a4[1] = v6;
  a4[2] = v31;
  a4[3] = v7;
  return v27;
}

void geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>>(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>::__value_func[abi:nn200100](v2, a2);
  operator new();
}

void geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>>(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>::__value_func[abi:nn200100](v2, a2);
  operator new();
}

void geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>>(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>::__value_func[abi:nn200100](v2, a2);
  operator new();
}

void geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>>(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>::__value_func[abi:nn200100](v2, a2);
  operator new();
}

uint64_t std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<unsigned int *>::~__split_buffer(a1);
}

uint64_t std::deque<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state,std::allocator<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state>>::~deque[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 85;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 170;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<unsigned int *>::~__split_buffer(a1);
}

void *_ZNKSt3__110__function12__value_funcIFDv3_djS2_EEclB8nn200100EOjOS2_@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    result = (*(*v2 + 48))(v8);
    v5 = v8[1];
    *a2 = v8[0];
    a2[1] = v5;
  }

  else
  {
    v6 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>::__value_func[abi:nn200100](v6, v7);
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<geom::bvh<float,(unsigned char)2>::build_middle_split(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)#1},std::allocator<geom::bvh<float,(unsigned char)2>::build_middle_split(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286291818;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<geom::bvh<float,(unsigned char)2>::build_middle_split(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)#1},std::allocator<geom::bvh<float,(unsigned char)2>::build_middle_split(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<unsigned int ()(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<geom::bvh<float,(unsigned char)2>::build_median(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)#1},std::allocator<geom::bvh<float,(unsigned char)2>::build_median(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2862918A8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<geom::bvh<float,(unsigned char)2>::build_median(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)#1},std::allocator<geom::bvh<float,(unsigned char)2>::build_median(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<geom::surface_area_heuristic_functor<float,(unsigned char)2>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>,geom::surface_area_heuristic_functor<float,(unsigned char)2>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)#1},std::allocator<void geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<geom::surface_area_heuristic_functor<float,(unsigned char)2>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>,geom::surface_area_heuristic_functor<float,(unsigned char)2>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286291928;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<geom::surface_area_heuristic_functor<float,(unsigned char)2>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>,geom::surface_area_heuristic_functor<float,(unsigned char)2>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)#1},std::allocator<void geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<geom::surface_area_heuristic_functor<float,(unsigned char)2>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>,geom::surface_area_heuristic_functor<float,(unsigned char)2>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t geom::bvh<float,(unsigned char)2>::partition_node_heuristic<geom::surface_area_heuristic_functor<float,(unsigned char)2>>(void *a1, unsigned int a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5)
{
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v10 = a2;
  std::vector<geom::bbox<float,(unsigned char)2>>::resize(&v118, a2);
  v115 = 0;
  v116 = 0;
  v117 = 0;
  std::vector<geom::bbox<float,(unsigned char)2>>::resize(&v115, v10);
  __p = 0;
  v113 = 0;
  v114 = 0;
  std::vector<geom::bbox<float,(unsigned char)2>>::resize(&__p, v10);
  memset(&v111, 0, sizeof(v111));
  std::vector<float>::resize(&v111, v10);
  memset(&v110, 0, sizeof(v110));
  v11 = a2 - 1;
  std::vector<float>::resize(&v110, v11);
  v14 = *(a3 + 12);
  v13 = *(a3 + 16);
  v15 = v13 + v14;
  v16 = (a1[4] + 4 * v14);
  if (v13)
  {
    v17 = 4 * v15 - 4 * v14;
    v18 = 0x7F0000007FLL;
    v19 = vneg_f32(0x7F0000007FLL);
    v20 = (a1[4] + 4 * v14);
    do
    {
      v21 = *v20++;
      v22 = *(a1[7] + 8 * v21);
      v19 = vminnm_f32(v19, v22);
      v18 = vmaxnm_f32(v18, v22);
      v17 -= 4;
    }

    while (v17);
  }

  else
  {
    v18 = 0x7F0000007FLL;
    v19 = vneg_f32(0x7F0000007FLL);
  }

  v23 = vsub_f32(v18, v19);
  *v12.i32 = a2;
  v24 = vdiv_f32(v23, vdup_lane_s32(v12, 0));
  if (sqrtf(vaddv_f32(vmul_f32(v24, v24))) <= 0.00001)
  {
    v90 = v14 + (v13 >> 1);
    v91 = 0x7F0000007FLL;
    v92 = vneg_f32(0x7F0000007FLL);
    v93 = v92;
    v94 = 0x7F0000007FLL;
    if (v13 >= 2)
    {
      v95 = 4 * v90 - 4 * v14;
      v93 = vneg_f32(0x7F0000007FLL);
      do
      {
        v96 = *v16++;
        v97 = (a1[10] + 16 * v96);
        v93 = vminnm_f32(v93, *v97);
        v94 = vmaxnm_f32(v94, v97[1]);
        v95 -= 4;
      }

      while (v95);
    }

    *a4 = v93;
    a4[1] = v94;
    if (v13)
    {
      v98 = (a1[4] + 4 * v90);
      v99 = 4 * v15 - 4 * v90;
      v91 = 0x7F0000007FLL;
      v92 = vneg_f32(0x7F0000007FLL);
      do
      {
        v100 = *v98++;
        v101 = (a1[10] + 16 * v100);
        v92 = vminnm_f32(v92, *v101);
        v91 = vmaxnm_f32(v91, v101[1]);
        v99 -= 4;
      }

      while (v99);
    }

    *a5 = v92;
    a5[1] = v91;
    v25 = *(a3 + 16) >> 1;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 1;
    v28 = -1;
    v29 = 3.4028e38;
    v30 = vneg_f32(0x7F0000007FLL);
    v31 = 1;
    do
    {
      v32 = v31;
      v105 = v23;
      v33 = *(&v105 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v26 & 1)));
      if (fabsf(v33) > 0.00001)
      {
        if (v111.__end_ - v111.__begin_ >= 1)
        {
          v103 = v25;
          v34 = a4;
          v35 = a5;
          v36 = v31;
          v37 = a3;
          v38 = v27;
          bzero(v111.__begin_, v111.__end_ - v111.__begin_);
          v27 = v38;
          a3 = v37;
          v32 = v36;
          a5 = v35;
          a4 = v34;
          v25 = v103;
          *v12.i32 = a2;
        }

        v39 = v118;
        v40 = (v119 - v118) >> 4;
        if (v40 >= 1)
        {
          v41 = v40 + 1;
          do
          {
            *v39 = v30;
            v39[1] = 0x7F0000007FLL;
            v39 += 2;
            --v41;
          }

          while (v41 > 1);
        }

        v42 = *(a3 + 16);
        if (v42)
        {
          v43 = *(a3 + 12);
          v44 = (v42 + v43);
          v45 = (a1[4] + 4 * v43);
          v104 = v19;
          v46 = *(&v104 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v26 & 1)));
          v47 = 4 * v44 - 4 * v43;
          do
          {
            v48 = *v45++;
            v49 = (((*(a1[7] + 8 * v48 + 4 * (v26 & 1)) - v46) / v33) * *v12.i32);
            v50 = (a1[10] + 16 * v48);
            if (v49 == a2)
            {
              v49 = v11;
            }

            v118[2 * v49] = vminnm_f32(*v50, v118[2 * v49]);
            v118[2 * v49 + 1] = vmaxnm_f32(v50[1], v118[2 * v49 + 1]);
            ++v111.__begin_[v49];
            v47 -= 4;
          }

          while (v47);
        }

        v51 = v119;
        if (v118 != v119)
        {
          v52 = v115;
          v54 = *v118;
          v55 = v118[1];
          v53 = v118 + 2;
          *v115 = *v118;
          v52[1] = v55;
          if (v53 != v51)
          {
            v56 = v52 + 3;
            do
            {
              v57 = *v53;
              v58 = v53[1];
              v53 += 2;
              v54 = vminnm_f32(v54, v57);
              v55 = vmaxnm_f32(v55, v58);
              v56[-1] = v54;
              *v56 = v55;
              v56 += 2;
            }

            while (v53 != v51);
          }
        }

        v59 = v118;
        if (v119 != v118)
        {
          v60 = v113;
          v62 = v119[-2];
          v63 = v119[-1];
          v61 = v119 - 2;
          v113[-2] = v62;
          v60[-1] = v63;
          if (v59 != v61)
          {
            v64 = v60 - 4;
            do
            {
              v66 = v61[-2];
              v65 = v61[-1];
              v61 -= 2;
              v62 = vminnm_f32(v62, v66);
              v63 = vmaxnm_f32(v63, v65);
              *v64 = v62;
              v64[1] = v63;
              v64 -= 2;
            }

            while (v61 != v59);
          }
        }

        begin = v110.__begin_;
        if (v110.__end_ != v110.__begin_)
        {
          v68 = v111.__begin_ + v110.__end_ - v110.__begin_;
          v69 = v111.__begin_ + 1;
          v70 = *v111.__begin_;
          *v110.__begin_ = *v111.__begin_;
          if (v68 != v69)
          {
            v71 = begin + 1;
            do
            {
              v72 = *v69++;
              v70 += v72;
              *v71++ = v70;
            }

            while (v69 != v68);
          }
        }

        if (v11)
        {
          v73 = 0;
          v74 = v115;
          v75 = (__p + 16);
          do
          {
            v76 = begin[v73];
            v77 = v74[1];
            v78 = vcgt_f32(*v74, v77);
            v79 = vsub_f32(v77, *v74);
            v80 = vaddv_f32(vmul_f32(v79, vrev64_s32(v79)));
            if (vpmax_u32(v78, v78).i32[0] < 0)
            {
              v80 = 0.0;
            }

            v81 = v75[1];
            v82 = vcgt_f32(*v75, v81);
            v83 = vsub_f32(v81, *v75);
            v84 = vaddv_f32(vmul_f32(v83, vrev64_s32(v83)));
            if (vpmax_u32(v82, v82).i32[0] < 0)
            {
              v84 = 0.0;
            }

            v85 = (v84 * (*(a3 + 16) - v76)) + (v76 * v80);
            if (v85 < v29)
            {
              *a4->f32 = *v74->f32;
              *a5->f32 = *v75->f32;
              v28 = v26;
              v25 = v76;
              v27 = v73;
              v29 = v85;
            }

            ++v73;
            v74 += 2;
            v75 += 2;
          }

          while (v11 != v73);
        }
      }

      v31 = 0;
      v26 = 1;
    }

    while ((v32 & 1) != 0);
    v86 = a1[4];
    v87 = *(a3 + 12);
    v88 = (v86 + 4 * v87);
    v89 = *(a3 + 16) + v87;
    v106[0] = a1;
    v106[1] = v19;
    v106[2] = v18;
    v106[3] = v23;
    v107 = v27;
    v108 = v28;
    v109 = a2;
    std::__partition_impl[abi:nn200100]<unsigned int geom::bvh<float,(unsigned char)2>::partition_node_heuristic<geom::surface_area_heuristic_functor<float,(unsigned char)2>>(geom::surface_area_heuristic_functor<float,(unsigned char)2>,unsigned int,geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(v88, (v86 + 4 * v89), v106);
  }

  if (v110.__begin_)
  {
    v110.__end_ = v110.__begin_;
    operator delete(v110.__begin_);
  }

  if (v111.__begin_)
  {
    v111.__end_ = v111.__begin_;
    operator delete(v111.__begin_);
  }

  if (__p)
  {
    v113 = __p;
    operator delete(__p);
  }

  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }

  if (v118)
  {
    v119 = v118;
    operator delete(v118);
  }

  return v25;
}

void std::vector<geom::bbox<float,(unsigned char)2>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<geom::bbox<float,(unsigned char)2>>::__append(a1, a2 - v2);
  }
}

void std::vector<geom::bbox<float,(unsigned char)2>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 4)
  {
    if (a2)
    {
      v11 = &v4[2 * a2];
      v12 = vneg_f32(0x7F0000007FLL);
      do
      {
        *v4 = v12;
        v4[1] = 0x7F0000007FLL;
        v4 += 2;
      }

      while (v4 != v11);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = v4 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v6 >> 4;
    v9 = v5 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v10);
    }

    v13 = 16 * v8;
    v14 = 16 * v8 + 16 * a2;
    v15 = vneg_f32(0x7F0000007FLL);
    v16 = v13;
    do
    {
      *v16 = v15;
      v16[1] = 0x7F0000007FLL;
      v16 += 2;
    }

    while (v16 != v14);
    v17 = *(a1 + 8) - *a1;
    v18 = v13 - v17;
    memcpy((v13 - v17), *a1, v17);
    v19 = *a1;
    *a1 = v18;
    *(a1 + 8) = v14;
    *(a1 + 16) = 0;
    if (v19)
    {

      operator delete(v19);
    }
  }
}

_DWORD *std::__partition_impl[abi:nn200100]<unsigned int geom::bvh<float,(unsigned char)2>::partition_node_heuristic<geom::surface_area_heuristic_functor<float,(unsigned char)2>>(geom::surface_area_heuristic_functor<float,(unsigned char)2>,unsigned int,geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda(unsigned int)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(_DWORD *result, _DWORD *a2, _DWORD *a3)
{
  if (result != a2)
  {
    v3 = result;
    v4 = *(*a3 + 56);
    result = a2;
    while (2)
    {
      v5 = a3[8];
      v6 = a3[9];
      v7 = &a3[v6 & 1];
      v8 = v7[2];
      v9 = v7[6];
      v10 = a3[10];
      v11 = v10;
      v12 = v3;
      while (1)
      {
        v13 = *v12;
        v14 = (((*(v4 + 8 * v13 + 4 * (a3[9] & 1)) - v8) / v9) * v11);
        if (v10 == v14)
        {
          v14 = v10 - 1;
        }

        if (v14 > v5)
        {
          break;
        }

        if (++v12 == result)
        {
          return result;
        }
      }

      do
      {
        if (--result == v12)
        {
          return v12;
        }

        v15 = *result;
        v16 = (((*(v4 + 8 * v15 + 4 * (v6 & 1)) - v8) / v9) * v11);
        if (v10 == v16)
        {
          v16 = v10 - 1;
        }
      }

      while (v16 > v5);
      *v12 = v15;
      v3 = v12 + 1;
      *result = v13;
      if (result != v12 + 1)
      {
        continue;
      }

      break;
    }

    return v12 + 1;
  }

  return result;
}

__n128 std::__function::__func<void geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<geom::volume_heuristic_functor<float,(unsigned char)2>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>,geom::volume_heuristic_functor<float,(unsigned char)2>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)#1},std::allocator<void geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<geom::volume_heuristic_functor<float,(unsigned char)2>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>,geom::volume_heuristic_functor<float,(unsigned char)2>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2862919A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<geom::volume_heuristic_functor<float,(unsigned char)2>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>,geom::volume_heuristic_functor<float,(unsigned char)2>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)#1},std::allocator<void geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<geom::volume_heuristic_functor<float,(unsigned char)2>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>,geom::volume_heuristic_functor<float,(unsigned char)2>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t geom::bvh<float,(unsigned char)2>::partition_node_heuristic<geom::volume_heuristic_functor<float,(unsigned char)2>>(void *a1, unsigned int a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5)
{
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v10 = a2;
  std::vector<geom::bbox<float,(unsigned char)2>>::resize(&v118, a2);
  v115 = 0;
  v116 = 0;
  v117 = 0;
  std::vector<geom::bbox<float,(unsigned char)2>>::resize(&v115, v10);
  __p = 0;
  v113 = 0;
  v114 = 0;
  std::vector<geom::bbox<float,(unsigned char)2>>::resize(&__p, v10);
  memset(&v111, 0, sizeof(v111));
  std::vector<float>::resize(&v111, v10);
  memset(&v110, 0, sizeof(v110));
  v11 = a2 - 1;
  std::vector<float>::resize(&v110, v11);
  v14 = *(a3 + 12);
  v13 = *(a3 + 16);
  v15 = v13 + v14;
  v16 = (a1[4] + 4 * v14);
  if (v13)
  {
    v17 = 4 * v15 - 4 * v14;
    v18 = 0x7F0000007FLL;
    v19 = vneg_f32(0x7F0000007FLL);
    v20 = (a1[4] + 4 * v14);
    do
    {
      v21 = *v20++;
      v22 = *(a1[7] + 8 * v21);
      v19 = vminnm_f32(v19, v22);
      v18 = vmaxnm_f32(v18, v22);
      v17 -= 4;
    }

    while (v17);
  }

  else
  {
    v18 = 0x7F0000007FLL;
    v19 = vneg_f32(0x7F0000007FLL);
  }

  v23 = vsub_f32(v18, v19);
  *v12.i32 = a2;
  v24 = vdiv_f32(v23, vdup_lane_s32(v12, 0));
  if (sqrtf(vaddv_f32(vmul_f32(v24, v24))) <= 0.00001)
  {
    v90 = v14 + (v13 >> 1);
    v91 = 0x7F0000007FLL;
    v92 = vneg_f32(0x7F0000007FLL);
    v93 = v92;
    v94 = 0x7F0000007FLL;
    if (v13 >= 2)
    {
      v95 = 4 * v90 - 4 * v14;
      v93 = vneg_f32(0x7F0000007FLL);
      do
      {
        v96 = *v16++;
        v97 = (a1[10] + 16 * v96);
        v93 = vminnm_f32(v93, *v97);
        v94 = vmaxnm_f32(v94, v97[1]);
        v95 -= 4;
      }

      while (v95);
    }

    *a4 = v93;
    a4[1] = v94;
    if (v13)
    {
      v98 = (a1[4] + 4 * v90);
      v99 = 4 * v15 - 4 * v90;
      v91 = 0x7F0000007FLL;
      v92 = vneg_f32(0x7F0000007FLL);
      do
      {
        v100 = *v98++;
        v101 = (a1[10] + 16 * v100);
        v92 = vminnm_f32(v92, *v101);
        v91 = vmaxnm_f32(v91, v101[1]);
        v99 -= 4;
      }

      while (v99);
    }

    *a5 = v92;
    a5[1] = v91;
    v25 = *(a3 + 16) >> 1;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 1;
    v28 = -1;
    v29 = 3.4028e38;
    v30 = vneg_f32(0x7F0000007FLL);
    v31 = 1;
    do
    {
      v32 = v31;
      v105 = v23;
      v33 = *(&v105 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v26 & 1)));
      if (fabsf(v33) > 0.00001)
      {
        if (v111.__end_ - v111.__begin_ >= 1)
        {
          v103 = v25;
          v34 = a4;
          v35 = a5;
          v36 = v31;
          v37 = a3;
          v38 = v27;
          bzero(v111.__begin_, v111.__end_ - v111.__begin_);
          v27 = v38;
          a3 = v37;
          v32 = v36;
          a5 = v35;
          a4 = v34;
          v25 = v103;
          *v12.i32 = a2;
        }

        v39 = v118;
        v40 = (v119 - v118) >> 4;
        if (v40 >= 1)
        {
          v41 = v40 + 1;
          do
          {
            *v39 = v30;
            v39[1] = 0x7F0000007FLL;
            v39 += 2;
            --v41;
          }

          while (v41 > 1);
        }

        v42 = *(a3 + 16);
        if (v42)
        {
          v43 = *(a3 + 12);
          v44 = (v42 + v43);
          v45 = (a1[4] + 4 * v43);
          v104 = v19;
          v46 = *(&v104 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v26 & 1)));
          v47 = 4 * v44 - 4 * v43;
          do
          {
            v48 = *v45++;
            v49 = (((*(a1[7] + 8 * v48 + 4 * (v26 & 1)) - v46) / v33) * *v12.i32);
            v50 = (a1[10] + 16 * v48);
            if (v49 == a2)
            {
              v49 = v11;
            }

            v118[2 * v49] = vminnm_f32(*v50, v118[2 * v49]);
            v118[2 * v49 + 1] = vmaxnm_f32(v50[1], v118[2 * v49 + 1]);
            ++v111.__begin_[v49];
            v47 -= 4;
          }

          while (v47);
        }

        v51 = v119;
        if (v118 != v119)
        {
          v52 = v115;
          v54 = *v118;
          v55 = v118[1];
          v53 = v118 + 2;
          *v115 = *v118;
          v52[1] = v55;
          if (v53 != v51)
          {
            v56 = v52 + 3;
            do
            {
              v57 = *v53;
              v58 = v53[1];
              v53 += 2;
              v54 = vminnm_f32(v54, v57);
              v55 = vmaxnm_f32(v55, v58);
              v56[-1] = v54;
              *v56 = v55;
              v56 += 2;
            }

            while (v53 != v51);
          }
        }

        v59 = v118;
        if (v119 != v118)
        {
          v60 = v113;
          v62 = v119[-2];
          v63 = v119[-1];
          v61 = v119 - 2;
          v113[-2] = v62;
          v60[-1] = v63;
          if (v59 != v61)
          {
            v64 = v60 - 4;
            do
            {
              v66 = v61[-2];
              v65 = v61[-1];
              v61 -= 2;
              v62 = vminnm_f32(v62, v66);
              v63 = vmaxnm_f32(v63, v65);
              *v64 = v62;
              v64[1] = v63;
              v64 -= 2;
            }

            while (v61 != v59);
          }
        }

        begin = v110.__begin_;
        if (v110.__end_ != v110.__begin_)
        {
          v68 = v111.__begin_ + v110.__end_ - v110.__begin_;
          v69 = v111.__begin_ + 1;
          v70 = *v111.__begin_;
          *v110.__begin_ = *v111.__begin_;
          if (v68 != v69)
          {
            v71 = begin + 1;
            do
            {
              v72 = *v69++;
              v70 += v72;
              *v71++ = v70;
            }

            while (v69 != v68);
          }
        }

        if (v11)
        {
          v73 = 0;
          v74 = v115;
          v75 = (__p + 16);
          do
          {
            v76 = begin[v73];
            v77 = *(a3 + 16) - v76;
            v78 = v74[1];
            v79 = vcgt_f32(*v74, v78);
            v80 = vsub_f32(v78, *v74);
            LODWORD(v81) = vmul_lane_f32(v80, v80, 1).u32[0];
            if (vpmax_u32(v79, v79).i32[0] < 0)
            {
              v81 = 0.0;
            }

            v82 = v75[1];
            v83 = vcgt_f32(*v75, v82);
            v84 = vsub_f32(v82, *v75);
            LODWORD(v85) = vmul_lane_f32(v84, v84, 1).u32[0];
            if (vpmax_u32(v83, v83).i32[0] < 0)
            {
              v85 = 0.0;
            }

            if (((v85 * v77) + (v76 * v81)) < v29)
            {
              *a4->f32 = *v74->f32;
              *a5->f32 = *v75->f32;
              v28 = v26;
              v25 = v76;
              v27 = v73;
              v29 = (v85 * v77) + (v76 * v81);
            }

            ++v73;
            v74 += 2;
            v75 += 2;
          }

          while (v11 != v73);
        }
      }

      v31 = 0;
      v26 = 1;
    }

    while ((v32 & 1) != 0);
    v86 = a1[4];
    v87 = *(a3 + 12);
    v88 = (v86 + 4 * v87);
    v89 = *(a3 + 16) + v87;
    v106[0] = a1;
    v106[1] = v19;
    v106[2] = v18;
    v106[3] = v23;
    v107 = v27;
    v108 = v28;
    v109 = a2;
    std::__partition_impl[abi:nn200100]<unsigned int geom::bvh<float,(unsigned char)2>::partition_node_heuristic<geom::surface_area_heuristic_functor<float,(unsigned char)2>>(geom::surface_area_heuristic_functor<float,(unsigned char)2>,unsigned int,geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(v88, (v86 + 4 * v89), v106);
  }

  if (v110.__begin_)
  {
    v110.__end_ = v110.__begin_;
    operator delete(v110.__begin_);
  }

  if (v111.__begin_)
  {
    v111.__end_ = v111.__begin_;
    operator delete(v111.__begin_);
  }

  if (__p)
  {
    v113 = __p;
    operator delete(__p);
  }

  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }

  if (v118)
  {
    v119 = v118;
    operator delete(v118);
  }

  return v25;
}