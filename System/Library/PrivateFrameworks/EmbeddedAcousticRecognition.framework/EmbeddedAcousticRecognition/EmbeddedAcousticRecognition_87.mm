void sub_1B56873B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  fst::FstHeader::~FstHeader(&a37);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v37 - 176);
  _Unwind_Resume(a1);
}

float fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::ComputeReductionInformation<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>>(void *a1, void *a2, int *a3, void *a4, void *a5, void *a6, float *a7, float *a8)
{
  *a2 = 0;
  *a3 = 0;
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(a4);
  v49 = &unk_1F2D25C58;
  v50 = 0;
  v12 = a1[1];
  v13 = 12 * *(v12 + 88) + 8 * *(v12 + 80);
  v51 = v12;
  v52 = v13;
  if (!v13)
  {
    v15 = 0;
    v18 = -INFINITY;
    v17 = INFINITY;
    goto LABEL_40;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = INFINITY;
  v18 = -INFINITY;
  do
  {
    v48 = v16;
    if (v16 == -1)
    {
      goto LABEL_37;
    }

    ++*a3;
    __p = &v48;
    *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(a4, &v48) + 5) = v14;
    v47 = 0;
    (*(*a1 + 136))(a1, v48, &__p);
    v19 = 0;
    v20 = v14 + 8;
    while (1)
    {
      if (!__p)
      {
        if (v47 >= v45)
        {
          goto LABEL_34;
        }

        ++v19;
LABEL_23:
        if (*(v44 + 16 * v47 + 8) >= v18)
        {
          v18 = *(v44 + 16 * v47 + 8);
        }

LABEL_25:
        if (v17 >= *(v44 + 16 * v47 + 8))
        {
          v17 = *(v44 + 16 * v47 + 8);
        }

LABEL_27:
        if (*(v44 + 16 * v47) > v15)
        {
          v15 = *(v44 + 16 * v47);
        }

        goto LABEL_29;
      }

      if ((*(*__p + 24))(__p))
      {
        break;
      }

      ++v19;
      if (!__p)
      {
        goto LABEL_23;
      }

      v21 = (*(*__p + 32))();
      if (*(v21 + 8) >= v18)
      {
        v18 = *(v21 + 8);
      }

      if (!__p)
      {
        goto LABEL_25;
      }

      v22 = (*(*__p + 32))();
      if (v17 >= *(v22 + 8))
      {
        v17 = *(v22 + 8);
      }

      if (!__p)
      {
        goto LABEL_27;
      }

      v23 = *(*(*__p + 32))();
      if (v23 > v15)
      {
        v15 = v23;
      }

      if (__p)
      {
        v24 = *((*(*__p + 32))() + 4);
        if (v24 > v15)
        {
          v15 = v24;
        }

        if (!__p)
        {
          goto LABEL_31;
        }

        (*(*__p + 40))();
      }

      else
      {
LABEL_29:
        if (*(v44 + 16 * v47 + 4) > v15)
        {
          v15 = *(v44 + 16 * v47 + 4);
        }

LABEL_31:
        ++v47;
      }
    }

    if (__p)
    {
      (*(*__p + 8))();
      goto LABEL_36;
    }

LABEL_34:
    if (v46)
    {
      --*v46;
    }

LABEL_36:
    *a2 += v19;
    v14 = v20 + 12 * v19;
    v16 = v50;
    v12 = v51;
    v13 = v52;
LABEL_37:
    v16 += 12 * *(*(v12 + 72) + v16 + 4) + 8;
    v50 = v16;
  }

  while (v13 > v16);
LABEL_40:
  v25 = 12 * *a2 + 8 * *a3;
  if (v25 >> 31)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    v26 = fst::LogMessage::LogMessage(&v49, &__p);
    v27 = fst::cerr(v26);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Too much data for reduced file format: ", 39);
    MEMORY[0x1B8C84C70](v28, v25);
    fst::LogMessage::~LogMessage(&v49);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p);
    }
  }

  v29 = __clz(v15);
  if (v15 >> 27)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    v30 = fst::LogMessage::LogMessage(&v49, &__p);
    v31 = fst::cerr(v30);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Not enough bits for quantization: ", 34);
    MEMORY[0x1B8C84C70](v32, v29);
    fst::LogMessage::~LogMessage(&v49);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p);
    }
  }

  *a6 = v29 - 1;
  v33 = 1 << (v29 - 1);
  v34 = fabsf(v18);
  v35 = fabsf(v17);
  if (v34 < v35)
  {
    v34 = v35;
  }

  if (v34 <= 0.0)
  {
    v36 = v33 + -1.0;
  }

  else
  {
    v36 = v34;
  }

  v37 = (v33 + -1.0) / v36;
  *a7 = v37;
  result = 1.0 / v37;
  *a8 = result;
  *a5 = 2 * ~(-1 << (v29 - 1));
  return result;
}

void sub_1B56879AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float fst::ArcIterator<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>>::SetFullArc(void *a1, float result)
{
  v2 = a1[4];
  if (v2 < a1[3])
  {
    v3 = a1[1];
    v4 = a1[2] + 12 * v2;
    v5 = *(v3 + 100);
    v7 = *(v3 + 112);
    v6 = *(v3 + 120);
    v8 = 63 - v7;
    v9 = (63 - v7) >> 1;
    LOBYTE(v7) = v7 + 1;
    v10 = *v4 >> (v7 + (v8 >> 1));
    v11 = ((*v4 & v6) >> 1);
    v12 = (*v4 >> v7) & ~(-1 << v9);
    if (*v4)
    {
      v11 = -v11;
    }

    result = v5 * v11;
    v13 = LODWORD(result) | (*(v4 + 8) << 32);
    a1[5] = v10 | (v12 << 32);
    a1[6] = v13;
  }

  return result;
}

uint64_t fst::ArcIterator<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>>::Reinit(void *a1, int a2, float a3)
{
  v3 = *(a1[1] + 72) + a2;
  v4 = v3 + 8;
  v5 = *(v3 + 4);
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = 0;
  fst::ArcIterator<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>>::SetFullArc(a1, a3);
  return 1;
}

void std::__shared_ptr_emplace<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::__shared_ptr_emplace[abi:ne200100]<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,std::allocator<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D25D30;
  fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::ReducedFst();
}

void std::__shared_ptr_emplace<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D25D30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::~ReducedFst(void *a1)
{
  fst::ImplToFst<fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumInputEpsilons(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 72) + a2;
  v4 = *(v3 + 4);
  if (v4 <= 0)
  {
    return 0;
  }

  result = 0;
  v6 = (v3 + 8);
  v7 = *(v2 + 108) + 1;
  do
  {
    v8 = *v6;
    v6 += 2;
    if (!(v8 >> v7))
    {
      ++result;
    }

    --v4;
  }

  while (v4);
  return result;
}

uint64_t fst::ImplToFst<fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 72) + a2;
  v4 = *(v3 + 4);
  if (v4 <= 0)
  {
    return 0;
  }

  result = 0;
  v6 = (v3 + 8);
  v7 = *(v2 + 108) + 1;
  do
  {
    v8 = *v6;
    v6 += 2;
    if (!(v8 >> v7))
    {
      ++result;
    }

    --v4;
  }

  while (v4);
  return result;
}

uint64_t fst::ImplToFst<fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

void fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::ReducedFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D25E80;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::TypeString(__str);
  std::string::operator=((a1 + 16), __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  v4 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 120))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, v5);
  memset(__str, 0, sizeof(__str));
  v10 = 1065353216;
  v6 = fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::ComputeReductionInformation<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a2, (a1 + 88), (a1 + 80), __str, (a1 + 112), (a1 + 108), (a1 + 104), (a1 + 100));
  LODWORD(v8) = (*(*a2 + 24))(a2, v6);
  v7 = &v8;
  *(a1 + 96) = *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(__str, &v8) + 5);
  fst::MappedFile::Allocate((8 * (*(a1 + 88) + *(a1 + 80))), 16);
}

void sub_1B5688724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&__p);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v24);
  _Unwind_Resume(a1);
}

std::string *fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::TypeString@<X0>(std::string *a1@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a1, "reduced");
  std::string::append(a1, "_quantized");
  return std::string::append(a1, "_acceptor");
}

void sub_1B5688850(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

float fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::ComputeReductionInformation<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, void *a2, int *a3, void *a4, _DWORD *a5, _DWORD *a6, float *a7, float *a8)
{
  *a2 = 0;
  *a3 = 0;
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(a4);
  v49 = 0;
  (*(*a1 + 128))(a1, &v47);
  v13 = 0;
  v14 = 0;
  v15 = -INFINITY;
  v16 = INFINITY;
  while (1)
  {
    if (!v47)
    {
      if (v49 >= v48)
      {
        goto LABEL_47;
      }

LABEL_7:
      v17 = v49;
      goto LABEL_8;
    }

    if ((*(*v47 + 16))(v47))
    {
      break;
    }

    if (!v47)
    {
      goto LABEL_7;
    }

    v17 = (*(*v47 + 24))();
LABEL_8:
    v46 = v17;
    if (v17 == -1)
    {
      goto LABEL_42;
    }

    ++*a3;
    __p = &v46;
    *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(a4, &v46) + 5) = v14;
    v45 = 0;
    (*(*a1 + 136))(a1, v46, &__p);
    v18 = 0;
    v19 = v14 + 8;
    while (1)
    {
      if (!__p)
      {
        if (v45 >= v43)
        {
          goto LABEL_39;
        }

        ++v18;
LABEL_28:
        if (*(v42 + 16 * v45 + 8) >= v15)
        {
          v15 = *(v42 + 16 * v45 + 8);
        }

LABEL_30:
        if (v16 >= *(v42 + 16 * v45 + 8))
        {
          v16 = *(v42 + 16 * v45 + 8);
        }

LABEL_32:
        if (*(v42 + 16 * v45) > v13)
        {
          v13 = *(v42 + 16 * v45);
        }

        goto LABEL_34;
      }

      if ((*(*__p + 24))(__p))
      {
        break;
      }

      ++v18;
      if (!__p)
      {
        goto LABEL_28;
      }

      v20 = (*(*__p + 32))();
      if (*(v20 + 8) >= v15)
      {
        v15 = *(v20 + 8);
      }

      if (!__p)
      {
        goto LABEL_30;
      }

      v21 = (*(*__p + 32))();
      if (v16 >= *(v21 + 8))
      {
        v16 = *(v21 + 8);
      }

      if (!__p)
      {
        goto LABEL_32;
      }

      v22 = *(*(*__p + 32))();
      if (v22 > v13)
      {
        v13 = v22;
      }

      if (__p)
      {
        v23 = *((*(*__p + 32))() + 4);
        if (v23 > v13)
        {
          v13 = v23;
        }

        if (!__p)
        {
          goto LABEL_36;
        }

        (*(*__p + 40))();
      }

      else
      {
LABEL_34:
        if (*(v42 + 16 * v45 + 4) > v13)
        {
          v13 = *(v42 + 16 * v45 + 4);
        }

LABEL_36:
        ++v45;
      }
    }

    if (__p)
    {
      (*(*__p + 8))();
      goto LABEL_41;
    }

LABEL_39:
    if (v44)
    {
      --*v44;
    }

LABEL_41:
    *a2 += v18;
    v14 = v19 + 8 * v18;
LABEL_42:
    if (v47)
    {
      (*(*v47 + 32))(v47);
    }

    else
    {
      ++v49;
    }
  }

  if (v47)
  {
    (*(*v47 + 8))();
  }

LABEL_47:
  v24 = *a2 + *a3;
  if (((v24 >> 28) & 0x1FFFFFFFFLL) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    v25 = fst::LogMessage::LogMessage(&v47, &__p);
    v26 = fst::cerr(v25);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Too much data for reduced file format: ", 39);
    MEMORY[0x1B8C84C70](v27, 8 * v24);
    fst::LogMessage::~LogMessage(&v47);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(__p);
    }
  }

  v28 = __clz(v13);
  if (v13 >> 27)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    v29 = fst::LogMessage::LogMessage(&v47, &__p);
    v30 = fst::cerr(v29);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Not enough bits for quantization: ", 34);
    MEMORY[0x1B8C84C10](v31, v28);
    fst::LogMessage::~LogMessage(&v47);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(__p);
    }
  }

  *a6 = v28 - 1;
  v32 = 1 << (v28 - 1);
  v33 = fabsf(v15);
  v34 = fabsf(v16);
  if (v33 < v34)
  {
    v33 = v34;
  }

  if (v33 <= 0.0)
  {
    v35 = v32 + -1.0;
  }

  else
  {
    v35 = v33;
  }

  v36 = (v32 + -1.0) / v35;
  *a7 = v36;
  result = 1.0 / v36;
  *a8 = result;
  *a5 = 2 * ~(-1 << (v28 - 1));
  return result;
}

void sub_1B5688DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::~ReducedFstImpl(void *a1)
{
  fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::~ReducedFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::~ReducedFstImpl(void *a1)
{
  *a1 = &unk_1F2D25E80;
  v2 = a1[8];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(a1);
}

void *fst::ImplToFst<fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D25ED0;
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

uint64_t fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::WriteFst<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>(void *a1, void *a2, _BYTE *a3)
{
  v6 = a3[27];
  v52 = 0;
  v51 = 0;
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 4;
  }

  memset(v49, 0, sizeof(v49));
  v50 = 1065353216;
  v47 = 0;
  v48 = 0;
  fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::ComputeReductionInformation<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>(a1, &v52, &v51, v49, &v48 + 1, &v48, &v47 + 1, &v47);
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v45 = 0;
  v46 = 0;
  v44 = -1;
  LODWORD(v32) = (*(*a1 + 24))(a1);
  v28[0] = &v32;
  v44 = *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v49, &v32) + 5);
  v45 = v51;
  v46 = v52;
  fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::TypeString(&__str);
  v8 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 1);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::WriteFstHeader(a1, a2, a3, v7, &__str, v8 | 1, v39);
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  LODWORD(v28[0]) = HIDWORD(v48);
  std::ostream::write();
  if (a3[27] != 1 || fst::AlignOutput(a2))
  {
    v36 = INFINITY;
    v32 = &unk_1F2D25F88;
    v33 = 0;
    v9 = a1[1];
    v10 = 8 * (*(v9 + 88) + *(v9 + 80));
    v34 = v9;
    v35 = v10;
    if (!v10)
    {
      goto LABEL_35;
    }

    v11 = 0;
    while (1)
    {
      if (v11 == -1)
      {
        v20 = -1;
        goto LABEL_34;
      }

      v36 = (*(*a1 + 32))(a1, v11);
      v37 = (*(*a1 + 40))(a1, v11);
      std::ostream::write();
      v31 = 0;
      (*(*a1 + 136))(a1, v11, v28);
      while (1)
      {
        if (!v28[0])
        {
          if (v31 >= v29)
          {
            goto LABEL_30;
          }

          goto LABEL_15;
        }

        if ((*(*v28[0] + 24))(v28[0]))
        {
          break;
        }

        if (v28[0])
        {
          v12 = (*(*v28[0] + 32))();
          goto LABEL_16;
        }

LABEL_15:
        v12 = (v28[1] + 16 * v31);
LABEL_16:
        v27 = *v12;
        v13 = HIDWORD(v27);
        if (HIDWORD(v27) != -1)
        {
          if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v49, &v27 + 3))
          {
            __p[0] = &v27 + 12;
            v13 = *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v49, &v27 + 3) + 5);
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
            v14 = fst::LogMessage::LogMessage(&v53, __p);
            v15 = fst::cerr(v14);
            v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "State ", 6);
            v17 = MEMORY[0x1B8C84C00](v16, HIDWORD(v27));
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " missing in new FST!", 20);
            fst::LogMessage::~LogMessage(&v53);
            if (v26 < 0)
            {
              operator delete(__p[0]);
            }

            v13 = -1;
          }

          HIDWORD(v27) = v13;
        }

        v18 = roundf(fabsf(*(&v47 + 1) * *(&v27 + 2)));
        v19 = ~(-1 << v48);
        if (v18 > v19)
        {
          v18 = v19;
        }

        LODWORD(__p[0]) = (v27 << (v48 + 1)) | ((*(&v47 + 1) * *(&v27 + 2)) < 0.0) | (2 * v18);
        HIDWORD(__p[0]) = v13;
        std::ostream::write();
        if (v28[0])
        {
          (*(*v28[0] + 40))(v28[0]);
        }

        else
        {
          ++v31;
        }
      }

      if (v28[0])
      {
        (*(*v28[0] + 8))();
        goto LABEL_32;
      }

LABEL_30:
      if (v30)
      {
        --*v30;
      }

LABEL_32:
      v20 = v33;
      v9 = v34;
      v10 = v35;
LABEL_34:
      v11 = (v20 + 8 * *(*(v9 + 72) + v20 + 4) + 8);
      v33 = v11;
      if (v10 <= v11)
      {
LABEL_35:
        v21 = 1;
        goto LABEL_39;
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v28, "ERROR");
  v22 = fst::LogMessage::LogMessage(&v32, v28);
  v23 = fst::cerr(v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Could not align file during write after header", 46);
  fst::LogMessage::~LogMessage(&v32);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  v21 = 0;
LABEL_39:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(*(&v41 + 1));
  }

  if (SBYTE7(v41) < 0)
  {
    operator delete(v40);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v49);
  return v21;
}

void sub_1B56895C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  fst::FstHeader::~FstHeader(&a38);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v38 - 144);
  _Unwind_Resume(a1);
}

float fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::ComputeReductionInformation<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>(void *a1, void *a2, int *a3, void *a4, _DWORD *a5, _DWORD *a6, float *a7, float *a8)
{
  *a2 = 0;
  *a3 = 0;
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(a4);
  v49 = &unk_1F2D25F88;
  v50 = 0;
  v13 = a1[1];
  v14 = 8 * (*(v13 + 88) + *(v13 + 80));
  v51 = v13;
  v52 = v14;
  if (!v14)
  {
    v16 = 0;
    v19 = -INFINITY;
    v18 = INFINITY;
    goto LABEL_40;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = INFINITY;
  v19 = -INFINITY;
  do
  {
    v48 = v17;
    if (v17 == -1)
    {
      goto LABEL_37;
    }

    ++*a3;
    __p = &v48;
    *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(a4, &v48) + 5) = v15;
    v47 = 0;
    (*(*a1 + 136))(a1, v48, &__p);
    v20 = 0;
    v21 = v15 + 8;
    while (1)
    {
      if (!__p)
      {
        if (v47 >= v45)
        {
          goto LABEL_34;
        }

        ++v20;
LABEL_23:
        if (*(v44 + 16 * v47 + 8) >= v19)
        {
          v19 = *(v44 + 16 * v47 + 8);
        }

LABEL_25:
        if (v18 >= *(v44 + 16 * v47 + 8))
        {
          v18 = *(v44 + 16 * v47 + 8);
        }

LABEL_27:
        if (*(v44 + 16 * v47) > v16)
        {
          v16 = *(v44 + 16 * v47);
        }

        goto LABEL_29;
      }

      if ((*(*__p + 24))(__p))
      {
        break;
      }

      ++v20;
      if (!__p)
      {
        goto LABEL_23;
      }

      v22 = (*(*__p + 32))();
      if (*(v22 + 8) >= v19)
      {
        v19 = *(v22 + 8);
      }

      if (!__p)
      {
        goto LABEL_25;
      }

      v23 = (*(*__p + 32))();
      if (v18 >= *(v23 + 8))
      {
        v18 = *(v23 + 8);
      }

      if (!__p)
      {
        goto LABEL_27;
      }

      v24 = *(*(*__p + 32))();
      if (v24 > v16)
      {
        v16 = v24;
      }

      if (__p)
      {
        v25 = *((*(*__p + 32))() + 4);
        if (v25 > v16)
        {
          v16 = v25;
        }

        if (!__p)
        {
          goto LABEL_31;
        }

        (*(*__p + 40))();
      }

      else
      {
LABEL_29:
        if (*(v44 + 16 * v47 + 4) > v16)
        {
          v16 = *(v44 + 16 * v47 + 4);
        }

LABEL_31:
        ++v47;
      }
    }

    if (__p)
    {
      (*(*__p + 8))();
      goto LABEL_36;
    }

LABEL_34:
    if (v46)
    {
      --*v46;
    }

LABEL_36:
    *a2 += v20;
    v15 = v21 + 8 * v20;
    v17 = v50;
    v13 = v51;
    v14 = v52;
LABEL_37:
    v17 += 8 * *(*(v13 + 72) + v17 + 4) + 8;
    v50 = v17;
  }

  while (v14 > v17);
LABEL_40:
  v26 = *a2 + *a3;
  if (((v26 >> 28) & 0x1FFFFFFFFLL) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    v27 = fst::LogMessage::LogMessage(&v49, &__p);
    v28 = fst::cerr(v27);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Too much data for reduced file format: ", 39);
    MEMORY[0x1B8C84C70](v29, 8 * v26);
    fst::LogMessage::~LogMessage(&v49);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p);
    }
  }

  v30 = __clz(v16);
  if (v16 >> 27)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    v31 = fst::LogMessage::LogMessage(&v49, &__p);
    v32 = fst::cerr(v31);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Not enough bits for quantization: ", 34);
    MEMORY[0x1B8C84C10](v33, v30);
    fst::LogMessage::~LogMessage(&v49);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p);
    }
  }

  *a6 = v30 - 1;
  v34 = 1 << (v30 - 1);
  v35 = fabsf(v19);
  v36 = fabsf(v18);
  if (v35 < v36)
  {
    v35 = v36;
  }

  if (v35 <= 0.0)
  {
    v37 = v34 + -1.0;
  }

  else
  {
    v37 = v35;
  }

  v38 = (v34 + -1.0) / v37;
  *a7 = v38;
  result = 1.0 / v38;
  *a8 = result;
  *a5 = 2 * ~(-1 << (v30 - 1));
  return result;
}

void sub_1B5689BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float fst::ArcIterator<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetFullArc(void *a1, float result)
{
  v2 = a1[4];
  if (v2 < a1[3])
  {
    v3 = a1[1];
    v4 = (a1[2] + 8 * v2);
    v5 = *(v3 + 100);
    v6 = v3 + 108;
    v8 = *v4;
    v7 = v4[1];
    v9 = v8 >> (*(v3 + 108) + 1);
    v10 = ((v8 & *(v6 + 4)) >> 1);
    if (v8)
    {
      v10 = -v10;
    }

    result = v5 * v10;
    a1[5] = v9 | (v9 << 32);
    a1[6] = LODWORD(result) | (v7 << 32);
  }

  return result;
}

