void EARLogger::initializeLogging(EARLogger *this)
{
  if (EARLogger::loggingIsInitialized != -1)
  {
    EARLogger::initializeLogging();
  }
}

void EARLogger::setQuasarLogLevelToSystemDefault(EARLogger *this)
{
  oslog = EARLogger::QuasarOSLogger(this);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    v1 = 1;
    v2 = 5;
LABEL_7:
    v3 = oslog;
LABEL_8:
    quasar::gLogLevel = v2;
    kaldi::g_kaldi_verbose_level = v1;
    goto LABEL_9;
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    v1 = 0;
    v2 = 4;
    goto LABEL_7;
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v1 = -1;
    v2 = 2;
    goto LABEL_7;
  }

  v4 = os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
  v3 = oslog;
  if (v4)
  {
    v1 = -1;
    v2 = 1;
    goto LABEL_8;
  }

LABEL_9:
}

id EARLogger::QuasarOSLogger(EARLogger *this)
{
  if ((atomic_load_explicit(qword_1EB90B7C8, memory_order_acquire) & 1) == 0)
  {
    EARLogger::QuasarOSLogger();
  }

  v2 = _MergedGlobals_6;

  return v2;
}

void EARLogger::QuasarOSLogger()
{
  if (__cxa_guard_acquire(qword_1EB90B7C8))
  {
    _MergedGlobals_6 = os_log_create("com.apple.siri", "quasar");

    __cxa_guard_release(qword_1EB90B7C8);
  }
}

void ___ZN9EARLogger17initializeLoggingEv_block_invoke(EARLogger *this)
{
  quasar::QuasarFatalMessage::logger = EARLogger::QuasarOSLogger_FAULT;
  kaldi::KaldiErrorMessage::g_logger = EARLogger::QuasarOSLogger_FAULT;
  quasar::QuasarExceptionMessage::logger = EARLogger::QuasarOSLogger_FAULT;
  quasar::QuasarErrorMessage::logger = EARLogger::QuasarOSLogger_FAULT;
  quasar::QuasarWarnMessage::logger = EARLogger::QuasarOSLogger_FAULT;
  kaldi::KaldiWarnMessage::g_logger = EARLogger::QuasarOSLogger_FAULT;
  quasar::QuasarProdInfoMessage::logger = EARLogger::QuasarOSLogger_INFO;
  quasar::QuasarInfoMessage::logger = EARLogger::QuasarOSLogger_INFO;
  kaldi::KaldiLogMessage::g_logger = EARLogger::QuasarOSLogger_INFO;
  quasar::QuasarDebugMessage::logger = EARLogger::QuasarOSLogger_DEBUG;
  quasar::QuasarTraceMessage::logger = EARLogger::QuasarOSLogger_DEBUG;
  kaldi::KaldiVlogMessage::g_logger = quasar::QuasarTraceMessage::logKaldiTrace;
  EARLogger::setQuasarLogLevelToSystemDefault(this);
}

void sub_1B501F264(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_1B501F3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a9);
  *(v18 - 40) = v17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v18 - 40));
  quasar::SystemConfig::~SystemConfig(&a17);
  _Unwind_Resume(a1);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void quasar::SystemConfig::SystemConfig(quasar::SystemConfig *this)
{
  *this = &unk_1F2D11F50;
  quasar::SystemConfig::SystemConfigInfo::SystemConfigInfo((this + 8));
  *(this + 105) = 0;
  *(this + 824) = 0u;
  _ZNSt3__115allocate_sharedB8ne200100IN6quasar11ModelLoaderENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B501F648(_Unwind_Exception *a1)
{
  if (v1[847] < 0)
  {
    operator delete(*v3);
  }

  quasar::SystemConfig::SystemConfigInfo::~SystemConfigInfo(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void *quasar::filesystem::Path::Path(void *this)
{
  *this = &unk_1F2CFAA28;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double quasar::PTree::PTree(quasar::PTree *this)
{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0;
  return result;
}

void *_ZNSt3__120__shared_ptr_emplaceIN6quasar11ModelLoaderENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFAA58;
  quasar::ModelLoader::ModelLoader((a1 + 3));
  return a1;
}

double quasar::ModelLoader::ModelLoader(quasar::ModelLoader *this)
{
  *this = &unk_1F2D383E0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 1065353216;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 1065353216;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 50) = 1065353216;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 60) = 1065353216;
  *(this + 70) = 1065353216;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 80) = 1065353216;
  *(this + 90) = 1065353216;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 100) = 1065353216;
  *(this + 110) = 1065353216;
  *(this + 62) = 0;
  *(this + 63) = 0;
  *(this + 475) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 64) = 850045863;
  *(this + 154) = 1065353216;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 561) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 520) = 0u;
  return result;
}

uint64_t quasar::SystemConfig::readJsonFile(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!*(a4 + 24))
  {
    goto LABEL_24;
  }

  IsInternalBuild = kaldi::quasar::IsInternalBuild(a1);
  if (!IsInternalBuild)
  {
    goto LABEL_21;
  }

  v11 = kaldi::quasar::ProcessName(IsInternalBuild);
  v12 = *(v11 + 23);
  if ((v12 & 0x80) != 0)
  {
    v16 = *(v11 + 8);
    if (v16 != 6)
    {
      if (v16 == 10 && **v11 == 0x697263736E617274 && *(*v11 + 8) == 25954)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }

    v11 = *v11;
    goto LABEL_16;
  }

  if (v12 == 6)
  {
LABEL_16:
    v13 = *(v11 + 4);
    v14 = *v11 == 1702126456;
    v15 = 29811;
LABEL_17:
    if (v14 && v13 == v15)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (v12 == 10)
  {
    v13 = *(v11 + 8);
    v14 = *v11 == 0x697263736E617274;
    v15 = 25954;
    goto LABEL_17;
  }

LABEL_21:
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
    v26 = 0u;
    memset(__str, 0, sizeof(__str));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__str);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__str, "Key-value config overrides are unsupported and will be ignored", 62);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(__str);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::clear(a4);
LABEL_24:
  quasar::SystemConfig::simpleReadJson(a1, a2, a4, a6);
  if (*(a1 + 736))
  {
    quasar::SystemConfig::getModelVersion(a1, __str);
    std::string::operator=((a1 + 864), __str);
    if ((__str[23] & 0x80000000) != 0)
    {
      operator delete(*__str);
    }

    kaldi::quasar::Vocab::OOvWord((a1 + 40), __str);
    v19 = (a1 + 888);
    if (*(a1 + 911) < 0)
    {
      operator delete(*v19);
    }

    *v19 = *__str;
    *(a1 + 904) = *&__str[16];
    if (*(a1 + 736) == 1)
    {
      SpeechModelInfo = quasar::SystemConfig::getSpeechModelInfo(a1);
      quasar::SpeechModelInfo::operator=(a1 + 912, SpeechModelInfo);
    }
  }

  v21 = quasar::SystemConfig::checkConfigFileVersion(a1);
  v22 = v21;
  if (v21 == 2)
  {
    *(a1 + 1552) = 0;
  }

  else
  {
    if (*a3 != a3[1])
    {
      quasar::SystemConfig::SystemConfig(__str);
    }

    return v21;
  }

  return v22;
}

void *quasar::filesystem::Path::Path(void *a1, __int128 *a2)
{
  *a1 = &unk_1F2CFAA28;
  v3 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

void quasar::filesystem::system_complete(quasar::filesystem *this@<X0>, void *a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&pn, *(this + 1), *(this + 2));
  }

  else
  {
    pn = *(this + 8);
  }

  v10.__pn_ = pn;
  if (std::__fs::filesystem::path::__root_directory(&v10).__size_)
  {
    *a2 = &unk_1F2CFAA28;
    v5 = (a2 + 1);
    if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(v5, *(this + 1), *(this + 2));
    }

    else
    {
      *&v5->__r_.__value_.__l.__data_ = *(this + 8);
      v5->__r_.__value_.__r.__words[2] = *(this + 3);
    }
  }

  else
  {
    std::__fs::filesystem::__current_path(&v7, 0);
    std::__fs::filesystem::operator/[abi:ne200100](&v10, &v7, &__p);
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = __p.__pn_;
    }

    *a2 = &unk_1F2CFAA28;
    v6 = (a2 + 1);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v6, pn.__r_.__value_.__l.__data_, pn.__r_.__value_.__l.__size_);
      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pn.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *v6 = pn;
    }

    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v7.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__pn_.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v10.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_1B50204B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (*(v26 - 25) < 0)
  {
    operator delete(*(v26 - 48));
  }

  _Unwind_Resume(exception_object);
}

void quasar::filesystem::Path::normalize(quasar::filesystem::Path *this@<X0>, void *a2@<X8>)
{
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, (this + 8));
  std::__fs::filesystem::__absolute(&v5, &__p, 0);
  if (SHIBYTE(v5.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&pn, v5.__pn_.__r_.__value_.__l.__data_, v5.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    pn = v5.__pn_;
  }

  *a2 = &unk_1F2CFAA28;
  v3 = (a2 + 1);
  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v3, pn.__r_.__value_.__l.__data_, pn.__r_.__value_.__l.__size_);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *v3 = pn;
  }

  if (SHIBYTE(v5.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B5020608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void boost::property_tree::json_parser::read_json<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>(__int128 *a1, uint64_t a2, const std::locale *a3)
{
  v11[72] = *MEMORY[0x1E69E9840];
  std::ifstream::basic_ifstream(v11);
  v5 = v11 + *(v11[0] - 24);
  if ((v5[32] & 5) == 0)
  {
    std::ios_base::getloc((v11 + *(v11[0] - 24)));
    std::ios_base::imbue(v5, a3);
    std::locale::~locale(&v10);
    v6 = *(v5 + 5);
    if (v6)
    {
      (*(v6->__locale_ + 2))(v6, a3);
      std::locale::locale(&v9, v6 + 1);
      std::locale::operator=(v6 + 1, a3);
      std::locale::~locale(&v9);
    }

    std::locale::~locale(&v7);
    boost::property_tree::json_parser::detail::read_json_internal<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>();
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, "cannot open file");
  boost::property_tree::file_parser_error::file_parser_error(&v10, &v9, a1, 0);
  v10.__locale_ = &unk_1F2CFFB50;
  v8[0] = "/AppleInternal/Library/BuildRoots/4~B_v8ugAyYI0IKEYsMtCXGlJLPsrxIHMQK5jjw9Y/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/property_tree/json_parser.hpp";
  v8[1] = "void boost::property_tree::json_parser::read_json(const std::string &, Ptree &, const std::locale &) [Ptree = boost::property_tree::basic_ptree<std::string, std::string>]";
  v8[2] = 73;
  boost::throw_exception<boost::property_tree::json_parser::json_parser_error>(&v10, v8);
}

void sub_1B50208B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, std::runtime_error a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  boost::property_tree::file_parser_error::~file_parser_error(&a20);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::ifstream::~ifstream(&a28, MEMORY[0x1E69E54C8]);
  MEMORY[0x1B8C85200](&STACK[0x230]);
  _Unwind_Resume(a1);
}

void boost::property_tree::json_parser::detail::read_json_internal<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>()
{
  v0 = 0uLL;
  v1 = 0;
  operator new();
}

void sub_1B5020A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::~standard_callbacks(va);
  _Unwind_Resume(a1);
}

void boost::property_tree::json_parser::detail::read_json_internal<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>,boost::property_tree::json_parser::detail::encoding<char>,boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, std::string *__str)
{
  v7[0] = a4;
  v7[1] = a3;
  v8 = a3;
  memset(&__p, 0, sizeof(__p));
  std::string::operator=(&__p, __str);
  v9[0] = a1;
  v9[1] = a2;
  boost::property_tree::json_parser::detail::utf8_utf8_encoding::skip_introduction<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(v8, v9, a2);
  v11 = 1;
  boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_value(v7);
  boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::finish(v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B5020B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::property_tree::json_parser::detail::utf8_utf8_encoding::skip_introduction<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(uint64_t a1, uint64_t *a2, void *a3)
{
  result = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](a2);
  v6 = result;
  if (!a3 || a3[3] == a3[4] && (result = (*(*a3 + 72))(a3), result == -1))
  {
    if (v6)
    {
      return result;
    }

    a3 = 0;
  }

  else if ((v6 & 1) == 0)
  {
    return result;
  }

  result = *a2;
  v7 = *(*a2 + 24);
  if (v7 == *(*a2 + 32))
  {
    result = (*(*result + 72))(result);
    v8 = result;
  }

  else
  {
    v8 = *v7;
  }

  if (v8 == 239)
  {
    v9 = *a2;
    v10 = *(*a2 + 24);
    if (v10 == *(*a2 + 32))
    {
      (*(*v9 + 80))(v9);
    }

    else
    {
      v9[3] = v10 + 1;
    }

    result = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](a2);
    v11 = result;
    if (a3)
    {
      if (a3[3] == a3[4])
      {
        result = (*(*a3 + 72))(a3);
        if (result == -1)
        {
          a3 = 0;
        }

        if (v11 == (result == -1))
        {
          return result;
        }
      }

      else if ((result & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      if (result)
      {
        return result;
      }

      a3 = 0;
    }

    v12 = *a2;
    v13 = *(*a2 + 24);
    if (v13 == *(*a2 + 32))
    {
      (*(*v12 + 80))(v12);
    }

    else
    {
      v12[3] = v13 + 1;
    }

    result = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](a2);
    v14 = result;
    if (!a3)
    {
      if (result)
      {
        return result;
      }

      a3 = 0;
      goto LABEL_36;
    }

    if (a3[3] != a3[4])
    {
      if ((result & 1) == 0)
      {
        return result;
      }

      goto LABEL_36;
    }

    result = (*(*a3 + 72))(a3);
    if (result == -1)
    {
      a3 = 0;
    }

    if (v14 != (result == -1))
    {
LABEL_36:
      v15 = *a2;
      v16 = *(*a2 + 24);
      if (v16 == *(*a2 + 32))
      {
        (*(*v15 + 80))(v15);
      }

      else
      {
        v15[3] = v16 + 1;
      }

      result = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](a2);
      if (a3 && a3[3] == a3[4])
      {
        v17 = *(*a3 + 72);

        return v17(a3);
      }
    }
  }

  return result;
}

BOOL std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (v2)
  {
    if (v2[3] != v2[4])
    {
      return 0;
    }

    if ((*(*v2 + 72))(v2) != -1)
    {
      return *a1 == 0;
    }

    *a1 = 0;
  }

  return 1;
}

