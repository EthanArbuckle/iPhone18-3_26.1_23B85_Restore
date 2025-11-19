__n128 std::__function::__func<void geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<geom::intersection_volume_heuristic_functor<float,(unsigned char)2>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>,geom::intersection_volume_heuristic_functor<float,(unsigned char)2>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)#1},std::allocator<void geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<geom::intersection_volume_heuristic_functor<float,(unsigned char)2>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>,geom::intersection_volume_heuristic_functor<float,(unsigned char)2>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286291A28;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<geom::intersection_volume_heuristic_functor<float,(unsigned char)2>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>,geom::intersection_volume_heuristic_functor<float,(unsigned char)2>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)#1},std::allocator<void geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<geom::intersection_volume_heuristic_functor<float,(unsigned char)2>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>,geom::intersection_volume_heuristic_functor<float,(unsigned char)2>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t geom::bvh<float,(unsigned char)2>::partition_node_heuristic<geom::intersection_volume_heuristic_functor<float,(unsigned char)2>>(void *a1, unsigned int a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5)
{
  v114 = 0;
  v115 = 0;
  v116 = 0;
  v10 = a2;
  std::vector<geom::bbox<float,(unsigned char)2>>::resize(&v114, a2);
  v111 = 0;
  v112 = 0;
  v113 = 0;
  std::vector<geom::bbox<float,(unsigned char)2>>::resize(&v111, v10);
  __p = 0;
  v109 = 0;
  v110 = 0;
  std::vector<geom::bbox<float,(unsigned char)2>>::resize(&__p, v10);
  memset(&v107, 0, sizeof(v107));
  std::vector<float>::resize(&v107, v10);
  memset(&v106, 0, sizeof(v106));
  v11 = a2 - 1;
  std::vector<float>::resize(&v106, v11);
  v13 = a3;
  v15 = *(a3 + 12);
  v14 = *(a3 + 16);
  v16 = v14 + v15;
  v17 = (a1[4] + 4 * v15);
  if (v14)
  {
    v18 = 4 * v16 - 4 * v15;
    v19 = 0x7F0000007FLL;
    v20 = vneg_f32(0x7F0000007FLL);
    v21 = (a1[4] + 4 * v15);
    do
    {
      v22 = *v21++;
      v23 = *(a1[7] + 8 * v22);
      v20 = vminnm_f32(v20, v23);
      v19 = vmaxnm_f32(v19, v23);
      v18 -= 4;
    }

    while (v18);
  }

  else
  {
    v19 = 0x7F0000007FLL;
    v20 = vneg_f32(0x7F0000007FLL);
  }

  v24 = vsub_f32(v19, v20);
  *v12.i32 = a2;
  v25 = vdiv_f32(v24, vdup_lane_s32(v12, 0));
  if (sqrtf(vaddv_f32(vmul_f32(v25, v25))) <= 0.00001)
  {
    v86 = v15 + (v14 >> 1);
    v87 = 0x7F0000007FLL;
    v88 = vneg_f32(0x7F0000007FLL);
    v89 = v88;
    v90 = 0x7F0000007FLL;
    if (v14 >= 2)
    {
      v91 = 4 * v86 - 4 * v15;
      v89 = vneg_f32(0x7F0000007FLL);
      do
      {
        v92 = *v17++;
        v93 = (a1[10] + 16 * v92);
        v89 = vminnm_f32(v89, *v93);
        v90 = vmaxnm_f32(v90, v93[1]);
        v91 -= 4;
      }

      while (v91);
    }

    *a4 = v89;
    a4[1] = v90;
    if (v14)
    {
      v94 = (a1[4] + 4 * v86);
      v95 = 4 * v16 - 4 * v86;
      v87 = 0x7F0000007FLL;
      v88 = vneg_f32(0x7F0000007FLL);
      do
      {
        v96 = *v94++;
        v97 = (a1[10] + 16 * v96);
        v88 = vminnm_f32(v88, *v97);
        v87 = vmaxnm_f32(v87, v97[1]);
        v95 -= 4;
      }

      while (v95);
    }

    *a5 = v88;
    a5[1] = v87;
    v26 = *(a3 + 16) >> 1;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 1;
    v29 = -1;
    v30 = 3.4028e38;
    v31 = vneg_f32(0x7F0000007FLL);
    v32 = 1;
    do
    {
      v33 = v32;
      v101 = v24;
      v34 = *(&v101 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v27 & 1)));
      if (fabsf(v34) > 0.00001)
      {
        if (v107.__end_ - v107.__begin_ >= 1)
        {
          v99 = v26;
          v35 = v13;
          v36 = a4;
          v37 = a5;
          v38 = v32;
          v39 = v28;
          bzero(v107.__begin_, v107.__end_ - v107.__begin_);
          v28 = v39;
          v33 = v38;
          a5 = v37;
          a4 = v36;
          *v12.i32 = a2;
          v13 = v35;
          v26 = v99;
        }

        v40 = v114;
        v41 = (v115 - v114) >> 4;
        if (v41 >= 1)
        {
          v42 = v41 + 1;
          do
          {
            *v40 = v31;
            v40[1] = 0x7F0000007FLL;
            v40 += 2;
            --v42;
          }

          while (v42 > 1);
        }

        v43 = *(v13 + 16);
        if (v43)
        {
          v44 = *(v13 + 12);
          v45 = (v43 + v44);
          v46 = (a1[4] + 4 * v44);
          v100 = v20;
          v47 = *(&v100 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v27 & 1)));
          v48 = 4 * v45 - 4 * v44;
          do
          {
            v49 = *v46++;
            v50 = (((*(a1[7] + 8 * v49 + 4 * (v27 & 1)) - v47) / v34) * *v12.i32);
            v51 = (a1[10] + 16 * v49);
            if (v50 == a2)
            {
              v50 = v11;
            }

            v114[2 * v50] = vminnm_f32(*v51, v114[2 * v50]);
            v114[2 * v50 + 1] = vmaxnm_f32(v51[1], v114[2 * v50 + 1]);
            ++v107.__begin_[v50];
            v48 -= 4;
          }

          while (v48);
        }

        v52 = v115;
        if (v114 != v115)
        {
          v53 = v111;
          v55 = *v114;
          v56 = v114[1];
          v54 = v114 + 2;
          *v111 = *v114;
          v53[1] = v56;
          if (v54 != v52)
          {
            v57 = v53 + 3;
            do
            {
              v58 = *v54;
              v59 = v54[1];
              v54 += 2;
              v55 = vminnm_f32(v55, v58);
              v56 = vmaxnm_f32(v56, v59);
              v57[-1] = v55;
              *v57 = v56;
              v57 += 2;
            }

            while (v54 != v52);
          }
        }

        v60 = v114;
        if (v115 != v114)
        {
          v61 = v109;
          v63 = v115[-2];
          v64 = v115[-1];
          v62 = v115 - 2;
          v109[-2] = v63;
          v61[-1] = v64;
          if (v60 != v62)
          {
            v65 = v61 - 4;
            do
            {
              v67 = v62[-2];
              v66 = v62[-1];
              v62 -= 2;
              v63 = vminnm_f32(v63, v67);
              v64 = vmaxnm_f32(v64, v66);
              *v65 = v63;
              v65[1] = v64;
              v65 -= 2;
            }

            while (v62 != v60);
          }
        }

        begin = v106.__begin_;
        if (v106.__end_ != v106.__begin_)
        {
          v69 = v107.__begin_ + v106.__end_ - v106.__begin_;
          v70 = v107.__begin_ + 1;
          v71 = *v107.__begin_;
          *v106.__begin_ = *v107.__begin_;
          if (v69 != v70)
          {
            v72 = begin + 1;
            do
            {
              v73 = *v70++;
              v71 += v73;
              *v72++ = v71;
            }

            while (v70 != v69);
          }
        }

        if (v11)
        {
          v74 = 0;
          v75 = v111;
          v76 = (__p + 16);
          do
          {
            v77 = vmaxnm_f32(*v75, *v76);
            v78 = vminnm_f32(v75[1], v76[1]);
            v79 = vcgt_f32(v77, v78);
            v80 = vsub_f32(v78, v77);
            LODWORD(v81) = vmul_lane_f32(v80, v80, 1).u32[0];
            if (vpmax_u32(v79, v79).i32[0] < 0)
            {
              v81 = 0.0;
            }

            if (v81 < v30)
            {
              v26 = begin[v74];
              *a4->f32 = *v75->f32;
              *a5->f32 = *v76->f32;
              v29 = v27;
              v28 = v74;
              v30 = v81;
            }

            ++v74;
            v75 += 2;
            v76 += 2;
          }

          while (v11 != v74);
        }
      }

      v32 = 0;
      v27 = 1;
    }

    while ((v33 & 1) != 0);
    v82 = a1[4];
    v83 = *(v13 + 12);
    v84 = (v82 + 4 * v83);
    v85 = *(v13 + 16) + v83;
    v102[0] = a1;
    v102[1] = v20;
    v102[2] = v19;
    v102[3] = v24;
    v103 = v28;
    v104 = v29;
    v105 = a2;
    std::__partition_impl[abi:nn200100]<unsigned int geom::bvh<float,(unsigned char)2>::partition_node_heuristic<geom::surface_area_heuristic_functor<float,(unsigned char)2>>(geom::surface_area_heuristic_functor<float,(unsigned char)2>,unsigned int,geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(v84, (v82 + 4 * v85), v102);
  }

  if (v106.__begin_)
  {
    v106.__end_ = v106.__begin_;
    operator delete(v106.__begin_);
  }

  if (v107.__begin_)
  {
    v107.__end_ = v107.__begin_;
    operator delete(v107.__begin_);
  }

  if (__p)
  {
    v109 = __p;
    operator delete(__p);
  }

  if (v111)
  {
    v112 = v111;
    operator delete(v111);
  }

  if (v114)
  {
    v115 = v114;
    operator delete(v114);
  }

  return v26;
}

