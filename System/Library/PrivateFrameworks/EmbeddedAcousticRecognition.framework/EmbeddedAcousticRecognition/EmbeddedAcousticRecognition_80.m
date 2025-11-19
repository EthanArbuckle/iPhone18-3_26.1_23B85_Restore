void sub_1B55FDD74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *__p, void *a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38)
{
  v40 = *(v38 - 184);
  if (v40)
  {
    *(v38 - 176) = v40;
    operator delete(v40);
  }

  v41 = *(v38 - 160);
  if (v41)
  {
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SingleShortestPathBacktrace<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  (*(*a2 + 224))(a2);
  v8 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v8);
  v9 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v9);
  if (a4 != -1)
  {
    v10 = -1;
    v11 = a4;
    LODWORD(v12) = -1;
    while (1)
    {
      v13 = v12;
      v12 = (*(*a2 + 200))(a2);
      if (v10 == -1)
      {
        (*(*a1 + 32))(&v27, a1, a4);
        (*(*a2 + 184))(a2, v12, &v27);
        if (__p)
        {
          v29 = __p;
          operator delete(__p);
        }

        goto LABEL_18;
      }

      v26 = 0;
      (*(*a1 + 136))(a1, v11, v24);
      v14 = *(*a3 + 16 * v10 + 8);
      if (!v24[0])
      {
        break;
      }

      (*(*v24[0] + 64))(v24[0], v14);
      if (!v24[0])
      {
        v14 = v26;
        goto LABEL_11;
      }

      v15 = (*(*v24[0] + 32))(v24[0]);
LABEL_12:
      v19[0] = *v15;
      v19[1] = v15[1];
      v21 = 0;
      v22 = 0;
      v20 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v20, v15[2], v15[3], (v15[3] - v15[2]) >> 2);
      v23 = v13;
      (*(*a2 + 208))(a2, v12, v19);
      if (v20)
      {
        v21 = v20;
        operator delete(v20);
      }

      if (v24[0])
      {
        (*(*v24[0] + 8))(v24[0]);
      }

      else if (v25)
      {
        --*v25;
      }

LABEL_18:
      v10 = v11;
      v11 = *(*a3 + 16 * v11);
      if (v11 == -1)
      {
        goto LABEL_21;
      }
    }

    v26 = *(*a3 + 16 * v10 + 8);
LABEL_11:
    v15 = (v24[1] + 48 * v14);
    goto LABEL_12;
  }

  v12 = 0xFFFFFFFFLL;
LABEL_21:
  (*(*a2 + 176))(a2, v12);
  if ((*(*a1 + 64))(a1, 4, 0))
  {
    (*(*a2 + 192))(a2, 4, 4);
  }

  v16 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v17 = fst::ShortestPathProperties(v16, 0);
  return (*(*a2 + 192))(a2, v17, 0x3FFFFFFF0007);
}

void sub_1B55FE3AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ShortestDistance<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = *a3;
  v11 = *(a3 + 16);
  v12 = *(a3 + 20);
  v13 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  memset(v17, 0, 29);
  std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::clear[abi:ne200100](a2);
  fst::ShortestDistanceState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::ShortestDistance(v10, *(a3 + 12));
  if (BYTE12(v17[1]) == 1)
  {
    std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::clear[abi:ne200100](a2);
    v6 = vneg_f32(0x3F0000003FLL);
    v8 = 0;
    v9 = 0;
    __p = 0;
    std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::resize(a2, 1uLL, &v6);
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }
  }

  return fst::ShortestDistanceState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ShortestDistanceState(v10);
}

void sub_1B55FE4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  fst::ShortestDistanceState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ShortestDistanceState(&a14);
  _Unwind_Resume(a1);
}

uint64_t fst::Reverse<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(uint64_t a1, uint64_t *a2, char a3)
{
  (*(*a2 + 224))(a2);
  v6 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v6);
  v7 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v7);
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v8 = fst::CountStates<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(a1);
    (*(*a2 + 248))(a2, (v8 + 1));
  }

  v9 = (*(*a1 + 24))(a1);
  v75 = 0;
  v36 = v9;
  if (a3)
  {
LABEL_32:
    v10 = (*(*a2 + 200))(a2);
    v19 = 1;
    goto LABEL_33;
  }

  LODWORD(v66) = 0;
  (*(*a1 + 128))(a1, &v64);
  v10 = 0xFFFFFFFFLL;
  while (1)
  {
    if (v64)
    {
      v11 = (*(*v64 + 16))(v64);
      v12 = v64;
      if (v11)
      {
        goto LABEL_27;
      }

      if (v64)
      {
        v13 = (*(*v64 + 24))(v64);
        goto LABEL_11;
      }
    }

    else if (v66 >= v65)
    {
      goto LABEL_29;
    }

    v13 = v66;
LABEL_11:
    (*(*a1 + 32))(&v69, a1, v13);
    LODWORD(v48) = HIDWORD(v69);
    LODWORD(v56) = v69;
    LODWORD(v45) = 2139095040;
    LODWORD(v61) = 2139095040;
    v14.n128_u32[0] = v69;
    if (*&v69 == INFINITY)
    {
      v14.n128_u32[0] = v48;
      v15 = *&v48 == *&v61;
    }

    else
    {
      v15 = 0;
    }

    if (v70)
    {
      v71 = v70;
      operator delete(v70);
    }

    v16 = 2 * (v10 != -1);
    v17 = v10 == -1 ? v13 : -1;
    if (v15)
    {
      v16 = 4;
      v10 = v10;
    }

    else
    {
      v10 = v17;
    }

    if ((v16 | 4) != 4)
    {
      break;
    }

    if (v64)
    {
      (*(*v64 + 32))(v64, v14);
    }

    else
    {
      LODWORD(v66) = v66 + 1;
    }
  }

  v12 = v64;
LABEL_27:
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

LABEL_29:
  if (v10 == -1)
  {
    goto LABEL_32;
  }

  (*(*a1 + 32))(&v69, a1, v10);
  LODWORD(v56) = HIDWORD(v69);
  LODWORD(v64) = v69;
  LODWORD(v48) = 0;
  LODWORD(v45) = 0;
  v18 = *&v69 != 0.0 || *&v56 != *&v45;
  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v18)
  {
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v69 = &v56;
    v70 = 0;
    v71 = 0;
    v72 = &v75;
    fst::DfsVisit<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(a1, &v69);
  }

  v19 = 0;
LABEL_33:
  v63 = 0;
  (*(*a1 + 128))(a1, &v61);
  while (2)
  {
    if (!v61)
    {
      if (v63 >= v62)
      {
        goto LABEL_91;
      }

      goto LABEL_39;
    }

    if (!(*(*v61 + 16))(v61))
    {
      if (v61)
      {
        v20 = (*(*v61 + 24))();
LABEL_40:
        v21 = v20 + v19;
        while ((*(*a2 + 160))(a2) <= v21)
        {
          (*(*a2 + 200))(a2);
        }

        if (v20 == v36)
        {
          *__p = 0u;
          v60 = 0u;
          (*(*a2 + 184))(a2, (v20 + v19), __p);
          if (__p[1])
          {
            *&v60 = __p[1];
            operator delete(__p[1]);
          }
        }

        (*(*a1 + 32))(&v56, a1, v20);
        LODWORD(v64) = HIDWORD(v56);
        LODWORD(v69) = v56;
        LODWORD(v48) = 2139095040;
        LODWORD(v45) = 2139095040;
        v22 = *&v56 != INFINITY || *&v64 != *&v45;
        if ((v19 & v22) == 1)
        {
          v52 = v56;
          v54 = 0;
          v55 = 0;
          v53 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v53, v57, v58, (v58 - v57) >> 2);
          v69 = 0;
          v70 = v52;
          v72 = 0;
          v73 = 0;
          v71 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v71, v53, v54, (v54 - v53) >> 2);
          v74 = v20 + v19;
          if (v53)
          {
            v54 = v53;
            operator delete(v53);
          }

          (*(*a2 + 208))(a2, 0, &v69);
          if (v71)
          {
            v72 = v71;
            operator delete(v71);
          }
        }

        v68 = 0;
        (*(*a1 + 136))(a1, v20, &v64);
LABEL_55:
        if (v64)
        {
          if ((*(*v64 + 24))(v64))
          {
            if (v64)
            {
              (*(*v64 + 8))(v64);
              goto LABEL_84;
            }

LABEL_82:
            if (v67)
            {
              --*v67;
            }

LABEL_84:
            if (v57)
            {
              v58 = v57;
              operator delete(v57);
            }

            if (v61)
            {
              (*(*v61 + 32))(v61);
            }

            else
            {
              ++v63;
            }

            continue;
          }

          if (v64)
          {
            v23 = (*(*v64 + 32))(v64);
LABEL_61:
            v24 = *(v23 + 40);
            v48 = *(v23 + 8);
            v50 = 0;
            v51 = 0;
            v49 = 0;
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v49, *(v23 + 16), *(v23 + 24), (*(v23 + 24) - *(v23 + 16)) >> 2);
            v25 = (v24 + v19);
            if (v25 == v10)
            {
              v26 = v19;
            }

            else
            {
              v26 = 1;
            }

            if ((v26 & 1) == 0)
            {
              (*(*a1 + 32))(&v45, a1, v10);
              v69 = v45;
              v71 = 0;
              v72 = 0;
              v70 = 0;
              std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v70, v46, v47, (v47 - v46) >> 2);
              v48 = vadd_f32(v69, v48);
              std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v49, 0, 0, 0);
              if (v70)
              {
                v71 = v70;
                operator delete(v70);
              }

              if (v46)
              {
                v47 = v46;
                operator delete(v46);
              }
            }

            v27 = *v23;
            v41 = v48;
            v43 = 0;
            v44 = 0;
            v42 = 0;
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v42, v49, v50, (v50 - v49) >> 2);
            v69 = v27;
            v70 = v41;
            v72 = 0;
            v73 = 0;
            v71 = 0;
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v71, v42, v43, (v43 - v42) >> 2);
            v74 = v21;
            if (v42)
            {
              v43 = v42;
              operator delete(v42);
            }

            while (1)
            {
              v28 = (*(*a2 + 160))(a2);
              v29 = *a2;
              if (v28 > v25)
              {
                break;
              }

              (*(v29 + 200))(a2);
            }

            (*(v29 + 208))(a2, v25, &v69);
            if (v71)
            {
              v72 = v71;
              operator delete(v71);
            }

            if (v49)
            {
              v50 = v49;
              operator delete(v49);
            }

            if (v64)
            {
              (*(*v64 + 40))(v64);
            }

            else
            {
              ++v68;
            }

            goto LABEL_55;
          }
        }

        else if (v68 >= v66)
        {
          goto LABEL_82;
        }

        v23 = v65 + 48 * v68;
        goto LABEL_61;
      }

LABEL_39:
      v20 = v63;
      goto LABEL_40;
    }

    break;
  }

  if (v61)
  {
    (*(*v61 + 8))();
  }

LABEL_91:
  (*(*a2 + 176))(a2, v10);
  if (v10 == v36)
  {
    v30 = v19;
  }

  else
  {
    v30 = 1;
  }

  if ((v30 & 1) == 0)
  {
    (*(*a1 + 32))(&v69, a1, v36);
    v37 = v69;
    v39 = 0;
    v40 = 0;
    v38 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v38, v70, v71, (v71 - v70) >> 2);
    (*(*a2 + 184))(a2, v36, &v37);
    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    if (v70)
    {
      v71 = v70;
      operator delete(v70);
    }
  }

  v31 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  v32 = v75;
  v33 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v34 = fst::ReverseProperties(v32 | v31, v19);
  return (*(*a2 + 192))(a2, v33 | v34, 0x3FFFFFFF0007);
}

void sub_1B55FF340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *__p, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::insert(uint64_t *a1, uint64_t a2, char *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 5) + 1;
    if (v11 >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = a2 - v10;
    v13 = v7 - v10;
    v14 = v13 >> 4;
    if (v13 >> 4 <= v11)
    {
      v14 = ((v6 - *a1) >> 5) + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 5;
    v18[4] = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>(a1, v15);
    }

    v18[0] = 0;
    v18[1] = 32 * v16;
    v18[2] = 32 * v16;
    v18[3] = 0;
    std::__split_buffer<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::emplace_back<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>> const&>(v18, a3);
    v4 = std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::__swap_out_circular_buffer(a1, v18, v4);
    std::__split_buffer<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::~__split_buffer(v18);
  }

  else if (a2 == v6)
  {
    std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::__construct_one_at_end[abi:ne200100]<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>> const&>(a1, a3);
  }

  else
  {
    std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::__move_range(a1, a2, v6, (a2 + 32));
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 32;
    if (v8)
    {
      v9 = 0;
    }

    fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v4, &a3[v9]);
  }

  return v4;
}

void sub_1B55FF660(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void fst::NShortestPath<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, int a7, float a8)
{
  v118 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return;
  }

  if ((a7 & 1) != 0 && (*(*a1 + 64))(a1, 0x400000000, 1))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v116, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v116, "ERROR");
    }

    v16 = fst::LogMessage::LogMessage(&v87, v116);
    v17 = fst::cerr(v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "NShortestPath: FST has a cycle and include_final_ties was set to true. This is not currently supported.", 103);
    fst::LogMessage::~LogMessage(&v87);
    if (SHIBYTE(v116[2]) < 0)
    {
      operator delete(v116[0]);
    }

    (*(*a2 + 192))(a2, 4, 4);
    return;
  }

  (*(*a2 + 224))(a2);
  v18 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v18);
  v19 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v19);
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  __p = 0;
  v101 = 0;
  v102 = 0;
  if ((*(*a1 + 24))(a1) != -1)
  {
    v22 = *a3;
    v21 = *(a3 + 8);
    if ((*(*a1 + 24))(a1) < ((v21 - v22) >> 5))
    {
      v23 = (*a3 + 32 * (*(*a1 + 24))(a1));
      v24 = v23[1];
      *v116 = *v23;
      v87 = v24;
      LODWORD(v80) = 2139095040;
      LODWORD(v111) = 2139095040;
      if (*v116 != INFINITY || (v20.n128_f32[0] = v87, v87 != *&v111))
      {
        v20.n128_u32[0] = *a5;
        v25 = *a5 + *(a5 + 4);
        if (v25 >= 0.0)
        {
          v26 = v25 <= 0.0 && v20.n128_f32[0] < 0.0;
          v27 = v26;
          if (a6 && !v27)
          {
            v28 = (*(*a2 + 200))(a2);
            (*(*a2 + 176))(a2, v28);
            v99 = (*(*a2 + 200))(a2);
            v97 = 0u;
            v98 = 0u;
            (*(*a2 + 184))(a2);
            if (0xCCCCCCCCCCCCCCCDLL * ((v107 - v106) >> 3) <= v99)
            {
              v29 = vneg_f32(0x7F0000007FLL);
              do
              {
                LODWORD(v116[0]) = -1;
                v116[1] = v29;
                memset(&v116[2], 0, 24);
                std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v116[2], 0, 0, 0);
                std::vector<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>::push_back[abi:ne200100](&v106, v116);
                if (v116[2])
                {
                  v116[3] = v116[2];
                  operator delete(v116[2]);
                }
              }

              while (0xCCCCCCCCCCCCCCCDLL * ((v107 - v106) >> 3) <= v99);
            }

            LODWORD(v116[0]) = (*(*a1 + 24))(a1);
            memset(&v116[1], 0, 32);
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v116[2], 0, 0, 0);
            v30 = v106 + 40 * v99;
            *v30 = v116[0];
            *(v30 + 8) = v116[1];
            if (v30 != v116)
            {
              std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v30 + 16), v116[2], v116[3], (v116[3] - v116[2]) >> 2);
            }

            if (v116[2])
            {
              v116[3] = v116[2];
              operator delete(v116[2]);
            }

            std::vector<int>::push_back[abi:ne200100](&v103, &v99);
            v79 = a6;
            v78 = 0;
            v31 = (*a3 + 32 * (*(*a1 + 24))(a1));
            v32 = v31[1];
            v33 = *(a5 + 4);
            v34 = *v31 + *a5;
            memset(v96, 0, sizeof(v96));
            v92 = 0;
            v93 = 0;
            v94 = 0;
            v35 = v34 + (v32 + v33);
            v36 = vneg_f32(0x7F0000007FLL);
LABEL_37:
            v37 = v104;
            v38 = v103;
            if (v103 == v104)
            {
              goto LABEL_140;
            }

            v116[0] = &v106;
            v116[1] = a3;
            LODWORD(v116[2]) = -1;
            *(&v116[2] + 1) = a8;
            v39 = (v104 - v103) >> 2;
            if (v39 >= 2)
            {
              v40 = *v103;
              v41 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>> &,std::__wrap_iter<int *>>(v103, v116, v39);
              v42 = (v37 - 4);
              if (v37 - 4 == v41)
              {
                *v41 = v40;
              }

              else
              {
                *v41 = *v42;
                *v42 = v40;
                std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>> &,std::__wrap_iter<int *>>(v38, (v41 + 1), v116, ((v41 + 1) - v38) >> 2);
              }
            }

            v43 = *(v104 - 1);
            v44 = v106 + 40 * v43;
            v87 = *v44;
            v88 = *(v44 + 8);
            v90 = 0;
            v91 = 0;
            v89 = 0;
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v89, *(v44 + 16), *(v44 + 24), (*(v44 + 24) - *(v44 + 16)) >> 2);
            v104 -= 4;
            if (v87 == NAN)
            {
              *v85 = 0u;
              v86 = 0u;
              v46 = 0;
            }

            else if (SLODWORD(v87) >= ((*(a3 + 8) - *a3) >> 5))
            {
              v85[0] = v36;
              v86 = 0uLL;
              v46 = v36;
              v85[1] = 0;
            }

            else
            {
              v45 = *a3 + 32 * SLODWORD(v87);
              v85[0] = *v45;
              v86 = 0uLL;
              v85[1] = 0;
              std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v85[1], *(v45 + 8), *(v45 + 16), (*(v45 + 16) - *(v45 + 8)) >> 2);
              v46 = v85[0];
            }

            v47 = 0;
            v48 = vadd_f32(v46, v88);
            v49 = vaddv_f32(v48);
            v51 = v35 <= v49 && v34 < v48.f32[0];
            if (v35 < v49 || v51)
            {
              goto LABEL_133;
            }

            if (v79 != -1 && (*(*a2 + 160))(a2) >= v79)
            {
              goto LABEL_132;
            }

            v52 = __p;
            for (i = v87; SLODWORD(v87) + 1 >= ((v101 - __p) >> 2); i = v87)
            {
              LODWORD(v116[0]) = 0;
              std::vector<int>::push_back[abi:ne200100](&__p, v116);
              v52 = __p;
            }

            if (a7 && LODWORD(i) + 1 >= ((v93 - v92) >> 5))
            {
              do
              {
                v116[0] = v36;
                memset(&v116[1], 0, 24);
                std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](&v92, v116);
                if (v116[1])
                {
                  v116[2] = v116[1];
                  operator delete(v116[1]);
                }

                i = v87;
              }

              while (SLODWORD(v87) + 1 >= ((v93 - v92) >> 5));
              v52 = __p;
            }

            ++v52[SLODWORD(i) + 1];
            v54 = LODWORD(v87);
            if (v87 == NAN)
            {
              if (v78)
              {
                v55 = v95.f32[0] == v88.f32[0] && v95.f32[1] == v88.f32[1];
                v56 = vabds_f32(v95.f32[0] + v95.f32[1], v88.f32[0] + v88.f32[1]);
                if (!v55 && v56 > 0.00097656)
                {
                  v47 = 1;
                  v78 = 1;
                  goto LABEL_133;
                }
              }

              v58 = (*(*a2 + 24))(a2);
              memset(v116, 0, sizeof(v116));
              std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v116[2], 0, 0, 0);
              v117 = v43;
              (*(*a2 + 208))(a2, v58, v116);
              if (v116[2])
              {
                v116[3] = v116[2];
                operator delete(v116[2]);
              }

              v54 = LODWORD(v87);
            }

            if ((v78 & 1) == 0)
            {
              if (v54 != -1)
              {
                v78 = 0;
                if (a7)
                {
                  goto LABEL_80;
                }

                goto LABEL_85;
              }

              v62 = *__p;
              v47 = v62 == a4;
              if (v62 != a4 || a7 == 0)
              {
                v78 = 0;
                goto LABEL_133;
              }

              v95 = v88;
              std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v96, v89, v90, (v90 - v89) >> 2);
              v54 = LODWORD(v87);
            }

            v78 = 1;
            if (v54 == -1)
            {
              goto LABEL_132;
            }

            if (a7)
            {
LABEL_80:
              v59 = v54 + 1;
              v60 = *(__p + v59);
              if (v60 == a4)
              {
                v61 = (v92 + 32 * v59);
                *v61 = v88;
                if (v61 != &v88)
                {
                  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v61[1], v89, v90, (v90 - v89) >> 2);
                  v54 = LODWORD(v87);
                }
              }

              else if (v60 > a4)
              {
                v64 = (v92 + 32 * v59);
                v65 = v64[1];
                v66 = v88.f32[0] == *v64 && v88.f32[1] == v65;
                v67 = vabds_f32(v88.f32[0] + v88.f32[1], *v64 + v65);
                if (!v66 && v67 > 0.00097656)
                {
                  goto LABEL_132;
                }
              }

              goto LABEL_101;
            }