uint64_t boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_value(uint64_t *a1)
{
  result = boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_object(a1);
  if ((result & 1) == 0)
  {
    result = boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_array(a1);
    if ((result & 1) == 0)
    {
      result = boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_string(a1);
      if ((result & 1) == 0)
      {
        result = boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_BOOLean(a1);
        if ((result & 1) == 0)
        {
          result = boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_null(a1);
          if ((result & 1) == 0)
          {
            result = boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_number(a1);
            if ((result & 1) == 0)
            {

              boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_error((a1 + 2), "expected value");
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::DoNothing>(uint64_t a1, uint64_t (*a2)(void *, void), uint64_t a3)
{
  v6 = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100]((a1 + 8));
  if (v6 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100]((a1 + 16)))
  {
    return 0;
  }

  v7 = (*a1 + (a3 >> 1));
  if (a3)
  {
    a2 = *(*v7 + a2);
  }

  v9 = *(a1 + 8);
  v10 = v9[3];
  if (v10 == v9[4])
  {
    v11 = (*(*v9 + 72))(v9);
  }

  else
  {
    v11 = *v10;
  }

  result = a2(v7, v11);
  if (result)
  {
    v12 = *(a1 + 8);
    if (v12[3] == v12[4])
    {
      (*(*v12 + 72))(v12);
    }

    boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::next(a1);
    return 1;
  }

  return result;
}

uint64_t boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_object(uint64_t *a1)
{
    ;
  }

  v2 = boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::DoNothing>((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_open_brace, 0);
  if (v2)
  {
    v3 = *a1;
    boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::new_tree(*a1);
    *(*(v3 + 64) - 16) = 1;
      ;
    }

    if ((boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::DoNothing>((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_close_brace, 0) & 1) == 0)
    {
      do
      {
        if ((boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_string(a1) & 1) == 0)
        {
          boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_error((a1 + 2), "expected key string");
        }

          ;
        }

        boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::expect((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_colon, 0, "expected ':'");
        boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_value(a1);
          ;
        }
      }

      while ((boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::DoNothing>((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_comma, 0) & 1) != 0);
      boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::expect((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_close_brace, 0, "expected '}' or ','");
    }

    v4 = *(*a1 + 64);
    if (*(v4 - 16) == 3)
    {
      v4 -= 16;
    }

    *(*a1 + 64) = v4 - 16;
  }

  return v2;
}

uint64_t boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::new_tree(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  if (v2 != v3)
  {
    v4 = v3 - 4;
    do
    {
      if (*v4 != 3)
      {
        if (!*v4)
        {
          v10 = 0;
          v11 = 0;
          v12 = 0;
          v7 = 0;
          v8 = 0;
          v9 = 0;
          operator new();
        }

        v7 = 0;
        v8 = 0;
        v9 = 0;
        operator new();
      }

      *(a1 + 64) = v4;
      v5 = v4 == v2;
      v4 -= 4;
    }

    while (!v5);
  }

  *&v13 = 3;
  *(&v13 + 1) = a1;
  std::vector<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::layer,std::allocator<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::layer>>::push_back[abi:ne200100](a1 + 56, &v13);
  return a1;
}

void sub_1B5021498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::~pair(v20 - 104);
  std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::~pair(&a20);
  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::~basic_ptree(&a10);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::layer>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::layer,std::allocator<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::layer>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::layer>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_string(uint64_t a1)
{
    ;
  }

  v2 = boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::DoNothing>(a1 + 16, boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_quote, 0);
  if (v2)
  {
    boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::new_value(*a1);
    v4 = *a1;
    v3 = *(a1 + 8);
    while (boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::need_cur(a1 + 16, "unterminated string") != 34)
    {
      v5 = *(a1 + 24);
      v6 = v5[3];
      if (v6 == v5[4])
      {
        v7 = (*(*v5 + 72))(v5);
      }

      else
      {
        v7 = *v6;
      }

      if (v7 == 92)
      {
        boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::next(a1 + 16);
        boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_escape(a1);
      }

      else
      {
        v8 = *(a1 + 32);
        v11[0] = boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::on_code_unit;
        v11[1] = 0;
        v11[2] = v4;
        v10[0] = boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_error;
        v10[1] = 0;
        v10[2] = a1;
        v10[3] = "invalid code sequence";
        boost::property_tree::json_parser::detail::utf8_utf8_encoding::transcode_codepoint<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>,boost::_bi::bind_t<void,boost::_mfi::mf1<void,boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,char>,boost::_bi::list2<boost::reference_wrapper<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>,boost::arg<1>>>,boost::_bi::bind_t<void,boost::_mfi::mf1<void,boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>,char const*>,boost::_bi::list2<boost::_bi::value<boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>*>,boost::_bi::value<char const*>>>>(v3, (a1 + 24), v8, v11, v10);
      }
    }

    boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::next(a1 + 16);
  }

  return v2;
}

quasar::SystemConfig::SystemConfigInfo *quasar::SystemConfig::SystemConfigInfo::SystemConfigInfo(quasar::SystemConfig::SystemConfigInfo *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  quasar::result_handler::Range::Range(this + 6, 0, 0);
  quasar::filesystem::Path::Path(this + 4);
  quasar::PTree::PTree((this + 64));
  *(this + 184) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 22) = this + 184;
  *(this + 13) = 0u;
  *(this + 232) = 0u;
  *(this + 25) = this + 208;
  *(this + 28) = this + 232;
  *(this + 21) = 0u;
  *(this + 39) = 0;
  *(this + 248) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 264) = 0u;
  *(this + 41) = this + 336;
  *(this + 360) = 0u;
  *(this + 44) = this + 360;
  *(this + 24) = 0u;
  *(this + 47) = this + 384;
  *(this + 408) = 0u;
  *(this + 440) = 0u;
  *(this + 53) = 0;
  *(this + 54) = this + 440;
  *(this + 63) = 0;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 456) = 0u;
  *(this + 128) = 1065353216;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 138) = 1065353216;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 148) = 1065353216;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 158) = 1065353216;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 168) = 1065353216;
  *(this + 43) = 0u;
  *(this + 85) = this + 688;
  *(this + 712) = 0u;
  *(this + 88) = this + 712;
  *(this + 182) = 0;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *(this + 192) = 1065353216;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 202) = 1065353216;
  return this;
}

void sub_1B502194C(_Unwind_Exception *exception_object)
{
  *(v1 + 32) = &unk_1F2CFAA28;
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *quasar::result_handler::Range::Range(_DWORD *this, int a2, int a3)
{
  *this = a2;
  this[1] = a3;
  return this;
}

void quasar::SystemConfig::simpleReadJson(quasar::SystemConfig *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(a1 + 388))
  {
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
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "This method can be called only once throughout the lifetime of this object.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  v8 = quasar::filesystem::Path::Path(&v56, a2);
  quasar::filesystem::system_complete(v8, v22);
  quasar::filesystem::Path::normalize(v22, __p);
  kaldi::quasar::Vocab::OOvWord(__p, &v58);
  __p[0] = &unk_1F2CFAA28;
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[1]);
  }

  v22[0] = &unk_1F2CFAA28;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[1]);
  }

  v56.__r_.__value_.__r.__words[0] = &unk_1F2CFAA28;
  if (v57 < 0)
  {
    operator delete(v56.__r_.__value_.__l.__size_);
  }

  v9 = *(a3 + 24);
  v10 = quasar::SystemConfig::SystemConfigInfo::SystemConfigInfo(__p);
  if (v9 || (v11 = quasar::SystemConfig::SystemConfigInfoCache::SingletonInstance(v10), !quasar::SystemConfig::SystemConfigInfoCache::get(v11, &v58, __p)))
  {
    if (quasar::gLogLevel >= 4)
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
      *v22 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Reading json file ", 18);
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
      quasar::QuasarInfoMessage::~QuasarInfoMessage(v22);
    }

    quasar::PTree::readJsonFromFile();
  }

  if (quasar::gLogLevel >= 4)
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
    *v22 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Using cache for json file ", 26);
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v58;
    }

    else
    {
      v13 = v58.__r_.__value_.__r.__words[0];
    }

    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v58.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, size);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(v22);
  }

  quasar::SystemConfig::SystemConfigInfo::operator=(a1 + 8, __p);
  *(a1 + 388) = 1;
  if (*(a1 + 184) && quasar::gLogLevel >= 4)
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
    *v22 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Config file version=", 20);
    quasar::SystemConfig::getModelVersion(a1, &v56);
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v56;
    }

    else
    {
      v20 = v56.__r_.__value_.__r.__words[0];
    }

    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = v56.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    quasar::QuasarInfoMessage::~QuasarInfoMessage(v22);
  }

  if ((a4 & 1) == 0)
  {
    quasar::SystemConfig::checkAllAbsolutePathsExist(a1);
  }

  quasar::SystemConfig::SystemConfigInfo::~SystemConfigInfo(__p);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }
}

void *boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::next(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = v2[3];
  if (v3 == v2[4])
  {
    v4 = (*(*v2 + 72))(v2);
  }

  else
  {
    v4 = *v3;
  }

  if (v4 == 10)
  {
    *(a1 + 48) = (*(a1 + 48) + 1);
  }

  else
  {
    ++*(a1 + 52);
  }

  result = *(a1 + 8);
  v6 = result[3];
  if (v6 == result[4])
  {
    v7 = *(*result + 80);

    return v7();
  }

  else
  {
    result[3] = v6 + 1;
  }

  return result;
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

void sub_1B50223E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          std::string::operator=((v8 + 7), (v9 + 7));
          leaf_high = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_leaf_high(v5, &v16, v15 + 4);
          std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__insert_node_at(v5, v16, leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_multi<std::pair<std::string const,std::string> const&>();
  }

  return result;
}

uint64_t **std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          leaf_high = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_leaf_high(v5, &v16, v15 + 4);
          std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__insert_node_at(v5, v16, leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::string>::__emplace_multi<std::string const&>();
  }

  return result;
}

uint64_t quasar::SpeechModelInfo::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  if (a1 != a2)
  {
    std::__tree<int>::__assign_multi<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>((a1 + 48), *(a2 + 48), (a2 + 56));
    std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>((a1 + 72), *(a2 + 72), (a2 + 80));
    std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>((a1 + 96), *(a2 + 96), (a2 + 104));
  }

  std::string::operator=((a1 + 120), (a2 + 120));
  std::string::operator=((a1 + 144), (a2 + 144));
  std::string::operator=((a1 + 168), (a2 + 168));
  *(a1 + 192) = *(a2 + 192);
  if (a1 != a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>((a1 + 200), *(a2 + 200), (a2 + 208));
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::vector<std::string>>,std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *> *,long>>((a1 + 224), *(a2 + 224), (a2 + 232));
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>((a1 + 248), *(a2 + 248), (a2 + 256));
  }

  *(a1 + 272) = *(a2 + 272);
  return a1;
}

void sub_1B50228D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_leaf_high(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

void sub_1B5022A4C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL std::less<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
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

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

void sub_1B5022DF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::vector<std::string>>,std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v16[0] = (v8 + 4);
          v16[1] = (v8 + 7);
          std::pair<std::string &,std::vector<std::string> &>::operator=[abi:ne200100]<std::string const,std::vector<std::string>,0>(v16, (v9 + 4));
          leaf_high = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_leaf_high(v5, v16, v15 + 4);
          std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__insert_node_at(v5, v16[0], leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_multi<std::pair<std::string const,std::vector<std::string>> const&>();
  }

  return result;
}

void sub_1B5022F84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[1], *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  return this;
}

void sub_1B50230B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5023138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t quasar::SystemConfig::SystemConfigInfo::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  std::string::operator=((a1 + 40), (a2 + 40));
  *(a1 + 64) = *(a2 + 64);
  std::string::operator=((a1 + 72), (a2 + 72));
  if (a1 == a2)
  {
    *(a1 + 120) = *(a2 + 120);
    quasar::SpeechModelInfo::operator=(a1 + 128, a2 + 128);
    quasar::TranslationModelInfo::operator=(a1 + 408, a2 + 408);
    *(a1 + 728) = *(a2 + 728);
  }

  else
  {
    std::vector<std::pair<std::string,quasar::PTree>>::__assign_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(a1 + 96, *(a2 + 96), *(a2 + 104), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 104) - *(a2 + 96)) >> 3));
    *(a1 + 120) = *(a2 + 120);
    quasar::SpeechModelInfo::operator=(a1 + 128, a2 + 128);
    quasar::TranslationModelInfo::operator=(a1 + 408, a2 + 408);
    std::__tree<std::__value_type<int,std::map<std::string,double>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,double>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,double>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,std::map<std::string,double>>,std::__tree_node<std::__value_type<int,std::map<std::string,double>>,void *> *,long>>((a1 + 680), *(a2 + 680), (a2 + 688));
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,int>,std::__tree_node<std::__value_type<std::string,int>,void *> *,long>>((a1 + 704), *(a2 + 704), (a2 + 712));
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 768) = *(a2 + 768);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>((a1 + 736), *(a2 + 752), 0);
    *(a1 + 808) = *(a2 + 808);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>((a1 + 776), *(a2 + 792), 0);
  }

  return a1;
}

uint64_t quasar::TranslationModelInfo::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  if (a1 != a2)
  {
    std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>((a1 + 24), *(a2 + 24), (a2 + 32));
    std::vector<std::pair<std::string,std::string>>::__assign_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>((a1 + 48), *(a2 + 48), *(a2 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 56) - *(a2 + 48)) >> 4));
    *(a1 + 104) = *(a2 + 104);
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,void *> *>>((a1 + 72), *(a2 + 88), 0);
    *(a1 + 144) = *(a2 + 144);
    std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,void *> *>>((a1 + 112), *(a2 + 128), 0);
    *(a1 + 184) = *(a2 + 184);
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,void *> *>>((a1 + 152), *(a2 + 168), 0);
    *(a1 + 224) = *(a2 + 224);
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *> *>>((a1 + 192), *(a2 + 208), 0);
    *(a1 + 264) = *(a2 + 264);
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<std::string>>,void *> *>>((a1 + 232), *(a2 + 248), 0);
  }

  return a1;
}

void std::vector<std::pair<std::string,std::string>>::__assign_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(std::vector<std::pair<std::string, std::string>> *this, std::string *__str, std::string *a3, unint64_t a4)
{
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 4) < a4)
  {
    std::vector<std::pair<std::string,std::string>>::__vdeallocate(this);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((this->__end_cap_.__value_ - this->__begin_) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::pair<std::string,std::string>>::__vallocate[abi:ne200100](this, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = this->__end_ - begin;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 4) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::pair<std::string,std::string> *,std::pair<std::string,std::string> *,std::pair<std::string,std::string> *>(&v16, __str, a3, &begin->first);
    v13 = v12;
    end = this->__end_;
    if (end != v12)
    {
      do
      {
        std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](this, --end);
      }

      while (end != v13);
    }

    this->__end_ = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::pair<std::string,std::string> *,std::pair<std::string,std::string> *,std::pair<std::string,std::string> *>(&v15, __str, (__str + v11), &begin->first);
    this->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(this, (__str + v11), a3, &this->__end_->first);
  }
}

std::string *std::__copy_impl::operator()[abi:ne200100]<std::pair<std::string,std::string> *,std::pair<std::string,std::string> *,std::pair<std::string,std::string> *>(int a1, std::string *__str, std::string *a3, std::string *this)
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
    std::string::operator=(this + 1, v5 + 1);
    this += 2;
    v5 += 2;
  }

  while (v5 != v6);
  return v6;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,void *> *>>(void *a1, void *a2, void *a3)
{
  v4 = a2;
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
      v9 = a2 == a3;
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
        v12[0] = v8 + 2;
        v12[1] = v8 + 5;
        std::pair<std::string &,std::vector<std::pair<std::string,std::string>> &>::operator=[abi:ne200100]<std::string const,std::vector<std::pair<std::string,std::string>>,0>(v12, (v4 + 2));
        v10 = *v8;
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi(a1, v8);
        v4 = *v4;
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

    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>>>::__emplace_multi<std::pair<std::string const,std::vector<std::pair<std::string,std::string>>> const&>();
  }
}

void sub_1B5023760(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

void std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
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
      v9 = a2 == a3;
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
        v12[0] = (v8 + 16);
        v12[1] = (v8 + 40);
        std::pair<std::string &,quasar::TranslationPairSetting &>::operator=[abi:ne200100]<std::string const,quasar::TranslationPairSetting,0>(v12, (v4 + 2));
        v10 = *v8;
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi(a1, v8);
        v4 = *v4;
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

    std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::__emplace_multi<std::pair<std::string const,quasar::TranslationPairSetting> const&>();
  }
}