uint64_t std::deque<geom::bvh<float,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<float,(unsigned char)2>,float &)>,geom::ray<float,(unsigned char)2>,float &,unsigned int &)::state,std::allocator<geom::bvh<float,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<float,(unsigned char)2>,float &)>,geom::ray<float,(unsigned char)2>,float &,unsigned int &)::state>>::__maybe_remove_back_spare[abi:nn200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 341 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x155)
  {
    a2 = 1;
  }

  if (v5 < 0x2AA)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void *std::deque<std::pair<unsigned int,unsigned int>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  v7 = ((v5 - v6) << 6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = result[5] + result[4];
  if (v7 == v8)
  {
    result = std::deque<std::pair<unsigned int,unsigned int>>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5] + v3[4];
  }

  *(*(v6 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *std::deque<std::pair<unsigned int,unsigned int>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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

uint64_t std::deque<std::pair<unsigned int,unsigned int>>::__maybe_remove_back_spare[abi:nn200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::bvh_node<float,(unsigned char)2>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__function::__func<geom::bvh<float,(unsigned char)2>::partition_node_median(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda(int)#1},std::allocator<geom::bvh<float,(unsigned char)2>::partition_node_median(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda(int)#1}>,std::function<unsigned int ()(unsigned int,unsigned int)> ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286291AA8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<geom::bvh<float,(unsigned char)2>::partition_node_median(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda(int)#1},std::allocator<geom::bvh<float,(unsigned char)2>::partition_node_median(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda(int)#1}>,std::function<unsigned int ()(unsigned int,unsigned int)> ()(int)>::operator()@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(result + 8);
  *a3 = &unk_286291B28;
  *(a3 + 8) = v4;
  *(a3 + 16) = v3;
  *(a3 + 24) = a3;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<geom::bvh<float,(unsigned char)2>::partition_node_median(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda(int)#1},std::allocator<geom::bvh<float,(unsigned char)2>::partition_node_median(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda(int)#1}>,std::function<unsigned int ()(unsigned int,unsigned int)> ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<geom::bvh<float,(unsigned char)2>::partition_node_median(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda(int)#1}::operator() const(int)::{lambda(unsigned int,unsigned int)#1},std::allocator<geom::bvh<float,(unsigned char)2>::partition_node_median(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda(int)#1}::operator() const(int)::{lambda(unsigned int,unsigned int)#1}>,unsigned int ()(unsigned int,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286291B28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<geom::bvh<float,(unsigned char)2>::partition_node_median(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda(int)#1}::operator() const(int)::{lambda(unsigned int,unsigned int)#1},std::allocator<geom::bvh<float,(unsigned char)2>::partition_node_median(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda(int)#1}::operator() const(int)::{lambda(unsigned int,unsigned int)#1}>,unsigned int ()(unsigned int,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::function<unsigned int ()(unsigned int,unsigned int)> ()(int)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 std::__function::__func<geom::bvh<float,(unsigned char)2>::partition_node_median(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,int,float &,unsigned int &)#1},std::allocator<geom::bvh<float,(unsigned char)2>::partition_node_median(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,int,float &,unsigned int &)#1}>,void ()(geom::bvh_node<float,(unsigned char)2> const&,int,float &,unsigned int &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286291BC8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<geom::bvh<float,(unsigned char)2>::partition_node_median(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,int,float &,unsigned int &)#1},std::allocator<geom::bvh<float,(unsigned char)2>::partition_node_median(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,int,float &,unsigned int &)#1}>,void ()(geom::bvh_node<float,(unsigned char)2> const&,int,float &,unsigned int &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t geom::bvh<float,(unsigned char)2>::partition_node_median(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,int,float &,unsigned int &)#1}::operator()(uint64_t *a1, uint64_t a2, int a3, _DWORD *a4, _DWORD *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v11 = *(a2 + 16);
  v12 = (*(*a1 + 32) + 4 * *(a2 + 12));
  v13 = (2 * v11) & 0x1FFFFFFFCLL;
  std::function<std::function<unsigned int ()(unsigned int,unsigned int)> ()(int)>::operator()(a1[1], a3);
  if (v11)
  {
    std::__nth_element[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int,unsigned int)> &,unsigned int *>(v12, (v12 + v13), &v12[v11], v19);
  }

  std::__function::__value_func<unsigned int ()(unsigned int,unsigned int)>::~__value_func[abi:nn200100](v19);
  *a4 = *(*(v10 + 56) + 8 * *(v12 + v13) + 4 * (a3 & 1));
  std::function<std::function<unsigned int ()(unsigned int,unsigned int)> ()(int)>::operator()(a1[1], a3);
  v14 = std::__upper_bound[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int,unsigned int)>,unsigned int *,unsigned int *,unsigned int,std::__identity>(v12, &v12[v11], (v12 + v13), v18);
  result = std::__function::__value_func<unsigned int ()(unsigned int,unsigned int)>::~__value_func[abi:nn200100](v18);
  v16 = (v14 - v12) >> 2;
  if (*(a2 + 16) - v16 < v16)
  {
    LODWORD(v16) = *(a2 + 16) - v16;
  }

  *a5 = v16;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::function<std::function<unsigned int ()(unsigned int,unsigned int)> ()(int)>::operator()(uint64_t a1, int a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__nth_element[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int,unsigned int)> &,unsigned int *>(v4);
}

int *std::__nth_element[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int,unsigned int)> &,unsigned int *>(int *result, int *a2, int *a3, uint64_t a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v5 = a3;
  v7 = result;
  while (1)
  {
    v8 = (v5 - v7) >> 2;
    if (v8 < 2)
    {
      return result;
    }

    if (v8 == 3)
    {
      break;
    }

    if (v8 == 2)
    {
      result = std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(a4, *(v5 - 1), v7->i32[0]);
      if (!result)
      {
        return result;
      }

      v36 = v7->i32[0];
      v7->i32[0] = *(v5 - 1);
      goto LABEL_76;
    }

    if (v8 <= 7)
    {

      return std::__selection_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int,unsigned int)> &,unsigned int *>(v7, v5, a4);
    }

    v9 = v7 + (v8 >> 1);
    v10 = std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(a4, *v9, v7->i32[0]);
    v11 = v5 - 1;
    v12 = std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(a4, *(v5 - 1), *v9);
    if (v10)
    {
      v13 = v7->i32[0];
      if (v12)
      {
        v7->i32[0] = *v11;
        *v11 = v13;
      }

      else
      {
        v7->i32[0] = *v9;
        *v9 = v13;
        if (std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(a4, *v11, v13))
        {
          v16 = *v9;
          *v9 = *v11;
          *v11 = v16;
        }
      }

LABEL_15:
      v17 = 1;
      goto LABEL_16;
    }

    if (v12)
    {
      v14 = *v9;
      *v9 = *v11;
      *v11 = v14;
      if (std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(a4, *v9, v7->i32[0]))
      {
        v15 = v7->i32[0];
        v7->i32[0] = *v9;
        *v9 = v15;
      }

      goto LABEL_15;
    }

    v17 = 0;
LABEL_16:
    result = std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(a4, v7->i32[0], *v9);
    if (result)
    {
      v18 = v5 - 1;
LABEL_24:
      v20 = v7 + 1;
      if (&v7->u8[4] >= v18)
      {
        v22 = v7 + 1;
      }

      else
      {
        v21 = v7 + 1;
        while (1)
        {
          v22 = v21 - 1;
          do
          {
            v23 = v22[1];
            ++v22;
          }

          while (std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(a4, v23, *v9));
          v21 = v22 + 1;
          do
          {
            v24 = *--v18;
            result = std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(a4, v24, *v9);
          }

          while (!result);
          if (v22 >= v18)
          {
            break;
          }

          v25 = *v22;
          *v22 = *v18;
          *v18 = v25;
          ++v17;
          if (v22 == v9)
          {
            v9 = v18;
          }
        }
      }

      if (v22 != v9)
      {
        result = std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(a4, *v9, *v22);
        if (result)
        {
          v26 = *v22;
          *v22 = *v9;
          *v9 = v26;
          ++v17;
        }
      }

      if (v22 == a2)
      {
        return result;
      }

      if (!v17)
      {
        if (v22 <= a2)
        {
          v33 = v22 + 1;
          while (v33 != v5)
          {
            result = std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(a4, *v33, *(v33 - 1));
            ++v33;
            if (result)
            {
              goto LABEL_40;
            }
          }
        }

        else
        {
          while (v20 != v22)
          {
            result = std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(a4, *v20, *(v20 - 1));
            ++v20;
            if (result)
            {
              goto LABEL_40;
            }
          }
        }

        return result;
      }

LABEL_40:
      if (v22 <= a2)
      {
        v27 = (v22 + 1);
      }

      else
      {
        v27 = v7;
      }

      if (v22 > a2)
      {
        v5 = v22;
      }
    }

    else
    {
      v18 = v5 - 1;
      while (--v18 != v7)
      {
        result = std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(a4, *v18, *v9);
        if (result)
        {
          v19 = v7->i32[0];
          v7->i32[0] = *v18;
          *v18 = v19;
          if (v17)
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          goto LABEL_24;
        }
      }

      v28 = v7 + 1;
      result = std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(a4, v7->i32[0], *v11);
      if (!result)
      {
        while (v28 != v11)
        {
          result = std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(a4, v7->i32[0], *v28);
          if (result)
          {
            v29 = *v28;
            *v28++ = *v11;
            *v11 = v29;
            goto LABEL_57;
          }

          ++v28;
        }

        return result;
      }

LABEL_57:
      if (v28 == v11)
      {
        return result;
      }

      while (1)
      {
        v27 = (v28 - 1);
        do
        {
          v30 = v27->i32[1];
          v27 = (v27 + 4);
        }

        while (!std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(a4, v7->i32[0], v30));
        v28 = v27 + 1;
        do
        {
          v31 = *--v11;
          result = std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(a4, v7->i32[0], v31);
        }

        while (result);
        if (v27 >= v11)
        {
          break;
        }

        v32 = v27->i32[0];
        v27->i32[0] = *v11;
        *v11 = v32;
      }

      if (v27 > a2)
      {
        return result;
      }
    }

    v7 = v27;
    if (v5 == a2)
    {
      return result;
    }
  }

  v34 = std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(a4, v7->i32[1], v7->i32[0]);
  result = std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(a4, *(v5 - 1), v7->i32[1]);
  if (!v34)
  {
    if (result)
    {
      v37 = v7->i32[1];
      v7->i32[1] = *(v5 - 1);
      *(v5 - 1) = v37;
      result = std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(a4, v7->i32[1], v7->i32[0]);
      if (result)
      {
        *v7 = vrev64_s32(*v7);
      }
    }

    return result;
  }

  v35 = v7->i32[0];
  if (result)
  {
    v7->i32[0] = *(v5 - 1);
    *(v5 - 1) = v35;
    return result;
  }

  v7->i32[0] = v7->i32[1];
  v7->i32[1] = v35;
  result = std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(a4, *(v5 - 1), v35);
  if (result)
  {
    v36 = v7->i32[1];
    v7->i32[1] = *(v5 - 1);
LABEL_76:
    *(v5 - 1) = v36;
  }

  return result;
}

uint64_t std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(uint64_t a1, int a2, int a3)
{
  v7 = a2;
  v6 = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v7, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__selection_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int,unsigned int)> &,unsigned int *>(v5);
}

int *std::__selection_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int,unsigned int)> &,unsigned int *>(int *result, int *a2, uint64_t a3)
{
  v3 = a2 - 1;
  if (a2 - 1 != result)
  {
    v6 = result;
    do
    {
      result = std::__min_element[abi:nn200100]<std::function<unsigned int ()(unsigned int,unsigned int)> &,unsigned int *,unsigned int *>(v6, a2, a3);
      if (v6 != result)
      {
        v7 = *v6;
        *v6 = *result;
        *result = v7;
      }

      ++v6;
    }

    while (v6 != v3);
  }

  return result;
}

int *std::__min_element[abi:nn200100]<std::function<unsigned int ()(unsigned int,unsigned int)> &,unsigned int *,unsigned int *>(int *a1, int *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = a1 + 1;
    if (a1 + 1 != a2)
    {
      v7 = a1 + 1;
      do
      {
        v8 = *v7++;
        if (std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(a3, v8, *v3))
        {
          v3 = v5;
        }

        v5 = v7;
      }

      while (v7 != a2);
    }
  }

  return v3;
}

uint64_t std::__function::__value_func<unsigned int ()(unsigned int,unsigned int)>::~__value_func[abi:nn200100](uint64_t a1)
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

int *std::__upper_bound[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int,unsigned int)>,unsigned int *,unsigned int *,unsigned int,std::__identity>(int *a1, int *a2, int *a3, uint64_t a4)
{
  v4 = a1;
  if (a2 != a1)
  {
    v7 = a2 - a1;
    do
    {
      v8 = &v4[v7 >> 1];
      v10 = *v8;
      v9 = v8 + 1;
      if (std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(a4, *a3, v10))
      {
        v7 >>= 1;
      }

      else
      {
        v4 = v9;
        v7 += ~(v7 >> 1);
      }
    }

    while (v7);
  }

  return v4;
}

uint64_t std::__function::__value_func<void ()(geom::bvh_node<float,(unsigned char)2> const&,int,float &,unsigned int &)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 std::__function::__func<geom::bvh<float,(unsigned char)2>::partition_node_median(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda(unsigned int)#1},std::allocator<geom::bvh<float,(unsigned char)2>::partition_node_median(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda(unsigned int)#1}>,BOOL ()(unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286291C58;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<geom::bvh<float,(unsigned char)2>::partition_node_median(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda(unsigned int)#1},std::allocator<geom::bvh<float,(unsigned char)2>::partition_node_median(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda(unsigned int)#1}>,BOOL ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

int *std::__partition_impl[abi:nn200100]<std::function<BOOL ()(unsigned int)> &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(int *a1, int *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = a1;
    v3 = a2;
    while (2)
    {
      while ((std::function<BOOL ()>::operator()(a3, *v5) & 1) != 0)
      {
        if (++v5 == v3)
        {
          return v3;
        }
      }

      do
      {
        if (--v3 == v5)
        {
          return v5;
        }
      }

      while (!std::function<BOOL ()>::operator()(a3, *v3));
      v6 = *v5;
      *v5++ = *v3;
      *v3 = v6;
      if (v3 != v5)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

uint64_t std::__function::__value_func<BOOL ()(unsigned int)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

_DWORD *std::__partition_impl[abi:nn200100]<geom::bvh<float,(unsigned char)2>::partition_node_middle(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda(unsigned int)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(_DWORD *result, _DWORD *a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = result;
    v4 = *(*a3 + 56);
    v5 = *(a3 + 12);
    result = a2;
    while (2)
    {
      v6 = *(a3 + 8);
      while (1)
      {
        v7 = *v3;
        if (*(v4 + 8 * v7 + 4 * (v6 & 1)) >= v5)
        {
          break;
        }

        if (++v3 == result)
        {
          return result;
        }
      }

      do
      {
        if (--result == v3)
        {
          return v3;
        }

        v8 = *result;
      }

      while (*(v4 + 8 * v8 + 4 * (v6 & 1)) >= v5);
      *v3++ = v8;
      *result = v7;
      if (result != v3)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)2>::build_middle_split(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)#1},std::allocator<geom::bvh<double,(unsigned char)2>::build_middle_split(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286291CD8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)2>::build_middle_split(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)#1},std::allocator<geom::bvh<double,(unsigned char)2>::build_middle_split(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<unsigned int ()(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)2>::build_median(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)#1},std::allocator<geom::bvh<double,(unsigned char)2>::build_median(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286291D68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)2>::build_median(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)#1},std::allocator<geom::bvh<double,(unsigned char)2>::build_median(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)2>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>,geom::surface_area_heuristic_functor<double,(unsigned char)2>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)#1},std::allocator<void geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)2>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>,geom::surface_area_heuristic_functor<double,(unsigned char)2>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286291DE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)2>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>,geom::surface_area_heuristic_functor<double,(unsigned char)2>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)#1},std::allocator<void geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)2>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>,geom::surface_area_heuristic_functor<double,(unsigned char)2>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t geom::bvh<double,(unsigned char)2>::partition_node_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)2>>(void *a1, unsigned int a2, uint64_t a3, float64x2_t *a4, float64x2_t *a5)
{
  v8 = a2;
  v135 = *MEMORY[0x277D85DE8];
  v125 = 0;
  v126 = 0;
  v127 = 0;
  v10 = a2;
  std::vector<geom::bbox<double,(unsigned char)2>>::resize(&v125, a2);
  v122 = 0;
  v123 = 0;
  v124 = 0;
  std::vector<geom::bbox<double,(unsigned char)2>>::resize(&v122, v10);
  __p = 0;
  v120 = 0;
  v121 = 0;
  std::vector<geom::bbox<double,(unsigned char)2>>::resize(&__p, v10);
  memset(&v118, 0, sizeof(v118));
  std::vector<float>::resize(&v118, v10);
  memset(&v117, 0, sizeof(v117));
  v11 = v8 - 1;
  std::vector<float>::resize(&v117, v11);
  v13 = *(a3 + 12);
  v12 = *(a3 + 16);
  v14 = v12 + v13;
  v15 = (a1[4] + 4 * v13);
  if (v12)
  {
    v16 = 4 * v14 - 4 * v13;
    v17 = vdupq_n_s64(0x7FF0000000000000uLL);
    v18 = vdupq_n_s64(0xFFF0000000000000);
    v19 = (a1[4] + 4 * v13);
    do
    {
      v20 = *v19++;
      v21 = *(a1[7] + 16 * v20);
      v17 = vminnmq_f64(v17, v21);
      v18 = vmaxnmq_f64(v18, v21);
      v16 -= 4;
    }

    while (v16);
  }

  else
  {
    v18 = vdupq_n_s64(0xFFF0000000000000);
    v17 = vdupq_n_s64(0x7FF0000000000000uLL);
  }

  v22 = vsubq_f64(v18, v17);
  v23 = v8;
  v24 = vdivq_f64(v22, vdupq_lane_s64(COERCE__INT64(v8), 0));
  if (sqrt(vaddvq_f64(vmulq_f64(v24, v24))) <= 0.000001)
  {
    v94 = v13 + (v12 >> 1);
    v95 = vdupq_n_s64(0xFFF0000000000000);
    v96 = vdupq_n_s64(0x7FF0000000000000uLL);
    v97 = v96;
    v98 = v95;
    if (v12 >= 2)
    {
      v99 = 4 * v94 - 4 * v13;
      v97 = vdupq_n_s64(0x7FF0000000000000uLL);
      v98 = vdupq_n_s64(0xFFF0000000000000);
      do
      {
        v100 = *v15++;
        v101 = (a1[10] + 32 * v100);
        v97 = vminnmq_f64(v97, *v101);
        v98 = vmaxnmq_f64(v98, v101[1]);
        v99 -= 4;
      }

      while (v99);
    }

    *a4 = v97;
    a4[1] = v98;
    if (v12)
    {
      v102 = (a1[4] + 4 * v94);
      v103 = 4 * v14 - 4 * v94;
      v96 = vdupq_n_s64(0x7FF0000000000000uLL);
      v95 = vdupq_n_s64(0xFFF0000000000000);
      do
      {
        v104 = *v102++;
        v105 = (a1[10] + 32 * v104);
        v96 = vminnmq_f64(v96, *v105);
        v95 = vmaxnmq_f64(v95, v105[1]);
        v103 -= 4;
      }

      while (v103);
    }

    *a5 = v96;
    a5[1] = v95;
    v25 = *(a3 + 16) >> 1;
  }

  else
  {
    v108 = v18;
    v25 = 0;
    v26 = 0;
    v27 = 1;
    v28 = -1;
    v29 = vdupq_n_s64(0x7FF0000000000000uLL);
    v30 = 1.79769313e308;
    v31 = vdupq_n_s64(0xFFF0000000000000);
    v32 = 1;
    v113 = v22;
    v114 = v17;
    v111 = v29;
    v112 = v8;
    v110 = v31;
    v109 = v8;
    do
    {
      v33 = v32;
      v116 = v22;
      v34 = *(&v116 & 0xFFFFFFFFFFFFFFF7 | (8 * (v26 & 1)));
      if (fabs(v34) > 0.000001)
      {
        if (v118.__end_ - v118.__begin_ >= 1)
        {
          v35 = v32;
          v36 = a3;
          v37 = a4;
          v38 = a5;
          v39 = v27;
          bzero(v118.__begin_, v118.__end_ - v118.__begin_);
          v27 = v39;
          a5 = v38;
          a4 = v37;
          a3 = v36;
          v8 = v109;
          v33 = v35;
          v31 = v110;
          v29 = v111;
          v23 = v112;
          v22 = v113;
          v17 = v114;
        }

        v40 = v125;
        v41 = (v126 - v125) >> 5;
        if (v41 >= 1)
        {
          v42 = v41 + 1;
          do
          {
            *v40 = v29;
            v40[1] = v31;
            v40 += 2;
            --v42;
          }

          while (v42 > 1);
        }

        v43 = *(a3 + 16);
        if (v43)
        {
          v44 = *(a3 + 12);
          v45 = (v43 + v44);
          v46 = (a1[4] + 4 * v44);
          v115 = v17;
          v47 = *(&v115 & 0xFFFFFFFFFFFFFFF7 | (8 * (v26 & 1)));
          v48 = 4 * v45 - 4 * v44;
          do
          {
            v49 = *v46++;
            v50 = ((*(a1[7] + 16 * v49 + 8 * (v26 & 1)) - v47) / v34 * v23);
            v51 = (a1[10] + 32 * v49);
            if (v50 == v8)
            {
              v52 = v11;
            }

            else
            {
              v52 = v50;
            }

            v125[2 * v52] = vminnmq_f64(*v51, v125[2 * v52]);
            v125[2 * v52 + 1] = vmaxnmq_f64(v51[1], v125[2 * v52 + 1]);
            ++v118.__begin_[v52];
            v48 -= 4;
          }

          while (v48);
        }

        v53 = v126;
        if (v125 != v126)
        {
          v54 = v122;
          v56 = *v125;
          v57 = v125[1];
          v55 = v125 + 2;
          *v122 = *v125;
          v54[1] = v57;
          if (v55 != v53)
          {
            v58 = v54 + 3;
            do
            {
              v59 = *v55;
              v60 = v55[1];
              v55 += 2;
              v56 = vminnmq_f64(v56, v59);
              v57 = vmaxnmq_f64(v57, v60);
              v58[-1] = v56;
              *v58 = v57;
              v58 += 2;
            }

            while (v55 != v53);
          }
        }

        v61 = v125;
        if (v126 != v125)
        {
          v62 = v120;
          v64 = v126[-2];
          v65 = v126[-1];
          v63 = v126 - 2;
          v120[-2] = v64;
          v62[-1] = v65;
          if (v61 != v63)
          {
            v66 = v62 - 4;
            do
            {
              v68 = v63[-2];
              v67 = v63[-1];
              v63 -= 2;
              v64 = vminnmq_f64(v64, v68);
              v65 = vmaxnmq_f64(v65, v67);
              *v66 = v64;
              v66[1] = v65;
              v66 -= 2;
            }

            while (v63 != v61);
          }
        }

        begin = v117.__begin_;
        if (v117.__end_ != v117.__begin_)
        {
          v70 = v118.__begin_ + v117.__end_ - v117.__begin_;
          v71 = v118.__begin_ + 1;
          v72 = *v118.__begin_;
          *v117.__begin_ = *v118.__begin_;
          if (v70 != v71)
          {
            v73 = begin + 1;
            do
            {
              v74 = *v71++;
              v72 += v74;
              *v73++ = v72;
            }

            while (v71 != v70);
          }
        }

        if (v11)
        {
          v75 = 0;
          v76 = v122;
          v77 = (__p + 32);
          do
          {
            v78 = begin[v75];
            v79 = v76[1];
            v80 = vcgtq_f64(*v76, v79);
            v81 = vsubq_f64(v79, *v76);
            v82 = vaddvq_f64(vmulq_f64(v81, vextq_s8(v81, v81, 8uLL)));
            if (vorrq_s8(vdupq_laneq_s64(v80, 1), v80).i64[0] < 0)
            {
              v82 = 0.0;
            }

            v83 = v77[1];
            v84 = vcgtq_f64(*v77, v83);
            v85 = vsubq_f64(v83, *v77);
            v86 = vaddvq_f64(vmulq_f64(v85, vextq_s8(v85, v85, 8uLL)));
            if (vorrq_s8(vdupq_laneq_s64(v84, 1), v84).i64[0] < 0)
            {
              v86 = 0.0;
            }

            v87 = v86 * (*(a3 + 16) - v78) + v78 * v82;
            if (v87 < v30)
            {
              v88 = v76[1];
              *a4 = *v76;
              a4[1] = v88;
              v89 = v77[1];
              *a5 = *v77;
              a5[1] = v89;
              v28 = v26;
              v25 = v78;
              v27 = v75;
              v30 = v87;
            }

            ++v75;
            v76 += 2;
            v77 += 2;
          }

          while (v11 != v75);
        }
      }

      v32 = 0;
      v26 = 1;
    }

    while ((v33 & 1) != 0);
    v90 = a1[4];
    v91 = *(a3 + 12);
    v92 = (v90 + 4 * v91);
    v93 = *(a3 + 16) + v91;
    v128 = a1;
    v129 = v17;
    v130 = v108;
    v131 = v22;
    v132 = v27;
    v133 = v28;
    v134 = v8;
    std::__partition_impl[abi:nn200100]<unsigned int geom::bvh<double,(unsigned char)2>::partition_node_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)2>>(geom::surface_area_heuristic_functor<double,(unsigned char)2>,unsigned int,geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(v92, (v90 + 4 * v93), &v128);
  }

  if (v117.__begin_)
  {
    v117.__end_ = v117.__begin_;
    operator delete(v117.__begin_);
  }

  if (v118.__begin_)
  {
    v118.__end_ = v118.__begin_;
    operator delete(v118.__begin_);
  }

  if (__p)
  {
    v120 = __p;
    operator delete(__p);
  }

  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  if (v125)
  {
    v126 = v125;
    operator delete(v125);
  }

  v106 = *MEMORY[0x277D85DE8];
  return v25;
}

void std::vector<geom::bbox<double,(unsigned char)2>>::resize(void *a1, unint64_t a2)
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
    std::vector<geom::bbox<double,(unsigned char)2>>::__append(a1, a2 - v2);
  }
}

void std::vector<geom::bbox<double,(unsigned char)2>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 5)
  {
    if (a2)
    {
      v11 = &v4[2 * a2];
      v12 = vdupq_n_s64(0x7FF0000000000000uLL);
      v13 = vdupq_n_s64(0xFFF0000000000000);
      do
      {
        *v4 = v12;
        v4[1] = v13;
        v4 += 2;
      }

      while (v4 != v11);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = v4->i64 - *a1;
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
    v16 = vdupq_n_s64(0x7FF0000000000000uLL);
    v17 = vdupq_n_s64(0xFFF0000000000000);
    v18 = v14;
    do
    {
      *v18 = v16;
      v18[1] = v17;
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

_DWORD *std::__partition_impl[abi:nn200100]<unsigned int geom::bvh<double,(unsigned char)2>::partition_node_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)2>>(geom::surface_area_heuristic_functor<double,(unsigned char)2>,unsigned int,geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda(unsigned int)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(_DWORD *result, _DWORD *a2, _DWORD *a3)
{
  if (result != a2)
  {
    v3 = result;
    v4 = *(*a3 + 56);
    result = a2;
    while (2)
    {
      v5 = a3[16];
      v6 = a3[17];
      v7 = &a3[2 * (v6 & 1)];
      v8 = v7[2];
      v9 = v7[6];
      v10 = a3[18];
      v11 = v10;
      v12 = v3;
      while (1)
      {
        v13 = *v12;
        v14 = ((*(v4 + 16 * v13 + 8 * (a3[17] & 1)) - v8) / v9 * v11);
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
        v16 = ((*(v4 + 16 * v15 + 8 * (v6 & 1)) - v8) / v9 * v11);
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

__n128 std::__function::__func<void geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<geom::volume_heuristic_functor<double,(unsigned char)2>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>,geom::volume_heuristic_functor<double,(unsigned char)2>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)#1},std::allocator<void geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<geom::volume_heuristic_functor<double,(unsigned char)2>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>,geom::volume_heuristic_functor<double,(unsigned char)2>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286291E68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<geom::volume_heuristic_functor<double,(unsigned char)2>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>,geom::volume_heuristic_functor<double,(unsigned char)2>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)#1},std::allocator<void geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<geom::volume_heuristic_functor<double,(unsigned char)2>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>,geom::volume_heuristic_functor<double,(unsigned char)2>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t geom::bvh<double,(unsigned char)2>::partition_node_heuristic<geom::volume_heuristic_functor<double,(unsigned char)2>>(void *a1, unsigned int a2, uint64_t a3, float64x2_t *a4, float64x2_t *a5)
{
  v8 = a2;
  v137 = *MEMORY[0x277D85DE8];
  v127 = 0;
  v128 = 0;
  v129 = 0;
  v10 = a2;
  std::vector<geom::bbox<double,(unsigned char)2>>::resize(&v127, a2);
  v124 = 0;
  v125 = 0;
  v126 = 0;
  std::vector<geom::bbox<double,(unsigned char)2>>::resize(&v124, v10);
  __p = 0;
  v122 = 0;
  v123 = 0;
  std::vector<geom::bbox<double,(unsigned char)2>>::resize(&__p, v10);
  memset(&v120, 0, sizeof(v120));
  std::vector<float>::resize(&v120, v10);
  memset(&v119, 0, sizeof(v119));
  v11 = v8 - 1;
  std::vector<float>::resize(&v119, v11);
  v13 = *(a3 + 12);
  v12 = *(a3 + 16);
  v14 = v12 + v13;
  v15 = (a1[4] + 4 * v13);
  if (v12)
  {
    v16 = 4 * v14 - 4 * v13;
    v17 = vdupq_n_s64(0x7FF0000000000000uLL);
    v18 = vdupq_n_s64(0xFFF0000000000000);
    v19 = (a1[4] + 4 * v13);
    do
    {
      v20 = *v19++;
      v21 = *(a1[7] + 16 * v20);
      v17 = vminnmq_f64(v17, v21);
      v18 = vmaxnmq_f64(v18, v21);
      v16 -= 4;
    }

    while (v16);
  }

  else
  {
    v18 = vdupq_n_s64(0xFFF0000000000000);
    v17 = vdupq_n_s64(0x7FF0000000000000uLL);
  }

  v22 = vsubq_f64(v18, v17);
  v23 = v8;
  v24 = vdivq_f64(v22, vdupq_lane_s64(COERCE__INT64(v8), 0));
  if (sqrt(vaddvq_f64(vmulq_f64(v24, v24))) <= 0.000001)
  {
    v96 = v13 + (v12 >> 1);
    v97 = vdupq_n_s64(0xFFF0000000000000);
    v98 = vdupq_n_s64(0x7FF0000000000000uLL);
    v99 = v98;
    v100 = v97;
    if (v12 >= 2)
    {
      v101 = 4 * v96 - 4 * v13;
      v99 = vdupq_n_s64(0x7FF0000000000000uLL);
      v100 = vdupq_n_s64(0xFFF0000000000000);
      do
      {
        v102 = *v15++;
        v103 = (a1[10] + 32 * v102);
        v99 = vminnmq_f64(v99, *v103);
        v100 = vmaxnmq_f64(v100, v103[1]);
        v101 -= 4;
      }

      while (v101);
    }

    *a4 = v99;
    a4[1] = v100;
    if (v12)
    {
      v104 = (a1[4] + 4 * v96);
      v105 = 4 * v14 - 4 * v96;
      v98 = vdupq_n_s64(0x7FF0000000000000uLL);
      v97 = vdupq_n_s64(0xFFF0000000000000);
      do
      {
        v106 = *v104++;
        v107 = (a1[10] + 32 * v106);
        v98 = vminnmq_f64(v98, *v107);
        v97 = vmaxnmq_f64(v97, v107[1]);
        v105 -= 4;
      }

      while (v105);
    }

    *a5 = v98;
    a5[1] = v97;
    v25 = *(a3 + 16) >> 1;
  }

  else
  {
    v110 = v18;
    v25 = 0;
    v26 = 0;
    v27 = 1;
    v28 = -1;
    v29 = vdupq_n_s64(0x7FF0000000000000uLL);
    v30 = 1.79769313e308;
    v31 = vdupq_n_s64(0xFFF0000000000000);
    v32 = 1;
    v115 = v22;
    v116 = v17;
    v113 = v29;
    v114 = v8;
    v112 = v31;
    v111 = v8;
    do
    {
      v33 = v32;
      v118 = v22;
      v34 = *(&v118 & 0xFFFFFFFFFFFFFFF7 | (8 * (v26 & 1)));
      if (fabs(v34) > 0.000001)
      {
        if (v120.__end_ - v120.__begin_ >= 1)
        {
          v35 = v32;
          v36 = a3;
          v37 = a4;
          v38 = a5;
          v39 = v27;
          bzero(v120.__begin_, v120.__end_ - v120.__begin_);
          v27 = v39;
          a5 = v38;
          a4 = v37;
          a3 = v36;
          v8 = v111;
          v33 = v35;
          v31 = v112;
          v29 = v113;
          v23 = v114;
          v22 = v115;
          v17 = v116;
        }

        v40 = v127;
        v41 = (v128 - v127) >> 5;
        if (v41 >= 1)
        {
          v42 = v41 + 1;
          do
          {
            *v40 = v29;
            v40[1] = v31;
            v40 += 2;
            --v42;
          }

          while (v42 > 1);
        }

        v43 = *(a3 + 16);
        if (v43)
        {
          v44 = *(a3 + 12);
          v45 = (v43 + v44);
          v46 = (a1[4] + 4 * v44);
          v117 = v17;
          v47 = *(&v117 & 0xFFFFFFFFFFFFFFF7 | (8 * (v26 & 1)));
          v48 = 4 * v45 - 4 * v44;
          do
          {
            v49 = *v46++;
            v50 = ((*(a1[7] + 16 * v49 + 8 * (v26 & 1)) - v47) / v34 * v23);
            v51 = (a1[10] + 32 * v49);
            if (v50 == v8)
            {
              v52 = v11;
            }

            else
            {
              v52 = v50;
            }

            v127[2 * v52] = vminnmq_f64(*v51, v127[2 * v52]);
            v127[2 * v52 + 1] = vmaxnmq_f64(v51[1], v127[2 * v52 + 1]);
            ++v120.__begin_[v52];
            v48 -= 4;
          }

          while (v48);
        }

        v53 = v128;
        if (v127 != v128)
        {
          v54 = v124;
          v56 = *v127;
          v57 = v127[1];
          v55 = v127 + 2;
          *v124 = *v127;
          v54[1] = v57;
          if (v55 != v53)
          {
            v58 = v54 + 3;
            do
            {
              v59 = *v55;
              v60 = v55[1];
              v55 += 2;
              v56 = vminnmq_f64(v56, v59);
              v57 = vmaxnmq_f64(v57, v60);
              v58[-1] = v56;
              *v58 = v57;
              v58 += 2;
            }

            while (v55 != v53);
          }
        }

        v61 = v127;
        if (v128 != v127)
        {
          v62 = v122;
          v64 = v128[-2];
          v65 = v128[-1];
          v63 = v128 - 2;
          v122[-2] = v64;
          v62[-1] = v65;
          if (v61 != v63)
          {
            v66 = v62 - 4;
            do
            {
              v68 = v63[-2];
              v67 = v63[-1];
              v63 -= 2;
              v64 = vminnmq_f64(v64, v68);
              v65 = vmaxnmq_f64(v65, v67);
              *v66 = v64;
              v66[1] = v65;
              v66 -= 2;
            }

            while (v63 != v61);
          }
        }

        begin = v119.__begin_;
        if (v119.__end_ != v119.__begin_)
        {
          v70 = v120.__begin_ + v119.__end_ - v119.__begin_;
          v71 = v120.__begin_ + 1;
          v72 = *v120.__begin_;
          *v119.__begin_ = *v120.__begin_;
          if (v70 != v71)
          {
            v73 = begin + 1;
            do
            {
              v74 = *v71++;
              v72 += v74;
              *v73++ = v72;
            }

            while (v71 != v70);
          }
        }

        if (v11)
        {
          v75 = 0;
          v76 = v124;
          v77 = (__p + 32);
          do
          {
            v78 = begin[v75];
            v79 = v76[1];
            v80 = vcgtq_f64(*v76, v79);
            v81 = vsubq_f64(v79, *v76);
            *&v82 = *&vmulq_laneq_f64(v81, v81, 1);
            v83 = v77[1];
            v84 = vcgtq_f64(*v77, v83);
            v85 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v84, v80), vzip2q_s64(v84, v80))));
            if (v85.i8[4])
            {
              v82 = 0.0;
            }

            v86 = vsubq_f64(v83, *v77);
            *&v87 = *&vmulq_laneq_f64(v86, v86, 1);
            if (v85.i8[0])
            {
              v88 = 0.0;
            }

            else
            {
              v88 = v87;
            }

            v89 = v88 * (*(a3 + 16) - v78) + v78 * v82;
            if (v89 < v30)
            {
              v90 = v76[1];
              *a4 = *v76;
              a4[1] = v90;
              v91 = v77[1];
              *a5 = *v77;
              a5[1] = v91;
              v28 = v26;
              v25 = v78;
              v27 = v75;
              v30 = v89;
            }

            ++v75;
            v76 += 2;
            v77 += 2;
          }

          while (v11 != v75);
        }
      }

      v32 = 0;
      v26 = 1;
    }

    while ((v33 & 1) != 0);
    v92 = a1[4];
    v93 = *(a3 + 12);
    v94 = (v92 + 4 * v93);
    v95 = *(a3 + 16) + v93;
    v130 = a1;
    v131 = v17;
    v132 = v110;
    v133 = v22;
    v134 = v27;
    v135 = v28;
    v136 = v8;
    std::__partition_impl[abi:nn200100]<unsigned int geom::bvh<double,(unsigned char)2>::partition_node_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)2>>(geom::surface_area_heuristic_functor<double,(unsigned char)2>,unsigned int,geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(v94, (v92 + 4 * v95), &v130);
  }

  if (v119.__begin_)
  {
    v119.__end_ = v119.__begin_;
    operator delete(v119.__begin_);
  }

  if (v120.__begin_)
  {
    v120.__end_ = v120.__begin_;
    operator delete(v120.__begin_);
  }

  if (__p)
  {
    v122 = __p;
    operator delete(__p);
  }

  if (v124)
  {
    v125 = v124;
    operator delete(v124);
  }

  if (v127)
  {
    v128 = v127;
    operator delete(v127);
  }

  v108 = *MEMORY[0x277D85DE8];
  return v25;
}

__n128 std::__function::__func<void geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<geom::intersection_volume_heuristic_functor<double,(unsigned char)2>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>,geom::intersection_volume_heuristic_functor<double,(unsigned char)2>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)#1},std::allocator<void geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<geom::intersection_volume_heuristic_functor<double,(unsigned char)2>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>,geom::intersection_volume_heuristic_functor<double,(unsigned char)2>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286291EE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<geom::intersection_volume_heuristic_functor<double,(unsigned char)2>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>,geom::intersection_volume_heuristic_functor<double,(unsigned char)2>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)#1},std::allocator<void geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<geom::intersection_volume_heuristic_functor<double,(unsigned char)2>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>,geom::intersection_volume_heuristic_functor<double,(unsigned char)2>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t geom::bvh<double,(unsigned char)2>::partition_node_heuristic<geom::intersection_volume_heuristic_functor<double,(unsigned char)2>>(void *a1, unsigned int a2, uint64_t a3, float64x2_t *a4, float64x2_t *a5)
{
  v129 = *MEMORY[0x277D85DE8];
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v10 = a2;
  std::vector<geom::bbox<double,(unsigned char)2>>::resize(&v119, a2);
  v116 = 0;
  v117 = 0;
  v118 = 0;
  std::vector<geom::bbox<double,(unsigned char)2>>::resize(&v116, v10);
  __p = 0;
  v114 = 0;
  v115 = 0;
  std::vector<geom::bbox<double,(unsigned char)2>>::resize(&__p, v10);
  memset(&v112, 0, sizeof(v112));
  std::vector<float>::resize(&v112, v10);
  memset(&v111, 0, sizeof(v111));
  v11 = a2 - 1;
  std::vector<float>::resize(&v111, v11);
  v12 = a3;
  v14 = *(a3 + 12);
  v13 = *(a3 + 16);
  v15 = v13 + v14;
  v16 = (a1[4] + 4 * v14);
  if (v13)
  {
    v17 = 4 * v15 - 4 * v14;
    v18 = vdupq_n_s64(0x7FF0000000000000uLL);
    v19 = vdupq_n_s64(0xFFF0000000000000);
    v20 = (a1[4] + 4 * v14);
    do
    {
      v21 = *v20++;
      v22 = *(a1[7] + 16 * v21);
      v18 = vminnmq_f64(v18, v22);
      v19 = vmaxnmq_f64(v19, v22);
      v17 -= 4;
    }

    while (v17);
  }

  else
  {
    v19 = vdupq_n_s64(0xFFF0000000000000);
    v18 = vdupq_n_s64(0x7FF0000000000000uLL);
  }

  v23 = vsubq_f64(v19, v18);
  v24 = a2;
  v25 = vdivq_f64(v23, vdupq_lane_s64(COERCE__INT64(a2), 0));
  if (sqrt(vaddvq_f64(vmulq_f64(v25, v25))) <= 0.000001)
  {
    v89 = v14 + (v13 >> 1);
    v90 = vdupq_n_s64(0xFFF0000000000000);
    v91 = vdupq_n_s64(0x7FF0000000000000uLL);
    v92 = v91;
    v93 = v90;
    if (v13 >= 2)
    {
      v94 = 4 * v89 - 4 * v14;
      v92 = vdupq_n_s64(0x7FF0000000000000uLL);
      v93 = vdupq_n_s64(0xFFF0000000000000);
      do
      {
        v95 = *v16++;
        v96 = (a1[10] + 32 * v95);
        v92 = vminnmq_f64(v92, *v96);
        v93 = vmaxnmq_f64(v93, v96[1]);
        v94 -= 4;
      }

      while (v94);
    }

    *a4 = v92;
    a4[1] = v93;
    if (v13)
    {
      v97 = (a1[4] + 4 * v89);
      v98 = 4 * v15 - 4 * v89;
      v91 = vdupq_n_s64(0x7FF0000000000000uLL);
      v90 = vdupq_n_s64(0xFFF0000000000000);
      do
      {
        v99 = *v97++;
        v100 = (a1[10] + 32 * v99);
        v91 = vminnmq_f64(v91, *v100);
        v90 = vmaxnmq_f64(v90, v100[1]);
        v98 -= 4;
      }

      while (v98);
    }

    *a5 = v91;
    a5[1] = v90;
    v26 = *(a3 + 16) >> 1;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 1;
    v29 = -1;
    v30 = vdupq_n_s64(0x7FF0000000000000uLL);
    v31 = 1.79769313e308;
    v32 = vdupq_n_s64(0xFFF0000000000000);
    v33 = 1;
    v106 = v23;
    v107 = v18;
    v105 = v30;
    v103 = v19;
    v104 = v32;
    do
    {
      v34 = v33;
      v110 = v23;
      v35 = *(&v110 & 0xFFFFFFFFFFFFFFF7 | (8 * (v27 & 1)));
      if (fabs(v35) > 0.000001)
      {
        if (v112.__end_ - v112.__begin_ >= 1)
        {
          v108 = v26;
          v36 = v12;
          v37 = a4;
          v38 = a5;
          v39 = v28;
          bzero(v112.__begin_, v112.__end_ - v112.__begin_);
          v28 = v39;
          a5 = v38;
          a4 = v37;
          v32 = v104;
          v30 = v105;
          v24 = a2;
          v23 = v106;
          v18 = v107;
          v12 = v36;
          v26 = v108;
        }

        v40 = v119;
        v41 = (v120 - v119) >> 5;
        if (v41 >= 1)
        {
          v42 = v41 + 1;
          do
          {
            *v40 = v30;
            v40[1] = v32;
            v40 += 2;
            --v42;
          }

          while (v42 > 1);
        }

        v43 = *(v12 + 16);
        if (v43)
        {
          v44 = *(v12 + 12);
          v45 = (v43 + v44);
          v46 = (a1[4] + 4 * v44);
          v109 = v18;
          v47 = *(&v109 & 0xFFFFFFFFFFFFFFF7 | (8 * (v27 & 1)));
          v48 = 4 * v45 - 4 * v44;
          do
          {
            v49 = *v46++;
            v50 = ((*(a1[7] + 16 * v49 + 8 * (v27 & 1)) - v47) / v35 * v24);
            v51 = (a1[10] + 32 * v49);
            if (v50 == a2)
            {
              v52 = v11;
            }

            else
            {
              v52 = v50;
            }

            v119[2 * v52] = vminnmq_f64(*v51, v119[2 * v52]);
            v119[2 * v52 + 1] = vmaxnmq_f64(v51[1], v119[2 * v52 + 1]);
            ++v112.__begin_[v52];
            v48 -= 4;
          }

          while (v48);
        }

        v53 = v120;
        if (v119 != v120)
        {
          v54 = v116;
          v56 = *v119;
          v57 = v119[1];
          v55 = v119 + 2;
          *v116 = *v119;
          v54[1] = v57;
          if (v55 != v53)
          {
            v58 = v54 + 3;
            do
            {
              v59 = *v55;
              v60 = v55[1];
              v55 += 2;
              v56 = vminnmq_f64(v56, v59);
              v57 = vmaxnmq_f64(v57, v60);
              v58[-1] = v56;
              *v58 = v57;
              v58 += 2;
            }

            while (v55 != v53);
          }
        }

        v61 = v119;
        if (v120 != v119)
        {
          v62 = v114;
          v64 = v120[-2];
          v65 = v120[-1];
          v63 = v120 - 2;
          v114[-2] = v64;
          v62[-1] = v65;
          if (v61 != v63)
          {
            v66 = v62 - 4;
            do
            {
              v68 = v63[-2];
              v67 = v63[-1];
              v63 -= 2;
              v64 = vminnmq_f64(v64, v68);
              v65 = vmaxnmq_f64(v65, v67);
              *v66 = v64;
              v66[1] = v65;
              v66 -= 2;
            }

            while (v63 != v61);
          }
        }

        begin = v111.__begin_;
        if (v111.__end_ != v111.__begin_)
        {
          v70 = v112.__begin_ + v111.__end_ - v111.__begin_;
          v71 = v112.__begin_ + 1;
          v72 = *v112.__begin_;
          *v111.__begin_ = *v112.__begin_;
          if (v70 != v71)
          {
            v73 = begin + 1;
            do
            {
              v74 = *v71++;
              v72 += v74;
              *v73++ = v72;
            }

            while (v71 != v70);
          }
        }

        if (v11)
        {
          v75 = 0;
          v76 = v116;
          v77 = (__p + 32);
          do
          {
            v78 = vmaxnmq_f64(*v76, *v77);
            v79 = vminnmq_f64(v76[1], v77[1]);
            v80 = vcgtq_f64(v78, v79);
            v81 = vsubq_f64(v79, v78);
            *&v82 = *&vmulq_laneq_f64(v81, v81, 1);
            if (vorrq_s8(vdupq_laneq_s64(v80, 1), v80).i64[0] < 0)
            {
              v82 = 0.0;
            }

            if (v82 < v31)
            {
              v26 = begin[v75];
              v83 = v76[1];
              *a4 = *v76;
              a4[1] = v83;
              v84 = v77[1];
              *a5 = *v77;
              a5[1] = v84;
              v29 = v27;
              v28 = v75;
              v31 = v82;
            }

            ++v75;
            v76 += 2;
            v77 += 2;
          }

          while (v11 != v75);
        }
      }

      v33 = 0;
      v27 = 1;
    }

    while ((v34 & 1) != 0);
    v85 = a1[4];
    v86 = *(v12 + 12);
    v87 = (v85 + 4 * v86);
    v88 = *(v12 + 16) + v86;
    v122 = a1;
    v123 = v18;
    v124 = v103;
    v125 = v23;
    v126 = v28;
    v127 = v29;
    v128 = a2;
    std::__partition_impl[abi:nn200100]<unsigned int geom::bvh<double,(unsigned char)2>::partition_node_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)2>>(geom::surface_area_heuristic_functor<double,(unsigned char)2>,unsigned int,geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(v87, (v85 + 4 * v88), &v122);
  }

  if (v111.__begin_)
  {
    v111.__end_ = v111.__begin_;
    operator delete(v111.__begin_);
  }

  if (v112.__begin_)
  {
    v112.__end_ = v112.__begin_;
    operator delete(v112.__begin_);
  }

  if (__p)
  {
    v114 = __p;
    operator delete(__p);
  }

  if (v116)
  {
    v117 = v116;
    operator delete(v116);
  }

  if (v119)
  {
    v120 = v119;
    operator delete(v119);
  }

  v101 = *MEMORY[0x277D85DE8];
  return v26;
}

__n128 std::deque<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state,std::allocator<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state>>::push_back(uint64_t a1, __n128 *a2)
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
    std::deque<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state,std::allocator<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state>>::__add_back_capacity(a1);
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

void *std::deque<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state,std::allocator<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state>>::__add_back_capacity(void *a1)
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

uint64_t std::deque<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state,std::allocator<geom::bvh<double,(unsigned char)2>::raycast(std::function<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>,geom::ray<double,(unsigned char)2>,double &,unsigned int &)::state>>::__maybe_remove_back_spare[abi:nn200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 170 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0xAA)
  {
    a2 = 1;
  }

  if (v5 < 0x154)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::bvh_node<double,(unsigned char)2>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)2>::partition_node_median(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda(int)#1},std::allocator<geom::bvh<double,(unsigned char)2>::partition_node_median(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda(int)#1}>,std::function<unsigned int ()(unsigned int,unsigned int)> ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286291F68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)2>::partition_node_median(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda(int)#1},std::allocator<geom::bvh<double,(unsigned char)2>::partition_node_median(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda(int)#1}>,std::function<unsigned int ()(unsigned int,unsigned int)> ()(int)>::operator()@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(result + 8);
  *a3 = &unk_286291FD8;
  *(a3 + 8) = v4;
  *(a3 + 16) = v3;
  *(a3 + 24) = a3;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)2>::partition_node_median(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda(int)#1},std::allocator<geom::bvh<double,(unsigned char)2>::partition_node_median(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda(int)#1}>,std::function<unsigned int ()(unsigned int,unsigned int)> ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<geom::bvh<double,(unsigned char)2>::partition_node_median(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda(int)#1}::operator() const(int)::{lambda(unsigned int,unsigned int)#1},std::allocator<geom::bvh<double,(unsigned char)2>::partition_node_median(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda(int)#1}::operator() const(int)::{lambda(unsigned int,unsigned int)#1}>,unsigned int ()(unsigned int,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286291FD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)2>::partition_node_median(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda(int)#1}::operator() const(int)::{lambda(unsigned int,unsigned int)#1},std::allocator<geom::bvh<double,(unsigned char)2>::partition_node_median(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda(int)#1}::operator() const(int)::{lambda(unsigned int,unsigned int)#1}>,unsigned int ()(unsigned int,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<geom::bvh<double,(unsigned char)2>::partition_node_median(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,int,double &,unsigned int &)#1},std::allocator<geom::bvh<double,(unsigned char)2>::partition_node_median(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,int,double &,unsigned int &)#1}>,void ()(geom::bvh_node<double,(unsigned char)2> const&,int,double &,unsigned int &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286292068;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)2>::partition_node_median(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,int,double &,unsigned int &)#1},std::allocator<geom::bvh<double,(unsigned char)2>::partition_node_median(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,int,double &,unsigned int &)#1}>,void ()(geom::bvh_node<double,(unsigned char)2> const&,int,double &,unsigned int &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t geom::bvh<double,(unsigned char)2>::partition_node_median(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,int,double &,unsigned int &)#1}::operator()(uint64_t *a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v11 = *(a2 + 16);
  v12 = (*(*a1 + 32) + 4 * *(a2 + 12));
  v13 = (2 * v11) & 0x1FFFFFFFCLL;
  std::function<std::function<unsigned int ()(unsigned int,unsigned int)> ()(int)>::operator()(a1[1], a3);
  if (v11)
  {
    std::__nth_element[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int,unsigned int)> &,unsigned int *>(v12, (v12 + v13), &v12[v11], v19);
  }

  std::__function::__value_func<unsigned int ()(unsigned int,unsigned int)>::~__value_func[abi:nn200100](v19);
  *a4 = *(*(v10 + 56) + 16 * *(v12 + v13) + 8 * (a3 & 1));
  std::function<std::function<unsigned int ()(unsigned int,unsigned int)> ()(int)>::operator()(a1[1], a3);
  v14 = std::__upper_bound[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int,unsigned int)>,unsigned int *,unsigned int *,unsigned int,std::__identity>(v12, &v12[v11], (v12 + v13), v18);
  result = std::__function::__value_func<unsigned int ()(unsigned int,unsigned int)>::~__value_func[abi:nn200100](v18);
  v16 = (v14 - v12) >> 2;
  if (*(a2 + 16) - v16 < v16)
  {
    LODWORD(v16) = *(a2 + 16) - v16;
  }

  *a5 = v16;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__value_func<void ()(geom::bvh_node<double,(unsigned char)2> const&,int,double &,unsigned int &)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 std::__function::__func<geom::bvh<double,(unsigned char)2>::partition_node_median(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda(unsigned int)#1},std::allocator<geom::bvh<double,(unsigned char)2>::partition_node_median(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda(unsigned int)#1}>,BOOL ()(unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2862920F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)2>::partition_node_median(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda(unsigned int)#1},std::allocator<geom::bvh<double,(unsigned char)2>::partition_node_median(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda(unsigned int)#1}>,BOOL ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_DWORD *std::__partition_impl[abi:nn200100]<geom::bvh<double,(unsigned char)2>::partition_node_middle(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda(unsigned int)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(_DWORD *result, _DWORD *a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = result;
    v4 = *(*a3 + 56);
    v5 = *(a3 + 16);
    result = a2;
    while (2)
    {
      v6 = *(a3 + 8);
      while (1)
      {
        v7 = *v3;
        if (*(v4 + 16 * v7 + 8 * (v6 & 1)) >= v5)
        {
          break;
        }

        if (++v3 == result)
        {
          return result;
        }
      }

      do
      {
        if (--result == v3)
        {
          return v3;
        }

        v8 = *result;
      }

      while (*(v4 + 16 * v8 + 8 * (v6 & 1)) >= v5);
      *v3++ = v8;
      *result = v7;
      if (result != v3)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<geom::bvh<float,(unsigned char)3>::build_middle_split(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)#1},std::allocator<geom::bvh<float,(unsigned char)3>::build_middle_split(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286292178;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<geom::bvh<float,(unsigned char)3>::build_middle_split(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)#1},std::allocator<geom::bvh<float,(unsigned char)3>::build_middle_split(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<unsigned int ()(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<geom::bvh<float,(unsigned char)3>::build_median(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)#1},std::allocator<geom::bvh<float,(unsigned char)3>::build_median(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286292208;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<geom::bvh<float,(unsigned char)3>::build_median(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)#1},std::allocator<geom::bvh<float,(unsigned char)3>::build_median(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<geom::surface_area_heuristic_functor<float,(unsigned char)3>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>,geom::surface_area_heuristic_functor<float,(unsigned char)3>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)#1},std::allocator<void geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<geom::surface_area_heuristic_functor<float,(unsigned char)3>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>,geom::surface_area_heuristic_functor<float,(unsigned char)3>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286292288;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<geom::surface_area_heuristic_functor<float,(unsigned char)3>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>,geom::surface_area_heuristic_functor<float,(unsigned char)3>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)#1},std::allocator<void geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<geom::surface_area_heuristic_functor<float,(unsigned char)3>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>,geom::surface_area_heuristic_functor<float,(unsigned char)3>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t geom::bvh<float,(unsigned char)3>::partition_node_heuristic<geom::surface_area_heuristic_functor<float,(unsigned char)3>>(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v152 = *MEMORY[0x277D85DE8];
  v142 = 0;
  v143 = 0;
  v144 = 0;
  v10 = a2;
  std::vector<geom::bbox<float,(unsigned char)3>>::resize(&v142, a2);
  v139 = 0;
  v140 = 0;
  v141 = 0;
  std::vector<geom::bbox<float,(unsigned char)3>>::resize(&v139, v10);
  __p = 0;
  v137 = 0;
  v138 = 0;
  std::vector<geom::bbox<float,(unsigned char)3>>::resize(&__p, v10);
  memset(&v135, 0, sizeof(v135));
  std::vector<float>::resize(&v135, v10);
  memset(&v134, 0, sizeof(v134));
  v11 = a2 - 1;
  std::vector<float>::resize(&v134, v11);
  v14 = *(a3 + 12);
  v13 = *(a3 + 16);
  v15 = v13 + v14;
  v16 = (a1[4] + 4 * v14);
  if (v13)
  {
    v17 = 4 * v15 - 4 * v14;
    v18.i64[0] = 0x7F0000007FLL;
    v18.i64[1] = 0x7F0000007FLL;
    v19 = vnegq_f32(v18);
    v20 = (a1[4] + 4 * v14);
    do
    {
      v21 = *v20++;
      v22 = *(a1[7] + 16 * v21);
      v19.i32[3] = 0;
      v22.i32[3] = 0;
      v19 = vminnmq_f32(v19, v22);
      v18.i32[3] = 0;
      v18 = vmaxnmq_f32(v18, v22);
      v17 -= 4;
    }

    while (v17);
  }

  else
  {
    v18.i64[0] = 0x7F0000007FLL;
    v18.i64[1] = 0x7F0000007FLL;
    v19 = vnegq_f32(v18);
  }

  *v12.i32 = a2;
  v23 = vsubq_f32(v18, v19);
  v24 = vdivq_f32(v23, vdupq_lane_s32(v12, 0));
  v25 = vmulq_f32(v24, v24);
  if (sqrtf(v25.f32[2] + vaddv_f32(*v25.f32)) <= 0.00001)
  {
    v102 = v14 + (v13 >> 1);
    v103.i64[0] = 0x7F0000007FLL;
    v103.i64[1] = 0x7F0000007FLL;
    v104 = vnegq_f32(v103);
    v105 = v104;
    v106.i64[0] = 0x7F0000007FLL;
    v106.i32[2] = 127;
    if (v13 >= 2)
    {
      v107 = 4 * v102 - 4 * v14;
      v108.i64[0] = 0x7F0000007FLL;
      v108.i64[1] = 0x7F0000007FLL;
      v109 = vnegq_f32(v108);
      do
      {
        v110 = *v16++;
        v111 = (a1[10] + 32 * v110);
        v112 = v109;
        v112.i32[3] = 0;
        v113 = *v111;
        v114 = v111[1];
        v113.i32[3] = 0;
        v105 = vminnmq_f32(v112, v113);
        v115 = v108;
        v115.i32[3] = 0;
        v114.i32[3] = 0;
        v105.i32[3] = v109.i32[3];
        v106 = vmaxnmq_f32(v115, v114);
        v106.i32[3] = v108.i32[3];
        v108 = v106;
        v109 = v105;
        v107 -= 4;
      }

      while (v107);
    }

    *(a4 + 8) = v105.i32[2];
    *a4 = v105.i64[0];
    *(a4 + 24) = v106.i32[2];
    *(a4 + 16) = v106.i64[0];
    if (v13)
    {
      v116 = (a1[4] + 4 * v102);
      v117 = 4 * v15 - 4 * v102;
      v118.i64[0] = 0x7F0000007FLL;
      v118.i64[1] = 0x7F0000007FLL;
      v119 = vnegq_f32(v118);
      do
      {
        v120 = *v116++;
        v121 = (a1[10] + 32 * v120);
        v122 = v119;
        v122.i32[3] = 0;
        v123 = *v121;
        v124 = v121[1];
        v123.i32[3] = 0;
        v104 = vminnmq_f32(v122, v123);
        v125 = v118;
        v125.i32[3] = 0;
        v124.i32[3] = 0;
        v104.i32[3] = v119.i32[3];
        v103 = vmaxnmq_f32(v125, v124);
        v103.i32[3] = v118.i32[3];
        v118 = v103;
        v119 = v104;
        v117 -= 4;
      }

      while (v117);
    }

    *a5 = v104.i64[0];
    *(a5 + 8) = v104.i32[2];
    *(a5 + 16) = v103.i64[0];
    *(a5 + 24) = v103.i32[2];
    v26 = *(a3 + 16) >> 1;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = -1;
    v29 = 1;
    v30 = 3.4028e38;
    v31.i64[0] = 0x7F0000007FLL;
    v31.i64[1] = 0x7F0000007FLL;
    v32 = vnegq_f32(v31);
    v130 = v23;
    v131 = v19;
    v128 = v18;
    v129 = v32;
    do
    {
      v133 = v23;
      v33 = *(&v133 & 0xFFFFFFFFFFFFFFF3 | (4 * (v27 & 3)));
      if (fabsf(v33) > 0.00001)
      {
        if (v135.__end_ - v135.__begin_ >= 1)
        {
          bzero(v135.__begin_, v135.__end_ - v135.__begin_);
          v32 = v129;
          *v12.i32 = a2;
          v31.i64[0] = 0x7F0000007FLL;
          v31.i64[1] = 0x7F0000007FLL;
          v23 = v130;
          v19 = v131;
        }

        v34 = v142;
        v35 = (v143 - v142) >> 5;
        if (v35 >= 1)
        {
          v36 = v35 + 1;
          do
          {
            *v34 = v32;
            v34[1] = v31;
            v34 += 2;
            --v36;
          }

          while (v36 > 1);
        }

        v37 = *(a3 + 16);
        if (v37)
        {
          v38 = *(a3 + 12);
          v39 = (v37 + v38);
          v40 = (a1[4] + 4 * v38);
          v132 = v19;
          v41 = *(&v132 & 0xFFFFFFFFFFFFFFF3 | (4 * (v27 & 3)));
          v42 = 4 * v39 - 4 * v38;
          do
          {
            v43 = *v40++;
            v44 = (a1[10] + 32 * v43);
            v45 = (((*(a1[7] + 16 * v43 + 4 * (v27 & 3)) - v41) / v33) * *v12.i32);
            v46 = *v44;
            if (v45 == a2)
            {
              v45 = v11;
            }

            v47 = 32 * v45;
            v48 = *(v142 + v47);
            v46.i32[3] = 0;
            v48.i32[3] = 0;
            *(v142 + v47) = vminnmq_f32(v46, v48);
            v49 = v44[1];
            v49.i32[3] = 0;
            v50 = *(v142 + v47 + 16);
            v50.i32[3] = 0;
            *(v142 + v47 + 16) = vmaxnmq_f32(v49, v50);
            ++v135.__begin_[v45];
            v42 -= 4;
          }

          while (v42);
        }

        v51 = v143;
        if (v142 != v143)
        {
          v52 = v139;
          v54 = *v142;
          v55 = *(v142 + 1);
          v53 = (v142 + 32);
          *v139 = *v142;
          v52[1] = v55;
          if (v53 != v51)
          {
            v56 = v52 + 3;
            do
            {
              v57 = v54;
              v57.i32[3] = 0;
              v58 = *v53;
              v59 = v53[1];
              v53 += 2;
              v58.i32[3] = 0;
              v60 = vminnmq_f32(v57, v58);
              v61 = v55;
              v61.i32[3] = 0;
              v59.i32[3] = 0;
              v62 = vmaxnmq_f32(v61, v59);
              v60.i32[3] = v54.i32[3];
              v62.i32[3] = v55.i32[3];
              v56[-1] = v60;
              *v56 = v62;
              v56 += 2;
              v54 = v60;
              v55 = v62;
            }

            while (v53 != v51);
          }
        }

        v63 = v142;
        if (v143 != v142)
        {
          v64 = v137;
          v66 = v143[-2];
          v67 = v143[-1];
          v65 = v143 - 2;
          *(v137 - 2) = v66;
          *(v64 - 1) = v67;
          if (v63 != v65)
          {
            v68 = (v64 - 4);
            do
            {
              v69 = v65[-2];
              v70 = v65[-1];
              v65 -= 2;
              v71 = v66;
              v71.i32[3] = 0;
              v69.i32[3] = 0;
              v72 = v67;
              v72.i32[3] = 0;
              v70.i32[3] = 0;
              v73 = vminnmq_f32(v71, v69);
              v74 = vmaxnmq_f32(v72, v70);
              v73.i32[3] = v66.i32[3];
              v74.i32[3] = v67.i32[3];
              *v68 = v73;
              v68[1] = v74;
              v68 -= 2;
              v66 = v73;
              v67 = v74;
            }

            while (v65 != v63);
          }
        }

        begin = v134.__begin_;
        if (v134.__end_ != v134.__begin_)
        {
          v76 = v135.__begin_ + v134.__end_ - v134.__begin_;
          v77 = v135.__begin_ + 1;
          v78 = *v135.__begin_;
          *v134.__begin_ = *v135.__begin_;
          if (v76 != v77)
          {
            v79 = begin + 1;
            do
            {
              v80 = *v77++;
              v78 += v80;
              *v79++ = v78;
            }

            while (v77 != v76);
          }
        }

        if (v11)
        {
          v81 = 0;
          v82 = v139;
          v83 = (__p + 32);
          do
          {
            v84 = begin[v81];
            v85 = v82[1];
            v86 = vcgtq_f32(*v82, v85);
            v86.i32[3] = v86.i32[2];
            v87 = vsubq_f32(v85, *v82);
            v88 = vmulq_f32(v87, vextq_s8(vuzp1q_s32(v87, v87), v87, 0xCuLL));
            v89 = v88.f32[2] + vaddv_f32(*v88.f32);
            if ((vmaxvq_u32(v86) & 0x80000000) != 0)
            {
              v89 = 0.0;
            }

            v90 = v83[1];
            v91 = vcgtq_f32(*v83, v90);
            v91.i32[3] = v91.i32[2];
            v92 = vsubq_f32(v90, *v83);
            v93 = vmulq_f32(v92, vextq_s8(vuzp1q_s32(v92, v92), v92, 0xCuLL));
            v94 = v93.f32[2] + vaddv_f32(*v93.f32);
            if ((vmaxvq_u32(v91) & 0x80000000) != 0)
            {
              v94 = 0.0;
            }

            v95 = (v94 * (*(a3 + 16) - v84)) + (v84 * v89);
            if (v95 < v30)
            {
              v96 = v82[1];
              *a4 = *v82;
              *(a4 + 16) = v96;
              v97 = v83[1];
              *a5 = *v83;
              *(a5 + 16) = v97;
              v28 = v27;
              v26 = v84;
              v29 = v81;
              v30 = v95;
            }

            ++v81;
            v82 += 2;
            v83 += 2;
          }

          while (v11 != v81);
        }
      }

      ++v27;
    }

    while (v27 != 3);
    v98 = a1[4];
    v99 = *(a3 + 12);
    v100 = (v98 + 4 * v99);
    v101 = *(a3 + 16) + v99;
    v145 = a1;
    v146 = v19;
    v147 = v128;
    v148 = v23;
    v149 = v29;
    v150 = v28;
    v151 = a2;
    std::__partition_impl[abi:nn200100]<unsigned int geom::bvh<float,(unsigned char)3>::partition_node_heuristic<geom::surface_area_heuristic_functor<float,(unsigned char)3>>(geom::surface_area_heuristic_functor<float,(unsigned char)3>,unsigned int,geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)::{lambda#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(v100, (v98 + 4 * v101), &v145);
  }

  if (v134.__begin_)
  {
    v134.__end_ = v134.__begin_;
    operator delete(v134.__begin_);
  }

  if (v135.__begin_)
  {
    v135.__end_ = v135.__begin_;
    operator delete(v135.__begin_);
  }

  if (__p)
  {
    v137 = __p;
    operator delete(__p);
  }

  if (v139)
  {
    v140 = v139;
    operator delete(v139);
  }

  if (v142)
  {
    v143 = v142;
    operator delete(v142);
  }

  v126 = *MEMORY[0x277D85DE8];
  return v26;
}

_DWORD *std::__partition_impl[abi:nn200100]<unsigned int geom::bvh<float,(unsigned char)3>::partition_node_heuristic<geom::surface_area_heuristic_functor<float,(unsigned char)3>>(geom::surface_area_heuristic_functor<float,(unsigned char)3>,unsigned int,geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)::{lambda(unsigned int)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(_DWORD *result, _DWORD *a2, _DWORD *a3)
{
  if (result != a2)
  {
    v3 = result;
    v4 = *(*a3 + 56);
    result = a2;
    while (2)
    {
      v5 = a3[16];
      v6 = a3[17];
      v7 = &a3[v6 & 3];
      v8 = v7[4];
      v9 = v7[12];
      v10 = a3[18];
      v11 = v10;
      v12 = v3;
      while (1)
      {
        v13 = *v12;
        v14 = (((*(v4 + 16 * v13 + 4 * (a3[17] & 3)) - v8) / v9) * v11);
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
        v16 = (((*(v4 + 16 * v15 + 4 * (v6 & 3)) - v8) / v9) * v11);
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

__n128 std::__function::__func<void geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<geom::volume_heuristic_functor<float,(unsigned char)3>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>,geom::volume_heuristic_functor<float,(unsigned char)3>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)#1},std::allocator<void geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<geom::volume_heuristic_functor<float,(unsigned char)3>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>,geom::volume_heuristic_functor<float,(unsigned char)3>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286292308;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<geom::volume_heuristic_functor<float,(unsigned char)3>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>,geom::volume_heuristic_functor<float,(unsigned char)3>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)#1},std::allocator<void geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<geom::volume_heuristic_functor<float,(unsigned char)3>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>,geom::volume_heuristic_functor<float,(unsigned char)3>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t geom::bvh<float,(unsigned char)3>::partition_node_heuristic<geom::volume_heuristic_functor<float,(unsigned char)3>>(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v150 = *MEMORY[0x277D85DE8];
  v140 = 0;
  v141 = 0;
  v142 = 0;
  v10 = a2;
  std::vector<geom::bbox<float,(unsigned char)3>>::resize(&v140, a2);
  v137 = 0;
  v138 = 0;
  v139 = 0;
  std::vector<geom::bbox<float,(unsigned char)3>>::resize(&v137, v10);
  __p = 0;
  v135 = 0;
  v136 = 0;
  std::vector<geom::bbox<float,(unsigned char)3>>::resize(&__p, v10);
  memset(&v133, 0, sizeof(v133));
  std::vector<float>::resize(&v133, v10);
  memset(&v132, 0, sizeof(v132));
  v11 = a2 - 1;
  std::vector<float>::resize(&v132, v11);
  v14 = *(a3 + 12);
  v13 = *(a3 + 16);
  v15 = v13 + v14;
  v16 = (a1[4] + 4 * v14);
  if (v13)
  {
    v17 = 4 * v15 - 4 * v14;
    v18.i64[0] = 0x7F0000007FLL;
    v18.i64[1] = 0x7F0000007FLL;
    v19 = vnegq_f32(v18);
    v20 = (a1[4] + 4 * v14);
    do
    {
      v21 = *v20++;
      v22 = *(a1[7] + 16 * v21);
      v19.i32[3] = 0;
      v22.i32[3] = 0;
      v19 = vminnmq_f32(v19, v22);
      v18.i32[3] = 0;
      v18 = vmaxnmq_f32(v18, v22);
      v17 -= 4;
    }

    while (v17);
  }

  else
  {
    v18.i64[0] = 0x7F0000007FLL;
    v18.i64[1] = 0x7F0000007FLL;
    v19 = vnegq_f32(v18);
  }

  *v12.i32 = a2;
  v23 = vsubq_f32(v18, v19);
  v24 = vdivq_f32(v23, vdupq_lane_s32(v12, 0));
  v25 = vmulq_f32(v24, v24);
  if (sqrtf(v25.f32[2] + vaddv_f32(*v25.f32)) <= 0.00001)
  {
    v100 = v14 + (v13 >> 1);
    v101.i64[0] = 0x7F0000007FLL;
    v101.i64[1] = 0x7F0000007FLL;
    v102 = vnegq_f32(v101);
    v103 = v102;
    v104.i64[0] = 0x7F0000007FLL;
    v104.i32[2] = 127;
    if (v13 >= 2)
    {
      v105 = 4 * v100 - 4 * v14;
      v106.i64[0] = 0x7F0000007FLL;
      v106.i64[1] = 0x7F0000007FLL;
      v107 = vnegq_f32(v106);
      do
      {
        v108 = *v16++;
        v109 = (a1[10] + 32 * v108);
        v110 = v107;
        v110.i32[3] = 0;
        v111 = *v109;
        v112 = v109[1];
        v111.i32[3] = 0;
        v103 = vminnmq_f32(v110, v111);
        v113 = v106;
        v113.i32[3] = 0;
        v112.i32[3] = 0;
        v103.i32[3] = v107.i32[3];
        v104 = vmaxnmq_f32(v113, v112);
        v104.i32[3] = v106.i32[3];
        v106 = v104;
        v107 = v103;
        v105 -= 4;
      }

      while (v105);
    }

    *(a4 + 8) = v103.i32[2];
    *a4 = v103.i64[0];
    *(a4 + 24) = v104.i32[2];
    *(a4 + 16) = v104.i64[0];
    if (v13)
    {
      v114 = (a1[4] + 4 * v100);
      v115 = 4 * v15 - 4 * v100;
      v116.i64[0] = 0x7F0000007FLL;
      v116.i64[1] = 0x7F0000007FLL;
      v117 = vnegq_f32(v116);
      do
      {
        v118 = *v114++;
        v119 = (a1[10] + 32 * v118);
        v120 = v117;
        v120.i32[3] = 0;
        v121 = *v119;
        v122 = v119[1];
        v121.i32[3] = 0;
        v102 = vminnmq_f32(v120, v121);
        v123 = v116;
        v123.i32[3] = 0;
        v122.i32[3] = 0;
        v102.i32[3] = v117.i32[3];
        v101 = vmaxnmq_f32(v123, v122);
        v101.i32[3] = v116.i32[3];
        v116 = v101;
        v117 = v102;
        v115 -= 4;
      }

      while (v115);
    }

    *a5 = v102.i64[0];
    *(a5 + 8) = v102.i32[2];
    *(a5 + 16) = v101.i64[0];
    *(a5 + 24) = v101.i32[2];
    v26 = *(a3 + 16) >> 1;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = -1;
    v29 = 1;
    v30 = 3.4028e38;
    v31.i64[0] = 0x7F0000007FLL;
    v31.i64[1] = 0x7F0000007FLL;
    v32 = vnegq_f32(v31);
    v128 = v23;
    v129 = v19;
    v126 = v18;
    v127 = v32;
    do
    {
      v131 = v23;
      v33 = *(&v131 & 0xFFFFFFFFFFFFFFF3 | (4 * (v27 & 3)));
      if (fabsf(v33) > 0.00001)
      {
        if (v133.__end_ - v133.__begin_ >= 1)
        {
          bzero(v133.__begin_, v133.__end_ - v133.__begin_);
          v32 = v127;
          *v12.i32 = a2;
          v31.i64[0] = 0x7F0000007FLL;
          v31.i64[1] = 0x7F0000007FLL;
          v23 = v128;
          v19 = v129;
        }

        v34 = v140;
        v35 = (v141 - v140) >> 5;
        if (v35 >= 1)
        {
          v36 = v35 + 1;
          do
          {
            *v34 = v32;
            v34[1] = v31;
            v34 += 2;
            --v36;
          }

          while (v36 > 1);
        }

        v37 = *(a3 + 16);
        if (v37)
        {
          v38 = *(a3 + 12);
          v39 = (v37 + v38);
          v40 = (a1[4] + 4 * v38);
          v130 = v19;
          v41 = *(&v130 & 0xFFFFFFFFFFFFFFF3 | (4 * (v27 & 3)));
          v42 = 4 * v39 - 4 * v38;
          do
          {
            v43 = *v40++;
            v44 = (a1[10] + 32 * v43);
            v45 = (((*(a1[7] + 16 * v43 + 4 * (v27 & 3)) - v41) / v33) * *v12.i32);
            v46 = *v44;
            if (v45 == a2)
            {
              v45 = v11;
            }

            v47 = 32 * v45;
            v48 = *(v140 + v47);
            v46.i32[3] = 0;
            v48.i32[3] = 0;
            *(v140 + v47) = vminnmq_f32(v46, v48);
            v49 = v44[1];
            v49.i32[3] = 0;
            v50 = *(v140 + v47 + 16);
            v50.i32[3] = 0;
            *(v140 + v47 + 16) = vmaxnmq_f32(v49, v50);
            ++v133.__begin_[v45];
            v42 -= 4;
          }

          while (v42);
        }

        v51 = v141;
        if (v140 != v141)
        {
          v52 = v137;
          v54 = *v140;
          v55 = *(v140 + 1);
          v53 = (v140 + 32);
          *v137 = *v140;
          v52[1] = v55;
          if (v53 != v51)
          {
            v56 = v52 + 3;
            do
            {
              v57 = v54;
              v57.i32[3] = 0;
              v58 = *v53;
              v59 = v53[1];
              v53 += 2;
              v58.i32[3] = 0;
              v60 = vminnmq_f32(v57, v58);
              v61 = v55;
              v61.i32[3] = 0;
              v59.i32[3] = 0;
              v62 = vmaxnmq_f32(v61, v59);
              v60.i32[3] = v54.i32[3];
              v62.i32[3] = v55.i32[3];
              v56[-1] = v60;
              *v56 = v62;
              v56 += 2;
              v54 = v60;
              v55 = v62;
            }

            while (v53 != v51);
          }
        }

        v63 = v140;
        if (v141 != v140)
        {
          v64 = v135;
          v66 = v141[-2];
          v67 = v141[-1];
          v65 = v141 - 2;
          *(v135 - 2) = v66;
          *(v64 - 1) = v67;
          if (v63 != v65)
          {
            v68 = (v64 - 4);
            do
            {
              v69 = v65[-2];
              v70 = v65[-1];
              v65 -= 2;
              v71 = v66;
              v71.i32[3] = 0;
              v69.i32[3] = 0;
              v72 = v67;
              v72.i32[3] = 0;
              v70.i32[3] = 0;
              v73 = vminnmq_f32(v71, v69);
              v74 = vmaxnmq_f32(v72, v70);
              v73.i32[3] = v66.i32[3];
              v74.i32[3] = v67.i32[3];
              *v68 = v73;
              v68[1] = v74;
              v68 -= 2;
              v66 = v73;
              v67 = v74;
            }

            while (v65 != v63);
          }
        }

        begin = v132.__begin_;
        if (v132.__end_ != v132.__begin_)
        {
          v76 = v133.__begin_ + v132.__end_ - v132.__begin_;
          v77 = v133.__begin_ + 1;
          v78 = *v133.__begin_;
          *v132.__begin_ = *v133.__begin_;
          if (v76 != v77)
          {
            v79 = begin + 1;
            do
            {
              v80 = *v77++;
              v78 += v80;
              *v79++ = v78;
            }

            while (v77 != v76);
          }
        }

        if (v11)
        {
          v81 = 0;
          v82 = v137;
          v83 = (__p + 32);
          do
          {
            v84 = begin[v81];
            v85 = v82[1];
            v86 = vcgtq_f32(*v82, v85);
            v86.i32[3] = v86.i32[2];
            v87 = vsubq_f32(v85, *v82);
            v88 = vmuls_lane_f32(vmuls_lane_f32(v87.f32[0], *v87.f32, 1), v87, 2);
            if ((vmaxvq_u32(v86) & 0x80000000) != 0)
            {
              v88 = 0.0;
            }

            v89 = v83[1];
            v90 = vcgtq_f32(*v83, v89);
            v90.i32[3] = v90.i32[2];
            v91 = vsubq_f32(v89, *v83);
            v92 = vmuls_lane_f32(vmuls_lane_f32(v91.f32[0], *v91.f32, 1), v91, 2);
            if ((vmaxvq_u32(v90) & 0x80000000) != 0)
            {
              v92 = 0.0;
            }

            v93 = (v92 * (*(a3 + 16) - v84)) + (v84 * v88);
            if (v93 < v30)
            {
              v94 = v82[1];
              *a4 = *v82;
              *(a4 + 16) = v94;
              v95 = v83[1];
              *a5 = *v83;
              *(a5 + 16) = v95;
              v28 = v27;
              v26 = v84;
              v29 = v81;
              v30 = v93;
            }

            ++v81;
            v82 += 2;
            v83 += 2;
          }

          while (v11 != v81);
        }
      }

      ++v27;
    }

    while (v27 != 3);
    v96 = a1[4];
    v97 = *(a3 + 12);
    v98 = (v96 + 4 * v97);
    v99 = *(a3 + 16) + v97;
    v143 = a1;
    v144 = v19;
    v145 = v126;
    v146 = v23;
    v147 = v29;
    v148 = v28;
    v149 = a2;
    std::__partition_impl[abi:nn200100]<unsigned int geom::bvh<float,(unsigned char)3>::partition_node_heuristic<geom::surface_area_heuristic_functor<float,(unsigned char)3>>(geom::surface_area_heuristic_functor<float,(unsigned char)3>,unsigned int,geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)::{lambda#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(v98, (v96 + 4 * v99), &v143);
  }

  if (v132.__begin_)
  {
    v132.__end_ = v132.__begin_;
    operator delete(v132.__begin_);
  }

  if (v133.__begin_)
  {
    v133.__end_ = v133.__begin_;
    operator delete(v133.__begin_);
  }

  if (__p)
  {
    v135 = __p;
    operator delete(__p);
  }

  if (v137)
  {
    v138 = v137;
    operator delete(v137);
  }

  if (v140)
  {
    v141 = v140;
    operator delete(v140);
  }

  v124 = *MEMORY[0x277D85DE8];
  return v26;
}

__n128 std::__function::__func<void geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<geom::intersection_volume_heuristic_functor<float,(unsigned char)3>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>,geom::intersection_volume_heuristic_functor<float,(unsigned char)3>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)#1},std::allocator<void geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<geom::intersection_volume_heuristic_functor<float,(unsigned char)3>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>,geom::intersection_volume_heuristic_functor<float,(unsigned char)3>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286292388;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<geom::intersection_volume_heuristic_functor<float,(unsigned char)3>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>,geom::intersection_volume_heuristic_functor<float,(unsigned char)3>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)#1},std::allocator<void geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<geom::intersection_volume_heuristic_functor<float,(unsigned char)3>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>,geom::intersection_volume_heuristic_functor<float,(unsigned char)3>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t geom::bvh<float,(unsigned char)3>::partition_node_heuristic<geom::intersection_volume_heuristic_functor<float,(unsigned char)3>>(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v149 = *MEMORY[0x277D85DE8];
  v139 = 0;
  v140 = 0;
  v141 = 0;
  v10 = a2;
  std::vector<geom::bbox<float,(unsigned char)3>>::resize(&v139, a2);
  v136 = 0;
  v137 = 0;
  v138 = 0;
  std::vector<geom::bbox<float,(unsigned char)3>>::resize(&v136, v10);
  __p = 0;
  v134 = 0;
  v135 = 0;
  std::vector<geom::bbox<float,(unsigned char)3>>::resize(&__p, v10);
  memset(&v132, 0, sizeof(v132));
  std::vector<float>::resize(&v132, v10);
  memset(&v131, 0, sizeof(v131));
  v11 = a2 - 1;
  std::vector<float>::resize(&v131, v11);
  v14 = *(a3 + 12);
  v13 = *(a3 + 16);
  v15 = v13 + v14;
  v16 = (a1[4] + 4 * v14);
  if (v13)
  {
    v17 = 4 * v15 - 4 * v14;
    v18.i64[0] = 0x7F0000007FLL;
    v18.i64[1] = 0x7F0000007FLL;
    v19 = vnegq_f32(v18);
    v20 = (a1[4] + 4 * v14);
    do
    {
      v21 = *v20++;
      v22 = *(a1[7] + 16 * v21);
      v19.i32[3] = 0;
      v22.i32[3] = 0;
      v19 = vminnmq_f32(v19, v22);
      v18.i32[3] = 0;
      v18 = vmaxnmq_f32(v18, v22);
      v17 -= 4;
    }

    while (v17);
  }

  else
  {
    v18.i64[0] = 0x7F0000007FLL;
    v18.i64[1] = 0x7F0000007FLL;
    v19 = vnegq_f32(v18);
  }

  *v12.i32 = a2;
  v23 = vsubq_f32(v18, v19);
  v24 = vdivq_f32(v23, vdupq_lane_s32(v12, 0));
  v25 = vmulq_f32(v24, v24);
  if (sqrtf(v25.f32[2] + vaddv_f32(*v25.f32)) <= 0.00001)
  {
    v99 = v14 + (v13 >> 1);
    v100.i64[0] = 0x7F0000007FLL;
    v100.i64[1] = 0x7F0000007FLL;
    v101 = vnegq_f32(v100);
    v102 = v101;
    v103.i64[0] = 0x7F0000007FLL;
    v103.i32[2] = 127;
    if (v13 >= 2)
    {
      v104 = 4 * v99 - 4 * v14;
      v105.i64[0] = 0x7F0000007FLL;
      v105.i64[1] = 0x7F0000007FLL;
      v106 = vnegq_f32(v105);
      do
      {
        v107 = *v16++;
        v108 = (a1[10] + 32 * v107);
        v109 = v106;
        v109.i32[3] = 0;
        v110 = *v108;
        v111 = v108[1];
        v110.i32[3] = 0;
        v102 = vminnmq_f32(v109, v110);
        v112 = v105;
        v112.i32[3] = 0;
        v111.i32[3] = 0;
        v102.i32[3] = v106.i32[3];
        v103 = vmaxnmq_f32(v112, v111);
        v103.i32[3] = v105.i32[3];
        v105 = v103;
        v106 = v102;
        v104 -= 4;
      }

      while (v104);
    }

    *(a4 + 8) = v102.i32[2];
    *a4 = v102.i64[0];
    *(a4 + 24) = v103.i32[2];
    *(a4 + 16) = v103.i64[0];
    if (v13)
    {
      v113 = (a1[4] + 4 * v99);
      v114 = 4 * v15 - 4 * v99;
      v115.i64[0] = 0x7F0000007FLL;
      v115.i64[1] = 0x7F0000007FLL;
      v116 = vnegq_f32(v115);
      do
      {
        v117 = *v113++;
        v118 = (a1[10] + 32 * v117);
        v119 = v116;
        v119.i32[3] = 0;
        v120 = *v118;
        v121 = v118[1];
        v120.i32[3] = 0;
        v101 = vminnmq_f32(v119, v120);
        v122 = v115;
        v122.i32[3] = 0;
        v121.i32[3] = 0;
        v101.i32[3] = v116.i32[3];
        v100 = vmaxnmq_f32(v122, v121);
        v100.i32[3] = v115.i32[3];
        v115 = v100;
        v116 = v101;
        v114 -= 4;
      }

      while (v114);
    }

    *a5 = v101.i64[0];
    *(a5 + 8) = v101.i32[2];
    *(a5 + 16) = v100.i64[0];
    *(a5 + 24) = v100.i32[2];
    v26 = *(a3 + 16) >> 1;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = -1;
    v29 = 1;
    v30 = 3.4028e38;
    v31.i64[0] = 0x7F0000007FLL;
    v31.i64[1] = 0x7F0000007FLL;
    v32 = vnegq_f32(v31);
    v127 = v23;
    v128 = v19;
    v125 = v18;
    v126 = v32;
    do
    {
      v130 = v23;
      v33 = *(&v130 & 0xFFFFFFFFFFFFFFF3 | (4 * (v27 & 3)));
      if (fabsf(v33) > 0.00001)
      {
        if (v132.__end_ - v132.__begin_ >= 1)
        {
          bzero(v132.__begin_, v132.__end_ - v132.__begin_);
          v32 = v126;
          *v12.i32 = a2;
          v31.i64[0] = 0x7F0000007FLL;
          v31.i64[1] = 0x7F0000007FLL;
          v23 = v127;
          v19 = v128;
        }

        v34 = v139;
        v35 = (v140 - v139) >> 5;
        if (v35 >= 1)
        {
          v36 = v35 + 1;
          do
          {
            *v34 = v32;
            v34[1] = v31;
            v34 += 2;
            --v36;
          }

          while (v36 > 1);
        }

        v37 = *(a3 + 16);
        if (v37)
        {
          v38 = *(a3 + 12);
          v39 = (v37 + v38);
          v40 = (a1[4] + 4 * v38);
          v129 = v19;
          v41 = *(&v129 & 0xFFFFFFFFFFFFFFF3 | (4 * (v27 & 3)));
          v42 = 4 * v39 - 4 * v38;
          do
          {
            v43 = *v40++;
            v44 = (a1[10] + 32 * v43);
            v45 = (((*(a1[7] + 16 * v43 + 4 * (v27 & 3)) - v41) / v33) * *v12.i32);
            v46 = *v44;
            if (v45 == a2)
            {
              v45 = v11;
            }

            v47 = 32 * v45;
            v48 = *(v139 + v47);
            v46.i32[3] = 0;
            v48.i32[3] = 0;
            *(v139 + v47) = vminnmq_f32(v46, v48);
            v49 = v44[1];
            v49.i32[3] = 0;
            v50 = *(v139 + v47 + 16);
            v50.i32[3] = 0;
            *(v139 + v47 + 16) = vmaxnmq_f32(v49, v50);
            ++v132.__begin_[v45];
            v42 -= 4;
          }

          while (v42);
        }

        v51 = v140;
        if (v139 != v140)
        {
          v52 = v136;
          v54 = *v139;
          v55 = *(v139 + 1);
          v53 = (v139 + 32);
          *v136 = *v139;
          v52[1] = v55;
          if (v53 != v51)
          {
            v56 = v52 + 3;
            do
            {
              v57 = v54;
              v57.i32[3] = 0;
              v58 = *v53;
              v59 = v53[1];
              v53 += 2;
              v58.i32[3] = 0;
              v60 = vminnmq_f32(v57, v58);
              v61 = v55;
              v61.i32[3] = 0;
              v59.i32[3] = 0;
              v62 = vmaxnmq_f32(v61, v59);
              v60.i32[3] = v54.i32[3];
              v62.i32[3] = v55.i32[3];
              v56[-1] = v60;
              *v56 = v62;
              v56 += 2;
              v54 = v60;
              v55 = v62;
            }

            while (v53 != v51);
          }
        }

        v63 = v139;
        if (v140 != v139)
        {
          v64 = v134;
          v66 = v140[-2];
          v67 = v140[-1];
          v65 = v140 - 2;
          *(v134 - 2) = v66;
          *(v64 - 1) = v67;
          if (v63 != v65)
          {
            v68 = (v64 - 4);
            do
            {
              v69 = v65[-2];
              v70 = v65[-1];
              v65 -= 2;
              v71 = v66;
              v71.i32[3] = 0;
              v69.i32[3] = 0;
              v72 = v67;
              v72.i32[3] = 0;
              v70.i32[3] = 0;
              v73 = vminnmq_f32(v71, v69);
              v74 = vmaxnmq_f32(v72, v70);
              v73.i32[3] = v66.i32[3];
              v74.i32[3] = v67.i32[3];
              *v68 = v73;
              v68[1] = v74;
              v68 -= 2;
              v66 = v73;
              v67 = v74;
            }

            while (v65 != v63);
          }
        }

        begin = v131.__begin_;
        if (v131.__end_ != v131.__begin_)
        {
          v76 = v132.__begin_ + v131.__end_ - v131.__begin_;
          v77 = v132.__begin_ + 1;
          v78 = *v132.__begin_;
          *v131.__begin_ = *v132.__begin_;
          if (v76 != v77)
          {
            v79 = begin + 1;
            do
            {
              v80 = *v77++;
              v78 += v80;
              *v79++ = v78;
            }

            while (v77 != v76);
          }
        }

        if (v11)
        {
          v81 = 0;
          v82 = v136;
          v83 = (__p + 32);
          do
          {
            v84 = *v82;
            v85 = v82[1];
            v84.i32[3] = 0;
            v86 = *v83;
            v87 = v83[1];
            v86.i32[3] = 0;
            v88 = vmaxnmq_f32(v84, v86);
            v85.i32[3] = 0;
            v87.i32[3] = 0;
            v89 = vminnmq_f32(v85, v87);
            v90 = vcgtq_f32(v88, v89);
            v90.i32[3] = v90.i32[2];
            if ((vmaxvq_u32(v90) & 0x80000000) != 0)
            {
              v92 = 0.0;
            }

            else
            {
              v91 = vsubq_f32(v89, v88);
              v92 = vmuls_lane_f32(vmuls_lane_f32(v91.f32[0], *v91.f32, 1), v91, 2);
            }

            if (v92 < v30)
            {
              v26 = begin[v81];
              v93 = v82[1];
              *a4 = *v82;
              *(a4 + 16) = v93;
              v94 = v83[1];
              *a5 = *v83;
              *(a5 + 16) = v94;
              v28 = v27;
              v29 = v81;
              v30 = v92;
            }

            ++v81;
            v82 += 2;
            v83 += 2;
          }

          while (v11 != v81);
        }
      }

      ++v27;
    }

    while (v27 != 3);
    v95 = a1[4];
    v96 = *(a3 + 12);
    v97 = (v95 + 4 * v96);
    v98 = *(a3 + 16) + v96;
    v142 = a1;
    v143 = v19;
    v144 = v125;
    v145 = v23;
    v146 = v29;
    v147 = v28;
    v148 = a2;
    std::__partition_impl[abi:nn200100]<unsigned int geom::bvh<float,(unsigned char)3>::partition_node_heuristic<geom::surface_area_heuristic_functor<float,(unsigned char)3>>(geom::surface_area_heuristic_functor<float,(unsigned char)3>,unsigned int,geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)::{lambda#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(v97, (v95 + 4 * v98), &v142);
  }

  if (v131.__begin_)
  {
    v131.__end_ = v131.__begin_;
    operator delete(v131.__begin_);
  }

  if (v132.__begin_)
  {
    v132.__end_ = v132.__begin_;
    operator delete(v132.__begin_);
  }

  if (__p)
  {
    v134 = __p;
    operator delete(__p);
  }

  if (v136)
  {
    v137 = v136;
    operator delete(v136);
  }

  if (v139)
  {
    v140 = v139;
    operator delete(v139);
  }

  v123 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t std::__function::__func<geom::bvh<float,(unsigned char)3>::partition_node_median(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)::{lambda(int)#1},std::allocator<geom::bvh<float,(unsigned char)3>::partition_node_median(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)::{lambda(int)#1}>,std::function<unsigned int ()(unsigned int,unsigned int)> ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286292408;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<geom::bvh<float,(unsigned char)3>::partition_node_median(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)::{lambda(int)#1},std::allocator<geom::bvh<float,(unsigned char)3>::partition_node_median(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)::{lambda(int)#1}>,std::function<unsigned int ()(unsigned int,unsigned int)> ()(int)>::operator()@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(result + 8);
  *a3 = &unk_286292478;
  *(a3 + 8) = v4;
  *(a3 + 16) = v3;
  *(a3 + 24) = a3;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<geom::bvh<float,(unsigned char)3>::partition_node_median(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)::{lambda(int)#1},std::allocator<geom::bvh<float,(unsigned char)3>::partition_node_median(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)::{lambda(int)#1}>,std::function<unsigned int ()(unsigned int,unsigned int)> ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<geom::bvh<float,(unsigned char)3>::partition_node_median(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)::{lambda(int)#1}::operator() const(int)::{lambda(unsigned int,unsigned int)#1},std::allocator<geom::bvh<float,(unsigned char)3>::partition_node_median(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)::{lambda(int)#1}::operator() const(int)::{lambda(unsigned int,unsigned int)#1}>,unsigned int ()(unsigned int,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286292478;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<geom::bvh<float,(unsigned char)3>::partition_node_median(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)::{lambda(int)#1}::operator() const(int)::{lambda(unsigned int,unsigned int)#1},std::allocator<geom::bvh<float,(unsigned char)3>::partition_node_median(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)::{lambda(int)#1}::operator() const(int)::{lambda(unsigned int,unsigned int)#1}>,unsigned int ()(unsigned int,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<geom::bvh<float,(unsigned char)3>::partition_node_median(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,int,float &,unsigned int &)#1},std::allocator<geom::bvh<float,(unsigned char)3>::partition_node_median(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,int,float &,unsigned int &)#1}>,void ()(geom::bvh_node<float,(unsigned char)3> const&,int,float &,unsigned int &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286292508;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<geom::bvh<float,(unsigned char)3>::partition_node_median(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,int,float &,unsigned int &)#1},std::allocator<geom::bvh<float,(unsigned char)3>::partition_node_median(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,int,float &,unsigned int &)#1}>,void ()(geom::bvh_node<float,(unsigned char)3> const&,int,float &,unsigned int &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t geom::bvh<float,(unsigned char)3>::partition_node_median(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,int,float &,unsigned int &)#1}::operator()(uint64_t *a1, uint64_t a2, int a3, _DWORD *a4, _DWORD *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v11 = *(a2 + 16);
  v12 = (*(*a1 + 32) + 4 * *(a2 + 12));
  v13 = (2 * v11) & 0x1FFFFFFFCLL;
  std::function<std::function<unsigned int ()(unsigned int,unsigned int)> ()(int)>::operator()(a1[1], a3);
  if (v11)
  {
    std::__nth_element[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int,unsigned int)> &,unsigned int *>(v12, (v12 + v13), &v12[v11], v19);
  }

  std::__function::__value_func<unsigned int ()(unsigned int,unsigned int)>::~__value_func[abi:nn200100](v19);
  *a4 = *(*(v10 + 56) + 16 * *(v12 + v13) + 4 * (a3 & 3));
  std::function<std::function<unsigned int ()(unsigned int,unsigned int)> ()(int)>::operator()(a1[1], a3);
  v14 = std::__upper_bound[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int,unsigned int)>,unsigned int *,unsigned int *,unsigned int,std::__identity>(v12, &v12[v11], (v12 + v13), v18);
  result = std::__function::__value_func<unsigned int ()(unsigned int,unsigned int)>::~__value_func[abi:nn200100](v18);
  v16 = (v14 - v12) >> 2;
  if (*(a2 + 16) - v16 < v16)
  {
    LODWORD(v16) = *(a2 + 16) - v16;
  }

  *a5 = v16;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__value_func<void ()(geom::bvh_node<float,(unsigned char)3> const&,int,float &,unsigned int &)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 std::__function::__func<geom::bvh<float,(unsigned char)3>::partition_node_median(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)::{lambda(unsigned int)#1},std::allocator<geom::bvh<float,(unsigned char)3>::partition_node_median(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)::{lambda(unsigned int)#1}>,BOOL ()(unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286292598;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<geom::bvh<float,(unsigned char)3>::partition_node_median(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)::{lambda(unsigned int)#1},std::allocator<geom::bvh<float,(unsigned char)3>::partition_node_median(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)::{lambda(unsigned int)#1}>,BOOL ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)3>::build_middle_split(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)#1},std::allocator<geom::bvh<double,(unsigned char)3>::build_middle_split(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286292618;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)3>::build_middle_split(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)#1},std::allocator<geom::bvh<double,(unsigned char)3>::build_middle_split(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<unsigned int ()(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)3>::build_median(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)#1},std::allocator<geom::bvh<double,(unsigned char)3>::build_median(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2862926A8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)3>::build_median(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)#1},std::allocator<geom::bvh<double,(unsigned char)3>::build_median(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)3>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>,geom::surface_area_heuristic_functor<double,(unsigned char)3>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)#1},std::allocator<void geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)3>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>,geom::surface_area_heuristic_functor<double,(unsigned char)3>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286292728;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)3>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>,geom::surface_area_heuristic_functor<double,(unsigned char)3>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)#1},std::allocator<void geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)3>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>,geom::surface_area_heuristic_functor<double,(unsigned char)3>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t geom::bvh<double,(unsigned char)3>::partition_node_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)3>>(void *a1, unsigned int a2, uint64_t a3, float64x2_t *a4, float64x2_t *a5, double a6, __n128 a7, double a8, __n128 a9)
{
  v159 = *MEMORY[0x277D85DE8];
  v146 = 0;
  v147 = 0;
  v148 = 0;
  v14 = a2;
  std::vector<geom::bbox<double,(unsigned char)3>>::resize(&v146, a2, a6, a7, a8, a9);
  v143 = 0;
  v144 = 0;
  v145 = 0;
  std::vector<geom::bbox<double,(unsigned char)3>>::resize(&v143, v14, v15, v16, v17, v18);
  __p = 0;
  v141 = 0;
  v142 = 0;
  std::vector<geom::bbox<double,(unsigned char)3>>::resize(&__p, v14, v19, v20, v21, v22);
  memset(&v139, 0, sizeof(v139));
  std::vector<float>::resize(&v139, v14);
  memset(&v138, 0, sizeof(v138));
  v23 = a2 - 1;
  std::vector<float>::resize(&v138, v23);
  v28 = *(a3 + 12);
  v27 = *(a3 + 16);
  v29 = v27 + v28;
  v30 = (a1[4] + 4 * v28);
  if (v27)
  {
    v25.f64[0] = INFINITY;
    v24.f64[0] = -INFINITY;
    v31 = 4 * v29 - 4 * v28;
    v32 = vdupq_n_s64(0x7FF0000000000000uLL);
    v33 = vdupq_n_s64(0xFFF0000000000000);
    v34 = (a1[4] + 4 * v28);
    do
    {
      v35 = *v34++;
      v36 = a1[7] + 32 * v35;
      v37 = *(v36 + 16);
      v32 = vminnmq_f64(v32, *v36);
      v25 = vminnmq_f64(*&v25.f64[0], v37);
      v33 = vmaxnmq_f64(v33, *v36);
      v24 = vmaxnmq_f64(*&v24.f64[0], v37);
      v31 -= 4;
    }

    while (v31);
  }

  else
  {
    v24.f64[0] = -INFINITY;
    v25.f64[0] = INFINITY;
    v33 = vdupq_n_s64(0xFFF0000000000000);
    v32 = vdupq_n_s64(0x7FF0000000000000uLL);
  }

  v38 = vsubq_f64(v33, v32);
  v26.f64[0] = a2;
  v39 = vdivq_f64(v38, vdupq_lane_s64(COERCE__INT64(a2), 0));
  v134 = vsubq_f64(v24, v25);
  v40 = vdivq_f64(v134, v26);
  if (sqrt(vmulq_f64(v40, v40).f64[0] + vaddvq_f64(vmulq_f64(v39, v39))) <= 0.000001)
  {
    v108 = v28 + (v27 >> 1);
    v109 = vdupq_n_s64(0x7FF0000000000000uLL);
    v110 = vdupq_n_s64(0xFFF0000000000000);
    if (v27 >= 2)
    {
      v24.f64[0] = INFINITY;
      v25.f64[0] = -INFINITY;
      v113 = 4 * v108 - 4 * v28;
      v112 = vdupq_n_s64(0x7FF0000000000000uLL);
      v111 = vdupq_n_s64(0xFFF0000000000000);
      do
      {
        v114 = *v30++;
        v115 = a1[10] + (v114 << 6);
        v112 = vminnmq_f64(v112, *v115);
        v24 = vminnmq_f64(*&v24.f64[0], *(v115 + 16));
        v111 = vmaxnmq_f64(v111, *(v115 + 32));
        v25 = vmaxnmq_f64(*&v25.f64[0], *(v115 + 48));
        v113 -= 4;
      }

      while (v113);
    }

    else
    {
      v24.f64[0] = INFINITY;
      v25.f64[0] = -INFINITY;
      v111 = v110;
      v112 = v109;
    }

    *a4 = v112;
    a4[1] = v24;
    a4[2] = v111;
    a4[3] = v25;
    if (v27)
    {
      v116 = (a1[4] + 4 * v108);
      v109 = vdupq_n_s64(0x7FF0000000000000uLL);
      v24.f64[0] = INFINITY;
      v110 = vdupq_n_s64(0xFFF0000000000000);
      v25.f64[0] = -INFINITY;
      v117 = 4 * v29 - 4 * v108;
      do
      {
        v118 = *v116++;
        v119 = a1[10] + (v118 << 6);
        v109 = vminnmq_f64(v109, *v119);
        v24 = vminnmq_f64(*&v24.f64[0], *(v119 + 16));
        v110 = vmaxnmq_f64(v110, *(v119 + 32));
        v25 = vmaxnmq_f64(*&v25.f64[0], *(v119 + 48));
        v117 -= 4;
      }

      while (v117);
    }

    else
    {
      v24.f64[0] = INFINITY;
      v25.f64[0] = -INFINITY;
    }

    *a5 = v109;
    a5[1] = v24;
    a5[2] = v110;
    a5[3] = v25;
    v41 = *(a3 + 16) >> 1;
  }

  else
  {
    v124 = v33;
    v125 = v24;
    v41 = 0;
    v42 = 0;
    v43 = -1;
    v44 = 1;
    v45 = 1.79769313e308;
    v122 = v38;
    v123 = v32;
    v38.i64[1] = vextq_s8(v38, v38, 8uLL).u64[0];
    v133 = v38;
    v129 = vdupq_n_s64(0x7FF0000000000000uLL);
    v127 = v25;
    v128 = vdupq_n_s64(0xFFF0000000000000);
    v32.i64[1] = vextq_s8(v32, v32, 8uLL).u64[0];
    v126 = v32;
    do
    {
      *(&v46 + 1) = v133.i64[1];
      v137[0] = v133;
      v137[1] = v134;
      v47 = *(v137 + (v42 & 3));
      if (fabs(v47) > 0.000001)
      {
        v130 = v44;
        v131 = v43;
        v132 = v41;
        begin = v139.__begin_;
        if (v139.__end_ - v139.__begin_ >= 1)
        {
          bzero(v139.__begin_, v139.__end_ - v139.__begin_);
        }

        v49 = v146;
        v50 = v147;
        v51 = (v147 - v146) >> 6;
        if (v51 >= 1)
        {
          v52 = v51 + 1;
          v53 = v146;
          do
          {
            *&v46 = 0x7FF0000000000000;
            *v53 = v129;
            v53[1] = v46;
            *&v46 = 0xFFF0000000000000;
            v53[2] = v128;
            v53[3] = v46;
            v53 += 4;
            --v52;
          }

          while (v52 > 1);
        }

        v54 = *(a3 + 16);
        if (v54)
        {
          v55 = *(a3 + 12);
          v56 = (v54 + v55);
          v57 = (a1[4] + 4 * v55);
          v136[0] = v126;
          v136[1] = v127;
          v58 = *(v136 + (v42 & 3));
          v59 = 4 * v56 - 4 * v55;
          do
          {
            v60 = *v57++;
            v61 = a1[10];
            v62 = (a1[7] + 32 * v60);
            v63 = v62[1];
            v135[0] = *v62;
            v135[1] = v63;
            v64 = v61 + (v60 << 6);
            v65 = ((*(v135 + (v42 & 3)) - v58) / v47 * a2);
            if (v65 == a2)
            {
              v65 = v23;
            }

            v66 = &v49[4 * v65];
            v67 = vminnmq_f64(*(v64 + 16), *&v66[1].f64[0]);
            *v66 = vminnmq_f64(*v64, *v66);
            v66[1] = v67;
            v68 = vmaxnmq_f64(*(v64 + 48), *&v66[3].f64[0]);
            v66[2] = vmaxnmq_f64(*(v64 + 32), v66[2]);
            v66[3] = v68;
            ++begin[v65];
            v59 -= 4;
          }

          while (v59);
        }

        std::inclusive_scan[abi:nn200100]<std::__wrap_iter<geom::bbox<double,(unsigned char)3> *>,std::__wrap_iter<geom::bbox<double,(unsigned char)3> *>,unsigned int geom::bvh<double,(unsigned char)3>::partition_node_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)3>>(geom::surface_area_heuristic_functor<double,(unsigned char)3>,unsigned int,geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3>&,geom::bbox<double,(unsigned char)3>&)::{lambda(geom::bbox<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> const&)#1}>(v49, v50, v143);
        std::inclusive_scan[abi:nn200100]<std::reverse_iterator<std::__wrap_iter<geom::bbox<double,(unsigned char)3> *>>,std::reverse_iterator<std::__wrap_iter<geom::bbox<double,(unsigned char)3> *>>,unsigned int geom::bvh<double,(unsigned char)3>::partition_node_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)3>>(geom::surface_area_heuristic_functor<double,(unsigned char)3>,unsigned int,geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3>&,geom::bbox<double,(unsigned char)3>&)::{lambda(geom::bbox<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> const&)#1}>(v69, v147, v147, v146, v146, v141, v141);
        v70 = v138.__begin_;
        if (v138.__end_ != v138.__begin_)
        {
          v71 = v139.__begin_ + v138.__end_ - v138.__begin_;
          v72 = v139.__begin_ + 1;
          v73 = *v139.__begin_;
          *v138.__begin_ = *v139.__begin_;
          if (v71 != v72)
          {
            v74 = v70 + 1;
            do
            {
              v75 = *v72++;
              v73 += v75;
              *v74++ = v73;
            }

            while (v72 != v71);
          }
        }

        v43 = v131;
        v41 = v132;
        v44 = v130;
        if (v23)
        {
          v76 = 0;
          v77 = v143;
          v78 = (__p + 64);
          do
          {
            v79 = v77[1];
            v80 = v77[2];
            v81 = v77[3];
            v82 = vcgtq_f64(*v77, v80);
            v83 = v82.i64[0] | vcgtq_f64(v79, v81).u64[0] | v82.i64[1];
            v84 = 0.0;
            v85 = 0.0;
            if ((v83 & 0x8000000000000000) == 0)
            {
              v86 = vsubq_f64(v80, *v77);
              v87 = vsubq_f64(v81, v79);
              v88 = vmulq_laneq_f64(v87, v86, 1).f64[0];
              v87.f64[1] = v86.f64[0];
              v85 = v88 + vaddvq_f64(vmulq_f64(v86, v87));
            }

            v89 = v78[1];
            v90 = v78[2];
            v91 = v78[3];
            v92 = vcgtq_f64(*v78, v90);
            if (((v92.i64[0] | vcgtq_f64(v89, v91).u64[0] | v92.i64[1]) & 0x8000000000000000) == 0)
            {
              v93 = vsubq_f64(v90, *v78);
              v94 = vsubq_f64(v91, v89);
              v95 = vmulq_laneq_f64(v94, v93, 1).f64[0];
              v94.f64[1] = v93.f64[0];
              v84 = v95 + vaddvq_f64(vmulq_f64(v93, v94));
            }

            v96 = v70[v76];
            v97 = v84 * (*(a3 + 16) - v96) + v96 * v85;
            if (v97 < v45)
            {
              v98 = *v77;
              v99 = v77[1];
              v100 = v77[3];
              a4[2] = v77[2];
              a4[3] = v100;
              *a4 = v98;
              a4[1] = v99;
              v101 = *v78;
              v102 = v78[1];
              v103 = v78[3];
              a5[2] = v78[2];
              a5[3] = v103;
              *a5 = v101;
              a5[1] = v102;
              v43 = v42;
              v41 = v96;
              v44 = v76;
              v45 = v97;
            }

            ++v76;
            v77 += 4;
            v78 += 4;
          }

          while (v23 != v76);
        }
      }

      ++v42;
    }

    while (v42 != 3);
    v104 = a1[4];
    v105 = *(a3 + 12);
    v106 = (v104 + 4 * v105);
    v107 = *(a3 + 16) + v105;
    v149 = a1;
    v150 = v123;
    v151 = v127;
    v152 = v124;
    v153 = v125;
    v154 = v122;
    v155 = v134;
    v156 = v44;
    v157 = v43;
    v158 = a2;
    std::__partition_impl[abi:nn200100]<unsigned int geom::bvh<double,(unsigned char)3>::partition_node_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)3>>(geom::surface_area_heuristic_functor<double,(unsigned char)3>,unsigned int,geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(v106, (v104 + 4 * v107), &v149);
  }

  if (v138.__begin_)
  {
    v138.__end_ = v138.__begin_;
    operator delete(v138.__begin_);
  }

  if (v139.__begin_)
  {
    v139.__end_ = v139.__begin_;
    operator delete(v139.__begin_);
  }

  if (__p)
  {
    v141 = __p;
    operator delete(__p);
  }

  if (v143)
  {
    v144 = v143;
    operator delete(v143);
  }

  if (v146)
  {
    v147 = v146;
    operator delete(v146);
  }

  v120 = *MEMORY[0x277D85DE8];
  return v41;
}

float64x2_t *std::inclusive_scan[abi:nn200100]<std::__wrap_iter<geom::bbox<double,(unsigned char)3> *>,std::__wrap_iter<geom::bbox<double,(unsigned char)3> *>,unsigned int geom::bvh<double,(unsigned char)3>::partition_node_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)3>>(geom::surface_area_heuristic_functor<double,(unsigned char)3>,unsigned int,geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3>&,geom::bbox<double,(unsigned char)3>&)::{lambda(geom::bbox<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> const&)#1}>(float64x2_t *a1, float64x2_t *a2, float64x2_t *a3)
{
  result = a3;
  if (a1 != a2)
  {
    v6 = *a1;
    v5 = a1[1];
    v8 = a1[2];
    v7 = a1[3];
    result = a3 + 4;
    *a3 = *a1;
    a3[1] = v5;
    a3[2] = v8;
    a3[3] = v7;
    for (i = a1 + 4; i != a2; i += 4)
    {
      v6 = vminnmq_f64(v6, *i);
      v5 = vminnmq_f64(*&v5.f64[0], *&i[1].f64[0]);
      v8 = vmaxnmq_f64(v8, i[2]);
      v7 = vmaxnmq_f64(*&v7.f64[0], *&i[3].f64[0]);
      *result = v6;
      result[1] = v5;
      result[2] = v8;
      result[3] = v7;
      result += 4;
    }
  }

  return result;
}

float64x2_t std::inclusive_scan[abi:nn200100]<std::reverse_iterator<std::__wrap_iter<geom::bbox<double,(unsigned char)3> *>>,std::reverse_iterator<std::__wrap_iter<geom::bbox<double,(unsigned char)3> *>>,unsigned int geom::bvh<double,(unsigned char)3>::partition_node_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)3>>(geom::surface_area_heuristic_functor<double,(unsigned char)3>,unsigned int,geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3>&,geom::bbox<double,(unsigned char)3>&)::{lambda(geom::bbox<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> const&)#1}>(float64x2_t result, uint64_t a2, float64x2_t *a3, uint64_t a4, float64x2_t *a5, uint64_t a6, uint64_t a7)
{
  if (a3 != a5)
  {
    v8 = a3[-4];
    v7 = a3 - 4;
    result = v8;
    v10 = v7[2];
    v9 = v7[3];
    v11 = v7[1];
    *(a7 - 64) = v8;
    *(a7 - 48) = v11;
    v12 = (a7 - 64);
    v12[2] = v10;
    for (v12[3] = v9; v7 != a5; v12[3] = v9)
    {
      v14 = v7[-4];
      v13 = v7[-3];
      v7 -= 4;
      result = vminnmq_f64(result, v14);
      v11 = vminnmq_f64(*&v11.f64[0], *&v13.f64[0]);
      v10 = vmaxnmq_f64(v10, v7[2]);
      v9 = vmaxnmq_f64(*&v9.f64[0], *&v7[3].f64[0]);
      v12[-4] = result;
      v12[-3] = v11;
      v12 -= 4;
      v12[2] = v10;
    }
  }

  return result;
}

_DWORD *std::__partition_impl[abi:nn200100]<unsigned int geom::bvh<double,(unsigned char)3>::partition_node_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)3>>(geom::surface_area_heuristic_functor<double,(unsigned char)3>,unsigned int,geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda(unsigned int)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(_DWORD *result, _DWORD *a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = result;
    v4 = *(*a3 + 56);
    result = a2;
    while (2)
    {
      v5 = *(a3 + 116);
      v6 = *(a3 + 32);
      v25[0] = *(a3 + 16);
      v25[1] = v6;
      v7 = *(v25 + (v5 & 3));
      v8 = *(a3 + 96);
      v24[0] = *(a3 + 80);
      v24[1] = v8;
      v9 = *(v24 + (v5 & 3));
      v10 = *(a3 + 120);
      v11 = v10;
      v12 = *(a3 + 112);
      v13 = v3;
      while (1)
      {
        v14 = *v13;
        v15 = (v4 + 32 * v14);
        v16 = v15[1];
        v23[0] = *v15;
        v23[1] = v16;
        v17 = ((*(v23 + (v5 & 3)) - v7) / v9 * v11);
        if (v10 == v17)
        {
          v17 = v10 - 1;
        }

        if (v17 > v12)
        {
          break;
        }

        if (++v13 == result)
        {
          return result;
        }
      }

      do
      {
        if (--result == v13)
        {
          return v13;
        }

        v18 = *result;
        v19 = (v4 + 32 * v18);
        v20 = v19[1];
        v22[0] = *v19;
        v22[1] = v20;
        v21 = ((*(v22 + (v5 & 3)) - v7) / v9 * v11);
        if (v10 == v21)
        {
          v21 = v10 - 1;
        }
      }

      while (v21 > v12);
      *v13 = v18;
      v3 = v13 + 1;
      *result = v14;
      if (result != v13 + 1)
      {
        continue;
      }

      break;
    }

    return v13 + 1;
  }

  return result;
}

__n128 std::__function::__func<void geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<geom::volume_heuristic_functor<double,(unsigned char)3>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>,geom::volume_heuristic_functor<double,(unsigned char)3>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)#1},std::allocator<void geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<geom::volume_heuristic_functor<double,(unsigned char)3>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>,geom::volume_heuristic_functor<double,(unsigned char)3>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2862927A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<geom::volume_heuristic_functor<double,(unsigned char)3>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>,geom::volume_heuristic_functor<double,(unsigned char)3>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)#1},std::allocator<void geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<geom::volume_heuristic_functor<double,(unsigned char)3>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>,geom::volume_heuristic_functor<double,(unsigned char)3>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t geom::bvh<double,(unsigned char)3>::partition_node_heuristic<geom::volume_heuristic_functor<double,(unsigned char)3>>(void *a1, unsigned int a2, uint64_t a3, float64x2_t *a4, float64x2_t *a5, double a6, __n128 a7, double a8, __n128 a9)
{
  v155 = *MEMORY[0x277D85DE8];
  v142 = 0;
  v143 = 0;
  v144 = 0;
  v14 = a2;
  std::vector<geom::bbox<double,(unsigned char)3>>::resize(&v142, a2, a6, a7, a8, a9);
  v139 = 0;
  v140 = 0;
  v141 = 0;
  std::vector<geom::bbox<double,(unsigned char)3>>::resize(&v139, v14, v15, v16, v17, v18);
  __p = 0;
  v137 = 0;
  v138 = 0;
  std::vector<geom::bbox<double,(unsigned char)3>>::resize(&__p, v14, v19, v20, v21, v22);
  memset(&v135, 0, sizeof(v135));
  std::vector<float>::resize(&v135, v14);
  memset(&v134, 0, sizeof(v134));
  v23 = a2 - 1;
  std::vector<float>::resize(&v134, v23);
  v28 = *(a3 + 12);
  v27 = *(a3 + 16);
  v29 = v27 + v28;
  v30 = (a1[4] + 4 * v28);
  if (v27)
  {
    v25.f64[0] = INFINITY;
    v24.f64[0] = -INFINITY;
    v31 = 4 * v29 - 4 * v28;
    v32 = vdupq_n_s64(0x7FF0000000000000uLL);
    v33 = vdupq_n_s64(0xFFF0000000000000);
    v34 = (a1[4] + 4 * v28);
    do
    {
      v35 = *v34++;
      v36 = a1[7] + 32 * v35;
      v37 = *(v36 + 16);
      v32 = vminnmq_f64(v32, *v36);
      v25 = vminnmq_f64(*&v25.f64[0], v37);
      v33 = vmaxnmq_f64(v33, *v36);
      v24 = vmaxnmq_f64(*&v24.f64[0], v37);
      v31 -= 4;
    }

    while (v31);
  }

  else
  {
    v24.f64[0] = -INFINITY;
    v25.f64[0] = INFINITY;
    v33 = vdupq_n_s64(0xFFF0000000000000);
    v32 = vdupq_n_s64(0x7FF0000000000000uLL);
  }

  v38 = vsubq_f64(v33, v32);
  v26.f64[0] = a2;
  v39 = vdivq_f64(v38, vdupq_lane_s64(COERCE__INT64(a2), 0));
  v130 = vsubq_f64(v24, v25);
  v40 = vdivq_f64(v130, v26);
  if (sqrt(vmulq_f64(v40, v40).f64[0] + vaddvq_f64(vmulq_f64(v39, v39))) <= 0.000001)
  {
    v104 = v28 + (v27 >> 1);
    v105 = vdupq_n_s64(0x7FF0000000000000uLL);
    v106 = vdupq_n_s64(0xFFF0000000000000);
    if (v27 >= 2)
    {
      v24.f64[0] = INFINITY;
      v25.f64[0] = -INFINITY;
      v109 = 4 * v104 - 4 * v28;
      v108 = vdupq_n_s64(0x7FF0000000000000uLL);
      v107 = vdupq_n_s64(0xFFF0000000000000);
      do
      {
        v110 = *v30++;
        v111 = a1[10] + (v110 << 6);
        v108 = vminnmq_f64(v108, *v111);
        v24 = vminnmq_f64(*&v24.f64[0], *(v111 + 16));
        v107 = vmaxnmq_f64(v107, *(v111 + 32));
        v25 = vmaxnmq_f64(*&v25.f64[0], *(v111 + 48));
        v109 -= 4;
      }

      while (v109);
    }

    else
    {
      v24.f64[0] = INFINITY;
      v25.f64[0] = -INFINITY;
      v107 = v106;
      v108 = v105;
    }

    *a4 = v108;
    a4[1] = v24;
    a4[2] = v107;
    a4[3] = v25;
    if (v27)
    {
      v112 = (a1[4] + 4 * v104);
      v105 = vdupq_n_s64(0x7FF0000000000000uLL);
      v24.f64[0] = INFINITY;
      v106 = vdupq_n_s64(0xFFF0000000000000);
      v25.f64[0] = -INFINITY;
      v113 = 4 * v29 - 4 * v104;
      do
      {
        v114 = *v112++;
        v115 = a1[10] + (v114 << 6);
        v105 = vminnmq_f64(v105, *v115);
        v24 = vminnmq_f64(*&v24.f64[0], *(v115 + 16));
        v106 = vmaxnmq_f64(v106, *(v115 + 32));
        v25 = vmaxnmq_f64(*&v25.f64[0], *(v115 + 48));
        v113 -= 4;
      }

      while (v113);
    }

    else
    {
      v24.f64[0] = INFINITY;
      v25.f64[0] = -INFINITY;
    }

    *a5 = v105;
    a5[1] = v24;
    a5[2] = v106;
    a5[3] = v25;
    v41 = *(a3 + 16) >> 1;
  }

  else
  {
    v120 = v33;
    v121 = v24;
    v41 = 0;
    v42 = 0;
    v43 = -1;
    v44 = 1;
    v45 = 1.79769313e308;
    v118 = v38;
    v119 = v32;
    v38.i64[1] = vextq_s8(v38, v38, 8uLL).u64[0];
    v129 = v38;
    v125 = vdupq_n_s64(0x7FF0000000000000uLL);
    v123 = v25;
    v124 = vdupq_n_s64(0xFFF0000000000000);
    v32.i64[1] = vextq_s8(v32, v32, 8uLL).u64[0];
    v122 = v32;
    do
    {
      *(&v46 + 1) = v129.i64[1];
      v133[0] = v129;
      v133[1] = v130;
      v47 = *(v133 + (v42 & 3));
      if (fabs(v47) > 0.000001)
      {
        v126 = v44;
        v127 = v43;
        v128 = v41;
        begin = v135.__begin_;
        if (v135.__end_ - v135.__begin_ >= 1)
        {
          bzero(v135.__begin_, v135.__end_ - v135.__begin_);
        }

        v49 = v142;
        v50 = v143;
        v51 = (v143 - v142) >> 6;
        if (v51 >= 1)
        {
          v52 = v51 + 1;
          v53 = v142;
          do
          {
            *&v46 = 0x7FF0000000000000;
            *v53 = v125;
            v53[1] = v46;
            *&v46 = 0xFFF0000000000000;
            v53[2] = v124;
            v53[3] = v46;
            v53 += 4;
            --v52;
          }

          while (v52 > 1);
        }

        v54 = *(a3 + 16);
        if (v54)
        {
          v55 = *(a3 + 12);
          v56 = (v54 + v55);
          v57 = (a1[4] + 4 * v55);
          v132[0] = v122;
          v132[1] = v123;
          v58 = *(v132 + (v42 & 3));
          v59 = 4 * v56 - 4 * v55;
          do
          {
            v60 = *v57++;
            v61 = a1[10];
            v62 = (a1[7] + 32 * v60);
            v63 = v62[1];
            v131[0] = *v62;
            v131[1] = v63;
            v64 = v61 + (v60 << 6);
            v65 = ((*(v131 + (v42 & 3)) - v58) / v47 * a2);
            if (v65 == a2)
            {
              v65 = v23;
            }

            v66 = &v49[4 * v65];
            v67 = vminnmq_f64(*(v64 + 16), *&v66[1].f64[0]);
            *v66 = vminnmq_f64(*v64, *v66);
            v66[1] = v67;
            v68 = vmaxnmq_f64(*(v64 + 48), *&v66[3].f64[0]);
            v66[2] = vmaxnmq_f64(*(v64 + 32), v66[2]);
            v66[3] = v68;
            ++begin[v65];
            v59 -= 4;
          }

          while (v59);
        }

        std::inclusive_scan[abi:nn200100]<std::__wrap_iter<geom::bbox<double,(unsigned char)3> *>,std::__wrap_iter<geom::bbox<double,(unsigned char)3> *>,unsigned int geom::bvh<double,(unsigned char)3>::partition_node_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)3>>(geom::surface_area_heuristic_functor<double,(unsigned char)3>,unsigned int,geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3>&,geom::bbox<double,(unsigned char)3>&)::{lambda(geom::bbox<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> const&)#1}>(v49, v50, v139);
        std::inclusive_scan[abi:nn200100]<std::reverse_iterator<std::__wrap_iter<geom::bbox<double,(unsigned char)3> *>>,std::reverse_iterator<std::__wrap_iter<geom::bbox<double,(unsigned char)3> *>>,unsigned int geom::bvh<double,(unsigned char)3>::partition_node_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)3>>(geom::surface_area_heuristic_functor<double,(unsigned char)3>,unsigned int,geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3>&,geom::bbox<double,(unsigned char)3>&)::{lambda(geom::bbox<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> const&)#1}>(v69, v143, v143, v142, v142, v137, v137);
        v70 = v134.__begin_;
        if (v134.__end_ != v134.__begin_)
        {
          v71 = v135.__begin_ + v134.__end_ - v134.__begin_;
          v72 = v135.__begin_ + 1;
          v73 = *v135.__begin_;
          *v134.__begin_ = *v135.__begin_;
          if (v71 != v72)
          {
            v74 = v70 + 1;
            do
            {
              v75 = *v72++;
              v73 += v75;
              *v74++ = v73;
            }

            while (v72 != v71);
          }
        }

        v43 = v127;
        v41 = v128;
        v44 = v126;
        if (v23)
        {
          v76 = 0;
          v77 = v139;
          v78 = (__p + 64);
          do
          {
            v79 = v70[v76];
            v80 = v77[1];
            v81 = v77[2];
            v82 = v77[3];
            v83 = vcgtq_f64(*v77, v81);
            v84 = vsubq_f64(v81, *v77);
            v85 = vmuld_lane_f64(v84.f64[0], v84, 1) * vsubq_f64(v82, v80).f64[0];
            if (((v83.i64[0] | vcgtq_f64(v80, v82).u64[0] | v83.i64[1]) & 0x8000000000000000) != 0)
            {
              v85 = 0.0;
            }

            v86 = v78[1];
            v87 = v78[2];
            v88 = v78[3];
            v89 = vcgtq_f64(*v78, v87);
            v90 = vsubq_f64(v87, *v78);
            v91 = vmuld_lane_f64(v90.f64[0], v90, 1) * vsubq_f64(v88, v86).f64[0];
            if (((v89.i64[0] | vcgtq_f64(v86, v88).u64[0] | v89.i64[1]) & 0x8000000000000000) != 0)
            {
              v91 = 0.0;
            }

            v92 = v91 * (*(a3 + 16) - v79) + v79 * v85;
            if (v92 < v45)
            {
              v93 = *v77;
              v94 = v77[1];
              v95 = v77[3];
              a4[2] = v77[2];
              a4[3] = v95;
              *a4 = v93;
              a4[1] = v94;
              v96 = *v78;
              v97 = v78[1];
              v98 = v78[3];
              a5[2] = v78[2];
              a5[3] = v98;
              *a5 = v96;
              a5[1] = v97;
              v43 = v42;
              v41 = v79;
              v44 = v76;
              v45 = v92;
            }

            ++v76;
            v77 += 4;
            v78 += 4;
          }

          while (v23 != v76);
        }
      }

      ++v42;
    }

    while (v42 != 3);
    v99 = a1[4];
    v100 = *(a3 + 12);
    v101 = v44;
    v102 = (v99 + 4 * v100);
    v103 = *(a3 + 16) + v100;
    v145 = a1;
    v146 = v119;
    v147 = v123;
    v148 = v120;
    v149 = v121;
    v150 = v118;
    v151 = v130;
    v152 = v101;
    v153 = v43;
    v154 = a2;
    std::__partition_impl[abi:nn200100]<unsigned int geom::bvh<double,(unsigned char)3>::partition_node_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)3>>(geom::surface_area_heuristic_functor<double,(unsigned char)3>,unsigned int,geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(v102, (v99 + 4 * v103), &v145);
  }

  if (v134.__begin_)
  {
    v134.__end_ = v134.__begin_;
    operator delete(v134.__begin_);
  }

  if (v135.__begin_)
  {
    v135.__end_ = v135.__begin_;
    operator delete(v135.__begin_);
  }

  if (__p)
  {
    v137 = __p;
    operator delete(__p);
  }

  if (v139)
  {
    v140 = v139;
    operator delete(v139);
  }

  if (v142)
  {
    v143 = v142;
    operator delete(v142);
  }

  v116 = *MEMORY[0x277D85DE8];
  return v41;
}

__n128 std::__function::__func<void geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<geom::intersection_volume_heuristic_functor<double,(unsigned char)3>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>,geom::intersection_volume_heuristic_functor<double,(unsigned char)3>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)#1},std::allocator<void geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<geom::intersection_volume_heuristic_functor<double,(unsigned char)3>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>,geom::intersection_volume_heuristic_functor<double,(unsigned char)3>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286292828;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<geom::intersection_volume_heuristic_functor<double,(unsigned char)3>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>,geom::intersection_volume_heuristic_functor<double,(unsigned char)3>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)#1},std::allocator<void geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<geom::intersection_volume_heuristic_functor<double,(unsigned char)3>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>,geom::intersection_volume_heuristic_functor<double,(unsigned char)3>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t geom::bvh<double,(unsigned char)3>::partition_node_heuristic<geom::intersection_volume_heuristic_functor<double,(unsigned char)3>>(void *a1, unsigned int a2, uint64_t a3, float64x2_t *a4, float64x2_t *a5, double a6, __n128 a7, double a8, __n128 a9)
{
  v147 = *MEMORY[0x277D85DE8];
  v134 = 0;
  v135 = 0;
  v136 = 0;
  v14 = a2;
  std::vector<geom::bbox<double,(unsigned char)3>>::resize(&v134, a2, a6, a7, a8, a9);
  v131 = 0;
  v132 = 0;
  v133 = 0;
  std::vector<geom::bbox<double,(unsigned char)3>>::resize(&v131, v14, v15, v16, v17, v18);
  __p = 0;
  v129 = 0;
  v130 = 0;
  std::vector<geom::bbox<double,(unsigned char)3>>::resize(&__p, v14, v19, v20, v21, v22);
  memset(&v127, 0, sizeof(v127));
  std::vector<float>::resize(&v127, v14);
  memset(&v126, 0, sizeof(v126));
  v23 = a2 - 1;
  std::vector<float>::resize(&v126, v23);
  v28 = *(a3 + 12);
  v27 = *(a3 + 16);
  v29 = v27 + v28;
  v30 = (a1[4] + 4 * v28);
  if (v27)
  {
    v25.f64[0] = INFINITY;
    v24.f64[0] = -INFINITY;
    v31 = 4 * v29 - 4 * v28;
    v32 = vdupq_n_s64(0x7FF0000000000000uLL);
    v33 = vdupq_n_s64(0xFFF0000000000000);
    v34 = (a1[4] + 4 * v28);
    do
    {
      v35 = *v34++;
      v36 = a1[7] + 32 * v35;
      v37 = *(v36 + 16);
      v32 = vminnmq_f64(v32, *v36);
      v25 = vminnmq_f64(*&v25.f64[0], v37);
      v33 = vmaxnmq_f64(v33, *v36);
      v24 = vmaxnmq_f64(*&v24.f64[0], v37);
      v31 -= 4;
    }

    while (v31);
  }

  else
  {
    v24.f64[0] = -INFINITY;
    v25.f64[0] = INFINITY;
    v33 = vdupq_n_s64(0xFFF0000000000000);
    v32 = vdupq_n_s64(0x7FF0000000000000uLL);
  }

  v38 = vsubq_f64(v33, v32);
  v26.f64[0] = a2;
  v39 = vdivq_f64(v38, vdupq_lane_s64(COERCE__INT64(a2), 0));
  v122 = vsubq_f64(v24, v25);
  v40 = vdivq_f64(v122, v26);
  if (sqrt(vmulq_f64(v40, v40).f64[0] + vaddvq_f64(vmulq_f64(v39, v39))) <= 0.000001)
  {
    v96 = v28 + (v27 >> 1);
    v97 = vdupq_n_s64(0x7FF0000000000000uLL);
    v98 = vdupq_n_s64(0xFFF0000000000000);
    if (v27 >= 2)
    {
      v24.f64[0] = INFINITY;
      v25.f64[0] = -INFINITY;
      v101 = 4 * v96 - 4 * v28;
      v100 = vdupq_n_s64(0x7FF0000000000000uLL);
      v99 = vdupq_n_s64(0xFFF0000000000000);
      do
      {
        v102 = *v30++;
        v103 = a1[10] + (v102 << 6);
        v100 = vminnmq_f64(v100, *v103);
        v24 = vminnmq_f64(*&v24.f64[0], *(v103 + 16));
        v99 = vmaxnmq_f64(v99, *(v103 + 32));
        v25 = vmaxnmq_f64(*&v25.f64[0], *(v103 + 48));
        v101 -= 4;
      }

      while (v101);
    }

    else
    {
      v24.f64[0] = INFINITY;
      v25.f64[0] = -INFINITY;
      v99 = v98;
      v100 = v97;
    }

    *a4 = v100;
    a4[1] = v24;
    a4[2] = v99;
    a4[3] = v25;
    if (v27)
    {
      v104 = (a1[4] + 4 * v96);
      v97 = vdupq_n_s64(0x7FF0000000000000uLL);
      v24.f64[0] = INFINITY;
      v98 = vdupq_n_s64(0xFFF0000000000000);
      v25.f64[0] = -INFINITY;
      v105 = 4 * v29 - 4 * v96;
      do
      {
        v106 = *v104++;
        v107 = a1[10] + (v106 << 6);
        v97 = vminnmq_f64(v97, *v107);
        v24 = vminnmq_f64(*&v24.f64[0], *(v107 + 16));
        v98 = vmaxnmq_f64(v98, *(v107 + 32));
        v25 = vmaxnmq_f64(*&v25.f64[0], *(v107 + 48));
        v105 -= 4;
      }

      while (v105);
    }

    else
    {
      v24.f64[0] = INFINITY;
      v25.f64[0] = -INFINITY;
    }

    *a5 = v97;
    a5[1] = v24;
    a5[2] = v98;
    a5[3] = v25;
    v41 = *(a3 + 16) >> 1;
  }

  else
  {
    v112 = v33;
    v113 = v24;
    v41 = 0;
    v42 = 0;
    v43 = -1;
    v44 = 1;
    v45 = 1.79769313e308;
    v110 = v38;
    v111 = v32;
    v38.i64[1] = vextq_s8(v38, v38, 8uLL).u64[0];
    v121 = v38;
    v117 = vdupq_n_s64(0x7FF0000000000000uLL);
    v115 = v25;
    v116 = vdupq_n_s64(0xFFF0000000000000);
    v32.i64[1] = vextq_s8(v32, v32, 8uLL).u64[0];
    v114 = v32;
    do
    {
      *(&v46 + 1) = v121.i64[1];
      v125[0] = v121;
      v125[1] = v122;
      v47 = *(v125 + (v42 & 3));
      if (fabs(v47) > 0.000001)
      {
        v118 = v44;
        v119 = v43;
        v120 = v41;
        begin = v127.__begin_;
        if (v127.__end_ - v127.__begin_ >= 1)
        {
          bzero(v127.__begin_, v127.__end_ - v127.__begin_);
          v26.f64[0] = a2;
        }

        v49 = v134;
        v50 = v135;
        v51 = (v135 - v134) >> 6;
        if (v51 >= 1)
        {
          v52 = v51 + 1;
          v53 = v134;
          do
          {
            *&v46 = 0x7FF0000000000000;
            *v53 = v117;
            v53[1] = v46;
            *&v46 = 0xFFF0000000000000;
            v53[2] = v116;
            v53[3] = v46;
            v53 += 4;
            --v52;
          }

          while (v52 > 1);
        }

        v54 = *(a3 + 16);
        if (v54)
        {
          v55 = *(a3 + 12);
          v56 = (v54 + v55);
          v57 = (a1[4] + 4 * v55);
          v124[0] = v114;
          v124[1] = v115;
          v58 = *(v124 + (v42 & 3));
          v59 = 4 * v56 - 4 * v55;
          do
          {
            v60 = *v57++;
            v61 = a1[10];
            v62 = (a1[7] + 32 * v60);
            v63 = v62[1];
            v123[0] = *v62;
            v123[1] = v63;
            v64 = v61 + (v60 << 6);
            v65 = ((*(v123 + (v42 & 3)) - v58) / v47 * v26.f64[0]);
            if (v65 == a2)
            {
              v65 = v23;
            }

            v66 = &v49[4 * v65];
            v67 = vminnmq_f64(*(v64 + 16), *&v66[1].f64[0]);
            *v66 = vminnmq_f64(*v64, *v66);
            v66[1] = v67;
            v68 = vmaxnmq_f64(*(v64 + 48), *&v66[3].f64[0]);
            v66[2] = vmaxnmq_f64(*(v64 + 32), v66[2]);
            v66[3] = v68;
            ++begin[v65];
            v59 -= 4;
          }

          while (v59);
        }

        std::inclusive_scan[abi:nn200100]<std::__wrap_iter<geom::bbox<double,(unsigned char)3> *>,std::__wrap_iter<geom::bbox<double,(unsigned char)3> *>,unsigned int geom::bvh<double,(unsigned char)3>::partition_node_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)3>>(geom::surface_area_heuristic_functor<double,(unsigned char)3>,unsigned int,geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3>&,geom::bbox<double,(unsigned char)3>&)::{lambda(geom::bbox<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> const&)#1}>(v49, v50, v131);
        std::inclusive_scan[abi:nn200100]<std::reverse_iterator<std::__wrap_iter<geom::bbox<double,(unsigned char)3> *>>,std::reverse_iterator<std::__wrap_iter<geom::bbox<double,(unsigned char)3> *>>,unsigned int geom::bvh<double,(unsigned char)3>::partition_node_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)3>>(geom::surface_area_heuristic_functor<double,(unsigned char)3>,unsigned int,geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3>&,geom::bbox<double,(unsigned char)3>&)::{lambda(geom::bbox<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> const&)#1}>(v69, v135, v135, v134, v134, v129, v129);
        v70 = v126.__begin_;
        if (v126.__end_ != v126.__begin_)
        {
          v71 = v127.__begin_ + v126.__end_ - v126.__begin_;
          v72 = v127.__begin_ + 1;
          v73 = *v127.__begin_;
          *v126.__begin_ = *v127.__begin_;
          if (v71 != v72)
          {
            v74 = v70 + 1;
            do
            {
              v75 = *v72++;
              v73 += v75;
              *v74++ = v73;
            }

            while (v72 != v71);
          }
        }

        v43 = v119;
        v41 = v120;
        v44 = v118;
        if (v23)
        {
          v76 = 0;
          v77 = v131;
          v78 = (__p + 64);
          v26.f64[0] = a2;
          do
          {
            v79 = vmaxnmq_f64(*v77, *v78);
            v80 = vmaxnmq_f64(*&v77[1].f64[0], *&v78[1].f64[0]);
            v81 = vminnmq_f64(v77[2], v78[2]);
            v82 = vminnmq_f64(*&v77[3].f64[0], *&v78[3].f64[0]);
            v83 = vcgtq_f64(v79, v81);
            if (((v83.i64[0] | v83.i64[1] | vcgtq_f64(v80, v82).u64[0]) & 0x8000000000000000) != 0)
            {
              v85 = 0.0;
            }

            else
            {
              v84 = vsubq_f64(v81, v79);
              v85 = vmuld_lane_f64(v84.f64[0], v84, 1) * vsubq_f64(v82, v80).f64[0];
            }

            if (v85 < v45)
            {
              v41 = v70[v76];
              v86 = *v77;
              v87 = v77[1];
              v88 = v77[3];
              a4[2] = v77[2];
              a4[3] = v88;
              *a4 = v86;
              a4[1] = v87;
              v89 = *v78;
              v90 = v78[1];
              v91 = v78[3];
              a5[2] = v78[2];
              a5[3] = v91;
              *a5 = v89;
              a5[1] = v90;
              v43 = v42;
              v44 = v76;
              v45 = v85;
            }

            ++v76;
            v77 += 4;
            v78 += 4;
          }

          while (v23 != v76);
        }

        else
        {
          v26.f64[0] = a2;
        }
      }

      ++v42;
    }

    while (v42 != 3);
    v92 = a1[4];
    v93 = *(a3 + 12);
    v94 = (v92 + 4 * v93);
    v95 = *(a3 + 16) + v93;
    v137 = a1;
    v138 = v111;
    v139 = v115;
    v140 = v112;
    v141 = v113;
    v142 = v110;
    v143 = v122;
    v144 = v44;
    v145 = v43;
    v146 = a2;
    std::__partition_impl[abi:nn200100]<unsigned int geom::bvh<double,(unsigned char)3>::partition_node_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)3>>(geom::surface_area_heuristic_functor<double,(unsigned char)3>,unsigned int,geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(v94, (v92 + 4 * v95), &v137);
  }

  if (v126.__begin_)
  {
    v126.__end_ = v126.__begin_;
    operator delete(v126.__begin_);
  }

  if (v127.__begin_)
  {
    v127.__end_ = v127.__begin_;
    operator delete(v127.__begin_);
  }

  if (__p)
  {
    v129 = __p;
    operator delete(__p);
  }

  if (v131)
  {
    v132 = v131;
    operator delete(v131);
  }

  if (v134)
  {
    v135 = v134;
    operator delete(v134);
  }

  v108 = *MEMORY[0x277D85DE8];
  return v41;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::bvh_node<double,(unsigned char)3>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)3>::partition_node_median(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda(int)#1},std::allocator<geom::bvh<double,(unsigned char)3>::partition_node_median(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda(int)#1}>,std::function<unsigned int ()(unsigned int,unsigned int)> ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2862928A8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)3>::partition_node_median(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda(int)#1},std::allocator<geom::bvh<double,(unsigned char)3>::partition_node_median(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda(int)#1}>,std::function<unsigned int ()(unsigned int,unsigned int)> ()(int)>::operator()@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(result + 8);
  *a3 = &unk_286292918;
  *(a3 + 8) = v4;
  *(a3 + 16) = v3;
  *(a3 + 24) = a3;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)3>::partition_node_median(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda(int)#1},std::allocator<geom::bvh<double,(unsigned char)3>::partition_node_median(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda(int)#1}>,std::function<unsigned int ()(unsigned int,unsigned int)> ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<geom::bvh<double,(unsigned char)3>::partition_node_median(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda(int)#1}::operator() const(int)::{lambda(unsigned int,unsigned int)#1},std::allocator<geom::bvh<double,(unsigned char)3>::partition_node_median(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda(int)#1}::operator() const(int)::{lambda(unsigned int,unsigned int)#1}>,unsigned int ()(unsigned int,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286292918;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

BOOL std::__function::__func<geom::bvh<double,(unsigned char)3>::partition_node_median(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda(int)#1}::operator() const(int)::{lambda(unsigned int,unsigned int)#1},std::allocator<geom::bvh<double,(unsigned char)3>::partition_node_median(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda(int)#1}::operator() const(int)::{lambda(unsigned int,unsigned int)#1}>,unsigned int ()(unsigned int,unsigned int)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *a3;
  v4 = *(*(a1 + 8) + 56);
  v5 = (v4 + 32 * *a2);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(a1 + 16) & 3;
  v13[0] = v6;
  v13[1] = v7;
  *&v6 = *(v13 + v8);
  v9 = (v4 + 32 * v3);
  v10 = v9[1];
  v12[0] = *v9;
  v12[1] = v10;
  return *&v6 < *(v12 + v8);
}

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)3>::partition_node_median(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda(int)#1}::operator() const(int)::{lambda(unsigned int,unsigned int)#1},std::allocator<geom::bvh<double,(unsigned char)3>::partition_node_median(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda(int)#1}::operator() const(int)::{lambda(unsigned int,unsigned int)#1}>,unsigned int ()(unsigned int,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<geom::bvh<double,(unsigned char)3>::partition_node_median(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,int,double &,unsigned int &)#1},std::allocator<geom::bvh<double,(unsigned char)3>::partition_node_median(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,int,double &,unsigned int &)#1}>,void ()(geom::bvh_node<double,(unsigned char)3> const&,int,double &,unsigned int &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2862929A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)3>::partition_node_median(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,int,double &,unsigned int &)#1},std::allocator<geom::bvh<double,(unsigned char)3>::partition_node_median(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,int,double &,unsigned int &)#1}>,void ()(geom::bvh_node<double,(unsigned char)3> const&,int,double &,unsigned int &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t geom::bvh<double,(unsigned char)3>::partition_node_median(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,int,double &,unsigned int &)#1}::operator()(uint64_t *a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v11 = *(a2 + 16);
  v12 = (*(*a1 + 32) + 4 * *(a2 + 12));
  v13 = (2 * v11) & 0x1FFFFFFFCLL;
  std::function<std::function<unsigned int ()(unsigned int,unsigned int)> ()(int)>::operator()(a1[1], a3);
  if (v11)
  {
    std::__nth_element[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int,unsigned int)> &,unsigned int *>(v12, (v12 + v13), &v12[v11], v22);
  }

  std::__function::__value_func<unsigned int ()(unsigned int,unsigned int)>::~__value_func[abi:nn200100](v22);
  v14 = (*(v10 + 56) + 32 * *(v12 + v13));
  v15 = v14[1];
  v20[0] = *v14;
  v20[1] = v15;
  *a4 = *(v20 + (a3 & 3));
  std::function<std::function<unsigned int ()(unsigned int,unsigned int)> ()(int)>::operator()(a1[1], a3);
  v16 = std::__upper_bound[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int,unsigned int)>,unsigned int *,unsigned int *,unsigned int,std::__identity>(v12, &v12[v11], (v12 + v13), v21);
  result = std::__function::__value_func<unsigned int ()(unsigned int,unsigned int)>::~__value_func[abi:nn200100](v21);
  v18 = (v16 - v12) >> 2;
  if (*(a2 + 16) - v18 < v18)
  {
    LODWORD(v18) = *(a2 + 16) - v18;
  }

  *a5 = v18;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__value_func<void ()(geom::bvh_node<double,(unsigned char)3> const&,int,double &,unsigned int &)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 std::__function::__func<geom::bvh<double,(unsigned char)3>::partition_node_median(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda(unsigned int)#1},std::allocator<geom::bvh<double,(unsigned char)3>::partition_node_median(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda(unsigned int)#1}>,BOOL ()(unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286292A38;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL std::__function::__func<geom::bvh<double,(unsigned char)3>::partition_node_median(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda(unsigned int)#1},std::allocator<geom::bvh<double,(unsigned char)3>::partition_node_median(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda(unsigned int)#1}>,BOOL ()(unsigned int)>::operator()(uint64_t a1, unsigned int *a2)
{
  v2 = (*(*(a1 + 24) + 56) + 32 * *a2);
  v3 = *v2;
  v4 = v2[1];
  return *(&v6 + (**(a1 + 16) & 3)) < **(a1 + 8);
}

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)3>::partition_node_median(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda(unsigned int)#1},std::allocator<geom::bvh<double,(unsigned char)3>::partition_node_median(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda(unsigned int)#1}>,BOOL ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>,std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2>&,geom::bbox<float,(unsigned char)2>&)#1},std::allocator<void geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>,std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2>&,geom::bbox<float,(unsigned char)2>&)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2>&,geom::bbox<float,(unsigned char)2>&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286292AB8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>,std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2>&,geom::bbox<float,(unsigned char)2>&)#1},std::allocator<void geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>,std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2>&,geom::bbox<float,(unsigned char)2>&)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2>&,geom::bbox<float,(unsigned char)2>&)>::operator()(uint64_t a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 8);
  std::__function::__value_func<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>::__value_func[abi:nn200100](v12, *(a1 + 16));
  v9 = geom::bvh<float,(unsigned char)2>::partition_node_heuristic<std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>>(v8, v12, *(a1 + 24), a2, a3, a4);
  std::__function::__value_func<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>::~__value_func[abi:nn200100](v12);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t std::__function::__func<void geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>,std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2>&,geom::bbox<float,(unsigned char)2>&)#1},std::allocator<void geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>,std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2>&,geom::bbox<float,(unsigned char)2>&)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2>&,geom::bbox<float,(unsigned char)2>&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t geom::bvh<float,(unsigned char)2>::partition_node_heuristic<std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>>(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, float32x2_t *a5, float32x2_t *a6)
{
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v10 = a3;
  std::vector<geom::bbox<float,(unsigned char)2>>::resize(&v106, a3);
  v103 = 0;
  v104 = 0;
  v105 = 0;
  std::vector<geom::bbox<float,(unsigned char)2>>::resize(&v103, v10);
  __p = 0;
  v101 = 0;
  v102 = 0;
  std::vector<geom::bbox<float,(unsigned char)2>>::resize(&__p, v10);
  memset(&v99, 0, sizeof(v99));
  std::vector<float>::resize(&v99, v10);
  memset(&v98, 0, sizeof(v98));
  v11 = a3 - 1;
  std::vector<float>::resize(&v98, v11);
  v14 = *(a4 + 12);
  v13 = *(a4 + 16);
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
  *v12.i32 = a3;
  v24 = vdiv_f32(v23, vdup_lane_s32(v12, 0));
  if (sqrtf(vaddv_f32(vmul_f32(v24, v24))) <= 0.00001)
  {
    v74 = v14 + (v13 >> 1);
    v75 = 0x7F0000007FLL;
    v76 = vneg_f32(0x7F0000007FLL);
    v77 = v76;
    v78 = 0x7F0000007FLL;
    if (v13 >= 2)
    {
      v79 = 4 * v74 - 4 * v14;
      v77 = vneg_f32(0x7F0000007FLL);
      do
      {
        v80 = *v16++;
        v81 = (a1[10] + 16 * v80);
        v77 = vminnm_f32(v77, *v81);
        v78 = vmaxnm_f32(v78, v81[1]);
        v79 -= 4;
      }

      while (v79);
    }

    *a5 = v77;
    a5[1] = v78;
    if (v13)
    {
      v82 = (a1[4] + 4 * v74);
      v83 = 4 * v15 - 4 * v74;
      v75 = 0x7F0000007FLL;
      v76 = vneg_f32(0x7F0000007FLL);
      do
      {
        v84 = *v82++;
        v85 = (a1[10] + 16 * v84);
        v76 = vminnm_f32(v76, *v85);
        v75 = vmaxnm_f32(v75, v85[1]);
        v83 -= 4;
      }

      while (v83);
    }

    *a6 = v76;
    a6[1] = v75;
    v73 = *(a4 + 16) >> 1;
  }

  else
  {
    v25 = 0;
    v26 = 1;
    v88 = -1;
    v89 = 0;
    v27 = 3.4028e38;
    v28 = vneg_f32(0x7F0000007FLL);
    v29 = 1;
    do
    {
      v87 = v29;
      v93 = v23;
      v30 = *(&v93 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v25 & 1)));
      if (fabsf(v30) > 0.00001)
      {
        if (v99.__end_ - v99.__begin_ >= 1)
        {
          bzero(v99.__begin_, v99.__end_ - v99.__begin_);
          *v12.i32 = a3;
        }

        v31 = v106;
        v32 = (v107 - v106) >> 4;
        if (v32 >= 1)
        {
          v33 = v32 + 1;
          do
          {
            *v31 = v28;
            v31[1] = 0x7F0000007FLL;
            v31 += 2;
            --v33;
          }

          while (v33 > 1);
        }

        v34 = *(a4 + 16);
        if (v34)
        {
          v35 = *(a4 + 12);
          v36 = (v34 + v35);
          v37 = (a1[4] + 4 * v35);
          v92 = v19;
          v38 = *(&v92 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v25 & 1)));
          v39 = 4 * v36 - 4 * v35;
          do
          {
            v40 = *v37++;
            v41 = (((*(a1[7] + 8 * v40 + 4 * (v25 & 1)) - v38) / v30) * *v12.i32);
            v42 = (a1[10] + 16 * v40);
            if (v41 == a3)
            {
              v41 = v11;
            }

            v106[2 * v41] = vminnm_f32(*v42, v106[2 * v41]);
            v106[2 * v41 + 1] = vmaxnm_f32(v42[1], v106[2 * v41 + 1]);
            ++v99.__begin_[v41];
            v39 -= 4;
          }

          while (v39);
        }

        v43 = v107;
        if (v106 != v107)
        {
          v44 = v103;
          v46 = *v106;
          v47 = v106[1];
          v45 = v106 + 2;
          *v103 = *v106;
          v44[1] = v47;
          if (v45 != v43)
          {
            v48 = v44 + 3;
            do
            {
              v49 = *v45;
              v50 = v45[1];
              v45 += 2;
              v46 = vminnm_f32(v46, v49);
              v47 = vmaxnm_f32(v47, v50);
              v48[-1] = v46;
              *v48 = v47;
              v48 += 2;
            }

            while (v45 != v43);
          }
        }

        v51 = v106;
        if (v107 != v106)
        {
          v52 = v101;
          v54 = v107[-2];
          v55 = v107[-1];
          v53 = v107 - 2;
          v101[-2] = v54;
          v52[-1] = v55;
          if (v51 != v53)
          {
            v56 = v52 - 4;
            do
            {
              v58 = v53[-2];
              v57 = v53[-1];
              v53 -= 2;
              v54 = vminnm_f32(v54, v58);
              v55 = vmaxnm_f32(v55, v57);
              *v56 = v54;
              v56[1] = v55;
              v56 -= 2;
            }

            while (v53 != v51);
          }
        }

        begin = v98.__begin_;
        if (v98.__end_ != v98.__begin_)
        {
          v60 = v99.__begin_ + v98.__end_ - v98.__begin_;
          v61 = v99.__begin_ + 1;
          v62 = *v99.__begin_;
          *v98.__begin_ = *v99.__begin_;
          if (v60 != v61)
          {
            v63 = begin + 1;
            do
            {
              v64 = *v61++;
              v62 += v64;
              *v63++ = v62;
            }

            while (v61 != v60);
          }
        }

        if (v11)
        {
          v65 = 0;
          v66 = 16;
          do
          {
            v67 = v98.__begin_[v65];
            std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>::operator()(a2, v67, v103 + v66 - 16, *(a4 + 16) - v67);
            if (v68 < v27)
            {
              *a5->f32 = *(v103 + v66 - 16);
              *a6->f32 = *(__p + v66);
              v88 = v25;
              v89 = v67;
              v26 = v65;
              v27 = v68;
            }

            ++v65;
            v66 += 16;
          }

          while (v11 != v65);
        }
      }

      v29 = 0;
      v25 = 1;
      *v12.i32 = a3;
    }

    while ((v87 & 1) != 0);
    v69 = a1[4];
    v70 = *(a4 + 12);
    v71 = (v69 + 4 * v70);
    v72 = *(a4 + 16) + v70;
    v94[0] = a1;
    v94[1] = v19;
    v94[2] = v18;
    v94[3] = v23;
    v95 = v26;
    v96 = v88;
    v97 = a3;
    std::__partition_impl[abi:nn200100]<unsigned int geom::bvh<float,(unsigned char)2>::partition_node_heuristic<geom::surface_area_heuristic_functor<float,(unsigned char)2>>(geom::surface_area_heuristic_functor<float,(unsigned char)2>,unsigned int,geom::bvh_node<float,(unsigned char)2> const&,geom::bbox<float,(unsigned char)2> &,geom::bbox<float,(unsigned char)2> &)::{lambda#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(v71, (v69 + 4 * v72), v94);
    v73 = v89;
  }

  if (v98.__begin_)
  {
    v98.__end_ = v98.__begin_;
    operator delete(v98.__begin_);
  }

  if (v99.__begin_)
  {
    v99.__end_ = v99.__begin_;
    operator delete(v99.__begin_);
  }

  if (__p)
  {
    v101 = __p;
    operator delete(__p);
  }

  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }

  if (v106)
  {
    v107 = v106;
    operator delete(v106);
  }

  return v73;
}

uint64_t std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>::operator()(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v7 = a2;
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x25000B90CLL);
  }

  return (*(*v4 + 48))(v4, &v7, a3, &v6);
}

__n128 std::__function::__func<void geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>,std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2>&,geom::bbox<double,(unsigned char)2>&)#1},std::allocator<void geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>,std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2>&,geom::bbox<double,(unsigned char)2>&)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2>&,geom::bbox<double,(unsigned char)2>&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286292B38;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>,std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2>&,geom::bbox<double,(unsigned char)2>&)#1},std::allocator<void geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>,std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2>&,geom::bbox<double,(unsigned char)2>&)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2>&,geom::bbox<double,(unsigned char)2>&)>::operator()(uint64_t a1, uint64_t a2, float64x2_t *a3, float64x2_t *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 8);
  std::__function::__value_func<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>::__value_func[abi:nn200100](v12, *(a1 + 16));
  v9 = geom::bvh<double,(unsigned char)2>::partition_node_heuristic<std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>>(v8, v12, *(a1 + 24), a2, a3, a4);
  std::__function::__value_func<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>::~__value_func[abi:nn200100](v12);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t std::__function::__func<void geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>,std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2>&,geom::bbox<double,(unsigned char)2>&)#1},std::allocator<void geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>,std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2>&,geom::bbox<double,(unsigned char)2>&)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2>&,geom::bbox<double,(unsigned char)2>&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t geom::bvh<double,(unsigned char)2>::partition_node_heuristic<std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>>(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, float64x2_t *a5, float64x2_t *a6)
{
  v118 = *MEMORY[0x277D85DE8];
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v11 = a3;
  std::vector<geom::bbox<double,(unsigned char)2>>::resize(&v108, a3);
  v105 = 0;
  v106 = 0;
  v107 = 0;
  std::vector<geom::bbox<double,(unsigned char)2>>::resize(&v105, v11);
  __p = 0;
  v103 = 0;
  v104 = 0;
  std::vector<geom::bbox<double,(unsigned char)2>>::resize(&__p, v11);
  memset(&v101, 0, sizeof(v101));
  std::vector<float>::resize(&v101, v11);
  memset(&v100, 0, sizeof(v100));
  v12 = a3 - 1;
  std::vector<float>::resize(&v100, v12);
  v14 = *(a4 + 12);
  v13 = *(a4 + 16);
  v15 = v13 + v14;
  v16 = (a1[4] + 4 * v14);
  if (v13)
  {
    v17 = 4 * v15 - 4 * v14;
    v18 = vdupq_n_s64(0x7FF0000000000000uLL);
    v19 = vdupq_n_s64(0xFFF0000000000000);
    v20 = (a1[4] + 4 * v14);
    do
    {
      v21 = *v20++;
      v22 = *(a1[7] + 16 * v21);
      v18 = vminnmq_f64(v18, v22);
      v19 = vmaxnmq_f64(v19, v22);
      v17 -= 4;
    }

    while (v17);
  }

  else
  {
    v19 = vdupq_n_s64(0xFFF0000000000000);
    v18 = vdupq_n_s64(0x7FF0000000000000uLL);
  }

  v91 = vsubq_f64(v19, v18);
  v23 = vdivq_f64(v91, vdupq_lane_s64(COERCE__INT64(a3), 0));
  if (sqrt(vaddvq_f64(vmulq_f64(v23, v23))) <= 0.000001)
  {
    v74 = v14 + (v13 >> 1);
    v75 = vdupq_n_s64(0xFFF0000000000000);
    v76 = vdupq_n_s64(0x7FF0000000000000uLL);
    v77 = v76;
    v78 = v75;
    if (v13 >= 2)
    {
      v79 = 4 * v74 - 4 * v14;
      v77 = vdupq_n_s64(0x7FF0000000000000uLL);
      v78 = vdupq_n_s64(0xFFF0000000000000);
      do
      {
        v80 = *v16++;
        v81 = (a1[10] + 32 * v80);
        v77 = vminnmq_f64(v77, *v81);
        v78 = vmaxnmq_f64(v78, v81[1]);
        v79 -= 4;
      }

      while (v79);
    }

    *a5 = v77;
    a5[1] = v78;
    if (v13)
    {
      v82 = (a1[4] + 4 * v74);
      v83 = 4 * v15 - 4 * v74;
      v76 = vdupq_n_s64(0x7FF0000000000000uLL);
      v75 = vdupq_n_s64(0xFFF0000000000000);
      do
      {
        v84 = *v82++;
        v85 = (a1[10] + 32 * v84);
        v76 = vminnmq_f64(v76, *v85);
        v75 = vmaxnmq_f64(v75, v85[1]);
        v83 -= 4;
      }

      while (v83);
    }

    *a6 = v76;
    a6[1] = v75;
    v73 = *(a4 + 16) >> 1;
  }

  else
  {
    v88 = v19;
    v89 = v18;
    v24 = 0;
    v94 = 1;
    v95 = -1;
    v96 = 0;
    v25 = 1.79769313e308;
    v90 = vdupq_n_s64(0x7FF0000000000000uLL);
    v26 = vdupq_n_s64(0xFFF0000000000000);
    v27 = 1;
    v92 = v26;
    do
    {
      v93 = v27;
      v99 = v91;
      v28 = *(&v99 & 0xFFFFFFFFFFFFFFF7 | (8 * (v24 & 1)));
      if (fabs(v28) > 0.000001)
      {
        if (v101.__end_ - v101.__begin_ >= 1)
        {
          bzero(v101.__begin_, v101.__end_ - v101.__begin_);
          v26 = v92;
        }

        v29 = v108;
        v30 = (v109 - v108) >> 5;
        if (v30 >= 1)
        {
          v31 = v30 + 1;
          do
          {
            *v29 = v90;
            v29[1] = v26;
            v29 += 2;
            --v31;
          }

          while (v31 > 1);
        }

        v32 = *(a4 + 16);
        if (v32)
        {
          v33 = *(a4 + 12);
          v34 = (v32 + v33);
          v35 = (a1[4] + 4 * v33);
          v98 = v89;
          v36 = *(&v98 & 0xFFFFFFFFFFFFFFF7 | (8 * (v24 & 1)));
          v37 = 4 * v34 - 4 * v33;
          do
          {
            v38 = *v35++;
            v39 = ((*(a1[7] + 16 * v38 + 8 * (v24 & 1)) - v36) / v28 * a3);
            v40 = (a1[10] + 32 * v38);
            if (v39 == a3)
            {
              v41 = v12;
            }

            else
            {
              v41 = v39;
            }

            v108[2 * v41] = vminnmq_f64(*v40, v108[2 * v41]);
            v108[2 * v41 + 1] = vmaxnmq_f64(v40[1], v108[2 * v41 + 1]);
            ++v101.__begin_[v41];
            v37 -= 4;
          }

          while (v37);
        }

        v42 = v109;
        if (v108 != v109)
        {
          v43 = v105;
          v45 = *v108;
          v46 = v108[1];
          v44 = v108 + 2;
          *v105 = *v108;
          v43[1] = v46;
          if (v44 != v42)
          {
            v47 = v43 + 3;
            do
            {
              v48 = *v44;
              v49 = v44[1];
              v44 += 2;
              v45 = vminnmq_f64(v45, v48);
              v46 = vmaxnmq_f64(v46, v49);
              v47[-1] = v45;
              *v47 = v46;
              v47 += 2;
            }

            while (v44 != v42);
          }
        }

        v50 = v108;
        if (v109 != v108)
        {
          v51 = v103;
          v53 = v109[-2];
          v54 = v109[-1];
          v52 = v109 - 2;
          v103[-2] = v53;
          v51[-1] = v54;
          if (v50 != v52)
          {
            v55 = v51 - 4;
            do
            {
              v57 = v52[-2];
              v56 = v52[-1];
              v52 -= 2;
              v53 = vminnmq_f64(v53, v57);
              v54 = vmaxnmq_f64(v54, v56);
              *v55 = v53;
              v55[1] = v54;
              v55 -= 2;
            }

            while (v52 != v50);
          }
        }

        begin = v100.__begin_;
        if (v100.__end_ != v100.__begin_)
        {
          v59 = v101.__begin_ + v100.__end_ - v100.__begin_;
          v60 = v101.__begin_ + 1;
          v61 = *v101.__begin_;
          *v100.__begin_ = *v101.__begin_;
          if (v59 != v60)
          {
            v62 = begin + 1;
            do
            {
              v63 = *v60++;
              v61 += v63;
              *v62++ = v61;
            }

            while (v60 != v59);
          }
        }

        if (v12)
        {
          v64 = 0;
          v65 = 32;
          do
          {
            v66 = v100.__begin_[v64];
            std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>::operator()(a2, v66, v105 + v65 - 32, *(a4 + 16) - v66);
            if (v67 < v25)
            {
              v68 = *(v105 + v65 - 16);
              *a5 = *(v105 + v65 - 32);
              a5[1] = v68;
              v69 = *(__p + v65 + 16);
              *a6 = *(__p + v65);
              a6[1] = v69;
              v95 = v24;
              v96 = v66;
              v94 = v64;
              v25 = v67;
            }

            ++v64;
            v65 += 32;
          }

          while (v12 != v64);
        }
      }

      v27 = 0;
      v24 = 1;
      v26 = v92;
    }

    while ((v93 & 1) != 0);
    v70 = a1[4];
    v71 = *(a4 + 12);
    v72 = *(a4 + 16);
    v111 = a1;
    v112 = v89;
    v113 = v88;
    v114 = v91;
    v115 = v94;
    v116 = v95;
    v117 = a3;
    std::__partition_impl[abi:nn200100]<unsigned int geom::bvh<double,(unsigned char)2>::partition_node_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)2>>(geom::surface_area_heuristic_functor<double,(unsigned char)2>,unsigned int,geom::bvh_node<double,(unsigned char)2> const&,geom::bbox<double,(unsigned char)2> &,geom::bbox<double,(unsigned char)2> &)::{lambda#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>((v70 + 4 * v71), (v70 + 4 * (v72 + v71)), &v111);
    v73 = v96;
  }

  if (v100.__begin_)
  {
    v100.__end_ = v100.__begin_;
    operator delete(v100.__begin_);
  }

  if (v101.__begin_)
  {
    v101.__end_ = v101.__begin_;
    operator delete(v101.__begin_);
  }

  if (__p)
  {
    v103 = __p;
    operator delete(__p);
  }

  if (v105)
  {
    v106 = v105;
    operator delete(v105);
  }

  if (v108)
  {
    v109 = v108;
    operator delete(v108);
  }

  v86 = *MEMORY[0x277D85DE8];
  return v73;
}

uint64_t std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>::operator()(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v7 = a2;
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x25000C09CLL);
  }

  return (*(*v4 + 48))(v4, &v7, a3, &v6);
}

__n128 std::__function::__func<void geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>,std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3>&,geom::bbox<float,(unsigned char)3>&)#1},std::allocator<void geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>,std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3>&,geom::bbox<float,(unsigned char)3>&)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3>&,geom::bbox<float,(unsigned char)3>&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286292BB8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>,std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3>&,geom::bbox<float,(unsigned char)3>&)#1},std::allocator<void geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>,std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3>&,geom::bbox<float,(unsigned char)3>&)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3>&,geom::bbox<float,(unsigned char)3>&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 8);
  std::__function::__value_func<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>::__value_func[abi:nn200100](v12, *(a1 + 16));
  v9 = geom::bvh<float,(unsigned char)3>::partition_node_heuristic<std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>>(v8, v12, *(a1 + 24), a2, a3, a4);
  std::__function::__value_func<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>::~__value_func[abi:nn200100](v12);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t std::__function::__func<void geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>,std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3>&,geom::bbox<float,(unsigned char)3>&)#1},std::allocator<void geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>>(std::function<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>,std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3>&,geom::bbox<float,(unsigned char)3>&)#1}>,unsigned int ()(geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3>&,geom::bbox<float,(unsigned char)3>&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t geom::bvh<float,(unsigned char)3>::partition_node_heuristic<std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>>(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v142 = *MEMORY[0x277D85DE8];
  v132 = 0;
  v133 = 0;
  v134 = 0;
  v11 = a3;
  std::vector<geom::bbox<float,(unsigned char)3>>::resize(&v132, a3);
  v129 = 0;
  v130 = 0;
  v131 = 0;
  std::vector<geom::bbox<float,(unsigned char)3>>::resize(&v129, v11);
  __p = 0;
  v127 = 0;
  v128 = 0;
  std::vector<geom::bbox<float,(unsigned char)3>>::resize(&__p, v11);
  memset(&v125, 0, sizeof(v125));
  std::vector<float>::resize(&v125, v11);
  memset(&v124, 0, sizeof(v124));
  v12 = a3 - 1;
  std::vector<float>::resize(&v124, v12);
  v15 = *(a4 + 12);
  v14 = *(a4 + 16);
  v16 = v14 + v15;
  v17 = (a1[4] + 4 * v15);
  if (v14)
  {
    v18 = 4 * v16 - 4 * v15;
    v19.i64[0] = 0x7F0000007FLL;
    v19.i64[1] = 0x7F0000007FLL;
    v20 = vnegq_f32(v19);
    v21 = (a1[4] + 4 * v15);
    do
    {
      v22 = *v21++;
      v13 = *(a1[7] + 16 * v22);
      v20.i32[3] = 0;
      v13.i32[3] = 0;
      v20 = vminnmq_f32(v20, v13);
      v19.i32[3] = 0;
      v19 = vmaxnmq_f32(v19, v13);
      v18 -= 4;
    }

    while (v18);
  }

  else
  {
    v19.i64[0] = 0x7F0000007FLL;
    v19.i64[1] = 0x7F0000007FLL;
    v20 = vnegq_f32(v19);
  }

  v13.f32[0] = a3;
  v116 = vsubq_f32(v19, v20);
  v23 = vdivq_f32(v116, vdupq_lane_s32(*v13.f32, 0));
  v24 = vmulq_f32(v23, v23);
  if (sqrtf(v24.f32[2] + vaddv_f32(*v24.f32)) <= 0.00001)
  {
    v88 = v15 + (v14 >> 1);
    v89.i64[0] = 0x7F0000007FLL;
    v89.i64[1] = 0x7F0000007FLL;
    v90 = vnegq_f32(v89);
    v91 = v90;
    v92.i64[0] = 0x7F0000007FLL;
    v92.i32[2] = 127;
    if (v14 >= 2)
    {
      v93 = 4 * v88 - 4 * v15;
      v94.i64[0] = 0x7F0000007FLL;
      v94.i64[1] = 0x7F0000007FLL;
      v95 = vnegq_f32(v94);
      do
      {
        v96 = *v17++;
        v97 = (a1[10] + 32 * v96);
        v98 = v95;
        v98.i32[3] = 0;
        v99 = *v97;
        v100 = v97[1];
        v99.i32[3] = 0;
        v91 = vminnmq_f32(v98, v99);
        v101 = v94;
        v101.i32[3] = 0;
        v100.i32[3] = 0;
        v91.i32[3] = v95.i32[3];
        v92 = vmaxnmq_f32(v101, v100);
        v92.i32[3] = v94.i32[3];
        v94 = v92;
        v95 = v91;
        v93 -= 4;
      }

      while (v93);
    }

    *(a5 + 8) = v91.i32[2];
    *a5 = v91.i64[0];
    *(a5 + 24) = v92.i32[2];
    *(a5 + 16) = v92.i64[0];
    if (v14)
    {
      v102 = (a1[4] + 4 * v88);
      v103 = 4 * v16 - 4 * v88;
      v104.i64[0] = 0x7F0000007FLL;
      v104.i64[1] = 0x7F0000007FLL;
      v105 = vnegq_f32(v104);
      do
      {
        v106 = *v102++;
        v107 = (a1[10] + 32 * v106);
        v108 = v105;
        v108.i32[3] = 0;
        v109 = *v107;
        v110 = v107[1];
        v109.i32[3] = 0;
        v90 = vminnmq_f32(v108, v109);
        v111 = v104;
        v111.i32[3] = 0;
        v110.i32[3] = 0;
        v90.i32[3] = v105.i32[3];
        v89 = vmaxnmq_f32(v111, v110);
        v89.i32[3] = v104.i32[3];
        v104 = v89;
        v105 = v90;
        v103 -= 4;
      }

      while (v103);
    }

    *a6 = v90.i64[0];
    *(a6 + 8) = v90.i32[2];
    *(a6 + 16) = v89.i64[0];
    *(a6 + 24) = v89.i32[2];
    v87 = *(a4 + 16) >> 1;
  }

  else
  {
    v114 = v19;
    v115 = v20;
    v25 = 0;
    v119 = -1;
    v120 = 0;
    v118 = 1;
    v26 = 3.4028e38;
    v27.i64[0] = 0x7F0000007FLL;
    v27.i64[1] = 0x7F0000007FLL;
    v28 = vnegq_f32(v27);
    v117 = v28;
    do
    {
      v123 = v116;
      v29 = *(&v123 & 0xFFFFFFFFFFFFFFF3 | (4 * (v25 & 3)));
      if (fabsf(v29) > 0.00001)
      {
        if (v125.__end_ - v125.__begin_ >= 1)
        {
          bzero(v125.__begin_, v125.__end_ - v125.__begin_);
          v28 = v117;
        }

        v30 = v132;
        v31 = (v133 - v132) >> 5;
        v32.i64[0] = 0x7F0000007FLL;
        v32.i64[1] = 0x7F0000007FLL;
        if (v31 >= 1)
        {
          v33 = v31 + 1;
          do
          {
            *v30 = v28;
            v30[1] = v32;
            v30 += 2;
            --v33;
          }

          while (v33 > 1);
        }

        v34 = *(a4 + 16);
        if (v34)
        {
          v35 = *(a4 + 12);
          v36 = (v34 + v35);
          v37 = (a1[4] + 4 * v35);
          v122 = v115;
          v38 = *(&v122 & 0xFFFFFFFFFFFFFFF3 | (4 * (v25 & 3)));
          v39 = 4 * v36 - 4 * v35;
          do
          {
            v40 = *v37++;
            v41 = (a1[10] + 32 * v40);
            v42 = (((*(a1[7] + 16 * v40 + 4 * (v25 & 3)) - v38) / v29) * a3);
            v43 = *v41;
            if (v42 == a3)
            {
              v42 = v12;
            }

            v44 = 2 * v42;
            v45 = v132[v44];
            v43.i32[3] = 0;
            v45.i32[3] = 0;
            v132[v44] = vminnmq_f32(v43, v45);
            v46 = v41[1];
            v46.i32[3] = 0;
            v47 = v132[v44 + 1];
            v47.i32[3] = 0;
            v132[v44 + 1] = vmaxnmq_f32(v46, v47);
            ++v125.__begin_[v42];
            v39 -= 4;
          }

          while (v39);
        }

        v48 = v133;
        if (v132 != v133)
        {
          v49 = v129;
          v51 = *v132;
          v52 = v132[1];
          v50 = v132 + 2;
          *v129 = *v132;
          v49[1] = v52;
          if (v50 != v48)
          {
            v53 = v49 + 3;
            do
            {
              v54 = v51;
              v54.i32[3] = 0;
              v55 = *v50;
              v56 = v50[1];
              v50 += 2;
              v55.i32[3] = 0;
              v57 = vminnmq_f32(v54, v55);
              v58 = v52;
              v58.i32[3] = 0;
              v56.i32[3] = 0;
              v59 = vmaxnmq_f32(v58, v56);
              v57.i32[3] = v51.i32[3];
              v59.i32[3] = v52.i32[3];
              v53[-1] = v57;
              *v53 = v59;
              v53 += 2;
              v51 = v57;
              v52 = v59;
            }

            while (v50 != v48);
          }
        }

        v60 = v132;
        if (v133 != v132)
        {
          v61 = v127;
          v63 = v133[-2];
          v64 = v133[-1];
          v62 = v133 - 2;
          *(v127 - 2) = v63;
          *(v61 - 1) = v64;
          if (v60 != v62)
          {
            v65 = (v61 - 4);
            do
            {
              v66 = v62[-2];
              v67 = v62[-1];
              v62 -= 2;
              v68 = v63;
              v68.i32[3] = 0;
              v66.i32[3] = 0;
              v69 = v64;
              v69.i32[3] = 0;
              v67.i32[3] = 0;
              v70 = vminnmq_f32(v68, v66);
              v71 = vmaxnmq_f32(v69, v67);
              v70.i32[3] = v63.i32[3];
              v71.i32[3] = v64.i32[3];
              *v65 = v70;
              v65[1] = v71;
              v65 -= 2;
              v63 = v70;
              v64 = v71;
            }

            while (v62 != v60);
          }
        }

        begin = v124.__begin_;
        if (v124.__end_ != v124.__begin_)
        {
          v73 = v125.__begin_ + v124.__end_ - v124.__begin_;
          v74 = v125.__begin_ + 1;
          v75 = *v125.__begin_;
          *v124.__begin_ = *v125.__begin_;
          if (v73 != v74)
          {
            v76 = begin + 1;
            do
            {
              v77 = *v74++;
              v75 += v77;
              *v76++ = v75;
            }

            while (v74 != v73);
          }
        }

        if (v12)
        {
          v78 = 0;
          v79 = 32;
          do
          {
            v80 = v124.__begin_[v78];
            std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>::operator()(a2, v80, v129 + v79 - 32, *(a4 + 16) - v80);
            if (v81 < v26)
            {
              v82 = *(v129 + v79 - 16);
              *a5 = *(v129 + v79 - 32);
              *(a5 + 16) = v82;
              v83 = *(__p + v79 + 16);
              *a6 = *(__p + v79);
              *(a6 + 16) = v83;
              v119 = v25;
              v120 = v80;
              v118 = v78;
              v26 = v81;
            }

            ++v78;
            v79 += 32;
          }

          while (v12 != v78);
        }
      }

      ++v25;
      v28 = v117;
    }

    while (v25 != 3);
    v84 = a1[4];
    v85 = *(a4 + 12);
    v86 = *(a4 + 16);
    v135 = a1;
    v136 = v115;
    v137 = v114;
    v138 = v116;
    v139 = v118;
    v140 = v119;
    v141 = a3;
    std::__partition_impl[abi:nn200100]<unsigned int geom::bvh<float,(unsigned char)3>::partition_node_heuristic<geom::surface_area_heuristic_functor<float,(unsigned char)3>>(geom::surface_area_heuristic_functor<float,(unsigned char)3>,unsigned int,geom::bvh_node<float,(unsigned char)3> const&,geom::bbox<float,(unsigned char)3> &,geom::bbox<float,(unsigned char)3> &)::{lambda#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>((v84 + 4 * v85), (v84 + 4 * (v86 + v85)), &v135);
    v87 = v120;
  }

  if (v124.__begin_)
  {
    v124.__end_ = v124.__begin_;
    operator delete(v124.__begin_);
  }

  if (v125.__begin_)
  {
    v125.__end_ = v125.__begin_;
    operator delete(v125.__begin_);
  }

  if (__p)
  {
    v127 = __p;
    operator delete(__p);
  }

  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }

  if (v132)
  {
    v133 = v132;
    operator delete(v132);
  }

  v112 = *MEMORY[0x277D85DE8];
  return v87;
}

