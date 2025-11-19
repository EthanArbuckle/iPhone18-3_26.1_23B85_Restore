void fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D1A8B8;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

{
  *a1 = &unk_1F2D1A8B8;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D1A8F8;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B5536434(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D1A8F8;
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

void *std::deque<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>> *>>::push_back(void *result, void *a2)
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
    result = std::deque<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>> *>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>> *>>::__add_back_capacity(void *a1)
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

void sub_1B5536740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::One()
{
  {
    operator new();
  }

  return fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::One(void)::one;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::One()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::One(void)::one;
}

void sub_1B5536920(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  MEMORY[0x1B8C85350](v1, 0x1020C4067685F46);
  _Unwind_Resume(a1);
}

uint64_t fst::StringWeight<int,(fst::StringType)0>::One()
{
  {
    operator new();
  }

  return fst::StringWeight<int,(fst::StringType)0>::One(void)::one;
}

void fst::ArcBuffer<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetFromFst<fst::Fst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  (*(*a2 + 136))(a2, a3, &v26);
  if (!v26 && (a4 & 1) == 0)
  {
    v10 = v27 + 56 * v28;
    *(a1 + 16) = v27;
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

    v25 = 0x4000;
    if (v13 > 0x4000)
    {
      v25 = v13;
    }

    *(a1 + 8) = v25;
    v15 = malloc_type_malloc(56 * v25, 0x1020040540EBC04uLL);
    *a1 = v15;
    *(a1 + 16) = v15;
    v14 = v15;
  }

  else
  {
    v14 = *(a1 + 16);
    v15 = *a1;
  }

  *(a1 + 24) = &v14[7 * v13];
  v16 = v26;
  v17 = v27;
  v19 = v28;
  v18 = v29;
  if (v29)
  {
    ++*v29;
  }

  v20 = 0;
LABEL_13:
  v15 += 7;
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
    v24 = v15 - 7;
    *v24 = *v23;
    *(v24 + 2) = *(v23 + 8);
    if (v15 - 7 != v23)
    {
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v15 - 5, *(v23 + 24), v23 + 16);
    }

    *(v15 - 4) = *(v23 + 40);
    *(v15 - 2) = *(v23 + 48);
    if (!v16)
    {
      ++v20;
      goto LABEL_13;
    }

    v15 += 7;
    (*(*v16 + 40))(v16);
  }

  v23 = v17 + 56 * v20;
  if (v20 < v19)
  {
    goto LABEL_18;
  }

  if (v18)
  {
    --*v18;
  }
}

void sub_1B5536CAC(_Unwind_Exception *exception_object)
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

uint64_t fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>::WriteFst<fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>>(void *a1, void *a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  *v32 = 0u;
  *v33 = 0u;
  v6 = -1;
  v37 = 0;
  v38 = 0;
  v36 = -1;
  v36 = (*(*a1 + 24))(a1);
  v37 = -1;
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v6 = 0;
LABEL_3:
    v7 = 0;
    v37 = fst::CountStates<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>(a1);
    goto LABEL_6;
  }

  v8 = a2 + *(*a2 - 24);
  if ((v8[32] & 5) == 0)
  {
    (*(**(v8 + 5) + 32))(__p);
    v6 = v40;
    if (v40 != -1)
    {
      goto LABEL_3;
    }
  }

  v7 = 1;
LABEL_6:
  v9 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::WriteFstHeader(a1, a2, a3, 2, __p, v9 | 3, v31);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v28 = v6;
  v10 = *(a1[1] + 72) - *(a1[1] + 64);
  if ((v10 >> 3) < 1)
  {
    v12 = 0;
  }

  else
  {
    v29 = v7;
    v11 = 0;
    v12 = (v10 >> 3) & 0x7FFFFFFF;
    do
    {
      (*(*a1 + 32))(__p, a1, v11);
      fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Write(__p);
      std::__list_imp<char *>::clear(&__p[0].__r_.__value_.__l.__size_);
      __p[0].__r_.__value_.__r.__words[0] = (*(*a1 + 40))(a1, v11);
      std::ostream::write();
      v13 = *(*(a1[1] + 64) + 8 * v11);
      v15 = *(v13 + 56);
      v14 = *(v13 + 64);
      if (v14 == v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = *(v13 + 56);
      }

      if (v14 != v15)
      {
        if ((0x6DB6DB6DB6DB6DB7 * ((v14 - v15) >> 3)) <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = 0x6DB6DB6DB6DB6DB7 * ((v14 - v15) >> 3);
        }

        do
        {
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *v16;
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v16[1];
          std::ostream::write();
          fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Write(v16 + 2);
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v16[12];
          std::ostream::write();
          v16 += 14;
          --v17;
        }

        while (v17);
      }

      ++v11;
    }

    while (v11 != v12);
    v7 = v29;
  }

  std::ostream::flush();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v18 = fst::LogMessage::LogMessage(&v30, __p);
    v19 = fst::cerr(v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "VectorFst::Write: write failed: ", 32);
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
LABEL_29:
    fst::LogMessage::~LogMessage(&v30);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    updated = 0;
    goto LABEL_32;
  }

  if (!v7)
  {
    if (v37 == v12)
    {
      updated = 1;
      goto LABEL_32;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v26 = fst::LogMessage::LogMessage(&v30, __p);
    v27 = fst::cerr(v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Inconsistent number of states observed during write", 51);
    goto LABEL_29;
  }

  v37 = v12;
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  updated = fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::UpdateFstHeader(a1, a2, a3, 2, __p, v9 | 3, v31, v28);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

LABEL_32:
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[1]);
  }

  if (SHIBYTE(v33[0]) < 0)
  {
    operator delete(v32[0]);
  }

  return updated;
}

void sub_1B55371B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a15);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::WriteFstHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::Type();
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

uint64_t fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::UpdateFstHeader(uint64_t a1, void *a2, uint64_t a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::WriteFstHeader(a1, a2, a3, a4, a5, a6, a7);
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

uint64_t fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::Type()
{
  {
    operator new();
  }

  return fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::Type(void)::type;
}

uint64_t fst::Fst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::WriteFile(fst *a1, uint64_t a2)
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

void *fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>::SetFinal(void *a1, int a2, int *a3)
{
  v6 = *(a1[8] + 8 * a2);
  v18 = *v6;
  std::list<int>::list(v19, (v6 + 2));
  v20 = v6[8];
  v15 = *a3;
  std::list<int>::list(v16, (a3 + 2));
  v17 = a3[8];
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>::SetFinal(a1, a2, &v15);
  std::__list_imp<char *>::clear(v16);
  v7 = (*(*a1 + 24))(a1);
  v12 = v18;
  std::list<int>::list(v13, v19);
  v14 = v20;
  v9 = *a3;
  std::list<int>::list(v10, (a3 + 2));
  v11 = a3[8];
  a1[1] = a1[1] & 4 | fst::SetFinalProperties<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>(v7, &v12, &v9);
  std::__list_imp<char *>::clear(v10);
  std::__list_imp<char *>::clear(v13);
  return std::__list_imp<char *>::clear(v19);
}

void sub_1B5537E08(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v3 + 8));
  std::__list_imp<char *>::clear((v2 + 8));
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::SetFinalProperties<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>(unint64_t a1, int *a2, int *a3)
{
  v6 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
  v7 = *a2;
  if (*a2)
  {
    v8 = *(a2 + 3) + 1;
  }

  else
  {
    v8 = 0;
  }

  if (*v6)
  {
    v9 = *(v6 + 24) + 1;
  }

  else
  {
    v9 = 0;
  }

  if (v8 != v9)
  {
    goto LABEL_22;
  }

  v10 = (a2 + 4);
  v11 = (v6 + 16);
  v12 = v7 && v7 == *v6;
  v13 = !v12;
  v14 = 1;
  v15 = !v13;
  while (1)
  {
    v16 = *v10;
    v17 = *v11;
    if ((v14 & 1) != 0 && !v15)
    {
      break;
    }

    if (v16 == a2 + 2)
    {
      goto LABEL_21;
    }

    if (*(v16 + 16) != *(v17 + 16))
    {
      goto LABEL_22;
    }

    v14 = 0;
    v10 = (v16 + 8);
    v11 = (v17 + 8);
  }

  if (v7)
  {
    goto LABEL_22;
  }

LABEL_21:
  if (*(a2 + 8) != *(v6 + 32))
  {
LABEL_22:
    v18 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
    v19 = *a2;
    if (*a2)
    {
      v20 = *(a2 + 3) + 1;
    }

    else
    {
      v20 = 0;
    }

    if (*v18)
    {
      v21 = *(v18 + 24) + 1;
    }

    else
    {
      v21 = 0;
    }

    if (v20 != v21)
    {
      goto LABEL_43;
    }

    v22 = (a2 + 4);
    v23 = (v18 + 16);
    v24 = v19 && v19 == *v18;
    v25 = !v24;
    v26 = 1;
    v27 = !v25;
    while (1)
    {
      v28 = *v22;
      v29 = *v23;
      if ((v26 & 1) != 0 && !v27)
      {
        break;
      }

      if (v28 == a2 + 2)
      {
        goto LABEL_42;
      }

      if (*(v28 + 16) != *(v29 + 16))
      {
        goto LABEL_43;
      }

      v26 = 0;
      v22 = (v28 + 8);
      v23 = (v29 + 8);
    }

    if (v19)
    {
      goto LABEL_43;
    }

LABEL_42:
    if (*(a2 + 8) != *(v18 + 32))
    {
LABEL_43:
      a1 &= ~0x100000000uLL;
    }
  }

  v30 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
  v31 = *a3;
  if (*a3)
  {
    v32 = *(a3 + 3) + 1;
  }

  else
  {
    v32 = 0;
  }

  if (*v30)
  {
    v33 = *(v30 + 24) + 1;
  }

  else
  {
    v33 = 0;
  }

  if (v32 != v33)
  {
    goto LABEL_65;
  }

  v34 = (a3 + 4);
  v35 = (v30 + 16);
  v36 = v31 && v31 == *v30;
  v37 = !v36;
  v38 = 1;
  v39 = !v37;
  while (1)
  {
    v40 = *v34;
    v41 = *v35;
    if ((v38 & 1) != 0 && !v39)
    {
      break;
    }

    if (v40 == a3 + 2)
    {
      goto LABEL_64;
    }

    if (*(v40 + 16) != *(v41 + 16))
    {
      goto LABEL_65;
    }

    v38 = 0;
    v34 = (v40 + 8);
    v35 = (v41 + 8);
  }

  if (v31)
  {
    goto LABEL_65;
  }

LABEL_64:
  if (*(a3 + 8) != *(v30 + 32))
  {
LABEL_65:
    v42 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
    v43 = *a3;
    if (*a3)
    {
      v44 = *(a3 + 3) + 1;
    }

    else
    {
      v44 = 0;
    }

    if (*v42)
    {
      v45 = *(v42 + 24) + 1;
    }

    else
    {
      v45 = 0;
    }

    if (v44 != v45)
    {
      goto LABEL_86;
    }

    v46 = (a3 + 4);
    v47 = (v42 + 16);
    v48 = v43 && v43 == *v42;
    v49 = !v48;
    v50 = 1;
    v51 = !v49;
    while (1)
    {
      v52 = *v46;
      v53 = *v47;
      if ((v50 & 1) != 0 && !v51)
      {
        break;
      }

      if (v52 == a3 + 2)
      {
        goto LABEL_85;
      }

      if (*(v52 + 16) != *(v53 + 16))
      {
        goto LABEL_86;
      }

      v50 = 0;
      v46 = (v52 + 8);
      v47 = (v53 + 8);
    }

    if (v43)
    {
      goto LABEL_86;
    }

LABEL_85:
    if (*(a3 + 8) != *(v42 + 32))
    {
LABEL_86:
      a1 = a1 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
    }
  }

  return a1 & 0x3FFFFFF0007;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>::AddArc(void *a1, int a2, int *a3)
{
  v6 = *(*(a1[8] + 8 * a2) + 64);
  if (v6 == *(*(a1[8] + 8 * a2) + 56))
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6 - 56);
  }

  v8 = (*(*a1 + 24))(a1);
  a1[1] = a1[1] & 4 | fst::AddArcProperties<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>(v8, a2, a3, v7);
  v9 = *(a1[8] + 8 * a2);

  return fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::AddArc(v9, a3);
}

uint64_t fst::AddArcProperties<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>(unint64_t a1, int a2, int *a3, _DWORD *a4)
{
  v7 = *a3;
  v6 = a3[1];
  v8 = a1 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  if (*a3 == v6)
  {
    v8 = a1;
  }

  v9 = v8 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
  if (!v6)
  {
    v9 = v8 & 0xFFFFFFFFFC3FFFFFLL | 0x1400000;
  }

  if (!v7)
  {
    v8 = v9;
  }

  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
  }

  if (a4)
  {
    if (*a4 <= v7)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
    }

    if (a4[1] > v6)
    {
      v10 = v11 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
    }

    else
    {
      v10 = v11;
    }
  }

  v12 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
  v13 = a3[2];
  if (v13)
  {
    v14 = *(a3 + 4) + 1;
  }

  else
  {
    v14 = 0;
  }

  if (*v12)
  {
    v15 = *(v12 + 24) + 1;
  }

  else
  {
    v15 = 0;
  }

  if (v14 != v15)
  {
    goto LABEL_38;
  }

  v16 = (a3 + 6);
  v17 = (v12 + 16);
  v18 = v13 && v13 == *v12;
  v19 = !v18;
  v20 = 1;
  v21 = !v19;
  while (1)
  {
    v22 = *v16;
    v23 = *v17;
    if ((v20 & 1) != 0 && !v21)
    {
      break;
    }

    if (v22 == a3 + 4)
    {
      goto LABEL_37;
    }

    if (*(v22 + 16) != *(v23 + 16))
    {
      goto LABEL_38;
    }

    v20 = 0;
    v16 = (v22 + 8);
    v17 = (v23 + 8);
  }

  if (v13)
  {
    goto LABEL_38;
  }

LABEL_37:
  if (*(a3 + 10) != *(v12 + 32))
  {
LABEL_38:
    v24 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
    v25 = a3[2];
    if (v25)
    {
      v26 = *(a3 + 4) + 1;
    }

    else
    {
      v26 = 0;
    }

    if (*v24)
    {
      v27 = *(v24 + 24) + 1;
    }

    else
    {
      v27 = 0;
    }

    if (v26 != v27)
    {
      goto LABEL_59;
    }

    v28 = (a3 + 6);
    v29 = (v24 + 16);
    v30 = v25 && v25 == *v24;
    v31 = !v30;
    v32 = 1;
    v33 = !v31;
    while (1)
    {
      v34 = *v28;
      v35 = *v29;
      if ((v32 & 1) != 0 && !v33)
      {
        break;
      }

      if (v34 == a3 + 4)
      {
        goto LABEL_58;
      }

      if (*(v34 + 16) != *(v35 + 16))
      {
        goto LABEL_59;
      }

      v32 = 0;
      v28 = (v34 + 8);
      v29 = (v35 + 8);
    }

    if (v25)
    {
      goto LABEL_59;
    }

LABEL_58:
    if (*(a3 + 10) != *(v24 + 32))
    {
LABEL_59:
      v10 = v10 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
    }
  }

  if (a3[12] <= a2)
  {
    v36 = v10 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
  }

  else
  {
    v36 = v10;
  }

  if ((v36 & 0x4000000000) != 0)
  {
    return v36 & 0x5D7FFEB0007 | 0x2800000000;
  }

  else
  {
    return v36 & 0x5D7FFEB0007;
  }
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>::DeleteStates(uint64_t a1, char **a2)
{
  v3 = a1;
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

  v10 = *(v3 + 64);
  if (*(v3 + 72) == v10)
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
        fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Destroy(*(v10 + 8 * v11));
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
      v10 = *(v3 + 64);
    }

    while (v11 < (*(v3 + 72) - v10) >> 3);
    v13 = v12;
  }

  std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize(v4, v13);
  v14 = *(v3 + 64);
  if (*(v3 + 72) != v14)
  {
    v15 = 0;
    v35 = v3;
    do
    {
      v16 = *(v14 + 8 * v15);
      v17 = *(v16 + 40);
      v18 = *(v16 + 64) - *(v16 + 56);
      if (v18)
      {
        v19 = *(v16 + 56);
      }

      else
      {
        v19 = 0;
      }

      if (v18)
      {
        v20 = 0;
        v21 = 0;
        v22 = (v19 + 48);
        v23 = v19 + 16;
        do
        {
          v24 = *(__p[0] + *v22);
          if (v24 == -1)
          {
            v26 = *(v22 - 6);
            v27.i64[0] = v26;
            v27.i64[1] = HIDWORD(v26);
            v17 = vaddq_s64(v17, vceqzq_s64(v27));
          }

          else
          {
            *v22 = v24;
            if (v20 != v21)
            {
              v36 = v17;
              v25 = v19 + 56 * v21;
              *v25 = *(v22 - 6);
              *(v25 + 8) = *(v22 - 10);
              std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v25 + 16), *(v22 - 3), v23);
              *(v25 + 40) = *(v22 - 2);
              *(v25 + 48) = *v22;
              v14 = *v4;
              v17 = v36;
            }

            ++v21;
          }

          ++v20;
          v16 = *(v14 + 8 * v15);
          v28 = 0x6DB6DB6DB6DB6DB7 * ((*(v16 + 64) - *(v16 + 56)) >> 3);
          v22 += 14;
          v23 += 56;
        }

        while (v20 < v28);
        v29 = v17.i64[1];
        v30 = v17.i64[0];
        v3 = v35;
      }

      else
      {
        v21 = 0;
        v28 = 0;
        v29 = *(v16 + 48);
        v30 = *(v16 + 40);
      }

      fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::DeleteArcs(v16, v28 - v21);
      v14 = *(v3 + 64);
      v31 = *(v3 + 72);
      v32 = *(v14 + 8 * v15);
      *(v32 + 40) = v30;
      *(v32 + 48) = v29;
      ++v15;
    }

    while (v15 < (v31 - v14) >> 3);
  }

  v33 = *(v3 + 88);
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
    *(v3 + 88) = *(__p[0] + v33);
  }

  __p[1] = v34;
  operator delete(v34);
}

