void sub_1B54767C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __p = (v14 - 152);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v14 - 105) < 0)
  {
    operator delete(*(v14 - 128));
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::LexiconFST::loadAdditionalLexicon(uint64_t a1, uint64_t a2)
{
  v13[19] = *MEMORY[0x1E69E9840];
  std::ifstream::basic_ifstream(v11);
  if (v12[15])
  {
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::clear(a1 + 1616);
    quasar::LexiconFST::readLexicon(v4, v11, (a1 + 1616));
  }

  else if (quasar::gLogLevel >= 5)
  {
    memset(v10, 0, sizeof(v10));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Unable to load additional lexicon from: ", 40);
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v10);
  }

  v11[0] = *MEMORY[0x1E69E54C8];
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C84A00](v12);
  std::istream::~istream();
  MEMORY[0x1B8C85200](v13);
  return 0;
}

void sub_1B5476A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  std::ifstream::~ifstream(&a44, MEMORY[0x1E69E54C8]);
  MEMORY[0x1B8C85200](&STACK[0x2C0]);
  _Unwind_Resume(a1);
}

void quasar::LexiconFST::createFstWithAuxSyms(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  quasar::LexiconFST::_createFst();
}

void sub_1B5476AA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5477D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  a74 = &a31;
  std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&a74);
  a74 = &a34;
  std::vector<quasar::TextTokenizer::TokenString>::__destroy_vector::operator()[abi:ne200100](&a74);
  a74 = &a37;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a74);
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a54);
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  std::__tree<std::string>::destroy(&a69, a70);
  fst::SymbolTable::~SymbolTable(&a72);
  a63 = &a73;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a63);
  _Unwind_Resume(a1);
}

void quasar::LexiconFST::createFstWithoutAuxSyms(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  quasar::LexiconFST::_createFst();
}

void sub_1B54780E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SymbolTable::operator=(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = *(a2 + 8);
  if (v2 != v3)
  {
    v4 = result;
    ++*(v3 + 168);
    v5 = *(v2 + 168) - 1;
    *(v2 + 168) = v5;
    if (!v5)
    {
      if (*(v2 + 223) < 0)
      {
        operator delete(*(v2 + 200));
      }

      if (*(v2 + 199) < 0)
      {
        operator delete(*(v2 + 176));
      }

      std::__tree<int>::destroy(v2 + 144, *(v2 + 152));
      v7 = *(v2 + 120);
      if (v7)
      {
        *(v2 + 128) = v7;
        operator delete(v7);
      }

      fst::internal::DenseSymbolMap::~DenseSymbolMap((v2 + 40));
      if (*(v2 + 23) < 0)
      {
        operator delete(*v2);
      }

      result = MEMORY[0x1B8C85350](v2, 0x10B2C404FCE5648);
      v3 = *(a2 + 8);
    }

    *(v4 + 8) = v3;
  }

  return result;
}

uint64_t std::vector<quasar::PronChoice>::__emplace_back_slow_path<quasar::PronType,std::string const&,double>(uint64_t *a1, int *a2, uint64_t a3, double *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v8 = 0x666666666666666;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PronChoice>>(a1, v8);
  }

  v15 = 0;
  v16 = 40 * v4;
  std::allocator<quasar::PronChoice>::construct[abi:ne200100]<quasar::PronChoice,quasar::PronType,std::string const&,double>(a1, 40 * v4, a2, a3, a4);
  v17 = 40 * v4 + 40;
  v9 = a1[1];
  v10 = (40 * v4 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::PronChoice>,quasar::PronChoice*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<quasar::PronChoice>::~__split_buffer(&v15);
  return v14;
}

void sub_1B5478304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::PronChoice>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::PronChoice>::construct[abi:ne200100]<quasar::PronChoice,quasar::PronType,std::string const&,double>(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, double *a5)
{
  v7 = *a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  v8 = *a5;
  *a2 = v7;
  v9 = (a2 + 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v9, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *(a2 + 32) = v8;
    if (v10 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *&v9->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    *(a2 + 24) = *(&__p.__r_.__value_.__l + 2);
    *(a2 + 32) = v8;
  }
}

void sub_1B54783CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::createNameEnumerator(uint64_t a1@<X0>, quasar::SystemConfig *a2@<X1>, void *a3@<X8>)
{
  if (quasar::gLogLevel >= 4)
  {
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
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "Building NameEnumerator ", 24);
    v7 = *(a1 + 23);
    if (v7 >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    if (v7 >= 0)
    {
      v9 = *(a1 + 23);
    }

    else
    {
      v9 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v34);
  }

  *a3 = 0;
  a3[1] = 0;
  quasar::PTree::PTree(&v33);
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 8) == 6 && **a1 == 1886218611 && *(*a1 + 4) == 25964)
    {
      goto LABEL_45;
    }

    if (*(a1 + 8) == 8 && **a1 == 0x79706F632D776172)
    {
      goto LABEL_48;
    }

    if (*(a1 + 8) == 10 && **a1 == 0x6974737561687865 && *(*a1 + 8) == 25974)
    {
      goto LABEL_46;
    }

    v15 = *(a1 + 8);
    if (v15 == 7)
    {
      v11 = *a1;
      goto LABEL_56;
    }

    if (v15 != 5)
    {
      goto LABEL_72;
    }

    if (**a1 != 1701274994 || *(*a1 + 4) != 120)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v10 = *(a1 + 23);
    if (v10 > 6)
    {
      v11 = a1;
      if (v10 != 7)
      {
        if (v10 != 8)
        {
          if (v10 != 10)
          {
            goto LABEL_72;
          }

          if (*a1 != 0x6974737561687865 || *(a1 + 8) != 25974)
          {
            goto LABEL_72;
          }

LABEL_46:
          std::allocate_shared[abi:ne200100]<quasar::ExhaustiveEnumerator,std::allocator<quasar::ExhaustiveEnumerator>,std::string const&,quasar::PTree const&,0>();
        }

        if (*a1 != 0x79706F632D776172)
        {
          goto LABEL_72;
        }

LABEL_48:
        std::allocate_shared[abi:ne200100]<quasar::RawCopyEnumerator,std::allocator<quasar::RawCopyEnumerator>,std::string const&,0>();
      }

LABEL_56:
      v19 = *v11;
      v20 = *(v11 + 3);
      if (v19 != 1769104740 || v20 != 1684371049)
      {
        goto LABEL_72;
      }

      SpeechModelInfo = quasar::SystemConfig::getSpeechModelInfo(a2);
      v23 = SpeechModelInfo + 120;
      v24 = *(SpeechModelInfo + 143);
      if (v24 < 0)
      {
        if (*(SpeechModelInfo + 128) != 5)
        {
          goto LABEL_70;
        }

        v23 = *v23;
      }

      else if (v24 != 5)
      {
        goto LABEL_70;
      }

      v25 = *v23;
      v26 = *(v23 + 4);
      if (v25 == 1247764842 && v26 == 80)
      {
        std::allocate_shared[abi:ne200100]<quasar::JapaneseDerivedEnumerator,std::allocator<quasar::JapaneseDerivedEnumerator>,std::string const&,quasar::SystemConfig &,quasar::PTree const&,0>();
      }

LABEL_70:
      std::allocate_shared[abi:ne200100]<quasar::DerivedEnumerator,std::allocator<quasar::DerivedEnumerator>,std::string const&,quasar::SystemConfig &,quasar::PTree const&,0>();
    }

    if (v10 != 5)
    {
      if (v10 != 6)
      {
        goto LABEL_72;
      }

      if (*a1 != 1886218611 || *(a1 + 4) != 25964)
      {
        goto LABEL_72;
      }

LABEL_45:
      std::allocate_shared[abi:ne200100]<quasar::SimpleNameEnumerator,std::allocator<quasar::SimpleNameEnumerator>,std::string const&,quasar::PTree const&,0>();
    }

    if (*a1 != 1701274994 || *(a1 + 4) != 120)
    {
LABEL_72:
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
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "Unknown NameEnumerator ", 24);
      v29 = *(a1 + 23);
      if (v29 >= 0)
      {
        v30 = a1;
      }

      else
      {
        v30 = *a1;
      }

      if (v29 >= 0)
      {
        v31 = *(a1 + 23);
      }

      else
      {
        v31 = *(a1 + 8);
      }

      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "", 1);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v34);
    }
  }

  std::allocate_shared[abi:ne200100]<quasar::RegexEnumerator,std::allocator<quasar::RegexEnumerator>,std::string const&,quasar::PTree const&,0>();
}

void sub_1B5478830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  quasar::QuasarInfoMessage::~QuasarInfoMessage(va);
  JUMPOUT(0x1B547883CLL);
}

void quasar::NameEnumerator::~NameEnumerator(void **this)
{
  *this = &unk_1F2D13520;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void quasar::NameEnumerator::addSpecEnumerations(uint64_t a1, int **a2, uint64_t *a3, char a4, uint64_t a5)
{
  v5 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    if (*a2 == a2[1])
    {

      std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::push_back[abi:ne200100](a5, a3);
    }

    else
    {
      v30[0] = 0;
      v30[1] = 0;
      v29 = v30;
      do
      {
        if (*(v5 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v24, *v5, *(v5 + 8));
        }

        else
        {
          v9 = *v5;
          v24.__r_.__value_.__r.__words[2] = *(v5 + 16);
          *&v24.__r_.__value_.__l.__data_ = v9;
        }

        if (*(v5 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v5 + 24), *(v5 + 32));
        }

        else
        {
          v10 = *(v5 + 24);
          __p.__r_.__value_.__r.__words[2] = *(v5 + 40);
          *&__p.__r_.__value_.__l.__data_ = v10;
        }

        v26 = *(v5 + 48);
        std::map<std::pair<quasar::PronType,std::string>,float>::map[abi:ne200100](&v27, v5 + 56);
        if (v30 == std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::find<std::string>(&v29, &__p))
        {
          v22 = 0uLL;
          v23 = 0;
          v30[3] = &__p;
          v11 = std::__tree<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v29, &__p.__r_.__value_.__l.__data_);
          std::vector<quasar::LmeDataFactoryBase::Word>::__vdeallocate((v11 + 56));
          *(v11 + 56) = v22;
          *(v11 + 72) = v23;
          v23 = 0;
          v22 = 0uLL;
          v31 = &v22;
          std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&v31);
        }

        *&v22 = &__p;
        v12 = std::__tree<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v29, &__p.__r_.__value_.__l.__data_);
        std::vector<quasar::LmeDataFactoryBase::Word>::push_back[abi:ne200100]((v12 + 56), &v24);
        std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v27, v28);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        v5 += 80;
      }

      while (v5 != v6);
      for (i = *a2; i != a2[1]; i += 8)
      {
        v22 = 0uLL;
        v23 = 0;
        v14 = *(i + 1);
        if (v14 != *(i + 2))
        {
          v15 = *i;
          do
          {
            v16 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::find<std::string>(&v29, v14);
            if (v30 == v16)
            {
              if ((a4 & 1) == 0)
              {
                goto LABEL_37;
              }
            }

            else
            {
              v18 = *(v16 + 56);
              v17 = *(v16 + 64);
              while (v18 != v17)
              {
                if (*(v18 + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v24, *v18, *(v18 + 1));
                }

                else
                {
                  v19 = *v18;
                  v24.__r_.__value_.__r.__words[2] = *(v18 + 2);
                  *&v24.__r_.__value_.__l.__data_ = v19;
                }

                if (*(v18 + 47) < 0)
                {
                  std::string::__init_copy_ctor_external(&__p, *(v18 + 3), *(v18 + 4));
                }

                else
                {
                  v20 = *(v18 + 24);
                  __p.__r_.__value_.__r.__words[2] = *(v18 + 5);
                  *&__p.__r_.__value_.__l.__data_ = v20;
                }

                v26 = *(v18 + 12);
                std::map<std::pair<quasar::PronType,std::string>,float>::map[abi:ne200100](&v27, v18 + 56);
                v26 *= v15;
                std::vector<quasar::LmeDataFactoryBase::Word>::push_back[abi:ne200100](&v22, &v24);
                std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v27, v28);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v24.__r_.__value_.__l.__data_);
                }

                v18 += 5;
              }
            }

            v14 += 24;
          }

          while (v14 != *(i + 2));
        }

        std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::push_back[abi:ne200100](a5, &v22);
LABEL_37:
        v24.__r_.__value_.__r.__words[0] = &v22;
        std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&v24);
      }

      std::__tree<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>>>::destroy(&v29, v30[0]);
    }
  }
}

void sub_1B5478BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, void *a33)
{
  *(v33 - 96) = &a11;
  std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100]((v33 - 96));
  quasar::LmeDataFactoryBase::Word::~Word(&__p);
  std::__tree<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>>>::destroy(&a32, a33);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::LmeDataFactoryBase::Word>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<quasar::LmeDataFactoryBase::Word const&>(a1, a2);
  }

  else
  {
    std::vector<quasar::LmeDataFactoryBase::Word>::__construct_one_at_end[abi:ne200100]<quasar::LmeDataFactoryBase::Word const&>(a1, a2);
    result = v3 + 80;
  }

  a1[1] = result;
  return result;
}

void quasar::RawCopyEnumerator::~RawCopyEnumerator(void **this)
{
  *this = &unk_1F2D13520;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F2D13520;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::RawCopyEnumerator::addEnumerations(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 != a2[1])
  {
    memset(v4, 0, sizeof(v4));
    std::to_string(&v3, *(v2 + 48));
    v5.__end_cap_.__value_ = v4;
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v4, 1uLL);
  }
}

void sub_1B5478EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  __p = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<quasar::SimpleNameEnumerator>::__shared_ptr_emplace[abi:ne200100]<std::string const&,quasar::PTree const&,std::allocator<quasar::SimpleNameEnumerator>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D135B8;
  quasar::SimpleNameEnumerator::SimpleNameEnumerator(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::SimpleNameEnumerator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D135B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::RawCopyEnumerator>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::RawCopyEnumerator>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D13608;
  quasar::NameEnumerator::NameEnumerator(a1 + 3, a2);
  a1[3] = &unk_1F2D13568;
  return a1;
}

void std::__shared_ptr_emplace<quasar::RawCopyEnumerator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D13608;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::ExhaustiveEnumerator>::__shared_ptr_emplace[abi:ne200100]<std::string const&,quasar::PTree const&,std::allocator<quasar::ExhaustiveEnumerator>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D13658;
  quasar::ExhaustiveEnumerator::ExhaustiveEnumerator(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::ExhaustiveEnumerator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D13658;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::RegexEnumerator>::__shared_ptr_emplace[abi:ne200100]<std::string const&,quasar::PTree const&,std::allocator<quasar::RegexEnumerator>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D136A8;
  quasar::RegexEnumerator::RegexEnumerator(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::RegexEnumerator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D136A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::JapaneseDerivedEnumerator>::__shared_ptr_emplace[abi:ne200100]<std::string const&,quasar::SystemConfig &,quasar::PTree const&,std::allocator<quasar::JapaneseDerivedEnumerator>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D136F8;
  quasar::JapaneseDerivedEnumerator::JapaneseDerivedEnumerator(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::JapaneseDerivedEnumerator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D136F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::DerivedEnumerator>::__shared_ptr_emplace[abi:ne200100]<std::string const&,quasar::SystemConfig &,quasar::PTree const&,std::allocator<quasar::DerivedEnumerator>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D13748;
  quasar::DerivedEnumerator::DerivedEnumerator(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::DerivedEnumerator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D13748;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__tree<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<quasar::LmeDataFactoryBase::Word>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<quasar::LmeDataFactoryBase::Word>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<quasar::LmeDataFactoryBase::Word>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::vector<quasar::LmeDataFactoryBase::Word>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<quasar::LmeDataFactoryBase::Word>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *std::vector<quasar::LmeDataFactoryBase::Word>::__construct_one_at_end[abi:ne200100]<quasar::LmeDataFactoryBase::Word const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v6;
  }

  *(v4 + 48) = *(a2 + 12);
  result = std::map<std::pair<quasar::PronType,std::string>,float>::map[abi:ne200100]((v4 + 56), a2 + 56);
  *(a1 + 8) = v4 + 80;
  return result;
}

void sub_1B5479AD8(_Unwind_Exception *exception_object)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<quasar::LmeDataFactoryBase::Word const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>>(a1, v6);
  }

  v7 = 80 * v2;
  v16 = 0;
  v17 = v7;
  v18 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    *(v7 + 40) = *(a2 + 5);
    *(v7 + 24) = v9;
  }

  *(v7 + 48) = *(a2 + 12);
  std::map<std::pair<quasar::PronType,std::string>,float>::map[abi:ne200100]((v7 + 56), a2 + 56);
  *&v18 = v18 + 80;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(&v16);
  return v15;
}

void sub_1B5479C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

srilm::NgramCountContext *srilm::NgramCountContext::NgramCountContext(srilm::NgramCountContext *this)
{
  *this = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 10) = 0xBFF0000000000000;
  *(this + 22) = 0;
  std::string::basic_string[abi:ne200100]<0>(this + 96, "");
  std::string::basic_string[abi:ne200100]<0>(this + 120, "");
  std::string::basic_string[abi:ne200100]<0>(this + 144, "");
  return this;
}

void sub_1B5479D54(_Unwind_Exception *exception_object)
{
  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  v4 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(v1 + 40);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *v2;
  *v2 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  _Unwind_Resume(exception_object);
}

void srilm::NgramCountContext::~NgramCountContext(void **this)
{
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  v2 = this[6];
  this[6] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = this[5];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[3];
  this[3] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = this[2];
  this[2] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = this[1];
  this[1] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }
}

uint64_t kaldi::quasar::ComputeEngineBufferItf::GetFirstNonZeroColumn(kaldi::quasar::ComputeEngineBufferItf *this, float a2)
{
  if ((*(*this + 176))(this) != 2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "GetNumDims() == 2");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
  }

  v4 = kaldi::Matrix<float>::Matrix(v7);
  (*(*this + 24))(this, v7, v4);
  NonZeroColumn = kaldi::MatrixBase<float>::FirstNonZeroColumn(v7, a2);
  kaldi::Matrix<float>::~Matrix(v7);
  return NonZeroColumn;
}

uint64_t kaldi::quasar::ComputeEngineBufferItf::GetShapeString@<X0>(kaldi::quasar::ComputeEngineBufferItf *this@<X0>, char *a2@<X8>)
{
  result = (*(*this + 176))(this);
  if (result)
  {
    v5 = result;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "[ ", 2);
    v7 = (*(*this + 184))(this, 0);
    MEMORY[0x1B8C84C00](v6, v7);
    if (v5 >= 2)
    {
      v8 = 1;
      do
      {
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, ", ", 2);
        v10 = (*(*this + 184))(this, v8);
        MEMORY[0x1B8C84C00](v9, v10);
        v8 = (v8 + 1);
      }

      while (v5 != v8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, " ]", 2);
    std::stringbuf::str();
    v11 = *MEMORY[0x1E69E54E8];
    *(&v11 + *(v11 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v12 = MEMORY[0x1E69E5548] + 16;
    if (v14 < 0)
    {
      operator delete(v13[7].__locale_);
    }

    v12 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v13);
    std::ostream::~ostream();
    return MEMORY[0x1B8C85200](&v15);
  }

  else
  {
    a2[23] = 2;
    strcpy(a2, "[]");
  }

  return result;
}

void sub_1B547A300(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  std::ostringstream::~ostringstream(va, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](va1);
  _Unwind_Resume(a1);
}

void kaldi::quasar::ComputeEngineItf::CreateConcatMove(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1] - *a2;
  if (v7 == 1)
  {
    v8 = *v6;
    *v6 = 0;
    *a4 = v8;
  }

  else if (v7)
  {
    __p = 0;
    v22 = 0;
    v23 = 0;
    std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(&__p, v7);
    v11 = *a2;
    v12 = a2[1];
    if (*a2 != v12)
    {
      v13 = v22;
      do
      {
        v14 = *v11;
        if (v13 >= v23)
        {
          v15 = (v13 - __p) >> 3;
          if ((v15 + 1) >> 61)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v16 = (v23 - __p) >> 2;
          if (v16 <= v15 + 1)
          {
            v16 = v15 + 1;
          }

          if (v23 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v16;
          }

          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(&__p, v17);
          }

          v18 = (8 * v15);
          *v18 = v14;
          v13 = (8 * v15 + 8);
          v19 = v18 - (v22 - __p);
          memcpy(v19, __p, v22 - __p);
          v20 = __p;
          __p = v19;
          v22 = v13;
          v23 = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v13 = v14;
          v13 += 8;
        }

        v22 = v13;
        ++v11;
      }

      while (v11 != v12);
    }

    (*(*a1 + 104))(a1, &__p, a3);
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }
  }

  else
  {
    *a4 = 0;
  }
}