LABEL_85:
            if (*(__p + v54 + 1) > a4)
            {
              goto LABEL_132;
            }

LABEL_101:
            v84 = 0;
            (*(*a1 + 136))(a1, v54, &v80);
            while (1)
            {
              if (v80)
              {
                if ((*(*v80 + 3))(v80))
                {
                  if (v80)
                  {
                    (*(*v80 + 1))();
                  }

                  else
                  {
LABEL_119:
                    if (v83)
                    {
                      --*v83;
                    }
                  }

                  (*(*a1 + 32))(v116, a1, LODWORD(v87));
                  v80 = v116[0];
                  v82 = 0;
                  v83 = 0;
                  v81 = 0;
                  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v81, v116[1], v116[2], (v116[2] - v116[1]) >> 2);
                  if (v116[1])
                  {
                    v116[2] = v116[1];
                    operator delete(v116[1]);
                  }

                  LODWORD(v111) = HIDWORD(v80);
                  LODWORD(v116[0]) = v80;
                  v110 = 2139095040;
                  v109 = INFINITY;
                  v74.n128_u32[0] = v80;
                  if (*&v80 != INFINITY || (v74.n128_u32[0] = v111, *&v111 != v109))
                  {
                    v77 = v80;
                    v75 = v88;
                    LODWORD(v111) = (*(*a2 + 200))(a2, v74);
                    LODWORD(v116[0]) = -1;
                    v116[1] = vadd_f32(v75, v77);
                    memset(&v116[2], 0, 24);
                    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v116[2], 0, 0, 0);
                    std::vector<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>::push_back[abi:ne200100](&v106, v116);
                    if (v116[2])
                    {
                      v116[3] = v116[2];
                      operator delete(v116[2]);
                    }

                    v76 = v111;
                    v116[0] = 0;
                    v116[1] = v80;
                    memset(&v116[2], 0, 24);
                    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v116[2], v81, v82, (v82 - v81) >> 2);
                    v117 = v43;
                    (*(*a2 + 208))(a2, v76, v116);
                    if (v116[2])
                    {
                      v116[3] = v116[2];
                      operator delete(v116[2]);
                    }

                    std::vector<int>::push_back[abi:ne200100](&v103, &v111);
                    v116[0] = &v106;
                    v116[1] = a3;
                    LODWORD(v116[2]) = -1;
                    *(&v116[2] + 1) = a8;
                    std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>> &,std::__wrap_iter<int *>>(v103, v104, v116, (v104 - v103) >> 2);
                  }

                  if (v81)
                  {
                    v82 = v81;
                    operator delete(v81);
                  }

LABEL_132:
                  v47 = 0;
LABEL_133:
                  if (v85[1])
                  {
                    *&v86 = v85[1];
                    operator delete(v85[1]);
                  }

                  if (v89)
                  {
                    v90 = v89;
                    operator delete(v89);
                  }

                  if (v47)
                  {
LABEL_140:
                    fst::Connect<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(a2);
                  }

                  goto LABEL_37;
                }

                if (v80)
                {
                  v69 = (*(*v80 + 4))();
                  goto LABEL_108;
                }
              }

              else if (v84 >= v82)
              {
                goto LABEL_119;
              }

              v69 = v81 + 48 * v84;
LABEL_108:
              v70 = *v69;
              v111 = *(v69 + 1);
              v113 = 0;
              v114 = 0;
              v112 = 0;
              std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v112, *(v69 + 2), *(v69 + 3), (*(v69 + 3) - *(v69 + 2)) >> 2);
              v71 = *(v69 + 10);
              v116[0] = v70;
              v116[1] = v111;
              memset(&v116[2], 0, 24);
              std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v116[2], v112, v113, (v113 - v112) >> 2);
              v117 = v71;
              if (v112)
              {
                v113 = v112;
                operator delete(v112);
              }

              v72 = v88;
              v73 = v116[1];
              v110 = (*(*a2 + 200))(a2);
              LODWORD(v111) = v117;
              v112 = vadd_f32(v72, v73);
              v114 = 0;
              v115 = 0;
              v113 = 0;
              std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v113, 0, 0, 0);
              std::vector<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>::push_back[abi:ne200100](&v106, &v111);
              if (v113)
              {
                v114 = v113;
                operator delete(v113);
              }

              v117 = v43;
              (*(*a2 + 208))(a2, v110, v116);
              std::vector<int>::push_back[abi:ne200100](&v103, &v110);
              v111 = &v106;
              v112 = a3;
              LODWORD(v113) = -1;
              *(&v113 + 1) = a8;
              std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>> &,std::__wrap_iter<int *>>(v103, v104, &v111, (v104 - v103) >> 2);
              if (v116[2])
              {
                v116[3] = v116[2];
                operator delete(v116[2]);
              }

              if (v80)
              {
                (*(*v80 + 5))(v80);
              }

              else
              {
                ++v84;
              }
            }
          }
        }
      }
    }
  }

  if ((*(*a1 + 64))(a1, 4, 0, v20))
  {
    (*(*a2 + 192))(a2, 4, 4);
  }

  v116[0] = &v106;
  std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](v116);
}

void sub_1B5600714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char *a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, char a46)
{
  v48 = *(v46 - 192);
  if (v48)
  {
    *(v46 - 184) = v48;
    operator delete(v48);
  }

  if (__p)
  {
    a41 = __p;
    operator delete(__p);
  }

  if (a43)
  {
    a44 = a43;
    operator delete(a43);
  }

  a23 = &a46;
  std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

uint64_t std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::__emplace_back_slow_path<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>(a1, a2);
  }

  else
  {
    std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::__construct_one_at_end[abi:ne200100]<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>(a1, a2);
    result = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::__construct_one_at_end[abi:ne200100]<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  v3[2] = 0;
  v3[3] = 0;
  v3[1] = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((v3 + 1), a2[1], a2[2], (a2[2] - a2[1]) >> 2);
  *(a1 + 8) = v3 + 4;
  return result;
}

uint64_t std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::__emplace_back_slow_path<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>(a1, v7);
  }

  v8 = (32 * v2);
  v15 = 0;
  v16 = v8;
  v17 = (32 * v2);
  *v8 = *a2;
  v8[2] = 0;
  v8[3] = 0;
  v8[1] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(32 * v2 + 8, a2[1], a2[2], (a2[2] - a2[1]) >> 2);
  *&v17 = v17 + 32;
  v9 = *(a1 + 8);
  v10 = (v16 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::~__split_buffer(&v15);
  return v14;
}

void sub_1B5600AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = *v7;
      v4[2] = 0;
      v4[3] = 0;
      v4[1] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((v4 + 1), v7[1], v7[2], (v7[2] - v7[1]) >> 2);
      v7 += 4;
      v4 = v13 + 4;
      v13 += 4;
    }

    while (v7 != a3);
    v11 = 1;
    while (v6 != a3)
    {
      v8 = v6[1];
      if (v8)
      {
        v6[2] = v8;
        operator delete(v8);
      }

      v6 += 4;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void fst::ShortestDistanceState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::ShortestDistance(uint64_t *a1, int a2)
{
  if ((*(**a1 + 24))(*a1) == -1)
  {
    if (!(*(**a1 + 64))(*a1, 4, 0))
    {
      return;
    }

    v58 = a1 + 116;
    goto LABEL_119;
  }

  (*(**(a1[2] + 16) + 56))(*(a1[2] + 16));
  if ((*(a1 + 33) & 1) == 0)
  {
    std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::clear[abi:ne200100](a1[1]);
    std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::clear[abi:ne200100](a1 + 5);
    a1[9] = 0;
  }

  if (a2 == -1)
  {
    a2 = (*(**a1 + 24))();
  }

  v4 = a2;
  v5 = a1[1];
  v6 = *v5;
  if (a2 >= ((v5[1] - *v5) >> 5))
  {
    v7 = vneg_f32(0x7F0000007FLL);
    do
    {
      v67 = v7;
      v69 = 0;
      v70 = 0;
      __p = 0;
      std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](v5, &v67);
      if (__p)
      {
        v69 = __p;
        operator delete(__p);
      }

      v67 = v7;
      v69 = 0;
      v70 = 0;
      __p = 0;
      std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100]((a1 + 5), &v67);
      if (__p)
      {
        v69 = __p;
        operator delete(__p);
      }

      v67.i8[0] = 0;
      std::vector<BOOL>::push_back((a1 + 8), &v67);
      v5 = a1[1];
      v6 = *v5;
    }

    while (a2 >= ((v5[1] - *v5) >> 5));
  }

  if (*(a1 + 33) == 1)
  {
    v8 = a1[11];
    if (a2 >= ((a1[12] - v8) >> 2))
    {
      do
      {
        std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
        v8 = a1[11];
      }

      while (a2 >= ((a1[12] - v8) >> 2));
      v6 = *a1[1];
    }

    *(v8 + a2) = *(a1 + 28);
  }

  v9 = (v6 + 32 * a2);
  *v9 = 0;
  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v9 + 1, 0, 0, 0);
  v10 = a1 + 5;
  v11 = (a1[5] + 32 * v4);
  *v11 = 0;
  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v11 + 1, 0, 0, 0);
  v12 = a1 + 8;
  v13 = *(a1[2] + 16);
  v14 = *v13;
  *(a1[8] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
  (*(v14 + 24))(v13, v4);
  v58 = a1 + 116;
  v15 = vneg_f32(0x7F0000007FLL);
  do
  {
    if ((*(**(a1[2] + 16) + 48))(*(a1[2] + 16)))
    {
      goto LABEL_115;
    }

    v16 = (*(**(a1[2] + 16) + 16))(*(a1[2] + 16));
    (*(**(a1[2] + 16) + 32))(*(a1[2] + 16));
    for (i = a1[1]; v16 >= ((i[1] - *i) >> 5); i = a1[1])
    {
      v67 = v15;
      v69 = 0;
      v70 = 0;
      __p = 0;
      std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](i, &v67);
      if (__p)
      {
        v69 = __p;
        operator delete(__p);
      }

      v67 = v15;
      v69 = 0;
      v70 = 0;
      __p = 0;
      std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100]((a1 + 5), &v67);
      if (__p)
      {
        v69 = __p;
        operator delete(__p);
      }

      v67.i8[0] = 0;
      std::vector<BOOL>::push_back((a1 + 8), &v67);
    }

    if (*(a1 + 32) == 1)
    {
      (*(**a1 + 32))(&v67);
      v63.i32[0] = v67.i32[1];
      v72.i32[0] = v67.i32[0];
      v59.i32[0] = 2139095040;
      v76 = INFINITY;
      v18 = v67.f32[0] != INFINITY || v63.f32[0] != v76;
      if (__p)
      {
        v69 = __p;
        operator delete(__p);
      }

      if (v18)
      {
LABEL_115:
        ++*(a1 + 28);
        if (!(*(**a1 + 64))(*a1, 4, 0))
        {
          return;
        }

LABEL_119:
        *v58 = 1;
        return;
      }
    }

    *(*v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v16);
    v19 = *v10 + 32 * v16;
    v72 = *v19;
    v74 = 0;
    v75 = 0;
    v73 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v73, *(v19 + 8), *(v19 + 16), (*(v19 + 16) - *(v19 + 8)) >> 2);
    v20 = (*v10 + 32 * v16);
    *v20 = v15;
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v20[1], 0, 0, 0);
    v21 = *a1;
    v22 = **a1;
    v71 = 0;
    (*(v22 + 136))(v21, v16, &v67);
    while (1)
    {
      if (!*&v67)
      {
        if (v71 >= v69)
        {
          v46 = 10;
          goto LABEL_106;
        }

        goto LABEL_39;
      }

      v23 = (*(**&v67 + 24))(v67);
      v26 = v67;
      if (v23)
      {
        break;
      }

      if (v67)
      {
        v27 = (*(**&v67 + 32))();
        goto LABEL_40;
      }

LABEL_39:
      v27 = (__p + 48 * v71);
LABEL_40:
      v28 = a1[1];
      for (j = v27[5].i32[0]; j >= (v28[1] - *v28) >> 5; j = v27[5].i32[0])
      {
        v63 = v15;
        v65 = 0;
        v66 = 0;
        v64 = 0;
        std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](v28, &v63);
        if (v64)
        {
          v65 = v64;
          operator delete(v64);
        }

        v63 = v15;
        v65 = 0;
        v66 = 0;
        v64 = 0;
        std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100]((a1 + 5), &v63);
        if (v64)
        {
          v65 = v64;
          operator delete(v64);
        }

        v63.i8[0] = 0;
        std::vector<BOOL>::push_back((a1 + 8), &v63);
        v28 = a1[1];
      }

      if (*(a1 + 33) == 1)
      {
        while (1)
        {
          v30 = a1[11];
          LODWORD(j) = v27[5].i32[0];
          if (j < ((a1[12] - v30) >> 2))
          {
            break;
          }

          std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
        }

        v28 = a1[1];
        if (*(v30 + j) != *(a1 + 28))
        {
          v31 = (*v28 + 32 * j);
          *v31 = v15;
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v31[1], 0, 0, 0);
          v32 = (*v10 + 32 * v27[5].i32[0]);
          *v32 = v15;
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v32[1], 0, 0, 0);
          v28 = a1[1];
          j = a1[11];
          v33 = *(a1 + 28);
          v34 = v27[5].i32[0];
          *(a1[8] + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v34);
          *(j + 4 * v34) = v33;
          LODWORD(j) = v27[5].i32[0];
        }
      }

      v35 = j;
      v36 = (*v28 + 32 * j);
      v37 = *v10;
      v38 = vadd_f32(v72, v27[1]);
      v63 = v38;
      v65 = 0;
      v66 = 0;
      v64 = 0;
      v39 = *v36;
      v40 = vadd_f32(vzip1_s32(*v36, v38), vzip2_s32(*v36, v38));
      v41 = v40.f32[1];
      if (v40.f32[0] < v40.f32[1])
      {
LABEL_52:
        v42 = v36;
        goto LABEL_55;
      }

      if (v40.f32[0] > v40.f32[1])
      {
        goto LABEL_54;
      }

      if (vcgt_f32(v38, v39).u8[0])
      {
        goto LABEL_52;
      }

      v42 = v36;
      if (vcgt_f32(v39, v38).u8[0])
      {
LABEL_54:
        v42 = &v63;
        v39 = v38;
      }

LABEL_55:
      v59 = v39;
      v61 = 0;
      v62 = 0;
      v60 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v60, *&v42[1], *&v42[2], (*&v42[2] - *&v42[1]) >> 2);
      v24.n128_u32[0] = v36->i32[0];
      v25.n128_u32[0] = v36->u32[1];
      if (*v36->i32 == v59.f32[0] && v25.n128_f32[0] == v59.f32[1])
      {
        v45 = 1;
      }

      else
      {
        v44 = v24.n128_f32[0] + v25.n128_f32[0];
        v25.n128_f32[0] = v59.f32[0] + v59.f32[1];
        v24.n128_f32[0] = vabds_f32(v44, v59.f32[0] + v59.f32[1]);
        v45 = v24.n128_f32[0] <= *(a1 + 7);
      }

      if (v60)
      {
        v61 = v60;
        operator delete(v60);
      }

      if (v45)
      {
        goto LABEL_64;
      }

      v48 = *v36;
      v49 = vaddv_f32(*v36);
      if (v49 < v41)
      {
        v50 = v36;
        goto LABEL_75;
      }

      if (v49 > v41)
      {
LABEL_71:
        v50 = &v63;
        v48 = v38;
        goto LABEL_75;
      }

      if (vcgt_f32(v38, v48).u8[0])
      {
        v50 = v36;
      }

      else
      {
        v50 = v36;
        if (vcgt_f32(v48, v38).u8[0])
        {
          goto LABEL_71;
        }
      }

LABEL_75:
      v59 = v48;
      v61 = 0;
      v62 = 0;
      v60 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v60, *&v50[1], *&v50[2], (*&v50[2] - *&v50[1]) >> 2);
      *v36 = v59;
      if (v36 != &v59)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v36[1], v60, v61, (v61 - v60) >> 2);
      }

      if (v60)
      {
        v61 = v60;
        operator delete(v60);
      }

      v51 = (v37 + 32 * v35);
      v52 = *v51;
      v53 = vaddv_f32(*v51);
      if (v53 < v41)
      {
LABEL_80:
        v54 = v51;
        goto LABEL_83;
      }

      if (v53 > v41)
      {
        goto LABEL_82;
      }

      if (vcgt_f32(v38, v52).u8[0])
      {
        goto LABEL_80;
      }

      v54 = v51;
      if (vcgt_f32(v52, v38).u8[0])
      {
LABEL_82:
        v54 = &v63;
        v52 = v38;
      }

