void *std::vector<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::__append(void *result, unint64_t a2)
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

      fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::VectorFst();
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (a2)
  {
    fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::VectorFst();
  }

  result[1] = v3;
  return result;
}

void sub_1B50DC2AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void fst::RmEpsilon<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>(void *a1, uint64_t *a2, uint64_t a3)
{
  v72 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 24))(a1) == -1)
  {
    return;
  }

  v6 = (*(*a1 + 160))(a1);
  LOBYTE(v48) = 0;
  std::vector<BOOL>::vector(&v46, v6);
  v7 = (*(*a1 + 24))(a1);
  v8 = 0;
  *(v46 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
LABEL_3:
  if (v8 < (*(*a1 + 160))(a1))
  {
    v52 = 0;
    (*(*a1 + 136))(a1, v8, &v48);
    while (v48)
    {
      if ((*(*v48 + 24))(v48))
      {
        if (v48)
        {
          (*(*v48 + 8))();
          goto LABEL_26;
        }

LABEL_24:
        if (v51)
        {
          --*v51;
        }

LABEL_26:
        v8 = (v8 + 1);
        goto LABEL_3;
      }

      if (!v48)
      {
        goto LABEL_12;
      }

      v9 = (*(*v48 + 32))();
      v10 = v48;
      if (*v9)
      {
        goto LABEL_15;
      }

      if (v48)
      {
        v11 = (*(*v48 + 32))();
        v10 = v48;
        goto LABEL_14;
      }

LABEL_13:
      v10 = 0;
      v11 = &v49[6 * v52];
LABEL_14:
      if (*(v11 + 4))
      {
LABEL_15:
        if (v10)
        {
          v12 = (*(*v10 + 32))(v10);
          v10 = v48;
        }

        else
        {
LABEL_17:
          v10 = 0;
          v12 = &v49[6 * v52];
        }

        *(v46 + ((*(v12 + 40) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v12 + 40);
      }

      if (v10)
      {
        (*(*v10 + 40))(v10);
      }

      else
      {
        ++v52;
      }
    }

    if (v52 >= v50)
    {
      goto LABEL_24;
    }

LABEL_12:
    if (LODWORD(v49[6 * v52]))
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  memset(&v45, 0, sizeof(v45));
  v13 = (*(*a1 + 160))(a1);
  std::vector<int>::reserve(&v45, v13);
  if (((*(*a1 + 64))(a1, 0x4000000000, 0) & 0x4000000000) == 0)
  {
    if (((*(*a1 + 64))(a1, 0x800000000, 0) & 0x800000000) == 0)
    {
      v41 = 0;
      v42 = 0;
      p_p = 0;
      v44 = 0;
      v48 = &v42;
      v49 = 0;
      v50 = 0;
      v51 = &v41;
      fst::DfsVisit<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::SccVisitor<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>(a1, &v48);
    }

    v48 = 0;
    v49 = 0;
    v50 = 0;
    LOBYTE(__p) = 0;
    v42 = &v48;
    p_p = &__p;
    fst::DfsVisit<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::TopOrderVisitor<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>();
  }

  for (i = 0; ; i = v48 + 1)
  {
    LODWORD(v48) = i;
    if (i >= (*(*a1 + 160))(a1))
    {
      break;
    }

    std::vector<int>::push_back[abi:ne200100](&v45.__begin_, &v48);
  }

  v48 = a1;
  v49 = a2;
  v50 = a1;
  v51 = a2;
  v52 = *a3;
  v53 = *(a3 + 16);
  v54 = *(a3 + 20);
  v55 = 1;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  memset(v59, 0, sizeof(v59));
  std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::clear[abi:ne200100](a2);
  v15.n128_u32[1] = 0;
  v15.n128_u64[1] = 0;
  memset(v60, 0, sizeof(v60));
  v61 = 1065353216;
  v65 = 0u;
  memset(v62, 0, sizeof(v62));
  v63 = 0u;
  v64 = 0u;
  v66 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  for (j = v45.__end_; v45.__begin_ != v45.__end_; j = v45.__end_)
  {
    v17 = *(j - 1);
    v45.__end_ = j - 1;
    if (((*(v46 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      if (*(a3 + 21))
      {
        continue;
      }

      v22 = *(a3 + 28);
      LODWORD(v42) = *(a3 + 24);
      LODWORD(__p) = v22;
      LODWORD(v41) = 2139095040;
      v47 = INFINITY;
      if (*&v42 != INFINITY || *&__p != v47 || *(a3 + 40) != *(a3 + 32) || *(a3 + 56) != -1)
      {
        continue;
      }
    }

    fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::Expand(&v48, v17);
    v36 = v67;
    v38 = 0;
    v39 = 0;
    v37 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v37, v68, v69, (v69 - v68) >> 2);
    (*(*a1 + 184))(a1, v17, &v36);
    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    (*(*a1 + 240))(a1, v17);
    (*(*a1 + 256))(a1, v17, 0xAAAAAAAAAAAAAAABLL * ((*(&v65 + 1) - v65) >> 4));
    v18 = *(&v65 + 1);
    for (k = v65; k != v18; k = v65)
    {
      (*(*a1 + 208))(a1, v17, v18 - 48);
      v20 = *(&v65 + 1);
      v21 = *(*(&v65 + 1) - 32);
      if (v21)
      {
        *(*(&v65 + 1) - 24) = v21;
        operator delete(v21);
      }

      v18 = v20 - 48;
      *(&v65 + 1) = v20 - 48;
    }
  }

  if ((*(a3 + 21) & 1) != 0 || (v23 = *(a3 + 28), LODWORD(v42) = *(a3 + 24), LODWORD(__p) = v23, LODWORD(v41) = 2139095040, v47 = INFINITY, *&v42 != INFINITY) || (v15.n128_u32[0] = __p, *&__p != v47) || *(a3 + 40) != *(a3 + 32) || *(a3 + 56) != -1)
  {
    for (m = 0; m < (*(*a1 + 160))(a1); ++m)
    {
      if (((*(v46 + ((m >> 3) & 0x1FFFFFFFFFFFFFF8)) >> m) & 1) == 0)
      {
        (*(*a1 + 240))(a1, m);
      }
    }
  }

  if (v59[28] == 1)
  {
    (*(*a1 + 192))(a1, 4, 4, v15);
  }

  v25 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v26 = fst::RmEpsilonProperties(v25, 0);
  (*(*a1 + 192))(a1, v26, 0x3FFFFFFF0007);
  v27 = *(a3 + 24);
  v28 = *(a3 + 28);
  *&v42 = v27;
  LODWORD(__p) = v28;
  LODWORD(v41) = 2139095040;
  v47 = INFINITY;
  if (v27 != INFINITY || *&__p != v47 || *(a3 + 40) != *(a3 + 32) || *(a3 + 56) != -1)
  {
    *v32 = v27;
    v32[1] = v28;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v33, *(a3 + 32), *(a3 + 40), (*(a3 + 40) - *(a3 + 32)) >> 2);
    fst::Prune<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a1, v32, *(a3 + 56), 0.0009765625);
    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }
  }

  if (*(a3 + 21) == 1)
  {
    v29 = *(a3 + 28);
    LODWORD(v42) = *(a3 + 24);
    LODWORD(__p) = v29;
    LODWORD(v41) = 2139095040;
    v47 = INFINITY;
    if (*&v42 == INFINITY && *&__p == v47 && *(a3 + 40) == *(a3 + 32) && *(a3 + 56) == -1)
    {
      fst::Connect<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a1);
    }
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  v42 = &v65;
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&v42);
  v30 = *(&v64 + 1);
  if (*(&v64 + 1))
  {
    do
    {
      v31 = *v30;
      operator delete(v30);
      v30 = v31;
    }

    while (v31);
  }

  *(&v64 + 1) = 0;
  if (v63)
  {
    operator delete(v63);
  }

  std::deque<int>::~deque[abi:ne200100](v62);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v60);
  fst::ShortestDistanceState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ShortestDistanceState(&v50);
  if (v45.__begin_)
  {
    v45.__end_ = v45.__begin_;
    operator delete(v45.__begin_);
  }

  if (v46)
  {
    operator delete(v46);
  }
}

void sub_1B50DCF20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  fst::LogMessage::~LogMessage(&a30);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a41)
  {
    a42 = a41;
    operator delete(a41);
  }

  if (a34)
  {
    a35 = a34;
    operator delete(a34);
  }

  if (a37)
  {
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

void fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::EpsilonArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>(uint64_t a1, uint64_t a2)
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
        fst::DfsVisit<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::SccVisitor<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>(a2, v5);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1B50DD920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

void sub_1B50DE260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::AutoQueue<int>::SccQueueType<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::EpsilonArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v9 = *(a3 + 8) - *a3;
  if (v9)
  {
    v10 = v9 >> 2;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    bzero(*a3, 4 * v10);
  }

  v33 = 0;
  (*(*a1 + 128))(a1, &v31);
  while (1)
  {
    result = v31;
    if (!v31)
    {
      if (v33 >= v32)
      {
        return result;
      }

LABEL_11:
      v13 = v33;
      goto LABEL_12;
    }

    v12 = (*(*v31 + 16))(v31);
    result = v31;
    if (v12)
    {
      break;
    }

    if (!v31)
    {
      goto LABEL_11;
    }

    v13 = (*(*v31 + 24))();
LABEL_12:
    v30 = 0;
    (*(*a1 + 136))(a1, v13, v28);
    while (1)
    {
      if (!v28[0])
      {
        if (v30 >= v28[2])
        {
          goto LABEL_49;
        }

        goto LABEL_18;
      }

      if ((*(*v28[0] + 24))(v28[0]))
      {
        break;
      }

      if (v28[0])
      {
        v14 = (*(*v28[0] + 32))();
        goto LABEL_19;
      }

LABEL_18:
      v14 = v28[1] + 48 * v30;
LABEL_19:
      if (*v14)
      {
        goto LABEL_43;
      }

      v15 = *(*a2 + 4 * v13);
      if (v15 == *(*a2 + 4 * *(v14 + 40)))
      {
        v16 = *a3;
        if (!a4)
        {
          goto LABEL_25;
        }

        *__p = 0u;
        v27 = 0u;
        v17 = fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::operator()(a4, v14 + 8, __p);
        if (__p[1])
        {
          *&v27 = __p[1];
          operator delete(__p[1]);
        }

        if (v17)
        {
LABEL_25:
          v18 = 1;
          goto LABEL_34;
        }

        if ((v16[v15] | 2) == 2)
        {
          v19 = *(v14 + 8);
          v20 = *(v14 + 12);
          *__p = v19;
          v36 = v20;
          v35 = 2139095040;
          v34 = INFINITY;
          if (v19 == INFINITY && v36 == v34 && *(v14 + 24) == *(v14 + 16) || (*__p = v19, v36 = v20, v35 = 0, v34 = 0.0, v19 == 0.0) && v36 == v34 && *(v14 + 24) == *(v14 + 16))
          {
            v18 = 2;
          }

          else
          {
            v18 = 3;
          }

LABEL_34:
          v16[v15] = v18;
        }

        *a5 = 0;
      }

      v21 = *(v14 + 8);
      v22 = *(v14 + 12);
      *__p = v21;
      v36 = v22;
      v35 = 2139095040;
      v34 = INFINITY;
      if (v21 != INFINITY || v36 != v34 || *(v14 + 24) != *(v14 + 16))
      {
        *__p = v21;
        v36 = v22;
        v35 = 0;
        v34 = 0.0;
        if (v21 != 0.0 || v36 != v34 || *(v14 + 24) != *(v14 + 16))
        {
          *a6 = 0;
        }
      }

LABEL_43:
      if (v28[0])
      {
        (*(*v28[0] + 40))(v28[0]);
      }

      else
      {
        ++v30;
      }
    }

    if (v28[0])
    {
      (*(*v28[0] + 8))();
      goto LABEL_51;
    }

LABEL_49:
    if (v29)
    {
      --*v29;
    }

LABEL_51:
    if (v31)
    {
      (*(*v31 + 32))(v31);
    }

    else
    {
      ++v33;
    }
  }

  if (v31)
  {
    return (*(*v31 + 8))();
  }

  return result;
}

void sub_1B50DE76C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a22)
  {
    (*(*a22 + 8))(a22);
  }

  _Unwind_Resume(exception_object);
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::EpsilonArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>(uint64_t a1)
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
  fst::DfsVisit<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::TopOrderVisitor<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>();
}

void sub_1B50DE958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
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

void sub_1B50DF1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::Expand(uint64_t a1, int a2)
{
  v11 = a2;
  *(a1 + 288) = vneg_f32(0x7F0000007FLL);
  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 296), 0, 0, 0);
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::clear[abi:ne200100]((a1 + 264));
  fst::ShortestDistanceState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>,fst::EpsilonArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::ShortestDistance((a1 + 16), a2);
  if ((*(a1 + 132) & 1) == 0)
  {
    std::deque<int>::push_back((a1 + 184), &v11);
    for (i = *(a1 + 224); i; i = *(a1 + 224))
    {
      v5 = i - 1;
      v6 = *(*(*(a1 + 192) + (((*(a1 + 216) + v5) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(a1 + 216) + v5) & 0x3FF));
      *(a1 + 224) = v5;
      std::deque<int>::__maybe_remove_back_spare[abi:ne200100]((a1 + 184), 1);
      while (*(a1 + 240) <= v6)
      {
        LOBYTE(v10) = 0;
        std::vector<BOOL>::push_back(a1 + 232, &v10);
      }

      v7 = *(a1 + 232);
      v8 = *(v7 + 8 * (v6 >> 6));
      if ((v8 & (1 << v6)) == 0)
      {
        *(v7 + 8 * (v6 >> 6)) = v8 | (1 << v6);
        operator new();
      }
    }

    for (j = *(a1 + 256); j; j = *(a1 + 256))
    {
      *(*(a1 + 232) + ((j[2] >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << j[2]);
      *(a1 + 256) = *j;
      operator delete(j);
    }

    ++*(a1 + 320);
  }
}

void sub_1B50DF924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void fst::Prune<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v6 = a4;
  v8 = 0;
  v9 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  v10 = a3;
  v11 = 0;
  v12 = v6;
  fst::Prune<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>(a1);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_1B50DFA94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, v2);
  }

  return result;
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void fst::ShortestDistanceState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>,fst::EpsilonArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::ShortestDistance(uint64_t *a1, int a2)
{
  if ((*(**a1 + 24))(*a1) == -1)
  {
    if (!(*(**a1 + 64))(*a1, 4, 0))
    {
      return;
    }

    v94 = a1 + 116;
LABEL_156:
    *v94 = 1;
    return;
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
      v103 = v7;
      v105 = 0;
      v106 = 0;
      __p = 0;
      std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::push_back[abi:ne200100](v5, &v103);
      if (__p)
      {
        v105 = __p;
        operator delete(__p);
      }

      v103 = v7;
      v105 = 0;
      v106 = 0;
      __p = 0;
      std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::push_back[abi:ne200100]((a1 + 5), &v103);
      if (__p)
      {
        v105 = __p;
        operator delete(__p);
      }

      v103.i8[0] = 0;
      std::vector<BOOL>::push_back((a1 + 8), &v103);
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
  v94 = a1 + 116;
  v15 = vneg_f32(0x7F0000007FLL);
  do
  {
    if ((*(**(a1[2] + 16) + 48))(*(a1[2] + 16)))
    {
LABEL_155:
      ++*(a1 + 28);
      if (!(*(**a1 + 64))(*a1, 4, 0))
      {
        return;
      }

      goto LABEL_156;
    }

    v16 = (*(**(a1[2] + 16) + 16))(*(a1[2] + 16));
    (*(**(a1[2] + 16) + 32))(*(a1[2] + 16));
    for (i = a1[1]; v16 >= ((i[1] - *i) >> 5); i = a1[1])
    {
      v103 = v15;
      v105 = 0;
      v106 = 0;
      __p = 0;
      std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::push_back[abi:ne200100](i, &v103);
      if (__p)
      {
        v105 = __p;
        operator delete(__p);
      }

      v103 = v15;
      v105 = 0;
      v106 = 0;
      __p = 0;
      std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::push_back[abi:ne200100]((a1 + 5), &v103);
      if (__p)
      {
        v105 = __p;
        operator delete(__p);
      }

      v103.i8[0] = 0;
      std::vector<BOOL>::push_back((a1 + 8), &v103);
    }

    if (*(a1 + 32) == 1)
    {
      (*(**a1 + 32))(&v103);
      v99.i32[0] = v103.i32[1];
      v108.i32[0] = v103.i32[0];
      v95.i32[0] = 2139095040;
      v112 = INFINITY;
      if (v103.f32[0] == INFINITY)
      {
        v19 = __p;
        if (v99.f32[0] == v112)
        {
          v18 = v105 != __p;
          if (!__p)
          {
LABEL_33:
            if (v18)
            {
              goto LABEL_155;
            }

            goto LABEL_34;
          }
        }

        else
        {
          v18 = 1;
          if (!__p)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        v18 = 1;
        v19 = __p;
        if (!__p)
        {
          goto LABEL_33;
        }
      }

      v105 = v19;
      operator delete(v19);
      goto LABEL_33;
    }

LABEL_34:
    *(*v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v16);
    v20 = *v10 + 32 * v16;
    v108 = *v20;
    v110 = 0;
    v111 = 0;
    v109 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v109, *(v20 + 8), *(v20 + 16), (*(v20 + 16) - *(v20 + 8)) >> 2);
    v21 = (*v10 + 32 * v16);
    *v21 = v15;
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v21[1], 0, 0, 0);
    v22 = *a1;
    v23 = **a1;
    v107 = 0;
    (*(v23 + 136))(v22, v16, &v103);
    while (1)
    {
      if (!*&v103)
      {
        if (v107 >= v105)
        {
          v48 = 10;
          goto LABEL_142;
        }

        goto LABEL_40;
      }

      v24 = (*(**&v103 + 24))(v103);
      v25 = v103;
      if (v24)
      {
        break;
      }

      if (v103)
      {
        v26 = (*(**&v103 + 32))();
        goto LABEL_41;
      }

LABEL_40:
      v26 = (__p + 48 * v107);
LABEL_41:
      if (*v26)
      {
        v25 = v103;
        goto LABEL_110;
      }

      v27 = a1[1];
      for (j = v26[5].i32[0]; j >= (v27[1] - *v27) >> 5; j = v26[5].i32[0])
      {
        v99 = v15;
        v101 = 0;
        v102 = 0;
        v100 = 0;
        std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::push_back[abi:ne200100](v27, &v99);
        if (v100)
        {
          v101 = v100;
          operator delete(v100);
        }

        v99 = v15;
        v101 = 0;
        v102 = 0;
        v100 = 0;
        std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::push_back[abi:ne200100]((a1 + 5), &v99);
        if (v100)
        {
          v101 = v100;
          operator delete(v100);
        }

        v99.i8[0] = 0;
        std::vector<BOOL>::push_back((a1 + 8), &v99);
        v27 = a1[1];
      }

      if (*(a1 + 33) == 1)
      {
        while (1)
        {
          v29 = a1[11];
          LODWORD(j) = v26[5].i32[0];
          if (j < ((a1[12] - v29) >> 2))
          {
            break;
          }

          std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
        }

        v27 = a1[1];
        if (*(v29 + j) != *(a1 + 28))
        {
          v30 = (*v27 + 32 * j);
          *v30 = v15;
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v30[1], 0, 0, 0);
          v31 = (*v10 + 32 * v26[5].i32[0]);
          *v31 = v15;
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v31[1], 0, 0, 0);
          v27 = a1[1];
          v32 = a1[11];
          v33 = *(a1 + 28);
          v34 = v26[5].i32[0];
          *(a1[8] + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v34);
          *(v32 + v34) = v33;
          LODWORD(j) = v26[5].i32[0];
        }
      }

      v35 = *v27;
      v36 = *v10;
      fst::Times<fst::LatticeWeightTpl<float>,int>(&v108, v26 + 1, &v99);
      v37 = j;
      v38 = v35 + 32 * j;
      v39 = *v38;
      v40 = *v38 + *(v38 + 4);
      v41 = v38;
      if (v40 >= (v99.f32[0] + v99.f32[1]))
      {
        if (v40 > (v99.f32[0] + v99.f32[1]))
        {
          goto LABEL_56;
        }

        v41 = v38;
        if (v39 >= v99.f32[0])
        {
          if (v39 > v99.f32[0])
          {
            goto LABEL_56;
          }

          v53 = *(v38 + 8);
          v54 = *(v38 + 16) - v53;
          v55 = v54 >> 2;
          v56 = v100;
          v57 = (v101 - v100) >> 2;
          if ((v54 >> 2) > v57)
          {
            goto LABEL_56;
          }

          v58 = v55 < 1 || v55 < v57;
          v41 = v38;
          if (!v58)
          {
            v59 = ((v54 >> 2) & 0x7FFFFFFF) - 1;
            while (1)
            {
              v61 = *v53++;
              v60 = v61;
              v63 = *v56++;
              v62 = v63;
              if (v60 < v63)
              {
                break;
              }

              if (v60 > v62 || v59-- == 0)
              {
                v41 = v38;
                goto LABEL_58;
              }
            }

LABEL_56:
            v41 = &v99;
          }
        }
      }

LABEL_58:
      v95 = *v41;
      v97 = 0;
      v98 = 0;
      v96 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v96, *&v41[1], *&v41[2], (*&v41[2] - *&v41[1]) >> 2);
      v42 = *(v38 + 4);
      v43 = *v38 == v95.f32[0] && v42 == v95.f32[1];
      if (v43 || vabds_f32(*v38 + v42, v95.f32[0] + v95.f32[1]) <= *(a1 + 7))
      {
        v46 = *(v38 + 8);
        v47 = *(v38 + 16) - v46;
        v45 = v96;
        if (v47 != v97 - v96)
        {
          v44 = 0;
          if (!v96)
          {
            goto LABEL_70;
          }

LABEL_69:
          v97 = v45;
          operator delete(v45);
          goto LABEL_70;
        }

        v44 = memcmp(v46, v96, v47) == 0;
        if (v45)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v44 = 0;
        v45 = v96;
        if (v96)
        {
          goto LABEL_69;
        }
      }