void sub_1B547A4D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::ComputeEngineItf::CreateConcat(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  __p = 0;
  v16 = 0;
  v17 = 0;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v7 = 0;
    do
    {
      v8 = *v5;
      if (v7 >= v17)
      {
        v9 = (v7 - __p) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v10 = (v17 - __p) >> 2;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v17 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(&__p, v11);
        }

        v12 = (8 * v9);
        *v12 = v8;
        v7 = (8 * v9 + 8);
        v13 = v12 - (v16 - __p);
        memcpy(v13, __p, v16 - __p);
        v14 = __p;
        __p = v13;
        v16 = v7;
        v17 = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v7 = v8;
        v7 += 8;
      }

      v16 = v7;
      ++v5;
    }

    while (v5 != v6);
  }

  (*(*a1 + 104))(a1, &__p, a3);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

void sub_1B547A658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::ComputeEngineItf::CreateSplitMove@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_5;
  }

  result = (*(*result + 176))(result);
  if (!result)
  {
    goto LABEL_5;
  }

  result = (*(**a2 + 184))(*a2, 0);
  if (result == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a3, 1uLL);
  }

  if (result)
  {
    v7 = *a2;
    v8 = *(*a1 + 112);

    return v8(a1, v7);
  }

  else
  {
LABEL_5:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_1B547A7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::ComputeEngineItf::RunBatch(uint64_t a1, __int128 **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    do
    {
      kaldi::quasar::ComputeEngineItf::CreateConcatMove(a1, v7 + 3, 0, &v38);
      if (*(v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v33, *v7, *(v7 + 1));
      }

      else
      {
        v9 = *v7;
        v33.__r_.__value_.__r.__words[2] = *(v7 + 2);
        *&v33.__r_.__value_.__l.__data_ = v9;
      }

      v10 = v38;
      v38 = 0;
      v34 = v10;
      v11 = v36;
      if (v36 >= v37)
      {
        v15 = (v36 - v35) >> 5;
        v16 = v15 + 1;
        if ((v15 + 1) >> 59)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v17 = v37 - v35;
        if ((v37 - v35) >> 4 > v16)
        {
          v16 = v17 >> 4;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFE0)
        {
          v18 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        v43 = &v35;
        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>(&v35, v18);
        }

        v19 = 32 * v15;
        v20 = *&v33.__r_.__value_.__l.__data_;
        *(v19 + 16) = *(&v33.__r_.__value_.__l + 2);
        *v19 = v20;
        memset(&v33, 0, sizeof(v33));
        v21 = v34;
        v34 = 0;
        *(v19 + 24) = v21;
        v14 = 32 * v15 + 32;
        v22 = (32 * v15 - (v36 - v35));
        memcpy((v19 - (v36 - v35)), v35, v36 - v35);
        v23 = v35;
        v24 = v37;
        v35 = v22;
        v36 = v14;
        v37 = 0;
        v41 = v23;
        v42 = v24;
        v39 = v23;
        v40 = v23;
        std::__split_buffer<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(&v39);
      }

      else
      {
        v12 = *&v33.__r_.__value_.__l.__data_;
        *(v36 + 16) = *(&v33.__r_.__value_.__l + 2);
        *v11 = v12;
        memset(&v33, 0, sizeof(v33));
        v13 = v34;
        v34 = 0;
        *(v11 + 24) = v13;
        v14 = v11 + 32;
      }

      v36 = v14;
      v25 = v34;
      v34 = 0;
      if (v25)
      {
        (*(v25->__r_.__value_.__r.__words[0] + 8))(v25);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      v26 = v38;
      v38 = 0;
      if (v26)
      {
        (*(v26->__r_.__value_.__r.__words[0] + 8))(v26);
      }

      v7 += 3;
    }

    while (v7 != v8);
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  (*(*a1 + 128))(a1, &v35, a3, a4, &v39);
  v27 = *a5;
  v28 = *(a5 + 8);
  while (v28 != v27)
  {
    v28 -= 24;
    v33.__r_.__value_.__r.__words[0] = v28;
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v33);
  }

  *(a5 + 8) = v27;
  v29 = v39;
  v30 = v40;
  if (v39 != v40)
  {
    do
    {
      kaldi::quasar::ComputeEngineItf::CreateSplitMove(a1, v29, &v33);
      std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::push_back[abi:ne200100](a5, &v33);
      v38 = &v33;
      std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v38);
      ++v29;
    }

    while (v29 != v30);
  }

  v33.__r_.__value_.__r.__words[0] = &v39;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v33);
  v39 = &v35;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v39);
}

void sub_1B547AAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  a11 = &a20;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a11);
  a11 = &a16;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void **std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

void kaldi::quasar::ComputeEngineConfigItf::~ComputeEngineConfigItf(kaldi::quasar::ComputeEngineConfigItf *this)
{
  *this = &unk_1F2D13870;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *kaldi::quasar::ComputeEngineConfigItf::CreateComputeEngineAllowingFallback@<X0>(kaldi::quasar::ComputeEngineConfigItf *this@<X0>, uint64_t a2@<X8>)
{
  result = (*(*this + 24))(&v4);
  *a2 = 0;
  *(a2 + 8) = v4;
  return result;
}

void kaldi::quasar::ComputeEngineBufferItf::CopyFromImpl(kaldi::quasar::ComputeEngineBufferItf *this, const kaldi::quasar::ComputeEngineBufferItf *a2)
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "CopyFromImpl not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
}

void kaldi::quasar::ComputeEngineBufferItf::GetFloat16Scalar(kaldi::quasar::ComputeEngineBufferItf *this)
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "GetFloatScalarFloat16 not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void kaldi::quasar::ComputeEngineBufferItf::GetWritableDataFloat16(kaldi::quasar::ComputeEngineBufferItf *this)
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "GetWritableDataFloat16 not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void kaldi::quasar::ComputeEngineBufferItf::GetDataFloat16(kaldi::quasar::ComputeEngineBufferItf *this)
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "GetDataFloatFloat16 not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void kaldi::quasar::ComputeEngineBufferItf::GetWritableDataFloat(kaldi::quasar::ComputeEngineBufferItf *this)
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "GetWritableDataFloat not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void kaldi::quasar::ComputeEngineBufferItf::GetDataFloat(kaldi::quasar::ComputeEngineBufferItf *this)
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "GetDataFloat not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void kaldi::quasar::ComputeEngineBufferItf::GetDataInt32(kaldi::quasar::ComputeEngineBufferItf *this)
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "GetDataInt32 not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void kaldi::quasar::ComputeEngineBufferItf::isDataFloat16(kaldi::quasar::ComputeEngineBufferItf *this)
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "isDataFloat16 not implemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void **std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void *quasar::corrective_reranking::operator<<(void *a1, unsigned int *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "(", 1);
  v5 = MEMORY[0x1B8C84C00](v4, *a2);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ", ", 2);
  v7 = MEMORY[0x1B8C84C00](v6, a2[1]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ")", 1);
  return a1;
}

void *quasar::corrective_reranking::operator<<(void *a1, uint64_t a2)
{
  quasar::joinToList<std::vector<quasar::corrective_reranking::TextRange>>(a2, 0);
  if ((v7 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1B547B0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::joinToList<std::vector<quasar::corrective_reranking::TextRange>>(uint64_t a1, int a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "[", 1);
  if (*a1 != *(a1 + 8))
  {
    if (a2)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "\n ", 2);
      v4 = ",\n ";
    }

    else
    {
      v4 = ", ";
    }

    v7[0] = v4;
    v7[1] = strlen(v4);
    quasar::joinToStream<std::vector<quasar::corrective_reranking::TextRange>>(&v9, a1, v7);
    if (a2)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "\n", 1);
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "]", 1);
  std::stringbuf::str();
  v8[0] = *MEMORY[0x1E69E54D8];
  v5 = *(MEMORY[0x1E69E54D8] + 72);
  *(v8 + *(v8[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v9 = v5;
  v10 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v13);
}

void sub_1B547B324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a12, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B8C85200](&a28);
  _Unwind_Resume(a1);
}

void sub_1B547B500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B547B724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void quasar::corrective_reranking::Parse::getTarget(quasar::corrective_reranking::Parse *this@<X0>, char a2@<W1>, void *a3@<X8>)
{
  quasar::corrective_reranking::Parse::getTargetWithRanges(this, a2, v4);
  quasar::corrective_reranking::getTokens(v4, a3);
  v5 = v4;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void sub_1B547B808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t quasar::corrective_reranking::Parse::getIntent@<X0>(quasar::corrective_reranking::Parse *this@<X0>, uint64_t a2@<X8>)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a2, "dictate");
  result = quasar::corrective_reranking::Parse::getCommandTokens(v4);
  v6 = result + 16;
  do
  {
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_72;
    }

    v7 = *(this + 7);
    v8 = *(this + 8);
    if (v7 != v8)
    {
      v9 = *(v6 + 39);
      if (v9 >= 0)
      {
        v10 = *(v6 + 39);
      }

      else
      {
        v10 = *(v6 + 24);
      }

      if (v9 >= 0)
      {
        v11 = (v6 + 16);
      }

      else
      {
        v11 = *(v6 + 16);
      }

      while (1)
      {
        v12 = *(v7 + 23);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(v7 + 8);
        }

        if (v12 == v10)
        {
          v14 = v13 >= 0 ? v7 : *v7;
          result = memcmp(v14, v11, v10);
          if (!result)
          {
            break;
          }
        }

        v7 += 24;
        if (v7 == v8)
        {
          v7 = v8;
          break;
        }
      }
    }
  }

  while (v7 == v8);
  result = std::string::operator=(a2, (v6 + 16));
  v15 = *(a2 + 23);
  if (v15 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  if (v15 < 0)
  {
    v15 = *(a2 + 8);
  }

  if (v15 >= 6)
  {
    v17 = v16 + v15;
    result = v16;
    while (1)
    {
      result = memchr(result, 105, v15 - 5);
      if (!result)
      {
        goto LABEL_72;
      }

      if (*result == 1702063721 && *(result + 4) == 29810)
      {
        break;
      }

      ++result;
      v15 = v17 - result;
      if (v17 - result < 6)
      {
        goto LABEL_72;
      }
    }

    if (result != v17 && result - v16 != -1)
    {
      v20 = *(this + 7);
      v19 = *(this + 8);
      if (v20 != v19)
      {
        v21 = *(this + 7);
        while (1)
        {
          v22 = *(v21 + 23);
          if (v22 < 0)
          {
            if (v21[1] == 10)
            {
              v23 = *v21;
LABEL_43:
              v24 = *v23;
              v25 = *(v23 + 4);
              if (v24 != 0x475241545446454CLL || v25 != 21573)
              {
                goto LABEL_47;
              }

LABEL_49:
              v27 = *(v20 + 23);
              if (v27 < 0)
              {
                if (*(v20 + 8) != 11)
                {
                  goto LABEL_58;
                }

                v28 = *v20;
              }

              else
              {
                v28 = v20;
                if (v27 != 11)
                {
LABEL_58:
                  v20 += 24;
                  if (v20 == v19)
                  {
                    if (v21 == v19)
                    {
                      break;
                    }

                    v32 = "insertafter";
                    goto LABEL_61;
                  }

                  goto LABEL_49;
                }
              }

              v29 = *v28;
              v30 = *(v28 + 3);
              if (v29 == 0x5241545448474952 && v30 == 0x5445475241545448)
              {
                v33 = "insertbefore";
                if (v20 != v19 && v21 != v19)
                {
                  v33 = "insertbetween";
                }

                if (v20 == v19)
                {
                  v32 = "insertafter";
                }

                else
                {
                  v32 = v33;
                }

                if (v20 == v19 && v21 == v19)
                {
                  break;
                }

LABEL_61:
                result = MEMORY[0x1B8C84820](a2, v32);
                break;
              }

              goto LABEL_58;
            }
          }

          else
          {
            v23 = v21;
            if (v22 == 10)
            {
              goto LABEL_43;
            }
          }

LABEL_47:
          v21 += 3;
          if (v21 == v19)
          {
            v21 = *(this + 8);
            goto LABEL_49;
          }
        }
      }
    }
  }

LABEL_72:
  if (*(this + 112) == 1)
  {
    v36 = *(this + 11);
    v35 = *(this + 12);
    if (v36 == v35)
    {
      v37 = INFINITY;
    }

    else
    {
      if (*v36)
      {
        return result;
      }

      v37 = (*(v35 - 1) + *(v35 - 2));
    }

    if (fabsf(v37) == INFINITY)
    {
      return std::string::append(a2, "All");
    }
  }

  return result;
}

void sub_1B547BB08(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::corrective_reranking::Parse::getPayload(quasar::corrective_reranking::Parse *this@<X0>, char a2@<W1>, std::basic_string<char32_t> *a3@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    goto LABEL_2;
  }

  if ((*(this + 167) & 0x80000000) == 0)
  {
    if (*(this + 167))
    {
      *&a3->__r_.__value_.__l.__data_ = *(this + 9);
      a3->__r_.__value_.__r.__words[2] = *(this + 20);
      return;
    }

    goto LABEL_2;
  }

  v13 = *(this + 19);
  if (!v13)
  {
LABEL_2:
    std::string::basic_string[abi:ne200100]<0>(__p, "PAYLOAD");
    std::unordered_set<std::string>::unordered_set(v18, __p, 1);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v5 = *(this + 7);
    v6 = *(this + 8);
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) != (*(this + 5) - *(this + 4)) >> 5)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "outputs.size() == utterance.size()", 34);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
    }

    if (v6 == v5)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(this + 4);
      if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v18, (v5 + v7)))
      {
        v11 = v16;
        if (v16 >= v17)
        {
          v12 = std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__emplace_back_slow_path<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange> const&>(&v15, (v10 + v8));
        }

        else
        {
          std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__construct_one_at_end[abi:ne200100]<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange> const&>(&v15, (v10 + v8));
          v12 = v11 + 4;
        }

        v16 = v12;
      }

      ++v9;
      v5 = *(this + 7);
      v8 += 32;
      v7 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(this + 8) - v5) >> 3) > v9);
    if (v15 == v16)
    {
LABEL_18:
      std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(a3, byte_1B5B012E0);
    }

    else
    {
      quasar::pySlice<std::basic_string<char32_t>>(this, *(v15 + 24), *(v16 - 1) + *(v16 - 2), a3);
    }

    __p[0] = &v15;
    std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](__p);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v18);
    return;
  }

  v14 = *(this + 18);

  std::basic_string<char32_t>::__init_copy_ctor_external(a3, v14, v13);
}

void sub_1B547BDB8(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B547BDE4);
}

void quasar::corrective_reranking::ASRCandidate::ASRCandidate(quasar::corrective_reranking::ASRCandidate *this, const quasar::PTree *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "text");
  quasar::PTree::getChild(a2, __p);
}

void sub_1B547BEC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

void quasar::corrective_reranking::ASRCandidate::toPtree(quasar::PTree *a1@<X8>)
{
  quasar::PTree::PTree(a1);
  std::string::basic_string[abi:ne200100]<0>(&v2, "text");
  quasar::utf::toString();
}

void sub_1B547C014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  quasar::PTree::~PTree(&a15);
  if (*(v16 - 17) < 0)
  {
    operator delete(*(v16 - 40));
  }

  quasar::PTree::~PTree(v15);
  _Unwind_Resume(a1);
}

void sub_1B547C120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::corrective_reranking::TextRange::toPtree(quasar::corrective_reranking::TextRange *this@<X0>, quasar::PTree *a2@<X8>)
{
  quasar::PTree::PTree(a2);
  std::string::basic_string[abi:ne200100]<0>(v12, "start_index");
  v4 = *this;
  Type = quasar::getType(*this);
  std::to_string(&v7, v4);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 1;
  quasar::PTree::putChild(a2, v12, &Type, 1);
  quasar::PTree::~PTree(&Type);
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "length");
  v5 = *(this + 1);
  Type = quasar::getType(v5);
  std::to_string(&v7, v5);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 1;
  quasar::PTree::putChild(a2, v12, &Type, 1);
  quasar::PTree::~PTree(&Type);
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_1B547C26C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  quasar::PTree::~PTree(va);
  if (*(v3 - 33) < 0)
  {
    operator delete(*(v3 - 56));
  }

  quasar::PTree::~PTree(v2);
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::TargetRange::toPtree(quasar::corrective_reranking::TextRange **this@<X0>, quasar::PTree *a2@<X8>)
{
  quasar::PTree::PTree(a2);
  quasar::PTree::PTree(v8);
  v4 = *this;
  v5 = this[1];
  while (v4 != v5)
  {
    quasar::corrective_reranking::TextRange::toPtree(v4, __p);
    quasar::PTree::addChild(v8, __p);
    quasar::PTree::~PTree(__p);
    v4 = (v4 + 8);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "token_ranges");
  quasar::PTree::putChild(a2, __p, v8, 1);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  quasar::PTree::~PTree(v8);
}

void sub_1B547C368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  quasar::PTree::~PTree(&a20);
  quasar::PTree::~PTree(v20);
  _Unwind_Resume(a1);
}

void sub_1B547C4A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  quasar::PTree::~PTree(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  quasar::PTree::~PTree(v16);
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::Parse::toPtree(quasar::PTree *a1@<X8>)
{
  quasar::PTree::PTree(a1);
  std::string::basic_string[abi:ne200100]<0>(&v3, "asr_candidate");
  quasar::corrective_reranking::ASRCandidate::toPtree(v2);
}

void sub_1B547CE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  quasar::PTree::~PTree(&a22);
  if (*(v23 - 49) < 0)
  {
    operator delete(*(v23 - 72));
  }

  quasar::PTree::~PTree(v22);
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::tokensWithRangesToPtree(uint64_t *a1@<X0>, quasar::PTree *a2@<X8>)
{
  quasar::PTree::PTree(a2);
  v3 = *a1;
  if (*a1 != a1[1])
  {
    quasar::PTree::PTree(v12);
    v4 = *(v3 + 24);
    Type = quasar::getType(v4);
    std::to_string(&v7, v4);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
    quasar::PTree::addChild(v12, &Type);
    quasar::PTree::~PTree(&Type);
    v5 = *(v3 + 28);
    Type = quasar::getType(v5);
    std::to_string(&v7, v5);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
    quasar::PTree::addChild(v12, &Type);
    quasar::PTree::~PTree(&Type);
    quasar::PTree::PTree(&Type);
    quasar::utf::toString();
  }
}

uint64_t quasar::corrective_reranking::Parse::getTargetWithRanges@<X0>(uint64_t this@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v3 = this;
  v33 = *MEMORY[0x1E69E9840];
  if (*(this + 112) == 1)
  {
    v6 = *(this + 88);
    v5 = *(this + 96);
    if (v6 == v5)
    {
      v7 = INFINITY;
    }

    else
    {
      if (*v6)
      {
        goto LABEL_8;
      }

      v7 = (*(v5 - 1) + *(v5 - 2));
    }

    if (fabsf(v7) == INFINITY)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      return this;
    }
  }

LABEL_8:
  if ((a2 & 1) == 0)
  {
    v8 = *(this + 120);
    v9 = *(this + 128);
    if (v8 != v9)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;

      return std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__init_with_size[abi:ne200100]<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*>(a3, v8, v9, (v9 - v8) >> 5);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "TARGET");
  std::unordered_set<std::string>::unordered_set(v29, &__p.__r_.__value_.__l.__data_, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  quasar::corrective_reranking::Parse::getIntent(v3, &v27);
  if ((v28 & 0x80000000) == 0)
  {
    if (v28 != 11)
    {
      if (v28 != 12)
      {
        if (v28 == 13)
        {
          v10 = &v27;
          goto LABEL_48;
        }

        goto LABEL_57;
      }

      if (v27 != 0x6562747265736E69 || DWORD2(v27) != 1701998438)
      {
        goto LABEL_57;
      }

      goto LABEL_38;
    }

    if (v27 != 0x6661747265736E69 || *(&v27 + 3) != 0x7265746661747265)
    {
      goto LABEL_57;
    }

    goto LABEL_44;
  }

  if (*(&v27 + 1) == 12 && *v27 == 0x6562747265736E69 && *(v27 + 8) == 1701998438)
  {
LABEL_38:
    std::string::basic_string[abi:ne200100]<0>(&__p, "RIGHTTARGET");
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(v29, &__p, &v31);
    goto LABEL_45;
  }

  if (*(&v27 + 1) == 13)
  {
    v10 = v27;
LABEL_48:
    v15 = *v10;
    v16 = *(v10 + 5);
    if (v15 == 0x6562747265736E69 && v16 == 0x6E65657774656274)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "LEFTTARGET");
      std::string::basic_string[abi:ne200100]<0>(&v31, "RIGHTTARGET");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(v29, &__p, v32);
      for (i = 0; i != -6; i -= 3)
      {
        if (SHIBYTE(v31.__r_.__value_.__r.__words[i + 2]) < 0)
        {
          operator delete(*(&__p + i * 8 + 24));
        }
      }
    }

    goto LABEL_57;
  }

  if (*(&v27 + 1) == 11 && *v27 == 0x6661747265736E69 && *(v27 + 3) == 0x7265746661747265)
  {
LABEL_44:
    std::string::basic_string[abi:ne200100]<0>(&__p, "LEFTTARGET");
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(v29, &__p, &v31);
LABEL_45:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_57:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v19 = *(v3 + 7);
  v20 = *(v3 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3) != (*(v3 + 5) - *(v3 + 4)) >> 5)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "outputs.size() == utterance.size()", 34);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  if (v20 != v19)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = *(v3 + 4);
      if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v29, (v19 + v21)))
      {
        v25 = a3[1];
        if (v25 >= a3[2])
        {
          v26 = std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__emplace_back_slow_path<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange> const&>(a3, (v24 + v22));
        }

        else
        {
          std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__construct_one_at_end[abi:ne200100]<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange> const&>(a3, (v24 + v22));
          v26 = (v25 + 32);
        }

        a3[1] = v26;
      }

      ++v23;
      v19 = *(v3 + 7);
      v22 += 32;
      v21 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(v3 + 8) - v19) >> 3) > v23);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v29);
}