void sub_1B5023870(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,void *> *>>(void *a1, void *a2, void *a3)
{
  v4 = a2;
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
      v9 = a2 == a3;
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
        v12[0] = v8 + 2;
        v12[1] = v8 + 5;
        std::pair<std::string &,std::unordered_map<std::string,quasar::TranslationPairSetting> &>::operator=[abi:ne200100]<std::string const,std::unordered_map<std::string,quasar::TranslationPairSetting>,0>(v12, (v4 + 2));
        v10 = *v8;
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi(a1, v8);
        v4 = *v4;
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

    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>>>::__emplace_multi<std::pair<std::string const,std::unordered_map<std::string,quasar::TranslationPairSetting>> const&>();
  }
}

void sub_1B5023980(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(std::string *a1, std::string *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  std::string::append[abi:ne200100]<char const*,0>(a1, a2, (a2 + v3));
  return a1;
}

void sub_1B50239FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
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

void sub_1B5023B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::Vocab::OOvWord(kaldi::quasar::Vocab *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 1), *(this + 2));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 8);
    a2->__r_.__value_.__r.__words[2] = *(this + 3);
  }
}

uint64_t quasar::SystemConfig::SystemConfigInfoCache::SingletonInstance(quasar::SystemConfig::SystemConfigInfoCache *this)
{
  {
    operator new();
  }

  return quasar::SystemConfig::SystemConfigInfoCache::SingletonInstance(void)::singletonInstance;
}

void sub_1B5023C34(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1020C40D51851D7);
  _Unwind_Resume(a1);
}

quasar::SystemConfig::SystemConfigInfoCache *quasar::SystemConfig::SystemConfigInfoCache::SystemConfigInfoCache(quasar::SystemConfig::SystemConfigInfoCache *this, uint64_t a2)
{
  *this = 850045863;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  quasar::SystemConfig::SystemConfigInfoCache::reset(this, a2);
  return this;
}

void sub_1B5023CB4(_Unwind_Exception *a1)
{
  std::unique_ptr<kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>>::reset[abi:ne200100](&v1[1].__m_.__sig, 0);
  std::mutex::~mutex(v1);
  _Unwind_Resume(a1);
}

void quasar::SystemConfig::SystemConfigInfoCache::reset(std::mutex *this, uint64_t a2)
{
  std::mutex::lock(this);
  if (a2)
  {
    operator new();
  }

  v4 = 0;
  std::unique_ptr<kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>>::reset[abi:ne200100](&this[1].__m_.__sig, 0);
  std::unique_ptr<kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>>::reset[abi:ne200100](&v4, 0);
  *this[1].__m_.__opaque = 0;
  std::mutex::unlock(this);
}

void sub_1B5023D7C(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C40BBB304E1);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,std::allocator<std::pair<std::string const* const,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>>>::unordered_map(uint64_t a1, size_t a2, char *a3, char *a4)
{
  v5 = *a3;
  v6 = *a4;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = v5;
  *(a1 + 36) = 1065353216;
  *(a1 + 40) = v6;
  std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::__rehash<true>(a1, a2);
  return a1;
}

void std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 36));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

uint64_t *std::unique_ptr<kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__list_imp<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>>::clear((v2 + 56));
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v2 + 8);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
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

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

uint64_t quasar::SystemConfig::SystemConfigInfoCache::get(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock(a1);
  v6 = *(a1 + 64);
  if (v6 && kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::Get(v6, a2, a3))
  {
    ++*(a1 + 72);
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  std::mutex::unlock(a1);
  return v7;
}

BOOL kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::Get(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v4 = kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::Get(a1, a2, &v6);
  if (v4)
  {
    quasar::SystemConfig::SystemConfigInfo::operator=(a3, v6);
  }

  return v4;
}

void *std::__hash_table<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,std::__unordered_map_hasher<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,false>,std::__unordered_map_equal<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>>>::find<std::string const*>(void *a1, uint64_t *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100]((a1 + 4), *a2);
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

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        v13 = v11[2];
        if (v13 == *a2 || std::equal_to<std::string>::operator()[abi:ne200100]((a1 + 5), v13, *a2))
        {
          return v11;
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

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

BOOL kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::Get(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "v != nullptr");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  v12[0] = a2;
  v5 = std::__hash_table<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,std::__unordered_map_hasher<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,false>,std::__unordered_map_equal<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>>>::find<std::string const*>((a1 + 8), v12);
  if (v5)
  {
    v6 = v5[3];
    v7 = *(a1 + 64);
    if (v6 != v7)
    {
      v8 = v6[1];
      if (v8 != v7)
      {
        v9 = *v6;
        *(v9 + 8) = v8;
        *v8 = v9;
        v10 = *v7;
        *(v10 + 8) = v6;
        *v6 = v10;
        *v7 = v6;
        v6[1] = v7;
      }
    }

    *a3 = v6 + 5;
  }

  return v5 != 0;
}

void quasar::PTree::readJsonFromFile()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_1B5024570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 __p, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::~basic_ptree(&a19);
  if (a2 == 1)
  {
    v21 = __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x20uLL);
    v23 = (*(*v21 + 16))(v21);
    std::string::basic_string[abi:ne200100]<0>(&__p, v23);
    quasar::PTree::JsonParseError::JsonParseError(exception, &__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v3 = *(MEMORY[0x1E69E54C8] + 16);
  v4 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x1E69E5528] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x1B8C849F0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

{
  a1[59] = 0;
  v2 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v3 = *(MEMORY[0x1E69E54C8] + 16);
  v4 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x1E69E5528] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x1B8C849F0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1B5024830(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1B8C85200](v1);
  _Unwind_Resume(a1);
}

unint64_t *boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rotate_left(unint64_t *result, unint64_t **a2)
{
  v2 = result[2];
  v3 = *(v2 + 8);
  result[2] = v3;
  if (v3)
  {
    *v3 = *v3 & 1 | result;
  }

  *v2 = *result & 0xFFFFFFFFFFFFFFFELL | *v2 & 1;
  if ((**a2 & 0xFFFFFFFFFFFFFFFELL) == result)
  {
    **a2 = **a2 & 1 | v2;
    v4 = *result;
  }

  else
  {
    v4 = *result;
    v5 = *result & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 8) == result)
    {
      *(v5 + 8) = v2;
    }

    else
    {
      *(v5 + 16) = v2;
    }
  }

  *(v2 + 8) = result;
  *result = v4 & 1 | v2;
  return result;
}

unint64_t *boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rotate_right(unint64_t *result, unint64_t **a2)
{
  v2 = result[1];
  v3 = *(v2 + 16);
  result[1] = v3;
  if (v3)
  {
    *v3 = *v3 & 1 | result;
  }

  *v2 = *result & 0xFFFFFFFFFFFFFFFELL | *v2 & 1;
  if ((**a2 & 0xFFFFFFFFFFFFFFFELL) == result)
  {
    **a2 = **a2 & 1 | v2;
    v4 = *result;
  }

  else
  {
    v4 = *result;
    v5 = *result & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 16) == result)
    {
      *(v5 + 16) = v2;
    }

    else
    {
      *(v5 + 8) = v2;
    }
  }

  *(v2 + 16) = result;
  *result = v4 & 1 | v2;
  return result;
}

void std::pair<std::string,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::pair[abi:ne200100]<std::string,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>,0>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v4 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v4;
  }

  operator new();
}