LABEL_70:
      if (v44)
      {
        v48 = 0;
        v49 = 1;
        goto LABEL_107;
      }

      v50 = *v38;
      v51 = *v38 + *(v38 + 4);
      v52 = v38;
      if (v51 >= (v99.f32[0] + v99.f32[1]))
      {
        if (v51 > (v99.f32[0] + v99.f32[1]))
        {
          goto LABEL_74;
        }

        v52 = v38;
        if (v50 >= v99.f32[0])
        {
          if (v50 > v99.f32[0])
          {
            goto LABEL_74;
          }

          v70 = *(v38 + 8);
          v71 = *(v38 + 16) - v70;
          v72 = v71 >> 2;
          v73 = v100;
          v74 = (v101 - v100) >> 2;
          if ((v71 >> 2) > v74)
          {
            goto LABEL_74;
          }

          v52 = v38;
          if (v72 >= 1)
          {
            v52 = v38;
            if (v72 >= v74)
            {
              v75 = ((v71 >> 2) & 0x7FFFFFFF) - 1;
              while (1)
              {
                v77 = *v70++;
                v76 = v77;
                v79 = *v73++;
                v78 = v79;
                if (v76 < v79)
                {
                  break;
                }

                if (v76 > v78 || v75-- == 0)
                {
                  v52 = v38;
                  goto LABEL_90;
                }
              }

LABEL_74:
              v52 = &v99;
            }
          }
        }
      }

LABEL_90:
      v95 = *v52;
      v97 = 0;
      v98 = 0;
      v96 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v96, *&v52[1], *&v52[2], (*&v52[2] - *&v52[1]) >> 2);
      *v38 = v95;
      if (v38 != &v95)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v38 + 8), v96, v97, (v97 - v96) >> 2);
      }

      if (v96)
      {
        v97 = v96;
        operator delete(v96);
      }

      v65 = v36 + 32 * v37;
      v66 = *v65;
      v67 = *v65 + *(v65 + 4);
      v68 = v65;
      if (v67 < (v99.f32[0] + v99.f32[1]))
      {
        goto LABEL_98;
      }

      if (v67 <= (v99.f32[0] + v99.f32[1]))
      {
        v68 = (v36 + 32 * v37);
        if (v66 < v99.f32[0])
        {
          goto LABEL_98;
        }

        if (v66 <= v99.f32[0])
        {
          v81 = *(v65 + 8);
          v82 = *(v65 + 16) - v81;
          v83 = v82 >> 2;
          v84 = v100;
          v85 = (v101 - v100) >> 2;
          if ((v82 >> 2) <= v85)
          {
            v68 = (v36 + 32 * v37);
            if (v83 < 1)
            {
              goto LABEL_98;
            }

            v68 = (v36 + 32 * v37);
            if (v83 < v85)
            {
              goto LABEL_98;
            }

            v86 = ((v82 >> 2) & 0x7FFFFFFF) - 1;
            while (1)
            {
              v88 = *v81++;
              v87 = v88;
              v90 = *v84++;
              v89 = v90;
              if (v87 < v90)
              {
                break;
              }

              if (v87 > v89 || v86-- == 0)
              {
                v68 = (v36 + 32 * v37);
                goto LABEL_98;
              }
            }
          }
        }
      }

      v68 = &v99;
LABEL_98:
      v95 = *v68;
      v97 = 0;
      v98 = 0;
      v96 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v96, *&v68[1], *&v68[2], (*&v68[2] - *&v68[1]) >> 2);
      *v65 = v95;
      if (v65 != &v95)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v65 + 8), v96, v97, (v97 - v96) >> 2);
      }

      if (v96)
      {
        v97 = v96;
        operator delete(v96);
      }

      if (fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::Member(v38) && fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::Member(v65))
      {
        v69 = **(a1[2] + 16);
        if ((*(a1[8] + ((v26[5].i32[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v26[5].i32[0]))
        {
          (*(v69 + 40))();
          v48 = 0;
          v49 = 1;
        }

        else
        {
          (*(v69 + 24))();
          v48 = 0;
          v92 = v26[5].i32[0];
          v49 = 1;
          *(*v12 + ((v92 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v92;
        }
      }

      else
      {
        v49 = 0;
        v48 = 1;
        *v94 = 1;
      }

LABEL_107:
      if (v100)
      {
        v101 = v100;
        operator delete(v100);
      }

      v25 = v103;
      if (!v49)
      {
        goto LABEL_139;
      }

LABEL_110:
      if (v25)
      {
        (*(**&v25 + 40))(v25);
      }

      else
      {
        ++v107;
      }
    }

    v48 = 10;
LABEL_139:
    if (v25)
    {
      (*(**&v25 + 8))(v25);
      goto LABEL_144;
    }

LABEL_142:
    if (v106)
    {
      --*v106;
    }

LABEL_144:
    if (v48 == 10)
    {
      v93 = 0;
    }

    else
    {
      v93 = v48;
    }

    if (v109)
    {
      v110 = v109;
      operator delete(v109);
    }
  }

  while (!v93);
}

void sub_1B50E095C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::deque<int>::push_back(void *result, _DWORD *a2)
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
    v6 = ((v4 - v5) << 7) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<int>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<int>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<int *>::emplace_back<int *>(a1, &v10);
}

void sub_1B50E0C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::Element,std::pair<int,unsigned long>>,std::__unordered_map_hasher<fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::Element,std::__hash_value_type<fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::Element,std::pair<int,unsigned long>>,fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::ElementKey,fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::ElementEqual,true>,std::__unordered_map_equal<fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::Element,std::__hash_value_type<fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::Element,std::pair<int,unsigned long>>,fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::ElementEqual,fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::Element,std::pair<int,unsigned long>>>>::find<fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::Element>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = a2[1];
  v3 = a2[2];
  v5 = *a2;
  v6 = v3 + 7853 * *a2 + 7867 * v4;
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v3 + 7853 * v5 + 7867 * v4;
    if (v6 >= *&v2)
    {
      v8 = v6 % *&v2;
    }
  }

  else
  {
    v8 = v6 & (*&v2 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (result = *v9; result; result = *result)
  {
    v11 = result[1];
    if (v11 == v6)
    {
      if (*(result + 4) == v5 && *(result + 20) == __PAIR64__(v3, v4))
      {
        return result;
      }
    }

    else
    {
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v2)
        {
          v11 %= *&v2;
        }
      }

      else
      {
        v11 &= *&v2 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::Element,std::pair<int,unsigned long>>,std::__unordered_map_hasher<fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::Element,std::__hash_value_type<fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::Element,std::pair<int,unsigned long>>,fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::ElementKey,fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::ElementEqual,true>,std::__unordered_map_equal<fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::Element,std::__hash_value_type<fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::Element,std::pair<int,unsigned long>>,fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::ElementEqual,fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::Element,std::pair<int,unsigned long>>>>::__emplace_unique_key_args<fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::Element,std::pair<fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::Element,std::pair<int,unsigned long>>>(void *a1, int *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = *a2;
  v5 = v2 + 7853 * *a2 + 7867 * v3;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_19;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v2 + 7853 * v4 + 7867 * v3;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  if (*(v10 + 4) != v4 || *(v10 + 20) != __PAIR64__(v2, v3))
  {
    goto LABEL_18;
  }

  return v10;
}

uint64_t fst::Prune<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>(uint64_t a1)
{
  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  }

  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Prune: Weight needs to have the path property and", 49);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " be commutative: ", 17);
  v6 = fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::Type();
  v7 = *(v6 + 23);
  if (v7 >= 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = *v6;
  }

  if (v7 >= 0)
  {
    v9 = *(v6 + 23);
  }

  else
  {
    v9 = *(v6 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v8, v9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(*a1 + 192))(a1, 4, 4);
}

void sub_1B50E1210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::RmEpsilonState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>>::~RmEpsilonState(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    *(a1 + 304) = v2;
    operator delete(v2);
  }

  v7 = (a1 + 264);
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v3 = *(a1 + 256);
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  *(a1 + 256) = 0;
  v5 = *(a1 + 232);
  if (v5)
  {
    operator delete(v5);
  }

  std::deque<int>::~deque[abi:ne200100]((a1 + 184));
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 136);
  fst::ShortestDistanceState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ShortestDistanceState(a1 + 16);
  return a1;
}

void fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::VectorFst()
{
  operator new();
}

{
  operator new();
}

void fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~VectorFst(void *a1)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 72) - *(v2 + 64)) >> 3;
  return result;
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 8);
  *a3 = 0;
  v5 = (*(*(v3 + 64) + 8 * a2) + 24);
  v4 = *v5;
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5[1] - *v5) >> 2);
  if (v5[1] == *v5)
  {
    v4 = 0;
  }

  a3[1] = v4;
  a3[2] = v6;
  a3[3] = 0;
  return result;
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 88) = a2;
  result = (*(*v4 + 24))(v4);
  *(v4 + 8) = result & 0xCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetFinal(uint64_t a1, int a2, uint64_t *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  v8 = *a3;
  return fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetFinal(v6, a2, &v8);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::AddArc(uint64_t a1, int a2, float *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::AddArc(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0x6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::DeleteStates(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::DeleteStates(v2);
  result = (*(*v2 + 24))(v2);
  v2[1] = (*(v2 + 2) | result) & 4 | 0x156A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::DeleteArcs(*(v6[8] + 8 * a2), a3);
  result = (*(*v6 + 24))(v6);
  v6[1] = v6[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  v5 = *(v4[8] + 8 * a2);
  v5[1] = 0;
  v5[2] = 0;
  v5[4] = v5[3];
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0xA6A5A950007;
  return result;
}

void *fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 64);

  return std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(v4, a2);
}

void *fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 64) + 8 * a2) + 24);

  return std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::reserve(v6, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(v4, a2);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2CFC7C8;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2CFC718;
  std::string::basic_string[abi:ne200100]<0>(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950003;
  return a1;
}

void sub_1B50E1C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = &unk_1F2CFC790;
  v3 = a1 + 8;
  v2 = a1[8];
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Destroy(v2[v4++]);
      v2 = a1[8];
    }

    while (v4 < (a1[9] - v2) >> 3);
  }

  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  return fst::FstImpl<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::~FstImpl(a1);
}

void fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~VectorFstImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~VectorFstBaseImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::FstImpl<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::~FstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_1F2CFC7C8;
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

void fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Destroy(void *__p)
{
  if (__p)
  {
    v2 = __p[3];
    if (v2)
    {
      __p[4] = v2;
      operator delete(v2);
    }

    operator delete(__p);
  }
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::MutateCheck(uint64_t result)
{
  if (*(*(result + 8) + 56) >= 2)
  {
    operator new();
  }

  return result;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFC7C8;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2CFC718;
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
    v6 = fst::CountStates<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a2);
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
      fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::AddState();
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

void *std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0xCCCCCCCCCCCCCCDLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B50E2728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      *(v5 + 8) = *(v2 + 8);
      *(v5 + 16) = *(v2 + 16);
      v2 += 20;
      v5 += 20;
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

uint64_t fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::AddArc(void *a1, _DWORD *a2)
{
  if (!*a2)
  {
    ++a1[1];
  }

  if (!a2[1])
  {
    ++a1[2];
  }

  return std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::push_back[abi:ne200100](a1 + 3, a2);
}

uint64_t std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::__emplace_back_slow_path<fst::ArcTpl<fst::LatticeWeightTpl<float>,int> const&>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 16) = *(a2 + 16);
    result = v3 + 20;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::__emplace_back_slow_path<fst::ArcTpl<fst::LatticeWeightTpl<float>,int> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0xCCCCCCCCCCCCCCCLL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 2) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 2);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 2) >= 0x666666666666666)
  {
    v6 = 0xCCCCCCCCCCCCCCCLL;
  }

  else
  {
    v6 = v3;
  }

  v14 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(a1, v6);
  }

  v7 = 20 * v2;
  __p = 0;
  v11 = v7;
  v13 = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 16) = *(a2 + 16);
  v12 = 20 * v2 + 20;
  std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 = (v12 - v11 - 20) % 0x14uLL + v11;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_1B50E29B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::WriteFst<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>(void *a1, void *a2, uint64_t a3)
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
    v36 = fst::CountStates<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a1);
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
  fst::FstImpl<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::WriteFstHeader(a1, a2, a3, 2, __p, v9 | 3, v30);
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
      __p[0].__r_.__value_.__r.__words[0] = (*(*a1 + 40))(a1, v12);
      std::ostream::write();
      v14 = *(*(*(a1[1] + 64) + 8 * v12) + 24);
      v15 = *(*(*(a1[1] + 64) + 8 * v12) + 32) - v14;
      if (v15)
      {
        v16 = 0xCCCCCCCCCCCCCCCDLL * (v15 >> 2);
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        v18 = v14 + 8;
        do
        {
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v18 - 8);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v18 - 4);
          std::ostream::write();
          fst::LatticeWeightTpl<float>::Write(v18, a2);
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v18 + 8);
          std::ostream::write();
          v18 += 20;
          --v17;
        }

        while (v17);
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
LABEL_27:
    fst::LogMessage::~LogMessage(&data);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    updated = 0;
    goto LABEL_30;
  }

  if (!v7)
  {
    if (v36 == v13)
    {
      updated = 1;
      goto LABEL_30;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v27 = fst::LogMessage::LogMessage(&data, __p);
    v28 = fst::cerr(v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Inconsistent number of states observed during write", 51);
    goto LABEL_27;
  }

  v36 = v13;
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  updated = fst::FstImpl<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::UpdateFstHeader(a1, a2, a3, 2, __p, v9 | 3, v30, v29);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

LABEL_30:
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

void sub_1B50E2EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a11);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::WriteFstHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = fst::ArcTpl<fst::LatticeWeightTpl<float>,int>::Type();
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

uint64_t fst::FstImpl<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::UpdateFstHeader(uint64_t a1, void *a2, uint64_t a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    fst::FstImpl<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::WriteFstHeader(a1, a2, a3, a4, a5, a6, a7);
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

uint64_t fst::ArcTpl<fst::LatticeWeightTpl<float>,int>::Type()
{
  {
    operator new();
  }

  return fst::ArcTpl<fst::LatticeWeightTpl<float>,int>::Type(void)::type;
}

void sub_1B50E3688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  MEMORY[0x1B8C85350](v21, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::WriteFile(fst *a1, uint64_t a2)
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

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetFinal(uint64_t *a1, int a2, uint64_t *a3)
{
  v5 = *(a1[8] + 8 * a2);
  v6 = *a1;
  v7 = *v5;
  *v5 = *a3;
  v8 = (*(v6 + 24))();
  v10 = *a3;
  v11 = v7;
  result = fst::SetFinalProperties<fst::LatticeWeightTpl<float>>(v8, &v11, &v10);
  a1[1] = a1[1] & 4 | result;
  return result;
}

uint64_t fst::SetFinalProperties<fst::LatticeWeightTpl<float>>(unint64_t a1, float *a2, float *a3)
{
  if ((*a2 != INFINITY || a2[1] != INFINITY) && (*a2 != 0.0 || a2[1] != 0.0))
  {
    a1 &= ~0x100000000uLL;
  }

  if ((*a3 != INFINITY || a3[1] != INFINITY) && (*a3 != 0.0 || a3[1] != 0.0))
  {
    a1 = a1 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
  }

  return a1 & 0x3FFFFFF0007;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::AddArc(void *a1, int a2, float *a3)
{
  v6 = *(*(a1[8] + 8 * a2) + 32);
  if (v6 == *(*(a1[8] + 8 * a2) + 24))
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6 - 20);
  }

  v8 = (*(*a1 + 24))(a1);
  a1[1] = a1[1] & 4 | fst::AddArcProperties<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(v8, a2, a3, v7);
  v9 = *(a1[8] + 8 * a2);

  return fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::AddArc(v9, a3);
}

uint64_t fst::AddArcProperties<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(unint64_t a1, int a2, float *a3, _DWORD *a4)
{
  v5 = *a3;
  v4 = *(a3 + 1);
  v6 = a1 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  if (*a3 == v4)
  {
    v6 = a1;
  }

  v7 = v6 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
  if (!v4)
  {
    v7 = v6 & 0xFFFFFFFFFC3FFFFFLL | 0x1400000;
  }

  if (v5 == 0.0)
  {
    v6 = v7;
  }

  if (!v4)
  {
    v6 = v6 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
  }

  if (a4)
  {
    if (*a4 > SLODWORD(v5))
    {
      v6 = v6 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
    }

    if (a4[1] > v4)
    {
      v6 = v6 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
    }
  }

  if ((a3[2] != INFINITY || a3[3] != INFINITY) && (a3[2] != 0.0 || a3[3] != 0.0))
  {
    v6 = v6 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
  }

  if (*(a3 + 4) <= a2)
  {
    v6 = v6 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
  }

  if ((v6 & 0x4000000000) != 0)
  {
    return v6 & 0x5D7FFEB0007 | 0x2800000000;
  }

  else
  {
    return v6 & 0x5D7FFEB0007;
  }
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::DeleteStates(uint64_t a1, char **a2)
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
        fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Destroy(*(v10 + 8 * v11));
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
      v18 = *(v16 + 24);
      v17 = *(v16 + 32);
      v19 = *(v16 + 8);
      v20 = v17 - v18;
      if (v17 == v18)
      {
        v27 = 0;
        v28 = 0xCCCCCCCCCCCCCCCDLL * (v20 >> 2);
        v29 = *(v16 + 16);
        v30 = *(v16 + 8);
      }

      else
      {
        v21 = 0;
        v27 = 0;
        v22 = (v18 + 16);
        do
        {
          v23 = *(__p[0] + *v22);
          if (v23 == -1)
          {
            v25 = *(v22 - 2);
            v26.i64[0] = v25;
            v26.i64[1] = HIDWORD(v25);
            v19 = vaddq_s64(v19, vceqzq_s64(v26));
          }

          else
          {
            *v22 = v23;
            if (v21 != v27)
            {
              v24 = v18 + 20 * v27;
              *v24 = *(v22 - 2);
              *(v24 + 8) = *(v22 - 1);
              *(v24 + 16) = v23;
              v14 = *v4;
            }

            ++v27;
          }

          ++v21;
          v16 = *(v14 + 8 * v15);
          v28 = 0xCCCCCCCCCCCCCCCDLL * ((*(v16 + 32) - *(v16 + 24)) >> 2);
          v22 += 5;
        }

        while (v21 < v28);
        v29 = v19.i64[1];
        v30 = v19.i64[0];
      }

      fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::DeleteArcs(v16, v28 - v27);
      v14 = *(a1 + 64);
      v31 = *(a1 + 72);
      v32 = *(v14 + 8 * v15);
      *(v32 + 8) = v30;
      *(v32 + 16) = v29;
      ++v15;
    }

    while (v15 < (v31 - v14) >> 3);
  }

  v33 = *(a1 + 88);
  if (v33 == -1)
  {
    v34 = __p[0];
    if (!__p[0])
    {
      return;
    }
  }

  else
  {
    v34 = __p[0];
    *(a1 + 88) = *(__p[0] + v33);
  }

  __p[1] = v34;
  operator delete(v34);
}

void sub_1B50E3FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::DeleteArcs(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result[4];
    v3 = -20 * a2;
    v4 = (v2 - 20);
    v5 = (v2 - 20);
    do
    {
      v6 = *v5;
      v5 -= 5;
      if (!v6)
      {
        --result[1];
      }

      if (!v4[1])
      {
        --result[2];
      }

      v4 = v5;
      --a2;
    }

    while (a2);
    result[4] = v2 + v3;
  }

  return result;
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::DeleteStates(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (*(a1 + 72) != v2)
  {
    v3 = 0;
    do
    {
      fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Destroy(*(v2 + 8 * v3++));
      v2 = *(a1 + 64);
    }

    while (v3 < (*(a1 + 72) - v2) >> 3);
  }

  *(a1 + 72) = v2;
  *(a1 + 88) = -1;
}

void fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::SetValue(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v6 = v4[3] + 20 * v5;
  v7 = *v6;
  v8 = *(v6 + 4);
  if (*v6 != v8)
  {
    **(a1 + 16) &= ~0x20000uLL;
  }

  if (v7)
  {
    if (v8)
    {
      goto LABEL_9;
    }

    v9 = *(a1 + 16);
    v10 = *v9;
  }

  else
  {
    v9 = *(a1 + 16);
    v11 = *v9;
    *v9 &= ~0x1000000uLL;
    if (v8)
    {
      goto LABEL_9;
    }

    v10 = v11 & 0xFFFFFFFFFEBFFFFFLL;
    *v9 = v10;
  }

  *v9 = v10 & 0xFFFFFFFFFBFFFFFFLL;
LABEL_9:
  if ((*(v6 + 8) != INFINITY || *(v6 + 12) != INFINITY) && (*(v6 + 8) != 0.0 || *(v6 + 12) != 0.0))
  {
    **(a1 + 16) &= ~0x100000000uLL;
  }

  v12 = 0x30FC30007;
  v13 = *a2 == v7 && *(a2 + 4) == v8;
  if (v13 && *(a2 + 16) == *(v6 + 16))
  {
    v12 = 0x3FFFFFFF0007;
  }

  fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetArc(v4, a2, v5);
  v14 = *a2;
  v15 = *(a2 + 4);
  if (*a2 != v15)
  {
    **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  }

  if (v14)
  {
    if (!v15)
    {
      v16 = *(a1 + 16);
      v17 = *v16;
LABEL_28:
      *v16 = v17 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
    }
  }

  else
  {
    v16 = *(a1 + 16);
    v18 = *v16 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
    *v16 = v18;
    if (!v15)
    {
      v17 = v18 & 0xFFFFFFFFFD3FFFFFLL | 0x400000;
      *v16 = v17;
      goto LABEL_28;
    }
  }

  if ((*(a2 + 8) != INFINITY || *(a2 + 12) != INFINITY) && (*(a2 + 8) != 0.0 || *(a2 + 12) != 0.0))
  {
    **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
  }

  **(a1 + 16) &= v12;
}

double fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetArc(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[3] + 20 * a3;
  if (!*v3)
  {
    --a1[1];
  }

  if (!*(v3 + 4))
  {
    --a1[2];
  }

  if (!*a2)
  {
    ++a1[1];
  }

  if (!*(a2 + 4))
  {
    ++a1[2];
  }

  *v3 = *a2;
  result = *(a2 + 8);
  *(v3 + 8) = result;
  *(v3 + 16) = *(a2 + 16);
  return result;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

uint64_t std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<void>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<void>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<void>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void std::__shared_ptr_emplace<std::vector<std::vector<quasar::Token>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2CFC8B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        quasar::Token::~Token(v4 - 28);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void quasar::Token::~Token(void **this)
{
  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  v2 = this + 15;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  v2 = this + 9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__shared_ptr_emplace<std::vector<double>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2CFC900;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<std::vector<double>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *std::__hash_table<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>>>::find<std::vector<int>>(void *a1, int **a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (*a2 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = *a2;
    do
    {
      v6 = *v5++;
      v4 = v6 + 7853 * v4;
    }

    while (v5 != v2);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v7)
    {
      v10 = v4 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2 - v3;
    do
    {
      v14 = v12[1];
      if (v14 == v4)
      {
        v15 = v12[2];
        if (v12[3] - v15 == v13 && !memcmp(v15, v3, v13))
        {
          return v12;
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v14 >= *&v7)
          {
            v14 %= *&v7;
          }
        }

        else
        {
          v14 &= *&v7 - 1;
        }

        if (v14 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

double std::__split_buffer<double>::emplace_back<double>(void *a1, double *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
  }

  result = *a2;
  *v4 = *a2;
  a1[2] = v4 + 8;
  return result;
}

void *std::__hash_table<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>>>::__emplace_unique_key_args<std::vector<int>,std::piecewise_construct_t const&,std::tuple<std::vector<int> const&>,std::tuple<>>(void *a1, int **a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (*a2 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = *a2;
    do
    {
      v6 = *v5++;
      v4 = v6 + 7853 * v4;
    }

    while (v5 != v2);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_25;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v7)
    {
      v10 = v4 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_25:
    std::__hash_table<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::vector<int> const&>,std::tuple<>>();
  }

  v13 = v2 - v3;
  while (1)
  {
    v14 = v12[1];
    if (v14 == v4)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v14 >= *&v7)
      {
        v14 %= *&v7;
      }
    }

    else
    {
      v14 &= *&v7 - 1;
    }

    if (v14 != v10)
    {
      goto LABEL_25;
    }

LABEL_24:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  v15 = v12[2];
  if (v12[3] - v15 != v13 || memcmp(v15, v3, v13))
  {
    goto LABEL_24;
  }

  return v12;
}

void sub_1B50E4D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::vector<int> const,std::vector<quasar::Token>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::vector<int> const,std::vector<quasar::Token>>,0>(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

uint64_t std::vector<std::vector<quasar::Token>>::__construct_one_at_end[abi:ne200100]<std::vector<quasar::Token> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v3, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
  *(a1 + 8) = v3 + 3;
  return result;
}

void *std::vector<std::vector<quasar::Token>>::__move_range(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = *v9;
      v8[2] = v9[2];
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
      v9 += 3;
      v8 += 3;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::vector<quasar::Token> *,std::vector<quasar::Token> *,std::vector<quasar::Token> *>(&v11, a2, v7, v6);
}

uint64_t std::__split_buffer<std::vector<quasar::Token>>::emplace_back<std::vector<quasar::Token> const&>(unint64_t *a1, uint64_t *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      v10 = v4 - *a1;
      v9 = v10 == 0;
      v11 = 0x5555555555555556 * (v10 >> 3);
      if (v9)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      v13 = a1[4];
      v15[4] = a1[4];
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(v13, v12);
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3) + 1 + ((0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3) + 1) >> 63);
    v7 = -3 * (v6 >> 1);
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::vector<quasar::Token> *,std::vector<quasar::Token> *,std::vector<quasar::Token> *>(v15, v5, v4, v5 - 24 * (v6 >> 1));
    v4 = v8;
    a1[1] += 8 * v7;
    a1[2] = v8;
  }

  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  result = std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v4, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
  a1[2] += 24;
  return result;
}

uint64_t std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::Token>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B50E5128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::Token>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x124924924924925)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Token>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Token>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x124924924924925)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::Token>,quasar::Token*,quasar::Token*,quasar::Token*>(int a1, quasar::Token *a2, quasar::Token *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      quasar::Token::Token(this, v6);
      v6 = (v6 + 224);
      this = (this + 224);
      v7 -= 224;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_1B50E5254(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 224);
    do
    {
      quasar::Token::~Token(v4);
      v4 = (v5 - 224);
      v2 += 224;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *quasar::Token::Token(std::string *this, const quasar::Token *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 24);
  *(&this[1].__r_.__value_.__r.__words[1] + 7) = *(a2 + 39);
  *&this[1].__r_.__value_.__l.__data_ = v5;
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = *(a2 + 3);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  this[3].__r_.__value_.__r.__words[0] = 0;
  this[3].__r_.__value_.__l.__size_ = 0;
  this[3].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[3], *(a2 + 9), *(a2 + 10), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 10) - *(a2 + 9)) >> 3));
  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v7 = *(a2 + 6);
    this[4].__r_.__value_.__r.__words[2] = *(a2 + 14);
    *&this[4].__r_.__value_.__l.__data_ = v7;
  }

  this[5].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__l.__size_ = 0;
  this[5].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::pair<std::string,float>>::__init_with_size[abi:ne200100]<std::pair<std::string,float>*,std::pair<std::string,float>*>(&this[5], *(a2 + 15), *(a2 + 16), (*(a2 + 16) - *(a2 + 15)) >> 5);
  if (*(a2 + 167) < 0)
  {
    std::string::__init_copy_ctor_external(this + 6, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v8 = *(a2 + 9);
    this[6].__r_.__value_.__r.__words[2] = *(a2 + 20);
    *&this[6].__r_.__value_.__l.__data_ = v8;
  }

  v9 = *(a2 + 42);
  WORD2(this[7].__r_.__value_.__r.__words[0]) = *(a2 + 86);
  LODWORD(this[7].__r_.__value_.__l.__data_) = v9;
  if (*(a2 + 199) < 0)
  {
    std::string::__init_copy_ctor_external((this + 176), *(a2 + 22), *(a2 + 23));
  }

  else
  {
    v10 = *(a2 + 11);
    this[8].__r_.__value_.__r.__words[0] = *(a2 + 24);
    *&this[7].__r_.__value_.__r.__words[1] = v10;
  }

  v11 = *(a2 + 200);
  LODWORD(this[9].__r_.__value_.__l.__data_) = *(a2 + 54);
  *&this[8].__r_.__value_.__r.__words[1] = v11;
  return this;
}

void sub_1B50E53F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 167) < 0)
  {
    operator delete(*(v2 + 144));
  }

  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 119) < 0)
  {
    operator delete(*(v2 + 96));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 71) < 0)
  {
    operator delete(*(v2 + 48));
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::vector<std::pair<std::string,float>>::__init_with_size[abi:ne200100]<std::pair<std::string,float>*,std::pair<std::string,float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::TextTokenizer::Token>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B50E5530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,float>>,std::pair<std::string,float>*,std::pair<std::string,float>*,std::pair<std::string,float>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      LODWORD(v4[1].__r_.__value_.__l.__data_) = *(v6 + 6);
      v6 += 2;
      v4 = (v8 + 32);
      v13 = (v8 + 32);
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,float>>,std::pair<std::string,float>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,float>>,std::pair<std::string,float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TextTokenizer::Token>,quasar::TextTokenizer::Token*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::vector<quasar::Token> *,std::vector<quasar::Token> *,std::vector<quasar::Token> *>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v6 = a4 - 24;
    v7 = a3;
    do
    {
      std::vector<quasar::Token>::__vdeallocate(v6);
      v8 = *(v7 - 3);
      v7 -= 3;
      *v6 = v8;
      *(v6 + 16) = v7[2];
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      v6 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

void std::vector<quasar::Token>::__vdeallocate(void **a1)
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
        quasar::Token::~Token(v3 - 28);
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

void std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(uint64_t a1, quasar::Token *a2, quasar::Token *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 5) < a4)
  {
    std::vector<quasar::Token>::__vdeallocate(a1);
    if (a4 <= 0x124924924924924)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 5)) >= 0x92492492492492)
      {
        v10 = 0x124924924924924;
      }

      else
      {
        v10 = v9;
      }

      std::vector<quasar::Token>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v11 - v8) >> 5) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        quasar::Token::operator=(v8, v6);
        v6 += 224;
        v8 = (v8 + 224);
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    while (v11 != v8)
    {
      v11 = (v11 - 224);
      quasar::Token::~Token(&v11->__r_.__value_.__l.__data_);
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
        quasar::Token::operator=(v8, v14);
        v14 += 224;
        v8 = (v8 + 224);
        v13 -= 224;
      }

      while (v13);
      v11 = *(a1 + 8);
    }

    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::Token>,quasar::Token*,quasar::Token*,quasar::Token*>(a1, (v6 + v12), a3, v11);
  }
}

uint64_t quasar::Token::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  v4 = *(a2 + 39);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 39) = v4;
  std::string::operator=((a1 + 48), (a2 + 48));
  if (a1 == a2)
  {
    std::string::operator=((a1 + 96), (a2 + 96));
  }

  else
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 72), *(a2 + 72), *(a2 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
    std::string::operator=((a1 + 96), (a2 + 96));
    std::vector<std::pair<std::string,float>>::__assign_with_size[abi:ne200100]<std::pair<std::string,float>*,std::pair<std::string,float>*>((a1 + 120), *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 5);
  }

  std::string::operator=((a1 + 144), (a2 + 144));
  v5 = *(a2 + 172);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 172) = v5;
  std::string::operator=((a1 + 176), (a2 + 176));
  v6 = *(a2 + 216);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = v6;
  return a1;
}

