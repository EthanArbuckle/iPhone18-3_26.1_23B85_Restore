uint64_t fst::VectorFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::WriteFst<fst::VectorFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>(void *a1, void *a2, uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  *v30 = 0u;
  *v31 = 0u;
  v6 = -1;
  v35 = 0;
  v36 = 0;
  v34 = -1;
  v34 = (*(*a1 + 24))(a1);
  v35 = -1;
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v6 = 0;
LABEL_3:
    v7 = 0;
    v35 = fst::CountStates<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(a1);
    goto LABEL_6;
  }

  v8 = a2 + *(*a2 - 24);
  if ((v8[32] & 5) == 0)
  {
    (*(**(v8 + 5) + 32))(__p);
    v6 = v38;
    if (v38 != -1)
    {
      goto LABEL_3;
    }
  }

  v7 = 1;
LABEL_6:
  v9 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  fst::FstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::WriteFstHeader(a1, a2, a3, 2, __p, v9 | 3, v29);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v10 = *(a1[1] + 72) - *(a1[1] + 64);
  if ((v10 >> 3) < 1)
  {
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = (v10 >> 3) & 0x7FFFFFFF;
    do
    {
      LODWORD(__p[0].__r_.__value_.__l.__data_) = (*(*a1 + 32))(a1, v11);
      std::ostream::write();
      __p[0].__r_.__value_.__r.__words[0] = (*(*a1 + 40))(a1, v11);
      std::ostream::write();
      v13 = *(*(*(a1[1] + 64) + 8 * v11) + 24);
      v14 = *(*(*(a1[1] + 64) + 8 * v11) + 32) - v13;
      if (v14)
      {
        v15 = v14 >> 4;
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        v17 = (v13 + 8);
        do
        {
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v17 - 2);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v17 - 1);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *v17;
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v17[1];
          std::ostream::write();
          v17 += 4;
          --v16;
        }

        while (v16);
      }

      ++v11;
    }

    while (v11 != v12);
  }

  std::ostream::flush();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v18 = fst::LogMessage::LogMessage(&v28, __p);
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
LABEL_27:
    fst::LogMessage::~LogMessage(&v28);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    updated = 0;
    goto LABEL_30;
  }

  if (!v7)
  {
    if (v35 == v12)
    {
      updated = 1;
      goto LABEL_30;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v26 = fst::LogMessage::LogMessage(&v28, __p);
    v27 = fst::cerr(v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Inconsistent number of states observed during write", 51);
    goto LABEL_27;
  }

  v35 = v12;
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  updated = fst::FstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::UpdateFstHeader(a1, a2, a3, 2, __p, v9 | 3, v29, v6);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

LABEL_30:
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[1]);
  }

  if (SHIBYTE(v31[0]) < 0)
  {
    operator delete(v30[0]);
  }

  return updated;
}

void sub_1B51FB0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a13);
  _Unwind_Resume(a1);
}

uint64_t fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::WriteFile(fst *a1, uint64_t a2)
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

void *fst::VectorFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 64);

  return std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(v4, a2);
}

void *fst::VectorFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 64) + 8 * a2) + 24);

  return std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::reserve(v6, a3);
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 72) - *(v2 + 64)) >> 3;
  return result;
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 8);
  *a3 = 0;
  v5 = (*(*(v3 + 64) + 8 * a2) + 24);
  v4 = *v5;
  v6 = (v5[1] - *v5) >> 4;
  if (v5[1] == *v5)
  {
    v4 = 0;
  }

  a3[1] = v4;
  a3[2] = v6;
  a3[3] = 0;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::MutateCheck(uint64_t result)
{
  if (*(*(result + 8) + 56) >= 2)
  {
    operator new();
  }

  return result;
}

void fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~VectorFst(void *a1)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetFinal(uint64_t a1, int a2, float a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetFinal(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

void fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::AddArc(uint64_t a1, int a2, float *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AddArc(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0x6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::DeleteStates(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::DeleteStates(v2);
  result = (*(*v2 + 24))(v2);
  v2[1] = (*(v2 + 2) | result) & 4 | 0x156A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DeleteArcs(*(v6[8] + 8 * a2), a3);
  result = (*(*v6 + 24))(v6);
  v6[1] = v6[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  v5 = *(v4[8] + 8 * a2);
  v5[1] = 0;
  v5[2] = 0;
  v5[4] = v5[3];
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(v4, a2);
}

void fst::VectorFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~VectorFst(void *a1)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
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

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 88) = a2;
  result = (*(*v4 + 24))(v4);
  *(v4 + 8) = result & 0xCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::SetFinal(uint64_t a1, int a2, float a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetFinal(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

void fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::AddArc(uint64_t a1, int a2, float *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::AddArc(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0x6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::DeleteStates(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::DeleteStates(v2);
  result = (*(*v2 + 24))(v2);
  v2[1] = (*(v2 + 2) | result) & 4 | 0x156A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DeleteArcs(*(v6[8] + 8 * a2), a3);
  result = (*(*v6 + 24))(v6);
  v6[1] = v6[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  v5 = *(v4[8] + 8 * a2);
  v5[1] = 0;
  v5[2] = 0;
  v5[4] = v5[3];
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(v4, a2);
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D04F20;
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

uint64_t fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Write(uint64_t a1)
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

void sub_1B51FC500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B51FC5FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::operator=(uint64_t a1)
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

void sub_1B51FC6FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::SymbolTable::Read(void *a1, const std::string *a2)
{
  *__p = 0u;
  v6 = 0u;
  std::string::operator=(&__p[1], a2);
  v3 = fst::SymbolTable::Read(a1);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[1]);
  }

  return v3;
}

uint64_t fst::SymbolTable::Read(void *a1)
{
  result = fst::SymbolTableImpl::Read(a1);
  if (result)
  {
    operator new();
  }

  return result;
}

void fst::SymbolTableReadOptions::~SymbolTableReadOptions(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = *this;
  if (*this)
  {
    this[1] = v2;
    operator delete(v2);
  }
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x1E69E54C8];
  v3 = *MEMORY[0x1E69E54C8];
  *a1 = *MEMORY[0x1E69E54C8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x1B8C84A00](a1 + 2);
  std::istream::~istream();
  MEMORY[0x1B8C85200](a1 + 53);
  return a1;
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::WriteFstHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = fst::ArcTpl<fst::TropicalWeightTpl<float>,int>::Type();
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

uint64_t fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::UpdateFstHeader(uint64_t a1, void *a2, uint64_t a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::WriteFstHeader(a1, a2, a3, a4, a5, a6, a7);
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

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D05110;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2D05060;
  std::string::basic_string[abi:ne200100]<0>(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950003;
  return a1;
}

void sub_1B51FD024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = &unk_1F2D050D8;
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

  return fst::FstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::~FstImpl(a1);
}

void fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~VectorFstImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~VectorFstBaseImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::FstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::~FstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D05110;
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

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D05110;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2D05060;
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
    v6 = fst::CountStates<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(a2);
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
      fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AddState();
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

uint64_t fst::CountStates<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(uint64_t a1)
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

{
  return (*(*a1 + 8))(a1);
}

void sub_1B51FD960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::CountStates<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ArcTpl<fst::LogWeightTpl<float>,int>::Type()
{
  {
    operator new();
  }

  return fst::ArcTpl<fst::LogWeightTpl<float>,int>::Type(void)::type;
}

void sub_1B51FDA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t fst::LogWeightTpl<float>::Type()
{
  {
    operator new();
  }

  return fst::LogWeightTpl<float>::Type(void)::type;
}

void sub_1B51FDBB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1B8C85350](v15, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::WriteFstHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = fst::ArcTpl<fst::LogWeightTpl<float>,int>::Type();
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

uint64_t fst::FstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::UpdateFstHeader(uint64_t a1, void *a2, uint64_t a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    fst::FstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::WriteFstHeader(a1, a2, a3, a4, a5, a6, a7);
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

void fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DeleteStates(uint64_t a1, char **a2)
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
        v26 = 0;
        v27 = v20 >> 4;
        v28 = *(v16 + 16);
        v29 = *(v16 + 8);
      }

      else
      {
        v21 = 0;
        v26 = 0;
        v22 = *(v16 + 24);
        do
        {
          v23 = *(__p[0] + *(v22 + 12));
          if (v23 == -1)
          {
            v24.i64[0] = *v22;
            v24.i64[1] = HIDWORD(*v22);
            v19 = vaddq_s64(v19, vceqzq_s64(v24));
          }

          else
          {
            *(v22 + 12) = v23;
            if (v21 != v26)
            {
              *(v18 + 16 * v26) = *v22;
              v14 = *v4;
            }

            ++v26;
          }

          v16 = *(v14 + 8 * v15);
          ++v21;
          v25 = *(v16 + 32) - *(v16 + 24);
          v22 += 16;
        }

        while (v21 < v25 >> 4);
        v27 = v25 >> 4;
        v28 = v19.i64[1];
        v29 = v19.i64[0];
      }

      fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DeleteArcs(v16, v27 - v26);
      v14 = *(a1 + 64);
      v30 = *(a1 + 72);
      v31 = *(v14 + 8 * v15);
      *(v31 + 8) = v29;
      *(v31 + 16) = v28;
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

void sub_1B51FE42C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::TestProperties<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(a1, a2, a3, 0);
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

    return fst::ComputeProperties<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(a1, a2, a3, 1);
  }
}

void sub_1B51FE588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v8 = -1431699456;
  v9 = 1431633920;
  v10 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v11 = v10;
  if (!a4 || (v12 = v10 & 0x3FFFFFFF0000 | (2 * v10) & 0x2AAAAAAA0000 | (v10 >> 1) & 0x155555550000 | 7, (a2 & ~v12) != 0))
  {
    v11 = v10 & 7;
    v48 = v11;
    v13 = (*(*a1 + 16))(a1);
    if ((a2 & 0xF3C00000000) != 0 && v13)
    {
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = &v48;
      fst::DfsVisit<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::SccVisitor<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(a1, &v43);
    }

    if ((a2 & 0xFFFFF0C3FFFFFFF8) != 0)
    {
      v37 = a3;
      v14 = a2 & 0xC0000;
      v15 = 0x10425A810000;
      if ((a2 & 0xC0000) != 0)
      {
        v15 = 0x10425A850000;
      }

      v16 = v11 | v15;
      v17 = a2 & 0x300000;
      if ((a2 & 0x300000) != 0)
      {
        v16 |= 0x100000uLL;
      }

      v48 = v16;
      memset(&v42, 0, sizeof(v42));
      memset(&v41, 0, sizeof(v41));
      v40 = 0;
      (*(*a1 + 128))(a1, &v38);
      v18 = 0;
LABEL_12:
      if (v38)
      {
        if (!(*(*v38 + 16))(v38))
        {
          if (v38)
          {
            v19 = (*(*v38 + 24))();
LABEL_18:
            v20 = (*(*a1 + 40))(a1, v19);
            v42.__end_ = v42.__begin_;
            v41.__end_ = v41.__begin_;
            if (v14)
            {
              std::vector<int>::reserve(&v42, v20);
            }

            if (v17)
            {
              std::vector<int>::reserve(&v41, v20);
            }

            v47 = 0;
            (*(*a1 + 136))(a1, v19, &v43);
            v21 = 1;
            while (1)
            {
              if (v43)
              {
                if ((*(*v43 + 24))(v43))
                {
                  if (v43)
                  {
                    (*(*v43 + 8))();
                    goto LABEL_62;
                  }

LABEL_60:
                  if (v46)
                  {
                    --*v46;
                  }

LABEL_62:
                  if (v14 && (std::__sort<std::__less<int,int> &,int *>(), v29 = v42.__end_ - v42.__begin_, v29 >= 2))
                  {
                    v30 = v29 - 1;
                    v31 = v42.__begin_ + 1;
                    while (*v31 != *(v31 - 1))
                    {
                      ++v31;
                      if (!--v30)
                      {
                        goto LABEL_67;
                      }
                    }

                    v48 = v48 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
                    if (!v17)
                    {
LABEL_76:
                      if (v18 >= 1)
                      {
                        v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                      }

                      v35 = (*(*a1 + 32))(a1, v19);
                      *&v43 = v35;
                      v50 = 2139095040;
                      if (v35 == INFINITY)
                      {
                        if ((*(*a1 + 40))(a1, v19, INFINITY, v35) != 1)
                        {
                          v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                        }
                      }

                      else
                      {
                        *&v43 = v35;
                        v50 = 0;
                        if (v35 != 0.0)
                        {
                          v48 = v48 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                        }

                        ++v18;
                      }

                      if (v38)
                      {
                        (*(*v38 + 32))(v38);
                      }

                      else
                      {
                        ++v40;
                      }

                      goto LABEL_12;
                    }
                  }

                  else
                  {
LABEL_67:
                    if (!v17)
                    {
                      goto LABEL_76;
                    }
                  }

                  std::__sort<std::__less<int,int> &,int *>();
                  v32 = v41.__end_ - v41.__begin_;
                  if (v32 >= 2)
                  {
                    v33 = v32 - 1;
                    v34 = v41.__begin_ + 1;
                    while (*v34 != *(v34 - 1))
                    {
                      ++v34;
                      if (!--v33)
                      {
                        goto LABEL_76;
                      }
                    }

                    v48 = v48 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
                  }

                  goto LABEL_76;
                }

                if (v43)
                {
                  v22 = (*(*v43 + 32))();
                  goto LABEL_29;
                }
              }

              else if (v47 >= v45)
              {
                goto LABEL_60;
              }

              v22 = v44 + 16 * v47;
LABEL_29:
              v23 = *v22;
              v24 = (v22 + 4);
              v25 = *v22;
              if (*v22 != *(v22 + 4))
              {
                v48 = v48 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
                v25 = *v24;
              }

              if (v23 | v25)
              {
                if (v23)
                {
                  if (!v25)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_35;
                }

                v26 = v48;
              }

              else
              {
                v26 = v48 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
              }

              v48 = v26 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
              if (!v25)
              {
LABEL_39:
                v48 = v48 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
                if (v21)
                {
                  goto LABEL_44;
                }

                goto LABEL_40;
              }

LABEL_35:
              if (v21)
              {
                goto LABEL_44;
              }

LABEL_40:
              if (v23 < v9)
              {
                v48 = v48 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
              }

              if (v25 < v8)
              {
                v48 = v48 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
              }

LABEL_44:
              v27 = *(v22 + 8);
              v50 = LODWORD(v27);
              v49 = 0;
              if (v27 != 0.0)
              {
                v50 = LODWORD(v27);
                v49 = 2139095040;
                if (v27 != INFINITY)
                {
                  v48 = v48 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                }
              }

              v28 = *(v22 + 12);
              if (v28 <= v19)
              {
                v48 = v48 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
              }

              if (v28 != v19 + 1)
              {
                v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
              }

              v9 = *v22;
              v8 = *(v22 + 4);
              if (v14)
              {
                std::vector<int>::push_back[abi:ne200100](&v42.__begin_, v22);
              }

              if (v17)
              {
                std::vector<int>::push_back[abi:ne200100](&v41.__begin_, v24);
              }

              if (v43)
              {
                (*(*v43 + 40))(v43);
                v21 = 0;
              }

              else
              {
                v21 = 0;
                ++v47;
              }
            }
          }

LABEL_17:
          v19 = v40;
          goto LABEL_18;
        }

        if (v38)
        {
          (*(*v38 + 8))();
        }
      }

      else if (v40 < v39)
      {
        goto LABEL_17;
      }

      a3 = v37;
      if ((*(*a1 + 24))(a1) != -1 && (*(*a1 + 24))(a1))
      {
        v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
      }

      if (v41.__begin_)
      {
        v41.__end_ = v41.__begin_;
        operator delete(v41.__begin_);
      }

      if (v42.__begin_)
      {
        v42.__end_ = v42.__begin_;
        operator delete(v42.__begin_);
      }

      v11 = v48;
    }

    v12 = v11 & 0x3FFFFFFF0000 | (2 * v11) & 0x2AAAAAAA0000 | (v11 >> 1) & 0x155555550000 | 7;
  }

  *a3 = v12;
  return v11;
}

void sub_1B51FED74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B51FF5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void fst::SccVisitor<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::InitVisit(uint64_t a1, uint64_t a2)
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

void fst::SccVisitor<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::FinishState(uint64_t a1, int a2, int a3)
{
  if ((*(**(a1 + 32) + 32))(*(a1 + 32)) == INFINITY)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2;
    *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * v6) != *(v7 + 4 * v6))
  {
    goto LABEL_17;
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
      goto LABEL_16;
    }

LABEL_14:
    --v11;
  }

  *(v15 + 8 * v17) &= ~v18;
  if (v16 != a2)
  {
    goto LABEL_14;
  }

  *(v9 + 8) = v11;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_16:
  ++*(a1 + 48);
LABEL_17:
  if (a3 != -1)
  {
    v19 = **(a1 + 16);
    if ((*(v19 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6))
    {
      *(v19 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v20 = *(v7 + 4 * v6);
    if (v20 < *(v7 + 4 * a3))
    {
      *(v7 + 4 * a3) = v20;
    }
  }
}

void fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D05148;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D05148;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D05188;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B51FFB38(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D05188;
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

void *std::deque<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>,int>> *>>::push_back(void *result, void *a2)
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
    result = std::deque<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>,int>> *>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>,int>> *>>::__add_back_capacity(void *a1)
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

void sub_1B51FFE44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ArcBuffer<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SetFromFst<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  (*(*a2 + 136))(a2, a3, &v24);
  if (v24 || (a4 & 1) != 0)
  {
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

      v23 = 0x4000;
      if (v13 > 0x4000)
      {
        v23 = v13;
      }

      *(a1 + 8) = v23;
      v15 = malloc_type_malloc(16 * v23, 0x1000040451B5BE8uLL);
      *a1 = v15;
      *(a1 + 16) = v15;
      v14 = v15;
    }

    else
    {
      v14 = *(a1 + 16);
      v15 = *a1;
    }

    *(a1 + 24) = &v14[v13];
    v16 = v24;
    v17 = v25;
    v19 = v26;
    v18 = v27;
    if (v27)
    {
      ++*v27;
    }

    v20 = 0;
    if (!v16)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v21 = (*(*v16 + 24))(v16);
      v22 = *v16;
      if (v21)
      {
        break;
      }

      *v15 = *(*(v22 + 32))(v16);
      (*(*v16 + 40))(v16);
      while (1)
      {
        ++v15;
        if (v16)
        {
          break;
        }

LABEL_15:
        if (v20 >= v19)
        {
          if (v18)
          {
            --*v18;
          }

          return;
        }

        *v15 = *(v17 + 16 * v20++);
      }
    }

    (*(v22 + 8))(v16);
  }

  else
  {
    v10 = v25 + 16 * v26;
    *(a1 + 16) = v25;
    *(a1 + 24) = v10;
    if (*a1)
    {
      free(*a1);
      *a1 = 0;
    }

    *(a1 + 8) = 0;
  }
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetFinal(void *a1, int a2, float a3)
{
  v5 = *(a1[8] + 8 * a2);
  v6 = *v5;
  *v5 = a3;
  v7 = (*(*a1 + 24))(a1);
  result = fst::SetFinalProperties<fst::TropicalWeightTpl<float>>(v7, v6, a3);
  a1[1] = a1[1] & 4 | result;
  return result;
}

void fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::AddArc(void *a1, int a2, float *a3)
{
  v6 = *(*(a1[8] + 8 * a2) + 32);
  if (v6 == *(*(a1[8] + 8 * a2) + 24))
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6 - 16);
  }

  v8 = (*(*a1 + 24))(a1);
  a1[1] = a1[1] & 4 | fst::AddArcProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(v8, a2, a3, v7);
  v9 = *(a1[8] + 8 * a2);

  fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::AddArc(v9, a3);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::DeleteStates(uint64_t a1, char **a2)
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
        v26 = 0;
        v27 = v20 >> 4;
        v28 = *(v16 + 16);
        v29 = *(v16 + 8);
      }

      else
      {
        v21 = 0;
        v26 = 0;
        v22 = *(v16 + 24);
        do
        {
          v23 = *(__p[0] + *(v22 + 12));
          if (v23 == -1)
          {
            v24.i64[0] = *v22;
            v24.i64[1] = HIDWORD(*v22);
            v19 = vaddq_s64(v19, vceqzq_s64(v24));
          }

          else
          {
            *(v22 + 12) = v23;
            if (v21 != v26)
            {
              *(v18 + 16 * v26) = *v22;
              v14 = *v4;
            }

            ++v26;
          }

          v16 = *(v14 + 8 * v15);
          ++v21;
          v25 = *(v16 + 32) - *(v16 + 24);
          v22 += 16;
        }

        while (v21 < v25 >> 4);
        v27 = v25 >> 4;
        v28 = v19.i64[1];
        v29 = v19.i64[0];
      }

      fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DeleteArcs(v16, v27 - v26);
      v14 = *(a1 + 64);
      v30 = *(a1 + 72);
      v31 = *(v14 + 8 * v15);
      *(v31 + 8) = v29;
      *(v31 + 16) = v28;
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

void sub_1B520048C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::SimpleTokenizerOptions::options@<X0>(quasar::SimpleTokenizerOptions *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = this + 16;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::OptionValueBase *>::__init_with_size[abi:ne200100]<quasar::OptionValueBase * const*,quasar::OptionValueBase * const*>(a2, &v3, &v4, 1uLL);
}

uint64_t quasar::SimpleTokenizerBlock::init(quasar::SimpleTokenizerBlock *this)
{
  quasar::OptionValue<std::string>::value(this + 3);

  return quasar::RegularExpressionReplacer::read();
}

uint64_t quasar::RegularExpressionReplacer::read()
{
  v4[19] = *MEMORY[0x1E69E9840];
  std::ifstream::basic_ifstream(v2);
  if (v3[15])
  {
    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::basic_regex[abi:ne200100](v1, "^", 0);
  }

  v2[0] = *MEMORY[0x1E69E54C8];
  *(v2 + *(v2[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C84A00](v3);
  std::istream::~istream();
  MEMORY[0x1B8C85200](v4);
  return 0;
}

void sub_1B5201040(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B52010F8);
}

void sub_1B520106C()
{
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  JUMPOUT(0x1B520108CLL);
}

void sub_1B5201088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a44);
  a44 = &STACK[0x218];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a44);
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&STACK[0x260]);
  std::ifstream::~ifstream(&STACK[0x3B8], MEMORY[0x1E69E54C8]);
  MEMORY[0x1B8C85200](&STACK[0x560]);
  _Unwind_Resume(a1);
}