void sub_1B547D6D4(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B547D70CLL);
}

void *quasar::corrective_reranking::TargetRange::TargetRange(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange*,quasar::corrective_reranking::TextRange*>(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
  return a1;
}

void quasar::corrective_reranking::TargetRange::fromStartAndLength(float a1@<S0>, float a2@<S1>, void *a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((LODWORD(a1) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&__p, "std::isfinite(startIndex)");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  if (fabsf(a2) == INFINITY)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;

    std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange*,quasar::corrective_reranking::TextRange*>(a3, 0, 0, 0);
  }

  else
  {
    v8[0] = a1;
    v8[1] = a2;
    v6 = 0;
    v7 = 0;
    __p = 0;
    std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange const*,quasar::corrective_reranking::TextRange const*>(&__p, v8, &v9, 1uLL);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange*,quasar::corrective_reranking::TextRange*>(a3, __p, v6, (v6 - __p) >> 3);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }
}

void sub_1B547D8D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::TargetRange::getTargetFromText(uint64_t a1@<X0>, uint64_t a2@<X1>, std::wstring *a3@<X8>)
{
  v3 = *(a1 + 8);
  if (*a1 == v3)
  {
    if (*(a2 + 23) < 0)
    {
      std::basic_string<char32_t>::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
    }

    else
    {
      *&a3->__r_.__value_.__l.__data_ = *a2;
      a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
    }
  }

  else
  {
    quasar::pySlice<std::basic_string<char32_t>>(a2, **a1, (*(v3 - 4) + *(v3 - 8)), a3);
  }
}

void quasar::corrective_reranking::Parse::Parse(std::wstring *this, __int128 *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, char a15, char a16, char a17, char a18, char a19)
{
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v21 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v21;
  }

  this[1].__r_.__value_.__s.__data_[0] = *(a2 + 6);
  quasar::corrective_reranking::tokenize();
}

{

  quasar::corrective_reranking::Parse::Parse(this, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

void sub_1B547DB64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 112) == 1)
  {
    v4 = *(v2 + 88);
    if (v4)
    {
      *(v2 + 96) = v4;
      operator delete(v4);
    }
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::corrective_reranking::Parse::getCommandTokens(quasar::corrective_reranking::Parse *this)
{
  v2 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  return quasar::corrective_reranking::Parse::getCommandTokens(void)::set;
}

void sub_1B547DF1C(_Unwind_Exception *a1)
{
  v4 = (v2 + 407);
  v5 = -408;
  v6 = v4;
  while (1)
  {
    v7 = *v6;
    v6 -= 24;
    if (v7 < 0)
    {
      operator delete(*(v4 - 23));
    }

    v4 = v6;
    v5 += 24;
    if (!v5)
    {
      MEMORY[0x1B8C85350](v1, 0x10A0C408EF24B1CLL);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t quasar::corrective_reranking::Parse::getCommandsWithTarget(quasar::corrective_reranking::Parse *this)
{
  v2 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  return quasar::corrective_reranking::Parse::getCommandsWithTarget(void)::set;
}

void sub_1B547E174(_Unwind_Exception *a1)
{
  v4 = (v2 + 239);
  v5 = -240;
  v6 = v4;
  while (1)
  {
    v7 = *v6;
    v6 -= 24;
    if (v7 < 0)
    {
      operator delete(*(v4 - 23));
    }

    v4 = v6;
    v5 += 24;
    if (!v5)
    {
      MEMORY[0x1B8C85350](v1, 0x10A0C408EF24B1CLL);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t quasar::corrective_reranking::Parse::getCommandsWithPayload(quasar::corrective_reranking::Parse *this)
{
  v2 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  return quasar::corrective_reranking::Parse::getCommandsWithPayload(void)::set;
}

void sub_1B547E358(_Unwind_Exception *a1)
{
  v4 = (v2 + 119);
  v5 = -120;
  v6 = v4;
  while (1)
  {
    v7 = *v6;
    v6 -= 24;
    if (v7 < 0)
    {
      operator delete(*(v4 - 23));
    }

    v4 = v6;
    v5 += 24;
    if (!v5)
    {
      MEMORY[0x1B8C85350](v1, 0x10A0C408EF24B1CLL);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t quasar::corrective_reranking::Parse::getCommandsWithMetaTarget(quasar::corrective_reranking::Parse *this)
{
  v2 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  return quasar::corrective_reranking::Parse::getCommandsWithMetaTarget(void)::set;
}

void sub_1B547E510(_Unwind_Exception *a1)
{
  v4 = (v2 + 71);
  v5 = -72;
  v6 = v4;
  while (1)
  {
    v7 = *v6;
    v6 -= 24;
    if (v7 < 0)
    {
      operator delete(*(v4 - 23));
    }

    v4 = v6;
    v5 += 24;
    if (!v5)
    {
      MEMORY[0x1B8C85350](v1, 0x10A0C408EF24B1CLL);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t quasar::corrective_reranking::Parse::getCommandsWithNoTransformerVisibleChange(quasar::corrective_reranking::Parse *this)
{
  v2 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  return quasar::corrective_reranking::Parse::getCommandsWithNoTransformerVisibleChange(void)::set;
}

void sub_1B547E754(_Unwind_Exception *a1)
{
  v4 = (v2 + 215);
  v5 = -216;
  v6 = v4;
  while (1)
  {
    v7 = *v6;
    v6 -= 24;
    if (v7 < 0)
    {
      operator delete(*(v4 - 23));
    }

    v4 = v6;
    v5 += 24;
    if (!v5)
    {
      MEMORY[0x1B8C85350](v1, 0x10A0C408EF24B1CLL);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t quasar::corrective_reranking::Parse::getCommandsThatRequireSpaceAdjustment(quasar::corrective_reranking::Parse *this)
{
  v2 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  return quasar::corrective_reranking::Parse::getCommandsThatRequireSpaceAdjustment(void)::set;
}

void sub_1B547E920(_Unwind_Exception *a1)
{
  v4 = (v2 + 95);
  v5 = -96;
  v6 = v4;
  while (1)
  {
    v7 = *v6;
    v6 -= 24;
    if (v7 < 0)
    {
      operator delete(*(v4 - 23));
    }

    v4 = v6;
    v5 += 24;
    if (!v5)
    {
      MEMORY[0x1B8C85350](v1, 0x10A0C408EF24B1CLL);
      _Unwind_Resume(a1);
    }
  }
}

BOOL quasar::corrective_reranking::Parse::isEditCommand(quasar::corrective_reranking::Parse *this)
{
  CommandTokens = quasar::corrective_reranking::Parse::getCommandTokens(this);
  quasar::corrective_reranking::Parse::getIntent(this, __p);
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(CommandTokens, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3 != 0;
}

BOOL quasar::corrective_reranking::Parse::isTargetExpectingCommand(quasar::corrective_reranking::Parse *this)
{
  CommandsWithTarget = quasar::corrective_reranking::Parse::getCommandsWithTarget(this);
  quasar::corrective_reranking::Parse::getIntent(this, __p);
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(CommandsWithTarget, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3 != 0;
}

BOOL quasar::corrective_reranking::Parse::isPayloadExpectingCommand(quasar::corrective_reranking::Parse *this)
{
  CommandsWithPayload = quasar::corrective_reranking::Parse::getCommandsWithPayload(this);
  quasar::corrective_reranking::Parse::getIntent(this, __p);
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(CommandsWithPayload, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3 != 0;
}

BOOL quasar::corrective_reranking::Parse::isIncomplete(quasar::corrective_reranking::Parse *this)
{
  isTargetExpectingCommand = quasar::corrective_reranking::Parse::isTargetExpectingCommand(this);
  if (isTargetExpectingCommand)
  {
    quasar::corrective_reranking::Parse::getTarget(this, 0, v7);
    if (v7[0] == v7[1])
    {
      v4 = 1;
      goto LABEL_13;
    }
  }

  if (!quasar::corrective_reranking::Parse::isPayloadExpectingCommand(this))
  {
    v4 = 0;
    if (!isTargetExpectingCommand)
    {
      return v4;
    }

    goto LABEL_13;
  }

  quasar::corrective_reranking::Parse::getPayload(this, 0, &__p);
  size = __p.__r_.__value_.__l.__size_;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v4 = size == 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (!isTargetExpectingCommand)
    {
      return v4;
    }

    goto LABEL_13;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (isTargetExpectingCommand)
  {
LABEL_13:
    __p.__r_.__value_.__r.__words[0] = v7;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  return v4;
}

void sub_1B547EBA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    a9 = &a12;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  }

  _Unwind_Resume(exception_object);
}

BOOL quasar::corrective_reranking::Parse::isMetaTargetExpectingCommand(quasar::corrective_reranking::Parse *this)
{
  CommandsWithMetaTarget = quasar::corrective_reranking::Parse::getCommandsWithMetaTarget(this);
  quasar::corrective_reranking::Parse::getIntent(this, __p);
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(CommandsWithMetaTarget, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3 != 0;
}

BOOL quasar::corrective_reranking::Parse::hasFullTextTarget(quasar::corrective_reranking::Parse *this)
{
  if (*(this + 112) != 1)
  {
    return 0;
  }

  v2 = *(this + 11);
  v1 = *(this + 12);
  if (v2 == v1)
  {
    v4 = INFINITY;
  }

  else
  {
    if (*v2)
    {
      return 0;
    }

    v4 = (*(v1 - 1) + *(v1 - 2));
  }

  return fabsf(v4) == INFINITY;
}

void quasar::corrective_reranking::Parse::setTargetRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::__optional_storage_base<quasar::corrective_reranking::TargetRange,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<quasar::corrective_reranking::TargetRange,false> const&>(a1 + 88, a2);
  if (*(a3 + 24) == 1)
  {
    if (*(a2 + 24))
    {
      quasar::corrective_reranking::TargetRange::getTargetFromText(a2, a3, __p);
      quasar::corrective_reranking::tokenize();
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "targetRange");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }
}

_BYTE *std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(_BYTE *__dst, char *__src)
{
  if (*__src)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *&__src[v4 + 4];
      v4 += 4;
      --v3;
    }

    while (v5);
    v6 = -v3;
    if (-v3 >= 0x3FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v6 >= 5)
    {
      if ((v6 | 1) == 5)
      {
        v8 = 7;
      }

      else
      {
        v8 = (v6 | 1) + 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(__dst, v8);
    }

    __dst[23] = v6;
    v7 = __dst;
    if (v3)
    {
      memmove(__dst, __src, v4);
      goto LABEL_15;
    }

    v6 = 0;
  }

  else
  {
    v6 = 0;
    __dst[23] = 0;
  }

  v7 = __dst;
LABEL_15:
  *&v7[4 * v6] = 0;
  return __dst;
}

BOOL quasar::corrective_reranking::Parse::isChangeInvisibleToTransformer(quasar::corrective_reranking::Parse *this)
{
  v2 = quasar::corrective_reranking::Parse::getCommandsWithNoTransformerVisibleChange(this);
  quasar::corrective_reranking::Parse::getIntent(this, __p);
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3 != 0;
}

void quasar::corrective_reranking::Parse::getTargetPrecedingFillerTokens(quasar::corrective_reranking::Parse *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *(this + 7);
  v4 = *(this + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) != (*(this + 5) - *(this + 4)) >> 5)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "outputs.size() == utterance.size()", 34);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v26);
  }

  if (v4 == v3)
  {
    return;
  }

  v6 = 0;
  while (1)
  {
    v7 = (v3 + 24 * v6);
    v8 = *(v7 + 23);
    if ((*(v7 + 23) & 0x80000000) == 0)
    {
      break;
    }

    v10 = *v7;
    v9 = v7[1];
    if (v9 != 4)
    {
      goto LABEL_12;
    }

    if (*v10 == 1701736270)
    {
      goto LABEL_10;
    }

LABEL_23:
    std::vector<quasar::TextTokenizer::Token>::clear[abi:ne200100](a2);
LABEL_24:
    ++v6;
    v3 = *(this + 7);
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 8) - v3) >> 3) <= v6)
    {
      return;
    }
  }

  if (v8 == 4 && *v7 == 1701736270)
  {
LABEL_10:
    v11 = (*(this + 4) + 32 * v6);
    v12 = *(a2 + 8);
    if (v12 >= *(a2 + 16))
    {
      v13 = std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__emplace_back_slow_path<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange> const&>(a2, v11);
    }

    else
    {
      std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__construct_one_at_end[abi:ne200100]<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange> const&>(a2, v11);
      v13 = (v12 + 32);
    }

    *(a2 + 8) = v13;
    goto LABEL_24;
  }

  v9 = *(v7 + 23);
  v10 = v7;
LABEL_12:
  if (v9 < 6)
  {
    goto LABEL_23;
  }

  v14 = v10 + v9;
  v15 = v10;
  while (1)
  {
    v16 = memchr(v15, 84, v9 - 5);
    if (!v16)
    {
      goto LABEL_23;
    }

    if (*v16 == 1196573012 && *(v16 + 2) == 21573)
    {
      break;
    }

    v15 = v16 + 1;
    v9 = v14 - v15;
    if (v14 - v15 < 6)
    {
      goto LABEL_23;
    }
  }

  if (v16 == v14 || v16 - v10 == -1)
  {
    goto LABEL_23;
  }

  if ((v8 & 0x80) != 0)
  {
    if (v7[1] == 11 && **v7 == 0x5241545448474952 && *(*v7 + 3) == 0x5445475241545448)
    {
      goto LABEL_49;
    }

    if (v7[1] != 10)
    {
      return;
    }

    v7 = *v7;
  }

  else if (v8 != 10)
  {
    if (v8 != 11)
    {
      return;
    }

    if (*v7 != 0x5241545448474952 || *(v7 + 3) != 0x5445475241545448)
    {
      return;
    }

LABEL_49:
    v21 = *(a2 + 8);
    if (*a2 != v21)
    {
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange> *,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange> *,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange> *>(v27, (*a2 + 32), v21, *a2);
      v23 = v22;
      v24 = *(a2 + 8);
      while (v24 != v23)
      {
        v25 = *(v24 - 9);
        v24 -= 4;
        if (v25 < 0)
        {
          operator delete(*v24);
        }
      }

      *(a2 + 8) = v23;
    }

    return;
  }

  if (*v7 == 0x475241545446454CLL && *(v7 + 4) == 21573)
  {
    goto LABEL_49;
  }
}

void quasar::corrective_reranking::Parse::getAdjustedPayload(const void **this@<X0>, uint64_t a2@<X8>)
{
  if (this[46])
  {
    std::operator+[abi:ne200100]<char32_t,std::char_traits<char32_t>,std::allocator<char32_t>>(this + 37, this + 40, &v9);
    v4 = *(this + 367);
    if (v4 >= 0)
    {
      v5 = (this + 43);
    }

    else
    {
      v5 = this[43];
    }

    if (v4 >= 0)
    {
      v6 = *(this + 367);
    }

    else
    {
      v6 = this[44];
    }

    v7 = std::basic_string<char32_t>::append(&v9, v5, v6);
    v8 = *&v7->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v7->__r_.__value_.__l + 2);
    *a2 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(a2, byte_1B5B012E0);
  }
}

void sub_1B547F2F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator+[abi:ne200100]<char32_t,std::char_traits<char32_t>,std::allocator<char32_t>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::basic_string<char32_t>::basic_string[abi:ne200100](a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, 4 * v5);
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    result = memmove(&v8[4 * v5], v10, 4 * v6);
  }

  *&v8[4 * v5 + 4 * v6] = 0;
  return result;
}

void quasar::corrective_reranking::Parse::updateAdjustedSlots(quasar::corrective_reranking::Parse *a1, uint64_t *a2)
{
  if (quasar::corrective_reranking::isAdjacentEditsEnabled(a1))
  {

    quasar::corrective_reranking::Parse::updateAdjustedSlotsV2(a1, a2);
  }

  else
  {

    quasar::corrective_reranking::Parse::updateAdjustedSlotsV1(a1, a2);
  }
}

void quasar::corrective_reranking::Parse::updateAdjustedSlotsV2(quasar::corrective_reranking::Parse *this, uint64_t a2)
{
  if (*(this + 256))
  {
    goto LABEL_192;
  }

  quasar::corrective_reranking::Parse::getIntent(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p.__r_.__value_.__l.__size_ != 7)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
LABEL_23:
      std::__optional_storage_base<quasar::corrective_reranking::TargetRange,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<quasar::corrective_reranking::TargetRange,false> const&>(this + 264, this + 88);
      goto LABEL_24;
    }

    v6 = *__p.__r_.__value_.__l.__data_ != 1952672100 || *(__p.__r_.__value_.__r.__words[0] + 3) != 1702125940;
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v6)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 7)
    {
      goto LABEL_23;
    }

    if (__p.__r_.__value_.__s.__data_[0] != 1952672100 || *(__p.__r_.__value_.__s.__data_ + 3) != 1702125940)
    {
      goto LABEL_23;
    }
  }

  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  quasar::corrective_reranking::TargetRange::fromStartAndLength(v7, 0.0, &__p);
  std::optional<quasar::corrective_reranking::TargetRange>::operator=[abi:ne200100]<quasar::corrective_reranking::TargetRange,void>(this + 11, &__p);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_24:
  if (*(this + 112) == 1)
  {
    quasar::corrective_reranking::TargetRange::getTargetFromText(this + 88, a2, &__dst);
  }

  else
  {
    std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&__dst, byte_1B5B012E0);
  }

  quasar::corrective_reranking::Parse::getIntent(this, &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 7)
    {
      goto LABEL_45;
    }

    if (__p.__r_.__value_.__s.__data_[0] != 1952672100 || *(__p.__r_.__value_.__s.__data_ + 3) != 1702125940)
    {
      goto LABEL_45;
    }

LABEL_43:
    quasar::corrective_reranking::detokenize(this + 4);
  }

  if (__p.__r_.__value_.__l.__size_ != 7)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_45;
  }

  v10 = *__p.__r_.__value_.__l.__data_ != 1952672100 || *(__p.__r_.__value_.__r.__words[0] + 3) != 1702125940;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v10)
  {
    goto LABEL_43;
  }

LABEL_45:
  quasar::corrective_reranking::Parse::getIntent(this, &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 6)
    {
      goto LABEL_68;
    }

    if (__p.__r_.__value_.__s.__data_[0] != 1701602660 || WORD2(__p.__r_.__value_.__r.__words[0]) != 25972)
    {
      goto LABEL_68;
    }

LABEL_61:
    std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&v129, byte_1B5B012E0);
    std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&v128, byte_1B5B012E0);
    std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&v127, byte_1B5B012E0);
    quasar::corrective_reranking::AdjustedPayloadParts::AdjustedPayloadParts(&__p, &v129, &v128, &v127);
    std::optional<quasar::corrective_reranking::AdjustedPayloadParts>::operator=[abi:ne200100]<quasar::corrective_reranking::AdjustedPayloadParts,void>(this + 296, &__p);
    if (v124 < 0)
    {
      operator delete(v123);
    }

    if (v122 < 0)
    {
      operator delete(v121);
    }

    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_184;
    }

    v14 = __p.__r_.__value_.__r.__words[0];
LABEL_121:
    operator delete(v14);
    goto LABEL_184;
  }

  if (__p.__r_.__value_.__l.__size_ != 6)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_68;
  }

  v13 = *__p.__r_.__value_.__l.__data_ != 1701602660 || *(__p.__r_.__value_.__r.__words[0] + 4) != 25972;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v13)
  {
    goto LABEL_61;
  }

LABEL_68:
  quasar::corrective_reranking::Parse::getIntent(this, &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 12)
    {
      goto LABEL_91;
    }

    if (__p.__r_.__value_.__r.__words[0] != 0x6562747265736E69 || __p.__r_.__value_.__s.__data_[2] != 1701998438)
    {
      goto LABEL_91;
    }

