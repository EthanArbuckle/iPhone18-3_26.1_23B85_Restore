void sub_1B5051A70(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5051B90);
}

void sub_1B5051A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
{
  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  quasar::RecogResult::~RecogResult(&STACK[0x610]);
  JUMPOUT(0x1B5051A98);
}

void sub_1B5051AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  _Unwind_Resume(a1);
}

void sub_1B5051B00()
{
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  JUMPOUT(0x1B5051B2CLL);
}

void sub_1B5051B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, std::__shared_weak_count *a61)
{
  if (a61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a61);
  }

  quasar::DecoderPassData::~DecoderPassData(&STACK[0x270]);
  STACK[0x610] = &STACK[0x5C0];
  std::vector<std::weak_ptr<quasar::Decoder>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x610]);
  STACK[0x610] = &STACK[0x5D8];
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x610]);
  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  _Unwind_Resume(a1);
}

BOOL quasar::Decoder::exceedsMaxArcs(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52) < 1)
  {
    return 0;
  }

  if (!*a2)
  {
    return 0;
  }

  v3 = *(*a2 + 168);
  if (!v3)
  {
    return 0;
  }

  v4 = fst::NumArcs<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(v3);
  if (quasar::gLogLevel >= 4)
  {
    memset(v14, 0, sizeof(v14));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Decoder: ", 9);
    if (*(a1 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
    }

    else
    {
      __p = *(a1 + 8);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, p_p, size);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " inputArcs=", 11);
    v10 = MEMORY[0x1B8C84C00](v9, v4);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " maxArcs=", 9);
    MEMORY[0x1B8C84C00](v11, *(a1 + 52));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    quasar::QuasarInfoMessage::~QuasarInfoMessage(v14);
  }

  return v4 > *(a1 + 52);
}

uint64_t quasar::OnlineLatticeBiglmFasterDecoder::runImpl(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*a1 + 208))(a1);
  (*(*a1 + 176))(a1, a2, a3, a4);
    ;
  }

  if (i == 4)
  {
    i = (*(*a1 + 200))(a1, a2, a3, a4);
  }

  if (a1[448] == 1)
  {
    v11 = *(*a4 + 24);
    if ((*(v11 + 535) & 0x8000000000000000) != 0)
    {
      if (!*(v11 + 520))
      {
        goto LABEL_21;
      }
    }

    else if (!*(v11 + 535))
    {
      goto LABEL_21;
    }

    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v11 + 512), 47, &v22);
    v12 = *(*a4 + 24);
    v15 = *(v12 + 128);
    v13 = v12 + 128;
    v14 = v15;
    v16 = *(v13 + 23);
    if (v16 >= 0)
    {
      v17 = v13;
    }

    else
    {
      v17 = v14;
    }

    if (v16 >= 0)
    {
      v18 = *(v13 + 23);
    }

    else
    {
      v18 = *(v13 + 8);
    }

    v19 = std::string::append(&v22, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    quasar::filesystem::create_directories(&__p);
    (*(*a1 + 40))(a1, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_21:
  (*(*a1 + 208))(a1);
  return i;
}

void sub_1B5051F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 2)
  {
    v24 = __cxa_begin_catch(exception_object);
    (*(*v21 + 208))(v21);
    exception = __cxa_allocate_exception(0x10uLL);
    v26 = std::runtime_error::runtime_error(exception, v24);
    v26->__vftable = &unk_1F2D153C8;
  }

  if (a2 == 1)
  {
    v27 = __cxa_begin_catch(exception_object);
    (*(*v21 + 208))(v21);
    v28 = __cxa_allocate_exception(0x10uLL);
    v29 = std::runtime_error::runtime_error(v28, v27);
    v29->__vftable = &unk_1F2D153F0;
  }

  _Unwind_Resume(exception_object);
}

void std::vector<quasar::SymbolTableList::Data>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

uint64_t std::vector<quasar::SymbolTableList::Data>::__emplace_back_slow_path<quasar::SymbolTableList::Data>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
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

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::SymbolTableList::Data>>(a1, v7);
  }

  v8 = 32 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *v8 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v9 = *(a2 + 16);
  *(v8 + 24) = *(a2 + 24);
  *(v8 + 16) = v9;
  *&v18 = 32 * v2 + 32;
  v10 = a1[1];
  v11 = 32 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::SymbolTableList::Data>,quasar::SymbolTableList::Data*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<quasar::SymbolTableList::Data>::~__split_buffer(&v16);
  return v15;
}

void sub_1B5052220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::SymbolTableList::Data>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void **std::__split_buffer<quasar::SymbolTableList::Data>::~__split_buffer(void **a1)
{
  std::__split_buffer<quasar::SymbolTableList::Data>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::SymbolTableList::Data>,quasar::SymbolTableList::Data*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::SymbolTableList::Data>,quasar::SymbolTableList::Data*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::__split_buffer<quasar::SymbolTableList::Data>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 32;
    v4 = *(v1 - 24);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 32;
    }
  }
}

BOOL std::operator!=[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 1;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) != 0;
}

uint64_t *std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 28);
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

uint64_t std::vector<quasar::LmeInfo>::__emplace_back_slow_path<quasar::LmeInfo>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmeInfo>>(a1, v6);
  }

  v7 = 40 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *a2;
  *(v7 + 8) = *(a2 + 2);
  *v7 = v8;
  v9 = *(a2 + 1);
  *(v7 + 32) = a2[4];
  *(v7 + 16) = v9;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = 0;
  *&v18 = 40 * v2 + 40;
  v10 = *(a1 + 8);
  v11 = 40 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::LmeInfo>,quasar::LmeInfo*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<quasar::LmeInfo>::~__split_buffer(&v16);
  return v15;
}

void sub_1B505265C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::LmeInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::LmeInfo>,quasar::LmeInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::LmeInfo>,quasar::LmeInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::__split_buffer<quasar::LmeInfo>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::LmeInfo>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::LmeInfo>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::map<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::at(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 56;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

float kaldi::handleStrictBatchOps(uint64_t a1, int a2, char a3, int a4)
{
  v8 = kaldi::MatrixBase<float>::NumRows(a1);
  v9 = kaldi::MatrixBase<float>::NumCols(a1);
  kaldi::Matrix<float>::Resize(a1, (v8 + a2 + a4), v9, 2, 0);
  if (a2 >= 1 && (a3 & 1) == 0)
  {
    v11 = (*a1 + 4 * *(a1 + 16) * (v8 - 1));
    v13[2] = 0;
    v13[0] = v11;
    v13[1] = kaldi::MatrixBase<float>::NumCols(a1);
    kaldi::SubMatrix<float>::SubMatrix(v12, a1, v8, a2, 0, *(a1 + 8));
    kaldi::MatrixBase<float>::CopyRowsFromVec(v12, v13);
    quasar::Bitmap::~Bitmap(v12);
  }

  if (a4)
  {
    result = a2;
    *(*a1 + 4 * *(a1 + 16) * (v8 + a2)) = a2;
  }

  return result;
}

void sub_1B505291C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  quasar::Bitmap::~Bitmap(va);
  _Unwind_Resume(a1);
}

void *std::vector<long long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B50529EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::EspressoV2TensorData::GetWritableDataFloat(kaldi::quasar::EspressoV2TensorData *this)
{
  v9 = 0;
  if (e5rt_tensor_desc_dtype_get_component_dtype() || e5rt_tensor_desc_dtype_get_component_pack())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Espresso V2 failure: ", 21);
    v6 = strlen(last_error_message);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, last_error_message, v6);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "\n");
  }

  else
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v1 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Not implemented GetWritableDataFloat from non-E5RT_TENSOR_DESC_COMPONENT_DTYPE_FLOAT, non-fp32 types", 100);
    v2 = MEMORY[0x1B8C84C00](v1, v9);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, ", ", 2);
    MEMORY[0x1B8C84C00](v3, 0);
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
}

void kaldi::quasar::CEFusedAcousticEncoder::Encode(uint64_t a1, std::string::size_type *a2, std::string::size_type *a3, std::string::size_type *a4, uint64_t *a5, int32x2_t *a6, int32x2_t *a7, int32x2_t *a8, int32x2_t *a9, int32x2_t *a10, uint64_t **a11)
{
  v90 = 0;
  v91 = 0;
  v92 = 0;
  if (kaldi::g_kaldi_verbose_level <= 2)
  {
    v18 = *a2;
    goto LABEL_6;
  }

  kaldi::KaldiVlogMessage::KaldiVlogMessage(v89, 3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, "preparing feature", 17);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(v89);
  v17 = v91;
  v18 = *a2;
  if (v91 >= v92)
  {
LABEL_6:
    p_size = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v90, a1, v18);
    goto LABEL_9;
  }

  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v91, *a1, *(a1 + 8));
  }

  else
  {
    v19 = *a1;
    v91->__r_.__value_.__r.__words[2] = *(a1 + 16);
    *&v17->__r_.__value_.__l.__data_ = v19;
  }

  v17[1].__r_.__value_.__r.__words[0] = v18;
  p_size = &v17[1].__r_.__value_.__l.__size_;
  v91 = (v17 + 32);
LABEL_9:
  v91 = p_size;
  v21 = *(a1 + 47);
  if (v21 < 0)
  {
    if (!*(a1 + 32))
    {
      goto LABEL_31;
    }
  }

  else if (!*(a1 + 47))
  {
    goto LABEL_31;
  }

  v22 = *(a1 + 528);
  if (p_size >= v92)
  {
    p_size = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v90, (a1 + 24), *(a1 + 528));
  }

  else
  {
    if ((v21 & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(p_size, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      v23 = *(a1 + 24);
      *(p_size + 16) = *(a1 + 40);
      *p_size = v23;
    }

    *(p_size + 24) = v22;
    p_size += 32;
    v91 = p_size;
  }

  v91 = p_size;
  v24 = *(a1 + 71);
  if (v24 < 0)
  {
    if (!*(a1 + 56))
    {
      goto LABEL_31;
    }
  }

  else if (!*(a1 + 71))
  {
    goto LABEL_31;
  }

  v25 = *(a1 + 520);
  if (v25)
  {
    if (p_size >= v92)
    {
      p_size = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v90, (a1 + 48), *(a1 + 520));
    }

    else
    {
      if ((v24 & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(p_size, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        v26 = *(a1 + 48);
        *(p_size + 16) = *(a1 + 64);
        *p_size = v26;
      }

      *(p_size + 24) = v25;
      p_size += 32;
      v91 = p_size;
    }

    v91 = p_size;
  }

LABEL_31:
  v27 = *(a1 + 95);
  if (v27 < 0)
  {
    if (!*(a1 + 80))
    {
      goto LABEL_43;
    }
  }

  else if (!*(a1 + 95))
  {
    goto LABEL_43;
  }

  v28 = *a3;
  if (v28)
  {
    if (p_size >= v92)
    {
      p_size = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v90, (a1 + 72), v28);
    }

    else
    {
      if ((v27 & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(p_size, *(a1 + 72), *(a1 + 80));
      }

      else
      {
        v29 = *(a1 + 72);
        *(p_size + 16) = *(a1 + 88);
        *p_size = v29;
      }

      *(p_size + 24) = v28;
      p_size += 32;
      v91 = p_size;
    }

    v91 = p_size;
  }

LABEL_43:
  if (*(a1 + 384) >= 1)
  {
    v30 = *a4;
    if (!v30)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v89);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, "task_biasing_labels != nullptr", 30);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v89);
    }

    if (p_size >= v92)
    {
      v32 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v90, (a1 + 96), v30);
    }

    else
    {
      if (*(a1 + 119) < 0)
      {
        std::string::__init_copy_ctor_external(p_size, *(a1 + 96), *(a1 + 104));
      }

      else
      {
        v31 = *(a1 + 96);
        *(p_size + 16) = *(a1 + 112);
        *p_size = v31;
      }

      *(p_size + 24) = v30;
      v32 = (p_size + 32);
      v91 = (p_size + 32);
    }

    v91 = v32;
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v89, 3);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, "preparing input_states ", 23);
    v34 = MEMORY[0x1B8C84C30](v33, (a5[1] - *a5) >> 3);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " ", 1);
    MEMORY[0x1B8C84C30](v35, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 296) - *(a1 + 288)) >> 3));
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v89);
  }

  v36 = *(a1 + 288);
  v37 = *(a1 + 296);
  if (0xAAAAAAAAAAAAAAABLL * ((v37 - v36) >> 3) != (a5[1] - *a5) >> 3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v89);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, "input_states.size() == cfg_.input_states.size()", 47);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v89);
  }

  if (v37 != v36)
  {
    v38 = 0;
    v39 = 0;
    v40 = v91;
    do
    {
      v41 = v36 + v38;
      v42 = *(*a5 + 8 * v39);
      if (v40 >= v92)
      {
        v40 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v90, v41, *(*a5 + 8 * v39));
      }

      else
      {
        if (*(v41 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v40, *(v36 + v38), *(v36 + v38 + 8));
        }

        else
        {
          v43 = *v41;
          v40->__r_.__value_.__r.__words[2] = *(v41 + 16);
          *&v40->__r_.__value_.__l.__data_ = v43;
        }

        v40[1].__r_.__value_.__r.__words[0] = v42;
        v40 = (v40 + 32);
        v91 = v40;
      }

      v91 = v40;
      ++v39;
      v36 = *(a1 + 288);
      v38 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 296) - v36) >> 3) > v39);
  }

  if (kaldi::g_kaldi_verbose_level > 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v89, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, "preparing outputs", 17);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v89);
  }

  memset(v88, 0, sizeof(v88));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v88, *(a1 + 312), *(a1 + 320), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 320) - *(a1 + 312)) >> 3));
  std::vector<std::string>::push_back[abi:ne200100](v88, (a1 + 120));
  v44 = *(a1 + 167);
  if (v44 < 0)
  {
    v44 = *(a1 + 152);
  }

  if (a7 && v44)
  {
    std::vector<std::string>::push_back[abi:ne200100](v88, (a1 + 144));
  }

  v45 = *(a1 + 191);
  if (v45 < 0)
  {
    v45 = *(a1 + 176);
  }

  if (a8 && v45)
  {
    std::vector<std::string>::push_back[abi:ne200100](v88, (a1 + 168));
  }

  v46 = *(a1 + 239);
  if (v46 < 0)
  {
    v46 = *(a1 + 224);
    if (!a10)
    {
      goto LABEL_82;
    }
  }

  else if (!a10)
  {
    goto LABEL_82;
  }

  if (v46)
  {
    std::vector<std::string>::push_back[abi:ne200100](v88, (a1 + 216));
  }

LABEL_82:
  v47 = *(a1 + 215);
  if (v47 < 0)
  {
    v47 = *(a1 + 200);
    if (!a9)
    {
      goto LABEL_88;
    }
  }

  else if (!a9)
  {
    goto LABEL_88;
  }

  if (v47)
  {
    std::vector<std::string>::push_back[abi:ne200100](v88, (a1 + 192));
  }

LABEL_88:
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v89, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, "running engine", 14);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v89);
  }

  v82 = a6;
  v48 = *(a1 + 512);
  memset(v89, 0, 24);
  (*(*v48 + 136))(v48, &v90, v88, v89, a11);
  __p = v89;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = 0;
  v86 = 0;
  v87 = 0;
  v50 = *a11;
  v49 = a11[1];
  if (*a11 != v49)
  {
    v51 = 0;
    do
    {
      v52 = *v50;
      if (v51 >= v87)
      {
        v53 = (v51 - __p) >> 3;
        if ((v53 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v54 = (v87 - __p) >> 2;
        if (v54 <= v53 + 1)
        {
          v54 = v53 + 1;
        }

        if (v87 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v55 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v55 = v54;
        }

        if (v55)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<TVertex const*>>(&__p, v55);
        }

        v56 = (8 * v53);
        *v56 = v52;
        v51 = (8 * v53 + 8);
        v57 = v56 - (v86 - __p);
        memcpy(v57, __p, v86 - __p);
        v58 = __p;
        __p = v57;
        v86 = v51;
        v87 = 0;
        if (v58)
        {
          operator delete(v58);
        }
      }

      else
      {
        *v51 = v52;
        v51 += 8;
      }

      v86 = v51;
      ++v50;
    }

    while (v50 != v49);
  }

  if (kaldi::g_kaldi_verbose_level > 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v89, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, "organizing outputs", 18);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v89);
  }

  v59 = *(a1 + 215);
  if (v59 < 0)
  {
    v59 = *(a1 + 200);
  }

  if (a9 && v59)
  {
    v60 = *(v86 - 1);
    v61 = (*(*v60 + 176))(v60);
    v62 = (*(*v60 + 184))(v60, (v61 - 1));
    kaldi::quasar::CopyBufferToMatrix(v60, 0xFFFFFFFFLL, v62, a9);
    v86 -= 8;
  }

  if ((*(a1 + 239) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 224))
    {
      goto LABEL_119;
    }
  }

  else if (!*(a1 + 239))
  {
    goto LABEL_119;
  }

  if (a10)
  {
    v63 = *(v86 - 1);
    v64 = (*(*v63 + 176))(v63);
    v65 = (*(*v63 + 184))(v63, (v64 - 1));
    kaldi::quasar::CopyBufferToMatrix(v63, 0xFFFFFFFFLL, v65, a10);
  }

  v86 -= 8;
LABEL_119:
  v66 = *(a1 + 191);
  if (v66 < 0)
  {
    v66 = *(a1 + 176);
  }

  if (a8 && v66)
  {
    v67 = *(v86 - 1);
    v68 = (*(*v67 + 176))(v67);
    v69 = (*(*v67 + 184))(v67, (v68 - 1));
    kaldi::quasar::CopyBufferToMatrix(v67, 0xFFFFFFFFLL, v69, a8);
    v86 -= 8;
  }

  v70 = *(a1 + 167);
  if (v70 < 0)
  {
    v70 = *(a1 + 152);
  }

  v71 = v86;
  if (a7 && v70)
  {
    v72 = *(v86 - 1);
    v73 = (*(*v72 + 176))(v72);
    v74 = (*(*v72 + 184))(v72, (v73 - 1));
    kaldi::quasar::CopyBufferToMatrix(v72, 0xFFFFFFFFLL, v74, a7);
    v71 = v86 - 8;
    v86 -= 8;
  }

  v75 = *(v71 - 1);
  v76 = (*(*v75 + 176))(v75);
  v77 = (*(*v75 + 184))(v75, (v76 - 1));
  kaldi::quasar::CopyBufferToMatrix(v75, 0xFFFFFFFFLL, v77, v82);
  v78 = __p;
  v86 -= 8;
  v79 = *a5;
  v80 = a5[1];
  if (v80 - *a5 != v86 - __p)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v89);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, "input_states.size() == output_states.size()", 43);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v89);
  }

  if (v80 != v79)
  {
    v81 = 0;
    do
    {
      kaldi::quasar::ComputeEngineBufferItf::CopyFrom(*(v79 + 8 * v81), *(__p + v81));
      ++v81;
      v79 = *a5;
    }

    while (v81 < (a5[1] - *a5) >> 3);
    v78 = __p;
  }

  if (v78)
  {
    v86 = v78;
    operator delete(v78);
  }

  v89[0].__locale_ = v88;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v89);
  v89[0].__locale_ = &v90;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v89);
}