void sub_1B5024A18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_escape(uint64_t *a1)
{
  if (boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::DoNothing>((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_quote, 0))
  {
    v2 = *(*a1 + 64);
    if (*(v2 - 16) == 2)
    {
      v3 = (*a1 + 32);
    }

    else
    {
      v3 = *(v2 - 8);
    }

    v5 = 34;
LABEL_43:
    std::string::push_back(v3, v5);
    return;
  }

  if (boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::DoNothing>((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_backslash, 0))
  {
    v4 = *(*a1 + 64);
    if (*(v4 - 16) == 2)
    {
      v3 = (*a1 + 32);
    }

    else
    {
      v3 = *(v4 - 8);
    }

    v5 = 92;
    goto LABEL_43;
  }

  if (boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::DoNothing>((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_slash, 0))
  {
    v6 = *(*a1 + 64);
    if (*(v6 - 16) == 2)
    {
      v3 = (*a1 + 32);
    }

    else
    {
      v3 = *(v6 - 8);
    }

    v5 = 47;
    goto LABEL_43;
  }

  if (boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::DoNothing>((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_b, 0))
  {
    v7 = *(*a1 + 64);
    if (*(v7 - 16) == 2)
    {
      v3 = (*a1 + 32);
    }

    else
    {
      v3 = *(v7 - 8);
    }

    v5 = 8;
    goto LABEL_43;
  }

  if (boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::DoNothing>((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_f, 0))
  {
    v8 = *(*a1 + 64);
    if (*(v8 - 16) == 2)
    {
      v3 = (*a1 + 32);
    }

    else
    {
      v3 = *(v8 - 8);
    }

    v5 = 12;
    goto LABEL_43;
  }

  if (boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::DoNothing>((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_n, 0))
  {
    v9 = *(*a1 + 64);
    if (*(v9 - 16) == 2)
    {
      v3 = (*a1 + 32);
    }

    else
    {
      v3 = *(v9 - 8);
    }

    v5 = 10;
    goto LABEL_43;
  }

  if (boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::DoNothing>((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_r, 0))
  {
    v10 = *(*a1 + 64);
    if (*(v10 - 16) == 2)
    {
      v3 = (*a1 + 32);
    }

    else
    {
      v3 = *(v10 - 8);
    }

    v5 = 13;
    goto LABEL_43;
  }

  if (boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::DoNothing>((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_t, 0))
  {
    v11 = *(*a1 + 64);
    if (*(v11 - 16) == 2)
    {
      v3 = (*a1 + 32);
    }

    else
    {
      v3 = *(v11 - 8);
    }

    v5 = 9;
    goto LABEL_43;
  }

  if (!boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::DoNothing>((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_u, 0))
  {
    boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_error((a1 + 2), "invalid escape sequence");
  }

  boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_codepoint_ref(a1);
}

uint64_t boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::need_cur(uint64_t a1, char *a2)
{
  v4 = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100]((a1 + 8));
  if (v4 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100]((a1 + 16)))
  {
    boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_error(a1, a2);
  }

  v5 = *(a1 + 8);
  v6 = v5[3];
  if (v6 == v5[4])
  {
    return (*(*v5 + 72))(v5);
  }

  else
  {
    return *v6;
  }
}

uint64_t boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::new_value(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 64);
  if (v1 == v2)
  {
    return boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::new_tree(a1);
  }

  for (i = v2 - 4; *i == 3; i -= 4)
  {
    *(a1 + 64) = i;
    if (i == v1)
    {
      return boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::new_tree(a1);
    }
  }

  if (*i != 1)
  {
    return boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::new_tree(a1);
  }

  *i = 2;
  if (*(a1 + 55) < 0)
  {
    **(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 55) = 0;
  }

  return a1 + 32;
}

void *boost::property_tree::json_parser::detail::utf8_utf8_encoding::transcode_codepoint<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>,boost::_bi::bind_t<void,boost::_mfi::mf1<void,boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,char>,boost::_bi::list2<boost::reference_wrapper<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>,boost::arg<1>>>,boost::_bi::bind_t<void,boost::_mfi::mf1<void,boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>,char const*>,boost::_bi::list2<boost::_bi::value<boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>*>,boost::_bi::value<char const*>>>>(uint64_t a1, void **a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v10 = (*a2)[3];
  v11 = (*a2)[4];
  if (v10 == v11)
  {
    v12 = (*(*v9 + 72))(v9);
    v9 = *a2;
    v10 = (*a2)[3];
    v11 = (*a2)[4];
  }

  else
  {
    v12 = *v10;
  }

  if (v10 == v11)
  {
    (*(*v9 + 80))(v9);
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9[3] = v10 + 1;
    if ((v12 & 0x80) == 0)
    {
LABEL_6:
      if (v12 <= 0x1Fu)
      {
        v13 = *a5;
        v14 = *(a5 + 8);
        v15 = (*(a5 + 16) + (v14 >> 1));
        if (v14)
        {
          v13 = *(*v15 + v13);
        }

        v13(v15, *(a5 + 24));
      }

      v21 = *(a4 + 8);
      v22 = *a4;
      v23 = (*(a4 + 16) + (v21 >> 1));
      if (v21)
      {
        v22 = *(*v23 + v22);
      }

      return (v22)(v23, v12);
    }
  }

  v16 = (v12 >> 3) & 0xF;
  LOBYTE(v17) = boost::property_tree::json_parser::detail::utf8_utf8_encoding::trail_table(unsigned char)const::table[v16];
  if ((v16 - 15) <= 0xFFFFFFFFFFFFFFF8)
  {
    v18 = *a5;
    v19 = *(a5 + 8);
    v20 = (*(a5 + 16) + (v19 >> 1));
    if (v19)
    {
      v18 = *(*v20 + v18);
    }

    v18(v20, *(a5 + 24));
  }

  v25 = *(a4 + 8);
  v26 = *a4;
  v27 = (*(a4 + 16) + (v25 >> 1));
  if (v25)
  {
    v26 = *(*v27 + v26);
  }

  result = (v26)(v27, v12);
  if ((v16 - 8) <= 6)
  {
    if (v17 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v17;
    }

    do
    {
      v28 = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](a2);
      v29 = v28;
      if (a3)
      {
        if (a3[3] == a3[4])
        {
          v30 = (*(*a3 + 72))(a3);
          if (v30 == -1)
          {
            a3 = 0;
          }

          if (v29 == (v30 == -1))
          {
LABEL_41:
            v33 = *(a5 + 8);
            v34 = *a5;
            v35 = (*(a5 + 16) + (v33 >> 1));
            if (v33)
            {
              v34 = *(*v35 + v34);
            }

            v34(v35, *(a5 + 24));
            goto LABEL_44;
          }
        }

        else if (!v28)
        {
          goto LABEL_41;
        }
      }

      else if (v28)
      {
        goto LABEL_41;
      }

      v31 = (*a2)[3];
      if (v31 == (*a2)[4])
      {
        v32 = (*(**a2 + 72))(*a2);
      }

      else
      {
        v32 = *v31;
      }

      if ((v32 & 0xC0) != 0x80)
      {
        goto LABEL_41;
      }

LABEL_44:
      v36 = (*a2)[3];
      if (v36 == (*a2)[4])
      {
        v37 = (*(**a2 + 72))(*a2);
      }

      else
      {
        v37 = *v36;
      }

      v38 = *(a4 + 8);
      v39 = *a4;
      v40 = (*(a4 + 16) + (v38 >> 1));
      if (v38)
      {
        v39 = *(*v40 + v39);
      }

      v39(v40, v37);
      result = *a2;
      v41 = (*a2)[3];
      if (v41 == (*a2)[4])
      {
        result = (*(*result + 80))(result);
      }

      else
      {
        result[3] = v41 + 1;
      }

      --v17;
    }

    while (v17);
  }

  return result;
}

void boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::on_code_unit(uint64_t a1, std::string::value_type a2)
{
  v2 = *(a1 + 64);
  if (*(v2 - 16) == 2)
  {
    v3 = (a1 + 32);
  }

  else
  {
    v3 = *(v2 - 8);
  }

  std::string::push_back(v3, a2);
}

uint64_t boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::expect(uint64_t a1, uint64_t (*a2)(void *, void), uint64_t a3, char *a4)
{
  result = boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::DoNothing>(a1, a2, a3);
  if ((result & 1) == 0)
  {
    boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_error(a1, a4);
  }

  return result;
}

uint64_t boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_array(uint64_t *a1)
{
    ;
  }

  v2 = boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::DoNothing>((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_open_bracket, 0);
  if (v2)
  {
    v3 = *a1;
    boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::new_tree(*a1);
    *(*(v3 + 64) - 16) = 0;
      ;
    }

    if ((boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::DoNothing>((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_close_bracket, 0) & 1) == 0)
    {
      do
      {
        boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_value(a1);
          ;
        }
      }

      while ((boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::DoNothing>((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_comma, 0) & 1) != 0);
      boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::expect((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_close_bracket, 0, "expected ']' or ','");
    }

    v4 = *(*a1 + 64);
    if (*(v4 - 16) == 3)
    {
      v4 -= 16;
    }

    *(*a1 + 64) = v4 - 16;
  }

  return v2;
}

uint64_t boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_BOOLean(uint64_t *a1)
{
    ;
  }

  if (boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::DoNothing>((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_t, 0))
  {
    v2 = "expected 'true'";
    boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::expect((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_r, 0, "expected 'true'");
    boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::expect((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_u, 0, "expected 'true'");
    v3 = "true";
  }

  else
  {
    result = boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::DoNothing>((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_f, 0);
    if (!result)
    {
      return result;
    }

    v2 = "expected 'false'";
    boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::expect((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_a, 0, "expected 'false'");
    boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::expect((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_l, 0, "expected 'false'");
    boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::expect((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_s, 0, "expected 'false'");
    v3 = "false";
  }

  boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::expect((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_e, 0, v2);
  v5 = boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::new_value(*a1);
  MEMORY[0x1B8C84820](v5, v3);
  return 1;
}

uint64_t boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::number_callback_adapter<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::input_iterator_tag>>(uint64_t a1, uint64_t (*a2)(void *, void), uint64_t a3, uint64_t a4)
{
  v8 = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100]((a1 + 8));
  if (v8 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100]((a1 + 16)))
  {
    return 0;
  }

  v9 = (*a1 + (a3 >> 1));
  if (a3)
  {
    a2 = *(*v9 + a2);
  }

  v11 = *(a1 + 8);
  v12 = v11[3];
  if (v12 == v11[4])
  {
    v13 = (*(*v11 + 72))(v11);
  }

  else
  {
    v13 = *v12;
  }

  result = a2(v9, v13);
  if (result)
  {
    v14 = *(a1 + 8);
    v15 = v14[3];
    if (v15 == v14[4])
    {
      v16 = (*(*v14 + 72))(v14);
    }

    else
    {
      v16 = *v15;
    }

    boost::property_tree::json_parser::detail::number_callback_adapter<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::input_iterator_tag>::operator()(a4, v16);
    boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::next(a1);
    return 1;
  }

  return result;
}

uint64_t boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_number(__int128 *a1)
{
    ;
  }

  v4 = *a1;
  v5 = 1;
  v2 = boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::number_callback_adapter<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::input_iterator_tag>>((a1 + 1), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_minus, 0, &v4);
  if (boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::number_callback_adapter<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::input_iterator_tag>>((a1 + 1), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_0, 0, &v4) & 1) != 0 || (boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_int_part(a1, &v4))
  {
    boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_frac_part(a1, &v4);
    boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_exp_part(a1, &v4);
    return 1;
  }

  else
  {
    if (v2)
    {
      boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_error((a1 + 1), "expected digits after -");
    }

    return 0;
  }
}

uint64_t boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_null(uint64_t *a1)
{
    ;
  }

  v2 = boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::DoNothing>((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_n, 0);
  if (v2)
  {
    boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::expect((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_u, 0, "expected 'null'");
    boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::expect((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_l, 0, "expected 'null'");
    boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::expect((a1 + 2), boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_l, 0, "expected 'null'");
    v3 = boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::new_value(*a1);
    MEMORY[0x1B8C84820](v3, "null");
  }

  return v2;
}

void quasar::PTreeHelper::PTreeFromPTree(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  v4 = (a2 + 8);
  *a2 = 0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  if (!*(*(a1 + 24) + 24))
  {
    v5 = *(a1 + 23);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a1 + 8);
    }

    if (v5)
    {
      *(a2 + 56) = 1;
    }
  }

  std::string::operator=(v4, a1);
  v6 = *(*(a1 + 24) + 8);
  v7 = *(v6 + 88);
  if (v7)
  {
    v8 = v7 - 80;
  }

  else
  {
    v8 = 0;
  }

  while (v8 != v6)
  {
    quasar::PTreeHelper::PTreeFromPTree(v10, v8 + 24);
    std::pair<std::string,quasar::PTree>::pair[abi:ne200100]<std::string const&,quasar::PTree,0>(&__p, v8, v10);
    std::vector<std::pair<std::string,quasar::PTree>>::push_back[abi:ne200100](a2 + 32, &__p);
    quasar::PTree::~PTree(&v12);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    quasar::PTree::~PTree(v10);
    v9 = *(v8 + 88);
    if (v9)
    {
      v8 = v9 - 80;
    }

    else
    {
      v8 = 0;
    }
  }
}

std::string *std::pair<std::string,quasar::PTree>::pair[abi:ne200100]<std::string const&,quasar::PTree,0>(std::string *this, __int128 *a2, uint64_t a3)
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

void sub_1B5025B00(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
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
      v9 = a2 == a3;
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
        std::string::operator=((v8 + 16), (v4 + 2));
        std::string::operator=((v8 + 40), (v4 + 5));
        v10 = *v8;
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi(a1, v8);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_multi<std::pair<std::string const,std::string> const&>();
  }
}

void sub_1B5025C0C(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<std::string>>,void *> *>>(void *a1, void *a2, void *a3)
{
  v4 = a2;
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
      v9 = a2 == a3;
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
        v12[0] = v8 + 2;
        v12[1] = v8 + 5;
        std::pair<std::string &,std::unordered_set<std::string> &>::operator=[abi:ne200100]<std::string const,std::unordered_set<std::string>,0>(v12, (v4 + 2));
        v10 = *v8;
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi(a1, v8);
        v4 = *v4;
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

    std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::__emplace_multi<std::pair<std::string const,std::unordered_set<std::string>> const&>();
  }
}

void sub_1B5025D1C(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

void sub_1B5025D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5025E54(_Unwind_Exception *a1)
{
  *v2 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](v3, v1);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
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
      v9 = a2 == a3;
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
        std::string::operator=((v8 + 16), (v4 + 2));
        v10 = *v8;
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi(a1, v8);
        v4 = *v4;
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

  if (v4 != a3)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_multi<std::string const&>();
  }
}

void sub_1B5025F3C(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

uint64_t **std::__tree<std::__value_type<int,std::map<std::string,double>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,double>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,double>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,std::map<std::string,double>>,std::__tree_node<std::__value_type<int,std::map<std::string,double>>,void *> *,long>>(uint64_t **result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 8) = *(v9 + 8);
          if (v8 != v9)
          {
            std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,double>,std::__tree_node<std::__value_type<std::string,double>,void *> *,long>>(v8 + 5, v9[5], v9 + 6);
            v8 = v14;
          }

          std::__tree<std::__value_type<int,std::map<std::string,double>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,double>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,double>>>>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<int,std::map<std::string,double>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,double>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,double>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<int,std::map<std::string,double>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,double>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,double>>>>::__emplace_multi<std::pair<int const,std::map<std::string,double>> const&>();
  }

  return result;
}

void sub_1B50260D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<int,std::map<std::string,double>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,double>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,double>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,int>,std::__tree_node<std::__value_type<std::string,int>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          *(v8 + 14) = *(v9 + 14);
          leaf_high = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_leaf_high(v5, &v16, v15 + 4);
          std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__insert_node_at(v5, v16, leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_multi<std::pair<std::string const,int> const&>();
  }

  return result;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__do_rehash<false>(a1, prime);
    }
  }
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, const void **a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<false>(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v14 > 1)
        {
          v20 = v17[1];
          if (v19 >= v6)
          {
            v20 = v19 % v6;
          }
        }

        else
        {
          v20 = v19 & (v6 - 1);
        }

        if (v20 != v15)
        {
          break;
        }

        v21 = v19 == a2 && std::equal_to<std::string>::operator()[abi:ne200100](a1, v17 + 2, a3);
        if ((v18 & (v21 != (v18 & 1))) != 0)
        {
          break;
        }

        v18 |= v21 != (v18 & 1);
        v16 = *v16;
        v17 = *v16;
      }

      while (*v16);
    }
  }

  return v16;
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi(void *a1, uint64_t a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 16);
  *(a2 + 8) = v4;
  inserted = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi_prepare(a1, v4, (a2 + 16));
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

void *std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

BOOL boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::finish(uint64_t a1)
{
    ;
  }

  v2 = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100]((a1 + 24));
  result = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100]((a1 + 32));
  if (v2 != result)
  {
    boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_error(a1 + 16, "garbage after data");
  }

  return result;
}

uint64_t std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::string,quasar::PTree>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B50268C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::string,quasar::PTree>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<std::string,quasar::PTree>>::__emplace_back_slow_path<std::pair<std::string,quasar::PTree>>(uint64_t a1, __int128 *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,quasar::PTree>>>(a1, v6);
  }

  v13 = 0;
  v14 = 88 * v2;
  std::pair<std::string,quasar::PTree>::pair[abi:ne200100](88 * v2, a2);
  v15 = (88 * v2 + 88);
  v7 = *(a1 + 8);
  v8 = (88 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<std::string,quasar::PTree>>,std::pair<std::string,quasar::PTree>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::pair<std::string,quasar::PTree>>::~__split_buffer(&v13);
  return v12;
}

void sub_1B5026A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<std::string,quasar::PTree>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<std::string,quasar::PTree>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::pair<std::string,quasar::PTree>>::__emplace_back_slow_path<std::pair<std::string,quasar::PTree>>(a1, a2);
  }

  else
  {
    std::pair<std::string,quasar::PTree>::pair[abi:ne200100](*(a1 + 8), a2);
    result = v3 + 88;
    *(a1 + 8) = v3 + 88;
  }

  *(a1 + 8) = result;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,quasar::PTree>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void quasar::PTree::~PTree(void **this)
{
  v2 = this + 4;
  std::vector<std::pair<std::string,quasar::PTree>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void **std::__split_buffer<std::pair<std::string,quasar::PTree>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::pair<std::string,quasar::PTree>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::pair<std::string,quasar::PTree>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 88;
        std::allocator<std::pair<std::string,quasar::PTree>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__split_buffer<std::pair<std::string,quasar::PTree>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 88;
    std::allocator<std::pair<std::string,quasar::PTree>>::destroy[abi:ne200100](v4, i - 88);
  }
}

uint64_t boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_int_part(uint64_t a1, uint64_t a2)
{
  v4 = boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::number_callback_adapter<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::input_iterator_tag>>(a1 + 16, boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_digit0, 0, a2);
  if (v4)
  {
      ;
    }
  }

  return v4;
}

void boost::property_tree::json_parser::detail::number_callback_adapter<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::input_iterator_tag>::operator()(uint64_t a1, std::string::value_type __c)
{
  if (*(a1 + 16) == 1)
  {
    boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::new_value(*a1);
    *(a1 + 16) = 0;
  }

  v4 = *(*a1 + 64);
  if (*(v4 - 16) == 2)
  {
    v5 = (*a1 + 32);
  }

  else
  {
    v5 = *(v4 - 8);
  }

  std::string::push_back(v5, __c);
}

void std::pair<std::string,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::pair[abi:ne200100]<std::string&,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>,0>(std::string *this, __int128 *a2, __int128 *a3)
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

  operator new();
}

void sub_1B5026DEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::v_item<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_non_unique_tag,boost::multi_index::detail::null_augment_policy>::copy_(unint64_t result, uint64_t a2, void *a3)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 56);
  v5 = *(result - 8);
  v6 = (v5 + 56);
  if (v4 > 1)
  {
    *v6 = *v6 & 0xFFFFFFFFFFFFFFFELL | *(v3 + 56) & 1;
    v7 = *(v3 + 56);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFELL) - 56;
    v9 = (v7 & 0xFFFFFFFFFFFFFFFELL) == 0;
    v10 = v4 & 1;
    if (v9)
    {
      v8 = 0;
    }

    v11 = a3[6];
    if (v11 == v8)
    {
      v18 = a3 + 7;
    }

    else
    {
      v12 = a3[4];
      v13 = a3[5];
      while (v13)
      {
        v14 = v13 >> 1;
        v15 = &v12[2 * (v13 >> 1)];
        v17 = *v15;
        v16 = v15 + 2;
        v13 += ~(v13 >> 1);
        if (v17 < v8)
        {
          v12 = v16;
        }

        else
        {
          v13 = v14;
        }
      }

      v18 = v12 + 1;
    }

    *v6 = v10 | (*v18 + 56);
    v19 = *(v3 + 64);
    v20 = v19 - 56;
    if (!v19)
    {
      v20 = 0;
    }

    if (v11 == v20)
    {
      v27 = a3 + 7;
    }

    else
    {
      v21 = a3[4];
      v22 = a3[5];
      while (v22)
      {
        v23 = v22 >> 1;
        v24 = &v21[2 * (v22 >> 1)];
        v26 = *v24;
        v25 = v24 + 2;
        v22 += ~(v22 >> 1);
        if (v26 < v20)
        {
          v21 = v25;
        }

        else
        {
          v22 = v23;
        }
      }

      v27 = v21 + 1;
    }

    *(v5 + 64) = *v27 + 56;
    v28 = *(*(a2 - 8) + 72);
    if (v28)
    {
      v29 = v28 - 56;
    }

    else
    {
      v29 = 0;
    }

    if (a3[6] == v29)
    {
      v37 = a3 + 7;
      v30 = a3[5];
    }

    else
    {
      v31 = a3[4];
      v30 = a3[5];
      if (v30)
      {
        v32 = a3[5];
        do
        {
          v33 = v32 >> 1;
          v34 = &v31[2 * (v32 >> 1)];
          v36 = *v34;
          v35 = v34 + 2;
          v32 += ~(v32 >> 1);
          if (v36 < v29)
          {
            v31 = v35;
          }

          else
          {
            v32 = v33;
          }
        }

        while (v32);
      }

      v37 = v31 + 1;
    }

    *(*(result - 8) + 72) = *v37 + 56;
    if (v30)
    {
      v38 = a3[4];
      v39 = &v38[2 * v30];
      do
      {
        v41 = *v38;
        v40 = v38[1];
        v42 = (*v38 + 56);
        v43 = v40 + 7;
        v44 = *v42 & 1;
        result = v40[7] & 0xFFFFFFFFFFFFFFFELL | v44;
        v40[7] = result;
        v45 = *v42 & 0xFFFFFFFFFFFFFFFELL;
        if (v45)
        {
          v46 = a3 + 7;
          if (a3[6] != v45 - 56)
          {
            v47 = a3[4];
            v48 = a3[5];
            while (v48)
            {
              v49 = v48 >> 1;
              v50 = &v47[2 * (v48 >> 1)];
              v52 = *v50;
              v51 = v50 + 2;
              v48 += ~(v48 >> 1);
              if (v52 < v45 - 56)
              {
                v47 = v51;
              }

              else
              {
                v48 = v49;
              }
            }

            v46 = v47 + 1;
          }

          result = *v46;
          *v43 = v44 | (*v46 + 56);
          if (*(v45 + 8) == v42)
          {
            *(result + 64) = v43;
          }

          else if (*(v45 + 16) == v42)
          {
            *(result + 72) = v43;
          }
        }

        else
        {
          *v43 = v44;
        }

        if (!*(v41 + 64))
        {
          v40[8] = 0;
        }

        if (!*(v41 + 72))
        {
          v40[9] = 0;
        }

        v38 += 2;
      }

      while (v38 != v39);
    }
  }

  else
  {
    *(v5 + 56) = 0;
    *(v5 + 64) = v6;
    *(*(result - 8) + 72) = *(result - 8) + 56;
  }

  return result;
}

