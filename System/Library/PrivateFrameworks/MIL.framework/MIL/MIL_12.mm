void sub_218061528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7 - 96);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void MIL::ParserContext::InitializeMILKeywords(MIL::ParserContext *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v5, "tensor_buffer");
  MIL::ParserContext::AddKeyword(this, 0x1Bu, 3, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "circular_buffer");
  MIL::ParserContext::AddKeyword(this, 0x1Du, 3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v3, "pixel_buffer");
  MIL::ParserContext::AddKeyword(this, 0x1Cu, 3, &v3);
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v2, "state");
  MIL::ParserContext::AddKeyword(this, 0x1Eu, 4, &v2);
  if (SHIBYTE(v2.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v2.__r_.__value_.__l.__data_);
  }
}

void sub_218061654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::anonymous namespace::InitializeBlockFirstSet@<X0>(uint64_t a1@<X8>)
{
  v6[0] = 5;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, v6, 1);
  v5 = 7;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v6, &v5, 1);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v6);
  return std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
}

void sub_21806172C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(va);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

uint64_t MIL::anonymous namespace::InitializeTypeFirstSet@<X0>(MIL::_anonymous_namespace_ *this@<X0>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v9[0] = xmmword_218588750;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(a2, v9, 4);
  if ((*(*this + 88))(this) >= 2)
  {
    v9[2] = xmmword_218588780;
    v9[3] = unk_218588790;
    v10[0] = xmmword_2185887A0;
    *(v10 + 12) = *(&xmmword_2185887A0 + 12);
    v9[0] = xmmword_218588760;
    v9[1] = unk_218588770;
    std::unordered_set<MIL::Scanner::TokenType>::unordered_set(&v7, v9, 23);
    std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(a2, v6);
    std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v6);
    std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&v7);
  }

  if ((*(*this + 88))(this) >= 3)
  {
    v7 = 0x1C0000001BLL;
    v8 = 29;
    std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v6, &v7, 3);
    std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(a2, v9);
    std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v9);
    std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v6);
  }

  result = (*(*this + 88))(this);
  if (result >= 4)
  {
    LODWORD(v7) = 30;
    std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v6, &v7, 1);
    std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(a2, v9);
    std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v9);
    return std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v6);
  }

  return result;
}

void sub_21806194C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&a9);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v9);
  _Unwind_Resume(a1);
}

uint64_t MIL::anonymous namespace::InitializeOpFirstSet@<X0>(MIL::_anonymous_namespace_ *this@<X0>, uint64_t a2@<X8>)
{
  v5 = 54;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v6, &v5, 1);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v6);
  return std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
}

void sub_2180619FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(va);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

uint64_t MIL::anonymous namespace::InitializeTensorValFirstSet@<X0>(uint64_t a1@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v8[2] = xmmword_218588780;
  v8[3] = unk_218588790;
  v9[0] = xmmword_2185887A0;
  *(v9 + 12) = *(&xmmword_2185887A0 + 12);
  v8[0] = xmmword_218588760;
  v8[1] = unk_218588770;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v5, v8, 23);
  v6 = xmmword_2185887BC;
  v7 = 0x1600000015;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v8, &v6, 6);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v8);
  return std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v5);
}

void sub_218061AFC(_Unwind_Exception *a1, uint64_t a2, ...)
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
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(va1);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t MIL::anonymous namespace::InitializeIValueFirstSet@<X0>(uint64_t a1@<X8>)
{
  v6[0] = 7;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, v6, 1);
  v5[0] = 1;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v6, v5, 1);
  v11 = 5;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v5, &v11, 1);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v5);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v10);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v6);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v9);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  return std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v8);
}

void sub_218061C00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  va_copy(va3, va2);
  v16 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  v19 = va_arg(va3, void);
  v20 = va_arg(va3, void);
  v21 = va_arg(va3, void);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(va);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v2 - 64);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(va1);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v2 - 104);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(va2);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(va3);
  _Unwind_Resume(a1);
}

uint64_t MIL::anonymous namespace::InitializeArgumentFirstSet@<X0>(MIL::_anonymous_namespace_ *this@<X0>, uint64_t a2@<X8>)
{
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v6);
  return std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
}

void sub_218061CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&a9);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&a14);
  _Unwind_Resume(a1);
}

uint64_t *MIL::anonymous namespace::InitializeIDFirstSet@<X0>(MIL::_anonymous_namespace_ *this@<X0>, void *a2@<X8>)
{
  v6 = 54;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(a2, &v6, 1);
  if ((*(*this + 88))(this) <= 2)
  {
    v6 = 27;
    std::__hash_table<MIL::Scanner::TokenType,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,std::allocator<MIL::Scanner::TokenType>>::__emplace_unique_key_args<MIL::Scanner::TokenType,MIL::Scanner::TokenType>(a2, &v6);
  }

  if ((*(*this + 88))(this) <= 2)
  {
    v6 = 29;
    std::__hash_table<MIL::Scanner::TokenType,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,std::allocator<MIL::Scanner::TokenType>>::__emplace_unique_key_args<MIL::Scanner::TokenType,MIL::Scanner::TokenType>(a2, &v6);
  }

  if ((*(*this + 88))(this) <= 2)
  {
    v6 = 28;
    std::__hash_table<MIL::Scanner::TokenType,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,std::allocator<MIL::Scanner::TokenType>>::__emplace_unique_key_args<MIL::Scanner::TokenType,MIL::Scanner::TokenType>(a2, &v6);
  }

  result = (*(*this + 88))(this);
  if (result <= 3)
  {
    v6 = 30;
    return std::__hash_table<MIL::Scanner::TokenType,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,std::allocator<MIL::Scanner::TokenType>>::__emplace_unique_key_args<MIL::Scanner::TokenType,MIL::Scanner::TokenType>(a2, &v6);
  }

  return result;
}

void MIL::ParserContext::SetConstexprVariableValue(uint64_t a1, const void **a2, const void **a3)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 3408), a2);
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  v7 = v4[6];
  v4[5] = v6;
  v4[6] = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

const void **MIL::ParserContext::GetConstexprVariableValue@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 3408), a2);
  if (result)
  {
    v5 = result[6];
    *a3 = result[5];
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

std::string *MIL::ParserContext::AddKeyword(uint64_t a1, unsigned int a2, int a3, const std::string *a4)
{
  v8 = a2;
  v9 = &v8;
  *(std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::__emplace_unique_key_args<MIL::Scanner::TokenType,std::piecewise_construct_t const&,std::tuple<MIL::Scanner::TokenType const&>,std::tuple<>>((a1 + 3464), &v8) + 5) = a3;
  v9 = &v8;
  v6 = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,std::string>>>::__emplace_unique_key_args<MIL::Scanner::TokenType,std::piecewise_construct_t const&,std::tuple<MIL::Scanner::TokenType const&>,std::tuple<>>((a1 + 3504), &v8);
  return std::string::operator=(v6 + 1, a4);
}

std::string *MIL::ParserContext::GetFallbackIDForKeyword@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, std::string *a4@<X8>)
{
  v9 = a2;
  a4->__r_.__value_.__s.__data_[0] = 0;
  a4[1].__r_.__value_.__s.__data_[0] = 0;
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>((a1 + 3464), &v9);
  if (result)
  {
    v10 = &v9;
    result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::__emplace_unique_key_args<MIL::Scanner::TokenType,std::piecewise_construct_t const&,std::tuple<MIL::Scanner::TokenType const&>,std::tuple<>>((a1 + 3464), &v9);
    if (SHIDWORD(result->__r_.__value_.__r.__words[2]) > a3)
    {
      v10 = &v9;
      v8 = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,std::string>>>::__emplace_unique_key_args<MIL::Scanner::TokenType,std::piecewise_construct_t const&,std::tuple<MIL::Scanner::TokenType const&>,std::tuple<>>((a1 + 3504), &v9);
      return std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>(a4, v8 + 1);
    }
  }

  return result;
}

void sub_218062324(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 24) & 1) != 0 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(this, a2);
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void MIL::ParserContext::SetCurrentOperator(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 3448) = v2;
  v4 = *(a1 + 3456);
  *(a1 + 3456) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t MIL::ParserContext::GetCurrentOperator@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 3456);
  *a2 = *(this + 3448);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t std::unordered_set<MIL::Scanner::TokenType>::unordered_set(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      std::__hash_table<MIL::Scanner::TokenType,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,std::allocator<MIL::Scanner::TokenType>>::__emplace_unique_key_args<MIL::Scanner::TokenType,MIL::Scanner::TokenType const&>(a1, a2++);
      v5 -= 4;
    }

    while (v5);
  }

  return a1;
}

uint64_t *std::__hash_table<MIL::Scanner::TokenType,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,std::allocator<MIL::Scanner::TokenType>>::__emplace_unique_key_args<MIL::Scanner::TokenType,MIL::Scanner::TokenType const&>(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

uint64_t *MIL::anonymous namespace::Combine@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  return std::__set_union[abi:ne200100]<std::__less<void,void> &,std::__hash_const_iterator<std::__hash_node<MIL::Scanner::TokenType,void *> *>,std::__hash_const_iterator<std::__hash_node<MIL::Scanner::TokenType,void *> *>,std::__hash_const_iterator<std::__hash_node<MIL::Scanner::TokenType,void *> *>,std::__hash_const_iterator<std::__hash_node<MIL::Scanner::TokenType,void *> *>,std::insert_iterator<std::unordered_set<MIL::Scanner::TokenType>>>(*(a1 + 16), 0, *(a2 + 16), 0, a3, 0, &v4);
}

uint64_t *std::__set_union[abi:ne200100]<std::__less<void,void> &,std::__hash_const_iterator<std::__hash_node<MIL::Scanner::TokenType,void *> *>,std::__hash_const_iterator<std::__hash_node<MIL::Scanner::TokenType,void *> *>,std::__hash_const_iterator<std::__hash_node<MIL::Scanner::TokenType,void *> *>,std::__hash_const_iterator<std::__hash_node<MIL::Scanner::TokenType,void *> *>,std::insert_iterator<std::unordered_set<MIL::Scanner::TokenType>>>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, unsigned int *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t **a7@<X8>)
{
  v10 = result;
  if (result == a2)
  {
LABEL_11:
    if (a3 != a4)
    {
      do
      {
        result = std::__hash_table<MIL::Scanner::TokenType,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,std::allocator<MIL::Scanner::TokenType>>::__emplace_unique_key_args<MIL::Scanner::TokenType,MIL::Scanner::TokenType const&>(a5, a3 + 4);
        a3 = *a3;
      }

      while (a3 != a4);
      v12 = v10;
      goto LABEL_17;
    }

    v12 = v10;
  }

  else
  {
    v12 = a2;
    while (a3 != a4)
    {
      v13 = a3[4];
      v14 = *(v10 + 4);
      if (v13 >= v14)
      {
        if (v14 >= v13)
        {
          a3 = *a3;
        }

        result = std::__hash_table<MIL::Scanner::TokenType,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,std::allocator<MIL::Scanner::TokenType>>::__emplace_unique_key_args<MIL::Scanner::TokenType,MIL::Scanner::TokenType const&>(a5, v10 + 4);
        v10 = *v10;
      }

      else
      {
        result = std::__hash_table<MIL::Scanner::TokenType,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,std::allocator<MIL::Scanner::TokenType>>::__emplace_unique_key_args<MIL::Scanner::TokenType,MIL::Scanner::TokenType const&>(a5, a3 + 4);
        a3 = *a3;
      }

      a6 = *result;
      if (v10 == v12)
      {
        v10 = v12;
        goto LABEL_11;
      }
    }

    if (v10 != v12)
    {
      do
      {
        result = std::__hash_table<MIL::Scanner::TokenType,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,std::allocator<MIL::Scanner::TokenType>>::__emplace_unique_key_args<MIL::Scanner::TokenType,MIL::Scanner::TokenType const&>(a5, v10 + 4);
        v10 = *v10;
      }

      while (v10 != v12);
LABEL_17:
      a6 = *result;
    }
  }

  *a7 = v12;
  a7[1] = a4;
  a7[2] = a5;
  a7[3] = a6;
  return result;
}

uint64_t *std::__hash_table<MIL::Scanner::TokenType,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,std::allocator<MIL::Scanner::TokenType>>::__emplace_unique_key_args<MIL::Scanner::TokenType,MIL::Scanner::TokenType>(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

uint64_t std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,std::string>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::__emplace_unique_key_args<MIL::Scanner::TokenType,std::piecewise_construct_t const&,std::tuple<MIL::Scanner::TokenType const&>,std::tuple<>>(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

uint64_t *std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,std::string>>>::__emplace_unique_key_args<MIL::Scanner::TokenType,std::piecewise_construct_t const&,std::tuple<MIL::Scanner::TokenType const&>,std::tuple<>>(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<MIL::Scanner::TokenType,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t MIL::ParseError::ParseError(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *__p = *a3;
  v7 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  MIL::ParseResult::ParseResult(v9, &v8, a4, __p);
  MIL::ParseError::ParseError(a1, v9);
  MIL::ParseResult::~ParseResult(v9);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(&v8 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
  }

  return a1;
}

{
  v8 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *__p = *a3;
  v7 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  MIL::ParseResult::ParseResult(v9, &v8, a4, __p);
  MIL::ParseError::ParseError(a1, v9);
  MIL::ParseResult::~ParseResult(v9);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(&v8 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
  }

  return a1;
}

void sub_21806312C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, char a19)
{
  MIL::ParseResult::~ParseResult(&a19);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::ParseError::ParseError(uint64_t a1, uint64_t a2)
{
  MIL::MILResult::GetMessageWithLocation(a2, &__p);
  MIL::MILErrorWithResult::MILErrorWithResult(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_2829E6258;
  *(a1 + 16) = &unk_2829E6218;
  *(a1 + 24) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(a2 + 24);
  *(a1 + 56) = *(a2 + 40);
  *(a1 + 40) = v4;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(a1 + 16) = &unk_2829E62C0;
  *(a1 + 64) = *(a2 + 48);
  return a1;
}

void sub_218063240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2180632F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, char a19)
{
  MIL::ParseResult::~ParseResult(&a19);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

void MIL::ParseError::~ParseError(std::runtime_error *this)
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

void MIL::ParseResult::~ParseResult(void **this)
{
  MIL::MILResult::~MILResult(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::ParseResult::ParseResult(MIL::ParseResult *this)
{
  result = MIL::MILResult::MILResult(this);
  *result = &unk_2829E62C0;
  *(result + 48) = 2;
  return result;
}

{
  result = MIL::MILResult::MILResult(this);
  *result = &unk_2829E62C0;
  *(result + 48) = 2;
  return result;
}

uint64_t MIL::ParseResult::ParseResult(uint64_t a1, __int128 *a2, int a3, uint64_t a4)
{
  v9 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *__p = *a4;
  v8 = *(a4 + 16);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  MIL::MILResult::MILResult(a1, &v9, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(&v9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
  }

  *a1 = &unk_2829E62C0;
  *(a1 + 48) = a3;
  return a1;
}

void sub_218063558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
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

void ***std::unique_ptr<anonymous namespace::ParserOptionsImpl>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void anonymous namespace::ParserOptionsImpl::~ParserOptionsImpl(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{

  JUMPOUT(0x21CEAFEA0);
}

void sub_218063804(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v3);
  }

  MEMORY[0x21CEAFEA0](v1, v2);
  _Unwind_Resume(a1);
}

__n128 anonymous namespace::ParserOptionsImpl::SetModelFilePath(uint64_t a1, std::string *this, int a3)
{
  v16[2] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    goto LABEL_14;
  }

  memset(&__p, 0, sizeof(__p));
  v5 = std::string::rfind(this, 47, 0xFFFFFFFFFFFFFFFFLL);
  if (v5 == -1)
  {
    v6 = "./";
  }

  else
  {
    if (v5)
    {
      std::string::basic_string(&v13, this, 0, v5, &v15);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v13;
      goto LABEL_10;
    }

    v6 = "/";
  }

  MEMORY[0x21CEAF970](&__p, v6);
LABEL_10:
  v16[0] = __p.__r_.__value_.__l.__size_;
  v7 = __p.__r_.__value_.__r.__words[0];
  *(v16 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
  v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  memset(&__p, 0, sizeof(__p));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
    v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v11 = v16[0];
    *(a1 + 8) = v7;
    *(a1 + 16) = v11;
    *(a1 + 23) = *(v16 + 7);
    *(a1 + 31) = v8;
    if (v10 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v9 = v16[0];
    *(a1 + 8) = v7;
    *(a1 + 16) = v9;
    *(a1 + 23) = *(v16 + 7);
    *(a1 + 31) = v8;
  }

LABEL_14:
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  result = *&this->__r_.__value_.__l.__data_;
  *(a1 + 48) = *(&this->__r_.__value_.__l + 2);
  *(a1 + 32) = result;
  *(&this->__r_.__value_.__s + 23) = 0;
  this->__r_.__value_.__s.__data_[0] = 0;
  return result;
}

void sub_2180639AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 anonymous namespace::ParserOptionsImpl::SetModelPath(uint64_t a1, __n128 *a2)
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

uint64_t anonymous namespace::ParserOptionsImpl::SetValidateProgram(uint64_t this, int a2)
{
  if (*(this + 64) == 1 && a2 != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *(this + 56) = a2;
  return this;
}

uint64_t anonymous namespace::ParserOptionsImpl::SetIgnoreWeightFile(uint64_t this, int a2)
{
  if (*(this + 56) == 1 && a2 != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *(this + 64) = a2;
  return this;
}

void sub_2180641E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a20)
  {
    (*(*a20 + 8))(a20);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(exception_object);
}

void sub_218064A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, char *a44)
{
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&a43, a44);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::destroy(v45 - 152, *(v45 - 144));
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::begin@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  v3 = v2[3];
  v4 = v2[1];
  if (v4 <= v3)
  {
    v6 = 0;
  }

  else
  {
    v5 = v2[4];
    while (1)
    {
      v6 = *(v5 + 8 * v3);
      if (v6)
      {
        break;
      }

      if (v4 == ++v3)
      {
        v6 = 0;
        v3 = v2[1];
        goto LABEL_9;
      }
    }

    if (v6 == *(v5 + 8 * (v3 ^ 1)))
    {
      v6 = *(*v6 + 32);
    }
  }

LABEL_9:
  *a2 = v6;
  a2[1] = v2;
  a2[2] = v3;
  return result;
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::iterator_base<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::KeyValuePair const>::operator++(void *a1)
{
  v2 = *(*a1 + 32);
  if (v2)
  {
    goto LABEL_2;
  }

  v11 = 0;
  if (google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::iterator_base<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::KeyValuePair const>::revalidate_if_necessary(a1, &v11))
  {
    v3 = a1[2] + 1;
LABEL_13:
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::iterator_base<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::KeyValuePair const>::SearchFrom(a1, v3);
    return a1;
  }

  v4 = a1[2];
  v5 = *(*(a1[1] + 32) + 8 * v4);
  v6 = v11;
  v7 = v11[1];
  if (v7)
  {
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7);
  }

  else
  {
    do
    {
      v8 = *(v6 + 16);
      v9 = *v8 == v6;
      v6 = v8;
    }

    while (!v9);
  }

  v11 = v8;
  if (v8 == (v5 + 8))
  {
    v3 = v4 + 2;
    goto LABEL_13;
  }

  v2 = v8[4];
LABEL_2:
  *a1 = v2;
  return a1;
}

BOOL google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::iterator_base<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::KeyValuePair const>::revalidate_if_necessary(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *a1;
  v6 = *(a1 + 16) & (*(v4 + 8) - 1);
  *(a1 + 16) = v6;
  v7 = *(v4 + 32);
  v8 = *(v7 + 8 * v6);
  if (v8 == v5)
  {
    return 1;
  }

  if (v8 && v8 != *(v7 + 8 * (v6 ^ 1)))
  {
    while (1)
    {
      v8 = *(v8 + 32);
      if (!v8)
      {
        break;
      }

      if (v8 == v5)
      {
        return 1;
      }
    }
  }

  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::FindHelper(v4, v5, a2, &v13);
  v9 = v14;
  *(a1 + 16) = v14;
  v10 = *(*(a1 + 8) + 32);
  v11 = *(v10 + 8 * v9);
  return !v11 || v11 != *(v10 + 8 * (v9 ^ 1));
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::iterator_base<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::KeyValuePair const>::SearchFrom(void *result, unint64_t a2)
{
  *result = 0;
  v2 = result[1];
  v3 = *(v2 + 8);
  if (v3 <= a2)
  {
LABEL_6:
    result[2] = a2;
  }

  else
  {
    v4 = *(v2 + 32);
    while (1)
    {
      v5 = *(v4 + 8 * a2);
      if (v5)
      {
        break;
      }

      if (v3 == ++a2)
      {
        a2 = v3;
        goto LABEL_6;
      }
    }

    v6 = *(v4 + 8 * (a2 ^ 1));
    result[2] = a2;
    if (v5 == v6)
    {
      *result = *(*v5 + 32);
    }

    else
    {
      *result = v5;
    }
  }

  return result;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::FindHelper@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::BucketNumber(a1, a2);
  v9 = result;
  v10 = *(a1 + 32);
  v11 = *(v10 + 8 * result);
  if (v11)
  {
    if (v11 != *(v10 + 8 * (result ^ 1)))
    {
      while (1)
      {
        result = std::equal_to<std::string>::operator()[abi:ne200100](&v14, v11, a2);
        if (result)
        {
          break;
        }

        v11 = *(v11 + 32);
        if (!v11)
        {
          goto LABEL_10;
        }
      }

      *a4 = v11;
      goto LABEL_12;
    }

    v9 = result & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v10 + 8 * (result & 0xFFFFFFFFFFFFFFFELL));
    v13 = a2;
    result = std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::MapAllocator<std::string *>>::find<std::string *>(v12, &v13);
    if (v12 + 8 != result)
    {
      if (a3)
      {
        *a3 = result;
      }

      *a4 = *(result + 32);
LABEL_12:
      a4[1] = a1;
      a4[2] = v9;
      goto LABEL_13;
    }
  }

LABEL_10:
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
LABEL_13:
  a4[3] = v9;
  return result;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::BucketNumber(uint64_t a1, _BYTE *a2)
{
  if (a2[23] >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  v3 = *v2;
  if (*v2)
  {
    v4 = 0;
    v5 = v2 + 1;
    do
    {
      v4 = 5 * v4 + v3;
      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  return (*(a1 + 8) - 1) & (*(a1 + 16) + v4);
}

uint64_t std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::MapAllocator<std::string *>>::find<std::string *>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(*a2 + 23);
  v5 = v4 >= 0 ? *(*a2 + 23) : *(*a2 + 8);
  v6 = v4 >= 0 ? *a2 : **a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 32);
    v9 = *(v8 + 23);
    if (v9 >= 0)
    {
      v10 = *(v8 + 23);
    }

    else
    {
      v10 = *(v8 + 8);
    }

    if (v9 >= 0)
    {
      v11 = *(v3 + 32);
    }

    else
    {
      v11 = *v8;
    }

    if (v5 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }

    v13 = memcmp(v11, v6, v12);
    v14 = v10 < v5;
    if (v13)
    {
      v14 = v13 < 0;
    }

    v15 = !v14;
    if (v14)
    {
      v16 = 8;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v7 = v3;
    }

    v3 = *(v3 + v16);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v17 = *(v7 + 32);
  v18 = *(v17 + 23);
  v19 = v18 >= 0 ? *(v17 + 23) : *(v17 + 8);
  v20 = v18 >= 0 ? *(v7 + 32) : *v17;
  v21 = v19 >= v5 ? v5 : v19;
  v22 = memcmp(v6, v20, v21);
  v23 = v5 < v19;
  if (v22)
  {
    v23 = v22 < 0;
  }

  if (v23)
  {
    return v2;
  }

  return v7;
}

uint64_t MIL::Proto::ParseAttributes@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::begin(a1, v5);
  if (v5[0])
  {
    strcpy(__p, "Invalid attribute name");
    v4 = 22;
    MIL::Util::ValidateIsIdentifier();
  }

  return result;
}

void MIL::Proto::ParseOperation(MIL::Proto *this, MIL::MILContext *a2, const MIL::IROpset *a3, const CoreML::Specification::MILSpec::Operation *a4, MIL::ParserContext *a5)
{
  __src = 0;
  v34 = 0;
  v35 = 0;
  std::vector<std::shared_ptr<MIL::IROperation>>::reserve(&__src, *(a3 + 20));
  v9 = *(a3 + 11);
  if (v9)
  {
    v10 = (v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a3 + 20);
  if (v11)
  {
    v12 = 8 * v11;
    do
    {
      MIL::Proto::ParseBlock(&__p, this, a2, *v10, a4, v8);
      if (__p)
      {
        operator new();
      }

      __p = 0;
      v13 = v34;
      if (v34 >= v35)
      {
        v14 = __src;
        v15 = v34 - __src;
        v16 = (v34 - __src) >> 4;
        v17 = v16 + 1;
        if ((v16 + 1) >> 60)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v18 = v35 - __src;
        if ((v35 - __src) >> 3 > v17)
        {
          v17 = v18 >> 3;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF0)
        {
          v19 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        p_src = &__src;
        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRBlock>>>(&__src, v19);
        }

        v20 = (v34 - __src) >> 4;
        v21 = (16 * v16);
        *v21 = 0;
        v21[1] = 0;
        v22 = (16 * v16 - 16 * v20);
        memcpy(v22, v14, v15);
        v23 = __src;
        v24 = v35;
        __src = v22;
        v34 = (16 * v16 + 16);
        v35 = 0;
        v36.__r_.__value_.__r.__words[2] = v23;
        v37 = v24;
        v36.__r_.__value_.__r.__words[0] = v23;
        v36.__r_.__value_.__l.__size_ = v23;
        std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(&v36.__r_.__value_.__l.__data_);
        v25 = __p;
        v34 = (16 * v16 + 16);
        __p = 0;
        if (v25)
        {
          (*(*v25 + 8))(v25);
        }
      }

      else
      {
        *v34 = 0;
        *(v13 + 1) = 0;
        v34 = v13 + 16;
      }

      ++v10;
      v12 -= 8;
    }

    while (v12);
  }

  std::operator+<char>();
  std::string::basic_string[abi:ne200100]<0>(&__p, "name");
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::FindHelper(*(a3 + 15), &__p, 0, &v36);
  v26 = v36.__r_.__value_.__r.__words[0];
  if (v29 < 0)
  {
    operator delete(__p);
  }

  if (v26)
  {
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v31, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
    }

    else
    {
      v31 = v32;
    }

    MIL::OperationNameLocation::Make();
  }

  std::operator+<char>();
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v32 = v36;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    v30 = v32;
  }

  MIL::OperationNameLocation::Make();
}

void sub_218066360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, char a58)
{
  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  if (a56 < 0)
  {
    operator delete(__p);
  }

  a38 = &a58;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a38);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<MIL::IRArgument>>::__assign_with_size[abi:ne200100]<std::shared_ptr<MIL::IRArgument>*,std::shared_ptr<MIL::IRArgument>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument>*>(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument>*>(&v17, a2, (a2 + v12), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRArgument>>,std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument>*>(a1, (a2 + v12), a3, a1[1]);
  }
}

void std::__shared_ptr_pointer<MIL::OperationNameLocation  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::OperationNameLocation  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::OperationNameLocation  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void MIL::Proto::ParseProgram(__int128 *a1)
{
  v1 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
}

void sub_218066BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_218066FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, char a47)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  __cxa_free_exception(v48);
  MIL::ParserContext::~ParserContext(&a47);
  v50 = *a9;
  *a9 = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  _Unwind_Resume(a1);
}

void sub_2180670A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  if (a44)
  {
    MIL::Builder::BlockBuilder::BlockBuilderImpl::BlockBuilderImpl(a44);
  }

  JUMPOUT(0x2180672C8);
}

void sub_2180670C4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, __int128 a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a33);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a17);
  if (a2 == 2)
  {
    __cxa_begin_catch(a1);
    __cxa_rethrow();
  }

  if (a2 == 1)
  {
    v46 = __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x48uLL);
    *(&a27 + 1) = v43;
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v48 = (*(*v46 + 16))(v46);
    std::string::basic_string[abi:ne200100]<0>(&a24, v48);
    MIL::ParseError::ParseError(exception, &a27, &a24, 300);
  }

  MIL::ParserContext::~ParserContext(&a43);
  v49 = *a9;
  *a9 = 0;
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  _Unwind_Resume(a1);
}

