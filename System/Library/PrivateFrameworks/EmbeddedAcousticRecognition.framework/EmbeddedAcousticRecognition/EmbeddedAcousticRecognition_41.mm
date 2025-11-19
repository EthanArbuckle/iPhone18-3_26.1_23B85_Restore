void sub_1B533BF84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **p_p)
{
  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);

  _Unwind_Resume(a1);
}

void sub_1B533C0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = _EARLanguageDetectorV2;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t maxpool(uint64_t a1, void *a2)
{
  result = kaldi::MatrixBase<float>::NumCols(a1);
  if (result >= 1)
  {
    v5 = 0;
    do
    {
      v6 = kaldi::MatrixBase<float>::MaxByCol(a1, v5, 0);
      if (v6 < *(*a2 + 4 * v5))
      {
        v6 = *(*a2 + 4 * v5);
      }

      *(*a2 + 4 * v5++) = v6;
      result = kaldi::MatrixBase<float>::NumCols(a1);
    }

    while (v5 < result);
  }

  return result;
}

void sub_1B533CD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_48c54_ZTSNSt3__110shared_ptrIN6quasar17PSRAudioProcessorEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_48c54_ZTSNSt3__110shared_ptrIN6quasar17PSRAudioProcessorEEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<quasar::RecogAudioBuffer>::__shared_ptr_emplace[abi:ne200100]<unsigned long &,int,int,BOOL,char const(&)[1],std::shared_ptr<kaldi::Timer const>,int,std::allocator<quasar::RecogAudioBuffer>,0>(void *a1, int *a2, int *a3, int *a4, char *a5, char *__s, __int128 *a7, int *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFF8E0;
  std::allocator<quasar::RecogAudioBuffer>::construct[abi:ne200100]<quasar::RecogAudioBuffer,unsigned long &,int,int,BOOL,char const(&)[1],std::shared_ptr<kaldi::Timer const>,int>(&v8, (a1 + 3), a2, a3, a4, a5, __s, a7, a8);
}

void std::allocator<quasar::RecogAudioBuffer>::construct[abi:ne200100]<quasar::RecogAudioBuffer,unsigned long &,int,int,BOOL,char const(&)[1],std::shared_ptr<kaldi::Timer const>,int>(int a1, uint64_t a2, int *a3, int *a4, int *a5, char *a6, char *__s, __int128 *a8, int *a9)
{
  v11 = *a3;
  v12 = *a4;
  v13 = *a5;
  v14 = *a6;
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  v15 = *a8;
  *a8 = 0;
  *(a8 + 1) = 0;
  quasar::RecogAudioBuffer::RecogAudioBuffer(a2, v11, v12, v13, v14, __p, &v15, *a9, 0, 4000);
}

void sub_1B533D0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  std::allocator<quasar::RecogAudioBuffer>::construct[abi:ne200100]<quasar::RecogAudioBuffer,unsigned long &,int,int,BOOL,char const(&)[1],std::shared_ptr<kaldi::Timer const>,int>(va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<quasar::PSRAudioProcessor>::__shared_ptr_emplace[abi:ne200100]<quasar::SystemConfig &,std::string,unsigned long &,std::shared_ptr<quasar::RecogAudioBuffer> &,BOOL &,std::allocator<quasar::PSRAudioProcessor>,0>(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, unsigned __int8 *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D0D0B0;
  quasar::PSRAudioProcessor::PSRAudioProcessor(a1 + 3, a2, a3, *a4, a5, *a6);
  return a1;
}

void std::__shared_ptr_emplace<quasar::PSRAudioProcessor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D0D0B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::PSRAudioProcessor>::__on_zero_shared(uint64_t a1)
{
  v4 = (a1 + 80);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 + 56);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

unint64_t quasar::anonymous namespace::StringToInteger<unsigned int>::convert(uint64_t a1)
{
  *__error() = 0;
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  v3 = strtoul(v2, 0, 10);
  if (*__error() == 34)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "strtoul: out of range");
    __cxa_throw(exception, off_1E7C1A158, MEMORY[0x1E69E5280]);
  }

  return v3;
}

quasar::PTree *quasar::PTree::PTree(quasar::PTree *this, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  *this = 0;
  v3 = (this + 8);
  if (SHIBYTE(v7) < 0)
  {
    std::string::__init_copy_ctor_external(v3, __p[0], __p[1]);
    v4 = SHIBYTE(v7);
    *(this + 5) = 0;
    *(this + 6) = 0;
    *(this + 4) = 0;
    *(this + 56) = 1;
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&v3->__r_.__value_.__l.__data_ = *__p;
    *(this + 3) = v7;
    *(this + 5) = 0;
    *(this + 6) = 0;
    *(this + 4) = 0;
    *(this + 56) = 1;
  }

  return this;
}

void sub_1B533D43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::PTree::getMatrix<float>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  kaldi::Matrix<float>::Matrix(a2);
  if ((*(a1 + 56) & 1) == 0)
  {
    v13 = *(a1 + 32);
    if (v13 == *(a1 + 40))
    {
      return;
    }

    v14 = *(v13 + 23);
    if (v14 < 0)
    {
      v14 = *(v13 + 8);
    }

    if (v14)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "encoding");
      quasar::PTree::getChildOptional(a1, __p);
    }
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v4 == v5)
  {
    goto LABEL_16;
  }

  v6 = *(v4 + 23);
  if (v6 < 0)
  {
    v6 = *(v4 + 8);
  }

  if (v6)
  {
LABEL_16:
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
    v16 = 0u;
    v17 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unable to convert non-list structure to matrix.", 47);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  kaldi::Matrix<float>::Resize(a2, -1171354717 * ((v5 - v4) >> 3), -1171354717 * ((*(v4 + 64) - *(v4 + 56)) >> 3), 0, 0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v8 != v7)
  {
    v9 = 0;
    do
    {
      v10 = *a2;
      v11 = *(a2 + 16);
      v12 = kaldi::MatrixBase<float>::NumCols(a2);
      *&v16 = 0;
      __p[0] = (v10 + 4 * v11 * v9);
      __p[1] = v12;
      quasar::PTree::getVector<float>(v8 + 24, &v32);
      kaldi::VectorBase<float>::CopyFromVec(__p, &v32.__r_.__value_.__l.__data_);
      kaldi::Vector<float>::Destroy(&v32);
      v8 += 88;
      ++v9;
    }

    while (v8 != v7);
  }
}

BOOL quasar::PTree::isList(quasar::PTree *this)
{
  v1 = *(this + 4);
  if (v1 == *(this + 5))
  {
    return 0;
  }

  v2 = *(v1 + 23);
  if (v2 < 0)
  {
    v2 = *(v1 + 8);
  }

  return v2 == 0;
}

float quasar::PTree::getVector<float>@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if ((*(a1 + 56) & 1) != 0 || v4 != v5)
  {
    if (v4 == v5)
    {
      goto LABEL_12;
    }

    v6 = *(v4 + 23);
    if (v6 < 0)
    {
      v6 = *(v4 + 8);
    }

    if (v6)
    {
LABEL_12:
      memset(v11, 0, sizeof(v11));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, "Unable to convert non-list structure to vector.");
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v11);
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    kaldi::Vector<float>::Resize(a2, -1171354717 * ((v5 - v4) >> 3), 0);
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    if (v9 != v8)
    {
      v10 = 0;
      do
      {
        result = std::stod((v9 + 32), 0);
        *(*a2 + (v10 >> 30)) = result;
        v9 += 88;
        v10 += 0x100000000;
      }

      while (v9 != v8);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

void sub_1B533DED8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    JUMPOUT(0x1B533DF0CLL);
  }

  JUMPOUT(0x1B533DF10);
}

uint64_t quasar::getType(quasar *this)
{
  return 3;
}

{
  return 2;
}

void *quasar::PTree::BadPath::BadPath(void *a1, __int128 *a2)
{
  *a1 = &unk_1F2D0D100;
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

uint64_t quasar::PTree::BadPath::what(quasar::PTree::BadPath *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

void *quasar::PTree::Error::Error(void *a1, __int128 *a2)
{
  *a1 = &unk_1F2D0D128;
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

uint64_t quasar::PTree::Error::what(quasar::PTree::Error *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

void *quasar::PTree::JsonParseError::JsonParseError(void *a1, __int128 *a2)
{
  *a1 = &unk_1F2D0D150;
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

uint64_t quasar::PTree::JsonParseError::what(quasar::PTree::JsonParseError *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

void quasar::PTree::readJson()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_1B533E248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 __p, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
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

void sub_1B533E3B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::PTree::JsonParseError::~JsonParseError(std::exception *this)
{
  this->__vftable = &unk_1F2D0D150;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F2D0D150;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x1B8C85350);
}

void sub_1B533E488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11)
{
  std::locale::~locale(&a10);
  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::~basic_ptree(&a11);
  _Unwind_Resume(a1);
}

void quasar::PTreeHelper::PTreeFromPTree(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

uint64_t boost::property_tree::json_parser::write_json<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>(__int128 *a1, uint64_t a2, const std::locale *a3, uint64_t a4)
{
  v17[19] = *MEMORY[0x1E69E9840];
  std::ofstream::basic_ofstream(&v15);
  v8 = &v15 + *(v15 - 24);
  if ((v8[32] & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v13, "cannot open file");
    boost::property_tree::file_parser_error::file_parser_error(&v14, &v13, a1, 0);
    v14.__locale_ = &unk_1F2CFFB50;
    v12[0] = "/AppleInternal/Library/BuildRoots/4~B_v8ugAyYI0IKEYsMtCXGlJLPsrxIHMQK5jjw9Y/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/property_tree/json_parser.hpp";
    v12[1] = "void boost::property_tree::json_parser::write_json(const std::string &, const Ptree &, const std::locale &, BOOL) [Ptree = boost::property_tree::basic_ptree<std::string, std::string>]";
    v12[2] = 126;
    boost::throw_exception<boost::property_tree::json_parser::json_parser_error>(&v14, v12);
  }

  std::ios_base::getloc((&v15 + *(v15 - 24)));
  std::ios_base::imbue(v8, a3);
  std::locale::~locale(&v14);
  v9 = *(v8 + 5);
  if (v9)
  {
    (*(v9->__locale_ + 2))(v9, a3);
    std::locale::locale(&v13, v9 + 1);
    std::locale::operator=(v9 + 1, a3);
    std::locale::~locale(&v13);
  }

  std::locale::~locale(&v11);
  boost::property_tree::json_parser::write_json_internal<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>(&v15, a2, a1, a4);
  v15 = *MEMORY[0x1E69E54D0];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x1E69E54D0] + 24);
  MEMORY[0x1B8C84A00](&v16);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](v17);
}

void sub_1B533E8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, std::runtime_error a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  boost::property_tree::file_parser_error::~file_parser_error(&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ofstream::~ofstream(&a27, MEMORY[0x1E69E54D0]);
  MEMORY[0x1B8C85200](&STACK[0x220]);
  _Unwind_Resume(a1);
}

uint64_t quasar::PTree::getBool(quasar::PTree *this)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 1), *(this + 2));
  }

  else
  {
    __p = *(this + 8);
  }

  v1 = quasar::PTree::toBool(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v1;
}

void sub_1B533E9E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B533EA6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::PTree::BadPath::~BadPath(std::exception *this)
{
  this->__vftable = &unk_1F2D0D100;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F2D0D100;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::PTree::getChildWithoutSplit(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2 == v3)
  {
    return 0;
  }

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

    v2 += 88;
    if (v2 == v3)
    {
      return 0;
    }
  }

  return v2 + 24;
}

uint64_t quasar::PTree::getDataType(quasar::PTree *this)
{
  if (*(this + 56) == 1)
  {
    return *this;
  }

  else
  {
    return 4;
  }
}

void quasar::PTree::writeProperJson()
{
  memset(v0, 0, sizeof(v0));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "writeProperJson unsupported");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v0);
}

void sub_1B533EEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 - 40) = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v9 - 40));
  _Unwind_Resume(a1);
}

void sub_1B533EF74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::pair<std::string,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::pair[abi:ne200100]<std::string const&,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>,0>(std::string *this, __int128 *a2, __int128 *a3)
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

void sub_1B533F198(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>,std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>::parse_error(uint64_t a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v4, a2);
  boost::property_tree::file_parser_error::file_parser_error(v5, v4, (a1 + 24), *(a1 + 48));
  v5[0] = &unk_1F2CFFB50;
  v3[0] = "/AppleInternal/Library/BuildRoots/4~B_v8ugAyYI0IKEYsMtCXGlJLPsrxIHMQK5jjw9Y/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/property_tree/json_parser/detail/parser.hpp";
  v3[1] = "void boost::property_tree::json_parser::detail::source<boost::property_tree::json_parser::detail::encoding<char>, std::istreambuf_iterator<char>, std::istreambuf_iterator<char>>::parse_error(const char *) [Encoding = boost::property_tree::json_parser::detail::encoding<char>, Iterator = std::istreambuf_iterator<char>, Sentinel = std::istreambuf_iterator<char>]";
  v3[2] = 47;
  boost::throw_exception<boost::property_tree::json_parser::json_parser_error>(v5, v3);
}

