uint64_t geom::vertex_placement_constraint_factory<double>::add_boundary_preservation(geom::triangle_mesh_half_edge_connectivity **a1, unsigned int a2, uint64_t a3)
{
  v97[4] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(*a1 + 23);
  if (a2 >= ((*(*a1 + 24) - v5) >> 2) || (half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(*a1, *(v5 + 4 * a2) / 3u, *(v5 + 4 * a2) % 3u), !geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(v4, half_edge_for_face_vertex)))
  {
    LOBYTE(v23) = *(a3 + 128);
    goto LABEL_13;
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v97[0] = &unk_286291248;
  v97[1] = &v95;
  v97[2] = &v93;
  v97[3] = v97;
  geom::vertex_placement_constraint_factory<double>::loop_edge_boundaries(a1, a2, v97);
  _ZNSt3__110__function12__value_funcIFvPKDv3_dEED2B8nn200100Ev(v97);
  v9 = v96;
  v10.f64[0] = v94.f64[0];
  v11 = vmulq_f64(v9, v9).f64[0];
  v9.f64[1] = v95.f64[0];
  v12 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v96), v93, 1), v94, v95, 1);
  v10.f64[1] = v93.f64[0];
  v13 = vmlaq_f64(vmulq_f64(v10, vnegq_f64(v95)), v93, v9);
  v14.f64[0] = v12.f64[0];
  v14.f64[1] = v13.f64[0];
  v15 = vmulq_f64(v95, v95);
  v15.f64[0] = v11 + vaddvq_f64(v15);
  v16 = vmulq_n_f64(v14, v15.f64[0]);
  if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared, memory_order_acquire) & 1) == 0)
  {
    v85 = v15;
    v89 = v14;
    v78 = v16;
    v81 = v12;
    v76 = v13;
    geom::internal::triangle_mesh_decimator<double>::optimize_position_for_area_and_volume_preservation();
    v12 = v81;
    v15 = v85;
    v13 = v76;
    v16 = v78;
    v14 = v89;
  }

  v17 = vdupq_laneq_s64(v13, 1);
  v18 = vextq_s8(v14, v14, 8uLL);
  v19 = vmulq_laneq_f64(v15, v13, 1);
  *&v20 = vextq_s8(v16, v16, 8uLL).u64[0];
  if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared, memory_order_acquire) & 1) == 0)
  {
    v86 = v17;
    v90 = v14.f64[0];
    v75 = v18;
    v77 = v13;
    v79 = v16;
    v82 = v12;
    v73 = v20;
    v74 = v19;
    geom::internal::triangle_mesh_decimator<double>::optimize_position_for_area_and_volume_preservation();
    v20 = v73;
    v19 = v74;
    v13 = v77;
    v16 = v79;
    v12 = v82;
    v17 = v86;
    v18 = v75;
    v14.f64[0] = v90;
  }

  v21 = *(a3 + 128);
  if (v21 == 2)
  {
    v52 = *(a3 + 16);
    v53 = *(a3 + 32);
    v54 = *(a3 + 48);
    v55 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v52), v53, 1), v54, *a3, 1);
    v54.f64[1] = *(a3 + 32);
    v52.f64[1] = *a3;
    v56 = vmlaq_f64(vmulq_f64(v54, vnegq_f64(*a3)), v53, v52);
    v57 = vmulq_f64(v55, v55);
    v55.f64[1] = v56.f64[0];
    v53.f64[0] = v16.f64[0];
    v53.f64[1] = v20;
    v58 = vmulq_f64(v53, v55);
    v55.f64[0] = vmulq_laneq_f64(v19, v56, 1).f64[0];
    v58.f64[0] = vaddvq_f64(v58);
    v58.f64[0] = (v55.f64[0] + v58.f64[0]) * (v55.f64[0] + v58.f64[0]);
    v59 = vmulq_f64(v56, v56);
    v60 = vmulq_f64(v53, v53);
    *&v55.f64[0] = *&vmulq_f64(v19, v19);
    *&v55.f64[1] = v59.i64[1];
    v61 = vaddq_f64(v55, vaddq_f64(vzip1q_s64(v60, v57), vextq_s8(v60, v59, 8uLL)));
    if (v58.f64[0] > *&_ZZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared * vmulq_laneq_f64(v61, v61, 1).f64[0])
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v21 != 1)
    {
      if (*(a3 + 128))
      {
        goto LABEL_18;
      }

      v22.f64[0] = v16.f64[0];
      v22.f64[1] = v20;
      if (sqrt(vmulq_f64(v19, v19).f64[0] + vaddvq_f64(vmulq_f64(v22, v22))) <= 0.000001)
      {
        goto LABEL_18;
      }

LABEL_15:
      v30 = vmulq_f64(v13, v13);
      v31 = vmulq_f64(v12, v12).f64[0] + v30.f64[0];
      v32 = (a3 + 32 * v21);
      *v32 = v16;
      v32[1] = v19;
      v33 = *(a3 + 128);
      v34 = 2;
      if (v33 < 2)
      {
        v34 = *(a3 + 128);
      }

      *(a3 + 8 * v34 + 96) = -(v30.f64[1] + v31);
      *(a3 + 128) = v33 + 1;
      goto LABEL_18;
    }

    v26 = *(a3 + 16);
    v27.f64[0] = v16.f64[0];
    v27.f64[1] = v20;
    v28 = vaddq_f64(vzip1q_s64(vmulq_f64(v19, v19), vmulq_f64(v26, v26)), vpaddq_f64(vmulq_f64(v27, v27), vmulq_f64(*a3, *a3)));
    v26.f64[0] = vmulq_f64(v19, v26).f64[0];
    v29 = vaddvq_f64(vmulq_f64(v16, *a3));
    if ((v26.f64[0] + v29) * (v26.f64[0] + v29) < *&_ZZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared * vmulq_laneq_f64(v28, v28, 1).f64[0])
    {
      goto LABEL_15;
    }
  }

LABEL_18:
  v35.f64[0] = v17.f64[0];
  v35.f64[1] = v14.f64[0];
  v37 = v95;
  v36.f64[0] = v96.f64[0];
  v14.f64[1] = v18.f64[0];
  v36.f64[1] = v95.f64[0];
  v38 = vmulq_f64(v18, vnegq_f64(v96));
  v39 = vmlaq_f64(vmulq_f64(v35, vnegq_f64(v95)), v14, v36);
  if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared, memory_order_acquire) & 1) == 0)
  {
    v87 = v17;
    v91 = v39;
    v80 = v37;
    v83 = v38;
    geom::internal::triangle_mesh_decimator<double>::optimize_position_for_area_and_volume_preservation();
    v37 = v80;
    v38 = v83;
    v17 = v87;
    v39 = v91;
  }

  *&v40 = vextq_s8(v39, v39, 8uLL).u64[0];
  v41 = vmlaq_laneq_f64(v38, v17, v37, 1);
  if ((atomic_load_explicit(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared, memory_order_acquire) & 1) == 0)
  {
    v88 = v40;
    v92 = v39;
    v84 = v41;
    geom::internal::triangle_mesh_decimator<double>::optimize_position_for_area_and_volume_preservation();
    v41 = v84;
    v40 = v88;
    v39 = v92;
  }

  v42.f64[0] = v41.f64[0];
  v42.f64[1] = v39.f64[0];
  v23 = *(a3 + 128);
  if (v23 == 2)
  {
    v62 = *(a3 + 16);
    v63 = *(a3 + 32);
    v64 = *(a3 + 48);
    v65 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v62), v63, 1), v64, *a3, 1);
    v64.f64[1] = *(a3 + 32);
    v62.f64[1] = *a3;
    v66 = vmlaq_f64(vmulq_f64(v64, vnegq_f64(*a3)), v63, v62);
    v62.f64[0] = v39.f64[0];
    v62.f64[1] = v40;
    v67 = vmulq_f64(v62, v66);
    v64.f64[0] = vmulq_f64(v41, v65).f64[0];
    v68 = vmulq_f64(v66, v66);
    v69 = vmulq_f64(v62, v62);
    v70 = vaddq_f64(vzip2q_s64(v69, v68), vaddq_f64(vzip1q_s64(vmulq_f64(v41, v41), vmulq_f64(v65, v65)), vzip1q_s64(v69, v68)));
    if ((v67.f64[1] + v64.f64[0] + v67.f64[0]) * (v67.f64[1] + v64.f64[0] + v67.f64[0]) <= *&_ZZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared * vmulq_laneq_f64(v70, v70, 1).f64[0])
    {
      LOBYTE(v23) = 2;
      goto LABEL_13;
    }
  }

  else if (v23 == 1)
  {
    v45 = *(a3 + 16);
    v46 = vmulq_f64(*a3, *a3);
    v47.f64[0] = v39.f64[0];
    v47.f64[1] = v40;
    v48 = vmulq_f64(v47, v47);
    v49 = vextq_s8(v48, vmulq_f64(v45, v45), 8uLL);
    *&v48.f64[1] = v46.i64[1];
    v50 = vaddq_f64(v49, vaddq_f64(vzip1q_s64(vmulq_f64(v41, v41), v46), v48));
    v45.f64[0] = vmulq_laneq_f64(v45, v39, 1).f64[0];
    v51 = vaddvq_f64(vmulq_f64(v42, *a3));
    if ((v45.f64[0] + v51) * (v45.f64[0] + v51) >= *&_ZZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared * vmulq_laneq_f64(v50, v50, 1).f64[0])
    {
      LOBYTE(v23) = 1;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(a3 + 128))
    {
      goto LABEL_13;
    }

    v43.f64[0] = v39.f64[0];
    v43.f64[1] = v40;
    v44 = vmulq_f64(v43, v43);
    if (sqrt(v44.f64[1] + vmulq_f64(v41, v41).f64[0] + v44.f64[0]) <= 0.000001)
    {
      LOBYTE(v23) = 0;
      goto LABEL_13;
    }
  }

  v71 = a3 + 32 * v23;
  *v71 = v42;
  *(v71 + 16) = vdupq_laneq_s64(v39, 1);
  v23 = *(a3 + 128);
  v72 = 2;
  if (v23 < 2)
  {
    v72 = *(a3 + 128);
  }

  *(a3 + 8 * v72 + 96) = 0;
  LOBYTE(v23) = v23 + 1;
  *(a3 + 128) = v23;
LABEL_13:
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

void geom::vertex_placement_constraint_factory<double>::loop_edge_boundaries(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = *(*a1 + 184);
  if (a2 >= ((*(*a1 + 192) - v7) >> 2))
  {
    *v35 = -1;
    v9 = -1;
  }

  else
  {
    half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(*a1, *(v7 + 4 * a2) / 3u, *(v7 + 4 * a2) % 3u);
    geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(v6, half_edge_for_face_vertex, v35);
    v6 = *a1;
    v9 = v35[0];
  }

  __p = 0;
  v32 = 0;
  v33 = 0;
  geom::triangle_mesh_connectivity::get_incident_edges_to_vertex(v6, v9, &__p);
  v10 = __p;
  if (*__p == a2)
  {
    v10 = v32 - 4;
  }

  v11 = *v10;
  geom::triangle_mesh_connectivity::get_incident_edges_to_vertex(*a1, v35[1], &__p);
  v12 = __p;
  if (*__p == a2)
  {
    v12 = v32 - 4;
  }

  v13 = *v12;
  v14 = v35[0];
  v15 = v35[1];
  v34[17] = v35[0];
  v34[18] = v35[1];
  v30 = -1;
  v16 = 1;
  v17 = 0xFFFFFFFFLL;
  do
  {
    v18 = v16;
    v19 = *a1;
    v20 = *(*a1 + 184);
    if (v11 >= (*(*a1 + 192) - v20) >> 2)
    {
      *v35 = -1;
      v22 = -1;
    }

    else
    {
      v21 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(*a1, *(v20 + 4 * v11) / 3u, *(v20 + 4 * v11) % 3u);
      geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(v19, v21, v35);
      v22 = v35[0];
    }

    if (v22 == v14 || v35[1] == v14)
    {
      v17 = *(v35 | (4 * (v22 == v14)));
    }

    else if (v22 == v15 || v35[1] == v15)
    {
      v30 = *(v35 | (4 * (v22 == v15)));
    }

    v16 = 0;
    v11 = v13;
  }

  while ((v18 & 1) != 0);
  v34[19] = v30;
  for (i = 1; i != 4; ++i)
  {
    v24 = *(a1 + 8);
    v25 = (v24 + 32 * v17);
    v26 = v25[1];
    v17 = v34[i + 16];
    *v34 = *v25;
    *&v34[4] = v26;
    v27 = (v24 + 32 * v17);
    v28 = v27[1];
    *&v34[8] = *v27;
    *&v34[12] = v28;
    _ZNKSt3__18functionIFvPKDv3_dEEclES3_(a3, v34);
  }

  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t _ZNKSt3__18functionIFvPKDv3_dEEclES3_(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x24FFEA874);
  }

  return (*(*v2 + 48))(v2, &v4);
}

__n128 _ZNKSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIdE25add_boundary_preservationEjRNS2_28vertex_placement_constraintsIdEEEUlPKDv3_dE_NS_9allocatorISB_EEFvSA_EE7__cloneEPNS0_6__baseISE_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286291248;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

float64x2_t _ZNSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIdE25add_boundary_preservationEjRNS2_28vertex_placement_constraintsIdEEEUlPKDv3_dE_NS_9allocatorISB_EEFvSA_EEclEOSA_(uint64_t a1, float64x2_t **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = vaddq_f64(vsubq_f64((*a2)[3], (*a2)[1]), v3[1]);
  *v3 = vaddq_f64(vsubq_f64((*a2)[2], **a2), *v3);
  v3[1] = v4;
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[1];
  *&v8.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v6), *v2, 1), v7, v5, 1);
  v7.f64[1] = v2->f64[0];
  v6.f64[1] = v2[2].f64[0];
  v9 = vmlaq_f64(vmulq_f64(v7, vnegq_f64(v5)), *v2, v6);
  *&v8.f64[1] = v9.i64[0];
  v10 = *(a1 + 16);
  result = vaddq_f64(v10[1], vdupq_laneq_s64(v9, 1));
  *v10 = vaddq_f64(*v10, v8);
  v10[1] = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIdE25add_boundary_preservationEjRNS2_28vertex_placement_constraintsIdEEEUlPKDv3_dE_NS_9allocatorISB_EEFvSA_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZNK4geom35vertex_placement_constraint_factoryIdE25add_boundary_preservationEjRNS_28vertex_placement_constraintsIdEEEUlPKDv3_dE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function12__value_funcIFvPKDv3_dEED2B8nn200100Ev(uint64_t a1)
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

__n128 _ZNKSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIdE25add_boundary_optimizationEjRNS2_28vertex_placement_constraintsIdEEEUlPKDv3_dE_NS_9allocatorISB_EEFvSA_EE7__cloneEPNS0_6__baseISE_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2862912D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

float64x2_t _ZNSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIdE25add_boundary_optimizationEjRNS2_28vertex_placement_constraintsIdEEEUlPKDv3_dE_NS_9allocatorISB_EEFvSA_EEclEOSA_(uint64_t a1, float64x2_t **a2)
{
  v2 = (*a2)[2];
  v3 = (*a2)[3];
  _Q5 = **a2;
  v4 = (*a2)[1];
  v6 = vsubq_f64(v3, v4);
  _Q0 = vsubq_f64(v2, _Q5);
  v8 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v3), _Q5, 1), v4, v2, 1);
  v4.f64[1] = (*a2)->f64[0];
  v3.f64[1] = (*a2)[2].f64[0];
  v9 = vmlaq_f64(vmulq_f64(v4, vnegq_f64(v2)), _Q5, v3);
  v10 = vdupq_laneq_s64(v9, 1);
  v11 = vzip1q_s64(v10, v8);
  v8.f64[1] = v9.f64[0];
  _Q5.f64[0] = _Q0.f64[1];
  __asm { FMLA            D7, D5, V0.D[1] }

  v17 = vnegq_f64(_Q0);
  v18.f64[0] = vmuld_lane_f64(v17.f64[0], _Q0, 1);
  _Q7.f64[1] = v18.f64[0];
  v18.f64[1] = vmuld_n_f64(v6.f64[0], v6.f64[0]) + _Q0.f64[0] * _Q0.f64[0];
  v19 = vmulq_n_f64(v17, v6.f64[0]);
  _Q5.f64[0] = vmuld_lane_f64(_Q0.f64[1], _Q0, 1) + _Q0.f64[0] * _Q0.f64[0];
  v20 = *(a1 + 8);
  v21 = vaddq_f64(v20[1], v19);
  v22 = vaddq_f64(v20[2], v18);
  v23 = vaddq_f64(v20[3], vdupq_laneq_s64(v19, 1));
  v24 = vaddq_f64(v20[5], _Q5);
  v25 = vaddq_f64(v20[4], v19);
  *v20 = vaddq_f64(*v20, _Q7);
  v20[1] = v21;
  v20[2] = v22;
  v20[3] = v23;
  v20[4] = v25;
  v20[5] = v24;
  v26 = *(a1 + 16);
  v27 = vnegq_f64(v6);
  v6.f64[1] = _Q0.f64[0];
  v28 = vmlaq_f64(vmulq_f64(v11, v17), v8, v6);
  *&v9.f64[0] = *&vmlaq_laneq_f64(vmulq_f64(v9, v27), v10, _Q0, 1);
  *&v9.f64[1] = v28.i64[0];
  result = vsubq_f64(v26[1], vdupq_laneq_s64(v28, 1));
  *v26 = vsubq_f64(*v26, v9);
  v26[1] = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIdE25add_boundary_optimizationEjRNS2_28vertex_placement_constraintsIdEEEUlPKDv3_dE_NS_9allocatorISB_EEFvSA_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZNK4geom35vertex_placement_constraint_factoryIdE25add_boundary_optimizationEjRNS_28vertex_placement_constraintsIdEEEUlPKDv3_dE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void geom::vertex_placement_constraint_factory<double>::loop_edge_triangles(geom::triangle_mesh_half_edge_connectivity **a1, unsigned int a2, uint64_t a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a2;
  v7 = *(*a1 + 23);
  v8 = (*(*a1 + 24) - v7) >> 2;
  if (v8 <= a2)
  {
    *v55 = -1;
  }

  else
  {
    half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(*a1, *(v7 + 4 * a2) / 3u, *(v7 + 4 * a2) % 3u);
    geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(v5, half_edge_for_face_vertex, v55);
    v5 = *a1;
    v7 = *(*a1 + 23);
    v8 = (*(*a1 + 24) - v7) >> 2;
  }

  if (v8 <= v6 || (v10 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(v5, *(v7 + 4 * v6) / 3u, *(v7 + 4 * v6) % 3u), !geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(v5, v10)))
  {
    half_edge_face = -1;
    goto LABEL_9;
  }

  v11 = *(*(v5 + 23) + 4 * v6);
  v12 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(v5, v11 / 3, v11 % 3);
  half_edge_face = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face(v5, v12);
  if (geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(v5, v12))
  {
LABEL_9:
    v15 = -1;
    goto LABEL_10;
  }

  half_edge_twin = geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin(v5, v12);
  v15 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face(v5, half_edge_twin);
LABEL_10:
  v46 = 0;
  v47 = 0;
  v48 = 0;
  geom::triangle_mesh_half_edge_connectivity::get_incident_faces_to_vertex(*a1, v55[0], &v46);
  v16 = v46;
  v17 = v47;
  while (v16 != v17)
  {
    v18 = *v16++;
    v19 = a1[1];
    v20 = (*(*a1 + 2) + 4 * (3 * v18));
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    v24 = (v19 + 32 * v21);
    v25 = v24[1];
    v49 = *v24;
    v50 = v25;
    v26 = (v19 + 32 * v22);
    v27 = v26[1];
    v51 = *v26;
    v52 = v27;
    v28 = (v19 + 32 * v23);
    v29 = v28[1];
    v53 = *v28;
    v54 = v29;
    _ZNKSt3__18functionIFvPKDv3_dEEclES3_(a3, &v49);
  }

  geom::triangle_mesh_half_edge_connectivity::get_incident_faces_to_vertex(*a1, v55[1], &v46);
  v30 = v46;
  v31 = v47;
  if (v46 != v47)
  {
    do
    {
      v32 = *v30;
      if (*v30 != half_edge_face && v32 != v15)
      {
        v34 = a1[1];
        v35 = (*(*a1 + 2) + 4 * (3 * v32));
        v36 = *v35;
        v37 = v35[1];
        v38 = v35[2];
        v39 = (v34 + 32 * v36);
        v40 = v39[1];
        v49 = *v39;
        v50 = v40;
        v41 = (v34 + 32 * v37);
        v42 = v41[1];
        v51 = *v41;
        v52 = v42;
        v43 = (v34 + 32 * v38);
        v44 = v43[1];
        v53 = *v43;
        v54 = v44;
        _ZNKSt3__18functionIFvPKDv3_dEEclES3_(a3, &v49);
      }

      ++v30;
    }

    while (v30 != v31);
    v30 = v46;
  }

  if (v30)
  {
    v47 = v30;
    operator delete(v30);
  }

  v45 = *MEMORY[0x277D85DE8];
}

__n128 _ZNKSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIdE23add_volume_preservationEjRNS2_28vertex_placement_constraintsIdEEEUlPKDv3_dE_NS_9allocatorISB_EEFvSA_EE7__cloneEPNS0_6__baseISE_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286291358;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double _ZNSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIdE23add_volume_preservationEjRNS2_28vertex_placement_constraintsIdEEEUlPKDv3_dE_NS_9allocatorISB_EEFvSA_EEclEOSA_(uint64_t a1, float64x2_t **a2)
{
  v2 = *a2;
  v3 = **a2;
  v4 = (*a2)[1];
  v5 = (*a2)[2];
  v6 = (*a2)[3];
  v7 = vnegq_f64(v4);
  v8 = (*a2)[4];
  v9 = (*a2)[5];
  v10 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v9), v3, 1), v4, v8, 1);
  v4.f64[1] = (*a2)->f64[0];
  v11 = vmlaq_laneq_f64(vmulq_laneq_f64(v7, v5, 1), v6, v3, 1);
  v12 = vnegq_f64(v6);
  v6.f64[1] = (*a2)[2].f64[0];
  v13 = vmlaq_f64(vmulq_f64(v6, vnegq_f64(v3)), v5, v4);
  v14 = vmlaq_laneq_f64(vmulq_laneq_f64(v12, v8, 1), v9, v5, 1);
  v9.f64[1] = (*a2)[4].f64[0];
  v15 = vaddq_f64(v13, vmlaq_f64(vmulq_f64(v9, vnegq_f64(v5)), v8, v6));
  v16 = vaddq_f64(v11, v14);
  v11.f64[1] = v13.f64[0];
  v17 = vaddq_f64(vmlaq_f64(vmulq_f64(v4, vnegq_f64(v8)), v3, v9), v15);
  *&v4.f64[0] = *&vaddq_f64(v10, v16);
  *&v4.f64[1] = v17.i64[0];
  v18 = *(a1 + 8);
  v19 = vaddq_f64(v18[1], vdupq_laneq_s64(v17, 1));
  *v18 = vaddq_f64(*v18, v4);
  v18[1] = v19;
  v19.f64[0] = vmulq_laneq_f64(v2[5], v13, 1).f64[0] + vaddvq_f64(vmulq_f64(v11, v2[4]));
  v20 = *(a1 + 16);
  result = *v20 + v19.f64[0];
  *v20 = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIdE23add_volume_preservationEjRNS2_28vertex_placement_constraintsIdEEEUlPKDv3_dE_NS_9allocatorISB_EEFvSA_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZNK4geom35vertex_placement_constraint_factoryIdE23add_volume_preservationEjRNS_28vertex_placement_constraintsIdEEEUlPKDv3_dE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIdE23add_volume_optimizationEjRNS2_28vertex_placement_constraintsIdEEEUlPKDv3_dE_NS_9allocatorISB_EEFvSA_EE7__cloneEPNS0_6__baseISE_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2862913D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

float64x2_t _ZNSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIdE23add_volume_optimizationEjRNS2_28vertex_placement_constraintsIdEEEUlPKDv3_dE_NS_9allocatorISB_EEFvSA_EEclEOSA_(uint64_t a1, float64x2_t **a2)
{
  v2 = *a2;
  v4 = **a2;
  v3 = (*a2)[1];
  v5 = vsubq_f64((*a2)[2], v4);
  v6 = vsubq_f64((*a2)[3], v3);
  v7 = vsubq_f64((*a2)[4], v4);
  v8 = vsubq_f64((*a2)[5], v3);
  v9 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v6), v7, 1), v8, v5, 1);
  v8.f64[1] = v7.f64[0];
  v6.f64[1] = v5.f64[0];
  result = vmlaq_f64(vmulq_f64(v8, vnegq_f64(v5)), v7, v6);
  v11 = vmulq_n_f64(vzip1q_s64(v9, result), v9.f64[0]);
  v6.f64[0] = vmuld_lane_f64(v9.f64[0], result, 1);
  v5.f64[0] = v9.f64[0];
  v5.f64[1] = result.f64[0];
  v12 = *(a1 + 8);
  v13 = vaddq_f64(v12[1], v6);
  v14 = vaddq_f64(*v12, v11);
  *v12 = v14;
  v12[1] = v13;
  *&v11.f64[0] = vdupq_laneq_s64(v11, 1).u64[0];
  v11.f64[1] = vmuld_n_f64(result.f64[0], result.f64[0]);
  v14.f64[0] = vmuld_lane_f64(result.f64[0], result, 1);
  v15 = *(a1 + 8);
  v16 = vaddq_f64(v15[3], v14);
  v15[2] = vaddq_f64(v15[2], v11);
  v15[3] = v16;
  v9.f64[0] = vmuld_lane_f64(result.f64[1], result, 1);
  v6.f64[1] = v14.f64[0];
  v17 = *(a1 + 8);
  v18 = vaddq_f64(v17[5], v9);
  v17[4] = vaddq_f64(v17[4], v6);
  v17[5] = v18;
  v19 = v2[1];
  v20 = v2[2];
  v21 = v2[3];
  *&v13.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v19), v20, 1), v21, *v2, 1);
  v21.f64[1] = v2[2].f64[0];
  v19.f64[1] = v2->f64[0];
  v22 = vmlaq_f64(vmulq_f64(v21, vnegq_f64(*v2)), v20, v19);
  v13.f64[1] = v22.f64[0];
  v23 = vmulq_laneq_f64(v2[5], v22, 1);
  v23.f64[0] = v23.f64[0] + vaddvq_f64(vmulq_f64(v2[4], v13));
  v24 = *(a1 + 16);
  v25 = vmlaq_laneq_f64(v24[1], v23, result, 1);
  *v24 = vmlaq_n_f64(*v24, v5, v23.f64[0]);
  v24[1] = v25;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIdE23add_volume_optimizationEjRNS2_28vertex_placement_constraintsIdEEEUlPKDv3_dE_NS_9allocatorISB_EEFvSA_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZNK4geom35vertex_placement_constraint_factoryIdE23add_volume_optimizationEjRNS_28vertex_placement_constraintsIdEEEUlPKDv3_dE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL geom::internal::triangle_mesh_decimator<double>::is_edge_collapse_geometrically_safe(void *a1, unsigned int a2)
{
  v100 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a1[51];
  v6 = a1[27];
  if (a2 >= ((a1[28] - v6) >> 2))
  {
    *v98 = -1;
    v9 = -1;
    v8 = -1;
  }

  else
  {
    half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex((a1 + 4), *(v6 + 4 * a2) / 3u, *(v6 + 4 * a2) % 3u);
    geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices((a1 + 4), half_edge_for_face_vertex, v98);
    v8 = v98[0];
    v9 = v98[1];
  }

  v10 = (v5 + 48 * a2);
  geom::triangle_mesh_half_edge_connectivity::get_incident_faces_to_vertex(a1 + 4, v8, (a1 + 63));
  v11 = a1[63];
  v12 = a1[64];
  if (v11 != v12)
  {
    v13 = a1[1];
    v14 = a1[6];
    v16 = v10[1];
    v15 = v10[2];
    v17 = (v13 + 32 * v8);
    do
    {
      v18 = (v14 + 4 * (3 * *v11));
      v19 = *v18;
      *v99 = *v18;
      *&v99[4] = *(v18 + 1);
      v20 = *&v99[4] == v8 ? 1 : 2;
      v21 = v19 == v8 ? 0 : v20;
      v22 = v21 == 2 ? 0 : v21 + 1;
      v23 = *&v99[4 * v22];
      if (v23 != v9)
      {
        v24 = (v21 - 1);
        v25 = v19 == v8 ? 2 : v24;
        v26 = *&v99[4 * v25];
        if (v26 != v9)
        {
          v27 = (v13 + 32 * v23);
          v28 = (v13 + 32 * v26);
          v29 = v27[1];
          v30 = v17[1];
          v31 = vsubq_f64(*v27, *v17);
          v32 = vsubq_f64(v29, v30);
          v33 = v28[1];
          v34 = vsubq_f64(*v28, *v17);
          v35 = vsubq_f64(v33, v30);
          v36 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v32), v34, 1), v35, v31, 1);
          v35.f64[1] = v34.f64[0];
          v32.f64[1] = v31.f64[0];
          v37 = vmulq_f64(v35, vnegq_f64(v31));
          v38 = vsubq_f64(*v27, v16);
          v39 = vsubq_f64(v29, v15);
          v40 = vsubq_f64(*v28, v16);
          v41 = vsubq_f64(v33, v15);
          v42 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v39), v40, 1), v41, v38, 1);
          v41.f64[1] = v40.f64[0];
          v39.f64[1] = v38.f64[0];
          v43 = vmulq_f64(vmlaq_f64(v37, v34, v32), vmlaq_f64(vmulq_f64(v41, vnegq_f64(v38)), v40, v39));
          if (v43.f64[1] + vmulq_f64(v36, v42).f64[0] + v43.f64[0] <= 0.0)
          {
            goto LABEL_42;
          }
        }
      }

      ++v11;
    }

    while (v11 != v12);
  }

  v45 = v98[0];
  v44 = v98[1];
  geom::triangle_mesh_half_edge_connectivity::get_incident_faces_to_vertex(a1 + 4, v98[1], (a1 + 63));
  v46 = a1[63];
  v47 = a1[64];
  if (v46 != v47)
  {
    v48 = a1[1];
    v49 = a1[6];
    v51 = v10[1];
    v50 = v10[2];
    v52 = (v48 + 32 * v44);
    do
    {
      v53 = (v49 + 4 * (3 * *v46));
      v54 = *v53;
      *v99 = *v53;
      *&v99[4] = *(v53 + 1);
      v55 = *&v99[4] == v44 ? 1 : 2;
      v56 = v54 == v44 ? 0 : v55;
      v57 = v56 == 2 ? 0 : v56 + 1;
      v58 = *&v99[4 * v57];
      if (v58 != v45)
      {
        v59 = (v56 - 1);
        v60 = v54 == v44 ? 2 : v59;
        v61 = *&v99[4 * v60];
        if (v61 != v45)
        {
          v62 = (v48 + 32 * v58);
          v63 = (v48 + 32 * v61);
          v64 = v62[1];
          v65 = v52[1];
          v66 = vsubq_f64(*v62, *v52);
          v67 = vsubq_f64(v64, v65);
          v68 = v63[1];
          v69 = vsubq_f64(*v63, *v52);
          v70 = vsubq_f64(v68, v65);
          v71 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v67), v69, 1), v70, v66, 1);
          v70.f64[1] = v69.f64[0];
          v67.f64[1] = v66.f64[0];
          v72 = vmulq_f64(v70, vnegq_f64(v66));
          v73 = vsubq_f64(*v62, v51);
          v74 = vsubq_f64(v64, v50);
          v75 = vsubq_f64(*v63, v51);
          v76 = vsubq_f64(v68, v50);
          v77 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v74), v75, 1), v76, v73, 1);
          v76.f64[1] = v75.f64[0];
          v74.f64[1] = v73.f64[0];
          v78 = vmulq_f64(vmlaq_f64(v72, v69, v67), vmlaq_f64(vmulq_f64(v76, vnegq_f64(v73)), v75, v74));
          if (v78.f64[1] + vmulq_f64(v71, v77).f64[0] + v78.f64[0] <= 0.0)
          {
            goto LABEL_42;
          }
        }
      }

      ++v46;
    }

    while (v46 != v47);
  }

  v79 = a1[45];
  v80 = *(v79 + v98[0]);
  v81 = *(v79 + v98[1]);
  if ((v80 & 0x10) != 0 && (v81 & 0x10) != 0)
  {
LABEL_42:
    result = 0;
    goto LABEL_63;
  }

  if (((a1[37] - a1[36]) & 0x3FFFFFFFCLL) == 0)
  {
    goto LABEL_62;
  }

  if (v80 == 4 && v81 == 4)
  {
    v84 = a1[27];
    if (v4 < (a1[28] - v84) >> 2)
    {
      v85 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex((a1 + 4), *(v84 + 4 * v4) / 3u, *(v84 + 4 * v4) % 3u);
      if (geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge((a1 + 4), v85))
      {
        v86 = *(a1[27] + 4 * v4);
        v87 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex((a1 + 4), v86 / 3, v86 % 3);
        v97[0] = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face((a1 + 4), v87);
        if (geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge((a1 + 4), v87))
        {
          half_edge_face = -1;
          v89 = 1;
        }

        else
        {
          half_edge_twin = geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin((a1 + 4), v87);
          half_edge_face = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face((a1 + 4), half_edge_twin);
          v89 = 2;
        }

        v91 = 0;
        v97[1] = half_edge_face;
        v92 = a1[6];
        v93 = a1[45];
LABEL_55:
        v94 = 0;
        v95 = v92 + 4 * (3 * v97[v91]);
        *v99 = *v95;
        *&v99[8] = *(v95 + 8);
        while ((*(v93 + *&v99[v94]) & 8) == 0)
        {
          v94 += 4;
          if (v94 == 12)
          {
            if (++v91 != v89)
            {
              goto LABEL_55;
            }

            goto LABEL_59;
          }
        }

        goto LABEL_42;
      }
    }
  }