void sub_218067238(_Unwind_Exception *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (v40)
  {
    __cxa_free_exception(v41);
  }

  __cxa_end_catch();
  MIL::ParserContext::~ParserContext(va);
  v43 = *a2;
  *a2 = 0;
  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  _Unwind_Resume(a1);
}

void MIL::Proto::ParseProgram(__int128 *a1, void *a2)
{
  if (!*(a2 + *(*a2 - 24) + 32))
  {
    google::protobuf::io::IstreamInputStream::IstreamInputStream(v15);
    v7[0] = 0;
    v7[1] = 0;
    v7[2] = v15;
    v8[0] = 0;
    *(v8 + 6) = 0;
    v8[2] = 0x7FFFFFFFLL;
    v9 = 0x7FFFFFFF;
    v10 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
    v11 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    google::protobuf::io::CodedInputStream::Refresh(v7);
    CoreML::Specification::MILSpec::Program::Program(v6);
    if (google::protobuf::MessageLite::ParseFromCodedStream(v6, v7))
    {
      v5 = *a1;
      *a1 = 0;
      *(a1 + 1) = 0;
    }

    exception = __cxa_allocate_exception(0x48uLL);
    MIL::UnknownLocation::Make(exception);
  }

  v3 = __cxa_allocate_exception(0x48uLL);
  MIL::UnknownLocation::Make(v3);
}

void sub_21806755C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  __cxa_free_exception(v33);
  CoreML::Specification::MILSpec::Program::~Program(&a20);
  google::protobuf::io::CodedInputStream::~CodedInputStream(&a33);
  google::protobuf::io::IstreamInputStream::~IstreamInputStream((v34 - 168));
  _Unwind_Resume(a1);
}

void MIL::Proto::ParseProgram(uint64_t a1)
{
  v3[72] = *MEMORY[0x277D85DE8];
  std::ifstream::basic_ifstream(v3);
  v2 = *a1;
  *a1 = 0;
  *(a1 + 8) = 0;
  MIL::Proto::ParseProgram(&v2, v3);
}

void sub_218067814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::ifstream::~ifstream(&a12, MEMORY[0x277D82808]);
  MEMORY[0x21CEAFDA0](&a65);
  _Unwind_Resume(a1);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v3 = *(MEMORY[0x277D82808] + 16);
  v4 = *(MEMORY[0x277D82808] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x277D82858] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x21CEAFA50](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_2180679E8(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x21CEAFDA0](v1);
  _Unwind_Resume(a1);
}

void MIL::ParserContext::~ParserContext(MIL::ParserContext *this)
{
  std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,std::string>>>::~__hash_table(this + 3504);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 3464);
  v2 = *(this + 432);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(this + 3408);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 3368);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 3328);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 3288);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 3248);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 3208);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 3168);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 3128);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 3088);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 3048);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 3008);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2968);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2928);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2888);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2848);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2808);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2768);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2728);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2688);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2648);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2608);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2568);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2528);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2488);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2448);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2408);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2368);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2328);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2288);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2248);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2208);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2168);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2128);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2088);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2048);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 2008);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1968);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1928);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1888);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1848);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1808);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1768);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1728);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1688);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1648);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1608);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1568);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1528);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1488);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1448);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1408);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1368);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1328);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1288);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1248);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1208);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1168);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1128);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1088);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1048);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 1008);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 968);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 928);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 888);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 848);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 808);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 768);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 728);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 688);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 648);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 608);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 568);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 528);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 488);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 448);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 408);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 368);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 328);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 288);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 248);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 208);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 168);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 128);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 88);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 48);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(this + 8);
  v3 = *this;
  *this = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x21CEAFA60](a1 + 2);

  return std::istream::~istream();
}

uint64_t MIL::Proto::ParseValue@<X0>(MIL::IRConstantDimension *a1@<X0>, uint64_t a2@<X1>, MIL::ParserContext *a3@<X2>, std::string::size_type *a4@<X3>, void *a5@<X8>)
{
  if (*(a2 + 24))
  {
    v10 = *(a2 + 24);
  }

  else
  {
    v10 = &CoreML::Specification::MILSpec::_ValueType_default_instance_;
  }

  v11 = MIL::Proto::ParseValueType(a1, v10, a3, a4);
  v12 = v11;
  v13 = *(a2 + 44);
  if (v13 != 3)
  {
    if (v13 == 5)
    {
      v14 = *(a2 + 32);
      if ((*(*v11 + 24))(v11))
      {
        v15 = *(v14 + 16);
        if (*(v15 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v57, *v15, *(v15 + 1));
        }

        else
        {
          v16 = *v15;
          *&v57[16] = *(v15 + 2);
          *v57 = v16;
        }

        Options = MIL::ParserContext::GetOptions(a3);
        v29 = (*(*Options + 40))(Options);
        MIL::Util::ApplyModelPath(v57, v29, a4);
        MIL::IRValueType::AsTensorType(v12);
        v30 = MIL::ParserContext::GetOptions(a3);
        (*(*v30 + 104))(v30);
        MIL::IRTensorValueType::MakeValueFromBlobFile();
      }

      exception = __cxa_allocate_exception(0x48uLL);
      v48 = a4[1];
      *&v53 = *a4;
      *(&v53 + 1) = v48;
      if (v48)
      {
        atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v57, "Only tensor values can be read from a file.");
      MIL::ParseError::ParseError(exception, &v53, v57, 114);
    }

    v45 = __cxa_allocate_exception(0x48uLL);
    v46 = a4[1];
    *&v52 = *a4;
    *(&v52 + 1) = v46;
    if (v46)
    {
      atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v51, "Cannot parse null value");
    MIL::ParseError::ParseError(v45, &v52, v51, 301);
  }

  v17 = *(a2 + 32);
  v18 = *(v17 + 28);
  if (v18 > 2)
  {
    if (v18 == 3)
    {
      v23 = *(v17 + 16);
      MIL::IRValueType::AsListType(v11);
      memset(v57, 0, 24);
      std::vector<std::shared_ptr<MIL::IRValue const>>::reserve(v57, *(v23 + 24));
      v24 = *(v23 + 32);
      if (v24)
      {
        v25 = (v24 + 8);
      }

      else
      {
        v25 = 0;
      }

      v26 = *(v23 + 24);
      if (v26)
      {
        v27 = 8 * v26;
        do
        {
          MIL::Proto::ParseValue(v60, a1, *v25, a3, a4);
          std::vector<std::shared_ptr<MIL::IRValue const>>::push_back[abi:ne200100](v57, v60);
          if (*(&v60[0] + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v60[0] + 1));
          }

          ++v25;
          v27 -= 8;
        }

        while (v27);
      }

      MIL::IRListValueType::MakeValue();
    }

    v31 = *(v17 + 16);
    MIL::IRValueType::AsDictionaryType(v11);
    memset(v57, 0, sizeof(v57));
    v58 = 1065353216;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(v57, *(v31 + 24));
    v32 = *(v31 + 32);
    if (v32)
    {
      v33 = (v32 + 8);
    }

    else
    {
      v33 = 0;
    }

    v34 = *(v31 + 24);
    if (v34)
    {
      v35 = 8 * v34;
      do
      {
        v36 = *v33;
        if (*(*v33 + 24))
        {
          v37 = *(*v33 + 24);
        }

        else
        {
          v37 = &CoreML::Specification::MILSpec::_Value_default_instance_;
        }

        MIL::Proto::ParseValue(v60, a1, v37, a3, a4);
        if (*(v36 + 16))
        {
          v38 = *(v36 + 16);
        }

        else
        {
          v38 = &CoreML::Specification::MILSpec::_Value_default_instance_;
        }

        MIL::Proto::ParseValue(&v55, a1, v38, a3, a4);
        v59 = &v55;
        v39 = std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,MIL::IRValueMapHasher,MIL::IRValueMapEq,true>,std::__unordered_map_equal<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,MIL::IRValueMapEq,MIL::IRValueMapHasher,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::shared_ptr<MIL::IRValue const>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<MIL::IRValue const>&&>,std::tuple<>>(v57, &v55);
        v40 = v39[5];
        *(v39 + 2) = v60[0];
        if (v40)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        if (v56)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v56);
        }

        ++v33;
        v35 -= 8;
      }

      while (v35);
    }

    MIL::IRDictionaryValueType::MakeValue();
  }

  if (v18 != 1)
  {
    if (v18 == 2)
    {
      v19 = *(v17 + 16);
      v20 = MIL::IRValueType::AsTupleType(v11);
      v21 = (*(*v20 + 64))(v20);
      memset(v57, 0, 24);
      std::vector<std::shared_ptr<MIL::IRValue const>>::reserve(v57, (v21[1] - *v21) >> 3);
      if (*(v19 + 24) >= 1)
      {
        v22 = 0;
        do
        {
          MIL::Proto::ParseValue(v60, a1, *(*(v19 + 32) + 8 * v22 + 8), a3, a4);
          std::vector<std::shared_ptr<MIL::IRValue const>>::push_back[abi:ne200100](v57, v60);
          if (*(&v60[0] + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v60[0] + 1));
          }

          ++v22;
        }

        while (v22 < *(v19 + 24));
      }

      MIL::IRTupleValueType::MakeValue();
    }

    v49 = __cxa_allocate_exception(0x48uLL);
    v50 = a4[1];
    *&v54 = *a4;
    *(&v54 + 1) = v50;
    if (v50)
    {
      atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(&v53, "Cannot parse null immediate value");
    MIL::ParseError::ParseError(v49, &v54, &v53, 301);
  }

  v41 = *(v17 + 16);
  v42 = MIL::IRValueType::AsTensorType(v11);
  v43 = *v57;
  *a5 = *v57;
  if (v43)
  {
    operator new();
  }

  result = 0;
  a5[1] = 0;
  return result;
}

void sub_218068564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (v35)
  {
    __cxa_free_exception(v34);
  }

  _Unwind_Resume(exception_object);
}

CoreML::Specification::MILSpec::TensorValue_RepeatedStrings *anonymous namespace::ParseTensorValue(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  result = (*(*a2 + 88))(a2);
  switch(result)
  {
    case 3:
      if (*(a1 + 28) == 4)
      {
        v25 = *(*(a1 + 16) + 32);
        if (v25)
        {
          v26 = v25 + 8;
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v92 = CoreML::Specification::MILSpec::TensorValue_RepeatedStrings::default_instance(result, v7, v8);
        v95 = v92[4];
        if (v95)
        {
          v26 = v95 + 8;
        }

        else
        {
          v26 = 0;
        }

        if (*(a1 + 28) != 4)
        {
          v96 = CoreML::Specification::MILSpec::TensorValue_RepeatedStrings::default_instance(v92, v93, v94);
LABEL_222:
          v124 = v96[4];
          if (v124)
          {
            v125 = v124 + 8;
          }

          else
          {
            v125 = 0;
          }

          v126 = v125 + 8 * *(v96 + 6);
          v166 = 0;
          v165 = 0uLL;
          std::vector<std::string>::__init_with_size[abi:ne200100]<google::protobuf::internal::RepeatedPtrIterator<std::string const>,google::protobuf::internal::RepeatedPtrIterator<std::string const>>(&v165, v26, v126, (v126 - v26) >> 3);
          MIL::IRTensorValueType::MakeStringValue();
        }
      }

      v96 = *(a1 + 16);
      goto LABEL_222;
    case 4:
      if (*(a1 + 28) == 7)
      {
        v22 = *(a1 + 16);
      }

      else
      {
        v22 = CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::default_instance(result, v7, v8);
      }

      v79 = v22[2];
      v80 = *(v79 + 23);
      if (v80 < 0)
      {
        v80 = *(v79 + 8);
      }

      if (*(a1 + 28) == 7)
      {
        v81 = *(a1 + 16);
      }

      else
      {
        v81 = CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::default_instance(v22, v7, v8);
      }

      v111 = v81[2];
      if (*(v111 + 23) < 0)
      {
        v111 = *v111;
      }

      v165 = 0uLL;
      v166 = 0;
      std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<MIL::Fp16 const*,MIL::Fp16 const*>(&v165, v111, v111 + (v80 & 0xFFFFFFFFFFFFFFFELL), v80 >> 1);
      MIL::IRTensorValueType::MakeFloat16Value();
    case 5:
      if (*(a1 + 28) == 1)
      {
        v23 = *(*(a1 + 16) + 24);
        if (v23)
        {
          v24 = v23 + 8;
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v82 = CoreML::Specification::MILSpec::TensorValue_RepeatedFloats::default_instance(result, v7, v8);
        v85 = v82[3];
        if (v85)
        {
          v24 = v85 + 8;
        }

        else
        {
          v24 = 0;
        }

        if (*(a1 + 28) != 1)
        {
          v86 = CoreML::Specification::MILSpec::TensorValue_RepeatedFloats::default_instance(v82, v83, v84);
LABEL_212:
          v120 = v86[3];
          if (v120)
          {
            v121 = v120 + 4 * *(v86 + 4) + 8;
          }

          else
          {
            v121 = 0;
          }

          v165 = 0uLL;
          v166 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v165, v24, v121, (v121 - v24) >> 2);
          MIL::IRTensorValueType::MakeFloat32Value();
        }
      }

      v86 = *(a1 + 16);
      goto LABEL_212;
    case 6:
      if (*(a1 + 28) == 6)
      {
        v16 = *(*(a1 + 16) + 24);
        if (v16)
        {
          v17 = v16 + 8;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v63 = CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles::default_instance(result, v7, v8);
        v66 = v63[3];
        if (v66)
        {
          v17 = v66 + 8;
        }

        else
        {
          v17 = 0;
        }

        if (*(a1 + 28) != 6)
        {
          v67 = CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles::default_instance(v63, v64, v65);
LABEL_202:
          v116 = v67[3];
          if (v116)
          {
            v117 = v116 + 8 * *(v67 + 4) + 8;
          }

          else
          {
            v117 = 0;
          }

          v165 = 0uLL;
          v166 = 0;
          std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v165, v17, v117, (v117 - v17) >> 3);
          MIL::IRTensorValueType::MakeFloat64Value();
        }
      }

      v67 = *(a1 + 16);
      goto LABEL_202;
    case 7:
      if (*(a1 + 28) == 7)
      {
        v27 = *(a1 + 16);
      }

      else
      {
        v27 = CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::default_instance(result, v7, v8);
      }

      v97 = v27[2];
      v98 = *(v97 + 23);
      if (v98 < 0)
      {
        v98 = *(v97 + 8);
      }

      if (*(a1 + 28) == 7)
      {
        v99 = *(a1 + 16);
      }

      else
      {
        v99 = CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::default_instance(v27, v7, v8);
      }

      v112 = v99[2];
      if (*(v112 + 23) < 0)
      {
        v112 = *v112;
      }

      v165 = 0uLL;
      v166 = 0;
      std::vector<MIL::Bf16>::__init_with_size[abi:ne200100]<MIL::Bf16 const*,MIL::Bf16 const*>(&v165, v112, v112 + (v98 & 0xFFFFFFFFFFFFFFFELL), v98 >> 1);
      MIL::IRTensorValueType::MakeBFloat16Value();
    case 8:
      __break(1u);
      return result;
    case 9:
      if (*(a1 + 28) == 7)
      {
        v19 = *(a1 + 16);
      }

      else
      {
        v19 = CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::default_instance(result, v7, v8);
      }

      v71 = v19[2];
      v72 = *(v71 + 23);
      if (v72 < 0)
      {
        v72 = *(v71 + 8);
      }

      if (*(a1 + 28) == 7)
      {
        v73 = *(a1 + 16);
      }

      else
      {
        v73 = CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::default_instance(v19, v7, v8);
      }

      v110 = v73[2];
      if (*(v110 + 23) < 0)
      {
        v110 = *v110;
      }

      v165 = 0uLL;
      v166 = 0;
      std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(&v165, v110, v110 + v72, v72);
      MIL::IRTensorValueType::MakeInt8Value();
    case 10:
      if (*(a1 + 28) == 2)
      {
        v15 = *(a1 + 16);
      }

      else
      {
        v15 = CoreML::Specification::MILSpec::TensorValue_RepeatedInts::default_instance(result, v7, v8);
      }

      CoreML::Specification::MILSpec::TensorValue_RepeatedInts::TensorValue_RepeatedInts(v153, v15);
      v51 = a3[1];
      *&v149 = *a3;
      if (v51)
      {
        atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
      }

      *(&v149 + 1) = v51;
      v157 = 0;
      v158 = 0;
      __src = 0;
      std::vector<MIL::Fp16>::reserve(&__src, v154);
      if (v155)
      {
        v52 = (v155 + 8);
      }

      else
      {
        v52 = 0;
      }

      if (v155)
      {
        v53 = v155 + 8 + 4 * v154;
      }

      else
      {
        v53 = 0;
      }

      for (; v52 != v53; ++v52)
      {
        v54 = *v52;
        if (v54 != v54)
        {
          exception = __cxa_allocate_exception(0x48uLL);
          v167 = v149;
          std::to_string(&v162, v54);
          v139 = std::string::insert(&v162, 0, "Value ");
          v140 = *&v139->__r_.__value_.__l.__data_;
          v163.__r_.__value_.__r.__words[2] = v139->__r_.__value_.__r.__words[2];
          *&v163.__r_.__value_.__l.__data_ = v140;
          v139->__r_.__value_.__l.__size_ = 0;
          v139->__r_.__value_.__r.__words[2] = 0;
          v139->__r_.__value_.__r.__words[0] = 0;
          v141 = std::string::append(&v163, " cannot be casted to ");
          v142 = *&v141->__r_.__value_.__l.__data_;
          v164.__r_.__value_.__r.__words[2] = v141->__r_.__value_.__r.__words[2];
          *&v164.__r_.__value_.__l.__data_ = v142;
          v141->__r_.__value_.__l.__size_ = 0;
          v141->__r_.__value_.__r.__words[2] = 0;
          v141->__r_.__value_.__r.__words[0] = 0;
          MIL::IRDataTypeToString(10, &v159);
          if ((v161 & 0x80u) == 0)
          {
            v143 = &v159;
          }

          else
          {
            v143 = v159;
          }

          if ((v161 & 0x80u) == 0)
          {
            v144 = v161;
          }

          else
          {
            v144 = v160;
          }

          v145 = std::string::append(&v164, v143, v144);
          v146 = *&v145->__r_.__value_.__l.__data_;
          v166 = v145->__r_.__value_.__r.__words[2];
          v165 = v146;
          v145->__r_.__value_.__l.__size_ = 0;
          v145->__r_.__value_.__r.__words[2] = 0;
          v145->__r_.__value_.__r.__words[0] = 0;
          MIL::ParseError::ParseError(exception, &v167, &v165, 112);
        }

        v55 = v157;
        if (v157 >= v158)
        {
          v57 = __src;
          v58 = v157 - __src;
          v59 = (v157 - __src) >> 1;
          if (v59 <= -2)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          if (v158 - __src <= v59 + 1)
          {
            v60 = v59 + 1;
          }

          else
          {
            v60 = v158 - __src;
          }

          if (v158 - __src >= 0x7FFFFFFFFFFFFFFELL)
          {
            v61 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v61 = v60;
          }

          if (v61)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(&__src, v61);
          }

          *(2 * v59) = v54;
          v56 = 2 * v59 + 2;
          memcpy(0, v57, v58);
          v62 = __src;
          __src = 0;
          v157 = v56;
          v158 = 0;
          if (v62)
          {
            operator delete(v62);
          }
        }

        else
        {
          *v157 = v54;
          v56 = (v55 + 2);
        }

        v157 = v56;
      }

      MIL::IRTensorValueType::MakeInt16Value();
    case 11:
      if (*(a1 + 28) == 2)
      {
        v20 = *(*(a1 + 16) + 24);
        if (v20)
        {
          v21 = v20 + 8;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v74 = CoreML::Specification::MILSpec::TensorValue_RepeatedInts::default_instance(result, v7, v8);
        v77 = v74[3];
        if (v77)
        {
          v21 = v77 + 8;
        }

        else
        {
          v21 = 0;
        }

        if (*(a1 + 28) != 2)
        {
          v78 = CoreML::Specification::MILSpec::TensorValue_RepeatedInts::default_instance(v74, v75, v76);
LABEL_207:
          v118 = v78[3];
          if (v118)
          {
            v119 = v118 + 4 * *(v78 + 4) + 8;
          }

          else
          {
            v119 = 0;
          }

          v165 = 0uLL;
          v166 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v165, v21, v119, (v119 - v21) >> 2);
          MIL::IRTensorValueType::MakeInt32Value();
        }
      }

      v78 = *(a1 + 16);
      goto LABEL_207;
    case 12:
      if (*(a1 + 28) == 5)
      {
        v12 = *(*(a1 + 16) + 24);
        if (v12)
        {
          v13 = v12 + 8;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v43 = CoreML::Specification::MILSpec::TensorValue_RepeatedLongInts::default_instance(result, v7, v8);
        v46 = v43[3];
        if (v46)
        {
          v13 = v46 + 8;
        }

        else
        {
          v13 = 0;
        }

        if (*(a1 + 28) != 5)
        {
          v47 = CoreML::Specification::MILSpec::TensorValue_RepeatedLongInts::default_instance(v43, v44, v45);
LABEL_197:
          v114 = v47[3];
          if (v114)
          {
            v115 = v114 + 8 * *(v47 + 4) + 8;
          }

          else
          {
            v115 = 0;
          }

          v165 = 0uLL;
          v166 = 0;
          std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&v165, v13, v115, (v115 - v13) >> 3);
          MIL::IRTensorValueType::MakeInt64Value();
        }
      }

      v47 = *(a1 + 16);
      goto LABEL_197;
    case 13:
      MIL::IRTensorValueType::MakeInt4Value();
    case 14:
      MIL::IRTensorValueType::MakeUInt8Value();
    case 15:
      if (*(a1 + 28) == 2)
      {
        v11 = *(a1 + 16);
      }

      else
      {
        v11 = CoreML::Specification::MILSpec::TensorValue_RepeatedInts::default_instance(result, v7, v8);
      }

      CoreML::Specification::MILSpec::TensorValue_RepeatedInts::TensorValue_RepeatedInts(v150, v11);
      v31 = a3[1];
      *&v148 = *a3;
      if (v31)
      {
        atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
      }

      *(&v148 + 1) = v31;
      v157 = 0;
      v158 = 0;
      __src = 0;
      std::vector<MIL::Fp16>::reserve(&__src, v151);
      if (v152)
      {
        v32 = (v152 + 8);
      }

      else
      {
        v32 = 0;
      }

      if (v152)
      {
        v33 = v152 + 8 + 4 * v151;
      }

      else
      {
        v33 = 0;
      }

      for (; v32 != v33; ++v32)
      {
        v34 = *v32;
        if (*v32 >= 0x10000)
        {
          v129 = __cxa_allocate_exception(0x48uLL);
          v167 = v148;
          std::to_string(&v162, v34);
          v130 = std::string::insert(&v162, 0, "Value ");
          v131 = *&v130->__r_.__value_.__l.__data_;
          v163.__r_.__value_.__r.__words[2] = v130->__r_.__value_.__r.__words[2];
          *&v163.__r_.__value_.__l.__data_ = v131;
          v130->__r_.__value_.__l.__size_ = 0;
          v130->__r_.__value_.__r.__words[2] = 0;
          v130->__r_.__value_.__r.__words[0] = 0;
          v132 = std::string::append(&v163, " cannot be casted to ");
          v133 = *&v132->__r_.__value_.__l.__data_;
          v164.__r_.__value_.__r.__words[2] = v132->__r_.__value_.__r.__words[2];
          *&v164.__r_.__value_.__l.__data_ = v133;
          v132->__r_.__value_.__l.__size_ = 0;
          v132->__r_.__value_.__r.__words[2] = 0;
          v132->__r_.__value_.__r.__words[0] = 0;
          MIL::IRDataTypeToString(15, &v159);
          if ((v161 & 0x80u) == 0)
          {
            v134 = &v159;
          }

          else
          {
            v134 = v159;
          }

          if ((v161 & 0x80u) == 0)
          {
            v135 = v161;
          }

          else
          {
            v135 = v160;
          }

          v136 = std::string::append(&v164, v134, v135);
          v137 = *&v136->__r_.__value_.__l.__data_;
          v166 = v136->__r_.__value_.__r.__words[2];
          v165 = v137;
          v136->__r_.__value_.__l.__size_ = 0;
          v136->__r_.__value_.__r.__words[2] = 0;
          v136->__r_.__value_.__r.__words[0] = 0;
          MIL::ParseError::ParseError(v129, &v167, &v165, 112);
        }

        v35 = v157;
        if (v157 >= v158)
        {
          v37 = __src;
          v38 = v157 - __src;
          v39 = (v157 - __src) >> 1;
          if (v39 <= -2)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          if (v158 - __src <= v39 + 1)
          {
            v40 = v39 + 1;
          }

          else
          {
            v40 = v158 - __src;
          }

          if (v158 - __src >= 0x7FFFFFFFFFFFFFFELL)
          {
            v41 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v41 = v40;
          }

          if (v41)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(&__src, v41);
          }

          *(2 * v39) = v34;
          v36 = 2 * v39 + 2;
          memcpy(0, v37, v38);
          v42 = __src;
          __src = 0;
          v157 = v36;
          v158 = 0;
          if (v42)
          {
            operator delete(v42);
          }
        }

        else
        {
          *v157 = v34;
          v36 = (v35 + 2);
        }

        v157 = v36;
      }

      MIL::IRTensorValueType::MakeUInt16Value();
    case 16:
      if (*(a1 + 28) == 7)
      {
        v18 = *(a1 + 16);
      }

      else
      {
        v18 = CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::default_instance(result, v7, v8);
      }

      v68 = v18[2];
      v69 = *(v68 + 23);
      if (v69 < 0)
      {
        v69 = *(v68 + 8);
      }

      if (*(a1 + 28) == 7)
      {
        v70 = *(a1 + 16);
      }

      else
      {
        v70 = CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::default_instance(v18, v7, v8);
      }

      v109 = v70[2];
      if (*(v109 + 23) < 0)
      {
        v109 = *v109;
      }

      v165 = 0uLL;
      v166 = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&v165, v109, v109 + (v69 & 0xFFFFFFFFFFFFFFFCLL), v69 >> 2);
      MIL::IRTensorValueType::MakeUInt32Value();
    case 17:
      if (*(a1 + 28) == 5)
      {
        v28 = *(*(a1 + 16) + 24);
        if (v28)
        {
          v29 = v28 + 8;
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v100 = CoreML::Specification::MILSpec::TensorValue_RepeatedLongInts::default_instance(result, v7, v8);
        v103 = v100[3];
        if (v103)
        {
          v29 = v103 + 8;
        }

        else
        {
          v29 = 0;
        }

        if (*(a1 + 28) != 5)
        {
          v104 = CoreML::Specification::MILSpec::TensorValue_RepeatedLongInts::default_instance(v100, v101, v102);
LABEL_227:
          v127 = v104[3];
          if (v127)
          {
            v128 = v127 + 8 * *(v104 + 4) + 8;
          }

          else
          {
            v128 = 0;
          }

          v165 = 0uLL;
          v166 = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&v165, v29, v128, (v128 - v29) >> 3);
          MIL::IRTensorValueType::MakeUInt64Value();
        }
      }

      v104 = *(a1 + 16);
      goto LABEL_227;
    case 18:
      v147 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v147, "Attempted to parse unknown tensor dtype.");
      __cxa_throw(v147, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 19:
      MIL::IRTensorValueType::MakeUInt2Value();
    case 20:
      MIL::IRTensorValueType::MakeUInt4Value();
    case 21:
      MIL::IRTensorValueType::MakeUInt1Value();
    case 22:
      MIL::IRTensorValueType::MakeUInt3Value();
    case 23:
      MIL::IRTensorValueType::MakeUInt6Value();
    case 24:
      if (*(a1 + 28) == 7)
      {
        v30 = *(a1 + 16);
      }

      else
      {
        v30 = CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::default_instance(result, v7, v8);
      }

      v105 = v30[2];
      v106 = *(v105 + 23);
      if (v106 < 0)
      {
        v106 = *(v105 + 8);
      }

      if (*(a1 + 28) == 7)
      {
        v107 = *(a1 + 16);
      }

      else
      {
        v107 = CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::default_instance(v30, v7, v8);
      }

      v113 = v107[2];
      if (*(v113 + 23) < 0)
      {
        v113 = *v113;
      }

      v165 = 0uLL;
      v166 = 0;
      std::vector<MIL::Fp8E4M3FN>::__init_with_size[abi:ne200100]<MIL::Fp8E4M3FN const*,MIL::Fp8E4M3FN const*>(&v165, v113, v113 + v106, v106);
      MIL::IRTensorValueType::MakeFloat8E4M3FNValue();
    case 25:
      if (*(a1 + 28) == 7)
      {
        v14 = *(a1 + 16);
      }

      else
      {
        v14 = CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::default_instance(result, v7, v8);
      }

      v48 = v14[2];
      v49 = *(v48 + 23);
      if (v49 < 0)
      {
        v49 = *(v48 + 8);
      }

      if (*(a1 + 28) == 7)
      {
        v50 = *(a1 + 16);
      }

      else
      {
        v50 = CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::default_instance(v14, v7, v8);
      }

      v108 = v50[2];
      if (*(v108 + 23) < 0)
      {
        v108 = *v108;
      }

      v165 = 0uLL;
      v166 = 0;
      std::vector<MIL::Fp8E5M2>::__init_with_size[abi:ne200100]<MIL::Fp8E5M2 const*,MIL::Fp8E5M2 const*>(&v165, v108, v108 + v49, v49);
      MIL::IRTensorValueType::MakeFloat8E5M2Value();
    default:
      if (*(a1 + 28) == 3)
      {
        v9 = *(*(a1 + 16) + 24);
        if (v9)
        {
          v10 = v9 + 8;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v87 = CoreML::Specification::MILSpec::TensorValue_RepeatedBools::default_instance(result, v7, v8);
        v90 = v87[3];
        if (v90)
        {
          v10 = v90 + 8;
        }

        else
        {
          v10 = 0;
        }

        if (*(a1 + 28) != 3)
        {
          v91 = CoreML::Specification::MILSpec::TensorValue_RepeatedBools::default_instance(v87, v88, v89);
LABEL_217:
          v122 = v91[3];
          if (v122)
          {
            v123 = v122 + *(v91 + 4) + 8;
          }

          else
          {
            v123 = 0;
          }

          v165 = 0uLL;
          v166 = 0;
          std::vector<unsigned char>::__init_with_size[abi:ne200100]<BOOL const*,BOOL const*>(&v165, v10, v123, v123 - v10);
          MIL::IRTensorValueType::MakeBoolValue();
        }
      }

      v91 = *(a1 + 16);
      goto LABEL_217;
  }
}