uint64_t virtual thunk toquasar::SimpleTokenizerBlock::init(quasar::SimpleTokenizerBlock *this)
{
  quasar::OptionValue<std::string>::value((this + *(*this - 88) + 24));

  return quasar::RegularExpressionReplacer::read();
}

void quasar::SimpleTokenizerBlock::process(void *a1, uint64_t a2, quasar::TranslationPhraseInternal **a3)
{
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v4 = *a3;
  v5 = a3[1];
  if (*a3 != v5)
  {
    do
    {
      quasar::TranslationPhraseInternal::convertTokensToString(v45, v4);
      quasar::RegularExpressionReplacer::apply(a1 + 23, v45, &v44);
      v41 = 0;
      v42 = 0;
      v43 = 0;
      kaldi::SplitStringToVector(&v44, " ", 1, &v41);
      quasar::TranslationPhraseInternal::TranslationPhraseInternal(v24);
      v7 = v41;
      v6 = v42;
      while (v7 != v6)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        memset(&v12, 0, sizeof(v12));
        v13 = 0;
        v17 = 3212836864;
        v18 = -1;
        v19 = 0u;
        v20 = 0u;
        __p = 0u;
        v22 = 0;
        v23 = -1;
        std::string::operator=(&v12, v7);
        LOBYTE(v13) = 1;
        v8 = v36;
        if (v36 >= v37)
        {
          v9 = std::vector<quasar::TranslationTokenInternal>::__emplace_back_slow_path<quasar::TranslationTokenInternal const&>(&v35, &v12);
        }

        else
        {
          quasar::TranslationTokenInternal::TranslationTokenInternal(v36, &v12);
          v9 = (v8 + 136);
        }

        v36 = v9;
        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }

        if (SBYTE7(v20) < 0)
        {
          operator delete(v19);
        }

        if (v14)
        {
          v15 = v14;
          operator delete(v14);
        }

        if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v12.__r_.__value_.__l.__data_);
        }

        ++v7;
      }

      if (v35 != v36)
      {
        v36[-5].__r_.__value_.__s.__data_[8] = 0;
      }

      v10 = v48;
      if (v48 >= v49)
      {
        v11 = std::vector<quasar::TranslationPhraseInternal>::__emplace_back_slow_path<quasar::TranslationPhraseInternal const&>(&v47, v24);
      }

      else
      {
        quasar::TranslationPhraseInternal::TranslationPhraseInternal(v48, v24);
        v11 = (v10 + 264);
      }

      v48 = v11;
      quasar::MetaInfo::~MetaInfo(&v40);
      if (v39 < 0)
      {
        operator delete(v38);
      }

      v12.__r_.__value_.__r.__words[0] = &v35;
      std::vector<quasar::TranslationTokenInternal>::__destroy_vector::operator()[abi:ne200100](&v12);
      v12.__r_.__value_.__r.__words[0] = &v34;
      std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](&v12);
      if (v32)
      {
        v33 = v32;
        operator delete(v32);
      }

      if (v31[24] == 1)
      {
        v12.__r_.__value_.__r.__words[0] = v31;
        std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&v12);
      }

      if (v30 == 1 && v29 < 0)
      {
        operator delete(v28);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v12.__r_.__value_.__r.__words[0] = &v25;
      std::vector<quasar::TranslationToken>::__destroy_vector::operator()[abi:ne200100](&v12);
      v24[0] = &v41;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v24);
      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      if (v46 < 0)
      {
        operator delete(v45[0]);
      }

      v4 = (v4 + 264);
    }

    while (v4 != v5);
  }

  quasar::ProcessingBlock::send(a1 + *(*a1 - 24), &v47, 0);
  v24[0] = &v47;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](v24);
}

void sub_1B5201450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  a29 = (v29 - 128);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

void quasar::RegularExpressionReplacer::apply(void *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (*a1 != a1[1])
  {
    std::wstring_convert<std::codecvt_utf8_utf16<wchar_t,1114111ul,(std::codecvt_mode)0>,wchar_t,std::allocator<wchar_t>,std::allocator<char>>::wstring_convert[abi:ne200100]();
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;
    v5 = *(a2 + 8);

    std::string::__init_copy_ctor_external(a3, v4, v5);
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a2;
    a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }
}

void sub_1B52016C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::~wstring_convert(&a22);
  _Unwind_Resume(a1);
}

void quasar::ConfiguredProcessingBlock<quasar::SimpleTokenizerOptions>::setContextProvider(uint64_t a1, uint64_t *a2)
{
  v3 = (*(*a1 + 8))(a1);
  (**v3)(&v10);
  v4 = v10;
  v5 = v11;
  if (v10 != v11)
  {
    do
    {
      v6 = *v4;
      v7 = a2[1];
      v8 = *a2;
      v9 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      quasar::OptionValueBase::setContextProvider(v6, &v8);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = v10;
  }

  if (v4)
  {
    v11 = v4;
    operator delete(v4);
  }
}

void sub_1B52018DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SimpleTokenizerBlock::~SimpleTokenizerBlock(quasar::SimpleTokenizerBlock *this)
{
  *this = off_1F2D05208;
  v2 = (this + 208);
  *(this + 26) = &unk_1F2D052B0;
  v3 = (this + 184);
  std::vector<std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>>::__destroy_vector::operator()[abi:ne200100](&v3);
  quasar::ConfiguredProcessingBlock<quasar::SimpleTokenizerOptions>::~ConfiguredProcessingBlock(this, &off_1F2D05318);
  quasar::ProcessingBlock::~ProcessingBlock(v2);
}

{
  *this = off_1F2D05208;
  v2 = (this + 208);
  *(this + 26) = &unk_1F2D052B0;
  v3 = (this + 184);
  std::vector<std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>>::__destroy_vector::operator()[abi:ne200100](&v3);
  quasar::ConfiguredProcessingBlock<quasar::SimpleTokenizerOptions>::~ConfiguredProcessingBlock(this, &off_1F2D05318);
  quasar::ProcessingBlock::~ProcessingBlock(v2);
  MEMORY[0x1B8C85350](this, 0x10F3C4054690CFBLL);
}

void virtual thunk toquasar::SimpleTokenizerBlock::~SimpleTokenizerBlock(quasar::SimpleTokenizerBlock *this)
{
  v1 = this + *(*this - 24);
  *v1 = off_1F2D05208;
  *(v1 + 26) = &unk_1F2D052B0;
  v2 = (v1 + 184);
  std::vector<std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>>::__destroy_vector::operator()[abi:ne200100](&v2);
  quasar::ConfiguredProcessingBlock<quasar::SimpleTokenizerOptions>::~ConfiguredProcessingBlock(v1, &off_1F2D05318);
  quasar::ProcessingBlock::~ProcessingBlock(v1 + 26);
}

{
  v1 = this + *(*this - 24);
  *v1 = off_1F2D05208;
  *(v1 + 26) = &unk_1F2D052B0;
  v2 = (v1 + 184);
  std::vector<std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>>::__destroy_vector::operator()[abi:ne200100](&v2);
  quasar::ConfiguredProcessingBlock<quasar::SimpleTokenizerOptions>::~ConfiguredProcessingBlock(v1, &off_1F2D05318);
  quasar::ProcessingBlock::~ProcessingBlock(v1 + 26);
  MEMORY[0x1B8C85350](v1, 0x10F3C4054690CFBLL);
}

void std::vector<quasar::TranslationTokenInternal>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<quasar::TranslationTokenInternal>>::destroy[abi:ne200100]<quasar::TranslationTokenInternal,0>(a1, i))
  {
    i -= 136;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<quasar::TranslationTokenInternal>>::destroy[abi:ne200100]<quasar::TranslationTokenInternal,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 104);
  if (v3)
  {
    *(a2 + 112) = v3;
    operator delete(v3);
  }

  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  v4 = *(a2 + 32);
  if (v4)
  {
    *(a2 + 40) = v4;
    operator delete(v4);
  }

  if (*(a2 + 23) < 0)
  {
    v5 = *a2;

    operator delete(v5);
  }
}

void quasar::TranslationTokenInternal::~TranslationTokenInternal(quasar::TranslationTokenInternal *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>::~pair(std::locale *this)
{
  if (SHIBYTE(this[10].__locale_) < 0)
  {
    operator delete(this[8].__locale_);
  }

  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

uint64_t quasar::ConfiguredProcessingBlock<quasar::SimpleTokenizerOptions>::~ConfiguredProcessingBlock(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[1];
  *(a1 + 8) = &unk_1F2D051C8;
  *(a1 + 24) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 160, *(a1 + 168));
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  *(a1 + 24) = &unk_1F2D08890;
  v4 = *(a1 + 120);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void std::vector<std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, std::locale *a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<quasar::RegexReplacementRule>>::destroy[abi:ne200100]<quasar::RegexReplacementRule,0>(a1, i))
  {
    i -= 11;
  }

  *(a1 + 8) = a2;
}

uint64_t std::vector<quasar::TranslationTokenInternal>::__emplace_back_slow_path<quasar::TranslationTokenInternal const&>(uint64_t *a1, const quasar::TranslationTokenInternal *a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v6 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TranslationTokenInternal>>(a1, v6);
  }

  v13 = 0;
  v14 = 136 * v2;
  quasar::TranslationTokenInternal::TranslationTokenInternal((136 * v2), a2);
  v15 = 136 * v2 + 136;
  v7 = a1[1];
  v8 = 136 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TranslationTokenInternal>,quasar::TranslationTokenInternal*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::TranslationTokenInternal>::~__split_buffer(&v13);
  return v12;
}

void sub_1B52020E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::TranslationTokenInternal>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TranslationTokenInternal>,quasar::TranslationTokenInternal*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      v9 = *(v7 + 56);
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 56) = v9;
      v10 = *(v7 + 72);
      *(a4 + 88) = *(v7 + 88);
      *(a4 + 72) = v10;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      *(v7 + 72) = 0;
      v11 = *(v7 + 96);
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 96) = v11;
      *(a4 + 104) = 0;
      *(a4 + 104) = *(v7 + 104);
      *(a4 + 120) = *(v7 + 120);
      *(v7 + 104) = 0;
      *(v7 + 112) = 0;
      *(v7 + 120) = 0;
      *(a4 + 128) = *(v7 + 128);
      v7 += 136;
      a4 += 136;
    }

    while (v7 != a3);
    v16 = a4;
    v14 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<quasar::TranslationTokenInternal>>::destroy[abi:ne200100]<quasar::TranslationTokenInternal,0>(a1, v5);
      v5 += 136;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TranslationTokenInternal>,quasar::TranslationTokenInternal*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

uint64_t std::__split_buffer<quasar::TranslationTokenInternal>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::TranslationTokenInternal>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::TranslationTokenInternal>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 136;
    std::allocator_traits<std::allocator<quasar::TranslationTokenInternal>>::destroy[abi:ne200100]<quasar::TranslationTokenInternal,0>(v5, v4 - 136);
  }
}

void std::codecvt_utf8_utf16<wchar_t,1114111ul,(std::codecvt_mode)0>::~codecvt_utf8_utf16[abi:ne200100](std::codecvt<wchar_t, char, mbstate_t> *a1)
{
  std::codecvt<wchar_t,char,__mbstate_t>::~codecvt(a1);

  JUMPOUT(0x1B8C85350);
}

