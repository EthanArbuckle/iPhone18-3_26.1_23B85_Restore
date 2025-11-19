void MIL::UnexpectedTokenValueError::~UnexpectedTokenValueError(std::runtime_error *this)
{
  this->__vftable = &unk_2829E8C90;
  UnknownLocationImpl::~UnknownLocationImpl(&this[6]);
  if (SHIBYTE(this[5].__imp_.__imp_) < 0)
  {
    operator delete(this[4].__imp_.__imp_);
  }

  this->__vftable = &unk_2829E6258;
  MIL::ParseResult::~ParseResult(&this[1]);

  std::runtime_error::~runtime_error(this);
}

{
  MIL::UnexpectedTokenValueError::~UnexpectedTokenValueError(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::UnexpectedTokenValueError::UnexpectedTokenValueError(uint64_t a1, uint64_t *a2, uint64_t a3, MIL::ParserContext *a4, uint64_t a5)
{
  v9 = a2[1];
  v26 = *a2;
  v27 = v9;
  *a2 = 0;
  a2[1] = 0;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v28);
  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = *(a5 + 8);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ": got '", 7);
  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(a4);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, *ProgramFirstSet, ProgramFirstSet[1]);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "' when expecting '", 18);
  v18 = *(a3 + 23);
  if (v18 >= 0)
  {
    v19 = a3;
  }

  else
  {
    v19 = *a3;
  }

  if (v18 >= 0)
  {
    v20 = *(a3 + 23);
  }

  else
  {
    v20 = *(a3 + 8);
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "'.", 2);
  std::stringbuf::str();
  v28 = *MEMORY[0x277D82828];
  *(&v28 + *(v28 - 24)) = *(MEMORY[0x277D82828] + 24);
  v29 = MEMORY[0x277D82878] + 16;
  if (v31 < 0)
  {
    operator delete(v30[7].__locale_);
  }

  v29 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v30);
  std::ostream::~ostream();
  MEMORY[0x21CEAFDA0](&v32);
  MIL::ScanError::ScanError(a1, &v26, &v24, 202);
  if (v25 < 0)
  {
    operator delete(v24);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  *a1 = &unk_2829E8C90;
  v22 = *a3;
  *(a1 + 88) = *(a3 + 16);
  *(a1 + 72) = v22;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  MIL::Scanner::Token::Token((a1 + 96), a4);
  return a1;
}

void sub_2180A5504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, char a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void MIL::UnexpectedEOFError::~UnexpectedEOFError(std::runtime_error *this)
{
  this->__vftable = &unk_2829E6258;
  MIL::ParseResult::~ParseResult(&this[1]);

  std::runtime_error::~runtime_error(this);
}

{
  this->__vftable = &unk_2829E6258;
  MIL::ParseResult::~ParseResult(&this[1]);
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x21CEAFEA0);
}

void *MIL::UnexpectedEOFError::UnexpectedEOFError(void *a1, __int128 *a2, uint64_t a3)
{
  v7 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *__p = *a3;
  v6 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  MIL::ScanError::ScanError(a1, &v7, __p, 1);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(&v7 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
  }

  *a1 = &unk_2829E8CE0;
  return a1;
}

void sub_2180A56B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

__n128 MIL::Scanner::Token::Token(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 MIL::Scanner::Token::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = *(a2 + 24);
  return result;
}

uint64_t MIL::Scanner::Token::Token(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = a5;
  return result;
}

uint64_t MIL::Scanner::Token::Token(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = 0;
  return result;
}

BOOL MIL::Scanner::Token::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  return v4 == *(a2 + 16) && !memcmp(*(a1 + 8), *(a2 + 8), v4) && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28);
}

uint64_t MIL::Scanner::Expect(uint64_t a1, int a2, uint64_t a3)
{
  if (*(*(*a1 + 24))(a1) != a2)
  {
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, *a3, *(a3 + 8));
    }

    else
    {
      v8 = *a3;
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
    }

    else
    {
      v7 = v8;
    }

    MIL::TextFileLocation::Make();
  }

  v5 = *(*a1 + 16);

  return v5(a1);
}

void sub_2180A59F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  v29 = *(v27 - 88);
  *(v27 - 88) = 0;
  if (v29)
  {
    MIL::Builder::BlockBuilder::BlockBuilderImpl::BlockBuilderImpl(v29);
  }

  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (*(v27 - 57) < 0)
  {
    operator delete(*(v27 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Scanner::Expect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 24))(a1);
  if (*a2 != *v6)
  {
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v12, *a3, *(a3 + 8));
    }

    else
    {
      v12 = *a3;
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
    }

    else
    {
      v11 = v12;
    }

    MIL::TextFileLocation::Make();
  }

  v7 = *(a2 + 16);
  if (v7 != *(v6 + 16) || memcmp(*(a2 + 8), *(v6 + 8), v7))
  {
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v12, *a3, *(a3 + 8));
    }

    else
    {
      v12 = *a3;
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v10, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
    }

    else
    {
      v10 = v12;
    }

    MIL::TextFileLocation::Make();
  }

  v8 = *(*a1 + 16);

  return v8(a1);
}

void sub_2180A5E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::__shared_weak_count *a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  __cxa_free_exception(v45);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (*(v47 - 73) < 0)
  {
    operator delete(*(v47 - 96));
  }

  _Unwind_Resume(exception_object);
}

void MIL::Scanner::Make()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_2180A61D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x21CEAFEA0](v15, v16);
  _Unwind_Resume(a1);
}

_BYTE *MIL::GetTokenName@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 >= 0x39)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Internal error");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = off_278236198[a1];

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

uint64_t anonymous namespace::ScannerImpl<std::string>::ScannerImpl(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *a1 = &unk_2829E8DD0;
  v5 = (a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *v5 = v6;
  }

  v7 = v5;
  if (*(a1 + 31) < 0)
  {
    v7 = *v5;
  }

  *(a1 + 32) = v7;
  *(a1 + 40) = v7;
  *(a1 + 48) = v7;
  *(a1 + 56) = v7;
  *(a1 + 64) = 1;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 88) = *(a3 + 2);
    *(a1 + 72) = v8;
  }

  *(a1 + 96) = 55;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = "";
  return a1;
}

void sub_2180A63F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::ScannerImpl<std::string>::~ScannerImpl(uint64_t a1)
{
  *a1 = &unk_2829E8DD0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void anonymous namespace::ScannerImpl<std::string>::~ScannerImpl(uint64_t a1)
{
  *a1 = &unk_2829E8DD0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x21CEAFEA0);
}

__n128 anonymous namespace::ScannerImpl<std::string>::Next@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = (*(*a1 + 24))(a1);
  result = *v4;
  v6 = *(v4 + 16);
  *a2 = *v4;
  a2[1] = v6;
  a1[4] = a1[5];
  return result;
}

uint64_t anonymous namespace::ScannerImpl<std::string>::Peek(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v2 = a1 + 32;
  if (v4 != v3)
  {
    return a1 + 96;
  }

  v6 = *(a1 + 31);
  if (v6 < 0)
  {
    v7 = *(a1 + 8);
    v6 = *(a1 + 16);
  }

  else
  {
    v7 = a1 + 8;
  }

  MIL::NextToken(v2, v7 + v6, &v9);
  *(a1 + 96) = v9;
  v5 = a1 + 96;
  *(v5 + 8) = v10;
  *(v5 + 24) = v11;
  return v5;
}

uint64_t anonymous namespace::ScannerImpl<std::string_view>::ScannerImpl(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  *a1 = &unk_2829E8E18;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a2;
  *(a1 + 32) = a2;
  *(a1 + 40) = a2;
  *(a1 + 48) = a2;
  *(a1 + 56) = 1;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *a4, *(a4 + 1));
  }

  else
  {
    v5 = *a4;
    *(a1 + 80) = *(a4 + 2);
    *(a1 + 64) = v5;
  }

  *(a1 + 88) = 55;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = "";
  return a1;
}

uint64_t anonymous namespace::ScannerImpl<std::string_view>::~ScannerImpl(uint64_t a1)
{
  *a1 = &unk_2829E8E18;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  return a1;
}

void anonymous namespace::ScannerImpl<std::string_view>::~ScannerImpl(uint64_t a1)
{
  *a1 = &unk_2829E8E18;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  JUMPOUT(0x21CEAFEA0);
}

__n128 anonymous namespace::ScannerImpl<std::string_view>::Next@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = (*(*a1 + 24))(a1);
  result = *v4;
  v6 = *(v4 + 16);
  *a2 = *v4;
  a2[1] = v6;
  a1[3] = a1[4];
  return result;
}

uint64_t anonymous namespace::ScannerImpl<std::string_view>::Peek(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v2 = a1 + 24;
  if (v4 != v3)
  {
    return a1 + 88;
  }

  MIL::NextToken(v2, *(a1 + 8) + *(a1 + 16), &v7);
  *(a1 + 88) = v7;
  v5 = a1 + 88;
  *(v5 + 8) = v8;
  *(v5 + 24) = v9;
  return v5;
}

void sub_2180A6844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRProgram::ToString(a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Serialize(MIL::Text *this, const MIL::IRProgram *a2, const MIL::Text::SerializerOptions *a3)
{
  MIL::Text::BasicSerializer::BasicSerializer(v5, a2);
  v4 = MIL::Text::BasicSerializer::Program(v5, this);
  MIL::Text::BasicSerializer::GetOutput(v4);
  MIL::Text::BasicSerializer::~BasicSerializer(v5);
}

void sub_2180A68B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MIL::Text::BasicSerializer::~BasicSerializer(va);
  _Unwind_Resume(a1);
}

void MIL::Text::SerializeToStream(const MIL::IRProgram *a1, uint64_t a2, uint64_t a3)
{
  MIL::Text::BasicSerializer::BasicSerializer(v4, a3, a2);
  MIL::Text::BasicSerializer::Program(v4, a1);
  MIL::Text::BasicSerializer::~BasicSerializer(v4);
}

void sub_2180A691C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MIL::Text::BasicSerializer::~BasicSerializer(va);
  _Unwind_Resume(a1);
}

uint64_t MIL::Text::SerializeToFile(MIL::Text *this, const MIL::IRProgram *a2, const MIL::Text::SerializerOptions *a3)
{
  v12[19] = *MEMORY[0x277D85DE8];
  v5 = (*(*a2 + 16))(a2);
  v6 = *(v5 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(v5 + 8);
  }

  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "A file path must be provided to serialize to file. The file path is set by SerializerOptions.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  (*(*a2 + 16))(a2);
  std::ofstream::basic_ofstream(&v10);
  MIL::Text::BasicSerializer::BasicSerializer(v9, &v10, a2);
  MIL::Text::BasicSerializer::Program(v9, this);
  MIL::Text::BasicSerializer::~BasicSerializer(v9);
  v10 = *MEMORY[0x277D82810];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x21CEAFA60](&v11);
  std::ostream::~ostream();
  return MEMORY[0x21CEAFDA0](v12);
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x21CEAFA60](a1 + 1);

  return std::ostream::~ostream();
}

BOOL MIL::Text::ModelPathLengthComparator::operator()(int a1, void *a2, void *__s1)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(__s1 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = __s1[1];
    if (v3 != v5)
    {
      return v3 > v5;
    }

    __s1 = *__s1;
  }

  else if (v3 != v5)
  {
    return v3 > v5;
  }

  if (v4 < 0)
  {
    a2 = *a2;
  }

  return memcmp(__s1, a2, v3) != 0;
}

void anonymous namespace::SerializerOptionsImpl::~SerializerOptionsImpl(_anonymous_namespace_::SerializerOptionsImpl *this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 176);
  if (*(this + 175) < 0)
  {
    operator delete(*(this + 19));
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(this + 80, *(this + 11));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 40);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{

  JUMPOUT(0x21CEAFEA0);
}

__n128 anonymous namespace::SerializerOptionsImpl::SetModelFilePath(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  result = *a2;
  *(a1 + 24) = a2[1].n128_u64[0];
  *(a1 + 8) = result;
  a2[1].n128_u8[7] = 0;
  a2->n128_u8[0] = 0;
  return result;
}

void anonymous namespace::SerializerOptionsImpl::SetModelPaths(uint64_t a1, void *a2)
{
  v14 = 0;
  v15 = 0;
  v13 = &v14;
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      if (*(v4 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v4[4], v4[5]);
      }

      else
      {
        __p = *(v4 + 4);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v3);
  }

  v9 = *(a1 + 88);
  v8 = (a1 + 88);
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy((v8 - 1), v9);
  v10 = v14;
  *(v8 - 1) = v13;
  *v8 = v10;
  v11 = v15;
  v8[1] = v15;
  if (v11)
  {
    *(v10 + 16) = v8;
    v13 = &v14;
    v14 = 0;
    v15 = 0;
    v10 = 0;
  }

  else
  {
    *(v8 - 1) = v8;
  }

  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&v13, v10);
}

void anonymous namespace::SerializerOptionsImpl::SetModelPathsFromVector(uint64_t a1, __int128 **a2)
{
  v13 = 0;
  v14 = 0;
  v12 = &v13;
  v3 = *a2;
  v4 = a2[1];
  while (v3 != v4)
  {
    if (*(v3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, *v3, *(v3 + 1));
    }

    else
    {
      v5 = *v3;
      v11.__r_.__value_.__r.__words[2] = *(v3 + 2);
      *&v11.__r_.__value_.__l.__data_ = v5;
    }

    __p = v11;
    memset(&v11, 0, sizeof(v11));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    v3 = (v3 + 24);
  }

  v7 = *(a1 + 88);
  v6 = (a1 + 88);
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy((v6 - 1), v7);
  v8 = v13;
  *(v6 - 1) = v12;
  *v6 = v8;
  v9 = v14;
  v6[1] = v14;
  if (v9)
  {
    *(v8 + 16) = v6;
    v12 = &v13;
    v13 = 0;
    v14 = 0;
    v8 = 0;
  }

  else
  {
    *(v6 - 1) = v6;
  }

  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&v12, v8);
}

uint64_t anonymous namespace::SerializerOptionsImpl::AddModelPath(uint64_t a1, std::string *a2)
{
  __p = *a2;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_2180A7188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL anonymous namespace::SerializerOptionsImpl::RemoveModelPath(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 23);
  if (v3 < 0)
  {
    v4 = a2[1];
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!*(a2 + 23))
    {
      goto LABEL_10;
    }

    v4 = *(a2 + 23);
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (*(v5 + v4 - 1) == 47)
  {
    v6 = std::__tree<std::string,MIL::Text::ModelPathLengthComparator,std::allocator<std::string>>::__erase_unique<std::string>((a1 + 80), a2);
    return v6 != 0;
  }

LABEL_10:
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, 47, __p);
  v6 = std::__tree<std::string,MIL::Text::ModelPathLengthComparator,std::allocator<std::string>>::__erase_unique<std::string>((a1 + 80), __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v6 != 0;
}

void sub_2180A724C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::SerializerOptionsImpl::GetFloatSerializeMode(uint64_t a1, int a2)
{
  v6 = a2;
  v3 = std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>>>::find<int>((a1 + 40), &v6);
  v4 = (a1 + 32);
  if (v3)
  {
    v4 = v3 + 5;
  }

  return *v4;
}

uint64_t *anonymous namespace::SerializerOptionsImpl::SetFloatSerializeMode(uint64_t a1, int a2, int a3)
{
  v5 = a3;
  v6 = &v5;
  result = std::__hash_table<std::__hash_value_type<MIL::IRDataType,MIL::Text::SerializerOptions::FloatSerializeMode>,std::__unordered_map_hasher<MIL::IRDataType,std::__hash_value_type<MIL::IRDataType,MIL::Text::SerializerOptions::FloatSerializeMode>,std::hash<MIL::IRDataType>,std::equal_to<MIL::IRDataType>,true>,std::__unordered_map_equal<MIL::IRDataType,std::__hash_value_type<MIL::IRDataType,MIL::Text::SerializerOptions::FloatSerializeMode>,std::equal_to<MIL::IRDataType>,std::hash<MIL::IRDataType>,true>,std::allocator<std::__hash_value_type<MIL::IRDataType,MIL::Text::SerializerOptions::FloatSerializeMode>>>::__emplace_unique_key_args<MIL::IRDataType,std::piecewise_construct_t const&,std::tuple<MIL::IRDataType const&>,std::tuple<>>((a1 + 40), &v5);
  *(result + 5) = a2;
  return result;
}

__n128 anonymous namespace::SerializerOptionsImpl::SetWeightsFilePath(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  result = *a2;
  *(a1 + 136) = a2[1].n128_u64[0];
  *(a1 + 120) = result;
  a2[1].n128_u8[7] = 0;
  a2->n128_u8[0] = 0;
  return result;
}

uint64_t anonymous namespace::SerializerOptionsImpl::AddModelPath(std::string *a1, uint64_t a2)
{
  v4 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    size = a1->__r_.__value_.__l.__size_;
    if (!size)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!*(&a1->__r_.__value_.__s + 23))
    {
      goto LABEL_9;
    }

    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  v6 = size - 1;
  v7 = a1;
  if ((v4 & 0x80000000) != 0)
  {
    v7 = a1->__r_.__value_.__r.__words[0];
  }

  if (v7->__r_.__value_.__s.__data_[v6] == 47)
  {
    std::__tree<std::string,MIL::Text::ModelPathLengthComparator,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a2, a1);
    v9 = v8;
    return v9 & 1;
  }

LABEL_9:
  std::string::push_back(a1, 47);
  *__p = *&a1->__r_.__value_.__l.__data_;
  v13 = a1->__r_.__value_.__r.__words[2];
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  std::__tree<std::string,MIL::Text::ModelPathLengthComparator,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a2, __p);
  v9 = v10;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  return v9 & 1;
}