void sub_218069554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  __cxa_free_exception(v45);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::BytesToTypedVector<unsigned char>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, google::protobuf::Closure *a3@<X2>, void *a4@<X8>)
{
  if (*(a1 + 28) == 7)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::default_instance(a1, a2, a3);
  }

  v7 = v6[2];
  v8 = *(v7 + 23);
  if (v8 < 0)
  {
    v8 = *(v7 + 8);
  }

  if (*(a1 + 28) == 7)
  {
    v9 = *(a1 + 16);
  }

  else
  {
    v9 = CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::default_instance(v6, a2, a3);
  }

  v10 = v9[2];
  if (*(v10 + 23) < 0)
  {
    v10 = *v10;
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;

  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a4, v10, v10 + v8, v8);
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<BOOL const*,BOOL const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_218069974(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<google::protobuf::internal::RepeatedPtrIterator<std::string const>,google::protobuf::internal::RepeatedPtrIterator<std::string const>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2180699F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,google::protobuf::internal::RepeatedPtrIterator<std::string const>,google::protobuf::internal::RepeatedPtrIterator<std::string const>,std::string*>(uint64_t a1, __int128 **a2, __int128 **a3, std::string *this)
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
      v7 = *v6;
      if (*(*v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v7, *(v7 + 1));
        v4 = v13;
      }

      else
      {
        v8 = *v7;
        v4->__r_.__value_.__r.__words[2] = *(v7 + 2);
        *&v4->__r_.__value_.__l.__data_ = v8;
      }

      ++v6;
      v13 = ++v4;
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

uint64_t std::vector<unsigned long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_218069B34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::shared_ptr<MIL::IRValue const>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::Validation::Constraints const>>>(result, a2);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t MIL::Proto::ParseValueType(MIL::IRConstantDimension *a1, uint64_t a2, uint64_t a3, std::string::size_type *a4)
{
  v8 = *(a2 + 28);
  if (v8 <= 2)
  {
    if (v8 == 1)
    {
      v33 = *(a2 + 16);
      if (*(v33 + 72) == *(v33 + 24))
      {
        v34 = *(v33 + 80);
        switch(v34)
        {
          case 0:
            goto LABEL_72;
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 10:
          case 11:
          case 12:
          case 13:
          case 14:
          case 15:
          case 16:
          case 17:
          case 18:
          case 19:
          case 20:
          case 21:
          case 22:
          case 23:
          case 24:
          case 25:
          case 26:
          case 27:
          case 28:
          case 29:
          case 30:
          case 31:
          case 32:
          case 33:
          case 34:
          case 35:
          case 36:
          case 37:
          case 38:
          case 39:
          case 40:
          case 41:
            goto LABEL_60;
          default:
            if (v34 != 0x80000000 && v34 != 0x7FFFFFFF)
            {
LABEL_60:
              operator new();
            }

LABEL_72:
            exception = __cxa_allocate_exception(0x48uLL);
            v55 = a4[1];
            v63.__r_.__value_.__r.__words[0] = *a4;
            v63.__r_.__value_.__l.__size_ = v55;
            if (v55)
            {
              atomic_fetch_add_explicit((v55 + 8), 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "Cannot parse an unsupported data type");
            MIL::ParseError::ParseError(exception, &v63, __p, 114);
        }
      }

      v44 = __cxa_allocate_exception(0x48uLL);
      v45 = a4[1];
      *&v64 = *a4;
      *(&v64 + 1) = v45;
      if (v45)
      {
        atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
      }

      std::to_string(&v61, *(v33 + 72));
      v46 = std::string::insert(&v61, 0, "Mismatch between specified rank ");
      v47 = *&v46->__r_.__value_.__l.__data_;
      v62.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
      *&v62.__r_.__value_.__l.__data_ = v47;
      v46->__r_.__value_.__l.__size_ = 0;
      v46->__r_.__value_.__r.__words[2] = 0;
      v46->__r_.__value_.__r.__words[0] = 0;
      v48 = std::string::append(&v62, " and given number of dimensions ");
      v49 = *&v48->__r_.__value_.__l.__data_;
      v63.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
      *&v63.__r_.__value_.__l.__data_ = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v60, *(v33 + 24));
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = &v60;
      }

      else
      {
        v50 = v60.__r_.__value_.__r.__words[0];
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v60.__r_.__value_.__l.__size_;
      }

      v52 = std::string::append(&v63, v50, size);
      v53 = *&v52->__r_.__value_.__l.__data_;
      v59 = v52->__r_.__value_.__r.__words[2];
      *__p = v53;
      v52->__r_.__value_.__l.__size_ = 0;
      v52->__r_.__value_.__r.__words[2] = 0;
      v52->__r_.__value_.__r.__words[0] = 0;
      MIL::ParseError::ParseError(v44, &v64, __p, 104);
    }

    if (v8 != 2)
    {
      if (!v8)
      {
        v41 = __cxa_allocate_exception(0x48uLL);
        v42 = a4[1];
        *&v57 = *a4;
        *(&v57 + 1) = v42;
        if (v42)
        {
          atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v56, "Cannot parse a null value type");
        MIL::ParseError::ParseError(v41, &v57, v56, 114);
      }

      return v4;
    }

    v13 = *(a2 + 16);
    if (*(v13 + 16))
    {
      v14 = *(v13 + 16);
    }

    else
    {
      v14 = &CoreML::Specification::MILSpec::_ValueType_default_instance_;
    }

    v15 = MIL::Proto::ParseValueType(a1, v14, a3, a4);
    if (*(v13 + 24))
    {
      v16 = *(v13 + 24);
    }

    else
    {
      v16 = &CoreML::Specification::MILSpec::_Dimension_default_instance_;
    }

    return MIL::IRListValueType::MakeWithDimension(a1, v15, v17, v18);
  }

  else
  {
    if (v8 == 3)
    {
      v19 = *(a2 + 16);
      __p[0] = 0;
      __p[1] = 0;
      v59 = 0;
      std::vector<std::string const*>::reserve(__p, *(v19 + 24));
      v20 = *(v19 + 32);
      if (v20)
      {
        v21 = (v20 + 8);
      }

      else
      {
        v21 = 0;
      }

      v22 = *(v19 + 24);
      if (v22)
      {
        v23 = 8 * v22;
        do
        {
          v24 = MIL::Proto::ParseValueType(a1, *v21, a3, a4);
          v25 = __p[1];
          if (__p[1] >= v59)
          {
            v27 = (__p[1] - __p[0]) >> 3;
            if ((v27 + 1) >> 61)
            {
              std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
            }

            v28 = (v59 - __p[0]) >> 2;
            if (v28 <= v27 + 1)
            {
              v28 = v27 + 1;
            }

            if (v59 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
            {
              v29 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v29 = v28;
            }

            if (v29)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(__p, v29);
            }

            v30 = (8 * v27);
            *v30 = v24;
            v26 = (8 * v27 + 8);
            v31 = v30 - (__p[1] - __p[0]);
            memcpy(v31, __p[0], __p[1] - __p[0]);
            v32 = __p[0];
            __p[0] = v31;
            __p[1] = v26;
            v59 = 0;
            if (v32)
            {
              operator delete(v32);
            }
          }

          else
          {
            *__p[1] = v24;
            v26 = v25 + 8;
          }

          __p[1] = v26;
          ++v21;
          v23 -= 8;
        }

        while (v23);
      }

      MIL::IRTupleValueType::Make(a1);
    }

    if (v8 != 4)
    {
      if (v8 == 5)
      {
        if (*(*(a2 + 16) + 16))
        {
          v9 = *(*(a2 + 16) + 16);
        }

        else
        {
          v9 = &CoreML::Specification::MILSpec::_ValueType_default_instance_;
        }

        v10 = MIL::Proto::ParseValueType(a1, v9, a3, a4);

        return MIL::IRStateValueType::Make(a1, v10, v11);
      }

      return v4;
    }

    v35 = *(a2 + 16);
    if (*(v35 + 16))
    {
      v36 = *(v35 + 16);
    }

    else
    {
      v36 = &CoreML::Specification::MILSpec::_ValueType_default_instance_;
    }

    v37 = MIL::Proto::ParseValueType(a1, v36, a3, a4);
    if (*(v35 + 24))
    {
      v38 = *(v35 + 24);
    }

    else
    {
      v38 = &CoreML::Specification::MILSpec::_ValueType_default_instance_;
    }

    v39 = MIL::Proto::ParseValueType(a1, v38, a3, a4);

    return MIL::IRDictionaryValueType::Make(a1, v37, v39, v40);
  }
}

void sub_21806A3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (*(v48 - 121) < 0)
  {
    operator delete(*(v48 - 144));
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  v50 = *(v48 - 104);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  if (v46)
  {
    __cxa_free_exception(v47);
  }

  _Unwind_Resume(exception_object);
}

MIL::IRConstantDimension *anonymous namespace::ParseDimension(MIL::IRConstantDimension *result, uint64_t a2, void *a3)
{
  v3 = *(a2 + 28);
  switch(v3)
  {
    case 1:
      v5 = *(*(a2 + 16) + 16);

      return MIL::IRConstantDimension::Make(result, v5);
    case 2:
      v4 = *(*(a2 + 16) + 16) == 1;

      return MIL::IRUnknownDimension::Make(result, v4);
    case 0:
      exception = __cxa_allocate_exception(0x48uLL);
      v8 = a3[1];
      *&v10 = *a3;
      *(&v10 + 1) = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v9, "Cannot parse a null dimension");
      MIL::ParseError::ParseError(exception, &v10, v9, 105);
  }

  return result;
}

void sub_21806A70C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (v18)
  {
    __cxa_free_exception(v17);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<std::vector<MIL::IRDimension const*> *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<std::vector<MIL::IRDimension const*> *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void MIL::Proto::SerializeProgram(uint64_t a1, uint64_t a2, uint64_t a3)
{
  google::protobuf::io::OstreamOutputStream::OstreamOutputStream(v6, a3, 0xFFFFFFFFLL);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v5, v6);
  v4 = *(a1 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Proto::SerializeProgram();
}

void sub_21806A890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  if (v2)
  {
    MIL::Proto::SerializeProgram(v2);
  }

  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  google::protobuf::io::OstreamOutputStream::~OstreamOutputStream(va1);
  _Unwind_Resume(a1);
}

uint64_t MIL::Proto::SerializeFunction(MIL::Proto *this, const MIL::IRFunction *a2, CoreML::Specification::MILSpec::Function *a3)
{
  v5 = (*(*this + 32))(this, a2, a3);
  if (*(a2 + 13) == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena();
  }

  std::string::operator=(*(a2 + 13), v5);
  v6 = (*(*this + 128))(this);
  v7 = v6 + 1;
  v8 = *v6;
  if (*v6 != v6 + 1)
  {
    do
    {
      v9 = google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::NamedValueType>::Add(a2 + 16);
      v10 = *(v9 + 2);
      if (v10 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena();
      }

      std::string::operator=(v10, (v8 + 4));
      v12 = *(v9 + 3);
      if (!v12)
      {
        operator new();
      }

      MIL::Proto::SerializeValueType(v8[7], v12, v11);
      v13 = v8[1];
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
          v14 = v8[2];
          v15 = *v14 == v8;
          v8 = v14;
        }

        while (!v15);
      }

      v8 = v14;
    }

    while (v14 != v7);
  }

  v16 = (*(*this + 112))(this);
  if (*v16 != v16 + 1)
  {
    operator new();
  }

  Attributes = MIL::IRObject::GetAttributes(this);

  return MIL::Proto::SerializeAttributes(Attributes);
}

std::string *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::operator[](uint64_t a1, const std::string *a2)
{
  v4 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::operator[](*(a1 + 16), a2);
  ValueTypeInternal = *v4;
  if (!*v4)
  {
    ValueTypeInternal = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::CreateValueTypeInternal(a1, a2);
    *v4 = ValueTypeInternal;
  }

  return ValueTypeInternal + 1;
}

uint64_t MIL::Proto::SerializeAttributes(uint64_t result)
{
  if (*(result + 16))
  {
    operator new();
  }

  return result;
}

uint64_t *MIL::Proto::SerializeValueType(MIL::Proto *this, const MIL::IRValueType *a2, CoreML::Specification::MILSpec::ValueType *a3)
{
  v3 = a2;
  WrappedType = this;
  v5 = (*(*this + 24))(this, a2, a3);
  if (v5)
  {
LABEL_2:
    v6 = v5;
    if (*(v3 + 7) != 1)
    {
      CoreML::Specification::MILSpec::ValueType::clear_type(v3);
      *(v3 + 7) = 1;
      operator new();
    }

    v7 = *(v3 + 2);
    v19 = (*(*v5 + 88))(v5);
    v20 = v19 - 2;
    if ((v19 - 2) >= 0x18 || ((0xFEFFBFu >> v20) & 1) == 0)
    {
LABEL_60:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Provided type is not supported by the serializer.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    *(v7 + 80) = dword_218588900[v20];
    *(v7 + 72) = MIL::IRTensorValueType::Rank(v6);
    result = (*(*v6 + 96))(v6);
    if (result[1] != *result)
    {
      v22 = 0;
      while (1)
      {
        v24 = *(*(*(*v6 + 96))(v6) + 8 * v22);
        v25 = *(v7 + 32);
        if (!v25)
        {
          break;
        }

        v26 = *(v7 + 24);
        v27 = *v25;
        if (v26 >= *v25)
        {
          if (v27 == *(v7 + 28))
          {
LABEL_28:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v7 + 16), v27 + 1);
            v25 = *(v7 + 32);
            v27 = *v25;
          }

          *v25 = v27 + 1;
          v29 = *(v7 + 16);
          if (!v29)
          {
            operator new();
          }

          CoreML::Specification::MILSpec::Dimension::Dimension(Aligned);
          google::protobuf::Arena::AddListNode(v29, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Dimension>);
          v30 = *(v7 + 24);
          v31 = *(v7 + 32) + 8 * v30;
          *(v7 + 24) = v30 + 1;
          *(v31 + 8) = Aligned;
          goto LABEL_32;
        }

        *(v7 + 24) = v26 + 1;
        Aligned = *&v25[2 * v26 + 2];
LABEL_32:
        MIL::Proto::SerializeDimension(v24, Aligned, v23);
        ++v22;
        result = (*(*v6 + 96))(v6);
        if (v22 >= (result[1] - *result) >> 3)
        {
          return result;
        }
      }

      v27 = *(v7 + 28);
      goto LABEL_28;
    }
  }

  else
  {
    while (1)
    {
      v8 = (*(*WrappedType + 32))(WrappedType);
      if (v8)
      {
        break;
      }

      v9 = (*(*WrappedType + 40))(WrappedType);
      if (v9)
      {
        if (*(v3 + 7) != 3)
        {
          CoreML::Specification::MILSpec::ValueType::clear_type(v3);
          *(v3 + 7) = 3;
          operator new();
        }

        v34 = *(v3 + 2);
        result = (*(*v9 + 64))(v9);
        v42 = *result;
        if (result[1] == *result)
        {
          return result;
        }

        v43 = result;
        v44 = 0;
        while (2)
        {
          v45 = *(v42 + 8 * v44);
          v46 = *(v34 + 32);
          if (v46)
          {
            v47 = *(v34 + 24);
            v48 = *v46;
            if (v47 < *v46)
            {
              *(v34 + 24) = v47 + 1;
              v49 = *&v46[2 * v47 + 2];
              goto LABEL_58;
            }

            if (v48 == *(v34 + 28))
            {
LABEL_54:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v34 + 16), v48 + 1);
              v46 = *(v34 + 32);
              v48 = *v46;
            }

            *v46 = v48 + 1;
            v50 = *(v34 + 16);
            if (!v50)
            {
              operator new();
            }

            CoreML::Specification::MILSpec::ValueType::ValueType(v49);
            google::protobuf::Arena::AddListNode(v50, v49, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::ValueType>);
            v51 = *(v34 + 24);
            v52 = *(v34 + 32) + 8 * v51;
            *(v34 + 24) = v51 + 1;
            *(v52 + 8) = v49;
LABEL_58:
            result = MIL::Proto::SerializeValueType(v45, v49, v41);
            ++v44;
            v42 = *v43;
            if (v44 >= (v43[1] - *v43) >> 3)
            {
              return result;
            }

            continue;
          }

          break;
        }

        v48 = *(v34 + 28);
        goto LABEL_54;
      }

      v10 = (*(*WrappedType + 48))(WrappedType);
      if (v10)
      {
        v11 = v10;
        if (*(v3 + 7) != 4)
        {
          CoreML::Specification::MILSpec::ValueType::clear_type(v3);
          *(v3 + 7) = 4;
          operator new();
        }

        v12 = *(v3 + 2);
        v16 = (*(*v10 + 64))(v10);
        v18 = *(v12 + 16);
        if (!v18)
        {
          operator new();
        }

        MIL::Proto::SerializeValueType(v16, v18, v17);
        WrappedType = (*(*v11 + 72))(v11);
        v3 = *(v12 + 24);
        if (!v3)
        {
          operator new();
        }
      }

      else
      {
        v13 = MIL::IRValueType::TryCastAsStateType(WrappedType);
        if (!v13)
        {
          goto LABEL_60;
        }

        v14 = v13;
        v15 = CoreML::Specification::MILSpec::ValueType::mutable_statetype(v3);
        WrappedType = MIL::IRStateValueType::GetWrappedType(v14);
        v3 = CoreML::Specification::MILSpec::StateType::mutable_wrappedtype(v15);
      }

      v5 = (*(*WrappedType + 24))(WrappedType);
      if (v5)
      {
        goto LABEL_2;
      }
    }

    v32 = v8;
    if (*(v3 + 7) != 2)
    {
      CoreML::Specification::MILSpec::ValueType::clear_type(v3);
      *(v3 + 7) = 2;
      operator new();
    }

    v33 = *(v3 + 2);
    v35 = (*(*v8 + 64))(v8);
    v37 = *(v33 + 16);
    if (!v37)
    {
      operator new();
    }

    MIL::Proto::SerializeValueType(v35, v37, v36);
    v39 = (*(*v32 + 72))(v32);
    v40 = *(v33 + 24);
    if (!v40)
    {
      operator new();
    }

    return MIL::Proto::SerializeDimension(v39, v40, v38);
  }

  return result;
}

uint64_t MIL::Proto::SerializeBlock(MIL::Proto *this, const MIL::IRBlock *a2, CoreML::Specification::MILSpec::Block *a3)
{
  v5 = (*(*this + 40))(this, a2, a3);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*v5 != v7)
  {
    do
    {
      v8 = google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::NamedValueType>::Add(a2 + 16);
      Name = MIL::IRNamedValueType::GetName(*v6);
      if (*(v8 + 2) == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena();
      }

      std::string::operator=(*(v8 + 2), Name);
      Type = MIL::IRNamedValueType::GetType(*v6);
      v12 = *(v8 + 3);
      if (!v12)
      {
        operator new();
      }

      MIL::Proto::SerializeValueType(Type, v12, v11);
      v6 += 2;
    }

    while (v6 != v7);
  }

  v13 = (*(*this + 88))(this);
  v14 = *v13;
  v15 = *(v13 + 8);
  if (*v13 != v15)
  {
    while (1)
    {
      v16 = *(a2 + 7);
      if (!v16)
      {
        break;
      }

      v17 = *(a2 + 12);
      v18 = *v16;
      if (v17 >= *v16)
      {
        if (v18 == *(a2 + 13))
        {
LABEL_14:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 10, v18 + 1);
          v16 = *(a2 + 7);
          v18 = *v16;
        }

        *v16 = v18 + 1;
        v20 = *(a2 + 5);
        if (!v20)
        {
          operator new();
        }

        Aligned->__r_.__value_.__l.__size_ = 0;
        Aligned->__r_.__value_.__r.__words[2] = 0;
        Aligned->__r_.__value_.__r.__words[0] = 0;
        google::protobuf::Arena::AddListNode(v20, Aligned, google::protobuf::internal::arena_destruct_object<std::string>);
        v21 = *(a2 + 12);
        v22 = *(a2 + 7) + 8 * v21;
        *(a2 + 12) = v21 + 1;
        *(v22 + 8) = Aligned;
        goto LABEL_18;
      }

      *(a2 + 12) = v17 + 1;
      Aligned = *&v16[2 * v17 + 2];
LABEL_18:
      std::string::operator=(Aligned, v14++);
      if (v14 == v15)
      {
        goto LABEL_19;
      }
    }

    v18 = *(a2 + 13);
    goto LABEL_14;
  }

LABEL_19:
  v23 = (*(*this + 56))(this);
  v25 = **v23;
  v26 = (*v23)[1];
  if (v25 != v26)
  {
    while (1)
    {
      v27 = *v25;
      v28 = *(a2 + 10);
      if (!v28)
      {
        break;
      }

      v29 = *(a2 + 18);
      v30 = *v28;
      if (v29 >= *v28)
      {
        if (v30 == *(a2 + 19))
        {
LABEL_25:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 16, v30 + 1);
          v28 = *(a2 + 10);
          v30 = *v28;
        }

        *v28 = v30 + 1;
        v32 = *(a2 + 8);
        if (!v32)
        {
          operator new();
        }

        CoreML::Specification::MILSpec::Operation::Operation(v31);
        google::protobuf::Arena::AddListNode(v32, v31, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Operation>);
        v33 = *(a2 + 18);
        v34 = *(a2 + 10) + 8 * v33;
        *(a2 + 18) = v33 + 1;
        *(v34 + 8) = v31;
        goto LABEL_29;
      }

      *(a2 + 18) = v29 + 1;
      v31 = *&v28[2 * v29 + 2];
LABEL_29:
      MIL::Proto::SerializeOperation(v27, v31, v24);
      v25 += 2;
      if (v25 == v26)
      {
        goto LABEL_30;
      }
    }

    v30 = *(a2 + 19);
    goto LABEL_25;
  }

LABEL_30:
  Attributes = MIL::IRObject::GetAttributes(this);

  return MIL::Proto::SerializeAttributes(Attributes);
}

std::string *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::operator[](uint64_t a1, const std::string *a2)
{
  v4 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::operator[](*(a1 + 16), a2);
  ValueTypeInternal = *v4;
  if (!*v4)
  {
    ValueTypeInternal = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::CreateValueTypeInternal(a1, a2);
    *v4 = ValueTypeInternal;
  }

  return ValueTypeInternal + 1;
}

uint64_t MIL::Proto::SerializeOperation(MIL::Proto *this, const MIL::IROperation *a2, CoreML::Specification::MILSpec::Operation *a3)
{
  v5 = (*(*this + 72))(this, a2, a3);
  if (v5)
  {
    v6 = (*(*v5 + 16))(v5);
    if (std::string::find(v6, 46, 0) == -1)
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *v6, *(v6 + 8));
      }

      else
      {
        v8 = *v6;
        __str.__r_.__value_.__r.__words[2] = *(v6 + 16);
        *&__str.__r_.__value_.__l.__data_ = v8;
      }
    }

    else
    {
      v7 = std::string::find(v6, 46, 0);
      std::string::basic_string(&__str, v6, v7 + 1, 0xFFFFFFFFFFFFFFFFLL, &v48);
    }

    google::protobuf::internal::ArenaStringPtr::SetNoArena(a2 + 16, &google::protobuf::internal::fixed_address_empty_string, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v9 = (*(*this + 176))(this);
  v10 = *v9;
  v11 = *(v9 + 8);
  while (v10 != v11)
  {
    v12 = google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::NamedValueType>::Add(a2 + 48);
    Name = MIL::IRNamedValueType::GetName(*v10);
    if (*(v12 + 2) == &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena();
    }

    std::string::operator=(*(v12 + 2), Name);
    Type = MIL::IRNamedValueType::GetType(*v10);
    v16 = *(v12 + 3);
    if (!v16)
    {
      operator new();
    }

    MIL::Proto::SerializeValueType(Type, v16, v15);
    v10 += 2;
  }

  v45 = this;
  v17 = (*(*this + 160))(this);
  v18 = *v17;
  v46 = v17 + 1;
  if (*v17 != v17 + 1)
  {
    do
    {
      v20 = v18[7];
      v19 = v18[8];
      while (v20 != v19)
      {
        v21 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::operator[](a2 + 24, (v18 + 4));
        v22 = v21;
        size = v21[1].__r_.__value_.__l.__size_;
        if (!size)
        {
          v25 = HIDWORD(v21[1].__r_.__value_.__r.__words[0]);
LABEL_25:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v21->__r_.__value_.__r.__words[2], v25 + 1);
          size = v22[1].__r_.__value_.__l.__size_;
          v25 = *size;
          goto LABEL_26;
        }

        data_low = SLODWORD(v21[1].__r_.__value_.__l.__data_);
        v25 = *size;
        if (data_low < *size)
        {
          LODWORD(v21[1].__r_.__value_.__l.__data_) = data_low + 1;
          Aligned = *&size[2 * data_low + 2];
          goto LABEL_29;
        }

        if (v25 == HIDWORD(v21[1].__r_.__value_.__r.__words[0]))
        {
          goto LABEL_25;
        }

LABEL_26:
        *size = v25 + 1;
        v27 = v22->__r_.__value_.__r.__words[2];
        if (!v27)
        {
          operator new();
        }

        CoreML::Specification::MILSpec::Argument_Binding::Argument_Binding(Aligned);
        google::protobuf::Arena::AddListNode(v27, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Argument_Binding>);
        v28 = SLODWORD(v22[1].__r_.__value_.__l.__data_);
        v29 = v22[1].__r_.__value_.__l.__size_ + 8 * v28;
        LODWORD(v22[1].__r_.__value_.__l.__data_) = v28 + 1;
        *(v29 + 8) = Aligned;
LABEL_29:
        v30 = (*(**v20 + 16))();
        v31 = *v20;
        if (v30)
        {
          v32 = MIL::IRArgument::GetName(v31);
          if (*(Aligned + 7) != 1)
          {
            CoreML::Specification::MILSpec::Argument_Binding::clear_binding(Aligned);
            *(Aligned + 7) = 1;
            *(Aligned + 2) = &google::protobuf::internal::fixed_address_empty_string;
LABEL_40:
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena();
          }

          v33 = *(Aligned + 2);
          if (v33 == &google::protobuf::internal::fixed_address_empty_string)
          {
            goto LABEL_40;
          }

          std::string::operator=(v33, v32);
        }

        else
        {
          v34 = (*(*v31 + 40))(v31);
          if (!v34)
          {
            goto LABEL_53;
          }

          v35 = v34;
          v36 = (*(*v34 + 40))(v34);
          if (!v36)
          {
            goto LABEL_50;
          }

          v38 = v36;
          if (!(*(*v36 + 120))(v36))
          {
            goto LABEL_50;
          }

          (*(*v38 + 128))(&__str, v38);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            if (!__str.__r_.__value_.__l.__size_)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
LABEL_50:
              if (*(Aligned + 7) != 2)
              {
                CoreML::Specification::MILSpec::Argument_Binding::clear_binding(Aligned);
                *(Aligned + 7) = 2;
                operator new();
              }

              MIL::Proto::SerializeValue(v35, *(Aligned + 2), v37);
              goto LABEL_53;
            }
          }

          else if (!*(&__str.__r_.__value_.__s + 23))
          {
            goto LABEL_50;
          }

          if (*(Aligned + 7) != 1)
          {
            CoreML::Specification::MILSpec::Argument_Binding::clear_binding(Aligned);
            *(Aligned + 7) = 1;
            *(Aligned + 2) = &google::protobuf::internal::fixed_address_empty_string;
LABEL_46:
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena();
          }

          v39 = *(Aligned + 2);
          if (v39 == &google::protobuf::internal::fixed_address_empty_string)
          {
            goto LABEL_46;
          }

          std::string::operator=(v39, &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

LABEL_53:
        v20 += 2;
      }

      v40 = v18[1];
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
          v41 = v18[2];
          v42 = *v41 == v18;
          v18 = v41;
        }

        while (!v42);
      }

      v18 = v41;
    }

    while (v41 != v46);
  }

  Attributes = MIL::IRObject::GetAttributes(v45);
  return MIL::Proto::SerializeAttributes(Attributes);
}