void sub_1B5538678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>::DeleteArcs(void *a1, int a2)
{
  v3 = *(a1[8] + 8 * a2);
  v3[5] = 0;
  v3[6] = 0;
  v5 = v3[7];
  v4 = v3[8];
  if (v4 != v5)
  {
    do
    {
      v6 = v4 - 56;
      std::__list_imp<char *>::clear((v4 - 40));
      v4 = v6;
    }

    while (v6 != v5);
  }

  v3[8] = v5;
  result = (*(*a1 + 24))(a1);
  a1[1] = a1[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::MutableArcIterator<fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>>::SetValue(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 8) + 56) + 56 * *(a1 + 24);
  v5 = *v4;
  v6 = *(v4 + 4);
  if (*v4 != v6)
  {
    **(a1 + 16) &= ~0x20000uLL;
  }

  if (v5)
  {
    if (!v6)
    {
      v7 = *(a1 + 16);
      v8 = *v7;
LABEL_8:
      *v7 = v8 & 0xFFFFFFFFFBFFFFFFLL;
    }
  }

  else
  {
    v7 = *(a1 + 16);
    v9 = *v7;
    *v7 &= ~0x1000000uLL;
    if (!v6)
    {
      v8 = v9 & 0xFFFFFFFFFEBFFFFFLL;
      *v7 = v9 & 0xFFFFFFFFFEBFFFFFLL;
      goto LABEL_8;
    }
  }

  v10 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
  v11 = *(v4 + 8);
  if (v11)
  {
    v12 = *(v4 + 32) + 1;
  }

  else
  {
    v12 = 0;
  }

  if (*v10)
  {
    v13 = *(v10 + 24) + 1;
  }

  else
  {
    v13 = 0;
  }

  if (v12 != v13)
  {
    goto LABEL_30;
  }

  v14 = (v4 + 24);
  v15 = (v10 + 16);
  v16 = v11 && v11 == *v10;
  v17 = !v16;
  v18 = 1;
  v19 = !v17;
  while (1)
  {
    v20 = *v14;
    v21 = *v15;
    if ((v18 & 1) != 0 && !v19)
    {
      break;
    }

    if (v20 == v4 + 16)
    {
      goto LABEL_29;
    }

    if (*(v20 + 16) != *(v21 + 16))
    {
      goto LABEL_30;
    }

    v18 = 0;
    v14 = (v20 + 8);
    v15 = (v21 + 8);
  }

  if (v11)
  {
    goto LABEL_30;
  }

LABEL_29:
  if (*(v4 + 40) != *(v10 + 32))
  {
LABEL_30:
    v22 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
    v23 = *(v4 + 8);
    if (v23)
    {
      v24 = *(v4 + 32) + 1;
    }

    else
    {
      v24 = 0;
    }

    if (*v22)
    {
      v25 = *(v22 + 24) + 1;
    }

    else
    {
      v25 = 0;
    }

    if (v24 != v25)
    {
      goto LABEL_51;
    }

    v26 = (v4 + 24);
    v27 = (v22 + 16);
    v28 = v23 && v23 == *v22;
    v29 = !v28;
    v30 = 1;
    v31 = !v29;
    while (1)
    {
      v32 = *v26;
      v33 = *v27;
      if ((v30 & 1) != 0 && !v31)
      {
        break;
      }

      if (v32 == v4 + 16)
      {
        goto LABEL_50;
      }

      if (*(v32 + 16) != *(v33 + 16))
      {
        goto LABEL_51;
      }

      v30 = 0;
      v26 = (v32 + 8);
      v27 = (v33 + 8);
    }

    if (v23)
    {
      goto LABEL_51;
    }

LABEL_50:
    if (*(v4 + 40) != *(v22 + 32))
    {
LABEL_51:
      **(a1 + 16) &= ~0x100000000uLL;
    }
  }

  v34 = 0x30FC30007;
  if (*a2 == *v4 && *(a2 + 4) == *(v4 + 4) && *(a2 + 48) == *(v4 + 48))
  {
    v34 = 0x3FFFFFFF0007;
  }

  fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetArc(*(a1 + 8), a2, *(a1 + 24));
  v35 = *a2;
  v36 = *(a2 + 4);
  if (*a2 != v36)
  {
    **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  }

  if (v35)
  {
    if (!v36)
    {
      v37 = *(a1 + 16);
      v38 = *v37;
LABEL_63:
      *v37 = v38 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
    }
  }

  else
  {
    v37 = *(a1 + 16);
    v39 = *v37 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
    *v37 = v39;
    if (!v36)
    {
      v38 = v39 & 0xFFFFFFFFFD3FFFFFLL | 0x400000;
      *v37 = v38;
      goto LABEL_63;
    }
  }

  result = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
  v41 = *(a2 + 8);
  if (v41)
  {
    v42 = *(a2 + 32) + 1;
  }

  else
  {
    v42 = 0;
  }

  if (*result)
  {
    v43 = *(result + 24) + 1;
  }

  else
  {
    v43 = 0;
  }

  if (v42 != v43)
  {
    goto LABEL_85;
  }

  v44 = (a2 + 24);
  v45 = (result + 16);
  v46 = v41 && v41 == *result;
  v47 = !v46;
  v48 = 1;
  v49 = !v47;
  while (1)
  {
    v50 = *v44;
    v51 = *v45;
    if ((v48 & 1) != 0 && !v49)
    {
      break;
    }

    if (v50 == a2 + 16)
    {
      goto LABEL_84;
    }

    if (*(v50 + 16) != *(v51 + 16))
    {
      goto LABEL_85;
    }

    v48 = 0;
    v44 = (v50 + 8);
    v45 = (v51 + 8);
  }

  if (v41)
  {
    goto LABEL_85;
  }

LABEL_84:
  if (*(a2 + 40) != *(result + 32))
  {
LABEL_85:
    result = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
    v52 = *(a2 + 8);
    if (v52)
    {
      v53 = *(a2 + 32) + 1;
    }

    else
    {
      v53 = 0;
    }

    if (*result)
    {
      v54 = *(result + 24) + 1;
    }

    else
    {
      v54 = 0;
    }

    if (v53 != v54)
    {
      goto LABEL_106;
    }

    v55 = (a2 + 24);
    v56 = (result + 16);
    v57 = v52 && v52 == *result;
    v58 = !v57;
    v59 = 1;
    v60 = !v58;
    while (1)
    {
      v61 = *v55;
      v62 = *v56;
      if ((v59 & 1) != 0 && !v60)
      {
        break;
      }

      if (v61 == a2 + 16)
      {
        goto LABEL_105;
      }

      if (*(v61 + 16) != *(v62 + 16))
      {
        goto LABEL_106;
      }

      v59 = 0;
      v55 = (v61 + 8);
      v56 = (v62 + 8);
    }

    if (v52)
    {
      goto LABEL_106;
    }

LABEL_105:
    if (*(a2 + 40) != *(result + 32))
    {
LABEL_106:
      **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
    }
  }

  **(a1 + 16) &= v34;
  return result;
}

void *fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Reverse@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Reverse(a1, &v4);
  *a2 = v4;
  std::list<int>::list((a2 + 8), v5);
  *(a2 + 32) = v6;
  return std::__list_imp<char *>::clear(v5);
}

void *fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Reverse@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Reverse(a1, &v4);
  *a2 = v4;
  std::list<int>::list((a2 + 8), v5);
  *(a2 + 32) = v6;
  return std::__list_imp<char *>::clear(v5);
}

void *fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Reverse@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  v11[0] = v11;
  v11[1] = v11;
  v11[2] = 0;
  v4 = (a1 + 4);
  v5 = 1;
LABEL_2:
  v6 = *v4;
  v7 = v3;
  while (1)
  {
    v8 = v5;
    if (v5)
    {
      v3 = *a1;
      if (!*a1)
      {
        break;
      }

      if (v7)
      {
LABEL_9:
        operator new();
      }

      goto LABEL_10;
    }

    if (v6 == a1 + 2)
    {
      break;
    }

    v3 = *(v6 + 16);
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_10:
    v5 = 0;
    v7 = v3;
    if ((v8 & 1) == 0)
    {
      v5 = 0;
      v4 = (v6 + 8);
      goto LABEL_2;
    }
  }

  v9 = a1[8];
  *a2 = v7;
  std::list<int>::list((a2 + 8), v11);
  *(a2 + 32) = v9;
  return std::__list_imp<char *>::clear(v11);
}

void *fst::Times<int,(fst::StringType)0>@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 && (*a1 == -2 ? (v6 = *(a1 + 3) == 0) : (v6 = 0), v6) || *a2 && (*a2 == -2 ? (v7 = *(a2 + 24) == 0) : (v7 = 0), v7))
  {
    v17 = fst::StringWeight<int,(fst::StringType)0>::NoWeight();
  }

  else
  {
    v8 = fst::StringWeight<int,(fst::StringType)0>::Zero();
    v9 = *a1;
    if (*a1)
    {
      v10 = *(a1 + 3) + 1;
    }

    else
    {
      v10 = 0;
    }

    if (*v8)
    {
      v11 = *(v8 + 24) + 1;
    }

    else
    {
      v11 = 0;
    }

    if (v10 != v11)
    {
LABEL_26:
      v18 = fst::StringWeight<int,(fst::StringType)0>::Zero();
      v19 = *a2;
      if (*a2)
      {
        v20 = *(a2 + 24) + 1;
      }

      else
      {
        v20 = 0;
      }

      if (*v18)
      {
        v21 = *(v18 + 24) + 1;
      }

      else
      {
        v21 = 0;
      }

      if (v20 == v21)
      {
        v22 = (a2 + 16);
        v23 = (v18 + 16);
        for (i = 1; ; i = 0)
        {
          v25 = *v22;
          v26 = *v23;
          if (i)
          {
            if (!v19)
            {
              goto LABEL_50;
            }

            if (v19 != *v18)
            {
              break;
            }
          }

          if (v25 == a2 + 8)
          {
            goto LABEL_50;
          }

          if (*(v25 + 16) != *(v26 + 16))
          {
            break;
          }

          v22 = (v25 + 8);
          v23 = (v26 + 8);
        }
      }

      *a3 = *a1;
      result = std::list<int>::list((a3 + 8), (a1 + 2));
      v28 = (a2 + 16);
      for (j = 1; ; j = 0)
      {
        v30 = *v28;
        do
        {
          v31 = j;
          if (j)
          {
            v32 = *a2;
            if (!*a2)
            {
              return result;
            }
          }

          else
          {
            if (v30 == a2 + 8)
            {
              return result;
            }

            v32 = *(v30 + 16);
          }

          result = fst::StringWeight<int,(fst::StringType)1>::PushBack(a3, v32);
          j = 0;
        }

        while ((v31 & 1) != 0);
        v28 = (v30 + 8);
      }
    }

    v12 = (a1 + 4);
    v13 = (v8 + 16);
    for (k = 1; ; k = 0)
    {
      v15 = *v12;
      v16 = *v13;
      if (k)
      {
        if (!v9)
        {
          break;
        }

        if (v9 != *v8)
        {
          goto LABEL_26;
        }
      }

      if (v15 == a1 + 2)
      {
        break;
      }

      if (*(v15 + 16) != *(v16 + 16))
      {
        goto LABEL_26;
      }

      v12 = (v15 + 8);
      v13 = (v16 + 8);
    }

LABEL_50:
    v17 = fst::StringWeight<int,(fst::StringType)0>::Zero();
  }

  *a3 = *v17;

  return std::list<int>::list((a3 + 8), (v17 + 2));
}

uint64_t fst::StringWeight<int,(fst::StringType)0>::NoWeight()
{
  {
    operator new();
  }

  return fst::StringWeight<int,(fst::StringType)0>::NoWeight(void)::no_weight;
}

void sub_1B55390AC(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1020C40CA22B68ALL);
  _Unwind_Resume(a1);
}

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(uint64_t a1, int *a2, float a3)
{
  v6 = *a2;
  std::list<int>::list(v7, (a2 + 2));
  fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::ProductWeight(a1, &v6, a3);
  std::__list_imp<char *>::clear(v7);
  return a1;
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::ProductWeight(uint64_t a1, int *a2, float a3)
{
  v6 = *a2;
  std::list<int>::list(v7, (a2 + 2));
  *a1 = v6;
  std::list<int>::list((a1 + 8), v7);
  *(a1 + 32) = a3;
  std::__list_imp<char *>::clear(v7);
  return a1;
}

void fst::AutoQueue<int>::AutoQueue<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>(uint64_t a1, uint64_t a2)
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
      v6 = 0;
      v5[0] = v3;
      v5[1] = 0;
      v5[2] = 0;
      v5[3] = &v6;
      fst::DfsVisit<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,fst::SccVisitor<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>(a2, v5);
    }

    operator new();
  }

  operator new();
}

void sub_1B55398A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

uint64_t fst::AutoQueue<int>::SccQueueType<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::NaturalLess<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v11 = *(a3 + 8) - *a3;
  if (v11)
  {
    v12 = v11 >> 2;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    bzero(*a3, 4 * v12);
  }

  v27 = 0;
  (*(*a1 + 128))(a1, &v25);
  while (1)
  {
    result = v25;
    if (!v25)
    {
      if (v27 >= v26)
      {
        return result;
      }

LABEL_11:
      v15 = v27;
      goto LABEL_12;
    }

    v14 = (*(*v25 + 16))(v25);
    result = v25;
    if (v14)
    {
      break;
    }

    if (!v25)
    {
      goto LABEL_11;
    }

    v15 = (*(*v25 + 24))();
LABEL_12:
    v24 = 0;
    (*(*a1 + 136))(a1, v15, v22);
    while (1)
    {
      if (!v22[0])
      {
        if (v24 >= v22[2])
        {
          goto LABEL_32;
        }

        goto LABEL_18;
      }

      if ((*(*v22[0] + 24))(v22[0]))
      {
        break;
      }

      if (v22[0])
      {
        v16 = (*(*v22[0] + 32))();
        goto LABEL_19;
      }

LABEL_18:
      v16 = v22[1] + 56 * v24;
LABEL_19:
      v17 = *(*a2 + 4 * v15);
      if (v17 == *(*a2 + 4 * *(v16 + 48)))
      {
        v18 = *a3;
        if (!a4 || (v19 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One(), fst::NaturalLess<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::operator()(a4, v16 + 8, v19)))
        {
          v20 = 1;
          goto LABEL_25;
        }

        if ((v18[v17] | 2) == 2)
        {
          v20 = 3;
LABEL_25:
          v18[v17] = v20;
        }

        *a5 = 0;
      }

      *a6 = 0;
      if (v22[0])
      {
        (*(*v22[0] + 40))(v22[0]);
      }

      else
      {
        ++v24;
      }
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))();
      goto LABEL_34;
    }

LABEL_32:
    if (v23)
    {
      --*v23;
    }

LABEL_34:
    if (v25)
    {
      (*(*v25 + 32))(v25);
    }

    else
    {
      ++v27;
    }
  }

  if (v25)
  {
    return (*(*v25 + 8))();
  }

  return result;
}

void sub_1B5539D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>(uint64_t a1)
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
  fst::DfsVisit<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,fst::TopOrderVisitor<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>();
}

void sub_1B5539EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
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

void sub_1B553A6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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
  fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Type()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Type(void)::type;
}

void sub_1B553A814(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

BOOL fst::NaturalLess<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  fst::Plus<int>(a2, a3, &v28);
  v5 = *(a2 + 32);
  v6 = *(a3 + 32);
  if (v5 != INFINITY)
  {
    if (v6 == INFINITY)
    {
      v6 = *(a2 + 32);
    }

    else if (v5 <= v6)
    {
      v8 = expf(-(v6 - v5));
      v6 = v5 - logf(v8 + 1.0);
    }

    else
    {
      v7 = expf(-(v5 - v6));
      v6 = v6 - logf(v7 + 1.0);
    }
  }

  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v25, &v28, v6);
  std::__list_imp<char *>::clear(v29);
  if (v25)
  {
    v9 = v26[2] + 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(a2 + 24) + 1;
  }

  else
  {
    v11 = 0;
  }

  if (v9 != v11)
  {
    goto LABEL_36;
  }

  v12 = v26[1];
  v13 = *(a2 + 16);
  v14 = v13;
  if (v25)
  {
    if (v25 != v10)
    {
LABEL_36:
      v23 = 0;
      goto LABEL_37;
    }

    while (v12 != v26)
    {
      if (*(v12 + 16) != *(v14 + 16))
      {
        goto LABEL_36;
      }

      v12 = *(v12 + 8);
      v14 = *(v14 + 8);
    }
  }

  v28 = v27;
  v15 = *(a2 + 32);
  v30 = v15;
  if (v27 != v15)
  {
    goto LABEL_36;
  }

  if (*a3)
  {
    v16 = *(a3 + 24) + 1;
  }

  else
  {
    v16 = 0;
  }

  if (v9 == v16)
  {
    v17 = (a3 + 16);
    if (v10)
    {
      v18 = v10 == *a3;
    }

    else
    {
      v18 = 0;
    }

    v19 = !v18;
    v20 = 1;
    v21 = v19 ^ 1;
    while (1)
    {
      v22 = *v17;
      if ((v20 & 1) != 0 && !v21)
      {
        break;
      }

      if (v13 == a2 + 8)
      {
        goto LABEL_40;
      }

      if (*(v13 + 16) != *(v22 + 16))
      {
        goto LABEL_39;
      }

      v20 = 0;
      v13 = *(v13 + 8);
      v17 = (v22 + 8);
    }

    if (v10)
    {
      goto LABEL_39;
    }

LABEL_40:
    v28 = v15;
    v30 = *(a3 + 32);
    v23 = v15 != v30;
  }

  else
  {
LABEL_39:
    v23 = 1;
  }

LABEL_37:
  std::__list_imp<char *>::clear(v26);
  return v23;
}

void fst::ShortestDistanceState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::ShortestDistance(void *a1)
{
  if ((*(**a1 + 24))(*a1) != -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v2 = fst::LogMessage::LogMessage(&v11, __p);
    v3 = fst::cerr(v2);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ShortestDistance: Weight needs to be right distributive: ", 57);
    v5 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Type();
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
    fst::LogMessage::~LogMessage(&v11);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_15;
  }

  if ((*(**a1 + 64))(*a1, 4, 0))
  {
LABEL_15:
    *(a1 + 116) = 1;
  }
}