uint64_t fst::ArcIterator<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::Reinit(void *a1, int a2, float a3)
{
  v3 = *(a1[1] + 72) + a2;
  v4 = v3 + 8;
  v5 = *(v3 + 4);
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = 0;
  fst::ArcIterator<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetFullArc(a1, a3);
  return 1;
}

void std::__shared_ptr_emplace<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>>::__shared_ptr_emplace[abi:ne200100]<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,std::allocator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D26060;
  fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::SqueezedFst();
}

void std::__shared_ptr_emplace<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D26060;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::~SqueezedFst(void *a1)
{
  fst::ImplToFst<fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

float fst::ImplToFst<fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Final(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(*(v2 + 72) + 4 * a2);
  if (v3 <= 0)
  {
    return *(*(v2 + 104) + 8 * -v3);
  }

  else
  {
    return INFINITY;
  }
}

uint64_t fst::ImplToFst<fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumArcs(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (*(v4 + 112) - 1 == a2)
  {
    v9[1] = v2;
    v9[2] = v3;
    fst::ImplToFst<fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumArcs(v4, a2, v9);
    return v9[0];
  }

  else
  {
    v5 = *(v4 + 72);
    v6 = *(v5 + 4 * a2 + 4);
    if (v6 <= 0)
    {
      v6 = *(*(v4 + 104) + 8 * -v6 + 4);
    }

    v7 = *(v5 + 4 * a2);
    if (v7 <= 0)
    {
      v7 = *(*(v4 + 104) + 8 * -v7 + 4);
    }

    return v6 - v7;
  }
}

uint64_t fst::ImplToFst<fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = *(v2 + 112);
  return result;
}

void fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::SqueezedFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D261B0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0;
  fst::SqueezedFstConsts<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::TypeString(&__p);
  std::string::operator=((a1 + 16), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 120))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, v5);
  fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::ComputeReductionInformation<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a2, (a1 + 120), (a1 + 112), (a1 + 128));
}

void sub_1B568A8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *(v17 + 144);
  *(v17 + 144) = 0;
  if (v19)
  {
    MEMORY[0x1B8C85350](v19, 0x1000C40451B5BE8);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v17);
  _Unwind_Resume(a1);
}

void fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::ComputeReductionInformation<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, void *a2, int *a3, void *a4)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  v28 = 0;
  (*(*a1 + 128))(a1, &v26);
  v8 = 0;
  v9 = -INFINITY;
  v10 = INFINITY;
  while (v26)
  {
    if ((*(*v26 + 16))(v26))
    {
      if (v26)
      {
        (*(*v26 + 8))();
      }

LABEL_49:
      v17 = 4 * *a3 + 16 * *a2 + 8 * *a4;
      if (v17 >> 31)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
        v18 = fst::LogMessage::LogMessage(&v26, &__p);
        v19 = fst::cerr(v18);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Too much data for squeezed file format: ", 40);
        MEMORY[0x1B8C84C70](v20, v17);
        fst::LogMessage::~LogMessage(&v26);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p);
        }
      }

      fst::SqueezedQuantizationOptions<false,false>::EstimateFromLabelsAndWeights<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(v8);
    }

    if (!v26)
    {
      goto LABEL_7;
    }

    v11 = (*(*v26 + 24))();
LABEL_8:
    if (((*(*a1 + 32))(a1, v11) + 0.00097656) != INFINITY)
    {
      ++*a4;
    }

    if (v11 == -1)
    {
      goto LABEL_44;
    }

    ++*a3;
    v25 = 0;
    (*(*a1 + 136))(a1, v11, &__p);
    v12 = 0;
    while (1)
    {
      if (!__p)
      {
        if (v25 >= v23)
        {
          goto LABEL_41;
        }

        ++v12;
LABEL_30:
        if (*(v22 + 16 * v25 + 8) >= v9)
        {
          v9 = *(v22 + 16 * v25 + 8);
        }

LABEL_32:
        if (v10 >= *(v22 + 16 * v25 + 8))
        {
          v10 = *(v22 + 16 * v25 + 8);
        }

LABEL_34:
        if (*(v22 + 16 * v25) > v8)
        {
          v8 = *(v22 + 16 * v25);
        }

        goto LABEL_36;
      }

      if ((*(*__p + 24))(__p))
      {
        break;
      }

      ++v12;
      if (!__p)
      {
        goto LABEL_30;
      }

      v13 = (*(*__p + 32))();
      if (*(v13 + 8) >= v9)
      {
        v9 = *(v13 + 8);
      }

      if (!__p)
      {
        goto LABEL_32;
      }

      v14 = (*(*__p + 32))();
      if (v10 >= *(v14 + 8))
      {
        v10 = *(v14 + 8);
      }

      if (!__p)
      {
        goto LABEL_34;
      }

      v15 = *(*(*__p + 32))();
      if (v15 > v8)
      {
        v8 = v15;
      }

      if (__p)
      {
        v16 = *((*(*__p + 32))() + 4);
        if (v16 > v8)
        {
          v8 = v16;
        }

        if (!__p)
        {
          goto LABEL_38;
        }

        (*(*__p + 40))();
      }

      else
      {
LABEL_36:
        if (*(v22 + 16 * v25 + 4) > v8)
        {
          v8 = *(v22 + 16 * v25 + 4);
        }

LABEL_38:
        ++v25;
      }
    }

    if (__p)
    {
      (*(*__p + 8))();
    }

    else
    {
LABEL_41:
      if (v24)
      {
        --*v24;
      }
    }

    *a2 += v12;
LABEL_44:
    if (v26)
    {
      (*(*v26 + 32))(v26);
    }

    else
    {
      ++v28;
    }
  }

  if (v28 >= v27)
  {
    goto LABEL_49;
  }

LABEL_7:
  v11 = v28;
  goto LABEL_8;
}

void sub_1B568AE78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::~SqueezedFstImpl(void *a1)
{
  fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::~SqueezedFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::SqueezedQuantizationOptions<false,false>::EstimateFromLabelsAndWeights<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(signed int a1)
{
  v1 = __clz(a1);
  if (a1 <= 0)
  {
    v2 = 31;
  }

  else
  {
    v2 = v1;
  }

  if (v2 <= 4)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    v3 = fst::LogMessage::LogMessage(&v8, __p);
    v4 = fst::cerr(v3);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Not enough bits for quantization: ", 34);
    MEMORY[0x1B8C84C10](v5, v2);
    fst::LogMessage::~LogMessage(&v8);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_1B568B04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::~SqueezedFstImpl(void *a1)
{
  *a1 = &unk_1F2D261B0;
  v2 = a1[8];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[12];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[18];
  a1[18] = 0;
  if (v5)
  {
    MEMORY[0x1B8C85350](v5, 0x1000C40451B5BE8);
  }

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(a1);
}

void *fst::ImplToFst<fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D26200;
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

uint64_t fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::NumInputEpsilons(uint64_t a1, int a2)
{
  if (*(a1 + 112) - 1 == a2)
  {
    v5 = *(a1 + 120);
    v2 = *(a1 + 72);
    v10 = *(v2 + 4 * a2);
    if (v10 <= 0)
    {
      v10 = *(*(a1 + 104) + 8 * -v10 + 4);
    }

    LODWORD(v5) = v5 - v10 + 1;
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 72);
    v3 = *(v2 + 4 * a2 + 4);
    if (v3 <= 0)
    {
      v3 = *(*(a1 + 104) + 8 * -v3 + 4);
    }

    v4 = *(v2 + 4 * a2);
    if (v4 <= 0)
    {
      v4 = *(*(a1 + 104) + 8 * -v4 + 4);
    }

    LODWORD(v5) = v3 - v4;
    if (!v5)
    {
      return 0;
    }
  }

  v6 = *(v2 + 4 * a2);
  if (v6 <= 0)
  {
    v6 = *(*(a1 + 104) + 8 * -v6 + 4);
  }

  if (v5 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = (*(a1 + 88) + 16 * (v6 - 1));
  v5 = v5;
  do
  {
    v9 = *v8;
    v8 += 4;
    if (!v9)
    {
      ++v7;
    }

    --v5;
  }

  while (v5);
  return v7;
}

uint64_t fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if (*(a1 + 112) - 1 == a2)
  {
    v5 = *(a1 + 120);
    v2 = *(a1 + 72);
    v10 = *(v2 + 4 * a2);
    if (v10 <= 0)
    {
      v10 = *(*(a1 + 104) + 8 * -v10 + 4);
    }

    LODWORD(v5) = v5 - v10 + 1;
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 72);
    v3 = *(v2 + 4 * a2 + 4);
    if (v3 <= 0)
    {
      v3 = *(*(a1 + 104) + 8 * -v3 + 4);
    }

    v4 = *(v2 + 4 * a2);
    if (v4 <= 0)
    {
      v4 = *(*(a1 + 104) + 8 * -v4 + 4);
    }

    LODWORD(v5) = v3 - v4;
    if (!v5)
    {
      return 0;
    }
  }

  v6 = *(v2 + 4 * a2);
  if (v6 <= 0)
  {
    v6 = *(*(a1 + 104) + 8 * -v6 + 4);
  }

  if (v5 < 1)
  {
    return 0;
  }

  v7 = 0;
  v5 = v5;
  v8 = (16 * (v6 - 1) + *(a1 + 88) + 4);
  do
  {
    v9 = *v8;
    v8 += 4;
    if (!v9)
    {
      ++v7;
    }

    --v5;
  }

  while (v5);
  return v7;
}

void fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::WriteFst<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>>(uint64_t a1)
{
  v3 = 0;
  v2 = 0;
  v1 = 0;
  fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::ComputeReductionInformation<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, &v3, &v2, &v1);
}

void sub_1B568BC70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  fst::FstHeader::~FstHeader(&a35);
  v37 = *(v35 - 96);
  *(v35 - 96) = 0;
  if (v37)
  {
    MEMORY[0x1B8C85350](v37, 0x1000C40451B5BE8);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  *a3 = 0;
  v3 = *(result + 72);
  v4 = *(v3 + 4 * a2);
  v5 = v4;
  if (v4 <= 0)
  {
    v5 = *(*(result + 104) + 8 * -v4 + 4);
  }

  a3[1] = *(result + 88) + 16 * v5 - 16;
  if (*(result + 112) - 1 == a2)
  {
    if (v4 <= 0)
    {
      v4 = *(*(result + 104) + 8 * -v4 + 4);
    }

    v7 = *(result + 120) - v4 + 1;
  }

  else
  {
    v6 = *(v3 + 4 * a2 + 4);
    if (v6 <= 0)
    {
      v6 = *(*(result + 104) + 8 * -v6 + 4);
    }

    if (v4 <= 0)
    {
      v4 = *(*(result + 104) + 8 * -v4 + 4);
    }

    v7 = v6 - v4;
  }

  a3[2] = v7;
  a3[3] = 0;
  return result;
}

void std::__shared_ptr_emplace<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::__shared_ptr_emplace[abi:ne200100]<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,std::allocator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D262B8;
  fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::SqueezedFst();
}

void std::__shared_ptr_emplace<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D262B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::~SqueezedFst(void *a1)
{
  fst::ImplToFst<fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

float fst::ImplToFst<fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Final(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(*(v2 + 72) + 4 * a2);
  if (v3 <= 0)
  {
    return *(*(v2 + 104) + 8 * -v3);
  }

  else
  {
    return INFINITY;
  }
}

uint64_t fst::ImplToFst<fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumArcs(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (*(v4 + 112) - 1 == a2)
  {
    v9[1] = v2;
    v9[2] = v3;
    fst::ImplToFst<fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumArcs(v4, a2, v9);
    return v9[0];
  }

  else
  {
    v5 = *(v4 + 72);
    v6 = *(v5 + 4 * a2 + 4);
    if (v6 <= 0)
    {
      v6 = *(*(v4 + 104) + 8 * -v6 + 4);
    }

    v7 = *(v5 + 4 * a2);
    if (v7 <= 0)
    {
      v7 = *(*(v4 + 104) + 8 * -v7 + 4);
    }

    return v6 - v7;
  }
}

uint64_t fst::ImplToFst<fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

char *fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::GetArcs(uint64_t a1, int a2, void **a3, int a4)
{
  v6 = *(a1 + 8);
  if (*(v6 + 112) - 1 == a2)
  {
    v7 = *(v6 + 72);
    v22 = *(v7 + 4 * a2);
    if (v22 <= 0)
    {
      v22 = *(*(v6 + 104) + 8 * -v22 + 4);
    }

    v10 = *(v6 + 120) - v22 + 1;
  }

  else
  {
    v7 = *(v6 + 72);
    v8 = *(v7 + 4 * a2 + 4);
    if (v8 <= 0)
    {
      v8 = *(*(v6 + 104) + 8 * -v8 + 4);
    }

    v9 = *(v7 + 4 * a2);
    if (v9 <= 0)
    {
      v9 = *(*(v6 + 104) + 8 * -v9 + 4);
    }

    v10 = v8 - v9;
  }

  v11 = 2;
  if (!a4)
  {
    v11 = 0;
  }

  v12 = v10 + v11;
  if (a3[1] < v10 + v11)
  {
    if (*a3)
    {
      free(*a3);
    }

    v23 = 0x4000;
    if (v12 > 0x4000)
    {
      v23 = v12;
    }

    a3[1] = v23;
    result = malloc_type_malloc(16 * v23, 0x1000040451B5BE8uLL);
    *a3 = result;
    a3[2] = result;
    v7 = *(v6 + 72);
    v13 = result;
  }

  else
  {
    v13 = a3[2];
    result = *a3;
  }

  a3[3] = &v13[16 * v12];
  v15 = *(v7 + 4 * a2);
  if (v15 <= 0)
  {
    v15 = *(*(v6 + 104) + 8 * -v15 + 4);
  }

  if (v10)
  {
    v16 = 12 * (v15 - 1);
    v17 = (result + 8);
    v18 = (v16 + *(v6 + 88) + 8);
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1) | (*(v18 - 1) << 32);
      v21 = *v18;
      v18 += 3;
      *(v17 - 1) = v20;
      *v17 = v19 | (v21 << 32);
      v17 += 2;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = *(v2 + 112);
  return result;
}

void fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::SqueezedFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D26408;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0;
  fst::SqueezedFstConsts<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::TypeString(&__p);
  std::string::operator=((a1 + 16), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 120))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, v5);
  fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::ComputeReductionInformation<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a2, (a1 + 120), (a1 + 112), (a1 + 128));
}

void sub_1B568CA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *(v17 + 144);
  *(v17 + 144) = 0;
  if (v19)
  {
    MEMORY[0x1B8C85350](v19, 0x1000C40451B5BE8);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v17);
  _Unwind_Resume(a1);
}

void fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::ComputeReductionInformation<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, void *a2, int *a3, void *a4)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  v28 = 0;
  (*(*a1 + 128))(a1, &v26);
  v8 = 0;
  v9 = -INFINITY;
  v10 = INFINITY;
  while (v26)
  {
    if ((*(*v26 + 16))(v26))
    {
      if (v26)
      {
        (*(*v26 + 8))();
      }

LABEL_49:
      v17 = 12 * *a2 + 4 * *a3 + 8 * *a4;
      if (v17 >> 31)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
        v18 = fst::LogMessage::LogMessage(&v26, &__p);
        v19 = fst::cerr(v18);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Too much data for squeezed file format: ", 40);
        MEMORY[0x1B8C84C70](v20, v17);
        fst::LogMessage::~LogMessage(&v26);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p);
        }
      }

      fst::SqueezedQuantizationOptions<true,false>::EstimateFromLabelsAndWeights<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(v8);
    }

    if (!v26)
    {
      goto LABEL_7;
    }

    v11 = (*(*v26 + 24))();
LABEL_8:
    if (((*(*a1 + 32))(a1, v11) + 0.00097656) != INFINITY)
    {
      ++*a4;
    }

    if (v11 == -1)
    {
      goto LABEL_44;
    }

    ++*a3;
    v25 = 0;
    (*(*a1 + 136))(a1, v11, &__p);
    v12 = 0;
    while (1)
    {
      if (!__p)
      {
        if (v25 >= v23)
        {
          goto LABEL_41;
        }

        ++v12;
LABEL_30:
        if (*(v22 + 16 * v25 + 8) >= v9)
        {
          v9 = *(v22 + 16 * v25 + 8);
        }

LABEL_32:
        if (v10 >= *(v22 + 16 * v25 + 8))
        {
          v10 = *(v22 + 16 * v25 + 8);
        }

LABEL_34:
        if (*(v22 + 16 * v25) > v8)
        {
          v8 = *(v22 + 16 * v25);
        }

        goto LABEL_36;
      }

      if ((*(*__p + 24))(__p))
      {
        break;
      }

      ++v12;
      if (!__p)
      {
        goto LABEL_30;
      }

      v13 = (*(*__p + 32))();
      if (*(v13 + 8) >= v9)
      {
        v9 = *(v13 + 8);
      }

      if (!__p)
      {
        goto LABEL_32;
      }

      v14 = (*(*__p + 32))();
      if (v10 >= *(v14 + 8))
      {
        v10 = *(v14 + 8);
      }

      if (!__p)
      {
        goto LABEL_34;
      }

      v15 = *(*(*__p + 32))();
      if (v15 > v8)
      {
        v8 = v15;
      }

      if (__p)
      {
        v16 = *((*(*__p + 32))() + 4);
        if (v16 > v8)
        {
          v8 = v16;
        }

        if (!__p)
        {
          goto LABEL_38;
        }

        (*(*__p + 40))();
      }

      else
      {
LABEL_36:
        if (*(v22 + 16 * v25 + 4) > v8)
        {
          v8 = *(v22 + 16 * v25 + 4);
        }

LABEL_38:
        ++v25;
      }
    }

    if (__p)
    {
      (*(*__p + 8))();
    }

    else
    {
LABEL_41:
      if (v24)
      {
        --*v24;
      }
    }

    *a2 += v12;
LABEL_44:
    if (v26)
    {
      (*(*v26 + 32))(v26);
    }

    else
    {
      ++v28;
    }
  }

  if (v28 >= v27)
  {
    goto LABEL_49;
  }

LABEL_7:
  v11 = v28;
  goto LABEL_8;
}

void sub_1B568D06C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::~SqueezedFstImpl(void *a1)
{
  fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::~SqueezedFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::SqueezedQuantizationOptions<true,false>::EstimateFromLabelsAndWeights<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(signed int a1)
{
  v1 = __clz(a1);
  if (a1 <= 0)
  {
    v2 = 31;
  }

  else
  {
    v2 = v1;
  }

  if (v2 <= 4)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    v3 = fst::LogMessage::LogMessage(&v8, __p);
    v4 = fst::cerr(v3);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Not enough bits for quantization: ", 34);
    MEMORY[0x1B8C84C10](v5, v2);
    fst::LogMessage::~LogMessage(&v8);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_1B568D240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::~SqueezedFstImpl(void *a1)
{
  *a1 = &unk_1F2D26408;
  v2 = a1[8];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[12];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[18];
  a1[18] = 0;
  if (v5)
  {
    MEMORY[0x1B8C85350](v5, 0x1000C40451B5BE8);
  }

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(a1);
}

void *fst::ImplToFst<fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D26458;
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

uint64_t fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::NumInputEpsilons(uint64_t a1, int a2)
{
  if (*(a1 + 112) - 1 == a2)
  {
    v5 = *(a1 + 120);
    v2 = *(a1 + 72);
    v10 = *(v2 + 4 * a2);
    if (v10 <= 0)
    {
      v10 = *(*(a1 + 104) + 8 * -v10 + 4);
    }

    LODWORD(v5) = v5 - v10 + 1;
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 72);
    v3 = *(v2 + 4 * a2 + 4);
    if (v3 <= 0)
    {
      v3 = *(*(a1 + 104) + 8 * -v3 + 4);
    }

    v4 = *(v2 + 4 * a2);
    if (v4 <= 0)
    {
      v4 = *(*(a1 + 104) + 8 * -v4 + 4);
    }

    LODWORD(v5) = v3 - v4;
    if (!v5)
    {
      return 0;
    }
  }

  v6 = *(v2 + 4 * a2);
  if (v6 <= 0)
  {
    v6 = *(*(a1 + 104) + 8 * -v6 + 4);
  }

  if (v5 < 1)
  {
    return 0;
  }

  v7 = 0;
  v5 = v5;
  v8 = (12 * (v6 - 1) + *(a1 + 88) + 4);
  do
  {
    v9 = *v8;
    v8 += 3;
    if (!v9)
    {
      ++v7;
    }

    --v5;
  }

  while (v5);
  return v7;
}

void fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::WriteFst<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>(uint64_t a1)
{
  v3 = 0;
  v2 = 0;
  v1 = 0;
  fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::ComputeReductionInformation<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, &v3, &v2, &v1);
}

void sub_1B568DD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  fst::FstHeader::~FstHeader(&a33);
  v35 = *(v33 + 96);
  *(v33 + 96) = 0;
  if (v35)
  {
    MEMORY[0x1B8C85350](v35, 0x1000C40451B5BE8);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::ArcIterator(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D26510;
  *(a1 + 8) = a2;
  v4 = *(a2 + 72);
  v5 = *(v4 + 4 * a3);
  v6 = v5;
  if (v5 <= 0)
  {
    v6 = *(*(a2 + 104) + 8 * -v5 + 4);
  }

  *(a1 + 16) = *(a2 + 88) + 12 * (v6 - 1);
  if (*(a2 + 112) - 1 == a3)
  {
    if (v5 <= 0)
    {
      v5 = *(*(a2 + 104) + 8 * -v5 + 4);
    }

    v8 = *(a2 + 120) - v5 + 1;
  }

  else
  {
    v7 = *(v4 + 4 * a3 + 4);
    if (v7 <= 0)
    {
      v7 = *(*(a2 + 104) + 8 * -v7 + 4);
    }

    if (v5 <= 0)
    {
      v5 = *(*(a2 + 104) + 8 * -v5 + 4);
    }

    v8 = v7 - v5;
  }

  *(a1 + 40) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 15;
  fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SetFullArc(a1);
  return a1;
}

{
  v4 = *(a2 + 8);
  *a1 = &unk_1F2D26510;
  *(a1 + 8) = v4;
  v5 = *(v4 + 72);
  v6 = *(v5 + 4 * a3);
  v7 = v6;
  if (v6 <= 0)
  {
    v7 = *(*(v4 + 104) + 8 * -v6 + 4);
  }

  *(a1 + 16) = *(v4 + 88) + 12 * (v7 - 1);
  if (*(v4 + 112) - 1 == a3)
  {
    if (v6 <= 0)
    {
      v6 = *(*(v4 + 104) + 8 * -v6 + 4);
    }

    v9 = *(v4 + 120) - v6 + 1;
  }

  else
  {
    v8 = *(v5 + 4 * a3 + 4);
    if (v8 <= 0)
    {
      v8 = *(*(v4 + 104) + 8 * -v8 + 4);
    }

    if (v6 <= 0)
    {
      v6 = *(*(v4 + 104) + 8 * -v6 + 4);
    }

    v9 = v8 - v6;
  }

  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 56) = 15;
  fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SetFullArc(a1);
  return a1;
}