LABEL_59:
  if ((v80 & 5) == 0 || (v81 & 5) == 0 || (result = geom::triangle_mesh_atlas::edge_vertices_have_compatible_charts((a1 + 30), (a1 + 4), a2)))
  {
LABEL_62:
    result = 1;
  }

LABEL_63:
  v96 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom::internal::triangle_mesh_decimator<double>::update_edge_uvs(uint64_t a1, unsigned int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 5) == 1 && ((v4 = *(a1 + 216), a2 >= ((*(a1 + 224) - v4) >> 2)) ? (*v16 = -1, v6 = 0xFFFFFFFFLL) : (half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex((a1 + 32), *(v4 + 4 * a2) / 3u, *(v4 + 4 * a2) % 3u), geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices((a1 + 32), half_edge_for_face_vertex, v16), v6 = v16[0]), (v7 = *(a1 + 360), (*(v7 + v6) & 0xC) != 0) && (*(v7 + v16[1]) & 0xC) != 0))
  {
    v8 = 0;
  }

  else
  {
    memset(&v15, 0, sizeof(v15));
    v12 = 0;
    v13 = 0;
    v14 = 0;
    geom::triangle_mesh_atlas::edge_incident_wedges(a1 + 240, (a1 + 32), a2, &v15, &v12);
    memset(__p, 0, sizeof(__p));
    if (v15.__end_ != v15.__begin_)
    {
      std::vector<double>::__vallocate[abi:nn200100](__p, v15.__end_ - v15.__begin_);
    }

    v8 = 1;
    if (v12)
    {
      v13 = v12;
      operator delete(v12);
    }

    if (v15.__begin_)
    {
      v15.__end_ = v15.__begin_;
      operator delete(v15.__begin_);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void geom::internal::triangle_mesh_decimator<double>::recompute_vertex_quadric(void *a1@<X0>, unsigned int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v106 = *MEMORY[0x277D85DE8];
  geom::triangle_mesh_half_edge_connectivity::get_incident_faces_to_vertex(a1 + 4, a2, a3);
  *(a4 + 72) = 0;
  *(a4 + 56) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 8) = 0u;
  v8 = *a3;
  v9 = a3[1];
  if (*a3 == v9)
  {
    v19 = 0.0;
    goto LABEL_32;
  }

  v10 = a1[6];
  v11 = a1[1];
  v12 = a1[45];
  v13 = 0.0;
  v14 = 0.0;
  v15 = *(v12 + a2) & 0xF;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0uLL;
  v21 = 0uLL;
  do
  {
    v22 = 0;
    v23 = (v10 + 4 * (3 * *v8));
    v24 = *v23;
    v25 = v23[1];
    v105[0] = *v23;
    v105[1] = v25;
    v26 = v23[2];
    v105[2] = v23[2];
    v27 = -1;
    do
    {
      if (v105[v22] == a2)
      {
        v27 = v22;
      }

      ++v22;
    }

    while (v22 != 3);
    v28 = (v11 + 32 * v24);
    v29 = (v11 + 32 * v25);
    v30 = (v11 + 32 * v26);
    v32 = *v29;
    v31 = v29[1];
    v33 = v28[1];
    v34 = vsubq_f64(*v29, *v28);
    v35 = vsubq_f64(v31, v33);
    v37 = *v30;
    v36 = v30[1];
    v38 = vsubq_f64(*v30, *v28);
    v39 = vsubq_f64(v36, v33);
    v40 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v35), v38, 1), v39, v34, 1);
    v39.f64[1] = v38.f64[0];
    v35.f64[1] = v34.f64[0];
    v41 = vmlaq_f64(vmulq_f64(v39, vnegq_f64(v34)), v38, v35);
    v42 = vmulq_f64(v41, v41);
    v43 = v42.f64[1] + vmulq_f64(v40, v40).f64[0] + v42.f64[0];
    v44 = 0uLL;
    v45 = 0uLL;
    if (v43 > 0.0)
    {
      v46 = vextq_s8(v41, v41, 8uLL);
      v40.f64[1] = v41.f64[0];
      v41.f64[0] = 1.0 / sqrt(v43);
      v45 = vmulq_f64(v46, v41);
      v44 = vmulq_n_f64(v40, v41.f64[0]);
    }

    v47 = vmulq_f64(v33, v45).f64[0] + vaddvq_f64(vmulq_f64(*v28, v44));
    v19 = v19 + vmuld_n_f64(v44.f64[0], v44.f64[0]);
    v20 = vaddq_f64(vmulq_n_f64(vextq_s8(v44, v45, 8uLL), v44.f64[0]), v20);
    v48.f64[1] = v44.f64[1];
    v48.f64[0] = v47;
    v49 = vmulq_f64(v44, v48);
    v50 = vaddq_f64(v21, v49);
    *&v21.f64[0] = *&vsubq_f64(v21, v49);
    v21.f64[1] = v50.f64[1];
    v18 = vmuld_lane_f64(v45.f64[0], v44, 1) + v18;
    v17 = v17 - vmuld_lane_f64(v47, v44, 1);
    v16 = vmuld_n_f64(v45.f64[0], v45.f64[0]) + v16;
    v14 = v14 - v47 * v45.f64[0];
    v13 = v47 * v47 + v13;
    if (v15)
    {
      v104[0] = *v28;
      v104[1] = v33;
      v104[2] = v32;
      v104[3] = v31;
      v104[4] = v37;
      v104[5] = v36;
      v103[0] = (*(v12 + v24) & 0xF) != 0;
      v103[1] = (*(v12 + v25) & 0xF) != 0;
      v103[2] = (*(v12 + v26) & 0xF) != 0;
      v51 = v27;
      v52 = 0uLL;
      v53 = 0.0;
      if (v103[v27] == 1)
      {
        if (v27 == 2)
        {
          v54 = 0;
        }

        else
        {
          v54 = v27 + 1;
        }

        if (v54 == 2)
        {
          LOBYTE(v55) = 0;
        }

        else
        {
          LOBYTE(v55) = v54 + 1;
        }

        if (v103[v54])
        {
          v56 = &v104[2 * v51];
          v57 = *v56;
          v58 = v56[1];
          v59 = vaddq_f64(v45, v58);
          v60 = vaddq_f64(v44, *v56);
          v61 = &v104[2 * v54];
          v62 = vsubq_f64(*v61, v57);
          v63 = vsubq_f64(v61[1], v58);
          v64 = vsubq_f64(v60, v57);
          v65 = vsubq_f64(v59, v58);
          v66.f64[0] = v65.f64[0];
          v66.f64[1] = v64.f64[0];
          v67 = vnegq_f64(v63);
          v63.f64[1] = v62.f64[0];
          v68 = vmlaq_f64(vmulq_f64(v66, vnegq_f64(v62)), v64, v63);
          v69 = vmlaq_laneq_f64(vmulq_laneq_f64(v67, v64, 1), v65, v62, 1);
          v70 = vmulq_f64(v68, v68);
          v71 = v70.f64[1] + vmulq_f64(v69, v69).f64[0] + v70.f64[0];
          v72 = 0uLL;
          v73 = 0uLL;
          if (v71 > 0.0)
          {
            v74 = vextq_s8(v68, v68, 8uLL);
            v69.f64[1] = v68.f64[0];
            v68.f64[0] = 1.0 / sqrt(v71);
            v73 = vmulq_f64(v74, v68);
            v72 = vmulq_n_f64(v69, v68.f64[0]);
          }

          v75 = vmulq_f64(v58, v73).f64[0] + vaddvq_f64(vmulq_f64(v57, v72));
          v53 = vmuld_n_f64(v72.f64[0], v72.f64[0]);
          v76 = vmuld_lane_f64(v72.f64[1], v72, 1);
          v77 = vmuld_n_f64(v73.f64[0], v73.f64[0]);
          v78 = v75 * v75;
          v52 = vaddq_f64(vmulq_n_f64(vextq_s8(v72, v73, 8uLL), v72.f64[0]), 0);
          v82.f64[0] = 0.0 - v75 * v72.f64[0];
          v79 = vmuld_lane_f64(v73.f64[0], v72, 1) + 0.0;
          v80 = 0.0 - vmuld_lane_f64(v75, v72, 1);
          v81 = 0.0 - v75 * v73.f64[0];
          v55 = v55;
          v82.f64[1] = v76;
          if ((v103[v55] & 1) == 0)
          {
            goto LABEL_28;
          }

          v83 = vextq_s8(v64, v64, 8uLL).u64[0];
          v84 = vextq_s8(v66, v66, 8uLL).u64[0];
          v85 = vdupq_laneq_s64(v64, 1);
          goto LABEL_25;
        }

        v55 = v55;
        v79 = 0.0;
        v80 = 0.0;
        v77 = 0.0;
        v81 = 0.0;
        v78 = 0.0;
        v82 = 0uLL;
        if (v103[v55] == 1)
        {
          v86 = &v104[2 * v51];
          v57 = *v86;
          v58 = v86[1];
          v87 = vaddq_f64(v45, v58);
          v64 = vsubq_f64(vaddq_f64(v44, *v86), *v86);
          v65 = vsubq_f64(v87, v58);
          v85 = vextq_s8(v64, v64, 8uLL);
          v66.f64[0] = v65.f64[0];
          v66.f64[1] = v64.f64[0];
          v84 = vextq_s8(v66, v66, 8uLL).u64[0];
          v52 = 0uLL;
          v53 = 0.0;
          v83 = *&v85.f64[0];
LABEL_25:
          v88 = &v104[2 * v55];
          v89 = vsubq_f64(*v88, v57);
          v90 = vsubq_f64(v88[1], v58);
          v91 = vnegq_f64(v90);
          v90.f64[1] = v89.f64[0];
          *&v66.f64[1] = v84;
          *&v64.f64[1] = v83;
          v92 = vmlaq_f64(vmulq_f64(v66, vnegq_f64(v89)), v64, v90);
          v93 = vmlaq_laneq_f64(vmulq_f64(v85, v91), v65, v89, 1);
          v94 = vmulq_f64(v92, v92);
          v95 = v94.f64[1] + vmulq_f64(v93, v93).f64[0] + v94.f64[0];
          v96 = 0uLL;
          v97 = 0uLL;
          if (v95 > 0.0)
          {
            v93.f64[1] = v92.f64[0];
            v96.f64[0] = 1.0 / sqrt(v95);
            v97 = vmulq_f64(vextq_s8(v92, v92, 8uLL), v96);
            v96 = vmulq_n_f64(v93, v96.f64[0]);
          }

          v98 = vmulq_f64(v58, v97).f64[0] + vaddvq_f64(vmulq_f64(v57, v96));
          v53 = v53 + vmuld_n_f64(v96.f64[0], v96.f64[0]);
          v52 = vaddq_f64(v52, vmulq_n_f64(vextq_s8(v96, v97, 8uLL), v96.f64[0]));
          v99.f64[1] = v96.f64[1];
          v99.f64[0] = v98;
          v100 = vmulq_f64(v96, v99);
          v101 = vaddq_f64(v82, v100);
          *&v82.f64[0] = *&vsubq_f64(v82, v100);
          v82.f64[1] = v101.f64[1];
          v79 = v79 + vmuld_lane_f64(v97.f64[0], v96, 1);
          v80 = v80 - vmuld_lane_f64(v98, v96, 1);
          v77 = v77 + vmuld_n_f64(v97.f64[0], v97.f64[0]);
          v81 = v81 - v98 * v97.f64[0];
          v78 = v78 + v98 * v98;
        }
      }

      else
      {
        v79 = 0.0;
        v80 = 0.0;
        v77 = 0.0;
        v81 = 0.0;
        v78 = 0.0;
        v82 = 0uLL;
      }

LABEL_28:
      v19 = v19 + v53;
      v20 = vaddq_f64(v20, v52);
      v21 = vaddq_f64(v21, v82);
      v18 = v18 + v79;
      v17 = v17 + v80;
      v16 = v16 + v77;
      v14 = v14 + v81;
      v13 = v13 + v78;
    }

    ++v8;
  }

  while (v8 != v9);
  *(a4 + 8) = v20;
  *(a4 + 24) = v21;
  *(a4 + 40) = v18;
  *(a4 + 48) = v17;
  *(a4 + 56) = v16;
  *(a4 + 64) = v14;
  *(a4 + 72) = v13;
LABEL_32:
  *a4 = v19;
  v102 = *MEMORY[0x277D85DE8];
}

uint64_t geom::intersect_triangle_bbox_3<float>(float32x4_t *a1, _OWORD *a2, int32x4_t *a3)
{
  v258 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a1[1];
  v7 = vsubq_f32(v6, *a1);
  v8 = a1[2];
  v9 = vsubq_f32(v8, *a1);
  v10 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), vnegq_f32(v7)), v9, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL));
  v11 = fabsf(*&v10.i32[2]);
  v12 = v11 >= 0.00000011921;
  v13 = fabsf(*v10.i32);
  v14 = fabsf(*&v10.i32[1]);
  if (v13 >= 0.00000011921)
  {
    v12 = 1;
  }

  if (!v12 && v14 < 0.00000011921)
  {
    goto LABEL_29;
  }

  if (v13 < 0.00000011921 && v14 < 0.00000011921)
  {
    v25 = *a2;
    if (*v5.i32 != COERCE_FLOAT(*a2))
    {
      v43 = fabsf(*v5.i32);
      if (v43 == INFINITY)
      {
        if (*v5.i32 != *(a2 + 4))
        {
          goto LABEL_57;
        }
      }

      else
      {
        v45 = fabsf(*v25.i32);
        if (v45 == INFINITY || vabds_f32(*v5.i32, *v25.i32) >= (((v43 + v45) + 1.0) * 0.00000011921))
        {
          v46 = *(a2 + 4);
          if (*v5.i32 != v46)
          {
            v47 = fabsf(v46);
            if (v47 == INFINITY || vabds_f32(*v5.i32, v46) >= (((v43 + v47) + 1.0) * 0.00000011921))
            {
              goto LABEL_57;
            }
          }
        }
      }
    }

    v26 = vextq_s8(v25, v25, 4uLL).u64[0];
    v27 = vext_s8(a2[1], *&vextq_s8(*(a2 + 1), *(a2 + 1), 8uLL), 4uLL);
    v250 = 0;
    v253 = v26;
    v254 = __PAIR64__(HIDWORD(v26), v27.u32[0]);
    HIDWORD(v26) = v27.i32[1];
    v255 = v27;
    v256 = v26;
    LOBYTE(v20) = v250;
    if (v250)
    {
      v29 = v249;
      v30 = v250;
      do
      {
        v31 = v29->i64[0];
        v29 = (v29 + 8);
        v28.i64[0] = v31;
        v32 = vzip1q_s32(*a1, v28);
        v32.i32[2] = HIDWORD(v31);
        *a3++ = v32;
        --v30;
      }

      while (v30);
    }

    goto LABEL_28;
  }

  if (v11 >= 0.00000011921 || v14 >= 0.00000011921)
  {
    if (!v12)
    {
      v17 = *(a2 + 2);
      if (*&v5.i32[2] == v17)
      {
        goto LABEL_15;
      }

      v48 = fabsf(*&v5.i32[2]);
      if (v48 == INFINITY)
      {
        if (*&v5.i32[2] == *(a2 + 6))
        {
LABEL_15:
          v18 = *a2;
          v19 = a2[1];
          v250 = 0;
          v253 = v18.i64[0];
          v254 = __PAIR64__(v18.u32[1], v19);
          v18.i32[1] = DWORD1(v19);
          v255 = v19;
          v256 = v18.i64[0];
          LOBYTE(v20) = v250;
          if (v250)
          {
            v21 = v249;
            v22 = v250;
            do
            {
              v23 = v21->i64[0];
              v21 = (v21 + 8);
              v24.i64[0] = v23;
              v24.i64[1] = vextq_s8(*a1, *a1, 8uLL).u64[0];
              *a3++ = v24;
              --v22;
            }

            while (v22);
          }

          goto LABEL_28;
        }
      }

      else
      {
        v52 = fabsf(v17);
        if (v52 != INFINITY && vabds_f32(*&v5.i32[2], v17) < (((v48 + v52) + 1.0) * 0.00000011921))
        {
          goto LABEL_15;
        }

        v53 = *(a2 + 6);
        if (*&v5.i32[2] == v53)
        {
          goto LABEL_15;
        }

        v54 = fabsf(v53);
        if (v54 != INFINITY && vabds_f32(*&v5.i32[2], v53) < (((v48 + v54) + 1.0) * 0.00000011921))
        {
          goto LABEL_15;
        }
      }
    }

    goto LABEL_57;
  }

  v33 = *(a2 + 1);
  if (*&v5.i32[1] == v33)
  {
LABEL_25:
    v34 = vzip1_s32(*a2, *&vextq_s8(*a2, *a2, 8uLL));
    v35 = vzip1_s32(a2[1], *&vextq_s8(*(a2 + 1), *(a2 + 1), 8uLL));
    v253 = v34;
    v254 = __PAIR64__(v34.u32[1], v35.u32[0]);
    v250 = 0;
    v34.i32[1] = v35.i32[1];
    v255 = v35;
    v256 = v34;
    LOBYTE(v20) = v250;
    if (v250)
    {
      v37 = v249;
      v38 = v250;
      do
      {
        v39 = v37->i64[0];
        v37 = (v37 + 8);
        v36.i64[0] = v39;
        v40 = v36;
        v40.i32[1] = a1->i32[1];
        v40.i32[2] = HIDWORD(v39);
        *a3++ = v40;
        --v38;
      }

      while (v38);
    }

    goto LABEL_28;
  }

  v44 = fabsf(*&v5.i32[1]);
  if (v44 == INFINITY)
  {
    if (*&v5.i32[1] == *(a2 + 5))
    {
      goto LABEL_25;
    }
  }

  else
  {
    v49 = fabsf(v33);
    if (v49 != INFINITY && vabds_f32(*&v5.i32[1], v33) < (((v44 + v49) + 1.0) * 0.00000011921))
    {
      goto LABEL_25;
    }

    v50 = *(a2 + 5);
    if (*&v5.i32[1] == v50)
    {
      goto LABEL_25;
    }

    v51 = fabsf(v50);
    if (v51 != INFINITY && vabds_f32(*&v5.i32[1], v50) < (((v44 + v51) + 1.0) * 0.00000011921))
    {
      goto LABEL_25;
    }
  }

LABEL_57:
  v55 = a1[1];
  v55.i32[3] = 0;
  v56 = a1[2];
  v56.i32[3] = 0;
  v57 = vminnmq_f32(v55, v56);
  v58 = *a1;
  v58.i32[3] = 0;
  v57.i32[3] = 0;
  v59 = vminnmq_f32(v58, v57);
  v60 = *(a2 + 1);
  v61 = vcgtq_f32(v59, v60);
  v61.i32[3] = v61.i32[2];
  if ((vmaxvq_u32(v61) & 0x80000000) != 0)
  {
    goto LABEL_29;
  }

  v62 = vmaxnmq_f32(v55, v56);
  v62.i32[3] = 0;
  v63 = vmaxnmq_f32(v58, v62);
  v64 = *a2;
  v65 = vcgtq_f32(*a2, v63);
  v65.i32[3] = v65.i32[2];
  if ((vmaxvq_u32(v65) & 0x80000000) != 0)
  {
    goto LABEL_29;
  }

  v251 = 0;
  v66 = vmulq_f32(v10, v10);
  v66.f32[0] = sqrtf(v66.f32[1] + (v66.f32[2] + v66.f32[0]));
  if (v66.f32[0] <= 0.00000011921)
  {
    goto LABEL_201;
  }

  v67 = vdivq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), vdupq_lane_s32(*v66.f32, 0));
  v68 = vaddq_f32(vaddq_f32(v6, v5), v8);
  __asm { FMOV            V1.4S, #3.0 }

  v72 = vdivq_f32(v68, _Q1);
  v73 = v64;
  v73.i32[1] = v60.i32[1];
  v74 = v64;
  v74.i32[2] = v60.i32[2];
  _Q1.i32[0] = 0;
  _Q1.i64[1] = 0;
  v76 = vsubq_f32(v60, v64).u32[0];
  v77 = vmulq_f32(v67, v76);
  v78 = v77.f32[2] + vaddv_f32(*v77.f32);
  if (fabsf(v78) > 0.00000011921)
  {
    v79 = vmulq_f32(v67, v64);
    v80 = vmulq_f32(v72, v67);
    v81 = vadd_f32(vzip1_s32(*&vextq_s8(v79, v79, 8uLL), *&vextq_s8(v80, v80, 8uLL)), vadd_f32(vzip1_s32(*v79.i8, *v80.i8), vzip2_s32(*v79.i8, *v80.i8)));
    v82 = v81.f32[1];
    v83 = -(v81.f32[0] - v81.f32[1]) / v78;
    v84 = v83 > 1.0 || v83 < 0.0;
    if (v84)
    {
      v85 = 0;
    }

    else
    {
      v85 = 1;
      v251 = 1;
      v249[0] = vmlaq_n_f32(v64, v76, v83);
    }

    v86 = vmulq_f32(v67, v73);
    v87 = -((v86.f32[2] + vaddv_f32(*v86.f32)) - v81.f32[1]) / v78;
    if (v87 >= 0.0 && v87 <= 1.0)
    {
      v89 = vmlaq_n_f32(v73, v76, v87);
      v90 = v85;
      if (v84)
      {
LABEL_75:
        v251 = ++v85;
        v249[v90] = v89;
      }

      else
      {
        v91 = v249;
        v92 = v85;
        while (1)
        {
          v93 = vsubq_f32(v89, *v91);
          v94 = vmulq_f32(v93, v93);
          if (sqrtf(v94.f32[2] + vaddv_f32(*v94.f32)) <= 0.00000011921)
          {
            break;
          }

          ++v91;
          if (!--v92)
          {
            goto LABEL_75;
          }
        }
      }
    }

    v95 = v60;
    v95.i32[0] = v64.i32[0];
    v96 = vmulq_f32(v67, v74);
    v97 = -((v96.f32[2] + vaddv_f32(*v96.f32)) - v82) / v78;
    if (v97 >= 0.0 && v97 <= 1.0)
    {
      v99 = vmlaq_n_f32(v74, v76, v97);
      if (v85)
      {
        v100 = v85;
        v101 = v249;
        v102 = v85;
        while (1)
        {
          v103 = vsubq_f32(v99, *v101);
          v104 = vmulq_f32(v103, v103);
          if (sqrtf(v104.f32[2] + vaddv_f32(*v104.f32)) <= 0.00000011921)
          {
            break;
          }

          ++v101;
          if (!--v102)
          {
            goto LABEL_86;
          }
        }
      }

      else
      {
        v100 = 0;
LABEL_86:
        v251 = v85 + 1;
        v249[v100] = v99;
      }
    }

    v105 = vmulq_f32(v67, v95);
    v106 = -((v105.f32[2] + vaddv_f32(*v105.f32)) - v82) / v78;
    if (v106 >= 0.0 && v106 <= 1.0)
    {
      v108 = vmlaq_n_f32(v95, v76, v106);
      if (v251)
      {
        v109 = v249;
        v110 = v251;
        while (1)
        {
          v111 = vsubq_f32(v108, *v109);
          v112 = vmulq_f32(v111, v111);
          if (sqrtf(v112.f32[2] + vaddv_f32(*v112.f32)) <= 0.00000011921)
          {
            break;
          }

          ++v109;
          if (!--v110)
          {
            v113 = v251;
            goto LABEL_97;
          }
        }
      }

      else
      {
        v113 = 0;
LABEL_97:
        ++v251;
        v249[v113] = v108;
      }
    }
  }

  v114 = v64;
  v114.i32[0] = v60.i32[0];
  _Q1.f32[1] = v60.f32[1] - v64.f32[1];
  v115 = vmulq_f32(v67, _Q1);
  v116 = v115.f32[2] + vaddv_f32(*v115.f32);
  if (fabsf(v116) > 0.00000011921)
  {
    v117 = vmulq_f32(v67, v64);
    v118 = vmulq_f32(v72, v67);
    v119 = vadd_f32(vzip1_s32(*&vextq_s8(v117, v117, 8uLL), *&vextq_s8(v118, v118, 8uLL)), vadd_f32(vzip1_s32(*v117.i8, *v118.i8), vzip2_s32(*v117.i8, *v118.i8)));
    v120 = v119.f32[1];
    v121 = -(v119.f32[0] - v119.f32[1]) / v116;
    if (v121 >= 0.0 && v121 <= 1.0)
    {
      v123 = vmlaq_n_f32(v64, _Q1, v121);
      if (v251)
      {
        v124 = v249;
        v125 = v251;
        while (1)
        {
          v126 = vsubq_f32(v123, *v124);
          v127 = vmulq_f32(v126, v126);
          if (sqrtf(v127.f32[2] + vaddv_f32(*v127.f32)) <= 0.00000011921)
          {
            break;
          }

          ++v124;
          if (!--v125)
          {
            v128 = v251;
            goto LABEL_109;
          }
        }
      }

      else
      {
        v128 = 0;
LABEL_109:
        ++v251;
        v249[v128] = v123;
      }
    }

    v129 = vmulq_f32(v67, v114);
    v130 = -((v129.f32[2] + vaddv_f32(*v129.f32)) - v119.f32[1]) / v116;
    if (v130 >= 0.0 && v130 <= 1.0)
    {
      v132 = vmlaq_n_f32(v114, _Q1, v130);
      if (v251)
      {
        v133 = v249;
        v134 = v251;
        while (1)
        {
          v135 = vsubq_f32(v132, *v133);
          v136 = vmulq_f32(v135, v135);
          if (sqrtf(v136.f32[2] + vaddv_f32(*v136.f32)) <= 0.00000011921)
          {
            break;
          }

          ++v133;
          if (!--v134)
          {
            v137 = v251;
            goto LABEL_120;
          }
        }
      }

      else
      {
        v137 = 0;
LABEL_120:
        ++v251;
        v249[v137] = v132;
      }
    }

    v138 = v60;
    v138.i32[1] = v64.i32[1];
    v139 = vmulq_f32(v67, v74);
    v140 = -((v139.f32[2] + vaddv_f32(*v139.f32)) - v120) / v116;
    if (v140 >= 0.0 && v140 <= 1.0)
    {
      v142 = vmlaq_n_f32(v74, _Q1, v140);
      if (v251)
      {
        v143 = v249;
        v144 = v251;
        while (1)
        {
          v145 = vsubq_f32(v142, *v143);
          v146 = vmulq_f32(v145, v145);
          if (sqrtf(v146.f32[2] + vaddv_f32(*v146.f32)) <= 0.00000011921)
          {
            break;
          }

          ++v143;
          if (!--v144)
          {
            v147 = v251;
            goto LABEL_131;
          }
        }
      }

      else
      {
        v147 = 0;
LABEL_131:
        ++v251;
        v249[v147] = v142;
      }
    }

    v148 = vmulq_f32(v67, v138);
    v149 = -((v148.f32[2] + vaddv_f32(*v148.f32)) - v120) / v116;
    if (v149 >= 0.0 && v149 <= 1.0)
    {
      v151 = vmlaq_n_f32(v138, _Q1, v149);
      if (v251)
      {
        v152 = v249;
        v153 = v251;
        while (1)
        {
          v154 = vsubq_f32(v151, *v152);
          v155 = vmulq_f32(v154, v154);
          if (sqrtf(v155.f32[2] + vaddv_f32(*v155.f32)) <= 0.00000011921)
          {
            break;
          }

          ++v152;
          if (!--v153)
          {
            v156 = v251;
            goto LABEL_142;
          }
        }
      }

      else
      {
        v156 = 0;
LABEL_142:
        ++v251;
        v249[v156] = v151;
      }
    }
  }

  v157.i64[0] = 0;
  v157.i32[3] = 0;
  v157.f32[2] = v60.f32[2] - v64.f32[2];
  v158 = vmulq_f32(v67, v157);
  v159 = v158.f32[2] + vaddv_f32(*v158.f32);
  if (fabsf(v159) > 0.00000011921)
  {
    v160 = vmulq_f32(v67, v64);
    v161 = vmulq_f32(v72, v67);
    v162 = vadd_f32(vzip1_s32(*&vextq_s8(v160, v160, 8uLL), *&vextq_s8(v161, v161, 8uLL)), vadd_f32(vzip1_s32(*v160.i8, *v161.i8), vzip2_s32(*v160.i8, *v161.i8)));
    v163 = v162.f32[1];
    v164 = -(v162.f32[0] - v162.f32[1]) / v159;
    if (v164 >= 0.0 && v164 <= 1.0)
    {
      v166 = vmlaq_n_f32(v64, v157, v164);
      if (v251)
      {
        v167 = v249;
        v168 = v251;
        while (1)
        {
          v169 = vsubq_f32(v166, *v167);
          v170 = vmulq_f32(v169, v169);
          if (sqrtf(v170.f32[2] + vaddv_f32(*v170.f32)) <= 0.00000011921)
          {
            break;
          }

          ++v167;
          if (!--v168)
          {
            v171 = v251;
            goto LABEL_154;
          }
        }
      }

      else
      {
        v171 = 0;
LABEL_154:
        ++v251;
        v249[v171] = v166;
      }
    }

    v172 = vmulq_f32(v67, v114);
    v173 = -((v172.f32[2] + vaddv_f32(*v172.f32)) - v162.f32[1]) / v159;
    if (v173 >= 0.0 && v173 <= 1.0)
    {
      v175 = vmlaq_n_f32(v114, v157, v173);
      if (v251)
      {
        v176 = v249;
        v177 = v251;
        while (1)
        {
          v178 = vsubq_f32(v175, *v176);
          v179 = vmulq_f32(v178, v178);
          if (sqrtf(v179.f32[2] + vaddv_f32(*v179.f32)) <= 0.00000011921)
          {
            break;
          }

          ++v176;
          if (!--v177)
          {
            v180 = v251;
            goto LABEL_165;
          }
        }
      }

      else
      {
        v180 = 0;
LABEL_165:
        ++v251;
        v249[v180] = v175;
      }
    }

    v60.i32[2] = v64.i32[2];
    v181 = vmulq_f32(v67, v73);
    v182 = -((v181.f32[2] + vaddv_f32(*v181.f32)) - v162.f32[1]) / v159;
    if (v182 >= 0.0 && v182 <= 1.0)
    {
      v184 = vmlaq_n_f32(v73, v157, v182);
      if (v251)
      {
        v185 = v249;
        v186 = v251;
        while (1)
        {
          v187 = vsubq_f32(v184, *v185);
          v188 = vmulq_f32(v187, v187);
          if (sqrtf(v188.f32[2] + vaddv_f32(*v188.f32)) <= 0.00000011921)
          {
            break;
          }

          ++v185;
          if (!--v186)
          {
            v189 = v251;
            goto LABEL_176;
          }
        }
      }

      else
      {
        v189 = 0;
LABEL_176:
        ++v251;
        v249[v189] = v184;
      }
    }

    v190 = vmulq_f32(v67, v60);
    v191 = -((v190.f32[2] + vaddv_f32(*v190.f32)) - v163) / v159;
    if (v191 >= 0.0 && v191 <= 1.0)
    {
      v193 = vmlaq_n_f32(v60, v157, v191);
      if (v251)
      {
        v194 = v249;
        v195 = v251;
        while (1)
        {
          v196 = vsubq_f32(v193, *v194);
          v197 = vmulq_f32(v196, v196);
          if (sqrtf(v197.f32[2] + vaddv_f32(*v197.f32)) <= 0.00000011921)
          {
            break;
          }

          ++v194;
          if (!--v195)
          {
            v198 = v251;
            goto LABEL_187;
          }
        }
      }

      else
      {
        v198 = 0;
LABEL_187:
        ++v251;
        v249[v198] = v193;
      }
    }
  }

  v199 = v251;
  if (!v251)
  {
    goto LABEL_201;
  }

  v200 = 0;
  v201 = vmulq_f32(v7, v7);
  *&v202 = v201.f32[2] + vaddv_f32(*v201.f32);
  *v201.f32 = vrsqrte_f32(v202);
  *v201.f32 = vmul_f32(*v201.f32, vrsqrts_f32(v202, vmul_f32(*v201.f32, *v201.f32)));
  v203 = vmulq_n_f32(v7, vmul_f32(*v201.f32, vrsqrts_f32(v202, vmul_f32(*v201.f32, *v201.f32))).f32[0]);
  v204 = vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL);
  v205 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v203, v203), v203, 0xCuLL), vnegq_f32(v67)), v203, v204);
  v206 = vmulq_f32(v205, v205);
  *&v207 = v206.f32[1] + (v206.f32[2] + v206.f32[0]);
  *v206.f32 = vrsqrte_f32(v207);
  *v206.f32 = vmul_f32(*v206.f32, vrsqrts_f32(v207, vmul_f32(*v206.f32, *v206.f32)));
  v208 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v205, v205), v205, 0xCuLL), vmul_f32(*v206.f32, vrsqrts_f32(v207, vmul_f32(*v206.f32, *v206.f32))).f32[0]);
  v209 = 16 * v251;
  v210 = 0uLL;
  do
  {
    v211 = v249[v200 / 0x10];
    v210 = vaddq_f32(v210, v211);
    v200 += 16;
  }

  while (v209 != v200);
  v211.f32[0] = v251;
  v212 = vsubq_f32(v249[0], vdivq_f32(v210, vdupq_lane_s32(*v211.f32, 0)));
  v213 = vmulq_f32(v212, v212);
  v213.f32[0] = sqrtf(v213.f32[2] + vaddv_f32(*v213.f32));
  v244 = v203;
  v245 = v72;
  v243 = v208;
  if (fabsf(v213.f32[0]) > 0.000005)
  {
    v214 = 0;
    v215 = vdivq_f32(v212, vdupq_lane_s32(*v213.f32, 0));
    v216 = vmlaq_f32(vmulq_f32(v204, vnegq_f32(v215)), v67, vextq_s8(vuzp1q_s32(v215, v215), v215, 0xCuLL));
    v217 = vextq_s8(vuzp1q_s32(v216, v216), v216, 0xCuLL);
    v218 = vmulq_f32(v216, v216);
    *&v219 = v218.f32[1] + (v218.f32[2] + v218.f32[0]);
    *v218.f32 = vrsqrte_f32(v219);
    *v218.f32 = vmul_f32(*v218.f32, vrsqrts_f32(v219, vmul_f32(*v218.f32, *v218.f32)));
    v220 = vmulq_n_f32(v217, vmul_f32(*v218.f32, vrsqrts_f32(v219, vmul_f32(*v218.f32, *v218.f32))).f32[0]);
    v247 = vzip1q_s32(v215, v220);
    v246 = vextq_s8(v247, v247, 8uLL).u64[0];
    v221 = vzip1_s32(*&vextq_s8(v215, v215, 8uLL), *&vextq_s8(v220, v220, 8uLL));
    do
    {
      v248 = v249[v214 / 0x10];
      v222 = vmla_laneq_f32(vmla_lane_f32(vmul_n_f32(*v247.i8, v248.f32[0]), v246, *v248.f32, 1), v221, v248, 2);
      v223 = atan2f(v222.f32[1], v222.f32[0]);
      v224 = v248;
      v224.f32[3] = v223;
      *(&v253 + v214) = v224;
      v214 += 16;
    }

    while (v209 != v214);
    _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4geom12_GLOBAL__N_131compute_plane_box_intersectionsIfEEvNS2_11vector_typeIT_Lh3EvE5valueES8_RKNS2_4bboxIS6_Lh3EEERNS3_11fixed_arrayIS6_Lh3ELh9EEEEUlRKDv4_fSI_E_PSG_Lb0EEEvT1_SM_T0_NS_15iterator_traitsISM_E15difference_typeEb(&v253, &v253 + v199, 126 - 2 * __clz(v199), 1);
    if (v251)
    {
      for (i = 0; i < v251; ++i)
      {
        v249[i] = *(&v253 + i);
        LODWORD(v199) = v251;
      }
    }

    else
    {
      LODWORD(v199) = 0;
    }

    v203 = v244;
    v72 = v245;
    v208 = v243;
  }

  if (v199 >= 3)
  {
    v226 = 0;
    v227 = vsubq_f32(*a1, v72);
    v228 = vmulq_f32(v203, v227);
    v229 = vmulq_f32(v208, v227);
    v230 = vsubq_f32(a1[1], v72);
    v231 = vmulq_f32(v203, v230);
    v232 = vmulq_f32(v208, v230);
    v233 = vsubq_f32(a1[2], v72);
    v234 = vmulq_f32(v203, v233);
    v235 = vmulq_f32(v208, v233);
    do
    {
      v236 = vsubq_f32(v249[v226], v72);
      v237 = vmulq_f32(v203, v236);
      v238 = vmulq_f32(v208, v236);
      v252[v226++] = vadd_f32(vzip1_s32(*&vextq_s8(v237, v237, 8uLL), *&vextq_s8(v238, v238, 8uLL)), vadd_f32(vzip1_s32(*v237.i8, *v238.i8), vzip2_s32(*v237.i8, *v238.i8)));
    }

    while (v199 != v226);
    v257 = 0;
    v251 = v257;
    v20 = v257;
    if (v257)
    {
      v239 = 0;
      do
      {
        v249[v239] = vmlaq_lane_f32(vmlaq_n_f32(v245, v244, COERCE_FLOAT(*(&v253 + v239))), v243, *(&v253 + v239), 1);
        ++v239;
      }

      while (v20 != v239);
      LOBYTE(v20) = v251;
      if (v251)
      {
        v240 = v249;
        v241 = v251;
        do
        {
          v242 = *v240++;
          *a3++ = v242;
          --v241;
        }

        while (v241);
      }
    }
  }

  else
  {
LABEL_201:
    LOBYTE(v20) = 0;
  }

