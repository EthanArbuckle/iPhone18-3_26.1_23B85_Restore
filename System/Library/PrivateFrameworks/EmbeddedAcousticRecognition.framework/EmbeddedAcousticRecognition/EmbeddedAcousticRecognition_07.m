void sub_1B5090478(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5090544);
}

void sub_1B50904A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *v72 = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x250]);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  v75 = v71[3];
  if (v75)
  {
    v71[4] = v75;
    operator delete(v75);
  }

  v76 = v71[6];
  if (v76)
  {
    v71[7] = v76;
    operator delete(v76);
  }

  v77 = v71[16];
  if (v77)
  {
    v71[17] = v77;
    operator delete(v77);
  }

  __p = &a68;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a71;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__function::__value_func<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::~__value_func[abi:ne200100](v73 - 152);
  __p = &STACK[0x218];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void quasar::OnlineLatticeBiglmLmeFasterDecoder::finishInit(quasar::OnlineLatticeBiglmLmeFasterDecoder *this)
{
  v3[11] = *MEMORY[0x1E69E9840];
  quasar::OnlineLatticeBiglmFasterDecoder::finishInit(this);
  std::string::basic_string[abi:ne200100]<0>(v3, ",");
  quasar::splitStringSimple(this + 2904, v3, __p);
}

void sub_1B5091260(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B509134CLL);
}

void sub_1B50912F8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  JUMPOUT(0x1B509133CLL);
}

void sub_1B5091338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  *(v48 - 192) = &a48;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v48 - 192));
  _Unwind_Resume(a1);
}

void fst::SplitToVector(char *__s1, char *__s2, uint64_t a3, int a4)
{
  if (__s1)
  {
    v7 = __s1;
    do
    {
      v8 = strpbrk(v7, __s2);
      v9 = v8;
      if (v8)
      {
        *v8 = 0;
      }

      if (!a4 || *v7)
      {
        v11 = *(a3 + 8);
        v10 = *(a3 + 16);
        if (v11 >= v10)
        {
          v13 = (v11 - *a3) >> 3;
          if ((v13 + 1) >> 61)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v14 = v10 - *a3;
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
            std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a3, v16);
          }

          v17 = (8 * v13);
          *v17 = v7;
          v12 = 8 * v13 + 8;
          v18 = *(a3 + 8) - *a3;
          v19 = v17 - v18;
          memcpy(v17 - v18, *a3, v18);
          v20 = *a3;
          *a3 = v19;
          *(a3 + 8) = v12;
          *(a3 + 16) = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v11 = v7;
          v12 = (v11 + 1);
        }

        *(a3 + 8) = v12;
      }

      v7 = v9 + 1;
    }

    while (v9);
  }
}

void fst::SymbolTableImpl::ReadText()
{
  MEMORY[0x1EEE9AC00]();
  v0 = *MEMORY[0x1E69E9840];
  operator new();
}

uint64_t fst::SymbolTableImpl::AddSymbol(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  if (a3 == -1)
  {
    return -1;
  }

  v6 = fst::internal::DenseSymbolMap::InsertOrFind((a1 + 40), a2);
  if (v7)
  {
    if (((*(a1 + 56) - *(a1 + 48)) >> 3) - 1 == a3 && *(a1 + 32) == a3)
    {
      *(a1 + 32) = a3 + 1;
      v8 = a3;
    }

    else
    {
      v11 = *(a1 + 128);
      v10 = *(a1 + 136);
      if (v11 >= v10)
      {
        v24 = *(a1 + 120);
        v25 = v11 - v24;
        v26 = (v11 - v24) >> 3;
        v27 = v26 + 1;
        if ((v26 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v28 = v10 - v24;
        if (v28 >> 2 > v27)
        {
          v27 = v28 >> 2;
        }

        v29 = v28 >= 0x7FFFFFFFFFFFFFF8;
        v30 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v29)
        {
          v30 = v27;
        }

        if (v30)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1 + 120, v30);
        }

        v31 = (v11 - v24) >> 3;
        v32 = (8 * v26);
        v33 = (8 * v26 - 8 * v31);
        *v32 = a3;
        v12 = v32 + 1;
        memcpy(v33, v24, v25);
        v34 = *(a1 + 120);
        *(a1 + 120) = v33;
        *(a1 + 128) = v12;
        *(a1 + 136) = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        *v11 = a3;
        v12 = v11 + 1;
      }

      *(a1 + 128) = v12;
      v35 = ((*(a1 + 56) - *(a1 + 48)) >> 3) - 1;
      __p[0] = &v39;
      std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1 + 144, &v39)[5] = v35;
      v8 = v39;
    }

    if (v8 >= *(a1 + 24))
    {
      *(a1 + 24) = v8 + 1;
    }

    *(a1 + 172) = 0;
  }

  else
  {
    NthKey = fst::SymbolTableImpl::GetNthKey(a1, v6);
    if (NthKey == a3)
    {
      return a3;
    }

    else
    {
      v8 = NthKey;
      if (FLAGS_v >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
        v13 = fst::LogMessage::LogMessage(&v40, __p);
        v14 = fst::cerr(v13);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "SymbolTable::AddSymbol: symbol = ", 33);
        v16 = *(a2 + 23);
        v17 = v16 >= 0 ? a2 : *a2;
        v18 = v16 >= 0 ? *(a2 + 23) : *(a2 + 8);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " already in symbol_map_ with key = ", 35);
        v21 = MEMORY[0x1B8C84C60](v20, v8);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " but supplied new key = ", 24);
        v23 = MEMORY[0x1B8C84C60](v22, a3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " (ignoring new key)", 19);
        fst::LogMessage::~LogMessage(&v40);
        if (v38 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return v8;
}

void sub_1B5091C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::internal::DenseSymbolMap::InsertOrFind(fst::internal::DenseSymbolMap *this, uint64_t a2)
{
  if ((((*(this + 6) - *(this + 5)) >> 3) * 0.75) <= ((*(this + 2) - *(this + 1)) >> 3))
  {
    fst::internal::DenseSymbolMap::Rehash(this);
  }

  v4 = std::__string_hash<char>::operator()[abi:ne200100](this + 32, a2);
  v5 = *(this + 8);
  v6 = *(this + 5);
  v7 = v4 & v5;
  v8 = *(v6 + 8 * (v4 & v5));
  v10 = *this;
  v9 = *(this + 1);
  if (v8 == *this)
  {
LABEL_9:
    *(v6 + 8 * v7) = (*(this + 2) - v9) >> 3;
    operator new[]();
  }

  if (*(a2 + 23) >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  while (strcmp(*(v9 + 8 * v8), v11))
  {
    v7 = (v7 + 1) & v5;
    v8 = *(v6 + 8 * v7);
    if (v8 == v10)
    {
      goto LABEL_9;
    }
  }

  return v8;
}

void fst::internal::DenseSymbolMap::Rehash(fst::internal::DenseSymbolMap *this)
{
  v2 = (this + 40);
  std::vector<double>::resize(this + 5, (*(this + 6) - *(this + 5)) >> 2);
  v4 = *v2;
  v3 = v2[1];
  v2[3] = ((v3 - *v2) >> 3) - 1;
  v5 = v3 - v4;
  if (v3 != v4)
  {
    v6 = 0;
    v7 = *this;
    v8 = (v5 - 8) >> 3;
    v9 = vdupq_n_s64(v8);
    v10 = (v4 + 8);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(vdupq_n_s64(v6), xmmword_1B5AE0060)));
      if (v11.i8[0])
      {
        *(v10 - 1) = v7;
      }

      if (v11.i8[4])
      {
        *v10 = v7;
      }

      v6 += 2;
      v10 += 2;
    }

    while (((v8 + 2) & 0x3FFFFFFFFFFFFFFELL) != v6);
  }

  v12 = *(this + 1);
  if (*(this + 2) != v12)
  {
    v13 = 0;
    do
    {
      std::string::basic_string[abi:ne200100]<0>(__p, *(v12 + 8 * v13));
      v14 = std::__string_hash<char>::operator()[abi:ne200100](this + 32, __p);
      v15 = *(this + 8);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      v16 = v15 & v14;
      v17 = *(this + 5);
      if (*(v17 + 8 * (v15 & v14)) != *this)
      {
        do
        {
          v16 = *(this + 8) & (v16 + 1);
        }

        while (*(v17 + 8 * v16) != *this);
      }

      *(v17 + 8 * v16) = v13++;
      v12 = *(this + 1);
    }

    while (v13 < (*(this + 2) - v12) >> 3);
  }
}

uint64_t quasar::ModelLoader::readWordBoundaryInfo@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 8);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a3, *(a3 + 8));
  }

  else
  {
    v17 = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  quasar::MakeCacheKey<int,int,BOOL,std::string,std::string>(v10, v11, v12, &v17, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  v13 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 408), &v18);
  if (!v13)
  {
    std::allocate_shared[abi:ne200100]<kaldi::WordBoundaryInfo,std::allocator<kaldi::WordBoundaryInfo>,kaldi::WordBoundaryInfoNewOpts const&,std::string const&,std::string const&,0>();
  }

  *a5 = v13[5];
  v14 = v13[6];
  a5[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  v20 = *MEMORY[0x1E69E54E8];
  *(&v20 + *(v20 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v21 = MEMORY[0x1E69E5548] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v22);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v24);
}

void sub_1B509228C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a29);
  _Unwind_Resume(a1);
}

void quasar::ForceAlignDecoderBase::finishInit(quasar::ForceAlignDecoderBase *this)
{
  memset(&v44, 0, sizeof(v44));
  v43 = 0;
  v2 = kaldi::Input::Input(v42, this + 736, &v43);
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v3 = kaldi::Input::Stream(v2);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v22, MEMORY[0x1E69E5318]);
  v5 = (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v22);
  std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, &v39, v5);
  if (kaldi::SplitStringToIntegers<int>(&v39, ":", 1, &v44))
  {
    kaldi::SilencePhoneSet::SilencePhoneSet(&v22, &v44);
    *(this + 190) = v22;
    *(this + 96) = *(&v22 + 1);
    *(this + 388) = v23[0];
    std::vector<BOOL>::operator=(this + 784, &v23[1]);
    if ((this + 760) != &v22)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 101, __p[0], __p[1], (__p[1] - __p[0]) >> 2);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v23[1])
    {
      operator delete(v23[1]);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(v39);
    }

    kaldi::Input::~Input(v42);
    if (v44.__begin_)
    {
      v44.__end_ = v44.__begin_;
      operator delete(v44.__begin_);
    }

    quasar::ModelLoader::readContextDependency(*(this + 47), this + 76, &v22);
    v6 = v22;
    v22 = 0uLL;
    v7 = *(this + 75);
    *(this + 37) = v6;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      if (*(&v22 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v22 + 1));
      }
    }

    quasar::QsrTextSymbolTable::init(*(this + 72), (this + 32), 1, *(this + 449), 1);
    v8 = quasar::QsrTextSymbolTable::Find(*(this + 72), "<?>");
    if (v8 != -1)
    {
      v9 = v8;
      v10 = *(this + 163);
      if (v10 && v8 != v10 && quasar::gLogLevel >= 2)
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        *__p = 0u;
        v26 = 0u;
        *v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v22);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "Silence label is set to ", 24);
        v12 = MEMORY[0x1B8C84C00](v11, *(this + 163));
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " but does not match the auto-determined silence label ", 54);
        v14 = MEMORY[0x1B8C84C60](v13, v9);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ". Will use latter.", 18);
        quasar::QuasarWarnMessage::~QuasarWarnMessage(&v22);
      }

      *(this + 163) = v9;
    }

    quasar::ModelLoader::readWordBoundaryInfo(*(this + 47), this + 163, this + 664, this + 688, &v22);
    v15 = v22;
    v22 = 0uLL;
    v16 = *(this + 90);
    *(this + 712) = v15;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      if (*(&v22 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v22 + 1));
      }
    }

    quasar::ModelLoader::readSymbolTable(*(this + 47), this + 536, 4, 0, &v22);
    v17 = v22;
    v22 = 0uLL;
    v18 = *(this + 71);
    *(this + 35) = v17;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      if (*(&v22 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v22 + 1));
      }
    }

    quasar::ForceAlignDecoderBase::setDisambigPhoneIds(this);
    quasar::Lexicon::create(this + 480, this + 456);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *__p = 0u;
  v26 = 0u;
  *v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(&v22);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "Invalid silence-phones string ", 30);
  if (v41 >= 0)
  {
    v20 = &v39;
  }

  else
  {
    v20 = v39;
  }

  if (v41 >= 0)
  {
    v21 = HIBYTE(v41);
  }

  else
  {
    v21 = v40;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v22);
}

void sub_1B50926B8(_Unwind_Exception *a1)
{
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  kaldi::Input::~Input((v1 - 72));
  v3 = *(v1 - 56);
  if (v3)
  {
    *(v1 - 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::MakeCacheKey<int,int,BOOL,std::string,std::string>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  v10 = MEMORY[0x1B8C84C00](&v21, a1);
  v11 = MEMORY[0x1B8C84C00](v10, a2);
  v12 = MEMORY[0x1B8C84BD0](v11, a3);
  v13 = *(a4 + 23);
  if (v13 >= 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = *a4;
  }

  if (v13 >= 0)
  {
    v15 = *(a4 + 23);
  }

  else
  {
    v15 = *(a4 + 8);
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
  v17 = *(a5 + 23);
  if (v17 >= 0)
  {
    v18 = a5;
  }

  else
  {
    v18 = *a5;
  }

  if (v17 >= 0)
  {
    v19 = *(a5 + 23);
  }

  else
  {
    v19 = *(a5 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
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

void sub_1B50928E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void std::allocator<kaldi::WordBoundaryInfo>::construct[abi:ne200100]<kaldi::WordBoundaryInfo,kaldi::WordBoundaryInfoNewOpts const&,std::string const&,std::string const&>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a4, *(a4 + 8));
  }

  else
  {
    v9 = *a4;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
  }

  else
  {
    __p = *a5;
  }

  kaldi::WordBoundaryInfo::WordBoundaryInfo(a2, a3, &v9, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1B5092A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<kaldi::WordBoundaryInfo>::__shared_ptr_emplace[abi:ne200100]<kaldi::WordBoundaryInfoNewOpts const&,std::string const&,std::string const&,std::allocator<kaldi::WordBoundaryInfo>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D30A28;
  std::allocator<kaldi::WordBoundaryInfo>::construct[abi:ne200100]<kaldi::WordBoundaryInfo,kaldi::WordBoundaryInfoNewOpts const&,std::string const&,std::string const&>(&v6, (a1 + 3), a2, a3, a4);
  return a1;
}

uint64_t kaldi::WordBoundaryInfo::WordBoundaryInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  v6 = a1 + 40;
  *(a1 + 32) = a1 + 40;
  v7 = (a1 + 32);
  *(a1 + 48) = 0;
  *(a1 + 56) = *(a2 + 8);
  *(a1 + 24) = *a2;
  v16 = 0;
  kaldi::Input::Input(v15, a3, &v16);
  v8 = kaldi::Input::Stream(v15);
  kaldi::WordBoundaryInfo::Init(a1, v8);
  if ((*(a4 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(a4 + 8))
    {
      goto LABEL_9;
    }
  }

  else if (!*(a4 + 23))
  {
    goto LABEL_9;
  }

  kaldi::LoadUnpronouncedWords(a4, &v12);
  std::__tree<int>::destroy(v7, *(a1 + 40));
  v9 = v13;
  *(a1 + 32) = v12;
  *(a1 + 40) = v9;
  v10 = v14;
  *(a1 + 48) = v14;
  if (v10)
  {
    v9[2] = v6;
    v12 = &v13;
    v13 = 0;
    v14 = 0;
    v9 = 0;
  }

  else
  {
    *v7 = v6;
  }

  std::__tree<int>::destroy(&v12, v9);
LABEL_9:
  kaldi::Input::~Input(v15);
  return a1;
}

void sub_1B5092BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::Input::~Input(va);
  std::__tree<int>::destroy(v6, *(v5 + 40));
  v8 = *v5;
  if (*v5)
  {
    *(v5 + 8) = v8;
    operator delete(v8);
  }

  _Unwind_Resume(a1);
}

void kaldi::WordBoundaryInfo::Init(std::vector<int> *a1, void *a2)
{
  memset(&v30, 0, sizeof(v30));
  v4 = MEMORY[0x1E69E5318];
  while (1)
  {
    std::ios_base::getloc((a2 + *(*a2 - 24)));
    v5 = std::locale::use_facet(&v25, v4);
    v6 = (v5->__vftable[2].~facet_0)(v5, 10);
    std::locale::~locale(&v25);
    v7 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v30, v6);
    if ((*(v7 + *(*v7 - 24) + 32) & 5) != 0)
    {
      break;
    }

    v27 = 0;
    v28 = 0;
    v29 = 0;
    kaldi::SplitStringToVector(&v30, " \t\r", 1, &v27);
    v26 = 0;
    if (v28 - v27 != 48 || (kaldi::ConvertStringToInteger<int>(v27, &v26) & 1) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v25);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "Invalid line in word-boundary file: ", 36);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v30;
      }

      else
      {
        v19 = v30.__r_.__value_.__r.__words[0];
      }

      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v30.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, size);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v25);
    }

    if (v26 >= (a1->__end_ - a1->__begin_))
    {
      LODWORD(v25.__locale_) = 0;
      std::vector<int>::resize(a1, v26 + 1, &v25);
    }

    if (*(v27 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v27 + 24), *(v27 + 32));
    }

    else
    {
      __p = *(v27 + 24);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_ == 5)
      {
        if (*__p.__r_.__value_.__l.__data_ == 1768383842 && *(__p.__r_.__value_.__r.__words[0] + 4) == 110)
        {
          goto LABEL_51;
        }
      }

      else if (__p.__r_.__value_.__l.__size_ == 7 && *__p.__r_.__value_.__l.__data_ == 2003726190 && *(__p.__r_.__value_.__r.__words[0] + 3) == 1685221239)
      {
        goto LABEL_58;
      }

      if (__p.__r_.__value_.__l.__size_ == 3)
      {
        if (*__p.__r_.__value_.__l.__data_ == 28261 && *(__p.__r_.__value_.__r.__words[0] + 2) == 100)
        {
          goto LABEL_67;
        }
      }

      else if (__p.__r_.__value_.__l.__size_ == 9 && *__p.__r_.__value_.__l.__data_ == 0x6F74656C676E6973 && *(__p.__r_.__value_.__r.__words[0] + 8) == 110)
      {
        goto LABEL_52;
      }

      if (__p.__r_.__value_.__l.__size_ != 8)
      {
        goto LABEL_82;
      }

      p_p = __p.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (HIBYTE(__p.__r_.__value_.__r.__words[2]) <= 6u)
      {
        if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 3)
        {
          if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 5)
          {
            goto LABEL_82;
          }

          if (LODWORD(__p.__r_.__value_.__l.__data_) != 1768383842 || __p.__r_.__value_.__s.__data_[4] != 110)
          {
            goto LABEL_82;
          }

LABEL_51:
          v15 = 1;
          goto LABEL_68;
        }

        if (LOWORD(__p.__r_.__value_.__l.__data_) != 28261 || __p.__r_.__value_.__s.__data_[2] != 100)
        {
LABEL_82:
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v25);
          v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "Invalid line in word-boundary file: ", 36);
          if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = &v30;
          }

          else
          {
            v22 = v30.__r_.__value_.__r.__words[0];
          }

          if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v23 = v30.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v25);
        }

LABEL_67:
        v15 = 2;
        goto LABEL_68;
      }

      if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 7)
      {
        if (LODWORD(__p.__r_.__value_.__l.__data_) != 2003726190 || *(__p.__r_.__value_.__r.__words + 3) != 1685221239)
        {
          goto LABEL_82;
        }

LABEL_58:
        v15 = 5;
        goto LABEL_68;
      }

      if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 8)
      {
        if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 9)
        {
          goto LABEL_82;
        }

        if (__p.__r_.__value_.__r.__words[0] != 0x6F74656C676E6973 || __p.__r_.__value_.__s.__data_[8] != 110)
        {
          goto LABEL_82;
        }

LABEL_52:
        v15 = 3;
        goto LABEL_68;
      }

      p_p = &__p;
    }

    if (p_p->__r_.__value_.__r.__words[0] != 0x6C616E7265746E69)
    {
      goto LABEL_82;
    }

    v15 = 4;
LABEL_68:
    a1->__begin_[v26] = v15;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v25.__locale_ = &v27;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v25);
  }

  if (a1->__begin_ == a1->__end_)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "Empty word-boundary file", 24);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v25);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }
}

void sub_1B50930E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = (v13 - 136);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  if (*(v13 - 89) < 0)
  {
    operator delete(*(v13 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_1B50930FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::locale a13)
{
  std::locale::~locale(&a13);
  if (*(v13 - 89) < 0)
  {
    operator delete(*(v13 - 112));
  }

  _Unwind_Resume(a1);
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x1B8C84A90](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_1B509328C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1B509324CLL);
  }

  __cxa_rethrow();
}