uint64_t fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SetFullArc(uint64_t result)
{
  v1 = *(result + 48);
  if (v1 < *(result + 40))
  {
    v2 = (*(result + 16) + 12 * v1);
    if ((*(result + 56) & 0xF) == 2)
    {
      *(result + 28) = v2[1];
    }

    else if ((*(result + 56) & 0xF) == 1)
    {
      *(result + 24) = v2[1];
    }

    else
    {
      v3 = v2[1] | (v2[1] << 32);
      v4 = *v2 | (v2[2] << 32);
      *(result + 24) = v3;
      *(result + 32) = v4;
    }
  }

  return result;
}

uint64_t fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::Reinit(void *a1, int a2)
{
  v2 = a1[1];
  v3 = *(v2 + 72);
  v4 = *(v3 + 4 * a2);
  v5 = v4;
  if (v4 <= 0)
  {
    v5 = *(*(v2 + 104) + 8 * -v4 + 4);
  }

  a1[2] = *(v2 + 88) + 12 * (v5 - 1);
  if (*(v2 + 112) - 1 == a2)
  {
    if (v4 <= 0)
    {
      v4 = *(*(v2 + 104) + 8 * -v4 + 4);
    }

    v7 = *(v2 + 120) - v4 + 1;
  }

  else
  {
    v6 = *(v3 + 4 * a2 + 4);
    if (v6 <= 0)
    {
      v6 = *(*(v2 + 104) + 8 * -v6 + 4);
    }

    if (v4 <= 0)
    {
      v4 = *(*(v2 + 104) + 8 * -v4 + 4);
    }

    v7 = v6 - v4;
  }

  a1[5] = v7;
  a1[6] = 0;
  fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SetFullArc(a1);
  return 1;
}

uint64_t fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SetFlags_(uint64_t result, char a2, int a3)
{
  v3 = *(result + 56);
  v4 = v3 & ~a3 | a2 & 0xF;
  *(result + 56) = v4;
  if (v3 != 15 && v3 != v4)
  {
    return fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SetFullArc(result);
  }

  return result;
}

void std::__shared_ptr_emplace<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>>::__shared_ptr_emplace[abi:ne200100]<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,std::allocator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D26590;
  fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::SqueezedFst();
}

void std::__shared_ptr_emplace<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D26590;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::~SqueezedFst(void *a1)
{
  fst::ImplToFst<fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

float fst::ImplToFst<fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Final(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(*(v2 + 72) + 4 * a2);
  if (v3 <= 0)
  {
    return *(*(v2 + 104) + 8 * -v3);
  }

  else
  {
    return INFINITY;
  }
}

uint64_t fst::ImplToFst<fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumArcs(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (*(v4 + 112) - 1 == a2)
  {
    v9[1] = v2;
    v9[2] = v3;
    fst::ImplToFst<fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumArcs(v4, a2, v9);
    return v9[0];
  }

  else
  {
    v5 = *(v4 + 72);
    v6 = *(v5 + 4 * a2 + 4);
    if (v6 <= 0)
    {
      v6 = *(*(v4 + 104) + 8 * -v6 + 4);
    }

    v7 = *(v5 + 4 * a2);
    if (v7 <= 0)
    {
      v7 = *(*(v4 + 104) + 8 * -v7 + 4);
    }

    return v6 - v7;
  }
}

uint64_t fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = *(v2 + 112);
  return result;
}

void fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::SqueezedFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D266E0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0;
  fst::SqueezedFstConsts<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::TypeString(&__p);
  std::string::operator=((a1 + 16), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 120))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, v5);
  fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::ComputeReductionInformation<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a2, (a1 + 120), (a1 + 112), (a1 + 128));
}

void sub_1B568EC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *(v17 + 144);
  *(v17 + 144) = 0;
  if (v19)
  {
    MEMORY[0x1B8C85350](v19, 0x1000C40504FFAC1);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v17);
  _Unwind_Resume(a1);
}

void fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::ComputeReductionInformation<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, void *a2, int *a3, void *a4)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  v28 = 0;
  (*(*a1 + 128))(a1, &v26);
  v8 = 0;
  v9 = -INFINITY;
  v10 = INFINITY;
  while (v26)
  {
    if ((*(*v26 + 16))(v26))
    {
      if (v26)
      {
        (*(*v26 + 8))();
      }

LABEL_49:
      v17 = 12 * *a2 + 4 * *a3 + 8 * *a4;
      if (v17 >> 31)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
        v18 = fst::LogMessage::LogMessage(&v26, &__p);
        v19 = fst::cerr(v18);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Too much data for squeezed file format: ", 40);
        MEMORY[0x1B8C84C70](v20, v17);
        fst::LogMessage::~LogMessage(&v26);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p);
        }
      }

      fst::SqueezedQuantizationOptions<false,true>::EstimateFromLabelsAndWeights<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(v8);
    }

    if (!v26)
    {
      goto LABEL_7;
    }

    v11 = (*(*v26 + 24))();
LABEL_8:
    if (((*(*a1 + 32))(a1, v11) + 0.00097656) != INFINITY)
    {
      ++*a4;
    }

    if (v11 == -1)
    {
      goto LABEL_44;
    }

    ++*a3;
    v25 = 0;
    (*(*a1 + 136))(a1, v11, &__p);
    v12 = 0;
    while (1)
    {
      if (!__p)
      {
        if (v25 >= v23)
        {
          goto LABEL_41;
        }

        ++v12;
LABEL_30:
        if (*(v22 + 16 * v25 + 8) >= v9)
        {
          v9 = *(v22 + 16 * v25 + 8);
        }

LABEL_32:
        if (v10 >= *(v22 + 16 * v25 + 8))
        {
          v10 = *(v22 + 16 * v25 + 8);
        }

LABEL_34:
        if (*(v22 + 16 * v25) > v8)
        {
          v8 = *(v22 + 16 * v25);
        }

        goto LABEL_36;
      }

      if ((*(*__p + 24))(__p))
      {
        break;
      }

      ++v12;
      if (!__p)
      {
        goto LABEL_30;
      }

      v13 = (*(*__p + 32))();
      if (*(v13 + 8) >= v9)
      {
        v9 = *(v13 + 8);
      }

      if (!__p)
      {
        goto LABEL_32;
      }

      v14 = (*(*__p + 32))();
      if (v10 >= *(v14 + 8))
      {
        v10 = *(v14 + 8);
      }

      if (!__p)
      {
        goto LABEL_34;
      }

      v15 = *(*(*__p + 32))();
      if (v15 > v8)
      {
        v8 = v15;
      }

      if (__p)
      {
        v16 = *((*(*__p + 32))() + 4);
        if (v16 > v8)
        {
          v8 = v16;
        }

        if (!__p)
        {
          goto LABEL_38;
        }

        (*(*__p + 40))();
      }

      else
      {
LABEL_36:
        if (*(v22 + 16 * v25 + 4) > v8)
        {
          v8 = *(v22 + 16 * v25 + 4);
        }

LABEL_38:
        ++v25;
      }
    }

    if (__p)
    {
      (*(*__p + 8))();
    }

    else
    {
LABEL_41:
      if (v24)
      {
        --*v24;
      }
    }

    *a2 += v12;
LABEL_44:
    if (v26)
    {
      (*(*v26 + 32))(v26);
    }

    else
    {
      ++v28;
    }
  }

  if (v28 >= v27)
  {
    goto LABEL_49;
  }

LABEL_7:
  v11 = v28;
  goto LABEL_8;
}

void sub_1B568F248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::~SqueezedFstImpl(void *a1)
{
  fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::~SqueezedFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

std::string *fst::SqueezedFstConsts<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::TypeString@<X0>(std::string *a1@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a1, "squeezed");
  std::string::append(a1, "_quantized");
  return std::string::append(a1, "_transducer");
}

void sub_1B568F398(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void fst::SqueezedQuantizationOptions<false,true>::EstimateFromLabelsAndWeights<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(signed int a1)
{
  v1 = __clz(a1);
  if (a1 <= 0)
  {
    v2 = 31;
  }

  else
  {
    v2 = v1;
  }

  if (v2 <= 4)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    v3 = fst::LogMessage::LogMessage(&v8, __p);
    v4 = fst::cerr(v3);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Not enough bits for quantization: ", 34);
    MEMORY[0x1B8C84C70](v5, v2);
    fst::LogMessage::~LogMessage(&v8);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_1B568F4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::~SqueezedFstImpl(void *a1)
{
  *a1 = &unk_1F2D266E0;
  v2 = a1[8];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[12];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[18];
  a1[18] = 0;
  if (v5)
  {
    MEMORY[0x1B8C85350](v5, 0x1000C40504FFAC1);
  }

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(a1);
}

void *fst::ImplToFst<fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D26730;
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

uint64_t fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::NumInputEpsilons(uint64_t a1, int a2)
{
  if (*(a1 + 112) - 1 == a2)
  {
    v5 = *(a1 + 120);
    v2 = *(a1 + 72);
    v10 = *(v2 + 4 * a2);
    if (v10 <= 0)
    {
      v10 = *(*(a1 + 104) + 8 * -v10 + 4);
    }

    LODWORD(v5) = v5 - v10 + 1;
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 72);
    v3 = *(v2 + 4 * a2 + 4);
    if (v3 <= 0)
    {
      v3 = *(*(a1 + 104) + 8 * -v3 + 4);
    }

    v4 = *(v2 + 4 * a2);
    if (v4 <= 0)
    {
      v4 = *(*(a1 + 104) + 8 * -v4 + 4);
    }

    LODWORD(v5) = v3 - v4;
    if (!v5)
    {
      return 0;
    }
  }

  v6 = *(v2 + 4 * a2);
  if (v6 <= 0)
  {
    v6 = *(*(a1 + 104) + 8 * -v6 + 4);
  }

  if (v5 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = (*(a1 + 88) + 12 * (v6 - 1));
  v5 = v5;
  do
  {
    v9 = *v8;
    v8 = (v8 + 12);
    if (((0xFFFFFFFFLL << (*(*(a1 + 144) + 8) + ((63 - *(*(a1 + 144) + 8)) >> 1) + 1)) & v9) == 0)
    {
      ++v7;
    }

    --v5;
  }

  while (v5);
  return v7;
}

uint64_t fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if (*(a1 + 112) - 1 == a2)
  {
    v5 = *(a1 + 120);
    v2 = *(a1 + 72);
    v13 = *(v2 + 4 * a2);
    if (v13 <= 0)
    {
      v13 = *(*(a1 + 104) + 8 * -v13 + 4);
    }

    LODWORD(v5) = v5 - v13 + 1;
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 72);
    v3 = *(v2 + 4 * a2 + 4);
    if (v3 <= 0)
    {
      v3 = *(*(a1 + 104) + 8 * -v3 + 4);
    }

    v4 = *(v2 + 4 * a2);
    if (v4 <= 0)
    {
      v4 = *(*(a1 + 104) + 8 * -v4 + 4);
    }

    LODWORD(v5) = v3 - v4;
    if (!v5)
    {
      return 0;
    }
  }

  v6 = *(v2 + 4 * a2);
  if (v6 <= 0)
  {
    v6 = *(*(a1 + 104) + 8 * -v6 + 4);
  }

  if (v5 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = (*(a1 + 88) + 12 * (v6 - 1));
  v9 = *(*(a1 + 144) + 8);
  v10 = ~(-1 << ((63 - v9) >> 1));
  v11 = v9 + 1;
  v5 = v5;
  do
  {
    v12 = *v8;
    v8 = (v8 + 12);
    if ((v10 & (v12 >> v11)) == 0)
    {
      ++v7;
    }

    --v5;
  }

  while (v5);
  return v7;
}

void fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::WriteFst<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>>(uint64_t a1)
{
  v3 = 0;
  v2 = 0;
  v1 = 0;
  fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::ComputeReductionInformation<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, &v3, &v2, &v1);
}

void sub_1B56901C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  fst::FstHeader::~FstHeader(&a33);
  v35 = *(v33 - 112);
  *(v33 - 112) = 0;
  if (v35)
  {
    MEMORY[0x1B8C85350](v35, 0x1000C40504FFAC1);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::SqueezedQuantizationOptions<false,true>::Write()
{
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  return 1;
}

uint64_t fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>>::ArcIterator(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D267E8;
  *(a1 + 8) = a2;
  v4 = *(a2 + 72);
  v5 = *(v4 + 4 * a3);
  v6 = v5;
  if (v5 <= 0)
  {
    v6 = *(*(a2 + 104) + 8 * -v5 + 4);
  }

  *(a1 + 16) = *(a2 + 88) + 12 * (v6 - 1);
  if (*(a2 + 112) - 1 == a3)
  {
    if (v5 <= 0)
    {
      v5 = *(*(a2 + 104) + 8 * -v5 + 4);
    }

    v8 = *(a2 + 120) - v5 + 1;
  }

  else
  {
    v7 = *(v4 + 4 * a3 + 4);
    if (v7 <= 0)
    {
      v7 = *(*(a2 + 104) + 8 * -v7 + 4);
    }

    if (v5 <= 0)
    {
      v5 = *(*(a2 + 104) + 8 * -v5 + 4);
    }

    v8 = v7 - v5;
  }

  *(a1 + 40) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 15;
  fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>>::SetFullArc(a1);
  return a1;
}

float fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>>::SetFullArc(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 < *(a1 + 40))
  {
    v2 = *(a1 + 16) + 12 * v1;
    v3 = *(*(a1 + 8) + 144);
    v4 = *(v3 + 8);
    if ((*(a1 + 56) & 0xF) == 2)
    {
      *(a1 + 28) = (*v2 >> (v4 + 1)) & ~(-1 << ((63 - v4) >> 1));
    }

    else if ((*(a1 + 56) & 0xF) == 1)
    {
      *(a1 + 24) = *v2 >> (v4 + ((63 - v4) >> 1) + 1);
    }

    else
    {
      v5 = 63 - v4;
      v6 = (63 - v4) >> 1;
      v7 = v4 + 1;
      v8 = *v2 >> (v7 + (v5 >> 1));
      v9 = ((*v2 & *(v3 + 16)) >> 1);
      v10 = (*v2 >> v7) & ~(-1 << v6);
      if (*v2)
      {
        v9 = -v9;
      }

      result = *(v3 + 4) * v9;
      v12 = LODWORD(result) | (*(v2 + 8) << 32);
      *(a1 + 24) = v8 | (v10 << 32);
      *(a1 + 32) = v12;
    }
  }

  return result;
}

uint64_t fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>>::Reinit(void *a1, int a2)
{
  v2 = a1[1];
  v3 = *(v2 + 72);
  v4 = *(v3 + 4 * a2);
  v5 = v4;
  if (v4 <= 0)
  {
    v5 = *(*(v2 + 104) + 8 * -v4 + 4);
  }

  a1[2] = *(v2 + 88) + 12 * (v5 - 1);
  if (*(v2 + 112) - 1 == a2)
  {
    if (v4 <= 0)
    {
      v4 = *(*(v2 + 104) + 8 * -v4 + 4);
    }

    v7 = *(v2 + 120) - v4 + 1;
  }

  else
  {
    v6 = *(v3 + 4 * a2 + 4);
    if (v6 <= 0)
    {
      v6 = *(*(v2 + 104) + 8 * -v6 + 4);
    }

    if (v4 <= 0)
    {
      v4 = *(*(v2 + 104) + 8 * -v4 + 4);
    }

    v7 = v6 - v4;
  }

  a1[5] = v7;
  a1[6] = 0;
  fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>>::SetFullArc(a1);
  return 1;
}

float fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>>::SetFlags_(uint64_t a1, char a2, int a3)
{
  v3 = *(a1 + 56);
  v4 = v3 & ~a3 | a2 & 0xF;
  *(a1 + 56) = v4;
  if (v3 != 15 && v3 != v4)
  {
    return fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>>::SetFullArc(a1);
  }

  return result;
}

void std::__shared_ptr_emplace<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::__shared_ptr_emplace[abi:ne200100]<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,std::allocator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D26868;
  fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::SqueezedFst();
}

void std::__shared_ptr_emplace<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D26868;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::~SqueezedFst(void *a1)
{
  fst::ImplToFst<fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

char *fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::GetArcs(uint64_t a1, int a2, void **a3, int a4)
{
  v6 = *(a1 + 8);
  if (*(v6 + 112) - 1 == a2)
  {
    v7 = *(v6 + 72);
    v26 = *(v7 + 4 * a2);
    if (v26 <= 0)
    {
      v26 = *(*(v6 + 104) + 8 * -v26 + 4);
    }

    v10 = *(v6 + 120) - v26 + 1;
  }

  else
  {
    v7 = *(v6 + 72);
    v8 = *(v7 + 4 * a2 + 4);
    if (v8 <= 0)
    {
      v8 = *(*(v6 + 104) + 8 * -v8 + 4);
    }

    v9 = *(v7 + 4 * a2);
    if (v9 <= 0)
    {
      v9 = *(*(v6 + 104) + 8 * -v9 + 4);
    }

    v10 = v8 - v9;
  }

  v11 = 2;
  if (!a4)
  {
    v11 = 0;
  }

  v12 = v10 + v11;
  if (a3[1] < v10 + v11)
  {
    if (*a3)
    {
      free(*a3);
    }

    v27 = 0x4000;
    if (v12 > 0x4000)
    {
      v27 = v12;
    }

    a3[1] = v27;
    result = malloc_type_malloc(16 * v27, 0x1000040451B5BE8uLL);
    *a3 = result;
    a3[2] = result;
    v7 = *(v6 + 72);
    v13 = result;
  }

  else
  {
    v13 = a3[2];
    result = *a3;
  }

  a3[3] = &v13[16 * v12];
  v15 = *(v7 + 4 * a2);
  if (v15 <= 0)
  {
    v15 = *(*(v6 + 104) + 8 * -v15 + 4);
  }

  if (v10)
  {
    v16 = 8 * (v15 - 1);
    v17 = *(v6 + 144);
    v18 = *(v17 + 4);
    v19 = *(v17 + 12);
    v20 = *(v17 + 8) + 1;
    v21 = (result + 8);
    v22 = (v16 + *(v6 + 88) + 4);
    do
    {
      v23 = *(v22 - 1);
      v24 = ((v23 & v19) >> 1);
      if (v23)
      {
        v24 = -v24;
      }

      v25 = *v22;
      v22 += 2;
      *(v21 - 1) = (v23 >> v20) | ((v23 >> v20) << 32);
      *v21 = COERCE_UNSIGNED_INT(v18 * v24) | (v25 << 32);
      v21 += 2;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = *(v2 + 112);
  return result;
}

void fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::SqueezedFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D269B8;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0;
  fst::SqueezedFstConsts<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::TypeString(&__p);
  std::string::operator=((a1 + 16), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 120))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, v5);
  fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::ComputeReductionInformation<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a2, (a1 + 120), (a1 + 112), (a1 + 128));
}

void sub_1B5691200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *(v17 + 144);
  *(v17 + 144) = 0;
  if (v19)
  {
    MEMORY[0x1B8C85350](v19, 0x1000C40451B5BE8);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v17);
  _Unwind_Resume(a1);
}

void fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::ComputeReductionInformation<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, void *a2, int *a3, void *a4)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  v28 = 0;
  (*(*a1 + 128))(a1, &v26);
  v8 = 0;
  v9 = -INFINITY;
  v10 = INFINITY;
  while (v26)
  {
    if ((*(*v26 + 16))(v26))
    {
      if (v26)
      {
        (*(*v26 + 8))();
      }

LABEL_49:
      v17 = 8 * (*a4 + *a2) + 4 * *a3;
      if (v17 >> 31)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
        v18 = fst::LogMessage::LogMessage(&v26, &__p);
        v19 = fst::cerr(v18);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Too much data for squeezed file format: ", 40);
        MEMORY[0x1B8C84C70](v20, v17);
        fst::LogMessage::~LogMessage(&v26);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p);
        }
      }

      fst::SqueezedQuantizationOptions<true,true>::EstimateFromLabelsAndWeights<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(v8);
    }

    if (!v26)
    {
      goto LABEL_7;
    }

    v11 = (*(*v26 + 24))();
LABEL_8:
    if (((*(*a1 + 32))(a1, v11) + 0.00097656) != INFINITY)
    {
      ++*a4;
    }

    if (v11 == -1)
    {
      goto LABEL_44;
    }

    ++*a3;
    v25 = 0;
    (*(*a1 + 136))(a1, v11, &__p);
    v12 = 0;
    while (1)
    {
      if (!__p)
      {
        if (v25 >= v23)
        {
          goto LABEL_41;
        }

        ++v12;
LABEL_30:
        if (*(v22 + 16 * v25 + 8) >= v9)
        {
          v9 = *(v22 + 16 * v25 + 8);
        }

LABEL_32:
        if (v10 >= *(v22 + 16 * v25 + 8))
        {
          v10 = *(v22 + 16 * v25 + 8);
        }

LABEL_34:
        if (*(v22 + 16 * v25) > v8)
        {
          v8 = *(v22 + 16 * v25);
        }

        goto LABEL_36;
      }

      if ((*(*__p + 24))(__p))
      {
        break;
      }

      ++v12;
      if (!__p)
      {
        goto LABEL_30;
      }

      v13 = (*(*__p + 32))();
      if (*(v13 + 8) >= v9)
      {
        v9 = *(v13 + 8);
      }

      if (!__p)
      {
        goto LABEL_32;
      }

      v14 = (*(*__p + 32))();
      if (v10 >= *(v14 + 8))
      {
        v10 = *(v14 + 8);
      }

      if (!__p)
      {
        goto LABEL_34;
      }

      v15 = *(*(*__p + 32))();
      if (v15 > v8)
      {
        v8 = v15;
      }

      if (__p)
      {
        v16 = *((*(*__p + 32))() + 4);
        if (v16 > v8)
        {
          v8 = v16;
        }

        if (!__p)
        {
          goto LABEL_38;
        }

        (*(*__p + 40))();
      }

      else
      {
LABEL_36:
        if (*(v22 + 16 * v25 + 4) > v8)
        {
          v8 = *(v22 + 16 * v25 + 4);
        }

LABEL_38:
        ++v25;
      }
    }

    if (__p)
    {
      (*(*__p + 8))();
    }

    else
    {
LABEL_41:
      if (v24)
      {
        --*v24;
      }
    }

    *a2 += v12;