void sub_2180A7474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::string,MIL::Text::ModelPathLengthComparator,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::string,MIL::Text::ModelPathLengthComparator,std::allocator<std::string>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::string,MIL::Text::ModelPathLengthComparator,std::allocator<std::string>>::__find_equal<std::string>(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        LODWORD(a1) = MIL::Text::ModelPathLengthComparator::operator()(a1, a3, v4 + 4);
        if (!a1)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      LODWORD(a1) = MIL::Text::ModelPathLengthComparator::operator()(0, v7 + 4, a3);
      if (!a1)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::__tree<std::string,MIL::Text::ModelPathLengthComparator,std::allocator<std::string>>::__erase_unique<std::string>(uint64_t **a1, void *a2)
{
  v3 = std::__tree<std::string,MIL::Text::ModelPathLengthComparator,std::allocator<std::string>>::find<std::string>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::erase(a1, v3);
  return 1;
}

uint64_t std::__tree<std::string,MIL::Text::ModelPathLengthComparator,std::allocator<std::string>>::find<std::string>(uint64_t a1, void *__s1)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    LODWORD(a1) = MIL::Text::ModelPathLengthComparator::operator()(a1, (v3 + 32), __s1);
    if (a1)
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    if (!a1)
    {
      v5 = v3;
    }

    v3 = *(v3 + v6);
  }

  while (v3);
  if (v5 == v2 || MIL::Text::ModelPathLengthComparator::operator()(a1, __s1, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

uint64_t *std::__hash_table<std::__hash_value_type<MIL::IRDataType,MIL::Text::SerializerOptions::FloatSerializeMode>,std::__unordered_map_hasher<MIL::IRDataType,std::__hash_value_type<MIL::IRDataType,MIL::Text::SerializerOptions::FloatSerializeMode>,std::hash<MIL::IRDataType>,std::equal_to<MIL::IRDataType>,true>,std::__unordered_map_equal<MIL::IRDataType,std::__hash_value_type<MIL::IRDataType,MIL::Text::SerializerOptions::FloatSerializeMode>,std::equal_to<MIL::IRDataType>,std::hash<MIL::IRDataType>,true>,std::allocator<std::__hash_value_type<MIL::IRDataType,MIL::Text::SerializerOptions::FloatSerializeMode>>>::__emplace_unique_key_args<MIL::IRDataType,std::piecewise_construct_t const&,std::tuple<MIL::IRDataType const&>,std::tuple<>>(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

uint64_t MIL::Text::Parser::TensorVal::ParseToken<MIL::Fp8E4M3FN>(uint64_t a1, MIL::Scanner::Token *a2)
{
  Options = MIL::ParserContext::GetOptions(*(a1 + 24));
  v4 = (*(*Options + 24))(Options);
  v5 = *MIL::Scanner::Token::GetLocation(a2);
  if (MIL::Scanner::Token::GetType(a2) != 19 && MIL::Scanner::Token::GetType(a2) != 18)
  {
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(v5, v4);
  }

  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(a2);
  v7 = *(ProgramFirstSet + 8);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = *ProgramFirstSet;
  if (v7 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = *(ProgramFirstSet + 8);
  if (v7)
  {
    memmove(&__dst, v8, v7);
  }

  __dst.__r_.__value_.__s.__data_[v7] = 0;
  v9 = MIL::Util::stof(&__dst, v5, v4);
  v11 = MIL::Fp8E4M3FN::FromFloat(v10, v9);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_2180A7A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
    if ((v24 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v24)
  {
LABEL_10:
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v23);
  goto LABEL_10;
}

uint64_t MIL::Text::Parser::TensorVal::ParseToken<MIL::Fp8E5M2>(uint64_t a1, MIL::Scanner::Token *a2)
{
  Options = MIL::ParserContext::GetOptions(*(a1 + 24));
  v4 = (*(*Options + 24))(Options);
  v5 = *MIL::Scanner::Token::GetLocation(a2);
  if (MIL::Scanner::Token::GetType(a2) != 19 && MIL::Scanner::Token::GetType(a2) != 18)
  {
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(v5, v4);
  }

  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(a2);
  v7 = *(ProgramFirstSet + 8);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = *ProgramFirstSet;
  if (v7 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = *(ProgramFirstSet + 8);
  if (v7)
  {
    memmove(&__dst, v8, v7);
  }

  __dst.__r_.__value_.__s.__data_[v7] = 0;
  v9 = MIL::Util::stof(&__dst, v5, v4);
  v11 = MIL::Fp8E5M2::FromFloat(v10, v9);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_2180A7CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
    if ((v24 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v24)
  {
LABEL_10:
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v23);
  goto LABEL_10;
}

uint64_t MIL::Text::Parser::TensorVal::ParseToken<MIL::Bf16>(uint64_t a1, MIL::Scanner::Token *a2)
{
  Options = MIL::ParserContext::GetOptions(*(a1 + 24));
  v4 = (*(*Options + 24))(Options);
  v5 = *MIL::Scanner::Token::GetLocation(a2);
  if (MIL::Scanner::Token::GetType(a2) != 19 && MIL::Scanner::Token::GetType(a2) != 18)
  {
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(v5, v4);
  }

  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(a2);
  v7 = *(ProgramFirstSet + 8);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = *ProgramFirstSet;
  if (v7 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = *(ProgramFirstSet + 8);
  if (v7)
  {
    memmove(&__dst, v8, v7);
  }

  __dst.__r_.__value_.__s.__data_[v7] = 0;
  v10 = MIL::Util::stof(&__dst, v5, v4);
  v11 = LODWORD(v10) & 0x7FFFFFFF;
  if ((LODWORD(v10) & 0x7FFFFFFFu) <= 0x7F800000 && v11 != 2139095040 && v11 != 0)
  {
    v14 = fabsf(v10);
    if (v14 > 3.3895e38 || v14 < COERCE_FLOAT(0x10000))
    {
      __cxa_allocate_exception(0x48uLL);
      MIL::TextLocationFromScannerLocation(v5, v4);
    }
  }

  v16 = MIL::Bf16::FromFloat(v9, v10);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v16;
}

void sub_2180A7F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
    if ((v28 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v28)
  {
LABEL_10:
    if (*(v30 - 57) < 0)
    {
      operator delete(*(v30 - 80));
    }

    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v29);
  goto LABEL_10;
}

uint64_t MIL::Text::Parser::TensorVal::ParseToken<MIL::Fp16>(uint64_t a1, MIL::Scanner::Token *a2)
{
  Options = MIL::ParserContext::GetOptions(*(a1 + 24));
  v4 = (*(*Options + 24))(Options);
  v5 = *MIL::Scanner::Token::GetLocation(a2);
  if (MIL::Scanner::Token::GetType(a2) != 19 && MIL::Scanner::Token::GetType(a2) != 18)
  {
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(v5, v4);
  }

  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(a2);
  v7 = *(ProgramFirstSet + 8);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = *ProgramFirstSet;
  if (v7 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = *(ProgramFirstSet + 8);
  if (v7)
  {
    memmove(&__dst, v8, v7);
  }

  __dst.__r_.__value_.__s.__data_[v7] = 0;
  v10 = MIL::Util::stof(&__dst, v5, v4);
  v11 = LODWORD(v10) & 0x7FFFFFFF;
  if ((LODWORD(v10) & 0x7FFFFFFFu) <= 0x7F800000 && v11 != 2139095040 && v11 != 0)
  {
    v14 = fabsf(v10);
    if (v14 > 65504.0 || v14 < 0.000000059605)
    {
      __cxa_allocate_exception(0x48uLL);
      MIL::TextLocationFromScannerLocation(v5, v4);
    }
  }

  v16 = MIL::Fp16::FromFloat(v9, v10);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v16;
}

void sub_2180A82CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
    if ((v28 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v28)
  {
LABEL_10:
    if (*(v30 - 57) < 0)
    {
      operator delete(*(v30 - 80));
    }

    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v29);
  goto LABEL_10;
}

float MIL::Text::Parser::TensorVal::ParseToken<float>(uint64_t a1, MIL::Scanner::Token *a2)
{
  Options = MIL::ParserContext::GetOptions(*(a1 + 24));
  v4 = (*(*Options + 24))(Options);
  v5 = *MIL::Scanner::Token::GetLocation(a2);
  if (MIL::Scanner::Token::GetType(a2) != 19 && MIL::Scanner::Token::GetType(a2) != 18)
  {
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(v5, v4);
  }

  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(a2);
  v7 = *(ProgramFirstSet + 8);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = *ProgramFirstSet;
  if (v7 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = *(ProgramFirstSet + 8);
  if (v7)
  {
    memmove(&__dst, v8, v7);
  }

  __dst.__r_.__value_.__s.__data_[v7] = 0;
  v9 = MIL::Util::stof(&__dst, v5, v4);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_2180A8558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
    if ((v24 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v24)
  {
LABEL_10:
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v23);
  goto LABEL_10;
}

double MIL::Text::Parser::TensorVal::ParseToken<double>(uint64_t a1, MIL::Scanner::Token *a2)
{
  Options = MIL::ParserContext::GetOptions(*(a1 + 24));
  v4 = (*(*Options + 24))(Options);
  v5 = *MIL::Scanner::Token::GetLocation(a2);
  if (MIL::Scanner::Token::GetType(a2) != 19 && MIL::Scanner::Token::GetType(a2) != 18)
  {
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(v5, v4);
  }

  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(a2);
  v7 = *(ProgramFirstSet + 8);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = *ProgramFirstSet;
  if (v7 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = *(ProgramFirstSet + 8);
  if (v7)
  {
    memmove(&__dst, v8, v7);
  }

  __dst.__r_.__value_.__s.__data_[v7] = 0;
  v9 = MIL::Util::stod(&__dst, v5, v4);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_2180A878C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
    if ((v24 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v24)
  {
LABEL_10:
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v23);
  goto LABEL_10;
}

BOOL MIL::Text::Parser::TensorVal::ParseToken<BOOL>(uint64_t a1, MIL::Scanner::Token *this)
{
  v4 = *MIL::Scanner::Token::GetLocation(this);
  Options = MIL::ParserContext::GetOptions(*(a1 + 24));
  v6 = (*(*Options + 24))(Options);
  if (MIL::Scanner::Token::GetType(this) == 18)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "BOOLean");
    if (MIL::Scanner::Token::GetType(this) != 18)
    {
      __cxa_allocate_exception(0x48uLL);
      MIL::TextLocationFromScannerLocation(v4, v6);
    }

    ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(this);
    v8 = *(ProgramFirstSet + 8);
    if (v8 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = *ProgramFirstSet;
    if (v8 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = *(ProgramFirstSet + 8);
    if (v8)
    {
      memmove(&__dst, v9, v8);
    }

    __dst.__r_.__value_.__s.__data_[v8] = 0;
    BaseAndPrepIntStringForParse = MIL::Util::GetBaseAndPrepIntStringForParse(&__dst);
    v15 = std::stoi(&__dst, 0, BaseAndPrepIntStringForParse);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (v20 < 0)
    {
      operator delete(__p);
    }

    v13 = v15 != 0;
    if (v15 > 1)
    {
      goto LABEL_33;
    }
  }

  else if (MIL::Scanner::Token::GetType(this) == 19)
  {
    v10 = MIL::ParserContext::GetProgramFirstSet(this);
    v11 = *(v10 + 8);
    if (v11 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = *v10;
    if (v11 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = *(v10 + 8);
    if (v11)
    {
      memmove(&__dst, v12, v11);
    }

    __dst.__r_.__value_.__s.__data_[v11] = 0;
    v16 = MIL::Util::stod(&__dst, v4, v6);
    v13 = v16 != 0.0;
    v17 = v16 != 0.0 && v16 != 1.0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (v17)
    {
LABEL_33:
      __cxa_allocate_exception(0x48uLL);
      MIL::TextLocationFromScannerLocation(v4, v6);
    }
  }

  else if (MIL::Scanner::Token::GetType(this) == 21)
  {
    return 1;
  }

  else
  {
    if (MIL::Scanner::Token::GetType(this) != 22)
    {
      goto LABEL_33;
    }

    return 0;
  }

  return v13;
}

void sub_2180A8C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  v46 = *(v44 - 120);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  v47 = *(v44 - 136);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    if ((v42 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (!v42)
  {
LABEL_14:
    if (*(v44 - 89) < 0)
    {
      operator delete(*(v44 - 112));
    }

    if (a23 < 0)
    {
      operator delete(a18);
    }

    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v43);
  goto LABEL_14;
}

uint64_t MIL::Text::Parser::TensorVal::ParseToken<unsigned char>(uint64_t a1, MIL::Scanner::Token *a2)
{
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "8 bit unsigned integer");
  Options = MIL::ParserContext::GetOptions(*(a1 + 24));
  v6 = (*(*Options + 24))(Options);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_2180A8EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::TokenToInt<unsigned char,unsigned short,unsigned long>(MIL::Scanner::Token *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MIL::Scanner::Token::GetType(a1) != 18)
  {
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(a2, a4);
  }

  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(a1);
  v8 = *(ProgramFirstSet + 8);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = *ProgramFirstSet;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = *(ProgramFirstSet + 8);
  if (v8)
  {
    memmove(&__dst, v9, v8);
  }

  __dst.__r_.__value_.__s.__data_[v8] = 0;
  BaseAndPrepIntStringForParse = MIL::Util::GetBaseAndPrepIntStringForParse(&__dst);
  v11 = std::stoul(&__dst, 0, BaseAndPrepIntStringForParse);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v11 > 0xFF)
  {
    v13 = MIL::ParserContext::GetProgramFirstSet(a1);
    std::string::basic_string<std::string_view,0>(&__dst, v13);
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(a2, a4);
  }

  return v11;
}

void sub_2180A91A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
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
  }

  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
    if ((v40 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (!v40)
  {
LABEL_14:
    if (*(v42 - 89) < 0)
    {
      operator delete(*(v42 - 112));
    }

    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v41);
  goto LABEL_14;
}

uint64_t MIL::Text::Parser::TensorVal::ParseToken<unsigned short>(uint64_t a1, MIL::Scanner::Token *a2)
{
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(&__p, "16 bit unsigned integer");
  Options = MIL::ParserContext::GetOptions(*(a1 + 24));
  v6 = (*(*Options + 24))(Options);
  if (MIL::Scanner::Token::GetType(a2) != 18)
  {
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(v4, v6);
  }

  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(a2);
  v8 = *(ProgramFirstSet + 8);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = *ProgramFirstSet;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = *(ProgramFirstSet + 8);
  if (v8)
  {
    memmove(&__dst, v9, v8);
  }

  __dst.__r_.__value_.__s.__data_[v8] = 0;
  BaseAndPrepIntStringForParse = MIL::Util::GetBaseAndPrepIntStringForParse(&__dst);
  v11 = std::stoul(&__dst, 0, BaseAndPrepIntStringForParse);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if ((v11 & 0xFFFF0000) != 0)
  {
    v13 = MIL::ParserContext::GetProgramFirstSet(a2);
    std::string::basic_string<std::string_view,0>(&__dst, v13);
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(v4, v6);
  }

  if (v15 < 0)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_2180A95D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  v40 = *(v38 - 104);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
    if ((v36 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (!v36)
  {
LABEL_14:
    if (*(v38 - 65) < 0)
    {
      operator delete(*(v38 - 88));
    }

    if (a14 < 0)
    {
      operator delete(a9);
    }

    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v37);
  goto LABEL_14;
}

unint64_t MIL::Text::Parser::TensorVal::ParseToken<unsigned int>(uint64_t a1, MIL::Scanner::Token *a2)
{
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(&__p, "32 bit unsigned integer");
  Options = MIL::ParserContext::GetOptions(*(a1 + 24));
  v6 = (*(*Options + 24))(Options);
  if (MIL::Scanner::Token::GetType(a2) != 18)
  {
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(v4, v6);
  }

  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(a2);
  v8 = *(ProgramFirstSet + 8);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = *ProgramFirstSet;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = *(ProgramFirstSet + 8);
  if (v8)
  {
    memmove(&__dst, v9, v8);
  }

  __dst.__r_.__value_.__s.__data_[v8] = 0;
  BaseAndPrepIntStringForParse = MIL::Util::GetBaseAndPrepIntStringForParse(&__dst);
  v11 = std::stoull(&__dst, 0, BaseAndPrepIntStringForParse);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (HIDWORD(v11))
  {
    v13 = MIL::ParserContext::GetProgramFirstSet(a2);
    std::string::basic_string<std::string_view,0>(&__dst, v13);
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(v4, v6);
  }

  if (v15 < 0)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_2180A9A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  v40 = *(v38 - 104);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
    if ((v36 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (!v36)
  {
LABEL_14:
    if (*(v38 - 65) < 0)
    {
      operator delete(*(v38 - 88));
    }

    if (a14 < 0)
    {
      operator delete(a9);
    }

    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v37);
  goto LABEL_14;
}

unint64_t MIL::Text::Parser::TensorVal::ParseToken<unsigned long long>(uint64_t a1, MIL::Scanner::Token *a2)
{
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(&__p, "64 bit unsigned integer");
  Options = MIL::ParserContext::GetOptions(*(a1 + 24));
  v6 = (*(*Options + 24))(Options);
  if (MIL::Scanner::Token::GetType(a2) != 18)
  {
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(v4, v6);
  }

  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(a2);
  v8 = *(ProgramFirstSet + 8);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = *ProgramFirstSet;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = *(ProgramFirstSet + 8);
  if (v8)
  {
    memmove(&__dst, v9, v8);
  }

  __dst.__r_.__value_.__s.__data_[v8] = 0;
  BaseAndPrepIntStringForParse = MIL::Util::GetBaseAndPrepIntStringForParse(&__dst);
  v11 = std::stoull(&__dst, 0, BaseAndPrepIntStringForParse);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_2180A9E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  v40 = *(v38 - 104);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
    if ((v36 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (!v36)
  {
LABEL_14:
    if (*(v38 - 65) < 0)
    {
      operator delete(*(v38 - 88));
    }

    if (a14 < 0)
    {
      operator delete(a9);
    }

    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v37);
  goto LABEL_14;
}

uint64_t MIL::Text::Parser::TensorVal::ParseToken<MIL::UInt1>(uint64_t a1, MIL::Scanner::Token *a2)
{
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "1 bit unsigned integer");
  Options = MIL::ParserContext::GetOptions(*(a1 + 24));
  v6 = (*(*Options + 24))(Options);
  MIL::UInt1::UInt1(&v11, v7);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v11;
}

void sub_2180AA064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::Parser::TensorVal::ParseToken<MIL::UInt2>(uint64_t a1, MIL::Scanner::Token *a2)
{
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "2 bit unsigned integer");
  Options = MIL::ParserContext::GetOptions(*(a1 + 24));
  v6 = (*(*Options + 24))(Options);
  MIL::UInt2::UInt2(&v11, v7);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v11;
}

void sub_2180AA128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::Parser::TensorVal::ParseToken<MIL::UInt3>(uint64_t a1, MIL::Scanner::Token *a2)
{
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "3 bit unsigned integer");
  Options = MIL::ParserContext::GetOptions(*(a1 + 24));
  v6 = (*(*Options + 24))(Options);
  MIL::UInt3::UInt3(&v11, v7);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v11;
}

void sub_2180AA1EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::Parser::TensorVal::ParseToken<MIL::UInt4>(uint64_t a1, MIL::Scanner::Token *a2)
{
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "4 bit unsigned integer");
  Options = MIL::ParserContext::GetOptions(*(a1 + 24));
  v6 = (*(*Options + 24))(Options);
  MIL::UInt4::UInt4(&v11, v7);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v11;
}

void sub_2180AA2B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::Parser::TensorVal::ParseToken<MIL::UInt6>(uint64_t a1, MIL::Scanner::Token *a2)
{
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "6 bit unsigned integer");
  Options = MIL::ParserContext::GetOptions(*(a1 + 24));
  v6 = (*(*Options + 24))(Options);
  MIL::UInt6::UInt6(&v11, v7);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v11;
}

void sub_2180AA374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::Parser::TensorVal::ParseToken<MIL::Int4>(uint64_t a1, MIL::Scanner::Token *a2)
{
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "4 bit integer");
  Options = MIL::ParserContext::GetOptions(*(a1 + 24));
  v6 = (*(*Options + 24))(Options);
  MIL::Int4::Int4(&v11, v7);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v11;
}

void sub_2180AA438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::TokenToInt<signed char,short,int>(MIL::Scanner::Token *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MIL::Scanner::Token::GetType(a1) != 18)
  {
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(a2, a4);
  }

  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(a1);
  v8 = *(ProgramFirstSet + 8);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = *ProgramFirstSet;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = *(ProgramFirstSet + 8);
  if (v8)
  {
    memmove(&__dst, v9, v8);
  }

  __dst.__r_.__value_.__s.__data_[v8] = 0;
  BaseAndPrepIntStringForParse = MIL::Util::GetBaseAndPrepIntStringForParse(&__dst);
  v11 = std::stoi(&__dst, 0, BaseAndPrepIntStringForParse);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if ((v11 - 128) >> 8 < 0xFF)
  {
    v13 = MIL::ParserContext::GetProgramFirstSet(a1);
    std::string::basic_string<std::string_view,0>(&__dst, v13);
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(a2, a4);
  }

  return v11;
}

void sub_2180AA6EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
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
  }

  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
    if ((v40 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (!v40)
  {
LABEL_14:
    if (*(v42 - 89) < 0)
    {
      operator delete(*(v42 - 112));
    }

    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v41);
  goto LABEL_14;
}

uint64_t MIL::Text::Parser::TensorVal::ParseToken<signed char>(uint64_t a1, MIL::Scanner::Token *a2)
{
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "8 bit integer");
  Options = MIL::ParserContext::GetOptions(*(a1 + 24));
  v6 = (*(*Options + 24))(Options);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_2180AA8DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::Parser::TensorVal::ParseToken<short>(uint64_t a1, MIL::Scanner::Token *a2)
{
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(&__p, "16 bit integer");
  Options = MIL::ParserContext::GetOptions(*(a1 + 24));
  v6 = (*(*Options + 24))(Options);
  if (MIL::Scanner::Token::GetType(a2) != 18)
  {
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(v4, v6);
  }

  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(a2);
  v8 = *(ProgramFirstSet + 8);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = *ProgramFirstSet;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = *(ProgramFirstSet + 8);
  if (v8)
  {
    memmove(&__dst, v9, v8);
  }

  __dst.__r_.__value_.__s.__data_[v8] = 0;
  BaseAndPrepIntStringForParse = MIL::Util::GetBaseAndPrepIntStringForParse(&__dst);
  v11 = std::stoi(&__dst, 0, BaseAndPrepIntStringForParse);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v11 != v11)
  {
    v13 = MIL::ParserContext::GetProgramFirstSet(a2);
    std::string::basic_string<std::string_view,0>(&__dst, v13);
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(v4, v6);
  }

  if (v15 < 0)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_2180AABD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  v40 = *(v38 - 104);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
    if ((v36 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (!v36)
  {
LABEL_14:
    if (*(v38 - 65) < 0)
    {
      operator delete(*(v38 - 88));
    }

    if (a14 < 0)
    {
      operator delete(a9);
    }

    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v37);
  goto LABEL_14;
}

uint64_t MIL::Text::Parser::TensorVal::ParseToken<int>(uint64_t a1, MIL::Scanner::Token *a2)
{
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(&__p, "32 bit integer");
  Options = MIL::ParserContext::GetOptions(*(a1 + 24));
  v6 = (*(*Options + 24))(Options);
  if (MIL::Scanner::Token::GetType(a2) != 18)
  {
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(v4, v6);
  }

  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(a2);
  v8 = *(ProgramFirstSet + 8);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = *ProgramFirstSet;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = *(ProgramFirstSet + 8);
  if (v8)
  {
    memmove(&__dst, v9, v8);
  }

  __dst.__r_.__value_.__s.__data_[v8] = 0;
  BaseAndPrepIntStringForParse = MIL::Util::GetBaseAndPrepIntStringForParse(&__dst);
  v11 = std::stoll(&__dst, 0, BaseAndPrepIntStringForParse);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v11 != v11)
  {
    v13 = MIL::ParserContext::GetProgramFirstSet(a2);
    std::string::basic_string<std::string_view,0>(&__dst, v13);
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(v4, v6);
  }

  if (v15 < 0)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_2180AB018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  v40 = *(v38 - 104);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
    if ((v36 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (!v36)
  {
LABEL_14:
    if (*(v38 - 65) < 0)
    {
      operator delete(*(v38 - 88));
    }

    if (a14 < 0)
    {
      operator delete(a9);
    }

    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v37);
  goto LABEL_14;
}

uint64_t MIL::Text::Parser::TensorVal::ParseToken<long long>(uint64_t a1, MIL::Scanner::Token *a2)
{
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(&__p, "64 bit integer");
  Options = MIL::ParserContext::GetOptions(*(a1 + 24));
  v6 = (*(*Options + 24))(Options);
  if (MIL::Scanner::Token::GetType(a2) != 18)
  {
    __cxa_allocate_exception(0x48uLL);
    MIL::TextLocationFromScannerLocation(v4, v6);
  }

  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(a2);
  v8 = *(ProgramFirstSet + 8);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = *ProgramFirstSet;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = *(ProgramFirstSet + 8);
  if (v8)
  {
    memmove(&__dst, v9, v8);
  }

  __dst.__r_.__value_.__s.__data_[v8] = 0;
  BaseAndPrepIntStringForParse = MIL::Util::GetBaseAndPrepIntStringForParse(&__dst);
  v11 = std::stoll(&__dst, 0, BaseAndPrepIntStringForParse);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_2180AB454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  v40 = *(v38 - 104);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
    if ((v36 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (!v36)
  {
LABEL_14:
    if (*(v38 - 65) < 0)
    {
      operator delete(*(v38 - 88));
    }

    if (a14 < 0)
    {
      operator delete(a9);
    }

    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v37);
  goto LABEL_14;
}

void MIL::Text::Parser::TensorVal::ParseToken<std::string>(MIL::Scanner::Token *this@<X1>, uint64_t a2@<X0>, std::string *a3@<X8>)
{
  if (MIL::Scanner::Token::GetType(this) != 20)
  {
    __cxa_allocate_exception(0x48uLL);
    v19 = *(a2 + 32);
    Options = MIL::ParserContext::GetOptions(*(a2 + 24));
    v21 = (*(*Options + 24))(Options);
    MIL::TextLocationFromScannerLocation(v19, v21);
  }

  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(this);
  v7 = *(ProgramFirstSet + 8);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = *ProgramFirstSet;
  if (v7 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = *(ProgramFirstSet + 8);
  if (v7)
  {
    memmove(&__dst, v8, v7);
  }

  __dst.__r_.__value_.__s.__data_[v7] = 0;
  v9 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = __dst;
  }

  size = SHIBYTE(v22.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) > 1)
    {
      v11 = &v22;
      goto LABEL_18;
    }

LABEL_15:
    *a3 = v22;
    memset(&v22, 0, sizeof(v22));
    if ((v9 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_28;
  }

  size = v22.__r_.__value_.__l.__size_;
  if (v22.__r_.__value_.__l.__size_ < 2)
  {
    goto LABEL_15;
  }

  v11 = v22.__r_.__value_.__r.__words[0];
LABEL_18:
  std::string::__init_with_size[abi:ne200100]<char *,char *>(a3, &v11->__r_.__value_.__s.__data_[1], v11 + size - 1, size - 2);
  v12 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  if ((v12 & 0x80u) == 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = a3->__r_.__value_.__r.__words[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v12 = a3->__r_.__value_.__l.__size_;
  }

  v24 = 92;
  v14 = std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(v13, v13 + v12, &v24);
  v15 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  v16 = v15;
  v17 = a3 + v15;
  if (v16 >= 0)
  {
    v18 = a3;
  }

  else
  {
    v17 = a3->__r_.__value_.__r.__words[0] + a3->__r_.__value_.__l.__size_;
    v18 = a3->__r_.__value_.__r.__words[0];
  }

  std::string::erase(a3, &v14[-v18], v17 - v14);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v9 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_28;
  }

  operator delete(v22.__r_.__value_.__l.__data_);
  if (v9 < 0)
  {
LABEL_28:
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_2180AB840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
    if ((v27 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v27)
  {
LABEL_10:
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v26);
  goto LABEL_10;
}

void MIL::Text::Parser::TensorVal::ParseTokens<BOOL,unsigned char>(uint64_t a1@<X0>, MIL::Scanner::Token **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<unsigned char>::reserve(a3, (a2[1] - *a2) >> 5);
  v6 = *a2;
  v7 = a2[1];
  while (v6 != v7)
  {
    v8 = MIL::Text::Parser::TensorVal::ParseToken<BOOL>(a1, v6);
    std::vector<char>::push_back[abi:ne200100](a3, &v8);
    v6 = (v6 + 32);
  }
}

void sub_2180AB96C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Parser::TensorVal::ParseScalar(MIL::Text::Parser::TensorVal *this, const MIL::IRTensorValueType *a2)
{
  v4 = *(this + 4);
  Options = MIL::ParserContext::GetOptions(*(this + 3));
  v6 = (*(*Options + 24))(Options);
  if (MIL::IRTensorValueType::IsScalar(a2))
  {
    switch((*(*a2 + 88))(a2))
    {
      case 2u:
        (*(**(this + 2) + 16))(&v29);
        v7 = MIL::Text::Parser::TensorVal::ParseToken<BOOL>(this, &v29);
        MIL::IRTensorValueType::MakeBoolValue(a2, v7);
      case 3u:
        (*(**(this + 2) + 16))(&v29);
        MIL::Text::Parser::TensorVal::ParseToken<std::string>(&v29, this, &v26);
        MIL::IRTensorValueType::MakeStringValue(a2, &v26);
      case 4u:
        (*(**(this + 2) + 16))(&v29);
        v21 = MIL::Text::Parser::TensorVal::ParseToken<MIL::Fp16>(this, &v29);
        MIL::IRTensorValueType::MakeFloat16Value(a2, v21);
      case 5u:
        (*(**(this + 2) + 16))(&v29);
        v16 = MIL::Text::Parser::TensorVal::ParseToken<float>(this, &v29);
        MIL::IRTensorValueType::MakeFloat32Value(a2, v16, v17);
      case 6u:
        (*(**(this + 2) + 16))(&v29);
        v19 = MIL::Text::Parser::TensorVal::ParseToken<double>(this, &v29);
        MIL::IRTensorValueType::MakeFloat64Value(a2, v19, v20);
      case 7u:
        (*(**(this + 2) + 16))(&v29);
        v23 = MIL::Text::Parser::TensorVal::ParseToken<MIL::Bf16>(this, &v29);
        MIL::IRTensorValueType::MakeBFloat16Value(a2, v23);
      case 9u:
        (*(**(this + 2) + 16))(&v29);
        v12 = MIL::Text::Parser::TensorVal::ParseToken<signed char>(this, &v29);
        MIL::IRTensorValueType::MakeInt8Value(a2, v12);
      case 0xAu:
        (*(**(this + 2) + 16))(&v29);
        v22 = MIL::Text::Parser::TensorVal::ParseToken<short>(this, &v29);
        MIL::IRTensorValueType::MakeInt16Value(a2, v22);
      case 0xBu:
        (*(**(this + 2) + 16))(&v29);
        v13 = MIL::Text::Parser::TensorVal::ParseToken<int>(this, &v29);
        MIL::IRTensorValueType::MakeInt32Value(a2, v13);
      case 0xCu:
        (*(**(this + 2) + 16))(&v29);
        v10 = MIL::Text::Parser::TensorVal::ParseToken<long long>(this, &v29);
        MIL::IRTensorValueType::MakeInt64Value(a2, v10);
      case 0xDu:
        (*(**(this + 2) + 16))(&v29);
        v24 = MIL::Text::Parser::TensorVal::ParseToken<MIL::Int4>(this, &v29);
        memset(&v27, 0, sizeof(v27));
        std::vector<MIL::Int4>::__init_with_size[abi:ne200100]<MIL::Int4 const*,MIL::Int4 const*>(&v27, &v24, v25, 1);
        MIL::PackSubByteVec(&v27, &__p);
        MIL::IRTensorValueType::MakeInt4Value(a2, *__p);
      case 0xEu:
        (*(**(this + 2) + 16))(&v29);
        v8 = MIL::Text::Parser::TensorVal::ParseToken<unsigned char>(this, &v29);
        MIL::IRTensorValueType::MakeUInt8Value(a2, v8);
      case 0xFu:
        (*(**(this + 2) + 16))(&v29);
        v11 = MIL::Text::Parser::TensorVal::ParseToken<unsigned short>(this, &v29);
        MIL::IRTensorValueType::MakeUInt16Value(a2, v11);
      case 0x10u:
        (*(**(this + 2) + 16))(&v29);
        v14 = MIL::Text::Parser::TensorVal::ParseToken<unsigned int>(this, &v29);
        MIL::IRTensorValueType::MakeUInt32Value(a2, v14);
      case 0x11u:
        (*(**(this + 2) + 16))(&v29);
        v18 = MIL::Text::Parser::TensorVal::ParseToken<unsigned long long>(this, &v29);
        MIL::IRTensorValueType::MakeUInt64Value(a2, v18);
      case 0x13u:
        (*(**(this + 2) + 16))(&v29);
        v24 = MIL::Text::Parser::TensorVal::ParseToken<MIL::UInt2>(this, &v29);
        memset(&v27, 0, sizeof(v27));
        std::vector<MIL::UInt2>::__init_with_size[abi:ne200100]<MIL::UInt2 const*,MIL::UInt2 const*>(&v27, &v24, v25, 1);
        MIL::PackSubByteVec(&v27, &__p);
        MIL::IRTensorValueType::MakeUInt2Value(a2, *__p);
      case 0x14u:
        (*(**(this + 2) + 16))(&v29);
        v24 = MIL::Text::Parser::TensorVal::ParseToken<MIL::UInt4>(this, &v29);
        memset(&v27, 0, sizeof(v27));
        std::vector<MIL::UInt4>::__init_with_size[abi:ne200100]<MIL::UInt4 const*,MIL::UInt4 const*>(&v27, &v24, v25, 1);
        MIL::PackSubByteVec(&v27, &__p);
        MIL::IRTensorValueType::MakeUInt4Value(a2, *__p);
      case 0x15u:
        (*(**(this + 2) + 16))(&v29);
        v24 = MIL::Text::Parser::TensorVal::ParseToken<MIL::UInt1>(this, &v29);
        memset(&v27, 0, sizeof(v27));
        std::vector<MIL::UInt1>::__init_with_size[abi:ne200100]<MIL::UInt1 const*,MIL::UInt1 const*>(&v27, &v24, v25, 1);
        MIL::PackSubByteVec(&v27, &__p);
        MIL::IRTensorValueType::MakeUInt1Value(a2, *__p);
      case 0x16u:
        (*(**(this + 2) + 16))(&v29);
        v24 = MIL::Text::Parser::TensorVal::ParseToken<MIL::UInt3>(this, &v29);
        memset(&v27, 0, sizeof(v27));
        std::vector<MIL::UInt3>::__init_with_size[abi:ne200100]<MIL::UInt3 const*,MIL::UInt3 const*>(&v27, &v24, v25, 1);
        MIL::PackSubByteVec(&v27, &__p);
        MIL::IRTensorValueType::MakeUInt3Value(a2, *__p);
      case 0x17u:
        (*(**(this + 2) + 16))(&v29);
        v24 = MIL::Text::Parser::TensorVal::ParseToken<MIL::UInt6>(this, &v29);
        memset(&v27, 0, sizeof(v27));
        std::vector<MIL::UInt6>::__init_with_size[abi:ne200100]<MIL::UInt6 const*,MIL::UInt6 const*>(&v27, &v24, v25, 1);
        MIL::PackSubByteVec(&v27, &__p);
        MIL::IRTensorValueType::MakeUInt6Value(a2, *__p);
      case 0x18u:
        (*(**(this + 2) + 16))(&v29);
        v9 = MIL::Text::Parser::TensorVal::ParseToken<MIL::Fp8E4M3FN>(this, &v29);
        MIL::IRTensorValueType::MakeFloat8E4M3FNValue(a2, v9);
      case 0x19u:
        (*(**(this + 2) + 16))(&v29);
        v15 = MIL::Text::Parser::TensorVal::ParseToken<MIL::Fp8E5M2>(this, &v29);
        MIL::IRTensorValueType::MakeFloat8E5M2Value(a2, v15);
      default:
        __cxa_allocate_exception(0x48uLL);
        MIL::TextLocationFromScannerLocation(v4, v6);
    }
  }

  __cxa_allocate_exception(0x48uLL);
  MIL::TextLocationFromScannerLocation(v4, v6);
}

void sub_2180AC3FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v46 - 121) < 0)
  {
    operator delete(*(v46 - 144));
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
    if ((v45 & 1) == 0)
    {
LABEL_18:
      _Unwind_Resume(a1);
    }
  }

  else if (!v45)
  {
    goto LABEL_18;
  }

  __cxa_free_exception(v44);
  goto LABEL_18;
}

void MIL::Text::Parser::TensorVal::ParseDim(uint64_t a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  v56[2] = *MEMORY[0x277D85DE8];
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(a1, 3);
  UnknownLocationImpl::~UnknownLocationImpl(v52);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v53 = xmmword_21858B828;
  LODWORD(v54) = 22;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  std::vector<MIL::Scanner::TokenType>::__init_with_size[abi:ne200100]<MIL::Scanner::TokenType const*,MIL::Scanner::TokenType const*>(&v49, &v53, &v54 + 4, 5uLL);
  v46 = 0;
  v47 = 0;
  v48 = 0;
  std::vector<MIL::Scanner::TokenType>::__init_with_size[abi:ne200100]<MIL::Scanner::TokenType*,MIL::Scanner::TokenType*>(&v46, v49, v50, (v50 - v49) >> 2);
  v6 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  if (MIL::Scanner::Token::GetType(v6) == 3)
  {
    v53 = 0uLL;
    v54 = 0;
    MIL::Text::Parser::TensorVal::ParseDim(&__p, a1, a2);
    std::vector<std::vector<unsigned long>>::push_back[abi:ne200100](&v53, &__p);
    if (__p)
    {
      v44 = __p;
      operator delete(__p);
    }

    for (i = 1; ; ++i)
    {
      v8 = (*(**(a1 + 16) + 24))(*(a1 + 16));
      if (MIL::Scanner::Token::GetType(v8) != 9)
      {
        break;
      }

      (*(**(a1 + 16) + 16))(v42);
      UnknownLocationImpl::~UnknownLocationImpl(v42);
      MIL::Text::Parser::TensorVal::ParseDim(&__p, a1, a2);
      std::vector<std::vector<unsigned long>>::push_back[abi:ne200100](&v53, &__p);
      if (__p)
      {
        v44 = __p;
        operator delete(__p);
      }
    }

    v44 = 0;
    v45 = 0;
    __p = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, *v53, *(v53 + 8), (*(v53 + 8) - *v53) >> 3);
    v13 = *(&v53 + 1);
    v12 = v53;
    if (v53 != *(&v53 + 1))
    {
      v14 = __p;
      v15 = v44 - __p;
      do
      {
        if (*(v12 + 8) - *v12 != v15 || memcmp(*v12, v14, v15))
        {
          __cxa_allocate_exception(0x48uLL);
          v37 = *(a1 + 32);
          Options = MIL::ParserContext::GetOptions(*(a1 + 24));
          v39 = (*(*Options + 24))(Options);
          MIL::TextLocationFromScannerLocation(v37, v39);
        }

        v12 += 24;
      }

      while (v12 != v13);
    }

    __src = i;
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, &__src, v56, 1uLL);
    v16 = __p;
    v17 = v44;
    if (__p != v44)
    {
      v18 = a3[1];
      do
      {
        v19 = *v16;
        v20 = a3[2];
        if (v18 >= v20)
        {
          v21 = *a3;
          v22 = v18 - *a3;
          v23 = v22 >> 3;
          v24 = (v22 >> 3) + 1;
          if (v24 >> 61)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v25 = v20 - v21;
          if (v25 >> 2 > v24)
          {
            v24 = v25 >> 2;
          }

          if (v25 >= 0x7FFFFFFFFFFFFFF8)
          {
            v26 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v24;
          }

          if (v26)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a3, v26);
          }

          *(8 * v23) = v19;
          v18 = (8 * v23 + 8);
          memcpy(0, v21, v22);
          v27 = *a3;
          *a3 = 0;
          a3[1] = v18;
          a3[2] = 0;
          if (v27)
          {
            operator delete(v27);
          }
        }

        else
        {
          *v18 = v19;
          v18 += 8;
        }

        a3[1] = v18;
        ++v16;
      }

      while (v16 != v17);
      v16 = __p;
    }

    if (v16)
    {
      v44 = v16;
      operator delete(v16);
    }

    __p = &v53;
    std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  else
  {
    v9 = (*(**(a1 + 16) + 24))(*(a1 + 16));
    Type = MIL::Scanner::Token::GetType(v9);
    v11 = v46;
    if (v46 != v47)
    {
      while (*v11 != Type)
      {
        if (++v11 == v47)
        {
          goto LABEL_46;
        }
      }
    }

    if (v11 == v47)
    {
LABEL_46:
      v33 = (*(**(a1 + 16) + 24))(*(a1 + 16));
      if (MIL::Scanner::Token::GetType(v33) == 4)
      {
        *&v53 = 0;
        std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, &v53, &v53 + 8, 1uLL);
      }
    }

    else
    {
      (*(**(a1 + 16) + 16))(&v53);
      std::vector<MIL::Scanner::Token>::push_back[abi:ne200100](a2, &v53);
      UnknownLocationImpl::~UnknownLocationImpl(&v53);
      for (j = 1; ; ++j)
      {
        v29 = (*(**(a1 + 16) + 24))(*(a1 + 16));
        if (MIL::Scanner::Token::GetType(v29) != 9)
        {
          break;
        }

        (*(**(a1 + 16) + 16))(v41);
        UnknownLocationImpl::~UnknownLocationImpl(v41);
        v30 = (*(**(a1 + 16) + 24))(*(a1 + 16));
        v31 = MIL::Scanner::Token::GetType(v30);
        v32 = v46;
        if (v46 != v47)
        {
          while (*v32 != v31)
          {
            if (++v32 == v47)
            {
              goto LABEL_54;
            }
          }
        }

        if (v32 == v47)
        {
LABEL_54:
          __cxa_allocate_exception(0x48uLL);
          v34 = *(a1 + 32);
          v35 = MIL::ParserContext::GetOptions(*(a1 + 24));
          v36 = (*(*v35 + 24))(v35);
          MIL::TextLocationFromScannerLocation(v34, v36);
        }

        (*(**(a1 + 16) + 16))(&v53);
        std::vector<MIL::Scanner::Token>::push_back[abi:ne200100](a2, &v53);
        UnknownLocationImpl::~UnknownLocationImpl(&v53);
      }

      *&v53 = j;
      std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, &v53, &v53 + 8, 1uLL);
    }
  }

  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(a1, 4);
  UnknownLocationImpl::~UnknownLocationImpl(v40);
  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }
}

void sub_2180ACD38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44)
{
  if (__p)
  {
    operator delete(__p);
  }

  v47 = *(v45 - 216);
  if (v47)
  {
    *(v45 - 208) = v47;
    operator delete(v47);
  }

  v48 = *v44;
  if (*v44)
  {
    *(v44 + 8) = v48;
    operator delete(v48);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<unsigned long>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned char>>>(result, v10);
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
    v12 = *(result + 8) - *result;
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
    result = std::__split_buffer<std::vector<float>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

uint64_t std::vector<MIL::Scanner::Token>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<MIL::Scanner::Token>::__emplace_back_slow_path<MIL::Scanner::Token>(a1, a2);
  }

  else
  {
    MIL::Scanner::Token::Token(v3, a2);
    result = v4 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

void MIL::Text::Parser::TensorVal::ParseTensor(MIL::IRConstantDimension **this, const MIL::IRTensorValueType *a2)
{
  if (!MIL::IRTensorValueType::IsScalar(a2))
  {
    memset(v36, 0, sizeof(v36));
    MIL::Text::Parser::TensorVal::ParseDim(this, v36, &v34);
    memset(v33, 0, sizeof(v33));
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v33, v34, v35, v35 - v34);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v4 = v34;
    v5 = v35;
    if (v34 != v35)
    {
      do
      {
        v6 = MIL::IRConstantDimension::Make(this[1], *v4);
        v7 = v31;
        if (v31 >= v32)
        {
          v9 = (v31 - v30) >> 3;
          if ((v9 + 1) >> 61)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v10 = (v32 - v30) >> 2;
          if (v10 <= v9 + 1)
          {
            v10 = v9 + 1;
          }

          if (v32 - v30 >= 0x7FFFFFFFFFFFFFF8)
          {
            v11 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v11 = v10;
          }

          if (v11)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(&v30, v11);
          }

          v12 = (8 * v9);
          *v12 = v6;
          v8 = (8 * v9 + 8);
          v13 = v12 - (v31 - v30);
          memcpy(v13, v30, v31 - v30);
          v14 = v30;
          v30 = v13;
          v31 = v8;
          v32 = 0;
          if (v14)
          {
            operator delete(v14);
          }
        }

        else
        {
          *v31 = v6;
          v8 = v7 + 8;
        }

        v31 = v8;
        ++v4;
      }

      while (v4 != v5);
      if (v30 != v8)
      {
        v15 = MIL::IRDimension::AsConstant(*(v8 - 1));
        if (!(*(*v15 + 48))(v15))
        {
          for (i = (v31 - v30) >> 3; ; ++i)
          {
            v17 = (*(*a2 + 96))(a2);
            if (i >= (v17[1] - *v17) >> 3)
            {
              break;
            }

            v18 = *(*(*a2 + 96))(a2);
            v19 = v31;
            if (v31 >= v32)
            {
              v21 = (v31 - v30) >> 3;
              if ((v21 + 1) >> 61)
              {
                std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
              }

              v22 = (v32 - v30) >> 2;
              if (v22 <= v21 + 1)
              {
                v22 = v21 + 1;
              }

              if (v32 - v30 >= 0x7FFFFFFFFFFFFFF8)
              {
                v23 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v23 = v22;
              }

              if (v23)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(&v30, v23);
              }

              v24 = (8 * v21);
              *v24 = *(v18 + 8 * i);
              v20 = 8 * v21 + 8;
              v25 = v24 - (v31 - v30);
              memcpy(v25, v30, v31 - v30);
              v26 = v30;
              v30 = v25;
              v31 = v20;
              v32 = 0;
              if (v26)
              {
                operator delete(v26);
              }
            }

            else
            {
              *v31 = *(v18 + 8 * i);
              v20 = (v19 + 8);
            }

            v31 = v20;
          }
        }
      }
    }

    (*(*a2 + 88))(a2);
    MIL::IRTensorValueType::MakeWithShape();
  }

  __cxa_allocate_exception(0x48uLL);
  v27 = this[4];
  Options = MIL::ParserContext::GetOptions(this[3]);
  v29 = (*(*Options + 24))(Options);
  MIL::TextLocationFromScannerLocation(v27, v29);
}

void sub_2180ADB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28)
{
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  if (SLOBYTE(STACK[0x21F]) < 0)
  {
    operator delete(STACK[0x208]);
  }

  MIL::Text::BasicSerializer::~BasicSerializer(&a28);
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  v32 = *(v30 - 248);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (STACK[0x2C8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x2C8]);
    if ((v28 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (!v28)
  {
LABEL_22:
    v33 = *(v30 - 240);
    *(v30 - 240) = 0;
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }

    v34 = *(v30 - 232);
    if (v34)
    {
      *(v30 - 224) = v34;
      operator delete(v34);
    }

    v35 = *(v30 - 208);
    if (v35)
    {
      *(v30 - 200) = v35;
      operator delete(v35);
    }

    v36 = *(v30 - 184);
    if (v36)
    {
      *(v30 - 176) = v36;
      operator delete(v36);
    }

    a28 = (v30 - 160);
    std::vector<MIL::Scanner::Token>::__destroy_vector::operator()[abi:ne200100](&a28);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v29);
  goto LABEL_22;
}

void sub_2180ADFE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
    if ((v29 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v29)
  {
LABEL_10:
    __cxa_end_catch();
    v33 = *(v31 - 232);
    if (v33)
    {
      *(v31 - 224) = v33;
      operator delete(v33);
    }

    v34 = *(v31 - 208);
    if (v34)
    {
      *(v31 - 200) = v34;
      operator delete(v34);
    }

    v35 = *(v31 - 184);
    if (v35)
    {
      *(v31 - 176) = v35;
      operator delete(v35);
    }

    a28 = v31 - 160;
    std::vector<MIL::Scanner::Token>::__destroy_vector::operator()[abi:ne200100](&a28);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v30);
  goto LABEL_10;
}

void sub_2180AE04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  __cxa_end_catch();
  v27 = *(v25 - 232);
  if (v27)
  {
    *(v25 - 224) = v27;
    operator delete(v27);
  }

  v28 = *(v25 - 208);
  if (v28)
  {
    *(v25 - 200) = v28;
    operator delete(v28);
  }

  v29 = *(v25 - 184);
  if (v29)
  {
    *(v25 - 176) = v29;
    operator delete(v29);
  }

  a25 = (v25 - 160);
  std::vector<MIL::Scanner::Token>::__destroy_vector::operator()[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

uint64_t MIL::Text::Parser::TensorVal::ParseTensor(MIL::IRTensorValueType const*)::$_0::operator()(unint64_t **a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v16);
  __p = 0;
  v14 = 0;
  v15 = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v4 = *v2;
      if (v15 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v15 >= 0)
      {
        v6 = HIBYTE(v15);
      }

      else
      {
        v6 = v14;
      }

      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, p_p, v6);
      std::to_string(&v12, v4);
      if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v12;
      }

      else
      {
        v8 = v12.__r_.__value_.__r.__words[0];
      }

      if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v12.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, size);
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }

      MEMORY[0x21CEAF970](&__p, ", ");
      ++v2;
    }

    while (v2 != v3);
  }

  std::stringbuf::str();
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  v16[0] = *MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 72);
  *(v16 + *(v16[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v17 = v10;
  v18 = MEMORY[0x277D82878] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return MEMORY[0x21CEAFDA0](&v21);
}

void sub_2180AE358(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, int a5, __int16 a6, char a7, char a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15, MEMORY[0x277D82818]);
  MEMORY[0x21CEAFDA0](va);
  _Unwind_Resume(a1);
}

void MIL::Text::Parser::TensorVal::ParseTokens<MIL::Fp8E4M3FN,MIL::Fp8E4M3FN>(uint64_t a1@<X0>, MIL::Scanner::Token **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<unsigned char>::reserve(a3, (a2[1] - *a2) >> 5);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = MIL::Text::Parser::TensorVal::ParseToken<MIL::Fp8E4M3FN>(a1, v6);
      v10 = a3[1];
      v9 = a3[2];
      if (v10 >= v9)
      {
        v12 = *a3;
        v13 = &v10[-*a3];
        v14 = (v13 + 1);
        if ((v13 + 1) < 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v15 = v9 - v12;
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          operator new();
        }

        v17 = &v10[-*a3];
        *v13 = v8;
        v11 = v13 + 1;
        memcpy(0, v12, v17);
        *a3 = 0;
        a3[1] = v13 + 1;
        a3[2] = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v10 = v8;
        v11 = v10 + 1;
      }

      a3[1] = v11;
      v6 = (v6 + 32);
    }

    while (v6 != v7);
  }
}

void sub_2180AE4F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Parser::TensorVal::ParseTokens<MIL::Fp8E5M2,MIL::Fp8E5M2>(uint64_t a1@<X0>, MIL::Scanner::Token **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<unsigned char>::reserve(a3, (a2[1] - *a2) >> 5);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = MIL::Text::Parser::TensorVal::ParseToken<MIL::Fp8E5M2>(a1, v6);
      v10 = a3[1];
      v9 = a3[2];
      if (v10 >= v9)
      {
        v12 = *a3;
        v13 = &v10[-*a3];
        v14 = (v13 + 1);
        if ((v13 + 1) < 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v15 = v9 - v12;
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          operator new();
        }

        v17 = &v10[-*a3];
        *v13 = v8;
        v11 = v13 + 1;
        memcpy(0, v12, v17);
        *a3 = 0;
        a3[1] = v13 + 1;
        a3[2] = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v10 = v8;
        v11 = v10 + 1;
      }

      a3[1] = v11;
      v6 = (v6 + 32);
    }

    while (v6 != v7);
  }
}