LABEL_28:
  if (v20 <= 2u)
  {
LABEL_29:
    LOBYTE(v20) = 0;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t geom::intersect_triangle_bbox_3<double>(float64x2_t *a1, uint64_t a2, int64x2_t *a3)
{
  v328 = *MEMORY[0x277D85DE8];
  v9 = a1[2];
  v10 = a1[3];
  v11 = *a1;
  v12 = a1[1];
  v13 = vsubq_f64(v9, *a1);
  v14 = vsubq_f64(v10, v12);
  v15 = a1[4];
  v16 = a1[5];
  v17 = vsubq_f64(v15, *a1);
  v18 = vsubq_f64(v16, v12);
  v19.f64[0] = v14.f64[0];
  *&v19.f64[1] = v13.i64[0];
  v20 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v14), v17, 1), v18, v13, 1);
  v18.f64[1] = v17.f64[0];
  v21 = vmlaq_f64(vmulq_f64(v18, vnegq_f64(v13)), v17, v19);
  v22 = fabs(v20.f64[0]);
  v23 = v22 >= 2.22044605e-16;
  v24 = fabs(*v21.i64);
  v25 = fabs(*&v21.i64[1]);
  if (v24 >= 2.22044605e-16)
  {
    v23 = 1;
  }

  if (v23 || v25 >= 2.22044605e-16)
  {
    if (v24 < 2.22044605e-16 && v25 < 2.22044605e-16)
    {
      v42 = *(a2 + 16);
      v43 = *a2;
      v44 = *(a2 + 48);
      v45 = *(a2 + 32);
      if (*v11.i64 == *a2 || ((v46 = vabdd_f64(*v11.i64, *v45.i64), vabdd_f64(*v11.i64, *v43.i64) > 2.22044605e-16) ? (v47 = *v11.i64 == *v45.i64) : (v47 = 1), !v47 ? (v48 = v46 > 2.22044605e-16) : (v48 = 0), !v48))
      {
        v49.n128_u64[0] = vextq_s8(v43, v43, 8uLL).u64[0];
        v50.i64[0] = vextq_s8(v45, v45, 8uLL).u64[0];
        v51.n128_u64[0] = v49.n128_u64[0];
        v51.n128_u64[1] = *(a2 + 16);
        v52.i64[0] = v50.i64[0];
        v52.i64[1] = *(a2 + 48);
        v320 = 0;
        v50.i64[1] = v42;
        v323 = v51;
        v324 = v50;
        v49.n128_u64[1] = v44;
        v325 = v52;
        v326 = v49;
        LOBYTE(v38) = v320;
        if (v320)
        {
          v53 = &v318;
          v54 = v320;
          do
          {
            v55 = *v53++;
            *a3 = vzip1q_s64(*a1, v55);
            a3[1] = vdupq_laneq_s64(v55, 1);
            a3 += 2;
            --v54;
          }

          while (v54);
        }

        goto LABEL_45;
      }
    }

    else if (v22 < 2.22044605e-16 && v25 < 2.22044605e-16)
    {
      v56 = *(a2 + 8);
      v57 = vabdd_f64(*&v11.i64[1], v56);
      v58 = *&v11.i64[1] != v56 && v57 > 2.22044605e-16;
      if (!v58 || (v66 = *(a2 + 40), *&v11.i64[1] == v66) || vabdd_f64(*&v11.i64[1], v66) <= 2.22044605e-16)
      {
        v59 = *a2;
        v59.n128_u64[1] = *(a2 + 16);
        v60 = *(a2 + 32);
        v61 = *(a2 + 48);
        v60.i64[1] = v61;
        v325 = v60;
        v60.i64[1] = v59.n128_i64[1];
        v320 = 0;
        v323 = v59;
        v324 = v60;
        v59.n128_u64[1] = v61;
        v326 = v59;
        LOBYTE(v38) = v320;
        if (v320)
        {
          v62 = &v318;
          v63 = v320;
          do
          {
            v64 = *v62++;
            v65 = *a1;
            *&v65.f64[0] = v64.i64[0];
            *a3 = v65;
            a3[1] = vdupq_laneq_s64(v64, 1);
            a3 += 2;
            --v63;
          }

          while (v63);
        }

        goto LABEL_45;
      }
    }

    else if (!v23)
    {
      v28 = *(a2 + 16);
      v29 = *a2;
      v30 = *(a2 + 32);
      if (*v12.i64 == v28 || ((v31 = *(a2 + 48), v34 = vabdd_f64(*v12.i64, v28) > 2.22044605e-16, v32 = vabdd_f64(*v12.i64, v31), v34) ? (_ZF = *v12.i64 == v31) : (_ZF = 1), !_ZF ? (v34 = v32 > 2.22044605e-16) : (v34 = 0), !v34))
      {
        v35.n128_u64[0] = *a2;
        v35.n128_u64[1] = vextq_s8(v29, v29, 8uLL).u64[0];
        v36.i64[0] = *(a2 + 32);
        v36.i64[1] = vextq_s8(v30, v30, 8uLL).u64[0];
        v320 = 0;
        v30.i64[1] = v35.n128_i64[1];
        v323 = v35;
        v324 = v30;
        v29.i64[1] = v36.i64[1];
        v325 = v36;
        v326 = v29;
        LOBYTE(v38) = v320;
        if (v320)
        {
          v39 = &v318;
          v40 = v320;
          do
          {
            v41 = *v39++;
            v37.i64[0] = *&a1[1].f64[0];
            *a3 = v41;
            a3[1] = v37;
            a3 += 2;
            --v40;
          }

          while (v40);
        }

        goto LABEL_45;
      }
    }

    v67 = *(a2 + 32);
    v68 = *(a2 + 48);
    v69 = vcgtq_f64(vminnmq_f64(v11, vminnmq_f64(v9, v15)), v67);
    if (((v69.i64[0] | v69.i64[1] | vcgtq_f64(vminnmq_f64(v12.u64[0], *&vminnmq_f64(v10.u64[0], v16.u64[0])), v68).u64[0]) & 0x8000000000000000) == 0)
    {
      v71 = *a2;
      v70 = *(a2 + 16);
      v72 = vcgtq_f64(*a2, vmaxnmq_f64(v11, vmaxnmq_f64(v9, v15)));
      if (((v72.i64[0] | v72.i64[1] | vcgtq_f64(v70, vmaxnmq_f64(v12.u64[0], *&vmaxnmq_f64(v10.u64[0], v16.u64[0]))).u64[0]) & 0x8000000000000000) == 0)
      {
        v73 = vextq_s8(v21, v21, 8uLL);
        v321 = 0;
        *&v74.f64[0] = v21.i64[0];
        v74.f64[1] = v73.f64[0];
        v75 = vmulq_f64(v74, v74);
        v75.f64[0] = sqrt(v75.f64[1] + vmulq_f64(v20, v20).f64[0] + v75.f64[0]);
        if (v75.f64[0] <= 2.22044605e-16)
        {
          goto LABEL_195;
        }

        *&v20.f64[1] = v21.i64[0];
        v76 = vdivq_f64(v73, v75);
        v77 = vdivq_f64(v20, vdupq_lane_s64(*&v75.f64[0], 0));
        v78 = vextq_s8(v77, v77, 8uLL).u64[0];
        v79 = vaddq_f64(vaddq_f64(v9, v11), v15);
        __asm { FMOV            V2.2D, #3.0 }

        v83 = vdivq_f64(v79, _Q2);
        v84 = vdivq_f64(vaddq_f64(vaddq_f64(v10, v12), v16), _Q2);
        v85.i64[0] = v71.i64[0];
        v85.i64[1] = v67.i64[1];
        v86.f64[1] = v70.f64[1];
        v86.f64[0] = v68.f64[0];
        *&v314 = vextq_s8(v71, v71, 8uLL).u64[0];
        v316 = vextq_s8(v85, v85, 8uLL);
        v87.i64[0] = v67.i64[0];
        v87.i64[1] = v71.i64[1];
        v88.f64[1] = v68.f64[1];
        v88.f64[0] = v70.f64[0];
        v89 = vextq_s8(v87, v87, 8uLL);
        v90.f64[1] = 0.0;
        v5.f64[0] = 0.0;
        v91 = vmulq_f64(v76, 0).f64[0];
        v92 = v91 + vaddvq_f64(vmulq_f64(v77, COERCE_UNSIGNED_INT64(*v67.i64 - *v71.i64)));
        v93 = vmulq_f64(v83, v77);
        v94 = vmulq_f64(v77, v71);
        v95 = vmulq_f64(v84, v76);
        if (fabs(v92) > 2.22044605e-16)
        {
          v96 = v89;
          v97 = *&v78;
          v98 = v83;
          v4 = vpaddq_f64(v94, v93);
          v99 = vmulq_f64(v76, v70);
          v100 = vaddq_f64(vzip1q_s64(v99, v95), v4);
          v4.f64[0] = v100.f64[1];
          v100.f64[0] = -(v100.f64[0] - v100.f64[1]) / v92;
          v101 = v84;
          v102 = v100.f64[0] > 1.0 || v100.f64[0] < 0.0;
          if (v102)
          {
            v103 = 0;
          }

          else
          {
            v103 = 1;
            v321 = 1;
            v90.f64[0] = *v67.i64 - *v71.i64;
            v84 = vmlaq_n_f64(v71, v90, v100.f64[0]);
            v318 = v84;
            v319 = vmlaq_n_f64(v70, 0, v100.f64[0]);
          }

          v106 = vmulq_f64(v77, v85);
          v84.f64[0] = -(*v99.i64 + vaddvq_f64(v106) - v100.f64[1]) / v92;
          if (v84.f64[0] >= 0.0 && v84.f64[0] <= 1.0)
          {
            v108 = vmlaq_f64(v70, v5, v84);
            *&v109.f64[0] = v71.i64[0];
            *&v109.f64[1] = v316.i64[0];
            v100 = vmlaq_n_f64(v109, COERCE_UNSIGNED_INT64(*v67.i64 - *v71.i64), v84.f64[0]);
            v110 = v103;
            if (v102)
            {
LABEL_69:
              v321 = ++v103;
              v115 = (&v318 + 2 * v110);
              *v115 = v100;
              v115[1] = v108;
            }

            else
            {
              v111 = &v318;
              v112 = v103;
              while (1)
              {
                v113 = vsubq_f64(v100, *v111);
                v114 = vsubq_f64(v108, v111[1]);
                if (sqrt(vmulq_f64(v114, v114).f64[0] + vaddvq_f64(vmulq_f64(v113, v113))) <= 2.22044605e-16)
                {
                  break;
                }

                v111 += 2;
                if (!--v112)
                {
                  goto LABEL_69;
                }
              }
            }
          }

          v100.f64[0] = -(vmulq_f64(v76, v68).f64[0] + vaddvq_f64(v94) - v4.f64[0]) / v92;
          v116 = v100.f64[0] < 0.0 || v100.f64[0] > 1.0;
          v84 = v101;
          if (!v116)
          {
            v106 = vmlaq_f64(v86, v5, v100);
            *&v117.f64[0] = v71.i64[0];
            v117.f64[1] = v314;
            v118 = vmlaq_n_f64(v117, COERCE_UNSIGNED_INT64(*v67.i64 - *v71.i64), v100.f64[0]);
            if (v103)
            {
              v119 = v103;
              v120 = &v318;
              v121 = v103;
              while (1)
              {
                v122 = vsubq_f64(v118, *v120);
                v123 = vsubq_f64(v106, v120[1]);
                if (sqrt(vmulq_f64(v123, v123).f64[0] + vaddvq_f64(vmulq_f64(v122, v122))) <= 2.22044605e-16)
                {
                  break;
                }

                v120 += 2;
                if (!--v121)
                {
                  goto LABEL_80;
                }
              }
            }

            else
            {
              v119 = 0;
LABEL_80:
              v321 = v103 + 1;
              v124 = (&v318 + 2 * v119);
              *v124 = v118;
              v124[1] = v106;
            }
          }

          *&v125.f64[0] = v71.i64[0];
          *&v125.f64[1] = v316.i64[0];
          *&v126.f64[0] = v77.i64[0];
          v78 = *&v97;
          v126.f64[1] = v97;
          v106.f64[0] = -(vmulq_f64(v76, v86).f64[0] + vaddvq_f64(vmulq_f64(v126, v125)) - v4.f64[0]) / v92;
          v127 = v106.f64[0] < 0.0 || v106.f64[0] > 1.0;
          v83 = v98;
          v89 = v96;
          if (!v127)
          {
            v3 = vmlaq_f64(v86, v5, v106);
            *&v128.f64[0] = v71.i64[0];
            *&v128.f64[1] = v316.i64[0];
            v4 = vmlaq_n_f64(v128, COERCE_UNSIGNED_INT64(*v67.i64 - *v71.i64), v106.f64[0]);
            if (v321)
            {
              v129 = &v318;
              v130 = v321;
              while (1)
              {
                v131 = vsubq_f64(v4, *v129);
                v132 = vsubq_f64(v3, v129[1]);
                if (sqrt(vmulq_f64(v132, v132).f64[0] + vaddvq_f64(vmulq_f64(v131, v131))) <= 2.22044605e-16)
                {
                  break;
                }

                v129 += 2;
                if (!--v130)
                {
                  v133 = v321;
                  goto LABEL_91;
                }
              }
            }

            else
            {
              v133 = 0;
LABEL_91:
              ++v321;
              v134 = (&v318 + 2 * v133);
              *v134 = v4;
              v134[1] = v3;
            }
          }
        }

        v135.f64[0] = 0.0;
        v135.f64[1] = *&v67.i64[1] - *&v71.i64[1];
        v136 = v91 + vaddvq_f64(vmulq_f64(v77, v135));
        if (fabs(v136) > 2.22044605e-16)
        {
          v137 = *&v78;
          v138 = vmulq_f64(v76, v70);
          v139 = vaddq_f64(vzip1q_s64(v138, v95), vpaddq_f64(v94, v93));
          v140 = v139.f64[1];
          v141 = -(v139.f64[0] - v139.f64[1]) / v136;
          if (v141 >= 0.0 && v141 <= 1.0)
          {
            v4 = vmlaq_n_f64(v70, 0, v141);
            v143 = vmlaq_n_f64(v71, v135, v141);
            if (v321)
            {
              v144 = &v318;
              v145 = v321;
              while (1)
              {
                v146 = vsubq_f64(v143, *v144);
                v147 = vsubq_f64(v4, v144[1]);
                if (sqrt(vmulq_f64(v147, v147).f64[0] + vaddvq_f64(vmulq_f64(v146, v146))) <= 2.22044605e-16)
                {
                  break;
                }

                v144 += 2;
                if (!--v145)
                {
                  v148 = v321;
                  goto LABEL_103;
                }
              }
            }

            else
            {
              v148 = 0;
LABEL_103:
              ++v321;
              v149 = (&v318 + 2 * v148);
              *v149 = v143;
              v149[1] = v4;
            }
          }

          v4.f64[0] = -(*v138.i64 + vaddvq_f64(vmulq_f64(v77, v87)) - v140) / v136;
          v150 = v4.f64[0] < 0.0 || v4.f64[0] > 1.0;
          v78 = *&v137;
          if (!v150)
          {
            v151.f64[0] = 0.0;
            v151.f64[1] = *&v67.i64[1] - *&v71.i64[1];
            v152 = vmlaq_f64(v88, v5, v4);
            *&v153.f64[0] = v67.i64[0];
            v153.f64[1] = v89.f64[0];
            v154 = vmlaq_n_f64(v153, v151, v4.f64[0]);
            if (v321)
            {
              v155 = &v318;
              v156 = v321;
              while (1)
              {
                v157 = vsubq_f64(v154, *v155);
                v158 = vsubq_f64(v152, v155[1]);
                if (sqrt(vmulq_f64(v158, v158).f64[0] + vaddvq_f64(vmulq_f64(v157, v157))) <= 2.22044605e-16)
                {
                  break;
                }

                v155 += 2;
                if (!--v156)
                {
                  v159 = v321;
                  goto LABEL_114;
                }
              }
            }

            else
            {
              v159 = 0;
LABEL_114:
              ++v321;
              v160 = (&v318 + 2 * v159);
              *v160 = v154;
              v160[1] = v152;
            }
          }

          v3.f64[0] = -(vmulq_f64(v76, v68).f64[0] + vaddvq_f64(v94) - v140) / v136;
          if (v3.f64[0] >= 0.0 && v3.f64[0] <= 1.0)
          {
            v162.f64[0] = 0.0;
            v162.f64[1] = *&v67.i64[1] - *&v71.i64[1];
            v163 = vmlaq_f64(v86, v5, v3);
            *&v164.f64[0] = v71.i64[0];
            v164.f64[1] = v314;
            v165 = vmlaq_n_f64(v164, v162, v3.f64[0]);
            if (v321)
            {
              v166 = &v318;
              v167 = v321;
              while (1)
              {
                v168 = vsubq_f64(v165, *v166);
                v169 = vsubq_f64(v163, v166[1]);
                if (sqrt(vmulq_f64(v169, v169).f64[0] + vaddvq_f64(vmulq_f64(v168, v168))) <= 2.22044605e-16)
                {
                  break;
                }

                v166 += 2;
                if (!--v167)
                {
                  v170 = v321;
                  goto LABEL_125;
                }
              }
            }

            else
            {
              v170 = 0;
LABEL_125:
              ++v321;
              v171 = (&v318 + 2 * v170);
              *v171 = v165;
              v171[1] = v163;
            }
          }

          *&v172.f64[0] = v67.i64[0];
          v172.f64[1] = v89.f64[0];
          *&v173.f64[0] = v77.i64[0];
          v173.f64[1] = v137;
          v6.f64[0] = -(vmulq_f64(v76, v68).f64[0] + vaddvq_f64(vmulq_f64(v173, v172)) - v140) / v136;
          if (v6.f64[0] >= 0.0 && v6.f64[0] <= 1.0)
          {
            v175 = vmlaq_f64(v68, v5, v6);
            v5.f64[1] = *&v67.i64[1] - *&v71.i64[1];
            *&v176.f64[0] = v67.i64[0];
            v176.f64[1] = v89.f64[0];
            v177 = vmlaq_n_f64(v176, v5, v6.f64[0]);
            if (v321)
            {
              v178 = &v318;
              v179 = v321;
              while (1)
              {
                v180 = vsubq_f64(v177, *v178);
                v181 = vsubq_f64(v175, v178[1]);
                if (sqrt(vmulq_f64(v181, v181).f64[0] + vaddvq_f64(vmulq_f64(v180, v180))) <= 2.22044605e-16)
                {
                  break;
                }

                v178 += 2;
                if (!--v179)
                {
                  v182 = v321;
                  goto LABEL_136;
                }
              }
            }

            else
            {
              v182 = 0;
LABEL_136:
              ++v321;
              v183 = (&v318 + 2 * v182);
              *v183 = v177;
              v183[1] = v175;
            }
          }
        }

        v68.f64[0] = v68.f64[0] - v70.f64[0];
        v184 = 0uLL;
        v185 = vmulq_f64(v77, 0);
        v186 = vmulq_f64(v76, v68).f64[0] + vaddvq_f64(v185);
        if (fabs(v186) > 2.22044605e-16)
        {
          v187 = vpaddq_f64(v94, v93);
          v188 = vmulq_f64(v76, v70);
          v185 = vzip1q_s64(v188, v95);
          v189 = vaddq_f64(v185, v187);
          v190 = v189.f64[1];
          v191 = -(v189.f64[0] - v189.f64[1]) / v186;
          if (v191 >= 0.0 && v191 <= 1.0)
          {
            v193 = vmlaq_n_f64(v70, v68, v191);
            v194 = vmlaq_n_f64(v71, 0, v191);
            if (v321)
            {
              v195 = &v318;
              v196 = v321;
              while (1)
              {
                v197 = vsubq_f64(v194, *v195);
                v198 = vsubq_f64(v193, v195[1]);
                v185 = vmulq_f64(v197, v197);
                if (sqrt(vmulq_f64(v198, v198).f64[0] + vaddvq_f64(v185)) <= 2.22044605e-16)
                {
                  break;
                }

                v195 += 2;
                if (!--v196)
                {
                  v199 = v321;
                  goto LABEL_148;
                }
              }
            }

            else
            {
              v199 = 0;
LABEL_148:
              ++v321;
              v200 = (&v318 + 2 * v199);
              *v200 = v194;
              v200[1] = v193;
            }
          }

          v201 = vextq_s8(v67, v67, 8uLL).u64[0];
          v184.f64[0] = -(*v188.i64 + vaddvq_f64(vmulq_f64(v77, v87)) - v190) / v186;
          if (v184.f64[0] >= 0.0 && v184.f64[0] <= 1.0)
          {
            v203 = vmlaq_f64(v88, v68, v184);
            v87.i64[1] = *&v89.f64[0];
            v204 = vmlaq_n_f64(v87, 0, v184.f64[0]);
            if (v321)
            {
              v205 = &v318;
              v206 = v321;
              while (1)
              {
                v207 = vsubq_f64(v204, *v205);
                v208 = vsubq_f64(v203, v205[1]);
                v185 = vmulq_f64(v207, v207);
                if (sqrt(vmulq_f64(v208, v208).f64[0] + vaddvq_f64(v185)) <= 2.22044605e-16)
                {
                  break;
                }

                v205 += 2;
                if (!--v206)
                {
                  v209 = v321;
                  goto LABEL_159;
                }
              }
            }

            else
            {
              v209 = 0;
LABEL_159:
              ++v321;
              v210 = (&v318 + 2 * v209);
              *v210 = v204;
              v210[1] = v203;
            }
          }

          v89.f64[0] = -(*v188.i64 + vaddvq_f64(vmulq_f64(v77, v85)) - v190) / v186;
          if (v89.f64[0] >= 0.0 && v89.f64[0] <= 1.0)
          {
            v212 = vmlaq_f64(v70, v68, v89);
            *&v185.f64[1] = v316.i64[1];
            v85.i64[1] = v316.i64[0];
            v213 = vmlaq_n_f64(v85, 0, v89.f64[0]);
            if (v321)
            {
              v214 = &v318;
              v215 = v321;
              while (1)
              {
                v216 = vsubq_f64(v213, *v214);
                v217 = vsubq_f64(v212, v214[1]);
                v185 = vmulq_f64(v216, v216);
                if (sqrt(vmulq_f64(v217, v217).f64[0] + vaddvq_f64(v185)) <= 2.22044605e-16)
                {
                  break;
                }

                v214 += 2;
                if (!--v215)
                {
                  v218 = v321;
                  goto LABEL_170;
                }
              }
            }

            else
            {
              v218 = 0;
LABEL_170:
              ++v321;
              v219 = (&v318 + 2 * v218);
              *v219 = v213;
              v219[1] = v212;
            }
          }

          *&v220.f64[0] = v67.i64[0];
          *&v220.f64[1] = v201;
          *&v221.f64[0] = v77.i64[0];
          *&v221.f64[1] = v78;
          v222 = vmulq_f64(v221, v220);
          v223 = vmulq_f64(v76, v88);
          v223.f64[0] = -(v223.f64[0] + vaddvq_f64(v222) - v190) / v186;
          if (v223.f64[0] >= 0.0 && v223.f64[0] <= 1.0)
          {
            v225 = vmlaq_f64(v88, v68, v223);
            v67.i64[1] = v201;
            v226 = vmlaq_n_f64(v67, 0, v223.f64[0]);
            if (v321)
            {
              v227 = &v318;
              v228 = v321;
              while (1)
              {
                v229 = vsubq_f64(v226, *v227);
                v230 = vsubq_f64(v225, v227[1]);
                v185 = vmulq_f64(v229, v229);
                if (sqrt(vmulq_f64(v230, v230).f64[0] + vaddvq_f64(v185)) <= 2.22044605e-16)
                {
                  break;
                }

                v227 += 2;
                if (!--v228)
                {
                  v231 = v321;
                  goto LABEL_181;
                }
              }
            }

            else
            {
              v231 = 0;
LABEL_181:
              ++v321;
              v232 = (&v318 + 2 * v231);
              *v232 = v226;
              v232[1] = v225;
            }
          }
        }

        v233 = v321;
        if (!v321)
        {
          goto LABEL_195;
        }

        v234 = 0;
        v235 = vmulq_f64(v14, v14);
        v235.f64[0] = sqrt(v235.f64[0] + vaddvq_f64(vmulq_f64(v13, v13)));
        v13.i64[1] = vextq_s8(v13, v13, 8uLL).u64[0];
        v235.f64[0] = 1.0 / v235.f64[0];
        v236 = vmulq_f64(v14, v235);
        v237 = vmulq_n_f64(v13, v235.f64[0]);
        v235.f64[0] = v236.f64[0];
        *&v235.f64[1] = v237.i64[0];
        v238.i64[0] = *&v76.f64[0];
        v238.i64[1] = v77.i64[0];
        v239 = vmlaq_f64(vmulq_f64(v235, vnegq_f64(v77)), v237, v238);
        v240 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v76), v237, 1), v236, v77, 1);
        v241 = vmulq_f64(v239, v239);
        v185.f64[0] = 1.0 / sqrt(v241.f64[1] + vmulq_f64(v240, v240).f64[0] + v241.f64[0]);
        v240.f64[1] = v239.f64[0];
        v242 = vmulq_n_f64(v240, v185.f64[0]);
        v304 = vextq_s8(v237, v237, 8uLL).u64[0];
        v305 = vextq_s8(v83, v83, 8uLL).u64[0];
        v243 = vextq_s8(v238, v238, 8uLL).u64[0];
        v244 = vdupq_laneq_s64(v77, 1);
        v245 = vmulq_laneq_f64(v185, v239, 1);
        v306 = vextq_s8(v242, v242, 8uLL).u64[0];
        v246 = 32 * v321;
        v247 = 0uLL;
        v248 = 0uLL;
        do
        {
          v249 = *(&v318 + v234);
          v248 = vaddq_f64(v248, *(&v318 + v234 + 16));
          v247 = vaddq_f64(v247, v249);
          v234 += 32;
        }

        while (v246 != v234);
        v249.f64[0] = v321;
        v250 = vdivq_f64(v247, vdupq_lane_s64(*&v249.f64[0], 0));
        v251 = vsubq_f64(v319, vdivq_f64(v248, v249));
        v252 = vsubq_f64(v318, v250);
        v253 = vmulq_f64(v252, v252);
        v253.f64[0] = sqrt(vmulq_f64(v251, v251).f64[0] + vaddvq_f64(v253));
        v309 = v237;
        v310 = v236;
        v307 = v245;
        v308 = v242;
        if (fabs(v253.f64[0]) > 1.0e-10)
        {
          v254 = 0;
          v252.i64[1] = vextq_s8(v252, v252, 8uLL).u64[0];
          v255 = vdivq_f64(v252, vdupq_lane_s64(*&v253.f64[0], 0));
          v256 = vdivq_f64(v251, v253);
          v257.f64[0] = v256.f64[0];
          v257.f64[1] = v255.f64[0];
          v238.i64[1] = v243;
          v77.i64[1] = v78;
          v258 = vmlaq_f64(vmulq_f64(v238, vnegq_f64(v255)), v77, v257);
          v259 = vmlaq_laneq_f64(vmulq_f64(v244, vnegq_f64(v256)), v76, v255, 1);
          v260 = vmulq_f64(v258, v258);
          v261 = vmulq_f64(v259, v259).f64[0];
          v259.f64[1] = v258.f64[0];
          v260.f64[0] = 1.0 / sqrt(v260.f64[1] + v261 + v260.f64[0]);
          v262 = vmulq_n_f64(v259, v260.f64[0]);
          v312 = vzip2q_s64(v255, v262);
          v313 = vzip1q_s64(v255, v262);
          v311 = vzip1q_s64(v256, vmulq_laneq_f64(v260, v258, 1));
          do
          {
            v315 = *(&v318 + v254 + 16);
            v317 = *(&v318 + v254);
            v263 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v313, v317.f64[0]), v312, v317, 1), v311, *&v315);
            v264 = atan2(v263.f64[1], v263.f64[0]);
            *&v265.f64[0] = v315;
            v265.f64[1] = v264;
            v266 = (&v323 + v254);
            *v266 = v317;
            v266[1] = v265;
            v254 += 32;
          }

          while (v246 != v254);
          _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4geom12_GLOBAL__N_131compute_plane_box_intersectionsIdEEvNS2_11vector_typeIT_Lh3EvE5valueES8_RKNS2_4bboxIS6_Lh3EEERNS3_11fixed_arrayIS6_Lh3ELh9EEEEUlRKDv4_dSI_E_PSG_Lb0EEEvT1_SM_T0_NS_15iterator_traitsISM_E15difference_typeEb(&v323, &v323 + 2 * v233, 126 - 2 * __clz(v233), 1);
          if (v321)
          {
            for (i = 0; i < v321; ++i)
            {
              v268 = &v323 + 2 * i;
              v269 = *v268;
              v270 = v268[1];
              v271 = (&v318 + 2 * i);
              *v271 = v269;
              v271[1] = v270;
              LODWORD(v233) = v321;
            }
          }

          else
          {
            LODWORD(v233) = 0;
          }

          v237 = v309;
          v236 = v310;
          v245 = v307;
          v242 = v308;
        }

        if (v233 >= 3)
        {
          v272 = 0;
          v273 = vsubq_f64(*a1, v83);
          v274 = vsubq_f64(a1[1], v84);
          v275 = vmulq_f64(v236, v274);
          v276 = vmulq_f64(v237, v273);
          v277 = vmulq_f64(v245, v274);
          v278 = vmulq_f64(v242, v273);
          v279 = vsubq_f64(a1[2], v83);
          v280 = vsubq_f64(a1[3], v84);
          v281 = vmulq_f64(v236, v280);
          v282 = vmulq_f64(v237, v279);
          v283 = vmulq_f64(v245, v280);
          v284 = vmulq_f64(v242, v279);
          v285 = vsubq_f64(a1[4], v83);
          v286 = vsubq_f64(a1[5], v84);
          v287 = vmulq_f64(v236, v286);
          v288 = vmulq_f64(v237, v285);
          v289 = vmulq_f64(v245, v286);
          v290 = vmulq_f64(v242, v285);
          do
          {
            v291 = &v318 + 2 * v272;
            v292 = vsubq_f64(*v291, v83);
            v293 = vsubq_f64(v291[1], v84);
            v322[v272++] = vaddq_f64(vzip1q_s64(vmulq_f64(v236, v293), vmulq_f64(v245, v293)), vpaddq_f64(vmulq_f64(v237, v292), vmulq_f64(v242, v292)));
          }

          while (v233 != v272);
          v327 = 0;
          v38 = v327;
          v321 = v327;
          if (v327)
          {
            v294 = 0;
            *&v297.f64[0] = v308.i64[0];
            *&v295.f64[0] = v309.i64[0];
            *&v295.f64[1] = v304;
            *&v296.f64[0] = v83.i64[0];
            *&v296.f64[1] = v305;
            *&v297.f64[1] = v306;
            do
            {
              v298 = *(&v323 + v294);
              v299 = &v318 + 2 * v294;
              *v299 = vmlaq_laneq_f64(vmlaq_n_f64(v296, v295, v298.f64[0]), v297, v298, 1);
              v299[1] = vmlaq_laneq_f64(vmlaq_f64(v84, v310, v298), v307, v298, 1);
              ++v294;
            }

            while (v38 != v294);
            LOBYTE(v38) = v321;
            if (v321)
            {
              v300 = &v318;
              v301 = v321;
              do
              {
                v302 = *v300;
                v303 = v300[1];
                v300 += 2;
                *a3 = v302;
                a3[1] = v303;
                a3 += 2;
                --v301;
              }

              while (v301);
            }
          }
        }

        else
        {
LABEL_195:
          LOBYTE(v38) = 0;
        }