LABEL_83:
      v59 = v52;
      v61 = 0;
      v62 = 0;
      v60 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v60, *&v54[1], *&v54[2], (*&v54[2] - *&v54[1]) >> 2);
      *v51 = v59;
      if (v51 != &v59)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v51[1], v60, v61, (v61 - v60) >> 2);
      }

      if (v60)
      {
        v61 = v60;
        operator delete(v60);
      }

      if (fst::LatticeWeightTpl<float>::Member(v36) && fst::LatticeWeightTpl<float>::Member(v51))
      {
        v55 = **(a1[2] + 16);
        if ((*(a1[8] + ((v27[5].i32[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v27[5].i32[0]))
        {
          (*(v55 + 40))();
LABEL_64:
          v46 = 0;
          v47 = 1;
          goto LABEL_92;
        }

        (*(v55 + 24))();
        v46 = 0;
        v56 = v27[5].i32[0];
        v47 = 1;
        *(*v12 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
      }

      else
      {
        v47 = 0;
        v46 = 1;
        *v58 = 1;
      }

LABEL_92:
      if (v64)
      {
        operator delete(v64);
      }

      v26 = v67;
      if (!v47)
      {
        goto LABEL_103;
      }

      if (v67)
      {
        (*(**&v67 + 40))(v24, v25);
      }

      else
      {
        ++v71;
      }
    }

    v46 = 10;
LABEL_103:
    if (v26)
    {
      (*(**&v26 + 8))(v26, v24, v25);
      goto LABEL_108;
    }

LABEL_106:
    if (v70)
    {
      --*v70;
    }

LABEL_108:
    if (v46 == 10)
    {
      v57 = 0;
    }

    else
    {
      v57 = v46;
    }

    if (v73)
    {
      v74 = v73;
      operator delete(v73);
    }
  }

  while (!v57);
}

void sub_1B560176C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::resize(void *a1, unint64_t a2, void *a3)
{
  v4 = a1[1];
  v5 = (v4 - *a1) >> 5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v7 = *a1 + 32 * a2;
      while (v4 != v7)
      {
        v8 = *(v4 - 24);
        if (v8)
        {
          *(v4 - 16) = v8;
          operator delete(v8);
        }

        v4 -= 32;
      }

      a1[1] = v7;
    }
  }

  else
  {
    v6 = a2 - v5;

    std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::__append(a1, v6, a3);
  }
}

void *std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::__append(void *result, unint64_t a2, void *a3)
{
  v5 = result;
  v6 = result[1];
  v7 = result[2];
  if (a2 <= (v7 - v6) >> 5)
  {
    if (a2)
    {
      v13 = (v6 + 8);
      v14 = 32 * a2;
      v15 = v6 + 32 * a2;
      do
      {
        *(v13 - 1) = *a3;
        v13[1] = 0;
        v13[2] = 0;
        *v13 = 0;
        result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v13, a3[1], a3[2], (a3[2] - a3[1]) >> 2);
        v13 += 4;
        v14 -= 32;
      }

      while (v14);
    }

    else
    {
      v15 = result[1];
    }

    *(v5 + 8) = v15;
  }

  else
  {
    v8 = v6 - *result;
    v9 = a2 + (v8 >> 5);
    if (v9 >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 >> 5;
    v11 = v7 - *result;
    if (v11 >> 4 > v9)
    {
      v9 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    v23 = result;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>(result, v12);
    }

    v20 = 0;
    v21 = 32 * v10;
    v22 = (32 * v10);
    std::__split_buffer<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::__construct_at_end(&v20, a2, a3);
    v16 = *(v5 + 8);
    v17 = (v21 + *v5 - v16);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>*>(v5, *v5, v16, v17);
    v18 = *v5;
    *v5 = v17;
    v19 = *(v5 + 16);
    *(v5 + 8) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return std::__split_buffer<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::~__split_buffer(&v20);
  }

  return result;
}

void sub_1B5601A48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::__construct_at_end(uint64_t result, uint64_t a2, void *a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a2)
  {
    v6 = (v4 + 8);
    v7 = 32 * a2;
    v4 += 32 * a2;
    do
    {
      *(v6 - 1) = *a3;
      v6[1] = 0;
      v6[2] = 0;
      *v6 = 0;
      result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v6, a3[1], a3[2], (a3[2] - a3[1]) >> 2);
      v6 += 4;
      v7 -= 32;
    }

    while (v7);
  }

  *(v3 + 16) = v4;
  return result;
}

void fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::~VectorFst(void *a1)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v3 = *(*(*(a1 + 8) + 64) + 8 * a2);
  *a3 = *v3;
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = 0;
  return std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a3 + 1), v3[1], v3[2], (v3[2] - v3[1]) >> 2);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 72) - *(v2 + 64)) >> 3;
  return result;
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 8);
  *a3 = 0;
  v5 = (*(*(v3 + 64) + 8 * a2) + 48);
  v4 = *v5;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 4);
  if (v5[1] == *v5)
  {
    v4 = 0;
  }

  a3[1] = v4;
  a3[2] = v6;
  a3[3] = 0;
  return result;
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 88) = a2;
  result = (*(*v4 + 24))(v4);
  *(v4 + 8) = result & 0xCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

void fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::SetFinal(uint64_t a1, int a2, uint64_t *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  v7 = *a3;
  v9 = 0;
  v10 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, a3[1], a3[2], (a3[2] - a3[1]) >> 2);
  fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::SetFinal(v6, a2, &v7);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_1B5601FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::AddArc(uint64_t a1, int a2, float *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::AddArc(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0x6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::DeleteStates(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::DeleteStates(v2);
  result = (*(*v2 + 24))(v2);
  v2[1] = (*(v2 + 2) | result) & 4 | 0x156A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::DeleteArcs(*(v6[8] + 8 * a2), a3);
  result = (*(*v6 + 24))(v6);
  v6[1] = v6[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  v5 = *(v4[8] + 8 * a2);
  v5[4] = 0;
  v5[5] = 0;
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::clear[abi:ne200100](v5 + 6);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0xA6A5A950007;
  return result;
}

void *fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 64);

  return std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(v4, a2);
}

void *fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 64) + 8 * a2) + 48);

  return std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::reserve(v6, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(v4, a2);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D20648;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2D20598;
  std::string::basic_string[abi:ne200100]<0>(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950003;
  return a1;
}

void sub_1B560267C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = &unk_1F2D20610;
  v3 = a1 + 8;
  v2 = a1[8];
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::Destroy(v2[v4++]);
      v2 = a1[8];
    }

    while (v4 < (a1[9] - v2) >> 3);
  }

  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~FstImpl(a1);
}

void fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::~VectorFstImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::~VectorFstBaseImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~FstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D20648;
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::Write(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write stream method for ", 39);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write filename method for ", 41);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1B560297C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5602A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::operator=(uint64_t a1)
{
  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  }

  v2 = fst::LogMessage::LogMessage(&v7, __p);
  v3 = fst::cerr(v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ImplToFst: Assignment operator disallowed", 41);
  fst::LogMessage::~LogMessage(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *(*(a1 + 8) + 8) |= 4uLL;
  return a1;
}

void sub_1B5602B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::MutateCheck(uint64_t result)
{
  if (*(*(result + 8) + 56) >= 2)
  {
    operator new();
  }

  return result;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D20648;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2D20598;
  std::string::basic_string[abi:ne200100]<0>(&__p, "vector");
  std::string::operator=((a1 + 16), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 120))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, v5);
  *(a1 + 88) = (*(*a2 + 24))(a2);
  if ((*(*a2 + 64))(a2, 1, 0))
  {
    v6 = fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(a2);
    std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve((a1 + 64), v6);
  }

  v11 = 0;
  (*(*a2 + 128))(a2, &v9);
  if (v9)
  {
    if (!(*(*v9 + 16))(v9))
    {
      if (v9)
      {
        (*(*v9 + 24))();
      }

LABEL_10:
      fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::AddState();
    }

    if (v9)
    {
      (*(*v9 + 8))();
    }
  }

  else if (v11 < v10)
  {
    goto LABEL_10;
  }

  *(a1 + 8) = (*(*a2 + 64))(a2, 0x3FFFFFFF0004, 0) | *(a1 + 8) & 4 | 3;
  return a1;
}

uint64_t fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(uint64_t a1)
{
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v2 = *(*a1 + 160);

    return v2(a1);
  }

  v7 = 0;
  (*(*a1 + 128))(a1, &v5);
  v4 = 0;
  while (1)
  {
    while (!v5)
    {
      if (v7 >= v6)
      {
        return v4;
      }

      v4 = (v4 + 1);
LABEL_12:
      ++v7;
    }

    if ((*(*v5 + 16))(v5))
    {
      break;
    }

    v4 = (v4 + 1);
    if (!v5)
    {
      goto LABEL_12;
    }

    (*(*v5 + 32))();
  }

  if (v5)
  {
    (*(*v5 + 8))();
  }

  return v4;
}

void sub_1B56033B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>();
  }

  _Unwind_Resume(exception_object);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::SetFinal(uint64_t a1, int a2, uint64_t *a3)
{
  v3 = *(*(a1 + 64) + 8 * a2);
  v4 = *a3;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, a3[1], a3[2], (a3[2] - a3[1]) >> 2);
  *v3 = v4;
  if (v3 != &v4)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v3 + 1, __p, v6, (v6 - __p) >> 2);
  }

  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_1B5603458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B560353C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = *v7;
      v8 = *(v7 + 8);
      *(v4 + 16) = 0;
      *(v4 + 8) = v8;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4 + 16, *(v7 + 16), *(v7 + 24), (*(v7 + 24) - *(v7 + 16)) >> 2);
      *(v4 + 40) = *(v7 + 40);
      v7 += 48;
      v4 = v14 + 48;
      v14 += 48;
    }

    while (v7 != a3);
    v12 = 1;
    while (v6 != a3)
    {
      v9 = *(v6 + 16);
      if (v9)
      {
        *(v6 + 24) = v9;
        operator delete(v9);
      }

      v6 += 48;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>,fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::AddArc(void *a1, _DWORD *a2)
{
  if (!*a2)
  {
    ++a1[4];
  }

  if (!a2[1])
  {
    ++a1[5];
  }

  return std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::push_back[abi:ne200100](a1 + 6, a2);
}

uint64_t std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::__emplace_back_slow_path<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>> const&>(a1, a2);
  }

  else
  {
    std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::__construct_one_at_end[abi:ne200100]<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>> const&>(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::__construct_one_at_end[abi:ne200100]<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>> const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 8) = *(a2 + 8);
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  *(v4 + 40) = *(a2 + 40);
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::__emplace_back_slow_path<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v7 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  *(v7 + 40) = *(a2 + 40);
  *&v16 = v16 + 48;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~__split_buffer(&v14);
  return v13;
}

void sub_1B56038A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

unint64_t fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(a1, a2, a3, 0);
    if (!fst::CompatProperties(v6, v7))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      v8 = fst::LogMessage::LogMessage(&v14, __p);
      v9 = fst::cerr(v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "TestProperties: stored Fst properties incorrect", 47);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " (stored: props1, computed: props2)", 35);
      fst::LogMessage::~LogMessage(&v14);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return v7;
  }

  else
  {

    return fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(a1, a2, a3, 1);
  }
}

void sub_1B56039F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v7 = a1;
  v8 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v9 = v8;
  if (!a4 || (v10 = v8 & 0x3FFFFFFF0000 | (2 * v8) & 0x2AAAAAAA0000 | (v8 >> 1) & 0x155555550000 | 7, (a2 & ~v10) != 0))
  {
    v9 = v8 & 7;
    v52 = v9;
    v11 = (*(*v7 + 16))(v7);
    if ((a2 & 0xF3C00000000) != 0 && v11)
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = &v52;
      fst::DfsVisit<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>(v7, &v46);
    }

    if ((a2 & 0xFFFFF0C3FFFFFFF8) != 0)
    {
      v12 = a2 & 0xC0000;
      v13 = 0x10425A810000;
      if ((a2 & 0xC0000) != 0)
      {
        v13 = 0x10425A850000;
      }

      v14 = v9 | v13;
      v15 = a2 & 0x300000;
      if ((a2 & 0x300000) != 0)
      {
        v14 |= 0x100000uLL;
      }

      v52 = v14;
      memset(&v45, 0, sizeof(v45));
      memset(&v44, 0, sizeof(v44));
      v43 = 0;
      (*(*v7 + 128))(v7, &v41);
      v16 = 0;
      v34 = v7;
LABEL_12:
      if (v41)
      {
        if (!(*(*v41 + 16))(v41))
        {
          if (v41)
          {
            v17 = (*(*v41 + 24))();
LABEL_18:
            v18 = (*(*v7 + 40))(v7, v17);
            v48 = 0;
            v49 = 0;
            v50 = 0;
            v45.__end_ = v45.__begin_;
            v44.__end_ = v44.__begin_;
            if (v12)
            {
              std::vector<int>::reserve(&v45, v18);
            }

            if (v15)
            {
              std::vector<int>::reserve(&v44, v18);
            }

            v35 = v16;
            v40 = 0;
            (*(*v7 + 136))(v7, v17, &v36);
            v19 = 1;
            while (1)
            {
              if (v36)
              {
                if ((*(*v36 + 24))(v36))
                {
                  if (v36)
                  {
                    (*(*v36 + 8))();
                    goto LABEL_64;
                  }

LABEL_62:
                  if (v39)
                  {
                    --*v39;
                  }

LABEL_64:
                  v7 = v34;
                  v16 = v35;
                  if (v12 && (std::__sort<std::__less<int,int> &,int *>(), v27 = v45.__end_ - v45.__begin_, v27 >= 2))
                  {
                    v28 = v27 - 1;
                    v29 = v45.__begin_ + 1;
                    while (*v29 != *(v29 - 1))
                    {
                      ++v29;
                      if (!--v28)
                      {
                        goto LABEL_69;
                      }
                    }

                    v52 = v52 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
                    if (!v15)
                    {
LABEL_78:
                      if (v35 >= 1)
                      {
                        v52 = v52 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                      }

                      (*(*v34 + 32))(&v36, v34, v17);
                      v55 = *(&v36 + 1);
                      v56 = *&v36;
                      v54 = 2139095040;
                      v53 = INFINITY;
                      if (*&v36 == INFINITY && v55 == v53)
                      {
                        if ((*(*v34 + 40))(v34, v17) != 1)
                        {
                          v52 = v52 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                        }
                      }

                      else
                      {
                        v55 = *(&v36 + 1);
                        v56 = *&v36;
                        v54 = 0;
                        v53 = 0.0;
                        if (*&v36 != 0.0 || v55 != v53)
                        {
                          v52 = v52 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                        }

                        v16 = v35 + 1;
                      }

                      if (__p)
                      {
                        v38 = __p;
                        operator delete(__p);
                      }

                      if (v48)
                      {
                        v49 = v48;
                        operator delete(v48);
                      }

                      if (v41)
                      {
                        (*(*v41 + 32))(v41);
                      }

                      else
                      {
                        ++v43;
                      }

                      goto LABEL_12;
                    }
                  }

                  else
                  {
LABEL_69:
                    if (!v15)
                    {
                      goto LABEL_78;
                    }
                  }

                  std::__sort<std::__less<int,int> &,int *>();
                  v30 = v44.__end_ - v44.__begin_;
                  if (v30 >= 2)
                  {
                    v31 = v30 - 1;
                    v32 = v44.__begin_ + 1;
                    while (*v32 != *(v32 - 1))
                    {
                      ++v32;
                      if (!--v31)
                      {
                        goto LABEL_78;
                      }
                    }

                    v52 = v52 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
                  }

                  goto LABEL_78;
                }

                if (v36)
                {
                  v20 = (*(*v36 + 32))();
                  goto LABEL_29;
                }
              }

              else if (v40 >= v38)
              {
                goto LABEL_62;
              }

              v20 = __p + 48 * v40;
LABEL_29:
              v21 = *v20;
              v22 = *v20;
              if (*v20 != *(v20 + 1))
              {
                v52 = v52 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
                v22 = *(v20 + 1);
              }

              if (v21 | v22)
              {
                if (v21)
                {
                  if (v22)
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_39;
                }

                v23 = v52;
              }

              else
              {
                v23 = v52 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
              }

              v52 = v23 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
              if (v22)
              {
LABEL_35:
                if (v19)
                {
                  goto LABEL_44;
                }

                goto LABEL_40;
              }

LABEL_39:
              v52 = v52 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
              if (v19)
              {
                goto LABEL_44;
              }

LABEL_40:
              if (v21 < v46)
              {
                v52 = v52 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
              }

              if (v22 < SHIDWORD(v46))
              {
                v52 = v52 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
              }

LABEL_44:
              v24 = *(v20 + 2);
              v25 = *(v20 + 3);
              v56 = v24;
              v55 = v25;
              v54 = 0;
              v53 = 0.0;
              if (v24 != 0.0 || v55 != v53)
              {
                v56 = v24;
                v55 = v25;
                v54 = 2139095040;
                v53 = INFINITY;
                if (v24 != INFINITY || v55 != v53)
                {
                  v52 = v52 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                }
              }

              v26 = *(v20 + 10);
              if (v26 <= v17)
              {
                v52 = v52 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
              }

              if (v26 != v17 + 1)
              {
                v52 = v52 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
              }

              v46 = *v20;
              fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(&v47, (v20 + 8));
              v51 = *(v20 + 10);
              if (v12)
              {
                std::vector<int>::push_back[abi:ne200100](&v45.__begin_, v20);
              }

              if (v15)
              {
                std::vector<int>::push_back[abi:ne200100](&v44.__begin_, v20 + 1);
              }

              if (v36)
              {
                (*(*v36 + 40))(v36);
                v19 = 0;
              }

              else
              {
                v19 = 0;
                ++v40;
              }
            }
          }

LABEL_17:
          v17 = v43;
          goto LABEL_18;
        }

        if (v41)
        {
          (*(*v41 + 8))();
        }
      }

      else if (v43 < v42)
      {
        goto LABEL_17;
      }

      if ((*(*v7 + 24))(v7) != -1 && (*(*v7 + 24))(v7))
      {
        v52 = v52 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
      }

      if (v44.__begin_)
      {
        v44.__end_ = v44.__begin_;
        operator delete(v44.__begin_);
      }

      if (v45.__begin_)
      {
        v45.__end_ = v45.__begin_;
        operator delete(v45.__begin_);
      }

      v9 = v52;
    }

    v10 = v9 & 0x3FFFFFFF0000 | (2 * v9) & 0x2AAAAAAA0000 | (v9 >> 1) & 0x155555550000 | 7;
  }

  *a3 = v10;
  return v9;
}

void sub_1B56042A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5604B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::InitVisit(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    *(*a1 + 8) = **a1;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(v3 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(v4 + 8) = 0;
    *(a1 + 52) = 0;
    **(a1 + 24) = **(a1 + 24) & 0xFFFFF0C3FFFFFFFFLL | 0x52800000000;
    *(a1 + 32) = a2;
    v5 = (*(*a2 + 24))(a2);
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = v5;
    operator new();
  }

  operator new();
}

void fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::FinishState(uint64_t a1, int a2, int a3)
{
  (*(**(a1 + 32) + 32))(&v21);
  v26 = *(&v21 + 1);
  v27 = v21;
  v25 = 2139095040;
  v24 = INFINITY;
  v6 = *&v21 != INFINITY || v26 != v24;
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  if (v6)
  {
    *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * a2) != *(v7 + 4 * a2))
  {
    goto LABEL_21;
  }

  v8 = 0;
  v9 = *(a1 + 80);
  v10 = **(a1 + 16);
  v11 = (*(v9 + 8) - 4);
  v12 = v11;
  do
  {
    v13 = *v12--;
    v8 |= *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13;
  }

  while (v13 != a2);
  v14 = *a1;
  v15 = **(a1 + 72);
  while (1)
  {
    v16 = *v11;
    if (v14)
    {
      *(*v14 + 4 * v16) = *(a1 + 48);
    }

    v17 = v16 >> 6;
    v18 = 1 << v16;
    if ((v8 & 1) == 0)
    {
      break;
    }

    *(v10 + 8 * v17) |= v18;
    *(v15 + 8 * v17) &= ~v18;
    if (v16 == a2)
    {
      *(v9 + 8) = v11;
      goto LABEL_20;
    }

LABEL_18:
    --v11;
  }

  *(v15 + 8 * v17) &= ~v18;
  if (v16 != a2)
  {
    goto LABEL_18;
  }

  *(v9 + 8) = v11;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_20:
  ++*(a1 + 48);
