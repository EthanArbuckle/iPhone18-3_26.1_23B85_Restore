uint64_t geom::arap_deformer<float>::arap_deformer(uint64_t a1, uint64_t a2, int a3)
{
  v5 = geom::ddg_evaluator<float>::ddg_evaluator();
  geom::sparse_linear_solver<float>::sparse_linear_solver(v5 + 64, a3, a3);
  *(a1 + 320) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = a1 + 336;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0;
  geom::ddg_evaluator<float>::set_clamp_cotan_weights(a1, 1);
  return a1;
}

uint64_t geom::arap_deformer<float>::arap_deformer(uint64_t a1, void *a2, void *a3)
{
  v5 = (a2[1] - *a2) >> 4;
  v6 = (a3[1] - *a3) >> 2;
  v7 = geom::ddg_evaluator<float>::ddg_evaluator();
  v8 = (a2[1] - *a2) >> 4;
  geom::sparse_linear_solver<float>::sparse_linear_solver(v7 + 64, v8, v8);
  *(a1 + 320) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = a1 + 336;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0;
  geom::ddg_evaluator<float>::set_clamp_cotan_weights(a1, 1);
  return a1;
}

uint64_t *geom::arap_deformer<float>::add_constraints(uint64_t *result, void *a2, uint64_t *a3)
{
  v3 = result;
  v4 = *a3;
  if (a3[1] != *a3)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(*a2 + 16 * v8);
      result = _ZNSt3__16__treeINS_12__value_typeIjDv3_fEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJRKjEEENSF_IJEEEEEENS_4pairINS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_((v3 + 41), (v4 + v7));
      *(result + 3) = v9;
      ++v8;
      v4 = *a3;
      v7 += 4;
    }

    while (v8 < (a3[1] - *a3) >> 2);
  }

  *(v3 + 320) = 0;
  return result;
}

uint64_t *geom::arap_deformer<float>::add_constraints(uint64_t *result, __int128 *a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v5 = result;
  if (a5)
  {
    v6 = a5;
    do
    {
      v9 = *a2++;
      result = _ZNSt3__16__treeINS_12__value_typeIjDv3_fEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJRKjEEENSF_IJEEEEEENS_4pairINS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_((v5 + 41), a4);
      *(result + 3) = v9;
      ++a4;
      --v6;
    }

    while (v6);
  }

  *(v5 + 320) = 0;
  return result;
}

uint64_t *geom::arap_deformer<float>::add_static_constraints(uint64_t a1, uint64_t *a2)
{
  result = geom::bvh<float,(unsigned char)2>::invariant_check();
  v5 = *a2;
  if (a2[1] != *a2)
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(*v6 + 16 * *(v5 + v7));
      result = _ZNSt3__16__treeINS_12__value_typeIjDv3_fEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJRKjEEENSF_IJEEEEEENS_4pairINS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_(a1 + 328, (v5 + v7));
      *(result + 3) = v9;
      ++v8;
      v5 = *a2;
      v7 += 4;
    }

    while (v8 < (a2[1] - *a2) >> 2);
  }

  *(a1 + 320) = 0;
  return result;
}

uint64_t *geom::arap_deformer<float>::add_static_constraints(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  result = geom::bvh<float,(unsigned char)2>::invariant_check(a1);
  if (a3)
  {
    v7 = result;
    do
    {
      v8 = *(*v7 + 16 * *a2);
      result = _ZNSt3__16__treeINS_12__value_typeIjDv3_fEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJRKjEEENSF_IJEEEEEENS_4pairINS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_(a1 + 328, a2);
      *(result + 3) = v8;
      ++a2;
      --a3;
    }

    while (a3);
  }

  *(a1 + 320) = 0;
  return result;
}

void geom::arap_deformer<float>::clear_constraints(uint64_t a1)
{
  v2 = a1 + 336;
  _ZNSt3__16__treeINS_12__value_typeIjDv3_fEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE7destroyEPNS_11__tree_nodeIS3_PvEE(a1 + 328, *(a1 + 336));
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = v2;
  *(a1 + 320) = 0;
}

BOOL geom::arap_deformer<float>::initialize(uint64_t a1)
{
  geom::arap_deformer<float>::reset(a1);
  if (*(a1 + 400) == *(a1 + 408))
  {
    v2 = geom::ddg_evaluator<float>::vertex_count(a1);
    std::vector<geom::ddg_evaluator<float>::stencil,std::allocator<geom::ddg_evaluator<float>::stencil>>::resize(a1 + 400, v2);
    if (geom::ddg_evaluator<float>::vertex_count(a1))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        geom::ddg_evaluator<float>::compute_laplacian_stencil(a1, v4, 1, __p);
        v5 = *(a1 + 400) + 48 * v3;
        v6 = *v5;
        if (*v5)
        {
          *(v5 + 8) = v6;
          operator delete(v6);
          *v5 = 0;
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *v5 = *__p;
        *(v5 + 16) = v22;
        __p[0] = 0;
        __p[1] = 0;
        v22 = 0;
        v7 = *(v5 + 24);
        if (v7)
        {
          *(v5 + 32) = v7;
          operator delete(v7);
          *(v5 + 24) = 0;
          *(v5 + 32) = 0;
          *(v5 + 40) = 0;
          v7 = __p[0];
        }

        *(v5 + 24) = v23;
        *(v5 + 40) = v24;
        v23 = 0uLL;
        v24 = 0;
        if (v7)
        {
          __p[1] = v7;
          operator delete(v7);
        }

        v3 = ++v4;
      }

      while (geom::ddg_evaluator<float>::vertex_count(a1) > v4);
    }
  }

  v8 = *(a1 + 400);
  if (*(a1 + 408) != v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      for (i = *(a1 + 336); i; i = *i)
      {
        v12 = *(i + 8);
        if (v10 >= v12)
        {
          if (v12 >= v10)
          {
            geom::sparse_linear_solver<float>::add_entry(a1 + 64, v10, v10, 1.0);
            goto LABEL_29;
          }

          ++i;
        }
      }

      v13 = (v8 + 48 * v9);
      geom::sparse_linear_solver<float>::add_entry(a1 + 64, v10, v10, -*v13[3]);
      v15 = *v13;
      v14 = v13[1];
      if ((v14 - *v13) >= 5)
      {
        v16 = 1;
        do
        {
          v17 = *(a1 + 336);
          for (j = *(v15 + 4 * v16); v17; v17 = *v17)
          {
            v19 = *(v17 + 8);
            if (j >= v19)
            {
              if (v19 >= j)
              {
                goto LABEL_26;
              }

              ++v17;
            }
          }

          geom::sparse_linear_solver<float>::add_entry(a1 + 64, v10, j, -*(v13[3] + 4 * v16));
          v15 = *v13;
          v14 = v13[1];
LABEL_26:
          v16 = (v16 + 1);
        }

        while (v16 < (v14 - v15) >> 2);
      }

LABEL_29:
      v8 = *(a1 + 400);
      v9 = ++v10;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 408) - v8) >> 4) > v10);
  }

  result = geom::sparse_linear_solver<float>::factor((a1 + 64), 0);
  *(a1 + 320) = 1;
  return result;
}

void geom::arap_deformer<float>::reset(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  LODWORD(v4) = 1065353216;
  DWORD1(v5) = 1065353216;
  DWORD2(v6) = 1065353216;
  geom::sparse_linear_solver<float>::clear_enrties(a1 + 64);
  v2 = geom::bvh<float,(unsigned char)2>::invariant_check(a1);
  if ((a1 + 352) != v2)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8nn200100IPS1_S6_EEvT_T0_l((a1 + 352), *v2, v2[1], (v2[1] - *v2) >> 4);
  }

  v3 = geom::ddg_evaluator<float>::vertex_count(a1);
  std::vector<simd_float3x3>::resize((a1 + 376), v3, &v4);
  *(a1 + 320) = 0;
}

void std::vector<geom::ddg_evaluator<float>::stencil,std::allocator<geom::ddg_evaluator<float>::stencil>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<geom::ddg_evaluator<float>::stencil,std::allocator<geom::ddg_evaluator<float>::stencil>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 48 * a2;
    while (v3 != v7)
    {
      v3 -= 48;
      std::allocator<geom::ddg_evaluator<float>::stencil>::destroy[abi:nn200100](a1, v3);
    }

    *(a1 + 8) = v7;
  }
}

void geom::arap_deformer<float>::deform(void *a1, unsigned int a2, float a3)
{
  if (a2)
  {
    v6 = 0;
    v7 = 0.0;
    do
    {
      geom::arap_deformer<float>::deform_step(a1);
      if (a3 <= 0.0)
      {
        v9 = v6 + 1;
        *&v8 = v7;
      }

      else
      {
        v8 = geom::arap_deformer<float>::energy(a1);
        v9 = v6 + 1;
        if (v6 && v9 < a2 && (vabds_f32(*&v8, v7) / (*&v8 + a3)) < a3)
        {
          return;
        }
      }

      v6 = v9;
      v7 = *&v8;
    }

    while (v9 != a2);
  }
}

void geom::arap_deformer<float>::deform_step(uint64_t a1)
{
  v5 = geom::bvh<float,(unsigned char)2>::invariant_check(a1);
  v80 = *(a1 + 376);
  v81 = *(a1 + 384);
  v82 = 0xAAAAAAAAAAAAAAABLL * ((v81 - v80) >> 4);
  if (v81 != v80)
  {
    v9 = 0;
    if (v82 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v81 - v80) >> 4);
    }

    do
    {
      v108 = 0u;
      v109 = 0u;
      v107 = 0u;
      v11 = (*(a1 + 400) + 48 * v9);
      v12 = *v11;
      v13 = v93;
      v14 = v94;
      v15 = v92;
      v90 = v6.i32[3];
      v91 = v7.i32[3];
      v89 = v8;
      if ((v11[1] - *v11) >= 5)
      {
        v16 = *(a1 + 352);
        v17 = 2;
        v18 = *v5;
        v19 = 1;
        v20 = v93.i32[3];
        v21 = v94.i32[3];
        do
        {
          v22 = *(v12 + 4 * v19);
          v23 = vsubq_f32(*(v18 + 16 * v9), *(v18 + 16 * v22));
          v24 = vsubq_f32(*(v16 + 16 * v9), *(v16 + 16 * v22));
          v25 = *(v11[3] + 4 * v19);
          v14 = vmulq_n_f32(vmulq_n_f32(v23, v24.f32[0]), v25);
          v13 = vmulq_n_f32(vmulq_lane_f32(v23, *v24.f32, 1), v25);
          v15 = vmulq_n_f32(vmulq_laneq_f32(v23, v24, 2), v25);
          v26 = vaddq_f32(v107, v14);
          v14.i32[3] = v21;
          v27 = vaddq_f32(v108, v13);
          v13.i32[3] = v20;
          v28 = vaddq_f32(v109, v15);
          v15.i32[3] = v92.i32[3];
          v107.i32[2] = v26.i32[2];
          v108.i32[2] = v27.i32[2];
          v107.i64[0] = v26.i64[0];
          v108.i64[0] = v27.i64[0];
          v109.i32[2] = v28.i32[2];
          v109.i64[0] = v28.i64[0];
          v19 = v17;
          v12 = *v11;
          ++v17;
          v20 = v13.i32[3];
          v21 = v14.i32[3];
        }

        while (v19 < (v11[1] - *v11) >> 2);
      }

      v92 = v15;
      v93 = v13;
      v94 = v14;
      *(&v106 + 4) = 0;
      LODWORD(v106) = 0;
      geom::compute_svd_3x3<float>(&v107, &v103, &v106, &v100, v2, v3, v4);
      v29 = 0;
      v30 = vzip1q_s32(v100, v101);
      v30.i32[2] = v102.i32[0];
      v31 = vzip2q_s32(vzip1q_s32(v100, v102), vdupq_lane_s32(*v101.i8, 1));
      v32 = vzip2q_s32(v100, v101);
      v32.i32[2] = v102.i32[2];
      v33 = vzip1q_s32(v103, v105);
      v34 = vzip1q_s32(v33, v104);
      v35 = vzip1q_s32(vzip2q_s32(v103, v105), vdupq_laneq_s32(v104, 2));
      v36 = v34;
      v36.i32[3] = v89;
      v37 = vzip2q_s32(v33, vdupq_lane_s32(*v104.i8, 1));
      v6 = v37;
      v6.i32[3] = v90;
      v7 = v35;
      v7.i32[3] = v91;
      v110 = v36;
      v111 = v6;
      v112 = v7;
      do
      {
        *(&v95 + v29) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(*(&v110 + v29))), v31, *&v110.i8[v29], 1), v32, *(&v110 + v29), 2);
        v29 += 16;
      }

      while (v29 != 48);
      v38 = v95;
      v39 = v96;
      v40 = v97;
      v41 = vmulq_f32(v95, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v40, v40, 0xCuLL), v97, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v39, v39), v96, 0xCuLL))), vextq_s8(vuzp1q_s32(v40, v40), v97, 0xCuLL), vextq_s8(vextq_s8(v39, v39, 0xCuLL), v96, 8uLL)));
      if ((v41.f32[2] + vaddv_f32(*v41.f32)) >= 0.0)
      {
        v38.i32[3] = 0;
        v39.i32[3] = 0;
        v40.i32[3] = 0;
      }

      else
      {
        v42 = 0;
        v34.i32[3] = v83;
        v37.i32[3] = v84;
        v35.i32[3] = v85;
        v110 = v34;
        v111 = v37;
        v112 = v35;
        do
        {
          *(&v95 + v42) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2500C1620, COERCE_FLOAT(*(&v110 + v42))), xmmword_2500C1630, *&v110.i8[v42], 1), xmmword_2500C1640, *(&v110 + v42), 2);
          v42 += 16;
        }

        while (v42 != 48);
        v43 = 0;
        v44 = v95;
        v45 = v96;
        v44.i32[3] = v86;
        v45.i32[3] = v87;
        v46 = v97;
        v46.i32[3] = v88;
        v110 = v44;
        v111 = v45;
        v112 = v46;
        do
        {
          *(&v95 + v43) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(*(&v110 + v43))), v31, *&v110.i8[v43], 1), v32, *(&v110 + v43), 2);
          v43 += 16;
        }

        while (v43 != 48);
        v38 = v95;
        v39 = v96;
        v40 = v97;
      }

      v47 = (*(a1 + 376) + 48 * v9++);
      *v47 = v38;
      v47[1] = v39;
      v47[2] = v40;
      v8 = v89;
    }

    while (v9 != v10);
  }

  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v110.i32[0] = 0;
  std::vector<float>::resize(&v95, v82, v110.i32, 0);
  v110.i32[0] = 0;
  std::vector<float>::resize(&v96.i64[1], v82, v110.i32, v48);
  v110.i32[0] = 0;
  std::vector<float>::resize(&v98, v82, v110.i32, v49);
  v107.i32[0] = 0;
  if (v81 != v80)
  {
    v50 = 0;
    v51 = 0;
    while (1)
    {
      for (i = *(a1 + 336); i; i = *i)
      {
        v53 = *(i + 8);
        if (v51 >= v53)
        {
          if (v53 >= v51)
          {
            v110.i64[0] = &v107;
            v72 = _ZNSt3__16__treeINS_12__value_typeIjDv3_fEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJRKjEEENSF_IJEEEEEENS_4pairINS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_(a1 + 328, &v107);
            *(v95.i64[0] + 4 * v107.u32[0]) = *(v72 + 12);
            v110.i64[0] = &v107;
            v73 = _ZNSt3__16__treeINS_12__value_typeIjDv3_fEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJRKjEEENSF_IJEEEEEENS_4pairINS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_(a1 + 328, &v107);
            *(v96.i64[1] + 4 * v107.u32[0]) = *(v73 + 13);
            v110.i64[0] = &v107;
            v74 = _ZNSt3__16__treeINS_12__value_typeIjDv3_fEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJRKjEEENSF_IJEEEEEENS_4pairINS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_(a1 + 328, &v107);
            v51 = v107.i32[0];
            *(v98 + 4 * v107.u32[0]) = *(v74 + 14);
            goto LABEL_38;
          }

          ++i;
        }
      }

      v54 = (*(a1 + 400) + 48 * v50);
      v55 = *v54;
      v56 = v54[1];
      if ((v56 - *v54) < 5)
      {
        goto LABEL_38;
      }

      v57 = 1;
      do
      {
        v58 = *(a1 + 336);
        if (!v58)
        {
          goto LABEL_35;
        }

        v59 = (v55 + 4 * v57);
        v60 = *v59;
        while (1)
        {
          v61 = *(v58 + 8);
          if (v60 >= v61)
          {
            break;
          }

LABEL_32:
          v58 = *v58;
          if (!v58)
          {
            goto LABEL_35;
          }
        }

        if (v61 < v60)
        {
          ++v58;
          goto LABEL_32;
        }

        v62 = *(v54[3] + 4 * v57);
        v110.i64[0] = v55 + 4 * v57;
        v63 = _ZNSt3__16__treeINS_12__value_typeIjDv3_fEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJRKjEEENSF_IJEEEEEENS_4pairINS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_(a1 + 328, v59);
        *(v95.i64[0] + 4 * v107.u32[0]) = *(v95.i64[0] + 4 * v107.u32[0]) + (v62 * *(v63 + 12));
        v64 = *(v54[3] + 4 * v57);
        v110.i64[0] = *v54 + 4 * v57;
        v65 = _ZNSt3__16__treeINS_12__value_typeIjDv3_fEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJRKjEEENSF_IJEEEEEENS_4pairINS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_(a1 + 328, v110.i64[0]);
        *(v96.i64[1] + 4 * v107.u32[0]) = *(v96.i64[1] + 4 * v107.u32[0]) + (v64 * *(v65 + 13));
        v66 = *(v54[3] + 4 * v57);
        v110.i64[0] = *v54 + 4 * v57;
        v67 = _ZNSt3__16__treeINS_12__value_typeIjDv3_fEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJRKjEEENSF_IJEEEEEENS_4pairINS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_(a1 + 328, v110.i64[0]);
        v51 = v107.i32[0];
        *(v98 + 4 * v107.u32[0]) = *(v98 + 4 * v107.u32[0]) + (v66 * *(v67 + 14));
        v55 = *v54;
        v56 = v54[1];
LABEL_35:
        v68 = *(v55 + 4 * v57);
        v69 = vsubq_f32(*(*v5 + 16 * v51), *(*v5 + 16 * v68));
        v70 = *(a1 + 376);
        v71 = vmulq_n_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vaddq_f32(*(v70 + 48 * v51), *(v70 + 48 * v68)), v69.f32[0]), vaddq_f32(*(v70 + 48 * v51 + 16), *(v70 + 48 * v68 + 16)), *v69.f32, 1), vaddq_f32(*(v70 + 48 * v51 + 32), *(v70 + 48 * v68 + 32)), v69, 2), *(v54[3] + 4 * v57) * 0.5);
        *(v95.i64[0] + 4 * v51) = *(v95.i64[0] + 4 * v51) + v71.f32[0];
        *(v96.i64[1] + 4 * v51) = *(v96.i64[1] + 4 * v51) + v71.f32[1];
        *(v98 + 4 * v51) = v71.f32[2] + *(v98 + 4 * v51);
        v57 = (v57 + 1);
      }

      while (v57 < (v56 - v55) >> 2);
LABEL_38:
      v107.i32[0] = ++v51;
      v50 = v51;
      if (v82 <= v51)
      {
        geom::sparse_linear_solver<float>::solve((a1 + 64), &v95);
        geom::sparse_linear_solver<float>::solve((a1 + 64), &v96.i64[1]);
        geom::sparse_linear_solver<float>::solve((a1 + 64), &v98);
        v76 = 0;
        if (v82 <= 1)
        {
          v77 = 1;
        }

        else
        {
          v77 = 0xAAAAAAAAAAAAAAABLL * ((v81 - v80) >> 4);
        }

        do
        {
          LODWORD(v75) = *(v95.i64[0] + 4 * v76);
          DWORD1(v75) = *(v96.i64[1] + 4 * v76);
          DWORD2(v75) = *(v98 + 4 * v76);
          *(*(a1 + 352) + 16 * v76++) = v75;
        }

        while (v77 != v76);
        goto LABEL_45;
      }
    }
  }

  geom::sparse_linear_solver<float>::solve((a1 + 64), &v95);
  geom::sparse_linear_solver<float>::solve((a1 + 64), &v96.i64[1]);
  geom::sparse_linear_solver<float>::solve((a1 + 64), &v98);
LABEL_45:
  for (j = 0; j != -72; j -= 24)
  {
    v79 = *(&v98 + j);
    if (v79)
    {
      *(&v98 + j + 8) = v79;
      operator delete(v79);
    }
  }
}

double geom::arap_deformer<float>::energy(void *a1)
{
  v2 = geom::bvh<float,(unsigned char)2>::invariant_check();
  v3 = *v2;
  v4 = v2[1];
  v5 = v4 - *v2;
  if (v4 == *v2)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = v5 >> 4;
  if ((v5 >> 4) <= 1)
  {
    v7 = 1;
  }

  result = 0.0;
  do
  {
    v9 = (a1[50] + 48 * v6);
    v10 = *v9;
    v11 = (v9[1] - *v9) >> 2;
    if (v11 >= 2)
    {
      v12 = (a1[47] + 48 * v6);
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      v16 = v9[3];
      v17 = 2;
      v18 = 1;
      do
      {
        v19 = *(v10 + 4 * v18);
        v20 = vsubq_f32(*(v3 + 16 * v6), *(v3 + 16 * v19));
        v21 = vsubq_f32(vsubq_f32(*(a1[44] + 16 * v6), *(a1[44] + 16 * v19)), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, v20.f32[0]), v14, *v20.f32, 1), v15, v20, 2));
        v22 = vmulq_f32(v21, v21);
        *&result = *&result + (*(v16 + 4 * v18) * (v22.f32[2] + vaddv_f32(*v22.f32)));
        v18 = v17;
      }

      while (v11 > v17++);
    }

    ++v6;
  }

  while (v6 != v7);
  return result;
}

void std::vector<simd_float3x3>::resize(void *a1, unint64_t a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    std::vector<simd_float3x3>::__append(a1, v5, a3);
  }

  else if (!v4)
  {
    a1[1] = *a1 + 48 * a2;
  }
}

uint64_t geom::compute_svd_3x3<float>(int8x16_t *a1, _OWORD *a2, _OWORD *a3, _OWORD *a4, uint64_t a5, uint64_t a6, float *a7)
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v10.i32[3] = a1[1];
  v11 = a1[2];
  v12 = vextq_s8(vextq_s8(a1[1], a1[1], 0xCuLL), v11, 8uLL);
  v25[0] = v10;
  v25[1] = v12;
  v26 = v11.i32[2];
  result = geom::compute_svd(3, 3u, v25, v23, &v19, v21, a7);
  if (result)
  {
    *&v14 = v19;
    DWORD2(v14) = v20;
    *a3 = v14;
    v16 = *&v23[12];
    *&v15 = *&v23[24];
    DWORD2(v15) = v24;
    *a2 = *v23;
    a2[1] = v16;
    a2[2] = v15;
    v17 = *&v21[12];
    *&v15 = *&v21[24];
    DWORD2(v15) = v22;
    *a4 = *v21;
    a4[1] = v17;
    a4[2] = v15;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void std::vector<float>::resize(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = (a1[1] - *a1) >> 2;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<float>::__append(a1, a2 - v4, a3, a4);
  }
}

uint64_t geom::arap_deformer<double>::arap_deformer(uint64_t a1, uint64_t a2, int a3)
{
  v5 = geom::ddg_evaluator<double>::ddg_evaluator();
  geom::sparse_linear_solver<float>::sparse_linear_solver(v5 + 64, a3, a3);
  *(a1 + 320) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = a1 + 336;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0;
  geom::ddg_evaluator<float>::set_clamp_cotan_weights(a1, 1);
  return a1;
}

uint64_t geom::arap_deformer<double>::arap_deformer(uint64_t a1, void *a2, void *a3)
{
  v5 = (a2[1] - *a2) >> 5;
  v6 = (a3[1] - *a3) >> 2;
  v7 = geom::ddg_evaluator<double>::ddg_evaluator();
  v8 = (a2[1] - *a2) >> 5;
  geom::sparse_linear_solver<float>::sparse_linear_solver(v7 + 64, v8, v8);
  *(a1 + 320) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = a1 + 336;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0;
  geom::ddg_evaluator<float>::set_clamp_cotan_weights(a1, 1);
  return a1;
}

uint64_t *geom::arap_deformer<double>::add_constraints(uint64_t *result, void *a2, uint64_t *a3)
{
  v3 = result;
  v4 = *a3;
  if (a3[1] != *a3)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = (*a2 + 32 * v8);
      v10 = v9[1];
      v11 = *v9;
      result = _ZNSt3__16__treeINS_12__value_typeIjDv3_dEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJRKjEEENSF_IJEEEEEENS_4pairINS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_((v3 + 41), (v4 + v7));
      *(result + 3) = v11;
      *(result + 4) = v10;
      ++v8;
      v4 = *a3;
      v7 += 4;
    }

    while (v8 < (a3[1] - *a3) >> 2);
  }

  *(v3 + 320) = 0;
  return result;
}

uint64_t *geom::arap_deformer<double>::add_constraints(uint64_t *result, __int128 *a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v5 = result;
  if (a5)
  {
    v6 = a5;
    do
    {
      v10 = *a2;
      v9 = a2[1];
      a2 += 2;
      v11 = v9;
      v12 = v10;
      result = _ZNSt3__16__treeINS_12__value_typeIjDv3_dEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJRKjEEENSF_IJEEEEEENS_4pairINS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_((v5 + 41), a4);
      *(result + 3) = v12;
      *(result + 4) = v11;
      ++a4;
      --v6;
    }

    while (v6);
  }

  *(v5 + 320) = 0;
  return result;
}

uint64_t *geom::arap_deformer<double>::add_static_constraints(uint64_t a1, uint64_t *a2)
{
  result = geom::bvh<float,(unsigned char)2>::invariant_check();
  v5 = *a2;
  if (a2[1] != *a2)
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = (v5 + v7);
      v10 = (*v6 + 32 * *(v5 + v7));
      v11 = v10[1];
      v12 = *v10;
      result = _ZNSt3__16__treeINS_12__value_typeIjDv3_dEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJRKjEEENSF_IJEEEEEENS_4pairINS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_(a1 + 328, v9);
      *(result + 3) = v12;
      *(result + 4) = v11;
      ++v8;
      v5 = *a2;
      v7 += 4;
    }

    while (v8 < (a2[1] - *a2) >> 2);
  }

  *(a1 + 320) = 0;
  return result;
}

uint64_t *geom::arap_deformer<double>::add_static_constraints(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  result = geom::bvh<float,(unsigned char)2>::invariant_check(a1);
  if (a3)
  {
    v7 = result;
    do
    {
      v8 = (*v7 + 32 * *a2);
      v9 = v8[1];
      v10 = *v8;
      result = _ZNSt3__16__treeINS_12__value_typeIjDv3_dEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJRKjEEENSF_IJEEEEEENS_4pairINS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_(a1 + 328, a2);
      *(result + 3) = v10;
      *(result + 4) = v9;
      ++a2;
      --a3;
    }

    while (a3);
  }

  *(a1 + 320) = 0;
  return result;
}

BOOL geom::arap_deformer<double>::initialize(uint64_t a1)
{
  geom::arap_deformer<double>::reset(a1);
  if (*(a1 + 400) == *(a1 + 408))
  {
    v2 = geom::ddg_evaluator<float>::vertex_count(a1);
    std::vector<geom::ddg_evaluator<float>::stencil,std::allocator<geom::ddg_evaluator<float>::stencil>>::resize(a1 + 400, v2);
    if (geom::ddg_evaluator<float>::vertex_count(a1))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        geom::ddg_evaluator<double>::compute_laplacian_stencil(a1, v4, 1, __p);
        v5 = *(a1 + 400) + 48 * v3;
        v6 = *v5;
        if (*v5)
        {
          *(v5 + 8) = v6;
          operator delete(v6);
          *v5 = 0;
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *v5 = *__p;
        *(v5 + 16) = v22;
        __p[0] = 0;
        __p[1] = 0;
        v22 = 0;
        v7 = *(v5 + 24);
        if (v7)
        {
          *(v5 + 32) = v7;
          operator delete(v7);
          *(v5 + 24) = 0;
          *(v5 + 32) = 0;
          *(v5 + 40) = 0;
          v7 = __p[0];
        }

        *(v5 + 24) = v23;
        *(v5 + 40) = v24;
        v23 = 0uLL;
        v24 = 0;
        if (v7)
        {
          __p[1] = v7;
          operator delete(v7);
        }

        v3 = ++v4;
      }

      while (geom::ddg_evaluator<float>::vertex_count(a1) > v4);
    }
  }

  v8 = *(a1 + 400);
  if (*(a1 + 408) != v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      for (i = *(a1 + 336); i; i = *i)
      {
        v12 = *(i + 8);
        if (v10 >= v12)
        {
          if (v12 >= v10)
          {
            geom::sparse_linear_solver<double>::add_entry(a1 + 64, v10, v10, 1.0);
            goto LABEL_29;
          }

          ++i;
        }
      }

      v13 = (v8 + 48 * v9);
      geom::sparse_linear_solver<double>::add_entry(a1 + 64, v10, v10, -*v13[3]);
      v15 = *v13;
      v14 = v13[1];
      if ((v14 - *v13) >= 5)
      {
        v16 = 1;
        do
        {
          v17 = *(a1 + 336);
          for (j = *(v15 + 4 * v16); v17; v17 = *v17)
          {
            v19 = *(v17 + 8);
            if (j >= v19)
            {
              if (v19 >= j)
              {
                goto LABEL_26;
              }

              ++v17;
            }
          }

          geom::sparse_linear_solver<double>::add_entry(a1 + 64, v10, j, -*(v13[3] + 8 * v16));
          v15 = *v13;
          v14 = v13[1];
LABEL_26:
          v16 = (v16 + 1);
        }

        while (v16 < (v14 - v15) >> 2);
      }

LABEL_29:
      v8 = *(a1 + 400);
      v9 = ++v10;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 408) - v8) >> 4) > v10);
  }

  result = geom::sparse_linear_solver<double>::factor((a1 + 64), 0);
  *(a1 + 320) = 1;
  return result;
}

