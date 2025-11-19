uint64_t geom::straight_skeleton_evaluator<double>::add_joiner_mesh_faces_for_events(uint64_t a1, uint64_t *a2, uint64_t a3, double a4)
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
      if (!*(*(a1 + 120) + 144 * v8 + 128))
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
            geom::straight_skeleton_evaluator<double>::add_triangle_fan_for_active_vertex(a1, *(v13 + 4), a4);
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
    if (*(v10 + 144 * v8 + 128))
    {
      v11 = HIDWORD(v8);
    }

    else
    {
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v19, &__src);
      LODWORD(v11) = HIDWORD(__src);
      v10 = *(a1 + 120);
    }

    if (*(v10 + 144 * v11 + 128))
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
    v15 = *(a1 + 120) + 144 * *(v14 + 4);
    if (*(v15 + 128))
    {
      break;
    }

    LODWORD(__src) = *(v15 + 120);
    std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int const*,unsigned int const*>((v15 + 96), &__src, &__src + 4, 1uLL);
    if (*(v15 + 124) == 1)
    {
      *(v15 + 124) = 0;
    }

    v14 = *v14;
    if (!v14)
    {
      return std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(&v19);
    }
  }

LABEL_22:
  v17 = std::__throw_bad_variant_access[abi:nn200100]();
  return geom::straight_skeleton_evaluator<double>::extract_offset_curve(v17);
}

void geom::straight_skeleton_evaluator<double>::extract_offset_curve(uint64_t a1, void *a2, void *a3)
{
  a2[1] = *a2;
  a3[1] = *a3;
  v4[0] = a1;
  v4[1] = a2;
  v3[0] = a3;
  v3[1] = a2;
  _ZNK4geom27straight_skeleton_evaluatorIdE25for_each_wavefront_vertexIZNKS1_20extract_offset_curveERNSt3__16vectorIDv2_dNS3_9allocatorIS5_EEEERNS4_IjNS6_IjEEEEEUljE_ZNKS1_20extract_offset_curveES9_SC_EUlvE_EEvOT_OT0_(a1, v4, v3);
}

void _ZNK4geom27straight_skeleton_evaluatorIdE25for_each_wavefront_vertexIZNKS1_20extract_offset_curveERNSt3__16vectorIDv2_dNS3_9allocatorIS5_EEEERNS4_IjNS6_IjEEEEEUljE_ZNKS1_20extract_offset_curveES9_SC_EUlvE_EEvOT_OT0_(uint64_t a1, void *a2, uint64_t a3)
{
  memset(__p, 0, sizeof(__p));
  std::vector<BOOL>::resize(__p, 0x8E38E38E38E38E39 * ((*(a1 + 128) - *(a1 + 120)) >> 4), 0);
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
      if ((v10 & (1 << v8)) == 0 && !*(v7 + 144 * v8 + 128))
      {
        break;
      }

      *(__p[0] + (v8 >> 6)) = v10 | (1 << v8);
LABEL_6:
      v8 = ++v9;
      if (0x8E38E38E38E38E39 * ((v6 - v7) >> 4) <= v9)
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
        LODWORD(v25.f64[0]) = (*(*(a3 + 8) + 8) - **(a3 + 8)) >> 4;
        std::vector<unsigned int>::push_back[abi:nn200100](v22, &v25);
        v7 = *(a1 + 120);
        v6 = *(a1 + 128);
        goto LABEL_6;
      }

      v15 = *a2;
      v16 = *(*a2 + 120) + 144 * v11;
      if (*(v16 + 128))
      {
        break;
      }

      v17 = *(v16 + 32);
      if (fabs(v17) <= 1.0e-10)
      {
        v18 = *v16;
      }

      else
      {
        v18 = vmlaq_n_f64(*v16, *(v16 + 16), v17 * (*(*(v15 + 104) - 8) - *(v16 + 48)));
      }

      v19 = a2[1];
      v25 = vmlaq_n_f64(*(v15 + 208), v18, *(v15 + 224));
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(v19, &v25);
      v20 = __p[0];
      *(__p[0] + v12) |= v13;
      v21 = *(a1 + 120) + 144 * v11;
      if (*(v21 + 128))
      {
        break;
      }

      v11 = *(v21 + 68);
      v12 = v11 >> 6;
      v13 = 1 << v11;
    }

    v23 = std::__throw_bad_variant_access[abi:nn200100]();
    geom::straight_skeleton_evaluator<double>::extract_joiner_mesh(v23);
  }
}

void geom::straight_skeleton_evaluator<double>::extract_joiner_mesh(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
      v24 = vmlaq_n_f64(*(a1 + 208), v14, *(a1 + 224));
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a2, &v24);
    }

    while (v11 != v12);
  }

  v15 = *(a1 + 96);
  v16 = *(a1 + 104);
  while (v15 != v16)
  {
    v17 = *v15++;
    v24.f64[0] = v17 * *(a1 + 224);
    std::vector<double>::push_back[abi:nn200100](a6, &v24);
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

BOOL geom::straight_skeleton_evaluator<double>::event_time_comparator::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  geom::straight_skeleton_evaluator<double>::event_time(a2);
  v5 = v4;
  geom::straight_skeleton_evaluator<double>::event_time(a3);
  return v5 > v6;
}

__n128 geom::straight_skeleton_evaluator<double>::vertex_state::vertex_state(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = v3;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  result = *(a2 + 96);
  *(a1 + 96) = result;
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = 0;
  return result;
}

{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 128) = 1;
  return result;
}

uint64_t geom::straight_skeleton_evaluator<double>::vertex_state::get_active(uint64_t result)
{
  if (*(result + 128))
  {
    v1 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom::straight_skeleton_evaluator<double>::vertex_state::get_active_or_null(v1);
  }

  return result;
}

uint64_t geom::straight_skeleton_evaluator<double>::vertex_state::get_active_or_null(uint64_t result)
{
  if (*(result + 128))
  {
    return 0;
  }

  return result;
}

uint64_t geom::straight_skeleton_evaluator<double>::vertex_state::get_inactive(uint64_t result)
{
  if (*(result + 128) != 1)
  {
    v1 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom::straight_skeleton_evaluator<double>::vertex_state::spoke(v1);
  }

  return result;
}

uint64_t geom::straight_skeleton_evaluator<double>::vertex_state::spoke(uint64_t result)
{
  if (*(result + 128) >= 2u)
  {
    v1 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom::straight_skeleton_evaluator<double>::vertex_state::make_inactive(v1);
  }

  return result;
}

void geom::straight_skeleton_evaluator<double>::vertex_state::make_inactive(__int128 *a1)
{
  v20[5] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    goto LABEL_9;
  }

  v2 = a1[3];
  v17 = a1[2];
  v18 = v2;
  v19[0] = a1[4];
  *(v19 + 9) = *(a1 + 73);
  v3 = a1[1];
  v15 = *a1;
  v16 = v3;
  std::vector<float>::vector[abi:nn200100](v20, a1 + 12);
  v20[3] = *(a1 + 15);
  v11 = v15;
  v12 = v16;
  v13 = v17;
  *&v14 = v18;
  v4 = *(a1 + 32);
  if (v4 != -1)
  {
    if (v4 == 1)
    {
      v5 = v12;
      *a1 = v11;
      a1[1] = v5;
      v6 = v14;
      a1[2] = v13;
      a1[3] = v6;
      goto LABEL_7;
    }

    (*(&off_286292FA8 + v4))(&v10, a1);
  }

  v7 = v12;
  *a1 = v11;
  a1[1] = v7;
  v8 = v14;
  a1[2] = v13;
  a1[3] = v8;
  *(a1 + 32) = 1;
LABEL_7:
  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }

LABEL_9:
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t geom::straight_skeleton_evaluator<double>::remove_vertex_from_face_neighbors(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 88) == 1)
  {
    v3 = *(result + 120) + 144 * *(a3 + 84);
    if (*(v3 + 128))
    {
      goto LABEL_10;
    }

    v4 = *(a3 + 76);
    *(v3 + 80) = *(a3 + 80);
    *(v3 + 76) = v4;
  }

  else
  {
    v5 = *(a3 + 72);
    if (v5 != -1)
    {
      v6 = *(result + 144) + 8 * v5;
      v7 = *(a3 + 76);
      *(v6 + 4) = *(a3 + 80);
      *v6 = v7;
    }
  }

  if (*(a3 + 80) != 1)
  {
    return result;
  }

  v8 = *(result + 120) + 144 * *(a3 + 76);
  if (*(v8 + 128))
  {
LABEL_10:
    v10 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom::straight_skeleton_evaluator<double>::create_vertex_and_update_neighbors(v10);
  }

  v9 = *(a3 + 84);
  *(v8 + 88) = *(a3 + 88);
  *(v8 + 84) = v9;
  return result;
}

uint64_t geom::straight_skeleton_evaluator<double>::create_vertex_and_update_neighbors(uint64_t a1, unsigned int a2, unsigned int a3, unint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, unsigned int a8, double a9, float64x2_t a10)
{
  v63 = *MEMORY[0x277D85DE8];
  v18 = (a1 + 120);
  v19 = *(a1 + 120);
  v48 = *(a1 + 128);
  geom::straight_skeleton_evaluator<double>::find_distinct_neighbor(a1, a2, a3, 0, a10, a9);
  if ((v20 & 0x100000000) != 0)
  {
    v21 = v20;
  }

  else
  {
    v21 = a2;
  }

  v46 = a1;
  geom::straight_skeleton_evaluator<double>::find_distinct_neighbor(a1, a3, a2, 1, a10, a9);
  if ((v22 & 0x100000000) != 0)
  {
    v23 = v22;
  }

  else
  {
    v23 = a3;
  }

  v24 = *v18 + 144 * v21;
  if (*(v24 + 128))
  {
    goto LABEL_31;
  }

  v25 = *(v24 + 32);
  if (fabs(v25) <= 1.0e-10)
  {
    v26 = *v24;
  }

  else
  {
    v26 = vmlaq_n_f64(*v24, *(v24 + 16), v25 * (a9 - *(v24 + 48)));
  }

  v27 = *v18 + 144 * v23;
  if (*(v27 + 128))
  {
    goto LABEL_31;
  }

  v28 = *(v27 + 32);
  v47 = v19;
  v29 = a7;
  if (fabs(v28) <= 1.0e-10)
  {
    v30 = *v27;
  }

  else
  {
    v30 = vmlaq_n_f64(*v27, *(v27 + 16), v28 * (a9 - *(v27 + 48)));
  }

  v31 = a5;
  v32 = HIDWORD(a4);
  geom::spoke<double>::spoke(v52, a10, v26, v30, a9);
  *v53 = a2;
  *&v53[4] = a3;
  *&v53[8] = a8;
  *&v53[12] = a5;
  v33 = a4;
  v34 = a5;
  v53[16] = BYTE4(a5);
  v35 = v33;
  *&v53[20] = v33;
  v53[24] = v32;
  v36 = *(a6 + 2);
  v37 = *a6;
  *(a6 + 1) = 0;
  *(a6 + 2) = 0;
  *a6 = 0;
  BYTE4(v57) = BYTE4(v29);
  LODWORD(v57) = v29;
  v58[2] = v52[2];
  v58[3] = v52[3];
  v58[0] = v52[0];
  v58[1] = v52[1];
  v59[0] = *v53;
  *(v59 + 9) = *&v53[9];
  v59[2] = v37;
  __p = 0;
  v55 = 0;
  v56 = 0;
  v60 = v36;
  v61 = v57;
  v62 = 0;
  std::vector<geom::straight_skeleton_evaluator<double>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<double>::vertex_state>>::push_back[abi:nn200100](v18, v58);
  if (v62 != -1)
  {
    (*(&off_286292FA8 + v62))(&v51, v58);
  }

  v62 = -1;
  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

  v38 = *v18;
  v39 = *v18 + 144 * a2;
  if (*(v39 + 128))
  {
    goto LABEL_31;
  }

  result = 954437177 * ((v48 - v47) >> 4);
  *(v39 + 68) = result;
  v41 = v38 + 144 * a3;
  if (*(v41 + 128))
  {
    goto LABEL_31;
  }

  *(v41 + 64) = result;
  if ((v35 & 0x100000000) != 0)
  {
    v42 = v38 + 144 * v35;
    if (*(v42 + 128))
    {
      goto LABEL_31;
    }

    *(v42 + 76) = result;
    *(v42 + 80) = 1;
  }

  if ((v34 & 0x100000000) != 0)
  {
    v43 = *v18 + 144 * v31;
    if (!*(v43 + 128))
    {
      *(v43 + 84) = result;
      *(v43 + 88) = 1;
      goto LABEL_27;
    }

LABEL_31:
    std::__throw_bad_variant_access[abi:nn200100]();
  }

LABEL_27:
  if (a8 != -1 && (v32 & 1) == 0)
  {
    v44 = *(v46 + 144) + 8 * a8;
    *v44 = result;
    *(v44 + 4) = 1;
  }

  v45 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t geom::straight_skeleton_evaluator<double>::for_each_wavefront_edge_on_face<geom::straight_skeleton_evaluator<double>::apply_split_event(geom::straight_skeleton_evaluator<double>::split_event const&)::{lambda(unsigned int,unsigned int)#1}>(unint64_t result, uint64_t a2, unsigned int a3, double a4, double a5, float64x2_t a6)
{
  v6 = *(*(result + 144) + 8 * a3);
  if ((v6 & 0x100000000) != 0)
  {
    v8 = result;
    v9 = v6;
    while (1)
    {
      v10 = *(v8 + 120) + 144 * v9;
      if (*(v10 + 128))
      {
        break;
      }

      v11 = *(*a2 + 120);
      v12 = v11 + 144 * v9;
      if (*(v12 + 128))
      {
        break;
      }

      v13 = *(v10 + 68);
      v14 = v11 + 144 * v13;
      if (*(v14 + 128))
      {
        break;
      }

      result = geom::intersect_wavefront_edge_spoke<double>(v12, v14, *(a2 + 8), a4, a5, a6);
      if (v15)
      {
        v16 = *(a2 + 16);
        if (*(v16 + 8) == 1)
        {
          *v16 = v9;
          *(v16 + 4) = v13;
        }

        else
        {
          *v16 = v9 | (v13 << 32);
          *(v16 + 8) = 1;
        }
      }

      v9 = *(v10 + 76);
      if ((*(v10 + 80) & 1) == 0)
      {
        return result;
      }
    }

    v17 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom::straight_skeleton_evaluator<double>::add_triangle_fan_for_active_vertex(v17);
  }

  return result;
}

float64_t geom::straight_skeleton_evaluator<double>::add_triangle_fan_for_active_vertex(uint64_t a1, unsigned int a2, double a3)
{
  v38 = a3;
  v3 = *(a1 + 120) + 144 * a2;
  if (!*(v3 + 128))
  {
    if (*(v3 + 124) == 1)
    {
      LODWORD(v7) = *(v3 + 120);
    }

    else
    {
      v7 = (*(a1 + 8) - *a1) >> 4;
      v8 = *(v3 + 32);
      if (fabs(v8) <= 1.0e-10)
      {
        v9 = *v3;
      }

      else
      {
        v9 = vmlaq_n_f64(*v3, *(v3 + 16), v8 * (a3 - *(v3 + 48)));
      }

      v37 = v9;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1, &v37);
    }

    v36 = *(*a1 + 16 * v7);
    v10 = *(*(a1 + 104) - 8);
    if (v10 == a3 || v10 + 1.0e-10 > a3)
    {
      *(*(a1 + 80) - 4) = (*(a1 + 8) - *a1) >> 4;
    }

    else
    {
      std::vector<double>::push_back[abi:nn200100]((a1 + 96), &v38);
      LODWORD(v37.f64[0]) = (*(a1 + 8) - *a1) >> 4;
      std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 72), &v37);
    }

    v12 = *(v3 + 96);
    if ((*(v3 + 104) - v12) >= 5)
    {
      v13 = 2;
      v14 = 1;
      do
      {
        geom::straight_skeleton_evaluator<float>::add_joiner_mesh_triangle(a1, *(v12 + 4 * (v13 - 2)), *(v12 + 4 * v14), v7);
        v14 = v13;
        v12 = *(v3 + 96);
        ++v13;
      }

      while (v14 < (*(v3 + 104) - v12) >> 2);
    }

    v15 = *(v3 + 64);
    v16 = *(v3 + 68);
    geom::straight_skeleton_evaluator<double>::find_distinct_neighbor(a1, v15, a2, 0, v36, v38);
    if ((v17 & 0x100000000) != 0)
    {
      v15 = v17;
    }

    result = geom::straight_skeleton_evaluator<double>::find_distinct_neighbor(a1, *(v3 + 68), a2, 1, v36, v38);
    v20 = *(a1 + 120);
    v21 = v20 + 144 * v15;
    if (!*(v21 + 128))
    {
      v22 = (v18 & 0x100000000) != 0 ? v18 : v16;
      v23 = v20 + 144 * v22;
      if (!*(v23 + 128))
      {
        if (*(v3 + 68) == a2)
        {
          v24 = *(v3 + 96);
          v25 = *(v3 + 104);
          if ((v25 - v24) < 9)
          {
LABEL_36:
            *(v3 + 120) = v7;
            *(v3 + 124) = 1;
            return result;
          }

          v26 = *(v25 - 4);
LABEL_35:
          geom::straight_skeleton_evaluator<float>::add_joiner_mesh_triangle(a1, v26, *v24, v7);
          goto LABEL_36;
        }

        v27 = v20 + 144 * *(v21 + 68);
        if (!*(v27 + 128))
        {
          v28 = v20 + 144 * *(v23 + 64);
          if (!*(v28 + 128))
          {
            if (*(v21 + 124))
            {
              v29 = (v21 + 120);
            }

            else
            {
              v29 = (*(v21 + 104) - 4);
            }

            geom::straight_skeleton_evaluator<float>::add_joiner_mesh_triangle(a1, *v29, **(v27 + 96), v7);
            v26 = *(*(v28 + 104) - 4);
            if (*(v23 + 124))
            {
              v24 = (v23 + 120);
            }

            else
            {
              v24 = *(v23 + 96);
            }

            goto LABEL_35;
          }
        }
      }
    }
  }

  v30 = std::__throw_bad_variant_access[abi:nn200100]();
  return geom::straight_skeleton_evaluator<double>::find_distinct_neighbor(v30, v31, v32, v33, v34, v35);
}

float64_t geom::straight_skeleton_evaluator<double>::find_distinct_neighbor(uint64_t a1, unsigned int a2, unsigned int a3, int a4, float64x2_t a5, double a6)
{
  v6 = a2;
  if (a2 != a3)
  {
    v7 = 64;
    if (a4)
    {
      v7 = 68;
    }

    while (1)
    {
      v8 = *(a1 + 120) + 144 * v6;
      if (*(v8 + 128))
      {
        break;
      }

      v9 = *(v8 + 32);
      if (fabs(v9) <= 1.0e-10)
      {
        v10 = *v8;
      }

      else
      {
        v10 = vmlaq_n_f64(*v8, *(v8 + 16), v9 * (a6 - *(v8 + 48)));
      }

      v11 = vsubq_f64(v10, a5);
      if (sqrt(vaddvq_f64(vmulq_f64(v11, v11))) <= 1.0e-10)
      {
        v6 = *(v8 + v7);
        if (v6 != a3)
        {
          continue;
        }
      }

      return a5.f64[0];
    }

    v12 = std::__throw_bad_variant_access[abi:nn200100]();
    a5.f64[0] = geom::straight_skeleton_evaluator<double>::internal_to_user_position(v12, v13);
  }

  return a5.f64[0];
}

void geom::straight_skeleton_evaluator<double>::check_topological_invariants(void *a1@<X0>, _BYTE *a2@<X8>)
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
      v8 = v3 + 144 * v4;
      if (*(v8 + 128))
      {
        goto LABEL_81;
      }

      v9 = v3 + 144 * *(v8 + 68);
      if (*(v9 + 128))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
        v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "vertex ", 7);
        v11 = MEMORY[0x25305E2F0](v10, v5);
        v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, ": next = ", 9);
        v13 = MEMORY[0x25305E2F0](v12, *(v8 + 68));
        v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, ", but ", 6);
        v15 = MEMORY[0x25305E2F0](v14, *(v8 + 68));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, " is inactive", 12);
      }

      else
      {
        if (v5 == *(v9 + 64))
        {
          goto LABEL_13;
        }

        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
        v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "vertex ", 7);
        v17 = MEMORY[0x25305E2F0](v16, v5);
        v18 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, ": prev and next pointers do not match.  next = ", 47);
        v19 = MEMORY[0x25305E2F0](v18, *(v8 + 68));
        v20 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, ", and next->prev = ", 19);
        MEMORY[0x25305E2F0](v20, *(v9 + 64));
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
      if (!v21 || (v22 = v21 + 144 * *(v8 + 64), *(v22 + 128)))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
        v28 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "vertex ", 7);
        v29 = MEMORY[0x25305E2F0](v28, v5);
        v30 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v29, ": prev = ", 9);
        v31 = MEMORY[0x25305E2F0](v30, *(v8 + 64));
        v32 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v31, ", but ", 6);
        v33 = MEMORY[0x25305E2F0](v32, *(v8 + 64));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33, " is inactive", 12);
      }

      else
      {
        if (v5 == *(v22 + 68))
        {
          goto LABEL_23;
        }

        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
        v23 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "vertex ", 7);
        v24 = MEMORY[0x25305E2F0](v23, v5);
        v25 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, ": prev and next pointers do not match.  prev = ", 47);
        v26 = MEMORY[0x25305E2F0](v25, *(v8 + 64));
        v27 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v26, ", and prev->next = ", 19);
        MEMORY[0x25305E2F0](v27, *(v22 + 68));
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
      if (*(v8 + 80) != 1)
      {
        goto LABEL_37;
      }

      v34 = a1[15];
      if (!v34 || (v35 = v34 + 144 * *(v8 + 76), *(v35 + 128)))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
        v41 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "vertex ", 7);
        v42 = MEMORY[0x25305E2F0](v41, v5);
        v43 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v42, ": next_in_face = ", 17);
        v44 = MEMORY[0x25305E2F0](v43, *(v8 + 76));
        v45 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v44, ", but ", 6);
        v46 = MEMORY[0x25305E2F0](v45, *(v8 + 76));
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

      if (*(v35 + 88) != 1 || v5 != *(v35 + 84))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
        v37 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "vertex ", 7);
        v38 = MEMORY[0x25305E2F0](v37, v5);
        v39 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v38, ": prev_in_face and next_next_in_face pointers do not match.  next = ", 68);
        v40 = MEMORY[0x25305E2F0](v39, *(v8 + 76));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v40, ", and next->prev = ", 19);
        if (*(v35 + 88) == 1)
        {
          MEMORY[0x25305E2F0](&v175, *(v35 + 84));
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
      if (*(v8 + 88) != 1)
      {
        goto LABEL_51;
      }

      v47 = a1[15];
      if (!v47 || (v48 = v47 + 144 * *(v8 + 84), *(v48 + 128)))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
        v54 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "vertex ", 7);
        v55 = MEMORY[0x25305E2F0](v54, v5);
        v56 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v55, ": prev_in_face = ", 17);
        v57 = MEMORY[0x25305E2F0](v56, *(v8 + 84));
        v58 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v57, ", but ", 6);
        v59 = MEMORY[0x25305E2F0](v58, *(v8 + 84));
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

      if (*(v48 + 80) != 1 || v5 != *(v48 + 76))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
        v50 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "vertex ", 7);
        v51 = MEMORY[0x25305E2F0](v50, v5);
        v52 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v51, ": prev_in_face and next_next_in_face pointers do not match.  prev = ", 68);
        v53 = MEMORY[0x25305E2F0](v52, *(v8 + 84));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v53, ", and prev->next = ", 19);
        if (*(v48 + 80) == 1)
        {
          MEMORY[0x25305E2F0](&v175, *(v48 + 76));
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
      v60 = *(v8 + 72);
      if (v60 == -1)
      {
        if (v5 != *(v8 + 68))
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

        if ((*(v8 + 88) & 1) == 0 && *(v8 + 80) != 1)
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
        v75 = MEMORY[0x25305E2F0](v74, *(v8 + 72));
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
        v65 = MEMORY[0x25305E2F0](v64, *(v8 + 72));
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
      if ((*(v8 + 88) & 1) == 0)
      {
        v76 = a1[18] + 8 * *(v8 + 72);
        v77 = *(v76 + 4);
        v78 = *v76;
        if (v77 != 1 || v5 != v78)
        {
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
          v80 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "vertex ", 7);
          v81 = MEMORY[0x25305E2F0](v80, v5);
          v82 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v81, ": face_for_next_edge = ", 23);
          v69 = MEMORY[0x25305E2F0](v82, *(v8 + 72));
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

    while (0x8E38E38E38E38E39 * ((a1[16] - v3) >> 4) > v4);
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
        v91 = v90 + 144 * v89;
        v92 = v90 && *(v91 + 128) == 0;
        if (v92 && v86 != *(v91 + 72))
        {
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
          v93 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "face ", 5);
          v94 = MEMORY[0x25305E2F0](v93, v86);
          v95 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v94, ": vertex ", 9);
          v96 = MEMORY[0x25305E2F0](v95, v89);
          v97 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v96, " is referenced in m_face_to_first_vertex_map, but edge->face map refers to face ", 80);
          MEMORY[0x25305E2F0](v97, *(v91 + 72));
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
  if ((a1[10] - a1[9]) >> 2 != (a1[13] - a1[12]) >> 3)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
    v99 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "size of m_joiner_accumulated_boundary_size (", 44);
    v100 = MEMORY[0x25305E300](v99, (a1[10] - a1[9]) >> 2);
    v101 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v100, ") does not match size of m_joiner_parameter_for_boundary (", 58);
    v102 = MEMORY[0x25305E300](v101, (a1[13] - a1[12]) >> 3);
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
      if (*(v107 + 4 * v112) >= ((a1[1] - *a1) >> 4))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
        v117 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "m_joiner_face_indices[", 22);
        v118 = MEMORY[0x25305E2F0](v117, v113);
        v119 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v118, "]: Index out of range (m_joiner_positions.size() = ", 51);
        v120 = MEMORY[0x25305E300](v119, (a1[1] - *a1) >> 4);
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
  if (v138 != (a1[1] - *a1) >> 4)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v174);
    v140 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v175, "the last entry of m_joiner_accumulated_boundary_size is ", 56);
    v141 = MEMORY[0x25305E2F0](v140, v138);
    v142 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v141, " but the m_joiner_positions.size() is ", 38);
    MEMORY[0x25305E300](v142, (a1[1] - *a1) >> 4);
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