void sub_1B553AE44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::resize(uint64_t *result, unint64_t a2, _DWORD *a3)
{
  v3 = result;
  v4 = result[1];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    return std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::__append(result, v7, a3);
  }

  else if (!v6)
  {
    v8 = *result + 40 * a2;
    if (v4 != v8)
    {
      do
      {
        v9 = v4 - 40;
        result = std::__list_imp<char *>::clear((v4 - 32));
        v4 = v9;
      }

      while (v9 != v8);
    }

    v3[1] = v8;
  }

  return result;
}

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::NoWeight()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::NoWeight(void)::no_weight;
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      *(a4 + v7) = *(v6 + v7);
      result = std::list<int>::list((a4 + v7 + 8), v6 + v7 + 8);
      *(a4 + v7 + 32) = *(v6 + v7 + 32);
      v7 += 40;
    }

    while (v8 + 40 != a3);
    while (v6 != a3)
    {
      result = std::__list_imp<char *>::clear((v6 + 8));
      v6 += 40;
    }
  }

  return result;
}

void sub_1B553B080(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 32);
    do
    {
      std::__list_imp<char *>::clear(v5);
      v5 -= 5;
      v4 += 40;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::__append(uint64_t *result, unint64_t a2, _DWORD *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = v7 + 40 * a2;
      v13 = 40 * a2;
      do
      {
        *v7 = *a3;
        result = std::list<int>::list((v7 + 8), (a3 + 2));
        *(v7 + 32) = a3[8];
        v7 += 40;
        v13 -= 40;
      }

      while (v13);
      v7 = v12;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0x666666666666666)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    v21 = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>>(result, v11);
    }

    v18 = 0;
    v19 = 40 * v8;
    v20 = 40 * v8;
    std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::__construct_at_end(&v18, a2, a3);
    v14 = v5[1];
    v15 = v19 + *v5 - v14;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>*>(v5, *v5, v14, v15);
    v16 = *v5;
    *v5 = v15;
    v17 = v5[2];
    *(v5 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::~__split_buffer(&v18);
  }

  return result;
}

void sub_1B553B228(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::__construct_at_end(void *result, uint64_t a2, _DWORD *a3)
{
  v3 = result;
  v4 = result[2];
  if (a2)
  {
    v6 = v4 + 40 * a2;
    v7 = 40 * a2;
    do
    {
      *v4 = *a3;
      result = std::list<int>::list((v4 + 8), (a3 + 2));
      *(v4 + 32) = a3[8];
      v4 += 40;
      v7 -= 40;
    }

    while (v7);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::NoWeight()
{
  {
    operator new();
  }

  return fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::NoWeight(void)::no_weight;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::NoWeight()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::NoWeight(void)::no_weight;
}

void sub_1B553B464(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  MEMORY[0x1B8C85350](v1, 0x1020C4067685F46);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::__append(uint64_t *result, unint64_t a2, _DWORD *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = v7 + 40 * a2;
      v13 = 40 * a2;
      do
      {
        *v7 = *a3;
        result = std::list<int>::list((v7 + 8), (a3 + 2));
        *(v7 + 32) = a3[8];
        v7 += 40;
        v13 -= 40;
      }

      while (v13);
      v7 = v12;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0x666666666666666)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    v21 = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>>(result, v11);
    }

    v18 = 0;
    v19 = 40 * v8;
    v20 = 40 * v8;
    std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::__construct_at_end(&v18, a2, a3);
    v14 = v5[1];
    v15 = v19 + *v5 - v14;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>*>(v5, *v5, v14, v15);
    v16 = *v5;
    *v5 = v15;
    v17 = v5[2];
    *(v5 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::~__split_buffer(&v18);
  }

  return result;
}

void sub_1B553B628(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::__construct_at_end(void *result, uint64_t a2, _DWORD *a3)
{
  v3 = result;
  v4 = result[2];
  if (a2)
  {
    v6 = v4 + 40 * a2;
    v7 = 40 * a2;
    do
    {
      *v4 = *a3;
      result = std::list<int>::list((v4 + 8), (a3 + 2));
      *(v4 + 32) = a3[8];
      v4 += 40;
      v7 -= 40;
    }

    while (v7);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::NoWeight()
{
  {
    operator new();
  }

  return fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::NoWeight(void)::no_weight;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::NoWeight()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::NoWeight(void)::no_weight;
}

void sub_1B553B864(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  MEMORY[0x1B8C85350](v1, 0x1020C4067685F46);
  _Unwind_Resume(a1);
}

uint64_t std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::__emplace_back_slow_path<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>(uint64_t *a1, _DWORD *a2)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>>(a1, v6);
  }

  v7 = 40 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  std::list<int>::list((v7 + 8), (a2 + 2));
  *(v7 + 32) = a2[8];
  *&v16 = v16 + 40;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::~__split_buffer(&v14);
  return v13;
}

void sub_1B553B9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Reverse@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Reverse(a1, &v4);
  *a2 = v4;
  std::list<int>::list((a2 + 8), v5);
  *(a2 + 32) = v6;
  return std::__list_imp<char *>::clear(v5);
}

void *fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Reverse@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  v11[0] = v11;
  v11[1] = v11;
  v11[2] = 0;
  v4 = (a1 + 4);
  v5 = 1;
LABEL_2:
  v6 = *v4;
  v7 = v3;
  while (1)
  {
    v8 = v5;
    if (v5)
    {
      v3 = *a1;
      if (!*a1)
      {
        break;
      }

      if (v7)
      {
LABEL_9:
        operator new();
      }

      goto LABEL_10;
    }

    if (v6 == a1 + 2)
    {
      break;
    }

    v3 = *(v6 + 16);
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_10:
    v5 = 0;
    v7 = v3;
    if ((v8 & 1) == 0)
    {
      v5 = 0;
      v4 = (v6 + 8);
      goto LABEL_2;
    }
  }

  v9 = a1[8];
  *a2 = v7;
  std::list<int>::list((a2 + 8), v11);
  *(a2 + 32) = v9;
  return std::__list_imp<char *>::clear(v11);
}

void std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 40;
        std::__list_imp<char *>::clear(v4 - 4);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D1A778;
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

void fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ArcMapFst(void *a1)
{
  fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Init(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__str, "map");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v2 = (*(**(a1 + 136) + 112))(*(a1 + 136));
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v2);
  v3 = (*(**(a1 + 136) + 120))(*(a1 + 136));
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, v3);
  result = (*(**(a1 + 136) + 24))(*(a1 + 136));
  *(a1 + 156) = 0;
  if (result == -1)
  {
    *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950000;
  }

  else
  {
    result = (*(**(a1 + 136) + 64))(*(a1 + 136), 0x3FFFFFFF0004, 0);
    *(a1 + 8) = result & 0x3FFCFFFF0007 | *(a1 + 8) & 4 | 0x200000000;
    if (*(a1 + 156) == 2)
    {
      *(a1 + 160) = 0;
    }
  }

  return result;
}

void sub_1B553C1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ArcMapFstImpl(uint64_t a1)
{
  fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ArcMapFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void sub_1B553C3A8(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ArcMapFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D1AAC8;
  v2 = *(a1 + 136);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 152) == 1)
  {
    v3 = *(a1 + 144);
    if (v3)
    {
      MEMORY[0x1B8C85350](v3, 0xC400A2AC0F1);
    }
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      v2 = (*(**(a1 + 136) + 24))(*(a1 + 136));
      v3 = *(a1 + 160);
      if (v3 != -1 && v3 <= v2)
      {
        v5 = v2 + 1;
      }

      else
      {
        v5 = v2;
      }

      if (v5 >= *(a1 + 164))
      {
        *(a1 + 164) = v5 + 1;
      }

      *(a1 + 64) = v5;
      *(a1 + 60) = 1;
      if (*(a1 + 68) <= v5)
      {
        *(a1 + 68) = v5 + 1;
      }
    }
  }

  return *(a1 + 64);
}

float fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Final(uint64_t a1, int a2)
{
  if (fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasFinal(a1, a2))
  {
    goto LABEL_20;
  }

  v4 = *(a1 + 156);
  if (v4 != 1)
  {
    if (v4 == 2)
    {
      if (*(a1 + 160) == a2)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = INFINITY;
      }

      goto LABEL_19;
    }

    v7 = *(a1 + 136);
    v6 = *(a1 + 160);
LABEL_10:
    v9 = v6 != -1 && v6 <= a2;
    if ((*(*v7 + 32))(v7, (a2 - v9)) == INFINITY)
    {
      v5 = INFINITY;
    }

    else
    {
      v5 = 0.0;
    }

    goto LABEL_19;
  }

  v6 = *(a1 + 160);
  v5 = 0.0;
  if (v6 != a2)
  {
    v7 = *(a1 + 136);
    goto LABEL_10;
  }

LABEL_19:
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
  *MutableState = v5;
  *(MutableState + 48) |= 9u;
LABEL_20:
  v11 = *(a1 + 120);
  if (*(v11 + 76) == a2)
  {
    v12 = v11 + 80;
  }

  else
  {
    v12 = *(v11 + 8) + 8 * a2 + 8;
  }

  return **v12;
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::NumArcs(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return (*(*v5 + 32) - *(*v5 + 24)) >> 4;
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Expand(uint64_t a1, int a2)
{
  v4 = *(a1 + 160);
  if (v4 == a2)
  {

    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
  }

  v6 = *(a1 + 136);
  v8 = v4 != -1 && v4 <= a2;
  v32 = 0;
  (*(*v6 + 136))(v6, (a2 - v8), &v29);
  while (1)
  {
    if (!v29)
    {
      if (v32 >= v30)
      {
        goto LABEL_33;
      }

      goto LABEL_17;
    }

    if ((*(*v29 + 24))(v29))
    {
      break;
    }

    if (v29)
    {
      v9 = (*(*v29 + 32))();
      goto LABEL_18;
    }

LABEL_17:
    v9 = *(&v29 + 1) + 16 * v32;
LABEL_18:
    v10 = *v9;
    v11 = *(v9 + 8);
    LODWORD(v12) = *(v9 + 12);
    v13 = *(a1 + 160);
    if (v13 != -1 && v13 <= v12)
    {
      v12 = (v12 + 1);
    }

    else
    {
      v12 = v12;
    }

    if (v12 >= *(a1 + 164))
    {
      *(a1 + 164) = v12 + 1;
    }

    v34 = v11;
    v33 = 2139095040;
    v15 = v11 == INFINITY;
    v16 = INFINITY;
    if (!v15)
    {
      v16 = 0.0;
    }

    *&v28 = v10;
    *(&v28 + 1) = LODWORD(v16) | (v12 << 32);
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](MutableState + 24, &v28);
    if (v29)
    {
      (*(*v29 + 40))(v29);
    }

    else
    {
      ++v32;
    }
  }

  if (v29)
  {
    (*(*v29 + 8))();
    goto LABEL_35;
  }

LABEL_33:
  if (v31)
  {
    --*v31;
  }

LABEL_35:
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasFinal(a1, a2) & 1) == 0 || (LODWORD(v29) = fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Final(a1, a2), LODWORD(v28) = 2139095040, *&v29 == INFINITY))
  {
    v18 = *(a1 + 156);
    if (v18 == 2)
    {
      v22 = *(a1 + 160);
      v24 = v22 != -1 && v22 <= a2;
      LODWORD(v29) = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v24));
      LODWORD(v28) = 2139095040;
      v25 = INFINITY;
      if (*&v29 != INFINITY)
      {
        v25 = 0.0;
      }

      *&v29 = v25;
      LODWORD(v28) = 2139095040;
      if (v25 != INFINITY)
      {
        v26 = *(a1 + 160);
        *&v29 = 0;
        *(&v29 + 1) = __PAIR64__(v26, LODWORD(v25));
        v27 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
        std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](v27 + 24, &v29);
      }
    }

    else if (v18 == 1)
    {
      v19 = *(a1 + 160);
      v21 = v19 != -1 && v19 <= a2;
      LODWORD(v29) = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v21));
      LODWORD(v28) = 2139095040;
    }
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B553CA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  else if (a14)
  {
    --*a14;
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::NumInputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 8);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 16);
}

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::ImplToFst(void *result, uint64_t a2, int a3)
{
  *result = &unk_1F2D1AB30;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::StateIterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = &unk_1F2D1ABE0;
  *(a1 + 8) = v3;
  v4 = *(v3 + 136);
  *(a1 + 32) = 0;
  (*(*v4 + 128))(v4, a1 + 16);
  *(a1 + 40) = 0;
  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;
  fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::CheckSuperfinal(a1);
  return a1;
}

void sub_1B553CD94(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::StateIterator(v3);
  }

  _Unwind_Resume(exception_object);
}

float fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::CheckSuperfinal(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(v1 + 156) == 1 && (*(a1 + 44) & 1) == 0)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if ((*(*v3 + 16))(v3))
      {
        return result;
      }

      v1 = *(a1 + 8);
    }

    else if (*(a1 + 32) >= *(a1 + 24))
    {
      return result;
    }

    (*(**(v1 + 136) + 32))(*(v1 + 136), *(a1 + 40));
    return INFINITY;
  }

  return result;
}

void *fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D1ABE0;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D1ABE0;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Done(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    if (*(a1 + 32) >= *(a1 + 24))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  if (((*(*v2 + 16))(v2) & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = *(a1 + 44) ^ 1;
  return v3 & 1;
}

void fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Next(uint64_t a1)
{
  ++*(a1 + 40);
  v2 = *(a1 + 16);
  if (v2)
  {
    if (((*(*v2 + 16))(v2) & 1) == 0)
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        (*(*v3 + 32))(v3);
LABEL_7:

        fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::CheckSuperfinal(a1);
        return;
      }

LABEL_6:
      ++*(a1 + 32);
      goto LABEL_7;
    }
  }

  else if (*(a1 + 32) < *(a1 + 24))
  {
    goto LABEL_6;
  }

  if (*(a1 + 44) == 1)
  {
    *(a1 + 44) = 0;
  }
}

float fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Reset(uint64_t a1)
{
  *(a1 + 40) = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;

  return fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::CheckSuperfinal(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::InitArcIterator(uint64_t a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitArcIterator(a1, a2, a3);
}

void fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~ArcMapFst(void *a1)
{
  fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

unint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::Init(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__str, "map");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v2 = (*(**(a1 + 136) + 112))(*(a1 + 136));
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v2);
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 48) = 0;
  }

  result = (*(**(a1 + 136) + 24))(*(a1 + 136));
  *(a1 + 156) = 0;
  if (result == -1)
  {
    *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950000;
  }

  else
  {
    v5 = (*(**(a1 + 136) + 64))(*(a1 + 136), 0x3FFFFFFF0004, 0);
    result = fst::ProjectProperties(v5, 1);
    *(a1 + 8) = *(a1 + 8) & 4 | result & 0x3FFCFFFF0007;
    if (*(a1 + 156) == 2)
    {
      *(a1 + 160) = 0;
    }
  }

  return result;
}

void sub_1B553D6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~ArcMapFstImpl(uint64_t a1)
{
  fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~ArcMapFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0) || (fst::ProjectProperties(0, 1) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D1A208;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D1AD98;
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
  *a1 = &unk_1F2D1A208;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D1AD98;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

void sub_1B553D914(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

void fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::~CacheBaseImpl(void *a1)
{
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::~CacheBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void *fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::VectorCacheStore(void *a1, _BYTE *a2)
{
  *a1 = *a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a1 + 4;
  a1[5] = a1 + 4;
  a1[6] = 0;
  a1[7] = 0;
  fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::Clear(a1);
  a1[7] = a1[5];
  return a1;
}

void sub_1B553D9E8(_Unwind_Exception *a1)
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

void *fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::Clear(void *a1)
{
  v2 = a1[1];
  if (a1[2] != v2)
  {
    v3 = 0;
    do
    {
      fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Destroy(*(v2 + 8 * v3++));
      v2 = a1[1];
    }

    while (v3 < (a1[2] - v2) >> 3);
  }

  a1[2] = v2;

  return std::__list_imp<char *>::clear(a1 + 4);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::~CacheBaseImpl(void *a1)
{
  *a1 = &unk_1F2D1AD98;
  v2 = a1[15];
  if (v2)
  {
    v3 = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::~VectorCacheStore(v2);
    MEMORY[0x1B8C85350](v3, 0x10A0C407A9BBF1FLL);
  }

  v4 = a1[9];
  if (v4)
  {
    operator delete(v4);
  }

  return fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~FstImpl(a1);
}

void *fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::~VectorCacheStore(void *a1)
{
  fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::Clear(a1);
  std::__list_imp<char *>::clear(a1 + 4);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~ArcMapFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D1AD18;
  v2 = *(a1 + 136);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 152) == 1)
  {
    v3 = *(a1 + 144);
    if (v3)
    {
      MEMORY[0x1B8C85350](v3, 0xC400A2AC0F1);
    }
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::~CacheBaseImpl(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      v2 = (*(**(a1 + 136) + 24))(*(a1 + 136));
      v3 = *(a1 + 160);
      if (v3 != -1 && v3 <= v2)
      {
        v5 = v2 + 1;
      }

      else
      {
        v5 = v2;
      }

      if (v5 >= *(a1 + 164))
      {
        *(a1 + 164) = v5 + 1;
      }

      *(a1 + 64) = v5;
      *(a1 + 60) = 1;
      if (*(a1 + 68) <= v5)
      {
        *(a1 + 68) = v5 + 1;
      }
    }
  }

  return *(a1 + 64);
}

void *fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasFinal(a1, a2) & 1) == 0)
  {
    v6 = *(a1 + 156);
    if (v6 == 1)
    {
      v8 = *(a1 + 160);
      if (v8 != a2)
      {
        v20 = v8 != -1 && v8 <= a2;
        v21 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v20));
        v40 = 0;
        v41 = v21;
        v42 = -1;
        fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>::operator()(&v40, &v45);
        if (v45)
        {
          v23 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
          v28 = *v23;
          v22 = v29;
          std::list<int>::list(v29, (v23 + 2));
          v30 = v23[8];
          fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetFinal(a1, a2, &v28);
        }

        else
        {
          v31 = v46;
          v22 = v32;
          std::list<int>::list(v32, v47);
          v33 = v48;
          fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetFinal(a1, a2, &v31);
        }

        std::__list_imp<char *>::clear(v22);
        v18 = v47;
        goto LABEL_35;
      }

      v9 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
      v34 = *v9;
      v10 = &v34;
      std::list<int>::list(v35, (v9 + 2));
      v36 = v9[8];
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetFinal(a1, a2, &v34);
    }

    else
    {
      if (v6 != 2)
      {
        v11 = *(a1 + 160);
        v13 = v11 != -1 && v11 <= a2;
        v14 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v13));
        v40 = 0;
        v41 = v14;
        v42 = -1;
        fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>::operator()(&v40, &v45);
        if (v45)
        {
          if (FLAGS_fst_error_fatal == 1)
          {
            std::string::basic_string[abi:ne200100]<0>(&v40, "FATAL");
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(&v40, "ERROR");
          }

          v15 = fst::LogMessage::LogMessage(&v44, &v40);
          v16 = fst::cerr(v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "ArcMapFst: non-zero arc labels for superfinal arc", 49);
          fst::LogMessage::~LogMessage(&v44);
          if (v43 < 0)
          {
            operator delete(v40);
          }

          *(a1 + 8) |= 4uLL;
        }

        v37 = v46;
        std::list<int>::list(v38, v47);
        v39 = v48;
        fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetFinal(a1, a2, &v37);
        std::__list_imp<char *>::clear(v38);
        v18 = v47;
        goto LABEL_35;
      }

      if (*(a1 + 160) == a2)
      {
        v7 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
      }

      else
      {
        v7 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
      }

      v17 = v7;
      v25 = *v7;
      v10 = &v25;
      std::list<int>::list(v26, (v7 + 2));
      v27 = v17[8];
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetFinal(a1, a2, &v25);
    }

    v18 = v10 + 2;