void std::vector<std::pair<std::string,float>>::__assign_with_size[abi:ne200100]<std::pair<std::string,float>*,std::pair<std::string,float>*>(uint64_t *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    std::vector<std::pair<std::string,float>>::__vdeallocate(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<quasar::TextTokenizer::Token>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  if (a4 <= (v12 - v8) >> 5)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8, v6);
        *(v8 + 24) = v6[1].__r_.__value_.__l.__data_;
        v6 = (v6 + 32);
        v8 += 32;
      }

      while (v6 != a3);
      v12 = a1[1];
    }

    while (v12 != v8)
    {
      v14 = v12[-1].__r_.__value_.__s.__data_[15];
      v12 = (v12 - 32);
      if (v14 < 0)
      {
        operator delete(v12->__r_.__value_.__l.__data_);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v13 = (v12 + __str - v8);
    if (v12 != v8)
    {
      do
      {
        std::string::operator=(v8, v6);
        *(v8 + 24) = v6[1].__r_.__value_.__l.__data_;
        v6 = (v6 + 32);
        v8 += 32;
      }

      while (v6 != v13);
      v12 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,float>>,std::pair<std::string,float>*,std::pair<std::string,float>*,std::pair<std::string,float>*>(a1, v13, a3, v12);
  }
}

void std::vector<std::pair<std::string,float>>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<quasar::TextTokenizer::Token>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::vector<quasar::Token> *,std::vector<quasar::Token> *,std::vector<quasar::Token> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      std::vector<quasar::Token>::__vdeallocate(a4);
      *a4 = *v5;
      *(a4 + 16) = *(v5 + 16);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v5 += 24;
      a4 += 24;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void **std::__split_buffer<std::vector<quasar::Token>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<quasar::Token>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<quasar::Token>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void std::vector<std::vector<quasar::Token>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = a1[1] - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<quasar::Token>>::~__split_buffer(v18);
  }
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2CFC4A8;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2CFC3F8;
  std::string::basic_string[abi:ne200100]<0>(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950003;
  return a1;
}

void sub_1B50E5F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEInferenceNetConfig::Read(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = 0;
  v4 = kaldi::Input::Input(v5, a3, v6);
  kaldi::Input::Stream(v4);
  kaldi::quasar::CreateComputeEngineConfig(a2);
}

void sub_1B50E6EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (*(v32 - 105) < 0)
  {
    operator delete(*(v32 - 128));
  }

  kaldi::Input::~Input((v32 - 104));
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEInferenceNet::Shape::Init(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    kaldi::SplitStringToVector(a2, ",", 1, &v11);
    v4 = v11;
    if (v12 != v11)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = (v4 + v5);
        v8 = *(v4 + v5 + 23);
        if (v8 < 0)
        {
          if (v7->__r_.__value_.__l.__size_ == 1 && *v7->__r_.__value_.__l.__data_ == 82)
          {
            goto LABEL_12;
          }

          if (v7->__r_.__value_.__l.__size_ != 1)
          {
            goto LABEL_17;
          }

          v9 = *v7->__r_.__value_.__l.__data_;
        }

        else
        {
          if (v8 != 1)
          {
            goto LABEL_17;
          }

          v9 = v7->__r_.__value_.__s.__data_[0];
          if (v9 == 82)
          {
LABEL_12:
            *a1 = v6;
            v10[0] = 0;
            std::vector<long long>::push_back[abi:ne200100]((a1 + 8), v10);
            goto LABEL_18;
          }
        }

        if (v9 != 67)
        {
LABEL_17:
          v10[0] = std::stoll(v7, 0, 10);
          std::vector<long long>::push_back[abi:ne200100]((a1 + 8), v10);
          goto LABEL_18;
        }

        *(a1 + 4) = v6;
        v10[0] = 0;
        std::vector<long long>::push_back[abi:ne200100]((a1 + 8), v10);
LABEL_18:
        ++v6;
        v4 = v11;
        v5 += 24;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3) > v6);
    }

    if ((*a1 & 0x80000000) != 0 || (*(a1 + 4) & 0x80000000) != 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "row_index >= 0 && col_index >= 0", 32);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
    }

    v10[0] = &v11;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);
  }
}

uint64_t kaldi::quasar::CEInferenceNet::Shape::Get(kaldi::quasar::CEInferenceNet::Shape *this, uint64_t a2, uint64_t a3)
{
  v5 = *(this + 1);
  v6 = *(this + 2);
  result = this + 8;
  if (v5 == v6)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "!shape.empty()");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  v8 = *this;
  v7 = *(this + 1);
  *(v5 + 8 * v8) = a2;
  *(v5 + 8 * v7) = a3;
  return result;
}

void kaldi::quasar::CEInferenceNet::CEInferenceNet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2CFC960;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1065353216;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  kaldi::quasar::CEInferenceNetConfig::CEInferenceNetConfig((a1 + 104));
  *(a1 + 496) = 0;
  *(a1 + 504) = -1;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = -1;
  *(a1 + 544) = 0;
  *(a1 + 560) = 0;
  *(a1 + 552) = 0;
  kaldi::quasar::CEInferenceNetConfig::Read(a1 + 104, a2, a3);
}

void kaldi::quasar::CEInferenceNet::CEInferenceNet(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = *(a2 + 8);
  }

  v5 = __p;
  std::string::basic_string[abi:ne200100](__p, v4 + 7);
  if (v8 < 0)
  {
    v5 = __p[0];
  }

  if (v4)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    memmove(v5, v6, v4);
  }

  strcpy(v5 + v4, ".config");
  kaldi::quasar::CEInferenceNet::CEInferenceNet(a1, a2, __p);
}

void sub_1B50E774C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::CEInferenceNet::InitialCachedStatesInit(kaldi::quasar::CEInferenceNet *this)
{
  v31[0] = *MEMORY[0x1E69E9840];
  if (!*(this + 62))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&__p, "engine_ != nullptr");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  v2 = *(this + 47) - *(this + 46);
  v3 = 0xAAAAAAAAAAAAAAABLL * (v2 >> 3);
  if (v3 != (*(this + 50) - *(this + 49)) >> 2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&__p, "cfg_.cached_tensor_shapes_list.size() == cfg_.cached_tensor_initial_states.size()");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  if (*(this + 35) - *(this + 34) != v2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&__p, "cfg_.cached_input_tensor_list.size() == cfg_.cached_tensor_shapes_list.size()");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  v4 = *(this + 1);
  v5 = *(this + 2);
  v6 = (this + 8);
  if (v5 != v4)
  {
    v7 = 0;
    do
    {
      v8 = *(v4 + 8 * v7);
      *(v4 + 8 * v7) = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
        v4 = *(this + 1);
        v5 = *(this + 2);
      }

      ++v7;
    }

    while (v7 < (v5 - v4) >> 3);
    v3 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 47) - *(this + 46)) >> 3);
  }

  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::resize(this + 1, v3);
  v10 = *(this + 46);
  if (*(this + 47) != v10)
  {
    v11 = 0;
    do
    {
      v13 = (v10 + 24 * v11);
      v12 = *v13;
      v14 = v13[1] - *v13;
      if (v14 != 1)
      {
        if (v14 != 2)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
          v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Streaming Nnet implementation does not support input shape: ", 60);
          MEMORY[0x1B8C84C30](v24, (*(*(this + 46) + 24 * v11 + 8) - *(*(this + 46) + 24 * v11)) >> 2);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
        }

        v15 = *v12++;
        v14 = v15;
      }

      v16 = *v12;
      if (*(this + 483) == 1 && !kaldi::quasar::isDeviceFp32Compute(v9))
      {
        v18 = *(this + 62);
        v29 = v14;
        v30 = v16;
        v27 = 0;
        v28 = 0;
        __p = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, &v29, v31, 2uLL);
        (*(*v18 + 72))(&v25, v18, &__p);
      }

      else
      {
        v17 = *(this + 62);
        v29 = v14;
        v30 = v16;
        v27 = 0;
        v28 = 0;
        __p = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, &v29, v31, 2uLL);
        (*(*v17 + 64))(&v25, v17, &__p);
      }

      v19 = v25;
      v25 = 0;
      if (__p)
      {
        v27 = __p;
        operator delete(__p);
      }

      for (i = 0; kaldi::quasar::ComputeEngineBufferItf::GetSize(v19) > i; ++i)
      {
        (*(*v19 + 104))(v19, i, *(*(this + 49) + 4 * v11));
      }

      kaldi::quasar::ComputeEngineBufferItf::SetName(v19, (*(this + 34) + 24 * v11));
      v21 = *(*v6 + 8 * v11);
      *(*v6 + 8 * v11) = v19;
      if (v21)
      {
        (*(*v21 + 8))(v21);
      }

      v22 = *(this + 34);
      __p = (*(this + 40) + 24 * v11);
      v23 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 4, __p);
      v9 = std::string::operator=((v23 + 5), (v22 + 24 * v11++));
      v10 = *(this + 46);
    }

    while (v11 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 47) - v10) >> 3));
  }

  if (*(this + 7) != 0xAAAAAAAAAAAAAAABLL * ((*(this + 41) - *(this + 40)) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&__p, "cached_output_input_map.size() == cfg_.cached_output_tensor_list.size()");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }
}

void sub_1B50E7BE4(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B50E7C2CLL);
}

void kaldi::quasar::CEInferenceNet::~CEInferenceNet(kaldi::quasar::CEInferenceNet *this)
{
  *this = &unk_1F2CFC960;
  v2 = *(this + 68);
  if (v2)
  {
    *(this + 69) = v2;
    operator delete(v2);
  }

  v3 = *(this + 64);
  if (v3)
  {
    *(this + 65) = v3;
    operator delete(v3);
  }

  v4 = *(this + 62);
  *(this + 62) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  kaldi::quasar::CEInferenceNetConfig::~CEInferenceNetConfig((this + 104));
  v6 = (this + 80);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 32);
  v6 = (this + 8);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v6);
  quasar::Bitmap::~Bitmap(this);
}

{
  kaldi::quasar::CEInferenceNet::~CEInferenceNet(this);

  JUMPOUT(0x1B8C85350);
}

void *kaldi::quasar::CEInferenceNet::CopyToMatrix(uint64_t a1, void *a2, unsigned int *a3, int32x2_t *a4)
{
  v5 = *a2;
  if (!*a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, "in != nullptr");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  v12[1] = 0;
  v13 = 0;
  v14 = 0;
  v12[0] = &unk_1F2D3AC18;
  (*(*v5 + 40))(v5, v12);
  if (*(a1 + 536) == -1 || *(a1 + 540) == -1)
  {
    v9 = *a3;
    v10 = (v13 / v9);
    if (v13 % v9)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "out_vec.Dim() % row_num == 0", 28);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
    }
  }

  else
  {
    v9 = (*(**a2 + 184))();
    v10 = (*(**a2 + 184))(*a2, *(a1 + 540));
    if (v13 != v10 * v9)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "out_vec.Dim() == out_numrows * out_numcols", 42);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
    }
  }

  kaldi::CuMatrix<float>::Resize(a4, v9, v10, 0, 0);
  kaldi::CuMatrixBase<float>::CopyRowsFromVec(a4, v12);
  return kaldi::CuVector<float>::~CuVector(v12);
}

void kaldi::quasar::CEInferenceNet::FeedforwardWithCachedStreaming(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  memset(v4, 0, sizeof(v4));
  kaldi::quasar::CEInferenceNet::MultiIOFeedforward(a1, a2, v4, a3, 0, a4);
  v5 = v4;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void sub_1B50E7FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEInferenceNet::MultiIOFeedforward(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t a5, int a6)
{
  v90 = 0;
  v91 = 0;
  v92 = 0;
  kaldi::quasar::ComputeEngineBufferItf::SetName(*a2, (a1 + 104));
  v12 = *a2;
  if (*(a1 + 127) < 0)
  {
    std::string::__init_copy_ctor_external(&v88, *(a1 + 104), *(a1 + 112));
  }

  else
  {
    v88 = *(a1 + 104);
  }

  v89 = v12;
  v13 = v91;
  if (v91 >= v92)
  {
    v91 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>(&v90, &v88);
    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v14 = *&v88.__r_.__value_.__l.__data_;
    *(v91 + 16) = *(&v88.__r_.__value_.__l + 2);
    *v13 = v14;
    memset(&v88, 0, sizeof(v88));
    *(v13 + 24) = v89;
    v91 = v13 + 32;
  }

  v15 = a3[1];
  if (*a3 != v15)
  {
    v17 = *(a1 + 296);
    v16 = *(a1 + 304);
    v18 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 3);
    if (v18 != (v15 - *a3) >> 3)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v88);
      v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v88, "the number of input tensors ", 28);
      v78 = MEMORY[0x1B8C84C30](v77, (a3[1] - *a3) >> 3);
      v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, " != ", 4);
      v80 = MEMORY[0x1B8C84C30](v79, v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, " , the list of input tensor names", 33);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v88);
    }

    if (v16 != v17)
    {
      v19 = 0;
      v20 = 0;
      if (v18 <= 1)
      {
        v18 = 1;
      }

      do
      {
        v21 = (*(a1 + 296) + v19);
        v22 = *(*a3 + 8 * v20);
        if (*(v21 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v88, *v21, *(v21 + 1));
        }

        else
        {
          v23 = *v21;
          v88.__r_.__value_.__r.__words[2] = *(v21 + 2);
          *&v88.__r_.__value_.__l.__data_ = v23;
        }

        v89 = v22;
        v24 = v91;
        if (v91 >= v92)
        {
          v91 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>(&v90, &v88);
          if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v88.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v25 = *&v88.__r_.__value_.__l.__data_;
          *(v91 + 16) = *(&v88.__r_.__value_.__l + 2);
          *v24 = v25;
          memset(&v88, 0, sizeof(v88));
          *(v24 + 24) = v89;
          v91 = v24 + 32;
        }

        ++v20;
        v19 += 24;
      }

      while (v18 != v20);
    }
  }

  if (*(a1 + 480) == 1)
  {
    v26 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 280) - *(a1 + 272)) >> 3);
    v27 = *(a1 + 8);
    v28 = *(a1 + 16);
    if (v26 != (v28 - v27) >> 3)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v88);
      v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v88, "the number of cached input tensors ", 35);
      v82 = MEMORY[0x1B8C84C30](v81, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 280) - *(a1 + 272)) >> 3));
      v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, " != ", 4);
      v84 = MEMORY[0x1B8C84C30](v83, v26);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, " , the list of cached input tensor names", 40);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v88);
    }

    if (v28 != v27)
    {
      v29 = 0;
      v30 = 0;
      do
      {
        String = quasar::PTree::getString(*(v27 + 8 * v30));
        v32 = *(String + 23);
        if ((v32 & 0x80u) != 0)
        {
          v32 = *(String + 8);
        }

        if (v32)
        {
          v33 = quasar::PTree::getString(*(*(a1 + 8) + 8 * v30));
          v34 = *(*(a1 + 8) + 8 * v30);
          if (*(v33 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v88, *v33, *(v33 + 8));
          }

          else
          {
            v35 = *v33;
            v88.__r_.__value_.__r.__words[2] = *(v33 + 16);
            *&v88.__r_.__value_.__l.__data_ = v35;
          }

          v89 = v34;
          v39 = v91;
          if (v91 >= v92)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v36 = (*(a1 + 272) + v29);
          v37 = *(*(a1 + 8) + 8 * v30);
          if (*(v36 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v88, *v36, *(v36 + 1));
          }

          else
          {
            v38 = *v36;
            v88.__r_.__value_.__r.__words[2] = *(v36 + 2);
            *&v88.__r_.__value_.__l.__data_ = v38;
          }

          v89 = v37;
          v39 = v91;
          if (v91 >= v92)
          {
LABEL_38:
            v91 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>(&v90, &v88);
            if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v88.__r_.__value_.__l.__data_);
            }

            goto LABEL_40;
          }
        }

        v40 = *&v88.__r_.__value_.__l.__data_;
        *(v39 + 16) = *(&v88.__r_.__value_.__l + 2);
        *v39 = v40;
        memset(&v88, 0, sizeof(v88));
        *(v39 + 24) = v89;
        v91 = v39 + 32;
LABEL_40:
        ++v30;
        v27 = *(a1 + 8);
        v29 += 24;
      }

      while (v30 < (*(a1 + 16) - v27) >> 3);
    }
  }

  if ((*(a1 + 271) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 256))
    {
      goto LABEL_54;
    }
  }

  else if (!*(a1 + 271))
  {
    goto LABEL_54;
  }

  v41 = *(a1 + 72);
  if (v41)
  {
    Size = kaldi::quasar::ComputeEngineBufferItf::GetSize(v41);
    kaldi::quasar::ComputeEngineBufferItf::GetShape(*a2, &v88.__r_.__value_.__l.__data_);
    v43 = *v88.__r_.__value_.__l.__data_;
    v88.__r_.__value_.__l.__size_ = v88.__r_.__value_.__r.__words[0];
    operator delete(v88.__r_.__value_.__l.__data_);
    if (Size != v43)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v88);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v88, "maskings_->GetSize() == in->GetShape()[0]", 41);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v88);
    }

    v44 = *(a1 + 72);
    if (*(a1 + 271) < 0)
    {
      std::string::__init_copy_ctor_external(&v88, *(a1 + 248), *(a1 + 256));
    }

    else
    {
      v88 = *(a1 + 248);
    }

    v89 = v44;
    v45 = v91;
    if (v91 >= v92)
    {
      v91 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>(&v90, &v88);
      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v46 = *&v88.__r_.__value_.__l.__data_;
      *(v91 + 16) = *(&v88.__r_.__value_.__l + 2);
      *v45 = v46;
      memset(&v88, 0, sizeof(v88));
      *(v45 + 24) = v89;
      v91 = v45 + 32;
    }
  }