void geom::straight_skeleton_evaluator<double>::check_geometric_invariants(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v47[0] = a1;
  v47[1] = &v54;
  geom::straight_skeleton_evaluator<double>::for_each_wavefront_edge<geom::straight_skeleton_evaluator<double>::check_geometric_invariants(void)::{lambda(unsigned int,unsigned int)#1}>(a1, v47);
  v3 = *(a1 + 120);
  if (*(a1 + 128) != v3)
  {
    v4 = 0;
    v5 = 0;
    v44 = *MEMORY[0x277D82818];
    v42 = *(MEMORY[0x277D82818] + 72);
    v43 = *(MEMORY[0x277D82818] + 64);
    do
    {
      if (v3)
      {
        v6 = v3 + 144 * v4;
        if (!*(v6 + 128))
        {
          v7 = *(v6 + 68);
          v8 = fabs(*(v6 + 32));
          if ((v5 == v7) != v8 <= 1.0e-10)
          {
            std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v47);
            v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v48, "vertex ", 7);
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
            if (v8 > 1.0e-10)
            {
              v16 = "NO";
            }

            else
            {
              v16 = "YES";
            }

            if (v8 > 1.0e-10)
            {
              v17 = 2;
            }

            else
            {
              v17 = 3;
            }

            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, v16, v17);
            std::stringbuf::str();
            std::vector<std::string>::push_back[abi:nn200100](&v54, __p);
            if (v46 < 0)
            {
              operator delete(__p[0]);
            }

            v47[0] = v44;
            *(v47 + *(v44 - 3)) = v43;
            v48 = v42;
            v49 = MEMORY[0x277D82878] + 16;
            if (v52 < 0)
            {
              operator delete(v51);
            }

            v49 = MEMORY[0x277D82868] + 16;
            std::locale::~locale(v50);
            std::iostream::~basic_iostream();
            MEMORY[0x25305E3C0](v53);
          }

          if (v8 > 1.0e-10)
          {
            v18 = sqrt(vaddvq_f64(vmulq_f64(*(v6 + 16), *(v6 + 16))));
            if (v18 != 1.0 && fabs(v18 + -1.0) > 1.0e-10)
            {
              std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v47);
              v19 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v48, "vertex ", 7);
              v20 = MEMORY[0x25305E2F0](v19, v5);
              v21 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, ": has non-zero speed but direction is non-unit  ([", 50);
              v22 = MEMORY[0x25305E2C0](v21, *(v6 + 16));
              v23 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, ", ", 2);
              v24 = MEMORY[0x25305E2C0](v23, *(v6 + 24));
              v25 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, "] has length ", 13);
              v26 = MEMORY[0x25305E2C0](v25, v18);
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v26, ")", 1);
              std::stringbuf::str();
              std::vector<std::string>::push_back[abi:nn200100](&v54, __p);
              if (v46 < 0)
              {
                operator delete(__p[0]);
              }

              v47[0] = v44;
              *(v47 + *(v44 - 3)) = v43;
              v48 = v42;
              v49 = MEMORY[0x277D82878] + 16;
              if (v52 < 0)
              {
                operator delete(v51);
              }

              v49 = MEMORY[0x277D82868] + 16;
              std::locale::~locale(v50);
              std::iostream::~basic_iostream();
              MEMORY[0x25305E3C0](v53);
            }
          }

          if (v5 != v7 && *(v6 + 96) == *(v6 + 104))
          {
            std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v47);
            v27 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v48, "vertex ", 7);
            v28 = MEMORY[0x25305E2F0](v27, v5);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v28, ": active vertex was not meshed (ancestors_in_joiner is empty)", 61);
            std::stringbuf::str();
            std::vector<std::string>::push_back[abi:nn200100](&v54, __p);
            if (v46 < 0)
            {
              operator delete(__p[0]);
            }

            v47[0] = v44;
            *(v47 + *(v44 - 3)) = v43;
            v48 = v42;
            v49 = MEMORY[0x277D82878] + 16;
            if (v52 < 0)
            {
              operator delete(v51);
            }

            v49 = MEMORY[0x277D82868] + 16;
            std::locale::~locale(v50);
            std::iostream::~basic_iostream();
            MEMORY[0x25305E3C0](v53);
          }
        }
      }

      v4 = (v5 + 1);
      v3 = *(a1 + 120);
      v5 = v4;
    }

    while (0x8E38E38E38E38E39 * ((*(a1 + 128) - v3) >> 4) > v4);
  }

  if (v54 == v55)
  {
    *a2 = 0;
    a2[24] = 0;
  }

  else
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v47);
    v29 = v54;
    v30 = v55;
    if (v54 != v55)
    {
      v31 = 1;
      v32 = MEMORY[0x277D82680];
      do
      {
        v33 = MEMORY[0x25305E2E0](&v48, v31);
        v34 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33, ". ", 2);
        v35 = *(v29 + 23);
        if (v35 >= 0)
        {
          v36 = v29;
        }

        else
        {
          v36 = *v29;
        }

        if (v35 >= 0)
        {
          v37 = *(v29 + 23);
        }

        else
        {
          v37 = *(v29 + 8);
        }

        v38 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v34, v36, v37);
        std::ios_base::getloc((v38 + *(*v38 - 24)));
        v39 = std::locale::use_facet(__p, v32);
        (v39->__vftable[2].~facet_0)(v39, 10);
        std::locale::~locale(__p);
        std::ostream::put();
        std::ostream::flush();
        v31 = (v31 + 1);
        v29 += 24;
      }

      while (v29 != v30);
    }

    std::stringbuf::str();
    a2[24] = 1;
    v47[0] = *MEMORY[0x277D82818];
    v40 = *(MEMORY[0x277D82818] + 72);
    *(v47 + *(v47[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v48 = v40;
    v49 = MEMORY[0x277D82878] + 16;
    if (v52 < 0)
    {
      operator delete(v51);
    }

    v49 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v50);
    std::iostream::~basic_iostream();
    MEMORY[0x25305E3C0](v53);
  }

  v47[0] = &v54;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v47);
}

_DWORD **geom::straight_skeleton_evaluator<double>::for_each_wavefront_edge<geom::straight_skeleton_evaluator<double>::check_geometric_invariants(void)::{lambda(unsigned int,unsigned int)#1}>(_DWORD **result, _DWORD **a2)
{
  v3 = result[15];
  v2 = result[16];
  if (v2 != v3)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    do
    {
      if (v3)
      {
        v8 = &v3[144 * v6];
        if (!*(v8 + 32))
        {
          v9 = *(v8 + 17);
          if (v7 != v9)
          {
            result = geom::straight_skeleton_evaluator<double>::check_geometric_invariants(void)const::{lambda(unsigned int,unsigned int)#1}::operator()(a2, v7, v9);
            v3 = v5[15];
            v2 = v5[16];
          }
        }
      }

      v6 = (v7 + 1);
      v7 = v6;
    }

    while (0x8E38E38E38E38E39 * ((v2 - v3) >> 4) > v6);
  }

  return result;
}

uint64_t geom::intersect_adjacent_spokes<double>(float64x2_t *a1, float64x2_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2].f64[0];
  v5 = vmulq_n_f64(v3, v4);
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2].f64[0];
  v9 = vmulq_n_f64(v7, v8);
  v10 = vpaddq_f64(vmulq_f64(v9, v9), vmulq_f64(v5, v5));
  v11 = vabsq_f64(v10);
  v12 = vmovn_s64(vcgeq_f64(vdupq_n_s64(0x3CB0000000000000uLL), v11));
  v13 = v12.i8[4];
  v14 = v12.i8[0];
  if (v12.i32[1] & v12.i32[0])
  {
    v15 = vsubq_f64(v2, v6);
    v16 = sqrt(vaddvq_f64(vmulq_f64(v15, v15)));
    v17 = 0uLL;
    if (v16 <= 0.000001)
    {
LABEL_35:
      if (fabs(*&v17.i64[1]) <= 1.0e-10)
      {
        v28 = a1[3].f64[0];
      }

      else if (fabs(*v17.i64) <= 1.0e-10)
      {
        v28 = a2[3].f64[0];
      }

      else
      {
        *v17.i64 = *v17.i64 + a2[3].f64[0];
        if (*&v17.i64[1] + a1[3].f64[0] >= *v17.i64)
        {
          v28 = *&v17.i64[1] + a1[3].f64[0];
        }

        else
        {
          v28 = *v17.i64;
        }
      }

      return *&v28;
    }

LABEL_19:
    v28 = 0.0;
    return *&v28;
  }

  v18 = vsubq_f64(v6, v2);
  v19 = v13 | v14;
  if (v13)
  {
    v20 = v10.f64[0];
  }

  else
  {
    v20 = v10.f64[1];
  }

  if (v13)
  {
    v21 = -1;
  }

  else
  {
    v21 = 0;
  }

  if (v19)
  {
    v22 = vbslq_s8(vdupq_n_s64(v21), v9, v5);
    if (v13)
    {
      v23 = -1;
    }

    else
    {
      v23 = 0;
    }

    v10 = vnegq_f64(v18);
    v24 = vbslq_s8(vdupq_n_s64(v23), v10, v18);
    if ((-v22.f64[1] * v24.f64[0] + v22.f64[0] * v24.f64[1]) * (-v22.f64[1] * v24.f64[0] + v22.f64[0] * v24.f64[1]) > v20 * 1.0e-12)
    {
      goto LABEL_19;
    }

    v25 = 0;
    v18 = vcgeq_f64(vdupq_n_s64(0x3CB0000000000000uLL), v11);
    v26 = vbicq_s8(vdupq_lane_s64(COERCE__INT64(vaddvq_f64(vmulq_f64(v22, v24)) / v20), 0), v18);
  }

  else
  {
    v27 = -v5.f64[1] * v9.f64[0] + v5.f64[0] * v9.f64[1];
    if (fabs(v27 * v27) <= v10.f64[1] * v10.f64[0] * 1.0e-12)
    {
      if (fabs((v18.f64[0] * v5.f64[1] - v18.f64[1] * v5.f64[0]) * (v18.f64[0] * v5.f64[1] - v18.f64[1] * v5.f64[0])) > vaddvq_f64(vmulq_f64(v18, v18)) * v10.f64[1] * 1.0e-12)
      {
        goto LABEL_19;
      }

      v29 = vmulq_f64(v18, v5);
      v18 = vnegq_f64(v18);
      v26 = vdivq_f64(vpaddq_f64(vmulq_f64(v9, v18), v29), v10);
      v25 = 1;
    }

    else
    {
      v25 = 0;
      v10 = vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v5, v9), -v18.f64[1]), vzip2q_s64(v5, v9), v18.f64[0]);
      v26 = vdivq_f64(v10, vdupq_lane_s64(*&v27, 0));
    }
  }

  v30 = v26.f64[0] != 0.0;
  if (v26.f64[0] > -1.0e-10)
  {
    v30 = 0;
  }

  v28 = 0.0;
  v31 = v26.f64[1] > -1.0e-10 || v26.f64[1] == 0.0;
  if (v31 && !v30)
  {
    if (!v25)
    {
      v17 = vbicq_s8(v26, vcltzq_f64(v26));
      goto LABEL_35;
    }

    v32 = a1[3].f64[0];
    v33 = a2[3].f64[0];
    v18.f64[0] = fabs(v4);
    v10.f64[0] = 1.0e-10;
    v34 = vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v10, v18)).i64[0], 0);
    if (v32 >= v33)
    {
      v35 = a1[3].f64[0];
    }

    else
    {
      v35 = a2[3].f64[0];
    }

    v36 = vbslq_s8(v34, vmlaq_n_f64(v2, v3, v4 * (v35 - v32)), v2);
    v3.f64[0] = fabs(v8);
    v37 = vsubq_f64(v36, vbslq_s8(vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v10, v3)).i64[0], 0), vmlaq_n_f64(v6, v7, v8 * (v35 - v33)), v6));
    v28 = v35 + sqrt(vaddvq_f64(vmulq_f64(v37, v37))) / (v4 + v8);
  }

  return *&v28;
}

_DWORD **geom::straight_skeleton_evaluator<double>::for_each_wavefront_edge<geom::straight_skeleton_evaluator<double>::best_split_event_for_vertex(unsigned int)::{lambda(unsigned int,unsigned int)#1}>(_DWORD **result, _DWORD **a2, double a3, double a4, float64x2_t a5)
{
  v6 = result[15];
  v5 = result[16];
  if (v5 != v6)
  {
    v8 = result;
    v9 = 0;
    v10 = 0;
    do
    {
      if (v6)
      {
        v11 = &v6[144 * v9];
        if (!*(v11 + 32))
        {
          v12 = *(v11 + 17);
          if (v10 != v12)
          {
            result = geom::straight_skeleton_evaluator<double>::best_split_event_for_vertex::{lambda(unsigned int,unsigned int)#1}::operator()(a2, v10, v12, a3, a4, a5);
            v6 = v8[15];
            v5 = v8[16];
          }
        }
      }

      v9 = ++v10;
    }

    while (0x8E38E38E38E38E39 * ((v5 - v6) >> 4) > v10);
  }

  return result;
}

double geom::straight_skeleton_evaluator<double>::time_of_joiner_vertex(void *a1, unsigned int a2)
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

  return *(a1[12] + 8 * ((v3 - v2) >> 2));
}

void geom::straight_skeleton_evaluator<double>::for_each_wavefront_vertex<geom::straight_skeleton_evaluator<double>::add_joiner_patch_to_time(double)::{lambda(unsigned int)#1},geom::straight_skeleton_evaluator<double>::add_joiner_patch_to_time(double)::{lambda(void)#1}>(uint64_t a1, void **a2)
{
  memset(__p, 0, sizeof(__p));
  std::vector<BOOL>::resize(__p, 0x8E38E38E38E38E39 * ((*(a1 + 128) - *(a1 + 120)) >> 4), 0);
  v4 = *(a1 + 120);
  v5 = *(a1 + 128);
  v6 = __p[0];
  if (v5 == v4)
  {
LABEL_13:
    if (v6)
    {
      operator delete(v6);
    }

    return;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = *(v6 + (v7 >> 6));
    if ((v9 & (1 << v7)) == 0 && !*(v4 + 144 * v7 + 128))
    {
      break;
    }

    *(v6 + (v7 >> 6)) = v9 | (1 << v7);
LABEL_6:
    v7 = ++v8;
    if (0x8E38E38E38E38E39 * ((v5 - v4) >> 4) <= v8)
    {
      goto LABEL_13;
    }
  }

  v10 = v8;
  v11 = v8 >> 6;
  v12 = 1 << v8;
  if (((1 << v8) & *(v6 + v11)) != 0)
  {
    goto LABEL_6;
  }

  v13 = v8;
  while (1)
  {
    geom::straight_skeleton_evaluator<double>::add_joiner_patch_to_time(double)::{lambda#1}::operator()(a2, v13);
    v6 = __p[0];
    *(__p[0] + v11) |= v12;
    v4 = *(a1 + 120);
    v14 = v4 + 144 * v10;
    if (*(v14 + 128))
    {
      break;
    }

    v10 = *(v14 + 68);
    v11 = v10 >> 6;
    v12 = 1 << v10;
    v13 = *(v14 + 68);
    if (((1 << v10) & *(v6 + (v10 >> 6))) != 0)
    {
      v5 = *(a1 + 128);
      goto LABEL_6;
    }
  }

  v15 = std::__throw_bad_variant_access[abi:nn200100]();
  geom::straight_skeleton_evaluator<double>::for_each_wavefront_edge<geom::straight_skeleton_evaluator<double>::add_joiner_patch_to_time(double)::{lambda(unsigned int,unsigned int)#1}>(v15);
}

void geom::straight_skeleton_evaluator<double>::for_each_wavefront_edge<geom::straight_skeleton_evaluator<double>::add_joiner_patch_to_time(double)::{lambda(unsigned int,unsigned int)#1}>(uint64_t a1, void *a2)
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
        v8 = v3 + 144 * v6;
        if (!*(v8 + 128))
        {
          v9 = *(v8 + 68);
          if (v7 != v9)
          {
            geom::straight_skeleton_evaluator<double>::add_joiner_patch_to_time(double)::{lambda(unsigned int,unsigned int)#1}::operator()(a2, v7, v9);
            v3 = *(a1 + 120);
            v2 = *(a1 + 128);
          }
        }
      }

      v6 = ++v7;
    }

    while (0x8E38E38E38E38E39 * ((v2 - v3) >> 4) > v7);
  }
}

uint64_t std::deque<geom::straight_skeleton_evaluator<double>::split_event,std::allocator<geom::straight_skeleton_evaluator<double>::split_event>>::~deque[abi:nn200100](void *a1)
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
    v5 = 64;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 128;
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

void std::vector<std::optional<unsigned int>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 3)
  {
    if (a2)
    {
      v11 = &v4[8 * a2];
      do
      {
        *v4 = 0;
        v4[4] = 0;
        v4 += 8;
      }

      while (v4 != v11);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = &v4[-*a1];
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v6 >> 3;
    v9 = v5 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIZN4geom23marching_squares_2_implIfRKNS_8functionIFfDv2_fEEEEEvOT0_tNS2_4bboxIT_Lh2EEERNS_6vectorINS2_11vector_typeISD_Lh2EvE5valueENS1_ISI_EEEERNSF_IjNS1_IjEEEEE14edge_map_queryEEEENS_19__allocation_resultINS_16allocator_traitsISD_E7pointerEEERSD_m(a1, v10);
    }

    v12 = 8 * v8;
    v13 = 8 * v8 + 8 * a2;
    v14 = v12;
    do
    {
      *v14 = 0;
      v14[4] = 0;
      v14 += 8;
    }

    while (v14 != v13);
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void *std::vector<unsigned int>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    std::vector<float>::__vallocate[abi:nn200100](result, a3);
  }

  return result;
}

uint64_t std::vector<geom::straight_skeleton_evaluator<float>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<float>::vertex_state>>::__emplace_back_slow_path<geom::straight_skeleton_evaluator<float>::vertex_state>(void **a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geom::straight_skeleton_evaluator<float>::vertex_state>>(a1, v6);
  }

  v7 = 104 * v2;
  *v7 = 0;
  *(v7 + 96) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<float>::active_vertex,geom::straight_skeleton_evaluator<float>::inactive_vertex>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<float>::active_vertex,geom::straight_skeleton_evaluator<float>::inactive_vertex>,(std::__variant_detail::_Trait)1>>(v7, a2);
  v8 = v7 + 104;
  v9 = a1[1];
  v10 = *a1 + v7 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::straight_skeleton_evaluator<float>::vertex_state>,geom::straight_skeleton_evaluator<float>::vertex_state*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  std::__split_buffer<geom::straight_skeleton_evaluator<float>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<float>::vertex_state> &>::~__split_buffer(v14);
  return v8;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<float>::active_vertex,geom::straight_skeleton_evaluator<float>::inactive_vertex>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<float>::active_vertex,geom::straight_skeleton_evaluator<float>::inactive_vertex>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 96);
  if (v4 != -1)
  {
    result = (*(&off_286292F88 + v4))(&v7, result);
  }

  *(v3 + 96) = -1;
  v5 = *(a2 + 96);
  if (v5 != -1)
  {
    v6 = v3;
    result = (*(&off_286292FC8 + v5))(&v6, a2);
    *(v3 + 96) = v5;
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<float>::active_vertex,geom::straight_skeleton_evaluator<float>::inactive_vertex>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<float>::active_vertex,geom::straight_skeleton_evaluator<float>::inactive_vertex>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<float>::active_vertex,geom::straight_skeleton_evaluator<float>::inactive_vertex>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<float>::active_vertex,geom::straight_skeleton_evaluator<float>::inactive_vertex>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<float>::active_vertex,geom::straight_skeleton_evaluator<float>::inactive_vertex>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,geom::straight_skeleton_evaluator<float>::active_vertex,geom::straight_skeleton_evaluator<float>::inactive_vertex> &&>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(v2 + 41) = *(a2 + 41);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *v2 = v3;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 64) = 0;
  result = a2[4];
  *(v2 + 64) = result;
  *(v2 + 80) = *(a2 + 10);
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(v2 + 88) = *(a2 + 11);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<float>::active_vertex,geom::straight_skeleton_evaluator<float>::inactive_vertex>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<float>::active_vertex,geom::straight_skeleton_evaluator<float>::inactive_vertex>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<float>::active_vertex,geom::straight_skeleton_evaluator<float>::inactive_vertex>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<float>::active_vertex,geom::straight_skeleton_evaluator<float>::inactive_vertex>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<float>::active_vertex,geom::straight_skeleton_evaluator<float>::inactive_vertex>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,geom::straight_skeleton_evaluator<float>::active_vertex,geom::straight_skeleton_evaluator<float>::inactive_vertex> &&>(_OWORD **a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  v2[1] = v4;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::straight_skeleton_evaluator<float>::vertex_state>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::straight_skeleton_evaluator<float>::vertex_state>,geom::straight_skeleton_evaluator<float>::vertex_state*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v13 = v4;
    v14 = v5;
    v8 = a2;
    v9 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 96) = -1;
      result = std::__variant_detail::__ctor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<float>::active_vertex,geom::straight_skeleton_evaluator<float>::inactive_vertex>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<float>::active_vertex,geom::straight_skeleton_evaluator<float>::inactive_vertex>,(std::__variant_detail::_Trait)1>>(a4, v9);
      v9 += 104;
      a4 += 104;
    }

    while (v9 != a3);
    for (; v8 != a3; v8 += 104)
    {
      v11 = *(v8 + 96);
      if (v11 != -1)
      {
        result = (*(&off_286292F88 + v11))(&v12, v8);
      }

      *(v8 + 96) = -1;
    }
  }

  return result;
}

void **std::__split_buffer<geom::straight_skeleton_evaluator<float>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<float>::vertex_state> &>::~__split_buffer(void **a1)
{
  std::__split_buffer<geom::straight_skeleton_evaluator<float>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<float>::vertex_state> &>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<geom::straight_skeleton_evaluator<float>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<float>::vertex_state> &>::clear[abi:nn200100](uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16);
  if (v2 != v1)
  {
    v3 = result;
    do
    {
      v4 = v2 - 104;
      *(v3 + 16) = v2 - 104;
      v5 = *(v2 - 8);
      if (v5 != -1)
      {
        result = (*(&off_286292F88 + v5))(&v6);
        v4 = *(v3 + 16);
      }

      *(v2 - 8) = -1;
      v2 = v4;
    }

    while (v4 != v1);
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<float>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event> *>>(uint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a3 - 2;
  if (a3 >= 2)
  {
    v36 = v7;
    v37 = v6;
    v38 = v4;
    v39 = v5;
    v9 = a4;
    v10 = result;
    v11 = v8 >> 1;
    if ((v8 >> 1) >= (a4 - result) >> 5)
    {
      v13 = (a4 - result) >> 4;
      v14 = v13 | 1;
      v15 = (result + 32 * (v13 | 1));
      v16 = v13 + 2;
      if (v13 + 2 < a3)
      {
        geom::straight_skeleton_evaluator<float>::event_time(result + 32 * (v13 | 1));
        v18 = v17;
        geom::straight_skeleton_evaluator<float>::event_time((v15 + 2));
        if (v18 > v19)
        {
          v15 += 2;
          v14 = v16;
        }
      }

      geom::straight_skeleton_evaluator<float>::event_time(v15);
      v21 = v20;
      result = geom::straight_skeleton_evaluator<float>::event_time(v9);
      if (v21 <= v22)
      {
        v23 = v9[1];
        v34 = *v9;
        v35 = v23;
        do
        {
          v24 = v9;
          v9 = v15;
          v25 = v15[1];
          *v24 = *v15;
          v24[1] = v25;
          if (v11 < v14)
          {
            break;
          }

          v26 = (2 * v14) | 1;
          v15 = (v10 + 32 * v26);
          v14 = 2 * v14 + 2;
          if (v14 >= a3)
          {
            v14 = v26;
          }

          else
          {
            geom::straight_skeleton_evaluator<float>::event_time(v10 + 32 * v26);
            v28 = v27;
            geom::straight_skeleton_evaluator<float>::event_time((v15 + 2));
            if (v28 <= v29)
            {
              v14 = v26;
            }

            else
            {
              v15 += 2;
            }
          }

          geom::straight_skeleton_evaluator<float>::event_time(v15);
          v31 = v30;
          result = geom::straight_skeleton_evaluator<float>::event_time(&v34);
        }

        while (v31 <= v32);
        v33 = v35;
        *v9 = v34;
        v9[1] = v33;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<float>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event> *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4 - 2;
  if (a4 >= 2)
  {
    v25 = v7;
    v26 = v6;
    v27 = v4;
    v28 = v5;
    v9 = result;
    v10 = v8 >> 1;
    v11 = (result + 32 * (v8 >> 1));
    v12 = (a2 - 32);
    geom::straight_skeleton_evaluator<float>::event_time(v11);
    v14 = v13;
    result = geom::straight_skeleton_evaluator<float>::event_time(v12);
    if (v14 > v15)
    {
      v16 = v12[1];
      v23 = *v12;
      v24 = v16;
      do
      {
        v17 = v11;
        v18 = v11[1];
        *v12 = *v11;
        v12[1] = v18;
        if (!v10)
        {
          break;
        }

        v10 = (v10 - 1) >> 1;
        v11 = (v9 + 32 * v10);
        geom::straight_skeleton_evaluator<float>::event_time(v11);
        v20 = v19;
        result = geom::straight_skeleton_evaluator<float>::event_time(&v23);
        v12 = v17;
      }

      while (v20 > v21);
      v22 = v24;
      *v17 = v23;
      v17[1] = v22;
    }
  }

  return result;
}

uint64_t geom::intersect_wavefront_edge_spoke<float>(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3, double a4, double a5)
{
  v5 = a1[3].f32[0];
  v6 = a2[3].f32[0];
  if (v5 >= v6)
  {
    v7 = a1[3].f32[0];
  }

  else
  {
    v7 = a2[3].f32[0];
  }

  v8 = a1[1];
  v9 = a1[2].f32[0];
  *&a4 = fabsf(v9);
  LODWORD(a5) = 916964780;
  v10 = vdup_lane_s32(vmvn_s8(vcge_f32(*&a5, *&a4)), 0);
  v11 = a2[1];
  v12 = vbsl_s8(v10, vmla_n_f32(*a1, v8, (v7 - v5) * v9), *a1);
  v13 = a2[2].f32[0];
  v10.f32[0] = fabsf(v13);
  v14 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(*&a5, v10)), 0), vmla_n_f32(*a2, v11, (v7 - v6) * v13), *a2);
  v15 = vsub_f32(vext_s8(v12, v14, 4uLL), vext_s8(v14, v12, 4uLL));
  v16 = vmul_f32(v15, v15);
  v16.i32[0] = vadd_f32(v16, vdup_lane_s32(v16, 1)).u32[0];
  v17 = vrsqrte_f32(v16.u32[0]);
  v18 = vmul_f32(v17, vrsqrts_f32(v16.u32[0], vmul_f32(v17, v17)));
  v19 = vmul_n_f32(v15, vmul_f32(v18, vrsqrts_f32(v16.u32[0], vmul_f32(v18, v18))).f32[0]);
  v20 = vaddv_f32(vmul_f32(v12, v19));
  v21 = vmul_f32(vadd_f32(v8, v11), v19);
  v22 = vbsl_s8(vdup_lane_s32(vcgt_f32(0, vadd_f32(v21, vdup_lane_s32(v21, 1))), 0), vneg_f32(v19), v19);
  if (vaddv_f32(v21) >= 0.0)
  {
    v20 = -v20;
  }

  v23 = a3[2].f32[0];
  v24 = fabsf(v23);
  v25 = *a3;
  v26 = a3[1];
  if (v24 <= 0.000005)
  {
    v27 = *a3;
  }

  else
  {
    v27 = vmla_n_f32(*a3, v26, v23 * (v7 - a3[3].f32[0]));
  }

  v28 = 0;
  v29 = v23 * vaddv_f32(vmul_f32(v22, v26));
  if (v29 == 1.0)
  {
    v31 = 0;
    v32 = 0;
  }

  else
  {
    v30 = v29 + -1.0;
    v31 = 0;
    v32 = 0;
    if (fabsf(v30) > 0.000005)
    {
      v33 = -(v20 + vaddv_f32(vmul_f32(v22, v27))) / v30;
      if (v33 != 0.0 && v33 <= -0.000005)
      {
        goto LABEL_21;
      }

      v34 = v7 + fmaxf(v33, 0.0);
      if (v24 > 0.000005)
      {
        v25 = vmla_n_f32(v25, v26, v23 * (v34 - a3[3].f32[0]));
      }

      v21.f32[0] = -v8.f32[1];
      v35 = vzip1_s32(v21, v8);
      v36 = vmul_f32(v35, v35);
      v36.i32[0] = vadd_f32(v36, vdup_lane_s32(v36, 1)).u32[0];
      v37 = vrsqrte_f32(v36.u32[0]);
      v38 = vmul_f32(v37, vrsqrts_f32(v36.u32[0], vmul_f32(v37, v37)));
      v39 = vmul_n_f32(v35, vmul_f32(v38, vrsqrts_f32(v36.u32[0], vmul_f32(v38, v38))).f32[0]);
      v40 = vmul_f32(*a1, v39);
      v41 = vmul_f32(v25, v39);
      v42 = vadd_f32(vzip1_s32(v41, v40), vzip2_s32(v41, v40));
      v43 = vsub_f32(v42, vdup_lane_s32(v42, 1)).f32[0];
      if (v43 != 0.0 && v43 > 0.000005)
      {
        goto LABEL_21;
      }

      *&a5 = -v11.f32[1];
      v44 = vzip1_s32(*&a5, v11);
      v45 = vmul_f32(v44, v44);
      v45.i32[0] = vadd_f32(v45, vdup_lane_s32(v45, 1)).u32[0];
      v46 = vrsqrte_f32(v45.u32[0]);
      v47 = vmul_f32(v46, vrsqrts_f32(v45.u32[0], vmul_f32(v46, v46)));
      v48 = vmul_n_f32(v44, vmul_f32(v47, vrsqrts_f32(v45.u32[0], vmul_f32(v47, v47))).f32[0]);
      v49 = vmul_f32(*a2, v48);
      v50 = vmul_f32(v25, v48);
      v51 = vadd_f32(vzip1_s32(v50, v49), vzip2_s32(v50, v49));
      v52 = vsub_f32(v51, vdup_lane_s32(v51, 1)).f32[0];
      if (v52 != 0.0 && v52 < -0.000005)
      {
        goto LABEL_21;
      }

      v53 = v20 + vaddv_f32(vmul_f32(v22, v25));
      if (v53 == 0.0 || v53 >= -0.000005)
      {
        v32 = LODWORD(v34) & 0xFFFFFF00;
        v28 = LOBYTE(v34);
        v31 = 0x100000000;
      }

      else
      {
LABEL_21:
        v28 = 0;
        v31 = 0;
        v32 = 0;
      }
    }
  }

  return v31 | v28 | v32;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:nn200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::stringbuf::__init_buf_ptrs[abi:nn200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:nn200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:nn200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t geom::straight_skeleton_evaluator<float>::check_geometric_invariants(void)const::{lambda(unsigned int,unsigned int)#1}::operator()(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*result + 120);
  v4 = (v3 + 104 * a2);
  if (v4[12].i32[0] || ((v7 = result, v8 = *(*(*result + 104) - 4), v9 = v4[2].f32[0], fabsf(v9) <= 0.000005) ? (v10 = *v4) : (v10 = vmla_n_f32(*v4, v4[1], v9 * (v8 - v4[3].f32[0]))), v11 = (v3 + 104 * a3), v11[12].i32[0]))
  {
    v25 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom::straight_skeleton_evaluator<float>::best_split_event_for_vertex::{lambda(unsigned int,unsigned int)#1}::operator()(v25, v26, v27, v28, v29);
  }

  else
  {
    v12 = v11[2].f32[0];
    if (fabsf(v12) <= 0.000005)
    {
      v13 = *v11;
    }

    else
    {
      v13 = vmla_n_f32(*v11, v11[1], v12 * (v8 - v11[3].f32[0]));
    }

    v14 = vsub_f32(v10, v13);
    if (sqrtf(vaddv_f32(vmul_f32(v14, v14))) <= 0.000005)
    {
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v32);
      v15 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v33, "edge ", 5);
      v16 = MEMORY[0x25305E2F0](v15, a2);
      v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, " -> ", 4);
      v18 = MEMORY[0x25305E2F0](v17, a3);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, " is zero length.  p0 = (", 24);
      v19 = std::ostream::operator<<();
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, ", ", 2);
      v20 = std::ostream::operator<<();
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, ") p1 = (", 8);
      v21 = std::ostream::operator<<();
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v21, ", ", 2);
      v22 = std::ostream::operator<<();
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, ")", 1);
      v23 = *(v7 + 8);
      std::stringbuf::str();
      std::vector<std::string>::push_back[abi:nn200100](v23, &__p);
      if (v31 < 0)
      {
        operator delete(__p);
      }

      v32[0] = *MEMORY[0x277D82818];
      v24 = *(MEMORY[0x277D82818] + 72);
      *(v32 + *(v32[0] - 24)) = *(MEMORY[0x277D82818] + 64);
      v33 = v24;
      v34 = MEMORY[0x277D82878] + 16;
      if (v36 < 0)
      {
        operator delete(v35[7].__locale_);
      }

      v34 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v35);
      std::iostream::~basic_iostream();
      return MEMORY[0x25305E3C0](&v37);
    }
  }

  return result;
}