void sub_2180AE65C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Parser::TensorVal::ParseTokens<MIL::Bf16,MIL::Bf16>(uint64_t a1@<X0>, MIL::Scanner::Token **a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<MIL::Fp16>::reserve(a3, (a2[1] - *a2) >> 5);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = MIL::Text::Parser::TensorVal::ParseToken<MIL::Bf16>(a1, v6);
      v10 = a3[1];
      v9 = a3[2];
      if (v10 >= v9)
      {
        v12 = *a3;
        v13 = v10 - *a3;
        v14 = v13 >> 1;
        if (v13 >> 1 <= -2)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v15 = v9 - v12;
        if (v15 <= v14 + 1)
        {
          v16 = v14 + 1;
        }

        else
        {
          v16 = v15;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(a3, v17);
        }

        *(2 * v14) = v8;
        v11 = 2 * v14 + 2;
        memcpy(0, v12, v13);
        v18 = *a3;
        *a3 = 0;
        a3[1] = v11;
        a3[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v10 = v8;
        v11 = (v10 + 2);
      }

      a3[1] = v11;
      v6 = (v6 + 32);
    }

    while (v6 != v7);
  }
}

void sub_2180AE7B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Parser::TensorVal::ParseTokens<MIL::Fp16,MIL::Fp16>(uint64_t a1@<X0>, MIL::Scanner::Token **a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<MIL::Fp16>::reserve(a3, (a2[1] - *a2) >> 5);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = MIL::Text::Parser::TensorVal::ParseToken<MIL::Fp16>(a1, v6);
      v10 = a3[1];
      v9 = a3[2];
      if (v10 >= v9)
      {
        v12 = *a3;
        v13 = v10 - *a3;
        v14 = v13 >> 1;
        if (v13 >> 1 <= -2)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v15 = v9 - v12;
        if (v15 <= v14 + 1)
        {
          v16 = v14 + 1;
        }

        else
        {
          v16 = v15;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(a3, v17);
        }

        *(2 * v14) = v8;
        v11 = 2 * v14 + 2;
        memcpy(0, v12, v13);
        v18 = *a3;
        *a3 = 0;
        a3[1] = v11;
        a3[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v10 = v8;
        v11 = (v10 + 2);
      }

      a3[1] = v11;
      v6 = (v6 + 32);
    }

    while (v6 != v7);
  }
}