void std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::pair[abi:ne200100]<std::string,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>,0>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v3 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v3;
  }

  operator new();
}

void sub_1B50271A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5027244(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(*v1);
  __cxa_rethrow();
}

uint64_t boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::v_item<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_non_unique_tag,boost::multi_index::detail::null_augment_policy>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t a1, const void **a2)
{
  v4 = 0;
  if (boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::v_item<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_non_unique_tag,boost::multi_index::detail::null_augment_policy>::link_point(a1, a2, &v4))
  {
    boost::multi_index::detail::index_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>::insert_();
  }

  if (v5)
  {
    return v5 - 56;
  }

  else
  {
    return 0;
  }
}

uint64_t boost::multi_index::detail::sequenced_index<boost::multi_index::detail::nth_layer<1,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::vector0<mpl_::na>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t a1, const void **a2, uint64_t *a3)
{
  result = boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::v_item<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_non_unique_tag,boost::multi_index::detail::null_augment_policy>::insert_<boost::multi_index::detail::lvalue_tag>(a1, a2);
  v6 = *a3;
  if (result == *a3)
  {
    v7 = *(a1 - 8);
    v8 = v7[10];
    v7 += 10;
    *(v6 + 80) = v8;
    *(v6 + 88) = v7;
    v9 = v6 + 80;
    *v7 = v9;
    *(*v9 + 8) = v9;
  }

  return result;
}

uint64_t boost::multi_index::multi_index_container<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t a1, const void **a2)
{
  v4 = 0;
  result = boost::multi_index::detail::sequenced_index<boost::multi_index::detail::nth_layer<1,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::vector0<mpl_::na>>::insert_<boost::multi_index::detail::lvalue_tag>(a1 + 16, a2, &v4);
  if (result == v4)
  {
    ++*(a1 + 24);
  }

  return result;
}

uint64_t boost::multi_index::detail::sequenced_index<boost::multi_index::detail::nth_layer<1,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::vector0<mpl_::na>>::insert(uint64_t a1, uint64_t a2, const void **a3)
{
  result = boost::multi_index::multi_index_container<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>::insert_<boost::multi_index::detail::lvalue_tag>(a1 - 16, a3);
  if ((v6 & 1) != 0 && *(a1 - 8) != a2)
  {
    v7 = *(result + 88);
    *(*(result + 80) + 8) = v7;
    *v7 = *(result + 80);
    v9 = *(a2 + 80);
    v8 = (a2 + 80);
    *(result + 80) = v9;
    *(result + 88) = v8;
    *v8 = result + 80;
    *(*(result + 80) + 8) = result + 80;
  }

  return result;
}

uint64_t boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::v_item<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_non_unique_tag,boost::multi_index::detail::null_augment_policy>::link_point(uint64_t a1, const void **a2, uint64_t a3)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (v5)
  {
    do
    {
      v4 = v5 - 56;
      v8 = std::less<std::string>::operator()[abi:ne200100](a1 + 1, a2, (v5 - 56));
      if (v8)
      {
        v9 = 64;
      }

      else
      {
        v9 = 72;
      }

      v5 = *(v4 + v9);
    }

    while (v5);
    LODWORD(v5) = !v8;
  }

  *a3 = v5;
  *(a3 + 8) = v4 + 56;
  return 1;
}

unint64_t *boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::link(unint64_t a1, int a2, unint64_t *a3, unint64_t *a4)
{
  if (a2)
  {
    a3[2] = a1;
    v6 = a4 + 2;
    v7 = a4[2];
  }

  else
  {
    a3[1] = a1;
    if (a3 == a4)
    {
      *a4 = *a4 & 1 | a1;
      v6 = a4 + 2;
LABEL_8:
      *v6 = a1;
      goto LABEL_9;
    }

    v6 = a4 + 1;
    v7 = a4[1];
  }

  if (v7 == a3)
  {
    goto LABEL_8;
  }

LABEL_9:
  v10[1] = v4;
  v10[2] = v5;
  v8 = *a1 & 1 | a3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v8;
  v10[0] = a4;
  return boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rebalance(a1, v10);
}