void sub_21806BFFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::operator[](uint64_t a1, const std::string *a2)
{
  v4 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::operator[](*(a1 + 16), a2);
  ValueTypeInternal = *v4;
  if (!*v4)
  {
    ValueTypeInternal = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::CreateValueTypeInternal(a1, a2);
    *v4 = ValueTypeInternal;
  }

  return ValueTypeInternal + 1;
}

void MIL::Proto::SerializeValue(MIL::Proto *this, const MIL::IRValue *a2, CoreML::Specification::MILSpec::Value *a3)
{
  v6 = (*(*this + 32))(this, a2, a3);
  v7 = *(a2 + 3);
  if (!v7)
  {
    operator new();
  }

  MIL::Proto::SerializeValueType(v6, v7, v5);
  v8 = (*(*this + 40))(this);
  if (v8)
  {
    v9 = v8;
    if ((*(*v8 + 80))(v8))
    {
      v11 = (*(*v9 + 88))(v9);
      std::string::basic_string[abi:ne200100]<0>(__p, "path");
      v12 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v11, __p);
      if (!v12)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      MIL::IRValue::GetScalar<std::string>(v12[5], &v58);
      if (v57 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "offset");
      v13 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v11, __p);
      if (!v13)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v14 = MIL::IRValue::GetScalar<unsigned long long>(v13[5]);
      if (v57 < 0)
      {
        operator delete(__p[0]);
      }

      if (*(a2 + 11) != 5)
      {
        CoreML::Specification::MILSpec::Value::clear_value(a2);
        *(a2 + 11) = 5;
        operator new();
      }

      google::protobuf::internal::ArenaStringPtr::SetNoArena((*(a2 + 4) + 16), &google::protobuf::internal::fixed_address_empty_string, &v58);
      if (*(a2 + 11) != 5)
      {
        CoreML::Specification::MILSpec::Value::clear_value(a2);
        *(a2 + 11) = 5;
        operator new();
      }

      *(*(a2 + 4) + 24) = v14;
      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (*(a2 + 11) != 3)
      {
        CoreML::Specification::MILSpec::Value::clear_value(a2);
        *(a2 + 11) = 3;
        operator new();
      }

      v17 = *(a2 + 4);
      if (*(v17 + 28) != 1)
      {
        CoreML::Specification::MILSpec::Value_ImmediateValue::clear_value(v17);
        *(v17 + 28) = 1;
        operator new();
      }

      v18 = *(v17 + 16);

      MIL::Proto::SerializeTensorValue(v9, v18, v10);
    }

    return;
  }

  v15 = (*(*this + 48))(this);
  if (v15)
  {
    if (*(a2 + 11) != 3)
    {
      CoreML::Specification::MILSpec::Value::clear_value(a2);
      *(a2 + 11) = 3;
      operator new();
    }

    v16 = *(a2 + 4);
    if (*(v16 + 28) != 3)
    {
      CoreML::Specification::MILSpec::Value_ImmediateValue::clear_value(v16);
      *(v16 + 28) = 3;
      operator new();
    }

    v21 = *(v16 + 16);
    Values = MIL::IRListValue::GetValues(v15);
    if (v23)
    {
      v24 = Values;
      v25 = 16 * v23;
      do
      {
        v26 = *v24;
        v24 += 2;
        v27 = google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::Value>::Add(v21 + 16);
        MIL::Proto::SerializeValue(v26, v27, v28);
        v25 -= 16;
      }

      while (v25);
    }

    return;
  }

  v19 = (*(*this + 56))(this);
  if (v19)
  {
    if (*(a2 + 11) != 3)
    {
      CoreML::Specification::MILSpec::Value::clear_value(a2);
      *(a2 + 11) = 3;
      operator new();
    }

    v20 = *(a2 + 4);
    if (*(v20 + 28) != 2)
    {
      CoreML::Specification::MILSpec::Value_ImmediateValue::clear_value(v20);
      *(v20 + 28) = 2;
      operator new();
    }

    v32 = *(v20 + 16);
    v33 = MIL::IRTupleValue::GetValues(v19);
    if (v34)
    {
      v35 = v33;
      v36 = 16 * v34;
      do
      {
        v37 = *v35;
        v35 += 2;
        v38 = google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::Value>::Add(v32 + 16);
        MIL::Proto::SerializeValue(v37, v38, v39);
        v36 -= 16;
      }

      while (v36);
    }

    return;
  }

  v29 = (*(*this + 64))(this);
  if (!v29)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Provided type is not supported by the serializer.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v30 = v29;
  if (*(a2 + 11) != 3)
  {
    CoreML::Specification::MILSpec::Value::clear_value(a2);
    *(a2 + 11) = 3;
    operator new();
  }

  v31 = *(a2 + 4);
  if (*(v31 + 28) != 4)
  {
    CoreML::Specification::MILSpec::Value_ImmediateValue::clear_value(v31);
    *(v31 + 28) = 4;
    operator new();
  }

  v40 = *(v31 + 16);
  v41 = MIL::IRDictionaryValue::begin(v29);
  v42 = MIL::IRDictionaryValue::end(v30);
  if (v41 != v42)
  {
    v44 = v42;
    while (1)
    {
      v45 = *(v40 + 32);
      if (!v45)
      {
        break;
      }

      v46 = *(v40 + 24);
      v47 = *v45;
      if (v46 >= *v45)
      {
        if (v47 == *(v40 + 28))
        {
LABEL_63:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v40 + 16), v47 + 1);
          v45 = *(v40 + 32);
          v47 = *v45;
        }

        *v45 = v47 + 1;
        v49 = *(v40 + 16);
        if (!v49)
        {
          operator new();
        }

        CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair::DictionaryValue_KeyValuePair(Aligned);
        google::protobuf::Arena::AddListNode(v49, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair>);
        v50 = *(v40 + 24);
        v51 = *(v40 + 32) + 8 * v50;
        *(v40 + 24) = v50 + 1;
        *(v51 + 8) = Aligned;
        goto LABEL_67;
      }

      *(v40 + 24) = v46 + 1;
      Aligned = *&v45[2 * v46 + 2];
LABEL_67:
      v52 = *(Aligned + 2);
      if (!v52)
      {
        operator new();
      }

      MIL::Proto::SerializeValue(*(v41 + 16), v52, v43);
      v54 = *(Aligned + 3);
      if (!v54)
      {
        operator new();
      }

      MIL::Proto::SerializeValue(*(v41 + 32), v54, v53);
      v41 = *v41;
      if (v41 == v44)
      {
        return;
      }
    }

    v47 = *(v40 + 28);
    goto LABEL_63;
  }
}

uint64_t MIL::Proto::SerializeDimension(MIL::Proto *this, const MIL::IRDimension *a2, CoreML::Specification::MILSpec::Dimension *a3)
{
  if ((*(*this + 16))(this, a2, a3))
  {
    v5 = MIL::IRDimension::AsConstant(this);
    if (*(a2 + 7) != 1)
    {
      CoreML::Specification::MILSpec::Dimension::clear_dimension(a2);
      *(a2 + 7) = 1;
      operator new();
    }

    v6 = *(a2 + 2);
    result = (*(*v5 + 48))(v5);
    *(v6 + 16) = result;
  }

  else
  {
    result = (*(*this + 24))(this);
    if (result)
    {
      if (*(a2 + 7) != 2)
      {
        CoreML::Specification::MILSpec::Dimension::clear_dimension(a2);
        *(a2 + 7) = 2;
        operator new();
      }

      v7 = *(a2 + 2);
      result = (*(*this + 32))(this);
      *(v7 + 16) = result;
    }
  }

  return result;
}

uint64_t CoreML::Specification::MILSpec::ValueType::mutable_statetype(CoreML::Specification::MILSpec::ValueType *this)
{
  if (*(this + 7) != 5)
  {
    CoreML::Specification::MILSpec::ValueType::clear_type(this);
    *(this + 7) = 5;
    operator new();
  }

  return *(this + 2);
}

uint64_t CoreML::Specification::MILSpec::StateType::mutable_wrappedtype(CoreML::Specification::MILSpec::StateType *this)
{
  if (!*(this + 2))
  {
    operator new();
  }

  return *(this + 2);
}

std::string *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::operator[](uint64_t a1, const std::string *a2)
{
  v4 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::operator[](*(a1 + 16), a2);
  ValueTypeInternal = *v4;
  if (!*v4)
  {
    ValueTypeInternal = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::CreateValueTypeInternal(a1, a2);
    *v4 = ValueTypeInternal;
  }

  return ValueTypeInternal + 1;
}

void MIL::Proto::SerializeTensorValue(MIL::Proto *this, const MIL::IRTensorValue *a2, CoreML::Specification::MILSpec::TensorValue *a3)
{
  v5 = (*(*this + 32))(this, a2, a3);
  switch((*(*v5 + 88))(v5))
  {
    case 2u:
      Data = MIL::IRTensorValue::GetDataView<BOOL>(this);
      if (v7)
      {
        v8 = Data;
        v9 = v7;
        do
        {
          if (*(a2 + 7) != 3)
          {
            CoreML::Specification::MILSpec::TensorValue::clear_value(a2);
            *(a2 + 7) = 3;
            operator new();
          }

          v10 = *(a2 + 2);
          v11 = *v8;
          v12 = *(v10 + 16);
          if (v12 == *(v10 + 20))
          {
            google::protobuf::RepeatedField<BOOL>::Reserve((v10 + 16), v12 + 1);
            v12 = *(v10 + 16);
          }

          v13 = *(v10 + 24) + v12;
          *(v10 + 16) = v12 + 1;
          *(v13 + 8) = v11;
          ++v8;
          --v9;
        }

        while (v9);
      }

      return;
    case 3u:
      v79 = MIL::IRTensorValue::GetDataView<std::string>(this);
      if (!v80)
      {
        return;
      }

      v81 = v79;
      v82 = 24 * v80;
      break;
    case 4u:
      v55 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(this);
      v100 = v99;
      if (*(a2 + 7) != 7)
      {
        CoreML::Specification::MILSpec::TensorValue::clear_value(a2);
        *(a2 + 7) = 7;
        operator new();
      }

      goto LABEL_161;
    case 5u:
      v59 = MIL::IRTensorValue::GetDataView<float>(this);
      if (v60)
      {
        v61 = v59;
        v62 = 4 * v60;
        do
        {
          if (*(a2 + 7) != 1)
          {
            CoreML::Specification::MILSpec::TensorValue::clear_value(a2);
            *(a2 + 7) = 1;
            operator new();
          }

          v63 = *(a2 + 2);
          v64 = *v61;
          v65 = *(v63 + 16);
          if (v65 == *(v63 + 20))
          {
            google::protobuf::RepeatedField<float>::Reserve((v63 + 16), v65 + 1);
            v65 = *(v63 + 16);
          }

          v66 = *(v63 + 24) + 4 * v65;
          *(v63 + 16) = v65 + 1;
          *(v66 + 8) = v64;
          ++v61;
          v62 -= 4;
        }

        while (v62);
      }

      return;
    case 6u:
      v91 = MIL::IRTensorValue::GetDataView<double>(this);
      if (v92)
      {
        v93 = v91;
        v94 = 8 * v92;
        do
        {
          if (*(a2 + 7) != 6)
          {
            CoreML::Specification::MILSpec::TensorValue::clear_value(a2);
            *(a2 + 7) = 6;
            operator new();
          }

          v95 = *(a2 + 2);
          v96 = *v93;
          v97 = *(v95 + 16);
          if (v97 == *(v95 + 20))
          {
            google::protobuf::RepeatedField<double>::Reserve((v95 + 16), v97 + 1);
            v97 = *(v95 + 16);
          }

          v98 = *(v95 + 24) + 8 * v97;
          *(v95 + 16) = v97 + 1;
          *(v98 + 8) = v96;
          ++v93;
          v94 -= 8;
        }

        while (v94);
      }

      return;
    case 7u:
      v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(this);
      v100 = v109;
      if (*(a2 + 7) != 7)
      {
        CoreML::Specification::MILSpec::TensorValue::clear_value(a2);
        *(a2 + 7) = 7;
        operator new();
      }

LABEL_161:
      v112 = *(*(a2 + 2) + 16);
      if (v112 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena();
      }

      v113 = 2 * v100;
      goto LABEL_164;
    case 9u:
      v40 = MIL::IRTensorValue::GetDataView<signed char>(this);
      if (v41)
      {
        v42 = v40;
        v43 = v41;
        do
        {
          if (*(a2 + 7) != 7)
          {
            CoreML::Specification::MILSpec::TensorValue::clear_value(a2);
            *(a2 + 7) = 7;
            operator new();
          }

          v44 = *(*(a2 + 2) + 16);
          if (v44 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena();
          }

          v45 = *v42++;
          std::string::push_back(v44, v45);
          --v43;
        }

        while (v43);
      }

      return;
    case 0xAu:
      v101 = MIL::IRTensorValue::GetDataView<short>(this);
      if (v102)
      {
        v103 = v101;
        v104 = 2 * v102;
        do
        {
          if (*(a2 + 7) != 2)
          {
            CoreML::Specification::MILSpec::TensorValue::clear_value(a2);
            *(a2 + 7) = 2;
            operator new();
          }

          v105 = *(a2 + 2);
          v106 = *v103;
          v107 = *(v105 + 16);
          if (v107 == *(v105 + 20))
          {
            google::protobuf::RepeatedField<float>::Reserve((v105 + 16), v107 + 1);
            v107 = *(v105 + 16);
          }

          v108 = *(v105 + 24) + 4 * v107;
          *(v105 + 16) = v107 + 1;
          *(v108 + 8) = v106;
          ++v103;
          v104 -= 2;
        }

        while (v104);
      }

      return;
    case 0xBu:
      v46 = MIL::IRTensorValue::GetDataView<int>(this);
      if (v47)
      {
        v48 = v46;
        v49 = 4 * v47;
        do
        {
          if (*(a2 + 7) != 2)
          {
            CoreML::Specification::MILSpec::TensorValue::clear_value(a2);
            *(a2 + 7) = 2;
            operator new();
          }

          v50 = *(a2 + 2);
          v51 = *v48;
          v52 = *(v50 + 16);
          if (v52 == *(v50 + 20))
          {
            google::protobuf::RepeatedField<float>::Reserve((v50 + 16), v52 + 1);
            v52 = *(v50 + 16);
          }

          v53 = *(v50 + 24) + 4 * v52;
          *(v50 + 16) = v52 + 1;
          *(v53 + 8) = v51;
          ++v48;
          v49 -= 4;
        }

        while (v49);
      }

      return;
    case 0xCu:
      v18 = MIL::IRTensorValue::GetDataView<long long>(this);
      if (v19)
      {
        v20 = v18;
        v21 = 8 * v19;
        do
        {
          if (*(a2 + 7) != 5)
          {
            CoreML::Specification::MILSpec::TensorValue::clear_value(a2);
            *(a2 + 7) = 5;
            operator new();
          }

          v22 = *(a2 + 2);
          v23 = *v20;
          v24 = *(v22 + 16);
          if (v24 == *(v22 + 20))
          {
            google::protobuf::RepeatedField<double>::Reserve((v22 + 16), v24 + 1);
            v24 = *(v22 + 16);
          }

          v25 = *(v22 + 24) + 8 * v24;
          *(v22 + 16) = v24 + 1;
          *(v25 + 8) = v23;
          ++v20;
          v21 -= 8;
        }

        while (v21);
      }

      return;
    case 0xDu:
      v38 = MIL::IRTensorValue::GetDataView<MIL::Int4>(this);
      v28 = ((v39 >> 1) & 0x1FFFFFFFFFFFFFFFLL) + (v39 & 1);
      if (v28)
      {
        v29 = v38;
      }

      else
      {
        v29 = 0;
      }

      if (*(a2 + 7) != 7)
      {
        CoreML::Specification::MILSpec::TensorValue::clear_value(a2);
        *(a2 + 7) = 7;
        operator new();
      }

      goto LABEL_166;
    case 0xEu:
      v14 = MIL::IRTensorValue::GetDataView<unsigned char>(this);
      v16 = v15;
      if (*(a2 + 7) != 7)
      {
        CoreML::Specification::MILSpec::TensorValue::clear_value(a2);
        *(a2 + 7) = 7;
        operator new();
      }

      goto LABEL_157;
    case 0xFu:
      v30 = MIL::IRTensorValue::GetDataView<unsigned short>(this);
      if (v31)
      {
        v32 = v30;
        v33 = 2 * v31;
        do
        {
          if (*(a2 + 7) != 2)
          {
            CoreML::Specification::MILSpec::TensorValue::clear_value(a2);
            *(a2 + 7) = 2;
            operator new();
          }

          v34 = *(a2 + 2);
          v35 = *v32;
          v36 = *(v34 + 16);
          if (v36 == *(v34 + 20))
          {
            google::protobuf::RepeatedField<float>::Reserve((v34 + 16), v36 + 1);
            v36 = *(v34 + 16);
          }

          v37 = *(v34 + 24) + 4 * v36;
          *(v34 + 16) = v36 + 1;
          *(v37 + 8) = v35;
          ++v32;
          v33 -= 2;
        }

        while (v33);
      }

      return;
    case 0x10u:
      v55 = MIL::IRTensorValue::GetDataView<unsigned int>(this);
      if (*(a2 + 7) != 7)
      {
        CoreML::Specification::MILSpec::TensorValue::clear_value(a2);
        *(a2 + 7) = 7;
        operator new();
      }

      v112 = *(*(a2 + 2) + 16);
      if (v112 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena();
      }

      v113 = 4 * v54;
LABEL_164:
      v114 = v55;
      goto LABEL_169;
    case 0x11u:
      v67 = MIL::IRTensorValue::GetDataView<unsigned long long>(this);
      if (v68)
      {
        v69 = v67;
        v70 = 8 * v68;
        do
        {
          if (*(a2 + 7) != 5)
          {
            CoreML::Specification::MILSpec::TensorValue::clear_value(a2);
            *(a2 + 7) = 5;
            operator new();
          }

          v71 = *(a2 + 2);
          v72 = *v69;
          v73 = *(v71 + 16);
          if (v73 == *(v71 + 20))
          {
            google::protobuf::RepeatedField<double>::Reserve((v71 + 16), v73 + 1);
            v73 = *(v71 + 16);
          }

          v74 = *(v71 + 24) + 8 * v73;
          *(v71 + 16) = v73 + 1;
          *(v74 + 8) = v72;
          ++v69;
          v70 -= 8;
        }

        while (v70);
      }

      return;
    case 0x13u:
      v77 = MIL::IRTensorValue::GetDataView<MIL::UInt2>(this);
      if ((v78 & 3) != 0)
      {
        v28 = ((v78 >> 2) & 0x1FFFFFFFFFFFFFFFLL) + 1;
      }

      else
      {
        v28 = (v78 >> 2) & 0x1FFFFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        v29 = v77;
      }

      else
      {
        v29 = 0;
      }

      if (*(a2 + 7) != 7)
      {
        CoreML::Specification::MILSpec::TensorValue::clear_value(a2);
        *(a2 + 7) = 7;
        operator new();
      }

      goto LABEL_166;
    case 0x14u:
      v75 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(this);
      v28 = ((v76 >> 1) & 0x1FFFFFFFFFFFFFFFLL) + (v76 & 1);
      if (v28)
      {
        v29 = v75;
      }

      else
      {
        v29 = 0;
      }

      if (*(a2 + 7) != 7)
      {
        CoreML::Specification::MILSpec::TensorValue::clear_value(a2);
        *(a2 + 7) = 7;
        operator new();
      }

      goto LABEL_166;
    case 0x15u:
      v56 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(this);
      if ((v57 & 7) != 0)
      {
        v28 = (v57 >> 3) + 1;
      }

      else
      {
        v28 = v57 >> 3;
      }

      if (v28)
      {
        v29 = v56;
      }

      else
      {
        v29 = 0;
      }

      if (*(a2 + 7) != 7)
      {
        CoreML::Specification::MILSpec::TensorValue::clear_value(a2);
        *(a2 + 7) = 7;
        operator new();
      }

      goto LABEL_166;
    case 0x16u:
      v110 = MIL::IRTensorValue::GetDataView<MIL::UInt3>(this);
      if (((3 * v111) & 7) != 0)
      {
        v28 = ((3 * v111) >> 3) + 1;
      }

      else
      {
        v28 = (3 * v111) >> 3;
      }

      if (v28)
      {
        v29 = v110;
      }

      else
      {
        v29 = 0;
      }

      if (*(a2 + 7) != 7)
      {
        CoreML::Specification::MILSpec::TensorValue::clear_value(a2);
        *(a2 + 7) = 7;
        operator new();
      }

      goto LABEL_166;
    case 0x17u:
      v26 = MIL::IRTensorValue::GetDataView<MIL::UInt6>(this);
      if (((6 * v27) & 6) != 0)
      {
        v28 = (((3 * v27) >> 2) & 0x1FFFFFFFFFFFFFFFLL) + 1;
      }

      else
      {
        v28 = ((3 * v27) >> 2) & 0x1FFFFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        v29 = v26;
      }

      else
      {
        v29 = 0;
      }

      if (*(a2 + 7) != 7)
      {
        CoreML::Specification::MILSpec::TensorValue::clear_value(a2);
        *(a2 + 7) = 7;
        operator new();
      }

LABEL_166:
      v112 = *(*(a2 + 2) + 16);
      if (v112 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena();
      }

      v114 = v29;
      v113 = v28;
      goto LABEL_169;
    case 0x18u:
      v14 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(this);
      v16 = v17;
      if (*(a2 + 7) != 7)
      {
        CoreML::Specification::MILSpec::TensorValue::clear_value(a2);
        *(a2 + 7) = 7;
        operator new();
      }

      goto LABEL_157;
    case 0x19u:
      v14 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(this);
      v16 = v58;
      if (*(a2 + 7) != 7)
      {
        CoreML::Specification::MILSpec::TensorValue::clear_value(a2);
        *(a2 + 7) = 7;
        operator new();
      }

LABEL_157:
      v112 = *(*(a2 + 2) + 16);
      if (v112 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena();
      }

      v114 = v14;
      v113 = v16;
LABEL_169:

      std::string::append(v112, v114, v113);
      return;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Provided type is not supported by the serializer.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  do
  {
    if (*(a2 + 7) != 4)
    {
      CoreML::Specification::MILSpec::TensorValue::clear_value(a2);
      *(a2 + 7) = 4;
      operator new();
    }

    v83 = *(a2 + 2);
    v84 = *(v83 + 32);
    if (!v84)
    {
      v86 = *(v83 + 28);
LABEL_116:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v83 + 16), v86 + 1);
      v84 = *(v83 + 32);
      v86 = *v84;
      goto LABEL_117;
    }

    v85 = *(v83 + 24);
    v86 = *v84;
    if (v85 < *v84)
    {
      *(v83 + 24) = v85 + 1;
      Aligned = *&v84[2 * v85 + 2];
      goto LABEL_120;
    }

    if (v86 == *(v83 + 28))
    {
      goto LABEL_116;
    }

LABEL_117:
    *v84 = v86 + 1;
    v88 = *(v83 + 16);
    if (!v88)
    {
      operator new();
    }

    Aligned->__r_.__value_.__l.__size_ = 0;
    Aligned->__r_.__value_.__r.__words[2] = 0;
    Aligned->__r_.__value_.__r.__words[0] = 0;
    google::protobuf::Arena::AddListNode(v88, Aligned, google::protobuf::internal::arena_destruct_object<std::string>);
    v89 = *(v83 + 24);
    v90 = *(v83 + 32) + 8 * v89;
    *(v83 + 24) = v89 + 1;
    *(v90 + 8) = Aligned;
LABEL_120:
    std::string::operator=(Aligned, v81++);
    v82 -= 24;
  }

  while (v82);
}

CoreML::Specification::MILSpec::NamedValueType *google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::NamedValueType>::Add(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v4 = *(a1 + 12);
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v4 + 1);
    v2 = *(a1 + 16);
    v4 = *v2;
    goto LABEL_7;
  }

  v3 = *(a1 + 8);
  v4 = *v2;
  if (v3 < *v2)
  {
    *(a1 + 8) = v3 + 1;
    return *&v2[2 * v3 + 2];
  }

  if (v4 == *(a1 + 12))
  {
    goto LABEL_6;
  }

LABEL_7:
  *v2 = v4 + 1;
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  CoreML::Specification::MILSpec::NamedValueType::NamedValueType(Aligned);
  google::protobuf::Arena::AddListNode(v6, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::NamedValueType>);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16) + 8 * v7;
  *(a1 + 8) = v7 + 1;
  *(v8 + 8) = Aligned;
  return Aligned;
}

void google::protobuf::internal::arena_destruct_object<std::string>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

__n128 google::protobuf::internal::ArenaStringPtr::SetNoArena(uint64_t *a1, uint64_t a2, __n128 *a3)
{
  v4 = *a1;
  if (*a1 == a2)
  {
    operator new();
  }

  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  result = *a3;
  *(v4 + 16) = a3[1].n128_u64[0];
  *v4 = result;
  a3[1].n128_u8[7] = 0;
  a3->n128_u8[0] = 0;
  return result;
}

CoreML::Specification::MILSpec::Value *google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::Value>::Add(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v4 = *(a1 + 12);
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v4 + 1);
    v2 = *(a1 + 16);
    v4 = *v2;
    goto LABEL_7;
  }

  v3 = *(a1 + 8);
  v4 = *v2;
  if (v3 < *v2)
  {
    *(a1 + 8) = v3 + 1;
    return *&v2[2 * v3 + 2];
  }

  if (v4 == *(a1 + 12))
  {
    goto LABEL_6;
  }

LABEL_7:
  *v2 = v4 + 1;
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  CoreML::Specification::MILSpec::Value::Value(Aligned);
  google::protobuf::Arena::AddListNode(v6, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Value>);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16) + 8 * v7;
  *(a1 + 8) = v7 + 1;
  *(v8 + 8) = Aligned;
  return Aligned;
}

void google::protobuf::RepeatedField<BOOL>::Reserve(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 < a2)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      v5 = *v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = 2 * v2;
    if (v6 <= a2)
    {
      v6 = a2;
    }

    if (v6 <= 4)
    {
      v7 = 4;
    }

    else
    {
      v7 = v6;
    }

    if (v5)
    {
      Aligned = google::protobuf::Arena::AllocateAligned(v5, MEMORY[0x277D827A0], (v7 + 8));
    }

    else
    {
      Aligned = operator new((v7 + 8));
    }

    *(a1 + 1) = Aligned;
    *Aligned = v5;
    a1[1] = v7;
    v9 = *a1;
    if (v9 >= 1)
    {
      memcpy(Aligned + 1, v4 + 1, v9);
    }

    if (v4 && !*v4)
    {

      operator delete(v4);
    }
  }
}

