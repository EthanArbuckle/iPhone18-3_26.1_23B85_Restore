void sub_1B503EF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  quasar::PTree::~PTree(&a24);
  if (*(v33 - 97) < 0)
  {
    operator delete(*(v33 - 120));
  }

  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a24);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_1B503F158(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1B8C850B0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1B503F214(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
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

uint64_t *kaldi::KaldiWarnMessage::KaldiWarnMessage(kaldi::KaldiWarnMessage *this)
{
  result = std::ostringstream::basic_ostringstream[abi:ne200100](this);
  result[33] = v1;
  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1B8C84B80](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1B8C84B90](v13);
  return a1;
}

void sub_1B503F4B4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1B8C84B90](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1B503F494);
}

void EARLogger::QuasarOSLogger_INFO(uint64_t *a1, os_log_type_t a2, void *a3, const char *a4)
{
  if (*(a1 + 23) >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  EARLogger::QuasarOSLog(1, a2, a3, a4, v4);
}

void EARLogger::QuasarOSLog(EARLogger *this, os_log_type_t a2, void *a3, const char *a4, ...)
{
  v4 = EARLogger::QuasarOSLogger(this);
  os_log_with_args();
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1B503F784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SpeechRecognizerConfig::Initialize(quasar::SpeechRecognizerConfig *this, const quasar::DecoderOptions *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "misc-shared.");
  quasar::SystemConfig::setPrefix(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_1B503FF7C(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  if (*(v23 - 121) < 0)
  {
    operator delete(*(v23 - 144));
    if ((v22 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&__p, MEMORY[0x1E69E54E8]);
      MEMORY[0x1B8C85200](va);
      if (*(v23 - 97) < 0)
      {
        operator delete(*(v23 - 120));
      }

      v25 = *(v23 - 88);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void quasar::Geography::loadFromFile()
{
  quasar::PTree::PTree(&v0);
  quasar::PTree::readJsonFromFile();
}

{
  quasar::PTree::PTree(v0);
  quasar::PTree::readJsonFromFile();
}

void sub_1B5040248(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25)
{
  v26 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    if (quasar::gLogLevel >= 1)
    {
      v27 = v26;
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
      a10 = 0u;
      a11 = 0u;
      a9 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&a9);
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a9, "GeoLM: Error while loading geo-config.json file: ", 49);
      v29 = (*(*v27 + 16))(v27);
      v30 = strlen(v29);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v29, v30);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&a9);
    }
  }

  else if (quasar::gLogLevel >= 1)
  {
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
    a10 = 0u;
    a11 = 0u;
    a9 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&a9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a9, "GeoLM: Unknown exception while reading geo-config.json", 54);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(&a9);
  }

  __cxa_end_catch();
  JUMPOUT(0x1B5040230);
}

void sub_1B504037C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

BOOL quasar::SystemConfig::Version::operator<(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 == *a2)
  {
    return a1[1] < a2[1];
  }

  return 0;
}

uint64_t quasar::SystemConfig::getConfigFileVersion(quasar::SystemConfig *this)
{
  if (*(this + 388) != 1)
  {
    memset(v2, 0, sizeof(v2));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Config file must be loaded before calling this method.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v2);
  }

  return *(this + 4);
}

void *kaldi::OnlineFeatInputItfIO::OnlineFeatInputItfIO(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = a5;
  result[4] = a6;
  result[5] = a7;
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void quasar::SilencePosteriorGenerator::SilencePosteriorGenerator(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v6 = a5;
  v7 = a3;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1;
  *(a1 + 84) = 0;
  *(a1 + 88) = 0;
  quasar::SystemConfig::SystemConfig(v5);
}

void sub_1B504071C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void **a54)
{
  quasar::SystemConfig::~SystemConfig(&a54);
  std::unique_ptr<quasar::NFHatTransformer>::reset[abi:ne200100](v54 + 9, 0);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a54);
  v56 = v54[5];
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  v57 = v54[3];
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  v58 = v54[1];
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::NFHatTransformer::estimateSilenceDuration(quasar::NFHatTransformer *a1, uint64_t a2, int a3, const void **a4)
{
  result = kaldi::MatrixBase<float>::NumRows(a2);
  if (result >= 1)
  {
    v9 = 0;
    do
    {
      quasar::NFHatTransformer::estimateSilenceDuration(a1, *(*a2 + 4 * *(a2 + 16) * v9), a3);
      v10 = *a1;
      v12 = a4[1];
      v11 = a4[2];
      if (v12 >= v11)
      {
        v14 = *a4;
        v15 = v12 - *a4;
        v16 = v15 >> 2;
        v17 = (v15 >> 2) + 1;
        if (v17 >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v18 = v11 - v14;
        if (v18 >> 1 > v17)
        {
          v17 = v18 >> 1;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v19 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4, v19);
        }

        *(4 * v16) = v10;
        v13 = 4 * v16 + 4;
        memcpy(0, v14, v15);
        v20 = *a4;
        *a4 = 0;
        a4[1] = v13;
        a4[2] = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v12 = v10;
        v13 = (v12 + 1);
      }

      a4[1] = v13;
      ++v9;
      result = kaldi::MatrixBase<float>::NumRows(a2);
    }

    while (v9 < result);
  }

  return result;
}

void quasar::SystemConfig::Register<double>(const void **a1, const void **a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9)
{
  (*(*a1 + 4))(a1);
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

void sub_1B5040AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SystemConfig::ToDouble(char *a1)
{
  v1 = a1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v9 = 0;
  strtod(a1, &v9);
  v2 = v1;
  if (v1[23] < 0)
  {
    v2 = *v1;
  }

  if (v2 == v9)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v4 = std::string::append(&v6, "");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v8 = v4->__r_.__value_.__r.__words[2];
    v7 = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    quasar::PTree::Error::Error(exception, &v7);
  }
}

void sub_1B5040BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t _ZNSt3__120__shared_ptr_emplaceIKN5kaldi5TimerENS_9allocatorIS2_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(uint64_t a1, clockid_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F2CFF930;
  *(a1 + 48) = 1;
  kaldi::Timer::Reset((a1 + 24), a2);
  *(a1 + 56) = 0;
  return a1;
}

void quasar::RecogAudioBuffer::RecogAudioBuffer(uint64_t a1, int a2, int a3, int a4, char a5, int a6, int a7, int a8, char a9, int a10)
{
  quasar::RecogAudioBuffer::RecogAudioBuffer(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

{
  v10 = quasar::RecogAudioBufferBase::RecogAudioBufferBase(a1, a5);
  *v10 = &unk_1F2D27790;
  *(v10 + 16) = &unk_1F2D27810;
  *(v10 + 24) = 850045863;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0;
  *(v10 + 88) = 1018212795;
  *(v10 + 96) = 0u;
  *(v10 + 112) = 0u;
  *(v10 + 128) = 0;
  operator new();
}

uint64_t quasar::RecogAudioBufferBase::RecogAudioBufferBase(uint64_t this, char a2)
{
  *this = &unk_1F2CFE3E8;
  *(this + 8) = a2;
  return this;
}

void *std::__shared_ptr_emplace<kaldi::Fbank>::__shared_ptr_emplace[abi:ne200100]<kaldi::FbankOptions &,std::allocator<kaldi::Fbank>,0>(void *a1, const kaldi::FbankOptions *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D239C8;
  kaldi::Fbank::Fbank((a1 + 3), a2);
  return a1;
}

void quasar::SystemConfig::Register(uint64_t a1, const void **a2, uint64_t a3)
{
  if (*(a1 + 1552) != 1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Config file must be loaded before calling this method.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v6 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1312, __p);
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 1320 != v6 && quasar::gLogLevel >= 4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Parameter name ", 15);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, v11);
    if ((v12 & 0x80u) == 0)
    {
      v8 = v11;
    }

    else
    {
      v8 = v11[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11[1];
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " already registered", 19);
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v11[0] = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 1312, __p) + 56) = a3;
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

{
  if (*(a1 + 1552) != 1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Config file must be loaded before calling this method.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v6 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1336, __p);
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 1344 != v6 && quasar::gLogLevel >= 4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Parameter name ", 15);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, v11);
    if ((v12 & 0x80u) == 0)
    {
      v8 = v11;
    }

    else
    {
      v8 = v11[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11[1];
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " already registered", 19);
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v11[0] = __p;
  *(std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 1336, __p) + 56) = a3;
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

{
  if (*(a1 + 1552) != 1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Config file must be loaded before calling this method.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v6 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1192, __p);
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 1200 != v6 && quasar::gLogLevel >= 4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Parameter name ", 15);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, v11);
    if ((v12 & 0x80u) == 0)
    {
      v8 = v11;
    }

    else
    {
      v8 = v11[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11[1];
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " already registered", 19);
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v11[0] = __p;
  *(std::__tree<std::__value_type<std::string,BOOL *>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 1192, __p) + 56) = a3;
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

{
  if (*(a1 + 1552) != 1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Config file must be loaded before calling this method.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v6 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1216, __p);
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 1224 != v6 && quasar::gLogLevel >= 4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Parameter name ", 15);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, v11);
    if ((v12 & 0x80u) == 0)
    {
      v8 = v11;
    }

    else
    {
      v8 = v11[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11[1];
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " already registered", 19);
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v11[0] = __p;
  *(std::__tree<std::__value_type<std::string,BOOL *>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 1216, __p) + 56) = a3;
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

{
  if (*(a1 + 1552) != 1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Config file must be loaded before calling this method.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v6 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1432, __p);
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 1440 != v6 && quasar::gLogLevel >= 4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Parameter name ", 15);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, v11);
    if ((v12 & 0x80u) == 0)
    {
      v8 = v11;
    }

    else
    {
      v8 = v11[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11[1];
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " already registered", 19);
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v11[0] = __p;
  *(std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 1432, __p) + 56) = a3;
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

{
  if (*(a1 + 1552) != 1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Config file must be loaded before calling this method.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v6 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1288, __p);
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 1296 != v6 && quasar::gLogLevel >= 4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Parameter name ", 15);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, v11);
    if ((v12 & 0x80u) == 0)
    {
      v8 = v11;
    }

    else
    {
      v8 = v11[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11[1];
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " already registered", 19);
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v11[0] = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 1288, __p) + 56) = a3;
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

{
  if (*(a1 + 1552) != 1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Config file must be loaded before calling this method.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v6 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1240, __p);
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 1248 != v6 && quasar::gLogLevel >= 4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Parameter name ", 15);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, v11);
    if ((v12 & 0x80u) == 0)
    {
      v8 = v11;
    }

    else
    {
      v8 = v11[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11[1];
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " already registered", 19);
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v11[0] = __p;
  *(std::__tree<std::__value_type<std::string,BOOL *>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 1240, __p) + 56) = a3;
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

{
  if (*(a1 + 1552) != 1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Config file must be loaded before calling this method.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v6 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1264, __p);
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 1272 != v6 && quasar::gLogLevel >= 4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Parameter name ", 15);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, v11);
    if ((v12 & 0x80u) == 0)
    {
      v8 = v11;
    }

    else
    {
      v8 = v11[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11[1];
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " already registered", 19);
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v11[0] = __p;
  *(std::__tree<std::__value_type<std::string,BOOL *>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 1264, __p) + 56) = a3;
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

{
  if (*(a1 + 1552) != 1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Config file must be loaded before calling this method.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v6 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1360, __p);
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 1368 != v6 && quasar::gLogLevel >= 4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Parameter name ", 15);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, v11);
    if ((v12 & 0x80u) == 0)
    {
      v8 = v11;
    }

    else
    {
      v8 = v11[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11[1];
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " already registered", 19);
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v11[0] = __p;
  *(std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 1360, __p) + 56) = a3;
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

{
  if (*(a1 + 1552) != 1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Config file must be loaded before calling this method.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v6 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1384, __p);
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 1392 != v6 && quasar::gLogLevel >= 4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Parameter name ", 15);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, v11);
    if ((v12 & 0x80u) == 0)
    {
      v8 = v11;
    }

    else
    {
      v8 = v11[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11[1];
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " already registered", 19);
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v11[0] = __p;
  *(std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 1384, __p) + 56) = a3;
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

{
  if (*(a1 + 1552) != 1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Config file must be loaded before calling this method.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v6 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1408, __p);
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 1416 != v6 && quasar::gLogLevel >= 4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Parameter name ", 15);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, v11);
    if ((v12 & 0x80u) == 0)
    {
      v8 = v11;
    }

    else
    {
      v8 = v11[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11[1];
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " already registered", 19);
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v11[0] = __p;
  *(std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 1408, __p) + 56) = a3;
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

{
  if (*(a1 + 1552) != 1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Config file must be loaded before calling this method.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v6 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1456, __p);
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 1464 != v6 && quasar::gLogLevel >= 4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Parameter name ", 15);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, v11);
    if ((v12 & 0x80u) == 0)
    {
      v8 = v11;
    }

    else
    {
      v8 = v11[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11[1];
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " already registered", 19);
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v11[0] = __p;
  *(std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 1456, __p) + 56) = a3;
  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

uint64_t std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_1B5041218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<quasar::RecogAudioBuffer>::__shared_ptr_emplace[abi:ne200100]<unsigned int const&,int &,std::allocator<quasar::RecogAudioBuffer>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFF8E0;
  std::allocator<quasar::RecogAudioBuffer>::construct[abi:ne200100]<quasar::RecogAudioBuffer,unsigned int const&,int &>();
}

void kaldi::Timer::Reset(kaldi::Timer *this, clockid_t a2)
{
  *this = kaldi::Timer::GetSeconds(5, a2);
  if (*(this + 24) == 1)
  {
    *(this + 1) = kaldi::Timer::GetSeconds(0xC, v3);
  }

  *(this + 2) = kaldi::Timer::GetSeconds(0x10, v3);
}

void sub_1B504163C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, quasar::Bitmap *a10, char a11)
{
  std::condition_variable_any::~condition_variable_any(v13);
  std::mutex::~mutex(v12);
  quasar::Bitmap::~Bitmap(a10);
  quasar::Bitmap::~Bitmap(v11);
  _Unwind_Resume(a1);
}

uint64_t boost::circular_buffer<float,std::allocator<float>>::allocate(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    std::logic_error::logic_error(&v3, "circular_buffer");
    v3.__vftable = (MEMORY[0x1E69E55B0] + 16);
    boost::throw_exception<std::length_error>(&v3);
  }

  if (a2)
  {

    operator new();
  }

  return 0;
}

void quasar::OnlineFbankFe::createOnlineFeInputImpl(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v32 = a2;
  if (!*a3)
  {
    v16[0] = &unk_1F2D3A0F0;
    *&v16[1] = *(a1 + 56);
    *(&v16[2] + 5) = *(a1 + 69);
    if (*(a1 + 103) < 0)
    {
      std::string::__init_copy_ctor_external(&v17, *(a1 + 80), *(a1 + 88));
    }

    else
    {
      v17 = *(a1 + 80);
      *&v18 = *(a1 + 96);
    }

    v6 = *a4;
    *(a1 + 156) = v6;
    *(&v18 + 1) = *(a1 + 104);
    v7 = *(a1 + 128);
    v19 = *(a1 + 112);
    v20 = v7;
    LODWORD(v21) = *(a1 + 144);
    *&v16[1] = v6;
    HIDWORD(v18) = *(a1 + 160);
    std::allocate_shared[abi:ne200100]<kaldi::Fbank,std::allocator<kaldi::Fbank>,kaldi::FbankOptions &,0>();
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "'", 1);
  v11 = *(a1 + 8);
  v10 = a1 + 8;
  v9 = v11;
  v12 = *(v10 + 23);
  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = *(v10 + 8);
  }

  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v13, v14);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, "' can only occur at the first stage of feature-extract");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v16);
}

void sub_1B5041A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::FbankOptions::~FbankOptions(va);
  _Unwind_Resume(a1);
}

void quasar::NFHatTransformer::estimateSilenceDuration(quasar::NFHatTransformer *this, float a2, int a3)
{
  v6 = *(this + 9);
  v7 = *(this + 7);
  v8 = v6 * v7;
  v9 = 1.0 - v6;
  v10 = (1.0 - v6) * (1.0 - v7);
  v11 = v6 * (1.0 - v7);
  v12 = v9 * v7;
  if (v12 <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (v8 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v8;
  }

  if (v8 <= v10)
  {
    *(this + 20) = 0;
    v16 = 0.0;
  }

  else
  {
    v15 = *(this + 20) + 1;
    *(this + 20) = v15;
    v16 = v15;
  }

  v17 = *(this + 8);
  v18 = v14 * powf(a2, v17);
  v19 = v18 / (v18 + v13 * powf(1.0 - a2, v17));
  *(this + 9) = v19;
  *this = v19 * v16 * a3;
  if (*(this + 84) == 1)
  {
    v21 = *(this + 2);
    v20 = *(this + 3);
    if (v21 >= v20)
    {
      v23 = *(this + 1);
      v24 = v21 - v23;
      v25 = (v21 - v23) >> 3;
      v26 = v25 + 1;
      if ((v25 + 1) >> 61)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v27 = v20 - v23;
      if (v27 >> 2 > v26)
      {
        v26 = v27 >> 2;
      }

      v28 = v27 >= 0x7FFFFFFFFFFFFFF8;
      v29 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v28)
      {
        v29 = v26;
      }

      if (v29)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(this + 8, v29);
      }

      v30 = (v21 - v23) >> 3;
      v31 = (8 * v25);
      v32 = (8 * v25 - 8 * v30);
      *v31 = v19;
      v22 = v31 + 1;
      memcpy(v32, v23, v24);
      v33 = *(this + 1);
      *(this + 1) = v32;
      *(this + 2) = v22;
      *(this + 3) = 0;
      if (v33)
      {
        operator delete(v33);
      }
    }

    else
    {
      *v21 = v19;
      v22 = v21 + 1;
    }

    *(this + 2) = v22;
    v35 = *(this + 5);
    v34 = *(this + 6);
    if (v35 >= v34)
    {
      v37 = *(this + 4);
      v38 = v35 - v37;
      v39 = (v35 - v37) >> 2;
      v40 = v39 + 1;
      if ((v39 + 1) >> 62)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v41 = v34 - v37;
      if (v41 >> 1 > v40)
      {
        v40 = v41 >> 1;
      }

      v28 = v41 >= 0x7FFFFFFFFFFFFFFCLL;
      v42 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v28)
      {
        v42 = v40;
      }

      if (v42)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this + 32, v42);
      }

      v43 = (v35 - v37) >> 2;
      v44 = (4 * v39);
      v45 = (4 * v39 - 4 * v43);
      *v44 = *(this + 20);
      v36 = v44 + 1;
      memcpy(v45, v37, v38);
      v46 = *(this + 4);
      *(this + 4) = v45;
      *(this + 5) = v36;
      *(this + 6) = 0;
      if (v46)
      {
        operator delete(v46);
      }
    }

    else
    {
      *v35 = *(this + 20);
      v36 = v35 + 4;
    }

    *(this + 5) = v36;
  }
}

uint64_t kaldi::nnet1::Nnet1InferenceNet::OutputDim(kaldi::nnet1::Nnet1InferenceNet *this, int a2)
{
  v2 = 12;
  if (a2)
  {
    v2 = 8;
  }

  return *(*(this + 52) + v2);
}

void *boost::circular_buffer<float,std::allocator<float>>::push_back_impl<float const&>(void *result, _DWORD *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = result[4];
  if (v4 == (v3 - *result) >> 2)
  {
    if (v3 != v2)
    {
      v5 = result[3];
      *v5 = *a2;
      v6 = v5 + 1;
      if (v6 != v3)
      {
        v2 = v6;
      }

      result[2] = v2;
      result[3] = v2;
    }
  }

  else
  {
    v7 = result[3];
    *v7 = *a2;
    v8 = v7 + 1;
    if (v8 != v3)
    {
      v2 = v8;
    }

    result[3] = v2;
    result[4] = v4 + 1;
  }

  return result;
}

void quasar::SystemConfig::readPtree(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1552) == 1)
  {
    quasar::PTree::getChildOptional(a1 + 72, a2);
  }

  memset(v2, 0, 272);
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Config file must be loaded before calling this method.");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v2);
}

void sub_1B5042620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    JUMPOUT(0x1B5042640);
  }

  JUMPOUT(0x1B504264CLL);
}