LABEL_84:
    quasar::corrective_reranking::Parse::getPayload(this, 0, &__p);
    if (quasar::corrective_reranking::Parse::needsSpaceBetween(&__p, &__dst))
    {
      v18 = " ";
    }

    else
    {
      v18 = byte_1B5B012E0;
    }

    std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&v129, v18);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&v128, byte_1B5B012E0);
    quasar::corrective_reranking::Parse::getPayload(this, 0, &v127);
    std::operator+[abi:ne200100]<char32_t,std::char_traits<char32_t>,std::allocator<char32_t>>(&v129.__r_.__value_.__l.__data_, &__dst.__r_.__value_.__l.__data_, &v126);
    quasar::corrective_reranking::AdjustedPayloadParts::AdjustedPayloadParts(&__p, &v128, &v127, &v126);
    std::optional<quasar::corrective_reranking::AdjustedPayloadParts>::operator=[abi:ne200100]<quasar::corrective_reranking::AdjustedPayloadParts,void>(this + 296, &__p);
    goto LABEL_113;
  }

  if (__p.__r_.__value_.__l.__size_ != 12)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_91;
  }

  v17 = *__p.__r_.__value_.__l.__data_ != 0x6562747265736E69 || *(__p.__r_.__value_.__r.__words[0] + 8) != 1701998438;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v17)
  {
    goto LABEL_84;
  }

LABEL_91:
  quasar::corrective_reranking::Parse::getIntent(this, &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 11)
    {
      goto LABEL_123;
    }

    if (__p.__r_.__value_.__r.__words[0] != 0x6661747265736E69 || *(__p.__r_.__value_.__r.__words + 3) != 0x7265746661747265)
    {
      goto LABEL_123;
    }

    goto LABEL_107;
  }

  if (__p.__r_.__value_.__l.__size_ != 11)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_123;
  }

  v21 = *__p.__r_.__value_.__l.__data_ != 0x6661747265736E69 || *(__p.__r_.__value_.__r.__words[0] + 3) != 0x7265746661747265;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v21)
  {
LABEL_107:
    quasar::corrective_reranking::Parse::getPayload(this, 0, &__p);
    if (quasar::corrective_reranking::Parse::needsSpaceBetween(&__dst, &__p))
    {
      v22 = " ";
    }

    else
    {
      v22 = byte_1B5B012E0;
    }

    std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&v129, v22);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::operator+[abi:ne200100]<char32_t,std::char_traits<char32_t>,std::allocator<char32_t>>(&__dst.__r_.__value_.__l.__data_, &v129.__r_.__value_.__l.__data_, &v128);
    quasar::corrective_reranking::Parse::getPayload(this, 0, &v127);
    std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&v126, byte_1B5B012E0);
    quasar::corrective_reranking::AdjustedPayloadParts::AdjustedPayloadParts(&__p, &v128, &v127, &v126);
    std::optional<quasar::corrective_reranking::AdjustedPayloadParts>::operator=[abi:ne200100]<quasar::corrective_reranking::AdjustedPayloadParts,void>(this + 296, &__p);
LABEL_113:
    if (v124 < 0)
    {
      operator delete(v123);
    }

    if (v122 < 0)
    {
      operator delete(v121);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v126.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_184;
    }

    v14 = v126.__r_.__value_.__r.__words[0];
    goto LABEL_121;
  }

LABEL_123:
  quasar::corrective_reranking::Parse::getIntent(this, &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 9)
    {
      goto LABEL_144;
    }

    if (__p.__r_.__value_.__r.__words[0] != 0x6C416574656C6564 || LOBYTE(__p.__r_.__value_.__r.__words[1]) != 108)
    {
      goto LABEL_144;
    }

LABEL_139:
    if (*(this + 288) != 1)
    {
      goto LABEL_399;
    }

    v27 = *(this + 33);
    v26 = *(this + 34);
    if (v27 == v26)
    {
      v28 = INFINITY;
    }

    else
    {
      if (*v27)
      {
        goto LABEL_399;
      }

      v28 = (*(v26 - 1) + *(v26 - 2));
    }

    if (fabsf(v28) == INFINITY)
    {
      std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&v129, byte_1B5B012E0);
      std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&v128, byte_1B5B012E0);
      std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&v127, byte_1B5B012E0);
      quasar::corrective_reranking::AdjustedPayloadParts::AdjustedPayloadParts(&__p, &v129, &v128, &v127);
      std::optional<quasar::corrective_reranking::AdjustedPayloadParts>::operator=[abi:ne200100]<quasar::corrective_reranking::AdjustedPayloadParts,void>(this + 296, &__p);
LABEL_183:
      std::pair<std::string const,quasar::TranslationPairSetting>::~pair(&__p);
LABEL_184:
      if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v127.__r_.__value_.__l.__data_);
      }

      goto LABEL_186;
    }

LABEL_399:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "adjustedTargetRange && adjustedTargetRange->isFullTextTargetRange()", 67);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  if (__p.__r_.__value_.__l.__size_ != 9)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_144;
  }

  v25 = *__p.__r_.__value_.__l.__data_ != 0x6C416574656C6564 || *(__p.__r_.__value_.__r.__words[0] + 8) != 108;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v25)
  {
    goto LABEL_139;
  }

LABEL_144:
  quasar::corrective_reranking::Parse::getIntent(this, &__p);
  v29 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "capitalize");
  v30 = v29;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v30)
    {
LABEL_146:
      std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&v129, byte_1B5B012E0);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __dst.__r_.__value_.__l.__size_;
      }

      quasar::utf32::convertToTitleCaseOrThrow(p_dst, size);
    }
  }

  else if (v29)
  {
    goto LABEL_146;
  }

  quasar::corrective_reranking::Parse::getIntent(this, &__p);
  v33 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "lowercase");
  v34 = v33;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v34)
    {
LABEL_156:
      std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&v129, byte_1B5B012E0);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = &__dst;
      }

      else
      {
        v35 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v36 = __dst.__r_.__value_.__l.__size_;
      }

      quasar::utf32::convertToLowerCaseOrThrow(v35, v36);
    }
  }

  else if (v33)
  {
    goto LABEL_156;
  }

  quasar::corrective_reranking::Parse::getIntent(this, &__p);
  v37 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "uppercase");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v37)
  {
    std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&v129, byte_1B5B012E0);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = &__dst;
    }

    else
    {
      v38 = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v39 = __dst.__r_.__value_.__l.__size_;
    }

    quasar::utf32::convertToUpperCaseOrThrow(v38, v39);
  }

  quasar::corrective_reranking::Parse::getIntent(this, &__p);
  std::string::basic_string[abi:ne200100]<0>(&v129, "select");
  v40 = quasar::startsWith(&__p, &v129);
  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v129.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v40)
  {
    std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&v129, byte_1B5B012E0);
    std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&v128, byte_1B5B012E0);
    quasar::corrective_reranking::AdjustedPayloadParts::AdjustedPayloadParts(&__p, &v129, &__dst, &v128);
    std::optional<quasar::corrective_reranking::AdjustedPayloadParts>::operator=[abi:ne200100]<quasar::corrective_reranking::AdjustedPayloadParts,void>(this + 296, &__p);
    std::pair<std::string const,quasar::TranslationPairSetting>::~pair(&__p);
LABEL_186:
    if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v128.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v129.__r_.__value_.__l.__data_);
    }

    goto LABEL_190;
  }

  quasar::corrective_reranking::Parse::getPayload(this, 0, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v115 = __p.__r_.__value_.__l.__size_;
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v115)
    {
      goto LABEL_190;
    }

    goto LABEL_388;
  }

  if (*(&__p.__r_.__value_.__s + 23))
  {
LABEL_388:
    std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&v129, byte_1B5B012E0);
    quasar::corrective_reranking::Parse::getPayload(this, 0, &v128);
    std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&v127, byte_1B5B012E0);
    quasar::corrective_reranking::AdjustedPayloadParts::AdjustedPayloadParts(&__p, &v129, &v128, &v127);
    std::optional<quasar::corrective_reranking::AdjustedPayloadParts>::operator=[abi:ne200100]<quasar::corrective_reranking::AdjustedPayloadParts,void>(this + 296, &__p);
    goto LABEL_183;
  }

LABEL_190:
  *(this + 256) = 1;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_192:
  if (*(this + 288) != 1)
  {
    return;
  }

  v42 = *(this + 33);
  v41 = *(this + 34);
  if (v42 == v41)
  {
    v43 = INFINITY;
  }

  else
  {
    if (*v42)
    {
      goto LABEL_198;
    }

    v43 = (*(v41 - 1) + *(v41 - 2));
  }

  if (fabsf(v43) == INFINITY)
  {
    return;
  }

LABEL_198:
  quasar::corrective_reranking::Parse::getAdjustedPayload(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v44 = __p.__r_.__value_.__l.__size_ == 0;
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  else
  {
    v44 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 0;
  }

  while (1)
  {
    v46 = *(this + 33);
    v45 = *(this + 34);
    if (v46 == v45)
    {
      v48 = 0;
    }

    else
    {
      v47 = *v46;
      if ((*(v45 - 1) + *(v45 - 2)) <= v47)
      {
        goto LABEL_217;
      }

      v48 = v47;
    }

    v49 = *(a2 + 23);
    v50 = v49;
    if ((v49 & 0x80u) != 0)
    {
      v49 = *(a2 + 8);
    }

    if (v49 <= v48)
    {
      goto LABEL_400;
    }

    v51 = v50 >= 0 ? a2 : *a2;
    if (*(v51 + 4 * v48) != 32)
    {
      break;
    }

    if (v46 == v45)
    {
      v53 = 1.0;
      v54 = INFINITY;
    }

    else
    {
      v52 = *v46;
      v53 = v52 + 1.0;
      v54 = ((*(v45 - 1) + *(v45 - 2)) - v52) + -1.0;
    }

    quasar::corrective_reranking::TargetRange::fromStartAndLength(v53, v54, &__p);
    std::optional<quasar::corrective_reranking::TargetRange>::operator=[abi:ne200100]<quasar::corrective_reranking::TargetRange,void>(this + 11, &__p);
    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  while (1)
  {
LABEL_217:
    if (v46 == v45)
    {
      v56 = *(a2 + 23);
      LODWORD(v59) = (v56 & 0x80000000) != 0;
    }

    else
    {
      v55 = (*(v45 - 1) + *(v45 - 2));
      if (v55 <= *v46)
      {
        break;
      }

      v56 = (v55 + -1.0);
      v57 = *(a2 + 23);
      v58 = *(a2 + 8);
      if ((v57 & 0x80000000) == 0)
      {
        v58 = *(a2 + 23);
      }

      if (v58 <= v56)
      {
        goto LABEL_400;
      }

      v59 = v57 >> 63;
    }

    v60 = v59 ? *a2 : a2;
    if (*(v60 + 4 * v56) != 32)
    {
      break;
    }

    if (v46 == v45)
    {
      v61 = 0.0;
      v62 = INFINITY;
    }

    else
    {
      v61 = *v46;
      v62 = ((*(v45 - 1) + *(v45 - 2)) - v61) + -1.0;
    }

    quasar::corrective_reranking::TargetRange::fromStartAndLength(v61, v62, &__p);
    std::optional<quasar::corrective_reranking::TargetRange>::operator=[abi:ne200100]<quasar::corrective_reranking::TargetRange,void>(this + 11, &__p);
    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v46 = *(this + 33);
    v45 = *(this + 34);
  }

  if (v44)
  {
    if (*(this + 112) == 1)
    {
      v64 = *(this + 11);
      v63 = *(this + 12);
      v65 = 0.0;
      v66 = 0.0;
      if (v64 != v63)
      {
        v66 = *v64;
      }

      if (v46 != v45)
      {
        v65 = *v46;
      }

      if (v65 < v66)
      {
        v66 = v65;
      }

      if (v64 == v63)
      {
        v67 = INFINITY;
      }

      else
      {
        v67 = (*(v63 - 1) + *(v63 - 2));
      }

      v82 = v66;
      if (v46 == v45)
      {
        v83 = INFINITY;
      }

      else
      {
        v83 = (*(v45 - 1) + *(v45 - 2));
      }

      if (v67 < v83)
      {
        v67 = v83;
      }

      quasar::corrective_reranking::TargetRange::fromStartAndLength(v82, (v67 - v82), &__p);
      std::optional<quasar::corrective_reranking::TargetRange>::operator=[abi:ne200100]<quasar::corrective_reranking::TargetRange,void>(this + 11, &__p);
      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v46 = *(this + 33);
      v45 = *(this + 34);
    }

    if (v46 != v45)
    {
      v84 = (*(v45 - 1) + *(v45 - 2));
      v85 = *v46;
      if (v84 > v85 && *v46 >= 1)
      {
        v87 = (v85 + -1.0);
        v88 = *(a2 + 23);
        v89 = v88;
        if ((v88 & 0x80u) != 0)
        {
          v88 = *(a2 + 8);
        }

        if (v88 <= v87)
        {
          goto LABEL_400;
        }

        if (v89 >= 0)
        {
          v90 = a2;
        }

        else
        {
          v90 = *a2;
        }

        if (*(v90 + 4 * v87) == 32)
        {
          quasar::corrective_reranking::TargetRange::fromStartAndLength(v85 + -1.0, (v84 - v85) + 1.0, &__p);
          std::optional<quasar::corrective_reranking::TargetRange>::operator=[abi:ne200100]<quasar::corrective_reranking::TargetRange,void>(this + 11, &__p);
          if (__p.__r_.__value_.__r.__words[0])
          {
            __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v46 = *(this + 33);
          v45 = *(this + 34);
        }
      }
    }

    if (v46 == v45)
    {
      return;
    }

    v91 = (*(v45 - 1) + *(v45 - 2));
    if (v91 <= *v46)
    {
      return;
    }

    v92 = *(a2 + 23);
    v93 = v92;
    if ((v92 & 0x80u) != 0)
    {
      v92 = *(a2 + 8);
    }

    if (v91 >= v92)
    {
      return;
    }

    if (*v46)
    {
      v94 = *v46 + -1.0;
      if (v92 <= v94)
      {
        goto LABEL_400;
      }

      v95 = *a2;
      if (v93 >= 0)
      {
        v95 = a2;
      }

      if (*(v95 + 4 * v94) != 32)
      {
        return;
      }
    }

    v96 = (*(v45 - 1) + *(v45 - 2));
    if (v92 > v96)
    {
      if (v93 >= 0)
      {
        v97 = a2;
      }

      else
      {
        v97 = *a2;
      }

      if (*(v97 + 4 * v96) == 32)
      {
        quasar::corrective_reranking::TargetRange::fromStartAndLength(*v46, ((*(v45 - 1) + *(v45 - 2)) - *v46) + 1.0, &__p);
        std::optional<quasar::corrective_reranking::TargetRange>::operator=[abi:ne200100]<quasar::corrective_reranking::TargetRange,void>(this + 11, &__p);
        v81 = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__r.__words[0])
        {
          __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
          goto LABEL_307;
        }
      }

      return;
    }

LABEL_400:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v68 = (this + 296);
  if (*(this + 319) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(&__dst, *(this + 37), *(this + 38));
  }

  else
  {
    *&__dst.__r_.__value_.__l.__data_ = *v68;
    __dst.__r_.__value_.__r.__words[2] = *(this + 39);
  }

  if (*(this + 343) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(&v129, *(this + 40), *(this + 41));
  }

  else
  {
    v129 = *(this + 320);
  }

  if (*(this + 367) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(&v128, *(this + 43), *(this + 44));
  }

  else
  {
    v128 = *(this + 344);
  }

  std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&v127, " ");
  quasar::copyAndTrimLeft(&__dst, &v127, &__p);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  __dst = __p;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v127.__r_.__value_.__l.__data_);
  }

  std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&v127, " ");
  v69 = quasar::copyAndTrimRight(&v128, &v127, &__p);
  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
  }

  v128 = __p;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v127.__r_.__value_.__l.__data_);
  }

  CommandsThatRequireSpaceAdjustment = quasar::corrective_reranking::Parse::getCommandsThatRequireSpaceAdjustment(v69);
  quasar::corrective_reranking::Parse::getIntent(this, &__p);
  v71 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(CommandsThatRequireSpaceAdjustment, &__p.__r_.__value_.__l.__data_);
  v72 = v71;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v72)
    {
      goto LABEL_295;
    }
  }

  else if (!v71)
  {
    goto LABEL_295;
  }

  v73 = *(this + 33);
  if (v73 == *(this + 34))
  {
    v74 = 0;
  }

  else
  {
    v74 = *v73;
  }

  quasar::pySlice<std::basic_string<char32_t>>(a2, 0, v74, &__p);
  quasar::pySlice<std::basic_string<char32_t>>(a2, **(this + 33), (*(*(this + 34) - 4) + *(*(this + 34) - 8)), &v127);
  quasar::pySlice<std::basic_string<char32_t>>(a2, (*(*(this + 34) - 4) + *(*(this + 34) - 8)), 0x7FFFFFFF, &v126);
  v75 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v75 = __dst.__r_.__value_.__l.__size_;
  }

  if (!v75)
  {
    std::operator+[abi:ne200100]<char32_t,std::char_traits<char32_t>,std::allocator<char32_t>>(&v129.__r_.__value_.__l.__data_, &v128.__r_.__value_.__l.__data_, &v125);
    v76 = quasar::corrective_reranking::Parse::sameStyle(&v127, &v125, 1);
    if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v125.__r_.__value_.__l.__data_);
    }

    if (!v76)
    {
      std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(v118, " ");
      quasar::copyAndTrimRight(&__p, v118, &v125);
      std::operator+[abi:ne200100]<char32_t,std::char_traits<char32_t>,std::allocator<char32_t>>(&v129.__r_.__value_.__l.__data_, &v128.__r_.__value_.__l.__data_, v116);
      v98 = quasar::corrective_reranking::Parse::needsSpaceBetween(&v125, v116);
      if (v117 < 0)
      {
        operator delete(v116[0]);
      }

      if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v125.__r_.__value_.__l.__data_);
      }

      if (v119 < 0)
      {
        operator delete(v118[0]);
      }

      if (v98)
      {
        std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&v125, " ");
        v99 = quasar::endsWith(&__p, &v125);
        if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v125.__r_.__value_.__l.__data_);
        }

        if (!v99)
        {
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            __dst.__r_.__value_.__l.__size_ = 1;
            v100 = __dst.__r_.__value_.__r.__words[0];
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = 1;
            v100 = &__dst;
          }

          v100->__r_.__value_.__r.__words[0] = 32;
        }
      }

      else
      {
        std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&v125, " ");
        v104 = quasar::endsWith(&__p, &v125);
        if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v125.__r_.__value_.__l.__data_);
        }

        if (v104)
        {
          v106 = *(this + 33);
          v105 = *(this + 34);
          if (v106 == v105)
          {
            v108 = -1.0;
            v109 = INFINITY;
          }

          else
          {
            v107 = *v106;
            v108 = v107 + -1.0;
            v109 = ((*(v105 - 1) + *(v105 - 2)) - v107) + 1.0;
          }

          quasar::corrective_reranking::TargetRange::fromStartAndLength(v108, v109, &v125);
          std::optional<quasar::corrective_reranking::TargetRange>::operator=[abi:ne200100]<quasar::corrective_reranking::TargetRange,void>(this + 11, &v125);
          if (v125.__r_.__value_.__r.__words[0])
          {
            v125.__r_.__value_.__l.__size_ = v125.__r_.__value_.__r.__words[0];
            operator delete(v125.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  v77 = *(this + 33);
  if (v77 == *(this + 34))
  {
    v78 = 0;
  }

  else
  {
    v78 = *v77;
  }

  quasar::pySlice<std::basic_string<char32_t>>(a2, 0, v78, &v125);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v125;
  quasar::pySlice<std::basic_string<char32_t>>(a2, **(this + 33), (*(*(this + 34) - 4) + *(*(this + 34) - 8)), &v125);
  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v127.__r_.__value_.__l.__data_);
  }

  v127 = v125;
  quasar::pySlice<std::basic_string<char32_t>>(a2, (*(*(this + 34) - 4) + *(*(this + 34) - 8)), 0x7FFFFFFF, &v125);
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }

  v126 = v125;
  v79 = HIBYTE(v128.__r_.__value_.__r.__words[2]);
  if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v79 = v128.__r_.__value_.__l.__size_;
  }

  if (!v79)
  {
    std::operator+[abi:ne200100]<char32_t,std::char_traits<char32_t>,std::allocator<char32_t>>(&__dst.__r_.__value_.__l.__data_, &v129.__r_.__value_.__l.__data_, &v125);
    v80 = quasar::corrective_reranking::Parse::sameStyle(&v127, &v125, 0);
    if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v125.__r_.__value_.__l.__data_);
    }

    if (!v80)
    {
      std::operator+[abi:ne200100]<char32_t,std::char_traits<char32_t>,std::allocator<char32_t>>(&__dst.__r_.__value_.__l.__data_, &v129.__r_.__value_.__l.__data_, &v125);
      std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(v116, " ");
      quasar::copyAndTrimLeft(&v126, v116, v118);
      v101 = quasar::corrective_reranking::Parse::needsSpaceBetween(&v125, v118);
      if (v119 < 0)
      {
        operator delete(v118[0]);
      }

      if (v117 < 0)
      {
        operator delete(v116[0]);
      }

      if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v125.__r_.__value_.__l.__data_);
      }

      if (v101)
      {
        std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&v125, " ");
        v102 = quasar::startsWith(&v126, &v125);
        if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v125.__r_.__value_.__l.__data_);
        }

        if (!v102)
        {
          if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
          {
            v128.__r_.__value_.__l.__size_ = 1;
            v103 = v128.__r_.__value_.__r.__words[0];
          }

          else
          {
            *(&v128.__r_.__value_.__s + 23) = 1;
            v103 = &v128;
          }

          v103->__r_.__value_.__r.__words[0] = 32;
        }
      }

      else
      {
        std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&v125, " ");
        v110 = quasar::startsWith(&v126, &v125);
        if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v125.__r_.__value_.__l.__data_);
        }

        if (v110)
        {
          v112 = *(this + 33);
          v111 = *(this + 34);
          if (v112 == v111)
          {
            v113 = 0.0;
            v114 = INFINITY;
          }

          else
          {
            v113 = *v112;
            v114 = ((*(v111 - 1) + *(v111 - 2)) - v113) + 1.0;
          }

          quasar::corrective_reranking::TargetRange::fromStartAndLength(v113, v114, &v125);
          std::optional<quasar::corrective_reranking::TargetRange>::operator=[abi:ne200100]<quasar::corrective_reranking::TargetRange,void>(this + 11, &v125);
          if (v125.__r_.__value_.__r.__words[0])
          {
            v125.__r_.__value_.__l.__size_ = v125.__r_.__value_.__r.__words[0];
            operator delete(v125.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v127.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_295:
  quasar::corrective_reranking::AdjustedPayloadParts::AdjustedPayloadParts(&__p, &__dst, &v129, &v128);
  std::optional<quasar::corrective_reranking::AdjustedPayloadParts>::operator=[abi:ne200100]<quasar::corrective_reranking::AdjustedPayloadParts,void>(v68, &__p);
  if (v124 < 0)
  {
    operator delete(v123);
  }

  if (v122 < 0)
  {
    operator delete(v121);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v129.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    v81 = __dst.__r_.__value_.__r.__words[0];
LABEL_307:
    operator delete(v81);
  }
}

void quasar::corrective_reranking::Parse::updateAdjustedSlotsV1(uint64_t a1, uint64_t *a2)
{
  quasar::corrective_reranking::Parse::getIntent(a1, &v14);
  quasar::corrective_reranking::TextEdit::computeAdjustedTargetRange(a2, &v14, a1 + 88, &__p.__r_.__value_.__l.__data_);
  std::optional<quasar::corrective_reranking::TargetRange>::operator=[abi:ne200100]<quasar::corrective_reranking::TargetRange,void>((a1 + 264), &__p);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  quasar::corrective_reranking::Parse::getPayload(a1, 0, &v14);
  quasar::corrective_reranking::Parse::getIntent(a1, &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 7)
    {
      goto LABEL_23;
    }

    if (__p.__r_.__value_.__s.__data_[0] != 1952672100 || *(__p.__r_.__value_.__s.__data_ + 3) != 1702125940)
    {
      goto LABEL_23;
    }

LABEL_21:
    quasar::corrective_reranking::detokenize((a1 + 32));
  }

  if (__p.__r_.__value_.__l.__size_ != 7)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_23;
  }

  v6 = *__p.__r_.__value_.__l.__data_ != 1952672100 || *(__p.__r_.__value_.__r.__words[0] + 3) != 1702125940;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v6)
  {
    goto LABEL_21;
  }