LABEL_44:
    if (v26)
    {
      (*(*v26 + 32))(v26);
    }

    else
    {
      ++v28;
    }
  }

  if (v28 >= v27)
  {
    goto LABEL_49;
  }

LABEL_7:
  v11 = v28;
  goto LABEL_8;
}

void sub_1B56917D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::~SqueezedFstImpl(void *a1)
{
  fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::~SqueezedFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::SqueezedQuantizationOptions<true,true>::EstimateFromLabelsAndWeights<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(signed int a1)
{
  v1 = __clz(a1);
  if (a1 <= 0)
  {
    v2 = 31;
  }

  else
  {
    v2 = v1;
  }

  if (v2 <= 4)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    v3 = fst::LogMessage::LogMessage(&v8, __p);
    v4 = fst::cerr(v3);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Not enough bits for quantization: ", 34);
    MEMORY[0x1B8C84C10](v5, v2);
    fst::LogMessage::~LogMessage(&v8);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_1B56919F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::~SqueezedFstImpl(void *a1)
{
  *a1 = &unk_1F2D269B8;
  v2 = a1[8];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[12];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[18];
  a1[18] = 0;
  if (v5)
  {
    MEMORY[0x1B8C85350](v5, 0x1000C40451B5BE8);
  }

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(a1);
}

void *fst::ImplToFst<fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D26A08;
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

uint64_t fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::NumInputEpsilons(uint64_t a1, int a2)
{
  if (*(a1 + 112) - 1 == a2)
  {
    v5 = *(a1 + 120);
    v2 = *(a1 + 72);
    v10 = *(v2 + 4 * a2);
    if (v10 <= 0)
    {
      v10 = *(*(a1 + 104) + 8 * -v10 + 4);
    }

    LODWORD(v5) = v5 - v10 + 1;
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 72);
    v3 = *(v2 + 4 * a2 + 4);
    if (v3 <= 0)
    {
      v3 = *(*(a1 + 104) + 8 * -v3 + 4);
    }

    v4 = *(v2 + 4 * a2);
    if (v4 <= 0)
    {
      v4 = *(*(a1 + 104) + 8 * -v4 + 4);
    }

    LODWORD(v5) = v3 - v4;
    if (!v5)
    {
      return 0;
    }
  }

  v6 = *(v2 + 4 * a2);
  if (v6 <= 0)
  {
    v6 = *(*(a1 + 104) + 8 * -v6 + 4);
  }

  if (v5 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = (*(a1 + 88) + 8 * (v6 - 1));
  v5 = v5;
  do
  {
    v9 = *v8;
    v8 += 2;
    if (!(v9 >> (*(*(a1 + 144) + 8) + 1)))
    {
      ++v7;
    }

    --v5;
  }

  while (v5);
  return v7;
}

void fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::WriteFst<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>(uint64_t a1)
{
  v3 = 0;
  v2 = 0;
  v1 = 0;
  fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::ComputeReductionInformation<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, &v3, &v2, &v1);
}

void sub_1B5692590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  fst::FstHeader::~FstHeader(&a31);
  v33 = *(v31 - 96);
  *(v31 - 96) = 0;
  if (v33)
  {
    MEMORY[0x1B8C85350](v33, 0x1000C40451B5BE8);
  }

  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<quasar::NgramLmModel2>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::unique_ptr<srilm::NgramCountContext>,std::shared_ptr<quasar::FstLmHandle> &,std::shared_ptr<quasar::NgramFstConfig const> const&,std::allocator<quasar::NgramLmModel2>,0>(void *a1, uint64_t *a2, srilm::NgramCountContext **a3, uint64_t *a4, const std::string **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D26B40;
  std::allocator<quasar::NgramLmModel2>::construct[abi:ne200100]<quasar::NgramLmModel2,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::unique_ptr<srilm::NgramCountContext>,std::shared_ptr<quasar::FstLmHandle> &,std::shared_ptr<quasar::NgramFstConfig const> const&>(&v7, (a1 + 3), a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<quasar::NgramLmModel2>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D26B40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::NgramLmModel2>::construct[abi:ne200100]<quasar::NgramLmModel2,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::unique_ptr<srilm::NgramCountContext>,std::shared_ptr<quasar::FstLmHandle> &,std::shared_ptr<quasar::NgramFstConfig const> const&>(uint64_t a1, uint64_t a2, uint64_t *a3, srilm::NgramCountContext **a4, uint64_t *a5, const std::string **a6)
{
  v6 = a3[1];
  v9[0] = *a3;
  v9[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *a4;
  *a4 = 0;
  v8 = v7;
  quasar::NgramLmModel2::NgramLmModel2(a2, v9, &v8, a5, a6);
  if (v8)
  {
    srilm::NgramCountContext::~NgramCountContext(v8);
    MEMORY[0x1B8C85350]();
  }

  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1B56929A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<srilm::NgramCountContext>::reset[abi:ne200100](va, 0);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::shared_ptr<quasar::FstLmHandle>::shared_ptr[abi:ne200100]<quasar::FstLmHandle,std::default_delete<quasar::FstLmHandle>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<quasar::NgramLmModel2  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::NgramLmModel2  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::NgramLmModel2  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1B5692B5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<Ngram>::shared_ptr[abi:ne200100]<Ngram,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<Ngram *,std::shared_ptr<Ngram>::__shared_ptr_default_delete<Ngram,Ngram>,std::allocator<Ngram>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<Ngram *,std::shared_ptr<Ngram>::__shared_ptr_default_delete<Ngram,Ngram>,std::allocator<Ngram>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<Ngram *,std::shared_ptr<Ngram>::__shared_ptr_default_delete<Ngram,Ngram>,std::allocator<Ngram>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<quasar::NgramLmModel2>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::unique_ptr<srilm::NgramCountContext>,std::shared_ptr<quasar::FstLmHandle> &,std::shared_ptr<quasar::NgramSrilmInterpolationConfig> const&,std::allocator<quasar::NgramLmModel2>,0>(void *a1, uint64_t *a2, srilm::NgramCountContext **a3, uint64_t *a4, uint64_t a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D26B40;
  std::allocator<quasar::NgramLmModel2>::construct[abi:ne200100]<quasar::NgramLmModel2,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::unique_ptr<srilm::NgramCountContext>,std::shared_ptr<quasar::FstLmHandle> &,std::shared_ptr<quasar::NgramSrilmInterpolationConfig> const&>(&v7, (a1 + 3), a2, a3, a4, a5);
  return a1;
}

void std::allocator<quasar::NgramLmModel2>::construct[abi:ne200100]<quasar::NgramLmModel2,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::unique_ptr<srilm::NgramCountContext>,std::shared_ptr<quasar::FstLmHandle> &,std::shared_ptr<quasar::NgramSrilmInterpolationConfig> const&>(uint64_t a1, uint64_t a2, uint64_t *a3, srilm::NgramCountContext **a4, uint64_t *a5, uint64_t a6)
{
  v6 = a3[1];
  v11[0] = *a3;
  v11[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *a4;
  *a4 = 0;
  v8 = *(a6 + 8);
  v9[0] = *a6;
  v9[1] = v8;
  v10 = v7;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
  }

  quasar::NgramLmModel2::NgramLmModel2(a2, v11, &v10, a5, v9);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v10)
  {
    srilm::NgramCountContext::~NgramCountContext(v10);
    MEMORY[0x1B8C85350]();
  }

  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1B5692E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::unique_ptr<srilm::NgramCountContext>::reset[abi:ne200100](va, 0);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::lm::srilm::VocabIterator::VocabIterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D26C68;
  *(a1 + 8) = a3;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = (*(*a2 + 120))(a2);
  *(a1 + 40) = (*(*a2 + 128))(a2, 0);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  quasar::lm::srilm::VocabIterator::advance(a1);
  return a1;
}

void sub_1B5692EF8(_Unwind_Exception *a1)
{
  if (v1[71] < 0)
  {
    operator delete(*v2);
  }

  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void quasar::lm::srilm::VocabIterator::advance(quasar::lm::srilm::VocabIterator *this)
{
  if ((*(this + 72) & 1) == 0)
  {
    do
    {
      v3 = *(this + 3);
      v2 = *(this + 4);
      if (v3 == v2)
      {
        *(this + 72) = 1;
      }

      else
      {
        *(this + 3) = v3 + 1;
        if (v3 + 1 >= v2)
        {
          v4 = *(this + 5);
        }

        else
        {
          v4 = (*(**(this + 2) + 128))(*(this + 2));
          *(this + 5) = v4;
        }

        (*(**(this + 2) + 88))(&v6);
        if (*(this + 71) < 0)
        {
          operator delete(*(this + 6));
        }

        *(this + 3) = v6;
        *(this + 8) = v7;
        if ((*(this + 71) & 0x8000000000000000) != 0)
        {
          if (!*(this + 7))
          {
            continue;
          }
        }

        else if (!*(this + 71))
        {
          continue;
        }

        v5 = *(this + 1);
        if (v4 < v5[1] && ((*(*v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v4) & 1) != 0)
        {
          return;
        }
      }
    }

    while (*(this + 72) != 1);
  }
}

void quasar::lm::srilm::VocabIterator::next(quasar::lm::srilm::VocabIterator *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 3);
  *(a2 + 16) = *(this + 8);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  quasar::lm::srilm::VocabIterator::advance(this);
}

void sub_1B56930A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<Vocab>::operator=[abi:ne200100]<Vocab,std::default_delete<Vocab>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<Vocab>::shared_ptr[abi:ne200100]<Vocab,std::default_delete<Vocab>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void *quasar::lm::srilm::Interpolate::Interpolate(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = &unk_1F2D26C98;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 1), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  v5 = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>((a1 + 4), *a2, a2[1], (a2[1] - *a2) >> 3);
  if (a1[5] == a1[4])
  {
    quasar::lm::LogMessage::LogMessage(v10, 5, "Interpolate", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/srilm.cpp", 116);
    quasar::rescoring::AdapterModel::getFeaturizer(v10);
    quasar::lm::LogMessage::~LogMessage(v10);
  }

  else
  {
    v6 = quasar::lm::nullstream(v5);
  }

  v7 = a1[4];
  for (i = a1[5]; v7 != i; ++v7)
  {
    if (*v7 > 0.0)
    {
      v6 = quasar::lm::nullstream(v6);
    }

    else
    {
      quasar::lm::LogMessage::LogMessage(v10, 5, "Interpolate", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/srilm.cpp", 118);
      quasar::rescoring::AdapterModel::getFeaturizer(v10);
      quasar::lm::LogMessage::~LogMessage(v10);
    }
  }

  return a1;
}

void sub_1B5693264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  quasar::lm::LogMessage::~LogMessage(&a9);
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 40) = v12;
    operator delete(v12);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void quasar::lm::srilm::initializeBasicNgramLM(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 23) < 0)
  {
    v1 = *a1;
  }

  File::File(v2, v1, "r", 1);
  operator new();
}

void sub_1B5693470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::locale::~locale((v12 - 40));
  quasar::lm::LogMessage::~LogMessage(&a9);
  (*(*v11 + 8))(v11);
  File::~File(&a11);
  _Unwind_Resume(a1);
}

uint64_t quasar::lm::srilm::Interpolate::operator()(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 24))(a2);
  if (v4)
  {
    quasar::lm::nullstream(v4);
  }

  else
  {
    quasar::lm::LogMessage::LogMessage(v16, 5, "operator()", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/srilm.cpp", 137);
    quasar::rescoring::AdapterModel::getFeaturizer(v16);
    quasar::lm::LogMessage::~LogMessage(v16);
  }

  v5 = (*(*a2 + 16))(a2);
  v6 = *v5;
  v7 = **(a1 + 32);
  if (v7 > 0.0)
  {
    quasar::lm::nullstream(v5);
  }

  else
  {
    quasar::lm::LogMessage::LogMessage(v16, 5, "operator()", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/srilm.cpp", 147);
    quasar::rescoring::AdapterModel::getFeaturizer(v16);
    quasar::lm::LogMessage::~LogMessage(v16);
  }

  for (i = 1; ; ++i)
  {
    v9 = (*(*a2 + 24))(a2);
    v10 = (*(a1 + 40) - *(a1 + 32)) >> 3;
    if (!v9)
    {
      break;
    }

    if (v10 <= i)
    {
      quasar::lm::LogMessage::LogMessage(v16, 5, "operator()", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/srilm.cpp", 162);
      quasar::rescoring::AdapterModel::getFeaturizer(v16);
      quasar::lm::LogMessage::~LogMessage(v16);
    }

    else
    {
      quasar::lm::nullstream(v9);
    }

    v11 = *(*(a1 + 32) + 8 * i);
    v12 = (*(*a2 + 16))(a2);
    v13 = v7 + v11;
    v14 = *v12;
    (*(*v6 + 392))(v6, *v12, v7 / v13);
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v7 = v13;
  }

  if (v10 == i)
  {
    quasar::lm::nullstream(v9);
  }

  else
  {
    quasar::lm::LogMessage::LogMessage(v16, 5, "operator()", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/srilm.cpp", 172);
    quasar::rescoring::AdapterModel::getFeaturizer(v16);
    quasar::lm::LogMessage::~LogMessage(v16);
  }

  return v6;
}

void sub_1B5693798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  quasar::lm::LogMessage::~LogMessage(&a9);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  _Unwind_Resume(a1);
}

void quasar::lm::srilm::CreateLazyLoadedNgramModelStream(uint64_t *a1, uint64_t a2, int a3)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v5, 0, 24);
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v5, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v5[3] = a2;
  v6 = a3;
  v7 = 0;
  operator new();
}

void sub_1B569396C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void **);
  std::__function::__value_func<Ngram * ()(long long)>::~__value_func[abi:ne200100](va2);
  va_copy(v9, va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_1B5693A9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<BOOL ()(long long)>::~__value_func[abi:ne200100](va1);
  MEMORY[0x1B8C85350](v2, v3);
  _Unwind_Resume(a1);
}

void quasar::lm::srilm::VocabIterator::~VocabIterator(void **this)
{
  *this = &unk_1F2D26C68;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  quasar::Bitmap::~Bitmap(this);
}

{
  *this = &unk_1F2D26C68;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  quasar::Bitmap::~Bitmap(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t *std::shared_ptr<Vocab>::shared_ptr[abi:ne200100]<Vocab,std::default_delete<Vocab>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<Vocab  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<Vocab  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<Vocab  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::lm::Generator<Ngram> * quasar::lm::referenceVectorToObjectStream<std::string,Ngram>(std::vector<std::string> const&,std::function<Ngram* ()(long long)>)::{lambda(long long)#1},std::allocator<quasar::lm::Generator<Ngram> * quasar::lm::referenceVectorToObjectStream<std::string,Ngram>(std::vector<std::string> const&,std::function<Ngram* ()(long long)>)::{lambda(long long)#1}>,BOOL ()(long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D26D60;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::lm::Generator<Ngram> * quasar::lm::referenceVectorToObjectStream<std::string,Ngram>(std::vector<std::string> const&,std::function<Ngram* ()(long long)>)::{lambda(long long)#1},std::allocator<quasar::lm::Generator<Ngram> * quasar::lm::referenceVectorToObjectStream<std::string,Ngram>(std::vector<std::string> const&,std::function<Ngram* ()(long long)>)::{lambda(long long)#1}>,BOOL ()(long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::lm::Generator<Ngram> * quasar::lm::referenceVectorToObjectStream<std::string,Ngram>(std::vector<std::string> const&,std::function<Ngram* ()(long long)>)::{lambda(void)#1},std::allocator<quasar::lm::Generator<Ngram> * quasar::lm::referenceVectorToObjectStream<std::string,Ngram>(std::vector<std::string> const&,std::function<Ngram* ()(long long)>)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *quasar::lm::Generator<Ngram>::Generator(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_1F2D26E60;
  v7 = (a1 + 5);
  std::__function::__value_func<Ngram * ()(long long)>::__value_func[abi:ne200100]((a1 + 1), a2);
  std::__function::__value_func<BOOL ()(long long)>::__value_func[abi:ne200100](v7, a3);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100]((a1 + 9), a4);
  a1[13] = 0;
  a1[14] = 0;
  return a1;
}

void sub_1B569400C(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(long long)>::~__value_func[abi:ne200100](v2);
  std::__function::__value_func<Ngram * ()(long long)>::~__value_func[abi:ne200100](v1 + 8);
  _Unwind_Resume(a1);
}

void *quasar::lm::Generator<Ngram>::~Generator(void *a1)
{
  *a1 = &unk_1F2D26E60;
  v2 = (a1 + 1);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((a1 + 9));
  std::__function::__value_func<BOOL ()(long long)>::~__value_func[abi:ne200100]((a1 + 5));
  std::__function::__value_func<Ngram * ()(long long)>::~__value_func[abi:ne200100](v2);
  return a1;
}

void quasar::lm::Generator<Ngram>::~Generator(void *a1)
{
  *a1 = &unk_1F2D26E60;
  v2 = (a1 + 1);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((a1 + 9));
  std::__function::__value_func<BOOL ()(long long)>::~__value_func[abi:ne200100]((a1 + 5));
  std::__function::__value_func<Ngram * ()(long long)>::~__value_func[abi:ne200100](v2);

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::lm::Generator<Ngram>::next(uint64_t a1)
{
  v2 = *(a1 + 104);
  *(a1 + 104) = v2 + 1;
  *(a1 + 112) = std::function<Ngram * ()(long long)>::operator()(a1 + 8, v2);
  return a1 + 112;
}

uint64_t quasar::lm::Generator<Ngram>::has_next(uint64_t a1)
{
  FstCheck(*(a1 + 104) >= 0, "(current_idx_) >= (0)", "../libquasar/liblm/include/lm/streams_liblm.h", 41);
  v2 = *(a1 + 104);

  return std::function<BOOL ()(long long)>::operator()(a1 + 40, v2);
}

uint64_t quasar::lm::Generator<Ngram>::reset(void *a1)
{
  v2 = a1[12];
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v2 + 48))(v2);
  a1[13] = 0;
  a1[14] = 0;
  return result;
}

uint64_t std::__function::__value_func<Ngram * ()(long long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::function<Ngram * ()(long long)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__func<quasar::lm::srilm::CreateLazyLoadedNgramModelStream(std::vector<std::string> const&,Vocab *,int)::$_0,std::allocator<quasar::lm::srilm::CreateLazyLoadedNgramModelStream(std::vector<std::string> const&,Vocab *,int)::$_0>,Ngram * ()(long long)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2D26EC0;
  v3 = (a1 + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

{
  *a1 = &unk_1F2D26EC0;
  v3 = (a1 + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  return MEMORY[0x1B8C85350](a1, 0x10A1C40E7EDF326);
}

uint64_t std::__function::__func<quasar::lm::srilm::CreateLazyLoadedNgramModelStream(std::vector<std::string> const&,Vocab *,int)::$_0,std::allocator<quasar::lm::srilm::CreateLazyLoadedNgramModelStream(std::vector<std::string> const&,Vocab *,int)::$_0>,Ngram * ()(long long)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F2D26EC0;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a2 + 1), *(a1 + 8), *(a1 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  v5 = *(a1 + 40);
  a2[4] = *(a1 + 32);
  a2[5] = v5;
  return result;
}

void std::__function::__func<quasar::lm::srilm::CreateLazyLoadedNgramModelStream(std::vector<std::string> const&,Vocab *,int)::$_0,std::allocator<quasar::lm::srilm::CreateLazyLoadedNgramModelStream(std::vector<std::string> const&,Vocab *,int)::$_0>,Ngram * ()(long long)>::destroy_deallocate(void **a1)
{
  v2 = a1 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  operator delete(a1);
}

void std::__function::__func<quasar::lm::srilm::CreateLazyLoadedNgramModelStream(std::vector<std::string> const&,Vocab *,int)::$_0,std::allocator<quasar::lm::srilm::CreateLazyLoadedNgramModelStream(std::vector<std::string> const&,Vocab *,int)::$_0>,Ngram * ()(long long)>::operator()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8) + 24 * *a2;
  if (*(v2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *v2, *(v2 + 8));
  }

  else
  {
    v3 = *v2;
    v5.__r_.__value_.__r.__words[2] = *(v2 + 16);
    *&v5.__r_.__value_.__l.__data_ = v3;
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v4, v5.__r_.__value_.__l.__data_, v5.__r_.__value_.__l.__size_);
  }

  else
  {
    v4 = v5;
  }

  quasar::lm::srilm::initializeBasicNgramLM(&v4);
}

void sub_1B569462C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  quasar::lm::LogMessage::~LogMessage(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<quasar::lm::srilm::CreateLazyLoadedNgramModelStream(std::vector<std::string> const&,Vocab *,int)::$_0,std::allocator<quasar::lm::srilm::CreateLazyLoadedNgramModelStream(std::vector<std::string> const&,Vocab *,int)::$_0>,Ngram * ()(long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<Ngram * ()(long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t kaldi::Srand(kaldi *this)
{
  v1 = this;
  pthread_mutex_lock(&kaldi::_RandMutex);
  kaldi::_RandSeed = v1;
  srand(v1);
  kaldi::_SrandCalled = 1;

  return pthread_mutex_unlock(&kaldi::_RandMutex);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::wstring>,std::wstring*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(std::string_view const&,std::string_view const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<quasar::tennessee::Collation<std::string_view,std::string_view>::GetLessThanComparator(void)::{lambda(std::string_view const&,std::string_view const&)#1},std::allocator<quasar::tennessee::Collation<std::string_view,std::string_view>::GetLessThanComparator(void)::{lambda(std::string_view const&,std::string_view const&)#1}>,BOOL ()(std::string_view const&,std::string_view const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D26F70;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::tennessee::Collation<std::string_view,std::string_view>::GetLessThanComparator(void)::{lambda(std::string_view const&,std::string_view const&)#1},std::allocator<quasar::tennessee::Collation<std::string_view,std::string_view>::GetLessThanComparator(void)::{lambda(std::string_view const&,std::string_view const&)#1}>,BOOL ()(std::string_view const&,std::string_view const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(std::string_view const&,std::string_view const&)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<BOOL ()(std::string_view const&,std::string_view const&)>::operator=[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(std::string_view const&,std::string_view const&)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void *quasar::tennessee::DirectSortedIndex<long long,std::string_view>::DirectSortedIndex(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  *a2 = 0;
  v13 = v10;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v15, a5);
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v14, a6);
  quasar::tennessee::SortedIndex<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>::SortedIndex(a1, &v13, v15, v14);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v14);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v15);
  v11 = v13;
  v13 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  *a1 = &unk_1F2D27010;
  a1[10] = a3;
  a1[11] = a4;
  return a1;
}

void sub_1B5694CB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](va1);
  if (a2)
  {
    (*(*a2 + 8))(a2);
  }

  _Unwind_Resume(a1);
}