uint64_t boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::~basic_ptree(uint64_t a1)
{
  v2 = boost::multi_index::multi_index_container<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>::~multi_index_container(*(a1 + 24));
  MEMORY[0x1B8C85350](v2, 0x1020C402FC1992ELL);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t *boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rebalance(unint64_t *result, unint64_t **a2)
{
  *result &= ~1uLL;
  v2 = *a2;
  v3 = (**a2 & 0xFFFFFFFFFFFFFFFELL);
  if (v3 != result)
  {
    v4 = result;
    v5 = (*result & 0xFFFFFFFFFFFFFFFELL);
    v6 = *v5;
    if ((*v5 & 1) == 0)
    {
      while (1)
      {
        v8 = *(v6 + 8);
        if (v8 == v5)
        {
          v8 = *(v6 + 16);
          if (!v8 || (*v8 & 1) != 0)
          {
            if (v4 == v5[2])
            {
              v13 = v2;
              boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rotate_left(v5, &v13);
              v2 = *a2;
              v10 = (*v5 & 0xFFFFFFFFFFFFFFFELL);
              v4 = v5;
            }

            else
            {
              v10 = v5;
              v5 = v4;
            }

            *v10 |= 1uLL;
            *(*(*v5 & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL) &= ~1uLL;
            v12 = *(*v5 & 0xFFFFFFFFFFFFFFFELL);
            v13 = v2;
            result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rotate_right((v12 & 0xFFFFFFFFFFFFFFFELL), &v13);
            goto LABEL_17;
          }
        }

        else if (!v8 || (*v8 & 1) != 0)
        {
          if (v4 == v5[1])
          {
            v13 = v2;
            boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rotate_right(v5, &v13);
            v2 = *a2;
            v9 = (*v5 & 0xFFFFFFFFFFFFFFFELL);
            v4 = v5;
          }

          else
          {
            v9 = v5;
            v5 = v4;
          }

          *v9 |= 1uLL;
          *(*(*v5 & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL) &= ~1uLL;
          v11 = *(*v5 & 0xFFFFFFFFFFFFFFFELL);
          v13 = v2;
          result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rotate_left((v11 & 0xFFFFFFFFFFFFFFFELL), &v13);
          goto LABEL_17;
        }

        *v5 = v6 | 1;
        *v8 |= 1uLL;
        *(*(*v4 & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL) &= ~1uLL;
        v4 = (*(*v4 & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL);
LABEL_17:
        v2 = *a2;
        v3 = (**a2 & 0xFFFFFFFFFFFFFFFELL);
        if (v4 != v3)
        {
          v5 = (*v4 & 0xFFFFFFFFFFFFFFFELL);
          v6 = *v5;
          if ((*v5 & 1) == 0)
          {
            continue;
          }
        }

        break;
      }
    }
  }

  *v3 |= 1uLL;
  return result;
}

void boost::multi_index::detail::sequenced_index<boost::multi_index::detail::nth_layer<1,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::vector0<mpl_::na>>::delete_all_nodes_(uint64_t a1)
{
  v1 = *(a1 - 8);
  v2 = v1[11];
  if (v2)
  {
    v3 = (v2 - 80);
  }

  else
  {
    v3 = 0;
  }

  if (v3 != v1)
  {
    v5 = a1 - 16;
    do
    {
      v6 = v3[11];
      if (v6)
      {
        v7 = (v6 - 80);
      }

      else
      {
        v7 = 0;
      }

      std::allocator_traits<std::allocator<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>>>::destroy[abi:ne200100]<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,void,0>(v5, v3);
      operator delete(v3);
      v3 = v7;
    }

    while (v7 != *(a1 - 8));
  }
}

uint64_t boost::multi_index::multi_index_container<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>::copy_construct_from(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 24);
  v5 = *(a2 + 8);
  v6 = *(a1 + 8);
  v11[1] = v4;
  v11[3] = v4;
  if (v4)
  {
    if (!(v4 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = v5;
  v11[4] = 0;
  v11[5] = 0;
  v11[6] = v5;
  v11[7] = v6;
  v12 = 0;
  v8 = *(v5 + 88);
  if (v8)
  {
    v9 = v8 - 80;
  }

  else
  {
    v9 = 0;
  }

  if (v9 != v7)
  {
    boost::multi_index::detail::copy_map<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>::clone<boost::multi_index::detail::copy_map_value_copier>(v11, v9);
  }

  boost::multi_index::detail::sequenced_index<boost::multi_index::detail::nth_layer<1,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::vector0<mpl_::na>>::copy_(a1 + 16, a2 + 16, v11);
  v12 = 1;
  *(a1 + 24) = *(a2 + 24);
  return boost::multi_index::detail::copy_map<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>::~copy_map(v11);
}

unint64_t boost::multi_index::detail::sequenced_index<boost::multi_index::detail::nth_layer<1,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::vector0<mpl_::na>>::copy_(unint64_t result, uint64_t a2, void *a3)
{
  v3 = *(a2 - 8);
  v4 = *(result - 8);
  v5 = a3[5];
  do
  {
    v6 = *(v3 + 88);
    if (v6)
    {
      v3 = v6 - 80;
    }

    else
    {
      v3 = 0;
    }

    v7 = a3 + 7;
    if (a3[6] != v3)
    {
      v8 = a3[4];
      if (v5)
      {
        v9 = v5;
        do
        {
          v10 = v9 >> 1;
          v11 = &v8[2 * (v9 >> 1)];
          v13 = *v11;
          v12 = v11 + 2;
          v9 += ~(v9 >> 1);
          if (v13 < v3)
          {
            v8 = v12;
          }

          else
          {
            v9 = v10;
          }
        }

        while (v9);
      }

      v7 = v8 + 1;
    }

    v14 = *v7;
    *(v4 + 88) = v14 + 80;
    *(v14 + 80) = v4 + 80;
    v4 = v14;
  }

  while (v3 != *(a2 - 8));
  return boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::v_item<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_non_unique_tag,boost::multi_index::detail::null_augment_policy>::copy_(result, a2, a3);
}

uint64_t boost::multi_index::detail::copy_map<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>::~copy_map(uint64_t a1)
{
  if ((*(a1 + 64) & 1) == 0 && *(a1 + 40))
  {
    v2 = 0;
    v3 = 8;
    do
    {
      std::allocator_traits<std::allocator<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>>>::destroy[abi:ne200100]<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,void,0>(a1, *(*(a1 + 32) + v3));
      operator delete(*(*(a1 + 32) + v3));
      ++v2;
      v3 += 16;
    }

    while (v2 < *(a1 + 40));
  }

  if (*(a1 + 24))
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  operator new();
}

void sub_1B5027AF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::multi_index::multi_index_container<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>::~multi_index_container(uint64_t a1)
{
  boost::multi_index::detail::sequenced_index<boost::multi_index::detail::nth_layer<1,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::vector0<mpl_::na>>::delete_all_nodes_(a1 + 16);
  operator delete(*(a1 + 8));
  return a1;
}

uint64_t boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_frac_part(uint64_t a1, uint64_t a2)
{
  result = boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::number_callback_adapter<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::input_iterator_tag>>(a1 + 16, boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_dot, 0, a2);
  if (result)
  {
    if ((boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::number_callback_adapter<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::input_iterator_tag>>(a1 + 16, boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_digit, 0, a2) & 1) == 0)
    {
      boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_error(a1 + 16, "need at least one digit after '.'");
    }

    do
    {
      result = boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::number_callback_adapter<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::input_iterator_tag>>(a1 + 16, boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_digit, 0, a2);
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t boost::property_tree::json_parser::detail::parser<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_exp_part(uint64_t a1, uint64_t a2)
{
  result = boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::number_callback_adapter<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::input_iterator_tag>>(a1 + 16, boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_eE, 0, a2);
  if (result)
  {
    boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::number_callback_adapter<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::input_iterator_tag>>(a1 + 16, boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_plusminus, 0, a2);
    if ((boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::number_callback_adapter<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::input_iterator_tag>>(a1 + 16, boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_digit, 0, a2) & 1) == 0)
    {
      boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_error(a1 + 16, "need at least one digit in exponent");
    }

    do
    {
      result = boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::have<boost::property_tree::json_parser::detail::number_callback_adapter<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::input_iterator_tag>>(a1 + 16, boost::property_tree::json_parser::detail::external_ascii_superset_encoding::is_digit, 0, a2);
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t boost::algorithm::split_iterator<std::__wrap_iter<char const*>>::split_iterator(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  v4 = *a2;
  if (*a2)
  {
    *a1 = v4;
    if (v4)
    {
      v5 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v5;
    }

    else
    {
      (*v4)(a2 + 8, a1 + 8, 0);
    }
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t boost::detail::function::functor_manager<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>::manage(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return boost::detail::function::functor_manager<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>::manager(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t boost::detail::function::functor_manager<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>::manager(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v5 = *a2;
    if (*a2)
    {
      if (v5[2] >= 0x11uLL && *v5)
      {
        MEMORY[0x1B8C85310](*v5, 0x1000C8077774924);
      }

      result = MEMORY[0x1B8C85350](v5, 0x1012C405C87E9CELL);
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      a2[4] = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == (0x80000001B5AFF110 & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, (0x80000001B5AFF110 & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void (***boost::function2<boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::~function2(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

void *std::vector<std::string>::vector[abi:ne200100]<boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::string,std::__wrap_iter<char const*>>,boost::algorithm::split_iterator<std::__wrap_iter<char const*>>,boost::use_default,boost::use_default>,0>(void *a1, uint64_t a2, uint64_t a3)
{
  v7[10] = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  boost::algorithm::split_iterator<std::__wrap_iter<char const*>>::split_iterator(v7, a2);
  boost::algorithm::split_iterator<std::__wrap_iter<char const*>>::split_iterator(v6, a3);
  std::vector<std::string>::__init_with_sentinel[abi:ne200100]<boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::string,std::__wrap_iter<char const*>>,boost::algorithm::split_iterator<std::__wrap_iter<char const*>>,boost::use_default,boost::use_default>,boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::string,std::__wrap_iter<char const*>>,boost::algorithm::split_iterator<std::__wrap_iter<char const*>>,boost::use_default,boost::use_default>>(a1, v7, v6);
  boost::function2<boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::~function2(v6);
  boost::function2<boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::~function2(v7);
  return a1;
}

void sub_1B5028084(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (**)(void, void, uint64_t));
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  boost::function2<boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::~function2(va);
  boost::function2<boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::~function2(va1);
  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7C1A150, MEMORY[0x1E69E5278]);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<std::string,quasar::PTree>>,std::pair<std::string,quasar::PTree>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::pair<std::string,quasar::PTree>::pair[abi:ne200100](a4, v7);
      v7 = (v7 + 88);
      a4 = (v12 + 88);
      v12 = (v12 + 88);
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator<std::pair<std::string,quasar::PTree>>::destroy[abi:ne200100](a1, v5);
      v5 += 88;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,quasar::PTree>>,std::pair<std::string,quasar::PTree>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::pair<std::string,quasar::PTree>::pair[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 24) = *(a2 + 6);
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = a2[2];
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 32) = v5;
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(a1 + 56, *(a2 + 7), *(a2 + 8), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 8) - *(a2 + 7)) >> 3));
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

void sub_1B5028298(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,quasar::PTree>>,std::pair<std::string,quasar::PTree>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,quasar::PTree>>,std::pair<std::string,quasar::PTree>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::allocator<std::pair<std::string,quasar::PTree>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  quasar::PTree::~PTree((a2 + 24));
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

std::string *std::pair<std::string,quasar::PTree>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  LODWORD(this[1].__r_.__value_.__l.__data_) = *(a2 + 6);
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = a2[2];
    this[2].__r_.__value_.__r.__words[0] = *(a2 + 6);
    *&this[1].__r_.__value_.__r.__words[1] = v5;
  }

  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  this[3].__r_.__value_.__r.__words[0] = 0;
  std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(&this[2].__r_.__value_.__l.__size_, *(a2 + 7), *(a2 + 8), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 8) - *(a2 + 7)) >> 3));
  this[3].__r_.__value_.__s.__data_[8] = *(a2 + 80);
  return this;
}

void sub_1B502840C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::string,quasar::PTree>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,quasar::PTree>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,quasar::PTree>>,std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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
      std::pair<std::string,quasar::PTree>::pair[abi:ne200100](v4, v6);
      v6 = (v6 + 88);
      v4 = (v11 + 88);
      v11 = (v11 + 88);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,quasar::PTree>>,std::pair<std::string,quasar::PTree>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void std::vector<std::pair<std::string,quasar::PTree>>::__assign_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(uint64_t a1, std::string *a2, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<std::pair<std::string,quasar::PTree>>::__vdeallocate(a1);
    if (a4 <= 0x2E8BA2E8BA2E8BALL)
    {
      v9 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3)) >= 0x1745D1745D1745DLL)
      {
        v10 = 0x2E8BA2E8BA2E8BALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::pair<std::string,quasar::PTree>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0x2E8BA2E8BA2E8BA3 * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::pair<std::string,quasar::PTree> *,std::pair<std::string,quasar::PTree> *,std::pair<std::string,quasar::PTree> *>(&v15, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 88;
        std::allocator<std::pair<std::string,quasar::PTree>>::destroy[abi:ne200100](a1, v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::pair<std::string,quasar::PTree> *,std::pair<std::string,quasar::PTree> *,std::pair<std::string,quasar::PTree> *>(&v16, a2, (a2 + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,quasar::PTree>>,std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

void std::vector<std::pair<std::string,quasar::PTree>>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 88;
        std::allocator<std::pair<std::string,quasar::PTree>>::destroy[abi:ne200100](a1, v3);
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

void std::allocator_traits<std::allocator<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>>>::destroy[abi:ne200100]<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,void,0>(uint64_t a1, uint64_t a2)
{
  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::~basic_ptree(a2 + 24);
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void quasar::SystemConfig::removeCommentNodes(quasar::SystemConfig *this)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  quasar::SystemConfig::findCommentNodes(this, (this + 72), __p, &v25);
  if (SBYTE7(v9) < 0)
  {
    operator delete(__p[0]);
  }

  v2 = v25;
  for (i = v26; v2 != i; v2 += 24)
  {
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
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "remove child: ", 14);
      v5 = *(v2 + 23);
      if (v5 >= 0)
      {
        v6 = v2;
      }

      else
      {
        v6 = *v2;
      }

      if (v5 >= 0)
      {
        v7 = *(v2 + 23);
      }

      else
      {
        v7 = *(v2 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }

    quasar::PTree::erase(this + 72, v2);
  }

  __p[0] = &v25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1B5028898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = (v14 - 72);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void quasar::SystemConfig::findCommentNodes(uint64_t a1, quasar::PTree *a2, uint64_t a3, uint64_t a4)
{
  v8 = quasar::PTree::begin(a2);
  v9 = quasar::PTree::end(a2);
  if (v8 != v9)
  {
    v10 = v9;
    do
    {
      v11 = *(a3 + 23);
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(a3 + 8);
      }

      if (v11)
      {
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v8, &__p);
      }

      else if (*(v8 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v8, *(v8 + 8));
      }

      else
      {
        v12 = *v8;
        __p.__r_.__value_.__r.__words[2] = *(v8 + 16);
        *&__p.__r_.__value_.__l.__data_ = v12;
      }

      if (!std::string::compare(v8, 0, 2uLL, "__"))
      {
        std::vector<std::string>::push_back[abi:ne200100](a4, &__p);
      }

      else if ((quasar::PTree::isLeaf((v8 + 24)) & 1) == 0)
      {
        quasar::SystemConfig::findCommentNodes(a1, v8 + 24, &__p, a4);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v8 += 88;
    }

    while (v8 != v10);
  }
}

void sub_1B5028A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
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

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
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

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1B5028D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 33) < 0)
  {
    operator delete(*(v14 - 56));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SystemConfig::hasParam(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1552) == 1)
  {
    quasar::PTree::getStringOptional(a1 + 72, a2);
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
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Config file must be loaded before calling this method (state = ", 63);
  v4 = MEMORY[0x1B8C84C00](v3, *(a1 + 1552));
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, ").");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

void quasar::PTree::getChildOptional(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, ".");
  quasar::split(a2, __p, 0, v4);
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, ".");
  quasar::split(a2, __p, 0, v4);
}

void sub_1B5028EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::split(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  __dst[3] = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 23);
  v8 = *a2;
  v9 = a2[1];
  if (v7 >= 0)
  {
    v8 = a2;
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (v7 < 0)
  {
    v7 = v9;
  }

  v10[0] = v8;
  v10[1] = v8 + v7;
  boost::algorithm::detail::is_any_ofF<char>::is_any_ofF<boost::iterator_range<char const*>>(__dst, v10);
  boost::algorithm::split<std::vector<std::string>,std::string const&,boost::algorithm::detail::is_any_ofF<char>>(a4, a1, __dst, a3 ^ 1);
}

void sub_1B5029038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, unint64_t a15)
{
  if (a15 >= 0x11)
  {
    if (a13)
    {
      MEMORY[0x1B8C85310](a13, 0x1000C8077774924);
    }
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void *boost::algorithm::detail::is_any_ofF<char>::is_any_ofF<boost::iterator_range<char const*>>(void *__dst, uint64_t a2)
{
  *__dst = 0;
  v4 = *a2;
  v5 = *(a2 + 8);
  __dst[2] = v5 - v4;
  if ((v5 - v4) >= 0x11)
  {
    operator new[]();
  }

  if (v5 != v4)
  {
    memmove(__dst, v4, v5 - v4);
  }

  std::__sort<std::__less<char,char> &,char *>();
  return __dst;
}

void boost::algorithm::split<std::vector<std::string>,std::string const&,boost::algorithm::detail::is_any_ofF<char>>(uint64_t a1, uint64_t a2, void *__src, int a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = __src[2];
  __n = v7;
  __srca[0] = 0;
  if (v7 < 0x11)
  {
    memcpy(__srca, __src, v7);
    v13 = __n;
    v12[0] = 0;
    if (__n < 0x11)
    {
      memcpy(v12, __srca, __n);
      __dst[2] = v13;
      __dst[0] = 0;
      if (v13 <= 0x10)
      {
        memcpy(__dst, v12, v13);
        v11 = a4;
        boost::algorithm::iter_split<std::vector<std::string>,std::string const&,boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(a1, a2, __dst);
      }

      operator new[]();
    }

    operator new[]();
  }

  operator new[]();
}

void sub_1B50292E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    MEMORY[0x1B8C85310](a17, v17);
  }

  if (v18 >= 0x11)
  {
    if (a10)
    {
      MEMORY[0x1B8C85310](a10, v17);
    }
  }

  _Unwind_Resume(exception_object);
}

void boost::algorithm::iter_split<std::vector<std::string>,std::string const&,boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
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
    v6 = *(a2 + 8);
  }

  v7 = *(a3 + 16);
  v9[2] = v7;
  v9[0] = 0;
  if (v7 < 0x11)
  {
    memcpy(v9, a3, v7);
    v10 = *(a3 + 24);
    boost::algorithm::split_iterator<std::__wrap_iter<char const*>>::split_iterator<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(v8, v5, v5 + v6, v9);
  }

  operator new[]();
}

void sub_1B5029500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void (**a32)(void, void, uint64_t), uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void (**a42)(void, void, uint64_t))
{
  boost::function2<boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::~function2(&a32);
  boost::function2<boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::~function2(&a42);
  boost::function2<boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::~function2((v42 - 248));
  boost::function2<boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::~function2((v42 - 136));
  _Unwind_Resume(a1);
}

void boost::algorithm::split_iterator<std::__wrap_iter<char const*>>::split_iterator<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = *(a4 + 16);
  v7[2] = v6;
  v7[0] = 0;
  if (v6 < 0x11)
  {
    memcpy(v7, a4, v6);
    v8 = *(a4 + 24);
    boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char const*>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(a1, v7);
  }

  operator new[]();
}

void boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char const*>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  v5[2] = v4;
  v5[0] = 0;
  if (v4 < 0x11)
  {
    memcpy(v5, a2, v4);
    v6 = *(a2 + 24);
    boost::function2<boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::function2<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(a1, v5);
  }

  operator new[]();
}

void sub_1B50297D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  if (a12 >= 0x11)
  {
    boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char const*>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(&a10);
  }

  _Unwind_Resume(exception_object);
}

void boost::function2<boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::assign_to<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 16);
  v4[2] = v3;
  v4[0] = 0;
  if (v3 < 0x11)
  {
    memcpy(v4, a2, v3);
    v5 = *(a2 + 24);
    boost::detail::function::basic_vtable2<boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::assign_to<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(boost::function2<boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::assign_to<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>)::stored_vtable, v4);
  }

  operator new[]();
}

void sub_1B50298F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  if (a12 >= 0x11)
  {
    boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char const*>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(&a10);
  }

  _Unwind_Resume(exception_object);
}

void boost::function2<boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::function2<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  v4 = *(a2 + 16);
  v5[2] = v4;
  v5[0] = 0;
  if (v4 < 0x11)
  {
    memcpy(v5, a2, v4);
    v6 = *(a2 + 24);
    boost::function2<boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::assign_to<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(a1, v5);
  }

  operator new[]();
}

void sub_1B5029A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  if (a12 >= 0x11)
  {
    boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char const*>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(&a10);
  }

  _Unwind_Resume(exception_object);
}

void boost::detail::function::basic_vtable2<boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::assign_to<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  v5[2] = v4;
  v5[0] = 0;
  if (v4 < 0x11)
  {
    memcpy(v5, a2, v4);
    v6 = *(a2 + 24);
    boost::detail::function::basic_vtable2<boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::assign_to<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(a1, v5);
  }

  operator new[]();
}

{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 16);
  v4[2] = v3;
  v4[0] = 0;
  if (v3 < 0x11)
  {
    memcpy(v4, a2, v3);
    v5 = *(a2 + 24);
    boost::detail::function::basic_vtable2<boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::assign_functor<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>();
  }

  operator new[]();
}

void sub_1B5029B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  if (a12 >= 0x11)
  {
    boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char const*>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(&a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5029C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  if (a12 >= 0x11)
  {
    boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char const*>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(&a10);
  }

  _Unwind_Resume(exception_object);
}

char *boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>::operator()<std::__wrap_iter<char const*>>(uint64_t a1, char *a2, char *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  v11 = v6;
  v10[0] = 0;
  if (v6 >= 0x11)
  {
    operator new[]();
  }

  memcpy(v10, a1, v6);
  v7 = a3;
  v8 = a3;
  if (a2 != a3)
  {
    v7 = a2;
    while (!boost::algorithm::detail::is_any_ofF<char>::operator()<char>(v10, *v7))
    {
      if (++v7 == a3)
      {
        v7 = a3;
        break;
      }
    }

    v8 = v7;
  }

  if (v11 >= 0x11 && v10[0])
  {
    MEMORY[0x1B8C85310](v10[0], 0x1000C8077774924);
  }

  if (v8 != a3)
  {
    if (!*(a1 + 24))
    {
      do
      {
        if (!boost::algorithm::detail::is_any_ofF<char>::operator()<char>(a1, *v7))
        {
          break;
        }

        ++v7;
      }

      while (v7 != a3);
    }

    return v8;
  }

  return a3;
}

void sub_1B5029E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  if (a11 >= 0x11)
  {
    boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char const*>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::function2<boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::operator()(void *a1)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v4, "call to empty boost::function");
    v4.__vftable = &unk_1F2D12808;
    boost::throw_exception<boost::bad_function_call>(&v4);
  }

  v1 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v2 = a1 + 1;

  return v1(v2);
}

uint64_t boost::algorithm::split_iterator<std::__wrap_iter<char const*>>::increment(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*a1)
  {
    result = boost::function2<boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::operator()(a1);
    v2 = *(a1 + 56);
  }

  else
  {
    v4 = *(a1 + 56);
    result = v4;
  }

  v5 = result == v2 && v4 == v2;
  if (v5 && *(a1 + 40) == v2)
  {
    *(a1 + 64) = 1;
  }

  *(a1 + 32) = *(a1 + 48);
  *(a1 + 40) = result;
  *(a1 + 48) = v4;
  return result;
}

BOOL boost::algorithm::detail::is_any_ofF<char>::operator()<char>(void *a1, int a2)
{
  v2 = a1[2];
  if (v2 >= 0x11)
  {
    a1 = *a1;
    v3 = (a1 + v2);
  }

  else
  {
    v3 = (a1 + v2);
    if (!v2)
    {
      return a1 != v3 && *a1 <= a2;
    }
  }

  do
  {
    v4 = a1 + (v2 >> 1);
    v6 = *v4;
    v5 = v4 + 1;
    v7 = v2 >> 1;
    v2 += ~(v2 >> 1);
    if (v6 < a2)
    {
      a1 = v5;
    }

    else
    {
      v2 = v7;
    }
  }

  while (v2);
  return a1 != v3 && *a1 <= a2;
}