uint64_t geom::straight_skeleton_evaluator<float>::best_split_event_for_vertex(unsigned int)::{lambda(unsigned int,unsigned int)#1}::operator()(uint64_t result, unsigned int a2, unsigned int a3, double a4, double a5)
{
  v5 = **(result + 8);
  if (v5 != a2 && v5 != a3)
  {
    v8 = result;
    v9 = *result;
    v10 = *(*result + 120);
    v11 = (v10 + 104 * a2);
    if (v11[12].i32[0])
    {
      goto LABEL_19;
    }

    v12 = (v10 + 104 * a3);
    if (v12[12].i32[0])
    {
      goto LABEL_19;
    }

    v13 = (v10 + 104 * v5);
    if (v13[12].i32[0])
    {
      goto LABEL_19;
    }

    result = geom::intersect_wavefront_edge_spoke<float>(v11, v12, v13, a4, a5);
    if ((result & 0x100000000) == 0)
    {
      return result;
    }

    v14 = *(v8 + 16);
    v15 = v14[3].u8[0];
    if (v15 == 1 && v14->f32[0] <= *&result)
    {
      return result;
    }

    v16 = *(v9 + 120);
    v17 = v16 + 104 * a2;
    if (*(v17 + 96) || (v18 = **(v8 + 8), v19 = (v16 + 104 * v18), v19[12].i32[0]))
    {
LABEL_19:
      v23 = std::__throw_bad_variant_access[abi:nn200100]();
      return std::deque<geom::straight_skeleton_evaluator<float>::edge_event,std::allocator<geom::straight_skeleton_evaluator<float>::edge_event>>::push_back(v23);
    }

    v20 = *(v17 + 40);
    v21 = v19[2].f32[0];
    if (fabsf(v21) <= 0.000005)
    {
      v22 = *v19;
    }

    else
    {
      v22 = vmla_n_f32(*v19, v19[1], v21 * (*&result - v19[3].f32[0]));
    }

    v14->i32[0] = result;
    v14->i32[1] = v20;
    v14[1].i32[0] = v18;
    v14[2] = v22;
    if ((v15 & 1) == 0)
    {
      v14[3].i8[0] = 1;
    }
  }

  return result;
}

__n128 std::deque<geom::straight_skeleton_evaluator<float>::edge_event,std::allocator<geom::straight_skeleton_evaluator<float>::edge_event>>::push_back(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 170 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<geom::straight_skeleton_evaluator<float>::edge_event,std::allocator<geom::straight_skeleton_evaluator<float>::edge_event>>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = (*(v6 + 8 * (v8 / 0xAA)) + 24 * (v8 % 0xAA));
  result = *a2;
  v9[1].n128_u64[0] = a2[1].n128_u64[0];
  *v9 = result;
  ++*(a1 + 40);
  return result;
}

void *std::deque<geom::straight_skeleton_evaluator<float>::edge_event,std::allocator<geom::straight_skeleton_evaluator<float>::edge_event>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:nn200100]<std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *>>::emplace_back<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *&>(a1, &v10);
}

_OWORD *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<float>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<float>::edge_event,geom::straight_skeleton_evaluator<float>::split_event> *>>(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[2 * v5 + 2];
    v8 = (2 * v5) | 1;
    v9 = 2 * v5 + 2;
    if (v9 < a3)
    {
      geom::straight_skeleton_evaluator<float>::event_time(&a1[2 * v5 + 2]);
      v11 = v10;
      geom::straight_skeleton_evaluator<float>::event_time((v7 + 2));
      if (v11 > v12)
      {
        v7 += 2;
        v8 = v9;
      }
    }

    v13 = v7[1];
    *a1 = *v7;
    a1[1] = v13;
    a1 = v7;
    v5 = v8;
  }

  while (v8 <= v6);
  return v7;
}

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(void *a1, unsigned int *a2)
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

void geom::hash_brown<unsigned int,unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>>::init(void **a1, unint64_t a2)
{
  a1[4] = 0;
  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  v4 = 151 * v3;
  v5 = ((151 * v3) >> 7) + 15;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = (v5 & 0x3FFFFFFFFFFFFF0);
  if ((v5 & 0x3FFFFFFFFFFFFF0) != 0)
  {
    if ((((v5 & 0x3FFFFFFFFFFFFF0) + 63) & 0x7FFFFFFFFFFFFC0) <= 0x40)
    {
      v6 = 64;
    }

    else
    {
      v6 = ((v5 & 0x3FFFFFFFFFFFFF0) + 63) & 0x7FFFFFFFFFFFFC0;
    }

    *a1 = malloc_type_aligned_alloc(0x40uLL, v6, 0x1000040451B5BE8uLL);
    if (v4 >= 0x80)
    {
      v7 = 0;
      *&v8 = -1;
      *(&v8 + 1) = -1;
      do
      {
        *(*a1 + v7++) = v8;
      }

      while (v5 >> 4 != v7);
    }

    if (((8 * a1[2] + 63) & 0xFFFFFFFFFFFFFFC0) <= 0x40)
    {
      v9 = 64;
    }

    else
    {
      v9 = (8 * a1[2] + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    v10 = malloc_type_aligned_alloc(0x40uLL, v9, 0x100004000313F17uLL);
    a1[1] = v10;
    v11 = a1[2];
    if (v11)
    {
      bzero(v10, 8 * v11);
    }
  }

  else
  {
    v11 = 0;
  }

  a1[3] = 0;
  a1[4] = v11;
}

double geom::straight_skeleton_evaluator<float>::add_joiner_patch_to_time(float)::{lambda(unsigned int)#1}::operator()(void **a1, unsigned int a2, double result)
{
  v15 = a2;
  v3 = *a1;
  v4 = ((*a1)[15] + 104 * a2);
  if (v4[12].i32[0])
  {
    v10 = std::__throw_bad_variant_access[abi:nn200100]();
    *&result = geom::hash_brown<unsigned int,unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>>::internal_add<unsigned int>(v10, v11, v12).u64[0];
  }

  else if (v4[4].i32[1] != a2)
  {
    v6 = geom::straight_skeleton_evaluator<float>::time_of_joiner_vertex(*a1, **&v4[8]);
    v7 = *a1[1];
    if (v6 == v7 || vabds_f32(v6, v7) <= 0.000005)
    {
      v14 = **&v4[8];
    }

    else
    {
      v14 = (v3[1] - *v3) >> 3;
      v8 = v4[2].f32[0];
      if (fabsf(v8) <= 0.000005)
      {
        v9 = *v4;
      }

      else
      {
        v9 = vmla_n_f32(*v4, v4[1], v8 * (v7 - v4[3].f32[0]));
      }

      v13[0] = v9;
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(v3, v13);
    }

    geom::hash_brown<unsigned int,unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>>::insert(a1[2], &v15, &v14, v13);
  }

  return result;
}

int64x2_t geom::hash_brown<unsigned int,unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>>::internal_add<unsigned int>(uint64_t a1, _DWORD *a2, int a3)
{
  if (!*(a1 + 32))
  {
    geom::hash_brown<unsigned int,unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>>::grow_to_count(a1);
  }

  v6 = *a2;
  v7 = *(a1 + 16) >> 4;
  v8 = v6 % v7;
  v9 = *a1;
  v10 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * (v6 % v7))), xmmword_2500C4D40)))), 0x3830282018100800)));
  if (v10 >= 0x40)
  {
    do
    {
      if (v8 + 1 == v7)
      {
        v8 = 0;
      }

      else
      {
        ++v8;
      }

      v10 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v9 + 16 * v8)), xmmword_2500C4D40)))), 0x3830282018100800)));
    }

    while (v10 > 0x3F);
  }

  v11 = v9 + 16 * v8;
  v12 = *(v11 + v10);
  *(v11 + v10) = v6 & 0x7F;
  v13 = (*(a1 + 8) + 8 * (v10 + 16 * v8));
  *v13 = *a2;
  v13[1] = a3;
  if (v12 == 255)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  v15.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v15.i64[1] = v14;
  result = vaddq_s64(*(a1 + 24), v15);
  *(a1 + 24) = result;
  return result;
}

void geom::hash_brown<unsigned int,unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>>::grow_to_count(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v3 = (((151 * v1) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v3 != v2)
  {
    if (v3 > v2)
    {
      v1 = 150 * v1 / 0x64;
    }

    goto LABEL_6;
  }

  if (!*(a1 + 32))
  {
LABEL_6:
    geom::hash_brown<unsigned int,unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>>::do_resize(a1, v1);
  }
}

void geom::hash_brown<unsigned int,unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>>::do_resize(__int128 *a1, unint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    a2 = 1;
  }

  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  geom::hash_brown<unsigned int,unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>>::init(&v20, a2);
  v18[0] = a1;
  v4 = *(a1 + 2);
  if (v4 >= 0x10)
  {
    v5 = 0;
    v6 = *a1;
    v7 = v4 >> 4;
    v8 = xmmword_2500C4D40;
    v3.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v6), xmmword_2500C4D40)))), 0x3830282018100800).u16[0];
      v18[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v5 -= 16;
      ++v6;
      if (!--v7)
      {
        goto LABEL_10;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v5;
    v19 = v10 - v5;
    if (v10 + 1 != v5)
    {
      do
      {
        v17 = *(*(v18[0] + 8) + 8 * v11);
        geom::hash_brown<unsigned int,unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>>::internal_add<unsigned int>(&v20, &v17, HIDWORD(v17), v8, v3);
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE19hash_brown_iteratorIRNS2_4pairIKSP_S4_EEEppEv(v18);
        v11 = v19;
      }

      while (v19 != -1);
    }
  }

LABEL_10:
  if (&v20 != a1)
  {
    v12 = v21;
    v13 = *a1;
    v14 = a1[1];
    *a1 = v20;
    a1[1] = v12;
    v20 = v13;
    v21 = v14;
    v15 = *(a1 + 4);
    *(a1 + 4) = v22;
    v22 = v15;
  }

  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6deinitEv(&v20);
  v16 = *MEMORY[0x277D85DE8];
}

void geom::straight_skeleton_evaluator<float>::add_joiner_patch_to_time(float)::{lambda(unsigned int,unsigned int)#1}::operator()(void *a1, unsigned int a2, unsigned int a3)
{
  v20 = a3;
  v21 = a2;
  v3 = *a1;
  v4 = *(*a1 + 120);
  v5 = v4 + 104 * a2;
  if (*(v5 + 96) || (v6 = v4 + 104 * a3, *(v6 + 96)))
  {
    v13 = std::__throw_bad_variant_access[abi:nn200100]();
    std::vector<geom::straight_skeleton_evaluator<double>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<double>::vertex_state>>::__emplace_back_slow_path<geom::straight_skeleton_evaluator<double>::vertex_state>(v13, v14);
  }

  else
  {
    v8 = a1[1];
    v19 = *(v8[1] + 8 * geom::hash_brown<unsigned int,unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>>::find_internal(v8, &v21) + 4);
    v18 = *(*(v5 + 72) - 4);
    v9 = a1[1];
    v10 = *(v9[1] + 8 * geom::hash_brown<unsigned int,unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>>::find_internal(v9, &v20) + 4);
    v17 = v10;
    v11 = **(v6 + 64);
    v16 = v11;
    if (v19 != v18 || v10 != v11)
    {
      std::vector<unsigned int>::push_back[abi:nn200100]((v3 + 24), &v19);
      if (v18 != v19)
      {
        std::vector<unsigned int>::push_back[abi:nn200100]((v3 + 24), &v18);
      }

      std::vector<unsigned int>::push_back[abi:nn200100]((v3 + 24), &v16);
      if (v16 != v10)
      {
        std::vector<unsigned int>::push_back[abi:nn200100]((v3 + 24), &v17);
      }

      v15 = (*(v3 + 32) - *(v3 + 24)) >> 2;
      std::vector<unsigned int>::push_back[abi:nn200100]((v3 + 48), &v15);
    }
  }
}

uint64_t std::vector<geom::straight_skeleton_evaluator<double>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<double>::vertex_state>>::__emplace_back_slow_path<geom::straight_skeleton_evaluator<double>::vertex_state>(void **a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v6 = 0x1C71C71C71C71C7;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geom::straight_skeleton_evaluator<double>::vertex_state>>(a1, v6);
  }

  v7 = 144 * v2;
  *v7 = 0;
  *(v7 + 128) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<double>::active_vertex,geom::straight_skeleton_evaluator<double>::inactive_vertex>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<double>::active_vertex,geom::straight_skeleton_evaluator<double>::inactive_vertex>,(std::__variant_detail::_Trait)1>>(v7, a2);
  v8 = v7 + 144;
  v9 = a1[1];
  v10 = *a1 + v7 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::straight_skeleton_evaluator<double>::vertex_state>,geom::straight_skeleton_evaluator<double>::vertex_state*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  std::__split_buffer<geom::straight_skeleton_evaluator<double>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<double>::vertex_state> &>::~__split_buffer(v14);
  return v8;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<double>::active_vertex,geom::straight_skeleton_evaluator<double>::inactive_vertex>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<double>::active_vertex,geom::straight_skeleton_evaluator<double>::inactive_vertex>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 128);
  if (v4 != -1)
  {
    result = (*(&off_286292FA8 + v4))(&v7, result);
  }

  *(v3 + 128) = -1;
  v5 = *(a2 + 128);
  if (v5 != -1)
  {
    v6 = v3;
    result = (*(&off_286292FD8 + v5))(&v6, a2);
    *(v3 + 128) = v5;
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<double>::active_vertex,geom::straight_skeleton_evaluator<double>::inactive_vertex>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<double>::active_vertex,geom::straight_skeleton_evaluator<double>::inactive_vertex>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<double>::active_vertex,geom::straight_skeleton_evaluator<double>::inactive_vertex>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<double>::active_vertex,geom::straight_skeleton_evaluator<double>::inactive_vertex>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<double>::active_vertex,geom::straight_skeleton_evaluator<double>::inactive_vertex>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,geom::straight_skeleton_evaluator<double>::active_vertex,geom::straight_skeleton_evaluator<double>::inactive_vertex> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v3;
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  *(v2 + 73) = *(a2 + 73);
  *(v2 + 48) = v5;
  *(v2 + 64) = v6;
  *(v2 + 32) = v4;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 96) = 0;
  result = *(a2 + 96);
  *(v2 + 96) = result;
  *(v2 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(v2 + 120) = *(a2 + 120);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<double>::active_vertex,geom::straight_skeleton_evaluator<double>::inactive_vertex>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<double>::active_vertex,geom::straight_skeleton_evaluator<double>::inactive_vertex>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<double>::active_vertex,geom::straight_skeleton_evaluator<double>::inactive_vertex>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<double>::active_vertex,geom::straight_skeleton_evaluator<double>::inactive_vertex>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<double>::active_vertex,geom::straight_skeleton_evaluator<double>::inactive_vertex>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,geom::straight_skeleton_evaluator<double>::active_vertex,geom::straight_skeleton_evaluator<double>::inactive_vertex> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 48);
  *(v2 + 32) = *(a2 + 32);
  *(v2 + 48) = v5;
  *v2 = result;
  *(v2 + 16) = v4;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::straight_skeleton_evaluator<double>::vertex_state>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::straight_skeleton_evaluator<double>::vertex_state>,geom::straight_skeleton_evaluator<double>::vertex_state*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v13 = v4;
    v14 = v5;
    v8 = a2;
    v9 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 128) = -1;
      result = std::__variant_detail::__ctor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<double>::active_vertex,geom::straight_skeleton_evaluator<double>::inactive_vertex>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<geom::straight_skeleton_evaluator<double>::active_vertex,geom::straight_skeleton_evaluator<double>::inactive_vertex>,(std::__variant_detail::_Trait)1>>(a4, v9);
      v9 += 144;
      a4 += 144;
    }

    while (v9 != a3);
    for (; v8 != a3; v8 += 144)
    {
      v11 = *(v8 + 128);
      if (v11 != -1)
      {
        result = (*(&off_286292FA8 + v11))(&v12, v8);
      }

      *(v8 + 128) = -1;
    }
  }

  return result;
}

void **std::__split_buffer<geom::straight_skeleton_evaluator<double>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<double>::vertex_state> &>::~__split_buffer(void **a1)
{
  std::__split_buffer<geom::straight_skeleton_evaluator<double>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<double>::vertex_state> &>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<geom::straight_skeleton_evaluator<double>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<double>::vertex_state> &>::clear[abi:nn200100](uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16);
  if (v2 != v1)
  {
    v3 = result;
    do
    {
      v4 = v2 - 144;
      *(v3 + 16) = v2 - 144;
      v5 = *(v2 - 16);
      if (v5 != -1)
      {
        result = (*(&off_286292FA8 + v5))(&v6);
        v4 = *(v3 + 16);
      }

      *(v2 - 16) = -1;
      v2 = v4;
    }

    while (v4 != v1);
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<double>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event> *>>(uint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 4)))
    {
      v9 = (0x5555555555555556 * ((a4 - result) >> 4)) | 1;
      v10 = (result + 48 * v9);
      v11 = 0x5555555555555556 * ((a4 - result) >> 4) + 2;
      if (v11 < a3)
      {
        geom::straight_skeleton_evaluator<double>::event_time(result + 48 * v9);
        v13 = v12;
        geom::straight_skeleton_evaluator<double>::event_time((v10 + 3));
        if (v13 > v14)
        {
          v10 += 3;
          v9 = v11;
        }
      }

      geom::straight_skeleton_evaluator<double>::event_time(v10);
      v16 = v15;
      result = geom::straight_skeleton_evaluator<double>::event_time(v5);
      if (v16 <= v17)
      {
        v18 = *v5;
        v19 = v5[2];
        v34 = v5[1];
        v35 = v19;
        v33 = v18;
        do
        {
          v20 = v5;
          v5 = v10;
          v21 = *v10;
          v22 = v10[2];
          v20[1] = v10[1];
          v20[2] = v22;
          *v20 = v21;
          if (v7 < v9)
          {
            break;
          }

          v23 = (2 * v9) | 1;
          v10 = (v6 + 48 * v23);
          v9 = 2 * v9 + 2;
          if (v9 >= a3)
          {
            v9 = v23;
          }

          else
          {
            geom::straight_skeleton_evaluator<double>::event_time(v6 + 48 * v23);
            v25 = v24;
            geom::straight_skeleton_evaluator<double>::event_time((v10 + 3));
            if (v25 <= v26)
            {
              v9 = v23;
            }

            else
            {
              v10 += 3;
            }
          }

          geom::straight_skeleton_evaluator<double>::event_time(v10);
          v28 = v27;
          result = geom::straight_skeleton_evaluator<double>::event_time(&v33);
        }

        while (v28 <= v29);
        v30 = v33;
        v31 = v35;
        v5[1] = v34;
        v5[2] = v31;
        *v5 = v30;
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<double>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event> *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a4 >= 2)
  {
    v4 = result;
    v5 = (a4 - 2) >> 1;
    v6 = (result + 48 * v5);
    v7 = (a2 - 48);
    geom::straight_skeleton_evaluator<double>::event_time(v6);
    v9 = v8;
    result = geom::straight_skeleton_evaluator<double>::event_time(v7);
    if (v9 > v10)
    {
      v11 = *v7;
      v12 = v7[2];
      v23 = v7[1];
      v24 = v12;
      v22 = v11;
      do
      {
        v13 = v6;
        v14 = *v6;
        v15 = v6[2];
        v7[1] = v6[1];
        v7[2] = v15;
        *v7 = v14;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (v4 + 48 * v5);
        geom::straight_skeleton_evaluator<double>::event_time(v6);
        v17 = v16;
        result = geom::straight_skeleton_evaluator<double>::event_time(&v22);
        v7 = v13;
      }

      while (v17 > v18);
      v19 = v22;
      v20 = v24;
      v13[1] = v23;
      v13[2] = v20;
      *v13 = v19;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t geom::intersect_wavefront_edge_spoke<double>(float64x2_t *a1, float64x2_t *a2, float64x2_t *a3, double a4, double a5, float64x2_t a6)
{
  v7 = a1[3].f64[0];
  v8 = a2[3].f64[0];
  if (v7 >= v8)
  {
    v9 = a1[3].f64[0];
  }

  else
  {
    v9 = a2[3].f64[0];
  }

  v10 = a1[1];
  v11 = a2[1];
  v12 = a1[2].f64[0];
  v6.f64[0] = fabs(v12);
  a6.f64[0] = 1.0e-10;
  v13 = vdupq_lane_s64(vmvnq_s8(vcgeq_f64(a6, v6)).i64[0], 0);
  v14 = vbslq_s8(v13, vmlaq_n_f64(*a1, v10, (v9 - v7) * v12), *a1);
  v15 = a2[2].f64[0];
  v13.f64[0] = fabs(v15);
  v16 = vdupq_lane_s64(vmvnq_s8(vcgeq_f64(a6, v13)).i64[0], 0);
  v17 = vbslq_s8(v16, vmlaq_n_f64(*a2, v11, (v9 - v8) * v15), *a2);
  v18 = vsubq_f64(vextq_s8(v14, v17, 8uLL), vextq_s8(v17, v14, 8uLL));
  v19 = vmulq_n_f64(v18, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v18, v18))));
  v20 = vaddvq_f64(vmulq_f64(v14, v19));
  v21 = vmulq_f64(vaddq_f64(v10, v11), v19);
  v22 = vaddq_f64(v21, vdupq_laneq_s64(v21, 1));
  v23 = vaddvq_f64(v21);
  v21.f64[0] = 0.0;
  v24 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(v21, v22).i64[0], 0), vnegq_f64(v19), v19);
  if (v23 >= 0.0)
  {
    v25 = -v20;
  }

  else
  {
    v25 = v20;
  }

  v26 = a3[2].f64[0];
  v27 = fabs(v26);
  v28 = *a3;
  v29 = a3[1];
  if (v27 <= 1.0e-10)
  {
    v30 = *a3;
  }

  else
  {
    v30 = vmlaq_n_f64(*a3, v29, v26 * (v9 - a3[3].f64[0]));
  }

  v31 = 0;
  v32 = v26 * vaddvq_f64(vmulq_f64(v24, v29));
  if (v32 == 1.0)
  {
    v34 = 0;
  }

  else
  {
    v33 = v32 + -1.0;
    v34 = 0;
    if (fabs(v33) > 1.0e-10)
    {
      v35 = -(v25 + vaddvq_f64(vmulq_f64(v24, v30))) / v33;
      if (v35 != 0.0 && v35 <= -1.0e-10)
      {
        goto LABEL_22;
      }

      v36 = v9 + fmax(v35, 0.0);
      if (v27 > 1.0e-10)
      {
        v28 = vmlaq_n_f64(v28, v29, v26 * (v36 - a3[3].f64[0]));
      }

      *v16.i64 = -v10.f64[1];
      v37 = vzip1q_s64(v16, v10);
      v38 = vmulq_n_f64(v37, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v37, v37))));
      v39 = vpaddq_f64(vmulq_f64(v38, v28), vmulq_f64(*a1, v38));
      v40 = vsubq_f64(v39, vdupq_laneq_s64(v39, 1)).f64[0];
      if (v40 != 0.0 && v40 > 1.0e-10)
      {
        goto LABEL_22;
      }

      if (((a6.f64[0] = -v11.f64[1], v41 = vzip1q_s64(a6, v11), v42 = vmulq_n_f64(v41, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v41, v41)))), v43 = vpaddq_f64(vmulq_f64(v42, v28), vmulq_f64(*a2, v42)), v44 = vsubq_f64(v43, vdupq_laneq_s64(v43, 1)).f64[0], v44 == 0.0) || v44 >= -1.0e-10) && ((v45 = v25 + vaddvq_f64(vmulq_f64(v24, v28)), v45 == 0.0) || v45 >= -1.0e-10))
      {
        v34 = *&v36 & 0xFFFFFFFFFFFFFF00;
        v31 = LOBYTE(v36);
      }

      else
      {
LABEL_22:
        v31 = 0;
        v34 = 0;
      }
    }
  }

  return v34 | v31;
}

_DWORD **geom::straight_skeleton_evaluator<double>::check_geometric_invariants(void)const::{lambda(unsigned int,unsigned int)#1}::operator()(_DWORD **result, uint64_t a2, uint64_t a3)
{
  v3 = *(*result + 15);
  v4 = v3 + 144 * a2;
  if (*(v4 + 128) || ((v7 = result, v8 = *(*(*result + 13) - 8), v9 = *(v4 + 32), fabs(v9) <= 1.0e-10) ? (v10 = *v4) : (v10 = vmlaq_n_f64(*v4, *(v4 + 16), v9 * (v8 - *(v4 + 48)))), v11 = v3 + 144 * a3, *(v11 + 128)))
  {
    v29 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom::straight_skeleton_evaluator<double>::best_split_event_for_vertex::{lambda(unsigned int,unsigned int)#1}::operator()(v29, v30, v31, v32, v33, v34);
  }

  else
  {
    v12 = *(v11 + 32);
    if (fabs(v12) <= 1.0e-10)
    {
      v13 = *v11;
    }

    else
    {
      v13 = vmlaq_n_f64(*v11, *(v11 + 16), v12 * (v8 - *(v11 + 48)));
    }

    v14 = vsubq_f64(v10, v13);
    if (sqrt(vaddvq_f64(vmulq_f64(v14, v14))) <= 1.0e-10)
    {
      v35 = v10;
      v36 = v13;
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v39);
      v15 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v40, "edge ", 5);
      v16 = MEMORY[0x25305E2F0](v15, a2);
      v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, " -> ", 4);
      v18 = MEMORY[0x25305E2F0](v17, a3);
      v19 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, " is zero length.  p0 = (", 24);
      v20 = MEMORY[0x25305E2C0](v19, v35);
      v21 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, ", ", 2);
      v22 = MEMORY[0x25305E2C0](v21, v35.n128_f64[1]);
      v23 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, ") p1 = (", 8);
      v24 = MEMORY[0x25305E2C0](v23, v36);
      v25 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, ", ", 2);
      v26 = MEMORY[0x25305E2C0](v25, v36.n128_f64[1]);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v26, ")", 1);
      v27 = v7[1];
      std::stringbuf::str();
      std::vector<std::string>::push_back[abi:nn200100](v27, &__p);
      if (v38 < 0)
      {
        operator delete(__p);
      }

      v39[0] = *MEMORY[0x277D82818];
      v28 = *(MEMORY[0x277D82818] + 72);
      *(v39 + *(v39[0] - 24)) = *(MEMORY[0x277D82818] + 64);
      v40 = v28;
      v41 = MEMORY[0x277D82878] + 16;
      if (v43 < 0)
      {
        operator delete(v42[7].__locale_);
      }

      v41 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v42);
      std::iostream::~basic_iostream();
      return MEMORY[0x25305E3C0](&v44);
    }
  }

  return result;
}