void sub_1B5042648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t quasar::SystemConfig::SetOption(uint64_t a1, const void **a2, quasar::PTree *a3)
{
  if (*(a1 + 1552) != 1)
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v66 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v66);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v66, "Config file must be loaded before calling this method.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v66);
  }

  if (a1 + 1200 != std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1192, a2))
  {
    String = quasar::PTree::getString(a3);
    if (*(String + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v65, *String, *(String + 8));
    }

    else
    {
      v7 = *String;
      v65.__r_.__value_.__r.__words[2] = *(String + 16);
      *&v65.__r_.__value_.__l.__data_ = v7;
    }

    v10 = quasar::SystemConfig::ToBool(&v65);
    *&v66 = a2;
    **(std::__tree<std::__value_type<std::string,BOOL *>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1192, a2) + 56) = v10;
    if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 1;
    }

    v11 = v65.__r_.__value_.__r.__words[0];
    goto LABEL_40;
  }

  if (a1 + 1224 != std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1216, a2))
  {
    v8 = quasar::PTree::getString(a3);
    if (*(v8 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v64, *v8, *(v8 + 8));
    }

    else
    {
      v9 = *v8;
      v64.__r_.__value_.__r.__words[2] = *(v8 + 16);
      *&v64.__r_.__value_.__l.__data_ = v9;
    }

    v14 = quasar::SystemConfig::ToInt(&v64);
    *&v66 = a2;
    **(std::__tree<std::__value_type<std::string,BOOL *>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1216, a2) + 56) = v14;
    if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 1;
    }

    v11 = v64.__r_.__value_.__r.__words[0];
    goto LABEL_40;
  }

  if (a1 + 1248 != std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1240, a2))
  {
    v12 = quasar::PTree::getString(a3);
    if (*(v12 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v63, *v12, *(v12 + 8));
    }

    else
    {
      v13 = *v12;
      v63.__r_.__value_.__r.__words[2] = *(v12 + 16);
      *&v63.__r_.__value_.__l.__data_ = v13;
    }

    v17 = quasar::SystemConfig::ToUInt(&v63);
    *&v66 = a2;
    **(std::__tree<std::__value_type<std::string,BOOL *>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1240, a2) + 56) = v17;
    if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 1;
    }

    v11 = v63.__r_.__value_.__r.__words[0];
    goto LABEL_40;
  }

  if (a1 + 1272 != std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1264, a2))
  {
    v15 = quasar::PTree::getString(a3);
    if (*(v15 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v62, *v15, *(v15 + 8));
    }

    else
    {
      v16 = *v15;
      v62.__r_.__value_.__r.__words[2] = *(v15 + 16);
      *&v62.__r_.__value_.__l.__data_ = v16;
    }

    v20 = quasar::SystemConfig::ToInt64(&v62);
    *&v66 = a2;
    **(std::__tree<std::__value_type<std::string,BOOL *>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1264, a2) + 56) = v20;
    if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 1;
    }

    v11 = v62.__r_.__value_.__r.__words[0];
    goto LABEL_40;
  }

  if (a1 + 1296 != std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1288, a2))
  {
    v18 = quasar::PTree::getString(a3);
    if (*(v18 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v61, *v18, *(v18 + 8));
    }

    else
    {
      v19 = *v18;
      v61.__r_.__value_.__r.__words[2] = *(v18 + 16);
      *&v61.__r_.__value_.__l.__data_ = v19;
    }

    v23 = quasar::SystemConfig::ToFloat(&v61);
    *&v66 = a2;
    **(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1288, a2) + 56) = v23;
    if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 1;
    }

    v11 = v61.__r_.__value_.__r.__words[0];
    goto LABEL_40;
  }

  if (a1 + 1320 != std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1312, a2))
  {
    v21 = quasar::PTree::getString(a3);
    if (*(v21 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v21, *(v21 + 8));
    }

    else
    {
      v22 = *v21;
      __p.__r_.__value_.__r.__words[2] = *(v21 + 16);
      *&__p.__r_.__value_.__l.__data_ = v22;
    }

    quasar::SystemConfig::ToDouble(&__p);
    *&v66 = a2;
    **(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1312, a2) + 56) = v26;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 1;
    }

    v11 = __p.__r_.__value_.__r.__words[0];
LABEL_40:
    operator delete(v11);
    return 1;
  }

  if (a1 + 1344 != std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1336, a2))
  {
    v24 = quasar::PTree::getString(a3);
    *&v66 = a2;
    v25 = std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1336, a2);
    std::string::operator=(*(v25 + 56), v24);
    return 1;
  }

  if (a1 + 1368 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1360, a2))
  {
    if (a1 + 1392 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1384, a2))
    {
      if (a1 + 1416 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1408, a2))
      {
        if (a1 + 1440 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1432, a2))
        {
          if (a1 + 1464 != std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1456, a2))
          {
            v58 = quasar::PTree::getString(a3);
            quasar::filesystem::Path::Path(&v66, v58);
            v83 = a2;
            v59 = std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1456, a2);
            std::string::operator=((*(v59 + 56) + 8), (&v66 + 8));
            *&v66 = &unk_1F2CFAA28;
            if ((SHIBYTE(v67) & 0x80000000) == 0)
            {
              return 1;
            }

            v11 = *(&v66 + 1);
            goto LABEL_40;
          }

          return 0;
        }

        else
        {
          *&v66 = a2;
          v52 = std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1432, a2);
          std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::clear(*(v52 + 56));
          v53 = quasar::PTree::begin(a3);
          v54 = quasar::PTree::end(a3);
          if (v53 == v54)
          {
            return 1;
          }

          v55 = v54;
          do
          {
            *&v66 = a2;
            v56 = *(std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1432, a2) + 56);
            v57 = quasar::PTree::getString((v53 + 24));
            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v56, v57);
            v53 += 88;
            result = 1;
          }

          while (v53 != v55);
        }
      }

      else
      {
        *&v66 = a2;
        v44 = std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1408, a2);
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::clear(*(v44 + 56));
        v45 = quasar::PTree::begin(a3);
        v46 = a3;
        v47 = v45;
        v48 = quasar::PTree::end(v46);
        if (v47 == v48)
        {
          return 1;
        }

        v49 = v48;
        do
        {
          *&v66 = a2;
          v50 = *(std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1408, a2) + 56);
          v51 = quasar::PTree::getString((v47 + 24));
          std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(&v66, v47, v51);
          std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::string>>(v50, &v66);
          if (SHIBYTE(v68) < 0)
          {
            operator delete(*(&v67 + 1));
          }

          if (SBYTE7(v67) < 0)
          {
            operator delete(v66);
          }

          v47 = (v47 + 88);
          result = 1;
        }

        while (v47 != v49);
      }
    }

    else
    {
      *&v66 = a2;
      v34 = *(std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1384, a2) + 56);
      v36 = *v34;
      for (i = v34[1]; i != v36; std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v34, i))
      {
        i -= 48;
      }

      v34[1] = v36;
      v37 = quasar::PTree::begin(a3);
      v38 = a3;
      v39 = v37;
      v40 = quasar::PTree::end(v38);
      if (v39 == v40)
      {
        return 1;
      }

      v41 = v40;
      do
      {
        *&v66 = a2;
        v42 = *(std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1384, a2) + 56);
        v43 = quasar::PTree::getString((v39 + 24));
        std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(&v66, v39, v43);
        std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v42, &v66);
        if (SHIBYTE(v68) < 0)
        {
          operator delete(*(&v67 + 1));
        }

        if (SBYTE7(v67) < 0)
        {
          operator delete(v66);
        }

        v39 = (v39 + 88);
        result = 1;
      }

      while (v39 != v41);
    }
  }

  else
  {
    *&v66 = a2;
    v28 = std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1360, a2);
    std::vector<std::string>::clear[abi:ne200100](*(v28 + 56));
    v29 = quasar::PTree::begin(a3);
    v30 = quasar::PTree::end(a3);
    if (v29 == v30)
    {
      return 1;
    }

    v31 = v30;
    do
    {
      *&v66 = a2;
      v32 = *(std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1360, a2) + 56);
      v33 = quasar::PTree::getString((v29 + 24));
      std::vector<std::string>::push_back[abi:ne200100](v32, v33);
      v29 += 88;
      result = 1;
    }

    while (v29 != v31);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::map<std::string,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::set<std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::set<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<std::string>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t kaldi::OnlineSpliceInput::Compute(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  kaldi::MatrixBase<float>::NumRows(*a2);
  v5 = kaldi::MatrixBase<float>::NumRows(v4);
  kaldi::Matrix<float>::Matrix(v42, v5, *(a1 + 16), 1, 0);
  *a2 = v42;
  v6 = *(a1 + 8);
  v7 = a2[1];
  v39 = *a2;
  v40 = v7;
  v41 = a2[2];
  v8 = (**v6)();
  if (((kaldi::MatrixBase<float>::NumRows(v42) == 0) & v8) == 1)
  {
    kaldi::Matrix<float>::Resize(v4, 0, 0, 0, 0);
    v8 = 1;
  }

  else if ((kaldi::MatrixBase<float>::NumRows(v42) != 0) | v8 & 1 || kaldi::MatrixBase<float>::NumRows(a1 + 32))
  {
    if (!kaldi::MatrixBase<float>::NumRows(a1 + 32) && kaldi::MatrixBase<float>::NumRows(v42) >= 1)
    {
      v24 = *(a1 + 20);
      if (v24 >= 1)
      {
        kaldi::Matrix<float>::Resize(a1 + 32, v24, *(a1 + 16), 1, 0);
        if (*(a1 + 20) >= 1)
        {
          v25 = 0;
          do
          {
            v26 = *(a1 + 32);
            v27 = *(a1 + 48);
            v28 = kaldi::MatrixBase<float>::NumCols(a1 + 32);
            *&v40 = 0;
            *&v39 = v26 + 4 * v27 * v25;
            *(&v39 + 1) = v28;
            v29 = v42[0];
            v30 = kaldi::MatrixBase<float>::NumCols(v42);
            v37 = 0;
            v38 = 0;
            v35 = v29;
            v36 = v30;
            kaldi::VectorBase<float>::CopyFromVec(&v39, &v35);
            ++v25;
          }

          while (v25 < *(a1 + 20));
        }
      }
    }

    kaldi::Matrix<float>::Matrix(&v39);
    v10 = *(a1 + 24);
    if (v10 < 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8;
    }

    if ((v11 & 1) == 0)
    {
      kaldi::Matrix<float>::Resize(&v39, v10, *(a1 + 16), 1, 0);
      LODWORD(v10) = *(a1 + 24);
      if (v10 >= 1)
      {
        v12 = 0;
        do
        {
          if (kaldi::MatrixBase<float>::NumRows(v42) < 1)
          {
            v20 = v39;
            v21 = v40;
            v22 = kaldi::MatrixBase<float>::NumCols(&v39);
            v37 = 0;
            v38 = 0;
            v35 = (v20 + 4 * v21 * v12);
            v36 = v22;
            v16 = kaldi::MatrixBase<float>::NumRows(a1 + 32);
            v17 = *(a1 + 32);
            v18 = *(a1 + 48);
            v19 = kaldi::MatrixBase<float>::NumCols(a1 + 32);
          }

          else
          {
            v13 = v39;
            v14 = v40;
            v15 = kaldi::MatrixBase<float>::NumCols(&v39);
            v37 = 0;
            v38 = 0;
            v35 = (v13 + 4 * v14 * v12);
            v36 = v15;
            v16 = kaldi::MatrixBase<float>::NumRows(v42);
            v17 = v42[0];
            v18 = v43;
            v19 = kaldi::MatrixBase<float>::NumCols(v42);
          }

          v33 = 0;
          v34 = 0;
          v31 = (v17 + 4 * v18 * (v16 - 1));
          v32 = v19;
          v9 = kaldi::VectorBase<float>::CopyFromVec(&v35, &v31);
          ++v12;
          LODWORD(v10) = *(a1 + 24);
        }

        while (v12 < v10);
      }
    }

    kaldi::OnlineSpliceInput::SpliceFrames(v9, a1 + 32, v42, &v39, *(a1 + 20) + v10 + 1, v4);
    kaldi::OnlineSpliceInput::ComputeNextRemainder(a1, v42);
    kaldi::Matrix<float>::~Matrix(&v39);
  }

  else
  {
    kaldi::Matrix<float>::Resize(v4, 0, 0, 0, 0);
    v8 = 0;
  }

  kaldi::Matrix<float>::~Matrix(v42);
  return v8;
}

void sub_1B50433F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  kaldi::Matrix<float>::~Matrix(va);
  kaldi::Matrix<float>::~Matrix(va1);
  _Unwind_Resume(a1);
}

void std::unique_lock<std::mutex>::unlock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8))
  {
    std::mutex::unlock(*a1);
    *(a1 + 8) = 0;
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
  }
}

uint64_t kaldi::Fbank::GetMelBanks(kaldi::Fbank *this, float a2)
{
  v3 = *(this + 17);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (this + 136);
  do
  {
    v5 = v3[8];
    if (v5 >= a2)
    {
      v4 = v3;
    }

    v3 = *&v3[2 * (v5 < a2)];
  }

  while (v3);
  if (v4 == (this + 136) || v4[8] > a2)
  {
LABEL_8:
    operator new();
  }

  return *(v4 + 5);
}

uint64_t std::__tree<std::__value_type<std::string,quasar::SystemConfig::Version>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::SystemConfig::Version>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::SystemConfig::Version>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,quasar::SystemConfig::Version>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::SystemConfig::Version>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::SystemConfig::Version>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>();
  }

  return result;
}

void sub_1B50436E8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN6quasar12SystemConfig7VersionEEC2B8ne200100IJOS6_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSF_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSO_IJXspT2_EEEE(uint64_t a1, __int128 **a2)
{
  v3 = *a2;
  v4 = **a2;
  *(a1 + 16) = *(*a2 + 2);
  *a1 = v4;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  quasar::SystemConfig::Version::Version((a1 + 24));
  return a1;
}

void sub_1B5043748(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double quasar::SystemConfig::Version::Version(quasar::SystemConfig::Version *this)
{
  result = NAN;
  *this = -1;
  return result;
}

uint64_t kaldi::NumFrames(int a1, uint64_t a2)
{
  v2 = *(a2 + 52);
  if (v2 <= 0.0)
  {
    v2 = *a2;
  }

  v3 = v2 * 0.001;
  v4 = (v3 * *(a2 + 4));
  v5 = (v3 * *(a2 + 8));
  v6 = ((a1 / v4) + 0.5);
  v7 = __OFSUB__(a1, v5);
  v8 = a1 - v5;
  v9 = v8 / v4;
  if (v8 < 0 != v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 + 1;
  }

  if (*(a2 + 49) == 1)
  {
    return v10;
  }

  else
  {
    return v6;
  }
}

double kaldi::Timer::GetSeconds(kaldi::Timer *this, clockid_t a2)
{
  if (clock_gettime(this, &__tp) && kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Could not read clock ", 21);
    v4 = MEMORY[0x1B8C84C00](v3, this);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ": ", 2);
    v6 = __error();
    v7 = strerror(*v6);
    v8 = strlen(v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v10);
  }

  return __tp.tv_nsec / 1000000000.0 + __tp.tv_sec;
}

BOOL quasar::RecogAudioBuffer::Read(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 264);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 256);
      if (v9)
      {
        std::mutex::lock((v9 + 24));
        if (*(a1 + 160) < 1)
        {
          while ((*(v9 + 275) & 1) == 0)
          {
            std::mutex::lock((a1 + 24));
            v11 = *(a1 + 216);
            std::mutex::unlock((a1 + 24));
            if (quasar::RecogAudioBuffer::audioAheadOfBuffer(v9, v11))
            {
              goto LABEL_21;
            }

            std::condition_variable_any::wait<std::mutex>(v9 + 88, (v9 + 24));
          }

          if (quasar::gLogLevel >= 5)
          {
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v57 = 0u;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v49);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "Leader is waiting for follower, not waiting", 43);
LABEL_19:
            quasar::QuasarDebugMessage::~QuasarDebugMessage(&v49);
          }
        }

        else
        {
          v48 = std::chrono::steady_clock::now().__d_.__rep_ + 1000000 * *(a1 + 160);
          do
          {
            if (*(v9 + 275) == 1)
            {
              if (quasar::gLogLevel < 5)
              {
                goto LABEL_21;
              }

              goto LABEL_18;
            }

            std::mutex::lock((a1 + 24));
            v10 = *(a1 + 216);
            std::mutex::unlock((a1 + 24));
            if (quasar::RecogAudioBuffer::audioAheadOfBuffer(v9, v10))
            {
              goto LABEL_21;
            }
          }

          while (!std::condition_variable_any::wait_until<std::mutex,std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(v9 + 88, (v9 + 24), &v48));
          if (*(v9 + 275) == 1)
          {
            if (quasar::gLogLevel < 5)
            {
              goto LABEL_21;
            }

LABEL_18:
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v57 = 0u;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v49);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "Leader is waiting for follower, not waiting", 43);
            goto LABEL_19;
          }

          std::mutex::lock((a1 + 24));
          v12 = *(a1 + 216);
          std::mutex::unlock((a1 + 24));
          quasar::RecogAudioBuffer::audioAheadOfBuffer(v9, v12);
        }

LABEL_21:
        std::mutex::unlock((v9 + 24));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  if (!*(a2 + 8))
  {
    kaldi::Vector<float>::Resize(a2, 1, 0);
  }

  std::mutex::lock((a1 + 24));
  if (*(a1 + 216) >= *(a1 + 220) && *(a1 + 273) == 1)
  {
    kaldi::Vector<float>::Resize(a2, 0, 0);
    if (quasar::gLogLevel >= 5)
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v57 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v49);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "No audio left, and endOfAudio set. Returning false.", 51);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v49);
    }

    quasar::RecogAudioBuffer::callAddAudioCompletion(a1, 1);
    v14 = 0;
  }

  else
  {
    LODWORD(v15) = *(a2 + 8);
    if (v15 >= a3)
    {
      v16 = a3;
    }

    else
    {
      v16 = *(a2 + 8);
    }

    if (a3 <= 0)
    {
      v15 = v15;
    }

    else
    {
      v15 = v16;
    }

    v17 = *(a1 + 156);
    v18 = *(*(a1 + 224) + 32);
    if (v18 >= v15 || v18 < v17 || v17 <= 0)
    {
      v21 = v15;
    }

    else
    {
      v21 = *(*(a1 + 224) + 32);
    }

    v22 = 0.0;
    if (v18 >= v21 || (*(a1 + 273) & 1) != 0)
    {
      v23 = 0;
    }

    else
    {
      v24 = *(a1 + 192);
      v22 = kaldi::Timer::GetSeconds(5, v13) - *v24;
      v23 = 1;
    }

    if (!*(a1 + 160) && quasar::gLogLevel >= 5)
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v57 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v49);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "Waiting for more audio or endOfAudio", 36);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v49);
    }

    *&v49 = quasar::RecogAudioBuffer::audioAvailableOrAudioEnd;
    *(&v49 + 1) = 0;
    *&v50 = a1;
    DWORD2(v50) = v21;
    if ((quasar::RecogAudioBuffer::waitWithReadTimeOut<std::condition_variable_any,std::__bind<BOOL (quasar::RecogAudioBuffer::*)(int),quasar::RecogAudioBuffer*,unsigned int &>>(a1, a1 + 88, (a1 + 24), &v49) & 1) == 0)
    {
      *(a1 + 273) = 1;
    }

    v25 = *(*(a1 + 224) + 32);
    v26 = *(a2 + 8);
    if (v26 >= v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = v26;
    }

    kaldi::Vector<float>::Resize(a2, v27, 0);
    if (v27)
    {
      for (i = 0; i != v27; ++i)
      {
        v30 = *(a1 + 224);
        v31 = v30[1];
        v32 = v30[2];
        if (v31 - v32 <= 0)
        {
          v33 = -((v31 - *v30) >> 2);
        }

        else
        {
          v33 = 0;
        }

        *(*a2 + 4 * i) = *(v32 + 4 * v33);
        v34 = v32 + 4;
        v30[2] = v34;
        if (v34 == v31)
        {
          v30[2] = *v30;
        }

        --v30[4];
      }

      if (quasar::gLogLevel > 4)
      {
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v57 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v49);
        v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "Copied ", 7);
        v36 = MEMORY[0x1B8C84C10](v35, v27);
        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " samples (", 10);
        v38 = MEMORY[0x1B8C84C10](v37, *(a1 + 216));
        v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "-", 1);
        v40 = MEMORY[0x1B8C84C10](v39, (*(a1 + 216) + v27));
        v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ") into data. ringSize: ", 23);
        v42 = MEMORY[0x1B8C84C30](v41, *(*(a1 + 224) + 32));
        v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " completion: ", 13);
        MEMORY[0x1B8C84BD0](v43, *(a1 + 360) != 0);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v49);
      }

      *(a1 + 216) += v27;
    }

    if (v23)
    {
      v44 = *(a1 + 192);
      *(a1 + 312) = *(a1 + 312) + kaldi::Timer::GetSeconds(5, v28) - *v44 - v22;
    }

    v45 = *(a1 + 156);
    if (v45 < 1 || *(*(a1 + 224) + 32) < v45)
    {
      quasar::RecogAudioBuffer::callAddAudioCompletion(a1, 1);
    }

    v14 = *(a1 + 273) != 1 || *(a1 + 216) < *(a1 + 220);
    v46 = *(a1 + 136);
    std::mutex::lock(v46);
    std::mutex::unlock(v46);
    std::condition_variable::notify_all((a1 + 88));
  }

  std::mutex::unlock((a1 + 24));
  return v14;
}