uint64_t kaldi::ConvertStringToInteger<int>(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  __endptr = 0;
  *__error() = 0;
  v4 = strtoll(v3, &__endptr, 10);
  v5 = __endptr;
  if (__endptr != v3)
  {
    v5 = __endptr - 1;
    v6 = MEMORY[0x1E69E9830];
    do
    {
      v7 = v5[1];
      if ((v7 & 0x80000000) != 0)
      {
        v8 = __maskrune(v7, 0x4000uLL);
      }

      else
      {
        v8 = *(v6 + 4 * v7 + 60) & 0x4000;
      }

      ++v5;
    }

    while (v8);
    __endptr = v5;
  }

  if (v5 == v3 || *v5)
  {
    return 0;
  }

  v10 = __error();
  result = 0;
  if (!*v10 && !((v4 + 0x80000000) >> 32))
  {
    *a2 = v4;
    return 1;
  }

  return result;
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 0;
      v13 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = &end[__n];
      v17 = *__x;
      v18 = v14 + 4;
      v19 = end + 2;
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1B5AE0060)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1B5AE0050)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = this->__end_;
    }

    this->__end_ = v16;
  }

  else
  {
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 2;
    v10 = value - this->__begin_;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = (4 * v9 + 4 * __n);
    v25 = *__x;
    v26 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1B5AE0060)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1B5AE0050)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = this->__end_ - this->__begin_;
    v33 = (v23 - v32);
    memcpy((v23 - v32), this->__begin_, v32);
    begin = this->__begin_;
    this->__begin_ = v33;
    this->__end_ = v24;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz, std::vector<int>::const_reference __x)
{
  v3 = this->__end_ - this->__begin_;
  if (__sz <= v3)
  {
    if (__sz < v3)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v3, __x);
  }
}

void quasar::ModelLoader::readSymbolTable(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 368), a2))
  {
    if (quasar::gLogLevel >= 5)
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v43);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "found object in map for symbol table ", 37);
      v11 = *(a2 + 23);
      if (v11 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      if (v11 >= 0)
      {
        v13 = *(a2 + 23);
      }

      else
      {
        v13 = *(a2 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v43);
    }

    *&v43 = a2;
    v14 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 368), a2);
    v15 = v14;
    if (a4 && ((*(*v14[5] + 144))(v14[5]) & 1) == 0)
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v43);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "Requested SymbolTable implementation with support for efficient reverse symbol lookups, ", 88);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "but previous call did not enforce that requirement and the result was cached. ", 78);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v30, "Use a fresh ModelLoader instance to work-around the problem.");
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v43);
    }

    v16 = v15[6];
    *a5 = v15[5];
    a5[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
    }

    return;
  }

  *a5 = 0;
  a5[1] = 0;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      quasar::SymbolMap::ReadFstBinary<std::shared_ptr<fst::SymbolTable>>(a2, &v43);
    }

    if (a3 == 4)
    {
      quasar::SymbolMap::ReadFstText<std::shared_ptr<fst::SymbolTable>>(a2, &v43);
    }

LABEL_31:
    if (*(a2 + 23) >= 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    if (!stat(v20, &v42))
    {
      v58 = 0uLL;
      v59 = 0uLL;
      v56 = 0uLL;
      v57 = 0uLL;
      v54 = 0uLL;
      v55 = 0uLL;
      v52 = 0uLL;
      v53 = 0uLL;
      v50 = 0uLL;
      v51 = 0uLL;
      v48 = 0uLL;
      v49 = 0uLL;
      v46 = 0uLL;
      v47 = 0uLL;
      v44 = 0uLL;
      v45 = 0uLL;
      v43 = 0uLL;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v43);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "Failed to read symbol table file. ", 34);
      v22 = MEMORY[0x1B8C84C60](v21, v42.st_size);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " bytes, table type ", 19);
      v24 = MEMORY[0x1B8C84C00](v23, a3);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ", path: ", 8);
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
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v43);
    }

    v58 = 0uLL;
    v59 = 0uLL;
    v56 = 0uLL;
    v57 = 0uLL;
    v54 = 0uLL;
    v55 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v43 = 0uLL;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v43);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "Failed to read symbol table file. ", 34);
    v32 = __error();
    v33 = strerror(*v32);
    v34 = strlen(v33);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v33, v34);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, ", table type ", 13);
    v37 = MEMORY[0x1B8C84C00](v36, a3);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ", path: ", 8);
    v39 = *(a2 + 23);
    if (v39 >= 0)
    {
      v40 = a2;
    }

    else
    {
      v40 = *a2;
    }

    if (v39 >= 0)
    {
      v41 = *(a2 + 23);
    }

    else
    {
      v41 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v40, v41);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v43);
  }

  if (a3 == 1)
  {
    quasar::SymbolMap::ReadMarisa<std::shared_ptr<fst::SymbolTable>>(a2);
  }

  if (a3 != 2)
  {
    goto LABEL_31;
  }

  if (a4)
  {
    quasar::SymbolMap::ReadAndSortQuasarBinary<std::shared_ptr<fst::SymbolTable>>(a2, &v43);
  }

  else
  {
    quasar::SymbolMap::ReadQuasarBinary<std::shared_ptr<fst::SymbolTable>>(a2, &v43);
  }

  v17 = v43;
  *a5 = v43;
  if (!v17)
  {
    goto LABEL_31;
  }

  *&v43 = a2;
  v18 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 368), a2);
  if (*(&v17 + 1))
  {
    atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v19 = v18[6];
  *(v18 + 5) = v17;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }
}

void quasar::SymbolMap::ReadFstText<std::shared_ptr<fst::SymbolTable>>(uint64_t a1@<X0>, void *a2@<X8>)
{
  fst::SymbolTableTextOptions::SymbolTableTextOptions(&v5);
  Text = fst::SymbolTable::ReadText(a1);
  std::shared_ptr<fst::SymbolTable>::shared_ptr[abi:ne200100]<fst::SymbolTable,0>(a2, Text);
}

void sub_1B5093B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

fst::SymbolTableTextOptions *fst::SymbolTableTextOptions::SymbolTableTextOptions(fst::SymbolTableTextOptions *this)
{
  *this = 0;
  std::string::basic_string[abi:ne200100]<0>(this + 8, FLAGS_fst_field_separator[0]);
  return this;
}

uint64_t fst::SymbolTable::ReadText(uint64_t a1)
{
  v14[19] = *MEMORY[0x1E69E9840];
  std::ifstream::basic_ifstream(v12);
  if (!*&v13[*(v12[0] - 24) + 16])
  {
    fst::SymbolTable::ReadText();
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v11, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "SymbolTable::ReadText: Can't open file ", 39);
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  fst::LogMessage::~LogMessage(&v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v12[0] = *MEMORY[0x1E69E54C8];
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C84A00](v13);
  std::istream::~istream();
  MEMORY[0x1B8C85200](v14);
  return 0;
}

void sub_1B5093D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::ifstream::~ifstream(&a20, MEMORY[0x1E69E54C8]);
  MEMORY[0x1B8C85200](&a72);
  _Unwind_Resume(a1);
}

std::string *fst::SymbolTableImpl::SymbolTableImpl(std::string *this, __int128 *a2)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  fst::internal::DenseSymbolMap::DenseSymbolMap(&this[1].__r_.__value_.__r.__words[2]);
  this[5].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__l.__size_ = 0;
  this[6].__r_.__value_.__r.__words[2] = 0;
  this[6].__r_.__value_.__l.__size_ = 0;
  this[5].__r_.__value_.__r.__words[2] = 0;
  this[6].__r_.__value_.__r.__words[0] = &this[6].__r_.__value_.__l.__size_;
  LODWORD(this[7].__r_.__value_.__l.__data_) = 1;
  this[7].__r_.__value_.__s.__data_[4] = 0;
  *&this[7].__r_.__value_.__r.__words[1] = 0u;
  *&this[8].__r_.__value_.__l.__data_ = 0u;
  *&this[8].__r_.__value_.__r.__words[2] = 0u;
  return this;
}

void sub_1B5093E74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

fst::internal::DenseSymbolMap *fst::internal::DenseSymbolMap::DenseSymbolMap(fst::internal::DenseSymbolMap *this)
{
  *this = -1;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<long long>::vector[abi:ne200100](this + 5, 0x10uLL);
  v3 = *(this + 5);
  v2 = *(this + 6);
  *(this + 8) = ((v2 - v3) >> 3) - 1;
  v4 = v2 - v3;
  if (v2 != v3)
  {
    v5 = 0;
    v6 = *this;
    v7 = (v4 - 8) >> 3;
    v8 = vdupq_n_s64(v7);
    v9 = (v3 + 8);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v5), xmmword_1B5AE0060)));
      if (v10.i8[0])
      {
        *(v9 - 1) = v6;
      }

      if (v10.i8[4])
      {
        *v9 = v6;
      }

      v5 += 2;
      v9 += 2;
    }

    while (((v7 + 2) & 0x3FFFFFFFFFFFFFFELL) != v5);
  }

  return this;
}

void sub_1B5093F50(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5093FDC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<fst::SymbolTable>::shared_ptr[abi:ne200100]<fst::SymbolTable,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t quasar::ForceAlignDecoderBase::setDisambigPhoneIds(quasar::ForceAlignDecoderBase *this)
{
  *(this + 105) = *(this + 104);
  v7 = 0;
  result = (*(**(this + 70) + 120))(*(this + 70));
  if (result)
  {
    while (1)
    {
      (*(**(this + 70) + 88))(&__p);
      if (v6 < 0)
      {
        break;
      }

      if (__p == 35)
      {
        goto LABEL_4;
      }

LABEL_5:
      v3 = ++v7;
      result = (*(**(this + 70) + 120))(*(this + 70));
      if (result <= v3)
      {
        return result;
      }
    }

    v4 = *__p;
    operator delete(__p);
    if (v4 != 35)
    {
      goto LABEL_5;
    }

LABEL_4:
    std::vector<int>::push_back[abi:ne200100](this + 104, &v7);
    goto LABEL_5;
  }

  return result;
}

unint64_t fst::internal::DenseSymbolMap::GetSymbol@<X0>(fst::internal::DenseSymbolMap *this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(*(this + 1) + 8 * a2);
  result = strlen(v4);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a3[23] = result;
  if (result)
  {
    result = memmove(a3, v4, result);
  }

  a3[v6] = 0;
  return result;
}

_BYTE *fst::SymbolTableImpl::Find@<X0>(fst::SymbolTableImpl *this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2 < 0 || *(this + 4) <= a2)
  {
    v3 = *(this + 19);
    if (!v3)
    {
      return std::string::basic_string[abi:ne200100]<0>(a3, "");
    }

    v4 = (this + 152);
    do
    {
      if (v3[4] >= a2)
      {
        v4 = v3;
      }

      v3 = v3[v3[4] < a2];
    }

    while (v3);
    if (v4 == (this + 152))
    {
      return std::string::basic_string[abi:ne200100]<0>(a3, "");
    }

    if (v4[4] > a2)
    {
      return std::string::basic_string[abi:ne200100]<0>(a3, "");
    }

    a2 = v4[5];
    if (a2 < 0)
    {
      return std::string::basic_string[abi:ne200100]<0>(a3, "");
    }
  }

  if (a2 >= ((*(this + 7) - *(this + 6)) >> 3))
  {
    return std::string::basic_string[abi:ne200100]<0>(a3, "");
  }

  else
  {
    return fst::internal::DenseSymbolMap::GetSymbol((this + 40), a2, a3);
  }
}

void quasar::Lexicon::create(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 8);
  }

  if (v2)
  {
    operator new();
  }

  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    operator new();
  }

  memset(v4, 0, sizeof(v4));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "Both dictMappedFile and dictFile are empty");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v4);
}

uint64_t quasar::Lexicon::Lexicon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (!a3)
  {
    v19 = 0;
    if (kaldi::Input::OpenInternal(&v19, a2, a3, 0))
    {
      kaldi::Input::Stream(&v19);
      std::allocate_shared[abi:ne200100]<kaldi::quasar::Lexicon,std::allocator<kaldi::quasar::Lexicon>,std::istream &,BOOL,BOOL,0>();
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "Could not read lexicon data from text source ", 45);
    v16 = *(a2 + 23);
    if (v16 >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    if (v16 >= 0)
    {
      v18 = *(a2 + 23);
    }

    else
    {
      v18 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v20);
  }

  quasar::Lexicon::readMappedLexicon(a2, &v20);
  v5 = *(a1 + 8);
  *a1 = v20;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (quasar::gLogLevel >= 4)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "read mmaped lexicon from ", 25);
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
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v20);
  }

  if (!*a1)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "Could not read lexicon data from mmaped source ", 47);
    v11 = *(a2 + 23);
    if (v11 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    if (v11 >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v20);
  }

  return a1;
}

void sub_1B50945C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = v14[5];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = v14[3];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = v14[1];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::Lexicon::readMappedLexicon@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v43[19] = *MEMORY[0x1E69E9840];
  v43[6] = 0;
  v4 = MEMORY[0x1E69E5528] + 64;
  v43[0] = MEMORY[0x1E69E5528] + 64;
  v5 = MEMORY[0x1E69E54C8];
  v6 = *(MEMORY[0x1E69E54C8] + 16);
  v41[0] = *(MEMORY[0x1E69E54C8] + 8);
  *(v41 + *(v41[0] - 24)) = v6;
  v41[1] = 0;
  v7 = (v41 + *(v41[0] - 24));
  std::ios_base::init(v7, v42);
  v8 = MEMORY[0x1E69E5528] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  v41[0] = v8;
  v43[0] = v4;
  MEMORY[0x1B8C849F0](v42);
  std::ifstream::open();
  v9 = std::istream::read();
  if ((*(v9 + *(*v9 - 24) + 32) & 5) != 0)
  {
    if (quasar::gLogLevel >= 1)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
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
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v22);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "Could not read magic header from ", 33);
      v11 = *(a1 + 23);
      if (v11 >= 0)
      {
        v12 = a1;
      }

      else
      {
        v12 = *a1;
      }

      if (v11 >= 0)
      {
        v13 = *(a1 + 23);
      }

      else
      {
        v13 = *(a1 + 8);
      }

LABEL_28:
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v22);
    }
  }

  else if (v39 == 0x2D58454C2D525351 && v40 == 3158102)
  {
    v21 = 0;
    v16 = std::istream::read();
    if ((*(v16 + *(*v16 - 24) + 32) & 5) == 0)
    {
      fst::FstReadOptions::FstReadOptions(__p, a1, 0, 0, 0);
      v20 = 2;
      fst::MappedFile::Map(v41, __p, ((4 * v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    }

    if (quasar::gLogLevel >= 1)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
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
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v22);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "Could not read the number of words from the mapped file ", 56);
      v17 = *(a1 + 23);
      if (v17 >= 0)
      {
        v12 = a1;
      }

      else
      {
        v12 = *a1;
      }

      if (v17 >= 0)
      {
        v13 = *(a1 + 23);
      }

      else
      {
        v13 = *(a1 + 8);
      }

      goto LABEL_28;
    }
  }

  else if (quasar::gLogLevel >= 1)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
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
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v22);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "Magic header was wrong in ", 26);
    v15 = *(a1 + 23);
    if (v15 >= 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    if (v15 >= 0)
    {
      v13 = *(a1 + 23);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    goto LABEL_28;
  }

  *a2 = 0;
  a2[1] = 0;
  v41[0] = *v5;
  *(v41 + *(v41[0] - 24)) = v5[3];
  MEMORY[0x1B8C84A00](v42);
  std::istream::~istream();
  return MEMORY[0x1B8C85200](v43);
}

void sub_1B5094C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ifstream::~ifstream(&a72, MEMORY[0x1E69E54C8]);
  MEMORY[0x1B8C85200](v72);
  _Unwind_Resume(a1);
}

void sub_1B5094E1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<fst::MappedFile>::shared_ptr[abi:ne200100]<fst::MappedFile,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<kaldi::quasar::ConstLexicon>::__shared_ptr_emplace[abi:ne200100]<int &,fst::MappedFile &,fst::MappedFile &,std::allocator<kaldi::quasar::ConstLexicon>,0>(void *a1, int *a2, const fst::MappedFile *a3, const fst::MappedFile *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D2F0F0;
  kaldi::quasar::ConstLexicon::ConstLexicon((a1 + 3), *a2, a3, a4);
  return a1;
}

kaldi::quasar::ConstLexicon *kaldi::quasar::ConstLexicon::ConstLexicon(kaldi::quasar::ConstLexicon *this, int a2, const fst::MappedFile *a3, const fst::MappedFile *a4)
{
  *this = &unk_1F2D04048;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 12) = a2 - 1;
  v5 = *(a4 + 1);
  *(this + 7) = *(a3 + 1);
  *(this + 8) = v5;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  kaldi::quasar::ConstLexicon::Init(this);
  return this;
}

void sub_1B5094F9C(_Unwind_Exception *a1)
{
  if (v1[103] < 0)
  {
    operator delete(*v3);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void kaldi::quasar::ConstLexicon::Init(kaldi::quasar::ConstLexicon *this)
{
  *(this + 72) = 1;
  v2 = *(this + 8);
  v3 = **(this + 7);
  v4 = strlen((v2 + v3));
  v17 = 0;
  v18 = 0;
  v19 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, (v2 + v3 + v4 + 5));
  kaldi::SplitStringToVector(&__p, " \t", 1, &v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v5 = v17;
  for (i = v18; v5 != i; v5 += 3)
  {
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v5, v5[1]);
    }

    else
    {
      v7 = *v5;
      __p.__r_.__value_.__r.__words[2] = v5[2];
      *&__p.__r_.__value_.__l.__data_ = v7;
    }

    kaldi::quasar::Lexicon::BasifyPhone(&__p);
    v8 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v10 = *(v5 + 23);
    v11 = v10;
    if (v10 < 0)
    {
      v10 = v5[1];
    }

    if (size != v10 || ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_p = &__p) : (p_p = __p.__r_.__value_.__r.__words[0]), v11 >= 0 ? (v13 = v5) : (v13 = *v5), memcmp(p_p, v13, size)))
    {
      *(this + 72) = 0;
    }

    if (v8 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::clear(this + 8);
  v14 = v17;
  v15 = v18;
  while (v14 != v15)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(this + 1, v14);
    v14 += 3;
  }

  MEMORY[0x1B8C84820](this + 80, "");
  *(this + 26) = -1;
  __p.__r_.__value_.__r.__words[0] = &v17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1B509515C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void kaldi::quasar::Lexicon::BasifyPhone(std::string *a1)
{
  std::vector<std::string>::vector[abi:ne200100](v3, 1uLL);
  std::string::operator=(v3[0], a1);
  v2 = kaldi::quasar::Lexicon::NormalizePron(v3, 0, 0, &v4);
  if (v3[0] == v3[1])
  {
    MEMORY[0x1B8C84820](a1, "", v2);
  }

  else
  {
    std::string::operator=(a1, v3[0]);
  }

  v4 = v3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void sub_1B509522C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void *std::vector<std::string>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

__n128 kaldi::quasar::Lexicon::NormalizePron(void *a1, int a2, int a3, int *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  memset(v45, 0, sizeof(v45));
  *a4 = -1;
  v5 = *a1;
  if (a1[1] == *a1)
  {
    goto LABEL_74;
  }

  v42 = a3;
  v43 = 0;
  v8 = 0;
  do
  {
    v9 = (v5 + 24 * v8);
    if (*(v9 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *v9, *(v9 + 1));
    }

    else
    {
      v10 = *v9;
      __str.__r_.__value_.__r.__words[2] = *(v9 + 2);
      *&__str.__r_.__value_.__l.__data_ = v10;
    }

    v11 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    size = __str.__r_.__value_.__l.__size_;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = __str.__r_.__value_.__l.__size_;
    }

    if (v14)
    {
      v15 = p_str + v14;
      v16 = p_str;
      while (2)
      {
        for (i = 0; i != 5; ++i)
        {
          if (v16->__r_.__value_.__s.__data_[0] == asc_1B5C04EB0[i])
          {
            if (v16 != v15 && v16 - p_str != -1)
            {
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v44);
              v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "Illegal phone: ", 15);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v40 = &__str;
              }

              else
              {
                v40 = __str.__r_.__value_.__r.__words[0];
              }

              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v41 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v41 = __str.__r_.__value_.__l.__size_;
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, v40, v41);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v44);
            }

            goto LABEL_21;
          }
        }

        v16 = (v16 + 1);
        if (v16 != v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      v18 = *__str.__r_.__value_.__l.__data_;
      if (v18 == 35)
      {
        goto LABEL_54;
      }

      if (v18 == 47 && *(__str.__r_.__value_.__r.__words[0] + __str.__r_.__value_.__l.__size_ - 1) == 47)
      {
        v11 = __str.__r_.__value_.__l.__size_;
LABEL_30:
        std::string::basic_string(&v44, &__str, 1uLL, v11 - 2, &v46);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = v44;
        v11 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
        size = v44.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      if (__str.__r_.__value_.__s.__data_[0] == 35)
      {
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
LABEL_54:
        std::string::basic_string(&v44, &__str, 1uLL, size - 1, &v46);
        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          v22 = v44.__r_.__value_.__r.__words[0];
          *a4 = atoi(v44.__r_.__value_.__l.__data_);
          operator delete(v22);
        }

        else
        {
          *a4 = atoi(&v44);
        }

        goto LABEL_58;
      }

      if (__str.__r_.__value_.__s.__data_[0] == 47 && __str.__r_.__value_.__s.__data_[HIBYTE(__str.__r_.__value_.__r.__words[2]) - 1] == 47)
      {
        goto LABEL_30;
      }
    }

    if (kaldi::quasar::Lexicon::IsPositionalPhone(&__str))
    {
      if ((v11 & 0x80u) == 0)
      {
        v19 = v11;
      }

      else
      {
        v19 = size;
      }

      std::string::basic_string(&v44, &__str, 0, v19 - 2, &v46);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str = v44;
      v11 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
      size = v44.__r_.__value_.__l.__size_;
    }

    if ((v11 & 0x80u) != 0)
    {
      v11 = size;
    }

    if (v11)
    {
      if (a2)
      {
        std::string::basic_string[abi:ne200100](&v44, v11 + 2);
        if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v44;
        }

        else
        {
          v20 = v44.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &__str;
        }

        else
        {
          v21 = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v20, v21, v11);
        strcpy(v20 + v11, "_I");
        std::vector<std::string>::push_back[abi:ne200100](v45, &v44);
        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }

        v43 = 1;
      }

      else
      {
        std::vector<std::string>::push_back[abi:ne200100](v45, &__str);
      }
    }