void sub_1B505377C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20)
{
  a20 = (v20 - 112);
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a20);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::EspressoV2Plan::RunOp(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v11 = (a1 + 248);
  v10 = *(a1 + 248);
  if (v10 && (v10 = e5rt_execution_stream_reset(), v10) || (kaldi::quasar::EspressoV2Plan::PrepareInputsAndOutputs(v10, a2, a3, a4, a6, 0), !*v11) && e5rt_execution_stream_create() || e5rt_execution_stream_encode_operation() || (result = e5rt_execution_stream_execute_sync(), result))
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Espresso V2 failure: ", 21);
    v15 = strlen(last_error_message);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, last_error_message, v15);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v16, "\n");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  return result;
}

void kaldi::quasar::EspressoV2Plan::PrepareInputsAndOutputs(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, int a6)
{
  v10 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    do
    {
      v12 = *(v10 + 24);
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v33);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(&v33, "Unsupported input cast: %s");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v33);
      }

      kaldi::quasar::EspressoV2TensorData::BindToInput(v13, a2, v10, a6);
      v10 += 32;
    }

    while (v10 != v11);
  }

  if (a5)
  {
    v14 = *a5;
    v15 = a5[1];
    v16 = (v15 - *a5) >> 3;
    v17 = *a4;
    if (v16 == 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3))
    {
      if (v15 == v14)
      {
        goto LABEL_28;
      }

      v18 = 0;
      if (v16 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = (v15 - *a5) >> 3;
      }

      while (1)
      {
        v20 = *(v14 + 8 * v18);
        if (!v20)
        {
          break;
        }

        if (!v21)
        {
          break;
        }

        v22 = *(v21 + 79);
        if (v22 >= 0)
        {
          v23 = *(v21 + 79);
        }

        else
        {
          v23 = v21[8];
        }

        v24 = *(v17 + 23);
        v25 = v24;
        if ((v24 & 0x80u) != 0)
        {
          v24 = *(v17 + 8);
        }

        if (v23 != v24)
        {
          break;
        }

        v28 = v21[7];
        v26 = v21 + 7;
        v27 = v28;
        if (v22 < 0)
        {
          v26 = v27;
        }

        v29 = v25 >= 0 ? v17 : *v17;
        if (memcmp(v26, v29, v23))
        {
          break;
        }

        ++v18;
        v17 += 24;
        if (v19 == v18)
        {
          goto LABEL_28;
        }
      }
    }

    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::clear[abi:ne200100](a5);
    v14 = *a5;
    v15 = a5[1];
LABEL_28:
    if (v14 == v15)
    {
      if (*a4 != a4[1])
      {
        kaldi::quasar::EspressoV2TensorData::CreateAndBindToOutput();
      }
    }

    else if (a6)
    {
      v30 = 0;
      v31 = 0;
      do
      {
        v32 = *(v14 + 8 * v31);
        if (v32)
        {
        }

        kaldi::quasar::EspressoV2TensorData::BindToOutput(v32, a2, (*a4 + v30));
        ++v31;
        v14 = *a5;
        v30 += 24;
      }

      while (v31 < (a5[1] - *a5) >> 3);
    }
  }
}

uint64_t std::__split_buffer<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TVertex const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void kaldi::quasar::EspressoV2TensorData::GetDataFloat(kaldi::quasar::EspressoV2TensorData *this)
{
  v7 = 0;
  if (e5rt_tensor_desc_dtype_get_component_dtype())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Espresso V2 failure: ", 21);
    v4 = strlen(last_error_message);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, last_error_message, v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "\n");
  }

  else
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    v1 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Not implemented GetDataFloat const from non-E5RT_TENSOR_DESC_COMPONENT_DTYPE_FLOAT types", 88);
    MEMORY[0x1B8C84C00](v1, v7);
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
}

void *kaldi::CuVector<float>::~CuVector(void *a1)
{
  *a1 = &unk_1F2D3AC18;
  v3 = a1 + 1;
  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  return a1;
}

void **kaldi::MatrixBase<float>::CopyRowsFromVec(void **result, char **a2)
{
  v2 = result;
  v3 = *(a2 + 2);
  v5 = *(result + 2);
  v4 = *(result + 3);
  if (v3 == v5 * v4)
  {
    v6 = *(result + 4);
    if (v6 == v5)
    {
      v7 = *a2;
      v8 = *result;

      return memcpy(v8, v7, 4 * v4 * v5);
    }

    else if (v4 >= 1)
    {
      v11 = 0;
      v12 = *a2;
      v13 = *result;
      v14 = 4 * v6;
      do
      {
        if (v5 >= 1)
        {
          v15 = 0;
          do
          {
            *&v13[v15] = *&v12[v15];
            v15 += 4;
          }

          while (4 * v5 != v15);
        }

        ++v11;
        v13 += v14;
        v12 += 4 * v5;
      }

      while (v11 != v4);
    }
  }

  else
  {
    if (v3 != v5)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v16, "Wrong sized arguments");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
    }

    if (v4 >= 1)
    {
      v9 = 0;
      v10 = *a2;
      do
      {
        result = memcpy(*v2 + 4 * *(v2 + 4) * v9++, v10, 4 * *(v2 + 2));
      }

      while (v9 < *(v2 + 3));
    }
  }

  return result;
}

uint64_t _ZNSt3__120__shared_ptr_emplaceIN6quasar21ComputeAheadFeatInput5BatchENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F2D0EA70;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 24) = 0u;
  quasar::ComputeAheadFeatInput::Batch::Batch((a1 + 24));
  return a1;
}

uint64_t quasar::Decoder::run(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, int a6, uint64_t a7)
{
  if (*(a1 + 408) != 1)
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    *v67 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v67);
    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "Must call init() for ", 21);
    v61 = *(a1 + 8);
    v60 = a1 + 8;
    v59 = v61;
    v62 = *(v60 + 23);
    if (v62 >= 0)
    {
      v63 = v60;
    }

    else
    {
      v63 = v59;
    }

    if (v62 >= 0)
    {
      v64 = *(v60 + 23);
    }

    else
    {
      v64 = *(v60 + 8);
    }

    v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, v63, v64);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v65, " before calling run().");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v67);
  }

  quasar::SpeechRequestData::getRecogRequestTimer(*a4, v67);
  v14 = v67[0];
  Seconds = kaldi::Timer::GetSeconds(5, v15);
  v17 = *v14;
  if (v67[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67[1]);
  }

  quasar::SpeechRequestData::getRecogRequestTimer(*a4, v67);
  v18 = v67[0];
  v20 = kaldi::Timer::GetSeconds(0x10, v19);
  v21 = v18[2];
  if (v67[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67[1]);
  }

  if ((*(*a1 + 168))(a1, a3))
  {
    if (quasar::gLogLevel >= 4)
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      *v67 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v67);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "Skipping Decoder: ", 18);
      if (*(a1 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
      }

      else
      {
        __p = *(a1 + 8);
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      quasar::QuasarInfoMessage::~QuasarInfoMessage(v67);
    }

    if (*(a1 + 56))
    {
      v28 = 2;
    }

    else
    {
      v28 = 0;
    }
  }

  else if ((*(*a1 + 56))(a1) && *(*(*a4 + 24) + 53) == 1)
  {
    if (quasar::gLogLevel >= 4)
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      *v67 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v67);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "Audio analytics are unneeded. Skipping Decoder: ", 48);
      if (*(a1 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
      }

      else
      {
        __p = *(a1 + 8);
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &__p;
      }

      else
      {
        v33 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v34 = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v33, v34);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      quasar::QuasarInfoMessage::~QuasarInfoMessage(v67);
    }

    v28 = 0;
  }

  else if (!(*(*a1 + 64))(a1) || *(a2 + 536))
  {
    if (quasar::gLogLevel >= 4)
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      *v67 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v67);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "Running Decoder: ", 17);
      if (*(a1 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
      }

      else
      {
        __p = *(a1 + 8);
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &__p;
      }

      else
      {
        v31 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v32 = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v31, v32);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      quasar::QuasarInfoMessage::~QuasarInfoMessage(v67);
    }

    v28 = (*(*a1 + 32))(a1, a2, a3, a4, a5, a7);
  }

  else
  {
    if (quasar::gLogLevel >= 1)
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      *v67 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v67);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "Error: Utterance features were improperly cached. Failing Decoder: ", 67);
      if (*(a1 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
      }

      else
      {
        __p = *(a1 + 8);
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v30 = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v29, v30);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      quasar::QuasarErrorMessage::~QuasarErrorMessage(v67);
    }

    v28 = 2;
  }

  quasar::SpeechRequestData::getRecogRequestTimer(*a4, v67);
  v35 = v67[0];
  v37 = Seconds - v17;
  v38 = kaldi::Timer::GetSeconds(5, v36) - *v35;
  if (v67[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67[1]);
  }

  v39 = v38 - v37;
  if (v28 == 2)
  {
    if (quasar::gLogLevel < 4)
    {
      goto LABEL_97;
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    *v67 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v67);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "Decoder ", 8);
    if (*(a1 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
    }

    else
    {
      __p = *(a1 + 8);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &__p;
    }

    else
    {
      v42 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v43 = __p.__r_.__value_.__l.__size_;
    }

    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, v42, v43);
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, " failed. decoderDuration: ", 26);
    MEMORY[0x1B8C84BE0](v45, v39);
  }

  else
  {
    if (quasar::gLogLevel < 4)
    {
      goto LABEL_97;
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    *v67 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v67);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "Decoder ", 8);
    if (*(a1 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
    }

    else
    {
      __p = *(a1 + 8);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = &__p;
    }

    else
    {
      v46 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v47 = __p.__r_.__value_.__l.__size_;
    }

    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v46, v47);
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, " succeeded. decoderDuration: ", 29);
    MEMORY[0x1B8C84BE0](v49, v39);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  quasar::QuasarInfoMessage::~QuasarInfoMessage(v67);
LABEL_97:
  v50 = *(*a3 + 440);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    __p = *(a1 + 8);
  }

  v51 = std::string::append(&__p, "Time");
  v52 = *&v51->__r_.__value_.__l.__data_;
  *&v68 = *(&v51->__r_.__value_.__l + 2);
  *v67 = v52;
  v51->__r_.__value_.__l.__size_ = 0;
  v51->__r_.__value_.__r.__words[2] = 0;
  v51->__r_.__value_.__r.__words[0] = 0;
  quasar::SpeechRequestResultData::addDump(v50, v67, v39);
  if (SBYTE7(v68) < 0)
  {
    operator delete(v67[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!a6)
    {
      return v28;
    }
  }

  else if (!a6)
  {
    return v28;
  }

  quasar::SpeechRequestData::getRecogRequestTimer(*a4, v67);
  v53 = v67[0];
  v55 = kaldi::Timer::GetSeconds(0x10, v54) - v53[2] - (v20 - v21);
  v56 = *(*a3 + 440);
  *(v56 + 80) = (*(v56 + 80) + v55 * 1000.0);
  if (v67[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67[1]);
    v56 = *(*a3 + 440);
  }

  std::string::basic_string[abi:ne200100]<0>(v67, "FirstPassCpuMs");
  *&__p.__r_.__value_.__l.__data_ = *(*(*a3 + 440) + 80);
  quasar::SpeechRequestResultData::addAA(v56, v67, &__p, 1);
  if (SBYTE7(v68) < 0)
  {
    operator delete(v67[0]);
  }

  return v28;
}

uint64_t quasar::SpeechRequestData::getRecogRequestTimer@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 208);
  *a2 = *(this + 200);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void quasar::OnlineLatticeBiglmLmeFasterDecoder::setUpDecoding(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 232))(a1);
  (*(*a1 + 216))(a1, a2, a4);
  if (quasar::gLogLevel >= 4)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    *v9 = 0u;
    v10 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "split lme tokens: ", 18);
    MEMORY[0x1B8C84BD0](v8, a1[2894]);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(v9);
  }

  *(*a3 + 1104) = a1[2894];
  operator new();
}

void sub_1B50550EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineLatticeBiglmFasterDecoder::clearEagerData(quasar::OnlineLatticeBiglmFasterDecoder *this)
{
  v2 = *(this + 347);
  v3 = 0uLL;
  *(this + 173) = 0u;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    v3 = 0uLL;
  }

  v4 = *(this + 349);
  *(this + 174) = v3;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t std::vector<quasar::SymbolTableList::Data>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<quasar::SymbolTableList::Data>::__emplace_back_slow_path<quasar::SymbolTableList::Data>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    v4 = *(a2 + 16);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 16) = v4;
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::SymbolTableList::Data>,quasar::SymbolTableList::Data*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *v6 = 0;
      *(v6 + 8) = 0;
      v7 = *(v6 + 16);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 16) = v7;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      v8 = *(v5 + 8);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::SymbolTableList::Data>,quasar::SymbolTableList::Data*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
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
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1B50555E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::LmeInfo>,quasar::LmeInfo*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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
      v7 = *v6;
      *(a4 + 8) = *(v6 + 2);
      *a4 = v7;
      v8 = *(v6 + 1);
      *(a4 + 32) = v6[4];
      *(a4 + 16) = v8;
      v6[3] = 0;
      v6[4] = 0;
      v6[2] = 0;
      v6 += 5;
      a4 += 40;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 39) < 0)
      {
        operator delete(v5[2]);
      }

      v5 += 5;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::LmeInfo>,quasar::LmeInfo*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__emplace_back_slow_path<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, v7);
  }

  v8 = 32 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v8 + 24) = *(a2 + 24);
  *&v17 = 32 * v2 + 32;
  v9 = a1[1];
  v10 = 32 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~__split_buffer(&v15);
  return v14;
}

void sub_1B50557C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

double quasar::Location::fromSharedFuture(std::__assoc_sub_state **a1)
{
  v1 = *a1;
  v2 = 1000.0;
  if (*a1)
  {
    rep = std::chrono::steady_clock::now().__d_.__rep_;
    if (!std::__assoc_sub_state::wait_until<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(v1, &rep))
    {
      std::__assoc_state<quasar::Location>::copy(*a1);
      return *v4;
    }
  }

  return v2;
}

void std::__assoc_state<quasar::Location>::copy(std::__assoc_sub_state *a1)
{
  __lk.__m_ = &a1->__mut_;
  __lk.__owns_ = 1;
  std::mutex::lock(&a1->__mut_);
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  ptr = a1->__exception_.__ptr_;
  v5.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v5);
  if (ptr)
  {
    std::exception_ptr::exception_ptr(&v4, &a1->__exception_);
    v3.__ptr_ = &v4;
    std::rethrow_exception(v3);
    __break(1u);
  }

  else if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_1B50558F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

std::string *std::__shared_ptr_emplace<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::string const&,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::allocator<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,0>(std::string *a1, __int128 *a2, uint64_t a3, std::string::size_type *a4)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F2D0AA80;
  std::allocator<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::construct[abi:ne200100]<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::string const&,std::string const&,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&v6, a1 + 1, a2, a3, a4);
  return a1;
}

uint64_t fst::ImplToFst<fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<void>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<void>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<void>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

std::string *quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::RegionalLmPlug(std::string *this, __int128 *a2, __int128 *a3, std::string::size_type *a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this + 1, a3);
  v8 = a4[1];
  this[2].__r_.__value_.__l.__size_ = *a4;
  this[2].__r_.__value_.__r.__words[2] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void sub_1B5055CD4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::readFst(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v67, *a2, *(a2 + 8));
  }

  else
  {
    v67 = *a2;
  }

  v68 = *(a2 + 24);
  v69 = *(a2 + 40);
  v70 = *(a2 + 56);
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v65 = 0;
  v66 = 0;
  v64 = -1;
  v6 = v68;
  if (!v68)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    v7 = fst::FstHeader::Read(v59, a1, __p, 0);
    if (SBYTE7(v43) < 0)
    {
      operator delete(__p[0]);
    }

    if ((v7 & 1) == 0)
    {
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
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Reading FST: error reading FST header.", 38);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }

    v6 = v59;
    *&v68 = v59;
  }

  v8 = fst::ArcTpl<fst::TropicalWeightTpl<float>,int>::Type();
  v9 = v6[55];
  if (v9 >= 0)
  {
    v10 = v6[55];
  }

  else
  {
    v10 = *(v6 + 5);
  }

  v11 = *(v8 + 23);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(v8 + 8);
  }

  if (v10 != v11 || (v9 >= 0 ? (v13 = v6 + 32) : (v13 = *(v6 + 4)), v12 >= 0 ? (v14 = v8) : (v14 = *v8), memcmp(v13, v14, v10)))
  {
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
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "FST with arc type ", 18);
    v34 = v6[55];
    if (v34 >= 0)
    {
      v35 = (v6 + 32);
    }

    else
    {
      v35 = *(v6 + 4);
    }

    if (v34 >= 0)
    {
      v36 = v6[55];
    }

    else
    {
      v36 = *(v6 + 5);
    }

    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v35, v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " not supported.\n", 16);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  *a3 = 0;
  v15 = v6 + 8;
  v16 = v6[31];
  if ((v16 & 0x80) != 0)
  {
    if (*(v6 + 2) == 6 && **v15 == 1952671094 && *(*v15 + 4) == 29295)
    {
      goto LABEL_75;
    }

    if (*(v6 + 2) != 5 || (**v15 == 1936617315 ? (v21 = *(*v15 + 4) == 116) : (v21 = 0), !v21))
    {
      if (*(v6 + 2) != 5 || (**v15 == 1634887534 ? (v22 = *(*v15 + 4) == 109) : (v22 = 0), !v22))
      {
        if (*(v6 + 2) == 15)
        {
          if (**v15 == 0x75715F6D6172676ELL && *(*v15 + 7) == 0x64657A69746E6175)
          {
            goto LABEL_81;
          }

          if ((v16 & 0x80) == 0)
          {
            goto LABEL_98;
          }
        }

        if (*(v6 + 2) != 18)
        {
          goto LABEL_92;
        }

        if (**v15 == 0x5F64656375646572 && *(*v15 + 8) == 0x637564736E617274 && *(*v15 + 16) == 29285)
        {
          goto LABEL_107;
        }

        if ((v16 & 0x80) != 0)
        {
LABEL_92:
          if (*(v6 + 2) != 16)
          {
            goto LABEL_98;
          }

          v17 = *v15;
        }

        else
        {
          v17 = (v6 + 8);
          if (v16 != 16)
          {
            goto LABEL_98;
          }
        }

        goto LABEL_94;
      }

LABEL_104:
      fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::Read();
    }
  }

  else
  {
    if (v6[31] > 0xEu)
    {
      if (v16 != 15)
      {
        v17 = (v6 + 8);
        if (v16 != 16)
        {
          if (v16 != 18)
          {
            goto LABEL_98;
          }

          v18 = *v15 == 0x5F64656375646572 && *(v6 + 2) == 0x637564736E617274;
          if (!v18 || *(v6 + 12) != 29285)
          {
            goto LABEL_98;
          }

LABEL_107:
          fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::Read();
        }

LABEL_94:
        v30 = *v17;
        v31 = v17[1];
        if (v30 == 0x5F64656375646572 && v31 == 0x726F747065636361)
        {
          fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::Read();
        }

LABEL_98:
        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6 + 1, "reduced_quantized_transducer"))
        {
          fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::Read();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6 + 1, "reduced_quantized_acceptor"))
        {
          fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::Read();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6 + 1, "squeezed_transducer"))
        {
          fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::Read();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6 + 1, "squeezed_acceptor"))
        {
          fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::Read();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6 + 1, "squeezed_quantized_transducer"))
        {
          fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::Read();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6 + 1, "squeezed_quantized_acceptor"))
        {
          fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::Read();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6 + 1, "enumeration"))
        {
          fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::Read();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6 + 1, "quantized_enumeration"))
        {
          fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::Read();
        }

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
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Reading FST: unsupported FST type: ", 35);
        v39 = v6[31];
        if (v39 >= 0)
        {
          v40 = (v6 + 8);
        }

        else
        {
          v40 = *(v6 + 1);
        }

        if (v39 >= 0)
        {
          v41 = v6[31];
        }

        else
        {
          v41 = *(v6 + 2);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v40, v41);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
      }

      if (*v15 != 0x75715F6D6172676ELL || *(v6 + 15) != 0x64657A69746E6175)
      {
        goto LABEL_98;
      }