void std::wstring_convert<std::codecvt_utf8_utf16<wchar_t,1114111ul,(std::codecvt_mode)0>,wchar_t,std::allocator<wchar_t>,std::allocator<char>>::from_bytes(uint64_t a1@<X0>, std::wstring *a2@<X1>, std::wstring *a3@<X2>, uint64_t a4@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  *(a1 + 184) = 0;
  if (!*(a1 + 48))
  {
    goto LABEL_23;
  }

  v7 = a2;
  std::wstring::basic_string[abi:ne200100](a4, 2 * (a3 - a2), 0);
  if (a3 != v7)
  {
    if (*(a4 + 23) >= 0)
    {
      v8 = 4;
    }

    else
    {
      v8 = (*(a4 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    std::wstring::resize(a4, v8, 0);
    v9 = *(a1 + 136);
    v29[4] = *(a1 + 120);
    v29[5] = v9;
    v10 = *(a1 + 168);
    v29[6] = *(a1 + 152);
    v29[7] = v10;
    v11 = *(a1 + 72);
    v29[0] = *(a1 + 56);
    v29[1] = v11;
    v12 = *(a1 + 88);
    v13 = *(a1 + 104);
    v14 = *(a4 + 23);
    if ((v14 & 0x80u) == 0)
    {
      v15 = a4;
    }

    else
    {
      v15 = *a4;
    }

    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a4 + 8);
    }

    v16 = &v15[4 * v14];
    v29[2] = *(a1 + 88);
    v29[3] = v13;
    do
    {
      v17 = (*(**(a1 + 48) + 32))(*(a1 + 48), v29, v7, a3, &v28, v15, v16, &v27, v12);
      v18 = v28 == v7;
      *(a1 + 184) += v28 - v7;
      if (v18)
      {
        goto LABEL_34;
      }

      if (v17 != 1)
      {
        if (v17)
        {
          if (v17 != 3)
          {
LABEL_34:
            if ((*(a4 + 23) & 0x80) != 0)
            {
              goto LABEL_35;
            }

            goto LABEL_23;
          }

          if (*(a4 + 23) >= 0)
          {
            v24 = a4;
          }

          else
          {
            v24 = *a4;
          }

          std::wstring::resize(a4, &v15[-v24] >> 2, 0);
          std::wstring::append[abi:ne200100]<wchar_t const*,0>(a4, v7, a3);
        }

        else
        {
          if (*(a4 + 23) >= 0)
          {
            v26 = a4;
          }

          else
          {
            v26 = *a4;
          }

          std::wstring::resize(a4, (v27 - v26) >> 2, 0);
        }

        return;
      }

      if (*(a4 + 23) >= 0)
      {
        v19 = a4;
      }

      else
      {
        v19 = *a4;
      }

      v20 = v27 - v19;
      std::wstring::resize(a4, (v27 - v19) >> 1, 0);
      v21 = *(a4 + 23);
      v22 = v21;
      v23 = *a4;
      if ((v21 & 0x80u) == 0)
      {
        v23 = a4;
      }

      v15 = (v23 + v20);
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(a4 + 8);
      }

      v16 = (v23 + 4 * v21);
      v7 = v28;
    }

    while (v28 < a3);
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_23;
    }

LABEL_35:
    operator delete(*a4);
LABEL_23:
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      if (*(a1 + 47))
      {
        *a4 = *(a1 + 24);
        *(a4 + 16) = *(a1 + 40);
        return;
      }

LABEL_41:
      std::__throw_range_error[abi:ne200100]("wstring_convert: from_bytes error");
    }

    v25 = *(a1 + 32);
    if (!v25)
    {
      goto LABEL_41;
    }

    std::basic_string<char32_t>::__init_copy_ctor_external(a4, *(a1 + 24), v25);
  }
}

void sub_1B5202588(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::wstring::basic_string[abi:ne200100](uint64_t result, unint64_t a2, int a3)
{
  if (a2 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 >= 5)
  {
    if ((a2 | 1) == 5)
    {
      v3 = 7;
    }

    else
    {
      v3 = (a2 | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(result, v3);
  }

  *(result + 23) = a2;
  if (a2)
  {
    v4 = 0;
    v5 = vdupq_n_s64(a2 - 1);
    v6 = (result + 8);
    do
    {
      v7 = vdupq_n_s64(v4);
      v8 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1B5AE0060)));
      if (vuzp1_s16(v8, *v5.i8).u8[0])
      {
        *(v6 - 2) = a3;
      }

      if (vuzp1_s16(v8, *&v5).i8[2])
      {
        *(v6 - 1) = a3;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1B5AE0050)))).i32[1])
      {
        *v6 = a3;
        v6[1] = a3;
      }

      v4 += 4;
      v6 += 4;
    }

    while (((a2 + 3) & 0x7FFFFFFFFFFFFFFCLL) != v4);
  }

  *(result + 4 * a2) = 0;
  return result;
}

std::wstring *std::wstring::append[abi:ne200100]<wchar_t const*,0>(std::wstring *this, std::wstring *__src, std::wstring *a3)
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
      std::wstring::__grow_by(this, v8, size - v8 + v12, size, size, 0, 0);
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

    std::wstring::append(this, v13, v14);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_1B5202838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::wstring *std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::wstring>,std::__wrap_iter<wchar_t const*>,std::regex_traits<wchar_t>,wchar_t>(std::wstring *a1, std::__wrap_iter<const wchar_t *> a2, std::__wrap_iter<const wchar_t *> a3, const std::regex_iterator<std::__wrap_iter<const wchar_t *>, wchar_t>::regex_type *a4, __int32 *a5, unsigned __int32 __m)
{
  v6 = __m;
  i = a2.__i_;
  std::regex_iterator<std::__wrap_iter<wchar_t const*>,wchar_t,std::regex_traits<wchar_t>>::regex_iterator(&v18, a2, a3, a4, __m);
  memset(&v17.__match_.__prefix_, 0, 17);
  memset(&v17.__match_.__suffix_, 0, 17);
  v17.__match_.__ready_ = 0;
  v17.__match_.__position_start_.__i_ = 0;
  memset(&v17.__match_, 0, 41);
  memset(&v17, 0, 28);
  if (std::regex_iterator<std::__wrap_iter<wchar_t const*>,wchar_t,std::regex_traits<wchar_t>>::operator==(&v18, &v17))
  {
    if ((v6 & 0x200) == 0)
    {
      while (i != a3.__i_)
      {
        std::wstring::push_back(a1, *i++);
      }
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = &a5[wcslen(a5)];
    while (!std::regex_iterator<std::__wrap_iter<wchar_t const*>,wchar_t,std::regex_traits<wchar_t>>::operator==(&v18, &v17))
    {
      if ((v6 & 0x200) == 0)
      {
        v14 = v18.__match_.__prefix_.first.__i_;
        v15 = v18.__match_.__prefix_.second.__i_;
        while (v14 != v15)
        {
          std::wstring::push_back(a1, *v14++);
        }
      }

      a1 = std::match_results<std::__wrap_iter<wchar_t const*>>::format<std::back_insert_iterator<std::wstring>>(&v18.__match_, a1, a5, v13, v6);
      v12 = v18.__match_.__suffix_.first.__i_;
      v11 = v18.__match_.__suffix_.second.__i_;
      if ((v6 & 0x400) != 0)
      {
        break;
      }

      std::regex_iterator<std::__wrap_iter<wchar_t const*>,wchar_t,std::regex_traits<wchar_t>>::operator++(&v18);
    }

    if ((v6 & 0x200) == 0)
    {
      while (v12 != v11)
      {
        std::wstring::push_back(a1, *v12++);
      }
    }
  }

  if (v17.__match_.__matches_.__begin_)
  {
    v17.__match_.__matches_.__end_ = v17.__match_.__matches_.__begin_;
    operator delete(v17.__match_.__matches_.__begin_);
  }

  if (v18.__match_.__matches_.__begin_)
  {
    v18.__match_.__matches_.__end_ = v18.__match_.__matches_.__begin_;
    operator delete(v18.__match_.__matches_.__begin_);
  }

  return a1;
}

void sub_1B52029D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::regex_iterator<std::__wrap_iter<wchar_t const*>,wchar_t,std::regex_traits<wchar_t>>::operator==(const std::regex_iterator<std::__wrap_iter<const wchar_t *>, wchar_t> *this, const std::regex_iterator<std::__wrap_iter<const wchar_t *>, wchar_t> *__x)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  end = p_match->__matches_.__end_;
  v9 = &__x->__match_;
  v7 = __x->__match_.__matches_.__begin_;
  v8 = v9->__matches_.__end_;
  v10 = v8 == v7 && end == begin;
  if (end != begin && v8 != v7)
  {
    return this->__begin_.__i_ == __x->__begin_.__i_ && this->__end_.__i_ == __x->__end_.__i_ && this->__pregex_ == __x->__pregex_ && this->__flags_ == __x->__flags_ && std::sub_match<std::__wrap_iter<wchar_t const*>>::compare[abi:ne200100](begin, v7) == 0;
  }

  return v10;
}

std::wstring *std::match_results<std::__wrap_iter<wchar_t const*>>::format<std::back_insert_iterator<std::wstring>>(void **a1, std::wstring *this, std::wstring::value_type *a3, std::wstring::value_type *a4, __int16 a5)
{
  v6 = a3;
  if ((a5 & 0x100) != 0)
  {
    if (a3 == a4)
    {
      return this;
    }

    while (1)
    {
      v29 = *v6;
      if (*v6 == 92)
      {
        v33 = v6 + 1;
        if (v6 + 1 != a4)
        {
          v29 = *v33;
          v34 = *v33 - 48;
          if (v34 <= 9)
          {
            if (0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) <= v34)
            {
              v35 = (a1 + 3);
            }

            else
            {
              v35 = &(*a1)[3 * v34];
            }

            v36 = *v35;
            v37 = v35[1];
            while (v36 != v37)
            {
              v38 = *v36++;
              std::wstring::push_back(this, v38);
            }

            goto LABEL_54;
          }

          ++v6;
        }
      }

      else if (v29 == 38)
      {
        v30 = **a1;
        v31 = (*a1)[1];
        while (v30 != v31)
        {
          v32 = *v30++;
          std::wstring::push_back(this, v32);
        }

        goto LABEL_53;
      }

      std::wstring::push_back(this, v29);
LABEL_53:
      v33 = v6;
LABEL_54:
      v6 = v33 + 1;
      if (v33 + 1 == a4)
      {
        return this;
      }
    }
  }

  if (a3 != a4)
  {
    do
    {
      v9 = *v6;
      v10 = v6 + 1;
      if (*v6 == 36 && v10 != a4)
      {
        v9 = *v10;
        if (*v10 > 38)
        {
          if (v9 == 39)
          {
            v26 = a1[9];
            v27 = a1[10];
            while (v26 != v27)
            {
              v28 = *v26++;
              std::wstring::push_back(this, v28);
            }

            goto LABEL_10;
          }

          if (v9 == 96)
          {
            v15 = a1[6];
            v16 = a1[7];
            while (v15 != v16)
            {
              v17 = *v15++;
              std::wstring::push_back(this, v17);
            }

            goto LABEL_10;
          }
        }

        else
        {
          if (v9 == 36)
          {
            goto LABEL_9;
          }

          if (v9 == 38)
          {
            v12 = **a1;
            v13 = (*a1)[1];
            while (v12 != v13)
            {
              v14 = *v12++;
              std::wstring::push_back(this, v14);
            }

            goto LABEL_10;
          }
        }

        v18 = (v9 - 48);
        if (v18 <= 9)
        {
          if (v6 + 2 != a4)
          {
            v19 = v6[2];
            v20 = v19 - 48;
            v21 = v19 + 10 * v18 - 48;
            if (v20 <= 9)
            {
              v18 = v21;
              v10 = v6 + 2;
            }
          }

          if (0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) <= v18)
          {
            v22 = (a1 + 3);
          }

          else
          {
            v22 = &(*a1)[3 * v18];
          }

          v23 = *v22;
          v24 = v22[1];
          while (v23 != v24)
          {
            v25 = *v23++;
            std::wstring::push_back(this, v25);
          }

          goto LABEL_10;
        }

        v9 = 36;
      }

      v10 = v6;
LABEL_9:
      std::wstring::push_back(this, v9);
LABEL_10:
      v6 = v10 + 1;
    }

    while (v10 + 1 != a4);
  }

  return this;
}

std::regex_iterator<std::__wrap_iter<const wchar_t *>, wchar_t> *__cdecl std::regex_iterator<std::__wrap_iter<wchar_t const*>,wchar_t,std::regex_traits<wchar_t>>::operator++(std::regex_iterator<std::__wrap_iter<const wchar_t *>, wchar_t> *this)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  i = p_match[-1].__position_start_.__i_;
  flags = i | 0x800;
  LODWORD(p_match[-1].__position_start_.__i_) = i | 0x800;
  if (p_match->__matches_.__end_ == begin)
  {
    p_unmatched = &p_match->__unmatched_;
  }

  else
  {
    p_unmatched = begin;
  }

  v7 = p_unmatched->second.__i_;
  if (p_unmatched->first.__i_ != v7)
  {
    v8 = p_unmatched->second.__i_;
LABEL_6:
    this->__flags_ = flags | 0x80;
    v10 = this->__end_.__i_;
    pregex = this->__pregex_;
    memset(&__p.__prefix_, 0, 17);
    memset(&__p.__suffix_, 0, 17);
    __p.__ready_ = 0;
    __p.__position_start_ = 0;
    memset(&__p, 0, 41);
    v11 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__search<std::allocator<std::sub_match<wchar_t const*>>>(pregex, v8, v10, &__p, flags | 0x80);
    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&p_match->__matches_, v8, v10, &__p, (flags & 0x800) != 0);
    if (__p.__matches_.__begin_)
    {
      __p.__matches_.__end_ = __p.__matches_.__begin_;
      operator delete(__p.__matches_.__begin_);
    }

    if (v11)
    {
      this->__match_.__prefix_.first.__i_ = v7;
      this->__match_.__prefix_.matched = this->__match_.__prefix_.second.__i_ != v7;
      return this;
    }

    begin = p_match->__matches_.__begin_;
    goto LABEL_16;
  }

  v12 = this->__end_.__i_;
  if (v12 == v7)
  {
LABEL_16:
    if (begin)
    {
      this->__match_.__matches_.__end_ = begin;
      operator delete(begin);
      p_match->__matches_.__begin_ = 0;
      p_match->__matches_.__end_ = 0;
      p_match->__matches_.__end_cap_.__value_ = 0;
    }

    this->__match_.__ready_ = 0;
    *&p_match->__matches_.__begin_ = 0u;
    *&p_match->__matches_.__end_cap_.__value_ = 0u;
    *(&p_match->__unmatched_.std::pair<std::__wrap_iter<const wchar_t *>, std::__wrap_iter<const wchar_t *>> + 1) = 0u;
    this->__match_.__prefix_.first.__i_ = 0;
    this->__match_.__prefix_.second.__i_ = 0;
    this->__match_.__prefix_.matched = 0;
    this->__match_.__suffix_.first.__i_ = 0;
    this->__match_.__suffix_.second.__i_ = 0;
    this->__match_.__suffix_.matched = 0;
    this->__match_.__position_start_.__i_ = 0;
    return this;
  }

  v13 = this->__pregex_;
  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 41);
  v14 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__search<std::allocator<std::sub_match<wchar_t const*>>>(v13, v7, v12, &__p, i | 0x860u);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&p_match->__matches_, v7, v12, &__p, 1);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  if ((v14 & 1) == 0)
  {
    v8 = v7 + 1;
    flags = this->__flags_;
    goto LABEL_6;
  }

  return this;
}

void sub_1B5202EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::regex_iterator<std::__wrap_iter<const wchar_t *>, wchar_t> *__cdecl std::regex_iterator<std::__wrap_iter<wchar_t const*>,wchar_t,std::regex_traits<wchar_t>>::regex_iterator(std::regex_iterator<std::__wrap_iter<const wchar_t *>, wchar_t> *this, std::__wrap_iter<const wchar_t *> __a, std::__wrap_iter<const wchar_t *> __b, const std::regex_iterator<std::__wrap_iter<const wchar_t *>, wchar_t>::regex_type *__re, std::regex_constants::match_flag_type __m)
{
  v5 = __m;
  this->__begin_ = __a;
  this->__end_ = __b;
  this->__pregex_ = __re;
  this->__flags_ = __m;
  *&this->__match_.__matches_.__begin_ = 0u;
  p_match = &this->__match_;
  this->__match_.__prefix_.first.__i_ = 0;
  this->__match_.__prefix_.second.__i_ = 0;
  this->__match_.__prefix_.matched = 0;
  this->__match_.__suffix_.first.__i_ = 0;
  this->__match_.__suffix_.second.__i_ = 0;
  this->__match_.__suffix_.matched = 0;
  this->__match_.__ready_ = 0;
  this->__match_.__position_start_.__i_ = 0;
  *&this->__match_.__matches_.__end_cap_.__value_ = 0u;
  *(&this->__match_.__unmatched_.std::pair<std::__wrap_iter<const wchar_t *>, std::__wrap_iter<const wchar_t *>> + 1) = 0u;
  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 41);
  std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__search<std::allocator<std::sub_match<wchar_t const*>>>(__re, __a.__i_, __b.__i_, &__p, __m);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&p_match->__matches_, __a.__i_, __b.__i_, &__p, (v5 & 0x800) != 0);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  return this;
}