LABEL_58:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    ++v8;
    v5 = *a1;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v8);
  a3 = v42;
  if (a2 & v43)
  {
    v23 = *v45;
    if (*&v45[8] - *v45 == 24)
    {
      v24 = *(*v45 + 23);
      if (v24 < 0)
      {
        v23 = **v45;
        v24 = *(*v45 + 8);
      }

      v25 = v23 + v24;
      v26 = 83;
      goto LABEL_73;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((*&v45[8] - *v45) >> 3) >= 2)
    {
      v27 = *(*v45 + 23);
      if (v27 < 0)
      {
        v23 = **v45;
        v27 = *(*v45 + 8);
      }

      *(v23 + v27 - 1) = 66;
      v28 = *(*&v45[8] - 1);
      if (v28 < 0)
      {
        v29 = *(*&v45[8] - 24);
        v28 = *(*&v45[8] - 16);
      }

      else
      {
        v29 = *&v45[8] - 24;
      }

      v25 = v29 + v28;
      v26 = 69;
LABEL_73:
      *(v25 - 1) = v26;
    }
  }

LABEL_74:
  v30 = *v45;
  if (a3)
  {
    v31 = *&v45[8];
    if (*v45 != *&v45[8])
    {
      do
      {
        std::operator+<char>();
        v32 = std::string::append(&v44, "/");
        v33 = v32->__r_.__value_.__r.__words[0];
        __str.__r_.__value_.__r.__words[0] = v32->__r_.__value_.__l.__size_;
        *(__str.__r_.__value_.__r.__words + 7) = *(&v32->__r_.__value_.__r.__words[1] + 7);
        v34 = HIBYTE(v32->__r_.__value_.__r.__words[2]);
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        if (*(v30 + 23) < 0)
        {
          operator delete(*v30);
        }

        *v30 = v33;
        *(v30 + 8) = __str.__r_.__value_.__r.__words[0];
        *(v30 + 15) = *(__str.__r_.__value_.__r.__words + 7);
        *(v30 + 23) = v34;
        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }

        v30 += 24;
      }

      while (v30 != v31);
      v30 = *v45;
    }
  }

  v35 = a1[2];
  v36 = *&v45[8];
  v37 = *a1;
  *a1 = v30;
  *v45 = v37;
  *(a1 + 1) = v36;
  *&v45[16] = v35;
  v44.__r_.__value_.__r.__words[0] = v45;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v44);
  return result;
}

void sub_1B5095808(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5095864);
}

void sub_1B5095824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  if (*(v11 - 105) < 0)
  {
    operator delete(*(v11 - 128));
  }

  a11 = (v11 - 160);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void sub_1B5095840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    JUMPOUT(0x1B5095850);
  }

  JUMPOUT(0x1B5095854);
}

uint64_t kaldi::quasar::Lexicon::IsPositionalPhone(uint64_t *a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (v1 >= 3)
    {
      v2 = *(a1 + 23);
      goto LABEL_5;
    }

LABEL_11:
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  v2 = a1[1];
  if (v2 < 3)
  {
    goto LABEL_11;
  }

LABEL_5:
  v3 = *a1;
  if (v1 < 0)
  {
    v1 = a1[1];
  }

  else
  {
    v3 = a1;
  }

  if (*(v3 + v1 - 2) != 95)
  {
    goto LABEL_11;
  }

  v4 = *(v3 + v2 - 1) - 66;
  if (v4 > 0x11)
  {
    goto LABEL_11;
  }

  v5 = 0x20089u >> v4;
  return v5 & 1;
}

void *std::unique_ptr<quasar::Lexicon>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[5];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = v2[3];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = v2[1];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void kaldi::Vector<double>::Read(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v88 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v7 = *(a1 + 8);
    v78 = 0;
    v79[0].__locale_ = 0;
    v77 = 0;
    kaldi::Vector<double>::Resize(&v77, v7, 0);
    kaldi::Vector<double>::Read(&v77, a2, a3, 0);
    v8 = *(a1 + 8);
    if (!v8)
    {
      kaldi::Vector<double>::Resize(a1, v78, 0);
      v8 = *(a1 + 8);
    }

    if (v8 != v78)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Vector<Real>::Read, adding but dimensions mismatch ", 51);
      v50 = MEMORY[0x1B8C84C00](v49, *(a1 + 8));
      v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, " vs. ", 5);
      MEMORY[0x1B8C84C00](v51, v78);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    cblas_daxpy_NEWLAPACK_ILP64();
    if (v77)
    {
      free(v77);
    }

    return;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v77);
  std::istream::tellg();
  v9 = v87;
  if (!a3)
  {
    memset(&v82, 0, sizeof(v82));
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v82);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v77, "EOF while trying to read vector.", 32);
    }

    else
    {
      if (!std::string::compare(&v82, "[]"))
      {
        kaldi::Vector<double>::Resize(a1, 0, 0);
        if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_124;
        }

        v35 = v82.__r_.__value_.__r.__words[0];
LABEL_96:
        operator delete(v35);
        goto LABEL_124;
      }

      v70 = v9;
      if (!std::string::compare(&v82, "["))
      {
        v16 = a2 + 4;
        v71 = 22;
        v72 = "Failed to read number.";
        __src = 0;
        v75 = 0;
        v76 = 0;
        v17 = MEMORY[0x1E69E9830];
        while (1)
        {
          while (1)
          {
            while (1)
            {
              while (1)
              {
                v18 = std::istream::peek();
                if ((v18 - 48) > 9)
                {
                  break;
                }

                *&__p = 0.0;
                MEMORY[0x1B8C84AC0](a2, &__p);
                if ((*(v16 + *(*a2 - 24)) & 5) != 0)
                {
                  goto LABEL_101;
                }

                v19 = std::istream::peek();
                if (v19 <= 0x7F)
                {
                  if ((*(v17 + 4 * v19 + 60) & 0x4000) != 0)
                  {
                    goto LABEL_34;
                  }
                }

                else if (__maskrune(v19, 0x4000uLL))
                {
                  goto LABEL_34;
                }

                if (std::istream::peek() != 93)
                {
                  v71 = 33;
                  v72 = "Expected whitespace after number.";
                  goto LABEL_101;
                }

LABEL_34:
                v21 = v75;
                if (v75 >= v76)
                {
                  v23 = __src;
                  v24 = v75 - __src;
                  v25 = (v75 - __src) >> 3;
                  v26 = v25 + 1;
                  if ((v25 + 1) >> 61)
                  {
                    std::vector<int>::__throw_length_error[abi:ne200100]();
                  }

                  v27 = v76 - __src;
                  if ((v76 - __src) >> 2 > v26)
                  {
                    v26 = v27 >> 2;
                  }

                  if (v27 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v28 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v28 = v26;
                  }

                  if (v28)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v28);
                  }

                  *(8 * v25) = *&__p;
                  v22 = 8 * v25 + 8;
                  memcpy(0, v23, v24);
                  v29 = __src;
                  __src = 0;
                  v75 = v22;
                  v76 = 0;
                  if (v29)
                  {
                    operator delete(v29);
                  }
                }

                else
                {
                  *v75 = *&__p;
                  v22 = (v21 + 1);
                }

                v75 = v22;
              }

              if (v18 <= 31)
              {
                break;
              }

              if (v18 == 32)
              {
                goto LABEL_46;
              }

              if (v18 != 45)
              {
                if (v18 == 93)
                {
                  std::istream::get();
                  kaldi::Vector<double>::Resize(a1, (v75 - __src) >> 3, 0);
                  v39 = __src;
                  if (v75 != __src)
                  {
                    v40 = (v75 - __src) >> 3;
                    v41 = *a1;
                    if (v40 <= 1)
                    {
                      v40 = 1;
                    }

                    do
                    {
                      v42 = *v39++;
                      *v41++ = v42;
                      --v40;
                    }

                    while (v40);
                  }

                  v43 = std::istream::peek();
                  if (v43 == 10)
                  {
LABEL_109:
                    std::istream::get();
                  }

                  else if (v43 == 13)
                  {
                    std::istream::get();
                    goto LABEL_109;
                  }

                  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0 && kaldi::g_kaldi_verbose_level >= -1)
                  {
                    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "After end of vector data, read error.", 37);
                    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
                  }

                  v45 = 0;
LABEL_119:
                  if (__src)
                  {
                    v75 = __src;
                    operator delete(__src);
                  }

                  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v82.__r_.__value_.__l.__data_);
                  }

                  if ((v45 & 1) == 0)
                  {
                    goto LABEL_124;
                  }

LABEL_157:
                  kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
                  v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Failed to read vector from stream.  ", 36);
                  std::stringbuf::str();
                  if (v76 >= 0)
                  {
                    p_src = &__src;
                  }

                  else
                  {
                    p_src = __src;
                  }

                  if (v76 >= 0)
                  {
                    v63 = HIBYTE(v76);
                  }

                  else
                  {
                    v63 = v75;
                  }

                  v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, p_src, v63);
                  v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, " File position at start is ", 27);
                  v66 = MEMORY[0x1B8C84C00](v65, v70);
                  v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, ", currently ", 12);
                  std::istream::tellg();
                  MEMORY[0x1B8C84C60](v67, v83);
                  if (SHIBYTE(v76) < 0)
                  {
                    operator delete(__src);
                  }

                  kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
                }

                goto LABEL_59;
              }

              std::istream::get();
              if (std::istream::peek() - 48 > 9)
              {
                std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v82);
                if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
                {
                  v30 = v82.__r_.__value_.__r.__words[0];
                  if (!strcasecmp(v82.__r_.__value_.__l.__data_, "inf"))
                  {
                    goto LABEL_79;
                  }

                  v31 = v30;
LABEL_75:
                  if (!strcasecmp(v31, "infinity"))
                  {
                    goto LABEL_79;
                  }

                  if (strcasecmp(v30, "nan"))
                  {
LABEL_128:
                    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v77, "Expecting numeric vector data, got ", 35);
                    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v47 = &v82;
                    }

                    else
                    {
                      v47 = v82.__r_.__value_.__r.__words[0];
                    }

                    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      size = HIBYTE(v82.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      size = v82.__r_.__value_.__l.__size_;
                    }

                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v47, size);
                    goto LABEL_118;
                  }

                  *&__p = NAN;
                  std::vector<double>::push_back[abi:ne200100](&__src, &__p);
                  if (kaldi::g_kaldi_verbose_level >= -1)
                  {
                    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Reading negative NaN value into vector.", 39);
                    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
                  }
                }

                else
                {
                  if (strcasecmp(&v82, "inf"))
                  {
                    v30 = &v82;
                    v31 = &v82;
                    goto LABEL_75;
                  }

LABEL_79:
                  *&__p = -INFINITY;
                  std::vector<double>::push_back[abi:ne200100](&__src, &__p);
                  if (kaldi::g_kaldi_verbose_level >= -1)
                  {
                    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Reading negative infinite value into vector.", 44);
                    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
                  }
                }
              }

              else
              {
                *&__p = 0.0;
                MEMORY[0x1B8C84AC0](a2, &__p);
                if ((*(v16 + *(*a2 - 24)) & 5) != 0)
                {
                  goto LABEL_101;
                }

                v20 = std::istream::peek();
                if (v20 <= 0x7F)
                {
                  if ((*(v17 + 4 * v20 + 60) & 0x4000) != 0)
                  {
                    goto LABEL_72;
                  }
                }

                else if (__maskrune(v20, 0x4000uLL))
                {
                  goto LABEL_72;
                }

                if (std::istream::peek() != 93)
                {
                  v71 = 33;
                  v72 = "Expected whitespace after number.";
LABEL_101:
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v77, v72, v71);
LABEL_118:
                  v45 = 1;
                  goto LABEL_119;
                }

LABEL_72:
                v73 = -*&__p;
                std::vector<double>::push_back[abi:ne200100](&__src, &v73);
              }
            }

            if (v18 <= 9)
            {
              break;
            }

            if (v18 == 10 || v18 == 13)
            {
              v37 = "Newline found while reading vector (maybe it's a matrix?)";
              v38 = 57;
              goto LABEL_117;
            }

LABEL_59:
            std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v82);
            if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
            {
              v32 = v82.__r_.__value_.__r.__words[0];
              if (!strcasecmp(v82.__r_.__value_.__l.__data_, "inf"))
              {
                goto LABEL_68;
              }

              v33 = v32;
LABEL_64:
              if (!strcasecmp(v33, "infinity"))
              {
                goto LABEL_68;
              }

              if (strcasecmp(v32, "nan"))
              {
                goto LABEL_128;
              }

              *&__p = NAN;
              std::vector<double>::push_back[abi:ne200100](&__src, &__p);
              if (kaldi::g_kaldi_verbose_level >= -1)
              {
                kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Reading NaN value into vector.", 30);
                kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
              }
            }

            else
            {
              if (strcasecmp(&v82, "inf"))
              {
                v32 = &v82;
                v33 = &v82;
                goto LABEL_64;
              }

LABEL_68:
              *&__p = INFINITY;
              std::vector<double>::push_back[abi:ne200100](&__src, &__p);
              if (kaldi::g_kaldi_verbose_level >= -1)
              {
                kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Reading infinite value into vector.", 35);
                kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
              }
            }
          }

          if (v18 != 9)
          {
            if (v18 == -1)
            {
              v37 = "EOF while reading vector data.";
              v38 = 30;
LABEL_117:
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v77, v37, v38);
              goto LABEL_118;
            }

            goto LABEL_59;
          }

LABEL_46:
          std::istream::get();
        }
      }

      v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v77, "Expected [ but got ", 21);
      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = &v82;
      }

      else
      {
        v58 = v82.__r_.__value_.__r.__words[0];
      }

      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v59 = v82.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, v58, v59);
    }

    v70 = v9;
    if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_157;
    }

    v60 = v82.__r_.__value_.__r.__words[0];
    goto LABEL_156;
  }

  if (kaldi::Peek(a2, 1) != 70)
  {
    *&__p = 0.0;
    v85 = 0;
    v86 = 0;
    kaldi::ReadToken(a2, 1, &__p);
    if (SHIBYTE(v86) < 0)
    {
      if (v85 != 2)
      {
        goto LABEL_140;
      }

      p_p = __p;
    }

    else
    {
      if (SHIBYTE(v86) != 2)
      {
        goto LABEL_140;
      }

      p_p = &__p;
    }

    if (*p_p == 22084)
    {
      LODWORD(v82.__r_.__value_.__l.__data_) = 0;
      kaldi::ReadBasicType<int>(a2, 1, &v82);
      data = v82.__r_.__value_.__l.__data_;
      if (LODWORD(v82.__r_.__value_.__l.__data_) != *(a1 + 8))
      {
        kaldi::Vector<double>::Resize(a1, LODWORD(v82.__r_.__value_.__l.__data_), 0);
        data = v82.__r_.__value_.__l.__data_;
      }

      if (data >= 1)
      {
        std::istream::read();
      }

      if ((*(a2 + *(*a2 - 24) + 32) & 5) == 0)
      {
        if ((SHIBYTE(v86) & 0x80000000) == 0)
        {
          goto LABEL_124;
        }

        v35 = __p;
        goto LABEL_96;
      }

      v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v77, "Error reading vector data (binary mode); truncated stream? (size = ", 67);
      v69 = MEMORY[0x1B8C84C00](v68, LODWORD(v82.__r_.__value_.__l.__data_));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, ")", 1);
      goto LABEL_167;
    }

LABEL_140:
    v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v77, ": Expected token ", 17);
    v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "DV", 2);
    v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, ", got ", 6);
    if (v86 >= 0)
    {
      v55 = &__p;
    }

    else
    {
      v55 = __p;
    }

    if (v86 >= 0)
    {
      v56 = HIBYTE(v86);
    }

    else
    {
      v56 = v85;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, v55, v56);
LABEL_167:
    v70 = v9;
    if ((SHIBYTE(v86) & 0x80000000) == 0)
    {
      goto LABEL_157;
    }

    v60 = __p;
LABEL_156:
    operator delete(v60);
    goto LABEL_157;
  }

  v10 = *(a1 + 8);
  v85 = 0;
  v86 = 0;
  *&__p = 0.0;
  kaldi::Vector<float>::Resize(&__p, v10, 0);
  kaldi::Vector<float>::Read(&__p, a2, 1, 0);
  LODWORD(v11) = *(a1 + 8);
  if (v11 != v85)
  {
    kaldi::Vector<double>::Resize(a1, v85, 0);
    LODWORD(v11) = v85;
  }

  v12 = __p;
  if (v11 < 1)
  {
    if (*&__p == 0.0)
    {
      goto LABEL_124;
    }
  }

  else
  {
    v13 = *a1;
    v11 = v11;
    v14 = __p;
    do
    {
      v15 = *v14++;
      *v13++ = v15;
      --v11;
    }

    while (v11);
  }

  free(v12);
LABEL_124:
  v77 = *MEMORY[0x1E69E54E8];
  *(&v77 + *(v77 - 3)) = *(MEMORY[0x1E69E54E8] + 24);
  v78 = MEMORY[0x1E69E5548] + 16;
  if (v80 < 0)
  {
    operator delete(v79[7].__locale_);
  }

  v78 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v79);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&v81);
}

void sub_1B50968F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if ((a72 & 0x80000000) == 0)
  {
    std::ostringstream::~ostringstream(&a17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1B5096970);
}

void sub_1B5096908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_1B5096910(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B509697CLL);
}

void sub_1B5096938(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (a17)
  {
    free(a17);
  }

  JUMPOUT(0x1B509697CLL);
}

void sub_1B5096950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  std::ostringstream::~ostringstream(&a17);
  _Unwind_Resume(a1);
}

void kaldi::Vector<double>::Resize(void **a1, uint64_t a2, int a3)
{
  v3 = a2;
  v5 = *a1;
  if (!a3)
  {
    v6 = 1;
    goto LABEL_13;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {
      if (!v5)
      {
        kaldi::Vector<double>::Init(a1, a2);
LABEL_25:
        v5 = *a1;
        v9 = 8 * *(a1 + 2);
LABEL_26:

        bzero(v5, v9);
        return;
      }

      if (*(a1 + 2) == a2)
      {
        return;
      }

      v6 = 1;
LABEL_14:
      if (*(a1 + 3) >= a2)
      {
        *(a1 + 2) = a2;
      }

      else if (*(a1 + 2) != a2)
      {
        free(v5);
        *a1 = 0;
        a1[1] = 0;
        kaldi::Vector<double>::Init(a1, v3);
        if ((v6 & 1) == 0)
        {
          return;
        }

        goto LABEL_25;
      }

      if (!v6)
      {
        return;
      }

      v9 = 8 * a2;
      goto LABEL_26;
    }

    v6 = 0;
    if (v5)
    {
      goto LABEL_14;
    }

LABEL_19:
    kaldi::Vector<double>::Init(a1, a2);
    if (!v6)
    {
      return;
    }

    goto LABEL_25;
  }

  v6 = 1;
  if (!a2 || !v5)
  {
LABEL_13:
    if (v5)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  if (*(a1 + 3) >= a2)
  {
    v10 = *(a1 + 2);
    if (a2 > v10)
    {
      bzero(&v5[8 * v10], 8 * (a2 - v10));
    }

    *(a1 + 2) = v3;
  }

  else
  {
    __dst = 0;
    v15 = 0;
    v16 = 0;
    kaldi::Vector<double>::Resize(&__dst, a2, 1);
    v7 = *(a1 + 2);
    v8 = *a1;
    if (v7 >= v3)
    {
      memcpy(__dst, v8, 8 * v3);
    }

    else
    {
      memcpy(__dst, v8, 8 * v7);
      bzero(__dst + 8 * *(a1 + 2), 8 * (v3 - *(a1 + 2)));
    }

    v11 = __dst;
    __dst = *a1;
    v12 = __dst;
    *a1 = v11;
    v13 = v15;
    v15 = a1[1];
    a1[1] = v13;
    if (v12)
    {
      free(v12);
    }
  }
}

void **kaldi::Vector<double>::Init(void **result, int a2)
{
  v2 = result;
  if (a2)
  {
    memptr = 0;
    v4 = (8 * a2);
    result = malloc_type_posix_memalign(&memptr, 0x10uLL, v4, 0x47F99594uLL);
    if (result || !memptr)
    {
      if ((v4 & 0x80000000) != 0 && kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
        v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Negative dimension: size=", 25);
        MEMORY[0x1B8C84C00](v5, v4);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v8);
      }

      exception = __cxa_allocate_exception(8uLL);
      v7 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v7, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
    }

    *v2 = memptr;
    *(v2 + 2) = a2;
    *(v2 + 3) = a2;
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  return result;
}

void sub_1B5096C28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

double kaldi::VectorBase<double>::Sum(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 0.0;
  }

  v2 = *a1;
  result = 0.0;
  do
  {
    v4 = *v2++;
    result = result + v4;
    --v1;
  }

  while (v1);
  return result;
}