LABEL_54:
  v86 = 0uLL;
  v87 = 0;
  memset(&v85, 0, sizeof(v85));
  v47 = 128;
  if (a6)
  {
    v47 = 176;
  }

  v48 = a1 + v47;
  v49 = *(a1 + v47 + 23);
  if (v49 < 0)
  {
    v49 = *(v48 + 8);
  }

  if (!v49)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v88);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v88, "!out_node.empty()", 17);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v88);
  }

  v50 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v85, v48);
  v85.__end_ = v50;
  if (*(a1 + 480) == 1)
  {
    if (*(a1 + 80) == *(a1 + 88))
    {
      std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(&v85, v50, *(a1 + 320), *(a1 + 328), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 328) - *(a1 + 320)) >> 3));
    }

    else
    {
      v51 = *(a1 + 320);
      v52 = *(a1 + 328);
      while (v51 != v52)
      {
        v53 = *(a1 + 80);
        v54 = *(a1 + 88);
        if (v53 != v54)
        {
          v55 = *(v51 + 23);
          if (v55 >= 0)
          {
            v56 = *(v51 + 23);
          }

          else
          {
            v56 = *(v51 + 8);
          }

          while (1)
          {
            v57 = *(v53 + 23);
            v58 = v57;
            if ((v57 & 0x80u) != 0)
            {
              v57 = *(v53 + 8);
            }

            if (v57 == v56)
            {
              v59 = v58 >= 0 ? v53 : *v53;
              v60 = v55 >= 0 ? v51 : *v51;
              if (!memcmp(v59, v60, v56))
              {
                break;
              }
            }

            v53 += 48;
            if (v53 == v54)
            {
              goto LABEL_80;
            }
          }
        }

        if (v53 == v54)
        {
LABEL_80:
          std::vector<std::string>::push_back[abi:ne200100](&v85, v51);
        }

        v51 += 24;
      }
    }
  }

  if (!a5 || (v62 = *(a1 + 344), v61 = *(a1 + 352), v62 == v61))
  {
    v63 = 0;
  }

  else
  {
    if (*(a1 + 480) == 1)
    {
      do
      {
        if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 32), v62))
        {
          std::vector<std::string>::push_back[abi:ne200100](&v85, v62);
        }

        v62 = (v62 + 24);
      }

      while (v62 != v61);
    }

    else
    {
      std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(&v85, v85.__end_, *(a1 + 344), *(a1 + 352), 0xAAAAAAAAAAAAAAABLL * ((v61 - v62) >> 3));
    }

    v63 = 1;
  }

  v64 = *(a1 + 496);
  memset(&v88, 0, sizeof(v88));
  (*(*v64 + 136))(v64, &v90, &v85, &v88, &v86);
  v93[0] = &v88;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v93);
  v65 = *v86;
  *v86 = 0;
  v66 = *a4;
  *a4 = v65;
  if (v66)
  {
    (*(*v66 + 8))(v66);
  }

  if (*(a1 + 480) == 1)
  {
    std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> *,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> *,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> *,0>((v86 + 8), *(&v86 + 1), v86);
    v68 = v67;
    v69 = *(&v86 + 1);
    while (v69 != v68)
    {
      v71 = *--v69;
      v70 = v71;
      *v69 = 0;
      if (v71)
      {
        (*(*v70 + 8))(v70);
      }
    }

    *(&v86 + 1) = v68;
    if (v63 && *(a1 + 80) != *(a1 + 88))
    {
      kaldi::quasar::CEInferenceNet::GetExtraOutputFromSharedAddressCachedStates(a1, &v90, &v88);
      std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__vdeallocate(a5);
      *a5 = v88;
      memset(&v88, 0, sizeof(v88));
      v93[0] = &v88;
      std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](v93);
    }

    kaldi::quasar::CEInferenceNet::GetAndCacheOutput(a1, &v86, a5);
  }

  else if (v63)
  {
    std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> *,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> *,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> *,0>((v86 + 8), *(&v86 + 1), v86);
    v73 = v72;
    v74 = *(&v86 + 1);
    while (v74 != v73)
    {
      v76 = *--v74;
      v75 = v76;
      *v74 = 0;
      if (v76)
      {
        (*(*v75 + 8))(v75);
      }
    }

    *(&v86 + 1) = v73;
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__vdeallocate(a5);
    *a5 = v86;
    *(a5 + 16) = v87;
    v87 = 0;
    v86 = 0uLL;
  }

  v88.__r_.__value_.__r.__words[0] = &v85;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v88);
  v88.__r_.__value_.__r.__words[0] = &v86;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v88);
  v88.__r_.__value_.__r.__words[0] = &v90;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v88);
}

uint64_t kaldi::quasar::CEInferenceNet::Feedforward(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v8 = *(a1 + 496);
  v9 = kaldi::quasar::CEInferenceNet::Shape::Get((a1 + 504), *(a2 + 20), *(a2 + 16));
  (*(*v8 + 64))(&v12, v8, v9);
  if (*(a2 + 20) >= 1)
  {
    v10 = 0;
    do
    {
      (*(*v12 + 88))(v12);
      ++v10;
    }

    while (v10 < *(a2 + 20));
  }

  kaldi::quasar::CEInferenceNet::Feedforward(a1, &v12, a3, a4);
  result = v12;
  v12 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

{
  v15 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 496);
  v14 = *(a2 + 16);
  v11 = 0;
  v12 = 0;
  __p = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, &v14, &v15, 1uLL);
  (*(*v8 + 64))(&v13, v8, &__p);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  (*(*v13 + 88))(v13, *(a2 + 8), *(a2 + 16), 0);
  kaldi::quasar::CEInferenceNet::Feedforward(a1, &v13, a3, a4);
  result = v13;
  v13 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_1B50E8AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::CuSubVector<float>::~CuSubVector(uint64_t result)
{
  *result = &unk_1F2CFCA48;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_1B50E8CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::CEInferenceNet::Feedforward(_BYTE *a1, uint64_t a2, int32x2_t *a3, uint64_t a4)
{
  if (*(a2 + 20))
  {
    v10 = 0;
    kaldi::quasar::CEInferenceNet::Feedforward(a1, a2, &v10, a4);
    if (a1[485] == 1)
    {
      kaldi::quasar::CEInferenceNet::ReshapeVectorOutputBuffToMatrix(&v10);
    }

    v9 = *(a2 + 20);
    kaldi::quasar::CEInferenceNet::CopyToMatrix(a1, &v10, &v9, a3);
    if (v10)
    {
      v7 = *(*v10 + 8);

      v7();
    }
  }

  else
  {
    v8 = (*(*a1 + 176))(a1, a4);

    kaldi::CuMatrix<float>::Resize(a3, 0, v8, 0, 0);
  }
}

void sub_1B50E8E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::CEInferenceNet::ReshapeVectorOutputBuffToMatrix(kaldi::quasar::ComputeEngineBufferItf **a1)
{
  v12 = *MEMORY[0x1E69E9840];
  kaldi::quasar::ComputeEngineBufferItf::GetShape(*a1, &__p);
  v2 = v9 - __p;
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v2 == 8)
  {
    v3 = *a1;
    v11[0] = 1;
    v11[1] = kaldi::quasar::ComputeEngineBufferItf::GetSize(v3);
    v9 = 0;
    v10 = 0;
    __p = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, v11, &v12, 2uLL);
    (*(*v3 + 192))(&v7, v3, &__p);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    v4 = v7;
    v7 = 0;
    v5 = *a1;
    *a1 = v4;
    if (v5)
    {
      (*(*v5 + 8))(v5);
      v6 = v7;
      v7 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }
    }
  }
}

void sub_1B50E8FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::CEInferenceNet::Feedforward(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = 0;
  kaldi::quasar::CEInferenceNet::Feedforward(a1, a2, &v8, a4);
  v5 = v8;
  (*(*v8 + 40))(v8, a3);
  v6 = *(*v5 + 8);

  return v6(v5);
}

void sub_1B50E9068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    kaldi::quasar::CEInferenceNet::Feedforward(a10);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::CEInferenceNet::GetOutput()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented TODO");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::quasar::CEInferenceNet::GetUnitOutput()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented TODO");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

float kaldi::quasar::CEInferenceNet::GetUnitOutput(uint64_t a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 496);
  v7 = *(a2 + 16);
  v15[0] = 1;
  v15[1] = v7;
  v12 = 0;
  v13 = 0;
  __p = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, v15, &v16, 2uLL);
  (*(*v6 + 64))(&v14, v6, &__p);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  (*(*v14 + 88))(v14, *(a2 + 8), *(a2 + 16), 0);
  UnitOutput = kaldi::quasar::CEInferenceNet::GetUnitOutput(a1, &v14, a3);
  v9 = v14;
  v14 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  return UnitOutput;
}

void sub_1B50E9260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::CEInferenceNet::ResetHistoryState(kaldi::quasar::CEInferenceNet *this)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(this + 247) < 0)
  {
    v2 = *(this + 29);
    if (!v2)
    {
      return;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    v1 = *(this + 62);
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::string::__init_copy_ctor_external(&v11, *(this + 28), v2);
  }

  else
  {
    if (!*(this + 247))
    {
      return;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    v1 = *(this + 62);
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v11 = *(this + 224);
  }

  memset(v3, 0, sizeof(v3));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v3, &v11, &v12, 1uLL);
  (*(*v1 + 128))(v1, &v7, &v4, v3, 0);
  v10 = v3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v3[0] = &v4;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v3);
  v4 = &v7;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void sub_1B50E93F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, char a15)
{
  a9 = &a12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  a12 = &a15;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEInferenceNet::GetExtraOutputFromSharedAddressCachedStates(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::vector[abi:ne200100](a3, 0xAAAAAAAAAAAAAAABLL * ((a1[35] - a1[34]) >> 3));
  v6 = *a2;
  if (a2[1] != *a2)
  {
    v7 = 0;
    do
    {
      std::string::basic_string[abi:ne200100]<0>(&v32, "");
      v9 = a1[34];
      v8 = a1[35];
      if (v9 == v8)
      {
        v14 = a1[34];
      }

      else
      {
        v10 = (v6 + 32 * v7);
        v11 = *(v10 + 23);
        if (v11 >= 0)
        {
          v12 = *(v10 + 23);
        }

        else
        {
          v12 = v10[1];
        }

        if (v11 >= 0)
        {
          v13 = v10;
        }

        else
        {
          v13 = *v10;
        }

        v14 = a1[34];
        while (1)
        {
          v15 = *(v14 + 23);
          v16 = v15;
          if ((v15 & 0x80u) != 0)
          {
            v15 = *(v14 + 8);
          }

          if (v15 == v12)
          {
            v17 = v16 >= 0 ? v14 : *v14;
            if (!memcmp(v17, v13, v12))
            {
              break;
            }
          }

          v14 += 24;
          if (v14 == v8)
          {
            v14 = v8;
            break;
          }
        }
      }

      if (v8 != v14)
      {
        std::string::operator=(&v32, (a1[40] + v14 - v9));
      }

      v19 = a1[43];
      v18 = a1[44];
      if (v19 == v18)
      {
        v22 = a1[43];
      }

      else
      {
        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v32.__r_.__value_.__l.__size_;
        }

        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v32;
        }

        else
        {
          v21 = v32.__r_.__value_.__r.__words[0];
        }

        v22 = a1[43];
        while (1)
        {
          v23 = *(v22 + 23);
          v24 = v23;
          if ((v23 & 0x80u) != 0)
          {
            v23 = *(v22 + 8);
          }

          if (v23 == size)
          {
            v25 = v24 >= 0 ? v22 : *v22;
            if (!memcmp(v25, v21, size))
            {
              break;
            }
          }

          v22 += 24;
          if (v22 == v18)
          {
            v22 = v18;
            break;
          }
        }
      }

      if (v18 != v22)
      {
        (*(**(*a2 + 32 * v7 + 24) + 16))(&v31);
        v26 = -1431655765 * ((v22 - v19) >> 3);
        v27 = *a3;
        v28 = v31;
        v31 = 0;
        v29 = *(v27 + 8 * v26);
        *(v27 + 8 * v26) = v28;
        if (v29)
        {
          (*(*v29 + 8))(v29);
        }

        v30 = v31;
        v31 = 0;
        if (v30)
        {
          (*(*v30 + 8))(v30);
        }

        kaldi::quasar::ComputeEngineBufferItf::SetName(*(*a3 + 8 * v26), &v32);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      ++v7;
      v6 = *a2;
    }

    while (v7 < (a2[1] - *a2) >> 5);
  }
}

void sub_1B50E96E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEInferenceNet::GetAndCacheOutput(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (a3)
  {
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::resize(a3, 0xAAAAAAAAAAAAAAABLL * ((a1[44] - a1[43]) >> 3));
  }

  v6 = *a2;
  if (a2[1] != *a2)
  {
    for (i = 0; i < (a2[1] - *a2) >> 3; ++i)
    {
      if (a3)
      {
        v9 = a1[43];
        v8 = a1[44];
        String = quasar::PTree::getString(*(v6 + 8 * i));
        if (v9 != v8)
        {
          v11 = *(String + 23);
          if (v11 >= 0)
          {
            v12 = *(String + 23);
          }

          else
          {
            v12 = *(String + 8);
          }

          if (v11 >= 0)
          {
            v13 = String;
          }

          else
          {
            v13 = *String;
          }

          while (1)
          {
            v14 = *(v9 + 23);
            v15 = v14;
            if ((v14 & 0x80u) != 0)
            {
              v14 = *(v9 + 8);
            }

            if (v14 == v12)
            {
              v16 = v15 >= 0 ? v9 : *v9;
              if (!memcmp(v16, v13, v12))
              {
                break;
              }
            }

            v9 += 24;
            if (v9 == v8)
            {
              v9 = v8;
              break;
            }
          }
        }

        v6 = *a2;
        if (v9 != a1[44])
        {
          v17 = (v9 - a1[43]) >> 3;
          (*(**(v6 + 8 * i) + 16))(v38);
          v18 = *a3;
          v19 = (0xAAAAAAAB00000000 * v17) >> 29;
          v20 = v38[0];
          v38[0] = 0;
          v21 = *(v18 + v19);
          *(v18 + v19) = v20;
          if (v21)
          {
            (*(*v21 + 8))(v21);
          }

          v22 = v38[0];
          v38[0] = 0;
          if (v22)
          {
            (*(*v22 + 8))(v22);
          }

          v6 = *a2;
        }
      }

      v24 = a1[40];
      v23 = a1[41];
      v25 = quasar::PTree::getString(*(v6 + 8 * i));
      if (v24 != v23)
      {
        v26 = *(v25 + 23);
        if (v26 >= 0)
        {
          v27 = *(v25 + 23);
        }

        else
        {
          v27 = *(v25 + 8);
        }

        if (v26 >= 0)
        {
          v28 = v25;
        }

        else
        {
          v28 = *v25;
        }

        while (1)
        {
          v29 = *(v24 + 23);
          v30 = v29;
          if ((v29 & 0x80u) != 0)
          {
            v29 = *(v24 + 8);
          }

          if (v29 == v27)
          {
            v31 = v30 >= 0 ? v24 : *v24;
            if (!memcmp(v31, v28, v27))
            {
              break;
            }
          }

          v24 += 24;
          if (v24 == v23)
          {
            v24 = v23;
            break;
          }
        }
      }

      if (v24 != a1[41])
      {
        v32 = quasar::PTree::getString(*(*a2 + 8 * i));
        if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1 + 4, v32))
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v38);
          std::operator<<[abi:ne200100]<std::char_traits<char>>(v38, "cached_output_input_map.find(output_name) != cached_output_input_map.end()");
          goto LABEL_54;
        }

        v38[0] = v32;
        v33 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 4, v32);
        v34 = -1431655765 * ((v24 - a1[40]) >> 3);
        v35 = a1[1];
        v36 = *(*a2 + 8 * i);
        *(*a2 + 8 * i) = 0;
        v37 = *(v35 + 8 * v34);
        *(v35 + 8 * v34) = v36;
        if (v37)
        {
          (*(*v37 + 8))(v37);
          v36 = *(a1[1] + 8 * v34);
        }

        kaldi::quasar::ComputeEngineBufferItf::SetName(v36, (v33 + 5));
      }

      v6 = *a2;
    }
  }

  if (a3 && 0xAAAAAAAAAAAAAAABLL * ((a1[44] - a1[43]) >> 3) != (a3[1] - *a3) >> 3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v38);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v38, "out_extras->size() == cfg_.output_extra_tensor_list.size()");
LABEL_54:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v38);
  }
}

uint64_t kaldi::quasar::CEInferenceNet::MultiIOFeedforward(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, int a6)
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 496);
  v18 = *(a2 + 16);
  v15 = 0;
  v16 = 0;
  __p = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, &v18, &v19, 1uLL);
  (*(*v12 + 64))(&v17, v12, &__p);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  (*(*v17 + 88))(v17, *(a2 + 8), *(a2 + 16), 0);
  kaldi::quasar::CEInferenceNet::MultiIOFeedforward(a1, &v17, a3, a4, a5, a6);
  result = v17;
  v17 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

{
  v12 = *(a1 + 496);
  v13 = kaldi::quasar::CEInferenceNet::Shape::Get((a1 + 504), *(a2 + 20), *(a2 + 16));
  (*(*v12 + 64))(&v16, v12, v13);
  if (*(a2 + 20) >= 1)
  {
    v14 = 0;
    do
    {
      (*(*v16 + 88))(v16);
      ++v14;
    }

    while (v14 < *(a2 + 20));
  }

  kaldi::quasar::CEInferenceNet::MultiIOFeedforward(a1, &v16, a3, a4, a5, a6);
  result = v16;
  v16 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_1B50E9C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B50E9DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  _Unwind_Resume(exception_object);
}