void *quasar::tennessee::SortedIndex<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>::SortedIndex(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  *a2 = 0;
  *a1 = &unk_1F2D270B0;
  a1[1] = v6;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100]((a1 + 2), a3);
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100]((a1 + 6), a4);
  return a1;
}

void sub_1B5694D94(_Unwind_Exception *a1)
{
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100]((v1 + 2));
  v4 = v1[1];
  *v1 = v2;
  v1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void *quasar::tennessee::DirectSortedIndex<long long,std::string_view>::~DirectSortedIndex(void *a1)
{
  *a1 = &unk_1F2D270B0;
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100]((a1 + 6));
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100]((a1 + 2));
  v2 = a1[1];
  *a1 = &unk_1F2D27110;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void quasar::tennessee::DirectSortedIndex<long long,std::string_view>::~DirectSortedIndex(void *a1)
{
  *a1 = &unk_1F2D270B0;
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100]((a1 + 6));
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100]((a1 + 2));
  v2 = a1[1];
  *a1 = &unk_1F2D27110;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void sub_1B5694FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  std::default_delete<std::vector<long long>>::operator()[abi:ne200100](&a10, v10);
  _Unwind_Resume(a1);
}

uint64_t quasar::tennessee::Index<long long,std::string_view>::FindMatches(uint64_t *a1, uint64_t a2, int a3)
{
  v3 = *a1;
  if (a3)
  {
    return (*(v3 + 48))();
  }

  else
  {
    return (*(v3 + 40))();
  }
}

void sub_1B56950C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  std::default_delete<std::vector<long long>>::operator()[abi:ne200100](&a10, v10);
  _Unwind_Resume(a1);
}

uint64_t quasar::tennessee::SortedIndex<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>::FindExactMatches(void **a1, __int128 *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  ((*a1)[8])(&v18);
  ((*a1)[9])(&v15, a1);
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v22, (a1 + 2));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v21, (a1 + 6));
  v6 = (*(*a1[1] + 16))(a1[1]);
  quasar::tennessee::internal::FindMatches<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>(&v18, &v15, v22, v21, v6, a2, 1, &v23);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v21);
  result = std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v22);
  if (v28 == 1)
  {
    v18 = v23;
    std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v19, v24);
    std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v20, v25);
    v15 = v25[4];
    std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v16, v26);
    std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v17, v27);
    v8 = a3[1];
    v12 = v18;
    std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v13, v19);
    std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v14, v20);
    v9 = v15;
    std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v10, v16);
    std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v11, v17);
    std::vector<long long>::insert[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,0>(a3, v8, &v12, &v9);
    std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v11);
    std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v10);
    std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v14);
    std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v13);
    std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v17);
    std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v16);
    std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v20);
    result = std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v19);
    if (v28)
    {
      std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v27);
      std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v26);
      std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v25);
      return std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v24);
    }
  }

  return result;
}

void sub_1B5695344(_Unwind_Exception *a1)
{
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v4 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v4 + 8);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v3 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v3 + 8);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v2 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v2 + 8);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v1 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v1 + 8);
  std::optional<std::tuple<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,BOOL>>::~optional(v5 - 232);
  _Unwind_Resume(a1);
}

uint64_t quasar::tennessee::SortedIndex<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>::FindPrefixMatches(void **a1, __int128 *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  ((*a1)[8])(&v10);
  ((*a1)[9])(&v9, a1);
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v18, (a1 + 2));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v17, (a1 + 6));
  v6 = (*(*a1[1] + 24))(a1[1]);
  quasar::tennessee::internal::FindMatches<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>(&v10, &v9, v18, v17, v6, a2, 1, &v19);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v17);
  result = std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v18);
  if (v24 == 1)
  {
    v8 = a3[1];
    v14 = v19;
    std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v15, v20);
    std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v16, v21);
    v11 = v21[4];
    std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v12, v22);
    std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v13, v23);
    std::vector<long long>::insert[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,0>(a3, v8, &v14, &v11);
    std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v13);
    std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v12);
    std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v16);
    result = std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v15);
    if (v24)
    {
      std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v23);
      std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v22);
      std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v21);
      return std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v20);
    }
  }

  return result;
}

void sub_1B56955F4(_Unwind_Exception *a1)
{
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v2 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v2 + 8);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v1 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v1 + 8);
  std::optional<std::tuple<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,BOOL>>::~optional(v3 - 216);
  _Unwind_Resume(a1);
}

uint64_t quasar::tennessee::SortedIndex<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>::IsPrefix(void **a1, __int128 *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  ((*a1)[8])(&v8);
  ((*a1)[9])(&v7, a1);
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v10, (a1 + 2));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v9, (a1 + 6));
  v4 = (*(*a1[1] + 24))(a1[1]);
  quasar::tennessee::internal::FindMatches<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>(&v8, &v7, v10, v9, v4, a2, 0, v11);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v9);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v10);
  v5 = v16;
  if (v16 == 1)
  {
    std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](&v15);
    std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](&v14);
    std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](&v13);
    std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](&v12);
  }

  return v5;
}

void sub_1B56957CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t quasar::tennessee::internal::FindMatches<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, int a7@<W6>, _BYTE *a8@<X8>)
{
  v48[4] = *MEMORY[0x1E69E9840];
  v24 = *a1;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v44, a3);
  quasar::tennessee::internal::CreateIterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>(&v24, v44, &v45);
  v24 = *a2;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v41, a3);
  quasar::tennessee::internal::CreateIterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>(&v24, v41, &v42);
  v32 = a5;
  LOBYTE(v23[0]) = 0;
  v24 = v45;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v25, v46);
  v38 = v42;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v39, v43);
  std::__lower_bound[abi:ne200100]<std::_ClassicAlgPolicy,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>,std::string_view,std::__identity,std::optional<std::tuple<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,BOOL>> quasar::tennessee::internal::FindMatches<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>(boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>,quasar::tennessee::SortedIndex<long long,std::string_view,std::vector<long long>::const_iterator>::EntryIdToEntryFn,quasar::tennessee::SortedIndex<long long,std::string_view,std::vector<long long>::const_iterator>::EntryToEntryIdFn,quasar::tennessee::Comparator<std::string_view,quasar::tennessee::CollationInterfaceTypeHelper<std::string_view>::type> const&,std::string_view const&,BOOL)::{lambda(std::string_view,std::string_view)#1}>(&v24, &v38, a6, &v32, &v47);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v39);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v25);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v43);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v41);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v46);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v44);
  if (v47 == *a2 || (v24 = std::function<std::string_view ()(long long)>::operator()(v48, v47), v25[0] = v15, (*(*a5 + 16))(a5, &v24, a6)))
  {
    *a8 = 0;
    a8[152] = 0;
  }

  else
  {
    v36 = v47;
    std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v37, v48);
    std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v35, a4);
    quasar::tennessee::internal::CreateIterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>(&v36, v35, &v38);
    std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v35);
    std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v37);
    quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>::operator+(&v38, 1, &v32);
    if (a7)
    {
      while (1)
      {
        v24 = v32;
        std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v25, v33);
        if (v24 == *a2)
        {
          break;
        }

        v17 = std::function<std::string_view ()(long long)>::operator()(v33, v32);
        v19 = std::function<long long ()(std::string_view)>::operator()(v34, v17, v18);
        v23[0] = std::function<std::string_view ()(long long)>::operator()(a3, v19);
        v23[1] = v20;
        v21 = (*(*a5 + 16))(a5, v23, a6);
        std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v25);
        if (v21)
        {
          goto LABEL_10;
        }

        quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>::operator++(&v32, &v29);
        std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](&v31);
        std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](&v30);
      }

      std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v25);
    }

LABEL_10:
    v24 = v32;
    std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v25, v33);
    v22 = v24 == *a2;
    std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v25);
    LOBYTE(v23[0]) = v22;
    _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJN6quasar9tennessee8internal8IteratorINS_17basic_string_viewIcNS_11char_traitsIcEEEExNS6_IxSA_N5boost9iterators17counting_iteratorIxNSB_11use_defaultESE_EEEEEESH_bEEC2B8ne200100IJLm0ELm1ELm2EEJSH_SH_bEJEJEJRSH_SK_RKbEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSO_IJDpT2_EEEDpOT3_(&v24, &v38, &v32, v23);
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,BOOL>::__tuple_impl(a8, &v24);
    a8[152] = 1;
    std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](&v28);
    std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](&v27);
    std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](&v26);
    std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v25);
    std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v34);
    std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v33);
    std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](&v40);
    std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v39);
  }

  return std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v48);
}

void sub_1B5695C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::tuple<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,BOOL>::~tuple(&a13);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](&a46);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](&a42);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](&a64);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](&a60);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v64);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<long long>::insert[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,0>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v23[4] = *MEMORY[0x1E69E9840];
  v8 = (a3 + 1);
  v21 = *a3;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v22, (a3 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v23, (a3 + 5));
  v18 = *a4;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v19, (a4 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v20, (a4 + 5));
  v15 = *a3;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v16, v8);
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v17, (a3 + 5));
  v12 = *a4;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v13, (a4 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v14, (a4 + 5));
  v9 = std::distance[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>(&v15, &v12);
  v10 = std::vector<long long>::__insert_with_size[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>(a1, a2, &v21, &v18, v9);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v14);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v13);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v17);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v16);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v20);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v19);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v23);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v22);
  return v10;
}

void sub_1B5695ED8(_Unwind_Exception *a1)
{
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v1 + 8);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v4 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v4 + 8);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v3 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v3 + 8);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v2 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v2 + 8);
  _Unwind_Resume(a1);
}

uint64_t std::optional<std::tuple<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,BOOL>>::~optional(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](a1 + 112);
    std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](a1 + 80);
    std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](a1 + 40);
    std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](a1 + 8);
  }

  return a1;
}

uint64_t quasar::tennessee::internal::CreateIterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v6, a2);
  *a3 = v4;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100]((a3 + 1), v6);
  return std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v6);
}

void sub_1B569602C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t quasar::tennessee::internal::CreateIterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v7 = *a1;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v8, (a1 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v6, a2);
  quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>::Iterator(a3, &v7, v6);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v6);
  return std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v8);
}

void sub_1B56960EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](&a9);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v9 + 8);
  _Unwind_Resume(a1);
}

uint64_t quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>::operator+@<X0>(uint64_t *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v8[4] = *MEMORY[0x1E69E9840];
  quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>::operator+(a1, a2, &v7);
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v6, (a1 + 5));
  quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>::Iterator(a3, &v7, v6);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v6);
  return std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v8);
}

void sub_1B56961A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](&a9);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

uint64_t std::function<std::string_view ()(long long)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>::operator++@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6[4] = *MEMORY[0x1E69E9840];
  ++*a1;
  v4 = (a1 + 1);
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v6, (a1 + 1));
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v6);
  *a2 = *a1;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100]((a2 + 1), v4);
  return std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100]((a2 + 5), (a1 + 5));
}

uint64_t std::__lower_bound[abi:ne200100]<std::_ClassicAlgPolicy,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>,std::string_view,std::__identity,std::optional<std::tuple<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,BOOL>> quasar::tennessee::internal::FindMatches<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>(boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>,quasar::tennessee::SortedIndex<long long,std::string_view,std::vector<long long>::const_iterator>::EntryIdToEntryFn,quasar::tennessee::SortedIndex<long long,std::string_view,std::vector<long long>::const_iterator>::EntryToEntryIdFn,quasar::tennessee::Comparator<std::string_view,quasar::tennessee::CollationInterfaceTypeHelper<std::string_view>::type> const&,std::string_view const&,BOOL)::{lambda(std::string_view,std::string_view)#1}>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v10 = (a1 + 1);
  v17 = *a1;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v18, (a1 + 1));
  v15 = *a2;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v16, (a2 + 1));
  v11 = std::_IterOps<std::_ClassicAlgPolicy>::distance[abi:ne200100]<quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>(&v17, &v15);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v16);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v18);
  v13 = *a1;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v14, v10);
  std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>,std::string_view,std::__identity,std::optional<std::tuple<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,BOOL>> quasar::tennessee::internal::FindMatches<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>(boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>,quasar::tennessee::SortedIndex<long long,std::string_view,std::vector<long long>::const_iterator>::EntryIdToEntryFn,quasar::tennessee::SortedIndex<long long,std::string_view,std::vector<long long>::const_iterator>::EntryToEntryIdFn,quasar::tennessee::Comparator<std::string_view,quasar::tennessee::CollationInterfaceTypeHelper<std::string_view>::type> const&,std::string_view const&,BOOL)::{lambda(std::string_view,std::string_view)#1}>(&v13, a3, v11, a4, a5);
  return std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v14);
}

uint64_t std::_IterOps<std::_ClassicAlgPolicy>::distance[abi:ne200100]<quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>(uint64_t *a1, uint64_t *a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v7 = *a1;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v8, (a1 + 1));
  v5 = *a2;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v6, (a2 + 1));
  v3 = std::distance[abi:ne200100]<quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>(&v7, &v5);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v6);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v8);
  return v3;
}

void sub_1B56964F8(_Unwind_Exception *a1)
{
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v2 + 8);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>,std::string_view,std::__identity,std::optional<std::tuple<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,BOOL>> quasar::tennessee::internal::FindMatches<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>(boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>,quasar::tennessee::SortedIndex<long long,std::string_view,std::vector<long long>::const_iterator>::EntryIdToEntryFn,quasar::tennessee::SortedIndex<long long,std::string_view,std::vector<long long>::const_iterator>::EntryToEntryIdFn,quasar::tennessee::Comparator<std::string_view,quasar::tennessee::CollationInterfaceTypeHelper<std::string_view>::type> const&,std::string_view const&,BOOL)::{lambda(std::string_view,std::string_view)#1}>@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v17[4] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v8 = a3;
    do
    {
      v14 = *a1;
      std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v15, (a1 + 1));
      v10 = v8 >> 1;
      v14 += (v8 >> 1);
      v16 = v14;
      std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v17, v15);
      std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v17);
      v16 = std::function<std::string_view ()(long long)>::operator()(v15, v14);
      v17[0] = v11;
      v13 = *a2;
      if (((*(**a4 + 16))(*a4, &v16, &v13) & 0x80000000) != 0)
      {
        v16 = ++v14;
        std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v17, v15);
        *a1 = v16;
        std::__function::__value_func<std::string_view ()(long long)>::operator=[abi:ne200100]((a1 + 1), v17);
        std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v17);
        v10 = v8 + ~v10;
      }

      std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v15);
      v8 = v10;
    }

    while (v10);
  }

  *a5 = *a1;
  return std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100]((a5 + 1), (a1 + 1));
}

void sub_1B5696698(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::distance[abi:ne200100]<quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>(uint64_t *a1, uint64_t *a2)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v7 = *a1;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v8, (a1 + 1));
  v5 = *a2;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v6, (a2 + 1));
  v9 = v7;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v10, v8);
  v3 = v9;
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v10);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v6);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v8);
  return v5 - v3;
}

void sub_1B569679C(_Unwind_Exception *a1)
{
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v2 + 8);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<std::string_view ()(long long)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<std::string_view ()(long long)>::operator=[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::string_view ()(long long)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void *quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>::Iterator(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = (a1 + 5);
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100]((a1 + 1), (a2 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v5, a3);
  return a1;
}

uint64_t quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>::operator+@<X0>(uint64_t *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v7, (a1 + 1));
  *a3 = v5 + a2;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100]((a3 + 1), v7);
  return std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v7);
}

void sub_1B5696A40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::function<long long ()(std::string_view)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, v5);
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJN6quasar9tennessee8internal8IteratorINS_17basic_string_viewIcNS_11char_traitsIcEEEExNS6_IxSA_N5boost9iterators17counting_iteratorIxNSB_11use_defaultESE_EEEEEESH_bEEC2B8ne200100IJLm0ELm1ELm2EEJSH_SH_bEJEJEJRSH_SK_RKbEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSO_IJDpT2_EEEDpOT3_(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = (a2 + 5);
  *a1 = *a2;
  v8 = a1 + 40;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](a1 + 8, (a2 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v8, v7);
  *(a1 + 72) = *a3;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](a1 + 80, (a3 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](a1 + 112, (a3 + 5));
  *(a1 + 144) = *a4;
  return a1;
}

void sub_1B5696B3C(_Unwind_Exception *a1)
{
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v1 + 80);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v2);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,BOOL>::__tuple_impl(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](a1 + 8, a2 + 8);
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  *(a1 + 72) = *(a2 + 72);
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](a1 + 80, a2 + 80);
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](a1 + 112, a2 + 112);
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t std::tuple<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,BOOL>::~tuple(uint64_t a1)
{
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](a1 + 112);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](a1 + 80);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](a1 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](a1 + 8);
  return a1;
}

uint64_t *std::vector<long long>::__insert_with_size[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>(void *a1, uint64_t *__src, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = __src;
  v62[4] = *MEMORY[0x1E69E9840];
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 3)
    {
      if (a5 <= (v10 - __src) >> 3)
      {
        v24 = &__src[a5];
        v25 = &v10[-8 * a5];
        v26 = a1[1];
        while (v25 < v10)
        {
          v27 = *v25;
          v25 += 8;
          *v26++ = v27;
        }

        a1[1] = v26;
        if (v10 != v24)
        {
          memmove(&__src[a5], __src, v10 - v24);
        }

        v40 = *a3;
        std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v41, (a3 + 1));
        std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v42, (a3 + 5));
        std::copy_n[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,long,long long *,0>(&v40, a5, v5);
        std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v42);
        v28 = v41;
      }

      else
      {
        v55 = *a3;
        std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v56, (a3 + 1));
        std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v57, (a3 + 5));
        std::__advance[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>(&v55, (v10 - v5) >> 3);
        v58 = v55;
        v18 = std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](&v59, v56);
        std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v62, v57);
        std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v57);
        std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v56);
        v52 = v58;
        std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v53, v18);
        std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v54, v62);
        v49 = *a4;
        std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v50, (a4 + 1));
        std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v51, (a4 + 5));
        std::vector<long long>::__construct_at_end<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>(a1, &v52, &v49);
        std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v51);
        std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v50);
        std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v54);
        std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v53);
        if ((v10 - v5) >> 3 >= 1)
        {
          v19 = &v5[a5];
          v20 = a1[1];
          v21 = &v20[-a5];
          v22 = v20;
          while (v21 < v10)
          {
            v23 = *v21;
            v21 += 8;
            *v22++ = v23;
          }

          a1[1] = v22;
          if (v20 != v19)
          {
            memmove(&v5[a5], v5, v20 - v19);
          }

          v46 = *a3;
          std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v47, (a3 + 1));
          std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v48, (a3 + 5));
          v43 = v58;
          std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v44, v18);
          std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v45, v62);
          std::copy[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,long long *>(&v46, &v43, v5);
          std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v45);
          std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v44);
          std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v48);
          std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v47);
        }

        std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v62);
        v28 = v18;
      }

      std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v28);
    }

    else
    {
      v11 = *a1;
      v12 = a5 + (&v10[-*a1] >> 3);
      if (v12 >> 61)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v13 = __src - v11;
      v14 = v9 - v11;
      if (v14 >> 2 > v12)
      {
        v12 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      v16 = v13 >> 3;
      v61 = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v15);
      }

      v58 = 0;
      v59 = 8 * v16;
      v60 = (8 * v16);
      v37 = *a3;
      std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v38, (a3 + 1));
      std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v39, (a3 + 5));
      std::__split_buffer<long long>::__construct_at_end_with_size<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>(&v58, &v37, a5);
      std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v39);
      std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v38);
      v29 = v59;
      memcpy(v60, v5, a1[1] - v5);
      v30 = *a1;
      v31 = v59;
      *&v60 = v60 + a1[1] - v5;
      a1[1] = v5;
      v32 = v5 - v30;
      v33 = (v31 - (v5 - v30));
      memcpy(v33, v30, v32);
      v34 = *a1;
      *a1 = v33;
      v35 = a1[2];
      *(a1 + 1) = v60;
      *&v60 = v34;
      *(&v60 + 1) = v35;
      v58 = v34;
      v59 = v34;
      if (v34)
      {
        operator delete(v34);
      }

      return v29;
    }
  }

  return v5;
}

void sub_1B56970B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v11 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v11 + 8);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v10 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v10 + 8);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](a10);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void sub_1B5697180()
{
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v0 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v0 + 8);
  v3 = *(v1 - 160);
  v2 = *(v1 - 152);
  if (v2 != v3)
  {
    *(v1 - 152) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *(v1 - 168);
  if (v4)
  {
    operator delete(v4);
  }

  JUMPOUT(0x1B5697178);
}

uint64_t std::distance[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>(uint64_t *a1, uint64_t *a2)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v9 = *a1;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v10, (a1 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v11, (a1 + 5));
  v6 = *a2;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v7, (a2 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v8, (a2 + 5));
  v12 = v9;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v13, v10);
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v14, v11);
  v15 = v12;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v16, v13);
  v4 = v15;
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v16);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v14);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v13);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v8);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v7);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v11);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v10);
  return v6 - v4;
}

void sub_1B5697304(_Unwind_Exception *a1)
{
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v3 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v3 + 8);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v1 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v1 + 8);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v2 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v2 + 8);
  _Unwind_Resume(a1);
}

uint64_t std::vector<long long>::__construct_at_end<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  v6 = (a2 + 5);
  v12 = *a2;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v13, (a2 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v14, v6);
  v9 = *a3;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v10, (a3 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v11, (a3 + 5));
  v7 = std::__uninitialized_allocator_copy[abi:ne200100]<std::allocator<long long>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,long long *>(a1, &v12, &v9, v5);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v11);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v10);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v14);
  result = std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v13);
  *(a1 + 8) = v7;
  return result;
}