LABEL_35:
    std::__list_imp<char *>::clear(v18);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Final(a1, a2, a3);
}

void sub_1B553DFE0(_Unwind_Exception *a1)
{
  fst::LogMessage::~LogMessage((v1 - 105));
  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  std::__list_imp<char *>::clear((v1 - 88));
  _Unwind_Resume(a1);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasFinal(uint64_t a1, int a2)
{
  v2 = *(a1 + 120);
  if (*(v2 + 76) == a2)
  {
    v3 = (v2 + 80);
  }

  else
  {
    v4 = a2 + 1;
    v6 = v2 + 8;
    v5 = *(v2 + 8);
    if (v4 >= (*(v6 + 8) - v5) >> 3)
    {
      return 0;
    }

    v3 = (v5 + 8 * v4);
  }

  v7 = *v3;
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 80);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  *(v7 + 80) = v8 | 8;
  return 1;
}

void *fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>>::GetMutableState(*(a1 + 120), a2);
  v7 = *a3;
  std::list<int>::list(v8, (a3 + 2));
  v5 = a3[8];
  v9 = v5;
  *MutableState = v7;
  if (MutableState != &v7)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((MutableState + 8), v8[1], v8);
    v5 = v9;
  }

  *(MutableState + 32) = v5;
  result = std::__list_imp<char *>::clear(v8);
  *(MutableState + 80) |= 9u;
  return result;
}

void *fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = (v4 + 80);
  }

  else
  {
    v6 = a2 + 1;
    v8 = v4 + 8;
    v7 = *(v4 + 8);
    if (v6 >= (*(v8 + 8) - v7) >> 3)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v5 = (v7 + 8 * v6);
  }

  v9 = *v5;
LABEL_7:
  *a3 = *v9;
  result = std::list<int>::list((a3 + 8), (v9 + 2));
  *(a3 + 32) = v9[8];
  return result;
}

uint64_t fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>::GetMutableState(a1, a2);
  v4 = MutableState;
  if (*(a1 + 88) == 1)
  {
    v5 = *(MutableState + 80);
    if ((v5 & 4) == 0)
    {
      *(MutableState + 80) = v5 | 4;
      v6 = *(MutableState + 64) - *(MutableState + 56) + *(a1 + 112) + 88;
      *(a1 + 112) = v6;
      *(a1 + 104) = 1;
      if (v6 > *(a1 + 96))
      {
        fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>>::GC(a1, MutableState, 0, 0.666);
      }
    }
  }

  return v4;
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>::GetMutableState(uint64_t a1, int a2)
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
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::GetMutableState(a1, 0);
      *(a1 + 80) = MutableState;
      *(MutableState + 80) |= 4u;
      std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::reserve((MutableState + 56), 0x80uLL);
      return *(a1 + 80);
    }

    v5 = *(a1 + 80);
    if (!*(v5 + 84))
    {
      *(a1 + 76) = a2;
      fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Reset(v5);
      result = *(a1 + 80);
      *(result + 80) |= 4u;
      return result;
    }

    *(v5 + 80) &= ~4u;
    *(a1 + 72) = 0;
  }

  v6 = a2 + 1;

  return fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::GetMutableState(a1, v6);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>>::GC(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
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

      MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>::GetMutableState(a1, v23);
      v25 = *(a1 + 112);
      if (v25 > v20 && !*(MutableState + 84))
      {
        if (a3)
        {
          if (MutableState != a2)
          {
            v26 = *(MutableState + 80);
LABEL_19:
            if ((v26 & 4) != 0)
            {
              v27 = *(MutableState + 64) - *(MutableState + 56) + 88;
              FstCheck(v27 <= v25, "(size) <= (cache_size_)", "../libquasar/libkaldi/tools/openfst/src/include/fst/cache.h", 730);
              *(a1 + 112) -= v27;
            }

            fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>::Delete(a1);
            v21 = *(a1 + 56);
            continue;
          }
        }

        else
        {
          v26 = *(MutableState + 80);
          if ((v26 & 8) == 0 && MutableState != a2)
          {
            goto LABEL_19;
          }
        }
      }

      *(MutableState + 80) &= ~8u;
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
      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>>::GC(a1, a2, 1, a4);
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

void sub_1B553E73C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::GetMutableState(uint64_t a1, int a2)
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

uint64_t fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Reset(uint64_t a1)
{
  result = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
  v3 = result;
  *a1 = *result;
  if (result != a1)
  {
    result = std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a1 + 8), *(result + 16), result + 8);
  }

  *(a1 + 32) = *(v3 + 32);
  *(a1 + 80) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  if (v4 != v5)
  {
    do
    {
      v6 = v4 - 56;
      result = std::__list_imp<char *>::clear((v4 - 40));
      v4 = v6;
    }

    while (v6 != v5);
  }

  *(a1 + 64) = v5;
  return result;
}

void fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>::Delete(void *a1)
{
  v1 = *(a1[7] + 16);
  if (!v1 || v1 - 1 == *(a1 + 19))
  {
    *(a1 + 19) = -1;
    a1[10] = 0;
  }

  fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::Delete(a1);
}

void fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::Delete(void *a1)
{
  fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Destroy(*(a1[1] + 8 * *(a1[7] + 16)));
  v2 = a1[6];
  *(a1[1] + 8 * *(a1[7] + 16)) = 0;
  v3 = a1[7];
  v5 = *v3;
  v4 = v3[1];
  *(v5 + 8) = v4;
  *v4 = v5;
  a1[6] = v2 - 1;
  a1[7] = v4;

  operator delete(v3);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::NumArcs(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return 0x6DB6DB6DB6DB6DB7 * ((*(*v5 + 64) - *(*v5 + 56)) >> 3);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(uint64_t a1, int a2)
{
  v2 = *(a1 + 120);
  if (*(v2 + 76) == a2)
  {
    v3 = (v2 + 80);
  }

  else
  {
    v4 = a2 + 1;
    v6 = v2 + 8;
    v5 = *(v2 + 8);
    if (v4 >= (*(v6 + 8) - v5) >> 3)
    {
      return 0;
    }

    v3 = (v5 + 8 * v4);
  }

  v7 = *v3;
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 80);
  if ((v8 & 2) == 0)
  {
    return 0;
  }

  *(v7 + 80) = v8 | 8;
  return 1;
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::Expand(uint64_t a1, int a2)
{
  v4 = *(a1 + 160);
  if (v4 == a2)
  {

    return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetArcs(a1, a2);
  }

  v6 = *(a1 + 136);
  v8 = v4 != -1 && v4 <= a2;
  v56 = 0;
  (*(*v6 + 136))(v6, (a2 - v8), &v52);
  while (1)
  {
    if (!v52)
    {
      if (v56 >= v54)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if ((*(*v52 + 24))(v52))
    {
      break;
    }

    if (v52)
    {
      v9 = (*(*v52 + 32))();
      goto LABEL_18;
    }

LABEL_17:
    v9 = (v53 + 16 * v56);
LABEL_18:
    v66 = *v9;
    v10 = HIDWORD(v66);
    v11 = *(a1 + 160);
    if (v11 != -1 && v11 <= SHIDWORD(v66))
    {
      v10 = HIDWORD(v66) + 1;
    }

    if (v10 >= *(a1 + 164))
    {
      *(a1 + 164) = v10 + 1;
    }

    HIDWORD(v66) = v10;
    fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>::operator()(&v66, &v59);
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>>::GetMutableState(*(a1 + 120), a2);
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::push_back[abi:ne200100]((MutableState + 56), &v59);
    std::__list_imp<char *>::clear(&v61);
    if (v52)
    {
      (*(*v52 + 40))(v52);
    }

    else
    {
      ++v56;
    }
  }

  if (v52)
  {
    (*(*v52 + 8))();
    goto LABEL_32;
  }

LABEL_30:
  if (v55)
  {
    --*v55;
  }

LABEL_32:
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasFinal(a1, a2) & 1) == 0)
  {
LABEL_49:
    v24 = *(a1 + 156);
    if (v24 == 1)
    {
      v30 = *(a1 + 160);
      v32 = v30 != -1 && v30 <= a2;
      *&v33 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v32));
      v52 = 0;
      v53 = v33 | 0xFFFFFFFF00000000;
      fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>::operator()(&v52, &v59);
      if (v59)
      {
        v34 = *(a1 + 160);
        if (v34 == -1)
        {
          v34 = *(a1 + 164);
          *(a1 + 160) = v34;
          *(a1 + 164) = v34 + 1;
        }

        v65 = v34;
        v35 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>>::GetMutableState(*(a1 + 120), a2);
        std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::push_back[abi:ne200100]((v35 + 56), &v59);
      }

      v21 = &v61;
      goto LABEL_93;
    }

    if (v24 != 2)
    {
      return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetArcs(a1, a2);
    }

    v25 = *(a1 + 160);
    v27 = v25 != -1 && v25 <= a2;
    *&v28 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v27));
    v52 = 0;
    v53 = v28 | 0xFFFFFFFF00000000;
    fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>::operator()(&v52, &v59);
    if (v59)
    {
      v29 = v60;
    }

    else
    {
      v36 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
      v29 = v60;
      if (v60)
      {
        v37 = v63 + 1;
      }

      else
      {
        v37 = 0;
      }

      if (*v36)
      {
        v38 = *(v36 + 24) + 1;
      }

      else
      {
        v38 = 0;
      }

      if (v37 == v38)
      {
        v39 = v62;
        v40 = (v36 + 16);
        v41 = v60 && v60 == *v36;
        v42 = !v41;
        v43 = 1;
        v44 = !v42;
        while (1)
        {
          v45 = *v40;
          if ((v43 & 1) != 0 && !v44)
          {
            break;
          }

          if (v39 == &v61)
          {
            goto LABEL_90;
          }

          if (*(v39 + 16) != *(v45 + 16))
          {
            goto LABEL_91;
          }

          v43 = 0;
          v39 = *(v39 + 8);
          v40 = (v45 + 8);
        }

        if (v60)
        {
          goto LABEL_91;
        }

LABEL_90:
        *&v52 = v64;
        LODWORD(v66) = *(v36 + 32);
        if (v64 == *&v66)
        {
          goto LABEL_92;
        }
      }
    }

LABEL_91:
    v46 = v59;
    v49 = v29;
    std::list<int>::list(v50, &v61);
    v51 = v64;
    v47 = *(a1 + 160);
    v52 = v46;
    LODWORD(v53) = v49;
    std::list<int>::list(&v54, v50);
    v57 = v51;
    v58 = v47;
    v48 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>>::GetMutableState(*(a1 + 120), a2);
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::push_back[abi:ne200100]((v48 + 56), &v52);
    std::__list_imp<char *>::clear(&v54);
    std::__list_imp<char *>::clear(v50);
LABEL_92:
    v21 = &v61;
    goto LABEL_93;
  }

  fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::Final(a1, a2, &v59);
  v14 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
  if (v59)
  {
    v15 = v62 + 1;
  }

  else
  {
    v15 = 0;
  }

  if (*v14)
  {
    v16 = *(v14 + 24) + 1;
  }

  else
  {
    v16 = 0;
  }

  if (v15 != v16)
  {
LABEL_47:
    v21 = &v60;
LABEL_93:
    std::__list_imp<char *>::clear(v21);
    return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetArcs(a1, a2);
  }

  v17 = v61;
  v18 = (v14 + 16);
  for (i = 1; ; i = 0)
  {
    v20 = *v18;
    if (i)
    {
      if (!v59)
      {
        break;
      }

      if (v59 != *v14)
      {
        goto LABEL_47;
      }
    }

    if (v17 == &v60)
    {
      break;
    }

    if (*(v17 + 16) != *(v20 + 16))
    {
      goto LABEL_47;
    }

    v17 = *(v17 + 8);
    v18 = (v20 + 8);
  }

  LODWORD(v52) = v63;
  LODWORD(v66) = *(v14 + 32);
  v22 = *&v63;
  v23 = *&v66;
  std::__list_imp<char *>::clear(&v60);
  if (v22 == v23)
  {
    goto LABEL_49;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetArcs(a1, a2);
}

void sub_1B553F010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__list_imp<char *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetArcs(uint64_t a1, int a2)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>>::GetMutableState(*(a1 + 120), a2);
  fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>>::SetArcs(*(a1 + 120), MutableState);
  v5 = *(MutableState + 56);
  v6 = *(MutableState + 64) - v5;
  if (v6)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 3);
    v8 = *(a1 + 68);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v9 = (v5 + 48);
    do
    {
      v11 = *v9;
      v9 += 14;
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
  *(MutableState + 80) |= 0xAu;
  return result;
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>>::SetArcs(uint64_t a1, uint64_t a2)
{
  fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetArcs(a2);
  if (*(a1 + 104) == 1 && (*(a2 + 80) & 4) != 0)
  {
    v4 = *(a2 + 64) - *(a2 + 56) + *(a1 + 112);
    *(a1 + 112) = v4;
    if (v4 > *(a1 + 96))
    {

      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>>::GC(a1, a2, 0, 0.666);
    }
  }
}

void *fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetArcs(void *result)
{
  v1 = result[7];
  v2 = result[8] - v1;
  if (v2)
  {
    v3 = 0x6DB6DB6DB6DB6DB7 * (v2 >> 3);
    if (v3 <= 1)
    {
      v3 = 1;
    }

    v4 = (v1 + 4);
    do
    {
      if (!*(v4 - 1))
      {
        ++result[5];
      }

      if (!*v4)
      {
        ++result[6];
      }

      v4 += 14;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::NumInputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
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

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 48);
}

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::ImplToFst(void *result, uint64_t a2, int a3)
{
  *result = &unk_1F2D1ADD0;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

void sub_1B553F5EC(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::CopyStates(a1, a2);
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
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::GetMutableState(a1, 0);
    }

    *(a1 + 80) = MutableState;
  }

  return a1;
}

void fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::CopyStates(void *a1, uint64_t a2)
{
  fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::Clear(a1);
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

uint64_t fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::CacheState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::list<int>::list((a1 + 8), a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 64);
  *(a1 + 56) = 0;
  *(a1 + 40) = v4;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1> const*>,std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1> const*>>(a1 + 56, v5, v6, 0x6DB6DB6DB6DB6DB7 * ((v6 - v5) >> 3));
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1> const*>,std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1> const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B553F938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1> const*,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1> const*,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      *v9 = *(a2 + v7);
      *(v9 + 8) = *(a2 + v7 + 8);
      std::list<int>::list((a4 + v7 + 16), a2 + v7 + 16);
      *(v9 + 40) = *(a2 + v7 + 40);
      *(v9 + 48) = *(a2 + v7 + 48);
      v7 += 56;
    }

    while (v8 + 56 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1B553FA38(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 40);
    do
    {
      std::__list_imp<char *>::clear(v5);
      v5 -= 7;
      v4 += 56;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::StateIterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = &unk_1F2D1AE80;
  *(a1 + 8) = v3;
  v4 = *(v3 + 136);
  *(a1 + 32) = 0;
  (*(*v4 + 128))(v4, a1 + 16);
  *(a1 + 40) = 0;
  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;
  fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::CheckSuperfinal(a1);
  return a1;
}

void sub_1B553FAF8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::StateIterator(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::CheckSuperfinal(uint64_t result)
{
  v1 = *(result + 8);
  if (*(v1 + 156) == 1)
  {
    v2 = result;
    if ((*(result + 44) & 1) == 0)
    {
      result = *(result + 16);
      if (result)
      {
        result = (*(*result + 16))(result);
        if (result)
        {
          return result;
        }

        v1 = *(v2 + 8);
      }

      else if (*(v2 + 32) >= *(v2 + 24))
      {
        return result;
      }

      v3 = (*(**(v1 + 136) + 32))(*(v1 + 136), *(v2 + 40));
      v4 = 0;
      v5 = v3;
      v6 = -1;
      fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>::operator()(&v4, &v7);
      if (v7)
      {
        *(v2 + 44) = 1;
      }

      return std::__list_imp<char *>::clear(v8);
    }
  }

  return result;
}

void *fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D1AE80;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D1AE80;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Next(uint64_t a1)
{
  ++*(a1 + 40);
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*result + 16))(result);
    if ((result & 1) == 0)
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        (*(*v3 + 32))(v3);
LABEL_7:

        return fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::CheckSuperfinal(a1);
      }

LABEL_6:
      ++*(a1 + 32);
      goto LABEL_7;
    }
  }

  else if (*(a1 + 32) < *(a1 + 24))
  {
    goto LABEL_6;
  }

  if (*(a1 + 44) == 1)
  {
    *(a1 + 44) = 0;
  }

  return result;
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Reset(uint64_t a1)
{
  *(a1 + 40) = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;

  return fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::CheckSuperfinal(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::InitArcIterator(uint64_t a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::InitArcIterator(a1, a2, a3);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 120);
  if (*(v3 + 76) == a2)
  {
    v4 = (v3 + 80);
  }

  else
  {
    v4 = (*(v3 + 8) + 8 * a2 + 8);
  }

  v5 = *v4;
  v8 = *(v5 + 84);
  v6 = (v5 + 84);
  v7 = v8;
  v9 = *(v6 - 7);
  v10 = 0x6DB6DB6DB6DB6DB7 * ((*(v6 - 5) - v9) >> 3);
  if (*(v6 - 5) == v9)
  {
    v9 = 0;
  }

  *a3 = 0;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v6;
  *v6 = v7 + 1;
  return result;
}

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D1ADD0;
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

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D1AB30;
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

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::One()
{
  {
    operator new();
  }

  return fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::One(void)::one;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::One()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::One(void)::one;
}

void sub_1B55401C4(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  MEMORY[0x1B8C85350](v1, 0x1020C4067685F46);
  _Unwind_Resume(a1);
}

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(uint64_t a1, int *a2, float a3)
{
  v6 = *a2;
  std::list<int>::list(v7, (a2 + 2));
  fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::ProductWeight(a1, &v6, a3);
  std::__list_imp<char *>::clear(v7);
  return a1;
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::ProductWeight(uint64_t a1, int *a2, float a3)
{
  v6 = *a2;
  std::list<int>::list(v7, (a2 + 2));
  *a1 = v6;
  std::list<int>::list((a1 + 8), v7);
  *(a1 + 32) = a3;
  std::__list_imp<char *>::clear(v7);
  return a1;
}

void *fst::Divide<int>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 == 1)
  {

    return fst::DivideRight<int,(fst::StringType)1>(a1, a2, a4);
  }

  else
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v6 = fst::LogMessage::LogMessage(&v12, __p);
    v7 = fst::cerr(v6);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "StringWeight::Divide: only right division is defined ", 53);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "for the right string semiring", 29);
    fst::LogMessage::~LogMessage(&v12);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = fst::StringWeight<int,(fst::StringType)1>::NoWeight();
    *a4 = *v9;
    return std::list<int>::list((a4 + 8), (v9 + 2));
  }
}