void google::protobuf::RepeatedField<float>::Reserve(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 < a2)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      v5 = *v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = 2 * v2;
    if (v6 <= a2)
    {
      v6 = a2;
    }

    if (v6 <= 4)
    {
      v7 = 4;
    }

    else
    {
      v7 = v6;
    }

    v8 = 4 * v7;
    if (v5)
    {
      Aligned = google::protobuf::Arena::AllocateAligned(v5, MEMORY[0x277D827A0], v8 + 8);
    }

    else
    {
      Aligned = operator new(v8 + 8);
    }

    *(a1 + 1) = Aligned;
    *Aligned = v5;
    a1[1] = v7;
    v10 = *a1;
    if (v10 >= 1)
    {
      memcpy(Aligned + 1, v4 + 1, 4 * v10);
    }

    if (v4 && !*v4)
    {

      operator delete(v4);
    }
  }
}

void google::protobuf::RepeatedField<double>::Reserve(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 < a2)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      v5 = *v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = 2 * v2;
    if (v6 <= a2)
    {
      v6 = a2;
    }

    if (v6 <= 4)
    {
      v7 = 4;
    }

    else
    {
      v7 = v6;
    }

    v8 = 8 * v7;
    if (v5)
    {
      Aligned = google::protobuf::Arena::AllocateAligned(v5, MEMORY[0x277D827A0], v8 + 8);
    }

    else
    {
      Aligned = operator new(v8 + 8);
    }

    *(a1 + 1) = Aligned;
    *Aligned = v5;
    a1[1] = v7;
    v10 = *a1;
    if (v10 >= 1)
    {
      memcpy(Aligned + 1, v4 + 1, 8 * v10);
    }

    if (v4 && !*v4)
    {

      operator delete(v4);
    }
  }
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::operator[](uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a2, *(a2 + 8));
  }

  else
  {
    v6 = *a2;
  }

  v7 = 0;
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::insert(a1, &v6, v5);
  v3 = v5[0];
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  return v3 + 24;
}

void sub_21806E290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::CreateValueTypeInternal(google::protobuf::Arena **a1, const std::string *a2)
{
  v4 = *a1;
  if (!v4)
  {
    operator new();
  }

  Aligned = google::protobuf::Arena::AllocateAligned(v4, MEMORY[0x277D827B8], 144);
  v6 = *a1;
  Aligned->__r_.__value_.__l.__size_ = 0;
  Aligned->__r_.__value_.__r.__words[2] = 0;
  Aligned->__r_.__value_.__r.__words[0] = 0;
  google::protobuf::Arena::OwnDestructor<std::string>(v6, Aligned);
  v7 = *a1;
  CoreML::Specification::MILSpec::Function::Function(&Aligned[1]);
  google::protobuf::Arena::OwnDestructor<CoreML::Specification::MILSpec::Function>(v7, &Aligned[1]);
  std::string::operator=(Aligned, a2);
  return Aligned;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::insert@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::FindHelper(a1, a2, 0, &v18);
  if (v18)
  {
    v7 = 0;
    v8 = *(&v18 + 1);
    v9 = v19;
    *a3 = v18;
    *(a3 + 8) = v8;
    *(a3 + 16) = v9;
  }

  else
  {
    if (google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::ResizeIfLoadIsOutOfRange(a1, *a1 + 1))
    {
      google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::FindHelper(a1, a2, 0, &v15);
      v18 = v15;
      v10 = v17;
      v19 = v16;
      v20 = v17;
    }

    else
    {
      v10 = v20;
    }

    v11 = a1[5];
    if (v11)
    {
      Aligned = google::protobuf::Arena::AllocateAligned(v11, MEMORY[0x277D827B8], 40);
    }

    else
    {
      Aligned = operator new(0x28uLL);
    }

    v13 = Aligned;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(Aligned, *a2, *(a2 + 1));
    }

    else
    {
      v14 = *a2;
      Aligned->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&Aligned->__r_.__value_.__l.__data_ = v14;
    }

    *(v13 + 24) = *(a2 + 3);
    result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::InsertUnique(a1, v10, v13, a3);
    ++*a1;
    v7 = 1;
  }

  *(a3 + 24) = v7;
  return result;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::ResizeIfLoadIsOutOfRange(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  v3 = ((3 * v2) >> 2) & 0xFFFFFFFFFFFFFFFLL;
  if (v3 <= a2)
  {
    if (v2 <= 0x800000000000000)
    {
      v6 = 2 * v2;
LABEL_16:
      google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::Resize(a1, v6);
      return 1;
    }
  }

  else if (v2 >= 9 && (12 * v2) >> 6 >= a2)
  {
    v7 = 0;
    do
    {
      ++v7;
    }

    while ((a2 + (a2 >> 2) + 1) << v7 < v3);
    v6 = v2 >> v7 <= 8 ? 8 : v2 >> v7;
    if (v6 != v2)
    {
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::InsertUnique@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a3;
  v5 = a2;
  v6 = result;
  v8 = result[4];
  v9 = *(v8 + 8 * a2);
  if (!v9)
  {
    *(a3 + 32) = 0;
    *(v8 + 8 * a2) = a3;
    goto LABEL_8;
  }

  if (v9 != *(v8 + 8 * (a2 ^ 1)))
  {
    v10 = 0;
    v11 = *(v8 + 8 * a2);
    do
    {
      ++v10;
      v11 = *(v11 + 32);
    }

    while (v11);
    if (v10 < 8)
    {
      *(a3 + 32) = v9;
      *(v8 + 8 * a2) = a3;
LABEL_11:
      *a4 = v4;
      a4[1] = v6;
      a4[2] = v5;
      return result;
    }

    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::TreeConvert(result, a2);
    *(v4 + 32) = 0;
    v14 = *(v6[4] + 8 * v5);
    v15 = v4;
    result = std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::__emplace_unique_key_args<std::string *,std::string *>(v14, &v15, &v15);
    v5 &= ~1uLL;
    v4 = result[4];
LABEL_8:
    v12 = v6[3];
    if (v5 < v12)
    {
      v12 = v5;
    }

    v6[3] = v12;
    goto LABEL_11;
  }

  *(a3 + 32) = 0;
  v13 = *(v8 + 8 * a2);
  v15 = a3;
  result = std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::__emplace_unique_key_args<std::string *,std::string *>(v13, &v15, &v15);
  *a4 = result[4];
  a4[1] = v6;
  a4[2] = v5 & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

void google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::Resize(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  a1[1] = a2;
  v5 = a1[4];
  v9 = a1[5];
  v6 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<void *>::allocate(&v9, a2, 0);
  bzero(v6, 8 * a2);
  v7 = a1[3];
  a1[3] = a1[1];
  a1[4] = v6;
  while (v7 < v4)
  {
    v8 = v5[v7];
    if (v8)
    {
      if (v8 == v5[v7 ^ 1])
      {
        google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::TransferTree(a1, v5, v7++);
      }

      else
      {
        google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::TransferList(a1, v5, v7);
      }
    }

    ++v7;
  }

  if (!a1[5])
  {
    operator delete(v5);
  }
}

uint64_t *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::TransferList(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8 * a3);
  do
  {
    v5 = *(v4 + 32);
    v6 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::BucketNumber(a1, v4);
    result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::InsertUnique(a1, v6, v4, v8);
    v4 = v5;
  }

  while (v5);
  return result;
}

void google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::TransferTree(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8 * a3);
  v5 = *v4;
  do
  {
    v6 = v5[4];
    v7 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::BucketNumber(a1, v6);
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::InsertUnique(a1, v7, v6, v11);
    v8 = v5[1];
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v9 = v5[2];
        v10 = *v9 == v5;
        v5 = v9;
      }

      while (!v10);
    }

    v5 = v9;
  }

  while (v9 != v4 + 1);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::DestroyTree(a1, v4);
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<void *>::allocate(google::protobuf::Arena **a1, uint64_t a2, size_t __sz)
{
  v3 = *a1;
  if (v3)
  {
    return google::protobuf::Arena::AllocateAligned(v3, MEMORY[0x277D827B8], 8 * a2);
  }

  else
  {
    return operator new(8 * a2);
  }
}

void google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::DestroyTree(uint64_t a1, void **a2)
{
  v3 = *(a1 + 40);
  std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::destroy(a2, a2[1]);
  if (!v3)
  {

    operator delete(a2);
  }
}

void std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::destroy(a1, *a2);
    std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::destroy(a1, a2[1]);
    if (!*(a1 + 16))
    {

      operator delete(a2);
    }
  }
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::TreeConvert(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    Aligned = google::protobuf::Arena::AllocateAligned(v4, MEMORY[0x277D827B8], 32);
  }

  else
  {
    Aligned = operator new(0x20uLL);
  }

  v6 = Aligned;
  v9[1] = *(a1 + 40);
  v9[2] = 0;
  v8 = v9;
  v9[0] = 0;
  std::set<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::set[abi:ne200100](Aligned, &v8);
  std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::destroy(&v8, v9[0]);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::CopyListToTree(a1, a2, v6);
  result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::CopyListToTree(a1, a2 ^ 1, v6);
  *(*(a1 + 32) + 8 * (a2 ^ 1)) = v6;
  *(*(a1 + 32) + 8 * a2) = v6;
  return result;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::CopyListToTree(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8 * a2);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v8 = v3;
    std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::__emplace_unique_key_args<std::string *,std::string *>(a3, &v8, &v8);
    ++v5;
    v6 = *(v3 + 32);
    *(v3 + 32) = 0;
    v3 = v6;
  }

  while (v6);
  return v5;
}

uint64_t *std::set<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::set[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  a1[1] = 0;
  *a1 = 0;
  a1[2] = *(a2 + 16);
  a1[3] = 0;
  *a1 = (a1 + 1);
  std::set<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::insert[abi:ne200100]<std::__tree_const_iterator<std::string *,std::__tree_node<std::string *,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *std::set<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::insert[abi:ne200100]<std::__tree_const_iterator<std::string *,std::__tree_node<std::string *,void *> *,long>>(uint64_t *result, const void ***a2, const void ****a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::__emplace_hint_unique_key_args<std::string *,std::string * const&>(v5, v5 + 8, v4 + 4, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::__emplace_hint_unique_key_args<std::string *,std::string * const&>(uint64_t a1, uint64_t a2, const void ***a3, uint64_t *a4)
{
  v6 = std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::__find_equal<std::string *>(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::__tree_node<std::string*,void *>>::allocate((a1 + 16), 1, 0);
    v7[4] = *a4;
    std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::__insert_node_at(a1, v11, v8, v7);
  }

  return v7;
}

uint64_t std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::__find_equal<std::string *>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void ***a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !std::less<std::string>::operator()[abi:ne200100](a1, *a5, *(a2 + 32)))
  {
    if (!std::less<std::string>::operator()[abi:ne200100](a1, *(a2 + 32), *a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a1, *a5, v15[4]))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::less<std::string>::operator()[abi:ne200100](a1, *(v12 + 32), *a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::__find_equal<std::string *>(a1, a3, a5);
}

uint64_t *std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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
  a1[3] = (a1[3] + 1);
  return result;
}

uint64_t std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::__find_equal<std::string *>(uint64_t a1, uint64_t *a2, const void ***a3)
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
        if (!std::less<std::string>::operator()[abi:ne200100](a1, *a3, *(v4 + 32)))
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

      if (!std::less<std::string>::operator()[abi:ne200100](a1, *(v8 + 32), *a3))
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

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::__tree_node<std::string*,void *>>::allocate(google::protobuf::Arena **a1, uint64_t a2, size_t __sz)
{
  v3 = *a1;
  if (v3)
  {
    return google::protobuf::Arena::AllocateAligned(v3, MEMORY[0x277D827B8], 40 * a2);
  }

  else
  {
    return operator new(40 * a2);
  }
}

uint64_t *std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::__emplace_unique_key_args<std::string *,std::string *>(uint64_t a1, const void ***a2, uint64_t *a3)
{
  v5 = std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::__find_equal<std::string *>(a1, &v9, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::__tree_node<std::string*,void *>>::allocate((a1 + 16), 1, 0);
    v6[4] = *a3;
    std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::__insert_node_at(a1, v9, v7, v6);
  }

  return v6;
}

std::string *google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function>::MapPair(std::string *this, __int128 *a2)
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

  CoreML::Specification::MILSpec::Function::Function(&this[1]);
  return this;
}

void sub_21806EF60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

google::protobuf::Arena *google::protobuf::Arena::OwnDestructor<std::string>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_destruct_object<std::string>);
  }

  return result;
}

google::protobuf::Arena *google::protobuf::Arena::OwnDestructor<CoreML::Specification::MILSpec::Function>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Function>);
  }

  return result;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::operator[](uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a2, *(a2 + 8));
  }

  else
  {
    v6 = *a2;
  }

  v7 = 0;
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::insert(a1, &v6, v5);
  v3 = v5[0];
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  return v3 + 24;
}

void sub_21806F058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::CreateValueTypeInternal(google::protobuf::Arena **a1, const std::string *a2)
{
  v4 = *a1;
  if (!v4)
  {
    operator new();
  }

  Aligned = google::protobuf::Arena::AllocateAligned(v4, MEMORY[0x277D827B8], 152);
  v6 = *a1;
  Aligned->__r_.__value_.__l.__size_ = 0;
  Aligned->__r_.__value_.__r.__words[2] = 0;
  Aligned->__r_.__value_.__r.__words[0] = 0;
  google::protobuf::Arena::OwnDestructor<std::string>(v6, Aligned);
  v7 = *a1;
  CoreML::Specification::MILSpec::Block::Block(&Aligned[1]);
  google::protobuf::Arena::OwnDestructor<CoreML::Specification::MILSpec::Block>(v7, &Aligned[1]);
  std::string::operator=(Aligned, a2);
  return Aligned;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::insert@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::FindHelper(a1, a2, 0, &v18);
  if (v18)
  {
    v7 = 0;
    v8 = *(&v18 + 1);
    v9 = v19;
    *a3 = v18;
    *(a3 + 8) = v8;
    *(a3 + 16) = v9;
  }

  else
  {
    if (google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::ResizeIfLoadIsOutOfRange(a1, *a1 + 1))
    {
      google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::FindHelper(a1, a2, 0, &v15);
      v18 = v15;
      v10 = v17;
      v19 = v16;
      v20 = v17;
    }

    else
    {
      v10 = v20;
    }

    v11 = a1[5];
    if (v11)
    {
      Aligned = google::protobuf::Arena::AllocateAligned(v11, MEMORY[0x277D827B8], 40);
    }

    else
    {
      Aligned = operator new(0x28uLL);
    }

    v13 = Aligned;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(Aligned, *a2, *(a2 + 1));
    }

    else
    {
      v14 = *a2;
      Aligned->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&Aligned->__r_.__value_.__l.__data_ = v14;
    }

    *(v13 + 24) = *(a2 + 3);
    result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::InsertUnique(a1, v10, v13, a3);
    ++*a1;
    v7 = 1;
  }

  *(a3 + 24) = v7;
  return result;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::ResizeIfLoadIsOutOfRange(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  v3 = ((3 * v2) >> 2) & 0xFFFFFFFFFFFFFFFLL;
  if (v3 <= a2)
  {
    if (v2 <= 0x800000000000000)
    {
      v6 = 2 * v2;
LABEL_16:
      google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::Resize(a1, v6);
      return 1;
    }
  }

  else if (v2 >= 9 && (12 * v2) >> 6 >= a2)
  {
    v7 = 0;
    do
    {
      ++v7;
    }

    while ((a2 + (a2 >> 2) + 1) << v7 < v3);
    v6 = v2 >> v7 <= 8 ? 8 : v2 >> v7;
    if (v6 != v2)
    {
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::InsertUnique@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a3;
  v5 = a2;
  v6 = result;
  v8 = result[4];
  v9 = *(v8 + 8 * a2);
  if (!v9)
  {
    *(a3 + 32) = 0;
    *(v8 + 8 * a2) = a3;
    goto LABEL_8;
  }

  if (v9 != *(v8 + 8 * (a2 ^ 1)))
  {
    v10 = 0;
    v11 = *(v8 + 8 * a2);
    do
    {
      ++v10;
      v11 = *(v11 + 32);
    }

    while (v11);
    if (v10 < 8)
    {
      *(a3 + 32) = v9;
      *(v8 + 8 * a2) = a3;
LABEL_11:
      *a4 = v4;
      a4[1] = v6;
      a4[2] = v5;
      return result;
    }

    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::TreeConvert(result, a2);
    *(v4 + 32) = 0;
    v14 = *(v6[4] + 8 * v5);
    v15 = v4;
    result = std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::__emplace_unique_key_args<std::string *,std::string *>(v14, &v15, &v15);
    v5 &= ~1uLL;
    v4 = result[4];
LABEL_8:
    v12 = v6[3];
    if (v5 < v12)
    {
      v12 = v5;
    }

    v6[3] = v12;
    goto LABEL_11;
  }

  *(a3 + 32) = 0;
  v13 = *(v8 + 8 * a2);
  v15 = a3;
  result = std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::__emplace_unique_key_args<std::string *,std::string *>(v13, &v15, &v15);
  *a4 = result[4];
  a4[1] = v6;
  a4[2] = v5 & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

void google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::Resize(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  a1[1] = a2;
  v5 = a1[4];
  v9 = a1[5];
  v6 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<void *>::allocate(&v9, a2, 0);
  bzero(v6, 8 * a2);
  v7 = a1[3];
  a1[3] = a1[1];
  a1[4] = v6;
  while (v7 < v4)
  {
    v8 = v5[v7];
    if (v8)
    {
      if (v8 == v5[v7 ^ 1])
      {
        google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::TransferTree(a1, v5, v7++);
      }

      else
      {
        google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::TransferList(a1, v5, v7);
      }
    }

    ++v7;
  }

  if (!a1[5])
  {
    operator delete(v5);
  }
}

uint64_t *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::TransferList(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8 * a3);
  do
  {
    v5 = *(v4 + 32);
    v6 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::BucketNumber(a1, v4);
    result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::InsertUnique(a1, v6, v4, v8);
    v4 = v5;
  }

  while (v5);
  return result;
}

void google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::TransferTree(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8 * a3);
  v5 = *v4;
  do
  {
    v6 = v5[4];
    v7 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::BucketNumber(a1, v6);
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::InsertUnique(a1, v7, v6, v11);
    v8 = v5[1];
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v9 = v5[2];
        v10 = *v9 == v5;
        v5 = v9;
      }

      while (!v10);
    }

    v5 = v9;
  }

  while (v9 != v4 + 1);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::DestroyTree(a1, v4);
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::TreeConvert(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    Aligned = google::protobuf::Arena::AllocateAligned(v4, MEMORY[0x277D827B8], 32);
  }

  else
  {
    Aligned = operator new(0x20uLL);
  }

  v6 = Aligned;
  v9[1] = *(a1 + 40);
  v9[2] = 0;
  v8 = v9;
  v9[0] = 0;
  std::set<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::MapAllocator<std::string *>>::set[abi:ne200100](Aligned, &v8);
  std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::destroy(&v8, v9[0]);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::CopyListToTree(a1, a2, v6);
  result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::CopyListToTree(a1, a2 ^ 1, v6);
  *(*(a1 + 32) + 8 * (a2 ^ 1)) = v6;
  *(*(a1 + 32) + 8 * a2) = v6;
  return result;
}

uint64_t *std::set<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::MapAllocator<std::string *>>::set[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  a1[1] = 0;
  *a1 = 0;
  a1[2] = *(a2 + 16);
  a1[3] = 0;
  *a1 = (a1 + 1);
  std::set<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::insert[abi:ne200100]<std::__tree_const_iterator<std::string *,std::__tree_node<std::string *,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

std::string *google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Block>::MapPair(std::string *this, __int128 *a2)
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

  CoreML::Specification::MILSpec::Block::Block(&this[1]);
  return this;
}

void sub_21806F764(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

google::protobuf::Arena *google::protobuf::Arena::OwnDestructor<CoreML::Specification::MILSpec::Block>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Block>);
  }

  return result;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::operator[](uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a2, *(a2 + 8));
  }

  else
  {
    v6 = *a2;
  }

  v7 = 0;
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::insert(a1, &v6, v5);
  v3 = v5[0];
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  return v3 + 24;
}

void sub_21806F840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::CreateValueTypeInternal(google::protobuf::Arena **a1, const std::string *a2)
{
  v4 = *a1;
  if (!v4)
  {
    operator new();
  }

  Aligned = google::protobuf::Arena::AllocateAligned(v4, MEMORY[0x277D827B8], 72);
  v6 = *a1;
  Aligned->__r_.__value_.__l.__size_ = 0;
  Aligned->__r_.__value_.__r.__words[2] = 0;
  Aligned->__r_.__value_.__r.__words[0] = 0;
  google::protobuf::Arena::OwnDestructor<std::string>(v6, Aligned);
  v7 = *a1;
  CoreML::Specification::MILSpec::Argument::Argument(&Aligned[1]);
  google::protobuf::Arena::OwnDestructor<CoreML::Specification::MILSpec::Argument>(v7, &Aligned[1]);
  std::string::operator=(Aligned, a2);
  return Aligned;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::insert@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::FindHelper(a1, a2, 0, &v18);
  if (v18)
  {
    v7 = 0;
    v8 = *(&v18 + 1);
    v9 = v19;
    *a3 = v18;
    *(a3 + 8) = v8;
    *(a3 + 16) = v9;
  }

  else
  {
    if (google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::ResizeIfLoadIsOutOfRange(a1, *a1 + 1))
    {
      google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::FindHelper(a1, a2, 0, &v15);
      v18 = v15;
      v10 = v17;
      v19 = v16;
      v20 = v17;
    }

    else
    {
      v10 = v20;
    }

    v11 = a1[5];
    if (v11)
    {
      Aligned = google::protobuf::Arena::AllocateAligned(v11, MEMORY[0x277D827B8], 40);
    }

    else
    {
      Aligned = operator new(0x28uLL);
    }

    v13 = Aligned;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(Aligned, *a2, *(a2 + 1));
    }

    else
    {
      v14 = *a2;
      Aligned->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&Aligned->__r_.__value_.__l.__data_ = v14;
    }

    *(v13 + 24) = *(a2 + 3);
    result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::InsertUnique(a1, v10, v13, a3);
    ++*a1;
    v7 = 1;
  }

  *(a3 + 24) = v7;
  return result;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::ResizeIfLoadIsOutOfRange(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  v3 = ((3 * v2) >> 2) & 0xFFFFFFFFFFFFFFFLL;
  if (v3 <= a2)
  {
    if (v2 <= 0x800000000000000)
    {
      v6 = 2 * v2;
LABEL_16:
      google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::Resize(a1, v6);
      return 1;
    }
  }

  else if (v2 >= 9 && (12 * v2) >> 6 >= a2)
  {
    v7 = 0;
    do
    {
      ++v7;
    }

    while ((a2 + (a2 >> 2) + 1) << v7 < v3);
    v6 = v2 >> v7 <= 8 ? 8 : v2 >> v7;
    if (v6 != v2)
    {
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::InsertUnique@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a3;
  v5 = a2;
  v6 = result;
  v8 = result[4];
  v9 = *(v8 + 8 * a2);
  if (!v9)
  {
    *(a3 + 32) = 0;
    *(v8 + 8 * a2) = a3;
    goto LABEL_8;
  }

  if (v9 != *(v8 + 8 * (a2 ^ 1)))
  {
    v10 = 0;
    v11 = *(v8 + 8 * a2);
    do
    {
      ++v10;
      v11 = *(v11 + 32);
    }

    while (v11);
    if (v10 < 8)
    {
      *(a3 + 32) = v9;
      *(v8 + 8 * a2) = a3;
LABEL_11:
      *a4 = v4;
      a4[1] = v6;
      a4[2] = v5;
      return result;
    }

    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::TreeConvert(result, a2);
    *(v4 + 32) = 0;
    v14 = *(v6[4] + 8 * v5);
    v15 = v4;
    result = std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::__emplace_unique_key_args<std::string *,std::string *>(v14, &v15, &v15);
    v5 &= ~1uLL;
    v4 = result[4];
LABEL_8:
    v12 = v6[3];
    if (v5 < v12)
    {
      v12 = v5;
    }

    v6[3] = v12;
    goto LABEL_11;
  }

  *(a3 + 32) = 0;
  v13 = *(v8 + 8 * a2);
  v15 = a3;
  result = std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::__emplace_unique_key_args<std::string *,std::string *>(v13, &v15, &v15);
  *a4 = result[4];
  a4[1] = v6;
  a4[2] = v5 & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

void google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::Resize(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  a1[1] = a2;
  v5 = a1[4];
  v9 = a1[5];
  v6 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<void *>::allocate(&v9, a2, 0);
  bzero(v6, 8 * a2);
  v7 = a1[3];
  a1[3] = a1[1];
  a1[4] = v6;
  while (v7 < v4)
  {
    v8 = v5[v7];
    if (v8)
    {
      if (v8 == v5[v7 ^ 1])
      {
        google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::TransferTree(a1, v5, v7++);
      }

      else
      {
        google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::TransferList(a1, v5, v7);
      }
    }

    ++v7;
  }

  if (!a1[5])
  {
    operator delete(v5);
  }
}

uint64_t *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::TransferList(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8 * a3);
  do
  {
    v5 = *(v4 + 32);
    v6 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::BucketNumber(a1, v4);
    result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::InsertUnique(a1, v6, v4, v8);
    v4 = v5;
  }

  while (v5);
  return result;
}

void google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::TransferTree(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8 * a3);
  v5 = *v4;
  do
  {
    v6 = v5[4];
    v7 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::BucketNumber(a1, v6);
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::InsertUnique(a1, v7, v6, v11);
    v8 = v5[1];
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v9 = v5[2];
        v10 = *v9 == v5;
        v5 = v9;
      }

      while (!v10);
    }

    v5 = v9;
  }

  while (v9 != v4 + 1);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::DestroyTree(a1, v4);
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::TreeConvert(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    Aligned = google::protobuf::Arena::AllocateAligned(v4, MEMORY[0x277D827B8], 32);
  }

  else
  {
    Aligned = operator new(0x20uLL);
  }

  v6 = Aligned;
  v9[1] = *(a1 + 40);
  v9[2] = 0;
  v8 = v9;
  v9[0] = 0;
  std::set<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::MapAllocator<std::string *>>::set[abi:ne200100](Aligned, &v8);
  std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::destroy(&v8, v9[0]);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::CopyListToTree(a1, a2, v6);
  result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::CopyListToTree(a1, a2 ^ 1, v6);
  *(*(a1 + 32) + 8 * (a2 ^ 1)) = v6;
  *(*(a1 + 32) + 8 * a2) = v6;
  return result;
}

uint64_t *std::set<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::MapAllocator<std::string *>>::set[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  a1[1] = 0;
  *a1 = 0;
  a1[2] = *(a2 + 16);
  a1[3] = 0;
  *a1 = (a1 + 1);
  std::set<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::insert[abi:ne200100]<std::__tree_const_iterator<std::string *,std::__tree_node<std::string *,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

std::string *google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Argument>::MapPair(std::string *this, __int128 *a2)
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

  CoreML::Specification::MILSpec::Argument::Argument(&this[1]);
  return this;
}

void sub_21806FF4C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

google::protobuf::Arena *google::protobuf::Arena::OwnDestructor<CoreML::Specification::MILSpec::Argument>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Argument>);
  }

  return result;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::operator[](uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a2, *(a2 + 8));
  }

  else
  {
    v6 = *a2;
  }

  v7 = 0;
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::insert(a1, &v6, v5);
  v3 = v5[0];
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  return v3 + 24;
}