void geom::arap_deformer<double>::reset(uint64_t a1)
{
  v8 = 0u;
  v5 = 0;
  v7 = 0u;
  v4[1] = 0u;
  v4[0] = 0x3FF0000000000000uLL;
  v6 = 0x3FF0000000000000;
  v9 = 0x3FF0000000000000uLL;
  geom::sparse_linear_solver<float>::clear_enrties(a1 + 64);
  v2 = geom::bvh<float,(unsigned char)2>::invariant_check(a1);
  if ((a1 + 352) != v2)
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE18__assign_with_sizeB8nn200100IPS1_S6_EEvT_T0_l((a1 + 352), *v2, v2[1], (v2[1] - *v2) >> 5);
  }

  v3 = geom::ddg_evaluator<float>::vertex_count(a1);
  std::vector<simd_double3x3>::resize((a1 + 376), v3, v4);
  *(a1 + 320) = 0;
}

void geom::arap_deformer<double>::deform(void *a1, unsigned int a2, double a3)
{
  if (a2)
  {
    v6 = 0;
    v7 = 0.0;
    do
    {
      geom::arap_deformer<double>::deform_step(a1);
      if (a3 <= 0.0)
      {
        v9 = v6 + 1;
        v8 = v7;
      }

      else
      {
        v8 = geom::arap_deformer<double>::energy(a1);
        v9 = v6 + 1;
        if (v6 && v9 < a2 && vabdd_f64(v8, v7) / (v8 + a3) < a3)
        {
          return;
        }
      }

      v6 = v9;
      v7 = v8;
    }

    while (v9 != a2);
  }
}

void geom::arap_deformer<double>::deform_step(uint64_t a1)
{
  v5 = geom::bvh<float,(unsigned char)2>::invariant_check(a1);
  v114 = *(a1 + 376);
  v115 = *(a1 + 384);
  v6 = (v115 - v114) >> 5;
  v7 = 0xAAAAAAAAAAAAAAABLL * v6;
  if (v115 != v114)
  {
    v8 = 0;
    if (v7 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * v6;
    }

    v10 = 0uLL;
    do
    {
      v145 = v10;
      v146 = v10;
      v143 = v10;
      v144 = v10;
      v141 = v10;
      v142 = v10;
      v11 = (*(a1 + 400) + 48 * v8);
      v12 = *v11;
      if ((v11[1] - *v11) >= 5)
      {
        v13 = *(a1 + 352);
        v14 = *v5;
        v15 = 0uLL;
        v16 = 2;
        v17 = (*v5 + 32 * v8);
        v18 = (v13 + 32 * v8);
        v19 = 0uLL;
        v20 = 0uLL;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 1;
        do
        {
          v25 = *(v12 + 4 * v24);
          v26 = (v14 + 32 * v25);
          v27 = vsubq_f64(*v17, *v26);
          v28 = vsubq_f64(v17[1], v26[1]);
          v29 = (v13 + 32 * v25);
          v30 = *v29;
          v31 = vsubq_f64(v18[1], v29[1]);
          v32 = vsubq_f64(*v18, *v29);
          v30.f64[0] = *(v11[3] + 8 * v24);
          v23 = vaddq_f64(v23, vmulq_f64(vmulq_f64(v28, v32), v30));
          v22 = vaddq_f64(v22, vmulq_n_f64(vmulq_n_f64(v27, v32.f64[0]), v30.f64[0]));
          v21 = vaddq_f64(v21, vmulq_f64(vmulq_laneq_f64(v28, v32, 1), v30));
          v20 = vaddq_f64(v20, vmulq_n_f64(vmulq_laneq_f64(v27, v32, 1), v30.f64[0]));
          v19 = vaddq_f64(v19, vmulq_f64(vmulq_f64(v28, v31), v30));
          v15 = vaddq_f64(v15, vmulq_n_f64(vmulq_n_f64(v27, v31.f64[0]), v30.f64[0]));
          v141 = v22;
          v142 = v23;
          v143 = v20;
          v144 = v21;
          v145 = v15;
          v146 = v19;
          v24 = v16;
          v12 = *v11;
          ++v16;
        }

        while (v24 < (v11[1] - *v11) >> 2);
      }

      v140 = 0;
      v139 = 0uLL;
      geom::compute_svd_3x3<double>(&v141, v134, &v139, v129, v2, v3, v4);
      v33 = 0;
      v10 = 0uLL;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v35 = v132;
      v34 = v133;
      v36 = vzip1q_s64(v129[0], v130);
      v37 = vzip2q_s64(v129[0], v130);
      v38 = vzip1q_s64(v129[1], v131);
      v40 = v137;
      v39 = v138;
      v41 = vzip1q_s64(v134[0], v135);
      v42 = vzip2q_s64(v134[0], v135);
      v43 = vzip1q_s64(v134[1], v136);
      v44 = vdupq_laneq_s64(v137, 1);
      v117 = v41;
      v118 = v137;
      v119 = v42;
      v120 = v44;
      v45 = vextq_s8(v36, v36, 8uLL).u64[0];
      v46 = vextq_s8(v37, v37, 8uLL).u64[0];
      v121 = v43;
      v122 = v138;
      v47 = vextq_s8(v35, v35, 8uLL);
      v48 = vextq_s8(v38, v38, 8uLL).u64[0];
      v49.f64[0] = v36.f64[0];
      *&v49.f64[1] = v45;
      v50.f64[0] = v37.f64[0];
      *&v50.f64[1] = v46;
      v51.f64[0] = v38.f64[0];
      *&v51.f64[1] = v48;
      do
      {
        v53 = *(&v117 + v33);
        v52 = *(&v117 + v33 + 16);
        v54 = (&v123 + v33);
        *v54 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v49, v53.f64[0]), v50, v53, 1), v51, v52.f64[0]);
        v54[1] = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v35, v53), v47, v53, 1), v52, v34);
        v33 += 32;
      }

      while (v33 != 96);
      *&v55.f64[0] = v126.i64[0];
      *&v56.f64[0] = v128.i64[0];
      v55.f64[1] = v125.f64[0];
      v56.f64[1] = v127.f64[0];
      if (vmulq_f64(v124, vmlaq_laneq_f64(vmulq_f64(v127, vnegq_f64(vdupq_laneq_s64(v125, 1))), v125, v127, 1)).f64[0] + vaddvq_f64(vmulq_f64(v123, vmlaq_f64(vmulq_f64(vextq_s8(v127, v128, 8uLL), vnegq_f64(v55)), v56, vextq_s8(v125, v126, 8uLL)))) < 0.0)
      {
        v57 = 0;
        v117 = v41;
        v118 = v40;
        v119 = v42;
        v120 = v44;
        v121 = v43;
        v122 = v39;
        do
        {
          v59 = *(&v117 + v57);
          v58 = *(&v117 + v57 + 16);
          v60 = vmlaq_laneq_f64(vmulq_f64(v59, 0), 0, v59, 1);
          v61 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_2500C1650, v59.f64[0]), xmmword_2500C1660, v59, 1), 0, v58.f64[0]);
          __asm { FMOV            V18.2D, #-1.0 }

          v67 = &v116[v57];
          *v67 = v61;
          v67[1] = vmlaq_f64(v60, _Q18, v58);
          v57 += 32;
        }

        while (v57 != 96);
        v68 = 0;
        *&v36.f64[1] = v45;
        *&v37.f64[1] = v46;
        *&v38.f64[1] = v48;
        do
        {
          v70 = *&v116[v68];
          v69 = *&v116[v68 + 16];
          v71 = (&v117 + v68);
          *v71 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v36, v70.f64[0]), v37, v70, 1), v38, v69.f64[0]);
          v71[1] = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v35, v70), v47, v70, 1), v69, v34);
          v68 += 32;
        }

        while (v68 != 96);
        v125 = v119;
        v126 = v120;
        v127 = v121;
        v128 = v122;
        v123 = v117;
        v124 = v118;
      }

      v72 = *(a1 + 376) + 96 * v8;
      *(v72 + 32) = v125;
      *(v72 + 48) = v126;
      *(v72 + 64) = v127;
      *(v72 + 80) = v128;
      *v72 = v123;
      *(v72 + 16) = v124;
      ++v8;
    }

    while (v8 != v9);
  }

  v145.f64[0] = 0.0;
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v134[0].i64[0] = 0;
  std::vector<double>::resize(&v141, v7, v134[0].i64);
  v134[0].i64[0] = 0;
  std::vector<double>::resize(&v142.f64[1], v7, v134[0].i64);
  v134[0].i64[0] = 0;
  std::vector<double>::resize(&v144, v7, v134[0].i64);
  v129[0].i32[0] = 0;
  if (v115 != v114)
  {
    v73 = 0;
    v74 = 0;
    while (1)
    {
      for (i = *(a1 + 336); i; i = *i)
      {
        v76 = *(i + 8);
        if (v74 >= v76)
        {
          if (v76 >= v74)
          {
            v134[0].i64[0] = v129;
            v104 = _ZNSt3__16__treeINS_12__value_typeIjDv3_dEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJRKjEEENSF_IJEEEEEENS_4pairINS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_(a1 + 328, v129);
            *(*&v141.f64[0] + 8 * v129[0].u32[0]) = v104[6];
            v134[0].i64[0] = v129;
            v105 = _ZNSt3__16__treeINS_12__value_typeIjDv3_dEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJRKjEEENSF_IJEEEEEENS_4pairINS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_(a1 + 328, v129);
            *(*&v142.f64[1] + 8 * v129[0].u32[0]) = v105[7];
            v134[0].i64[0] = v129;
            v106 = _ZNSt3__16__treeINS_12__value_typeIjDv3_dEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJRKjEEENSF_IJEEEEEENS_4pairINS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_(a1 + 328, v129);
            v74 = v129[0].i32[0];
            *(*&v144.f64[0] + 8 * v129[0].u32[0]) = v106[8];
            goto LABEL_38;
          }

          ++i;
        }
      }

      v77 = (*(a1 + 400) + 48 * v73);
      v78 = *v77;
      v79 = v77[1];
      if ((v79 - *v77) < 5)
      {
        goto LABEL_38;
      }

      v80 = 1;
      do
      {
        v81 = *(a1 + 336);
        if (!v81)
        {
          goto LABEL_35;
        }

        v82 = (v78 + 4 * v80);
        v83 = *v82;
        while (1)
        {
          v84 = *(v81 + 8);
          if (v83 >= v84)
          {
            break;
          }

LABEL_32:
          v81 = *v81;
          if (!v81)
          {
            goto LABEL_35;
          }
        }

        if (v84 < v83)
        {
          ++v81;
          goto LABEL_32;
        }

        v85 = *(v77[3] + 8 * v80);
        v134[0].i64[0] = v78 + 4 * v80;
        v86 = _ZNSt3__16__treeINS_12__value_typeIjDv3_dEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJRKjEEENSF_IJEEEEEENS_4pairINS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_(a1 + 328, v82);
        *(*&v141.f64[0] + 8 * v129[0].u32[0]) = *(*&v141.f64[0] + 8 * v129[0].u32[0]) + v85 * *(v86 + 6);
        v87 = *(v77[3] + 8 * v80);
        v134[0].i64[0] = *v77 + 4 * v80;
        v88 = _ZNSt3__16__treeINS_12__value_typeIjDv3_dEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJRKjEEENSF_IJEEEEEENS_4pairINS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_(a1 + 328, v134[0].i64[0]);
        *(*&v142.f64[1] + 8 * v129[0].u32[0]) = *(*&v142.f64[1] + 8 * v129[0].u32[0]) + v87 * *(v88 + 7);
        v89 = *(v77[3] + 8 * v80);
        v134[0].i64[0] = *v77 + 4 * v80;
        v90 = _ZNSt3__16__treeINS_12__value_typeIjDv3_dEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJRKjEEENSF_IJEEEEEENS_4pairINS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_(a1 + 328, v134[0].i64[0]);
        v74 = v129[0].i32[0];
        *(*&v144.f64[0] + 8 * v129[0].u32[0]) = *(*&v144.f64[0] + 8 * v129[0].u32[0]) + v89 * *(v90 + 8);
        v78 = *v77;
        v79 = v77[1];
LABEL_35:
        v91 = (*v5 + 32 * v74);
        v92 = *v91;
        v93 = v91[1];
        v94 = *(v78 + 4 * v80);
        v95 = (*v5 + 32 * v94);
        v96 = vsubq_f64(v93, v95[1]);
        v97 = vsubq_f64(v92, *v95);
        v98 = *(a1 + 376);
        v99 = (v98 + 96 * v74);
        v100 = (v98 + 96 * v94);
        v101 = *v100;
        v101.f64[0] = *(v77[3] + 8 * v80) * 0.5;
        v102 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(vaddq_f64(*v99, *v100), v97.f64[0]), vaddq_f64(v99[2], v100[2]), v97, 1), vaddq_f64(v99[4], v100[4]), v96.f64[0]);
        v97.f64[0] = vmulq_f64(vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v97, vaddq_f64(v99[1], v100[1])), vaddq_f64(v99[3], v100[3]), v97, 1), v96, vaddq_f64(v99[5], v100[5])), v101).f64[0];
        v103 = vmulq_n_f64(v102, v101.f64[0]);
        *(*&v141.f64[0] + 8 * v74) = *(*&v141.f64[0] + 8 * v74) + v103.f64[0];
        *(*&v142.f64[1] + 8 * v74) = *(*&v142.f64[1] + 8 * v74) + v103.f64[1];
        *(*&v144.f64[0] + 8 * v74) = v97.f64[0] + *(*&v144.f64[0] + 8 * v74);
        v80 = (v80 + 1);
      }

      while (v80 < (v79 - v78) >> 2);
LABEL_38:
      v129[0].i32[0] = ++v74;
      v73 = v74;
      if (v7 <= v74)
      {
        geom::sparse_linear_solver<double>::solve((a1 + 64), &v141);
        geom::sparse_linear_solver<double>::solve((a1 + 64), &v142.f64[1]);
        geom::sparse_linear_solver<double>::solve((a1 + 64), &v144);
        v108 = 0;
        if (v7 <= 1)
        {
          v109 = 1;
        }

        else
        {
          v109 = v7;
        }

        do
        {
          *&v110 = *(*&v141.f64[0] + 8 * v108);
          *(&v110 + 1) = *(*&v142.f64[1] + 8 * v108);
          *&v107 = *(*&v144.f64[0] + 8 * v108);
          v111 = (*(a1 + 352) + 32 * v108);
          *v111 = v110;
          v111[1] = v107;
          ++v108;
        }

        while (v109 != v108);
        goto LABEL_45;
      }
    }
  }

  geom::sparse_linear_solver<double>::solve((a1 + 64), &v141);
  geom::sparse_linear_solver<double>::solve((a1 + 64), &v142.f64[1]);
  geom::sparse_linear_solver<double>::solve((a1 + 64), &v144);
LABEL_45:
  for (j = 0; j != -9; j -= 3)
  {
    v113 = v144.f64[j];
    if (v113 != 0.0)
    {
      v144.f64[j + 1] = v113;
      operator delete(*&v113);
    }
  }
}

double geom::arap_deformer<double>::energy(void *a1)
{
  v2 = geom::bvh<float,(unsigned char)2>::invariant_check();
  v3 = *v2;
  v4 = v2[1];
  v5 = v4 - *v2;
  if (v4 == *v2)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = v5 >> 5;
  if ((v5 >> 5) <= 1)
  {
    v7 = 1;
  }

  result = 0.0;
  do
  {
    v9 = (a1[50] + 48 * v6);
    v10 = *v9;
    v11 = (v9[1] - *v9) >> 2;
    if (v11 >= 2)
    {
      v12 = (v3 + 32 * v6);
      v14 = *v12;
      v13 = v12[1];
      v15 = a1[44];
      v16 = (v15 + 32 * v6);
      v18 = *v16;
      v17 = v16[1];
      v19 = (a1[47] + 96 * v6);
      v21 = *v19;
      v20 = v19[1];
      v23 = v19[2];
      v22 = v19[3];
      v25 = v19[4];
      v24 = v19[5];
      v26 = v9[3];
      v27 = 2;
      v28 = 1;
      do
      {
        v29 = *(v10 + 4 * v28);
        v30 = (v3 + 32 * v29);
        v31 = vsubq_f64(v14, *v30);
        *&v32 = *&vsubq_f64(v13, v30[1]);
        v33 = (v15 + 32 * v29);
        v34 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v20, v31.f64[0]), v22, v31, 1), v24, v32);
        v35 = vsubq_f64(vsubq_f64(v18, *v33), vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v21, v31.f64[0]), v23, v31, 1), v25, v32));
        v36 = vsubq_f64(vsubq_f64(v17, v33[1]), v34);
        result = result + *(v26 + 8 * v28) * (vmulq_f64(v36, v36).f64[0] + vaddvq_f64(vmulq_f64(v35, v35)));
        v28 = v27;
      }

      while (v11 > v27++);
    }

    ++v6;
  }

  while (v6 != v7);
  return result;
}

void std::vector<simd_double3x3>::resize(void *a1, unint64_t a2, _OWORD *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    std::vector<simd_double3x3>::__append(a1, v5, a3);
  }

  else if (!v4)
  {
    a1[1] = *a1 + 96 * a2;
  }
}

uint64_t geom::compute_svd_3x3<double>(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4, uint64_t a5, uint64_t a6, double *a7)
{
  v39 = *MEMORY[0x277D85DE8];
  *&v10 = *(a1 + 16);
  *(&v10 + 1) = *(a1 + 32);
  *&v11 = vdupq_laneq_s64(*(a1 + 32), 1).u64[0];
  *(&v11 + 1) = *(a1 + 48);
  v37[0] = *a1;
  v37[1] = v10;
  *&v10 = *(a1 + 80);
  v12 = *(a1 + 64);
  v37[2] = v11;
  v37[3] = v12;
  v38 = v10;
  result = geom::compute_svd(3, 3u, v37, &v31, &v23, &v25, a7);
  if (result)
  {
    *&v14 = v24;
    *a3 = v23;
    a3[1] = v14;
    *&v14 = v32;
    v17 = v33;
    *&v15 = v34;
    v18 = v35;
    *&v16 = v36;
    *a2 = v31;
    a2[1] = v14;
    a2[2] = v17;
    a2[3] = v15;
    v19 = v25;
    *&v14 = v26;
    v20 = v27;
    a2[4] = v18;
    a2[5] = v16;
    *&v15 = v28;
    v21 = v29;
    *&v16 = v30;
    *a4 = v19;
    a4[1] = v14;
    a4[2] = v20;
    a4[3] = v15;
    a4[4] = v21;
    a4[5] = v16;
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void std::vector<double>::resize(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append(a1, a2 - v3, a3);
  }
}

uint64_t *_ZNSt3__16__treeINS_12__value_typeIjDv3_fEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJRKjEEENSF_IJEEEEEENS_4pairINS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *_ZNSt3__16__treeINS_12__value_typeIjDv3_fEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE16__insert_node_atEPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEERSF_SF_(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void _ZNSt3__16__treeINS_12__value_typeIjDv3_fEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE7destroyEPNS_11__tree_nodeIS3_PvEE(uint64_t a1, void *a2)
{
  if (a2)
  {
    _ZNSt3__16__treeINS_12__value_typeIjDv3_fEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE7destroyEPNS_11__tree_nodeIS3_PvEE(a1, *a2);
    _ZNSt3__16__treeINS_12__value_typeIjDv3_fEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE7destroyEPNS_11__tree_nodeIS3_PvEE(a1, a2[1]);

    operator delete(a2);
  }
}

void std::vector<geom::ddg_evaluator<float>::stencil,std::allocator<geom::ddg_evaluator<float>::stencil>>::__append(void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = 48 * ((48 * a2 - 48) / 0x30) + 48;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::ddg_evaluator<float>::stencil>>(a1, v9);
    }

    v11 = 48 * v6;
    v12 = 48 * ((48 * a2 - 48) / 0x30) + 48;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = a1[1];
    v15 = *a1 + v11 - v14;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::ddg_evaluator<float>::stencil>,geom::ddg_evaluator<float>::stencil*>(a1, *a1, v14, v15);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<geom::ddg_evaluator<float>::stencil,std::allocator<geom::ddg_evaluator<float>::stencil> &>::~__split_buffer(v18);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::ddg_evaluator<float>::stencil>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::ddg_evaluator<float>::stencil>,geom::ddg_evaluator<float>::stencil*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v7;
      a4[2] = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v7 + 24);
      a4[5] = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v7 += 48;
      a4 += 6;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      std::allocator<geom::ddg_evaluator<float>::stencil>::destroy[abi:nn200100](a1, v5);
      v5 += 48;
    }
  }
}

void std::allocator<geom::ddg_evaluator<float>::stencil>::destroy[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;

    operator delete(v4);
  }
}

void **std::__split_buffer<geom::ddg_evaluator<float>::stencil,std::allocator<geom::ddg_evaluator<float>::stencil> &>::~__split_buffer(void **a1)
{
  std::__split_buffer<geom::ddg_evaluator<float>::stencil,std::allocator<geom::ddg_evaluator<float>::stencil> &>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<geom::ddg_evaluator<float>::stencil,std::allocator<geom::ddg_evaluator<float>::stencil> &>::clear[abi:nn200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<geom::ddg_evaluator<float>::stencil>::destroy[abi:nn200100](v4, i - 48);
  }
}

void *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8nn200100IPS1_S6_EEvT_T0_l(void *result, char *__src, char *a3, unint64_t a4)
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
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<simd_float3x3>::__append(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v11 = &v5[3 * a2];
      v12 = 48 * a2;
      do
      {
        v13 = *a3;
        v14 = a3[2];
        v5[1] = a3[1];
        v5[2] = v14;
        *v5 = v13;
        v5 += 3;
        v12 -= 48;
      }

      while (v12);
      v5 = v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    v8 = v7 + a2;
    if (v7 + a2 > 0x555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 4);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x2AAAAAAAAAAAAAALL)
    {
      v10 = 0x555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<simd_float3x3>>(a1, v10);
    }

    v15 = 48 * v7;
    v16 = 3 * a2;
    v17 = 48 * v7 + 48 * a2;
    v18 = 16 * v16;
    v19 = 48 * v7;
    do
    {
      v20 = *a3;
      v21 = a3[2];
      *(v19 + 16) = a3[1];
      *(v19 + 32) = v21;
      *v19 = v20;
      v19 += 48;
      v18 -= 48;
    }

    while (v18);
    v22 = *(a1 + 8) - *a1;
    v23 = v15 - v22;
    memcpy((v15 - v22), *a1, v22);
    v24 = *a1;
    *a1 = v23;
    *(a1 + 8) = v17;
    *(a1 + 16) = 0;
    if (v24)
    {

      operator delete(v24);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<simd_float3x3>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 2)
  {
    if (a2)
    {
      v13 = 0;
      a4.i32[0] = *a3;
      v14 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v15 = vdupq_n_s64(v14);
      v16 = v7 + 4 * a2;
      v17 = v14 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v18 = (v7 + 8);
      do
      {
        v19 = vdupq_n_s64(v13);
        v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_2500C1680)));
        if (vuzp1_s16(v20, a4).u8[0])
        {
          *(v18 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v20, a4).i8[2])
        {
          *(v18 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_2500C1670)))).i32[1])
        {
          *v18 = a4.i32[0];
          v18[1] = a4.i32[0];
        }

        v13 += 4;
        v18 += 4;
      }

      while (v17 != v13);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 2);
    if (v9 >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v8 >> 2;
    v11 = v6 - *a1;
    if (v11 >> 1 > v9)
    {
      v9 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(a1, v12);
    }

    v21 = 0;
    v22 = 4 * v10;
    a4.i32[0] = *a3;
    v23 = 4 * v10 + 4 * a2;
    v24 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v25 = vdupq_n_s64(v24);
    v26 = v24 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v27 = (4 * v10 + 8);
    do
    {
      v28 = vdupq_n_s64(v21);
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_2500C1680)));
      if (vuzp1_s16(v29, a4).u8[0])
      {
        *(v27 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v29, a4).i8[2])
      {
        *(v27 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_2500C1670)))).i32[1])
      {
        *v27 = a4.i32[0];
        v27[1] = a4.i32[0];
      }

      v21 += 4;
      v27 += 4;
    }

    while (v26 != v21);
    v30 = *(a1 + 8) - *a1;
    v31 = v22 - v30;
    memcpy((v22 - v30), *a1, v30);
    v32 = *a1;
    *a1 = v31;
    *(a1 + 8) = v23;
    *(a1 + 16) = 0;
    if (v32)
    {

      operator delete(v32);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t *_ZNSt3__16__treeINS_12__value_typeIjDv3_dEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJRKjEEENSF_IJEEEEEENS_4pairINS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *_ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE18__assign_with_sizeB8nn200100IPS1_S6_EEvT_T0_l(void *result, char *__src, char *a3, unint64_t a4)
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
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<simd_double3x3>::__append(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 5) >= a2)
  {
    if (a2)
    {
      v11 = &v5[6 * a2];
      v12 = 96 * a2;
      do
      {
        v13 = a3[1];
        *v5 = *a3;
        v5[1] = v13;
        v14 = a3[2];
        v15 = a3[3];
        v16 = a3[5];
        v5[4] = a3[4];
        v5[5] = v16;
        v5[2] = v14;
        v5[3] = v15;
        v5 += 6;
        v12 -= 96;
      }

      while (v12);
      v5 = v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 5);
    v8 = v7 + a2;
    if (v7 + a2 > 0x2AAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 5);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x155555555555555)
    {
      v10 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<simd_double3x3>>(a1, v10);
    }

    v17 = 96 * v7;
    v18 = 3 * a2;
    v19 = 96 * v7 + 96 * a2;
    v20 = 32 * v18;
    v21 = 96 * v7;
    do
    {
      v22 = a3[1];
      *v21 = *a3;
      *(v21 + 16) = v22;
      v23 = a3[2];
      v24 = a3[3];
      v25 = a3[5];
      *(v21 + 64) = a3[4];
      *(v21 + 80) = v25;
      *(v21 + 32) = v23;
      *(v21 + 48) = v24;
      v21 += 96;
      v20 -= 96;
    }

    while (v20);
    v26 = *(a1 + 8) - *a1;
    v27 = v17 - v26;
    memcpy((v17 - v26), *a1, v26);
    v28 = *a1;
    *a1 = v27;
    *(a1 + 8) = v19;
    *(a1 + 16) = 0;
    if (v28)
    {

      operator delete(v28);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<simd_double3x3>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_2500C1680)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_2500C1680)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *geom::acd<float>::acd(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

uint64_t *geom::acd<float>::operator=(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  std::unique_ptr<geom::acd<float>::impl,std::default_delete<geom::acd<float>::impl>>::reset[abi:nn200100](a1, v3);
  return a1;
}

void geom::acd<float>::init()
{
  operator new();
}

{
  operator new();
}

void geom::acd<float>::split_cluster_with_plane(float32x4_t **a1, unsigned int a2, float32x4_t *a3)
{
  v3 = *a1;
  v4 = a3[1];
  v5[0] = *a3;
  v5[1] = v4;
  geom::acd<float>::impl::split_cluster_with_plane(v3, a2, v5);
}

void geom::acd<float>::cluster_indices(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *(a2 + 8) = *a2;
  for (i = *(v2 + 128); i; i = *i)
  {
    std::vector<unsigned int>::push_back[abi:nn200100](a2, i + 4);
  }
}

void geom::acd<float>::impl::cluster_indices(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = *a2;
  for (i = *(a1 + 128); i; i = *i)
  {
    std::vector<unsigned int>::push_back[abi:nn200100](a2, i + 4);
  }
}

void std::vector<unsigned int>::push_back[abi:nn200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

float32x4_t geom::acd<float>::impl::mesh_vertex_transform(float32x4_t *a1, float *a2, float32x4_t *a3)
{
  v3 = vsubq_f32(a1[2], a1[1]);
  *a2 = fmaxf(fmaxf(v3.f32[0], v3.f32[2]), v3.f32[1]) * 0.5;
  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  result = vmulq_f32(vaddq_f32(a1[1], a1[2]), v4);
  *a3 = result;
  return result;
}

uint64_t *geom::acd<double>::operator=(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  std::unique_ptr<geom::acd<double>::impl,std::default_delete<geom::acd<double>::impl>>::reset[abi:nn200100](a1, v3);
  return a1;
}

void geom::acd<double>::init()
{
  operator new();
}

{
  operator new();
}

void geom::acd<double>::split_cluster_with_plane(uint64_t *a1, unsigned int a2, float64x2_t *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a3[1];
  v5[0] = *a3;
  v5[1] = v4;
  v5[2] = a3[2];
  geom::acd<double>::impl::split_cluster_with_plane(v3, a2, v5);
}

void geom::acd<double>::cluster_indices(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *(a2 + 8) = *a2;
  for (i = *(v2 + 160); i; i = *i)
  {
    std::vector<unsigned int>::push_back[abi:nn200100](a2, i + 4);
  }
}

void geom::acd<double>::impl::cluster_indices(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = *a2;
  for (i = *(a1 + 160); i; i = *i)
  {
    std::vector<unsigned int>::push_back[abi:nn200100](a2, i + 4);
  }
}

float64x2_t geom::acd<double>::impl::mesh_vertex_transform(float64x2_t *a1, double *a2, float64x2_t *a3)
{
  v3 = vsubq_f64(a1[3], a1[1]);
  *a2 = fmax(fmax(v3.f64[0], vsubq_f64(a1[4], a1[2]).f64[0]), v3.f64[1]) * 0.5;
  __asm { FMOV            V2.2D, #0.5 }

  result = vmulq_f64(vaddq_f64(a1[1], a1[3]), _Q2);
  v10 = vmulq_f64(vaddq_f64(a1[2], a1[4]), _Q2);
  *a3 = result;
  a3[1] = v10;
  return result;
}

uint64_t std::unique_ptr<geom::acd<float>::impl,std::default_delete<geom::acd<float>::impl>>::reset[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    geom::acd<float>::impl::~impl(result);

    JUMPOUT(0x25305E3F0);
  }

  return result;
}

uint64_t geom::acd<float>::impl::~impl(uint64_t a1)
{
  v12 = (a1 + 304);
  std::vector<geom::triangle_mesh_connectivity>::__destroy_vector::operator()[abi:nn200100](&v12);
  v2 = *(a1 + 280);
  if (v2)
  {
    *(a1 + 288) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 256);
  if (v3)
  {
    *(a1 + 264) = v3;
    operator delete(v3);
  }

  geom::convex_mesh_cache<float>::~convex_mesh_cache(a1 + 224);
  std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::~__hash_table(a1 + 112);
  v4 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v4)
  {
    if (*(v4 + 96) == 1)
    {
      v5 = *(v4 + 80);
      if (v5)
      {
        MEMORY[0x25305E3D0](v5, 0x1000C80E0EAB150);
      }
    }

    *(v4 + 80) = 0;
    *(v4 + 88) = 0;
    *(v4 + 96) = 0;
    if (*(v4 + 72) == 1)
    {
      v6 = *(v4 + 56);
      if (v6)
      {
        MEMORY[0x25305E3D0](v6, 0x1000C80451B5BE8);
      }
    }

    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
    *(v4 + 72) = 0;
    v7 = *(v4 + 32);
    if (v7)
    {
      *(v4 + 40) = v7;
      operator delete(v7);
    }

    v8 = *(v4 + 8);
    if (v8)
    {
      *(v4 + 16) = v8;
      operator delete(v8);
    }

    MEMORY[0x25305E3F0](v4, 0x10F0C40C0C486CFLL);
  }

  v9 = *(a1 + 72);
  if (v9)
  {
    *(a1 + 80) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    *(a1 + 56) = v10;
    operator delete(v10);
  }

  return a1;
}

void std::vector<geom::triangle_mesh_connectivity>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<geom::triangle_mesh_connectivity>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<geom::triangle_mesh_connectivity>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 208)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 48);
    if (v5)
    {
      *(i - 40) = v5;
      operator delete(v5);
    }

    v6 = *(i - 72);
    if (v6)
    {
      *(i - 64) = v6;
      operator delete(v6);
    }

    v7 = *(i - 96);
    if (v7)
    {
      *(i - 88) = v7;
      operator delete(v7);
    }

    v8 = *(i - 120);
    if (v8)
    {
      *(i - 112) = v8;
      operator delete(v8);
    }

    v9 = *(i - 144);
    if (v9)
    {
      *(i - 136) = v9;
      operator delete(v9);
    }

    v10 = *(i - 168);
    if (v10)
    {
      *(i - 160) = v10;
      operator delete(v10);
    }

    v11 = *(i - 192);
    if (v11)
    {
      *(i - 184) = v11;
      operator delete(v11);
    }
  }

  a1[1] = v2;
}