void sub_1B533F278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, std::runtime_error a19)
{
  boost::property_tree::file_parser_error::~file_parser_error(&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::~standard_callbacks(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::~basic_ptree(a1);
}

_DWORD *kaldi::quasar::SparseMatrix<float>::CheckBounds(_DWORD *result, unsigned int a2, unsigned int a3)
{
  if ((a2 & 0x80000000) != 0 || (a3 & 0x80000000) != 0 || *result <= a2 || result[1] <= a3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Index (", 7);
    v4 = MEMORY[0x1B8C84C00](v3, a2);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ", ", 2);
    v6 = MEMORY[0x1B8C84C00](v5, a3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, ") is out of bounds.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__emplace_unique_key_args<std::pair<int,int>,std::piecewise_construct_t const&,std::tuple<std::pair<int,int>&&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__find_equal<std::pair<int,int>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__find_equal<std::pair<int,int>>(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 7);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 8);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t TInputStream::verifyVersion(TInputStream *this, char *a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v9 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::find<std::string>(this + 152, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (this + 160 != v9)
  {
    LOBYTE(__p[0]) = 0;
    v10 = (v9 + 56);
    if (v9[79] < 0)
    {
      v10 = *v10;
    }

    {
      operator new();
    }

    v11 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v10, __p);
    if (LOBYTE(__p[0]) == 1)
    {
      tknPrintf("Error: %s : Expected %s in range [%llu,%llu]\n");
      return 1;
    }

    a5 = v11;
  }

  if (a5 >= a3 && a5 <= a4)
  {
    return 0;
  }

  tknPrintf("Error: %s : %llu : Expected %s in range [%llu,%llu]\n");
  return 1;
}

void sub_1B533F62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  MEMORY[0x1B8C85350](v19, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t TInputStream::verifyHeader(uint64_t a1, char *__s, uint64_t a3, uint64_t a4)
{
  v8 = (a1 + 40);
  v9 = strlen(__s);
  v10 = v9;
  v11 = *(a1 + 63);
  if (v11 < 0)
  {
    if (v9 != *(a1 + 48))
    {
LABEL_8:
      tknPrintf("Error: File '%s' : '%s' : Bad file type, expected '%s'\n");
      return 1;
    }

    if (v9 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v12 = *v8;
  }

  else
  {
    v12 = v8;
    if (v10 != v11)
    {
      goto LABEL_8;
    }
  }

  if (memcmp(v12, __s, v10))
  {
    goto LABEL_8;
  }

  if (!a4)
  {
LABEL_30:
    v23 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v23 = *v23;
    }

    v24 = (a1 + 72);
    if (*(a1 + 95) < 0)
    {
      v24 = *v24;
    }

    tknPrintf("Error: File '%s' : '%s' : Unsupported file version prefix. Supported file versions: ", v23, v24);
    if (a4)
    {
      v25 = (a3 + 24);
      v26 = 1;
      do
      {
        if (!*(v25 - 2))
        {
          if ((v26 & 1) == 0)
          {
            tknPrintString(", ");
          }

          if (**(v25 - 1))
          {
            tknPrintf("%s.", *(v25 - 1));
          }

          tknPrintf("%llu", *v25);
          v26 = 0;
        }

        v25 += 4;
        --a4;
      }

      while (a4);
    }

    tknPrintString("\n");
    return 1;
  }

  v14 = 0;
  v15 = 0;
  v16 = *(a1 + 95);
  v27 = a3;
  v17 = (a3 + 24);
  v18 = a4;
  do
  {
    v19 = strlen(*(v17 - 1));
    v20 = v19;
    if ((v16 & 0x80) != 0)
    {
      if (v19 != *(a1 + 80))
      {
        goto LABEL_26;
      }

      if (v19 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v21 = *(a1 + 72);
    }

    else
    {
      v21 = (a1 + 72);
      if (v20 != v16)
      {
        goto LABEL_26;
      }
    }

    if (!memcmp(v21, *(v17 - 1), v20))
    {
      if (*(a1 + 96) == *v17)
      {
        v18 = v14;
      }

      if (v15)
      {
        v22 = v15;
      }

      else
      {
        v22 = *v17;
      }

      if (!*(v17 - 2))
      {
        v15 = v22;
      }
    }

LABEL_26:
    ++v14;
    v17 += 4;
  }

  while (a4 != v14);
  a3 = v27;
  if (!v15)
  {
    goto LABEL_30;
  }

  if (v18 == a4)
  {
    tknPrintf("Error: %s : %llu : Expected file version in range [%llu,%llu]\n");
    return 1;
  }

  if (*(v27 + 32 * v18 + 8))
  {
    tknPrintf("Error: %s : %llu : Deprecated in or around TextProc version %s. Expected file version in range [%llu,%llu]\n");
    return 1;
  }

  return 0;
}

uint64_t TInputStream::readHeader(std::string *this)
{
  v134 = *MEMORY[0x1E69E9840];
  if (this->__r_.__value_.__s.__data_[8] != 1)
  {
    return 0;
  }

  MEMORY[0x1B8C84820](&this[3], "");
  this[4].__r_.__value_.__r.__words[0] = 1;
  if (this[2].__r_.__value_.__s.__data_[15] < 0)
  {
    *this[1].__r_.__value_.__r.__words[2] = 0;
    this[2].__r_.__value_.__r.__words[0] = 0;
  }

  else
  {
    this[1].__r_.__value_.__s.__data_[16] = 0;
    this[2].__r_.__value_.__s.__data_[15] = 0;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&this[6].__r_.__value_.__l.__size_, this[6].__r_.__value_.__r.__words[2]);
  this[6].__r_.__value_.__l.__size_ = &this[6].__r_.__value_.__r.__words[2];
  this[7].__r_.__value_.__r.__words[0] = 0;
  this[6].__r_.__value_.__r.__words[2] = 0;
  std::istream::tellg();
  v3 = v118;
  __s1 = v132;
  v131 = xmmword_1B5AE2110;
  v133 = 1;
  TInputStream::getNextLine(this, &__s1);
  if (*(&v131 + 1) >= v131)
  {
    if (v133)
    {
      __str[0].__r_.__value_.__s.__data_[0] = 0;
      TBuffer<char>::insert(&__s1, *(&v131 + 1), __str, 1uLL);
      --*(&v131 + 1);
    }

    else if (v131)
    {
      __s1[v131 - 1] = 0;
    }
  }

  else
  {
    __s1[*(&v131 + 1)] = 0;
  }

  v4 = __s1;
  if (!strncmp(__s1, "TKNHEADER_", 0xAuLL))
  {
    __str[0].__r_.__value_.__r.__words[0] = &__str[1];
    *&__str[0].__r_.__value_.__r.__words[1] = xmmword_1B5AE2110;
    v119 = 1;
    while (1)
    {
      if (*(&v131 + 1) >= v131)
      {
        if (v133)
        {
          LOBYTE(v125.__vftable) = 0;
          TBuffer<char>::insert(&__s1, *(&v131 + 1), &v125, 1uLL);
          --*(&v131 + 1);
        }

        else if (v131)
        {
          __s1[v131 - 1] = 0;
        }
      }

      else
      {
        __s1[*(&v131 + 1)] = 0;
      }

      NextToken = getNextToken(__s1, __str, " ");
      if (__str[0].__r_.__value_.__r.__words[2] >= __str[0].__r_.__value_.__l.__size_)
      {
        if (v119)
        {
          LOBYTE(v125.__vftable) = 0;
          TBuffer<char>::insert(__str, __str[0].__r_.__value_.__r.__words[2]--, &v125, 1uLL);
        }

        else if (__str[0].__r_.__value_.__l.__size_)
        {
          *(__str[0].__r_.__value_.__r.__words[0] + __str[0].__r_.__value_.__l.__size_ - 1) = 0;
        }
      }

      else
      {
        *(__str[0].__r_.__value_.__r.__words[0] + __str[0].__r_.__value_.__r.__words[2]) = 0;
      }

      v6 = __str[0].__r_.__value_.__r.__words[0];
      if (!strcmp(__str[0].__r_.__value_.__l.__data_, "TKNHEADER_END"))
      {
        break;
      }

      if (!NextToken)
      {
        v53 = &this->__r_.__value_.__s.__data_[16];
        if (this[1].__r_.__value_.__s.__data_[15] < 0)
        {
          v53 = *v53;
        }

        v54 = TBuffer<char>::c_str(&__s1);
        tknPrintf("Error: File '%s' : '%s' : Bad entry in file header\n", v53, v54);
        std::string::basic_string[abi:ne200100]<0>(&__p, "");
        TException::TException(&v125, &__p);
        v125.__vftable = &unk_1F2CFF890;
        if (v128 >= 0)
        {
          v55 = &v126;
        }

        else
        {
          v55 = v126;
        }

        conditionalAssert(v55, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 239);
        TException::~TException(&v125);
        if (SHIBYTE(v122) < 0)
        {
          operator delete(__p);
        }

        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(&v125, "");
        TException::TException(exception, &v125);
        *exception = &unk_1F2CFF890;
      }

      if (__str[0].__r_.__value_.__r.__words[2] >= __str[0].__r_.__value_.__l.__size_)
      {
        if (v119)
        {
          LOBYTE(v125.__vftable) = 0;
          TBuffer<char>::insert(__str, __str[0].__r_.__value_.__r.__words[2]--, &v125, 1uLL);
        }

        else if (__str[0].__r_.__value_.__l.__size_)
        {
          v6->__r_.__value_.__s.__data_[__str[0].__r_.__value_.__l.__size_ - 1] = 0;
        }
      }

      else
      {
        v6->__r_.__value_.__s.__data_[__str[0].__r_.__value_.__r.__words[2]] = 0;
      }

      v7 = __str[0].__r_.__value_.__r.__words[0];
      if (!strcmp(__str[0].__r_.__value_.__l.__data_, "TKNHEADER_FILETYPE"))
      {
        getNextToken(NextToken, __str, " ");
        if (__str[0].__r_.__value_.__r.__words[2] >= __str[0].__r_.__value_.__l.__size_)
        {
          if (v119)
          {
            LOBYTE(v125.__vftable) = 0;
            TBuffer<char>::insert(__str, __str[0].__r_.__value_.__r.__words[2]--, &v125, 1uLL);
          }

          else if (__str[0].__r_.__value_.__l.__size_)
          {
            *(__str[0].__r_.__value_.__r.__words[0] + __str[0].__r_.__value_.__l.__size_ - 1) = 0;
          }
        }

        else
        {
          *(__str[0].__r_.__value_.__r.__words[0] + __str[0].__r_.__value_.__r.__words[2]) = 0;
        }

        MEMORY[0x1B8C84820](&this[1].__r_.__value_.__r.__words[2], __str[0].__r_.__value_.__r.__words[0]);
      }

      else
      {
        if (__str[0].__r_.__value_.__r.__words[2] >= __str[0].__r_.__value_.__l.__size_)
        {
          if (v119)
          {
            LOBYTE(v125.__vftable) = 0;
            TBuffer<char>::insert(__str, __str[0].__r_.__value_.__r.__words[2]--, &v125, 1uLL);
          }

          else if (__str[0].__r_.__value_.__l.__size_)
          {
            *(v7 + __str[0].__r_.__value_.__l.__size_ - 1) = 0;
          }
        }

        else
        {
          *(v7 + __str[0].__r_.__value_.__r.__words[2]) = 0;
        }

        if (strcmp(__str[0].__r_.__value_.__l.__data_, "TKNHEADER_FILEVERSION"))
        {
          v60 = &this->__r_.__value_.__s.__data_[16];
          if (this[1].__r_.__value_.__s.__data_[15] < 0)
          {
            v60 = *v60;
          }

          v61 = TBuffer<char>::c_str(__str);
          tknPrintf("Error: File '%s' : '%s' : Bad entry in file header\n", v60, v61);
          std::string::basic_string[abi:ne200100]<0>(&__p, "");
          TException::TException(&v125, &__p);
          v125.__vftable = &unk_1F2CFF890;
          if (v128 >= 0)
          {
            v62 = &v126;
          }

          else
          {
            v62 = v126;
          }

          conditionalAssert(v62, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 255);
          TException::~TException(&v125);
          if (SHIBYTE(v122) < 0)
          {
            operator delete(__p);
          }

          v63 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(&v125, "");
          TException::TException(v63, &v125);
          *v63 = &unk_1F2CFF890;
        }

        this[4].__r_.__value_.__r.__words[0] = atol(NextToken);
      }

      if (!TInputStream::getNextLine(this, &__s1))
      {
        v8 = &this->__r_.__value_.__s.__data_[16];
        if (this[1].__r_.__value_.__s.__data_[15] < 0)
        {
          v8 = *v8;
        }

        tknPrintf("Error: File '%s' : Missing TKNHEADER_END\n", v8);
        std::string::basic_string[abi:ne200100]<0>(&__p, "");
        TException::TException(&v125, &__p);
        v125.__vftable = &unk_1F2CFF890;
        if (v128 >= 0)
        {
          v9 = &v126;
        }

        else
        {
          v9 = v126;
        }

        conditionalAssert(v9, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 263);
        TException::~TException(&v125);
        if (SHIBYTE(v122) < 0)
        {
          operator delete(__p);
        }

        v10 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(&v125, "");
        TException::TException(v10, &v125);
        *v10 = &unk_1F2CFF890;
      }
    }

    if (!NextToken)
    {
      v80 = &this->__r_.__value_.__s.__data_[16];
      if (this[1].__r_.__value_.__s.__data_[15] < 0)
      {
        v80 = *v80;
      }

      tknPrintf("Error: '%s' : TKNHEADER_END does not take a parameter\n", v80);
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      TException::TException(&v125, &__p);
      v125.__vftable = &unk_1F2CFF890;
      if (v128 >= 0)
      {
        v81 = &v126;
      }

      else
      {
        v81 = v126;
      }

      conditionalAssert(v81, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 228);
      TException::~TException(&v125);
      if (SHIBYTE(v122) < 0)
      {
        operator delete(__p);
      }

      v82 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(&v125, "");
      TException::TException(v82, &v125);
      *v82 = &unk_1F2CFF890;
    }

    data = this[2].__r_.__value_.__s.__data_[15];
    if ((data & 0x8000000000000000) != 0)
    {
      data = this[2].__r_.__value_.__l.__data_;
    }

    if (!data)
    {
      v83 = &this->__r_.__value_.__s.__data_[16];
      if (this[1].__r_.__value_.__s.__data_[15] < 0)
      {
        v83 = *v83;
      }

      tknPrintf("Error: File '%s' : Missing TKNHEADER_FILETYPE\n", v83);
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      TException::TException(&v125, &__p);
      v125.__vftable = &unk_1F2CFF890;
      if (v128 >= 0)
      {
        v84 = &v126;
      }

      else
      {
        v84 = v126;
      }

      conditionalAssert(v84, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 269);
      TException::~TException(&v125);
      if (SHIBYTE(v122) < 0)
      {
        operator delete(__p);
      }

      v85 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(&v125, "");
      TException::TException(v85, &v125);
      *v85 = &unk_1F2CFF890;
    }

    if (v119 == 1 && v6 != &__str[1] && v6)
    {
      v12 = v6;
      goto LABEL_267;
    }

LABEL_268:
    v2 = 1;
    goto LABEL_269;
  }

  if (*(&v131 + 1) >= v131)
  {
    if (v133)
    {
      __str[0].__r_.__value_.__s.__data_[0] = 0;
      TBuffer<char>::insert(&__s1, *(&v131 + 1), __str, 1uLL);
      --*(&v131 + 1);
    }

    else if (v131)
    {
      v4[v131 - 1] = 0;
    }
  }

  else
  {
    v4[*(&v131 + 1)] = 0;
  }

  if (!strcmp(__s1, "HEADER_BEGIN"))
  {
    v125.__vftable = v127;
    v126 = xmmword_1B5AE2110;
    v13 = 1;
    v129 = 1;
    __p = v123;
    v122 = xmmword_1B5AE2110;
    v124 = 1;
    v105 = *(this[7].__r_.__value_.__l.__size_ + 64);
    v108 = 0;
    v109 = 0;
    v110 = 0;
    while (1)
    {
      if (!TInputStream::getNextLine(this, &__s1))
      {
        v57 = &this->__r_.__value_.__s.__data_[16];
        if (this[1].__r_.__value_.__s.__data_[15] < 0)
        {
          v57 = *v57;
        }

        tknPrintf("Error: File '%s' : Missing HEADER_END\n", v57);
        std::string::basic_string[abi:ne200100]<0>(&v111, "");
        TException::TException(__str, &v111);
        __str[0].__r_.__value_.__r.__words[0] = &unk_1F2CFF890;
        if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
        {
          size = &__str[0].__r_.__value_.__s.__data_[8];
        }

        else
        {
          size = __str[0].__r_.__value_.__l.__size_;
        }

        conditionalAssert(size, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 384);
        TException::~TException(__str);
        if (SHIBYTE(v111.__end_) < 0)
        {
          operator delete(v111.__first_);
        }

        v59 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__str, "");
        TException::TException(v59, __str);
        *v59 = &unk_1F2CFF890;
      }

      if (*(&v131 + 1) >= v131)
      {
        if (v133)
        {
          LOBYTE(v111.__first_) = 0;
          TBuffer<char>::insert(&__s1, *(&v131 + 1), &v111, 1uLL);
          --*(&v131 + 1);
        }

        else if (v131)
        {
          __s1[v131 - 1] = 0;
        }
      }

      else
      {
        __s1[*(&v131 + 1)] = 0;
      }

      v14 = getNextToken(__s1, &v125, " ");
      v15 = getNextToken(v14, &__p, " ");
      if (*(&v126 + 1) >= v126)
      {
        if (v129)
        {
          LOBYTE(v111.__first_) = 0;
          TBuffer<char>::insert(&v125, *(&v126 + 1), &v111, 1uLL);
          --*(&v126 + 1);
        }

        else if (v126)
        {
          *(v125.__vftable + v126 - 1) = 0;
        }
      }

      else
      {
        *(&v125.~exception + *(&v126 + 1)) = 0;
      }

      v16 = v125.__vftable;
      if (!strcmp(v125.__vftable, "HEADER_END"))
      {
        if (v15)
        {
          v86 = &this->__r_.__value_.__s.__data_[16];
          if (this[1].__r_.__value_.__s.__data_[15] < 0)
          {
            v86 = *v86;
          }

          tknPrintf("Error: '%s' : HEADER_END does not take a parameter\n", v86);
          std::string::basic_string[abi:ne200100]<0>(&v111, "");
          TException::TException(__str, &v111);
          __str[0].__r_.__value_.__r.__words[0] = &unk_1F2CFF890;
          if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
          {
            v87 = &__str[0].__r_.__value_.__s.__data_[8];
          }

          else
          {
            v87 = __str[0].__r_.__value_.__l.__size_;
          }

          conditionalAssert(v87, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 297);
          TException::~TException(__str);
          if (SHIBYTE(v111.__end_) < 0)
          {
            operator delete(v111.__first_);
          }

          v88 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__str, "");
          TException::TException(v88, __str);
          *v88 = &unk_1F2CFF890;
        }

        v45 = this[2].__r_.__value_.__s.__data_[15];
        if ((v45 & 0x8000000000000000) != 0)
        {
          v45 = this[2].__r_.__value_.__l.__data_;
        }

        if (!v45)
        {
          v89 = &this->__r_.__value_.__s.__data_[16];
          if (this[1].__r_.__value_.__s.__data_[15] < 0)
          {
            v89 = *v89;
          }

          tknPrintf("Error: File '%s' : Missing FILE_TYPE\n", v89);
          std::string::basic_string[abi:ne200100]<0>(&v111, "");
          TException::TException(__str, &v111);
          __str[0].__r_.__value_.__r.__words[0] = &unk_1F2CFF890;
          if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
          {
            v90 = &__str[0].__r_.__value_.__s.__data_[8];
          }

          else
          {
            v90 = __str[0].__r_.__value_.__l.__size_;
          }

          conditionalAssert(v90, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 390);
          TException::~TException(__str);
          if (SHIBYTE(v111.__end_) < 0)
          {
            operator delete(v111.__first_);
          }

          v91 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__str, "");
          TException::TException(v91, __str);
          *v91 = &unk_1F2CFF890;
        }

        if (*(this[7].__r_.__value_.__l.__size_ + 64) != v105)
        {
          v92 = &this->__r_.__value_.__s.__data_[16];
          if (this[1].__r_.__value_.__s.__data_[15] < 0)
          {
            v92 = *v92;
          }

          tknPrintf("Error: File '%s' : File codepage does not match the voc codepage\n", v92);
          std::string::basic_string[abi:ne200100]<0>(&v111, "");
          TException::TException(__str, &v111);
          __str[0].__r_.__value_.__r.__words[0] = &unk_1F2D00428;
          if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
          {
            v93 = &__str[0].__r_.__value_.__s.__data_[8];
          }

          else
          {
            v93 = __str[0].__r_.__value_.__l.__size_;
          }

          conditionalAssert(v93, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 397);
          TException::~TException(__str);
          if (SHIBYTE(v111.__end_) < 0)
          {
            operator delete(v111.__first_);
          }

          v94 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__str, "");
          TException::TException(v94, __str);
          *v94 = &unk_1F2D00428;
        }

        __str[0].__r_.__value_.__r.__words[0] = &__str[1];
        *&__str[0].__r_.__value_.__r.__words[1] = xmmword_1B5AE2110;
        v120 = 1;
        if (v109 == v108)
        {
          goto LABEL_258;
        }

        v46 = 0;
        v47 = 0;
        do
        {
          TBuffer<wchar_t>::resize(__str, 0);
          p_second = &v108[v46].second;
          if (SHIBYTE(v108[v46].second.__r_.__value_.__r.__words[2]) < 0)
          {
            p_second = *p_second;
          }

          TLocaleInfo::multiByteToUnicode(this[7].__r_.__value_.__l.__size_, p_second, __str);
          v49 = &v108[v46];
          if (SHIBYTE(v108[v46].first.__r_.__value_.__r.__words[2]) < 0)
          {
            v49 = *v49;
          }

          if (TInputStream::isParameter(this, v49))
          {
            v72 = &this->__r_.__value_.__s.__data_[16];
            if (this[1].__r_.__value_.__s.__data_[15] < 0)
            {
              v72 = *v72;
            }

            v73 = &v108[v46];
            if (SHIBYTE(v108[v46].first.__r_.__value_.__r.__words[2]) < 0)
            {
              v73 = *v73;
            }

            tknPrintf("Error: %s : Duplicate setting for %s parameter\n", v72, v73);
            std::string::basic_string[abi:ne200100]<0>(v106, "");
            TException::TException(&v111, v106);
            v111.__first_ = &unk_1F2D00400;
            if (SHIBYTE(v111.__end_cap_.__value_) >= 0)
            {
              p_begin = &v111.__begin_;
            }

            else
            {
              p_begin = v111.__begin_;
            }

            conditionalAssert(p_begin, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 414);
            TException::~TException(&v111);
            if (v107 < 0)
            {
              operator delete(v106[0]);
            }

            v75 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(&v111, "");
            TException::TException(v75, &v111);
            *v75 = &unk_1F2D00400;
          }

          if (__str[0].__r_.__value_.__r.__words[2] >= __str[0].__r_.__value_.__l.__size_)
          {
            if (v120)
            {
              LODWORD(v111.__first_) = 0;
              TBuffer<wchar_t>::insert(__str, __str[0].__r_.__value_.__r.__words[2], &v111, 1uLL);
              v50 = __str[0].__r_.__value_.__r.__words[0];
              --__str[0].__r_.__value_.__r.__words[2];
            }

            else
            {
              v50 = __str[0].__r_.__value_.__r.__words[0];
              if (__str[0].__r_.__value_.__l.__size_)
              {
                *(__str[0].__r_.__value_.__r.__words[0] + 4 * __str[0].__r_.__value_.__l.__size_ - 4) = 0;
              }
            }
          }

          else
          {
            v50 = __str[0].__r_.__value_.__r.__words[0];
            *(__str[0].__r_.__value_.__r.__words[0] + 4 * __str[0].__r_.__value_.__r.__words[2]) = 0;
          }

          v111.__first_ = &v108[v46];
          v51 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&this[6].__r_.__value_.__l.__size_, &v108[v46].first.__r_.__value_.__l.__data_);
          MEMORY[0x1B8C84940](v51 + 56, v50);
          ++v47;
          ++v46;
        }

        while (v47 < 0xAAAAAAAAAAAAAAABLL * ((v109 - v108) >> 4));
        if (v120)
        {
LABEL_258:
          if (__str[0].__r_.__value_.__l.__data_ != &__str[1] && __str[0].__r_.__value_.__r.__words[0])
          {
            MEMORY[0x1B8C85310]();
          }
        }

        __str[0].__r_.__value_.__r.__words[0] = &v108;
        std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](__str);
        if (v124 == 1 && __p != v123 && __p)
        {
          MEMORY[0x1B8C85310]();
        }

        if (v129 == 1)
        {
          v12 = v125.__vftable;
          if (v125.__vftable != v127)
          {
            if (v125.__vftable)
            {
LABEL_267:
              MEMORY[0x1B8C85310](v12, 0x1000C8077774924);
            }
          }
        }

        goto LABEL_268;
      }

      if (!v15)
      {
        v64 = &this->__r_.__value_.__s.__data_[16];
        if (this[1].__r_.__value_.__s.__data_[15] < 0)
        {
          v64 = *v64;
        }

        v65 = TBuffer<char>::c_str(&__s1);
        tknPrintf("Error: File '%s' : %s : Syntax error in header\n", v64, v65);
        std::string::basic_string[abi:ne200100]<0>(&v111, "");
        TException::TException(__str, &v111);
        __str[0].__r_.__value_.__r.__words[0] = &unk_1F2CFF890;
        if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
        {
          v66 = &__str[0].__r_.__value_.__s.__data_[8];
        }

        else
        {
          v66 = __str[0].__r_.__value_.__l.__size_;
        }

        conditionalAssert(v66, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 308);
        TException::~TException(__str);
        if (SHIBYTE(v111.__end_) < 0)
        {
          operator delete(v111.__first_);
        }

        v67 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__str, "");
        TException::TException(v67, __str);
        *v67 = &unk_1F2CFF890;
      }

      if (*(&v126 + 1) >= v126)
      {
        if (v129)
        {
          LOBYTE(v111.__first_) = 0;
          TBuffer<char>::insert(&v125, *(&v126 + 1), &v111, 1uLL);
          --*(&v126 + 1);
        }

        else if (v126)
        {
          *(v16 + v126 - 1) = 0;
        }
      }

      else
      {
        *(&v16->~exception + *(&v126 + 1)) = 0;
      }

      v17 = v125.__vftable;
      if (!strcmp(v125.__vftable, "VERSION"))
      {
        break;
      }

      if (*(&v126 + 1) >= v126)
      {
        if (v129)
        {
          LOBYTE(v111.__first_) = 0;
          TBuffer<char>::insert(&v125, *(&v126 + 1), &v111, 1uLL);
          --*(&v126 + 1);
        }

        else if (v126)
        {
          *(v17 + v126 - 1) = 0;
        }
      }

      else
      {
        *(&v17->~exception + *(&v126 + 1)) = 0;
      }

      v18 = v125.__vftable;
      if (!strcmp(v125.__vftable, "FILE_TYPE"))
      {
        if (*(&v122 + 1) >= v122)
        {
          if (v124)
          {
            LOBYTE(v111.__first_) = 0;
            TBuffer<char>::insert(&__p, *(&v122 + 1), &v111, 1uLL);
            --*(&v122 + 1);
          }

          else if (v122)
          {
            *(__p + v122 - 1) = 0;
          }
        }

        else
        {
          *(__p + *(&v122 + 1)) = 0;
        }

        MEMORY[0x1B8C84820](&this[1].__r_.__value_.__r.__words[2], __p);
        goto LABEL_198;
      }

      if (*(&v126 + 1) >= v126)
      {
        if (v129)
        {
          LOBYTE(v111.__first_) = 0;
          TBuffer<char>::insert(&v125, *(&v126 + 1), &v111, 1uLL);
          --*(&v126 + 1);
        }

        else if (v126)
        {
          *(v18 + v126 - 1) = 0;
        }
      }

      else
      {
        *(&v18->~exception + *(&v126 + 1)) = 0;
      }

      v19 = v125.__vftable;
      if (!strcmp(v125.__vftable, "FILE_VERSION"))
      {
        if (*(&v122 + 1) >= v122)
        {
          if (v124)
          {
            LOBYTE(v111.__first_) = 0;
            TBuffer<char>::insert(&__p, *(&v122 + 1), &v111, 1uLL);
            --*(&v122 + 1);
          }

          else if (v122)
          {
            *(__p + v122 - 1) = 0;
          }
        }

        else
        {
          *(__p + *(&v122 + 1)) = 0;
        }

        v34 = __p;
        v35 = strrchr(__p, 46);
        if (v35)
        {
          v36 = v35;
          if (*(&v122 + 1) >= v122)
          {
            if (v124)
            {
              LOBYTE(v111.__first_) = 0;
              TBuffer<char>::insert(&__p, *(&v122 + 1), &v111, 1uLL);
              --*(&v122 + 1);
            }

            else if (v122)
            {
              v34[v122 - 1] = 0;
            }
          }

          else
          {
            v34[*(&v122 + 1)] = 0;
          }

          std::string::basic_string[abi:ne200100]<0>(__str, __p);
          if (*(&v122 + 1) >= v122)
          {
            if (v124)
            {
              LOBYTE(v111.__first_) = 0;
              TBuffer<char>::insert(&__p, *(&v122 + 1), &v111, 1uLL);
              --*(&v122 + 1);
            }

            else if (v122)
            {
              *(__p + v122 - 1) = 0;
            }
          }

          else
          {
            *(__p + *(&v122 + 1)) = 0;
          }

          std::string::assign(this + 3, __str, 0, v36 - __p);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__data_);
          }

          v37 = v36 + 1;
        }

        else
        {
          if (*(&v122 + 1) >= v122)
          {
            if (v124)
            {
              LOBYTE(v111.__first_) = 0;
              TBuffer<char>::insert(&__p, *(&v122 + 1), &v111, 1uLL);
              --*(&v122 + 1);
            }

            else if (v122)
            {
              v34[v122 - 1] = 0;
            }
          }

          else
          {
            v34[*(&v122 + 1)] = 0;
          }

          v37 = __p;
        }

        this[4].__r_.__value_.__r.__words[0] = atol(v37);
        goto LABEL_198;
      }

      if (*(&v126 + 1) >= v126)
      {
        if (v129)
        {
          LOBYTE(v111.__first_) = 0;
          TBuffer<char>::insert(&v125, *(&v126 + 1), &v111, 1uLL);
          --*(&v126 + 1);
        }

        else if (v126)
        {
          *(v19 + v126 - 1) = 0;
        }
      }

      else
      {
        *(&v19->~exception + *(&v126 + 1)) = 0;
      }

      v20 = v125.__vftable;
      if (!strcmp(v125.__vftable, "PARAMETER"))
      {
        v21 = getNextToken(v14 + 1, &v125, "=");
        if (!v21)
        {
          v68 = &this->__r_.__value_.__s.__data_[16];
          if (this[1].__r_.__value_.__s.__data_[15] < 0)
          {
            v68 = *v68;
          }

          v69 = TBuffer<char>::c_str(&__s1);
          tknPrintf("Error: File '%s' : %s : PARAMETER must contain 'name=value'\n", v68, v69);
          std::string::basic_string[abi:ne200100]<0>(&v111, "");
          TException::TException(__str, &v111);
          __str[0].__r_.__value_.__r.__words[0] = &unk_1F2CFF890;
          if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
          {
            v70 = &__str[0].__r_.__value_.__s.__data_[8];
          }

          else
          {
            v70 = __str[0].__r_.__value_.__l.__size_;
          }

          conditionalAssert(v70, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 353);
          TException::~TException(__str);
          if (SHIBYTE(v111.__end_) < 0)
          {
            operator delete(v111.__first_);
          }

          v71 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__str, "");
          TException::TException(v71, __str);
          *v71 = &unk_1F2CFF890;
        }

        if (*(&v126 + 1) >= v126)
        {
          if (v129)
          {
            LOBYTE(v111.__first_) = 0;
            TBuffer<char>::insert(&v125, *(&v126 + 1), &v111, 1uLL);
            --*(&v126 + 1);
          }

          else if (v126)
          {
            *(v125.__vftable + v126 - 1) = 0;
          }
        }

        else
        {
          *(&v125.~exception + *(&v126 + 1)) = 0;
        }

        v106[0] = v125.__vftable;
        v106[1] = v21 + 1;
        std::pair<std::string,std::string>::pair[abi:ne200100]<char const*,char const*,0>(__str, v106);
        v22 = v109;
        if (v109 >= v110)
        {
          v25 = 0xAAAAAAAAAAAAAAABLL * ((v109 - v108) >> 4);
          v26 = v25 + 1;
          if (v25 + 1 > 0x555555555555555)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v110 - v108) >> 4) > v26)
          {
            v26 = 0x5555555555555556 * ((v110 - v108) >> 4);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v110 - v108) >> 4) >= 0x2AAAAAAAAAAAAAALL)
          {
            v27 = 0x555555555555555;
          }

          else
          {
            v27 = v26;
          }

          v111.__end_cap_.__value_ = &v108;
          if (v27)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(&v108, v27);
          }

          v28 = 16 * ((v109 - v108) >> 4);
          v29 = *&__str[0].__r_.__value_.__l.__data_;
          *(v28 + 16) = *(&__str[0].__r_.__value_.__l + 2);
          *v28 = v29;
          memset(__str, 0, 24);
          v30 = *&__str[1].__r_.__value_.__l.__data_;
          *(v28 + 40) = *(&__str[1].__r_.__value_.__l + 2);
          *(v28 + 24) = v30;
          memset(&__str[1], 0, sizeof(std::string));
          v31 = (48 * v25 - (v109 - v108));
          memcpy(v31, v108, v109 - v108);
          v32 = v108;
          v33 = v110;
          v108 = v31;
          v109 = (48 * v25 + 48);
          v110 = 0;
          v111.__first_ = v32;
          v111.__end_ = v32;
          v111.__end_cap_.__value_ = v33;
          v111.__begin_ = v32;
          std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v111);
          v109 = (48 * v25 + 48);
          if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str[1].__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v23 = *&__str[0].__r_.__value_.__l.__data_;
          *(v109 + 2) = *(&__str[0].__r_.__value_.__l + 2);
          *v22 = v23;
          memset(__str, 0, 24);
          v24 = __str[1].__r_.__value_.__r.__words[2];
          *(v22 + 24) = *&__str[1].__r_.__value_.__l.__data_;
          *(v22 + 5) = v24;
          memset(&__str[1], 0, sizeof(std::string));
          v109 = v22 + 48;
        }

        if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[0].__r_.__value_.__l.__data_);
        }

        v13 = 0;
      }

      else
      {
        if (*(&v126 + 1) >= v126)
        {
          if (v129)
          {
            LOBYTE(v111.__first_) = 0;
            TBuffer<char>::insert(&v125, *(&v126 + 1), &v111, 1uLL);
            --*(&v126 + 1);
          }

          else if (v126)
          {
            *(v20 + v126 - 1) = 0;
          }
        }

        else
        {
          *(&v20->~exception + *(&v126 + 1)) = 0;
        }

        if (!strcmp(v125.__vftable, "CODEPAGE"))
        {
          if (*(&v122 + 1) >= v122)
          {
            if (v124)
            {
              LOBYTE(v111.__first_) = 0;
              TBuffer<char>::insert(&__p, *(&v122 + 1), &v111, 1uLL);
              --*(&v122 + 1);
            }

            else if (v122)
            {
              *(__p + v122 - 1) = 0;
            }
          }

          else
          {
            *(__p + *(&v122 + 1)) = 0;
          }

          std::string::basic_string[abi:ne200100]<0>(__str, __p);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            if (__str[0].__r_.__value_.__l.__size_ != 4)
            {
              if (__str[0].__r_.__value_.__l.__size_ == 7)
              {
                v39 = __str[0].__r_.__value_.__r.__words[0];
                if (*__str[0].__r_.__value_.__l.__data_ != 1769234764 || *(__str[0].__r_.__value_.__r.__words[0] + 3) != 1227714153)
                {
                  goto LABEL_390;
                }

LABEL_228:
                v43 = 1;
              }

              else
              {
                v39 = __str[0].__r_.__value_.__r.__words[0];
                if (__str[0].__r_.__value_.__l.__size_ != 5)
                {
                  goto LABEL_390;
                }

                if (*__str[0].__r_.__value_.__l.__data_ != 759583829 || *(__str[0].__r_.__value_.__r.__words[0] + 4) != 56)
                {
                  goto LABEL_390;
                }

                v43 = 2;
              }

              v105 = v43;
              operator delete(__str[0].__r_.__value_.__l.__data_);
              goto LABEL_198;
            }

            v39 = __str[0].__r_.__value_.__r.__words[0];
            if (*__str[0].__r_.__value_.__l.__data_ != 842347057)
            {
              goto LABEL_390;
            }

            goto LABEL_228;
          }

          if (HIBYTE(__str[0].__r_.__value_.__r.__words[2]) != 4)
          {
            if (HIBYTE(__str[0].__r_.__value_.__r.__words[2]) == 5)
            {
              if (LODWORD(__str[0].__r_.__value_.__l.__data_) != 759583829 || __str[0].__r_.__value_.__s.__data_[4] != 56)
              {
LABEL_389:
                v39 = __str;
LABEL_390:
                tknPrintf("Error: '%s' : Invalid codepage.\n", v39);
                if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str[0].__r_.__value_.__l.__data_);
                }

                v101 = &this->__r_.__value_.__s.__data_[16];
                if (this[1].__r_.__value_.__s.__data_[15] < 0)
                {
                  v101 = *v101;
                }

                v102 = TBuffer<char>::c_str(&__p);
                tknPrintf("Error: File '%s' : '%s' : Invalid codepage\n", v101, v102);
                std::string::basic_string[abi:ne200100]<0>(&v111, "");
                TException::TException(__str, &v111);
                __str[0].__r_.__value_.__r.__words[0] = &unk_1F2D00428;
                if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
                {
                  v103 = &__str[0].__r_.__value_.__s.__data_[8];
                }

                else
                {
                  v103 = __str[0].__r_.__value_.__l.__size_;
                }

                conditionalAssert(v103, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 367);
                TException::~TException(__str);
                if (SHIBYTE(v111.__end_) < 0)
                {
                  operator delete(v111.__first_);
                }

                v104 = __cxa_allocate_exception(0x20uLL);
                std::string::basic_string[abi:ne200100]<0>(__str, "");
                TException::TException(v104, __str);
                *v104 = &unk_1F2D00428;
              }

              v42 = 2;
            }

            else
            {
              if (HIBYTE(__str[0].__r_.__value_.__r.__words[2]) != 7)
              {
                goto LABEL_389;
              }

              if (LODWORD(__str[0].__r_.__value_.__l.__data_) != 1769234764 || *(__str[0].__r_.__value_.__r.__words + 3) != 1227714153)
              {
                goto LABEL_389;
              }

LABEL_225:
              v42 = 1;
            }

            v105 = v42;
            goto LABEL_198;
          }

          if (LODWORD(__str[0].__r_.__value_.__l.__data_) != 842347057)
          {
            goto LABEL_389;
          }

          goto LABEL_225;
        }