void sub_1B5043F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::QuasarDebugMessage::~QuasarDebugMessage(va);
  std::mutex::unlock((v4 + 24));
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

uint64_t quasar::RecogAudioBuffer::waitWithReadTimeOut<std::condition_variable_any,std::__bind<BOOL (quasar::RecogAudioBuffer::*)(int),quasar::RecogAudioBuffer*,unsigned int &>>(uint64_t a1, uint64_t a2, std::mutex *a3, uint64_t a4)
{
  v6 = *a4;
  v7 = *(a4 + 8);
  v8 = *(a4 + 16);
  v9 = *(a4 + 24);
  if (*(a1 + 160) < 1)
  {
    v12 = (v8 + (v7 >> 1));
    if (v7)
    {
      goto LABEL_12;
    }

LABEL_11:
    for (i = v6(v12, v9); (i & 1) == 0; i = (*(*v12 + v6))(v12, v9))
    {
      std::condition_variable_any::wait<std::mutex>(a2, a3);
      if ((v7 & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_12:
      ;
    }
  }

  else
  {
    v15 = std::chrono::steady_clock::now().__d_.__rep_ + 1000000 * *(a1 + 160);
    v10 = (v8 + (v7 >> 1));
    while (1)
    {
      v11 = (v7 & 1) != 0 ? (*(*v10 + v6))(v10, v9) : v6(v10, v9);
      if (v11)
      {
        break;
      }

      if (std::condition_variable_any::wait_until<std::mutex,std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(a2, a3, &v15))
      {
        if (v7)
        {
          v6 = *(*v10 + v6);
        }

        return v6(v10, v9);
      }
    }
  }

  return 1;
}

uint64_t quasar::RecogAudioBuffer::audioAvailableOrAudioEnd(quasar::RecogAudioBuffer *this, int a2)
{
  if (*(*(this + 28) + 32) >= a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(this + 273);
  }

  return v2 & 1;
}

void std::condition_variable_any::wait<std::mutex>(uint64_t a1, std::mutex *a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6.__m_ = v4;
  v6.__owns_ = 1;
  std::mutex::lock(v4);
  std::mutex::unlock(a2);
  std::condition_variable::wait(a1, &v6);
  std::unique_lock<std::mutex>::unlock[abi:ne200100](&v6);
  std::mutex::lock(a2);
  if (v6.__owns_)
  {
    std::mutex::unlock(v6.__m_);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1B50441F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

float quasar::RecogAudioBuffer::audioLeftSeconds(quasar::RecogAudioBuffer *this)
{
  std::mutex::lock((this + 24));
  LODWORD(v2) = *(this + 52);
  v3 = *(*(this + 28) + 32) / v2;
  std::mutex::unlock((this + 24));
  return v3;
}

void kaldi::OnlineFeInput<kaldi::Fbank>::ExtractFeatures(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t a5, uint64_t a6)
{
  v9 = a2;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v11 = *(a1 + 88);
  if (v11)
  {
    kaldi::Resampler::Resample(v11, a2, &v23, a3);
    if (v24 > 0)
    {
      v9 = &v23;
    }
  }

  v12 = *(a1 + 72);
  v13 = *(v9 + 2);
  v21 = 0;
  v22 = 0;
  v20 = 0;
  kaldi::Vector<float>::Resize(&v20, (v13 + v12), 1);
  v14 = *(a1 + 72);
  v19 = 0;
  v17 = v20;
  v18 = v14;
  kaldi::VectorBase<float>::CopyFromVec(&v17, (a1 + 64));
  v15 = *(a1 + 72);
  v16 = *(v9 + 2);
  v19 = 0;
  v17 = &v20[4 * v15];
  v18 = v16;
  kaldi::VectorBase<float>::CopyFromVec(&v17, v9);
  if (v21 >= *(a1 + 24) || a4)
  {
    kaldi::Fbank::Compute(*(a1 + 16), &v20, a5, (a1 + 64), 1.0, a6, a4);
  }

  else
  {
    kaldi::Matrix<float>::Resize(a5, 0, 0, 0, 0);
    kaldi::Vector<float>::Resize((a1 + 64), v21, 1);
    kaldi::VectorBase<float>::CopyFromVec(a1 + 64, &v20);
  }

  kaldi::Vector<float>::Destroy(&v20);
  kaldi::Vector<float>::Destroy(&v23);
}

void sub_1B50443C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void kaldi::Fbank::ComputeInternal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, int a6)
{
  v10 = kaldi::NumFrames(*(a2 + 8), a1 + 24);
  if (v10)
  {
    v11 = v10;
    kaldi::Matrix<float>::Resize(a4, v10, *(a1 + 80) + *(a1 + 104), 0, 0);
    if (a5)
    {
      kaldi::ExtractWaveformRemainder(a2, (a1 + 24), a5);
    }

    *v47 = 0;
    v48 = 0;
    v49 = 0;
    memset(v46, 0, sizeof(v46));
    memset(&v45, 0, sizeof(v45));
    std::vector<float>::vector[abi:ne200100](__p, v11);
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = 0;
      LOBYTE(v14) = *(a1 + 104);
      do
      {
        v43 = 1.0;
        if ((v14 & 1) != 0 || *(a1 + 115) == 1) && (*(a1 + 112))
        {
          v15 = &v43;
        }

        else
        {
          v15 = 0;
        }

        kaldi::ExtractWindow(a2, v13, a1 + 24, (a1 + 152), v47, v15);
        if (((*(a1 + 104) & 1) != 0 || *(a1 + 115) == 1) && (*(a1 + 112) & 1) == 0)
        {
          kaldi::VecVec<float>();
          if (v16 < 1.1755e-38)
          {
            v16 = 1.1755e-38;
          }

          v43 = v16;
        }

        v17 = v43;
        if (*(a1 + 115) == 1)
        {
          *(__p[0] + v13) = v43;
        }

        v18 = logf(v17);
        if ((LODWORD(v18) & 0x7FFFFFFFu) >= 0x7F800000)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&v39);
          kaldi::VectorBase<float>::Write(v47, &v39, 0);
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v50);
          v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "Non-finite log energy found for frame ", 38);
          v29 = MEMORY[0x1B8C84C00](v28, v13);
          v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ". Waveform is: ", 15);
          std::stringbuf::str();
          if ((v38 & 0x80u) == 0)
          {
            v31 = v37;
          }

          else
          {
            v31 = v37[0];
          }

          if ((v38 & 0x80u) == 0)
          {
            v32 = v38;
          }

          else
          {
            v32 = v37[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, v32);
          if (v38 < 0)
          {
            operator delete(v37[0]);
          }

          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v50);
        }

        v19 = *(a1 + 176);
        if (v19)
        {
          kaldi::SplitRadixRealFft<float>::Compute(v19, *v47, 1, &v45);
        }

        else
        {
          kaldi::RealFft<float>(v47, 1);
        }

        kaldi::ComputePowerSpectrum(v47);
        v52 = 0;
        v53 = 0;
        v50 = *v47;
        v51 = v48 / 2 + 1;
        kaldi::MelBanks::Compute(a3, &v50, v46);
        if (*(a1 + 114) == 1)
        {
          kaldi::VectorBase<float>::ApplyFloor(v46, 1.1755e-38);
          kaldi::VectorBase<float>::ApplyLog(v46);
        }

        v20 = *a4;
        v21 = *(a4 + 16);
        kaldi::MatrixBase<float>::NumCols(a4);
        v22 = (v20 + 4 * v21 * v13);
        v23 = *(a1 + 104);
        v24 = *(a1 + 80);
        v41 = 0;
        v42 = 0;
        v39 = &v22[v23];
        v40 = v24;
        kaldi::VectorBase<float>::CopyFromVec(&v39, v46);
        v14 = *(a1 + 104);
        if (v14 == 1)
        {
          if (*(a1 + 108) > 0.0 && v18 < *(a1 + 120))
          {
            v18 = *(a1 + 120);
          }

          *v22 = v18;
          if ((*(a1 + 113) & 1) == 1)
          {
            v25 = *(a1 + 80);
            if (v25 >= 1)
            {
              v26 = (v20 + 4 * v21 * v12 + 4);
              v27 = *(a1 + 80);
              do
              {
                *(v26 - 1) = *v26;
                ++v26;
                --v27;
              }

              while (v27);
            }

            v22[v25] = v18;
          }
        }

        ++v13;
        ++v12;
      }

      while (v13 != v11);
    }

    if (*(a1 + 115))
    {
      kaldi::SnrTracker::add_frame_energy(*a1, __p);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v45.__begin_)
    {
      v45.__end_ = v45.__begin_;
      operator delete(v45.__begin_);
    }

    kaldi::Vector<float>::Destroy(v46);
    kaldi::Vector<float>::Destroy(v47);
  }

  else
  {
    if (!a6)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v50);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "No frames fit in file (#samples is ", 35);
      v34 = MEMORY[0x1B8C84C00](v33, *(a2 + 8));
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v34, ")");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v50);
    }

    kaldi::Matrix<float>::Resize(a4, 0, 0, 0, 0);
  }
}

void sub_1B504488C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  std::ostringstream::~ostringstream(&a14, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](&a28);
  JUMPOUT(0x1B50448D0);
}

void sub_1B50448CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, char a57)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a51)
  {
    operator delete(a51);
  }

  kaldi::Vector<float>::Destroy(&a54);
  kaldi::Vector<float>::Destroy(&a57);
  _Unwind_Resume(a1);
}

void kaldi::Fbank::Compute(kaldi::Fbank *a1, uint64_t a2, uint64_t a3, void **a4, float a5, uint64_t a6, int a7)
{
  MelBanks = kaldi::Fbank::GetMelBanks(a1, a5);

  kaldi::Fbank::ComputeInternal(a1, a2, MelBanks, a3, a4, a7);
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B50449D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::FrameExtractionOptions::PaddedWindowSize(kaldi::FrameExtractionOptions *this)
{
  v1 = *(this + 13);
  if (*(this + 48) == 1)
  {
    if (v1 <= 0.0)
    {
      v1 = *this;
    }

    return kaldi::RoundUpToNearestPowerOfTwo((v1 * 0.001 * *(this + 2)));
  }

  else
  {
    if (v1 <= 0.0)
    {
      v1 = *this;
    }

    return (v1 * 0.001 * *(this + 2));
  }
}

uint64_t kaldi::RoundUpToNearestPowerOfTwo(kaldi *this)
{
  v1 = (this - 1) | ((this - 1) >> 1) | (((this - 1) | ((this - 1) >> 1)) >> 2);
  v2 = v1 | (v1 >> 4) | ((v1 | (v1 >> 4)) >> 8);
  return (v2 | HIWORD(v2)) + 1;
}

uint64_t kaldi::Rand(unsigned int *a1)
{
  if (a1)
  {

    return rand_r(a1);
  }

  else
  {
    pthread_mutex_lock(&kaldi::_RandMutex);
    if ((kaldi::_SrandCalled & 1) == 0)
    {
      kaldi::_RandSeed = 1;
      srand(1u);
      kaldi::_SrandCalled = 1;
    }

    v3 = rand_r(&kaldi::_RandSeed);
    pthread_mutex_unlock(&kaldi::_RandMutex);
    return v3;
  }
}

uint64_t kaldi::VectorBase<float>::Add(uint64_t result, float a2)
{
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = *result;
    do
    {
      *v3 = *v3 + a2;
      ++v3;
      --v2;
    }

    while (v2);
  }

  return result;
}

float kaldi::VectorBase<float>::MulElements(uint64_t a1, float **a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = *a2;
    v4 = *a1;
    do
    {
      v5 = *v3++;
      result = v5 * *v4;
      *v4++ = result;
      --v2;
    }

    while (v2);
  }

  return result;
}

void quasar::QuasarDebugMessage::~QuasarDebugMessage(std::locale *this)
{
  v2 = quasar::QuasarDebugMessage::logger;
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

void EARLogger::QuasarOSLogger_DEBUG(uint64_t *a1, os_log_type_t a2, void *a3, const char *a4)
{
  if (*(a1 + 23) >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  EARLogger::QuasarOSLog(2, a2, a3, a4, v4);
}

void kaldi::ExtractWaveformRemainder(uint64_t a1, float *a2, void **a3)
{
  v5 = a2[13];
  if (v5 <= 0.0)
  {
    v5 = *a2;
  }

  v7 = *(a1 + 8);
  v6 = a2[1];
  v8 = kaldi::NumFrames(v7, a2) * (v5 * 0.001 * v6);
  kaldi::Vector<float>::Resize(a3, (v7 - v8), 0);
  if (v7 != v8)
  {
    v10 = 0;
    v11 = 0;
    v9 = *a1 + 4 * v8;
    v10 = (v7 - v8);
    kaldi::VectorBase<float>::CopyFromVec(a3, &v9);
  }
}

void kaldi::Dither(uint64_t a1, float a2)
{
  if (*(a1 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = (kaldi::Rand(0) + 1.0) / 2147483650.0;
      v6 = sqrtf(logf(v5) * -2.0);
      v7 = (kaldi::Rand(0) + 1.0) / 2147483650.0;
      v8 = v7 * 6.28318531;
      v9 = cosf(v8);
      v10 = *(a1 + 8);
      *(*a1 + 4 * v4) = *(*a1 + 4 * v4) + ((v6 * v9) * a2);
      ++v4;
    }

    while (v4 < v10);
  }
}

void kaldi::ExtractWindow(uint64_t *a1, int a2, uint64_t a3, float **a4, void **a5, float *a6)
{
  v12 = *(a3 + 52);
  if (v12 <= 0.0)
  {
    v12 = *a3;
  }

  v13 = v12 * 0.001;
  v14 = (v13 * *(a3 + 4));
  v15 = (v13 * *(a3 + 8));
  memset(v47, 0, sizeof(v47));
  kaldi::Vector<float>::Resize(v47, v15, 0);
  if (*(a3 + 49) == 1)
  {
    v45 = 0;
    v46 = 0;
    v44 = (*a1 + 4 * (v14 * a2));
    LODWORD(v45) = v15;
    kaldi::VectorBase<float>::CopyFromVec(v47, &v44);
  }

  else
  {
    v16 = ((a2 + 0.5) * v14) - v15 / 2;
    v17 = v16 + v15;
    v18 = v16 & ~(v16 >> 31);
    v19 = *(a1 + 2);
    if (v19 >= v16 + v15)
    {
      v19 = v16 + v15;
    }

    v46 = 0;
    v43 = 0;
    v44 = (v47[0] + 4 * (v18 - v16));
    v45 = v19 - v18;
    v41 = *a1 + 4 * v18;
    v42 = v45;
    kaldi::VectorBase<float>::CopyFromVec(&v44, &v41);
    v20 = *(a1 + 2);
    if (v16 < 0)
    {
      v21 = 0;
      v22 = *a1;
      v23 = v47[0];
      do
      {
        v23[v21] = *(v22 + 4 * ((v16 + v21) / v20 * v20 - (v16 + v21)));
      }

      while (v16 + 1 + v21++ != 0);
    }

    if (v20 < v17)
    {
      v25 = 0;
      v26 = *a1;
      v27 = v47[0];
      v28 = v20;
      v29 = v20 - v16;
      do
      {
        v27[v29] = *(v26 + 4 * (v20 + ~(v25 % v20)));
        ++v28;
        ++v25;
        ++v29;
      }

      while (v28 < v17);
    }
  }

  v30 = kaldi::FrameExtractionOptions::PaddedWindowSize(a3);
  if (*(a5 + 2) != v30)
  {
    kaldi::Vector<float>::Resize(a5, v30, 0);
  }

  v45 = 0;
  v46 = 0;
  v44 = *a5;
  LODWORD(v45) = v15;
  kaldi::VectorBase<float>::CopyFromVec(&v44, v47);
  v31 = *(a3 + 12);
  if (v31 != 0.0)
  {
    kaldi::Dither(&v44, v31);
  }

  if (*(a3 + 20) == 1)
  {
    v32 = kaldi::VectorBase<float>::Sum(&v44);
    kaldi::VectorBase<float>::Add(&v44, -*&v32 / v15);
  }

  if (a6)
  {
    kaldi::VecVec<float>();
    if (v33 < 1.1755e-38)
    {
      v33 = 1.1755e-38;
    }

    *a6 = v33;
  }

  v34 = *(a3 + 16);
  if (v34 != 0.0)
  {
    v35 = v44;
    v36 = -v34;
    if (v45 >= 2)
    {
      v37 = v45 + 1;
      v38 = &v44[v45 - 1];
      v39 = v38;
      do
      {
        v40 = *--v39;
        *v38 = *v38 + (v36 * v40);
        --v37;
        v38 = v39;
      }

      while (v37 > 2);
    }

    *v35 = *v35 + (v36 * *v35);
  }

  kaldi::VectorBase<float>::MulElements(&v44, a4);
  if (v30 != v15)
  {
    v42 = 0;
    v43 = 0;
    v41 = *a5 + 4 * v15;
    v42 = (v30 - v15);
    kaldi::VectorBase<float>::SetZero(&v41);
  }

  kaldi::Vector<float>::Destroy(v47);
}

void sub_1B5045180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::OnlineFeInput<kaldi::Fbank>::Compute(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = kaldi::MatrixBase<float>::NumRows(*a2);
  if (v5 <= 0)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "No feature vectors requested?!", 30);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v16);
    }

    return 1;
  }

  else
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 28);
    v8 = (v6 + v7 * (v5 - 1));
    v9 = *(a1 + 36);
    v10 = v6 + (v9 - 1) * v7;
    if (v9 <= 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    if (v8 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v8;
    }

    memset(v16, 0, 24);
    kaldi::Vector<float>::Resize(v16, v8, 1);
    v13 = (*(**(a1 + 8) + 8))(*(a1 + 8), v16, v12);
    v14 = (*(**(a1 + 8) + 16))(*(a1 + 8));
    kaldi::OnlineFeInput<kaldi::Fbank>::ExtractFeatures(a1, v16, v14, v13 ^ 1, v4, a2[2]);
    kaldi::Vector<float>::Destroy(v16);
  }

  return v13;
}

double kaldi::VectorBase<float>::Sum(uint64_t a1)
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
  *&result = result;
  return result;
}

void quasar::QuasarInfoMessage::~QuasarInfoMessage(std::locale *this)
{
  v2 = quasar::QuasarInfoMessage::logger;
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

void std::vector<int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::vector<int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v2);
  }
}

uint64_t kaldi::SplitRadixComplexFft<float>::Compute(uint64_t a1, float *a2, float *a3, int a4)
{
  if (a4)
  {
    v5 = a3;
  }

  else
  {
    v5 = a2;
  }

  if (a4)
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  result = kaldi::SplitRadixComplexFft<float>::ComputeRecursive(a1, v6, v5, *(a1 + 28));
  v8 = *(a1 + 28);
  if (v8 >= 2)
  {
    kaldi::SplitRadixComplexFft<float>::BitReversePermute(a1, v6, v8);
    v9 = *(a1 + 28);

    return kaldi::SplitRadixComplexFft<float>::BitReversePermute(a1, v5, v9);
  }

  return result;
}

int *kaldi::Matrix<float>::operator=(int *a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  if (a1[3] == v4)
  {
    v5 = *(a2 + 8);
    if (a1[2] == v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = *(a2 + 8);
  }

  kaldi::Matrix<float>::Resize(a1, v4, v5, 1, 0);
LABEL_6:
  kaldi::MatrixBase<float>::CopyFromMat<float>(a1, a2, 111);
  return a1;
}

void kaldi::OnlineSpliceInput::ComputeNextRemainder(_DWORD *a1, uint64_t a2)
{
  v4 = a1[6] + a1[5];
  v5 = kaldi::MatrixBase<float>::NumRows((a1 + 8));
  v6 = kaldi::MatrixBase<float>::NumRows(a2) + v5;
  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    kaldi::Matrix<float>::Matrix(v25, v7, a1[4], 0, 0);
    v17 = kaldi::MatrixBase<float>::NumRows((a1 + 8));
    v8 = kaldi::MatrixBase<float>::NumRows(a2);
    if (v7 >= 1)
    {
      v9 = 0;
      v10 = v17 - v7 + v8;
      v11 = v8 - v7;
      do
      {
        v23 = 0;
        v24 = 0;
        v22 = v25[0] + 4 * v26 * v9;
        LODWORD(v23) = kaldi::MatrixBase<float>::NumCols(v25);
        if (v10 >= v17)
        {
          v15 = *a2;
          v16 = *(a2 + 16);
          v14 = kaldi::MatrixBase<float>::NumCols(a2);
          v20 = 0;
          v21 = 0;
          v18 = (v15 + 4 * v16 * v11);
        }

        else
        {
          v12 = *(a1 + 4);
          v13 = a1[12];
          v14 = kaldi::MatrixBase<float>::NumCols((a1 + 8));
          v20 = 0;
          v21 = 0;
          v18 = (v12 + 4 * v13 * v10);
        }

        v19 = v14;
        kaldi::VectorBase<float>::CopyFromVec(&v22, &v18);
        ++v9;
        ++v10;
        ++v11;
        LODWORD(v7) = v7 - 1;
      }

      while (v7);
    }

    kaldi::Matrix<float>::operator=(a1 + 8, v25);
    kaldi::Matrix<float>::~Matrix(v25);
  }

  else
  {

    kaldi::Matrix<float>::Resize((a1 + 8), 0, 0, 0, 0);
  }
}