LABEL_81:
      fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::Read();
    }

    if (v16 != 5)
    {
      if (v16 != 6)
      {
        goto LABEL_98;
      }

      if (*v15 != 1952671094 || *(v6 + 6) != 29295)
      {
        goto LABEL_98;
      }

LABEL_75:
      fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Read();
    }

    if (*v15 != 1936617315 || v6[12] != 116)
    {
      if (*v15 != 1634887534 || v6[12] != 109)
      {
        goto LABEL_98;
      }

      goto LABEL_104;
    }
  }

  fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>::Read();
}

void sub_1B5056488(_Unwind_Exception *a1)
{
  fst::FstHeader::~FstHeader((v1 - 208));
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(a1);
}

void quasar::QuasarProdInfoMessage::~QuasarProdInfoMessage(std::locale *this)
{
  v2 = quasar::QuasarProdInfoMessage::logger;
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

void kaldi::OnlineFeatureMatrixOptions::Register(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "batch-size");
  std::string::basic_string[abi:ne200100]<0>(__p, "Number of feature vectors processed w/o interruption");
  (*(*a2 + 8))(a2, v6, a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "store-all-feats");
  std::string::basic_string[abi:ne200100]<0>(__p, "If set, all output features will be retained in memory for use after decoding ends");
  (**a2)(a2, v6, a1 + 4, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5056738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

const void **quasar::ModelLoader::readFstNetwork@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 8), a2))
  {
    kaldi::Input::Input(v37, a2, 0);
    v14 = kaldi::Input::Stream(v37);
    if (!*(v14 + *(*v14 - 24) + 32))
    {
      v32 = 0u;
      v33 = 0u;
      *v30 = 0u;
      *v31 = 0u;
      v35 = 0;
      v36 = 0;
      v34 = -1;
      v15 = kaldi::Input::Stream(v37);
      if (fst::FstHeader::Read(v29, v15, a2, 0))
      {
        fst::FstReadOptions::FstReadOptions(__p, a2, v29, 0, 0);
        LODWORD(v41) = 2;
        v16 = *a3;
        if (v16)
        {
          v17 = *(a2 + 23);
          if (v17 >= 0)
          {
            v18 = *(a2 + 23);
          }

          else
          {
            v18 = *(a2 + 8);
          }

          v19 = *(v16 + 23);
          v20 = v19;
          if ((v19 & 0x80u) != 0)
          {
            v19 = *(v16 + 8);
          }

          v21 = 0;
          if (v18 == v19)
          {
            v22 = v17 >= 0 ? a2 : *a2;
            v23 = v20 >= 0 ? v16 : *v16;
            if (!memcmp(v22, v23, v18))
            {
              v21 = *(v16 + 24);
            }
          }

          DWORD2(v41) = v21;
        }

        v24 = kaldi::Input::Stream(v37);
        quasar::readFst(v24, __p, &v55);
      }

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      *__p = 0u;
      v39 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Reading FST: error reading FST header.", 38);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    *__p = 0u;
    v39 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Could not open decoding-graph FST ", 34);
    v26 = *(a2 + 23);
    if (v26 >= 0)
    {
      v27 = a2;
    }

    else
    {
      v27 = *a2;
    }

    if (v26 >= 0)
    {
      v28 = *(a2 + 23);
    }

    else
    {
      v28 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v27, v28);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  if (quasar::gLogLevel >= 5)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    *__p = 0u;
    v39 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "found object in map for fst ", 28);
    v9 = *(a2 + 23);
    if (v9 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (v9 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
  }

  __p[0] = a2;
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 8), a2);
  v13 = result[6];
  *a4 = result[5];
  a4[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B5056D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  (*(*v28 + 8))(v28);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a10);
  kaldi::Input::~Input(&a22);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<quasar::GeoRegion::loadModels(quasar::ModelLoader &,quasar::filesystem::Path &)::$_0,std::allocator<quasar::GeoRegion::loadModels(quasar::ModelLoader &,quasar::filesystem::Path &)::$_0>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(**(a1 + 8) + 16))(*(a1 + 8));
  result = (*(**a2 + 64))(*a2, 0x10000000, 0);
  if (result != 0x10000000)
  {
    memset(v4, 0, sizeof(v4));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "FST: input label is not sorted!", 31);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v4);
  }

  return result;
}

void sub_1B5056EF4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void quasar::collectRecogInfoFromSysConfigHelper(quasar *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = 0u;
  v6 = 0u;
  v7 = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(__p, "associated-task-mapping");
  quasar::SystemConfig::getPtreeOptional(this, __p);
}

void sub_1B50573A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27)
{
  a27 = (v27 - 168);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a27);
  JUMPOUT(0x1B5057484);
}

void sub_1B50573AC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  __p = (v32 - 168);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  JUMPOUT(0x1B5057484);
}

void sub_1B50573C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27)
{
  std::pair<std::string,quasar::PTree>::~pair(&a27);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(v27 - 144);
  a27 = a11;
  std::vector<std::pair<std::string,quasar::PTree>>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

void sub_1B50573E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(v27 - 144);
  a27 = a11;
  std::vector<std::pair<std::string,quasar::PTree>>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

void sub_1B50573E8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, uint64_t a35, char *a36)
{
  a36 = &a33;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a36);
  JUMPOUT(0x1B5057474);
}

uint64_t quasar::splitAndTrimNoEmpty(const std::string *a1, char *a2, uint64_t a3)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2D318A8;
  v4[1] = a3;
  v4[3] = v4;
  quasar::splitAndTrimNoEmpty(a1, a2, v4);
  return std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v4);
}

void sub_1B5057530(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *quasar::RecogRequestFilter::RecogRequestFilter(std::string *this, kaldi::quasar::Vocab *a2, std::string *a3)
{
  v114 = *MEMORY[0x1E69E9840];
  if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
  }

  else
  {
    v6 = *&a3->__r_.__value_.__l.__data_;
    this->__r_.__value_.__r.__words[2] = a3->__r_.__value_.__r.__words[2];
    *&this->__r_.__value_.__l.__data_ = v6;
  }

  *&this[1].__r_.__value_.__l.__data_ = 0u;
  v7 = this + 1;
  *&this[3].__r_.__value_.__l.__data_ = 0u;
  *&this[5].__r_.__value_.__l.__data_ = 0u;
  v91 = this + 5;
  *&this[7].__r_.__value_.__l.__data_ = 0u;
  v89 = &this[7];
  v90 = &this[6];
  *&this[7].__r_.__value_.__r.__words[2] = 0u;
  *&this[8].__r_.__value_.__r.__words[1] = 0u;
  v92 = &this[8];
  *&this[5].__r_.__value_.__r.__words[2] = 0u;
  *&this[6].__r_.__value_.__r.__words[1] = 0u;
  *&this[3].__r_.__value_.__r.__words[2] = 0u;
  *&this[4].__r_.__value_.__r.__words[1] = 0u;
  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  *&this[2].__r_.__value_.__r.__words[1] = 0u;
  std::string::basic_string[abi:ne200100]<0>(__p, "::");
  quasar::splitAndTrim(a3, __p, &v95);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v8 = kaldi::quasar::Vocab::VocabSize(a2);
  v9 = v95;
  v10 = v96 - v95;
  if (v8 > 14)
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
    if (v13 != 5 && v13 != 8)
    {
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v99 = 0u;
      memset(__p, 0, sizeof(__p));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "The number of recognition request parameters is ", 48);
      v84 = MEMORY[0x1B8C84C30](v83, 0xAAAAAAAAAAAAAAABLL * ((v96 - v95) >> 3));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, " (requirement is 5 or 8 for config file ver 15.0+)", 50);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }
  }

  else if (v10 != 72)
  {
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v99 = 0u;
    memset(__p, 0, sizeof(__p));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "The number of recognition request parameters is ", 48);
    v12 = MEMORY[0x1B8C84C30](v11, 0xAAAAAAAAAAAAAAABLL * ((v96 - v95) >> 3));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " (requirement is 3)", 19);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(v93, "|");
  quasar::splitAndTrimNoEmpty(v9, v93, __p);
  if (v94 < 0)
  {
    operator delete(v93[0]);
  }

  v16 = *__p;
  for (i = *&__p[8]; v16 != i; ++v16)
  {
    v17 = std::stoi(v16, 0, 10);
    size = this[1].__r_.__value_.__l.__size_;
    v18 = this[1].__r_.__value_.__r.__words[2];
    if (size >= v18)
    {
      v21 = v7->__r_.__value_.__r.__words[0];
      v22 = size - v7->__r_.__value_.__r.__words[0];
      v23 = v22 >> 2;
      v24 = (v22 >> 2) + 1;
      if (v24 >> 62)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v25 = v18 - v21;
      if (v25 >> 1 > v24)
      {
        v24 = v25 >> 1;
      }

      if (v25 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v26 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v24;
      }

      if (v26)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&this[1], v26);
      }

      *(4 * v23) = v17;
      v20 = 4 * v23 + 4;
      memcpy(0, v21, v22);
      data = this[1].__r_.__value_.__l.__data_;
      this[1].__r_.__value_.__r.__words[0] = 0;
      this[1].__r_.__value_.__l.__size_ = v20;
      this[1].__r_.__value_.__r.__words[2] = 0;
      if (data)
      {
        operator delete(data);
      }
    }

    else
    {
      *size = v17;
      v20 = (size + 1);
    }

    this[1].__r_.__value_.__l.__size_ = v20;
  }

  v93[0] = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v93);
  v28 = v95;
  std::string::basic_string[abi:ne200100]<0>(v93, "|");
  quasar::splitAndTrimNoEmpty(v28 + 1, v93, __p);
  std::vector<std::string>::__vdeallocate(&this[2]);
  *&this[2].__r_.__value_.__l.__data_ = *__p;
  this[2].__r_.__value_.__r.__words[2] = *&__p[16];
  v97 = __p;
  memset(__p, 0, 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v97);
  if (v94 < 0)
  {
    operator delete(v93[0]);
  }

  v30 = this[2].__r_.__value_.__l.__data_;
  v29 = this[2].__r_.__value_.__l.__size_;
  while (v30 != v29)
  {
    v31 = v30[23];
    if (v31 < 0)
    {
      v32 = *v30;
      v31 = *(v30 + 1);
    }

    else
    {
      v32 = v30;
    }

    if (v31 >= 1)
    {
      v33 = (v32 + v31);
      v34 = v32;
      do
      {
        v35 = memchr(v34, 42, v31);
        if (!v35)
        {
          break;
        }

        if (*v35 == 42)
        {
          if (v35 != v33 && &v35[-v32] != -1)
          {
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v108 = 0u;
            v109 = 0u;
            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            v99 = 0u;
            memset(__p, 0, sizeof(__p));
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
            v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Illegal char '*' found in task type ", 36);
            v60 = v30[23];
            if (v60 >= 0)
            {
              v61 = v30;
            }

            else
            {
              v61 = *v30;
            }

            if (v60 >= 0)
            {
              v62 = v30[23];
            }

            else
            {
              v62 = *(v30 + 1);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, v61, v62);
            quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
          }

          break;
        }

        v34 = v35 + 1;
        v31 = v33 - v34;
      }

      while (v33 - v34 >= 1);
    }

    v30 += 24;
  }

  v36 = v95;
  std::string::basic_string[abi:ne200100]<0>(v93, "|");
  quasar::splitAndTrimNoEmpty(v36 + 2, v93, __p);
  std::vector<std::string>::__vdeallocate(&this[3]);
  *&this[3].__r_.__value_.__l.__data_ = *__p;
  this[3].__r_.__value_.__r.__words[2] = *&__p[16];
  v97 = __p;
  memset(__p, 0, 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v97);
  if (v94 < 0)
  {
    operator delete(v93[0]);
  }

  v37 = this[3].__r_.__value_.__l.__data_;
  v38 = this[3].__r_.__value_.__l.__size_;
  while (v37 != v38)
  {
    v39 = v37[23];
    if (v39 >= 0)
    {
      v40 = v37;
    }

    else
    {
      v40 = *v37;
    }

    if (v39 >= 0)
    {
      v41 = v37[23];
    }

    else
    {
      v41 = *(v37 + 1);
    }

    v42 = (v41 - 1);
    if (v41 >= 1)
    {
      v43 = (v40 + v41);
      v44 = v40;
      do
      {
        v45 = memchr(v44, 42, v41);
        if (!v45)
        {
          break;
        }

        if (*v45 == 42)
        {
          if (v45 != v43 && &v45[-v40] != -1 && &v45[-v40] != v42)
          {
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v108 = 0u;
            v109 = 0u;
            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            v99 = 0u;
            memset(__p, 0, sizeof(__p));
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
            v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Illegal char '*' found in device type ", 38);
            v64 = v37[23];
            if (v64 >= 0)
            {
              v65 = v37;
            }

            else
            {
              v65 = *v37;
            }

            if (v64 >= 0)
            {
              v66 = v37[23];
            }

            else
            {
              v66 = *(v37 + 1);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, v65, v66);
            quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
          }

          break;
        }

        v44 = v45 + 1;
        v41 = v43 - v44;
      }

      while (v43 - v44 >= 1);
    }

    v37 += 24;
  }

  *__p = 1;
  std::vector<BOOL>::__assign_with_size[abi:ne200100]<BOOL const*,BOOL const*>(this[4].__r_.__value_.__r.__words, __p, &__p[2], 2uLL);
  *__p = 1;
  std::vector<BOOL>::__assign_with_size[abi:ne200100]<BOOL const*,BOOL const*>(v91, __p, &__p[2], 2uLL);
  std::string::basic_string[abi:ne200100]<0>(__p, "*");
  std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>(v90, __p, &__p[24], 1uLL);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "*");
  std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>(v89, __p, &__p[24], 1uLL);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "*");
  std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>(v92, __p, &__p[24], 1uLL);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v96 - v95) >> 3) >= 4)
  {
    quasar::parseBoolField(v95 + 72, __p);
    v46 = this[4].__r_.__value_.__l.__data_;
    if (v46)
    {
      operator delete(v46);
      this[4].__r_.__value_.__r.__words[0] = 0;
      this[4].__r_.__value_.__l.__size_ = 0;
      this[4].__r_.__value_.__r.__words[2] = 0;
    }

    this[4].__r_.__value_.__r.__words[0] = *__p;
    v47 = *&__p[8];
    *&this[4].__r_.__value_.__r.__words[1] = *&__p[8];
    if (!v47)
    {
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v99 = 0u;
      memset(__p, 0, sizeof(__p));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "farField type must be '*', 'true', or 'false': ", 47);
      v80 = *(v95 + 95);
      if (v80 >= 0)
      {
        v81 = v95 + 72;
      }

      else
      {
        v81 = *(v95 + 72);
      }

      if (v80 >= 0)
      {
        v82 = *(v95 + 95);
      }

      else
      {
        v82 = *(v95 + 80);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, v81, v82);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v96 - v95) >> 3) >= 5)
    {
      quasar::parseBoolField(v95 + 96, __p);
      if (v91->__r_.__value_.__r.__words[0])
      {
        operator delete(v91->__r_.__value_.__l.__data_);
        v91->__r_.__value_.__r.__words[0] = 0;
        this[5].__r_.__value_.__l.__size_ = 0;
        this[5].__r_.__value_.__r.__words[2] = 0;
      }

      this[5].__r_.__value_.__r.__words[0] = *__p;
      v48 = *&__p[8];
      *&this[5].__r_.__value_.__r.__words[1] = *&__p[8];
      if (!v48)
      {
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v99 = 0u;
        memset(__p, 0, sizeof(__p));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "atypicalSpeech types must be '*', 'true', or 'false': ", 54);
        v86 = *(v95 + 119);
        if (v86 >= 0)
        {
          v87 = v95 + 96;
        }

        else
        {
          v87 = *(v95 + 96);
        }

        if (v86 >= 0)
        {
          v88 = *(v95 + 119);
        }

        else
        {
          v88 = *(v95 + 104);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, v87, v88);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
      }

      v49 = v95;
      if (0xAAAAAAAAAAAAAAABLL * ((v96 - v95) >> 3) >= 8)
      {
        std::string::basic_string[abi:ne200100]<0>(v93, "|");
        quasar::splitAndTrimNoEmpty(v49 + 5, v93, __p);
        std::vector<std::string>::__vdeallocate(v90);
        *&this[6].__r_.__value_.__l.__data_ = *__p;
        this[6].__r_.__value_.__r.__words[2] = *&__p[16];
        v97 = __p;
        memset(__p, 0, 24);
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v97);
        if (v94 < 0)
        {
          operator delete(v93[0]);
        }

        v51 = this[6].__r_.__value_.__l.__data_;
        v50 = this[6].__r_.__value_.__l.__size_;
        while (v51 != v50)
        {
          if (quasar::isInvalidPowerContext(v51))
          {
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v108 = 0u;
            v109 = 0u;
            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            v99 = 0u;
            memset(__p, 0, sizeof(__p));
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
            v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "aneContext type must be '*', 'unconstrained', 'reduced', or 'avoid': ", 69);
            v68 = v51[23];
            if (v68 >= 0)
            {
              v69 = v51;
            }

            else
            {
              v69 = *v51;
            }

            if (v68 >= 0)
            {
              v70 = v51[23];
            }

            else
            {
              v70 = *(v51 + 1);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, v69, v70);
            quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
          }

          v51 += 24;
        }

        v52 = v95;
        std::string::basic_string[abi:ne200100]<0>(v93, "|");
        quasar::splitAndTrimNoEmpty(v52 + 6, v93, __p);
        std::vector<std::string>::__vdeallocate(v89);
        *&this[7].__r_.__value_.__l.__data_ = *__p;
        this[7].__r_.__value_.__r.__words[2] = *&__p[16];
        v97 = __p;
        memset(__p, 0, 24);
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v97);
        if (v94 < 0)
        {
          operator delete(v93[0]);
        }

        v54 = this[7].__r_.__value_.__l.__data_;
        v53 = this[7].__r_.__value_.__l.__size_;
        while (v54 != v53)
        {
          if (quasar::isInvalidPowerContext(v54))
          {
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v108 = 0u;
            v109 = 0u;
            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            v99 = 0u;
            memset(__p, 0, sizeof(__p));
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
            v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "cpuContext type must be '*', 'unconstrained', 'reduced', or 'avoid': ", 69);
            v72 = v54[23];
            if (v72 >= 0)
            {
              v73 = v54;
            }

            else
            {
              v73 = *v54;
            }

            if (v72 >= 0)
            {
              v74 = v54[23];
            }

            else
            {
              v74 = *(v54 + 1);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, v73, v74);
            quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
          }

          v54 += 24;
        }

        v55 = v95;
        std::string::basic_string[abi:ne200100]<0>(v93, "|");
        quasar::splitAndTrimNoEmpty(v55 + 7, v93, __p);
        std::vector<std::string>::__vdeallocate(v92);
        *&this[8].__r_.__value_.__l.__data_ = *__p;
        this[8].__r_.__value_.__r.__words[2] = *&__p[16];
        v97 = __p;
        memset(__p, 0, 24);
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v97);
        if (v94 < 0)
        {
          operator delete(v93[0]);
        }

        v57 = this[8].__r_.__value_.__l.__data_;
        v56 = this[8].__r_.__value_.__l.__size_;
        while (v57 != v56)
        {
          if (quasar::isInvalidPowerContext(v57))
          {
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v108 = 0u;
            v109 = 0u;
            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            v99 = 0u;
            memset(__p, 0, sizeof(__p));
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
            v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "gpuContext type must be '*', 'unconstrained', 'reduced', or 'avoid': ", 69);
            v76 = v57[23];
            if (v76 >= 0)
            {
              v77 = v57;
            }

            else
            {
              v77 = *v57;
            }

            if (v76 >= 0)
            {
              v78 = v57[23];
            }

            else
            {
              v78 = *(v57 + 1);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, v77, v78);
            quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
          }

          v57 += 24;
        }
      }
    }
  }

  *__p = &v95;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  return this;
}