void sub_1B5697468(_Unwind_Exception *a1)
{
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v4 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v4 + 8);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v3 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v3 + 8);
  *(v1 + 8) = v2;
  _Unwind_Resume(a1);
}

uint64_t std::copy[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,long long *>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v16[5] = *MEMORY[0x1E69E9840];
  v11 = *a1;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v12, (a1 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v13, (a1 + 5));
  v8 = *a2;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v9, (a2 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v10, (a2 + 5));
  std::__copy[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,long long *>(&v11, &v8, a3, &v14);
  v6 = v16[4];
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v16);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](&v15);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v10);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v9);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v13);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v12);
  return v6;
}

void sub_1B569759C(_Unwind_Exception *a1)
{
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v1 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v1 + 8);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v2 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v2 + 8);
  _Unwind_Resume(a1);
}

uint64_t std::copy_n[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,long,long long *,0>(uint64_t *a1, int a2, uint64_t *a3)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v11 = *a1;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v12, (a1 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v13, (a1 + 5));
  quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>::operator+(a1, a2, &v8);
  v6 = std::copy[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,long long *>(&v11, &v8, a3);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](&v10);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](&v9);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v13);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v12);
  return v6;
}

void sub_1B56976BC(_Unwind_Exception *a1)
{
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v1 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v1 + 8);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v2 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v2 + 8);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<long long>::__construct_at_end_with_size<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = result;
  v12[4] = *MEMORY[0x1E69E9840];
  v4 = *(result + 16);
  if (a3)
  {
    v6 = 8 * a3;
    v7 = &v4[a3];
    do
    {
      v8 = std::function<std::string_view ()(long long)>::operator()((a2 + 1), *a2);
      *v4 = std::function<long long ()(std::string_view)>::operator()((a2 + 5), v8, v9);
      quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>::operator++(a2, &v10);
      std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v12);
      result = std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](&v11);
      ++v4;
      v6 -= 8;
    }

    while (v6);
    v4 = v7;
  }

  *(v3 + 16) = v4;
  return result;
}

uint64_t std::__advance[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>(void *a1, int a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>::operator+=(a1, a2, &v3);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v5);
  return std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](&v4);
}

uint64_t quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>::operator+=@<X0>(void *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v7[4] = *MEMORY[0x1E69E9840];
  *a1 += a2;
  v5 = (a1 + 1);
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v7, (a1 + 1));
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v7);
  *a3 = *a1;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100]((a3 + 1), v5);
  return std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100]((a3 + 5), (a1 + 5));
}

uint64_t *std::__uninitialized_allocator_copy[abi:ne200100]<std::allocator<long long>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,long long *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v7 = (a2 + 5);
  v19 = *a2;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v20, (a2 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v21, v7);
  v16 = *a3;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v17, (a3 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v18, (a3 + 5));
  std::__unwrap_range[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>(&v19, &v16, &v22);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v18);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v17);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v21);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v20);
  v13 = v22;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v14, v23);
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v15, v24);
  v10 = v24[4];
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v11, v25);
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v12, v26);
  v8 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<long long>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,long long *>(a1, &v13, &v10, a4);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v12);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v11);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v15);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v14);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v26);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v25);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v24);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v23);
  return v8;
}

void sub_1B5697AC4(_Unwind_Exception *a1)
{
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v2 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v2 + 8);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v1 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v1 + 8);
  std::tuple<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,BOOL>::~tuple(v3 - 216);
  _Unwind_Resume(a1);
}

uint64_t std::__unwrap_range[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v5 = (a1 + 5);
  v13 = *a1;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v14, (a1 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v15, v5);
  v19 = v13;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v20, v14);
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v21, v15);
  v16 = v19;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v17, v20);
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v18, v21);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v21);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v20);
  v7 = *a2;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v8, (a2 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v9, (a2 + 5));
  v19 = v7;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v20, v8);
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v21, v9);
  v10 = v19;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v11, v20);
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v12, v21);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v21);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v20);
  std::pair<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>::pair[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,0>(a3, &v16, &v10);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v12);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v11);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v9);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v8);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v18);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v17);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v15);
  return std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v14);
}

void sub_1B5697CE4(_Unwind_Exception *a1)
{
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v1 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v1 + 8);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v4 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v4 + 8);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v3 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v3 + 8);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v2 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v2 + 8);
  _Unwind_Resume(a1);
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<long long>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,long long *>(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v6 = *a2;
  if (v6 != *a3)
  {
    do
    {
      v8 = std::function<std::string_view ()(long long)>::operator()((a2 + 1), v6);
      *a4 = std::function<long long ()(std::string_view)>::operator()((a2 + 5), v8, v9);
      quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>::operator++(a2, &v11);
      std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v13);
      std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](&v12);
      ++a4;
      v6 = *a2;
    }

    while (*a2 != *a3);
  }

  return a4;
}

void *std::pair<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>::pair[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,0>(void *a1, void *a2, void *a3)
{
  v5 = (a2 + 5);
  *a1 = *a2;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100]((a1 + 1), (a2 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100]((a1 + 5), v5);
  a1[9] = *a3;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100]((a1 + 10), (a3 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100]((a1 + 14), (a3 + 5));
  return a1;
}

uint64_t std::__copy[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,long long *>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v7 = (a1 + 5);
  v12 = *a1;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v13, (a1 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v14, v7);
  v9 = *a2;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v10, (a2 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v11, (a2 + 5));
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,long long *,0>(&v12, &v9, a3, a4);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v11);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v10);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v14);
  return std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v13);
}

void sub_1B5697FA8(_Unwind_Exception *a1)
{
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v2 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v2 + 8);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v1 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,long long *,0>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v39[4] = *MEMORY[0x1E69E9840];
  v8 = (a1 + 1);
  v32 = *a1;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v33, (a1 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v34, (a1 + 5));
  v29 = *a2;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v30, (a2 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v31, (a2 + 5));
  std::__unwrap_range[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>(&v32, &v29, &v35);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v31);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v30);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v34);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v33);
  v23 = v35;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v24, v36);
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v25, v37);
  v20 = v37[4];
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v21, v38);
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v22, v39);
  std::__copy_impl::operator()[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,long long *>(&v23, &v20, a3, &v26);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v22);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v21);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v25);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v24);
  v14 = *a1;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v15, v8);
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v16, (a1 + 5));
  v11 = v26;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v12, v27);
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v13, v28);
  std::__rewrap_range[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>(&v14, &v11, &v17);
  v9 = v28[4];
  *a4 = v17;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100]((a4 + 1), v18);
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100]((a4 + 5), v19);
  a4[9] = v9;
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v19);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v18);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v13);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v12);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v16);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v15);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v28);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v27);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v39);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v38);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v37);
  return std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v36);
}

void sub_1B5698240(_Unwind_Exception *a1)
{
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v1 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v1 + 8);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v2 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v2 + 8);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v3 + 40);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v3 + 8);
  std::tuple<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,BOOL>::~tuple(v4 - 232);
  _Unwind_Resume(a1);
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,long long *>@<X0>(uint64_t *a1@<X1>, void *a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X8>)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v7 = *a1;
  if (v7 != *a2)
  {
    do
    {
      v9 = std::function<std::string_view ()(long long)>::operator()((a1 + 1), v7);
      *a3++ = std::function<long long ()(std::string_view)>::operator()((a1 + 5), v9, v10);
      quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>::operator++(a1, &v12);
      std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v14);
      std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](&v13);
      v7 = *a1;
    }

    while (*a1 != *a2);
  }

  *a4 = v7;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100]((a4 + 1), (a1 + 1));
  result = std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100]((a4 + 5), (a1 + 5));
  a4[9] = a3;
  return result;
}

uint64_t std::__rewrap_range[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v5 = (a1 + 5);
  v10 = *a1;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v11, (a1 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v12, v5);
  v7 = *a2;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v8, (a2 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v9, (a2 + 5));
  std::__rewrap_iter[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,std::__unwrap_iter_impl<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,false>>(&v10, &v7, a3);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v9);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v8);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v12);
  return std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v11);
}

uint64_t std::__rewrap_iter[abi:ne200100]<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,std::__unwrap_iter_impl<quasar::tennessee::internal::Iterator<std::string_view,long long,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>,false>>@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v5 = (a1 + 5);
  v9[4] = *a1;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v10, (a1 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v11, v5);
  v7 = *a2;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v8, (a2 + 1));
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100](v9, (a2 + 5));
  *a3 = v7;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100]((a3 + 1), v8);
  std::__function::__value_func<long long ()(std::string_view)>::__value_func[abi:ne200100]((a3 + 5), v9);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v9);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v8);
  std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](v11);
  return std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v10);
}

uint64_t std::__function::__value_func<long long ()(std::string_view)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__lower_bound[abi:ne200100]<std::_ClassicAlgPolicy,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>,std::string_view,std::__identity,std::function<BOOL ()(std::string_view const&,std::string_view const&)>>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v10 = (a1 + 1);
  v17 = *a1;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v18, (a1 + 1));
  v15 = *a2;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v16, (a2 + 1));
  v11 = std::_IterOps<std::_ClassicAlgPolicy>::distance[abi:ne200100]<quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>>(&v17, &v15);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v16);
  std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v18);
  v13 = *a1;
  std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v14, v10);
  std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>,std::string_view,std::__identity,std::function<BOOL ()(std::string_view const&,std::string_view const&)>>(&v13, a3, v11, a4, a5);
  return std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v14);
}

uint64_t std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,quasar::tennessee::internal::Iterator<long long,std::string_view,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>,std::string_view,std::__identity,std::function<BOOL ()(std::string_view const&,std::string_view const&)>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v18[4] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v8 = a3;
    do
    {
      v14 = *a1;
      std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v16, (a1 + 1));
      v10 = v8 >> 1;
      v15 = v14 + (v8 >> 1);
      v17 = v15;
      std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v18, v16);
      std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v18);
      v17 = std::function<std::string_view ()(long long)>::operator()(v16, v15);
      v18[0] = v11;
      v12 = *(a4 + 24);
      if (!v12)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v12 + 48))(v12, &v17, a2))
      {
        v17 = v15 + 1;
        std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100](v18, v16);
        *a1 = v17;
        std::__function::__value_func<std::string_view ()(long long)>::operator=[abi:ne200100]((a1 + 1), v18);
        std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v18);
        v10 = v8 + ~v10;
      }

      std::__function::__value_func<std::string_view ()(long long)>::~__value_func[abi:ne200100](v16);
      v8 = v10;
    }

    while (v10);
  }

  *a5 = *a1;
  return std::__function::__value_func<std::string_view ()(long long)>::__value_func[abi:ne200100]((a5 + 1), (a1 + 1));
}

uint64_t std::__function::__value_func<BOOL ()(std::string_view const&,std::string_view const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void quasar::EndPointer::createEndPointer(quasar::EndPointer *this, const quasar::EndPointDecoderConfig *a2, const kaldi::quasar::OnlineLatticeBiglmFasterDecoderConfig *a3, const quasar::EndPointModelConfig *a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a3 + 1);
  }

  if (v4)
  {
    if (!a4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = *(this + 63);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(this + 6);
    }

    if (!v5 || (a4 & 1) == 0)
    {
LABEL_11:
      std::make_unique[abi:ne200100]<quasar::BasicEndPointer,kaldi::quasar::OnlineLatticeBiglmFasterDecoderConfig const&,quasar::EndPointDecoderConfig const&,0>();
    }
  }

  operator new();
}

void sub_1B5698AA4(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10B3C4093B82BD8);
  *v1 = 0;
  _Unwind_Resume(a1);
}

void sub_1B5698BA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  quasar::EndPointDecoderConfig::~EndPointDecoderConfig(va);
  MEMORY[0x1B8C85350](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t quasar::EndPointDecoderConfig::init(uint64_t this)
{
  if ((*(this + 63) & 0x8000000000000000) != 0)
  {
    if (!*(this + 48))
    {
      return this;
    }

LABEL_5:
    _ZNSt3__115allocate_sharedB8ne200100IN5kaldi5nnet14NnetENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  if (*(this + 63))
  {
    goto LABEL_5;
  }

  return this;
}

void sub_1B5698DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::EndPointer::featuresToJsonString(float a1, float a2, float a3, uint64_t a4, quasar *a5, quasar *a6, quasar *a7, uint64_t *a8, unsigned int **a9, quasar *a10, quasar *a11)
{
  quasar::PTree::PTree(v48);
  std::string::basic_string[abi:ne200100]<0>(&v49, quasar::EP_NUM_OF_WORDS_STR[0]);
  LODWORD(v37.__r_.__value_.__l.__data_) = quasar::getType(a5);
  std::to_string(&v37.__r_.__value_.__r.__words[1], a5);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  quasar::PTree::putChild(v48, &v49, &v37, 1);
  quasar::PTree::~PTree(&v37);
  if (SHIBYTE(v49.__end_) < 0)
  {
    operator delete(v49.__first_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v49, quasar::EP_NUM_TRAILING_SIL_STR[0]);
  LODWORD(v37.__r_.__value_.__l.__data_) = quasar::getType(a6);
  std::to_string(&v37.__r_.__value_.__r.__words[1], a6);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  quasar::PTree::putChild(v48, &v49, &v37, 1);
  quasar::PTree::~PTree(&v37);
  if (SHIBYTE(v49.__end_) < 0)
  {
    operator delete(v49.__first_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v49, "num-frames");
  LODWORD(v37.__r_.__value_.__l.__data_) = quasar::getType(a7);
  std::to_string(&v37.__r_.__value_.__r.__words[1], a7);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  quasar::PTree::putChild(v48, &v49, &v37, 1);
  quasar::PTree::~PTree(&v37);
  if (SHIBYTE(v49.__end_) < 0)
  {
    operator delete(v49.__first_);
  }

  v21 = std::string::basic_string[abi:ne200100]<0>(&v49, quasar::EP_EOS_LIKELIHOOD_STR[0]);
  LODWORD(v37.__r_.__value_.__l.__data_) = quasar::getType(v21, a1);
  std::to_string(&v37.__r_.__value_.__r.__words[1], a1);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  quasar::PTree::putChild(v48, &v49, &v37, 1);
  quasar::PTree::~PTree(&v37);
  if (SHIBYTE(v49.__end_) < 0)
  {
    operator delete(v49.__first_);
  }

  v22 = std::string::basic_string[abi:ne200100]<0>(&v49, quasar::EP_ACOUSTIC_EP_SCORE_STR[0]);
  LODWORD(v37.__r_.__value_.__l.__data_) = quasar::getType(v22, a2);
  std::to_string(&v37.__r_.__value_.__r.__words[1], a2);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  quasar::PTree::putChild(v48, &v49, &v37, 1);
  quasar::PTree::~PTree(&v37);
  if (SHIBYTE(v49.__end_) < 0)
  {
    operator delete(v49.__first_);
  }

  if (*a8 != a8[1])
  {
    std::string::basic_string[abi:ne200100]<0>(&v49, "sequence-of-words");
    __p[0] = " ";
    __p[1] = 1;
    quasar::join<std::vector<std::string>>(a8, __p);
    quasar::PTree::PTree(&v37, &v45);
    quasar::PTree::putChild(v48, &v49, &v37, 1);
    quasar::PTree::~PTree(&v37);
    if (SHIBYTE(v47) < 0)
    {
      operator delete(v45);
    }

    if (SHIBYTE(v49.__end_) < 0)
    {
      operator delete(v49.__first_);
    }
  }

  v23 = *a9;
  v24 = a9[1];
  if (*a9 != v24)
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    do
    {
      std::to_string(&v37, *v23);
      v25 = v46;
      if (v46 >= v47)
      {
        v27 = 0xAAAAAAAAAAAAAAABLL * ((v46 - v45) >> 3);
        v28 = v27 + 1;
        if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v47 - v45) >> 3) > v28)
        {
          v28 = 0x5555555555555556 * ((v47 - v45) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v47 - v45) >> 3) >= 0x555555555555555)
        {
          v29 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v29 = v28;
        }

        v49.__end_cap_.__value_ = &v45;
        if (v29)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v45, v29);
        }

        v30 = 8 * ((v46 - v45) >> 3);
        v31 = *&v37.__r_.__value_.__l.__data_;
        *(v30 + 16) = *(&v37.__r_.__value_.__l + 2);
        *v30 = v31;
        memset(&v37, 0, sizeof(v37));
        v32 = 24 * v27 + 24;
        v33 = (24 * v27 - (v46 - v45));
        memcpy((v30 - (v46 - v45)), v45, v46 - v45);
        v34 = v45;
        v35 = v47;
        v45 = v33;
        v46 = v32;
        v47 = 0;
        v49.__end_ = v34;
        v49.__end_cap_.__value_ = v35;
        v49.__first_ = v34;
        v49.__begin_ = v34;
        std::__split_buffer<std::string>::~__split_buffer(&v49);
        v46 = v32;
        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v26 = *&v37.__r_.__value_.__l.__data_;
        *(v46 + 2) = *(&v37.__r_.__value_.__l + 2);
        *v25 = v26;
        v46 = v25 + 24;
      }

      ++v23;
    }

    while (v23 != v24);
    std::string::basic_string[abi:ne200100]<0>(&v49, quasar::EP_PAUSE_COUNTS_STR[0]);
    v42[0] = " ";
    v42[1] = 1;
    quasar::join<std::vector<std::string>>(&v45, v42);
    a10 = a10;
    a11 = a11;
    quasar::PTree::PTree(&v37, __p);
    quasar::PTree::putChild(v48, &v49, &v37, 1);
    quasar::PTree::~PTree(&v37);
    if (v44 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v49.__end_) < 0)
    {
      operator delete(v49.__first_);
    }

    v37.__r_.__value_.__r.__words[0] = &v45;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v37);
  }

  std::string::basic_string[abi:ne200100]<0>(&v49, "num-input-label-words");
  LODWORD(v37.__r_.__value_.__l.__data_) = quasar::getType(a10);
  std::to_string(&v37.__r_.__value_.__r.__words[1], a10);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  quasar::PTree::putChild(v48, &v49, &v37, 1);
  quasar::PTree::~PTree(&v37);
  if (SHIBYTE(v49.__end_) < 0)
  {
    operator delete(v49.__first_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v49, "stream-conf");
  LODWORD(v37.__r_.__value_.__l.__data_) = quasar::getType(a11);
  std::to_string(&v37.__r_.__value_.__r.__words[1], a11);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  quasar::PTree::putChild(v48, &v49, &v37, 1);
  quasar::PTree::~PTree(&v37);
  if (SHIBYTE(v49.__end_) < 0)
  {
    operator delete(v49.__first_);
  }

  v36 = std::string::basic_string[abi:ne200100]<0>(&v49, quasar::EP_SILENCE_POSTERIOR_STR[0]);
  LODWORD(v37.__r_.__value_.__l.__data_) = quasar::getType(v36, a3);
  std::to_string(&v37.__r_.__value_.__r.__words[1], a3);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  quasar::PTree::putChild(v48, &v49, &v37, 1);
  quasar::PTree::~PTree(&v37);
  if (SHIBYTE(v49.__end_) < 0)
  {
    operator delete(v49.__first_);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v37);
  quasar::PTree::writeJson();
}

void sub_1B569954C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _BYTE *a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  quasar::PTree::~PTree(&a11);
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (*(v37 - 137) < 0)
  {
    operator delete(*(v37 - 160));
  }

  *&a11 = v37 - 248;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a11);
  quasar::PTree::~PTree((v37 - 224));
  if (a2 == 1)
  {
    v40 = __cxa_begin_catch(a1);
    if (quasar::gLogLevel >= 2)
    {
      v41 = v40;
      a26 = 0u;
      a27 = 0u;
      a24 = 0u;
      a25 = 0u;
      a22 = 0u;
      a23 = 0u;
      a20 = 0u;
      a21 = 0u;
      a18 = 0u;
      a19 = 0u;
      a16 = 0u;
      a17 = 0u;
      a14 = 0u;
      a15 = 0u;
      a12 = 0u;
      a13 = 0u;
      a11 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&a11);
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a11, "Writing to json string failed. ", 31);
      v43 = (*(*v41 + 16))(v41);
      v44 = strlen(v43);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v43, v44);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(&a11);
    }

    __cxa_end_catch();
    std::string::basic_string[abi:ne200100]<0>(a10, "");
    JUMPOUT(0x1B569951CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::BasicEndPointer::BasicEndPointer(uint64_t a1, _OWORD *a2, const quasar::EndPointDecoderConfig *a3)
{
  *a1 = &unk_1F2D27160;
  v5 = *a2;
  *(a1 + 24) = a2[1];
  *(a1 + 8) = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  *(a1 + 88) = a2[5];
  *(a1 + 72) = v8;
  *(a1 + 56) = v7;
  *(a1 + 40) = v6;
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  *(a1 + 152) = a2[9];
  *(a1 + 136) = v11;
  *(a1 + 120) = v10;
  *(a1 + 104) = v9;
  quasar::EndPointDecoderConfig::EndPointDecoderConfig((a1 + 168), a3);
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  v12 = 112;
  if (*(a2 + 144))
  {
    v12 = 156;
  }

  quasar::MovingAverage::init((a1 + 312), *(a2 + v12));
  return a1;
}

void sub_1B56998A0(_Unwind_Exception *a1)
{
  std::deque<int>::~deque[abi:ne200100](v2);
  quasar::EndPointDecoderConfig::~EndPointDecoderConfig((v1 + 168));
  _Unwind_Resume(a1);
}

BOOL quasar::BasicEndPointer::evalEndPoint(uint64_t a1, double a2, float a3, float a4, uint64_t a5, int a6, int a7, int a8)
{
  if (a3 >= 0.0 && (*(a1 + 176) & 1) != 0)
  {
    return *(a1 + 172) < a3;
  }

  quasar::MovingAverage::add((a1 + 312), a4);
  if (a6 <= 0)
  {
    v12 = 0;
    if (a7 < 1 || *(a1 + 128) > a8)
    {
      return v12;
    }
  }

  else if (a7 < 1)
  {
    return 0;
  }

  if (*(a1 + 152) == 1)
  {
    v13 = (expf((*(a1 + 156) * (*(a1 + 124) - a8)) / *(a1 + 124)) * *(a1 + 120));
    v14 = *(a1 + 164);
    if (v14 >= v13)
    {
      if (*(a1 + 160) <= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = *(a1 + 160);
      }
    }

    quasar::MovingAverage::resize(a1 + 312, v14);
  }

  else
  {
    v14 = *(a1 + 120);
    v15 = *(a1 + 124);
    if (v15 <= a8)
    {
      v14 = v14 * v15 / a8;
    }
  }

  v12 = v14 <= a7;
  if (*(a1 + 144) == 1 && quasar::MovingAverage::getAverage((a1 + 312)) < *(a1 + 148))
  {
    return 0;
  }

  return v12;
}

uint64_t quasar::BasicEndPointer::info(quasar::BasicEndPointer *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v9);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "BasicEndPointer inter-utt-sil=", 30);
  v3 = MEMORY[0x1B8C84C00](v2, *(this + 30));
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ", max-utt-length=", 17);
  v5 = MEMORY[0x1B8C84C00](v4, *(this + 31));
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ", max-utt-sil=", 14);
  MEMORY[0x1B8C84C00](v6, *(this + 32));
  std::stringbuf::str();
  v9[0] = *MEMORY[0x1E69E54D8];
  v7 = *(MEMORY[0x1E69E54D8] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v10 = v7;
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v14);
}