void sub_218070028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::CreateValueTypeInternal(google::protobuf::Arena **a1, const std::string *a2)
{
  v4 = *a1;
  if (!v4)
  {
    operator new();
  }

  Aligned = google::protobuf::Arena::AllocateAligned(v4, MEMORY[0x277D827B8], 72);
  v6 = *a1;
  Aligned->__r_.__value_.__l.__size_ = 0;
  Aligned->__r_.__value_.__r.__words[2] = 0;
  Aligned->__r_.__value_.__r.__words[0] = 0;
  google::protobuf::Arena::OwnDestructor<std::string>(v6, Aligned);
  v7 = *a1;
  CoreML::Specification::MILSpec::Value::Value(&Aligned[1]);
  google::protobuf::Arena::OwnDestructor<CoreML::Specification::MILSpec::Value>(v7, &Aligned[1]);
  std::string::operator=(Aligned, a2);
  return Aligned;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::insert@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::FindHelper(a1, a2, 0, &v18);
  if (v18)
  {
    v7 = 0;
    v8 = *(&v18 + 1);
    v9 = v19;
    *a3 = v18;
    *(a3 + 8) = v8;
    *(a3 + 16) = v9;
  }

  else
  {
    if (google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::ResizeIfLoadIsOutOfRange(a1, *a1 + 1))
    {
      google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::FindHelper(a1, a2, 0, &v15);
      v18 = v15;
      v10 = v17;
      v19 = v16;
      v20 = v17;
    }

    else
    {
      v10 = v20;
    }

    v11 = a1[5];
    if (v11)
    {
      Aligned = google::protobuf::Arena::AllocateAligned(v11, MEMORY[0x277D827B8], 40);
    }

    else
    {
      Aligned = operator new(0x28uLL);
    }

    v13 = Aligned;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(Aligned, *a2, *(a2 + 1));
    }

    else
    {
      v14 = *a2;
      Aligned->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&Aligned->__r_.__value_.__l.__data_ = v14;
    }

    *(v13 + 24) = *(a2 + 3);
    result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::InsertUnique(a1, v10, v13, a3);
    ++*a1;
    v7 = 1;
  }

  *(a3 + 24) = v7;
  return result;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::ResizeIfLoadIsOutOfRange(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  v3 = ((3 * v2) >> 2) & 0xFFFFFFFFFFFFFFFLL;
  if (v3 <= a2)
  {
    if (v2 <= 0x800000000000000)
    {
      v6 = 2 * v2;
LABEL_16:
      google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::Resize(a1, v6);
      return 1;
    }
  }

  else if (v2 >= 9 && (12 * v2) >> 6 >= a2)
  {
    v7 = 0;
    do
    {
      ++v7;
    }

    while ((a2 + (a2 >> 2) + 1) << v7 < v3);
    v6 = v2 >> v7 <= 8 ? 8 : v2 >> v7;
    if (v6 != v2)
    {
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::InsertUnique@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a3;
  v5 = a2;
  v6 = result;
  v8 = result[4];
  v9 = *(v8 + 8 * a2);
  if (!v9)
  {
    *(a3 + 32) = 0;
    *(v8 + 8 * a2) = a3;
    goto LABEL_8;
  }

  if (v9 != *(v8 + 8 * (a2 ^ 1)))
  {
    v10 = 0;
    v11 = *(v8 + 8 * a2);
    do
    {
      ++v10;
      v11 = *(v11 + 32);
    }

    while (v11);
    if (v10 < 8)
    {
      *(a3 + 32) = v9;
      *(v8 + 8 * a2) = a3;
LABEL_11:
      *a4 = v4;
      a4[1] = v6;
      a4[2] = v5;
      return result;
    }

    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::TreeConvert(result, a2);
    *(v4 + 32) = 0;
    v14 = *(v6[4] + 8 * v5);
    v15 = v4;
    result = std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::__emplace_unique_key_args<std::string *,std::string *>(v14, &v15, &v15);
    v5 &= ~1uLL;
    v4 = result[4];
LABEL_8:
    v12 = v6[3];
    if (v5 < v12)
    {
      v12 = v5;
    }

    v6[3] = v12;
    goto LABEL_11;
  }

  *(a3 + 32) = 0;
  v13 = *(v8 + 8 * a2);
  v15 = a3;
  result = std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::__emplace_unique_key_args<std::string *,std::string *>(v13, &v15, &v15);
  *a4 = result[4];
  a4[1] = v6;
  a4[2] = v5 & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

void google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::Resize(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  a1[1] = a2;
  v5 = a1[4];
  v9 = a1[5];
  v6 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<void *>::allocate(&v9, a2, 0);
  bzero(v6, 8 * a2);
  v7 = a1[3];
  a1[3] = a1[1];
  a1[4] = v6;
  while (v7 < v4)
  {
    v8 = v5[v7];
    if (v8)
    {
      if (v8 == v5[v7 ^ 1])
      {
        google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::TransferTree(a1, v5, v7++);
      }

      else
      {
        google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::TransferList(a1, v5, v7);
      }
    }

    ++v7;
  }

  if (!a1[5])
  {
    operator delete(v5);
  }
}

uint64_t *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::TransferList(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8 * a3);
  do
  {
    v5 = *(v4 + 32);
    v6 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::BucketNumber(a1, v4);
    result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::InsertUnique(a1, v6, v4, v8);
    v4 = v5;
  }

  while (v5);
  return result;
}

void google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::TransferTree(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8 * a3);
  v5 = *v4;
  do
  {
    v6 = v5[4];
    v7 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::BucketNumber(a1, v6);
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::InsertUnique(a1, v7, v6, v11);
    v8 = v5[1];
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v9 = v5[2];
        v10 = *v9 == v5;
        v5 = v9;
      }

      while (!v10);
    }

    v5 = v9;
  }

  while (v9 != v4 + 1);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::DestroyTree(a1, v4);
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::TreeConvert(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    Aligned = google::protobuf::Arena::AllocateAligned(v4, MEMORY[0x277D827B8], 32);
  }

  else
  {
    Aligned = operator new(0x20uLL);
  }

  v6 = Aligned;
  v9[1] = *(a1 + 40);
  v9[2] = 0;
  v8 = v9;
  v9[0] = 0;
  std::set<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::MapAllocator<std::string *>>::set[abi:ne200100](Aligned, &v8);
  std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::destroy(&v8, v9[0]);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::CopyListToTree(a1, a2, v6);
  result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::CopyListToTree(a1, a2 ^ 1, v6);
  *(*(a1 + 32) + 8 * (a2 ^ 1)) = v6;
  *(*(a1 + 32) + 8 * a2) = v6;
  return result;
}

uint64_t *std::set<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::MapAllocator<std::string *>>::set[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  a1[1] = 0;
  *a1 = 0;
  a1[2] = *(a2 + 16);
  a1[3] = 0;
  *a1 = (a1 + 1);
  std::set<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<std::string *>>::insert[abi:ne200100]<std::__tree_const_iterator<std::string *,std::__tree_node<std::string *,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

std::string *google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Value>::MapPair(std::string *this, __int128 *a2)
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

  CoreML::Specification::MILSpec::Value::Value(&this[1]);
  return this;
}

void sub_218070734(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

google::protobuf::Arena *google::protobuf::Arena::OwnDestructor<CoreML::Specification::MILSpec::Value>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Value>);
  }

  return result;
}

uint64_t MIL::Text::Parser::Program::Program(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  *a1 = &unk_2829E80E0;
  *(a1 + 8) = v6;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  v7 = (*(*a3 + 24))(a3);
  *(a1 + 32) = *MIL::Scanner::Token::GetLocation(v7);
  *a1 = &unk_2829E6500;
  *(a1 + 40) = *a2;
  *a2 = 0;
  a2[1] = 0;
  return a1;
}

void MIL::Text::Parser::Program::Parse(MIL::Text::Parser::Program *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 16);
  UnknownLocationImpl::~UnknownLocationImpl(v6);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 5);
  UnknownLocationImpl::~UnknownLocationImpl(v5);
  v2 = MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Parse<MIL::Text::Parser::SYNTAX_VERSION>(this);
  Options = MIL::ParserContext::GetOptions(*(this + 3));
  (*(*Options + 16))(&v4);
  (*(*v4 + 96))(v4, v2);
  std::allocate_shared[abi:ne200100]<MIL::ParserContext,std::allocator<MIL::ParserContext>,MIL::ParserOptions &,0>();
}

void sub_218070BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  MIL::ValidationResult::~ValidationResult(&a9);
  MIL::ValidationResult::~ValidationResult(&__p);
  v44 = *v41;
  *v41 = 0;
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a41);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v42 - 192);
  v45 = *(v42 - 112);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  v46 = *(v42 - 104);
  *(v42 - 104) = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(uint64_t a1, int a2)
{
  Options = MIL::ParserContext::GetOptions(*(a1 + 24));
  v5 = (*(*Options + 24))(Options);
  v6 = *(a1 + 16);

  return MIL::Scanner::Expect(v6, a2, v5);
}

uint64_t MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Parse<MIL::Text::Parser::SYNTAX_VERSION>(__n128 *a1)
{
  v1 = a1->n128_u64[1];
  v4[0] = &unk_2829E8110;
  v4[1] = v1;
  v5 = a1[1];
  v2 = (*(*v5.n128_u64[0] + 24))(v5.n128_u64[0], v5);
  v6 = *MIL::Scanner::Token::GetLocation(v2);
  v4[0] = &unk_2829E7FD0;
  return MIL::Text::Parser::SYNTAX_VERSION::Parse(v4);
}

double MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::ParseOptWithParserContext<MIL::Text::Parser::AttributesMap>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v8[0] = &unk_2829E8190;
  v8[1] = v5;
  v8[2] = v4;
  v8[3] = a2;
  v6 = (*(*v4 + 24))(v4);
  v8[4] = *MIL::Scanner::Token::GetLocation(v6);
  v8[0] = &unk_2829E7370;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::AttributesMap,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>::ParseOpt(v8, a3);
}

double MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::ParseOptWithParserContext<MIL::Text::Parser::FunctionMap>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v8[0] = &unk_2829E81C0;
  v8[1] = v5;
  v8[2] = v4;
  v8[3] = a2;
  v6 = (*(*v4 + 24))(v4);
  v8[4] = *MIL::Scanner::Token::GetLocation(v6);
  v8[0] = &unk_2829E65B0;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::FunctionMap,std::unordered_map<std::string,std::shared_ptr<MIL::IRFunction>>>::ParseOpt(v8, a3);
}

void MIL::TextLocationFromScannerLocation(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  MIL::TextFileLocation::Make();
}

void sub_2180710B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a15)
  {
    MIL::Builder::FunctionBuilder::FunctionBuilderImpl::FunctionBuilderImpl();
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

MIL::Attributes::BlobFileMutabilityInfo **std::unique_ptr<MIL::Attributes::BlobFileMutabilityInfo>::~unique_ptr[abi:ne200100](MIL::Attributes::BlobFileMutabilityInfo **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::Attributes::BlobFileMutabilityInfo::~BlobFileMutabilityInfo(v2);
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void MIL::Text::Parser::Function::Parse(MIL::Text::Parser::Function *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 17);
  UnknownLocationImpl::~UnknownLocationImpl(v28);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::Parse<MIL::Text::Parser::ID>(this, &v27);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 1);
  UnknownLocationImpl::~UnknownLocationImpl(v26);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::Parse<MIL::Text::Parser::ID>(this, &v25);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 2);
  UnknownLocationImpl::~UnknownLocationImpl(v24);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 5);
  UnknownLocationImpl::~UnknownLocationImpl(v23);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::ParseOpt<MIL::Text::Parser::IDTypeBindingMap>(this, &v22);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 6);
  UnknownLocationImpl::~UnknownLocationImpl(v21);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::ParseOpt<MIL::Text::Parser::AttributesMap>(this, v20);
  Options = MIL::ParserContext::GetOptions(*(this + 3));
  v3 = (*(*Options + 72))(Options);
  v4 = *(this + 1);
  if (v3)
  {
    Opset = (*(*v4 + 16))(v4, &v25);
  }

  else
  {
    if (!Opset)
    {
      v12 = *(this + 4);
      v13 = MIL::ParserContext::GetOptions(*(this + 3));
      v14 = (*(*v13 + 24))(v13);
      MIL::TextLocationFromScannerLocation(v12, v14);
    }
  }

  MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::ParseOpt<MIL::Text::Parser::Block,MIL::IROpset const*&>(this, &Opset, &v18);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::ParseOpt<MIL::Text::Parser::OpsetBlockMap>(this, &v16);
  if (v18)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__emplace_unique_key_args<std::string,std::string&,std::unique_ptr<MIL::IRBlock>>(&v16, &v25);
  }

  if (v3)
  {
    v5 = v16;
    if (v16 != v17)
    {
      do
      {
        if ((*(**(this + 1) + 16))(*(this + 1), v5 + 4))
        {
          v6 = v5[1];
          if (v6)
          {
            do
            {
              v7 = v6;
              v6 = *v6;
            }

            while (v6);
          }

          else
          {
            do
            {
              v7 = v5[2];
              v8 = *v7 == v5;
              v5 = v7;
            }

            while (!v8);
          }
        }

        else
        {
          v7 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__remove_node_pointer(&v16, v5);
          std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::IRBlock>>,0>((v5 + 4));
          operator delete(v5);
        }

        v5 = v7;
      }

      while (v7 != v17);
    }
  }

  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 11);
  UnknownLocationImpl::~UnknownLocationImpl(v15);
  v9 = *(this + 4);
  v10 = MIL::ParserContext::GetOptions(*(this + 3));
  v11 = (*(*v10 + 24))(v10);
  MIL::TextLocationFromScannerLocation(v9, v11);
}

void sub_218071624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, std::__shared_weak_count *a42, uint64_t a43, char a44)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a42);
  }

  if (v45)
  {
    __cxa_free_exception(v44);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a44);
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(v46 - 248, *(v46 - 240));
  if (*(v46 - 137) < 0)
  {
    operator delete(*(v46 - 160));
  }

  if (*(v46 - 81) < 0)
  {
    operator delete(*(v46 - 104));
  }

  _Unwind_Resume(a1);
}

void MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::Parse<MIL::Text::Parser::ID>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v5[0] = &unk_2829E81F0;
  v5[1] = v3;
  v6 = a1[1];
  v4 = (*(*v6.n128_u64[0] + 24))(v6.n128_u64[0], v6);
  v7 = *MIL::Scanner::Token::GetLocation(v4);
  v5[0] = &unk_2829E8028;
  MIL::Text::Parser::ID::Parse(v5, a2);
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::ParseOpt<MIL::Text::Parser::IDTypeBindingMap>@<X0>(__n128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v6[0] = &unk_2829E8220;
  v6[1] = v3;
  v7 = a1[1];
  v4 = (*(*v7.n128_u64[0] + 24))(v7.n128_u64[0], v7);
  v8 = *MIL::Scanner::Token::GetLocation(v4);
  v6[0] = &unk_2829E7420;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::IDTypeBindingMap,std::map<std::string,MIL::IRValueType const*>>::ParseOpt(v6, a2);
}

double MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::ParseOpt<MIL::Text::Parser::AttributesMap>@<D0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v6[0] = &unk_2829E8190;
  v6[1] = v3;
  v7 = a1[1];
  v4 = (*(*v7.n128_u64[0] + 24))(v7.n128_u64[0], v7);
  v8 = *MIL::Scanner::Token::GetLocation(v4);
  v6[0] = &unk_2829E7370;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::AttributesMap,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>::ParseOpt(v6, a2);
}

uint64_t anonymous namespace::RegisterOrTryGetOpset(MIL::Opsets::Common::ios15::ios15Opset *a1, void *a2)
{
  result = (*(*a1 + 16))(a1);
  if (result)
  {
    return result;
  }

  v6 = *(a2 + 23);
  if (v6 < 0)
  {
    if (a2[1] == 5 && **a2 == 829648745 && *(*a2 + 4) == 57)
    {
      goto LABEL_52;
    }

    if (a2[1] == 5 && **a2 == 829648745 && *(*a2 + 4) == 56)
    {
      goto LABEL_53;
    }

    if (a2[1] == 5 && **a2 == 829648745 && *(*a2 + 4) == 55)
    {
      goto LABEL_55;
    }

    if (a2[1] == 5 && **a2 == 829648745 && *(*a2 + 4) == 54)
    {
      goto LABEL_56;
    }

    if (a2[1] == 5)
    {
      v11 = *a2;
      goto LABEL_44;
    }
  }

  else if (v6 == 5)
  {
    if (*a2 != 829648745 || *(a2 + 4) != 57)
    {
      if (*a2 != 829648745 || *(a2 + 4) != 56)
      {
        if (*a2 != 829648745 || *(a2 + 4) != 55)
        {
          v10 = *a2 == 829648745 && *(a2 + 4) == 54;
          v11 = a2;
          if (!v10)
          {
LABEL_44:
            v16 = *v11;
            v17 = *(v11 + 4);
            if (v16 == 829648745 && v17 == 53)
            {
              MIL::Opsets::Common::ios15::ios15Opset::Register(a1, v5);
            }

            goto LABEL_48;
          }

LABEL_56:
          MIL::Opsets::Common::ios16::ios16Opset::Register(a1, v5);
        }

LABEL_55:
        MIL::Opsets::Common::ios17::ios17Opset::Register(a1, v5);
      }

LABEL_53:
      MIL::Opsets::Common::ios18::ios18Opset::Register(a1, v5);
    }

LABEL_52:
    MIL::Opsets::Common::ios19::ios19Opset::Register(a1, v5);
  }

LABEL_48:
  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "ios17_train"))
  {
    MIL::Opsets::Train::ios17Train::ios17_trainOpset::Register(a1, v19);
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "ios16_train"))
  {
    MIL::Opsets::Train::ios16Train::ios16_trainOpset::Register(a1, v20);
  }

  return 0;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::ParseOpt<MIL::Text::Parser::Block,MIL::IROpset const*&>@<X0>(__n128 *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = a1->n128_u64[1];
  v8[0] = &unk_2829E8250;
  v8[1] = v5;
  v9 = a1[1];
  v6 = (*(*v9.n128_u64[0] + 24))(v9.n128_u64[0], v9);
  v10 = *MIL::Scanner::Token::GetLocation(v6);
  v8[0] = &unk_2829E66B8;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::Block,std::unique_ptr<MIL::IRBlock>,MIL::IROpset const*>::ParseOpt(v8, *a2, a3);
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::ParseOpt<MIL::Text::Parser::OpsetBlockMap>@<X0>(__n128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v6[0] = &unk_2829E8280;
  v6[1] = v3;
  v7 = a1[1];
  v4 = (*(*v7.n128_u64[0] + 24))(v7.n128_u64[0], v7);
  v8 = *MIL::Scanner::Token::GetLocation(v4);
  v6[0] = &unk_2829E6660;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::OpsetBlockMap,std::map<std::string,std::unique_ptr<MIL::IRBlock>>>::ParseOpt(v6, a2);
}

void MIL::Text::Parser::FunctionMap::Parse(__n128 *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  MIL::Text::Parser::Rule<MIL::Text::Parser::FunctionMap,std::unordered_map<std::string,std::shared_ptr<MIL::IRFunction>>>::Parse<MIL::Text::Parser::Function>(this);
}

void sub_218071F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::~pair(v26 - 72);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v25);
  _Unwind_Resume(a1);
}

void MIL::Text::Parser::Rule<MIL::Text::Parser::FunctionMap,std::unordered_map<std::string,std::shared_ptr<MIL::IRFunction>>>::Parse<MIL::Text::Parser::Function>(__n128 *a1)
{
  v1 = a1->n128_u64[1];
  v3[0] = &unk_2829E82B0;
  v3[1] = v1;
  v4 = a1[1];
  v2 = (*(*v4.n128_u64[0] + 24))(v4.n128_u64[0], v4);
  v5 = *MIL::Scanner::Token::GetLocation(v2);
  v3[0] = &unk_2829E6558;
  MIL::Text::Parser::Function::Parse(v3);
}

double MIL::Text::Parser::Rule<MIL::Text::Parser::FunctionMap,std::unordered_map<std::string,std::shared_ptr<MIL::IRFunction>>>::ParseOpt<MIL::Text::Parser::Function>@<D0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v6[0] = &unk_2829E82B0;
  v6[1] = v3;
  v7 = a1[1];
  v4 = (*(*v7.n128_u64[0] + 24))(v7.n128_u64[0], v7);
  v8 = *MIL::Scanner::Token::GetLocation(v4);
  v6[0] = &unk_2829E6558;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::ParseOpt(v6, a2);
}

void MIL::Text::Parser::OpsetBlock::Parse(MIL::Text::Parser::OpsetBlock *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 1);
  UnknownLocationImpl::~UnknownLocationImpl(v9);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::Parse<MIL::Text::Parser::ID>(this, &v8);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 2);
  UnknownLocationImpl::~UnknownLocationImpl(v7);
  if (!Opset)
  {
    Options = MIL::ParserContext::GetOptions(*(this + 3));
    if (((*(*Options + 72))(Options) & 1) == 0)
    {
      v3 = *(this + 4);
      v4 = MIL::ParserContext::GetOptions(*(this + 3));
      v5 = (*(*v4 + 24))(v4);
      MIL::TextLocationFromScannerLocation(v3, v5);
    }
  }

  MIL::Text::Parser::Rule<MIL::Text::Parser::OpsetBlock,std::pair<std::string,std::unique_ptr<MIL::IRBlock>>>::Parse<MIL::Text::Parser::Block,MIL::IROpset const*&>(this, &Opset);
}

void sub_218072330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (v27)
  {
    __cxa_free_exception(v26);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (*(v28 - 65) < 0)
  {
    operator delete(*(v28 - 88));
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Parser::Rule<MIL::Text::Parser::OpsetBlock,std::pair<std::string,std::unique_ptr<MIL::IRBlock>>>::Parse<MIL::Text::Parser::Block,MIL::IROpset const*&>(__n128 *a1, const MIL::IROpset **a2)
{
  v3 = a1->n128_u64[1];
  v5[0] = &unk_2829E8250;
  v5[1] = v3;
  v6 = a1[1];
  v4 = (*(*v6.n128_u64[0] + 24))(v6.n128_u64[0], v6);
  v7 = *MIL::Scanner::Token::GetLocation(v4);
  v5[0] = &unk_2829E66B8;
  MIL::Text::Parser::Block::Parse(v5, *a2);
}

void MIL::Text::Parser::OpsetBlockMap::Parse(__n128 *this@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  MIL::Text::Parser::Rule<MIL::Text::Parser::OpsetBlockMap,std::map<std::string,std::unique_ptr<MIL::IRBlock>>>::Parse<MIL::Text::Parser::OpsetBlock>(this);
}

void sub_21807268C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::pair<std::string const,std::unique_ptr<MIL::IRBlock>>::~pair(v26 - 64);
  std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::destroy(v25, *(v25 + 8));
  _Unwind_Resume(a1);
}

void MIL::Text::Parser::Rule<MIL::Text::Parser::OpsetBlockMap,std::map<std::string,std::unique_ptr<MIL::IRBlock>>>::Parse<MIL::Text::Parser::OpsetBlock>(__n128 *a1)
{
  v1 = a1->n128_u64[1];
  v3[0] = &unk_2829E82E0;
  v3[1] = v1;
  v4 = a1[1];
  v2 = (*(*v4.n128_u64[0] + 24))(v4.n128_u64[0], v4);
  v5 = *MIL::Scanner::Token::GetLocation(v2);
  v3[0] = &unk_2829E6608;
  MIL::Text::Parser::OpsetBlock::Parse(v3);
}

double MIL::Text::Parser::Rule<MIL::Text::Parser::OpsetBlockMap,std::map<std::string,std::unique_ptr<MIL::IRBlock>>>::ParseOpt<MIL::Text::Parser::OpsetBlock>@<D0>(__n128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v6[0] = &unk_2829E82E0;
  v6[1] = v3;
  v7 = a1[1];
  v4 = (*(*v7.n128_u64[0] + 24))(v7.n128_u64[0], v7);
  v8 = *MIL::Scanner::Token::GetLocation(v4);
  v6[0] = &unk_2829E6608;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::OpsetBlock,std::pair<std::string,std::unique_ptr<MIL::IRBlock>>>::ParseOpt(v6, a2);
}

void MIL::Text::Parser::Block::Parse(MIL::Text::Parser::Block *this, const MIL::IROpset *a2)
{
  v15 = a2;
  MIL::Text::Parser::Rule<MIL::Text::Parser::Block,std::unique_ptr<MIL::IRBlock>,MIL::IROpset const*>::ParseOpt<MIL::Text::Parser::BlockInputDecls>(this, v14);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::ParseOpt<MIL::Text::Parser::AttributesMap>(this, v13);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 7);
  UnknownLocationImpl::~UnknownLocationImpl(v12);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Block,std::unique_ptr<MIL::IRBlock>,MIL::IROpset const*>::ParseOpt<MIL::Text::Parser::OpList,MIL::IROpset const*&>(this, &v15, v11);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 8);
  UnknownLocationImpl::~UnknownLocationImpl(v10);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 12);
  UnknownLocationImpl::~UnknownLocationImpl(v9);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 5);
  UnknownLocationImpl::~UnknownLocationImpl(v8);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Block,std::unique_ptr<MIL::IRBlock>,MIL::IROpset const*>::ParseOpt<MIL::Text::Parser::IDList>(this, v7);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 6);
  UnknownLocationImpl::~UnknownLocationImpl(v6);
  v3 = *(this + 4);
  Options = MIL::ParserContext::GetOptions(*(this + 3));
  v5 = (*(*Options + 24))(Options);
  MIL::TextLocationFromScannerLocation(v3, v5);
}

void sub_218072A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void ***a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  a12 = &a18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  a18 = (v18 - 160);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a18);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v18 - 104);
  *(v18 - 104) = v18 - 64;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100]((v18 - 104));
  _Unwind_Resume(a1);
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::Block,std::unique_ptr<MIL::IRBlock>,MIL::IROpset const*>::ParseOpt<MIL::Text::Parser::BlockInputDecls>@<X0>(__n128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v6[0] = &unk_2829E8310;
  v6[1] = v3;
  v7 = a1[1];
  v4 = (*(*v7.n128_u64[0] + 24))(v7.n128_u64[0], v7);
  v8 = *MIL::Scanner::Token::GetLocation(v4);
  v6[0] = &unk_2829E6768;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::BlockInputDecls,std::vector<std::shared_ptr<MIL::IRNamedValueType>>>::ParseOpt(v6, a2);
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::Block,std::unique_ptr<MIL::IRBlock>,MIL::IROpset const*>::ParseOpt<MIL::Text::Parser::OpList,MIL::IROpset const*&>@<X0>(__n128 *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = a1->n128_u64[1];
  v8[0] = &unk_2829E8340;
  v8[1] = v5;
  v9 = a1[1];
  v6 = (*(*v9.n128_u64[0] + 24))(v9.n128_u64[0], v9);
  v10 = *MIL::Scanner::Token::GetLocation(v6);
  v8[0] = &unk_2829E6818;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::OpList,std::vector<std::shared_ptr<MIL::IROperation>>,MIL::IROpset const*>::ParseOpt(v8, *a2, a3);
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::Block,std::unique_ptr<MIL::IRBlock>,MIL::IROpset const*>::ParseOpt<MIL::Text::Parser::IDList>@<X0>(__n128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v6[0] = &unk_2829E8370;
  v6[1] = v3;
  v7 = a1[1];
  v4 = (*(*v7.n128_u64[0] + 24))(v7.n128_u64[0], v7);
  v8 = *MIL::Scanner::Token::GetLocation(v4);
  v6[0] = &unk_2829E74D0;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::IDList,std::vector<std::string>>::ParseOpt(v6, a2);
}

void MIL::Text::Parser::BlockList::Parse(__n128 *this@<X0>, const MIL::IROpset *a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  MIL::Text::Parser::Rule<MIL::Text::Parser::OpsetBlock,std::pair<std::string,std::unique_ptr<MIL::IRBlock>>>::Parse<MIL::Text::Parser::Block,MIL::IROpset const*&>(this, &v3);
}

void sub_218072E60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    (*(*a2 + 8))(a2);
  }

  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void MIL::Text::Parser::BlockInputDecls::Parse(__n128 *this@<X0>, void *a2@<X8>)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 5);
  UnknownLocationImpl::~UnknownLocationImpl(v5);
  MIL::Text::Parser::Rule<MIL::Text::Parser::BlockInputDecls,std::vector<std::shared_ptr<MIL::IRNamedValueType>>>::ParseOpt<MIL::Text::Parser::IDTypeBindingList>(this, a2);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 6);
  UnknownLocationImpl::~UnknownLocationImpl(v4);
}