void sub_1B5540400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *fst::DivideRight<int,(fst::StringType)1>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 && (*a1 == -2 ? (v6 = *(a1 + 24) == 0) : (v6 = 0), v6) || *a2 && (*a2 == -2 ? (v7 = *(a2 + 3) == 0) : (v7 = 0), v7))
  {
    v17 = fst::StringWeight<int,(fst::StringType)1>::NoWeight();
LABEL_26:
    *a3 = *v17;

    return std::list<int>::list((a3 + 8), (v17 + 2));
  }

  else
  {
    v8 = fst::StringWeight<int,(fst::StringType)1>::Zero();
    v9 = *a2;
    if (*a2)
    {
      v10 = *(a2 + 3) + 1;
    }

    else
    {
      v10 = 0;
    }

    if (*v8)
    {
      v11 = *(v8 + 24) + 1;
    }

    else
    {
      v11 = 0;
    }

    if (v10 == v11)
    {
      v12 = (a2 + 4);
      v13 = (v8 + 16);
      for (i = 1; ; i = 0)
      {
        v15 = *v12;
        v16 = *v13;
        if (i)
        {
          if (!v9)
          {
            break;
          }

          if (v9 != *v8)
          {
            goto LABEL_29;
          }
        }

        if (v15 == a2 + 2)
        {
          break;
        }

        if (*(v15 + 16) != *(v16 + 16))
        {
          goto LABEL_29;
        }

        v12 = (v15 + 8);
        v13 = (v16 + 8);
      }

      return fst::StringWeight<int,(fst::StringType)1>::StringWeight(a3, -2);
    }

    else
    {
LABEL_29:
      result = fst::StringWeight<int,(fst::StringType)1>::Zero();
      v19 = *a1;
      if (*a1)
      {
        v20 = *(a1 + 24) + 1;
      }

      else
      {
        v20 = 0;
      }

      if (*result)
      {
        v21 = result[3] + 1;
      }

      else
      {
        v21 = 0;
      }

      if (v20 == v21)
      {
        v22 = (a1 + 16);
        v23 = result + 2;
        for (j = 1; ; j = 0)
        {
          v25 = *v22;
          v26 = *v23;
          if (j)
          {
            if (!v19)
            {
              goto LABEL_56;
            }

            if (v19 != *result)
            {
              break;
            }
          }

          if (v25 == a1 + 8)
          {
LABEL_56:
            v17 = fst::StringWeight<int,(fst::StringType)1>::Zero();
            goto LABEL_26;
          }

          if (*(v25 + 16) != *(v26 + 16))
          {
            goto LABEL_43;
          }

          v22 = (v25 + 8);
          v23 = (v26 + 8);
        }

        *(a3 + 8) = a3 + 8;
        *(a3 + 16) = a3 + 8;
        *(a3 + 24) = 0;
        *a3 = 0;
      }

      else
      {
LABEL_43:
        *(a3 + 8) = a3 + 8;
        *(a3 + 16) = a3 + 8;
        *(a3 + 24) = 0;
        *a3 = 0;
        if (!v19)
        {
          return result;
        }
      }

      v27 = 0;
      v28 = (a1 + 8);
      while (1)
      {
        if (!*a2 || *(a2 + 3) + 1 <= v27)
        {
          v29 = a1;
          if (v28 != *(a1 + 16))
          {
            v29 = (*v28 + 16);
          }

          result = fst::StringWeight<int,(fst::StringType)1>::PushFront(a3, *v29);
        }

        if (v28 == *(a1 + 16))
        {
          break;
        }

        v28 = *v28;
        ++v27;
      }
    }
  }

  return result;
}

void fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::~FactorWeightFst(void *a1)
{
  fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

void sub_1B5540C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  v21 = v19;
  v22 = (v19 - 5);
  v23 = *v21;
  if (*v21)
  {
    v18[30] = v23;
    operator delete(v23);
  }

  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::~__hash_table(v22);
  std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>::__destroy_vector::operator()[abi:ne200100](&__p);
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::~CacheBaseImpl(v18);
  _Unwind_Resume(a1);
}

void fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::~FactorWeightFstImpl(uint64_t a1)
{
  fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::~FactorWeightFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__list_imp<char *>::clear(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 48;
        std::__list_imp<char *>::clear(v4 - 4);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::~FactorWeightFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D1AFC8;
  v2 = *(a1 + 136);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 232);
  if (v3)
  {
    *(a1 + 240) = v3;
    operator delete(v3);
  }

  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::~__hash_table(a1 + 192);
  v5 = (a1 + 168);
  std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>::__destroy_vector::operator()[abi:ne200100](&v5);
  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::~CacheBaseImpl(a1);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      result = (*(**(a1 + 136) + 24))(*(a1 + 136));
      if (result == -1)
      {
        return result;
      }

      v3 = (*(**(a1 + 136) + 24))(*(a1 + 136));
      v4 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
      v6 = *v4;
      std::list<int>::list(v7, (v4 + 2));
      v8 = v4[8];
      v9[0] = v3;
      v9[2] = v6;
      std::list<int>::list(v10, v7);
      v11 = v8;
      State = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::FindState(a1, v9);
      std::__list_imp<char *>::clear(v10);
      std::__list_imp<char *>::clear(v7);
      *(a1 + 64) = State;
      *(a1 + 60) = 1;
      if (*(a1 + 68) <= State)
      {
        *(a1 + 68) = State + 1;
      }
    }
  }

  return *(a1 + 64);
}

void sub_1B55410B0(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v1 + 16));
  std::__list_imp<char *>::clear((v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::FindState(uint64_t a1, int *a2)
{
  if ((*(a1 + 148) & 2) != 0)
  {
    goto LABEL_21;
  }

  v4 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
  v5 = a2[2];
  v6 = v5 ? *(a2 + 4) + 1 : 0;
  v7 = *v4 ? *(v4 + 24) + 1 : 0;
  if (v6 != v7)
  {
    goto LABEL_21;
  }

  v8 = (a2 + 6);
  v9 = (v4 + 16);
  for (i = 1; ; i = 0)
  {
    v11 = *v8;
    v12 = *v9;
    if (i)
    {
      if (!v5)
      {
        break;
      }

      if (v5 != *v4)
      {
        goto LABEL_21;
      }
    }

    if (v11 == a2 + 4)
    {
      break;
    }

    if (*(v11 + 16) != *(v12 + 16))
    {
      goto LABEL_21;
    }

    v8 = (v11 + 8);
    v9 = (v12 + 8);
  }

  v24[0] = a2[10];
  v28 = *(v4 + 32);
  v13 = *a2;
  if (*v24 != v28 || v13 == -1)
  {
LABEL_21:
    v15 = std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::find<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>((a1 + 192), a2);
    if (v15)
    {
      return *(v15 + 16);
    }

    else
    {
      v16 = -1431655765 * ((*(a1 + 176) - *(a1 + 168)) >> 4);
      std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>::push_back[abi:ne200100]((a1 + 168), a2);
      v17 = a2[2];
      v24[0] = *a2;
      v24[2] = v17;
      std::list<int>::list(v25, (a2 + 4));
      v26 = a2[10];
      v27 = v16;
      std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::__emplace_unique_key_args<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::pair<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element const,int>>((a1 + 192), v24);
      std::__list_imp<char *>::clear(v25);
    }
  }

  else
  {
    v19 = v13;
    v20 = *(a1 + 232);
    if (v13 >= ((*(a1 + 240) - v20) >> 2))
    {
      do
      {
        std::vector<int>::push_back[abi:ne200100]((a1 + 232), &fst::kNoStateId);
        v20 = *(a1 + 232);
        v13 = *a2;
        v19 = *a2;
      }

      while (v19 >= (*(a1 + 240) - v20) >> 2);
    }

    if (*(v20 + 4 * v19) == -1)
    {
      v21 = *(a1 + 168);
      v22 = *(a1 + 176);
      v23 = (a1 + 168);
      *(v20 + 4 * v19) = -1431655765 * ((v22 - v21) >> 4);
      std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>::push_back[abi:ne200100](v23, a2);
      v13 = *a2;
      v20 = v23[8];
    }

    return *(v20 + 4 * v13);
  }

  return v16;
}

uint64_t std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>::push_back[abi:ne200100](uint64_t *a1, _DWORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>::__emplace_back_slow_path<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element const&>(a1, a2);
  }

  else
  {
    std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>::__construct_one_at_end[abi:ne200100]<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element const&>(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

void *std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>::__construct_one_at_end[abi:ne200100]<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element const&>(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 8) = a2[2];
  result = std::list<int>::list((v4 + 16), (a2 + 4));
  *(v4 + 40) = a2[10];
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>::__emplace_back_slow_path<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element const&>(uint64_t *a1, _DWORD *a2)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>(a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  *(v7 + 8) = a2[2];
  std::list<int>::list((v7 + 16), (a2 + 4));
  *(v7 + 40) = a2[10];
  *&v16 = v16 + 48;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element> &>::~__split_buffer(&v14);
  return v13;
}

void sub_1B55414AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      v9 = (a4 + v7);
      *v9 = *(v6 + v7);
      v9[2] = *(v6 + v7 + 8);
      result = std::list<int>::list((a4 + v7 + 16), v6 + v7 + 16);
      v9[10] = *(v6 + v7 + 40);
      v7 += 48;
    }

    while (v8 + 48 != a3);
    while (v6 != a3)
    {
      result = std::__list_imp<char *>::clear((v6 + 16));
      v6 += 48;
    }
  }

  return result;
}

void sub_1B55415B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 32);
    do
    {
      std::__list_imp<char *>::clear(v5);
      v5 -= 6;
      v4 += 48;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__list_imp<char *>::clear((i - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::find<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>(void *a1, int *a2)
{
  v4 = *a2;
  v5 = fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Hash(a2 + 2);
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = v5 + 7853 * v4;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5 + 7853 * v4;
    if (v7 >= *&v6)
    {
      v10 = v7 % *&v6;
    }
  }

  else
  {
    v10 = (*&v6 - 1) & v7;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    do
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        if (std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>::operator()[abi:ne200100](a1, (v12 + 2), a2))
        {
          return v12;
        }
      }

      else
      {
        if (v9 > 1)
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

        if (v13 != v10)
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

BOOL std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 != *a3)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v4 = v3 ? *(a2 + 32) + 1 : 0;
  v5 = *(a3 + 8);
  v6 = v5 ? *(a3 + 32) + 1 : 0;
  if (v4 != v6)
  {
    return 0;
  }

  v7 = (a2 + 24);
  v8 = (a3 + 24);
  for (i = 1; ; i = 0)
  {
    v10 = *v7;
    v11 = *v8;
    if (i)
    {
      if (!v3)
      {
        return *(a2 + 40) == *(a3 + 40);
      }

      if (v3 != v5)
      {
        break;
      }
    }

    if (v10 == a2 + 16)
    {
      return *(a2 + 40) == *(a3 + 40);
    }

    if (*(v10 + 16) != *(v11 + 16))
    {
      break;
    }

    v7 = (v10 + 8);
    v8 = (v11 + 8);
  }

  return 0;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Hash(int *a1)
{
  v1 = 0;
  v2 = *(a1 + 2);
  if (*a1)
  {
    v3 = *a1;
    while (1)
    {
      v1 ^= v3;
      if (v2 == a1 + 2)
      {
        break;
      }

      v3 = *(v2 + 16) ^ (2 * v1);
      v2 = *(v2 + 8);
    }
  }

  return a1[8] ^ __ROR8__(v1, 59);
}

void *std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::__emplace_unique_key_args<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::pair<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element const,int>>(void *a1, int *a2)
{
  v4 = *a2;
  v5 = fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Hash(a2 + 2) + 7853 * v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v5 >= *&v6)
    {
      v9 = v5 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v5;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::__construct_node_hash<std::pair<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element const,int>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>::operator()[abi:ne200100](a1, (v11 + 2), a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1B5541AA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__list_imp<char *>::clear(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

void *fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasFinal(a1, a2) & 1) == 0)
  {
    v6 = (*(a1 + 168) + 48 * a2);
    if (*v6 == -1)
    {
      v26 = v6[2];
      std::list<int>::list(v27, (v6 + 4));
      v28 = *(v6 + 10);
    }

    else
    {
      (*(**(a1 + 136) + 32))(&v22);
      fst::Times<int,(fst::StringType)1>(v6 + 2, &v22, &v29);
      v7 = *(v6 + 10);
      v8 = NAN;
      if (v7 != -INFINITY)
      {
        v8 = NAN;
        if (v24 != -INFINITY)
        {
          v8 = INFINITY;
          v9 = v24 == INFINITY || v7 == INFINITY;
          v10 = v7 + v24;
          if (!v9)
          {
            v8 = v10;
          }
        }
      }

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v26, &v29, v8);
      std::__list_imp<char *>::clear(v30);
      std::__list_imp<char *>::clear(v23);
    }

    LODWORD(v22) = v26;
    std::list<int>::list(v23, v27);
    v24 = v28;
    if (v26)
    {
      v11 = (v27[2] + 1) >= 2;
    }

    else
    {
      v11 = 0;
    }

    v12 = !v11;
    v25 = v12;
    if ((*(a1 + 148) & 1) == 0 || v12)
    {
      v19 = v26;
      v14 = v20;
      std::list<int>::list(v20, v27);
      v21 = v28;
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetFinal(a1, a2, &v19);
    }

    else
    {
      v13 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
      v16 = *v13;
      v14 = v17;
      std::list<int>::list(v17, (v13 + 2));
      v18 = v13[8];
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetFinal(a1, a2, &v16);
    }

    std::__list_imp<char *>::clear(v14);
    std::__list_imp<char *>::clear(v23);
    std::__list_imp<char *>::clear(v27);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Final(a1, a2, a3);
}

void sub_1B5541DDC(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v1);
  std::__list_imp<char *>::clear((v3 + 8));
  std::__list_imp<char *>::clear((v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::NumArcs(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return 0x6DB6DB6DB6DB6DB7 * ((*(*v5 + 64) - *(*v5 + 56)) >> 3);
}

void *fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Expand(uint64_t a1, int a2)
{
  v3 = *(a1 + 168) + 48 * a2;
  v80 = *v3;
  v81 = *(v3 + 8);
  std::list<int>::list(v82, v3 + 16);
  v83 = *(v3 + 40);
  if (v80 == -1)
  {
    goto LABEL_33;
  }

  v4 = *(a1 + 136);
  v79 = 0;
  (*(*v4 + 136))(v4);
  while (1)
  {
    if (!v76)
    {
      if (v79 >= v77[1])
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    if ((*(*v76 + 24))(v76))
    {
      break;
    }

    if (v76)
    {
      v5 = (*(*v76 + 32))(v76);
      goto LABEL_9;
    }

LABEL_8:
    v5 = v77[0] + 56 * v79;
LABEL_9:
    fst::Times<int,(fst::StringType)1>(&v81, v5 + 8, &v57);
    v6 = NAN;
    if (v83 != -INFINITY)
    {
      v7 = *(v5 + 40);
      v6 = NAN;
      if (v7 != -INFINITY)
      {
        v6 = INFINITY;
        if (v7 != INFINITY && v83 != INFINITY)
        {
          v6 = v83 + v7;
        }
      }
    }

    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v73, &v57, v6);
    std::__list_imp<char *>::clear(&v58);
    v69 = *&v73;
    std::list<int>::list(v70, v74);
    v71 = v75;
    v10 = *&v73 == 0.0 || (v74[2] + 1) < 2;
    v72 = v10;
    if (*(a1 + 148) & 2) == 0 || (v10)
    {
      v15 = *(v5 + 48);
      v16 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
      v66 = *v16;
      std::list<int>::list(v67, (v16 + 2));
      v68 = v16[8];
      LODWORD(v57) = v15;
      LODWORD(v58) = v66;
      std::list<int>::list(v59, v67);
      v61 = v68;
      LODWORD(v16) = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::FindState(a1, &v57);
      std::__list_imp<char *>::clear(v59);
      std::__list_imp<char *>::clear(v67);
      v17 = *v5;
      v63 = v73;
      std::list<int>::list(v64, v74);
      v65 = v75;
      v57 = v17;
      LODWORD(v58) = v63;
      std::list<int>::list(v59, v64);
      v61 = v65;
      LODWORD(v62[0]) = v16;
      MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>>::GetMutableState(*(a1 + 120), a2);
      std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::push_back[abi:ne200100]((MutableState + 56), &v57);
      std::__list_imp<char *>::clear(v59);
      std::__list_imp<char *>::clear(v64);
    }

    else
    {
      fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Value(&v69, &v57);
      v11 = *(v5 + 48);
      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Quantize(&v61, &v54, *(a1 + 144));
      LODWORD(v49) = v11;
      LODWORD(v50) = v54;
      std::list<int>::list(v51, v55);
      v52 = v56;
      State = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::FindState(a1, &v49);
      std::__list_imp<char *>::clear(v51);
      std::__list_imp<char *>::clear(v55);
      v13 = *v5;
      v46 = v57;
      std::list<int>::list(v47, &v58);
      v48 = v60;
      v49 = v13;
      LODWORD(v50) = v46;
      std::list<int>::list(v51, v47);
      v52 = v48;
      v53 = State;
      v14 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>>::GetMutableState(*(a1 + 120), a2);
      std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::push_back[abi:ne200100]((v14 + 56), &v49);
      std::__list_imp<char *>::clear(v51);
      std::__list_imp<char *>::clear(v47);
      std::__list_imp<char *>::clear(v62);
      std::__list_imp<char *>::clear(&v58);
      v72 = 1;
    }

    std::__list_imp<char *>::clear(v70);
    std::__list_imp<char *>::clear(v74);
    if (v76)
    {
      (*(*v76 + 40))(v76);
    }

    else
    {
      ++v79;
    }
  }

  if (v76)
  {
    (*(*v76 + 8))(v76);
    goto LABEL_33;
  }

LABEL_31:
  if (v78)
  {
    --*v78;
  }

LABEL_33:
  if (*(a1 + 148))
  {
    if (v80 == -1)
    {
      goto LABEL_65;
    }

    (*(**(a1 + 136) + 32))(&v57);
    v19 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
    v20 = v57 ? v59[1] + 1 : 0;
    v21 = *v19 ? *(v19 + 24) + 1 : 0;
    if (v20 == v21)
    {
      v22 = v59[0];
      v23 = (v19 + 16);
      if (v57)
      {
        v24 = v57 == *v19;
      }

      else
      {
        v24 = 0;
      }

      v25 = !v24;
      v26 = 1;
      v27 = v25 ^ 1;
      while (1)
      {
        v28 = *v23;
        if ((v26 & 1) != 0 && !v27)
        {
          break;
        }

        if (v22 == &v58)
        {
          goto LABEL_77;
        }

        if (*(v22 + 16) != *(v28 + 16))
        {
          goto LABEL_55;
        }

        v26 = 0;
        v22 = *(v22 + 8);
        v23 = (v28 + 8);
      }

      if (v57)
      {
        goto LABEL_55;
      }

LABEL_77:
      *&v49 = v60;
      v69 = *(v19 + 32);
      v37 = v60;
      v38 = v69;
      std::__list_imp<char *>::clear(&v58);
      if (v37 == v38)
      {
        goto LABEL_76;
      }
    }

    else
    {
LABEL_55:
      std::__list_imp<char *>::clear(&v58);
    }

    if (v80 == -1)
    {
LABEL_65:
      LODWORD(v76) = v81;
      std::list<int>::list(v77, v82);
      *&v79 = v83;
    }

    else
    {
      (*(**(a1 + 136) + 32))(&v57);
      fst::Times<int,(fst::StringType)1>(&v81, &v57, &v49);
      v29 = NAN;
      if (v83 != -INFINITY)
      {
        v29 = NAN;
        if (v60 != -INFINITY)
        {
          v29 = INFINITY;
          if (v60 != INFINITY && v83 != INFINITY)
          {
            v29 = v83 + v60;
          }
        }
      }

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v76, &v49, v29);
      std::__list_imp<char *>::clear(&v50);
      std::__list_imp<char *>::clear(&v58);
    }

    v31 = *(a1 + 152);
    v69 = *&v76;
    std::list<int>::list(v70, v77);
    v71 = v79;
    if (v76)
    {
      v32 = v78 + 1 >= 2;
    }

    else
    {
      v32 = 0;
    }

    v33 = !v32;
    v72 = v33;
    if (v32)
    {
      fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Value(&v69, &v57);
      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Quantize(&v61, &v43, *(a1 + 144));
      LODWORD(v49) = -1;
      LODWORD(v50) = v43;
      std::list<int>::list(v51, v44);
      v52 = v45;
      v34 = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::FindState(a1, &v49);
      std::__list_imp<char *>::clear(v51);
      std::__list_imp<char *>::clear(v44);
      v40 = v57;
      std::list<int>::list(v41, &v58);
      v42 = v60;
      v49 = v31;
      LODWORD(v50) = v40;
      std::list<int>::list(v51, v41);
      v52 = v42;
      v53 = v34;
      v35 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>>::GetMutableState(*(a1 + 120), a2);
      std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::push_back[abi:ne200100]((v35 + 56), &v49);
      std::__list_imp<char *>::clear(v51);
      std::__list_imp<char *>::clear(v41);
      std::__list_imp<char *>::clear(v62);
      std::__list_imp<char *>::clear(&v58);
      v72 = 1;
    }

    std::__list_imp<char *>::clear(v70);
    std::__list_imp<char *>::clear(v77);
  }

LABEL_76:
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetArcs(a1, a2);
  return std::__list_imp<char *>::clear(v82);
}

void sub_1B554267C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  std::__list_imp<char *>::clear((v39 + 8));
  std::__list_imp<char *>::clear(&a39);
  std::__list_imp<char *>::clear((v40 - 136));
  _Unwind_Resume(a1);
}

void *fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Value@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = *a1;
  std::list<int>::list(v38, (a1 + 2));
  if (*a1)
  {
    v4 = (*(a1 + 3) + 1) >= 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = !v4;
  v39 = v5;
  fst::StringFactor<int,(fst::StringType)1>::Value(&v37, &v24);
  v32 = v24;
  v33[0] = v33;
  v33[1] = v33;
  v34 = 0;
  v6 = v27;
  if (v27)
  {
    v8 = v25;
    v7 = v26;
    v9 = *(v25 + 8);
    v10 = *v26;
    *(v10 + 8) = v9;
    *v9 = v10;
    v11 = v33[0];
    *(v33[0] + 8) = v7;
    *v7 = v11;
    v33[0] = v8;
    *(v8 + 8) = v33;
    v34 = v6;
    v27 = 0;
  }

  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v35, &v32, *(a1 + 8));
  std::__list_imp<char *>::clear(v33);
  std::__list_imp<char *>::clear(&v29);
  std::__list_imp<char *>::clear(&v25);
  fst::StringFactor<int,(fst::StringType)1>::Value(&v37, &v24);
  v19 = v28;
  v20[0] = v20;
  v20[1] = v20;
  v21 = 0;
  v12 = v31;
  if (v31)
  {
    v14 = v29;
    v13 = v30;
    v15 = *(v29 + 8);
    v16 = *v30;
    *(v16 + 8) = v15;
    *v15 = v16;
    v17 = v20[0];
    *(v20[0] + 8) = v13;
    *v13 = v17;
    v20[0] = v14;
    *(v14 + 8) = v20;
    v21 = v12;
    v31 = 0;
  }

  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v22, &v19, 0.0);
  std::__list_imp<char *>::clear(v20);
  std::__list_imp<char *>::clear(&v29);
  std::__list_imp<char *>::clear(&v25);
  std::pair<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::pair[abi:ne200100]<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>&,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>&,0>(a2, &v35, &v22);
  std::__list_imp<char *>::clear(v23);
  std::__list_imp<char *>::clear(v36);
  return std::__list_imp<char *>::clear(v38);
}

void sub_1B5542A34(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v1 + 8));
  std::__list_imp<char *>::clear((v3 - 120));
  std::__list_imp<char *>::clear((v2 + 8));
  _Unwind_Resume(a1);
}