void sub_1B50581E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12, void **a13, void **a14, void **a15, void ***a16, uint64_t a17, uint64_t a18, void **a19)
{
  a16 = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  a19 = a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  a19 = a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  a19 = a11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (*a12)
  {
    operator delete(*a12);
  }

  v22 = *(v20 + 72);
  if (v22)
  {
    operator delete(v22);
  }

  a19 = a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  a19 = a14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  v23 = *v20;
  if (*v20)
  {
    *(v19 + 32) = v23;
    operator delete(v23);
  }

  if (*(v19 + 23) < 0)
  {
    operator delete(*v19);
  }

  _Unwind_Resume(a1);
}

void sub_1B50581E8(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B50582ACLL);
}

void sub_1B50581F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  a16 = &a23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  JUMPOUT(0x1B5058210);
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void *std::vector<BOOL>::__assign_with_size[abi:ne200100]<BOOL const*,BOOL const*>(void *result, _BYTE *a2, _BYTE *a3, unint64_t a4)
{
  result[1] = 0;
  if (a4)
  {
    v5 = result;
    if (a4 > result[2] << 6)
    {
      v6 = *result;
      if (*v5)
      {
        operator delete(v6);
        *v5 = 0;
        v5[1] = 0;
        v5[2] = 0;
      }

      std::vector<BOOL>::__vallocate[abi:ne200100](v5, a4);
    }

    return std::vector<BOOL>::__construct_at_end<BOOL const*,BOOL const*>(result, a2, a3, a4);
  }

  return result;
}

void *std::vector<BOOL>::__construct_at_end<BOOL const*,BOOL const*>(void *result, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = result[1];
  v5 = v4 + a4;
  result[1] = v4 + a4;
  if (!v4 || ((v5 - 1) ^ (v4 - 1)) >= 0x40)
  {
    if (v5 >= 0x41)
    {
      v6 = (v5 - 1) >> 6;
    }

    else
    {
      v6 = 0;
    }

    *(*result + 8 * v6) = 0;
  }

  if (a2 != a3)
  {
    v7 = v4 & 0x3F;
    v8 = (*result + 8 * (v4 >> 6));
    do
    {
      v9 = 1 << v7;
      if (*a2 == 1)
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      ++a2;
      v8 += v7 == 63;
      if (v7 == 63)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }
    }

    while (a2 != a3);
  }

  return result;
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>(std::vector<std::wstring> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void quasar::parseBoolField(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(a1 + 23) < 0)
  {
    v3 = *(a1 + 8);
    if (!v3)
    {
      return;
    }

    std::string::__init_copy_ctor_external(&v14, *a1, v3);
  }

  else
  {
    if (!*(a1 + 23))
    {
      return;
    }

    v14 = *a1;
  }

  v4 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = (&v14 + HIBYTE(v14.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v5 = (v14.__r_.__value_.__r.__words[0] + v14.__r_.__value_.__l.__size_);
  }

  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v14;
  }

  else
  {
    v6 = v14.__r_.__value_.__r.__words[0];
  }

  if (v6 != v5)
  {
    do
    {
      v6->__r_.__value_.__s.__data_[0] = __tolower(v6->__r_.__value_.__s.__data_[0]);
      v6 = (v6 + 1);
    }

    while (v6 != v5);
    v4 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  if ((v4 & 0x80) == 0)
  {
    if (v4 != 1)
    {
      if (v4 != 4)
      {
        if (v4 == 5)
        {
          v7 = &v14;
LABEL_24:
          data = v7->__r_.__value_.__l.__data_;
          v9 = v7->__r_.__value_.__s.__data_[4];
          if (data == 1936482662 && v9 == 101)
          {
            v13 = 0;
            std::vector<BOOL>::push_back(a2, &v13);
          }

          goto LABEL_38;
        }

        goto LABEL_38;
      }

      v11 = v14.__r_.__value_.__l.__data_;
LABEL_33:
      if (v11 == 1702195828)
      {
        v13 = 1;
        std::vector<BOOL>::push_back(a2, &v13);
      }

      goto LABEL_38;
    }

    v12 = v14.__r_.__value_.__s.__data_[0];
LABEL_36:
    if (v12 == 42)
    {
      v13 = 1;
      std::vector<BOOL>::push_back(a2, &v13);
      v13 = 0;
      std::vector<BOOL>::push_back(a2, &v13);
    }

    goto LABEL_38;
  }

  switch(v14.__r_.__value_.__l.__size_)
  {
    case 1uLL:
      v12 = *v14.__r_.__value_.__l.__data_;
      goto LABEL_36;
    case 4uLL:
      v11 = *v14.__r_.__value_.__l.__data_;
      goto LABEL_33;
    case 5uLL:
      v7 = v14.__r_.__value_.__r.__words[0];
      goto LABEL_24;
  }

LABEL_38:
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_1B505877C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*v16)
  {
    operator delete(*v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = std::vector<BOOL>::reserve(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, &v13);
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B5058A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

void quasar::RecogRequestFilter::~RecogRequestFilter(quasar::RecogRequestFilter *this)
{
  v5 = (this + 192);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 168);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 144);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 15);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    operator delete(v3);
  }

  v5 = (this + 72);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

__n128 std::allocator_traits<std::allocator<quasar::RecogRequestFilter>>::construct[abi:ne200100]<quasar::RecogRequestFilter,quasar::RecogRequestFilter,0>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v3;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 40) = *(a3 + 5);
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
  *(a3 + 5) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = a3[3];
  *(a2 + 64) = *(a3 + 8);
  *(a3 + 6) = 0;
  *(a3 + 7) = 0;
  *(a3 + 8) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = *(a3 + 72);
  v4 = *(a3 + 12);
  *(a2 + 88) = *(a3 + 11);
  *(a3 + 10) = 0;
  *(a3 + 11) = 0;
  *(a3 + 9) = 0;
  *(a2 + 96) = v4;
  *(a2 + 104) = *(a3 + 104);
  *(a3 + 13) = 0;
  *(a3 + 14) = 0;
  *(a3 + 12) = 0;
  *(a2 + 120) = *(a3 + 15);
  *(a2 + 128) = a3[8];
  *(a3 + 15) = 0;
  *(a3 + 16) = 0;
  *(a3 + 17) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 144) = a3[9];
  *(a2 + 160) = *(a3 + 20);
  *(a3 + 18) = 0;
  *(a3 + 19) = 0;
  *(a3 + 20) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 168) = *(a3 + 168);
  *(a2 + 184) = *(a3 + 23);
  *(a3 + 21) = 0;
  *(a3 + 22) = 0;
  *(a3 + 23) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  result = a3[12];
  *(a2 + 192) = result;
  *(a2 + 208) = *(a3 + 26);
  *(a3 + 24) = 0;
  *(a3 + 25) = 0;
  *(a3 + 26) = 0;
  return result;
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t quasar::RecogRequestFilter::validateFilters(void *a1, uint64_t **a2)
{
  quasar::RecogRequestFilter::getPowerContextOptions(&v65);
  v3 = a1[6];
  v4 = a1 + 7;
  if (v3 == a1 + 7)
  {
    v29 = 1;
  }

  else
  {
    v5 = (a1 + 10);
    v6 = &v66;
    do
    {
      v7 = a1[9];
      if (v7 != v5)
      {
        v40 = *(v3 + 7);
        v34 = v4;
        v35 = a1;
        v33 = v5;
        v38 = v6;
        do
        {
          v8 = 0;
          v64 = 1;
          while (2)
          {
            v9 = 0;
            v36 = v8;
            v41 = *(&v64 + v8);
            v63 = 1;
            do
            {
              v10 = v65;
              if (v65 != v6)
              {
                v11 = *(&v63 + v9);
                v37 = v9;
                while (1)
                {
                  v12 = v65;
                  if (v65 != v6)
                  {
                    break;
                  }

LABEL_29:
                  v23 = v10[1];
                  if (v23)
                  {
                    do
                    {
                      v24 = v23;
                      v23 = *v23;
                    }

                    while (v23);
                  }

                  else
                  {
                    do
                    {
                      v24 = v10[2];
                      v20 = *v24 == v10;
                      v10 = v24;
                    }

                    while (!v20);
                  }

                  v10 = v24;
                  v9 = v37;
                  if (v24 == v6)
                  {
                    goto LABEL_35;
                  }
                }

                while (1)
                {
                  v13 = v65;
                  if (v65 != v6)
                  {
                    break;
                  }

LABEL_23:
                  v21 = v12[1];
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
                      v22 = v12[2];
                      v20 = *v22 == v12;
                      v12 = v22;
                    }

                    while (!v20);
                  }

                  v12 = v22;
                  if (v22 == v6)
                  {
                    goto LABEL_29;
                  }
                }

                while (1)
                {
                  v15 = *a2;
                  v14 = a2[1];
                  if (*a2 == v14)
                  {
                    break;
                  }

                  while (1)
                  {
                    std::string::basic_string[abi:ne200100]<0>(__p, "*");
                    v16 = v7;
                    isMatch = quasar::RecogRequestFilter::isMatch(v15, v40, v7 + 4, __p, v41, v11, (v10 + 4), (v12 + 4), (v13 + 4));
                    if (SBYTE7(v47) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    if (isMatch)
                    {
                      break;
                    }

                    v15 += 27;
                    v7 = v16;
                    if (v15 == v14)
                    {
                      goto LABEL_50;
                    }
                  }

                  v18 = v13[1];
                  if (v18)
                  {
                    do
                    {
                      v19 = v18;
                      v18 = *v18;
                    }

                    while (v18);
                  }

                  else
                  {
                    do
                    {
                      v19 = v13[2];
                      v20 = *v19 == v13;
                      v13 = v19;
                    }

                    while (!v20);
                  }

                  v13 = v19;
                  v6 = v38;
                  v7 = v16;
                  if (v19 == v38)
                  {
                    goto LABEL_23;
                  }
                }

LABEL_50:
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
                  *__p = 0u;
                  kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
                  std::string::basic_string[abi:ne200100]<0>(v42, "*");
                  quasar::RecogRequestFilter::noMatchingComponentErrorMessage(v40, (v7 + 4), v42, v41, v11, (v10 + 4), (v12 + 4), (v13 + 4));
                  if ((v45 & 0x80u) == 0)
                  {
                    v30 = v44;
                  }

                  else
                  {
                    v30 = v44[0];
                  }

                  if ((v45 & 0x80u) == 0)
                  {
                    v31 = v45;
                  }

                  else
                  {
                    v31 = v44[1];
                  }

                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v30, v31);
                  if (v45 < 0)
                  {
                    operator delete(v44[0]);
                  }

                  if (v43 < 0)
                  {
                    operator delete(v42[0]);
                  }

                  quasar::QuasarErrorMessage::~QuasarErrorMessage(__p);
                }

                v29 = 0;
                goto LABEL_64;
              }

LABEL_35:
              ++v9;
            }

            while (v9 != 2);
            v8 = v36 + 1;
            if (v36 != 1)
            {
              continue;
            }

            break;
          }

          v25 = v7[1];
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = v7[2];
              v20 = *v26 == v7;
              v7 = v26;
            }

            while (!v20);
          }

          v7 = v26;
          v5 = v33;
          v4 = v34;
          a1 = v35;
        }

        while (v26 != v33);
      }

      v27 = v3[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v3[2];
          v20 = *v28 == v3;
          v3 = v28;
        }

        while (!v20);
      }

      v29 = 1;
      v3 = v28;
    }

    while (v28 != v4);
  }

LABEL_64:
  std::__tree<std::string>::destroy(&v65, v66);
  return v29;
}

void sub_1B5059114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a31);
  std::__tree<std::string>::destroy(v36 - 112, *(v36 - 104));
  _Unwind_Resume(a1);
}

uint64_t quasar::RecogRequestFilter::isMatch(uint64_t *a1, int a2, const void **a3, std::string *a4, int a5, int a6, std::string *a7, std::string *a8, std::string *a9)
{
  v15 = a1[3];
  v16 = a1[4];
  if (v15 != v16)
  {
    while (*v15 != a2)
    {
      if (++v15 == v16)
      {
        return 0;
      }
    }
  }

  if (v15 == v16 || !quasar::RecogRequestFilter::matchesTask(a1, a3))
  {
    return 0;
  }

  v17 = a1[12];
  v18 = a1[13];
  v19 = a5 ? std::__find_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(v17, 0, v18) : std::__find_BOOL[abi:ne200100]<false,std::vector<BOOL>,true>(v17, 0, v18);
  v21 = (a1[12] + 8 * (a1[13] >> 6)) == v19 && (a1[13] & 0x3F) == v20;
  if (v21 || !quasar::isMatchWithWildcard(a4, a1 + 9, 1))
  {
    return 0;
  }

  v22 = a1[15];
  v23 = a1[16];
  v24 = a6 ? std::__find_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(v22, 0, v23) : std::__find_BOOL[abi:ne200100]<false,std::vector<BOOL>,true>(v22, 0, v23);
  v26 = a1[16];
  if ((a1[15] + 8 * (v26 >> 6)) == v24 && (v26 & 0x3F) == v25)
  {
    return 0;
  }

  if (!quasar::isMatchWithWildcard(a7, a1 + 18, 0) || !quasar::isMatchWithWildcard(a8, a1 + 21, 0))
  {
    return 0;
  }

  return quasar::isMatchWithWildcard(a9, a1 + 24, 0);
}

void *std::__find_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(void *result, unsigned int a2, unint64_t a3)
{
  if (a2)
  {
    v3 = 64 - a2;
    if (v3 >= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = 64 - a2;
    }

    if (((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v4)) & (-1 << a2) & *result) != 0)
    {
      return result;
    }

    if (v3 >= a3)
    {
      result += (a2 + a3) >> 6;
      return result;
    }

    a3 -= v4;
    ++result;
  }

  if (a3 >= 0x40)
  {
    do
    {
      if (*result)
      {
        break;
      }

      ++result;
      a3 -= 64;
    }

    while (a3 > 0x3F);
  }

  return result;
}

void *std::__find_BOOL[abi:ne200100]<false,std::vector<BOOL>,true>(void *result, unsigned int a2, unint64_t a3)
{
  if (a2)
  {
    v3 = 64 - a2;
    if (v3 >= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = 64 - a2;
    }

    if (((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v4)) & (-1 << a2) & ~*result) != 0)
    {
      return result;
    }

    if (v3 >= a3)
    {
      result += (a2 + a3) >> 6;
      return result;
    }

    a3 -= v4;
    ++result;
  }

  if (a3 >= 0x40)
  {
    do
    {
      if (*result != -1)
      {
        break;
      }

      ++result;
      a3 -= 64;
    }

    while (a3 > 0x3F);
  }

  return result;
}

uint64_t boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::parse(uint64_t a1, const std::string *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*(a1 + 184) == 1)
  {
    std::locale::locale(&v37, (a1 + 192));
  }

  else
  {
    MEMORY[0x1B8C850B0](&v37);
  }

  v4 = std::locale::use_facet(&v37, MEMORY[0x1E69E5318]);
  std::locale::~locale(&v37);
  v5 = (v4->__vftable[2].~facet_0)(v4, 37);
  v6 = boost::io::detail::upper_bound_from_fstring<std::string,std::ctype<char>>(a2, v5, v4, *(a1 + 88));
  boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::make_or_reuse_data(a1, v6);
  v36 = 0;
  v7 = std::string::find(a2, v5, 0);
  if (v7 == -1)
  {
    v35 = 0;
    v10 = 0;
    v34 = -1;
    v32 = 0;
    v33 = 1;
  }

  else
  {
    v8 = v7;
    v35 = 0;
    v9 = 0;
    v10 = 0;
    v34 = -1;
    v32 = 0;
    v33 = 1;
    do
    {
      v11 = (a1 + 64);
      if (v9)
      {
        v11 = (*a1 + 120 * v9 - 88);
      }

      v12 = v8 + 1;
      size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = a2->__r_.__value_.__r.__words[0];
      }

      if (v14->__r_.__value_.__s.__data_[v12] == v14->__r_.__value_.__s.__data_[v8])
      {
        std::string::append[abi:ne200100]<std::__wrap_iter<char const*>,0>(v11, (v14 + v10), (v14 + v12));
        v10 = v8 + 2;
        v15 = (v8 + 2);
      }

      else
      {
        if (v8 != v10)
        {
          std::string::append[abi:ne200100]<std::__wrap_iter<char const*>,0>(v11, (v14 + v10), (v14 + v8));
          size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
        }

        if ((size & 0x80) != 0)
        {
          v16 = a2->__r_.__value_.__r.__words[0];
          size = a2->__r_.__value_.__l.__size_;
        }

        else
        {
          v16 = a2;
        }

        v36 = v16 + v12;
        v37.__locale_ = (v16 + size);
        v17 = boost::io::detail::parse_printf_directive<char,std::char_traits<char>,std::allocator<char>,std::__wrap_iter<char const*>,std::ctype<char>>(&v36, &v37, *a1 + 120 * v9, v4, (v8 + 1), *(a1 + 88));
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = a2;
        }

        else
        {
          v18 = a2->__r_.__value_.__r.__words[0];
        }

        v15 = &v36[-v18];
        if (v17)
        {
          boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>::compute_states(*a1 + 120 * v9);
          v19 = *(*a1 + 120 * v9);
          if (v19 != -3)
          {
            if (v19 == -1)
            {
              v33 = 0;
              v20 = v35;
            }

            else
            {
              v20 = v35;
              if (v19 == -2)
              {
                v32 = 1;
              }

              else
              {
                v21 = v34;
                if (v19 > v34)
                {
                  v21 = *(*a1 + 120 * v9);
                }

                v34 = v21;
              }
            }

            v35 = v20 + 1;
            ++v9;
          }

          v10 = v15;
        }

        else
        {
          v10 = v8;
        }
      }

      v8 = std::string::find(a2, v5, v15);
    }

    while (v8 != -1);
    if (v9)
    {
      v22 = (*a1 + 120 * v9 - 88);
      goto LABEL_38;
    }
  }

  v22 = (a1 + 64);