uint64_t std::vector<std::string>::__init_with_sentinel[abi:ne200100]<boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::string,std::__wrap_iter<char const*>>,boost::algorithm::split_iterator<std::__wrap_iter<char const*>>,boost::use_default,boost::use_default>,boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::string,std::__wrap_iter<char const*>>,boost::algorithm::split_iterator<std::__wrap_iter<char const*>>,boost::use_default,boost::use_default>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v25 = 0;
  while (1)
  {
    result = boost::algorithm::split_iterator<std::__wrap_iter<char const*>>::equal(a2, a3);
    if (result)
    {
      break;
    }

    std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, *(a2 + 32), *(a2 + 40), *(a2 + 40) - *(a2 + 32));
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v8 >= v7)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3);
      v11 = v10 + 1;
      if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x555555555555555)
      {
        v13 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v13 = v11;
      }

      v26.__end_cap_.__value_ = a1;
      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v13);
      }

      v14 = 24 * v10;
      v15 = *__p;
      *(v14 + 16) = v23;
      *v14 = v15;
      __p[1] = 0;
      v23 = 0;
      __p[0] = 0;
      v16 = 24 * v10 + 24;
      v17 = *(a1 + 8) - *a1;
      v18 = 24 * v10 - v17;
      memcpy((v14 - v17), *a1, v17);
      v19 = *a1;
      *a1 = v18;
      *(a1 + 8) = v16;
      v20 = *(a1 + 16);
      *(a1 + 16) = 0;
      v26.__end_ = v19;
      v26.__end_cap_.__value_ = v20;
      v26.__first_ = v19;
      v26.__begin_ = v19;
      std::__split_buffer<std::string>::~__split_buffer(&v26);
      v21 = SHIBYTE(v23);
      *(a1 + 8) = v16;
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v9 = *__p;
      *(v8 + 16) = v23;
      *v8 = v9;
      *(a1 + 8) = v8 + 24;
    }

    boost::algorithm::split_iterator<std::__wrap_iter<char const*>>::increment(a2);
  }

  return result;
}

void sub_1B502A1B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t boost::algorithm::split_iterator<std::__wrap_iter<char const*>>::equal(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = *(a1 + 64);
  }

  else
  {
    v4 = 1;
  }

  if (!*a2)
  {
    LOBYTE(v5) = 1;
    goto LABEL_11;
  }

  v5 = *(a2 + 64);
  if ((v4 | v5))
  {
LABEL_11:
    v9 = v4 ^ v5 ^ 1;
    return v9 & 1;
  }

  v6 = *(a1 + 32);
  v7 = *(a2 + 32);
  v8 = *(a1 + 40) - v6;
  v9 = v8 == *(a2 + 40) - v7 && !memcmp(v6, v7, v8) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
  return v9 & 1;
}

_BYTE *std::string::__init_with_size[abi:ne200100]<char *,char *>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::wstring> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t quasar::PTree::getChildOptional(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    while (1)
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      if (v4 == v5)
      {
        break;
      }

      v6 = *(v2 + 23);
      if (v6 >= 0)
      {
        v7 = *(v2 + 23);
      }

      else
      {
        v7 = *(v2 + 8);
      }

      while (1)
      {
        v8 = *(v4 + 23);
        v9 = v8;
        if ((v8 & 0x80u) != 0)
        {
          v8 = *(v4 + 8);
        }

        if (v8 == v7)
        {
          v10 = v9 >= 0 ? v4 : *v4;
          v11 = v6 >= 0 ? v2 : *v2;
          if (!memcmp(v10, v11, v7))
          {
            break;
          }
        }

        v4 += 88;
        if (v4 == v5)
        {
          return 0;
        }
      }

      v2 += 24;
      a1 = v4 + 24;
      if (v3 == v2)
      {
        return v4 + 24;
      }
    }
  }

  return 0;
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void quasar::PTree::getChild(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, ".");
  quasar::split(a2, __p, 0, &v4);
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, ".");
  quasar::split(a2, __p, 0, &v4);
}

void sub_1B502A650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SystemConfig::getPtreeOptional(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1552) == 1)
  {
    v2 = a1 + 72;

    quasar::PTree::getChildOptional(v2, a2);
  }

  memset(v3, 0, sizeof(v3));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "Config file must be loaded before calling this method.");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v3);
}

void quasar::SystemConfig::readSpeechModelInfo(quasar::SystemConfig *this)
{
  memset(v3, 0, sizeof(v3));
  v4 = v5;
  v5[0] = 0;
  v6[0] = 0;
  v6[1] = 0;
  v5[1] = 0;
  v5[2] = v6;
  v6[2] = v7;
  v7[0] = 0;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7[1] = 0;
  v12 = 0;
  v14[0] = 0;
  v13 = v14;
  v15[1] = 0;
  v15[0] = 0;
  v14[1] = 0;
  v14[2] = v15;
  v16[1] = 0;
  v16[0] = 0;
  v15[2] = v16;
  std::string::basic_string[abi:ne200100]<0>(__p, "model-info.version");
  quasar::PTree::getString(this + 72, __p);
}

void sub_1B502B74C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *std::__tree<int>::__emplace_unique_key_args<int,int const&>(uint64_t a1, int *a2)
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

void sub_1B502BA1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::string>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::string>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

void std::vector<std::string>::__vdeallocate(std::vector<std::wstring> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

std::__split_buffer<std::wstring>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
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
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
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

std::__split_buffer<std::wstring>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

uint64_t quasar::SystemConfig::enforceMinVersion(uint64_t result, int a2, int a3, uint64_t a4)
{
  v21[0] = a2;
  v21[1] = a3;
  v5 = *(result + 32);
  if (v5 < a2 || v5 == a2 && *(result + 36) < a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    quasar::SystemConfig::Version::str(v21, &v16);
    v7 = std::string::insert(&v16, 0, "Incompatible system config version. Needs to be >= ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v17, " to use ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = *(a4 + 23);
    if (v11 >= 0)
    {
      v12 = a4;
    }

    else
    {
      v12 = *a4;
    }

    if (v11 >= 0)
    {
      v13 = *(a4 + 23);
    }

    else
    {
      v13 = *(a4 + 8);
    }

    v14 = std::string::append(&v18, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v20 = v14->__r_.__value_.__r.__words[2];
    v19 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    quasar::PTree::Error::Error(exception, &v19);
  }

  return result;
}

void sub_1B502C0E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v28);
  goto LABEL_12;
}

uint64_t **std::__tree<int>::__assign_multi<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 7) = *(v9 + 7);
          std::__tree<int>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<int>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<int>::__emplace_multi<int const&>();
  }

  return result;
}

void sub_1B502C2C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<int>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

void quasar::SpeechModelInfo::~SpeechModelInfo(quasar::SpeechModelInfo *this)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 248, *(this + 32));
  std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(this + 224, *(this + 29));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 200, *(this + 26));
  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  std::__tree<std::string>::destroy(this + 96, *(this + 13));
  std::__tree<std::string>::destroy(this + 72, *(this + 10));
  std::__tree<int>::destroy(this + 48, *(this + 7));
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void std::__tree<std::string>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::string>::destroy(a1, *a2);
    std::__tree<std::string>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void std::__tree<int>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<int>::destroy(a1, *a2);
    std::__tree<int>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_1B502C9E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::filesystem::Path::parent_path(quasar::filesystem::Path *this@<X0>, void *a2@<X8>)
{
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v4, (this + 8));
  std::__fs::filesystem::path::parent_path[abi:ne200100](&v4, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v6 = __p;
  }

  *a2 = &unk_1F2CFAA28;
  v3 = (a2 + 1);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v3, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *v3 = v6;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_1B502CB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

double std::__fs::filesystem::path::parent_path[abi:ne200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__parent_path(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

void quasar::SystemConfig::absolutizeFilePathInPtree(const void **a1, quasar::PTree *a2, const void **a3)
{
  if (!quasar::PTree::isLeaf(a2))
  {
    v7 = quasar::PTree::begin(a2);
    v8 = quasar::PTree::end(a2);
    if (v7 == v8)
    {
      return;
    }

    v9 = v8;
    while (1)
    {
      if (*(v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v27, *v7, *(v7 + 8));
      }

      else
      {
        v10 = *v7;
        v27.__r_.__value_.__r.__words[2] = *(v7 + 16);
        *&v27.__r_.__value_.__l.__data_ = v10;
      }

      if (*(a3 + 23) >= 0)
      {
        v11 = *(a3 + 23);
      }

      else
      {
        v11 = a3[1];
      }

      if (v11)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v27.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          std::string::basic_string[abi:ne200100](&v24, v11 + 1);
          if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v13 = &v24;
          }

          else
          {
            v13 = v24.__r_.__value_.__r.__words[0];
          }

          if (*(a3 + 23) >= 0)
          {
            v14 = a3;
          }

          else
          {
            v14 = *a3;
          }

          memmove(v13, v14, v11);
          *(&v13->__r_.__value_.__l.__data_ + v11) = 46;
          if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v15 = &v27;
          }

          else
          {
            v15 = v27.__r_.__value_.__r.__words[0];
          }

          if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v16 = v27.__r_.__value_.__l.__size_;
          }

          v17 = std::string::append(&v24, v15, v16);
          v18 = *&v17->__r_.__value_.__l.__data_;
          v26 = v17->__r_.__value_.__r.__words[2];
          *__p = v18;
          v17->__r_.__value_.__l.__size_ = 0;
          v17->__r_.__value_.__r.__words[2] = 0;
          v17->__r_.__value_.__r.__words[0] = 0;
          quasar::SystemConfig::absolutizeFilePathInPtree(a1, v7 + 24, __p);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(__p[0]);
          }

          if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_50;
          }

          v19 = v24.__r_.__value_.__r.__words[0];
          goto LABEL_49;
        }

        if ((quasar::PTree::isLeaf((v7 + 24)) & 1) == 0)
        {
          if (*(a3 + 23) >= 0)
          {
            v21 = *(a3 + 23);
          }

          else
          {
            v21 = a3[1];
          }

          std::string::basic_string[abi:ne200100](__p, v21 + 2);
          if (v26 >= 0)
          {
            v22 = __p;
          }

          else
          {
            v22 = __p[0];
          }

          if (v21)
          {
            if (*(a3 + 23) >= 0)
            {
              v23 = a3;
            }

            else
            {
              v23 = *a3;
            }

            memmove(v22, v23, v21);
          }

          strcpy(v22 + v21, "[]");
          quasar::SystemConfig::absolutizeFilePathInPtree(a1, v7 + 24, __p);
          if ((SHIBYTE(v26) & 0x80000000) == 0)
          {
            goto LABEL_50;
          }

          v19 = __p[0];
LABEL_49:
          operator delete(v19);
          goto LABEL_50;
        }

        String = quasar::PTree::getString((v7 + 24));
        quasar::SystemConfig::absolutizeFilePaths(a1, a3, String);
      }

      else
      {
        quasar::SystemConfig::absolutizeFilePathInPtree(a1, v7 + 24, &v27);
      }

LABEL_50:
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      v7 += 88;
      if (v7 == v9)
      {
        return;
      }
    }
  }

  v6 = quasar::PTree::getString(a2);

  quasar::SystemConfig::absolutizeFilePaths(a1, a3, v6);
}

void sub_1B502CF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SystemConfig::absolutizeFilePaths(const void **a1, uint64_t *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(v22, "-file");
  if (quasar::endsWith(a2, v22))
  {
    v6 = 1;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, "nt-fsts.\\NT-bizname");
    if (quasar::endsWith(a2, &v19))
    {
      v6 = 1;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v17, "g2p-blacklist");
      if (quasar::endsWith(a2, v17))
      {
        v6 = 1;
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "-directory");
        v6 = quasar::endsWith(a2, __p);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v19);
    }
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
    if (v6)
    {
      goto LABEL_15;
    }
  }

  else if (v6)
  {
LABEL_15:
    std::string::basic_string[abi:ne200100]<0>(v22, "geo-config");
    v7 = quasar::startsWith(a2, v22);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    quasar::SystemConfig::makePathAbsoluteInternal(a1, a3, !v7);
    std::string::basic_string[abi:ne200100]<0>(v22, "-ark-file");
    v8 = quasar::endsWith(a2, v22);
    v9 = v8;
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
      if (!v9)
      {
        return;
      }
    }

    else if (!v8)
    {
      return;
    }

    std::operator+<char>();
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = *v22;
    *(a3 + 16) = v23;
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(v22, "-file-list");
  if (quasar::endsWith(a2, v22))
  {
    v10 = 1;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, "rule-fst");
    if (quasar::endsWith(a2, &v19))
    {
      v10 = 1;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v17, "emoji-keyword-remove-fst-1");
      v10 = quasar::endsWith(a2, v17);
      if (v18 < 0)
      {
        operator delete(v17[0]);
      }
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v19);
    }
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
    if (!v10)
    {
      return;
    }
  }

  else if (!v10)
  {
    return;
  }

  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  kaldi::SplitStringToVector(a3, ",", 1, v22);
  v11 = v22[0];
  for (i = v22[1]; v11 != i; ++v11)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    kaldi::SplitStringToVector(v11, ":", 1, &v19);
    v13 = v19;
    v14 = v20;
    while (v13 != v14)
    {
      if (!quasar::isPlaceholder(v13))
      {
        quasar::SystemConfig::makePathAbsoluteInternal(a1, v13, 1);
      }

      kaldi::JoinVectorToString(&v19, ":", 1, v11);
      v13 += 24;
    }

    v17[0] = &v19;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v17);
  }

  kaldi::JoinVectorToString(v22, ",", 1, a3);
  v19 = v22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
}

void sub_1B502D318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

BOOL quasar::endsWith(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v2 < 0)
  {
    v2 = a1[1];
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 < 0)
  {
    v4 = a2[1];
  }

  v6 = v3 - 1;
  v7 = v5 - 1;
  while (v2 && v4)
  {
    v8 = *(v6 + v2);
    v9 = *(v7 + v4);
    --v2;
    --v4;
    if (v8 != v9)
    {
      return 0;
    }
  }

  return v4 == 0;
}

{
  v2 = *(a1 + 23);
  v3 = *a1;
  v4 = a1[1];
  if (v2 >= 0)
  {
    v3 = a1;
  }

  if (v2 >= 0)
  {
    v4 = *(a1 + 23);
  }

  v5 = *(a2 + 23);
  v6 = *a2;
  v7 = a2[1];
  if (v5 >= 0)
  {
    v6 = a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  v8 = v3 - 4;
  v9 = 4 * v4;
  v10 = 4 * v7;
  v11 = v6 - 4;
  while (v9 && v10)
  {
    v12 = *(v8 + v9);
    v13 = *(v11 + v10);
    v9 -= 4;
    v10 -= 4;
    if (v12 != v13)
    {
      return 0;
    }
  }

  return v10 == 0;
}

void quasar::filesystem::Path::makeAbsolute(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    if (!*(a2 + 23))
    {
      *&a3->__r_.__value_.__l.__data_ = *a2;
      a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
      return;
    }

    goto LABEL_5;
  }

  if (*(a2 + 8))
  {
LABEL_5:
    v6 = std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v11.__pn_, a2);
    if (std::__fs::filesystem::path::__root_directory(v6).__size_)
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
      }

      else
      {
        *&a3->__r_.__value_.__l.__data_ = *a2;
        a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
      }
    }

    else
    {
      std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, (a1 + 8));
      std::__fs::filesystem::operator/[abi:ne200100](&v11, &__p, &v9);
      std::__fs::filesystem::__absolute(&v10, &v9, 0);
      if (SHIBYTE(v10.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(a3, v10.__pn_.__r_.__value_.__l.__data_, v10.__pn_.__r_.__value_.__l.__size_);
        if (SHIBYTE(v10.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v10.__pn_.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        *a3 = v10;
      }

      if (SHIBYTE(v9.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__pn_.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v11.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__pn_.__r_.__value_.__l.__data_);
    }

    return;
  }

  v7 = *a2;

  std::string::__init_copy_ctor_external(a3, v7, 0);
}

void sub_1B502D5B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

const void **quasar::SystemConfig::makePathAbsoluteInternal(const void **result, uint64_t a2, int a3)
{
  if (*(result + 388) != 1)
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
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v8, "Config path is empty. Config file must be loaded before calling this method.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v8);
  }

  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    v6 = result;
    quasar::filesystem::Path::makeAbsolute((result + 5), a2, &v8);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v8;
    *(a2 + 16) = v9;
    v7 = 98;
    if (a3)
    {
      v7 = 93;
    }

    return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v6[v7], a2);
  }

  return result;
}