LABEL_21:
  if (a3 != -1)
  {
    v19 = **(a1 + 16);
    if ((*(v19 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2))
    {
      *(v19 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v20 = *(v7 + 4 * a2);
    if (v20 < *(v7 + 4 * a3))
    {
      *(v7 + 4 * a3) = v20;
    }
  }
}

void fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D207C0;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

{
  *a1 = &unk_1F2D207C0;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D20800;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B5605134(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D20800;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B8C85310](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  quasar::Bitmap::~Bitmap(a1);
}

void *std::deque<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>> *>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>> *>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>> *>>::__add_back_capacity(void *a1)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::emplace_back<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **&>(a1, &v10);
}

void sub_1B5605440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ArcBuffer<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::SetFromFst<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  (*(*a2 + 136))(a2, a3, &v25);
  if (!v25 && (a4 & 1) == 0)
  {
    v10 = v26 + 48 * v27;
    *(a1 + 16) = v26;
    *(a1 + 24) = v10;
    if (*a1)
    {
      free(*a1);
      *a1 = 0;
    }

    *(a1 + 8) = 0;
    return;
  }

  v11 = (*(*a2 + 40))(a2, a3);
  v12 = a5;
  if (!a4)
  {
    v12 = 0;
  }

  v13 = v11 + v12;
  if (*(a1 + 8) < (v11 + v12))
  {
    if (*a1)
    {
      free(*a1);
    }

    v24 = 0x4000;
    if (v13 > 0x4000)
    {
      v24 = v13;
    }

    *(a1 + 8) = v24;
    v15 = malloc_type_malloc(48 * v24, 0x108004053AFDD15uLL);
    *a1 = v15;
    *(a1 + 16) = v15;
    v14 = v15;
  }

  else
  {
    v14 = *(a1 + 16);
    v15 = *a1;
  }

  *(a1 + 24) = &v14[6 * v13];
  v16 = v25;
  v17 = v26;
  v19 = v27;
  v18 = v28;
  if (v28)
  {
    ++*v28;
  }

  v20 = 0;
LABEL_13:
  v15 += 6;
  while (v16)
  {
    v21 = (*(*v16 + 24))(v16);
    v22 = *v16;
    if (v21)
    {
      (*(v22 + 8))(v16);
      return;
    }

    v23 = (*(v22 + 32))(v16);
LABEL_18:
    *(v15 - 6) = *v23;
    fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v15 - 5, v23 + 8);
    *(v15 - 2) = *(v23 + 40);
    if (!v16)
    {
      ++v20;
      goto LABEL_13;
    }

    v15 += 6;
    (*(*v16 + 40))(v16);
  }

  v23 = v17 + 48 * v20;
  if (v20 < v19)
  {
    goto LABEL_18;
  }

  if (v18)
  {
    --*v18;
  }
}

void sub_1B560571C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  else if (v2)
  {
    --*v2;
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::WriteFst<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>>(void *a1, void *a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v33 = 0u;
  *v32 = 0u;
  *v31 = 0u;
  v36 = 0;
  v37 = 0;
  v35 = -1;
  v35 = (*(*a1 + 24))(a1);
  v36 = -1;
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v6 = 0;
LABEL_3:
    v7 = 0;
    v36 = fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(a1);
    goto LABEL_6;
  }

  v8 = a2 + *(*a2 - 24);
  if ((v8[32] & 5) != 0)
  {
    v7 = 1;
    v6 = -1;
  }

  else
  {
    (*(**(v8 + 5) + 32))(__p);
    v6 = v40;
    if (v40 != -1)
    {
      goto LABEL_3;
    }

    v7 = 1;
  }

LABEL_6:
  v9 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::WriteFstHeader(a1, a2, a3, 2, __p, v9 | 3, v30);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v29 = v6;
  v10 = *(a1[1] + 72) - *(a1[1] + 64);
  if ((v10 >> 3) < 1)
  {
    v13 = 0;
  }

  else
  {
    v11 = v7;
    v12 = 0;
    v13 = (v10 >> 3) & 0x7FFFFFFF;
    do
    {
      (*(*a1 + 32))(__p, a1, v12);
      data = __p[0].__r_.__value_.__l.__data_;
      std::ostream::write();
      data = HIDWORD(__p[0].__r_.__value_.__r.__words[0]);
      std::ostream::write();
      if (__p[0].__r_.__value_.__l.__size_)
      {
        __p[0].__r_.__value_.__r.__words[2] = __p[0].__r_.__value_.__l.__size_;
        operator delete(__p[0].__r_.__value_.__l.__size_);
      }

      __p[0].__r_.__value_.__r.__words[0] = (*(*a1 + 40))(a1, v12);
      std::ostream::write();
      v14 = *(*(a1[1] + 64) + 8 * v12);
      v16 = *(v14 + 48);
      v15 = *(v14 + 56);
      if (v15 == v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = *(v14 + 48);
      }

      if (v15 != v16)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 4) <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 4);
        }

        do
        {
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *v17;
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v17[1];
          std::ostream::write();
          fst::LatticeWeightTpl<float>::Write((v17 + 2), a2);
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v17[10];
          std::ostream::write();
          v17 += 12;
          --v18;
        }

        while (v18);
      }

      ++v12;
    }

    while (v12 != v13);
    v7 = v11;
  }

  std::ostream::flush();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v19 = fst::LogMessage::LogMessage(&data, __p);
    v20 = fst::cerr(v19);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "VectorFst::Write: write failed: ", 32);
    v22 = *(a3 + 23);
    if (v22 >= 0)
    {
      v23 = a3;
    }

    else
    {
      v23 = *a3;
    }

    if (v22 >= 0)
    {
      v24 = *(a3 + 23);
    }

    else
    {
      v24 = *(a3 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
LABEL_31:
    fst::LogMessage::~LogMessage(&data);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    updated = 0;
    goto LABEL_34;
  }

  if (!v7)
  {
    if (v36 == v13)
    {
      updated = 1;
      goto LABEL_34;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v27 = fst::LogMessage::LogMessage(&data, __p);
    v28 = fst::cerr(v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Inconsistent number of states observed during write", 51);
    goto LABEL_31;
  }

  v36 = v13;
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  updated = fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::UpdateFstHeader(a1, a2, a3, 2, __p, v9 | 3, v30, v29);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

LABEL_34:
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[1]);
  }

  if (SHIBYTE(v32[0]) < 0)
  {
    operator delete(v31[0]);
  }

  return updated;
}

void sub_1B5605C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a11);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::WriteFstHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::Type();
    std::string::operator=((a7 + 32), v13);
    *(a7 + 56) = a4;
    *(a7 + 64) = a6;
    if ((*(*a1 + 112))(a1))
    {
      v14 = a3[25];
    }

    else
    {
      v14 = 0;
    }

    v15 = (*(*a1 + 120))(a1);
    if (a3[26])
    {
      v16 = v14 | 2;
    }

    else
    {
      v16 = v14;
    }

    if (!v15)
    {
      v16 = v14;
    }

    if (a3[27])
    {
      v16 |= 4u;
    }

    *(a7 + 60) = v16;
    fst::FstHeader::Write();
  }

  if ((*(*a1 + 112))(a1) && a3[25] == 1)
  {
    v17 = (*(*a1 + 112))(a1);
    (*(*v17 + 72))(v17, a2);
  }

  result = (*(*a1 + 120))(a1);
  if (result && a3[26] == 1)
  {
    v19 = *(*(*(*a1 + 120))(a1) + 72);

    return v19();
  }

  return result;
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::UpdateFstHeader(uint64_t a1, void *a2, uint64_t a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = *MEMORY[0x1E69E9840];
  MEMORY[0x1B8C84B80](v32);
  v16 = a2 + *(*a2 - 24);
  if ((v16[32] & 5) == 0)
  {
    v17 = *(v16 + 5);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    __p = 0u;
    v35 = 0u;
    v42 = a8;
    (*(*v17 + 40))(v33);
    if (v33[16] == -1)
    {
      std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
    }
  }

  MEMORY[0x1B8C84B90](v32);
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    v18 = fst::LogMessage::LogMessage(v33, &__p);
    v19 = fst::cerr(v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Fst::UpdateFstHeader: write failed: ", 36);
    v21 = *(a3 + 23);
    if (v21 >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    if (v21 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = *(a3 + 8);
    }
  }

  else
  {
    fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::WriteFstHeader(a1, a2, a3, a4, a5, a6, a7);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      v24 = fst::LogMessage::LogMessage(v33, &__p);
      v25 = fst::cerr(v24);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Fst::UpdateFstHeader: write failed: ", 36);
      v26 = *(a3 + 23);
      if (v26 >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      if (v26 >= 0)
      {
        v23 = *(a3 + 23);
      }

      else
      {
        v23 = *(a3 + 8);
      }
    }

    else
    {
      MEMORY[0x1B8C84B80](v33, a2);
      v27 = a2 + *(*a2 - 24);
      if ((v27[32] & 5) == 0)
      {
        (*(**(v27 + 5) + 32))(&__p);
        if (v42 == -1)
        {
          std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
        }
      }

      MEMORY[0x1B8C84B90](v33);
      if ((*(a2 + *(*a2 - 24) + 32) & 5) == 0)
      {
        return 1;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      v28 = fst::LogMessage::LogMessage(v33, &__p);
      v29 = fst::cerr(v28);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Fst::UpdateFstHeader: write failed: ", 36);
      v30 = *(a3 + 23);
      if (v30 >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      if (v30 >= 0)
      {
        v23 = *(a3 + 23);
      }

      else
      {
        v23 = *(a3 + 8);
      }
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
  fst::LogMessage::~LogMessage(v33);
  if (SBYTE7(v35) < 0)
  {
    operator delete(__p);
  }

  return 0;
}

uint64_t fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::Type()
{
  {
    operator new();
  }

  return fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::Type(void)::type;
}

uint64_t fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::WriteFile(fst *a1, uint64_t a2)
{
  v25[19] = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 8))
    {
LABEL_5:
      std::ofstream::basic_ofstream(&v20);
      if ((v24[*(v20.__r_.__value_.__r.__words[0] - 24)] & 5) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
        v4 = fst::LogMessage::LogMessage(&v19, &__p);
        v5 = fst::cerr(v4);
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Fst::Write: Can't open file: ", 29);
        v7 = *(a2 + 23);
        if (v7 >= 0)
        {
          v8 = a2;
        }

        else
        {
          v8 = *a2;
        }

        if (v7 >= 0)
        {
          v9 = *(a2 + 23);
        }

        else
        {
          v9 = *(a2 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
        fst::LogMessage::~LogMessage(&v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v10 = 0;
      }

      else
      {
        v13 = FLAGS_fst_align;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
        }

        else
        {
          __p = *a2;
        }

        v16 = 257;
        v17 = 1;
        v18 = v13;
        v10 = (*(*a1 + 96))(a1, &v20, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v20.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E54D0];
      *(v20.__r_.__value_.__r.__words + *(v20.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x1E69E54D0] + 24);
      MEMORY[0x1B8C84A00](&v20.__r_.__value_.__r.__words[1]);
      std::ostream::~ostream();
      MEMORY[0x1B8C85200](v25);
      return v10;
    }
  }

  else if (*(a2 + 23))
  {
    goto LABEL_5;
  }

  v11 = fst::cout(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "standard output");
  v12 = FLAGS_fst_align;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = __p;
  }

  v21 = 257;
  v22 = 1;
  v23 = v12;
  v10 = (*(*a1 + 96))(a1, v11, &v20);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v10;
}

void fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::SetFinal(void *a1, int a2, uint64_t *a3)
{
  v6 = *(a1[8] + 8 * a2);
  v20 = *v6;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v21, v6[1], v6[2], (v6[2] - v6[1]) >> 2);
  v16 = *a3;
  v18 = 0;
  v19 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, a3[1], a3[2], (a3[2] - a3[1]) >> 2);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::SetFinal(a1, a2, &v16);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  v7 = (*(*a1 + 24))(a1);
  v12 = v20;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v13, v21, v22, (v22 - v21) >> 2);
  v8 = *a3;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v9, a3[1], a3[2], (a3[2] - a3[1]) >> 2);
  a1[1] = a1[1] & 4 | fst::SetFinalProperties<fst::LatticeWeightTpl<float>>(v7, &v12, &v8);
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }
}

void sub_1B56068D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  v21 = *(v19 - 56);
  if (v21)
  {
    *(v19 - 48) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::AddArc(void *a1, int a2, float *a3)
{
  v6 = *(*(a1[8] + 8 * a2) + 56);
  if (v6 == *(*(a1[8] + 8 * a2) + 48))
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6 - 48);
  }

  v8 = (*(*a1 + 24))(a1);
  a1[1] = a1[1] & 4 | fst::AddArcProperties<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(v8, a2, a3, v7);
  v9 = *(a1[8] + 8 * a2);

  return fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::AddArc(v9, a3);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::DeleteStates(uint64_t a1, char **a2)
{
  v4 = (a1 + 64);
  std::vector<int>::vector[abi:ne200100](__p, (*(a1 + 72) - *(a1 + 64)) >> 3);
  v5 = *a2;
  v6 = a2[1] - *a2;
  if (v6)
  {
    v7 = v6 >> 2;
    v8 = __p[0];
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      v9 = *v5;
      v5 += 4;
      v8[v9] = -1;
      --v7;
    }

    while (v7);
  }

  v10 = *(a1 + 64);
  if (*(a1 + 72) == v10)
  {
    v13 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (*(__p[0] + v11) == -1)
      {
        fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::Destroy(*(v10 + 8 * v11));
      }

      else
      {
        *(__p[0] + v11) = v12;
        if (v11 != v12)
        {
          *(v10 + 8 * v12) = *(v10 + 8 * v11);
        }

        ++v12;
      }

      ++v11;
      v10 = *(a1 + 64);
    }

    while (v11 < (*(a1 + 72) - v10) >> 3);
    v13 = v12;
  }

  std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize(v4, v13);
  v14 = *(a1 + 64);
  if (*(a1 + 72) != v14)
  {
    v15 = 0;
    do
    {
      v16 = *(v14 + 8 * v15);
      v17 = v16[2];
      v18 = v16[3].i64[1] - v16[3].i64[0];
      if (v18)
      {
        v19 = v16[3].i64[0];
      }

      else
      {
        v19 = 0;
      }

      if (v18)
      {
        v20 = 0;
        v21 = 0;
        v22 = (v19 + 40);
        do
        {
          v23 = *(__p[0] + *v22);
          if (v23 == -1)
          {
            v25 = *(v22 - 5);
            v26.i64[0] = v25;
            v26.i64[1] = HIDWORD(v25);
            v17 = vaddq_s64(v17, vceqzq_s64(v26));
          }

          else
          {
            *v22 = v23;
            if (v20 != v21)
            {
              v34 = v17;
              v24 = (v19 + 48 * v21);
              *v24 = *(v22 - 5);
              fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v24 + 1, (v22 - 8));
              *(v19 + 48 * v21 + 40) = *v22;
              v14 = *v4;
              v17 = v34;
            }

            ++v21;
          }

          ++v20;
          v16 = *(v14 + 8 * v15);
          v27 = 0xAAAAAAAAAAAAAAABLL * ((v16[3].i64[1] - v16[3].i64[0]) >> 4);
          v22 += 12;
        }

        while (v20 < v27);
        v28 = v17.i64[1];
        v29 = v17.i64[0];
      }

      else
      {
        v21 = 0;
        v27 = 0;
        v28 = v16[2].i64[1];
        v29 = v16[2].i64[0];
      }

      fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::DeleteArcs(v16, v27 - v21);
      v14 = *(a1 + 64);
      v30 = *(a1 + 72);
      v31 = *(v14 + 8 * v15);
      *(v31 + 32) = v29;
      *(v31 + 40) = v28;
      ++v15;
    }

    while (v15 < (v30 - v14) >> 3);
  }

  v32 = *(a1 + 88);
  if (v32 == -1)
  {
    v33 = __p[0];
    if (!__p[0])
    {
      return;
    }
  }

  else
  {
    v33 = __p[0];
    *(a1 + 88) = *(__p[0] + v32);
  }

  __p[1] = v33;
  operator delete(v33);
}

void sub_1B5606C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::__construct_one_at_end[abi:ne200100]<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>> const&>(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  v3[2] = 0;
  v3[3] = 0;
  v3[1] = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((v3 + 1), a2[1], a2[2], (a2[2] - a2[1]) >> 2);
  *(a1 + 8) = v3 + 4;
  return result;
}

uint64_t std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::__move_range(uint64_t result, uint64_t a2, unint64_t a3, char *a4)
{
  v6 = result;
  v7 = *(result + 8);
  v8 = (a2 + v7 - a4);
  v9 = v7;
  if (v8 < a3)
  {
    v11 = v7 + 8;
    do
    {
      *(v11 - 1) = *v8;
      v11[1] = 0;
      v11[2] = 0;
      *v11 = 0;
      result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v11, v8[1], v8[2], (v8[2] - v8[1]) >> 2);
      v8 += 4;
      v11 += 4;
    }

    while (v8 < a3);
    v9 = (v11 - 1);
  }

  *(v6 + 8) = v9;
  if (v7 != a4)
  {
    v12 = v7 - 32;
    v13 = a4 - v7;
    v14 = a2 + v7 - 32 - a4;
    do
    {
      result = fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v12, v14);
      v12 -= 32;
      v14 -= 32;
      v13 += 32;
    }

    while (v13);
  }

  return result;
}

uint64_t std::__split_buffer<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::emplace_back<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>> const&>(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v4 - *a1) >> 4;
      }

      v10 = a1[4];
      v12 = a1[4];
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>(v10, v9);
    }

    v8 = ((v7 >> 5) + 1) / -2;
    v5 = (v6 - 32 * (((v7 >> 5) + 1) / 2));
    if (v6 != v4)
    {
      do
      {
        fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v5, v6);
        v6 += 32;
        v5 += 4;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = v6 + 32 * v8;
    a1[2] = v5;
  }

  *v5 = *a2;
  v5[2] = 0;
  v5[3] = 0;
  v5[1] = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((v5 + 1), a2[1], a2[2], (a2[2] - a2[1]) >> 2);
  a1[2] += 32;
  return result;
}