LABEL_198:
        v13 = 0;
        if (getNextToken(v15, &__p, " "))
        {
          v76 = &this->__r_.__value_.__s.__data_[16];
          if (this[1].__r_.__value_.__s.__data_[15] < 0)
          {
            v76 = *v76;
          }

          v77 = TBuffer<char>::c_str(&__s1);
          tknPrintf("Error: File '%s' : %s : Syntax error in header\n", v76, v77);
          std::string::basic_string[abi:ne200100]<0>(&v111, "");
          TException::TException(__str, &v111);
          __str[0].__r_.__value_.__r.__words[0] = &unk_1F2CFF890;
          if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
          {
            v78 = &__str[0].__r_.__value_.__s.__data_[8];
          }

          else
          {
            v78 = __str[0].__r_.__value_.__l.__size_;
          }

          conditionalAssert(v78, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 375);
          TException::~TException(__str);
          if (SHIBYTE(v111.__end_) < 0)
          {
            operator delete(v111.__first_);
          }

          v79 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__str, "");
          TException::TException(v79, __str);
          *v79 = &unk_1F2CFF890;
        }
      }
    }

    if ((v13 & 1) == 0)
    {
      v95 = &this->__r_.__value_.__s.__data_[16];
      if (this[1].__r_.__value_.__s.__data_[15] < 0)
      {
        v95 = *v95;
      }

      tknPrintf("Error: '%s' : VERSION must be the first line in header\n", v95);
      std::string::basic_string[abi:ne200100]<0>(&v111, "");
      TException::TException(__str, &v111);
      __str[0].__r_.__value_.__r.__words[0] = &unk_1F2CFF890;
      if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
      {
        v96 = &__str[0].__r_.__value_.__s.__data_[8];
      }

      else
      {
        v96 = __str[0].__r_.__value_.__l.__size_;
      }

      conditionalAssert(v96, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 317);
      TException::~TException(__str);
      if (SHIBYTE(v111.__end_) < 0)
      {
        operator delete(v111.__first_);
      }

      v97 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__str, "");
      TException::TException(v97, __str);
      *v97 = &unk_1F2CFF890;
    }

    if (*(&v122 + 1) >= v122)
    {
      if (v124)
      {
        LOBYTE(v111.__first_) = 0;
        TBuffer<char>::insert(&__p, *(&v122 + 1), &v111, 1uLL);
        --*(&v122 + 1);
      }

      else if (v122)
      {
        *(__p + v122 - 1) = 0;
      }
    }

    else
    {
      *(__p + *(&v122 + 1)) = 0;
    }

    if (atol(__p) != 1)
    {
      v98 = &this->__r_.__value_.__s.__data_[16];
      if (this[1].__r_.__value_.__s.__data_[15] < 0)
      {
        v98 = *v98;
      }

      tknPrintf("Error: '%s' : VERSION must be 1\n", v98);
      std::string::basic_string[abi:ne200100]<0>(&v111, "");
      TException::TException(__str, &v111);
      __str[0].__r_.__value_.__r.__words[0] = &unk_1F2D00428;
      if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
      {
        v99 = &__str[0].__r_.__value_.__s.__data_[8];
      }

      else
      {
        v99 = __str[0].__r_.__value_.__l.__size_;
      }

      conditionalAssert(v99, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 325);
      TException::~TException(__str);
      if (SHIBYTE(v111.__end_) < 0)
      {
        operator delete(v111.__first_);
      }

      v100 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__str, "");
      TException::TException(v100, __str);
      *v100 = &unk_1F2D00428;
    }

    goto LABEL_198;
  }

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v113 = 0u;
  memset(__str, 0, sizeof(__str));
  v118 = v3;
  std::istream::seekg();
  v2 = 0;
LABEL_269:
  if (v133 == 1 && __s1 != v132 && __s1)
  {
    MEMORY[0x1B8C85310]();
  }

  return v2;
}

void sub_1B5341AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, std::exception a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
    if ((v35 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v35)
  {
LABEL_6:
    __p = &a21;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (LOBYTE(STACK[0x5E0]) == 1 && STACK[0x4C8] != a11 && STACK[0x4C8] != 0)
    {
      MEMORY[0x1B8C85310]();
    }

    if (LOBYTE(STACK[0x700]) == 1)
    {
      v38 = STACK[0x5E8];
      if (STACK[0x5E8] != a12)
      {
        if (v38)
        {
          MEMORY[0x1B8C85310](v38, 0x1000C8077774924);
        }
      }
    }

    if (LOBYTE(STACK[0x820]) == 1)
    {
      v39 = STACK[0x708];
      if (STACK[0x708] != a14)
      {
        if (v39)
        {
          MEMORY[0x1B8C85310](v39, 0x1000C8077774924);
        }
      }
    }

    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v34);
  goto LABEL_6;
}

BOOL TInputStream::getNextLine(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 104);
  v4 = MEMORY[0x1E69E5318];
  v5 = MEMORY[0x1E69E9830];
  while (1)
  {
    std::ios_base::getloc((*a1 + *(**a1 - 24)));
    v6 = std::locale::use_facet(&v23, v4);
    (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(&v23);
    v7 = std::istream::getline();
    v8 = *(v7 + *(*v7 - 24) + 32) & 5;
    if (v8)
    {
      return v8 == 0;
    }

    ++*(a1 + 64);
    if (*(a1 + 127) < 0)
    {
      if (*(a1 + 112))
      {
        v9 = *v3;
LABEL_8:
        v10 = strstr(__s1, v9);
        if (v10)
        {
          *v10 = 0;
        }
      }
    }

    else
    {
      v9 = v3;
      if (*(a1 + 127))
      {
        goto LABEL_8;
      }
    }

    v11 = __s1[0];
    if (__s1[0])
    {
      v12 = __s1;
      do
      {
        if ((v11 & 0x80) != 0)
        {
          v13 = __maskrune(v11, 0x4000uLL);
        }

        else
        {
          v13 = *(v5 + 4 * v11 + 60) & 0x4000;
        }

        if (!v13)
        {
          break;
        }

        v14 = *++v12;
        v11 = v14;
      }

      while (v14);
    }

    else
    {
      v12 = __s1;
    }

    v15 = &__s1[strlen(__s1)];
    v16 = v15 - v12;
    do
    {
      v17 = v15;
      v18 = v16;
      if (v15 <= v12)
      {
        break;
      }

      --v15;
      v19 = *(v17 - 1);
      v20 = v19 < 0 ? __maskrune(*(v17 - 1), 0x4000uLL) : *(v5 + 4 * v19 + 60) & 0x4000;
      v16 = v18 - 1;
    }

    while (v20);
    if (v17 != v12)
    {
      TBuffer<char>::resize(a2, 0);
      TBuffer<char>::insert(a2, 0, v12, v18);
      return v8 == 0;
    }
  }
}

{
  v29 = *MEMORY[0x1E69E9840];
  v22 = (a1 + 128);
  __s1 = v25;
  v24 = xmmword_1B5AE2110;
  v26 = 1;
  while (1)
  {
    std::ios_base::getloc((*a1 + *(**a1 - 24)));
    v3 = std::locale::use_facet(&v27, MEMORY[0x1E69E5318]);
    (v3->__vftable[2].~facet_0)(v3, 10);
    std::locale::~locale(&v27);
    v4 = std::istream::getline();
    v5 = *(v4 + *(*v4 - 24) + 32) & 5;
    if (v5)
    {
      goto LABEL_78;
    }

    ++*(a1 + 64);
    TBuffer<wchar_t>::resize(&__s1, 0);
    TLocaleInfo::multiByteToUnicode(*(a1 + 176), v28, &__s1);
    if ((*(a1 + 151) & 0x8000000000000000) != 0)
    {
      if (*(a1 + 136))
      {
LABEL_7:
        if (*(&v24 + 1) >= v24)
        {
          if (v26)
          {
            LODWORD(v27.__locale_) = 0;
            TBuffer<wchar_t>::insert(&__s1, *(&v24 + 1), &v27, 1uLL);
            v6 = __s1;
            --*(&v24 + 1);
          }

          else
          {
            v6 = __s1;
            if (v24)
            {
              __s1[v24 - 1] = 0;
            }
          }
        }

        else
        {
          v6 = __s1;
          __s1[*(&v24 + 1)] = 0;
        }

        v7 = v22;
        if (*(a1 + 151) < 0)
        {
          v7 = *v22;
        }

        v8 = wcsstr(v6, v7);
        if (v8)
        {
          if (*(&v24 + 1) >= v24)
          {
            if (v26)
            {
              LODWORD(v27.__locale_) = 0;
              TBuffer<wchar_t>::insert(&__s1, *(&v24 + 1), &v27, 1uLL);
              v9 = __s1;
              --*(&v24 + 1);
            }

            else
            {
              v9 = __s1;
              if (v24)
              {
                __s1[v24 - 1] = 0;
              }
            }
          }

          else
          {
            v9 = __s1;
            __s1[*(&v24 + 1)] = 0;
          }

          TBuffer<wchar_t>::resize(&__s1, v8 - v9);
        }
      }
    }

    else if (*(a1 + 151))
    {
      goto LABEL_7;
    }

    if (*(&v24 + 1))
    {
      v10 = 0;
      while (1)
      {
        v11 = __s1[v10];
        {
          operator new();
        }

        if (v11 <= 159)
        {
          if (v11 > 0x20 || ((1 << v11) & 0x100002600) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_44;
        }

        if (v11 >= 12288)
        {
          break;
        }

        if (v11 != 160 && v11 != 8203)
        {
          goto LABEL_48;
        }

LABEL_44:
        ++v10;
        v15 = *(&v24 + 1);
        if (v10 >= *(&v24 + 1))
        {
          goto LABEL_49;
        }
      }

      if (v11 == 12288 || v11 == 65279)
      {
        goto LABEL_44;
      }

LABEL_48:
      v15 = *(&v24 + 1);
LABEL_49:
      if (v15 > v10)
      {
        do
        {
          v16 = __s1[v15 - 1];
          {
            operator new();
          }

          if (v16 > 159)
          {
            if (v16 >= 12288)
            {
              if (v16 != 65279 && v16 != 12288)
              {
                goto LABEL_70;
              }
            }

            else if (v16 != 160 && v16 != 8203)
            {
              goto LABEL_70;
            }
          }

          else if (v16 > 0x20 || ((1 << v16) & 0x100002600) == 0)
          {
            goto LABEL_70;
          }

          --v15;
        }

        while (v15 > v10);
        v15 = v10;
      }

LABEL_70:
      if (v15 != v10)
      {
        break;
      }
    }
  }

  if (*(&v24 + 1) >= v24)
  {
    if (v26)
    {
      LODWORD(v27.__locale_) = 0;
      TBuffer<wchar_t>::insert(&__s1, *(&v24 + 1), &v27, 1uLL);
      v19 = __s1;
      --*(&v24 + 1);
    }

    else
    {
      v19 = __s1;
      if (v24)
      {
        __s1[v24 - 1] = 0;
      }
    }
  }

  else
  {
    v19 = __s1;
    __s1[*(&v24 + 1)] = 0;
  }

  TBuffer<wchar_t>::resize(a2, 0);
  TBuffer<wchar_t>::insert(a2, 0, &v19[v10], v15 - v10);
LABEL_78:
  if (v26 == 1 && __s1 != v25 && __s1)
  {
    MEMORY[0x1B8C85310]();
  }

  return v5 == 0;
}

uint64_t TBuffer<char>::c_str(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 >= v3)
  {
    if (*(a1 + 280))
    {
      v5 = 0;
      TBuffer<char>::insert(a1, v2, &v5, 1uLL);
      --*(a1 + 16);
    }

    else if (v3)
    {
      *(*a1 + v3 - 1) = 0;
    }
  }

  else
  {
    *(*a1 + v2) = 0;
  }

  return *a1;
}

BOOL TInputStream::isParameter(TInputStream *this, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v3 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::find<std::string>(this + 152, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return (this + 160) != v3;
}

void sub_1B53421A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B534266C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  MEMORY[0x1B8C85350](a10, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x440]) == 1 && a14 != a11 && a14 != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  _Unwind_Resume(a1);
}

uint64_t TInputStream::getStringParameter(uint64_t a1, char *a2, uint64_t a3, int *a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v7 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::find<std::string>(a1 + 152, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 160 != v7)
  {
    a4 = (v7 + 56);
    if (*(v7 + 79) < 0)
    {
      a4 = *a4;
    }
  }

  return TBuffer<wchar_t>::assign(a3, a4);
}

void sub_1B53427A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TBuffer<char>::resize(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 280) == 1 && *(a1 + 8) < a2)
  {
    *(a1 + 8) = a2 + 1;
    operator new[]();
  }

  v4 = *(a1 + 16);
  if (v4 < a2)
  {
    v5 = a2;
    if (*(a1 + 280))
    {
LABEL_9:
      bzero((*a1 + v4), v5 - v4);
      goto LABEL_10;
    }

    v5 = *(a1 + 8);
    if (v4 < v5)
    {
      if (v5 >= a2)
      {
        v5 = a2;
      }

      goto LABEL_9;
    }
  }

LABEL_10:
  *(a1 + 16) = a2;
}