void sub_1B5045908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

float kaldi::SplitRadixComplexFft<float>::Compute(uint64_t a1, _DWORD *a2, int a3, std::vector<unsigned int> *this)
{
  begin = this->__begin_;
  v8 = *(a1 + 24);
  if (v8 != this->__end_ - this->__begin_)
  {
    std::vector<int>::resize(this, v8);
    begin = this->__begin_;
    v8 = *(a1 + 24);
  }

  if (v8 >= 1)
  {
    v10 = a2 + 1;
    v11 = a2;
    v12 = begin;
    v13 = v8;
    do
    {
      *v11++ = *(v10 - 1);
      v14 = *v10;
      v10 += 2;
      *v12++ = v14;
      --v13;
    }

    while (v13);
  }

  memcpy(&a2[v8], begin, 4 * v8);
  kaldi::SplitRadixComplexFft<float>::Compute(a1, a2, &a2[*(a1 + 24)], a3);
  memcpy(begin, &a2[*(a1 + 24)], 4 * *(a1 + 24));
  v15 = *(a1 + 24);
  if (v15 > 1)
  {
    v16 = &a2[2 * v15 - 1];
    do
    {
      *(v16 - 1) = a2[v15 - 1];
      *v16 = begin[v15 - 1];
      v16 -= 2;
    }

    while (v15-- > 2);
  }

  result = *begin;
  a2[1] = *begin;
  return result;
}

void kaldi::OnlineSpliceInput::SpliceFrames(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v11 = kaldi::MatrixBase<float>::NumRows(a2);
  v12 = kaldi::MatrixBase<float>::NumRows(a3) + v11;
  v13 = kaldi::MatrixBase<float>::NumRows(a4) - a5 + v12 + 1;
  v14 = kaldi::MatrixBase<float>::NumCols(a2);
  v15 = kaldi::MatrixBase<float>::NumCols(a3);
  v39 = a4;
  v16 = kaldi::MatrixBase<float>::NumCols(a4);
  if (v15 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  if (v14 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v14;
  }

  if (v13 <= 0)
  {

    kaldi::Matrix<float>::Resize(a6, 0, 0, 0, 0);
  }

  else
  {
    kaldi::Matrix<float>::Resize(a6, v13, v18 * a5, 0, 0);
    v42 = v11;
    v43 = v18;
    v40 = v12;
    v41 = 4 * v18;
    v38 = -v12;
    v19 = 0;
    v20 = v11;
    v21 = 0;
    v34 = v13;
    v35 = a5;
    v37 = -v20;
    do
    {
      v22 = 0;
      v23 = v35;
      v36 = v21;
      do
      {
        v24 = *a6;
        v25 = *(a6 + 16);
        kaldi::MatrixBase<float>::NumCols(a6);
        v50 = 0;
        v51 = 0;
        v48 = v24 + v19 * v25 + v22;
        v49 = v43;
        if (v21 >= v42)
        {
          if (v21 >= v40)
          {
            v32 = *v39;
            v33 = *(v39 + 16);
            v31 = kaldi::MatrixBase<float>::NumCols(v39);
            v46 = 0;
            v47 = 0;
            v44 = (v32 + 4 * v33 * (v38 + v21));
          }

          else
          {
            v29 = *a3;
            v30 = *(a3 + 16);
            v31 = kaldi::MatrixBase<float>::NumCols(a3);
            v46 = 0;
            v47 = 0;
            v44 = (v29 + 4 * (v37 + v21) * v30);
          }

          v45 = v31;
          kaldi::VectorBase<float>::CopyFromVec(&v48, &v44);
        }

        else
        {
          v26 = *a2;
          v27 = *(a2 + 16);
          v28 = kaldi::MatrixBase<float>::NumCols(a2);
          v46 = 0;
          v47 = 0;
          v44 = (v26 + 4 * v21 * v27);
          v45 = v28;
          kaldi::VectorBase<float>::CopyFromVec(&v48, &v44);
        }

        v22 += v41;
        ++v21;
        --v23;
      }

      while (v23);
      v21 = v36 + 1;
      v19 += 4;
    }

    while (v36 + 1 != v34);
  }
}

void sub_1B5045DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = v14;
  MEMORY[0x1B8C85350](v16, v15);
  _Unwind_Resume(a1);
}

std::string *std::__copy_impl::operator()[abi:ne200100]<std::pair<std::string,quasar::PTree> *,std::pair<std::string,quasar::PTree> *,std::pair<std::string,quasar::PTree> *>(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    LODWORD(this[1].__r_.__value_.__l.__data_) = v5[1].__r_.__value_.__l.__data_;
    std::string::operator=((this + 32), (v5 + 32));
    if (this != v5)
    {
      std::vector<std::pair<std::string,quasar::PTree>>::__assign_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(&this[2].__r_.__value_.__r.__words[1]);
    }

    this[3].__r_.__value_.__s.__data_[8] = v5[3].__r_.__value_.__s.__data_[8];
    this = (this + 88);
    v5 = (v5 + 88);
  }

  while (v5 != v6);
  return v6;
}

void sub_1B5045FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::PTree::toBool(std::string *this)
{
  v2 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v2 < 0)
  {
    v4 = this->__r_.__value_.__r.__words[0];
    v3 = (this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_);
  }

  else
  {
    v3 = (this + v2);
    v4 = this;
  }

  while (v4 != v3)
  {
    v4->__r_.__value_.__s.__data_[0] = __tolower(v4->__r_.__value_.__s.__data_[0]);
    v4 = (v4 + 1);
  }

  if (!std::string::compare(this, "true") || !std::string::compare(this, "t") || !std::string::compare(this, "1"))
  {
    return 1;
  }

  result = std::string::compare(this, "false");
  if (result)
  {
    result = std::string::compare(this, "f");
    if (result)
    {
      result = std::string::compare(this, "0");
      if (result)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        quasar::PTree::Error::Error(exception, &v7);
      }
    }
  }

  return result;
}

void sub_1B5046110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_1B50462EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B50463F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__120__shared_ptr_emplaceIN6quasar9GeoRegionENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D27240;
  quasar::GeoRegion::GeoRegion((a1 + 3));
  return a1;
}

double quasar::GeoRegion::GeoRegion(quasar::GeoRegion *this)
{
  *this = &unk_1F2D0A920;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = this + 96;
  *(this + 15) = 0;
  *(this + 13) = 0;
  *(this + 14) = this + 120;
  *(this + 19) = 0;
  *(this + 18) = 0;
  *(this + 16) = 0;
  *(this + 17) = this + 144;
  return result;
}

void sub_1B5046530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__shared_ptr_emplace<quasar::BitmapRegion>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<quasar::BitmapRegion>,0>(std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F2D0A950;
  quasar::BitmapRegion::BitmapRegion(a1 + 1, a2);
  return a1;
}

std::string *quasar::BitmapRegion::BitmapRegion(std::string *this, __int128 *a2)
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

  LODWORD(this[1].__r_.__value_.__l.__data_) = 0;
  return this;
}

uint64_t std::__function::__value_func<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<quasar::GeoRegion::loadModels(quasar::ModelLoader &,quasar::filesystem::Path &)::$_0,std::allocator<quasar::GeoRegion::loadModels(quasar::ModelLoader &,quasar::filesystem::Path &)::$_0>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D0A9F0;
  a2[1] = v2;
  return result;
}

unsigned int *quasar::GeoVersionChecker::enforceVersion(unsigned int *result, uint64_t a2, int a3, int a4, uint64_t a5)
{
  if (*result < a3 || *result > a4)
  {
    v21 = result;
    memset(v22, 0, sizeof(v22));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
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

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v8, v9);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " in geo config version ", 23);
    v12 = MEMORY[0x1B8C84C00](v11, *v21);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", upgrade to latest version (or version ", 40);
    v14 = MEMORY[0x1B8C84C00](v13, a3);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "..", 2);
    v16 = MEMORY[0x1B8C84C00](v15, a4);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ") ", 2);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17, a5);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v22);
  }

  return result;
}

BOOL quasar::filesystem::exists(std::string *a1)
{
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, a1);
  std::__fs::filesystem::__status(&__p, 0);
  v1 = v5;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v1)
  {
    v2 = v1 == 255;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

void sub_1B5046978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::Geography::loadFromJson(quasar::Geography *a1, int *a2, uint64_t a3)
{
  v6 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v7 = *(a2 + 2);
  }

  memset(v8, 0, sizeof(v8));
  std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(v8, *(a2 + 4), *(a2 + 5), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 5) - *(a2 + 4)) >> 3));
  v9 = *(a2 + 56);
  quasar::Geography::loadAndEraseFromJson(a1, &v6, a3);
}

void quasar::Geography::loadAndEraseFromJson(quasar::Geography *a1, quasar::PTree *a2, uint64_t a3)
{
  v5 = quasar::filesystem::Path::Path(&v7, a3);
  quasar::filesystem::Path::parent_path(v5, &v6);
  quasar::Geography::loadGeoConfigVersion(a1, a2);
}

void sub_1B5046DC0(_Unwind_Exception *exception_object)
{
  *(v1 - 128) = &unk_1F2CFAA28;
  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  *(v1 - 96) = &unk_1F2CFAA28;
  if (*(v1 - 65) < 0)
  {
    operator delete(*(v1 - 88));
  }

  _Unwind_Resume(exception_object);
}

void quasar::PTree::erase(uint64_t a1, int64_t *a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v6 >= 1)
  {
    v7 = &v5[v6];
    v8 = v5;
    do
    {
      v9 = memchr(v8, 46, v6);
      if (!v9)
      {
        break;
      }

      if (*v9 == 46)
      {
        if (v9 != v7 && v9 - v5 != -1)
        {
          memset(v21, 0, sizeof(v21));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v21);
          std::operator<<[abi:ne200100]<std::char_traits<char>>(v21, "nested erase() not implemented");
          quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v21);
        }

        break;
      }

      v8 = v9 + 1;
      v6 = v7 - v8;
    }

    while (v7 - v8 >= 1);
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  while (v10 != v11)
  {
    v12 = *(v10 + 23);
    if (v12 >= 0)
    {
      v13 = *(v10 + 23);
    }

    else
    {
      v13 = *(v10 + 8);
    }

    v14 = *(a2 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = a2[1];
    }

    if (v13 == v14 && (v12 >= 0 ? (v16 = v10) : (v16 = *v10), v15 >= 0 ? (v17 = a2) : (v17 = *a2), !memcmp(v16, v17, v13)))
    {
      if (v10 + 88 == v11)
      {
        v19 = v10;
      }

      else
      {
        v18 = v10;
        do
        {
          v19 = (v18 + 88);
          std::pair<std::string,quasar::PTree>::operator=[abi:ne200100](v18, (v18 + 88));
          v20 = v18 + 176;
          v18 += 88;
        }

        while (v20 != v11);
      }

      std::vector<std::pair<std::string,quasar::PTree>>::__base_destruct_at_end[abi:ne200100](a1 + 32, v19);
      v11 = *(a1 + 40);
    }

    else
    {
      v10 += 88;
    }
  }
}

void std::vector<std::pair<std::string,quasar::PTree>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  while (v4 != a2)
  {
    v5 = v4;
    v4 -= 11;
    quasar::PTree::~PTree(v5 - 8);
    if (*(v5 - 65) < 0)
    {
      operator delete(*v4);
    }
  }

  *(a1 + 8) = a2;
}

BOOL quasar::GeoRegion::loadModels(quasar::GeoRegion *this, quasar::ModelLoader *a2, quasar::filesystem::Path *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = *(this + 11);
  v4 = this + 96;
  if (v3 == (this + 96))
  {
    return 1;
  }

  do
  {
    if (*(v3 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, v3[7], v3[8]);
    }

    else
    {
      v16 = *(v3 + 7);
    }

    quasar::filesystem::Path::makeAbsolute(a3, &v16, &v19);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    *&v16.__r_.__value_.__l.__data_ = v19;
    v16.__r_.__value_.__r.__words[2] = v20;
    v8 = quasar::filesystem::exists(&v16);
    if (v8)
    {
      if (quasar::GeoRegion::isFst(&v16))
      {
        *&v19 = &unk_1F2D0A9F0;
        *(&v19 + 1) = a2;
        *(&v20 + 1) = &v19;
        std::__function::__value_func<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::__value_func[abi:ne200100](v18, &v19);
        quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::createRegionLmPlug(&v16, this + 8, v18);
      }

      *&v19 = &unk_1F2D0AAD0;
      *(&v19 + 1) = a2;
      *(&v20 + 1) = &v19;
      std::__function::__value_func<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::__value_func[abi:ne200100](v17, &v19);
      quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::createRegionLmPlug(&v16, this + 8, v17);
    }

    if (quasar::gLogLevel >= 1)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v19);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "GeoLM: Model cannot be loaded since it does not exist: ", 55);
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v16;
      }

      else
      {
        v10 = v16.__r_.__value_.__r.__words[0];
      }

      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v16.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, size);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v19);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (!v8)
    {
      break;
    }

    v12 = v3[1];
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
        v13 = v3[2];
        v14 = *v13 == v3;
        v3 = v13;
      }

      while (!v14);
    }

    v3 = v13;
  }

  while (v13 != v4);
  return v8;
}

void sub_1B5047E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__function::__value_func<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::~__value_func[abi:ne200100](&a24);
  std::__function::__value_func<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::~__value_func[abi:ne200100](&a28);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::createRegionLmPlug(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  if (v3)
  {
    (*(*v3 + 48))(&v4);
    std::allocate_shared[abi:ne200100]<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::allocator<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::string const&,std::string const&,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,0>();
  }

  std::__throw_bad_function_call[abi:ne200100]();
}

void sub_1B5047FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

const void **quasar::ModelLoader::readFstNetwork@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4[0] = 0;
  v4[1] = 0;
  return quasar::ModelLoader::readFstNetwork(a1, a2, v4, a3);
}

uint64_t fst::FstHeader::Read(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    std::istream::tellg();
    v6 = v21;
  }

  else
  {
    v6 = 0;
  }

  std::istream::read();
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  fst::LogMessage::LogMessage(&__c, __p);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "FstHeader::Read: Bad FST header: ", 33);
  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v8 >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = *(a3 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
  fst::LogMessage::~LogMessage(&__c);
  if ((SBYTE7(v14) & 0x80000000) == 0)
  {
    if (!a4)
    {
      return 0;
    }

    goto LABEL_14;
  }

  operator delete(__p[0]);
  if (a4)
  {
LABEL_14:
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    *__p = 0u;
    v14 = 0u;
    v21 = v6;
    std::istream::seekg();
  }

  return 0;
}

void sub_1B5048368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string,quasar::PTree>::operator=[abi:ne200100](uint64_t a1, __int128 *a2)
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
  *(a1 + 24) = *(a2 + 6);
  std::string::operator=((a1 + 32), (a2 + 2));
  if (a1 != a2)
  {
    std::vector<std::pair<std::string,quasar::PTree>>::__assign_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(a1 + 56, *(a2 + 7), *(a2 + 8), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 8) - *(a2 + 7)) >> 3));
  }

  *(a1 + 80) = *(a2 + 80);
  return a1;
}

void sub_1B50484E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::GeoRegion::loadAndEraseFromJson(uint64_t a1, const std::string *a2, uint64_t a3)
{
  std::string::operator=((a1 + 8), a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "long-name");
  quasar::PTree::getChildOptional(a3, __p);
}

void sub_1B5048CE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 81) < 0)
  {
    operator delete(*(v21 - 104));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5048EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

BOOL quasar::GeoRegion::isFst(uint64_t a1)
{
  quasar::toLower(a1, v5);
  std::string::basic_string[abi:ne200100]<0>(__p, ".fst");
  v1 = quasar::endsWith(v5, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  return v1;
}

void sub_1B5048F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void quasar::toLower(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  v3 = *(a2 + 23);
  v4 = v3;
  v5 = (a2 + v3);
  if (v4 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = (*a2 + *(a2 + 8));
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  while (v7 != v6)
  {
    *v7 = __tolower(*v7);
    ++v7;
  }
}

void sub_1B5049028(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::SystemConfig::SystemConfigInfo::operator=(uint64_t a1, __int128 *a2)
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
  *(a1 + 24) = *(a2 + 3);
  std::string::operator=((a1 + 40), (a2 + 40));
  *(a1 + 64) = *(a2 + 16);
  std::string::operator=((a1 + 72), a2 + 3);
  if (a1 != a2)
  {
    std::vector<std::pair<std::string,quasar::PTree>>::__assign_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(a1 + 96, *(a2 + 12), *(a2 + 13), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 13) - *(a2 + 12)) >> 3));
  }

  *(a1 + 120) = *(a2 + 120);
  quasar::SpeechModelInfo::operator=(a1 + 128, a2 + 8);
  quasar::TranslationModelInfo::operator=(a1 + 408, (a2 + 408));
  std::__tree<std::__value_type<int,std::map<std::string,double>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,double>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,double>>>>::__move_assign(a1 + 680, a2 + 85);
  std::__tree<std::string>::__move_assign(a1 + 704, a2 + 88);
  *(a1 + 728) = *(a2 + 182);
  std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__move_assign(a1 + 736, a2 + 92);
  std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__move_assign(a1 + 776, a2 + 97);
  return a1;
}

uint64_t quasar::TranslationModelInfo::operator=(uint64_t a1, __int128 *a2)
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
  std::__tree<std::string>::__move_assign(a1 + 24, a2 + 3);
  std::vector<std::pair<std::string,std::string>>::__vdeallocate((a1 + 48));
  *(a1 + 48) = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>>>::__move_assign(a1 + 72, a2 + 9);
  std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::__move_assign(a1 + 112, a2 + 14);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>>>::__move_assign(a1 + 152, a2 + 19);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__move_assign(a1 + 192, a2 + 24);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::__move_assign(a1 + 232, a2 + 29);
  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::vector<std::pair<std::string,std::string>>::__vdeallocate(std::vector<std::pair<std::string, std::string>> *this)
{
  begin = this->__begin_;
  if (this->__begin_)
  {
    end = this->__end_;
    v4 = this->__begin_;
    if (end != begin)
    {
      do
      {
        std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](this, --end);
      }

      while (end != begin);
      v4 = this->__begin_;
    }

    this->__end_ = begin;
    operator delete(v4);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__tree<std::__value_type<int,std::map<std::string,double>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,double>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,double>>>>::__move_assign(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  std::__tree<std::__value_type<int,std::map<std::string,double>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,double>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,double>>>>::destroy(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t quasar::operator<<(uint64_t a1, unsigned int *a2)
{
  v4 = MEMORY[0x1B8C84C00](a1, *a2);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ".", 1);
  MEMORY[0x1B8C84C00](v5, a2[1]);
  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::ReadHeader(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = *(a3 + 24);
  if (v10)
  {
    *a5 = *v10;
    std::string::operator=((a5 + 8), (v10 + 8));
    std::string::operator=((a5 + 32), (v10 + 32));
    v11 = *(v10 + 88);
    v12 = *(v10 + 72);
    *(a5 + 56) = *(v10 + 56);
    *(a5 + 72) = v12;
    *(a5 + 88) = v11;
  }

  else
  {
    v13 = fst::FstHeader::Read(a5, a2, a3, 0);
    result = 0;
    if (!v13)
    {
      return result;
    }
  }

  if (FLAGS_v >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
    v15 = fst::LogMessage::LogMessage(&v85, __p);
    v16 = fst::cerr(v15);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "FstImpl::ReadHeader: source: ", 29);
    v18 = *(a3 + 23);
    v19 = v18 >= 0 ? a3 : *a3;
    v20 = v18 >= 0 ? *(a3 + 23) : *(a3 + 8);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", fst_type: ", 12);
    v23 = *(a5 + 31);
    v24 = v23 >= 0 ? a5 + 8 : *(a5 + 8);
    v25 = v23 >= 0 ? *(a5 + 31) : *(a5 + 16);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v24, v25);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ", arc_type: ", 12);
    v28 = fst::ArcTpl<fst::TropicalWeightTpl<float>,int>::Type();
    v29 = *(v28 + 23);
    v30 = v29 >= 0 ? v28 : *v28;
    v31 = v29 >= 0 ? *(v28 + 23) : *(v28 + 8);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v30, v31);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ", version: ", 11);
    v34 = MEMORY[0x1B8C84C00](v33, *(a5 + 56));
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ", flags: ", 9);
    MEMORY[0x1B8C84C00](v35, *(a5 + 60));
    fst::LogMessage::~LogMessage(&v85);
    if (v84 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v36 = *(a5 + 31);
  if (v36 >= 0)
  {
    v37 = *(a5 + 31);
  }

  else
  {
    v37 = *(a5 + 16);
  }

  v38 = *(a1 + 39);
  v39 = v38;
  if ((v38 & 0x80u) != 0)
  {
    v38 = *(a1 + 24);
  }

  if (v37 != v38 || (v36 >= 0 ? (v40 = (a5 + 8)) : (v40 = *(a5 + 8)), v39 >= 0 ? (v41 = (a1 + 16)) : (v41 = *(a1 + 16)), memcmp(v40, v41, v37)))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v42 = fst::LogMessage::LogMessage(&v85, __p);
    v43 = fst::cerr(v42);
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "FstImpl::ReadHeader: Fst not of type ", 38);
    v45 = *(a1 + 39);
    if (v45 >= 0)
    {
      v46 = a1 + 16;
    }

    else
    {
      v46 = *(a1 + 16);
    }

    if (v45 >= 0)
    {
      v47 = *(a1 + 39);
    }

    else
    {
      v47 = *(a1 + 24);
    }

    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v46, v47);
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ": ", 3);
    v50 = *(a3 + 23);
    if (v50 >= 0)
    {
      v51 = a3;
    }

    else
    {
      v51 = *a3;
    }

    if (v50 >= 0)
    {
      v52 = *(a3 + 23);
    }

    else
    {
      v52 = *(a3 + 8);
    }