void *fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Quantize@<X0>(float *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Quantize(a1, &v5, a3);
  *a2 = v5;
  std::list<int>::list((a2 + 8), v6);
  *(a2 + 32) = v7;
  return std::__list_imp<char *>::clear(v6);
}

void *fst::StringFactor<int,(fst::StringType)1>::Value@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + 8;
  v4 = *(a1 + 16);
  fst::StringWeight<int,(fst::StringType)1>::StringWeight(&v9, *a1);
  v8[0] = v8;
  v8[1] = v8;
  v8[2] = 0;
  v7 = 0;
  if (v4 != v3)
  {
    for (i = 0; ; i = v7)
    {
      if (i)
      {
        operator new();
      }

      v7 = *(v4 + 16);
      v4 = *(v4 + 8);
      if (v4 == v3)
      {
        break;
      }
    }
  }

  std::pair<fst::StringWeight<int,(fst::StringType)1>,fst::StringWeight<int,(fst::StringType)1>>::pair[abi:ne200100]<fst::StringWeight<int,(fst::StringType)1>&,fst::StringWeight<int,(fst::StringType)1>&,0>(a2, &v9, &v7);
  std::__list_imp<char *>::clear(v8);
  return std::__list_imp<char *>::clear(v10);
}

void sub_1B5542C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__list_imp<char *>::clear(v6);
  std::__list_imp<char *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<fst::StringWeight<int,(fst::StringType)1>,fst::StringWeight<int,(fst::StringType)1>>::pair[abi:ne200100]<fst::StringWeight<int,(fst::StringType)1>&,fst::StringWeight<int,(fst::StringType)1>&,0>(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  *a1 = *a2;
  std::list<int>::list((a1 + 8), (a2 + 2));
  *(a1 + 32) = *a3;
  std::list<int>::list((a1 + 40), (a3 + 2));
  return a1;
}

uint64_t std::pair<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::pair[abi:ne200100]<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>&,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>&,0>(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  *a1 = *a2;
  std::list<int>::list((a1 + 8), (a2 + 2));
  *(a1 + 32) = a2[8];
  *(a1 + 40) = *a3;
  std::list<int>::list((a1 + 48), (a3 + 2));
  *(a1 + 72) = a3[8];
  return a1;
}

void *fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Quantize@<X0>(float *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Quantize(a1, &v5, a3);
  *a2 = v5;
  std::list<int>::list((a2 + 8), v6);
  *(a2 + 32) = v7;
  return std::__list_imp<char *>::clear(v6);
}

void *fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Quantize@<X0>(float *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v8 = *a1;
  std::list<int>::list(v9, (a1 + 2));
  v6 = a1[8];
  if ((LODWORD(v6) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v6 = floorf((v6 / a3) + 0.5) * a3;
  }

  *a2 = v8;
  std::list<int>::list((a2 + 8), v9);
  *(a2 + 32) = v6;
  return std::__list_imp<char *>::clear(v9);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::NumInputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
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

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 48);
}

void *fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::ImplToFst(void *result, uint64_t a2, int a3)
{
  *result = &unk_1F2D1B018;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

void sub_1B55430EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v19 = *v17;
  if (*v17)
  {
    v15[30] = v19;
    operator delete(v19);
  }

  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::~__hash_table(v16 + 24);
  __p = v16;
  std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>::__destroy_vector::operator()[abi:ne200100](&__p);
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::~CacheBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::CacheStateIterator<fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>>::Done(uint64_t a1)
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
    fst::ArcIterator<fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>>::ArcIterator(&v19, *(a1 + 8), v6);
    v7 = *(v19 + 56);
    v8 = 0x6DB6DB6DB6DB6DB7 * ((*(v19 + 64) - v7) >> 3);
    v9 = *(a1 + 16);
    v10 = v8 - v20;
    if (v8 > v20)
    {
      v11 = *(v9 + 68);
      v12 = (v7 + 56 * v20 + 48);
      do
      {
        v14 = *v12;
        v12 += 14;
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
    --*(v19 + 84);
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

uint64_t *fst::ArcIterator<fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>>::ArcIterator(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 84);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Expand(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::InitArcIterator(uint64_t a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::InitArcIterator(a1, a2, a3);
}

uint64_t fst::ArcMap<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a2 + 224))(a2);
  v6 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v6);
  (*(*a2 + 288))(a2, 0);
  v7 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  result = (*(*a1 + 24))(a1);
  if (result == -1)
  {
    if ((v7 & 4) != 0)
    {
      v18 = *(*a2 + 192);

      return v18(a2, 4, 4);
    }

    return result;
  }

  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v9 = fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>(a1) != -1;
    (*(*a2 + 248))(a2, v9);
  }

  LODWORD(v24) = 0;
  (*(*a1 + 128))(a1, &v22);
  while (!v22)
  {
    if (v24 >= v23)
    {
      goto LABEL_14;
    }

LABEL_9:
    (*(*a2 + 200))(a2);
    if (v22)
    {
      (*(*v22 + 32))(v22);
    }

    else
    {
      LODWORD(v24) = v24 + 1;
    }
  }

  if (!(*(*v22 + 16))(v22))
  {
    goto LABEL_9;
  }

  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

LABEL_14:
  v33 = 0;
  (*(*a1 + 128))(a1, &v31);
  LODWORD(v10) = -1;
  while (2)
  {
    if (!v31)
    {
      if (v33 >= v32)
      {
        goto LABEL_47;
      }

      goto LABEL_20;
    }

    if (!(*(*v31 + 16))(v31))
    {
      if (v31)
      {
        v11 = (*(*v31 + 24))(v31);
        goto LABEL_21;
      }

LABEL_20:
      v11 = v33;
LABEL_21:
      if (v11 == (*(*a1 + 24))(a1))
      {
        (*(*a2 + 176))(a2, v11);
      }

      v12 = (*(*a1 + 40))(a1, v11);
      (*(*a2 + 256))(a2, v11, v12);
      v26 = 0;
      (*(*a1 + 136))(a1, v11, &v22);
LABEL_24:
      if (v22)
      {
        if ((*(*v22 + 24))(v22))
        {
          if (v22)
          {
            (*(*v22 + 8))();
            goto LABEL_37;
          }

LABEL_35:
          if (v25)
          {
            --*v25;
          }

LABEL_37:
          (*(*a1 + 32))(&v19, a1, v11);
          v22 = 0;
          LODWORD(v23) = v19;
          std::list<int>::list(&v24, v20);
          v27 = v21;
          v28 = -1;
          v29 = fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>::operator()(a3, &v22);
          v30 = v15;
          std::__list_imp<char *>::clear(&v24);
          std::__list_imp<char *>::clear(v20);
          if (v29)
          {
            if (v10 == -1)
            {
              v10 = (*(*a2 + 200))(a2);
              (*(*a2 + 184))(a2, v10, 0.0);
            }

            HIDWORD(v30) = v10;
            (*(*a2 + 208))(a2, v11, &v29);
            (*(*a2 + 184))(a2, v11, INFINITY);
          }

          else
          {
            (*(*a2 + 184))(a2, v11, *&v30);
          }

          if (v31)
          {
            (*(*v31 + 32))(v31);
          }

          else
          {
            ++v33;
          }

          continue;
        }

        if (v22)
        {
          v13 = (*(*v22 + 32))();
          goto LABEL_30;
        }
      }

      else if (v26 >= v24)
      {
        goto LABEL_35;
      }

      v13 = (v23 + 56 * v26);
LABEL_30:
      v29 = fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>::operator()(a3, v13);
      v30 = v14;
      (*(*a2 + 208))(a2, v11, &v29);
      if (v22)
      {
        (*(*v22 + 40))(v22);
      }

      else
      {
        ++v26;
      }

      goto LABEL_24;
    }

    break;
  }

  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

LABEL_47:
  v16 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v17 = v7 & 0x2EBC21080007;
  if (*(a3 + 4))
  {
    v17 = v7 & 0x2EBC21080003 | 4;
  }

  return (*(*a2 + 192))(a2, v17 | v16, 0x3FFFFFFF0007);
}

void sub_1B5543C98(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 16));
  std::__list_imp<char *>::clear((v1 + 8));
  v5 = *(v3 - 104);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  _Unwind_Resume(a1);
}

unint64_t fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>::operator()(int *a1, unsigned int *a2)
{
  if (a2[12] != -1)
  {
    goto LABEL_18;
  }

  v4 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
  v5 = a2[2];
  v6 = v5 ? *(a2 + 4) + 1 : 0;
  v7 = *v4 ? *(v4 + 24) + 1 : 0;
  if (v6 != v7)
  {
    goto LABEL_18;
  }

  v8 = (a2 + 6);
  v9 = (v4 + 16);
  for (i = 1; ; i = 0)
  {
    v11 = *v8;
    v12 = *v9;
    if (i)
    {
      if (!v5)
      {
        break;
      }

      if (v5 != *v4)
      {
        goto LABEL_18;
      }
    }

    if (v11 == a2 + 4)
    {
      break;
    }

    if (*(v11 + 16) != *(v12 + 16))
    {
      goto LABEL_18;
    }

    v8 = (v11 + 8);
    v9 = (v12 + 8);
  }

  LODWORD(__p[0]) = a2[10];
  v29[0] = *(v4 + 32);
  if (*__p == v29[0])
  {
    v13 = 0;
    v14 = *a2;
  }

  else
  {
LABEL_18:
    v28 = -1;
    if (!fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>::Extract<(fst::GallicType)1>(a2 + 2, &v27, &v28) || (v14 = *a2, *a2 != a2[1]))
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      v15 = fst::LogMessage::LogMessage(&v26, __p);
      v16 = fst::cerr(v15);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "FromGallicMapper: unrepresentable weight: ", 42);
      fst::CompositeWeightWriter::CompositeWeightWriter(v29, v17);
      if (*FLAGS_fst_weight_parentheses)
      {
        v30 = *FLAGS_fst_weight_parentheses;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v29, &v30, 1);
      }

      fst::CompositeWeightWriter::WriteElement<fst::StringWeight<int,(fst::StringType)1>>(v29, a2 + 2);
      fst::CompositeWeightWriter::WriteElement<fst::LogWeightTpl<float>>(v29, a2 + 10);
      if (*FLAGS_fst_weight_parentheses)
      {
        v30 = *(FLAGS_fst_weight_parentheses + 1);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v29, &v30, 1);
      }

      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " for arc with ilabel = ", 23);
      v19 = MEMORY[0x1B8C84C00](v18, *a2);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", olabel = ", 11);
      v21 = MEMORY[0x1B8C84C00](v20, a2[1]);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", nextstate = ", 14);
      MEMORY[0x1B8C84C00](v22, a2[12]);
      fst::LogMessage::~LogMessage(&v26);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      *(a1 + 4) = 1;
      v14 = *a2;
    }

    if (!v14 && v28 && a2[12] == -1)
    {
      v14 = *a1;
    }

    v13 = v28 << 32;
  }

  return v13 | v14;
}