_DWORD **geom::straight_skeleton_evaluator<double>::best_split_event_for_vertex(unsigned int)::{lambda(unsigned int,unsigned int)#1}::operator()(_DWORD **result, unsigned int a2, unsigned int a3, double a4, double a5, float64x2_t a6)
{
  v6 = *result[1];
  if (v6 != a2 && v6 != a3)
  {
    v9 = result;
    v10 = *result;
    v11 = *(*result + 15);
    v12 = v11 + 144 * a2;
    if (*(v12 + 128))
    {
      goto LABEL_19;
    }

    v13 = v11 + 144 * a3;
    if (*(v13 + 128))
    {
      goto LABEL_19;
    }

    v14 = v11 + 144 * v6;
    if (*(v14 + 128))
    {
      goto LABEL_19;
    }

    *&result = COERCE_DOUBLE(geom::intersect_wavefront_edge_spoke<double>(v12, v13, v14, a4, a5, a6));
    if ((v15 & 1) == 0)
    {
      return result;
    }

    v16 = v9[2];
    v17 = LOBYTE(v16[2].f64[0]);
    if (v17 == 1 && v16->f64[0] <= *&result)
    {
      return result;
    }

    v18 = v10[15];
    v19 = v18 + 144 * a2;
    if (*(v19 + 128) || (v20 = *v9[1], v21 = v18 + 144 * v20, *(v21 + 128)))
    {
LABEL_19:
      v25 = std::__throw_bad_variant_access[abi:nn200100]();
      *&result = COERCE_DOUBLE(std::deque<geom::straight_skeleton_evaluator<double>::edge_event,std::allocator<geom::straight_skeleton_evaluator<double>::edge_event>>::push_back(v25));
      return result;
    }

    v22 = *(v19 + 72);
    v23 = *(v21 + 32);
    if (fabs(v23) <= 1.0e-10)
    {
      v24 = *v21;
    }

    else
    {
      v24 = vmlaq_n_f64(*v21, *(v21 + 16), v23 * (*&result - *(v21 + 48)));
    }

    v16->f64[0] = *&result;
    LODWORD(v16->f64[1]) = v22;
    HIDWORD(v16->f64[1]) = v20;
    v16[1] = v24;
    if ((v17 & 1) == 0)
    {
      LOBYTE(v16[2].f64[0]) = 1;
    }
  }

  return result;
}

__n128 std::deque<geom::straight_skeleton_evaluator<double>::edge_event,std::allocator<geom::straight_skeleton_evaluator<double>::edge_event>>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 16 * (v5 - v6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<geom::straight_skeleton_evaluator<double>::edge_event,std::allocator<geom::straight_skeleton_evaluator<double>::edge_event>>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = (*(v6 + ((v8 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v8 & 0x7F));
  result = *a2;
  v11 = *(a2 + 16);
  *v9 = *a2;
  v9[1] = v11;
  ++*(a1 + 40);
  return result;
}

void *std::deque<geom::straight_skeleton_evaluator<double>::edge_event,std::allocator<geom::straight_skeleton_evaluator<double>::edge_event>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:nn200100]<std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *>>::emplace_back<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state *&>(a1, &v10);
}

_OWORD *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geom::straight_skeleton_evaluator<double>::event_time_comparator &,std::__wrap_iter<std::variant<geom::straight_skeleton_evaluator<double>::edge_event,geom::straight_skeleton_evaluator<double>::split_event> *>>(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[3 * v5 + 3];
    v8 = (2 * v5) | 1;
    v9 = 2 * v5 + 2;
    if (v9 < a3)
    {
      geom::straight_skeleton_evaluator<double>::event_time(&a1[3 * v5 + 3]);
      v11 = v10;
      geom::straight_skeleton_evaluator<double>::event_time((v7 + 3));
      if (v11 > v12)
      {
        v7 += 3;
        v8 = v9;
      }
    }

    v13 = *v7;
    v14 = v7[2];
    a1[1] = v7[1];
    a1[2] = v14;
    *a1 = v13;
    a1 = v7;
    v5 = v8;
  }

  while (v8 <= v6);
  return v7;
}

void geom::straight_skeleton_evaluator<double>::add_joiner_patch_to_time(double)::{lambda(unsigned int)#1}::operator()(void **a1, unsigned int a2)
{
  v12 = a2;
  v2 = *a1;
  v3 = (*a1)[15] + 144 * a2;
  if (*(v3 + 128))
  {
    v9 = std::__throw_bad_variant_access[abi:nn200100]();
    geom::straight_skeleton_evaluator<double>::add_joiner_patch_to_time(double)::{lambda(unsigned int,unsigned int)#1}::operator()(v9);
  }

  else if (*(v3 + 68) != a2)
  {
    v5 = geom::straight_skeleton_evaluator<double>::time_of_joiner_vertex(*a1, **(v3 + 96));
    v6 = *a1[1];
    if (v5 == v6 || vabdd_f64(v5, v6) <= 1.0e-10)
    {
      v11 = **(v3 + 96);
    }

    else
    {
      v11 = (v2[1] - *v2) >> 4;
      v7 = *(v3 + 32);
      if (fabs(v7) <= 1.0e-10)
      {
        v8 = *v3;
      }

      else
      {
        v8 = vmlaq_n_f64(*v3, *(v3 + 16), v7 * (v6 - *(v3 + 48)));
      }

      v10[0] = v8;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(v2, v10);
    }

    geom::hash_brown<unsigned int,unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>>::insert(a1[2], &v12, &v11, v10);
  }
}

void geom::straight_skeleton_evaluator<double>::add_joiner_patch_to_time(double)::{lambda(unsigned int,unsigned int)#1}::operator()(void *a1, unsigned int a2, unsigned int a3)
{
  v19 = a3;
  v20 = a2;
  v3 = *a1;
  v4 = *(*a1 + 120);
  v5 = v4 + 144 * a2;
  if (*(v5 + 128) || (v6 = v4 + 144 * a3, *(v6 + 128)))
  {
    v13 = std::__throw_bad_variant_access[abi:nn200100]();
    geom::collection_to_vector<float>(v13);
  }

  else
  {
    v8 = a1[1];
    v18 = *(v8[1] + 8 * geom::hash_brown<unsigned int,unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>>::find_internal(v8, &v20) + 4);
    v17 = *(*(v5 + 104) - 4);
    v9 = a1[1];
    v10 = *(v9[1] + 8 * geom::hash_brown<unsigned int,unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>>::find_internal(v9, &v19) + 4);
    v16 = v10;
    v11 = **(v6 + 96);
    v15 = v11;
    if (v18 != v17 || v10 != v11)
    {
      std::vector<unsigned int>::push_back[abi:nn200100]((v3 + 24), &v18);
      if (v17 != v18)
      {
        std::vector<unsigned int>::push_back[abi:nn200100]((v3 + 24), &v17);
      }

      std::vector<unsigned int>::push_back[abi:nn200100]((v3 + 24), &v15);
      if (v15 != v10)
      {
        std::vector<unsigned int>::push_back[abi:nn200100]((v3 + 24), &v16);
      }

      v14 = (*(v3 + 32) - *(v3 + 24)) >> 2;
      std::vector<unsigned int>::push_back[abi:nn200100]((v3 + 48), &v14);
    }
  }
}

void geom::collection_resize<signed char>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) - v2;
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    std::vector<unsigned char>::__append((a1 + 16), v5);
  }

  else if (!v4)
  {
    *(a1 + 24) = v2 + a2;
  }
}

void *geom::custom_allocator<float>::custom_allocator(void *result)
{
  *result = MEMORY[0x277D86140];
  result[1] = MEMORY[0x277D86138];
  return result;
}

void *geom::custom_allocator<float>::custom_allocator(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t geom::custom_allocator<float>::allocate(uint64_t (**a1)(uint64_t), unint64_t a2)
{
  if (a2 >> 62)
  {
    return 0;
  }

  else
  {
    return (*a1)(4 * a2);
  }
}

uint64_t geom::custom_allocator<double>::allocate(uint64_t (**a1)(uint64_t), unint64_t a2)
{
  if (a2 >> 61)
  {
    return 0;
  }

  else
  {
    return (*a1)(8 * a2);
  }
}

uint64_t geom::custom_allocator<unsigned short>::allocate(uint64_t (**a1)(uint64_t), uint64_t a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  else
  {
    return (*a1)(2 * a2);
  }
}

uint64_t _ZN4geom16custom_allocatorIDv3_fE8allocateEm(uint64_t (**a1)(uint64_t), unint64_t a2)
{
  if (a2 >> 60)
  {
    return 0;
  }

  else
  {
    return (*a1)(16 * a2);
  }
}

uint64_t _ZN4geom16custom_allocatorIDv3_dE8allocateEm(uint64_t (**a1)(uint64_t), unint64_t a2)
{
  if (a2 >> 59)
  {
    return 0;
  }

  else
  {
    return (*a1)(32 * a2);
  }
}

void geom::refine_triangle_mesh<float>(uint64_t a1, _OWORD *a2, uint64_t a3, unsigned int *a4, void *a5, uint64_t a6, uint64_t *a7)
{
  v8 = a4;
  v9 = a3;
  a5[1] = *a5;
  *(a6 + 8) = *a6;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v96[0] = 0;
  v96[1] = 0;
  v94 = 0;
  v95 = v96;
  v12 = a7[9];
  v13 = a7[10] - v12;
  if (v13)
  {
    v14 = v13 >> 2;
    if (v14 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    do
    {
      v16 = *v12++;
      v17 = &v8[3 * v16];
      --v15;
    }

    while (v15);
  }

  else if (a3)
  {
    v18 = a4 + 2;
    v19 = a3;
    do
    {
      v18 += 3;
      --v19;
    }

    while (v19);
  }

  a5[1] = *a5;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(a5, a1 + ((v93 - v92) >> 3));
  v76 = a1;
  if (a1)
  {
    v20 = a5[1];
    v21 = a2;
    do
    {
      v22 = a5[2];
      if (v20 >= v22)
      {
        v23 = (v20 - *a5) >> 4;
        if ((v23 + 1) >> 60)
        {
LABEL_75:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v24 = v22 - *a5;
        v25 = v24 >> 3;
        if (v24 >> 3 <= (v23 + 1))
        {
          v25 = v23 + 1;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFF0)
        {
          v26 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v25;
        }

        if (v26)
        {
          _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a5, v26);
        }

        *(16 * v23) = *v21;
        v20 = (16 * v23 + 16);
        v27 = a5[1] - *a5;
        v28 = (16 * v23 - v27);
        memcpy(v28, *a5, v27);
        v29 = *a5;
        *a5 = v28;
        a5[1] = v20;
        a5[2] = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      else
      {
        *v20++ = *v21;
      }

      a5[1] = v20;
      ++v21;
      --a1;
    }

    while (a1);
  }

  v30 = v92;
  if (((v93 - v92) & 0x7FFFFFFF8) != 0)
  {
    v31 = 0;
    v32 = a5[1];
    v33 = 1;
    v34.i64[0] = 0x3F0000003F000000;
    v34.i64[1] = 0x3F0000003F000000;
    do
    {
      v35 = vmulq_f32(vaddq_f32(a2[*(v30 + 4 * (v33 - 1))], a2[*(v30 + 4 * v33)]), v34);
      v36 = a5[2];
      if (v32 >= v36)
      {
        v37 = (v32 - *a5) >> 4;
        if ((v37 + 1) >> 60)
        {
          goto LABEL_75;
        }

        v38 = v36 - *a5;
        v39 = v38 >> 3;
        if (v38 >> 3 <= (v37 + 1))
        {
          v39 = v37 + 1;
        }

        if (v38 >= 0x7FFFFFFFFFFFFFF0)
        {
          v40 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v39;
        }

        if (v40)
        {
          _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a5, v40);
        }

        *(16 * v37) = v35;
        v32 = (16 * v37 + 16);
        v41 = a5[1] - *a5;
        v42 = (16 * v37 - v41);
        memcpy(v42, *a5, v41);
        v43 = *a5;
        *a5 = v42;
        a5[1] = v32;
        a5[2] = 0;
        if (v43)
        {
          operator delete(v43);
        }

        v34.i64[0] = 0x3F0000003F000000;
        v34.i64[1] = 0x3F0000003F000000;
      }

      else
      {
        *v32++ = v35;
      }

      a5[1] = v32;
      ++v31;
      v30 = v92;
      v33 += 2;
    }

    while (v31 < ((v93 - v92) >> 3));
  }

  v44 = a7[1];
  v45 = v44 - *a7;
  if ((v45 >> 3))
  {
    v73 = v45 >> 3;
    v74 = v9;
    v47 = a7[3];
    v46 = a7[4];
    if (v44 == *a7)
    {
      v48 = 0;
    }

    else
    {
      v48 = *a7;
    }

    v79 = a7[4];
    v70 = v46 - v47;
    v49 = (v45 >> 3);
    v72 = a7[3];
    if (v46 == v47)
    {
      v50 = 0;
    }

    else
    {
      v50 = a7[3];
    }

    if (a7[7] == a7[6])
    {
      v51 = 0;
    }

    else
    {
      v51 = a7[6];
    }

    v88 = 0;
    v89 = 0;
    v90 = 0;
    v52 = a7[13];
    if (v52)
    {
      v53 = geom::collection_to_vector<float>(v52);
      v54 = *v53;
    }

    else
    {
      v54 = 0;
      v53 = &v88;
    }

    v71 = v53;
    v53[1] = v54;
    v55 = geom::collection_to_vector<float>(a7[12]);
    v55[1] = *v55;
    if (v49)
    {
      v56 = 8 * v49;
      v57 = v48;
      do
      {
        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(v55, v57++);
        v56 -= 8;
      }

      while (v56);
    }

    v78 = geom::collection_to_vector<float>(a7[14]);
    *(v78 + 8) = *v78;
    std::vector<BOOL>::vector(&__p, v74);
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v86[0] = 0;
    v86[1] = 0;
    v84 = 0;
    v85 = v86;
    v58 = a6;
    v59 = v71;
    if (v79 != v72)
    {
      if ((v70 >> 2) <= 1)
      {
        v60 = 1;
      }

      else
      {
        v60 = v70 >> 2;
      }

      do
      {
        v61 = *v50;
        v80 = v50 + 1;
        *(__p + ((v61 >> 3) & 0x1FFFFFF8)) |= 1 << v61;
        v62 = &v8[3 * v61];
        v69 = v55;
        v63 = v8;
        v64 = v55;
        v65 = v59;
        v66 = v58;
        geom::refine_triangle_with_uvs(v62, v76, &v91, v48, v49, v51, v73, &v81, v58, v59, v69, v78);
        v58 = v66;
        v59 = v65;
        v55 = v64;
        v8 = v63;
        v50 = v80;
        v51 += 3;
        --v60;
      }

      while (v60);
    }

    if (v74)
    {
      v67 = v58;
      for (i = 0; i != v74; ++i)
      {
        if (((*(__p + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i) & 1) == 0)
        {
        }

        v8 += 3;
      }
    }

    if (__p)
    {
      operator delete(__p);
    }

    if (v88)
    {
      v89 = v88;
      operator delete(v88);
    }
  }

  else
  {
    for (; v9; --v9)
    {
      v8 += 3;
    }
  }
}

uint64_t geom::refine_triangle_mesh_options<float>::refinement_face_subset_data(uint64_t a1)
{
  if (*(a1 + 80) == *(a1 + 72))
  {
    return 0;
  }

  else
  {
    return *(a1 + 72);
  }
}

uint64_t geom::refine_triangle_mesh_options<float>::uv_values_data(void *a1)
{
  if (a1[1] == *a1)
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t geom::refine_triangle_mesh_options<float>::triangles_with_uvs_data(uint64_t a1)
{
  if (*(a1 + 32) == *(a1 + 24))
  {
    return 0;
  }

  else
  {
    return *(a1 + 24);
  }
}

uint64_t geom::refine_triangle_mesh_options<float>::triangle_uv_indices_data(uint64_t a1)
{
  if (*(a1 + 56) == *(a1 + 48))
  {
    return 0;
  }

  else
  {
    return *(a1 + 48);
  }
}

void geom::refine_triangle_with_uvs(unsigned int *a1, int a2, geom::_anonymous_namespace_::edge_vertex_map *this, uint64_t a4, uint64_t a5, unsigned int *a6, int a7, uint64_t a8, uint64_t a9, const void **a10, uint64_t a11, const void **a12)
{
  v35[0] = a4;
  v35[1] = a5;
  v34 = a7;
  v33[0] = a8;
  v33[1] = a11;
  v33[2] = v35;
  v33[3] = &v34;
  v31 = -1;
  v32 = -1;
  v29 = -1;
  v30 = -1;
  v27 = -1;
  v28 = -1;
  v17 = a1 + 1;
  v16 = a1[1];
  {
    v32 += a2;
    v29 = _ZZN4geom24refine_triangle_with_uvsEPKjjRKNS_12_GLOBAL__N_115edge_vertex_mapENS_5sliceIDv2_fEES1_jRS3_RNSt3__16vectorIjNSA_9allocatorIjEEEESF_RNSB_IS7_NSC_IS7_EEEESF_ENK3__0clEjj(v33, *a6, a6[1]);
    v16 = *v17;
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = a1[2];
  v24 = a1 + 2;
  {
    v31 += a2;
    v18 |= 2u;
    v28 = _ZZN4geom24refine_triangle_with_uvsEPKjjRKNS_12_GLOBAL__N_115edge_vertex_mapENS_5sliceIDv2_fEES1_jRS3_RNSt3__16vectorIjNSA_9allocatorIjEEEESF_RNSB_IS7_NSC_IS7_EEEESF_ENK3__0clEjj(v33, a6[1], a6[2]);
    v19 = a1[2];
  }

  {
    v30 += a2;
    v18 |= 4u;
    v27 = _ZZN4geom24refine_triangle_with_uvsEPKjjRKNS_12_GLOBAL__N_115edge_vertex_mapENS_5sliceIDv2_fEES1_jRS3_RNSt3__16vectorIjNSA_9allocatorIjEEEESF_RNSB_IS7_NSC_IS7_EEEESF_ENK3__0clEjj(v33, a6[2], *a6);
  }

  v26 = ((*(a9 + 8) - *a9) >> 2) / 3uLL;
  std::vector<unsigned int>::push_back[abi:nn200100](a9, a1);
  if (v18 > 2)
  {
    if (v18 <= 4)
    {
      if (v18 != 3)
      {
        std::vector<unsigned int>::push_back[abi:nn200100](a9, v17);
        std::vector<unsigned int>::push_back[abi:nn200100](a9, &v30);
        std::vector<unsigned int>::push_back[abi:nn200100](a10, &v26);
        std::vector<unsigned int>::push_back[abi:nn200100](a12, a6);
        std::vector<unsigned int>::push_back[abi:nn200100](a12, a6 + 1);
        v20 = &v27;
        std::vector<unsigned int>::push_back[abi:nn200100](a12, &v27);
        std::vector<unsigned int>::push_back[abi:nn200100](a9, v17);
        std::vector<unsigned int>::push_back[abi:nn200100](a9, v24);
        v21 = &v30;
LABEL_24:
        std::vector<unsigned int>::push_back[abi:nn200100](a9, v21);
        v23 = v26 + 1;
        goto LABEL_25;
      }

      std::vector<unsigned int>::push_back[abi:nn200100](a9, &v32);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, v24);
      std::vector<unsigned int>::push_back[abi:nn200100](a10, &v26);
      std::vector<unsigned int>::push_back[abi:nn200100](a12, a6);
      std::vector<unsigned int>::push_back[abi:nn200100](a12, &v29);
      std::vector<unsigned int>::push_back[abi:nn200100](a12, a6 + 2);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, v17);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, &v31);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, &v32);
      v25 = v26 + 1;
      std::vector<unsigned int>::push_back[abi:nn200100](a10, &v25);
      std::vector<unsigned int>::push_back[abi:nn200100](a12, a6 + 1);
      v20 = &v28;
      std::vector<unsigned int>::push_back[abi:nn200100](a12, &v28);
      std::vector<unsigned int>::push_back[abi:nn200100](a12, &v29);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, v24);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, &v32);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, &v31);
      v25 = v26 + 2;
      std::vector<unsigned int>::push_back[abi:nn200100](a10, &v25);
      std::vector<unsigned int>::push_back[abi:nn200100](a12, a6 + 2);
      v22 = &v29;
LABEL_26:
      std::vector<unsigned int>::push_back[abi:nn200100](a12, v22);
      goto LABEL_27;
    }

    if (v18 == 5)
    {
      std::vector<unsigned int>::push_back[abi:nn200100](a9, &v32);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, &v30);
      std::vector<unsigned int>::push_back[abi:nn200100](a10, &v26);
      std::vector<unsigned int>::push_back[abi:nn200100](a12, a6);
      std::vector<unsigned int>::push_back[abi:nn200100](a12, &v29);
      v20 = &v27;
      std::vector<unsigned int>::push_back[abi:nn200100](a12, &v27);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, v17);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, &v30);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, &v32);
      v25 = v26 + 1;
      std::vector<unsigned int>::push_back[abi:nn200100](a10, &v25);
      std::vector<unsigned int>::push_back[abi:nn200100](a12, a6 + 1);
      std::vector<unsigned int>::push_back[abi:nn200100](a12, &v27);
      std::vector<unsigned int>::push_back[abi:nn200100](a12, &v29);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, v17);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, v24);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, &v30);
      v23 = v26 + 2;
LABEL_25:
      v25 = v23;
      std::vector<unsigned int>::push_back[abi:nn200100](a10, &v25);
      std::vector<unsigned int>::push_back[abi:nn200100](a12, a6 + 1);
      v22 = (a6 + 2);
      goto LABEL_26;
    }

    if (v18 == 6)
    {
      std::vector<unsigned int>::push_back[abi:nn200100](a9, v17);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, &v31);
      std::vector<unsigned int>::push_back[abi:nn200100](a10, &v26);
      std::vector<unsigned int>::push_back[abi:nn200100](a12, a6);
      std::vector<unsigned int>::push_back[abi:nn200100](a12, a6 + 1);
      v20 = &v28;
      std::vector<unsigned int>::push_back[abi:nn200100](a12, &v28);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, a1);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, &v31);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, &v30);
      v25 = v26 + 1;
      std::vector<unsigned int>::push_back[abi:nn200100](a10, &v25);
      std::vector<unsigned int>::push_back[abi:nn200100](a12, a6);
      std::vector<unsigned int>::push_back[abi:nn200100](a12, &v28);
      std::vector<unsigned int>::push_back[abi:nn200100](a12, &v27);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, v24);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, &v30);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, &v31);
      v25 = v26 + 2;
      std::vector<unsigned int>::push_back[abi:nn200100](a10, &v25);
      std::vector<unsigned int>::push_back[abi:nn200100](a12, a6 + 2);
      v22 = &v27;
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  if (v18)
  {
    if (v18 == 1)
    {
      std::vector<unsigned int>::push_back[abi:nn200100](a9, &v32);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, v24);
      std::vector<unsigned int>::push_back[abi:nn200100](a10, &v26);
      std::vector<unsigned int>::push_back[abi:nn200100](a12, a6);
      v20 = &v29;
      std::vector<unsigned int>::push_back[abi:nn200100](a12, &v29);
      std::vector<unsigned int>::push_back[abi:nn200100](a12, a6 + 2);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, v17);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, v24);
      v21 = &v32;
      goto LABEL_24;
    }

    if (v18 == 2)
    {
      std::vector<unsigned int>::push_back[abi:nn200100](a9, &v31);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, v24);
      std::vector<unsigned int>::push_back[abi:nn200100](a10, &v26);
      std::vector<unsigned int>::push_back[abi:nn200100](a12, a6);
      v20 = &v28;
      std::vector<unsigned int>::push_back[abi:nn200100](a12, &v28);
      std::vector<unsigned int>::push_back[abi:nn200100](a12, a6 + 2);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, a1);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, v17);
      std::vector<unsigned int>::push_back[abi:nn200100](a9, &v31);
      v25 = v26 + 1;
      std::vector<unsigned int>::push_back[abi:nn200100](a10, &v25);
      std::vector<unsigned int>::push_back[abi:nn200100](a12, a6);
      v22 = (a6 + 1);
      goto LABEL_26;
    }

LABEL_20:
    std::vector<unsigned int>::push_back[abi:nn200100](a9, &v32);
    std::vector<unsigned int>::push_back[abi:nn200100](a9, &v30);
    std::vector<unsigned int>::push_back[abi:nn200100](a10, &v26);
    std::vector<unsigned int>::push_back[abi:nn200100](a12, a6);
    std::vector<unsigned int>::push_back[abi:nn200100](a12, &v29);
    v20 = &v27;
    std::vector<unsigned int>::push_back[abi:nn200100](a12, &v27);
    std::vector<unsigned int>::push_back[abi:nn200100](a9, v17);
    std::vector<unsigned int>::push_back[abi:nn200100](a9, &v31);
    std::vector<unsigned int>::push_back[abi:nn200100](a9, &v32);
    v25 = v26 + 1;
    std::vector<unsigned int>::push_back[abi:nn200100](a10, &v25);
    std::vector<unsigned int>::push_back[abi:nn200100](a12, a6 + 1);
    std::vector<unsigned int>::push_back[abi:nn200100](a12, &v28);
    std::vector<unsigned int>::push_back[abi:nn200100](a12, &v29);
    std::vector<unsigned int>::push_back[abi:nn200100](a9, v24);
    std::vector<unsigned int>::push_back[abi:nn200100](a9, &v30);
    std::vector<unsigned int>::push_back[abi:nn200100](a9, &v31);
    v25 = v26 + 2;
    std::vector<unsigned int>::push_back[abi:nn200100](a10, &v25);
    std::vector<unsigned int>::push_back[abi:nn200100](a12, a6 + 2);
    std::vector<unsigned int>::push_back[abi:nn200100](a12, &v27);
    std::vector<unsigned int>::push_back[abi:nn200100](a12, &v28);
    std::vector<unsigned int>::push_back[abi:nn200100](a9, &v32);
    std::vector<unsigned int>::push_back[abi:nn200100](a9, &v31);
    std::vector<unsigned int>::push_back[abi:nn200100](a9, &v30);
    v25 = v26 + 3;
    std::vector<unsigned int>::push_back[abi:nn200100](a10, &v25);
    std::vector<unsigned int>::push_back[abi:nn200100](a12, &v29);
    v22 = &v28;
    goto LABEL_26;
  }

  std::vector<unsigned int>::push_back[abi:nn200100](a9, v17);
  std::vector<unsigned int>::push_back[abi:nn200100](a9, v24);
  std::vector<unsigned int>::push_back[abi:nn200100](a10, &v26);
  std::vector<unsigned int>::push_back[abi:nn200100](a12, a6);
  std::vector<unsigned int>::push_back[abi:nn200100](a12, a6 + 1);
  v20 = (a6 + 2);
LABEL_27:
  std::vector<unsigned int>::push_back[abi:nn200100](a12, v20);
}