void sub_1B5202FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v10 + 40) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__search<std::allocator<std::sub_match<wchar_t const*>>>(uint64_t a1, __int32 *__f, __int32 *__l, std::match_results<const wchar_t *> *this, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  std::match_results<char const*>::__init(this, *(a1 + 28) + 1, __f, __l, (v9 & 0x800) >> 11);
  if (std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__match_at_start<std::allocator<std::sub_match<wchar_t const*>>>(a1, __f, __l, this, v9, (v9 & 0x800) == 0))
  {
    if (this->__matches_.__end_ == this->__matches_.__begin_)
    {
      p_unmatched = &this->__unmatched_;
    }

    else
    {
      p_unmatched = this->__matches_.__begin_;
    }

LABEL_19:
    first = p_unmatched->first;
    this->__prefix_.second = p_unmatched->first;
    this->__prefix_.matched = this->__prefix_.first != first;
    second = p_unmatched->second;
    this->__suffix_.first = second;
    this->__suffix_.matched = second != this->__suffix_.second;
    return 1;
  }

  if (__f != __l && (v9 & 0x40) == 0)
  {
    v11 = __f + 1;
    if (v11 != __l)
    {
      v12 = &this->__unmatched_;
      do
      {
        std::vector<std::sub_match<char const*>>::assign(&this->__matches_, 0xAAAAAAAAAAAAAAABLL * ((this->__matches_.__end_ - this->__matches_.__begin_) >> 3), &this->__unmatched_);
        v13 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__match_at_start<std::allocator<std::sub_match<wchar_t const*>>>(a1, v11, __l, this, v9 | 0x80u, 0);
        begin = this->__matches_.__begin_;
        end = this->__matches_.__end_;
        if (v13)
        {
          goto LABEL_16;
        }

        std::vector<std::sub_match<char const*>>::assign(&this->__matches_, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3), &this->__unmatched_);
        ++v11;
      }

      while (v11 != __l);
    }

    v12 = &this->__unmatched_;
    std::vector<std::sub_match<char const*>>::assign(&this->__matches_, 0xAAAAAAAAAAAAAAABLL * ((this->__matches_.__end_ - this->__matches_.__begin_) >> 3), &this->__unmatched_);
    if (std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__match_at_start<std::allocator<std::sub_match<wchar_t const*>>>(a1, v11, __l, this, v9 | 0x80u, 0))
    {
      begin = this->__matches_.__begin_;
      end = this->__matches_.__end_;
LABEL_16:
      if (end == begin)
      {
        p_unmatched = v12;
      }

      else
      {
        p_unmatched = begin;
      }

      goto LABEL_19;
    }
  }

  result = 0;
  this->__matches_.__end_ = this->__matches_.__begin_;
  return result;
}

uint64_t std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__match_at_start<std::allocator<std::sub_match<wchar_t const*>>>(uint64_t a1, const __int32 *a2, const __int32 *a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__match_at_start_ecma<std::allocator<std::sub_match<wchar_t const*>>>(a1, a2, a3, a4, a5, a6);
  }

  if (*(a1 + 28))
  {
    return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__match_at_start_posix_subs<std::allocator<std::sub_match<wchar_t const*>>>(a1, a2, a3, a4, a5, a6);
  }

  return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<wchar_t const*>>>(a1, a2, a3, a4, a5, a6);
}

uint64_t std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__match_at_start_ecma<std::allocator<std::sub_match<wchar_t const*>>>(uint64_t a1, const __int32 *a2, const __int32 *a3, uint64_t *a4, int a5, char a6)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  std::vector<std::__state<wchar_t>>::push_back[abi:ne200100](&v41, v36);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    *&v37 = *&v36[32];
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v42;
  *(v42 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v42 - 40), *(a1 + 32));
  v14 = v42;
  *(v42 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= ((a3 - a2) >> 2))
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          std::vector<std::sub_match<wchar_t const*>>::__init_with_size[abi:ne200100]<std::sub_match<wchar_t const*>*,std::sub_match<wchar_t const*>*>(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          std::vector<std::pair<unsigned long,wchar_t const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,wchar_t const*>*,std::pair<unsigned long,wchar_t const*>*>(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          std::vector<std::__state<wchar_t>>::push_back[abi:ne200100](&v41, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v42;
    ++v15;
    if (v41 == v42)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v42 - 96;
    std::allocator<std::__state<char>>::destroy[abi:ne200100](&v41, (v42 - 96));
    v42 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v41;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v36);
  return v24;
}

void sub_1B520352C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<wchar_t const*>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_70;
  }

  *v56 = 0;
  memset(&v56[8], 0, 32);
  v57 = 0uLL;
  *__p = 0uLL;
  memset(v59, 0, 21);
  std::deque<std::__state<wchar_t>>::push_back(&v60, v56);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v56[32])
  {
    *&v57 = *&v56[32];
    operator delete(*&v56[32]);
  }

  v52 = a4;
  v13 = v60.i64[1];
  v14 = *(&v62 + 1) + v62 - 1;
  v15 = v14 / 0x2A;
  v16 = *(v60.i64[1] + 8 * (v14 / 0x2A));
  v17 = 3 * (v14 % 0x2A);
  v18 = v16 + 32 * v17;
  *v18 = 0;
  *(v18 + 8) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 16) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 24) = a3;
  std::vector<std::pair<unsigned long,char const*>>::resize((*(v13 + 8 * v15) + 32 * v17 + 56), *(a1 + 32));
  v55 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *(&v62 + 1);
  v22 = v60.i64[1];
  v23 = *(&v62 + 1) + v62 - 1;
  v24 = v23 / 0x2A;
  v25 = 3 * (v23 % 0x2A);
  *(*(v60.i64[1] + 8 * v24) + 32 * v25 + 80) = v6;
  v54 = a2;
  v53 = (a3 - a2) >> 2;
  v26 = *(v22 + 8 * v24) + 32 * v25;
  *(v26 + 88) = a5;
  *(v26 + 92) = a6;
  v27 = (a3 - a2) >> 2;
  do
  {
    if ((++v19 & 0xFFF) == 0 && (v19 >> 12) >= v27)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v29 = *(v60.i64[1] + 8 * ((v21 + v62 - 1) / 0x2AuLL)) + 96 * ((v21 + v62 - 1) % 0x2AuLL);
    v30 = *(v29 + 80);
    if (v30)
    {
      (*(*v30 + 16))(v30, v29);
    }

    v31 = *v29;
    if (*v29 <= -995)
    {
      if (v31 != -1000)
      {
        if (v31 == -999)
        {
          goto LABEL_52;
        }

        if (v31 != -995)
        {
          goto LABEL_72;
        }

        std::deque<std::__state<wchar_t>>::push_front(&v60, v29);
        goto LABEL_51;
      }

      v32 = *(v29 + 16);
      v34 = (a5 & 0x1000) == 0 || v32 == a3;
      v35 = v32 != v54 || (a5 & 0x20) == 0;
      if (!v35 || !v34)
      {
        goto LABEL_51;
      }

      v36 = v32 - *(v29 + 8);
      v37 = v36 >> 2;
      if (v20 <= v36 >> 2)
      {
        v38 = v36 >> 2;
      }

      else
      {
        v38 = v20;
      }

      if (v55)
      {
        v20 = v38;
      }

      else
      {
        v20 = v37;
      }

      if (v20 != v53)
      {
        std::deque<std::__state<char>>::pop_back(&v60);
        v55 = 1;
        goto LABEL_52;
      }

      v39 = v60.i64[1];
      v40 = v61;
      if (v61 == v60.i64[1])
      {
        v40 = v60.i64[1];
      }

      else
      {
        v41 = (v60.i64[1] + 8 * (v62 / 0x2A));
        v42 = (*v41 + 96 * (v62 % 0x2A));
        v43 = *(v60.i64[1] + 8 * ((*(&v62 + 1) + v62) / 0x2AuLL)) + 96 * ((*(&v62 + 1) + v62) % 0x2AuLL);
        if (v42 != v43)
        {
          do
          {
            std::allocator<std::__state<char>>::destroy[abi:ne200100](&v60, v42);
            v42 += 12;
            if ((v42 - *v41) == 4032)
            {
              v44 = v41[1];
              ++v41;
              v42 = v44;
            }
          }

          while (v42 != v43);
          v39 = v60.i64[1];
          v40 = v61;
        }
      }

      *(&v62 + 1) = 0;
      v47 = (v40 - v39) >> 3;
      if (v47 >= 3)
      {
        do
        {
          operator delete(*v39);
          v39 = (v60.i64[1] + 8);
          v60.i64[1] = v39;
          v47 = (v61 - v39) >> 3;
        }

        while (v47 > 2);
      }

      if (v47 == 1)
      {
        v48 = 21;
      }

      else
      {
        if (v47 != 2)
        {
LABEL_67:
          v55 = 1;
          v20 = v53;
          goto LABEL_52;
        }

        v48 = 42;
      }

      *&v62 = v48;
      goto LABEL_67;
    }

    if (v31 <= -993)
    {
      if (v31 == -994)
      {
        goto LABEL_52;
      }

      if (v31 != -993)
      {
        goto LABEL_72;
      }

LABEL_51:
      std::deque<std::__state<char>>::pop_back(&v60);
      goto LABEL_52;
    }

    if (v31 == -992)
    {
      v45 = *(v29 + 16);
      *v56 = *v29;
      *&v56[16] = v45;
      v57 = 0uLL;
      *&v56[32] = 0;
      std::vector<std::sub_match<wchar_t const*>>::__init_with_size[abi:ne200100]<std::sub_match<wchar_t const*>*,std::sub_match<wchar_t const*>*>(&v56[32], *(v29 + 32), *(v29 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v29 + 40) - *(v29 + 32)) >> 3));
      __p[0] = 0;
      __p[1] = 0;
      v59[0] = 0;
      std::vector<std::pair<unsigned long,wchar_t const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,wchar_t const*>*,std::pair<unsigned long,wchar_t const*>*>(__p, *(v29 + 56), *(v29 + 64), (*(v29 + 64) - *(v29 + 56)) >> 4);
      v46 = *(v29 + 80);
      *(&v59[1] + 5) = *(v29 + 85);
      v59[1] = v46;
      (*(**(v29 + 80) + 24))(*(v29 + 80), 1, v29);
      (*(*v59[1] + 24))(v59[1], 0, v56);
      std::deque<std::__state<wchar_t>>::push_back(&v60, v56);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (*&v56[32])
      {
        *&v57 = *&v56[32];
        operator delete(*&v56[32]);
      }
    }

    else if (v31 != -991)
    {
LABEL_72:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
    }

LABEL_52:
    v21 = *(&v62 + 1);
  }

  while (*(&v62 + 1));
  if ((v55 & 1) == 0)
  {
LABEL_70:
    v50 = 0;
    goto LABEL_71;
  }

  v49 = *v52;
  *v49 = v54;
  *(v49 + 8) = v54 + 4 * v20;
  v50 = 1;
  *(v49 + 16) = 1;
LABEL_71:
  std::deque<std::__state<char>>::~deque[abi:ne200100](&v60);
  return v50;
}

uint64_t std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__match_at_start_posix_subs<std::allocator<std::sub_match<wchar_t const*>>>(uint64_t a1, const __int32 *a2, const __int32 *a3, uint64_t *a4, int a5, char a6)
{
  v53 = 0;
  v54 = 0;
  v55 = 0;
  *v50 = 0;
  memset(&v50[8], 0, 32);
  v51 = 0u;
  memset(v52, 0, 37);
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_47;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v45 = 0;
  memset(&v45[8], 0, 32);
  v46 = 0uLL;
  *__p = 0uLL;
  memset(v48, 0, 21);
  std::vector<std::__state<wchar_t>>::push_back[abi:ne200100](&v53, v45);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v45[32])
  {
    *&v46 = *&v45[32];
    operator delete(*&v45[32]);
  }

  v41 = a4;
  v13 = v54;
  *(v54 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 8), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v54 - 5), *(a1 + 32));
  v14 = 0;
  v44 = 0;
  v15 = 0;
  v42 = a3 - a2;
  v43 = a3;
  v16 = v54;
  *(v54 - 2) = v6;
  *(v16 - 2) = a5;
  *(v16 - 4) = a6;
  v17 = (a3 - a2) >> 2;
  do
  {
    v18 = (++v15 & 0xFFF) != 0 || (v15 >> 12) < v17;
    if (!v18)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v20 = v16 - 2;
    v19 = *(v16 - 2);
    v21 = v16 - 12;
    if (v19)
    {
      (*(*v19 + 16))(v19, v16 - 12);
    }

    v22 = *v21;
    if (*v21 > -994)
    {
      switch(v22)
      {
        case -993:
          goto LABEL_33;
        case -992:
          v30 = *(v16 - 5);
          *v45 = *v21;
          *&v45[16] = v30;
          v46 = 0uLL;
          *&v45[32] = 0;
          std::vector<std::sub_match<wchar_t const*>>::__init_with_size[abi:ne200100]<std::sub_match<wchar_t const*>*,std::sub_match<wchar_t const*>*>(&v45[32], *(v16 - 8), *(v16 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v16 - 7) - *(v16 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v48[0] = 0;
          std::vector<std::pair<unsigned long,wchar_t const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,wchar_t const*>*,std::pair<unsigned long,wchar_t const*>*>(__p, *(v16 - 5), *(v16 - 4), (*(v16 - 4) - *(v16 - 5)) >> 4);
          v31 = *v20;
          *(&v48[1] + 5) = *(v16 - 11);
          v48[1] = v31;
          (*(**v20 + 24))(*v20, 1, v16 - 12);
          (*(*v48[1] + 24))(v48[1], 0, v45);
          std::vector<std::__state<wchar_t>>::push_back[abi:ne200100](&v53, v45);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v45[32])
          {
            *&v46 = *&v45[32];
            operator delete(*&v45[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_53:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }
    }

    else
    {
      if ((v22 + 995) < 2)
      {
        goto LABEL_38;
      }

      if (v22 != -1000)
      {
        goto LABEL_53;
      }

      v23 = *(v16 - 10);
      if ((a5 & 0x20) != 0 && v23 == a2 || (a5 & 0x1000) != 0 && v23 != v43)
      {
LABEL_33:
        v29 = v54 - 12;
        std::allocator<std::__state<char>>::destroy[abi:ne200100](&v53, v54 - 12);
        v54 = v29;
        goto LABEL_38;
      }

      v24 = (v23 - *(v16 - 11)) >> 2;
      if ((v44 & (v14 >= v24)) == 0)
      {
        v25 = *(v16 - 5);
        *v50 = *v21;
        *&v50[16] = v25;
        if (v50 != v21)
        {
          std::vector<std::sub_match<char const*>>::__assign_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v50[32], *(v16 - 8), *(v16 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v16 - 7) - *(v16 - 8)) >> 3));
          std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(v52, *(v16 - 5), *(v16 - 4), (*(v16 - 4) - *(v16 - 5)) >> 4);
        }

        v26 = *v20;
        *(&v52[3] + 5) = *(v16 - 11);
        v52[3] = v26;
        v14 = v24;
      }

      v27 = v54;
      if (v14 == v42)
      {
        v28 = v53;
        while (v27 != v28)
        {
          v27 -= 12;
          std::allocator<std::__state<char>>::destroy[abi:ne200100](&v53, v27);
        }

        v54 = v28;
        v44 = 1;
        v14 = v42;
      }

      else
      {
        v32 = v54 - 12;
        std::allocator<std::__state<char>>::destroy[abi:ne200100](&v53, v54 - 12);
        v54 = v32;
        v44 = 1;
      }
    }

LABEL_38:
    v16 = v54;
  }

  while (v53 != v54);
  if ((v44 & 1) == 0)
  {
LABEL_47:
    v39 = 0;
    goto LABEL_48;
  }

  v33 = *v41;
  *v33 = a2;
  *(v33 + 8) = &a2[v14];
  *(v33 + 16) = 1;
  if (v51 != *&v50[32])
  {
    v34 = 0xAAAAAAAAAAAAAAABLL * ((v51 - *&v50[32]) >> 3);
    v35 = (*&v50[32] + 16);
    v36 = 1;
    do
    {
      v37 = v33 + 24 * v36;
      *v37 = *(v35 - 1);
      v38 = *v35;
      v35 += 24;
      *(v37 + 16) = v38;
      v18 = v34 > v36++;
    }

    while (v18);
  }

  v39 = 1;
LABEL_48:
  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }

  if (*&v50[32])
  {
    *&v51 = *&v50[32];
    operator delete(*&v50[32]);
  }

  *v50 = &v53;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v50);
  return v39;
}

void sub_1B5203F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  std::__state<char>::~__state(&a13);
  std::__state<char>::~__state(&a29);
  a29 = v29 - 120;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::__state<wchar_t>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::__state<wchar_t>>::__emplace_back_slow_path<std::__state<wchar_t>>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v5;
    result = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<std::__state<wchar_t>>::__emplace_back_slow_path<std::__state<wchar_t>>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char>>>(a1, v6);
  }

  v7 = 96 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 + 85) = *(a2 + 85);
  *(v7 + 80) = v9;
  *&v18 = 96 * v2 + 96;
  v10 = *(a1 + 8);
  v11 = 96 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__state<wchar_t>>,std::__state<wchar_t>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::__state<char>>::~__split_buffer(&v16);
  return v15;
}

void sub_1B52041EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::__state<char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__state<wchar_t>>,std::__state<wchar_t>*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *(v7 + 1);
      *a4 = *v7;
      *(a4 + 16) = v8;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v7 + 2);
      *(a4 + 48) = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v7 + 7);
      *(a4 + 72) = v7[9];
      v7[7] = 0;
      v7[8] = 0;
      v7[9] = 0;
      v9 = v7[10];
      *(a4 + 85) = *(v7 + 85);
      *(a4 + 80) = v9;
      v7 += 12;
      a4 += 96;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      std::allocator<std::__state<char>>::destroy[abi:ne200100](a1, v5);
      v5 += 12;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<wchar_t>>,std::__state<wchar_t>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<wchar_t>>,std::__state<wchar_t>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::vector<std::sub_match<wchar_t const*>>::__init_with_size[abi:ne200100]<std::sub_match<wchar_t const*>*,std::sub_match<wchar_t const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5204394(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<unsigned long,wchar_t const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,wchar_t const*>*,std::pair<unsigned long,wchar_t const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5204408(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::deque<std::__state<wchar_t>>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 42 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<std::__state<wchar_t>>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x2A)) + 96 * (v7 % 0x2A);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 32) = 0;
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  result = *(a2 + 56);
  *(v8 + 56) = result;
  *(v8 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v11 = *(a2 + 80);
  *(v8 + 85) = *(a2 + 85);
  *(v8 + 80) = v11;
  ++a1[5];
  return result;
}