float kaldi::VectorBase<float>::CopyFromVec<double>(uint64_t a1, double **a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = *a1;
    v4 = *a2;
    do
    {
      v5 = *v4++;
      result = v5;
      *v3++ = result;
      --v2;
    }

    while (v2);
  }

  return result;
}

void *kaldi::CuVectorBase<float>::CopyFromVec<float>(void *result, uint64_t a2)
{
  if (*(a2 + 8))
  {
    return kaldi::VectorBase<float>::CopyFromVec(result + 8, a2);
  }

  return result;
}

const void **quasar::ModelLoader::readTransitionModel@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  if (a3)
  {
    v5 = 248;
  }

  else
  {
    v5 = 208;
  }

  result = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + v5), a2);
  if (!result)
  {
    operator new();
  }

  v7 = result[6];
  *a4 = result[5];
  a4[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  return result;
}

BOOL quasar::SpeechRecognizerModelLoader::initDecoderIfNeeded(quasar::SystemConfig **this, quasar::Decoder *a2)
{
  result = quasar::Decoder::isInitialized(a2);
  if (!result)
  {
    v5 = *this;
    v6 = *(*this + 200);
    v7 = *this;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      v7 = *this;
    }

    v8 = *(v7 + 202);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      v7 = *this;
    }

    v9 = *(v7 + 198);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    quasar::Decoder::init(a2, v5);
  }

  return result;
}

void sub_1B5096FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  quasar::SpeechRecognizerModelLoader::initDecoderIfNeeded((v11 + 8), (v10 + 8));
  _Unwind_Resume(a1);
}

uint64_t quasar::SpeechRecognizerModelLoader::getOrConstructDecoderChain@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v6 = *a1;
  __p[0] = a2;
  v7 = std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 328, a2);
  if (v8)
  {
    std::operator+<char>();
    Ptree = quasar::SystemConfig::getPtree(v6, __p);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p[0]);
    }

    v10 = (v7 + 7);
    v11 = quasar::PTree::size(Ptree);
    std::vector<std::shared_ptr<quasar::FeatureExtractor>>::reserve(v7 + 7, v11);
    v12 = quasar::PTree::begin(Ptree);
    v13 = quasar::PTree::end(Ptree);
    if (v12 != v13)
    {
      v14 = v13;
      do
      {
        (*(**(a1 + 16) + 16))(&v34);
        v16 = v7[8];
        v15 = v7[9];
        if (v16 >= v15)
        {
          v17 = *v10;
          v18 = v16 - *v10;
          v19 = v18 >> 4;
          v20 = (v18 >> 4) + 1;
          if (v20 >> 60)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v21 = v15 - v17;
          if (v21 >> 3 > v20)
          {
            v20 = v21 >> 3;
          }

          v22 = v21 >= 0x7FFFFFFFFFFFFFF0;
          v23 = 0xFFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v23 = v20;
          }

          v38 = v7 + 7;
          if (v23)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<quasar::FeatureExtractor>>>((v7 + 7), v23);
          }

          *(16 * v19) = v34;
          v24 = 16 * v19 + 16;
          v34 = 0uLL;
          memcpy(0, v17, v18);
          v25 = v7[7];
          v7[7] = 0;
          v7[8] = v24;
          v26 = v7[9];
          v7[9] = 0;
          v36 = v25;
          v37 = v26;
          __p[0] = v25;
          __p[1] = v25;
          std::__split_buffer<std::shared_ptr<quasar::FeatureExtractor>>::~__split_buffer(__p);
          v27 = *(&v34 + 1);
          v7[8] = v24;
          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          }
        }

        else
        {
          *v16 = v34;
          v7[8] = v16 + 16;
        }

        v12 += 88;
      }

      while (v12 != v14);
    }
  }

  if ((a3 & 1) == 0)
  {
    v28 = v7[7];
    for (i = v7[8]; v28 != i; v28 += 16)
    {
      v30 = *v28;
      v31 = *(v28 + 8);
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      quasar::SpeechRecognizerModelLoader::initDecoderIfNeeded(a1, v30);
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }
    }
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  return std::vector<std::shared_ptr<quasar::Decoder>>::__init_with_size[abi:ne200100]<std::shared_ptr<quasar::Decoder>*,std::shared_ptr<quasar::Decoder>*>(a4, v7[7], v7[8], (v7[8] - v7[7]) >> 4);
}

void sub_1B5097230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SystemConfig::getLmeCompatibilityKey(quasar::SystemConfig *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 388) != 1)
  {
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
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    v4 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v4, "Config file must be loaded before calling this method.");
    goto LABEL_10;
  }

  if (!*(this + 184))
  {
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
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    v4 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v4, "Config file does not have model-info node.");
LABEL_10:
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v4);
  }

  if (*(this + 911) < 0)
  {
    v2 = *(this + 111);
    v3 = *(this + 112);

    std::string::__init_copy_ctor_external(a2, v2, v3);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 888);
    a2->__r_.__value_.__r.__words[2] = *(this + 113);
  }
}

void sub_1B5097404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::Decoder::setUpParams(quasar::Decoder *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v7, "stabilizer-averaging-period-ms");
  std::string::basic_string[abi:ne200100]<0>(__p, "Duration in milliseconds over which to stabilize partial results");
  quasar::SystemConfig::Register<unsigned int>(a2, v7, this + 40, __p, 0, 28, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "stabilizer-minimum-word-seen-ms");
  std::string::basic_string[abi:ne200100]<0>(__p, "Minimum duration in milliseconds that word must be recognized before it is considered stable");
  quasar::SystemConfig::Register<unsigned int>(a2, v7, this + 44, __p, 0, 28, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "dfst-cache-size");
  std::string::basic_string[abi:ne200100]<0>(__p, "The maximum number of items cached by each deterministic FST. Has no effect if the decoder doesn't use deterministic FST.");
  quasar::SystemConfig::Register<unsigned int>(a2, v7, this + 48, __p, 0, 183, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "max-arcs");
  std::string::basic_string[abi:ne200100]<0>(__p, "If > 0, decoder does nothing and returns Decoder::Success if the number of input lattice arcs exceeds this value. Decoders can customize behavior related to max-arcs. For example, rescoring decoder scales the lattice before checking max-arcs and keeps checks max-arcs while it runs.");
  quasar::SystemConfig::Register<int>(a2, v7, this + 52, __p, 0, 221, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "max-arcs-fail-decoder");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, return Decoder::Failed instead of Decoder::Success when exceeding max-arcs. This stops execution of subsequent decoders in the decoder chain but does not stop or fail the request. Decoders can customize behavior related to max-arcs-fail-decoder");
  quasar::SystemConfig::Register<BOOL>(a2, v7, this + 56, __p, 0, 221, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "double-partial-silence-interval-ms");
  std::string::basic_string[abi:ne200100]<0>(__p, "if > 0, write a second partial result with a delay of trailing silence duration milliseconds");
  quasar::SystemConfig::Register<int>(a2, v7, this + 452, __p, 0, 221, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  return (*(*this + 160))(this, a2);
}

void sub_1B5097708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::SystemConfig::Register<unsigned int>(const void **a1, const void **a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9)
{
  (*(*a1 + 2))(a1);
  quasar::result_handler::Range::Range(&v21, a6, a7);
  v15 = a1 + 103;
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 103, a2, __p);
  v22 = __p;
  v16 = std::__tree<std::__value_type<std::string,quasar::SystemConfig::Version>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::SystemConfig::Version>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::SystemConfig::Version>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 185), __p);
  *(v16 + 56) = v21;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  quasar::result_handler::Range::Range(&v21, a8, a9);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 103, a2, __p);
  v22 = __p;
  v17 = std::__tree<std::__value_type<std::string,quasar::SystemConfig::Version>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::SystemConfig::Version>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::SystemConfig::Version>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 188), __p);
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

  __p[0] = a1 + 103;
  v18 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 191), a1 + 103);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15, a2, __p);
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(v18 + 56, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B50978F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::LatticeRnnMitigator::registerParams(quasar::QsrTextSymbolTable **this, const void **a2)
{
  quasar::QsrTextSymbolTable::Register(this[57], a2, 120, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  std::string::basic_string[abi:ne200100]<0>(v7, "version");
  std::string::basic_string[abi:ne200100]<0>(__p, "Model version");
  quasar::SystemConfig::Register<std::string>(a2, v7, (this + 63), __p, 1, 120, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "transform-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "See LatticeRnn in nnet/lattice-rnn.h");
  quasar::SystemConfig::Register<std::string>(a2, v7, (this + 66), __p, 1, 120, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "forward-model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "See LatticeRnn in nnet/lattice-rnn.h");
  quasar::SystemConfig::Register<std::string>(a2, v7, (this + 69), __p, 1, 120, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "backward-model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "See LatticeRnn in nnet/lattice-rnn.h");
  quasar::SystemConfig::Register<std::string>(a2, v7, (this + 72), __p, 0, 120, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "output-model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "See LatticeRnn in nnet/lattice-rnn.h");
  quasar::SystemConfig::Register<std::string>(a2, v7, (this + 75), __p, 1, 120, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "model-feature-list");
  std::string::basic_string[abi:ne200100]<0>(__p, "Comma-separated list of arc features. Example: BAG_OF_PHONES,KEYWORD:hey,KEYWORD:Siri,LM_SCORE,AC_SCORE,NUM_FRAMES,LOG_POSTERIOR,LIN_POSTERIOR");
  quasar::SystemConfig::Register<std::string>(a2, v7, (this + 84), __p, 1, 120, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "phone-pd2pi-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "See LatticeRnn in nnet/lattice-rnn.h");
  quasar::SystemConfig::Register<std::string>(a2, v7, (this + 78), __p, 1, 120, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "bag-of-phones-model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "See LatticeRnn in nnet/lattice-rnn.h");
  quasar::SystemConfig::Register<std::string>(a2, v7, (this + 81), __p, 1, 120, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "enable-memory-map");
  std::string::basic_string[abi:ne200100]<0>(__p, "Map model into memory (requires aligned models)");
  quasar::SystemConfig::Register<BOOL>(a2, v7, (this + 87), __p, 1, 120, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "threshold");
  std::string::basic_string[abi:ne200100]<0>(__p, "0 = not trigger, 1 = trigger");
  quasar::SystemConfig::Register<float>(a2, v7, this + 700, __p, 1, 120, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "filter-devices");
  std::string::basic_string[abi:ne200100]<0>(__p, "FORMAT: Pipe-separated list of devices with support for wildcards. Wildcards must come at the end of each device in the list. Example 1: filter-devices: * - matches any device. Example 2: filter-devices: iPhone7|Watch*|AudioAccessory1 - matches iPhone7, AudioAccessory1, and devices starting with Watch. USAGE: One decoder chain can have multiple LatticeRnnMitigators, which are specified using colon notation to create unique names. Example decoder chain: lattice-biglm-lme-faster, ..., lattice-rnn-mitigator:X, lattice-rnn-mitigator:Y, lattice-rnn-mitigator:Z. The LatticeRnnMitigators are checked one-by-one in order. The first one that matches a request will 'claim' the request, run, and prevent the rest from running. All the filter-* conditions are AND'ed together, so a request must match all of them for the corresponding LatticeRnnMitigator to run.");
  quasar::SystemConfig::Register<std::string>(a2, v7, (this + 90), __p, 1, 142, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "filter-input-origins");
  std::string::basic_string[abi:ne200100]<0>(__p, "List of input origins with the same format as filter-devices.");
  quasar::SystemConfig::Register<std::string>(a2, v7, (this + 93), __p, 1, 142, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "calibration-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "Calibration Scale");
  quasar::SystemConfig::Register<float>(a2, v7, (this + 88), __p, 0, 120, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "calibration-offset");
  std::string::basic_string[abi:ne200100]<0>(__p, "Calibration Offset");
  quasar::SystemConfig::Register<float>(a2, v7, this + 708, __p, 0, 120, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  MEMORY[0x1B8C84820](this + 90, "*");
  return MEMORY[0x1B8C84820](this + 93, "VoiceTrigger");
}

void sub_1B50981A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::QsrTextSymbolTable::Register(quasar::QsrTextSymbolTable *this, const void **a2, int a3, int a4, int a5, int a6)
{
  std::string::basic_string[abi:ne200100]<0>(v18, "word-syms-marisa-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Base word symbol table in MARISA trie format (overrides other format files)");
  quasar::SystemConfig::Register<std::string>(a2, v18, this, __p, 0, a3, a4, a5, a6);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v18, "word-syms-map-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Base word symbol table mappable format filename (overrides text and binary format file)");
  quasar::SystemConfig::Register<std::string>(a2, v18, this + 24, __p, 0, a3, a4, a5, a6);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v18, "word-syms-binary-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Base word symbol table binary format filename (overrides text format file)");
  quasar::SystemConfig::Register<std::string>(a2, v18, this + 48, __p, 0, a3, a4, a5, a6);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v18, "word-syms-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Base word symbol table text format filename");
  quasar::SystemConfig::Register<std::string>(a2, v18, this + 72, __p, 0, a3, a4, a5, a6);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  ModelLoaderPtr = quasar::SystemConfig::getModelLoaderPtr(a2);
  v14 = *ModelLoaderPtr;
  v13 = ModelLoaderPtr[1];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(this + 17);
  *(this + 16) = v14;
  *(this + 17) = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_1B5098454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

uint64_t std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

BOOL quasar::PTree::isDict(quasar::PTree *this)
{
  if (*(this + 56))
  {
    return 0;
  }

  v2 = *(this + 4);
  if (v2 == *(this + 5))
  {
    return 1;
  }

  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    v3 = *(v2 + 8);
  }

  return v3 != 0;
}

uint64_t std::__tree<std::__value_type<std::string,quasar::SystemConfig::Version>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::SystemConfig::Version>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::SystemConfig::Version>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,quasar::SystemConfig::Version>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::SystemConfig::Version>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::SystemConfig::Version>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void quasar::LatticeRnnMitigator::finishInit(quasar::LatticeRnnMitigator *this)
{
  quasar::QsrTextSymbolTable::init(*(this + 57), (this + 32), 0, *(this + 449), 1);
  quasar::LatticeRnnMitigator::initArcFeatExtractors(this);
  v2 = *(this + 60);
  v3 = *(this + 61);
  while (v2 != v3)
  {
    v4 = *v2;
    v2 += 2;
    *(this + 178) += (*(*v4 + 16))(v4);
  }

  std::string::basic_string[abi:ne200100]<0>(v22, "|");
  quasar::splitAndTrimNoEmpty(this + 30, v22, __p);
  std::vector<std::string>::__vdeallocate(this + 32);
  *(this + 48) = *__p;
  *(this + 98) = v6;
  __p[1] = 0;
  *&v6 = 0;
  __p[0] = 0;
  v24 = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v24);
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (*(this + 96) == *(this + 97))
  {
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
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "filter-devices cannot be empty");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v22, "|");
    quasar::splitAndTrimNoEmpty(this + 31, v22, __p);
    std::vector<std::string>::__vdeallocate(this + 33);
    *(this + 792) = *__p;
    *(this + 101) = v6;
    __p[1] = 0;
    *&v6 = 0;
    __p[0] = 0;
    v24 = __p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v24);
    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    if (*(this + 99) != *(this + 100))
    {
      operator new();
    }

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
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "filter-input-origins cannot be empty");
  }

  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

void sub_1B5098950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1B8C85350](v14, v15);
  _Unwind_Resume(a1);
}

uint64_t quasar::QsrTextSymbolTable::init(const std::string *this, const quasar::SystemConfig::Version *a2, char a3, int a4, int a5)
{
  if (!this[5].__r_.__value_.__l.__size_)
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
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v18);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v18, "Model loader is deallocated");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v18);
  }

  std::string::basic_string[abi:ne200100]<0>(&v17, "");
  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (this->__r_.__value_.__l.__size_)
    {
      goto LABEL_4;
    }
  }

  else if (*(&this->__r_.__value_.__s + 23))
  {
LABEL_4:
    std::string::operator=(&v17, this);
    v10 = 1;
    goto LABEL_18;
  }

  if ((SHIBYTE(this[1].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (this[1].__r_.__value_.__l.__size_)
    {
      goto LABEL_8;
    }
  }

  else if (*(&this[1].__r_.__value_.__s + 23))
  {
LABEL_8:
    std::string::operator=(&v17, this + 1);
    v10 = 2;
    goto LABEL_18;
  }

  if ((SHIBYTE(this[2].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (this[2].__r_.__value_.__l.__size_)
    {
      goto LABEL_12;
    }
  }

  else if (*(&this[2].__r_.__value_.__s + 23))
  {
LABEL_12:
    std::string::operator=(&v17, this + 2);
    v10 = 3;
    goto LABEL_18;
  }

  size = SHIBYTE(this[3].__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this[3].__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::operator=(&v17, this + 3);
    v10 = 4;
LABEL_18:
    quasar::ModelLoader::readSymbolTable(this[5].__r_.__value_.__l.__size_, &v17, v10, a4, &v18);
    v12 = v18;
    v18 = 0uLL;
    v13 = this[4].__r_.__value_.__l.__size_;
    *&this[4].__r_.__value_.__l.__data_ = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      if (*(&v18 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
      }
    }

    if (a3)
    {
      v14 = 3;
    }

    else
    {
      quasar::result_handler::Range::Range(&v18, 79, 0);
      if (quasar::SystemConfig::Version::operator>=(a2, &v18))
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }
    }

    LODWORD(this[4].__r_.__value_.__r.__words[2]) = v14;
    v15 = 1;
    goto LABEL_27;
  }

  if (a5)
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
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "No word symbol table file specified.", 36);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v18);
  }

  v15 = 0;
LABEL_27:
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return v15;
}