uint64_t geom::convex_mesh_cache<float>::~convex_mesh_cache(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = (*(a1 + 16) - *(a1 + 8)) >> 4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN4geom26dispatch_apply_with_strideIZNS_17convex_mesh_cacheIfED1EvEUlmE_EEmmmP16dispatch_queue_sT__block_invoke;
  block[3] = &__block_descriptor_tmp;
  block[4] = 1024;
  block[5] = v3;
  block[6] = a1;
  dispatch_apply((v3 + 1023) >> 10, 0, block);
  block[0] = v2;
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](block);
  return a1;
}

void ___ZN4geom26dispatch_apply_with_strideIZNS_17convex_mesh_cacheIfED1EvEUlmE_EEmmmP16dispatch_queue_sT__block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = v2 * a2;
  v4 = v2 * a2 + v2;
  if (a1[5] < v4)
  {
    v4 = a1[5];
  }

  v5 = v4 - v3;
  if (v4 > v3)
  {
    v7 = 16 * v3;
    do
    {
      v8 = (*(a1[6] + 8) + v7);
      v9 = v8[1];
      *v8 = 0;
      v8[1] = 0;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }

      v7 += 16;
      --v5;
    }

    while (v5);
  }
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<geom::convex_mesh<float>>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  a1[1] = v2;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<unsigned int const,std::unique_ptr<geom::cluster<float>>>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::pair<unsigned int const,std::unique_ptr<geom::cluster<float>>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    v6 = (v2 + 112);
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v6);
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

    MEMORY[0x25305E3F0](v2, 0x10F0C401673C24ALL);
  }

  return a1;
}

uint64_t std::unique_ptr<geom::acd<double>::impl,std::default_delete<geom::acd<double>::impl>>::reset[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    geom::acd<double>::impl::~impl(result);

    JUMPOUT(0x25305E3F0);
  }

  return result;
}

uint64_t geom::acd<double>::impl::~impl(uint64_t a1)
{
  v12 = (a1 + 384);
  std::vector<geom::triangle_mesh_connectivity>::__destroy_vector::operator()[abi:nn200100](&v12);
  v2 = *(a1 + 360);
  if (v2)
  {
    *(a1 + 368) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 336);
  if (v3)
  {
    *(a1 + 344) = v3;
    operator delete(v3);
  }

  geom::convex_mesh_cache<double>::~convex_mesh_cache(a1 + 304);
  std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::~__hash_table(a1 + 144);
  v4 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v4)
  {
    if (*(v4 + 96) == 1)
    {
      v5 = *(v4 + 80);
      if (v5)
      {
        MEMORY[0x25305E3D0](v5, 0x1000C80FA0F61DDLL);
      }
    }

    *(v4 + 80) = 0;
    *(v4 + 88) = 0;
    *(v4 + 96) = 0;
    if (*(v4 + 72) == 1)
    {
      v6 = *(v4 + 56);
      if (v6)
      {
        MEMORY[0x25305E3D0](v6, 0x1000C80E0EAB150);
      }
    }

    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
    *(v4 + 72) = 0;
    v7 = *(v4 + 32);
    if (v7)
    {
      *(v4 + 40) = v7;
      operator delete(v7);
    }

    v8 = *(v4 + 8);
    if (v8)
    {
      *(v4 + 16) = v8;
      operator delete(v8);
    }

    MEMORY[0x25305E3F0](v4, 0x10F0C40C0C486CFLL);
  }

  v9 = *(a1 + 104);
  if (v9)
  {
    *(a1 + 112) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 80);
  if (v10)
  {
    *(a1 + 88) = v10;
    operator delete(v10);
  }

  return a1;
}

uint64_t geom::convex_mesh_cache<double>::~convex_mesh_cache(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = (*(a1 + 16) - *(a1 + 8)) >> 4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN4geom26dispatch_apply_with_strideIZNS_17convex_mesh_cacheIdED1EvEUlmE_EEmmmP16dispatch_queue_sT__block_invoke;
  block[3] = &__block_descriptor_tmp_2;
  block[4] = 1024;
  block[5] = v3;
  block[6] = a1;
  dispatch_apply((v3 + 1023) >> 10, 0, block);
  block[0] = v2;
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](block);
  return a1;
}

void ___ZN4geom26dispatch_apply_with_strideIZNS_17convex_mesh_cacheIdED1EvEUlmE_EEmmmP16dispatch_queue_sT__block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = v2 * a2;
  v4 = v2 * a2 + v2;
  if (a1[5] < v4)
  {
    v4 = a1[5];
  }

  v5 = v4 - v3;
  if (v4 > v3)
  {
    v7 = 16 * v3;
    do
    {
      v8 = (*(a1[6] + 8) + v7);
      v9 = v8[1];
      *v8 = 0;
      v8[1] = 0;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }

      v7 += 16;
      --v5;
    }

    while (v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<unsigned int const,std::unique_ptr<geom::cluster<double>>>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::pair<unsigned int const,std::unique_ptr<geom::cluster<double>>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    v6 = (v2 + 168);
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v6);
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

    MEMORY[0x25305E3F0](v2, 0x10F0C408DC99B65);
  }

  return a1;
}

void geom::create_approximate_winding_number_3<float>()
{
  v0 = *MEMORY[0x277D85DE8];
  operator new();
}

{
  v0 = *MEMORY[0x277D85DE8];
  operator new();
}

void geom::create_approximate_winding_number_3<double>()
{
  v0 = *MEMORY[0x277D85DE8];
  operator new();
}

{
  v0 = *MEMORY[0x277D85DE8];
  operator new();
}

uint64_t geom::query_exact_winding_number_3<double>(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  return (*(*a1 + 16))(a1, v4);
}

uint64_t geom::free_exact_winding_number_3<float>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t geom::free_exact_winding_number_3<double>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *geom::anonymous namespace::winding_number_exact<float>::~winding_number_exact(void *a1)
{
  *a1 = &unk_28628EFA8;
  v2 = a1[30];
  if (v2)
  {
    a1[31] = v2;
    operator delete(v2);
  }

  v3 = a1[27];
  if (v3)
  {
    v4 = a1[28];
    v5 = a1[27];
    if (v4 != v3)
    {
      v6 = a1[28];
      do
      {
        v8 = *(v6 - 24);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 16) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v3);
      v5 = a1[27];
    }

    a1[28] = v3;
    operator delete(v5);
  }

  v9 = a1[24];
  if (v9)
  {
    a1[25] = v9;
    operator delete(v9);
  }

  return a1;
}

void geom::anonymous namespace::winding_number_exact<float>::~winding_number_exact(void *a1)
{
  *a1 = &unk_28628EFA8;
  v2 = a1[30];
  if (v2)
  {
    a1[31] = v2;
    operator delete(v2);
  }

  v3 = a1[27];
  if (v3)
  {
    v4 = a1[28];
    v5 = a1[27];
    if (v4 != v3)
    {
      v6 = a1[28];
      do
      {
        v8 = *(v6 - 24);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 16) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v3);
      v5 = a1[27];
    }

    a1[28] = v3;
    operator delete(v5);
  }

  v9 = a1[24];
  if (v9)
  {
    a1[25] = v9;
    operator delete(v9);
  }

  JUMPOUT(0x25305E3F0);
}

void *geom::anonymous namespace::winding_number_exact<double>::~winding_number_exact(void *a1)
{
  *a1 = &unk_28628F028;
  v2 = a1[30];
  if (v2)
  {
    a1[31] = v2;
    operator delete(v2);
  }

  v3 = a1[27];
  if (v3)
  {
    v4 = a1[28];
    v5 = a1[27];
    if (v4 != v3)
    {
      v6 = a1[28];
      do
      {
        v8 = *(v6 - 24);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 16) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v3);
      v5 = a1[27];
    }

    a1[28] = v3;
    operator delete(v5);
  }

  v9 = a1[24];
  if (v9)
  {
    a1[25] = v9;
    operator delete(v9);
  }

  return a1;
}

void geom::anonymous namespace::winding_number_exact<double>::~winding_number_exact(void *a1)
{
  *a1 = &unk_28628F028;
  v2 = a1[30];
  if (v2)
  {
    a1[31] = v2;
    operator delete(v2);
  }

  v3 = a1[27];
  if (v3)
  {
    v4 = a1[28];
    v5 = a1[27];
    if (v4 != v3)
    {
      v6 = a1[28];
      do
      {
        v8 = *(v6 - 24);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 16) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v3);
      v5 = a1[27];
    }

    a1[28] = v3;
    operator delete(v5);
  }

  v9 = a1[24];
  if (v9)
  {
    a1[25] = v9;
    operator delete(v9);
  }

  JUMPOUT(0x25305E3F0);
}

void geom::anonymous namespace::winding_number_exact<double>::compute_winding_number(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  v4 = *a2;
  v2 = *(a1 + 264);
  operator new[]();
}

void *geom::anonymous namespace::winding_number_approximate<float>::~winding_number_approximate(void *a1)
{
  *a1 = &unk_28628F0A8;
  v2 = a1[25];
  if (v2)
  {
    a1[26] = v2;
    operator delete(v2);
  }

  return a1;
}

void geom::anonymous namespace::winding_number_approximate<float>::~winding_number_approximate(void *a1)
{
  *a1 = &unk_28628F0A8;
  v2 = a1[25];
  if (v2)
  {
    a1[26] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25305E3F0);
}

void *geom::anonymous namespace::winding_number_approximate<double>::~winding_number_approximate(void *a1)
{
  *a1 = &unk_28628F108;
  v2 = a1[25];
  if (v2)
  {
    a1[26] = v2;
    operator delete(v2);
  }

  return a1;
}

void geom::anonymous namespace::winding_number_approximate<double>::~winding_number_approximate(void *a1)
{
  *a1 = &unk_28628F108;
  v2 = a1[25];
  if (v2)
  {
    a1[26] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25305E3F0);
}

void geom::anonymous namespace::winding_number_approximate<double>::compute_winding_number(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v2 = *(a1 + 192);
  operator new[]();
}

void *geom::anonymous namespace::winding_number_approximate_points<float>::~winding_number_approximate_points(void *a1)
{
  *a1 = &unk_28628F168;
  v2 = a1[42];
  if (v2)
  {
    a1[43] = v2;
    operator delete(v2);
  }

  geom::point_tree<float,(unsigned char)3>::~point_tree((a1 + 8));
  return a1;
}

void geom::anonymous namespace::winding_number_approximate_points<float>::~winding_number_approximate_points(void *a1)
{
  *a1 = &unk_28628F168;
  v2 = a1[42];
  if (v2)
  {
    a1[43] = v2;
    operator delete(v2);
  }

  geom::point_tree<float,(unsigned char)3>::~point_tree((a1 + 8));

  JUMPOUT(0x25305E3F0);
}

void *geom::anonymous namespace::winding_number_approximate_points<double>::~winding_number_approximate_points(void *a1)
{
  *a1 = &unk_28628F1B8;
  v2 = a1[50];
  if (v2)
  {
    a1[51] = v2;
    operator delete(v2);
  }

  geom::point_tree<double,(unsigned char)3>::~point_tree((a1 + 8));
  return a1;
}

void geom::anonymous namespace::winding_number_approximate_points<double>::~winding_number_approximate_points(void *a1)
{
  *a1 = &unk_28628F1B8;
  v2 = a1[50];
  if (v2)
  {
    a1[51] = v2;
    operator delete(v2);
  }

  geom::point_tree<double,(unsigned char)3>::~point_tree((a1 + 8));

  JUMPOUT(0x25305E3F0);
}

void geom::anonymous namespace::winding_number_approximate_points<double>::compute_winding_number(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v2 = *(a1 + 64);
  operator new[]();
}

uint64_t geom::anonymous namespace::winding_number_base<float>::winding_number_base(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = geom::bvh<float,(unsigned char)3>::bvh(a1, 0, 0, 0, 0, 0);
  *(v10 + 136) = 0u;
  v11 = (v10 + 136);
  *(v10 + 104) = a2;
  *(v10 + 112) = a3;
  *(v10 + 120) = a4;
  *(v10 + 128) = a5;
  *(v10 + 152) = 0u;
  *(v10 + 168) = 0u;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm((v10 + 136), a5 / 3);
  std::vector<geom::bbox<float,(unsigned char)3>>::resize(v11 + 3, *(v11 - 1) / 3uLL);
  v12 = *v11;
  if (v11[1] == *v11)
  {
    v34 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 2;
    v15 = 1;
    __asm { FMOV            V0.4S, #3.0 }

    do
    {
      v21 = *(a1 + 120);
      v22 = *(v21 + 4 * (v14 - 2));
      v23 = *(v21 + 4 * (v14 - 1));
      v24 = *(v21 + 4 * v14);
      v25 = *(a1 + 104);
      *(v12 + 16 * v13) = vdivq_f32(vaddq_f32(vaddq_f32(*(v25 + 16 * v22), *(v25 + 16 * v23)), *(v25 + 16 * v24)), _Q0);
      v26 = *(v25 + 16 * v22);
      v27 = *(v25 + 16 * v23);
      v28 = *(v25 + 16 * v24);
      v27.i32[3] = 0;
      v28.i32[3] = 0;
      v26.i32[3] = 0;
      v29 = vminnmq_f32(v27, v28);
      v29.i32[3] = 0;
      *(*(a1 + 160) + 32 * v13) = vminnmq_f32(v26, v29);
      v30 = *(v25 + 16 * v22);
      v31 = *(v25 + 16 * v23);
      v32 = *(v25 + 16 * v24);
      v31.i32[3] = 0;
      v32.i32[3] = 0;
      v33 = vmaxnmq_f32(v31, v32);
      v30.i32[3] = 0;
      v33.i32[3] = 0;
      *(*(a1 + 160) + 32 * v13 + 16) = vmaxnmq_f32(v30, v33);
      v13 = v15;
      v12 = *(a1 + 136);
      v34 = (*(a1 + 144) - v12) >> 4;
      v14 += 3;
    }

    while (v34 > v15++);
  }

  geom::bvh<float,(unsigned char)3>::bvh(v43, v12, v34, *(a1 + 160), (*(a1 + 168) - *(a1 + 160)) >> 5, 0);
  *a1 = v43[0];
  v36 = *(a1 + 8);
  if (v36)
  {
    *(a1 + 16) = v36;
    operator delete(v36);
  }

  *(a1 + 8) = *v44;
  *(a1 + 24) = v45;
  v44[1] = 0;
  v45 = 0;
  v44[0] = 0;
  v37 = *(a1 + 32);
  if (v37)
  {
    *(a1 + 40) = v37;
    operator delete(v37);
  }

  *(a1 + 32) = *__p;
  *(a1 + 48) = v47;
  __p[1] = 0;
  v47 = 0;
  __p[0] = 0;
  if (*(a1 + 72) == 1)
  {
    v38 = *(a1 + 56);
    if (v38)
    {
      MEMORY[0x25305E3D0](v38, 0x1000C80451B5BE8);
    }
  }

  v39 = v49;
  *(a1 + 56) = v48;
  *(a1 + 64) = v39;
  *(a1 + 72) = v50;
  v50 = 0;
  v48 = 0;
  v49 = 0;
  if (*(a1 + 96) == 1)
  {
    v40 = *(a1 + 80);
    if (v40)
    {
      MEMORY[0x25305E3D0](v40, 0x1000C80E0EAB150);
    }
  }

  v41 = v52;
  *(a1 + 80) = v51;
  *(a1 + 88) = v41;
  *(a1 + 96) = v53;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  if (v50 == 1 && v48)
  {
    MEMORY[0x25305E3D0](v48, 0x1000C80451B5BE8);
  }

  v48 = 0;
  v49 = 0;
  v50 = 0;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v44[0])
  {
    v44[1] = v44[0];
    operator delete(v44[0]);
  }

  return a1;
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(void *a1, unint64_t a2)
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
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEm(a1, a2 - v2);
  }
}

void std::vector<geom::bbox<float,(unsigned char)3>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 32 * a2;
    }
  }

  else
  {
    std::vector<geom::bbox<float,(unsigned char)3>>::__append(a1, a2 - v2);
  }
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEm(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
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

    if (v9)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::vector<geom::bbox<float,(unsigned char)3>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 5)
  {
    if (a2)
    {
      v11 = &v4[2 * a2];
      v12.i64[0] = 0x7F0000007FLL;
      v12.i64[1] = 0x7F0000007FLL;
      v13 = vnegq_f32(v12);
      do
      {
        *v4 = v13;
        v4[1] = v12;
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
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v6 >> 5;
    v9 = v5 - *a1;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v10);
    }

    v14 = 32 * v8;
    v15 = 32 * v8 + 32 * a2;
    v16.i64[0] = 0x7F0000007FLL;
    v16.i64[1] = 0x7F0000007FLL;
    v17 = vnegq_f32(v16);
    v18 = v14;
    do
    {
      *v18 = v17;
      v18[1] = v16;
      v18 += 2;
    }

    while (v18 != v15);
    v19 = *(a1 + 8) - *a1;
    v20 = v14 - v19;
    memcpy((v14 - v19), *a1, v19);
    v21 = *a1;
    *a1 = v20;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    if (v21)
    {

      operator delete(v21);
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4geom12_GLOBAL__N_120winding_number_exactIfEC1ENS2_5sliceIDv3_fEENS6_IjEEEUlRNS2_8bvh_nodeIfLh3EEEE_NS_9allocatorISD_EEFbSC_EE7__cloneEPNS0_6__baseISG_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28628F208;
  a2[1] = v2;
  return result;
}

BOOL _ZNSt3__110__function6__funcIZN4geom12_GLOBAL__N_120winding_number_exactIfEC1ENS2_5sliceIDv3_fEENS6_IjEEEUlRNS2_8bvh_nodeIfLh3EEEE_NS_9allocatorISD_EEFbSC_EEclESC_(uint64_t a1, unsigned int *a2, double a3)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 240);
  v6 = *(v4 + 248);
  v7 = (v6 - v5) >> 3;
  v8 = *a2;
  if (v7 > v8)
  {
    goto LABEL_15;
  }

  v9 = (v8 + 1);
  v10 = v9 - v7;
  if (v9 <= v7)
  {
    if (v9 >= v7)
    {
      goto LABEL_15;
    }

    v14 = v5 + 8 * v9;
  }

  else
  {
    v11 = *(v4 + 256);
    if (v10 > (v11 - v6) >> 3)
    {
      v12 = v11 - v5;
      if (v12 >> 2 > v9)
      {
        v9 = v12 >> 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v9;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }

      goto LABEL_48;
    }

    memset(*(v4 + 248), 255, 8 * v10);
    v14 = v6 + 8 * v10;
  }

  *(v4 + 248) = v14;
LABEL_15:
  LODWORD(a3) = a2[4];
  v15 = sqrt(*&a3);
  if (v15 <= 8)
  {
    v16 = 8;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v4 + 216);
  v18 = *(v4 + 224);
  v19 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 3);
  v20 = v16 - v19;
  if (v16 > v19)
  {
    v21 = *(v4 + 232);
    if (0xAAAAAAAAAAAAAAABLL * ((v21 - v18) >> 3) < v20)
    {
      v22 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v17) >> 3);
      v23 = 2 * v22;
      if (2 * v22 <= v16)
      {
        v23 = v16;
      }

      if (v22 >= 0x555555555555555)
      {
        v24 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v24 = v23;
      }

      if (v24 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

LABEL_48:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(*(v4 + 224), 24 * ((24 * v20 - 24) / 0x18) + 24);
    *(v4 + 224) = v18 + 24 * ((24 * v20 - 24) / 0x18) + 24;
  }

  v25 = (*(v4 + 216) + 8);
  v26 = v16;
  do
  {
    *v25 = *(v25 - 1);
    v25 += 3;
    --v26;
  }

  while (v26);
  v27 = a2[4];
  if (v27)
  {
    v28 = a2[3];
    v29 = (*(v4 + 40) + 4 * v28);
    v30 = 4 * (v27 + v28) - 4 * v28;
    do
    {
      v31 = *v29++;
      v32 = 3 * v31 + 1;
      v30 -= 4;
    }

    while (v30);
  }

  v46 = a2;
  v33 = 0;
  v34 = 0;
  v35 = *(v4 + 192);
  v36 = *(v4 + 200);
  do
  {
    v37 = (*(v4 + 216) + 24 * v33);
    v39 = *v37;
    v38 = v37[1];
    while (v39 != v38)
    {
      if (*(v39 + 8))
      {
        v40 = *(v39 + 8);
        if (v40 < 0)
        {
          v40 = -v40;
        }

        v34 += v40;
      }

      v39 += 12;
    }

    ++v33;
  }

  while (v33 != v16);
  v41 = 1431655765 * ((v36 - v35) >> 2) - 1431655765 * ((*(v4 + 200) - *(v4 + 192)) >> 2);
  v42 = (*(v4 + 240) + 8 * *v46);
  *v42 = -1431655765 * ((v36 - v35) >> 2);
  v42[1] = v41;
  v43 = v46[4];
  return v43 < 0x64 || v34 >= v43;
}

uint64_t _ZNKSt3__110__function6__funcIZN4geom12_GLOBAL__N_120winding_number_exactIfEC1ENS2_5sliceIDv3_fEENS6_IjEEEUlRNS2_8bvh_nodeIfLh3EEEE_NS_9allocatorISD_EEFbSC_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN4geom12_GLOBAL__N_120winding_number_exactIfEC1ENS_5sliceIDv3_fEENS3_IjEEEUlRNS_8bvh_nodeIfLh3EEEE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void geom::anonymous namespace::winding_number_exact<float>::count_edge(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a2 >= a3)
  {
    if (a3 >= a2)
    {
      return;
    }

    v10 = a2 | (a3 << 32);
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
    v6 = (*(a1 + 216) + 24 * ((v11 ^ (v11 >> 31)) % a4));
    v7 = *v6;
    v12 = -1431655765 * ((v6[1] - *v6) >> 2);
    if (v12)
    {
      while (*v7 != a3 || v7[1] != a2)
      {
        v7 += 3;
        if (!--v12)
        {
          goto LABEL_12;
        }
      }

      v9 = -1;
      goto LABEL_14;
    }

LABEL_12:
    v13 = __ROR8__(v10, 32);
    v14 = 0;
    v9 = -1;
  }

  else
  {
    v4 = a3 | (a2 << 32);
    v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
    v6 = (*(a1 + 216) + 24 * ((v5 ^ (v5 >> 31)) % a4));
    v7 = *v6;
    v8 = -1431655765 * ((v6[1] - *v6) >> 2);
    if (v8)
    {
      while (*v7 != a2 || v7[1] != a3)
      {
        v7 += 3;
        if (!--v8)
        {
          goto LABEL_6;
        }
      }

      v9 = 1;
      goto LABEL_14;
    }

LABEL_6:
    v13 = __ROR8__(v4, 32);
    v14 = 0;
    v9 = 1;
  }

  v7 = (v6[1] - 12);
LABEL_14:
  v7[2] += v9;
}

void std::vector<geom::anonymous namespace::winding_number_exact<float>::exterior_edge,std::allocator<geom::anonymous namespace::winding_number_exact<float>::exterior_edge>>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 2);
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
      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 4 * ((v3 - *a1) >> 2);
    *v12 = *a2;
    *(v12 + 8) = *(a2 + 2);
    v6 = 12 * v8 + 12;
    v13 = (v12 - (v3 - v7));
    memcpy(v13, v7, v3 - v7);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 8) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 12;
  }

  *(a1 + 8) = v6;
}

BOOL std::type_info::operator==[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t geom::anonymous namespace::winding_number_base<double>::winding_number_base(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = geom::bvh<double,(unsigned char)3>::bvh(a1, 0, 0, 0, 0, 0);
  *(v10 + 136) = 0u;
  v11 = (v10 + 136);
  *(v10 + 104) = a2;
  *(v10 + 112) = a3;
  *(v10 + 120) = a4;
  *(v10 + 128) = a5;
  *(v10 + 152) = 0u;
  *(v10 + 168) = 0u;
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm((v10 + 136), a5 / 3);
  std::vector<geom::bbox<double,(unsigned char)3>>::resize(v11 + 3, *(v11 - 1) / 3uLL, v12, v13, v14, v15);
  v16 = *v11;
  if (v11[1] == *v11)
  {
    v36 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 2;
    v19 = 1;
    __asm { FMOV            V0.2D, #3.0 }

    do
    {
      v25 = *(a1 + 120);
      v26 = *(a1 + 104);
      v27 = (v26 + 32 * *(v25 + 4 * (v18 - 2)));
      v28 = (v26 + 32 * *(v25 + 4 * (v18 - 1)));
      v29 = (v26 + 32 * *(v25 + 4 * v18));
      v30 = (v16 + 32 * v17);
      v31 = vdivq_f64(vaddq_f64(vaddq_f64(v27[1], v28[1]), v29[1]), _Q0);
      *v30 = vdivq_f64(vaddq_f64(vaddq_f64(*v27, *v28), *v29), _Q0);
      v30[1] = v31;
      v32 = vminnmq_f64(*&v27[1].f64[0], *&vminnmq_f64(*&v28[1].f64[0], *&v29[1].f64[0]));
      v33 = (*(a1 + 160) + (v17 << 6));
      *v33 = vminnmq_f64(*v27, vminnmq_f64(*v28, *v29));
      v33[1] = v32;
      v34 = vmaxnmq_f64(*&v27[1].f64[0], *&vmaxnmq_f64(*&v28[1].f64[0], *&v29[1].f64[0]));
      v35 = (*(a1 + 160) + (v17 << 6));
      v35[2] = vmaxnmq_f64(*v27, vmaxnmq_f64(*v28, *v29));
      v35[3] = v34;
      v17 = v19;
      v16 = *(a1 + 136);
      v36 = (*(a1 + 144) - v16) >> 5;
      v18 += 3;
    }

    while (v36 > v19++);
  }

  geom::bvh<double,(unsigned char)3>::bvh(v45, v16, v36, *(a1 + 160), (*(a1 + 168) - *(a1 + 160)) >> 6, 0);
  *a1 = v45[0];
  v38 = *(a1 + 8);
  if (v38)
  {
    *(a1 + 16) = v38;
    operator delete(v38);
  }

  *(a1 + 8) = *v46;
  *(a1 + 24) = v47;
  v46[1] = 0;
  v47 = 0;
  v46[0] = 0;
  v39 = *(a1 + 32);
  if (v39)
  {
    *(a1 + 40) = v39;
    operator delete(v39);
  }

  *(a1 + 32) = *__p;
  *(a1 + 48) = v49;
  __p[1] = 0;
  v49 = 0;
  __p[0] = 0;
  if (*(a1 + 72) == 1)
  {
    v40 = *(a1 + 56);
    if (v40)
    {
      MEMORY[0x25305E3D0](v40, 0x1000C80E0EAB150);
    }
  }

  v41 = v51;
  *(a1 + 56) = v50;
  *(a1 + 64) = v41;
  *(a1 + 72) = v52;
  v52 = 0;
  v50 = 0;
  v51 = 0;
  if (*(a1 + 96) == 1)
  {
    v42 = *(a1 + 80);
    if (v42)
    {
      MEMORY[0x25305E3D0](v42, 0x1000C80FA0F61DDLL);
    }
  }

  v43 = v54;
  *(a1 + 80) = v53;
  *(a1 + 88) = v43;
  *(a1 + 96) = v55;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  if (v52 == 1 && v50)
  {
    MEMORY[0x25305E3D0](v50, 0x1000C80E0EAB150);
  }

  v50 = 0;
  v51 = 0;
  v52 = 0;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v46[0])
  {
    v46[1] = v46[0];
    operator delete(v46[0]);
  }

  return a1;
}

void _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 32 * a2;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE8__appendEm(a1, a2 - v2);
  }
}

void std::vector<geom::bbox<double,(unsigned char)3>>::resize(void *a1, unint64_t a2, double a3, __n128 a4, double a5, __n128 a6)
{
  v6 = (a1[1] - *a1) >> 6;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      a1[1] = *a1 + (a2 << 6);
    }
  }

  else
  {
    std::vector<geom::bbox<double,(unsigned char)3>>::__append(a1, a2 - v6, a3, a4, a5, a6);
  }
}