uint64_t std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>::operator()(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v7 = a2;
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x25000C8E8);
  }

  return (*(*v4 + 48))(v4, &v7, a3, &v6);
}

__n128 std::__function::__func<void geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>,std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3>&,geom::bbox<double,(unsigned char)3>&)#1},std::allocator<void geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>,std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3>&,geom::bbox<double,(unsigned char)3>&)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3>&,geom::bbox<double,(unsigned char)3>&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286292C38;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<void geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>,std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3>&,geom::bbox<double,(unsigned char)3>&)#1},std::allocator<void geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>,std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3>&,geom::bbox<double,(unsigned char)3>&)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3>&,geom::bbox<double,(unsigned char)3>&)>::operator()(uint64_t a1, uint64_t a2, float64x2_t *a3, float64x2_t *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 8);
  std::__function::__value_func<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>::__value_func[abi:nn200100](v16, *(a1 + 16));
  v13 = geom::bvh<double,(unsigned char)3>::partition_node_heuristic<std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>>(v8, v16, *(a1 + 24), a2, a3, a4, v9, v10, v11, v12);
  std::__function::__value_func<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>::~__value_func[abi:nn200100](v16);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t std::__function::__func<void geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>,std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3>&,geom::bbox<double,(unsigned char)3>&)#1},std::allocator<void geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>>(std::function<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>,std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3>&,geom::bbox<double,(unsigned char)3>&)#1}>,unsigned int ()(geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3>&,geom::bbox<double,(unsigned char)3>&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t geom::bvh<double,(unsigned char)3>::partition_node_heuristic<std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>>(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, float64x2_t *a5, float64x2_t *a6, double a7, __n128 a8, double a9, __n128 a10)
{
  v141 = *MEMORY[0x277D85DE8];
  v128 = 0;
  v129 = 0;
  v130 = 0;
  v16 = a3;
  std::vector<geom::bbox<double,(unsigned char)3>>::resize(&v128, a3, a7, a8, a9, a10);
  v125 = 0;
  v126 = 0;
  v127 = 0;
  std::vector<geom::bbox<double,(unsigned char)3>>::resize(&v125, v16, v17, v18, v19, v20);
  __p = 0;
  v123 = 0;
  v124 = 0;
  std::vector<geom::bbox<double,(unsigned char)3>>::resize(&__p, v16, v21, v22, v23, v24);
  memset(&v121, 0, sizeof(v121));
  std::vector<float>::resize(&v121, v16);
  memset(&v120, 0, sizeof(v120));
  v25 = a3 - 1;
  std::vector<float>::resize(&v120, v25);
  v30 = *(a4 + 12);
  v29 = *(a4 + 16);
  v116 = a4;
  v31 = v29 + v30;
  v32 = (a1[4] + 4 * v30);
  if (v29)
  {
    v27.f64[0] = INFINITY;
    v26.f64[0] = -INFINITY;
    v33 = 4 * v31 - 4 * v30;
    v34 = vdupq_n_s64(0x7FF0000000000000uLL);
    v35 = vdupq_n_s64(0xFFF0000000000000);
    v36 = (a1[4] + 4 * v30);
    do
    {
      v37 = *v36++;
      v38 = a1[7] + 32 * v37;
      v39 = *(v38 + 16);
      v34 = vminnmq_f64(v34, *v38);
      v27 = vminnmq_f64(*&v27.f64[0], v39);
      v35 = vmaxnmq_f64(v35, *v38);
      v26 = vmaxnmq_f64(*&v26.f64[0], v39);
      v33 -= 4;
    }

    while (v33);
  }

  else
  {
    v26.f64[0] = -INFINITY;
    v27.f64[0] = INFINITY;
    v35 = vdupq_n_s64(0xFFF0000000000000);
    v34 = vdupq_n_s64(0x7FF0000000000000uLL);
  }

  v40 = vsubq_f64(v35, v34);
  v28.f64[0] = a3;
  v41 = vdivq_f64(v40, vdupq_lane_s64(COERCE__INT64(a3), 0));
  v112 = vsubq_f64(v26, v27);
  v42 = vdivq_f64(v112, v28);
  if (sqrt(vmulq_f64(v42, v42).f64[0] + vaddvq_f64(vmulq_f64(v41, v41))) <= 0.000001)
  {
    v89 = v30 + (v29 >> 1);
    v90 = vdupq_n_s64(0x7FF0000000000000uLL);
    v91 = vdupq_n_s64(0xFFF0000000000000);
    if (v29 >= 2)
    {
      v26.f64[0] = INFINITY;
      v27.f64[0] = -INFINITY;
      v94 = 4 * v89 - 4 * v30;
      v93 = vdupq_n_s64(0x7FF0000000000000uLL);
      v92 = vdupq_n_s64(0xFFF0000000000000);
      do
      {
        v95 = *v32++;
        v96 = a1[10] + (v95 << 6);
        v93 = vminnmq_f64(v93, *v96);
        v26 = vminnmq_f64(*&v26.f64[0], *(v96 + 16));
        v92 = vmaxnmq_f64(v92, *(v96 + 32));
        v27 = vmaxnmq_f64(*&v27.f64[0], *(v96 + 48));
        v94 -= 4;
      }

      while (v94);
    }

    else
    {
      v26.f64[0] = INFINITY;
      v27.f64[0] = -INFINITY;
      v92 = v91;
      v93 = v90;
    }

    *a5 = v93;
    a5[1] = v26;
    a5[2] = v92;
    a5[3] = v27;
    if (v29)
    {
      v97 = (a1[4] + 4 * v89);
      v90 = vdupq_n_s64(0x7FF0000000000000uLL);
      v26.f64[0] = INFINITY;
      v91 = vdupq_n_s64(0xFFF0000000000000);
      v27.f64[0] = -INFINITY;
      v98 = 4 * v31 - 4 * v89;
      do
      {
        v99 = *v97++;
        v100 = a1[10] + (v99 << 6);
        v90 = vminnmq_f64(v90, *v100);
        v26 = vminnmq_f64(*&v26.f64[0], *(v100 + 16));
        v91 = vmaxnmq_f64(v91, *(v100 + 32));
        v27 = vmaxnmq_f64(*&v27.f64[0], *(v100 + 48));
        v98 -= 4;
      }

      while (v98);
    }

    else
    {
      v26.f64[0] = INFINITY;
      v27.f64[0] = -INFINITY;
    }

    *a6 = v90;
    a6[1] = v26;
    a6[2] = v91;
    a6[3] = v27;
    v88 = *(a4 + 16) >> 1;
  }

  else
  {
    v105 = v35;
    v106 = v26;
    v43 = 0;
    v114 = -1;
    v115 = 0;
    v113 = 1;
    v44 = 1.79769313e308;
    v103 = v40;
    v104 = v34;
    v40.i64[1] = vextq_s8(v40, v40, 8uLL).u64[0];
    v111 = v40;
    v110 = vdupq_n_s64(0x7FF0000000000000uLL);
    v108 = v27;
    v109 = vdupq_n_s64(0xFFF0000000000000);
    v34.i64[1] = vextq_s8(v34, v34, 8uLL).u64[0];
    v107 = v34;
    do
    {
      *(&v45 + 1) = v111.i64[1];
      v119[0] = v111;
      v119[1] = v112;
      v46 = *(v119 + (v43 & 3));
      if (fabs(v46) > 0.000001)
      {
        begin = v121.__begin_;
        if (v121.__end_ - v121.__begin_ >= 1)
        {
          bzero(v121.__begin_, v121.__end_ - v121.__begin_);
        }

        v48 = v128;
        v49 = v129;
        v50 = (v129 - v128) >> 6;
        if (v50 >= 1)
        {
          v51 = v50 + 1;
          v52 = v128;
          do
          {
            *&v45 = 0x7FF0000000000000;
            *v52 = v110;
            v52[1] = v45;
            *&v45 = 0xFFF0000000000000;
            v52[2] = v109;
            v52[3] = v45;
            v52 += 4;
            --v51;
          }

          while (v51 > 1);
        }

        v53 = *(v116 + 16);
        if (v53)
        {
          v54 = *(v116 + 12);
          v55 = (v53 + v54);
          v56 = (a1[4] + 4 * v54);
          v118[0] = v107;
          v118[1] = v108;
          v57 = *(v118 + (v43 & 3));
          v58 = 4 * v55 - 4 * v54;
          do
          {
            v59 = *v56++;
            v60 = a1[10];
            v61 = (a1[7] + 32 * v59);
            v62 = v61[1];
            v117[0] = *v61;
            v117[1] = v62;
            v63 = v60 + (v59 << 6);
            v64 = ((*(v117 + (v43 & 3)) - v57) / v46 * a3);
            if (v64 == a3)
            {
              v64 = v25;
            }

            v65 = &v48[4 * v64];
            v66 = vminnmq_f64(*(v63 + 16), *&v65[1].f64[0]);
            *v65 = vminnmq_f64(*v63, *v65);
            v65[1] = v66;
            v67 = vmaxnmq_f64(*(v63 + 48), *&v65[3].f64[0]);
            v65[2] = vmaxnmq_f64(*(v63 + 32), v65[2]);
            v65[3] = v67;
            ++begin[v64];
            v58 -= 4;
          }

          while (v58);
        }

        std::inclusive_scan[abi:nn200100]<std::__wrap_iter<geom::bbox<double,(unsigned char)3> *>,std::__wrap_iter<geom::bbox<double,(unsigned char)3> *>,unsigned int geom::bvh<double,(unsigned char)3>::partition_node_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)3>>(geom::surface_area_heuristic_functor<double,(unsigned char)3>,unsigned int,geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3>&,geom::bbox<double,(unsigned char)3>&)::{lambda(geom::bbox<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> const&)#1}>(v48, v49, v125);
        std::inclusive_scan[abi:nn200100]<std::reverse_iterator<std::__wrap_iter<geom::bbox<double,(unsigned char)3> *>>,std::reverse_iterator<std::__wrap_iter<geom::bbox<double,(unsigned char)3> *>>,unsigned int geom::bvh<double,(unsigned char)3>::partition_node_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)3>>(geom::surface_area_heuristic_functor<double,(unsigned char)3>,unsigned int,geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3>&,geom::bbox<double,(unsigned char)3>&)::{lambda(geom::bbox<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> const&)#1}>(v68, v129, v129, v128, v128, v123, v123);
        v69 = v120.__begin_;
        if (v120.__end_ != v120.__begin_)
        {
          v70 = v121.__begin_ + v120.__end_ - v120.__begin_;
          v71 = v121.__begin_ + 1;
          v72 = *v121.__begin_;
          *v120.__begin_ = *v121.__begin_;
          if (v70 != v71)
          {
            v73 = v69 + 1;
            do
            {
              v74 = *v71++;
              v72 += v74;
              *v73++ = v72;
            }

            while (v71 != v70);
          }
        }

        if (v25)
        {
          v75 = 0;
          v76 = 64;
          do
          {
            v77 = v120.__begin_[v75];
            std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>::operator()(a2, v77, v125 + v76 - 64, *(v116 + 16) - v77);
            if (v78 < v44)
            {
              v79 = *(v125 + v76 - 16);
              v81 = *(v125 + v76 - 64);
              v80 = *(v125 + v76 - 48);
              a5[2] = *(v125 + v76 - 32);
              a5[3] = v79;
              *a5 = v81;
              a5[1] = v80;
              v82 = *(__p + v76 + 48);
              v84 = *(__p + v76);
              v83 = *(__p + v76 + 16);
              a6[2] = *(__p + v76 + 32);
              a6[3] = v82;
              *a6 = v84;
              a6[1] = v83;
              v114 = v43;
              v115 = v77;
              v113 = v75;
              v44 = v78;
            }

            ++v75;
            v76 += 64;
          }

          while (v25 != v75);
        }
      }

      ++v43;
    }

    while (v43 != 3);
    v85 = a1[4];
    v86 = *(v116 + 12);
    v87 = *(v116 + 16);
    v131 = a1;
    v132 = v104;
    v133 = v108;
    v134 = v105;
    v135 = v106;
    v136 = v103;
    v137 = v112;
    v138 = v113;
    v139 = v114;
    v140 = a3;
    std::__partition_impl[abi:nn200100]<unsigned int geom::bvh<double,(unsigned char)3>::partition_node_heuristic<geom::surface_area_heuristic_functor<double,(unsigned char)3>>(geom::surface_area_heuristic_functor<double,(unsigned char)3>,unsigned int,geom::bvh_node<double,(unsigned char)3> const&,geom::bbox<double,(unsigned char)3> &,geom::bbox<double,(unsigned char)3> &)::{lambda#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>((v85 + 4 * v86), (v85 + 4 * (v87 + v86)), &v131);
    v88 = v115;
  }

  if (v120.__begin_)
  {
    v120.__end_ = v120.__begin_;
    operator delete(v120.__begin_);
  }

  if (v121.__begin_)
  {
    v121.__end_ = v121.__begin_;
    operator delete(v121.__begin_);
  }

  if (__p)
  {
    v123 = __p;
    operator delete(__p);
  }

  if (v125)
  {
    v126 = v125;
    operator delete(v125);
  }

  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }

  v101 = *MEMORY[0x277D85DE8];
  return v88;
}