LABEL_23:
  quasar::corrective_reranking::Parse::getIntent(a1, v7);
  quasar::corrective_reranking::TextEdit::computeAdjustedPayloadParts(a2, v7, a1 + 88, &v14, &__p);
  std::optional<quasar::corrective_reranking::AdjustedPayloadParts>::operator=[abi:ne200100]<quasar::corrective_reranking::AdjustedPayloadParts,void>(a1 + 296, &__p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  *(a1 + 256) = 1;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_1B5480FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  if (*(v16 - 41) < 0)
  {
    operator delete(*(v16 - 64));
  }

  _Unwind_Resume(exception_object);
}

void quasar::corrective_reranking::TextEdit::computeAdjustedTargetRange(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int **a4@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  if ((*(a3 + 24) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v34, "origTargetRange");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v34);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange*,quasar::corrective_reranking::TextRange*>(a4, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  if (*(a2 + 23) < 0)
  {
    if (a2[1] == 7 && **a2 == 1952672100 && *(*a2 + 3) == 1702125940)
    {
LABEL_63:
      LODWORD(v26) = *(a1 + 23);
      if ((v26 & 0x80u) != 0)
      {
        v26 = a1[1];
      }

      goto LABEL_65;
    }

    if (a2[1] == 12 && **a2 == 0x6562747265736E69 && *(*a2 + 8) == 1701998438)
    {
LABEL_54:
      if (*a3 == *(a3 + 8))
      {
        LODWORD(v26) = 0;
      }

      else
      {
        LODWORD(v26) = **a3;
      }

LABEL_65:
      v36 = v26;
      v32 = 0;
      v33 = 0;
      __p = 0;
      std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange const*,quasar::corrective_reranking::TextRange const*>(&__p, &v36, &v37, 1uLL);
      v34 = 0uLL;
      v35 = 0;
      std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange*,quasar::corrective_reranking::TextRange*>(&v34, __p, v32, (v32 - __p) >> 3);
      goto LABEL_68;
    }

    if (a2[1] != 11 || (**a2 == 0x6661747265736E69 ? (v12 = *(*a2 + 3) == 0x7265746661747265) : (v12 = 0), !v12))
    {
      if (a2[1] != 6)
      {
        return;
      }

      a2 = *a2;
      goto LABEL_29;
    }

LABEL_61:
    v28 = *(a3 + 8);
    if (*a3 == v28)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "std::isfinite(origTargetRange->getEndIndex())", 45);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v34);
    }

    v36.i32[0] = (*(v28 - 4) + *(v28 - 8));
    v36.i32[1] = 0;
    v32 = 0;
    v33 = 0;
    __p = 0;
    std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange const*,quasar::corrective_reranking::TextRange const*>(&__p, &v36, &v37, 1uLL);
    v34 = 0uLL;
    v35 = 0;
    std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange*,quasar::corrective_reranking::TextRange*>(&v34, __p, v32, (v32 - __p) >> 3);
    goto LABEL_68;
  }

  v8 = *(a2 + 23);
  if (v8 > 0xA)
  {
    if (v8 != 11)
    {
      if (v8 != 12)
      {
        return;
      }

      if (*a2 != 0x6562747265736E69 || *(a2 + 2) != 1701998438)
      {
        return;
      }

      goto LABEL_54;
    }

    if (*a2 != 0x6661747265736E69 || *(a2 + 3) != 0x7265746661747265)
    {
      return;
    }

    goto LABEL_61;
  }

  if (v8 != 6)
  {
    if (v8 != 7)
    {
      return;
    }

    if (*a2 != 1952672100 || *(a2 + 3) != 1702125940)
    {
      return;
    }

    goto LABEL_63;
  }

LABEL_29:
  if (*a2 != 1701602660 || *(a2 + 2) != 25972)
  {
    return;
  }

  v14 = *(a1 + 23);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = a1[1];
  }

  if (!v14)
  {
    v36 = 0;
    v32 = 0;
    v33 = 0;
    __p = 0;
    std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange const*,quasar::corrective_reranking::TextRange const*>(&__p, &v36, &v37, 1uLL);
    v34 = 0uLL;
    v35 = 0;
    std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange*,quasar::corrective_reranking::TextRange*>(&v34, __p, v32, (v32 - __p) >> 3);
    goto LABEL_68;
  }

  v16 = a4[1];
  if (*a4 == v16 || (v17.f32[0] = **a4, COERCE_INT(fabs((*(v16 - 1) + *(v16 - 2)) - v17.f32[0])) >= 2139095040))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "std::isfinite(targetRange.getLength())", 38);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v34);
  }

  v18 = v17.f32[0];
  if (v17.f32[0] <= 1)
  {
    v18 = 1;
  }

  v19 = (v18 - 1);
  if (v14 <= v19)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v15 >= 0)
  {
    v20 = a1;
  }

  else
  {
    v20 = *a1;
  }

  if (*(v20 + v19) == 32)
  {
    v17.f32[1] = (*(v16 - 1) + *(v16 - 2)) - v17.f32[0];
    __asm { FMOV            V1.2S, #-1.0 }

    v36 = vcvt_s32_f32(vadd_f32(v17, COERCE_FLOAT32X2_T(-_D1)));
    v32 = 0;
    v33 = 0;
    __p = 0;
    std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange const*,quasar::corrective_reranking::TextRange const*>(&__p, &v36, &v37, 1uLL);
    v34 = 0uLL;
    v35 = 0;
    std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange*,quasar::corrective_reranking::TextRange*>(&v34, __p, v32, (v32 - __p) >> 3);
LABEL_68:
    v29 = *a4;
    if (*a4)
    {
      a4[1] = v29;
      operator delete(v29);
    }

    v30 = __p;
    *a4 = v34;
    a4[2] = v35;
    v35 = 0;
    v34 = 0uLL;
    if (v30)
    {
      v32 = v30;
      operator delete(v30);
    }
  }
}

void sub_1B54815CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

std::vector<int> *std::optional<quasar::corrective_reranking::TargetRange>::operator=[abi:ne200100]<quasar::corrective_reranking::TargetRange,void>(std::vector<int> *this, __n128 *a2)
{
  if (LOBYTE(this[1].__begin_) == 1)
  {
    std::vector<int>::__move_assign(this, a2);
  }

  else
  {
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
    *this = *a2->n128_u8;
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    LOBYTE(this[1].__begin_) = 1;
  }

  return this;
}

void quasar::corrective_reranking::TextEdit::computeAdjustedPayloadParts(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, std::wstring *a5@<X8>)
{
  v40 = 0uLL;
  v41 = 0;
  memset(&v39, 0, sizeof(v39));
  if (*(a4 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(&v38, *a4, *(a4 + 8));
  }

  else
  {
    v38 = *a4;
  }

  if (a2[23] < 0)
  {
    if (*(a2 + 1) != 7 || (**a2 == 1952672100 ? (v11 = *(*a2 + 3) == 1702125940) : (v11 = 0), !v11))
    {
      if (*(a2 + 1) == 12 && **a2 == 0x6562747265736E69 && *(*a2 + 8) == 1701998438)
      {
LABEL_100:
        if (quasar::corrective_reranking::isPunctuation(&v38))
        {
          v27 = byte_1B5B012E0;
        }

        else
        {
          v27 = &unk_1B5B012E4;
        }

        v33 = &v39;
        goto LABEL_104;
      }

      if (*(a2 + 1) == 11 && **a2 == 0x6661747265736E69 && *(*a2 + 3) == 0x7265746661747265)
      {
        goto LABEL_79;
      }

      if (*(a2 + 1) == 10 && **a2 == 0x696C617469706163 && *(*a2 + 8) == 25978)
      {
LABEL_66:
        if (*(a3 + 24))
        {
          quasar::corrective_reranking::TargetRange::getTargetFromText(a3, a1, &v36);
          if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = &v36;
          }

          else
          {
            v24 = v36.__r_.__value_.__r.__words[0];
          }

          if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v36.__r_.__value_.__l.__size_;
          }

          quasar::utf32::convertToTitleCaseOrThrow(v24, size);
        }

        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "targetRange", 11);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
      }

      if (*(a2 + 1) != 9 || (**a2 == 0x7361637265776F6CLL ? (v15 = *(*a2 + 8) == 101) : (v15 = 0), !v15))
      {
        if (*(a2 + 1) != 9)
        {
          goto LABEL_86;
        }

        v16 = *a2;
LABEL_48:
        v18 = *v16;
        v19 = v16[8];
        if (v18 == 0x7361637265707075 && v19 == 101)
        {
          if (*(a3 + 24))
          {
            quasar::corrective_reranking::TargetRange::getTargetFromText(a3, a1, &v36);
            if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v21 = &v36;
            }

            else
            {
              v21 = v36.__r_.__value_.__r.__words[0];
            }

            if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v22 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v22 = v36.__r_.__value_.__l.__size_;
            }

            quasar::utf32::convertToUpperCaseOrThrow(v21, v22);
          }

          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "targetRange", 11);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
        }

        goto LABEL_86;
      }

LABEL_105:
      if (*(a3 + 24))
      {
        quasar::corrective_reranking::TargetRange::getTargetFromText(a3, a1, &v36);
        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = &v36;
        }

        else
        {
          v34 = v36.__r_.__value_.__r.__words[0];
        }

        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v35 = v36.__r_.__value_.__l.__size_;
        }

        quasar::utf32::convertToLowerCaseOrThrow(v34, v35);
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "targetRange", 11);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
    }

LABEL_94:
    isPunctuation = quasar::corrective_reranking::isPunctuation(&v38);
    v27 = byte_1B5B012E0;
    if (!isPunctuation)
    {
      v32 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v32 = v38.__r_.__value_.__l.__size_;
      }

      if (v32)
      {
        v27 = &unk_1B5B012E4;
      }
    }

    goto LABEL_99;
  }

  v9 = a2[23];
  if (v9 <= 9)
  {
    if (v9 != 7)
    {
      if (v9 != 9)
      {
        goto LABEL_86;
      }

      v17 = *a2 == 0x7361637265776F6CLL && a2[8] == 101;
      v16 = a2;
      if (!v17)
      {
        goto LABEL_48;
      }

      goto LABEL_105;
    }

    if (*a2 != 1952672100 || *(a2 + 3) != 1702125940)
    {
      goto LABEL_86;
    }

    goto LABEL_94;
  }

  if (v9 == 10)
  {
    if (*a2 != 0x696C617469706163 || *(a2 + 4) != 25978)
    {
      goto LABEL_86;
    }

    goto LABEL_66;
  }

  if (v9 != 11)
  {
    if (v9 != 12)
    {
      goto LABEL_86;
    }

    if (*a2 != 0x6562747265736E69 || *(a2 + 2) != 1701998438)
    {
      goto LABEL_86;
    }

    goto LABEL_100;
  }

  if (*a2 == 0x6661747265736E69 && *(a2 + 3) == 0x7265746661747265)
  {
LABEL_79:
    if (quasar::corrective_reranking::isPunctuation(&v38))
    {
      v27 = byte_1B5B012E0;
    }

    else
    {
      v27 = &unk_1B5B012E4;
    }

LABEL_99:
    v33 = &v40;
LABEL_104:
    std::basic_string<char32_t>::__assign_external(v33, v27);
    goto LABEL_113;
  }

LABEL_86:
  std::string::basic_string[abi:ne200100]<0>(__p, "select");
  v29 = quasar::startsWith(a2, __p);
  v30 = v29;
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if (!v30)
    {
      goto LABEL_113;
    }
  }

  else if (!v29)
  {
    goto LABEL_113;
  }

  if ((*(a3 + 24) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "targetRange", 11);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  quasar::corrective_reranking::TargetRange::getTargetFromText(a3, a1, __p);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  v38 = __p[0];
LABEL_113:
  quasar::corrective_reranking::AdjustedPayloadParts::AdjustedPayloadParts(a5, &v40, &v38, &v39);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
  }
}

uint64_t std::optional<quasar::corrective_reranking::AdjustedPayloadParts>::operator=[abi:ne200100]<quasar::corrective_reranking::AdjustedPayloadParts,void>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 23) = 0;
    *a2 = 0;
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
    *(a2 + 47) = 0;
    *(a2 + 6) = 0;
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    v6 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v6;
    *(a2 + 71) = 0;
    *(a2 + 12) = 0;
  }

  else
  {
    v7 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v7;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v8 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v8;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v9 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v9;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    *(a1 + 72) = 1;
  }

  return a1;
}

BOOL quasar::corrective_reranking::Parse::sameStyle(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  if (!v3)
  {
    return 0;
  }

  v5 = *(a2 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (!v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v8 = &v7[v3 - 1];
  if (v6 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  v10 = &v9[v5 - 1];
  if (a3)
  {
    v11 = v9;
  }

  else
  {
    v7 = v8;
    v11 = v10;
  }

  v12 = *v7;
  v13 = *v11;
  return u_isalnum(*v7) && u_isalnum(v13) || u_isspace(v12) && u_isspace(v13) || v12 == v13;
}

BOOL quasar::corrective_reranking::Parse::needsSpaceBetween(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 8);
  }

  if (!v2)
  {
    return 0;
  }

  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    if (!*(a2 + 23))
    {
      return 0;
    }

    return !quasar::corrective_reranking::isPunctuation(*a2);
  }

  if (a2[1])
  {
    a2 = *a2;
    return !quasar::corrective_reranking::isPunctuation(*a2);
  }

  return 0;
}

BOOL quasar::corrective_reranking::Parse::check(uint64_t a1, uint64_t a2, unsigned int __val, uint64_t a4)
{
  if ((__val & 0x80000000) != 0 || 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 7) <= __val)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v91);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v91, "0 <= parseIdx && parseIdx < parses.size()");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v91);
  }

  std::to_string(v91, __val);
  v8 = std::string::insert(v91, 0, "Parse ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v90 = v8->__r_.__value_.__r.__words[2];
  *v89 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if ((v91[23] & 0x80000000) != 0)
  {
    operator delete(*v91);
  }

  quasar::corrective_reranking::Parse::getIntent(a1, v91);
  quasar::corrective_reranking::Parse::getIntent(*a4, &__p);
  v10 = v91[23];
  if (v91[23] >= 0)
  {
    v11 = v91[23];
  }

  else
  {
    v11 = *&v91[8];
  }

  v12 = v88;
  v13 = v88;
  if ((v88 & 0x80u) != 0)
  {
    v12 = v87;
  }

  if (v11 != v12)
  {
    v16 = 1;
    if ((v88 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v91[23] >= 0)
  {
    v14 = v91;
  }

  else
  {
    v14 = *v91;
  }

  if ((v88 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v16 = memcmp(v14, p_p, v11) != 0;
  if (v13 < 0)
  {
LABEL_20:
    operator delete(__p);
    v10 = v91[23];
  }

LABEL_21:
  if (v10 < 0)
  {
    operator delete(*v91);
  }

  if (quasar::gLogLevel > 4 && v16)
  {
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    memset(v91, 0, sizeof(v91));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v91);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "check_parses: ", 14);
    if (v90 >= 0)
    {
      v19 = v89;
    }

    else
    {
      v19 = v89[0];
    }

    if (v90 >= 0)
    {
      v20 = HIBYTE(v90);
    }

    else
    {
      v20 = v89[1];
    }

    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " intent does not match top parse intent", 39);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v91);
  }

  isMetaTargetExpectingCommand = quasar::corrective_reranking::Parse::isMetaTargetExpectingCommand(a1);
  v23 = !v16;
  if (isMetaTargetExpectingCommand)
  {
    goto LABEL_124;
  }

  if (*(a1 + 112) == 1)
  {
    if (__val)
    {
      v24 = 0;
      v25 = 112;
      while (1)
      {
        v26 = (*a4 + v25);
        v28 = *v26;
        v27 = (v26 - 24);
        if (v28 == 1)
        {
          isMetaTargetExpectingCommand = quasar::corrective_reranking::TargetRange::overlaps((a1 + 88), v27);
          if (isMetaTargetExpectingCommand)
          {
            break;
          }
        }

        ++v24;
        v25 += 384;
        if (__val == v24)
        {
          goto LABEL_51;
        }
      }

      if (quasar::gLogLevel >= 5)
      {
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v92 = 0u;
        memset(v91, 0, sizeof(v91));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v91);
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "check_parses: ", 14);
        if (v90 >= 0)
        {
          v30 = v89;
        }

        else
        {
          v30 = v89[0];
        }

        if (v90 >= 0)
        {
          v31 = HIBYTE(v90);
        }

        else
        {
          v31 = v89[1];
        }

        v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v30, v31);
        v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " and Parse ", 11);
        v34 = MEMORY[0x1B8C84C00](v33, v24);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " have overlapping target_range", 30);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v91);
      }

      v23 = 0;
    }