LABEL_45:
        if (v38 > 2u)
        {
          goto LABEL_59;
        }
      }
    }
  }

  LOBYTE(v38) = 0;
LABEL_59:
  v104 = *MEMORY[0x277D85DE8];
  return v38;
}

uint64_t geom_intersect_triangle_bbox_3f(int32x4_t *a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, __n128 a5, __n128 a6)
{
  v6 = 0;
  v15 = *MEMORY[0x277D85DE8];
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v14[0] = a5;
  v14[1] = a6;
  v7.i64[0] = 0x7F0000007FLL;
  v7.i64[1] = 0x7F0000007FLL;
  v8 = vnegq_f32(v7);
  do
  {
    v9 = v14[v6];
    v9.i32[3] = 0;
    v8.i32[3] = 0;
    v8 = vminnmq_f32(v9, v8);
    v7.i32[3] = 0;
    v7 = vmaxnmq_f32(v9, v7);
    ++v6;
  }

  while (v6 != 2);
  v12[0] = v8;
  v12[1] = v7;
  result = geom::intersect_triangle_bbox_3<float>(v13, v12, a1);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom_intersect_triangle_bbox_3d(float64x2_t *a1, float64x2_t *a2, int64x2_t *a3)
{
  v3 = 0;
  v18 = *MEMORY[0x277D85DE8];
  v4 = a1[3];
  v16[2] = a1[2];
  v16[3] = v4;
  v5 = a1[5];
  v16[4] = a1[4];
  v16[5] = v5;
  v6 = a1[1];
  v16[0] = *a1;
  v16[1] = v6;
  v8 = a2[1];
  v17[0] = *a2;
  v17[1] = v8;
  v10 = a2[3];
  v7 = vdupq_n_s64(0x7FF0000000000000uLL);
  v8.f64[0] = INFINITY;
  v17[2] = a2[2];
  v17[3] = v10;
  v9 = vdupq_n_s64(0xFFF0000000000000);
  v10.f64[0] = -INFINITY;
  do
  {
    v11 = v17[v3];
    v12 = v17[v3 + 1];
    v7 = vminnmq_f64(v11, v7);
    v8 = vminnmq_f64(v12, *&v8.f64[0]);
    v9 = vmaxnmq_f64(v11, v9);
    v10 = vmaxnmq_f64(v12, *&v10.f64[0]);
    v3 += 2;
  }

  while (v3 != 4);
  v15[0] = v7;
  v15[1] = v8;
  v15[2] = v9;
  v15[3] = v10;
  result = geom::intersect_triangle_bbox_3<double>(v16, v15, a3);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void geom::anonymous namespace::clip_2d_triangle_with_polygon<float>(unsigned int a1, uint64_t a2, uint64_t a3, float32x2_t a4, float32x2_t a5, float32x2_t a6)
{
  v8 = 1;
  *(a3 + 72) = 1;
  *a3 = *&a4;
  v9 = vsub_f32(a5, a4);
  if (sqrtf(vaddv_f32(vmul_f32(v9, v9))) > 0.00000011921)
  {
    v8 = 2;
    *(a3 + 72) = 2;
    *(a3 + 8) = *&a5;
  }

  v10 = a3;
  v11 = v8;
  while (1)
  {
    v12 = vsub_f32(a6, *v10);
    if (sqrtf(vaddv_f32(vmul_f32(v12, v12))) <= 0.00000011921)
    {
      break;
    }

    ++v10;
    if (!--v11)
    {
      *(a3 + 72) = v8 + 1;
      *(a3 + 8 * v8) = *&a6;
      break;
    }
  }

  if (a1)
  {
    v13 = 0;
    v14 = a1;
    do
    {
      v65 = *(a3 + 72);
      if (v65)
      {
        for (i = 0; i < v65; ++i)
        {
          v64[i] = *(a3 + 8 * i);
          v16 = v65;
        }

        *(a3 + 72) = 0;
        v17 = v13 + 1;
        if (v13 + 1 == v14)
        {
          v18 = 0;
        }

        else
        {
          v18 = (v13 + 1);
        }

        if (v16)
        {
          v19 = 0;
          while (1)
          {
            v20 = v64[v19];
            v21 = _simd_orient_pf2(*(a2 + 8 * v13), *(a2 + 8 * v18), v20);
            v22 = v64[(v19 + v16 - 1) % v16];
            v23 = _simd_orient_pf2(*(a2 + 8 * v13), *(a2 + 8 * v18), v22);
            if (v21 >= 0.0)
            {
              break;
            }

            if (v23 >= 0.0)
            {
              v24 = *(a2 + 8 * v13);
              v25 = vsub_f32(*(a2 + 8 * v18), v24);
              v26 = vsub_f32(v22, v20);
              v27 = (-v26.f32[1] * v25.f32[0]) + (v26.f32[0] * v25.f32[1]);
              if (fabsf(v27) > 0.00000011921)
              {
                v28 = vsub_f32(v24, v20);
                v20 = vmla_n_f32(v20, v26, ((v28.f32[0] * v25.f32[1]) - (v28.f32[1] * v25.f32[0])) / v27);
                v29 = *(a3 + 72);
                v30 = a3;
                v31 = v29;
                if (*(a3 + 72))
                {
                  while (1)
                  {
                    v32 = vsub_f32(v20, *v30);
                    if (sqrtf(vaddv_f32(vmul_f32(v32, v32))) <= 0.00000011921)
                    {
                      goto LABEL_69;
                    }

                    ++v30;
                    if (!--v31)
                    {
                      LOBYTE(v33) = *(a3 + 72);
                      goto LABEL_68;
                    }
                  }
                }

                LOBYTE(v33) = *(a3 + 72);
                goto LABEL_68;
              }

              v33 = *(a3 + 72);
              v47 = a3;
              v48 = *(a3 + 72);
              if (*(a3 + 72))
              {
                while (1)
                {
                  v49 = vsub_f32(v22, *v47);
                  if (sqrtf(vaddv_f32(vmul_f32(v49, v49))) <= 0.00000011921)
                  {
                    break;
                  }

                  ++v47;
                  if (!--v48)
                  {
                    v50 = *(a3 + 72);
                    goto LABEL_47;
                  }
                }

                if (*(a3 + 72))
                {
LABEL_58:
                  v29 = v33;
                  v58 = a3;
                  v59 = v33;
                  while (1)
                  {
                    v60 = vsub_f32(v20, *v58);
                    if (sqrtf(vaddv_f32(vmul_f32(v60, v60))) <= 0.00000011921)
                    {
                      goto LABEL_69;
                    }

                    ++v58;
                    if (!--v59)
                    {
                      goto LABEL_68;
                    }
                  }
                }
              }

              else
              {
                v50 = 0;
LABEL_47:
                *(a3 + 72) = v33 + 1;
                *(a3 + 8 * v50) = v22;
                v33 = *(a3 + 72);
                if (*(a3 + 72))
                {
                  goto LABEL_58;
                }
              }

LABEL_67:
              v29 = 0;
LABEL_68:
              *(a3 + 72) = v33 + 1;
              *(a3 + 8 * v29) = v20;
            }

LABEL_69:
            if (++v19 == v16)
            {
              goto LABEL_72;
            }
          }

          if (v23 >= 0.0)
          {
            LOBYTE(v33) = *(a3 + 72);
            v44 = a3;
            v45 = v33;
            if (v33)
            {
              while (1)
              {
                v46 = vsub_f32(v20, *v44);
                if (sqrtf(vaddv_f32(vmul_f32(v46, v46))) <= 0.00000011921)
                {
                  goto LABEL_69;
                }

                ++v44;
                if (!--v45)
                {
                  v29 = *(a3 + 72);
                  goto LABEL_68;
                }
              }
            }
          }

          else
          {
            v34 = *(a2 + 8 * v13);
            v35 = vsub_f32(*(a2 + 8 * v18), v34);
            v36 = vsub_f32(v22, v20);
            v37 = (-v36.f32[1] * v35.f32[0]) + (v36.f32[0] * v35.f32[1]);
            if (fabsf(v37) <= 0.00000011921)
            {
              v33 = *(a3 + 72);
              v51 = a3;
              v52 = *(a3 + 72);
              if (*(a3 + 72))
              {
                while (1)
                {
                  v53 = vsub_f32(v22, *v51);
                  if (sqrtf(vaddv_f32(vmul_f32(v53, v53))) <= 0.00000011921)
                  {
                    break;
                  }

                  ++v51;
                  if (!--v52)
                  {
                    v54 = *(a3 + 72);
                    goto LABEL_50;
                  }
                }

                if (*(a3 + 72))
                {
LABEL_63:
                  v29 = v33;
                  v61 = a3;
                  v62 = v33;
                  while (1)
                  {
                    v63 = vsub_f32(v20, *v61);
                    if (sqrtf(vaddv_f32(vmul_f32(v63, v63))) <= 0.00000011921)
                    {
                      goto LABEL_69;
                    }

                    ++v61;
                    if (!--v62)
                    {
                      goto LABEL_68;
                    }
                  }
                }
              }

              else
              {
                v54 = 0;
LABEL_50:
                *(a3 + 72) = v33 + 1;
                *(a3 + 8 * v54) = v22;
                v33 = *(a3 + 72);
                if (*(a3 + 72))
                {
                  goto LABEL_63;
                }
              }
            }

            else
            {
              v38 = vsub_f32(v34, v20);
              v39 = vmla_n_f32(v20, v36, ((v38.f32[0] * v35.f32[1]) - (v38.f32[1] * v35.f32[0])) / v37);
              v33 = *(a3 + 72);
              v40 = a3;
              v41 = *(a3 + 72);
              if (*(a3 + 72))
              {
                while (1)
                {
                  v42 = vsub_f32(v39, *v40);
                  if (sqrtf(vaddv_f32(vmul_f32(v42, v42))) <= 0.00000011921)
                  {
                    break;
                  }

                  ++v40;
                  if (!--v41)
                  {
                    v43 = *(a3 + 72);
                    goto LABEL_44;
                  }
                }

                if (*(a3 + 72))
                {
LABEL_53:
                  v29 = v33;
                  v55 = a3;
                  v56 = v33;
                  while (1)
                  {
                    v57 = vsub_f32(v20, *v55);
                    if (sqrtf(vaddv_f32(vmul_f32(v57, v57))) <= 0.00000011921)
                    {
                      goto LABEL_69;
                    }

                    ++v55;
                    if (!--v56)
                    {
                      goto LABEL_68;
                    }
                  }
                }
              }

              else
              {
                v43 = 0;
LABEL_44:
                *(a3 + 72) = v33 + 1;
                *(a3 + 8 * v43) = v39;
                v33 = *(a3 + 72);
                if (*(a3 + 72))
                {
                  goto LABEL_53;
                }
              }
            }
          }

          goto LABEL_67;
        }
      }

      else
      {
        v17 = v13 + 1;
      }

LABEL_72:
      v13 = v17;
    }

    while (v17 != v14);
  }
}

uint64_t _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4geom12_GLOBAL__N_131compute_plane_box_intersectionsIfEEvNS2_11vector_typeIT_Lh3EvE5valueES8_RKNS2_4bboxIS6_Lh3EEERNS3_11fixed_arrayIS6_Lh3ELh9EEEEUlRKDv4_fSI_E_PSG_Lb0EEEvT1_SM_T0_NS_15iterator_traitsISM_E15difference_typeEb(uint64_t result, __int128 *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        if (*(a2 - 1) < *(v8 + 12))
        {
          v71 = *v8;
          goto LABEL_113;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v74 = *(v8 + 28);
      v75 = *(v8 + 12);
      v76 = *(v8 + 44);
      if (v74 >= v75)
      {
        if (v76 < v74)
        {
          v123 = *(v8 + 16);
          v124 = *(v8 + 32);
          *(v8 + 16) = v124;
          *(v8 + 32) = v123;
          v76 = *(&v123 + 3);
          if (*(&v124 + 3) < v75)
          {
            v125 = *v8;
            *v8 = v124;
            *(v8 + 16) = v125;
          }
        }
      }

      else
      {
        v77 = *v8;
        LODWORD(v78) = HIDWORD(*v8);
        if (v76 < v74)
        {
          *v8 = *(v8 + 32);
          goto LABEL_190;
        }

        *v8 = *(v8 + 16);
        *(v8 + 16) = v77;
        if (v76 < v78)
        {
          *(v8 + 16) = *(v8 + 32);
LABEL_190:
          *(v8 + 32) = v77;
          v76 = v78;
        }
      }

      if (*(a2 - 1) >= v76)
      {
        return result;
      }

      v135 = *(v8 + 32);
      *(v8 + 32) = *(a2 - 1);
      *(a2 - 1) = v135;
      if (*(v8 + 44) >= *(v8 + 28))
      {
        return result;
      }

      v137 = *(v8 + 16);
      v136 = *(v8 + 32);
      *(v8 + 16) = v136;
      *(v8 + 32) = v137;
      v138 = *(&v136 + 3);
      goto LABEL_204;
    }

    if (v9 == 5)
    {
      v65 = *(v8 + 28);
      v66 = *(v8 + 12);
      v67 = *(v8 + 44);
      if (v65 < v66)
      {
        v68 = *v8;
        LODWORD(v69) = HIDWORD(*v8);
        if (v67 < v65)
        {
          v70 = *(v8 + 32);
          *v8 = v70;
          *(v8 + 32) = v68;
          v66 = *(&v70 + 3);
          goto LABEL_196;
        }

        v133 = *(v8 + 16);
        *v8 = v133;
        *(v8 + 16) = v68;
        v66 = *(&v133 + 3);
        if (v67 < v69)
        {
          v134 = *(v8 + 32);
          *(v8 + 16) = v134;
          *(v8 + 32) = v68;
          v65 = *(&v134 + 3);
          goto LABEL_196;
        }

        v65 = v69;
LABEL_195:
        v69 = v67;
        goto LABEL_196;
      }

      if (v67 >= v65)
      {
        goto LABEL_195;
      }

      v118 = *(v8 + 16);
      v119 = *(v8 + 32);
      *(v8 + 16) = v119;
      *(v8 + 32) = v118;
      v65 = *(&v119 + 3);
      v69 = *(&v118 + 3);
      if (*(&v119 + 3) < v66)
      {
        v120 = *v8;
        *v8 = v119;
        *(v8 + 16) = v120;
        v66 = *(&v119 + 3);
        v65 = *(&v120 + 3);
      }

LABEL_196:
      v139 = *(v8 + 60);
      if (v139 < v69)
      {
        v141 = *(v8 + 32);
        v140 = *(v8 + 48);
        *(v8 + 32) = v140;
        *(v8 + 48) = v141;
        v139 = *(&v141 + 3);
        if (*(&v140 + 3) < v65)
        {
          v142 = *(v8 + 16);
          *(v8 + 16) = v140;
          *(v8 + 32) = v142;
          if (*(&v140 + 3) < v66)
          {
            v143 = *v8;
            *v8 = v140;
            *(v8 + 16) = v143;
          }
        }
      }

      if (*(a2 - 1) >= v139)
      {
        return result;
      }

      v144 = *(v8 + 48);
      *(v8 + 48) = *(a2 - 1);
      *(a2 - 1) = v144;
      if (*(v8 + 60) >= *(v8 + 44))
      {
        return result;
      }

      v145 = *(v8 + 32);
      v136 = *(v8 + 48);
      *(v8 + 32) = v136;
      *(v8 + 48) = v145;
      v138 = *(&v136 + 3);
      if (*(&v136 + 3) >= *(v8 + 28))
      {
        return result;
      }

      v146 = *(v8 + 16);
      *(v8 + 16) = v136;
      *(v8 + 32) = v146;
LABEL_204:
      if (v138 < *(v8 + 12))
      {
        v147 = *v8;
        *v8 = v136;
        *(v8 + 16) = v147;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v79 = (v8 + 16);
      v81 = v8 == a2 || v79 == a2;
      if (a4)
      {
        if (!v81)
        {
          v82 = 0;
          v83 = v8;
          do
          {
            v84 = *(v83 + 7);
            v85 = *(v83 + 3);
            v83 = v79;
            if (v84 < v85)
            {
              v86 = *v79;
              LODWORD(v87) = HIDWORD(*v79);
              v88 = v82;
              while (1)
              {
                *(v8 + v88 + 16) = *(v8 + v88);
                if (!v88)
                {
                  break;
                }

                v89 = *(v8 + v88 - 4);
                v88 -= 16;
                if (v87 >= v89)
                {
                  v90 = (v8 + v88 + 16);
                  goto LABEL_133;
                }
              }

              v90 = v8;
LABEL_133:
              *v90 = v86;
            }

            v79 = v83 + 1;
            v82 += 16;
          }

          while (v83 + 1 != a2);
        }
      }

      else if (!v81)
      {
        do
        {
          v126 = *(v7 + 7);
          v127 = *(v7 + 3);
          v7 = v79;
          if (v126 < v127)
          {
            v128 = *v79;
            LODWORD(v129) = HIDWORD(*v79);
            v130 = v79;
            do
            {
              v131 = v130;
              v132 = *--v130;
              *v131 = v132;
            }

            while (v129 < *(v131 - 5));
            *v130 = v128;
          }

          v79 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v91 = (v9 - 2) >> 1;
      v92 = v91;
      do
      {
        v93 = v92;
        if (v91 >= v92)
        {
          v94 = (2 * v92) | 1;
          v95 = v8 + 16 * v94;
          if (2 * v93 + 2 < v9 && *(v95 + 12) < *(v95 + 28))
          {
            v95 += 16;
            v94 = 2 * v93 + 2;
          }

          v96 = v8 + 16 * v93;
          if (*(v95 + 12) >= *(v96 + 12))
          {
            v97 = *v96;
            LODWORD(v98) = HIDWORD(*v96);
            do
            {
              v99 = v96;
              v96 = v95;
              *v99 = *v95;
              if (v91 < v94)
              {
                break;
              }

              v100 = 2 * v94;
              v94 = (2 * v94) | 1;
              v95 = v8 + 16 * v94;
              v101 = v100 + 2;
              if (v101 < v9 && *(v95 + 12) < *(v95 + 28))
              {
                v95 += 16;
                v94 = v101;
              }
            }

            while (*(v95 + 12) >= v98);
            *v96 = v97;
          }
        }

        v92 = v93 - 1;
      }

      while (v93);
      while (2)
      {
        v102 = 0;
        v103 = *v8;
        v104 = v8;
        do
        {
          v105 = &v104[v102];
          v106 = (v105 + 4);
          v107 = (2 * v102) | 1;
          v102 = 2 * v102 + 2;
          if (v102 >= v9)
          {
            v102 = v107;
          }

          else
          {
            v108 = v105[7];
            v109 = v105[11];
            v110 = (v105 + 8);
            if (v108 >= v109)
            {
              v102 = v107;
            }

            else
            {
              v106 = v110;
            }
          }

          *v104 = *v106;
          v104 = v106;
        }

        while (v102 <= ((v9 - 2) >> 1));
        if (v106 == --a2)
        {
LABEL_164:
          *v106 = v103;
        }

        else
        {
          *v106 = *a2;
          *a2 = v103;
          v111 = (v106 - v8 + 16) >> 4;
          v112 = v111 < 2;
          v113 = v111 - 2;
          if (!v112)
          {
            v114 = v113 >> 1;
            v115 = v8 + 16 * v114;
            if (*(v115 + 12) < *(v106 + 3))
            {
              v103 = *v106;
              LODWORD(v116) = HIDWORD(*v106);
              do
              {
                v117 = v106;
                v106 = v115;
                *v117 = *v115;
                if (!v114)
                {
                  break;
                }

                v114 = (v114 - 1) >> 1;
                v115 = v8 + 16 * v114;
              }

              while (*(v115 + 12) < v116);
              goto LABEL_164;
            }
          }
        }

        v112 = v9-- <= 2;
        if (v112)
        {
          return result;
        }

        continue;
      }
    }

    v10 = v8 + 16 * (v9 >> 1);
    v11 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v12 = *(v10 + 12);
      if (v12 >= *(v8 + 12))
      {
        if (v11 < v12)
        {
          v16 = *v10;
          *v10 = *(a2 - 1);
          *(a2 - 1) = v16;
          if (*(v10 + 12) < *(v8 + 12))
          {
            v17 = *v8;
            *v8 = *v10;
            *v10 = v17;
          }
        }
      }

      else
      {
        v13 = *v8;
        if (v11 < v12)
        {
          *v8 = *(a2 - 1);
          goto LABEL_27;
        }

        *v8 = *v10;
        *v10 = v13;
        if (*(a2 - 1) < *(&v13 + 3))
        {
          *v10 = *(a2 - 1);
LABEL_27:
          *(a2 - 1) = v13;
        }
      }

      v20 = (v10 - 16);
      v21 = *(v10 - 4);
      v22 = *(a2 - 5);
      if (v21 >= *(v8 + 28))
      {
        if (v22 < v21)
        {
          v24 = *v20;
          *v20 = *(a2 - 2);
          *(a2 - 2) = v24;
          if (*(v10 - 4) < *(v8 + 28))
          {
            v25 = *(v8 + 16);
            *(v8 + 16) = *v20;
            *v20 = v25;
          }
        }
      }

      else
      {
        v23 = *(v8 + 16);
        if (v22 < v21)
        {
          *(v8 + 16) = *(a2 - 2);
          goto LABEL_39;
        }

        *(v8 + 16) = *v20;
        *v20 = v23;
        if (*(a2 - 5) < *(&v23 + 3))
        {
          *v20 = *(a2 - 2);
LABEL_39:
          *(a2 - 2) = v23;
        }
      }

      v26 = (v10 + 16);
      v27 = *(v10 + 28);
      v28 = *(a2 - 9);
      if (v27 >= *(v8 + 44))
      {
        if (v28 < v27)
        {
          v30 = *v26;
          *v26 = *(a2 - 3);
          *(a2 - 3) = v30;
          if (*(v10 + 28) < *(v8 + 44))
          {
            v31 = *(v8 + 32);
            *(v8 + 32) = *v26;
            *v26 = v31;
          }
        }
      }

      else
      {
        v29 = *(v8 + 32);
        if (v28 < v27)
        {
          *(v8 + 32) = *(a2 - 3);
          goto LABEL_48;
        }

        *(v8 + 32) = *v26;
        *v26 = v29;
        if (*(a2 - 9) < *(&v29 + 3))
        {
          *v26 = *(a2 - 3);
LABEL_48:
          *(a2 - 3) = v29;
        }
      }

      v32 = *(v10 + 12);
      v33 = *(v10 - 4);
      v34 = *(v10 + 28);
      if (v32 >= v33)
      {
        v35 = *v10;
        if (v34 >= v32)
        {
          goto LABEL_58;
        }

        v36 = *v26;
        *v10 = *v26;
        *v26 = v35;
        if (*(&v36 + 3) < v33)
        {
          v35 = *v20;
          *v20 = v36;
          *v10 = v35;
          goto LABEL_58;
        }
      }

      else
      {
        v35 = *v20;
        if (v34 < v32)
        {
          *v20 = *v26;
          *v26 = v35;
          v35 = *v10;
LABEL_58:
          v37 = *v8;
          *v8 = v35;
          *v10 = v37;
          goto LABEL_59;
        }

        *v20 = *v10;
        *v10 = v35;
        if (v34 >= *(&v35 + 3))
        {
          goto LABEL_58;
        }

        v36 = *v26;
        *v10 = *v26;
        *v26 = v35;
      }

      v35 = v36;
      goto LABEL_58;
    }

    v14 = *(v8 + 12);
    if (v14 >= *(v10 + 12))
    {
      if (v11 < v14)
      {
        v18 = *v8;
        *v8 = *(a2 - 1);
        *(a2 - 1) = v18;
        if (*(v8 + 12) < *(v10 + 12))
        {
          v19 = *v10;
          *v10 = *v8;
          *v8 = v19;
        }
      }

      goto LABEL_59;
    }

    v15 = *v10;
    if (v11 < v14)
    {
      *v10 = *(a2 - 1);
LABEL_36:
      *(a2 - 1) = v15;
      goto LABEL_59;
    }

    *v10 = *v8;
    *v8 = v15;
    if (*(a2 - 1) < *(&v15 + 3))
    {
      *v8 = *(a2 - 1);
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v38 = *v8;
LABEL_62:
      v39 = 0;
      do
      {
        v40 = *(v8 + v39 + 28);
        v39 += 16;
      }

      while (v40 < *(&v38 + 3));
      v41 = v8 + v39;
      v42 = a2;
      if (v39 == 16)
      {
        v45 = a2;
        while (v41 < v45)
        {
          v43 = v45 - 1;
          v46 = *(v45-- - 1);
          if (v46 < *(&v38 + 3))
          {
            goto LABEL_72;
          }
        }

        v43 = v45;
      }

      else
      {
        do
        {
          v43 = v42 - 1;
          v44 = *(v42-- - 1);
        }

        while (v44 >= *(&v38 + 3));
      }

LABEL_72:
      if (v41 >= v43)
      {
        v52 = v41 - 16;
      }

      else
      {
        v47 = v41;
        v48 = v43;
        do
        {
          v49 = *v47;
          *v47 = *v48;
          *v48 = v49;
          do
          {
            v50 = *(v47 + 28);
            v47 += 16;
          }

          while (v50 < *(&v38 + 3));
          do
          {
            v51 = *(v48 - 1);
            v48 -= 4;
          }

          while (v51 >= *(&v38 + 3));
        }

        while (v47 < v48);
        v52 = v47 - 16;
      }

      if (v52 != v8)
      {
        *v8 = *v52;
      }

      *v52 = v38;
      if (v41 < v43)
      {
        goto LABEL_85;
      }

      v53 = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN4geom12_GLOBAL__N_131compute_plane_box_intersectionsIfEEvNS2_11vector_typeIT_Lh3EvE5valueES8_RKNS2_4bboxIS6_Lh3EEERNS3_11fixed_arrayIS6_Lh3ELh9EEEEUlRKDv4_fSI_E_PSG_EEbT1_SM_T0_(v8, v52);
      v8 = v52 + 16;
      result = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN4geom12_GLOBAL__N_131compute_plane_box_intersectionsIfEEvNS2_11vector_typeIT_Lh3EvE5valueES8_RKNS2_4bboxIS6_Lh3EEERNS3_11fixed_arrayIS6_Lh3ELh9EEEEUlRKDv4_fSI_E_PSG_EEbT1_SM_T0_((v52 + 16), a2);
      if (result)
      {
        a2 = v52;
        if (v53)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v53)
      {
LABEL_85:
        result = _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4geom12_GLOBAL__N_131compute_plane_box_intersectionsIfEEvNS2_11vector_typeIT_Lh3EvE5valueES8_RKNS2_4bboxIS6_Lh3EEERNS3_11fixed_arrayIS6_Lh3ELh9EEEEUlRKDv4_fSI_E_PSG_Lb0EEEvT1_SM_T0_NS_15iterator_traitsISM_E15difference_typeEb(v7, v52, a3, a4 & 1);
        a4 = 0;
        v8 = v52 + 16;
      }
    }

    else
    {
      v38 = *v8;
      if (*(v8 - 4) < *(v8 + 12))
      {
        goto LABEL_62;
      }

      if (*(&v38 + 3) >= *(a2 - 1))
      {
        v56 = v8 + 16;
        do
        {
          v8 = v56;
          if (v56 >= a2)
          {
            break;
          }

          v57 = *(v56 + 12);
          v56 += 16;
        }

        while (*(&v38 + 3) >= v57);
      }

      else
      {
        v54 = v8;
        do
        {
          v8 = v54 + 16;
          v55 = *(v54 + 28);
          v54 += 16;
        }

        while (*(&v38 + 3) >= v55);
      }

      v58 = a2;
      if (v8 < a2)
      {
        v59 = a2;
        do
        {
          v58 = v59 - 1;
          v60 = *(v59-- - 1);
        }

        while (*(&v38 + 3) < v60);
      }

      while (v8 < v58)
      {
        v61 = *v8;
        *v8 = *v58;
        *v58 = v61;
        do
        {
          v62 = *(v8 + 28);
          v8 += 16;
        }

        while (*(&v38 + 3) >= v62);
        do
        {
          v63 = *(v58-- - 1);
        }

        while (*(&v38 + 3) < v63);
      }

      v64 = (v8 - 16);
      if ((v8 - 16) != v7)
      {
        *v7 = *v64;
      }

      a4 = 0;
      *v64 = v38;
    }
  }

  v72 = *(v8 + 28);
  v73 = *(a2 - 1);
  if (v72 < *(v8 + 12))
  {
    v71 = *v8;
    if (v73 >= v72)
    {
      *v8 = *(v8 + 16);
      *(v8 + 16) = v71;
      if (*(a2 - 1) >= *(&v71 + 3))
      {
        return result;
      }

      *(v8 + 16) = *(a2 - 1);
    }

    else
    {
LABEL_113:
      *v8 = *(a2 - 1);
    }

    *(a2 - 1) = v71;
    return result;
  }

  if (v73 < v72)
  {
    v121 = *(v8 + 16);
    *(v8 + 16) = *(a2 - 1);
    *(a2 - 1) = v121;
    if (*(v8 + 28) < *(v8 + 12))
    {
      v122 = *v8;
      *v8 = *(v8 + 16);
      *(v8 + 16) = v122;
    }
  }

  return result;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN4geom12_GLOBAL__N_131compute_plane_box_intersectionsIfEEvNS2_11vector_typeIT_Lh3EvE5valueES8_RKNS2_4bboxIS6_Lh3EEERNS3_11fixed_arrayIS6_Lh3ELh9EEEEUlRKDv4_fSI_E_PSG_EEbT1_SM_T0_(float *a1, __int128 *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v10 = a1[7];
      v11 = *(a2 - 1);
      if (v10 >= a1[3])
      {
        if (v11 < v10)
        {
          v21 = *(a1 + 1);
          *(a1 + 1) = *(a2 - 1);
          *(a2 - 1) = v21;
          if (a1[7] < a1[3])
          {
            v22 = *a1;
            *a1 = *(a1 + 1);
            *(a1 + 1) = v22;
          }
        }

        return 1;
      }

      v3 = *a1;
      if (v11 >= v10)
      {
        *a1 = *(a1 + 1);
        *(a1 + 1) = v3;
        if (*(a2 - 1) >= *(&v3 + 3))
        {
          return 1;
        }

        *(a1 + 1) = *(a2 - 1);
        goto LABEL_15;
      }

LABEL_14:
      *a1 = *(a2 - 1);
LABEL_15:
      *(a2 - 1) = v3;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1[7];
      v5 = a1[3];
      v6 = a1[11];
      if (v4 >= v5)
      {
        if (v6 < v4)
        {
          v26 = *(a1 + 1);
          v27 = *(a1 + 2);
          *(a1 + 1) = v27;
          *(a1 + 2) = v26;
          v4 = *(&v27 + 3);
          v8 = *(&v26 + 3);
          if (*(&v27 + 3) < v5)
          {
            v28 = *a1;
            *a1 = v27;
            *(a1 + 1) = v28;
            v5 = *(&v27 + 3);
            v4 = *(&v28 + 3);
          }

          goto LABEL_61;
        }
      }

      else
      {
        v7 = *a1;
        LODWORD(v8) = HIDWORD(*a1);
        if (v6 < v4)
        {
          v9 = *(a1 + 2);
          *a1 = v9;
          *(a1 + 2) = v7;
          v5 = *(&v9 + 3);
          goto LABEL_61;
        }

        v41 = *(a1 + 1);
        *a1 = v41;
        *(a1 + 1) = v7;
        v5 = *(&v41 + 3);
        if (v6 < v8)
        {
          v42 = *(a1 + 2);
          *(a1 + 1) = v42;
          *(a1 + 2) = v7;
          v4 = *(&v42 + 3);
          goto LABEL_61;
        }

        v4 = v8;
      }

      v8 = v6;
LABEL_61:
      v48 = a1[15];
      if (v48 < v8)
      {
        v50 = *(a1 + 2);
        v49 = *(a1 + 3);
        *(a1 + 2) = v49;
        *(a1 + 3) = v50;
        v48 = *(&v50 + 3);
        if (*(&v49 + 3) < v4)
        {
          v51 = *(a1 + 1);
          *(a1 + 1) = v49;
          *(a1 + 2) = v51;
          if (*(&v49 + 3) < v5)
          {
            v52 = *a1;
            *a1 = v49;
            *(a1 + 1) = v52;
          }
        }
      }

      if (*(a2 - 1) >= v48)
      {
        return 1;
      }

      v53 = *(a1 + 3);
      *(a1 + 3) = *(a2 - 1);
      *(a2 - 1) = v53;
      if (a1[15] >= a1[11])
      {
        return 1;
      }

      v54 = *(a1 + 2);
      v44 = *(a1 + 3);
      *(a1 + 2) = v44;
      *(a1 + 3) = v54;
      v46 = *(&v44 + 3);
      if (*(&v44 + 3) >= a1[7])
      {
        return 1;
      }

      v55 = *(a1 + 1);
      *(a1 + 1) = v44;
      *(a1 + 2) = v55;
      goto LABEL_69;
    }

    v16 = a1[7];
    v17 = a1[3];
    v18 = a1[11];
    if (v16 >= v17)
    {
      if (v18 < v16)
      {
        v29 = *(a1 + 1);
        v30 = *(a1 + 2);
        *(a1 + 1) = v30;
        *(a1 + 2) = v29;
        v18 = *(&v29 + 3);
        if (*(&v30 + 3) < v17)
        {
          v31 = *a1;
          *a1 = v30;
          *(a1 + 1) = v31;
        }
      }

      goto LABEL_55;
    }

    v19 = *a1;
    LODWORD(v20) = HIDWORD(*a1);
    if (v18 >= v16)
    {
      *a1 = *(a1 + 1);
      *(a1 + 1) = v19;
      if (v18 >= v20)
      {
        goto LABEL_55;
      }

      *(a1 + 1) = *(a1 + 2);
    }

    else
    {
      *a1 = *(a1 + 2);
    }

    *(a1 + 2) = v19;
    v18 = v20;
LABEL_55:
    if (*(a2 - 1) >= v18)
    {
      return 1;
    }

    v43 = *(a1 + 2);
    *(a1 + 2) = *(a2 - 1);
    *(a2 - 1) = v43;
    if (a1[11] >= a1[7])
    {
      return 1;
    }

    v45 = *(a1 + 1);
    v44 = *(a1 + 2);
    *(a1 + 1) = v44;
    *(a1 + 2) = v45;
    v46 = *(&v44 + 3);
LABEL_69:
    if (v46 < a1[3])
    {
      v56 = *a1;
      *a1 = v44;
      *(a1 + 1) = v56;
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 1) < a1[3])
    {
      v3 = *a1;
      goto LABEL_14;
    }

    return 1;
  }

LABEL_16:
  v12 = a1[7];
  v13 = a1[3];
  v14 = a1[11];
  if (v12 >= v13)
  {
    if (v14 < v12)
    {
      v24 = *(a1 + 1);
      v23 = *(a1 + 2);
      *(a1 + 1) = v23;
      *(a1 + 2) = v24;
      if (*(&v23 + 3) < v13)
      {
        v25 = *a1;
        *a1 = v23;
        *(a1 + 1) = v25;
      }
    }
  }

  else
  {
    v15 = *a1;
    if (v14 >= v12)
    {
      *a1 = *(a1 + 1);
      *(a1 + 1) = v15;
      if (v14 >= *(&v15 + 3))
      {
        goto LABEL_39;
      }

      *(a1 + 1) = *(a1 + 2);
    }

    else
    {
      *a1 = *(a1 + 2);
    }

    *(a1 + 2) = v15;
  }

LABEL_39:
  v32 = a1 + 12;
  if (a1 + 12 == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  v35 = a1 + 8;
  while (1)
  {
    if (v32[3] < v35[3])
    {
      v36 = *v32;
      LODWORD(v37) = HIDWORD(*v32);
      v38 = v33;
      while (1)
      {
        *(a1 + v38 + 48) = *(a1 + v38 + 32);
        if (v38 == -32)
        {
          break;
        }

        v39 = *(a1 + v38 + 28);
        v38 -= 16;
        if (v37 >= v39)
        {
          v40 = (a1 + v38 + 48);
          goto LABEL_47;
        }
      }

      v40 = a1;
LABEL_47:
      *v40 = v36;
      if (++v34 == 8)
      {
        return v32 + 4 == a2;
      }
    }

    v35 = v32;
    v33 += 16;
    v32 += 4;
    if (v32 == a2)
    {
      return 1;
    }
  }
}

void geom::anonymous namespace::clip_2d_triangle_with_polygon<double>(unsigned int a1, uint64_t a2, __n128 *a3, float64x2_t a4, float64x2_t a5, float64x2_t a6)
{
  v69 = *MEMORY[0x277D85DE8];
  v8 = 1;
  a3[9].n128_u8[0] = 1;
  *a3 = a4;
  v9 = vsubq_f64(a5, a4);
  if (sqrt(vaddvq_f64(vmulq_f64(v9, v9))) > 2.22044605e-16)
  {
    v8 = 2;
    a3[9].n128_u8[0] = 2;
    a3[1] = a5;
  }

  v10 = a3;
  v11 = v8;
  while (1)
  {
    v12 = vsubq_f64(a6, *v10);
    if (sqrt(vaddvq_f64(vmulq_f64(v12, v12))) <= 2.22044605e-16)
    {
      break;
    }

    ++v10;
    if (!--v11)
    {
      a3[9].n128_u8[0] = v8 + 1;
      a3[v8] = a6;
      break;
    }
  }

  if (a1)
  {
    v13 = 0;
    v14 = a1;
    v64 = a1;
    do
    {
      v68 = a3[9].n128_u8[0];
      if (v68)
      {
        for (i = 0; i < v68; ++i)
        {
          v67[i] = a3[i];
          v16 = v68;
        }

        a3[9].n128_u8[0] = 0;
        v17 = v13 + 1;
        if (v13 + 1 == v14)
        {
          v18 = 0;
        }

        else
        {
          v18 = (v13 + 1);
        }

        if (v16)
        {
          v19 = 0;
          while (1)
          {
            v66 = v67[v19];
            v20 = _simd_orient_pd2(*(a2 + 16 * v13), *(a2 + 16 * v18), v66);
            v65 = v67[(v19 + v16 - 1) % v16];
            v21 = _simd_orient_pd2(*(a2 + 16 * v13), *(a2 + 16 * v18), v65);
            if (v20 >= 0.0)
            {
              break;
            }

            v22 = v66;
            if (v21 >= 0.0)
            {
              v23 = *(a2 + 16 * v13);
              v24 = vsubq_f64(*(a2 + 16 * v18), v23);
              v25 = vsubq_f64(v65, v66);
              v26 = -v25.f64[1] * v24.f64[0] + v25.f64[0] * v24.f64[1];
              if (fabs(v26) > 2.22044605e-16)
              {
                v27 = vsubq_f64(v23, v66);
                v22 = vmlaq_n_f64(v66, v25, (v27.f64[0] * v24.f64[1] - v27.f64[1] * v24.f64[0]) / v26);
                v28 = a3[9].n128_u8[0];
                v29 = a3;
                v30 = v28;
                if (a3[9].n128_u8[0])
                {
                  while (1)
                  {
                    v31 = vsubq_f64(v22, *v29);
                    if (sqrt(vaddvq_f64(vmulq_f64(v31, v31))) <= 2.22044605e-16)
                    {
                      goto LABEL_69;
                    }

                    ++v29;
                    if (!--v30)
                    {
                      LOBYTE(v32) = a3[9].n128_u8[0];
                      goto LABEL_68;
                    }
                  }
                }

                LOBYTE(v32) = a3[9].n128_u8[0];
                goto LABEL_68;
              }

              v32 = a3[9].n128_u8[0];
              v46 = a3;
              v47 = a3[9].n128_u8[0];
              if (a3[9].n128_u8[0])
              {
                while (1)
                {
                  v48 = vsubq_f64(v65, *v46);
                  if (sqrt(vaddvq_f64(vmulq_f64(v48, v48))) <= 2.22044605e-16)
                  {
                    break;
                  }

                  ++v46;
                  if (!--v47)
                  {
                    v49 = a3[9].n128_u8[0];
                    goto LABEL_47;
                  }
                }

                if (a3[9].n128_u8[0])
                {
LABEL_58:
                  v28 = v32;
                  v57 = a3;
                  v58 = v32;
                  while (1)
                  {
                    v59 = vsubq_f64(v66, *v57);
                    if (sqrt(vaddvq_f64(vmulq_f64(v59, v59))) <= 2.22044605e-16)
                    {
                      goto LABEL_69;
                    }

                    ++v57;
                    if (!--v58)
                    {
                      goto LABEL_68;
                    }
                  }
                }
              }

              else
              {
                v49 = 0;
LABEL_47:
                a3[9].n128_u8[0] = v32 + 1;
                a3[v49] = v65;
                v32 = a3[9].n128_u8[0];
                if (a3[9].n128_u8[0])
                {
                  goto LABEL_58;
                }
              }

LABEL_67:
              v28 = 0;
LABEL_68:
              a3[9].n128_u8[0] = v32 + 1;
              a3[v28] = v22;
            }

LABEL_69:
            if (++v19 == v16)
            {
              v14 = v64;
              goto LABEL_72;
            }
          }

          if (v21 >= 0.0)
          {
            LOBYTE(v32) = a3[9].n128_u8[0];
            v43 = a3;
            v44 = v32;
            v22 = v66;
            if (v32)
            {
              while (1)
              {
                v45 = vsubq_f64(v66, *v43);
                if (sqrt(vaddvq_f64(vmulq_f64(v45, v45))) <= 2.22044605e-16)
                {
                  goto LABEL_69;
                }

                ++v43;
                if (!--v44)
                {
                  v28 = a3[9].n128_u8[0];
                  goto LABEL_68;
                }
              }
            }
          }

          else
          {
            v33 = *(a2 + 16 * v13);
            v34 = vsubq_f64(*(a2 + 16 * v18), v33);
            v22 = v66;
            v35 = vsubq_f64(v65, v66);
            v36 = -v35.f64[1] * v34.f64[0] + v35.f64[0] * v34.f64[1];
            if (fabs(v36) <= 2.22044605e-16)
            {
              v32 = a3[9].n128_u8[0];
              v50 = a3;
              v51 = a3[9].n128_u8[0];
              if (a3[9].n128_u8[0])
              {
                while (1)
                {
                  v52 = vsubq_f64(v65, *v50);
                  if (sqrt(vaddvq_f64(vmulq_f64(v52, v52))) <= 2.22044605e-16)
                  {
                    break;
                  }

                  ++v50;
                  if (!--v51)
                  {
                    v53 = a3[9].n128_u8[0];
                    goto LABEL_50;
                  }
                }

                if (a3[9].n128_u8[0])
                {
LABEL_63:
                  v28 = v32;
                  v60 = a3;
                  v61 = v32;
                  while (1)
                  {
                    v62 = vsubq_f64(v66, *v60);
                    if (sqrt(vaddvq_f64(vmulq_f64(v62, v62))) <= 2.22044605e-16)
                    {
                      goto LABEL_69;
                    }

                    ++v60;
                    if (!--v61)
                    {
                      goto LABEL_68;
                    }
                  }
                }
              }

              else
              {
                v53 = 0;
LABEL_50:
                a3[9].n128_u8[0] = v32 + 1;
                a3[v53] = v65;
                v32 = a3[9].n128_u8[0];
                if (a3[9].n128_u8[0])
                {
                  goto LABEL_63;
                }
              }
            }

            else
            {
              v37 = vsubq_f64(v33, v66);
              v38 = vmlaq_n_f64(v66, v35, (v37.f64[0] * v34.f64[1] - v37.f64[1] * v34.f64[0]) / v36);
              v32 = a3[9].n128_u8[0];
              v39 = a3;
              v40 = a3[9].n128_u8[0];
              if (a3[9].n128_u8[0])
              {
                while (1)
                {
                  v41 = vsubq_f64(v38, *v39);
                  if (sqrt(vaddvq_f64(vmulq_f64(v41, v41))) <= 2.22044605e-16)
                  {
                    break;
                  }

                  ++v39;
                  if (!--v40)
                  {
                    v42 = a3[9].n128_u8[0];
                    goto LABEL_44;
                  }
                }

                if (a3[9].n128_u8[0])
                {
LABEL_53:
                  v28 = v32;
                  v54 = a3;
                  v55 = v32;
                  while (1)
                  {
                    v56 = vsubq_f64(v66, *v54);
                    if (sqrt(vaddvq_f64(vmulq_f64(v56, v56))) <= 2.22044605e-16)
                    {
                      goto LABEL_69;
                    }

                    ++v54;
                    if (!--v55)
                    {
                      goto LABEL_68;
                    }
                  }
                }
              }

              else
              {
                v42 = 0;
LABEL_44:
                a3[9].n128_u8[0] = v32 + 1;
                a3[v42] = v38;
                v32 = a3[9].n128_u8[0];
                if (a3[9].n128_u8[0])
                {
                  goto LABEL_53;
                }
              }
            }
          }

          goto LABEL_67;
        }
      }

      else
      {
        v17 = v13 + 1;
      }

LABEL_72:
      v13 = v17;
    }

    while (v17 != v14);
  }

  v63 = *MEMORY[0x277D85DE8];
}

uint64_t _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4geom12_GLOBAL__N_131compute_plane_box_intersectionsIdEEvNS2_11vector_typeIT_Lh3EvE5valueES8_RKNS2_4bboxIS6_Lh3EEERNS3_11fixed_arrayIS6_Lh3ELh9EEEEUlRKDv4_dSI_E_PSG_Lb0EEEvT1_SM_T0_NS_15iterator_traitsISM_E15difference_typeEb(uint64_t result, __int128 *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 5;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        if (*(a2 - 1) >= *(v8 + 3))
        {
          return result;
        }

        v117 = *v8;
        v118 = v8[1];
        v119 = *(a2 - 1);
        *v8 = *(a2 - 2);
        v8[1] = v119;
LABEL_188:
        *(a2 - 2) = v117;
        *(a2 - 1) = v118;
        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v123 = *(v8 + 7);
      v124 = *(v8 + 3);
      v125 = *(v8 + 11);
      if (v123 >= v124)
      {
        if (v125 < v123)
        {
          v192 = v8[2];
          v191 = v8[3];
          v194 = v8[4];
          v193 = v8[5];
          v8[2] = v194;
          v8[3] = v193;
          v8[4] = v192;
          v8[5] = v191;
          v125 = *(&v191 + 1);
          if (*(&v193 + 1) < v124)
          {
            v195 = *v8;
            v196 = v8[1];
            *v8 = v194;
            v8[1] = v193;
            v8[2] = v195;
            v8[3] = v196;
          }
        }
      }

      else
      {
        v127 = *v8;
        v126 = v8[1];
        v128 = *(v8 + 3);
        if (v125 < v123)
        {
          v129 = v8[5];
          *v8 = v8[4];
          v8[1] = v129;
          goto LABEL_191;
        }

        v210 = v8[3];
        *v8 = v8[2];
        v8[1] = v210;
        v8[2] = v127;
        v8[3] = v126;
        if (v125 < v128)
        {
          v211 = v8[5];
          v8[2] = v8[4];
          v8[3] = v211;
LABEL_191:
          v8[4] = v127;
          v8[5] = v126;
          v125 = v128;
        }
      }

      if (*(a2 - 1) >= v125)
      {
        return result;
      }

      v212 = v8[4];
      v213 = v8[5];
      v214 = *(a2 - 1);
      v8[4] = *(a2 - 2);
      v8[5] = v214;
      *(a2 - 2) = v212;
      *(a2 - 1) = v213;
      if (*(v8 + 11) >= *(v8 + 7))
      {
        return result;
      }

      v216 = v8[2];
      v215 = v8[3];
      v218 = v8[4];
      v217 = v8[5];
      v8[2] = v218;
      v8[3] = v217;
      v8[4] = v216;
      v8[5] = v215;
      v219 = *(&v217 + 1);
      goto LABEL_205;
    }

    if (v9 == 5)
    {
      v110 = *(v8 + 7);
      v111 = *(v8 + 3);
      v112 = *(v8 + 11);
      if (v110 < v111)
      {
        v114 = *v8;
        v113 = v8[1];
        v115 = *(v8 + 3);
        if (v112 < v110)
        {
          v116 = v8[5];
          *v8 = v8[4];
          v8[1] = v116;
          v8[4] = v114;
          v8[5] = v113;
          v111 = *(&v116 + 1);
          goto LABEL_197;
        }

        v206 = v8[3];
        *v8 = v8[2];
        v8[1] = v206;
        v8[2] = v114;
        v8[3] = v113;
        v111 = *(&v206 + 1);
        if (v112 < v115)
        {
          v207 = v8[5];
          v8[2] = v8[4];
          v8[3] = v207;
          v8[4] = v114;
          v8[5] = v113;
          v110 = *(&v207 + 1);
          goto LABEL_197;
        }

        v110 = v115;
LABEL_196:
        v115 = v112;
        goto LABEL_197;
      }

      if (v112 >= v110)
      {
        goto LABEL_196;
      }

      v179 = v8[2];
      v180 = v8[3];
      v182 = v8[4];
      v181 = v8[5];
      v8[2] = v182;
      v8[3] = v181;
      v8[4] = v179;
      v8[5] = v180;
      v110 = *(&v181 + 1);
      v115 = *(&v180 + 1);
      if (*(&v181 + 1) < v111)
      {
        v183 = *v8;
        v184 = v8[1];
        *v8 = v182;
        v8[1] = v181;
        v8[2] = v183;
        v8[3] = v184;
        v111 = *(&v181 + 1);
        v110 = *(&v184 + 1);
      }

LABEL_197:
      v220 = *(v8 + 15);
      if (v220 < v115)
      {
        v222 = v8[4];
        v221 = v8[5];
        v224 = v8[6];
        v223 = v8[7];
        v8[4] = v224;
        v8[5] = v223;
        v8[6] = v222;
        v8[7] = v221;
        v220 = *(&v221 + 1);
        if (*(&v223 + 1) < v110)
        {
          v225 = v8[2];
          v226 = v8[3];
          v8[2] = v224;
          v8[3] = v223;
          v8[4] = v225;
          v8[5] = v226;
          if (*(&v223 + 1) < v111)
          {
            v227 = *v8;
            v228 = v8[1];
            *v8 = v224;
            v8[1] = v223;
            v8[2] = v227;
            v8[3] = v228;
          }
        }
      }

      if (*(a2 - 1) >= v220)
      {
        return result;
      }

      v229 = v8[6];
      v230 = v8[7];
      v231 = *(a2 - 1);
      v8[6] = *(a2 - 2);
      v8[7] = v231;
      *(a2 - 2) = v229;
      *(a2 - 1) = v230;
      if (*(v8 + 15) >= *(v8 + 11))
      {
        return result;
      }

      v233 = v8[4];
      v232 = v8[5];
      v218 = v8[6];
      v217 = v8[7];
      v8[4] = v218;
      v8[5] = v217;
      v8[6] = v233;
      v8[7] = v232;
      v219 = *(&v217 + 1);
      if (*(&v217 + 1) >= *(v8 + 7))
      {
        return result;
      }

      v234 = v8[2];
      v235 = v8[3];
      v8[2] = v218;
      v8[3] = v217;
      v8[4] = v234;
      v8[5] = v235;
LABEL_205:
      if (v219 < *(v8 + 3))
      {
        v236 = *v8;
        v237 = v8[1];
        *v8 = v218;
        v8[1] = v217;
        v8[2] = v236;
        v8[3] = v237;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v130 = v8 + 2;
      v132 = v8 == a2 || v130 == a2;
      if (a4)
      {
        if (!v132)
        {
          v133 = 0;
          v134 = v8;
          do
          {
            v135 = *(v134 + 7);
            v136 = *(v134 + 3);
            v134 = v130;
            if (v135 < v136)
            {
              v137 = *v130;
              v138 = v130[1];
              v139 = *(v130 + 3);
              v140 = v133;
              while (1)
              {
                v141 = v8 + v140;
                v142 = *(v8 + v140 + 16);
                *(v141 + 2) = *(v8 + v140);
                *(v141 + 3) = v142;
                if (!v140)
                {
                  break;
                }

                v140 -= 32;
                if (v139 >= *(v141 - 1))
                {
                  v143 = (v8 + v140 + 32);
                  goto LABEL_132;
                }
              }

              v143 = v8;
LABEL_132:
              *v143 = v137;
              v143[1] = v138;
            }

            v130 = v134 + 2;
            v133 += 32;
          }

          while (v134 + 2 != a2);
        }
      }

      else if (!v132)
      {
        do
        {
          v197 = *(v7 + 56);
          v198 = *(v7 + 24);
          v7 = v130;
          if (v197 < v198)
          {
            v199 = *v130;
            v200 = v130[1];
            v201 = *(v130 + 3);
            v202 = v130;
            do
            {
              v203 = v202;
              v204 = *(v202 - 2);
              v202 -= 2;
              v205 = *(v203 - 1);
              *v203 = v204;
              *(v203 + 1) = v205;
            }

            while (v201 < *(v203 - 5));
            *v202 = v199;
            v202[1] = v200;
          }

          v130 += 2;
        }

        while ((v7 + 32) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v144 = (v9 - 2) >> 1;
        v145 = v144;
        do
        {
          v146 = v145;
          if (v144 >= v145)
          {
            v147 = (2 * v145) | 1;
            v148 = &v8[2 * v147];
            if (2 * v146 + 2 < v9 && *(v148 + 3) < *(v148 + 7))
            {
              v148 += 2;
              v147 = 2 * v146 + 2;
            }

            v149 = &v8[2 * v146];
            if (*(v148 + 3) >= *(v149 + 3))
            {
              v150 = *v149;
              v151 = v149[1];
              v152 = *(v149 + 3);
              do
              {
                v153 = v149;
                v149 = v148;
                v154 = v148[1];
                *v153 = *v148;
                v153[1] = v154;
                if (v144 < v147)
                {
                  break;
                }

                v155 = 2 * v147;
                v147 = (2 * v147) | 1;
                v148 = &v8[2 * v147];
                v156 = v155 + 2;
                if (v156 < v9 && *(v148 + 3) < *(v148 + 7))
                {
                  v148 += 2;
                  v147 = v156;
                }
              }

              while (*(v148 + 3) >= v152);
              *v149 = v150;
              v149[1] = v151;
            }
          }

          v145 = v146 - 1;
        }

        while (v146);
        do
        {
          v157 = 0;
          v159 = *v8;
          v158 = v8[1];
          v160 = v8;
          do
          {
            v161 = &v160[2 * v157];
            v162 = (v161 + 4);
            v163 = (2 * v157) | 1;
            v157 = 2 * v157 + 2;
            if (v157 >= v9)
            {
              v157 = v163;
            }

            else
            {
              v164 = v161[7];
              v165 = v161[11];
              v166 = (v161 + 8);
              if (v164 >= v165)
              {
                v157 = v163;
              }

              else
              {
                v162 = v166;
              }
            }

            v167 = v162[1];
            *v160 = *v162;
            v160[1] = v167;
            v160 = v162;
          }

          while (v157 <= ((v9 - 2) >> 1));
          a2 -= 2;
          if (v162 == a2)
          {
            *v162 = v159;
            v162[1] = v158;
          }

          else
          {
            v168 = a2[1];
            *v162 = *a2;
            v162[1] = v168;
            *a2 = v159;
            a2[1] = v158;
            v169 = (v162 - v8 + 32) >> 5;
            v170 = v169 < 2;
            v171 = v169 - 2;
            if (!v170)
            {
              v172 = v171 >> 1;
              v173 = &v8[2 * v172];
              if (*(v173 + 3) < *(v162 + 3))
              {
                v174 = *v162;
                v175 = v162[1];
                v176 = *(v162 + 3);
                do
                {
                  v177 = v162;
                  v162 = v173;
                  v178 = v173[1];
                  *v177 = *v173;
                  v177[1] = v178;
                  if (!v172)
                  {
                    break;
                  }

                  v172 = (v172 - 1) >> 1;
                  v173 = &v8[2 * v172];
                }

                while (*(v173 + 3) < v176);
                *v162 = v174;
                v162[1] = v175;
              }
            }
          }

          v170 = v9-- <= 2;
        }

        while (!v170);
      }

      return result;
    }

    v10 = &v8[2 * (v9 >> 1)];
    v11 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v12 = *(v10 + 3);
      if (v12 >= *(v8 + 3))
      {
        if (v11 < v12)
        {
          v20 = *v10;
          v21 = v10[1];
          v22 = *(a2 - 1);
          *v10 = *(a2 - 2);
          v10[1] = v22;
          *(a2 - 2) = v20;
          *(a2 - 1) = v21;
          if (*(v10 + 3) < *(v8 + 3))
          {
            v23 = *v8;
            v24 = v8[1];
            v25 = v10[1];
            *v8 = *v10;
            v8[1] = v25;
            *v10 = v23;
            v10[1] = v24;
          }
        }
      }

      else
      {
        v13 = *v8;
        v14 = v8[1];
        if (v11 < v12)
        {
          v15 = *(a2 - 1);
          *v8 = *(a2 - 2);
          v8[1] = v15;
          goto LABEL_27;
        }

        v32 = v10[1];
        *v8 = *v10;
        v8[1] = v32;
        *v10 = v13;
        v10[1] = v14;
        if (*(a2 - 1) < *(&v14 + 1))
        {
          v33 = *(a2 - 1);
          *v10 = *(a2 - 2);
          v10[1] = v33;
LABEL_27:
          *(a2 - 2) = v13;
          *(a2 - 1) = v14;
        }
      }

      v34 = v10 - 2;
      v35 = *(v10 - 1);
      v36 = *(a2 - 5);
      if (v35 >= *(v8 + 7))
      {
        if (v36 < v35)
        {
          v40 = *v34;
          v41 = *(v10 - 1);
          v42 = *(a2 - 3);
          *v34 = *(a2 - 4);
          *(v10 - 1) = v42;
          *(a2 - 4) = v40;
          *(a2 - 3) = v41;
          if (*(v10 - 1) < *(v8 + 7))
          {
            v43 = v8[2];
            v44 = v8[3];
            v45 = *(v10 - 1);
            v8[2] = *v34;
            v8[3] = v45;
            *v34 = v43;
            *(v10 - 1) = v44;
          }
        }
      }

      else
      {
        v37 = v8[2];
        v38 = v8[3];
        if (v36 < v35)
        {
          v39 = *(a2 - 3);
          v8[2] = *(a2 - 4);
          v8[3] = v39;
          goto LABEL_39;
        }

        v48 = *(v10 - 1);
        v8[2] = *v34;
        v8[3] = v48;
        *v34 = v37;
        *(v10 - 1) = v38;
        if (*(a2 - 5) < *(&v38 + 1))
        {
          v49 = *(a2 - 3);
          *v34 = *(a2 - 4);
          *(v10 - 1) = v49;
LABEL_39:
          *(a2 - 4) = v37;
          *(a2 - 3) = v38;
        }
      }

      v50 = *(v10 + 7);
      v51 = *(a2 - 9);
      if (v50 >= *(v8 + 11))
      {
        if (v51 < v50)
        {
          v55 = v10[2];
          v56 = v10[3];
          v57 = *(a2 - 5);
          v10[2] = *(a2 - 6);
          v10[3] = v57;
          *(a2 - 6) = v55;
          *(a2 - 5) = v56;
          if (*(v10 + 7) < *(v8 + 11))
          {
            v58 = v8[4];
            v59 = v8[5];
            v60 = v10[3];
            v8[4] = v10[2];
            v8[5] = v60;
            v10[2] = v58;
            v10[3] = v59;
          }
        }
      }

      else
      {
        v52 = v8[4];
        v53 = v8[5];
        if (v51 < v50)
        {
          v54 = *(a2 - 5);
          v8[4] = *(a2 - 6);
          v8[5] = v54;
          goto LABEL_48;
        }

        v61 = v10[3];
        v8[4] = v10[2];
        v8[5] = v61;
        v10[2] = v52;
        v10[3] = v53;
        if (*(a2 - 9) < *(&v53 + 1))
        {
          v62 = *(a2 - 5);
          v10[2] = *(a2 - 6);
          v10[3] = v62;
LABEL_48:
          *(a2 - 6) = v52;
          *(a2 - 5) = v53;
        }
      }

      v63 = *(v10 + 3);
      v64 = *(v10 - 1);
      v65 = *(v10 + 7);
      if (v63 >= v64)
      {
        v67 = *v10;
        v66 = v10[1];
        if (v65 < v63)
        {
          v70 = v10[2];
          v69 = v10[3];
          *v10 = v70;
          v10[1] = v69;
          v10[2] = v67;
          v10[3] = v66;
          if (*(&v69 + 1) >= v64)
          {
            v67 = v70;
            v66 = v69;
          }

          else
          {
            v67 = *v34;
            v66 = *(v10 - 1);
            *v34 = v70;
            *(v10 - 1) = v69;
            *v10 = v67;
            v10[1] = v66;
          }
        }
      }

      else
      {
        v67 = *v34;
        v66 = *(v10 - 1);
        if (v65 >= v63)
        {
          v71 = v10[1];
          *v34 = *v10;
          *(v10 - 1) = v71;
          *v10 = v67;
          v10[1] = v66;
          if (v65 < *(&v66 + 1))
          {
            v72 = v10[2];
            v73 = v10[3];
            *v10 = v72;
            v10[1] = v73;
            v10[2] = v67;
            v10[3] = v66;
            v67 = v72;
            v66 = v73;
          }
        }

        else
        {
          v68 = v10[3];
          *v34 = v10[2];
          *(v10 - 1) = v68;
          v10[2] = v67;
          v10[3] = v66;
          v67 = *v10;
          v66 = v10[1];
        }
      }

      v74 = *v8;
      v75 = v8[1];
      *v8 = v67;
      v8[1] = v66;
      *v10 = v74;
      v10[1] = v75;
      goto LABEL_59;
    }

    v16 = *(v8 + 3);
    if (v16 >= *(v10 + 3))
    {
      if (v11 < v16)
      {
        v26 = *v8;
        v27 = v8[1];
        v28 = *(a2 - 1);
        *v8 = *(a2 - 2);
        v8[1] = v28;
        *(a2 - 2) = v26;
        *(a2 - 1) = v27;
        if (*(v8 + 3) < *(v10 + 3))
        {
          v29 = *v10;
          v30 = v10[1];
          v31 = v8[1];
          *v10 = *v8;
          v10[1] = v31;
          *v8 = v29;
          v8[1] = v30;
        }
      }

      goto LABEL_59;
    }

    v17 = *v10;
    v18 = v10[1];
    if (v11 < v16)
    {
      v19 = *(a2 - 1);
      *v10 = *(a2 - 2);
      v10[1] = v19;
LABEL_36:
      *(a2 - 2) = v17;
      *(a2 - 1) = v18;
      goto LABEL_59;
    }

    v46 = v8[1];
    *v10 = *v8;
    v10[1] = v46;
    *v8 = v17;
    v8[1] = v18;
    if (*(a2 - 1) < *(&v18 + 1))
    {
      v47 = *(a2 - 1);
      *v8 = *(a2 - 2);
      v8[1] = v47;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v77 = *v8;
      v76 = v8[1];
LABEL_62:
      v78 = 0;
      do
      {
        v79 = *(&v8[v78 + 3] + 1);
        v78 += 2;
      }

      while (v79 < *(&v76 + 1));
      v80 = &v8[v78];
      v81 = a2;
      if (v78 == 2)
      {
        v84 = a2;
        while (v80 < v84)
        {
          v82 = v84 - 2;
          v85 = *(v84 - 1);
          v84 -= 2;
          if (v85 < *(&v76 + 1))
          {
            goto LABEL_72;
          }
        }

        v82 = v84;
      }

      else
      {
        do
        {
          v82 = v81 - 2;
          v83 = *(v81 - 1);
          v81 -= 2;
        }

        while (v83 >= *(&v76 + 1));
      }

LABEL_72:
      if (v80 >= v82)
      {
        v93 = v80 - 2;
      }

      else
      {
        v86 = v80;
        v87 = v82;
        do
        {
          v88 = *v86;
          v89 = *(v86 + 16);
          v90 = *(v87 + 1);
          *v86 = *v87;
          *(v86 + 16) = v90;
          *v87 = v88;
          *(v87 + 1) = v89;
          do
          {
            v91 = *(v86 + 56);
            v86 += 32;
          }

          while (v91 < *(&v76 + 1));
          do
          {
            v92 = *(v87 - 1);
            v87 -= 4;
          }

          while (v92 >= *(&v76 + 1));
        }

        while (v86 < v87);
        v93 = (v86 - 32);
      }

      if (v93 != v8)
      {
        v94 = v93[1];
        *v8 = *v93;
        v8[1] = v94;
      }

      *v93 = v77;
      v93[1] = v76;
      if (v80 < v82)
      {
        goto LABEL_85;
      }

      v95 = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN4geom12_GLOBAL__N_131compute_plane_box_intersectionsIdEEvNS2_11vector_typeIT_Lh3EvE5valueES8_RKNS2_4bboxIS6_Lh3EEERNS3_11fixed_arrayIS6_Lh3ELh9EEEEUlRKDv4_dSI_E_PSG_EEbT1_SM_T0_(v8, v93);
      v8 = v93 + 2;
      result = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN4geom12_GLOBAL__N_131compute_plane_box_intersectionsIdEEvNS2_11vector_typeIT_Lh3EvE5valueES8_RKNS2_4bboxIS6_Lh3EEERNS3_11fixed_arrayIS6_Lh3ELh9EEEEUlRKDv4_dSI_E_PSG_EEbT1_SM_T0_(v93 + 2, a2);
      if (result)
      {
        a2 = v93;
        if (!v95)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v95)
      {
LABEL_85:
        result = _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4geom12_GLOBAL__N_131compute_plane_box_intersectionsIdEEvNS2_11vector_typeIT_Lh3EvE5valueES8_RKNS2_4bboxIS6_Lh3EEERNS3_11fixed_arrayIS6_Lh3ELh9EEEEUlRKDv4_dSI_E_PSG_Lb0EEEvT1_SM_T0_NS_15iterator_traitsISM_E15difference_typeEb(v7, v93, a3, a4 & 1);
        a4 = 0;
        v8 = v93 + 2;
      }
    }

    else
    {
      v77 = *v8;
      v76 = v8[1];
      if (*(v8 - 1) < *(v8 + 3))
      {
        goto LABEL_62;
      }

      if (*(&v76 + 1) >= *(a2 - 1))
      {
        v98 = (v8 + 2);
        do
        {
          v8 = v98;
          if (v98 >= a2)
          {
            break;
          }

          v99 = *(v98 + 24);
          v98 += 32;
        }

        while (*(&v76 + 1) >= v99);
      }

      else
      {
        v96 = v8;
        do
        {
          v8 = v96 + 2;
          v97 = *(v96 + 7);
          v96 += 2;
        }

        while (*(&v76 + 1) >= v97);
      }

      v100 = a2;
      if (v8 < a2)
      {
        v101 = a2;
        do
        {
          v100 = (v101 - 2);
          v102 = *(v101 - 1);
          v101 -= 2;
        }

        while (*(&v76 + 1) < v102);
      }

      while (v8 < v100)
      {
        v103 = *v8;
        v104 = v8[1];
        v105 = *(v100 + 1);
        *v8 = *v100;
        v8[1] = v105;
        *v100 = v103;
        *(v100 + 1) = v104;
        do
        {
          v106 = *(v8 + 7);
          v8 += 2;
        }

        while (*(&v76 + 1) >= v106);
        do
        {
          v107 = *(v100 - 1);
          v100 -= 4;
        }

        while (*(&v76 + 1) < v107);
      }

      v108 = v8 - 2;
      if (v8 - 2 != v7)
      {
        v109 = *(v8 - 1);
        *v7 = *v108;
        *(v7 + 16) = v109;
      }

      a4 = 0;
      *v108 = v77;
      *(v8 - 1) = v76;
    }
  }

  v120 = *(v8 + 7);
  v121 = *(a2 - 1);
  if (v120 < *(v8 + 3))
  {
    v117 = *v8;
    v118 = v8[1];
    if (v121 >= v120)
    {
      v208 = v8[3];
      *v8 = v8[2];
      v8[1] = v208;
      v8[2] = v117;
      v8[3] = v118;
      if (*(a2 - 1) >= *(&v118 + 1))
      {
        return result;
      }

      v209 = *(a2 - 1);
      v8[2] = *(a2 - 2);
      v8[3] = v209;
    }

    else
    {
      v122 = *(a2 - 1);
      *v8 = *(a2 - 2);
      v8[1] = v122;
    }

    goto LABEL_188;
  }

  if (v121 < v120)
  {
    v185 = v8[2];
    v186 = v8[3];
    v187 = *(a2 - 1);
    v8[2] = *(a2 - 2);
    v8[3] = v187;
    *(a2 - 2) = v185;
    *(a2 - 1) = v186;
    if (*(v8 + 7) < *(v8 + 3))
    {
      v189 = *v8;
      v188 = v8[1];
      v190 = v8[3];
      *v8 = v8[2];
      v8[1] = v190;
      v8[2] = v189;
      v8[3] = v188;
    }
  }

  return result;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN4geom12_GLOBAL__N_131compute_plane_box_intersectionsIdEEvNS2_11vector_typeIT_Lh3EvE5valueES8_RKNS2_4bboxIS6_Lh3EEERNS3_11fixed_arrayIS6_Lh3ELh9EEEEUlRKDv4_dSI_E_PSG_EEbT1_SM_T0_(__int128 *a1, __int128 *a2)
{
  v2 = (a2 - a1) >> 5;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v13 = *(a1 + 7);
      v14 = *(a2 - 1);
      if (v13 >= *(a1 + 3))
      {
        if (v14 < v13)
        {
          v29 = a1[2];
          v30 = a1[3];
          v31 = *(a2 - 1);
          a1[2] = *(a2 - 2);
          a1[3] = v31;
          *(a2 - 2) = v29;
          *(a2 - 1) = v30;
          if (*(a1 + 7) < *(a1 + 3))
          {
            v33 = *a1;
            v32 = a1[1];
            v34 = a1[3];
            *a1 = a1[2];
            a1[1] = v34;
            a1[2] = v33;
            a1[3] = v32;
          }
        }

        return 1;
      }

      v3 = *a1;
      v4 = a1[1];
      if (v14 < v13)
      {
        v15 = *(a2 - 1);
        *a1 = *(a2 - 2);
        a1[1] = v15;
        goto LABEL_35;
      }

      v53 = a1[3];
      *a1 = a1[2];
      a1[1] = v53;
      a1[2] = v3;
      a1[3] = v4;
      if (*(a2 - 1) < *(&v4 + 1))
      {
        v54 = *(a2 - 1);
        a1[2] = *(a2 - 2);
        a1[3] = v54;
        goto LABEL_35;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_15;
      }

      v6 = *(a1 + 7);
      v7 = *(a1 + 3);
      v8 = *(a1 + 11);
      if (v6 >= v7)
      {
        if (v8 < v6)
        {
          v41 = a1[2];
          v42 = a1[3];
          v44 = a1[4];
          v43 = a1[5];
          a1[2] = v44;
          a1[3] = v43;
          a1[4] = v41;
          a1[5] = v42;
          v6 = *(&v43 + 1);
          v11 = *(&v42 + 1);
          if (*(&v43 + 1) < v7)
          {
            v45 = *a1;
            v46 = a1[1];
            *a1 = v44;
            a1[1] = v43;
            a1[2] = v45;
            a1[3] = v46;
            v7 = *(&v43 + 1);
            v6 = *(&v46 + 1);
          }

          goto LABEL_61;
        }
      }

      else
      {
        v10 = *a1;
        v9 = a1[1];
        v11 = *(a1 + 3);
        if (v8 < v6)
        {
          v12 = a1[5];
          *a1 = a1[4];
          a1[1] = v12;
          a1[4] = v10;
          a1[5] = v9;
          v7 = *(&v12 + 1);
          goto LABEL_61;
        }

        v68 = a1[3];
        *a1 = a1[2];
        a1[1] = v68;
        a1[2] = v10;
        a1[3] = v9;
        v7 = *(&v68 + 1);
        if (v8 < v11)
        {
          v69 = a1[5];
          a1[2] = a1[4];
          a1[3] = v69;
          a1[4] = v10;
          a1[5] = v9;
          v6 = *(&v69 + 1);
          goto LABEL_61;
        }

        v6 = v11;
      }

      v11 = v8;
LABEL_61:
      v81 = *(a1 + 15);
      if (v81 < v11)
      {
        v83 = a1[4];
        v82 = a1[5];
        v85 = a1[6];
        v84 = a1[7];
        a1[4] = v85;
        a1[5] = v84;
        a1[6] = v83;
        a1[7] = v82;
        v81 = *(&v82 + 1);
        if (*(&v84 + 1) < v6)
        {
          v86 = a1[2];
          v87 = a1[3];
          a1[2] = v85;
          a1[3] = v84;
          a1[4] = v86;
          a1[5] = v87;
          if (*(&v84 + 1) < v7)
          {
            v88 = *a1;
            v89 = a1[1];
            *a1 = v85;
            a1[1] = v84;
            a1[2] = v88;
            a1[3] = v89;
          }
        }
      }

      if (*(a2 - 1) >= v81)
      {
        return 1;
      }

      v90 = a1[6];
      v91 = a1[7];
      v92 = *(a2 - 1);
      a1[6] = *(a2 - 2);
      a1[7] = v92;
      *(a2 - 2) = v90;
      *(a2 - 1) = v91;
      if (*(a1 + 15) >= *(a1 + 11))
      {
        return 1;
      }

      v94 = a1[4];
      v93 = a1[5];
      v78 = a1[6];
      v77 = a1[7];
      a1[4] = v78;
      a1[5] = v77;
      a1[6] = v94;
      a1[7] = v93;
      v79 = *(&v77 + 1);
      if (*(&v77 + 1) >= *(a1 + 7))
      {
        return 1;
      }

      v95 = a1[2];
      v96 = a1[3];
      a1[2] = v78;
      a1[3] = v77;
      a1[4] = v95;
      a1[5] = v96;
      goto LABEL_69;
    }

    v22 = *(a1 + 7);
    v23 = *(a1 + 3);
    v24 = *(a1 + 11);
    if (v22 >= v23)
    {
      if (v24 < v22)
      {
        v48 = a1[2];
        v47 = a1[3];
        v50 = a1[4];
        v49 = a1[5];
        a1[2] = v50;
        a1[3] = v49;
        a1[4] = v48;
        a1[5] = v47;
        v24 = *(&v47 + 1);
        if (*(&v49 + 1) < v23)
        {
          v51 = *a1;
          v52 = a1[1];
          *a1 = v50;
          a1[1] = v49;
          a1[2] = v51;
          a1[3] = v52;
        }
      }

      goto LABEL_55;
    }

    v26 = *a1;
    v25 = a1[1];
    v27 = *(a1 + 3);
    if (v24 >= v22)
    {
      v70 = a1[3];
      *a1 = a1[2];
      a1[1] = v70;
      a1[2] = v26;
      a1[3] = v25;
      if (v24 >= v27)
      {
        goto LABEL_55;
      }

      v71 = a1[5];
      a1[2] = a1[4];
      a1[3] = v71;
    }

    else
    {
      v28 = a1[5];
      *a1 = a1[4];
      a1[1] = v28;
    }

    a1[4] = v26;
    a1[5] = v25;
    v24 = v27;
LABEL_55:
    if (*(a2 - 1) >= v24)
    {
      return 1;
    }

    v72 = a1[4];
    v73 = a1[5];
    v74 = *(a2 - 1);
    a1[4] = *(a2 - 2);
    a1[5] = v74;
    *(a2 - 2) = v72;
    *(a2 - 1) = v73;
    if (*(a1 + 11) >= *(a1 + 7))
    {
      return 1;
    }

    v76 = a1[2];
    v75 = a1[3];
    v78 = a1[4];
    v77 = a1[5];
    a1[2] = v78;
    a1[3] = v77;
    a1[4] = v76;
    a1[5] = v75;
    v79 = *(&v77 + 1);
LABEL_69:
    if (v79 < *(a1 + 3))
    {
      v97 = *a1;
      v98 = a1[1];
      *a1 = v78;
      a1[1] = v77;
      a1[2] = v97;
      a1[3] = v98;
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 1) < *(a1 + 3))
    {
      v3 = *a1;
      v4 = a1[1];
      v5 = *(a2 - 1);
      *a1 = *(a2 - 2);
      a1[1] = v5;
LABEL_35:
      *(a2 - 2) = v3;
      *(a2 - 1) = v4;
      return 1;
    }

    return 1;
  }