void sub_2180AE914(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Parser::TensorVal::ParseTokens<float,float>(uint64_t a1@<X0>, MIL::Scanner::Token **a2@<X1>, std::vector<unsigned int> *a3@<X8>)
{
  a3->__begin_ = 0;
  a3->__end_ = 0;
  a3->__end_cap_.__value_ = 0;
  std::vector<int>::reserve(a3, (a2[1] - *a2) >> 5);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = MIL::Text::Parser::TensorVal::ParseToken<float>(a1, v6);
      end = a3->__end_;
      value = a3->__end_cap_.__value_;
      if (end >= value)
      {
        begin = a3->__begin_;
        v13 = end - a3->__begin_;
        v14 = v13 >> 2;
        v15 = (v13 >> 2) + 1;
        if (v15 >> 62)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v16 = value - begin;
        if (v16 >> 1 > v15)
        {
          v15 = v16 >> 1;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v17 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a3, v17);
        }

        *(4 * v14) = v8;
        v11 = 4 * v14 + 4;
        memcpy(0, begin, v13);
        v18 = a3->__begin_;
        a3->__begin_ = 0;
        a3->__end_ = v11;
        a3->__end_cap_.__value_ = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *end = v8;
        v11 = (end + 1);
      }

      a3->__end_ = v11;
      v6 = (v6 + 32);
    }

    while (v6 != v7);
  }
}

void sub_2180AEA7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Parser::TensorVal::ParseTokens<double,double>(uint64_t a1@<X0>, MIL::Scanner::Token **a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<unsigned long long>::reserve(a3, (a2[1] - *a2) >> 5);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = MIL::Text::Parser::TensorVal::ParseToken<double>(a1, v6);
      v10 = a3[1];
      v9 = a3[2];
      if (v10 >= v9)
      {
        v12 = *a3;
        v13 = v10 - *a3;
        v14 = v13 >> 3;
        v15 = (v13 >> 3) + 1;
        if (v15 >> 61)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v16 = v9 - v12;
        if (v16 >> 2 > v15)
        {
          v15 = v16 >> 2;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a3, v17);
        }

        *(8 * v14) = v8;
        v11 = 8 * v14 + 8;
        memcpy(0, v12, v13);
        v18 = *a3;
        *a3 = 0;
        a3[1] = v11;
        a3[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v10 = v8;
        v11 = (v10 + 1);
      }

      a3[1] = v11;
      v6 = (v6 + 32);
    }

    while (v6 != v7);
  }
}

void sub_2180AEBE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Parser::TensorVal::ParseTokens<MIL::Int4,MIL::Int4>(uint64_t a1@<X0>, MIL::Scanner::Token **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<unsigned char>::reserve(a3, (a2[1] - *a2) >> 5);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = MIL::Text::Parser::TensorVal::ParseToken<MIL::Int4>(a1, v6);
      v10 = a3[1];
      v9 = a3[2];
      if (v10 >= v9)
      {
        v12 = *a3;
        v13 = &v10[-*a3];
        v14 = (v13 + 1);
        if ((v13 + 1) < 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v15 = v9 - v12;
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          operator new();
        }

        v17 = &v10[-*a3];
        *v13 = v8;
        v11 = v13 + 1;
        memcpy(0, v12, v17);
        *a3 = 0;
        a3[1] = v13 + 1;
        a3[2] = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v10 = v8;
        v11 = v10 + 1;
      }

      a3[1] = v11;
      v6 = (v6 + 32);
    }

    while (v6 != v7);
  }
}

void sub_2180AED4C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Parser::TensorVal::ParseTokens<MIL::UInt6,MIL::UInt6>(uint64_t a1@<X0>, MIL::Scanner::Token **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<unsigned char>::reserve(a3, (a2[1] - *a2) >> 5);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = MIL::Text::Parser::TensorVal::ParseToken<MIL::UInt6>(a1, v6);
      v10 = a3[1];
      v9 = a3[2];
      if (v10 >= v9)
      {
        v12 = *a3;
        v13 = &v10[-*a3];
        v14 = (v13 + 1);
        if ((v13 + 1) < 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v15 = v9 - v12;
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          operator new();
        }

        v17 = &v10[-*a3];
        *v13 = v8;
        v11 = v13 + 1;
        memcpy(0, v12, v17);
        *a3 = 0;
        a3[1] = v13 + 1;
        a3[2] = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v10 = v8;
        v11 = v10 + 1;
      }

      a3[1] = v11;
      v6 = (v6 + 32);
    }

    while (v6 != v7);
  }
}

void sub_2180AEEB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Parser::TensorVal::ParseTokens<MIL::UInt4,MIL::UInt4>(uint64_t a1@<X0>, MIL::Scanner::Token **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<unsigned char>::reserve(a3, (a2[1] - *a2) >> 5);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = MIL::Text::Parser::TensorVal::ParseToken<MIL::UInt4>(a1, v6);
      v10 = a3[1];
      v9 = a3[2];
      if (v10 >= v9)
      {
        v12 = *a3;
        v13 = &v10[-*a3];
        v14 = (v13 + 1);
        if ((v13 + 1) < 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v15 = v9 - v12;
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          operator new();
        }

        v17 = &v10[-*a3];
        *v13 = v8;
        v11 = v13 + 1;
        memcpy(0, v12, v17);
        *a3 = 0;
        a3[1] = v13 + 1;
        a3[2] = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v10 = v8;
        v11 = v10 + 1;
      }

      a3[1] = v11;
      v6 = (v6 + 32);
    }

    while (v6 != v7);
  }
}

void sub_2180AF01C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Parser::TensorVal::ParseTokens<MIL::UInt3,MIL::UInt3>(uint64_t a1@<X0>, MIL::Scanner::Token **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<unsigned char>::reserve(a3, (a2[1] - *a2) >> 5);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = MIL::Text::Parser::TensorVal::ParseToken<MIL::UInt3>(a1, v6);
      v10 = a3[1];
      v9 = a3[2];
      if (v10 >= v9)
      {
        v12 = *a3;
        v13 = &v10[-*a3];
        v14 = (v13 + 1);
        if ((v13 + 1) < 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v15 = v9 - v12;
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          operator new();
        }

        v17 = &v10[-*a3];
        *v13 = v8;
        v11 = v13 + 1;
        memcpy(0, v12, v17);
        *a3 = 0;
        a3[1] = v13 + 1;
        a3[2] = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v10 = v8;
        v11 = v10 + 1;
      }

      a3[1] = v11;
      v6 = (v6 + 32);
    }

    while (v6 != v7);
  }
}

void sub_2180AF184(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Parser::TensorVal::ParseTokens<MIL::UInt2,MIL::UInt2>(uint64_t a1@<X0>, MIL::Scanner::Token **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<unsigned char>::reserve(a3, (a2[1] - *a2) >> 5);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = MIL::Text::Parser::TensorVal::ParseToken<MIL::UInt2>(a1, v6);
      v10 = a3[1];
      v9 = a3[2];
      if (v10 >= v9)
      {
        v12 = *a3;
        v13 = &v10[-*a3];
        v14 = (v13 + 1);
        if ((v13 + 1) < 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v15 = v9 - v12;
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          operator new();
        }

        v17 = &v10[-*a3];
        *v13 = v8;
        v11 = v13 + 1;
        memcpy(0, v12, v17);
        *a3 = 0;
        a3[1] = v13 + 1;
        a3[2] = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v10 = v8;
        v11 = v10 + 1;
      }

      a3[1] = v11;
      v6 = (v6 + 32);
    }

    while (v6 != v7);
  }
}

void sub_2180AF2EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Parser::TensorVal::ParseTokens<MIL::UInt1,MIL::UInt1>(uint64_t a1@<X0>, MIL::Scanner::Token **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<unsigned char>::reserve(a3, (a2[1] - *a2) >> 5);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = MIL::Text::Parser::TensorVal::ParseToken<MIL::UInt1>(a1, v6);
      v10 = a3[1];
      v9 = a3[2];
      if (v10 >= v9)
      {
        v12 = *a3;
        v13 = &v10[-*a3];
        v14 = (v13 + 1);
        if ((v13 + 1) < 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v15 = v9 - v12;
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          operator new();
        }

        v17 = &v10[-*a3];
        *v13 = v8;
        v11 = v13 + 1;
        memcpy(0, v12, v17);
        *a3 = 0;
        a3[1] = v13 + 1;
        a3[2] = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v10 = v8;
        v11 = v10 + 1;
      }

      a3[1] = v11;
      v6 = (v6 + 32);
    }

    while (v6 != v7);
  }
}

void sub_2180AF454(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Parser::TensorVal::ParseTokens<unsigned char,unsigned char>(uint64_t a1@<X0>, MIL::Scanner::Token **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<unsigned char>::reserve(a3, (a2[1] - *a2) >> 5);
  v6 = *a2;
  v7 = a2[1];
  while (v6 != v7)
  {
    v8 = MIL::Text::Parser::TensorVal::ParseToken<unsigned char>(a1, v6);
    std::vector<char>::push_back[abi:ne200100](a3, &v8);
    v6 = (v6 + 32);
  }
}

void sub_2180AF4FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Parser::TensorVal::ParseTokens<unsigned short,unsigned short>(uint64_t a1@<X0>, MIL::Scanner::Token **a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<MIL::Fp16>::reserve(a3, (a2[1] - *a2) >> 5);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = MIL::Text::Parser::TensorVal::ParseToken<unsigned short>(a1, v6);
      v10 = a3[1];
      v9 = a3[2];
      if (v10 >= v9)
      {
        v12 = *a3;
        v13 = v10 - *a3;
        v14 = v13 >> 1;
        if (v13 >> 1 <= -2)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v15 = v9 - v12;
        if (v15 <= v14 + 1)
        {
          v16 = v14 + 1;
        }

        else
        {
          v16 = v15;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(a3, v17);
        }

        *(2 * v14) = v8;
        v11 = 2 * v14 + 2;
        memcpy(0, v12, v13);
        v18 = *a3;
        *a3 = 0;
        a3[1] = v11;
        a3[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v10 = v8;
        v11 = (v10 + 2);
      }

      a3[1] = v11;
      v6 = (v6 + 32);
    }

    while (v6 != v7);
  }
}

void sub_2180AF654(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Parser::TensorVal::ParseTokens<unsigned int,unsigned int>(uint64_t a1@<X0>, MIL::Scanner::Token **a2@<X1>, std::vector<unsigned int> *a3@<X8>)
{
  a3->__begin_ = 0;
  a3->__end_ = 0;
  a3->__end_cap_.__value_ = 0;
  std::vector<int>::reserve(a3, (a2[1] - *a2) >> 5);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = MIL::Text::Parser::TensorVal::ParseToken<unsigned int>(a1, v6);
      end = a3->__end_;
      value = a3->__end_cap_.__value_;
      if (end >= value)
      {
        begin = a3->__begin_;
        v13 = end - a3->__begin_;
        v14 = v13 >> 2;
        v15 = (v13 >> 2) + 1;
        if (v15 >> 62)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v16 = value - begin;
        if (v16 >> 1 > v15)
        {
          v15 = v16 >> 1;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v17 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a3, v17);
        }

        *(4 * v14) = v8;
        v11 = 4 * v14 + 4;
        memcpy(0, begin, v13);
        v18 = a3->__begin_;
        a3->__begin_ = 0;
        a3->__end_ = v11;
        a3->__end_cap_.__value_ = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *end = v8;
        v11 = (end + 4);
      }

      a3->__end_ = v11;
      v6 = (v6 + 32);
    }

    while (v6 != v7);
  }
}

void sub_2180AF7B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Parser::TensorVal::ParseTokens<unsigned long long,unsigned long long>(uint64_t a1@<X0>, MIL::Scanner::Token **a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<unsigned long long>::reserve(a3, (a2[1] - *a2) >> 5);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = MIL::Text::Parser::TensorVal::ParseToken<unsigned long long>(a1, v6);
      v10 = a3[1];
      v9 = a3[2];
      if (v10 >= v9)
      {
        v12 = *a3;
        v13 = v10 - *a3;
        v14 = v13 >> 3;
        v15 = (v13 >> 3) + 1;
        if (v15 >> 61)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v16 = v9 - v12;
        if (v16 >> 2 > v15)
        {
          v15 = v16 >> 2;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a3, v17);
        }

        *(8 * v14) = v8;
        v11 = 8 * v14 + 8;
        memcpy(0, v12, v13);
        v18 = *a3;
        *a3 = 0;
        a3[1] = v11;
        a3[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v10 = v8;
        v11 = (v10 + 1);
      }

      a3[1] = v11;
      v6 = (v6 + 32);
    }

    while (v6 != v7);
  }
}