void _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE8__appendEm(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 5)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 32 * a2);
      v5 += 32 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 4 > v7)
    {
      v7 = v8 >> 4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v9);
    }

    v10 = (32 * (v6 >> 5));
    bzero(v10, 32 * a2);
    v11 = &v10[32 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::vector<geom::bbox<double,(unsigned char)3>>::__append(uint64_t a1, unint64_t a2, double a3, __n128 a4, double a5, __n128 a6)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a2 <= (v9 - v8) >> 6)
  {
    if (a2)
    {
      v15 = vdupq_n_s64(0x7FF0000000000000uLL);
      v16 = v8 + (a2 << 6);
      a4.n128_u64[0] = 0x7FF0000000000000;
      v17 = vdupq_n_s64(0xFFF0000000000000);
      a6.n128_u64[0] = 0xFFF0000000000000;
      do
      {
        *v8 = v15;
        *(v8 + 16) = a4;
        *(v8 + 32) = v17;
        *(v8 + 48) = a6;
        v8 += 64;
      }

      while (v8 != v16);
      v8 = v16;
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v10 = v8 - *a1;
    v11 = a2 + (v10 >> 6);
    if (v11 >> 58)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = v10 >> 6;
    v13 = v9 - *a1;
    if (v13 >> 5 > v11)
    {
      v11 = v13 >> 5;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFC0)
    {
      v14 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::bbox<double,(unsigned char)3>>>(a1, v14);
    }

    v18 = v12 << 6;
    v19 = (v12 << 6) + (a2 << 6);
    v20 = vdupq_n_s64(0x7FF0000000000000uLL);
    a4.n128_u64[0] = 0x7FF0000000000000;
    v21 = vdupq_n_s64(0xFFF0000000000000);
    a6.n128_u64[0] = 0xFFF0000000000000;
    v22 = v18;
    do
    {
      *v22 = v20;
      *(v22 + 16) = a4;
      *(v22 + 32) = v21;
      *(v22 + 48) = a6;
      v22 += 64;
    }

    while (v22 != v19);
    v23 = *(a1 + 8) - *a1;
    v24 = v18 - v23;
    memcpy((v18 - v23), *a1, v23);
    v25 = *a1;
    *a1 = v24;
    *(a1 + 8) = v19;
    *(a1 + 16) = 0;
    if (v25)
    {

      operator delete(v25);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::bbox<double,(unsigned char)3>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t _ZNKSt3__110__function6__funcIZN4geom12_GLOBAL__N_120winding_number_exactIdEC1ENS2_5sliceIDv3_dEENS6_IjEEEUlRNS2_8bvh_nodeIdLh3EEEE_NS_9allocatorISD_EEFbSC_EE7__cloneEPNS0_6__baseISG_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28628F298;
  a2[1] = v2;
  return result;
}

BOOL _ZNSt3__110__function6__funcIZN4geom12_GLOBAL__N_120winding_number_exactIdEC1ENS2_5sliceIDv3_dEENS6_IjEEEUlRNS2_8bvh_nodeIdLh3EEEE_NS_9allocatorISD_EEFbSC_EEclESC_(uint64_t a1, unsigned int *a2, double a3)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 240);
  v6 = *(v4 + 248);
  v7 = (v6 - v5) >> 3;
  v8 = *a2;
  if (v7 > v8)
  {
    goto LABEL_15;
  }

  v9 = (v8 + 1);
  v10 = v9 - v7;
  if (v9 <= v7)
  {
    if (v9 >= v7)
    {
      goto LABEL_15;
    }

    v14 = v5 + 8 * v9;
  }

  else
  {
    v11 = *(v4 + 256);
    if (v10 > (v11 - v6) >> 3)
    {
      v12 = v11 - v5;
      if (v12 >> 2 > v9)
      {
        v9 = v12 >> 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v9;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }

      goto LABEL_48;
    }

    memset(*(v4 + 248), 255, 8 * v10);
    v14 = v6 + 8 * v10;
  }

  *(v4 + 248) = v14;
LABEL_15:
  LODWORD(a3) = a2[4];
  v15 = sqrt(*&a3);
  if (v15 <= 8)
  {
    v16 = 8;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v4 + 216);
  v18 = *(v4 + 224);
  v19 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 3);
  v20 = v16 - v19;
  if (v16 > v19)
  {
    v21 = *(v4 + 232);
    if (0xAAAAAAAAAAAAAAABLL * ((v21 - v18) >> 3) < v20)
    {
      v22 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v17) >> 3);
      v23 = 2 * v22;
      if (2 * v22 <= v16)
      {
        v23 = v16;
      }

      if (v22 >= 0x555555555555555)
      {
        v24 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v24 = v23;
      }

      if (v24 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

LABEL_48:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(*(v4 + 224), 24 * ((24 * v20 - 24) / 0x18) + 24);
    *(v4 + 224) = v18 + 24 * ((24 * v20 - 24) / 0x18) + 24;
  }

  v25 = (*(v4 + 216) + 8);
  v26 = v16;
  do
  {
    *v25 = *(v25 - 1);
    v25 += 3;
    --v26;
  }

  while (v26);
  v27 = a2[4];
  if (v27)
  {
    v28 = a2[3];
    v29 = (*(v4 + 40) + 4 * v28);
    v30 = 4 * (v27 + v28) - 4 * v28;
    do
    {
      v31 = *v29++;
      v32 = 3 * v31 + 1;
      v30 -= 4;
    }

    while (v30);
  }

  v46 = a2;
  v33 = 0;
  v34 = 0;
  v35 = *(v4 + 192);
  v36 = *(v4 + 200);
  do
  {
    v37 = (*(v4 + 216) + 24 * v33);
    v39 = *v37;
    v38 = v37[1];
    while (v39 != v38)
    {
      if (*(v39 + 8))
      {
        v40 = *(v39 + 8);
        if (v40 < 0)
        {
          v40 = -v40;
        }

        v34 += v40;
      }

      v39 += 12;
    }

    ++v33;
  }

  while (v33 != v16);
  v41 = 1431655765 * ((v36 - v35) >> 2) - 1431655765 * ((*(v4 + 200) - *(v4 + 192)) >> 2);
  v42 = (*(v4 + 240) + 8 * *v46);
  *v42 = -1431655765 * ((v36 - v35) >> 2);
  v42[1] = v41;
  v43 = v46[4];
  return v43 < 0x64 || v34 >= v43;
}

uint64_t _ZNKSt3__110__function6__funcIZN4geom12_GLOBAL__N_120winding_number_exactIdEC1ENS2_5sliceIDv3_dEENS6_IjEEEUlRNS2_8bvh_nodeIdLh3EEEE_NS_9allocatorISD_EEFbSC_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN4geom12_GLOBAL__N_120winding_number_exactIdEC1ENS_5sliceIDv3_dEENS3_IjEEEUlRNS_8bvh_nodeIdLh3EEEE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<geom::anonymous namespace::winding_number_node_data<float>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - *a1) >> 4);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 240 * a2;
  }

  else
  {
    v7 = a1[2];
    if (0xEEEEEEEEEEEEEEEFLL * ((v7 - v4) >> 4) < v6)
    {
      if (a2 <= 0x111111111111111)
      {
        v8 = 0xEEEEEEEEEEEEEEEFLL * ((v7 - v3) >> 4);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x88888888888888)
        {
          v10 = 0x111111111111111;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0x111111111111111)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(a1[1], 240 * ((240 * v6 - 240) / 0xF0) + 240);
    v11 = v4 + 240 * ((240 * v6 - 240) / 0xF0) + 240;
  }

  a1[1] = v11;
}

uint64_t _ZNKSt3__110__function6__funcIZN4geom12_GLOBAL__N_133winding_number_approximate_pointsIfEC1ENS2_5sliceIDv3_fEES8_NS6_IfEEEUlRKNS2_10point_treeIfLh3EEEyE_NS_9allocatorISE_EEFvSD_yEE7__cloneEPNS0_6__baseISH_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28628F328;
  a2[1] = v2;
  return result;
}

float _ZNSt3__110__function6__funcIZN4geom12_GLOBAL__N_133winding_number_approximate_pointsIfEC1ENS2_5sliceIDv3_fEES8_NS6_IfEEEUlRKNS2_10point_treeIfLh3EEEyE_NS_9allocatorISE_EEFvSD_yEEclESD_Oy(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  v4 = v3[42] + 240 * *a3;
  v5 = (*(a2 + 224) + 16 * *a3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(a2 + 104);
  *(v4 + 72) = 0;
  v9 = 0uLL;
  *(v4 + 64) = 0;
  *(v4 + 88) = 0;
  *(v4 + 80) = 0;
  *(v4 + 200) = 0;
  *(v4 + 192) = 0;
  *(v4 + 216) = 0;
  *(v4 + 208) = 0;
  *(v4 + 232) = 0;
  *(v4 + 224) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  v10 = *(v4 + 192);
  v11 = *(v4 + 208);
  v12 = *(v4 + 224);
  *(v4 + 160) = v11;
  *(v4 + 176) = v12;
  *(v4 + 128) = v12;
  *(v4 + 144) = v10;
  *(v4 + 96) = v10;
  *(v4 + 112) = v11;
  *v4 = 0u;
  if (v6 == v7)
  {
    v13.i64[0] = 0x3F0000003FLL;
    v13.i64[1] = 0x3F0000003FLL;
    *v4 = vnegq_f32(v13);
    v14 = 0.0;
  }

  else
  {
    v15 = (v8 + 8 * v6);
    v16 = v3[5];
    v17 = 8 * v7 - 8 * v6;
    v18 = 0;
    v19 = v17;
    v20 = v15;
    do
    {
      v9 = vmlaq_n_f32(v9, *(v3[1] + 16 * *v20), *(v16 + 4 * *v20));
      *v4 = v9;
      v21 = *v20++;
      v16 = v3[5];
      *v18.i32 = *v18.i32 + *(v16 + 4 * v21);
      v19 -= 8;
    }

    while (v19);
    v22 = vdivq_f32(v9, vdupq_lane_s32(v18, 0));
    *v4 = v22;
    v23 = *(v4 + 96);
    v24 = *(v4 + 112);
    v25 = *(v4 + 128);
    v26 = *(v4 + 144);
    v27 = *(v4 + 160);
    v28 = *(v4 + 176);
    v29 = *(v4 + 192);
    v30 = *(v4 + 208);
    v14 = 0.0;
    v31 = 0uLL;
    do
    {
      v32 = *v15++;
      v33 = vsubq_f32(*(v3[1] + 16 * v32), v22);
      v34 = vmulq_f32(v33, v33);
      v35 = v34.f32[2] + vaddv_f32(*v34.f32);
      v36 = *(v3[3] + 16 * v32);
      v37 = *(v3[5] + 4 * v32);
      if (v35 >= v14)
      {
        v14 = v35;
      }

      v38 = vmulq_n_f32(v36, v37);
      v31 = vaddq_f32(v31, v38);
      *(v4 + 32) = v31;
      v39 = vmulq_n_f32(v33, v38.f32[0]);
      v40 = vmulq_lane_f32(v33, *v38.f32, 1);
      v41 = vmulq_laneq_f32(v33, v38, 2);
      v42 = vaddq_f32(*(v4 + 48), v39);
      v43 = vaddq_f32(*(v4 + 64), v40);
      v44 = vaddq_f32(v41, *(v4 + 80));
      *(v4 + 56) = v42.i32[2];
      *(v4 + 48) = v42.i64[0];
      *(v4 + 72) = v43.i32[2];
      *(v4 + 64) = v43.i64[0];
      *(v4 + 88) = v44.i32[2];
      *(v4 + 80) = v44.i64[0];
      v23 = vaddq_f32(v23, vmulq_n_f32(v39, v33.f32[0]));
      v24 = vaddq_f32(v24, vmulq_n_f32(v40, v33.f32[0]));
      *(v4 + 96) = v23;
      *(v4 + 112) = v24;
      v25 = vaddq_f32(v25, vmulq_n_f32(v41, v33.f32[0]));
      v26 = vaddq_f32(v26, vmulq_lane_f32(v39, *v33.f32, 1));
      *(v4 + 128) = v25;
      *(v4 + 144) = v26;
      v27 = vaddq_f32(v27, vmulq_lane_f32(v40, *v33.f32, 1));
      v28 = vaddq_f32(v28, vmulq_lane_f32(v41, *v33.f32, 1));
      *(v4 + 160) = v27;
      *(v4 + 176) = v28;
      v29 = vaddq_f32(v29, vmulq_laneq_f32(v39, v33, 2));
      v30 = vaddq_f32(v30, vmulq_laneq_f32(v40, v33, 2));
      *(v4 + 192) = v29;
      *(v4 + 208) = v30;
      *(v4 + 224) = vaddq_f32(vmulq_laneq_f32(v41, v33, 2), *(v4 + 224));
      v17 -= 8;
    }

    while (v17);
  }

  result = sqrtf(v14);
  *(v4 + 16) = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4geom12_GLOBAL__N_133winding_number_approximate_pointsIfEC1ENS2_5sliceIDv3_fEES8_NS6_IfEEEUlRKNS2_10point_treeIfLh3EEEyE_NS_9allocatorISE_EEFvSD_yEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN4geom12_GLOBAL__N_133winding_number_approximate_pointsIfEC1ENS_5sliceIDv3_fEES5_NS3_IfEEEUlRKNS_10point_treeIfLh3EEEyE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<geom::anonymous namespace::winding_number_node_data<double>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0x34F72C234F72C235 * ((v4 - *a1) >> 4);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 464 * a2;
  }

  else
  {
    v7 = a1[2];
    if (0x34F72C234F72C235 * ((v7 - v4) >> 4) < v6)
    {
      if (a2 <= 0x8D3DCB08D3DCB0)
      {
        v8 = 0x34F72C234F72C235 * ((v7 - v3) >> 4);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x469EE58469EE58)
        {
          v10 = 0x8D3DCB08D3DCB0;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0x8D3DCB08D3DCB0)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(a1[1], 464 * ((464 * v6 - 464) / 0x1D0) + 464);
    v11 = v4 + 464 * ((464 * v6 - 464) / 0x1D0) + 464;
  }

  a1[1] = v11;
}

uint64_t _ZNKSt3__110__function6__funcIZN4geom12_GLOBAL__N_133winding_number_approximate_pointsIdEC1ENS2_5sliceIDv3_dEES8_NS6_IdEEEUlRKNS2_10point_treeIdLh3EEEyE_NS_9allocatorISE_EEFvSD_yEE7__cloneEPNS0_6__baseISH_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28628F3B8;
  a2[1] = v2;
  return result;
}

double _ZNSt3__110__function6__funcIZN4geom12_GLOBAL__N_133winding_number_approximate_pointsIdEC1ENS2_5sliceIDv3_dEES8_NS6_IdEEEUlRKNS2_10point_treeIdLh3EEEyE_NS_9allocatorISE_EEFvSD_yEEclESD_Oy(uint64_t a1, uint64_t a2, void *a3, double a4, float64x2_t a5, double a6, float64x2_t a7)
{
  v8 = *(a1 + 8);
  v9 = v8[50] + 464 * *a3;
  v10 = (*(a2 + 288) + 16 * *a3);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(a2 + 168);
  *v9 = 0;
  *(v9 + 8) = 0;
  v14 = 0uLL;
  *(v9 + 16) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 0u;
  *(v9 + 128) = 0u;
  *(v9 + 144) = 0u;
  *(v9 + 160) = 0u;
  *(v9 + 176) = 0u;
  *(v9 + 192) = 0u;
  *(v9 + 208) = 0u;
  *(v9 + 224) = 0u;
  *(v9 + 240) = 0u;
  *(v9 + 256) = 0u;
  *(v9 + 272) = 0u;
  *(v9 + 288) = 0u;
  *(v9 + 304) = 0u;
  *(v9 + 320) = 0u;
  *(v9 + 336) = 0u;
  *(v9 + 352) = 0u;
  *(v9 + 368) = 0u;
  *(v9 + 384) = 0u;
  *(v9 + 400) = 0u;
  *(v9 + 416) = 0u;
  *(v9 + 432) = 0u;
  *(v9 + 448) = 0u;
  if (v11 == v12)
  {
    a5.f64[0] = NAN;
    *v9 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(v9 + 16) = a5;
    v15 = 0.0;
  }

  else
  {
    v16 = (v13 + 8 * v11);
    v17 = v8[5];
    v18 = 8 * v12 - 8 * v11;
    a5.f64[0] = 0.0;
    v19 = v18;
    v20 = 0uLL;
    v21 = v16;
    do
    {
      a7.f64[0] = *(v17 + 8 * *v21);
      v22 = (v8[1] + 32 * *v21);
      v20 = vmlaq_f64(v20, v22[1], a7);
      v14 = vmlaq_n_f64(v14, *v22, a7.f64[0]);
      *v9 = v14;
      *(v9 + 16) = v20;
      v23 = *v21++;
      v17 = v8[5];
      a5.f64[0] = a5.f64[0] + *(v17 + 8 * v23);
      v19 -= 8;
    }

    while (v19);
    *&v14.f64[1] = vextq_s8(v14, v14, 8uLL).u64[0];
    v24 = vdivq_f64(v14, vdupq_lane_s64(*&a5.f64[0], 0));
    v25 = vdivq_f64(v20, a5);
    v26 = 0uLL;
    v88 = v25;
    v89 = v24;
    *v9 = v24;
    *(v9 + 16) = v25;
    v15 = 0.0;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v101 = 0u;
    v40 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    do
    {
      v93 = v31;
      v96 = v37;
      v97 = v28;
      v98 = v27;
      v99 = v26;
      v100 = v15;
      v47 = *v16++;
      v48 = (v8[1] + 32 * v47);
      v49 = vsubq_f64(*v48, v89);
      v50 = vsubq_f64(v48[1], v88);
      v51 = (v8[3] + 32 * v47);
      v7.f64[0] = *(v8[5] + 8 * v47);
      v52 = vmulq_n_f64(*v51, v7.f64[0]);
      v53 = vmulq_f64(v51[1], v7);
      v92 = vaddq_f64(v46, v53);
      v45 = vaddq_f64(v45, v52);
      v54 = vmulq_n_f64(v49, v52.f64[0]);
      v55 = vmulq_f64(v50, v52);
      v56 = vmulq_laneq_f64(v49, v52, 1);
      v57 = vmulq_laneq_f64(v50, v52, 1);
      v58 = vmulq_n_f64(v49, v53.f64[0]);
      v59 = vmulq_f64(v50, v53);
      v44 = vaddq_f64(v44, v55);
      v43 = vaddq_f64(v43, v54);
      v42 = vaddq_f64(v42, v57);
      v41 = vaddq_f64(v41, v56);
      v94 = vaddq_f64(v39, v58);
      v95 = vaddq_f64(v40, v59);
      v60 = vmulq_n_f64(v54, v49.f64[0]);
      v61 = vmulq_f64(v49, v55);
      v62 = v34;
      v63 = v29;
      v64 = vmulq_n_f64(v56, v49.f64[0]);
      v65 = v36;
      v66 = v35;
      v67 = v30;
      v68 = vmulq_f64(v49, v57);
      v69 = vmulq_n_f64(v58, v49.f64[0]);
      v70 = vmulq_f64(v49, v59);
      v71 = vmulq_laneq_f64(v54, v49, 1);
      v72 = vmulq_laneq_f64(v55, v49, 1);
      v91 = vmulq_laneq_f64(v56, v49, 1);
      v73 = vmulq_f64(v50, v50).f64[0] + vaddvq_f64(vmulq_f64(v49, v49));
      v74 = vmulq_laneq_f64(v57, v49, 1);
      v90 = vmulq_laneq_f64(v58, v49, 1);
      v75 = vmulq_laneq_f64(v59, v49, 1);
      v7 = vmulq_n_f64(v54, v50.f64[0]);
      v76 = vmulq_f64(v50, v55);
      v77 = vmulq_f64(v50, v57);
      v78 = vmulq_n_f64(v56, v50.f64[0]);
      v79 = vmulq_f64(v50, v59);
      v80 = vmulq_n_f64(v58, v50.f64[0]);
      v81 = vaddq_f64(v101, v61);
      v38 = vaddq_f64(v38, v60);
      v37 = vaddq_f64(v96, v68);
      v82 = v67;
      v83 = v66;
      v36 = vaddq_f64(v65, v64);
      v84 = v63;
      v35 = vaddq_f64(v83, v70);
      v34 = vaddq_f64(v62, v69);
      v46 = v92;
      v33 = vaddq_f64(v33, v72);
      v32 = vaddq_f64(v32, v71);
      v39 = v94;
      v40 = v95;
      v31 = vaddq_f64(v93, v74);
      v85 = vaddq_f64(v77, *(v9 + 416));
      *(v9 + 400) = vaddq_f64(v78, *(v9 + 400));
      *(v9 + 416) = v85;
      v86 = vaddq_f64(v79, *(v9 + 448));
      *(v9 + 432) = vaddq_f64(v80, *(v9 + 432));
      *(v9 + 448) = v86;
      v30 = vaddq_f64(v82, v91);
      v29 = vaddq_f64(v84, v75);
      v28 = vaddq_f64(v97, v90);
      v27 = vaddq_f64(v98, v76);
      v15 = v100;
      if (v73 >= v100)
      {
        v15 = v73;
      }

      v26 = vaddq_f64(v99, v7);
      *(v9 + 48) = v45;
      *(v9 + 64) = v92;
      *(v9 + 80) = v43;
      *(v9 + 96) = v44;
      *(v9 + 112) = v41;
      *(v9 + 128) = v42;
      *(v9 + 144) = v94;
      *(v9 + 160) = v95;
      *(v9 + 176) = v38;
      *(v9 + 192) = v81;
      v101 = v81;
      *(v9 + 208) = v36;
      *(v9 + 224) = v37;
      *(v9 + 240) = v34;
      *(v9 + 256) = v35;
      *(v9 + 272) = v32;
      *(v9 + 288) = v33;
      *(v9 + 304) = v30;
      *(v9 + 320) = v31;
      *(v9 + 336) = v28;
      *(v9 + 352) = v29;
      *(v9 + 368) = v26;
      *(v9 + 384) = v27;
      v18 -= 8;
    }

    while (v18);
  }

  result = sqrt(v15);
  *(v9 + 32) = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4geom12_GLOBAL__N_133winding_number_approximate_pointsIdEC1ENS2_5sliceIDv3_dEES8_NS6_IdEEEUlRKNS2_10point_treeIdLh3EEEyE_NS_9allocatorISE_EEFvSD_yEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN4geom12_GLOBAL__N_133winding_number_approximate_pointsIdEC1ENS_5sliceIDv3_dEES5_NS3_IdEEEUlRKNS_10point_treeIdLh3EEEyE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t _ZNKSt3__110__function6__funcIZN4geom12_GLOBAL__N_126winding_number_approximateIfEC1ENS2_5sliceIDv3_fEENS6_IjEEEUlRNS2_8bvh_nodeIfLh3EEEE_NS_9allocatorISD_EEFbSC_EE7__cloneEPNS0_6__baseISG_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28628F448;
  a2[1] = v2;
  return result;
}

float _ZNSt3__110__function6__funcIZN4geom12_GLOBAL__N_126winding_number_approximateIfEC1ENS2_5sliceIDv3_fEENS6_IjEEEUlRNS2_8bvh_nodeIfLh3EEEE_NS_9allocatorISD_EEFbSC_EEclESC_(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 8);
  v5 = v3 + 25;
  v4 = v3[25];
  v6 = *a2;
  if (0xEEEEEEEEEEEEEEEFLL * ((v3[26] - v4) >> 4) <= v6)
  {
    LODWORD(v6) = *a2;
    v4 = *v5;
  }

  v7 = (v4 + 240 * v6);
  v7[4].i32[2] = 0;
  v8 = 0uLL;
  v7[4].i64[0] = 0;
  v7[5].i32[2] = 0;
  v7[5].i64[0] = 0;
  v7[12].i32[2] = 0;
  v7[12].i64[0] = 0;
  v7[13].i32[2] = 0;
  v7[13].i64[0] = 0;
  v7[14].i32[2] = 0;
  v7[14].i64[0] = 0;
  v7[2].i64[1] = 0;
  v7[3].i64[0] = 0;
  v7[2].i64[0] = 0;
  v7[3].i32[2] = 0;
  v10 = v7[12];
  v11 = v7[13];
  v9 = v7[14];
  v7[10] = v11;
  v7[11] = v9;
  v7[8] = v9;
  v7[9] = v10;
  v7[6] = v10;
  v7[7] = v11;
  *v7 = 0u;
  v10.i32[0] = 0;
  v11.i64[0] = 0;
  v12 = a2[4];
  if (v12)
  {
    v13 = a2[3];
    v14 = v12 + v13;
    v15 = (v3[5] + 4 * v13);
    v16 = 4 * v14 - 4 * v13;
    do
    {
      v17 = *v15++;
      v11 = *(v3[18] + 16 * v17);
      v8 = vaddq_f32(v8, v11);
      *v7 = v8;
      v16 -= 4;
    }

    while (v16);
    v11.f32[0] = a2[4];
  }

  *v7 = vdivq_f32(v8, vdupq_lane_s32(*v11.f32, 0));
  v18 = a2[4];
  if (v18)
  {
    v19 = a2[3];
    v20 = v18 + v19;
    v21 = (v3[5] + 4 * v19);
    v22 = 4 * v20 - 4 * v19;
    v10.i32[0] = 0;
    v23.i64[0] = 0x3F0000003F000000;
    v23.i64[1] = 0x3F0000003F000000;
    __asm { FMOV            V2.4S, #3.0 }

    v29 = vdupq_n_s32(0x3EAAAAABu);
    do
    {
      v30 = *v21++;
      v31 = v3[16];
      v32 = *(v31 + 4 * (3 * v30));
      v33 = *(v31 + 4 * (3 * v30 + 1));
      v34 = v3[14];
      v35 = *(v31 + 4 * (3 * v30 + 2));
      v36 = *(v34 + 16 * v32);
      v37 = *v7;
      v38 = vsubq_f32(v36, *v7);
      v39 = *(v34 + 16 * v33);
      v40 = vmulq_f32(v38, v38);
      v41 = vsubq_f32(v39, *v7);
      v42 = vmulq_f32(v41, v41);
      v43 = *(v34 + 16 * v35);
      v44 = vsubq_f32(v43, *v7);
      v45 = vmulq_f32(v44, v44);
      v42.f32[0] = v42.f32[2] + vaddv_f32(*v42.f32);
      v46 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
      *v40.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v40, v40, 8uLL), *&vextq_s8(v45, v45, 8uLL)), vadd_f32(vzip1_s32(*v40.i8, *v45.i8), vzip2_s32(*v40.i8, *v45.i8)));
      v47 = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL);
      v42.i32[1] = v10.i32[0];
      v10 = vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL);
      v48 = vaddq_f32(vmlaq_f32(vmulq_f32(v47, vnegq_f32(v36)), v39, v46), vmlaq_f32(vmulq_f32(v10, vnegq_f32(v39)), v43, v47));
      v49 = vmlaq_f32(vmulq_f32(v46, vnegq_f32(v43)), v36, v10);
      *v10.f32 = vbsl_s8(vcgt_f32(*v42.f32, *v40.i8), *v42.f32, *v40.i8);
      v50 = vmulq_f32(vaddq_f32(v49, v48), v23);
      v51 = v7[3];
      v7[2] = vaddq_f32(v7[2], vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL));
      v52 = v7[5];
      v53 = vsubq_f32(vdivq_f32(vaddq_f32(vaddq_f32(*(v34 + 16 * v32), *(v34 + 16 * v33)), *(v34 + 16 * v35)), _Q2), v37);
      v54 = vaddq_f32(v51, vmulq_laneq_f32(v53, v50, 2));
      v55 = vaddq_f32(v7[4], vmulq_n_f32(v53, v50.f32[0]));
      v7[3].i32[2] = v54.i32[2];
      v56 = vaddq_f32(v52, vmulq_lane_f32(v53, *v50.f32, 1));
      v7[3].i64[0] = v54.i64[0];
      v7[4].i32[2] = v55.i32[2];
      v7[4].i64[0] = v55.i64[0];
      v7[5].i32[2] = v56.i32[2];
      v7[5].i64[0] = v56.i64[0];
      v57 = *(v34 + 16 * v32);
      v58 = *(v34 + 16 * v33);
      v59 = *(v34 + 16 * v35);
      v60 = vsubq_f32(vmulq_f32(vaddq_f32(v57, v58), v23), v37);
      v61 = vsubq_f32(vmulq_f32(vaddq_f32(v58, v59), v23), v37);
      v62 = vaddq_f32(v57, v59);
      if (v10.f32[0] < v10.f32[1])
      {
        v10.f32[0] = v10.f32[1];
      }

      v63 = vsubq_f32(vmulq_f32(v62, v23), v37);
      v64 = vaddq_f32(vmulq_f32(vmulq_n_f32(v63, v63.f32[0]), v29), vmlaq_f32(vmulq_f32(vmulq_n_f32(v61, v61.f32[0]), v29), v29, vmulq_n_f32(v60, v60.f32[0])));
      v65 = vaddq_f32(vmulq_f32(vmulq_lane_f32(v63, *v63.f32, 1), v29), vmlaq_f32(vmulq_f32(vmulq_lane_f32(v61, *v61.f32, 1), v29), v29, vmulq_lane_f32(v60, *v60.f32, 1)));
      v66 = vaddq_f32(vmulq_f32(vmulq_laneq_f32(v63, v63, 2), v29), vmlaq_f32(vmulq_f32(vmulq_laneq_f32(v61, v61, 2), v29), v29, vmulq_laneq_f32(v60, v60, 2)));
      v67 = vmulq_laneq_f32(v64, v50, 2);
      v68 = vmulq_laneq_f32(v65, v50, 2);
      v69 = vmulq_laneq_f32(v66, v50, 2);
      v70 = vmulq_n_f32(v64, v50.f32[0]);
      v71 = vmulq_n_f32(v65, v50.f32[0]);
      v72 = vmulq_n_f32(v66, v50.f32[0]);
      v73 = vmulq_lane_f32(v64, *v50.f32, 1);
      v74 = vmulq_lane_f32(v65, *v50.f32, 1);
      v75 = vmulq_lane_f32(v66, *v50.f32, 1);
      v76 = vaddq_f32(v7[6], v67);
      v77 = vaddq_f32(v7[7], v68);
      v78 = vaddq_f32(v7[8], v69);
      v79 = vaddq_f32(v7[9], v70);
      v7[6] = v76;
      v7[7] = v77;
      v80 = vaddq_f32(v7[10], v71);
      v81 = vaddq_f32(v72, v7[11]);
      v7[8] = v78;
      v7[9] = v79;
      v82 = vaddq_f32(v73, v7[12]);
      v83 = vaddq_f32(v74, v7[13]);
      v7[10] = v80;
      v7[11] = v81;
      v7[12] = v82;
      v7[13] = v83;
      v7[14] = vaddq_f32(v75, v7[14]);
      v22 -= 4;
    }

    while (v22);
    v84 = a2[4] < 2;
  }

  result = sqrtf(v10.f32[0]);
  v7[1].f32[0] = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4geom12_GLOBAL__N_126winding_number_approximateIfEC1ENS2_5sliceIDv3_fEENS6_IjEEEUlRNS2_8bvh_nodeIfLh3EEEE_NS_9allocatorISD_EEFbSC_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN4geom12_GLOBAL__N_126winding_number_approximateIfEC1ENS_5sliceIDv3_fEENS3_IjEEEUlRNS_8bvh_nodeIfLh3EEEE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4geom12_GLOBAL__N_126winding_number_approximateIdEC1ENS2_5sliceIDv3_dEENS6_IjEEEUlRNS2_8bvh_nodeIdLh3EEEE_NS_9allocatorISD_EEFbSC_EE7__cloneEPNS0_6__baseISG_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28628F4C8;
  a2[1] = v2;
  return result;
}