uint64_t std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::__swap_out_circular_buffer(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>*>(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>*>(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t std::__split_buffer<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::__construct_at_end_with_size<std::move_iterator<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>*>>(uint64_t result, void *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a3)
  {
    v6 = (v4 + 8);
    v7 = 32 * a3;
    v4 += 32 * a3;
    do
    {
      *(v6 - 1) = *a2;
      v6[1] = 0;
      v6[2] = 0;
      *v6 = 0;
      result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v6, a2[1], a2[2], (a2[2] - a2[1]) >> 2);
      a2 += 4;
      v6 += 4;
      v7 -= 32;
    }

    while (v7);
  }

  *(v3 + 16) = v4;
  return result;
}

uint64_t std::vector<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>::__emplace_back_slow_path<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>(a1, a2);
  }

  else
  {
    std::vector<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>::__construct_one_at_end[abi:ne200100]<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>(a1, a2);
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

void fst::Connect<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(uint64_t a1)
{
  memset(v4, 0, sizeof(v4));
  v2 = 0;
  memset(v3, 0, sizeof(v3));
  v1[0] = 0;
  v1[1] = v4;
  v1[2] = v3;
  v1[3] = &v2;
  fst::DfsVisit<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(a1, v1);
}

void sub_1B5607240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v14 = *(v12 - 80);
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(v11 + 24);
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>::__construct_one_at_end[abi:ne200100]<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  *(v3 + 8) = *(a2 + 8);
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 16) = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v3 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  *(a1 + 8) = v3 + 40;
  return result;
}

uint64_t std::vector<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>::__emplace_back_slow_path<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>>(a1, v6);
  }

  v7 = 40 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 40 * v2;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(40 * v2 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  *&v16 = v16 + 40;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>,std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::~__split_buffer(&v14);
  return v13;
}

void sub_1B5607420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>,std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = *v7;
      *(v4 + 8) = *(v7 + 8);
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 16) = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4 + 16, *(v7 + 16), *(v7 + 24), (*(v7 + 24) - *(v7 + 16)) >> 2);
      v7 += 40;
      v4 = v13 + 40;
      v13 += 40;
    }

    while (v7 != a3);
    v11 = 1;
    while (v6 != a3)
    {
      v8 = *(v6 + 16);
      if (v8)
      {
        *(v6 + 24) = v8;
        operator delete(v8);
      }

      v6 += 40;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>,std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>,std::pair<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>,std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

int *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>> &,std::__wrap_iter<int *>>(int *a1, uint64_t **a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6 + 1];
    v9 = (2 * v6) | 1;
    v10 = 2 * v6 + 2;
    if (v10 < a3)
    {
      v11 = fst::ShortestPathCompare<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::operator()(a2, *v8, a1[v6 + 2]);
      if (v11)
      {
        v12 = 4;
      }

      else
      {
        v12 = 0;
      }

      v8 = (v8 + v12);
      if (v11)
      {
        v9 = v10;
      }
    }

    *a1 = *v8;
    a1 = v8;
    v6 = v9;
  }

  while (v9 <= v7);
  return v8;
}

BOOL std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>> &,std::__wrap_iter<int *>>(_BOOL8 result, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 4 * (v4 >> 1));
    v9 = (a2 - 4);
    result = fst::ShortestPathCompare<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::operator()(a3, *v8, *(a2 - 4));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 4 * v7);
        result = fst::ShortestPathCompare<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::operator()(a3, *v8, v10);
        v9 = v11;
      }

      while (result);
      *v11 = v10;
    }
  }

  return result;
}

BOOL fst::ShortestPathCompare<int,fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::operator()(uint64_t **a1, int a2, int a3)
{
  v4 = **a1;
  v5 = (v4 + 40 * a2);
  v6 = (v4 + 40 * a3);
  v7 = *v5;
  v8 = *(a1 + 4);
  if (*v5 == LODWORD(v8))
  {
    *v32 = 0u;
    v33 = 0u;
  }

  else
  {
    v9 = *a1[1];
    if (SLODWORD(v7) >= ((a1[1][1] - v9) >> 5))
    {
      v32[0] = vneg_f32(0x7F0000007FLL);
      v33 = 0uLL;
      v32[1] = 0;
      v7 = v8;
    }

    else
    {
      v10 = v9 + 32 * SLODWORD(v7);
      v32[0] = *v10;
      v33 = 0uLL;
      v32[1] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v32[1], *(v10 + 8), *(v10 + 16), (*(v10 + 16) - *(v10 + 8)) >> 2);
      v7 = *(a1 + 4);
    }
  }

  v11 = *v6;
  if (*v6 == LODWORD(v7))
  {
    *__p = 0u;
    v31 = 0u;
    v12 = 0.0;
    v11 = v7;
    v13 = 0.0;
  }

  else
  {
    v14 = *a1[1];
    if (SLODWORD(v11) >= ((a1[1][1] - v14) >> 5))
    {
      v31 = 0uLL;
      __p[1] = 0;
      v12 = INFINITY;
      v13 = INFINITY;
    }

    else
    {
      v15 = v14 + 32 * SLODWORD(v11);
      __p[0] = *v15;
      v31 = 0uLL;
      __p[1] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p[1], *(v15 + 8), *(v15 + 16), (*(v15 + 16) - *(v15 + 8)) >> 2);
      v12 = *(__p + 1);
      v13 = *__p;
      v7 = *(a1 + 4);
      v11 = *v6;
    }
  }

  v16 = *v32 + v5[2];
  v17 = *(v32 + 1) + v5[3];
  v18 = v13 + v6[2];
  v19 = v12 + v6[3];
  v20 = v18 + v19;
  v21 = v16 + v17;
  if (*v5 == LODWORD(v7) && LODWORD(v11) != LODWORD(v7))
  {
    if (v20 >= v21 && (v18 >= v16 || v20 > v21) && (v16 != v18 || v17 != v19))
    {
      v26 = vabds_f32(v21, v20) <= *(a1 + 5);
      goto LABEL_47;
    }

    goto LABEL_34;
  }

  if (*v5 != LODWORD(v7) && LODWORD(v11) == LODWORD(v7))
  {
    if (v20 < v21 || (v18 < v16 ? (v27 = v20 <= v21) : (v27 = 0), v27))
    {
      if (v16 != v18 || v17 != v19)
      {
        v26 = vabds_f32(v21, v20) > *(a1 + 5);
        goto LABEL_47;
      }
    }
  }

  else if (v20 < v21 || v20 <= v21 && v18 < v16)
  {
LABEL_34:
    v26 = 1;
    goto LABEL_47;
  }

  v26 = 0;
LABEL_47:
  if (__p[1])
  {
    *&v31 = __p[1];
    operator delete(__p[1]);
  }

  if (v32[1])
  {
    *&v33 = v32[1];
    operator delete(v32[1]);
  }

  return v26;
}

void sub_1B560794C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::DeterminizeFst<fst::DefaultCommonDivisor<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D208F0;
  a1[1] = 0;
  if (!(*(*a2 + 64))(a2, 0x10000, 1))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v3 = fst::LogMessage::LogMessage(&v8, __p);
    v4 = fst::cerr(v3);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "DeterminizeFst:", 15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " distance to final states computed for acceptors only", 53);
    fst::LogMessage::~LogMessage(&v8);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1[1] + 8) |= 4uLL;
  }

  operator new();
}

void sub_1B5607B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~ImplToFst(v18);
  _Unwind_Resume(a1);
}

_DWORD *fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::SetImpl(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    ++*(a2 + 56);
  }

  result = *(a1 + 8);
  if (result)
  {
    v6 = result[14] - 1;
    result[14] = v6;
    if (!v6)
    {
      result = (*(*result + 8))(result);
    }
  }

  *(a1 + 8) = a2;
  return result;
}

void *fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D209D0;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

void fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~DeterminizeFst(void *a1)
{
  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

void sub_1B5608114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~DeterminizeFstImplBase(v18);
  _Unwind_Resume(a1);
}

uint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~DeterminizeFstImplBase(void *a1)
{
  *a1 = &unk_1F2D20B38;
  v2 = a1[17];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~CacheBaseImpl(a1);
}

void fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(void *a1)
{
  fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>::Expand(void *a1, int a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>::GetLabelMap(a1, a2, &v8);
  v4 = v8;
  if (v8 != v9)
  {
    do
    {
      fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>::AddArc(a1, a2, (v4 + 5));
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v9);
  }

  fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::SetArcs(a1, a2);
  std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>>>>>::destroy(&v8, v9[0]);
}

uint64_t fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>::ComputeStart(uint64_t a1)
{
  if ((*(**(a1 + 136) + 24))(*(a1 + 136)) != -1)
  {
    *__p = 0u;
    v3 = 0u;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p[1], 0, 0, 0);
    operator new();
  }

  return 0xFFFFFFFFLL;
}

void sub_1B56086E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>::ComputeFinal@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(*(*(result + 184) + 88) + 8 * a2);
  *(a3 + 8) = 0;
  *a3 = vneg_f32(0x7F0000007FLL);
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  v5 = *v4;
  if (*v4)
  {
    v6 = result;
    while (1)
    {
      (*(**(v6 + 136) + 32))(&v16);
      v19 = 0;
      v20 = 0;
      v7 = vadd_f32(v5[2], v16);
      v8 = *a3;
      v9 = vadd_f32(vzip1_s32(*a3, v7), vzip2_s32(*a3, v7));
      if (v9.f32[0] >= v9.f32[1])
      {
        if (v9.f32[0] > v9.f32[1])
        {
          goto LABEL_6;
        }

        if ((vcgt_f32(v7, v8).u8[0] & 1) == 0)
        {
          break;
        }
      }

      v10 = (a3 + 8);
      v11 = (a3 + 16);
LABEL_7:
      v21 = v8;
      v23 = 0;
      v24 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, *v10, *v11, (*v11 - *v10) >> 2);
      *a3 = v21;
      if (&v21 != a3)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a3 + 8), __p, v23, (v23 - __p) >> 2);
      }

      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }

      if (v17)
      {
        v18 = v17;
        operator delete(v17);
      }

      v12 = *a3;
      v14 = 0;
      v15 = 0;
      v13 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v13, *(a3 + 8), *(a3 + 16), (*(a3 + 16) - *(a3 + 8)) >> 2);
      v21 = v12;
      v23 = 0;
      v24 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v13, v14, (v14 - v13) >> 2);
      *a3 = v21;
      if (&v21 != a3)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a3 + 8), __p, v23, (v23 - __p) >> 2);
      }

      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }

      if (v13)
      {
        v14 = v13;
        operator delete(v13);
      }

      result = fst::LatticeWeightTpl<float>::Member(a3);
      if ((result & 1) == 0)
      {
        *(v6 + 8) |= 4uLL;
      }

      v5 = *v5;
      if (!v5)
      {
        return result;
      }
    }

    v10 = (a3 + 8);
    v11 = (a3 + 16);
    if ((vcgt_f32(v8, v7).u8[0] & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v11 = &v19;
    v10 = &v20;
    v8 = v7;
    goto LABEL_7;
  }

  return result;
}

void sub_1B5608934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  v24 = *v21;
  if (*v21)
  {
    *v22 = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D20648;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D20B90;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *a2;
  *(a1 + 112) = *(a2 + 8);
  operator new();
}

{
  *a1 = &unk_1F2D20648;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D20B90;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

void sub_1B5608AC8(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

void fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~CacheBaseImpl(void *a1)
{
  fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~CacheBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void *fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::VectorCacheStore(void *a1, _BYTE *a2)
{
  *a1 = *a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a1 + 4;
  a1[5] = a1 + 4;
  a1[6] = 0;
  a1[7] = 0;
  fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::Clear(a1);
  a1[7] = a1[5];
  return a1;
}

void sub_1B5608B9C(_Unwind_Exception *a1)
{
  v4 = v3;
  std::__list_imp<char *>::clear(v2);
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~CacheBaseImpl(void *a1)
{
  *a1 = &unk_1F2D20B90;
  v2 = a1[15];
  if (v2)
  {
    v3 = fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::~VectorCacheStore(v2);
    MEMORY[0x1B8C85350](v3, 0x10A0C407A9BBF1FLL);
  }

  v4 = a1[9];
  if (v4)
  {
    operator delete(v4);
  }

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~FstImpl(a1);
}

void *fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::~VectorCacheStore(void *a1)
{
  fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::Clear(a1);
  std::__list_imp<char *>::clear(a1 + 4);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void *fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::CompactHashBiTable(void *a1, size_t a2)
{
  a1[1] = a1;
  a1[2] = a1;
  std::unordered_set<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::unordered_set((a1 + 3), a2, a1 + 1, a1 + 2);
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  if (a2)
  {
    std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(a1 + 10, a2);
  }

  return a1;
}

void sub_1B5608CE4(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 88) = v4;
    operator delete(v4);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v1 + 24);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::unordered_set(uint64_t a1, size_t a2, void *a3, void *a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *a3;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = *a4;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__rehash<true>(a1, a2);
  return a1;
}

uint64_t fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(void *a1)
{
  *a1 = &unk_1F2D20A80;
  v2 = a1[22];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x20C4093837F09);
  }

  v3 = a1[23];
  if (v3)
  {
    v4 = fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::~DefaultDeterminizeStateTable(v3);
    MEMORY[0x1B8C85350](v4, 0x10E0C400200E20DLL);
  }

  return fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~DeterminizeFstImplBase(a1);
}

uint64_t fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::~DefaultDeterminizeStateTable(uint64_t a1)
{
  v4 = a1 + 88;
  v2 = *(a1 + 88);
  v3 = *(v4 + 8);
  if (((v3 - v2) >> 3) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        std::__forward_list_base<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::clear(v2[v5]);
        MEMORY[0x1B8C85350](v6, 0x1020C405F07FB98);
        v2 = *(a1 + 88);
        v3 = *(a1 + 96);
      }

      ++v5;
    }

    while (v5 < ((v3 - v2) >> 3));
  }

  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 32);
  return a1;
}

void std::__forward_list_base<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::clear(void **a1)
{
  for (i = *a1; i; i = v3)
  {
    v3 = *i;
    std::__forward_list_base<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::__delete_node[abi:ne200100](a1, i);
  }

  *a1 = 0;
}

void sub_1B5609088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~DeterminizeFstImplBase(v18);
  _Unwind_Resume(a1);
}

void sub_1B5609218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~CacheBaseImpl(v15);
  _Unwind_Resume(a1);
}

void sub_1B56093D4(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::CopyStates(a1, a2);
    *(a1 + 56) = *(a1 + 40);
    *(a1 + 72) = *(a2 + 72);
    v4 = *(a2 + 76);
    *(a1 + 76) = v4;
    if (v4 == -1)
    {
      MutableState = 0;
    }

    else
    {
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::GetMutableState(a1, 0);
    }

    *(a1 + 80) = MutableState;
  }

  return a1;
}

uint64_t fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::GetMutableState(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v2 = (a1 + 8);
  if (a2 >= ((v4 - v3) >> 3))
  {
    v6 = 0;
    std::vector<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::resize(v2, a2 + 1, &v6);
    goto LABEL_5;
  }

  if (!*(v3 + 8 * a2))
  {
LABEL_5:
    operator new();
  }

  return *(v3 + 8 * a2);
}

void fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::CopyStates(void *a1, uint64_t a2)
{
  fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::Clear(a1);
  std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(a1 + 1, (*(a2 + 16) - *(a2 + 8)) >> 3);
  v4 = *(a2 + 8);
  if (*(a2 + 16) != v4)
  {
    v5 = 0;
    do
    {
      if (*(v4 + 8 * v5))
      {
        operator new();
      }

      v7 = a1[2];
      v6 = a1[3];
      if (v7 >= v6)
      {
        v9 = a1[1];
        v10 = (v7 - v9) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v11 = v6 - v9;
        v12 = v11 >> 2;
        if (v11 >> 2 <= (v10 + 1))
        {
          v12 = v10 + 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>((a1 + 1), v13);
        }

        v14 = (8 * v10);
        *v14 = 0;
        v8 = 8 * v10 + 8;
        v15 = a1[1];
        v16 = a1[2] - v15;
        v17 = v14 - v16;
        memcpy(v14 - v16, v15, v16);
        v18 = a1[1];
        a1[1] = v17;
        a1[2] = v8;
        a1[3] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v7 = 0;
        v8 = (v7 + 1);
      }

      a1[2] = v8;
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < (*(a2 + 16) - v4) >> 3);
  }
}

uint64_t fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::CacheState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 56);
  *(a1 + 48) = 0;
  *(a1 + 32) = v4;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>> const*>,std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>> const*>>(a1 + 48, v5, v6, 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 4));
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void sub_1B56097B4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>> const*>,std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>> const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5609838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>> const*,fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>> const*,fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      v7 = *(v6 + 8);
      *(v4 + 16) = 0;
      *(v4 + 8) = v7;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4 + 16, *(v6 + 16), *(v6 + 24), (*(v6 + 24) - *(v6 + 16)) >> 2);
      *(v4 + 40) = *(v6 + 40);
      v6 += 48;
      v4 = v12 + 48;
      v12 += 48;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>::GetLabelMap(void *a1, int a2, void *a3)
{
  v5 = **(*(a1[23] + 88) + 8 * a2);
  if (v5)
  {
    while (1)
    {
      v6 = v5[1].u32[0];
      v7 = a1[17];
      v20 = 0;
      (*(*v7 + 136))(v7, v6, v18);
      if (!v18[0])
      {
        break;
      }

      if (!(*(*v18[0] + 24))(v18[0]))
      {
        if (v18[0])
        {
          v8 = (*(*v18[0] + 32))();
        }

        else
        {
LABEL_7:
          v8 = (v18[1] + 48 * v20);
        }

        v15 = v8[5].i32[0];
        v16 = vadd_f32(v5[2], v8[1]);
        memset(__p, 0, sizeof(__p));
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(__p, 0, 0, 0);
        fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::FilterArc(a1[22], v8, &v5[1], &v15, a3);
      }

      if (!v18[0])
      {
        goto LABEL_11;
      }

      (*(*v18[0] + 8))();
LABEL_13:
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_14;
      }
    }

    if (v20 < v18[2])
    {
      goto LABEL_7;
    }

LABEL_11:
    if (v19)
    {
      --*v19;
    }

    goto LABEL_13;
  }

LABEL_14:
  v11 = *a3;
  v9 = a3 + 1;
  v10 = v11;
  if (v11 != v9)
  {
    do
    {
      fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>::NormArc(a1, (v10 + 5));
      v12 = v10[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v10[2];
          v14 = *v13 == v10;
          v10 = v13;
        }

        while (!v14);
      }

      v10 = v13;
    }

    while (v13 != v9);
  }
}

void sub_1B5609BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, _DWORD *a17)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  else if (a17)
  {
    --*a17;
  }

  _Unwind_Resume(exception_object);
}

void fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>::AddArc(uint64_t a1, int a2, uint64_t a3)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  v7[0] = *a3;
  v7[1] = v7[0];
  fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(&v8, a3 + 8);
  State = fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>::FindState(a1, *(a3 + 40));
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>>>::GetMutableState(*(a1 + 120), a2);
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::push_back[abi:ne200100]((MutableState + 48), v7);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_1B5609CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::SetArcs(uint64_t a1, int a2)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>>>::GetMutableState(*(a1 + 120), a2);
  fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>>>::SetArcs(*(a1 + 120), MutableState);
  v5 = *(MutableState + 48);
  v6 = *(MutableState + 56) - v5;
  if (v6)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 4);
    v8 = *(a1 + 68);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v9 = (v5 + 40);
    do
    {
      v11 = *v9;
      v9 += 12;
      v10 = v11;
      if (v11 >= v8)
      {
        v8 = v10 + 1;
        *(a1 + 68) = v10 + 1;
      }

      --v7;
    }

    while (v7);
  }

  result = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::SetExpandedState(a1, a2);
  *(MutableState + 72) |= 0xAu;
  return result;
}

void fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::FilterArc(uint64_t a1, __int32 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  if (*(std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a5, a2) + 10) == -1)
  {
    fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>::DeterminizeArc(&v6, a2);
  }

  std::__forward_list_base<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::__create_node[abi:ne200100]<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>> const&>();
}

void sub_1B5609E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>::NormArc(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  std::forward_list<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::sort[abi:ne200100](v4);
  v5 = *v4;
  if (!*v4)
  {
    return;
  }

  v6 = (a2 + 8);
  v7 = *v4;
  do
  {
    v8 = *(v7 + 4);
    v9 = *(v7 + 5);
    v11 = *(a2 + 8);
    v10 = *(a2 + 12);
    if ((v11 + v10) >= (v8 + v9))
    {
      if ((v11 + v10) > (v8 + v9) || (v11 >= v8 ? (v13 = v11 <= v8) : (v13 = 1), v12 = (a2 + 8), !v13))
      {
        v10 = *(v7 + 5);
        v11 = *(v7 + 4);
        v12 = v7 + 2;
      }
    }

    else
    {
      v12 = (a2 + 8);
    }

    v31.__locale_ = __PAIR64__(LODWORD(v10), LODWORD(v11));
    v33 = 0;
    v34 = 0;
    __p = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v12[1], v12[2], (v12[2] - v12[1]) >> 2);
    v6->__locale_ = v31.__locale_;
    if (v6 != &v31)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a2 + 16), __p, v33, (v33 - __p) >> 2);
    }

    if (__p)
    {
      v33 = __p;
      operator delete(__p);
    }

    if (v5 == v7 || *(v7 + 2) != *(v5 + 2))
    {
      v20 = *v7;
      v5 = v7;
      goto LABEL_30;
    }

    v16 = *(v5 + 4);
    v15 = *(v5 + 5);
    v14 = (v5 + 2);
    v17 = *(v7 + 4);
    v18 = *(v7 + 5);
    if ((v16 + v15) >= (v17 + v18))
    {
      if ((v16 + v15) > (v17 + v18))
      {
        goto LABEL_22;
      }

      if (v16 >= v17)
      {
        v19 = v5 + 2;
        if (v16 <= v17)
        {
          goto LABEL_23;
        }

LABEL_22:
        v15 = *(v7 + 5);
        v16 = *(v7 + 4);
        v19 = v7 + 2;
        goto LABEL_23;
      }
    }

    v19 = v5 + 2;
LABEL_23:
    v31.__locale_ = __PAIR64__(LODWORD(v15), LODWORD(v16));
    v33 = 0;
    v34 = 0;
    __p = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v19[1], v19[2], (v19[2] - v19[1]) >> 2);
    v14->__locale_ = v31.__locale_;
    if (v14 != &v31)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v5 + 3, __p, v33, (v33 - __p) >> 2);
    }

    if (__p)
    {
      v33 = __p;
      operator delete(__p);
    }

    if (!fst::LatticeWeightTpl<float>::Member(v5 + 4))
    {
      *(a1 + 8) |= 4uLL;
    }

    v20 = *v7;
    v21 = *v5;
    *v5 = **v5;
    std::__forward_list_base<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::__delete_node[abi:ne200100](v4, v21);
LABEL_30:
    v7 = v20;
  }

  while (v20);
  v22 = *v4;
  if (*v4)
  {
    do
    {
      v23 = vsub_f32(v22[2], v6->__locale_);
      *v24.f32 = v23;
      *&v24.u32[2] = v23;
      v25.i32[0] = vmovn_s32(vceqq_f32(v24, xmmword_1B5AE39F0)).u32[0];
      v25.i32[1] = vmovn_s32(vmvnq_s8(vceqq_f32(v24, v24))).i32[1];
      if (vmaxv_u16(v25))
      {
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v31);
          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "LatticeWeightTpl::Divide, NaN or invalid number produced. ", 58);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "[dividing by zero?]  Returning zero.", 36);
          kaldi::KaldiLogMessage::~KaldiLogMessage(&v31);
        }

        v27 = INFINITY;
        v28 = INFINITY;
      }

      else
      {
        if (v23.f32[1] == INFINITY || v23.f32[0] == INFINITY)
        {
          v27 = INFINITY;
        }

        else
        {
          v27 = v23.f32[0];
        }

        if (v23.f32[0] == INFINITY)
        {
          v28 = INFINITY;
        }

        else
        {
          v28 = v23.f32[1];
        }
      }

      v22[2].f32[0] = v27;
      v22[2].f32[1] = v28;
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v22[3], 0, 0, 0);
      LODWORD(v30) = *(a1 + 144);
      fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>::Quantize(&v22[2], &v31, v30);
      v22[2] = v31.__locale_;
      if (&v22[2] != &v31)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v22[3], __p, v33, (v33 - __p) >> 2);
      }

      if (__p)
      {
        v33 = __p;
        operator delete(__p);
      }

      v22 = *v22;
    }

    while (v22);
  }
}

void sub_1B560A1BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
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

void fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>::DeterminizeArc(float32x2_t *a1, __int32 *a2)
{
  a1->i32[0] = *a2;
  a1[1] = vneg_f32(0x7F0000007FLL);
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  operator new();
}

void sub_1B560A34C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>::Quantize(uint64_t a1@<X0>, float32x2_t *a2@<X8>, double a3@<D0>)
{
  v4 = vaddv_f32(*a1);
  v5 = 0x7F0000007FLL;
  if (v4 != -INFINITY)
  {
    if (v4 == INFINITY)
    {
      v5 = vneg_f32(0x7F0000007FLL);
    }

    else
    {
      v5 = vmul_n_f32(vrndm_f32(vadd_f32(vdiv_f32(*a1, vdup_lane_s32(*&a3, 0)), 0x3F0000003F000000)), *&a3);
    }
  }

  __p = 0;
  v7 = 0;
  v8 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 2);
  *a2 = v5;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&a2[1], __p, v7, (v7 - __p) >> 2);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_1B560A4DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>::FindState(uint64_t a1, float32x2_t **a2)
{
  State = fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::FindState(*(a1 + 184), a2);
  v5 = State;
  if (*(a1 + 152))
  {
    v6 = *(a1 + 160);
    if (State >= ((v6[1] - *v6) >> 5))
    {
      fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>::ComputeDistance(a1, a2, &v8);
      std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](v6, &v8);
      if (__p)
      {
        v10 = __p;
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_1B560A588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::FindState(void *a1, uint64_t a2)
{
  *v6 = a2;
  v2 = (a1[12] - a1[11]) >> 3;
  Id = fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::FindId(a1 + 1, v6, 1);
  if (Id != v2)
  {
    v4 = *v6;
    if (*v6)
    {
      std::__forward_list_base<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::clear(*v6);
      MEMORY[0x1B8C85350](v4, 0x1020C405F07FB98);
    }
  }

  return Id;
}

void fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>>::ComputeDistance(uint64_t a1@<X0>, float32x2_t **a2@<X1>, int32x2_t *a3@<X8>)
{
  v3 = vneg_f32(0x7F0000007FLL);
  a3[1] = 0;
  v4 = &a3[1];
  *a3 = v3;
  a3[3] = 0;
  a3[2] = 0;
  v5 = &a3[2];
  v6 = *a2;
  if (*a2)
  {
    while (1)
    {
      v9 = v6[1].i32[0];
      v10 = **(a1 + 152);
      if (v9 >= (*(*(a1 + 152) + 8) - v10) >> 5)
      {
        v24 = v3;
        v26 = 0;
        v27 = 0;
        v12 = v3;
        v25 = 0;
      }

      else
      {
        v11 = (v10 + 32 * v9);
        v24 = *v11;
        v26 = 0;
        v27 = 0;
        v25 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v25, *&v11[1], *&v11[2], (*&v11[2] - *&v11[1]) >> 2);
        v12 = v24;
      }

      v18 = 0;
      v19 = 0;
      v13 = vadd_f32(v6[2], v12);
      v14 = *a3;
      v15 = vadd_f32(vzip1_s32(*a3, v13), vzip2_s32(*a3, v13));
      if (v15.f32[0] >= v15.f32[1])
      {
        if (v15.f32[0] > v15.f32[1])
        {
          goto LABEL_8;
        }

        if ((vcgt_f32(v13, v14).u8[0] & 1) == 0)
        {
          break;
        }
      }

      v16 = v4;
      v17 = v5;
LABEL_9:
      v20 = v14;
      v22 = 0;
      v23 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, *v16, *v17, (*v17 - *v16) >> 2);
      *a3 = v20;
      if (&v20 != a3)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v4, __p, v22, (v22 - __p) >> 2);
      }

      if (__p)
      {
        v22 = __p;
        operator delete(__p);
      }

      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }

      v6 = *v6;
      if (!v6)
      {
        return;
      }
    }

    v16 = v4;
    v17 = v5;
    if ((vcgt_f32(v14, v13).u8[0] & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    v17 = &v18;
    v16 = &v19;
    v14 = v13;
    goto LABEL_9;
  }
}

void sub_1B560A7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v20 = *v17;
  if (*v17)
  {
    *v18 = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::FindId(void *a1, void *a2, int a3)
{
  a1[13] = a2;
  v6 = std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::find<int>(a1 + 3, &fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::kCurrentKey);
  if (v6)
  {
    return *(v6 + 4);
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a1[10];
  v9 = a1[11];
  v10 = a1[12];
  v11 = (v9 - v8) >> 3;
  v20 = v11;
  if (v9 >= v10)
  {
    if ((v11 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = v10 - v8;
    v14 = v13 >> 2;
    if (v13 >> 2 <= (v11 + 1))
    {
      v14 = v11 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>((a1 + 10), v15);
    }

    *(8 * v11) = *a2;
    v12 = 8 * v11 + 8;
    v16 = a1[10];
    v17 = a1[11] - v16;
    v18 = (8 * v11 - v17);
    memcpy(v18, v16, v17);
    v19 = a1[10];
    a1[10] = v18;
    a1[11] = v12;
    a1[12] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v9 = *a2;
    v12 = (v9 + 1);
  }

  a1[11] = v12;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 3, &v20);
  return v20;
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::find<int>(void *a1, int *a2)
{
  v4 = *a2;
  if (v4 < -1)
  {
    v7 = 0;
  }

  else
  {
    v5 = a1[4];
    if (v4 == -1)
    {
      v6 = *(v5 + 104);
    }

    else
    {
      v6 = (*(v5 + 80) + 8 * v4);
    }

    v7 = fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey::operator()(v5, *v6);
  }

  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v7)
    {
      if (fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual::operator()(a1 + 6, *(i + 4), *a2))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v8)
        {
          v14 %= *&v8;
        }
      }

      else
      {
        v14 &= *&v8 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual::operator()(uint64_t *a1, int a2, int a3)
{
  if (a2 < -1 || a3 < -1)
  {
    return a2 == a3;
  }

  v3 = *a1;
  if (a2 == -1)
  {
    v4 = *(v3 + 104);
  }

  else
  {
    v4 = (*(v3 + 80) + 8 * a2);
  }

  v6 = *v4;
  if (a3 == -1)
  {
    v7 = *(v3 + 104);
  }

  else
  {
    v7 = (*(v3 + 80) + 8 * a3);
  }

  if (*(*v7 + 8) == *(v6 + 8))
  {
    return std::operator==[abi:ne200100]<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,std::allocator<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>(*v7, v6);
  }

  else
  {
    return 0;
  }
}

uint64_t fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey::operator()(uint64_t a1, uint64_t **a2)
{
  result = *(a2 + 8);
  for (i = *a2; i; i = *i)
  {
    v4 = *(i + 4);
    v5 = *(i + 5);
    v6 = __CFADD__(v5, v4);
    v7 = (v5 + v4);
    if (v6)
    {
      v8 = 0x100000000;
    }

    else
    {
      v8 = 0;
    }

    result ^= (2 * result) ^ (32 * *(i + 2)) ^ (*(i + 2) >> 59) ^ (v8 | v7);
  }

  return result;
}

uint64_t std::operator==[abi:ne200100]<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,std::allocator<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>(uint64_t *a1, uint64_t *a2)
{
  while (1)
  {
    a1 = *a1;
    a2 = *a2;
    if (!a1 || a2 == 0)
    {
      break;
    }

    if (*(a1 + 2) != *(a2 + 2) || *(a1 + 4) != *(a2 + 4) || *(a1 + 5) != *(a2 + 5))
    {
      return 0;
    }
  }

  return (a1 == 0) ^ (a2 != 0);
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *a1, int *a2)
{
  v4 = *a2;
  if (v4 < -1)
  {
    v7 = 0;
  }

  else
  {
    v5 = a1[4];
    if (v4 == -1)
    {
      v6 = *(v5 + 104);
    }

    else
    {
      v6 = (*(v5 + 80) + 8 * v4);
    }

    v7 = fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey::operator()(v5, *v6);
  }

  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_24;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_24;
    }

LABEL_23:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_24;
    }
  }

  if ((fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual::operator()(a1 + 6, *(v13 + 4), *a2) & 1) == 0)
  {
    goto LABEL_23;
  }

  return v13;
}

uint64_t fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>>::GetMutableState(a1, a2);
  v4 = MutableState;
  if (*(a1 + 88) == 1)
  {
    v5 = *(MutableState + 72);
    if ((v5 & 4) == 0)
    {
      *(MutableState + 72) = v5 | 4;
      v6 = *(MutableState + 56) - *(MutableState + 48) + *(a1 + 112) + 80;
      *(a1 + 112) = v6;
      *(a1 + 104) = 1;
      if (v6 > *(a1 + 96))
      {
        fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>>>::GC(a1, MutableState, 0, 0.666);
      }
    }
  }

  return v4;
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  v3 = *(a1 + 76);
  if (v3 == a2)
  {
    return *(a1 + 80);
  }

  if (*(a1 + 72) == 1)
  {
    if (v3 == -1)
    {
      *(a1 + 76) = a2;
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::GetMutableState(a1, 0);
      *(a1 + 80) = MutableState;
      *(MutableState + 72) |= 4u;
      std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::reserve((MutableState + 48), 0x80uLL);
      return *(a1 + 80);
    }

    v5 = *(a1 + 80);
    if (!*(v5 + 76))
    {
      *(a1 + 76) = a2;
      fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::Reset(v5);
      result = *(a1 + 80);
      *(result + 72) |= 4u;
      return result;
    }

    *(v5 + 72) &= ~4u;
    *(a1 + 72) = 0;
  }

  v6 = a2 + 1;

  return fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::GetMutableState(a1, v6);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>>>::GC(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  if (*(a1 + 104) == 1)
  {
    if (FLAGS_v >= 2)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
      v8 = fst::LogMessage::LogMessage(v45, __p);
      v9 = fst::cerr(v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "GCCacheStore: Enter GC: object = ", 33);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "(", 1);
      v12 = MEMORY[0x1B8C84BB0](v11, a1);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "), free recently cached = ", 26);
      v14 = MEMORY[0x1B8C84BD0](v13, a3);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", cache size = ", 15);
      v16 = MEMORY[0x1B8C84C30](v15, *(a1 + 112));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", cache frac = ", 15);
      v17 = std::ostream::operator<<();
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", cache limit = ", 16);
      v19 = MEMORY[0x1B8C84C30](v18, *(a1 + 96));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "\n", 1);
      fst::LogMessage::~LogMessage(v45);
      if (v50 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v20 = (*(a1 + 96) * a4);
    v21 = *(a1 + 40);
    *(a1 + 56) = v21;
    while (v21 != a1 + 32)
    {
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = v22 - 1;
      }

      else
      {
        v23 = *(a1 + 76);
      }

      MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>>::GetMutableState(a1, v23);
      v25 = *(a1 + 112);
      if (v25 > v20 && !*(MutableState + 76))
      {
        if (a3)
        {
          if (MutableState != a2)
          {
            v26 = *(MutableState + 72);
LABEL_19:
            if ((v26 & 4) != 0)
            {
              v27 = *(MutableState + 56) - *(MutableState + 48) + 80;
              FstCheck(v27 <= v25, "(size) <= (cache_size_)", "../libquasar/libkaldi/tools/openfst/src/include/fst/cache.h", 730);
              *(a1 + 112) -= v27;
            }

            fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>::Delete(a1);
            v21 = *(a1 + 56);
            continue;
          }
        }

        else
        {
          v26 = *(MutableState + 72);
          if ((v26 & 8) == 0 && MutableState != a2)
          {
            goto LABEL_19;
          }
        }
      }

      *(MutableState + 72) &= ~8u;
      v21 = *(*(a1 + 56) + 8);
      *(a1 + 56) = v21;
    }

    if ((a3 & 1) != 0 || *(a1 + 112) <= v20)
    {
      v28 = *(a1 + 112);
      if (v20)
      {
        if (v28 > v20)
        {
          v29 = *(a1 + 96);
          do
          {
            v29 *= 2;
            v30 = v28 > 2 * v20;
            v20 *= 2;
          }

          while (v30);
          *(a1 + 96) = v29;
        }
      }

      else if (v28)
      {
        if (FLAGS_fst_error_fatal == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
        }

        v31 = fst::LogMessage::LogMessage(&v48, __p);
        v32 = fst::cerr(v31);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "GCCacheStore:GC: Unable to free all cached states", 49);
        fst::LogMessage::~LogMessage(&v48);
        if (v50 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>>>::GC(a1, a2, 1, a4);
    }

    if (FLAGS_v >= 2)
    {
      std::string::basic_string[abi:ne200100]<0>(v45, "INFO");
      v33 = fst::LogMessage::LogMessage(&v47, v45);
      v34 = fst::cerr(v33);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "GCCacheStore: Exit GC: object = ", 32);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "(", 1);
      v37 = MEMORY[0x1B8C84BB0](v36, a1);
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "), free recently cached = ", 26);
      v39 = MEMORY[0x1B8C84BD0](v38, a3);
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ", cache size = ", 15);
      v41 = MEMORY[0x1B8C84C30](v40, *(a1 + 112));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ", cache frac = ", 15);
      v42 = std::ostream::operator<<();
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, ", cache limit = ", 16);
      v44 = MEMORY[0x1B8C84C30](v43, *(a1 + 96));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "\n", 1);
      fst::LogMessage::~LogMessage(&v47);
      if (v46 < 0)
      {
        operator delete(v45[0]);
      }
    }
  }
}

void sub_1B560B378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>>>::SetArcs(uint64_t a1, uint64_t a2)
{
  fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::SetArcs(a2);
  if (*(a1 + 104) == 1 && (*(a2 + 72) & 4) != 0)
  {
    v4 = *(a2 + 56) - *(a2 + 48) + *(a1 + 112);
    *(a1 + 112) = v4;
    if (v4 > *(a1 + 96))
    {

      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>>>::GC(a1, a2, 0, 0.666);
    }
  }
}

uint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      v2 = (*(*a1 + 56))(a1);
      if (v2 != -1)
      {
        *(a1 + 64) = v2;
        *(a1 + 60) = 1;
        if (*(a1 + 68) <= v2)
        {
          *(a1 + 68) = v2 + 1;
        }
      }
    }
  }

  return *(a1 + 64);
}