LABEL_15:
  v16 = *(a1 + 7);
  v17 = *(a1 + 3);
  v18 = *(a1 + 11);
  if (v16 >= v17)
  {
    if (v18 < v16)
    {
      v36 = a1[2];
      v35 = a1[3];
      v38 = a1[4];
      v37 = a1[5];
      a1[2] = v38;
      a1[3] = v37;
      a1[4] = v36;
      a1[5] = v35;
      if (*(&v37 + 1) < v17)
      {
        v39 = *a1;
        v40 = a1[1];
        *a1 = v38;
        a1[1] = v37;
        a1[2] = v39;
        a1[3] = v40;
      }
    }
  }

  else
  {
    v20 = *a1;
    v19 = a1[1];
    if (v18 >= v16)
    {
      v55 = a1[3];
      *a1 = a1[2];
      a1[1] = v55;
      a1[2] = v20;
      a1[3] = v19;
      if (v18 >= *(&v19 + 1))
      {
        goto LABEL_39;
      }

      v56 = a1[5];
      a1[2] = a1[4];
      a1[3] = v56;
    }

    else
    {
      v21 = a1[5];
      *a1 = a1[4];
      a1[1] = v21;
    }

    a1[4] = v20;
    a1[5] = v19;
  }

LABEL_39:
  v57 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v58 = 0;
  v59 = 0;
  v60 = (a1 + 4);
  while (1)
  {
    if (v57[3] < v60[3])
    {
      v61 = *v57;
      v62 = *(v57 + 1);
      v63 = v57[3];
      v64 = v58;
      while (1)
      {
        v65 = a1 + v64;
        v66 = *(a1 + v64 + 80);
        *(v65 + 96) = *(a1 + v64 + 64);
        *(v65 + 112) = v66;
        if (v64 == -64)
        {
          break;
        }

        v64 -= 32;
        if (v63 >= *(v65 + 56))
        {
          v67 = (a1 + v64 + 96);
          goto LABEL_47;
        }
      }

      v67 = a1;
LABEL_47:
      *v67 = v61;
      v67[1] = v62;
      if (++v59 == 8)
      {
        return v57 + 4 == a2;
      }
    }

    v60 = v57;
    v58 += 32;
    v57 += 4;
    if (v57 == a2)
    {
      return 1;
    }
  }
}