int64x2_t std::deque<std::__state<wchar_t>>::push_front(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    std::deque<std::__state<wchar_t>>::__add_front_capacity(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x2A));
  v7 = *v6 + 96 * (v4 % 0x2A);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4032;
  }

  v8 = *(a2 + 16);
  *(v7 - 96) = *a2;
  *(v7 - 80) = v8;
  *(v7 - 56) = 0;
  *(v7 - 48) = 0;
  *(v7 - 64) = 0;
  *(v7 - 64) = *(a2 + 32);
  *(v7 - 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 - 40) = 0;
  *(v7 - 32) = 0;
  *(v7 - 24) = 0;
  *(v7 - 40) = *(a2 + 56);
  *(v7 - 24) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 - 11) = *(a2 + 85);
  *(v7 - 16) = v9;
  result = vaddq_s64(a1[2], xmmword_1B5AE1340);
  a1[2] = result;
  return result;
}

void *std::deque<std::__state<wchar_t>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *,std::allocator<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>>::emplace_back<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *&>(a1, &v10);
}

void sub_1B52047A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **std::deque<std::__state<wchar_t>>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x2A)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v10);
  }

  *(a1 + 32) = v5 + 42;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *,std::allocator<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>>::emplace_front<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>(a1, v11);
}

void sub_1B52049F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::sub_match<std::__wrap_iter<wchar_t const*>>::compare[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    std::basic_string<char32_t>::__init_with_size[abi:ne200100]<char32_t const*,char32_t const*>(&__dst, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 2);
  }

  else
  {
    __dst = 0;
    v16 = 0;
    v17 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    std::basic_string<char32_t>::__init_with_size[abi:ne200100]<char32_t const*,char32_t const*>(&__p, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    v3 = HIBYTE(v14);
    v4 = v13;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    __p = 0;
    v13 = 0;
    v14 = 0;
  }

  if ((v3 & 0x80u) == 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (v17 >= 0)
  {
    v6 = HIBYTE(v17);
  }

  else
  {
    v6 = v16;
  }

  if (v5 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (!v7 || (v17 >= 0 ? (p_dst = &__dst) : (p_dst = __dst), (v3 & 0x80u) == 0 ? (p_p = &__p) : (p_p = __p), v10 = wmemcmp(p_dst, p_p, v7), !v10))
  {
    if (v6 < v5)
    {
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      v10 = v5 < v6;
    }
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst);
  }

  return v10;
}

void sub_1B5204B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::wstring_convert<std::codecvt_utf8_utf16<wchar_t,1114111ul,(std::codecvt_mode)0>,wchar_t,std::allocator<wchar_t>,std::allocator<char>>::to_bytes(uint64_t a1@<X0>, std::string *a2@<X1>, std::string *a3@<X2>, std::string *a4@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  *(a1 + 184) = 0;
  if (!*(a1 + 48))
  {
    goto LABEL_62;
  }

  v7 = a2;
  std::string::basic_string[abi:ne200100](a4, (a3 - a2) >> 1, 0);
  if (a3 == v7)
  {
    v23 = *(a1 + 136);
    v52 = *(a1 + 120);
    v53 = v23;
    v24 = *(a1 + 168);
    v54 = *(a1 + 152);
    v55 = v24;
    v25 = *(a1 + 72);
    v48 = *(a1 + 56);
    v49 = v25;
    v26 = *(a1 + 104);
    v50 = *(a1 + 88);
    v51 = v26;
  }

  else
  {
    if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = 22;
    }

    else
    {
      v8 = (a4->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    std::string::resize(a4, v8, 0);
    v9 = *(a1 + 136);
    v52 = *(a1 + 120);
    v53 = v9;
    v10 = *(a1 + 168);
    v54 = *(a1 + 152);
    v55 = v10;
    v11 = *(a1 + 72);
    v48 = *(a1 + 56);
    v49 = v11;
    v12 = *(a1 + 88);
    v13 = *(a1 + 104);
    size = HIBYTE(a4->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v15 = a4;
    }

    else
    {
      v15 = a4->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = a4->__r_.__value_.__l.__size_;
    }

    v16 = &v15[size];
    v50 = *(a1 + 88);
    v51 = v13;
    while (1)
    {
      v17 = (*(**(a1 + 48) + 24))(*(a1 + 48), &v48, v7, a3, &v47, v15, v16, &v46, v12);
      v18 = v47 == v7;
      *(a1 + 184) += (v47 - v7) >> 2;
      if (v18)
      {
        goto LABEL_60;
      }

      if (v17 != 1)
      {
        break;
      }

      if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = a4;
      }

      else
      {
        v19 = a4->__r_.__value_.__r.__words[0];
      }

      v20 = v46 - v19;
      std::string::resize(a4, 2 * (v46 - v19), 0);
      v21 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
      if ((v21 & 0x80u) == 0)
      {
        v22 = a4;
      }

      else
      {
        v22 = a4->__r_.__value_.__r.__words[0];
      }

      v15 = v22 + v20;
      if ((v21 & 0x80u) != 0)
      {
        v21 = a4->__r_.__value_.__l.__size_;
      }

      v16 = v22 + v21;
      v7 = v47;
      if (v47 >= a3)
      {
        goto LABEL_60;
      }
    }

    if (v17)
    {
      if (v17 != 3)
      {
        goto LABEL_60;
      }

      if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = a4;
      }

      else
      {
        v27 = a4->__r_.__value_.__r.__words[0];
      }

      std::string::resize(a4, v15 - v27, 0);
      std::string::append[abi:ne200100]<char const*,0>(a4, v7, a3);
    }

    else
    {
      if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = a4;
      }

      else
      {
        v28 = a4->__r_.__value_.__r.__words[0];
      }

      std::string::resize(a4, v46 - v28, 0);
    }
  }

  v29 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
  v30 = a4->__r_.__value_.__l.__size_;
  if ((v29 & 0x80u) == 0)
  {
    v31 = 22;
  }

  else
  {
    v31 = (a4->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  std::string::resize(a4, v31, 0);
  if ((v29 & 0x80u) == 0)
  {
    v32 = v29;
  }

  else
  {
    v32 = v30;
  }

  v33 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  v34 = v33 < 0;
  if (v33 >= 0)
  {
    v35 = a4;
  }

  else
  {
    v35 = a4->__r_.__value_.__r.__words[0];
  }

  v36 = (v35 + v32);
  if (v34)
  {
    v37 = a4->__r_.__value_.__l.__size_;
  }

  else
  {
    v37 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
  }

  for (i = v36 + v37; ; i = v43 + v42)
  {
    v39 = (*(**(a1 + 48) + 40))(*(a1 + 48), &v48, v36, i, &v47);
    if (v39 != 1)
    {
      break;
    }

    if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = a4;
    }

    else
    {
      v40 = a4->__r_.__value_.__r.__words[0];
    }

    v41 = (v47 - v40);
    std::string::resize(a4, 2 * (v47 - v40), 0);
    v42 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
    if ((v42 & 0x80u) == 0)
    {
      v43 = a4;
    }

    else
    {
      v43 = a4->__r_.__value_.__r.__words[0];
    }

    v36 = &v41[v43];
    if ((v42 & 0x80u) != 0)
    {
      v42 = a4->__r_.__value_.__l.__size_;
    }
  }

  if (!v39)
  {
    v36 = v47;
    goto LABEL_68;
  }

  if (v39 == 3)
  {
LABEL_68:
    if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = a4;
    }

    else
    {
      v45 = a4->__r_.__value_.__r.__words[0];
    }

    std::string::resize(a4, v36 - v45, 0);
    return;
  }

LABEL_60:
  if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(a4->__r_.__value_.__l.__data_);
  }

LABEL_62:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (*(a1 + 23))
    {
      *&a4->__r_.__value_.__l.__data_ = *a1;
      a4->__r_.__value_.__r.__words[2] = *(a1 + 16);
      return;
    }

LABEL_73:
    std::__throw_range_error[abi:ne200100]("wstring_convert: to_bytes error");
  }

  v44 = *(a1 + 8);
  if (!v44)
  {
    goto LABEL_73;
  }

  std::string::__init_copy_ctor_external(a4, *a1, v44);
}

void sub_1B5204F48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::basic_regex[abi:ne200100](std::regex_traits<wchar_t> *a1, const __int32 *a2, int a3)
{
  v5 = std::regex_traits<wchar_t>::regex_traits(a1);
  LODWORD(v5[1].__loc_.__locale_) = a3;
  *(&v5[1].__loc_.__locale_ + 4) = 0u;
  *(&v5[1].__col_ + 4) = 0u;
  HIDWORD(v5[2].__ct_) = 0;
  wcslen(a2);
  std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse<wchar_t const*>();
}

void sub_1B5205000(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

std::regex_traits<wchar_t> *__cdecl std::regex_traits<wchar_t>::regex_traits(std::regex_traits<wchar_t> *this)
{
  v2 = MEMORY[0x1B8C850B0]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x1E69E5320]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x1E69E5348]);
  return this;
}

int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ecma_exp<wchar_t const*>(std::basic_regex<wchar_t> *a1, int *a2, int *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_term<wchar_t const*>(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v7 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = ++v7;
      do
      {
        v11 = v7;
        v7 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_term<wchar_t const*>(a1, v7, a3);
      }

      while (v7 != v11);
      if (v11 == v10)
      {
        operator new();
      }

      std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_alternation(a1, end, v9);
    }

    while (v11 != a3);
  }

  return v7;
}

std::basic_regex<wchar_t>::value_type *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_basic_reg_exp<wchar_t const*>(std::basic_regex<wchar_t> *this, int *a2, int *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_l_anchor(this);
      ++v3;
    }

    if (v3 != a3)
    {
      do
      {
        v6 = v3;
        v7 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_simple_RE<wchar_t const*>(this, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_r_anchor(this);
        ++v3;
      }
    }

    if (v3 != a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v3;
}

unsigned int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_extended_reg_exp<wchar_t const*>(std::basic_regex<wchar_t> *a1, std::basic_regex<wchar_t> *a2, std::basic_regex<wchar_t> *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ERE_branch<wchar_t const*>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = a1->__end_;
    v10 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ERE_branch<wchar_t const*>(a1, (v8 + 1), a3);
    if (v10 == v8 + 1)
    {
      goto LABEL_8;
    }

    v8 = v10;
    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_alternation(a1, end, v9);
  }

  return v8;
}

int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_grep<wchar_t const*>(std::basic_regex<wchar_t> *this, int *a2, int *a3)
{
  end = this->__end_;
  v6 = a2;
  if (a2 == a3)
  {
    goto LABEL_7;
  }

  while (*v6 != 10)
  {
    if (++v6 == a3)
    {
      v6 = a3;
      break;
    }
  }

  if (v6 == a2)
  {
LABEL_7:
    operator new();
  }

  std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_basic_reg_exp<wchar_t const*>(this, a2, v6);
  for (i = &v6[v6 != a3]; i != a3; i = &v8[v8 != a3])
  {
    v8 = i;
    while (*v8 != 10)
    {
      if (++v8 == a3)
      {
        v8 = a3;
        break;
      }
    }

    v9 = this->__end_;
    if (v8 == i)
    {
      operator new();
    }

    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_basic_reg_exp<wchar_t const*>(this, i, v8);
    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_alternation(this, end, v9);
  }

  return i;
}

std::basic_regex<wchar_t> *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_egrep<wchar_t const*>(std::basic_regex<wchar_t> *a1, std::basic_regex<wchar_t> *a2, std::basic_regex<wchar_t> *a3)
{
  end = a1->__end_;
  v6 = a2;
  if (a2 == a3)
  {
    goto LABEL_7;
  }

  while (LODWORD(v6->__traits_.__loc_.__locale_) != 10)
  {
    v6 = (v6 + 4);
    if (v6 == a3)
    {
      v6 = a3;
      break;
    }
  }

  if (v6 == a2)
  {
LABEL_7:
    operator new();
  }

  std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_extended_reg_exp<wchar_t const*>(a1, a2, v6);
  for (i = (v6 + 4 * (v6 != a3)); i != a3; i = (v8 + 4 * (v8 != a3)))
  {
    v8 = i;
    while (LODWORD(v8->__traits_.__loc_.__locale_) != 10)
    {
      v8 = (v8 + 4);
      if (v8 == a3)
      {
        v8 = a3;
        break;
      }
    }

    v9 = a1->__end_;
    if (v8 == i)
    {
      operator new();
    }

    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_extended_reg_exp<wchar_t const*>(a1, i, v8);
    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_alternation(a1, end, v9);
  }

  return i;
}

void sub_1B520592C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<std::__empty_state<wchar_t>>::shared_ptr[abi:ne200100]<std::__empty_state<wchar_t>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<std::__empty_state<wchar_t> *,std::shared_ptr<std::__empty_state<wchar_t>>::__shared_ptr_default_delete<std::__empty_state<wchar_t>,std::__empty_state<wchar_t>>,std::allocator<std::__empty_state<wchar_t>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<wchar_t> *,std::shared_ptr<std::__empty_state<wchar_t>>::__shared_ptr_default_delete<std::__empty_state<wchar_t>,std::__empty_state<wchar_t>>,std::allocator<std::__empty_state<wchar_t>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<wchar_t> *,std::shared_ptr<std::__empty_state<wchar_t>>::__shared_ptr_default_delete<std::__empty_state<wchar_t>,std::__empty_state<wchar_t>>,std::allocator<std::__empty_state<wchar_t>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void (__cdecl ***std::__empty_state<wchar_t>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<wchar_t> *__hidden this)))(std::__owns_one_state<wchar_t> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__empty_state<wchar_t>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<wchar_t> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

void std::__owns_one_state<wchar_t>::~__owns_one_state(std::__owns_one_state<wchar_t> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  JUMPOUT(0x1B8C85350);
}

int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_term<wchar_t const*>(std::basic_regex<wchar_t> *a1, int *a2, int *a3)
{
  result = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_assertion<wchar_t const*>(a1, a2, a3);
  if (result == a2)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
    v9 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_atom<wchar_t const*>(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = a1->__marked_count_ + 1;

      return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ERE_dupl_symbol<wchar_t const*>(a1, v9, a3, end, marked_count + 1, v10);
    }
  }

  return result;
}

int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_assertion<wchar_t const*>(std::basic_regex<wchar_t> *this, int *a2, int *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (*a2 <= 91)
  {
    if (v6 != 36)
    {
      v8 = v6 == 40;
      v7 = a2 + 1;
      v8 = !v8 || v7 == a3;
      if (!v8)
      {
        v8 = *v7 == 63;
        v9 = a2 + 2;
        if (v8 && v9 != a3)
        {
          v11 = *v9;
          if (v11 == 33)
          {
            std::regex_traits<wchar_t>::regex_traits(&v18.__traits_);
            memset(&v18.__flags_, 0, 40);
            v18.__flags_ = this->__flags_;
            v12 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse<wchar_t const*>(&v18, v3 + 3, a3);
            marked_count = v18.__marked_count_;
            std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_lookahead(this, &v18, 1, this->__marked_count_);
            this->__marked_count_ += marked_count;
            if (v12 == a3 || *v12 != 41)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
            }

            goto LABEL_31;
          }

          if (v11 == 61)
          {
            std::regex_traits<wchar_t>::regex_traits(&v18.__traits_);
            memset(&v18.__flags_, 0, 40);
            v18.__flags_ = this->__flags_;
            v12 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse<wchar_t const*>(&v18, v3 + 3, a3);
            v13 = v18.__marked_count_;
            std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_lookahead(this, &v18, 0, this->__marked_count_);
            this->__marked_count_ += v13;
            if (v12 == a3 || *v12 != 41)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
            }

LABEL_31:
            v3 = v12 + 1;
            std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v18.__traits_.__loc_);
            return v3;
          }
        }
      }

      return v3;
    }

    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_r_anchor(this);
    return ++v3;
  }

  if (v6 != 92)
  {
    if (v6 != 94)
    {
      return v3;
    }

    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_l_anchor(this);
    return ++v3;
  }

  if (a2 + 1 != a3)
  {
    v15 = a2[1];
    if (v15 == 66)
    {
      v16 = 1;
    }

    else
    {
      if (v15 != 98)
      {
        return v3;
      }

      v16 = 0;
    }

    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_word_boundary(this, v16);
    v3 += 2;
  }

  return v3;
}