void sub_2180AF914(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Parser::TensorVal::ParseTokens<signed char,signed char>(uint64_t a1@<X0>, MIL::Scanner::Token **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<unsigned char>::reserve(a3, (a2[1] - *a2) >> 5);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = MIL::Text::Parser::TensorVal::ParseToken<signed char>(a1, v6);
      v10 = a3[1];
      v9 = a3[2];
      if (v10 >= v9)
      {
        v12 = *a3;
        v13 = &v10[-*a3];
        v14 = (v13 + 1);
        if ((v13 + 1) < 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v15 = v9 - v12;
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          operator new();
        }

        v17 = &v10[-*a3];
        *v13 = v8;
        v11 = v13 + 1;
        memcpy(0, v12, v17);
        *a3 = 0;
        a3[1] = v13 + 1;
        a3[2] = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v10 = v8;
        v11 = v10 + 1;
      }

      a3[1] = v11;
      v6 = (v6 + 32);
    }

    while (v6 != v7);
  }
}

void sub_2180AFA7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Parser::TensorVal::ParseTokens<short,short>(uint64_t a1@<X0>, MIL::Scanner::Token **a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<MIL::Fp16>::reserve(a3, (a2[1] - *a2) >> 5);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = MIL::Text::Parser::TensorVal::ParseToken<short>(a1, v6);
      v10 = a3[1];
      v9 = a3[2];
      if (v10 >= v9)
      {
        v12 = *a3;
        v13 = v10 - *a3;
        v14 = v13 >> 1;
        if (v13 >> 1 <= -2)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v15 = v9 - v12;
        if (v15 <= v14 + 1)
        {
          v16 = v14 + 1;
        }

        else
        {
          v16 = v15;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(a3, v17);
        }

        *(2 * v14) = v8;
        v11 = 2 * v14 + 2;
        memcpy(0, v12, v13);
        v18 = *a3;
        *a3 = 0;
        a3[1] = v11;
        a3[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v10 = v8;
        v11 = (v10 + 2);
      }

      a3[1] = v11;
      v6 = (v6 + 32);
    }

    while (v6 != v7);
  }
}

void sub_2180AFBD8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Parser::TensorVal::ParseTokens<int,int>(uint64_t a1@<X0>, MIL::Scanner::Token **a2@<X1>, std::vector<unsigned int> *a3@<X8>)
{
  a3->__begin_ = 0;
  a3->__end_ = 0;
  a3->__end_cap_.__value_ = 0;
  std::vector<int>::reserve(a3, (a2[1] - *a2) >> 5);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = MIL::Text::Parser::TensorVal::ParseToken<int>(a1, v6);
      end = a3->__end_;
      value = a3->__end_cap_.__value_;
      if (end >= value)
      {
        begin = a3->__begin_;
        v13 = end - a3->__begin_;
        v14 = v13 >> 2;
        v15 = (v13 >> 2) + 1;
        if (v15 >> 62)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v16 = value - begin;
        if (v16 >> 1 > v15)
        {
          v15 = v16 >> 1;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v17 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a3, v17);
        }

        *(4 * v14) = v8;
        v11 = 4 * v14 + 4;
        memcpy(0, begin, v13);
        v18 = a3->__begin_;
        a3->__begin_ = 0;
        a3->__end_ = v11;
        a3->__end_cap_.__value_ = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *end = v8;
        v11 = (end + 4);
      }

      a3->__end_ = v11;
      v6 = (v6 + 32);
    }

    while (v6 != v7);
  }
}

void sub_2180AFD38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Parser::TensorVal::ParseTokens<long long,long long>(uint64_t a1@<X0>, MIL::Scanner::Token **a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<unsigned long long>::reserve(a3, (a2[1] - *a2) >> 5);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = MIL::Text::Parser::TensorVal::ParseToken<long long>(a1, v6);
      v10 = a3[1];
      v9 = a3[2];
      if (v10 >= v9)
      {
        v12 = *a3;
        v13 = v10 - *a3;
        v14 = v13 >> 3;
        v15 = (v13 >> 3) + 1;
        if (v15 >> 61)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v16 = v9 - v12;
        if (v16 >> 2 > v15)
        {
          v15 = v16 >> 2;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a3, v17);
        }

        *(8 * v14) = v8;
        v11 = 8 * v14 + 8;
        memcpy(0, v12, v13);
        v18 = *a3;
        *a3 = 0;
        a3[1] = v11;
        a3[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v10 = v8;
        v11 = (v10 + 1);
      }

      a3[1] = v11;
      v6 = (v6 + 32);
    }

    while (v6 != v7);
  }
}

void sub_2180AFE98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Parser::TensorVal::ParseTokens<std::string,std::string>(uint64_t a1@<X0>, MIL::Scanner::Token **a2@<X1>, std::vector<std::string> *a3@<X8>)
{
  a3->__begin_ = 0;
  a3->__end_ = 0;
  a3->__end_cap_.__value_ = 0;
  std::vector<std::string>::reserve(a3, (a2[1] - *a2) >> 5);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      MIL::Text::Parser::TensorVal::ParseToken<std::string>(v6, a1, &__p);
      end = a3->__end_;
      value = a3->__end_cap_.__value_;
      if (end >= value)
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((end - a3->__begin_) >> 3);
        v12 = v11 + 1;
        if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v13 = 0xAAAAAAAAAAAAAAABLL * ((value - a3->__begin_) >> 3);
        if (2 * v13 > v12)
        {
          v12 = 2 * v13;
        }

        if (v13 >= 0x555555555555555)
        {
          v14 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v14 = v12;
        }

        v24.__end_cap_.__value_ = a3;
        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a3, v14);
        }

        v15 = 24 * v11;
        v16 = *&__p.__r_.__value_.__l.__data_;
        *(v15 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v15 = v16;
        memset(&__p, 0, sizeof(__p));
        v17 = 24 * v11 + 24;
        v18 = a3->__end_ - a3->__begin_;
        v19 = (24 * v11 - v18);
        memcpy((v15 - v18), a3->__begin_, v18);
        begin = a3->__begin_;
        a3->__begin_ = v19;
        a3->__end_ = v17;
        v21 = a3->__end_cap_.__value_;
        a3->__end_cap_.__value_ = 0;
        v24.__end_ = begin;
        v24.__end_cap_.__value_ = v21;
        v24.__first_ = begin;
        v24.__begin_ = begin;
        std::__split_buffer<std::string>::~__split_buffer(&v24);
        v22 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        a3->__end_ = v17;
        if (v22 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v10 = *&__p.__r_.__value_.__l.__data_;
        end->__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[2];
        *&end->__r_.__value_.__l.__data_ = v10;
        a3->__end_ = end + 1;
      }

      v6 = (v6 + 32);
    }

    while (v6 != v7);
  }
}

unsigned __int8 *std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = memchr(a1, *a3, a2 - a1);
  if (!result)
  {
    result = a2;
  }

  v6 = result + 1;
  if (result != a2 && v6 != a2)
  {
    do
    {
      v8 = *v6;
      if (v8 != *a3)
      {
        *result++ = v8;
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return result;
}

uint64_t std::vector<MIL::Scanner::TokenType>::__init_with_size[abi:ne200100]<MIL::Scanner::TokenType const*,MIL::Scanner::TokenType const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2180B0154(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<MIL::Scanner::TokenType>::__init_with_size[abi:ne200100]<MIL::Scanner::TokenType*,MIL::Scanner::TokenType*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2180B01D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2180B024C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<MIL::Scanner::Token>::__emplace_back_slow_path<MIL::Scanner::Token>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
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

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Scanner::Token>>(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  MIL::Scanner::Token::Token((32 * v2), a2);
  v16 = (32 * v2 + 32);
  v8 = *(a1 + 8);
  v9 = (32 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MIL::Scanner::Token>,MIL::Scanner::Token*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<MIL::Scanner::Token>::~__split_buffer(&v14);
  return v13;
}

void sub_2180B0360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<MIL::Scanner::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Scanner::Token>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MIL::Scanner::Token>,MIL::Scanner::Token*>(uint64_t a1, UnknownLocationImpl *a2, UnknownLocationImpl *a3, _OWORD *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      MIL::Scanner::Token::Token(a4, v7);
      v7 += 32;
      a4 = (v8 + 32);
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      UnknownLocationImpl::~UnknownLocationImpl(v6);
      v6 = (v6 + 32);
    }
  }
}

uint64_t std::__split_buffer<MIL::Scanner::Token>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    UnknownLocationImpl::~UnknownLocationImpl((i - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<MIL::Scanner::Token>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        UnknownLocationImpl::~UnknownLocationImpl((v4 - 32));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *MIL::PackSubByteVec@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = v2 - *a1;
  if (v2 == *a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1;
  }

  return MIL::PackSubByteVecImpl<MIL::Int4>(v4, v3, a2);
}

{
  v2 = a1[1];
  v3 = v2 - *a1;
  if (v2 == *a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1;
  }

  return MIL::PackSubByteVecImpl<MIL::UInt4>(v4, v3, a2);
}

{
  v2 = a1[1];
  v3 = v2 - *a1;
  if (v2 == *a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1;
  }

  return MIL::PackSubByteVecImpl<MIL::UInt2>(v4, v3, a2);
}

{
  v2 = a1[1];
  v3 = v2 - *a1;
  if (v2 == *a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1;
  }

  return MIL::PackSubByteVecImpl<MIL::UInt1>(v4, v3, a2);
}

void *MIL::PackSubByteVecImpl<MIL::Int4>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = std::vector<unsigned char>::vector[abi:ne200100](a3, vcvtpd_u64_f64(vcvtd_n_f64_u64(4 * a2, 3uLL)));
  if (a2)
  {
    v7 = 0;
    do
    {
      v8 = *(a1 + v7);
      if ((v8 + 8) >= 0x10u)
      {
        v9 = v7;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v29, *(a1 + v9));
        v11 = std::string::insert(&v29, 0, "Value ");
        v12 = *&v11->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        v13 = std::string::append(&v30, " is outside allowed subbyte datatype range [");
        v14 = *&v13->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v14;
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        v13->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v28, -8);
        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &v28;
        }

        else
        {
          v15 = v28.__r_.__value_.__r.__words[0];
        }

        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v28.__r_.__value_.__l.__size_;
        }

        v17 = std::string::append(&v31, v15, size);
        v18 = *&v17->__r_.__value_.__l.__data_;
        v32.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v32.__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        v19 = std::string::append(&v32, ", ");
        v20 = *&v19->__r_.__value_.__l.__data_;
        v33.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
        *&v33.__r_.__value_.__l.__data_ = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v27, 7);
        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v27;
        }

        else
        {
          v21 = v27.__r_.__value_.__r.__words[0];
        }

        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v22 = v27.__r_.__value_.__l.__size_;
        }

        v23 = std::string::append(&v33, v21, v22);
        v24 = *&v23->__r_.__value_.__l.__data_;
        v34.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
        *&v34.__r_.__value_.__l.__data_ = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        v25 = std::string::append(&v34, "].");
        v26 = *&v25->__r_.__value_.__l.__data_;
        v35.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v35.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v35);
        exception->__vftable = (MEMORY[0x277D828C8] + 16);
        __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
      }

      *(*a3 + (v7 >> 1)) |= (v8 & 0xF) << (4 * (v7 & 1));
      ++v7;
    }

    while (a2 != v7);
  }

  return result;
}

void sub_2180B0754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v50 - 57) < 0)
  {
    operator delete(*(v50 - 80));
  }

  if (*(v50 - 89) < 0)
  {
    operator delete(*(v50 - 112));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v50 - 121) < 0)
  {
    operator delete(*(v50 - 144));
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
    if ((v49 & 1) == 0)
    {
LABEL_22:
      v52 = *v47;
      if (*v47)
      {
        *(v47 + 8) = v52;
        operator delete(v52);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v49)
  {
    goto LABEL_22;
  }

  __cxa_free_exception(v48);
  goto LABEL_22;
}

void *MIL::PackSubByteVec@<X0>(unsigned __int8 **a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = v2 - *a1;
  if (v2 == *a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1;
  }

  return MIL::PackSubByteVecForNonByteAligned<MIL::UInt6>(v4, v3, a2);
}

{
  v2 = a1[1];
  v3 = v2 - *a1;
  if (v2 == *a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1;
  }

  return MIL::PackSubByteVecForNonByteAligned<MIL::UInt3>(v4, v3, a2);
}

void *MIL::PackSubByteVecImpl<MIL::UInt4>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = std::vector<unsigned char>::vector[abi:ne200100](a3, vcvtpd_u64_f64(vcvtd_n_f64_u64(4 * a2, 3uLL)));
  if (a2)
  {
    v7 = 0;
    do
    {
      v8 = *(a1 + v7);
      if (v8 > 0xF)
      {
        v9 = v7;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v29, *(a1 + v9));
        v11 = std::string::insert(&v29, 0, "Value ");
        v12 = *&v11->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        v13 = std::string::append(&v30, " is outside allowed subbyte datatype range [");
        v14 = *&v13->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v14;
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        v13->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v28, 0);
        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &v28;
        }

        else
        {
          v15 = v28.__r_.__value_.__r.__words[0];
        }

        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v28.__r_.__value_.__l.__size_;
        }

        v17 = std::string::append(&v31, v15, size);
        v18 = *&v17->__r_.__value_.__l.__data_;
        v32.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v32.__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        v19 = std::string::append(&v32, ", ");
        v20 = *&v19->__r_.__value_.__l.__data_;
        v33.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
        *&v33.__r_.__value_.__l.__data_ = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v27, 15);
        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v27;
        }

        else
        {
          v21 = v27.__r_.__value_.__r.__words[0];
        }

        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v22 = v27.__r_.__value_.__l.__size_;
        }

        v23 = std::string::append(&v33, v21, v22);
        v24 = *&v23->__r_.__value_.__l.__data_;
        v34.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
        *&v34.__r_.__value_.__l.__data_ = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        v25 = std::string::append(&v34, "].");
        v26 = *&v25->__r_.__value_.__l.__data_;
        v35.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v35.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v35);
        exception->__vftable = (MEMORY[0x277D828C8] + 16);
        __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
      }

      *(*a3 + (v7 >> 1)) |= v8 << (4 * (v7 & 1));
      ++v7;
    }

    while (a2 != v7);
  }

  return result;
}

void sub_2180B0AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v50 - 57) < 0)
  {
    operator delete(*(v50 - 80));
  }

  if (*(v50 - 89) < 0)
  {
    operator delete(*(v50 - 112));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v50 - 121) < 0)
  {
    operator delete(*(v50 - 144));
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
    if ((v49 & 1) == 0)
    {
LABEL_22:
      v52 = *v47;
      if (*v47)
      {
        *(v47 + 8) = v52;
        operator delete(v52);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v49)
  {
    goto LABEL_22;
  }

  __cxa_free_exception(v48);
  goto LABEL_22;
}

void *MIL::PackSubByteVecImpl<MIL::UInt2>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = std::vector<unsigned char>::vector[abi:ne200100](a3, vcvtpd_u64_f64(vcvtd_n_f64_u64(2 * a2, 3uLL)));
  if (a2)
  {
    v7 = 0;
    do
    {
      v8 = *(a1 + v7);
      if (v8 > 3)
      {
        v9 = v7;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v29, *(a1 + v9));
        v11 = std::string::insert(&v29, 0, "Value ");
        v12 = *&v11->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        v13 = std::string::append(&v30, " is outside allowed subbyte datatype range [");
        v14 = *&v13->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v14;
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        v13->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v28, 0);
        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &v28;
        }

        else
        {
          v15 = v28.__r_.__value_.__r.__words[0];
        }

        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v28.__r_.__value_.__l.__size_;
        }

        v17 = std::string::append(&v31, v15, size);
        v18 = *&v17->__r_.__value_.__l.__data_;
        v32.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v32.__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        v19 = std::string::append(&v32, ", ");
        v20 = *&v19->__r_.__value_.__l.__data_;
        v33.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
        *&v33.__r_.__value_.__l.__data_ = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v27, 3);
        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v27;
        }

        else
        {
          v21 = v27.__r_.__value_.__r.__words[0];
        }

        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v22 = v27.__r_.__value_.__l.__size_;
        }

        v23 = std::string::append(&v33, v21, v22);
        v24 = *&v23->__r_.__value_.__l.__data_;
        v34.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
        *&v34.__r_.__value_.__l.__data_ = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        v25 = std::string::append(&v34, "].");
        v26 = *&v25->__r_.__value_.__l.__data_;
        v35.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v35.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v35);
        exception->__vftable = (MEMORY[0x277D828C8] + 16);
        __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
      }

      *(*a3 + (v7 >> 2)) |= v8 << (2 * (v7 & 3));
      ++v7;
    }

    while (a2 != v7);
  }

  return result;
}

void sub_2180B0E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v50 - 57) < 0)
  {
    operator delete(*(v50 - 80));
  }

  if (*(v50 - 89) < 0)
  {
    operator delete(*(v50 - 112));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v50 - 121) < 0)
  {
    operator delete(*(v50 - 144));
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
    if ((v49 & 1) == 0)
    {
LABEL_22:
      v52 = *v47;
      if (*v47)
      {
        *(v47 + 8) = v52;
        operator delete(v52);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v49)
  {
    goto LABEL_22;
  }

  __cxa_free_exception(v48);
  goto LABEL_22;
}

void *MIL::PackSubByteVecImpl<MIL::UInt1>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = std::vector<unsigned char>::vector[abi:ne200100](a3, vcvtpd_u64_f64(vcvtd_n_f64_u64(a2, 3uLL)));
  if (a2)
  {
    v7 = 0;
    do
    {
      v8 = *(a1 + v7);
      if (v8 > 1)
      {
        v9 = v7;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v29, *(a1 + v9));
        v11 = std::string::insert(&v29, 0, "Value ");
        v12 = *&v11->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        v13 = std::string::append(&v30, " is outside allowed subbyte datatype range [");
        v14 = *&v13->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v14;
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        v13->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v28, 0);
        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &v28;
        }

        else
        {
          v15 = v28.__r_.__value_.__r.__words[0];
        }

        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v28.__r_.__value_.__l.__size_;
        }

        v17 = std::string::append(&v31, v15, size);
        v18 = *&v17->__r_.__value_.__l.__data_;
        v32.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v32.__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        v19 = std::string::append(&v32, ", ");
        v20 = *&v19->__r_.__value_.__l.__data_;
        v33.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
        *&v33.__r_.__value_.__l.__data_ = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v27, 1);
        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v27;
        }

        else
        {
          v21 = v27.__r_.__value_.__r.__words[0];
        }

        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v22 = v27.__r_.__value_.__l.__size_;
        }

        v23 = std::string::append(&v33, v21, v22);
        v24 = *&v23->__r_.__value_.__l.__data_;
        v34.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
        *&v34.__r_.__value_.__l.__data_ = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        v25 = std::string::append(&v34, "].");
        v26 = *&v25->__r_.__value_.__l.__data_;
        v35.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v35.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v35);
        exception->__vftable = (MEMORY[0x277D828C8] + 16);
        __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
      }

      *(*a3 + (v7 >> 3)) |= v8 << (v7 & 7);
      ++v7;
    }

    while (a2 != v7);
  }

  return result;
}