void geom::anonymous namespace::refine_triangle(unsigned int *a1, int a2, geom::_anonymous_namespace_::edge_vertex_map *this, const void **a4)
{
  v20 = -1;
  v21 = -1;
  v19 = -1;
  v8 = *a1;
  v9 = a1 + 1;
  v10 = a1[1];
  {
    v21 += a2;
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = a1[2];
  {
    v20 += a2;
    v11 |= 2u;
  }

  {
    v19 += a2;
    v11 |= 4u;
  }

  std::vector<unsigned int>::push_back[abi:nn200100](a4, a1);
  if (v11 > 2)
  {
    if (v11 <= 4)
    {
      if (v11 != 3)
      {
        std::vector<unsigned int>::push_back[abi:nn200100](a4, v9);
        v13 = &v19;
LABEL_27:
        std::vector<unsigned int>::push_back[abi:nn200100](a4, v13);
        std::vector<unsigned int>::push_back[abi:nn200100](a4, v9);
        v18 = a4;
        v17 = a1 + 2;
        goto LABEL_28;
      }

      std::vector<unsigned int>::push_back[abi:nn200100](a4, &v21);
      std::vector<unsigned int>::push_back[abi:nn200100](a4, a1 + 2);
      std::vector<unsigned int>::push_back[abi:nn200100](a4, v9);
      std::vector<unsigned int>::push_back[abi:nn200100](a4, &v20);
      std::vector<unsigned int>::push_back[abi:nn200100](a4, &v21);
      std::vector<unsigned int>::push_back[abi:nn200100](a4, a1 + 2);
      v15 = &v21;
      goto LABEL_24;
    }

    if (v11 == 5)
    {
      std::vector<unsigned int>::push_back[abi:nn200100](a4, &v21);
      std::vector<unsigned int>::push_back[abi:nn200100](a4, &v19);
      std::vector<unsigned int>::push_back[abi:nn200100](a4, v9);
      std::vector<unsigned int>::push_back[abi:nn200100](a4, &v19);
      v13 = &v21;
      goto LABEL_27;
    }

    if (v11 == 6)
    {
      std::vector<unsigned int>::push_back[abi:nn200100](a4, v9);
      std::vector<unsigned int>::push_back[abi:nn200100](a4, &v20);
      std::vector<unsigned int>::push_back[abi:nn200100](a4, a1);
      std::vector<unsigned int>::push_back[abi:nn200100](a4, &v20);
      std::vector<unsigned int>::push_back[abi:nn200100](a4, &v19);
      std::vector<unsigned int>::push_back[abi:nn200100](a4, a1 + 2);
      v15 = &v19;
LABEL_24:
      v14 = a4;
      goto LABEL_25;
    }

LABEL_22:
    std::vector<unsigned int>::push_back[abi:nn200100](a4, &v21);
    std::vector<unsigned int>::push_back[abi:nn200100](a4, &v19);
    std::vector<unsigned int>::push_back[abi:nn200100](a4, v9);
    std::vector<unsigned int>::push_back[abi:nn200100](a4, &v20);
    std::vector<unsigned int>::push_back[abi:nn200100](a4, &v21);
    std::vector<unsigned int>::push_back[abi:nn200100](a4, a1 + 2);
    std::vector<unsigned int>::push_back[abi:nn200100](a4, &v19);
    std::vector<unsigned int>::push_back[abi:nn200100](a4, &v20);
    std::vector<unsigned int>::push_back[abi:nn200100](a4, &v21);
    v17 = &v20;
    v18 = a4;
LABEL_28:
    std::vector<unsigned int>::push_back[abi:nn200100](v18, v17);
    v16 = &v19;
    goto LABEL_30;
  }

  if (v11)
  {
    if (v11 == 1)
    {
      std::vector<unsigned int>::push_back[abi:nn200100](a4, &v21);
      std::vector<unsigned int>::push_back[abi:nn200100](a4, a1 + 2);
      std::vector<unsigned int>::push_back[abi:nn200100](a4, v9);
      std::vector<unsigned int>::push_back[abi:nn200100](a4, a1 + 2);
      v16 = &v21;
      goto LABEL_30;
    }

    if (v11 == 2)
    {
      std::vector<unsigned int>::push_back[abi:nn200100](a4, &v20);
      std::vector<unsigned int>::push_back[abi:nn200100](a4, a1 + 2);
      std::vector<unsigned int>::push_back[abi:nn200100](a4, a1);
      v14 = a4;
      v15 = v9;
LABEL_25:
      std::vector<unsigned int>::push_back[abi:nn200100](v14, v15);
      v16 = &v20;
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  std::vector<unsigned int>::push_back[abi:nn200100](a4, v9);
  v16 = a1 + 2;

LABEL_30:
  std::vector<unsigned int>::push_back[abi:nn200100](a4, v16);
}

void geom::anonymous namespace::edge_vertex_map::~edge_vertex_map(geom::_anonymous_namespace_::edge_vertex_map *this)
{
  _ZNSt3__16__treeINS_12__value_typeIjDv3_fEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE7destroyEPNS_11__tree_nodeIS3_PvEE(this + 32, *(this + 5));
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void geom::refine_triangle_mesh<double>(uint64_t a1, _OWORD *a2, uint64_t a3, unsigned int *a4, size_t *a5, uint64_t a6, uint64_t *a7)
{
  v8 = a4;
  v9 = a3;
  a5[1] = *a5;
  *(a6 + 8) = *a6;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v109[0] = 0;
  v109[1] = 0;
  v107 = 0;
  v108 = v109;
  v12 = a7[9];
  v13 = a7[10] - v12;
  if (v13)
  {
    v14 = v13 >> 2;
    if (v14 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    do
    {
      v16 = *v12++;
      v17 = &v8[3 * v16];
      --v15;
    }

    while (v15);
  }

  else if (a3)
  {
    v18 = a4 + 2;
    v19 = a3;
    do
    {
      v18 += 3;
      --v19;
    }

    while (v19);
  }

  a5[1] = *a5;
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE7reserveEm(a5, a1 + ((v106 - v105) >> 3));
  v87 = a1;
  if (a1)
  {
    v20 = a5[1];
    v21 = a2;
    do
    {
      v22 = a5[2];
      if (v20 >= v22)
      {
        v24 = (v20 - *a5) >> 5;
        if ((v24 + 1) >> 59)
        {
LABEL_75:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v25 = v22 - *a5;
        v26 = v25 >> 4;
        if (v25 >> 4 <= (v24 + 1))
        {
          v26 = v24 + 1;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFE0)
        {
          v27 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v26;
        }

        if (v27)
        {
          _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a5, v27);
        }

        v28 = (32 * v24);
        v29 = v21[1];
        *v28 = *v21;
        v28[1] = v29;
        v20 = (32 * v24 + 32);
        v30 = a5[1] - *a5;
        v31 = 32 * v24 - v30;
        memcpy(v28 - v30, *a5, v30);
        v32 = *a5;
        *a5 = v31;
        a5[1] = v20;
        a5[2] = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        v23 = v21[1];
        *v20 = *v21;
        v20[1] = v23;
        v20 += 2;
      }

      a5[1] = v20;
      v21 += 2;
      --a1;
    }

    while (a1);
  }

  v33 = v105;
  if (((v106 - v105) & 0x7FFFFFFF8) != 0)
  {
    v34 = 0;
    v35 = a5[1];
    v36 = 1;
    __asm { FMOV            V4.2D, #0.5 }

    *v88 = _Q4;
    do
    {
      v42 = &a2[2 * *(v33 + 4 * (v36 - 1))];
      v43 = &a2[2 * *(v33 + 4 * v36)];
      v44 = vmulq_f64(vaddq_f64(v42[1], v43[1]), _Q4);
      v45 = vmulq_f64(vaddq_f64(*v42, *v43), _Q4);
      v46 = vextq_s8(v45, v45, 8uLL).u64[0];
      v47 = a5[2];
      if (v35 >= v47)
      {
        v48 = (v35->i64 - *a5) >> 5;
        if ((v48 + 1) >> 59)
        {
          goto LABEL_75;
        }

        v49 = v47 - *a5;
        v50 = v49 >> 4;
        if (v49 >> 4 <= (v48 + 1))
        {
          v50 = v48 + 1;
        }

        if (v49 >= 0x7FFFFFFFFFFFFFE0)
        {
          v51 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v51 = v50;
        }

        if (v51)
        {
          _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a5, v51);
        }

        v52 = (32 * v48);
        v45.i64[1] = v46;
        *v52 = v45;
        v52[1] = v44;
        v35 = (32 * v48 + 32);
        v53 = a5[1] - *a5;
        v54 = 32 * v48 - v53;
        memcpy(v52 - v53, *a5, v53);
        v55 = *a5;
        *a5 = v54;
        a5[1] = v35;
        a5[2] = 0;
        if (v55)
        {
          operator delete(v55);
        }

        _Q4 = *v88;
      }

      else
      {
        v45.i64[1] = v46;
        *v35 = v45;
        v35[1] = v44;
        v35 += 2;
      }

      a5[1] = v35;
      ++v34;
      v33 = v105;
      v36 += 2;
    }

    while (v34 < ((v106 - v105) >> 3));
  }

  v56 = a7[1];
  v57 = v56 - *a7;
  if ((v57 >> 3))
  {
    v90 = v9;
    v89 = v57 >> 3;
    v59 = a7[3];
    v58 = a7[4];
    if (v56 == *a7)
    {
      v60 = 0;
    }

    else
    {
      v60 = *a7;
    }

    v92 = a7[4];
    v82 = v58 - v59;
    v61 = (v57 >> 3);
    v84 = a7[3];
    if (v58 == v59)
    {
      v62 = 0;
    }

    else
    {
      v62 = a7[3];
    }

    if (a7[7] == a7[6])
    {
      v63 = 0;
    }

    else
    {
      v63 = a7[6];
    }

    v101 = 0;
    v102 = 0;
    v103 = 0;
    v64 = a7[13];
    if (v64)
    {
      v65 = geom::collection_to_vector<float>(v64);
      v66 = *v65;
    }

    else
    {
      v66 = 0;
      v65 = &v101;
    }

    v83 = v65;
    v65[1] = v66;
    v67 = geom::collection_to_vector<float>(a7[12]);
    v67[1] = *v67;
    if (v61)
    {
      v68 = 8 * v61;
      v69 = v60;
      do
      {
        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(v67, v69++);
        v68 -= 8;
      }

      while (v68);
    }

    v91 = geom::collection_to_vector<float>(a7[14]);
    *(v91 + 8) = *v91;
    std::vector<BOOL>::vector(&v100, v90);
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v99[0] = 0;
    v99[1] = 0;
    v97 = 0;
    v98 = v99;
    v70 = v83;
    v71 = a6;
    if (v92 != v84)
    {
      if ((v82 >> 2) <= 1)
      {
        v72 = 1;
      }

      else
      {
        v72 = v82 >> 2;
      }

      do
      {
        v73 = *v62;
        v93 = v62 + 1;
        *&v100[(v73 >> 3) & 0x1FFFFFF8] |= 1 << v73;
        v74 = &v8[3 * v73];
        v81 = v67;
        v75 = v8;
        v76 = v67;
        v77 = v70;
        v78 = v71;
        geom::refine_triangle_with_uvs(v74, v87, &v104, v60, v61, v63, v89, &v94, v71, v70, v81, v91);
        v71 = v78;
        v70 = v77;
        v67 = v76;
        v8 = v75;
        v62 = v93;
        v63 += 3;
        --v72;
      }

      while (v72);
    }

    if (v90)
    {
      v79 = v71;
      for (i = 0; i != v90; ++i)
      {
        if (((*&v100[(i >> 3) & 0x1FFFFFFFFFFFFFF8] >> i) & 1) == 0)
        {
        }

        v8 += 3;
      }
    }

    if (v100)
    {
      operator delete(v100);
    }

    if (v101)
    {
      v102 = v101;
      operator delete(v101);
    }
  }

  else
  {
    for (; v9; --v9)
    {
      v8 += 3;
    }
  }
}

void geom::refine_triangle_mesh_options<float>::set_refinement_face_subset(std::vector<unsigned int> *a1, const void *a2, std::vector<unsigned int>::size_type __sz)
{
  std::vector<float>::resize(a1 + 3, __sz);
  if (__sz)
  {
    begin = a1[3].__begin_;

    memmove(begin, a2, 4 * __sz);
  }
}

void *geom::refine_triangle_mesh_options<float>::clear_uvs(void *result)
{
  result[1] = *result;
  result[4] = result[3];
  result[7] = result[6];
  result[13] = 0;
  result[14] = 0;
  result[12] = 0;
  return result;
}

uint64_t geom::anonymous namespace::edge_vertex_map::find_or_add_edge(geom::_anonymous_namespace_::edge_vertex_map *this, uint64_t a2, unsigned int a3)
{
  v14 = a3;
  v15 = a2;
  v3 = *(this + 5);
  v4 = a3 | (a2 << 32);
  v5 = __ROR8__(v4, 32);
  if (a2 >= a3)
  {
    v4 = v5;
  }

  if (!v3)
  {
    goto LABEL_11;
  }

  v6 = this + 40;
  do
  {
    v7 = *(v3 + 4);
    v8 = v7 >= v4;
    v9 = v7 < v4;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *&v3[8 * v9];
  }

  while (v3);
  if (v6 != this + 40 && v4 >= *(v6 + 4))
  {
    return *(v6 + 10);
  }

LABEL_11:
  v10 = (this + 8);
  v11 = (*(this + 2) - *(this + 1)) >> 3;
  v13 = v4;
  v16 = &v13;
  *(std::__tree<std::__value_type<unsigned long long,unsigned int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(this + 32, &v13) + 10) = v11;
  std::vector<unsigned int>::push_back[abi:nn200100](v10, &v15);
  std::vector<unsigned int>::push_back[abi:nn200100](v10, &v14);
  return v11;
}

void *std::__tree<std::__value_type<unsigned long long,unsigned int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

uint64_t geom::anonymous namespace::edge_vertex_map::find_edge(geom::_anonymous_namespace_::edge_vertex_map *this, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  v4 = a3 | (a2 << 32);
  v5 = __ROR8__(v4, 32);
  if (a2 >= a3)
  {
    v4 = v5;
  }

  v8 = *(this + 5);
  v6 = this + 40;
  v7 = v8;
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v6;
  do
  {
    v10 = *(v7 + 4);
    v11 = v10 >= v4;
    v12 = v10 < v4;
    if (v11)
    {
      v9 = v7;
    }

    v7 = *&v7[8 * v12];
  }

  while (v7);
  if (v9 != v6 && v4 >= *(v9 + 4))
  {
    v14 = *(v9 + 10);
    result = 1;
  }

  else
  {
LABEL_11:
    result = 0;
    v14 = -1;
  }

  *a4 = v14;
  return result;
}

uint64_t _ZZN4geom24refine_triangle_with_uvsEPKjjRKNS_12_GLOBAL__N_115edge_vertex_mapENS_5sliceIDv2_fEES1_jRS3_RNSt3__16vectorIjNSA_9allocatorIjEEEESF_RNSB_IS7_NSC_IS7_EEEESF_ENK3__0clEjj(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v21 = 0;
  v6 = *a1;
  {
    v7 = v21;
  }

  else
  {
    v8 = *(a1 + 8);
    v9 = vmul_f32(vadd_f32(*(**(a1 + 16) + 8 * a2), *(**(a1 + 16) + 8 * a3)), 0x3F0000003F000000);
    v11 = *(v8 + 8);
    v10 = *(v8 + 16);
    if (v11 >= v10)
    {
      v13 = (v11 - *v8) >> 3;
      if ((v13 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v14 = v10 - *v8;
      v15 = v14 >> 2;
      if (v14 >> 2 <= (v13 + 1))
      {
        v15 = v13 + 1;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(*(a1 + 8), v16);
      }

      *(8 * v13) = v9;
      v12 = 8 * v13 + 8;
      v17 = *(v8 + 8) - *v8;
      v18 = (8 * v13 - v17);
      memcpy(v18, *v8, v17);
      v19 = *v8;
      *v8 = v18;
      *(v8 + 8) = v12;
      *(v8 + 16) = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v11 = v9;
      v12 = &v11[1];
    }

    *(v8 + 8) = v12;
  }

  return (v7 + **(a1 + 24));
}

uint64_t geom_create_marching_squares_opt_2f()
{
  result = geom_marching_squares_opt_2f_obj_alloc();
  *(result + 16) = 0;
  return result;
}

uint64_t geom_create_marching_squares_opt_2d()
{
  result = geom_marching_squares_opt_2d_obj_alloc();
  *(result + 16) = 0;
  return result;
}

uint64_t geom_triangulate_by_ear_clipping_2f(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a1;
  return geom::triangulate_by_ear_clipping<float>(v4, (a3 + 16));
}

float64x2_t **geom_triangulate_by_ear_clipping_2d(float64x2_t *a1, float64x2_t *a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a1;
  return geom::triangulate_by_ear_clipping<double>(v4, (a3 + 16));
}

float32x2_t **geom_triangulate_by_ear_clipping_with_holes_2f(float32x2_t *a1, float32x2_t *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  v7[0] = a2;
  v7[1] = a1;
  v6[0] = a4;
  v6[1] = a3;
  return geom::triangulate_by_ear_clipping<float>(v7, v6, (a5 + 16));
}

float64x2_t **geom_triangulate_by_ear_clipping_with_holes_2d(float64x2_t *a1, float64x2_t *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  v7[0] = a2;
  v7[1] = a1;
  v6[0] = a4;
  v6[1] = a3;
  return geom::triangulate_by_ear_clipping<double>(v7, v6, (a5 + 16));
}

uint64_t geom_create_inset_evaluator_2f()
{
  v0 = geom_inset_evaluator_2f_obj_alloc();
  geom::straight_skeleton_evaluator<float>::straight_skeleton_evaluator(v0 + 16);
  return v0;
}

uint64_t geom_create_inset_evaluator_2d()
{
  v0 = geom_inset_evaluator_2d_obj_alloc();
  geom::straight_skeleton_evaluator<double>::straight_skeleton_evaluator(v0 + 16);
  return v0;
}

void geom::ddg_evaluator<float>::ddg_evaluator(uint64_t a1, const void *a2, unint64_t a3, const void *a4, std::vector<unsigned int>::size_type a5)
{
  *(a1 + 41) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a1, a3);
  std::vector<float>::resize((a1 + 24), a5);
  if (a3)
  {
    memmove(*a1, a2, 16 * a3);
  }

  v10 = *(a1 + 24);
  if (a5)
  {
    memmove(v10, a4, 4 * a5);
    v10 = *(a1 + 24);
  }

  v11 = ((*(a1 + 32) - v10) >> 2) / 3uLL;
  operator new();
}

void geom::ddg_evaluator<float>::ddg_evaluator(void *a1, void *a2, void *a3)
{
  v5 = _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8nn200100ERKS4_(a1, a2);
  std::vector<float>::vector[abi:nn200100](v5 + 3, a3);
  v6 = ((a1[4] - a1[3]) >> 2) / 3uLL;
  operator new();
}

uint64_t geom::ddg_evaluator<float>::is_valid(uint64_t a1)
{
  if (!geom::mesh_connectivity::is_manifold(*(a1 + 48)) || !geom::mesh_connectivity::is_oriented(*(a1 + 48)))
  {
    return 0;
  }

  v2 = *(a1 + 48);

  return geom::mesh_connectivity::is_triangle(v2);
}

void geom::ddg_evaluator<float>::get_vertex_one_ring(uint64_t a1, unsigned int a2, uint64_t a3)
{
  geom::mesh_connectivity::get_adjacent_vertices_to_vertex(*(a1 + 48), a2, a3);
  v4 = *(a3 + 8);
  if (v4 != *a3)
  {
    **a3 = *(v4 - 4);
    *(a3 + 8) = v4 - 4;
  }
}

float geom::ddg_evaluator<float>::compute_vertex_area(uint64_t *a1, unsigned int a2)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  geom::mesh_connectivity::get_incident_faces_to_vertex(a1[6], a2, &v14);
  if (v14 == v15)
  {
    v5 = 0.0;
    if (!v14)
    {
      return v5 / 3.0;
    }

    goto LABEL_5;
  }

  v3 = a1[3];
  v4 = *a1;
  v5 = 0.0;
  v6 = v14;
  do
  {
    v7 = *v6++;
    v8 = *(v4 + 16 * *(v3 + 4 * (3 * v7)));
    v9 = vsubq_f32(*(v4 + 16 * *(v3 + 4 * (3 * v7 + 1))), v8);
    v10 = vsubq_f32(*(v4 + 16 * *(v3 + 4 * (3 * v7 + 2))), v8);
    v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), vnegq_f32(v9)), v10, vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
    v12 = vmulq_f32(v11, v11);
    v5 = v5 + sqrtf(v12.f32[1] + (v12.f32[2] + v12.f32[0])) * 0.5;
  }

  while (v6 != v15);
  if (v14)
  {
LABEL_5:
    v15 = v14;
    operator delete(v14);
  }

  return v5 / 3.0;
}

double geom::ddg_evaluator<float>::compute_vertex_normal(uint64_t *a1, unsigned int a2)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  geom::mesh_connectivity::get_incident_faces_to_vertex(a1[6], a2, &v15);
  if (v15 == v16)
  {
    v5 = 0uLL;
  }

  else
  {
    v3 = a1[3];
    v4 = *a1;
    v5 = 0uLL;
    v6 = v15;
    do
    {
      v7 = *v6++;
      v8 = *(v4 + 16 * *(v3 + 4 * (3 * v7)));
      v9 = vsubq_f32(*(v4 + 16 * *(v3 + 4 * (3 * v7 + 1))), v8);
      v10 = vsubq_f32(*(v4 + 16 * *(v3 + 4 * (3 * v7 + 2))), v8);
      v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), vnegq_f32(v9)), v10, vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
      v5 = vaddq_f32(v5, vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));
    }

    while (v6 != v16);
  }

  v12 = vmulq_f32(v5, v5);
  v12.f32[0] = v12.f32[2] + vaddv_f32(*v12.f32);
  if (v12.f32[0] > 0.0)
  {
    v12.f32[0] = sqrtf(v12.f32[0]);
    v5.i64[0] = vdivq_f32(v5, vdupq_lane_s32(*v12.f32, 0)).u64[0];
  }

  if (v15)
  {
    v16 = v15;
    v14 = v5.i64[0];
    operator delete(v15);
    v5.i64[0] = v14;
  }

  return *v5.i64;
}

float geom::ddg_evaluator<float>::compute_vertex_angle_defect(uint64_t *a1, unsigned int a2)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  geom::mesh_connectivity::get_adjacent_vertices_to_vertex(a1[6], a2, &v21);
  v4 = v21;
  v5 = v22 - v21;
  if (v22 != v21)
  {
    v20 = *(*a1 + 16 * a2);
    v6 = ~geom::mesh_connectivity::is_boundary_vertex(a1[6], a2);
    v7 = v6 + (v5 >> 2);
    v4 = v21;
    if (v7)
    {
      v8 = *a1;
      v9 = 0.0;
      v10 = 2;
      v11 = v6 + (v5 >> 2);
      do
      {
        if (--v11)
        {
          v12 = v10;
        }

        else
        {
          v12 = 1;
        }

        v13 = vsubq_f32(*(v8 + 16 * *&v4[4 * v12]), v20);
        v14 = vsubq_f32(*(v8 + 16 * *&v4[4 * (v10 % v7) + 4]), v20);
        v15 = vmulq_f32(v13, v14);
        v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), vnegq_f32(v13)), v14, vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL));
        v17 = vmulq_f32(v16, v16);
        v9 = v9 + atan2f(sqrtf(v17.f32[1] + (v17.f32[2] + v17.f32[0])), v15.f32[2] + vaddv_f32(*v15.f32));
        ++v10;
      }

      while (v11);
      v18 = v9;
      goto LABEL_10;
    }
  }

  v18 = 0.0;
  if (v4)
  {
LABEL_10:
    v22 = v4;
    operator delete(v4);
  }

  return 6.28318531 - v18;
}

float geom::ddg_evaluator<float>::compute_vertex_mean_curvature(uint64_t *a1, unsigned int a2)
{
  *v2.i64 = geom::ddg_evaluator<float>::compute_vertex_mean_curvature_vector(a1, a2);
  v3 = vmulq_f32(v2, v2);
  return sqrtf(v3.f32[2] + vaddv_f32(*v3.f32)) * 0.5;
}

double geom::ddg_evaluator<float>::compute_vertex_mean_curvature_vector(uint64_t *a1, unsigned int a2)
{
  v4.f32[0] = geom::ddg_evaluator<float>::compute_vertex_area(a1, a2);
  v5 = 0;
  if (v4.f32[0] == 0.0)
  {
    return *&v5;
  }

  v13 = v4;
  geom::ddg_evaluator<float>::compute_laplacian_stencil(a1, a2, 1, &v16);
  v6 = v16;
  if (v17 == v16)
  {
    v9 = __p;
    v11.i64[0] = 0x8000000080000000;
    v11.i64[1] = 0x8000000080000000;
    v5 = vdupq_lane_s32(*&vdivq_f32(v11, v13), 0).u64[0];
    if (!__p)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    v8 = (v17 - v16) >> 2;
    v9 = __p;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v10 = 0uLL;
    do
    {
      v10 = vaddq_f32(v10, vmulq_n_f32(*(*a1 + 16 * *(v16 + v7)), *(__p + v7)));
      ++v7;
    }

    while (v8 != v7);
    v5 = vdivq_f32(vnegq_f32(v10), vdupq_lane_s32(*v13.f32, 0)).u64[0];
  }

  v14 = v5;
  v19 = v9;
  operator delete(v9);
  v5 = v14;
  v6 = v16;
LABEL_10:
  if (v6)
  {
    v17 = v6;
    v15 = v5;
    operator delete(v6);
    v5 = v15;
  }

  return *&v5;
}

void geom::ddg_evaluator<float>::compute_laplacian_stencil(uint64_t *a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  __p = 0;
  v45 = 0;
  v46 = 0;
  geom::mesh_connectivity::get_incident_edges_to_vertex(a1[6], a2, &v47);
  geom::mesh_connectivity::get_adjacent_vertices_to_vertex(a1[6], a2, &__p);
  v8 = __p;
  if (__p != v45)
  {
    std::vector<float>::resize(a4, (v45 - __p) >> 2);
    std::vector<float>::resize((a4 + 24), (v45 - __p) >> 2);
    v9 = v47;
    if (a3)
    {
      if (v48 == v47)
      {
        v33 = *a4;
        v34 = *(a4 + 24);
        v35 = -0.0;
      }

      else
      {
        v10 = 0;
        v11 = 1;
        v12 = 0.0;
        do
        {
          *v42 = 0;
          *v43 = 0;
          geom::mesh_connectivity::get_edge_vertices(a1[6], v9[v10], &v43[1], v43);
          geom::mesh_connectivity::get_edge_opposite_vertices(a1[6], *(v47 + v10), &v42[1], v42);
          v13 = *a1;
          v14 = 0.0;
          if (v42[1] != -1)
          {
            v15 = *(v13 + 16 * v42[1]);
            v16 = vsubq_f32(*(v13 + 16 * v43[1]), v15);
            v17 = vsubq_f32(*(v13 + 16 * v43[0]), v15);
            v18 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), vnegq_f32(v16)), v17, vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL));
            v19 = vmulq_f32(v18, v18);
            v20 = sqrtf(v19.f32[1] + (v19.f32[2] + v19.f32[0]));
            v21 = 0.0;
            if (v20 > 0.0)
            {
              v22 = vmulq_f32(v16, v17);
              v21 = (v22.f32[2] + vaddv_f32(*v22.f32)) / v20;
            }

            v14 = fmaxf(v21, 0.0);
            if (*(a1 + 56) != 1)
            {
              v14 = v21;
            }
          }

          if (v42[0] == -1)
          {
            v31 = 0.0;
          }

          else
          {
            v23 = *(v13 + 16 * v42[0]);
            v24 = vsubq_f32(*(v13 + 16 * v43[1]), v23);
            v25 = vsubq_f32(*(v13 + 16 * v43[0]), v23);
            v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), vnegq_f32(v24)), v25, vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL));
            v27 = vmulq_f32(v26, v26);
            v28 = sqrtf(v27.f32[1] + (v27.f32[2] + v27.f32[0]));
            v29 = 0.0;
            if (v28 > 0.0)
            {
              v30 = vmulq_f32(v24, v25);
              v29 = (v30.f32[2] + vaddv_f32(*v30.f32)) / v28;
            }

            v31 = fmaxf(v29, 0.0);
            if (*(a1 + 56) != 1)
            {
              v31 = v29;
            }
          }

          v32 = v14 + v31;
          v12 = v12 + v32;
          v33 = *a4;
          *(*a4 + 4 * v11) = *(__p + v11);
          v34 = *(a4 + 24);
          v34[v11] = v32 * 0.5;
          v10 = v11;
          v9 = v47;
          ++v11;
        }

        while (v10 < (v48 - v47) >> 2);
        v35 = v12 * -0.5;
      }

      *v33 = a2;
      *v34 = v35;
    }

    else
    {
      v36 = *a4;
      v37 = *(a4 + 24);
      v38 = (v48 - v47) >> 2;
      if (v48 != v47)
      {
        v39 = 1;
        v40 = __p;
        do
        {
          v36[v39] = v40[v39];
          v37[v39] = 1.0;
        }

        while (v38 > v39++);
      }

      *v36 = a2;
      *v37 = -v38;
    }

    v8 = __p;
  }

  if (v8)
  {
    v45 = v8;
    operator delete(v8);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }
}

void geom::ddg_evaluator<float>::compute_vertex_divergence(uint64_t a1, unsigned int a2)
{
  memset(v2, 0, sizeof(v2));
  geom::mesh_connectivity::get_incident_faces_to_vertex(*(a1 + 48), a2, v2);
  operator new();
}

void geom::ddg_evaluator<double>::ddg_evaluator(uint64_t a1, const void *a2, unint64_t a3, const void *a4, std::vector<unsigned int>::size_type a5)
{
  *(a1 + 41) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(a1, a3);
  std::vector<float>::resize((a1 + 24), a5);
  if (a3)
  {
    memmove(*a1, a2, 32 * a3);
  }

  v10 = *(a1 + 24);
  if (a5)
  {
    memmove(v10, a4, 4 * a5);
    v10 = *(a1 + 24);
  }

  v11 = ((*(a1 + 32) - v10) >> 2) / 3uLL;
  operator new();
}

void geom::ddg_evaluator<double>::ddg_evaluator(void *a1, void *a2, void *a3)
{
  v5 = _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEEC2B8nn200100ERKS4_(a1, a2);
  std::vector<float>::vector[abi:nn200100](v5 + 3, a3);
  v6 = ((a1[4] - a1[3]) >> 2) / 3uLL;
  operator new();
}