void geom::cluster<float>::init(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, atomic_uint *a7, int a8, float a9, int a10)
{
  v38 = 0;
  v39 = a7;
  *(a1 + 136) = 1;
  a1[9] = a2;
  a1[10] = a3;
  v15 = *(a2 + 48);
  *(a1 + 2) = *(a2 + 32);
  *(a1 + 3) = v15;
  *(a1 + 16) = a10;
  *(a1 + 17) = a9;
  v16 = (*(a2 + 4) * *(a2 + 4) * *(a2 + 4));
  __p = 0;
  v37 = 0;
  if (v16)
  {
    operator new();
  }

  block = MEMORY[0x277D85DD0];
  v41 = 0x40000000;
  v42 = ___ZN4geom26dispatch_apply_with_strideIZNS_7clusterIfE4initEPKNS_10voxel_gridIfEEPvRKNSt3__16vectorIDv3_fNS8_9allocatorISA_EEEERKNS9_IjNSB_IjEEEERKNS_3bvhIfLh3EEEPNS_17convex_mesh_cacheIfEEjjfEUlmE_EEmmmP16dispatch_queue_sT__block_invoke;
  v43 = &__block_descriptor_tmp_0;
  v44 = 1024;
  v45 = v16;
  v46 = a1;
  p_p = &__p;
  dispatch_apply((v16 + 1023) >> 10, 0, &block);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  block = MEMORY[0x277D85DD0];
  v41 = 0x40000000;
  v42 = ___ZN4geom26dispatch_apply_with_strideIZNS_7clusterIfE4initEPKNS_10voxel_gridIfEEPvRKNSt3__16vectorIDv3_fNS8_9allocatorISA_EEEERKNS9_IjNSB_IjEEEERKNS_3bvhIfLh3EEEPNS_17convex_mesh_cacheIfEEjjfEUlmRZNS2_4initES6_S7_SF_SJ_SN_SQ_jjfE18voxel_init_contextE_SR_EEmmmP16dispatch_queue_sRNS9_IT0_NSB_ISW_EEEET__block_invoke;
  v43 = &__block_descriptor_tmp_5;
  v44 = 1024;
  v45 = v16;
  v46 = a1;
  p_p = &__p;
  v48 = a4;
  v49 = a5;
  v50 = a6;
  v51 = &v39;
  v52 = a8;
  v53 = &v33;
  dispatch_apply((v16 + 1023) >> 10, 0, &block);
  v17 = v33;
  if (v33 == v34)
  {
    v19 = 0;
    v18 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v18 += (v17[1] - *v17) >> 3;
      v19 += (v17[4] - v17[3]) >> 4;
      v17 += 12;
    }

    while (v17 != v34);
  }

  std::vector<double>::reserve(a1 + 11, v18);
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::reserve(a1 + 14, v19);
  v20 = v33;
  v21 = v34;
  while (v20 != v21)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<unsigned long long const*,unsigned long long const*,std::back_insert_iterator<std::vector<unsigned long long>>>(&block, *v20, v20[1], a1 + 11);
    v22 = v20[3];
    v23 = v20[4];
    while (v22 != v23)
    {
      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100](a1 + 14, v22++);
    }

    v20 += 12;
  }

  v25 = v39;
  add = atomic_fetch_add(v39, 1u);
  v26 = *(v25 + 1);
  if (add >= (*(v25 + 2) - v26) >> 4)
  {
    operator new();
  }

  v27 = (v26 + 16 * add);
  v29 = *v27;
  v28 = v27[1];
  if (v28)
  {
    atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
  }

  v30 = a1[1];
  *a1 = v29;
  a1[1] = v28;
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
    v29 = *a1;
  }

  v31 = *(a1 + 16);
  v32 = *(a1 + 17);
  geom::merge_convex_hulls<float>(a1[14], (a1[15] - a1[14]) >> 4, v29 + 48, (v29 + 72));
  geom::cluster<float>::compute_concavity(a1);
  block = &v33;
  _ZNSt3__16vectorIZN4geom7clusterIfE4initEPKNS1_10voxel_gridIfEEPvRKNS0_IDv3_fNS_9allocatorIS9_EEEERKNS0_IjNSA_IjEEEERKNS1_3bvhIfLh3EEEPNS1_17convex_mesh_cacheIfEEjjfE18voxel_init_contextNSA_ISQ_EEE16__destroy_vectorclB8nn200100Ev(&block);
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }
}

void *std::vector<std::shared_ptr<geom::convex_mesh<float>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<geom::convex_mesh<float>>>>(result, a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void geom::merge_convex_hulls<float>(uint64_t *a1, uint64_t a2, uint64_t a3, int **a4)
{
  if (a2)
  {
    v7 = a1;
    v8 = 0;
    v9 = 16 * a2;
    v10 = 16 * a2;
    v11 = a1;
    do
    {
      v12 = *v11;
      v11 += 2;
      v8 += (*(v12 + 56) - *(v12 + 48)) >> 4;
      v10 -= 16;
    }

    while (v10);
    *(a3 + 8) = *a3;
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(a3, v8);
    do
    {
      v13 = *v7;
      v7 += 2;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__insert_with_sizeB8nn200100INS_11__wrap_iterIPS1_EES8_EES8_NS6_IPKS1_EET_T0_l(a3, *(a3 + 8), *(v13 + 48), *(v13 + 56), (*(v13 + 56) - *(v13 + 48)) >> 4);
      v9 -= 16;
    }

    while (v9);
    __p[0] = 0;
    __p[1] = 0;
    v23 = 0;
    memset(&v21, 0, sizeof(v21));
    geom::convex_hull_triangulated_3<float>((*(a3 + 8) - *a3) >> 4, *a3, a4);
    v21.__end_ = 0;
    __p[1] = 0;
    v14 = (*(a3 + 8) - *a3) >> 4;
    __x = -1;
    std::vector<unsigned int>::resize(&v21, v14, &__x);
    v16 = *a4;
    v15 = a4[1];
    while (v16 != v15)
    {
      v17 = *v16;
      begin = v21.__begin_;
      v19 = v21.__begin_[v17];
      if (v19 == -1)
      {
        v21.__begin_[v17] = (__p[1] - __p[0]) >> 4;
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(__p, (*a3 + 16 * *v16));
        v19 = begin[v17];
      }

      *v16++ = v19;
    }

    v20 = *a3;
    if (*a3)
    {
      *(a3 + 8) = v20;
      operator delete(v20);
    }

    *a3 = *__p;
    *(a3 + 16) = v23;
    __p[1] = 0;
    v23 = 0;
    __p[0] = 0;
    if (v21.__begin_)
    {
      v21.__end_ = v21.__begin_;
      operator delete(v21.__begin_);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    *(a3 + 8) = *a3;
    a4[1] = *a4;
  }
}

float32x4_t **geom::cluster<float>::compute_concavity(float32x4_t **result)
{
  v1 = *result;
  v2 = (*result)->i32[0];
  v3 = (*result)->i32[1];
  v4 = vcgtq_f32(v1[1], v1[2]);
  v4.i32[3] = v4.i32[2];
  if ((vmaxvq_u32(v4) & 0x80000000) != 0)
  {
    v5 = v1->f32[0];
    if (v1->f32[0] <= 0.00000011921)
    {
      goto LABEL_7;
    }

    v6 = v1[3].i64[0];
    v7 = v1[3].i64[1];
    v8.i64[0] = 0x7F0000007FLL;
    v8.i64[1] = 0x7F0000007FLL;
    for (i = vnegq_f32(v8); v6 != v7; v8 = vmaxnmq_f32(v11, v8))
    {
      v10 = *v6++;
      v11 = v10;
      v11.i32[3] = 0;
      i.i32[3] = 0;
      i = vminnmq_f32(v11, i);
      v8.i32[3] = 0;
    }

    v1[1] = i;
    v1[2] = v8;
    v1 = *result;
  }

  v5 = v1->f32[0];
LABEL_7:
  if (v5 <= 0.0)
  {
    result[2] = 0;
    v13 = 0.0;
  }

  else
  {
    v12 = *(result + 5);
    v13 = (*result)->f32[0] - *(result + 4);
    if (v13 < 0.0)
    {
      v13 = 0.0;
    }
  }

  *(result + 6) = v13;
  *(result + 137) = 1;
  return result;
}

float32x4_t **geom::cluster<float>::init(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *__c, uint64_t a6, int a7, __n128 a8, __n128 a9, float a10)
{
  a1[9] = a2;
  a1[10] = a3;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE((a1 + 11), __c);
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate(a1 + 14);
  *(a1 + 7) = *a6;
  a1[16] = *(a6 + 16);
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a1 + 16) = a7;
  *(a1 + 17) = a10;
  *(a1 + 2) = a8;
  *(a1 + 3) = a9;
  *(a1 + 136) = 1;
  add = atomic_fetch_add(a4, 1u);
  v16 = *(a4 + 8);
  if (add >= (*(a4 + 16) - v16) >> 4)
  {
    operator new();
  }

  v17 = (v16 + 16 * add);
  v19 = *v17;
  v18 = v17[1];
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = a1[1];
  *a1 = v19;
  a1[1] = v18;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
    v19 = *a1;
  }

  v21 = *(a1 + 16);
  v22 = *(a1 + 17);
  geom::merge_convex_hulls<float>(a1[14], (a1[15] - a1[14]) >> 4, v19 + 48, (v19 + 72));

  return geom::cluster<float>::compute_concavity(a1);
}

void geom::cluster<float>::merge_into(int ***a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = (a1 + 14);
  v9 = (a2 + 112);
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::reserve(a1 + 14, ((*(a2 + 120) - *(a2 + 112)) >> 4) + ((a1[15] - a1[14]) >> 4));
  std::vector<double>::reserve(a1 + 11, ((*(v9 - 2) - *(v9 - 3)) >> 3) + a1[12] - a1[11]);
  v10 = *v9;
  v11 = v9[1];
  while (v10 != v11)
  {
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100](v8, v10);
    v10 += 16;
  }

  v12 = *(a2 + 88);
  v13 = *(a2 + 96);
  if (v12 != v13)
  {
    do
    {
      std::vector<unsigned long long>::push_back[abi:nn200100](a1 + 11, v12++);
    }

    while (v12 != v13);
    v12 = *(a2 + 88);
  }

  *(a2 + 96) = v12;
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::clear[abi:nn200100](v9);
  v14 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v15 = a1[1];
  *a1 = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    if (*a1)
    {
      goto LABEL_18;
    }
  }

  else if (v14)
  {
    goto LABEL_18;
  }

  add = atomic_fetch_add(a4, 1u);
  v17 = *(a4 + 8);
  if (add >= (*(a4 + 16) - v17) >> 4)
  {
    operator new();
  }

  v18 = (v17 + 16 * add);
  v20 = *v18;
  v19 = v18[1];
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = a1[1];
  *a1 = v20;
  a1[1] = v19;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    v20 = *a1;
  }

  v22 = *(a1 + 16);
  v23 = *(a1 + 17);
  geom::merge_convex_hulls<float>(a1[14], (a1[15] - a1[14]) >> 4, (v20 + 6), v20 + 9);
LABEL_18:
  a1[2] = vadd_f32(*(a2 + 16), a1[2]);
  v24 = *(a1 + 2);
  v25 = *(a1 + 3);
  v24.i32[3] = 0;
  v26 = *(a2 + 32);
  v26.i32[3] = 0;
  *(a1 + 2) = vminnmq_f32(v24, v26);
  v27 = *(a2 + 48);
  v25.i32[3] = 0;
  v27.i32[3] = 0;
  *(a1 + 3) = vmaxnmq_f32(v25, v27);
  geom::cluster<float>::compute_concavity(a1);

  geom::cluster<float>::deinit(a2, a4);
}

void geom::cluster<float>::deinit(uint64_t a1, uint64_t a2)
{
  v4 = vneg_f32(0x3F0000003FLL);
  *(a1 + 16) = v4;
  *(a1 + 24) = 2143289344;
  v5.i64[0] = 0x7F0000007FLL;
  v5.i64[1] = 0x7F0000007FLL;
  v14 = vnegq_f32(v5);
  *(a1 + 32) = v14;
  *(a1 + 48) = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v6 = *(a1 + 112);
  v7 = *(a1 + 120);
  while (v6 != v7)
  {
    v8 = *(v7 - 8);
    if (v8)
    {
      if (v8->__shared_owners_)
      {
        goto LABEL_6;
      }

      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((a2 + 8), v7 - 16);
      v9 = *(*(a2 + 16) - 16);
      *(v9 + 56) = *(v9 + 48);
      *(v9 + 80) = *(v9 + 72);
      *v9 = v4;
      *&v10 = 0x7F0000007FLL;
      *(&v10 + 1) = 0x7F0000007FLL;
      *(v9 + 16) = v14;
      *(v9 + 32) = v10;
      v7 = *(a1 + 120);
      v8 = *(v7 - 8);
      if (v8)
      {
LABEL_6:
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }
    }

    v7 -= 16;
    *(a1 + 120) = v7;
    v6 = *(a1 + 112);
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    if (v11->__shared_owners_)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
LABEL_13:
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      goto LABEL_14;
    }

    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((a2 + 8), a1);
    v12 = *(*(a2 + 16) - 16);
    *(v12 + 56) = *(v12 + 48);
    *(v12 + 80) = *(v12 + 72);
    *v12 = vneg_f32(0x3F0000003FLL);
    v13.i64[0] = 0x7F0000007FLL;
    v13.i64[1] = 0x7F0000007FLL;
    *(v12 + 16) = vnegq_f32(v13);
    *(v12 + 32) = v13;
    v11 = *(a1 + 8);
    *a1 = 0;
    *(a1 + 8) = 0;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

LABEL_14:
  *(a1 + 96) = *(a1 + 88);
  *(a1 + 136) = 0;
}

float geom::cluster<float>::evaluate(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  geom::query_exact_winding_number_3<float>(*(a1 + 80));
  return 0.5 - v3;
}