uint64_t std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>::operator()(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v8 = a2;
  v7 = a4;
  v4 = *(a1 + 24);
  if (v4)
  {
    return (*(*v4 + 48))(v4, &v8, a3, &v7);
  }

  v6 = std::__throw_bad_function_call[abi:nn200100]();
  return geom_create_refine_triangle_mesh_opt_3f(v6);
}

double geom_create_refine_triangle_mesh_opt_3f()
{
  v0 = geom_refine_triangle_mesh_opt_3f_obj_alloc();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  return result;
}

double geom_create_refine_triangle_mesh_opt_3d()
{
  v0 = geom_refine_triangle_mesh_opt_3d_obj_alloc();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  return result;
}

void geom_refine_triangle_mesh_opt_set_refinement_face_subset_3f(uint64_t a1, std::vector<unsigned int>::size_type a2, const void *a3)
{
  std::vector<float>::resize((a1 + 88), a2);
  if (a2)
  {
    v6 = *(a1 + 88);

    memmove(v6, a3, 4 * a2);
  }
}

void geom_refine_triangle_mesh_opt_set_refinement_face_subset_3d(uint64_t a1, std::vector<unsigned int>::size_type a2, const void *a3)
{
  std::vector<float>::resize((a1 + 88), a2);
  if (a2)
  {
    v6 = *(a1 + 88);

    memmove(v6, a3, 4 * a2);
  }
}