double _ZNSt3__110__function6__funcIZN4geom12_GLOBAL__N_126winding_number_approximateIdEC1ENS2_5sliceIDv3_dEENS6_IjEEEUlRNS2_8bvh_nodeIdLh3EEEE_NS_9allocatorISD_EEFbSC_EEclESC_(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 8);
  v5 = v3 + 25;
  v4 = v3[25];
  v6 = *a2;
  if (0x34F72C234F72C235 * ((v3[26] - v4) >> 4) <= v6)
  {
    LODWORD(v6) = *a2;
    v4 = *v5;
  }

  v7 = (v4 + 464 * v6);
  v8 = 0uLL;
  *v7 = 0u;
  v7[1] = 0u;
  v7[3] = 0u;
  v7[4] = 0u;
  v7[5] = 0u;
  v7[6] = 0u;
  v7[7] = 0u;
  v7[8] = 0u;
  v7[9] = 0u;
  v7[10] = 0u;
  v7[11] = 0u;
  v7[12] = 0u;
  v7[13] = 0u;
  v7[14] = 0u;
  v7[15] = 0u;
  v7[16] = 0u;
  v7[17] = 0u;
  v7[18] = 0u;
  v7[19] = 0u;
  v7[20] = 0u;
  v7[21] = 0u;
  v7[22] = 0u;
  v7[23] = 0u;
  v7[24] = 0u;
  v7[25] = 0u;
  v7[26] = 0u;
  v7[27] = 0u;
  v7[28] = 0u;
  v9.i64[0] = 0;
  v10 = a2[4];
  if (v10)
  {
    v11 = a2[3];
    v12 = v10 + v11;
    v13 = (v3[5] + 4 * v11);
    v14 = 4 * v12 - 4 * v11;
    v15 = 0uLL;
    do
    {
      v16 = *v13++;
      v17 = v3[18] + 32 * v16;
      v18 = *(v17 + 16);
      v8 = vaddq_f64(v8, *v17);
      v15 = vaddq_f64(v15, v18);
      *v7 = v8;
      v7[1] = v15;
      v14 -= 4;
    }

    while (v14);
    LODWORD(v18.f64[0]) = a2[4];
    v18.f64[0] = *&v18.f64[0];
  }

  else
  {
    v15 = 0uLL;
    v18.f64[0] = 0.0;
  }

  v19 = vdupq_lane_s64(*&v18.f64[0], 0);
  *v7 = vdivq_f64(v8, v19);
  v7[1] = vdivq_f64(v15, v19);
  v20 = a2[4];
  if (v20)
  {
    v21 = a2[3];
    v22 = v20 + v21;
    v23 = (v3[5] + 4 * v21);
    v24 = 4 * v22 - 4 * v21;
    v9.i64[0] = 0;
    __asm
    {
      FMOV            V1.2D, #0.5
      FMOV            V2.2D, #3.0
    }

    v19.f64[0] = 0.333333333;
    v31 = vdupq_n_s64(0x3FD5555555555555uLL);
    do
    {
      v32 = *v23++;
      v33 = v3[16];
      v34 = v3[14];
      v35 = (v34 + 32 * *(v33 + 4 * (3 * v32)));
      v36 = (v34 + 32 * *(v33 + 4 * (3 * v32 + 1)));
      v37 = (v34 + 32 * *(v33 + 4 * (3 * v32 + 2)));
      v38 = v35[1];
      v40 = *v7;
      v39 = v7[1];
      v41 = vsubq_f64(*v35, *v7);
      v42 = vsubq_f64(v38, v39);
      v43 = vmulq_f64(v42, v42);
      v44 = v36[1];
      v45 = vsubq_f64(*v36, *v7);
      v46 = vsubq_f64(v44, v39);
      v47 = vmulq_f64(v46, v46).f64[0];
      v48 = v37[1];
      v49 = vsubq_f64(*v37, *v7);
      v50 = vsubq_f64(v48, v39);
      v51 = vnegq_f64(v38);
      v52 = vpaddq_f64(vmulq_f64(v41, v41), vmulq_f64(v49, v49));
      v53 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v48), *v35, 1), v38, *v37, 1);
      v38.f64[1] = v35->f64[0];
      v54 = vzip1q_s64(v43, vmulq_f64(v50, v50));
      v55 = vmlaq_laneq_f64(vmulq_laneq_f64(v51, *v36, 1), v44, *v35, 1);
      v56 = vnegq_f64(v44);
      v44.f64[1] = v36->f64[0];
      v57.f64[0] = v47 + vaddvq_f64(vmulq_f64(v45, v45));
      v58 = vaddq_f64(v54, v52);
      v59 = vmlaq_laneq_f64(vmulq_laneq_f64(v56, *v37, 1), v48, *v36, 1);
      v48.f64[1] = v37->f64[0];
      *&v57.f64[1] = v9.i64[0];
      v60 = vmulq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v38, vnegq_f64(*v37)), *v35, v48), vaddq_f64(vmlaq_f64(vmulq_f64(v44, vnegq_f64(*v35)), *v36, v38), vmlaq_f64(vmulq_f64(v48, vnegq_f64(*v36)), *v37, v44))), _Q1);
      v61 = vmulq_f64(vaddq_f64(v53, vaddq_f64(v55, v59)), _Q1);
      v45.f64[0] = v61.f64[0];
      v45.f64[1] = v60.f64[0];
      v9 = vbslq_s8(vcgtq_f64(v57, v58), v57, v58);
      v62 = vaddq_f64(v7[4], vdupq_laneq_s64(v60, 1));
      v7[3] = vaddq_f64(v7[3], v45);
      v7[4] = v62;
      if (*v9.i64 < *&v9.i64[1])
      {
        v9.i64[0] = v9.i64[1];
      }

      v63 = vsubq_f64(vdivq_f64(vaddq_f64(vaddq_f64(*v35, *v36), *v37), _Q2), v40);
      v64 = vsubq_f64(vdivq_f64(vaddq_f64(vaddq_f64(v35[1], v36[1]), v37[1]), _Q2), v39);
      v65 = vaddq_f64(v7[6], vmulq_f64(v61, v64));
      v66 = vaddq_f64(v7[7], vmulq_n_f64(v63, v60.f64[0]));
      v67 = vaddq_f64(v7[8], vmulq_f64(v60, v64));
      v68 = vaddq_f64(v7[9], vmulq_laneq_f64(v63, v60, 1));
      v69 = vaddq_f64(v7[10], vmulq_laneq_f64(v64, v60, 1));
      v7[5] = vaddq_f64(v7[5], vmulq_n_f64(v63, v61.f64[0]));
      v7[6] = v65;
      v7[7] = v66;
      v7[8] = v67;
      v7[9] = v68;
      v7[10] = v69;
      v70 = v35[1];
      v71 = v36[1];
      v72 = vsubq_f64(vmulq_f64(vaddq_f64(*v35, *v36), _Q1), v40);
      v73 = v37[1];
      v74 = vsubq_f64(vmulq_f64(vaddq_f64(v70, v71), _Q1), v39);
      v75 = vsubq_f64(vmulq_f64(vaddq_f64(*v36, *v37), _Q1), v40);
      v76 = vsubq_f64(vmulq_f64(vaddq_f64(v71, v73), _Q1), v39);
      v77 = vsubq_f64(vmulq_f64(vaddq_f64(*v35, *v37), _Q1), v40);
      v78 = vsubq_f64(vmulq_f64(vaddq_f64(v70, v73), _Q1), v39);
      v79 = vmlaq_f64(vmulq_f64(vmulq_f64(v76, v75), v19), v19, vmulq_f64(v74, v72));
      v80 = vmlaq_f64(vmulq_f64(vmulq_laneq_f64(v76, v75, 1), v19), v19, vmulq_laneq_f64(v74, v72, 1));
      v81 = vmlaq_f64(vmulq_f64(vmulq_n_f64(v75, v76.f64[0]), v31), v31, vmulq_n_f64(v72, v74.f64[0]));
      v82 = vmlaq_f64(vmulq_f64(vmulq_f64(v76, v76), v19), v19, vmulq_f64(v74, v74));
      v83 = vmulq_laneq_f64(v78, v77, 1);
      v84 = vmulq_laneq_f64(v77, v77, 1);
      v85 = vmulq_n_f64(v77, v78.f64[0]);
      v86 = vmulq_f64(v78, v78);
      v87 = vaddq_f64(vmulq_f64(vmulq_f64(v78, v77), v19), v79);
      v88 = vaddq_f64(vmulq_f64(vmulq_n_f64(v77, v77.f64[0]), v31), vmlaq_f64(vmulq_f64(vmulq_n_f64(v75, v75.f64[0]), v31), v31, vmulq_n_f64(v72, v72.f64[0])));
      v89 = vaddq_f64(vmulq_f64(v83, v19), v80);
      v90 = vaddq_f64(vmulq_f64(v84, v31), vmlaq_f64(vmulq_f64(vmulq_laneq_f64(v75, v75, 1), v31), v31, vmulq_laneq_f64(v72, v72, 1)));
      v91 = vmulq_f64(v86, v19);
      v93 = v7[15];
      v92 = v7[16];
      v94 = v7[17];
      v95 = v7[18];
      v96 = vaddq_f64(vmulq_f64(v85, v31), v81);
      v97 = vaddq_f64(v91, v82);
      v98 = vmulq_f64(v61, v87);
      v99 = vmulq_n_f64(v88, v61.f64[0]);
      v100 = vmulq_f64(v61, v89);
      v101 = vmulq_n_f64(v90, v61.f64[0]);
      v102 = vmulq_f64(v61, v97);
      v103 = vmulq_n_f64(v96, v61.f64[0]);
      v104 = vmulq_f64(v60, v87);
      v105 = vmulq_n_f64(v88, v60.f64[0]);
      v106 = vaddq_f64(v7[11], v99);
      v107 = vmulq_f64(v60, v89);
      v108 = vaddq_f64(v7[12], v98);
      v109 = vaddq_f64(v7[13], v101);
      v110 = vmulq_n_f64(v90, v60.f64[0]);
      v111 = vaddq_f64(v7[14], v100);
      v112 = vmulq_n_f64(v96, v60.f64[0]);
      v7[11] = v106;
      v7[12] = v108;
      v113 = vmulq_f64(v60, v97);
      v114 = vmulq_laneq_f64(v87, v60, 1);
      v115 = vmulq_laneq_f64(v88, v60, 1);
      v116 = vmulq_laneq_f64(v89, v60, 1);
      v7[13] = v109;
      v7[14] = v111;
      v117 = vmulq_laneq_f64(v90, v60, 1);
      v118 = vmulq_laneq_f64(v96, v60, 1);
      v7[15] = vaddq_f64(v93, v103);
      v7[16] = vaddq_f64(v92, v102);
      v119 = vmulq_laneq_f64(v97, v60, 1);
      v7[17] = vaddq_f64(v94, v105);
      v7[18] = vaddq_f64(v95, v104);
      v120 = vaddq_f64(v7[20], v107);
      v7[19] = vaddq_f64(v7[19], v110);
      v7[20] = v120;
      v121 = vaddq_f64(v113, v7[22]);
      v7[21] = vaddq_f64(v112, v7[21]);
      v7[22] = v121;
      v122 = vaddq_f64(v114, v7[24]);
      v7[23] = vaddq_f64(v115, v7[23]);
      v7[24] = v122;
      v123 = vaddq_f64(v116, v7[26]);
      v7[25] = vaddq_f64(v117, v7[25]);
      v7[26] = v123;
      v124 = vaddq_f64(v119, v7[28]);
      v7[27] = vaddq_f64(v118, v7[27]);
      v7[28] = v124;
      v24 -= 4;
    }

    while (v24);
    v125 = a2[4] < 2;
  }

  result = sqrt(*v9.i64);
  v7[2].f64[0] = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4geom12_GLOBAL__N_126winding_number_approximateIdEC1ENS2_5sliceIDv3_dEENS6_IjEEEUlRNS2_8bvh_nodeIdLh3EEEE_NS_9allocatorISD_EEFbSC_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN4geom12_GLOBAL__N_126winding_number_approximateIdEC1ENS_5sliceIDv3_dEENS3_IjEEEUlRNS_8bvh_nodeIdLh3EEEE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t geom::anonymous namespace::winding_number_base<float>::~winding_number_base(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    *(a1 + 168) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    *(a1 + 144) = v3;
    operator delete(v3);
  }

  if (*(a1 + 96) == 1)
  {
    v4 = *(a1 + 80);
    if (v4)
    {
      MEMORY[0x25305E3D0](v4, 0x1000C80E0EAB150);
    }
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (*(a1 + 72) == 1)
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      MEMORY[0x25305E3D0](v5, 0x1000C80451B5BE8);
    }
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v6 = *(a1 + 32);
  if (v6)
  {
    *(a1 + 40) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    *(a1 + 16) = v7;
    operator delete(v7);
  }

  return a1;
}

float geom::anonymous namespace::winding_number_base<float>::naive_winding_number(void *a1, uint64_t a2, float32x4_t a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a3;
    v5 = *(a2 + 12);
    v6 = (a1[4] + 4 * v5);
    v7 = a1[15];
    v8 = a1[13];
    v9 = 4 * (v3 + v5) - 4 * v5;
    v10 = 0.0;
    do
    {
      v11 = *v6++;
      v12 = vsubq_f32(*(v8 + 16 * *(v7 + 4 * (3 * v11))), v4);
      _Q1 = vsubq_f32(*(v8 + 16 * *(v7 + 4 * (3 * v11 + 1))), v4);
      v14 = vsubq_f32(*(v8 + 16 * *(v7 + 4 * (3 * v11 + 2))), v4);
      _Q3 = vmulq_f32(v12, v12);
      v16 = vmulq_f32(_Q1, _Q1);
      *_Q3.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(_Q3, _Q3, 8uLL), *&vextq_s8(v16, v16, 8uLL)), vadd_f32(vzip1_s32(*_Q3.i8, *v16.i8), vzip2_s32(*_Q3.i8, *v16.i8))));
      v17 = vmulq_f32(v12, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v14, v14, 0xCuLL), v14, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL))), vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), vextq_s8(vextq_s8(_Q1, _Q1, 0xCuLL), _Q1, 8uLL)));
      _Q0 = vmulq_f32(v12, v14);
      _Q0.f32[0] = _Q0.f32[2] + vaddv_f32(*_Q0.f32);
      __asm { FMLA            S1, S0, V3.S[1]; float }

      v23 = atan2f(v17.f32[2] + vaddv_f32(*v17.f32), _Q1.f32[0]);
      v4 = a3;
      v10 = v10 + (v23 + v23);
      v9 -= 4;
    }

    while (v9);
    v24 = v10;
  }

  else
  {
    v24 = 0.0;
  }

  return v24 / 12.5663706;
}

uint64_t geom::anonymous namespace::winding_number_base<double>::~winding_number_base(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    *(a1 + 168) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    *(a1 + 144) = v3;
    operator delete(v3);
  }

  if (*(a1 + 96) == 1)
  {
    v4 = *(a1 + 80);
    if (v4)
    {
      MEMORY[0x25305E3D0](v4, 0x1000C80FA0F61DDLL);
    }
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (*(a1 + 72) == 1)
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      MEMORY[0x25305E3D0](v5, 0x1000C80E0EAB150);
    }
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v6 = *(a1 + 32);
  if (v6)
  {
    *(a1 + 40) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    *(a1 + 16) = v7;
    operator delete(v7);
  }

  return a1;
}

double geom::anonymous namespace::winding_number_base<double>::naive_winding_number(void *a1, float64x2_t *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v32 = *a2;
    v33 = a2[1];
    v4 = *(a3 + 12);
    v5 = (a1[4] + 4 * v4);
    v6 = a1[15];
    v7 = a1[13];
    v8 = 4 * (v3 + v4) - 4 * v4;
    v9 = 0.0;
    do
    {
      v10 = *v5++;
      v11 = (v7 + 32 * *(v6 + 4 * (3 * v10)));
      v12 = v11[1];
      _Q0 = vsubq_f64(*v11, v32);
      v14 = (v7 + 32 * *(v6 + 4 * (3 * v10 + 1)));
      v15 = vsubq_f64(v12, v33);
      _Q1 = vsubq_f64(*v14, v32);
      v17 = (v7 + 32 * *(v6 + 4 * (3 * v10 + 2)));
      v18 = vsubq_f64(v14[1], v33);
      v19 = vsubq_f64(*v17, v32);
      v20 = vsubq_f64(v17[1], v33);
      v21 = vextq_s8(_Q1, v18, 8uLL);
      v22 = vextq_s8(v19, v20, 8uLL);
      v23 = vmulq_f64(v15, v20).f64[0];
      v20.f64[1] = v19.f64[0];
      v24 = vaddq_f64(vzip1q_s64(vmulq_f64(v15, v15), vmulq_f64(v18, v18)), vpaddq_f64(vmulq_f64(_Q0, _Q0), vmulq_f64(_Q1, _Q1)));
      v18.f64[1] = _Q1.f64[0];
      _Q6 = vsqrtq_f64(v24);
      v15.f64[0] = vmulq_f64(v15, vmlaq_laneq_f64(vmulq_f64(v19, vnegq_f64(vdupq_laneq_s64(_Q1, 1))), _Q1, v19, 1)).f64[0];
      v18.f64[0] = vaddvq_f64(vmulq_f64(_Q0, vmlaq_f64(vmulq_f64(v22, vnegq_f64(v18)), v20, v21)));
      _Q0.f64[0] = v23 + vaddvq_f64(vmulq_f64(_Q0, v19));
      __asm { FMLA            D1, D0, V6.D[1]; __x }

      v30 = atan2(v15.f64[0] + v18.f64[0], _Q1.f64[0]);
      v9 = v9 + v30 + v30;
      v8 -= 4;
    }

    while (v8);
  }

  else
  {
    v9 = 0.0;
  }

  return v9 / 12.5663706;
}

float geom::anonymous namespace::approximate_winding_number<float>(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6)
{
  v6 = vsubq_f32(*a1, a2);
  v7 = vmulq_f32(v6, v6);
  v8 = v7.f32[2] + vaddv_f32(*v7.f32);
  result = 0.5;
  if (fabsf(v8) > 0.00001)
  {
    v10 = sqrtf(v8);
    *&a5 = v8 * v10;
    *&a6 = v8 * (v8 * v10);
    v11 = v8 * *&a6;
    v12 = vdivq_f32(v6, vdupq_lane_s32(*&a5, 0));
    v13.i64[0] = 0;
    v13.i32[3] = 0;
    *&v14 = 1.0 / *&a5;
    LODWORD(v15) = 0;
    *(&v15 + 1) = 1.0 / *&a5;
    v13.f32[2] = 1.0 / *&a5;
    v16 = vmulq_n_f32(v6, v6.f32[0]);
    v17 = vmulq_lane_f32(v6, *v6.f32, 1);
    v18 = vmulq_laneq_f32(v6, v6, 2);
    v19 = vaddq_f32(v14, vmulq_n_f32(v16, -3.0 / *&a6));
    v20 = vaddq_f32(v15, vmulq_n_f32(v17, -3.0 / *&a6));
    v21 = vaddq_f32(v13, vmulq_n_f32(v18, -3.0 / *&a6));
    v22 = vdivq_f32(vnegq_f32(v6), vdupq_lane_s32(*&a6, 0));
    v23 = vrev64q_s32(v22);
    v24 = vextq_s8(v22, v22, 8uLL);
    v25 = vuzp2q_s32(vuzp1q_s32(v22, v22), v22);
    v25.i32[0] = 0;
    v24.i32[1] = 0;
    v23.i32[2] = 0;
    v26 = v22;
    v26.f32[0] = 3.0 * v22.f32[0];
    v27 = v22;
    v27.i32[1] = vmuls_lane_f32(3.0, *v22.f32, 1);
    v22.i32[2] = vmuls_lane_f32(3.0, v22, 2);
    v28 = vmulq_n_f32(v6, 15.0 / v11);
    v29 = vmulq_n_f32(v16, v28.f32[0]);
    v30 = vmulq_n_f32(v17, v28.f32[0]);
    v31 = vmulq_n_f32(v18, v28.f32[0]);
    v32 = vmulq_lane_f32(v16, *v28.f32, 1);
    v33 = vmulq_lane_f32(v17, *v28.f32, 1);
    v34 = vmulq_lane_f32(v18, *v28.f32, 1);
    v35 = vmulq_laneq_f32(v16, v28, 2);
    v36 = vmulq_laneq_f32(v17, v28, 2);
    v37 = vmulq_laneq_f32(v18, v28, 2);
    v38 = vaddq_f32(v26, v29);
    v39 = vaddq_f32(v23, v30);
    v40 = vaddq_f32(v24, v31);
    v41 = vaddq_f32(v23, v32);
    v42 = vaddq_f32(v25, v34);
    v43 = vaddq_f32(v24, v35);
    v44 = vaddq_f32(v25, v36);
    v45 = vaddq_f32(v22, v37);
    v46 = vmulq_f32(v12, a1[2]);
    v47 = vmulq_f32(v19, a1[3]);
    v48 = vmulq_f32(v20, a1[4]);
    v49 = vmulq_f32(v21, a1[5]);
    v50 = vmulq_f32(v38, a1[6]);
    v19.f32[0] = v50.f32[2] + vaddv_f32(*v50.f32);
    v51 = vmulq_f32(v39, a1[7]);
    v52 = vmulq_f32(v40, a1[8]);
    v53 = vmulq_f32(v41, a1[9]);
    v54 = vmulq_f32(vaddq_f32(v27, v33), a1[10]);
    *v53.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v53, v53, 8uLL), *&vextq_s8(v54, v54, 8uLL)), vadd_f32(vzip1_s32(*v53.i8, *v54.i8), vzip2_s32(*v53.i8, *v54.i8)));
    v55 = vmulq_f32(v42, a1[11]);
    v56 = vmulq_f32(v43, a1[12]);
    v57 = vmulq_f32(v44, a1[13]);
    *v56.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v56, v56, 8uLL), *&vextq_s8(v57, v57, 8uLL)), vadd_f32(vzip1_s32(*v56.i8, *v57.i8), vzip2_s32(*v56.i8, *v57.i8)));
    v58 = vmulq_f32(v45, a1[14]);
    v40.i32[0] = vdup_lane_s32(*v47.i8, 1).u32[0];
    v40.i32[1] = vaddv_f32(*v51.i8);
    *v38.f32 = vadd_f32(vzip1_s32(*v47.i8, *&vextq_s8(v51, v51, 8uLL)), *v40.f32);
    v47.i32[0] = vextq_s8(v47, v47, 8uLL).u32[0];
    v47.i32[1] = v19.i32[0];
    *v48.i8 = vadd_f32(vadd_f32(*v47.i8, *v38.f32), vadd_f32(vzip1_s32(*&vextq_s8(v48, v48, 8uLL), *&vextq_s8(v52, v52, 8uLL)), vadd_f32(vzip1_s32(*v48.i8, *v52.i8), vzip2_s32(*v48.i8, *v52.i8))));
    v52.i32[0] = vdup_lane_s32(*v49.i8, 1).u32[0];
    v52.i32[1] = vaddv_f32(*v55.i8);
    v47.i32[0] = vdup_lane_s32(*v46.i8, 1).u32[0];
    v47.i32[1] = vaddv_f32(*v58.i8);
    *v46.i8 = vadd_f32(vadd_f32(*v48.i8, vadd_f32(vzip1_s32(*&vextq_s8(v49, v49, 8uLL), vadd_f32(*v53.i8, vdup_lane_s32(*v53.i8, 1))), vadd_f32(vzip1_s32(*v49.i8, *&vextq_s8(v55, v55, 8uLL)), *v52.i8))), vadd_f32(vzip1_s32(*&vextq_s8(v46, v46, 8uLL), vadd_f32(*v56.i8, vdup_lane_s32(*v56.i8, 1))), vadd_f32(vzip1_s32(*v46.i8, *&vextq_s8(v58, v58, 8uLL)), *v47.i8)));
    return (*v46.i32 + vmuls_lane_f32(0.5, *v46.i8, 1)) / 12.566;
  }

  return result;
}

float64_t geom::anonymous namespace::approximate_winding_number<double>(float64x2_t *a1, float64x2_t *a2)
{
  v5 = a2[1];
  v6 = vsubq_f64(*a2, *a1);
  v7 = vsubq_f64(v5, a1[1]);
  v8 = vmulq_f64(v7, v7);
  v9 = v8.f64[0] + vaddvq_f64(vmulq_f64(v6, v6));
  result = 0.5;
  if (fabs(v9) > 0.000001)
  {
    v11 = sqrt(v9);
    v5.f64[0] = v9 * v11;
    v2.f64[0] = v9 * (v9 * v11);
    v4.f64[0] = v9 * v2.f64[0];
    v12 = vdupq_lane_s64(COERCE__INT64(v9 * v11), 0);
    v83 = vdivq_f64(v7, v12);
    v84 = vdivq_f64(v6, v12);
    v5.f64[0] = 1.0 / v5.f64[0];
    v13 = vmulq_f64(v7, v6);
    v14 = vmulq_n_f64(v6, v6.f64[0]);
    v15 = vmulq_laneq_f64(v7, v6, 1);
    v16 = vmulq_laneq_f64(v6, v6, 1);
    v17 = vmulq_n_f64(v6, v7.f64[0]);
    v3.f64[0] = -3.0 / v2.f64[0];
    v18 = vmulq_f64(v13, v3);
    v19 = vaddq_f64(*&v5.f64[0], vmulq_n_f64(v14, -3.0 / v2.f64[0]));
    v20.f64[0] = 0.0;
    v20.f64[1] = v5.f64[0];
    v21 = vmulq_f64(v15, v3);
    v22 = vaddq_f64(v20, vmulq_n_f64(v16, -3.0 / v2.f64[0]));
    v23 = vmulq_n_f64(v17, -3.0 / v2.f64[0]);
    v24 = vaddq_f64(v5, vmulq_f64(v8, v3));
    v25 = vdivq_f64(vnegq_f64(v7), v2);
    v26 = vdivq_f64(vnegq_f64(v6), vdupq_lane_s64(*&v2.f64[0], 0));
    v28.f64[1] = v26.f64[1];
    v27.f64[0] = v26.f64[0];
    v28.f64[0] = 3.0 * v26.f64[0];
    v27.f64[1] = vmuld_lane_f64(3.0, v26, 1);
    v29.f64[1] = v25.f64[1];
    v29.f64[0] = 3.0 * v25.f64[0];
    v4.f64[0] = 15.0 / v4.f64[0];
    v30 = vmulq_f64(v7, v4);
    v31 = vmulq_n_f64(v6, v4.f64[0]);
    v32 = vmulq_f64(v13, v31);
    v33 = vmulq_n_f64(v14, v31.f64[0]);
    v34 = vmulq_f64(v15, v31);
    v35 = vmulq_n_f64(v16, v31.f64[0]);
    v36 = vmulq_n_f64(v17, v31.f64[0]);
    v37 = vmulq_f64(v8, v31);
    v38 = vmulq_laneq_f64(v13, v31, 1);
    v39 = vmulq_laneq_f64(v14, v31, 1);
    v40 = vmulq_laneq_f64(v15, v31, 1);
    v41 = vmulq_laneq_f64(v16, v31, 1);
    v42 = vmulq_laneq_f64(v17, v31, 1);
    v43 = vmulq_laneq_f64(v8, v31, 1);
    v44 = vmulq_f64(v13, v30);
    v45 = vmulq_n_f64(v14, v30.f64[0]);
    v46 = vmulq_f64(v15, v30);
    v47 = vmulq_n_f64(v16, v30.f64[0]);
    v48 = vmulq_n_f64(v17, v30.f64[0]);
    v49 = vmulq_f64(v8, v30);
    v50 = vaddq_f64(v28, v33);
    v51 = vextq_s8(v26, v26, 8uLL);
    v52 = vaddq_f64(v51, v35);
    v53 = vaddq_f64(v51, v39);
    v54 = vaddq_f64(v18, 0);
    v55 = vaddq_f64(v21, 0);
    v56 = vaddq_f64(v23, 0);
    v57 = vaddq_f64(v34, 0);
    v58 = vaddq_f64(v38, 0);
    v59 = vaddq_f64(v27, v41);
    v60 = vaddq_f64(*&v25.f64[0], v36);
    v61 = vaddq_f64(*&v25.f64[0], v45);
    v62 = vaddq_f64(v25, v32);
    v63 = vaddq_f64(v25, v40);
    *&v51.f64[1] = vdupq_lane_s64(*&v25.f64[0], 0).u64[0];
    v51.f64[0] = 0.0;
    v64 = vaddq_f64(v51, v42);
    v65 = vaddq_f64(v51, v47);
    v66 = vaddq_f64(v26, v37);
    v67 = vaddq_f64(v26, v44);
    v68 = vaddq_f64(v26, v48);
    v69 = vdupq_laneq_s64(v26, 1);
    v70 = vaddq_f64(v69, v43);
    v71 = vaddq_f64(vzip1q_s64(vmulq_f64(v54, a2[6]), vmulq_f64(v55, a2[8])), vpaddq_f64(vmulq_f64(v19, a2[5]), vmulq_f64(v22, a2[7])));
    v72 = vaddq_f64(vzip1q_s64(vmulq_f64(v83, a2[4]), vmulq_f64(v24, a2[10])), vpaddq_f64(vmulq_f64(v84, a2[3]), vmulq_f64(v56, a2[9])));
    v73 = vaddq_f64(vaddq_f64(v71, vdupq_laneq_s64(v71, 1)), vdupq_laneq_s64(v72, 1));
    v74 = vaddq_f64(vzip1q_s64(vmulq_f64(v58, a2[18]), vmulq_f64(v63, a2[20])), vpaddq_f64(vmulq_f64(v53, a2[17]), vmulq_f64(v59, a2[19])));
    v75 = vmulq_f64(v65, a2[25]);
    v76 = vmulq_f64(v68, a2[27]);
    v77 = vzip1q_s64(vmulq_f64(v57, a2[14]), v75);
    v75.f64[0] = vaddvq_f64(vmulq_f64(v52, a2[13]));
    v78 = vdupq_lane_s64(*&vmulq_f64(vaddq_f64(v69, v46), a2[26]), 0);
    v78.f64[0] = vmulq_f64(v62, a2[12]).f64[0] + vaddvq_f64(vmulq_f64(v50, a2[11]));
    v79 = vaddq_f64(vaddq_f64(vzip1q_s64(vmulq_f64(v66, a2[16]), vmulq_f64(v67, a2[24])), vpaddq_f64(vmulq_f64(v60, a2[15]), vmulq_f64(v61, a2[23]))), vaddq_f64(v78, vaddq_f64(v77, v75)));
    v80 = vzip1q_s64(vmulq_f64(v70, a2[22]), v76);
    v76.f64[0] = vaddvq_f64(vmulq_f64(v64, a2[21]));
    v81 = vaddq_f64(v80, v76);
    v82 = vdupq_lane_s64(*&vmulq_f64(vaddq_f64(v29, v49), a2[28]), 0);
    *&v82.f64[0] = *&vaddq_f64(v74, vdupq_laneq_s64(v74, 1));
    return (vaddq_f64(v72, v73).f64[0] + vaddvq_f64(vaddq_f64(v79, vaddq_f64(v82, v81))) * 0.5) / 12.5663706;
  }

  return result;
}