LABEL_50:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, v51, v52);
    fst::LogMessage::~LogMessage(&v85);
    if (v84 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  v53 = fst::ArcTpl<fst::TropicalWeightTpl<float>,int>::Type();
  v54 = *(a5 + 55);
  if (v54 >= 0)
  {
    v55 = *(a5 + 55);
  }

  else
  {
    v55 = *(a5 + 40);
  }

  v56 = *(v53 + 23);
  v57 = v56;
  if ((v56 & 0x80u) != 0)
  {
    v56 = *(v53 + 8);
  }

  if (v55 != v56 || (v54 >= 0 ? (v58 = (a5 + 32)) : (v58 = *(a5 + 32)), v57 >= 0 ? (v59 = v53) : (v59 = *v53), memcmp(v58, v59, v55)))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v60 = fst::LogMessage::LogMessage(&v85, __p);
    v61 = fst::cerr(v60);
    v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "FstImpl::ReadHeader: Arc not of type ", 38);
    v63 = fst::ArcTpl<fst::TropicalWeightTpl<float>,int>::Type();
    v64 = *(v63 + 23);
    if (v64 >= 0)
    {
      v65 = v63;
    }

    else
    {
      v65 = *v63;
    }

    if (v64 >= 0)
    {
      v66 = *(v63 + 23);
    }

    else
    {
      v66 = *(v63 + 8);
    }

    v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, v65, v66);
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, ": ", 3);
    v68 = *(a3 + 23);
    if (v68 >= 0)
    {
      v51 = a3;
    }

    else
    {
      v51 = *a3;
    }

    if (v68 >= 0)
    {
      v52 = *(a3 + 23);
    }

    else
    {
      v52 = *(a3 + 8);
    }

    goto LABEL_50;
  }

  if (*(a5 + 56) < a4)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v69 = fst::LogMessage::LogMessage(&v85, __p);
    v70 = fst::cerr(v69);
    v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, "FstImpl::ReadHeader: Obsolete ", 30);
    v72 = *(a1 + 39);
    if (v72 >= 0)
    {
      v73 = a1 + 16;
    }

    else
    {
      v73 = *(a1 + 16);
    }

    if (v72 >= 0)
    {
      v74 = *(a1 + 39);
    }

    else
    {
      v74 = *(a1 + 24);
    }

    v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, v73, v74);
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, " Fst version: ", 14);
    v76 = *(a3 + 23);
    if (v76 >= 0)
    {
      v51 = a3;
    }

    else
    {
      v51 = *a3;
    }

    if (v76 >= 0)
    {
      v52 = *(a3 + 23);
    }

    else
    {
      v52 = *(a3 + 8);
    }

    goto LABEL_50;
  }

  *(a1 + 8) = *(a5 + 64);
  if (*(a5 + 60))
  {
    *(a1 + 40) = fst::SymbolTable::Read(a2, a3);
  }

  if ((*(a3 + 52) & 1) == 0)
  {
    v77 = *(a1 + 40);
    if (v77)
    {
      (*(*v77 + 8))(v77);
      *(a1 + 40) = 0;
    }
  }

  if ((*(a5 + 60) & 2) != 0)
  {
    *(a1 + 48) = fst::SymbolTable::Read(a2, a3);
  }

  if ((*(a3 + 53) & 1) == 0)
  {
    v78 = *(a1 + 48);
    if (v78)
    {
      (*(*v78 + 8))(v78);
      *(a1 + 48) = 0;
    }
  }

  v79 = *(a3 + 32);
  if (v79)
  {
    v80 = *(a1 + 40);
    if (v80)
    {
      (*(*v80 + 8))(*(a1 + 40));
      v79 = *(a3 + 32);
    }

    *(a1 + 40) = (*(*v79 + 16))(v79);
  }

  v81 = *(a3 + 40);
  if (v81)
  {
    v82 = *(a1 + 48);
    if (v82)
    {
      (*(*v82 + 8))(*(a1 + 48));
      v81 = *(a3 + 40);
    }

    *(a1 + 48) = (*(*v81 + 16))(v81);
  }

  return 1;
}

void sub_1B504A4CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::SqueezedQuantizationOptions<false,false>::Read()
{
  std::istream::read();
  std::istream::read();
  std::istream::read();
  std::istream::read();
  operator new();
}

uint64_t fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::SqueezedFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D269B8;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = -1;
  *(a1 + 144) = 0;
  fst::SqueezedFstConsts<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::TypeString(&__str);
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950001;
  return a1;
}

void sub_1B504A684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = *(v15 + 144);
  *(v15 + 144) = 0;
  if (v17)
  {
    MEMORY[0x1B8C85350](v17, 0x1000C40451B5BE8);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v15);
  _Unwind_Resume(a1);
}

std::string *fst::SqueezedFstConsts<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::TypeString@<X0>(std::string *a1@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a1, "squeezed");
  std::string::append(a1, "_quantized");
  return std::string::append(a1, "_acceptor");
}

void sub_1B504A720(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::AlignInput()
{
  v6 = *MEMORY[0x1E69E9840];
  v2[1] = 0;
  v0 = 16;
  while (1)
  {
    std::istream::tellg();
    if ((v5 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v5 % 0x10)
    {
      std::istream::read();
      if (--v0)
      {
        continue;
      }
    }

    return 1;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  fst::LogMessage::LogMessage(v2, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "AlignInput: can't determine stream position", 43);
  fst::LogMessage::~LogMessage(v2);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1B504A848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ArcTpl<fst::TropicalWeightTpl<float>,int>::Type()
{
  {
    operator new();
  }

  return fst::ArcTpl<fst::TropicalWeightTpl<float>,int>::Type(void)::type;
}

void sub_1B504A98C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void *boost::io::detail::call_put_last<char,std::char_traits<char>,std::string>(void *a1, uint64_t a2)
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

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 3;
  v74 = a2 - 6;
  v9 = a2 - 9;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * (a2 - v10);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      if (std::less<std::string>::operator()[abi:ne200100](a3, a2 - 3, v10))
      {
LABEL_77:
        v122 = v10[2];
        v98 = *v10;
        v70 = *v8;
        v10[2] = v8[2];
        *v10 = v70;
        *v8 = v98;
        v59 = v122;
        goto LABEL_78;
      }

      return;
    }

LABEL_10:
    if (v13 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v10, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,std::string *>(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = &v10[3 * (v14 >> 1)];
    if (v13 >= 0xC01)
    {
      v17 = std::less<std::string>::operator()[abi:ne200100](a3, &v10[3 * v15], v10);
      v18 = std::less<std::string>::operator()[abi:ne200100](a3, a2 - 3, (a1 + 24 * v15));
      if (v17)
      {
        if (v18)
        {
          v100 = *(a1 + 16);
          v76 = *a1;
          v19 = *v8;
          *(a1 + 16) = *(a2 - 1);
          *a1 = v19;
          goto LABEL_27;
        }

        v106 = *(a1 + 16);
        v82 = *a1;
        v27 = *v16;
        *(a1 + 16) = v16[2];
        *a1 = v27;
        v16[2] = v106;
        *v16 = v82;
        if (std::less<std::string>::operator()[abi:ne200100](a3, a2 - 3, (a1 + 24 * v15)))
        {
          v100 = v16[2];
          v76 = *v16;
          v28 = *v8;
          v16[2] = *(a2 - 1);
          *v16 = v28;
LABEL_27:
          *v8 = v76;
          *(a2 - 1) = v100;
        }
      }

      else if (v18)
      {
        v102 = v16[2];
        v78 = *v16;
        v23 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v23;
        *v8 = v78;
        *(a2 - 1) = v102;
        if (std::less<std::string>::operator()[abi:ne200100](a3, (a1 + 24 * v15), a1))
        {
          v103 = *(a1 + 16);
          v79 = *a1;
          v24 = *v16;
          *(a1 + 16) = v16[2];
          *a1 = v24;
          v16[2] = v103;
          *v16 = v79;
        }
      }

      v29 = a1 + 24 * v15 - 24;
      v30 = std::less<std::string>::operator()[abi:ne200100](a3, v29, (a1 + 24));
      v31 = std::less<std::string>::operator()[abi:ne200100](a3, v74, v29);
      if (v30)
      {
        if (v31)
        {
          v32 = *(a1 + 40);
          v33 = *(a1 + 24);
          v34 = *(a2 - 4);
          *(a1 + 24) = *v74;
          *(a1 + 40) = v34;
          *v74 = v33;
          *(a2 - 4) = v32;
        }

        else
        {
          v86 = *(a1 + 24);
          v110 = *(a1 + 40);
          v39 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v29;
          *(a1 + 40) = v39;
          *(a1 + 24 * v15 - 8) = v110;
          *v29 = v86;
          if (std::less<std::string>::operator()[abi:ne200100](a3, v74, v29))
          {
            v111 = *(a1 + 24 * v15 - 8);
            v87 = *v29;
            v40 = *v74;
            *(a1 + 24 * v15 - 8) = *(a2 - 4);
            *v29 = v40;
            *v74 = v87;
            *(a2 - 4) = v111;
          }
        }
      }

      else if (v31)
      {
        v107 = *(a1 + 24 * v15 - 8);
        v83 = *v29;
        v35 = *v74;
        *(a1 + 24 * v15 - 8) = *(a2 - 4);
        *v29 = v35;
        *v74 = v83;
        *(a2 - 4) = v107;
        if (std::less<std::string>::operator()[abi:ne200100](a3, v29, (a1 + 24)))
        {
          v84 = *(a1 + 24);
          v108 = *(a1 + 40);
          v36 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v29;
          *(a1 + 40) = v36;
          *(a1 + 24 * v15 - 8) = v108;
          *v29 = v84;
        }
      }

      v41 = a1 + 24 * v15;
      v42 = std::less<std::string>::operator()[abi:ne200100](a3, (v41 + 24), (a1 + 48));
      v43 = std::less<std::string>::operator()[abi:ne200100](a3, a2 - 9, (v41 + 24));
      if (v42)
      {
        if (v43)
        {
          v44 = *(a1 + 64);
          v45 = *(a1 + 48);
          v46 = *(a2 - 7);
          *(a1 + 48) = *v9;
          *(a1 + 64) = v46;
          *v9 = v45;
          goto LABEL_47;
        }

        v90 = *(a1 + 48);
        v114 = *(a1 + 64);
        v49 = *(v41 + 40);
        *(a1 + 48) = *(v41 + 24);
        *(a1 + 64) = v49;
        *(v41 + 40) = v114;
        *(v41 + 24) = v90;
        if (std::less<std::string>::operator()[abi:ne200100](a3, a2 - 9, (v41 + 24)))
        {
          v115 = *(v41 + 40);
          v91 = *(v41 + 24);
          v50 = *v9;
          *(v41 + 40) = *(a2 - 7);
          *(v41 + 24) = v50;
          *v9 = v91;
          v44 = v115;
LABEL_47:
          *(a2 - 7) = v44;
        }
      }

      else if (v43)
      {
        v112 = *(v41 + 40);
        v88 = *(v41 + 24);
        v47 = *v9;
        *(v41 + 40) = *(a2 - 7);
        *(v41 + 24) = v47;
        *v9 = v88;
        *(a2 - 7) = v112;
        if (std::less<std::string>::operator()[abi:ne200100](a3, (v41 + 24), (a1 + 48)))
        {
          v89 = *(a1 + 48);
          v113 = *(a1 + 64);
          v48 = *(v41 + 40);
          *(a1 + 48) = *(v41 + 24);
          *(a1 + 64) = v48;
          *(v41 + 40) = v113;
          *(v41 + 24) = v89;
        }
      }

      v51 = std::less<std::string>::operator()[abi:ne200100](a3, v16, v29);
      v52 = std::less<std::string>::operator()[abi:ne200100](a3, (v41 + 24), v16);
      if (v51)
      {
        if (v52)
        {
          v116 = *(v29 + 16);
          v92 = *v29;
          *v29 = *(v41 + 24);
          *(v29 + 16) = *(v41 + 40);
          goto LABEL_56;
        }

        v119 = *(v29 + 16);
        v95 = *v29;
        *v29 = *v16;
        *(v29 + 16) = v16[2];
        v16[2] = v119;
        *v16 = v95;
        if (std::less<std::string>::operator()[abi:ne200100](a3, (v41 + 24), v16))
        {
          v116 = v16[2];
          v92 = *v16;
          *v16 = *(v41 + 24);
          v16[2] = *(v41 + 40);
LABEL_56:
          *(v41 + 40) = v116;
          *(v41 + 24) = v92;
        }
      }

      else if (v52)
      {
        v117 = v16[2];
        v93 = *v16;
        *v16 = *(v41 + 24);
        v16[2] = *(v41 + 40);
        *(v41 + 40) = v117;
        *(v41 + 24) = v93;
        if (std::less<std::string>::operator()[abi:ne200100](a3, v16, v29))
        {
          v118 = *(v29 + 16);
          v94 = *v29;
          *v29 = *v16;
          *(v29 + 16) = v16[2];
          v16[2] = v118;
          *v16 = v94;
        }
      }

      v120 = *(a1 + 16);
      v96 = *a1;
      v53 = *v16;
      *(a1 + 16) = v16[2];
      *a1 = v53;
      v16[2] = v120;
      *v16 = v96;
      goto LABEL_58;
    }

    v20 = std::less<std::string>::operator()[abi:ne200100](a3, v10, &v10[3 * v15]);
    v21 = std::less<std::string>::operator()[abi:ne200100](a3, a2 - 3, a1);
    if (v20)
    {
      if (v21)
      {
        v101 = v16[2];
        v77 = *v16;
        v22 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v22;
LABEL_36:
        *v8 = v77;
        *(a2 - 1) = v101;
        goto LABEL_58;
      }

      v109 = v16[2];
      v85 = *v16;
      v37 = *a1;
      v16[2] = *(a1 + 16);
      *v16 = v37;
      *(a1 + 16) = v109;
      *a1 = v85;
      if (std::less<std::string>::operator()[abi:ne200100](a3, a2 - 3, a1))
      {
        v101 = *(a1 + 16);
        v77 = *a1;
        v38 = *v8;
        *(a1 + 16) = *(a2 - 1);
        *a1 = v38;
        goto LABEL_36;
      }
    }

    else if (v21)
    {
      v104 = *(a1 + 16);
      v80 = *a1;
      v25 = *v8;
      *(a1 + 16) = *(a2 - 1);
      *a1 = v25;
      *v8 = v80;
      *(a2 - 1) = v104;
      if (std::less<std::string>::operator()[abi:ne200100](a3, a1, (a1 + 24 * v15)))
      {
        v105 = v16[2];
        v81 = *v16;
        v26 = *a1;
        v16[2] = *(a1 + 16);
        *v16 = v26;
        *(a1 + 16) = v105;
        *a1 = v81;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && !std::less<std::string>::operator()[abi:ne200100](a3, (a1 - 24), a1))
    {
      v10 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(a1, a2, a3);
      goto LABEL_65;
    }

    v54 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(a1, a2, a3);
    if ((v55 & 1) == 0)
    {
      goto LABEL_63;
    }

    v56 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, v54, a3);
    v10 = (v54 + 24);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v54 + 24, a2, a3))
    {
      a4 = -v12;
      a2 = v54;
      if (v56)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v56)
    {
LABEL_63:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(a1, v54, a3, -v12, a5 & 1);
      v10 = (v54 + 24);
LABEL_65:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(v10, v10 + 3, v10 + 6, (a2 - 3), a3);
      return;
    }

    if (v14 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(v10, v10 + 3, v10 + 6, (v10 + 9), a3);
      if (!std::less<std::string>::operator()[abi:ne200100](a3, a2 - 3, v10 + 9))
      {
        return;
      }

      v62 = v10[11];
      v63 = *(v10 + 9);
      v64 = *(a2 - 1);
      *(v10 + 9) = *v8;
      v10[11] = v64;
      *v8 = v63;
      *(a2 - 1) = v62;
      if (!std::less<std::string>::operator()[abi:ne200100](a3, v10 + 9, v10 + 6))
      {
        return;
      }

      v65 = v10[8];
      v66 = *(v10 + 3);
      *(v10 + 3) = *(v10 + 9);
      v10[8] = v10[11];
      *(v10 + 9) = v66;
      v10[11] = v65;
      if (!std::less<std::string>::operator()[abi:ne200100](a3, v10 + 6, v10 + 3))
      {
        return;
      }

      v67 = v10[5];
      v68 = *(v10 + 3);
      *(v10 + 3) = *(v10 + 3);
      v10[5] = v10[8];
      *(v10 + 3) = v68;
      v10[8] = v67;
      goto LABEL_92;
    }

    goto LABEL_10;
  }

  v57 = std::less<std::string>::operator()[abi:ne200100](a3, v10 + 3, v10);
  v58 = std::less<std::string>::operator()[abi:ne200100](a3, v8, v10 + 3);
  if (!v57)
  {
    if (!v58)
    {
      return;
    }

    v71 = v10[5];
    v72 = *(v10 + 3);
    v73 = v8[2];
    *(v10 + 3) = *v8;
    v10[5] = v73;
    *v8 = v72;
    v8[2] = v71;
LABEL_92:
    if (std::less<std::string>::operator()[abi:ne200100](a3, v10 + 3, v10))
    {
      v123 = v10[2];
      v99 = *v10;
      *v10 = *(v10 + 3);
      v10[2] = v10[5];
      *(v10 + 3) = v99;
      v10[5] = v123;
    }

    return;
  }

  if (v58)
  {
    goto LABEL_77;
  }

  v121 = v10[2];
  v97 = *v10;
  *v10 = *(v10 + 3);
  v10[2] = v10[5];
  *(v10 + 3) = v97;
  v10[5] = v121;
  if (std::less<std::string>::operator()[abi:ne200100](a3, v8, v10 + 3))
  {
    v59 = v10[5];
    v60 = *(v10 + 3);
    v61 = v8[2];
    *(v10 + 3) = *v8;
    v10[5] = v61;
    *v8 = v60;
LABEL_78:
    v8[2] = v59;
  }
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, const void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v18 = v3;
    v19 = v4;
    v7 = (a1 + 24);
    if ((a1 + 24) != a2)
    {
      v9 = 0;
      v10 = a1;
      do
      {
        v11 = v10;
        v10 = v7;
        if (std::less<std::string>::operator()[abi:ne200100](a3, v7, v11))
        {
          v16 = *v10;
          v17 = v10[2];
          v10[1] = 0;
          v10[2] = 0;
          *v10 = 0;
          v12 = v9;
          do
          {
            v13 = a1 + v12;
            if (*(a1 + v12 + 47) < 0)
            {
              operator delete(*(v13 + 24));
            }

            *(v13 + 24) = *v13;
            *(v13 + 40) = *(v13 + 16);
            *(v13 + 23) = 0;
            *v13 = 0;
            if (!v12)
            {
              v15 = a1;
              goto LABEL_13;
            }

            v12 -= 24;
          }

          while (std::less<std::string>::operator()[abi:ne200100](a3, &v16, (v12 + a1)));
          v14 = *(a1 + v12 + 47);
          v15 = a1 + v12 + 24;
          if (v14 < 0)
          {
            operator delete(*v15);
          }

LABEL_13:
          *v15 = v16;
          *(v15 + 16) = v17;
        }

        v7 = v10 + 3;
        v9 += 24;
      }

      while (v10 + 3 != a2);
    }
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void quasar::SystemConfig::Register<std::string>(const void **a1, const void **a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9)
{
  (*(*a1 + 5))(a1);
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

void sub_1B504B918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::MuxHelper::init(quasar::MuxHelper *this)
{
  if (quasar::gLogLevel >= 6)
  {
    memset(v8, 0, sizeof(v8));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "sharedTags: ", 12);
    v5[0] = " ";
    v5[1] = 1;
    quasar::join<std::unordered_set<std::string>>(this, v5);
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    quasar::QuasarTraceMessage::~QuasarTraceMessage(v8);
  }

  operator new();
}

void sub_1B504BCB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::locale a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  quasar::QuasarTraceMessage::~QuasarTraceMessage(&a18);
  _Unwind_Resume(a1);
}

void sub_1B504BCE8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20)
{
  MEMORY[0x1B8C85350](v20, 0x10A1C40FE5546BCLL);
  if (a2 == 1)
  {
    v25 = __cxa_begin_catch(a1);
    if (*v22 >= 2)
    {
      v26 = v25;
      v21[15] = 0u;
      v21[16] = 0u;
      v21[13] = 0u;
      v21[14] = 0u;
      v21[11] = 0u;
      v21[12] = 0u;
      v21[9] = 0u;
      v21[10] = 0u;
      v21[7] = 0u;
      v21[8] = 0u;
      v21[6] = 0u;
      a19 = 0u;
      a20 = 0u;
      a17 = 0u;
      a18 = 0u;
      a15 = 0u;
      a16 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&a15);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a15, "Text sanitizer initialization failed ", 37);
      v28 = (*(*v26 + 16))(v26);
      v29 = strlen(v28);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(&a15);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B504BCA0);
  }

  JUMPOUT(0x1B504BCE0);
}