kaldi::quasar::ComputeEngineBufferItf *kaldi::quasar::CEInferenceNet::MultiIOFeedforward(uint64_t a1, uint64_t a2, void *a3, int32x2_t *a4, uint64_t a5, int a6)
{
  v12 = 0;
  kaldi::quasar::CEInferenceNet::MultiIOFeedforward(a1, a2, a3, &v12, a5, a6);
  if (*(a1 + 485) == 1)
  {
    kaldi::quasar::CEInferenceNet::ReshapeVectorOutputBuffToMatrix(&v12);
  }

  v11 = *(a2 + 20);
  kaldi::quasar::CEInferenceNet::CopyToMatrix(a1, &v12, &v11, a4);
  result = v12;
  if (v12)
  {
    v10 = *(*v12 + 8);

    return v10();
  }

  return result;
}

void sub_1B50E9EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::CEInferenceNet::MultiIOFeedforward(uint64_t a1, uint64_t a2, uint64_t **a3, int32x2_t *a4, uint64_t *a5, int a6)
{
  if (*(a2 + 20))
  {
    __src = 0;
    v44 = 0;
    v45 = 0;
    v10 = *a3;
    v11 = a3[1];
    if (*a3 != v11)
    {
      do
      {
        v12 = *(a1 + 496);
        v13 = kaldi::quasar::CEInferenceNet::Shape::Get((a1 + 504), *(*v10 + 20), *(*v10 + 16));
        (*(*v12 + 64))(&v46, v12, v13);
        v14 = *v10;
        if (*(*v10 + 20) >= 1)
        {
          v15 = 0;
          do
          {
            v16 = *(v14 + 8) + 4 * *(v14 + 24) * v15;
            v17 = *(v14 + 16);
            v18 = *(v14 + 32);
            v47 = &unk_1F2CFCA48;
            v48 = v16;
            v50 = v18;
            v49 = v17;
            ((*v46)[11])(v46);
            ++v15;
            v14 = *v10;
          }

          while (v15 < *(*v10 + 20));
        }

        v19 = v44;
        if (v44 >= v45)
        {
          v22 = __src;
          v23 = v44 - __src;
          v24 = (v44 - __src) >> 3;
          v25 = v24 + 1;
          if ((v24 + 1) >> 61)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v26 = v45 - __src;
          if ((v45 - __src) >> 2 > v25)
          {
            v25 = v26 >> 2;
          }

          v27 = v26 >= 0x7FFFFFFFFFFFFFF8;
          v28 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v27)
          {
            v28 = v25;
          }

          p_src = &__src;
          if (v28)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(&__src, v28);
          }

          v29 = v46;
          v46 = 0;
          *(8 * v24) = v29;
          v21 = 8 * v24 + 8;
          memcpy(0, v22, v23);
          v30 = __src;
          v31 = v45;
          __src = 0;
          v44 = v21;
          v45 = 0;
          v49 = v30;
          v50 = v31;
          v47 = v30;
          v48 = v30;
          std::__split_buffer<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::~__split_buffer(&v47);
        }

        else
        {
          v20 = v46;
          v46 = 0;
          *v44 = v20;
          v21 = (v19 + 8);
        }

        v44 = v21;
        v32 = v46;
        v46 = 0;
        if (v32)
        {
          (*(*v32 + 1))(v32);
        }

        ++v10;
      }

      while (v10 != v11);
    }

    v42 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    if (a5 && (v33 = a5[1] - *a5) != 0)
    {
      std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::resize(&v47, v33 >> 3);
      v34 = 1;
    }

    else
    {
      v34 = 0;
    }

    kaldi::quasar::CEInferenceNet::MultiIOFeedforward(a1, a2, &__src, &v42, &v47, a6);
    if (*(a1 + 485) == 1)
    {
      kaldi::quasar::CEInferenceNet::ReshapeVectorOutputBuffToMatrix(&v42);
    }

    LODWORD(v46) = *(a2 + 20);
    kaldi::quasar::CEInferenceNet::CopyToMatrix(a1, &v42, &v46, a4);
    if (v34)
    {
      v35 = *a5;
      if (a5[1] != *a5)
      {
        v36 = 0;
        v37 = 0;
        do
        {
          v38 = *(v35 + 8 * v37);
          LODWORD(v46) = *(a2 + 20);
          kaldi::quasar::CEInferenceNet::CopyToMatrix(a1, &v47[v36], &v46, v38);
          ++v37;
          v35 = *a5;
          ++v36;
        }

        while (v37 < (a5[1] - *a5) >> 3);
      }
    }

    v46 = &v47;
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v46);
    if (v42)
    {
      (*(*v42 + 8))(v42);
    }

    v47 = &__src;
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v47);
  }

  else
  {
    v39 = (*(*a1 + 176))(a1, 0);

    kaldi::CuMatrix<float>::Resize(a4, 0, v39, 0, 0);
  }
}

void sub_1B50EA31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void **a15, char a16)
{
  a15 = &a16;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a15);
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  a15 = &a12;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

BOOL kaldi::quasar::CEInferenceNet::IsStreamingWithMasking(kaldi::quasar::CEInferenceNet *this)
{
  v1 = *(this + 271);
  if (v1 < 0)
  {
    v1 = *(this + 32);
  }

  return v1 != 0;
}

uint64_t kaldi::quasar::CEInferenceNet::OutputDim(kaldi::quasar::CEInferenceNet *this, int a2)
{
  v2 = 420;
  if (a2)
  {
    v2 = 424;
  }

  return *(this + v2);
}

unint64_t kaldi::quasar::CEInferenceNet::SetMaskingsForInputs(kaldi::quasar::CEInferenceNet *this, int a2, int a3)
{
  LODWORD(v4) = a2;
  v18 = *MEMORY[0x1E69E9840];
  result = (*(*this + 80))(this);
  if (result)
  {
    v7 = *(this + 62);
    if (v7)
    {
      if (*(this + 9))
      {
        v4 = v4;
      }

      else
      {
        v4 = v4;
        if (*(this + 484) == 1)
        {
          v16 = 1;
          v17 = v4;
          v13 = 0;
          v14 = 0;
          __p = 0;
          std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, &v16, &v18, 2uLL);
          (*(*v7 + 72))(&v15, v7, &__p);
        }

        else
        {
          v16 = 1;
          v17 = v4;
          v13 = 0;
          v14 = 0;
          __p = 0;
          std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, &v16, &v18, 2uLL);
          (*(*v7 + 64))(&v15, v7, &__p);
        }

        v8 = v15;
        v15 = 0;
        v9 = *(this + 9);
        *(this + 9) = v8;
        if (v9)
        {
          (*(*v9 + 8))(v9);
          v10 = v15;
          v15 = 0;
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }
        }

        if (__p)
        {
          v13 = __p;
          operator delete(__p);
        }
      }

      if (kaldi::quasar::ComputeEngineBufferItf::GetSize(*(this + 9)) != v4)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(&__p, "maskings_->GetSize() == input_frames_length");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
      }

      if (kaldi::quasar::ComputeEngineBufferItf::GetSize(*(this + 9)) == a3)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        do
        {
          (*(**(this + 9) + 96))(*(this + 9), 1, v11++);
        }

        while (v11 < kaldi::quasar::ComputeEngineBufferItf::GetSize(*(this + 9)) - a3);
      }

      result = kaldi::quasar::ComputeEngineBufferItf::GetSize(*(this + 9));
      while (v11 < result)
      {
        (*(**(this + 9) + 96))(*(this + 9), 0, v11);
        result = kaldi::quasar::ComputeEngineBufferItf::GetSize(*(this + 9));
        ++v11;
      }
    }
  }

  return result;
}

void sub_1B50EA704(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::CEInferenceNet::ResetCachedStates(kaldi::quasar::CEInferenceNet *this)
{
  if (*(this + 480) == 1)
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Resetting for streaming cached stateful tensors", 47);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v2);
    }

    kaldi::quasar::CEInferenceNet::InitialCachedStatesInit(this);
  }
}

kaldi::quasar::CEInferenceNetConfig *kaldi::quasar::CEInferenceNetConfig::CEInferenceNetConfig(kaldi::quasar::CEInferenceNetConfig *this)
{
  *(this + 12) = 0u;
  *(this + 15) = 0u;
  *(this + 38) = 0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 39) = -1;
  *(this + 80) = -1;
  std::string::basic_string[abi:ne200100]<0>(this + 328, "R,C");
  *(this + 48) = 0;
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 44) = 0;
  *(this + 374) = 0;
  return this;
}

void sub_1B50EA8B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 + 288);
  if (v4)
  {
    *(v2 + 296) = v4;
    operator delete(v4);
  }

  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 167) < 0)
  {
    operator delete(*(v2 + 144));
  }

  if (*(v2 + 143) < 0)
  {
    operator delete(*(v2 + 120));
  }

  if (*(v2 + 119) < 0)
  {
    operator delete(*(v2 + 96));
  }

  if (*(v2 + 95) < 0)
  {
    operator delete(*(v2 + 72));
  }

  if (*(v2 + 71) < 0)
  {
    operator delete(*(v2 + 48));
  }

  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::CEInferenceNetConfig::~CEInferenceNetConfig(kaldi::quasar::CEInferenceNetConfig *this)
{
  v2 = *(this + 48);
  *(this + 48) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 375) < 0)
  {
    operator delete(*(this + 44));
  }

  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
  }

  v3 = *(this + 36);
  if (v3)
  {
    *(this + 37) = v3;
    operator delete(v3);
  }

  v4 = (this + 264);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 240);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 216);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 192);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 168);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<std::pair<std::string,std::string>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::pair<std::string,std::string>::pair[abi:ne200100](v4, v6);
      v6 += 3;
      v4 = v11 + 2;
      v11 += 2;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_1B50EAC30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 48;
      std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void kaldi::CuSubVector<float>::Read()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Function is not implemented for this class");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::CuSubVector<float>::~CuSubVector(uint64_t a1)
{
  *a1 = &unk_1F2CFCA48;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  JUMPOUT(0x1B8C85350);
}

void std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 32;
        std::allocator<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a2 + 24) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

std::string *std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(std::vector<std::string> *a1, std::vector<std::string>::pointer __from_s, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = __from_s;
  if (a5 >= 1)
  {
    v7 = a3;
    end = a1->__end_;
    value = a1->__end_cap_.__value_;
    if ((0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3)) >= a5)
    {
      v16 = end - __from_s;
      if ((0xAAAAAAAAAAAAAAABLL * ((end - __from_s) >> 3)) >= a5)
      {
        v19 = a5;
        std::vector<std::string>::__move_range(a1, __from_s, a1->__end_, &__from_s[a5]);
        v20 = &v7[v19];
        v21 = v5;
        do
        {
          std::string::operator=(v21++, v7++);
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (a3 + v16), a4, a1->__end_);
        if (v16 >= 1)
        {
          std::vector<std::string>::__move_range(a1, v5, end, &v5[a5]);
          v18 = v5;
          do
          {
            std::string::operator=(v18++, v7++);
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      begin = a1->__begin_;
      v12 = a5 - 0x5555555555555555 * ((end - a1->__begin_) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v13 = __from_s - begin;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v30.__end_cap_.__value_ = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v15);
      }

      v30.__first_ = 0;
      v30.__begin_ = (8 * (v13 >> 3));
      v30.__end_ = v30.__begin_;
      v30.__end_cap_.__value_ = 0;
      std::__split_buffer<std::string>::__construct_at_end_with_size<std::__wrap_iter<std::string*>>(&v30, a3, a5);
      v22 = v30.__begin_;
      memcpy(v30.__end_, v5, a1->__end_ - v5);
      v23 = a1->__begin_;
      v24 = v30.__begin_;
      v30.__end_ = (v30.__end_ + a1->__end_ - v5);
      a1->__end_ = v5;
      v25 = v5 - v23;
      v26 = (v24 - (v5 - v23));
      memcpy(v26, v23, v25);
      v27 = a1->__begin_;
      a1->__begin_ = v26;
      v28 = a1->__end_cap_.__value_;
      *&a1->__end_ = *&v30.__end_;
      v30.__end_ = v27;
      v30.__end_cap_.__value_ = v28;
      v30.__first_ = v27;
      v30.__begin_ = v27;
      std::__split_buffer<std::string>::~__split_buffer(&v30);
      return v22;
    }
  }

  return v5;
}

void std::vector<std::string>::__move_range(std::vector<std::string> *this, std::vector<std::string>::pointer __from_s, std::vector<std::string>::pointer __from_e, std::vector<std::string>::pointer __to)
{
  end = this->__end_;
  v7 = __from_s + end - __to;
  v8 = end;
  if (v7 < __from_e)
  {
    v9 = v7;
    v8 = this->__end_;
    do
    {
      v10 = *v9;
      v8->__r_.__value_.__r.__words[2] = *(v9 + 16);
      *&v8->__r_.__value_.__l.__data_ = v10;
      ++v8;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v9 += 24;
    }

    while (v9 < __from_e);
  }

  this->__end_ = v8;
  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v11, __from_s, v7, end);
}

void std::__split_buffer<std::string>::__construct_at_end_with_size<std::__wrap_iter<std::string*>>(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (a3)
  {
    v6 = &v4[a3];
    v7 = 24 * a3;
    do
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *a2, *(a2 + 1));
      }

      else
      {
        v8 = *a2;
        v4->__r_.__value_.__r.__words[2] = *(a2 + 2);
        *&v4->__r_.__value_.__l.__data_ = v8;
      }

      ++v4;
      a2 = (a2 + 24);
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(a1 + 16) = v4;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(a4 - 1);
      a4 -= 24;
      if (v8 < 0)
      {
        operator delete(*a4);
      }

      v9 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 8);
      *a4 = v9;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
      v7 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> *,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> *,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *v4;
      *v4 = 0;
      v7 = *a3;
      *a3 = v6;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      ++v4;
      ++a3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__vdeallocate(void **a1)
{
  if (*a1)
  {
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void quasar::PersonalizedLmData::PersonalizedLmData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a3 + 23) < 0)
  {
    if (*(a3 + 8))
    {
      std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
      goto LABEL_7;
    }
  }

  else if (*(a3 + 23))
  {
    __p = *a3;
    goto LABEL_7;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "lm-personalize.data");
LABEL_7:
  v6 = *a4;
  *a4 = 0;
  v8[3] = v6;
  std::string::basic_string[abi:ne200100]<0>(v8, "");
  quasar::LmData::LmData(a1);
}

void sub_1B50EB738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __p = (v16 - 144);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v15);
  quasar::LmData::~LmData(v14);
  _Unwind_Resume(a1);
}

uint64_t quasar::PersonalizedLmData::addSentence(uint64_t a1, unsigned int *a2, std::string *a3, uint64_t a4, uint64_t a5, int a6, __int32 *a7)
{
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v65, *a4, *(a4 + 8));
  }

  else
  {
    v65 = *a4;
  }

  v64 = 1;
  if (a6)
  {
    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v63, *a4, *(a4 + 8));
    }

    else
    {
      v63 = *a4;
    }

    quasar::LmData::parseCountPhrase(&v63, &v65, &v64);
    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }
  }

  v14 = a1 + 60 * *a2;
  if ((*(a1 + 996) & 1) == 0)
  {
    goto LABEL_54;
  }

  if (quasar::gLogLevel >= 6)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "RECEIVED ", 9);
    v16 = *(a4 + 23);
    if (v16 >= 0)
    {
      v17 = a4;
    }

    else
    {
      v17 = *a4;
    }

    if (v16 >= 0)
    {
      v18 = *(a4 + 23);
    }

    else
    {
      v18 = *(a4 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
    quasar::QuasarTraceMessage::~QuasarTraceMessage(__p);
  }

  v19 = *(a4 + 23);
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a4 + 8);
  }

  if (!v19 || *a2 != 3 && (v24 = *(a1 + 616), v24) && v19 > v24)
  {
    if (quasar::gLogLevel >= 6)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Reject due to sentence length", 29);
      quasar::QuasarTraceMessage::~QuasarTraceMessage(__p);
    }

LABEL_54:
    v23 = 0;
    *(v14 + 116) += v64;
    goto LABEL_55;
  }

  if ((a5 & 1) == 0)
  {
    if ((*(a1 + 1088) & 1) == 0)
    {
      quasar::LmData::sanitize(a1, &v65);
    }

    quasar::trim(&v65);
    size = HIBYTE(v65.__r_.__value_.__r.__words[2]);
    if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v65.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      goto LABEL_54;
    }

    v26 = *(a1 + 872);
    if (v26)
    {
      (*(*v26 + 32))(v26);
      (*(**(a1 + 872) + 16))(*(a1 + 872), &v65);
      (*(**(a1 + 872) + 24))(__p);
      v28 = *(a1 + 360);
      v27 = *(a1 + 368);
      if (v28 != v27)
      {
        if ((SBYTE7(v47) & 0x80u) == 0)
        {
          v29 = BYTE7(v47);
        }

        else
        {
          v29 = __p[1];
        }

        if ((SBYTE7(v47) & 0x80u) == 0)
        {
          v30 = __p;
        }

        else
        {
          v30 = __p[0];
        }

        while (1)
        {
          v31 = *(v28 + 23);
          v32 = v31;
          if ((v31 & 0x80u) != 0)
          {
            v31 = *(v28 + 8);
          }

          if (v31 == v29)
          {
            v33 = v32 >= 0 ? v28 : *v28;
            if (!memcmp(v33, v30, v29))
            {
              break;
            }
          }

          v28 += 24;
          if (v28 == v27)
          {
            goto LABEL_62;
          }
        }
      }

      if (v28 == v27)
      {
LABEL_62:
        *(v14 + 116) += v64;
        if (SBYTE7(v47) < 0)
        {
          operator delete(__p[0]);
        }

        v23 = 0;
        goto LABEL_55;
      }

      if (SBYTE7(v47) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  __str = 0;
  v44 = 0;
  v45 = 0;
  v20 = quasar::LmData::tokenizeSentence(a1, &v65, &__str);
  if ((v20 & 1) == 0)
  {
LABEL_87:
    v23 = 0;
    *(v14 + 116) += v64;
    goto LABEL_88;
  }

  v21 = *(a1 + 580);
  if (v21)
  {
    v22 = *(a1 + 1092);
    if (v22 + ((v44 - __str) >> 5) > v21)
    {
      v23 = 0;
      *(v14 + 116) += v64;
      *(a1 + 996) = 0;
      goto LABEL_88;
    }

    *(a1 + 1092) = v22 + ((v44 - __str) >> 5);
  }

  v35 = *a2;
  if (*a2 == 3)
  {
    v36 = __str;
    goto LABEL_75;
  }

  v37 = *(a1 + 620);
  v36 = __str;
  if (v37 && __str != v44)
  {
    v38 = __str;
    while (1)
    {
      v39 = SHIBYTE(v38->__r_.__value_.__r.__words[2]);
      if ((v39 & 0x8000000000000000) != 0)
      {
        v39 = v38->__r_.__value_.__l.__size_;
      }

      if (v39 > v37)
      {
        break;
      }

      v38 = (v38 + 32);
      if (v38 == v44)
      {
        goto LABEL_75;
      }
    }

    if (quasar::gLogLevel >= 6)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Reject due to token length", 26);
      quasar::QuasarTraceMessage::~QuasarTraceMessage(__p);
    }

    goto LABEL_87;
  }

LABEL_75:
  __p[0] = 0;
  __p[1] = 0;
  *&v47 = 0;
  v40 = v44;
  if (v36 == v44)
  {
    goto LABEL_84;
  }

  do
  {
    memset(&v42, 0, sizeof(v42));
    if (*(a1 + 1088) == 1)
    {
      std::string::operator=(&v42, v36);
    }

    else
    {
      v41 = quasar::QsrText::SingletonInstance(v20);
      v20 = quasar::QsrText::encodeTokenQsrTextWithMetadata(v41, v36, &v42);
      if (!v20)
      {
        goto LABEL_80;
      }
    }

    v20 = std::vector<std::string>::push_back[abi:ne200100](__p, &v42);
LABEL_80:
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    v36 = (v36 + 32);
  }

  while (v36 != v40);
  v35 = *a2;
LABEL_84:
  v23 = quasar::LmData::addTokenizedSentence(a1, v35, a3, __p, v14 + 108, a5, v64, a7);
  v42.__r_.__value_.__r.__words[0] = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v42);