LABEL_51:
    if (quasar::corrective_reranking::isAdjacentEditsEnabled(isMetaTargetExpectingCommand))
    {
      if (*(a1 + 288))
      {
        if (quasar::corrective_reranking::TargetRange::contains((a1 + 264), a1 + 88))
        {
          goto LABEL_72;
        }

        if (quasar::gLogLevel < 5)
        {
          goto LABEL_71;
        }

        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v92 = 0u;
        memset(v91, 0, sizeof(v91));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v91);
        v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "check_parses: ", 14);
        if (v90 >= 0)
        {
          v36 = v89;
        }

        else
        {
          v36 = v89[0];
        }

        if (v90 >= 0)
        {
          v37 = HIBYTE(v90);
        }

        else
        {
          v37 = v89[1];
        }

        v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v36, v37);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " adjusted_target_range does not contain target_range", 52);
      }

      else
      {
        if (quasar::gLogLevel < 5)
        {
LABEL_71:
          v23 = 0;
          goto LABEL_72;
        }

        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v92 = 0u;
        memset(v91, 0, sizeof(v91));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v91);
        v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "check_parses: ", 14);
        if (v90 >= 0)
        {
          v40 = v89;
        }

        else
        {
          v40 = v89[0];
        }

        if (v90 >= 0)
        {
          v41 = HIBYTE(v90);
        }

        else
        {
          v41 = v89[1];
        }

        v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, v40, v41);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " has target_range but no adjusted_target_range", 46);
      }

      quasar::QuasarDebugMessage::~QuasarDebugMessage(v91);
      goto LABEL_71;
    }
  }

LABEL_72:
  isMetaTargetExpectingCommand = quasar::corrective_reranking::Parse::isTargetExpectingCommand(a1);
  if (*(a1 + 112) == 1)
  {
    v43 = *(a1 + 88);
    v44 = *(a1 + 96);
    v45 = v43 == v44 || (*(v44 - 1) + *(v44 - 2)) > *v43;
  }

  else
  {
    v45 = 0;
  }

  if (v45 != isMetaTargetExpectingCommand)
  {
    if (quasar::gLogLevel >= 5)
    {
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      memset(v91, 0, sizeof(v91));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v91);
      v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "check_parses: ", 14);
      if (v90 >= 0)
      {
        v47 = v89;
      }

      else
      {
        v47 = v89[0];
      }

      if (v90 >= 0)
      {
        v48 = HIBYTE(v90);
      }

      else
      {
        v48 = v89[1];
      }

      v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v47, v48);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " target expectation disagrees with target_range presence", 56);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v91);
      v23 = 0;
      if ((*(a1 + 112) & 1) == 0)
      {
        goto LABEL_106;
      }

LABEL_89:
      v51 = *(a1 + 88);
      v50 = *(a1 + 96);
      if (v51 == v50)
      {
        v53 = INFINITY;
      }

      else
      {
        v52 = *v51;
        if ((v52 & 0x80000000) != 0 || (v53 = (*(v50 - 1) + *(v50 - 2)), v52 > v53))
        {
LABEL_97:
          if (quasar::gLogLevel >= 5)
          {
            v105 = 0u;
            v106 = 0u;
            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            v99 = 0u;
            v100 = 0u;
            v97 = 0u;
            v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            v93 = 0u;
            v94 = 0u;
            v92 = 0u;
            memset(v91, 0, sizeof(v91));
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v91);
            v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "check_parses: ", 14);
            if (v90 >= 0)
            {
              v56 = v89;
            }

            else
            {
              v56 = v89[0];
            }

            if (v90 >= 0)
            {
              v57 = HIBYTE(v90);
            }

            else
            {
              v57 = v89[1];
            }

            v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, v56, v57);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, " has invalid target_range", 25);
            quasar::QuasarDebugMessage::~QuasarDebugMessage(v91);
          }

          v23 = 0;
          goto LABEL_106;
        }
      }

      v54 = *(a2 + 23);
      if ((v54 & 0x80u) != 0)
      {
        v54 = *(a2 + 8);
      }

      if (v53 <= v54)
      {
        goto LABEL_106;
      }

      goto LABEL_97;
    }

    v23 = 0;
  }

  if (*(a1 + 112))
  {
    goto LABEL_89;
  }

LABEL_106:
  if (*(a1 + 288) != 1)
  {
    goto LABEL_124;
  }

  v60 = *(a1 + 264);
  v59 = *(a1 + 272);
  if (v60 == v59)
  {
    v62 = INFINITY;
  }

  else
  {
    v61 = *v60;
    if ((v61 & 0x80000000) != 0 || (v62 = (*(v59 - 1) + *(v59 - 2)), v61 > v62))
    {
LABEL_115:
      if (quasar::gLogLevel >= 5)
      {
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v92 = 0u;
        memset(v91, 0, sizeof(v91));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v91);
        v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "check_parses: ", 14);
        if (v90 >= 0)
        {
          v65 = v89;
        }

        else
        {
          v65 = v89[0];
        }

        if (v90 >= 0)
        {
          v66 = HIBYTE(v90);
        }

        else
        {
          v66 = v89[1];
        }

        v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, v65, v66);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, " has invalid adjusted_target_range", 34);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v91);
      }

      v23 = 0;
      goto LABEL_124;
    }
  }

  v63 = *(a2 + 23);
  if ((v63 & 0x80u) != 0)
  {
    v63 = *(a2 + 8);
  }

  if (v62 > v63)
  {
    goto LABEL_115;
  }

LABEL_124:
  if (!quasar::corrective_reranking::isAdjacentEditsEnabled(isMetaTargetExpectingCommand))
  {
    goto LABEL_146;
  }

  quasar::corrective_reranking::Parse::getPayload(a1, 0, v91);
  v68 = v91[23];
  if (v91[23] < 0)
  {
    v68 = *&v91[8];
  }

  if (v68)
  {
    quasar::corrective_reranking::Parse::getAdjustedPayload(a1, &__p);
    v69 = v87;
    if ((v88 & 0x80u) == 0)
    {
      v69 = v88;
    }

    v70 = v69 == 0;
    if ((v88 & 0x8000000000000000) != 0)
    {
      operator delete(__p);
    }

    if ((v91[23] & 0x80) == 0)
    {
LABEL_133:
      if (!v70)
      {
        goto LABEL_146;
      }

      goto LABEL_137;
    }
  }

  else
  {
    v70 = 0;
    if ((v91[23] & 0x80) == 0)
    {
      goto LABEL_133;
    }
  }

  operator delete(*v91);
  if (!v70)
  {
    goto LABEL_146;
  }

LABEL_137:
  if (quasar::gLogLevel >= 5)
  {
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    memset(v91, 0, sizeof(v91));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v91);
    v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "check_parses: ", 14);
    if (v90 >= 0)
    {
      v72 = v89;
    }

    else
    {
      v72 = v89[0];
    }

    if (v90 >= 0)
    {
      v73 = HIBYTE(v90);
    }

    else
    {
      v73 = v89[1];
    }

    v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, v72, v73);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, " has payload but no adjusted_payload", 36);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v91);
  }

  v23 = 0;
LABEL_146:
  isPayloadExpectingCommand = quasar::corrective_reranking::Parse::isPayloadExpectingCommand(a1);
  quasar::corrective_reranking::Parse::getPayload(a1, 0, v91);
  if ((v91[23] & 0x80000000) != 0)
  {
    v76 = isPayloadExpectingCommand ^ (*&v91[8] == 0);
    operator delete(*v91);
    if (v76)
    {
      goto LABEL_159;
    }
  }

  else if ((isPayloadExpectingCommand ^ (v91[23] == 0)))
  {
    goto LABEL_159;
  }

  if (quasar::gLogLevel >= 5)
  {
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    memset(v91, 0, sizeof(v91));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v91);
    v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "check_parses: ", 14);
    if (v90 >= 0)
    {
      v78 = v89;
    }

    else
    {
      v78 = v89[0];
    }

    if (v90 >= 0)
    {
      v79 = HIBYTE(v90);
    }

    else
    {
      v79 = v89[1];
    }

    v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, v78, v79);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, " payload expectation disagrees with payload presence", 52);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v91);
  }

  v23 = 0;
LABEL_159:
  if (!quasar::corrective_reranking::Parse::isTargetExpectingCommand(a1) && *(a4 + 8) - *a4 != 384)
  {
    if (quasar::gLogLevel >= 5)
    {
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      memset(v91, 0, sizeof(v91));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v91);
      v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "check_parses: ", 14);
      if (v90 >= 0)
      {
        v82 = v89;
      }

      else
      {
        v82 = v89[0];
      }

      if (v90 >= 0)
      {
        v83 = HIBYTE(v90);
      }

      else
      {
        v83 = v89[1];
      }

      v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, v82, v83);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, " expects no target but is not the only parse", 44);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v91);
    }

    v23 = 0;
  }

  if (SHIBYTE(v90) < 0)
  {
    operator delete(v89[0]);
  }

  return v23;
}

BOOL quasar::corrective_reranking::TargetRange::overlaps(int **a1, int **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = 0.0;
  v5 = 0.0;
  if (*a1 != v2)
  {
    v5 = *v3;
  }

  v7 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v4 = *v7;
  }

  if (v3 == v2)
  {
    v8 = INFINITY;
  }

  else
  {
    v8 = (*(v2 - 1) + *(v2 - 2));
  }

  if (v7 == v6)
  {
    v9 = INFINITY;
  }

  else
  {
    v9 = (*(v6 - 1) + *(v6 - 2));
  }

  if (v5 >= v4)
  {
    v4 = v5;
  }

  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  return v4 < v10;
}

BOOL quasar::corrective_reranking::TargetRange::contains(int **a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    v6 = *a2;
    v5 = *(a2 + 8);
    if (*a2 == v5)
    {
      v9 = INFINITY;
      v10 = INFINITY;
      return v9 <= v10;
    }

    v7 = 0.0;
  }

  else
  {
    v4 = *v3;
    v6 = *a2;
    v5 = *(a2 + 8);
    if (*a2 == v5)
    {
      if (v4 <= 0)
      {
        v9 = INFINITY;
        goto LABEL_14;
      }

      return 0;
    }

    v7 = v4;
  }

  v8 = *v6;
  if (v7 > v8)
  {
    return 0;
  }

  v9 = (*(v5 - 4) + *(v5 - 8));
  if (v8 > v9)
  {
    return 0;
  }

  if (v3 != v2)
  {
LABEL_14:
    v10 = (*(v2 - 1) + *(v2 - 2));
    return v9 <= v10;
  }

  v10 = INFINITY;
  return v9 <= v10;
}

uint64_t quasar::corrective_reranking::TextEdit::getArgumentlessCommands(quasar::corrective_reranking::TextEdit *this)
{
  v2 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  return quasar::corrective_reranking::TextEdit::getArgumentlessCommands(void)::set;
}

void sub_1B5482C08(_Unwind_Exception *a1)
{
  v4 = (v2 + 95);
  v5 = -96;
  v6 = v4;
  while (1)
  {
    v7 = *v6;
    v6 -= 24;
    if (v7 < 0)
    {
      operator delete(*(v4 - 23));
    }

    v4 = v6;
    v5 += 24;
    if (!v5)
    {
      MEMORY[0x1B8C85350](v1, 0x10A0C408EF24B1CLL);
      _Unwind_Resume(a1);
    }
  }
}

quasar::corrective_reranking::TextEdit *quasar::corrective_reranking::TextEdit::TextEdit(quasar::corrective_reranking::TextEdit *this, const quasar::corrective_reranking::Parse *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  *(this + 24) = 0;
  v4 = (this + 24);
  *(this + 48) = 0;
  *(this + 56) = 0u;
  v5 = (this + 56);
  *(this + 104) = 0u;
  v6 = (this + 104);
  v7 = (this + 80);
  *(this + 136) = 0;
  v8 = this + 136;
  *(this + 160) = 0;
  *(this + 21) = 0;
  v9 = (this + 168);
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 113) = 0u;
  if (*(a2 + 112) == 1)
  {
    v11 = *(a2 + 11);
    v10 = *(a2 + 12);
    if (v11 == v10)
    {
      memset(&__p, 0, sizeof(__p));
      std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange*,quasar::corrective_reranking::TextRange*>(&__p, 0, 0, 0);
      std::optional<quasar::corrective_reranking::TargetRange>::operator=[abi:ne200100]<quasar::corrective_reranking::TargetRange,void>(v4, &__p);
      v15 = __p.__r_.__value_.__r.__words[0];
      if (!__p.__r_.__value_.__r.__words[0])
      {
        goto LABEL_10;
      }

      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      goto LABEL_9;
    }

    v12 = *v11;
    v13 = v12;
    v14 = (*(v10 - 1) + *(v10 - 2)) - v12;
    v26[0] = v13;
    v26[1] = v14;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange const*,quasar::corrective_reranking::TextRange const*>(&v22, v26, &v27, 1uLL);
    memset(&__p, 0, sizeof(__p));
    std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange*,quasar::corrective_reranking::TextRange*>(&__p, v22, v23, (v23 - v22) >> 3);
    std::optional<quasar::corrective_reranking::TargetRange>::operator=[abi:ne200100]<quasar::corrective_reranking::TargetRange,void>(v4, &__p);
    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v15 = v22;
    if (v22)
    {
      v23 = v22;
LABEL_9:
      operator delete(v15);
    }
  }

LABEL_10:
  quasar::corrective_reranking::Parse::getIntent(a2, &__p);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }

  *this = __p;
  v16 = *(this + 23);
  if (v16 < 0)
  {
    if (*(this + 1) != 7)
    {
      goto LABEL_21;
    }

    v17 = *this;
  }

  else
  {
    v17 = this;
    if (v16 != 7)
    {
      goto LABEL_21;
    }
  }

  v18 = *v17;
  v19 = *(v17 + 3);
  if (v18 == 1952672100 && v19 == 1702125940)
  {
    quasar::corrective_reranking::detokenize(a2 + 4);
  }

LABEL_21:
  quasar::corrective_reranking::Parse::getPayload(a2, 0, &__p);
  if (*(this + 79) < 0)
  {
    operator delete(*v5);
  }

  *v5 = __p;
  if (v7 != (a2 + 208))
  {
    std::vector<std::basic_string<char32_t>>::__assign_with_size[abi:ne200100]<std::basic_string<char32_t>*,std::basic_string<char32_t>*>(v7, *(a2 + 26), *(a2 + 27), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 27) - *(a2 + 26)) >> 3));
  }

  if (v6 != (a2 + 232))
  {
    std::vector<std::basic_string<char32_t>>::__assign_with_size[abi:ne200100]<std::basic_string<char32_t>*,std::basic_string<char32_t>*>(v6, *(a2 + 29), *(a2 + 30), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 30) - *(a2 + 29)) >> 3));
  }

  *(this + 128) = *(a2 + 256);
  std::__optional_storage_base<quasar::corrective_reranking::TargetRange,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<quasar::corrective_reranking::TargetRange,false> const&>(v8, a2 + 264);
  quasar::corrective_reranking::Parse::getAdjustedPayload(a2, &__p);
  if (*(this + 191) < 0)
  {
    operator delete(*v9);
  }

  *v9 = __p;
  return this;
}

void sub_1B5482F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  if (*(v13 + 191) < 0)
  {
    operator delete(*v17);
  }

  if (*(v13 + 160) == 1)
  {
    v19 = *v15;
    if (*v15)
    {
      *(v13 + 144) = v19;
      operator delete(v19);
    }
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v13 + 79) < 0)
  {
    operator delete(*v16);
  }

  if (*(v13 + 48) == 1)
  {
    v20 = *v14;
    if (*v14)
    {
      *(v13 + 32) = v20;
      operator delete(v20);
    }
  }

  if (*(v13 + 23) < 0)
  {
    operator delete(*v13);
  }

  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::TextEdit::onText(uint64_t a1@<X0>, uint64_t a2@<X1>, std::wstring *a3@<X8>)
{
  if (*(a1 + 48) == 1 && (ArgumentlessCommands = quasar::corrective_reranking::TextEdit::getArgumentlessCommands(a1), !std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(ArgumentlessCommands, a1)))
  {
    quasar::corrective_reranking::TextEdit::textSurroundingEditLocation(a1, a2, v12);
    quasar::corrective_reranking::TextEdit::getAdjustedPayload(a1, a2, 0, &__str);
    quasar::corrective_reranking::TextEdit::getAdjustedTargetRange(a1, a2, __p);
    quasar::corrective_reranking::TextEdit::assembleEditComponents(&__str, v12, &v14, __p, a3);
    if (*(a1 + 80) != *(a1 + 88) || *(a1 + 104) != *(a1 + 112))
    {
      quasar::corrective_reranking::TextEdit::applyAdjacentEdits(a1, a3, &v9);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v15 < 0)
    {
      operator delete(v14);
    }

    if (v13 < 0)
    {
      operator delete(v12[0]);
    }
  }

  else if (*(a2 + 23) < 0)
  {
    v7 = *a2;
    v8 = *(a2 + 8);

    std::basic_string<char32_t>::__init_copy_ctor_external(a3, v7, v8);
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a2;
    a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }
}

void sub_1B54831E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  std::pair<std::string,std::string>::~pair(&a22);
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::TextEdit::textSurroundingEditLocation(quasar::corrective_reranking::TextEdit *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 48) == 1 && (ArgumentlessCommands = quasar::corrective_reranking::TextEdit::getArgumentlessCommands(a1), !std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(ArgumentlessCommands, a1)))
  {
    quasar::corrective_reranking::TextEdit::getAdjustedTargetRange(a1, a2, &__p);
    if (__p == v10)
    {
      std::pair<std::basic_string<char32_t>,std::basic_string<char32_t>>::pair[abi:ne200100]<std::basic_string<char32_t> const&,char32_t const(&)[1],0>(a3, a2, byte_1B5B012E0);
    }

    else
    {
      quasar::pySlice<std::basic_string<char32_t>>(a2, 0, *__p, &v8);
      quasar::pySlice<std::basic_string<char32_t>>(a2, (((*(v10 - 1) + *(v10 - 2)) - *__p) + *__p), 0x7FFFFFFF, &v7);
      *a3 = v8;
      *(a3 + 24) = v7;
    }

    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }
  }

  else
  {

    std::pair<std::basic_string<char32_t>,std::basic_string<char32_t>>::pair[abi:ne200100]<std::basic_string<char32_t> const&,char32_t const(&)[1],0>(a3, a2, byte_1B5B012E0);
  }
}

void sub_1B548337C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::corrective_reranking::TextEdit::getAdjustedPayload(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    if (*(a1 + 48) != 1 || (ArgumentlessCommands = quasar::corrective_reranking::TextEdit::getArgumentlessCommands(a1), std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(ArgumentlessCommands, a1)))
    {
      *(a4 + 23) = 0;
      *a4 = 0;
      return;
    }

    quasar::corrective_reranking::TextEdit::getAdjustedTargetRange(a1, a2, &v15);
    quasar::corrective_reranking::TargetRange::getTargetFromText(&v15, a2, &v20);
    v12 = v15.__r_.__value_.__r.__words[0];
    *a4 = v20;
    if (v12)
    {
      v15.__r_.__value_.__l.__size_ = v12;
      goto LABEL_24;
    }
  }

  else if (*(a1 + 128) == 1)
  {
    if (*(a1 + 191) < 0)
    {
      v13 = *(a1 + 168);
      v14 = *(a1 + 176);

      std::basic_string<char32_t>::__init_copy_ctor_external(a4, v13, v14);
    }

    else
    {
      *a4 = *(a1 + 168);
      *(a4 + 16) = *(a1 + 184);
    }
  }

  else
  {
    quasar::corrective_reranking::TextEdit::computeAdjustedPayloadParts(a2, a1, a1 + 24, a1 + 56, &v15);
    std::operator+[abi:ne200100]<char32_t,std::char_traits<char32_t>,std::allocator<char32_t>>(&v15.__r_.__value_.__l.__data_, &v16, &v20);
    if ((v19 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v9 = v19;
    }

    else
    {
      v9 = __p[1];
    }

    v10 = std::basic_string<char32_t>::append(&v20, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    *(a4 + 16) = *(&v10->__r_.__value_.__l + 2);
    *a4 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      v12 = v15.__r_.__value_.__r.__words[0];
LABEL_24:
      operator delete(v12);
    }
  }
}

void sub_1B548355C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::corrective_reranking::TextEdit::getAdjustedTargetRange(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 128) == 1)
  {
    if ((*(a1 + 160) & 1) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "adjustedTargetRange");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v3 = *(a1 + 136);
    v4 = *(a1 + 144);

    std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange*,quasar::corrective_reranking::TextRange*>(a3, v3, v4, (v4 - v3) >> 3);
  }

  else
  {

    quasar::corrective_reranking::TextEdit::computeAdjustedTargetRange(a2, a1, a1 + 24, a3);
  }
}