double geom::ddg_evaluator<double>::compute_vertex_area(uint64_t *a1, unsigned int a2)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  geom::mesh_connectivity::get_incident_faces_to_vertex(a1[6], a2, &v20);
  if (v20 == v21)
  {
    v5 = 0.0;
    if (!v20)
    {
      return v5 / 3.0;
    }

    goto LABEL_5;
  }

  v3 = a1[3];
  v4 = *a1;
  v5 = 0.0;
  v6 = v20;
  do
  {
    v7 = *v6++;
    v8 = (v4 + 32 * *(v3 + 4 * (3 * v7)));
    v9 = (v4 + 32 * *(v3 + 4 * (3 * v7 + 1)));
    v10 = (v4 + 32 * *(v3 + 4 * (3 * v7 + 2)));
    v11 = v8[1];
    v12 = vsubq_f64(*v9, *v8);
    v13 = vsubq_f64(v9[1], v11);
    v14 = vsubq_f64(*v10, *v8);
    v15 = vsubq_f64(v10[1], v11);
    v16 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v13), v14, 1), v15, v12, 1);
    v15.f64[1] = v14.f64[0];
    v13.f64[1] = v12.f64[0];
    v17 = vmlaq_f64(vmulq_f64(v15, vnegq_f64(v12)), v14, v13);
    v18 = vmulq_f64(v17, v17);
    v5 = v5 + sqrt(v18.f64[1] + vmulq_f64(v16, v16).f64[0] + v18.f64[0]) * 0.5;
  }

  while (v6 != v21);
  if (v20)
  {
LABEL_5:
    v21 = v20;
    operator delete(v20);
  }

  return v5 / 3.0;
}

void geom::ddg_evaluator<double>::compute_vertex_normal(uint64_t *a1@<X0>, unsigned int a2@<W1>, int8x16_t *a3@<X8>)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  geom::mesh_connectivity::get_incident_faces_to_vertex(a1[6], a2, &v26);
  if (v26 == v27)
  {
    v7 = 0uLL;
    v8 = 0uLL;
  }

  else
  {
    v5 = a1[3];
    v6 = *a1;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = v26;
    do
    {
      v10 = *v9++;
      v11 = (v6 + 32 * *(v5 + 4 * (3 * v10)));
      v12 = (v6 + 32 * *(v5 + 4 * (3 * v10 + 1)));
      v13 = (v6 + 32 * *(v5 + 4 * (3 * v10 + 2)));
      v14 = v11[1];
      v15 = vsubq_f64(*v12, *v11);
      v16 = vsubq_f64(v12[1], v14);
      v17 = vsubq_f64(*v13, *v11);
      v18 = vsubq_f64(v13[1], v14);
      *&v19.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v16), v17, 1), v18, v15, 1);
      v18.f64[1] = v17.f64[0];
      v16.f64[1] = v15.f64[0];
      v20 = vmlaq_f64(vmulq_f64(v18, vnegq_f64(v15)), v17, v16);
      *&v19.f64[1] = v20.i64[0];
      v8 = vaddq_f64(v8, vdupq_laneq_s64(v20, 1));
      v7 = vaddq_f64(v7, v19);
    }

    while (v9 != v27);
  }

  v21 = vextq_s8(v7, v7, 8uLL).u64[0];
  v22 = vmulq_f64(v8, v8);
  v22.f64[0] = v22.f64[0] + vaddvq_f64(vmulq_f64(v7, v7));
  if (v22.f64[0] > 0.0)
  {
    v22.f64[0] = sqrt(v22.f64[0]);
    v8 = vdivq_f64(v8, v22);
    v7.i64[1] = v21;
    v7 = vdivq_f64(v7, vdupq_lane_s64(*&v22.f64[0], 0));
    v21 = vextq_s8(v7, v7, 8uLL).u64[0];
  }

  if (v26)
  {
    v27 = v26;
    v24 = v8;
    v25 = v7.i64[0];
    v23 = v21;
    operator delete(v26);
    v21 = v23;
    v8 = v24;
    v7.i64[0] = v25;
  }

  v7.i64[1] = v21;
  *a3 = v7;
  a3[1] = v8;
}

double geom::ddg_evaluator<double>::compute_vertex_angle_defect(uint64_t *a1, unsigned int a2)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  geom::mesh_connectivity::get_adjacent_vertices_to_vertex(a1[6], a2, &v28);
  v4 = v28;
  v5 = v29 - v28;
  if (v29 != v28)
  {
    v6 = (*a1 + 32 * a2);
    v26 = *v6;
    v27 = v6[1];
    v7 = ~geom::mesh_connectivity::is_boundary_vertex(a1[6], a2);
    v8 = v7 + (v5 >> 2);
    v4 = v28;
    if (v8)
    {
      v9 = *a1;
      v10 = 0.0;
      v11 = 2;
      v12 = v7 + (v5 >> 2);
      do
      {
        if (--v12)
        {
          v13 = v11;
        }

        else
        {
          v13 = 1;
        }

        v14 = (v9 + 32 * *&v4[4 * v13]);
        v15 = vsubq_f64(*v14, v26);
        v16 = vsubq_f64(v14[1], v27);
        v17 = (v9 + 32 * *&v4[4 * (v11 % v8) + 4]);
        v18 = vsubq_f64(*v17, v26);
        v19 = vsubq_f64(v17[1], v27);
        v20 = vmulq_f64(v16, v19).f64[0];
        v21 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v16), v18, 1), v19, v15, 1);
        v19.f64[1] = v18.f64[0];
        v22 = vaddvq_f64(vmulq_f64(v15, v18));
        v16.f64[1] = v15.f64[0];
        v23 = vmlaq_f64(vmulq_f64(v19, vnegq_f64(v15)), v18, v16);
        v24 = vmulq_f64(v23, v23);
        v10 = v10 + atan2(sqrt(v24.f64[1] + vmulq_f64(v21, v21).f64[0] + v24.f64[0]), v20 + v22);
        ++v11;
      }

      while (v12);
      goto LABEL_10;
    }
  }

  v10 = 0.0;
  if (v4)
  {
LABEL_10:
    v29 = v4;
    operator delete(v4);
  }

  return 6.28318531 - v10;
}

void geom::ddg_evaluator<double>::compute_vertex_mean_curvature_vector(uint64_t *a1@<X0>, unsigned int a2@<W1>, float64x2_t *a3@<X8>)
{
  v6.f64[0] = geom::ddg_evaluator<double>::compute_vertex_area(a1, a2);
  v7 = 0uLL;
  v8 = 0uLL;
  if (v6.f64[0] == 0.0)
  {
    goto LABEL_13;
  }

  v20 = v6;
  geom::ddg_evaluator<double>::compute_laplacian_stencil(a1, a2, 1, &v23);
  v10 = v23;
  v11 = v24 - v23;
  if (v24 != v23)
  {
    v12 = 0;
    v13 = v11 >> 2;
    v14 = __p;
    if ((v11 >> 2) <= 1)
    {
      v13 = 1;
    }

    v15 = 0uLL;
    v16 = 0uLL;
    do
    {
      v9.f64[0] = *(__p + v12);
      v17 = (*a1 + 32 * v23[v12]);
      v18 = vmulq_n_f64(*v17, v9.f64[0]);
      v9 = vmulq_f64(v9, v17[1]);
      v16 = vaddq_f64(v16, v9);
      v15 = vaddq_f64(v15, v18);
      ++v12;
    }

    while (v13 != v12);
    v15.i64[1] = vextq_s8(v15, v15, 8uLL).u64[0];
    v19 = vdivq_f64(vnegq_f64(v16), v20);
    v7 = vdivq_f64(vnegq_f64(v15), vdupq_lane_s64(*&v20.f64[0], 0));
    goto LABEL_9;
  }

  v14 = __p;
  v19 = vdivq_f64(vnegq_f64(0), v20);
  v7 = vdupq_lane_s64(*&v19.f64[0], 0);
  if (__p)
  {
LABEL_9:
    v21 = v7;
    v26 = v14;
    operator delete(v14);
    v7 = v21;
    v10 = v23;
  }

  if (v10)
  {
    v24 = v10;
    v22 = v7;
    operator delete(v10);
    v7 = v22;
  }

  v8 = v19;
LABEL_13:
  *a3 = v7;
  a3[1] = v8;
}

void geom::ddg_evaluator<double>::compute_laplacian_stencil(uint64_t *a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  __p = 0;
  v57 = 0;
  v58 = 0;
  geom::mesh_connectivity::get_incident_edges_to_vertex(a1[6], a2, &v59);
  geom::mesh_connectivity::get_adjacent_vertices_to_vertex(a1[6], a2, &__p);
  v8 = __p;
  if (__p != v57)
  {
    std::vector<float>::resize(a4, (v57 - __p) >> 2);
    std::vector<double>::resize((a4 + 24), (v57 - __p) >> 2);
    v9 = v59;
    if (a3)
    {
      if (v60 == v59)
      {
        v45 = *a4;
        v46 = *(a4 + 24);
        v47 = -0.0;
      }

      else
      {
        v10 = 0;
        v11 = 1;
        v12 = 0.0;
        do
        {
          *v54 = 0;
          *v55 = 0;
          geom::mesh_connectivity::get_edge_vertices(a1[6], v9[v10], &v55[1], v55);
          geom::mesh_connectivity::get_edge_opposite_vertices(a1[6], *(v59 + v10), &v54[1], v54);
          v13 = *a1;
          v14 = (*a1 + 32 * v55[1]);
          v15 = (*a1 + 32 * v55[0]);
          v16 = 0.0;
          if (v54[1] != -1)
          {
            v17 = (v13 + 32 * v54[1]);
            v18 = v17[1];
            v19 = vsubq_f64(v14[1], v18);
            v20 = vsubq_f64(*v14, *v17);
            v21 = vsubq_f64(v15[1], v18);
            v22.f64[0] = v19.f64[0];
            v22.f64[1] = v20.f64[0];
            v23 = vsubq_f64(*v15, *v17);
            v24.f64[0] = v21.f64[0];
            v24.f64[1] = v23.f64[0];
            v25 = vmlaq_f64(vmulq_f64(v24, vnegq_f64(v20)), v23, v22);
            v26 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v19), v23, 1), v21, v20, 1);
            v27 = vmulq_f64(v25, v25);
            v28 = sqrt(v27.f64[1] + vmulq_f64(v26, v26).f64[0] + v27.f64[0]);
            v29 = 0.0;
            if (v28 > 0.0)
            {
              v29 = (vmulq_f64(v19, v21).f64[0] + vaddvq_f64(vmulq_f64(v20, v23))) / v28;
            }

            v16 = fmax(v29, 0.0);
            if (*(a1 + 56) != 1)
            {
              v16 = v29;
            }
          }

          if (v54[0] == -1)
          {
            v43 = 0.0;
          }

          else
          {
            v30 = (v13 + 32 * v54[0]);
            v31 = v30[1];
            v32 = vsubq_f64(v14[1], v31);
            v33 = vsubq_f64(*v14, *v30);
            v34 = vsubq_f64(v15[1], v31);
            v35.f64[0] = v32.f64[0];
            v35.f64[1] = v33.f64[0];
            v36 = vsubq_f64(*v15, *v30);
            v37.f64[0] = v34.f64[0];
            v37.f64[1] = v36.f64[0];
            v38 = vmlaq_f64(vmulq_f64(v37, vnegq_f64(v33)), v36, v35);
            v39 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v32), v36, 1), v34, v33, 1);
            v40 = vmulq_f64(v38, v38);
            v41 = sqrt(v40.f64[1] + vmulq_f64(v39, v39).f64[0] + v40.f64[0]);
            v42 = 0.0;
            if (v41 > 0.0)
            {
              v42 = (vmulq_f64(v32, v34).f64[0] + vaddvq_f64(vmulq_f64(v33, v36))) / v41;
            }

            v43 = fmax(v42, 0.0);
            if (*(a1 + 56) != 1)
            {
              v43 = v42;
            }
          }

          v44 = v16 + v43;
          v12 = v12 + v44;
          v45 = *a4;
          *(*a4 + 4 * v11) = *(__p + v11);
          v46 = *(a4 + 24);
          v46[v11] = v44 * 0.5;
          v10 = v11;
          v9 = v59;
          ++v11;
        }

        while (v10 < (v60 - v59) >> 2);
        v47 = v12 * -0.5;
      }

      *v45 = a2;
      *v46 = v47;
    }

    else
    {
      v48 = *a4;
      v49 = *(a4 + 24);
      v50 = (v60 - v59) >> 2;
      if (v60 != v59)
      {
        v51 = 1;
        v52 = __p;
        do
        {
          v48[v51] = v52[v51];
          v49[v51] = 1.0;
        }

        while (v50 > v51++);
      }

      *v48 = a2;
      *v49 = -v50;
    }

    v8 = __p;
  }

  if (v8)
  {
    v57 = v8;
    operator delete(v8);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }
}

void geom::ddg_evaluator<double>::compute_vertex_divergence(uint64_t a1, unsigned int a2)
{
  memset(__p, 0, sizeof(__p));
  geom::mesh_connectivity::get_incident_faces_to_vertex(*(a1 + 48), a2, __p);
  operator new();
}

uint64_t *std::unique_ptr<geom::mesh_connectivity>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 96);
    if (v3)
    {
      *(v2 + 104) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 72);
    if (v4)
    {
      *(v2 + 80) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 48);
    if (v5)
    {
      *(v2 + 56) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 24);
    if (v6)
    {
      *(v2 + 32) = v6;
      operator delete(v6);
    }

    v7 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v7;
      operator delete(v7);
    }

    JUMPOUT(0x25305E3F0);
  }

  return result;
}

uint64_t geom_point_cloud_laplacian_create_opt_3f()
{
  result = geom_point_cloud_laplacian_create_opt_3f_obj_alloc();
  *(result + 16) = 15;
  return result;
}

uint64_t geom_create_point_cloud_laplacian_with_options_3f(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = geom_point_cloud_laplacian_3f_obj_alloc();
  geom::point_cloud_laplacian<float>::point_cloud_laplacian(v6 + 16, a2, a1, *(a3 + 16));
  return v6;
}

void geom_point_cloud_laplacian_get_laplacian_stencil_3f(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  geom::point_cloud_laplacian<float>::get_laplacian_stencil(a1 + 16, a2, &v8);
  v6 = geom::collection_to_vector<float>(a3);
  if (v6 != &v8)
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(v6, v8, v9, (v9 - v8) >> 2);
  }

  v7 = geom::collection_to_vector<float>(a4);
  if (v7 != &__p)
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(v7, __p, v11, (v11 - __p) >> 2);
  }

  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }
}

uint64_t geom_point_cloud_compute_normals_and_areas_3f(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  geom::collection_to_vector<float>(a4);
  geom::collection_to_vector<float>(a5);

  return geom::compute_point_cloud_normals_and_areas<float>(a2, a1, a3);
}

double geom_point_cloud_compute_principal_component_plane_projection_3f(unint64_t a1, uint64_t a2, unint64_t a3, unsigned int *a4, uint64_t a5)
{
  geom::compute_principal_component_plane_projection<float>(a1, a4, a3, &v9);
  v6 = geom::collection_to_vector<float>(a5);
  v7 = *v6;
  if (*v6)
  {
    *(v6 + 8) = v7;
    operator delete(v7);
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
  }

  result = *&v9;
  *v6 = v9;
  *(v6 + 16) = v10;
  return result;
}

void sub_250078C58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t geom_point_cloud_laplacian_create_opt_3d()
{
  result = geom_point_cloud_laplacian_create_opt_3d_obj_alloc();
  *(result + 16) = 15;
  return result;
}

uint64_t geom_create_point_cloud_laplacian_with_options_3d(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = geom_point_cloud_laplacian_3d_obj_alloc();
  geom::point_cloud_laplacian<double>::point_cloud_laplacian(v6 + 16, a2, a1, *(a3 + 16));
  return v6;
}

void geom_point_cloud_laplacian_get_laplacian_stencil_3d(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  geom::point_cloud_laplacian<double>::get_laplacian_stencil(a1 + 16, a2, &v8);
  v6 = geom::collection_to_vector<float>(a3);
  if (v6 != &v8)
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(v6, v8, v9, (v9 - v8) >> 2);
  }

  v7 = geom::collection_to_vector<float>(a4);
  if (v7 != &__p)
  {
    std::vector<double>::__assign_with_size[abi:nn200100]<double *,double *>(v7, __p, v11, (v11 - __p) >> 3);
  }

  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }
}

uint64_t geom_point_cloud_compute_normals_and_areas_3d(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  geom::collection_to_vector<float>(a4);
  geom::collection_to_vector<float>(a5);

  return geom::compute_point_cloud_normals_and_areas<double>(a2, a1, a3);
}

double geom_point_cloud_compute_principal_component_plane_projection_3d(unint64_t a1, uint64_t a2, unint64_t a3, unsigned int *a4, uint64_t a5)
{
  geom::compute_principal_component_plane_projection<double>(a1, a4, a3, &v9);
  v6 = geom::collection_to_vector<float>(a5);
  v7 = *v6;
  if (*v6)
  {
    *(v6 + 8) = v7;
    operator delete(v7);
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
  }

  result = *&v9;
  *v6 = v9;
  *(v6 + 16) = v10;
  return result;
}

void sub_250078EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void geom::simplify_triangle_mesh_options<float>::set_fixed_vertex_indices(std::vector<unsigned int> *a1, const void *a2, std::vector<unsigned int>::size_type __sz)
{
  std::vector<float>::resize(a1, __sz);
  if (__sz)
  {
    begin = a1->__begin_;

    memmove(begin, a2, 4 * __sz);
  }
}

void *geom::simplify_triangle_mesh_options<float>::clear_uvs(void *result)
{
  result[4] = result[3];
  result[7] = result[6];
  result[10] = result[9];
  result[13] = 0;
  result[14] = 0;
  result[12] = 0;
  return result;
}

void geom::simplify_triangle_mesh_options<float>::set_uvs_for_face_subset(std::vector<unsigned int> *a1, unint64_t a2, const void *a3, std::vector<unsigned int>::size_type a4, const void *a5, const void *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9)
{
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(&a1[1].__begin_, a2);
  if (a2)
  {
    memmove(a1[1].__begin_, a3, 8 * a2);
  }

  std::vector<float>::resize(a1 + 2, a4);
  if (a4)
  {
    memmove(a1[2].__begin_, a5, 4 * a4);
  }

  v17 = 3 * a4;
  std::vector<float>::resize(a1 + 3, v17);
  if (4 * v17)
  {
    memmove(a1[3].__begin_, a6, 4 * v17);
  }

  a1[4].__begin_ = a7;
  a1[4].__end_ = a8;
  a1[4].__end_cap_.__value_ = a9;
}

void geom::simplify_triangle_mesh_options<float>::set_uvs(std::vector<unsigned int> *a1, unint64_t a2, const void *a3, std::vector<unsigned int>::size_type a4, const void *a5, unsigned int *a6, unsigned int *a7)
{
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(&a1[1].__begin_, a2);
  if (a2)
  {
    memmove(a1[1].__begin_, a3, 8 * a2);
  }

  std::vector<float>::resize(a1 + 2, a4);
  if (a4)
  {
    v14 = 0;
    v15 = vdupq_n_s64(a4 - 1);
    v16 = xmmword_2500C1670;
    v17 = xmmword_2500C1680;
    v18 = a1[2].__begin_ + 2;
    v19 = vdupq_n_s64(4uLL);
    do
    {
      v20 = vmovn_s64(vcgeq_u64(v15, v17));
      if (vuzp1_s16(v20, *v15.i8).u8[0])
      {
        *(v18 - 2) = v14;
      }

      if (vuzp1_s16(v20, *&v15).i8[2])
      {
        *(v18 - 1) = v14 + 1;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, *&v16))).i32[1])
      {
        *v18 = v14 + 2;
        v18[1] = v14 + 3;
      }

      v14 += 4;
      v16 = vaddq_s64(v16, v19);
      v17 = vaddq_s64(v17, v19);
      v18 += 4;
    }

    while (((a4 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v14);
  }

  v21 = 3 * a4;
  std::vector<float>::resize(a1 + 3, v21);
  if (4 * v21)
  {
    memmove(a1[3].__begin_, a5, 4 * v21);
  }

  a1[4].__begin_ = a6;
  a1[4].__end_ = 0;
  a1[4].__end_cap_.__value_ = a7;
}

double geom_create_simplify_triangle_mesh_opt_3f()
{
  v0 = geom_simplify_triangle_mesh_opt_3f_obj_alloc();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  return result;
}

double geom_create_simplify_triangle_mesh_opt_3d()
{
  v0 = geom_simplify_triangle_mesh_opt_3d_obj_alloc();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  return result;
}

void geom_simplify_triangle_mesh_opt_set_fixed_vertex_indices_3f(uint64_t a1, std::vector<unsigned int>::size_type a2, const void *a3)
{
  std::vector<float>::resize((a1 + 16), a2);
  if (a2)
  {
    v6 = *(a1 + 16);

    memmove(v6, a3, 4 * a2);
  }
}

void geom_simplify_triangle_mesh_opt_set_fixed_vertex_indices_3d(uint64_t a1, std::vector<unsigned int>::size_type a2, const void *a3)
{
  std::vector<float>::resize((a1 + 16), a2);
  if (a2)
  {
    v6 = *(a1 + 16);

    memmove(v6, a3, 4 * a2);
  }
}

uint64_t geom_simplify_triangle_mesh_opt_get_fixed_vertex_indices_data_3f(uint64_t a1)
{
  if (*(a1 + 24) == *(a1 + 16))
  {
    return 0;
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t geom_simplify_triangle_mesh_opt_get_fixed_vertex_indices_data_3d(uint64_t a1)
{
  if (*(a1 + 24) == *(a1 + 16))
  {
    return 0;
  }

  else
  {
    return *(a1 + 16);
  }
}

void *geom_simplify_triangle_mesh_opt_clear_uvs_3f(void *result)
{
  result[6] = result[5];
  result[9] = result[8];
  result[12] = result[11];
  result[15] = 0;
  result[16] = 0;
  result[14] = 0;
  return result;
}

void *geom_simplify_triangle_mesh_opt_clear_uvs_3d(void *result)
{
  result[6] = result[5];
  result[9] = result[8];
  result[12] = result[11];
  result[15] = 0;
  result[16] = 0;
  result[14] = 0;
  return result;
}

uint64_t geom_simplify_triangle_mesh_opt_get_uv_value_data_3f(uint64_t a1)
{
  if (*(a1 + 48) == *(a1 + 40))
  {
    return 0;
  }

  else
  {
    return *(a1 + 40);
  }
}

uint64_t geom_simplify_triangle_mesh_opt_get_uv_value_data_3d(uint64_t a1)
{
  if (*(a1 + 48) == *(a1 + 40))
  {
    return 0;
  }

  else
  {
    return *(a1 + 40);
  }
}

uint64_t geom_simplify_triangle_mesh_opt_get_triangles_with_uvs_data_3f(uint64_t a1)
{
  if (*(a1 + 72) == *(a1 + 64))
  {
    return 0;
  }

  else
  {
    return *(a1 + 64);
  }
}

uint64_t geom_simplify_triangle_mesh_opt_get_triangles_with_uvs_data_3d(uint64_t a1)
{
  if (*(a1 + 72) == *(a1 + 64))
  {
    return 0;
  }

  else
  {
    return *(a1 + 64);
  }
}

uint64_t geom_simplify_triangle_mesh_opt_get_triangle_uv_indices_data_3f(uint64_t a1)
{
  if (*(a1 + 96) == *(a1 + 88))
  {
    return 0;
  }

  else
  {
    return *(a1 + 88);
  }
}

uint64_t geom_simplify_triangle_mesh_opt_get_triangle_uv_indices_data_3d(uint64_t a1)
{
  if (*(a1 + 96) == *(a1 + 88))
  {
    return 0;
  }

  else
  {
    return *(a1 + 88);
  }
}

void geom_simplify_triangle_mesh_with_default_options_3f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = 0;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11[0] = a2;
  v11[1] = a1;
  v11[4] = 0;
  v11[5] = 0;
  v11[2] = a4;
  v11[3] = (12 * a3) >> 2;
  v9 = geom::collection_to_vector<float>(a6);
  v10 = geom::collection_to_vector<float>(a7);
  geom::internal::simplify_triangle_mesh<float>(v11, a5, v9, v10);
}

void geom_simplify_triangle_mesh_with_default_options_3d(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = 0;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11[0] = a2;
  v11[1] = a1;
  v11[4] = 0;
  v11[5] = 0;
  v11[2] = a4;
  v11[3] = (12 * a3) >> 2;
  v9 = geom::collection_to_vector<float>(a6);
  v10 = geom::collection_to_vector<float>(a7);
  geom::internal::simplify_triangle_mesh<double>(v11, a5, v9, v10);
}

void geom_simplify_triangle_mesh_with_options_3f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a8 + 16);
  v10 = *(a8 + 24);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v12 = v10 - v11;
  if (!v12)
  {
    v11 = 0;
  }

  v33 = 0uLL;
  v32[0] = a2;
  v32[1] = a1;
  v32[4] = v11;
  v32[5] = (v12 >> 2);
  v32[2] = a4;
  v32[3] = (12 * a3) >> 2;
  v13 = *(a8 + 136);
  v15 = *(a8 + 40);
  v14 = *(a8 + 48);
  v16 = v14 - v15;
  if (v14 == v15 || (v17 = *(a8 + 88), *(a8 + 96) == v17) || (v18 = *(a8 + 112)) == 0 || (v19 = *(a8 + 128)) == 0)
  {
    v29 = geom::collection_to_vector<float>(a6);
    v30 = geom::collection_to_vector<float>(a7);
    if (v13)
    {
      v31 = geom::collection_to_vector<float>(v13);
      geom::internal::simplify_and_correspond_triangle_mesh<float>(v32, a5, v29, v30, v31);
    }

    else
    {
      geom::internal::simplify_triangle_mesh<float>(v32, a5, v29, v30);
    }
  }

  else
  {
    *&v33 = *(a8 + 40);
    *(&v33 + 1) = v16 >> 3;
    v20 = *(a8 + 64);
    v21 = *(a8 + 72) - v20;
    if (!v21)
    {
      v20 = 0;
    }

    *&v34 = v20;
    *(&v34 + 1) = v21 >> 2;
    *&v35 = v17;
    *(&v35 + 1) = (v21 >> 1) + (v21 >> 2);
    v36 = *(a8 + 144);
    v22 = *(a8 + 120);
    if (v13)
    {
      v23 = geom::collection_to_vector<float>(a6);
      v24 = geom::collection_to_vector<float>(a7);
      v25 = geom::collection_to_vector<float>(v19);
      v26 = geom::collection_to_vector<float>(v13);
      v27 = geom::collection_to_vector<float>(v18);
      if (v22)
      {
        v28 = geom::collection_to_vector<float>(v22);
        geom::internal::simplify_and_correspond_triangle_mesh<float>(v32, a5, v23, v24, v27, v28, v25, v26);
      }

      else
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        geom::internal::simplify_and_correspond_triangle_mesh<float>(v32, a5, v23, v24, v27, &v37, v25, v26);
        if (v37)
        {
          v38 = v37;
          operator delete(v37);
        }
      }
    }

    else
    {
    }
  }
}

void sub_250079824(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 88);
  if (v3)
  {
    *(v1 - 80) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void geom_simplify_triangle_mesh_with_options_3d(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a8 + 16);
  v10 = *(a8 + 24);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v12 = v10 - v11;
  if (!v12)
  {
    v11 = 0;
  }

  v33 = 0uLL;
  v32[0] = a2;
  v32[1] = a1;
  v32[4] = v11;
  v32[5] = (v12 >> 2);
  v32[2] = a4;
  v32[3] = (12 * a3) >> 2;
  v13 = *(a8 + 136);
  v15 = *(a8 + 40);
  v14 = *(a8 + 48);
  v16 = v14 - v15;
  if (v14 == v15 || (v17 = *(a8 + 88), *(a8 + 96) == v17) || (v18 = *(a8 + 112)) == 0 || (v19 = *(a8 + 128)) == 0)
  {
    v29 = geom::collection_to_vector<float>(a6);
    v30 = geom::collection_to_vector<float>(a7);
    if (v13)
    {
      v31 = geom::collection_to_vector<float>(v13);
      geom::internal::simplify_and_correspond_triangle_mesh<double>(v32, a5, v29, v30, v31);
    }

    else
    {
      geom::internal::simplify_triangle_mesh<double>(v32, a5, v29, v30);
    }
  }

  else
  {
    *&v33 = *(a8 + 40);
    *(&v33 + 1) = v16 >> 3;
    v20 = *(a8 + 64);
    v21 = *(a8 + 72) - v20;
    if (!v21)
    {
      v20 = 0;
    }

    *&v34 = v20;
    *(&v34 + 1) = v21 >> 2;
    *&v35 = v17;
    *(&v35 + 1) = (v21 >> 1) + (v21 >> 2);
    v36 = *(a8 + 144);
    v22 = *(a8 + 120);
    if (v13)
    {
      v23 = geom::collection_to_vector<float>(a6);
      v24 = geom::collection_to_vector<float>(a7);
      v25 = geom::collection_to_vector<float>(v19);
      v26 = geom::collection_to_vector<float>(v13);
      v27 = geom::collection_to_vector<float>(v18);
      if (v22)
      {
        v28 = geom::collection_to_vector<float>(v22);
        geom::internal::simplify_and_correspond_triangle_mesh<double>(v32, a5, v23, v24, v27, v28, v25, v26);
      }

      else
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        geom::internal::simplify_and_correspond_triangle_mesh<double>(v32, a5, v23, v24, v27, &v37, v25, v26);
        if (v37)
        {
          v38 = v37;
          operator delete(v37);
        }
      }
    }

    else
    {
    }
  }
}