LABEL_88:
  __p[0] = &__str;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](__p);
LABEL_55:
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  return v23;
}

void sub_1B50EBD6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char *a18)
{
  quasar::QuasarTraceMessage::~QuasarTraceMessage(&a18);
  a18 = &a15;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a18);
  if (*(v18 - 89) < 0)
  {
    operator delete(*(v18 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::QsrText::SingletonInstance(quasar::QsrText *this)
{
  {
    operator new();
  }

  return quasar::QsrText::SingletonInstance(void)::singletonInstance;
}

void sub_1B50EBE98(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x10A0C408C7BA9F0);
  _Unwind_Resume(a1);
}

void quasar::PersonalizedLmData::addDocument(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v61[0] = quasar::LmData::hash(a1, a2, 0);
  v8 = (a1 + 60 * v61[0] + 108);
  if ((*(a1 + 996) & 1) == 0)
  {
    goto LABEL_13;
  }

  if (std::__hash_table<quasar::PersonalizedLmData::DocumentType,std::hash<quasar::PersonalizedLmData::DocumentType>,std::equal_to<quasar::PersonalizedLmData::DocumentType>,std::allocator<quasar::PersonalizedLmData::DocumentType>>::find<quasar::PersonalizedLmData::DocumentType>((a1 + 1048), a4))
  {
    if (quasar::gLogLevel >= 6)
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      *__p = 0u;
      v45 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Reject due to document type", 27);
LABEL_12:
      quasar::QuasarTraceMessage::~QuasarTraceMessage(__p);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v9 = *(a3 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a3 + 8);
  }

  if (v9)
  {
    v10 = *(a1 + 608);
    if (!v10 || v9 <= v10)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "\n");
      quasar::splitAndTrimNoEmpty(a3, __p, &v42);
      if (SBYTE7(v45) < 0)
      {
        operator delete(__p[0]);
      }

      v39 = 0;
      v40 = 0;
      v41 = 0;
      v11 = *(a1 + 612);
      if (v11 && 0xAAAAAAAAAAAAAAABLL * ((v43 - v42) >> 3) > v11)
      {
        if (quasar::gLogLevel >= 6)
        {
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v46 = 0u;
          *__p = 0u;
          v45 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Reject due to sentences per document", 36);
          quasar::QuasarTraceMessage::~QuasarTraceMessage(__p);
        }

        goto LABEL_53;
      }

      if (*(a1 + 584))
      {
        quasar::PersonalizedLmData::getEstimatedNumTokens();
      }

      v12 = v42;
      v13 = v43;
      while (1)
      {
        if (v12 == v13)
        {
          if (v39 != v40)
          {
            v14 = *(a1 + 872);
            if (!v14)
            {
              goto LABEL_58;
            }

            (*(*v14 + 32))(v14);
            v15 = *(a1 + 872);
            v37.__r_.__value_.__r.__words[0] = " ";
            v37.__r_.__value_.__l.__size_ = 1;
            quasar::join<std::vector<std::string>>(&v39, &v37);
            (*(*v15 + 16))(v15, __p);
            if (SBYTE7(v45) < 0)
            {
              operator delete(__p[0]);
            }

            (*(**(a1 + 872) + 24))(__p);
            v16 = *(a1 + 360);
            v17 = *(a1 + 368);
            if (v16 != v17)
            {
              if ((SBYTE7(v45) & 0x80u) == 0)
              {
                v18 = BYTE7(v45);
              }

              else
              {
                v18 = __p[1];
              }

              if ((SBYTE7(v45) & 0x80u) == 0)
              {
                v19 = __p;
              }

              else
              {
                v19 = __p[0];
              }

              while (1)
              {
                v20 = *(v16 + 23);
                v21 = v20;
                if ((v20 & 0x80u) != 0)
                {
                  v20 = *(v16 + 8);
                }

                if (v20 == v18)
                {
                  v22 = v21 >= 0 ? v16 : *v16;
                  if (!memcmp(v22, v19, v18))
                  {
                    break;
                  }
                }

                v16 += 24;
                if (v16 == v17)
                {
                  goto LABEL_61;
                }
              }
            }

            if (v16 != v17)
            {
              if (SBYTE7(v45) < 0)
              {
                operator delete(__p[0]);
              }

LABEL_58:
              ++v8[4];
              if (*a4 == 1)
              {
                v23 = 10;
LABEL_64:
                ++v8[v23];
              }

              else if (*a4 == 2)
              {
                v23 = 11;
                goto LABEL_64;
              }

              v24 = v39;
              v25 = v40;
              if (v39 == v40)
              {
                goto LABEL_54;
              }

              v26 = 0;
              while (2)
              {
                if (*(a1 + 996) == 1)
                {
                  v38 = 0;
                  if (*(a2 + 23) >= 0)
                  {
                    v27 = *(a2 + 23);
                  }

                  else
                  {
                    v27 = *(a2 + 8);
                  }

                  std::string::basic_string[abi:ne200100](&v37, v27 + 1);
                  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v28 = &v37;
                  }

                  else
                  {
                    v28 = v37.__r_.__value_.__r.__words[0];
                  }

                  if (v27)
                  {
                    if (*(a2 + 23) >= 0)
                    {
                      v29 = a2;
                    }

                    else
                    {
                      v29 = *a2;
                    }

                    memmove(v28, v29, v27);
                  }

                  *(&v28->__r_.__value_.__l.__data_ + v27) = 95;
                  std::to_string(&v36, ++v26);
                  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v30 = &v36;
                  }

                  else
                  {
                    v30 = v36.__r_.__value_.__r.__words[0];
                  }

                  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = v36.__r_.__value_.__l.__size_;
                  }

                  v32 = std::string::append(&v37, v30, size);
                  v33 = *&v32->__r_.__value_.__l.__data_;
                  *&v45 = *(&v32->__r_.__value_.__l + 2);
                  *__p = v33;
                  v32->__r_.__value_.__l.__size_ = 0;
                  v32->__r_.__value_.__r.__words[2] = 0;
                  v32->__r_.__value_.__r.__words[0] = 0;
                  v34 = (*(*a1 + 24))(a1, v61, __p, v24, 1, 0, &v38);
                  if (SBYTE7(v45) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v36.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v37.__r_.__value_.__l.__data_);
                  }

                  if (v34)
                  {
                    v35 = v8 + 12;
                    if (*a4 == 1)
                    {
                      goto LABEL_95;
                    }

                    if (*a4 == 2)
                    {
                      v35 = v8 + 13;
LABEL_95:
                      *v35 += v38;
                    }
                  }
                }

                else
                {
                  ++v8[2];
                }

                v24 += 24;
                if (v24 == v25)
                {
                  goto LABEL_54;
                }

                continue;
              }
            }

LABEL_61:
            ++v8[1];
            if (SBYTE7(v45) < 0)
            {
              operator delete(__p[0]);
            }

LABEL_54:
            __p[0] = &v39;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
            __p[0] = &v42;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
            return;
          }

LABEL_53:
          ++v8[1];
          goto LABEL_54;
        }

        if ((*(a1 + 1088) & 1) == 0)
        {
          quasar::LmData::sanitize(a1, v12);
        }

        quasar::trim(v12);
        if ((*(v12 + 23) & 0x8000000000000000) != 0)
        {
          if (*(v12 + 8))
          {
LABEL_29:
            std::vector<std::string>::push_back[abi:ne200100](&v39, v12);
            goto LABEL_32;
          }
        }

        else if (*(v12 + 23))
        {
          goto LABEL_29;
        }

        ++v8[2];
LABEL_32:
        v12 += 24;
      }
    }
  }

  if (quasar::gLogLevel >= 6)
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    *__p = 0u;
    v45 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Reject due to document length", 29);
    goto LABEL_12;
  }

LABEL_13:
  ++v8[1];
}

void sub_1B50EC528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  quasar::QuasarTraceMessage::~QuasarTraceMessage(&__p);
  __p = &a23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void quasar::PersonalizedLmData::getEstimatedNumTokens()
{
  v2 = *MEMORY[0x1E69E9840];
  __p[0] = 0;
  __p[1] = 0;
  v1 = 0;
  operator new();
}

void sub_1B50EC7F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24)
{
  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::~wstring_convert(&a20);
  if (a2 == 1)
  {
    v27 = __cxa_begin_catch(a1);
    if (quasar::gLogLevel >= 1)
    {
      v28 = v27;
      v24[15] = 0u;
      v24[16] = 0u;
      v24[13] = 0u;
      v24[14] = 0u;
      v24[11] = 0u;
      v24[12] = 0u;
      v24[9] = 0u;
      v24[10] = 0u;
      v24[7] = 0u;
      v24[8] = 0u;
      v24[5] = 0u;
      v24[6] = 0u;
      a23 = 0u;
      a24 = 0u;
      a21 = 0u;
      a22 = 0u;
      a20 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&a20);
      v29 = (*(*v28 + 16))(v28);
      v30 = strlen(v29);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a20, v29, v30);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&a20);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B50EC7ACLL);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::join<std::vector<std::string>>(uint64_t *a1, uint64_t *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  quasar::joinToStream<std::vector<std::string>>(&v7, a1, a2);
  std::stringbuf::str();
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v11);
}

void sub_1B50ECAA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B8C85200](v2 + 128);
  _Unwind_Resume(a1);
}

void quasar::PersonalizedLmData::~PersonalizedLmData(quasar::PersonalizedLmData *this)
{
  *this = &unk_1F2CFCA88;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 1048);

  quasar::LmData::~LmData(this);
}

{
  *this = &unk_1F2CFCA88;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 1048);
  quasar::LmData::~LmData(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::QuasarWarnMessage::~QuasarWarnMessage(std::locale *this)
{
  v2 = quasar::QuasarWarnMessage::logger;
  std::stringbuf::str();
  (v2)(&__p, this[33].__locale_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (getenv("QSR_CRASH_ON_WARN"))
  {
    if (!MEMORY[0x1B8C852F0]())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::runtime_error::runtime_error(exception, &__p);
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    abort();
  }

  v3 = MEMORY[0x1E69E54E8];
  v4 = *MEMORY[0x1E69E54E8];
  this->__locale_ = *MEMORY[0x1E69E54E8];
  *(this + *(v4 - 24)) = v3[3];
  this[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
  if (SHIBYTE(this[11].__locale_) < 0)
  {
    operator delete(this[9].__locale_);
  }

  this[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 2);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&this[14]);
}

void sub_1B50ECD68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      quasar::QuasarMessage::~QuasarMessage(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void quasar::QuasarMessage::~QuasarMessage(std::locale *this)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  this->__locale_ = *MEMORY[0x1E69E54E8];
  *(this + *(v3 - 24)) = v2[3];
  this[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
  if (SHIBYTE(this[11].__locale_) < 0)
  {
    operator delete(this[9].__locale_);
  }

  this[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 2);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&this[14]);
}

void quasar::QuasarTraceMessage::~QuasarTraceMessage(std::locale *this)
{
  v2 = quasar::QuasarTraceMessage::logger;
  std::stringbuf::str();
  (v2)(&__p, this[33].__locale_);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  v3 = MEMORY[0x1E69E54E8];
  v4 = *MEMORY[0x1E69E54E8];
  this->__locale_ = *MEMORY[0x1E69E54E8];
  *(this + *(v4 - 24)) = v3[3];
  this[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
  if (SHIBYTE(this[11].__locale_) < 0)
  {
    operator delete(this[9].__locale_);
  }

  this[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 2);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&this[14]);
}

std::basic_string<char32_t> *std::basic_string<char32_t>::append<char32_t const*,0>(std::basic_string<char32_t> *this, std::basic_string<char32_t> *__src, std::basic_string<char32_t> *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 4;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  v12 = v7 >> 2;
  if (v10 > __src || (v10->__r_.__value_.__r.__words + 4 * size + 4) <= __src)
  {
    if (v8 - size < v12)
    {
      std::basic_string<char32_t>::__grow_by(this, v8, size - v8 + v12, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v15 = this;
    if ((v9 & 0x80) != 0)
    {
      v15 = this->__r_.__value_.__r.__words[0];
    }

    v16 = v15 + 4 * size;
    if (a3 != __src)
    {
      memmove(v15 + 4 * size, __src, v7);
    }

    *&v16[v7] = 0;
    v17 = v12 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v17;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v17 & 0x7F;
    }
  }

  else
  {
    std::basic_string<char32_t>::__init_with_size[abi:ne200100]<char32_t const*,char32_t const*>(__p, __src, a3, v12);
    if ((v20 & 0x80u) == 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v14 = v20;
    }

    else
    {
      v14 = __p[1];
    }

    std::basic_string<char32_t>::append(this, v13, v14);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_1B50ED1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_range_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::range_error::range_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7C1A148, MEMORY[0x1E69E5268]);
}

std::basic_string<char32_t> *__cdecl std::basic_string<char32_t>::append(std::basic_string<char32_t> *this, std::basic_string<char32_t>::size_type __n, std::basic_string<char32_t>::value_type __c)
{
  if (__n)
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
      v9 = this->__r_.__value_.__r.__words[2];
      v7 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v8 = HIBYTE(v9);
    }

    else
    {
      v7 = 4;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    if (v7 - size < __n)
    {
      std::basic_string<char32_t>::__grow_by(this, v7, __n - v7 + size, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    v10 = this;
    if ((v8 & 0x80) != 0)
    {
      v10 = this->__r_.__value_.__r.__words[0];
    }

    v11 = 0;
    v12 = vdupq_n_s64(__n - 1);
    v13 = &v10->__r_.__value_.__s.__data_[size + 2];
    do
    {
      v14 = vdupq_n_s64(v11);
      v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_1B5AE0060)));
      if (vuzp1_s16(v15, *v12.i8).u8[0])
      {
        *(v13 - 2) = __c;
      }

      if (vuzp1_s16(v15, *&v12).i8[2])
      {
        *(v13 - 1) = __c;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_1B5AE0050)))).i32[1])
      {
        *v13 = __c;
        v13[1] = __c;
      }

      v11 += 4;
      v13 += 4;
    }

    while (((__n + 3) & 0xFFFFFFFFFFFFFFFCLL) != v11);
    v16 = size + __n;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }

    v10->__r_.__value_.__s.__data_[v16] = 0;
  }

  return this;
}

void std::basic_string<char32_t>::__grow_by(std::basic_string<char32_t> *this, std::basic_string<char32_t>::size_type __old_cap, std::basic_string<char32_t>::size_type __delta_cap, std::basic_string<char32_t>::size_type __old_sz, std::basic_string<char32_t>::size_type __n_copy, std::basic_string<char32_t>::size_type __n_del, std::basic_string<char32_t>::size_type __n_add)
{
  if (0x3FFFFFFFFFFFFFF7 - __old_cap >= __delta_cap)
  {
    v7 = __delta_cap + __old_cap;
    if (__delta_cap + __old_cap <= 2 * __old_cap)
    {
      v7 = 2 * __old_cap;
    }

    if ((v7 | 1) == 5)
    {
      v8 = 7;
    }

    else
    {
      v8 = (v7 | 1) + 1;
    }

    v9 = v7 >= 5;
    v10 = 5;
    if (v9)
    {
      v10 = v8;
    }

    if (__old_cap <= 0x1FFFFFFFFFFFFFF2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x3FFFFFFFFFFFFFF7;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v11);
  }

  std::string::__throw_length_error[abi:ne200100]();
}

std::basic_string<char32_t> *__cdecl std::basic_string<char32_t>::append(std::basic_string<char32_t> *this, const std::basic_string<char32_t>::value_type *__s, std::basic_string<char32_t>::size_type __n)
{
  v6 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v6 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v7 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v7 = 4;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (v7 - size >= __n)
  {
    if (__n)
    {
      v9 = this;
      if ((v6 & 0x80000000) != 0)
      {
        v9 = this->__r_.__value_.__r.__words[0];
      }

      memmove(v9 + 4 * size, __s, 4 * __n);
      v10 = size + __n;
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        this->__r_.__value_.__l.__size_ = v10;
      }

      else
      {
        *(&this->__r_.__value_.__s + 23) = v10 & 0x7F;
      }

      v9->__r_.__value_.__s.__data_[v10] = 0;
    }
  }

  else
  {
    std::basic_string<char32_t>::__grow_by_and_replace(this, v7, __n - v7 + size, size, size, 0, __n, __s);
  }

  return this;
}