void *geom::cluster<float>::convex_hull@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

BOOL geom::cluster<float>::find_implicit_surface_crossings(uint64_t a1, void *a2, int a3, uint64_t a4, uint32x4_t a5)
{
  v8 = 0;
  v9 = 0;
  v42 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 72);
  v11 = vcgeq_u32(a5, vdupq_n_s32(v10->i32[1] - 1));
  v11.i32[3] = v11.i32[2];
  v12 = vmaxvq_u32(v11);
  do
  {
    if ((v12 & 0x80000000) != 0)
    {
      v14 = 0;
    }

    else
    {
      v13 = vaddq_s32(xmmword_2500C6860[v8], a5);
      v14 = *(*a2 + v13.u32[0] + (v13.u32[1] << v10->i32[0]) + (v13.u32[2] << (2 * v10->i8[0])));
    }

    v9 |= (v14 << v8++);
  }

  while (v8 != 8);
  if (v9 - 1 < 0xFE)
  {
    v15 = 0;
    v16 = v10[1];
    v17 = vmlaq_f32(v10[2], vcvtq_f32_u32(a5), v16);
    v36 = vaddq_f32(v16, v17);
    v38 = v17;
    v18 = v41;
    do
    {
      v19 = vnegq_s32(xmmword_2500C6860[v15]);
      v19.i32[3] = 0;
      *v18 = vbslq_s8(vcltzq_s32(v19), v36, v38);
      if ((v9 >> v15))
      {
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a4, v18);
      }

      ++v15;
      ++v18;
    }

    while (v15 != 8);
    for (i = 0; i != 12; ++i)
    {
      v21 = &unk_2500C68E0 + 2 * i;
      v22 = *v21;
      v23 = v21[1];
      v24 = (1 << v22) & v9;
      if ((v24 != 0) != ((v9 >> v23) & 1))
      {
        v25 = v24 == 0;
        if (v24)
        {
          v26 = v22;
        }

        else
        {
          v26 = v23;
        }

        v27 = v41[v26];
        if (!v25)
        {
          v22 = v23;
        }

        v28 = v41[v22];
        v29.i64[0] = 0x3F0000003F000000;
        v29.i64[1] = 0x3F0000003F000000;
        v40 = vmulq_f32(vaddq_f32(v27, v28), v29);
        if (a3)
        {
          v30 = a3;
          do
          {
            v37 = v28;
            v39 = v27;
            geom::query_exact_winding_number_3<float>(*(a1 + 80));
            v32 = 0.5 - v31;
            if (v32 >= -0.00000011921)
            {
              v27 = v39;
              if (v32 <= 0.00000011921)
              {
                break;
              }

              v28 = v40;
            }

            else
            {
              v27 = v40;
              v28 = v37;
            }

            v33.i64[0] = 0x3F0000003F000000;
            v33.i64[1] = 0x3F0000003F000000;
            v40 = vmulq_f32(vaddq_f32(v27, v28), v33);
            --v30;
          }

          while (v30);
        }

        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a4, &v40);
      }
    }
  }

  result = v9 != 0;
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

void geom::cluster<float>::find_explicit_surface_crossings(uint64_t a1, uint32x4_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 72);
  v3 = v2[1];
  v4 = vmlaq_f32(v2[2], vcvtq_f32_u32(a2), v3);
  v10 = v4.i32[2];
  v5 = vaddq_f32(v3, v4);
  v12 = v5.i32[2];
  v9 = v4.i64[0];
  v11 = v5.i64[0];
  __p = 0;
  v7 = 0;
  v8 = 0;
  operator new();
}

float geom::cluster<float>::compute_component_volume(void *a1)
{
  memset(&v21, 0, sizeof(v21));
  std::vector<float>::reserve(&v21, (a1[15] - a1[14]) >> 4);
  v2 = a1[14];
  v3 = a1[15];
  while (v2 != v3)
  {
    v5 = *v2;
    v2 += 2;
    v4 = v5;
    LODWORD(block[0]) = 0;
    if (*v5 >= 0.0)
    {
      v6 = v4;
    }

    else
    {
      v6 = block;
    }

    std::vector<float>::push_back[abi:nn200100](&v21.__begin_, v6);
  }

  begin = v21.__begin_;
  v8 = v21.__end_ - v21.__begin_;
  if (v8 >= 2)
  {
    v9 = (v21.__end_ - v21.__begin_) >> 1;
    v22 = 2;
    if (v9 >= 3)
    {
      v10 = MEMORY[0x277D85DD0];
      for (i = 2; i < v9; v22 = i)
      {
        block[0] = v10;
        block[1] = 0x40000000;
        block[2] = ___ZN4geom26dispatch_apply_with_strideIZNS_24parallel_reduce_in_placeIfNS_11plus_equalsIfEEEEvRNSt3__16vectorIT_NS4_9allocatorIS6_EEEEmP16dispatch_queue_sT0_EUlmmE_EEmmmSC_S6__block_invoke;
        block[3] = &__block_descriptor_tmp_20;
        block[4] = 128;
        v25 = (i + v21.__end_ - v21.__begin_ - 1) / i;
        v26 = &v22;
        v27 = v8;
        v28 = &v21;
        v29 = &v23;
        dispatch_apply((v25 + 127) >> 7, 0, block);
        i = 2 * v22;
      }

      begin = v21.__begin_;
    }
  }

  _Q0 = *(a1[9] + 16);
  v13 = *begin;
  _S1 = vmuls_lane_f32(((a1[12] - a1[11]) >> 3) * *&_Q0, *&_Q0, 1);
  __asm { FMLA            S8, S1, V0.S[2] }

  v21.__end_ = begin;
  operator delete(begin);
  return _S8;
}

float geom::cluster<float>::compute_component_surface_area(void *a1)
{
  memset(&v13, 0, sizeof(v13));
  std::vector<float>::reserve(&v13, (a1[15] - a1[14]) >> 4);
  v2 = a1[14];
  v3 = a1[15];
  while (v2 != v3)
  {
    v4 = *v2;
    v2 += 2;
    std::vector<float>::push_back[abi:nn200100](&v13.__begin_, (v4 + 4));
  }

  begin = v13.__begin_;
  v6 = v13.__end_ - v13.__begin_;
  if (v6 >= 2)
  {
    v7 = (v13.__end_ - v13.__begin_) >> 1;
    v14 = 2;
    if (v7 >= 3)
    {
      v8 = MEMORY[0x277D85DD0];
      for (i = 2; i < v7; v14 = i)
      {
        block[0] = v8;
        block[1] = 0x40000000;
        block[2] = ___ZN4geom26dispatch_apply_with_strideIZNS_24parallel_reduce_in_placeIfNS_11plus_equalsIfEEEEvRNSt3__16vectorIT_NS4_9allocatorIS6_EEEEmP16dispatch_queue_sT0_EUlmmE_EEmmmSC_S6__block_invoke;
        block[3] = &__block_descriptor_tmp_20;
        block[4] = 128;
        v17 = (i + v13.__end_ - v13.__begin_ - 1) / i;
        v18 = &v14;
        v19 = v6;
        v20 = &v13;
        v21 = &v15;
        dispatch_apply((v17 + 127) >> 7, 0, block);
        i = 2 * v14;
      }

      begin = v13.__begin_;
    }
  }

  v10 = vmulq_f32(*(a1[9] + 16), vextq_s8(vuzp1q_s32(*(a1[9] + 16), *(a1[9] + 16)), *(a1[9] + 16), 0xCuLL));
  v11 = *begin + (((a1[12] - a1[11]) >> 3) * (v10.f32[2] + vaddv_f32(*v10.f32)));
  v13.__end_ = begin;
  operator delete(begin);
  return v11;
}

void geom::cluster<double>::init(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, atomic_uint *a7, int a8, double a9, int a10)
{
  v40 = 0;
  v41 = a7;
  *(a1 + 192) = 1;
  a1[16] = a2;
  a1[17] = a3;
  v15 = *(a2 + 96);
  v17 = *(a2 + 48);
  v16 = *(a2 + 64);
  *(a1 + 5) = *(a2 + 80);
  *(a1 + 6) = v15;
  *(a1 + 3) = v17;
  *(a1 + 4) = v16;
  *(a1 + 28) = a10;
  *(a1 + 15) = a9;
  v18 = (*(a2 + 4) * *(a2 + 4) * *(a2 + 4));
  __p = 0;
  v39 = 0;
  if (v18)
  {
    operator new();
  }

  block = MEMORY[0x277D85DD0];
  v43 = 0x40000000;
  v44 = ___ZN4geom26dispatch_apply_with_strideIZNS_7clusterIdE4initEPKNS_10voxel_gridIdEEPvRKNSt3__16vectorIDv3_dNS8_9allocatorISA_EEEERKNS9_IjNSB_IjEEEERKNS_3bvhIdLh3EEEPNS_17convex_mesh_cacheIdEEjjdEUlmE_EEmmmP16dispatch_queue_sT__block_invoke;
  v45 = &__block_descriptor_tmp_21;
  v46 = 1024;
  v47 = v18;
  v48 = a1;
  p_p = &__p;
  dispatch_apply((v18 + 1023) >> 10, 0, &block);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  block = MEMORY[0x277D85DD0];
  v43 = 0x40000000;
  v44 = ___ZN4geom26dispatch_apply_with_strideIZNS_7clusterIdE4initEPKNS_10voxel_gridIdEEPvRKNSt3__16vectorIDv3_dNS8_9allocatorISA_EEEERKNS9_IjNSB_IjEEEERKNS_3bvhIdLh3EEEPNS_17convex_mesh_cacheIdEEjjdEUlmRZNS2_4initES6_S7_SF_SJ_SN_SQ_jjdE18voxel_init_contextE_SR_EEmmmP16dispatch_queue_sRNS9_IT0_NSB_ISW_EEEET__block_invoke;
  v45 = &__block_descriptor_tmp_23;
  v46 = 1024;
  v47 = v18;
  v48 = a1;
  p_p = &__p;
  v50 = a4;
  v51 = a5;
  v52 = a6;
  v53 = &v41;
  v54 = a8;
  v55 = &v35;
  dispatch_apply((v18 + 1023) >> 10, 0, &block);
  v19 = v35;
  if (v35 == v36)
  {
    v21 = 0;
    v20 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v20 += (v19[1] - *v19) >> 3;
      v21 += (v19[4] - v19[3]) >> 4;
      v19 += 12;
    }

    while (v19 != v36);
  }

  std::vector<double>::reserve(a1 + 18, v20);
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::reserve(a1 + 21, v21);
  v22 = v35;
  v23 = v36;
  while (v22 != v23)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<unsigned long long const*,unsigned long long const*,std::back_insert_iterator<std::vector<unsigned long long>>>(&block, *v22, v22[1], a1 + 18);
    v24 = v22[3];
    v25 = v22[4];
    while (v24 != v25)
    {
      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100](a1 + 21, v24++);
    }

    v22 += 12;
  }

  v27 = v41;
  add = atomic_fetch_add(v41, 1u);
  v28 = *(v27 + 1);
  if (add >= (*(v27 + 2) - v28) >> 4)
  {
    operator new();
  }

  v29 = (v28 + 16 * add);
  v31 = *v29;
  v30 = v29[1];
  if (v30)
  {
    atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
  }

  v32 = a1[1];
  *a1 = v31;
  a1[1] = v30;
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
    v31 = *a1;
  }

  v33 = *(a1 + 28);
  v34 = a1[15];
  geom::merge_convex_hulls<double>(a1[21], (a1[22] - a1[21]) >> 4, v31 + 80, (v31 + 104));
  geom::cluster<double>::compute_concavity(a1);
  block = &v35;
  _ZNSt3__16vectorIZN4geom7clusterIfE4initEPKNS1_10voxel_gridIfEEPvRKNS0_IDv3_fNS_9allocatorIS9_EEEERKNS0_IjNSA_IjEEEERKNS1_3bvhIfLh3EEEPNS1_17convex_mesh_cacheIfEEjjfE18voxel_init_contextNSA_ISQ_EEE16__destroy_vectorclB8nn200100Ev(&block);
  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }
}

void geom::merge_convex_hulls<double>(uint64_t *a1, uint64_t a2, uint64_t a3, int **a4)
{
  if (a2)
  {
    v7 = a1;
    v8 = 0;
    v9 = 16 * a2;
    v10 = 16 * a2;
    v11 = a1;
    do
    {
      v12 = *v11;
      v11 += 2;
      v8 += (*(v12 + 88) - *(v12 + 80)) >> 5;
      v10 -= 16;
    }

    while (v10);
    *(a3 + 8) = *a3;
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE7reserveEm(a3, v8);
    do
    {
      v13 = *v7;
      v7 += 2;
      _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE18__insert_with_sizeB8nn200100INS_11__wrap_iterIPS1_EES8_EES8_NS6_IPKS1_EET_T0_l(a3, *(a3 + 8), *(v13 + 80), *(v13 + 88), (*(v13 + 88) - *(v13 + 80)) >> 5);
      v9 -= 16;
    }

    while (v9);
    __p[0] = 0;
    __p[1] = 0;
    v23 = 0;
    memset(&v21, 0, sizeof(v21));
    geom::convex_hull_triangulated_3<double>((*(a3 + 8) - *a3) >> 5, *a3, a4);
    v21.__end_ = 0;
    __p[1] = 0;
    v14 = (*(a3 + 8) - *a3) >> 5;
    __x = -1;
    std::vector<unsigned int>::resize(&v21, v14, &__x);
    v16 = *a4;
    v15 = a4[1];
    while (v16 != v15)
    {
      v17 = *v16;
      begin = v21.__begin_;
      v19 = v21.__begin_[v17];
      if (v19 == -1)
      {
        v21.__begin_[v17] = (__p[1] - __p[0]) >> 5;
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(__p, (*a3 + 32 * *v16));
        v19 = begin[v17];
      }

      *v16++ = v19;
    }

    v20 = *a3;
    if (*a3)
    {
      *(a3 + 8) = v20;
      operator delete(v20);
    }

    *a3 = *__p;
    *(a3 + 16) = v23;
    __p[1] = 0;
    v23 = 0;
    __p[0] = 0;
    if (v21.__begin_)
    {
      v21.__end_ = v21.__begin_;
      operator delete(v21.__begin_);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    *(a3 + 8) = *a3;
    a4[1] = *a4;
  }
}

float64x2_t **geom::cluster<double>::compute_concavity(float64x2_t **result)
{
  v1 = *result;
  v2 = (*result)->f64[0];
  v3 = (*result)->f64[1];
  v4 = vcgtq_f64(v1[2], v1[4]);
  v5 = vcgtq_f64(v1[1], v1[3]);
  if (((*&v5.f64[0] | *&v4.f64[0] | *&v5.f64[1]) & 0x8000000000000000) != 0)
  {
    v6 = v1->f64[0];
    if (v1->f64[0] <= 2.22044605e-16)
    {
      goto LABEL_10;
    }

    v7 = *&v1[5].f64[0];
    v8 = *&v1[5].f64[1];
    if (v8 == v7)
    {
      v5.f64[0] = -INFINITY;
      v4.f64[0] = INFINITY;
      v10 = vdupq_n_s64(0xFFF0000000000000);
      v9 = vdupq_n_s64(0x7FF0000000000000uLL);
    }

    else
    {
      v4.f64[0] = INFINITY;
      v5.f64[0] = -INFINITY;
      v9 = vdupq_n_s64(0x7FF0000000000000uLL);
      v10 = vdupq_n_s64(0xFFF0000000000000);
      do
      {
        v11 = *v7;
        v12 = v7[1];
        v7 += 2;
        v9 = vminnmq_f64(v11, v9);
        v4 = vminnmq_f64(*&v12.f64[0], *&v4.f64[0]);
        v10 = vmaxnmq_f64(v11, v10);
        v5 = vmaxnmq_f64(*&v12.f64[0], *&v5.f64[0]);
      }

      while (v7 != v8);
    }

    v1[1] = v9;
    v1[2] = v4;
    v1[3] = v10;
    v1[4] = v5;
    v1 = *result;
  }

  v6 = v1->f64[0];
LABEL_10:
  if (v6 <= 0.0)
  {
    result[2] = 0;
    result[3] = 0;
    result[4] = 0;
  }

  else
  {
    v13 = result[3];
    v14 = (*result)->f64[0] - *(result + 2);
    if (v14 < 0.0)
    {
      v14 = 0.0;
    }

    *(result + 4) = v14;
  }

  *(result + 193) = 1;
  return result;
}

float64x2_t **geom::cluster<double>::init(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *__c, uint64_t a6, __int128 *a7, int a8, double a9)
{
  a1[16] = a2;
  a1[17] = a3;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE((a1 + 18), __c);
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate(a1 + 21);
  *(a1 + 21) = *a6;
  a1[23] = *(a6 + 16);
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a1 + 28) = a8;
  *(a1 + 15) = a9;
  v15 = *a7;
  v16 = a7[1];
  v17 = a7[3];
  *(a1 + 5) = a7[2];
  *(a1 + 6) = v17;
  *(a1 + 3) = v15;
  *(a1 + 4) = v16;
  *(a1 + 192) = 1;
  add = atomic_fetch_add(a4, 1u);
  v19 = *(a4 + 8);
  if (add >= (*(a4 + 16) - v19) >> 4)
  {
    operator new();
  }

  v20 = (v19 + 16 * add);
  v22 = *v20;
  v21 = v20[1];
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  v23 = a1[1];
  *a1 = v22;
  a1[1] = v21;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    v22 = *a1;
  }

  v24 = *(a1 + 28);
  v25 = a1[15];
  geom::merge_convex_hulls<double>(a1[21], (a1[22] - a1[21]) >> 4, v22 + 80, (v22 + 104));

  return geom::cluster<double>::compute_concavity(a1);
}

void geom::cluster<double>::merge_into(int ***a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = (a1 + 21);
  v9 = (a2 + 168);
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::reserve(a1 + 21, ((*(a2 + 176) - *(a2 + 168)) >> 4) + ((a1[22] - a1[21]) >> 4));
  std::vector<double>::reserve(a1 + 18, ((*(v9 - 2) - *(v9 - 3)) >> 3) + a1[19] - a1[18]);
  v10 = *v9;
  v11 = v9[1];
  while (v10 != v11)
  {
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100](v8, v10);
    v10 += 16;
  }

  v12 = *(a2 + 144);
  v13 = *(a2 + 152);
  if (v12 != v13)
  {
    do
    {
      std::vector<unsigned long long>::push_back[abi:nn200100](a1 + 18, v12++);
    }

    while (v12 != v13);
    v12 = *(a2 + 144);
  }

  *(a2 + 152) = v12;
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::clear[abi:nn200100](v9);
  v14 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v15 = a1[1];
  *a1 = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    if (*a1)
    {
      goto LABEL_18;
    }
  }

  else if (v14)
  {
    goto LABEL_18;
  }

  add = atomic_fetch_add(a4, 1u);
  v17 = *(a4 + 8);
  if (add >= (*(a4 + 16) - v17) >> 4)
  {
    operator new();
  }

  v18 = (v17 + 16 * add);
  v20 = *v18;
  v19 = v18[1];
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = a1[1];
  *a1 = v20;
  a1[1] = v19;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    v20 = *a1;
  }

  v22 = *(a1 + 28);
  v23 = a1[15];
  geom::merge_convex_hulls<double>(a1[21], (a1[22] - a1[21]) >> 4, (v20 + 10), v20 + 13);
LABEL_18:
  *(a1 + 1) = vaddq_f64(*(a2 + 16), *(a1 + 1));
  v24 = vminnmq_f64(a1[8], *(a2 + 64));
  *(a1 + 3) = vminnmq_f64(*(a1 + 3), *(a2 + 48));
  *(a1 + 4) = v24;
  v25 = vmaxnmq_f64(a1[12], *(a2 + 96));
  *(a1 + 5) = vmaxnmq_f64(*(a1 + 5), *(a2 + 80));
  *(a1 + 6) = v25;
  geom::cluster<double>::compute_concavity(a1);

  geom::cluster<double>::deinit(a2, a4);
}

void geom::cluster<double>::deinit(uint64_t a1, uint64_t a2)
{
  v4 = vdupq_n_s64(0x7FF8000000000000uLL);
  v15 = v4;
  *(a1 + 16) = v4;
  *(a1 + 32) = 0x7FF8000000000000;
  v4.i64[0] = 0x7FF0000000000000;
  v14 = vdupq_n_s64(0x7FF0000000000000uLL);
  *(a1 + 48) = v14;
  *(a1 + 64) = v4;
  v4.i64[0] = 0xFFF0000000000000;
  v13 = vdupq_n_s64(0xFFF0000000000000);
  *(a1 + 80) = v13;
  *(a1 + 96) = v4;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v5 = *(a1 + 168);
  v6 = *(a1 + 176);
  while (v5 != v6)
  {
    v7 = *(v6 - 8);
    if (v7)
    {
      if (v7->__shared_owners_)
      {
        goto LABEL_6;
      }

      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((a2 + 8), v6 - 16);
      v8 = *(*(a2 + 16) - 16);
      *(v8 + 88) = *(v8 + 80);
      *(v8 + 112) = *(v8 + 104);
      *&v9 = 0xFFF0000000000000;
      *(v8 + 64) = v9;
      *&v9 = 0x7FF0000000000000;
      *v8 = v15;
      *(v8 + 16) = v14;
      *(v8 + 32) = v9;
      *(v8 + 48) = v13;
      v6 = *(a1 + 176);
      v7 = *(v6 - 8);
      if (v7)
      {
LABEL_6:
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }
    }

    v6 -= 16;
    *(a1 + 176) = v6;
    v5 = *(a1 + 168);
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    if (v10->__shared_owners_)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
LABEL_13:
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      goto LABEL_14;
    }

    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((a2 + 8), a1);
    v11 = *(*(a2 + 16) - 16);
    v11[5].i64[1] = v11[5].i64[0];
    v11[7].i64[0] = v11[6].i64[1];
    v12 = vdupq_n_s64(0x7FF0000000000000uLL);
    *v11 = vdupq_n_s64(0x7FF8000000000000uLL);
    v11[1] = v12;
    v12.i64[0] = 0xFFF0000000000000;
    v11[3] = vdupq_n_s64(0xFFF0000000000000);
    v11[4] = v12;
    v12.i64[0] = 0x7FF0000000000000;
    v11[2] = v12;
    v10 = *(a1 + 8);
    *a1 = 0;
    *(a1 + 8) = 0;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

LABEL_14:
  *(a1 + 152) = *(a1 + 144);
  *(a1 + 192) = 0;
}

double geom::cluster<double>::evaluate(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 136);
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  geom::query_exact_winding_number_3<double>(v2, v6);
  return 0.5 - v4;
}

BOOL geom::cluster<double>::find_implicit_surface_crossings(uint64_t a1, void *a2, int a3, uint64_t a4, uint32x4_t a5)
{
  v7 = 0;
  v8 = 0;
  v61 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 128);
  v10 = vcgeq_u32(a5, vdupq_n_s32(*(v9 + 4) - 1));
  v10.i32[3] = v10.i32[2];
  v11 = vmaxvq_u32(v10);
  do
  {
    if ((v11 & 0x80000000) != 0)
    {
      v13 = 0;
    }

    else
    {
      v12 = vaddq_s32(xmmword_2500C6860[v7], a5);
      v13 = *(*a2 + v12.u32[0] + (v12.u32[1] << *v9) + (v12.u32[2] << (2 * *v9)));
    }

    v8 |= (v13 << v7++);
  }

  while (v7 != 8);
  if (v8 - 1 < 0xFE)
  {
    v14 = 0;
    v16 = *(v9 + 16);
    v15 = *(v9 + 32);
    v17.i64[0] = a5.u32[2];
    v17.i64[1] = a5.u32[3];
    v18 = vcvtq_f64_u64(v17);
    v17.i64[0] = a5.u32[0];
    v17.i64[1] = a5.u32[1];
    v53 = vmlaq_f64(*(v9 + 48), vcvtq_f64_u64(v17), v16);
    v55 = vmlaq_f64(*(v9 + 64), v18, v15);
    v49 = vaddq_f64(v16, v53);
    v51 = vaddq_f64(v15, v55);
    v19 = v60;
    do
    {
      v20 = vnegq_s32(xmmword_2500C6860[v14]);
      v21.i64[0] = v20.i32[0];
      v21.i64[1] = v20.i32[1];
      *v19 = vbslq_s8(vcltzq_s64(v21), v49, v53);
      v19[1] = vbslq_s8(vcltzq_s64(v20.i32[2]), v51, v55);
      if ((v8 >> v14))
      {
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a4, v19);
      }

      ++v14;
      v19 += 2;
    }

    while (v14 != 8);
    v22 = 0;
    __asm { FMOV            V0.2D, #0.5 }

    v48 = _Q0;
    do
    {
      v27 = &unk_2500C68E0 + 2 * v22;
      LODWORD(v28) = *v27;
      v29 = v27[1];
      v30 = (1 << v28) & v8;
      if ((v30 != 0) != ((v8 >> v29) & 1))
      {
        _ZF = v30 == 0;
        if (v30)
        {
          v32 = v28;
        }

        else
        {
          v32 = v29;
        }

        v33 = &v60[2 * v32];
        v34 = *v33;
        v35 = v33[1];
        if (_ZF)
        {
          v28 = v28;
        }

        else
        {
          v28 = v29;
        }

        v36 = &v60[2 * v28];
        v37 = *v36;
        v38 = v36[1];
        v39 = vmulq_f64(vaddq_f64(v34, *v36), v48);
        v40 = vmulq_f64(vaddq_f64(v35, v38), v48);
        v57 = v39;
        v58 = v40;
        if (a3)
        {
          v41 = a3;
          do
          {
            v50 = v38;
            v52 = v37;
            v54 = v35;
            v56 = v34;
            v42 = *(a1 + 136);
            v59[0] = v39;
            v59[1] = v40;
            geom::query_exact_winding_number_3<double>(v42, v59);
            v44 = 0.5 - v43;
            if (v44 >= -2.22044605e-16)
            {
              v35 = v54;
              v34 = v56;
              if (v44 <= 2.22044605e-16)
              {
                break;
              }

              v37 = v57;
              v38 = v58;
            }

            else
            {
              v34 = v57;
              v35 = v58;
              v38 = v50;
              v37 = v52;
            }

            v40 = vmulq_f64(vaddq_f64(v35, v38), v48);
            v39 = vmulq_f64(vaddq_f64(v34, v37), v48);
            v57 = v39;
            v58 = v40;
            --v41;
          }

          while (v41);
        }

        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a4, &v57);
      }

      ++v22;
    }

    while (v22 != 12);
  }

  result = v8 != 0;
  v46 = *MEMORY[0x277D85DE8];
  return result;
}

void geom::cluster<double>::find_explicit_surface_crossings(uint64_t a1, __n128 a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 128);
  v3 = v2[1];
  v4 = v2[2];
  v5.i64[0] = a2.n128_u32[0];
  v5.i64[1] = a2.n128_u32[1];
  v6 = vcvtq_f64_u64(v5);
  v5.i64[0] = a2.n128_u32[2];
  v5.i64[1] = a2.n128_u32[3];
  v7 = vmlaq_f64(v2[4], vcvtq_f64_u64(v5), v4);
  v11 = vmlaq_f64(v2[3], v6, v3);
  v12 = v7;
  v13 = vaddq_f64(v3, v11);
  v14 = vaddq_f64(v4, v7);
  __p = 0;
  v9 = 0;
  v10 = 0;
  operator new();
}

double geom::cluster<double>::compute_component_volume(void *a1)
{
  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<double>::reserve(&__p, (a1[22] - a1[21]) >> 4);
  v2 = a1[21];
  v3 = a1[22];
  while (v2 != v3)
  {
    v5 = *v2;
    v2 += 2;
    v4 = v5;
    block[0] = 0;
    if (*v5 >= 0.0)
    {
      v6 = v4;
    }

    else
    {
      v6 = block;
    }

    std::vector<double>::push_back[abi:nn200100](&__p, v6);
  }

  v7 = __p;
  v8 = (v15 - __p) >> 3;
  if (v8 >= 2)
  {
    v9 = (v15 - __p) >> 2;
    v17 = 2;
    if (v9 >= 3)
    {
      v10 = MEMORY[0x277D85DD0];
      for (i = 2; i < v9; v17 = i)
      {
        block[0] = v10;
        block[1] = 0x40000000;
        block[2] = ___ZN4geom26dispatch_apply_with_strideIZNS_24parallel_reduce_in_placeIdNS_11plus_equalsIdEEEEvRNSt3__16vectorIT_NS4_9allocatorIS6_EEEEmP16dispatch_queue_sT0_EUlmmE_EEmmmSC_S6__block_invoke;
        block[3] = &__block_descriptor_tmp_31;
        block[4] = 128;
        v20 = (i + ((v15 - __p) >> 3) - 1) / i;
        v21 = &v17;
        v22 = v8;
        p_p = &__p;
        v24 = &v18;
        dispatch_apply((v20 + 127) >> 7, 0, block);
        i = 2 * v17;
      }

      v7 = __p;
    }
  }

  v12 = *v7 + vmuld_lane_f64(((a1[19] - a1[18]) >> 3) * *(a1[16] + 16), *(a1[16] + 16), 1) * *(a1[16] + 32);
  v15 = v7;
  operator delete(v7);
  return v12;
}

double geom::cluster<double>::compute_component_surface_area(void *a1)
{
  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<double>::reserve(&__p, (a1[22] - a1[21]) >> 4);
  v2 = a1[21];
  v3 = a1[22];
  while (v2 != v3)
  {
    v4 = *v2;
    v2 += 2;
    std::vector<double>::push_back[abi:nn200100](&__p, (v4 + 8));
  }

  v5 = __p;
  v6 = (v17 - __p) >> 3;
  if (v6 >= 2)
  {
    v7 = (v17 - __p) >> 2;
    v19 = 2;
    if (v7 >= 3)
    {
      v8 = MEMORY[0x277D85DD0];
      for (i = 2; i < v7; v19 = i)
      {
        block[0] = v8;
        block[1] = 0x40000000;
        block[2] = ___ZN4geom26dispatch_apply_with_strideIZNS_24parallel_reduce_in_placeIdNS_11plus_equalsIdEEEEvRNSt3__16vectorIT_NS4_9allocatorIS6_EEEEmP16dispatch_queue_sT0_EUlmmE_EEmmmSC_S6__block_invoke;
        block[3] = &__block_descriptor_tmp_31;
        block[4] = 128;
        v22 = (i + ((v17 - __p) >> 3) - 1) / i;
        v23 = &v19;
        v24 = v6;
        p_p = &__p;
        v26 = &v20;
        dispatch_apply((v22 + 127) >> 7, 0, block);
        i = 2 * v19;
      }

      v5 = __p;
    }
  }

  v10 = a1[16];
  v11 = v10[1];
  v12 = v10[2];
  v13 = vmulq_laneq_f64(v12, v11, 1).f64[0];
  v12.f64[1] = v10[1].f64[0];
  v14 = *v5 + ((a1[19] - a1[18]) >> 3) * (v13 + vaddvq_f64(vmulq_f64(v11, v12)));
  v17 = v5;
  operator delete(v5);
  return v14;
}

uint64_t ___ZN4geom26dispatch_apply_with_strideIZNS_7clusterIfE4initEPKNS_10voxel_gridIfEEPvRKNSt3__16vectorIDv3_fNS8_9allocatorISA_EEEERKNS9_IjNSB_IjEEEERKNS_3bvhIfLh3EEEPNS_17convex_mesh_cacheIfEEjjfEUlmE_EEmmmP16dispatch_queue_sT__block_invoke(uint64_t result, uint64_t a2, double a3, uint32x4_t a4)
{
  v4 = *(result + 32);
  v5 = v4 * a2;
  v6 = v4 * a2 + v4;
  if (*(result + 40) >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(result + 40);
  }

  if (v5 < v7)
  {
    v8 = result;
    do
    {
      v9 = *(v8 + 48);
      v11 = *(v9 + 72);
      v10 = *(v9 + 80);
      LODWORD(v9) = v11->i32[2];
      a4.i32[0] = v9 & v5;
      a4.i32[1] = (v5 >> v11->i32[0]) & v9;
      a4.i32[2] = (v5 >> (2 * v11->i8[0])) & v9;
      v12 = vmlaq_f32(v11[2], vcvtq_f32_u32(a4), v11[1]);
      result = geom::query_exact_winding_number_3<float>(v10);
      *(**(v8 + 56) + v5++) = (0.5 - v13) <= 0.00000011921;
    }

    while (v7 != v5);
  }

  return result;
}