void sub_1B554400C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>::Extract<(fst::GallicType)1>(unsigned int *a1, unsigned int *a2, unsigned int *a3)
{
  v10 = *a1;
  std::list<int>::list(v11, (a1 + 2));
  v6 = a1[8];
  v7 = v10;
  if (!v10)
  {
    goto LABEL_7;
  }

  if (v12 == -1)
  {
    v7 = 0;
LABEL_7:
    *a3 = v7;
    *a2 = v6;
    v8 = 1;
    goto LABEL_8;
  }

  if (!v12 && v10 <= 0xFFFFFFFD)
  {
    goto LABEL_7;
  }

  v8 = 0;
LABEL_8:
  std::__list_imp<char *>::clear(v11);
  return v8;
}

void *fst::CompositeWeightWriter::WriteElement<fst::StringWeight<int,(fst::StringType)1>>(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  *(a1 + 8) = v4 + 1;
  if (v4 >= 1)
  {
    v5 = *a1;
    v7 = *FLAGS_fst_weight_separator;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v7, 1);
  }

  return fst::operator<<<int,(fst::StringType)1>(*a1, a2);
}

void *fst::CompositeWeightWriter::WriteElement<fst::LogWeightTpl<float>>(uint64_t a1, float *a2)
{
  v4 = *(a1 + 8);
  *(a1 + 8) = v4 + 1;
  if (v4 >= 1)
  {
    v5 = *a1;
    v9 = *FLAGS_fst_weight_separator;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v9, 1);
  }

  if (*a2 == INFINITY)
  {
    v6 = "Infinity";
    v7 = 8;
  }

  else
  {
    if (*a2 != -INFINITY)
    {
      return std::ostream::operator<<();
    }

    v6 = "-Infinity";
    v7 = 9;
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, v6, v7);
}

uint64_t fst::CompositeWeightWriter::CompositeWeightWriter(uint64_t a1, void *a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  if (strlen(FLAGS_fst_weight_separator) == 1)
  {
    if ((strlen(FLAGS_fst_weight_parentheses) | 2) == 2)
    {
      return a1;
    }

    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v4 = fst::LogMessage::LogMessage(&v13, __p);
    v5 = fst::cerr(v4);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "CompositeWeightWriter: ", 23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "FLAGS_fst_weight_parentheses.size() is not equal to 2", 53);
  }

  else
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v6 = fst::LogMessage::LogMessage(&v13, __p);
    v7 = fst::cerr(v6);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "CompositeWeightWriter: ", 23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "FLAGS_fst_weight_separator.size() is not equal to 1", 51);
  }

  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  std::ios_base::clear((a2 + *(*a2 - 24)), 1u);
  return a1;
}

void sub_1B55443B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *fst::operator<<<int,(fst::StringType)1>(void *a1, unsigned int *a2)
{
  v4 = a2 + 2;
  v3 = *a2;
  if (*a2 == -2)
  {
    v5 = "BadString";
    v6 = 9;
    goto LABEL_7;
  }

  if (v3 == -1)
  {
    v5 = "Infinity";
    v6 = 8;
    goto LABEL_7;
  }

  if (!v3)
  {
    v5 = "Epsilon";
    v6 = 7;
LABEL_7:

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v5, v6);
  }

  v9 = 0;
  v10 = *(a2 + 2);
  v11 = 1;
  if (*a2)
  {
    do
    {
      if (v9)
      {
        v12 = 95;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &v12, 1);
      }

      if (v11)
      {
        MEMORY[0x1B8C84C00](a1, *a2);
      }

      else
      {
        MEMORY[0x1B8C84C00](a1, *(v10 + 16));
        v10 = *(v10 + 8);
      }

      v11 = 0;
      --v9;
    }

    while (v10 != v4);
  }

  return a1;
}

void *fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D1B018;
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

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D1A240;
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

uint64_t fst::StateMap<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcSortMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ILabelCompare<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, void *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v6 = (*(**a2 + 24))();
    (*(*a1 + 176))(a1, v6);
    if ((*(*a1 + 160))(a1) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = fst::ArcSortMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ILabelCompare<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::SetState(a2, v7);
        (*(*a1 + 240))(a1, v7, v8);
        for (i = a2[5]; ; a2[5] = i)
        {
          v10 = a2[2];
          if (i >= (a2[3] - v10) >> 4)
          {
            break;
          }

          (*(*a1 + 208))(a1, v7, v10 + 16 * i);
          i = a2[5] + 1;
        }

        (*(**a2 + 32))(*a2, v7);
        (*(*a1 + 184))(a1, v7);
        v7 = (v7 + 1);
      }

      while (v7 < (*(*a1 + 160))(a1));
    }

    v11 = *(*a1 + 192);

    return v11(a1, v5 & 0x3FFF0FFF0007 | (((v5 >> 16) & 1) << 30) | 0x10000000, 0x3FFFFFFF0007);
  }

  return result;
}

double fst::ArcSortMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ILabelCompare<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::SetState(void *a1, uint64_t a2)
{
  a1[5] = 0;
  v4 = a1 + 2;
  a1[3] = a1[2];
  v5 = (*(**a1 + 40))(*a1);
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::reserve(v4, v5);
  v6 = *a1;
  v16 = 0;
  (*(*v6 + 136))(v6, a2, v14);
  while (1)
  {
    if (!v14[0])
    {
      if (v16 >= v14[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v8 = (v14[1] + 16 * v16);
      goto LABEL_8;
    }

    if ((*(*v14[0] + 24))(v14[0]))
    {
      break;
    }

    if (!v14[0])
    {
      goto LABEL_7;
    }

    v8 = (*(*v14[0] + 32))();
LABEL_8:
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](v4, v8);
    if (v14[0])
    {
      (*(*v14[0] + 40))(v14[0]);
    }

    else
    {
      ++v16;
    }
  }

  if (v14[0])
  {
    (*(*v14[0] + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (v15)
  {
    --*v15;
  }

LABEL_15:
  v9 = a1[2];
  v10 = a1[3];
  v11 = 126 - 2 * __clz(v10 - v9);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  *&result = std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,false>(v9, v10, v14, v12, 1, v7).n128_u64[0];
  return result;
}

void sub_1B5544AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ArcSortMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::SetState();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

void fst::RmEpsilon<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::AutoQueue<int>>(void *a1, void *a2, unint64_t *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 24))(a1) == -1)
  {
    return;
  }

  v6 = (*(*a1 + 160))(a1);
  LOBYTE(v33) = 0;
  std::vector<BOOL>::vector(&v32, v6);
  v7 = (*(*a1 + 24))(a1);
  v8 = 0;
  *(v32 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
LABEL_3:
  if (v8 < (*(*a1 + 160))(a1))
  {
    v37 = 0;
    (*(*a1 + 136))(a1, v8, &v33);
    while (v33)
    {
      if ((*(*v33 + 24))(v33))
      {
        if (v33)
        {
          (*(*v33 + 8))();
          goto LABEL_26;
        }

LABEL_24:
        if (v36)
        {
          --*v36;
        }

LABEL_26:
        v8 = (v8 + 1);
        goto LABEL_3;
      }

      if (!v33)
      {
        goto LABEL_12;
      }

      v9 = (*(*v33 + 32))();
      v10 = v33;
      if (*v9)
      {
        goto LABEL_15;
      }

      if (v33)
      {
        v11 = (*(*v33 + 32))();
        v10 = v33;
        goto LABEL_14;
      }

LABEL_13:
      v10 = 0;
      v11 = &v34[2 * v37];
LABEL_14:
      if (*(v11 + 4))
      {
LABEL_15:
        if (v10)
        {
          v12 = (*(*v10 + 32))(v10);
          v10 = v33;
        }

        else
        {
LABEL_17:
          v10 = 0;
          v12 = &v34[2 * v37];
        }

        *(v32 + ((*(v12 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v12 + 12);
      }

      if (v10)
      {
        (*(*v10 + 40))(v10);
      }

      else
      {
        ++v37;
      }
    }

    if (v37 >= v35)
    {
      goto LABEL_24;
    }

LABEL_12:
    if (LODWORD(v34[2 * v37]))
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  memset(&v31, 0, sizeof(v31));
  v13 = (*(*a1 + 160))(a1);
  std::vector<int>::reserve(&v31, v13);
  if (((*(*a1 + 64))(a1, 0x4000000000, 0) & 0x4000000000) == 0)
  {
    if (((*(*a1 + 64))(a1, 0x800000000, 0) & 0x800000000) == 0)
    {
      v30 = 0;
      v54 = 0;
      p_p = 0;
      v56 = 0;
      v34 = 0;
      v35 = 0;
      v33 = &v54;
      v36 = &v30;
      fst::DfsVisit<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::SccVisitor<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(a1, &v33);
    }

    v33 = 0;
    v34 = 0;
    v35 = 0;
    LOBYTE(__p) = 0;
    v54 = &v33;
    p_p = &__p;
    fst::DfsVisit<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::TopOrderVisitor<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>();
  }

  for (i = 0; ; i = v33 + 1)
  {
    LODWORD(v33) = i;
    if (i >= (*(*a1 + 160))(a1))
    {
      break;
    }

    std::vector<int>::push_back[abi:ne200100](&v31.__begin_, &v33);
  }

  v33 = a1;
  v34 = a2;
  v35 = a1;
  v15 = *a3;
  v36 = a2;
  v37 = v15;
  v38 = *(a3 + 4);
  v39 = *(a3 + 20);
  v40 = 1;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  memset(v44, 0, sizeof(v44));
  a2[1] = *a2;
  memset(v45, 0, sizeof(v45));
  v46 = 1065353216;
  v53 = 0;
  v50 = 0u;
  memset(v47, 0, sizeof(v47));
  v48 = 0u;
  v49 = 0u;
  v51 = 0;
  for (j = v31.__end_; v31.__begin_ != v31.__end_; j = v31.__end_)
  {
    v17 = *(j - 1);
    v31.__end_ = j - 1;
    if (((*(v32 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      if (*(a3 + 21))
      {
        continue;
      }

      LODWORD(v54) = *(a3 + 22);
      LODWORD(__p) = 2139095040;
      if (*&v54 != INFINITY || *(a3 + 7) != -1)
      {
        continue;
      }
    }

    fst::RmEpsilonState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::AutoQueue<int>>::Expand(&v33, v17);
    (*(*a1 + 184))(a1, v17, v52);
    (*(*a1 + 240))(a1, v17);
    (*(*a1 + 256))(a1, v17, (*(&v50 + 1) - v50) >> 4);
    v18 = *(&v50 + 1);
    v19 = v50;
    while (v19 != v18)
    {
      (*(*a1 + 208))(a1, v17, v18 - 16);
      v19 = v50;
      v18 = *(&v50 + 1) - 16;
      *(&v50 + 1) -= 16;
    }
  }

  if ((*(a3 + 21) & 1) != 0 || (LODWORD(v54) = *(a3 + 22), LODWORD(__p) = 2139095040, *&v54 != INFINITY) || *(a3 + 7) != -1)
  {
    for (k = 0; k < (*(*a1 + 160))(a1); ++k)
    {
      if (((*(v32 + ((k >> 3) & 0x1FFFFFFFFFFFFFF8)) >> k) & 1) == 0)
      {
        (*(*a1 + 240))(a1, k);
      }
    }
  }

  if (v44[28] == 1)
  {
    (*(*a1 + 192))(a1, 4, 4);
  }

  v22 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v23 = fst::RmEpsilonProperties(v22, 0);
  (*(*a1 + 192))(a1, v23, 0x3FFFFFFF0007);
  v24 = *(a3 + 22);
  *&v54 = v24;
  LODWORD(__p) = 2139095040;
  v25 = *(a3 + 7);
  if (v24 != INFINITY || v25 != -1)
  {
    v54 = __PAIR64__(v25, LODWORD(v24));
    v56 = 0;
    v57 = 981467136;
    fst::Prune<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(a1);
  }

  if (*(a3 + 21) == 1)
  {
    LODWORD(v54) = *(a3 + 22);
    LODWORD(__p) = 2139095040;
    if (*&v54 == INFINITY && *(a3 + 7) == -1)
    {
      fst::Connect<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(a1);
    }
  }

  if (v50)
  {
    *(&v50 + 1) = v50;
    operator delete(v50);
  }

  v27 = *(&v49 + 1);
  if (*(&v49 + 1))
  {
    do
    {
      v28 = *v27;
      operator delete(v27);
      v27 = v28;
    }

    while (v28);
  }

  *(&v49 + 1) = 0;
  if (v48)
  {
    operator delete(v48);
  }

  std::deque<int>::~deque[abi:ne200100](v47);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v45);
  fst::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ShortestDistanceState(&v35);
  if (v31.__begin_)
  {
    v31.__end_ = v31.__begin_;
    operator delete(v31.__begin_);
  }

  if (v32)
  {
    operator delete(v32);
  }
}

void sub_1B55455D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  fst::LogMessage::~LogMessage(&a13);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a26)
  {
    a27 = a26;
    operator delete(a26);
  }

  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::EpsilonArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2)
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
      v6 = 0;
      v5[0] = v3;
      v5[1] = 0;
      v5[2] = 0;
      v5[3] = &v6;
      fst::DfsVisit<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::SccVisitor<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(a2, v5);
    }

    operator new();
  }

  operator new();
}

void sub_1B5545DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

void sub_1B5546704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v9 = *(v7 - 112);
  if (v9)
  {
    *(v7 - 104) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::AutoQueue<int>::SccQueueType<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::EpsilonArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NaturalLess<fst::LogWeightTpl<float>>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
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

  v27 = 0;
  (*(*a1 + 128))(a1, &v25);
  while (1)
  {
    result = v25;
    if (!v25)
    {
      if (v27 >= v26)
      {
        return result;
      }

LABEL_11:
      v16 = v27;
      goto LABEL_12;
    }

    v15 = (*(*v25 + 16))(v25);
    result = v25;
    if (v15)
    {
      break;
    }

    if (!v25)
    {
      goto LABEL_11;
    }

    v16 = (*(*v25 + 24))();
LABEL_12:
    v24 = 0;
    (*(*a1 + 136))(a1, v16, v22);
    while (1)
    {
      if (!v22[0])
      {
        if (v24 >= v22[2])
        {
          goto LABEL_34;
        }

        goto LABEL_18;
      }

      if ((*(*v22[0] + 24))(v22[0]))
      {
        break;
      }

      if (v22[0])
      {
        v17 = (*(*v22[0] + 32))();
        goto LABEL_19;
      }

LABEL_18:
      v17 = v22[1] + 16 * v24;
LABEL_19:
      if (!*v17)
      {
        v18 = *(*a2 + 4 * v16);
        if (v18 == *(*a2 + 4 * *(v17 + 12)))
        {
          v19 = *a3;
          if (!a4 || (v21 = 0, fst::NaturalLess<fst::LogWeightTpl<float>>::operator()(a4, (v17 + 8), &v21)))
          {
            v20 = 1;
            goto LABEL_26;
          }

          if ((v19[v18] | 2) == 2)
          {
            v20 = 3;
LABEL_26:
            v19[v18] = v20;
          }

          *a5 = 0;
        }

        *a6 = 0;
      }

      if (v22[0])
      {
        (*(*v22[0] + 40))(v22[0]);
      }

      else
      {
        ++v24;
      }
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))();
      goto LABEL_36;
    }

LABEL_34:
    if (v23)
    {
      --*v23;
    }

LABEL_36:
    if (v25)
    {
      (*(*v25 + 32))(v25);
    }

    else
    {
      ++v27;
    }
  }

  if (v25)
  {
    return (*(*v25 + 8))();
  }

  return result;
}

void sub_1B5546AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::EpsilonArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(uint64_t a1)
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
  fst::DfsVisit<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::TopOrderVisitor<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>();
}

void sub_1B5546CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
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