void TInputModel::TInputModel(TInputModel *this, const TDataManager *a2, const TDataManager *a3, char a4, const char *a5)
{
  *this = a2;
  *(this + 1) = a3;
  IntVar = TInputModel::getIntVar(this, "Version", 1);
  *(this + 2) = IntVar;
  if ((IntVar - 3) <= 0xFFFFFFFD)
  {
    tknPrintf("Error: %llu : Expected %s in range [%llu,%llu]\n", IntVar, "Version", 1, 2);
    std::string::basic_string[abi:ne200100]<0>(&__p, "Unsupported version");
    TException::TException(v55, &__p);
    v55[0].__vftable = &unk_1F2D00400;
    if (v56 >= 0)
    {
      v21 = &v55[1];
    }

    else
    {
      v21 = v55[1].__vftable;
    }

    conditionalAssert(v21, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 609);
    TException::~TException(v55);
    if (SHIBYTE(v54) < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v55, "Unsupported version");
    TException::TException(exception, v55);
    *exception = &unk_1F2D00400;
  }

  if (IntVar != 1)
  {
    v9 = *(this + 1);
    if (v9)
    {
      if (!(*(*v9 + 40))(v9, "Version", 0, 0))
      {
        tknPrintf("Error: bad model. Couldn't locate %s in static component.\n", "Version");
        std::string::basic_string[abi:ne200100]<0>(&__p, "");
        TException::TException(v55, &__p);
        v55[0].__vftable = &unk_1F2D00400;
        if (v56 >= 0)
        {
          v31 = &v55[1];
        }

        else
        {
          v31 = v55[1].__vftable;
        }

        conditionalAssert(v31, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 683);
        TException::~TException(v55);
        if (SHIBYTE(v54) < 0)
        {
          operator delete(__p);
        }

        v32 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v55, "");
        TException::TException(v32, v55);
        *v32 = &unk_1F2D00400;
      }

      if ((TDataManager::getBoolVar(*(this + 1), "IsStaticComponent", 0) & 1) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "Bad static data spec");
        TException::TException(v55, &__p);
        v55[0].__vftable = &unk_1F2D00400;
        if (v56 >= 0)
        {
          v33 = &v55[1];
        }

        else
        {
          v33 = v55[1].__vftable;
        }

        conditionalAssert(v33, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 689);
        TException::~TException(v55);
        if (SHIBYTE(v54) < 0)
        {
          operator delete(__p);
        }

        v34 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v55, "Bad static data spec");
        TException::TException(v34, v55);
        *v34 = &unk_1F2D00400;
      }
    }

    if (*this)
    {
      if (!(*(**this + 40))(*this, "Version", 0, 0))
      {
        tknPrintf("Error: bad model. Couldn't locate %s in dynamic component.\n", "Version");
        std::string::basic_string[abi:ne200100]<0>(&__p, "");
        TException::TException(v55, &__p);
        v55[0].__vftable = &unk_1F2D00400;
        if (v56 >= 0)
        {
          v35 = &v55[1];
        }

        else
        {
          v35 = v55[1].__vftable;
        }

        conditionalAssert(v35, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 699);
        TException::~TException(v55);
        if (SHIBYTE(v54) < 0)
        {
          operator delete(__p);
        }

        v36 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v55, "");
        TException::TException(v36, v55);
        *v36 = &unk_1F2D00400;
      }

      if (TDataManager::getBoolVar(*this, "IsStaticComponent", 0))
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "Bad dynamic data spec");
        TException::TException(v55, &__p);
        v55[0].__vftable = &unk_1F2D00400;
        if (v56 >= 0)
        {
          v37 = &v55[1];
        }

        else
        {
          v37 = v55[1].__vftable;
        }

        conditionalAssert(v37, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 705);
        TException::~TException(v55);
        if (SHIBYTE(v54) < 0)
        {
          operator delete(__p);
        }

        v38 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v55, "Bad dynamic data spec");
        TException::TException(v38, v55);
        *v38 = &unk_1F2D00400;
      }

      if (*this)
      {
        v10 = *(this + 1);
        if (v10)
        {
          v11 = TDataManager::getIntVar(v10, "Version", 1);
          if (v11 != TDataManager::getIntVar(*this, "Version", 1))
          {
            tknPrintf("Error: %s : Unmatched dynamic and static data specs\n", "Version");
            std::string::basic_string[abi:ne200100]<0>(&__p, "");
            TException::TException(v55, &__p);
            v55[0].__vftable = &unk_1F2D00400;
            if (v56 >= 0)
            {
              v47 = &v55[1];
            }

            else
            {
              v47 = v55[1].__vftable;
            }

            conditionalAssert(v47, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 715);
            TException::~TException(v55);
            if (SHIBYTE(v54) < 0)
            {
              operator delete(__p);
            }

            v48 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(v55, "");
            TException::TException(v48, v55);
            *v48 = &unk_1F2D00400;
          }

          __p = 0uLL;
          v54 = 0;
          TDataManager::getStringVar(*this);
          v51 = 0uLL;
          v52 = 0;
          TDataManager::getStringVar(*(this + 1));
          if (memcmp(&__p, &v51, 0))
          {
            tknPrintf("Error: %s : Unmatched dynamic and static data specs\n", "EnhVersion");
            std::string::basic_string[abi:ne200100]<0>(v49, "");
            TException::TException(v55, v49);
            v55[0].__vftable = &unk_1F2D00400;
            if (v56 >= 0)
            {
              v43 = &v55[1];
            }

            else
            {
              v43 = v55[1].__vftable;
            }

            conditionalAssert(v43, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 726);
            TException::~TException(v55);
            if (v50 < 0)
            {
              operator delete(v49[0]);
            }

            v44 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(v55, "");
            TException::TException(v44, v55);
            *v44 = &unk_1F2D00400;
          }
        }
      }
    }

    if (g_bCheckVocCompatibility != 1)
    {
      return;
    }

    __p = 0uLL;
    v54 = 0;
    TInputModel::getStringVar(this, "VocVersionID");
    v12 = HIBYTE(v54);
    if (v54 >= 0)
    {
      v13 = HIBYTE(v54);
    }

    else
    {
      v13 = *(&__p + 1);
    }

    if (!v13 || !*a5)
    {
LABEL_44:
      if (v12 < 0)
      {
        operator delete(__p);
      }

      return;
    }

    v14 = strlen(a5);
    v15 = v14;
    if (v54 < 0)
    {
      if (v14 != *(&__p + 1))
      {
        goto LABEL_119;
      }

      if (*(&__p + 1) == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      p_p = __p;
    }

    else
    {
      if (v14 != HIBYTE(v54))
      {
        goto LABEL_119;
      }

      p_p = &__p;
    }

    if (!memcmp(p_p, a5, v15))
    {
      goto LABEL_44;
    }

LABEL_119:
    std::string::basic_string[abi:ne200100]<0>(&v51, "The model and lexicon are incompatible (different VocVersionID)");
    TException::TException(v55, &v51);
    v55[0].__vftable = &unk_1F2D00400;
    if (v56 >= 0)
    {
      v45 = &v55[1];
    }

    else
    {
      v45 = v55[1].__vftable;
    }

    conditionalAssert(v45, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 740);
    TException::~TException(v55);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51);
    }

    v46 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v55, "The model and lexicon are incompatible (different VocVersionID)");
    TException::TException(v46, v55);
    *v46 = &unk_1F2D00400;
  }

  if (!*this)
  {
    tknPrintf("Error: Bad model. %s is 1 but there is not dynamic component.\n", "Version");
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    TException::TException(v55, &__p);
    v55[0].__vftable = &unk_1F2D00400;
    if (v56 >= 0)
    {
      v25 = &v55[1];
    }

    else
    {
      v25 = v55[1].__vftable;
    }

    conditionalAssert(v25, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 617);
    TException::~TException(v55);
    if (SHIBYTE(v54) < 0)
    {
      operator delete(__p);
    }

    v26 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v55, "");
    TException::TException(v26, v55);
    *v26 = &unk_1F2D00400;
  }

  if (!(*(**this + 40))(*this, "Version", 0, 0))
  {
    tknPrintf("Error: Bad model. Couldn't locate %s\n", "Version");
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    TException::TException(v55, &__p);
    v55[0].__vftable = &unk_1F2D00400;
    if (v56 >= 0)
    {
      v27 = &v55[1];
    }

    else
    {
      v27 = v55[1].__vftable;
    }

    conditionalAssert(v27, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 624);
    TException::~TException(v55);
    if (SHIBYTE(v54) < 0)
    {
      operator delete(__p);
    }

    v28 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v55, "");
    TException::TException(v28, v55);
    *v28 = &unk_1F2D00400;
  }

  if (g_bCheckVocCompatibility == 1)
  {
    __p = 0uLL;
    v54 = 0;
    TDataManager::getStringVar(*this);
  }

  if (TDataManager::getBoolVar(*this, "IsStaticComponent", 0))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Bad data spec");
    TException::TException(v55, &__p);
    v55[0].__vftable = &unk_1F2D00400;
    if (v56 >= 0)
    {
      v29 = &v55[1];
    }

    else
    {
      v29 = v55[1].__vftable;
    }

    conditionalAssert(v29, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 641);
    TException::~TException(v55);
    if (SHIBYTE(v54) < 0)
    {
      operator delete(__p);
    }

    v30 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v55, "Bad data spec");
    TException::TException(v30, v55);
    *v30 = &unk_1F2D00400;
  }

  v17 = *(this + 1);
  BoolVar = TDataManager::getBoolVar(*this, "HasStaticComponent", 0);
  if (v17)
  {
    if ((BoolVar & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "Bad static data spec");
      TException::TException(v55, &__p);
      v55[0].__vftable = &unk_1F2D00400;
      if (v56 >= 0)
      {
        v39 = &v55[1];
      }

      else
      {
        v39 = v55[1].__vftable;
      }

      conditionalAssert(v39, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 657);
      TException::~TException(v55);
      if (SHIBYTE(v54) < 0)
      {
        operator delete(__p);
      }

      v40 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v55, "Bad static data spec");
      TException::TException(v40, v55);
      *v40 = &unk_1F2D00400;
    }

    if ((TDataManager::getBoolVar(*(this + 1), "IsStaticComponent", 0) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "Bad static data spec");
      TException::TException(v55, &__p);
      v55[0].__vftable = &unk_1F2D00400;
      if (v56 >= 0)
      {
        v41 = &v55[1];
      }

      else
      {
        v41 = v55[1].__vftable;
      }

      conditionalAssert(v41, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 662);
      TException::~TException(v55);
      if (SHIBYTE(v54) < 0)
      {
        operator delete(__p);
      }

      v42 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v55, "Bad static data spec");
      TException::TException(v42, v55);
      *v42 = &unk_1F2D00400;
    }

    __p = 0uLL;
    v54 = 0;
    TDataManager::getStringVar(*this);
    v51 = 0uLL;
    v52 = 0;
    TDataManager::getStringVar(*(this + 1));
    v12 = 0;
    if (memcmp(&__p, &v51, 0))
    {
      std::string::basic_string[abi:ne200100]<0>(v49, "Unmatched data spec and static data spec");
      TException::TException(v55, v49);
      v55[0].__vftable = &unk_1F2D00400;
      if (v56 >= 0)
      {
        v23 = &v55[1];
      }

      else
      {
        v23 = v55[1].__vftable;
      }

      conditionalAssert(v23, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 671);
      TException::~TException(v55);
      if (v50 < 0)
      {
        operator delete(v49[0]);
      }

      v24 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v55, "Unmatched data spec and static data spec");
      TException::TException(v24, v55);
      *v24 = &unk_1F2D00400;
    }

    goto LABEL_44;
  }

  if ((a4 & 1) == 0 && ((BoolVar ^ 1) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "The data spec has a static component but it was not specified");
    TException::TException(v55, &__p);
    v55[0].__vftable = &unk_1F2D00400;
    if (v56 >= 0)
    {
      v19 = &v55[1];
    }

    else
    {
      v19 = v55[1].__vftable;
    }

    conditionalAssert(v19, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/misc.cpp", 649);
    TException::~TException(v55);
    if (SHIBYTE(v54) < 0)
    {
      operator delete(__p);
    }

    v20 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v55, "The data spec has a static component but it was not specified");
    TException::TException(v20, v55);
    *v20 = &unk_1F2D00400;
  }
}

void sub_1B5343C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
    if ((v32 & 1) == 0)
    {
LABEL_6:
      if (a25 < 0)
      {
        operator delete(__p);
      }

      if (a31 < 0)
      {
        operator delete(a26);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v32)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v31);
  goto LABEL_6;
}

uint64_t TInputModel::getIntVar(TDataManager **this, const char *a2, uint64_t a3)
{
  v6 = *this;
  if (v6 && (*(*v6 + 40))(v6, a2, 0, 0))
  {
    v7 = *this;
  }

  else
  {
    v7 = this[1];
    if (!v7)
    {
      return a3;
    }
  }

  return TDataManager::getIntVar(v7, a2, a3);
}

void TInputModel::getStringVar(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (v3 && (*(*v3 + 40))(v3, a2, 0, 0))
  {
    v4 = *a1;
  }

  else
  {
    v4 = a1[1];
    if (!v4)
    {

      JUMPOUT(0x1B8C84820);
    }
  }

  TDataManager::getStringVar(v4);
}

BOOL TInputModel::isVar(TInputModel *this, const char *a2)
{
  v4 = *this;
  result = 1;
  if (!v4 || !(*(*v4 + 40))(v4, a2, 0, 0))
  {
    v5 = *(this + 1);
    if (!v5 || !(*(*v5 + 40))(v5, a2, 0, 0))
    {
      return 0;
    }
  }

  return result;
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const*,char const*,0>(_BYTE *a1, char **a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, *a2);
  std::string::basic_string[abi:ne200100]<0>(v4 + 24, a2[1]);
  return a1;
}

void sub_1B53440D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

uint64_t std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

kaldi::FeatureWindowFunction *kaldi::FeatureWindowFunction::FeatureWindowFunction(kaldi::FeatureWindowFunction *this, const kaldi::FrameExtractionOptions *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v4 = *(a2 + 13);
  if (v4 <= 0.0)
  {
    v4 = *a2;
  }

  v5 = (v4 * 0.001 * *(a2 + 2));
  kaldi::Vector<float>::Resize(this, v5, 0);
  v6 = 0;
  v7 = a2 + 24;
  v8 = (v5 - 1);
  do
  {
    v9 = v6;
    if (*(a2 + 47) < 0)
    {
      v12 = *(a2 + 4);
      if (v12 == 5)
      {
        if (**v7 == 1702260592 && *(*v7 + 4) == 121)
        {
          goto LABEL_46;
        }

        v12 = *(a2 + 4);
      }

      else if (v12 == 7)
      {
        v13 = *v7;
        if (**v7 == 1852727656 && *(*v7 + 3) == 1735289198)
        {
LABEL_47:
          v27 = cos(v9 * 6.28318531 / v8) * -0.5 + 0.5;
          goto LABEL_49;
        }

        v15 = *v13;
        v16 = *(v13 + 3);
        if (v15 == 1835884904 && v16 == 1735289197)
        {
LABEL_48:
          v27 = cos(v9 * 6.28318531 / v8) * -0.46 + 0.54;
          goto LABEL_49;
        }
      }

      if (v12 != 11)
      {
        goto LABEL_52;
      }

      v11 = *v7;
      goto LABEL_27;
    }

    v10 = *(a2 + 47);
    if (v10 == 5)
    {
      if (*v7 != 1702260592 || *(a2 + 28) != 121)
      {
LABEL_52:
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v33);
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Invalid window type ", 20);
        v30 = *(a2 + 47);
        if (v30 >= 0)
        {
          v31 = a2 + 24;
        }

        else
        {
          v31 = *(a2 + 3);
        }

        if (v30 >= 0)
        {
          v32 = *(a2 + 47);
        }

        else
        {
          v32 = *(a2 + 4);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v31, v32);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v33);
      }

LABEL_46:
      v26 = cos(v9 * 6.28318531 / v8);
      v27 = pow(v26 * -0.5 + 0.5, 0.85);
LABEL_49:
      v22 = v27;
      goto LABEL_50;
    }

    if (v10 == 7)
    {
      if (*v7 == 1852727656 && *(a2 + 27) == 1735289198)
      {
        goto LABEL_47;
      }

      if (*v7 == 1835884904 && *(a2 + 27) == 1735289197)
      {
        goto LABEL_48;
      }
    }

    v11 = (a2 + 24);
    if (v10 != 11)
    {
      goto LABEL_52;
    }

LABEL_27:
    v19 = *v11;
    v20 = *(v11 + 3);
    v21 = v19 == 0x75676E6174636572 && v20 == 0x72616C75676E6174;
    v22 = 1.0;
    if (!v21)
    {
      goto LABEL_52;
    }

LABEL_50:
    *(*this + 4 * v6++) = v22;
  }

  while (v5 != v6);
  return this;
}

void *kaldi::DeltaFeatures::DeltaFeatures(void *a1, unsigned int *a2)
{
  *a1 = *a2;
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  a1[3] = 0;
  std::vector<kaldi::Vector<float>>::resize(a1 + 1, *a2 + 1);
  kaldi::Vector<float>::Resize(*v4, 1, 0);
  ***v4 = 1065353216;
  if (*a2 >= 1)
  {
    v5 = 1;
    do
    {
      v6 = &(*v4)[3 * v5];
      v7 = a2[1];
      v8 = *(v6 - 4);
      kaldi::Vector<float>::Resize(v6, v8 + 2 * v7, 0);
      if ((v7 & 0x80000000) == 0)
      {
        v9 = 0;
        v10 = (v8 - 1) / 2;
        v11 = -v7;
        if (v10 > (v8 - 1) / -2)
        {
          v12 = (v8 - 1) / 2;
        }

        else
        {
          v12 = (v8 - 1) / -2;
        }

        v13 = v10 + v12 + 1;
        v14 = 0.0;
        do
        {
          if ((v8 & 0x80000000) == 0)
          {
            v15 = 0;
            v16 = *(v6 - 3);
            v17 = *v6;
            do
            {
              v17[v9 + v15] = v17[v9 + v15] + (v11 * *(v16 + 4 * v15));
              ++v15;
            }

            while (v13 != v15);
          }

          v14 = v14 + (v11 * v11);
          ++v9;
        }

        while (v11++ != v7);
      }

      kaldi::VectorBase<float>::Scale();
    }

    while (v5++ < *a2);
  }

  return a1;
}

void sub_1B5344848(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void kaldi::DeltaFeatures::Process(_DWORD *a1, uint64_t a2, int a3, uint64_t a4)
{
  kaldi::MatrixBase<float>::NumRows(a2);
  kaldi::MatrixBase<float>::NumRows(a2);
  kaldi::MatrixBase<float>::NumCols(a2);
  kaldi::VectorBase<float>::SetZero(a4);
  v8 = *a1;
  if ((*a1 & 0x80000000) == 0)
  {
    v9 = 0;
    v18 = a3;
    v19 = a1;
    do
    {
      v10 = *(a1 + 1) + 24 * v9;
      v11 = *(v10 + 8);
      if ((v11 & 0x80000000) == 0)
      {
        v12 = v11 - 1 + ((v11 - 1) >> 31);
        v13 = ((v11 - 1) / 2);
        v14 = v13 - v13;
        v15 = v18 - v13;
        v16 = v12 | 1;
        do
        {
          if (*(*v10 + 4 * v14) != 0.0)
          {
            kaldi::MatrixBase<float>::NumCols(a2);
            kaldi::VectorBase<float>::AddVec<float>();
          }

          ++v14;
          ++v15;
          --v16;
        }

        while (v16);
        a1 = v19;
        v8 = *v19;
      }
    }

    while (v9++ < v8);
  }
}

void kaldi::ComputeDeltas(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v6 = kaldi::MatrixBase<float>::NumRows(a2);
  v7 = kaldi::MatrixBase<float>::NumCols(a2);
  kaldi::Matrix<float>::Resize(a3, v6, v7 + v7 * *a1, 0, 0);
  kaldi::DeltaFeatures::DeltaFeatures(&v12, a1);
  for (i = 0; i < kaldi::MatrixBase<float>::NumRows(a2); ++i)
  {
    v10 = 0;
    v11 = 0;
    v9 = (*a3 + 4 * *(a3 + 16) * i);
    LODWORD(v10) = kaldi::MatrixBase<float>::NumCols(a3);
    kaldi::DeltaFeatures::Process(&v12, a2, i, &v9);
  }

  v9 = &v13;
  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
}

void sub_1B5344ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a10 = &a14;
  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t kaldi::SlidingWindowCmnOptions::Check(uint64_t this)
{
  if (*(this + 13) == 1)
  {
    v1 = *(this + 8);
    if (v1)
    {
      if (v1 != *this - (*this >> 1))
      {
        v3 = this;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
        v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Inconsistent setting: center=true but lookahead is set to ", 58);
        MEMORY[0x1B8C84C00](v2, *(v3 + 8));
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
      }
    }
  }

  return this;
}

void kaldi::SlidingWindowCmnInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kaldi::SlidingWindowCmnOptions::Check(a1);
  v6 = kaldi::MatrixBase<float>::NumRows(a2);
  v7 = kaldi::MatrixBase<float>::NumCols(a2);
  memset(v39, 0, 24);
  kaldi::Vector<double>::Resize(v39, v7, 0);
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v25 = v7;
  kaldi::Vector<double>::Resize(&v36, v7, 0);
  if (v6 >= 1)
  {
    v8 = 0;
    v9 = -1;
    v10 = -1;
    do
    {
      v11 = v9;
      v12 = *(a1 + 13);
      v13 = *a1;
      if (v12 == 1)
      {
        v14 = v8 - v13 / 2;
        v15 = v14 + v13;
      }

      else
      {
        v16 = *(a1 + 8);
        v14 = v8 + v16 - v13;
        v15 = v8 + v16 + 1;
      }

      v17 = v15 - (v14 & (v14 >> 31));
      if ((v12 & 1) == 0 && v17 > v8)
      {
        v17 = *(a1 + 4);
        v18 = v8 + *(a1 + 8);
        if (v18 + 1 > v17)
        {
          v17 = v18 + 1;
        }
      }

      if (v17 > v6)
      {
        v14 = (v14 & ~(v14 >> 31)) + v6 - v17;
      }

      v9 = v14 & ~(v14 >> 31);
      if (v17 >= v6)
      {
        v19 = v6;
      }

      else
      {
        v19 = v17;
      }

      if (v11 == -1)
      {
        kaldi::SubMatrix<double>::SubMatrix(&v26, a2, v14 & ~(v14 >> 31), v19 - v9, 0, v25);
        kaldi::VectorBase<double>::AddRowSumMat(v39, &v26);
        if (*(a1 + 12) == 1)
        {
          kaldi::VectorBase<double>::AddDiagMat2(&v36, &v26, 112, 1.0, 0.0);
        }

        quasar::Bitmap::~Bitmap(&v26);
      }

      else
      {
        if (v9 > v11)
        {
          v27 = 0;
          v28 = 0;
          v26 = (*a2 + 8 * *(a2 + 16) * v11);
          LODWORD(v27) = kaldi::MatrixBase<float>::NumCols(a2);
          kaldi::VectorBase<double>::AddVec<double>();
          if (*(a1 + 12) == 1)
          {
            kaldi::VectorBase<double>::AddVec2(&v36, &v26, -1.0);
          }
        }

        if (v19 > v10)
        {
          v27 = 0;
          v28 = 0;
          v26 = (*a2 + 8 * *(a2 + 16) * v10);
          LODWORD(v27) = kaldi::MatrixBase<float>::NumCols(a2);
          kaldi::VectorBase<double>::AddVec<double>();
          if (*(a1 + 12) == 1)
          {
            kaldi::VectorBase<double>::AddVec2(&v36, &v26, 1.0);
          }
        }
      }

      v34 = 0;
      v35 = 0;
      v33 = *a2 + 8 * *(a2 + 16) * v8;
      LODWORD(v34) = kaldi::MatrixBase<float>::NumCols(a2);
      v31 = 0;
      v32 = 0;
      v30 = *a3 + 8 * *(a3 + 16) * v8;
      LODWORD(v31) = kaldi::MatrixBase<float>::NumCols(a3);
      kaldi::VectorBase<double>::CopyFromVec(&v30, &v33);
      v20 = v19 - v9;
      kaldi::VectorBase<double>::AddVec<double>();
      if (*(a1 + 12) == 1)
      {
        if (v20 == 1)
        {
          kaldi::VectorBase<double>::Set(&v30, 0.0);
        }

        else
        {
          memset(v29, 0, sizeof(v29));
          kaldi::Vector<double>::Resize(v29, v37, 1);
          kaldi::VectorBase<double>::CopyFromVec(v29, &v36);
          kaldi::VectorBase<double>::Scale();
          kaldi::VectorBase<double>::AddVec2(v29, v39, -1.0 / (v20 * v20));
          v21 = kaldi::VectorBase<double>::ApplyFloor(v29, 1.0e-10);
          if (v21 >= 1 && v6 != 1 && kaldi::g_kaldi_verbose_level >= -1)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v26);
            v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "Flooring variance When normalizing variance, floored ", 53);
            v23 = MEMORY[0x1B8C84C00](v22, v21);
            v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " elements; num-frames was ", 26);
            MEMORY[0x1B8C84C00](v24, (v19 - v9));
            kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v26);
          }

          kaldi::VectorBase<double>::ApplyPow(v29, -0.5);
          kaldi::VectorBase<double>::MulElements(&v30, v29);
          kaldi::Vector<float>::Destroy(v29);
        }
      }

      ++v8;
      v10 = v19;
    }

    while (v6 != v8);
  }

  kaldi::Vector<float>::Destroy(&v36);
  kaldi::Vector<float>::Destroy(v39);
}

uint64_t kaldi::SlidingWindowCmn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kaldi::SameDim<float>(a2, a3);
  kaldi::MatrixBase<float>::NumRows(a2);
  kaldi::Matrix<double>::Matrix<float>(v10, a2, 111);
  v6 = kaldi::MatrixBase<float>::NumRows(a2);
  v7 = kaldi::MatrixBase<float>::NumCols(a2);
  kaldi::Matrix<double>::Matrix(v9, v6, v7, 0, 0);
  kaldi::SlidingWindowCmnInternal(a1, v10, v9);
  kaldi::MatrixBase<float>::CopyFromMat<double>(a3, v9, 111);
  kaldi::Matrix<float>::~Matrix(v9);
  return kaldi::Matrix<float>::~Matrix(v10);
}