BOOL quasar::startsWith(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[23];
  v3 = *a1;
  if (v2 >= 0)
  {
    v3 = a1;
  }

  if (v2 >= 0)
  {
    v4 = a1[23];
  }

  else
  {
    v4 = *(a1 + 1);
  }

  v5 = a2[23];
  v6 = *a2;
  if (v5 >= 0)
  {
    v6 = a2;
  }

  if (v5 < 0)
  {
    v5 = *(a2 + 1);
  }

  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v11 = v6;
    return v11 == &v6[v5];
  }

  else
  {
    v9 = v5 - 1;
    v10 = v4 - 1;
    v11 = v6;
    while (*v3 == *v11)
    {
      ++v11;
      if (v10)
      {
        ++v3;
        v12 = v9--;
        --v10;
        if (v12)
        {
          continue;
        }
      }

      return v11 == &v6[v5];
    }

    return 0;
  }
}

std::__fs::filesystem::path *std::__fs::filesystem::operator/[abi:ne200100]@<X0>(std::__fs::filesystem::path *this@<X1>, uint64_t a2@<X0>, std::__fs::filesystem::path *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&a3->__pn_, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__pn_.__r_.__value_.__l.__data_ = *a2;
    a3->__pn_.__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  return std::__fs::filesystem::path::operator/=[abi:ne200100](a3, this);
}

void sub_1B502D808(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::__fs::filesystem::path *std::__fs::filesystem::path::operator/=[abi:ne200100](std::__fs::filesystem::path *a1, std::__fs::filesystem::path *this)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    std::string::operator=(&a1->__pn_, &this->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a1).__size_)
    {
      std::string::push_back(&a1->__pn_, 47);
    }

    v4 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v4 >= 0)
    {
      v5 = this;
    }

    else
    {
      v5 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v4 >= 0)
    {
      size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(&a1->__pn_, v5, size);
  }

  return a1;
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, const void **a2)
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
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__construct_node_hash<std::string const&>();
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

void sub_1B502DAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B502DB98(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void kaldi::SplitStringToVector(const std::string *a1, const char *a2, int a3, uint64_t a4)
{
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v35 = size;
  std::vector<std::string>::clear[abi:ne200100](a4);
  v9 = 0;
  do
  {
    v10 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (v10 >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = a1->__r_.__value_.__r.__words[0];
    }

    if (v10 >= 0)
    {
      v12 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = a1->__r_.__value_.__l.__size_;
    }

    v13 = strlen(a2);
    if (v12 <= v9 || v13 == 0)
    {
      v15 = -1;
      if (a3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v16 = (v11 + v12);
      v17 = (v11 + v9);
LABEL_17:
      v18 = v13;
      v19 = a2;
      while (*v17 != *v19)
      {
        ++v19;
        if (!--v18)
        {
          if (++v17 != v16)
          {
            goto LABEL_17;
          }

          v17 = (v11 + v12);
          break;
        }
      }

      if (v17 == v16)
      {
        v15 = -1;
      }

      else
      {
        v15 = &v17[-v11];
      }

      if (a3)
      {
LABEL_26:
        if (v15 == v9 || v9 == v35)
        {
          goto LABEL_40;
        }
      }
    }

    std::string::basic_string(&v36, a1, v9, v15 - v9, &v37);
    v21 = *(a4 + 8);
    v20 = *(a4 + 16);
    if (v21 >= v20)
    {
      v23 = 0xAAAAAAAAAAAAAAABLL * ((v21 - *a4) >> 3);
      v24 = v23 + 1;
      if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v25 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *a4) >> 3);
      if (2 * v25 > v24)
      {
        v24 = 2 * v25;
      }

      if (v25 >= 0x555555555555555)
      {
        v26 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v26 = v24;
      }

      v37.__end_cap_.__value_ = a4;
      if (v26)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a4, v26);
      }

      v27 = 24 * v23;
      v28 = *&v36.__r_.__value_.__l.__data_;
      *(v27 + 16) = *(&v36.__r_.__value_.__l + 2);
      *v27 = v28;
      memset(&v36, 0, sizeof(v36));
      v29 = 24 * v23 + 24;
      v30 = *(a4 + 8) - *a4;
      v31 = 24 * v23 - v30;
      memcpy((v27 - v30), *a4, v30);
      v32 = *a4;
      *a4 = v31;
      *(a4 + 8) = v29;
      v33 = *(a4 + 16);
      *(a4 + 16) = 0;
      v37.__end_ = v32;
      v37.__end_cap_.__value_ = v33;
      v37.__first_ = v32;
      v37.__begin_ = v32;
      std::__split_buffer<std::string>::~__split_buffer(&v37);
      v34 = SHIBYTE(v36.__r_.__value_.__r.__words[2]);
      *(a4 + 8) = v29;
      if (v34 < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v22 = *&v36.__r_.__value_.__l.__data_;
      *(v21 + 16) = *(&v36.__r_.__value_.__l + 2);
      *v21 = v22;
      *(a4 + 8) = v21 + 24;
    }

LABEL_40:
    v9 = v15 + 1;
  }

  while (v15 != -1);
}

void sub_1B502E0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL quasar::isPlaceholder(unsigned __int8 *a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "\");
  v2 = quasar::startsWith(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1B502E140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::JoinVectorToString(uint64_t *a1, const std::string::value_type *a2, int a3, __int128 *a4)
{
  memset(__p, 0, 24);
  v6 = *a1;
  v5 = a1[1];
  if (v5 != *a1)
  {
    v10 = 0;
    for (i = 0; i < 0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3); ++i)
    {
      v12 = v6 + v10;
      v13 = *(v6 + v10 + 23);
      if (a3)
      {
        if ((*(v6 + v10 + 23) & 0x80) != 0)
        {
          if (!*(v6 + v10 + 8))
          {
            goto LABEL_21;
          }
        }

        else if (!*(v6 + v10 + 23))
        {
          goto LABEL_21;
        }
      }

      if (v13 >= 0)
      {
        v14 = (v6 + v10);
      }

      else
      {
        v14 = *v12;
      }

      if (v13 >= 0)
      {
        v15 = *(v6 + v10 + 23);
      }

      else
      {
        v15 = *(v12 + 8);
      }

      std::string::append(__p, v14, v15);
      v6 = *a1;
      v5 = a1[1];
      if (i >= -1 - 0x5555555555555555 * ((v5 - *a1) >> 3))
      {
        goto LABEL_21;
      }

      if (!a3)
      {
        goto LABEL_20;
      }

      if ((*(v6 + v10 + 47) & 0x8000000000000000) == 0)
      {
        if (!*(v6 + v10 + 47))
        {
          goto LABEL_21;
        }

LABEL_20:
        std::string::append(__p, a2);
        v6 = *a1;
        v5 = a1[1];
        goto LABEL_21;
      }

      if (*(v6 + v10 + 32))
      {
        goto LABEL_20;
      }

LABEL_21:
      v10 += 24;
    }
  }

  v16 = *(a4 + 2);
  v17 = *a4;
  *a4 = __p[0];
  *&__p[0].__r_.__value_.__l.__data_ = v17;
  __p[0].__r_.__value_.__r.__words[2] = v16;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }
}

void sub_1B502E2A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SystemConfig::SystemConfigInfoCache::putIfNotExist(std::mutex *a1, std::string::size_type a2, uint64_t a3)
{
  std::mutex::lock(a1);
  if (a1[1].__m_.__sig)
  {
    quasar::SystemConfig::SystemConfigInfo::SystemConfigInfo(v7);
    if (!kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::Get(a1[1].__m_.__sig, a2, v7))
    {
      sig = a1[1].__m_.__sig;
      if (*sig)
      {
        kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::InsertWithValueFunction<kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::Insert(std::string const&,quasar::SystemConfig::SystemConfigInfo const&)::{lambda(quasar::SystemConfig::SystemConfigInfo&)#1}>(sig, a2, a3);
      }
    }

    quasar::SystemConfig::SystemConfigInfo::~SystemConfigInfo(v7);
  }

  std::mutex::unlock(a1);
}

uint64_t *kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::InsertWithValueFunction<kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::Insert(std::string const&,quasar::SystemConfig::SystemConfigInfo const&)::{lambda(quasar::SystemConfig::SystemConfigInfo&)#1}>(unint64_t *a1, std::string::size_type a2, uint64_t a3)
{
  v23 = &v23;
  v24 = &v23;
  v25 = 0;
  v22.__r_.__value_.__r.__words[0] = a2;
  v6 = std::__hash_table<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,std::__unordered_map_hasher<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,false>,std::__unordered_map_equal<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>>>::find<std::string const*>(a1 + 1, &v22);
  if (v6)
  {
    v7 = v6[3];
    if (&v23 != v7)
    {
      v8 = v7[1];
      if (v8 != &v23)
      {
        v9 = *v7;
        *(v9 + 8) = v8;
        *v8 = v9;
        v10 = v23;
        v23[1] = v7;
        *v7 = v10;
        v7[1] = &v23;
        --a1[9];
        v23 = v7;
        ++v25;
      }
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(a1 + 1, v6);
  }

  else
  {
    v11 = a1[9];
    if (v11 < *a1)
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v22, *a2, *(a2 + 8));
      }

      else
      {
        v22 = *a2;
      }

      std::__list_imp<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>>::__create_node[abi:ne200100]<std::piecewise_construct_t const&,std::tuple<std::string>,std::tuple<>>();
    }

    v12 = a1[7];
    if (&v23 != v12)
    {
      v13 = v12[1];
      if (v13 != &v23)
      {
        v14 = *v12;
        *(v14 + 8) = v13;
        *v13 = v14;
        v15 = v23;
        v23[1] = v12;
        *v12 = v15;
        v12[1] = &v23;
        a1[9] = v11 - 1;
        v23 = v12;
        ++v25;
      }
    }

    v22.__r_.__value_.__r.__words[0] = (v24 + 2);
    std::__hash_table<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,std::__unordered_map_hasher<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,false>,std::__unordered_map_equal<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>>>::__erase_unique<std::string const*>(a1 + 1, &v22);
    std::string::operator=((v24 + 2), a2);
  }

  v16 = v24;
  quasar::SystemConfig::SystemConfigInfo::operator=((v24 + 5), a3);
  v22.__r_.__value_.__r.__words[0] = (v16 + 2);
  v22.__r_.__value_.__l.__size_ = v16;
  std::__hash_table<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,std::__unordered_map_hasher<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,false>,std::__unordered_map_equal<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>>>::__emplace_unique_key_args<std::string const*,std::pair<std::string const* const,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>>(a1 + 1, &v22);
  v17 = a1[8];
  if (v17 != v16)
  {
    v18 = v16[1];
    if (v18 != v17)
    {
      v19 = *v16;
      *(v19 + 8) = v18;
      *v18 = v19;
      v20 = *v17;
      *(v20 + 8) = v16;
      *v16 = v20;
      *v17 = v16;
      v16[1] = v17;
      --v25;
      ++a1[9];
    }
  }

  std::__list_imp<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>>::clear(&v23);
  return v16 + 5;
}

uint64_t _ZNSt3__14pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN6quasar12SystemConfig16SystemConfigInfoEEC2B8ne200100IJS6_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSD_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSM_IJXspT2_EEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  bzero((a1 + 24), 0x330uLL);
  quasar::SystemConfig::SystemConfigInfo::SystemConfigInfo((a1 + 24));
  return a1;
}

void sub_1B502E6E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<std::__list_node<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>::construct[abi:ne200100]<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,std::piecewise_construct_t const&,std::tuple<std::string>,std::tuple<>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *__p = *a4;
  v5 = *(a4 + 16);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  _ZNSt3__14pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN6quasar12SystemConfig16SystemConfigInfoEEC2B8ne200100IJS6_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSD_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSM_IJXspT2_EEEE(a2, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B502E758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,std::__unordered_map_hasher<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,false>,std::__unordered_map_equal<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>>>::__emplace_unique_key_args<std::string const*,std::pair<std::string const* const,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>>(void *a1, uint64_t *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100]((a1 + 4), *a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_19;
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
LABEL_19:
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
      goto LABEL_19;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  v13 = v11[2];
  if (v13 != *a2 && !std::equal_to<std::string>::operator()[abi:ne200100]((a1 + 5), v13, *a2))
  {
    goto LABEL_18;
  }

  return v11;
}

void quasar::SystemConfig::SystemConfigInfo::~SystemConfigInfo(quasar::SystemConfig::SystemConfigInfo *this)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 776);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 736);
  std::__tree<std::string>::destroy(this + 704, *(this + 89));
  std::__tree<std::__value_type<int,std::map<std::string,double>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,double>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,double>>>>::destroy(this + 680, *(this + 86));
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::~__hash_table(this + 640);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 600);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>>>::~__hash_table(this + 560);
  std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::~__hash_table(this + 520);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>>>::~__hash_table(this + 480);
  v2 = (this + 456);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<std::string>::destroy(this + 432, *(this + 55));
  if (*(this + 431) < 0)
  {
    operator delete(*(this + 51));
  }

  quasar::SpeechModelInfo::~SpeechModelInfo((this + 128));
  quasar::PTree::~PTree((this + 64));
  *(this + 4) = &unk_1F2CFAA28;
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__list_imp<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        std::__destroy_at[abi:ne200100]<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,0>((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,quasar::TranslationPairSetting>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::string const,quasar::TranslationPairSetting>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_set<std::string>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<int,std::map<std::string,double>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,double>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,double>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,std::map<std::string,double>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,double>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,double>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,std::map<std::string,double>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,double>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,double>>>>::destroy(a1, a2[1]);
    std::__tree<std::string>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::pair<std::string,std::string>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void quasar::SystemConfig::getModelVersion(quasar::SystemConfig *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 388) != 1)
  {
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
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v6);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v6, "Config file must be loaded before calling this method.");
    goto LABEL_16;
  }

  v2 = *(this + 184);
  if (v2 != 2)
  {
    if (v2 == 1)
    {
      if ((*(this + 159) & 0x80000000) == 0)
      {
        *&a2->__r_.__value_.__l.__data_ = *(this + 136);
        v3 = *(this + 19);
LABEL_8:
        a2->__r_.__value_.__r.__words[2] = v3;
        return;
      }

      v4 = *(this + 17);
      v5 = *(this + 18);
      goto LABEL_11;
    }

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
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v6);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v6, "Config file does not have model-info node.");
LABEL_16:
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v6);
  }

  if ((*(this + 439) & 0x80000000) == 0)
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 26);
    v3 = *(this + 54);
    goto LABEL_8;
  }

  v4 = *(this + 52);
  v5 = *(this + 53);
LABEL_11:

  std::string::__init_copy_ctor_external(a2, v4, v5);
}

uint64_t quasar::SystemConfig::getSpeechModelInfo(quasar::SystemConfig *this)
{
  if (*(this + 388) != 1)
  {
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
    v3 = 0u;
    v4 = 0u;
    v2 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v2, "Config file must be loaded before calling this method.");
    goto LABEL_6;
  }

  if (*(this + 184) != 1)
  {
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
    v3 = 0u;
    v4 = 0u;
    v2 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v2, "Config file does not have speech model-info node.");
LABEL_6:
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v2);
  }

  return this + 136;
}