LABEL_38:
  v23 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v24 = (v23 & 0x80u) != 0;
  if ((v23 & 0x80u) != 0)
  {
    v23 = a2->__r_.__value_.__l.__size_;
  }

  if (v24)
  {
    v25 = a2->__r_.__value_.__r.__words[0];
  }

  else
  {
    v25 = a2;
  }

  std::string::append[abi:ne200100]<std::__wrap_iter<char const*>,0>(v22, (v25 + v10), (v25 + v23));
  if ((v33 & 1) == 0)
  {
    if (v34 & 0x80000000) == 0 && (*(a1 + 88))
    {
      v37.__locale_ = &unk_1F2D0C178;
      v38[0] = v34;
      v38[1] = 0;
      boost::throw_exception<boost::io::bad_format_string>(&v37);
    }

    if (v35 < 1)
    {
      v29 = -1;
    }

    else
    {
      v26 = 0;
      v27 = *a1;
      v28 = v35;
      do
      {
        if (*v27 == -1)
        {
          *v27 = v26++;
        }

        v27 += 30;
        --v28;
      }

      while (v28);
      v29 = v26 - 1;
    }

    v34 = v29;
  }

  v30 = (v4->__vftable[2].~facet_0)(v4, 32);
  LODWORD(v37.__locale_) = -1;
  v46 = 0;
  *v38 = 0u;
  *__p = 0u;
  v40 = 0u;
  v41 = 0;
  v42 = 6;
  v43 = v30;
  v45 = 0;
  v44 = 4098;
  v47[1].__locale_ = 0x7FFFFFFFFFFFFFFFLL;
  v48 = 0;
  std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::resize(a1, v35, &v37);
  if (v46 == 1)
  {
    std::locale::~locale(v47);
    v46 = 0;
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v38[0]);
  }

  if (v32)
  {
    *(a1 + 48) |= 4u;
  }

  *(a1 + 56) = v34 + 1;
  *(a1 + 48) = *(a1 + 48) & 0xFFFFFFFE | v33 & 1;
  return a1;
}

uint64_t boost::io::detail::upper_bound_from_fstring<std::string,std::ctype<char>>(const std::string *a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  v8 = std::string::find(a1, a2, 0);
  if (v8 == -1)
  {
    return 0;
  }

  v9 = 0;
  while (1)
  {
    v10 = v8 + 1;
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    v12 = (size & 0x80u) == 0 ? HIBYTE(a1->__r_.__value_.__r.__words[2]) : a1->__r_.__value_.__l.__size_;
    if (v10 >= v12)
    {
      break;
    }

    v13 = a1->__r_.__value_.__r.__words[0];
    if ((size & 0x80u) == 0)
    {
      v14 = a1;
    }

    else
    {
      v14 = a1->__r_.__value_.__r.__words[0];
    }

    v15 = *(v14 + v10);
    if ((size & 0x80) != 0)
    {
      size = a1->__r_.__value_.__l.__size_;
      if (v15 != v13->__r_.__value_.__s.__data_[v8])
      {
LABEL_14:
        v17 = v13 + v10;
        if (v10 != size)
        {
          v18 = v13 + size;
          while (1)
          {
            v19 = *v17;
            if (v19 < 0 || (*(*(a3 + 16) + 4 * v19) & 0x400) == 0)
            {
              break;
            }

            if (++v17 == v18)
            {
              v17 = v18;
              break;
            }
          }
        }

        v16 = &v17[-v14];
        if (&v17[-v14] < v12 && *v17 == a2)
        {
          ++v16;
        }

        v9 = (v9 + 1);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = a1;
      if (v15 != a1->__r_.__value_.__s.__data_[v8])
      {
        goto LABEL_14;
      }
    }

    v16 = v8 + 2;
LABEL_24:
    v8 = std::string::find(a1, a2, v16);
    if (v8 == -1)
    {
      return v9;
    }
  }

  if (a4)
  {
    v21[0] = &unk_1F2D0C178;
    v21[1] = v8;
    v21[2] = v12;
    boost::throw_exception<boost::io::bad_format_string>(v21);
  }

  return (v9 + 1);
}

void boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::make_or_reuse_data(uint64_t a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 184) == 1)
  {
    std::locale::locale(&v8, (a1 + 192));
  }

  else
  {
    MEMORY[0x1B8C850B0](&v8);
  }

  v4 = std::locale::use_facet(&v8, MEMORY[0x1E69E5318]);
  v5 = (v4->__vftable[2].~facet_0)(v4, 32);
  std::locale::~locale(&v8);
  v6 = *(a1 + 8) - *a1;
  if (v6)
  {
    if (0xEEEEEEEEEEEEEEEFLL * (v6 >> 3) >= a2)
    {
      std::vector<BOOL>::resize(a1 + 24, 0, 0);
      if (!a2)
      {
        goto LABEL_22;
      }
    }

    else
    {
      LODWORD(v8.__locale_) = -1;
      v17 = 0;
      *v9 = 0u;
      *__p = 0u;
      v11 = 0u;
      v12 = 0;
      v13 = 6;
      v14 = v5;
      v16 = 0;
      v15 = 4098;
      v19 = 0x7FFFFFFFFFFFFFFFLL;
      v20 = 0;
      std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::resize(a1, a2, &v8);
      if (v17 == 1)
      {
        std::locale::~locale(&v18);
        v17 = 0;
      }

      if (SHIBYTE(v11) < 0)
      {
        operator delete(__p[1]);
      }

      if (SHIBYTE(__p[0]) < 0)
      {
        operator delete(v9[0]);
      }

      std::vector<BOOL>::resize(a1 + 24, 0, 0);
    }

    v7 = 0;
    do
    {
      boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>::reset(*a1 + v7, v5);
      v7 += 120;
      --a2;
    }

    while (a2);
  }

  else
  {
    LODWORD(v8.__locale_) = -1;
    v17 = 0;
    *v9 = 0u;
    *__p = 0u;
    v11 = 0u;
    v12 = 0;
    v13 = 6;
    v14 = v5;
    v16 = 0;
    v15 = 4098;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    v20 = 0;
    std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::assign(a1, a2, &v8);
    if (v17 == 1)
    {
      std::locale::~locale(&v18);
      v17 = 0;
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(v9[0]);
    }
  }

LABEL_22:
  std::string::resize((a1 + 64), 0, 0);
}

void std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::string::append[abi:ne200100]<std::__wrap_iter<char const*>,0>(std::string *this, std::string *__src, std::string *a3)
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

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_1B5059EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::resize(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v3 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__append(a1, v5, a3);
  }

  else if (!v4)
  {
    std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__base_destruct_at_end[abi:ne200100](a1, *a1 + 120 * a2);
  }
}

void sub_1B505A6B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, int a33, __int16 a34, char a35, char a36)
{
  std::locale::~locale((v36 - 96));
  boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(&a10);
  boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(&a34);
  _Unwind_Resume(a1);
}

uint64_t boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 60) == 1)
  {
    boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::clear(a1);
  }

  boost::io::detail::distribute<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(a1, a2);
  v4 = *(a1 + 52);
  v5 = v4 + 1;
  *(a1 + 52) = v4 + 1;
  if (*(a1 + 32))
  {
    v6 = *(a1 + 56);
    if (v5 < v6)
    {
      v7 = *(a1 + 24);
      v8 = v4 + 2;
      do
      {
        if (((*(v7 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
        {
          break;
        }

        ++v5;
        *(a1 + 52) = v8++;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

void quasar::SystemConfig::getFullListOfParams(quasar::SystemConfig *this@<X0>, uint64_t *a2@<X8>)
{
  v58[11] = *MEMORY[0x1E69E9840];
  if (*(this + 388) != 1)
  {
    v57 = 0u;
    memset(v58, 0, 80);
    v55 = 0u;
    memset(v56, 0, sizeof(v56));
    v53 = 0u;
    *v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v50);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v50, "Config file must be loaded before calling this method.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v50);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(this + 149);
  v5 = this + 1200;
  if (v4 != this + 1200)
  {
    do
    {
      boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::basic_format(&v50, "%s : %s");
      v47 = (v4 + 32);
      v48 = boost::io::detail::call_put_head<char,std::char_traits<char>,std::string const>;
      v49 = boost::io::detail::call_put_last<char,std::char_traits<char>,std::string const>;
      v6 = boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(&v50, &v47);
      if (**(v4 + 7))
      {
        v7 = "true";
      }

      else
      {
        v7 = "false";
      }

      v45 = v7;
      v47 = &v45;
      v48 = boost::io::detail::call_put_head<char,std::char_traits<char>,char const* const>;
      v49 = boost::io::detail::call_put_last<char,std::char_traits<char>,char const* const>;
      v8 = boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(v6, &v47);
      boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::str(v8, &__p);
      std::vector<std::string>::push_back[abi:ne200100](a2, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (BYTE8(v57) == 1)
      {
        std::locale::~locale(v58);
        BYTE8(v57) = 0;
      }

      boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(v56);
      if (SBYTE7(v55) < 0)
      {
        operator delete(v54[0]);
      }

      if (*(&v51 + 1))
      {
        operator delete(*(&v51 + 1));
      }

      v47 = &v50;
      std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__destroy_vector::operator()[abi:ne200100](&v47);
      v9 = *(v4 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v4 + 2);
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v4 = v10;
    }

    while (v10 != v5);
  }

  v12 = *(this + 152);
  if (v12 != (this + 1224))
  {
    do
    {
      boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::basic_format(&v50, "%s : %d");
      v47 = (v12 + 32);
      v48 = boost::io::detail::call_put_head<char,std::char_traits<char>,std::string const>;
      v49 = boost::io::detail::call_put_last<char,std::char_traits<char>,std::string const>;
      v13 = boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(&v50, &v47);
      v47 = *(v12 + 7);
      v48 = boost::io::detail::call_put_head<char,std::char_traits<char>,int>;
      v49 = boost::io::detail::call_put_last<char,std::char_traits<char>,int>;
      v14 = boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(v13, &v47);
      boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::str(v14, &__p);
      std::vector<std::string>::push_back[abi:ne200100](a2, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (BYTE8(v57) == 1)
      {
        std::locale::~locale(v58);
        BYTE8(v57) = 0;
      }

      boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(v56);
      if (SBYTE7(v55) < 0)
      {
        operator delete(v54[0]);
      }

      if (*(&v51 + 1))
      {
        operator delete(*(&v51 + 1));
      }

      v47 = &v50;
      std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__destroy_vector::operator()[abi:ne200100](&v47);
      v15 = *(v12 + 1);
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = *(v12 + 2);
          v11 = *v16 == v12;
          v12 = v16;
        }

        while (!v11);
      }

      v12 = v16;
    }

    while (v16 != (this + 1224));
  }

  v17 = *(this + 155);
  if (v17 != (this + 1248))
  {
    do
    {
      boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::basic_format(&v50, "%s : %d");
      v47 = (v17 + 32);
      v48 = boost::io::detail::call_put_head<char,std::char_traits<char>,std::string const>;
      v49 = boost::io::detail::call_put_last<char,std::char_traits<char>,std::string const>;
      v18 = boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(&v50, &v47);
      v47 = *(v17 + 7);
      v48 = boost::io::detail::call_put_head<char,std::char_traits<char>,unsigned int>;
      v49 = boost::io::detail::call_put_last<char,std::char_traits<char>,unsigned int>;
      v19 = boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(v18, &v47);
      boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::str(v19, &__p);
      std::vector<std::string>::push_back[abi:ne200100](a2, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (BYTE8(v57) == 1)
      {
        std::locale::~locale(v58);
        BYTE8(v57) = 0;
      }

      boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(v56);
      if (SBYTE7(v55) < 0)
      {
        operator delete(v54[0]);
      }

      if (*(&v51 + 1))
      {
        operator delete(*(&v51 + 1));
      }

      v47 = &v50;
      std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__destroy_vector::operator()[abi:ne200100](&v47);
      v20 = *(v17 + 1);
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
          v21 = *(v17 + 2);
          v11 = *v21 == v17;
          v17 = v21;
        }

        while (!v11);
      }

      v17 = v21;
    }

    while (v21 != (this + 1248));
  }

  v22 = *(this + 158);
  if (v22 != (this + 1272))
  {
    do
    {
      boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::basic_format(&v50, "%s : %d");
      v47 = (v22 + 32);
      v48 = boost::io::detail::call_put_head<char,std::char_traits<char>,std::string const>;
      v49 = boost::io::detail::call_put_last<char,std::char_traits<char>,std::string const>;
      v23 = boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(&v50, &v47);
      v47 = *(v22 + 7);
      v48 = boost::io::detail::call_put_head<char,std::char_traits<char>,long long>;
      v49 = boost::io::detail::call_put_last<char,std::char_traits<char>,long long>;
      v24 = boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(v23, &v47);
      boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::str(v24, &__p);
      std::vector<std::string>::push_back[abi:ne200100](a2, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (BYTE8(v57) == 1)
      {
        std::locale::~locale(v58);
        BYTE8(v57) = 0;
      }

      boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(v56);
      if (SBYTE7(v55) < 0)
      {
        operator delete(v54[0]);
      }

      if (*(&v51 + 1))
      {
        operator delete(*(&v51 + 1));
      }

      v47 = &v50;
      std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__destroy_vector::operator()[abi:ne200100](&v47);
      v25 = *(v22 + 1);
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = *(v22 + 2);
          v11 = *v26 == v22;
          v22 = v26;
        }

        while (!v11);
      }

      v22 = v26;
    }

    while (v26 != (this + 1272));
  }

  v27 = *(this + 161);
  if (v27 != (this + 1296))
  {
    do
    {
      boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::basic_format(&v50, "%s : %f");
      v47 = (v27 + 32);
      v48 = boost::io::detail::call_put_head<char,std::char_traits<char>,std::string const>;
      v49 = boost::io::detail::call_put_last<char,std::char_traits<char>,std::string const>;
      v28 = boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(&v50, &v47);
      v47 = *(v27 + 7);
      v48 = boost::io::detail::call_put_head<char,std::char_traits<char>,float>;
      v49 = boost::io::detail::call_put_last<char,std::char_traits<char>,float>;
      v29 = boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(v28, &v47);
      boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::str(v29, &__p);
      std::vector<std::string>::push_back[abi:ne200100](a2, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (BYTE8(v57) == 1)
      {
        std::locale::~locale(v58);
        BYTE8(v57) = 0;
      }

      boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(v56);
      if (SBYTE7(v55) < 0)
      {
        operator delete(v54[0]);
      }

      if (*(&v51 + 1))
      {
        operator delete(*(&v51 + 1));
      }

      v47 = &v50;
      std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__destroy_vector::operator()[abi:ne200100](&v47);
      v30 = *(v27 + 1);
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = *(v27 + 2);
          v11 = *v31 == v27;
          v27 = v31;
        }

        while (!v11);
      }

      v27 = v31;
    }

    while (v31 != (this + 1296));
  }

  v32 = *(this + 164);
  if (v32 != (this + 1320))
  {
    do
    {
      boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::basic_format(&v50, "%s : %f");
      v47 = (v32 + 32);
      v48 = boost::io::detail::call_put_head<char,std::char_traits<char>,std::string const>;
      v49 = boost::io::detail::call_put_last<char,std::char_traits<char>,std::string const>;
      v33 = boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(&v50, &v47);
      v47 = *(v32 + 7);
      v48 = boost::io::detail::call_put_head<char,std::char_traits<char>,double>;
      v49 = boost::io::detail::call_put_last<char,std::char_traits<char>,double>;
      v34 = boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(v33, &v47);
      boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::str(v34, &__p);
      std::vector<std::string>::push_back[abi:ne200100](a2, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (BYTE8(v57) == 1)
      {
        std::locale::~locale(v58);
        BYTE8(v57) = 0;
      }

      boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(v56);
      if (SBYTE7(v55) < 0)
      {
        operator delete(v54[0]);
      }

      if (*(&v51 + 1))
      {
        operator delete(*(&v51 + 1));
      }

      v47 = &v50;
      std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__destroy_vector::operator()[abi:ne200100](&v47);
      v35 = *(v32 + 1);
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = *(v32 + 2);
          v11 = *v36 == v32;
          v32 = v36;
        }

        while (!v11);
      }

      v32 = v36;
    }

    while (v36 != (this + 1320));
  }

  v37 = *(this + 167);
  if (v37 != (this + 1344))
  {
    do
    {
      boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::basic_format(&v50, "%s : %s");
      v47 = (v37 + 32);
      v48 = boost::io::detail::call_put_head<char,std::char_traits<char>,std::string const>;
      v49 = boost::io::detail::call_put_last<char,std::char_traits<char>,std::string const>;
      v38 = boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(&v50, &v47);
      v47 = *(v37 + 7);
      v48 = boost::io::detail::call_put_head<char,std::char_traits<char>,std::string>;
      v49 = boost::io::detail::call_put_last<char,std::char_traits<char>,std::string>;
      v39 = boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(v38, &v47);
      boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::str(v39, &__p);
      std::vector<std::string>::push_back[abi:ne200100](a2, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (BYTE8(v57) == 1)
      {
        std::locale::~locale(v58);
        BYTE8(v57) = 0;
      }

      boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(v56);
      if (SBYTE7(v55) < 0)
      {
        operator delete(v54[0]);
      }

      if (*(&v51 + 1))
      {
        operator delete(*(&v51 + 1));
      }

      v47 = &v50;
      std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__destroy_vector::operator()[abi:ne200100](&v47);
      v40 = *(v37 + 1);
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
          v41 = *(v37 + 2);
          v11 = *v41 == v37;
          v37 = v41;
        }

        while (!v11);
      }

      v37 = v41;
    }

    while (v41 != (this + 1344));
  }

  v42 = a2[1];
  v43 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v42 - *a2) >> 3));
  if (v42 == *a2)
  {
    v44 = 0;
  }

  else
  {
    v44 = v43;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(*a2, v42, &v47, v44, 1);
}

void sub_1B505B128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *boost::io::detail::call_put_last<char,std::char_traits<char>,std::string const>(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, a2, v3);
}