void sub_2180B11E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v50 - 57) < 0)
  {
    operator delete(*(v50 - 80));
  }

  if (*(v50 - 89) < 0)
  {
    operator delete(*(v50 - 112));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v50 - 121) < 0)
  {
    operator delete(*(v50 - 144));
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
    if ((v49 & 1) == 0)
    {
LABEL_22:
      v52 = *v47;
      if (*v47)
      {
        *(v47 + 8) = v52;
        operator delete(v52);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v49)
  {
    goto LABEL_22;
  }

  __cxa_free_exception(v48);
  goto LABEL_22;
}

uint64_t MIL::UnPackSubByteVecImpl<MIL::Int4>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = std::vector<MIL::Int4>::vector[abi:ne200100](a3, a2);
  v7 = *a1;
  if (a1[1] - *a1 != vcvtpd_u64_f64(vcvtd_n_f64_u64(4 * a2, 3uLL)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unpacking to sub-byte type vector has invalid number of elements. Sub-byte vector with NumElements requires exactly vec.size() bytes.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  if (!a2)
  {
    v7 = 0;
  }

  v10[0] = v7;
  v10[1] = a2;
  if (a2)
  {
    v8 = 0;
    do
    {
      result = MIL::Util::Span<MIL::Int4,18446744073709551615ul>::ValueAt(v10, v8);
      *(*a3 + v8++) = result;
    }

    while (a2 != v8);
  }

  return result;
}

void sub_2180B1404(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::UnPackSubByteVecImpl<MIL::UInt6>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = std::vector<MIL::UInt6>::vector[abi:ne200100](a3, a2);
  v7 = *a1;
  if (a1[1] - *a1 != vcvtpd_u64_f64(vcvtd_n_f64_u64(6 * a2, 3uLL)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unpacking to sub-byte type vector has invalid number of elements. Sub-byte vector with NumElements requires exactly vec.size() bytes.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  if (!a2)
  {
    v7 = 0;
  }

  v10[0] = v7;
  v10[1] = a2;
  if (a2)
  {
    v8 = 0;
    do
    {
      result = MIL::Util::Span<MIL::UInt6,18446744073709551615ul>::ValueAt(v10, v8);
      *(*a3 + v8++) = result;
    }

    while (a2 != v8);
  }

  return result;
}

void sub_2180B1524(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::UnPackSubByteVecImpl<MIL::UInt4>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = std::vector<MIL::UInt4>::vector[abi:ne200100](a3, a2);
  v7 = *a1;
  if (a1[1] - *a1 != vcvtpd_u64_f64(vcvtd_n_f64_u64(4 * a2, 3uLL)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unpacking to sub-byte type vector has invalid number of elements. Sub-byte vector with NumElements requires exactly vec.size() bytes.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  if (!a2)
  {
    v7 = 0;
  }

  v10[0] = v7;
  v10[1] = a2;
  if (a2)
  {
    v8 = 0;
    do
    {
      result = MIL::Util::Span<MIL::UInt4,18446744073709551615ul>::ValueAt(v10, v8);
      *(*a3 + v8++) = result;
    }

    while (a2 != v8);
  }

  return result;
}

void sub_2180B1640(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::UnPackSubByteVecImpl<MIL::UInt3>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = std::vector<MIL::UInt3>::vector[abi:ne200100](a3, a2);
  v7 = *a1;
  if (a1[1] - *a1 != vcvtpd_u64_f64(vcvtd_n_f64_u64(3 * a2, 3uLL)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unpacking to sub-byte type vector has invalid number of elements. Sub-byte vector with NumElements requires exactly vec.size() bytes.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  if (!a2)
  {
    v7 = 0;
  }

  v10[0] = v7;
  v10[1] = a2;
  if (a2)
  {
    v8 = 0;
    do
    {
      result = MIL::Util::Span<MIL::UInt3,18446744073709551615ul>::ValueAt(v10, v8);
      *(*a3 + v8++) = result;
    }

    while (a2 != v8);
  }

  return result;
}

void sub_2180B175C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::UnPackSubByteVecImpl<MIL::UInt2>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = std::vector<MIL::UInt2>::vector[abi:ne200100](a3, a2);
  v7 = *a1;
  if (a1[1] - *a1 != vcvtpd_u64_f64(vcvtd_n_f64_u64(2 * a2, 3uLL)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unpacking to sub-byte type vector has invalid number of elements. Sub-byte vector with NumElements requires exactly vec.size() bytes.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  if (!a2)
  {
    v7 = 0;
  }

  v10[0] = v7;
  v10[1] = a2;
  if (a2)
  {
    v8 = 0;
    do
    {
      result = MIL::Util::Span<MIL::UInt2,18446744073709551615ul>::ValueAt(v10, v8);
      *(*a3 + v8++) = result;
    }

    while (a2 != v8);
  }

  return result;
}

void sub_2180B1878(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::UnPackSubByteVecImpl<MIL::UInt1>@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = std::vector<MIL::UInt1>::vector[abi:ne200100](a3, a2);
  v7 = *a1;
  if (a1[1] - *a1 != vcvtpd_u64_f64(vcvtd_n_f64_u64(a2, 3uLL)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unpacking to sub-byte type vector has invalid number of elements. Sub-byte vector with NumElements requires exactly vec.size() bytes.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  if (!a2)
  {
    v7 = 0;
  }

  v10[0] = v7;
  v10[1] = a2;
  if (a2)
  {
    v8 = 0;
    do
    {
      result = MIL::Util::Span<MIL::UInt1,18446744073709551615ul>::ValueAt(v10, v8);
      *(*a3 + v8++) = result;
    }

    while (a2 != v8);
  }

  return result;
}

void sub_2180B1990(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *MIL::Int4::Int4(unsigned __int8 *this, unsigned __int8 a2)
{
  if (a2 - 248 >= 0xFFFFFF10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "Int4 value is out of range.");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  *this = a2;
  return this;
}

uint64_t MIL::Int4::FromInt(MIL::Int4 *this)
{
  v2 = 0;
  MIL::Int4::SetInt(&v2, this);
  return v2;
}

_BYTE *MIL::Int4::SetInt(_BYTE *this, int a2)
{
  if ((a2 + 8) >= 0x10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "Int4 value is out of range.");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  *this = a2;
  return this;
}

BOOL MIL::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

BOOL MIL::operator!=(unsigned __int8 *a1, unsigned __int8 *a2)
{
  return *a1 != *a2;
}

{
  return *a1 != *a2;
}

{
  return *a1 != *a2;
}

{
  return *a1 != *a2;
}

{
  return *a1 != *a2;
}

{
  return *a1 != *a2;
}

_BYTE *MIL::UInt6::UInt6(_BYTE *this, unsigned int a2)
{
  if (a2 >= 0x40)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "UInt6 value is out of range.");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  *this = a2;
  return this;
}

uint64_t MIL::UInt6::FromInt(MIL::UInt6 *this)
{
  v2 = 0;
  MIL::UInt6::SetInt(&v2, this);
  return v2;
}

_BYTE *MIL::UInt6::SetInt(_BYTE *this, unsigned int a2)
{
  if (a2 >= 0x40)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "UInt6 value is out of range.");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  *this = a2;
  return this;
}

_BYTE *MIL::UInt4::UInt4(_BYTE *this, unsigned int a2)
{
  if (a2 >= 0x10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "UInt4 value is out of range.");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  *this = a2;
  return this;
}

uint64_t MIL::UInt4::FromInt(MIL::UInt4 *this)
{
  v2 = 0;
  MIL::UInt4::SetInt(&v2, this);
  return v2;
}

_BYTE *MIL::UInt4::SetInt(_BYTE *this, unsigned int a2)
{
  if (a2 >= 0x10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "UInt4 value is out of range.");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  *this = a2;
  return this;
}

_BYTE *MIL::UInt3::UInt3(_BYTE *this, unsigned int a2)
{
  if (a2 >= 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "UInt3 value is out of range.");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  *this = a2;
  return this;
}

uint64_t MIL::UInt3::FromInt(MIL::UInt3 *this)
{
  v2 = 0;
  MIL::UInt3::SetInt(&v2, this);
  return v2;
}

_BYTE *MIL::UInt3::SetInt(_BYTE *this, unsigned int a2)
{
  if (a2 >= 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "UInt3 value is out of range.");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  *this = a2;
  return this;
}

_BYTE *MIL::UInt2::UInt2(_BYTE *this, unsigned int a2)
{
  if (a2 >= 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "UInt2 value is out of range.");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  *this = a2;
  return this;
}

uint64_t MIL::UInt2::FromInt(MIL::UInt2 *this)
{
  v2 = 0;
  MIL::UInt2::SetInt(&v2, this);
  return v2;
}

_BYTE *MIL::UInt2::SetInt(_BYTE *this, unsigned int a2)
{
  if (a2 >= 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "UInt2 value is out of range.");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  *this = a2;
  return this;
}

_BYTE *MIL::UInt1::UInt1(_BYTE *this, unsigned int a2)
{
  if (a2 >= 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "UInt1 value is out of range.");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  *this = a2;
  return this;
}

uint64_t MIL::UInt1::FromInt(MIL::UInt1 *this)
{
  v2 = 0;
  MIL::UInt1::SetInt(&v2, this);
  return v2;
}

_BYTE *MIL::UInt1::SetInt(_BYTE *this, unsigned int a2)
{
  if (a2 >= 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "UInt1 value is out of range.");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  *this = a2;
  return this;
}

void *MIL::PackSubByteVecForNonByteAligned<MIL::UInt6>@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v34.__r_.__value_.__s.__data_[0] = 0;
  result = std::vector<unsigned char>::vector[abi:ne200100](a3, vcvtpd_u64_f64(vcvtd_n_f64_u64(6 * a2, 3uLL)));
  if (v3)
  {
    v7 = 0;
    do
    {
      v8 = *a1;
      if (v8 > 0x3F)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v28, *a1);
        v10 = std::string::insert(&v28, 0, "Value ");
        v11 = *&v10->__r_.__value_.__l.__data_;
        v29.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
        *&v29.__r_.__value_.__l.__data_ = v11;
        v10->__r_.__value_.__l.__size_ = 0;
        v10->__r_.__value_.__r.__words[2] = 0;
        v10->__r_.__value_.__r.__words[0] = 0;
        v12 = std::string::append(&v29, " is outside allowed subbyte datatype range [");
        v13 = *&v12->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = v13;
        v12->__r_.__value_.__l.__size_ = 0;
        v12->__r_.__value_.__r.__words[2] = 0;
        v12->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v27, 0);
        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = &v27;
        }

        else
        {
          v14 = v27.__r_.__value_.__r.__words[0];
        }

        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v27.__r_.__value_.__l.__size_;
        }

        v16 = std::string::append(&v30, v14, size);
        v17 = *&v16->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v17;
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        v18 = std::string::append(&v31, ", ");
        v19 = *&v18->__r_.__value_.__l.__data_;
        v32.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
        *&v32.__r_.__value_.__l.__data_ = v19;
        v18->__r_.__value_.__l.__size_ = 0;
        v18->__r_.__value_.__r.__words[2] = 0;
        v18->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v26, 63);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v26;
        }

        else
        {
          v20 = v26.__r_.__value_.__r.__words[0];
        }

        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = v26.__r_.__value_.__l.__size_;
        }

        v22 = std::string::append(&v32, v20, v21);
        v23 = *&v22->__r_.__value_.__l.__data_;
        v33.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
        *&v33.__r_.__value_.__l.__data_ = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        v24 = std::string::append(&v33, "].");
        v25 = *&v24->__r_.__value_.__l.__data_;
        v34.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&v34.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v34);
        exception->__vftable = (MEMORY[0x277D828C8] + 16);
        __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
      }

      *(*a3 + (v7 >> 3)) |= v8 << (v7 & 6);
      if ((v7 & 6) > 2)
      {
        *(*a3 + (v7 >> 3) + 1) |= *a1 >> (8 - (v7 & 6));
      }

      ++a1;
      v7 += 6;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_2180B2464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v50 - 57) < 0)
  {
    operator delete(*(v50 - 80));
  }

  if (*(v50 - 89) < 0)
  {
    operator delete(*(v50 - 112));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v50 - 121) < 0)
  {
    operator delete(*(v50 - 144));
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
    if ((v49 & 1) == 0)
    {
LABEL_22:
      v52 = *v47;
      if (*v47)
      {
        *(v47 + 8) = v52;
        operator delete(v52);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v49)
  {
    goto LABEL_22;
  }

  __cxa_free_exception(v48);
  goto LABEL_22;
}

void *MIL::PackSubByteVecForNonByteAligned<MIL::UInt3>@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v34.__r_.__value_.__s.__data_[0] = 0;
  result = std::vector<unsigned char>::vector[abi:ne200100](a3, vcvtpd_u64_f64(vcvtd_n_f64_u64(3 * a2, 3uLL)));
  if (v3)
  {
    v7 = 0;
    do
    {
      v8 = *a1;
      if (v8 > 7)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v28, *a1);
        v10 = std::string::insert(&v28, 0, "Value ");
        v11 = *&v10->__r_.__value_.__l.__data_;
        v29.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
        *&v29.__r_.__value_.__l.__data_ = v11;
        v10->__r_.__value_.__l.__size_ = 0;
        v10->__r_.__value_.__r.__words[2] = 0;
        v10->__r_.__value_.__r.__words[0] = 0;
        v12 = std::string::append(&v29, " is outside allowed subbyte datatype range [");
        v13 = *&v12->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = v13;
        v12->__r_.__value_.__l.__size_ = 0;
        v12->__r_.__value_.__r.__words[2] = 0;
        v12->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v27, 0);
        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = &v27;
        }

        else
        {
          v14 = v27.__r_.__value_.__r.__words[0];
        }

        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v27.__r_.__value_.__l.__size_;
        }

        v16 = std::string::append(&v30, v14, size);
        v17 = *&v16->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v17;
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        v18 = std::string::append(&v31, ", ");
        v19 = *&v18->__r_.__value_.__l.__data_;
        v32.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
        *&v32.__r_.__value_.__l.__data_ = v19;
        v18->__r_.__value_.__l.__size_ = 0;
        v18->__r_.__value_.__r.__words[2] = 0;
        v18->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v26, 7);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v26;
        }

        else
        {
          v20 = v26.__r_.__value_.__r.__words[0];
        }

        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = v26.__r_.__value_.__l.__size_;
        }

        v22 = std::string::append(&v32, v20, v21);
        v23 = *&v22->__r_.__value_.__l.__data_;
        v33.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
        *&v33.__r_.__value_.__l.__data_ = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        v24 = std::string::append(&v33, "].");
        v25 = *&v24->__r_.__value_.__l.__data_;
        v34.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&v34.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v34);
        exception->__vftable = (MEMORY[0x277D828C8] + 16);
        __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
      }

      *(*a3 + (v7 >> 3)) |= v8 << (v7 & 7);
      if ((v7 & 7) > 5)
      {
        *(*a3 + (v7 >> 3) + 1) |= *a1 >> (8 - (v7 & 7));
      }

      ++a1;
      v7 += 3;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_2180B2804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v50 - 57) < 0)
  {
    operator delete(*(v50 - 80));
  }

  if (*(v50 - 89) < 0)
  {
    operator delete(*(v50 - 112));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v50 - 121) < 0)
  {
    operator delete(*(v50 - 144));
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
    if ((v49 & 1) == 0)
    {
LABEL_22:
      v52 = *v47;
      if (*v47)
      {
        *(v47 + 8) = v52;
        operator delete(v52);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v49)
  {
    goto LABEL_22;
  }

  __cxa_free_exception(v48);
  goto LABEL_22;
}

uint64_t MIL::Util::Span<MIL::Int4,18446744073709551615ul>::ValueAt(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "index out of bounds.");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  v2 = *(*a1 + ((a2 >> 1) & 0x1FFFFFFFFFFFFFFFLL)) >> (4 * (a2 & 1));
  MIL::Int4::Int4(&v5, (v2 << 28 >> 31) & 0xF0 | v2 & 0xF);
  return v5;
}

void *std::vector<MIL::Int4>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2180B2A38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Util::Span<MIL::UInt6,18446744073709551615ul>::ValueAt(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "index out of bounds.");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  v2 = (6 * a2) & 6;
  v3 = (*a1 + ((6 * a2) >> 3));
  v4 = (*v3 >> v2) & 0x3F;
  if (v2 >= 3)
  {
    v5 = (v2 + 13) & 0x10;
    v6 = xmmword_218583B80;
    v7 = xmmword_218583B90;
    v8 = xmmword_218583BA0;
    v9 = xmmword_218583BB0;
    v10 = xmmword_218583BC0;
    v11 = xmmword_218583BD0;
    v12 = xmmword_218583BE0;
    v13 = xmmword_218583BF0;
    v14 = xmmword_218583C00;
    v15 = xmmword_218583C10;
    v16 = xmmword_218583C20;
    v17 = 0uLL;
    v18 = xmmword_218583C30;
    v19.i64[0] = 0x100000001;
    v19.i64[1] = 0x100000001;
    v20 = vdupq_n_s64(v2 - 3);
    v21.i64[0] = 0x1000000010;
    v21.i64[1] = 0x1000000010;
    v22 = vdupq_n_s64(0x10uLL);
    do
    {
      v23 = v17;
      v24 = v10;
      v25 = v11;
      v26 = v12;
      v27 = v13;
      v28 = v14;
      v29 = v15;
      v17 = vorrq_s8(v17, vuzp1q_s8(vuzp1q_s16(vshlq_u32(v19, v9), vshlq_u32(v19, v8)), vuzp1q_s16(vshlq_u32(v19, v7), vshlq_u32(v19, v6))));
      v30 = v16;
      v15 = vaddq_s64(v15, v22);
      v31 = v18;
      v16 = vaddq_s64(v16, v22);
      v18 = vaddq_s64(v18, v22);
      v14 = vaddq_s64(v14, v22);
      v13 = vaddq_s64(v13, v22);
      v12 = vaddq_s64(v12, v22);
      v11 = vaddq_s64(v11, v22);
      v10 = vaddq_s64(v10, v22);
      v9 = vaddq_s32(v9, v21);
      v8 = vaddq_s32(v8, v21);
      v7 = vaddq_s32(v7, v21);
      v6 = vaddq_s32(v6, v21);
      v5 -= 16;
    }

    while (v5);
    v32 = vbslq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_u64(v31, v20), vcgtq_u64(v30, v20)), vuzp1q_s32(vcgtq_u64(v29, v20), vcgtq_u64(v28, v20))), vuzp1q_s16(vuzp1q_s32(vcgtq_u64(v27, v20), vcgtq_u64(v26, v20)), vuzp1q_s32(vcgtq_u64(v25, v20), vcgtq_u64(v24, v20)))), v23, v17);
    *v32.i8 = vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
    v33 = v32.i64[0] | HIDWORD(v32.i64[0]) | ((v32.i64[0] | HIDWORD(v32.i64[0])) >> 16);
    v4 |= (v3[1] & (v33 | (v33 >> 8))) << (8 - v2);
  }

  MIL::UInt6::UInt6(&v36, v4);
  return v36;
}

void *std::vector<MIL::UInt6>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2180B2CD8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Util::Span<MIL::UInt4,18446744073709551615ul>::ValueAt(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "index out of bounds.");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  MIL::UInt4::UInt4(&v4, (*(*a1 + ((a2 >> 1) & 0x1FFFFFFFFFFFFFFFLL)) >> (4 * (a2 & 1))) & 0xF);
  return v4;
}

void *std::vector<MIL::UInt4>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2180B2DEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Util::Span<MIL::UInt3,18446744073709551615ul>::ValueAt(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "index out of bounds.");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  v2 = (3 * a2) & 7;
  v3 = (*a1 + ((3 * a2) >> 3));
  v4 = (*v3 >> v2) & 7;
  if (v2 >= 6)
  {
    v5 = v2 - ((3 * a2) & 1) - 4;
    v6 = 0x100000000;
    v7 = 0;
    v8 = vdupq_n_s64(v2 - 6);
    v9 = xmmword_218583C30;
    v10 = vdupq_n_s64(2uLL);
    do
    {
      v11 = v7;
      v12 = v9;
      v7 = vorr_s8(v7, vshl_u32(0x100000001, v6));
      v9 = vaddq_s64(v9, v10);
      v6 = vadd_s32(v6, 0x200000002);
      v5 -= 2;
    }

    while (v5);
    v13 = vbsl_s8(vmovn_s64(vcgtq_u64(v12, v8)), v11, v7);
    v4 |= (v3[1] & (v13.i32[0] | v13.i32[1])) << (8 - v2);
  }

  MIL::UInt3::UInt3(&v16, v4);
  return v16;
}

void *std::vector<MIL::UInt3>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2180B2F94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Util::Span<MIL::UInt2,18446744073709551615ul>::ValueAt(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "index out of bounds.");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  MIL::UInt2::UInt2(&v4, (*(*a1 + ((a2 >> 2) & 0x1FFFFFFFFFFFFFFFLL)) >> (2 * (a2 & 3))) & 3);
  return v4;
}

void *std::vector<MIL::UInt2>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2180B30A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Util::Span<MIL::UInt1,18446744073709551615ul>::ValueAt(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "index out of bounds.");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  MIL::UInt1::UInt1(&v4, (*(*a1 + (a2 >> 3)) >> (a2 & 7)) & 1);
  return v4;
}