void sub_1B5098BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::LatticeRnnMitigator::initArcFeatExtractors(const std::string *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, ",");
  quasar::splitAndTrimNoEmpty(this + 28, __p, v70);
  if (SBYTE7(v47) < 0)
  {
    operator delete(__p[0]);
  }

  std::vector<std::shared_ptr<quasar::LmeContainer>>::clear[abi:ne200100](&this[20]);
  v2 = v70[0];
  if (v70[0] != v70[1])
  {
    v69 = 0uLL;
    v3 = *(v70[0] + 23);
    if ((v3 & 0x80) != 0)
    {
      if (*(v70[0] + 8) != 8 || **v70[0] != 0x45524F43535F4341)
      {
        if (*(v70[0] + 8) != 7 || (**v70[0] == 1130316609 ? (v5 = *(*v70[0] + 3) == 1414745923) : (v5 = 0), !v5))
        {
          if (*(v70[0] + 8) != 13)
          {
            goto LABEL_25;
          }

          v4 = *v70[0];
LABEL_18:
          v6 = *v4;
          v7 = *(v4 + 5);
          if (v6 == 0x505F464F5F474142 && v7 == 0x53454E4F48505F46)
          {
            std::allocate_shared[abi:ne200100]<quasar::WlatArcFeBagOfPhones,std::allocator<quasar::WlatArcFeBagOfPhones>,std::string &,std::string &,BOOL &,0>();
          }

LABEL_25:
          v9 = std::string::basic_string[abi:ne200100]<0>(&v66, "KEYWORD");
          v10 = std::string::append(v9, ":");
          v11 = *&v10->__r_.__value_.__l.__data_;
          *&v47 = *(&v10->__r_.__value_.__l + 2);
          *__p = v11;
          v10->__r_.__value_.__l.__size_ = 0;
          v10->__r_.__value_.__r.__words[2] = 0;
          v10->__r_.__value_.__r.__words[0] = 0;
          v12 = quasar::startsWith(v2, __p);
          if (SBYTE7(v47) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v68) < 0)
          {
            operator delete(v66);
            if (v12)
            {
LABEL_29:
              v66 = 0;
              v67 = 0;
              v68 = 0;
              std::string::basic_string(__p, v2, 8uLL, 0xFFFFFFFFFFFFFFFFLL, v63);
              std::string::basic_string[abi:ne200100]<0>(v63, "|");
              quasar::splitAndTrimNoEmpty(__p, v63, v65);
              if (v64 < 0)
              {
                operator delete(v63[0]);
              }

              if (SBYTE7(v47) < 0)
              {
                operator delete(__p[0]);
              }

              v14 = v65[0];
              v13 = v65[1];
              while (v14 != v13)
              {
                v15 = quasar::QsrTextSymbolTable::Find(this[19].__r_.__value_.__l.__data_, v14);
                if (v15 == -1)
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
                  v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Cannot find symbol ID for ", 26);
                  v39 = *(v14 + 23);
                  if (v39 >= 0)
                  {
                    v40 = v14;
                  }

                  else
                  {
                    v40 = *v14;
                  }

                  if (v39 >= 0)
                  {
                    v41 = *(v14 + 23);
                  }

                  else
                  {
                    v41 = *(v14 + 8);
                  }

                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v40, v41);
                  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
                }

                v16 = v67;
                if (v67 >= v68)
                {
                  v18 = v66;
                  v19 = v67 - v66;
                  v20 = (v67 - v66) >> 2;
                  v21 = v20 + 1;
                  if ((v20 + 1) >> 62)
                  {
                    std::vector<int>::__throw_length_error[abi:ne200100]();
                  }

                  v22 = v68 - v66;
                  if ((v68 - v66) >> 1 > v21)
                  {
                    v21 = v22 >> 1;
                  }

                  v23 = v22 >= 0x7FFFFFFFFFFFFFFCLL;
                  v24 = 0x3FFFFFFFFFFFFFFFLL;
                  if (!v23)
                  {
                    v24 = v21;
                  }

                  if (v24)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v66, v24);
                  }

                  *(4 * v20) = v15;
                  v17 = 4 * v20 + 4;
                  memcpy(0, v18, v19);
                  v25 = v66;
                  v66 = 0;
                  v67 = v17;
                  v68 = 0;
                  if (v25)
                  {
                    operator delete(v25);
                  }
                }

                else
                {
                  *v67 = v15;
                  v17 = (v16 + 4);
                }

                v67 = v17;
                v14 += 24;
              }

              std::allocate_shared[abi:ne200100]<quasar::WlatArcFeKeyword,std::allocator<quasar::WlatArcFeKeyword>,std::vector<int> &,0>();
            }
          }

          else if (v12)
          {
            goto LABEL_29;
          }

          v26 = *(v2 + 23);
          if (*(v2 + 23) < 0)
          {
            if (*(v2 + 8) != 8 || **v2 != 0x45524F43535F4D4CLL)
            {
              if (*(v2 + 8) != 10 || (**v2 == 0x4F435F4850415247 ? (v30 = *(*v2 + 8) == 21587) : (v30 = 0), !v30))
              {
                if (*(v2 + 8) != 10 || (**v2 == 0x4D4152465F4D554ELL ? (v31 = *(*v2 + 8) == 21317) : (v31 = 0), !v31))
                {
                  if (*(v2 + 8) == 13)
                  {
                    if (**v2 == 0x54534F505F474F4CLL && *(*v2 + 5) == 0x524F49524554534FLL)
                    {
                      goto LABEL_107;
                    }

                    if ((v26 & 0x80) == 0)
                    {
                      v28 = v2;
                      if (v26 != 13)
                      {
                        goto LABEL_118;
                      }

                      goto LABEL_101;
                    }
                  }

                  if (*(v2 + 8) != 13)
                  {
                    goto LABEL_118;
                  }

                  v28 = *v2;
                  goto LABEL_101;
                }

LABEL_108:
                operator new();
              }
            }
          }

          else
          {
            switch(v26)
            {
              case 8:
                if (*v2 != 0x45524F43535F4D4CLL)
                {
                  goto LABEL_118;
                }

                break;
              case 10:
                if (*v2 != 0x4F435F4850415247 || *(v2 + 8) != 21587)
                {
                  if (*v2 != 0x4D4152465F4D554ELL || *(v2 + 8) != 21317)
                  {
                    goto LABEL_118;
                  }

                  goto LABEL_108;
                }

                break;
              case 13:
                v27 = *v2 == 0x54534F505F474F4CLL && *(v2 + 5) == 0x524F49524554534FLL;
                v28 = v2;
                if (!v27)
                {
LABEL_101:
                  v35 = *v28;
                  v36 = *(v28 + 5);
                  if (v35 == 0x54534F505F4E494CLL && v36 == 0x524F49524554534FLL)
                  {
                    operator new();
                  }

LABEL_118:
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
                  v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unknown feature type: ", 22);
                  v43 = *(v2 + 23);
                  if (v43 >= 0)
                  {
                    v44 = v2;
                  }

                  else
                  {
                    v44 = *v2;
                  }

                  if (v43 >= 0)
                  {
                    v45 = *(v2 + 23);
                  }

                  else
                  {
                    v45 = *(v2 + 8);
                  }

                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v44, v45);
                  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
                }

LABEL_107:
                operator new();
              default:
                goto LABEL_118;
            }
          }

          operator new();
        }
      }
    }

    else if (v3 == 7)
    {
      if (*v70[0] != 1130316609 || *(v70[0] + 3) != 1414745923)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v3 != 8)
      {
        v4 = v70[0];
        if (v3 != 13)
        {
          goto LABEL_25;
        }

        goto LABEL_18;
      }

      if (*v70[0] != 0x45524F43535F4341)
      {
        goto LABEL_25;
      }
    }

    operator new();
  }

  __p[0] = v70;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1B50995AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 - 176);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  v11 = *(v9 - 152);
  if (v11)
  {
    *(v9 - 144) = v11;
    operator delete(v11);
  }

  v12 = *(v9 - 120);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  a9 = (v9 - 112);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

BOOL quasar::SystemConfig::Version::operator>=(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0;
  }

  if (*a1 == *a2)
  {
    return a1[1] >= a2[1];
  }

  return 1;
}

void kaldi::nnet1::Nnet::Nnet(kaldi::nnet1::Nnet *this)
{
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  operator new();
}

void sub_1B50997DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = *(v10 + 352);
  if (v14)
  {
    *(v10 + 360) = v14;
    operator delete(v14);
  }

  kaldi::nnet1::Nnet::Nnet(v10);
  v15 = *(v10 + 280);
  if (v15)
  {
    *(v10 + 288) = v15;
    operator delete(v15);
  }

  a10 = (v10 + 256);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  kaldi::CuVector<float>::~CuVector(v12);
  kaldi::CuVector<float>::~CuVector(v11);
  v16 = *(v10 + 168);
  if (v16)
  {
    operator delete(v16);
  }

  a10 = (v10 + 120);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 72);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v17 = *(v10 + 48);
  if (v17)
  {
    *(v10 + 56) = v17;
    operator delete(v17);
  }

  v18 = *(v10 + 24);
  if (v18)
  {
    *(v10 + 32) = v18;
    operator delete(v18);
  }

  v19 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void sub_1B5099980(_Unwind_Exception *a1)
{
  std::__tree<int>::destroy(v1 + 384, *v2);
  kaldi::nnet1::Nnet::~Nnet((v1 + 8));
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<quasar::WlatArcFeBagOfPhones>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::string &,BOOL &,std::allocator<quasar::WlatArcFeBagOfPhones>,0>(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D03960;
  quasar::WlatArcFeBagOfPhones::WlatArcFeBagOfPhones(a1 + 3, a2, a3, *a4);
  return a1;
}

void kaldi::nnet1::Nnet::ResetBuffersAndStates(kaldi::nnet1::Nnet *this)
{
  kaldi::nnet1::Nnet::ResetInternalBuffers(this);

  kaldi::nnet1::Nnet::ResetRecurrentFlag(this);
}

void std::vector<std::vector<kaldi::CuMatrix<float>>>::__append(const void **a1, unint64_t a2)
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
    std::__split_buffer<std::vector<kaldi::CuMatrix<float>>>::~__split_buffer(v18);
  }
}

double kaldi::nnet1::NnetCorrPacker::NnetCorrPacker(kaldi::nnet1::NnetCorrPacker *this)
{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = -1082130432;
  return result;
}

void **std::__split_buffer<std::vector<kaldi::CuMatrix<float>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<kaldi::CuMatrix<float>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<kaldi::CuMatrix<float>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void kaldi::nnet1::Nnet::Read(kaldi::nnet1::Nnet *a1, uint64_t a2, int a3)
{
  if (a3)
  {
    fst::FstReadOptions::FstReadOptions(__p, a2, 0, 0, 0);
    v5 = 2;
    kaldi::nnet1::Nnet::ReadMapped(a1, __p);
  }

  kaldi::nnet1::Nnet::Read(a1, a2);
}

void sub_1B5099CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::AffineTransform::AffineTransform(kaldi::nnet1::AffineTransform *this, int a2, int a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 2) = 0u;
  *(this + 6) = &unk_1F2D279F8;
  *(this + 56) = xmmword_1B5AE0070;
  *(this + 18) = -1082130432;
  *(this + 76) = 0x100000003;
  *(this + 42) = 0;
  *(this + 86) = 0;
  *this = &unk_1F2D27AC8;
  *(this + 11) = &unk_1F2D27C08;
  *(this + 12) = &unk_1F2D27C30;
  *(this + 13) = &unk_1F2D27C58;
  operator new();
}

void sub_1B5099F14(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v5, 0x1081C4072235B19);
  v7 = *(v1 + 14);
  *(v1 + 14) = 0;
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  quasar::Bitmap::~Bitmap(v4);
  quasar::Bitmap::~Bitmap(v3);
  quasar::Bitmap::~Bitmap(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v1);
  _Unwind_Resume(a1);
}

int32x2_t *kaldi::CuMatrix<float>::CuMatrix(int32x2_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a5;
  *a1 = &unk_1F2D0EE38;
  a1[5].i8[0] = 0;
  kaldi::CuMatrix<float>::Resize(a1, a2, a3, a4, a6);
  return a1;
}

uint64_t kaldi::nnet1::AffineTransform::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  while (kaldi::Peek(a2, a3) == 60)
  {
    memset(v33, 0, 24);
    kaldi::ReadToken(a2, a3, v33);
    if (SHIBYTE(v33[2]) < 0)
    {
      if (v33[1] != 15 || (*v33[0] == 0x61526E7261654C3CLL ? (v9 = *(v33[0] + 7) == 0x3E66656F43657461) : (v9 = 0), v8 = (a1 + 236), !v9))
      {
        if (v33[1] != 19 || (*v33[0] == 0x61654C736169423CLL ? (v10 = *(v33[0] + 1) == 0x6F43657461526E72) : (v10 = 0), v10 ? (v11 = *(v33[0] + 11) == 0x3E66656F43657461) : (v11 = 0), v8 = (a1 + 240), !v11))
        {
          if (v33[1] == 18)
          {
            if (*v33[0] == 0x6E6569646172473CLL && *(v33[0] + 1) == 0x7079546D726F4E74 && *(v33[0] + 8) == 15973)
            {
              goto LABEL_83;
            }

LABEL_38:
            if (v33[1] != 9)
            {
              goto LABEL_86;
            }

            v15 = v33[0];
            v16 = *v33[0] == 0x6461724778614D3CLL && *(v33[0] + 8) == 62;
            v8 = (a1 + 248);
            if (!v16)
            {
              goto LABEL_64;
            }

            goto LABEL_70;
          }

          if (v33[1] != 9)
          {
            goto LABEL_38;
          }

          v12 = *v33[0] == 0x6D726F4E78614D3CLL && *(v33[0] + 8) == 62;
          v8 = (a1 + 252);
          if (!v12)
          {
            goto LABEL_38;
          }
        }
      }
    }

    else if (HIBYTE(v33[2]) > 0x11u)
    {
      if (HIBYTE(v33[2]) == 18)
      {
        if (v33[0] != 0x6E6569646172473CLL || v33[1] != 0x7079546D726F4E74 || LOWORD(v33[2]) != 15973)
        {
LABEL_86:
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
          if (SHIBYTE(v33[2]) >= 0)
          {
            v28 = v33;
          }

          else
          {
            v28 = v33[0];
          }

          if (SHIBYTE(v33[2]) >= 0)
          {
            v29 = HIBYTE(v33[2]);
          }

          else
          {
            v29 = v33[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
        }

LABEL_83:
        __p[0] = 0;
        __p[1] = 0;
        v32 = 0;
        kaldi::ReadToken(a2, a3, __p);
        *(a1 + 244) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_71;
      }

      if (HIBYTE(v33[2]) != 19)
      {
        goto LABEL_86;
      }

      v17 = v33[0] == 0x61654C736169423CLL && v33[1] == 0x6F43657461526E72;
      v18 = v17 && *(&v33[1] + 3) == 0x3E66656F43657461;
      v8 = (a1 + 240);
      if (!v18)
      {
        goto LABEL_86;
      }
    }

    else if (HIBYTE(v33[2]) == 9)
    {
      v19 = v33[0] == 0x6D726F4E78614D3CLL && LOBYTE(v33[1]) == 62;
      v8 = (a1 + 252);
      if (!v19)
      {
        v20 = v33[0] == 0x6461724778614D3CLL && LOBYTE(v33[1]) == 62;
        v8 = (a1 + 248);
        if (!v20)
        {
          v15 = v33;
LABEL_64:
          v21 = *v15;
          v22 = *(v15 + 8);
          if (v21 != 0x78616D74666F533CLL || v22 != 62)
          {
            goto LABEL_86;
          }

          *(a1 + 128) = 1;
          goto LABEL_71;
        }
      }
    }

    else
    {
      if (HIBYTE(v33[2]) != 15)
      {
        goto LABEL_86;
      }

      v7 = v33[0] == 0x61526E7261654C3CLL && *(v33 + 7) == 0x3E66656F43657461;
      v8 = (a1 + 236);
      if (!v7)
      {
        goto LABEL_86;
      }
    }

LABEL_70:
    kaldi::ReadBasicType<float>(a2, a3, v8);
LABEL_71:
    if (SHIBYTE(v33[2]) < 0)
    {
      operator delete(v33[0]);
    }
  }

  (***(a1 + 112))(*(a1 + 112), a2, a3, a4);
  (***(a1 + 120))();
  *(a1 + 16) = 0;
  kaldi::nnet1::AffineTransform::Linearity(a1);
  kaldi::nnet1::AffineTransform::Linearity(a1);
  return kaldi::nnet1::AffineTransform::Bias(a1);
}

void sub_1B509A4A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 - 89) < 0)
  {
    operator delete(*(v16 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::CuMatrix<float>::Read(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  kaldi::Matrix<float>::Matrix(&v12, *(a1 + 20), *(a1 + 16), 1, *(a1 + 24) == *(a1 + 16));
  kaldi::Matrix<float>::Read(&v12, a2, a3, 0, a4);
  v8 = *(a1 + 8);
  if (v8 && (*(a1 + 40) & 1) == 0)
  {
    free(v8);
  }

  *(a1 + 8) = v12;
  v9 = v13;
  v12 = 0;
  v13 = 0uLL;
  *(a1 + 16) = v9;
  v10 = v14;
  v14 = *(a1 + 40);
  *(a1 + 40) = v10;
  return kaldi::Matrix<float>::~Matrix(&v12);
}

void sub_1B509A590(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void kaldi::Matrix<float>::Read(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = a3;
  v90 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v80 = 0;
    *v78 = 0u;
    v79 = 0u;
    kaldi::Matrix<float>::Read(v78, a2, a3, 0, a5, 0.0);
    v9 = *(a1 + 12);
    if (v9)
    {
      if (v9 != HIDWORD(v78[1]))
      {
        if (HIDWORD(v78[1]))
        {
          goto LABEL_130;
        }

        goto LABEL_16;
      }

      if (*(a1 + 8) != LODWORD(v78[1]))
      {
LABEL_130:
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v86);
        v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, "Matrix::Read, size mismatch ", 28);
        v58 = MEMORY[0x1B8C84C00](v57, *(a1 + 12));
        v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ", ", 2);
        v60 = MEMORY[0x1B8C84C00](v59, *(a1 + 8));
        v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, " vs. ", 5);
        v62 = MEMORY[0x1B8C84C00](v61, HIDWORD(v78[1]));
        v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, ", ", 2);
        MEMORY[0x1B8C84C00](v63, LODWORD(v78[1]));
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v86);
      }
    }

    else
    {
      kaldi::Matrix<float>::Resize(a1, HIDWORD(v78[1]), LODWORD(v78[1]), 0, 0);
    }

    kaldi::MatrixBase<float>::AddMat(a1, v78, 111, 1.0, 1.0);
LABEL_16:
    if (v78[0])
    {
      if ((v80 & 1) == 0)
      {
        free(v78[0]);
      }
    }

    return;
  }

  std::istream::tellg();
  v10 = v89;
  std::ostringstream::basic_ostringstream[abi:ne200100](v78);
  if (!v6)
  {
    memset(&v84, 0, sizeof(v84));
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v84);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, ": Expected [, got EOF", 23);
LABEL_92:
      v40 = 2;
      goto LABEL_93;
    }

    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v84.__r_.__value_.__l.__size_ == 2 && *v84.__r_.__value_.__l.__data_ == 23899)
      {
        goto LABEL_112;
      }

      if (v84.__r_.__value_.__l.__size_ != 1)
      {
LABEL_85:
        v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, ": Expected [, got ", 21);
        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = &v84;
        }

        else
        {
          v37 = v84.__r_.__value_.__r.__words[0];
        }

        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v84.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v84.__r_.__value_.__l.__size_;
        }

        v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v37, size);
        LOBYTE(v86[0]) = 34;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, v86, 1);
        goto LABEL_92;
      }

      v26 = v84.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (HIBYTE(v84.__r_.__value_.__r.__words[2]) != 1)
      {
        if (HIBYTE(v84.__r_.__value_.__r.__words[2]) == 2 && LOWORD(v84.__r_.__value_.__l.__data_) == 23899)
        {
LABEL_112:
          kaldi::Matrix<float>::Resize(a1, 0, 0, 0, 0);
          v40 = 1;
LABEL_93:
          if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v84.__r_.__value_.__l.__data_);
          }

          if ((v40 | 2) != 2)
          {
            goto LABEL_126;
          }

          goto LABEL_96;
        }

        goto LABEL_85;
      }

      v26 = &v84;
    }

    if (v26->__r_.__value_.__s.__data_[0] == 91)
    {
      __p = 0;
      v76 = 0;
      v77 = 0;
      operator new();
    }

    goto LABEL_85;
  }

  v11 = kaldi::Peek(a2, 1);
  if (v11 == 68)
  {
    if (a5)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, "Can not map into the wrong matrix data type", 43);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v86);
    }

    v15 = *(a1 + 8);
    v14 = *(a1 + 12);
    *v86 = 0u;
    v87 = 0u;
    v88 = 0;
    kaldi::Matrix<double>::Resize(v86, v14, v15, 0, 0);
    kaldi::Matrix<double>::Read(v86, a2, 1, 0, 0);
    kaldi::Matrix<float>::Resize(a1, HIDWORD(v86[1]), LODWORD(v86[1]), 0, 0);
    kaldi::MatrixBase<float>::CopyFromMat<double>(a1, v86, 111);
    if (v86[0] && (v88 & 1) == 0)
    {
      free(v86[0]);
    }

    goto LABEL_126;
  }

  if (v11 != 67)
  {
    memset(&v84, 0, sizeof(v84));
    std::string::append(&v84, "F");
    v16 = a5 != 0;
    if (a5)
    {
      v17 = "N";
    }

    else
    {
      v17 = "M";
    }

    std::string::append(&v84, v17);
    __p = 0;
    v76 = 0;
    v77 = 0;
    kaldi::ReadToken(a2, 1, &__p);
    v18 = SHIBYTE(v77);
    v19 = v76;
    if (v77 >= 0)
    {
      v20 = HIBYTE(v77);
    }

    else
    {
      v20 = v76;
    }

    v21 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
    v22 = SHIBYTE(v84.__r_.__value_.__r.__words[2]);
    if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v21 = v84.__r_.__value_.__l.__size_;
    }

    if (v20 == v21)
    {
      v23 = v77 >= 0 ? &__p : __p;
      v24 = (v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v84 : v84.__r_.__value_.__r.__words[0];
      if (!memcmp(v23, v24, v20))
      {
LABEL_64:
        LODWORD(v72) = 0;
        LODWORD(v73) = 0;
        v74 = 0;
        kaldi::ReadBasicType<int>(a2, 1, &v72);
        kaldi::ReadBasicType<int>(a2, 1, &v73);
        if (v16)
        {
          kaldi::ReadBasicType<int>(a2, 1, &v74);
          fst::AlignInput();
        }

        else
        {
          v74 = v73;
        }

        v30 = v72;
        if (a5)
        {
          *(a1 + 8) = v73;
          *(a1 + 12) = v30;
          *(a1 + 16) = v74;
          if (*a1 && (*(a1 + 32) & 1) == 0)
          {
            free(*a1);
          }

          std::istream::tellg();
          *a1 = a5 + v89;
          *(a1 + 32) = 1;
          std::istream::seekg();
          v31 = *a2;
          if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, ": Seeking failed", 16);
LABEL_120:
            v52 = 1;
            goto LABEL_121;
          }
        }

        else
        {
          v32 = v73;
          if (v72 == *(a1 + 12) && v73 == *(a1 + 8))
          {
            v33 = v73;
          }

          else
          {
            kaldi::Matrix<float>::Resize(a1, v72, v73, 1, 0);
            v33 = *(a1 + 8);
            v32 = v73;
            v30 = v72;
          }

          v34 = *(a1 + 16);
          v35 = v74;
          if (v34 == v33 && v34 == v74 && v32 * v30)
          {
            std::istream::read();
            v31 = *a2;
            if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
            {
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, ": Reading whole matrix failed", 29);
              goto LABEL_120;
            }
          }

          else
          {
            if (v30 > 0)
            {
              v48 = 0;
              v49 = 4 * (v74 - v32);
              v50 = a2 + 4;
              while (1)
              {
                std::istream::read();
                v31 = *a2;
                if ((*(v50 + *(*a2 - 24)) & 5) != 0)
                {
                  v53 = v78;
                  v54 = 29;
                  v55 = ": Reading a matrix row failed";
                  goto LABEL_119;
                }

                if (v35 != v32)
                {
                  std::istream::seekg();
                  v31 = *a2;
                  if ((*(v50 + *(*a2 - 24)) & 5) != 0)
                  {
                    break;
                  }
                }

                if (++v48 >= v72)
                {
                  goto LABEL_114;
                }
              }

              v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, ": Seek for padding ", 19);
              v53 = MEMORY[0x1B8C84C30](v56, v49);
              v55 = " failed";
              v54 = 7;
LABEL_119:
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v55, v54);
              goto LABEL_120;
            }

            v31 = *a2;
          }
        }