void sub_1B5699BC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void quasar::NnetEndPointer::initFeatureSeq(quasar::NnetEndPointer *this)
{
  v1 = *(this + 19);
  if (*(this + 20) != v1)
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = (v1 + v3);
      v6 = strlen(quasar::EP_NUM_OF_WORDS_STR[0]);
      v7 = v6;
      v8 = *(v1 + v3 + 23);
      if ((v8 & 0x80) != 0)
      {
        if (v6 != v5[1])
        {
          break;
        }

        if (v6 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v9 = *v5;
      }

      else
      {
        v9 = (v1 + v3);
        if (v7 != v8)
        {
          break;
        }
      }

      if (memcmp(v9, quasar::EP_NUM_OF_WORDS_STR[0], v7))
      {
        break;
      }

      LODWORD(v35[0]) = 0;
LABEL_85:
      std::vector<int>::push_back[abi:ne200100](this + 24, v35);
      ++v4;
      v1 = *(this + 19);
      v3 += 24;
      if (0xAAAAAAAAAAAAAAABLL * ((*(this + 20) - v1) >> 3) <= v4)
      {
        return;
      }
    }

    v10 = strlen(quasar::EP_NUM_TRAILING_SIL_STR[0]);
    if ((v8 & 0x80) != 0)
    {
      if (v10 != *(v1 + v3 + 8))
      {
        goto LABEL_18;
      }

      if (v10 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (memcmp(*v5, quasar::EP_NUM_TRAILING_SIL_STR[0], v10))
      {
LABEL_18:
        if (*(v1 + v3 + 8) != 10)
        {
          goto LABEL_24;
        }

        v11 = *v5;
LABEL_20:
        v12 = *v11;
        v13 = *(v11 + 4);
        if (v12 == 0x6D6172662D6D756ELL && v13 == 29541)
        {
          v25 = 2;
          goto LABEL_84;
        }

LABEL_24:
        v15 = strlen(quasar::EP_EOS_LIKELIHOOD_STR[0]);
        v16 = v15;
        if ((v8 & 0x80) != 0)
        {
          if (v15 != *(v1 + v3 + 8))
          {
            goto LABEL_31;
          }

          if (v15 == -1)
          {
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          v17 = *v5;
        }

        else
        {
          v17 = (v1 + v3);
          if (v16 != v8)
          {
            goto LABEL_31;
          }
        }

        if (!memcmp(v17, quasar::EP_EOS_LIKELIHOOD_STR[0], v16))
        {
          v25 = 3;
          goto LABEL_84;
        }

LABEL_31:
        v18 = strlen(quasar::EP_ACOUSTIC_EP_SCORE_STR[0]);
        v19 = v18;
        if ((v8 & 0x80) != 0)
        {
          if (v18 != *(v1 + v3 + 8))
          {
            goto LABEL_39;
          }

          if (v18 == -1)
          {
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          v20 = *v5;
        }

        else
        {
          v20 = (v1 + v3);
          if (v19 != v8)
          {
            goto LABEL_39;
          }
        }

        if (!memcmp(v20, quasar::EP_ACOUSTIC_EP_SCORE_STR[0], v19))
        {
          v25 = 4;
          goto LABEL_84;
        }

LABEL_39:
        v21 = strlen(quasar::EP_PAUSE_COUNTS_STR[0]);
        if ((v8 & 0x80) != 0)
        {
          v26 = v1 + v3;
          if (v21 != *(v1 + v3 + 8))
          {
            goto LABEL_63;
          }

          if (v21 == -1)
          {
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          if (memcmp(*v5, quasar::EP_PAUSE_COUNTS_STR[0], v21))
          {
LABEL_63:
            if (*(v26 + 8) != 21 || (**v5 == 0x75706E692D6D756ELL ? (v27 = *(*v5 + 8) == 0x2D6C6562616C2D74) : (v27 = 0), v27 ? (v28 = *(*v5 + 13) == 0x7364726F772D6C65) : (v28 = 0), !v28))
            {
              if (*(v26 + 8) != 11)
              {
LABEL_70:
                v32 = strlen(quasar::EP_SILENCE_POSTERIOR_STR[0]);
                if ((v8 & 0x80) != 0)
                {
                  if (v32 != *(v1 + v3 + 8))
                  {
                    goto LABEL_87;
                  }

                  if (v32 == -1)
                  {
                    std::string::__throw_out_of_range[abi:ne200100]();
                  }

                  v5 = *v5;
                }

                else if (v32 != v8)
                {
                  goto LABEL_87;
                }

                if (memcmp(v5, quasar::EP_SILENCE_POSTERIOR_STR[0], v32))
                {
LABEL_87:
                  memset(v35, 0, 272);
                  kaldi::KaldiWarnMessage::KaldiWarnMessage(v35);
                  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "Feature unknown, features allowed are: ", 39);
                  quasar::NnetEndPointer::allowedFeatures(&v34, v33);
                  std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v33, &v34);
                  std::string::~string(&v34);
                  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v35);
                }

                v25 = 8;
                goto LABEL_84;
              }

              v24 = *v5;
              goto LABEL_66;
            }

LABEL_83:
            v25 = 6;
            goto LABEL_84;
          }
        }

        else if (v21 != v8 || memcmp((v1 + v3), quasar::EP_PAUSE_COUNTS_STR[0], v21))
        {
          if (v8 != 21 || (*v5 == 0x75706E692D6D756ELL ? (v22 = v5[1] == 0x2D6C6562616C2D74) : (v22 = 0), v22 ? (v23 = *(v5 + 13) == 0x7364726F772D6C65) : (v23 = 0), !v23))
          {
            v24 = (v1 + v3);
            if (v8 != 11)
            {
              goto LABEL_70;
            }

LABEL_66:
            v29 = *v24;
            v30 = *(v24 + 3);
            if (v29 != 0x632D6D6165727473 || v30 != 0x666E6F632D6D6165)
            {
              goto LABEL_70;
            }

            v25 = 7;
LABEL_84:
            LODWORD(v35[0]) = v25;
            goto LABEL_85;
          }

          goto LABEL_83;
        }

        v25 = 5;
        goto LABEL_84;
      }
    }

    else if (v10 != v8 || memcmp((v1 + v3), quasar::EP_NUM_TRAILING_SIL_STR[0], v10))
    {
      v11 = (v1 + v3);
      if (v8 != 10)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    v25 = 1;
    goto LABEL_84;
  }
}

void sub_1B569A09C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&a16);
}

uint64_t quasar::NnetEndPointer::allowedFeatures(quasar::NnetEndPointer *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  v1 = strlen(quasar::EP_NUM_OF_WORDS_STR[0]);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, quasar::EP_NUM_OF_WORDS_STR[0], v1);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " ", 1);
  v4 = strlen(quasar::EP_NUM_TRAILING_SIL_STR[0]);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, quasar::EP_NUM_TRAILING_SIL_STR[0], v4);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " ", 1);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "num-frames", 10);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " ", 1);
  v9 = strlen(quasar::EP_EOS_LIKELIHOOD_STR[0]);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, quasar::EP_EOS_LIKELIHOOD_STR[0], v9);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " ", 1);
  v12 = strlen(quasar::EP_PAUSE_COUNTS_STR[0]);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, quasar::EP_PAUSE_COUNTS_STR[0], v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " ", 1);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "num-input-label-words", 21);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " ", 1);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "stream-conf", 11);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " ", 1);
  v19 = strlen(quasar::EP_SILENCE_POSTERIOR_STR[0]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, quasar::EP_SILENCE_POSTERIOR_STR[0], v19);
  std::stringbuf::str();
  v21 = *MEMORY[0x1E69E54E8];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v25);
}

void sub_1B569A378(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](v2 + 112);
  _Unwind_Resume(a1);
}

void quasar::NnetEndPointer::computeFeats(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, unsigned int **a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X8>, float a9@<S0>, float a10@<S1>)
{
  *a8 = 0;
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  v11 = *(a1 + 192);
  if (*(a1 + 200) != v11)
  {
    v18 = a7;
    v19 = a6;
    v20 = expf(-a9);
    v21 = 0;
    v22 = a4;
    do
    {
      v23 = *(v11 + 4 * v21);
      if (v23 > 4)
      {
        if (v23 <= 6)
        {
          if (v23 == 5)
          {
            v24 = *a5;
            v25 = a5[1];
            while (v24 != v25)
            {
              *v26 = *v24;
              std::vector<float>::push_back[abi:ne200100](a8, v26);
              ++v24;
            }
          }

          else
          {
            *v26 = v19;
            std::vector<float>::push_back[abi:ne200100](a8, v26);
          }

          goto LABEL_25;
        }

        if (v23 == 7)
        {
          *v26 = v18;
          std::vector<float>::push_back[abi:ne200100](a8, v26);
        }

        else
        {
          if (v23 != 8)
          {
LABEL_23:
            if (quasar::gLogLevel >= 5)
            {
              memset(v26, 0, sizeof(v26));
              kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Feature type unknown. Ignoring feature ..", 41);
              quasar::QuasarDebugMessage::~QuasarDebugMessage(v26);
            }

            goto LABEL_25;
          }

          *v26 = a10;
          std::vector<float>::push_back[abi:ne200100](a8, v26);
        }
      }

      else if (v23 > 1)
      {
        if (v23 == 2)
        {
          *v26 = v22;
          std::vector<float>::push_back[abi:ne200100](a8, v26);
        }

        else
        {
          if (v23 != 3)
          {
            goto LABEL_23;
          }

          *v26 = v20;
          std::vector<float>::push_back[abi:ne200100](a8, v26);
        }
      }

      else if (v23)
      {
        if (v23 != 1)
        {
          goto LABEL_23;
        }

        *v26 = a3;
        std::vector<float>::push_back[abi:ne200100](a8, v26);
      }

      else
      {
        *v26 = a2;
        std::vector<float>::push_back[abi:ne200100](a8, v26);
      }

LABEL_25:
      ++v21;
      v11 = *(a1 + 192);
    }

    while (v21 < (*(a1 + 200) - v11) >> 2);
  }
}

void sub_1B569A5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a9);
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::NnetEndPointer::NnetEndPointer(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = &unk_1F2D271B0;
  quasar::EndPointDecoderConfig::EndPointDecoderConfig((a1 + 8), a2);
  *(a1 + 152) = 0u;
  v8 = a1 + 152;
  *(a1 + 232) = 0u;
  *(a1 + 209) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = -1;
  *(a1 + 284) = a4;
  v9 = *(a3 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a3 + 8);
  }

  if (!v9)
  {
    v10 = *(a2 + 63);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a2 + 48);
    }

    if (!v10)
    {
      v50 = 0uLL;
      v51 = 0uLL;
      v48 = 0uLL;
      v49 = 0uLL;
      v46 = 0uLL;
      v47 = 0uLL;
      v44 = 0uLL;
      v45 = 0uLL;
      v42 = 0uLL;
      v43 = 0uLL;
      v40 = 0uLL;
      v41 = 0uLL;
      v38 = 0uLL;
      v39 = 0uLL;
      v36 = 0uLL;
      v37 = 0uLL;
      v35 = 0uLL;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v35);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "NNet model file for endpointing cannot be empty when use-nnet-endpointer is set", 79);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v35);
    }
  }

  v11 = *(a3 + 24);
  v12 = *(a3 + 32);
  if (v11 == v12)
  {
    v13 = *(a2 + 87);
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a2 + 72);
    }

    if (!v13)
    {
      v50 = 0uLL;
      v51 = 0uLL;
      v48 = 0uLL;
      v49 = 0uLL;
      v46 = 0uLL;
      v47 = 0uLL;
      v44 = 0uLL;
      v45 = 0uLL;
      v42 = 0uLL;
      v43 = 0uLL;
      v40 = 0uLL;
      v41 = 0uLL;
      v38 = 0uLL;
      v39 = 0uLL;
      v36 = 0uLL;
      v37 = 0uLL;
      v35 = 0uLL;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v35);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "Empty feature list (endpoint.feature-list). Specify features from: ", 67);
      quasar::NnetEndPointer::allowedFeatures(&v32, v26);
      if (v34 >= 0)
      {
        v27 = &v32;
      }

      else
      {
        v27 = v32;
      }

      if (v34 >= 0)
      {
        v28 = HIBYTE(v34);
      }

      else
      {
        v28 = v33;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v27, v28);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(v32);
      }

      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v35);
    }
  }

  v14 = *(a2 + 63);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a2 + 48);
  }

  if (v14)
  {
    if (v8 != a2 + 104)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 152), *(a2 + 104), *(a2 + 112), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 112) - *(a2 + 104)) >> 3));
    }

    v16 = *(a2 + 128);
    v15 = *(a2 + 136);
    if (v15)
    {
LABEL_17:
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    if (v8 != a3 + 24)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 152), v11, v12, 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3));
    }

    v16 = *(a3 + 48);
    v15 = *(a3 + 56);
    if (v15)
    {
      goto LABEL_17;
    }
  }

  v17 = *(a1 + 184);
  *(a1 + 176) = v16;
  *(a1 + 184) = v15;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  quasar::NnetEndPointer::initFeatureSeq(a1);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  std::vector<float>::push_back[abi:ne200100](&v32, (a2 + 4));
  std::vector<float>::push_back[abi:ne200100](&v32, a2);
  __p = 0;
  v30 = 0;
  v31 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v32, v33, (v33 - v32) >> 2);
  quasar::NnetEndPointer::prepareEPStatus(a1, &__p, v18);
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  v19 = *(a2 + 39);
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a2 + 24);
  }

  if (v19 && (kaldi::SplitStringToIntegers<int>(a2 + 16, ",", 0, (a1 + 256)) & 1) == 0)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v35);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "Invalid pause-threshold-list string ", 36);
    v23 = *(a2 + 39);
    if (v23 >= 0)
    {
      v24 = a2 + 16;
    }

    else
    {
      v24 = *(a2 + 16);
    }

    if (v23 >= 0)
    {
      v25 = *(a2 + 39);
    }

    else
    {
      v25 = *(a2 + 24);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v24, v25);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v35);
  }

  if (*(a2 + 96) == 1)
  {
    v20 = *(a2 + 39);
    if ((v20 & 0x80u) != 0)
    {
      v20 = *(a2 + 24);
    }

    if (!v20)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v35);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "pause-threshold-list should not be empty if pauses-as-BOOL is set", 65);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v35);
    }
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  return a1;
}

void sub_1B569AA68(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B569AA8CLL);
}

void sub_1B569AA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  v20 = *(v17 + 104);
  if (v20)
  {
    v16[33] = v20;
    operator delete(v20);
  }

  v21 = *v18;
  if (*v18)
  {
    v16[30] = v21;
    operator delete(v21);
  }

  v22 = v16[24];
  if (v22)
  {
    v16[25] = v22;
    operator delete(v22);
  }

  v23 = v16[23];
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  a15 = v17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  quasar::EndPointDecoderConfig::~EndPointDecoderConfig(v15);
  _Unwind_Resume(a1);
}

void sub_1B569AA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void **a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  v20 = *(v17 + 104);
  if (v20)
  {
    v16[33] = v20;
    operator delete(v20);
  }

  v21 = *v18;
  if (*v18)
  {
    v16[30] = v21;
    operator delete(v21);
  }

  v22 = v16[24];
  if (v22)
  {
    v16[25] = v22;
    operator delete(v22);
  }

  v23 = v16[23];
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  a15 = v17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  quasar::EndPointDecoderConfig::~EndPointDecoderConfig(v15);
  _Unwind_Resume(a1);
}

void quasar::NnetEndPointer::prepareEPStatus(void *a1, float **a2, double a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = 126 - 2 * __clz(v6 - v5);
  v8 = a1 + 29;
  a1[30] = a1[29];
  if (v6 == v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<float> &,float *,true>(v5, v6, &v25, v9, 1, a3);
  v10 = *a2;
  if (a2[1] != *a2)
  {
    v11 = 0;
    v12 = a1[30];
    v13 = 100;
    do
    {
      v14 = v13 & 0xFFFFFFFE | (LODWORD(v10[v11]) << 32);
      v15 = a1[31];
      if (v12 >= v15)
      {
        v16 = (v12 - *v8) >> 3;
        if ((v16 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v17 = v15 - *v8;
        v18 = v17 >> 2;
        if (v17 >> 2 <= (v16 + 1))
        {
          v18 = v16 + 1;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v18;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>((a1 + 29), v19);
        }

        v20 = (8 * v16);
        *v20 = v14;
        v12 = (8 * v16 + 8);
        v21 = a1[29];
        v22 = a1[30] - v21;
        v23 = v20 - v22;
        memcpy(v20 - v22, v21, v22);
        v24 = a1[29];
        a1[29] = v23;
        a1[30] = v12;
        a1[31] = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v12++ = v14;
      }

      a1[30] = v12;
      ++v11;
      v10 = *a2;
      v13 -= 10;
    }

    while (v11 < a2[1] - *a2);
  }
}

uint64_t quasar::NnetEndPointer::evalEndPoint(uint64_t a1, _DWORD *a2, int a3, int a4, int a5, void *a6, unsigned int **a7, int a8, float a9, double a10, float a11, int a12, int a13, _DWORD *a14)
{
  *(a1 + 224) = 0;
  if (a6[1] == *a6)
  {
    return 0;
  }

  if (a13 * a4 >= *(a1 + 100))
  {
    return 1;
  }

  quasar::NnetEndPointer::computeFeats(a1, a3, a4, a5, a7, a8, a12, &v63, a9, a11);
  v19 = v63;
  v18 = v64;
  if (kaldi::nnet1::Nnet::InputDim(*(a1 + 176)) != (v18 - v19) >> 2)
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
    v46 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v46);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "Feature dim=", 12);
    v38 = MEMORY[0x1B8C84C30](v37, (v64 - v63) >> 2);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " does not match model dim=", 26);
    v40 = kaldi::nnet1::Nnet::InputDim(*(a1 + 176));
    MEMORY[0x1B8C84C00](v39, v40);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v46);
  }

  kaldi::Matrix<float>::Matrix(v45, 1, (v64 - v63) >> 2, 0, 0);
  v20 = v63;
  if (v64 != v63)
  {
    v21 = 0;
    v22 = (v64 - v63) >> 2;
    v23 = v45[0];
    if (v22 <= 1)
    {
      v22 = 1;
    }

    do
    {
      *(v23 + 4 * v21) = v20[v21];
      ++v21;
    }

    while (v22 != v21);
  }

  v42 = 0u;
  v43 = 0u;
  v41 = &unk_1F2D0EE38;
  v44 = 0;
  v24 = *(a1 + 176);
  kaldi::CuMatrix<float>::CuMatrix<float>(&v46, v45, 111, 0);
  kaldi::nnet1::Nnet::Feedforward(v24, &v46, &v41, 0xFFFFFFFF, 0);
  kaldi::CuMatrix<float>::~CuMatrix(&v46);
  if (HIDWORD(v42) == 1 || DWORD2(v42) == 1)
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
      v46 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v46);
      kaldi::MatrixBase<float>::Write(v45, &v46, 0, 0);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, ", ep-nnet-value=", 16);
      std::ostream::operator<<();
      quasar::QuasarTraceMessage::~QuasarTraceMessage(&v46);
    }

    v27 = *v42;
    *a2 = *v42;
    v28 = *(a1 + 232);
    v25 = *(a1 + 240) - v28;
    if (v25)
    {
      v25 >>= 3;
      if (v25 <= 1)
      {
        v25 = 1;
      }

      v29 = (v28 + 4);
      while (*v29 == -2147500000.0 || v27 < *v29)
      {
        v29 += 2;
        if (!--v25)
        {
          goto LABEL_30;
        }
      }

      *&v25 = *(v29 - 1);
      if (v25 == 100)
      {
        v31 = 0;
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (quasar::gLogLevel >= 1)
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
      v46 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v46);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "Nnet output for endpointing is incorrect", 40);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v46);
    }

    LODWORD(v25) = 0;
  }

LABEL_30:
  v31 = v25 > *(a1 + 220);
LABEL_31:
  *(a1 + 224) = v31;
  *(a1 + 220) = v25;
  *(a1 + 216) = a9;
  v32 = *(a1 + 280);
  if (v32 < 0)
  {
    *a14 = v32;
    goto LABEL_39;
  }

  v33 = *(a1 + 108) / a13 + v32;
  *a14 = v32;
  if (v33 < 1 || v33 > a5)
  {
LABEL_39:
    v35 = **(a1 + 232);
    v26 = (*(a1 + 284) ^ 1u) & (v25 == v35);
    if (((*(a1 + 284) ^ 1) & 1) == 0 && v25 == v35)
    {
      v26 = 0;
      if (*(a1 + 280) == -1)
      {
        *(a1 + 280) = a5;
      }
    }

    goto LABEL_43;
  }

  v26 = 1;
LABEL_43:
  kaldi::CuMatrix<float>::~CuMatrix(&v41);
  kaldi::Matrix<float>::~Matrix(v45);
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  return v26;
}

void sub_1B569B0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  JUMPOUT(0x1B569B0C8);
}