void *std::vector<MIL::UInt1>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2180B31BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 MIL::Transform::NewOperationOutput::NewOperationOutput(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 MIL::Transform::NewOperationOutput::operator=(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 MIL::Transform::NewOperationOutputList::NewOperationOutputList(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 MIL::Transform::NewOperationOutputList::operator=(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  return result;
}

void *MIL::Transform::NewOperationOutputList::operator[]@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

MIL::Transform::ArgumentDescription *MIL::Transform::ArgumentDescription::ArgumentDescription(MIL::Transform::ArgumentDescription *this, const MIL::Transform::ArgumentDescription *a2)
{
  *this = 0;
  *(this + 6) = -1;
  v4 = *(a2 + 6);
  if (v4 != -1)
  {
    v6 = this;
    (off_2829E90C0[v4])(&v6, a2);
    *(this + 6) = v4;
  }

  return this;
}

uint64_t MIL::Transform::ArgumentDescription::ArgumentDescription(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  v4 = *(a2 + 24);
  if (v4 != -1)
  {
    v6 = a1;
    (off_2829E9128[v4])(&v6, a2);
    *(a1 + 24) = v4;
  }

  return a1;
}

uint64_t MIL::Transform::ArgumentDescription::operator=(uint64_t a1, uint64_t a2)
{
  MIL::Util::OpaqueStorage<32ul,8ul,MIL::Transform::ArgumentDescription::ArgumentDescriptionImpl>::operator=(a1, a2);
  return a1;
}

{
  v3 = *(a2 + 24);
  if (*(a1 + 24) != -1 || v3 != -1)
  {
    if (v3 == -1)
    {
    }

    else
    {
      v6 = a1;
      (off_2829E91F8[v3])(&v6, a1, a2);
    }
  }

  return a1;
}

uint64_t MIL::Util::OpaqueStorage<32ul,8ul,MIL::Transform::ArgumentDescription::ArgumentDescriptionImpl>::operator=(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (*(a1 + 24) != -1 || v3 != -1)
  {
    if (v3 == -1)
    {
    }

    else
    {
      v6 = a1;
      (off_2829E9190[v3])(&v6, a1, a2);
    }
  }

  return a1;
}

void MIL::Transform::ArgumentDescription::~ArgumentDescription(MIL::Transform::ArgumentDescription *this)
{
}

{
}

MIL::Transform::ArgumentDescription *MIL::Transform::ArgumentDescription::ArgumentDescription(MIL::Transform::ArgumentDescription *this, const MIL::Matching::ArgumentView *a2)
{
  MIL::MatchingPrivate::MatchPrivate::GetIRArgumentFromArgumentView(a2, &v7);
  v4 = v7;
  v3 = v8;
  v7 = 0;
  v8 = 0;
  *this = v4;
  *(this + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    v5 = v8;
    *(this + 6) = 1;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    *(this + 6) = 1;
  }

  return this;
}

void MIL::Transform::ArgumentDescription::ArgumentDescription(MIL::Transform::ArgumentDescription *this, const MIL::Matching::OutputView *a2)
{
  Name = MIL::Matching::OutputView::GetName(a2);
  if (*(Name + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *Name, *(Name + 8));
  }

  else
  {
    v3 = *Name;
    __p.__r_.__value_.__r.__words[2] = *(Name + 16);
    *&__p.__r_.__value_.__l.__data_ = v3;
  }

  MIL::IRArgument::Make();
}

void sub_2180B3624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a15)
  {
    MIL::Builder::OperationBuilder::OperationBuilderImpl::RenameInput();
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Util::OpaqueStorage<32ul,8ul,MIL::Transform::ArgumentDescription::ArgumentDescriptionImpl>::OpaqueStorage<std::in_place_type_t<anonymous namespace::Argument> const&,std::unique_ptr<MIL::IRArgument>>(uint64_t a1, uint64_t *a2)
{
  std::shared_ptr<MIL::IRArgument>::shared_ptr[abi:ne200100]<MIL::IRArgument,std::default_delete<MIL::IRArgument>,0>(&v5, a2);
  v3 = v6;
  *a1 = v5;
  *(a1 + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  *(a1 + 24) = 1;
  return a1;
}

__n128 MIL::Transform::ArgumentDescription::ArgumentDescription(MIL::Transform::ArgumentDescription *this, __n128 *a2)
{
  result = *a2;
  *this = *a2;
  *(this + 6) = 2;
  return result;
}

{
  result = *a2;
  *this = *a2;
  *(this + 6) = 2;
  return result;
}

void MIL::Transform::ArgumentDescription::ArgumentDescription(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  MIL::IRArgument::Make();
}

void sub_2180B3770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MIL::Builder::OperationBuilder::OperationBuilderImpl::RenameInput();
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Transform::ArgumentDescription::ArgumentDescription(uint64_t this, int a2)
{
  *this = a2;
  *(this + 8) = 9;
  *(this + 24) = 3;
  return this;
}

{
  *this = a2;
  *(this + 8) = 9;
  *(this + 24) = 3;
  return this;
}

{
  *this = a2;
  *(this + 8) = 10;
  *(this + 24) = 3;
  return this;
}

{
  *this = a2;
  *(this + 8) = 10;
  *(this + 24) = 3;
  return this;
}

{
  *this = a2;
  *(this + 8) = 11;
  *(this + 24) = 3;
  return this;
}

{
  *this = a2;
  *(this + 8) = 11;
  *(this + 24) = 3;
  return this;
}

uint64_t MIL::Transform::ArgumentDescription::ArgumentDescription(uint64_t this, uint64_t a2)
{
  *this = a2;
  *(this + 8) = 12;
  *(this + 24) = 3;
  return this;
}

{
  *this = a2;
  *(this + 8) = 12;
  *(this + 24) = 3;
  return this;
}

{
  *this = a2;
  *(this + 8) = 17;
  *(this + 24) = 4;
  return this;
}

{
  *this = a2;
  *(this + 8) = 17;
  *(this + 24) = 4;
  return this;
}

uint64_t MIL::Transform::ArgumentDescription::ArgumentDescription(uint64_t this, unsigned int a2)
{
  *this = a2;
  *(this + 8) = 14;
  *(this + 24) = 4;
  return this;
}

{
  *this = a2;
  *(this + 8) = 14;
  *(this + 24) = 4;
  return this;
}

{
  *this = a2;
  *(this + 8) = 15;
  *(this + 24) = 4;
  return this;
}

{
  *this = a2;
  *(this + 8) = 15;
  *(this + 24) = 4;
  return this;
}

{
  *this = a2;
  *(this + 8) = 16;
  *(this + 24) = 4;
  return this;
}

{
  *this = a2;
  *(this + 8) = 16;
  *(this + 24) = 4;
  return this;
}

uint64_t MIL::Transform::ArgumentDescription::ArgumentDescription(uint64_t result, __int16 a2)
{
  *result = a2;
  *(result + 24) = 7;
  return result;
}

{
  *result = a2;
  *(result + 24) = 7;
  return result;
}

{
  *result = a2;
  *(result + 24) = 8;
  return result;
}

{
  *result = a2;
  *(result + 24) = 8;
  return result;
}

uint64_t MIL::Transform::ArgumentDescription::ArgumentDescription(uint64_t result, char a2)
{
  *result = a2;
  *(result + 24) = 9;
  return result;
}

{
  *result = a2;
  *(result + 24) = 9;
  return result;
}

{
  *result = a2;
  *(result + 24) = 10;
  return result;
}

{
  *result = a2;
  *(result + 24) = 10;
  return result;
}

uint64_t MIL::Transform::ArgumentDescription::ArgumentDescription(uint64_t this, float a2)
{
  *this = a2;
  *(this + 24) = 5;
  return this;
}

{
  *this = a2;
  *(this + 24) = 5;
  return this;
}

uint64_t MIL::Transform::ArgumentDescription::ArgumentDescription(uint64_t this, double a2)
{
  *this = a2;
  *(this + 24) = 6;
  return this;
}

{
  *this = a2;
  *(this + 24) = 6;
  return this;
}

uint64_t MIL::Transform::ArgumentDescription::ArgumentDescription(uint64_t this, char a2)
{
  *this = a2;
  *(this + 24) = 0;
  return this;
}

{
  *this = a2;
  *(this + 24) = 0;
  return this;
}

MIL::Transform::ArgumentDescription *MIL::Transform::ArgumentDescription::ArgumentDescription(MIL::Transform::ArgumentDescription *this, const char *__s)
{
  *this = 0;
  *(this + 6) = 0;
  v4 = strlen(__s);
  MIL::Transform::ArgumentDescription::ArgumentDescriptionImpl::SetString(this, __s, v4);
  return this;
}

_BYTE *MIL::Transform::ArgumentDescription::ArgumentDescriptionImpl::SetString(uint64_t a1, const void *a2, size_t a3)
{
  if (a3 > 0x17)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 24) = 11;
  return result;
}

void sub_2180B3B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Transform::ArgumentDescription::ArgumentDescription(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  MIL::Transform::ArgumentDescription::ArgumentDescriptionImpl::SetString(a1, a2, v4);
  return a1;
}

uint64_t MIL::Transform::ArgumentDescription::ArgumentDescription(uint64_t a1, const void **a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  MIL::Transform::ArgumentDescription::ArgumentDescriptionImpl::SetString(a1, a2);
  return a1;
}

_BYTE *MIL::Transform::ArgumentDescription::ArgumentDescriptionImpl::SetString(uint64_t a1, const void **a2)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v4 > 0x17)
  {
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  *(a1 + 24) = 11;
  return result;
}

unsigned __int8 *MIL::Transform::ArgumentDescription::ArgumentDescriptionImpl::CreateIRArgument@<X0>(unsigned __int8 *result@<X0>, _anonymous_namespace_ *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = result;
  v8 = *(result + 6);
  switch(v8)
  {
    case 12:
      MIL::IRTensorValueType::MakeScalar();
    case 11:
      MIL::IRTensorValueType::MakeScalar();
    case 10:
      v10 = *result;
      v11 = 25;
      goto LABEL_17;
    case 9:
      v10 = *result;
      v11 = 24;
      goto LABEL_17;
    case 8:
      v10 = *result;
      v11 = 4;
      goto LABEL_17;
    case 7:
      v10 = *result;
      v11 = 7;
      goto LABEL_17;
    case 6:
      v10 = *result;
      v11 = 6;
      goto LABEL_17;
    case 5:
      v10 = *result;
      v11 = 5;
LABEL_17:
    case 4:
      v38 = *(result + 2);
      v12 = *(a3 + 16);
      if (v12)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          v17 = (*(*v12[2] + 24))(v12[2]);
          if (!v17)
          {
            goto LABEL_35;
          }

          v19 = v17;
          {
            goto LABEL_35;
          }

          v20 = (*(*v19 + 88))(v19);
          if (v20 <= 15)
          {
            break;
          }

          switch(v20)
          {
            case 16:
              v15 = 1;
              break;
            case 17:
              v16 = 1;
              break;
            case 18:
              v16 = 1;
              v15 = 1;
              v14 = 1;
LABEL_32:
              v13 = 1;
              break;
          }

LABEL_35:
          v12 = *v12;
          if (!v12)
          {
            goto LABEL_60;
          }
        }

        if (v20 != 14)
        {
          if (v20 == 15)
          {
            v14 = 1;
          }

          goto LABEL_35;
        }

        goto LABEL_32;
      }

      v16 = 0;
      v15 = 0;
      v14 = 0;
      v13 = 0;
LABEL_60:
      if (v38 > 15)
      {
        if (v38 != 16)
        {
          if (v38 != 17)
          {
LABEL_66:
            exception = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(exception, "Unexpected type");
            goto LABEL_101;
          }

LABEL_76:
          if (v16)
          {
            MIL::IRTensorValueType::MakeScalar();
          }

          v34 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v34, &__dst);
          v34->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v34, off_278235F80, MEMORY[0x277D82610]);
        }
      }

      else
      {
        if (v38 == 14)
        {
          if (v13)
          {
            MIL::IRTensorValueType::MakeScalar();
          }
        }

        else if (v38 != 15)
        {
          goto LABEL_66;
        }

        if (v14)
        {
          MIL::IRTensorValueType::MakeScalar();
        }
      }

      if (v15)
      {
        MIL::IRTensorValueType::MakeScalar();
      }

      goto LABEL_76;
    case 3:
      v39 = *(result + 2);
      v21 = *(a3 + 16);
      if (v21)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        while (1)
        {
          v26 = (*(*v21[2] + 24))(v21[2]);
          if (!v26)
          {
            goto LABEL_53;
          }

          v28 = v26;
          {
            goto LABEL_53;
          }

          v29 = (*(*v28 + 88))(v28);
          if (v29 <= 10)
          {
            break;
          }

          switch(v29)
          {
            case 11:
              v24 = 1;
              break;
            case 12:
              v25 = 1;
              break;
            case 18:
              v25 = 1;
              v24 = 1;
              v23 = 1;
LABEL_50:
              v22 = 1;
              break;
          }

LABEL_53:
          v21 = *v21;
          if (!v21)
          {
            goto LABEL_79;
          }
        }

        if (v29 != 9)
        {
          if (v29 == 10)
          {
            v23 = 1;
          }

          goto LABEL_53;
        }

        goto LABEL_50;
      }

      v25 = 0;
      v24 = 0;
      v23 = 0;
      v22 = 0;