void boost::io::detail::mk_str<char,std::char_traits<char>,std::allocator<char>>(std::string *a1, const std::string::value_type *a2, std::string::size_type a3, int64_t a4, std::string::value_type a5, char a6, int a7, int a8)
{
  std::string::resize(a1, 0, 0);
  if (a4 >= 1 && a4 > a3)
  {
    v16 = a4 - a3 - (a7 != 0);
    std::string::reserve(a1, a4);
    if (a8)
    {
      v17 = v16 / 2;
      v16 -= v16 / 2;
      if (!v16)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if ((a6 & 0x20) != 0)
      {
        v17 = a4 - a3 - (a7 != 0);
        if (!a7)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v17 = 0;
      if (!v16)
      {
LABEL_18:
        if (!a7)
        {
LABEL_20:
          if (a3)
          {
            std::string::append(a1, a2, a3);
          }

          if (v17)
          {

            std::string::append(a1, v17, a5);
          }

          return;
        }

LABEL_19:
        std::string::append(a1, 1uLL, a7);
        goto LABEL_20;
      }
    }

    std::string::append(a1, v16, a5);
    goto LABEL_18;
  }

  if (a7)
  {
    v18 = a3 + 1;
  }

  else
  {
    v18 = a3;
  }

  std::string::reserve(a1, v18);
  if (a7)
  {
    std::string::append(a1, 1uLL, a7);
  }

  if (a3)
  {

    std::string::append(a1, a2, a3);
  }
}

uint64_t boost::detail::sp_counted_base::destroy(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

atomic_uint *boost::detail::sp_counted_base::release(atomic_uint *this)
{
  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    v1 = this;
    v2 = this + 3;
    this = (*(*this + 16))(this);
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      v3 = *(*v1 + 24);

      return v3(v1);
    }
  }

  return this;
}

void boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::str(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 8) == *a1)
  {
    if (*(a1 + 87) < 0)
    {
      v21 = *(a1 + 64);
      v22 = *(a1 + 72);

      std::string::__init_copy_ctor_external(a2, v21, v22);
    }

    else
    {
      *&a2->__r_.__value_.__l.__data_ = *(a1 + 64);
      a2->__r_.__value_.__r.__words[2] = *(a1 + 80);
    }
  }

  else
  {
    v4 = *(a1 + 52);
    v5 = *(a1 + 56);
    if (v4 < v5 && (*(a1 + 88) & 2) != 0)
    {
      v23[0] = &unk_1F2D0C500;
      v23[1] = v4;
      v23[2] = v5;
      boost::throw_exception<boost::io::too_few_args>(v23);
    }

    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    v6 = boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::size(a1);
    std::string::reserve(a2, v6);
    v7 = *(a1 + 87);
    if (v7 >= 0)
    {
      v8 = (a1 + 64);
    }

    else
    {
      v8 = *(a1 + 64);
    }

    if (v7 >= 0)
    {
      v9 = *(a1 + 87);
    }

    else
    {
      v9 = *(a1 + 72);
    }

    std::string::append(a2, v8, v9);
    v10 = *a1;
    if (*(a1 + 8) != *a1)
    {
      v11 = 0;
      v12 = 40;
      do
      {
        v13 = *(v10 + v12 - 9);
        if (v13 >= 0)
        {
          v14 = (v10 + v12 - 32);
        }

        else
        {
          v14 = *(v10 + v12 - 32);
        }

        if (v13 >= 0)
        {
          v15 = *(v10 + v12 - 9);
        }

        else
        {
          v15 = *(v10 + v12 - 24);
        }

        std::string::append(a2, v14, v15);
        if (*(v10 + v12 - 40) == -2)
        {
          v16 = *(v10 + v12 + 16);
          size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
          if ((size & 0x8000000000000000) != 0)
          {
            size = a2->__r_.__value_.__l.__size_;
          }

          if (v16 > size)
          {
            std::string::append(a2, v16 - size, *(v10 + v12 + 32));
          }
        }

        v18 = *(v10 + v12 + 15);
        if (v18 >= 0)
        {
          v19 = (v10 + v12 - 8);
        }

        else
        {
          v19 = *(v10 + v12 - 8);
        }

        if (v18 >= 0)
        {
          v20 = *(v10 + v12 + 15);
        }

        else
        {
          v20 = *(v10 + v12);
        }

        std::string::append(a2, v19, v20);
        ++v11;
        v10 = *a1;
        v12 += 120;
      }

      while (v11 < 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 3));
    }

    *(a1 + 60) = 1;
  }
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

uint64_t boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(uint64_t a1)
{
  *a1 = &unk_1F2D0BFF0;
  if (*(a1 + 72) == 1)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 57) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>>::destroy[abi:ne200100]<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>,0>(a1, i))
  {
    i -= 120;
  }

  *(a1 + 8) = a2;
}

void std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(std::string *this, __int128 *a2)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::__function::__value_func<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_1B505BD88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 __p, int a10, __int16 a11, char a12, char a13, uint64_t a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, __int128 a29)
{
  if (a13 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,BOOL *>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

uint64_t std::__tree<std::__value_type<std::string,BOOL *>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,BOOL *>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL *>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void boost::algorithm::trim_right_if<std::string,boost::algorithm::detail::is_classifiedF>(std::string *a1, const std::locale *a2)
{
  v3 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = a1->__r_.__value_.__r.__words[0];
  }

  if (v3 >= 0)
  {
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v6 = &v4[size];
  locale = a2->__locale_;
  std::locale::locale(&v15, a2 + 1);
  v16 = locale;
  std::locale::locale(&v17, &v15);
  v7 = MEMORY[0x1E69E5318];
  while (size)
  {
    v8 = size;
    v9 = v4[size - 1];
    v10 = std::locale::use_facet(&v17, v7);
    if ((v9 & 0x80) != 0)
    {
      v4 = v6;
      break;
    }

    --v6;
    v11 = *(&v10[1].~facet + v9);
    size = v8 - 1;
    if ((v11 & v16) == 0)
    {
      v4 += v8;
      break;
    }
  }

  std::locale::~locale(&v17);
  v12 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v12 & 0x80u) == 0)
  {
    v13 = a1;
  }

  else
  {
    v13 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v12 = a1->__r_.__value_.__l.__size_;
  }

  std::string::erase(a1, v4 - v13, &v13[v12] - v4);
  std::locale::~locale(&v15);
}

void quasar::splitAndTrimNoEmpty(const std::string *__s, char *a2, uint64_t a3)
{
  v6 = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
  if (v6 < 0)
  {
    size = __s->__r_.__value_.__l.__size_;
    if (!size)
    {
      return;
    }

    v7 = __s->__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s->__r_.__value_.__s + 23))
    {
      return;
    }

    v7 = __s;
    size = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
  }

  v9 = a2[23];
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = a2[23];
  }

  else
  {
    v11 = *(a2 + 1);
  }

  if (v11)
  {
    if (size >= v11)
    {
      v32 = v7 + size;
      v33 = *v10;
      v34 = v7;
      do
      {
        v35 = size - v11;
        if (v35 == -1)
        {
          break;
        }

        v36 = memchr(v34, v33, v35 + 1);
        if (!v36)
        {
          break;
        }

        v37 = v36;
        if (!memcmp(v36, v10, v11))
        {
          v12 = 0;
          if (v37 != v32)
          {
            v13 = v37 - v7;
            if (v13 != -1)
            {
              goto LABEL_16;
            }
          }

          goto LABEL_51;
        }

        v34 = (v37 + 1);
        size = v32 - (v37 + 1);
      }

      while (size >= v11);
    }

    v12 = 0;
  }

  else
  {
    v13 = 0;
LABEL_16:
    v12 = 0;
    do
    {
      std::string::basic_string(&__p, __s, v12, v13 - v12, &v39);
      quasar::trim(&__p);
      v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v14 = __p.__r_.__value_.__l.__size_;
      }

      if (v14)
      {
        v15 = *(a3 + 24);
        if (!v15)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v15 + 48))(v15, &__p);
      }

      v16 = a2[23];
      v17 = HIBYTE(__s->__r_.__value_.__r.__words[2]);
      if ((v17 & 0x80u) == 0)
      {
        v18 = __s;
      }

      else
      {
        v18 = __s->__r_.__value_.__r.__words[0];
      }

      if ((v17 & 0x80u) != 0)
      {
        v17 = __s->__r_.__value_.__l.__size_;
      }

      if (v16 >= 0)
      {
        v19 = a2[23];
      }

      else
      {
        v19 = *(a2 + 1);
      }

      v12 = v19 + v13;
      if (v16 >= 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a2;
      }

      v21 = v17 - v12;
      if (v17 >= v12)
      {
        v13 += v19;
        if (v19)
        {
          v22 = v18 + v17;
          if (v21 >= v19)
          {
            v24 = v18 + v12;
            v25 = *v20;
            do
            {
              v26 = v21 - v19;
              if (v26 == -1)
              {
                break;
              }

              v27 = memchr(v24, v25, v26 + 1);
              if (!v27)
              {
                break;
              }

              v23 = v27;
              if (!memcmp(v27, v20, v19))
              {
                goto LABEL_38;
              }

              v24 = v23 + 1;
              v21 = v22 - (v23 + 1);
            }

            while (v21 >= v19);
          }

          v23 = v22;
LABEL_38:
          if (v23 == v22)
          {
            v13 = -1;
          }

          else
          {
            v13 = v23 - v18;
          }
        }
      }

      else
      {
        v13 = -1;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    while (v13 != -1);
    LOBYTE(v6) = *(&__s->__r_.__value_.__s + 23);
  }

LABEL_51:
  if ((v6 & 0x80u) == 0)
  {
    v28 = v6;
  }

  else
  {
    v28 = __s->__r_.__value_.__l.__size_;
  }

  std::string::basic_string(&__p, __s, v12, v28, &v39);
  quasar::trim(&__p);
  v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v29 = __p.__r_.__value_.__l.__size_;
  }

  if (v29)
  {
    v31 = *(a3 + 24);
    if (!v31)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v31 + 48))(v31, &__p);
    v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  if (v30 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B505C548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::splitAndTrimNoEmpty@<X0>(const std::string *a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return quasar::splitAndTrimNoEmpty(a1, a2, a3);
}

void sub_1B505C5A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::vector<quasar::RecogRequestFilter>::reserve(void *result, unint64_t a2)
{
  if (0x84BDA12F684BDA13 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x12F684BDA12F685)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::RecogRequestFilter>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B505C898(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::RecogRequestFilter>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::RecogRequestFilter>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x12F684BDA12F685)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<quasar::RecogRequestFilter>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 216;
    quasar::RecogRequestFilter::~RecogRequestFilter((i - 216));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void quasar::RecogRequestFilter::getPowerContextOptions(void *a1@<X8>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::string::basic_string[abi:ne200100]<0>(__p, "unconstrained");
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "reduced");
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "avoid");
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B505CA1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::string>::destroy(v15, *(v15 + 8));
  _Unwind_Resume(a1);
}

BOOL quasar::RecogRequestFilter::matchesTask(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  if (v2 != v3)
  {
    v4 = *(a2 + 23);
    if (v4 >= 0)
    {
      v5 = *(a2 + 23);
    }

    else
    {
      v5 = a2[1];
    }

    if (v4 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    while (1)
    {
      v7 = *(v2 + 23);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v2 + 8);
      }

      if (v7 == v5)
      {
        v9 = v8 >= 0 ? v2 : *v2;
        if (!memcmp(v9, v6, v5))
        {
          break;
        }
      }

      v2 += 24;
      if (v2 == v3)
      {
        v2 = v3;
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

uint64_t quasar::isMatchWithWildcard(std::string *__str, uint64_t *a2, char a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    return 0;
  }

  while (1)
  {
    v7 = *(v3 + 23);
    v8 = *(v3 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v9 = *(v3 + 23);
    }

    else
    {
      v9 = *(v3 + 8);
    }

    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    v11 = size;
    if ((size & 0x80u) != 0)
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    if (v9 == size)
    {
      v12 = (v7 & 0x80u) == 0 ? v3 : *v3;
      v13 = v11 >= 0 ? __str : __str->__r_.__value_.__r.__words[0];
      if (!memcmp(v12, v13, v9))
      {
        return 1;
      }
    }

    if ((v7 & 0x80) != 0)
    {
      if (v8 != 1)
      {
        v15 = v8;
        if ((a3 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      v14 = *v3;
    }

    else
    {
      v14 = v3;
      if (v7 != 1)
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_24:
        v15 = v7;
        goto LABEL_26;
      }
    }

    if (*v14 == 42)
    {
      return 1;
    }

    if ((a3 & 1) == 0)
    {
      goto LABEL_31;
    }

    v15 = v8;
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_24;
    }

LABEL_26:
    if ((v7 & 0x80) != 0)
    {
      v16 = *(*v3 + v15 - 1);
    }

    else
    {
      v16 = *(v3 + v15 - 1);
      v8 = v7;
    }

    if (v16 == 42 && !std::string::compare(v3, 0, v8 - 1, __str, 0, v8 - 1))
    {
      return 1;
    }

LABEL_31:
    v3 += 24;
    if (v3 == v4)
    {
      return 0;
    }
  }
}

uint64_t boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::basic_format(uint64_t a1, char *a2)
{
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 45) = 0u;
  *(a1 + 88) = -1;
  *(a1 + 96) = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1B8C850B0](a1 + 104);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 96) = &unk_1F2D0BFF0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 172) = 24;
  *(a1 + 184) = 0;
  if (a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, a2);
    boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::parse(a1, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return a1;
}