void quasar::TextSanitizer::TextSanitizer(quasar::TextSanitizer *this)
{
  v6 = *MEMORY[0x1E69E9840];
  *this = &unk_1F2D30340;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[1],0>(v2, "ـ", "");
  std::unordered_map<std::string,std::string>::unordered_map(this + 80, v2, 1);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v3 < 0)
  {
    operator delete(v2[0]);
  }

  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 1065353216;
  operator new();
}

void sub_1B504C054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v24);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table((v23 + 10));
  quasar::TextSanitizer::TextSanitizer(v23);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[1],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B504C174(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 48;
      v7 = v4 - 48;
      v8 = v4 - 48;
      do
      {
        v9 = *v8;
        v8 -= 48;
        (*(v9 + 16))(v7);
        v6 -= 48;
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

void std::vector<long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void *std::vector<unsigned long>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_1B504C36C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>,std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 3);
      v6 += 2;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 2;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>,std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t kaldi::nnet1::Rescale::PropagateFnc(uint64_t a1, uint64_t a2, int *a3)
{
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111);

  return kaldi::CuMatrixBase<float>::MulColsVec(a3, a1 + 88);
}

uint64_t *kaldi::nnet1::AddShift::PropagateFnc(uint64_t a1, uint64_t a2, int *a3)
{
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111);

  return kaldi::CuMatrixBase<float>::AddVecToRows(a3, a1 + 88, 1.0, 1.0);
}

float kaldi::SplitRadixRealFft<float>::Compute(uint64_t a1, float32x2_t *a2, int a3, std::vector<unsigned int> *this)
{
  v5 = a3;
  v6 = a2;
  v8 = *(a1 + 48);
  v9 = v8 >> 1;
  if (a3)
  {
    kaldi::SplitRadixComplexFft<float>::Compute(a1, a2, 1, this);
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  v11 = 6.28318531 / v8 * v10;
  v12 = __sincosf_stret(v11);
  if (v9 >= 2)
  {
    v13 = -v10;
    v14 = v9 - 1;
    v15 = v6 + 1;
    v16 = &v6[v9 - 1] + 1;
    v17 = (v6 + 4 * v8 - 8);
    v18 = 0.0;
    v19 = 1;
    do
    {
      v20 = -(v18 * v12.__sinval);
      v21 = v12.__cosval * v18;
      v22 = vadd_f32(*v15, *v17);
      v23 = vsub_f32(*v15, *v17);
      v24 = vext_s8(v22, v23, 4uLL);
      v22.i32[1] = v23.i32[1];
      v18 = v21 + (v13 * v12.__sinval);
      v13 = v20 + (v13 * v12.__cosval);
      v25 = vmul_f32(v22, 0x3F0000003F000000);
      v26 = vmul_f32(v24, COERCE_FLOAT32X2_T(-0.0000305175853));
      v27 = vmla_n_f32(vrev64_s32(vmul_f32(v26, __PAIR64__(-v18, LODWORD(v18)))), v26, v13);
      *v15 = vadd_f32(v25, v27);
      if (v19 != v14)
      {
        *(v16 - 1) = v25.f32[0] + (vmuls_lane_f32(v18, v26, 1) - (v26.f32[0] * v13));
        *v16 = vsub_f32(v27, v25).i32[1];
      }

      ++v19;
      --v14;
      ++v15;
      v16 -= 2;
      --v17;
    }

    while (v19 - ((v9 - 2) >> 1) != 2);
  }

  v28 = v6->f32[1];
  v29 = v6->f32[0] + v28;
  result = v6->f32[0] - v28;
  v6->f32[0] = v29;
  v6->f32[1] = result;
  if ((v5 & 1) == 0)
  {
    v6->f32[0] = v29 * 0.5;
    v6->f32[1] = result * 0.5;
    result = kaldi::SplitRadixComplexFft<float>::Compute(a1, v6, 0, this);
    if (v8 >= 1)
    {
      do
      {
        result = v6->f32[0] + v6->f32[0];
        v6->f32[0] = result;
        v6 = (v6 + 4);
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

int32x2_t *kaldi::CuMatrix<float>::operator=(int32x2_t *a1, int *a2)
{
  v4 = kaldi::MatrixBase<float>::NumRows(a2);
  v5 = kaldi::MatrixBase<float>::NumCols(a2);
  kaldi::CuMatrix<float>::Resize(a1, v4, v5, 1, 0);
  kaldi::MatrixBase<float>::CopyFromMat<float>(&a1[1], a2, 111);
  return a1;
}

uint64_t kaldi::SplitRadixComplexFft<float>::ComputeRecursive(uint64_t result, float *a2, float *a3, unsigned int a4)
{
  if ((a4 & 0x80000000) != 0)
  {
LABEL_31:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v86);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v86, "Error: logn is out of bounds in SRFFT");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v86);
  }

  v6 = result;
  v7 = a4;
  while (v7 > 2)
  {
    v8 = 1 << v7;
    v9 = (1 << v7) / 2;
    v10 = (1 << v7) + 3;
    if (1 << v7 >= 0)
    {
      v10 = 1 << v7;
    }

    v11 = (v10 >> 2);
    if (v8 >= 0)
    {
      v12 = 1 << v7;
    }

    else
    {
      v12 = v8 + 7;
    }

    v13 = (v8 + (v8 >> 31)) >> 1;
    v14 = &a2[v9];
    v15 = &a3[v9];
    if (v8 < 2)
    {
      v22 = &v14[v11];
      v23 = &v15[v11];
    }

    else
    {
      v16 = a3;
      v17 = a2;
      do
      {
        v18 = v17[v13];
        v19 = *v17 + v18;
        v17[v13] = *v17 - v18;
        *v17++ = v19;
        v20 = *v16;
        v21 = v16[v13];
        v16[v13] = *v16 - v21;
        *v16++ = v20 + v21;
        --v9;
      }

      while (v9);
      v22 = &v14[v11];
      v23 = &v15[v11];
      if (v8 >= 4)
      {
        v24 = v11;
        v25 = v15;
        v26 = v14;
        do
        {
          v27 = *v26 + v25[v11];
          v28 = v26[v11];
          v29 = *v25 + v28;
          *v25 = *v25 - v28;
          v26[v11] = *v26 - v25[v11];
          *v26++ = v27;
          v25[v11] = v29;
          ++v25;
          --v24;
        }

        while (v24);
      }
    }

    if (v7 == 3)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
    }

    else
    {
      v30 = *(*(v6 + 40) + 8 * v7 - 32);
      v36 = 4 * v11 - 8;
      v31 = (v30 + v36);
      v32 = (v30 + v36 + v36);
      v33 = (v32 + v36);
      v34 = (v32 + v36 + v36);
      v35 = (v34 + v36);
    }

    if (v8 >= 8)
    {
      v37 = 0;
      v38 = v12 >> 3;
      if (v11 <= 2)
      {
        v39 = 2;
      }

      else
      {
        v39 = v11;
      }

      v40 = &a2[v13 + 1];
      v41 = v22 + 1;
      v42 = &a3[v13 + 1];
      v43 = v23 + 1;
      v44 = v39 - 1;
      v45 = v38 - 1;
      do
      {
        if (v45 == v37)
        {
          v46 = *(v40 + 4 * v37);
          v47 = *(v42 + 4 * v37);
          *(v42 + 4 * v37) = (v47 - v46) * 0.70711;
          *(v40 + 4 * v37) = (v46 + v47) * 0.70711;
          v48 = v43[v37];
          v49 = v41[v37];
          v43[v37] = (v48 + v49) * -0.70711;
          v41[v37] = (v48 - v49) * 0.70711;
        }

        else
        {
          v50 = *v30++;
          v51 = *(v40 + 4 * v37);
          v52 = *(v42 + 4 * v37);
          v53 = v50 * (v51 + v52);
          v54 = *v31++;
          v55 = v54;
          v56 = *v32++;
          *(v40 + 4 * v37) = v53 + (v56 * v52);
          *(v42 + 4 * v37) = v53 + (v55 * v51);
          v57 = *v33++;
          v58 = v41[v37];
          v59 = v43[v37];
          v60 = v57 * (v58 + v59);
          v61 = *v34++;
          v62 = v61;
          v63 = *v35++;
          v41[v37] = v60 + (v63 * v59);
          v43[v37] = v60 + (v62 * v58);
        }

        ++v37;
      }

      while (v44 != v37);
    }

    kaldi::SplitRadixComplexFft<float>::ComputeRecursive(v6, a2, a3, (v7 - 1));
    result = kaldi::SplitRadixComplexFft<float>::ComputeRecursive(v6, v14, v15, v7 - 2);
    a2 += 3 * v11;
    a3 += 3 * v11;
    v64 = v7 < 2;
    v7 -= 2;
    if (v64)
    {
      goto LABEL_31;
    }
  }

  if (v7 == 1)
  {
    v82 = a2[1];
    v83 = *a2 - v82;
    *a2 = *a2 + v82;
    a2[1] = v83;
    v84 = a3[1];
    v85 = *a3 - v84;
    *a3 = *a3 + v84;
    a3[1] = v85;
  }

  else if (v7 == 2)
  {
    v65 = a2[2];
    v66 = *a2 + v65;
    a2[2] = *a2 - v65;
    *a2 = v66;
    v67 = a3[2];
    v68 = *a3 + v67;
    a3[2] = *a3 - v67;
    *a3 = v68;
    v69 = a2[1];
    v70 = a2[3];
    a2[3] = v69 - v70;
    a2[1] = v69 + v70;
    v71 = a3[1];
    v72 = a3[3];
    a3[3] = v71 - v72;
    a3[1] = v71 + v72;
    v73 = a2[1];
    v74 = *a2 - v73;
    *a2 = *a2 + v73;
    a2[1] = v74;
    v75 = a3[1];
    v76 = *a3 - v75;
    *a3 = *a3 + v75;
    a3[1] = v76;
    v78 = a3[2];
    v77 = a3[3];
    v79 = a2[3];
    v80 = a2[2] + v77;
    a3[2] = v78 - v79;
    v81 = a2[2] - v77;
    a2[2] = v80;
    a2[3] = v81;
    a3[3] = v78 + v79;
  }

  return result;
}

uint64_t kaldi::SplitRadixComplexFft<float>::BitReversePermute(uint64_t result, uint64_t a2, int a3)
{
  v3 = a3 >> 1;
  v4 = (1 << (a3 >> 1));
  if (v4 >= 2)
  {
    v5 = *(result + 32);
    v6 = a2 + 4 * v4 + 4;
    for (i = 1; i != v4; ++i)
    {
      v8 = *(v5 + 4 * i);
      v9 = v8 << v3;
      v10 = *(a2 + 4 * i);
      *(a2 + 4 * i) = *(a2 + 4 * (v8 << v3));
      *(a2 + 4 * (v8 << v3)) = v10;
      if (v8 >= 2)
      {
        v11 = v8 - 1;
        v12 = (v5 + 4);
        result = v6;
        do
        {
          v13 = *v12++;
          v14 = *result;
          *result = *(a2 + 4 * (v13 + v9));
          *(a2 + 4 * (v13 + v9)) = v14;
          result += 4 * (1 << (a3 >> 1));
          --v11;
        }

        while (v11);
      }

      v6 += 4;
    }
  }

  return result;
}

float kaldi::ComputePowerSpectrum(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 / 2;
  v3 = *a1;
  v4 = **a1;
  v5 = *(*a1 + 4);
  if (v1 >= 4)
  {
    if (v2 <= 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = v2;
    }

    v7 = v3 + 3;
    for (i = 1; i != v6; ++i)
    {
      v3[i] = (*v7 * *v7) + (*(v7 - 1) * *(v7 - 1));
      v7 += 2;
    }
  }

  result = v4 * v4;
  *v3 = result;
  v3[v2] = v5 * v5;
  return result;
}

char *std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
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

void kaldi::MelBanks::Compute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32) - *(a1 + 24);
  if (*(a3 + 8) != (v5 >> 5))
  {
    kaldi::Vector<float>::Resize(a3, v5 >> 5, 0);
  }

  if ((v5 >> 5) < 1)
  {
    if (*(a1 + 48) != 1)
    {
      return;
    }

    fwrite("MEL BANKS:\n", 0xBuLL, 1uLL, *MEMORY[0x1E69E9848]);
    goto LABEL_14;
  }

  v6 = 0;
  v7 = 0;
  v8 = (v5 >> 5) & 0x7FFFFFFF;
  do
  {
    kaldi::VecVec<float>();
    if ((*(a1 + 49) & (v9 < 1.0)) != 0)
    {
      v9 = 1.0;
    }

    *(*a3 + 4 * v7++) = v9;
    v6 += 32;
  }

  while (v8 != v7);
  if (*(a1 + 48))
  {
    v10 = MEMORY[0x1E69E9848];
    fwrite("MEL BANKS:\n", 0xBuLL, 1uLL, *MEMORY[0x1E69E9848]);
    v11 = 0;
    do
    {
      fprintf(*v10, " %f", *(*a3 + 4 * v11++));
    }

    while (v8 != v11);
LABEL_14:
    fputc(10, *MEMORY[0x1E69E9848]);
  }
}

void kaldi::SnrTracker::add_frame_energy(uint64_t a1, char **a2)
{
  std::mutex::lock(a1);
  std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>((a1 + 64), *(a1 + 72), *a2, a2[1], (a2[1] - *a2) >> 2);

  std::mutex::unlock(a1);
}

uint64_t kaldi::VectorBase<float>::ApplyFloor(uint64_t a1, float a2)
{
  v2 = *(a1 + 8);
  if (v2 < 1)
  {
    return 0;
  }

  result = 0;
  v5 = *a1;
  do
  {
    if (*v5 < a2)
    {
      *v5 = a2;
      result = (result + 1);
    }

    ++v5;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t kaldi::MatrixBase<float>::MulColsVec(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 12);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2);
    v5 = *a2;
    do
    {
      if (v4 >= 1)
      {
        v6 = 0;
        v7 = *result + 4 * *(result + 16) * v3;
        do
        {
          *(v7 + 4 * v6) = *(v5 + 4 * v6) * *(v7 + 4 * v6);
          ++v6;
        }

        while (v4 != v6);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

uint64_t *kaldi::Matrix<float>::Swap(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  LODWORD(v2) = *(result + 2);
  *(result + 2) = *(a2 + 2);
  *(a2 + 2) = v2;
  LODWORD(v2) = *(result + 3);
  *(result + 3) = *(a2 + 3);
  *(a2 + 3) = v2;
  LODWORD(v2) = *(result + 4);
  *(result + 4) = *(a2 + 4);
  *(a2 + 4) = v2;
  LODWORD(v2) = *(result + 5);
  *(result + 5) = *(a2 + 5);
  *(a2 + 5) = v2;
  LOBYTE(v2) = *(result + 32);
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = v2;
  return result;
}

uint64_t *kaldi::quasar::InputShapeTemplate::Get@<X0>(kaldi::quasar::InputShapeTemplate *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = std::vector<long long>::vector[abi:ne200100](a4, *(this + 2));
  v8 = *result;
  v9 = *(this + 1);
  *(*result + 8 * *this) = a2;
  *(v8 + 8 * v9) = a3;
  return result;
}

uint64_t std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(uint64_t a1, __int128 *a2, std::string::size_type a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v23 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>>(a1, v9);
  }

  v10 = (32 * v3);
  v20 = 0;
  v21 = v10;
  v22 = v10;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v10, *a2, *(a2 + 1));
    v12 = v21;
    v13 = v22;
  }

  else
  {
    v11 = *a2;
    v10->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v10->__r_.__value_.__l.__data_ = v11;
    v12 = v10;
    v13 = v10;
  }

  v10[1].__r_.__value_.__r.__words[0] = a3;
  *&v22 = v13 + 32;
  v14 = *(a1 + 8);
  v15 = v12 + *a1 - v14;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>,std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>*>(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = *(a1 + 16);
  v19 = v22;
  *(a1 + 8) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(&v20);
  return v19;
}

void sub_1B504D4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *kaldi::quasar::EspressoV2TensorData::BindToInput(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    goto LABEL_16;
  }

  v6 = (a1 + 56);
  v7 = *(a1 + 79);
  if (v7 >= 0)
  {
    v8 = *(a1 + 79);
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = *(a3 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a3 + 8);
  }

  if (v8 != v9 || (v7 >= 0 ? (v11 = (a1 + 56)) : (v11 = *v6), v10 >= 0 ? (v12 = a3) : (v12 = *a3), result = memcmp(v11, v12, v8), result))
  {
    if (v8)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v24);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Cannot bind to ", 15);
      v19 = *(a3 + 23);
      if (v19 >= 0)
      {
        v20 = a3;
      }

      else
      {
        v20 = *a3;
      }

      if (v19 >= 0)
      {
        v21 = *(a3 + 23);
      }

      else
      {
        v21 = *(a3 + 8);
      }

      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " due to existing binding to ", 28);
      std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v23, v6);
      goto LABEL_22;
    }

LABEL_16:
    if (!e5rt_execution_stream_operation_retain_input_port() && !e5rt_io_port_bind_buffer_object() && !e5rt_io_port_release())
    {
      return std::string::operator=((a1 + 56), a3);
    }

    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v24);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Espresso V2 failure: ", 21);
    v16 = strlen(last_error_message);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, last_error_message, v16);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, "\n");
LABEL_22:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v24);
  }

  return result;
}

float kaldi::quasar::EspressoV2TensorData::CopyToVector(kaldi::quasar::EspressoV2TensorData *a1, uint64_t a2)
{
  kaldi::quasar::EspressoV2TensorData::GetDataFloat(a1);
  v4 = v3;
  v13[34] = 0;
  v13[35] = 0;
  if (e5rt_tensor_desc_get_shape())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Espresso V2 failure: ", 21);
    v11 = strlen(last_error_message);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, last_error_message, v11);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "\n");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  kaldi::CuVector<float>::Resize(a2, 1, 1);
  v5 = 0;
  v6 = 0;
  v7 = *(a2 + 8);
  do
  {
    result = *(v4 + 4 * v6);
    *(v7 + (v5 >> 30)) = result;
    ++v6;
    v5 += 0x100000000;
  }

  while (v6 != 1);
  return result;
}

uint64_t kaldi::quasar::ComputeEngineBufferItf::CopyFrom(kaldi::quasar::ComputeEngineBufferItf *this, const kaldi::quasar::ComputeEngineBufferItf *a2)
{
  kaldi::quasar::ComputeEngineBufferItf::GetShape(this, &__p);
  kaldi::quasar::ComputeEngineBufferItf::GetShape(a2, &v10);
  v4 = __p;
  v5 = v10;
  if (v9 - __p != v11 - v10)
  {
    v6 = 0;
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = memcmp(__p, v10, v9 - __p) == 0;
  if (v5)
  {
LABEL_5:
    v11 = v5;
    operator delete(v5);
    v4 = __p;
  }

LABEL_6:
  if (v4)
  {
    v9 = v4;
    operator delete(v4);
  }

  if (!v6)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&__p, "GetShape() == src.GetShape()");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  return (*(*this + 64))(this, a2);
}

uint64_t kaldi::quasar::EspressoV2TensorData::CopyFromImpl(kaldi::quasar::EspressoV2TensorData *this, const kaldi::quasar::ComputeEngineBufferItf *lpsrc)
{
  {
    __cxa_bad_cast();
  }

  result = e5rt_tensor_utils_copy_tensor();
  if (result)
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Espresso V2 failure: ", 21);
    v5 = strlen(last_error_message);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, last_error_message, v5);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "\n");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
  }

  return result;
}