int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_atom<wchar_t const*>(std::basic_regex<wchar_t> *this, int *a2, int *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (*a2 <= 62)
  {
    if (v6 != 40)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if ((v6 - 42) >= 2)
      {
        goto LABEL_28;
      }

LABEL_34:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
    }

    if (a2 + 1 != a3)
    {
      if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
      {
        p_open_count = &this->__open_count_;
        ++this->__open_count_;
        v9 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ecma_exp<wchar_t const*>(this, a2 + 3, a3);
        if (v9 == a3)
        {
          goto LABEL_35;
        }

        v10 = v9;
        if (*v9 != 41)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_begin_marked_subexpression(this);
      marked_count = this->__marked_count_;
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v12 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ecma_exp<wchar_t const*>(this, v3 + 1, a3);
      if (v12 != a3)
      {
        v10 = v12;
        if (*v12 == 41)
        {
          std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_end_marked_subexpression(this, marked_count);
LABEL_25:
          --*p_open_count;
          return v10 + 1;
        }
      }
    }

LABEL_35:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  if (v6 <= 91)
  {
    if (v6 == 91)
    {

      return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_bracket_expression<wchar_t const*>(this, a2, a3);
    }

    if (v6 == 63)
    {
      goto LABEL_34;
    }

LABEL_28:

    return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_pattern_character<wchar_t const*>(this, a2, a3);
  }

  if (v6 != 92)
  {
    if (v6 == 123)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_atom_escape<wchar_t const*>(this, a2, a3);
}

unsigned int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ERE_dupl_symbol<wchar_t const*>(uint64_t a1, int *a2, unsigned int *a3, std::__owns_one_state<wchar_t> *__s, size_t a5, size_t a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (*a2 > 62)
  {
    if (v12 == 63)
    {
      v13 = (a2 + 1);
      if (v11)
      {
        v19 = 1;
      }

      else
      {
        v19 = v13 == a3;
      }

      if (!v19 && *v13 == 63)
      {
        v13 = (a2 + 2);
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v17 = 1;
        goto LABEL_33;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v17 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return a2;
    }

    v15 = (a2 + 1);
    v16 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_DUP_COUNT<wchar_t const*>(a1, a2 + 1, a3, &__max);
    if (v16 != v15)
    {
      if (v16 != a3)
      {
        if (*v16 != 44)
        {
          if (*v16 == 125)
          {
            v13 = v16 + 1;
            if (!v11 && v13 != a3 && *v13 == 63)
            {
              v13 = v16 + 2;
              v14 = __max;
              a5 = v7;
              a6 = v6;
              a1 = v10;
              v17 = __max;
LABEL_33:
              v20 = __s;
              v21 = 0;
LABEL_46:
              std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_loop(a1, v14, v17, v20, a5, a6, v21);
              return v13;
            }

            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            v17 = __max;
LABEL_45:
            v20 = __s;
            v21 = 1;
            goto LABEL_46;
          }

          goto LABEL_58;
        }

        v22 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_58;
        }

        if (*v22 == 125)
        {
          v13 = v16 + 2;
          if (!v11 && v13 != a3 && *v13 == 63)
          {
            v13 = v16 + 3;
            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            goto LABEL_26;
          }

          v14 = __max;
          a5 = v7;
          a6 = v6;
          a1 = v10;
LABEL_36:
          v17 = -1;
          goto LABEL_45;
        }

        v26 = -1;
        v24 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_DUP_COUNT<wchar_t const*>(v10, v22, a3, &v26);
        if (v24 != v22 && v24 != a3 && *v24 == 125)
        {
          v17 = v26;
          v14 = __max;
          if (v26 >= __max)
          {
            v13 = v24 + 1;
            v21 = 1;
            if (!v11 && v13 != a3)
            {
              v25 = v24[1];
              v21 = v25 != 63;
              if (v25 == 63)
              {
                v13 = v24 + 2;
              }
            }

            a5 = v7;
            a6 = v6;
            a1 = v10;
            v20 = __s;
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_58:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v12 == 42)
  {
    v13 = (a2 + 1);
    if (v11)
    {
      v18 = 1;
    }

    else
    {
      v18 = v13 == a3;
    }

    if (!v18 && *v13 == 63)
    {
      v13 = (a2 + 2);
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_26;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = (a2 + 1);
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      v13 = (a2 + 2);
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_26:
      v17 = -1;
      goto LABEL_33;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_36;
  }

  return a2;
}

void (__cdecl ***std::__l_anchor_multiline<wchar_t>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<wchar_t> *__hidden this)))(std::__owns_one_state<wchar_t> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__l_anchor_multiline<wchar_t>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<wchar_t> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__l_anchor_multiline<wchar_t>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 4);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void (__cdecl ***std::__r_anchor_multiline<wchar_t>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<wchar_t> *__hidden this)))(std::__owns_one_state<wchar_t> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__r_anchor_multiline<wchar_t>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<wchar_t> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__r_anchor_multiline<wchar_t>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *std::__word_boundary<wchar_t,std::regex_traits<wchar_t>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_1F2D05700;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__word_boundary<wchar_t,std::regex_traits<wchar_t>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_1F2D05700;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__word_boundary<wchar_t,std::regex_traits<wchar_t>>::__exec(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
LABEL_13:
    result = 0;
    goto LABEL_19;
  }

  v6 = *(a2 + 16);
  if (v6 == v5)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v8 = *(v6 - 1);
LABEL_11:
      if (v8 == 95)
      {
        result = 1;
      }

      else
      {
        result = (*(**(a1 + 24) + 24))(*(a1 + 24), 1280);
      }

      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (v6 == v4)
  {
    v7 = *(a2 + 88);
    if ((v7 & 0x80) == 0)
    {
      if ((v7 & 4) == 0)
      {
        v8 = *v6;
        goto LABEL_11;
      }

      goto LABEL_13;
    }
  }

  v9 = *v6;
  if (*(v6 - 1) == 95)
  {
    v10 = 1;
  }

  else
  {
    v10 = (*(**(a1 + 24) + 24))(*(a1 + 24), 1280);
  }

  if (v9 == 95)
  {
    v12 = 1;
  }

  else
  {
    v12 = (*(**(a1 + 24) + 24))(*(a1 + 24), 1280, v9);
  }

  result = v10 != v12;
LABEL_19:
  if (*(a1 + 40) == result)
  {
    v13 = 0;
    v14 = -993;
  }

  else
  {
    v13 = *(a1 + 8);
    v14 = -994;
  }

  *a2 = v14;
  *(a2 + 80) = v13;
  return result;
}

uint64_t std::__lookahead<wchar_t,std::regex_traits<wchar_t>>::__lookahead[abi:ne200100](uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  *a1 = &unk_1F2D05748;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 24);
  v9 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 40);
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 56);
  *(a1 + 80) = a5;
  *(a1 + 84) = a3;
  return a1;
}

std::locale *std::__lookahead<wchar_t,std::regex_traits<wchar_t>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F2D05748;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void std::__lookahead<wchar_t,std::regex_traits<wchar_t>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F2D05748;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x1B8C85350);
}

void std::__lookahead<wchar_t,std::regex_traits<wchar_t>>::__exec(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  memset(&v22, 0, 17);
  v23 = 0;
  v24 = 0;
  memset(&__p, 0, sizeof(__p));
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  v18.first = *(a2 + 24);
  v18.second = v18.first;
  v18.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v4, &v18);
  v19 = v5;
  v20 = v5;
  v21 = 0;
  v22 = v18;
  v24 = v5;
  v23 = 1;
  v6 = *(a2 + 16);
  if (v6 == *(a2 + 8))
  {
    v7 = *(a2 + 92);
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__match_at_start_ecma<std::allocator<std::sub_match<wchar_t const*>>>(a1 + 16, v6, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v7))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v9 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v9 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v10 = *(a1 + 80);
  v11 = *(a2 + 32);
  v12 = 2;
  v13 = 1;
  do
  {
    v14 = &begin[v13];
    v15 = v11 + 24 * v10;
    *v15 = v14->std::pair<const wchar_t *, const wchar_t *>;
    *(v15 + 16) = v14->matched;
    v13 = v12;
    ++v10;
  }

  while (v9 > v12++);
LABEL_11:
  __p.__end_ = begin;
  operator delete(begin);
}