void sub_218072F34(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100]((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::BlockInputDecls,std::vector<std::shared_ptr<MIL::IRNamedValueType>>>::ParseOpt<MIL::Text::Parser::IDTypeBindingList>@<X0>(__n128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v6[0] = &unk_2829E83A0;
  v6[1] = v3;
  v7 = a1[1];
  v4 = (*(*v7.n128_u64[0] + 24))(v7.n128_u64[0], v7);
  v8 = *MIL::Scanner::Token::GetLocation(v4);
  v6[0] = &unk_2829E7478;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::IDTypeBindingList,std::vector<std::shared_ptr<MIL::IRNamedValueType>>>::ParseOpt(v6, a2);
}

void MIL::Text::Parser::Op::Parse(MIL::Text::Parser::Op *this, const MIL::IROpset *a2)
{
  v19 = 0;
  v20 = a2;
  v18 = 0uLL;
  v3 = (*(**(this + 2) + 24))(*(this + 2));
  if (MIL::Scanner::Token::GetType(v3) != 54)
  {
    MIL::Text::Parser::Rule<MIL::Text::Parser::Op,std::shared_ptr<MIL::IROperation>,MIL::IROpset const*>::Parse<MIL::Text::Parser::IDTypeBindingList>(this, &__dst);
  }

  MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::Parse<MIL::Text::Parser::ID>(this, &__p);
  v4 = (*(**(this + 2) + 24))(*(this + 2));
  if (MIL::Scanner::Token::GetType(v4) == 1)
  {
    (*(**(this + 2) + 16))(&__dst);
    UnknownLocationImpl::~UnknownLocationImpl(&__dst);
    Options = MIL::ParserContext::GetOptions(*(this + 3));
    if ((*(*Options + 88))(Options) <= 2)
    {
      v10 = *(this + 4);
      v11 = MIL::ParserContext::GetOptions(*(this + 3));
      v12 = (*(*v11 + 24))(v11);
      MIL::TextLocationFromScannerLocation(v10, v12);
    }

    MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::Parse<MIL::Text::Parser::ID>(this, &v22);
    if (!Opset)
    {
      v13 = *(this + 4);
      v14 = MIL::ParserContext::GetOptions(*(this + 3));
      v15 = (*(*v14 + 24))(v14);
      MIL::TextLocationFromScannerLocation(v13, v15);
    }

    MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 2);
    UnknownLocationImpl::~UnknownLocationImpl(&v21);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    (*(*Opset + 16))(Opset);
  }

  v7 = *(this + 4);
  v8 = MIL::ParserContext::GetOptions(*(this + 3));
  v9 = (*(*v8 + 24))(v8);
  MIL::TextLocationFromScannerLocation(v7, v9);
}

void sub_2180739CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, std::__shared_weak_count *a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a57 < 0)
  {
    operator delete(__p);
  }

  if (*(v73 - 233) < 0)
  {
    operator delete(*(v73 - 256));
  }

  if (*(v73 - 89) < 0)
  {
    operator delete(*(v73 - 112));
  }

  if (*(v73 - 113) < 0)
  {
    operator delete(*(v73 - 136));
  }

  if (a59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a59);
  }

  if (v72)
  {
    __cxa_free_exception(v71);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  v75 = *(v73 - 208);
  if (v75)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v75);
  }

  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  *(v73 - 216) = &a70;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100]((v73 - 216));
  _Unwind_Resume(a1);
}

void MIL::Text::Parser::Rule<MIL::Text::Parser::Op,std::shared_ptr<MIL::IROperation>,MIL::IROpset const*>::Parse<MIL::Text::Parser::IDTypeBindingList>(__n128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v5.n128_u64[0] = &unk_2829E83A0;
  v5.n128_u64[1] = v3;
  v6 = a1[1];
  v4 = (*(*v6.n128_u64[0] + 24))(v6.n128_u64[0], v6);
  v7 = *MIL::Scanner::Token::GetLocation(v4);
  v5.n128_u64[0] = &unk_2829E7478;
  MIL::Text::Parser::IDTypeBindingList::Parse(&v5, a2);
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::Op,std::shared_ptr<MIL::IROperation>,MIL::IROpset const*>::ParseOpt<MIL::Text::Parser::IDArgumentBindingMap>@<X0>(__n128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v6[0] = &unk_2829E83D0;
  v6[1] = v3;
  v7 = a1[1];
  v4 = (*(*v7.n128_u64[0] + 24))(v7.n128_u64[0], v7);
  v8 = *MIL::Scanner::Token::GetLocation(v4);
  v6[0] = &unk_2829E7268;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::IDArgumentBindingMap,std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>::ParseOpt(v6, a2);
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::Op,std::shared_ptr<MIL::IROperation>,MIL::IROpset const*>::ParseOpt<MIL::Text::Parser::BlockList,MIL::IROpset const*&>@<X0>(__n128 *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = a1->n128_u64[1];
  v8[0] = &unk_2829E8400;
  v8[1] = v5;
  v9 = a1[1];
  v6 = (*(*v9.n128_u64[0] + 24))(v9.n128_u64[0], v9);
  v10 = *MIL::Scanner::Token::GetLocation(v6);
  v8[0] = &unk_2829E6710;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::BlockList,std::vector<std::shared_ptr<MIL::IRBlock>>,MIL::IROpset const*>::ParseOpt(v8, *a2, a3);
}

void MIL::Text::Parser::OpList::Parse(__n128 *this@<X0>, const MIL::IROpset *a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  MIL::Text::Parser::Rule<MIL::Text::Parser::OpList,std::vector<std::shared_ptr<MIL::IROperation>>,MIL::IROpset const*>::Parse<MIL::Text::Parser::Op,MIL::IROpset const*&>(this, &v3);
}

void sub_218073FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void MIL::Text::Parser::Rule<MIL::Text::Parser::OpList,std::vector<std::shared_ptr<MIL::IROperation>>,MIL::IROpset const*>::Parse<MIL::Text::Parser::Op,MIL::IROpset const*&>(__n128 *a1, const MIL::IROpset **a2)
{
  v3 = a1->n128_u64[1];
  v5[0] = &unk_2829E8430;
  v5[1] = v3;
  v6 = a1[1];
  v4 = (*(*v6.n128_u64[0] + 24))(v6.n128_u64[0], v6);
  v7 = *MIL::Scanner::Token::GetLocation(v4);
  v5[0] = &unk_2829E67C0;
  MIL::Text::Parser::Op::Parse(v5, *a2);
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::OpList,std::vector<std::shared_ptr<MIL::IROperation>>,MIL::IROpset const*>::ParseOpt<MIL::Text::Parser::Op,MIL::IROpset const*&>@<X0>(__n128 *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = a1->n128_u64[1];
  v8[0] = &unk_2829E8430;
  v8[1] = v5;
  v9 = a1[1];
  v6 = (*(*v9.n128_u64[0] + 24))(v9.n128_u64[0], v9);
  v10 = *MIL::Scanner::Token::GetLocation(v6);
  v8[0] = &unk_2829E67C0;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::Op,std::shared_ptr<MIL::IROperation>,MIL::IROpset const*>::ParseOpt(v8, *a2, a3);
}

uint64_t MIL::Text::Parser::Value::Parse@<X0>(__n128 *this@<X0>, void *a2@<X8>)
{
  v9 = MIL::Text::Parser::Rule<MIL::Text::Parser::Value,std::shared_ptr<MIL::IRValue const>>::Parse<MIL::Text::Parser::Type>(this);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 5);
  UnknownLocationImpl::~UnknownLocationImpl(v8);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Value,std::shared_ptr<MIL::IRValue const>>::Parse<MIL::Text::Parser::ValueLiteral,MIL::IRValueType const*&>(this, &v9, &v7);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 6);
  UnknownLocationImpl::~UnknownLocationImpl(&v6);
  v4 = v7;
  *a2 = v7;
  if (v4)
  {
    operator new();
  }

  result = 0;
  a2[1] = 0;
  return result;
}

void sub_21807426C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::Parser::Rule<MIL::Text::Parser::Value,std::shared_ptr<MIL::IRValue const>>::Parse<MIL::Text::Parser::Type>(__n128 *a1)
{
  v1 = a1->n128_u64[1];
  v4[0] = &unk_2829E8460;
  v4[1] = v1;
  v5 = a1[1];
  v2 = (*(*v5.n128_u64[0] + 24))(v5.n128_u64[0], v5);
  v6 = *MIL::Scanner::Token::GetLocation(v2);
  v4[0] = &unk_2829E6C38;
  return MIL::Text::Parser::Type::Parse(v4);
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::Value,std::shared_ptr<MIL::IRValue const>>::Parse<MIL::Text::Parser::ValueLiteral,MIL::IRValueType const*&>@<X0>(__n128 *a1@<X0>, const MIL::IRValueType **a2@<X1>, uint64_t **a3@<X8>)
{
  v5 = a1->n128_u64[1];
  v8[0] = &unk_2829E8490;
  v8[1] = v5;
  v9 = a1[1];
  v6 = (*(*v9.n128_u64[0] + 24))(v9.n128_u64[0], v9);
  v10 = *MIL::Scanner::Token::GetLocation(v6);
  v8[0] = &unk_2829E6920;
  return MIL::Text::Parser::ValueLiteral::Parse(v8, *a2, a3);
}

uint64_t MIL::Text::Parser::ValueAssign::Parse@<X0>(__n128 *this@<X0>, void *a2@<X8>)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 0);
  UnknownLocationImpl::~UnknownLocationImpl(&v5);
  return MIL::Text::Parser::Rule<MIL::Text::Parser::ValueAssign,std::shared_ptr<MIL::IRValue const>>::Parse<MIL::Text::Parser::Value>(this, a2);
}

uint64_t MIL::Text::Parser::Rule<MIL::Text::Parser::ValueAssign,std::shared_ptr<MIL::IRValue const>>::Parse<MIL::Text::Parser::Value>@<X0>(__n128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v6.n128_u64[0] = &unk_2829E84C0;
  v6.n128_u64[1] = v3;
  v7 = a1[1];
  v4 = (*(*v7.n128_u64[0] + 24))(v7.n128_u64[0], v7);
  v8 = *MIL::Scanner::Token::GetLocation(v4);
  v6.n128_u64[0] = &unk_2829E6870;
  return MIL::Text::Parser::Value::Parse(&v6, a2);
}

uint64_t *MIL::Text::Parser::ValueLiteral::Parse@<X0>(MIL::Text::Parser::ValueLiteral *this@<X0>, const MIL::IRValueType *a2@<X1>, uint64_t **a3@<X8>)
{
  v11 = a2;
  result = MIL::Text::Parser::Rule<MIL::Text::Parser::ValueLiteral,std::unique_ptr<MIL::IRValue const>,MIL::IRValueType const*>::ParseOpt<MIL::Text::Parser::IValue,MIL::IRValueType const*&>(this, &v11, a3);
  if (!*a3)
  {
    MIL::Text::Parser::Rule<MIL::Text::Parser::ValueLiteral,std::unique_ptr<MIL::IRValue const>,MIL::IRValueType const*>::ParseOpt<MIL::Text::Parser::RefValue,MIL::IRValueType const*&>(this, &v11, &v10);
    v6 = v10;
    v10 = 0;
    result = *a3;
    *a3 = v6;
    if (result)
    {
      (*(*result + 8))(result);
      result = v10;
      v10 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      v6 = *a3;
    }

    if (!v6)
    {
      v7 = *(this + 4);
      Options = MIL::ParserContext::GetOptions(*(this + 3));
      v9 = (*(*Options + 24))(Options);
      MIL::TextLocationFromScannerLocation(v7, v9);
    }
  }

  return result;
}

void sub_218074664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v20)
  {
    __cxa_free_exception(v19);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  v22 = *v18;
  *v18 = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::ValueLiteral,std::unique_ptr<MIL::IRValue const>,MIL::IRValueType const*>::ParseOpt<MIL::Text::Parser::IValue,MIL::IRValueType const*&>@<X0>(__n128 *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = a1->n128_u64[1];
  v8[0] = &unk_2829E84F0;
  v8[1] = v5;
  v9 = a1[1];
  v6 = (*(*v9.n128_u64[0] + 24))(v9.n128_u64[0], v9);
  v10 = *MIL::Scanner::Token::GetLocation(v6);
  v8[0] = &unk_2829E6978;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::IValue,std::unique_ptr<MIL::IRValue const>,MIL::IRValueType const*>::ParseOpt(v8, *a2, a3);
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::ValueLiteral,std::unique_ptr<MIL::IRValue const>,MIL::IRValueType const*>::ParseOpt<MIL::Text::Parser::RefValue,MIL::IRValueType const*&>@<X0>(__n128 *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = a1->n128_u64[1];
  v8[0] = &unk_2829E8520;
  v8[1] = v5;
  v9 = a1[1];
  v6 = (*(*v9.n128_u64[0] + 24))(v9.n128_u64[0], v9);
  v10 = *MIL::Scanner::Token::GetLocation(v6);
  v8[0] = &unk_2829E69D0;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::RefValue,std::unique_ptr<MIL::IRValue const>,MIL::IRValueType const*>::ParseOpt(v8, *a2, a3);
}

void MIL::Text::Parser::IValue::Parse(MIL::Text::Parser::IValue *this, const MIL::IRValueType *a2)
{
  v10 = (*(*a2 + 24))(a2);
  if (v10)
  {
    MIL::Text::Parser::Rule<MIL::Text::Parser::IValue,std::unique_ptr<MIL::IRValue const>,MIL::IRValueType const*>::Parse<MIL::Text::Parser::TensorVal,MIL::IRTensorValueType const*&>(this, &v10);
  }

  v9 = (*(*a2 + 32))(a2);
  if (v9)
  {
    MIL::Text::Parser::Rule<MIL::Text::Parser::IValue,std::unique_ptr<MIL::IRValue const>,MIL::IRValueType const*>::Parse<MIL::Text::Parser::ListVal,MIL::IRListValueType const*&>(this, &v9);
  }

  v8 = (*(*a2 + 48))(a2);
  if (v8)
  {
    MIL::Text::Parser::Rule<MIL::Text::Parser::IValue,std::unique_ptr<MIL::IRValue const>,MIL::IRValueType const*>::Parse<MIL::Text::Parser::DictVal,MIL::IRDictionaryValueType const*&>(this, &v8);
  }

  v7 = (*(*a2 + 40))(a2);
  if (v7)
  {
    MIL::Text::Parser::Rule<MIL::Text::Parser::IValue,std::unique_ptr<MIL::IRValue const>,MIL::IRValueType const*>::Parse<MIL::Text::Parser::TupleVal,MIL::IRTupleValueType const*&>(this, &v7);
  }

  v4 = *(this + 4);
  Options = MIL::ParserContext::GetOptions(*(this + 3));
  v6 = (*(*Options + 24))(Options);
  MIL::TextLocationFromScannerLocation(v4, v6);
}

void sub_218074A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (v20)
  {
    __cxa_free_exception(v19);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Parser::Rule<MIL::Text::Parser::IValue,std::unique_ptr<MIL::IRValue const>,MIL::IRValueType const*>::Parse<MIL::Text::Parser::TensorVal,MIL::IRTensorValueType const*&>(__n128 *a1, const MIL::IRTensorValueType **a2)
{
  v3 = a1->n128_u64[1];
  v5[0] = &unk_2829E8550;
  v5[1] = v3;
  v6 = a1[1];
  v4 = (*(*v6.n128_u64[0] + 24))(v6.n128_u64[0], v6);
  v7 = *MIL::Scanner::Token::GetLocation(v4);
  v5[0] = &unk_2829E6BE0;
  MIL::Text::Parser::TensorVal::Parse(v5, *a2);
}

void MIL::Text::Parser::Rule<MIL::Text::Parser::IValue,std::unique_ptr<MIL::IRValue const>,MIL::IRValueType const*>::Parse<MIL::Text::Parser::ListVal,MIL::IRListValueType const*&>(__n128 *a1, const MIL::IRListValueType **a2)
{
  v3 = a1->n128_u64[1];
  v5.n128_u64[0] = &unk_2829E8580;
  v5.n128_u64[1] = v3;
  v6 = a1[1];
  v4 = (*(*v6.n128_u64[0] + 24))(v6.n128_u64[0], v6);
  v7 = *MIL::Scanner::Token::GetLocation(v4);
  v5.n128_u64[0] = &unk_2829E6A80;
  MIL::Text::Parser::ListVal::Parse(&v5, *a2);
}

void MIL::Text::Parser::Rule<MIL::Text::Parser::IValue,std::unique_ptr<MIL::IRValue const>,MIL::IRValueType const*>::Parse<MIL::Text::Parser::DictVal,MIL::IRDictionaryValueType const*&>(__n128 *a1, const MIL::IRDictionaryValueType **a2)
{
  v3 = a1->n128_u64[1];
  v5.n128_u64[0] = &unk_2829E85B0;
  v5.n128_u64[1] = v3;
  v6 = a1[1];
  v4 = (*(*v6.n128_u64[0] + 24))(v6.n128_u64[0], v6);
  v7 = *MIL::Scanner::Token::GetLocation(v4);
  v5.n128_u64[0] = &unk_2829E6B88;
  MIL::Text::Parser::DictVal::Parse(&v5, *a2);
}

void MIL::Text::Parser::Rule<MIL::Text::Parser::IValue,std::unique_ptr<MIL::IRValue const>,MIL::IRValueType const*>::Parse<MIL::Text::Parser::TupleVal,MIL::IRTupleValueType const*&>(__n128 *a1, const MIL::IRTupleValueType **a2)
{
  v3 = a1->n128_u64[1];
  v5.n128_u64[0] = &unk_2829E85E0;
  v5.n128_u64[1] = v3;
  v6 = a1[1];
  v4 = (*(*v6.n128_u64[0] + 24))(v6.n128_u64[0], v6);
  v7 = *MIL::Scanner::Token::GetLocation(v4);
  v5.n128_u64[0] = &unk_2829E6A28;
  MIL::Text::Parser::TupleVal::Parse(&v5, *a2);
}

void MIL::Text::Parser::RefValue::Parse(MIL::Text::Parser::RefValue *this, const MIL::IRValueType *a2)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::Parse<MIL::Text::Parser::ID>(this, &v10);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 5);
  UnknownLocationImpl::~UnknownLocationImpl(v9);
  MIL::Text::Parser::Rule<MIL::Text::Parser::RefValue,std::unique_ptr<MIL::IRValue const>,MIL::IRValueType const*>::ParseOpt<MIL::Text::Parser::IDValueBindingMap>(this, v8);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 6);
  UnknownLocationImpl::~UnknownLocationImpl(v7);
  if ((*(*a2 + 24))(a2))
  {
    MIL::IRTensorValueType::MakeScalar();
  }

  __cxa_allocate_exception(0x48uLL);
  v4 = *(this + 4);
  Options = MIL::ParserContext::GetOptions(*(this + 3));
  v6 = (*(*Options + 24))(Options);
  MIL::TextLocationFromScannerLocation(v4, v6);
}

void sub_218075238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
    if ((v42 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v42)
  {
LABEL_10:
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v44 - 160);
    if (*(v44 - 65) < 0)
    {
      operator delete(*(v44 - 88));
    }

    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v43);
  goto LABEL_10;
}

void sub_2180752C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a27)
  {
    (*(*a27 + 8))(a27);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v45 - 160);
  if (*(v45 - 65) < 0)
  {
    operator delete(*(v45 - 88));
  }

  _Unwind_Resume(a1);
}

void sub_218075360(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  v40 = *(v39 - 56);
  *(v39 - 56) = 0;
  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  if (a39 < 0)
  {
    JUMPOUT(0x218075508);
  }

  JUMPOUT(0x21807550CLL);
}

void sub_2180754A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v32)
  {
    __cxa_free_exception(v31);
  }

  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  __cxa_end_catch();
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v33 - 160);
  if (*(v33 - 65) < 0)
  {
    operator delete(*(v33 - 88));
  }

  _Unwind_Resume(a1);
}

double MIL::Text::Parser::Rule<MIL::Text::Parser::RefValue,std::unique_ptr<MIL::IRValue const>,MIL::IRValueType const*>::ParseOpt<MIL::Text::Parser::IDValueBindingMap>@<D0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v6[0] = &unk_2829E8610;
  v6[1] = v3;
  v7 = a1[1];
  v4 = (*(*v7.n128_u64[0] + 24))(v7.n128_u64[0], v7);
  v8 = *MIL::Scanner::Token::GetLocation(v4);
  v6[0] = &unk_2829E7318;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::IDValueBindingMap,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>::ParseOpt(v6, a2);
}

void MIL::Text::Parser::TupleVal::Parse(__n128 *this, const MIL::IRTupleValueType *a2)
{
  memset(v16, 0, sizeof(v16));
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 5);
  UnknownLocationImpl::~UnknownLocationImpl(v15);
  v4 = (*(*a2 + 64))(a2);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    do
    {
      v14 = *v5;
      MIL::Text::Parser::Rule<MIL::Text::Parser::Value,std::shared_ptr<MIL::IRValue const>>::Parse<MIL::Text::Parser::ValueLiteral,MIL::IRValueType const*&>(this, &v14, &v11);
      v12 = v11;
      if (v11)
      {
        operator new();
      }

      v13 = 0;
      v11 = 0;
      std::vector<std::shared_ptr<MIL::IRValue const>>::push_back[abi:ne200100](v16, &v12);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v7 = v11;
      v11 = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      v8 = (*(*this[1].n128_u64[0] + 24))(this[1].n128_u64[0]);
      if (MIL::Scanner::Token::GetType(v8) != 9)
      {
        break;
      }

      (*(*this[1].n128_u64[0] + 16))(v10);
      UnknownLocationImpl::~UnknownLocationImpl(v10);
      ++v5;
    }

    while (v5 != v6);
  }

  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 6);
  UnknownLocationImpl::~UnknownLocationImpl(v9);
  MIL::IRTupleValueType::MakeValue();
}

void sub_2180757D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  a19 = (v19 - 72);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void MIL::Text::Parser::ListVal::Parse(__n128 *this, const MIL::IRListValueType *a2)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 3);
  UnknownLocationImpl::~UnknownLocationImpl(v10);
  v8 = (*(*a2 + 64))(a2);
  MIL::Text::Parser::Rule<MIL::Text::Parser::ListVal,std::unique_ptr<MIL::IRListValue const>,MIL::IRListValueType const*>::ParseOpt<MIL::Text::Parser::ValueLiteral,MIL::IRValueType const*>(this, &v8, &v9);
  if (v9)
  {
    v8 = v9;
    operator new();
  }

  v4 = (*(*a2 + 72))(a2);
  if ((*(*v4 + 24))(v4))
  {
    v5 = this->n128_u64[1];
    v6 = (*(*a2 + 64))(a2);
    MIL::IRListValueType::Make(v5, v6, ((v12 - v11) >> 4));
  }

  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 4);
  UnknownLocationImpl::~UnknownLocationImpl(&v7);
  MIL::IRListValueType::MakeValue();
}

void sub_218075B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, std::__shared_weak_count *a20, uint64_t a21)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  v23 = a21;
  a21 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  a19 = (v21 - 56);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::ListVal,std::unique_ptr<MIL::IRListValue const>,MIL::IRListValueType const*>::ParseOpt<MIL::Text::Parser::ValueLiteral,MIL::IRValueType const*>@<X0>(__n128 *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = a1->n128_u64[1];
  v8[0] = &unk_2829E8490;
  v8[1] = v5;
  v9 = a1[1];
  v6 = (*(*v9.n128_u64[0] + 24))(v9.n128_u64[0], v9);
  v10 = *MIL::Scanner::Token::GetLocation(v6);
  v8[0] = &unk_2829E6920;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::ValueLiteral,std::unique_ptr<MIL::IRValue const>,MIL::IRValueType const*>::ParseOpt(v8, *a2, a3);
}

void MIL::Text::Parser::DictItem::Parse(__n128 *this@<X0>, const MIL::IRValueType *a2@<X1>, const MIL::IRValueType *a3@<X2>, void *a4@<X8>)
{
  v12 = a3;
  v13 = a2;
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 7);
  UnknownLocationImpl::~UnknownLocationImpl(v11);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Value,std::shared_ptr<MIL::IRValue const>>::Parse<MIL::Text::Parser::ValueLiteral,MIL::IRValueType const*&>(this, &v13, &v10);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 9);
  UnknownLocationImpl::~UnknownLocationImpl(v9);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Value,std::shared_ptr<MIL::IRValue const>>::Parse<MIL::Text::Parser::ValueLiteral,MIL::IRValueType const*&>(this, &v12, &v8);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 8);
  UnknownLocationImpl::~UnknownLocationImpl(&v7);
  v6 = v8;
  *a4 = v10;
  a4[1] = v6;
}

void sub_218075DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a13)
  {
  }

  if (a18)
  {
    (*(*a18 + 8))(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::Parser::DictItemList::Parse@<X0>(__n128 *this@<X0>, const MIL::IRValueType *a2@<X1>, const MIL::IRValueType *a3@<X2>, uint64_t a4@<X8>)
{
  v13 = a3;
  v14 = a2;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  MIL::Text::Parser::Rule<MIL::Text::Parser::DictItemList,std::vector<std::pair<std::unique_ptr<MIL::IRValue const>,std::unique_ptr<MIL::IRValue const>>>,MIL::IRValueType const*,MIL::IRValueType const*>::Parse<MIL::Text::Parser::DictItem,MIL::IRValueType const*&,MIL::IRValueType const*&>(this, &v14, &v13, &v11);
  std::vector<std::pair<std::unique_ptr<MIL::IRValue const>,std::unique_ptr<MIL::IRValue const>>>::push_back[abi:ne200100](a4, &v11);
  while (1)
  {
    v6 = v12;
    v12 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v11;
    v11 = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = (*(*this[1].n128_u64[0] + 24))(this[1].n128_u64[0]);
    result = MIL::Scanner::Token::GetType(v8);
    if (result != 9)
    {
      break;
    }

    (*(*this[1].n128_u64[0] + 16))(v10);
    UnknownLocationImpl::~UnknownLocationImpl(v10);
    MIL::Text::Parser::Rule<MIL::Text::Parser::DictItemList,std::vector<std::pair<std::unique_ptr<MIL::IRValue const>,std::unique_ptr<MIL::IRValue const>>>,MIL::IRValueType const*,MIL::IRValueType const*>::Parse<MIL::Text::Parser::DictItem,MIL::IRValueType const*&,MIL::IRValueType const*&>(this, &v14, &v13, &v11);
    std::vector<std::pair<std::unique_ptr<MIL::IRValue const>,std::unique_ptr<MIL::IRValue const>>>::push_back[abi:ne200100](a4, &v11);
  }

  return result;
}

void sub_218075F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::pair<std::unique_ptr<MIL::IRValue const>,std::unique_ptr<MIL::IRValue const>>::~pair(va);
  std::vector<std::pair<std::unique_ptr<MIL::IRValue const>,std::unique_ptr<MIL::IRValue const>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::vector<std::pair<std::unique_ptr<MIL::IRValue const>,std::unique_ptr<MIL::IRValue const>>>::push_back[abi:ne200100](void **result, uint64_t *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v9 = *result;
    v10 = v4 - *result;
    v11 = v10 >> 4;
    v12 = (v10 >> 4) + 1;
    if (v12 >> 60)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v13 = v5 - v9;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    v20[4] = result;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::unique_ptr<MIL::IRValue const>,std::unique_ptr<MIL::IRValue const>>>>(result, v12);
    }

    v14 = (16 * v11);
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v16 = a2[1];
    a2[1] = 0;
    v14[1] = v16;
    v8 = 16 * v11 + 16;
    v17 = &v14[-2 * (v10 >> 4)];
    memcpy(v17, v9, v10);
    v18 = *v3;
    *v3 = v17;
    v3[1] = v8;
    v19 = v3[2];
    v3[2] = 0;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    result = std::__split_buffer<std::pair<std::unique_ptr<MIL::IRValue const>,std::unique_ptr<MIL::IRValue const>>>::~__split_buffer(v20);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v4 = v6;
    v7 = a2[1];
    a2[1] = 0;
    *(v4 + 1) = v7;
    v8 = (v4 + 16);
  }

  v3[1] = v8;
  return result;
}

void MIL::Text::Parser::Rule<MIL::Text::Parser::DictItemList,std::vector<std::pair<std::unique_ptr<MIL::IRValue const>,std::unique_ptr<MIL::IRValue const>>>,MIL::IRValueType const*,MIL::IRValueType const*>::Parse<MIL::Text::Parser::DictItem,MIL::IRValueType const*&,MIL::IRValueType const*&>(__n128 *a1@<X0>, const MIL::IRValueType **a2@<X1>, const MIL::IRValueType **a3@<X2>, void *a4@<X8>)
{
  v7 = a1->n128_u64[1];
  v9.n128_u64[0] = &unk_2829E8640;
  v9.n128_u64[1] = v7;
  v10 = a1[1];
  v8 = (*(*v10.n128_u64[0] + 24))(v10.n128_u64[0], v10);
  v11 = *MIL::Scanner::Token::GetLocation(v8);
  v9.n128_u64[0] = &unk_2829E6AD8;
  MIL::Text::Parser::DictItem::Parse(&v9, *a2, *a3, a4);
}