void quasar::corrective_reranking::TextEdit::assembleEditComponents(std::basic_string<char32_t> *__str@<X3>, const void **a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X8>)
{
  v18[2] = *MEMORY[0x1E69E9840];
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v7 = *(a4 + 8);
  if (*a4 == v7)
  {
    v8 = INFINITY;
  }

  else
  {
    if (**a4)
    {
      goto LABEL_7;
    }

    v8 = (*(v7 - 4) + *(v7 - 8));
  }

  if (fabsf(v8) == INFINITY)
  {
    std::basic_string<char32_t>::operator=(a5, __str);
    return;
  }

LABEL_7:
  std::operator+[abi:ne200100]<char32_t,std::char_traits<char32_t>,std::allocator<char32_t>>(a2, &__str->__r_.__value_.__l.__data_, &__p);
  v9 = *(a3 + 23);
  if (v9 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (v9 >= 0)
  {
    v11 = *(a3 + 23);
  }

  else
  {
    v11 = *(a3 + 8);
  }

  v12 = std::basic_string<char32_t>::append(&__p, v10, v11);
  v13 = v12->__r_.__value_.__r.__words[0];
  v18[0] = v12->__r_.__value_.__l.__size_;
  *(v18 + 7) = *(&v12->__r_.__value_.__r.__words[1] + 7);
  v14 = HIBYTE(v12->__r_.__value_.__r.__words[2]);
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  *(a5 + 15) = *(v18 + 7);
  v16 = v18[0];
  *a5 = v13;
  *(a5 + 8) = v16;
  *(a5 + 23) = v14;
  if (v15 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B5483784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

void quasar::corrective_reranking::TextEdit::applyAdjacentEdits(uint64_t a1@<X0>, uint64_t a2@<X1>, std::wstring *a3@<X8>)
{
  v3[34] = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    if (*(a2 + 23) < 0)
    {
      std::basic_string<char32_t>::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
    }

    else
    {
      *&a3->__r_.__value_.__l.__data_ = *a2;
      a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
    }

    quasar::corrective_reranking::tokenize();
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "this->targetRange");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
}

void sub_1B5483B38(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5483C00);
}

void sub_1B5483B50(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  for (i = 24; i != -24; i -= 24)
  {
    __p = &a39 + i;
    std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  JUMPOUT(0x1B5483BC0);
}

void quasar::corrective_reranking::TextEdit::targetIn(uint64_t a1@<X0>, uint64_t a2@<X1>, std::wstring *a3@<X8>)
{
  if (*(a1 + 48) == 1)
  {
    quasar::corrective_reranking::TargetRange::getTargetFromText(a1 + 24, a2, a3);
  }

  else
  {
    std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(a3, byte_1B5B012E0);
  }
}

uint64_t quasar::corrective_reranking::tokenCasingFromScores(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  v3 = (v2 - v1) >> 2;
  if (v3 > 4)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "scores.size() <= static_cast<size_t>(TokenCasing::kCaseCount)");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  if (v3 < 2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  for (i = 1; i != v3; ++i)
  {
    if (*(v1 + 4 * i) <= *(v1 + 4 * result))
    {
      result = result;
    }

    else
    {
      result = i;
    }
  }

  return result;
}

void quasar::corrective_reranking::tokenCasingApply(int a1@<W0>, uint64_t a2@<X1>, std::wstring *a3@<X8>)
{
  v3 = *(a2 + 23);
  if (a1 != 3)
  {
    if (a1 != 2)
    {
      if (a1 == 1)
      {
        if (v3 >= 0)
        {
          v4 = a2;
        }

        else
        {
          v4 = *a2;
        }

        if (v3 >= 0)
        {
          v5 = *(a2 + 23);
        }

        else
        {
          v5 = *(a2 + 8);
        }

        quasar::utf32::convertToTitleCaseOrThrow(v4, v5);
      }

      if (v3 >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      if (v3 >= 0)
      {
        v9 = *(a2 + 23);
      }

      else
      {
        v9 = *(a2 + 8);
      }

      quasar::utf32::convertToLowerCaseOrThrow(v8, v9);
    }

    if (v3 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if (v3 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    quasar::utf32::convertToUpperCaseOrThrow(v6, v7);
  }

  if ((*(a2 + 23) & 0x80) != 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a2;
    a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }
}

uint64_t std::__optional_copy_base<quasar::corrective_reranking::TargetRange,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<quasar::corrective_reranking::TargetRange,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<quasar::corrective_reranking::TargetRange,false> const&>(a1, a2);
  return a1;
}

void sub_1B5483D84(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<quasar::corrective_reranking::TargetRange,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__optional_storage_base<quasar::corrective_reranking::TargetRange,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<quasar::corrective_reranking::TargetRange,false> const&>(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange*,quasar::corrective_reranking::TextRange*>(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    *(v2 + 24) = 1;
  }

  return result;
}

std::wstring *std::__optional_copy_base<quasar::corrective_reranking::AdjustedPayloadParts,false>::__optional_copy_base[abi:ne200100](std::wstring *this, __int128 *a2)
{
  LOBYTE(this->__r_.__value_.__l.__data_) = 0;
  LOBYTE(this[3].__r_.__value_.__l.__data_) = 0;
  if (*(a2 + 72) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::basic_string<char32_t>::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v4;
    }

    if (*(a2 + 47) < 0)
    {
      std::basic_string<char32_t>::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
    }

    else
    {
      v5 = *(a2 + 24);
      this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
      *&this[1].__r_.__value_.__l.__data_ = v5;
    }

    if (*(a2 + 71) < 0)
    {
      std::basic_string<char32_t>::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
    }

    else
    {
      v6 = a2[3];
      this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
      *&this[2].__r_.__value_.__l.__data_ = v6;
    }

    LOBYTE(this[3].__r_.__value_.__l.__data_) = 1;
  }

  return this;
}

void sub_1B5483EB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  if (*(v1 + 72) == 1)
  {
    std::pair<std::string const,quasar::TranslationPairSetting>::~pair(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<quasar::corrective_reranking::TargetRange,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<quasar::corrective_reranking::TargetRange,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = &v3[-*a2] >> 3;
      v5 = *a2;

      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange*,quasar::corrective_reranking::TextRange*>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    *(a1 + 24) = 1;
  }
}

std::wstring *quasar::corrective_reranking::AdjustedPayloadParts::AdjustedPayloadParts(std::wstring *this, __int128 *a2, __int128 *a3, __int128 *a4)
{
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  if (*(a3 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v8;
  }

  if (*(a4 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(this + 2, *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    this[2].__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&this[2].__r_.__value_.__l.__data_ = v9;
  }

  return this;
}

void sub_1B5484064(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::wstring *std::pair<std::basic_string<char32_t>,std::basic_string<char32_t>>::pair[abi:ne200100]<std::basic_string<char32_t> const&,char32_t const(&)[1],0>(std::wstring *this, __int128 *a2, char *__src)
{
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&this[1], __src);
  return this;
}

void sub_1B54840F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *quasar::joinToStream<std::vector<quasar::corrective_reranking::TextRange>>(void *result, unsigned int **a2, uint64_t *a3)
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

      result = quasar::corrective_reranking::operator<<(v6, v3);
      v7 = 0;
      v3 += 2;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t quasar::PTree::PTree<std::string>(uint64_t a1, uint64_t *a2)
{
  *a1 = 4;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      quasar::PTree::PTree(v6, v3);
      quasar::PTree::addChild(a1, v6);
      quasar::PTree::~PTree(v6);
      v3 += 24;
    }

    while (v3 != v4);
  }

  return a1;
}

void sub_1B5484214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<std::pair<std::string,quasar::PTree>>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (*(v9 + 31) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::PTree::PTree<float>(uint64_t a1, float **a2)
{
  *a1 = 4;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      v5 = *v3;
      Type = quasar::getType(a1, *v3);
      std::to_string(&v8, v5);
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 1;
      quasar::PTree::addChild(a1, &Type);
      quasar::PTree::~PTree(&Type);
      ++v3;
    }

    while (v3 != v4);
  }

  return a1;
}

void sub_1B5484318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  quasar::PTree::~PTree(&a9);
  std::vector<std::pair<std::string,quasar::PTree>>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (*(v9 + 31) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange*,quasar::corrective_reranking::TextRange*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B54843B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange const*,quasar::corrective_reranking::TextRange const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5484424(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__init_with_size[abi:ne200100]<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::EuclidNeighbor>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B54844A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::wstring *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::wstring *this)
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
        std::basic_string<char32_t>::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      v4[1].__r_.__value_.__r.__words[0] = *(v6 + 3);
      v6 += 2;
      v4 = (v8 + 32);
      v13 = (v8 + 32);
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TextTokenizer::Token>,quasar::TextTokenizer::Token*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::vector<std::basic_string<char32_t>>::__init_with_size[abi:ne200100]<std::basic_string<char32_t>*,std::basic_string<char32_t>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5484634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::wstring *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::basic_string<char32_t>>,std::basic_string<char32_t>*,std::basic_string<char32_t>*,std::basic_string<char32_t>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::wstring *this)
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
        std::basic_string<char32_t>::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
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
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::basic_string<char32_t>>,std::basic_string<char32_t>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::basic_string<char32_t>>,std::basic_string<char32_t>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(uint64_t *a1, std::string *__str, std::string *a3)
{
  v4 = __str;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = __str == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        std::string::operator=((v8 + 16), v4);
        v10 = *v8;
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_unique(a1, v8);
        ++v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, v10);
  }

  while (v4 != a3)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, &v4->__r_.__value_.__l.__data_);
    ++v4;
  }
}

void sub_1B548481C(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 16);
  *(v2 + 8) = v4;
  v5 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, (v2 + 16));
  if (v5)
  {
    return v5;
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == a2)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a3))
          {
            return i;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v4)
            {
              v12 %= v4;
            }
          }

          else
          {
            v12 &= v4 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, v18);
  }

  return 0;
}

uint64_t *std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