LABEL_114:
        v51 = *(a2 + *(v31 - 24) + 32);
        v52 = (v51 & 2) == 0 && (v51 & 5) != 0;
LABEL_121:
        if (SHIBYTE(v77) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }

        if (!v52)
        {
          goto LABEL_126;
        }

LABEL_96:
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v86);
        v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, "Failed to read matrix from stream.  ", 36);
        std::stringbuf::str();
        if (v77 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v77 >= 0)
        {
          v43 = HIBYTE(v77);
        }

        else
        {
          v43 = v76;
        }

        v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, p_p, v43);
        v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, " File position at start is ", 27);
        v46 = MEMORY[0x1B8C84C00](v45, v10);
        v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, ", currently ", 12);
        std::istream::tellg();
        MEMORY[0x1B8C84C60](v47, v85);
        if (SHIBYTE(v77) < 0)
        {
          operator delete(__p);
        }

        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v86);
      }
    }

    if (v18 < 0)
    {
      if (v19 != 2)
      {
        goto LABEL_131;
      }

      v25 = __p;
    }

    else
    {
      if (v18 != 2)
      {
        goto LABEL_131;
      }

      v25 = &__p;
    }

    v27 = *v25;
    v28 = v84.__r_.__value_.__r.__words[0];
    if (v22 >= 0)
    {
      v28 = &v84;
    }

    if (v27 == v28->__r_.__value_.__s.__data_[0])
    {
      v29 = __p;
      if (v18 >= 0)
      {
        v29 = &__p;
      }

      if (v29[1] == 78)
      {
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v86);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, "Reading aligned matrix as a stream", 34);
          kaldi::KaldiLogMessage::~KaldiLogMessage(v86);
        }

        v16 = 1;
        goto LABEL_64;
      }
    }

LABEL_131:
    v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, ": Expected token ", 17);
    if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = &v84;
    }

    else
    {
      v65 = v84.__r_.__value_.__r.__words[0];
    }

    if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v66 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v66 = v84.__r_.__value_.__l.__size_;
    }

    v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, v65, v66);
    v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, ", got ", 6);
    if (v77 >= 0)
    {
      v69 = &__p;
    }

    else
    {
      v69 = __p;
    }

    if (v77 >= 0)
    {
      v70 = HIBYTE(v77);
    }

    else
    {
      v70 = v76;
    }

    v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, v69, v70);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, ". This could mean that you're trying to memory map an unaligned file.", 69);
    if (SHIBYTE(v77) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }

    goto LABEL_96;
  }

  v86[0] = 0;
  LOBYTE(v86[1]) = 0;
  kaldi::CompressedMatrix::Read(v86, a2, 1, a5);
  if (v86[0])
  {
    v12 = *(v86[0] + 2);
    v13 = *(v86[0] + 3);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  kaldi::Matrix<float>::Resize(a1, v12, v13, 0, 0);
  kaldi::CompressedMatrix::CopyToMat<float>(v86, a1);
  kaldi::CompressedMatrix::Destroy(v86);
LABEL_126:
  v78[0] = *MEMORY[0x1E69E54E8];
  *(v78 + *(v78[0] - 3)) = *(MEMORY[0x1E69E54E8] + 24);
  v78[1] = (MEMORY[0x1E69E5548] + 16);
  if (v82 < 0)
  {
    operator delete(v81);
  }

  v78[1] = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(&v79);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&v83);
}

void sub_1B509B914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a67)
  {
    if ((a71 & 1) == 0)
    {
      free(a67);
    }
  }

  JUMPOUT(0x1B509B9A0);
}

void sub_1B509B950(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  std::ostringstream::~ostringstream(&a20);
  JUMPOUT(0x1B509B9CCLL);
}

void sub_1B509B9B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17)
  {
    if ((a21 & 1) == 0)
    {
      free(a17);
    }
  }

  _Unwind_Resume(exception_object);
}

void quasar::WlatArcFeBagOfPhones::ReadPd2PiFile(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v21 = 0;
  if ((kaldi::Input::OpenInternal(&v21, a1, 0, 0) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "Cannot phone pd2pi file ", 24);
    v13 = *(a1 + 23);
    if (v13 >= 0)
    {
      v14 = a1;
    }

    else
    {
      v14 = *a1;
    }

    if (v13 >= 0)
    {
      v15 = *(a1 + 23);
    }

    else
    {
      v15 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v20);
  }

  v4 = kaldi::Input::Stream(&v21);
  memset(&__p, 0, sizeof(__p));
  v5 = MEMORY[0x1E69E5318];
  while (1)
  {
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v6 = std::locale::use_facet(&v20, v5);
    v7 = (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(&v20);
    v8 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v4, &__p, v7);
    if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
    {
      break;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    kaldi::SplitStringToVector(&__p, " ", 1, &v16);
    if (v16 != v17)
    {
      if (v17 - v16 != 48)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "Malformed phone pd2pi file line=", 32);
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

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, p_p, size);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v20);
      }

      LODWORD(v20.__locale_) = std::stoi(v16, 0, 10);
      HIDWORD(v20.__locale_) = std::stoi(v16 + 1, 0, 10);
      std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(a2, &v20);
    }

    v20.__locale_ = &v16;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v20);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::Input::~Input(&v21);
}

void sub_1B509BC50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, std::locale a19)
{
  a19.__locale_ = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  kaldi::Input::~Input((v20 - 72));
  std::__tree<int>::destroy(v19, *(v19 + 8));
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(uint64_t a1, int *a2)
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

uint64_t quasar::QsrTextSymbolTable::Find(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 112) == 2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    quasar::QsrText::SingletonInstance(a1);
    quasar::QsrText::qsrSubTokenToHatToken();
  }

  v3 = (*(**(a1 + 96) + 96))(*(a1 + 96), a2);
  v4 = v3;
  if ((v3 & 0x8000000000000000) == 0)
  {
    return *(a1 + 120) + v3;
  }

  return v4;
}

void sub_1B509BEEC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_1B509C140(_Unwind_Exception *a1)
{
  kaldi::nnet1::Nnet::~Nnet((v1 + 1504));
  kaldi::nnet1::Nnet::~Nnet((v1 + 1128));
  kaldi::nnet1::Nnet::~Nnet((v1 + 752));
  kaldi::nnet1::Nnet::~Nnet((v1 + 376));
  kaldi::nnet1::Nnet::~Nnet(v1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearTransform(uint64_t a1, int a2, int a3)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = &unk_1F2D279F8;
  *(a1 + 56) = xmmword_1B5AE0070;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = &unk_1F2D0C578;
  *(a1 + 88) = &unk_1F2D0C6B0;
  *(a1 + 96) = &unk_1F2D0C6D8;
  operator new();
}

void sub_1B509C2E4(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v4, 0x1081C40CC61A6CELL);
  quasar::Bitmap::~Bitmap(v3);
  quasar::Bitmap::~Bitmap(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  while (kaldi::Peek(a2, a3) == 60)
  {
    v25 = 0uLL;
    v26 = 0;
    kaldi::ReadToken(a2, a3, &v25);
    if (SHIBYTE(v26) < 0)
    {
      if (*(&v25 + 1) != 15 || (*v25 == 0x61526E7261654C3CLL ? (v9 = *(v25 + 7) == 0x3E66656F43657461) : (v9 = 0), v10 = (a1 + 168), !v9))
      {
        if (*(&v25 + 1) == 18)
        {
          v11 = *v25 == 0x6E6569646172473CLL && *(v25 + 8) == 0x7079546D726F4E74;
          if (v11 && *(v25 + 16) == 15973)
          {
            goto LABEL_29;
          }
        }

        if (*(&v25 + 1) != 9)
        {
          goto LABEL_47;
        }

        v13 = v25;
        goto LABEL_37;
      }
    }

    else
    {
      if (HIBYTE(v26) == 9)
      {
        v13 = &v25;
LABEL_37:
        v15 = *v13;
        v16 = *(v13 + 8);
        v17 = v15 == 0x6461724778614D3CLL && v16 == 62;
        v10 = (a1 + 164);
        if (!v17)
        {
LABEL_47:
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
          if (v26 >= 0)
          {
            v20 = &v25;
          }

          else
          {
            v20 = v25;
          }

          if (v26 >= 0)
          {
            v21 = HIBYTE(v26);
          }

          else
          {
            v21 = *(&v25 + 1);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
        }

        goto LABEL_42;
      }

      if (HIBYTE(v26) != 15)
      {
        if (HIBYTE(v26) != 18)
        {
          goto LABEL_47;
        }

        v7 = v25 == 0x6E6569646172473CLL && *(&v25 + 1) == 0x7079546D726F4E74;
        if (!v7 || v26 != 15973)
        {
          goto LABEL_47;
        }

LABEL_29:
        __p[0] = 0;
        __p[1] = 0;
        v24 = 0;
        kaldi::ReadToken(a2, a3, __p);
        *(a1 + 160) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_43;
      }

      v14 = v25 == 0x61526E7261654C3CLL && *(&v25 + 7) == 0x3E66656F43657461;
      v10 = (a1 + 168);
      if (!v14)
      {
        goto LABEL_47;
      }
    }

LABEL_42:
    kaldi::ReadBasicType<float>(a2, a3, v10);
LABEL_43:
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }
  }

  result = (***(a1 + 104))(*(a1 + 104), a2, a3, a4);
  *(a1 + 16) = 0;
  return result;
}

void sub_1B509C5FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 - 89) < 0)
  {
    operator delete(*(v16 - 112));
  }

  _Unwind_Resume(exception_object);
}

kaldi::nnet1::Recurrent *kaldi::nnet1::Recurrent::Recurrent(kaldi::nnet1::Recurrent *this, uint64_t a2, uint64_t a3)
{
  *(this + 134) = a2;
  *(this + 135) = a3;
  *(this + 272) = 0;
  *(this + 69) = 0;
  *(this + 71) = 0;
  *(this + 70) = 0;
  *(this + 66) = &unk_1F2D172B0;
  *(this + 72) = &unk_1F2D279F8;
  *(this + 584) = xmmword_1B5AE0070;
  *(this + 75) = 0x3BF800000;
  *(this + 152) = 1;
  *(this + 306) = 0;
  *(this + 614) = 0;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(this, off_1F2D16E50);
  *this = &unk_1F2D16AE0;
  *(this + 66) = &unk_1F2D16D30;
  kaldi::CuMatrix<float>::CuMatrix(this + 20, a3, a2, 1, 0, 0);
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 26) = &unk_1F2D3AC18;
  *(this + 29) = 0;
  kaldi::CuVector<float>::Resize(this + 208, a3, 1);
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 15) = 0u;
  *(this + 96) = 516;
  *(this + 194) = 0;
  __asm { FMOV            V1.2S, #1.0 }

  *(this + 49) = _D1;
  *(this + 100) = 0;
  *(this + 52) = 0;
  *(this + 53) = 0;
  *(this + 51) = 0;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 54) = &unk_1F2D0EE38;
  *(this + 472) = 0;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  return this;
}

void sub_1B509C7F4(_Unwind_Exception *a1)
{
  kaldi::CuMatrix<float>::~CuMatrix(v1 + 160);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v1, off_1F2D16E50);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
  _Unwind_Resume(a1);
}

double kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(kaldi::nnet1::RecurrentBaseComponent *this, uint64_t *a2)
{
  *this = &unk_1F2D16320;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = &unk_1F2D27A18;
  *(this + 10) = 1;
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 24)) = a2[1];
  *(this + 56) = xmmword_1B5AE0070;
  *(this + 18) = -1082130432;
  *(this + 76) = 0x100000003;
  *(this + 42) = 0;
  *(this + 86) = 0;
  *(this + 6) = &unk_1F2D27A38;
  *(this + 11) = &unk_1F2D27A58;
  *(this + 12) = 0x100000001;
  result = 0.0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 19) = 0;
  return result;
}

double kaldi::nnet1::Recurrent::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  while (kaldi::Peek(a2, a3) == 60)
  {
    memset(v34, 0, 24);
    kaldi::ReadToken(a2, a3, v34);
    if (SHIBYTE(v34[2]) < 0)
    {
      if (v34[1] != 15 || (*v34[0] == 0x61526E7261654C3CLL ? (v10 = *(v34[0] + 7) == 0x3E66656F43657461) : (v10 = 0), v9 = (a1 + 392), !v10))
      {
        if (v34[1] != 19 || (*v34[0] == 0x61654C736169423CLL ? (v11 = *(v34[0] + 1) == 0x6F43657461526E72) : (v11 = 0), v11 ? (v12 = *(v34[0] + 11) == 0x3E66656F43657461) : (v12 = 0), v9 = (a1 + 396), !v12))
        {
          if (v34[1] != 9)
          {
            if (v34[1] == 14 && *v34[0] == 0x656E696C6E6F4E3CLL && *(v34[0] + 6) == 0x3E7974697261656ELL)
            {
              goto LABEL_57;
            }

LABEL_39:
            if (v34[1] != 9)
            {
              if (v34[1] != 18 || (*v34[0] == 0x6E6569646172473CLL ? (v15 = *(v34[0] + 1) == 0x7079546D726F4E74) : (v15 = 0), v15 ? (v16 = *(v34[0] + 8) == 15973) : (v16 = 0), !v16))
              {
LABEL_89:
                kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
                v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "unrecognized config token ", 26);
                if (SHIBYTE(v34[2]) >= 0)
                {
                  v28 = v34;
                }

                else
                {
                  v28 = v34[0];
                }

                if (SHIBYTE(v34[2]) >= 0)
                {
                  v29 = HIBYTE(v34[2]);
                }

                else
                {
                  v29 = v34[1];
                }

                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
                kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
              }

              goto LABEL_71;
            }

            v17 = v34[0];
LABEL_79:
            v23 = *v17;
            v24 = *(v17 + 8);
            v25 = v23 == 0x6461724778614D3CLL && v24 == 62;
            v9 = (a1 + 152);
            if (!v25)
            {
              goto LABEL_89;
            }

            goto LABEL_84;
          }

          v14 = *v34[0] == 0x6D726F4E78614D3CLL && *(v34[0] + 8) == 62;
          v9 = (a1 + 400);
          if (!v14)
          {
            goto LABEL_39;
          }
        }
      }
    }

    else if (HIBYTE(v34[2]) <= 0xEu)
    {
      if (HIBYTE(v34[2]) != 9)
      {
        if (HIBYTE(v34[2]) != 14)
        {
          goto LABEL_89;
        }

        if (v34[0] != 0x656E696C6E6F4E3CLL || *(v34 + 6) != 0x3E7974697261656ELL)
        {
          goto LABEL_89;
        }

LABEL_57:
        __p = 0;
        v32 = 0;
        v33 = 0;
        kaldi::ReadToken(a2, a3, &__p);
        *(a1 + 384) = kaldi::nnet1::Component::MarkerToComponentType(&__p);
LABEL_72:
        if (SHIBYTE(v33) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_85;
      }

      v22 = v34[0] == 0x6D726F4E78614D3CLL && LOBYTE(v34[1]) == 62;
      v9 = (a1 + 400);
      if (!v22)
      {
        v17 = v34;
        goto LABEL_79;
      }
    }

    else
    {
      switch(HIBYTE(v34[2]))
      {
        case 0xFu:
          v19 = v34[0] == 0x61526E7261654C3CLL && *(v34 + 7) == 0x3E66656F43657461;
          v9 = (a1 + 392);
          if (!v19)
          {
            goto LABEL_89;
          }

          break;
        case 0x12u:
          if (v34[0] != 0x6E6569646172473CLL || v34[1] != 0x7079546D726F4E74 || LOWORD(v34[2]) != 15973)
          {
            goto LABEL_89;
          }

LABEL_71:
          __p = 0;
          v32 = 0;
          v33 = 0;
          kaldi::ReadToken(a2, a3, &__p);
          *(a1 + 156) = kaldi::nnet1::Component::MarkerToGradientNormType(&__p);
          goto LABEL_72;
        case 0x13u:
          v7 = v34[0] == 0x61654C736169423CLL && v34[1] == 0x6F43657461526E72;
          v8 = v7 && *(&v34[1] + 3) == 0x3E66656F43657461;
          v9 = (a1 + 396);
          if (!v8)
          {
            goto LABEL_89;
          }

          break;
        default:
          goto LABEL_89;
      }
    }

LABEL_84:
    kaldi::ReadBasicType<float>(a2, a3, v9);
LABEL_85:
    if (SHIBYTE(v34[2]) < 0)
    {
      operator delete(v34[0]);
    }
  }

  kaldi::CuMatrix<float>::Read(a1 + 160, a2, a3, a4);
  return kaldi::CuVector<float>::Read(a1 + 208, a2, a3);
}

uint64_t *std::unique_ptr<kaldi::quasar::LatticeRnn>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    kaldi::nnet1::Nnet::~Nnet((v2 + 1504));
    kaldi::nnet1::Nnet::~Nnet((v2 + 1128));
    kaldi::nnet1::Nnet::~Nnet((v2 + 752));
    kaldi::nnet1::Nnet::~Nnet((v2 + 376));
    kaldi::nnet1::Nnet::~Nnet(v2);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void quasar::PTree::putChild(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 23);
  v6 = v5;
  v7 = *(a2 + 8);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (!v5)
  {
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
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    memset(__str, 0, sizeof(__str));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__str);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__str, "Use add() to append array elements");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__str);
  }

  v8 = a1;
  if (*(a1 + 56) == 1)
  {
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
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    memset(__str, 0, sizeof(__str));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__str);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__str, "Leaves can't have children");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__str);
  }

  memset(&v31, 0, sizeof(v31));
  v25 = a3;
  if (a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, ".");
    quasar::split(a2, &__p, 0, __str);
  }

  if (v6 < 0)
  {
    std::string::__init_copy_ctor_external(__str, *a2, v7);
  }

  else
  {
    *__str = *a2;
    *&__str[16] = *(a2 + 16);
  }

  std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>(&v31, __str, &__str[24], 1uLL);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  begin = v31.__begin_;
  end = v31.__end_;
  if (v31.__begin_ == v31.__end_)
  {
    goto LABEL_39;
  }