uint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::Final@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::HasFinal(a1, a2) & 1) == 0)
  {
    (*(*a1 + 64))(&v11, a1, a2);
    v7 = v11;
    v9 = 0;
    v10 = 0;
    __p = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v12, v13, (v13 - v12) >> 2);
    fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::SetFinal(a1, a2, &v7);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (v12)
    {
      v13 = v12;
      operator delete(v12);
    }
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::Final(a1, a2, a3);
}

void sub_1B560B60C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::SetFinal(uint64_t a1, int a2, uint64_t *a3)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>>>::GetMutableState(*(a1 + 120), a2);
  v5 = *a3;
  v7 = 0;
  v8 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, a3[1], a3[2], (a3[2] - a3[1]) >> 2);
  *MutableState = v5;
  if (MutableState != &v5)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((MutableState + 8), __p, v7, (v7 - __p) >> 2);
  }

  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  *(MutableState + 72) |= 9u;
}

void sub_1B560B6E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = *(a1 + 120);
  if (*(v5 + 76) == a2)
  {
    v6 = (v5 + 80);
  }

  else
  {
    v6 = (*(v5 + 8) + 8 * a2 + 8);
  }

  v7 = *v6;
  *a3 = *v7;
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = 0;
  return std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a3 + 1), v7[1], v7[2], (v7[2] - v7[1]) >> 2);
}

unint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::NumArcs(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return 0xAAAAAAAAAAAAAAABLL * ((*(*v5 + 56) - *(*v5 + 48)) >> 4);
}

uint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::NumInputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 32);
}

uint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::NumOutputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 40);
}

void *fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::DeterminizeFst(void *a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D208F0;
  a1[1] = 0;
  v4 = *(a2 + 8);
  if (a3)
  {
    v5 = (*(*v4 + 40))(v4);
    v6 = a1[1];
    if (v6)
    {
      v7 = v6[14] - 1;
      v6[14] = v7;
      if (!v7)
      {
        (*(*v6 + 8))(v6);
      }
    }

    a1[1] = v5;
  }

  else
  {
    fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::SetImpl(a1, v4, 0);
  }

  return a1;
}

uint64_t fst::CacheStateIterator<fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::Done(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  if (v2 < *(v3 + 68))
  {
    return 0;
  }

  v5 = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::MinUnexpandedState(v3);
  if (v5 >= *(*(a1 + 16) + 68))
  {
    return 1;
  }

  v6 = v5;
  do
  {
    fst::ArcIterator<fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::ArcIterator(&v19, *(a1 + 8), v6);
    v7 = *(v19 + 48);
    v8 = 0xAAAAAAAAAAAAAAABLL * ((*(v19 + 56) - v7) >> 4);
    v9 = *(a1 + 16);
    v10 = v8 - v20;
    if (v8 > v20)
    {
      v11 = *(v9 + 68);
      v12 = (v7 + 48 * v20 + 40);
      do
      {
        v14 = *v12;
        v12 += 12;
        v13 = v14;
        if (v11 <= v14)
        {
          v11 = v13 + 1;
          *(v9 + 68) = v13 + 1;
        }

        --v10;
      }

      while (v10);
      v20 = v8;
    }

    fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::SetExpandedState(v9, v6);
    v15 = *(a1 + 24);
    v16 = *(a1 + 16);
    v17 = *(v16 + 68);
    --*(v19 + 76);
    v4 = v15 >= v17;
    if (v15 < v17)
    {
      break;
    }

    v6 = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::MinUnexpandedState(v16);
  }

  while (v6 < *(*(a1 + 16) + 68));
  return v4;
}

uint64_t *fst::ArcIterator<fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::ArcIterator(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 76);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    (*(**(a2 + 8) + 48))(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::InitArcIterator(uint64_t a1, uint64_t a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::InitArcIterator(a1, a2, a3);
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D20680;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

void fst::ShortestDistance<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::VectorFst();
  }

  fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(v3, a1);
}

void sub_1B560BEDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  fst::AutoQueue<int>::~AutoQueue(&a22);
  a22 = &a17;
  std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__destroy_vector::operator()[abi:ne200100](&a22);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~ImplToFst(&a20);
  _Unwind_Resume(a1);
}

uint64_t fst::ShortestDistance<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = *a3;
  v11 = *(a3 + 16);
  v12 = *(a3 + 20);
  v13 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  memset(v17, 0, 29);
  std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::clear[abi:ne200100](a2);
  fst::ShortestDistanceState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::ShortestDistance(v10, *(a3 + 12));
  if (BYTE12(v17[1]) == 1)
  {
    std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::clear[abi:ne200100](a2);
    v6 = vneg_f32(0x3F0000003FLL);
    v8 = 0;
    v9 = 0;
    __p = 0;
    std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::resize(a2, 1uLL, &v6);
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }
  }

  return fst::ShortestDistanceState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ShortestDistanceState(v10);
}

void sub_1B560C008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  fst::ShortestDistanceState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ShortestDistanceState(&a14);
  _Unwind_Resume(a1);
}

void fst::AutoQueue<int>::AutoQueue<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 7;
  *(a1 + 12) = 0;
  *a1 = &unk_1F2CFB668;
  *(a1 + 24) = 0u;
  v3 = a1 + 48;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v4 = (*(*a2 + 64))(a2, 0x4E00000000, 0);
  if ((v4 & 0x4000000000) == 0 && (*(*a2 + 24))(a2) != -1)
  {
    if ((v4 & 0x800000000) == 0)
    {
      if ((v4 & 0x200000000) == 0)
      {
        v6 = 0;
        v5[0] = v3;
        v5[1] = 0;
        v5[2] = 0;
        v5[3] = &v6;
        fst::DfsVisit<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>(a2, v5);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1B560C8B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  v30 = *v28;
  if (*v28)
  {
    *(v26 + 56) = v30;
    operator delete(v30);
  }

  v31 = *v27;
  if (*v27)
  {
    *(v26 + 32) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::AutoQueue<int>::SccQueueType<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::NaturalLess<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v12 = *(a3 + 8) - *a3;
  if (v12)
  {
    v13 = v12 >> 2;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    bzero(*a3, 4 * v13);
  }

  v30 = 0;
  (*(*a1 + 128))(a1, &v28);
  while (1)
  {
    result = v28;
    if (!v28)
    {
      if (v30 >= v29)
      {
        return result;
      }

LABEL_11:
      v16 = v30;
      goto LABEL_12;
    }

    v15 = (*(*v28 + 16))(v28);
    result = v28;
    if (v15)
    {
      break;
    }

    if (!v28)
    {
      goto LABEL_11;
    }

    v16 = (*(*v28 + 24))();
LABEL_12:
    v27 = 0;
    (*(*a1 + 136))(a1, v16, v25);
    while (1)
    {
      if (!v25[0])
      {
        if (v27 >= v25[2])
        {
          goto LABEL_44;
        }

        goto LABEL_18;
      }

      if ((*(*v25[0] + 24))(v25[0]))
      {
        break;
      }

      if (v25[0])
      {
        v18 = (*(*v25[0] + 32))();
        goto LABEL_19;
      }

LABEL_18:
      v18 = v25[1] + 48 * v27;
LABEL_19:
      v19 = *(*a2 + 4 * v16);
      if (v19 == *(*a2 + 4 * *(v18 + 40)))
      {
        v20 = *a3;
        if (!a4 || (v21 = *(v18 + 8), v22 = *(v18 + 12), (v21 + v22) < 0.0) || v21 < 0.0 && (v21 + v22) <= 0.0)
        {
          v23 = 1;
          goto LABEL_25;
        }

        if ((v20[v19] | 2) == 2)
        {
          v34 = *(v18 + 8);
          v33 = v22;
          v32 = 2139095040;
          v31 = INFINITY;
          if (v21 == INFINITY && v33 == v31 || (v34 = v21, v33 = v22, v32 = 0, v31 = 0.0, v21 == 0.0) && v33 == v31)
          {
            v23 = 2;
          }

          else
          {
            v23 = 3;
          }

LABEL_25:
          v20[v19] = v23;
        }

        *a5 = 0;
      }

      v17.n128_u32[0] = *(v18 + 8);
      v24 = *(v18 + 12);
      v34 = v17.n128_f32[0];
      v33 = v24;
      v32 = 2139095040;
      v31 = INFINITY;
      if (v17.n128_f32[0] != INFINITY || v33 != v31)
      {
        v34 = v17.n128_f32[0];
        v33 = v24;
        v32 = 0;
        v31 = 0.0;
        if (v17.n128_f32[0] != 0.0 || (v17.n128_f32[0] = v33, v33 != v31))
        {
          *a6 = 0;
        }
      }

      if (v25[0])
      {
        (*(*v25[0] + 40))(v25[0], v17);
      }

      else
      {
        ++v27;
      }
    }

    if (v25[0])
    {
      (*(*v25[0] + 8))();
      goto LABEL_46;
    }

LABEL_44:
    if (v26)
    {
      --*v26;
    }

LABEL_46:
    if (v28)
    {
      (*(*v28 + 32))(v28);
    }

    else
    {
      ++v30;
    }
  }

  if (v28)
  {
    return (*(*v28 + 8))();
  }

  return result;
}

void sub_1B560CE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  _Unwind_Resume(exception_object);
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>(uint64_t a1)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = &unk_1F2CFB748;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v3 = 0;
  v1 = a1 + 24;
  v2 = &v3;
  fst::DfsVisit<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::TopOrderVisitor<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>();
}

void sub_1B560CFE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v21 = v18[6];
  if (v21)
  {
    v18[7] = v21;
    operator delete(v21);
  }

  v22 = *v19;
  if (*v19)
  {
    v18[4] = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void sub_1B560D7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::ShortestDistanceState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::ShortestDistance(uint64_t *a1, int a2)
{
  if ((*(**a1 + 24))(*a1) == -1)
  {
    if (!(*(**a1 + 64))(*a1, 4, 0))
    {
      return;
    }

    v58 = a1 + 116;
    goto LABEL_119;
  }

  (*(**(a1[2] + 16) + 56))(*(a1[2] + 16));
  if ((*(a1 + 33) & 1) == 0)
  {
    std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::clear[abi:ne200100](a1[1]);
    std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::clear[abi:ne200100](a1 + 5);
    a1[9] = 0;
  }

  if (a2 == -1)
  {
    a2 = (*(**a1 + 24))();
  }

  v4 = a2;
  v5 = a1[1];
  v6 = *v5;
  if (a2 >= ((v5[1] - *v5) >> 5))
  {
    v7 = vneg_f32(0x7F0000007FLL);
    do
    {
      v67 = v7;
      v69 = 0;
      v70 = 0;
      __p = 0;
      std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](v5, &v67);
      if (__p)
      {
        v69 = __p;
        operator delete(__p);
      }

      v67 = v7;
      v69 = 0;
      v70 = 0;
      __p = 0;
      std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100]((a1 + 5), &v67);
      if (__p)
      {
        v69 = __p;
        operator delete(__p);
      }

      v67.i8[0] = 0;
      std::vector<BOOL>::push_back((a1 + 8), &v67);
      v5 = a1[1];
      v6 = *v5;
    }

    while (a2 >= ((v5[1] - *v5) >> 5));
  }

  if (*(a1 + 33) == 1)
  {
    v8 = a1[11];
    if (a2 >= ((a1[12] - v8) >> 2))
    {
      do
      {
        std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
        v8 = a1[11];
      }

      while (a2 >= ((a1[12] - v8) >> 2));
      v6 = *a1[1];
    }

    *(v8 + a2) = *(a1 + 28);
  }

  v9 = (v6 + 32 * a2);
  *v9 = 0;
  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v9 + 1, 0, 0, 0);
  v10 = a1 + 5;
  v11 = (a1[5] + 32 * v4);
  *v11 = 0;
  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v11 + 1, 0, 0, 0);
  v12 = a1 + 8;
  v13 = *(a1[2] + 16);
  v14 = *v13;
  *(a1[8] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
  (*(v14 + 24))(v13, v4);
  v58 = a1 + 116;
  v15 = vneg_f32(0x7F0000007FLL);
  do
  {
    if ((*(**(a1[2] + 16) + 48))(*(a1[2] + 16)))
    {
      goto LABEL_115;
    }

    v16 = (*(**(a1[2] + 16) + 16))(*(a1[2] + 16));
    (*(**(a1[2] + 16) + 32))(*(a1[2] + 16));
    for (i = a1[1]; v16 >= ((i[1] - *i) >> 5); i = a1[1])
    {
      v67 = v15;
      v69 = 0;
      v70 = 0;
      __p = 0;
      std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](i, &v67);
      if (__p)
      {
        v69 = __p;
        operator delete(__p);
      }

      v67 = v15;
      v69 = 0;
      v70 = 0;
      __p = 0;
      std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100]((a1 + 5), &v67);
      if (__p)
      {
        v69 = __p;
        operator delete(__p);
      }

      v67.i8[0] = 0;
      std::vector<BOOL>::push_back((a1 + 8), &v67);
    }

    if (*(a1 + 32) == 1)
    {
      (*(**a1 + 32))(&v67);
      v63.i32[0] = v67.i32[1];
      v72.i32[0] = v67.i32[0];
      v59.i32[0] = 2139095040;
      v76 = INFINITY;
      v18 = v67.f32[0] != INFINITY || v63.f32[0] != v76;
      if (__p)
      {
        v69 = __p;
        operator delete(__p);
      }

      if (v18)
      {
LABEL_115:
        ++*(a1 + 28);
        if (!(*(**a1 + 64))(*a1, 4, 0))
        {
          return;
        }

LABEL_119:
        *v58 = 1;
        return;
      }
    }

    *(*v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v16);
    v19 = *v10 + 32 * v16;
    v72 = *v19;
    v74 = 0;
    v75 = 0;
    v73 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v73, *(v19 + 8), *(v19 + 16), (*(v19 + 16) - *(v19 + 8)) >> 2);
    v20 = (*v10 + 32 * v16);
    *v20 = v15;
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v20[1], 0, 0, 0);
    v21 = *a1;
    v22 = **a1;
    v71 = 0;
    (*(v22 + 136))(v21, v16, &v67);
    while (1)
    {
      if (!*&v67)
      {
        if (v71 >= v69)
        {
          v46 = 10;
          goto LABEL_106;
        }

        goto LABEL_39;
      }

      v23 = (*(**&v67 + 24))(v67);
      v26 = v67;
      if (v23)
      {
        break;
      }

      if (v67)
      {
        v27 = (*(**&v67 + 32))();
        goto LABEL_40;
      }

LABEL_39:
      v27 = (__p + 48 * v71);
LABEL_40:
      v28 = a1[1];
      for (j = v27[5].i32[0]; j >= (v28[1] - *v28) >> 5; j = v27[5].i32[0])
      {
        v63 = v15;
        v65 = 0;
        v66 = 0;
        v64 = 0;
        std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](v28, &v63);
        if (v64)
        {
          v65 = v64;
          operator delete(v64);
        }

        v63 = v15;
        v65 = 0;
        v66 = 0;
        v64 = 0;
        std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100]((a1 + 5), &v63);
        if (v64)
        {
          v65 = v64;
          operator delete(v64);
        }

        v63.i8[0] = 0;
        std::vector<BOOL>::push_back((a1 + 8), &v63);
        v28 = a1[1];
      }

      if (*(a1 + 33) == 1)
      {
        while (1)
        {
          v30 = a1[11];
          LODWORD(j) = v27[5].i32[0];
          if (j < ((a1[12] - v30) >> 2))
          {
            break;
          }

          std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
        }

        v28 = a1[1];
        if (*(v30 + j) != *(a1 + 28))
        {
          v31 = (*v28 + 32 * j);
          *v31 = v15;
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v31[1], 0, 0, 0);
          v32 = (*v10 + 32 * v27[5].i32[0]);
          *v32 = v15;
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v32[1], 0, 0, 0);
          v28 = a1[1];
          j = a1[11];
          v33 = *(a1 + 28);
          v34 = v27[5].i32[0];
          *(a1[8] + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v34);
          *(j + 4 * v34) = v33;
          LODWORD(j) = v27[5].i32[0];
        }
      }

      v35 = j;
      v36 = (*v28 + 32 * j);
      v37 = *v10;
      v38 = vadd_f32(v72, v27[1]);
      v63 = v38;
      v65 = 0;
      v66 = 0;
      v64 = 0;
      v39 = *v36;
      v40 = vadd_f32(vzip1_s32(*v36, v38), vzip2_s32(*v36, v38));
      v41 = v40.f32[1];
      if (v40.f32[0] < v40.f32[1])
      {
LABEL_52:
        v42 = v36;
        goto LABEL_55;
      }

      if (v40.f32[0] > v40.f32[1])
      {
        goto LABEL_54;
      }

      if (vcgt_f32(v38, v39).u8[0])
      {
        goto LABEL_52;
      }

      v42 = v36;
      if (vcgt_f32(v39, v38).u8[0])
      {
LABEL_54:
        v42 = &v63;
        v39 = v38;
      }

LABEL_55:
      v59 = v39;
      v61 = 0;
      v62 = 0;
      v60 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v60, *&v42[1], *&v42[2], (*&v42[2] - *&v42[1]) >> 2);
      v24.n128_u32[0] = v36->i32[0];
      v25.n128_u32[0] = v36->u32[1];
      if (*v36->i32 == v59.f32[0] && v25.n128_f32[0] == v59.f32[1])
      {
        v45 = 1;
      }

      else
      {
        v44 = v24.n128_f32[0] + v25.n128_f32[0];
        v25.n128_f32[0] = v59.f32[0] + v59.f32[1];
        v24.n128_f32[0] = vabds_f32(v44, v59.f32[0] + v59.f32[1]);
        v45 = v24.n128_f32[0] <= *(a1 + 7);
      }

      if (v60)
      {
        v61 = v60;
        operator delete(v60);
      }

      if (v45)
      {
        goto LABEL_64;
      }

      v48 = *v36;
      v49 = vaddv_f32(*v36);
      if (v49 < v41)
      {
        v50 = v36;
        goto LABEL_75;
      }

      if (v49 > v41)
      {
LABEL_71:
        v50 = &v63;
        v48 = v38;
        goto LABEL_75;
      }

      if (vcgt_f32(v38, v48).u8[0])
      {
        v50 = v36;
      }

      else
      {
        v50 = v36;
        if (vcgt_f32(v48, v38).u8[0])
        {
          goto LABEL_71;
        }
      }

LABEL_75:
      v59 = v48;
      v61 = 0;
      v62 = 0;
      v60 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v60, *&v50[1], *&v50[2], (*&v50[2] - *&v50[1]) >> 2);
      *v36 = v59;
      if (v36 != &v59)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v36[1], v60, v61, (v61 - v60) >> 2);
      }

      if (v60)
      {
        v61 = v60;
        operator delete(v60);
      }

      v51 = (v37 + 32 * v35);
      v52 = *v51;
      v53 = vaddv_f32(*v51);
      if (v53 < v41)
      {
LABEL_80:
        v54 = v51;
        goto LABEL_83;
      }

      if (v53 > v41)
      {
        goto LABEL_82;
      }

      if (vcgt_f32(v38, v52).u8[0])
      {
        goto LABEL_80;
      }

      v54 = v51;
      if (vcgt_f32(v52, v38).u8[0])
      {
LABEL_82:
        v54 = &v63;
        v52 = v38;
      }