uint64_t *std::pair<std::unique_ptr<MIL::IRValue const>,std::unique_ptr<MIL::IRValue const>>::~pair(uint64_t *a1)
{
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void MIL::Text::Parser::DictVal::Parse(__n128 *this, const MIL::IRDictionaryValueType *a2)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 7);
  UnknownLocationImpl::~UnknownLocationImpl(v15);
  *&v10[0] = (*(*a2 + 64))(a2);
  v8 = (*(*a2 + 72))(a2);
  MIL::Text::Parser::Rule<MIL::Text::Parser::DictVal,std::unique_ptr<MIL::IRDictionaryValue const>,MIL::IRDictionaryValueType const*>::ParseOpt<MIL::Text::Parser::DictItemList,MIL::IRValueType const*,MIL::IRValueType const*>(this, v10, &v8, &v13);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 8);
  UnknownLocationImpl::~UnknownLocationImpl(v12);
  memset(v10, 0, sizeof(v10));
  v11 = 1065353216;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(v10, ((v14 - v13) >> 4));
  v4 = v13;
  for (i = v14; v4 != i; v4 = v7 + 1)
  {
    std::shared_ptr<MIL::IRValue const>::shared_ptr[abi:ne200100]<MIL::IRValue const,std::default_delete<MIL::IRValue const>,0>(&v8, v4);
    v16 = &v8;
    v6 = std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,MIL::IRValueMapHasher,MIL::IRValueMapEq,true>,std::__unordered_map_equal<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,MIL::IRValueMapEq,MIL::IRValueMapHasher,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::shared_ptr<MIL::IRValue const>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<MIL::IRValue const>&&>,std::tuple<>>(v10, &v8);
    v7 = v4 + 1;
    std::shared_ptr<MIL::IRValue const>::operator=[abi:ne200100]<MIL::IRValue const,std::default_delete<MIL::IRValue const>,0>(v6 + 4, v7);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  MIL::IRDictionaryValueType::MakeValue();
}

void sub_218076378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  a11 = &a20;
  std::vector<std::pair<std::unique_ptr<MIL::IRValue const>,std::unique_ptr<MIL::IRValue const>>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DictVal,std::unique_ptr<MIL::IRDictionaryValue const>,MIL::IRDictionaryValueType const*>::ParseOpt<MIL::Text::Parser::DictItemList,MIL::IRValueType const*,MIL::IRValueType const*>@<X0>(__n128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = a1->n128_u64[1];
  v10[0] = &unk_2829E8670;
  v10[1] = v7;
  v11 = a1[1];
  v8 = (*(*v11.n128_u64[0] + 24))(v11.n128_u64[0], v11);
  v12 = *MIL::Scanner::Token::GetLocation(v8);
  v10[0] = &unk_2829E6B30;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::DictItemList,std::vector<std::pair<std::unique_ptr<MIL::IRValue const>,std::unique_ptr<MIL::IRValue const>>>,MIL::IRValueType const*,MIL::IRValueType const*>::ParseOpt(v10, *a2, *a3, a4);
}

void *std::shared_ptr<MIL::IRValue const>::operator=[abi:ne200100]<MIL::IRValue const,std::default_delete<MIL::IRValue const>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<MIL::IRValue const>::shared_ptr[abi:ne200100]<MIL::IRValue const,std::default_delete<MIL::IRValue const>,0>(&v6, a2);
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

void MIL::Text::Parser::TensorVal::Parse(MIL::Text::Parser::TensorVal *this, const MIL::IRTensorValueType *a2)
{
  if (MIL::IRTensorValueType::IsScalar(a2))
  {

    MIL::Text::Parser::TensorVal::ParseScalar(this, a2);
  }

  MIL::Text::Parser::TensorVal::ParseTensor(this, a2);
}

uint64_t MIL::Text::Parser::Type::Parse(MIL::Text::Parser::Type *this)
{
  v2 = (*(**(this + 2) + 24))(*(this + 2));
  Type = MIL::Scanner::Token::GetType(v2);
  v4 = **(this + 2);
  if (Type == 23)
  {
    (*(v4 + 16))(v228);
    UnknownLocationImpl::~UnknownLocationImpl(v228);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 1);
    UnknownLocationImpl::~UnknownLocationImpl(v227);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::DType>(this);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 9);
    UnknownLocationImpl::~UnknownLocationImpl(v226);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::TensorShape>(this, &v223);
    operator new();
  }

  v5 = (*(v4 + 24))();
  if (MIL::Scanner::Token::GetType(v5) == 27)
  {
    Options = MIL::ParserContext::GetOptions(*(this + 3));
    if ((*(*Options + 88))(Options) <= 2)
    {
      v120 = *(this + 4);
      v121 = MIL::ParserContext::GetOptions(*(this + 3));
      v122 = (*(*v121 + 24))(v121);
      MIL::TextLocationFromScannerLocation(v120, v122);
    }

    (*(**(this + 2) + 16))(v220);
    UnknownLocationImpl::~UnknownLocationImpl(v220);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 1);
    UnknownLocationImpl::~UnknownLocationImpl(v219);
    v7 = MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::DType>(this);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 9);
    UnknownLocationImpl::~UnknownLocationImpl(v218);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::Parse<MIL::Text::Parser::ID>(this, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      if (*&__p[8] != 5)
      {
        goto LABEL_234;
      }

      v8 = *__p;
    }

    else
    {
      if (__p[23] != 5)
      {
        goto LABEL_234;
      }

      v8 = __p;
    }

    v16 = *v8;
    v17 = v8[4];
    if (v16 != 1885431923 || v17 != 101)
    {
LABEL_234:
      __cxa_allocate_exception(0x48uLL);
      v112 = *(this + 4);
      v113 = MIL::ParserContext::GetOptions(*(this + 3));
      v114 = (*(*v113 + 24))(v113);
      MIL::TextLocationFromScannerLocation(v112, v114);
    }

    MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 0);
    UnknownLocationImpl::~UnknownLocationImpl(v216);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::TensorShape>(this, &v214);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 9);
    UnknownLocationImpl::~UnknownLocationImpl(v213);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::Parse<MIL::Text::Parser::ID>(this, &v210);
    if (v212 < 0)
    {
      if (v211 == 7 && *v210 == 1769108595 && *(v210 + 3) == 1936024681)
      {
        goto LABEL_45;
      }

      if (v211 != 22)
      {
        goto LABEL_100;
      }

      v19 = v210;
    }

    else
    {
      if (v212 == 7)
      {
        if (v210 != 1769108595 || *(&v210 + 3) != 1936024681)
        {
LABEL_100:
          __cxa_allocate_exception(0x48uLL);
          v45 = *(this + 4);
          v46 = MIL::ParserContext::GetOptions(*(this + 3));
          v47 = (*(*v46 + 24))(v46);
          MIL::TextLocationFromScannerLocation(v45, v47);
        }

LABEL_45:
        MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 0);
        UnknownLocationImpl::~UnknownLocationImpl(v209);
        v207 = 0uLL;
        v208 = 0;
        if (v212 < 0)
        {
          if (v211 != 7)
          {
            goto LABEL_54;
          }

          v26 = v210;
        }

        else
        {
          if (v212 != 7)
          {
            goto LABEL_54;
          }

          v26 = &v210;
        }

        v27 = *v26;
        v28 = *(v26 + 3);
        if (v27 == 1769108595 && v28 == 1936024681)
        {
          MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::TensorBufferStrides>(this, &v223);
          v207 = v223;
          v208 = v224;
LABEL_55:
          MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 9);
          UnknownLocationImpl::~UnknownLocationImpl(v206);
          MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::Parse<MIL::Text::Parser::ID>(this, &v223);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          *&__p[16] = v224;
          *__p = v223;
          if (SBYTE7(v224) < 0)
          {
            if (*&__p[8] != 7 || (**__p == 1769108595 ? (v31 = *(*__p + 3) == 1936024681) : (v31 = 0), !v31))
            {
              if (*&__p[8] != 22 || (**__p == 0x67696C615F776F72 ? (v32 = *(*__p + 8) == 0x6E695F746E656D6ELL) : (v32 = 0), v32 ? (v33 = *(*__p + 14) == 0x73657479625F6E69) : (v33 = 0), !v33))
              {
                if (*&__p[8] != 18)
                {
                  goto LABEL_254;
                }

                v30 = *__p;
LABEL_75:
                v34 = *v30;
                v35 = *(v30 + 1);
                v36 = *(v30 + 8);
                if (v34 != 0x61656C7265746E69 || v35 != 0x6F746361665F6576 || v36 != 29554)
                {
                  goto LABEL_254;
                }

                MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 0);
                UnknownLocationImpl::~UnknownLocationImpl(v205);
                MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::TensorBufferInterleaveFactors>(this, &v203);
                v223 = 0u;
                v224 = 0u;
                v225 = 1065353216;
                v39 = (*(**(this + 2) + 24))(*(this + 2));
                if (MIL::Scanner::Token::GetType(v39) == 9)
                {
                  (*(**(this + 2) + 16))(v202);
                  UnknownLocationImpl::~UnknownLocationImpl(v202);
                  MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::AttributesMap>(this, &v221);
                  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__move_assign(&v223, &v221);
                  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&v221);
                }

                MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 2);
                UnknownLocationImpl::~UnknownLocationImpl(v201);
                if (v212 < 0)
                {
                  if (v211 != 7)
                  {
                    goto LABEL_94;
                  }

                  v40 = v210;
                }

                else
                {
                  if (v212 != 7)
                  {
                    goto LABEL_94;
                  }

                  v40 = &v210;
                }

                v41 = *v40;
                v42 = *(v40 + 3);
                if (v41 == 1769108595 && v42 == 1936024681)
                {
                  if ((v7 - 31) <= 0x15)
                  {
                    MIL::IRTensorBufferValueType::MakeWithShape();
                  }

LABEL_248:
                  exception = __cxa_allocate_exception(8uLL);
                  *exception = MEMORY[0x277D82920] + 16;
                  __cxa_throw(exception, MEMORY[0x277D82790], MEMORY[0x277D826E8]);
                }

LABEL_94:
                if ((v7 - 31) < 0x16)
                {
                  MIL::IRTensorBufferValueType::MakeWithShapeAndRowAlignment();
                }

                goto LABEL_248;
              }
            }
          }

          else
          {
            switch(BYTE7(v224))
            {
              case 0x12u:
                v30 = __p;
                goto LABEL_75;
              case 7u:
                if (*__p != 1769108595 || *&__p[3] != 1936024681)
                {
LABEL_254:
                  __cxa_allocate_exception(0x48uLL);
                  v131 = *(this + 4);
                  v132 = MIL::ParserContext::GetOptions(*(this + 3));
                  v133 = (*(*v132 + 24))(v132);
                  MIL::TextLocationFromScannerLocation(v131, v133);
                }

                break;
              case 0x16u:
                v115 = *__p == 0x67696C615F776F72 && *&__p[8] == 0x6E695F746E656D6ELL;
                if (!v115 || *&__p[14] != 0x73657479625F6E69)
                {
                  goto LABEL_254;
                }

                break;
              default:
                goto LABEL_254;
            }
          }

          __cxa_allocate_exception(0x48uLL);
          v117 = *(this + 4);
          v118 = MIL::ParserContext::GetOptions(*(this + 3));
          v119 = (*(*v118 + 24))(v118);
          MIL::TextLocationFromScannerLocation(v117, v119);
        }

LABEL_54:
        MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::TensorBufferRowAlignment>(this);
        goto LABEL_55;
      }

      if (v212 != 22)
      {
        goto LABEL_100;
      }

      v19 = &v210;
    }

    v21 = *v19;
    v22 = v19[1];
    v23 = *(v19 + 14);
    if (v21 != 0x67696C615F776F72 || v22 != 0x6E695F746E656D6ELL || v23 != 0x73657479625F6E69)
    {
      goto LABEL_100;
    }

    goto LABEL_45;
  }

  v9 = (*(**(this + 2) + 24))(*(this + 2));
  if (MIL::Scanner::Token::GetType(v9) == 28)
  {
    v10 = MIL::ParserContext::GetOptions(*(this + 3));
    if ((*(*v10 + 88))(v10) <= 2)
    {
      v134 = *(this + 4);
      v135 = MIL::ParserContext::GetOptions(*(this + 3));
      v136 = (*(*v135 + 24))(v135);
      MIL::TextLocationFromScannerLocation(v134, v136);
    }

    (*(**(this + 2) + 16))(v200);
    UnknownLocationImpl::~UnknownLocationImpl(v200);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 1);
    UnknownLocationImpl::~UnknownLocationImpl(v199);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::Parse<MIL::Text::Parser::ID>(this, __p);
    if ((MIL::IsValidIRPixelFormatTypeString(__p) & 1) == 0)
    {
      __cxa_allocate_exception(0x48uLL);
      v140 = *(this + 4);
      v141 = MIL::ParserContext::GetOptions(*(this + 3));
      v142 = (*(*v141 + 24))(v141);
      MIL::TextLocationFromScannerLocation(v140, v142);
    }

    MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 9);
    UnknownLocationImpl::~UnknownLocationImpl(v198);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::Parse<MIL::Text::Parser::ID>(this, &v214);
    if (SHIBYTE(v215) < 0)
    {
      if (*(&v214 + 1) != 5)
      {
        goto LABEL_247;
      }

      v11 = v214;
    }

    else
    {
      if (SHIBYTE(v215) != 5)
      {
        goto LABEL_247;
      }

      v11 = &v214;
    }

    v55 = *v11;
    v56 = *(v11 + 4);
    if (v55 != 1885431923 || v56 != 101)
    {
LABEL_247:
      __cxa_allocate_exception(0x48uLL);
      v123 = *(this + 4);
      v124 = MIL::ParserContext::GetOptions(*(this + 3));
      v125 = (*(*v124 + 24))(v124);
      MIL::TextLocationFromScannerLocation(v123, v125);
    }

    MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 0);
    UnknownLocationImpl::~UnknownLocationImpl(v197);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::TensorShape>(this, &v210);
    v58 = 0;
    v59 = 0;
    v207 = 0uLL;
    v208 = 0;
    v203 = 0uLL;
    v204 = 0;
    v225 = 1065353216;
    v223 = 0u;
    v224 = 0u;
    while (1)
    {
      while (1)
      {
        v60 = (*(**(this + 2) + 24))(*(this + 2));
        if (MIL::Scanner::Token::GetType(v60) != 9)
        {
          MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 2);
          UnknownLocationImpl::~UnknownLocationImpl(v194);
          if (v59 & v58)
          {
            MIL::StringToIRPixelFormatType(__p);
            MIL::IRPixelBufferValueType::MakeWithShapeBytesPerRowNumSlices();
          }

          if (v59)
          {
            MIL::StringToIRPixelFormatType(__p);
            MIL::IRPixelBufferValueType::MakeWithShape();
          }

          if (v58)
          {
            MIL::StringToIRPixelFormatType(__p);
            MIL::IRPixelBufferValueType::MakeWithShapeNumSlices();
          }

          MIL::StringToIRPixelFormatType(__p);
          MIL::IRPixelBufferValueType::MakeWithShape();
        }

        (*(**(this + 2) + 16))(v196);
        UnknownLocationImpl::~UnknownLocationImpl(v196);
        v61 = (*(**(this + 2) + 24))(*(this + 2));
        if (MIL::Scanner::Token::GetType(v61) == 54)
        {
          break;
        }

        v62 = (*(**(this + 2) + 24))(*(this + 2));
        if (MIL::Scanner::Token::GetType(v62) == 3)
        {
          MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::AttributesMap>(this, &v221);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__move_assign(&v223, &v221);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&v221);
        }
      }

      MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::Parse<MIL::Text::Parser::ID>(this, &v221);
      if (SHIBYTE(v215) < 0)
      {
        operator delete(v214);
      }

      v215 = v222;
      v214 = v221;
      if (SHIBYTE(v222) < 0)
      {
        break;
      }

      if (HIBYTE(v222) == 10)
      {
        v65 = &v214;
LABEL_134:
        v66 = *v65;
        v67 = *(v65 + 4);
        if (v66 != 0x63696C735F6D756ELL || v67 != 29541)
        {
          goto LABEL_249;
        }

        goto LABEL_139;
      }

      if (HIBYTE(v222) != 13)
      {
        goto LABEL_249;
      }

      if (v214 != 0x65705F7365747962 || *(&v214 + 5) != 0x776F725F7265705FLL)
      {
        goto LABEL_249;
      }

LABEL_139:
      MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 0);
      UnknownLocationImpl::~UnknownLocationImpl(v195);
      v69 = HIBYTE(v215);
      if (SHIBYTE(v215) < 0)
      {
        v71 = *(&v214 + 1);
        if (*(&v214 + 1) != 13)
        {
          goto LABEL_157;
        }

        v70 = v214;
LABEL_144:
        v72 = *v70;
        v73 = *(v70 + 5);
        if (v72 == 0x65705F7365747962 && v73 == 0x776F725F7265705FLL)
        {
          if (v59)
          {
            __cxa_allocate_exception(0x48uLL);
            v156 = *(this + 4);
            v157 = MIL::ParserContext::GetOptions(*(this + 3));
            v158 = (*(*v157 + 24))(v157);
            MIL::TextLocationFromScannerLocation(v156, v158);
          }

          MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::PixelBufferBytesPerRowVec>(this, &v221);
          if (v207)
          {
            *(&v207 + 1) = v207;
            operator delete(v207);
          }

          v207 = v221;
          v208 = v222;
          v69 = HIBYTE(v215);
          v59 = 1;
        }

        if ((v69 & 0x80) == 0)
        {
          goto LABEL_154;
        }

        v71 = *(&v214 + 1);
LABEL_157:
        if (v71 == 10)
        {
          v75 = v214;
          goto LABEL_159;
        }
      }

      else
      {
        if (HIBYTE(v215) == 13)
        {
          v70 = &v214;
          goto LABEL_144;
        }

LABEL_154:
        if (v69 == 10)
        {
          v75 = &v214;
LABEL_159:
          v76 = *v75;
          v77 = *(v75 + 4);
          if (v76 == 0x63696C735F6D756ELL && v77 == 29541)
          {
            if (v58)
            {
              __cxa_allocate_exception(0x48uLL);
              v165 = *(this + 4);
              v166 = MIL::ParserContext::GetOptions(*(this + 3));
              v167 = (*(*v166 + 24))(v166);
              MIL::TextLocationFromScannerLocation(v165, v167);
            }

            MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::PixelBufferNumSlicesVec>(this, &v221);
            if (v203)
            {
              *(&v203 + 1) = v203;
              operator delete(v203);
            }

            v203 = v221;
            v204 = v222;
            v58 = 1;
          }
        }
      }
    }

    if (*(&v214 + 1) != 10)
    {
      if (*(&v214 + 1) != 13 || (*v214 == 0x65705F7365747962 ? (v64 = *(v214 + 5) == 0x776F725F7265705FLL) : (v64 = 0), !v64))
      {
LABEL_249:
        v127 = *(this + 4);
        v128 = MIL::ParserContext::GetOptions(*(this + 3));
        v129 = (*(*v128 + 24))(v128);
        MIL::TextLocationFromScannerLocation(v127, v129);
      }

      goto LABEL_139;
    }

    v65 = v214;
    goto LABEL_134;
  }

  v12 = (*(**(this + 2) + 24))(*(this + 2));
  if (MIL::Scanner::Token::GetType(v12) == 29)
  {
    v13 = MIL::ParserContext::GetOptions(*(this + 3));
    if ((*(*v13 + 88))(v13) <= 2)
    {
      v152 = *(this + 4);
      v153 = MIL::ParserContext::GetOptions(*(this + 3));
      v154 = (*(*v153 + 24))(v153);
      MIL::TextLocationFromScannerLocation(v152, v154);
    }

    (*(**(this + 2) + 16))(v193);
    UnknownLocationImpl::~UnknownLocationImpl(v193);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 1);
    UnknownLocationImpl::~UnknownLocationImpl(v192);
    v14 = MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::DType>(this);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 9);
    UnknownLocationImpl::~UnknownLocationImpl(v191);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::Parse<MIL::Text::Parser::ID>(this, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      if (*&__p[8] != 5)
      {
        goto LABEL_256;
      }

      v15 = *__p;
    }

    else
    {
      if (__p[23] != 5)
      {
        goto LABEL_256;
      }

      v15 = __p;
    }

    v85 = *v15;
    v86 = v15[4];
    if (v85 != 1885431923 || v86 != 101)
    {
LABEL_256:
      __cxa_allocate_exception(0x48uLL);
      v137 = *(this + 4);
      v138 = MIL::ParserContext::GetOptions(*(this + 3));
      v139 = (*(*v138 + 24))(v138);
      MIL::TextLocationFromScannerLocation(v137, v139);
    }

    MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 0);
    UnknownLocationImpl::~UnknownLocationImpl(v190);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::TensorShape>(this, &v214);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 9);
    UnknownLocationImpl::~UnknownLocationImpl(v189);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::Parse<MIL::Text::Parser::ID>(this, &v223);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    *&__p[16] = v224;
    *__p = v223;
    if (SBYTE7(v224) < 0)
    {
      if (*&__p[8] != 7)
      {
        goto LABEL_258;
      }

      v88 = *__p;
    }

    else
    {
      if (SBYTE7(v224) != 7)
      {
        goto LABEL_258;
      }

      v88 = __p;
    }

    v89 = *v88;
    v90 = *(v88 + 3);
    if (v89 != 1769108595 || v90 != 1936024681)
    {
LABEL_258:
      __cxa_allocate_exception(0x48uLL);
      v143 = *(this + 4);
      v144 = MIL::ParserContext::GetOptions(*(this + 3));
      v145 = (*(*v144 + 24))(v144);
      MIL::TextLocationFromScannerLocation(v143, v145);
    }

    MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 0);
    UnknownLocationImpl::~UnknownLocationImpl(v188);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::TensorBufferStrides>(this, &v210);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 9);
    UnknownLocationImpl::~UnknownLocationImpl(v187);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::Parse<MIL::Text::Parser::ID>(this, &v223);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    *&__p[16] = v224;
    *__p = v223;
    if (SBYTE7(v224) < 0)
    {
      if (*&__p[8] != 18)
      {
        goto LABEL_259;
      }

      v92 = *__p;
    }

    else
    {
      if (SBYTE7(v224) != 18)
      {
        goto LABEL_259;
      }

      v92 = __p;
    }

    v93 = *v92;
    v94 = *(v92 + 1);
    v95 = *(v92 + 8);
    if (v93 != 0x61656C7265746E69 || v94 != 0x6F746361665F6576 || v95 != 29554)
    {
LABEL_259:
      __cxa_allocate_exception(0x48uLL);
      v146 = *(this + 4);
      v147 = MIL::ParserContext::GetOptions(*(this + 3));
      v148 = (*(*v147 + 24))(v147);
      MIL::TextLocationFromScannerLocation(v146, v148);
    }

    MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 0);
    UnknownLocationImpl::~UnknownLocationImpl(v186);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::TensorBufferInterleaveFactors>(this, &v207);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 9);
    UnknownLocationImpl::~UnknownLocationImpl(v185);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::Parse<MIL::Text::Parser::ID>(this, &v223);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    *&__p[16] = v224;
    *__p = v223;
    if (SBYTE7(v224) < 0)
    {
      if (*&__p[8] != 8)
      {
        goto LABEL_260;
      }

      v98 = *__p;
    }

    else
    {
      if (SBYTE7(v224) != 8)
      {
        goto LABEL_260;
      }

      v98 = __p;
    }

    if (*v98 == 0x6D69645F70617277)
    {
      MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 0);
      UnknownLocationImpl::~UnknownLocationImpl(v184);
      MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::CircularBufferWrapDim>(this);
      v223 = 0u;
      v224 = 0u;
      v225 = 1065353216;
      v99 = (*(**(this + 2) + 24))(*(this + 2));
      if (MIL::Scanner::Token::GetType(v99) == 9)
      {
        (*(**(this + 2) + 16))(v183);
        UnknownLocationImpl::~UnknownLocationImpl(v183);
        MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::AttributesMap>(this, &v221);
        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__move_assign(&v223, &v221);
        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&v221);
      }

      MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 2);
      UnknownLocationImpl::~UnknownLocationImpl(v182);
      if ((v14 - 31) < 0x16)
      {
        MIL::IRCircularBufferValueType::MakeWithShape();
      }

      v155 = __cxa_allocate_exception(8uLL);
      *v155 = MEMORY[0x277D82920] + 16;
      __cxa_throw(v155, MEMORY[0x277D82790], MEMORY[0x277D826E8]);
    }

LABEL_260:
    __cxa_allocate_exception(0x48uLL);
    v149 = *(this + 4);
    v150 = MIL::ParserContext::GetOptions(*(this + 3));
    v151 = (*(*v150 + 24))(v150);
    MIL::TextLocationFromScannerLocation(v149, v151);
  }

  v48 = (*(**(this + 2) + 24))(*(this + 2));
  v49 = MIL::Scanner::Token::GetType(v48);
  v50 = **(this + 2);
  if (v49 == 24)
  {
    (*(v50 + 16))(v181);
    UnknownLocationImpl::~UnknownLocationImpl(v181);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 1);
    UnknownLocationImpl::~UnknownLocationImpl(v180);
    v51 = MIL::Text::Parser::Rule<MIL::Text::Parser::Value,std::shared_ptr<MIL::IRValue const>>::Parse<MIL::Text::Parser::Type>(this);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 9);
    UnknownLocationImpl::~UnknownLocationImpl(v179);
    v52 = MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::TypeLength>(this);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 2);
    UnknownLocationImpl::~UnknownLocationImpl(v178);
    return MIL::IRListValueType::MakeWithDimension(*(this + 1), v51, v52, v53);
  }

  else
  {
    v79 = (*(v50 + 24))();
    v80 = MIL::Scanner::Token::GetType(v79);
    v81 = **(this + 2);
    if (v80 == 25)
    {
      (*(v81 + 16))(v177);
      UnknownLocationImpl::~UnknownLocationImpl(v177);
      MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 1);
      UnknownLocationImpl::~UnknownLocationImpl(v176);
      v82 = MIL::Text::Parser::Rule<MIL::Text::Parser::Value,std::shared_ptr<MIL::IRValue const>>::Parse<MIL::Text::Parser::Type>(this);
      MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 9);
      UnknownLocationImpl::~UnknownLocationImpl(v175);
      v83 = MIL::Text::Parser::Rule<MIL::Text::Parser::Value,std::shared_ptr<MIL::IRValue const>>::Parse<MIL::Text::Parser::Type>(this);
      MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 2);
      UnknownLocationImpl::~UnknownLocationImpl(v174);
      return MIL::IRDictionaryValueType::Make(*(this + 1), v82, v83, v84);
    }

    else
    {
      v100 = (*(v81 + 24))();
      v101 = MIL::Scanner::Token::GetType(v100);
      v102 = **(this + 2);
      if (v101 == 26)
      {
        (*(v102 + 16))(v173);
        UnknownLocationImpl::~UnknownLocationImpl(v173);
        MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 1);
        UnknownLocationImpl::~UnknownLocationImpl(v172);
        MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::TypeList>(this, &v223);
        MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 2);
        UnknownLocationImpl::~UnknownLocationImpl(v171);
        MIL::IRTupleValueType::Make(*(this + 1));
      }

      v103 = (*(v102 + 24))();
      v104 = MIL::Scanner::Token::GetType(v103);
      v105 = MIL::ParserContext::GetOptions(*(this + 3));
      v106 = (*(*v105 + 88))(v105);
      if (v104 != 30)
      {
        if (v106 >= 2)
        {
          v109 = (*(**(this + 2) + 24))(*(this + 2));
          DTypeFirstSet = MIL::ParserContext::GetDTypeFirstSet(*(this + 3));
          LODWORD(v223) = MIL::Scanner::Token::GetType(v109);
          if (std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTypeFirstSet, &v223))
          {
            v111 = MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::DType>(this);
            MIL::TokenToIRDataType(v111);
            MIL::IRTensorValueType::MakeScalar();
          }
        }

        v159 = *(this + 4);
        v160 = MIL::ParserContext::GetOptions(*(this + 3));
        v161 = (*(*v160 + 24))(v160);
        MIL::TextLocationFromScannerLocation(v159, v161);
      }

      if (v106 <= 3)
      {
        v162 = *(this + 4);
        v163 = MIL::ParserContext::GetOptions(*(this + 3));
        v164 = (*(*v163 + 24))(v163);
        MIL::TextLocationFromScannerLocation(v162, v164);
      }

      (*(**(this + 2) + 16))(v170);
      UnknownLocationImpl::~UnknownLocationImpl(v170);
      MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 1);
      UnknownLocationImpl::~UnknownLocationImpl(v169);
      v107 = MIL::Text::Parser::Rule<MIL::Text::Parser::Value,std::shared_ptr<MIL::IRValue const>>::Parse<MIL::Text::Parser::Type>(this);
      MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 2);
      UnknownLocationImpl::~UnknownLocationImpl(v168);
      return MIL::IRStateValueType::Make(*(this + 1), v107, v108);
    }
  }
}