LABEL_13:
  v12 = *(v8 + 32);
  v13 = *(v8 + 40);
  if (v12 == v13)
  {
    goto LABEL_32;
  }

  v14 = SHIBYTE(begin->__r_.__value_.__r.__words[2]);
  if (v14 >= 0)
  {
    size = HIBYTE(begin->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = begin->__r_.__value_.__l.__size_;
  }

  v16 = (v12 + 80);
  while (1)
  {
    data = v16[-3].__r_.__value_.__s.__data_[15];
    v18 = data;
    if (data < 0)
    {
      data = v16[-3].__r_.__value_.__l.__data_;
    }

    if (data == size)
    {
      v19 = v18 >= 0 ? &v16[-4].__r_.__value_.__r.__words[2] : v16[-4].__r_.__value_.__r.__words[2];
      v20 = v14 >= 0 ? begin : begin->__r_.__value_.__r.__words[0];
      if (!memcmp(v19, v20, size))
      {
        break;
      }
    }

    v21 = &v16->__r_.__value_.__s.__data_[8];
    v16 = (v16 + 88);
    if (v21 == v13)
    {
      v22 = *(v12 + 23);
      if (v22 < 0)
      {
        v22 = *(v12 + 8);
      }

      if (!v22)
      {
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
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        memset(__str, 0, sizeof(__str));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__str);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__str, "Can't add a value dictionary-like to a tree that is already array-like", 70);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__str);
      }

LABEL_32:
      if (end == &begin[1])
      {
        std::pair<std::string,quasar::PTree>::pair[abi:ne200100]<std::string&,quasar::PTree const&,0>(__str, begin, v25);
        std::vector<std::pair<std::string,quasar::PTree>>::push_back[abi:ne200100](v8 + 32, __str);
        quasar::PTree::~PTree(&__str[24]);
        if ((__str[23] & 0x80000000) != 0)
        {
          operator delete(*__str);
        }

        goto LABEL_45;
      }

      LODWORD(__p) = 0;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0;
      std::pair<std::string,quasar::PTree>::pair[abi:ne200100]<std::string&,quasar::PTree,0>(__str, begin, &__p);
      std::vector<std::pair<std::string,quasar::PTree>>::push_back[abi:ne200100](v8 + 32, __str);
      quasar::PTree::~PTree(&__str[24]);
      if ((__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      quasar::PTree::~PTree(&__p);
      v8 = *(v8 + 40) - 64;
      end = v31.__end_;
LABEL_38:
      if (++begin == end)
      {
LABEL_39:
        exception = __cxa_allocate_exception(0x20uLL);
        quasar::PTree::BadPath::BadPath(exception, a2);
      }

      goto LABEL_13;
    }
  }

  if (end != &begin[1])
  {
    v8 = &v16[-3].__r_.__value_.__r.__words[2];
    goto LABEL_38;
  }

  LODWORD(v16[-3].__r_.__value_.__r.__words[2]) = *v25;
  std::string::operator=(v16 - 2, (v25 + 8));
  if (&v16[-3].__r_.__value_.__r.__words[2] != v25)
  {
    std::vector<std::pair<std::string,quasar::PTree>>::__assign_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(&v16[-1], *(v25 + 32), *(v25 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(v25 + 40) - *(v25 + 32)) >> 3));
  }

  v16->__r_.__value_.__s.__data_[0] = *(v25 + 56);
LABEL_45:
  *__str = &v31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__str);
}

void sub_1B509D3AC(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B509D404);
}

void sub_1B509D3C8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  v4 = &v3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  _Unwind_Resume(a1);
}

void sub_1B509D3D8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  quasar::PTree::~PTree(va);
  JUMPOUT(0x1B509D3F4);
}

void sub_1B509D918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 105) < 0)
  {
    operator delete(*(v14 - 128));
  }

  if (*(v14 - 73) < 0)
  {
    operator delete(*(v14 - 96));
  }

  __p = (v14 - 72);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void quasar::SystemConfig::verifyOverrideValue(uint64_t a1, uint64_t a2, __int128 **a3, uint64_t a4, int a5)
{
  if (*a3 != a3[1])
  {
    if (!a5)
    {
      quasar::SystemConfig::hasParam(a1, a2);
    }

    if (quasar::gLogLevel >= 4)
    {
      memset(v19, 0, sizeof(v19));
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "parameter [", 11);
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

      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "] was not verified of its presence in the original config. Adding/Replacing it.", 79);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) < 2)
    {
      std::pair<std::string,std::string>::pair[abi:ne200100]<std::string const&,std::string&,0>(&v15, a2, *a3);
      std::pair<std::string,quasar::PTree>::pair[abi:ne200100]<std::string,std::string,0>(__p, &v15);
      std::vector<std::pair<std::string,quasar::PTree>>::push_back[abi:ne200100](a4, __p);
      quasar::PTree::~PTree((v19 + 8));
      if (SBYTE7(v19[0]) < 0)
      {
        operator delete(__p[0]);
      }

      if (v17 < 0)
      {
        operator delete(v16);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      quasar::PTree::PTree(&v15);
      v14 = *a3;
      v13 = a3[1];
      while (v14 != v13)
      {
        quasar::PTree::PTree(__p, v14);
        quasar::PTree::addChild(&v15, __p);
        quasar::PTree::~PTree(__p);
        v14 = (v14 + 24);
      }

      std::pair<std::string,quasar::PTree>::pair[abi:ne200100]<std::string const&,quasar::PTree&,0>(__p, a2, &v15);
      std::vector<std::pair<std::string,quasar::PTree>>::push_back[abi:ne200100](a4, __p);
      quasar::PTree::~PTree((v19 + 8));
      if (SBYTE7(v19[0]) < 0)
      {
        operator delete(__p[0]);
      }

      quasar::PTree::~PTree(&v15);
    }
  }
}

void sub_1B509DCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::pair<std::string,quasar::PTree>::~pair(&a17);
  quasar::PTree::~PTree(&a9);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string,quasar::PTree>::pair[abi:ne200100]<std::string const&,quasar::PTree&,0>(std::string *this, __int128 *a2, uint64_t a3)
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

void sub_1B509DDC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SystemConfig::checkAllAbsolutePathsExist(quasar::SystemConfig *this)
{
  for (i = *(this + 100); i; i = *i)
  {
    quasar::SystemConfig::checkPathExists(this, (i + 2), 0);
  }

  for (j = *(this + 95); j; j = *j)
  {
    quasar::SystemConfig::checkPathExists(this, (j + 2), 1);
  }
}

void quasar::SystemConfig::checkPathExists(quasar::SystemConfig *a1, uint64_t a2, int a3)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (stat(v6, &v41))
  {
    ConfigFileVersion = quasar::SystemConfig::getConfigFileVersion(a1);
    if (ConfigFileVersion >= 36)
    {
      v8 = ConfigFileVersion == 36 && ConfigFileVersion < 0;
      if (!v8 && a3)
      {
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
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
        v24 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v24);
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "Failed to read file. ", 21);
        v19 = __error();
        v20 = strerror(*v19);
        v21 = strlen(v20);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ", path: ", 8);
        std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v23, a2);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v24);
      }
    }

    if (quasar::gLogLevel >= 2)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
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
      v24 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v24);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "Failed to read file. ", 21);
      v10 = __error();
      v11 = strerror(*v10);
      v12 = strlen(v11);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", path: ", 8);
      v15 = *(a2 + 23);
      if (v15 >= 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = *a2;
      }

      if (v15 >= 0)
      {
        v17 = *(a2 + 23);
      }

      else
      {
        v17 = *(a2 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(&v24);
    }
  }
}

void quasar::SystemConfig::getLeafProperties(uint64_t a1, int a2, void *a3, void *a4)
{
  if (a2)
  {
    LODWORD(__p) = *(a1 + 72);
    if (*(a1 + 103) < 0)
    {
      std::string::__init_copy_ctor_external(&v10, *(a1 + 80), *(a1 + 88));
    }

    else
    {
      v10 = *(a1 + 80);
    }

    memset(v11, 0, sizeof(v11));
    std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(v11, *(a1 + 104), *(a1 + 112), 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 112) - *(a1 + 104)) >> 3));
    v12 = *(a1 + 128);
    std::string::basic_string[abi:ne200100]<0>(v7, "version-major");
    quasar::PTree::erase(&__p, v7);
    if (v8 < 0)
    {
      operator delete(v7[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v7, "version-minor");
    quasar::PTree::erase(&__p, v7);
    if (v8 < 0)
    {
      operator delete(v7[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v7, "model-info");
    quasar::PTree::erase(&__p, v7);
    if (v8 < 0)
    {
      operator delete(v7[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v7, "mt-model-info");
    quasar::PTree::erase(&__p, v7);
    if (v8 < 0)
    {
      operator delete(v7[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v7, "");
    quasar::SystemConfig::getAllLeafNodesFromPtreeIf(a1, &__p, v7, a3, a4);
    if (v8 < 0)
    {
      operator delete(v7[0]);
    }

    quasar::PTree::~PTree(&__p);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    quasar::SystemConfig::getAllLeafNodesFromPtreeIf(a1, (a1 + 72), &__p, a3, a4);
    if (v10.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1B509E204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  quasar::PTree::~PTree(&a16);
  _Unwind_Resume(a1);
}

void sub_1B509E250(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B509E248);
}

void quasar::SystemConfig::getAllLeafNodesFromPtreeIf(uint64_t a1, quasar::PTree *a2, std::string::size_type a3, void *a4, void *a5)
{
  if (!quasar::PTree::isLeaf(a2))
  {
    v12 = quasar::PTree::begin(a2);
    v13 = quasar::PTree::end(a2);
    if (v12 == v13)
    {
      return;
    }

    v14 = v13;
    while (1)
    {
      if (*(v12 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *v12, *(v12 + 8));
      }

      else
      {
        v15 = *v12;
        __str.__r_.__value_.__r.__words[2] = *(v12 + 16);
        *&__str.__r_.__value_.__l.__data_ = v15;
      }

      if (*(a3 + 23) >= 0)
      {
        v16 = *(a3 + 23);
      }

      else
      {
        v16 = *(a3 + 8);
      }

      if (v16)
      {
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          std::string::basic_string[abi:ne200100](&v34, v16 + 1);
          if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v18 = &v34;
          }

          else
          {
            v18 = v34.__r_.__value_.__r.__words[0];
          }

          if (*(a3 + 23) >= 0)
          {
            v19 = a3;
          }

          else
          {
            v19 = *a3;
          }

          memmove(v18, v19, v16);
          *(&v18->__r_.__value_.__l.__data_ + v16) = 46;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_str = &__str;
          }

          else
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v21 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v21 = __str.__r_.__value_.__l.__size_;
          }

          v22 = std::string::append(&v34, p_str, v21);
          v23 = *&v22->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v23;
          v22->__r_.__value_.__l.__size_ = 0;
          v22->__r_.__value_.__r.__words[2] = 0;
          v22->__r_.__value_.__r.__words[0] = 0;
          quasar::SystemConfig::getAllLeafNodesFromPtreeIf(a1, v12 + 24, &__p, a4, a5);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_45;
          }

          v24 = v34.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a5, a3))
          {
            memset(&__p, 0, sizeof(__p));
            v37 = a3;
            v25 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a5, a3);
            std::vector<std::string>::__vdeallocate((v25 + 5));
            *(v25 + 5) = __p;
            memset(&__p, 0, sizeof(__p));
            v34.__r_.__value_.__r.__words[0] = &__p;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v34);
          }

          String = quasar::PTree::getString((v12 + 24));
          if (*(String + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *String, *(String + 8));
          }

          else
          {
            v27 = *String;
            __p.__r_.__value_.__r.__words[2] = *(String + 16);
            *&__p.__r_.__value_.__l.__data_ = v27;
          }

          v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v28 = __p.__r_.__value_.__l.__size_;
          }

          if (v28)
          {
            v34.__r_.__value_.__r.__words[0] = a3;
            v30 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a5, a3);
            std::vector<std::string>::push_back[abi:ne200100]((v30 + 5), &__p);
            v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          if ((v29 & 0x80) == 0)
          {
            goto LABEL_45;
          }

          v24 = __p.__r_.__value_.__r.__words[0];
        }

        operator delete(v24);
      }

      else
      {
        quasar::SystemConfig::getAllLeafNodesFromPtreeIf(a1, v12 + 24, &__str, a4, a5);
      }

LABEL_45:
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v12 += 88;
      if (v12 == v14)
      {
        return;
      }
    }
  }

  v10 = quasar::PTree::getString(a2);
  if (*(v10 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *v10, *(v10 + 8));
  }

  else
  {
    v11 = *v10;
    __str.__r_.__value_.__r.__words[2] = *(v10 + 16);
    *&__str.__r_.__value_.__l.__data_ = v11;
  }

  v31 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v32 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v31 = __str.__r_.__value_.__l.__size_;
  }

  if (v31)
  {
    __p.__r_.__value_.__r.__words[0] = a3;
    v33 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a4, a3);
    std::string::operator=((v33 + 5), &__str);
    v32 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  if (v32 < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1B509E5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1B509E8AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string const,0>(std::string *this, __int128 *a2, __int128 *a3)
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

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_1B509E9F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::string>>(void *a1, const void **a2)
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
    operator new();
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

void sub_1B509EC94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void quasar::SystemConfig::verifyOverrideValue(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    quasar::SystemConfig::hasParam(a1, a2);
  }

  if (quasar::gLogLevel >= 4)
  {
    v35 = 0u;
    v36 = 0u;
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
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "parameter [", 11);
    v7 = *(a2 + 23);
    v8 = v7 >= 0 ? a2 : *a2;
    v9 = v7 >= 0 ? *(a2 + 23) : *(a2 + 8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "] was not verified of its presence in the original config. Adding/Replacing it.", 79);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v20);
    if (quasar::gLogLevel >= 4)
    {
      v35 = 0u;
      v36 = 0u;
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
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "Config override: ", 17);
      v12 = *(a2 + 23);
      if (v12 >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if (v12 >= 0)
      {
        v14 = *(a2 + 23);
      }

      else
      {
        v14 = *(a2 + 8);
      }

      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "=", 1);
      v17 = *(a3 + 23);
      if (v17 >= 0)
      {
        v18 = a3;
      }

      else
      {
        v18 = *a3;
      }

      if (v17 >= 0)
      {
        v19 = *(a3 + 23);
      }

      else
      {
        v19 = *(a3 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v20);
    }
  }
}

std::string *std::pair<std::string,quasar::PTree>::pair[abi:ne200100]<std::string&,quasar::PTree,0>(std::string *this, __int128 *a2, uint64_t a3)
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

void sub_1B509F008(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string,quasar::PTree>::pair[abi:ne200100]<std::string&,quasar::PTree const&,0>(std::string *this, __int128 *a2, uint64_t a3)
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

void sub_1B509F0F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<int>::__node_insert_multi(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 28) >= *(v4 + 7))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

void *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<int>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<int>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<int>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::string>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::string>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t std::pair<std::string &,std::vector<std::string> &>::operator=[abi:ne200100]<std::string const,std::vector<std::string>,0>(uint64_t a1, uint64_t a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  if (v4 != (a2 + 24))
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v4, *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  }

  return a1;
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(std::vector<std::wstring> *a1, std::string *__str, std::string *a3, unint64_t a4)
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

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(*a1, v2);
  }

  return a1;
}

void quasar::QuasarTextProc::qsrTextProcExists(quasar::QuasarTextProc *this, const quasar::SystemConfig *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "text-proc");
  quasar::SystemConfig::enforceMinVersion(this, 10, 0, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "text-proc");
  quasar::SystemConfig::hasParam(this, __p);
}

void QuasarITNImpl::QuasarITNImpl(void *a1)
{
  *a1 = &unk_1F2D09398;
  a1[1] = 0;
  operator new();
}