uint64_t geom::point_tree<float,(unsigned char)3>::~point_tree(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (v2)
  {
    *(a1 + 256) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 224);
  if (v3)
  {
    *(a1 + 232) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 200);
  if (v4)
  {
    *(a1 + 208) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 176);
  if (v5)
  {
    *(a1 + 184) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 152);
  if (v6)
  {
    *(a1 + 160) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 128);
  if (v7)
  {
    *(a1 + 136) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 104);
  if (v8)
  {
    *(a1 + 112) = v8;
    operator delete(v8);
  }

  if (*(a1 + 96) == 1)
  {
    v9 = *(a1 + 80);
    if (v9)
    {
      MEMORY[0x25305E3D0](v9, 0x1000C80451B5BE8);
    }
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return a1;
}

uint64_t geom::point_tree<double,(unsigned char)3>::~point_tree(uint64_t a1)
{
  v2 = *(a1 + 312);
  if (v2)
  {
    *(a1 + 320) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 288);
  if (v3)
  {
    *(a1 + 296) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 264);
  if (v4)
  {
    *(a1 + 272) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 240);
  if (v5)
  {
    *(a1 + 248) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 216);
  if (v6)
  {
    *(a1 + 224) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 192);
  if (v7)
  {
    *(a1 + 200) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 168);
  if (v8)
  {
    *(a1 + 176) = v8;
    operator delete(v8);
  }

  if (*(a1 + 160) == 1)
  {
    v9 = *(a1 + 144);
    if (v9)
    {
      MEMORY[0x25305E3D0](v9, 0x1000C80E0EAB150);
    }
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  return a1;
}

uint64_t geom_query_exact_winding_number_3d(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v3 = *(a1 + 16);
  v5[0] = *a2;
  v5[1] = v2;
  return geom::query_exact_winding_number_3<double>(v3, v5);
}

uint64_t geom_query_approximate_winding_number_3d(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v3 = *(a1 + 16);
  v5[0] = *a2;
  v5[1] = v2;
  return geom::query_exact_winding_number_3<double>(v3, v5);
}

void geom_create_approximate_convex_decomposition_3f()
{
  v0 = geom_approximate_convex_decomposition_3f_obj_alloc();
  geom::acd<float>::acd((v0 + 16));
  geom::acd<float>::init();
}

void geom_create_approximate_convex_decomposition_3d()
{
  v0 = geom_approximate_convex_decomposition_3d_obj_alloc();
  geom::acd<float>::acd((v0 + 16));
  geom::acd<double>::init();
}

void geom_create_approximate_convex_decomposition_constrained_3f()
{
  v0 = geom_approximate_convex_decomposition_3f_obj_alloc();
  geom::acd<float>::acd((v0 + 16));
  geom::acd<float>::init();
}

void geom_create_approximate_convex_decomposition_constrained_3d()
{
  v0 = geom_approximate_convex_decomposition_3d_obj_alloc();
  geom::acd<float>::acd((v0 + 16));
  geom::acd<double>::init();
}

void geom_approximate_convex_decomposition_cluster_indices_3f(uint64_t a1, uint64_t a2)
{
  v3 = geom::collection_to_vector<float>(a2);

  geom::acd<float>::cluster_indices((a1 + 16), v3);
}

void geom_approximate_convex_decomposition_cluster_indices_3d(uint64_t a1, uint64_t a2)
{
  v3 = geom::collection_to_vector<float>(a2);

  geom::acd<double>::cluster_indices((a1 + 16), v3);
}

void geom_approximate_convex_decomposition_hull_for_cluster_3f(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v7 = geom::collection_to_vector<float>(a3);
  v8 = geom::collection_to_vector<float>(a4);

  geom::acd<float>::get_hull_of_cluster((a1 + 16), a2, v7, v8);
}

void geom_approximate_convex_decomposition_hull_for_cluster_3d(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v7 = geom::collection_to_vector<float>(a3);
  v8 = geom::collection_to_vector<float>(a4);

  geom::acd<double>::get_hull_of_cluster((a1 + 16), a2, v7, v8);
}

void geom_approximate_convex_decomposition_split_cluster_with_plane_3f(uint64_t a1, unsigned int a2, float32x4_t *a3)
{
  v5 = 0;
  v3 = a3[1];
  v4[0] = *a3;
  v4[1] = v3;
  geom::acd<float>::split_cluster_with_plane((a1 + 16), a2, v4);
}

void geom_approximate_convex_decomposition_split_cluster_with_plane_3d(uint64_t a1, unsigned int a2, float64x2_t *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = a3[1];
  v4[0] = *a3;
  v4[1] = v3;
  v4[2] = a3[2];
  geom::acd<double>::split_cluster_with_plane((a1 + 16), a2, v4);
}

double geom_create_approximate_convex_decomposition_opt_3f()
{
  v0 = geom_approximate_convex_decomposition_opt_3f_obj_alloc();
  *(v0 + 24) = 0x100000000;
  *(v0 + 16) = 20;
  result = 5.37764279e-19;
  *(v0 + 20) = 0x3C23D70A3E800000;
  return result;
}

double geom_create_approximate_convex_decomposition_opt_3d()
{
  v0 = geom_approximate_convex_decomposition_opt_3d_obj_alloc();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 20;
  result = 0.25;
  *(v0 + 24) = xmmword_2500C1FF0;
  *(v0 + 40) = 1;
  return result;
}

void geom::interpolating_curve<float>::build(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0;
  geom::interpolating_curve<float>::build_helper(a2, a1, 0);
}

void geom::interpolating_curve<float>::build_helper(uint64_t a1, void *a2, char a3)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 2);
  v10 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = (a1 + 72);
  v11 = v6;
  if (v8 != v10)
  {
    do
    {
      v8 = geom::interpolating_spline<float>::~interpolating_spline(v8 - 88);
    }

    while (v8 != v10);
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 2);
  }

  *(a1 + 80) = v10;
  std::vector<geom::interpolating_spline<float>>::reserve(v9, v11 - 1);
  *(a1 + 192) = 0;
  if (v6 < 2u)
  {
    v12 = 0;
    v15 = -1;
  }

  else
  {
    LOWORD(v12) = 0;
    v13 = 1;
    v14 = -1;
    do
    {
      if (*(*a2 + 20 * v13) != *(*a2 + 20 * v12))
      {
        v14 = v13 - 1;
        *&v104 = *a2 + 20 * v12;
        *(&v104 + 1) = (v13 - 1) - v12 + 1;
        geom::interpolating_curve<float>::append_spline(a1, &v104);
        LOWORD(v12) = v13;
      }

      ++v13;
    }

    while (v6 > v13);
    v15 = v14;
    v12 = v12;
  }

  if (v6 - 1 != v15)
  {
    *&v104 = *a2 + 20 * v12;
    *(&v104 + 1) = v6 - v12;
    geom::interpolating_curve<float>::append_spline(a1, &v104);
  }

  v17 = *(a1 + 72);
  v16 = *(a1 + 80);
  std::vector<unsigned short>::resize((a1 + 24), 0x2E8BA2E8BA2E8BA3 * ((v16 - v17) >> 3));
  if (v16 == v17)
  {
    std::vector<unsigned short>::resize(a1, 0);
  }

  else
  {
    v18 = 0;
    v19 = *v9;
    v20 = *(a1 + 24);
    if ((0x2E8BA2E8BA2E8BA3 * ((v16 - v17) >> 3)) <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = 0x2E8BA2E8BA2E8BA3 * ((v16 - v17) >> 3);
    }

    v22 = (v19 + 56);
    v23 = v21;
    do
    {
      v24 = *v22;
      v22 += 44;
      *v20++ = v18;
      v18 += v24;
      --v23;
    }

    while (v23);
    std::vector<unsigned short>::resize(a1, v18);
    v26 = 0;
    v27 = 0;
    v28 = *(a1 + 72);
    do
    {
      v29 = *(v28 + 88 * v26 + 56);
      if (*(v28 + 88 * v26 + 56))
      {
        v30 = *a1;
        do
        {
          v31 = (v27 + 1);
          *(v30 + 2 * v27) = v26;
          LODWORD(v27) = v27 + 1;
          --v29;
        }

        while (v29);
      }

      else
      {
        v31 = v27;
      }

      ++v26;
      v27 = v31;
    }

    while (v26 != v21);
  }

  v32 = *a2;
  *(a1 + 184) = *(*a2 + 4);
  v33 = a2[1];
  *(a1 + 188) = *(v33 - 16);
  if (a3)
  {
    LOWORD(v114[0]) = 512;
    v34 = v33 - v32;
    v114[1] = 0.001;
    v115 = 1;
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v35 = *(a1 + 96);
    v102 = (a1 + 96);
    v103 = a1;
    *(a1 + 104) = v35;
    *(a1 + 152) = 0;
    v36 = *(a1 + 120);
    v101 = (a1 + 120);
    *(a1 + 154) = 0;
    *(a1 + 128) = v36;
    if (v33 == v32)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = *(v32 + 4);
    }

    if (0xCCCCCCCCCCCCCCCDLL * (v34 >> 2) >= 2)
    {
      v38 = 1;
      do
      {
        v39 = v32 + 20 * v38;
        if (*v39 != *(v32 + 20 * (v38 - 1)))
        {
          goto LABEL_102;
        }

        v40 = *(v39 + 4);
        LOBYTE(v114[0]) = *v39 != 0;
        v109 = 0;
        v41 = v103;
        v110 = 0;
        *(&v104 + 1) = v104;
        *&v106 = *(&v105 + 1);
        v42 = v40;
        v25.f64[0] = (v40 + v37 * 2.0) * 0.333333333;
        v43 = v25.f64[0];
        v44 = (v37 + v40 * 2.0) * 0.333333333;
        v45 = v44;
        if (*(v103 + 192))
        {
          v46 = v37;
        }

        else
        {
          v47 = *(v103 + 72);
          v48 = 0x2E8BA2E8BA2E8BA3 * ((*(v103 + 80) - v47) >> 3);
          if ((v48 & 0xFFFE) != 0 && *(v103 + 184) < v37)
          {
            LOWORD(v48) = v48 - 1;
            if (*(v103 + 188) > v37)
            {
              for (i = 0; ; i = v50 + 1)
              {
                while (1)
                {
                  v50 = (i + v48) >> 1;
                  v51 = v47 + 88 * v50;
                  if (*(v51 + 48) <= v37)
                  {
                    break;
                  }

                  LOWORD(v48) = v50 - 1;
                }

                if (*(v51 + 52) > v37)
                {
                  break;
                }
              }

              LODWORD(v48) = (i + v48) >> 1;
            }
          }

          else
          {
            LOWORD(v48) = 0;
          }

          v52 = v48;
          v53 = v48;
          v54 = geom::interpolating_spline<float>::evaluate_length_at(v47 + 88 * v48, v37);
          if (v53)
          {
            v42 = *(*(v41 + 48) + 4 * (v52 - 1));
          }

          else
          {
            v42 = 0.0;
          }

          v44 = v42 + v54;
          v46 = v44;
          v55 = v103;
          if ((*(v103 + 192) & 1) == 0)
          {
            v56 = *(v103 + 72);
            v57 = 0x2E8BA2E8BA2E8BA3 * ((*(v103 + 80) - v56) >> 3);
            if ((v57 & 0xFFFE) != 0 && *(v103 + 184) < v43)
            {
              LOWORD(v57) = v57 - 1;
              if (*(v103 + 188) > v43)
              {
                for (j = 0; ; j = v59 + 1)
                {
                  while (1)
                  {
                    v59 = (j + v57) >> 1;
                    v60 = v56 + 88 * v59;
                    if (*(v60 + 48) <= v43)
                    {
                      break;
                    }

                    LOWORD(v57) = v59 - 1;
                  }

                  if (*(v60 + 52) > v43)
                  {
                    break;
                  }
                }

                LODWORD(v57) = (j + v57) >> 1;
              }
            }

            else
            {
              LOWORD(v57) = 0;
            }

            v61 = v57;
            v62 = v57;
            v63 = geom::interpolating_spline<float>::evaluate_length_at(v56 + 88 * v57, v43);
            v42 = v62 ? *(*(v55 + 48) + 4 * (v61 - 1)) : 0.0;
            v44 = v42 + v63;
            v43 = v44;
            v64 = v103;
            if ((*(v103 + 192) & 1) == 0)
            {
              v65 = *(v103 + 72);
              v66 = 0x2E8BA2E8BA2E8BA3 * ((*(v103 + 80) - v65) >> 3);
              if ((v66 & 0xFFFE) != 0 && *(v103 + 184) < v45)
              {
                LOWORD(v66) = v66 - 1;
                if (*(v103 + 188) > v45)
                {
                  for (k = 0; ; k = v68 + 1)
                  {
                    while (1)
                    {
                      v68 = (k + v66) >> 1;
                      v69 = v65 + 88 * v68;
                      if (*(v69 + 48) <= v45)
                      {
                        break;
                      }

                      LOWORD(v66) = v68 - 1;
                    }

                    if (*(v69 + 52) > v45)
                    {
                      break;
                    }
                  }

                  LODWORD(v66) = (k + v66) >> 1;
                }
              }

              else
              {
                LOWORD(v66) = 0;
              }

              v70 = v66;
              v71 = v66;
              v72 = geom::interpolating_spline<float>::evaluate_length_at(v65 + 88 * v66, v45);
              v42 = v71 ? *(*(v64 + 48) + 4 * (v70 - 1)) : 0.0;
              v44 = v42 + v72;
              v45 = v44;
              v73 = v103;
              if ((*(v103 + 192) & 1) == 0)
              {
                v93 = *(v103 + 72);
                v94 = 0x2E8BA2E8BA2E8BA3 * ((*(v103 + 80) - v93) >> 3);
                if ((v94 & 0xFFFE) != 0 && *(v103 + 184) < v40)
                {
                  LOWORD(v94) = v94 - 1;
                  if (*(v103 + 188) > v40)
                  {
                    for (m = 0; ; m = v96 + 1)
                    {
                      while (1)
                      {
                        v96 = (m + v94) >> 1;
                        v97 = v93 + 88 * v96;
                        if (*(v97 + 48) <= v40)
                        {
                          break;
                        }

                        LOWORD(v94) = v96 - 1;
                      }

                      if (*(v97 + 52) > v40)
                      {
                        break;
                      }
                    }

                    LODWORD(v94) = (m + v94) >> 1;
                  }
                }

                else
                {
                  LOWORD(v94) = 0;
                }

                v98 = v94;
                v99 = v94;
                v100 = geom::interpolating_spline<float>::evaluate_length_at(v93 + 88 * v94, v40);
                if (v99)
                {
                  v42 = *(*(v73 + 48) + 4 * (v98 - 1));
                }

                else
                {
                  v42 = 0.0;
                }

                v44 = v42 + v100;
                *&v44 = v44;
                goto LABEL_78;
              }
            }
          }
        }

        *&v44 = v40;
LABEL_78:
        *v116 = v37;
        *&v116[1] = v40;
        *&v116[2] = v46;
        *&v116[3] = v43;
        *&v116[4] = v45;
        v116[5] = LODWORD(v44);
        v117 = 0;
        v74 = v109;
        v75 = *(a1 + 104);
        v76 = *(a1 + 96);
        v77 = *(a1 + 152);
        if (v77)
        {
          v78 = v77 + 1;
        }

        else
        {
          v78 = 0;
        }

        v79 = v77 + v109;
        if (v77 + v109)
        {
          std::vector<float>::resize(v102, (3 * v79 + 1));
          *(a1 + 152) = v79;
          if ((*(a1 + 154) & 1) == 0)
          {
            std::vector<float>::resize(v101, v79 + 1);
          }
        }

        else
        {
          *(a1 + 104) = v76;
          *(a1 + 152) = 0;
          if ((*(a1 + 154) & 1) == 0)
          {
            *(a1 + 128) = *(a1 + 120);
          }
        }

        if (v74)
        {
          v80 = ((v75 - v76) >> 2);
          v81 = v78;
          v82 = v110;
          v83 = v109;
          v84 = v109;
          v85 = *(&v105 + 1);
          v86 = v104;
          begin = v101->__begin_;
          v88 = v102->__begin_;
          v89 = 3;
          v90 = 1;
          do
          {
            if (v80)
            {
              if (v82)
              {
                goto LABEL_90;
              }
            }

            else
            {
              if (v82)
              {
                if (v83)
                {
                  v92 = v107 + (((v108 - v107) / v84) * 0.0);
                }

                else
                {
                  v92 = v108;
                }
              }

              else
              {
                v92 = *v85;
              }

              *begin = v92;
              *v88 = *v86;
              ++v81;
              v80 = 1;
              if (v82)
              {
LABEL_90:
                if (v83 == v90)
                {
                  v91 = v108;
                }

                else
                {
                  v91 = v107 + (v90 * ((v108 - v107) / v84));
                }

                goto LABEL_100;
              }
            }

            v91 = v85[v90];
LABEL_100:
            begin[v81] = v91;
            v88[v80] = v86[(v89 - 2)];
            v88[(v80 + 1)] = v86[(v89 - 1)];
            v88[(v80 + 2)] = v86[v89];
            ++v81;
            v80 += 3;
            ++v90;
            v89 += 3;
            --v74;
          }

          while (v74);
        }

        v37 = v40;
LABEL_102:
        v38 = (v38 + 1);
        v32 = *a2;
        v34 = a2[1] - *a2;
      }

      while (0xCCCCCCCCCCCCCCCDLL * (v34 >> 2) > v38);
    }

    *(a1 + 192) = 1;
    *(a1 + 184) = *(v32 + 4);
    *(a1 + 188) = *(v32 + v34 - 16);
    geom::interpolating_spline<float>::~interpolating_spline(&v104);
  }
}

void geom::interpolating_curve<float>::build_arc_length_parameterized(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0;
  geom::interpolating_curve<float>::build_helper(a2, a1, 1);
}

float geom::interpolating_curve<float>::evaluate_at(uint64_t a1, float a2)
{
  if (*(a1 + 192) == 1)
  {
    span = geom::interpolating_spline<float>::find_span(a1 + 96, a2);
    v4 = (*(a1 + 96) + 4 * (3 * span));
    a2 = (*v4 * ((1.0 - *(&span + 1)) * ((1.0 - *(&span + 1)) * (1.0 - *(&span + 1))))) + v4[1] * (((1.0 - *(&span + 1)) * (1.0 - *(&span + 1))) * 3.0 * *(&span + 1)) + v4[2] * ((1.0 - *(&span + 1)) * 3.0 * (*(&span + 1) * *(&span + 1))) + (v4[3] * ((*(&span + 1) * *(&span + 1)) * *(&span + 1)));
  }

  v5 = *(a1 + 72);
  v6 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 80) - v5) >> 3);
  if ((v6 & 0xFFFE) != 0 && *(a1 + 184) < a2)
  {
    LOWORD(v6) = v6 - 1;
    if (*(a1 + 188) > a2)
    {
      for (i = 0; ; i = v8 + 1)
      {
        while (1)
        {
          v8 = (i + v6) >> 1;
          v9 = v5 + 88 * v8;
          if (*(v9 + 48) <= a2)
          {
            break;
          }

          LOWORD(v6) = v8 - 1;
        }

        if (*(v9 + 52) > a2)
        {
          break;
        }
      }

      LODWORD(v6) = (i + v6) >> 1;
    }
  }

  else
  {
    LOWORD(v6) = 0;
  }

  v10 = (v5 + 88 * v6);
  v11 = geom::interpolating_spline<float>::find_span(v10, a2);
  v12 = (*v10 + 4 * (3 * v11));
  return (*v12 * ((1.0 - *(&v11 + 1)) * ((1.0 - *(&v11 + 1)) * (1.0 - *(&v11 + 1))))) + v12[1] * (((1.0 - *(&v11 + 1)) * (1.0 - *(&v11 + 1))) * 3.0 * *(&v11 + 1)) + v12[2] * ((1.0 - *(&v11 + 1)) * 3.0 * (*(&v11 + 1) * *(&v11 + 1))) + (v12[3] * ((*(&v11 + 1) * *(&v11 + 1)) * *(&v11 + 1)));
}

uint64_t geom::interpolating_curve<float>::find_spline_for_parameter(uint64_t a1, float a2)
{
  v2 = *(a1 + 72);
  v3 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 80) - v2) >> 3);
  if ((v3 & 0xFFFE) != 0 && *(a1 + 184) < a2)
  {
    LOWORD(v3) = v3 - 1;
    if (*(a1 + 188) > a2)
    {
      for (i = 0; ; i = v5 + 1)
      {
        while (1)
        {
          v5 = (i + v3) >> 1;
          v6 = v2 + 88 * v5;
          if (*(v6 + 48) <= a2)
          {
            break;
          }

          LOWORD(v3) = v5 - 1;
        }

        if (*(v6 + 52) > a2)
        {
          break;
        }
      }

      LODWORD(v3) = (i + v3) >> 1;
    }
  }

  else
  {
    LOWORD(v3) = 0;
  }

  return v2 + 88 * v3;
}

unint64_t geom::interpolating_curve<float>::evaluate_tangent_at(uint64_t a1, float a2)
{
  if (*(a1 + 192) == 1)
  {
    span = geom::interpolating_spline<float>::find_span(a1 + 96, a2);
    v4 = (*(a1 + 96) + 4 * (3 * span));
    a2 = (*v4 * ((1.0 - *(&span + 1)) * ((1.0 - *(&span + 1)) * (1.0 - *(&span + 1))))) + v4[1] * (((1.0 - *(&span + 1)) * (1.0 - *(&span + 1))) * 3.0 * *(&span + 1)) + v4[2] * ((1.0 - *(&span + 1)) * 3.0 * (*(&span + 1) * *(&span + 1))) + (v4[3] * ((*(&span + 1) * *(&span + 1)) * *(&span + 1)));
    v5 = *(a1 + 72);
    v6 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 80) - v5) >> 3);
    if ((v6 & 0xFFFE) != 0 && *(a1 + 184) < a2)
    {
      LOWORD(v6) = v6 - 1;
      if (*(a1 + 188) > a2)
      {
        for (i = 0; ; i = v8 + 1)
        {
          while (1)
          {
            v8 = (i + v6) >> 1;
            v9 = v5 + 88 * v8;
            if (*(v9 + 48) <= a2)
            {
              break;
            }

            LOWORD(v6) = v8 - 1;
          }

          if (*(v9 + 52) > a2)
          {
            break;
          }
        }

        LODWORD(v6) = (i + v6) >> 1;
      }
    }

    else
    {
      LOWORD(v6) = 0;
    }
  }

  else
  {
    v5 = *(a1 + 72);
    v6 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 80) - v5) >> 3);
    if ((v6 & 0xFFFE) != 0 && *(a1 + 184) < a2)
    {
      LOWORD(v6) = v6 - 1;
      if (*(a1 + 188) > a2)
      {
        for (j = 0; ; j = v11 + 1)
        {
          while (1)
          {
            v11 = (j + v6) >> 1;
            v12 = v5 + 88 * v11;
            if (*(v12 + 48) <= a2)
            {
              break;
            }

            LOWORD(v6) = v11 - 1;
          }

          if (*(v12 + 52) > a2)
          {
            break;
          }
        }

        LODWORD(v6) = (j + v6) >> 1;
      }
    }

    else
    {
      LOWORD(v6) = 0;
    }
  }

  v13 = (v5 + 88 * v6);
  result = geom::interpolating_spline<float>::find_span(v13, a2);
  v15 = (*v13 + 4 * (3 * result));
  v16 = ((v15[1] - *v15) * ((1.0 - *(&result + 1)) * (1.0 - *(&result + 1)))) + (v15[2] - v15[1]) * (((1.0 - *(&result + 1)) + (1.0 - *(&result + 1))) * *(&result + 1)) + ((*(&result + 1) * *(&result + 1)) * (v15[3] - v15[2]));
  return result;
}

float geom::interpolating_curve<float>::evaluate_length_at(uint64_t a1, float result)
{
  if ((*(a1 + 192) & 1) == 0)
  {
    v3 = *(a1 + 72);
    v4 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 80) - v3) >> 3);
    if ((v4 & 0xFFFE) != 0 && *(a1 + 184) < result)
    {
      LOWORD(v4) = v4 - 1;
      if (*(a1 + 188) > result)
      {
        for (i = 0; ; i = v6 + 1)
        {
          while (1)
          {
            v6 = (i + v4) >> 1;
            v7 = v3 + 88 * v6;
            if (*(v7 + 48) <= result)
            {
              break;
            }

            LOWORD(v4) = v6 - 1;
          }

          if (*(v7 + 52) > result)
          {
            break;
          }
        }

        LODWORD(v4) = (i + v4) >> 1;
      }
    }

    else
    {
      LOWORD(v4) = 0;
    }

    v8 = v4;
    v9 = v4;
    v10 = geom::interpolating_spline<float>::evaluate_length_at(v3 + 88 * v4, result);
    if (v9)
    {
      v11 = *(*(a1 + 48) + 4 * (v8 - 1));
    }

    else
    {
      v11 = 0.0;
    }

    return v11 + v10;
  }

  return result;
}

uint64_t geom::interpolating_curve<float>::find_spline_index_for_parameter(uint64_t a1, float a2)
{
  v2 = *(a1 + 72);
  v3 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 80) - v2) >> 3);
  if ((v3 & 0xFFFE) != 0 && *(a1 + 184) < a2)
  {
    LOWORD(v3) = v3 - 1;
    if (*(a1 + 188) > a2)
    {
      for (i = 0; ; i = v5 + 1)
      {
        while (1)
        {
          v5 = (i + v3) >> 1;
          v6 = v2 + 88 * v5;
          if (*(v6 + 48) <= a2)
          {
            break;
          }

          LOWORD(v3) = v5 - 1;
        }

        if (*(v6 + 52) > a2)
        {
          break;
        }
      }

      LODWORD(v3) = (i + v3) >> 1;
    }
  }

  else
  {
    LOWORD(v3) = 0;
  }

  return v3;
}

float geom::interpolating_spline<float>::evaluate_length_at(uint64_t a1, float a2)
{
  span = geom::interpolating_spline<float>::find_span(a1, a2);
  v5 = span;
  v6 = *(a1 + 64);
  if (*(a1 + 72) == v6)
  {
    v8 = span;
    if (span)
    {
      v9 = 0;
      v7 = 0.0;
      do
      {
        v7 = v7 + geom::interpolating_spline<float>::evaluate_span_length(a1, v9++);
      }

      while (v8 != v9);
      goto LABEL_9;
    }
  }

  else if (span)
  {
    v7 = *(v6 + 4 * span - 4);
    goto LABEL_9;
  }

  v7 = 0.0;
LABEL_9:
  if (*(a1 + 58) == 1)
  {
    v10 = *(a1 + 56);
    if (v10 == v5)
    {
      v11 = *(a1 + 52);
    }

    else
    {
      v11 = *(a1 + 48) + (v5 * ((*(a1 + 52) - *(a1 + 48)) / v10));
    }
  }

  else
  {
    v11 = *(*(a1 + 24) + 4 * v5);
  }

  return v7 + geom::interpolating_spline<float>::evaluate_length_betweeen(a1, v11, a2);
}

float geom::interpolating_curve<float>::evaluate_total_length(uint64_t a1)
{
  if (*(a1 + 192) == 1)
  {
    v1 = *(a1 + 152);
    if (*(a1 + 154) == 1)
    {
      if (*(a1 + 152))
      {
        return *(a1 + 148);
      }

      else
      {
        return *(a1 + 144) + (((*(a1 + 148) - *(a1 + 144)) / 0.0) * 65535.0);
      }
    }

    else
    {
      if (!*(a1 + 152))
      {
        v1 = 0xFFFF;
      }

      return *(*(a1 + 120) + 4 * v1);
    }
  }

  else
  {
    v3 = *(a1 + 80) - *(a1 + 72);
    if (v3)
    {
      return *(*(a1 + 48) + 0x2E8BA2E8BA2E8BA3 * (v3 >> 1) - 4);
    }

    else
    {
      return 0.0;
    }
  }
}