void sub_1B53450D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  kaldi::Matrix<float>::~Matrix(&a9);
  kaldi::Matrix<float>::~Matrix(&a14);
  _Unwind_Resume(a1);
}

uint64_t *StorageAccessor::MMapFileAccessor::MMapFileAccessor(uint64_t *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[4] = 0;
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (stat(v4, &v16))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v19);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  st_size = v16.st_size;
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = fopen(v6, "r+");
  v8 = v7;
  if (!v7)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(v15, &v19);
    __cxa_throw(v15, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v9 = fileno(v7);
  v10 = mmap(0, st_size, 3, 1, v9, 0);
  v17.__r_.__value_.__r.__words[0] = &unk_1F2D0D1C0;
  v17.__r_.__value_.__l.__size_ = st_size;
  v18 = &v17;
  v19.__r_.__value_.__r.__words[0] = v10;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v19.__r_.__value_.__l.__size_, &v17);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v17);
  v11 = v19.__r_.__value_.__r.__words[0];
  if (v19.__r_.__value_.__r.__words[0] + 1 <= 1)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(v13, &v17);
    __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!st_size)
  {
    v11 = 0;
  }

  a1[5] = v11;
  a1[6] = st_size;
  std::unique_ptr<void,std::function<void ()(void *)>>::operator=[abi:ne200100](a1, &v19);
  std::unique_ptr<void,std::function<void ()(void *)>>::reset[abi:ne200100](&v19, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v19.__r_.__value_.__l.__size_);
  fclose(v8);
  return a1;
}

void sub_1B53453A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
    if ((v34 & 1) == 0)
    {
LABEL_6:
      std::unique_ptr<void,std::function<void ()(void *)>>::reset[abi:ne200100](v32, 0);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((v32 + 1));
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v33);
  goto LABEL_6;
}

uint64_t *std::unique_ptr<void,std::function<void ()(void *)>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  std::unique_ptr<void,std::function<void ()(void *)>>::reset[abi:ne200100](a1, v4);
  std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100]((a1 + 1), (a2 + 1));
  return a1;
}

unint64_t StorageAccessor::Span<unsigned char,18446744073709551615ul>::Slice(void *a1, unint64_t a2, uint64_t a3)
{
  if (!a3 || ((v3 = a1[1], v3 > a2) ? (v4 = a3 + a2 > v3) : (v4 = 1), v4))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_1E7C1A148, MEMORY[0x1E69E5268]);
  }

  return *a1 + a2;
}

void *StorageAccessor::MMapFileAccessor::WriteData(void *result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4 + a2 > result[6])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "out of bounds");
    __cxa_throw(exception, off_1E7C1A148, MEMORY[0x1E69E5268]);
  }

  if (v4)
  {
    v5 = (*result + a2);
    v6 = *a3;

    return memmove(v5, v6, v4);
  }

  return result;
}

uint64_t *std::unique_ptr<void,std::function<void ()(void *)>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v3);
  }

  return result;
}

uint64_t std::function<void ()(void *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<StorageAccessor::MMapFileAccessor::MMapFileAccessor(std::string const&)::$_0,std::allocator<StorageAccessor::MMapFileAccessor::MMapFileAccessor(std::string const&)::$_0>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D0D1C0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<StorageAccessor::MMapFileAccessor::MMapFileAccessor(std::string const&)::$_0,std::allocator<StorageAccessor::MMapFileAccessor::MMapFileAccessor(std::string const&)::$_0>,void ()(void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100](a1);
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

uint64_t std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100](uint64_t a1)
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

uint64_t kaldi::quasar::SeevaBeamSearchBase::Initialize(kaldi::quasar::SeevaBeamSearchBase *a1, std::string::size_type *a2, char a3)
{
  v101 = *(*(a1 + 2) + 152);
  std::vector<int>::vector[abi:ne200100](__p, v101);
  (*(**(*(a1 + 1) + 16) + 24))(&v99);
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v6 = *(a1 + 1);
  v102 = 0;
  v103 = 0;
  v104 = 0;
  kaldi::quasar::SeevaStepInference::RunDecoder(v6, &v99, a2, &v102, 1, &v96);
  __src = &v102;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&__src);
  v7 = v97;
  v8 = *(v97 - 8);
  *(v97 - 8) = 0;
  v94 = 0;
  v95 = v8;
  v9 = *(*(a1 + 1) + 564);
  __src = 0;
  v93 = 0;
  if (v96 != v7)
  {
    v10 = 0;
    v11 = v9 - 1;
    v12 = v96 + 8;
    do
    {
      if (v10 >= v94)
      {
        v14 = __src;
        v15 = v10 - __src;
        v16 = (v10 - __src) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v18 = v94 - __src;
        if ((v94 - __src) >> 2 > v17)
        {
          v17 = v18 >> 2;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        p_src = &__src;
        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(&__src, v19);
        }

        v20 = (v10 - __src) >> 3;
        v21 = (8 * v16);
        v22 = *(v12 - 8);
        *(v12 - 8) = 0;
        v23 = (8 * v16 - 8 * v20);
        *v21 = v22;
        v10 = (v21 + 1);
        memcpy(v23, v14, v15);
        v24 = __src;
        v25 = v94;
        __src = v23;
        v93 = v10;
        v94 = 0;
        v104 = v24;
        v105 = v25;
        v102 = v24;
        v103 = v24;
        std::__split_buffer<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::~__split_buffer(&v102);
      }

      else
      {
        v13 = *(v12 - 8);
        *(v12 - 8) = 0;
        *v10 = v13;
        v10 += 8;
      }

      v93 = v10;
      if (!v11)
      {
        break;
      }

      --v11;
      v26 = v12 == v7;
      v12 += 8;
    }

    while (!v26);
  }

  if (a3 & 1) == 0 && (kaldi::quasar::SeevaBeamSearchBase::ShouldWait(a1, &__src))
  {
    v27 = 0;
    goto LABEL_99;
  }

  v28 = *(a1 + 32);
  v29 = *(a1 + 33);
  if (v29 == v28)
  {
    v33 = (a1 + 288);
    v29 = *(a1 + 32);
  }

  else
  {
    v30 = *(a1 + 35);
    v31 = &v28[v30 / 0xAA];
    v32 = (*v31 + 24 * (v30 % 0xAA));
    v33 = (a1 + 288);
    v34 = v28[(*(a1 + 36) + v30) / 0xAA] + 24 * ((*(a1 + 36) + v30) % 0xAA);
    if (v32 != v34)
    {
      do
      {
        v102 = v32;
        std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v102);
        v32 += 3;
        if (v32 - *v31 == 4080)
        {
          v35 = v31[1];
          ++v31;
          v32 = v35;
        }
      }

      while (v32 != v34);
      v28 = *(a1 + 32);
      v29 = *(a1 + 33);
    }
  }

  *v33 = 0;
  v36 = v29 - v28;
  if (v36 >= 3)
  {
    do
    {
      operator delete(*v28);
      v37 = *(a1 + 33);
      v28 = (*(a1 + 32) + 8);
      *(a1 + 32) = v28;
      v36 = (v37 - v28) >> 3;
    }

    while (v36 > 2);
  }

  if (v36 == 1)
  {
    v38 = 85;
  }

  else
  {
    if (v36 != 2)
    {
      goto LABEL_34;
    }

    v38 = 170;
  }

  *(a1 + 35) = v38;
LABEL_34:
  std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::emplace_back<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>(a1 + 31, &__src);
  v39 = *(a1 + 38);
  v40 = *(a1 + 39);
  if (v40 == v39)
  {
    v44 = (a1 + 336);
    v40 = *(a1 + 38);
  }

  else
  {
    v41 = *(a1 + 41);
    v42 = &v39[v41 >> 9];
    v43 = (*v42 + 8 * (v41 & 0x1FF));
    v44 = (a1 + 336);
    v45 = *(v39 + (((*(a1 + 42) + v41) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 42) + v41) & 0x1FF);
    if (v43 != v45)
    {
      do
      {
        v46 = *v43;
        *v43 = 0;
        if (v46)
        {
          (*(*v46 + 8))(v46);
        }

        if (++v43 - *v42 == 4096)
        {
          v47 = v42[1];
          ++v42;
          v43 = v47;
        }
      }

      while (v43 != v45);
      v39 = *(a1 + 38);
      v40 = *(a1 + 39);
    }
  }

  *v44 = 0;
  v48 = v40 - v39;
  if (v48 >= 3)
  {
    do
    {
      operator delete(*v39);
      v49 = *(a1 + 39);
      v39 = (*(a1 + 38) + 8);
      *(a1 + 38) = v39;
      v48 = (v49 - v39) >> 3;
    }

    while (v48 > 2);
  }

  if (v48 == 1)
  {
    v50 = 256;
  }

  else
  {
    if (v48 != 2)
    {
      goto LABEL_50;
    }

    v50 = 512;
  }

  *(a1 + 41) = v50;
LABEL_50:
  std::deque<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::push_back(a1 + 37, &v95);
  v51 = *(a1 + 11);
  v52 = *(a1 + 12);
  if (v52 == v51)
  {
    v53 = (a1 + 120);
    v52 = *(a1 + 11);
  }

  else
  {
    v53 = (a1 + 120);
    v54 = *(a1 + 14);
    v55 = &v51[v54 / 0xAA];
    v56 = *v55;
    v57 = *v55 + 24 * (v54 % 0xAA);
    v58 = v51[(*(a1 + 15) + v54) / 0xAA] + 24 * ((*(a1 + 15) + v54) % 0xAA);
    if (v57 != v58)
    {
      do
      {
        v59 = *v57;
        if (*v57)
        {
          *(v57 + 8) = v59;
          operator delete(v59);
          v56 = *v55;
        }

        v57 += 24;
        if (v57 - v56 == 4080)
        {
          v60 = v55[1];
          ++v55;
          v56 = v60;
          v57 = v60;
        }
      }

      while (v57 != v58);
      v51 = *(a1 + 11);
      v52 = *(a1 + 12);
    }
  }

  *v53 = 0;
  v61 = v52 - v51;
  if (v61 >= 3)
  {
    do
    {
      operator delete(*v51);
      v62 = *(a1 + 12);
      v51 = (*(a1 + 11) + 8);
      *(a1 + 11) = v51;
      v61 = (v62 - v51) >> 3;
    }

    while (v61 > 2);
  }

  if (v61 == 1)
  {
    v63 = 85;
  }

  else
  {
    if (v61 != 2)
    {
      goto LABEL_66;
    }

    v63 = 170;
  }

  *(a1 + 14) = v63;
LABEL_66:
  v102 = 0;
  std::deque<std::vector<float>>::emplace_back<int const&,double>(a1 + 10, &v101);
  v64 = *(a1 + 17);
  v65 = *(a1 + 18);
  if (v65 == v64)
  {
    v66 = (a1 + 168);
    v65 = *(a1 + 17);
  }

  else
  {
    v66 = (a1 + 168);
    v67 = *(a1 + 20);
    v68 = &v64[v67 / 0xAA];
    v69 = *v68;
    v70 = (*v68 + 24 * (v67 % 0xAA));
    v71 = v64[(*(a1 + 21) + v67) / 0xAA] + 24 * ((*(a1 + 21) + v67) % 0xAA);
    if (v70 != v71)
    {
      do
      {
        if (*v70)
        {
          operator delete(*v70);
          v69 = *v68;
        }

        v70 += 3;
        if (v70 - v69 == 4080)
        {
          v72 = v68[1];
          ++v68;
          v69 = v72;
          v70 = v72;
        }
      }

      while (v70 != v71);
      v64 = *(a1 + 17);
      v65 = *(a1 + 18);
    }
  }

  *v66 = 0;
  v73 = v65 - v64;
  if (v73 >= 3)
  {
    do
    {
      operator delete(*v64);
      v74 = *(a1 + 18);
      v64 = (*(a1 + 17) + 8);
      *(a1 + 17) = v64;
      v73 = (v74 - v64) >> 3;
    }

    while (v73 > 2);
  }

  if (v73 == 1)
  {
    v75 = 85;
  }

  else
  {
    if (v73 != 2)
    {
      goto LABEL_82;
    }

    v75 = 170;
  }

  *(a1 + 20) = v75;
LABEL_82:
  LOBYTE(v102) = 0;
  std::deque<std::vector<BOOL>>::emplace_back<int const&,BOOL>(a1 + 16, &v101);
  v76 = *(a1 + 23);
  v77 = *(a1 + 24);
  if (v77 == v76)
  {
    v78 = (a1 + 216);
    v77 = *(a1 + 23);
  }

  else
  {
    v78 = (a1 + 216);
    v79 = *(a1 + 26);
    v80 = &v76[v79 / 0xAA];
    v81 = *v80;
    v82 = *v80 + 24 * (v79 % 0xAA);
    v83 = v76[(*(a1 + 27) + v79) / 0xAA] + 24 * ((*(a1 + 27) + v79) % 0xAA);
    if (v82 != v83)
    {
      do
      {
        v84 = *v82;
        if (*v82)
        {
          *(v82 + 8) = v84;
          operator delete(v84);
          v81 = *v80;
        }

        v82 += 24;
        if (v82 - v81 == 4080)
        {
          v85 = v80[1];
          ++v80;
          v81 = v85;
          v82 = v85;
        }
      }

      while (v82 != v83);
      v76 = *(a1 + 23);
      v77 = *(a1 + 24);
    }
  }

  *v78 = 0;
  v86 = v77 - v76;
  if (v86 >= 3)
  {
    do
    {
      operator delete(*v76);
      v87 = *(a1 + 24);
      v76 = (*(a1 + 23) + 8);
      *(a1 + 23) = v76;
      v86 = (v87 - v76) >> 3;
    }

    while (v86 > 2);
  }

  if (v86 == 1)
  {
    v88 = 85;
    goto LABEL_97;
  }

  if (v86 == 2)
  {
    v88 = 170;
LABEL_97:
    *(a1 + 26) = v88;
  }

  LODWORD(v102) = 0;
  std::deque<std::vector<int>>::emplace_back<int const&,int>(a1 + 22, &v101);
  std::vector<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>::__base_destruct_at_end[abi:ne200100](a1 + 224, *(a1 + 28));
  (*(*a1 + 24))(a1);
  v27 = a3 | kaldi::quasar::SeevaBeamSearchBase::UpdateSearchStats(a1, 1) ^ 1;
LABEL_99:
  v102 = &__src;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v102);
  v89 = v95;
  v95 = 0;
  if (v89)
  {
    (*(*v89 + 8))(v89);
  }

  v102 = &v96;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v102);
  v90 = v99;
  v99 = 0;
  if (v90)
  {
    (*(*v90 + 8))(v90);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v27 & 1;
}

void sub_1B53461D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  *(v19 - 96) = &a10;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100]((v19 - 96));
  v21 = a13;
  a13 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  a10 = &a14;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v22 = a17;
  a17 = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::SeevaBeamSearchBase::ShouldWait(uint64_t a1, void *a2)
{
  kaldi::quasar::SeevaBeamSearchBase::GetCurrentAlignment(a1, a2, &v29);
  v3 = kaldi::MatrixBase<float>::NumCols(v29);
  v4 = v29;
  v5 = v30;
  if (v29 == v30)
  {
    v7 = 0;
LABEL_27:
    v25 = 0;
  }

  else
  {
    v6 = v3;
    v7 = 0;
    v8 = v3;
    while (1)
    {
      v9 = kaldi::MatrixBase<float>::NumRows(v4);
      if (v9 >= 1)
      {
        break;
      }

      v11 = 0;
LABEL_21:
      v7 |= v11 == v9;
      v4 += 40;
      if (v4 == v5)
      {
        goto LABEL_27;
      }
    }

    v10 = 0;
    v11 = 0;
    v12 = *(a1 + 16);
    v13 = *(v12 + 196);
    v14 = *(v12 + 172);
    while (1)
    {
      if (v6 < 1)
      {
        v18 = -1.0;
        v17 = 0xFFFFFFFFLL;
      }

      else
      {
        v15 = 0;
        LODWORD(v17) = -1;
        v18 = -1.0;
        do
        {
          v16 = *v4 + 4 * *(v4 + 16) * v10;
          v19 = *(v16 + 4 * v15);
          if (v19 <= v18)
          {
            v17 = v17;
          }

          else
          {
            v17 = v15;
          }

          if (v19 > v18)
          {
            v18 = *(v16 + 4 * v15);
          }

          ++v15;
        }

        while (v8 != v15);
      }

      if (v6 - v17 < v14)
      {
        break;
      }

      if (v18 > v13)
      {
        ++v11;
      }

      v10 = (v10 + 1);
      if (v10 == v9)
      {
        goto LABEL_21;
      }
    }

    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v28, 1);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "On beam ", 8);
      v21 = MEMORY[0x1B8C84C00](v20, v10);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " peak attention at ", 19);
      v23 = MEMORY[0x1B8C84C00](v22, v17);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " which is too close to ", 23);
      MEMORY[0x1B8C84C00](v24, v6);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v28);
    }

    v25 = 1;
  }

  v26 = v25 | ~v7;
  v28[0].__locale_ = &v29;
  std::vector<kaldi::Matrix<float>>::__destroy_vector::operator()[abi:ne200100](v28);
  return v26 & 1;
}

void sub_1B534646C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 - 104);
  std::vector<kaldi::Matrix<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::deque<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::push_back(void *result, uint64_t *a2)
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
    result = std::deque<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  v9 = *(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8));
  v10 = *a2;
  *a2 = 0;
  *(v9 + 8 * (v8 & 0x1FF)) = v10;
  v3[5] = v7 + 1;
  return result;
}