void sub_1B509F918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MEMORY[0x1B8C85350](v11, 0x10B3C40C6D201DDLL);
  v13 = *(v10 + 8);
  *(v10 + 8) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::QuasarTextProc::QuasarTextProc(uint64_t a1, const quasar::SystemConfig *a2, uint64_t *a3, uint64_t a4)
{
  *a1 = &unk_1F2D21168;
  v70 = (a1 + 8);
  quasar::SystemConfig::SystemConfig((a1 + 8), a2, 1, 1);
  *(a1 + 1616) = 0u;
  *(a1 + 1600) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1632) = 1065353216;
  *(a1 + 1640) = 0u;
  *(a1 + 1656) = 0u;
  *(a1 + 1672) = 1065353216;
  *(a1 + 1696) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1712) = 1065353216;
  *(a1 + 1720) = 0u;
  *(a1 + 1736) = 0u;
  v7 = *a3;
  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v8 = *(a1 + 1744);
    *(a1 + 1736) = v7;
    *(a1 + 1744) = v6;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
  {
    *(a1 + 1736) = v7;
    *(a1 + 1744) = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "text-proc");
  quasar::SystemConfig::enforceMinVersion(v70, 10, 0, &__p);
  if (SBYTE7(v77) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "text-proc");
  Ptree = quasar::SystemConfig::getPtree(v70, &__p);
  v10 = Ptree;
  v97 = *Ptree;
  if (*(Ptree + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v98, *(Ptree + 8), *(Ptree + 16));
  }

  else
  {
    v11 = *(Ptree + 8);
    v98.__r_.__value_.__r.__words[2] = *(Ptree + 24);
    *&v98.__r_.__value_.__l.__data_ = v11;
  }

  memset(v99, 0, sizeof(v99));
  std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(v99, *(v10 + 32), *(v10 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(v10 + 40) - *(v10 + 32)) >> 3));
  v100 = *(v10 + 56);
  if (SBYTE7(v77) < 0)
  {
    operator delete(__p);
  }

  v12 = quasar::PTree::begin(&v97);
  v71 = quasar::PTree::end(&v97);
  while (v12 != v71)
  {
    std::pair<std::string,quasar::PTree>::pair[abi:ne200100](&v95, v12);
    if ((SHIBYTE(v95.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v95.__r_.__value_.__l.__size_ == 12)
      {
        if (*v95.__r_.__value_.__l.__data_ == 0x61682D696A6F6D65 && *(v95.__r_.__value_.__r.__words[0] + 8) == 1919249773)
        {
LABEL_173:
          std::string::basic_string[abi:ne200100]<0>(&__p, "rule-fst");
          quasar::PTree::getChildOptional(v96, &__p);
        }
      }

      else if (v95.__r_.__value_.__l.__size_ == 15 && *v95.__r_.__value_.__l.__data_ == 0x6E74692D74736F70 && *(v95.__r_.__value_.__r.__words[0] + 7) == 0x72656D6D61682D6ELL)
      {
        goto LABEL_173;
      }

      if (v95.__r_.__value_.__l.__size_ == 3)
      {
        if (*v95.__r_.__value_.__l.__data_ == 29801 && *(v95.__r_.__value_.__r.__words[0] + 2) == 110)
        {
LABEL_159:
          memset(&v74, 0, sizeof(v74));
          if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = SHIBYTE(v95.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v95.__r_.__value_.__l.__size_;
          }

          std::string::basic_string[abi:ne200100](&__p, size + 1);
          if ((SBYTE7(v77) & 0x80u) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (size)
          {
            if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v65 = &v95;
            }

            else
            {
              v65 = v95.__r_.__value_.__r.__words[0];
            }

            memmove(p_p, v65, size);
          }

          *(p_p + size) = 46;
          v66 = std::string::append(&__p, "rule-fst");
          v67 = *&v66->__r_.__value_.__l.__data_;
          v94.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
          *&v94.__r_.__value_.__l.__data_ = v67;
          v66->__r_.__value_.__l.__size_ = 0;
          v66->__r_.__value_.__r.__words[2] = 0;
          v66->__r_.__value_.__r.__words[0] = 0;
          if (SBYTE7(v77) < 0)
          {
            operator delete(__p);
          }

          quasar::QuasarTextProc::readModelFiles(v66, &v97, &v94);
        }
      }

      else if (v95.__r_.__value_.__l.__size_ == 9 && *v95.__r_.__value_.__l.__data_ == 0x657A6974696E6173 && *(v95.__r_.__value_.__r.__words[0] + 8) == 114)
      {
LABEL_109:
        memset(&v74, 0, sizeof(v74));
        if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = SHIBYTE(v95.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v45 = v95.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&__p, v45 + 1);
        if ((SBYTE7(v77) & 0x80u) == 0)
        {
          v46 = &__p;
        }

        else
        {
          v46 = __p;
        }

        if (v45)
        {
          if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v47 = &v95;
          }

          else
          {
            v47 = v95.__r_.__value_.__r.__words[0];
          }

          memmove(v46, v47, v45);
        }

        *(v46 + v45) = 46;
        v48 = std::string::append(&__p, "rule-fst");
        v49 = *&v48->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v49;
        v48->__r_.__value_.__l.__size_ = 0;
        v48->__r_.__value_.__r.__words[2] = 0;
        v48->__r_.__value_.__r.__words[0] = 0;
        if (SBYTE7(v77) < 0)
        {
          operator delete(__p);
        }

        quasar::QuasarTextProc::readModelFiles(v48, &v97, &v94);
      }

      if (v95.__r_.__value_.__l.__size_ == 12)
      {
        v18 = v95.__r_.__value_.__r.__words[0];
LABEL_128:
        v51 = v18->__r_.__value_.__r.__words[0];
        v52 = v18->__r_.__value_.__r.__words[1];
        if (v51 == 0x2D6563697474616CLL && v52 == 1668248176)
        {
          memset(&v74, 0, sizeof(v74));
          if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v54 = SHIBYTE(v95.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v54 = v95.__r_.__value_.__l.__size_;
          }

          std::string::basic_string[abi:ne200100](&__p, v54 + 1);
          if ((SBYTE7(v77) & 0x80u) == 0)
          {
            v55 = &__p;
          }

          else
          {
            v55 = __p;
          }

          if (v54)
          {
            if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v56 = &v95;
            }

            else
            {
              v56 = v95.__r_.__value_.__r.__words[0];
            }

            memmove(v55, v56, v54);
          }

          *(v55 + v54) = 46;
          v57 = std::string::append(&__p, "rule-fst");
          v58 = *&v57->__r_.__value_.__l.__data_;
          v94.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
          *&v94.__r_.__value_.__l.__data_ = v58;
          v57->__r_.__value_.__l.__size_ = 0;
          v57->__r_.__value_.__r.__words[2] = 0;
          v57->__r_.__value_.__r.__words[0] = 0;
          if (SBYTE7(v77) < 0)
          {
            operator delete(__p);
          }

          quasar::QuasarTextProc::readModelFiles(v57, &v97, &v94);
        }

        goto LABEL_151;
      }

      if (v95.__r_.__value_.__l.__size_ == 4 && *v95.__r_.__value_.__l.__data_ == 846099561)
      {
LABEL_54:
        *&__p = quasar::SystemConfig::getConfigFileVersion(v70);
        quasar::result_handler::Range::Range(&v74, 50, 0);
        if (!quasar::SystemConfig::Version::operator>=(&__p, &v74))
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "itn2");
          quasar::SystemConfig::enforceMinVersion(v70, 33, 0, &__p);
          if (SBYTE7(v77) < 0)
          {
            operator delete(__p);
          }

          _ZNSt3__115allocate_sharedB8ne200100IN6quasar21InverseTextNormalizerENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
        }

        v19 = quasar::PTree::begin(v96);
        v20 = quasar::PTree::end(v96);
        while (v19 != v20)
        {
          std::pair<std::string,quasar::PTree>::pair[abi:ne200100](&v74, v19);
          if (*(a1 + 744) != 2)
          {
            goto LABEL_85;
          }

          if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v21 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v21 = v74.__r_.__value_.__l.__size_;
          }

          v22 = *(a4 + 23);
          v23 = v22;
          if ((v22 & 0x80u) != 0)
          {
            v22 = *(a4 + 8);
          }

          if (v21 == v22)
          {
            v24 = (v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v74 : v74.__r_.__value_.__r.__words[0];
            v25 = v23 >= 0 ? a4 : *a4;
            if (!memcmp(v24, v25, v21))
            {
LABEL_85:
              std::string::basic_string[abi:ne200100]<0>(&v72, "text-proc");
              v34 = std::string::append(&v72, ".");
              v35 = *&v34->__r_.__value_.__l.__data_;
              v73.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
              *&v73.__r_.__value_.__l.__data_ = v35;
              v34->__r_.__value_.__l.__size_ = 0;
              v34->__r_.__value_.__r.__words[2] = 0;
              v34->__r_.__value_.__r.__words[0] = 0;
              v36 = std::string::append(&v73, "itn2");
              v37 = *&v36->__r_.__value_.__l.__data_;
              v93.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
              *&v93.__r_.__value_.__l.__data_ = v37;
              v36->__r_.__value_.__l.__size_ = 0;
              v36->__r_.__value_.__r.__words[2] = 0;
              v36->__r_.__value_.__r.__words[0] = 0;
              v38 = std::string::append(&v93, ".");
              v39 = *&v38->__r_.__value_.__l.__data_;
              *&v77 = *(&v38->__r_.__value_.__l + 2);
              __p = v39;
              v38->__r_.__value_.__l.__size_ = 0;
              v38->__r_.__value_.__r.__words[2] = 0;
              v38->__r_.__value_.__r.__words[0] = 0;
              if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v40 = &v74;
              }

              else
              {
                v40 = v74.__r_.__value_.__r.__words[0];
              }

              if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v41 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v41 = v74.__r_.__value_.__l.__size_;
              }

              v42 = std::string::append(&__p, v40, v41);
              v43 = *&v42->__r_.__value_.__l.__data_;
              v94.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
              *&v94.__r_.__value_.__l.__data_ = v43;
              v42->__r_.__value_.__l.__size_ = 0;
              v42->__r_.__value_.__r.__words[2] = 0;
              v42->__r_.__value_.__r.__words[0] = 0;
              if (SBYTE7(v77) < 0)
              {
                operator delete(__p);
              }

              if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v93.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v73.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v72.__r_.__value_.__l.__data_);
              }

              _ZNSt3__115allocate_sharedB8ne200100IN6quasar21InverseTextNormalizerENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
            }
          }

          if (quasar::gLogLevel >= 4)
          {
            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            __p = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
            v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "ignore itn2 config of ", 22);
            if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v27 = &v74;
            }

            else
            {
              v27 = v74.__r_.__value_.__r.__words[0];
            }

            if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v28 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v28 = v74.__r_.__value_.__l.__size_;
            }

            v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v27, v28);
            v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ", what we are looking for is ", 29);
            v31 = *(a4 + 23);
            if (v31 >= 0)
            {
              v32 = a4;
            }

            else
            {
              v32 = *a4;
            }

            if (v31 >= 0)
            {
              v33 = *(a4 + 23);
            }

            else
            {
              v33 = *(a4 + 8);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v32, v33);
            quasar::QuasarInfoMessage::~QuasarInfoMessage(&__p);
          }

          quasar::PTree::~PTree(&v75);
          if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v74.__r_.__value_.__l.__data_);
          }

          v19 = (v19 + 88);
        }

        if (!*(a1 + 1624))
        {
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          __p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Failed to configure itn2", 24);
          quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&__p);
        }

        goto LABEL_178;
      }
    }

    else
    {
      if (HIBYTE(v95.__r_.__value_.__r.__words[2]) > 8u)
      {
        if (HIBYTE(v95.__r_.__value_.__r.__words[2]) == 9)
        {
          if (v95.__r_.__value_.__r.__words[0] == 0x657A6974696E6173 && v95.__r_.__value_.__s.__data_[8] == 114)
          {
            goto LABEL_109;
          }

          goto LABEL_151;
        }

        if (HIBYTE(v95.__r_.__value_.__r.__words[2]) != 12)
        {
          if (HIBYTE(v95.__r_.__value_.__r.__words[2]) == 15 && v95.__r_.__value_.__r.__words[0] == 0x6E74692D74736F70 && *(v95.__r_.__value_.__r.__words + 7) == 0x72656D6D61682D6ELL)
          {
            goto LABEL_173;
          }

          goto LABEL_151;
        }

        if (v95.__r_.__value_.__r.__words[0] == 0x61682D696A6F6D65 && LODWORD(v95.__r_.__value_.__r.__words[1]) == 1919249773)
        {
          goto LABEL_173;
        }

        v18 = &v95;
        goto LABEL_128;
      }

      if (HIBYTE(v95.__r_.__value_.__r.__words[2]) == 3)
      {
        if (LOWORD(v95.__r_.__value_.__l.__data_) == 29801 && v95.__r_.__value_.__s.__data_[2] == 110)
        {
          goto LABEL_159;
        }
      }

      else if (HIBYTE(v95.__r_.__value_.__r.__words[2]) == 4 && LODWORD(v95.__r_.__value_.__l.__data_) == 846099561)
      {
        goto LABEL_54;
      }
    }

LABEL_151:
    if (quasar::gLogLevel >= 4)
    {
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      __p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Ignore unknown node text-proc.", 30);
      if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v61 = &v95;
      }

      else
      {
        v61 = v95.__r_.__value_.__r.__words[0];
      }

      if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v62 = HIBYTE(v95.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v62 = v95.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, v61, v62);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&__p);
    }

LABEL_178:
    quasar::PTree::~PTree(v96);
    if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v95.__r_.__value_.__l.__data_);
    }

    v12 = (v12 + 88);
  }

  quasar::PTree::~PTree(&v97);
  return a1;
}

void sub_1B50A14EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  std::pair<std::string const,std::shared_ptr<quasar::ProcessingBlock>>::~pair(&a51);
  if (v51 < 0)
  {
    JUMPOUT(0x1B50A1500);
  }

  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  JUMPOUT(0x1B50A1544);
}

void sub_1B50A1508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    JUMPOUT(0x1B50A1520);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  JUMPOUT(0x1B50A1544);
}

void sub_1B50A1564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a62 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v74 < 0)
  {
    operator delete(v73);
  }

  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  v77[0] = &v75;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v77);
  if (v78 < 0)
  {
    operator delete(v77[34]);
  }

  if (v80 < 0)
  {
    operator delete(v79);
  }

  std::pair<std::string,quasar::PTree>::~pair(&v76);
  std::pair<std::string,quasar::PTree>::~pair(v63 - 248);
  quasar::PTree::~PTree((v63 - 160));
  if (*v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*v68);
  }

  v65 = *(v62 + 216);
  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(v69);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(v70);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(v62 + 1600);
  v66 = *(v62 + 199);
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  }

  v67 = *(v62 + 197);
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  quasar::SystemConfig::~SystemConfig(v71);
  quasar::Bitmap::~Bitmap(v62);
  _Unwind_Resume(a1);
}

void sub_1B50A15BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  std::pair<std::string const,std::shared_ptr<quasar::ProcessingBlock>>::~pair(&a51);
  if (v52 < 0)
  {
    operator delete(v51);
  }

  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  JUMPOUT(0x1B50A1A24);
}

void sub_1B50A15CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    JUMPOUT(0x1B50A1698);
  }

  JUMPOUT(0x1B50A169CLL);
}

void sub_1B50A1640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    JUMPOUT(0x1B50A1650);
  }

  if (v63 < 0)
  {
    operator delete(v62);
  }

  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  v66[0] = &v64;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v66);
  if (v67 < 0)
  {
    operator delete(v66[34]);
  }

  if (v69 < 0)
  {
    operator delete(v68);
  }

  std::pair<std::string,quasar::PTree>::~pair(&v65);
  std::pair<std::string,quasar::PTree>::~pair(v57 - 248);
  quasar::PTree::~PTree((v57 - 160));
  if (*v59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  if (*(v56 + 216))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table();
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table();
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table();
  if (*(v56 + 199))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  if (*(v56 + 197))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  quasar::SystemConfig::~SystemConfig(v60);
  quasar::Bitmap::~Bitmap(v56);
  _Unwind_Resume(a1);
}

void sub_1B50A16C0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (*(v56 - 129) < 0)
  {
    operator delete(*(v56 - 152));
  }

  if (a56 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B50A1A34);
}

void sub_1B50A1728(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B50A1820);
}

void sub_1B50A177C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    JUMPOUT(0x1B50A1810);
  }

  JUMPOUT(0x1B50A1814);
}

void sub_1B50A17A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51)
{
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  a51 = &a39;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a51);
  JUMPOUT(0x1B50A1A24);
}

void sub_1B50A1870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  std::pair<std::string const,std::shared_ptr<quasar::ProcessingBlock>>::~pair(&a51);
  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  JUMPOUT(0x1B50A1A0CLL);
}

void sub_1B50A1880(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  if (SHIBYTE(a37) < 0)
  {
    operator delete(a35);
  }

  if (SHIBYTE(a34) < 0)
  {
    JUMPOUT(0x1B50A1A18);
  }

  JUMPOUT(0x1B50A1A1CLL);
}

void sub_1B50A18F4(_Unwind_Exception *a1)
{
  if (v8 < 0)
  {
    operator delete(v7);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  v11[0] = &v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v11);
  if (v12 < 0)
  {
    operator delete(v11[34]);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  std::pair<std::string,quasar::PTree>::~pair(&v10);
  std::pair<std::string,quasar::PTree>::~pair(v2 - 248);
  quasar::PTree::~PTree((v2 - 160));
  if (*v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  if (*(v1 + 216))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table();
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table();
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table();
  if (*(v1 + 199))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  if (*(v1 + 197))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  quasar::SystemConfig::~SystemConfig(v5);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void sub_1B50A194C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    JUMPOUT(0x1B50A1A08);
  }

  JUMPOUT(0x1B50A1A0CLL);
}

void sub_1B50A195C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    JUMPOUT(0x1B50A19DCLL);
  }

  JUMPOUT(0x1B50A19E0);
}

void sub_1B50A1978(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(a37) < 0)
  {
    operator delete(a35);
  }

  JUMPOUT(0x1B50A19A4);
}

void sub_1B50A19B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  std::pair<std::string const,std::shared_ptr<quasar::ProcessingBlock>>::~pair(&a51);
  if (v63 < 0)
  {
    operator delete(v62);
  }

  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  v66[0] = &v64;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v66);
  if (v67 < 0)
  {
    operator delete(v66[34]);
  }

  if (v69 < 0)
  {
    operator delete(v68);
  }

  std::pair<std::string,quasar::PTree>::~pair(&v65);
  std::pair<std::string,quasar::PTree>::~pair(v52 - 248);
  quasar::PTree::~PTree((v52 - 160));
  if (*v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*v57);
  }

  v54 = *(v51 + 216);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(v58);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(v59);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(v51 + 1600);
  v55 = *(v51 + 199);
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  v56 = *(v51 + 197);
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  quasar::SystemConfig::~SystemConfig(v60);
  quasar::Bitmap::~Bitmap(v51);
  _Unwind_Resume(a1);
}

quasar::SystemConfig *quasar::SystemConfig::SystemConfig(quasar::SystemConfig *this, const quasar::SystemConfig *a2, int a3, int a4)
{
  *this = &unk_1F2D11F50;
  quasar::SystemConfig::SystemConfigInfo::SystemConfigInfo((this + 8), (a2 + 8));
  if (*(a2 + 847) < 0)
  {
    std::string::__init_copy_ctor_external((this + 824), *(a2 + 103), *(a2 + 104));
  }

  else
  {
    v8 = *(a2 + 824);
    *(this + 105) = *(a2 + 105);
    *(this + 824) = v8;
  }

  if (!a3)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN6quasar11ModelLoaderENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  *(this + 106) = *(a2 + 106);
  v9 = *(a2 + 107);
  *(this + 107) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 887) < 0)
  {
    std::string::__init_copy_ctor_external(this + 36, *(a2 + 108), *(a2 + 109));
  }

  else
  {
    v10 = *(a2 + 54);
    *(this + 110) = *(a2 + 110);
    *(this + 54) = v10;
  }

  *(this + 113) = 0;
  *(this + 888) = 0u;
  quasar::SpeechModelInfo::SpeechModelInfo(this + 38, (a2 + 912));
  {
    operator new();
  }

  if (a4)
  {
    v11 = (a2 + 1192);
  }

  else
  {
    v11 = quasar::maybeReturnMap<std::string,BOOL *>(std::map<std::string,BOOL *> const&,BOOL)::emptyMap;
  }

  std::map<std::string,BOOL *>::map[abi:ne200100](this + 149, v11);
  {
    operator new();
  }

  if (a4)
  {
    v12 = (a2 + 1216);
  }

  else
  {
    v12 = quasar::maybeReturnMap<std::string,int *>(std::map<std::string,int *> const&,BOOL)::emptyMap;
  }

  std::map<std::string,int *>::map[abi:ne200100](this + 152, v12);
  {
    operator new();
  }

  if (a4)
  {
    v13 = (a2 + 1240);
  }

  else
  {
    v13 = quasar::maybeReturnMap<std::string,unsigned int *>(std::map<std::string,unsigned int *> const&,BOOL)::emptyMap;
  }

  std::map<std::string,unsigned int *>::map[abi:ne200100](this + 155, v13);
  {
    operator new();
  }

  if (a4)
  {
    v14 = (a2 + 1264);
  }

  else
  {
    v14 = quasar::maybeReturnMap<std::string,long long *>(std::map<std::string,long long *> const&,BOOL)::emptyMap;
  }

  std::map<std::string,long long *>::map[abi:ne200100](this + 158, v14);
  {
    operator new();
  }

  if (a4)
  {
    v15 = (a2 + 1288);
  }

  else
  {
    v15 = quasar::maybeReturnMap<std::string,float *>(std::map<std::string,float *> const&,BOOL)::emptyMap;
  }

  std::map<std::string,float *>::map[abi:ne200100](this + 161, v15);
  {
    operator new();
  }

  if (a4)
  {
    v16 = (a2 + 1312);
  }

  else
  {
    v16 = quasar::maybeReturnMap<std::string,double *>(std::map<std::string,double *> const&,BOOL)::emptyMap;
  }

  std::map<std::string,double *>::map[abi:ne200100](this + 164, v16);
  {
    operator new();
  }

  if (a4)
  {
    v17 = (a2 + 1336);
  }

  else
  {
    v17 = quasar::maybeReturnMap<std::string,std::string*>(std::map<std::string,std::string*> const&,BOOL)::emptyMap;
  }

  std::map<std::string,std::string*>::map[abi:ne200100](this + 167, v17);
  {
    operator new();
  }

  if (a4)
  {
    v18 = (a2 + 1360);
  }

  else
  {
    v18 = quasar::maybeReturnMap<std::string,std::vector<std::string> *>(std::map<std::string,std::vector<std::string> *,std::less<std::string>,std::allocator<std::pair<std::string const,std::vector<std::string> *>>> const&,BOOL)::emptyMap;
  }

  std::map<std::string,std::vector<std::string> *,std::less<std::string>,std::allocator<std::pair<std::string const,std::vector<std::string> *>>>::map[abi:ne200100](this + 170, v18);
  {
    operator new();
  }

  if (a4)
  {
    v19 = (a2 + 1384);
  }

  else
  {
    v19 = quasar::maybeReturnMap<std::string,std::vector<std::pair<std::string,std::string>> *>(std::map<std::string,std::vector<std::pair<std::string,std::string>> *,std::less<std::string>,std::allocator<std::pair<std::string const,std::vector<std::pair<std::string,std::string>> *>>> const&,BOOL)::emptyMap;
  }

  std::map<std::string,std::vector<std::pair<std::string,std::string>> *,std::less<std::string>,std::allocator<std::pair<std::string const,std::vector<std::pair<std::string,std::string>> *>>>::map[abi:ne200100](this + 173, v19);
  {
    operator new();
  }

  if (a4)
  {
    v20 = (a2 + 1408);
  }

  else
  {
    v20 = quasar::maybeReturnMap<std::string,std::unordered_map<std::string,std::string> *>(std::map<std::string,std::unordered_map<std::string,std::string> *,std::less<std::string>,std::allocator<std::pair<std::string const,std::unordered_map<std::string,std::string> *>>> const&,BOOL)::emptyMap;
  }

  std::map<std::string,std::unordered_map<std::string,std::string> *,std::less<std::string>,std::allocator<std::pair<std::string const,std::unordered_map<std::string,std::string> *>>>::map[abi:ne200100](this + 176, v20);
  {
    operator new();
  }

  if (a4)
  {
    v21 = (a2 + 1432);
  }

  else
  {
    v21 = quasar::maybeReturnMap<std::string,std::unordered_set<std::string> *>(std::map<std::string,std::unordered_set<std::string> *,std::less<std::string>,std::allocator<std::pair<std::string const,std::unordered_set<std::string> *>>> const&,BOOL)::emptyMap;
  }

  std::map<std::string,std::unordered_set<std::string> *,std::less<std::string>,std::allocator<std::pair<std::string const,std::unordered_set<std::string> *>>>::map[abi:ne200100](this + 179, v21);
  {
    operator new();
  }

  if (a4)
  {
    v22 = (a2 + 1456);
  }

  else
  {
    v22 = quasar::maybeReturnMap<std::string,quasar::filesystem::Path *>(std::map<std::string,quasar::filesystem::Path *> const&,BOOL)::emptyMap;
  }

  std::map<std::string,quasar::filesystem::Path *>::map[abi:ne200100](this + 182, v22);
  {
    operator new();
  }

  if (a4)
  {
    v23 = (a2 + 1480);
  }

  else
  {
    v23 = quasar::maybeReturnMap<std::string,quasar::SystemConfig::Version>(std::map<std::string,quasar::SystemConfig::Version> const&,BOOL)::emptyMap;
  }

  std::map<std::string,quasar::SystemConfig::Version>::map[abi:ne200100](this + 185, v23);
  {
    operator new();
  }

  if (a4)
  {
    v24 = (a2 + 1504);
  }

  else
  {
    v24 = quasar::maybeReturnMap<std::string,quasar::SystemConfig::Version>(std::map<std::string,quasar::SystemConfig::Version> const&,BOOL)::emptyMap;
  }

  std::map<std::string,quasar::SystemConfig::Version>::map[abi:ne200100](this + 188, v24);
  {
    operator new();
  }

  if (a4)
  {
    v25 = (a2 + 1528);
  }

  else
  {
    v25 = quasar::maybeReturnMap<std::string,std::set<std::string>>(std::map<std::string,std::set<std::string>> const&,BOOL)::emptyMap;
  }

  std::map<std::string,std::set<std::string>>::map[abi:ne200100](this + 191, v25);
  *(this + 388) = *(a2 + 388);
  return this;
}