uint64_t kaldi::AmFusionEncoderInput::FrameDurationMsForAlignment(kaldi::AmFusionEncoderInput *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    v3 = kaldi::quasar::CEFusedAcousticEncoder::FrameSubsamplingFactor(v2);
  }

  else
  {
    v3 = kaldi::quasar::CEFusedAcousticEncoder::FrameSubsamplingFactorFusion(*(this + 8));
  }

  return (*(**(this + 7) + 32))(*(this + 7)) * v3;
}

uint64_t quasar::ComputeAheadFeatInput::ComputeUntilResults(uint64_t a1, uint64_t a2)
{
  v4 = kaldi::MatrixBase<float>::NumRows(*a2);
  v5 = kaldi::MatrixBase<float>::NumCols(*a2);
  do
  {
    if (!kaldi::MatrixBase<float>::NumRows(*a2))
    {
      kaldi::Matrix<float>::Resize(*a2, v4, v5, 0, 0);
    }

    v10 = *(a1 + 8);
    v11 = *(a2 + 16);
    v14[0] = *a2;
    v14[1] = v11;
    v14[2] = *(a2 + 32);
    v12 = (**v10)(v10, v14, v6, v7, v8, v9);
  }

  while (v12 && !kaldi::MatrixBase<float>::NumRows(*a2));
  return v12;
}

void *std::deque<std::shared_ptr<quasar::ComputeAheadFeatInput::Batch>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
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

void sub_1B504DDFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::deque<std::shared_ptr<quasar::ComputeAheadFeatInput::Batch>>::push_back(void *result, __int128 *a2)
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
    v6 = 32 * (v4 - v5) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<std::shared_ptr<quasar::ComputeAheadFeatInput::Batch>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v7 + v3[4];
  }

  v9 = *a2;
  *(*(v5 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8) = *a2;
  if (*(&v9 + 1))
  {
    atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
    v7 = v3[5];
  }

  v3[5] = v7 + 1;
  return result;
}

void *std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *,std::allocator<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *> &>::emplace_back<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

quasar::ComputeAheadFeatInput::Batch *quasar::ComputeAheadFeatInput::Batch::Batch(quasar::ComputeAheadFeatInput::Batch *this)
{
  kaldi::Matrix<float>::Matrix(this);
  kaldi::Matrix<float>::Matrix(v2 + 40);
  kaldi::Matrix<float>::Matrix(this + 80);
  kaldi::Matrix<float>::Matrix(this + 120);
  kaldi::Matrix<float>::Matrix(this + 160);
  kaldi::Matrix<float>::Matrix(this + 200);
  return this;
}

void sub_1B504E09C(_Unwind_Exception *a1)
{
  kaldi::Matrix<float>::~Matrix(v1 + 160);
  kaldi::Matrix<float>::~Matrix(v1 + 120);
  kaldi::Matrix<float>::~Matrix(v1 + 80);
  kaldi::Matrix<float>::~Matrix(v1 + 40);
  kaldi::Matrix<float>::~Matrix(v1);
  _Unwind_Resume(a1);
}

uint64_t quasar::ComputeAheadFeatInput::Compute(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 272))
  {
    v34 = 0;
    v35 = 0;
    (*(*a1 + 40))(a1, &v34);
    v4 = *(a1 + 272);
    if ((*(v4 + 12) & 1) != 0 || *(v4 + 4))
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      *v17 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, "VAD gating is enabled. Need to call NextSegment before asking for features");
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v17);
    }
  }

  v17[0] = (a1 + 48);
  LOBYTE(v17[1]) = 1;
  std::mutex::lock((a1 + 48));
  while (!*(a1 + 200))
  {
    std::condition_variable::wait((a1 + 112), v17);
  }

  v5 = *(a1 + 44);
  v6 = v5 < 1 || *(a1 + 212) < v5;
  v7 = (*(*(a1 + 168) + ((*(a1 + 192) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a1 + 192));
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::deque<std::shared_ptr<quasar::ComputeAheadFeatInput::Batch>>::pop_front((a1 + 160));
  *(a1 + 212) -= kaldi::MatrixBase<float>::NumRows(v9);
  if (kaldi::MatrixBase<float>::NumRows(*a2) >= 1)
  {
    *(a1 + 208) = kaldi::MatrixBase<float>::NumRows(*a2);
  }

  kaldi::Matrix<float>::Swap(*a2, v9);
  v10 = a2[1];
  if (v10)
  {
    kaldi::Matrix<float>::Swap(v10, (v9 + 40));
  }

  v11 = a2[3];
  if (v11)
  {
    kaldi::Matrix<float>::Swap(v11, (v9 + 120));
  }

  v12 = a2[4];
  if (v12)
  {
    kaldi::Matrix<float>::Swap(v12, (v9 + 160));
  }

  v13 = a2[5];
  if (v13)
  {
    kaldi::Matrix<float>::Swap(v13, (v9 + 200));
  }

  if (!v6)
  {
    v14 = *(a1 + 44);
    if (v14 < 1 || *(a1 + 212) < v14)
    {
      std::condition_variable::notify_one((a1 + 112));
    }
  }

  v15 = *(v9 + 240);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (LOBYTE(v17[1]) == 1)
  {
    std::mutex::unlock(v17[0]);
  }

  return v15;
}

void sub_1B504E3A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::OnlineFeatureMatrix::GetNextFeatures(kaldi::OnlineFeatureMatrix *this, clockid_t a2)
{
  if ((*(this + 156) & 1) == 0)
  {
    Seconds = kaldi::Timer::GetSeconds(5, a2);
    v4 = kaldi::MatrixBase<float>::NumRows(this + 32);
    *(this + 157) = v4 != 0;
    memset(v65, 0, 24);
    memset(v64, 0, sizeof(v64));
    memset(v63, 0, sizeof(v63));
    if (v4)
    {
      v5 = kaldi::MatrixBase<float>::NumRows(this + 32);
      v6 = *(this + 4);
      v7 = *(this + 12);
      v8 = kaldi::MatrixBase<float>::NumCols(this + 32);
      v53 = 0;
      v51.__locale_ = (v6 + 4 * v7 * (v5 - 1));
      v52 = v8;
      kaldi::Vector<float>::Resize(v65, v8, 1);
      kaldi::VectorBase<float>::CopyFromVec(v65, &v51.__locale_);
      if (*(this + 169) == 1)
      {
        v9 = kaldi::MatrixBase<float>::NumRows(this + 72);
        v10 = *(this + 9);
        v11 = *(this + 22);
        v12 = kaldi::MatrixBase<float>::NumCols(this + 72);
        v53 = 0;
        v51.__locale_ = (v10 + 4 * v11 * (v9 - 1));
        v52 = v12;
        kaldi::Vector<float>::Resize(v64, v12, 1);
        kaldi::VectorBase<float>::CopyFromVec(v64, &v51.__locale_);
      }

      if (*(this + 168) == 1)
      {
        v13 = kaldi::MatrixBase<float>::NumRows(this + 112);
        v14 = *(this + 14);
        v15 = *(this + 32);
        v16 = kaldi::MatrixBase<float>::NumCols(this + 112);
        v53 = 0;
        v51.__locale_ = (v14 + 4 * v15 * (v13 - 1));
        v52 = v16;
        kaldi::Vector<float>::Resize(v63, v16, 1);
        kaldi::VectorBase<float>::CopyFromVec(v63, &v51.__locale_);
      }
    }

    while (1)
    {
      kaldi::Matrix<float>::Matrix(v62, *(this + 2), *(this + 6), 0, 0);
      kaldi::Matrix<float>::Matrix(v61);
      kaldi::Matrix<float>::Matrix(v60);
      kaldi::Matrix<float>::Matrix(v59);
      kaldi::Matrix<float>::Matrix(v58);
      v17.n128_f64[0] = kaldi::Matrix<float>::Matrix(v57);
      v18 = *(this + 2);
      v51.__locale_ = v62;
      v52 = v61;
      v53 = v60;
      v54 = v59;
      v55 = v58;
      v56 = v57;
      *(this + 156) = (**v18)(v17) ^ 1;
      if (kaldi::g_kaldi_verbose_level >= 4)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(&v51, 4);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "receive am-fusion feature (", 27);
        v20 = kaldi::MatrixBase<float>::NumRows(v59);
        v21 = MEMORY[0x1B8C84C00](v19, v20);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", ", 2);
        v23 = kaldi::MatrixBase<float>::NumCols(v59);
        v24 = MEMORY[0x1B8C84C00](v22, v23);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ")", 1);
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v51);
      }

      if (kaldi::MatrixBase<float>::NumRows(v59) && kaldi::MatrixBase<float>::NumCols(v59))
      {
        kaldi::Matrix<float>::Matrix(&v51);
        std::deque<kaldi::Matrix<float>>::emplace_back<kaldi::Matrix<float>>(this + 55, &v51);
        kaldi::Matrix<float>::~Matrix(&v51);
        v25 = *(this + 60) + *(this + 59) - 1;
        kaldi::Matrix<float>::Swap((*(*(this + 56) + 8 * (v25 / 0x66)) + 40 * (v25 % 0x66)), v59);
      }

      if (kaldi::g_kaldi_verbose_level >= 4)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(&v51, 4);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "receive AED states (", 20);
        v27 = kaldi::MatrixBase<float>::NumRows(v58);
        v28 = MEMORY[0x1B8C84C00](v26, v27);
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ", ", 2);
        v30 = kaldi::MatrixBase<float>::NumCols(v58);
        v31 = MEMORY[0x1B8C84C00](v29, v30);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ")", 1);
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v51);
      }

      if (kaldi::MatrixBase<float>::NumRows(v58) && kaldi::MatrixBase<float>::NumCols(v58))
      {
        kaldi::Matrix<float>::Matrix(&v51);
        std::deque<kaldi::Matrix<float>>::push_back(this + 49, &v51);
        kaldi::Matrix<float>::~Matrix(&v51);
        v32 = *(this + 54) + *(this + 53) - 1;
        kaldi::Matrix<float>::Swap((*(*(this + 50) + 8 * (v32 / 0x66)) + 40 * (v32 % 0x66)), v58);
      }

      if ((*(this + 168) & 1) == 0)
      {
        if (!kaldi::MatrixBase<float>::NumRows(v61))
        {
          goto LABEL_21;
        }

        if ((*(this + 168) & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      v33 = kaldi::MatrixBase<float>::NumRows(v62);
      if (v33 != kaldi::MatrixBase<float>::NumRows(v61))
      {
LABEL_47:
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v51);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "(!has_sil_post_ && next_sil_post.NumRows() == 0) || (has_sil_post_ && next_features.NumRows() == next_sil_post.NumRows())", 121);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v51);
      }

LABEL_21:
      if (*(this + 169))
      {
        goto LABEL_24;
      }

      if (kaldi::MatrixBase<float>::NumRows(v57))
      {
        if ((*(this + 169) & 1) == 0)
        {
          goto LABEL_48;
        }

LABEL_24:
        v34 = kaldi::MatrixBase<float>::NumRows(v62);
        if (v34 != kaldi::MatrixBase<float>::NumRows(v57))
        {
LABEL_48:
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v51);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "(!has_endpointer_score_ && next_ep_feat.NumRows() == 0) || (has_endpointer_score_ && next_features.NumRows() == next_ep_feat.NumRows())", 135);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v51);
        }
      }

      if (kaldi::MatrixBase<float>::NumRows(v62) || (*(this + 156) & 1) != 0 || (*(this + 216) & 1) == 0)
      {
        if (kaldi::MatrixBase<float>::NumRows(v62) >= 1)
        {
          v36 = *(this + 157);
          v37 = kaldi::MatrixBase<float>::NumRows(v62);
          *(this + 38) += kaldi::MatrixBase<float>::NumRows(this + 32) - *(this + 157);
          kaldi::Matrix<float>::Resize(this + 32, (v37 + v36), *(this + 6), 1, 0);
          if (*(this + 157) == 1)
          {
            v38 = *(this + 4);
            v39 = kaldi::MatrixBase<float>::NumCols(this + 32);
            v53 = 0;
            v51.__locale_ = v38;
            v52 = v39;
            kaldi::VectorBase<float>::CopyFromVec(&v51, v65);
            v40 = kaldi::MatrixBase<float>::NumRows(v62);
            kaldi::SubMatrix<float>::SubMatrix(&v51, this + 32, 1, v40, 0, *(this + 6));
            kaldi::MatrixBase<float>::CopyFromMat<float>(&v51, v62, 111);
            quasar::Bitmap::~Bitmap(&v51);
          }

          else
          {
            kaldi::MatrixBase<float>::CopyFromMat<float>(this + 8, v62, 111);
          }

          if (*(this + 169) == 1)
          {
            v41 = kaldi::MatrixBase<float>::NumCols(v57);
            kaldi::Matrix<float>::Resize(this + 72, (v37 + v36), v41, 1, 0);
            if (*(this + 157) == 1)
            {
              v42 = *(this + 9);
              v43 = kaldi::MatrixBase<float>::NumCols(this + 72);
              v53 = 0;
              v51.__locale_ = v42;
              v52 = v43;
              kaldi::VectorBase<float>::CopyFromVec(&v51, v64);
              LODWORD(v42) = kaldi::MatrixBase<float>::NumRows(v57);
              v44 = kaldi::MatrixBase<float>::NumCols(v57);
              kaldi::SubMatrix<float>::SubMatrix(&v51, this + 72, 1, v42, 0, v44);
              kaldi::MatrixBase<float>::CopyFromMat<float>(&v51, v57, 111);
              quasar::Bitmap::~Bitmap(&v51);
            }

            else
            {
              kaldi::MatrixBase<float>::CopyFromMat<float>(this + 18, v57, 111);
            }
          }

          if (*(this + 168) == 1)
          {
            v45 = kaldi::MatrixBase<float>::NumCols(v61);
            kaldi::Matrix<float>::Resize(this + 112, (v37 + v36), v45, 1, 0);
            if (*(this + 157) == 1)
            {
              v46 = *(this + 14);
              v47 = kaldi::MatrixBase<float>::NumCols(this + 112);
              v53 = 0;
              v51.__locale_ = v46;
              v52 = v47;
              kaldi::VectorBase<float>::CopyFromVec(&v51, v63);
              v48 = kaldi::MatrixBase<float>::NumRows(v61);
              v49 = kaldi::MatrixBase<float>::NumCols(v61);
              kaldi::SubMatrix<float>::SubMatrix(&v51, this + 112, 1, v48, 0, v49);
              kaldi::MatrixBase<float>::CopyFromMat<float>(&v51, v61, 111);
              quasar::Bitmap::~Bitmap(&v51);
            }

            else
            {
              kaldi::MatrixBase<float>::CopyFromMat<float>(this + 28, v61, 111);
            }
          }

          if (*(this + 12) == 1)
          {
            kaldi::quasar::ConvertDenseMatrixToSparseMatrixByMinimumValue<float>(v62, &v51, -11.513);
            std::deque<kaldi::quasar::SparseMatrix<float>>::push_back(this + 43, &v51);
            std::__tree<int>::destroy(&v53, v54);
          }
        }

        v35 = 0;
      }

      else
      {
        v35 = 1;
      }

      kaldi::Matrix<float>::~Matrix(v57);
      kaldi::Matrix<float>::~Matrix(v58);
      kaldi::Matrix<float>::~Matrix(v59);
      kaldi::Matrix<float>::~Matrix(v60);
      kaldi::Matrix<float>::~Matrix(v61);
      kaldi::Matrix<float>::~Matrix(v62);
      if ((v35 & 1) == 0)
      {
        *(this + 20) = kaldi::Timer::GetSeconds(5, v50) - Seconds + *(this + 20);
        kaldi::Vector<float>::Destroy(v63);
        kaldi::Vector<float>::Destroy(v64);
        kaldi::Vector<float>::Destroy(v65);
        return;
      }
    }
  }
}

void sub_1B504ECF4(_Unwind_Exception *a1)
{
  kaldi::Matrix<float>::~Matrix(&v3);
  kaldi::Matrix<float>::~Matrix(&v4);
  kaldi::Matrix<float>::~Matrix(&v5);
  kaldi::Matrix<float>::~Matrix(&v6);
  kaldi::Matrix<float>::~Matrix(v1 - 256);
  kaldi::Matrix<float>::~Matrix(v1 - 216);
  kaldi::Vector<float>::Destroy(v1 - 176);
  kaldi::Vector<float>::Destroy(v1 - 152);
  kaldi::Vector<float>::Destroy(v1 - 128);
  _Unwind_Resume(a1);
}

void *std::deque<kaldi::Matrix<float>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x66;
  v3 = v1 - 102;
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

void sub_1B504EEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::OnlineFeatureMatrix::IsValidFrame(kaldi::OnlineFeatureMatrix *this, signed int a2, int a3)
{
  v6 = *(this + 38);
  if ((kaldi::MatrixBase<float>::NumRows(this + 32) + v6) > a2)
  {
    goto LABEL_2;
  }

  if (!a3)
  {
    v8 = *(this + 156) ^ 1;
    return v8 & 1;
  }

  kaldi::OnlineFeatureMatrix::GetNextFeatures(this, v7);
  v9 = *(this + 38);
  if ((kaldi::MatrixBase<float>::NumRows(this + 32) + v9) > a2)
  {
LABEL_2:
    v8 = 1;
  }

  else
  {
    if (*(this + 156))
    {
LABEL_9:
      v8 = 0;
      return v8 & 1;
    }

    v8 = 0;
    if (*(this + 216) == 1 && kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Unexpected point reached in code: ", 34);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "possibly you are skipping frames?", 33);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v12);
      goto LABEL_9;
    }
  }

  return v8 & 1;
}