uint64_t std::deque<std::vector<float>>::emplace_back<int const&,double>(void *a1, int *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 170 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::vector<float>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = (*(v4 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  }

  std::vector<float>::vector[abi:ne200100](v8, *a2);
  v9 = a1[4];
  v10 = a1[5] + 1;
  a1[5] = v10;
  v11 = v9 + v10;
  v12 = a1[1];
  v13 = (v12 + 8 * (v11 / 0xAA));
  v14 = *v13 + 24 * (v11 % 0xAA);
  if (a1[2] == v12)
  {
    v14 = 0;
  }

  if (v14 == *v13)
  {
    v14 = *(v13 - 1) + 4080;
  }

  return v14 - 24;
}

uint64_t std::deque<std::vector<BOOL>>::emplace_back<int const&,BOOL>(void *a1, int *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 170 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::vector<BOOL>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = (*(v4 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  }

  std::vector<BOOL>::vector(v8, *a2);
  v9 = a1[4];
  v10 = a1[5] + 1;
  a1[5] = v10;
  v11 = v9 + v10;
  v12 = a1[1];
  v13 = (v12 + 8 * (v11 / 0xAA));
  v14 = *v13 + 24 * (v11 % 0xAA);
  if (a1[2] == v12)
  {
    v14 = 0;
  }

  if (v14 == *v13)
  {
    v14 = *(v13 - 1) + 4080;
  }

  return v14 - 24;
}

uint64_t std::deque<std::vector<int>>::emplace_back<int const&,int>(void *a1, int *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 170 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::vector<int>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = (*(v4 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  }

  std::vector<int>::vector[abi:ne200100](v8, *a2);
  v9 = a1[4];
  v10 = a1[5] + 1;
  a1[5] = v10;
  v11 = v9 + v10;
  v12 = a1[1];
  v13 = (v12 + 8 * (v11 / 0xAA));
  v14 = *v13 + 24 * (v11 % 0xAA);
  if (a1[2] == v12)
  {
    v14 = 0;
  }

  if (v14 == *v13)
  {
    v14 = *(v13 - 1) + 4080;
  }

  return v14 - 24;
}

uint64_t kaldi::quasar::SeevaBeamSearchBase::UpdateSearchStats(kaldi::quasar::SeevaBeamSearchBase *this, uint64_t a2)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v4 = *(this + 42) + *(this + 41) - 1;
  v5 = *(*(*(this + 38) + ((v4 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v4 & 0x1FF));
  (*(*v5 + 56))(v5, &v42);
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  (*(*this + 16))(this, a2, &v42, &v39, &v36);
  v35 = *(*(this + 2) + 152);
  v33 = 0;
  v34 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(&__p, v36, v36 + 4 * v35, v35);
  v6 = *(this + 29);
  if (v6 >= *(this + 30))
  {
    v7 = std::vector<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>::__emplace_back_slow_path<int const&>(this + 28, &v35);
  }

  else
  {
    kaldi::quasar::SeevaBeamSearchBase::Breadcrumb::Breadcrumb(*(this + 29), v35);
    v7 = v6 + 72;
    *(this + 29) = v6 + 72;
  }

  *(this + 29) = v7;
  if (v35 < 1)
  {
    goto LABEL_16;
  }

  v8 = 0;
  v9 = __p;
  v10 = *(v7 - 48);
  v11 = *(v7 - 72);
  v12 = v42;
  v13 = *(v7 - 24);
  do
  {
    *(v10 + 4 * v8) = v9[v8] % *(this + 11);
    *(v11 + 4 * v8) = v9[v8] / *(this + 11);
    *(v13 + 4 * v8) = v12[v9[v8]];
    ++v8;
    v14 = v35;
  }

  while (v8 < v35);
  if (v35 < 1)
  {
LABEL_16:
    v25 = 1;
  }

  else
  {
    v15 = __p;
    v16 = v39;
    v17 = *(this + 15) + *(this + 14) - 1;
    v18 = *(*(*(this + 11) + 8 * (v17 / 0xAA)) + 24 * (v17 % 0xAA));
    v19 = v35;
    do
    {
      v20 = *v15++;
      *v18++ = v16[v20];
      --v19;
    }

    while (v19);
    v21 = 0;
    v22 = *(v7 - 48);
    v23 = *(this + 9);
    v24 = *(this + 17);
    v25 = 1;
    do
    {
      v26 = *(this + 21) + *(this + 20) - 1;
      v27 = *(*(v24 + 8 * (v26 / 0xAA)) + 24 * (v26 % 0xAA));
      v28 = v21 >> 6;
      v29 = 1 << v21;
      if (*(v22 + 4 * v21) == v23)
      {
        v30 = *(v27 + 8 * v28) | v29;
      }

      else
      {
        v25 = 0;
        v30 = *(v27 + 8 * v28) & ~v29;
      }

      *(v27 + 8 * v28) = v30;
      ++v21;
    }

    while (v14 != v21);
  }

  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  return v25 & 1;
}

void sub_1B5346B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a17)
  {
    operator delete(a17);
  }

  v20 = *(v18 - 40);
  if (v20)
  {
    *(v18 - 32) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::SeevaBeamSearchBase::BeamSearch(uint64_t a1, std::string::size_type *a2, int a3)
{
  v3 = a3;
  v5 = *(*(a1 + 8) + 564);
  v62 = 0x71C71C71C71C71C7 * ((*(a1 + 232) - *(a1 + 224)) >> 3);
  v6 = *(*(a1 + 16) + 152);
  do
  {
    (*(**(*(a1 + 8) + 16) + 24))(&v80);
    v77 = 0;
    v78 = 0;
    v79 = 0;
    if (v5 >= 1)
    {
      for (i = 0; i != v5; ++i)
      {
        (*(**(*(a1 + 8) + 16) + 112))(&v74);
        std::vector<kaldi::quasar::ComputeEngineBufferItf *>::vector[abi:ne200100](&v71, v6);
        v8 = *(a1 + 232);
        v9 = *(v8 - 72);
        v10 = *(v8 - 64);
        if (v9 != v10)
        {
          v11 = 0;
          do
          {
            v12 = *v9++;
            *&v71[v11] = *(v74 + 8 * v12);
            v11 += 8;
          }

          while (v9 != v10);
        }

        (*(**(*(a1 + 8) + 16) + 104))(&v81);
        v13 = v78;
        if (v78 >= v79)
        {
          v16 = v77;
          v17 = v78 - v77;
          v18 = v78 - v77;
          v19 = v18 + 1;
          if ((v18 + 1) >> 61)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v20 = v79 - v77;
          if ((v79 - v77) >> 2 > v19)
          {
            v19 = v20 >> 2;
          }

          v21 = v20 >= 0x7FFFFFFFFFFFFFF8;
          v22 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v21)
          {
            v22 = v19;
          }

          v70 = &v77;
          if (v22)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(&v77, v22);
          }

          v23 = (8 * v18);
          v24 = v81;
          v81 = 0;
          v25 = &v23[-(v78 - v77)];
          *v23 = v24;
          v15 = v23 + 1;
          memcpy(v25, v16, v17);
          v26 = v77;
          v27 = v79;
          v77 = v25;
          v78 = v15;
          v79 = 0;
          v68 = v26;
          v69 = v27;
          v66.__locale_ = v26;
          v67 = v26;
          std::__split_buffer<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::~__split_buffer(&v66);
        }

        else
        {
          v14 = v81;
          v81 = 0;
          *v78 = v14;
          v15 = v13 + 1;
        }

        v78 = v15;
        v28 = v81;
        v81 = 0;
        if (v28)
        {
          (*(*v28 + 8))(v28);
        }

        if (v71)
        {
          v72 = v71;
          operator delete(v71);
        }

        v66.__locale_ = &v74;
        std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v66);
      }
    }

    v74 = 0;
    v75 = 0;
    v76 = 0;
    kaldi::quasar::SeevaStepInference::RunDecoder(*(a1 + 8), &v80, a2, &v77, 0, &v74);
    kaldi::quasar::SeevaBeamSearchBase::ControlSearchStatsSize(a1, v3);
    std::deque<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::push_back((a1 + 296), (v75 - 8));
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v29 = v75;
    if (v74 != v75)
    {
      v30 = 0;
      v31 = v74 + 8;
      v32 = v5 - 1;
      do
      {
        if (v30 >= v73)
        {
          v34 = v71;
          v35 = v30 - v71;
          v36 = (v30 - v71) >> 3;
          v37 = v36 + 1;
          if ((v36 + 1) >> 61)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v38 = v73 - v71;
          if ((v73 - v71) >> 2 > v37)
          {
            v37 = v38 >> 2;
          }

          v21 = v38 >= 0x7FFFFFFFFFFFFFF8;
          v39 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v21)
          {
            v39 = v37;
          }

          v70 = &v71;
          if (v39)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(&v71, v39);
          }

          v40 = v36;
          v41 = (8 * v36);
          v42 = *(v31 - 8);
          *(v31 - 8) = 0;
          v43 = &v41[-v40];
          *v41 = v42;
          v30 = (v41 + 1);
          memcpy(v43, v34, v35);
          v44 = v71;
          v45 = v73;
          v71 = v43;
          v72 = v30;
          v73 = 0;
          v68 = v44;
          v69 = v45;
          v66.__locale_ = v44;
          v67 = v44;
          std::__split_buffer<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::~__split_buffer(&v66);
        }

        else
        {
          v33 = *(v31 - 8);
          *(v31 - 8) = 0;
          *v30 = v33;
          v30 += 8;
        }

        v72 = v30;
        if (!v32)
        {
          break;
        }

        --v32;
        v46 = v31 == v29;
        v31 += 8;
      }

      while (!v46);
    }

    std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::emplace_back<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>((a1 + 248), &v71);
    updated = kaldi::quasar::SeevaBeamSearchBase::UpdateSearchStats(a1, 0);
    v3 = a3;
    v48 = updated;
    if ((a3 & 1) == 0)
    {
      if (updated)
      {
        v49 = *(*(a1 + 16) + 184);
      }

      else
      {
        v50 = *(a1 + 288) + *(a1 + 280) - 1;
        ShouldWait = kaldi::quasar::SeevaBeamSearchBase::ShouldWait(a1, (*(*(a1 + 256) + 8 * (v50 / 0xAA)) + 24 * (v50 % 0xAA)));
        v53 = *(a1 + 224);
        v52 = *(a1 + 232);
        v54 = *(a1 + 16);
        if (!ShouldWait)
        {
          goto LABEL_49;
        }

        v55 = *(v54 + 188);
        v56 = v62 - 0x71C71C71C71C71C7 * ((v52 - v53) >> 3);
        if (v56 >= v55)
        {
          v49 = v55;
        }

        else
        {
          v49 = v56;
        }
      }

      if (v49 >= 1)
      {
        v63 = kaldi::quasar::SeevaBeamSearchBase::Rollback(a1, v49);
        v57 = 1;
        goto LABEL_52;
      }
    }

    if (v48)
    {
      v57 = 3;
      goto LABEL_52;
    }

    v53 = *(a1 + 224);
    v52 = *(a1 + 232);
    v54 = *(a1 + 16);
LABEL_49:
    if (0x8E38E38E38E38E39 * ((v52 - v53) >> 3) >= *(v54 + 160))
    {
      v57 = 3;
    }

    else
    {
      v57 = 0;
    }

LABEL_52:
    v66.__locale_ = &v71;
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v66);
    v66.__locale_ = &v74;
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v66);
    v66.__locale_ = &v77;
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v66);
    v58 = v80;
    v80 = 0;
    if (v58)
    {
      (*(*v58 + 8))(v58);
    }
  }

  while (!v57);
  if (v57 == 3)
  {
    v59 = 1;
    if (a3 && kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&v66, 1);
      v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "total rollbacked steps are ", 27);
      MEMORY[0x1B8C84C00](v60, *(a1 + 52));
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v66);
      v59 = 1;
    }
  }

  else
  {
    v59 = v63;
  }

  return v59 & 1;
}

void sub_1B534718C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::SeevaBeamSearchBase::ControlSearchStatsSize(kaldi::quasar::SeevaBeamSearchBase *this, int a2)
{
  if (a2)
  {
    std::deque<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::pop_front(this + 37);

    return std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::pop_front((this + 248));
  }

  else
  {
    if (*(this + 12) <= *(this + 42))
    {
      std::deque<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::pop_front(this + 37);
      std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::pop_front((this + 248));
      std::deque<std::vector<float>>::pop_front(this + 10);
      std::deque<std::vector<BOOL>>::pop_front(this + 16);
      std::deque<std::vector<float>>::pop_front(this + 22);
    }

    v4 = *(this + 15) + *(this + 14) - 1;
    std::deque<std::vector<float>>::push_back(this + 10, (*(*(this + 11) + 8 * (v4 / 0xAA)) + 24 * (v4 % 0xAA)));
    v5 = *(this + 21) + *(this + 20) - 1;
    std::deque<std::vector<BOOL>>::push_back(this + 16, *(*(this + 17) + 8 * (v5 / 0xAA)) + 24 * (v5 % 0xAA));
    v6 = *(this + 27) + *(this + 26) - 1;
    v7 = (*(*(this + 23) + 8 * (v6 / 0xAA)) + 24 * (v6 % 0xAA));

    return std::deque<std::vector<int>>::push_back(this + 22, v7);
  }
}

uint64_t kaldi::quasar::SeevaBeamSearchBase::Rollback(kaldi::quasar::SeevaBeamSearchBase *this, int a2)
{
  v3 = this + 224;
  v4 = 0x8E38E38E38E38E39 * ((*(this + 29) - *(this + 28)) >> 3);
  if (v4 <= a2 || *(this + 15) <= a2)
  {
    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v8, 1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Not enough steps to rollback, need wait for more audio and reinitialization", 75);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v8);
      v4 = 0x8E38E38E38E38E39 * ((*(this + 29) - *(this + 28)) >> 3);
    }

    result = 0;
    *(this + 13) += v4;
  }

  else
  {
    if (a2 >= 1)
    {
      v6 = a2;
      do
      {
        std::vector<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>::__base_destruct_at_end[abi:ne200100](v3, *(this + 29) - 72);
        std::deque<std::vector<float>>::pop_back(this + 10);
        std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::pop_back(this + 31);
        std::deque<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::pop_back(this + 37);
        std::deque<std::vector<BOOL>>::pop_back(this + 16);
        std::deque<std::vector<float>>::pop_back(this + 22);
        --v6;
      }

      while (v6);
    }

    *(this + 13) += a2;
    return 1;
  }

  return result;
}

void sub_1B53474E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t std::deque<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::pop_front(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[1] + ((v2 >> 6) & 0x3FFFFFFFFFFFFF8));
  v4 = *(v3 + 8 * (v2 & 0x1FF));
  *(v3 + 8 * (v2 & 0x1FF)) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
    v2 = a1[4];
  }

  v5 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v5;

  return std::deque<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::pop_front(int64x2_t *a1)
{
  v3 = (*(a1->i64[1] + 8 * (a1[2].i64[0] / 0xAAuLL)) + 24 * (a1[2].i64[0] % 0xAAuLL));
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v3);
  a1[2] = vaddq_s64(a1[2], xmmword_1B5AE01E0);
  return std::deque<kaldi::Vector<float>>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<std::vector<float>>::pop_front(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[1] + 8 * (v2 / 0xAA)) + 24 * (v2 % 0xAA);
  v4 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v4;
    operator delete(v4);
    v2 = a1[4];
  }

  v5 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v5;

  return std::deque<kaldi::Vector<float>>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<std::vector<BOOL>>::pop_front(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[1] + 8 * (v2 / 0xAA)) + 24 * (v2 % 0xAA));
  if (v3)
  {
    operator delete(v3);
    v2 = a1[4];
  }

  v4 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v4;

  return std::deque<kaldi::Vector<float>>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<std::vector<float>>::push_back(void *a1, uint64_t *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 170 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<std::vector<float>>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v8, *a2, a2[1], (a2[1] - *a2) >> 2);
  ++a1[5];
  return result;
}

void *std::deque<std::vector<BOOL>>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 170 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::vector<BOOL>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = (*(v4 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  }

  result = std::vector<BOOL>::vector(v8, a2);
  ++a1[5];
  return result;
}

uint64_t std::deque<std::vector<int>>::push_back(void *a1, uint64_t *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 170 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<std::vector<int>>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v8, *a2, a2[1], (a2[1] - *a2) >> 2);
  ++a1[5];
  return result;
}

uint64_t kaldi::quasar::SeevaBeamSearchBase::GetCurrentAlignment@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(result + 8);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v5 = *(v4 + 568);
  v6 = (v4 + 576);
  if (v5 != (v4 + 576))
  {
    do
    {
      v8 = *(v5 + 7);
      v9 = a3[1];
      if (v9 >= a3[2])
      {
        v11 = std::vector<kaldi::Matrix<float>>::__emplace_back_slow_path<>(a3);
      }

      else
      {
        v10.n128_f64[0] = kaldi::Matrix<float>::Matrix(a3[1]);
        v11 = v9 + 40;
      }

      v12 = *(*a2 + 8 * v8);
      a3[1] = v11;
      result = (*(*v12 + 24))(v12, v11 - 40, v10);
      v13 = v5[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v5[2];
          v15 = *v14 == v5;
          v5 = v14;
        }

        while (!v15);
      }

      v5 = v14;
    }

    while (v14 != v6);
  }

  return result;
}

void sub_1B5347A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *(v10 + 8) = v11;
  a10 = v10;
  std::vector<kaldi::Matrix<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::deque<std::vector<float>>::pop_back(void *a1)
{
  v2 = a1[5] - 1;
  v3 = *(a1[1] + 8 * ((v2 + a1[4]) / 0xAAuLL)) + 24 * ((v2 + a1[4]) % 0xAAuLL);
  v4 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v4;
    operator delete(v4);
    v2 = a1[5] - 1;
  }

  a1[5] = v2;

  return std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::pop_back(void *a1)
{
  v2 = a1[5] - 1;
  v3 = v2 + a1[4];
  v4 = *(a1[1] + ((v3 >> 6) & 0x3FFFFFFFFFFFFF8));
  v5 = v3 & 0x1FF;
  v6 = *(v4 + 8 * v5);
  *(v4 + 8 * v5) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    v2 = a1[5] - 1;
  }

  a1[5] = v2;

  return std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<std::vector<BOOL>>::pop_back(void *a1)
{
  v2 = a1[5] - 1;
  v3 = *(*(a1[1] + 8 * ((v2 + a1[4]) / 0xAAuLL)) + 24 * ((v2 + a1[4]) % 0xAAuLL));
  if (v3)
  {
    operator delete(v3);
    v2 = a1[5] - 1;
  }

  a1[5] = v2;

  return std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

void kaldi::quasar::SeevaBeamSearchBase::UpdateBeamScore(uint64_t a1, int a2, char **a3, uint64_t *a4, uint64_t a5)
{
  v9 = *(*(a1 + 16) + 152);
  if (a2)
  {
    if (a4 != a3)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a4, *a3, a3[1], (a3[1] - *a3) >> 2);
    }

    v10 = *a4;
    v11 = *(a1 + 44);
    v12 = *a4 + 4 * v11;
    v23 = 0;
    v24 = 0;
    __p = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(&__p, v10, v12, v11);
    kaldi::quasar::argsortn<float,false>(&__p, v9, &v25);
  }

  else
  {
    kaldi::quasar::SeevaBeamSearchBase::MaskEos(a1, a3);
    kaldi::quasar::SeevaBeamSearchBase::UpdateBeamLength(a1);
    if (a4 != a3)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a4, *a3, a3[1], (a3[1] - *a3) >> 2);
    }

    if (v9 >= 1)
    {
      v13 = 0;
      v14 = 0;
      v15 = *(a1 + 44);
      v16 = *a4;
      do
      {
        if (v15 >= 1)
        {
          v17 = *(a1 + 120) + *(a1 + 112) - 1;
          v18 = (v16 + 4 * v13);
          v19 = *(*(*(a1 + 88) + 8 * (v17 / 0xAA)) + 24 * (v17 % 0xAA));
          v20 = v15;
          do
          {
            *v18 = *(v19 + 4 * v14) + *v18;
            ++v18;
            --v20;
          }

          while (v20);
        }

        ++v14;
        v13 += v15;
      }

      while (v14 != v9);
    }

    kaldi::quasar::SeevaBeamSearchBase::ApplyLengthNorm(a1, a4, &__p);
    kaldi::quasar::argsortn<float,false>(&__p, v9, &v25);
  }

  v21 = *a5;
  if (*a5)
  {
    *(a5 + 8) = v21;
    operator delete(v21);
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
  }

  *a5 = v25;
  *(a5 + 16) = v26;
  v26 = 0;
  v25 = 0uLL;
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }
}

void sub_1B5347DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *kaldi::quasar::argsortn<float,false>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int **a3@<X8>)
{
  std::vector<int>::vector[abi:ne200100](a3, (a1[1] - *a1) >> 2);
  result = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    v8 = 0;
    v9 = (v7 - result - 4) >> 2;
    v10 = vdupq_n_s64(v9);
    v11 = (v9 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v12 = result + 2;
    do
    {
      v13 = vdupq_n_s64(v8);
      v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_1B5AE0060)));
      if (vuzp1_s16(v14, *v10.i8).u8[0])
      {
        *(v12 - 2) = v8;
      }

      if (vuzp1_s16(v14, *&v10).i8[2])
      {
        *(v12 - 1) = v8 + 1;
      }

      if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_1B5AE0050)))).i32[1])
      {
        *v12 = v8 + 2;
        v12[1] = v8 + 3;
      }

      v8 += 4;
      v12 += 4;
    }

    while (v11 != v8);
  }

  v15 = a1;
  if (a2)
  {
    return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<int> kaldi::quasar::argsortn<float,false>(std::vector<float> const&,unsigned long)::{lambda(int,int)#1} &,std::__wrap_iter<int *>,std::__wrap_iter<int *>>(result, &result[a2], v7, &v15);
  }

  return result;
}

void sub_1B5347EDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::SeevaBeamSearchBase::MaskEos(uint64_t result, void *a2)
{
  v2 = *(*(result + 16) + 152);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(result + 168) + *(result + 160) - 1;
    v5 = *(*(*(result + 136) + 8 * (v4 / 0xAA)) + 24 * (v4 % 0xAA));
    v6 = vdupq_n_s64(4uLL);
    do
    {
      if ((*(v5 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
      {
        v7 = *(result + 44);
        if (v7 >= 1)
        {
          v8 = 0;
          v9 = vdupq_n_s64(v7 - 1);
          v10 = 4 * *(result + 36);
          v11 = 16 * ((v7 + 3) >> 2);
          v12 = *a2 + 4 * (v7 * v3);
          v13 = xmmword_1B5AE0060;
          v14 = xmmword_1B5AE0050;
          do
          {
            v15 = vmovn_s64(vcgeq_u64(v9, v13));
            if (vuzp1_s16(v15, 2).u8[0])
            {
              if (v10 == v8)
              {
                v16 = 0.0;
              }

              else
              {
                v16 = -1000000000.0;
              }

              *(v12 + v8) = v16;
            }

            if (vuzp1_s16(v15, 2).i8[2])
            {
              if (v10 - 4 == v8)
              {
                v17 = 0.0;
              }

              else
              {
                v17 = -1000000000.0;
              }

              *(v12 + v8 + 4) = v17;
            }

            v18 = vmovn_s64(vcgeq_u64(v9, v14));
            if (vuzp1_s16(2, v18).i32[1])
            {
              if (v10 - 8 == v8)
              {
                v19 = 0.0;
              }

              else
              {
                v19 = -1000000000.0;
              }

              *(v12 + v8 + 8) = v19;
            }

            if (vuzp1_s16(2, v18).i8[6])
            {
              if (v10 - 12 == v8)
              {
                v20 = 0.0;
              }

              else
              {
                v20 = -1000000000.0;
              }

              *(v12 + v8 + 12) = v20;
            }

            v14 = vaddq_s64(v14, v6);
            v13 = vaddq_s64(v13, v6);
            v8 += 16;
          }

          while (v11 != v8);
        }
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

void *kaldi::quasar::SeevaBeamSearchBase::UpdateBeamLength(void *this)
{
  v1 = *(this[2] + 152);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = this[21] + this[20] - 1;
    v4 = *(*(this[17] + 8 * (v3 / 0xAA)) + 24 * (v3 % 0xAA));
    do
    {
      if (((*(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v2) & 1) == 0)
      {
        v5 = this[27] + this[26] - 1;
        v6 = *(*(this[23] + 8 * (v5 / 0xAA)) + 24 * (v5 % 0xAA));
        ++*(v6 + 4 * v2);
      }

      ++v2;
    }

    while (v1 != v2);
  }

  return this;
}

void kaldi::quasar::SeevaBeamSearchBase::ApplyLengthNorm(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(v5 + 152);
  v7 = *(v5 + 8);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a3, *a2, a2[1], (a2[1] - *a2) >> 2);
  if (v6 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(a1 + 216) + *(a1 + 208) - 1;
    v11 = *(*(*(a1 + 184) + 8 * (v10 / 0xAA)) + 24 * (v10 % 0xAA));
    v12 = -v7;
    v13 = *(a1 + 44);
    v14 = *a3;
    do
    {
      v15 = pow((*(v11 + 4 * v9) + 5.0) / 6.0, v12);
      if (v13 >= 1)
      {
        v16 = (v14 + 4 * v8);
        v17 = v15;
        v18 = v13;
        do
        {
          *v16 = *v16 * v17;
          ++v16;
          --v18;
        }

        while (v18);
      }

      ++v9;
      v8 += v13;
    }

    while (v9 != v6);
  }
}

void kaldi::quasar::SeevaBeamSearchBase::TraceBack(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a2;
  v6 = a2[1];
  v8 = *(*(a1 + 16) + 152);
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  std::vector<std::vector<int>>::vector[abi:ne200100](&v52, v8);
  std::vector<std::vector<int>>::__vdeallocate(a3);
  *a3 = v52;
  *(a3 + 16) = v53;
  v53 = 0;
  v52 = 0uLL;
  v54 = &v52;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v54);
  std::vector<std::vector<float>>::vector[abi:ne200100](&v52, v8);
  std::vector<std::vector<int>>::__vdeallocate((a3 + 24));
  *(a3 + 24) = v52;
  *(a3 + 40) = v53;
  v53 = 0;
  v52 = 0uLL;
  v54 = &v52;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v54);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = 0x8E38E38E38E38E39 * ((v6 - v7) >> 3);
    do
    {
      std::vector<int>::vector[abi:ne200100](&v52, v10 - 1);
      v11 = *a3 + v9;
      v12 = *v11;
      if (*v11)
      {
        *(v11 + 8) = v12;
        operator delete(v12);
        *v11 = 0;
        *(v11 + 8) = 0;
        *(v11 + 16) = 0;
      }

      *v11 = v52;
      *(v11 + 16) = v53;
      std::vector<float>::vector[abi:ne200100](&v52, v10 - 1);
      v13 = *(a3 + 24) + v9;
      v14 = *v13;
      if (*v13)
      {
        *(v13 + 8) = v14;
        operator delete(v14);
        *v13 = 0;
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
      }

      *v13 = v52;
      *(v13 + 16) = v53;
      v9 += 24;
    }

    while (24 * v8 != v9);
    v15 = 0;
    v16 = *(*a2 + 72 * (v10 - 1));
    v17 = *a3;
    v18 = *(a3 + 24);
    v19 = *a2 + 72 * (v10 - 2) + 24;
    do
    {
      if (((v10 - 2) & 0x80000000) == 0)
      {
        v20 = (v16 + 4 * v15);
        v21 = *(v17 + 24 * v15);
        v22 = *(v18 + 24 * v15);
        v23 = v19;
        v24 = (v10 - 2);
        do
        {
          v25 = *v20;
          *(v21 + 4 * v24) = *(*v23 + 4 * v25);
          *(v22 + 4 * v24) = *(v23[3] + 4 * v25);
          v20 = (*(v23 - 3) + 4 * v25);
          v23 -= 9;
        }

        while (v24-- > 0);
      }

      ++v15;
    }

    while (v15 != v8);
  }

  std::vector<int>::vector[abi:ne200100](&v52, v8);
  v27 = *(a3 + 72);
  if (v27)
  {
    *(a3 + 80) = v27;
    operator delete(v27);
  }

  *(a3 + 72) = v52;
  *(a3 + 88) = v53;
  std::vector<float>::vector[abi:ne200100](&v52, v8);
  v28 = *(a3 + 48);
  if (v28)
  {
    *(a3 + 56) = v28;
    operator delete(v28);
  }

  v29 = v52;
  *(a3 + 48) = v52;
  *(a3 + 64) = v53;
  *(a3 + 96) = v8;
  if (v8 >= 1)
  {
    v30 = 0;
    v31 = *a3;
    v32 = *(a3 + 72);
    v33 = *(a3 + 24);
    v34 = -*(*(a1 + 16) + 8);
    v35 = v29;
    do
    {
      v36 = (v31 + 24 * v30);
      v37 = *v36;
      v38 = v36[1];
      if (*v36 == v38)
      {
LABEL_25:
        v43 = v37;
      }

      else
      {
        v39 = *(a1 + 36);
        v40 = *(a3 + 24) + 24 * v30;
        v41 = v38 - 4;
        while (*v41 == v39)
        {
          v36[1] = v41;
          *(v40 + 8) -= 4;
          v42 = v41 == v37;
          v41 -= 4;
          if (v42)
          {
            goto LABEL_25;
          }
        }

        v43 = v41 + 4;
      }

      v44 = (v43 - v37) >> 2;
      *(v32 + 4 * v30) = v44;
      v45 = (v33 + 24 * v30);
      v46 = *v45;
      v47 = v45[1];
      v48 = 0.0;
      while (v46 != v47)
      {
        v49 = *v46++;
        v48 = v48 + v49;
      }

      v50 = pow((v44 + 5.0) / 6.0, v34);
      v51 = v48 * v50;
      *(v35 + 4 * v30++) = v51;
    }

    while (v30 != v8);
  }
}

void kaldi::quasar::SeevaBeamSearchBase::DecodeOutputData::~DecodeOutputData(kaldi::quasar::SeevaBeamSearchBase::DecodeOutputData *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = (this + 24);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = this;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void *std::deque<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__add_back_capacity(void *a1)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *,std::allocator<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>>::emplace_back<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *&>(a1, &v10);
}

void sub_1B53487FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::deque<std::vector<float>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
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

void sub_1B53489D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::deque<std::vector<BOOL>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
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

void sub_1B5348BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::deque<std::vector<int>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
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

void sub_1B5348D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>>::destroy[abi:ne200100]<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb,0>(a1, i))
  {
    i -= 72;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>>::destroy[abi:ne200100]<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3)
  {
    *(a2 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    *(a2 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v5;

    operator delete(v5);
  }
}

uint64_t std::vector<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>::__emplace_back_slow_path<int const&>(uint64_t *a1, int *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>>(a1, v6);
  }

  v13 = 0;
  v14 = 72 * v2;
  v15 = 72 * v2;
  kaldi::quasar::SeevaBeamSearchBase::Breadcrumb::Breadcrumb((72 * v2), *a2);
  *&v15 = 72 * v2 + 72;
  v7 = a1[1];
  v8 = (72 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>,kaldi::quasar::SeevaBeamSearchBase::Breadcrumb*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>::~__split_buffer(&v13);
  return v12;
}

void sub_1B5348FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

kaldi::quasar::SeevaBeamSearchBase::Breadcrumb *kaldi::quasar::SeevaBeamSearchBase::Breadcrumb::Breadcrumb(kaldi::quasar::SeevaBeamSearchBase::Breadcrumb *this, int a2)
{
  *(this + 3) = 0u;
  v3 = this + 48;
  *(this + 8) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  v4 = a2;
  std::vector<int>::vector[abi:ne200100](&v9, a2);
  v5 = *this;
  if (*this)
  {
    *(this + 1) = v5;
    operator delete(v5);
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  *this = v9;
  *(this + 2) = v10;
  std::vector<int>::vector[abi:ne200100](&v9, v4);
  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
    *(this + 3) = 0;
    *(this + 4) = 0;
    *(this + 5) = 0;
  }

  *(this + 24) = v9;
  *(this + 5) = v10;
  std::vector<float>::vector[abi:ne200100](&v9, v4);
  v7 = *v3;
  if (*v3)
  {
    *(this + 7) = v7;
    operator delete(v7);
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
  }

  *(this + 3) = v9;
  *(this + 8) = v10;
  return this;
}

void sub_1B53490B4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 24);
  if (v5)
  {
    *(v1 + 32) = v5;
    operator delete(v5);
  }

  v6 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>,kaldi::quasar::SeevaBeamSearchBase::Breadcrumb*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
      std::allocator<quasar::PhoneticMatchAlignmentSpan>::construct[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan,quasar::PhoneticMatchAlignmentSpan>(a1, a4, v7);
      v7 += 72;
      a4 = v12 + 9;
      v12 += 9;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>>::destroy[abi:ne200100]<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb,0>(a1, v5);
      v5 += 72;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>,kaldi::quasar::SeevaBeamSearchBase::Breadcrumb*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>,kaldi::quasar::SeevaBeamSearchBase::Breadcrumb*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>,kaldi::quasar::SeevaBeamSearchBase::Breadcrumb*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>,kaldi::quasar::SeevaBeamSearchBase::Breadcrumb*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 72;
      std::allocator_traits<std::allocator<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>>::destroy[abi:ne200100]<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 72;
    std::allocator_traits<std::allocator<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>>::destroy[abi:ne200100]<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb,0>(v5, v4 - 72);
  }
}