uint64_t geom_refine_triangle_mesh_opt_get_refinement_face_subset_data_3f(uint64_t a1)
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

uint64_t geom_refine_triangle_mesh_opt_get_refinement_face_subset_data_3d(uint64_t a1)
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

void geom::refine_triangle_mesh_options<float>::set_uvs(std::vector<unsigned int> *a1, unint64_t a2, const void *a3, std::vector<unsigned int>::size_type a4, const void *a5, unsigned int *a6, unsigned int *a7)
{
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(a1, a2);
  if (a2)
  {
    memmove(a1->__begin_, a3, 8 * a2);
  }

  std::vector<float>::resize(a1 + 1, a4);
  if (a4)
  {
    v14 = 0;
    v15 = vdupq_n_s64(a4 - 1);
    v16 = xmmword_2500C1670;
    v17 = xmmword_2500C1680;
    v18 = a1[1].__begin_ + 2;
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
  std::vector<float>::resize(a1 + 2, v21);
  if (4 * v21)
  {
    memmove(a1[2].__begin_, a5, 4 * v21);
  }

  a1[4].__begin_ = a6;
  a1[4].__end_ = 0;
  a1[4].__end_cap_.__value_ = a7;
}

void geom::refine_triangle_mesh_options<float>::set_uvs_for_face_subset(std::vector<unsigned int> *a1, unint64_t a2, const void *a3, std::vector<unsigned int>::size_type a4, const void *a5, const void *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9)
{
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(a1, a2);
  if (a2)
  {
    memmove(a1->__begin_, a3, 8 * a2);
  }

  std::vector<float>::resize(a1 + 1, a4);
  if (a4)
  {
    memmove(a1[1].__begin_, a5, 4 * a4);
  }

  v17 = 3 * a4;
  std::vector<float>::resize(a1 + 2, v17);
  if (4 * v17)
  {
    memmove(a1[2].__begin_, a6, 4 * v17);
  }

  a1[4].__begin_ = a7;
  a1[4].__end_ = a8;
  a1[4].__end_cap_.__value_ = a9;
}

void *geom_refine_triangle_mesh_opt_clear_uvs_3f(void *result)
{
  result[3] = result[2];
  result[6] = result[5];
  result[9] = result[8];
  result[15] = 0;
  result[16] = 0;
  result[14] = 0;
  return result;
}

void *geom_refine_triangle_mesh_opt_clear_uvs_3d(void *result)
{
  result[3] = result[2];
  result[6] = result[5];
  result[9] = result[8];
  result[15] = 0;
  result[16] = 0;
  result[14] = 0;
  return result;
}

uint64_t geom_refine_triangle_mesh_opt_get_uv_value_data_3f(uint64_t a1)
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

uint64_t geom_refine_triangle_mesh_opt_get_uv_value_data_3d(uint64_t a1)
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

uint64_t geom_refine_triangle_mesh_opt_get_triangles_with_uvs_data_3f(uint64_t a1)
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

uint64_t geom_refine_triangle_mesh_opt_get_triangles_with_uvs_data_3d(uint64_t a1)
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

uint64_t geom_refine_triangle_mesh_opt_get_triangle_uv_indices_data_3f(uint64_t a1)
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

uint64_t geom_refine_triangle_mesh_opt_get_triangle_uv_indices_data_3d(uint64_t a1)
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

void geom_refine_triangle_mesh_with_default_options_3f(uint64_t a1, _OWORD *a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  *v16 = 0u;
  *__p = 0u;
  *v14 = 0u;
  v15 = 0u;
  *v13 = 0u;
  v11 = geom::collection_to_vector<float>(a5);
  v12 = geom::collection_to_vector<float>(a6);
  geom::refine_triangle_mesh<float>(a1, a2, a3, a4, v11, v12, v13);
  if (__p[1])
  {
    *&v18 = __p[1];
    operator delete(__p[1]);
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }

  if (v14[1])
  {
    *&v15 = v14[1];
    operator delete(v14[1]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }
}

void geom_refine_triangle_mesh_with_default_options_3d(uint64_t a1, _OWORD *a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  *v16 = 0u;
  *__p = 0u;
  *v14 = 0u;
  v15 = 0u;
  *v13 = 0u;
  v11 = geom::collection_to_vector<float>(a5);
  v12 = geom::collection_to_vector<float>(a6);
  geom::refine_triangle_mesh<double>(a1, a2, a3, a4, v11, v12, v13);
  if (__p[1])
  {
    *&v18 = __p[1];
    operator delete(__p[1]);
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }

  if (v14[1])
  {
    *&v15 = v14[1];
    operator delete(v14[1]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }
}

void geom_refine_triangle_mesh_with_options_3f(uint64_t a1, _OWORD *a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = geom::collection_to_vector<float>(a5);
  v14 = geom::collection_to_vector<float>(a6);

  geom::refine_triangle_mesh<float>(a1, a2, a3, a4, v13, v14, (a7 + 16));
}

void geom_refine_triangle_mesh_with_options_3d(uint64_t a1, _OWORD *a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = geom::collection_to_vector<float>(a5);
  v14 = geom::collection_to_vector<float>(a6);

  geom::refine_triangle_mesh<double>(a1, a2, a3, a4, v13, v14, (a7 + 16));
}

uint64_t geom::refine_triangle_mesh_options<float>::~refine_triangle_mesh_options(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

float32x2_t *geom_quadratic_bezier_interpolate_points_2f(float32x2_t *result)
{
  v1 = result[1];
  v2 = vsub_f32(v1, *result);
  v3 = vsub_f32(result[2], v1);
  return result;
}

float64x2_t *geom_quadratic_bezier_interpolate_points_2d(float64x2_t *result)
{
  v1 = result[1];
  v2 = vsubq_f64(v1, *result);
  v3 = vsubq_f64(result[2], v1);
  return result;
}

float32x2_t geom_quadratic_bezier_from_derivative_of_cubic_bezier_2f(float32x2_t a1, float32x2_t a2)
{
  __asm { FMOV            V4.2S, #3.0 }

  return vmul_f32(vsub_f32(a2, a1), _D4);
}

double geom_quadratic_bezier_from_derivative_of_cubic_bezier_2d(float64x2_t a1, float64x2_t a2)
{
  __asm { FMOV            V4.2D, #3.0 }

  *&result = *&vmulq_f64(vsubq_f64(a2, a1), _Q4);
  return result;
}

float32x2_t geom_quadratic_bezier_subdivide_2f(uint64_t a1, uint64_t a2, float32x2_t a3, float32x2_t a4, float32x2_t a5, float a6)
{
  *a1 = *&a3;
  *(a2 + 16) = *&a5;
  *(a1 + 8) = vmla_n_f32(a3, vsub_f32(a4, a3), a6);
  v6 = vmla_n_f32(a4, vsub_f32(a5, a4), a6);
  *(a2 + 8) = v6;
  result = vmla_n_f32(*(a1 + 8), vsub_f32(v6, *(a1 + 8)), a6);
  *(a1 + 16) = result;
  *a2 = result;
  return result;
}

float64x2_t geom_quadratic_bezier_subdivide_2d(float64x2_t *a1, float64x2_t *a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, double a6)
{
  *a1 = a3;
  a2[2] = a5;
  a1[1] = vmlaq_n_f64(a3, vsubq_f64(a4, a3), a6);
  v6 = vmlaq_n_f64(a4, vsubq_f64(a5, a4), a6);
  a2[1] = v6;
  result = vmlaq_n_f64(a1[1], vsubq_f64(v6, a1[1]), a6);
  a1[2] = result;
  *a2 = result;
  return result;
}

double geom_quadratic_bezier_extract_2d(float64x2_t a1, float64x2_t a2, float64x2_t a3, double a4)
{
  v4 = vmlaq_n_f64(a1, vsubq_f64(a2, a1), a4);
  *&result = *&vmlaq_n_f64(v4, vsubq_f64(vmlaq_n_f64(a2, vsubq_f64(a3, a2), a4), v4), a4);
  return result;
}

float32x2_t geom_quadratic_bezier_convert_to_power_basis_2f(uint64_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4)
{
  v4 = vsub_f32(a3, a2);
  *a1 = *&a2;
  *(a1 + 8) = vadd_f32(v4, v4);
  result = vmla_f32(vadd_f32(a2, a4), 0xC0000000C0000000, a3);
  *(a1 + 16) = result;
  return result;
}

float64x2_t geom_quadratic_bezier_convert_to_power_basis_2d(float64x2_t *a1, float64x2_t a2, float64x2_t a3, float64x2_t a4)
{
  v4 = vsubq_f64(a3, a2);
  *a1 = a2;
  a1[1] = vaddq_f64(v4, v4);
  v5 = vaddq_f64(a2, a4);
  __asm { FMOV            V2.2D, #-2.0 }

  result = vmlaq_f64(v5, _Q2, a3);
  a1[2] = result;
  return result;
}

double geom_power_basis_convert_to_quadratic_bezier_2f(float32x2_t *a1)
{
  result = *a1;
  v2 = vadd_f32(vadd_f32(*a1, a1[1]), a1[2]);
  return result;
}

__n128 geom_power_basis_convert_to_quadratic_bezier_2d(float64x2_t *a1)
{
  result = *a1;
  __asm { FMOV            V4.2D, #0.5 }

  v7 = vaddq_f64(vaddq_f64(*a1, a1[1]), a1[2]);
  return result;
}

float32x2_t geom_quadratic_bezier_tangent_at_2f(float32x2_t a1, float32x2_t a2, double a3, float a4)
{
  v4 = vmla_n_f32(vmul_n_f32(vsub_f32(*&a3, a2), a4), vsub_f32(a2, a1), 1.0 - a4);
  *&a3 = sqrtf(vaddv_f32(vmul_f32(v4, v4)));
  result = 0;
  if (*&a3 > 0.0)
  {
    return vdiv_f32(v4, vdup_lane_s32(*&a3, 0));
  }

  return result;
}

double geom_quadratic_bezier_tangent_at_2d(float64x2_t a1, float64x2_t a2, float64x2_t a3, double a4)
{
  v4 = vmlaq_n_f64(vmulq_n_f64(vsubq_f64(a3, a2), a4), vsubq_f64(a2, a1), 1.0 - a4);
  v5 = sqrt(vaddvq_f64(vmulq_f64(v4, v4)));
  result = 0.0;
  if (v5 > 0.0)
  {
    *&result = *&vdivq_f64(v4, vdupq_lane_s64(*&v5, 0));
  }

  return result;
}

int32x2_t geom_quadratic_bezier_normal_at_2f(float32x2_t a1, float32x2_t a2, double a3, float a4)
{
  v4 = vmla_n_f32(vmul_n_f32(vsub_f32(*&a3, a2), a4), vsub_f32(a2, a1), 1.0 - a4);
  *&a3 = sqrtf(vaddv_f32(vmul_f32(v4, v4)));
  v5 = 0;
  if (*&a3 > 0.0)
  {
    v5 = vdiv_f32(v4, vdup_lane_s32(*&a3, 0));
  }

  v4.f32[0] = -*&v5.i32[1];
  return vzip1_s32(v4, v5);
}

float64_t geom_quadratic_bezier_normal_at_2d(float64x2_t a1, float64x2_t a2, float64x2_t a3, double a4)
{
  v4 = vmlaq_n_f64(vmulq_n_f64(vsubq_f64(a3, a2), a4), vsubq_f64(a2, a1), 1.0 - a4);
  v5 = sqrt(vaddvq_f64(vmulq_f64(v4, v4)));
  v6 = 0uLL;
  if (v5 > 0.0)
  {
    v6 = vdivq_f64(v4, vdupq_lane_s64(*&v5, 0));
  }

  v4.f64[0] = -*&v6.i64[1];
  *&v4.f64[0] = vzip1q_s64(v4, v6).u64[0];
  return v4.f64[0];
}

float geom_quadratic_bezier_curvature_at_2f(float32x2_t a1, float32x2_t a2, float32x2_t a3, float a4)
{
  v4 = vsub_f32(a2, a1);
  v5 = vadd_f32(v4, v4);
  v6 = vsub_f32(a3, a2);
  v7 = vadd_f32(v6, v6);
  v8 = vmla_n_f32(vmul_n_f32(v7, a4), v5, 1.0 - a4);
  v9 = vsub_f32(v7, v5);
  return (vmuls_lane_f32(-v9.f32[0], v8, 1) + (v8.f32[0] * v9.f32[1])) / powf(vaddv_f32(vmul_f32(v8, v8)), 1.5);
}

long double geom_quadratic_bezier_curvature_at_2d(float64x2_t a1, float64x2_t a2, float64x2_t a3, double a4)
{
  v4 = vsubq_f64(a2, a1);
  v5 = vaddq_f64(v4, v4);
  v6 = vsubq_f64(a3, a2);
  v7 = vaddq_f64(v6, v6);
  v8 = vmlaq_n_f64(vmulq_n_f64(v7, a4), v5, 1.0 - a4);
  v9 = vsubq_f64(v7, v5);
  return (vmuld_lane_f64(-v9.f64[0], v8, 1) + v8.f64[0] * v9.f64[1]) / pow(vaddvq_f64(vmulq_f64(v8, v8)), 1.5);
}

uint64_t geom_quadratic_bezier_find_roots_at_x_2f(uint64_t a1, double a2, double a3, float a4, float a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = *&a2 - a5;
  v6 = vsub_f32(*&a3, *&a2).f32[0];
  v7 = v6 + v6;
  v8 = a4 + (*&a2 + (*&a3 * -2.0));
  if (fabsf(v8) > 0.00001)
  {
    v9 = (v5 * (v8 * -4.0)) + (v7 * v7);
    if (v9 >= 0.0)
    {
      v10 = 1.0;
      if (v7 < 0.0)
      {
        v10 = -1.0;
      }

      v11 = (v7 + (v10 * sqrtf(v9))) * -0.5;
      v12 = v11 / v8;
      v13 = v5 / v11;
      v22 = v12;
      v23 = v13;
      if (v13 < v12)
      {
        v22 = v13;
        v23 = v12;
      }

      if (v9 <= 0.0)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      goto LABEL_12;
    }

LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

  if (fabsf(v7) <= 0.00001)
  {
    goto LABEL_20;
  }

  v22 = -v5 / v7;
  v14 = 1;
LABEL_12:
  v15 = 0;
  v16 = &v22;
  do
  {
    v17 = *v16;
    if (*v16 >= 0.0 && v17 <= 1.0)
    {
      v19 = v15++;
      *(a1 + 4 * v19) = v17;
    }

    ++v16;
    --v14;
  }

  while (v14);
LABEL_21:
  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t geom_quadratic_bezier_find_roots_at_x_2d(uint64_t a1, float64x2_t a2, float64x2_t a3, double a4, double a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2.f64[0] - a5;
  v6 = vsubq_f64(a3, a2).f64[0];
  v7 = v6 + v6;
  v8 = a4 + a2.f64[0] + a3.f64[0] * -2.0;
  if (fabs(v8) > 0.000001)
  {
    v9 = v5 * (v8 * -4.0) + v7 * v7;
    if (v9 >= 0.0)
    {
      v10 = 1.0;
      if (v7 < 0.0)
      {
        v10 = -1.0;
      }

      v11 = (v7 + v10 * sqrt(v9)) * -0.5;
      v12 = v11 / v8;
      v13 = v5 / v11;
      v22 = v12;
      v23 = v13;
      if (v13 < v12)
      {
        v22 = v13;
        v23 = v12;
      }

      if (v9 <= 0.0)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      goto LABEL_12;
    }

LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

  if (fabs(v7) <= 0.000001)
  {
    goto LABEL_20;
  }

  v22 = -v5 / v7;
  v14 = 1;
LABEL_12:
  v15 = 0;
  v16 = &v22;
  do
  {
    v17 = *v16;
    if (*v16 >= 0.0 && v17 <= 1.0)
    {
      v19 = v15++;
      *(a1 + 8 * v19) = v17;
    }

    ++v16;
    --v14;
  }

  while (v14);
LABEL_21:
  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t geom_quadratic_bezier_find_roots_at_y_2f(uint64_t a1, double a2, double _D1, double a4, float a5)
{
  v27 = *MEMORY[0x277D85DE8];
  *&a2 = *(&a2 + 1) - a5;
  v5 = (*(&_D1 + 1) - *(&a2 + 1)) + (*(&_D1 + 1) - *(&a2 + 1));
  _S5 = -2.0;
  __asm { FMLA            S4, S5, V1.S[1] }

  *&a4 = *(&a4 + 1) + _S4;
  if (fabsf(*(&a4 + 1) + _S4) > 0.00001)
  {
    v12 = (*&a2 * (*&a4 * -4.0)) + (v5 * v5);
    if (v12 >= 0.0)
    {
      v13 = 1.0;
      if (v5 < 0.0)
      {
        v13 = -1.0;
      }

      v14 = (v5 + (v13 * sqrtf(v12))) * -0.5;
      v15 = v14 / *&a4;
      v16 = *&a2 / v14;
      v25 = v15;
      v26 = v16;
      if (v16 < v15)
      {
        v25 = v16;
        v26 = v15;
      }

      if (v12 <= 0.0)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      goto LABEL_12;
    }

LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  if (fabsf(v5) <= 0.00001)
  {
    goto LABEL_20;
  }

  v25 = -*&a2 / v5;
  v17 = 1;
LABEL_12:
  v18 = 0;
  v19 = &v25;
  do
  {
    v20 = *v19;
    if (*v19 >= 0.0 && v20 <= 1.0)
    {
      v22 = v18++;
      *(a1 + 4 * v22) = v20;
    }

    ++v19;
    --v17;
  }

  while (v17);
LABEL_21:
  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t geom_quadratic_bezier_find_roots_at_y_2d(uint64_t a1, __n128 a2, __n128 _Q1, __n128 a4, double a5)
{
  v27 = *MEMORY[0x277D85DE8];
  a2.n128_f64[0] = a2.n128_f64[1] - a5;
  v5 = _Q1.n128_f64[1] - a2.n128_f64[1] + _Q1.n128_f64[1] - a2.n128_f64[1];
  _D5 = -2.0;
  __asm { FMLA            D4, D5, V1.D[1] }

  a4.n128_f64[0] = a4.n128_f64[1] + _D4;
  if (fabs(a4.n128_f64[1] + _D4) > 0.000001)
  {
    v12 = a2.n128_f64[0] * (a4.n128_f64[0] * -4.0) + v5 * v5;
    if (v12 >= 0.0)
    {
      v13 = 1.0;
      if (v5 < 0.0)
      {
        v13 = -1.0;
      }

      v14 = (v5 + v13 * sqrt(v12)) * -0.5;
      v15 = v14 / a4.n128_f64[0];
      v16 = a2.n128_f64[0] / v14;
      v25 = v15;
      v26 = v16;
      if (v16 < v15)
      {
        v25 = v16;
        v26 = v15;
      }

      if (v12 <= 0.0)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      goto LABEL_12;
    }

LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  if (fabs(v5) <= 0.000001)
  {
    goto LABEL_20;
  }

  v25 = -a2.n128_f64[0] / v5;
  v17 = 1;
LABEL_12:
  v18 = 0;
  v19 = &v25;
  do
  {
    v20 = *v19;
    if (*v19 >= 0.0 && v20 <= 1.0)
    {
      v22 = v18++;
      *(a1 + 8 * v22) = v20;
    }

    ++v19;
    --v17;
  }

  while (v17);
LABEL_21:
  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

float geom_quadratic_bezier_arc_length_2f(float32x2_t a1, float32x2_t a2, float32x2_t a3)
{
  v3 = 0;
  v4 = vsub_f32(a2, a1);
  v5 = vadd_f32(v4, v4);
  v6 = vsub_f32(a3, a2);
  v7 = vsub_f32(vadd_f32(v6, v6), v5);
  do
  {
    v9 = vmla_n_f32(v5, v7, (*&_D4 * 0.5) + 0.5);
    _S5 = sqrtf(vaddv_f32(vmul_f32(v9, v9)));
    __asm { FMLA            S1, S5, V4.S[1] }

    ++v3;
  }

  while (v3 != 16);
  return _S1 * 0.5;
}

double geom_quadratic_bezier_arc_length_2d(float64x2_t a1, float64x2_t a2, float64x2_t a3)
{
  v3 = 0;
  v4 = vsubq_f64(a2, a1);
  v5 = vaddq_f64(v4, v4);
  v6 = vsubq_f64(a3, a2);
  v7 = vsubq_f64(vaddq_f64(v6, v6), v5);
  do
  {
    v9 = vmlaq_n_f64(v5, v7, *&_Q4 * 0.5 + 0.5);
    _D5 = sqrt(vaddvq_f64(vmulq_f64(v9, v9)));
    __asm { FMLA            D1, D5, V4.D[1] }

    ++v3;
  }

  while (v3 != 16);
  return _D1 * 0.5;
}

float geom_quadratic_bezier_arc_length_in_range_2f(float32x2_t a1, float32x2_t a2, float32x2_t a3, float a4, float a5)
{
  v5 = 0;
  v6 = (a4 + a5) * 0.5;
  v7 = (a5 - a4) * 0.5;
  v8 = vsub_f32(a2, a1);
  v9 = vadd_f32(v8, v8);
  v10 = vsub_f32(a3, a2);
  v11 = vsub_f32(vadd_f32(v10, v10), v9);
  do
  {
    v13 = vmla_n_f32(v9, v11, v6 + (v7 * *&_D4));
    _S6 = sqrtf(vaddv_f32(vmul_f32(v13, v13)));
    __asm { FMLA            S1, S6, V4.S[1] }

    ++v5;
  }

  while (v5 != 16);
  return v7 * _S1;
}

double geom_quadratic_bezier_arc_length_in_range_2d(float64x2_t a1, float64x2_t a2, float64x2_t a3, double a4, double a5)
{
  v5 = 0;
  v6 = (a4 + a5) * 0.5;
  v7 = (a5 - a4) * 0.5;
  v8 = vsubq_f64(a2, a1);
  v9 = vaddq_f64(v8, v8);
  v10 = vsubq_f64(a3, a2);
  v11 = vsubq_f64(vaddq_f64(v10, v10), v9);
  do
  {
    v13 = vmlaq_n_f64(v9, v11, v6 + v7 * *&_Q4);
    _D6 = sqrt(vaddvq_f64(vmulq_f64(v13, v13)));
    __asm { FMLA            D1, D6, V4.D[1] }

    ++v5;
  }

  while (v5 != 16);
  return v7 * _D1;
}

float32x2_t geom_cubic_bezier_interpolate_points_2f(float32x2_t *a1)
{
  result = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = vsub_f32(v4, *a1);
  v8 = vmul_f32(v7, v7);
  v9 = vsub_f32(v5, v4);
  v10 = vmul_f32(v9, v9);
  v11 = vsqrt_f32(vadd_f32(vzip1_s32(v8, v10), vzip2_s32(v8, v10)));
  *v12.i8 = vadd_f32(v11, vdup_lane_s32(v11, 1));
  if ((vmvn_s8(vceq_f32(*v12.i8, v11)).u8[0] & 1) != 0 && vmul_f32(v11, *v12.i8).f32[0] > 0.0)
  {
    v37 = v1;
    v38 = v2;
    v33 = result;
    v34 = v4;
    v13 = 0;
    v31 = v5;
    v32 = v6;
    v14 = vsub_f32(v6, v5);
    v14.f32[0] = *v12.i32 + sqrtf(vaddv_f32(vmul_f32(v14, v14)));
    *&v15 = v11.f32[0] / v14.f32[0];
    *&v16 = *v12.i32 / v14.f32[0];
    __asm { FMOV            V2.4S, #1.0 }

    v22 = _Q2;
    v22.i32[1] = v15;
    *&v12.i32[2] = *&v15 * *&v15;
    *&v12.i32[3] = *&v15 * (*&v15 * *&v15);
    v23 = vzip1q_s32(v22, _Q2);
    v24 = vzip2q_s32(v12, _Q2);
    _Q2.i32[1] = v16;
    v25 = vzip1q_s32(xmmword_2500C1620, _Q2);
    v26.i32[0] = 0;
    v26.i32[2] = 0;
    *&v26.i32[1] = *&v16 * *&v16;
    *&v26.i32[3] = *&v16 * (*&v16 * *&v16);
    v27 = vzip1q_s32(v25, v23);
    v28 = vzip2q_s32(v25, v23);
    v29 = vzip1q_s32(v26, v24);
    v35[0] = xmmword_2500CA7A0;
    v35[1] = xmmword_2500CA7B0;
    v30 = vzip2q_s32(v26, v24);
    v35[2] = xmmword_2500CA7C0;
    v35[3] = xmmword_2500CA7D0;
    do
    {
      v36.columns[v13] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(v35[v13])), v28, *&v35[v13], 1), v29, v35[v13], 2), v30, v35[v13], 3);
      ++v13;
    }

    while (v13 != 4);
    v39 = __invert_f4(v36);
    return vzip1_s32(*&vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v39.columns[0], v33.f32[0]), v39.columns[1], v34.f32[0]), v39.columns[2], v31.f32[0]), v39.columns[3], v32.f32[0]), *&vmlaq_lane_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v39.columns[0], v33, 1), v39.columns[1], v34, 1), v39.columns[2], v31, 1), v39.columns[3], v32, 1));
  }

  return result;
}

float64_t geom_cubic_bezier_interpolate_points_2d(float64x2_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = vsubq_f64(v4, *a1);
  v8 = vmulq_f64(v7, v7);
  v9 = vsubq_f64(v5, v4);
  v10 = vsqrtq_f64(vpaddq_f64(v8, vmulq_f64(v9, v9)));
  v11 = vaddq_f64(v10, vdupq_laneq_s64(v10, 1));
  if ((vmovn_s64(vmvnq_s8(vceqq_f64(v11, v10))).u8[0] & 1) != 0 && vmulq_f64(v10, v11).f64[0] > 0.0)
  {
    v52 = v1;
    v53 = v2;
    v31 = v3;
    v32 = v4;
    v12 = 0;
    v33 = v5;
    v34 = v6;
    v13 = vsubq_f64(v6, v5);
    v13.f64[0] = v11.f64[0] + sqrt(vaddvq_f64(vmulq_f64(v13, v13)));
    v14 = v10.f64[0] / v13.f64[0];
    v15 = v11.f64[0] / v13.f64[0];
    v16.f64[0] = 0.0;
    v16.f64[1] = v14;
    v17.f64[0] = 0.0;
    v17.f64[1] = v14 * v14;
    v18.f64[0] = 0.0;
    v18.f64[1] = v14 * (v14 * v14);
    __asm { FMOV            V3.2D, #1.0 }

    v23.f64[1] = _Q3.f64[1];
    v23.f64[0] = v15;
    v24.f64[1] = _Q3.f64[1];
    v24.f64[0] = v15 * v15;
    _Q3.f64[0] = v15 * (v15 * v15);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v44 = xmmword_2500CA7F0;
    v45 = xmmword_2500CA7E0;
    v46 = xmmword_2500CA810;
    v47 = xmmword_2500CA800;
    v48 = 0u;
    v49 = xmmword_2500CA820;
    v50 = 0u;
    v51 = xmmword_2500C1660;
    do
    {
      v27 = *(&v44 + v12 * 16);
      v26 = *(&v44 + v12 * 16 + 16);
      v28 = vdupq_lane_s64(*&v27.f64[0], 0);
      v29 = &v35[v12];
      *v29 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(v28, v16, v27, 1), v17, v26.f64[0]), v18, v26, 1);
      v29[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(v28, v23, v27, 1), v24, v26.f64[0]), _Q3, v26, 1);
      v12 += 2;
    }

    while (v12 != 8);
    v48 = v35[4];
    v49 = v35[5];
    v50 = v35[6];
    v51 = v35[7];
    v44 = v35[0];
    v45 = v35[1];
    v46 = v35[2];
    v47 = v35[3];
    __invert_d4();
    *&v3.f64[0] = vzip1q_s64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v36, v31.f64[0]), v38, v32.f64[0]), v40, v33.f64[0]), v42, v34.f64[0]), vmlaq_laneq_f64(vmlaq_laneq_f64(vmlaq_laneq_f64(vmulq_laneq_f64(v36, v31, 1), v38, v32, 1), v40, v33, 1), v42, v34, 1)).u64[0];
  }

  return v3.f64[0];
}