void sub_1B505CD20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 184) == 1)
  {
    std::locale::~locale((v15 + 192));
    *(v15 + 184) = 0;
  }

  boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(v16);
  if (*(v15 + 87) < 0)
  {
    operator delete(*v17);
  }

  v19 = *(v15 + 24);
  if (v19)
  {
    operator delete(v19);
  }

  __p = v15;
  std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::assign(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) < a2)
  {
    std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__vdeallocate(a1);
    if (a2 <= 0x222222222222222)
    {
      v7 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
      if (v7 <= a2)
      {
        v7 = a2;
      }

      if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
      {
        v8 = 0x222222222222222;
      }

      else
      {
        v8 = v7;
      }

      std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v9 = (a1[1] - v6) >> 3;
  v10 = 0xEEEEEEEEEEEEEEEFLL * v9;
  if (0xEEEEEEEEEEEEEEEFLL * v9 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0xEEEEEEEEEEEEEEEFLL * v9;
  }

  for (; v11; --v11)
  {
    *v6 = *a3;
    std::string::operator=((v6 + 8), (a3 + 8));
    std::string::operator=((v6 + 32), (a3 + 32));
    v12 = *(a3 + 72);
    *(v6 + 56) = *(a3 + 56);
    *(v6 + 72) = v12;
    boost::optional_detail::optional_base<std::locale>::assign(v6 + 88, a3 + 88);
    v13 = *(a3 + 104);
    *(v6 + 112) = *(a3 + 112);
    *(v6 + 104) = v13;
    v6 += 120;
  }

  if (a2 <= v10)
  {
    v25 = *a1 + 120 * a2;

    std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__base_destruct_at_end[abi:ne200100](a1, v25);
  }

  else
  {
    v14 = 0;
    v15 = a1[1];
    v16 = v15 + 120 * (a2 - v10);
    v17 = 120 * a2 - 120 * v10;
    do
    {
      *(v15 + v14) = *a3;
      v18 = (v15 + v14 + 8);
      if (*(a3 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(v18, *(a3 + 8), *(a3 + 16));
      }

      else
      {
        v19 = *(a3 + 8);
        *(v15 + v14 + 24) = *(a3 + 24);
        *&v18->__r_.__value_.__l.__data_ = v19;
      }

      v20 = v15 + v14;
      if (*(a3 + 55) < 0)
      {
        std::string::__init_copy_ctor_external((v20 + 32), *(a3 + 32), *(a3 + 40));
      }

      else
      {
        v21 = *(a3 + 32);
        *(v20 + 48) = *(a3 + 48);
        *(v20 + 32) = v21;
      }

      v22 = v15 + v14;
      v23 = *(a3 + 56);
      *(v22 + 72) = *(a3 + 72);
      *(v22 + 56) = v23;
      *(v22 + 88) = 0;
      if (*(a3 + 88) == 1)
      {
        std::locale::locale((v22 + 96), (a3 + 96));
        *(v22 + 88) = 1;
      }

      v24 = *(a3 + 104);
      *(v22 + 112) = *(a3 + 112);
      *(v22 + 104) = v24;
      v14 += 120;
    }

    while (v17 != v14);
    a1[1] = v16;
  }
}

void std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t boost::io::detail::parse_printf_directive<char,std::char_traits<char>,std::allocator<char>,std::__wrap_iter<char const*>,std::ctype<char>>(char **a1, char **a2, uint64_t a3, void *a4, char *a5, uint64_t a6)
{
  *a3 = -1;
  v8 = *a1;
  v9 = &a5[*a2 - *a1];
  if (*a2 <= *a1)
  {
    if (a6)
    {
      v66 = &unk_1F2D0C178;
      v67 = a5;
      v68 = v9;
      boost::throw_exception<boost::io::bad_format_string>(&v66);
    }

    return 0;
  }

  v14 = *v8;
  v15 = (*(*a4 + 56))(a4, 124);
  v16 = *a1;
  if (v14 == v15)
  {
    *a1 = ++v16;
    if (v16 >= *a2)
    {
      if (a6)
      {
        v66 = &unk_1F2D0C178;
        v67 = &v16[a5 - v8];
        v68 = v9;
        boost::throw_exception<boost::io::bad_format_string>(&v66);
      }

      return 0;
    }
  }

  v64 = v14;
  v17 = *v16;
  v18 = (*(*a4 + 56))(a4, 48);
  v19 = *a1;
  if (v17 != v18)
  {
    v20 = *v19;
    if ((v20 & 0x8000000000000000) == 0 && (*(a4[2] + 4 * v20) & 0x400) != 0)
    {
      v65 = 0;
      v21 = boost::io::detail::str2int<int,std::__wrap_iter<char const*>,std::ctype<char>>(a1, a2, &v65, a4);
      *a1 = v21;
      v22 = *a2 > v21;
      if (*a2 <= v21)
      {
        if (a6)
        {
          v66 = &unk_1F2D0C178;
          v67 = &v21[a5 - v8];
          v68 = v9;
          boost::throw_exception<boost::io::bad_format_string>(&v66);
        }

        return v22;
      }

      v62 = v9;
      v23 = *v21;
      if (v23 == (*(*a4 + 56))(a4, 37))
      {
        *a3 = v65 - 1;
        v24 = (*a1 + 1);
        *a1 = v24;
        if (v64 == v15)
        {
          boost::io::detail::maybe_throw_exception(a6, a5 - v8 + v24, v62);
        }

        return v22;
      }

      v25 = **a1;
      if (v25 == (*(*a4 + 56))(a4, 36))
      {
        *a3 = v65 - 1;
        v19 = *a1 + 1;
        *a1 = v19;
        v9 = v62;
        goto LABEL_40;
      }

      *(a3 + 56) = v65;
      *a3 = -1;
      v32 = *a1;
      goto LABEL_52;
    }
  }

  while (1)
  {
LABEL_40:
    if (v19 == *a2)
    {
      if (a6)
      {
        v66 = &unk_1F2D0C178;
        v67 = &v19[a5 - v8];
        v68 = v9;
        boost::throw_exception<boost::io::bad_format_string>(&v66);
      }

      return 1;
    }

    v26 = (*(*a4 + 72))(a4, *v19, 0);
    if (v26 <= 0x2C)
    {
      if (v26 > 38)
      {
        if (v26 == 39)
        {
          goto LABEL_39;
        }

        if (v26 != 43)
        {
          goto LABEL_44;
        }

        v27 = *(a3 + 76) | 0x800;
        goto LABEL_36;
      }

      if (v26 != 32)
      {
        if (v26 != 35)
        {
          goto LABEL_44;
        }

        v27 = *(a3 + 76) | 0x600;
        goto LABEL_36;
      }

      v28 = *(a3 + 112) | 2;
      goto LABEL_38;
    }

    if (v26 > 60)
    {
      break;
    }

    if (v26 == 45)
    {
      v27 = *(a3 + 76) | 0x20;
      goto LABEL_36;
    }

    if (v26 != 48)
    {
      goto LABEL_44;
    }

    v28 = *(a3 + 112) | 1;
LABEL_38:
    *(a3 + 112) = v28;
LABEL_39:
    v19 = *a1 + 1;
    *a1 = v19;
  }

  if (v26 == 61)
  {
    v28 = *(a3 + 112) | 4;
    goto LABEL_38;
  }

  if (v26 == 95)
  {
    v27 = *(a3 + 76) | 0x10;
LABEL_36:
    *(a3 + 76) = v27;
    goto LABEL_39;
  }

LABEL_44:
  v62 = v9;
  v30 = **a1;
  v31 = (*(*a4 + 56))(a4, 42);
  v32 = *a1;
  if (v30 == v31)
  {
    ++v32;
    goto LABEL_46;
  }

  if (v32 != *a2)
  {
    v33 = *v32;
    if ((v33 & 0x8000000000000000) == 0 && (*(a4[2] + 4 * v33) & 0x400) != 0)
    {
      v32 = boost::io::detail::str2int<long,std::__wrap_iter<char const*>,std::ctype<char>>(a1, a2, (a3 + 56), a4);
LABEL_46:
      *a1 = v32;
    }
  }

LABEL_52:
  if (v32 >= *a2)
  {
    if (a6)
    {
      v66 = &unk_1F2D0C178;
      v67 = &v32[a5 - v8];
      v68 = v62;
      boost::throw_exception<boost::io::bad_format_string>(&v66);
    }

    return 1;
  }

  v34 = *v32;
  v35 = (*(*a4 + 56))(a4, 46);
  v36 = *a1;
  if (v34 == v35)
  {
    *a1 = ++v36;
    if (v36 == *a2)
    {
      goto LABEL_65;
    }

    v37 = *v36;
    v38 = (*(*a4 + 56))(a4, 42);
    v36 = *a1;
    if (v37 == v38)
    {
      v39 = 0;
      *a1 = ++v36;
      goto LABEL_60;
    }

    if (v36 == *a2 || (v41 = *v36, v41 < 0))
    {
LABEL_65:
      v40 = v62;
    }

    else
    {
      v40 = v62;
      if ((*(a4[2] + 4 * v41) & 0x400) != 0)
      {
        v36 = boost::io::detail::str2int<long,std::__wrap_iter<char const*>,std::ctype<char>>(a1, a2, (a3 + 64), a4);
        *a1 = v36;
        v39 = 1;
        goto LABEL_67;
      }
    }

    v39 = 0;
    *(a3 + 64) = 0;
  }

  else
  {
    v39 = 0;
LABEL_60:
    v40 = v62;
  }

LABEL_67:
  if (v36 == *a2)
  {
    goto LABEL_87;
  }

  v63 = v39;
  v42 = 0;
  while (1)
  {
    v43 = (*(*a4 + 72))(a4, *v36, 0);
    if (v43 <= 0x35)
    {
      switch(v43)
      {
        case '2':
          if (v42 != 51)
          {
            goto LABEL_89;
          }

          break;
        case '3':
          if (v42 != 73)
          {
            goto LABEL_89;
          }

          v42 = 51;
          goto LABEL_86;
        case '4':
          if (v42 != 54)
          {
LABEL_89:
            v44 = &(*a1)[a5 - v8];
            v45 = a6;
            v46 = v40;
LABEL_90:
            boost::io::detail::maybe_throw_exception(v45, v44, v46);
            return 1;
          }

          break;
        default:
          goto LABEL_91;
      }

      v42 = 0;
      goto LABEL_86;
    }

    if (v43 - 73 <= 0x31)
    {
      if (((1 << (v43 - 73)) & 0x2400A80000008) != 0)
      {
        goto LABEL_86;
      }

      if (v43 == 73)
      {
        v42 = 73;
        goto LABEL_86;
      }
    }

    if (v43 != 54)
    {
      break;
    }

    if (v42 != 73)
    {
      goto LABEL_89;
    }

    v42 = 54;
LABEL_86:
    v36 = *a1 + 1;
    *a1 = v36;
    if (v36 == *a2)
    {
      goto LABEL_87;
    }
  }

LABEL_91:
  v36 = *a1;
  v47 = v42 == 73 || v42 == 0;
  v48 = !v47;
  if (v36 >= *a2 || v48)
  {
LABEL_87:
    if (a6)
    {
      v66 = &unk_1F2D0C178;
      v67 = &v36[a5 - v8];
      v68 = v40;
      boost::throw_exception<boost::io::bad_format_string>(&v66);
    }

    return 1;
  }

  v49 = v40;
  if (v64 != v15 || (v50 = *v36, v51 = (*(*a4 + 56))(a4, 124), v36 = *a1, v50 != v51))
  {
    switch((*(*a4 + 72))(a4, *v36, 0))
    {
      case 'A':
        v57 = *(a3 + 76) | 0x4000;
        *(a3 + 76) = v57;
        goto LABEL_123;
      case 'C':
      case 'c':
        *(a3 + 104) = 1;
        goto LABEL_129;
      case 'E':
        v58 = *(a3 + 76) | 0x4000;
        *(a3 + 76) = v58;
        goto LABEL_127;
      case 'F':
        v56 = *(a3 + 76) | 0x4000;
        *(a3 + 76) = v56;
        goto LABEL_120;
      case 'G':
        v53 = *(a3 + 76) | 0x4000;
        goto LABEL_128;
      case 'S':
      case 's':
        if (v63)
        {
          *(a3 + 104) = *(a3 + 64);
        }

        *(a3 + 64) = 6;
        goto LABEL_129;
      case 'T':
        v54 = *a1 + 1;
        *a1 = v54;
        if (v54 >= *a2)
        {
          boost::io::detail::maybe_throw_exception(a6, &v54[a5 - v8], v49);
          return 0;
        }

        *(a3 + 72) = *v54;
LABEL_111:
        *(a3 + 112) |= 8u;
        v55 = -2;
LABEL_125:
        *a3 = v55;
LABEL_129:
        v59 = *a1 + 1;
        *a1 = v59;
        if (v64 != v15)
        {
          return 1;
        }

        if (v59 != *a2)
        {
          v60 = *v59;
          v61 = (*(*a4 + 56))(a4, 124);
          v59 = *a1;
          if (v60 == v61)
          {
            v52 = v59 + 1;
            goto LABEL_133;
          }
        }

        v44 = &v59[a5 - v8];
        v45 = a6;
        v46 = v49;
        break;
      case 'X':
        *(a3 + 76) |= 0x4000u;
        goto LABEL_114;
      case 'a':
        v57 = *(a3 + 76);
LABEL_123:
        v53 = v57 & 0xFFFFFEB1 | 0x104;
        goto LABEL_128;
      case 'b':
        v53 = *(a3 + 76) | 1;
        goto LABEL_128;
      case 'd':
      case 'g':
      case 'i':
      case 'u':
        goto LABEL_129;
      case 'e':
        v58 = *(a3 + 76);
LABEL_127:
        v53 = v58 | 0x100;
        goto LABEL_128;
      case 'f':
        v56 = *(a3 + 76);
LABEL_120:
        v53 = v56 | 4;
        goto LABEL_128;
      case 'n':
        v55 = -3;
        goto LABEL_125;
      case 'o':
        v53 = *(a3 + 76) & 0xFFFFFFB5 | 0x40;
        goto LABEL_128;
      case 'p':
      case 'x':
LABEL_114:
        v53 = *(a3 + 76) & 0xFFFFFFB5 | 8;
LABEL_128:
        *(a3 + 76) = v53;
        goto LABEL_129;
      case 't':
        *(a3 + 72) = (*(*a4 + 56))(a4, 32);
        goto LABEL_111;
      default:
        boost::io::detail::maybe_throw_exception(a6, &(*a1)[a5 - v8], v49);
        goto LABEL_129;
    }

    goto LABEL_90;
  }

  v52 = v36 + 1;
LABEL_133:
  *a1 = v52;
  return 1;
}

uint64_t boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>::compute_states(uint64_t result)
{
  v1 = *(result + 112);
  if (v1)
  {
    v2 = *(result + 76);
    if ((v2 & 0x20) != 0)
    {
      v1 &= ~1u;
      *(result + 112) = v1;
      if ((v1 & 2) == 0)
      {
        return result;
      }

      goto LABEL_5;
    }

    v1 &= ~2u;
    *(result + 112) = v1;
    *(result + 72) = 48;
    *(result + 76) = v2 & 0xFFFFFF4F | 0x10;
  }

  if ((v1 & 2) == 0)
  {
    return result;
  }

LABEL_5:
  if ((*(result + 77) & 8) != 0)
  {
    *(result + 112) = v1 & 0xFFFFFFFD;
  }

  return result;
}

void boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::basic_oaltstringstream(void *a1, uint64_t a2)
{
  a1[9] = 0;
  a1[3] = MEMORY[0x1E69E5590] + 16;
  a1[1] = a2;
  boost::detail::shared_count::shared_count<boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>> *,boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::No_Op>(a1 + 2);
}

void sub_1B505DDCC(_Unwind_Exception *a1)
{
  boost::detail::shared_count::~shared_count((v1 + 16));
  MEMORY[0x1B8C85200](v2);
  _Unwind_Resume(a1);
}

uint64_t *boost::io::detail::distribute<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(uint64_t *result, uint64_t a2)
{
  v2 = *(result + 13);
  v3 = *(result + 14);
  if (v2 >= v3)
  {
    if ((result[11] & 4) != 0)
    {
      v8[0] = &unk_1F2D0C278;
      v8[1] = v2;
      v8[2] = v3;
      boost::throw_exception<boost::io::too_many_args>(v8);
    }
  }

  else
  {
    v5 = *result;
    v4 = result[1];
    if (v4 != *result)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        if (*(v5 + v6) == *(result + 13))
        {
          boost::io::detail::put<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(a2, v5 + v6, v5 + v6 + 8, (result + 12));
        }

        ++v7;
        v6 += 120;
      }

      while (v7 < 0xEEEEEEEEEEEEEEEFLL * ((v4 - v5) >> 3));
    }
  }

  return result;
}

uint64_t boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::overflow(uint64_t a1, uint64_t a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  v2 = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(a1 + 56);
    if (v4 < v5)
    {
      *(a1 + 48) = v4 + 1;
      *v4 = a2;
      return v2;
    }

    if ((*(a1 + 76) & 0x10) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = *(a1 + 16);
    v6 = v5 - v7;
  }

  else
  {
    if ((*(a1 + 76) & 0x10) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v6 = 0;
    v7 = *(a1 + 16);
  }

  v8 = v6 >> 1;
  if (v6 >> 1 <= 0x100)
  {
    v8 = 256;
  }

  do
  {
    if (!__CFADD__(v8, v6))
    {
      operator new();
    }

    v9 = v8 >= 2;
    v8 >>= 1;
  }

  while (v9);
  memmove(0, v7, v6);
  if (*(a1 + 72) == 1)
  {
    operator delete(v7);
  }

  *(a1 + 72) = 1;
  v10 = *(a1 + 64) - v7;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48) - v11;
  v13 = v11 - v7;
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  *(a1 + 56) = v6;
  *(a1 + 64) = v10;
  v16 = (v13 + v12);
  *(a1 + 40) = v13;
  *(a1 + 48) = v16;
  if ((*(a1 + 76) & 8) != 0)
  {
    v18 = v14 - v15;
    v17 = v16 + 1;
    *(a1 + 16) = 0;
    *(a1 + 24) = v18;
  }

  else
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v17 = 0;
  }

  *(a1 + 32) = v17;
  if (v16 == v6)
  {
    (*(*a1 + 104))(a1, v2);
  }

  else
  {
    *(a1 + 48) = v16 + 1;
    *v16 = v2;
  }

  return v2;
}

void *boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::clear_buffer(void *result)
{
  v1 = result;
  v16 = *MEMORY[0x1E69E9840];
  v2 = result[6];
  if (v2)
  {
    v3 = v2 == result[5];
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    result = (*(*result + 40))(v6, result, &v7, 16);
  }

  v4 = v1[3];
  if (v4)
  {
    v5 = v4 == v1[2];
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    return (*(*v1 + 40))(v6, v1, &v7, 8);
  }

  return result;
}

void boost::detail::shared_count::~shared_count(atomic_uint **this)
{
  v1 = *this;
  if (v1)
  {
    boost::detail::sp_counted_base::release(v1);
  }
}

double boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::seekpos@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 128);
  v5 = a1[6];
  if (v5 && a1[8] < v5)
  {
    a1[8] = v5;
  }

  if (v4 == -1)
  {
    goto LABEL_13;
  }

  if ((a3 & 8) != 0)
  {
    v6 = a1[3];
    if (v6)
    {
      if ((v4 & 0x8000000000000000) == 0)
      {
        v7 = a1[2];
        if (v4 <= a1[8] - v7)
        {
          v8 = v6 + v4 - v6 + v7;
          a1[3] = v8;
          if ((a3 & 0x10) == 0 || !v5)
          {
            goto LABEL_20;
          }

          v9 = v8 - v5;
LABEL_19:
          a1[6] = v5 + v9;
LABEL_20:
          v10 = v4;
          goto LABEL_14;
        }
      }

      goto LABEL_13;
    }
  }

  if ((a3 & 0x10) == 0)
  {
LABEL_13:
    v10 = -1;
    goto LABEL_14;
  }

  v10 = -1;
  if (v5 && (v4 & 0x8000000000000000) == 0)
  {
    v12 = a1[2];
    if (v4 <= a1[8] - v12)
    {
      v9 = v4 - v5 + v12;
      goto LABEL_19;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 128) = v10;
  return result;
}

uint64_t boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::size(uint64_t *a1)
{
  result = *(a1 + 87);
  if (result < 0)
  {
    result = a1[9];
  }

  v3 = *a1;
  v4 = a1[1] - *a1;
  if (v4)
  {
    v5 = 0xEEEEEEEEEEEEEEEFLL * (v4 >> 3);
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = (v3 + 56);
    do
    {
      v7 = *(v6 - 25);
      if (v7 < 0)
      {
        v7 = *(v6 - 5);
      }

      v8 = v7 + result;
      if (*(v6 - 14) == -2 && v8 <= *v6)
      {
        v8 = *v6;
      }

      v9 = *(v6 - 1);
      if (v9 < 0)
      {
        v9 = *(v6 - 2);
      }

      result = v9 + v8;
      v6 += 15;
      --v5;
    }

    while (v5);
  }

  return result;
}

void std::allocator<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::construct[abi:ne200100]<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::string const&,std::string const&,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(int a1, std::string *this, __int128 *a3, uint64_t a4, std::string::size_type *a5)
{
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  v9 = 1;
  quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::RegionalLmPlug(this, a3, &__p, a5);
  if (v9 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B505E47C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(a1, a2);
  return a1;
}

void sub_1B505E4D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::SystemConfig::ToInt(char *a1)
{
  v1 = a1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  __endptr = 0;
  result = strtol(a1, &__endptr, 0);
  v3 = v1;
  if (v1[23] < 0)
  {
    v3 = *v1;
  }

  if (v3 == __endptr)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v5 = std::string::append(&v7, "");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v9 = v5->__r_.__value_.__r.__words[2];
    v8 = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    quasar::PTree::Error::Error(exception, &v8);
  }

  return result;
}

void sub_1B505E810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

std::string *std::pair<std::string,quasar::PTree>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = *a3;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v6 = *(a3 + 8);
    this[2].__r_.__value_.__r.__words[0] = *(a3 + 24);
    *&this[1].__r_.__value_.__r.__words[1] = v6;
  }

  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  this[3].__r_.__value_.__r.__words[0] = 0;
  std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(&this[2].__r_.__value_.__l.__size_, *(a3 + 32), *(a3 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 40) - *(a3 + 32)) >> 3));
  this[3].__r_.__value_.__s.__data_[8] = *(a3 + 56);
  return this;
}

void sub_1B505E92C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::splitAndTrim(std::string *__str@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v4 = __str;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v7 = v6;
  size = __str->__r_.__value_.__l.__size_;
  if ((v6 & 0x80u) == 0)
  {
    v9 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    __str = __str->__r_.__value_.__r.__words[0];
    v9 = size;
  }

  v10 = a2[23];
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = a2[23];
  }

  else
  {
    v12 = *(a2 + 1);
  }

  if (v12)
  {
    if (v9 < v12)
    {
      v13 = 0;
      goto LABEL_51;
    }

    v33 = __str;
    v34 = size;
    v27 = __str + v9;
    v28 = *v11;
    do
    {
      v29 = v9 - v12;
      if (v29 == -1)
      {
        break;
      }

      v30 = memchr(__str, v28, v29 + 1);
      if (!v30)
      {
        break;
      }

      v31 = v30;
      if (!memcmp(v30, v11, v12))
      {
        v13 = 0;
        if (v31 != v27)
        {
          size = v34;
          v14 = v31 - v33;
          if (v14 == -1)
          {
            goto LABEL_51;
          }

          goto LABEL_14;
        }

LABEL_50:
        size = v34;
        goto LABEL_51;
      }

      __str = (v31 + 1);
      v9 = v27 - (v31 + 1);
    }

    while (v9 >= v12);
    v13 = 0;
    goto LABEL_50;
  }

  v14 = 0;
LABEL_14:
  v13 = 0;
  do
  {
    std::string::basic_string(&v35, v4, v13, v14 - v13, &v36);
    quasar::trim(&v35);
    std::vector<std::string>::push_back[abi:ne200100](a3, &v35);
    v15 = a2[23];
    v16 = HIBYTE(v4->__r_.__value_.__r.__words[2]);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v4;
    }

    else
    {
      v17 = v4->__r_.__value_.__r.__words[0];
    }

    if ((v16 & 0x80u) != 0)
    {
      v16 = v4->__r_.__value_.__l.__size_;
    }

    if (v15 >= 0)
    {
      v18 = a2[23];
    }

    else
    {
      v18 = *(a2 + 1);
    }

    v13 = v18 + v14;
    if (v15 >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    v20 = v16 - v13;
    if (v16 >= v13)
    {
      v14 += v18;
      if (v18)
      {
        v21 = v17 + v16;
        if (v20 >= v18)
        {
          v23 = v17 + v13;
          v24 = *v19;
          do
          {
            v25 = v20 - v18;
            if (v25 == -1)
            {
              break;
            }

            v26 = memchr(v23, v24, v25 + 1);
            if (!v26)
            {
              break;
            }

            v22 = v26;
            if (!memcmp(v26, v19, v18))
            {
              goto LABEL_31;
            }

            v23 = v22 + 1;
            v20 = v21 - (v22 + 1);
          }

          while (v20 >= v18);
        }

        v22 = v21;
LABEL_31:
        if (v22 == v21)
        {
          v14 = -1;
        }

        else
        {
          v14 = v22 - v17;
        }
      }
    }

    else
    {
      v14 = -1;
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }
  }

  while (v14 != -1);
  v6 = HIBYTE(v4->__r_.__value_.__r.__words[2]);
  size = v4->__r_.__value_.__l.__size_;
  v7 = HIBYTE(v4->__r_.__value_.__r.__words[2]);