void *std::vector<kaldi::quasar::ComputeEngineBufferItf *>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_1B5349388(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::deque<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>>(void *a1, void *a2, unsigned int a3, void *a4, int a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = v8 + a6;
  a1[1] = v8 + a6;
  if (!v8 || ((v9 - 1) ^ (v8 - 1)) >= 0x40)
  {
    if (v9 >= 0x41)
    {
      v10 = (v9 - 1) >> 6;
    }

    else
    {
      v10 = 0;
    }

    *(*a1 + 8 * v10) = 0;
  }

  v14 = v6;
  v15 = v7;
  v11 = *a1 + 8 * (v8 >> 6);
  v12 = v8 & 0x3F;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(a2, a3, a4, a5, &v11, v13);
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  LODWORD(v6) = a2;
  v7 = *a5;
  v8 = *(a5 + 8);
  if (a1 != a3 || a2 != a4)
  {
    do
    {
      v9 = 1 << v8;
      if ((*a1 >> a2))
      {
        v10 = *v7 | v9;
      }

      else
      {
        v10 = *v7 & ~v9;
      }

      *v7 = v10;
      v11 = v6 == 63;
      v12 = v6 == 63;
      v6 = (a2 + 1);
      if (v11)
      {
        v6 = 0;
      }

      if (v8 == 63)
      {
        v8 = 0;
        *a5 = ++v7;
      }

      else
      {
        ++v8;
      }

      a1 += v12;
      a2 = v6 | a2 & 0xFFFFFFFF00000000;
    }

    while (a1 != a3 || v6 != a4);
    *(a5 + 8) = v8;
  }

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v7;
  *(a6 + 24) = v8;
}

void std::vector<kaldi::Matrix<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = kaldi::Matrix<float>::~Matrix(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<kaldi::Matrix<float>>::__emplace_back_slow_path<>(uint64_t *a1)
{
  v1 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v4 = 0x666666666666666;
  }

  else
  {
    v4 = v2;
  }

  v14 = a1;
  if (v4)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::Matrix<float>>>(a1, v4);
  }

  v11 = 0;
  v12 = 40 * v1;
  kaldi::Matrix<float>::Matrix(40 * v1);
  v13 = 40 * v1 + 40;
  v5 = a1[1];
  v6 = 40 * v1 + *a1 - v5;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::Matrix<float>>,kaldi::Matrix<float>*>(a1, *a1, v5, v12 + *a1 - v5);
  v7 = *a1;
  *a1 = v6;
  v8 = a1[2];
  v10 = v13;
  *(a1 + 1) = v13;
  *&v13 = v7;
  *(&v13 + 1) = v8;
  v11 = v7;
  v12 = v7;
  std::__split_buffer<kaldi::Matrix<float>>::~__split_buffer(&v11);
  return v10;
}

void sub_1B534971C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::Matrix<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<int> kaldi::quasar::argsortn<float,false>(std::vector<float> const&,unsigned long)::{lambda(int,int)#1} &,std::__wrap_iter<int *>,std::__wrap_iter<int *>>(int *a1, int *a2, int *a3, uint64_t **a4)
{
  v4 = a3;
  v5 = a2 - a1;
  if (a2 != a1)
  {
    v10 = v5 >> 2;
    v11 = __OFSUB__(v5 >> 2, 2);
    v12 = (v5 >> 2) - 2;
    if (v12 < 0 == v11)
    {
      v13 = v12 >> 1;
      v14 = &a1[v13];
      v15 = v13 + 1;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<int> kaldi::quasar::argsortn<float,false>(std::vector<float> const&,unsigned long)::{lambda(int,int)#1} &,std::__wrap_iter<int *>>(a1, a4, v10, v14--);
        --v15;
      }

      while (v15);
    }

    v4 = a2;
    if (a2 != a3)
    {
      v16 = a2;
      do
      {
        v17 = *v16;
        v18 = *a1;
        if (*(**a4 + 4 * v17) > *(**a4 + 4 * v18))
        {
          *v16 = v18;
          *a1 = v17;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<int> kaldi::quasar::argsortn<float,false>(std::vector<float> const&,unsigned long)::{lambda(int,int)#1} &,std::__wrap_iter<int *>>(a1, a4, v10, a1);
        }

        ++v16;
      }

      while (v16 != a3);
      v4 = a3;
    }

    if (v10 >= 2)
    {
      v19 = a2 - 1;
      do
      {
        v20 = *a1;
        v21 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<int> kaldi::quasar::argsortn<float,false>(std::vector<float> const&,unsigned long)::{lambda(int,int)#1} &,std::__wrap_iter<int *>>(a1, a4, v10);
        if (v19 == v21)
        {
          *v21 = v20;
        }

        else
        {
          *v21 = *v19;
          *v19 = v20;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<int> kaldi::quasar::argsortn<float,false>(std::vector<float> const&,unsigned long)::{lambda(int,int)#1} &,std::__wrap_iter<int *>>(a1, (v21 + 1), a4, v21 + 1 - a1);
        }

        --v19;
      }

      while (v10-- > 2);
    }
  }

  return v4;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<int> kaldi::quasar::argsortn<float,false>(std::vector<float> const&,unsigned long)::{lambda(int,int)#1} &,std::__wrap_iter<int *>>(uint64_t result, uint64_t **a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (a4 - result) >> 2)
    {
      v5 = (a4 - result) >> 1;
      v6 = v5 | 1;
      v7 = (result + 4 * (v5 | 1));
      v8 = v5 + 2;
      v9 = **a2;
      if (v8 < a3 && *(v9 + 4 * *v7) > *(v9 + 4 * v7[1]))
      {
        ++v7;
        v6 = v8;
      }

      v10 = *v7;
      v11 = *a4;
      v12 = *(v9 + 4 * v11);
      if (*(v9 + 4 * v10) <= v12)
      {
        do
        {
          *a4 = v10;
          a4 = v7;
          if (v4 < v6)
          {
            break;
          }

          v13 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (result + 4 * v6);
          v14 = v13 + 2;
          if (v14 < a3 && *(v9 + 4 * *v7) > *(v9 + 4 * v7[1]))
          {
            ++v7;
            v6 = v14;
          }

          v10 = *v7;
        }

        while (*(v9 + 4 * v10) <= v12);
        *a4 = v11;
      }
    }
  }

  return result;
}

int *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<int> kaldi::quasar::argsortn<float,false>(std::vector<float> const&,unsigned long)::{lambda(int,int)#1} &,std::__wrap_iter<int *>>(int *result, void **a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a2;
  do
  {
    v5 = result;
    result += v3 + 1;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3 && *(*v4 + 4 * *result) > *(*v4 + 4 * result[1]))
    {
      ++result;
      v3 = v7;
    }

    *v5 = *result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<int> kaldi::quasar::argsortn<float,false>(std::vector<float> const&,unsigned long)::{lambda(int,int)#1} &,std::__wrap_iter<int *>>(uint64_t result, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 4 * v4);
    v6 = *v5;
    v9 = *(a2 - 4);
    v7 = (a2 - 4);
    v8 = v9;
    v10 = **a3;
    v11 = *(v10 + 4 * v9);
    if (*(v10 + 4 * v6) > v11)
    {
      do
      {
        v12 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 4 * v4);
        v6 = *v5;
        v7 = v12;
      }

      while (*(v10 + 4 * v6) > v11);
      *v12 = v8;
    }
  }

  return result;
}

double quasar::PronGuessStats::PronGuessStats(quasar::PronGuessStats *this)
{
  *(this + 8) = 0;
  *(this + 7) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 25) = 0u;
  *(this + 6) = this + 56;
  return result;
}

void quasar::PronGuessStats::addRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if ((a4 & 0x80000000) != 0)
  {
    if (quasar::gLogLevel >= 5)
    {
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
      v17 = 0u;
      v18 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Detected latency overflow, change to int_max.", 45);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }

    v4 = 0x7FFFFFFFLL;
  }

  v8 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 48, a2);
  if (a1 + 56 == v8)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      *&v17 = *(a2 + 16);
    }

    *(&v17 + 1) = a3 | (v4 << 32);
    std::__tree<std::__value_type<std::string,quasar::PronGuessStats::Record>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PronGuessStats::Record>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::PronGuessStats::Record>>>::__emplace_unique_key_args<std::string,std::pair<std::string,quasar::PronGuessStats::Record>>(a1 + 48, __p);
    if (SBYTE7(v17) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v9 = v8;
    if (quasar::gLogLevel >= 5)
    {
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
      v17 = 0u;
      v18 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "dup stat: token=", 16);
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

      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", source=", 9);
      MEMORY[0x1B8C84C00](v15, a3);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }

    if (*(v9 + 60) < v4)
    {
      *(v9 + 56) = a3;
      *(v9 + 60) = v4;
    }
  }
}

void quasar::G2P::~G2P(std::locale *this)
{
  this->__locale_ = &unk_1F2D0D298;
  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::~wstring_convert(&this[15]);
  std::locale::~locale(this + 14);
  if (SHIBYTE(this[11].__locale_) < 0)
  {
    operator delete(this[9].__locale_);
  }

  if (SHIBYTE(this[8].__locale_) < 0)
  {
    operator delete(this[6].__locale_);
  }

  locale = this[5].__locale_;
  this[5].__locale_ = 0;
  if (locale)
  {
    std::__tree<int>::destroy(locale + 8, *(locale + 2));
    MEMORY[0x1B8C85350](locale, 0x1020C40CA22B68ALL);
  }

  v3 = this[4].__locale_;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[2].__locale_;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void quasar::G2P::getProns(uint64_t a1@<X0>, __int128 ***a2@<X2>, int32x2_t *a3@<X3>, void *a4@<X4>, _BYTE *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v8 = *a2;
  v43 = a2[1];
  if (*a2 == v43)
  {
    if (quasar::gLogLevel >= 4)
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v57 = 0u;
      memset(v56, 0, sizeof(v56));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v56);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "Empty tokenStrings received", 27);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(v56);
    }

    *a7 = 0;
    a7[1] = 0;
    a7[2] = 0;
  }

  else
  {
    v53 = 0;
    v54 = 0;
    v55 = 0;
    do
    {
      v51 = 0uLL;
      v52 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v15 = *v8;
      v14 = v8[1];
      if (*v8 == v14)
      {
        if (quasar::gLogLevel >= 4)
        {
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v57 = 0u;
          memset(v56, 0, sizeof(v56));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v56);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "Empty tokenStrings[0] received", 30);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(v56);
        }
      }

      else
      {
        do
        {
          if (*(v15 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(v56, *v15, *(v15 + 1));
          }

          else
          {
            v16 = *v15;
            *&v56[16] = *(v15 + 2);
            *v56 = v16;
          }

          *&v56[24] = *(v15 + 6);
          __p = 0;
          v46 = 0;
          v47 = 0;
          v17 = a4[1];
          v44[0] = *a4;
          v44[1] = v17;
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          HumanReadableProns = quasar::G2P::getHumanReadableProns(a1, v56, &__p, a3, v44, a5, a6);
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          if (HumanReadableProns == -1)
          {
            v19 = 5;
          }

          else if (__p == v46)
          {
            v20 = v48;
            v21 = v49;
            while (v21 != v20)
            {
              v21 -= 3;
              v72[0] = v21;
              std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](v72);
            }

            v49 = v20;
            v19 = 4;
          }

          else
          {
            std::vector<std::vector<quasar::PronChoice>>::push_back[abi:ne200100](&v48, &__p);
            v19 = 0;
          }

          v72[0] = &__p;
          std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](v72);
          if ((v56[23] & 0x80000000) != 0)
          {
            operator delete(*v56);
          }

          if (v19 != 5 && v19)
          {
            break;
          }

          v15 += 2;
        }

        while (v15 != v14);
        v22 = *(a1 + 40);
        std::string::basic_string[abi:ne200100]<0>(&__p, ".");
        quasar::PronCombinator::operator()(v22, &v48, v56);
        std::vector<quasar::PronChoice>::__vdeallocate(&v51);
        v51 = *v56;
        v52 = *&v56[16];
        memset(v56, 0, 24);
        v72[0] = v56;
        std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](v72);
        if (SHIBYTE(v47) < 0)
        {
          operator delete(__p);
        }

        v23 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((*(&v51 + 1) - v51) >> 3));
        if (*(&v51 + 1) == v51)
        {
          v24 = 0;
        }

        else
        {
          v24 = v23;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *,false>(v51, *(&v51 + 1), &__p, v24, 1);
        std::vector<std::vector<quasar::PronChoice>>::push_back[abi:ne200100](&v53, &v51);
      }

      *v56 = &v48;
      std::vector<std::vector<quasar::PronChoice>>::__destroy_vector::operator()[abi:ne200100](v56);
      *v56 = &v51;
      std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](v56);
      v8 += 4;
    }

    while (v8 != v43);
    *&v56[8] = 0uLL;
    *v56 = &v56[8];
    v26 = v53;
    v25 = v54;
    if (v54 == v53)
    {
      *a7 = 0;
      a7[1] = 0;
      a7[2] = 0;
    }

    else
    {
      v27 = 0;
      do
      {
        v28 = (v26 + 24 * v27);
        v29 = *v28;
        v30 = v28[1];
        if (*v28 != v30)
        {
          do
          {
            *&v51 = v29;
            v31 = std::__tree<std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v56, v29);
            std::vector<std::vector<quasar::PronChoice>>::resize((v31 + 5), 0xAAAAAAAAAAAAAAABLL * ((v54 - v53) >> 3));
            *&v51 = v29;
            v32 = std::__tree<std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v56, v29);
            std::vector<quasar::PronChoice>::push_back[abi:ne200100]((v32[5] + 24 * v27), v29);
            v29 += 10;
          }

          while (v29 != v30);
          v26 = v53;
          v25 = v54;
        }

        ++v27;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v25 - v26) >> 3) > v27);
      v33 = *v56;
      a7[1] = 0;
      a7[2] = 0;
      *a7 = 0;
      if (v33 != &v56[8])
      {
        do
        {
          quasar::G2P::selectTopProns(a1, (v33 + 40), &v51);
          v34 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v51 + 1) - v51) >> 3);
          v35 = *(a1 + 104);
          if (v34 <= v35)
          {
            v37 = 126 - 2 * __clz(v34);
            if (*(&v51 + 1) == v51)
            {
              v38 = 0;
            }

            else
            {
              v38 = v37;
            }

            std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *,false>(v51, *(&v51 + 1), &__p, v38, 1);
          }

          else
          {
            if (v35)
            {
              std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<quasar::PronChoice *>,std::__wrap_iter<quasar::PronChoice *>>(v51, v51 + 40 * v35, *(&v51 + 1), &__p);
              v36 = *(a1 + 104);
            }

            else
            {
              v36 = 0;
            }

            std::vector<quasar::PronChoice>::resize(&v51, v36);
          }

          std::vector<quasar::PronChoice>::__insert_with_size[abi:ne200100]<std::__wrap_iter<quasar::PronChoice*>,std::__wrap_iter<quasar::PronChoice*>>(a7, a7[1], v51, *(&v51 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(&v51 + 1) - v51) >> 3));
          v48 = &v51;
          std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&v48);
          v39 = *(v33 + 1);
          if (v39)
          {
            do
            {
              v40 = v39;
              v39 = *v39;
            }

            while (v39);
          }

          else
          {
            do
            {
              v40 = *(v33 + 2);
              v41 = *v40 == v33;
              v33 = v40;
            }

            while (!v41);
          }

          v33 = v40;
        }

        while (v40 != &v56[8]);
      }
    }

    std::__tree<std::__value_type<quasar::PronType,std::vector<std::vector<quasar::PronChoice>>>,std::__map_value_compare<quasar::PronType,std::__value_type<quasar::PronType,std::vector<std::vector<quasar::PronChoice>>>,std::less<quasar::PronType>,true>,std::allocator<std::__value_type<quasar::PronType,std::vector<std::vector<quasar::PronChoice>>>>>::destroy(v56, *&v56[8]);
    *v56 = &v53;
    std::vector<std::vector<quasar::PronChoice>>::__destroy_vector::operator()[abi:ne200100](v56);
  }
}

uint64_t quasar::G2P::getHumanReadableProns(void *a1, uint64_t a2, uint64_t a3, int32x2_t *a4, uint64_t a5, _BYTE *a6, uint64_t a7)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v65, *a2, *(a2 + 8));
  }

  else
  {
    v65 = *a2;
  }

  v66 = *(a2 + 24);
  v64 = 0;
  v14 = *(a5 + 8);
  v63[0] = *a5;
  v63[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
  }

  v16 = quasar::G2P::lookupHumanReadableProns(a1, &v65, a3, a4, v63, &v64 + 1, &v64, a7);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v16 == -1)
  {
    v19 = 0xFFFFFFFFLL;
    goto LABEL_58;
  }

  if (HIBYTE(v64) == 1)
  {
    v61 = 1;
    kaldi::Timer::Reset(&v59, v15);
    v62 = 0;
    (*(*a1 + 16))(v42, a1, &v65, a7);
    std::vector<quasar::PronChoice>::__vdeallocate(a3);
    *a3 = *v42;
    *(a3 + 16) = __p[0];
    v42[1] = 0;
    __p[0] = 0;
    v42[0] = 0;
    v67 = v42;
    std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&v67);
    v42[0] = 0;
    v42[1] = 0;
    __p[0] = 0;
    v17 = *a3;
    v18 = *(a3 + 8);
    while (v17 != v18)
    {
      if (quasar::pronTypeMatchesPronRequest(*v17, a7))
      {
        std::vector<quasar::PronChoice>::push_back[abi:ne200100](v42, v17);
      }

      v17 += 10;
    }

    if (v42 != a3)
    {
      std::vector<quasar::PronChoice>::__assign_with_size[abi:ne200100]<quasar::PronChoice*,quasar::PronChoice*>(a3, v42[0], v42[1], 0xCCCCCCCCCCCCCCCDLL * ((v42[1] - v42[0]) >> 3));
    }

    v67 = v42;
    std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&v67);
    *a6 = 1;
    v21 = *a3;
    v22 = *(a3 + 8);
    if (*a3 != v22)
    {
      Seconds = kaldi::Timer::GetSeconds(5, v20);
      v24 = v59;
      kaldi::Timer::Reset(&v59, v25);
      quasar::PronGuessStats::addRecord(a4, &v65, 3, ((Seconds - v24) * 1000000.0));
      quasar::fromPronChoices(a3, v42);
      updated = quasar::G2P::updateCache(a1, &v65, v42);
      v67 = v42;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v67);
      v29 = ((kaldi::Timer::GetSeconds(5, v27) - v59) * 1000000.0);