double geom_cubic_bezier_interpolate_points_and_derivatives_2f(float32x2_t *a1, float32x2_t *a2)
{
  result = *a1;
  __asm { FMOV            V4.2S, #-3.0 }

  v8 = vmla_f32(*a2, _D4, *a1);
  __asm { FMOV            V4.2S, #3.0 }

  v10 = vdiv_f32(vmla_f32(vneg_f32(a2[1]), _D4, a1[1]), _D4);
  return result;
}

__n128 geom_cubic_bezier_interpolate_points_and_derivatives_2d(float64x2_t *a1, float64x2_t *a2)
{
  result = *a1;
  __asm { FMOV            V4.2D, #-3.0 }

  v8 = vmlaq_f64(*a2, _Q4, *a1);
  __asm { FMOV            V4.2D, #3.0 }

  v10 = vdivq_f64(vmlaq_f64(vnegq_f64(a2[1]), _Q4, a1[1]), _Q4);
  return result;
}

float32x2_t geom_cubic_bezier_subdivide_2f(uint64_t a1, uint64_t a2, float32x2_t a3, float32x2_t a4, float32x2_t a5, float32x2_t a6, float a7)
{
  *a1 = *&a3;
  *(a2 + 24) = *&a6;
  *(a1 + 8) = vmla_n_f32(a3, vsub_f32(a4, a3), a7);
  *(a2 + 16) = vmla_n_f32(a5, vsub_f32(a6, a5), a7);
  v7 = vmla_n_f32(a4, vsub_f32(a5, a4), a7);
  *(a1 + 16) = vmla_n_f32(*(a1 + 8), vsub_f32(v7, *(a1 + 8)), a7);
  v8 = vmla_n_f32(v7, vsub_f32(*(a2 + 16), v7), a7);
  *(a2 + 8) = v8;
  result = vmla_n_f32(*(a1 + 16), vsub_f32(v8, *(a1 + 16)), a7);
  *(a1 + 24) = result;
  *a2 = result;
  return result;
}

float64x2_t geom_cubic_bezier_subdivide_2d(float64x2_t *a1, float64x2_t *a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, float64x2_t a6, double a7)
{
  *a1 = a3;
  a2[3] = a6;
  a1[1] = vmlaq_n_f64(a3, vsubq_f64(a4, a3), a7);
  a2[2] = vmlaq_n_f64(a5, vsubq_f64(a6, a5), a7);
  v7 = vmlaq_n_f64(a4, vsubq_f64(a5, a4), a7);
  a1[2] = vmlaq_n_f64(a1[1], vsubq_f64(v7, a1[1]), a7);
  v8 = vmlaq_n_f64(v7, vsubq_f64(a2[2], v7), a7);
  a2[1] = v8;
  result = vmlaq_n_f64(a1[2], vsubq_f64(v8, a1[2]), a7);
  a1[3] = result;
  *a2 = result;
  return result;
}

float32x2_t geom_cubic_bezier_extract_2f(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float a5)
{
  v5 = vmla_n_f32(a1, vsub_f32(a2, a1), a5);
  v6 = vmla_n_f32(a2, vsub_f32(a3, a2), a5);
  v7 = vmla_n_f32(v5, vsub_f32(v6, v5), a5);
  return vmla_n_f32(v7, vsub_f32(vmla_n_f32(v6, vsub_f32(vmla_n_f32(a3, vsub_f32(a4, a3), a5), v6), a5), v7), a5);
}

double geom_cubic_bezier_extract_2d(float64x2_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4, double a5)
{
  v5 = vmlaq_n_f64(a1, vsubq_f64(a2, a1), a5);
  v6 = vmlaq_n_f64(a2, vsubq_f64(a3, a2), a5);
  v7 = vmlaq_n_f64(v5, vsubq_f64(v6, v5), a5);
  *&result = *&vmlaq_n_f64(v7, vsubq_f64(vmlaq_n_f64(v6, vsubq_f64(vmlaq_n_f64(a3, vsubq_f64(a4, a3), a5), v6), a5), v7), a5);
  return result;
}

double geom_cubic_bezier_demote_to_quadratic_bezier_2f(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4)
{
  v4 = COERCE_DOUBLE(vmla_f32(vmla_f32(vmul_f32(vsub_f32(a2, a3), vdup_n_s32(0x3E19999Au)), vdup_n_s32(0x3F733333u), a1), vdup_n_s32(0x3D4CCCCDu), a4));
  __asm
  {
    FMOV            V1.2S, #-0.25
    FMOV            V0.2S, #0.75
  }

  return v4;
}

double geom_cubic_bezier_demote_to_quadratic_bezier_2d(float64x2_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4)
{
  *&v4 = *&vmlaq_f64(vmlaq_f64(vmulq_f64(vsubq_f64(a2, a3), vdupq_n_s64(0x3FC3333333333333uLL)), vdupq_n_s64(0x3FEE666666666666uLL), a1), vdupq_n_s64(0x3FA999999999999AuLL), a4);
  __asm
  {
    FMOV            V1.2D, #-0.25
    FMOV            V0.2D, #0.75
  }

  return v4;
}

float32x2_t geom_cubic_bezier_convert_to_power_basis_2f(uint64_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float32x2_t a5)
{
  __asm { FMOV            V5.2S, #3.0 }

  *a1 = *&a2;
  *(a1 + 8) = vmul_f32(vsub_f32(a3, a2), _D5);
  v10 = vsub_f32(a5, a2);
  result = vmul_f32(vadd_f32(a4, vmla_f32(a2, 0xC0000000C0000000, a3)), _D5);
  *(a1 + 16) = result;
  *(a1 + 24) = vmla_f32(v10, _D5, vsub_f32(a3, a4));
  return result;
}

float64x2_t geom_cubic_bezier_convert_to_power_basis_2d(float64x2_t *a1, float64x2_t a2, float64x2_t a3, float64x2_t a4, float64x2_t a5)
{
  __asm { FMOV            V5.2D, #3.0 }

  *a1 = a2;
  a1[1] = vmulq_f64(vsubq_f64(a3, a2), _Q5);
  __asm { FMOV            V4.2D, #-2.0 }

  v11 = vsubq_f64(a5, a2);
  result = vmulq_f64(vaddq_f64(a4, vmlaq_f64(a2, _Q4, a3)), _Q5);
  a1[2] = result;
  a1[3] = vmlaq_f64(v11, _Q5, vsubq_f64(a3, a4));
  return result;
}

double geom_power_basis_convert_to_cubic_bezier_2f(float32x2_t *a1)
{
  result = *a1;
  __asm { FMOV            V5.2S, #3.0 }

  v7 = vadd_f32(vadd_f32(vadd_f32(*a1, a1[1]), a1[2]), a1[3]);
  return result;
}

__n128 geom_power_basis_convert_to_cubic_bezier_2d(float64x2_t *a1)
{
  result = *a1;
  __asm
  {
    FMOV            V5.2D, #3.0
    FMOV            V6.2D, #2.0
  }

  v8 = vaddq_f64(vaddq_f64(vaddq_f64(*a1, a1[1]), a1[2]), a1[3]);
  return result;
}

float32x2_t geom_cubic_bezier_tangent_at_2f(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float a5)
{
  v5 = vmla_n_f32(vmul_n_f32(vsub_f32(a3, a2), ((1.0 - a5) * 6.0) * a5), vsub_f32(a2, a1), (1.0 - a5) * ((1.0 - a5) * 3.0));
  v7 = vsub_f32(a4, a3);
  v6 = vmla_n_f32(v5, v7, (a5 * 3.0) * a5);
  v7.f32[0] = sqrtf(vaddv_f32(vmul_f32(v6, v6)));
  result = 0;
  if (v7.f32[0] > 0.0)
  {
    return vdiv_f32(v6, vdup_lane_s32(v7, 0));
  }

  return result;
}

double geom_cubic_bezier_tangent_at_2d(float64x2_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4, double a5)
{
  v5 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vsubq_f64(a3, a2), (1.0 - a5) * 6.0 * a5), vsubq_f64(a2, a1), (1.0 - a5) * ((1.0 - a5) * 3.0)), vsubq_f64(a4, a3), a5 * 3.0 * a5);
  v6 = sqrt(vaddvq_f64(vmulq_f64(v5, v5)));
  result = 0.0;
  if (v6 > 0.0)
  {
    *&result = *&vdivq_f64(v5, vdupq_lane_s64(*&v6, 0));
  }

  return result;
}

int32x2_t geom_cubic_bezier_normal_at_2f(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float a5)
{
  v5 = vmla_n_f32(vmul_n_f32(vsub_f32(a3, a2), ((1.0 - a5) * 6.0) * a5), vsub_f32(a2, a1), (1.0 - a5) * ((1.0 - a5) * 3.0));
  v7 = vsub_f32(a4, a3);
  v6 = vmla_n_f32(v5, v7, (a5 * 3.0) * a5);
  v7.f32[0] = sqrtf(vaddv_f32(vmul_f32(v6, v6)));
  v8 = 0;
  if (v7.f32[0] > 0.0)
  {
    v8 = vdiv_f32(v6, vdup_lane_s32(v7, 0));
  }

  v6.f32[0] = -*&v8.i32[1];
  return vzip1_s32(v6, v8);
}

float64_t geom_cubic_bezier_normal_at_2d(float64x2_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4, double a5)
{
  v5 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vsubq_f64(a3, a2), (1.0 - a5) * 6.0 * a5), vsubq_f64(a2, a1), (1.0 - a5) * ((1.0 - a5) * 3.0)), vsubq_f64(a4, a3), a5 * 3.0 * a5);
  v6 = sqrt(vaddvq_f64(vmulq_f64(v5, v5)));
  v7 = 0uLL;
  if (v6 > 0.0)
  {
    v7 = vdivq_f64(v5, vdupq_lane_s64(*&v6, 0));
  }

  v5.f64[0] = -*&v7.i64[1];
  *&v5.f64[0] = vzip1q_s64(v5, v7).u64[0];
  return v5.f64[0];
}

float geom_cubic_bezier_curvature_at_2f(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float a5)
{
  v5 = vsub_f32(a2, a1);
  v6 = vsub_f32(a3, a2);
  v7 = vsub_f32(a4, a3);
  v8 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v6, ((1.0 - a5) * 6.0) * a5), v5, (1.0 - a5) * ((1.0 - a5) * 3.0)), v7, (a5 * 3.0) * a5);
  v9 = vmla_n_f32(vmul_n_f32(vsub_f32(v7, v6), a5), vsub_f32(v6, v5), 1.0 - a5);
  __asm { FMOV            V0.2S, #6.0 }

  v15 = vmul_f32(v9, _D0);
  return (vmuls_lane_f32(-v15.f32[0], v8, 1) + (v8.f32[0] * v15.f32[1])) / powf(vaddv_f32(vmul_f32(v8, v8)), 1.5);
}