_BYTE *std::basic_string<char32_t>::__init_with_size[abi:ne200100]<char32_t const*,char32_t const*>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 4)
  {
    if ((a4 | 1) == 5)
    {
      v5 = 7;
    }

    else
    {
      v5 = (a4 | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(__dst, v5);
  }

  __dst[23] = a4;
  v6 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v6);
  }

  *&v4[v6] = 0;
  return __dst;
}

void std::basic_string<char32_t>::__grow_by_and_replace(std::basic_string<char32_t> *this, std::basic_string<char32_t>::size_type __old_cap, std::basic_string<char32_t>::size_type __delta_cap, std::basic_string<char32_t>::size_type __old_sz, std::basic_string<char32_t>::size_type __n_copy, std::basic_string<char32_t>::size_type __n_del, std::basic_string<char32_t>::size_type __n_add, const std::basic_string<char32_t>::value_type *__p_new_stuff)
{
  if (0x3FFFFFFFFFFFFFF6 - __old_cap >= __delta_cap)
  {
    v8 = __delta_cap + __old_cap;
    if (__delta_cap + __old_cap <= 2 * __old_cap)
    {
      v8 = 2 * __old_cap;
    }

    if ((v8 | 1) == 5)
    {
      v9 = 7;
    }

    else
    {
      v9 = (v8 | 1) + 1;
    }

    v10 = v8 >= 5;
    v11 = 5;
    if (v10)
    {
      v11 = v9;
    }

    if (__old_cap > 0x1FFFFFFFFFFFFFF2)
    {
      v12 = 0x3FFFFFFFFFFFFFF7;
    }

    else
    {
      v12 = v11;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v12);
  }

  std::string::__throw_length_error[abi:ne200100]();
}

std::runtime_error *std::range_error::range_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E5598] + 16);
  return result;
}

void std::basic_string<char32_t>::__init_copy_ctor_external(std::wstring *this, const std::wstring::value_type *__s, std::wstring::size_type __sz)
{
  if (__sz > 4)
  {
    if (__sz < 0x3FFFFFFFFFFFFFF8)
    {
      if ((__sz | 1) == 5)
      {
        v3 = 7;
      }

      else
      {
        v3 = (__sz | 1) + 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v3);
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v4 = 4 * __sz + 4;

  memmove(this, __s, v4);
}

uint64_t *std::__hash_table<quasar::PersonalizedLmData::DocumentType,std::hash<quasar::PersonalizedLmData::DocumentType>,std::equal_to<quasar::PersonalizedLmData::DocumentType>,std::allocator<quasar::PersonalizedLmData::DocumentType>>::__emplace_unique_key_args<quasar::PersonalizedLmData::DocumentType,quasar::PersonalizedLmData::DocumentType>(void *a1, unsigned int *a2)
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

uint64_t *std::__hash_table<quasar::PersonalizedLmData::DocumentType,std::hash<quasar::PersonalizedLmData::DocumentType>,std::equal_to<quasar::PersonalizedLmData::DocumentType>,std::allocator<quasar::PersonalizedLmData::DocumentType>>::find<quasar::PersonalizedLmData::DocumentType>(void *a1, unsigned int *a2)
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

void *quasar::joinToStream<std::vector<std::string>>(void *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = result;
    v7 = 1;
    do
    {
      if ((v7 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, *a3, a3[1]);
      }

      v8 = *(v3 + 23);
      if (v8 >= 0)
      {
        v9 = v3;
      }

      else
      {
        v9 = *v3;
      }

      if (v8 >= 0)
      {
        v10 = *(v3 + 23);
      }

      else
      {
        v10 = *(v3 + 8);
      }

      result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v9, v10);
      v7 = 0;
      v3 += 24;
    }

    while (v3 != v4);
  }

  return result;
}

unint64_t fst::ClosureProperties(unint64_t this, unint64_t a2, int a3)
{
  v3 = 0x258200010007;
  if (a3)
  {
    v3 = 0x10200010004;
  }

  if ((((this & 0x10000000000) == 0) & a3) == 0)
  {
    v3 |= 0xA01A02A0000uLL;
  }

  return v3 & this;
}

unint64_t fst::ComposeProperties(unint64_t this, uint64_t a2)
{
  v2 = (a2 | this) & 4;
  v3 = a2 & this;
  v4 = a2 & this & 0x2802000000 | v2 | 0x10000000000;
  if ((a2 & this & 0x2000000) != 0)
  {
    v4 |= a2 & this & 0x40000;
  }

  v5 = v3 & 0x280A800000 | v2 | 0x10000010000;
  if ((v3 & 0x2000000) != 0)
  {
    v5 |= v3 & 0x140000;
  }

  if ((v3 & 0x10000) != 0)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

unint64_t fst::ConcatProperties(unint64_t this, uint64_t a2, int a3)
{
  v3 = a2 & 0x208000000000 | this & 0x20B000000003;
  if (a3)
  {
    v3 = 0;
  }

  v4 = (a2 | this) & 4 | this & a2 & 0xA00010000 | v3;
  if ((((this & 0x10000000000) == 0) & a3) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = this & 0xA05A56A0000;
  }

  v6 = v4 | v5;
  if ((~this & 0x50000000000) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = a3;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2 & 0xF05A56A0000;
  }

  return v6 | v8;
}

unint64_t fst::DeterminizeProperties(unint64_t this, int a2, int a3)
{
  if ((this & 0x10000) != 0)
  {
    goto LABEL_6;
  }

  v3 = a2 ^ 1;
  v4 = 0x10000000000;
  if ((this & 0x2000000) != 0)
  {
    v3 = 0;
  }

  if ((v3 & 1) == 0 && a3)
  {
LABEL_6:
    v4 = 0x10000040000;
  }

  v5 = (this >> 25) & 1;
  v6 = this & 0x800000;
  if ((v5 & a3) == 0)
  {
    v6 = 0;
  }

  v7 = this & ((this << 23) >> 63) & 0x405000000 | this & 0x142800010004 | this & ((this << 15) >> 31) & 0xA000000 | v6 | v4;
  if ((v5 & a2) != 0)
  {
    return v7 | 0x2000000;
  }

  else
  {
    return v7;
  }
}

unint64_t fst::FactorWeightProperties(unint64_t this)
{
  v1 = 0x50CA56B0007;
  if ((this & 0x10000000000) == 0)
  {
    v1 = 0x50800010007;
  }

  return v1 & this;
}

unint64_t fst::ProjectProperties(unint64_t this, int a2)
{
  v2 = this & 0x3FFF00000007 | 0x10000;
  v3 = (this >> 2) & 0xC0000 | this & 0xCC300000 | v2;
  if ((this & 0x4000000) != 0)
  {
    v3 |= 0x1400000uLL;
  }

  if ((this & 0x8000000) != 0)
  {
    v3 |= 0x2800000uLL;
  }

  v4 = (this >> 2) & 0x30000000 | v3;
  v5 = this & 0x330C0000 | (((this >> 18) & 3) << 20) | v2;
  if ((this & 0x1000000) != 0)
  {
    v5 |= 0x4400000uLL;
  }

  if ((this & 0x2000000) != 0)
  {
    v5 |= 0x8800000uLL;
  }

  v6 = (4 * this) & 0xC0000000 | v5;
  if (a2)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t fst::RandGenProperties(fst *this, int a2)
{
  if (a2)
  {
    return this & 0x5A950004 | 0x16800000000;
  }

  else
  {
    return this & 0x50010004 | 0x12A00000000;
  }
}

unint64_t fst::ReverseProperties(unint64_t this, int a2)
{
  v2 = 0xE05430007;
  if (a2)
  {
    v2 = 0xF05430007;
  }

  return v2 & this;
}

unint64_t fst::RmEpsilonProperties(unint64_t this, int a2)
{
  v2 = 176160768;
  if ((this & 0x10000) == 0)
  {
    v2 = 0x800000;
  }

  v3 = v2 | this & 0x2800010004;
  if (!a2)
  {
    v3 |= this & 0x4000000000 | 3;
  }

  if ((((this & 0x10000000000) == 0) & a2) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = this & 0x20000;
  }

  return v3 | v4;
}

unint64_t fst::ShortestPathProperties(unint64_t this, int a2)
{
  v2 = 0x52800000000;
  if (a2)
  {
    v2 = 0x12800000000;
  }

  return v2 | this;
}

unint64_t fst::UnionProperties(unint64_t this, uint64_t a2, int a3)
{
  v3 = a2 & 0x8000000000 | this & 0x8000000003;
  if (a3)
  {
    v3 = 0;
  }

  v4 = a2 & this & 0x40000000000 | 0x5400000 | a2 & this & 0x10A00010000 | (a2 | this) & 4 | v3 | 0x2000000000;
  if (a3)
  {
    v4 = a2 & this & 0x10A00010000 | (a2 | this) & 4 | v3 | 0x2000000000;
  }

  if ((((this & 0x10000000000) == 0) & a3) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = this & 0x205A56A0000;
  }

  if ((((a2 & 0x10000000000) == 0) & a3) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2 & 0xA05A56A0000;
  }

  return v6 | v5 | v4;
}

uint64_t fst::CreateSuperFinal<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 160))(a1);
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  if (v4 < 1)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_16;
  }

  v6 = v4;
  v7 = 0;
  do
  {
    (*(*a1 + 32))(&v20, a1, v7);
    v41 = *(&v20 + 1);
    LODWORD(v30) = v20;
    v40 = 2139095040;
    v39 = INFINITY;
    v5.n128_u32[0] = v20;
    if (*&v20 != INFINITY)
    {
      v8 = 1;
      v9 = __p;
      if (!__p)
      {
        goto LABEL_6;
      }

LABEL_5:
      v22 = v9;
      operator delete(v9);
      goto LABEL_6;
    }

    v5.n128_f32[0] = v41;
    v9 = __p;
    if (v41 == v39)
    {
      v8 = v22 != __p;
      if (__p)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v8 = 1;
      if (__p)
      {
        goto LABEL_5;
      }
    }

LABEL_6:
    if (v8)
    {
      std::vector<int>::push_back[abi:ne200100](&v36, &v35);
    }

    v7 = (v35 + 1);
    v35 = v7;
  }

  while (v7 < v6);
  v10 = v36;
  v11 = v37;
  if (v11 - v10 != 4)
  {
    goto LABEL_35;
  }

  (*(*a1 + 32))(&v20, a1, *v10, v5);
  v41 = *(&v20 + 1);
  LODWORD(v30) = v20;
  v40 = 0;
  v39 = 0.0;
  v5.n128_u32[0] = v20;
  v12 = *&v20 == 0.0 && (v5.n128_f32[0] = v41, v41 == v39) && v22 == __p;
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (!v12)
  {
    goto LABEL_35;
  }

LABEL_16:
  v13 = *v36;
  v24 = 0;
  (*(*a1 + 136))(a1, v13, &v20, v5);
  if (v20)
  {
    if ((*(*v20 + 24))(v20))
    {
      goto LABEL_26;
    }

LABEL_28:
    v14 = 0;
  }

  else
  {
    if (v24 < v22)
    {
      goto LABEL_28;
    }

LABEL_26:
    v12 = *v36;
    v14 = 1;
  }

  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  else if (v23)
  {
    --*v23;
  }

  if (v14)
  {
    v15 = v36;
  }

  else
  {
LABEL_35:
    v12 = (*(*a1 + 200))(a1, v5);
    *v33 = 0u;
    v34 = 0u;
    (*(*a1 + 184))(a1, v12, v33);
    if (v33[1])
    {
      *&v34 = v33[1];
      operator delete(v33[1]);
    }

    v15 = v36;
    if (v37 != v36)
    {
      v16 = 0;
      v17 = vneg_f32(0x7F0000007FLL);
      do
      {
        v18 = v15[v16];
        (*(*a1 + 32))(&v30, a1, v18);
        v26 = v17;
        v28 = 0;
        v29 = 0;
        v27 = 0;
        (*(*a1 + 184))(a1, v18, &v26);
        if (v27)
        {
          v28 = v27;
          operator delete(v27);
        }

        v22 = 0;
        v23 = 0;
        v24 = 0;
        v20 = 0;
        v25 = v12;
        __p = v30;
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v22, v31, v32, (v32 - v31) >> 2);
        if (*(a2 + 24))
        {
          std::function<void ()(int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const&)>::operator()(a2, v18);
        }

        else
        {
          (*(*a1 + 208))(a1, v18, &v20);
        }

        if (v22)
        {
          v23 = v22;
          operator delete(v22);
        }

        if (v31)
        {
          v32 = v31;
          operator delete(v31);
        }

        ++v16;
        v15 = v36;
      }

      while (v16 < (v37 - v36) >> 2);
    }
  }

  if (v15)
  {
    v37 = v15;
    operator delete(v15);
  }

  return v12;
}

void sub_1B50EE454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (a9)
  {
    fst::CreateSuperFinal<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a9);
  }

  else if (a12)
  {
    --*a12;
  }

  v27 = *(v25 - 120);
  if (v27)
  {
    *(v25 - 112) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const&)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<void ()(int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

char *std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-4 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 4;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 4;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B50EE834(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::FilterBlockOptions::options@<X0>(quasar::FilterBlockOptions *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 16;
  v3[1] = this + 160;
  v3[2] = this + *(*(this + 40) - 24) + 320;
  v3[3] = this + *(*(this + 59) - 24) + 472;
  v3[4] = this + 624;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::OptionValueBase *>::__init_with_size[abi:ne200100]<quasar::OptionValueBase * const*,quasar::OptionValueBase * const*>(a2, v3, &v4, 5uLL);
}

void quasar::FilterBlock::init(quasar::FilterBlock *this)
{
  v2 = (this + 328);
  if (*quasar::OptionValue<int>::value((this + *(*(this + 41) - 24) + 328)) == -1)
  {
    if (quasar::gLogLevel >= 4)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v8 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "no limiting of nbest output size", 32);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v8);
    }
  }

  else
  {
    if ((*quasar::OptionValue<int>::value((v2 + *(*v2 - 24))) & 0x80000000) != 0)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v8 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v8);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(&v8, "invalid value for nbest option!");
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v8);
    }

    if (quasar::gLogLevel >= 5)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v8 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v8);
      v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "limiting n-best size to ", 24);
      quasar::OptionValue<int>::debugInfo(v2 + *(*v2 - 24));
      if ((v7 & 0x80u) == 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      if ((v7 & 0x80u) == 0)
      {
        v5 = v7;
      }

      else
      {
        v5 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v4, v5);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }

      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v8);
    }
  }

  if (*quasar::OptionValue<BOOL>::value((this + *(*(this + 60) - 24) + 480)) == 1)
  {
    if (quasar::gLogLevel < 4)
    {
      goto LABEL_21;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "using metainfo annotation to filter nbest", 41);
  }

  else
  {
    if (quasar::gLogLevel < 4)
    {
      goto LABEL_21;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "simple nbest size limiting", 26);
  }

  quasar::QuasarInfoMessage::~QuasarInfoMessage(&v8);
LABEL_21:
  if (*quasar::OptionValue<BOOL>::value(this + 3) == 1)
  {
    if (quasar::gLogLevel < 4)
    {
      return;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "validating source locale against metainfo locale", 48);
  }

  else
  {
    if (quasar::gLogLevel < 4)
    {
      return;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "locale validation disabled", 26);
  }

  quasar::QuasarInfoMessage::~QuasarInfoMessage(&v8);
}

uint64_t quasar::OptionValue<int>::debugInfo(uint64_t a1)
{
  v2 = quasar::OptionValue<BOOL>::fallback(a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v33);
  v3 = *(a1 + 31);
  if (v3 >= 0)
  {
    v4 = a1 + 8;
  }

  else
  {
    v4 = *(a1 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 31);
  }

  else
  {
    v5 = *(a1 + 16);
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, v4, v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
  v8 = MEMORY[0x1B8C84C00](v7, *(v2 + 104));
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " (", 2);
  v12 = *(v2 + 32);
  v11 = v2 + 32;
  v10 = v12;
  v13 = *(v11 + 23);
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 8);
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v14, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ")", 1);
  if (*(a1 + 136))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, " overrides: [", 13);
    v17 = *(a1 + 120);
    v18 = (a1 + 128);
    if (v17 != (a1 + 128))
    {
      do
      {
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "", 1);
        v20 = *(v17 + 55);
        if (v20 >= 0)
        {
          v21 = (v17 + 4);
        }

        else
        {
          v21 = v17[4];
        }

        if (v20 >= 0)
        {
          v22 = *(v17 + 55);
        }

        else
        {
          v22 = v17[5];
        }

        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ": ", 3);
        MEMORY[0x1B8C84C00](v24, *(v17 + 14));
        v25 = *v18;
        v26 = (a1 + 128);
        if (*v18)
        {
          do
          {
            v27 = v25;
            v25 = v25[1];
          }

          while (v25);
        }

        else
        {
          do
          {
            v27 = v26[2];
            v28 = *v27 == v26;
            v26 = v27;
          }

          while (v28);
        }

        if (v17 != v27)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, ", ", 2);
        }

        v29 = v17[1];
        if (v29)
        {
          do
          {
            v30 = v29;
            v29 = *v29;
          }

          while (v29);
        }

        else
        {
          do
          {
            v30 = v17[2];
            v28 = *v30 == v17;
            v17 = v30;
          }

          while (!v28);
        }

        v17 = v30;
      }

      while (v30 != v18);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "]", 1);
  }

  std::stringbuf::str();
  v33[0] = *MEMORY[0x1E69E54D8];
  v31 = *(MEMORY[0x1E69E54D8] + 72);
  *(v33 + *(v33[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v34 = v31;
  v35 = MEMORY[0x1E69E5548] + 16;
  if (v37 < 0)
  {
    operator delete(v36[7].__locale_);
  }

  v35 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v36);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v38);
}