LABEL_79:
      if (v39 > 10)
      {
        if (v39 != 11)
        {
          if (v39 != 12)
          {
            goto LABEL_66;
          }

LABEL_95:
          if (v25)
          {
            MIL::IRTensorValueType::MakeScalar();
          }

          v37 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v37, &__dst);
          v37->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v37, off_278235F80, MEMORY[0x277D82610]);
        }
      }

      else
      {
        if (v39 == 9)
        {
          if (v22)
          {
            MIL::IRTensorValueType::MakeScalar();
          }
        }

        else if (v39 != 10)
        {
          goto LABEL_66;
        }

        if (v23)
        {
          MIL::IRTensorValueType::MakeScalar();
        }
      }

      if (v24)
      {
        MIL::IRTensorValueType::MakeScalar();
      }

      goto LABEL_95;
    case 2:
      if (*result < ((a4[1] - *a4) >> 4))
      {
        v30 = (*a4 + 16 * *result);
        v41 = 0;
        v42 = 0;
        Operator = MIL::Builder::OperationBuilder::GetOperator(*v30);
        if ((*(*Operator + 104))(Operator))
        {
          MIL::Builder::OperationBuilder::CreateOperation(*v30);
        }

        OutputType = MIL::Builder::OperationBuilder::GetOutputType(*v30, *(v6 + 1));
        MIL::IRTypedArgument::Make(OutputType, v36);
      }

      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  if (v8 != 1)
  {
    if (!v8)
    {
      MIL::IRTensorValueType::MakeScalar();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Trying to visit a std::variant that is in an invalid state");
LABEL_101:
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v33 = *(result + 1);
  *a5 = *result;
  *(a5 + 8) = v33;
  if (v33)
  {
    atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
  }

  *(a5 + 40) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  return result;
}

void sub_2180B4F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, std::__shared_weak_count *a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a23)
  {
    MIL::Builder::OperationBuilder::OperationBuilderImpl::RenameInput();
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::TransformPrivate::ArgumentDescriptionPrivate::CreateNewOperationOutput@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = this;
  a3[1] = a2;
  return this;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_2829E9008[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN12_GLOBAL__N_113BooleanScalarENS8_8ArgumentENS8_22FromNewOperationOutputENS8_19SignedIntegerScalarENS8_21UnsignedIntegerScalarENS8_11FloatScalarIfEENSE_IdEENSE_IN3MIL4Bf16EEENSE_INSH_4Fp16EEENSE_INSH_9Fp8E4M3FNEEENSE_INSH_7Fp8E5M2EEENS8_19SmallStringConstantENS8_19LargeStringConstantEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILST_1EJS9_SA_SB_SC_SD_SF_SG_SJ_SL_SN_SP_SQ_SR_EEEEEEDcSV_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm12EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN12_GLOBAL__N_113BooleanScalarENS8_8ArgumentENS8_22FromNewOperationOutputENS8_19SignedIntegerScalarENS8_21UnsignedIntegerScalarENS8_11FloatScalarIfEENSE_IdEENSE_IN3MIL4Bf16EEENSE_INSH_4Fp16EEENSE_INSH_9Fp8E4M3FNEEENSE_INSH_7Fp8E5M2EEENS8_19SmallStringConstantENS8_19LargeStringConstantEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILST_1EJS9_SA_SB_SC_SD_SF_SG_SJ_SL_SN_SP_SQ_SR_EEEEEEDcSV_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

_BYTE *anonymous namespace::SmallStringConstant::SmallStringConstant(_BYTE *a1, const void *a2, size_t a3)
{
  *a1 = a3;
  if (a3 >= 0x18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "String is too long");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  memcpy(a1 + 1, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<std::string>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E9080;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void std::__shared_ptr_emplace<std::string>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void anonymous namespace::CreateIRArgumentFromFloatScalar(_anonymous_namespace_ *CanTakeScalar, const MIL::IRTensorValueType *a2, _anonymous_namespace_ *a3, uint64_t a4)
{
  v21 = *&CanTakeScalar;
  v5 = a2;
  v6 = *(a4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      CanTakeScalar = (*(*v6[2] + 24))(v6[2]);
      if (!CanTakeScalar)
      {
        goto LABEL_21;
      }

      v13 = CanTakeScalar;
      if (!CanTakeScalar)
      {
        goto LABEL_21;
      }

      CanTakeScalar = (*(*v13 + 88))(v13);
      if (CanTakeScalar <= 6)
      {
        switch(CanTakeScalar)
        {
          case 4:
            v8 = 1;
            break;
          case 5:
            v9 = 1;
            break;
          case 6:
            v10 = 1;
            break;
        }

        goto LABEL_21;
      }

      if (CanTakeScalar > 23)
      {
        if (CanTakeScalar == 24)
        {
          v12 = 1;
        }

        else if (CanTakeScalar == 25)
        {
          v11 = 1;
        }

        goto LABEL_21;
      }

      if (CanTakeScalar == 7)
      {
        goto LABEL_10;
      }

      if (CanTakeScalar == 18)
      {
        break;
      }

LABEL_21:
      v6 = *v6;
      if (!v6)
      {
        if (v7)
        {
          goto LABEL_30;
        }

        goto LABEL_25;
      }
    }

    v12 = 1;
    v11 = 1;
    v10 = 1;
    v9 = 1;
    v8 = 1;
LABEL_10:
    v7 = 1;
    goto LABEL_21;
  }

  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
LABEL_25:
  if ((v8 & 1) == 0 && (v9 & 1) == 0 && (v10 & 1) == 0 && (v11 & 1) == 0 && (v12 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, &v23);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

LABEL_30:
  if (v5 > 6)
  {
    switch(v5)
    {
      case 7:
        if (v7)
        {
          MIL::IRTensorValueType::MakeScalar();
        }

        LOWORD(v23.__r_.__value_.__l.__data_) = LOWORD(v21);
        Float = MIL::Bf16::GetFloat(&v23);
        break;
      case 25:
        if (v11)
        {
          MIL::IRTensorValueType::MakeScalar();
        }

        v23.__r_.__value_.__s.__data_[0] = LOBYTE(v21);
        Float = MIL::Fp8E5M2::GetFloat(&v23);
        break;
      case 24:
        v16 = a3;
        if (v12)
        {
          MIL::IRTensorValueType::MakeScalar();
        }

        v23.__r_.__value_.__s.__data_[0] = LOBYTE(v21);
        Float = MIL::Fp8E4M3FN::GetFloat(&v23);
        if (v9)
        {
LABEL_57:
        }

LABEL_51:
        v14 = Float;
        if ((v10 & 1) == 0)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      default:
        goto LABEL_59;
    }
  }

  else
  {
    switch(v5)
    {
      case 4:
        if (v8)
        {
        }

        LOWORD(v23.__r_.__value_.__l.__data_) = LOWORD(v21);
        Float = MIL::Fp16::GetFloat(&v23);
        break;
      case 5:
        Float = *&v21;
        break;
      case 6:
        v14 = v21;
        if ((v10 & 1) == 0)
        {
          if (v9)
          {
            v15 = v21;
          }

LABEL_53:
          v18 = v14;
          MIL::Fp16::FromFloat(CanTakeScalar, v18);
        }

LABEL_52:
        MIL::IRTensorValueType::MakeScalar();
      default:
LABEL_59:
        v20 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v20, "Unexpected type");
        __cxa_throw(v20, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
    }
  }

  v16 = a3;
  if (v9)
  {
    goto LABEL_57;
  }

  goto LABEL_51;
}

void sub_2180B5CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  if (__p)
  {
    MIL::Builder::OperationBuilder::OperationBuilderImpl::RenameInput();
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::CanTakeScalar(_anonymous_namespace_ *this, const MIL::IRTensorValueType *a2)
{
  if (MIL::IRTensorValueType::IsScalar(this))
  {
    return 1;
  }

  v4 = (*(*this + 96))(this);
  if (v4[1] - *v4 == 8)
  {
    return (*(*this + 104))(this) ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t anonymous namespace::MakeCantConvertErrorMessage(int a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "Can't convert a scalar of type ", 31);
  MIL::IRDataTypeToString(a1, &__p);
  if ((v16 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v16 & 0x80u) == 0)
  {
    v6 = v16;
  }

  else
  {
    v6 = v15;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, p_p, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " to any of the following types: ", 32);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = 1;
    do
    {
      v10 = v8[2];
      if ((v9 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, ", ", 2);
      }

      (*(*v10 + 56))(&__p, v10);
      if ((v16 & 0x80u) == 0)
      {
        v11 = &__p;
      }

      else
      {
        v11 = __p;
      }

      if ((v16 & 0x80u) == 0)
      {
        v12 = v16;
      }

      else
      {
        v12 = v15;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v11, v12);
      if (v16 < 0)
      {
        operator delete(__p);
      }

      v9 = 0;
      v8 = *v8;
    }

    while (v8);
  }

  std::stringbuf::str();
  v17 = *MEMORY[0x277D82828];
  *(&v17 + *(v17 - 24)) = *(MEMORY[0x277D82828] + 24);
  v18 = MEMORY[0x277D82878] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v19);
  std::ostream::~ostream();
  return MEMORY[0x21CEAFDA0](&v21);
}

void sub_2180B6120(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::ostringstream::~ostringstream(&a8, MEMORY[0x277D82828]);
  MEMORY[0x21CEAFDA0](va);
  _Unwind_Resume(a1);
}

void sub_2180B6254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2180B638C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void **_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN12_GLOBAL__N_113BooleanScalarENS8_8ArgumentENS8_22FromNewOperationOutputENS8_19SignedIntegerScalarENS8_21UnsignedIntegerScalarENS8_11FloatScalarIfEENSE_IdEENSE_IN3MIL4Bf16EEENSE_INSH_4Fp16EEENSE_INSH_9Fp8E4M3FNEEENSE_INSH_7Fp8E5M2EEENS8_19SmallStringConstantENS8_19LargeStringConstantEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISS_LNS0_6_TraitE1EEEEEvRST_OT_EUlS12_E_JRKNS0_6__baseILSW_1EJS9_SA_SB_SC_SD_SF_SG_SJ_SL_SN_SP_SQ_SR_EEEEEEDcS11_DpT0_(void **result, void *a2)
{
  v2 = *result;
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN12_GLOBAL__N_113BooleanScalarENS8_8ArgumentENS8_22FromNewOperationOutputENS8_19SignedIntegerScalarENS8_21UnsignedIntegerScalarENS8_11FloatScalarIfEENSE_IdEENSE_IN3MIL4Bf16EEENSE_INSH_4Fp16EEENSE_INSH_9Fp8E4M3FNEEENSE_INSH_7Fp8E5M2EEENS8_19SmallStringConstantENS8_19LargeStringConstantEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISS_LNS0_6_TraitE1EEEEEvRST_OT_EUlS12_E_JRKNS0_6__baseILSW_1EJS9_SA_SB_SC_SD_SF_SG_SJ_SL_SN_SP_SQ_SR_EEEEEEDcS11_DpT0_(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN12_GLOBAL__N_113BooleanScalarENS8_8ArgumentENS8_22FromNewOperationOutputENS8_19SignedIntegerScalarENS8_21UnsignedIntegerScalarENS8_11FloatScalarIfEENSE_IdEENSE_IN3MIL4Bf16EEENSE_INSH_4Fp16EEENSE_INSH_9Fp8E4M3FNEEENSE_INSH_7Fp8E5M2EEENS8_19SmallStringConstantENS8_19LargeStringConstantEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISS_LNS0_6_TraitE1EEEEEvRST_OT_EUlS12_E_JRKNS0_6__baseILSW_1EJS9_SA_SB_SC_SD_SF_SG_SJ_SL_SN_SP_SQ_SR_EEEEEEDcS11_DpT0_(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN12_GLOBAL__N_113BooleanScalarENS8_8ArgumentENS8_22FromNewOperationOutputENS8_19SignedIntegerScalarENS8_21UnsignedIntegerScalarENS8_11FloatScalarIfEENSE_IdEENSE_IN3MIL4Bf16EEENSE_INSH_4Fp16EEENSE_INSH_9Fp8E4M3FNEEENSE_INSH_7Fp8E5M2EEENS8_19SmallStringConstantENS8_19LargeStringConstantEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISS_LNS0_6_TraitE1EEEEEvRST_OT_EUlS12_E_JRKNS0_6__baseILSW_1EJS9_SA_SB_SC_SD_SF_SG_SJ_SL_SN_SP_SQ_SR_EEEEEEDcS11_DpT0_(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm11EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN12_GLOBAL__N_113BooleanScalarENS8_8ArgumentENS8_22FromNewOperationOutputENS8_19SignedIntegerScalarENS8_21UnsignedIntegerScalarENS8_11FloatScalarIfEENSE_IdEENSE_IN3MIL4Bf16EEENSE_INSH_4Fp16EEENSE_INSH_9Fp8E4M3FNEEENSE_INSH_7Fp8E5M2EEENS8_19SmallStringConstantENS8_19LargeStringConstantEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISS_LNS0_6_TraitE1EEEEEvRST_OT_EUlS12_E_JRKNS0_6__baseILSW_1EJS9_SA_SB_SC_SD_SF_SG_SJ_SL_SN_SP_SQ_SR_EEEEEEDcS11_DpT0_(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

void **_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm12EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN12_GLOBAL__N_113BooleanScalarENS8_8ArgumentENS8_22FromNewOperationOutputENS8_19SignedIntegerScalarENS8_21UnsignedIntegerScalarENS8_11FloatScalarIfEENSE_IdEENSE_IN3MIL4Bf16EEENSE_INSH_4Fp16EEENSE_INSH_9Fp8E4M3FNEEENSE_INSH_7Fp8E5M2EEENS8_19SmallStringConstantENS8_19LargeStringConstantEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISS_LNS0_6_TraitE1EEEEEvRST_OT_EUlS12_E_JRKNS0_6__baseILSW_1EJS9_SA_SB_SC_SD_SF_SG_SJ_SL_SN_SP_SQ_SR_EEEEEEDcS11_DpT0_(void **result, void *a2)
{
  v2 = *result;
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,anonymous namespace::BooleanScalar,anonymous namespace::Argument,anonymous namespace::FromNewOperationOutput,anonymous namespace::SignedIntegerScalar,anonymous namespace::UnsignedIntegerScalar,anonymous namespace::FloatScalar<float>,anonymous namespace::FloatScalar<double>,anonymous namespace::FloatScalar<MIL::Bf16>,anonymous namespace::FloatScalar<MIL::Fp16>,anonymous namespace::FloatScalar<MIL::Fp8E4M3FN>,anonymous namespace::FloatScalar<MIL::Fp8E5M2>,anonymous namespace::SmallStringConstant,anonymous namespace::LargeStringConstant> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN12_GLOBAL__N_113BooleanScalarENS8_8ArgumentENS8_22FromNewOperationOutputENS8_19SignedIntegerScalarENS8_21UnsignedIntegerScalarENS8_11FloatScalarIfEENSE_IdEENSE_IN3MIL4Bf16EEENSE_INSH_4Fp16EEENSE_INSH_9Fp8E4M3FNEEENSE_INSH_7Fp8E5M2EEENS8_19SmallStringConstantENS8_19LargeStringConstantEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISS_LNS0_6_TraitE1EEEEEvOT_EUlRS10_OT0_E_JRNS0_6__baseILSW_1EJS9_SA_SB_SC_SD_SF_SG_SJ_SL_SN_SP_SQ_SR_EEERKS18_EEEDcS10_DpT0_(uint64_t *result, _BYTE *a2, _BYTE *a3)
{
  v4 = *result;
  if (*(*result + 24))
  {
    *v4 = *a3;
    *(v4 + 24) = 0;
  }

  else
  {
    *a2 = *a3;
  }

  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN12_GLOBAL__N_113BooleanScalarENS8_8ArgumentENS8_22FromNewOperationOutputENS8_19SignedIntegerScalarENS8_21UnsignedIntegerScalarENS8_11FloatScalarIfEENSE_IdEENSE_IN3MIL4Bf16EEENSE_INSH_4Fp16EEENSE_INSH_9Fp8E4M3FNEEENSE_INSH_7Fp8E5M2EEENS8_19SmallStringConstantENS8_19LargeStringConstantEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISS_LNS0_6_TraitE1EEEEEvOT_EUlRS10_OT0_E_JRNS0_6__baseILSW_1EJS9_SA_SB_SC_SD_SF_SG_SJ_SL_SN_SP_SQ_SR_EEERKS18_EEEDcS10_DpT0_(uint64_t *a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  if (*(*a1 + 24) == 1)
  {
    v6 = *a3;
    v5 = a3[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = a2[1];
    *a2 = v6;
    a2[1] = v5;
    if (v7)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else
  {
    v8 = a3[1];
    *v4 = *a3;
    *(v4 + 8) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    *(v4 + 24) = 1;
  }
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN12_GLOBAL__N_113BooleanScalarENS8_8ArgumentENS8_22FromNewOperationOutputENS8_19SignedIntegerScalarENS8_21UnsignedIntegerScalarENS8_11FloatScalarIfEENSE_IdEENSE_IN3MIL4Bf16EEENSE_INSH_4Fp16EEENSE_INSH_9Fp8E4M3FNEEENSE_INSH_7Fp8E5M2EEENS8_19SmallStringConstantENS8_19LargeStringConstantEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISS_LNS0_6_TraitE1EEEEEvOT_EUlRS10_OT0_E_JRNS0_6__baseILSW_1EJS9_SA_SB_SC_SD_SF_SG_SJ_SL_SN_SP_SQ_SR_EEERKS18_EEEDcS10_DpT0_(uint64_t *a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  if (*(*a1 + 24) == 2)
  {
    result = *a3;
    *a2 = *a3;
  }

  else
  {
    result = *a3;
    *v4 = *a3;
    *(v4 + 24) = 2;
  }

  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3ELm3EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN12_GLOBAL__N_113BooleanScalarENS8_8ArgumentENS8_22FromNewOperationOutputENS8_19SignedIntegerScalarENS8_21UnsignedIntegerScalarENS8_11FloatScalarIfEENSE_IdEENSE_IN3MIL4Bf16EEENSE_INSH_4Fp16EEENSE_INSH_9Fp8E4M3FNEEENSE_INSH_7Fp8E5M2EEENS8_19SmallStringConstantENS8_19LargeStringConstantEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISS_LNS0_6_TraitE1EEEEEvOT_EUlRS10_OT0_E_JRNS0_6__baseILSW_1EJS9_SA_SB_SC_SD_SF_SG_SJ_SL_SN_SP_SQ_SR_EEERKS18_EEEDcS10_DpT0_(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  if (*(*a1 + 24) == 3)
  {
    v5 = *a3;
    *(a2 + 8) = *(a3 + 2);
    *a2 = v5;
  }

  else
  {
    result = *a3;
    *v4 = *a3;
    *(v4 + 24) = 3;
  }

  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4ELm4EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN12_GLOBAL__N_113BooleanScalarENS8_8ArgumentENS8_22FromNewOperationOutputENS8_19SignedIntegerScalarENS8_21UnsignedIntegerScalarENS8_11FloatScalarIfEENSE_IdEENSE_IN3MIL4Bf16EEENSE_INSH_4Fp16EEENSE_INSH_9Fp8E4M3FNEEENSE_INSH_7Fp8E5M2EEENS8_19SmallStringConstantENS8_19LargeStringConstantEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISS_LNS0_6_TraitE1EEEEEvOT_EUlRS10_OT0_E_JRNS0_6__baseILSW_1EJS9_SA_SB_SC_SD_SF_SG_SJ_SL_SN_SP_SQ_SR_EEERKS18_EEEDcS10_DpT0_(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  if (*(*a1 + 24) == 4)
  {
    v5 = *a3;
    *(a2 + 8) = *(a3 + 2);
    *a2 = v5;
  }

  else
  {
    result = *a3;
    *v4 = *a3;
    *(v4 + 24) = 4;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5ELm5EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN12_GLOBAL__N_113BooleanScalarENS8_8ArgumentENS8_22FromNewOperationOutputENS8_19SignedIntegerScalarENS8_21UnsignedIntegerScalarENS8_11FloatScalarIfEENSE_IdEENSE_IN3MIL4Bf16EEENSE_INSH_4Fp16EEENSE_INSH_9Fp8E4M3FNEEENSE_INSH_7Fp8E5M2EEENS8_19SmallStringConstantENS8_19LargeStringConstantEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISS_LNS0_6_TraitE1EEEEEvOT_EUlRS10_OT0_E_JRNS0_6__baseILSW_1EJS9_SA_SB_SC_SD_SF_SG_SJ_SL_SN_SP_SQ_SR_EEERKS18_EEEDcS10_DpT0_(uint64_t *result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  if (*(*result + 24) == 5)
  {
    *a2 = *a3;
  }

  else
  {
    *v4 = *a3;
    v4[6] = 5;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm6ELm6EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN12_GLOBAL__N_113BooleanScalarENS8_8ArgumentENS8_22FromNewOperationOutputENS8_19SignedIntegerScalarENS8_21UnsignedIntegerScalarENS8_11FloatScalarIfEENSE_IdEENSE_IN3MIL4Bf16EEENSE_INSH_4Fp16EEENSE_INSH_9Fp8E4M3FNEEENSE_INSH_7Fp8E5M2EEENS8_19SmallStringConstantENS8_19LargeStringConstantEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISS_LNS0_6_TraitE1EEEEEvOT_EUlRS10_OT0_E_JRNS0_6__baseILSW_1EJS9_SA_SB_SC_SD_SF_SG_SJ_SL_SN_SP_SQ_SR_EEERKS18_EEEDcS10_DpT0_(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 24) == 6)
  {
    *a2 = *a3;
  }

  else
  {
    *v4 = *a3;
    *(v4 + 24) = 6;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm7ELm7EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN12_GLOBAL__N_113BooleanScalarENS8_8ArgumentENS8_22FromNewOperationOutputENS8_19SignedIntegerScalarENS8_21UnsignedIntegerScalarENS8_11FloatScalarIfEENSE_IdEENSE_IN3MIL4Bf16EEENSE_INSH_4Fp16EEENSE_INSH_9Fp8E4M3FNEEENSE_INSH_7Fp8E5M2EEENS8_19SmallStringConstantENS8_19LargeStringConstantEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISS_LNS0_6_TraitE1EEEEEvOT_EUlRS10_OT0_E_JRNS0_6__baseILSW_1EJS9_SA_SB_SC_SD_SF_SG_SJ_SL_SN_SP_SQ_SR_EEERKS18_EEEDcS10_DpT0_(uint64_t *result, _WORD *a2, _WORD *a3)
{
  v4 = *result;
  if (*(*result + 24) == 7)
  {
    *a2 = *a3;
  }

  else
  {
    *v4 = *a3;
    *(v4 + 24) = 7;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm8ELm8EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN12_GLOBAL__N_113BooleanScalarENS8_8ArgumentENS8_22FromNewOperationOutputENS8_19SignedIntegerScalarENS8_21UnsignedIntegerScalarENS8_11FloatScalarIfEENSE_IdEENSE_IN3MIL4Bf16EEENSE_INSH_4Fp16EEENSE_INSH_9Fp8E4M3FNEEENSE_INSH_7Fp8E5M2EEENS8_19SmallStringConstantENS8_19LargeStringConstantEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISS_LNS0_6_TraitE1EEEEEvOT_EUlRS10_OT0_E_JRNS0_6__baseILSW_1EJS9_SA_SB_SC_SD_SF_SG_SJ_SL_SN_SP_SQ_SR_EEERKS18_EEEDcS10_DpT0_(uint64_t *result, _WORD *a2, _WORD *a3)
{
  v4 = *result;
  if (*(*result + 24) == 8)
  {
    *a2 = *a3;
  }

  else
  {
    *v4 = *a3;
    *(v4 + 24) = 8;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm9ELm9EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN12_GLOBAL__N_113BooleanScalarENS8_8ArgumentENS8_22FromNewOperationOutputENS8_19SignedIntegerScalarENS8_21UnsignedIntegerScalarENS8_11FloatScalarIfEENSE_IdEENSE_IN3MIL4Bf16EEENSE_INSH_4Fp16EEENSE_INSH_9Fp8E4M3FNEEENSE_INSH_7Fp8E5M2EEENS8_19SmallStringConstantENS8_19LargeStringConstantEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISS_LNS0_6_TraitE1EEEEEvOT_EUlRS10_OT0_E_JRNS0_6__baseILSW_1EJS9_SA_SB_SC_SD_SF_SG_SJ_SL_SN_SP_SQ_SR_EEERKS18_EEEDcS10_DpT0_(uint64_t *result, _BYTE *a2, _BYTE *a3)
{
  v4 = *result;
  if (*(*result + 24) == 9)
  {
    *a2 = *a3;
  }

  else
  {
    *v4 = *a3;
    *(v4 + 24) = 9;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm10ELm10EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN12_GLOBAL__N_113BooleanScalarENS8_8ArgumentENS8_22FromNewOperationOutputENS8_19SignedIntegerScalarENS8_21UnsignedIntegerScalarENS8_11FloatScalarIfEENSE_IdEENSE_IN3MIL4Bf16EEENSE_INSH_4Fp16EEENSE_INSH_9Fp8E4M3FNEEENSE_INSH_7Fp8E5M2EEENS8_19SmallStringConstantENS8_19LargeStringConstantEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISS_LNS0_6_TraitE1EEEEEvOT_EUlRS10_OT0_E_JRNS0_6__baseILSW_1EJS9_SA_SB_SC_SD_SF_SG_SJ_SL_SN_SP_SQ_SR_EEERKS18_EEEDcS10_DpT0_(uint64_t *result, _BYTE *a2, _BYTE *a3)
{
  v4 = *result;
  if (*(*result + 24) == 10)
  {
    *a2 = *a3;
  }

  else
  {
    *v4 = *a3;
    *(v4 + 24) = 10;
  }

  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm11ELm11EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN12_GLOBAL__N_113BooleanScalarENS8_8ArgumentENS8_22FromNewOperationOutputENS8_19SignedIntegerScalarENS8_21UnsignedIntegerScalarENS8_11FloatScalarIfEENSE_IdEENSE_IN3MIL4Bf16EEENSE_INSH_4Fp16EEENSE_INSH_9Fp8E4M3FNEEENSE_INSH_7Fp8E5M2EEENS8_19SmallStringConstantENS8_19LargeStringConstantEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISS_LNS0_6_TraitE1EEEEEvOT_EUlRS10_OT0_E_JRNS0_6__baseILSW_1EJS9_SA_SB_SC_SD_SF_SG_SJ_SL_SN_SP_SQ_SR_EEERKS18_EEEDcS10_DpT0_(uint64_t *a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  if (*(*a1 + 24) == 11)
  {
    result = *a3;
    a2[1].n128_u64[0] = a3[1].n128_u64[0];
    *a2 = result;
  }

  else
  {
    result = *a3;
    v4[1].n128_u64[0] = a3[1].n128_u64[0];
    *v4 = result;
    v4[1].n128_u32[2] = 11;
  }

  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm12ELm12EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN12_GLOBAL__N_113BooleanScalarENS8_8ArgumentENS8_22FromNewOperationOutputENS8_19SignedIntegerScalarENS8_21UnsignedIntegerScalarENS8_11FloatScalarIfEENSE_IdEENSE_IN3MIL4Bf16EEENSE_INSH_4Fp16EEENSE_INSH_9Fp8E4M3FNEEENSE_INSH_7Fp8E5M2EEENS8_19SmallStringConstantENS8_19LargeStringConstantEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISS_LNS0_6_TraitE1EEEEEvOT_EUlRS10_OT0_E_JRNS0_6__baseILSW_1EJS9_SA_SB_SC_SD_SF_SG_SJ_SL_SN_SP_SQ_SR_EEERKS18_EEEDcS10_DpT0_(uint64_t *a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  if (*(*a1 + 24) == 12)
  {
    v6 = *a3;
    v5 = a3[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = a2[1];
    *a2 = v6;
    a2[1] = v5;
    if (v7)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else
  {
    v8 = a3[1];
    *v4 = *a3;
    *(v4 + 8) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    *(v4 + 24) = 12;
  }
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN12_GLOBAL__N_113BooleanScalarENS8_8ArgumentENS8_22FromNewOperationOutputENS8_19SignedIntegerScalarENS8_21UnsignedIntegerScalarENS8_11FloatScalarIfEENSE_IdEENSE_IN3MIL4Bf16EEENSE_INSH_4Fp16EEENSE_INSH_9Fp8E4M3FNEEENSE_INSH_7Fp8E5M2EEENS8_19SmallStringConstantENS8_19LargeStringConstantEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISS_LNS0_6_TraitE1EEEEEvOT_EUlRSY_OT0_E_JRNS0_6__baseILSW_1EJS9_SA_SB_SC_SD_SF_SG_SJ_SL_SN_SP_SQ_SR_EEEOS16_EEEDcSY_DpT0_(uint64_t *result, _BYTE *a2, _BYTE *a3)
{
  v4 = *result;
  if (*(*result + 24))
  {
    *v4 = *a3;
    *(v4 + 24) = 0;
  }

  else
  {
    *a2 = *a3;
  }

  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN12_GLOBAL__N_113BooleanScalarENS8_8ArgumentENS8_22FromNewOperationOutputENS8_19SignedIntegerScalarENS8_21UnsignedIntegerScalarENS8_11FloatScalarIfEENSE_IdEENSE_IN3MIL4Bf16EEENSE_INSH_4Fp16EEENSE_INSH_9Fp8E4M3FNEEENSE_INSH_7Fp8E5M2EEENS8_19SmallStringConstantENS8_19LargeStringConstantEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISS_LNS0_6_TraitE1EEEEEvOT_EUlRSY_OT0_E_JRNS0_6__baseILSW_1EJS9_SA_SB_SC_SD_SF_SG_SJ_SL_SN_SP_SQ_SR_EEEOS16_EEEDcSY_DpT0_(uint64_t *a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  if (*(*a1 + 24) == 1)
  {
    result = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    v6 = a2->n128_u64[1];
    *a2 = result;
    if (v6)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    result = *a3;
    *v4 = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    *(v4 + 24) = 1;
  }

  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN12_GLOBAL__N_113BooleanScalarENS8_8ArgumentENS8_22FromNewOperationOutputENS8_19SignedIntegerScalarENS8_21UnsignedIntegerScalarENS8_11FloatScalarIfEENSE_IdEENSE_IN3MIL4Bf16EEENSE_INSH_4Fp16EEENSE_INSH_9Fp8E4M3FNEEENSE_INSH_7Fp8E5M2EEENS8_19SmallStringConstantENS8_19LargeStringConstantEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISS_LNS0_6_TraitE1EEEEEvOT_EUlRSY_OT0_E_JRNS0_6__baseILSW_1EJS9_SA_SB_SC_SD_SF_SG_SJ_SL_SN_SP_SQ_SR_EEEOS16_EEEDcSY_DpT0_(uint64_t *a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  if (*(*a1 + 24) == 2)
  {
    result = *a3;
    *a2 = *a3;
  }

  else
  {
    result = *a3;
    *v4 = *a3;
    *(v4 + 24) = 2;
  }

  return result;
}