void quasar::SpeechRecognizer::runSyncUtterance(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v198 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 128))
  {
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v184 = 0u;
    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    __p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&__p, "SpeechRecognizer must be initialized before calling runSync()");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&__p);
  }

  if (**a2 != *(*a2 + 8))
  {
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v184 = 0u;
    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    __p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&__p, "Symbol table list passed to runSyncUtterance() must start empty");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&__p);
  }

  v6 = a1;
  v7 = *(*(a1 + 280) + 200);
  *(a1 + 344) = kaldi::Timer::GetSeconds(5, a2) - *v7;
  *(v6 + 352) = kaldi::Timer::ElapsedCPU(*(*(v6 + 280) + 200), v8);
  v9 = *(*(v6 + 280) + 200);
  *(v6 + 360) = kaldi::Timer::GetSeconds(0x10, v10) - *(v9 + 16);
  v11 = *(a4 + 232);
  if (v11)
  {
    if (v12)
    {
      v13 = *(a4 + 240);
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      quasar::ResultStreamStabilizer::prepareForNextUtterance(v12);
    }
  }

  v14 = (*(**(*(a4 + 80) + 16) + 24))(*(*(a4 + 80) + 16));
  v15 = *(v6 + 280);
  *(v15 + 4) = *(a4 + 184);
  v16 = *(a4 + 188);
  *(v15 + 8) = v16;
  *(v15 + 12) = *(a4 + 200) + v16 * v14;
  *v15 = 1000 * *(v6 + 300);
  *(v15 + 20) = *(a4 + 204);
  v17 = *(v6 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "uttNum");
  std::to_string(&v197, *(a4 + 184));
  quasar::SpeechRequestResultData::addDump(v17, &__p, &v197);
  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v197.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v175) < 0)
  {
    operator delete(__p);
  }

  v18 = *(v6 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "jsonConfigFilePath");
  quasar::SpeechRequestResultData::addDump(v18, &__p, (v6 + 80));
  if (SBYTE7(v175) < 0)
  {
    operator delete(__p);
  }

  v19 = *(v6 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "modelVersion");
  quasar::SystemConfig::getMainModelVersion(*(v6 + 48), &v197);
  quasar::SpeechRequestResultData::addDump(v19, &__p, &v197);
  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v197.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v175) < 0)
  {
    operator delete(__p);
  }

  v20 = *(v6 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "userId");
  quasar::SpeechRequestResultData::addDump(v20, &__p, (*(*(v6 + 280) + 24) + 104));
  if (SBYTE7(v175) < 0)
  {
    operator delete(__p);
  }

  v21 = *(v6 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "sessionId");
  quasar::SpeechRequestResultData::addDump(v21, &__p, (*(*(v6 + 280) + 24) + 128));
  if (SBYTE7(v175) < 0)
  {
    operator delete(__p);
  }

  v22 = *(v6 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "taskType");
  quasar::SpeechRequestResultData::addDump(v22, &__p, (*(*(v6 + 280) + 24) + 80));
  if (SBYTE7(v175) < 0)
  {
    operator delete(__p);
  }

  v23 = *(v6 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "deviceId");
  quasar::SpeechRequestResultData::addDump(v23, &__p, (*(*(v6 + 280) + 24) + 152));
  if (SBYTE7(v175) < 0)
  {
    operator delete(__p);
  }

  v24 = *(v6 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "recognizerComponents");
  quasar::SpeechRequestResultData::addDump(v24, &__p, (*(a4 + 8) + 104));
  if (SBYTE7(v175) < 0)
  {
    operator delete(__p);
  }

  v25 = *(v6 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "farField");
  std::to_string(&v197, *(*(*(v6 + 280) + 24) + 34));
  quasar::SpeechRequestResultData::addDump(v25, &__p, &v197);
  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v197.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v175) < 0)
  {
    operator delete(__p);
  }

  v26 = *(v6 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "bluetoothDeviceId");
  quasar::SpeechRequestResultData::addDumpAA(v26, &__p, (*(*(v6 + 280) + 24) + 200));
  if (SBYTE7(v175) < 0)
  {
    operator delete(__p);
  }

  v27 = *(v6 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "atypicalSpeech");
  std::to_string(&v197, *(*(*(v6 + 280) + 24) + 722));
  quasar::SpeechRequestResultData::addDumpAA(v27, &__p, &v197);
  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v197.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v175) < 0)
  {
    operator delete(__p);
  }

  v28 = *(v6 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "enableWhisperDetection");
  std::to_string(&v197, *(*(*(v6 + 280) + 24) + 35));
  quasar::SpeechRequestResultData::addDump(v28, &__p, &v197);
  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v197.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v175) < 0)
  {
    operator delete(__p);
  }

  v29 = *(v6 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "numLmeDataStreams");
  quasar::SpeechRequestResultData::addDumpAA(v29, &__p, 1, ((*(*(v6 + 280) + 168) - *(*(v6 + 280) + 160)) >> 4));
  if (SBYTE7(v175) < 0)
  {
    operator delete(__p);
  }

  v30 = *(v6 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "utteranceDetection");
  LOBYTE(v31) = *(*(*(v6 + 280) + 24) + 36);
  quasar::SpeechRequestResultData::addDumpAA(v30, &__p, 1, v31);
  if (SBYTE7(v175) < 0)
  {
    operator delete(__p);
  }

  v32 = *(v6 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "utteranceConcatenation");
  std::to_string(&v197, *(*(*(v6 + 280) + 24) + 37));
  quasar::SpeechRequestResultData::addDump(v32, &__p, &v197);
  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v197.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v175) < 0)
  {
    operator delete(__p);
  }

  v33 = *(v6 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "epExtraDelay");
  EndPointerExtraDelay = quasar::SpeechRequestData::getEndPointerExtraDelay(*(v6 + 280));
  std::to_string(&v197, EndPointerExtraDelay);
  quasar::SpeechRequestResultData::addDump(v33, &__p, &v197);
  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v197.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v175) < 0)
  {
    operator delete(__p);
  }

  v35 = *(v6 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "InputOrigin");
  InputOrigin = quasar::SpeechRequestData::getInputOrigin(*(v6 + 280));
  quasar::SpeechRequestResultData::addDumpAA(v35, &__p, InputOrigin);
  if (SBYTE7(v175) < 0)
  {
    operator delete(__p);
  }

  v37 = *(v6 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "highPriority");
  std::to_string(&v197, *(*(*(v6 + 280) + 24) + 51));
  quasar::SpeechRequestResultData::addDump(v37, &__p, &v197);
  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v197.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v175) < 0)
  {
    operator delete(__p);
  }

  v152 = a4;
  if (quasar::gLogLevel >= 4)
  {
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v184 = 0u;
    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    __p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "modelVersion=", 13);
    quasar::SystemConfig::getMainModelVersion(*(v6 + 48), &v197);
    if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &v197;
    }

    else
    {
      v39 = v197.__r_.__value_.__r.__words[0];
    }

    if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v197.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v197.__r_.__value_.__l.__size_;
    }

    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v39, size);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " LME DataStreams=", 17);
    v43 = MEMORY[0x1B8C84C30](v42, (*(*(v6 + 280) + 168) - *(*(v6 + 280) + 160)) >> 4);
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, " samplingRate=", 14);
    v45 = MEMORY[0x1B8C84C10](v44, *(*(*(v6 + 280) + 24) + 24));
    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " taskType=", 10);
    v47 = *(*(v6 + 280) + 24);
    v50 = *(v47 + 80);
    v48 = v47 + 80;
    v49 = v50;
    v51 = *(v48 + 23);
    if (v51 >= 0)
    {
      v52 = v48;
    }

    else
    {
      v52 = v49;
    }

    if (v51 >= 0)
    {
      v53 = *(v48 + 23);
    }

    else
    {
      v53 = *(v48 + 8);
    }

    v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v52, v53);
    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, " deviceId=", 10);
    v56 = *(*(v6 + 280) + 24);
    v59 = *(v56 + 152);
    v57 = v56 + 152;
    v58 = v59;
    v60 = *(v57 + 23);
    if (v60 >= 0)
    {
      v61 = v57;
    }

    else
    {
      v61 = v58;
    }

    if (v60 >= 0)
    {
      v62 = *(v57 + 23);
    }

    else
    {
      v62 = *(v57 + 8);
    }

    v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, v61, v62);
    v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, " farField=", 10);
    v65 = MEMORY[0x1B8C84BD0](v64, *(*(*(v6 + 280) + 24) + 34));
    v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, " enableWhisperDetection=", 24);
    v67 = MEMORY[0x1B8C84BD0](v66, *(*(*(v6 + 280) + 24) + 35));
    v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, " endpointerExtraDelay=", 22);
    v69 = quasar::SpeechRequestData::getEndPointerExtraDelay(*(v6 + 280));
    v70 = MEMORY[0x1B8C84BD0](v68, v69);
    v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, " inputOrigin=", 13);
    v72 = quasar::SpeechRequestData::getInputOrigin(*(v6 + 280));
    v73 = *(v72 + 23);
    if (v73 >= 0)
    {
      v74 = v72;
    }

    else
    {
      v74 = *v72;
    }

    if (v73 >= 0)
    {
      v75 = *(v72 + 23);
    }

    else
    {
      v75 = *(v72 + 8);
    }

    v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, v74, v75);
    v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, " highPriority=", 14);
    v78 = MEMORY[0x1B8C84BD0](v77, *(*(*(v6 + 280) + 24) + 51));
    v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, " utteranceStartMillis=", 22);
    v80 = MEMORY[0x1B8C84C10](v79, *(*(v6 + 280) + 12));
    v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, " vadGatingLevel=", 16);
    v82 = MEMORY[0x1B8C84C00](v81, *(*(*(v6 + 280) + 24) + 724));
    v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, " segmentationLatency=", 21);
    v84 = MEMORY[0x1B8C84C00](v83, *(*(*(v6 + 280) + 24) + 728));
    std::ios_base::getloc((v84 + *(*v84 - 24)));
    v85 = std::locale::use_facet(&v194, MEMORY[0x1E69E5318]);
    (v85->__vftable[2].~facet_0)(v85, 10);
    std::locale::~locale(&v194);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v197.__r_.__value_.__l.__data_);
    }

    quasar::QuasarInfoMessage::~QuasarInfoMessage(&__p);
  }

  v86 = *(*(v6 + 280) + 24);
  if ((*(v86 + 199) & 0x8000000000000000) != 0)
  {
    if (!*(v86 + 184))
    {
LABEL_94:
      v89 = *(v6 + 552);
      std::string::basic_string[abi:ne200100]<0>(&__p, "runSync:initTime");
      v90 = *(*(v6 + 280) + 200);
      Seconds = kaldi::Timer::GetSeconds(5, v91);
      std::to_string(&v197, Seconds - *v90 - *(v6 + 344));
      quasar::SpeechRequestResultData::addDump(v89, &__p, &v197);
      if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v197.__r_.__value_.__l.__data_);
      }

      if (SBYTE7(v175) < 0)
      {
        operator delete(__p);
      }

      v93 = *(*(a4 + 8) + 88);
      v94 = -v93;
      do
      {
        v95 = v93;
        v96 = v94;
        v97 = *(*(a4 + 8) + 80);
        if (v93 == v97)
        {
          goto LABEL_102;
        }

        v93 -= 16;
        v98 = (*(**(v95 - 16) + 72))(*(v95 - 16));
        v94 = v96 + 16;
      }

      while (!v98);
      v97 = *(*(a4 + 8) + 80);
LABEL_102:
      if (v95 == v97)
      {
        v189 = 0u;
        v190 = 0u;
        v187 = 0u;
        v188 = 0u;
        v185 = 0u;
        v186 = 0u;
        v183 = 0u;
        v184 = 0u;
        v181 = 0u;
        v182 = 0u;
        v179 = 0u;
        v180 = 0u;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        __p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "There is no decoder which affects recognition, this must be a configuration error.", 82);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&__p);
      }

      v100 = *v97;
      v99 = *(v97 + 8);
      if (v99)
      {
        atomic_fetch_add_explicit((v99 + 8), 1uLL, memory_order_relaxed);
        v97 = *(*(a4 + 8) + 80);
      }

      v195 = 0;
      v194.__locale_ = 0;
      v196 = 0;
      std::vector<std::shared_ptr<quasar::Decoder>>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<quasar::Decoder> const*>,std::__wrap_iter<std::shared_ptr<quasar::Decoder> const*>>(&v194, v97 + 16, -v96, (-16 - v96 - v97) >> 4);
      v101 = *(v6 + 552);
      std::string::basic_string[abi:ne200100]<0>(&__p, "eagerRequested");
      std::to_string(&v197, *(*(*(v6 + 280) + 24) + 48));
      quasar::SpeechRequestResultData::addDump(v101, &__p, &v197);
      if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v197.__r_.__value_.__l.__data_);
      }

      if (SBYTE7(v175) < 0)
      {
        operator delete(__p);
      }

      if (*(*(*(v6 + 280) + 24) + 48) != 1)
      {
LABEL_132:
        locale = v194.__locale_;
        v106 = v195;
        while (1)
        {
          if (locale == v106)
          {
            goto LABEL_148;
          }

          if (*(*(*(v6 + 280) + 24) + 48) == 1 && ((*(**locale + 80))() & 1) == 0)
          {
            break;
          }

          locale += 2;
        }

        if (quasar::gLogLevel >= 4)
        {
          v189 = 0u;
          v190 = 0u;
          v187 = 0u;
          v188 = 0u;
          v185 = 0u;
          v186 = 0u;
          v183 = 0u;
          v184 = 0u;
          v181 = 0u;
          v182 = 0u;
          v179 = 0u;
          v180 = 0u;
          v177 = 0u;
          v178 = 0u;
          v175 = 0u;
          v176 = 0u;
          __p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
          v107 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Eager disabled: not supported by second-pass decoder: ", 54);
          kaldi::quasar::Vocab::OOvWord(*locale, &v197);
          if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v108 = &v197;
          }

          else
          {
            v108 = v197.__r_.__value_.__r.__words[0];
          }

          if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v109 = HIBYTE(v197.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v109 = v197.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v107, v108, v109);
          if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v197.__r_.__value_.__l.__data_);
          }

          quasar::QuasarInfoMessage::~QuasarInfoMessage(&__p);
        }

        *(*(*(v6 + 280) + 24) + 48) = 0;
LABEL_148:
        v110 = *(v6 + 552);
        std::string::basic_string[abi:ne200100]<0>(&__p, "eagerUsed");
        std::to_string(&v197, *(*(*(v6 + 280) + 24) + 48));
        quasar::SpeechRequestResultData::addDump(v110, &__p, &v197);
        v150 = v6 + 48;
        if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v197.__r_.__value_.__l.__data_);
        }

        v151 = a2;
        if (SBYTE7(v175) < 0)
        {
          operator delete(__p);
        }

        *(*(v6 + 552) + 116) = *(*(*(v6 + 280) + 24) + 48);
        v192 = 0;
        __src = 0;
        v193 = 0;
        v111 = v194.__locale_;
        v112 = v195;
        v153 = v6;
        if (v194.__locale_ != v195)
        {
          v113 = 0;
          do
          {
            v154 = *v111;
            v114 = *(v111 + 1);
            if (v114)
            {
              atomic_fetch_add_explicit((*(v111 + 1) + 16), 1uLL, memory_order_relaxed);
            }

            if (v113 >= v193)
            {
              v115 = __src;
              v116 = v113 - __src;
              v117 = (v113 - __src) >> 4;
              v118 = v117 + 1;
              if ((v117 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v119 = v193 - __src;
              if ((v193 - __src) >> 3 > v118)
              {
                v118 = v119 >> 3;
              }

              if (v119 >= 0x7FFFFFFFFFFFFFF0)
              {
                v120 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v120 = v118;
              }

              *&v176 = &__src;
              if (v120)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<quasar::FeatureExtractor>>>(&__src, v120);
              }

              v121 = v117;
              v122 = (16 * v117);
              v123 = &v122[-v121];
              *v122 = v154;
              v113 = (v122 + 1);
              memcpy(v123, v115, v116);
              v124 = __src;
              v125 = v193;
              __src = v123;
              v192 = v113;
              v193 = 0;
              *&v175 = v124;
              *(&v175 + 1) = v125;
              *(&__p + 1) = v124;
              *&__p = v124;
              std::__split_buffer<std::weak_ptr<quasar::Decoder>>::~__split_buffer(&__p);
              v6 = v153;
            }

            else
            {
              *v113 = v154;
              *(v113 + 1) = v114;
              v113 += 16;
            }

            v192 = v113;
            v111 = (v111 + 16);
          }

          while (v111 != v112);
        }

        v126 = *(v6 + 264);
        if (v126 && *(v152 + 184))
        {
          quasar::MultiChainMultiAudioBuffer::synchronizeSecondaryBuffersToPrimary(v126);
        }

        v127 = quasar::SpeechRequestData::getInputOrigin(*(v6 + 280));
        v128 = *(v127 + 23);
        if (v128 < 0)
        {
          if (*(v127 + 8) != 12)
          {
            goto LABEL_180;
          }

          v127 = *v127;
        }

        else if (v128 != 12)
        {
          goto LABEL_180;
        }

        if (*v127 == 0x6972546563696F56 && *(v127 + 8) == 1919248231)
        {
          v133 = 1;
          goto LABEL_193;
        }

LABEL_180:
        v130 = quasar::SpeechRequestData::getInputOrigin(*(v6 + 280));
        v131 = *(v130 + 23);
        if (v131 < 0)
        {
          if (*(v130 + 8) != 12)
          {
LABEL_191:
            v133 = 0;
            goto LABEL_193;
          }

          v130 = *v130;
        }

        else if (v131 != 12)
        {
          goto LABEL_191;
        }

        v133 = *v130 == 0x536F546573696152 && *(v130 + 8) == 1801545072;
LABEL_193:
        shouldDisablePreserveCjTokenizationForClient = quasar::shouldDisablePreserveCjTokenizationForClient((*(*(v6 + 280) + 24) + 760));
        if (quasar::gLogLevel >= 5)
        {
          v189 = 0u;
          v190 = 0u;
          v187 = 0u;
          v188 = 0u;
          v185 = 0u;
          v186 = 0u;
          v183 = 0u;
          v184 = 0u;
          v181 = 0u;
          v182 = 0u;
          v179 = 0u;
          v180 = 0u;
          v177 = 0u;
          v178 = 0u;
          v175 = 0u;
          v176 = 0u;
          __p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
          v135 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "disablePreserveCjTokenization=", 30);
          MEMORY[0x1B8C84BD0](v135, shouldDisablePreserveCjTokenizationForClient);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(&__p);
        }

        v136 = *(v152 + 56);
        v172 = *(v152 + 48);
        v173 = v136;
        if (v136)
        {
          atomic_fetch_add_explicit(&v136->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v137 = *(v152 + 72);
        v170 = *(v152 + 64);
        v171 = v137;
        if (v137)
        {
          atomic_fetch_add_explicit(&v137->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v138 = *(v152 + 88);
        v168 = *(v152 + 80);
        v169 = v138;
        if (v138)
        {
          atomic_fetch_add_explicit(&v138->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v139 = *(v152 + 104);
        v166 = *(v152 + 96);
        v167 = v139;
        if (v139)
        {
          atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v140 = *(v152 + 8);
        v142 = *(v140 + 64);
        v141 = *(v140 + 72);
        v164 = v142;
        v165 = v141;
        if (v141)
        {
          atomic_fetch_add_explicit(&v141->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v143 = *(v152 + 120);
        v162 = *(v152 + 112);
        v163 = v143;
        if (v143)
        {
          atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v144 = *(v6 + 544);
        v160 = *(v6 + 536);
        v161 = v144;
        if (v144)
        {
          atomic_fetch_add_explicit(&v144->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v145 = *(v6 + 280);
        v146 = *(v145 + 3);
        v147 = *(v6 + 528);
        v158 = *(v6 + 520);
        v159 = v147;
        if (v147)
        {
          atomic_fetch_add_explicit(&v147->__shared_owners_, 1uLL, memory_order_relaxed);
          v145 = *(v6 + 280);
        }

        v148 = *(v152 + 250);
        quasar::SpeechRequestData::getLeftContext(v145, v157);
        quasar::SpeechRequestData::getLeftContextForItn(*(v6 + 280), v156);
        quasar::SpeechRequestData::getRightContextForItn(*(v6 + 280), v155);
        quasar::DecoderPassData::DecoderPassData(&__p, &v172, &v170, &v168, &v166, &v164, &v162, 1, 1, &__src, &v160, v146 + 56, &v158, 4, v148, v157, v156, v155, *(v152 + 251), v133, (*(*v150 + 1560) + 24), shouldDisablePreserveCjTokenizationForClient);
        v197.__r_.__value_.__r.__words[0] = v155;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v197);
        v197.__r_.__value_.__r.__words[0] = v156;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v197);
        v197.__r_.__value_.__r.__words[0] = v157;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v197);
        if (v159)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v159);
        }

        if (v161)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v161);
        }

        if (v163)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v163);
        }

        if (v165)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v165);
        }

        if (v167)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v167);
        }

        if (v169)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v169);
        }

        if (v171)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v171);
        }

        if (v173)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v173);
        }

        v149 = *(v151 + 8);
        if (v149)
        {
          atomic_fetch_add_explicit((v149 + 8), 1uLL, memory_order_relaxed);
        }

        quasar::SpeechRecognizer::initializeDecoderChainOutput();
      }

      if ((*(*v100 + 80))(v100))
      {
        if (*(*(*(v6 + 280) + 24) + 48) & 1) == 0 || !(*(*v100 + 88))(v100) || ((*(**(a4 + 96) + 56))(*(a4 + 96)))
        {
          goto LABEL_132;
        }

        if (quasar::gLogLevel < 4)
        {
          goto LABEL_131;
        }

        v189 = 0u;
        v190 = 0u;
        v187 = 0u;
        v188 = 0u;
        v185 = 0u;
        v186 = 0u;
        v183 = 0u;
        v184 = 0u;
        v181 = 0u;
        v182 = 0u;
        v179 = 0u;
        v180 = 0u;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        __p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
        v102 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Eager disabled: silence posterior required but not available: ", 62);
        kaldi::quasar::Vocab::OOvWord(v100, &v197);
        if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v103 = &v197;
        }

        else
        {
          v103 = v197.__r_.__value_.__r.__words[0];
        }

        if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v104 = HIBYTE(v197.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v104 = v197.__r_.__value_.__l.__size_;
        }
      }

      else
      {
        if (quasar::gLogLevel < 4)
        {
LABEL_131:
          *(*(*(v6 + 280) + 24) + 48) = 0;
          goto LABEL_132;
        }

        v189 = 0u;
        v190 = 0u;
        v187 = 0u;
        v188 = 0u;
        v185 = 0u;
        v186 = 0u;
        v183 = 0u;
        v184 = 0u;
        v181 = 0u;
        v182 = 0u;
        v179 = 0u;
        v180 = 0u;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        __p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
        v102 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Eager disabled: not supported by first-pass decoder: ", 53);
        kaldi::quasar::Vocab::OOvWord(v100, &v197);
        if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v103 = &v197;
        }

        else
        {
          v103 = v197.__r_.__value_.__r.__words[0];
        }

        if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v104 = HIBYTE(v197.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v104 = v197.__r_.__value_.__l.__size_;
        }
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v102, v103, v104);
      if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v197.__r_.__value_.__l.__data_);
      }

      quasar::QuasarInfoMessage::~QuasarInfoMessage(&__p);
      goto LABEL_131;
    }
  }

  else if (!*(v86 + 199))
  {
    goto LABEL_94;
  }

  if (quasar::gLogLevel >= 4)
  {
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v184 = 0u;
    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    __p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "You have provided a reference transcript, which will trigger error-blaming (if specified in ", 92);
    v88 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, "the config file). This is an EXPERIMENTAL feature that uses lots of memory and incurs lots of ", 94);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, "latency!", 8);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&__p);
  }

  goto LABEL_94;
}