void sub_1B569B0C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  kaldi::Matrix<float>::~Matrix(va1);
  v4 = *(v2 - 104);
  if (v4)
  {
    *(v2 - 96) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::NnetEndPointer::info(quasar::NnetEndPointer *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v4, "NnetEndPointer endpoint-threshold=", 34);
  std::ostream::operator<<();
  std::stringbuf::str();
  v3[0] = *MEMORY[0x1E69E54D8];
  v1 = *(MEMORY[0x1E69E54D8] + 72);
  *(v3 + *(v3[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v4 = v1;
  v5 = MEMORY[0x1E69E5548] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v6);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v8);
}

void sub_1B569B29C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void quasar::NnetEndPointer::computePauseCounts(uint64_t a1, unsigned int **a2, std::vector<unsigned int> *this)
{
  this->__end_ = this->__begin_;
  std::vector<int>::resize(this, (*(a1 + 264) - *(a1 + 256)) >> 2);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v9 = *(a1 + 256);
    v8 = *(a1 + 264);
    v10 = v8 - v9;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    do
    {
      if (v8 != v9)
      {
        begin = this->__begin_;
        v12 = v10;
        v13 = v9;
        do
        {
          v14 = *v13++;
          if (*v6 >= v14)
          {
            if (*(a1 + 104))
            {
              v15 = 1;
            }

            else
            {
              v15 = *begin + 1;
            }

            *begin = v15;
          }

          ++begin;
          --v12;
        }

        while (v12);
      }

      ++v6;
    }

    while (v6 != v7);
  }
}

void quasar::BasicEndPointer::~BasicEndPointer(quasar::BasicEndPointer *this)
{
  *this = &unk_1F2D27160;
  std::deque<int>::~deque[abi:ne200100](this + 41);
  v2 = *(this + 38);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = (this + 272);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }
}

{
  *this = &unk_1F2D27160;
  std::deque<int>::~deque[abi:ne200100](this + 41);
  v2 = *(this + 38);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = (this + 272);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  MEMORY[0x1B8C85350](this, 0x10B3C407EB90683);
}

void quasar::NnetEndPointer::~NnetEndPointer(quasar::NnetEndPointer *this)
{
  quasar::NnetEndPointer::~NnetEndPointer(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D271B0;
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 33) = v2;
    operator delete(v2);
  }

  v3 = *(this + 29);
  if (v3)
  {
    *(this + 30) = v3;
    operator delete(v3);
  }

  v4 = *(this + 24);
  if (v4)
  {
    *(this + 25) = v4;
    operator delete(v4);
  }

  v5 = *(this + 23);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v7 = (this + 152);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  v6 = *(this + 18);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = (this + 112);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
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
}

quasar::EndPointDecoderConfig *quasar::EndPointDecoderConfig::EndPointDecoderConfig(quasar::EndPointDecoderConfig *this, const quasar::EndPointDecoderConfig *a2)
{
  v4 = *a2;
  *(this + 8) = *(a2 + 8);
  *this = v4;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((this + 16), *(a2 + 2), *(a2 + 3));
  }

  else
  {
    v5 = *(a2 + 1);
    *(this + 4) = *(a2 + 4);
    *(this + 1) = v5;
  }

  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v6 = *(a2 + 40);
    *(this + 7) = *(a2 + 7);
    *(this + 40) = v6;
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((this + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v7 = *(a2 + 4);
    *(this + 10) = *(a2 + 10);
    *(this + 4) = v7;
  }

  v8 = *(a2 + 88);
  *(this + 13) = 0;
  *(this + 88) = v8;
  *(this + 14) = 0;
  *(this + 15) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 104, *(a2 + 13), *(a2 + 14), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 14) - *(a2 + 13)) >> 3));
  v9 = *(a2 + 17);
  *(this + 16) = *(a2 + 16);
  *(this + 17) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void sub_1B569B610(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

float *std::__introsort<std::_ClassicAlgPolicy,std::greater<float> &,float *,true>(float *result, float *a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  v9 = result;
LABEL_2:
  v10 = v9;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v9 = v10;
    v12 = v11;
    v13 = a2 - v10;
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:
          v56 = v10[1];
          v57 = *(a2 - 1);
          if (v56 > v57)
          {
            v58 = *(v10 + 1);
          }

          else
          {
            v58 = *(a2 - 1);
          }

          if (v56 > v57)
          {
            v56 = *(a2 - 1);
          }

          *(a2 - 1) = v56;
          *(v10 + 1) = v58;
          v59 = *(a2 - 1);
          if (v59 > *v10)
          {
            v60 = *(a2 - 1);
          }

          else
          {
            v60 = *v10;
          }

          if (v59 > *v10)
          {
            v59 = *v10;
          }

          *(a2 - 1) = v59;
          v62 = *v10;
          v61 = v10[1];
          if (v60 <= v61)
          {
            v62 = v10[1];
            v61 = v60;
          }

          *v10 = v62;
          v10[1] = v61;
          return result;
        case 4:
          v86 = v10[1];
          v85 = v10[2];
          if (*v10 > v85)
          {
            v87 = *v10;
          }

          else
          {
            v87 = v10[2];
          }

          if (*v10 <= v85)
          {
            v85 = *v10;
          }

          v10[2] = v85;
          *v10 = v87;
          v88 = *(a2 - 1);
          if (v86 > v88)
          {
            v89 = v86;
          }

          else
          {
            v89 = *(a2 - 1);
          }

          if (v86 <= v88)
          {
            v88 = v86;
          }

          *(a2 - 1) = v88;
          v90 = *v10;
          if (*v10 > v89)
          {
            v91 = *v10;
          }

          else
          {
            v91 = v89;
          }

          if (*v10 > v89)
          {
            v90 = v89;
          }

          *v10 = v91;
          v10[1] = v90;
          v92 = v10[2];
          v93 = *(a2 - 1);
          if (v92 > v93)
          {
            v94 = v10[2];
          }

          else
          {
            v94 = *(a2 - 1);
          }

          if (v92 > v93)
          {
            v92 = *(a2 - 1);
          }

          *(a2 - 1) = v92;
          v95 = v10[1];
          if (v95 > v94)
          {
            v96 = v10[1];
          }

          else
          {
            v96 = v94;
          }

          if (v95 > v94)
          {
            v95 = v94;
          }

          v10[1] = v96;
          v10[2] = v95;
          return result;
        case 5:
          v63 = *v10;
          v64 = v10[1];
          if (*v10 > v64)
          {
            v65 = *v10;
          }

          else
          {
            v65 = v10[1];
          }

          if (*v10 > v64)
          {
            v63 = v10[1];
          }

          *v10 = v65;
          v10[1] = v63;
          v66 = v10[3];
          v67 = *(a2 - 1);
          if (v66 > v67)
          {
            v68 = *(v10 + 3);
          }

          else
          {
            v68 = *(a2 - 1);
          }

          if (v66 > v67)
          {
            v66 = *(a2 - 1);
          }

          *(a2 - 1) = v66;
          *(v10 + 3) = v68;
          v69 = *(a2 - 1);
          v70 = v10[2];
          if (v69 > v70)
          {
            v71 = *(a2 - 1);
          }

          else
          {
            v71 = v10[2];
          }

          if (v69 > v70)
          {
            v69 = v10[2];
          }

          *(a2 - 1) = v69;
          v73 = *(v10 + 2);
          v72 = v10[3];
          v74 = v10[1];
          if (v71 <= v72)
          {
            v73 = *(v10 + 3);
            v72 = v71;
          }

          *(v10 + 2) = v73;
          v10[3] = v72;
          v75 = *(a2 - 1);
          if (v74 > v75)
          {
            v76 = v74;
          }

          else
          {
            v76 = *(a2 - 1);
          }

          if (v74 <= v75)
          {
            v75 = v74;
          }

          *(a2 - 1) = v75;
          v77 = *v10;
          v79 = v10[2];
          v78 = v10[3];
          if (v78 > *v10)
          {
            v80 = v10[3];
          }

          else
          {
            v80 = *v10;
          }

          if (v78 > *v10)
          {
            v78 = *v10;
          }

          if (v80 <= v79)
          {
            v77 = v10[2];
            v79 = v80;
          }

          if (v78 > v76)
          {
            v81 = v78;
          }

          else
          {
            v81 = v76;
          }

          if (v78 > v76)
          {
            v78 = v76;
          }

          if (v81 <= v79)
          {
            v76 = v79;
          }

          *v10 = v77;
          v10[1] = v76;
          if (v81 > v79)
          {
            v82 = v79;
          }

          else
          {
            v82 = v81;
          }

          v10[2] = v82;
          v10[3] = v78;
          return result;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v83 = *(a2 - 1);
        v84 = *v10;
        if (v83 > *v10)
        {
          *v10 = v83;
          *(a2 - 1) = v84;
        }

        return result;
      }
    }

    if (v13 <= 23)
    {
      break;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *,float *>(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = *(a2 - 1);
    if (v13 < 0x81)
    {
      if (*v10 > v15)
      {
        v47 = *v10;
      }

      else
      {
        v47 = *(a2 - 1);
      }

      if (*v10 <= v15)
      {
        v15 = *v10;
      }

      *(a2 - 1) = v15;
      *v10 = v47;
      v48 = *(a2 - 1);
      v49 = v10[v14];
      if (v48 > v49)
      {
        v50 = *(a2 - 1);
      }

      else
      {
        v50 = v10[v14];
      }

      if (v48 > v49)
      {
        v48 = v10[v14];
      }

      *(a2 - 1) = v48;
      v51 = *v10;
      v52 = v50 <= *v10;
      if (v50 > *v10)
      {
        v51 = v10[v14];
      }

      v10[v14] = v51;
      *&a6 = *v10;
      if (v52)
      {
        *&a6 = v50;
      }

      *v10 = *&a6;
      if (a5)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v16 = &v10[v14];
      if (*v16 > v15)
      {
        v17 = *v16;
      }

      else
      {
        v17 = *(a2 - 1);
      }

      if (*v16 <= v15)
      {
        v15 = *v16;
      }

      *(a2 - 1) = v15;
      *v16 = v17;
      v18 = *(a2 - 1);
      if (v18 > *v10)
      {
        v19 = *(a2 - 1);
      }

      else
      {
        v19 = *v10;
      }

      if (v18 > *v10)
      {
        v18 = *v10;
      }

      *(a2 - 1) = v18;
      v20 = *v16;
      v21 = v19 <= *v16;
      if (v19 > *v16)
      {
        v20 = *v10;
      }

      *v10 = v20;
      v23 = *(v16 - 1);
      v22 = *v16;
      if (v21)
      {
        v22 = v19;
      }

      *v16 = v22;
      v24 = *(a2 - 2);
      if (v23 > v24)
      {
        v25 = v23;
      }

      else
      {
        v25 = *(a2 - 2);
      }

      if (v23 <= v24)
      {
        v24 = v23;
      }

      *(a2 - 2) = v24;
      *(v16 - 1) = v25;
      v26 = *(a2 - 2);
      v27 = v10[1];
      if (v26 > v27)
      {
        v28 = *(a2 - 2);
      }

      else
      {
        v28 = v10[1];
      }

      if (v26 > v27)
      {
        v26 = v10[1];
      }

      *(a2 - 2) = v26;
      v29 = *(v16 - 1);
      v30 = v28 <= v29;
      if (v28 > v29)
      {
        v29 = v10[1];
      }

      v10[1] = v29;
      v31 = *(v16 - 1);
      if (v30)
      {
        v31 = v28;
      }

      *(v16 - 1) = v31;
      v32 = v16[1];
      v33 = *(a2 - 3);
      if (v32 > v33)
      {
        v34 = *(v16 + 1);
      }

      else
      {
        v34 = *(a2 - 3);
      }

      if (v32 > v33)
      {
        v32 = *(a2 - 3);
      }

      *(a2 - 3) = v32;
      *(v16 + 1) = v34;
      v35 = *(a2 - 3);
      v36 = v10[2];
      if (v35 > v36)
      {
        v37 = *(a2 - 3);
      }

      else
      {
        v37 = v10[2];
      }

      if (v35 > v36)
      {
        v35 = v10[2];
      }

      *(a2 - 3) = v35;
      v38 = v16[1];
      v39 = v37 <= v38;
      if (v37 > v38)
      {
        v38 = v10[2];
      }

      v10[2] = v38;
      v41 = *v16;
      v40 = v16[1];
      if (v39)
      {
        v40 = v37;
      }

      v42 = *(v16 - 1);
      if (v41 > v40)
      {
        v43 = *v16;
      }

      else
      {
        v43 = v40;
      }

      if (v41 <= v40)
      {
        v40 = *v16;
      }

      if (v40 > v42)
      {
        v44 = v40;
      }

      else
      {
        v44 = *(v16 - 1);
      }

      if (v40 > v42)
      {
        v45 = *(v16 - 1);
      }

      else
      {
        v45 = v40;
      }

      if (v44 > v43)
      {
        v46 = *(v16 - 1);
      }

      else
      {
        v46 = v43;
      }

      if (v44 > v43)
      {
        v44 = v43;
      }

      *(v16 - 1) = v46;
      *v16 = v44;
      v16[1] = v45;
      *&a6 = *v10;
      *v10 = v44;
      *v16 = *&a6;
      if (a5)
      {
        goto LABEL_90;
      }
    }

    *&a6 = *(v10 - 1);
    if (*&a6 <= *v10)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::greater<float> &>(v10, a2);
      v10 = result;
      goto LABEL_95;
    }

LABEL_90:
    v53 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::greater<float> &>(v10, a2, a6);
    if ((v54 & 1) == 0)
    {
      goto LABEL_93;
    }

    v55 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(v10, v53);
    v10 = v53 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(v53 + 1, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v53;
      if (v55)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v55)
    {
LABEL_93:
      result = std::__introsort<std::_ClassicAlgPolicy,std::greater<float> &,float *,true>(v9, v53, a3, -v12, a5 & 1);
      v10 = v53 + 1;
LABEL_95:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  v97 = v10 + 1;
  v99 = v10 == a2 || v97 == a2;
  if (a5)
  {
    if (!v99)
    {
      v100 = 0;
      v101 = v10;
      do
      {
        v103 = *v101;
        v102 = v101[1];
        v101 = v97;
        if (v102 > v103)
        {
          v104 = v100;
          while (1)
          {
            *(v10 + v104 + 4) = v103;
            if (!v104)
            {
              break;
            }

            v103 = *(v10 + v104 - 4);
            v104 -= 4;
            if (v102 <= v103)
            {
              v105 = (v10 + v104 + 4);
              goto LABEL_194;
            }
          }

          v105 = v10;
LABEL_194:
          *v105 = v102;
        }

        v97 = v101 + 1;
        v100 += 4;
      }

      while (v101 + 1 != a2);
    }
  }

  else if (!v99)
  {
    do
    {
      v107 = *v9;
      v106 = v9[1];
      v9 = v97;
      if (v106 > v107)
      {
        v108 = v97;
        do
        {
          *v108 = v107;
          v107 = *(v108 - 2);
          --v108;
        }

        while (v106 > v107);
        *v108 = v106;
      }

      ++v97;
    }

    while (v9 + 1 != a2);
  }

  return result;
}

float *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::greater<float> &>(float *a1, float *a2)
{
  v2 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 > v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 <= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 > v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

float *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::greater<float> &>(float *a1, float *a2, double a3)
{
  *&a3 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (*&a3 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (*&a3 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (*&a3 > v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 505)
  {
    v11 = 0;
    v41 = v10 >> 2;
    v39 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_lane_s32(*&a3, 0);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(4uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_1B5AE0060;
      v18 = xmmword_1B5AE0050;
      v19 = 0uLL;
      do
      {
        v20 = vmvnq_s8(vcgtq_f32(*(v7 + v12), v13));
        v21.i64[0] = v20.u32[2];
        v21.i64[1] = v20.u32[3];
        v22 = vandq_s8(v21, v14);
        v21.i64[0] = v20.u32[0];
        v21.i64[1] = v20.u32[1];
        v19 = vorrq_s8(vshlq_u64(v22, v18), v19);
        v16 = vorrq_s8(vshlq_u64(vandq_s8(v21, v14), v17), v16);
        v18 = vaddq_s64(v18, v15);
        v17 = vaddq_s64(v17, v15);
        v12 += 16;
      }

      while (v12 != 256);
      v23 = vorrq_s8(v16, v19);
      v12 = vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v24 = 0uLL;
    v25 = 0x3FFFFFFFFFFFFFFDLL;
    v26 = xmmword_1B5AE0060;
    v27 = xmmword_1B5AE0050;
    v28 = 0uLL;
    do
    {
      v29 = vrev64q_s32(*&v9[v25]);
      v30 = vcgtq_f32(vextq_s8(v29, v29, 8uLL), v13);
      v31.i64[0] = v30.u32[2];
      v31.i64[1] = v30.u32[3];
      v32 = vdupq_n_s64(1uLL);
      v33 = vandq_s8(v31, v32);
      v31.i64[0] = v30.u32[0];
      v31.i64[1] = v30.u32[1];
      v28 = vorrq_s8(vshlq_u64(v33, v27), v28);
      v24 = vorrq_s8(vshlq_u64(vandq_s8(v31, v32), v26), v24);
      v34 = vdupq_n_s64(4uLL);
      v27 = vaddq_s64(v27, v34);
      v26 = vaddq_s64(v26, v34);
      v25 -= 4;
    }

    while (v25 != -67);
    v35 = vorrq_s8(v24, v28);
    v11 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v36 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v37 = &v9[-__clz(__rbit64(v11))];
        v38 = v7[v36];
        v7[v36] = *v37;
        *v37 = v38;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v39 = v11 == 0;
    if (v11)
    {
      v40 = 0;
    }

    else
    {
      v40 = -256;
    }

    v9 = (v9 + v40);
  }

  while (v9 - v7 > 504);
  v41 = v9 - v7;
  if (!(v12 | v11))
  {
LABEL_36:
    v45 = v41 + 1;
    v42 = (v41 + 1) / 2;
    v43 = v45 - v45 / 2;
    goto LABEL_37;
  }

  v42 = v41 - 63;
  v43 = 64;
  v44 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v42 >= 1)
    {
      v47 = 0;
      v11 = 0;
      v48 = v9;
      do
      {
        v49 = *v48--;
        v11 |= (v49 > *&a3) << v47++;
      }

      while (v42 != v47);
      goto LABEL_46;
    }

    if (v12)
    {
      v57 = 0;
    }

    else
    {
      v57 = v44;
    }

    v53 = &v7[v57];
LABEL_62:
    if (v12)
    {
      v9 -= v42;
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_37:
  if (v42 < 1)
  {
    v12 = 0;
  }

  else
  {
    v46 = 0;
    v12 = 0;
    do
    {
      v12 |= (v7[v46] <= *&a3) << v46;
      ++v46;
    }

    while (v42 != v46);
  }

  v44 = v42;
  v42 = v43;
  if (v39)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v50 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v51 = &v9[-__clz(__rbit64(v11))];
      v52 = v7[v50];
      v7[v50] = *v51;
      *v51 = v52;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v44 = 0;
  }

  v53 = &v7[v44];
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v12)
  {
    do
    {
LABEL_64:
      v58 = __clz(v12) ^ 0x3F;
      v59 = &v53[v58];
      if (v9 != v59)
      {
        v60 = *v59;
        *v59 = *v9;
        *v9 = v60;
      }

      v12 &= ~(-1 << v58);
      --v9;
    }

    while (v12);
    v53 = v9 + 1;
  }

  else
  {
    do
    {
      v54 = __clz(v11) ^ 0x3F;
      v55 = &v9[-v54];
      if (v53 != v55)
      {
        v56 = *v55;
        *v55 = *v53;
        *v53 = v56;
      }

      v11 &= ~(-1 << v54);
      ++v53;
    }

    while (v11);
  }

LABEL_68:
  v61 = v53 - 1;
  if (v53 - 1 != a1)
  {
    *a1 = *v61;
  }

  *v61 = *&a3;
  return v53 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(float *a1, float *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 > v26)
        {
          v27 = *(a1 + 1);
        }

        else
        {
          v27 = *(a2 - 1);
        }

        if (v25 > v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        *(a1 + 1) = v27;
        v28 = *(a2 - 1);
        if (v28 > *a1)
        {
          v29 = *(a2 - 1);
        }

        else
        {
          v29 = *a1;
        }

        if (v28 > *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = a1[1];
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 > v47)
        {
          v49 = *a1;
        }

        else
        {
          v49 = a1[2];
        }

        if (*a1 <= v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 > v50)
        {
          v51 = v48;
        }

        else
        {
          v51 = *(a2 - 1);
        }

        if (v48 <= v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 > v51)
        {
          v53 = *a1;
        }

        else
        {
          v53 = v51;
        }

        if (*a1 > v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 > v55)
        {
          v56 = a1[2];
        }

        else
        {
          v56 = *(a2 - 1);
        }

        if (v54 > v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 > v56)
        {
          v58 = a1[1];
        }

        else
        {
          v58 = v56;
        }

        if (v57 > v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 > v6)
        {
          v7 = *a1;
        }

        else
        {
          v7 = a1[1];
        }

        if (*a1 > v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 > v9)
        {
          v10 = *(a1 + 3);
        }

        else
        {
          v10 = *(a2 - 1);
        }

        if (v8 > v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        *(a1 + 3) = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 > v12)
        {
          v13 = *(a2 - 1);
        }

        else
        {
          v13 = a1[2];
        }

        if (v11 > v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = *(a1 + 2);
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = *(a1 + 3);
          v14 = v13;
        }

        *(a1 + 2) = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 > v17)
        {
          v18 = v16;
        }

        else
        {
          v18 = *(a2 - 1);
        }

        if (v16 <= v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 > *a1)
        {
          v22 = a1[3];
        }

        else
        {
          v22 = *a1;
        }

        if (v20 > *a1)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = a1[2];
          v21 = v22;
        }

        if (v20 > v18)
        {
          v23 = v20;
        }

        else
        {
          v23 = v18;
        }

        if (v20 > v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 > v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 > *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v32 = a1 + 2;
  v33 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 > v33)
  {
    v36 = a1[1];
  }

  else
  {
    v36 = a1[2];
  }

  if (v34 <= v33)
  {
    v33 = a1[1];
  }

  if (v33 > v35)
  {
    v37 = v33;
  }

  else
  {
    v37 = *a1;
  }

  if (v33 > v35)
  {
    v33 = *a1;
  }

  *v32 = v33;
  if (v37 > v36)
  {
    v38 = v35;
  }

  else
  {
    v38 = v36;
  }

  if (v37 > v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 12; ; i += 4)
  {
    v42 = *v39;
    v43 = *v32;
    if (*v39 > *v32)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v43 = *(a1 + v44 - 8);
        v44 -= 4;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_85;
        }
      }

      v46 = a1;
LABEL_85:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v32 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}