void geom::interpolating_curve<float>::span_knots(uint64_t a1, unsigned int a2, float *a3, float *a4, double a5, double a6, float a7)
{
  v9 = *(*a1 + 2 * a2);
  v10 = a2 - *(*(a1 + 24) + 2 * v9);
  if (*(a1 + 192) == 1)
  {
    if (*(*a1 + 2 * a2))
    {
      v11 = *(*(a1 + 48) + 4 * (v9 - 1));
    }

    else
    {
      v11 = 0.0;
    }

    v18 = *(a1 + 72) + 88 * *(*a1 + 2 * a2);
    if (*(v18 + 58))
    {
      v19 = *(v18 + 48);
      LOWORD(a7) = *(v18 + 56);
      v20 = (*(v18 + 52) - v19) / LODWORD(a7);
      v21 = v19 + (v10 * v20);
      v22 = v20 + v21;
    }

    else
    {
      v23 = (*(v18 + 24) + 4 * v10);
      v21 = *v23;
      v22 = v23[1];
    }

    *a3 = v11 + geom::interpolating_spline<float>::evaluate_length_at(v18, v21);
    v16 = v11 + geom::interpolating_spline<float>::evaluate_length_at(*(a1 + 72) + 88 * v9, v22);
  }

  else
  {
    v12 = *(a1 + 72) + 88 * *(*a1 + 2 * a2);
    if (*(v12 + 58))
    {
      v13 = *(v12 + 48);
      LOWORD(a7) = *(v12 + 56);
      v14 = (*(v12 + 52) - v13) / LODWORD(a7);
      v15 = v13 + ((a2 - *(*(a1 + 24) + 2 * v9)) * v14);
      *a3 = v15;
      v16 = v14 + v15;
    }

    else
    {
      v17 = *(v12 + 24) + 4 * v10;
      *a3 = *v17;
      v16 = *(v17 + 4);
    }
  }

  *a4 = v16;
}

uint64_t geom::interpolating_curve<float>::calculate_monomial_basis_for_span(void *a1, unsigned int a2, float *a3)
{
  v3 = (*(a1[9] + 88 * *(*a1 + 2 * a2)) + 4 * (3 * (a2 - *(a1[3] + 2 * *(*a1 + 2 * a2)))));
  v4 = *v3;
  *a3 = *v3;
  a3[1] = (v3[1] - v4) * 3.0;
  v5 = (*v3 + v3[1] * -2.0 + v3[2]) * 3.0;
  a3[2] = v5;
  v6 = v3[3] + (v3[1] - v3[2]) * 3.0 - *v3;
  a3[3] = v6;
  v7 = fabsf(v5);
  if (fabsf(v6) > 0.00001 || v7 > 0.00001)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t geom::interpolating_curve<float>::calculate_bezier_basis_for_span(void *a1, unsigned int a2, float *a3)
{
  v3 = (*(a1[9] + 88 * *(*a1 + 2 * a2)) + 4 * (3 * (a2 - *(a1[3] + 2 * *(*a1 + 2 * a2)))));
  v4 = *v3;
  v5 = v3[1];
  v6 = (v5 - *v3) * 3.0;
  v7 = *v3;
  v8 = v3[2];
  v9 = (v7 + v5 * -2.0 + v8) * 3.0;
  v10 = v3[3] + (v5 - v8) * 3.0 - v7;
  if (fabsf(v9) > 0.00001 || fabsf(v10) > 0.00001)
  {
    v11 = v4 + (v6 * 0.33333);
    v13 = (v4 + (v6 * 0.66667)) + (v9 * 0.33333);
    v14 = ((v4 + v6) + v9) + v10;
    result = 4;
  }

  else
  {
    v11 = v4 + v6;
    result = 2;
    v13 = 0.0;
    v14 = 0.0;
  }

  *a3 = v4;
  a3[1] = v11;
  a3[2] = v13;
  a3[3] = v14;
  return result;
}

void *std::vector<geom::interpolating_spline<float>>::reserve(void *result, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x2E8BA2E8BA2E8BBLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::interpolating_spline<float>>>(result, a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

uint64_t geom::interpolating_curve<float>::append_spline(uint64_t a1, int **a2)
{
  memset(&v14, 0, sizeof(v14));
  memset(v12, 0, sizeof(v12));
  v3 = **a2;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      geom::interpolating_curve<float>::build_catmull_rom_spline(a2, v11);
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_11;
      }

      geom::interpolating_curve<float>::build_natural_spline(a2, v11);
    }
  }

  else if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_11;
    }

    geom::interpolating_curve<float>::build_hermite_spline(a2, v11);
  }

  else
  {
    geom::interpolating_curve<float>::build_linear_spline(a2, v11);
  }

  geom::interpolating_spline<float>::operator=(v12, v11);
  geom::interpolating_spline<float>::~interpolating_spline(v11);
LABEL_11:
  v4 = __sz;
  std::vector<float>::resize(&v14, __sz);
  if (v4)
  {
    v5 = 0;
    v6 = 0.0;
    do
    {
      v6 = v6 + geom::interpolating_spline<float>::evaluate_span_length(v12, v5);
      *&v14.__begin_[v5++] = v6;
    }

    while (v4 != v5);
  }

  v7 = geom::interpolating_spline<float>::evaluate_total_length(v12);
  v8 = *(a1 + 80) - *(a1 + 72);
  if (v8)
  {
    v9 = *(*(a1 + 48) + 0x2E8BA2E8BA2E8BA3 * (v8 >> 1) - 4);
  }

  else
  {
    v9 = 0.0;
  }

  *v11 = v7 + v9;
  std::vector<float>::push_back[abi:nn200100]((a1 + 48), v11);
  std::vector<geom::interpolating_spline<float>>::push_back[abi:nn200100]((a1 + 72), v12);
  return geom::interpolating_spline<float>::~interpolating_spline(v12);
}

void std::vector<unsigned short>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<unsigned short>::__append(a1, a2 - v2);
  }
}

void geom::interpolating_curve<float>::build_linear_spline(_WORD *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  v5 = v4 - 1;
  a2[9] = 0;
  a2[10] = 0;
  a2[8] = 0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  if (v4 == 1)
  {
    *(a2 + 28) = 0;
    if ((*(a2 + 58) & 1) == 0)
    {
      a2[4] = 0;
    }
  }

  else
  {
    std::vector<float>::resize(a2, (3 * v5 + 1));
    *(a2 + 28) = v5;
    if ((*(a2 + 58) & 1) == 0)
    {
      std::vector<float>::resize(a2 + 1, v5 + 1);
    }
  }

  memset(&v20, 0, sizeof(v20));
  v6 = v5;
  std::vector<float>::resize(&v20, v5 + 1);
  v7 = *a1;
  begin = v20.__begin_;
  *v20.__begin_ = *(*a1 + 4);
  v9 = *a2;
  if (v5)
  {
    LOWORD(v10) = 0;
    v11 = (begin + 4);
    v12 = (v7 + 28);
    do
    {
      v13 = *(v12 - 1);
      *v11 = v13;
      v14 = *(v12 - 5);
      v15 = (v13 - *(v11 - 1)) * (*v12 - v14);
      *(v9 + 4 * v10) = v14;
      v16 = v15 / 3.0;
      v17 = v16 + v14;
      *(v9 + 4 * (v10 + 1)) = v17;
      v18 = v10 + 2;
      LOWORD(v10) = v10 + 3;
      v19 = *v12;
      v12 += 5;
      *&v16 = v19 - v16;
      *(v9 + 4 * v18) = LODWORD(v16);
      ++v11;
      --v6;
    }

    while (v6);
    v10 = v10;
  }

  else
  {
    v10 = 0;
  }

  *(v9 + 4 * v10) = *(v7 + 20 * *(a1 + 1) - 12);
  *(a2 + 58) = 0;
  if (a2 + 3 != &v20)
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(a2 + 3, begin, v20.__end_, (v20.__end_ - begin) >> 2);
    begin = v20.__begin_;
  }

  *(a2 + 12) = *begin;
  *(a2 + 13) = *(v20.__end_ - 1);
  v20.__end_ = begin;
  operator delete(begin);
}

uint64_t geom::interpolating_spline<float>::operator=(uint64_t a1, uint64_t a2)
{
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1, a2);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1 + 24, (a2 + 24));
  v4 = *(a2 + 48);
  *(a1 + 55) = *(a2 + 55);
  *(a1 + 48) = v4;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1 + 64, (a2 + 64));
  return a1;
}

void geom::interpolating_curve<float>::build_catmull_rom_spline(void *a1@<X1>, uint64_t *a2@<X8>)
{
  a2[8] = 0;
  a2[9] = 0;
  a2[10] = 0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  memset(&v68, 0, sizeof(v68));
  memset(&v67, 0, sizeof(v67));
  v4 = a1[1];
  v5 = v4 - 1;
  v6 = (v4 + 2);
  std::vector<float>::resize(&v68, v6);
  std::vector<float>::resize(&v67, v6);
  v7 = *a1;
  v8 = -(*(*a1 + 28) - *(*a1 + 8) * 2.0);
  begin = v68.__begin_;
  *v68.__begin_ = v8;
  v10 = v67.__begin_;
  *v67.__begin_ = 0;
  *(v10 + 1) = sqrtf(vabds_f32(*(v7 + 28), *(v7 + 8)));
  if (v4 == 1)
  {
    v12 = 0;
  }

  else
  {
    v11 = (v10 + 2);
    v12 = (v4 - 1);
    v13 = (begin + 1);
    v14 = (v7 + 28);
    v15 = v12;
    do
    {
      v16 = *(v14 - 5);
      *v13++ = v16;
      v17 = *v14;
      v14 += 5;
      *v11 = *(v11 - 1) + sqrtf(vabds_f32(v17, v16));
      ++v11;
      --v15;
    }

    while (v15);
  }

  v18 = *(v7 + 20 * v12 + 8);
  v19 = 4 * v6 - 8;
  *(begin + v19) = v18;
  v20 = -(*&begin[v6 - 3] - v18 * 2.0);
  v21 = 4 * v6 - 4;
  *(begin + v21) = v20;
  *(v10 + v21) = *(v10 + v19) + sqrtf(vabds_f32(*(v7 + 20 * (v4 - 2) + 28), *(v7 + 20 * (v4 - 2) + 8)));
  if (v4 == 1)
  {
    v23 = 0;
    a2[1] = 0;
    *(a2 + 28) = 0;
    if ((*(a2 + 58) & 1) == 0)
    {
      v23 = 0;
      a2[4] = 0;
    }
  }

  else
  {
    std::vector<float>::resize(a2, (3 * v5 + 1));
    *(a2 + 28) = v5;
    if ((*(a2 + 58) & 1) == 0)
    {
      std::vector<float>::resize(a2 + 1, v12 + 1);
    }

    v22 = 0;
    LOWORD(v23) = 0;
    v24 = *a2;
    v25 = v67.__begin_;
    v26 = v68.__begin_;
    do
    {
      v27 = *&v25[v22];
      v28 = v22 + 2;
      v29 = *&v26[v22];
      v30 = v22 + 1;
      v31 = *&v25[(v22 + 1)];
      v32 = v22 + 3;
      v33 = *&v25[v28];
      v34 = v33 - v31;
      v35 = *&v25[v32];
      v36 = 1.0 / (v31 - v27);
      v37 = 1.0 / (v33 - v27);
      v38 = 1.0 / (v33 - v31);
      v39 = v35 - v31;
      v40 = 1.0 / (v35 - v31);
      v41 = v35 - v33;
      v42 = 1.0 / (v35 - v33);
      v43 = *&v26[v30];
      v44 = v36 * (((v31 - v31) * v29) - ((v27 - v31) * v43));
      v45 = *&v26[v28];
      v46 = v38 * (((v33 - v31) * v43) - ((v31 - v31) * v45));
      v47 = *&v26[v32];
      v48 = v42 * ((v39 * v45) - ((v33 - v31) * v47));
      v49 = v36 * (v43 - v29);
      v50 = v38 * (v45 - v43);
      v51 = v42 * (v47 - v45);
      v52 = (v33 - v31) * (v38 * ((((v40 * ((v39 * v46) - ((v31 - v31) * v48))) - (v37 * (((v33 - v31) * v44) - ((v27 - v31) * v46)))) + ((v33 - v31) * (v37 * (((v46 - v44) + ((v33 - v31) * v49)) - ((v27 - v31) * v50))))) - ((v31 - v31) * (v40 * (((v48 - v46) + (v39 * v50)) - ((v31 - v31) * v51))))));
      v53 = v27 - v33;
      v54 = v31 - v33;
      v55 = v33 - v33;
      v56 = v36 * ((v54 * v29) - (v53 * v43));
      v57 = v38 * ((v55 * v43) - (v54 * v45));
      *(v24 + 4 * v23) = v43;
      v58 = v23 + 2;
      v59 = v52 / 3.0 + v43;
      *(v24 + 4 * (v23 + 1)) = v59;
      LOWORD(v23) = v23 + 3;
      v60 = *&v26[v28] - (v34 * (v38 * ((((v40 * ((v41 * v57) - (v54 * (v42 * ((v41 * v45) - (v55 * v47)))))) - (v37 * ((v55 * v56) - (v53 * v57)))) + (v55 * (v37 * (((v57 - v56) + (v55 * v49)) - (v53 * v50))))) - (v54 * (v40 * ((((v42 * ((v41 * v45) - (v55 * v47))) - v57) + (v41 * v50)) - (v54 * v51))))))) / 3.0;
      *(v24 + 4 * v58) = v60;
      v22 = v30;
    }

    while (v12 != v30);
    v23 = v23;
  }

  v61 = a1[1];
  *(*a2 + 4 * v23) = *(*a1 + 20 * v12 + 8);
  v65 = 0;
  v66 = 0;
  __p = 0;
  if (v61)
  {
    std::vector<float>::__vallocate[abi:nn200100](&__p, v61);
  }

  v62 = 0;
  v63 = 0;
  *(a2 + 58) = 0;
  if (a2 + 3 != &__p)
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(a2 + 3, 0, 0, 0);
    v62 = __p;
    v63 = v65;
  }

  *(a2 + 12) = *v62;
  *(a2 + 13) = *(v63 - 1);
  v65 = v62;
  operator delete(v62);
  if (v67.__begin_)
  {
    v67.__end_ = v67.__begin_;
    operator delete(v67.__begin_);
  }

  if (v68.__begin_)
  {
    v68.__end_ = v68.__begin_;
    operator delete(v68.__begin_);
  }
}

void geom::interpolating_curve<float>::build_natural_spline(void *a1@<X1>, uint64_t *a2@<X8>)
{
  memset(&v75, 0, sizeof(v75));
  memset(&v74, 0, sizeof(v74));
  memset(&v73, 0, sizeof(v73));
  memset(&v72, 0, sizeof(v72));
  v4 = a1[1];
  memset(v71, 0, sizeof(v71));
  if (v4)
  {
    std::vector<float>::__vallocate[abi:nn200100](v71, v4);
  }

  v5 = v71[0];
  std::vector<float>::resize(&v75, 0);
  std::vector<float>::resize(&v74, 0);
  std::vector<float>::resize(&v73, 0);
  std::vector<float>::resize(&v72, 0);
  v6 = -1;
  begin = v75.__begin_;
  *(v75.__begin_ - 1) = 0;
  *begin = 0;
  v8 = v72.__begin_;
  *(v72.__begin_ - 1) = 1065353216;
  *v8 = 1065353216;
  v9 = v74.__begin_;
  *(v74.__begin_ - 1) = 0;
  *v9 = 0;
  v10 = v73.__begin_;
  *(v73.__begin_ - 1) = 0;
  *v10 = 0;
  v11 = -2;
  v12 = (*a1 + 28);
  v13 = (v10 + 1);
  v14 = (v9 + 1);
  v15 = (v8 + 1);
  v16 = (v5 + 4);
  v17 = (begin + 1);
  v18 = v12;
  do
  {
    v19 = *v16;
    v20 = *v16 - *(v16 - 1);
    v21 = v16[1];
    ++v16;
    v22 = v21 - v19;
    *v17++ = v20;
    *v15++ = (v20 + v22) + (v20 + v22);
    *v14++ = v22;
    v23 = v18[5];
    v18 += 5;
    v24 = -3.0 / v20 * (*v12 - *(v12 - 5)) + 3.0 / v22 * (v23 - *v12);
    *v13++ = v24;
    v12 = v18;
    --v11;
  }

  while (v11);
  v25 = v72.__end_ - v8;
  v26 = ((v72.__end_ - v8) >> 2) - 1;
  *v9 = *v9 / *v8;
  *v10 = *v10 / *v8;
  if (v26 > 1)
  {
    v27 = v26 - 1;
    v28 = (v8 + 1);
    v29 = (begin + 1);
    v30 = (v10 + 1);
    v31 = (v9 + 1);
    do
    {
      v32 = *(v31 - 1);
      *v31 = *v31 / (*v28 - (*v29 * v32));
      ++v31;
      v33 = *v29++;
      v34 = v33;
      v35 = *v30 - (v33 * *(v30 - 1));
      v36 = *v28++;
      *v30++ = v35 / (v36 - (v34 * v32));
      --v27;
    }

    while (v27);
  }

  v37 = (*&v10[v26] - (*&begin[v26] * *(v10 + (((v25 << 30) - 0x200000000) >> 30)))) / (*&v8[v26] - (*&begin[v26] * *(v9 + (((v25 << 30) - 0x200000000) >> 30))));
  *&v10[v26] = v37;
  if (v26 >= 1)
  {
    v38 = v26 - 1;
    do
    {
      v37 = *&v10[v38] - (*&v9[v38] * v37);
      *&v10[v38] = v37;
      v39 = v38-- + 1;
    }

    while (v39 > 1);
  }

  v40 = (*a1 + 28);
  v41 = (v5 + 4);
  v42 = (v10 + 1);
  do
  {
    v43 = (*v41 - *(v41 - 1));
    v44 = v43 / -3.0 * (*v42 + *(v42 - 1) * 2.0) + 1.0 / v43 * (*v40 - *(v40 - 5));
    *v9++ = v44;
    *&v43 = 1.0 / (v43 * 3.0) * (*v42 - *(v42 - 1));
    *v8++ = LODWORD(v43);
    v40 += 5;
    ++v41;
    ++v42;
    --v6;
  }

  while (v6);
  a2[8] = 0;
  a2[9] = 0;
  a2[10] = 0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  v45 = *(a1 + 4);
  v46 = v45 - 1;
  if (v45 == 1)
  {
    *(a2 + 28) = 0;
    if ((*(a2 + 58) & 1) == 0)
    {
      a2[4] = 0;
    }

    v52 = 0;
    v47 = 0;
    v48 = *a2;
  }

  else
  {
    std::vector<float>::resize(a2, (3 * v46 + 1));
    *(a2 + 28) = v46;
    if ((*(a2 + 58) & 1) == 0)
    {
      std::vector<float>::resize(a2 + 1, v46 + 1);
    }

    LOWORD(v47) = 0;
    v48 = *a2;
    v49 = v74.__begin_;
    v50 = v73.__begin_;
    v51 = v72.__begin_;
    v52 = v46;
    v53 = (*a1 + 28);
    v54 = (v5 + 4);
    v55 = v46;
    do
    {
      v56 = *(v54 - 1);
      v57 = *(v53 - 5);
      v58 = *v53;
      v53 += 5;
      v59 = v58;
      v60 = *v49++;
      v61 = v60;
      v62 = *v50++;
      v63 = v62;
      v64 = *v51++;
      v65 = (*v54 - v56);
      v66 = (v61 + (v56 - v56) * ((v56 - v56) * 3.0 * v64 + v63 * 2.0)) * v65;
      *&v65 = (v61 + v65 * (v65 * 3.0 * v64 + v63 * 2.0)) * v65;
      *(v48 + 4 * v47) = v57;
      v67 = v47 + 2;
      v68 = (v47 + 1);
      LOWORD(v47) = v47 + 3;
      v69 = v66 / 3.0 + v57;
      *(v48 + 4 * v68) = v69;
      v70 = v59 - *&v65 / 3.0;
      *(v48 + 4 * v67) = v70;
      ++v54;
      --v55;
    }

    while (v55);
    v47 = v47;
  }

  *(v48 + 4 * v47) = *(*a1 + 20 * v52 + 8);
  *(a2 + 58) = 0;
  std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(a2 + 3, v5, 0, -v5 >> 2);
  *(a2 + 12) = *v5;
  *(a2 + 13) = MEMORY[0xFFFFFFFFFFFFFFFC];
  operator delete(v5);
  if (v72.__begin_)
  {
    v72.__end_ = v72.__begin_;
    operator delete(v72.__begin_);
  }

  if (v73.__begin_)
  {
    v73.__end_ = v73.__begin_;
    operator delete(v73.__begin_);
  }

  if (v74.__begin_)
  {
    v74.__end_ = v74.__begin_;
    operator delete(v74.__begin_);
  }

  if (v75.__begin_)
  {
    v75.__end_ = v75.__begin_;
    operator delete(v75.__begin_);
  }
}

void geom::interpolating_curve<float>::build_hermite_spline(_WORD *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  v5 = v4 - 1;
  a2[9] = 0;
  a2[10] = 0;
  a2[8] = 0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  if (v4 == 1)
  {
    *(a2 + 28) = 0;
    if ((*(a2 + 58) & 1) == 0)
    {
      a2[4] = 0;
    }
  }

  else
  {
    std::vector<float>::resize(a2, (3 * v5 + 1));
    *(a2 + 28) = v5;
    if ((*(a2 + 58) & 1) == 0)
    {
      std::vector<float>::resize(a2 + 1, v5 + 1);
    }
  }

  memset(&v21, 0, sizeof(v21));
  v6 = v5;
  std::vector<float>::resize(&v21, v5 + 1);
  v7 = *a1;
  begin = v21.__begin_;
  *v21.__begin_ = *(*a1 + 4);
  v9 = *a2;
  if (v5)
  {
    LOWORD(v10) = 0;
    v11 = (begin + 4);
    v12 = (v7 + 32);
    do
    {
      v13 = *(v12 - 2);
      *v11 = v13;
      v14 = v13 - *(v11 - 1);
      v15 = *(v12 - 4) * v14;
      v16 = v14 * *v12;
      v17 = *(v12 - 6);
      *(v9 + 4 * v10) = v17;
      v18 = v10 + 2;
      v19 = v15 / 3.0 + v17;
      *(v9 + 4 * (v10 + 1)) = v19;
      LOWORD(v10) = v10 + 3;
      v20 = *(v12 - 1) - v16 / 3.0;
      *(v9 + 4 * v18) = v20;
      ++v11;
      v12 += 5;
      --v6;
    }

    while (v6);
    v10 = v10;
  }

  else
  {
    v10 = 0;
  }

  *(v9 + 4 * v10) = *(v7 + 20 * *(a1 + 1) - 12);
  *(a2 + 58) = 0;
  if (a2 + 3 != &v21)
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(a2 + 3, begin, v21.__end_, (v21.__end_ - begin) >> 2);
    begin = v21.__begin_;
  }

  *(a2 + 12) = *begin;
  *(a2 + 13) = *(v21.__end_ - 1);
  v21.__end_ = begin;
  operator delete(begin);
}

float geom::interpolating_spline<float>::evaluate_total_length(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*(a1 + 58) == 1)
  {
    if (*(a1 + 56))
    {
      v2 = *(a1 + 52);
    }

    else
    {
      v2 = *(a1 + 48) + (((*(a1 + 52) - *(a1 + 48)) / 0.0) * 65535.0);
    }
  }

  else
  {
    if (!*(a1 + 56))
    {
      v1 = 0xFFFF;
    }

    v2 = *(*(a1 + 24) + 4 * v1);
  }

  return geom::interpolating_spline<float>::evaluate_length_at(a1, v2);
}

void std::vector<float>::push_back[abi:nn200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t std::vector<geom::interpolating_spline<float>>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<geom::interpolating_spline<float>>::__emplace_back_slow_path<geom::interpolating_spline<float> const&>(a1, a2);
  }

  else
  {
    result = geom::interpolating_spline<float>::interpolating_spline(v3, a2) + 88;
  }

  a1[1] = result;
  return result;
}

void std::vector<float>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<float>::__append(this, __sz - v2);
  }
}

void geom::interpolating_curve<double>::build(void *a1@<X0>, _OWORD *a2@<X8>)
{
  a2[7] = 0u;
  a2[8] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 193) = 0u;
  geom::interpolating_curve<double>::build_helper(a2, a1, 0);
}

void geom::interpolating_curve<double>::build_helper(uint64_t a1, void *a2, char a3)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3);
  v10 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = (a1 + 72);
  v11 = v6;
  if (v8 != v10)
  {
    do
    {
      v8 = geom::interpolating_spline<double>::~interpolating_spline(v8 - 96);
    }

    while (v8 != v10);
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3);
  }

  *(a1 + 80) = v10;
  std::vector<geom::interpolating_spline<double>>::reserve(v9, v11 - 1);
  *(a1 + 208) = 0;
  if (v6 < 2u)
  {
    v12 = 0;
    v15 = -1;
  }

  else
  {
    LOWORD(v12) = 0;
    v13 = 1;
    v14 = -1;
    do
    {
      if (*(*a2 + 40 * v13) != *(*a2 + 40 * v12))
      {
        v14 = v13 - 1;
        *&v106 = *a2 + 40 * v12;
        *(&v106 + 1) = (v13 - 1) - v12 + 1;
        geom::interpolating_curve<double>::append_spline(a1, &v106);
        LOWORD(v12) = v13;
      }

      ++v13;
    }

    while (v6 > v13);
    v15 = v14;
    v12 = v12;
  }

  if (v6 - 1 != v15)
  {
    *&v106 = *a2 + 40 * v12;
    *(&v106 + 1) = v6 - v12;
    geom::interpolating_curve<double>::append_spline(a1, &v106);
  }

  v17 = *(a1 + 72);
  v16 = *(a1 + 80);
  std::vector<unsigned short>::resize((a1 + 24), 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 5));
  if (v16 == v17)
  {
    std::vector<unsigned short>::resize(a1, 0);
  }

  else
  {
    v18 = 0;
    v19 = *v9;
    v20 = *(a1 + 24);
    if (0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 5) <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 5);
    }

    v22 = (v19 + 64);
    v23 = v21;
    do
    {
      v24 = *v22;
      v22 += 48;
      *v20++ = v18;
      v18 += v24;
      --v23;
    }

    while (v23);
    std::vector<unsigned short>::resize(a1, v18);
    v25 = 0;
    v26 = 0;
    v27 = *(a1 + 72);
    do
    {
      v28 = *(v27 + 96 * v25 + 64);
      if (*(v27 + 96 * v25 + 64))
      {
        v29 = *a1;
        do
        {
          v30 = (v26 + 1);
          *(v29 + 2 * v26) = v25;
          LODWORD(v26) = v26 + 1;
          --v28;
        }

        while (v28);
      }

      else
      {
        v30 = v26;
      }

      ++v25;
      v26 = v30;
    }

    while (v25 != v21);
  }

  v31 = *a2;
  *(a1 + 192) = *(*a2 + 8);
  v32 = a2[1];
  *(a1 + 200) = *(v32 - 32);
  if (a3)
  {
    LOWORD(v116[0]) = 512;
    v33 = v32 - v31;
    v116[1] = 0.001;
    v117 = 1;
    v113 = 0;
    v114 = 0;
    v115 = 0;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v34 = *(a1 + 96);
    v104 = (a1 + 96);
    v105 = a1;
    *(a1 + 104) = v34;
    *(a1 + 160) = 0;
    v35 = *(a1 + 120);
    v103 = (a1 + 120);
    *(a1 + 162) = 0;
    *(a1 + 128) = v35;
    if (v32 == v31)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = *(v31 + 8);
    }

    if (0xCCCCCCCCCCCCCCCDLL * (v33 >> 3) >= 2)
    {
      v37 = 1;
      while (1)
      {
        v38 = v31 + 40 * v37;
        if (*v38 != *(v31 + 40 * (v37 - 1)))
        {
          goto LABEL_95;
        }

        v39 = *(v38 + 8);
        LOBYTE(v116[0]) = *v38 != 0;
        v111 = 0;
        v40 = v105;
        v112 = 0;
        *(&v106 + 1) = v106;
        *&v108 = *(&v107 + 1);
        v41 = (v39 + v36 * 2.0) * 0.333333333;
        v42 = (v36 + v39 * 2.0) * 0.333333333;
        if (*(v105 + 208))
        {
          v43 = v36;
          goto LABEL_70;
        }

        v44 = *(v105 + 72);
        v45 = 0xAAAAAAAAAAAAAAABLL * ((*(v105 + 80) - v44) >> 5);
        if ((v45 & 0xFFFE) == 0 || *(v105 + 192) >= v36)
        {
          break;
        }

        LOWORD(v45) = v45 - 1;
        if (*(v105 + 200) > v36)
        {
          for (i = 0; ; i = v47 + 1)
          {
            while (1)
            {
              v47 = (i + v45) >> 1;
              v48 = v44 + 96 * v47;
              if (*(v48 + 48) <= v36)
              {
                break;
              }

              LOWORD(v45) = v47 - 1;
            }

            if (*(v48 + 56) > v36)
            {
              break;
            }
          }

          LODWORD(v45) = (i + v45) >> 1;
        }

        v88 = v45;
        v89 = v45;
        v49 = geom::interpolating_spline<double>::evaluate_length_at(v44 + 96 * v45, v36);
        if (!v89)
        {
          goto LABEL_46;
        }

        v50 = *(*(v40 + 48) + 8 * (v88 - 1));
LABEL_47:
        v43 = v49 + v50;
        v51 = v105;
        if (*(v105 + 208))
        {
          goto LABEL_70;
        }

        v52 = *(v105 + 72);
        v53 = 0xAAAAAAAAAAAAAAABLL * ((*(v105 + 80) - v52) >> 5);
        if ((v53 & 0xFFFE) == 0 || *(v105 + 192) >= v41)
        {
          v57 = geom::interpolating_spline<double>::evaluate_length_at(v52, (v39 + v36 * 2.0) * 0.333333333);
LABEL_57:
          v58 = 0.0;
          goto LABEL_58;
        }

        LOWORD(v53) = v53 - 1;
        if (*(v105 + 200) > v41)
        {
          for (j = 0; ; j = v55 + 1)
          {
            while (1)
            {
              v55 = (j + v53) >> 1;
              v56 = v52 + 96 * v55;
              if (*(v56 + 48) <= v41)
              {
                break;
              }

              LOWORD(v53) = v55 - 1;
            }

            if (*(v56 + 56) > v41)
            {
              break;
            }
          }

          LODWORD(v53) = (j + v53) >> 1;
        }

        v97 = v53;
        v98 = v53;
        v57 = geom::interpolating_spline<double>::evaluate_length_at(v52 + 96 * v53, (v39 + v36 * 2.0) * 0.333333333);
        if (!v98)
        {
          goto LABEL_57;
        }

        v58 = *(*(v51 + 48) + 8 * (v97 - 1));
LABEL_58:
        v41 = v57 + v58;
        v59 = v105;
        if (*(v105 + 208))
        {
          goto LABEL_70;
        }

        v60 = *(v105 + 72);
        v61 = 0xAAAAAAAAAAAAAAABLL * ((*(v105 + 80) - v60) >> 5);
        if ((v61 & 0xFFFE) == 0 || *(v105 + 192) >= v42)
        {
          v65 = geom::interpolating_spline<double>::evaluate_length_at(v60, v42);
LABEL_68:
          v66 = 0.0;
          goto LABEL_69;
        }

        LOWORD(v61) = v61 - 1;
        if (*(v105 + 200) > v42)
        {
          for (k = 0; ; k = v63 + 1)
          {
            while (1)
            {
              v63 = (k + v61) >> 1;
              v64 = v60 + 96 * v63;
              if (*(v64 + 48) <= v42)
              {
                break;
              }

              LOWORD(v61) = v63 - 1;
            }

            if (*(v64 + 56) > v42)
            {
              break;
            }
          }

          LODWORD(v61) = (k + v61) >> 1;
        }

        v99 = v61;
        v100 = v61;
        v65 = geom::interpolating_spline<double>::evaluate_length_at(v60 + 96 * v61, v42);
        if (!v100)
        {
          goto LABEL_68;
        }

        v66 = *(*(v59 + 48) + 8 * (v99 - 1));
LABEL_69:
        v42 = v65 + v66;
        v67 = v105;
        if ((*(v105 + 208) & 1) == 0)
        {
          v90 = *(v105 + 72);
          v91 = 0xAAAAAAAAAAAAAAABLL * ((*(v105 + 80) - v90) >> 5);
          if ((v91 & 0xFFFE) != 0 && *(v105 + 192) < v39)
          {
            LOWORD(v91) = v91 - 1;
            if (*(v105 + 200) > v39)
            {
              for (m = 0; ; m = v93 + 1)
              {
                while (1)
                {
                  v93 = (m + v91) >> 1;
                  v94 = v90 + 96 * v93;
                  if (*(v94 + 48) <= v39)
                  {
                    break;
                  }

                  LOWORD(v91) = v93 - 1;
                }

                if (*(v94 + 56) > v39)
                {
                  break;
                }
              }

              LODWORD(v91) = (m + v91) >> 1;
            }

            v101 = v91;
            v102 = v91;
            v95 = geom::interpolating_spline<double>::evaluate_length_at(v90 + 96 * v91, v39);
            if (v102)
            {
              v96 = *(*(v67 + 48) + 8 * (v101 - 1));
              goto LABEL_110;
            }
          }

          else
          {
            v95 = geom::interpolating_spline<double>::evaluate_length_at(v90, v39);
          }

          v96 = 0.0;
LABEL_110:
          v68 = v95 + v96;
          goto LABEL_71;
        }

LABEL_70:
        v68 = v39;
LABEL_71:
        *v118 = v36;
        *&v118[1] = v39;
        *&v118[2] = v43;
        *&v118[3] = v41;
        *&v118[4] = v42;
        *&v118[5] = v68;
        v119 = 0;
        v69 = v111;
        v70 = *(a1 + 104);
        v71 = *(a1 + 96);
        v72 = *(a1 + 160);
        if (v72)
        {
          v73 = v72 + 1;
        }

        else
        {
          v73 = 0;
        }

        v74 = v72 + v111;
        if (v72 + v111)
        {
          std::vector<double>::resize(v104, (3 * v74 + 1));
          *(a1 + 160) = v74;
          if ((*(a1 + 162) & 1) == 0)
          {
            std::vector<double>::resize(v103, v74 + 1);
          }
        }

        else
        {
          *(a1 + 104) = v71;
          *(a1 + 160) = 0;
          if ((*(a1 + 162) & 1) == 0)
          {
            *(a1 + 128) = *(a1 + 120);
          }
        }

        if (v69)
        {
          v75 = ((v70 - v71) >> 3);
          v76 = v73;
          v77 = v112;
          v78 = v111;
          v79 = v111;
          v80 = *(&v107 + 1);
          v81 = v106;
          v82 = *v103;
          v83 = *v104;
          v84 = 3;
          v85 = 1;
          do
          {
            if (v75)
            {
              if (v77)
              {
                goto LABEL_83;
              }
            }

            else
            {
              if (v77)
              {
                if (v78)
                {
                  v87 = v109 + (v110 - v109) / v79 * 0.0;
                }

                else
                {
                  v87 = v110;
                }
              }

              else
              {
                v87 = *v80;
              }

              *v82 = v87;
              *v83 = *v81;
              ++v76;
              v75 = 1;
              if (v77)
              {
LABEL_83:
                if (v78 == v85)
                {
                  v86 = v110;
                }

                else
                {
                  v86 = v109 + v85 * ((v110 - v109) / v79);
                }

                goto LABEL_93;
              }
            }

            v86 = v80[v85];
LABEL_93:
            v82[v76] = v86;
            v83[v75] = v81[(v84 - 2)];
            v83[(v75 + 1)] = v81[(v84 - 1)];
            v83[(v75 + 2)] = v81[v84];
            ++v76;
            v75 += 3;
            ++v85;
            v84 += 3;
            --v69;
          }

          while (v69);
        }

        v36 = v39;
LABEL_95:
        v37 = (v37 + 1);
        v31 = *a2;
        v33 = a2[1] - *a2;
        if (0xCCCCCCCCCCCCCCCDLL * (v33 >> 3) <= v37)
        {
          goto LABEL_120;
        }
      }

      v49 = geom::interpolating_spline<double>::evaluate_length_at(v44, v36);
LABEL_46:
      v50 = 0.0;
      goto LABEL_47;
    }