void sub_250079A44(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 88);
  if (v3)
  {
    *(v1 - 80) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void geom_simplify_triangle_mesh_3f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = 0;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11[0] = a2;
  v11[1] = a1;
  v11[4] = 0;
  v11[5] = 0;
  v11[2] = a4;
  v11[3] = (12 * a3) >> 2;
  v9 = geom::collection_to_vector<float>(a6);
  v10 = geom::collection_to_vector<float>(a7);
  geom::internal::simplify_triangle_mesh<float>(v11, a5, v9, v10);
}

void geom_simplify_triangle_mesh_3d(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = 0;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11[0] = a2;
  v11[1] = a1;
  v11[4] = 0;
  v11[5] = 0;
  v11[2] = a4;
  v11[3] = (12 * a3) >> 2;
  v9 = geom::collection_to_vector<float>(a6);
  v10 = geom::collection_to_vector<float>(a7);
  geom::internal::simplify_triangle_mesh<double>(v11, a5, v9, v10);
}

void geom_simplify_triangle_mesh_with_uvs_3f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15[0] = a2;
  v15[1] = a1;
  v15[4] = 0;
  v15[5] = 0;
  v15[2] = a4;
  v15[3] = (12 * a3) >> 2;
  v15[6] = a6;
  v15[7] = a5;
  v15[8] = a8;
  v15[9] = a7;
  v15[10] = a9;
  v15[11] = 3 * a7;
  v16 = 0;
}

void geom::anonymous namespace::geom_simplify_triangle_mesh_with_uvs_helper_3<float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = geom::collection_to_vector<float>(a3);
  v14 = geom::collection_to_vector<float>(a4);
  v15 = geom::collection_to_vector<float>(a5);
  v16 = geom::collection_to_vector<float>(a7);
  if (a6)
  {
    v17 = geom::collection_to_vector<float>(a6);

    geom::internal::simplify_triangle_mesh<float>(a1, a2, v13, v14, v15, v17, v16);
  }

  else
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
    geom::internal::simplify_triangle_mesh<float>(a1, a2, v13, v14, v15, &__p, v16);
    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }
  }
}

void sub_250079CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void geom_simplify_triangle_mesh_with_uvs_3d(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15[0] = a2;
  v15[1] = a1;
  v15[4] = 0;
  v15[5] = 0;
  v15[2] = a4;
  v15[3] = (12 * a3) >> 2;
  v15[6] = a6;
  v15[7] = a5;
  v15[8] = a8;
  v15[9] = a7;
  v15[10] = a9;
  v15[11] = 3 * a7;
  v16 = 0;
}

void geom::anonymous namespace::geom_simplify_triangle_mesh_with_uvs_helper_3<double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = geom::collection_to_vector<float>(a3);
  v14 = geom::collection_to_vector<float>(a4);
  v15 = geom::collection_to_vector<float>(a5);
  v16 = geom::collection_to_vector<float>(a7);
  if (a6)
  {
    v17 = geom::collection_to_vector<float>(a6);

    geom::internal::simplify_triangle_mesh<double>(a1, a2, v13, v14, v15, v17, v16);
  }

  else
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
    geom::internal::simplify_triangle_mesh<double>(a1, a2, v13, v14, v15, &__p, v16);
    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }
  }
}

void sub_250079E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL geom::sparse_linear_solver<float>::entry::operator<(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 == v3)
  {
    return *a1 < *a2;
  }

  return 0;
}

double geom::sparse_linear_solver<float>::sparse_linear_solver(uint64_t a1, int a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 248) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  return result;
}

uint64_t geom::sparse_linear_solver<float>::add_entry(uint64_t a1, unsigned int a2, unsigned int a3, float a4)
{
  v11 = a4;
  v12 = __PAIR64__(a3, a2);
  result = std::__tree<std::__value_type<geom::sparse_linear_solver<float>::entry,float>,std::__map_value_compare<geom::sparse_linear_solver<float>::entry,std::__value_type<geom::sparse_linear_solver<float>::entry,float>,std::less<geom::sparse_linear_solver<float>::entry>,true>,std::allocator<std::__value_type<geom::sparse_linear_solver<float>::entry,float>>>::__emplace_unique_key_args<geom::sparse_linear_solver<float>::entry,geom::sparse_linear_solver<float>::entry,float const&>(a1 + 8, &v12);
  if ((v8 & 1) == 0)
  {
    v9 = v11;
    v10[0] = a2;
    v10[1] = a3;
    v12 = v10;
    result = std::__tree<std::__value_type<geom::sparse_linear_solver<float>::entry,float>,std::__map_value_compare<geom::sparse_linear_solver<float>::entry,std::__value_type<geom::sparse_linear_solver<float>::entry,float>,std::less<geom::sparse_linear_solver<float>::entry>,true>,std::allocator<std::__value_type<geom::sparse_linear_solver<float>::entry,float>>>::__emplace_unique_key_args<geom::sparse_linear_solver<float>::entry,std::piecewise_construct_t const&,std::tuple<geom::sparse_linear_solver<float>::entry&&>,std::tuple<>>(a1 + 8, v10);
    *(result + 36) = v9;
  }

  *(a1 + 248) = 0;
  return result;
}

void geom::sparse_linear_solver<float>::clear_enrties(uint64_t a1)
{
  v1 = a1 + 16;
  _ZNSt3__16__treeINS_12__value_typeIjDv3_fEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE7destroyEPNS_11__tree_nodeIS3_PvEE(a1 + 8, *(a1 + 16));
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 - 8) = v1;
  *(v1 + 232) = 0;
}

uint64_t geom::sparse_linear_solver<float>::get_entry(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5[0] = a2;
  v5[1] = a3;
  if ((a1 + 16) == std::__tree<std::__value_type<geom::sparse_linear_solver<float>::entry,float>,std::__map_value_compare<geom::sparse_linear_solver<float>::entry,std::__value_type<geom::sparse_linear_solver<float>::entry,float>,std::less<geom::sparse_linear_solver<float>::entry>,true>,std::allocator<std::__value_type<geom::sparse_linear_solver<float>::entry,float>>>::find<geom::sparse_linear_solver<float>::entry>(a1 + 8, v5))
  {
    return 0;
  }

  else
  {
    return *std::map<geom::sparse_linear_solver<float>::entry,float,std::less<geom::sparse_linear_solver<float>::entry>,std::allocator<std::pair<geom::sparse_linear_solver<float>::entry const,float>>>::at(a1 + 8, v5) | 0x100000000;
  }
}

uint64_t std::map<geom::sparse_linear_solver<float>::entry,float,std::less<geom::sparse_linear_solver<float>::entry>,std::allocator<std::pair<geom::sparse_linear_solver<float>::entry const,float>>>::at(uint64_t a1, unsigned int *a2)
{
  v2 = *std::__tree<std::__value_type<geom::sparse_linear_solver<float>::entry,float>,std::__map_value_compare<geom::sparse_linear_solver<float>::entry,std::__value_type<geom::sparse_linear_solver<float>::entry,float>,std::less<geom::sparse_linear_solver<float>::entry>,true>,std::allocator<std::__value_type<geom::sparse_linear_solver<float>::entry,float>>>::__find_equal<geom::sparse_linear_solver<float>::entry>(a1, &v4, a2);
  if (!v2)
  {
    abort();
  }

  return v2 + 36;
}

BOOL geom::sparse_linear_solver<float>::factor(unsigned int *a1, unsigned int a2)
{
  v5 = *(a1 + 4);
  v4 = a1 + 8;
  *(a1 + 5) = v5;
  v6 = *(a1 + 7);
  *(a1 + 8) = v6;
  v7 = a1[1];
  a1[52] = *a1;
  v8 = a1 + 52;
  *(a1 + 236) = 1;
  v9 = *(a1 + 10);
  *(a1 + 11) = v9;
  a1[53] = v7;
  *(a1 + 30) = v9;
  *(a1 + 27) = v5;
  *(a1 + 28) = v6;
  v10 = v7 + 1;
  if (a2 > 1)
  {
    *__x = 0;
    std::vector<unsigned long long>::resize(v4, v10, __x);
    v32 = *(a1 + 3);
    __x[0] = 0;
    std::vector<unsigned int>::resize((a1 + 14), v32, __x);
    v33 = *(a1 + 3);
    __x[0] = 0;
    std::vector<float>::resize(a1 + 10, v33, __x, v34);
    *(a1 + 116) &= 0xFFF2u;
    v35 = *(a1 + 4);
    v36 = *(a1 + 7);
    *(a1 + 27) = v35;
    *(a1 + 28) = v36;
    v37 = *(a1 + 10);
    *(a1 + 30) = v37;
    v38 = *(a1 + 1);
    if (v38 != a1 + 4)
    {
      v39 = 0;
      do
      {
        ++v35[v38[8] + 1];
        *(v36 + 4 * v39) = v38[7];
        *(v37 + 4 * v39) = v38[9];
        v40 = *(v38 + 1);
        if (v40)
        {
          do
          {
            v41 = v40;
            v40 = *v40;
          }

          while (v40);
        }

        else
        {
          do
          {
            v41 = *(v38 + 2);
            v23 = *v41 == v38;
            v38 = v41;
          }

          while (!v23);
        }

        ++v39;
        v38 = v41;
      }

      while (v41 != a1 + 4);
    }

    v42 = a1[53];
    if (v42)
    {
      if (v42 + 1 > 2)
      {
        v43 = v42 + 1;
      }

      else
      {
        v43 = 2;
      }

      v46 = *v35;
      v44 = v35 + 1;
      v45 = v46;
      v47 = v43 - 1;
      do
      {
        v45 += *v44;
        *v44++ = v45;
        --v47;
      }

      while (v47);
    }

    v48 = *(a1 + 14);
    *&v54.structure.rowCount = *v8;
    *&v54.structure.rowIndices = v48;
    v54.data = *(a1 + 30);
    *&sfoptions.control = xmmword_286292FE8;
    *&sfoptions.ignoreRowsAndColumns = *algn_286292FF8;
    sfoptions.free = qword_286293008;
    sfoptions.reportError = geom::sparse_linear_solver<float>::factor(geom_factorization_type)::{lambda(char const*)#1}::__invoke;
    v52 = *ymmword_2500D1448;
    v31 = SparseFactorizationQR;
  }

  else
  {
    *__x = 0;
    std::vector<unsigned long long>::resize(v4, v10, __x);
    v11 = *(a1 + 3);
    __x[0] = 0;
    std::vector<unsigned int>::resize((a1 + 14), v11, __x);
    v12 = *a1 + ((*(a1 + 3) - *a1) >> 1);
    __x[0] = 0;
    std::vector<float>::resize(a1 + 10, v12, __x, v13);
    *(a1 + 116) = a1[58] & 0xFFF0 | 0xE;
    v14 = *(a1 + 4);
    v15 = *(a1 + 7);
    *(a1 + 27) = v14;
    *(a1 + 28) = v15;
    v16 = *(a1 + 10);
    *(a1 + 30) = v16;
    v17 = *(a1 + 1);
    if (v17 != a1 + 4)
    {
      v18 = 0;
      do
      {
        v19 = v17[7];
        v20 = v17[8];
        if (v19 >= v20)
        {
          ++v14[v20 + 1];
          *(v15 + 4 * v18) = v19;
          *(v16 + 4 * v18++) = v17[9];
        }

        v21 = *(v17 + 1);
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = *(v17 + 2);
            v23 = *v22 == v17;
            v17 = v22;
          }

          while (!v23);
        }

        v17 = v22;
      }

      while (v22 != a1 + 4);
    }

    v24 = a1[53];
    if (v24)
    {
      if (v24 + 1 > 2)
      {
        v25 = v24 + 1;
      }

      else
      {
        v25 = 2;
      }

      v28 = *v14;
      v26 = v14 + 1;
      v27 = v28;
      v29 = v25 - 1;
      do
      {
        v27 += *v26;
        *v26++ = v27;
        --v29;
      }

      while (v29);
    }

    v30 = *(a1 + 14);
    *&v54.structure.rowCount = *v8;
    *&v54.structure.rowIndices = v30;
    v54.data = *(a1 + 30);
    *&sfoptions.control = xmmword_286292FE8;
    *&sfoptions.ignoreRowsAndColumns = *algn_286292FF8;
    sfoptions.free = qword_286293008;
    sfoptions.reportError = geom::sparse_linear_solver<float>::factor(geom_factorization_type)::{lambda(char const*)#1}::__invoke;
    v52 = *ymmword_2500D1448;
    v31 = a2;
  }

  SparseFactor(v31, &v54, &sfoptions, &v52, __x);
  v49 = v59;
  *(a1 + 38) = v58;
  *(a1 + 42) = v49;
  *(a1 + 46) = v60;
  *(a1 + 25) = v61;
  *(a1 + 26) = *__x;
  v50 = v57;
  *(a1 + 30) = v56;
  *(a1 + 34) = v50;
  result = a1[26] == 0;
  *(a1 + 248) = result;
  return result;
}

double SparseFactor@<D0>(SparseFactorization_t a1@<W0>, SparseMatrix_Float *a2@<X1>, SparseSymbolicFactorOptions *sfoptions@<X2>, SparseNumericFactorOptions *a4@<X3>, uint64_t a5@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2->structure.rowCount <= 0)
  {
    if (!sfoptions->reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        SparseFactor();
      }

      goto LABEL_34;
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "%s.rowCount must be > 0, but is %d.\n", a4);
    goto LABEL_22;
  }

  columnCount = a2->structure.columnCount;
  if (columnCount <= 0)
  {
    if (!sfoptions->reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        SparseFactor();
      }

      goto LABEL_34;
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "%s.columnCount must be > 0, but is %d.\n", a4);
    goto LABEL_22;
  }

  if (!*(&a2->structure.blockSize + 2))
  {
    if (!sfoptions->reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        SparseFactor();
      }

      goto LABEL_34;
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "%s.blockSize must be > 0, but is %d.]n", a4);
    goto LABEL_22;
  }

  v8 = *&a2->structure.attributes & 0xC;
  if (a2->structure.rowCount != columnCount && v8 == 12)
  {
    if (!sfoptions->reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        SparseFactor();
      }

      goto LABEL_34;
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "%s.attributes.kind=SparseSymmetric, but %s.rowCount (%d) != %s.columnCount (%d).\n", a4);
LABEL_22:
    reportError = sfoptions->reportError;
LABEL_23:
    (reportError)(__str);
LABEL_35:
    result = 0.0;
    *(a5 + 96) = 0;
    *(a5 + 64) = 0u;
    *(a5 + 80) = 0u;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *a5 = -4;
    *(a5 + 8) = -4;
    v14 = *MEMORY[0x277D85DE8];
    return result;
  }

  if ((a1 & 0xFE) == 0x28)
  {
    v10 = *MEMORY[0x277D85DE8];

    _SparseFactorQR_Float(a5, a1, a2, sfoptions, a4);
    return result;
  }

  if (v8 != 12)
  {
    reportError = sfoptions->reportError;
    if (reportError)
    {
      memset(&__str[72], 0, 184);
      strcpy(__str, "Cannot perform symmetric matrix factorization of non-symmetric matrix.\n");
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      SparseFactor();
    }

LABEL_34:
    _SparseTrap();
    goto LABEL_35;
  }

  v13 = *MEMORY[0x277D85DE8];

  _SparseFactorSymmetric_Float(a5, a1, a2, sfoptions, a4);
  return result;
}

uint64_t geom::sparse_linear_solver<float>::solve(uint64_t a1, uint64_t a2, float *a3, uint64_t a4, float *a5)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*(a1 + 248) != 1 || (v5 = a2, *a1 != a2) || (v6 = a4, *(a1 + 4) != a4))
  {
    result = 0;
    goto LABEL_10;
  }

  v7 = *(a1 + 104);
  v8 = *(a1 + 152);
  v9 = *(a1 + 184);
  *&Factored.userFactorStorage = *(a1 + 168);
  *&Factored.solveWorkspaceRequiredStatic = v9;
  v23 = *(a1 + 200);
  v10 = *(a1 + 120);
  *&Factored.status = v7;
  *&Factored.symbolicFactorization.columnCount = v10;
  *&Factored.symbolicFactorization.workspaceSize_Float = *(a1 + 136);
  *&Factored.symbolicFactorization.factorSize_Float = v8;
  if (DWORD2(v7) || !Factored.symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      geom::sparse_linear_solver<float>::solve();
    }

    goto LABEL_7;
  }

  _SparseGetOptionsFromSymbolicFactor(&v26, &Factored.symbolicFactorization);
  reportError = v26.reportError;
  if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float || Factored.status || !Factored.solveWorkspaceRequiredStatic)
  {
    if (!v26.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        geom::sparse_linear_solver<float>::solve();
      }

      goto LABEL_7;
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    memset(&v26, 0, sizeof(v26));
    snprintf(&v26, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_37:
    (reportError)(&v26);
    goto LABEL_8;
  }

  if ((*&Factored.attributes ^ *&Factored.symbolicFactorization.attributes))
  {
    v16 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  else
  {
    v16 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  if ((*&Factored.attributes ^ *&Factored.symbolicFactorization.attributes))
  {
    v17 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  else
  {
    v17 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  if (BYTE1(Factored.symbolicFactorization.factorization) == 40)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  if (v17 != v6)
  {
    if (!v26.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        geom::sparse_linear_solver<float>::solve();
      }

      goto LABEL_7;
    }

LABEL_36:
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    memset(&v26, 0, sizeof(v26));
    snprintf(&v26, 0x100uLL, "%s (size %dx1) does not match dimensions of matrix factorization %s (%d x %d).\n");
    goto LABEL_37;
  }

  if (v18 != v5)
  {
    if (!v26.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        geom::sparse_linear_solver<float>::solve();
      }

      goto LABEL_7;
    }

    goto LABEL_36;
  }

  free = v26.free;
  RHS.rowCount = v5;
  RHS.columnCount = 1;
  *&RHS.attributes = 0;
  RHS.data = a3;
  RHS.columnStride = v5;
  *&Soln.attributes = 0;
  Soln.data = a5;
  Soln.rowCount = v6;
  Soln.columnCount = 1;
  Soln.columnStride = v6;
  v20 = (v26.malloc)(v23 + Factored.solveWorkspaceRequiredPerRHS);
  if (v20)
  {
    v21 = v20;
    _SparseSolveOpaque_Float(&Factored, &RHS, &Soln, v20);
    (free)(v21);
    goto LABEL_8;
  }

  if (reportError)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    memset(&v26, 0, sizeof(v26));
    snprintf(&v26, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
    goto LABEL_37;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    geom::sparse_linear_solver<float>::solve();
  }

LABEL_7:
  _SparseTrap();
LABEL_8:
  result = 1;
LABEL_10:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom::sparse_linear_solver<float>::solve(uint64_t a1, uint64_t a2, float **a3, int16x4_t a4)
{
  v7 = *(a1 + 4);
  v9 = 0;
  std::vector<float>::resize(a3, v7, &v9, a4);
  return geom::sparse_linear_solver<float>::solve(a1, (*(a2 + 8) - *a2) >> 2, *a2, a3[1] - *a3, *a3);
}

uint64_t geom::sparse_linear_solver<float>::solve(unsigned int *a1, uint64_t a2, float *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(a1 + 248) == 1)
  {
    v3 = a2;
    v4 = *a1;
    if (v4 == a1[1] && v4 == a2)
    {
      v7 = *(a1 + 26);
      v8 = *(a1 + 38);
      v9 = *(a1 + 46);
      *&Factored.userFactorStorage = *(a1 + 42);
      *&Factored.solveWorkspaceRequiredStatic = v9;
      v19 = *(a1 + 25);
      v10 = *(a1 + 30);
      *&Factored.status = v7;
      *&Factored.symbolicFactorization.columnCount = v10;
      *&Factored.symbolicFactorization.workspaceSize_Float = *(a1 + 34);
      *&Factored.symbolicFactorization.factorSize_Float = v8;
      if (DWORD2(v7) || !Factored.symbolicFactorization.workspaceSize_Float)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          geom::sparse_linear_solver<float>::solve();
        }

        goto LABEL_10;
      }

      _SparseGetOptionsFromSymbolicFactor(&v21, &Factored.symbolicFactorization);
      reportError = v21.reportError;
      if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float || Factored.status || !Factored.solveWorkspaceRequiredStatic)
      {
        if (!v21.reportError)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            geom::sparse_linear_solver<float>::solve();
          }

          goto LABEL_10;
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        memset(&v21, 0, sizeof(v21));
        snprintf(&v21, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
      }

      else
      {
        v14 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
        if (Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization) > v14)
        {
          v14 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
        }

        if (v14 == v3)
        {
          free = v21.free;
          Soln.rowCount = v3;
          Soln.columnCount = 1;
          *&Soln.attributes = 0;
          Soln.data = a3;
          Soln.columnStride = v3;
          v16 = (v21.malloc)(v19 + Factored.solveWorkspaceRequiredPerRHS);
          if (v16)
          {
            v17 = v16;
            _SparseSolveOpaque_Float(&Factored, 0, &Soln, v16);
            (free)(v17);
            goto LABEL_11;
          }

          if (reportError)
          {
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            v22 = 0u;
            memset(&v21, 0, sizeof(v21));
            snprintf(&v21, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
            goto LABEL_31;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            geom::sparse_linear_solver<float>::solve();
          }

LABEL_10:
          _SparseTrap();
LABEL_11:
          result = 1;
          goto LABEL_12;
        }

        if (!v21.reportError)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            geom::sparse_linear_solver<float>::solve();
          }

          goto LABEL_10;
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        memset(&v21, 0, sizeof(v21));
        snprintf(&v21, 0x100uLL, "%s.count (%d) is not equal to largest dimension of matrix factorization %s.\n");
      }

LABEL_31:
      (reportError)(&v21);
      goto LABEL_11;
    }
  }

  result = 0;
LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom::sparse_linear_solver<double>::add_entry(uint64_t a1, unsigned int a2, unsigned int a3, double a4)
{
  v11 = a4;
  v12 = __PAIR64__(a3, a2);
  result = std::__tree<std::__value_type<geom::sparse_linear_solver<double>::entry,double>,std::__map_value_compare<geom::sparse_linear_solver<double>::entry,std::__value_type<geom::sparse_linear_solver<double>::entry,double>,std::less<geom::sparse_linear_solver<double>::entry>,true>,std::allocator<std::__value_type<geom::sparse_linear_solver<double>::entry,double>>>::__emplace_unique_key_args<geom::sparse_linear_solver<double>::entry,geom::sparse_linear_solver<double>::entry,double const&>(a1 + 8, &v12);
  if ((v8 & 1) == 0)
  {
    v9 = v11;
    v10[0] = a2;
    v10[1] = a3;
    v12 = v10;
    result = std::__tree<std::__value_type<geom::sparse_linear_solver<double>::entry,double>,std::__map_value_compare<geom::sparse_linear_solver<double>::entry,std::__value_type<geom::sparse_linear_solver<double>::entry,double>,std::less<geom::sparse_linear_solver<double>::entry>,true>,std::allocator<std::__value_type<geom::sparse_linear_solver<double>::entry,double>>>::__emplace_unique_key_args<geom::sparse_linear_solver<double>::entry,std::piecewise_construct_t const&,std::tuple<geom::sparse_linear_solver<double>::entry&&>,std::tuple<>>(a1 + 8, v10);
    *(result + 40) = v9;
  }

  *(a1 + 248) = 0;
  return result;
}

uint64_t geom::sparse_linear_solver<double>::get_entry(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5[0] = a2;
  v5[1] = a3;
  if ((a1 + 16) == std::__tree<std::__value_type<geom::sparse_linear_solver<double>::entry,double>,std::__map_value_compare<geom::sparse_linear_solver<double>::entry,std::__value_type<geom::sparse_linear_solver<double>::entry,double>,std::less<geom::sparse_linear_solver<double>::entry>,true>,std::allocator<std::__value_type<geom::sparse_linear_solver<double>::entry,double>>>::find<geom::sparse_linear_solver<double>::entry>(a1 + 8, v5))
  {
    return 0;
  }

  else
  {
    return *std::map<geom::sparse_linear_solver<double>::entry,double,std::less<geom::sparse_linear_solver<double>::entry>,std::allocator<std::pair<geom::sparse_linear_solver<double>::entry const,double>>>::at(a1 + 8, v5);
  }
}

uint64_t std::map<geom::sparse_linear_solver<double>::entry,double,std::less<geom::sparse_linear_solver<double>::entry>,std::allocator<std::pair<geom::sparse_linear_solver<double>::entry const,double>>>::at(uint64_t a1, unsigned int *a2)
{
  v2 = *std::__tree<std::__value_type<geom::sparse_linear_solver<double>::entry,double>,std::__map_value_compare<geom::sparse_linear_solver<double>::entry,std::__value_type<geom::sparse_linear_solver<double>::entry,double>,std::less<geom::sparse_linear_solver<double>::entry>,true>,std::allocator<std::__value_type<geom::sparse_linear_solver<double>::entry,double>>>::__find_equal<geom::sparse_linear_solver<double>::entry>(a1, &v4, a2);
  if (!v2)
  {
    abort();
  }

  return v2 + 40;
}

BOOL geom::sparse_linear_solver<double>::factor(unsigned int *a1, unsigned int a2)
{
  v5 = *(a1 + 4);
  v4 = a1 + 8;
  *(a1 + 5) = v5;
  v6 = *(a1 + 7);
  *(a1 + 8) = v6;
  v7 = a1[1];
  a1[52] = *a1;
  v8 = a1 + 52;
  *(a1 + 236) = 1;
  v9 = *(a1 + 10);
  *(a1 + 11) = v9;
  a1[53] = v7;
  *(a1 + 30) = v9;
  *(a1 + 27) = v5;
  *(a1 + 28) = v6;
  v10 = v7 + 1;
  if (a2 > 1)
  {
    *__x = 0;
    std::vector<unsigned long long>::resize(v4, v10, __x);
    v31 = *(a1 + 3);
    __x[0] = 0;
    std::vector<unsigned int>::resize((a1 + 14), v31, __x);
    v32 = *(a1 + 3);
    *__x = 0;
    std::vector<double>::resize(a1 + 10, v32, __x);
    *(a1 + 116) &= 0xFFF2u;
    v33 = *(a1 + 4);
    v34 = *(a1 + 7);
    *(a1 + 27) = v33;
    *(a1 + 28) = v34;
    v35 = *(a1 + 10);
    *(a1 + 30) = v35;
    v36 = *(a1 + 1);
    if (v36 != a1 + 4)
    {
      v37 = 0;
      do
      {
        ++v33[v36[9] + 1];
        *(v34 + 4 * v37) = v36[8];
        *(v35 + 8 * v37) = *(v36 + 5);
        v38 = *(v36 + 1);
        if (v38)
        {
          do
          {
            v39 = v38;
            v38 = *v38;
          }

          while (v38);
        }

        else
        {
          do
          {
            v39 = *(v36 + 2);
            v22 = *v39 == v36;
            v36 = v39;
          }

          while (!v22);
        }

        ++v37;
        v36 = v39;
      }

      while (v39 != a1 + 4);
    }

    v40 = a1[53];
    if (v40)
    {
      if (v40 + 1 > 2)
      {
        v41 = v40 + 1;
      }

      else
      {
        v41 = 2;
      }

      v44 = *v33;
      v42 = v33 + 1;
      v43 = v44;
      v45 = v41 - 1;
      do
      {
        v43 += *v42;
        *v42++ = v43;
        --v45;
      }

      while (v45);
    }

    v46 = *(a1 + 14);
    *&v52.structure.rowCount = *v8;
    *&v52.structure.rowIndices = v46;
    v52.data = *(a1 + 30);
    *&sfoptions.control = xmmword_286292FE8;
    *&sfoptions.ignoreRowsAndColumns = *algn_286292FF8;
    sfoptions.free = qword_286293008;
    sfoptions.reportError = geom::sparse_linear_solver<double>::factor(geom_factorization_type)::{lambda(char const*)#1}::__invoke;
    v50 = *ymmword_2500D1468;
    v30 = SparseFactorizationQR;
  }

  else
  {
    *__x = 0;
    std::vector<unsigned long long>::resize(v4, v10, __x);
    v11 = *(a1 + 3);
    __x[0] = 0;
    std::vector<unsigned int>::resize((a1 + 14), v11, __x);
    v12 = *a1 + ((*(a1 + 3) - *a1) >> 1);
    *__x = 0;
    std::vector<double>::resize(a1 + 10, v12, __x);
    *(a1 + 116) = a1[58] & 0xFFF0 | 0xE;
    v13 = *(a1 + 4);
    v14 = *(a1 + 7);
    *(a1 + 27) = v13;
    *(a1 + 28) = v14;
    v15 = *(a1 + 10);
    *(a1 + 30) = v15;
    v16 = *(a1 + 1);
    if (v16 != a1 + 4)
    {
      v17 = 0;
      do
      {
        v18 = v16[8];
        v19 = v16[9];
        if (v18 >= v19)
        {
          ++v13[v19 + 1];
          *(v14 + 4 * v17) = v18;
          *(v15 + 8 * v17++) = *(v16 + 5);
        }

        v20 = *(v16 + 1);
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = *(v16 + 2);
            v22 = *v21 == v16;
            v16 = v21;
          }

          while (!v22);
        }

        v16 = v21;
      }

      while (v21 != a1 + 4);
    }

    v23 = a1[53];
    if (v23)
    {
      if (v23 + 1 > 2)
      {
        v24 = v23 + 1;
      }

      else
      {
        v24 = 2;
      }

      v27 = *v13;
      v25 = v13 + 1;
      v26 = v27;
      v28 = v24 - 1;
      do
      {
        v26 += *v25;
        *v25++ = v26;
        --v28;
      }

      while (v28);
    }

    v29 = *(a1 + 14);
    *&v52.structure.rowCount = *v8;
    *&v52.structure.rowIndices = v29;
    v52.data = *(a1 + 30);
    *&sfoptions.control = xmmword_286292FE8;
    *&sfoptions.ignoreRowsAndColumns = *algn_286292FF8;
    sfoptions.free = qword_286293008;
    sfoptions.reportError = geom::sparse_linear_solver<double>::factor(geom_factorization_type)::{lambda(char const*)#1}::__invoke;
    v50 = *ymmword_2500D1468;
    v30 = a2;
  }

  SparseFactor(v30, &v52, &sfoptions, &v50, __x);
  v47 = v57;
  *(a1 + 38) = v56;
  *(a1 + 42) = v47;
  *(a1 + 46) = v58;
  *(a1 + 25) = v59;
  *(a1 + 26) = *__x;
  v48 = v55;
  *(a1 + 30) = v54;
  *(a1 + 34) = v48;
  result = a1[26] == 0;
  *(a1 + 248) = result;
  return result;
}