LABEL_30:
      quasar::G2P::updateCacheSetStats(v28, &v65, v29, updated, v21 == v22, a4);
      goto LABEL_31;
    }

    if (quasar::gLogLevel >= 4)
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
      v44 = 0u;
      *v42 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v42);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "Failed to generated pronunciations for word=", 44);
      if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v65;
      }

      else
      {
        v31 = v65.__r_.__value_.__r.__words[0];
      }

      if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v65.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v65.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, size);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(v42);
    }

    ++a4[2].i32[1];
    if (*(a1[1] + 8) == 1)
    {
      v42[0] = 0;
      v42[1] = 0;
      __p[0] = 0;
      updated = quasar::G2P::updateCache(a1, &v65, v42);
      v67 = v42;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v67);
      v29 = 0;
      goto LABEL_30;
    }
  }

LABEL_31:
  if ((v64 & 1) == 0)
  {
    v33 = *a5;
    if (v33)
    {
      if (a7 == 2)
      {
        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v41, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
        }

        else
        {
          v41 = v65;
        }

        std::string::basic_string[abi:ne200100]<0>(v39, "");
        quasar::LmeDataFactoryBase::PronSet::PronSet(&v59, a3);
        quasar::LmeDataFactoryBase::Word::Word(v42, &v41, v39, 1, &v59);
        quasar::LmeData::addWordToEmbeddingCache(v33, v42, 3);
        std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v45 + 8, v46);
        if (SHIBYTE(v44) < 0)
        {
          operator delete(__p[1]);
        }

        if (SHIBYTE(__p[0]) < 0)
        {
          operator delete(v42[0]);
        }

        std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v59, v60);
        if (v40 < 0)
        {
          operator delete(v39[0]);
        }

        if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_57;
        }

        v34 = v41.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v38, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
        }

        else
        {
          v38 = v65;
        }

        std::string::basic_string[abi:ne200100]<0>(v36, "");
        quasar::LmeDataFactoryBase::PronSet::PronSet(&v59, a3);
        quasar::LmeDataFactoryBase::Word::Word(v42, &v38, v36, 1, &v59);
        quasar::LmeData::addWordToPronCache(v33, v42, 3);
        std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v45 + 8, v46);
        if (SHIBYTE(v44) < 0)
        {
          operator delete(__p[1]);
        }

        if (SHIBYTE(__p[0]) < 0)
        {
          operator delete(v42[0]);
        }

        std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v59, v60);
        if (v37 < 0)
        {
          operator delete(v36[0]);
        }

        if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_57;
        }

        v34 = v38.__r_.__value_.__r.__words[0];
      }

      operator delete(v34);
    }
  }

LABEL_57:
  v19 = 0;
LABEL_58:
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  return v19;
}

void sub_1B534A870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35)
{
  if (*(v35 - 121) < 0)
  {
    operator delete(*(v35 - 144));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<quasar::PronChoice>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<quasar::PronChoice>>::__emplace_back_slow_path<std::vector<quasar::PronChoice> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<quasar::PronChoice>>::__construct_one_at_end[abi:ne200100]<std::vector<quasar::PronChoice> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<std::vector<quasar::PronChoice>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<quasar::PronChoice>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&v8);
    }

    *(a1 + 8) = v7;
  }
}

uint64_t std::vector<quasar::PronChoice>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<quasar::PronChoice>::__emplace_back_slow_path<quasar::PronChoice const&>(a1, a2);
  }

  else
  {
    quasar::PronChoice::PronChoice(a1[1], a2);
    result = v3 + 40;
    a1[1] = v3 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t quasar::G2P::selectTopProns@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = result;
  v3 = 0;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  do
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 3) >= *(v19 + 104))
    {
      break;
    }

    v5 = *a2;
    v4 = *(a2 + 8);
    if (*a2 == v4)
    {
      v18 = 0;
      v17 = *a2;
    }

    else
    {
      v6 = 0;
      do
      {
        if (0xCCCCCCCCCCCCCCCDLL * ((v5[1] - *v5) >> 3) <= v3)
        {
          ++v6;
        }

        else
        {
          v8 = *a3;
          v7 = a3[1];
          v9 = *v5 + 40 * v3;
          if (*a3 != v7)
          {
            v10 = *v9;
            v11 = *(v9 + 31);
            if (v11 >= 0)
            {
              v12 = *(v9 + 31);
            }

            else
            {
              v12 = *(v9 + 16);
            }

            if (v11 >= 0)
            {
              v13 = (v9 + 8);
            }

            else
            {
              v13 = *(v9 + 8);
            }

            while (1)
            {
              if (*v8 == v10)
              {
                v14 = *(v8 + 31);
                v15 = v14;
                if ((v14 & 0x80u) != 0)
                {
                  v14 = *(v8 + 16);
                }

                if (v14 == v12)
                {
                  v16 = v15 >= 0 ? (v8 + 8) : *(v8 + 8);
                  result = memcmp(v16, v13, v12);
                  if (!result)
                  {
                    break;
                  }
                }
              }

              v8 += 40;
              if (v8 == v7)
              {
                goto LABEL_25;
              }
            }
          }

          if (v8 == v7)
          {
LABEL_25:
            result = std::vector<quasar::PronChoice>::push_back[abi:ne200100](a3, v9);
          }
        }

        v5 += 3;
      }

      while (v5 != v4);
      v5 = *a2;
      v17 = *(a2 + 8);
      v18 = v6;
    }

    ++v3;
  }

  while (0xAAAAAAAAAAAAAAABLL * (v17 - v5) != v18);
  return result;
}

void sub_1B534AC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, void **a12)
{
  a12 = a11;
  std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void std::vector<quasar::PronChoice>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<quasar::PronChoice>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 40 * a2;
    while (v3 != v7)
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 32));
      }

      v3 -= 40;
    }

    a1[1] = v7;
  }
}

void quasar::G2P::convertPhonemePronsToAllProns(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v5 = 0;
    do
    {
      v6 = 0;
      v7 = 1;
      if (v5 >= a2[2])
      {
        v5 = std::vector<quasar::PronChoice>::__emplace_back_slow_path<quasar::PronType,std::string const&,int>(a2, &v7, v2, &v6);
      }

      else
      {
        std::allocator<quasar::PronChoice>::construct[abi:ne200100]<quasar::PronChoice,quasar::PronType,std::string const&,int>(a2, v5, &v7, v2, &v6);
        v5 += 40;
      }

      a2[1] = v5;
      v2 += 24;
    }

    while (v2 != v3);
  }
}

void sub_1B534ADFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t quasar::G2P::lookupHumanReadableProns(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, quasar::LmeData **a5, _BYTE *a6, BOOL *a7, int a8)
{
  v94 = 1;
  kaldi::Timer::Reset(v93, a2);
  v95 = 0;
  *a7 = 0;
  *a6 = 0;
  v17 = *(a2 + 23);
  v18 = v17;
  v19 = *(a2 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v20 = *(a2 + 23);
  }

  else
  {
    v20 = *(a2 + 8);
  }

  if (!v20)
  {
    return 0xFFFFFFFFLL;
  }

  v21 = a1[3];
  if (v21)
  {
    quasar::LmeDataFactory::applyG2PRewrite(v21, a2);
    v17 = *(a2 + 23);
    v19 = *(a2 + 8);
    v18 = *(a2 + 23);
  }

  if (v18 < 0)
  {
    v17 = v19;
  }

  if (!v17)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*a5)
  {
    goto LABEL_49;
  }

  quasar::LmeDataFactoryBase::PronSet::PronSet(&v81);
  v22 = *a5;
  if (a8 == 2)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v92, *a2, *(a2 + 8));
    }

    else
    {
      v92 = *a2;
    }

    std::string::basic_string[abi:ne200100]<0>(v90, "");
    v87 = 0;
    v88 = 0;
    v89 = 0;
    quasar::LmeDataFactoryBase::Word::Word(v64, &v92, v90, 0, &v87);
    *a7 = quasar::LmeData::lookupWordEmbeddingCache(v22, v64, 3, &v81);
    std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v67 + 8, v68);
    if (SHIBYTE(v66) < 0)
    {
      operator delete(*(&v65 + 1));
    }

    if (SBYTE7(v65) < 0)
    {
      operator delete(v64[0]);
    }

    v63[0] = &v87;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v63);
    if (v91 < 0)
    {
      operator delete(v90[0]);
    }

    if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    v23 = v92.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v86, *a2, *(a2 + 8));
    }

    else
    {
      v86 = *a2;
    }

    std::string::basic_string[abi:ne200100]<0>(v84, "");
    v87 = 0;
    v88 = 0;
    v89 = 0;
    quasar::LmeDataFactoryBase::Word::Word(v64, &v86, v84, 0, &v87);
    *a7 = quasar::LmeData::lookupWordPronCache(v22, v64, 3, &v81);
    std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v67 + 8, v68);
    if (SHIBYTE(v66) < 0)
    {
      operator delete(*(&v65 + 1));
    }

    if (SBYTE7(v65) < 0)
    {
      operator delete(v64[0]);
    }

    v63[0] = &v87;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v63);
    if (v85 < 0)
    {
      operator delete(v84[0]);
    }

    if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    v23 = v86.__r_.__value_.__r.__words[0];
  }

  operator delete(v23);
LABEL_35:
  if (*a7)
  {
    quasar::Bitmap::~Bitmap(&v81);
    v26 = (v25 + 1);
    v27 = *v25;
    if (*v25 != v25 + 1)
    {
      v28 = a3[1];
      do
      {
        if (v28 >= a3[2])
        {
          v28 = std::vector<quasar::PronChoice>::__emplace_back_slow_path<quasar::PronType const&,std::string const&,float const&>(a3, v27 + 8, (v27 + 10), v27 + 16);
        }

        else
        {
          std::allocator<quasar::PronChoice>::construct[abi:ne200100]<quasar::PronChoice,quasar::PronType const&,std::string const&,float const&>(a3, v28, v27 + 8, (v27 + 10), v27 + 16);
          v28 += 40;
          a3[1] = v28;
        }

        a3[1] = v28;
        v29 = *(v27 + 1);
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
            v30 = *(v27 + 2);
            v31 = *v30 == v27;
            v27 = v30;
          }

          while (!v31);
        }

        v27 = v30;
      }

      while (v30 != v26);
    }

    Seconds = kaldi::Timer::GetSeconds(5, v24);
    quasar::PronGuessStats::addRecord(a4, a2, 2, ((Seconds - v93[0]) * 1000000.0));
  }

  std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v81, *(&v81 + 1));
LABEL_49:
  if (!*a7)
  {
    kaldi::Timer::Reset(v93, v16);
    v81 = 0u;
    v82 = 0u;
    v83 = 1065353216;
    v33 = a1[3];
    if (v33)
    {
      v34 = quasar::LmeDataFactory::lookUpProns(v33, a2, &v81);
      v36 = *(&v82 + 1) ? v34 : 0;
      if (v36 == 1)
      {
        if (quasar::gLogLevel >= 5)
        {
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
          v65 = 0u;
          v66 = 0u;
          *v64 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v64);
          v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Token=", 6);
          v38 = *(a2 + 23);
          if (v38 >= 0)
          {
            v39 = a2;
          }

          else
          {
            v39 = *a2;
          }

          if (v38 >= 0)
          {
            v40 = *(a2 + 23);
          }

          else
          {
            v40 = *(a2 + 8);
          }

          v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v39, v40);
          v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " found in Lexicon, prons=", 25);
          v63[0] = ", ";
          v63[1] = 2;
          quasar::join<std::unordered_set<std::string>>(&v81, v63);
          if (v89 >= 0)
          {
            v43 = &v87;
          }

          else
          {
            v43 = v87;
          }

          if (v89 >= 0)
          {
            v44 = HIBYTE(v89);
          }

          else
          {
            v44 = v88;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v43, v44);
          if (SHIBYTE(v89) < 0)
          {
            operator delete(v87);
          }

          quasar::QuasarDebugMessage::~QuasarDebugMessage(v64);
        }

        v45 = v82;
        if (v82)
        {
          v46 = a3[1];
          do
          {
            LODWORD(v64[0]) = 1;
            LODWORD(v87) = 0;
            if (v46 >= a3[2])
            {
              v46 = std::vector<quasar::PronChoice>::__emplace_back_slow_path<quasar::PronType,std::string const&,int>(a3, v64, (v45 + 2), &v87);
            }

            else
            {
              std::allocator<quasar::PronChoice>::construct[abi:ne200100]<quasar::PronChoice,quasar::PronType,std::string const&,int>(a3, v46, v64, (v45 + 2), &v87);
              v46 += 40;
              a3[1] = v46;
            }

            a3[1] = v46;
            v45 = *v45;
          }

          while (v45);
        }

        v47 = kaldi::Timer::GetSeconds(5, v35);
        quasar::PronGuessStats::addRecord(a4, a2, 0, ((v47 - v93[0]) * 1000000.0));
        goto LABEL_112;
      }
    }

    v62 = 0;
    v48 = (*(*a1 + 40))(a1, a2, &v62);
    if (v62 == 1)
    {
      *(a4 + 40) = v62;
    }

    if (v48)
    {
      kaldi::Timer::Reset(v93, v49);
      v61 = 0;
      quasar::G2P::getFromCache(a1, a2, &v61);
      if (v87 != v88)
      {
        v51 = kaldi::Timer::GetSeconds(5, v50);
        quasar::PronGuessStats::addRecord(a4, a2, 1, ((v51 - v93[0]) * 1000000.0));
        quasar::toPronChoices(&v87, v64);
        std::vector<quasar::PronChoice>::__vdeallocate(a3);
        *a3 = *v64;
        a3[2] = v65;
        v64[1] = 0;
        *&v65 = 0;
        v64[0] = 0;
        v63[0] = v64;
        std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](v63);
        if (quasar::gLogLevel >= 5)
        {
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
          v65 = 0u;
          v66 = 0u;
          *v64 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v64);
          v52 = *(a2 + 23);
          if (v52 >= 0)
          {
            v53 = a2;
          }

          else
          {
            v53 = *a2;
          }

          if (v52 >= 0)
          {
            v54 = *(a2 + 23);
          }

          else
          {
            v54 = *(a2 + 8);
          }

          v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, v53, v54);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, " found in PronCache", 19);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(v64);
        }

        goto LABEL_111;
      }

      if (v61 > 1)
      {
        if (v61 == 2)
        {
          ++*(a4 + 4);
          goto LABEL_110;
        }

        if (v61 == 5)
        {
          ++*(a4 + 36);
LABEL_111:
          v64[0] = &v87;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v64);
LABEL_112:
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v81);
          return 0;
        }
      }

      else
      {
        if (!v61)
        {
          ++*a4;
          goto LABEL_110;
        }

        if (v61 == 1)
        {
LABEL_110:
          *a6 = 1;
          goto LABEL_111;
        }
      }

      ++*(a4 + 12);
      goto LABEL_110;
    }

    if (quasar::gLogLevel >= 5)
    {
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
      v65 = 0u;
      v66 = 0u;
      *v64 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v64);
      v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Skipping invalid token=", 23);
      v57 = *(a2 + 23);
      if (v57 >= 0)
      {
        v58 = a2;
      }

      else
      {
        v58 = *a2;
      }

      if (v57 >= 0)
      {
        v59 = *(a2 + 23);
      }

      else
      {
        v59 = *(a2 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, v58, v59);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v64);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v81);
    return 0xFFFFFFFFLL;
  }

  return 0;
}

void sub_1B534B5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  a13 = v57 - 208;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a47);
  _Unwind_Resume(a1);
}

uint64_t quasar::join<std::unordered_set<std::string>>(uint64_t a1, uint64_t *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  quasar::joinToStream<std::unordered_set<std::string>>(&v7, a1, a2);
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

void sub_1B534B8C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B8C85200](v2 + 128);
  _Unwind_Resume(a1);
}

void quasar::G2P::getFromCache(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  quasar::G2P::generateCacheKey(a1, a2, &__p);
  (*(*v4 + 32))(v4, &__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B534B96C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::toPronChoices(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      quasar::PronChoice::fromString((v3 + v5), &v11);
      v7 = a2[1];
      if (v7 >= a2[2])
      {
        v10 = std::vector<quasar::PronChoice>::__emplace_back_slow_path<quasar::PronChoice>(a2, &v11);
      }

      else
      {
        *v7 = v11;
        v8 = (v7 + 8);
        if (SHIBYTE(v13) < 0)
        {
          std::string::__init_copy_ctor_external(v8, __p, *(&__p + 1));
        }

        else
        {
          v9 = __p;
          *(v7 + 24) = v13;
          *&v8->__r_.__value_.__l.__data_ = v9;
        }

        *(v7 + 32) = v14;
        v10 = v7 + 40;
      }

      a2[1] = v10;
      if (SHIBYTE(v13) < 0)
      {
        operator delete(__p);
      }

      ++v6;
      v3 = *a1;
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v6);
  }
}

void sub_1B534BA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  *(v16 + 8) = v17;
  if (a16 < 0)
  {
    operator delete(__p);
  }

  a10 = v16;
  std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t quasar::G2P::updateCache(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  quasar::G2P::generateCacheKey(a1, a2, &__p);
  v5 = (*(*v4 + 16))(v4, &__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_1B534BB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::fromPronChoices(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      quasar::PronChoice::toString(__p, (v3 + v5));
      v8 = *(a2 + 8);
      v7 = *(a2 + 16);
      if (v8 >= v7)
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 3);
        v11 = v10 + 1;
        if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 3);
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

        v24.__end_cap_.__value_ = a2;
        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a2, v13);
        }

        v14 = 24 * v10;
        v15 = *__p;
        *(v14 + 16) = v23;
        *v14 = v15;
        __p[1] = 0;
        v23 = 0;
        __p[0] = 0;
        v16 = 24 * v10 + 24;
        v17 = *(a2 + 8) - *a2;
        v18 = 24 * v10 - v17;
        memcpy((v14 - v17), *a2, v17);
        v19 = *a2;
        *a2 = v18;
        *(a2 + 8) = v16;
        v20 = *(a2 + 16);
        *(a2 + 16) = 0;
        v24.__end_ = v19;
        v24.__end_cap_.__value_ = v20;
        v24.__first_ = v19;
        v24.__begin_ = v19;
        std::__split_buffer<std::string>::~__split_buffer(&v24);
        v21 = SHIBYTE(v23);
        *(a2 + 8) = v16;
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
        *(a2 + 8) = v8 + 24;
      }

      ++v6;
      v3 = *a1;
      v5 += 40;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) > v6);
  }
}

void sub_1B534BD10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

int32x2_t quasar::G2P::updateCacheSetStats(uint64_t a1, uint64_t a2, __int32 a3, int a4, int a5, int32x2_t *a6)
{
  if (a4 == 2)
  {
    ++a6[1].i32[0];
  }

  else if (a4 == 1)
  {
    if (quasar::gLogLevel >= 5)
    {
      memset(v13, 0, sizeof(v13));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "in backoff window, skip updating pron cache for token ", 54);
      v8 = *(a2 + 23);
      if (v8 >= 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      if (v8 >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v10 = *(a2 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v13);
    }
  }

  else if (a4)
  {
    ++a6[2].i32[0];
  }

  else if (a5)
  {
    ++a6[4].i32[0];
  }

  else
  {
    v12.i32[0] = 1;
    v12.i32[1] = a3;
    result = vadd_s32(a6[3], v12);
    a6[3] = result;
  }

  return result;
}

void quasar::G2P::generateCacheKey(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v6 = *(a1 + 100);
  if (v6)
  {
    std::to_string(&v43, v6);
    v7 = *(a1 + 71);
    if (v7 >= 0)
    {
      v8 = (a1 + 48);
    }

    else
    {
      v8 = *(a1 + 48);
    }

    if (v7 >= 0)
    {
      v9 = *(a1 + 71);
    }

    else
    {
      v9 = *(a1 + 56);
    }

    v10 = std::string::insert(&v43, 0, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v44, "|");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v42, *(a1 + 96));
    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v42;
    }

    else
    {
      v14 = v42.__r_.__value_.__r.__words[0];
    }

    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v42.__r_.__value_.__l.__size_;
    }

    v16 = std::string::append(&v45, v14, size);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = (*(*a1 + 48))(a1);
    std::to_string(&v41, v18);
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v41;
    }

    else
    {
      v19 = v41.__r_.__value_.__r.__words[0];
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = v41.__r_.__value_.__l.__size_;
    }

    v21 = std::string::append(&v46, v19, v20);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = *(a2 + 23);
    if (v23 >= 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = *a2;
    }

    if (v23 >= 0)
    {
      v25 = *(a2 + 23);
    }

    else
    {
      v25 = *(a2 + 8);
    }

    v26 = std::string::append(&v47, v24, v25);
    *a3 = *v26;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      v27 = v43.__r_.__value_.__r.__words[0];
LABEL_68:
      operator delete(v27);
    }
  }

  else
  {
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 48), (a1 + 72), &v45);
    std::to_string(&v44, *(a1 + 96));
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v44;
    }

    else
    {
      v28 = v44.__r_.__value_.__r.__words[0];
    }

    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v29 = v44.__r_.__value_.__l.__size_;
    }

    v30 = std::string::append(&v45, v28, v29);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    v32 = (*(*a1 + 48))(a1);
    std::to_string(&v43, v32);
    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &v43;
    }

    else
    {
      v33 = v43.__r_.__value_.__r.__words[0];
    }

    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v34 = v43.__r_.__value_.__l.__size_;
    }

    v35 = std::string::append(&v46, v33, v34);
    v36 = *&v35->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    v37 = *(a2 + 23);
    if (v37 >= 0)
    {
      v38 = a2;
    }

    else
    {
      v38 = *a2;
    }

    if (v37 >= 0)
    {
      v39 = *(a2 + 23);
    }

    else
    {
      v39 = *(a2 + 8);
    }

    v40 = std::string::append(&v47, v38, v39);
    *a3 = *v40;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      v27 = v45.__r_.__value_.__r.__words[0];
      goto LABEL_68;
    }
  }
}