long double geom_cubic_bezier_curvature_at_2d(float64x2_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4, double a5)
{
  v5 = vsubq_f64(a2, a1);
  v6 = vsubq_f64(a3, a2);
  v7 = vsubq_f64(a4, a3);
  v8 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v6, (1.0 - a5) * 6.0 * a5), v5, (1.0 - a5) * ((1.0 - a5) * 3.0)), v7, a5 * 3.0 * a5);
  v9 = vmlaq_n_f64(vmulq_n_f64(vsubq_f64(v7, v6), a5), vsubq_f64(v6, v5), 1.0 - a5);
  __asm { FMOV            V0.2D, #6.0 }

  v15 = vmulq_f64(v9, _Q0);
  return (vmuld_lane_f64(-v15.f64[0], v8, 1) + v8.f64[0] * v15.f64[1]) / pow(vaddvq_f64(vmulq_f64(v8, v8)), 1.5);
}

uint64_t geom_cubic_bezier_find_roots_at_x_2f(uint64_t a1, double a2, double a3, double a4, float32x2_t a5, float a6)
{
  v25 = *MEMORY[0x277D85DE8];
  v21 = *&a2 - a6;
  v7.i32[0] = vsub_f32(*&a3, *&a2).u32[0];
  v7.f32[1] = *&a4 + (*&a2 + (*&a3 * -2.0));
  __asm { FMOV            V5.2S, #3.0 }

  v22 = vmul_f32(v7, _D5);
  v23 = vsub_f32(a5, *&a2).f32[0] + (vsub_f32(*&a3, *&a4).f32[0] * 3.0);
  v13 = geom::cubic_roots<float>(&v21, v24);
  v14 = 0;
  if (v13)
  {
    v15 = v13;
    v16 = v24;
    do
    {
      v17 = *v16;
      if (*v16 >= 0.0 && v17 <= 1.0)
      {
        *(a1 + 4 * v14++) = v17;
      }

      ++v16;
      --v15;
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t geom_cubic_bezier_find_roots_at_x_2d(uint64_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, double a6)
{
  v24[3] = *MEMORY[0x277D85DE8];
  v21 = a2.f64[0] - a6;
  *&v7.f64[0] = *&vsubq_f64(a3, a2);
  v7.f64[1] = a4.f64[0] + a2.f64[0] + a3.f64[0] * -2.0;
  __asm { FMOV            V5.2D, #3.0 }

  v22 = vmulq_f64(v7, _Q5);
  v23 = vsubq_f64(a5, a2).f64[0] + vsubq_f64(a3, a4).f64[0] * 3.0;
  v13 = geom::cubic_roots<double>(&v21, v24);
  v14 = 0;
  if (v13)
  {
    v15 = v13;
    v16 = v24;
    do
    {
      v17 = *v16;
      if (*v16 >= 0.0 && v17 <= 1.0)
      {
        *(a1 + 8 * v14++) = v17;
      }

      ++v16;
      --v15;
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t geom_cubic_bezier_find_roots_at_y_2f(uint64_t a1, float32x2_t a2, double _D1, double a4, float32x2_t a5, float a6)
{
  v27 = *MEMORY[0x277D85DE8];
  v23 = a2.f32[1] - a6;
  v7.f32[0] = *(&_D1 + 1) - a2.f32[1];
  _S7 = -2.0;
  __asm { FMLA            S5, S7, V1.S[1] }

  LODWORD(_D1) = HIDWORD(a4);
  v7.f32[1] = *(&a4 + 1) + _S5;
  __asm { FMOV            V2.2S, #3.0 }

  v24 = vmul_f32(v7, _D2);
  v25 = COERCE_FLOAT(vsub_f32(a5, a2).i32[1]) + ((*(&_D1 + 1) - *&_D1) * 3.0);
  v15 = geom::cubic_roots<float>(&v23, v26);
  v16 = 0;
  if (v15)
  {
    v17 = v15;
    v18 = v26;
    do
    {
      v19 = *v18;
      if (*v18 >= 0.0 && v19 <= 1.0)
      {
        *(a1 + 4 * v16++) = v19;
      }

      ++v18;
      --v17;
    }

    while (v17);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t geom_cubic_bezier_find_roots_at_y_2d(uint64_t a1, float64x2_t a2, __n128 _Q1, __n128 a4, float64x2_t a5, double a6)
{
  v26[3] = *MEMORY[0x277D85DE8];
  v23 = a2.f64[1] - a6;
  v7.f64[0] = _Q1.n128_f64[1] - a2.f64[1];
  _D7 = -2.0;
  __asm { FMLA            D5, D7, V1.D[1] }

  _Q1.n128_u64[0] = a4.n128_u64[1];
  v7.f64[1] = a4.n128_f64[1] + _D5;
  __asm { FMOV            V2.2D, #3.0 }

  v24 = vmulq_f64(v7, _Q2);
  v25 = COERCE_DOUBLE(*&vsubq_f64(a5, a2).f64[1]) + (_Q1.n128_f64[1] - _Q1.n128_f64[0]) * 3.0;
  v15 = geom::cubic_roots<double>(&v23, v26);
  v16 = 0;
  if (v15)
  {
    v17 = v15;
    v18 = v26;
    do
    {
      v19 = *v18;
      if (*v18 >= 0.0 && v19 <= 1.0)
      {
        *(a1 + 8 * v16++) = v19;
      }

      ++v18;
      --v17;
    }

    while (v17);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

float geom_cubic_bezier_arc_length_2f(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4)
{
  v4 = 0;
  v5 = vsub_f32(a2, a1);
  v6 = vsub_f32(a3, a2);
  v7 = vsub_f32(a4, a3);
  __asm { FMOV            V6.2S, #3.0 }

  do
  {
    v14 = (*&_D7 * 0.5) + 0.5;
    _D16 = vmul_f32(vmla_n_f32(vmul_n_f32(vmla_n_f32(vmul_n_f32(v7, v14), v6, (1.0 - v14) + (1.0 - v14)), v14), v5, (1.0 - v14) * (1.0 - v14)), _D6);
    _D16.f32[0] = sqrtf(vaddv_f32(vmul_f32(_D16, _D16)));
    __asm { FMLA            S1, S16, V7.S[1] }

    ++v4;
  }

  while (v4 != 24);
  return _S1 * 0.5;
}

double geom_cubic_bezier_arc_length_2d(float64x2_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4)
{
  v4 = 0;
  v5 = vsubq_f64(a2, a1);
  v6 = vsubq_f64(a3, a2);
  v7 = vsubq_f64(a4, a3);
  __asm { FMOV            V6.2D, #3.0 }

  do
  {
    v14 = *&_Q7 * 0.5 + 0.5;
    _Q16 = vmulq_f64(vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(v7, v14), v6, 1.0 - v14 + 1.0 - v14), v14), v5, (1.0 - v14) * (1.0 - v14)), _Q6);
    _Q16.f64[0] = sqrt(vaddvq_f64(vmulq_f64(_Q16, _Q16)));
    __asm { FMLA            D1, D16, V7.D[1] }

    ++v4;
  }

  while (v4 != 24);
  return _D1 * 0.5;
}

float geom_cubic_bezier_arc_length_in_range_2f(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float a5, float a6)
{
  v6 = 0;
  v7 = (a5 + a6) * 0.5;
  v8 = (a6 - a5) * 0.5;
  v9 = vsub_f32(a2, a1);
  v10 = vsub_f32(a3, a2);
  v11 = vsub_f32(a4, a3);
  __asm { FMOV            V7.2S, #3.0 }

  do
  {
    v18 = v7 + (v8 * *&_D16);
    _D17 = vmul_f32(vmla_n_f32(vmul_n_f32(vmla_n_f32(vmul_n_f32(v11, v18), v10, (1.0 - v18) + (1.0 - v18)), v18), v9, (1.0 - v18) * (1.0 - v18)), _D7);
    _D17.f32[0] = sqrtf(vaddv_f32(vmul_f32(_D17, _D17)));
    __asm { FMLA            S2, S17, V16.S[1] }

    ++v6;
  }

  while (v6 != 24);
  return v8 * _S2;
}

double geom_cubic_bezier_arc_length_in_range_2d(float64x2_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4, double a5, double a6)
{
  v6 = 0;
  v7 = (a5 + a6) * 0.5;
  v8 = (a6 - a5) * 0.5;
  v9 = vsubq_f64(a2, a1);
  v10 = vsubq_f64(a3, a2);
  v11 = vsubq_f64(a4, a3);
  __asm { FMOV            V7.2D, #3.0 }

  do
  {
    v18 = v7 + v8 * *&_Q16;
    _Q17 = vmulq_f64(vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(v11, v18), v10, 1.0 - v18 + 1.0 - v18), v18), v9, (1.0 - v18) * (1.0 - v18)), _Q7);
    _Q17.f64[0] = sqrt(vaddvq_f64(vmulq_f64(_Q17, _Q17)));
    __asm { FMLA            D2, D17, V16.D[1] }

    ++v6;
  }

  while (v6 != 24);
  return v8 * _D2;
}

uint64_t geom_quadratic_bezier_find_monotonic_intervals_2f(_DWORD *a1, float32x2_t a2, float32x2_t a3, float32x2_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = vsub_f32(a3, a2);
  v6 = vadd_f32(v5, v5);
  v7 = vadd_f32(a4, vmla_f32(a2, 0xC0000000C0000000, a3));
  v8 = vadd_f32(v7, v7);
  v9 = -v6.f32[0] / v8.f32[0];
  v10 = 1;
  if (fabsf(v8.f32[0]) > 0.00001 && v9 != 0.0)
  {
    v11 = fabsf(v9);
    if (v11 == INFINITY)
    {
      v10 = 1;
      if (v9 < 1.0 && v9 > 0.0 && v9 != 1.0)
      {
LABEL_17:
        v10 = 0;
        v25 = -v6.f32[0] / v8.f32[0];
      }
    }

    else
    {
      v13 = v11 + 1.0;
      v14 = v9 == 1.0 || (v13 * 0.00001) > v9;
      if (!v14 && (((v13 + 1.0) * -0.00001) + 1.0) >= v9)
      {
        goto LABEL_17;
      }

      v10 = 1;
    }
  }

  if (fabsf(v8.f32[1]) > 0.00001)
  {
    v15 = -v6.f32[1] / v8.f32[1];
    if (v15 != 0.0)
    {
      v16 = fabsf(v15);
      if (v16 == INFINITY)
      {
        if (v15 < 1.0 && v15 > 0.0 && v15 != 1.0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v18 = v15 == 1.0 || ((v16 + 1.0) * 0.00001) > v15;
        if (!v18 && ((((v16 + 1.0) + 1.0) * -0.00001) + 1.0) >= v15)
        {
LABEL_36:
          if (v10)
          {
            v25 = -v6.f32[1] / v8.f32[1];
LABEL_39:
            v21 = 1;
LABEL_40:
            *a1 = 0;
            goto LABEL_41;
          }

          if (v15 == v9)
          {
            goto LABEL_39;
          }

          if (v16 == INFINITY || (v23 = fabsf(v9), v23 == INFINITY))
          {
            if (v15 >= v9)
            {
              if (v15 <= v9)
              {
                goto LABEL_39;
              }

              goto LABEL_50;
            }
          }

          else
          {
            v24 = ((v16 + v23) + 1.0) * 0.00001;
            if ((v9 - v24) < v15)
            {
              if ((v9 + v24) > v15)
              {
                goto LABEL_39;
              }

LABEL_50:
              v26 = -v6.f32[1] / v8.f32[1];
LABEL_52:
              v21 = 2;
              goto LABEL_40;
            }
          }

          v25 = -v6.f32[1] / v8.f32[1];
          v26 = v9;
          goto LABEL_52;
        }
      }
    }
  }

  *a1 = 0;
  if ((v10 & 1) == 0)
  {
    v21 = 1;
LABEL_41:
    v19 = v21;
    memcpy(a1 + 1, &v25, 4 * v21);
    result = v21 + 2;
    goto LABEL_42;
  }

  v19 = 0;
  result = 2;
LABEL_42:
  a1[v19 + 1] = 1065353216;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom_quadratic_bezier_find_monotonic_intervals_2d(void *a1, float64x2_t a2, float64x2_t a3, float64x2_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = vsubq_f64(a3, a2);
  v6 = vaddq_f64(v5, v5);
  __asm { FMOV            V4.2D, #-2.0 }

  v10 = vaddq_f64(a4, vmlaq_f64(a2, _Q4, a3));
  v11 = vaddq_f64(v10, v10);
  v12 = -v6.f64[0] / v11.f64[0];
  v13 = 1;
  if (fabs(v11.f64[0]) > 0.000001 && v12 != 0.0 && v12 >= 0.000001 && v12 != 1.0 && v12 <= 0.999999)
  {
    v13 = 0;
    __src = -v6.f64[0] / v11.f64[0];
  }

  if (fabs(v11.f64[1]) > 0.000001)
  {
    v14 = -v6.f64[1] / v11.f64[1];
    if (v14 != 0.0)
    {
      _ZF = v14 < 0.000001 || v14 == 1.0;
      if (!_ZF && v14 <= 0.999999)
      {
        if (v13)
        {
          __src = -v6.f64[1] / v11.f64[1];
LABEL_16:
          v16 = 1;
LABEL_31:
          *a1 = 0;
          goto LABEL_32;
        }

        if (v14 == v12 || v12 + -0.000001 < v14)
        {
          if (v14 == v12 || v12 + 0.000001 > v14)
          {
            goto LABEL_16;
          }

          v23 = -v6.f64[1] / v11.f64[1];
        }

        else
        {
          __src = -v6.f64[1] / v11.f64[1];
          v23 = v12;
        }

        v16 = 2;
        goto LABEL_31;
      }
    }
  }

  *a1 = 0;
  if ((v13 & 1) == 0)
  {
    v16 = 1;
LABEL_32:
    v17 = v16;
    memcpy(a1 + 1, &__src, 8 * v16);
    result = v16 + 2;
    goto LABEL_33;
  }

  v17 = 0;
  result = 2;
LABEL_33:
  a1[v17 + 1] = 0x3FF0000000000000;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom_cubic_bezier_find_monotonic_intervals_2f(_DWORD *a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float32x2_t a5)
{
  v45 = *MEMORY[0x277D85DE8];
  __asm { FMOV            V5.2S, #3.0 }

  v9 = vmul_f32(vsub_f32(a3, a2), _D5);
  v10 = vsub_f32(a5, a2);
  __asm { FMOV            V3.2S, #6.0 }

  v12 = vmul_f32(vadd_f32(a4, vmla_f32(a2, 0xC0000000C0000000, a3)), _D3);
  v13 = vmul_f32(vmla_f32(v10, _D5, vsub_f32(a3, a4)), _D5);
  if (fabsf(v13.f32[0]) <= 0.00001)
  {
    if (fabsf(v12.f32[0]) > 0.00001)
    {
      v43 = -v9.f32[0] / v12.f32[0];
      v19 = 1;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v14 = (v9.f32[0] * (v13.f32[0] * -4.0)) + (v12.f32[0] * v12.f32[0]);
  if (v14 < 0.0)
  {
LABEL_12:
    v19 = 0;
    goto LABEL_13;
  }

  v15 = 1.0;
  if (v12.f32[0] < 0.0)
  {
    v15 = -1.0;
  }

  v16 = (v12.f32[0] + (v15 * sqrtf(v14))) * -0.5;
  v17 = v16 / v13.f32[0];
  v18 = v9.f32[0] / v16;
  v43 = v17;
  v44 = v18;
  if (v18 < v17)
  {
    v43 = v18;
    v44 = v17;
  }

  if (v14 <= 0.0)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

LABEL_13:
  if (fabsf(v13.f32[1]) <= 0.00001)
  {
    if (fabsf(v12.f32[1]) > 0.00001)
    {
      v41 = -v9.f32[1] / v12.f32[1];
      v22 = 1;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v13.f32[0] = (v9.f32[1] * (v13.f32[1] * -4.0)) + (v12.f32[1] * v12.f32[1]);
  if (v13.f32[0] < 0.0)
  {
LABEL_24:
    v22 = 0;
    goto LABEL_25;
  }

  v20 = 1.0;
  if (v12.f32[1] < 0.0)
  {
    v20 = -1.0;
  }

  v21 = (v12.f32[1] + (v20 * sqrtf(v13.f32[0]))) * -0.5;
  v41 = v21 / v13.f32[1];
  v42 = v9.f32[1] / v21;
  if ((v9.f32[1] / v21) < (v21 / v13.f32[1]))
  {
    v41 = v9.f32[1] / v21;
    v42 = v21 / v13.f32[1];
  }

  if (v13.f32[0] <= 0.0)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

LABEL_25:
  *a1 = 0;
  v23 = v22 | v19;
  if (v22 | v19)
  {
    v24 = 0;
    v25 = 0;
    v23 = 0;
    v26 = v22 != 0;
    v27 = v19 != 0;
    do
    {
      if (v26)
      {
        v28 = *(&v41 + v24);
        if (!v27 || (v29 = *(&v43 + v25), v29 == v28))
        {
LABEL_30:
          ++v24;
          goto LABEL_32;
        }

        v36 = fabsf(v29);
        v37 = fabsf(v28);
        if (v36 == INFINITY || v37 == INFINITY)
        {
          if (v29 >= v28)
          {
            goto LABEL_30;
          }
        }

        else if ((v28 + (((v37 + v36) + 1.0) * -0.00001)) < v29)
        {
          goto LABEL_30;
        }

        ++v25;
        v28 = v29;
      }

      else
      {
        v28 = *(&v43 + v25++);
      }

LABEL_32:
      v30 = *&a1[v23];
      if (v28 == v30)
      {
        goto LABEL_33;
      }

      v31 = fabsf(v28);
      if (v31 == INFINITY)
      {
        if (v28 >= 1.0 || v28 == 1.0 || v28 <= v30)
        {
          goto LABEL_33;
        }

LABEL_61:
        *&a1[++v23] = v28;
        goto LABEL_33;
      }

      v34 = fabsf(v30);
      if (v34 == INFINITY)
      {
        if (v28 == 1.0 || v28 <= v30)
        {
          goto LABEL_33;
        }
      }

      else if (v28 == 1.0 || (v30 + (((v31 + v34) + 1.0) * 0.00001)) > v28)
      {
        goto LABEL_33;
      }

      if (((((v31 + 1.0) + 1.0) * -0.00001) + 1.0) >= v28)
      {
        goto LABEL_61;
      }

LABEL_33:
      v26 = v22 > v24;
      v27 = v25 < v19;
    }

    while (v25 < v19 || v22 > v24);
  }

  a1[(v23 + 1)] = 1065353216;
  v39 = *MEMORY[0x277D85DE8];
  return (v23 + 2);
}

uint64_t geom_cubic_bezier_find_monotonic_intervals_2d(void *a1, float64x2_t a2, float64x2_t a3, float64x2_t a4, float64x2_t a5)
{
  v40 = *MEMORY[0x277D85DE8];
  __asm { FMOV            V5.2D, #3.0 }

  v8 = vmulq_f64(vsubq_f64(a3, a2), _Q5);
  __asm { FMOV            V6.2D, #-2.0 }

  v10 = vsubq_f64(a5, a2);
  __asm { FMOV            V3.2D, #6.0 }

  v12 = vmulq_f64(vaddq_f64(a4, vmlaq_f64(a2, _Q6, a3)), _Q3);
  v13 = vmulq_f64(vmlaq_f64(v10, _Q5, vsubq_f64(a3, a4)), _Q5);
  if (fabs(v13.f64[0]) <= 0.000001)
  {
    if (fabs(v12.f64[0]) > 0.000001)
    {
      v38 = -v8.f64[0] / v12.f64[0];
      v19 = 1;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v14 = v8.f64[0] * (v13.f64[0] * -4.0) + v12.f64[0] * v12.f64[0];
  if (v14 < 0.0)
  {
LABEL_12:
    v19 = 0;
    goto LABEL_13;
  }

  v15 = 1.0;
  if (v12.f64[0] < 0.0)
  {
    v15 = -1.0;
  }

  v16 = (v12.f64[0] + v15 * sqrt(v14)) * -0.5;
  v17 = v16 / v13.f64[0];
  v18 = v8.f64[0] / v16;
  v38 = v17;
  v39 = v18;
  if (v18 < v17)
  {
    v38 = v18;
    v39 = v17;
  }

  if (v14 <= 0.0)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

LABEL_13:
  if (fabs(v13.f64[1]) <= 0.000001)
  {
    if (fabs(v12.f64[1]) > 0.000001)
    {
      v36 = -v8.f64[1] / v12.f64[1];
      v22 = 1;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v13.f64[0] = v8.f64[1] * (v13.f64[1] * -4.0) + v12.f64[1] * v12.f64[1];
  if (v13.f64[0] < 0.0)
  {
LABEL_24:
    v22 = 0;
    goto LABEL_25;
  }

  v20 = 1.0;
  if (v12.f64[1] < 0.0)
  {
    v20 = -1.0;
  }

  v21 = (v12.f64[1] + v20 * sqrt(v13.f64[0])) * -0.5;
  v36 = v21 / v13.f64[1];
  v37 = v8.f64[1] / v21;
  if (v8.f64[1] / v21 < v21 / v13.f64[1])
  {
    v36 = v8.f64[1] / v21;
    v37 = v21 / v13.f64[1];
  }

  if (v13.f64[0] <= 0.0)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

LABEL_25:
  *a1 = 0;
  v23 = v22 | v19;
  if (v22 | v19)
  {
    v24 = 0;
    v25 = 0;
    v23 = 0;
    v26 = v22 != 0;
    v27 = v19 != 0;
    while (v26)
    {
      v28 = *(&v36 + v24);
      if (v27)
      {
        v29 = *(&v38 + v25);
        if (v29 != v28 && v28 + -0.000001 >= v29)
        {
          goto LABEL_36;
        }
      }

      ++v24;
      v29 = v28;
LABEL_37:
      v31 = *&a1[v23];
      _ZF = v29 == v31 || v31 + 0.000001 > v29 || v29 == 1.0;
      if (!_ZF && v29 <= 0.999999)
      {
        *&a1[++v23] = v29;
      }

      v26 = v22 > v24;
      v27 = v25 < v19;
      if (v25 >= v19 && v22 <= v24)
      {
        goto LABEL_48;
      }
    }

    v29 = *(&v38 + v25);
LABEL_36:
    ++v25;
    goto LABEL_37;
  }

LABEL_48:
  a1[(v23 + 1)] = 0x3FF0000000000000;
  v34 = *MEMORY[0x277D85DE8];
  return (v23 + 2);
}