LABEL_51:
  if (v7 >= 0)
  {
    v32 = v6;
  }

  else
  {
    v32 = size;
  }

  std::string::basic_string(&v35, v4, v13, v32, &v36);
  quasar::trim(&v35);
  std::vector<std::string>::push_back[abi:ne200100](a3, &v35);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }
}

void quasar::trim(std::string *a1)
{
  MEMORY[0x1B8C850B0](&v11);
  v12 = 0x4000;
  std::locale::locale(&v13, &v11);
  LODWORD(v16.__locale_) = v12;
  std::locale::locale(&v17, &v13);
  boost::algorithm::trim_right_if<std::string,boost::algorithm::detail::is_classifiedF>(a1, &v16);
  std::locale::~locale(&v17);
  v14 = v12;
  std::locale::locale(&v15, &v13);
  v2 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1->__r_.__value_.__r.__words[0];
  }

  if (v2 >= 0)
  {
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v18 = v14;
  std::locale::locale(&v19, &v15);
  if (size)
  {
    v5 = v3 + size;
    v6 = MEMORY[0x1E69E5318];
    v7 = v3;
    while (1)
    {
      v8 = v7->__r_.__value_.__s.__data_[0];
      v9 = std::locale::use_facet(&v19, v6);
      if ((v8 & 0x80) != 0 || (*(&v9[1].~facet + v8) & v18) == 0)
      {
        break;
      }

      v7 = (v7 + 1);
      if (!--size)
      {
        v7 = v5;
        break;
      }
    }
  }

  else
  {
    v7 = v3;
  }

  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = a1->__r_.__value_.__r.__words[0];
  }

  std::string::erase(a1, v3 - v10, v7 - v3);
  std::locale::~locale(&v19);
  std::locale::~locale(&v15);
  std::locale::~locale(&v13);
  std::locale::~locale(&v11);
}

void sub_1B505ED70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(v12 + 1);
  std::locale::~locale(v10);
  std::locale::~locale(v11 + 1);
  std::locale::~locale(&a10);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::RecogRequestFilter>,quasar::RecogRequestFilter*>(uint64_t a1, quasar::RecogRequestFilter *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    v9 = a2;
    do
    {
      std::allocator_traits<std::allocator<quasar::RecogRequestFilter>>::construct[abi:ne200100]<quasar::RecogRequestFilter,quasar::RecogRequestFilter,0>(a1, a4, v9);
      v9 = (v9 + 216);
      a4 += 216;
      v8 -= 216;
    }

    while (v9 != a3);
    while (v6 != a3)
    {
      quasar::RecogRequestFilter::~RecogRequestFilter(v6);
      v6 = (v6 + 216);
    }
  }
}

void sub_1B505EE30(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 216);
    do
    {
      quasar::RecogRequestFilter::~RecogRequestFilter(v4);
      v4 = (v5 - 216);
      v2 += 216;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void boost::io::detail::stream_format_state<char,std::char_traits<char>>::apply_on(uint64_t a1, std::ios_base *this, const std::locale *a3)
{
  if (*(a1 + 32) == 1)
  {
    std::ios_base::getloc(this);
    std::ios_base::imbue(this, (a1 + 40));
    std::locale::~locale(&v16);
    rdbuf = this->__rdbuf_;
    if (rdbuf)
    {
      (*(rdbuf->__locale_ + 2))(this->__rdbuf_, a1 + 40);
      std::locale::locale(&v15, rdbuf + 1);
      std::locale::operator=(rdbuf + 1, (a1 + 40));
      std::locale::~locale(&v15);
    }

    v6 = &v14;
  }

  else
  {
    if (!a3)
    {
      goto LABEL_10;
    }

    std::ios_base::getloc(this);
    std::ios_base::imbue(this, a3);
    std::locale::~locale(&v16);
    v8 = this->__rdbuf_;
    if (v8)
    {
      (*(v8->__locale_ + 2))(this->__rdbuf_, a3);
      std::locale::locale(&v15, v8 + 1);
      std::locale::operator=(v8 + 1, a3);
      std::locale::~locale(&v15);
    }

    v6 = &v13;
  }

  std::locale::~locale(v6);
LABEL_10:
  if (*a1 != -1)
  {
    this->__width_ = *a1;
  }

  v9 = *(a1 + 8);
  if (v9 != -1)
  {
    this->__precision_ = v9;
  }

  v10 = *(a1 + 16);
  if (*(a1 + 16))
  {
    if (this[1].__fmtflags_ == -1)
    {
      std::ios_base::getloc(this);
      v11 = std::locale::use_facet(&v16, MEMORY[0x1E69E5318]);
      v12 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v16);
      this[1].__fmtflags_ = v12;
    }

    this[1].__fmtflags_ = v10;
  }

  this->__fmtflags_ = *(a1 + 20);
  std::ios_base::clear(this, *(a1 + 24));
  this->__exceptions_ = *(a1 + 28);
  std::ios_base::clear(this, this->__rdstate_);
}

void *boost::io::detail::call_put_last<char,std::char_traits<char>,char const* const>(void *a1, const char **a2)
{
  v3 = *a2;
  v4 = strlen(*a2);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
}

void std::allocator_traits<std::allocator<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>>::destroy[abi:ne200100]<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 88) == 1)
  {
    std::locale::~locale((a2 + 96));
    *(a2 + 88) = 0;
  }

  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

void std::vector<quasar::RecogRequestFilter>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        quasar::RecogRequestFilter::~RecogRequestFilter((v4 - 216));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1B505F784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 __p, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27)
{
  quasar::SpeechRecognizerActiveConfiguration::~SpeechRecognizerActiveConfiguration(&__p);
  v30 = *(v27 - 136);
  *(v27 - 136) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  if (a2 == 3)
  {
    v31 = __cxa_begin_catch(a1);
    if (quasar::gLogLevel >= 1)
    {
      v32 = v31;
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
      __p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Error reading JSON config file: ", 32);
      v34 = (*(*v32 + 16))(v32);
      v35 = strlen(v34);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v34, v35);
      std::endl[abi:ne200100]<char,std::char_traits<char>>(v36);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&__p);
    }
  }

  else
  {
    if (a2 != 2)
    {
      if (a2 != 1)
      {
        _Unwind_Resume(a1);
      }

      __cxa_begin_catch(a1);
      __cxa_end_catch();
LABEL_14:
      JUMPOUT(0x1B505F748);
    }

    v37 = __cxa_begin_catch(a1);
    if (quasar::gLogLevel >= 1)
    {
      v38 = v37;
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
      __p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Error reading JSON config file: ", 32);
      v40 = (*(*v38 + 16))(v38);
      v41 = strlen(v40);
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, v40, v41);
      std::endl[abi:ne200100]<char,std::char_traits<char>>(v42);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&__p);
    }
  }

  __cxa_end_catch();
  goto LABEL_14;
}

uint64_t std::allocator<quasar::SpeechRecognizerModelLoader>::construct[abi:ne200100]<quasar::SpeechRecognizerModelLoader,std::shared_ptr<quasar::SpeechRecognizerConfig> &,std::unique_ptr<quasar::SpeechRecognizerModelLoader::Factory>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  *a4 = 0;
  v6 = v4;
  quasar::SpeechRecognizerModelLoader::SpeechRecognizerModelLoader(a2, a3, &v6);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_1B505FB4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    std::allocator<quasar::SpeechRecognizerModelLoader>::construct[abi:ne200100]<quasar::SpeechRecognizerModelLoader,std::shared_ptr<quasar::SpeechRecognizerConfig> &,std::unique_ptr<quasar::SpeechRecognizerModelLoader::Factory>>(a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<quasar::SpeechRecognizerModelLoader>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<quasar::SpeechRecognizerConfig> &,std::unique_ptr<quasar::SpeechRecognizerModelLoader::Factory>,std::allocator<quasar::SpeechRecognizerModelLoader>,0>(void *a1, uint64_t a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D1FC28;
  std::allocator<quasar::SpeechRecognizerModelLoader>::construct[abi:ne200100]<quasar::SpeechRecognizerModelLoader,std::shared_ptr<quasar::SpeechRecognizerConfig> &,std::unique_ptr<quasar::SpeechRecognizerModelLoader::Factory>>(&v5, (a1 + 3), a2, a3);
  return a1;
}

uint64_t std::unordered_set<std::string>::unordered_set(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, a2);
      a2 += 3;
      v5 -= 24;
    }

    while (v5);
  }

  return a1;
}

quasar::MuxHelper *quasar::MuxHelper::MuxHelper(quasar::MuxHelper *this)
{
  v32 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v4, "\\room-first");
  std::string::basic_string[abi:ne200100]<0>(v5, "\\room-middle");
  std::string::basic_string[abi:ne200100]<0>(v6, "\\room-last");
  std::string::basic_string[abi:ne200100]<0>(v7, "\\house-first");
  std::string::basic_string[abi:ne200100]<0>(v8, "\\house-middle");
  std::string::basic_string[abi:ne200100]<0>(v9, "\\house-last");
  std::string::basic_string[abi:ne200100]<0>(v10, "\\zone-first");
  std::string::basic_string[abi:ne200100]<0>(v11, "\\zone-middle");
  std::string::basic_string[abi:ne200100]<0>(v12, "\\zone-last");
  std::string::basic_string[abi:ne200100]<0>(v13, "\\group-first");
  std::string::basic_string[abi:ne200100]<0>(v14, "\\group-middle");
  std::string::basic_string[abi:ne200100]<0>(v15, "\\group-last");
  std::string::basic_string[abi:ne200100]<0>(v16, "\\device-first");
  std::string::basic_string[abi:ne200100]<0>(v17, "\\device-middle");
  std::string::basic_string[abi:ne200100]<0>(v18, "\\device-last");
  std::string::basic_string[abi:ne200100]<0>(v19, "\\scene-first");
  std::string::basic_string[abi:ne200100]<0>(v20, "\\scene-middle");
  std::string::basic_string[abi:ne200100]<0>(v21, "\\scene-last");
  std::string::basic_string[abi:ne200100]<0>(v22, "\\deviceNames-first");
  std::string::basic_string[abi:ne200100]<0>(v23, "\\accessory-first");
  std::string::basic_string[abi:ne200100]<0>(v24, "\\artist-first");
  std::string::basic_string[abi:ne200100]<0>(v25, "\\appMusicArtistName-first");
  std::string::basic_string[abi:ne200100]<0>(v26, "\\custom_words-first");
  std::string::basic_string[abi:ne200100]<0>(v27, "\\playlist-first");
  std::string::basic_string[abi:ne200100]<0>(v28, "\\podcastTitle-first");
  std::string::basic_string[abi:ne200100]<0>(v29, "\\appPlaylistTitle-first");
  std::string::basic_string[abi:ne200100]<0>(v30, "\\appAudiobookTitle-first");
  std::string::basic_string[abi:ne200100]<0>(v31, "\\appShowTitle-first");
  std::unordered_set<std::string>::unordered_set(this, v4, 28);
  v2 = 84;
  do
  {
    if (SHIBYTE(v4[v2 - 1]) < 0)
    {
      operator delete(v4[v2 - 3]);
    }

    v2 -= 3;
  }

  while (v2 * 8);
  std::string::basic_string[abi:ne200100]<0>(this + 40, "•|\\(|\\)||\\[|\\]|\\{|\\}|®|,|;|\\?|\\!|\\\");
  *(this + 8) = 0;
  return this;
}

void quasar::MuxHelper::registerParams(quasar::MuxHelper *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "shared-tags");
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  quasar::SystemConfig::Register<std::unordered_set<std::string>>(a2, v6, this, __p, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "sanitizer-special-chars-pattern");
  std::string::basic_string[abi:ne200100]<0>(__p, "Override pattern for TextSanitizer mSpecialChars.");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 40, __p, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B50600E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SystemConfig::Register<std::unordered_set<std::string>>(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9)
{
  quasar::SystemConfig::Register(a1, a2, a3);
  quasar::result_handler::Range::Range(&v21, a6, a7);
  v15 = (a1 + 824);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v22 = __p;
  v16 = std::__tree<std::__value_type<std::string,quasar::SystemConfig::Version>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::SystemConfig::Version>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::SystemConfig::Version>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 1480, __p);
  *(v16 + 56) = v21;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  quasar::result_handler::Range::Range(&v21, a8, a9);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v22 = __p;
  v17 = std::__tree<std::__value_type<std::string,quasar::SystemConfig::Version>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::SystemConfig::Version>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::SystemConfig::Version>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 1504, __p);
  *(v17 + 56) = v21;
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (!a5)
    {
      return;
    }
  }

  else if (!a5)
  {
    return;
  }

  __p[0] = (a1 + 824);
  v18 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1528, (a1 + 824));
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15, a2, __p);
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(v18 + 56, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B506028C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::Geography::addRegionContext(uint64_t a1, std::string *a2, kaldi::quasar::Vocab *this, uint64_t a4)
{
  kaldi::quasar::Vocab::OOvWord(this, &v62);
  quasar::GeoMemories::rememberLastRegionId(a2 + 2, &v62, (a1 + 4));
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  kaldi::quasar::Vocab::OOvWord(this, &v61);
  size = a2[3].__r_.__value_.__l.__size_;
  v8 = a2[3].__r_.__value_.__r.__words[2];
  if (size >= v8)
  {
    data = a2[3].__r_.__value_.__l.__data_;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((size - data) >> 3);
    v13 = v12 + 1;
    if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((v8 - data) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v13;
    }

    *&v46 = a2 + 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&a2[3], v15);
    }

    v16 = 24 * v12;
    v17 = *&v61.__r_.__value_.__l.__data_;
    *(v16 + 16) = *(&v61.__r_.__value_.__l + 2);
    *v16 = v17;
    memset(&v61, 0, sizeof(v61));
    v18 = 24 * v12 + 24;
    v19 = a2[3].__r_.__value_.__l.__data_;
    v20 = a2[3].__r_.__value_.__l.__size_ - v19;
    v21 = 24 * v12 - v20;
    memcpy((v16 - v20), v19, v20);
    v22 = a2[3].__r_.__value_.__l.__data_;
    a2[3].__r_.__value_.__r.__words[0] = v21;
    a2[3].__r_.__value_.__l.__size_ = v18;
    v23 = a2[3].__r_.__value_.__r.__words[2];
    a2[3].__r_.__value_.__r.__words[2] = 0;
    *&v45 = v22;
    *(&v45 + 1) = v23;
    *&v44 = v22;
    *(&v44 + 1) = v22;
    std::__split_buffer<std::string>::~__split_buffer(&v44);
    v24 = SHIBYTE(v61.__r_.__value_.__r.__words[2]);
    a2[3].__r_.__value_.__l.__size_ = v18;
    if (v24 < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v10 = *&v61.__r_.__value_.__l.__data_;
    *(size + 16) = *(&v61.__r_.__value_.__l + 2);
    *size = v10;
    a2[3].__r_.__value_.__l.__size_ = size + 24;
  }

  RegionalFstLmMap = quasar::GeoRegion::getRegionalFstLmMap(this);
  v26 = RegionalFstLmMap + 1;
  v27 = *RegionalFstLmMap;
  if (*RegionalFstLmMap != (RegionalFstLmMap + 1))
  {
    do
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>> const&>(a2, v27 + 4);
      if ((v28 & 1) != 0 && quasar::gLogLevel >= 5)
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
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v44);
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "Geo ClassLM template=", 21);
        v30 = *(v27 + 55);
        if (v30 >= 0)
        {
          v31 = (v27 + 4);
        }

        else
        {
          v31 = v27[4];
        }

        if (v30 >= 0)
        {
          v32 = *(v27 + 55);
        }

        else
        {
          v32 = v27[5];
        }

        v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v31, v32);
        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " assigned to FST from geoRegion=", 32);
        kaldi::quasar::Vocab::OOvWord(this, &v61);
        if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &v61;
        }

        else
        {
          v35 = v61.__r_.__value_.__r.__words[0];
        }

        if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v36 = v61.__r_.__value_.__l.__size_;
        }

        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v35, v36);
        v38 = *(a4 + 23);
        if (v38 >= 0)
        {
          v39 = a4;
        }

        else
        {
          v39 = *a4;
        }

        if (v38 >= 0)
        {
          v40 = *(a4 + 23);
        }

        else
        {
          v40 = *(a4 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v39, v40);
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v44);
      }

      v41 = v27[1];
      if (v41)
      {
        do
        {
          v42 = v41;
          v41 = *v41;
        }

        while (v41);
      }

      else
      {
        do
        {
          v42 = v27[2];
          v43 = *v42 == v27;
          v27 = v42;
        }

        while (!v43);
      }

      v27 = v42;
    }

    while (v42 != v26);
  }
}

void sub_1B50607D8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::EndOfAudioPadder::Compute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a2;
  v8 = *(a1 + 8);
  v9 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v9;
  v14[2] = *(a2 + 32);
  v10 = (**v8)(v8, v14, a3, a4, a5, a6);
  if ((v10 & 1) == 0 && (*(a1 + 36) & 1) == 0)
  {
    v11 = kaldi::MatrixBase<float>::NumRows(v7);
    kaldi::Matrix<float>::Resize(v7, (*(a1 + 32) + v11), *(*(a1 + 16) + 8), 2, 0);
    if (*(a1 + 32) >= 1)
    {
      v12 = 0;
      do
      {
        kaldi::MatrixBase<float>::CopyRowFromVec(v7, *(a1 + 16), v11 + v12++);
      }

      while (v12 < *(a1 + 32));
    }
  }

  return v10;
}

uint64_t kaldi::CuMatrixBase<float>::ApplySoftMaxPerRow(uint64_t a1, uint64_t a2)
{
  kaldi::MatrixBase<float>::CopyFromMat<float>((a1 + 8), (a2 + 8), 111);
  result = kaldi::MatrixBase<float>::NumRows(a1 + 8);
  if (result >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(a1 + 8) + 4 * *(a1 + 24) * v4;
      v6 = kaldi::MatrixBase<float>::NumCols(a1 + 8);
      v10 = 0;
      v11 = 0;
      v8 = v5;
      v9 = v6;
      kaldi::VectorBase<float>::ApplySoftMax(&v8, v7);
      ++v4;
      result = kaldi::MatrixBase<float>::NumRows(a1 + 8);
    }

    while (v4 < result);
  }

  return result;
}