void sub_1B55474F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v9 = *(v7 - 112);
  if (v9)
  {
    *(v7 - 104) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void fst::RmEpsilonState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::AutoQueue<int>>::Expand(uint64_t a1, int a2)
{
  v10 = a2;
  *(a1 + 288) = 2139095040;
  *(a1 + 272) = *(a1 + 264);
  fst::ShortestDistanceState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::AutoQueue<int>,fst::EpsilonArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::ShortestDistance((a1 + 16), a2);
  if ((*(a1 + 132) & 1) == 0)
  {
    std::deque<int>::push_back((a1 + 184), &v10);
    for (i = *(a1 + 224); i; i = *(a1 + 224))
    {
      v4 = i - 1;
      v5 = *(*(*(a1 + 192) + (((*(a1 + 216) + v4) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(a1 + 216) + v4) & 0x3FF));
      *(a1 + 224) = v4;
      std::deque<int>::__maybe_remove_back_spare[abi:ne200100]((a1 + 184), 1);
      while (*(a1 + 240) <= v5)
      {
        LOBYTE(v9) = 0;
        std::vector<BOOL>::push_back(a1 + 232, &v9);
      }

      v6 = *(a1 + 232);
      v7 = *(v6 + 8 * (v5 >> 6));
      if ((v7 & (1 << v5)) == 0)
      {
        *(v6 + 8 * (v5 >> 6)) = v7 | (1 << v5);
        operator new();
      }
    }

    for (j = *(a1 + 256); j; j = *(a1 + 256))
    {
      *(*(a1 + 232) + ((j[2] >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << j[2]);
      *(a1 + 256) = *j;
      operator delete(j);
    }

    ++*(a1 + 292);
  }
}

void sub_1B5547AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _DWORD *a20)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  else if (a20)
  {
    --*a20;
  }

  _Unwind_Resume(exception_object);
}

void fst::ShortestDistanceState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::AutoQueue<int>,fst::EpsilonArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::ShortestDistance(void *a1, int a2)
{
  if ((*(**a1 + 24))(*a1) == -1)
  {
    if (!(*(**a1 + 64))(*a1, 4, 0))
    {
      return;
    }

    goto LABEL_101;
  }

  if (*(a1 + 32) == 1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v4 = fst::LogMessage::LogMessage(&v51, __p);
    v5 = fst::cerr(v4);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "ShortestDistance: first_path option disallowed when ", 52);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Weight does not have the path property: ", 40);
    v42 = fst::LogWeightTpl<float>::Type();
    v43 = *(v42 + 23);
    if (v43 >= 0)
    {
      v44 = v42;
    }

    else
    {
      v44 = *v42;
    }

    if (v43 >= 0)
    {
      v45 = *(v42 + 23);
    }

    else
    {
      v45 = *(v42 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v44, v45);
    fst::LogMessage::~LogMessage(&v51);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_101:
    v46 = a1 + 116;
    goto LABEL_102;
  }

  (*(**(a1[2] + 16) + 56))(*(a1[2] + 16));
  if ((*(a1 + 33) & 1) == 0)
  {
    *(a1[1] + 8) = *a1[1];
    a1[6] = a1[5];
    a1[9] = 0;
  }

  if (a2 == -1)
  {
    a2 = (*(**a1 + 24))();
  }

  v6 = a1[1];
  for (i = *v6; a2 >= ((v6[1] - *v6) >> 2); i = *v6)
  {
    LODWORD(__p[0]) = 2139095040;
    std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](v6, __p);
    LODWORD(__p[0]) = 2139095040;
    std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100]((a1 + 5), __p);
    LOBYTE(__p[0]) = 0;
    std::vector<BOOL>::push_back((a1 + 8), __p);
    v6 = a1[1];
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
      i = *a1[1];
    }

    *(v8 + 4 * a2) = *(a1 + 28);
  }

  *(i + 4 * a2) = 0;
  *(a1[5] + 4 * a2) = 0;
  *(a1[8] + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  (*(**(a1[2] + 16) + 24))(*(a1[2] + 16), a2);
  v46 = a1 + 116;
  do
  {
    if ((*(**(a1[2] + 16) + 48))(*(a1[2] + 16)))
    {
      goto LABEL_90;
    }

    v9 = (*(**(a1[2] + 16) + 16))(*(a1[2] + 16));
    (*(**(a1[2] + 16) + 32))(*(a1[2] + 16));
    while (1)
    {
      v10 = a1[1];
      if (v9 < ((v10[1] - *v10) >> 2))
      {
        break;
      }

      LODWORD(__p[0]) = 2139095040;
      std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](v10, __p);
      LODWORD(__p[0]) = 2139095040;
      std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100]((a1 + 5), __p);
      LOBYTE(__p[0]) = 0;
      std::vector<BOOL>::push_back((a1 + 8), __p);
    }

    if (*(a1 + 32) == 1)
    {
      LODWORD(__p[0]) = (*(**a1 + 32))(*a1, v9);
      v51 = 2139095040;
      if (*__p != INFINITY)
      {
LABEL_90:
        ++*(a1 + 28);
        if (!(*(**a1 + 64))(*a1, 4, 0))
        {
          return;
        }

LABEL_102:
        *v46 = 1;
        return;
      }
    }

    *(a1[8] + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v9);
    v11 = a1[5];
    v12 = *(v11 + 4 * v9);
    *(v11 + 4 * v9) = 2139095040;
    v13 = *a1;
    v50 = 0;
    (*(*v13 + 136))(v13, v9, __p);
    while (1)
    {
      if (__p[0])
      {
        if ((*(*__p[0] + 24))(__p[0]))
        {
          goto LABEL_82;
        }

        if (__p[0])
        {
          v14 = (*(*__p[0] + 32))(__p[0]);
          goto LABEL_32;
        }
      }

      else if (v50 >= v48)
      {
LABEL_82:
        v39 = 1;
        goto LABEL_83;
      }

      v14 = __p[1] + 16 * v50;
LABEL_32:
      if (*v14)
      {
        goto LABEL_79;
      }

      v15 = a1[1];
      LODWORD(v16) = *(v14 + 3);
      if (v16 >= ((v15[1] - *v15) >> 2))
      {
        do
        {
          v51 = 2139095040;
          std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](v15, &v51);
          v51 = 2139095040;
          std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100]((a1 + 5), &v51);
          LOBYTE(v51) = 0;
          std::vector<BOOL>::push_back((a1 + 8), &v51);
          v15 = a1[1];
          v16 = *(v14 + 3);
        }

        while (v16 >= (v15[1] - *v15) >> 2);
      }

      if (*(a1 + 33) == 1)
      {
        while (1)
        {
          v17 = a1[11];
          LODWORD(v16) = *(v14 + 3);
          if (v16 < ((a1[12] - v17) >> 2))
          {
            break;
          }

          std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
        }

        v15 = a1[1];
        if (*(v17 + 4 * v16) != *(a1 + 28))
        {
          *(*v15 + 4 * v16) = 2139095040;
          *(a1[5] + 4 * *(v14 + 3)) = 2139095040;
          v16 = *(v14 + 3);
          *(a1[8] + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v16);
          *(a1[11] + 4 * v16) = *(a1 + 28);
          v15 = a1[1];
          LODWORD(v16) = *(v14 + 3);
        }
      }

      v18 = *v15;
      v19 = a1[5];
      v20 = NAN;
      if (v12 != -INFINITY)
      {
        v21 = *(v14 + 2);
        v20 = NAN;
        if (v21 != -INFINITY)
        {
          v22 = v21 == INFINITY || v12 == INFINITY;
          v23 = v12 + v21;
          if (v22)
          {
            v20 = INFINITY;
          }

          else
          {
            v20 = v23;
          }
        }
      }

      v24 = v16;
      v25 = *(v18 + 4 * v16);
      if (v25 != INFINITY)
      {
        break;
      }

      v26 = *(a1 + 7);
      v27 = v20 > (v26 + INFINITY) || (v20 + v26) < INFINITY;
      v25 = v20;
      if (v27)
      {
        goto LABEL_67;
      }

LABEL_79:
      if (__p[0])
      {
        (*(*__p[0] + 40))(__p[0]);
      }

      else
      {
        ++v50;
      }
    }

    v28 = *(v18 + 4 * v16);
    if (v20 != INFINITY)
    {
      if (v25 <= v20)
      {
        v30 = expf(-(v20 - v25));
        v28 = v25 - logf(v30 + 1.0);
      }

      else
      {
        v29 = expf(-(v25 - v20));
        v28 = v20 - logf(v29 + 1.0);
      }
    }

    v31 = *(a1 + 7);
    if (v28 <= (v25 + v31) && v25 <= (v28 + v31))
    {
      goto LABEL_79;
    }

    if (v20 != INFINITY)
    {
      if (v25 <= v20)
      {
        v34 = expf(-(v20 - v25));
        v25 = v25 - logf(v34 + 1.0);
      }

      else
      {
        v33 = expf(-(v25 - v20));
        v25 = v20 - logf(v33 + 1.0);
      }
    }

LABEL_67:
    *(v18 + 4 * v24) = v25;
    v35 = *(v19 + 4 * v24);
    if (v35 != INFINITY)
    {
      if (v20 == INFINITY)
      {
        v20 = *(v19 + 4 * v24);
      }

      else if (v35 <= v20)
      {
        v37 = expf(-(v20 - v35));
        v20 = v35 - logf(v37 + 1.0);
      }

      else
      {
        v36 = expf(-(v35 - v20));
        v20 = v20 - logf(v36 + 1.0);
      }
    }

    *(v19 + 4 * v24) = v20;
    if (*(v18 + 4 * v24) != -INFINITY && (v20 < -INFINITY || v20 > -INFINITY))
    {
      v38 = **(a1[2] + 16);
      if ((*(a1[8] + ((*(v14 + 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v14 + 3)))
      {
        (*(v38 + 40))();
      }

      else
      {
        (*(v38 + 24))();
        *(a1[8] + ((*(v14 + 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v14 + 3);
      }

      goto LABEL_79;
    }

    v39 = 0;
    *v46 = 1;
LABEL_83:
    if (__p[0])
    {
      (*(*__p[0] + 8))(__p[0]);
    }

    else if (v49)
    {
      --*v49;
    }
  }

  while ((v39 & 1) != 0);
}

void sub_1B55484E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, char a20)
{
  fst::LogMessage::~LogMessage(&a20);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::Prune<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(uint64_t a1)
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
  v6 = fst::LogWeightTpl<float>::Type();
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

void sub_1B5548698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *fst::RmEpsilonState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::AutoQueue<int>>::~RmEpsilonState(void *a1)
{
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[32];
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

  a1[32] = 0;
  v5 = a1[29];
  if (v5)
  {
    operator delete(v5);
  }

  std::deque<int>::~deque[abi:ne200100](a1 + 23);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((a1 + 17));
  fst::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ShortestDistanceState(a1 + 2);
  return a1;
}

uint64_t fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SigmaMatcher(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  *a1 = &unk_1F2D1B178;
  if (!a6)
  {
    operator new();
  }

  *(a1 + 8) = a6;
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  *(a1 + 52) = 0;
  *(a1 + 56) = -1;
  if (a3 == 2)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v10 = fst::LogMessage::LogMessage(&v21, __p);
    v11 = fst::cerr(v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "SigmaMatcher: bad match type", 28);
    fst::LogMessage::~LogMessage(&v21);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 16) = 3;
    *(a1 + 52) = 1;
  }

  if (!a4)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v16, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v16, "ERROR");
    }

    v12 = fst::LogMessage::LogMessage(&v18, v16);
    v13 = fst::cerr(v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "SigmaMatcher: 0 cannot be used as sigma_label", 45);
    fst::LogMessage::~LogMessage(&v18);
    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    *(a1 + 20) = -1;
    *(a1 + 52) = 1;
  }

  if (a5 == 1)
  {
    v14 = 1;
  }

  else
  {
    if (a5)
    {
      *(a1 + 24) = 0;
      return a1;
    }

    v14 = (*(*a2 + 64))(a2, 0x10000, 1) != 0;
  }

  *(a1 + 24) = v14;
  return a1;
}

void sub_1B5548984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~SigmaMatcher(void *a1)
{
  *a1 = &unk_1F2D1B178;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~SigmaMatcher(void *a1)
{
  *a1 = &unk_1F2D1B178;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Properties(uint64_t a1)
{
  result = (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (*(a1 + 52))
  {
    result |= 4uLL;
  }

  v3 = *(a1 + 16);
  if (v3 != 3)
  {
    if (*(a1 + 24) == 1)
    {
      v4 = -4030464001;
      return result & (v4 & 0xFFFF0000FFFFFFFFLL | 0xEFFF00000000);
    }

    if (v3 == 1)
    {
      v4 = -3225223169;
      return result & (v4 & 0xFFFF0000FFFFFFFFLL | 0xEFFF00000000);
    }

    if (!v3)
    {
      v4 = -809304065;
      return result & (v4 & 0xFFFF0000FFFFFFFFLL | 0xEFFF00000000);
    }

    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v5 = fst::LogMessage::LogMessage(&v10, __p);
    v6 = fst::cerr(v5);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "SigmaMatcher:: bad match type: ", 31);
    MEMORY[0x1B8C84C00](v7, *(a1 + 16));
    fst::LogMessage::~LogMessage(&v10);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

void sub_1B5548CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Flags(uint64_t a1)
{
  if (*(a1 + 20) != -1 && *(a1 + 16) != 3)
  {
    return (*(**(a1 + 8) + 48))(*(a1 + 8)) | 1;
  }

  v2 = *(**(a1 + 8) + 48);

  return v2();
}

uint64_t fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetState(uint64_t result, uint64_t a2)
{
  if (*(result + 56) != a2)
  {
    v2 = result;
    *(result + 56) = a2;
    fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::SetState(*(result + 8), a2);
    v3 = *(v2 + 20);
    if (v3 == -1)
    {
      result = 0;
    }

    else
    {
      result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Find(*(v2 + 8), v3);
    }

    *(v2 + 25) = result;
  }

  return result;
}

uint64_t fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Find(uint64_t a1, int a2)
{
  *(a1 + 48) = a2;
  v3 = *(a1 + 20);
  if (v3 != a2 || v3 == -1)
  {
    result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Find(*(a1 + 8), a2);
    if (result)
    {
      *(a1 + 28) = -1;
    }

    else
    {
      if ((a2 - 1) > 0xFFFFFFFD)
      {
        return result;
      }

      if ((*(a1 + 25) & 1) == 0)
      {
        return result;
      }

      result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Find(*(a1 + 8), *(a1 + 20));
      if (!result)
      {
        return result;
      }

      *(a1 + 28) = a2;
    }

    return 1;
  }

  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  }

  v7 = fst::LogMessage::LogMessage(&v11, __p);
  v8 = fst::cerr(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "SigmaMatcher::Find: bad label (sigma)", 37);
  fst::LogMessage::~LogMessage(&v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  result = 0;
  *(a1 + 52) = 1;
  return result;
}

void sub_1B5549034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_DWORD *fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Value(uint64_t a1)
{
  v2 = *(a1 + 28);
  result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Value(*(a1 + 8));
  v4 = result;
  if (v2 != -1)
  {
    result = (a1 + 32);
    *(a1 + 32) = *v4;
    if (*(a1 + 24) == 1)
    {
      v5 = *(a1 + 20);
      if (*(a1 + 32) == v5)
      {
        *(a1 + 32) = *(a1 + 28);
      }

      if (*(a1 + 36) == v5)
      {
        v6 = *(a1 + 28);
LABEL_9:
        *(a1 + 36) = v6;
      }
    }

    else
    {
      v6 = *(a1 + 28);
      if (*(a1 + 16))
      {
        goto LABEL_9;
      }

      *result = v6;
    }
  }

  return result;
}

uint64_t fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Next(uint64_t a1)
{
  fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Next(*(a1 + 8));
  result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Done(*(a1 + 8));
  if (result && *(a1 + 25) == 1 && *(a1 + 28) == -1 && *(a1 + 48) >= 1)
  {
    result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Find(*(a1 + 8), *(a1 + 20));
    *(a1 + 28) = *(a1 + 48);
  }

  return result;
}

uint64_t fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Priority(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) != -1)
  {
    fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetState(a1, a2);
    if (*(a1 + 25))
    {
      return -1;
    }
  }

  v4 = *(**(*(a1 + 8) + 8) + 40);

  return v4();
}

uint64_t fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::RhoMatcher(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  *a1 = &unk_1F2D1B210;
  if (!a6)
  {
    operator new();
  }

  *(a1 + 8) = a6;
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  *(a1 + 48) = 0;
  *(a1 + 52) = -1;
  if (a3 == 2)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v10 = fst::LogMessage::LogMessage(&v21, __p);
    v11 = fst::cerr(v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "RhoMatcher: bad match type", 26);
    fst::LogMessage::~LogMessage(&v21);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 16) = 3;
    *(a1 + 48) = 1;
  }

  if (!a4)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v16, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v16, "ERROR");
    }

    v12 = fst::LogMessage::LogMessage(&v18, v16);
    v13 = fst::cerr(v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "RhoMatcher: 0 cannot be used as rho_label", 41);
    fst::LogMessage::~LogMessage(&v18);
    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    *(a1 + 20) = -1;
    *(a1 + 48) = 1;
  }

  if (a5 == 1)
  {
    v14 = 1;
  }

  else
  {
    if (a5)
    {
      *(a1 + 24) = 0;
      return a1;
    }

    v14 = (*(*a2 + 64))(a2, 0x10000, 1) != 0;
  }

  *(a1 + 24) = v14;
  return a1;
}

void sub_1B554944C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::~RhoMatcher(void *a1)
{
  *a1 = &unk_1F2D1B210;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::~RhoMatcher(void *a1)
{
  *a1 = &unk_1F2D1B210;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::Properties(uint64_t a1)
{
  result = (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (*(a1 + 48))
  {
    result |= 4uLL;
  }

  v3 = *(a1 + 16);
  if (v3 != 3)
  {
    if (v3 == 1)
    {
      v4 = *(a1 + 24) == 1;
      v5 = result & 0xFFFFEFFF3FFAFFFFLL;
      v6 = 0xFFFFEFFF0FF3FFFFLL;
LABEL_8:
      v7 = result & v6;
      if (v4)
      {
        return v7;
      }

      else
      {
        return v5;
      }
    }

    if (!v3)
    {
      v4 = *(a1 + 24) == 1;
      v5 = result & 0xFFFFEFFFCFEEFFFFLL;
      v6 = 0xFFFFEFFF0FCFFFFFLL;
      goto LABEL_8;
    }

    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v8 = fst::LogMessage::LogMessage(&v13, __p);
    v9 = fst::cerr(v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "RhoMatcher:: bad match type: ", 29);
    MEMORY[0x1B8C84C00](v10, *(a1 + 16));
    fst::LogMessage::~LogMessage(&v13);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

void sub_1B55497E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::Flags(uint64_t a1)
{
  if (*(a1 + 20) != -1 && *(a1 + 16) != 3)
  {
    return (*(**(a1 + 8) + 48))(*(a1 + 8)) | 1;
  }

  v2 = *(**(a1 + 8) + 48);

  return v2();
}

uint64_t fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::SetState_(uint64_t result, uint64_t a2)
{
  if (*(result + 52) != a2)
  {
    v2 = result;
    *(result + 52) = a2;
    result = fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetState(*(result + 8), a2);
    *(v2 + 25) = *(v2 + 20) != -1;
  }

  return result;
}

uint64_t fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::Find(uint64_t a1, int a2)
{
  v3 = *(a1 + 20);
  if (v3 != a2 || v3 == -1)
  {
    result = fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Find(*(a1 + 8), a2);
    if (result)
    {
      *(a1 + 28) = -1;
    }

    else
    {
      if ((a2 - 1) > 0xFFFFFFFD)
      {
        return result;
      }

      if ((*(a1 + 25) & 1) == 0)
      {
        return result;
      }

      result = fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Find(*(a1 + 8), *(a1 + 20));
      *(a1 + 25) = result;
      if (!result)
      {
        return result;
      }

      *(a1 + 28) = a2;
    }

    return 1;
  }

  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  }

  v7 = fst::LogMessage::LogMessage(&v11, __p);
  v8 = fst::cerr(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "RhoMatcher::Find: bad label (rho)", 33);
  fst::LogMessage::~LogMessage(&v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  result = 0;
  *(a1 + 48) = 1;
  return result;
}