void sub_1B5206FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_atom_escape<wchar_t const*>(std::basic_regex<wchar_t> *a1, int *a2, int *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = (a2 + 1);
    if (a2 + 1 == a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v7 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_decimal_escape<wchar_t const*>(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_character_class_escape<wchar_t const*>(a1, v3 + 1, a3), v7 == v5))
    {
      v9 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_character_escape<wchar_t const*>(a1, v3 + 1, a3, 0);
      if (v9 != v5)
      {
        return v9;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

std::wstring::value_type *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_bracket_expression<wchar_t const*>(uint64_t a1, int *a2, int *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_23;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    started = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_23;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__add_char[abi:ne200100](started, 93);
      ++v5;
    }

    if (v5 == a3)
    {
      v8 = v5;
    }

    else
    {
      do
      {
        v8 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_expression_term<wchar_t const*>(a1, v5, a3, v7);
        v9 = v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    if (v8 == a3)
    {
      goto LABEL_23;
    }

    if (*v8 == 45)
    {
      std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__add_char[abi:ne200100](v7, 45);
      ++v8;
    }

    if (v8 == a3 || *v8 != 93)
    {
LABEL_23:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v8 + 1;
  }

  return a2;
}

void std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_begin_marked_subexpression(std::basic_regex<wchar_t> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_end_marked_subexpression(std::basic_regex<wchar_t> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

std::basic_regex<wchar_t>::value_type *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_pattern_character<wchar_t const*>(std::basic_regex<wchar_t> *a1, std::basic_regex<wchar_t>::value_type *a2, std::basic_regex<wchar_t>::value_type *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x7800000080004F1) == 0;
    if (v5 && (v4 - 123) >= 3)
    {
      std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_char(a1, v4);
      ++v3;
    }
  }

  return v3;
}

void (__cdecl ***std::__match_any_but_newline<wchar_t>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<wchar_t> *__hidden this)))(std::__owns_one_state<wchar_t> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_any_but_newline<wchar_t>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<wchar_t> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_decimal_escape<wchar_t const*>(std::basic_regex<wchar_t> *a1, int *a2, int *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    v5 = *a2 - 48;
    if (v4 == 48)
    {
      std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_char(a1, v5);
      ++v3;
    }

    else if ((v4 - 49) <= 8)
    {
      if (++v3 != a3)
      {
        do
        {
          v6 = *v3;
          if ((*v3 - 48) > 9)
          {
            break;
          }

          if (v5 >= 0x19999999)
          {
            goto LABEL_13;
          }

          ++v3;
          v5 = v6 + 10 * v5 - 48;
        }

        while (v3 != a3);
        if (!v5)
        {
          goto LABEL_13;
        }
      }

      if (v5 > a1->__marked_count_)
      {
LABEL_13:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }

      std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_back_ref(a1, v5);
    }
  }

  return v3;
}

int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_character_class_escape<wchar_t const*>(std::basic_regex<wchar_t> *a1, int *a2, int *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = *a2;
  if (*a2 > 99)
  {
    if (v4 == 119)
    {
      v5 = 0;
      goto LABEL_14;
    }

    if (v4 == 115)
    {
      v10 = 0;
      goto LABEL_17;
    }

    if (v4 != 100)
    {
      return v3;
    }

    v6 = 0;
LABEL_12:
    started = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__start_matching_list(a1, v6);
    v8 = started->__mask_ | 0x400;
LABEL_18:
    started->__mask_ = v8;
    goto LABEL_19;
  }

  switch(v4)
  {
    case 'D':
      v6 = 1;
      goto LABEL_12;
    case 'S':
      v10 = 1;
LABEL_17:
      started = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__start_matching_list(a1, v10);
      v8 = started->__mask_ | 0x4000;
      goto LABEL_18;
    case 'W':
      v5 = 1;
LABEL_14:
      v9 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__start_matching_list(a1, v5);
      v9->__mask_ |= 0x500u;
      std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__add_char[abi:ne200100](v9, 95);
LABEL_19:
      ++v3;
      break;
  }

  return v3;
}

unsigned int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_character_escape<wchar_t const*>(std::basic_regex<wchar_t> *this, int *a2, int *a3, std::wstring *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v7 = this;
  v8 = *a2;
  if (*a2 > 113)
  {
    if (v8 > 116)
    {
      if (v8 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_73;
        }

        v13 = (this->__traits_.__ct_->do_narrow)(this->__traits_.__ct_, a2[1], 0);
        v14 = v13;
        v15 = -48;
        if ((v13 & 0xFFFFFFF8) != 0x30 && (v13 & 0xFFFFFFFE) != 0x38)
        {
          v14 = v13 | 0x20;
          if (((v13 | 0x20) - 97) >= 6u)
          {
            goto LABEL_73;
          }

          v15 = -87;
        }

        v4 += 2;
        if (v4 == a3)
        {
          goto LABEL_73;
        }

        v16 = (v7->__traits_.__ct_->do_narrow)(v7->__traits_.__ct_, *v4, 0);
        v17 = -48;
        if ((v16 & 0xFFFFFFF8) != 0x30 && (v16 & 0xFFFFFFFE) != 0x38)
        {
          v16 |= 0x20u;
          if ((v16 - 97) >= 6u)
          {
            goto LABEL_73;
          }

          v17 = -87;
        }

        v9 = ((v15 + v14) << 8) + 16 * (v17 + v16);
LABEL_40:
        if (v4 + 1 == a3)
        {
          goto LABEL_73;
        }

        v18 = (v7->__traits_.__ct_->do_narrow)(v7->__traits_.__ct_, v4[1], 0);
        v19 = v18;
        v20 = -48;
        if ((v18 & 0xFFFFFFF8) != 0x30 && (v18 & 0xFFFFFFFE) != 0x38)
        {
          v19 = v18 | 0x20;
          if (((v18 | 0x20) - 97) >= 6u)
          {
            goto LABEL_73;
          }

          v20 = -87;
        }

        if (v4 + 2 != a3)
        {
          v21 = (v7->__traits_.__ct_->do_narrow)(v7->__traits_.__ct_, v4[2], 0);
          v22 = -48;
          if ((v21 & 0xFFFFFFF8) == 0x30 || (v21 & 0xFFFFFFFE) == 0x38)
          {
LABEL_50:
            v23 = v22 + v21 + 16 * (v20 + v9 + v19);
            if (a4)
            {
              std::wstring::operator=(a4, v23);
            }

            else
            {
              std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_char(v7, v23);
            }

            v4 += 3;
            return v4;
          }

          v21 |= 0x20u;
          if ((v21 - 97) < 6u)
          {
            v22 = -87;
            goto LABEL_50;
          }
        }

LABEL_73:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
      }

      if (v8 != 118)
      {
        if (v8 == 120)
        {
          v9 = 0;
          goto LABEL_40;
        }

        goto LABEL_65;
      }

      if (!a4)
      {
        v12 = 11;
        goto LABEL_70;
      }

      v11 = a4;
      v12 = 11;
LABEL_68:
      std::wstring::operator=(v11, v12);
      return ++v4;
    }

    if (v8 == 114)
    {
      if (!a4)
      {
        v12 = 13;
        goto LABEL_70;
      }

      v11 = a4;
      v12 = 13;
      goto LABEL_68;
    }

    if (v8 == 116)
    {
      if (!a4)
      {
        v12 = 9;
        goto LABEL_70;
      }

      v11 = a4;
      v12 = 9;
      goto LABEL_68;
    }

LABEL_65:
    if ((this->__traits_.__ct_->do_is)(this->__traits_.__ct_, 1280))
    {
      goto LABEL_73;
    }

    v12 = *v4;
    if (a4)
    {
      v11 = a4;
      goto LABEL_68;
    }

    this = v7;
LABEL_70:
    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_char(this, v12);
    return ++v4;
  }

  if (v8 > 101)
  {
    if (v8 == 102)
    {
      if (!a4)
      {
        v12 = 12;
        goto LABEL_70;
      }

      v11 = a4;
      v12 = 12;
      goto LABEL_68;
    }

    if (v8 == 110)
    {
      if (!a4)
      {
        v12 = 10;
        goto LABEL_70;
      }

      v11 = a4;
      v12 = 10;
      goto LABEL_68;
    }

    goto LABEL_65;
  }

  if (v8 == 48)
  {
    if (!a4)
    {
      v12 = 0;
      goto LABEL_70;
    }

    v11 = a4;
    v12 = 0;
    goto LABEL_68;
  }

  if (v8 != 99)
  {
    if (v8 == 95)
    {
      goto LABEL_73;
    }

    goto LABEL_65;
  }

  if (a2 + 1 == a3 || (a2[1] & 0xFFFFFFDF) - 65 > 0x19)
  {
    goto LABEL_73;
  }

  v10 = a2[1] & 0x1F;
  if (a4)
  {
    std::wstring::operator=(a4, v10);
  }

  else
  {
    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_char(this, v10);
  }

  v4 += 2;
  return v4;
}

void std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_char(std::basic_regex<wchar_t> *this, std::basic_regex<wchar_t>::value_type __c)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_back_ref(std::basic_regex<wchar_t> *this, int __i)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t std::__match_char_icase<wchar_t,std::regex_traits<wchar_t>>::__match_char_icase[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_1F2D057D8;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = (*(**(a2 + 8) + 72))(*(a2 + 8), a3);
  return a1;
}

void sub_1B5207CA8(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  locale = v1[1].__locale_;
  if (locale)
  {
    std::shared_ptr<std::__empty_state<wchar_t>>::shared_ptr[abi:ne200100]<std::__empty_state<wchar_t>,0>(locale);
  }

  _Unwind_Resume(a1);
}

std::locale *std::__match_char_icase<wchar_t,std::regex_traits<wchar_t>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F2D057D8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_icase<wchar_t,std::regex_traits<wchar_t>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F2D057D8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__match_char_icase<wchar_t,std::regex_traits<wchar_t>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 72))(*(result + 24), *v3), result != *(v4 + 40)))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) += 4;
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *std::__match_char_collate<wchar_t,std::regex_traits<wchar_t>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F2D05820;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_collate<wchar_t,std::regex_traits<wchar_t>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F2D05820;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__match_char_collate<wchar_t,std::regex_traits<wchar_t>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void (__cdecl ***std::__match_char<wchar_t>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<wchar_t> *__hidden this)))(std::__owns_one_state<wchar_t> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_char<wchar_t>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<wchar_t> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__match_char<wchar_t>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

std::locale *std::__back_ref_icase<wchar_t,std::regex_traits<wchar_t>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F2D058B0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_icase<wchar_t,std::regex_traits<wchar_t>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F2D058B0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__back_ref_icase<wchar_t,std::regex_traits<wchar_t>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      if (v4 >> 2 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v8 = 0;
      while (1)
      {
        v9 = (*(**(v7 + 24) + 72))(*(v7 + 24), *(*v3 + 4 * v8));
        result = (*(**(v7 + 24) + 72))(*(v7 + 24), *(*(a2 + 16) + 4 * v8));
        if (v9 != result)
        {
          break;
        }

        if (v4 >> 2 == ++v8)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

std::locale *std::__back_ref_collate<wchar_t,std::regex_traits<wchar_t>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F2D058F8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_collate<wchar_t,std::regex_traits<wchar_t>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F2D058F8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__back_ref_collate<wchar_t,std::regex_traits<wchar_t>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = v4 >> 2;
      if (v4 >> 2 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v8 = *(a2 + 16);
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v8++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v7)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void (__cdecl ***std::__back_ref<wchar_t>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<wchar_t> *__hidden this)))(std::__owns_one_state<wchar_t> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__back_ref<wchar_t>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<wchar_t> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

unsigned int *std::__back_ref<wchar_t>::__exec(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__add_char[abi:ne200100](uint64_t a1, int a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 72))(*(a1 + 24));
    v3 = (a1 + 40);
    v4 = &v6;
LABEL_5:
    std::vector<int>::push_back[abi:ne200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = (a1 + 40);
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<int>::push_back[abi:ne200100]((a1 + 40), &v7);
}

uint64_t std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__bracket_expression[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_1B52089BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v15 = v10[8].__locale_;
  if (v15)
  {
    v10[9].__locale_ = v15;
    operator delete(v15);
  }

  v16 = *v12;
  if (*v12)
  {
    v10[6].__locale_ = v16;
    operator delete(v16);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v11;
  v17 = v10[1].__locale_;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(a1);
}

void std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::~__bracket_expression(std::locale *a1)
{
  std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::~__bracket_expression(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__exec(const std::__bracket_expression<wchar_t, std::regex_traits<wchar_t>> *this, std::__bracket_expression<wchar_t, std::regex_traits<wchar_t>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v35 = 0;
    negate = this->__negate_;
    goto LABEL_157;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_61;
  }

  v6 = current[1];
  v109.i32[0] = *current;
  v109.i32[1] = v6;
  if (this->__icase_)
  {
    v109.i32[0] = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    v109.i32[1] = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  std::regex_traits<wchar_t>::__lookup_collatename<wchar_t *>(&this->__traits_, &v109, &v110, &__p);
  if ((v108 & 0x80000000) == 0)
  {
    if (v108)
    {
      goto LABEL_8;
    }

LABEL_61:
    negate = 0;
    v35 = 1;
    goto LABEL_62;
  }

  v37 = v107;
  operator delete(__p);
  if (!v37)
  {
    goto LABEL_61;
  }

LABEL_8:
  begin = this->__digraphs_.__begin_;
  v8 = this->__digraphs_.__end_ - begin;
  if (v8)
  {
    v9 = v8 >> 3;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    do
    {
      v10 = vceq_s32(v109, *begin);
      if (v10.i32[0] & v10.i32[1])
      {
        goto LABEL_200;
      }

      ++begin;
    }

    while (--v9);
  }

  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    std::regex_traits<wchar_t>::transform<wchar_t *>(&this->__traits_, &v109, &v110);
    v11 = this->__ranges_.__begin_;
    if (this->__ranges_.__end_ != v11)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = &v11[v12];
        v15 = SHIBYTE(v14->first.__r_.__value_.__r.__words[2]);
        if (v15 >= 0)
        {
          size = HIBYTE(v14->first.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v14->first.__r_.__value_.__l.__size_;
        }

        if (v108 >= 0)
        {
          v17 = v108;
        }

        else
        {
          v17 = v107;
        }

        if (size >= v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = size;
        }

        if (v18 && (v108 >= 0 ? (p_p = &__p) : (p_p = __p), v15 >= 0 ? (v20 = v14) : (v20 = v14->first.__r_.__value_.__r.__words[0]), (v21 = wmemcmp(p_p, v20, v18)) != 0))
        {
          if (v21 < 0)
          {
            goto LABEL_57;
          }
        }

        else if (v17 < size)
        {
          goto LABEL_57;
        }

        v22 = &this->__ranges_.__begin_[v12];
        if (v108 >= 0)
        {
          v23 = v108;
        }

        else
        {
          v23 = v107;
        }

        v24 = SHIBYTE(v22->second.__r_.__value_.__r.__words[2]);
        if (v24 >= 0)
        {
          v25 = HIBYTE(v22->second.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v25 = v22->second.__r_.__value_.__l.__size_;
        }

        if (v23 >= v25)
        {
          v26 = v25;
        }

        else
        {
          v26 = v23;
        }

        if (v26 && ((data = v22->second.__r_.__value_.__l.__data_, p_second = &v22->second, v28 = data, v24 >= 0) ? (v30 = p_second) : (v30 = v28), v108 >= 0 ? (v31 = &__p) : (v31 = __p), (v32 = wmemcmp(v30, v31, v26)) != 0))
        {
          if ((v32 & 0x80000000) == 0)
          {
            goto LABEL_164;
          }
        }

        else if (v25 >= v23)
        {
LABEL_164:
          v34 = 5;
          v33 = 1;
          goto LABEL_165;
        }

LABEL_57:
        ++v13;
        v11 = this->__ranges_.__begin_;
        ++v12;
      }

      while (v13 < 0xAAAAAAAAAAAAAAABLL * ((this->__ranges_.__end_ - v11) >> 4));
    }

    v33 = 0;
    v34 = 0;
LABEL_165:
    if (v108 < 0)
    {
      operator delete(__p);
    }

    if (v33)
    {
      goto LABEL_192;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    goto LABEL_194;
  }

  std::regex_traits<wchar_t>::__transform_primary<wchar_t *>(&this->__traits_, &v109, &v110, &__p);
  v88 = this->__equivalences_.__begin_;
  end = this->__equivalences_.__end_;
  if (end == v88)
  {
LABEL_187:
    v97 = 0;
    v34 = 0;
    goto LABEL_189;
  }

  v89 = 0;
  v90 = 0;
  while (1)
  {
    v91 = &v88[v89];
    if (v108 >= 0)
    {
      v92 = v108;
    }

    else
    {
      v92 = v107;
    }

    v93 = HIBYTE(v91->__r_.__value_.__r.__words[2]);
    v94 = v93;
    if ((v93 & 0x80u) != 0)
    {
      v93 = v91->__r_.__value_.__l.__size_;
    }

    if (v92 != v93)
    {
      goto LABEL_186;
    }

    if (!v92)
    {
      break;
    }

    v95 = v94 >= 0 ? &v88[v89] : v91->__r_.__value_.__r.__words[0];
    v96 = v108 >= 0 ? &__p : __p;
    if (!wmemcmp(v96, v95, v92))
    {
      break;
    }

    v88 = this->__equivalences_.__begin_;
    end = this->__equivalences_.__end_;
LABEL_186:
    ++v90;
    ++v89;
    if (v90 >= 0xAAAAAAAAAAAAAAABLL * ((end - v88) >> 3))
    {
      goto LABEL_187;
    }
  }

  v34 = 5;
  v97 = 1;
LABEL_189:
  if (v108 < 0)
  {
    operator delete(__p);
  }

  if ((v97 & 1) == 0)
  {
LABEL_194:
    v98 = v109.i32[0];
    mask = this->__mask_;
    if (((this->__traits_.__ct_->do_is)(this->__traits_.__ct_, mask, v109.u32[0]) & 1) == 0 && (v98 != 95 || (mask & 0x80) == 0) || (v100 = v109.i32[1], v101 = this->__mask_, ((this->__traits_.__ct_->do_is)(this->__traits_.__ct_, v101, v109.u32[1]) & 1) == 0) && (v100 != 95 || (v101 & 0x80) == 0))
    {
      v102 = v109.i32[0];
      neg_mask = this->__neg_mask_;
      if ((this->__traits_.__ct_->do_is)(this->__traits_.__ct_, neg_mask, v109.u32[0]) & 1) != 0 || v102 == 95 && (neg_mask & 0x80) != 0 || (v104 = v109.i32[1], v105 = this->__neg_mask_, ((this->__traits_.__ct_->do_is)(this->__traits_.__ct_, v105, v109.u32[1])) || (negate = 1, v104 == 95) && (v105 & 0x80) != 0)
      {
        negate = 0;
      }

      goto LABEL_208;
    }

LABEL_200:
    negate = 1;
LABEL_208:
    v35 = 2;
    goto LABEL_157;
  }

LABEL_192:
  negate = 1;
  v35 = 2;
  if (v34)
  {
    goto LABEL_157;
  }

LABEL_62:
  v38 = *a2->__current_;
  v109.i32[0] = *a2->__current_;
  if (this->__icase_)
  {
    v38 = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v38);
    v109.i32[0] = v38;
  }

  v39 = this->__chars_.__begin_;
  v40 = this->__chars_.__end_ - v39;
  if (v40)
  {
    v41 = v40 >> 2;
    if (v41 <= 1)
    {
      v41 = 1;
    }

    do
    {
      v42 = *v39++;
      if (v38 == v42)
      {
        goto LABEL_156;
      }

      --v41;
    }

    while (v41);
  }

  v43 = this->__neg_mask_;
  if (v43 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((this->__traits_.__ct_->do_is)(this->__traits_.__ct_, this->__neg_mask_, v38))
    {
      v44 = 1;
    }

    else
    {
      v44 = (v38 == 95) & (v43 >> 7);
    }

    v45 = this->__neg_chars_.__begin_;
    v46 = this->__neg_chars_.__end_;
    if (v45 != v46)
    {
      while (*v45 != v109.i32[0])
      {
        if (++v45 == v46)
        {
          v45 = this->__neg_chars_.__end_;
          break;
        }
      }
    }

    if (((v45 == v46) & ~v44) != 0)
    {
      goto LABEL_156;
    }
  }

  v47 = this->__ranges_.__begin_;
  v48 = this->__ranges_.__end_;
  if (v47 != v48)
  {
    if (this->__collate_)
    {
      std::regex_traits<wchar_t>::transform<wchar_t *>(&this->__traits_, &v109, &v109 + 4);
      v47 = this->__ranges_.__begin_;
      v48 = this->__ranges_.__end_;
    }

    else
    {
      v108 = 1;
      __p = v109.u32[0];
    }

    if (v48 != v47)
    {
      v49 = 0;
      v50 = 0;
      do
      {
        v51 = &v47[v49];
        v52 = SHIBYTE(v51->first.__r_.__value_.__r.__words[2]);
        if (v52 >= 0)
        {
          v53 = HIBYTE(v51->first.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v53 = v51->first.__r_.__value_.__l.__size_;
        }

        if (v108 >= 0)
        {
          v54 = v108;
        }

        else
        {
          v54 = v107;
        }

        if (v53 >= v54)
        {
          v55 = v54;
        }

        else
        {
          v55 = v53;
        }

        if (v55 && (v108 >= 0 ? (v56 = &__p) : (v56 = __p), v52 >= 0 ? (v57 = v51) : (v57 = v51->first.__r_.__value_.__r.__words[0]), (v58 = wmemcmp(v56, v57, v55)) != 0))
        {
          if (v58 < 0)
          {
            goto LABEL_125;
          }
        }

        else if (v54 < v53)
        {
          goto LABEL_125;
        }

        v59 = &this->__ranges_.__begin_[v49];
        if (v108 >= 0)
        {
          v60 = v108;
        }

        else
        {
          v60 = v107;
        }

        v61 = SHIBYTE(v59->second.__r_.__value_.__r.__words[2]);
        if (v61 >= 0)
        {
          v62 = HIBYTE(v59->second.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v62 = v59->second.__r_.__value_.__l.__size_;
        }

        if (v60 >= v62)
        {
          v63 = v62;
        }

        else
        {
          v63 = v60;
        }

        if (v63 && ((v66 = v59->second.__r_.__value_.__l.__data_, v64 = &v59->second, v65 = v66, v61 >= 0) ? (v67 = v64) : (v67 = v65), v108 >= 0 ? (v68 = &__p) : (v68 = __p), (v69 = wmemcmp(v67, v68, v63)) != 0))
        {
          if ((v69 & 0x80000000) == 0)
          {
            goto LABEL_127;
          }
        }

        else if (v62 >= v60)
        {
LABEL_127:
          v70 = 1;
          negate = 1;
          goto LABEL_128;
        }

LABEL_125:
        ++v50;
        v47 = this->__ranges_.__begin_;
        ++v49;
      }

      while (v50 < 0xAAAAAAAAAAAAAAABLL * ((this->__ranges_.__end_ - v47) >> 4));
    }

    v70 = 0;
LABEL_128:
    if (v108 < 0)
    {
      operator delete(__p);
    }

    if (v70)
    {
      goto LABEL_157;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    goto LABEL_155;
  }

  std::regex_traits<wchar_t>::__transform_primary<wchar_t *>(&this->__traits_, &v109, &v109 + 4, &__p);
  v72 = this->__equivalences_.__begin_;
  v71 = this->__equivalences_.__end_;
  if (v71 == v72)
  {
LABEL_150:
    v81 = 0;
    goto LABEL_152;
  }

  v73 = 0;
  v74 = 0;
  while (1)
  {
    v75 = &v72[v73];
    if (v108 >= 0)
    {
      v76 = v108;
    }

    else
    {
      v76 = v107;
    }

    v77 = HIBYTE(v75->__r_.__value_.__r.__words[2]);
    v78 = v77;
    if ((v77 & 0x80u) != 0)
    {
      v77 = v75->__r_.__value_.__l.__size_;
    }

    if (v76 != v77)
    {
      goto LABEL_149;
    }

    if (!v76)
    {
      break;
    }

    v79 = v78 >= 0 ? &v72[v73] : v75->__r_.__value_.__r.__words[0];
    v80 = v108 >= 0 ? &__p : __p;
    if (!wmemcmp(v80, v79, v76))
    {
      break;
    }

    v72 = this->__equivalences_.__begin_;
    v71 = this->__equivalences_.__end_;
LABEL_149:
    ++v74;
    ++v73;
    if (v74 >= 0xAAAAAAAAAAAAAAABLL * ((v71 - v72) >> 3))
    {
      goto LABEL_150;
    }
  }

  v81 = 1;
  negate = 1;
LABEL_152:
  if (v108 < 0)
  {
    operator delete(__p);
  }

  if ((v81 & 1) == 0)
  {
LABEL_155:
    v82 = v109.i32[0];
    v83 = this->__mask_;
    if ((this->__traits_.__ct_->do_is)(this->__traits_.__ct_, v83, v109.u32[0]))
    {
LABEL_156:
      negate = 1;
    }

    else
    {
      v86 = (v83 >> 7) & 1;
      if (v82 != 95)
      {
        LOBYTE(v86) = 0;
      }

      negate |= v86;
    }
  }

LABEL_157:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v85 = -993;
  }

  else
  {
    a2->__current_ += v35;
    first = this->__first_;
    v85 = -995;
  }

  a2->__do_ = v85;
  a2->__node_ = first;
}

std::locale *std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::~__bracket_expression(std::locale *a1)
{
  v7 = a1 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void std::regex_traits<wchar_t>::transform<wchar_t *>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  std::basic_string<char32_t>::__init_with_size[abi:ne200100]<char32_t const*,char32_t const*>(__p, a2, a3, (a3 - a2) >> 2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + 4 * v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B5209510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<wchar_t>::__lookup_collatename<wchar_t *>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  p_p = &__p;
  std::basic_string<char32_t>::__init_with_size[abi:ne200100]<char32_t const*,char32_t const*>(&__p, a2, a3, (a3 - a2) >> 2);
  memset(&v18, 0, sizeof(v18));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::reserve(&v18, size);
  v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v10 = __p.__r_.__value_.__l.__size_;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __p.__r_.__value_.__l.__size_;
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (!v11)
  {
LABEL_12:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    if (v9 < 0)
    {
      v8 = v10;
    }

    if (!v8)
    {
      goto LABEL_27;
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v18;
    }

    else
    {
      v13 = v18.__r_.__value_.__r.__words[0];
    }

    std::__get_collation_name(&v17, v13);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    v18 = v17;
    v14 = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v14 = v18.__r_.__value_.__l.__size_;
      if (v18.__r_.__value_.__l.__size_)
      {
        v15 = v18.__r_.__value_.__r.__words[0];
        goto LABEL_26;
      }
    }

    else if (*(&v17.__r_.__value_.__s + 23))
    {
      v15 = &v18;
LABEL_26:
      std::wstring::__assign_trivial[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(a4, v15, v15 + v14, v14);
      goto LABEL_27;
    }

    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (__p.__r_.__value_.__l.__size_ >= 3)
      {
        goto LABEL_27;
      }
    }

    else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) >= 3)
    {
      goto LABEL_27;
    }

    (*(**(a1 + 16) + 32))(&v17);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v17;
    v16 = *(a4 + 23);
    if (v16 < 0)
    {
      if ((*(a4 + 8) & 0xFFFFFFFFFFFFFFFDLL) != 1)
      {
        **a4 = 0;
        *(a4 + 8) = 0;
        goto LABEL_27;
      }
    }

    else if ((v16 & 0x7D) != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_27;
    }

    std::wstring::operator=(a4, &__p);
    goto LABEL_27;
  }

  v12 = 4 * v11;
  while (p_p->__r_.__value_.__s.__data_[0] < 0x7Fu)
  {
    std::string::push_back(&v18, p_p->__r_.__value_.__s.__data_[0]);
    p_p = (p_p + 4);
    v12 -= 4;
    if (!v12)
    {
      v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v10 = __p.__r_.__value_.__l.__size_;
      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      goto LABEL_12;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
LABEL_27:
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B5209764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 + 23) < 0)
  {
    operator delete(*v24);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void std::wstring::__assign_trivial[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(std::wstring *this, char *a2, char *a3, std::wstring::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 4)
    {
      goto LABEL_11;
    }

    v10 = 4;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::wstring::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 4);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

void std::regex_traits<wchar_t>::__transform_primary<wchar_t *>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  std::basic_string<char32_t>::__init_with_size[abi:ne200100]<char32_t const*,char32_t const*>(__p, a2, a3, (a3 - a2) >> 2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + 4 * v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 3)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[2] = *v10;
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B5209978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::wstring::value_type *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_expression_term<wchar_t const*>(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 == 93)
  {
    return v4;
  }

  v6 = a4;
  memset(&v25, 0, sizeof(v25));
  if (a2 + 1 == a3 || v5 != 91)
  {
LABEL_9:
    v11 = *(a1 + 24) & 0x1F0;
    goto LABEL_10;
  }

  v9 = a2[1];
  if (v9 != 46)
  {
    if (v9 == 58)
    {
      v10 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_character_class<wchar_t const*>(a1, a2 + 2, a3, a4);
      goto LABEL_34;
    }

    if (v9 == 61)
    {
      v10 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_equivalence_class<wchar_t const*>(a1, a2 + 2, a3, a4);
LABEL_34:
      v6 = v10;
      v17 = 0;
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  v18 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_collating_symbol<wchar_t const*>(a1, a2 + 2, a3, &v25);
  v4 = v18;
  v11 = *(a1 + 24) & 0x1F0;
  size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  v13 = v18;
  if (!size)
  {
LABEL_10:
    if ((v11 | 0x40) == 0x40)
    {
      v12 = *v4;
      if (*v4 == 92)
      {
        if (v11)
        {
          v13 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_awk_escape<wchar_t const*>(a1, v4 + 1, a3, &v25);
        }

        else
        {
          v13 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_class_escape<wchar_t const*>(a1, v4 + 1, a3, &v25, v6);
          v11 = 0;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v12 = *v4;
    }

    std::wstring::operator=(&v25, v12);
    v13 = v4 + 1;
  }

LABEL_16:
  if (v13 == a3 || *v13 == 93 || (v15 = v13 + 1, v13 + 1 == a3) || *v13 != 45 || *v15 == 93)
  {
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v25.__r_.__value_.__l.__size_)
      {
        if (v25.__r_.__value_.__l.__size_ != 1)
        {
          v14 = v25.__r_.__value_.__r.__words[0];
LABEL_40:
          std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__add_digraph[abi:ne200100](v6, v14->__r_.__value_.__s.__data_[0], v14->__r_.__value_.__s.__data_[1]);
          goto LABEL_41;
        }

        v14 = v25.__r_.__value_.__r.__words[0];
        goto LABEL_25;
      }
    }

    else if (*(&v25.__r_.__value_.__s + 23))
    {
      v14 = &v25;
      if (HIBYTE(v25.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_40;
      }

LABEL_25:
      std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__add_char[abi:ne200100](v6, v14->__r_.__value_.__s.__data_[0]);
    }

LABEL_41:
    v17 = 1;
    v4 = v13;
    goto LABEL_42;
  }

  memset(&v24, 0, sizeof(v24));
  v4 = v13 + 2;
  if (v13 + 2 != a3 && *v15 == 91 && *v4 == 46)
  {
    v16 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_collating_symbol<wchar_t const*>(a1, v13 + 3, a3, &v24);
LABEL_55:
    v4 = v16;
    goto LABEL_56;
  }

  if ((v11 | 0x40) == 0x40)
  {
    v21 = *v15;
    if (*v15 == 92)
    {
      if (v11)
      {
        v16 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_awk_escape<wchar_t const*>(a1, v13 + 2, a3, &v24);
      }

      else
      {
        v16 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_class_escape<wchar_t const*>(a1, v13 + 2, a3, &v24, v6);
      }

      goto LABEL_55;
    }
  }

  else
  {
    v21 = *v15;
  }

  std::wstring::operator=(&v24, v21);
LABEL_56:
  v23 = v25;
  memset(&v25, 0, sizeof(v25));
  __p = v24;
  memset(&v24, 0, sizeof(v24));
  std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__add_range[abi:ne200100](v6, &v23, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v17 = 1;
LABEL_42:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v17)
  {
    return v4;
  }

  return v6;
}

void sub_1B5209CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_equivalence_class<wchar_t const*>(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v4 = a3 - a2 - 8;
  if (a3 - a2 < 8)
  {
    goto LABEL_32;
  }

  v7 = a2;
  for (i = a2; ; v7 = i)
  {
    v9 = *i++;
    if (v9 == 61 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_32;
    }

    v4 -= 4;
  }

  if (v7 == a3)
  {
LABEL_32:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  std::regex_traits<wchar_t>::__lookup_collatename<wchar_t *>(a1, a2, v7, &v19);
  v10 = v21;
  if ((v21 & 0x8000000000000000) == 0)
  {
    if (v21)
    {
      v11 = &v19;
      goto LABEL_13;
    }

LABEL_33:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v10 = v20;
  if (!v20)
  {
    goto LABEL_33;
  }

  v11 = v19;
LABEL_13:
  std::regex_traits<wchar_t>::__transform_primary<wchar_t *>(a1, v11, &v11[4 * v10], __p);
  v12 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    std::vector<std::wstring>::push_back[abi:ne200100](a4 + 136, __p);
  }

  else
  {
    v13 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v13 = v20;
    }

    if (v13 == 2)
    {
      v15 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v15 = v19;
      }

      std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__add_digraph[abi:ne200100](a4, *v15, v15[1]);
    }

    else
    {
      if (v13 != 1)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
      }

      v14 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v14 = v19;
      }

      std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__add_char[abi:ne200100](a4, *v14);
    }
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v19);
  }

  return v7 + 2;
}

void sub_1B5209EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_character_class<wchar_t const*>(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v4 = a3 - a2 - 8;
  if (a3 - a2 < 8)
  {
    goto LABEL_10;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 58 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_10;
    }

    v4 -= 4;
  }

  if (v6 == a3)
  {
LABEL_10:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v9 = std::regex_traits<wchar_t>::__lookup_classname<wchar_t const*>(a1, a2, v6, *(a1 + 24) & 1);
  if (!v9)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
  }

  *(a4 + 160) |= v9;
  return v6 + 2;
}

int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_collating_symbol<wchar_t const*>(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v4 = a3 - a2 - 8;
  if (a3 - a2 < 8)
  {
    goto LABEL_14;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    v4 -= 4;
  }

  if (v6 == a3)
  {
LABEL_14:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  std::regex_traits<wchar_t>::__lookup_collatename<wchar_t *>(a1, a2, v6, &v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v6 + 2;
}

unsigned int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_class_escape<wchar_t const*>(std::basic_regex<wchar_t> *a1, int *a2, int *a3, std::wstring *this, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v6 = *a2;
  if (*a2 > 97)
  {
    if (v6 > 114)
    {
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          goto LABEL_25;
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__add_char[abi:ne200100](a5, 95);
        return (a2 + 1);
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        v9 = this;
        v10 = 8;
LABEL_19:
        std::wstring::operator=(v9, v10);
        return (a2 + 1);
      }

      if (v6 != 100)
      {
        goto LABEL_25;
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return (a2 + 1);
  }

  if (v6 <= 82)
  {
    if (v6)
    {
      if (v6 == 68)
      {
        v7 = *(a5 + 164) | 0x400;
LABEL_21:
        *(a5 + 164) = v7;
        return (a2 + 1);
      }

      goto LABEL_25;
    }

    v9 = this;
    v10 = 0;
    goto LABEL_19;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_21;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__add_neg_char[abi:ne200100](a5, 95);
    return (a2 + 1);
  }

LABEL_25:

  return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_character_escape<wchar_t const*>(a1, a2, a3, this);
}

std::wstring::value_type *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_awk_escape<wchar_t const*>(std::basic_regex<wchar_t> *a1, std::wstring::value_type *a2, std::wstring::value_type *a3, std::wstring *this)
{
  if (a2 == a3)
  {
LABEL_51:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 <= 101)
  {
    if (v5 <= 91)
    {
      if (v5 != 34 && v5 != 47)
      {
        goto LABEL_32;
      }
    }

    else if (v5 != 92)
    {
      if (v5 == 97)
      {
        if (this)
        {
          v6 = this;
          v5 = 7;
          goto LABEL_31;
        }

        v5 = 7;
        goto LABEL_47;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v6 = this;
          v5 = 8;
LABEL_31:
          std::wstring::operator=(v6, v5);
          return a2 + 1;
        }

        v5 = 8;
        goto LABEL_47;
      }

      goto LABEL_32;
    }

    if (this)
    {
      v6 = this;
      goto LABEL_31;
    }

    goto LABEL_47;
  }

  if (v5 <= 113)
  {
    if (v5 == 102)
    {
      if (this)
      {
        v6 = this;
        v5 = 12;
        goto LABEL_31;
      }

      v5 = 12;
      goto LABEL_47;
    }

    if (v5 == 110)
    {
      if (this)
      {
        v6 = this;
        v5 = 10;
        goto LABEL_31;
      }

      v5 = 10;
      goto LABEL_47;
    }
  }

  else
  {
    switch(v5)
    {
      case 'r':
        if (this)
        {
          v6 = this;
          v5 = 13;
          goto LABEL_31;
        }

        v5 = 13;
        goto LABEL_47;
      case 't':
        if (this)
        {
          v6 = this;
          v5 = 9;
          goto LABEL_31;
        }

        v5 = 9;
        goto LABEL_47;
      case 'v':
        if (this)
        {
          v6 = this;
          v5 = 11;
          goto LABEL_31;
        }

        v5 = 11;
LABEL_47:
        std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_char(a1, v5);
        return a2 + 1;
    }
  }

LABEL_32:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_51;
  }

  v7 = v5 - 48;
  v8 = a2 + 1;
  if (a2 + 1 != a3 && (*v8 & 0xFFFFFFF8) == 0x30)
  {
    v7 = *v8 + 8 * v7 - 48;
    v8 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v9 = *v8 + 8 * v7 - 48;
      if ((*v8 & 0xFFFFFFF8) == 0x30)
      {
        v8 = a2 + 3;
        v7 = v9;
      }
    }
  }

  if (this)
  {
    std::wstring::operator=(this, v7);
  }

  else
  {
    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_char(a1, v7);
  }

  return v8;
}

void std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__add_range[abi:ne200100](uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) == 1)
  {
    if (*(a1 + 169))
    {
      for (i = 0; ; ++i)
      {
        v7 = *(v4 + 23);
        v8 = v7 < 0 ? *(v4 + 1) : *(v4 + 23);
        if (i >= v8)
        {
          break;
        }

        v9 = v4;
        if ((v7 & 0x80000000) != 0)
        {
          v9 = *v4;
        }

        v10 = (*(**(a1 + 24) + 72))(*(a1 + 24), v9[i]);
        v11 = v4;
        if (*(v4 + 23) < 0)
        {
          v11 = *v4;
        }

        v11[i] = v10;
      }

      for (j = 0; ; ++j)
      {
        v20 = *(v3 + 23);
        v21 = v20 < 0 ? *(v3 + 1) : *(v3 + 23);
        if (j >= v21)
        {
          break;
        }

        v22 = v3;
        if ((v20 & 0x80000000) != 0)
        {
          v22 = *v3;
        }

        v23 = (*(**(a1 + 24) + 72))(*(a1 + 24), v22[j]);
        v24 = v3;
        if (*(v3 + 23) < 0)
        {
          v24 = *v3;
        }

        v24[j] = v23;
      }
    }

    else
    {
      for (k = 0; ; ++k)
      {
        v15 = *(a2 + 23);
        v16 = v15 < 0 ? *(a2 + 1) : *(a2 + 23);
        if (k >= v16)
        {
          break;
        }

        v17 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v17 = *a2;
        }

        v18 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v18 = *a2;
        }

        v18[k] = v17[k];
      }

      for (m = 0; ; ++m)
      {
        v26 = *(a3 + 23);
        v27 = v26 < 0 ? *(a3 + 1) : *(a3 + 23);
        if (m >= v27)
        {
          break;
        }

        v28 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v28 = *a3;
        }

        v29 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v29 = *a3;
        }

        v29[m] = v28[m];
      }
    }

    v30 = *(v4 + 23);
    if (v30 < 0)
    {
      v31 = v4;
      v4 = *v4;
      v30 = *(v31 + 1);
    }

    std::regex_traits<wchar_t>::transform<wchar_t *>(a1 + 16, v4, &v4[v30]);
    v32 = *(v3 + 23);
    if (v32 < 0)
    {
      v33 = v3;
      v3 = *v3;
      v32 = *(v33 + 1);
    }

    std::regex_traits<wchar_t>::transform<wchar_t *>(a1 + 16, v3, &v3[v32]);
    *v45 = v43;
    v46 = v44;
    *__p = *v41;
    v48 = v42;
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](a1 + 88, v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }

  else
  {
    v12 = *(a2 + 23);
    if (v12 < 0)
    {
      v13 = *(a2 + 1);
    }

    else
    {
      v13 = *(a2 + 23);
    }

    if (v13 != 1)
    {
      goto LABEL_74;
    }

    v34 = *(a3 + 23);
    if (v34 < 0)
    {
      v34 = *(a3 + 1);
    }

    if (v34 != 1)
    {
LABEL_74:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>();
    }

    if (*(a1 + 169) == 1)
    {
      v35 = a2;
      if ((v12 & 0x80000000) != 0)
      {
        v35 = *a2;
      }

      v36 = (*(**(a1 + 24) + 72))(*(a1 + 24), *v35);
      v37 = v4;
      if (*(v4 + 23) < 0)
      {
        v37 = *v4;
      }

      *v37 = v36;
      v38 = v3;
      if (*(v3 + 23) < 0)
      {
        v38 = *v3;
      }

      v39 = (*(**(a1 + 24) + 72))(*(a1 + 24), *v38);
      v40 = v3;
      if (*(v3 + 23) < 0)
      {
        v40 = *v3;
      }

      *v40 = v39;
    }

    *v45 = *v4;
    v46 = *(v4 + 2);
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = 0;
    *__p = *v3;
    v48 = *(v3 + 2);
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](a1 + 88, v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }
}