void std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__assign_with_size[abi:ne200100]<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*>(std::basic_string<char32_t> **a1, std::basic_string<char32_t> *__str, std::basic_string<char32_t> *a3, unint64_t a4)
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

      std::vector<quasar::EuclidNeighbor>::__vallocate[abi:ne200100](a1, v11);
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
        std::basic_string<char32_t>::operator=(v8, v6);
        v8[1].__r_.__value_.__r.__words[0] = v6[1].__r_.__value_.__r.__words[0];
        v6 = (v6 + 32);
        v8 = (v8 + 32);
      }

      while (v6 != a3);
      v12 = a1[1];
    }

    while (v12 != v8)
    {
      v14 = SHIBYTE(v12[-1].__r_.__value_.__r.__words[1]);
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
    v13 = (__str + v12 - v8);
    if (v12 != v8)
    {
      do
      {
        std::basic_string<char32_t>::operator=(v8, v6);
        v8[1].__r_.__value_.__r.__words[0] = v6[1].__r_.__value_.__r.__words[0];
        v6 = (v6 + 32);
        v8 = (v8 + 32);
      }

      while (v6 != v13);
      v12 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*>(a1, v13, a3, v12);
  }
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange> *,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange> *,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      *(v5 + 23) = 0;
      *v5 = 0;
      *(a4 + 24) = *(v5 + 3);
      v5 += 2;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::basic_string<char32_t>::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 4)
  {
    if ((a2 | 1) == 5)
    {
      v2 = 7;
    }

    else
    {
      v2 = (a2 | 1) + 1;
    }

    if (!(v2 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

std::basic_string<char32_t> *__cdecl std::basic_string<char32_t>::__assign_external(std::basic_string<char32_t> *this, const std::basic_string<char32_t>::value_type *__s, std::basic_string<char32_t>::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 4)
    {
      v8 = 4;
LABEL_6:
      std::basic_string<char32_t>::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, 4 * __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::basic_string<char32_t> *__cdecl std::basic_string<char32_t>::__assign_external(std::basic_string<char32_t> *this, const std::basic_string<char32_t>::value_type *__s)
{
  if (*__s)
  {
    v2 = 0;
    do
    {
      v3 = v2 + 1;
    }

    while (__s[++v2]);
  }

  else
  {
    v3 = 0;
  }

  return std::basic_string<char32_t>::__assign_external(this, __s, v3);
}

void std::vector<std::basic_string<char32_t>>::__assign_with_size[abi:ne200100]<std::basic_string<char32_t>*,std::basic_string<char32_t>*>(std::vector<std::wstring> *a1, std::basic_string<char32_t> *__str, std::basic_string<char32_t> *a3, unint64_t a4)
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
        std::basic_string<char32_t>::operator=(begin++, v6++);
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
        std::basic_string<char32_t>::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::basic_string<char32_t>>,std::basic_string<char32_t>*,std::basic_string<char32_t>*,std::basic_string<char32_t>*>(a1, (v6 + v12), a3, end);
  }
}

uint64_t kaldi::quasar::Aligner<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>::Aligner(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = std::__function::__value_func<float ()(kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string)>::__value_func[abi:ne200100](a1, a2);
  *(v3 + 56) = 0;
  *(v3 + 88) = 0;
  v5[0] = &unk_1F2D20148;
  v6 = v5;
  std::__function::__value_func<float ()(kaldi::quasar::ConfusionNetworkSlot<std::string>)>::swap[abi:ne200100](v5, (a1 + 32));
  std::__function::__value_func<float ()(kaldi::quasar::ConfusionNetworkSlot<std::string>)>::~__value_func[abi:ne200100](v5);
  v5[0] = &unk_1F2D201A0;
  v6 = v5;
  std::__function::__value_func<float ()(std::string)>::swap[abi:ne200100](v5, (a1 + 64));
  std::__function::__value_func<float ()(std::string)>::~__value_func[abi:ne200100](v5);
  return a1;
}

float kaldi::quasar::Aligner<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>::Align(void *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v223[4] = *MEMORY[0x1E69E9840];
  a4[1] = *a4;
  v4 = *a2;
  v5 = a2[1];
  v7 = *a3;
  v6 = a3[1];
  v8 = 0.0;
  v9 = v6 == *a3 && v5 == v4;
  if (v9)
  {
    return v8;
  }

  v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a3) >> 3);
  LODWORD(v173[0]) = 0;
  v160 = v12 + 1;
  std::vector<float>::vector[abi:ne200100](&__p, v12 + 1);
  v161 = 0x2E8BA2E8BA2E8BA3 * ((v5 - v4) >> 4);
  v13 = v161 + 1;
  std::vector<std::vector<float>>::vector[abi:ne200100](v174, v161 + 1);
  if (__p)
  {
    v216 = __p;
    operator delete(__p);
  }

  std::vector<std::vector<kaldi::quasar::AlignmentElement<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>>>::vector[abi:ne200100](v173, v13);
  v14 = v173[0];
  kaldi::quasar::ConfusionNetworkSlot<std::string>::ConfusionNetworkSlot(&__p);
  v159 = v4;
  v171 = 0;
  v172 = 0;
  v170 = 0;
  v15 = *(v14 + 8);
  v16 = *(v14 + 16);
  v162 = v12;
  if (v15 >= v16)
  {
    v18 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - *v14) >> 3);
    v19 = v18 + 1;
    if (v18 + 1 > 0x666666666666666)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v20 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - *v14) >> 3);
    if (2 * v20 > v19)
    {
      v19 = 2 * v20;
    }

    if (v20 >= 0x333333333333333)
    {
      v21 = 0x666666666666666;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::AlignmentElement<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>>>(v14, v21);
    }

    v22 = 40 * v18;
    *v22 = 0;
    *(v22 + 8) = &__p;
    *(v22 + 16) = 0;
    *(v22 + 24) = &v170;
    *(v22 + 32) = 0;
    v17 = 40 * v18 + 40;
    v23 = *(v14 + 8) - *v14;
    v24 = v22 - v23;
    memcpy((v22 - v23), *v14, v23);
    v25 = *v14;
    *v14 = v24;
    *(v14 + 8) = v17;
    *(v14 + 16) = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v15 = 0;
    *(v15 + 8) = &__p;
    *(v15 + 16) = 0;
    v17 = v15 + 40;
    *(v15 + 24) = &v170;
    *(v15 + 32) = 0;
  }

  *(v14 + 8) = v17;
  if (SHIBYTE(v172) < 0)
  {
    operator delete(v170);
  }

  std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](v223);
  if (v221)
  {
    v222 = v221;
    operator delete(v221);
  }

  v157 = v5;
  v158 = a4;
  if (v220 < 0)
  {
    operator delete(v219);
  }

  v156 = v6;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v218);
  std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::~__hash_table(&v216);
  if (v13 >= 2)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = **(v174[0] + v26);
      kaldi::quasar::ConfusionNetworkSlot<std::string>::ConfusionNetworkSlot(v207, *a2 + v27);
      v30 = a1[7];
      if (!v30)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v31 = (*(*v30 + 48))(v30, v207);
      **(v174[0] + v26 + 24) = v29 + v31;
      std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](&v214);
      if (v212)
      {
        v213 = v212;
        operator delete(v212);
      }

      if (v211 < 0)
      {
        operator delete(v210);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&v209);
      std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::~__hash_table(&v208);
      v32 = v173[0];
      v33 = *a2 + v27;
      v216 = 0;
      __p = 0;
      v217 = 0;
      kaldi::quasar::ConfusionNetworkSlot<std::string>::ConfusionNetworkSlot(v199, v33);
      v34 = a1[7];
      if (!v34)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v35 = (*(*v34 + 48))(v34, v199);
      v36 = v32 + v26;
      v37 = *(v32 + v26 + 32);
      v38 = *(v32 + v26 + 40);
      if (v37 >= v38)
      {
        v40 = v32 + v26;
        v41 = *(v40 + 24);
        v42 = 0xCCCCCCCCCCCCCCCDLL * ((v37 - v41) >> 3);
        v43 = v42 + 1;
        if (v42 + 1 > 0x666666666666666)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v44 = 0xCCCCCCCCCCCCCCCDLL * ((v38 - v41) >> 3);
        if (2 * v44 > v43)
        {
          v43 = 2 * v44;
        }

        if (v44 >= 0x333333333333333)
        {
          v45 = 0x666666666666666;
        }

        else
        {
          v45 = v43;
        }

        if (v45)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::AlignmentElement<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>>>(v40 + 24, v45);
        }

        v46 = 40 * v42;
        *v46 = v28;
        *(v46 + 8) = v33;
        *(v46 + 16) = 0;
        *(v46 + 24) = &__p;
        *(v46 + 32) = 2;
        *(v46 + 36) = v35;
        v39 = 40 * v42 + 40;
        v47 = *(v40 + 24);
        v48 = *(v36 + 32) - v47;
        v49 = v46 - v48;
        memcpy((v46 - v48), v47, v48);
        v50 = *(v40 + 24);
        *(v40 + 24) = v49;
        *(v36 + 32) = v39;
        *(v36 + 40) = 0;
        if (v50)
        {
          operator delete(v50);
        }
      }

      else
      {
        *v37 = v28;
        *(v37 + 8) = v33;
        *(v37 + 16) = 0;
        *(v37 + 24) = &__p;
        *(v37 + 32) = 2;
        v39 = v37 + 40;
        *(v37 + 36) = v35;
      }

      *(v36 + 32) = v39;
      std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](&v206);
      if (v204)
      {
        v205 = v204;
        operator delete(v204);
      }

      if (v203 < 0)
      {
        operator delete(v202);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&v201);
      std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::~__hash_table(&v200);
      if (SHIBYTE(v217) < 0)
      {
        operator delete(__p);
      }

      ++v28;
      v27 += 176;
      v26 += 24;
    }

    while (v161 != v28);
  }

  if (v160 >= 2)
  {
    v51 = 0;
    v52 = 0;
    do
    {
      v53 = *(*v174[0] + 4 * v52);
      v54 = (*a3 + v51);
      if (*(v54 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v169, *v54, *(v54 + 1));
      }

      else
      {
        v55 = *v54;
        v169.__r_.__value_.__r.__words[2] = *(v54 + 2);
        *&v169.__r_.__value_.__l.__data_ = v55;
      }

      v56 = a1[11];
      if (!v56)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v57 = (*(*v56 + 48))(v56, &v169);
      *(*v174[0] + 4 * v52 + 4) = v53 + v57;
      if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v169.__r_.__value_.__l.__data_);
      }

      v58 = v173[0];
      kaldi::quasar::ConfusionNetworkSlot<std::string>::ConfusionNetworkSlot(&__p);
      v59 = (*a3 + v51);
      if (*(v59 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v168, *v59, *(v59 + 1));
      }

      else
      {
        v60 = *v59;
        v168.__r_.__value_.__r.__words[2] = *(v59 + 2);
        *&v168.__r_.__value_.__l.__data_ = v60;
      }

      v61 = a1[11];
      if (!v61)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v62 = (*(*v61 + 48))(v61, &v168);
      v63 = *(v58 + 8);
      v64 = *(v58 + 16);
      if (v63 >= v64)
      {
        v66 = 0xCCCCCCCCCCCCCCCDLL * ((v63 - *v58) >> 3);
        v67 = v66 + 1;
        if (v66 + 1 > 0x666666666666666)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v68 = 0xCCCCCCCCCCCCCCCDLL * ((v64 - *v58) >> 3);
        if (2 * v68 > v67)
        {
          v67 = 2 * v68;
        }

        if (v68 >= 0x333333333333333)
        {
          v69 = 0x666666666666666;
        }

        else
        {
          v69 = v67;
        }

        if (v69)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::AlignmentElement<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>>>(v58, v69);
        }

        v70 = 40 * v66;
        *v70 = 0;
        *(v70 + 8) = &__p;
        *(v70 + 16) = v52;
        *(v70 + 24) = v59;
        *(v70 + 32) = 3;
        *(v70 + 36) = v62;
        v65 = 40 * v66 + 40;
        v71 = *(v58 + 8) - *v58;
        v72 = 40 * v66 - v71;
        memcpy((v70 - v71), *v58, v71);
        v73 = *v58;
        *v58 = v72;
        *(v58 + 8) = v65;
        *(v58 + 16) = 0;
        if (v73)
        {
          operator delete(v73);
        }
      }

      else
      {
        *v63 = 0;
        *(v63 + 8) = &__p;
        *(v63 + 16) = v52;
        *(v63 + 24) = v59;
        *(v63 + 32) = 3;
        v65 = v63 + 40;
        *(v63 + 36) = v62;
      }

      *(v58 + 8) = v65;
      if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v168.__r_.__value_.__l.__data_);
      }

      std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](v223);
      if (v221)
      {
        v222 = v221;
        operator delete(v221);
      }

      if (v220 < 0)
      {
        operator delete(v219);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v218);
      std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::~__hash_table(&v216);
      ++v52;
      v51 += 24;
    }

    while (v162 != v52);
  }

  v74 = v162;
  if ((v161 + 1) >= 2)
  {
    v75 = 1;
    while (v160 < 2)
    {
LABEL_193:
      v9 = v75++ == v161;
      if (v9)
      {
        goto LABEL_195;
      }
    }

    v76 = v75 - 1;
    v77 = 1;
    while (1)
    {
      kaldi::quasar::ConfusionNetworkSlot<std::string>::ConfusionNetworkSlot(v191, *a2 + 176 * v76);
      v78 = v77 - 1;
      v79 = *a3 + 24 * (v77 - 1);
      if (*(v79 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v167, *v79, *(v79 + 8));
      }

      else
      {
        v80 = *v79;
        v167.__r_.__value_.__r.__words[2] = *(v79 + 16);
        *&v167.__r_.__value_.__l.__data_ = v80;
      }

      v81 = a1[3];
      if (!v81)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v82 = (*(*v81 + 48))(v81, v191, &v167);
      if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v167.__r_.__value_.__l.__data_);
      }

      std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](&v198);
      if (v196)
      {
        v197 = v196;
        operator delete(v196);
      }

      if (v195 < 0)
      {
        operator delete(v194);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&v193);
      std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::~__hash_table(&v192);
      v83 = *(*(v174[0] + 24 * v76) + 4 * v77);
      kaldi::quasar::ConfusionNetworkSlot<std::string>::ConfusionNetworkSlot(v183, *a2 + 176 * v76);
      v84 = a1[7];
      if (!v84)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      *&__p = v83 + (*(*v84 + 48))(v84, v183);
      v85 = *(*(v174[0] + 24 * v75) + 4 * v78);
      v86 = *a3 + 24 * v78;
      if (*(v86 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v166, *v86, *(v86 + 8));
      }

      else
      {
        v87 = *v86;
        v166.__r_.__value_.__r.__words[2] = *(v86 + 16);
        *&v166.__r_.__value_.__l.__data_ = v87;
      }

      v88 = a1[11];
      if (!v88)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      *(&__p + 1) = v85 + (*(*v88 + 48))(v88, &v166);
      *&v216 = v82 + *(*(v174[0] + 24 * v76) + 4 * v78);
      v171 = 0;
      v172 = 0;
      v170 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v170, &__p, &v216 + 4, 3uLL);
      if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v166.__r_.__value_.__l.__data_);
      }

      std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](&v190);
      if (v188)
      {
        v189 = v188;
        operator delete(v188);
      }

      if (v187 < 0)
      {
        operator delete(v186);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&v185);
      std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::~__hash_table(&v184);
      if (v170 == v171)
      {
        v90 = v170;
      }

      else
      {
        v89 = (v170 + 4);
        v90 = v170;
        if (v170 + 4 != v171)
        {
          v91 = *v170;
          v90 = v170;
          v92 = (v170 + 4);
          do
          {
            v93 = *v92++;
            v94 = v93;
            if (v93 < v91)
            {
              v91 = v94;
              v90 = v89;
            }

            v89 = v92;
          }

          while (v92 != v171);
        }
      }

      v95 = (v90 - v170) >> 2;
      *(*(v174[0] + 24 * v75) + 4 * v77) = *v90;
      if (v95 != 2)
      {
        if (v95 == 1)
        {
          v104 = v173[0];
          kaldi::quasar::ConfusionNetworkSlot<std::string>::ConfusionNetworkSlot(&__p);
          v105 = *a3 + 24 * v78;
          if (*(v105 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v165, *v105, *(v105 + 8));
          }

          else
          {
            v106 = *v105;
            v165.__r_.__value_.__r.__words[2] = *(v105 + 16);
            *&v165.__r_.__value_.__l.__data_ = v106;
          }

          v117 = a1[11];
          if (!v117)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          v118 = (*(*v117 + 48))(v117, &v165);
          v119 = v104 + 24 * v75;
          v120 = *(v119 + 8);
          v121 = *(v119 + 16);
          if (v120 >= v121)
          {
            v123 = 0xCCCCCCCCCCCCCCCDLL * ((v120 - *v119) >> 3);
            v124 = v123 + 1;
            if (v123 + 1 > 0x666666666666666)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v125 = 0xCCCCCCCCCCCCCCCDLL * ((v121 - *v119) >> 3);
            if (2 * v125 > v124)
            {
              v124 = 2 * v125;
            }

            if (v125 >= 0x333333333333333)
            {
              v126 = 0x666666666666666;
            }

            else
            {
              v126 = v124;
            }

            if (v126)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::AlignmentElement<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>>>(v119, v126);
            }

            v139 = 40 * v123;
            *v139 = v75;
            *(v139 + 8) = &__p;
            *(v139 + 16) = v78;
            *(v139 + 24) = v105;
            *(v139 + 32) = 3;
            *(v139 + 36) = v118;
            v122 = 40 * v123 + 40;
            v140 = *(v119 + 8) - *v119;
            v141 = (40 * v123 - v140);
            memcpy(v141, *v119, v140);
            v142 = *v119;
            *v119 = v141;
            *(v119 + 8) = v122;
            *(v119 + 16) = 0;
            if (v142)
            {
              operator delete(v142);
            }
          }

          else
          {
            *v120 = v75;
            *(v120 + 8) = &__p;
            *(v120 + 16) = v78;
            *(v120 + 24) = v105;
            *(v120 + 32) = 3;
            v122 = v120 + 40;
            *(v120 + 36) = v118;
          }

          *(v119 + 8) = v122;
          if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v165.__r_.__value_.__l.__data_);
          }

          std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](v223);
          if (v221)
          {
            v222 = v221;
            operator delete(v221);
          }

          if (v220 < 0)
          {
            operator delete(v219);
          }

          std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v218);
          std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::~__hash_table(&v216);
        }

        else if (!v95)
        {
          v96 = v173[0];
          v97 = *a2 + 176 * v76;
          v216 = 0;
          __p = 0;
          v217 = 0;
          kaldi::quasar::ConfusionNetworkSlot<std::string>::ConfusionNetworkSlot(v175, v97);
          v98 = a1[7];
          if (!v98)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          v99 = (*(*v98 + 48))(v98, v175);
          v100 = v96 + 24 * v75;
          v101 = *(v100 + 8);
          v102 = *(v100 + 16);
          if (v101 >= v102)
          {
            v113 = 0xCCCCCCCCCCCCCCCDLL * ((v101 - *v100) >> 3);
            v114 = v113 + 1;
            if (v113 + 1 > 0x666666666666666)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v115 = 0xCCCCCCCCCCCCCCCDLL * ((v102 - *v100) >> 3);
            if (2 * v115 > v114)
            {
              v114 = 2 * v115;
            }

            if (v115 >= 0x333333333333333)
            {
              v116 = 0x666666666666666;
            }

            else
            {
              v116 = v114;
            }

            if (v116)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::AlignmentElement<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>>>(v100, v116);
            }

            v135 = 40 * v113;
            *v135 = v76;
            *(v135 + 8) = v97;
            *(v135 + 16) = v77;
            *(v135 + 24) = &__p;
            *(v135 + 32) = 2;
            *(v135 + 36) = v99;
            v103 = 40 * v113 + 40;
            v136 = *(v100 + 8) - *v100;
            v137 = v135 - v136;
            memcpy((v135 - v136), *v100, v136);
            v138 = *v100;
            *v100 = v137;
            *(v100 + 8) = v103;
            *(v100 + 16) = 0;
            if (v138)
            {
              operator delete(v138);
            }
          }

          else
          {
            *v101 = v76;
            *(v101 + 8) = v97;
            *(v101 + 16) = v77;
            *(v101 + 24) = &__p;
            *(v101 + 32) = 2;
            v103 = v101 + 40;
            *(v101 + 36) = v99;
          }

          *(v100 + 8) = v103;
          std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](&v182);
          if (v180)
          {
            v181 = v180;
            operator delete(v180);
          }

          if (v179 < 0)
          {
            operator delete(v178);
          }

          std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&v177);
          std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::~__hash_table(&v176);
          if (SHIBYTE(v217) < 0)
          {
            operator delete(__p);
          }
        }

        goto LABEL_189;
      }

      v107 = v173[0] + 24 * v75;
      v108 = *a2 + 176 * v76;
      v109 = *a3 + 24 * v78;
      v110 = *(v107 + 8);
      v111 = *(v107 + 16);
      if (v82 <= 0.0)
      {
        if (v110 >= v111)
        {
          v131 = 0xCCCCCCCCCCCCCCCDLL * ((v110 - *v107) >> 3);
          v132 = v131 + 1;
          if (v131 + 1 > 0x666666666666666)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v133 = 0xCCCCCCCCCCCCCCCDLL * ((v111 - *v107) >> 3);
          if (2 * v133 > v132)
          {
            v132 = 2 * v133;
          }

          if (v133 >= 0x333333333333333)
          {
            v134 = 0x666666666666666;
          }

          else
          {
            v134 = v132;
          }

          if (v134)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::AlignmentElement<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>>>(v173[0] + 24 * v75, v134);
          }

          v143 = 40 * v131;
          *v143 = v76;
          *(v143 + 8) = v108;
          *(v143 + 16) = v78;
          *(v143 + 24) = v109;
          *(v143 + 32) = 0;
          goto LABEL_185;
        }

        *v110 = v76;
        *(v110 + 8) = v108;
        *(v110 + 16) = v78;
        *(v110 + 24) = v109;
        *(v110 + 32) = 0;
      }

      else
      {
        if (v110 >= v111)
        {
          v127 = 0xCCCCCCCCCCCCCCCDLL * ((v110 - *v107) >> 3);
          v128 = v127 + 1;
          if (v127 + 1 > 0x666666666666666)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v129 = 0xCCCCCCCCCCCCCCCDLL * ((v111 - *v107) >> 3);
          if (2 * v129 > v128)
          {
            v128 = 2 * v129;
          }

          if (v129 >= 0x333333333333333)
          {
            v130 = 0x666666666666666;
          }

          else
          {
            v130 = v128;
          }

          if (v130)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::AlignmentElement<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>>>(v173[0] + 24 * v75, v130);
          }

          v143 = 40 * v127;
          *v143 = v76;
          *(v143 + 8) = v108;
          *(v143 + 16) = v78;
          *(v143 + 24) = v109;
          *(v143 + 32) = 1;
LABEL_185:
          *(v143 + 36) = v82;
          v112 = v143 + 40;
          v144 = *(v107 + 8) - *v107;
          v145 = v143 - v144;
          memcpy((v143 - v144), *v107, v144);
          v146 = *v107;
          *v107 = v145;
          *(v107 + 8) = v112;
          *(v107 + 16) = 0;
          if (v146)
          {
            operator delete(v146);
          }

          v74 = v162;
          goto LABEL_188;
        }

        *v110 = v76;
        *(v110 + 8) = v108;
        *(v110 + 16) = v78;
        *(v110 + 24) = v109;
        *(v110 + 32) = 1;
      }

      v112 = v110 + 40;
      *(v110 + 36) = v82;
LABEL_188:
      *(v107 + 8) = v112;
LABEL_189:
      if (v170)
      {
        v171 = v170;
        operator delete(v170);
      }

      v9 = v77++ == v74;
      if (v9)
      {
        goto LABEL_193;
      }
    }
  }

LABEL_195:
  v216 = 0;
  __p = 0;
  v217 = 0;
  if (v157 == v159)
  {
    v147 = 0;
    v148 = v74;
    v149 = v161;
    v150 = v158;
    if (v156 == v7)
    {
      goto LABEL_201;
    }
  }

  else
  {
    v148 = v74;
    v149 = v161;
    v150 = v158;
  }

  do
  {
    v151 = (*(v173[0] + 24 * v149) + 40 * v148);
    std::vector<kaldi::quasar::AlignmentElement<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>>::push_back[abi:ne200100](&__p, v151);
    v149 = *v151;
    v152 = *(v151 + 4);
    v148 = v152;
  }

  while (v149 | v152);
  v147 = -858993459 * ((v216 - __p) >> 3);
LABEL_201:
  for (i = v147 - 1; (i & 0x80000000) == 0; --i)
  {
    v154 = (__p + 40 * (i & 0x7FFFFFFF));
    std::vector<kaldi::quasar::AlignmentElement<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>>::push_back[abi:ne200100](v150, v154);
  }

  v8 = *(*(v174[0] + 24 * v161) + 4 * v74);
  if (__p)
  {
    v216 = __p;
    operator delete(__p);
  }

  __p = v173;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = v174;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  return v8;
}

void sub_1B5486200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, char a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  kaldi::quasar::ConfusionNetworkSlot<std::string>::~ConfusionNetworkSlot(&STACK[0x4B0]);
  STACK[0x4B0] = &a46;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x4B0]);
  STACK[0x4B0] = &a49;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x4B0]);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::ConfusionNetworkSlot<std::string>::~ConfusionNetworkSlot(uint64_t a1)
{
  std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](a1 + 144);
  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(a1 + 48);
  std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::~__hash_table(a1 + 8);
  return a1;
}

void std::vector<kaldi::quasar::AlignmentElement<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::AlignmentElement<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>>>(a1, v12);
    }

    v13 = 40 * v9;
    v14 = *a2;
    v15 = a2[1];
    *(v13 + 32) = *(a2 + 4);
    *v13 = v14;
    *(v13 + 16) = v15;
    v8 = 40 * v9 + 40;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = v4 + 40;
  }

  *(a1 + 8) = v8;
}

uint64_t std::__function::__value_func<float ()(std::string)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__value_func<float ()(std::string)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1B5486820(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<float ()(kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<float ()(kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<float ()(kaldi::quasar::ConfusionNetworkSlot<std::string>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<kaldi::quasar::Aligner<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>::Aligner(std::function<float ()(kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string)>)::{lambda(kaldi::quasar::ConfusionNetworkSlot<std::string>)#1},std::allocator<kaldi::quasar::Aligner<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>::Aligner(std::function<float ()(kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string)>)::{lambda(kaldi::quasar::ConfusionNetworkSlot<std::string>)#1}>,float ()(kaldi::quasar::ConfusionNetworkSlot<std::string>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double std::__invoke[abi:ne200100]<kaldi::quasar::Aligner<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>::Aligner(std::function<float ()(kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string)>)::{lambda(kaldi::quasar::ConfusionNetworkSlot<std::string>)#1} &,kaldi::quasar::ConfusionNetworkSlot<std::string>>(uint64_t a1, uint64_t a2)
{
  v11[4] = *MEMORY[0x1E69E9840];
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__hash_table(v4, (a2 + 8));
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__hash_table(v5, (a2 + 48));
  *v6 = *(a2 + 88);
  v7 = *(a2 + 104);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *__p = *(a2 + 112);
  v9 = *(a2 + 128);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v10 = *(a2 + 136);
  std::__function::__value_func<std::string ()(std::string)>::__value_func[abi:ne200100](v11, a2 + 144);
  std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v5);
  std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::~__hash_table(v4);
  return 1.0;
}

void *std::__function::__value_func<float ()(kaldi::quasar::ConfusionNetworkSlot<std::string>)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1B5486E80(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

float std::__function::__func<kaldi::quasar::Aligner<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>::Aligner(std::function<float ()(kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string)>)::{lambda(std::string)#1},std::allocator<kaldi::quasar::Aligner<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>::Aligner(std::function<float ()(kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string)>)::{lambda(std::string)#1}>,float ()(std::string)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 23);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (v3 < 0)
  {
    operator delete(v2);
  }

  return 1.0;
}

uint64_t std::__function::__func<kaldi::quasar::Aligner<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>::Aligner(std::function<float ()(kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string)>)::{lambda(std::string)#1},std::allocator<kaldi::quasar::Aligner<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>::Aligner(std::function<float ()(kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string)>)::{lambda(std::string)#1}>,float ()(std::string)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::vector<std::vector<kaldi::quasar::AlignmentElement<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::AlignmentElement<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t quasar::DecoderChainPersistentData::DecoderChainPersistentData(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  return this;
}

double quasar::DecoderChainPersistentData::getAverageConfidence(quasar::DecoderChainPersistentData *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0.0;
  }

  *&result = *this / v1;
  return result;
}

float quasar::DecoderChainPersistentData::updateData(uint64_t a1, uint64_t ***a2, float result)
{
  v3 = **a2;
  if ((*a2)[1] != v3)
  {
    v5 = *v3;
    v4 = (**a2)[1];
    *(a1 + 8) += 0x6DB6DB6DB6DB6DB7 * ((v4 - v5) >> 5);
    if (v4 == v5)
    {
      v7 = 0.0;
    }

    else
    {
      v6 = 0;
      do
      {
        v6 = (*(v5 + 40) + v6);
        v5 += 224;
      }

      while (v5 != v4);
      v7 = v6;
    }

    result = *a1 + v7;
    *a1 = result;
  }

  return result;
}

float quasar::DecoderChainOutput::updatePersistentData(quasar::DecoderChainOutput *this, float a2)
{
  v3 = *(this + 78);
  v4 = *(this + 47);
  v6[0] = *(this + 46);
  v6[1] = v4;
  if (!v4)
  {
    return quasar::DecoderChainPersistentData::updateData(v3, v6, a2);
  }

  atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  quasar::DecoderChainPersistentData::updateData(v3, v6, a2);

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return result;
}

void quasar::DecoderChainOutput::DecoderChainOutput(uint64_t a1, void *a2, void *a3)
{
  *(a1 + 96) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 120) = a1 + 128;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 216) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 432) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 440) = *a3;
  v3 = a3[1];
  *(a1 + 448) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 456) = 0;
  *(a1 + 464) = xmmword_1B5B01690;
  *(a1 + 480) = 0xBFF0000000000000;
  *(a1 + 488) = *a2;
  v4 = a2[1];
  *(a1 + 496) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1B54873F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v15 = v12;
  a10 = v15;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a10);
  v17 = *(v10 + 1080);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (*(v10 + 1071) < 0)
  {
    operator delete(*(v10 + 1048));
  }

  v18 = *(v10 + 1024);
  if (v18)
  {
    *(v10 + 1032) = v18;
    operator delete(v18);
  }

  v19 = *(v10 + 1000);
  if (v19)
  {
    *(v10 + 1008) = v19;
    operator delete(v19);
  }

  if (*(v10 + 975) < 0)
  {
    operator delete(*v14);
  }

  if (*(v10 + 919) < 0)
  {
    operator delete(*v13);
  }

  std::vector<std::vector<kaldi::quasar::WordConf>>::__destroy_vector::operator()[abi:ne200100](&a10);
  quasar::AudioAnalytics::~AudioAnalytics((v10 + 712));
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](&a10);
  v20 = *(v10 + 664);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = *(v10 + 632);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  std::vector<quasar::LmeInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  v22 = *(v10 + 584);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  v23 = *(v10 + 568);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v24 = *(v10 + 512);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v25 = *(v10 + 496);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v26 = *(v10 + 448);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v27 = *(v10 + 432);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = *(v10 + 416);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  a10 = (v10 + 384);
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v29 = *(v10 + 376);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v30 = *(v10 + 360);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v10 + 344);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = *(v10 + 328);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v33 = *(v10 + 312);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v34 = *(v10 + 296);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  v35 = *(v10 + 280);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v36 = *(v10 + 264);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  v37 = *(v10 + 248);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v38 = *(v10 + 232);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if (*(v10 + 216) == 1)
  {
    v39 = *(v10 + 208);
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }
  }

  v40 = *(v10 + 192);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  v41 = *(v10 + 176);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  v42 = *(v10 + 152);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(v11, *(v10 + 128));
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a10);
  v43 = *(v10 + 72);
  if (v43)
  {
    *(v10 + 80) = v43;
    operator delete(v43);
  }

  a10 = (v10 + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 24);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}