double SparseFactor@<D0>(SparseFactorization_t a1@<W0>, SparseMatrix_Double *a2@<X1>, SparseSymbolicFactorOptions *sfoptions@<X2>, SparseNumericFactorOptions *a4@<X3>, uint64_t a5@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2->structure.rowCount <= 0)
  {
    if (!sfoptions->reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        SparseFactor();
      }

      goto LABEL_34;
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "%s.rowCount must be > 0, but is %d.\n", a4);
    goto LABEL_22;
  }

  columnCount = a2->structure.columnCount;
  if (columnCount <= 0)
  {
    if (!sfoptions->reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        SparseFactor();
      }

      goto LABEL_34;
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "%s.columnCount must be > 0, but is %d.\n", a4);
    goto LABEL_22;
  }

  if (!*(&a2->structure.blockSize + 2))
  {
    if (!sfoptions->reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        SparseFactor();
      }

      goto LABEL_34;
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "%s.blockSize must be > 0, but is %d.]n", a4);
    goto LABEL_22;
  }

  v8 = *&a2->structure.attributes & 0xC;
  if (a2->structure.rowCount != columnCount && v8 == 12)
  {
    if (!sfoptions->reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        SparseFactor();
      }

      goto LABEL_34;
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "%s.attributes.kind=SparseSymmetric, but %s.rowCount (%d) != %s.columnCount (%d).\n", a4);
LABEL_22:
    reportError = sfoptions->reportError;
LABEL_23:
    (reportError)(__str);
LABEL_35:
    result = 0.0;
    *(a5 + 96) = 0;
    *(a5 + 64) = 0u;
    *(a5 + 80) = 0u;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *a5 = -4;
    *(a5 + 8) = -4;
    v14 = *MEMORY[0x277D85DE8];
    return result;
  }

  if ((a1 & 0xFE) == 0x28)
  {
    v10 = *MEMORY[0x277D85DE8];

    _SparseFactorQR_Double(a5, a1, a2, sfoptions, a4);
    return result;
  }

  if (v8 != 12)
  {
    reportError = sfoptions->reportError;
    if (reportError)
    {
      memset(&__str[72], 0, 184);
      strcpy(__str, "Cannot perform symmetric matrix factorization of non-symmetric matrix.\n");
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      SparseFactor();
    }

LABEL_34:
    _SparseTrap();
    goto LABEL_35;
  }

  v13 = *MEMORY[0x277D85DE8];

  _SparseFactorSymmetric_Double(a5, a1, a2, sfoptions, a4);
  return result;
}

uint64_t geom::sparse_linear_solver<double>::solve(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, double *a5)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*(a1 + 248) != 1 || (v5 = a2, *a1 != a2) || (v6 = a4, *(a1 + 4) != a4))
  {
    result = 0;
    goto LABEL_10;
  }

  v7 = *(a1 + 104);
  v8 = *(a1 + 152);
  v9 = *(a1 + 184);
  *&Factored.userFactorStorage = *(a1 + 168);
  *&Factored.solveWorkspaceRequiredStatic = v9;
  v23 = *(a1 + 200);
  v10 = *(a1 + 120);
  *&Factored.status = v7;
  *&Factored.symbolicFactorization.columnCount = v10;
  *&Factored.symbolicFactorization.workspaceSize_Float = *(a1 + 136);
  *&Factored.symbolicFactorization.factorSize_Float = v8;
  if (DWORD2(v7) || !Factored.symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      geom::sparse_linear_solver<float>::solve();
    }

    goto LABEL_7;
  }

  _SparseGetOptionsFromSymbolicFactor(&v26, &Factored.symbolicFactorization);
  reportError = v26.reportError;
  if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float || Factored.status || !Factored.solveWorkspaceRequiredStatic)
  {
    if (!v26.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        geom::sparse_linear_solver<float>::solve();
      }

      goto LABEL_7;
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    memset(&v26, 0, sizeof(v26));
    snprintf(&v26, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_37:
    (reportError)(&v26);
    goto LABEL_8;
  }

  if ((*&Factored.attributes ^ *&Factored.symbolicFactorization.attributes))
  {
    v16 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  else
  {
    v16 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  if ((*&Factored.attributes ^ *&Factored.symbolicFactorization.attributes))
  {
    v17 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  else
  {
    v17 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
  }

  if (BYTE1(Factored.symbolicFactorization.factorization) == 40)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  if (v17 != v6)
  {
    if (!v26.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        geom::sparse_linear_solver<float>::solve();
      }

      goto LABEL_7;
    }

LABEL_36:
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    memset(&v26, 0, sizeof(v26));
    snprintf(&v26, 0x100uLL, "%s (size %dx1) does not match dimensions of matrix factorization %s (%d x %d).\n");
    goto LABEL_37;
  }

  if (v18 != v5)
  {
    if (!v26.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        geom::sparse_linear_solver<float>::solve();
      }

      goto LABEL_7;
    }

    goto LABEL_36;
  }

  free = v26.free;
  RHS.rowCount = v5;
  RHS.columnCount = 1;
  *&RHS.attributes = 0;
  RHS.data = a3;
  RHS.columnStride = v5;
  *&Soln.attributes = 0;
  Soln.data = a5;
  Soln.rowCount = v6;
  Soln.columnCount = 1;
  Soln.columnStride = v6;
  v20 = (v26.malloc)(v23 + Factored.solveWorkspaceRequiredPerRHS);
  if (v20)
  {
    v21 = v20;
    _SparseSolveOpaque_Double(&Factored, &RHS, &Soln, v20);
    (free)(v21);
    goto LABEL_8;
  }

  if (reportError)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    memset(&v26, 0, sizeof(v26));
    snprintf(&v26, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
    goto LABEL_37;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    geom::sparse_linear_solver<float>::solve();
  }

LABEL_7:
  _SparseTrap();
LABEL_8:
  result = 1;
LABEL_10:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom::sparse_linear_solver<double>::solve(uint64_t a1, uint64_t a2, double **a3)
{
  v6 = *(a1 + 4);
  v8 = 0;
  std::vector<double>::resize(a3, v6, &v8);
  return geom::sparse_linear_solver<double>::solve(a1, (*(a2 + 8) - *a2) >> 3, *a2, a3[1] - *a3, *a3);
}

uint64_t geom::sparse_linear_solver<double>::solve(unsigned int *a1, uint64_t a2, double *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(a1 + 248) == 1)
  {
    v3 = a2;
    v4 = *a1;
    if (v4 == a1[1] && v4 == a2)
    {
      v7 = *(a1 + 26);
      v8 = *(a1 + 38);
      v9 = *(a1 + 46);
      *&Factored.userFactorStorage = *(a1 + 42);
      *&Factored.solveWorkspaceRequiredStatic = v9;
      v19 = *(a1 + 25);
      v10 = *(a1 + 30);
      *&Factored.status = v7;
      *&Factored.symbolicFactorization.columnCount = v10;
      *&Factored.symbolicFactorization.workspaceSize_Float = *(a1 + 34);
      *&Factored.symbolicFactorization.factorSize_Float = v8;
      if (DWORD2(v7) || !Factored.symbolicFactorization.workspaceSize_Float)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          geom::sparse_linear_solver<float>::solve();
        }

        goto LABEL_10;
      }

      _SparseGetOptionsFromSymbolicFactor(&v21, &Factored.symbolicFactorization);
      reportError = v21.reportError;
      if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float || Factored.status || !Factored.solveWorkspaceRequiredStatic)
      {
        if (!v21.reportError)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            geom::sparse_linear_solver<float>::solve();
          }

          goto LABEL_10;
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        memset(&v21, 0, sizeof(v21));
        snprintf(&v21, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
      }

      else
      {
        v14 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
        if (Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization) > v14)
        {
          v14 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
        }

        if (v14 == v3)
        {
          free = v21.free;
          Soln.rowCount = v3;
          Soln.columnCount = 1;
          *&Soln.attributes = 0;
          Soln.data = a3;
          Soln.columnStride = v3;
          v16 = (v21.malloc)(v19 + Factored.solveWorkspaceRequiredPerRHS);
          if (v16)
          {
            v17 = v16;
            _SparseSolveOpaque_Double(&Factored, 0, &Soln, v16);
            (free)(v17);
            goto LABEL_11;
          }

          if (reportError)
          {
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            v22 = 0u;
            memset(&v21, 0, sizeof(v21));
            snprintf(&v21, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
            goto LABEL_31;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            geom::sparse_linear_solver<float>::solve();
          }

LABEL_10:
          _SparseTrap();
LABEL_11:
          result = 1;
          goto LABEL_12;
        }

        if (!v21.reportError)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            geom::sparse_linear_solver<float>::solve();
          }

          goto LABEL_10;
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        memset(&v21, 0, sizeof(v21));
        snprintf(&v21, 0x100uLL, "%s.count (%d) is not equal to largest dimension of matrix factorization %s.\n");
      }

LABEL_31:
      (reportError)(&v21);
      goto LABEL_11;
    }
  }

  result = 0;
LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom::compute_svd(geom *this, unsigned __int16 a2, unsigned __int16 a3, double *a4, double *a5, double *a6, double *a7)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = dgesvd_NEWLAPACK();
  MEMORY[0x28223BE20](v7, v8);
  dgesvd_NEWLAPACK();
  result = 1;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom::compute_svd(geom *this, unsigned __int16 a2, unsigned __int16 a3, float *a4, float *a5, float *a6, float *a7)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = sgesvd_NEWLAPACK();
  MEMORY[0x28223BE20](v7, v8);
  sgesvd_NEWLAPACK();
  result = 1;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom_compute_svd_3x3_f(_OWORD *a1, _OWORD *a2, _OWORD *a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, float *a10)
{
  v11[0] = a4;
  v11[1] = a5;
  v11[2] = a6;
  return geom::compute_svd_3x3<float>(v11, a1, a2, a3, a8, a9, a10);
}

uint64_t std::__tree<std::__value_type<geom::sparse_linear_solver<float>::entry,float>,std::__map_value_compare<geom::sparse_linear_solver<float>::entry,std::__value_type<geom::sparse_linear_solver<float>::entry,float>,std::less<geom::sparse_linear_solver<float>::entry>,true>,std::allocator<std::__value_type<geom::sparse_linear_solver<float>::entry,float>>>::__emplace_unique_key_args<geom::sparse_linear_solver<float>::entry,geom::sparse_linear_solver<float>::entry,float const&>(uint64_t a1, unsigned int *a2)
{
  v2 = *std::__tree<std::__value_type<geom::sparse_linear_solver<float>::entry,float>,std::__map_value_compare<geom::sparse_linear_solver<float>::entry,std::__value_type<geom::sparse_linear_solver<float>::entry,float>,std::less<geom::sparse_linear_solver<float>::entry>,true>,std::allocator<std::__value_type<geom::sparse_linear_solver<float>::entry,float>>>::__find_equal<geom::sparse_linear_solver<float>::entry>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<geom::sparse_linear_solver<float>::entry,float>,std::__map_value_compare<geom::sparse_linear_solver<float>::entry,std::__value_type<geom::sparse_linear_solver<float>::entry,float>,std::less<geom::sparse_linear_solver<float>::entry>,true>,std::allocator<std::__value_type<geom::sparse_linear_solver<float>::entry,float>>>::__find_equal<geom::sparse_linear_solver<float>::entry>(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v7 = *a3;
    v6 = a3[1];
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 8);
        if (__PAIR64__(v6, v7) >= __PAIR64__(v9, *(v8 + 7)))
        {
          break;
        }

        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6 && *(v8 + 7) >= v7)
      {
        break;
      }

      result = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = result;
  }

LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t std::__tree<std::__value_type<geom::sparse_linear_solver<float>::entry,float>,std::__map_value_compare<geom::sparse_linear_solver<float>::entry,std::__value_type<geom::sparse_linear_solver<float>::entry,float>,std::less<geom::sparse_linear_solver<float>::entry>,true>,std::allocator<std::__value_type<geom::sparse_linear_solver<float>::entry,float>>>::__emplace_unique_key_args<geom::sparse_linear_solver<float>::entry,std::piecewise_construct_t const&,std::tuple<geom::sparse_linear_solver<float>::entry&&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *std::__tree<std::__value_type<geom::sparse_linear_solver<float>::entry,float>,std::__map_value_compare<geom::sparse_linear_solver<float>::entry,std::__value_type<geom::sparse_linear_solver<float>::entry,float>,std::less<geom::sparse_linear_solver<float>::entry>,true>,std::allocator<std::__value_type<geom::sparse_linear_solver<float>::entry,float>>>::__find_equal<geom::sparse_linear_solver<float>::entry>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<geom::sparse_linear_solver<float>::entry,float>,std::__map_value_compare<geom::sparse_linear_solver<float>::entry,std::__value_type<geom::sparse_linear_solver<float>::entry,float>,std::less<geom::sparse_linear_solver<float>::entry>,true>,std::allocator<std::__value_type<geom::sparse_linear_solver<float>::entry,float>>>::find<geom::sparse_linear_solver<float>::entry>(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = v2;
  do
  {
    v8 = *(v3 + 8);
    if (v8 >= v6)
    {
      if (v8 == v6)
      {
        v9 = *(v3 + 7);
        v10 = v9 >= v5;
        v11 = v9 < v5;
        if (v10)
        {
          v7 = v3;
        }

        v3 += v11;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2 || __PAIR64__(v6, v5) < *(v7 + 28))
  {
    return v2;
  }

  return v7;
}

uint64_t std::__tree<std::__value_type<geom::sparse_linear_solver<double>::entry,double>,std::__map_value_compare<geom::sparse_linear_solver<double>::entry,std::__value_type<geom::sparse_linear_solver<double>::entry,double>,std::less<geom::sparse_linear_solver<double>::entry>,true>,std::allocator<std::__value_type<geom::sparse_linear_solver<double>::entry,double>>>::__emplace_unique_key_args<geom::sparse_linear_solver<double>::entry,geom::sparse_linear_solver<double>::entry,double const&>(uint64_t a1, unsigned int *a2)
{
  v2 = *std::__tree<std::__value_type<geom::sparse_linear_solver<double>::entry,double>,std::__map_value_compare<geom::sparse_linear_solver<double>::entry,std::__value_type<geom::sparse_linear_solver<double>::entry,double>,std::less<geom::sparse_linear_solver<double>::entry>,true>,std::allocator<std::__value_type<geom::sparse_linear_solver<double>::entry,double>>>::__find_equal<geom::sparse_linear_solver<double>::entry>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<geom::sparse_linear_solver<double>::entry,double>,std::__map_value_compare<geom::sparse_linear_solver<double>::entry,std::__value_type<geom::sparse_linear_solver<double>::entry,double>,std::less<geom::sparse_linear_solver<double>::entry>,true>,std::allocator<std::__value_type<geom::sparse_linear_solver<double>::entry,double>>>::__find_equal<geom::sparse_linear_solver<double>::entry>(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v7 = *a3;
    v6 = a3[1];
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 9);
        if (__PAIR64__(v6, v7) >= __PAIR64__(v9, *(v8 + 8)))
        {
          break;
        }

        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6 && *(v8 + 8) >= v7)
      {
        break;
      }

      result = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = result;
  }

LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t std::__tree<std::__value_type<geom::sparse_linear_solver<double>::entry,double>,std::__map_value_compare<geom::sparse_linear_solver<double>::entry,std::__value_type<geom::sparse_linear_solver<double>::entry,double>,std::less<geom::sparse_linear_solver<double>::entry>,true>,std::allocator<std::__value_type<geom::sparse_linear_solver<double>::entry,double>>>::__emplace_unique_key_args<geom::sparse_linear_solver<double>::entry,std::piecewise_construct_t const&,std::tuple<geom::sparse_linear_solver<double>::entry&&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *std::__tree<std::__value_type<geom::sparse_linear_solver<double>::entry,double>,std::__map_value_compare<geom::sparse_linear_solver<double>::entry,std::__value_type<geom::sparse_linear_solver<double>::entry,double>,std::less<geom::sparse_linear_solver<double>::entry>,true>,std::allocator<std::__value_type<geom::sparse_linear_solver<double>::entry,double>>>::__find_equal<geom::sparse_linear_solver<double>::entry>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<geom::sparse_linear_solver<double>::entry,double>,std::__map_value_compare<geom::sparse_linear_solver<double>::entry,std::__value_type<geom::sparse_linear_solver<double>::entry,double>,std::less<geom::sparse_linear_solver<double>::entry>,true>,std::allocator<std::__value_type<geom::sparse_linear_solver<double>::entry,double>>>::find<geom::sparse_linear_solver<double>::entry>(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = v2;
  do
  {
    v8 = *(v3 + 9);
    if (v8 >= v6)
    {
      if (v8 == v6)
      {
        v9 = *(v3 + 8);
        v10 = v9 >= v5;
        v11 = v9 < v5;
        if (v10)
        {
          v7 = v3;
        }

        v3 += v11;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2 || __PAIR64__(v6, v5) < v7[4])
  {
    return v2;
  }

  return v7;
}

double geom::triangle_mesh_atlas::copy_face_vertex_uvs(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v9 = *(a2 + 4);
  v10 = ((*(a2 + 48) - *(a2 + 40)) >> 2);
  v11 = *(a1 + 8) - *a1;
  if (v10 <= v11)
  {
    if (v10 < v11)
    {
      *(a1 + 8) = *a1 + v10;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a1, v10 - v11, geom::triangle_mesh_atlas::k_unassigned_vertex);
  }

  std::vector<BOOL>::resize(a5, v9, 0);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm((a1 + 24), (3 * v9));
  v13 = *a3;
  if (a3[1] != *a3)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(v13 + 4 * v15);
      *(*a5 + ((v16 >> 3) & 0x1FFFFFF8)) |= 1 << v16;
      LODWORD(v16) = 3 * v16;
      *(*(a1 + 24) + 8 * v16) = *(*a4 + v14);
      *(*(a1 + 24) + 8 * (v16 + 1)) = *(*a4 + v14 + 8);
      result = *(*a4 + v14 + 16);
      *(*(a1 + 24) + 8 * (v16 + 2)) = result;
      ++v15;
      v13 = *a3;
      v14 += 24;
    }

    while (v15 < (a3[1] - *a3) >> 2);
  }

  return result;
}

double geom::triangle_mesh_atlas::copy_face_vertex_uvs(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, void *a6)
{
  v11 = *(a2 + 4);
  v12 = ((*(a2 + 48) - *(a2 + 40)) >> 2);
  v13 = *(a1 + 8) - *a1;
  if (v12 <= v13)
  {
    if (v12 < v13)
    {
      *(a1 + 8) = *a1 + v12;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a1, v12 - v13, geom::triangle_mesh_atlas::k_unassigned_vertex);
  }

  std::vector<BOOL>::resize(a6, v11, 0);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm((a1 + 24), (3 * v11));
  v15 = *a3;
  if (a3[1] != *a3)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *(v15 + 4 * v17);
      *(*a6 + ((v18 >> 3) & 0x1FFFFFF8)) |= 1 << v18;
      LODWORD(v18) = 3 * v18;
      *(*(a1 + 24) + 8 * v18) = *(*a5 + 8 * *(*a4 + v16));
      *(*(a1 + 24) + 8 * (v18 + 1)) = *(*a5 + 8 * *(*a4 + v16 + 4));
      result = *(*a5 + 8 * *(*a4 + v16 + 8));
      *(*(a1 + 24) + 8 * (v18 + 2)) = result;
      ++v17;
      v15 = *a3;
      v16 += 12;
    }

    while (v17 < (a3[1] - *a3) >> 2);
  }

  return result;
}

double geom::triangle_mesh_atlas::find_face_vertex_uv(geom::triangle_mesh_atlas *this, const geom::triangle_mesh_connectivity *a2, int a3, int a4)
{
  v4 = (*(a2 + 2) + 4 * (3 * a3));
  v5 = *v4;
  if (v4[1] == a4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5 == a4)
  {
    v6 = 0;
  }

  return *(*(this + 3) + 8 * (v6 + 3 * a3));
}

BOOL geom::triangle_mesh_atlas::is_wedge_boundary_a_uv_corner(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v5 = *a5 >> 62;
  v6 = 3 * (*a4 & 0x3FFFFFFF) + (*a4 >> 62);
  v7 = *(a1 + 24);
  if (v5)
  {
    v8 = -1;
  }

  else
  {
    v8 = 2;
  }

  v9 = *(v7 + 8 * v6);
  v10 = vsub_f32(*(v7 + 8 * (v6 + ((*a4 >> 63) ^ 1))), v9);
  v11 = vsub_f32(*(v7 + 8 * (v8 + v5 + 3 * (*a5 & 0x3FFFFFFF))), v9);
  v12 = vmul_f32(v10, v11);
  v13 = vmul_f32(v10, v10);
  v14 = vmul_f32(v11, v11);
  v15 = vsqrt_f32(vadd_f32(vzip1_s32(v13, v14), vzip2_s32(v13, v14)));
  return vdiv_f32(vadd_f32(v12, vdup_lane_s32(v12, 1)), vmul_lane_f32(v15, v15, 1)).f32[0] > -0.5;
}

uint64_t geom::triangle_mesh_atlas::is_vertex_a_uv_corner(geom::triangle_mesh_atlas *this, const geom::triangle_mesh_connectivity *a2, unsigned int a3)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  __p = 0;
  v20 = 0;
  v21 = 0;
  geom::triangle_mesh_atlas::vertex_incident_wedges(this, a2, a3, &v22, &__p);
  v9 = v22;
  v8 = v23;
  v10 = (v23 - v22) >> 2;
  if (v10 > 2 || v23 - v22 == 8 && geom::triangle_mesh_half_edge_connectivity::is_boundary_vertex(a2, a3))
  {
    v11 = 1;
  }

  else if (v8 == v9)
  {
    v11 = 0;
  }

  else
  {
    v13 = 0;
    v14 = v22;
    v15 = 1;
    v16 = __p;
    do
    {
      if (v15 == 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = v14[v15 - 2];
      }

      is_wedge_boundary_a_uv_corner = geom::triangle_mesh_atlas::is_wedge_boundary_a_uv_corner(this, v6, v7, &v16[v17], &v16[v14[v13] - 1]);
      v11 = is_wedge_boundary_a_uv_corner;
      if (v10 <= v15)
      {
        break;
      }

      v13 = v15++;
    }

    while (!is_wedge_boundary_a_uv_corner);
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  return v11;
}

void geom::triangle_mesh_atlas::vertex_incident_wedges(uint64_t a1, geom::triangle_mesh_half_edge_connectivity *a2, unsigned int a3, uint64_t a4, void *a5)
{
  *(a4 + 8) = *a4;
  a5[1] = *a5;
  __p = 0;
  v40 = 0;
  v41 = 0;
  geom::triangle_mesh_half_edge_connectivity::get_incident_faces_to_vertex(a2, a3, &__p);
  v9 = __p;
  v10 = (v40 - __p) >> 2;
  if (v10)
  {
    v11 = 0;
    v12 = (v40 - __p) >> 2;
    while (*(*(a1 + 96) + 4 * *(__p + v11)) == -1)
    {
      ++v11;
      LODWORD(v12) = v12 + 1;
      if (((v40 - __p) >> 2) == v11)
      {
        goto LABEL_60;
      }
    }

    if (!geom::triangle_mesh_half_edge_connectivity::is_boundary_vertex(a2, a3))
    {
      v13 = *(__p + v11);
      v14 = *(a2 + 2);
      v15 = 3 * v13;
      v16 = (v14 + 4 * (3 * v13));
      if (*v16 == a3)
      {
        v17 = 0;
      }

      else if (v16[1] == a3)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16[2] == a3 ? 2 : 255;
      }

      if (v10 != 1)
      {
        v18 = *(a1 + 96);
        v19 = *(v18 + 4 * v13);
        v20 = v17 + v15;
        if (v10 <= 2)
        {
          v21 = 2;
        }

        else
        {
          v21 = v10;
        }

        v22 = v21 - 1;
        while (1)
        {
          v23 = *(__p + (v12 - 1) % v10);
          v24 = (v14 + 4 * (3 * v23));
          if (*v24 == a3)
          {
            v25 = 0;
          }

          else if (v24[1] == a3)
          {
            v25 = 1;
          }

          else
          {
            v25 = v24[2] == a3 ? 2 : 255;
          }

          if (*(v18 + 4 * v23) != v19)
          {
            break;
          }

          if (v19 != -1)
          {
            v26 = vsub_f32(*(*(a1 + 24) + 8 * v20), *(*(a1 + 24) + 8 * (v25 + 3 * v23)));
            if (sqrtf(vaddv_f32(vmul_f32(v26, v26))) > 0.00001)
            {
              break;
            }
          }

          LODWORD(v12) = v12 - 1;
          if (!--v22)
          {
            goto LABEL_32;
          }
        }

        LODWORD(v11) = v12 % v10;
      }
    }

LABEL_32:
    v27 = 0;
    do
    {
      v28 = *(__p + (v27 + v11) % v10);
      v29 = (*(a2 + 2) + 4 * (3 * v28));
      if (*v29 == a3)
      {
        v30 = 0;
      }

      else if (v29[1] == a3)
      {
        v30 = 1;
      }

      else if (v29[2] == a3)
      {
        v30 = 2;
      }

      else
      {
        v30 = 0xFFFFFFFFLL;
      }

      v31 = *(*(a1 + 96) + 4 * v28);
      v32 = *(*(a1 + 24) + 8 * (3 * v28 + v30));
      if (v31 != -1)
      {
        v33 = v28 & 0x3FFFFFFF;
LABEL_54:
        v38 = v33 | (v30 << 62) | ((a3 & 0x3FFFFFFF) << 32);
        std::vector<geom::triangle_mesh_atlas::face_vertex>::push_back[abi:nn200100](a5, &v38);
        goto LABEL_42;
      }

      do
      {
LABEL_42:
        if (++v27 < v10)
        {
          v34 = *(__p + (v11 + v27) % v10);
          v35 = (*(a2 + 2) + 4 * (3 * v34));
          if (*v35 == a3)
          {
            v30 = 0;
          }

          else if (v35[1] == a3)
          {
            v30 = 1;
          }

          else
          {
            v30 = v35[2] == a3 ? 2 : 0xFFFFFFFFLL;
          }

          if (*(*(a1 + 96) + 4 * v34) == v31)
          {
            continue;
          }
        }

        goto LABEL_55;
      }

      while (v31 == -1);
      v36 = vsub_f32(v32, *(*(a1 + 24) + 8 * (3 * v34 + v30)));
      if (sqrtf(vaddv_f32(vmul_f32(v36, v36))) <= 0.00001)
      {
        v33 = v34 & 0x3FFFFFFF;
        goto LABEL_54;
      }

LABEL_55:
      if (v31 != -1)
      {
        LODWORD(v38) = (a5[1] - *a5) >> 3;
        std::vector<unsigned int>::push_back[abi:nn200100](a4, &v38);
      }
    }

    while (v27 < v10);
    v9 = __p;
  }

  if (v9)
  {
LABEL_60:
    v40 = v9;
    operator delete(v9);
  }
}