LABEL_83:
      v59 = v52;
      v61 = 0;
      v62 = 0;
      v60 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v60, *&v54[1], *&v54[2], (*&v54[2] - *&v54[1]) >> 2);
      *v51 = v59;
      if (v51 != &v59)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v51[1], v60, v61, (v61 - v60) >> 2);
      }

      if (v60)
      {
        v61 = v60;
        operator delete(v60);
      }

      if (fst::LatticeWeightTpl<float>::Member(v36) && fst::LatticeWeightTpl<float>::Member(v51))
      {
        v55 = **(a1[2] + 16);
        if ((*(a1[8] + ((v27[5].i32[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v27[5].i32[0]))
        {
          (*(v55 + 40))();
LABEL_64:
          v46 = 0;
          v47 = 1;
          goto LABEL_92;
        }

        (*(v55 + 24))();
        v46 = 0;
        v56 = v27[5].i32[0];
        v47 = 1;
        *(*v12 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
      }

      else
      {
        v47 = 0;
        v46 = 1;
        *v58 = 1;
      }

LABEL_92:
      if (v64)
      {
        operator delete(v64);
      }

      v26 = v67;
      if (!v47)
      {
        goto LABEL_103;
      }

      if (v67)
      {
        (*(**&v67 + 40))(v24, v25);
      }

      else
      {
        ++v71;
      }
    }

    v46 = 10;
LABEL_103:
    if (v26)
    {
      (*(**&v26 + 8))(v26, v24, v25);
      goto LABEL_108;
    }

LABEL_106:
    if (v70)
    {
      --*v70;
    }

LABEL_108:
    if (v46 == 10)
    {
      v57 = 0;
    }

    else
    {
      v57 = v46;
    }

    if (v73)
    {
      v74 = v73;
      operator delete(v73);
    }
  }

  while (!v57);
}

void sub_1B560E38C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B560E528(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::resize(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = (v3 - *result) >> 4;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *result + 16 * a2;
      if (v3 != v6)
      {
        v7 = v3 - 16;
        v8 = (v3 - 16);
        v9 = (v3 - 16);
        do
        {
          v10 = *v9;
          v9 -= 2;
          result = (*v10)(v8);
          v7 -= 16;
          v11 = v8 == v6;
          v8 = v9;
        }

        while (!v11);
      }

      v2[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    return std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::__append(result, v5);
  }

  return result;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>*>(uint64_t a1, void (***a2)(void), void (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = (a4 + 8);
    v7 = a2;
    do
    {
      v8 = v7[1];
      *v6 = v8;
      ++*(v8 + 14);
      *(v6 - 1) = &unk_1F2D1EFE8;
      v7 += 2;
      a4 += 16;
      v6 += 2;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      v9 = a2;
      v10 = a2;
      do
      {
        v11 = *v10;
        v10 += 2;
        (*v11)(v5);
        v9 += 2;
        v5 = v10;
      }

      while (v10 != a3);
    }
  }
}

uint64_t std::__split_buffer<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 16);
    *(a1 + 16) = i - 16;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::__append(void *result, unint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  if (a2 > (v2 - v3) >> 4)
  {
    v4 = a2 + ((v3 - *result) >> 4);
    if (!(v4 >> 60))
    {
      v5 = v2 - *result;
      if (v5 >> 3 > v4)
      {
        v4 = v5 >> 3;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFF0)
      {
        v6 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v6 = v4;
      }

      if (v6)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>(result, v6);
      }

      fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::VectorFst();
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (a2)
  {
    fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::VectorFst();
  }

  result[1] = v3;
  return result;
}

void sub_1B560E870(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::quasar::TranslationUtil::PathElement>::__assign_with_size[abi:ne200100]<kaldi::quasar::TranslationUtil::PathElement*,kaldi::quasar::TranslationUtil::PathElement*>(uint64_t a1, kaldi::quasar::TranslationUtil::PathElement *a2, kaldi::quasar::TranslationUtil::PathElement *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<kaldi::quasar::TranslationUtil::PathElement>::__vdeallocate(a1);
    if (a4 <= 0x111111111111111)
    {
      v9 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 4) >= 0x88888888888888)
      {
        v10 = 0x111111111111111;
      }

      else
      {
        v10 = v9;
      }

      std::vector<kaldi::quasar::TranslationUtil::PathElement>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0xEEEEEEEEEEEEEEEFLL * ((v11 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        kaldi::quasar::TranslationUtil::PathElement::operator=(v8, v6);
        v6 += 240;
        v8 = (v8 + 240);
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    while (v11 != v8)
    {
      v11 = (v11 - 240);
      kaldi::quasar::TranslationUtil::PathElement::~PathElement(v11);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        kaldi::quasar::TranslationUtil::PathElement::operator=(v8, v14);
        v14 += 240;
        v8 = (v8 + 240);
        v13 -= 240;
      }

      while (v13);
      v11 = *(a1 + 8);
    }

    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::PathElement>,kaldi::quasar::TranslationUtil::PathElement*,kaldi::quasar::TranslationUtil::PathElement*,kaldi::quasar::TranslationUtil::PathElement*>(a1, (v6 + v12), a3, v11);
  }
}

void std::vector<kaldi::quasar::TranslationUtil::PathElement>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        kaldi::quasar::TranslationUtil::PathElement::~PathElement((v3 - 240));
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t kaldi::quasar::TranslationUtil::PathElement::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  if (a1 == a2)
  {
    std::string::operator=((a1 + 56), (a2 + 56));
    *(a1 + 80) = *(a2 + 80);
  }

  else
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 32), *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
    std::string::operator=((a1 + 56), (a2 + 56));
    *(a1 + 80) = *(a2 + 80);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 88), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 112), *(a2 + 112), *(a2 + 120), (*(a2 + 120) - *(a2 + 112)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 136), *(a2 + 136), *(a2 + 144), (*(a2 + 144) - *(a2 + 136)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 160), *(a2 + 160), *(a2 + 168), (*(a2 + 168) - *(a2 + 160)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 184), *(a2 + 184), *(a2 + 192), (*(a2 + 192) - *(a2 + 184)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 208), *(a2 + 208), *(a2 + 216), (*(a2 + 216) - *(a2 + 208)) >> 2);
  }

  *(a1 + 232) = *(a2 + 232);
  return a1;
}

uint64_t std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__emplace_back_slow_path<kaldi::quasar::TranslationUtil::NbestElement const&>(uint64_t a1, const kaldi::quasar::TranslationUtil::NbestElement *a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0xF0F0F0F0F0F0F0)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 16) - *a1) >> 4) >= 0x78787878787878)
  {
    v6 = 0xF0F0F0F0F0F0F0;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::NbestElement>>(a1, v6);
  }

  v13 = 0;
  v14 = 272 * v2;
  kaldi::quasar::TranslationUtil::NbestElement::NbestElement((272 * v2), a2);
  v15 = 272 * v2 + 272;
  v7 = *(a1 + 8);
  v8 = (272 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::NbestElement>,kaldi::quasar::TranslationUtil::NbestElement*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<kaldi::quasar::TranslationUtil::NbestElement>::~__split_buffer(&v13);
  return v12;
}

void sub_1B560ECB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::quasar::TranslationUtil::NbestElement>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::NbestElement>,kaldi::quasar::TranslationUtil::NbestElement*>(int a1, kaldi::quasar::TranslationUtil::NbestElement *a2, kaldi::quasar::TranslationUtil::NbestElement *a3, kaldi::quasar::TranslationUtil::NbestElement *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, v8);
      v8 = (v8 + 272);
      this = (this + 272);
      v7 -= 272;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v6);
      v6 = (v6 + 272);
    }
  }
}

void sub_1B560ED4C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 272);
    do
    {
      kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v4);
      v4 = (v5 - 272);
      v2 += 272;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<kaldi::quasar::TranslationUtil::NbestElement>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 272;
    kaldi::quasar::TranslationUtil::NbestElement::~NbestElement((i - 272));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 16;
      v7 = v4 - 16;
      v8 = v4 - 16;
      do
      {
        v9 = *v8;
        v8 -= 16;
        (*v9)(v7);
        v6 -= 16;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DecodeOptions(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), a2[2], a2[3]);
  }

  else
  {
    v5 = *(a2 + 1);
    *(a1 + 32) = a2[4];
    *(a1 + 16) = v5;
  }

  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), a2[5], a2[6]);
  }

  else
  {
    v6 = *(a2 + 5);
    *(a1 + 56) = a2[7];
    *(a1 + 40) = v6;
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), a2[8], a2[9]);
  }

  else
  {
    v7 = *(a2 + 4);
    *(a1 + 80) = a2[10];
    *(a1 + 64) = v7;
  }

  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), a2[11], a2[12]);
  }

  else
  {
    v8 = *(a2 + 11);
    *(a1 + 104) = a2[13];
    *(a1 + 88) = v8;
  }

  if (*(a2 + 135) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 112), a2[14], a2[15]);
  }

  else
  {
    v9 = *(a2 + 7);
    *(a1 + 128) = a2[16];
    *(a1 + 112) = v9;
  }

  if (*(a2 + 159) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 136), a2[17], a2[18]);
  }

  else
  {
    v10 = *(a2 + 17);
    *(a1 + 152) = a2[19];
    *(a1 + 136) = v10;
  }

  v11 = *(a2 + 12);
  v12 = *(a2 + 13);
  v13 = *(a2 + 14);
  v15 = *(a2 + 10);
  v14 = *(a2 + 11);
  *(a1 + 240) = 0;
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 176) = v14;
  *(a1 + 192) = v11;
  *(a1 + 160) = v15;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<std::shared_ptr<kaldi::quasar::PhraseBook>>::__init_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::PhraseBook>*,std::shared_ptr<kaldi::quasar::PhraseBook>*>(a1 + 240, a2[30], a2[31], (a2[31] - a2[30]) >> 4);
  if (*(a2 + 287) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 264), a2[33], a2[34]);
  }

  else
  {
    v16 = *(a2 + 33);
    *(a1 + 280) = a2[35];
    *(a1 + 264) = v16;
  }

  v17 = *(a2 + 18);
  v18 = *(a2 + 19);
  *(a1 + 320) = *(a2 + 80);
  *(a1 + 288) = v17;
  *(a1 + 304) = v18;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 328, a2[41], a2[42], 0xAAAAAAAAAAAAAAABLL * ((a2[42] - a2[41]) >> 3));
  return a1;
}

void sub_1B560F058(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 159) < 0)
  {
    operator delete(*(v2 + 136));
  }

  if (*(v2 + 135) < 0)
  {
    operator delete(*(v2 + 112));
  }

  if (*(v2 + 111) < 0)
  {
    operator delete(*(v2 + 88));
  }

  if (*(v2 + 87) < 0)
  {
    operator delete(*(v2 + 64));
  }

  if (*(v2 + 63) < 0)
  {
    operator delete(*(v2 + 40));
  }

  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::shared_ptr<kaldi::quasar::PhraseBook>>::__init_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::PhraseBook>*,std::shared_ptr<kaldi::quasar::PhraseBook>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B560F180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<kaldi::quasar::PhraseBook>>,std::shared_ptr<kaldi::quasar::PhraseBook>*,std::shared_ptr<kaldi::quasar::PhraseBook>*,std::shared_ptr<kaldi::quasar::PhraseBook>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::PhraseBook>>,std::shared_ptr<kaldi::quasar::PhraseBook>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::PhraseBook>>,std::shared_ptr<kaldi::quasar::PhraseBook>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineItf>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void *std::__tree<std::pair<float,int>>::__find_leaf_high(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    do
    {
      while (1)
      {
        v3 = v4;
        v7 = *(v4 + 7);
        if (v6 >= v7 && (v7 < v6 || *(a3 + 4) >= *(v4 + 8)))
        {
          break;
        }

        v4 = *v4;
        v8 = v3;
        if (!*v3)
        {
          goto LABEL_11;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v8 = v3 + 1;
  }

  else
  {
    v8 = v3;
  }

LABEL_11:
  *a2 = v3;
  return v8;
}

uint64_t std::vector<kaldi::SubVector<float>>::__emplace_back_slow_path<kaldi::SubVector<float> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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

  v14 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::Vector<float>>>(a1, v6);
  }

  v7 = 24 * v2;
  __p = 0;
  v11 = v7;
  v13 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  v12 = 24 * v2 + 24;
  std::vector<kaldi::SubVector<float>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 = (v12 - v11 - 24) % 0x18uLL + v11;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_1B560F498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<kaldi::SubVector<float>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
      *v5 = *v2;
      *(v5 + 2) = *(v2 + 8);
      v2 += 24;
      v5 += 3;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v6 = result[1];
  result[1] = a2[2];
  a2[2] = v6;
  v7 = result[2];
  result[2] = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

uint64_t kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare::NbestCompare(uint64_t a1, int a2, float a3, float a4)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  if (kaldi::g_kaldi_verbose_level >= 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v7, 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Initializing NbestCompare. alpha: ", 34);
    v5 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ", sigma: ", 9);
    std::ostream::operator<<();
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v7);
  }

  return a1;
}

void sub_1B560F5F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::AddInitialHypToCurrent<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 200);
  if (v3)
  {
    (**v3)(v3);
  }

  if (*(a2 + 184) == 2)
  {
    (*(**(a2 + 208) + 24))(*(a2 + 208));
  }

  operator new();
}

void std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    v4 = *(i - 40);
    if (v4)
    {
      *(i - 32) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>>::__emplace_back_slow_path<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement const&>(a1, a2);
  }

  else
  {
    std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>>::__construct_one_at_end[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement const&>(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>>::erase(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v12 = a2;
    }

    else
    {
      v6 = *a1;
      v7 = *a1 + a2;
      v8 = -*a1;
      v9 = *a1 + a3;
      do
      {
        v10 = v7 + v8;
        *(v7 + v8) = *(v9 + v8);
        std::vector<int>::__move_assign(v7 + v8 + 8, (v9 + v8 + 8));
        v11 = *(v9 + v8 + 32);
        *(v10 + 40) = *(v9 + v8 + 40);
        *(v10 + 32) = v11;
        v7 += 48;
        v9 += 48;
      }

      while (v9 + v8 != v5);
      v5 = a1[1];
      v12 = v7 - v6;
    }

    while (v5 != v12)
    {
      v13 = *(v5 - 40);
      if (v13)
      {
        *(v5 - 32) = v13;
        operator delete(v13);
      }

      v5 -= 48;
    }

    a1[1] = v12;
  }

  return a2;
}

uint64_t std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement>>::__emplace_back_slow_path<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement const&>(a1, a2);
  }

  else
  {
    std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement>>::__construct_one_at_end[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement const&>(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<unsigned long>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<unsigned long>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<unsigned long>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<unsigned long>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

uint64_t std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>>::__construct_one_at_end[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 8) = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  v6 = *(a2 + 32);
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 32) = v6;
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>>::__emplace_back_slow_path<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>>(a1, v6);
  }

  v7 = 48 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  *v7 = *a2;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 8) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v7 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  v8 = *(a2 + 32);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 32) = v8;
  *&v17 = v17 + 48;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement> &>::~__split_buffer(&v15);
  return v14;
}

void sub_1B560FDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v7 = *(v6 + 32);
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 32) = v7;
      v6 += 48;
      a4 += 48;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      v8 = *(v5 + 8);
      if (v8)
      {
        *(v5 + 16) = v8;
        operator delete(v8);
      }

      v5 += 48;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 40);
    if (v3)
    {
      *(v1 - 32) = v3;
      operator delete(v3);
    }

    v1 -= 48;
  }
}

uint64_t std::__split_buffer<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement> &>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement> &>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement> &>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 48;
    v5 = *(v2 - 40);
    if (v5)
    {
      *(v2 - 32) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 48;
    }
  }
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,std::__wrap_iter<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = a1 + 48 * (v4 >> 1);
    v8 = a2 - 48;
    v9 = *(a2 - 48);
    if (*v7 > v9)
    {
      v10 = *(a2 - 44);
      v17 = *(a2 - 40);
      v12 = *(a2 - 24);
      v11 = *(a2 - 16);
      *(a2 - 32) = 0;
      *(a2 - 24) = 0;
      *(a2 - 40) = 0;
      v18 = v11;
      v19 = *(a2 - 8);
      do
      {
        v13 = v8;
        v8 = v7;
        v14 = (v7 + 8);
        *v13 = *v7;
        std::vector<int>::__move_assign(v13 + 8, (v7 + 8));
        v15 = *(v8 + 32);
        *(v13 + 40) = *(v8 + 40);
        *(v13 + 32) = v15;
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = a1 + 48 * v6;
      }

      while (*v7 > v9);
      *v8 = v9;
      *(v8 + 4) = v10;
      v16 = *(v8 + 8);
      if (v16)
      {
        *(v8 + 16) = v16;
        operator delete(v16);
        *v14 = 0;
        v14[1] = 0;
        v14[2] = 0;
      }

      *(v8 + 8) = v17;
      *(v8 + 24) = v12;
      *(v8 + 32) = v18;
      *(v8 + 40) = v19;
    }
  }
}

uint64_t std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>>::__emplace_back_slow_path<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>>(a1, v6);
  }

  v7 = 48 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v8 = *(a2 + 32);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 32) = v8;
  *&v17 = 48 * v2 + 48;
  v9 = a1[1];
  v10 = 48 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement> &>::~__split_buffer(&v15);
  return v14;
}

void sub_1B56102B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare,std::__wrap_iter<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v11 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,std::__wrap_iter<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>>(a1, a3, a4);
    v12 = v11;
    if ((a2 - 48) == v11)
    {
      *v11 = v8;
      v17 = v11 + 1;
      v16 = v11[1];
      if (v16)
      {
        v12[2] = v16;
        operator delete(v16);
        *v17 = 0;
        v12[2] = 0;
        v12[3] = 0;
      }

      v12[1] = v7;
      v12[2] = v10;
      v12[3] = v9;
      v12[4] = v18;
      *(v12 + 10) = v19;
    }

    else
    {
      *v11 = *(a2 - 48);
      std::vector<int>::__move_assign((v11 + 1), (a2 - 40));
      v13 = *(a2 - 16);
      *(v12 + 10) = *(a2 - 8);
      v12[4] = v13;
      v14 = (v12 + 6);
      *(a2 - 48) = v8;
      v15 = *(a2 - 40);
      if (v15)
      {
        *(a2 - 32) = v15;
        operator delete(v15);
        *(a2 - 40) = 0;
        *(a2 - 32) = 0;
        *(a2 - 24) = 0;
      }

      *(a2 - 40) = v7;
      *(a2 - 32) = v10;
      *(a2 - 24) = v9;
      *(a2 - 16) = v18;
      *(a2 - 8) = v19;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,std::__wrap_iter<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>>(a1, v14, a3, 0xAAAAAAAAAAAAAAABLL * ((v14 - a1) >> 4));
    }
  }
}

void sub_1B5610418(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,std::__wrap_iter<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1;
    a1 += 48 * v5 + 48;
    v8 = 2 * v5;
    v5 = (2 * v5) | 1;
    v9 = v8 + 2;
    if (v9 < a3 && *a1 > *(a1 + 48))
    {
      a1 += 48;
      v5 = v9;
    }

    *v7 = *a1;
    std::vector<int>::__move_assign(v7 + 8, (a1 + 8));
    v10 = *(a1 + 32);
    *(v7 + 40) = *(a1 + 40);
    *(v7 + 32) = v10;
  }

  while (v5 <= v6);
  return a1;
}