void std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__add_digraph[abi:ne200100](uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 72))(*(a1 + 24));
    v6 = v5 | ((*(**(a1 + 24) + 72))(*(a1 + 24), a3) << 32);
  }

  else
  {
    v6 = a2 | (a3 << 32);
  }

  v7 = v6;
  std::vector<std::pair<int,int>>::push_back[abi:ne200100](a1 + 112, &v7);
}

std::__split_buffer<std::wstring>::pointer std::vector<std::wstring>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::wstring>::__emplace_back_slow_path<std::wstring const&>(a1, a2);
  }

  else
  {
    std::vector<std::wstring>::__construct_one_at_end[abi:ne200100]<std::wstring const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<std::wstring>::__construct_one_at_end[abi:ne200100]<std::wstring const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::wstring>::pointer std::vector<std::wstring>::__emplace_back_slow_path<std::wstring const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

uint64_t std::regex_traits<wchar_t>::__lookup_classname<wchar_t const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  std::basic_string<char32_t>::__init_with_size[abi:ne200100]<char32_t const*,char32_t const*>(&__dst, a2, a3, (a3 - a2) >> 2);
  v6 = v18;
  if ((v18 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if ((v18 & 0x80u) != 0)
  {
    v6 = v17;
  }

  (*(**(a1 + 8) + 80))(*(a1 + 8), p_dst, p_dst + 4 * v6);
  memset(&__p, 0, sizeof(__p));
  if ((v18 & 0x80u) == 0)
  {
    v8 = v18;
  }

  else
  {
    v8 = v17;
  }

  std::string::reserve(&__p, v8);
  v9 = v18;
  if ((v18 & 0x80u) == 0)
  {
    v10 = &__dst;
  }

  else
  {
    v10 = __dst;
  }

  if ((v18 & 0x80u) != 0)
  {
    v9 = v17;
  }

  if (v9)
  {
    v11 = 4 * v9;
    while (*v10 <= 0x7Eu)
    {
      std::string::push_back(&__p, *v10++);
      v11 -= 4;
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    classname = 0;
  }

  else
  {
LABEL_18:
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    classname = std::__get_classname(p_p, a4);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v18 < 0)
  {
    operator delete(__dst);
  }

  return classname;
}