LABEL_120:
    *(a1 + 208) = 1;
    *(a1 + 192) = *(v31 + 8);
    *(a1 + 200) = *(v31 + v33 - 32);
    geom::interpolating_spline<double>::~interpolating_spline(&v106);
  }
}

void geom::interpolating_curve<double>::build_arc_length_parameterized(void *a1@<X0>, _OWORD *a2@<X8>)
{
  a2[7] = 0u;
  a2[8] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 193) = 0u;
  geom::interpolating_curve<double>::build_helper(a2, a1, 1);
}

double geom::interpolating_curve<double>::evaluate_at(uint64_t a1, double a2)
{
  if (*(a1 + 208) == 1)
  {
    v12 = 0;
    v13 = 0.0;
    v14 = 0;
    geom::interpolating_spline<double>::find_span(a1 + 96, &v12, a2);
    v3 = (*(a1 + 96) + 8 * (3 * v12));
    a2 = v3[1] * (v13 * ((1.0 - v13) * (1.0 - v13) * 3.0)) + *v3 * ((1.0 - v13) * ((1.0 - v13) * (1.0 - v13))) + v3[2] * (v13 * v13 * ((1.0 - v13) * 3.0)) + v3[3] * (v13 * (v13 * v13));
  }

  v4 = *(a1 + 72);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - v4) >> 5);
  if ((v5 & 0xFFFE) != 0 && *(a1 + 192) < a2)
  {
    LOWORD(v5) = v5 - 1;
    if (*(a1 + 200) > a2)
    {
      for (i = 0; ; i = v7 + 1)
      {
        while (1)
        {
          v7 = (i + v5) >> 1;
          v8 = v4 + 96 * v7;
          if (*(v8 + 48) <= a2)
          {
            break;
          }

          LOWORD(v5) = v7 - 1;
        }

        if (*(v8 + 56) > a2)
        {
          break;
        }
      }

      LODWORD(v5) = (i + v5) >> 1;
    }
  }

  else
  {
    LOWORD(v5) = 0;
  }

  v9 = (v4 + 96 * v5);
  v12 = 0;
  v13 = 0.0;
  v14 = 0;
  geom::interpolating_spline<double>::find_span(v9, &v12, a2);
  v10 = (*v9 + 8 * (3 * v12));
  return v10[1] * (v13 * ((1.0 - v13) * (1.0 - v13) * 3.0)) + *v10 * ((1.0 - v13) * ((1.0 - v13) * (1.0 - v13))) + v10[2] * (v13 * v13 * ((1.0 - v13) * 3.0)) + v10[3] * (v13 * (v13 * v13));
}

uint64_t geom::interpolating_curve<double>::find_spline_for_parameter(uint64_t a1, double a2)
{
  v2 = *(a1 + 72);
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - v2) >> 5);
  if ((v3 & 0xFFFE) != 0 && *(a1 + 192) < a2)
  {
    LOWORD(v3) = v3 - 1;
    if (*(a1 + 200) > a2)
    {
      for (i = 0; ; i = v5 + 1)
      {
        while (1)
        {
          v5 = (i + v3) >> 1;
          v6 = v2 + 96 * v5;
          if (*(v6 + 48) <= a2)
          {
            break;
          }

          LOWORD(v3) = v5 - 1;
        }

        if (*(v6 + 56) > a2)
        {
          break;
        }
      }

      LODWORD(v3) = (i + v3) >> 1;
    }
  }

  else
  {
    LOWORD(v3) = 0;
  }

  return v2 + 96 * v3;
}

uint64_t geom::interpolating_curve<double>::evaluate_tangent_at(uint64_t a1, double a2)
{
  if (*(a1 + 208) == 1)
  {
    v22 = 0;
    v23 = 0.0;
    v24 = 0.0;
    geom::interpolating_spline<double>::find_span(a1 + 96, &v22, a2);
    v3 = (*(a1 + 96) + 8 * (3 * v22));
    v4 = v3[1] * (v23 * ((1.0 - v23) * (1.0 - v23) * 3.0)) + *v3 * ((1.0 - v23) * ((1.0 - v23) * (1.0 - v23))) + v3[2] * (v23 * v23 * ((1.0 - v23) * 3.0)) + v3[3] * (v23 * (v23 * v23));
    v5 = *(a1 + 72);
    v6 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - v5) >> 5);
    if ((v6 & 0xFFFE) != 0 && *(a1 + 192) < v4)
    {
      LOWORD(v6) = v6 - 1;
      if (*(a1 + 200) > v4)
      {
        for (i = 0; ; i = v8 + 1)
        {
          while (1)
          {
            v8 = (i + v6) >> 1;
            v9 = v5 + 96 * v8;
            if (*(v9 + 48) <= v4)
            {
              break;
            }

            LOWORD(v6) = v8 - 1;
          }

          if (*(v9 + 56) > v4)
          {
            break;
          }
        }

        LODWORD(v6) = (i + v6) >> 1;
      }
    }

    else
    {
      LOWORD(v6) = 0;
    }

    v15 = (v5 + 96 * v6);
    v22 = 0;
    v23 = 0.0;
    v24 = 0.0;
    result = geom::interpolating_spline<double>::find_span(v15, &v22, v4);
    v17 = (*v15 + 8 * (3 * v22));
    if (v24 * 3.0 * (v23 * (1.0 - v23 + 1.0 - v23) * (v17[2] - v17[1]) + (v17[1] - *v17) * ((1.0 - v23) * (1.0 - v23)) + (v17[3] - v17[2]) * (v23 * v23)) >= 0.0)
    {
      v18 = v24 * 3.0 * (v23 * (1.0 - v23 + 1.0 - v23) * (v17[2] - v17[1]) + (v17[1] - *v17) * ((1.0 - v23) * (1.0 - v23)) + (v17[3] - v17[2]) * (v23 * v23));
    }
  }

  else
  {
    v10 = *(a1 + 72);
    v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - v10) >> 5);
    if ((v11 & 0xFFFE) != 0 && *(a1 + 192) < a2)
    {
      LOWORD(v11) = v11 - 1;
      if (*(a1 + 200) > a2)
      {
        for (j = 0; ; j = v13 + 1)
        {
          while (1)
          {
            v13 = (j + v11) >> 1;
            v14 = v10 + 96 * v13;
            if (*(v14 + 48) <= a2)
            {
              break;
            }

            LOWORD(v11) = v13 - 1;
          }

          if (*(v14 + 56) > a2)
          {
            break;
          }
        }

        LODWORD(v11) = (j + v11) >> 1;
      }
    }

    else
    {
      LOWORD(v11) = 0;
    }

    v19 = (v10 + 96 * v11);
    v22 = 0;
    v23 = 0.0;
    v24 = 0.0;
    result = geom::interpolating_spline<double>::find_span(v19, &v22, a2);
    v20 = (*v19 + 8 * (3 * v22));
    v21 = v24 * 3.0 * (v23 * (1.0 - v23 + 1.0 - v23) * (v20[2] - v20[1]) + (v20[1] - *v20) * ((1.0 - v23) * (1.0 - v23)) + (v20[3] - v20[2]) * (v23 * v23));
  }

  return result;
}

double geom::interpolating_curve<double>::evaluate_length_at(uint64_t a1, double result)
{
  if ((*(a1 + 208) & 1) == 0)
  {
    v4 = a1 + 72;
    v3 = *(a1 + 72);
    v5 = 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 8) - v3) >> 5);
    if ((v5 & 0xFFFE) != 0 && *(a1 + 192) < result)
    {
      LOWORD(v5) = v5 - 1;
      if (*(a1 + 200) > result)
      {
        for (i = 0; ; i = v7 + 1)
        {
          while (1)
          {
            v7 = (i + v5) >> 1;
            v8 = v3 + 96 * v7;
            if (*(v8 + 48) <= result)
            {
              break;
            }

            LOWORD(v5) = v7 - 1;
          }

          if (*(v8 + 56) > result)
          {
            break;
          }
        }

        LODWORD(v5) = (i + v5) >> 1;
      }

      v11 = v5;
      v12 = v5;
      v9 = geom::interpolating_spline<double>::evaluate_length_at(v3 + 96 * v5, result);
      if (v12)
      {
        v10 = *(*(a1 + 48) + 8 * (v11 - 1));
        return v9 + v10;
      }
    }

    else
    {
      v9 = geom::interpolating_spline<double>::evaluate_length_at(v3, result);
    }

    v10 = 0.0;
    return v9 + v10;
  }

  return result;
}

uint64_t geom::interpolating_curve<double>::find_spline_index_for_parameter(uint64_t a1, double a2)
{
  v2 = *(a1 + 72);
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - v2) >> 5);
  if ((v3 & 0xFFFE) != 0 && *(a1 + 192) < a2)
  {
    LOWORD(v3) = v3 - 1;
    if (*(a1 + 200) > a2)
    {
      for (i = 0; ; i = v5 + 1)
      {
        while (1)
        {
          v5 = (i + v3) >> 1;
          v6 = v2 + 96 * v5;
          if (*(v6 + 48) <= a2)
          {
            break;
          }

          LOWORD(v3) = v5 - 1;
        }

        if (*(v6 + 56) > a2)
        {
          break;
        }
      }

      LODWORD(v3) = (i + v3) >> 1;
    }
  }

  else
  {
    LOWORD(v3) = 0;
  }

  return v3;
}

double geom::interpolating_spline<double>::evaluate_length_at(uint64_t a1, double a2)
{
  geom::interpolating_spline<double>::find_span(a1, v11, a2);
  v4 = v11[0];
  v5 = *(a1 + 72);
  if (*(a1 + 80) == v5)
  {
    if (v11[0])
    {
      v7 = 0;
      v6 = 0.0;
      do
      {
        v6 = v6 + geom::interpolating_spline<double>::evaluate_span_length(a1, v7++);
      }

      while (v4 != v7);
      goto LABEL_9;
    }
  }

  else if (v11[0])
  {
    v6 = *(v5 + 8 * (v11[0] - 1));
    goto LABEL_9;
  }

  v6 = 0.0;
LABEL_9:
  if (*(a1 + 66) == 1)
  {
    v8 = *(a1 + 64);
    if (v8 == v4)
    {
      v9 = *(a1 + 56);
    }

    else
    {
      v9 = *(a1 + 48) + v4 * ((*(a1 + 56) - *(a1 + 48)) / v8);
    }
  }

  else
  {
    v9 = *(*(a1 + 24) + 8 * v4);
  }

  return v6 + geom::interpolating_spline<double>::evaluate_length_betweeen(a1, v9, a2);
}

double geom::interpolating_curve<double>::evaluate_total_length(uint64_t a1)
{
  if (*(a1 + 208) == 1)
  {
    v1 = *(a1 + 160);
    if (*(a1 + 162) == 1)
    {
      if (*(a1 + 160))
      {
        return *(a1 + 152);
      }

      else
      {
        return *(a1 + 144) + (*(a1 + 152) - *(a1 + 144)) / 0.0 * 65535.0;
      }
    }

    else
    {
      if (!*(a1 + 160))
      {
        v1 = 0xFFFF;
      }

      return *(*(a1 + 120) + 8 * v1);
    }
  }

  else
  {
    v3 = *(a1 + 80) - *(a1 + 72);
    if (v3)
    {
      return *(*(a1 + 48) - 0x5555555555555555 * (v3 >> 2) - 8);
    }

    else
    {
      return 0.0;
    }
  }
}

void geom::interpolating_curve<double>::span_knots(uint64_t a1, unsigned int a2, double *a3, double *a4, double a5, double a6, double a7)
{
  v9 = *(*a1 + 2 * a2);
  v10 = a2 - *(*(a1 + 24) + 2 * v9);
  if (*(a1 + 208) == 1)
  {
    if (*(*a1 + 2 * a2))
    {
      v11 = *(*(a1 + 48) + 8 * (v9 - 1));
    }

    else
    {
      v11 = 0.0;
    }

    v18 = *(a1 + 72) + 96 * *(*a1 + 2 * a2);
    if (*(v18 + 66))
    {
      v19 = *(v18 + 48);
      LOWORD(a7) = *(v18 + 64);
      v20 = (*(v18 + 56) - v19) / *&a7;
      v21 = v19 + v10 * v20;
      v22 = v20 + v21;
    }

    else
    {
      v23 = (*(v18 + 24) + 8 * v10);
      v21 = *v23;
      v22 = v23[1];
    }

    *a3 = v11 + geom::interpolating_spline<double>::evaluate_length_at(v18, v21);
    v16 = v11 + geom::interpolating_spline<double>::evaluate_length_at(*(a1 + 72) + 96 * v9, v22);
  }

  else
  {
    v12 = *(a1 + 72) + 96 * *(*a1 + 2 * a2);
    if (*(v12 + 66))
    {
      v13 = *(v12 + 48);
      LOWORD(a7) = *(v12 + 64);
      v14 = (*(v12 + 56) - v13) / *&a7;
      v15 = v13 + (a2 - *(*(a1 + 24) + 2 * v9)) * v14;
      *a3 = v15;
      v16 = v14 + v15;
    }

    else
    {
      v17 = *(v12 + 24) + 8 * v10;
      *a3 = *v17;
      v16 = *(v17 + 8);
    }
  }

  *a4 = v16;
}

uint64_t geom::interpolating_curve<double>::calculate_monomial_basis_for_span(void *a1, unsigned int a2, double *a3)
{
  v3 = (*(a1[9] + 96 * *(*a1 + 2 * a2)) + 8 * (3 * (a2 - *(a1[3] + 2 * *(*a1 + 2 * a2)))));
  v4 = *v3;
  *a3 = *v3;
  a3[1] = (v3[1] - v4) * 3.0;
  v5 = (*v3 + v3[1] * -2.0 + v3[2]) * 3.0;
  a3[2] = v5;
  v6 = *v3;
  v7 = v3[3] + (v3[1] - v3[2]) * 3.0;
  a3[3] = v7 - *v3;
  v8 = fabs(v5);
  if (vabdd_f64(v7, v6) > 0.000001 || v8 > 0.000001)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t geom::interpolating_curve<double>::calculate_bezier_basis_for_span(void *a1, unsigned int a2, double *a3)
{
  v3 = (*(a1[9] + 96 * *(*a1 + 2 * a2)) + 8 * (3 * (a2 - *(a1[3] + 2 * *(*a1 + 2 * a2)))));
  v4 = *v3;
  v5 = v3[1];
  v6 = (v5 - *v3) * 3.0;
  v7 = v3[2];
  v8 = (*v3 + v5 * -2.0 + v7) * 3.0;
  v9 = v3[3] + (v5 - v7) * 3.0;
  if (fabs(v8) > 0.000001 || vabdd_f64(v9, v4) > 0.000001)
  {
    v14 = v9 - v4;
    v10 = v4 + v6 * 0.333333333;
    v12 = v4 + v6 * 0.666666667 + v8 * 0.333333333;
    v13 = v4 + v6 + v8 + v14;
    result = 4;
  }

  else
  {
    v10 = v4 + v6;
    result = 2;
    v12 = 0.0;
    v13 = 0.0;
  }

  *a3 = v4;
  a3[1] = v10;
  a3[2] = v12;
  a3[3] = v13;
  return result;
}

void *std::vector<geom::interpolating_spline<double>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 < 0x2AAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::interpolating_spline<double>>>(result, a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

uint64_t geom::interpolating_curve<double>::append_spline(uint64_t a1, int **a2)
{
  memset(v14, 0, sizeof(v14));
  memset(v12, 0, 48);
  v3 = **a2;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      geom::interpolating_curve<double>::build_catmull_rom_spline(a2, v11);
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_11;
      }

      geom::interpolating_curve<double>::build_natural_spline(a2, v11);
    }
  }

  else if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_11;
    }

    geom::interpolating_curve<double>::build_hermite_spline(a2, v11);
  }

  else
  {
    geom::interpolating_curve<double>::build_linear_spline(a2, v11);
  }

  geom::interpolating_spline<double>::operator=(v12, v11);
  geom::interpolating_spline<double>::~interpolating_spline(v11);
LABEL_11:
  v4 = v13;
  std::vector<double>::resize(v14, v13);
  if (v4)
  {
    v5 = 0;
    v6 = 0.0;
    do
    {
      v6 = v6 + geom::interpolating_spline<double>::evaluate_span_length(v12, v5);
      *(v14[0] + 8 * v5++) = v6;
    }

    while (v4 != v5);
  }

  v7 = geom::interpolating_spline<double>::evaluate_total_length(v12);
  v8 = *(a1 + 80) - *(a1 + 72);
  if (v8)
  {
    v9 = *(*(a1 + 48) - 0x5555555555555555 * (v8 >> 2) - 8);
  }

  else
  {
    v9 = 0.0;
  }

  *v11 = v7 + v9;
  std::vector<double>::push_back[abi:nn200100]((a1 + 48), v11);
  std::vector<geom::interpolating_spline<double>>::push_back[abi:nn200100]((a1 + 72), v12);
  return geom::interpolating_spline<double>::~interpolating_spline(v12);
}

void geom::interpolating_curve<double>::build_linear_spline(_WORD *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  v5 = v4 - 1;
  a2[10] = 0;
  a2[11] = 0;
  a2[9] = 0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  if (v4 == 1)
  {
    *(a2 + 32) = 0;
    if ((*(a2 + 66) & 1) == 0)
    {
      a2[4] = 0;
    }
  }

  else
  {
    std::vector<double>::resize(a2, (3 * v5 + 1));
    *(a2 + 32) = v5;
    if ((*(a2 + 66) & 1) == 0)
    {
      std::vector<double>::resize(a2 + 3, v5 + 1);
    }
  }

  __p = 0;
  v20 = 0;
  v6 = v5;
  v21 = 0;
  std::vector<double>::resize(&__p, v5 + 1);
  v7 = *a1;
  v8 = __p;
  *__p = *(*a1 + 8);
  v9 = *a2;
  if (v5)
  {
    LOWORD(v10) = 0;
    v11 = (v8 + 8);
    v12 = (v7 + 56);
    do
    {
      v13 = *(v12 - 1);
      *v11 = v13;
      v14 = *(v12 - 5);
      v15 = (v13 - *(v11 - 1)) * (*v12 - v14);
      *(v9 + 8 * v10) = v14;
      v16 = v10 + 2;
      v17 = v15 / 3.0;
      *(v9 + 8 * (v10 + 1)) = v14 + v17;
      LOWORD(v10) = v10 + 3;
      v18 = *v12;
      v12 += 5;
      *(v9 + 8 * v16) = v18 - v17;
      ++v11;
      --v6;
    }

    while (v6);
    v10 = v10;
  }

  else
  {
    v10 = 0;
  }

  *(v9 + 8 * v10) = *(v7 + 40 * *(a1 + 1) - 24);
  *(a2 + 66) = 0;
  if (a2 + 3 != &__p)
  {
    std::vector<double>::__assign_with_size[abi:nn200100]<double *,double *>(a2 + 3, v8, v20, (v20 - v8) >> 3);
    v8 = __p;
  }

  a2[6] = *v8;
  a2[7] = *(v20 - 1);
  v20 = v8;
  operator delete(v8);
}

uint64_t geom::interpolating_spline<double>::operator=(uint64_t a1, uint64_t a2)
{
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1, a2);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1 + 24, (a2 + 24));
  v4 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 48) = v4;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1 + 72, (a2 + 72));
  return a1;
}

void geom::interpolating_curve<double>::build_catmull_rom_spline(void *a1@<X1>, uint64_t *a2@<X8>)
{
  a2[9] = 0;
  a2[10] = 0;
  a2[11] = 0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v4 = a1[1];
  v5 = v4 - 1;
  v6 = (v4 + 2);
  std::vector<double>::resize(&v66, v6);
  std::vector<double>::resize(&v63, v6);
  v7 = *a1;
  v8 = v66;
  *v66 = -(*(*a1 + 56) - *(*a1 + 16) * 2.0);
  v9 = v63;
  *v63 = 0;
  v9[1] = sqrt(vabdd_f64(*(v7 + 56), *(v7 + 16)));
  if (v4 == 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = v9 + 2;
    v11 = (v4 - 1);
    v12 = (v8 + 8);
    v13 = (v7 + 56);
    v14 = v11;
    do
    {
      v15 = *(v13 - 5);
      *v12++ = v15;
      v16 = *v13;
      v13 += 5;
      *v10 = *(v10 - 1) + sqrt(vabdd_f64(v16, v15));
      ++v10;
      --v14;
    }

    while (v14);
  }

  v17 = *(v7 + 40 * v11 + 16);
  v18 = 8 * v6 - 16;
  *&v8[v18] = v17;
  v19 = 8 * v6 - 8;
  *&v8[v19] = -(*&v8[8 * v6 - 24] - v17 * 2.0);
  *(v9 + v19) = *(v9 + v18) + sqrt(vabdd_f64(*(v7 + 40 * (v4 - 2) + 56), *(v7 + 40 * (v4 - 2) + 16)));
  if (v4 == 1)
  {
    v21 = 0;
    a2[1] = 0;
    *(a2 + 32) = 0;
    if ((*(a2 + 66) & 1) == 0)
    {
      v21 = 0;
      a2[4] = 0;
    }
  }

  else
  {
    std::vector<double>::resize(a2, (3 * v5 + 1));
    *(a2 + 32) = v5;
    if ((*(a2 + 66) & 1) == 0)
    {
      std::vector<double>::resize(a2 + 3, v11 + 1);
    }

    v20 = 0;
    LOWORD(v21) = 0;
    v22 = *a2;
    v23 = v63;
    v24 = v66;
    do
    {
      v25 = v23[v20];
      v26 = v20 + 2;
      v27 = v24[v20];
      v28 = v20 + 1;
      v29 = v23[(v20 + 1)];
      v30 = v20 + 3;
      v31 = v23[v26];
      v32 = v31 - v29;
      v33 = v23[v30];
      v34 = 1.0 / (v29 - v25);
      v35 = 1.0 / (v31 - v25);
      v36 = 1.0 / (v31 - v29);
      v37 = v33 - v29;
      v38 = 1.0 / (v33 - v29);
      v39 = v33 - v31;
      v40 = 1.0 / (v33 - v31);
      v41 = v24[v28];
      v42 = v34 * ((v29 - v29) * v27 - (v25 - v29) * v41);
      v43 = v24[v26];
      v44 = v36 * ((v31 - v29) * v41 - (v29 - v29) * v43);
      v45 = v24[v30];
      v46 = v40 * (v37 * v43 - (v31 - v29) * v45);
      v47 = v34 * (v41 - v27);
      v48 = v36 * (v43 - v41);
      v49 = v40 * (v45 - v43);
      v50 = (v31 - v29) * (v36 * (v38 * (v37 * v44 - (v29 - v29) * v46) - v35 * ((v31 - v29) * v42 - (v25 - v29) * v44) + (v31 - v29) * (v35 * (v44 - v42 + (v31 - v29) * v47 - (v25 - v29) * v48)) - (v29 - v29) * (v38 * (v46 - v44 + v37 * v48 - (v29 - v29) * v49))));
      v51 = v25 - v31;
      v52 = v29 - v31;
      v53 = v31 - v31;
      v54 = v34 * (v52 * v27 - v51 * v41);
      v55 = v36 * (v53 * v41 - v52 * v43);
      *(v22 + 8 * v21) = v41;
      v56 = v21 + 2;
      *(v22 + 8 * (v21 + 1)) = v41 + v50 / 3.0;
      LOWORD(v21) = v21 + 3;
      *(v22 + 8 * v56) = v24[v26] - v32 * (v36 * (v38 * (v39 * v55 - v52 * (v40 * (v39 * v43 - v53 * v45))) - v35 * (v53 * v54 - v51 * v55) + v53 * (v35 * (v55 - v54 + v53 * v47 - v51 * v48)) - v52 * (v38 * (v40 * (v39 * v43 - v53 * v45) - v55 + v39 * v48 - v52 * v49)))) / 3.0;
      v20 = v28;
    }

    while (v11 != v28);
    v21 = v21;
  }

  v57 = a1[1];
  *(*a2 + 8 * v21) = *(*a1 + 40 * v11 + 16);
  v61 = 0;
  v62 = 0;
  __p = 0;
  if (v57)
  {
    std::vector<double>::__vallocate[abi:nn200100](&__p, v57);
  }

  v58 = 0;
  v59 = 0;
  *(a2 + 66) = 0;
  if (a2 + 3 != &__p)
  {
    std::vector<double>::__assign_with_size[abi:nn200100]<double *,double *>(a2 + 3, 0, 0, 0);
    v58 = __p;
    v59 = v61;
  }

  a2[6] = *v58;
  a2[7] = *(v59 - 1);
  v61 = v58;
  operator delete(v58);
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }
}