void _ZNSt3__16vectorIZN4geom7clusterIfE4initEPKNS1_10voxel_gridIfEEPvRKNS0_IDv3_fNS_9allocatorIS9_EEEERKNS0_IjNSA_IjEEEERKNS1_3bvhIfLh3EEEPNS1_17convex_mesh_cacheIfEEjjfE18voxel_init_contextNSA_ISQ_EEE16__destroy_vectorclB8nn200100Ev(void ***a1)
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
        v4 -= 96;
        _ZNSt3__116allocator_traitsINS_9allocatorIZN4geom7clusterIfE4initEPKNS2_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS1_ISB_EEEERKNSA_IjNS1_IjEEEERKNS2_3bvhIfLh3EEEPNS2_17convex_mesh_cacheIfEEjjfE18voxel_init_contextEEE7destroyB8nn200100ISR_Li0EEEvRSS_PT_(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void _ZNSt3__116allocator_traitsINS_9allocatorIZN4geom7clusterIfE4initEPKNS2_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS1_ISB_EEEERKNSA_IjNS1_IjEEEERKNS2_3bvhIfLh3EEEPNS2_17convex_mesh_cacheIfEEjjfE18voxel_init_contextEEE7destroyB8nn200100ISR_Li0EEEvRSS_PT_(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    *(a2 + 80) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 48);
  if (v4)
  {
    *(a2 + 56) = v4;
    operator delete(v4);
  }

  v6 = (a2 + 24);
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v5 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v5;
    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<geom::convex_mesh<float>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286291458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25305E3F0);
}

void std::allocator<geom::convex_mesh<float>>::destroy[abi:nn200100](uint64_t a1, void *a2)
{
  v3 = a2[9];
  if (v3)
  {
    a2[10] = v3;
    operator delete(v3);
  }

  v4 = a2[6];
  if (v4)
  {
    a2[7] = v4;

    operator delete(v4);
  }
}

void _ZNSt3__16vectorIZN4geom7clusterIfE4initEPKNS1_10voxel_gridIfEEPvRKNS0_IDv3_fNS_9allocatorIS9_EEEERKNS0_IjNSA_IjEEEERKNS1_3bvhIfLh3EEEPNS1_17convex_mesh_cacheIfEEjjfE18voxel_init_contextNSA_ISQ_EEE6resizeEm(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    _ZNSt3__16vectorIZN4geom7clusterIfE4initEPKNS1_10voxel_gridIfEEPvRKNS0_IDv3_fNS_9allocatorIS9_EEEERKNS0_IjNSA_IjEEEERKNS1_3bvhIfLh3EEEPNS1_17convex_mesh_cacheIfEEjjfE18voxel_init_contextNSA_ISQ_EEE8__appendEm(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 96 * a2;
    while (v3 != v7)
    {
      v3 -= 96;
      _ZNSt3__116allocator_traitsINS_9allocatorIZN4geom7clusterIfE4initEPKNS2_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS1_ISB_EEEERKNSA_IjNS1_IjEEEERKNS2_3bvhIfLh3EEEPNS2_17convex_mesh_cacheIfEEjjfE18voxel_init_contextEEE7destroyB8nn200100ISR_Li0EEEvRSS_PT_(a1, v3);
    }

    *(a1 + 8) = v7;
  }
}

void ___ZN4geom26dispatch_apply_with_strideIZNS_7clusterIfE4initEPKNS_10voxel_gridIfEEPvRKNSt3__16vectorIDv3_fNS8_9allocatorISA_EEEERKNS9_IjNSB_IjEEEERKNS_3bvhIfLh3EEEPNS_17convex_mesh_cacheIfEEjjfEUlmRZNS2_4initES6_S7_SF_SJ_SN_SQ_jjfE18voxel_init_contextE_SR_EEmmmP16dispatch_queue_sRNS9_IT0_NSB_ISW_EEEET__block_invoke(uint64_t a1, uint64_t a2, uint32x4_t a3)
{
  v3 = *(a1 + 32);
  v4 = v3 * a2;
  v5 = v3 * a2 + v3;
  if (*(a1 + 40) >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(a1 + 40);
  }

  if (v4 < v6)
  {
    do
    {
      _ZZN4geom7clusterIfE4initEPKNS_10voxel_gridIfEEPvRKNSt3__16vectorIDv3_fNS7_9allocatorIS9_EEEERKNS8_IjNSA_IjEEEERKNS_3bvhIfLh3EEEPNS_17convex_mesh_cacheIfEEjjfENKUlmRZNS1_4initES5_S6_SE_SI_SM_SP_jjfE18voxel_init_contextE_clEmSR_(a1 + 48, v4++, **(a1 + 104) + 96 * a2, a3);
    }

    while (v6 != v4);
  }
}

void _ZZN4geom7clusterIfE4initEPKNS_10voxel_gridIfEEPvRKNSt3__16vectorIDv3_fNS7_9allocatorIS9_EEEERKNS8_IjNSA_IjEEEERKNS_3bvhIfLh3EEEPNS_17convex_mesh_cacheIfEEjjfENKUlmRZNS1_4initES5_S6_SE_SI_SM_SP_jjfE18voxel_init_contextE_clEmSR_(uint64_t a1, unint64_t a2, uint64_t a3, uint32x4_t a4)
{
  v7 = *a1;
  v8 = *(*a1 + 72);
  v9 = v8[2];
  LODWORD(v8) = *v8;
  a4.i32[0] = v9 & a2;
  a4.i32[1] = (a2 >> v8) & v9;
  a4.i32[2] = (a2 >> (2 * v8)) & v9;
  v10 = (a3 + 48);
  *(a3 + 56) = *(a3 + 48);
  v15 = a4;
  implicit_surface_crossings = geom::cluster<float>::find_implicit_surface_crossings(v7, *(a1 + 8), *(a1 + 48), a3 + 48, a4);
  if (*v10 != v10[1] || !implicit_surface_crossings)
  {
    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    v14 = *(a1 + 32);
    geom::cluster<float>::find_explicit_surface_crossings(v7, v15);
  }

  *&v16 = a2;
  std::vector<unsigned long long>::push_back[abi:nn200100](a3, &v16);
}

void _ZNSt3__16vectorIZN4geom7clusterIfE4initEPKNS1_10voxel_gridIfEEPvRKNS0_IDv3_fNS_9allocatorIS9_EEEERKNS0_IjNSA_IjEEEERKNS1_3bvhIfLh3EEEPNS1_17convex_mesh_cacheIfEEjjfE18voxel_init_contextNSA_ISQ_EEE8__appendEm(void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 5) >= a2)
  {
    if (a2)
    {
      v10 = 96 * ((96 * a2 - 96) / 0x60) + 96;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 5);
    v7 = v6 + a2;
    if (v6 + a2 > 0x2AAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x155555555555555)
    {
      v9 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIZN4geom7clusterIfE4initEPKNS2_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS1_ISB_EEEERKNSA_IjNS1_IjEEEERKNS2_3bvhIfLh3EEEPNS2_17convex_mesh_cacheIfEEjjfE18voxel_init_contextEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSV_m(a1, v9);
    }

    v11 = 96 * v6;
    v12 = 96 * ((96 * a2 - 96) / 0x60) + 96;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = a1[1];
    v15 = *a1 + v11 - v14;
    _ZNSt3__134__uninitialized_allocator_relocateB8nn200100INS_9allocatorIZN4geom7clusterIfE4initEPKNS2_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS1_ISB_EEEERKNSA_IjNS1_IjEEEERKNS2_3bvhIfLh3EEEPNS2_17convex_mesh_cacheIfEEjjfE18voxel_init_contextEEPSR_EEvRT_T0_SW_SW_(a1, *a1, v14, v15);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    _ZNSt3__114__split_bufferIZN4geom7clusterIfE4initEPKNS1_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS_9allocatorISA_EEEERKNS9_IjNSB_IjEEEERKNS1_3bvhIfLh3EEEPNS1_17convex_mesh_cacheIfEEjjfE18voxel_init_contextRNSB_ISR_EEED2Ev(v18);
  }
}

void _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIZN4geom7clusterIfE4initEPKNS2_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS1_ISB_EEEERKNSA_IjNS1_IjEEEERKNS2_3bvhIfLh3EEEPNS2_17convex_mesh_cacheIfEEjjfE18voxel_init_contextEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSV_m(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void _ZNSt3__134__uninitialized_allocator_relocateB8nn200100INS_9allocatorIZN4geom7clusterIfE4initEPKNS2_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS1_ISB_EEEERKNSA_IjNS1_IjEEEERKNS2_3bvhIfLh3EEEPNS2_17convex_mesh_cacheIfEEjjfE18voxel_init_contextEEPSR_EEvRT_T0_SW_SW_(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
      a4[6] = 0;
      a4[7] = 0;
      a4[8] = 0;
      *(a4 + 3) = *(v7 + 48);
      a4[8] = *(v7 + 64);
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      a4[9] = 0;
      a4[10] = 0;
      a4[11] = 0;
      *(a4 + 9) = *(v7 + 72);
      a4[11] = *(v7 + 88);
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      v7 += 96;
      a4 += 12;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      _ZNSt3__116allocator_traitsINS_9allocatorIZN4geom7clusterIfE4initEPKNS2_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS1_ISB_EEEERKNSA_IjNS1_IjEEEERKNS2_3bvhIfLh3EEEPNS2_17convex_mesh_cacheIfEEjjfE18voxel_init_contextEEE7destroyB8nn200100ISR_Li0EEEvRSS_PT_(a1, v5);
      v5 += 96;
    }
  }
}

void **_ZNSt3__114__split_bufferIZN4geom7clusterIfE4initEPKNS1_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS_9allocatorISA_EEEERKNS9_IjNSB_IjEEEERKNS1_3bvhIfLh3EEEPNS1_17convex_mesh_cacheIfEEjjfE18voxel_init_contextRNSB_ISR_EEED2Ev(void **a1)
{
  _ZNSt3__114__split_bufferIZN4geom7clusterIfE4initEPKNS1_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS_9allocatorISA_EEEERKNS9_IjNSB_IjEEEERKNS1_3bvhIfLh3EEEPNS1_17convex_mesh_cacheIfEEjjfE18voxel_init_contextRNSB_ISR_EEE5clearB8nn200100Ev(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void _ZNSt3__114__split_bufferIZN4geom7clusterIfE4initEPKNS1_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS_9allocatorISA_EEEERKNS9_IjNSB_IjEEEERKNS1_3bvhIfLh3EEEPNS1_17convex_mesh_cacheIfEEjjfE18voxel_init_contextRNSB_ISR_EEE5clearB8nn200100Ev(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 96;
    _ZNSt3__116allocator_traitsINS_9allocatorIZN4geom7clusterIfE4initEPKNS2_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS1_ISB_EEEERKNSA_IjNS1_IjEEEERKNS2_3bvhIfLh3EEEPNS2_17convex_mesh_cacheIfEEjjfE18voxel_init_contextEEE7destroyB8nn200100ISR_Li0EEEvRSS_PT_(v4, i - 96);
  }
}

void std::vector<unsigned long long>::push_back[abi:nn200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
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

void **std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100](void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<geom::convex_mesh<float>>>>(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::shared_ptr<geom::convex_mesh<float>>>::~__split_buffer(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<geom::convex_mesh<float>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void **std::__split_buffer<std::shared_ptr<geom::convex_mesh<float>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<geom::convex_mesh<float>>>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<geom::convex_mesh<float>>>::clear[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<unsigned long long const*,unsigned long long const*,std::back_insert_iterator<std::vector<unsigned long long>>>(uint64_t a1, void *a2, void *a3, const void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4[1];
    do
    {
      v8 = a4[2];
      if (v7 >= v8)
      {
        v9 = *a4;
        v10 = v7 - *a4;
        v11 = v10 >> 3;
        v12 = (v10 >> 3) + 1;
        if (v12 >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v13 = v8 - v9;
        if (v13 >> 2 > v12)
        {
          v12 = v13 >> 2;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a4, v14);
        }

        *(8 * v11) = *v5;
        v7 = (8 * v11 + 8);
        memcpy(0, v9, v10);
        v15 = *a4;
        *a4 = 0;
        a4[1] = v7;
        a4[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = *v5;
        v7 += 8;
      }

      a4[1] = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void **std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<geom::convex_mesh<float>>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<geom::convex_mesh<float>>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

char *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__insert_with_sizeB8nn200100INS_11__wrap_iterIPS1_EES8_EES8_NS6_IPKS1_EET_T0_l(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 4)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    if (v15)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v15);
    }

    v33 = 16 * v16;
    v34 = 16 * a5;
    v35 = (16 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 16;
    }

    while (v34);
    memcpy((v33 + 16 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 16 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (16 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 4;
  if (v18 >= a5)
  {
    v29 = &__dst[16 * a5];
    v30 = (v10 - 16 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[16 * a5], __dst, v10 - v29);
    }

    v28 = 16 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[16 * a5];
    v23 = v10 + v20;
    if (&v21[-16 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -16 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 16;
        v24 += 16;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[16 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::clear[abi:nn200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZNK4geom7clusterIfE31find_explicit_surface_crossingsEDv3_jRKNS_6vectorIDv3_fNS_9allocatorIS7_EEEERKNS6_IjNS8_IjEEEERKNS2_3bvhIfLh3EEERSA_EUljE_NS8_ISM_EEFbjEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2862914A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL _ZNSt3__110__function6__funcIZNK4geom7clusterIfE31find_explicit_surface_crossingsEDv3_jRKNS_6vectorIDv3_fNS_9allocatorIS7_EEEERKNS6_IjNS8_IjEEEERKNS2_3bvhIfLh3EEERSA_EUljE_NS8_ISM_EEFbjEEclEOj(uint64_t a1, _DWORD *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = 3 * *a2;
  v4 = **(a1 + 32);
  v5 = **(a1 + 24);
  v6 = *(v5 + 16 * *(v4 + 4 * (v3 + 1)));
  v7 = *(v5 + 16 * *(v4 + 4 * (v3 + 2)));
  v14[0] = *(v5 + 16 * *(v4 + 4 * v3));
  v14[1] = v6;
  v14[2] = v7;
  v8 = geom::intersect_triangle_bbox_3<float>(v14, *(a1 + 8), v15);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    v11 = v15;
    do
    {
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(*(a1 + 16), v11++);
      --v10;
    }

    while (v10);
  }

  result = v9 != 0;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4geom7clusterIfE31find_explicit_surface_crossingsEDv3_jRKNS_6vectorIDv3_fNS_9allocatorIS7_EEEERKNS6_IjNS8_IjEEEERKNS2_3bvhIfLh3EEERSA_EUljE_NS8_ISM_EEFbjEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZNK4geom7clusterIfE31find_explicit_surface_crossingsEDv3_jRKNSt3__16vectorIDv3_fNS3_9allocatorIS5_EEEERKNS4_IjNS6_IjEEEERKNS_3bvhIfLh3EEERS8_EUljE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZNK4geom7clusterIfE31find_explicit_surface_crossingsEDv3_jRKNS_6vectorIDv3_fNS_9allocatorIS7_EEEERKNS6_IjNS8_IjEEEERKNS2_3bvhIfLh3EEERSA_EUlRKNS2_4bboxIfLh3EEEE_NS8_ISQ_EEFbSP_EE7__cloneEPNS0_6__baseISS_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286291528;
  a2[1] = v2;
  return result;
}

BOOL _ZNSt3__110__function6__funcIZNK4geom7clusterIfE31find_explicit_surface_crossingsEDv3_jRKNS_6vectorIDv3_fNS_9allocatorIS7_EEEERKNS6_IjNS8_IjEEEERKNS2_3bvhIfLh3EEERSA_EUlRKNS2_4bboxIfLh3EEEE_NS8_ISQ_EEFbSP_EEclESP_(uint64_t a1, float32x4_t *a2)
{
  v2 = *(a1 + 8);
  v3 = vcgtq_f32(*a2, v2[1]);
  v3.i32[3] = v3.i32[2];
  if ((vmaxvq_u32(v3) & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = vcgtq_f32(*v2, a2[1]);
  v4.i32[3] = v4.i32[2];
  return (vmaxvq_u32(v4) & 0x80000000) == 0;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4geom7clusterIfE31find_explicit_surface_crossingsEDv3_jRKNS_6vectorIDv3_fNS_9allocatorIS7_EEEERKNS6_IjNS8_IjEEEERKNS2_3bvhIfLh3EEERSA_EUlRKNS2_4bboxIfLh3EEEE_NS8_ISQ_EEFbSP_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZNK4geom7clusterIfE31find_explicit_surface_crossingsEDv3_jRKNSt3__16vectorIDv3_fNS3_9allocatorIS5_EEEERKNS4_IjNS6_IjEEEERKNS_3bvhIfLh3EEERS8_EUlRKNS_4bboxIfLh3EEEE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(geom::bbox<float,(unsigned char)3> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t ___ZN4geom26dispatch_apply_with_strideIZNS_24parallel_reduce_in_placeIfNS_11plus_equalsIfEEEEvRNSt3__16vectorIT_NS4_9allocatorIS6_EEEEmP16dispatch_queue_sT0_EUlmmE_EEmmmSC_S6__block_invoke(uint64_t result, uint64_t a2)
{
  v3 = *(result + 32);
  v2 = *(result + 40);
  v4 = v3 * a2;
  if (v2 >= v3 * a2 + v3)
  {
    v2 = v3 * a2 + v3;
  }

  v5 = v2 > v4;
  v6 = v2 - v4;
  if (v5)
  {
    v7 = *(result + 56);
    v8 = **(result + 48);
    v9 = v3 * v8 * a2;
    do
    {
      if ((v8 >> 1) + v9 < v7)
      {
        v10 = (**(result + 64) + 4 * v9);
        *v10 = v10[v8 >> 1] + *v10;
      }

      v9 += v8;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t ___ZN4geom26dispatch_apply_with_strideIZNS_7clusterIdE4initEPKNS_10voxel_gridIdEEPvRKNSt3__16vectorIDv3_dNS8_9allocatorISA_EEEERKNS9_IjNSB_IjEEEERKNS_3bvhIdLh3EEEPNS_17convex_mesh_cacheIdEEjjdEUlmE_EEmmmP16dispatch_queue_sT__block_invoke(uint64_t result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = *(result + 32);
  v9 = v8 * a2;
  v10 = v8 * a2 + v8;
  if (*(result + 40) >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(result + 40);
  }

  if (v9 < v11)
  {
    v12 = result;
    do
    {
      v13 = *(v12 + 48);
      v15 = *(v13 + 128);
      v14 = *(v13 + 136);
      LODWORD(v13) = *(v15 + 8);
      v16.i64[0] = v13 & v9;
      v16.i64[1] = (v9 >> *v15) & v13;
      v17 = vcvtq_f64_u64(v16);
      v16.i64[0] = (v9 >> (2 * *v15)) & v13;
      v16.i64[1] = HIDWORD(a8);
      v18 = vmlaq_f64(*(v15 + 64), vcvtq_f64_u64(v16), *(v15 + 32));
      v20[0] = vmlaq_f64(*(v15 + 48), v17, *(v15 + 16));
      v20[1] = v18;
      result = geom::query_exact_winding_number_3<double>(v14, v20);
      *(**(v12 + 56) + v9++) = 0.5 - v19 <= 2.22044605e-16;
    }

    while (v11 != v9);
  }

  return result;
}

void std::__shared_ptr_emplace<geom::convex_mesh<double>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2862915B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25305E3F0);
}

void std::allocator<geom::convex_mesh<double>>::destroy[abi:nn200100](uint64_t a1, void *a2)
{
  v3 = a2[13];
  if (v3)
  {
    a2[14] = v3;
    operator delete(v3);
  }

  v4 = a2[10];
  if (v4)
  {
    a2[11] = v4;

    operator delete(v4);
  }
}

void ___ZN4geom26dispatch_apply_with_strideIZNS_7clusterIdE4initEPKNS_10voxel_gridIdEEPvRKNSt3__16vectorIDv3_dNS8_9allocatorISA_EEEERKNS9_IjNSB_IjEEEERKNS_3bvhIdLh3EEEPNS_17convex_mesh_cacheIdEEjjdEUlmRZNS2_4initES6_S7_SF_SJ_SN_SQ_jjdE18voxel_init_contextE_SR_EEmmmP16dispatch_queue_sRNS9_IT0_NSB_ISW_EEEET__block_invoke(uint64_t a1, uint64_t a2, uint32x4_t a3)
{
  v3 = *(a1 + 32);
  v4 = v3 * a2;
  v5 = v3 * a2 + v3;
  if (*(a1 + 40) >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(a1 + 40);
  }

  if (v4 < v6)
  {
    do
    {
      _ZZN4geom7clusterIdE4initEPKNS_10voxel_gridIdEEPvRKNSt3__16vectorIDv3_dNS7_9allocatorIS9_EEEERKNS8_IjNSA_IjEEEERKNS_3bvhIdLh3EEEPNS_17convex_mesh_cacheIdEEjjdENKUlmRZNS1_4initES5_S6_SE_SI_SM_SP_jjdE18voxel_init_contextE_clEmSR_(a1 + 48, v4++, **(a1 + 104) + 96 * a2, a3);
    }

    while (v6 != v4);
  }
}

void _ZZN4geom7clusterIdE4initEPKNS_10voxel_gridIdEEPvRKNSt3__16vectorIDv3_dNS7_9allocatorIS9_EEEERKNS8_IjNSA_IjEEEERKNS_3bvhIdLh3EEEPNS_17convex_mesh_cacheIdEEjjdENKUlmRZNS1_4initES5_S6_SE_SI_SM_SP_jjdE18voxel_init_contextE_clEmSR_(uint64_t a1, unint64_t a2, uint64_t a3, uint32x4_t a4)
{
  v7 = *a1;
  v8 = *(*a1 + 128);
  v9 = v8[2];
  LODWORD(v8) = *v8;
  a4.i32[0] = v9 & a2;
  a4.i32[1] = (a2 >> v8) & v9;
  a4.i32[2] = (a2 >> (2 * v8)) & v9;
  v10 = (a3 + 48);
  *(a3 + 56) = *(a3 + 48);
  v15 = a4;
  implicit_surface_crossings = geom::cluster<double>::find_implicit_surface_crossings(v7, *(a1 + 8), *(a1 + 48), a3 + 48, a4);
  if (*v10 != v10[1] || !implicit_surface_crossings)
  {
    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    v14 = *(a1 + 32);
    geom::cluster<double>::find_explicit_surface_crossings(v7, v15);
  }

  *&v16 = a2;
  std::vector<unsigned long long>::push_back[abi:nn200100](a3, &v16);
}

char *_ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE18__insert_with_sizeB8nn200100INS_11__wrap_iterIPS1_EES8_EES8_NS6_IPKS1_EET_T0_l(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 5)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 5);
    if (v12 >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 4 > v12)
    {
      v12 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 5;
    if (v15)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v15);
    }

    v36 = 32 * v16;
    v37 = 32 * a5;
    v38 = (32 * v16);
    do
    {
      v39 = *v7;
      v40 = v7[1];
      v7 += 2;
      *v38 = v39;
      v38[1] = v40;
      v38 += 2;
      v37 -= 32;
    }

    while (v37);
    memcpy((v36 + 32 * a5), v5, *(a1 + 8) - v5);
    v41 = *a1;
    v42 = v36 + 32 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v43 = v5 - v41;
    v44 = (v36 - (v5 - v41));
    memcpy(v44, v41, v43);
    v45 = *a1;
    *a1 = v44;
    *(a1 + 8) = v42;
    *(a1 + 16) = 0;
    if (v45)
    {
      operator delete(v45);
    }

    return (32 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 5;
  if (v18 >= a5)
  {
    v31 = &__dst[32 * a5];
    v32 = (v10 - 32 * a5);
    v33 = *(a1 + 8);
    while (v32 < v10)
    {
      v34 = *v32;
      v35 = v32[1];
      v32 += 2;
      *v33 = v34;
      v33[1] = v35;
      v33 += 2;
    }

    *(a1 + 8) = v33;
    if (v10 != v31)
    {
      memmove(&__dst[32 * a5], __dst, v10 - v31);
    }

    v30 = 32 * a5;
    v28 = v5;
    v29 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[32 * a5];
    v23 = v10 + v20;
    if (&v21[-32 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -32 * a5];
      do
      {
        v26 = (v24 - v7);
        v27 = *(v25 - v7 + 16);
        *v26 = *(v25 - v7);
        v26[1] = v27;
        v25 += 32;
        v24 += 32;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[32 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v28 = v5;
      v29 = v7;
      v30 = v10 - v5;
LABEL_29:
      memmove(v28, v29, v30);
    }
  }

  return v5;
}

__n128 _ZNKSt3__110__function6__funcIZNK4geom7clusterIdE31find_explicit_surface_crossingsEDv3_jRKNS_6vectorIDv3_dNS_9allocatorIS7_EEEERKNS6_IjNS8_IjEEEERKNS2_3bvhIdLh3EEERSA_EUljE_NS8_ISM_EEFbjEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286291608;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL _ZNSt3__110__function6__funcIZNK4geom7clusterIdE31find_explicit_surface_crossingsEDv3_jRKNS_6vectorIDv3_dNS_9allocatorIS7_EEEERKNS6_IjNS8_IjEEEERKNS2_3bvhIdLh3EEERSA_EUljE_NS8_ISM_EEFbjEEclEOj(uint64_t a1, _DWORD *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = 3 * *a2;
  v4 = **(a1 + 32);
  v5 = **(a1 + 24);
  v6 = (v5 + 32 * *(v4 + 4 * v3));
  v8 = *v6;
  v7 = v6[1];
  v9 = (v5 + 32 * *(v4 + 4 * (v3 + 1)));
  v11 = *v9;
  v10 = v9[1];
  v12 = (v5 + 32 * *(v4 + 4 * (v3 + 2)));
  v14 = *v12;
  v13 = v12[1];
  v21[0] = v8;
  v21[1] = v7;
  v21[2] = v11;
  v21[3] = v10;
  v21[4] = v14;
  v21[5] = v13;
  v15 = geom::intersect_triangle_bbox_3<double>(v21, *(a1 + 8), v22);
  v16 = v15;
  if (v15)
  {
    v17 = v15;
    v18 = v22;
    do
    {
      _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(*(a1 + 16), v18);
      v18 += 2;
      --v17;
    }

    while (v17);
  }

  result = v16 != 0;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4geom7clusterIdE31find_explicit_surface_crossingsEDv3_jRKNS_6vectorIDv3_dNS_9allocatorIS7_EEEERKNS6_IjNS8_IjEEEERKNS2_3bvhIdLh3EEERSA_EUljE_NS8_ISM_EEFbjEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZNK4geom7clusterIdE31find_explicit_surface_crossingsEDv3_jRKNSt3__16vectorIDv3_dNS3_9allocatorIS5_EEEERKNS4_IjNS6_IjEEEERKNS_3bvhIdLh3EEERS8_EUljE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZNK4geom7clusterIdE31find_explicit_surface_crossingsEDv3_jRKNS_6vectorIDv3_dNS_9allocatorIS7_EEEERKNS6_IjNS8_IjEEEERKNS2_3bvhIdLh3EEERSA_EUlRKNS2_4bboxIdLh3EEEE_NS8_ISQ_EEFbSP_EE7__cloneEPNS0_6__baseISS_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286291688;
  a2[1] = v2;
  return result;
}

BOOL _ZNSt3__110__function6__funcIZNK4geom7clusterIdE31find_explicit_surface_crossingsEDv3_jRKNS_6vectorIDv3_dNS_9allocatorIS7_EEEERKNS6_IjNS8_IjEEEERKNS2_3bvhIdLh3EEERSA_EUlRKNS2_4bboxIdLh3EEEE_NS8_ISQ_EEFbSP_EEclESP_(uint64_t a1, float64x2_t *a2)
{
  v2 = *(a1 + 8);
  v3 = vcgtq_f64(*a2, v2[2]);
  if (((v3.i64[0] | vcgtq_f64(a2[1], v2[3]).u64[0] | v3.i64[1]) & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v4 = vcgtq_f64(*v2, a2[2]);
  return ((v4.i64[0] | vcgtq_f64(v2[1], a2[3]).u64[0] | v4.i64[1]) & 0x8000000000000000) == 0;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4geom7clusterIdE31find_explicit_surface_crossingsEDv3_jRKNS_6vectorIDv3_dNS_9allocatorIS7_EEEERKNS6_IjNS8_IjEEEERKNS2_3bvhIdLh3EEERSA_EUlRKNS2_4bboxIdLh3EEEE_NS8_ISQ_EEFbSP_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZNK4geom7clusterIdE31find_explicit_surface_crossingsEDv3_jRKNSt3__16vectorIDv3_dNS3_9allocatorIS5_EEEERKNS4_IjNS6_IjEEEERKNS_3bvhIdLh3EEERS8_EUlRKNS_4bboxIdLh3EEEE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(geom::bbox<double,(unsigned char)3> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t ___ZN4geom26dispatch_apply_with_strideIZNS_24parallel_reduce_in_placeIdNS_11plus_equalsIdEEEEvRNSt3__16vectorIT_NS4_9allocatorIS6_EEEEmP16dispatch_queue_sT0_EUlmmE_EEmmmSC_S6__block_invoke(uint64_t result, uint64_t a2)
{
  v3 = *(result + 32);
  v2 = *(result + 40);
  v4 = v3 * a2;
  if (v2 >= v3 * a2 + v3)
  {
    v2 = v3 * a2 + v3;
  }

  v5 = v2 > v4;
  v6 = v2 - v4;
  if (v5)
  {
    v7 = *(result + 56);
    v8 = **(result + 48);
    v9 = v3 * v8 * a2;
    do
    {
      if ((v8 >> 1) + v9 < v7)
      {
        v10 = (**(result + 64) + 8 * v9);
        *v10 = v10[v8 >> 1] + *v10;
      }

      v9 += v8;
      --v6;
    }

    while (v6);
  }

  return result;
}

void geom::acd<float>::impl::init(uint64_t a1, float32x4_t *a2, unint64_t a3, _DWORD *a4, std::vector<unsigned int>::size_type a5, unsigned int a6, int a7, float a8)
{
  v12 = a2;
  v42 = *MEMORY[0x277D85DE8];
  v14 = 16 * a3;
  v15.i64[0] = 0x7F0000007FLL;
  v15.i64[1] = 0x7F0000007FLL;
  v16 = vnegq_f32(v15);
  if (a3)
  {
    v17 = 16 * a3;
    v18 = a2;
    do
    {
      v19 = *v18++;
      v20 = v19;
      v20.i32[3] = 0;
      v16.i32[3] = 0;
      v16 = vminnmq_f32(v20, v16);
      v15.i32[3] = 0;
      v15 = vmaxnmq_f32(v20, v15);
      v17 -= 16;
    }

    while (v17);
  }

  v37 = v16;
  v39 = v15;
  *(a1 + 16) = v16;
  *(a1 + 32) = v15;
  *(a1 + 328) = a7;
  *(a1 + 332) = a8;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm((a1 + 48), a3);
  if (a3)
  {
    v22 = vaddq_f32(v37, v39);
    v23.i64[0] = 0x3F0000003F000000;
    v23.i64[1] = 0x3F0000003F000000;
    v24 = vmulq_f32(vsubq_f32(v39, v37), v23);
    v24.f32[0] = fmaxf(fmaxf(v24.f32[0], v24.f32[2]), v24.f32[1]);
    if (v24.f32[0] <= 0.00000011921)
    {
      v24.f32[0] = 1.0;
    }

    v38 = vdupq_lane_s32(*v24.f32, 0);
    v40 = vmulq_f32(v22, v23);
    do
    {
      v25 = *v12++;
      v41 = vdivq_f32(vsubq_f32(v25, v40), v38);
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1 + 48, &v41);
      v14 -= 16;
    }

    while (v14);
  }

  if (a6 >= 0x15)
  {
    v26 = 21;
  }

  else
  {
    v26 = a6;
  }

  v27 = ((1 << v26) - 1);
  *v21.i32 = 2.0 / v27;
  *(a1 + 160) = v26;
  *(a1 + 164) = 1 << v26;
  *(a1 + 168) = v27;
  __asm { FMOV            V1.4S, #-1.0 }

  *(a1 + 176) = vdupq_lane_s32(v21, 0);
  *(a1 + 192) = _Q1;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 208) = _Q0;
  std::vector<float>::reserve((a1 + 72), a5);
  if (a5)
  {
    v34 = 4 * a5;
    do
    {
      std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 72), a4++);
      v34 -= 4;
    }

    while (v34);
  }

  geom::cut_directions_hierarchy<float>::init(a1 + 256, 5);
  v35 = (*(a1 + 56) - *(a1 + 48)) >> 4;
  v36 = (((*(a1 + 80) - *(a1 + 72)) >> 2) * 0xAAAAAAAAAAAAAAABLL) >> 64;
  geom::create_approximate_winding_number_3<float>();
}