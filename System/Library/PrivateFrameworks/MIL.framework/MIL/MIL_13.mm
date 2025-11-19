void sub_2180788C0(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x4AF]) < 0)
  {
    operator delete(STACK[0x498]);
  }

  if (STACK[0x4B8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x4B8]);
  }

  if (STACK[0x918])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x918]);
    if ((v2 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v2)
  {
LABEL_10:
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v3 - 240);
    v5 = STACK[0x6A0];
    if (STACK[0x6A0])
    {
      STACK[0x6A8] = v5;
      operator delete(v5);
    }

    v6 = STACK[0x750];
    if (STACK[0x750])
    {
      STACK[0x758] = v6;
      operator delete(v6);
    }

    v7 = STACK[0x7B8];
    if (STACK[0x7B8])
    {
      STACK[0x7C0] = v7;
      operator delete(v7);
    }

    if (SLOBYTE(STACK[0x807]) < 0)
    {
      operator delete(STACK[0x7F0]);
    }

    if (SLOBYTE(STACK[0x867]) < 0)
    {
      operator delete(STACK[0x850]);
    }

    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v1);
  goto LABEL_10;
}

uint64_t MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::DType>(__n128 *a1)
{
  v1 = a1->n128_u64[1];
  v4[0] = &unk_2829E86A0;
  v4[1] = v1;
  v5 = a1[1];
  v2 = (*(*v5.n128_u64[0] + 24))(v5.n128_u64[0], v5);
  v6 = *MIL::Scanner::Token::GetLocation(v2);
  v4[0] = &unk_2829E7528;
  return MIL::Text::Parser::DType::Parse(v4);
}

void MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::TensorShape>(__n128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v5.n128_u64[0] = &unk_2829E86D0;
  v5.n128_u64[1] = v3;
  v6 = a1[1];
  v4 = (*(*v6.n128_u64[0] + 24))(v6.n128_u64[0], v6);
  v7 = *MIL::Scanner::Token::GetLocation(v4);
  v5.n128_u64[0] = &unk_2829E6D98;
  MIL::Text::Parser::TensorShape::Parse(&v5, a2);
}

void MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::AttributesMap>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v5.n128_u64[0] = &unk_2829E8190;
  v5.n128_u64[1] = v3;
  v6 = a1[1];
  v4 = (*(*v6.n128_u64[0] + 24))(v6.n128_u64[0], v6);
  v7 = *MIL::Scanner::Token::GetLocation(v4);
  v5.n128_u64[0] = &unk_2829E7370;
  MIL::Text::Parser::AttributesMap::Parse(&v5, a2);
}

uint64_t MIL::TokenToIRDataType(int a1)
{
  if ((a1 - 31) >= 0x16)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x277D82920] + 16;
    __cxa_throw(exception, MEMORY[0x277D82790], MEMORY[0x277D826E8]);
  }

  return dword_21858B550[a1 - 31];
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

void MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::TensorBufferStrides>(__n128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v5.n128_u64[0] = &unk_2829E8700;
  v5.n128_u64[1] = v3;
  v6 = a1[1];
  v4 = (*(*v6.n128_u64[0] + 24))(v6.n128_u64[0], v6);
  v7 = *MIL::Scanner::Token::GetLocation(v4);
  v5.n128_u64[0] = &unk_2829E6EA0;
  MIL::Text::Parser::TensorBufferStrides::Parse(&v5, a2);
}

uint64_t MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::TensorBufferRowAlignment>(__n128 *a1)
{
  v1 = a1->n128_u64[1];
  v5.n128_u64[0] = &unk_2829E8730;
  v5.n128_u64[1] = v1;
  v6 = a1[1];
  v2 = (*(*v6.n128_u64[0] + 24))(v6.n128_u64[0], v6);
  v7 = *MIL::Scanner::Token::GetLocation(v2);
  v5.n128_u64[0] = &unk_2829E6EF8;
  v3 = MIL::Text::Parser::Rule<MIL::Text::Parser::TypeLength,MIL::IRDimension const*>::Parse<MIL::Text::Parser::UINT64>(&v5);
  return MIL::IRConstantProperty::MakeUInt64Scalar(v5.n128_u64[1], v3);
}

void MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::TensorBufferInterleaveFactors>(__n128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v5.n128_u64[0] = &unk_2829E8760;
  v5.n128_u64[1] = v3;
  v6 = a1[1];
  v4 = (*(*v6.n128_u64[0] + 24))(v6.n128_u64[0], v6);
  v7 = *MIL::Scanner::Token::GetLocation(v4);
  v5.n128_u64[0] = &unk_2829E6FA8;
  MIL::Text::Parser::TensorBufferInterleaveFactors::Parse(&v5, a2);
}

void MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::PixelBufferBytesPerRowVec>(__n128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v5.n128_u64[0] = &unk_2829E8790;
  v5.n128_u64[1] = v3;
  v6 = a1[1];
  v4 = (*(*v6.n128_u64[0] + 24))(v6.n128_u64[0], v6);
  v7 = *MIL::Scanner::Token::GetLocation(v4);
  v5.n128_u64[0] = &unk_2829E7058;
  MIL::Text::Parser::PixelBufferBytesPerRowVec::Parse(&v5, a2);
}

void MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::PixelBufferNumSlicesVec>(__n128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v5.n128_u64[0] = &unk_2829E87C0;
  v5.n128_u64[1] = v3;
  v6 = a1[1];
  v4 = (*(*v6.n128_u64[0] + 24))(v6.n128_u64[0], v6);
  v7 = *MIL::Scanner::Token::GetLocation(v4);
  v5.n128_u64[0] = &unk_2829E7108;
  MIL::Text::Parser::PixelBufferNumSlicesVec::Parse(&v5, a2);
}

uint64_t MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::CircularBufferWrapDim>(__n128 *a1)
{
  v1 = a1->n128_u64[1];
  v5.n128_u64[0] = &unk_2829E87F0;
  v5.n128_u64[1] = v1;
  v6 = a1[1];
  v2 = (*(*v6.n128_u64[0] + 24))(v6.n128_u64[0], v6);
  v7 = *MIL::Scanner::Token::GetLocation(v2);
  v5.n128_u64[0] = &unk_2829E6F50;
  v3 = MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferStride,MIL::IRProperty const*>::Parse<MIL::Text::Parser::INT64>(&v5);
  return MIL::IRConstantProperty::MakeInt64Scalar(v5.n128_u64[1], v3);
}

uint64_t MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::TypeLength>(__n128 *a1)
{
  v1 = a1->n128_u64[1];
  v4[0] = &unk_2829E8820;
  v4[1] = v1;
  v5 = a1[1];
  v2 = (*(*v5.n128_u64[0] + 24))(v5.n128_u64[0], v5);
  v6 = *MIL::Scanner::Token::GetLocation(v2);
  v4[0] = &unk_2829E6CE8;
  return MIL::Text::Parser::TypeLength::Parse(v4);
}

uint64_t MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::Parse<MIL::Text::Parser::TypeList>@<X0>(__n128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v6[0] = &unk_2829E8850;
  v6[1] = v3;
  v7 = a1[1];
  v4 = (*(*v7.n128_u64[0] + 24))(v7.n128_u64[0], v7);
  v8 = *MIL::Scanner::Token::GetLocation(v4);
  v6[0] = &unk_2829E6C90;
  return MIL::Text::Parser::TypeList::Parse(v6, a2);
}

uint64_t MIL::Text::Parser::TypeList::Parse@<X0>(MIL::Text::Parser::TypeList *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v7 = (MIL::Text::Parser::Rule<MIL::Text::Parser::Value,std::shared_ptr<MIL::IRValue const>>::Parse<MIL::Text::Parser::Type>)();
  std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a2, &v7);
  while (1)
  {
    v4 = (*(**(this + 2) + 24))(*(this + 2));
    result = MIL::Scanner::Token::GetType(v4);
    if (result != 9)
    {
      break;
    }

    (*(**(this + 2) + 16))(v6);
    UnknownLocationImpl::~UnknownLocationImpl(v6);
    v7 = MIL::Text::Parser::Rule<MIL::Text::Parser::Value,std::shared_ptr<MIL::IRValue const>>::Parse<MIL::Text::Parser::Type>(this);
    std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a2, &v7);
  }

  return result;
}

void sub_2180798A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::Parser::TypeLength::Parse(MIL::Text::Parser::TypeLength *this)
{
  v2 = (*(**(this + 2) + 24))(*(this + 2));
  if (MIL::Scanner::Token::GetType(v2) == 13)
  {
    (*(**(this + 2) + 16))(v6);
    UnknownLocationImpl::~UnknownLocationImpl(v6);
    return MIL::IRUnknownDimension::Make(*(this + 1), 0);
  }

  else
  {
    v4 = MIL::Text::Parser::Rule<MIL::Text::Parser::TypeLength,MIL::IRDimension const*>::Parse<MIL::Text::Parser::UINT64>(this);
    v5 = *(this + 1);

    return MIL::IRConstantDimension::Make(v5, v4);
  }
}

unint64_t MIL::Text::Parser::Rule<MIL::Text::Parser::TypeLength,MIL::IRDimension const*>::Parse<MIL::Text::Parser::UINT64>(__n128 *a1)
{
  v1 = a1->n128_u64[1];
  v4[0] = &unk_2829E8880;
  v4[1] = v1;
  v5 = a1[1];
  v2 = (*(*v5.n128_u64[0] + 24))(v5.n128_u64[0], v5);
  v6 = *MIL::Scanner::Token::GetLocation(v2);
  v4[0] = &unk_2829E7EC8;
  return MIL::Text::Parser::UINT64::Parse(v4);
}

uint64_t *MIL::Text::Parser::DimLength::Parse(MIL::Text::Parser::DimLength *this)
{
  result = MIL::Text::Parser::Rule<MIL::Text::Parser::DimLength,MIL::IRDimension const*>::ParseOpt<MIL::Text::Parser::TypeLength>(this);
  if (!result)
  {
    v3 = (*(**(this + 2) + 24))(*(this + 2));
    if (MIL::Scanner::Token::GetType(v3) != 15)
    {
      v4 = *(this + 4);
      Options = MIL::ParserContext::GetOptions(*(this + 3));
      v6 = (*(*Options + 24))(Options);
      MIL::TextLocationFromScannerLocation(v4, v6);
    }

    (*(**(this + 2) + 16))(v7);
    UnknownLocationImpl::~UnknownLocationImpl(v7);
    return MIL::IRUnknownDimension::Make(*(this + 1), 1);
  }

  return result;
}

void sub_218079B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
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

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DimLength,MIL::IRDimension const*>::ParseOpt<MIL::Text::Parser::TypeLength>(__n128 *a1)
{
  v1 = a1->n128_u64[1];
  v4[0] = &unk_2829E8820;
  v4[1] = v1;
  v5 = a1[1];
  v2 = (*(*v5.n128_u64[0] + 24))(v5.n128_u64[0], v5);
  v6 = *MIL::Scanner::Token::GetLocation(v2);
  v4[0] = &unk_2829E6CE8;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::TypeLength,MIL::IRDimension const*>::ParseOpt(v4);
}

void MIL::Text::Parser::TensorShape::Parse(__n128 *this@<X0>, void *a2@<X8>)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 3);
  UnknownLocationImpl::~UnknownLocationImpl(v5);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (MIL::Text::Parser::Rule<MIL::Text::Parser::TensorShape,std::vector<MIL::IRDimension const*>>::ParseOpt<MIL::Text::Parser::DimLength>(this))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(a2, 1uLL);
  }

  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 4);
  UnknownLocationImpl::~UnknownLocationImpl(&v4);
}

void sub_218079E6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::TensorShape,std::vector<MIL::IRDimension const*>>::ParseOpt<MIL::Text::Parser::DimLength>(__n128 *a1)
{
  v1 = a1->n128_u64[1];
  v4[0] = &unk_2829E88B0;
  v4[1] = v1;
  v5 = a1[1];
  v2 = (*(*v5.n128_u64[0] + 24))(v5.n128_u64[0], v5);
  v6 = *MIL::Scanner::Token::GetLocation(v2);
  v4[0] = &unk_2829E6D40;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::DimLength,MIL::IRDimension const*>::ParseOpt(v4);
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::TensorShape,std::vector<MIL::IRDimension const*>>::Parse<MIL::Text::Parser::DimLength>(__n128 *a1)
{
  v1 = a1->n128_u64[1];
  v4[0] = &unk_2829E88B0;
  v4[1] = v1;
  v5 = a1[1];
  v2 = (*(*v5.n128_u64[0] + 24))(v5.n128_u64[0], v5);
  v6 = *MIL::Scanner::Token::GetLocation(v2);
  v4[0] = &unk_2829E6D40;
  return MIL::Text::Parser::DimLength::Parse(v4);
}

uint64_t *MIL::Text::Parser::TensorBufferInterleaveFactor::Parse(__n128 *this)
{
  v2 = MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferInterleaveFactor,MIL::IRProperty const*>::Parse<MIL::Text::Parser::UINT8>(this);
  v3 = this->n128_u64[1];

  return MIL::IRConstantProperty::MakeUInt8Scalar(v3, v2);
}

uint64_t MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferInterleaveFactor,MIL::IRProperty const*>::Parse<MIL::Text::Parser::UINT8>(__n128 *a1)
{
  v1 = a1->n128_u64[1];
  v4[0] = &unk_2829E88E0;
  v4[1] = v1;
  v5 = a1[1];
  v2 = (*(*v5.n128_u64[0] + 24))(v5.n128_u64[0], v5);
  v6 = *MIL::Scanner::Token::GetLocation(v2);
  v4[0] = &unk_2829E7DC0;
  return MIL::Text::Parser::UINT8::Parse(v4);
}

uint64_t MIL::Text::Parser::TensorBufferStride::Parse(MIL::Text::Parser::TensorBufferStride *this)
{
  v2 = (*(**(this + 2) + 24))(*(this + 2));
  if (MIL::Scanner::Token::GetType(v2) == 13)
  {
    (*(**(this + 2) + 16))(v6);
    UnknownLocationImpl::~UnknownLocationImpl(v6);
    return MIL::IRUnknownProperty::Make(*(this + 1), 0);
  }

  else
  {
    v4 = MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferStride,MIL::IRProperty const*>::Parse<MIL::Text::Parser::INT64>(this);
    v5 = *(this + 1);

    return MIL::IRConstantProperty::MakeInt64Scalar(v5, v4);
  }
}

uint64_t MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferStride,MIL::IRProperty const*>::Parse<MIL::Text::Parser::INT64>(__n128 *a1)
{
  v1 = a1->n128_u64[1];
  v4[0] = &unk_2829E8910;
  v4[1] = v1;
  v5 = a1[1];
  v2 = (*(*v5.n128_u64[0] + 24))(v5.n128_u64[0], v5);
  v6 = *MIL::Scanner::Token::GetLocation(v2);
  v4[0] = &unk_2829E7E70;
  return MIL::Text::Parser::INT64::Parse(v4);
}

void MIL::Text::Parser::TensorBufferStrides::Parse(__n128 *this@<X0>, void *a2@<X8>)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 3);
  UnknownLocationImpl::~UnknownLocationImpl(v9);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v8 = MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferStrides,std::vector<MIL::IRProperty const*>>::ParseOpt<MIL::Text::Parser::TensorBufferStride>(this);
  if (v8)
  {
    std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a2, &v8);
    while (1)
    {
      v4 = (*(*this[1].n128_u64[0] + 24))(this[1].n128_u64[0]);
      if (MIL::Scanner::Token::GetType(v4) != 9)
      {
        break;
      }

      (*(*this[1].n128_u64[0] + 16))(v7);
      UnknownLocationImpl::~UnknownLocationImpl(v7);
      v6 = MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferStrides,std::vector<MIL::IRProperty const*>>::Parse<MIL::Text::Parser::TensorBufferStride>(this);
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a2, &v6);
    }
  }

  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 4);
  UnknownLocationImpl::~UnknownLocationImpl(&v5);
}

void sub_21807A33C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferStrides,std::vector<MIL::IRProperty const*>>::ParseOpt<MIL::Text::Parser::TensorBufferStride>(__n128 *a1)
{
  v1 = a1->n128_u64[1];
  v4[0] = &unk_2829E8940;
  v4[1] = v1;
  v5 = a1[1];
  v2 = (*(*v5.n128_u64[0] + 24))(v5.n128_u64[0], v5);
  v6 = *MIL::Scanner::Token::GetLocation(v2);
  v4[0] = &unk_2829E6E48;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferStride,MIL::IRProperty const*>::ParseOpt(v4);
}

uint64_t MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferStrides,std::vector<MIL::IRProperty const*>>::Parse<MIL::Text::Parser::TensorBufferStride>(__n128 *a1)
{
  v1 = a1->n128_u64[1];
  v4[0] = &unk_2829E8940;
  v4[1] = v1;
  v5 = a1[1];
  v2 = (*(*v5.n128_u64[0] + 24))(v5.n128_u64[0], v5);
  v6 = *MIL::Scanner::Token::GetLocation(v2);
  v4[0] = &unk_2829E6E48;
  return MIL::Text::Parser::TensorBufferStride::Parse(v4);
}

uint64_t MIL::Text::Parser::TensorBufferRowAlignment::Parse(__n128 *this)
{
  v2 = MIL::Text::Parser::Rule<MIL::Text::Parser::TypeLength,MIL::IRDimension const*>::Parse<MIL::Text::Parser::UINT64>(this);
  v3 = this->n128_u64[1];

  return MIL::IRConstantProperty::MakeUInt64Scalar(v3, v2);
}

uint64_t MIL::Text::Parser::CircularBufferWrapDim::Parse(__n128 *this)
{
  v2 = MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferStride,MIL::IRProperty const*>::Parse<MIL::Text::Parser::INT64>(this);
  v3 = this->n128_u64[1];

  return MIL::IRConstantProperty::MakeInt64Scalar(v3, v2);
}

void MIL::Text::Parser::TensorBufferInterleaveFactors::Parse(__n128 *this@<X0>, void *a2@<X8>)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 3);
  UnknownLocationImpl::~UnknownLocationImpl(v9);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v8 = MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferInterleaveFactors,std::vector<MIL::IRProperty const*>>::ParseOpt<MIL::Text::Parser::TensorBufferInterleaveFactor>(this);
  if (v8)
  {
    std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a2, &v8);
    while (1)
    {
      v4 = (*(*this[1].n128_u64[0] + 24))(this[1].n128_u64[0]);
      if (MIL::Scanner::Token::GetType(v4) != 9)
      {
        break;
      }

      (*(*this[1].n128_u64[0] + 16))(v7);
      UnknownLocationImpl::~UnknownLocationImpl(v7);
      v6 = MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferInterleaveFactors,std::vector<MIL::IRProperty const*>>::Parse<MIL::Text::Parser::TensorBufferInterleaveFactor>(this);
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a2, &v6);
    }
  }

  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 4);
  UnknownLocationImpl::~UnknownLocationImpl(&v5);
}

void sub_21807A628(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferInterleaveFactors,std::vector<MIL::IRProperty const*>>::ParseOpt<MIL::Text::Parser::TensorBufferInterleaveFactor>(__n128 *a1)
{
  v1 = a1->n128_u64[1];
  v4[0] = &unk_2829E8970;
  v4[1] = v1;
  v5 = a1[1];
  v2 = (*(*v5.n128_u64[0] + 24))(v5.n128_u64[0], v5);
  v6 = *MIL::Scanner::Token::GetLocation(v2);
  v4[0] = &unk_2829E6DF0;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferInterleaveFactor,MIL::IRProperty const*>::ParseOpt(v4);
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferInterleaveFactors,std::vector<MIL::IRProperty const*>>::Parse<MIL::Text::Parser::TensorBufferInterleaveFactor>(__n128 *a1)
{
  v1 = a1->n128_u64[1];
  v5.n128_u64[0] = &unk_2829E8970;
  v5.n128_u64[1] = v1;
  v6 = a1[1];
  v2 = (*(*v6.n128_u64[0] + 24))(v6.n128_u64[0], v6);
  v7 = *MIL::Scanner::Token::GetLocation(v2);
  v5.n128_u64[0] = &unk_2829E6DF0;
  v3 = MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferInterleaveFactor,MIL::IRProperty const*>::Parse<MIL::Text::Parser::UINT8>(&v5);
  return MIL::IRConstantProperty::MakeUInt8Scalar(v5.n128_u64[1], v3);
}

uint64_t MIL::Text::Parser::PixelBufferBytesPerRow::Parse(__n128 *this)
{
  v2 = MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferStride,MIL::IRProperty const*>::Parse<MIL::Text::Parser::INT64>(this);
  v3 = this->n128_u64[1];

  return MIL::IRConstantProperty::MakeInt64Scalar(v3, v2);
}

void MIL::Text::Parser::PixelBufferBytesPerRowVec::Parse(__n128 *this@<X0>, void *a2@<X8>)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 3);
  UnknownLocationImpl::~UnknownLocationImpl(v9);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v8 = MIL::Text::Parser::Rule<MIL::Text::Parser::PixelBufferBytesPerRowVec,std::vector<MIL::IRProperty const*>>::Parse<MIL::Text::Parser::PixelBufferBytesPerRow>(this);
  std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a2, &v8);
  while (1)
  {
    v4 = (*(*this[1].n128_u64[0] + 24))(this[1].n128_u64[0]);
    if (MIL::Scanner::Token::GetType(v4) != 9)
    {
      break;
    }

    (*(*this[1].n128_u64[0] + 16))(v7);
    UnknownLocationImpl::~UnknownLocationImpl(v7);
    v6 = MIL::Text::Parser::Rule<MIL::Text::Parser::PixelBufferBytesPerRowVec,std::vector<MIL::IRProperty const*>>::Parse<MIL::Text::Parser::PixelBufferBytesPerRow>(this);
    std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a2, &v6);
  }

  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 4);
  UnknownLocationImpl::~UnknownLocationImpl(&v5);
}

void sub_21807A8E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::Parser::Rule<MIL::Text::Parser::PixelBufferBytesPerRowVec,std::vector<MIL::IRProperty const*>>::Parse<MIL::Text::Parser::PixelBufferBytesPerRow>(__n128 *a1)
{
  v1 = a1->n128_u64[1];
  v5.n128_u64[0] = &unk_2829E89A0;
  v5.n128_u64[1] = v1;
  v6 = a1[1];
  v2 = (*(*v6.n128_u64[0] + 24))(v6.n128_u64[0], v6);
  v7 = *MIL::Scanner::Token::GetLocation(v2);
  v5.n128_u64[0] = &unk_2829E7000;
  v3 = MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferStride,MIL::IRProperty const*>::Parse<MIL::Text::Parser::INT64>(&v5);
  return MIL::IRConstantProperty::MakeInt64Scalar(v5.n128_u64[1], v3);
}

uint64_t MIL::Text::Parser::PixelBufferNumSlices::Parse(__n128 *this)
{
  v2 = MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferStride,MIL::IRProperty const*>::Parse<MIL::Text::Parser::INT64>(this);
  v3 = this->n128_u64[1];

  return MIL::IRConstantProperty::MakeInt64Scalar(v3, v2);
}

void MIL::Text::Parser::PixelBufferNumSlicesVec::Parse(__n128 *this@<X0>, void *a2@<X8>)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 3);
  UnknownLocationImpl::~UnknownLocationImpl(v9);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v8 = MIL::Text::Parser::Rule<MIL::Text::Parser::PixelBufferNumSlicesVec,std::vector<MIL::IRProperty const*>>::Parse<MIL::Text::Parser::PixelBufferNumSlices>(this);
  std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a2, &v8);
  while (1)
  {
    v4 = (*(*this[1].n128_u64[0] + 24))(this[1].n128_u64[0]);
    if (MIL::Scanner::Token::GetType(v4) != 9)
    {
      break;
    }

    (*(*this[1].n128_u64[0] + 16))(v7);
    UnknownLocationImpl::~UnknownLocationImpl(v7);
    v6 = MIL::Text::Parser::Rule<MIL::Text::Parser::PixelBufferNumSlicesVec,std::vector<MIL::IRProperty const*>>::Parse<MIL::Text::Parser::PixelBufferNumSlices>(this);
    std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a2, &v6);
  }

  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 4);
  UnknownLocationImpl::~UnknownLocationImpl(&v5);
}

void sub_21807AAF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::Parser::Rule<MIL::Text::Parser::PixelBufferNumSlicesVec,std::vector<MIL::IRProperty const*>>::Parse<MIL::Text::Parser::PixelBufferNumSlices>(__n128 *a1)
{
  v1 = a1->n128_u64[1];
  v5.n128_u64[0] = &unk_2829E89D0;
  v5.n128_u64[1] = v1;
  v6 = a1[1];
  v2 = (*(*v6.n128_u64[0] + 24))(v6.n128_u64[0], v6);
  v7 = *MIL::Scanner::Token::GetLocation(v2);
  v5.n128_u64[0] = &unk_2829E70B0;
  v3 = MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferStride,MIL::IRProperty const*>::Parse<MIL::Text::Parser::INT64>(&v5);
  return MIL::IRConstantProperty::MakeInt64Scalar(v5.n128_u64[1], v3);
}

void MIL::Text::Parser::Argument::Parse(__n128 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Argument,std::shared_ptr<MIL::IRArgument>>::ParseOpt<MIL::Text::Parser::ID>(this, &v19);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v19.__r_.__value_.__l.__size_)
    {
      v5 = this[1].n128_i64[1];
      v2 = &this[1].n128_i64[1];
      v3 = v5;
      std::string::__init_copy_ctor_external(&v16, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
LABEL_6:
      MIL::ParserContext::GetConstexprVariableValue(v3, &v16.__r_.__value_.__l.__data_, &v17);
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      if (v17)
      {
        MIL::ParserContext::GetCurrentOperator(*v2, &v14);
        IsConstexprOpTakingInputs = MIL::Util::IsConstexprOpTakingInputs(v14, v6);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        if (IsConstexprOpTakingInputs)
        {
          v12 = v17;
          v13 = v18;
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          MIL::IRArgument::Make();
        }
      }

      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v11, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
      }

      else
      {
        v11 = v19;
      }

      MIL::IRArgument::Make();
    }
  }

  else if (*(&v19.__r_.__value_.__s + 23))
  {
    v4 = this[1].n128_i64[1];
    v2 = &this[1].n128_i64[1];
    v3 = v4;
    v16 = v19;
    goto LABEL_6;
  }

  MIL::Text::Parser::Rule<MIL::Text::Parser::Argument,std::shared_ptr<MIL::IRArgument>>::ParseOpt<MIL::Text::Parser::Value>(this, &v17);
  if (v17)
  {
    v17 = 0;
    v18 = 0;
    MIL::IRArgument::Make();
  }

  v8 = this[2].n128_i64[0];
  Options = MIL::ParserContext::GetOptions(this[1].n128_u64[1]);
  v10 = (*(*Options + 24))(Options);
  MIL::TextLocationFromScannerLocation(v8, v10);
}

void sub_21807AF20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (v31)
  {
    __cxa_free_exception(v30);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  v34 = *(v32 - 64);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::Argument,std::shared_ptr<MIL::IRArgument>>::ParseOpt<MIL::Text::Parser::ID>@<X0>(__n128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v6[0] = &unk_2829E81F0;
  v6[1] = v3;
  v7 = a1[1];
  v4 = (*(*v7.n128_u64[0] + 24))(v7.n128_u64[0], v7);
  v8 = *MIL::Scanner::Token::GetLocation(v4);
  v6[0] = &unk_2829E8028;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::ID,std::string>::ParseOpt(v6, a2);
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::Argument,std::shared_ptr<MIL::IRArgument>>::ParseOpt<MIL::Text::Parser::Value>@<X0>(__n128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v6[0] = &unk_2829E84C0;
  v6[1] = v3;
  v7 = a1[1];
  v4 = (*(*v7.n128_u64[0] + 24))(v7.n128_u64[0], v7);
  v8 = *MIL::Scanner::Token::GetLocation(v4);
  v6[0] = &unk_2829E6870;
  return MIL::Text::Parser::Rule<MIL::Text::Parser::Value,std::shared_ptr<MIL::IRValue const>>::ParseOpt(v6, a2);
}

void MIL::Text::Parser::ArgumentList::Parse(__n128 *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  MIL::Text::Parser::Rule<MIL::Text::Parser::ArgumentList,std::vector<std::shared_ptr<MIL::IRArgument>>>::Parse<MIL::Text::Parser::Argument>(this);
}

void sub_21807B29C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 24);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *(v2 - 32) = v1;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100]((v2 - 32));
  _Unwind_Resume(a1);
}

void MIL::Text::Parser::Rule<MIL::Text::Parser::ArgumentList,std::vector<std::shared_ptr<MIL::IRArgument>>>::Parse<MIL::Text::Parser::Argument>(__n128 *a1)
{
  v1 = a1->n128_u64[1];
  v3.n128_u64[0] = &unk_2829E8A00;
  v3.n128_u64[1] = v1;
  v4 = a1[1];
  v2 = (*(*v4.n128_u64[0] + 24))(v4.n128_u64[0], v4);
  v5 = *MIL::Scanner::Token::GetLocation(v2);
  v3.n128_u64[0] = &unk_2829E7160;
  MIL::Text::Parser::Argument::Parse(&v3);
}

void MIL::Text::Parser::IDArgumentBinding::Parse(__n128 *this)
{
  v7 = *MEMORY[0x277D85DE8];
  MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::Parse<MIL::Text::Parser::ID>(this, &v6);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 0);
  UnknownLocationImpl::~UnknownLocationImpl(v5);
  v2 = (*(*this[1].n128_u64[0] + 24))(this[1].n128_u64[0]);
  if (MIL::Scanner::Token::GetType(v2) == 5)
  {
    (*(*this[1].n128_u64[0] + 16))(v4);
    UnknownLocationImpl::~UnknownLocationImpl(v4);
    MIL::Text::Parser::Rule<MIL::Text::Parser::IDArgumentBinding,std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>>>::Parse<MIL::Text::Parser::ArgumentList>(this, &v3);
  }

  MIL::Text::Parser::Rule<MIL::Text::Parser::ArgumentList,std::vector<std::shared_ptr<MIL::IRArgument>>>::Parse<MIL::Text::Parser::Argument>(this);
}

void sub_21807B548(_Unwind_Exception *a1)
{
  *(v2 - 64) = v1;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100]((v2 - 64));
  v4 = *(v2 - 48);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(v2 - 65) < 0)
  {
    operator delete(*(v2 - 88));
  }

  _Unwind_Resume(a1);
}

void MIL::Text::Parser::Rule<MIL::Text::Parser::IDArgumentBinding,std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>>>::Parse<MIL::Text::Parser::ArgumentList>(__n128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v5.n128_u64[0] = &unk_2829E8A30;
  v5.n128_u64[1] = v3;
  v6 = a1[1];
  v4 = (*(*v6.n128_u64[0] + 24))(v6.n128_u64[0], v6);
  v7 = *MIL::Scanner::Token::GetLocation(v4);
  v5.n128_u64[0] = &unk_2829E71B8;
  MIL::Text::Parser::ArgumentList::Parse(&v5, a2);
}

void MIL::Text::Parser::IDArgumentBindingMap::Parse(__n128 *this@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  MIL::Text::Parser::Rule<MIL::Text::Parser::IDArgumentBindingMap,std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>::Parse<MIL::Text::Parser::IDArgumentBinding>(this);
}

void sub_21807B884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27)
{
  std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>>::~pair(v28 - 96);
  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(v27, *(v27 + 8));
  _Unwind_Resume(a1);
}

void MIL::Text::Parser::Rule<MIL::Text::Parser::IDArgumentBindingMap,std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>::Parse<MIL::Text::Parser::IDArgumentBinding>(__n128 *a1)
{
  v1 = a1->n128_u64[1];
  v3.n128_u64[0] = &unk_2829E8A60;
  v3.n128_u64[1] = v1;
  v4 = a1[1];
  v2 = (*(*v4.n128_u64[0] + 24))(v4.n128_u64[0], v4);
  v5 = *MIL::Scanner::Token::GetLocation(v2);
  v3.n128_u64[0] = &unk_2829E7210;
  MIL::Text::Parser::IDArgumentBinding::Parse(&v3);
}

void MIL::Text::Parser::IDValueBinding::Parse(__n128 *this@<X0>, uint64_t a2@<X8>)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::Parse<MIL::Text::Parser::ID>(this, __p);
  MIL::Text::Parser::Rule<MIL::Text::Parser::IDValueBinding,std::pair<std::string,std::shared_ptr<MIL::IRValue const>>>::Parse<MIL::Text::Parser::ValueAssign>(this, &v4);
  if (SHIBYTE(v6) < 0)
  {
    std::string::__init_copy_ctor_external(a2, __p[0], __p[1]);
  }

  else
  {
    *a2 = *__p;
    *(a2 + 16) = v6;
  }

  *(a2 + 24) = v4;
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_21807BA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::Parser::Rule<MIL::Text::Parser::IDValueBinding,std::pair<std::string,std::shared_ptr<MIL::IRValue const>>>::Parse<MIL::Text::Parser::ValueAssign>@<X0>(__n128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v6.n128_u64[0] = &unk_2829E8A90;
  v6.n128_u64[1] = v3;
  v7 = a1[1];
  v4 = (*(*v7.n128_u64[0] + 24))(v7.n128_u64[0], v7);
  v8 = *MIL::Scanner::Token::GetLocation(v4);
  v6.n128_u64[0] = &unk_2829E68C8;
  return MIL::Text::Parser::ValueAssign::Parse(&v6, a2);
}

uint64_t MIL::Text::Parser::IDValueBindingMap::Parse@<X0>(MIL::Text::Parser::IDValueBindingMap *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  MIL::Text::Parser::Rule<MIL::Text::Parser::IDValueBindingMap,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>::Parse<MIL::Text::Parser::IDValueBinding>(this, &v12);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::shared_ptr<MIL::IRValue const>>>(a2, &v12.__r_.__value_.__l.__data_);
  while (1)
  {
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    v4 = (*(**(this + 2) + 24))(*(this + 2));
    result = MIL::Scanner::Token::GetType(v4);
    if (result != 9)
    {
      break;
    }

    (*(**(this + 2) + 16))(v11);
    UnknownLocationImpl::~UnknownLocationImpl(v11);
    MIL::Text::Parser::Rule<MIL::Text::Parser::IDValueBindingMap,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>::Parse<MIL::Text::Parser::IDValueBinding>(this, &v12);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v10, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
    }

    else
    {
      v10 = v12;
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::shared_ptr<MIL::IRValue const>>>(a2, &v12.__r_.__value_.__l.__data_);
    if ((v6 & 1) == 0)
    {
      v7 = *(this + 4);
      Options = MIL::ParserContext::GetOptions(*(this + 3));
      v9 = (*(*Options + 24))(Options);
      MIL::TextLocationFromScannerLocation(v7, v9);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }

  return result;
}

void sub_21807BD28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::~pair(v26 - 72);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v25);
  _Unwind_Resume(a1);
}

void MIL::Text::Parser::Rule<MIL::Text::Parser::IDValueBindingMap,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>::Parse<MIL::Text::Parser::IDValueBinding>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1->n128_u64[1];
  v5.n128_u64[0] = &unk_2829E8AC0;
  v5.n128_u64[1] = v3;
  v6 = a1[1];
  v4 = (*(*v6.n128_u64[0] + 24))(v6.n128_u64[0], v6);
  v7 = *MIL::Scanner::Token::GetLocation(v4);
  v5.n128_u64[0] = &unk_2829E72C0;
  MIL::Text::Parser::IDValueBinding::Parse(&v5, a2);
}

void MIL::Text::Parser::AttributesMap::Parse(__n128 *this@<X0>, uint64_t a2@<X8>)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 3);
  UnknownLocationImpl::~UnknownLocationImpl(v5);
  MIL::Text::Parser::Rule<MIL::Text::Parser::RefValue,std::unique_ptr<MIL::IRValue const>,MIL::IRValueType const*>::ParseOpt<MIL::Text::Parser::IDValueBindingMap>(this, a2);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 4);
  UnknownLocationImpl::~UnknownLocationImpl(&v4);
}

void MIL::Text::Parser::IDTypeBinding::Parse(__n128 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Value,std::shared_ptr<MIL::IRValue const>>::Parse<MIL::Text::Parser::Type>(this);
  MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::Parse<MIL::Text::Parser::ID>(this, &v3);
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v3.__r_.__value_.__l.__data_, v3.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v3;
  }

  MIL::IRNamedValueType::Make();
}

void sub_21807BF84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::Parser::IDTypeBindingMap::Parse(__n128 *this@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  MIL::Text::Parser::Rule<MIL::Text::Parser::IDTypeBindingMap,std::map<std::string,MIL::IRValueType const*>>::Parse<MIL::Text::Parser::IDTypeBinding>(this);
}

void sub_21807C1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
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

  std::unique_ptr<MIL::IRNamedValueType>::reset[abi:ne200100]((v21 - 40), 0);
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(v18, *(v18 + 8));
  _Unwind_Resume(a1);
}

void MIL::Text::Parser::Rule<MIL::Text::Parser::IDTypeBindingMap,std::map<std::string,MIL::IRValueType const*>>::Parse<MIL::Text::Parser::IDTypeBinding>(__n128 *a1)
{
  v1 = a1->n128_u64[1];
  v3.n128_u64[0] = &unk_2829E8AF0;
  v3.n128_u64[1] = v1;
  v4 = a1[1];
  v2 = (*(*v4.n128_u64[0] + 24))(v4.n128_u64[0], v4);
  v5 = *MIL::Scanner::Token::GetLocation(v2);
  v3.n128_u64[0] = &unk_2829E73C8;
  MIL::Text::Parser::IDTypeBinding::Parse(&v3);
}

void MIL::Text::Parser::IDTypeBindingList::Parse(__n128 *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  MIL::Text::Parser::Rule<MIL::Text::Parser::IDTypeBindingMap,std::map<std::string,MIL::IRValueType const*>>::Parse<MIL::Text::Parser::IDTypeBinding>(this);
}

void sub_21807C650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23)
{
  std::unique_ptr<MIL::IRNamedValueType>::reset[abi:ne200100](&a21, 0);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

uint64_t MIL::Text::Parser::IDList::Parse@<X0>(__n128 *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::Parse<MIL::Text::Parser::ID>(this, __p);
  std::vector<std::string>::push_back[abi:ne200100](a2, __p);
  while (1)
  {
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v4 = (*(*this[1].n128_u64[0] + 24))(this[1].n128_u64[0]);
    result = MIL::Scanner::Token::GetType(v4);
    if (result != 9)
    {
      break;
    }

    (*(*this[1].n128_u64[0] + 16))(v6);
    UnknownLocationImpl::~UnknownLocationImpl(v6);
    MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::Parse<MIL::Text::Parser::ID>(this, __p);
    std::vector<std::string>::push_back[abi:ne200100](a2, __p);
  }

  return result;
}

void sub_21807C7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
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
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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

uint64_t MIL::Text::Parser::DType::Parse(MIL::Text::Parser::DType *this)
{
  v2 = (*(**(this + 2) + 24))(*(this + 2));
  MIL::Scanner::Token::Token(v11, v2);
  DTypeFirstSet = MIL::ParserContext::GetDTypeFirstSet(*(this + 3));
  LODWORD(v10) = MIL::Scanner::Token::GetType(v11);
  if (!std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTypeFirstSet, &v10))
  {
    v6 = *(this + 4);
    Options = MIL::ParserContext::GetOptions(*(this + 3));
    v8 = (*(*Options + 24))(Options);
    MIL::TextLocationFromScannerLocation(v6, v8);
  }

  (*(**(this + 2) + 16))(v9);
  UnknownLocationImpl::~UnknownLocationImpl(v9);
  Type = MIL::Scanner::Token::GetType(v11);
  UnknownLocationImpl::~UnknownLocationImpl(v11);
  return Type;
}

void sub_21807CAB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  UnknownLocationImpl::~UnknownLocationImpl((v25 - 64));
  _Unwind_Resume(a1);
}

uint64_t MIL::Text::Parser::DTYPE_BOOL::Parse(MIL::Text::Parser::DTYPE_BOOL *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 31);
  Type = MIL::Scanner::Token::GetType(v3);
  UnknownLocationImpl::~UnknownLocationImpl(v3);
  return Type;
}

uint64_t MIL::Text::Parser::DTYPE_STRING::Parse(MIL::Text::Parser::DTYPE_STRING *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 32);
  Type = MIL::Scanner::Token::GetType(v3);
  UnknownLocationImpl::~UnknownLocationImpl(v3);
  return Type;
}

uint64_t MIL::Text::Parser::DTYPE_BF16::Parse(MIL::Text::Parser::DTYPE_BF16 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 33);
  Type = MIL::Scanner::Token::GetType(v3);
  UnknownLocationImpl::~UnknownLocationImpl(v3);
  return Type;
}

uint64_t MIL::Text::Parser::DTYPE_FP16::Parse(MIL::Text::Parser::DTYPE_FP16 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 34);
  Type = MIL::Scanner::Token::GetType(v3);
  UnknownLocationImpl::~UnknownLocationImpl(v3);
  return Type;
}

uint64_t MIL::Text::Parser::DTYPE_FP8E5M2::Parse(MIL::Text::Parser::DTYPE_FP8E5M2 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 35);
  Type = MIL::Scanner::Token::GetType(v3);
  UnknownLocationImpl::~UnknownLocationImpl(v3);
  return Type;
}

uint64_t MIL::Text::Parser::DTYPE_FP8E4M3FN::Parse(MIL::Text::Parser::DTYPE_FP8E4M3FN *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 36);
  Type = MIL::Scanner::Token::GetType(v3);
  UnknownLocationImpl::~UnknownLocationImpl(v3);
  return Type;
}

uint64_t MIL::Text::Parser::DTYPE_FP32::Parse(MIL::Text::Parser::DTYPE_FP32 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 37);
  Type = MIL::Scanner::Token::GetType(v3);
  UnknownLocationImpl::~UnknownLocationImpl(v3);
  return Type;
}

uint64_t MIL::Text::Parser::DTYPE_FP64::Parse(MIL::Text::Parser::DTYPE_FP64 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 38);
  Type = MIL::Scanner::Token::GetType(v3);
  UnknownLocationImpl::~UnknownLocationImpl(v3);
  return Type;
}

uint64_t MIL::Text::Parser::DTYPE_INT4::Parse(MIL::Text::Parser::DTYPE_INT4 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 39);
  Type = MIL::Scanner::Token::GetType(v3);
  UnknownLocationImpl::~UnknownLocationImpl(v3);
  return Type;
}

uint64_t MIL::Text::Parser::DTYPE_INT8::Parse(MIL::Text::Parser::DTYPE_INT8 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 40);
  Type = MIL::Scanner::Token::GetType(v3);
  UnknownLocationImpl::~UnknownLocationImpl(v3);
  return Type;
}

uint64_t MIL::Text::Parser::DTYPE_INT16::Parse(MIL::Text::Parser::DTYPE_INT16 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 41);
  Type = MIL::Scanner::Token::GetType(v3);
  UnknownLocationImpl::~UnknownLocationImpl(v3);
  return Type;
}

uint64_t MIL::Text::Parser::DTYPE_INT32::Parse(MIL::Text::Parser::DTYPE_INT32 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 42);
  Type = MIL::Scanner::Token::GetType(v3);
  UnknownLocationImpl::~UnknownLocationImpl(v3);
  return Type;
}

uint64_t MIL::Text::Parser::DTYPE_INT64::Parse(MIL::Text::Parser::DTYPE_INT64 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 43);
  Type = MIL::Scanner::Token::GetType(v3);
  UnknownLocationImpl::~UnknownLocationImpl(v3);
  return Type;
}

uint64_t MIL::Text::Parser::DTYPE_UINT1::Parse(MIL::Text::Parser::DTYPE_UINT1 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 44);
  Type = MIL::Scanner::Token::GetType(v3);
  UnknownLocationImpl::~UnknownLocationImpl(v3);
  return Type;
}

uint64_t MIL::Text::Parser::DTYPE_UINT2::Parse(MIL::Text::Parser::DTYPE_UINT2 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 45);
  Type = MIL::Scanner::Token::GetType(v3);
  UnknownLocationImpl::~UnknownLocationImpl(v3);
  return Type;
}

uint64_t MIL::Text::Parser::DTYPE_UINT3::Parse(MIL::Text::Parser::DTYPE_UINT3 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 46);
  Type = MIL::Scanner::Token::GetType(v3);
  UnknownLocationImpl::~UnknownLocationImpl(v3);
  return Type;
}

uint64_t MIL::Text::Parser::DTYPE_UINT4::Parse(MIL::Text::Parser::DTYPE_UINT4 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 47);
  Type = MIL::Scanner::Token::GetType(v3);
  UnknownLocationImpl::~UnknownLocationImpl(v3);
  return Type;
}

uint64_t MIL::Text::Parser::DTYPE_UINT6::Parse(MIL::Text::Parser::DTYPE_UINT6 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 48);
  Type = MIL::Scanner::Token::GetType(v3);
  UnknownLocationImpl::~UnknownLocationImpl(v3);
  return Type;
}

uint64_t MIL::Text::Parser::DTYPE_UINT8::Parse(MIL::Text::Parser::DTYPE_UINT8 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 49);
  Type = MIL::Scanner::Token::GetType(v3);
  UnknownLocationImpl::~UnknownLocationImpl(v3);
  return Type;
}

uint64_t MIL::Text::Parser::DTYPE_UINT16::Parse(MIL::Text::Parser::DTYPE_UINT16 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 50);
  Type = MIL::Scanner::Token::GetType(v3);
  UnknownLocationImpl::~UnknownLocationImpl(v3);
  return Type;
}

uint64_t MIL::Text::Parser::DTYPE_UINT32::Parse(MIL::Text::Parser::DTYPE_UINT32 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 51);
  Type = MIL::Scanner::Token::GetType(v3);
  UnknownLocationImpl::~UnknownLocationImpl(v3);
  return Type;
}

uint64_t MIL::Text::Parser::DTYPE_UINT64::Parse(MIL::Text::Parser::DTYPE_UINT64 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 52);
  Type = MIL::Scanner::Token::GetType(v3);
  UnknownLocationImpl::~UnknownLocationImpl(v3);
  return Type;
}

float MIL::Text::Parser::FP32::Parse(MIL::Text::Parser::FP32 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 19);
  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(v10);
  v3 = *(ProgramFirstSet + 8);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = *ProgramFirstSet;
  if (v3 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = *(ProgramFirstSet + 8);
  if (v3)
  {
    memmove(&__dst, v4, v3);
  }

  __dst.__r_.__value_.__s.__data_[v3] = 0;
  UnknownLocationImpl::~UnknownLocationImpl(v10);
  v5 = *(this + 4);
  Options = MIL::ParserContext::GetOptions(*(this + 3));
  v7 = (*(*Options + 24))(Options);
  v8 = MIL::Util::stof(&__dst, v5, v7);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v8;
}

double MIL::Text::Parser::FP64::Parse(MIL::Text::Parser::FP64 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 19);
  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(v10);
  v3 = *(ProgramFirstSet + 8);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = *ProgramFirstSet;
  if (v3 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = *(ProgramFirstSet + 8);
  if (v3)
  {
    memmove(&__dst, v4, v3);
  }

  __dst.__r_.__value_.__s.__data_[v3] = 0;
  UnknownLocationImpl::~UnknownLocationImpl(v10);
  v5 = *(this + 4);
  Options = MIL::ParserContext::GetOptions(*(this + 3));
  v7 = (*(*Options + 24))(Options);
  v8 = MIL::Util::stod(&__dst, v5, v7);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v8;
}

uint64_t MIL::Text::Parser::UINT8::Parse(MIL::Text::Parser::UINT8 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 18);
  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(v11);
  v3 = *(ProgramFirstSet + 8);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = *ProgramFirstSet;
  if (v3 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = *(ProgramFirstSet + 8);
  if (v3)
  {
    memmove(&__dst, v4, v3);
  }

  __dst.__r_.__value_.__s.__data_[v3] = 0;
  UnknownLocationImpl::~UnknownLocationImpl(v11);
  BaseAndPrepIntStringForParse = MIL::Util::GetBaseAndPrepIntStringForParse(&__dst);
  v6 = *(this + 4);
  Options = MIL::ParserContext::GetOptions(*(this + 3));
  v8 = (*(*Options + 24))(Options);
  v9 = MIL::Util::stoui8(&__dst, BaseAndPrepIntStringForParse, v6, v8);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v9;
}

uint64_t MIL::Text::Parser::INT32::Parse(MIL::ParserContext **this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 18);
  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(v9);
  v3 = *(ProgramFirstSet + 8);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = *ProgramFirstSet;
  if (v3 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = *(ProgramFirstSet + 8);
  if (v3)
  {
    memmove(&__dst, v4, v3);
  }

  __dst.__r_.__value_.__s.__data_[v3] = 0;
  UnknownLocationImpl::~UnknownLocationImpl(v9);
  BaseAndPrepIntStringForParse = MIL::Util::GetBaseAndPrepIntStringForParse(&__dst);
  Options = MIL::ParserContext::GetOptions(this[3]);
  (*(*Options + 24))(Options);
  v7 = MIL::Util::stoi(&__dst, BaseAndPrepIntStringForParse);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v7;
}

uint64_t MIL::Text::Parser::INT64::Parse(MIL::ParserContext **this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 18);
  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(v9);
  v3 = *(ProgramFirstSet + 8);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = *ProgramFirstSet;
  if (v3 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = *(ProgramFirstSet + 8);
  if (v3)
  {
    memmove(&__dst, v4, v3);
  }

  __dst.__r_.__value_.__s.__data_[v3] = 0;
  UnknownLocationImpl::~UnknownLocationImpl(v9);
  BaseAndPrepIntStringForParse = MIL::Util::GetBaseAndPrepIntStringForParse(&__dst);
  Options = MIL::ParserContext::GetOptions(this[3]);
  (*(*Options + 24))(Options);
  v7 = MIL::Util::stoll(&__dst, BaseAndPrepIntStringForParse);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v7;
}

unint64_t MIL::Text::Parser::UINT64::Parse(MIL::Text::Parser::UINT64 *this)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 18);
  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(v11);
  v3 = *(ProgramFirstSet + 8);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = *ProgramFirstSet;
  if (v3 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = *(ProgramFirstSet + 8);
  if (v3)
  {
    memmove(&__dst, v4, v3);
  }

  __dst.__r_.__value_.__s.__data_[v3] = 0;
  UnknownLocationImpl::~UnknownLocationImpl(v11);
  BaseAndPrepIntStringForParse = MIL::Util::GetBaseAndPrepIntStringForParse(&__dst);
  v6 = *(this + 4);
  Options = MIL::ParserContext::GetOptions(*(this + 3));
  v8 = (*(*Options + 24))(Options);
  v9 = MIL::Util::stoull(&__dst, BaseAndPrepIntStringForParse, v6, v8);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v9;
}

BOOL MIL::Text::Parser::BOOL::Parse(MIL::Text::Parser::BOOL *this)
{
  v2 = (*(**(this + 2) + 24))(*(this + 2));
  if (MIL::Scanner::Token::GetType(v2) != 21)
  {
    v3 = (*(**(this + 2) + 24))(*(this + 2));
    if (MIL::Scanner::Token::GetType(v3) != 22)
    {
      v6 = *(this + 4);
      Options = MIL::ParserContext::GetOptions(*(this + 3));
      v8 = (*(*Options + 24))(Options);
      MIL::TextLocationFromScannerLocation(v6, v8);
    }
  }

  (*(**(this + 2) + 16))(&v9);
  v4 = MIL::Scanner::Token::GetType(&v9) == 21;
  UnknownLocationImpl::~UnknownLocationImpl(&v9);
  return v4;
}

void sub_21807DCD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, char a18, std::__shared_weak_count *a19)
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

void MIL::Text::Parser::STRING::Parse(MIL::Text::Parser::STRING *this@<X0>, _BYTE *a2@<X8>)
{
  MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 20);
  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(v6);
  v4 = *(ProgramFirstSet + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = *ProgramFirstSet;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    memmove(a2, v5, v4);
  }

  a2[v4] = 0;
  UnknownLocationImpl::~UnknownLocationImpl(v6);
}

uint64_t MIL::Text::Parser::SYNTAX_VERSION::Parse(MIL::Text::Parser::SYNTAX_VERSION *this)
{
  v2 = MIL::Text::Parser::Rule<MIL::Text::Parser::SYNTAX_VERSION,MIL::SyntaxVersion>::Parse<MIL::Text::Parser::FP32>(this);
  if (MIL::Util::FltApproxEqual(3, v2, 1.0, 0.00000011921))
  {
    return 1;
  }

  if (MIL::Util::FltApproxEqual(3, v2, 1.1, 0.00000011921))
  {
    return 2;
  }

  v3 = 3;
  if (!MIL::Util::FltApproxEqual(3, v2, 1.2, 0.00000011921))
  {
    if (!MIL::Util::FltApproxEqual(3, v2, 1.3, 0.00000011921))
    {
      v5 = *(this + 4);
      Options = MIL::ParserContext::GetOptions(*(this + 3));
      v7 = (*(*Options + 24))(Options);
      MIL::TextLocationFromScannerLocation(v5, v7);
    }

    return 4;
  }

  return v3;
}

void sub_21807DF84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
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

float MIL::Text::Parser::Rule<MIL::Text::Parser::SYNTAX_VERSION,MIL::SyntaxVersion>::Parse<MIL::Text::Parser::FP32>(__n128 *a1)
{
  v1 = a1->n128_u64[1];
  v4[0] = &unk_2829E8B20;
  v4[1] = v1;
  v5 = a1[1];
  v2 = (*(*v5.n128_u64[0] + 24))(v5.n128_u64[0], v5);
  v6 = *MIL::Scanner::Token::GetLocation(v2);
  v4[0] = &unk_2829E7D10;
  return MIL::Text::Parser::FP32::Parse(v4);
}

void MIL::Text::Parser::ID::Parse(MIL::Text::Parser::ID *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(**(this + 2) + 24))(*(this + 2));
  MIL::Scanner::Token::Token(v19, v4);
  Type = MIL::Scanner::Token::GetType(v5);
  if (Type == 54)
  {
    MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::Expect(this, 54);
    ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(&v17);
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

    *(a2 + 23) = v8;
    if (v8)
    {
      memmove(a2, v9, v8);
    }

    *(a2 + v8) = 0;
    UnknownLocationImpl::~UnknownLocationImpl(&v17);
  }

  else
  {
    v10 = *(this + 3);
    Options = MIL::ParserContext::GetOptions(v10);
    v12 = (*(*Options + 88))(Options);
    MIL::ParserContext::GetFallbackIDForKeyword(v10, Type, v12, &v17);
    if (v18 != 1)
    {
      v13 = *(this + 4);
      v14 = MIL::ParserContext::GetOptions(*(this + 3));
      v15 = (*(*v14 + 24))(v14);
      MIL::TextLocationFromScannerLocation(v13, v15);
    }

    (*(**(this + 2) + 16))(v16);
    UnknownLocationImpl::~UnknownLocationImpl(v16);
    if ((v18 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(a2, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
      if ((v18 & 1) != 0 && SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *a2 = v17;
    }
  }

  UnknownLocationImpl::~UnknownLocationImpl(v19);
}

void sub_21807E334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v25)
  {
    __cxa_free_exception(v24);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (*(v26 - 72) == 1 && *(v26 - 73) < 0)
  {
    operator delete(*(v26 - 96));
  }

  UnknownLocationImpl::~UnknownLocationImpl((v26 - 64));
  _Unwind_Resume(a1);
}

void MIL::Text::Parser::Program::~Program(MIL::Text::Parser::Program *this)
{
  *this = &unk_2829E6500;
  v1 = *(this + 6);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2829E6500;
  v1 = *(this + 6);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::Program,std::unique_ptr<MIL::IRProgram>>::ParseOpt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(ProgramFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  *a2 = 0;
  return result;
}

double MIL::Text::Parser::Rule<MIL::Text::Parser::Function,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>::ParseOpt@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  FunctionFirstSet = MIL::ParserContext::GetFunctionFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  if (std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(FunctionFirstSet, &Type))
  {
    (*(*a1 + 24))(a1);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double MIL::Text::Parser::Rule<MIL::Text::Parser::FunctionMap,std::unordered_map<std::string,std::shared_ptr<MIL::IRFunction>>>::ParseOpt@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  FunctionMapFirstSet = MIL::ParserContext::GetFunctionMapFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  if (std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(FunctionMapFirstSet, &Type))
  {
    (*(*a1 + 24))(a1);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1065353216;
  }

  return result;
}

double MIL::Text::Parser::Rule<MIL::Text::Parser::OpsetBlock,std::pair<std::string,std::unique_ptr<MIL::IRBlock>>>::ParseOpt@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  OpsetBlockFirstSet = MIL::ParserContext::GetOpsetBlockFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  if (std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(OpsetBlockFirstSet, &Type))
  {
    (*(*a1 + 24))(a1);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::OpsetBlockMap,std::map<std::string,std::unique_ptr<MIL::IRBlock>>>::ParseOpt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  OpsetBlockMapFirstSet = MIL::ParserContext::GetOpsetBlockMapFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(OpsetBlockMapFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::Block,std::unique_ptr<MIL::IRBlock>,MIL::IROpset const*>::ParseOpt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  BlockFirstSet = MIL::ParserContext::GetBlockFirstSet(*(a1 + 24));
  v7 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v7);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(BlockFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1, a2);
  }

  *a3 = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::BlockList,std::vector<std::shared_ptr<MIL::IRBlock>>,MIL::IROpset const*>::ParseOpt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  BlockListFirstSet = MIL::ParserContext::GetBlockListFirstSet(*(a1 + 24));
  v7 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v7);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(BlockListFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1, a2);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::BlockInputDecls,std::vector<std::shared_ptr<MIL::IRNamedValueType>>>::ParseOpt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  BlockInputDeclsFirstSet = MIL::ParserContext::GetBlockInputDeclsFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(BlockInputDeclsFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::Op,std::shared_ptr<MIL::IROperation>,MIL::IROpset const*>::ParseOpt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  OpFirstSet = MIL::ParserContext::GetOpFirstSet(*(a1 + 24));
  v7 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v7);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(OpFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1, a2);
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::OpList,std::vector<std::shared_ptr<MIL::IROperation>>,MIL::IROpset const*>::ParseOpt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  OpListFirstSet = MIL::ParserContext::GetOpListFirstSet(*(a1 + 24));
  v7 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v7);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(OpListFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1, a2);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::Value,std::shared_ptr<MIL::IRValue const>>::ParseOpt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  ValueFirstSet = MIL::ParserContext::GetValueFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(ValueFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::ValueAssign,std::shared_ptr<MIL::IRValue const>>::ParseOpt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  ValueAssignFirstSet = MIL::ParserContext::GetValueAssignFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(ValueAssignFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::ValueLiteral,std::unique_ptr<MIL::IRValue const>,MIL::IRValueType const*>::ParseOpt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  ValueLiteralFirstSet = MIL::ParserContext::GetValueLiteralFirstSet(*(a1 + 24));
  v7 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v7);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(ValueLiteralFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1, a2);
  }

  *a3 = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::IValue,std::unique_ptr<MIL::IRValue const>,MIL::IRValueType const*>::ParseOpt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  IValueFirstSet = MIL::ParserContext::GetIValueFirstSet(*(a1 + 24));
  v7 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v7);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(IValueFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1, a2);
  }

  *a3 = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::RefValue,std::unique_ptr<MIL::IRValue const>,MIL::IRValueType const*>::ParseOpt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  RefValueFirstSet = MIL::ParserContext::GetRefValueFirstSet(*(a1 + 24));
  v7 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v7);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(RefValueFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1, a2);
  }

  *a3 = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::TupleVal,std::unique_ptr<MIL::IRTupleValue const>,MIL::IRTupleValueType const*>::ParseOpt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  TupleValFirstSet = MIL::ParserContext::GetTupleValFirstSet(*(a1 + 24));
  v7 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v7);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(TupleValFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1, a2);
  }

  *a3 = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::ListVal,std::unique_ptr<MIL::IRListValue const>,MIL::IRListValueType const*>::ParseOpt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  ListValFirstSet = MIL::ParserContext::GetListValFirstSet(*(a1 + 24));
  v7 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v7);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(ListValFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1, a2);
  }

  *a3 = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DictItem,std::pair<std::unique_ptr<MIL::IRValue const>,std::unique_ptr<MIL::IRValue const>>,MIL::IRValueType const*,MIL::IRValueType const*>::ParseOpt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  DictItemFirstSet = MIL::ParserContext::GetDictItemFirstSet(*(a1 + 24));
  v9 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v9);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DictItemFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1, a2, a3);
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DictItemList,std::vector<std::pair<std::unique_ptr<MIL::IRValue const>,std::unique_ptr<MIL::IRValue const>>>,MIL::IRValueType const*,MIL::IRValueType const*>::ParseOpt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  DictItemListFirstSet = MIL::ParserContext::GetDictItemListFirstSet(*(a1 + 24));
  v9 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v9);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DictItemListFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1, a2, a3);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DictVal,std::unique_ptr<MIL::IRDictionaryValue const>,MIL::IRDictionaryValueType const*>::ParseOpt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  DictValFirstSet = MIL::ParserContext::GetDictValFirstSet(*(a1 + 24));
  v7 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v7);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DictValFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1, a2);
  }

  *a3 = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::TensorVal,std::unique_ptr<MIL::IRTensorValue const>,MIL::IRTensorValueType const*>::ParseOpt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  TensorValFirstSet = MIL::ParserContext::GetTensorValFirstSet(*(a1 + 24));
  v7 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v7);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(TensorValFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1, a2);
  }

  *a3 = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::Type,MIL::IRValueType const*>::ParseOpt(uint64_t a1)
{
  TypeFirstSet = MIL::ParserContext::GetTypeFirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(TypeFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::TypeList,std::vector<MIL::IRValueType const*>>::ParseOpt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  TypeListFirstSet = MIL::ParserContext::GetTypeListFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(TypeListFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::TypeLength,MIL::IRDimension const*>::ParseOpt(uint64_t a1)
{
  TypeLengthFirstSet = MIL::ParserContext::GetTypeLengthFirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(TypeLengthFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DimLength,MIL::IRDimension const*>::ParseOpt(uint64_t a1)
{
  DimLengthFirstSet = MIL::ParserContext::GetDimLengthFirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DimLengthFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::TensorShape,std::vector<MIL::IRDimension const*>>::ParseOpt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  TensorShapeFirstSet = MIL::ParserContext::GetTensorShapeFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(TensorShapeFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferInterleaveFactor,MIL::IRProperty const*>::ParseOpt(uint64_t a1)
{
  TensorBufferInterleaveFactorFirstSet = MIL::ParserContext::GetTensorBufferInterleaveFactorFirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(TensorBufferInterleaveFactorFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferStride,MIL::IRProperty const*>::ParseOpt(uint64_t a1)
{
  TensorBufferStrideFirstSet = MIL::ParserContext::GetTensorBufferStrideFirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(TensorBufferStrideFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferStrides,std::vector<MIL::IRProperty const*>>::ParseOpt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  TensorBufferStridesFirstSet = MIL::ParserContext::GetTensorBufferStridesFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(TensorBufferStridesFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferRowAlignment,MIL::IRProperty const*>::ParseOpt(uint64_t a1)
{
  TensorBufferRowAlignmentFirstSet = MIL::ParserContext::GetTensorBufferRowAlignmentFirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(TensorBufferRowAlignmentFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::CircularBufferWrapDim,MIL::IRProperty const*>::ParseOpt(uint64_t a1)
{
  CircularBufferWrapDimFirstSet = MIL::ParserContext::GetCircularBufferWrapDimFirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(CircularBufferWrapDimFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::TensorBufferInterleaveFactors,std::vector<MIL::IRProperty const*>>::ParseOpt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  TensorBufferInterleaveFactorsFirstSet = MIL::ParserContext::GetTensorBufferInterleaveFactorsFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(TensorBufferInterleaveFactorsFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::PixelBufferBytesPerRow,MIL::IRProperty const*>::ParseOpt(uint64_t a1)
{
  PixelBufferBytesPerRowFirstSet = MIL::ParserContext::GetPixelBufferBytesPerRowFirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(PixelBufferBytesPerRowFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::PixelBufferBytesPerRowVec,std::vector<MIL::IRProperty const*>>::ParseOpt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  PixelBufferBytesPerRowVecFirstSet = MIL::ParserContext::GetPixelBufferBytesPerRowVecFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(PixelBufferBytesPerRowVecFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::PixelBufferNumSlices,MIL::IRProperty const*>::ParseOpt(uint64_t a1)
{
  PixelBufferNumSlicesFirstSet = MIL::ParserContext::GetPixelBufferNumSlicesFirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(PixelBufferNumSlicesFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::PixelBufferNumSlicesVec,std::vector<MIL::IRProperty const*>>::ParseOpt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  PixelBufferNumSlicesVecFirstSet = MIL::ParserContext::GetPixelBufferNumSlicesVecFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(PixelBufferNumSlicesVecFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::Argument,std::shared_ptr<MIL::IRArgument>>::ParseOpt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  ArgumentFirstSet = MIL::ParserContext::GetArgumentFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(ArgumentFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::ArgumentList,std::vector<std::shared_ptr<MIL::IRArgument>>>::ParseOpt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  ArgumentListFirstSet = MIL::ParserContext::GetArgumentListFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(ArgumentListFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

double MIL::Text::Parser::Rule<MIL::Text::Parser::IDArgumentBinding,std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>>>::ParseOpt@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  IDArgumentBindingFirstSet = MIL::ParserContext::GetIDArgumentBindingFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  if (std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(IDArgumentBindingFirstSet, &Type))
  {
    (*(*a1 + 24))(a1);
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::IDArgumentBindingMap,std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>::ParseOpt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  IDArgumentBindingMapFirstSet = MIL::ParserContext::GetIDArgumentBindingMapFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(IDArgumentBindingMapFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  return result;
}

double MIL::Text::Parser::Rule<MIL::Text::Parser::IDValueBinding,std::pair<std::string,std::shared_ptr<MIL::IRValue const>>>::ParseOpt@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  IDValueBindingFirstSet = MIL::ParserContext::GetIDValueBindingFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  if (std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(IDValueBindingFirstSet, &Type))
  {
    (*(*a1 + 24))(a1);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double MIL::Text::Parser::Rule<MIL::Text::Parser::IDValueBindingMap,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>::ParseOpt@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  IDValueBindingMapFirstSet = MIL::ParserContext::GetIDValueBindingMapFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  if (std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(IDValueBindingMapFirstSet, &Type))
  {
    (*(*a1 + 24))(a1);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1065353216;
  }

  return result;
}

double MIL::Text::Parser::Rule<MIL::Text::Parser::AttributesMap,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>::ParseOpt@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AttributesMapFirstSet = MIL::ParserContext::GetAttributesMapFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  if (std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(AttributesMapFirstSet, &Type))
  {
    (*(*a1 + 24))(a1);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1065353216;
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::IDTypeBinding,std::unique_ptr<MIL::IRNamedValueType>>::ParseOpt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  IDTypeBindingFirstSet = MIL::ParserContext::GetIDTypeBindingFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(IDTypeBindingFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  *a2 = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::IDTypeBindingMap,std::map<std::string,MIL::IRValueType const*>>::ParseOpt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  IDTypeBindingMapFirstSet = MIL::ParserContext::GetIDTypeBindingMapFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(IDTypeBindingMapFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::IDTypeBindingList,std::vector<std::shared_ptr<MIL::IRNamedValueType>>>::ParseOpt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  IDTypeBindingListFirstSet = MIL::ParserContext::GetIDTypeBindingListFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(IDTypeBindingListFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::IDList,std::vector<std::string>>::ParseOpt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  IDListFirstSet = MIL::ParserContext::GetIDListFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(IDListFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DType,MIL::Scanner::TokenType>::ParseOpt(uint64_t a1)
{
  DTypeFirstSet = MIL::ParserContext::GetDTypeFirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTypeFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DTYPE_BOOL,MIL::Scanner::TokenType>::ParseOpt(uint64_t a1)
{
  DTYPE_BOOLFirstSet = MIL::ParserContext::GetDTYPE_BOOLFirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTYPE_BOOLFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DTYPE_STRING,MIL::Scanner::TokenType>::ParseOpt(uint64_t a1)
{
  DTYPE_STRINGFirstSet = MIL::ParserContext::GetDTYPE_STRINGFirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTYPE_STRINGFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DTYPE_BF16,MIL::Scanner::TokenType>::ParseOpt(uint64_t a1)
{
  DTYPE_BF16FirstSet = MIL::ParserContext::GetDTYPE_BF16FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTYPE_BF16FirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DTYPE_FP16,MIL::Scanner::TokenType>::ParseOpt(uint64_t a1)
{
  DTYPE_FP16FirstSet = MIL::ParserContext::GetDTYPE_FP16FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTYPE_FP16FirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DTYPE_FP8E5M2,MIL::Scanner::TokenType>::ParseOpt(uint64_t a1)
{
  DTYPE_FP8E5M2FirstSet = MIL::ParserContext::GetDTYPE_FP8E5M2FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTYPE_FP8E5M2FirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DTYPE_FP8E4M3FN,MIL::Scanner::TokenType>::ParseOpt(uint64_t a1)
{
  DTYPE_FP8E4M3FNFirstSet = MIL::ParserContext::GetDTYPE_FP8E4M3FNFirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTYPE_FP8E4M3FNFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DTYPE_FP32,MIL::Scanner::TokenType>::ParseOpt(uint64_t a1)
{
  DTYPE_FP32FirstSet = MIL::ParserContext::GetDTYPE_FP32FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTYPE_FP32FirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DTYPE_FP64,MIL::Scanner::TokenType>::ParseOpt(uint64_t a1)
{
  DTYPE_FP64FirstSet = MIL::ParserContext::GetDTYPE_FP64FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTYPE_FP64FirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DTYPE_INT4,MIL::Scanner::TokenType>::ParseOpt(uint64_t a1)
{
  DTYPE_INT4FirstSet = MIL::ParserContext::GetDTYPE_INT4FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTYPE_INT4FirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DTYPE_INT8,MIL::Scanner::TokenType>::ParseOpt(uint64_t a1)
{
  DTYPE_INT8FirstSet = MIL::ParserContext::GetDTYPE_INT8FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTYPE_INT8FirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DTYPE_INT16,MIL::Scanner::TokenType>::ParseOpt(uint64_t a1)
{
  DTYPE_INT16FirstSet = MIL::ParserContext::GetDTYPE_INT16FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTYPE_INT16FirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DTYPE_INT32,MIL::Scanner::TokenType>::ParseOpt(uint64_t a1)
{
  DTYPE_INT32FirstSet = MIL::ParserContext::GetDTYPE_INT32FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTYPE_INT32FirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DTYPE_INT64,MIL::Scanner::TokenType>::ParseOpt(uint64_t a1)
{
  DTYPE_INT64FirstSet = MIL::ParserContext::GetDTYPE_INT64FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTYPE_INT64FirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DTYPE_UINT1,MIL::Scanner::TokenType>::ParseOpt(uint64_t a1)
{
  DTYPE_UINT1FirstSet = MIL::ParserContext::GetDTYPE_UINT1FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTYPE_UINT1FirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DTYPE_UINT2,MIL::Scanner::TokenType>::ParseOpt(uint64_t a1)
{
  DTYPE_UINT2FirstSet = MIL::ParserContext::GetDTYPE_UINT2FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTYPE_UINT2FirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DTYPE_UINT3,MIL::Scanner::TokenType>::ParseOpt(uint64_t a1)
{
  DTYPE_UINT3FirstSet = MIL::ParserContext::GetDTYPE_UINT3FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTYPE_UINT3FirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DTYPE_UINT4,MIL::Scanner::TokenType>::ParseOpt(uint64_t a1)
{
  DTYPE_UINT4FirstSet = MIL::ParserContext::GetDTYPE_UINT4FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTYPE_UINT4FirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DTYPE_UINT6,MIL::Scanner::TokenType>::ParseOpt(uint64_t a1)
{
  DTYPE_UINT6FirstSet = MIL::ParserContext::GetDTYPE_UINT6FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTYPE_UINT6FirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DTYPE_UINT8,MIL::Scanner::TokenType>::ParseOpt(uint64_t a1)
{
  DTYPE_UINT8FirstSet = MIL::ParserContext::GetDTYPE_UINT8FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTYPE_UINT8FirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DTYPE_UINT16,MIL::Scanner::TokenType>::ParseOpt(uint64_t a1)
{
  DTYPE_UINT16FirstSet = MIL::ParserContext::GetDTYPE_UINT16FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTYPE_UINT16FirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DTYPE_UINT32,MIL::Scanner::TokenType>::ParseOpt(uint64_t a1)
{
  DTYPE_UINT32FirstSet = MIL::ParserContext::GetDTYPE_UINT32FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTYPE_UINT32FirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::DTYPE_UINT64,MIL::Scanner::TokenType>::ParseOpt(uint64_t a1)
{
  DTYPE_UINT64FirstSet = MIL::ParserContext::GetDTYPE_UINT64FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(DTYPE_UINT64FirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

double MIL::Text::Parser::Rule<MIL::Text::Parser::FP32,float>::ParseOpt(uint64_t a1)
{
  FP32FirstSet = MIL::ParserContext::GetFP32FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  if (!std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(FP32FirstSet, &Type))
  {
    return 0.0;
  }

  (*(*a1 + 24))(a1);
  return result;
}

double MIL::Text::Parser::Rule<MIL::Text::Parser::FP64,double>::ParseOpt(uint64_t a1)
{
  FP64FirstSet = MIL::ParserContext::GetFP64FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  if (!std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(FP64FirstSet, &Type))
  {
    return 0.0;
  }

  (*(*a1 + 24))(a1);
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::UINT8,unsigned char>::ParseOpt(uint64_t a1)
{
  UINT8FirstSet = MIL::ParserContext::GetUINT8FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(UINT8FirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::INT32,int>::ParseOpt(uint64_t a1)
{
  INT32FirstSet = MIL::ParserContext::GetINT32FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(INT32FirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::INT64,long long>::ParseOpt(uint64_t a1)
{
  INT64FirstSet = MIL::ParserContext::GetINT64FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(INT64FirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::UINT64,unsigned long long>::ParseOpt(uint64_t a1)
{
  UINT64FirstSet = MIL::ParserContext::GetUINT64FirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(UINT64FirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::BOOL,BOOL>::ParseOpt(uint64_t a1)
{
  BOOLFirstSet = MIL::ParserContext::GetBOOLFirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(BOOLFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::STRING,std::string>::ParseOpt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  STRINGFirstSet = MIL::ParserContext::GetSTRINGFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(STRINGFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::SYNTAX_VERSION,MIL::SyntaxVersion>::ParseOpt(uint64_t a1)
{
  SYNTAX_VERSIONFirstSet = MIL::ParserContext::GetSYNTAX_VERSIONFirstSet(*(a1 + 24));
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v3);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(SYNTAX_VERSIONFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

uint64_t *MIL::Text::Parser::Rule<MIL::Text::Parser::ID,std::string>::ParseOpt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  IDFirstSet = MIL::ParserContext::GetIDFirstSet(*(a1 + 24));
  v5 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  Type = MIL::Scanner::Token::GetType(v5);
  result = std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,MIL::SyntaxVersion>>>::find<MIL::Scanner::TokenType>(IDFirstSet, &Type);
  if (result)
  {
    return (*(*a1 + 24))(a1);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void std::__shared_ptr_pointer<MIL::TextFileLocation  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::TextFileLocation  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::TextFileLocation  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>::pair[abi:ne200100]<std::string,std::unique_ptr<MIL::IRFunction>,0>(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  std::shared_ptr<MIL::IRFunction>::shared_ptr[abi:ne200100]<MIL::IRFunction,std::default_delete<MIL::IRFunction>,0>((a1 + 24), a2 + 3);
  return a1;
}

void sub_2180823FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, uint64_t *a3)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::shared_ptr<MIL::IRArgument>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRArgument>*,std::shared_ptr<MIL::IRArgument>*>(&this[1], *a3, a3[1], (a3[1] - *a3) >> 4);
  return this;
}

void sub_218082488(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<MIL::ParserContext>::__shared_ptr_emplace[abi:ne200100]<MIL::ParserOptions &,std::allocator<MIL::ParserContext>,0>(void *a1, const MIL::ParserOptions *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829E8140;
  MIL::ParserContext::ParserContext((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<MIL::ParserContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E8140;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__emplace_unique_key_args<std::string,std::string&,std::unique_ptr<MIL::IRBlock>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__construct_node<std::string&,std::unique_ptr<MIL::IRBlock>>();
  }

  return v2;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>>();
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

void sub_218082984(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::unique_ptr<MIL::IRBlock>>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::shared_ptr<MIL::IRValue const>::shared_ptr[abi:ne200100]<MIL::IRValue const,std::default_delete<MIL::IRValue const>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::vector<std::pair<std::unique_ptr<MIL::IRValue const>,std::unique_ptr<MIL::IRValue const>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 2;
        std::allocator<std::pair<std::unique_ptr<MIL::IRValue const>,std::unique_ptr<MIL::IRValue const>>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::allocator<std::pair<std::unique_ptr<MIL::IRValue const>,std::unique_ptr<MIL::IRValue const>>>::destroy[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  a2[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  result = *a2;
  *a2 = 0;
  if (result)
  {
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::unique_ptr<MIL::IRValue const>,std::unique_ptr<MIL::IRValue const>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::pair<std::unique_ptr<MIL::IRValue const>,std::unique_ptr<MIL::IRValue const>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::pair<std::unique_ptr<MIL::IRValue const>,std::unique_ptr<MIL::IRValue const>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<std::pair<std::unique_ptr<MIL::IRValue const>,std::unique_ptr<MIL::IRValue const>>>::clear[abi:ne200100](uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 32);
      *(v3 + 16) = v1 - 16;
      result = std::allocator<std::pair<std::unique_ptr<MIL::IRValue const>,std::unique_ptr<MIL::IRValue const>>>::destroy[abi:ne200100](v4, (v1 - 16));
      v1 = *(v3 + 16);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>> &>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__construct_node<std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>> &>();
  }

  return v2;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::shared_ptr<MIL::IRValue const>>>(void *a1, const void **a2)
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

void sub_2180830B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<MIL::IRNamedValueType>::reset[abi:ne200100](void ***a1, void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MIL::IRNamedValueType::~IRNamedValueType(result);

    JUMPOUT(0x21CEAFEA0);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__emplace_unique_key_args<std::string,std::string const&,MIL::IRValueType const*>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__construct_node<std::string const&,MIL::IRValueType const*>();
  }

  return result;
}

void sub_218083240(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,MIL::IRValueType const*>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string<std::string_view,0>(_BYTE *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = *a2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v2;
  if (v2)
  {
    memmove(__dst, v4, v2);
  }

  __dst[v2] = 0;
  return __dst;
}

void MIL::Text::BasicSerializer::~BasicSerializer(MIL::Text::BasicSerializer *this)
{
  std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::destroy(this + 368, *(this + 47));
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::~__hash_table(this + 328);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(this + 6) = *MEMORY[0x277D82828];
  *(this + *(v3 - 24) + 48) = *(v2 + 24);
  *(this + 7) = MEMORY[0x277D82878] + 16;
  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  *(this + 7) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(this + 8);
  std::ostream::~ostream();
  MEMORY[0x21CEAFDA0](this + 160);
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t MIL::Text::BasicSerializer::BasicSerializer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = a2;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 48));
  *(a1 + 312) = 0;
  *(a1 + 320) = a3;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 1065353216;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 368) = a1 + 376;
  v5 = *(a1 + 40);
  v6 = *(*v5 - 24);
  v7 = std::locale::classic();
  v8 = (v5 + v6);
  std::ios_base::getloc(v8);
  std::ios_base::imbue(v8, v7);
  std::locale::~locale(&v13);
  rdbuf = v8->__rdbuf_;
  if (rdbuf)
  {
    (*(rdbuf->__locale_ + 2))(rdbuf, v7);
    std::locale::locale(&v12, rdbuf + 1);
    std::locale::operator=(rdbuf + 1, v7);
    std::locale::~locale(&v12);
  }

  std::locale::~locale(&v11);
  return a1;
}

void sub_218083584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  if (*(v10 + 39) < 0)
  {
    operator delete(*(v10 + 16));
  }

  v12 = *(v10 + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::BasicSerializer(MIL::Text::BasicSerializer *this, const MIL::Text::SerializerOptions *a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0;
  *(this + 5) = this + 48;
  std::ostringstream::basic_ostringstream[abi:ne200100](this + 6);
  *(this + 312) = 0;
  *(this + 40) = a2;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 90) = 1065353216;
  *(this + 47) = 0;
  *(this + 48) = 0;
  *(this + 46) = this + 376;
  v4 = *(this + 5);
  v5 = *(*v4 - 24);
  v6 = std::locale::classic();
  v7 = (v4 + v5);
  std::ios_base::getloc(v7);
  std::ios_base::imbue(v7, v6);
  std::locale::~locale(&v12);
  rdbuf = v7->__rdbuf_;
  if (rdbuf)
  {
    (*(rdbuf->__locale_ + 2))(rdbuf, v6);
    std::locale::locale(&v11, rdbuf + 1);
    std::locale::operator=(rdbuf + 1, v6);
    std::locale::~locale(&v11);
  }

  std::locale::~locale(&v10);
  return this;
}

void sub_218083710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  if (*(v10 + 39) < 0)
  {
    operator delete(*(v10 + 16));
  }

  v12 = *(v10 + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

double MIL::Text::BasicSerializer::Unindent(MIL::Text::BasicSerializer *this)
{
  v2 = *(this + 39);
  if (v2 < 0)
  {
    v2 = *(this + 3);
  }

  std::string::basic_string(&v4, (this + 16), 0, v2 - 4, &v5);
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  result = *&v4.__r_.__value_.__l.__data_;
  *(this + 16) = v4;
  return result;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::Program(MIL::Text::BasicSerializer *this, const MIL::IRProgram *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  (*(*a2 + 48))(&v57, a2);
  v4 = *&v57.__r_.__value_.__l.__data_;
  *&v57.__r_.__value_.__l.__data_ = 0uLL;
  v5 = *(this + 1);
  *this = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    if (v57.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v57.__r_.__value_.__l.__size_);
    }
  }

  v6 = (*(**(this + 40) + 120))(*(this + 40));
  v7 = (*(**(this + 40) + 176))(*(this + 40));
  v8 = v7;
  if (*(v6 + 23) >= 0)
  {
    v9 = *(v6 + 23);
  }

  else
  {
    v9 = *(v6 + 8);
  }

  v10 = *(v7 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v7 + 8);
  }

  if (v9)
  {
    if (!v10)
    {
      std::ofstream::basic_ofstream(&v57);
      if (!std::filebuf::close())
      {
        std::ios_base::clear((&v57 + *(v57.__r_.__value_.__r.__words[0] - 24)), *(&v57 + *(v57.__r_.__value_.__r.__words[0] - 24) + 32) | 4);
      }

      __p.__r_.__value_.__s.__data_[0] = 0;
      std::allocate_shared[abi:ne200100]<MIL::Blob::StorageWriter,std::allocator<MIL::Blob::StorageWriter>,std::string const&,BOOL,0>();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v57, "Serializing with both Weights file path, and weights directory set, is invalid");
    std::runtime_error::runtime_error(exception, &v57);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v10)
  {
    MIL::Util::FindBlobFilePaths(a2, &v56);
    if (v56.__r_.__value_.__r.__words[0] != v56.__r_.__value_.__l.__size_)
    {
      if (*(v8 + 23) >= 0)
      {
        v11 = *(v8 + 23);
      }

      else
      {
        v11 = v8[1];
      }

      std::string::basic_string[abi:ne200100](&__p, v11 + 8);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (v11)
      {
        if (*(v8 + 23) >= 0)
        {
          v13 = v8;
        }

        else
        {
          v13 = *v8;
        }

        memmove(p_p, v13, v11);
      }

      strcpy(p_p + v11, "/weights");
      std::to_string(&v57, 1);
      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v57;
      }

      else
      {
        v14 = v57.__r_.__value_.__r.__words[0];
      }

      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v57.__r_.__value_.__l.__size_;
      }

      std::string::append(&__p, v14, size);
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      std::string::append(&__p, ".bin");
      std::ofstream::basic_ofstream(&v57);
      if (!std::filebuf::close())
      {
        std::ios_base::clear((&v57 + *(v57.__r_.__value_.__r.__words[0] - 24)), *(&v57 + *(v57.__r_.__value_.__r.__words[0] - 24) + 32) | 4);
      }

      v55 = 0;
      std::allocate_shared[abi:ne200100]<MIL::Blob::StorageWriter,std::allocator<MIL::Blob::StorageWriter>,std::string &,BOOL,0>();
    }

    v57.__r_.__value_.__r.__words[0] = &v56;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v57);
  }

  v16 = *(this + 39);
  if (v16 >= 0)
  {
    v17 = this + 16;
  }

  else
  {
    v17 = *(this + 2);
  }

  if (v16 >= 0)
  {
    v18 = *(this + 39);
  }

  else
  {
    v18 = *(this + 3);
  }

  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), v17, v18);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "program(", 8);
  v21 = (*(**(this + 40) + 104))(*(this + 40));
  std::string::basic_string[abi:ne200100]<0>(&v57, off_278236178[v21 - 1]);
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v57;
  }

  else
  {
    v22 = v57.__r_.__value_.__r.__words[0];
  }

  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v57.__r_.__value_.__l.__size_;
  }

  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ")", 1);
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  v25 = *(MIL::IRObject::GetAttributes(a2) + 24);
  v26 = *(this + 5);
  if (v25)
  {
    v57.__r_.__value_.__s.__data_[0] = 10;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, &v57, 1);
    Attributes = MIL::IRObject::GetAttributes(a2);
    MIL::Text::BasicSerializer::AttributesMap(this, Attributes);
    v26 = *(this + 5);
    v57.__r_.__value_.__s.__data_[0] = 10;
  }

  else
  {
    v57.__r_.__value_.__s.__data_[0] = 32;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, &v57, 1);
  v28 = *(this + 5);
  v57.__r_.__value_.__s.__data_[0] = 123;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, &v57, 1);
  std::string::append((this + 16), "    ", 4uLL);
  if (*((*(*a2 + 72))(a2) + 24))
  {
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), "\n", 1);
    v30 = *(this + 39);
    v31 = v30 >= 0 ? (this + 16) : *(this + 2);
    v32 = v30 >= 0 ? *(this + 39) : *(this + 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v31, v32);
    v33 = (*(*a2 + 72))(a2);
    (*(*a2 + 48))(&v57, a2);
    MIL::Text::BasicSerializer::FunctionMap(this, v33, v57.__r_.__value_.__l.__data_);
    if (v57.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v57.__r_.__value_.__l.__size_);
    }
  }

  MIL::Text::BasicSerializer::Unindent(this);
  v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), "\n", 1);
  v35 = *(this + 39);
  if (v35 >= 0)
  {
    v36 = this + 16;
  }

  else
  {
    v36 = *(this + 2);
  }

  if (v35 >= 0)
  {
    v37 = *(this + 39);
  }

  else
  {
    v37 = *(this + 3);
  }

  v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v36, v37);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "}", 1);
  if (*(this + 48))
  {
    if ((*(this + 312) & 1) == 0)
    {
      v39 = *(this + 46);
      if (v39 != (this + 376))
      {
        do
        {
          v40 = *(v39 + 7);
          v41 = *(v39 + 8);
          if (v41)
          {
            atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          MIL::Blob::StorageWriter::GetFilePath(v40, &v57);
          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v43 = &v57;
          }

          else
          {
            v43 = v57.__r_.__value_.__r.__words[0];
          }

          v44 = remove(v43, v42);
          if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v57.__r_.__value_.__l.__data_);
          }

          if (v44)
          {
            v49 = __cxa_allocate_exception(0x10uLL);
            std::string::basic_string[abi:ne200100]<0>(&v56, "encountered error when trying to delete weights file: ");
            v50 = strerror(v44);
            v51 = std::string::append(&v56, v50);
            v52 = *&v51->__r_.__value_.__l.__data_;
            v57.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
            *&v57.__r_.__value_.__l.__data_ = v52;
            v51->__r_.__value_.__l.__size_ = 0;
            v51->__r_.__value_.__r.__words[2] = 0;
            v51->__r_.__value_.__r.__words[0] = 0;
            std::runtime_error::runtime_error(v49, &v57);
            __cxa_throw(v49, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          if (v41)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v41);
          }

          v45 = *(v39 + 1);
          if (v45)
          {
            do
            {
              v46 = v45;
              v45 = *v45;
            }

            while (v45);
          }

          else
          {
            do
            {
              v46 = *(v39 + 2);
              v47 = *v46 == v39;
              v39 = v46;
            }

            while (!v47);
          }

          v39 = v46;
        }

        while (v46 != (this + 376));
      }
    }
  }

  return this;
}

void sub_2180841DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
    if ((v33 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v33)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v32);
  goto LABEL_6;
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v3 = *(MEMORY[0x277D82810] + 16);
  v4 = *(MEMORY[0x277D82810] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D82860] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x21CEAFA50](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_21808451C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x21CEAFDA0](v1);
  _Unwind_Resume(a1);
}

void *std::ofstream::~ofstream(void *a1)
{
  v2 = MEMORY[0x277D82810];
  v3 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x21CEAFA60](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x21CEAFDA0](a1 + 52);
  return a1;
}

uint64_t MIL::Text::BasicSerializer::AttributesMap(uint64_t a1, void *a2)
{
  if (a2[3])
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), "[", 1);
    MIL::Text::BasicSerializer::IDValueBindingMap(a1, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), "]", 1);
  }

  return a1;
}

uint64_t MIL::Text::BasicSerializer::FunctionMap(uint64_t a1, void *a2, MIL::IROpset *a3)
{
  memset(&v19, 0, sizeof(v19));
  std::vector<std::string>::reserve(&v19, a2[3]);
  for (i = (a2 + 2); ; std::vector<std::string>::push_back[abi:ne200100](&v19, i + 1))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  v7 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v19.__end_ - v19.__begin_) >> 3));
  if (v19.__end_ == v19.__begin_)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(v19.__begin_, &v19.__end_->__r_.__value_.__l.__data_, &v20, v8, 1);
  begin = v19.__begin_;
  end = v19.__end_;
  if (v19.__begin_ != v19.__end_)
  {
    v11 = 1;
    do
    {
      v12 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &begin->__r_.__value_.__l.__data_);
      v13 = v12;
      if (!v12)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (v11)
      {
        MIL::Text::BasicSerializer::Function(a1, begin, v12[5], a3);
      }

      else
      {
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), "\n", 1);
        v15 = *(a1 + 39);
        if (v15 >= 0)
        {
          v16 = a1 + 16;
        }

        else
        {
          v16 = *(a1 + 16);
        }

        if (v15 >= 0)
        {
          v17 = *(a1 + 39);
        }

        else
        {
          v17 = *(a1 + 24);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
        MIL::Text::BasicSerializer::Function(a1, begin, v13[5], a3);
      }

      v11 = 0;
      ++begin;
    }

    while (begin != end);
  }

  v21 = &v19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v21);
  return a1;
}

void sub_2180847FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

uint64_t MIL::Text::BasicSerializer::Function(uint64_t a1, uint64_t a2, MIL::IRObject *a3, MIL::IROpset *a4)
{
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), "func ", 5);
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
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "<", 1);
  v14 = (*(*a3 + 32))(a3);
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ">(", 2);
  v19 = (*(*a3 + 128))(a3);
  v20 = v19 + 1;
  v21 = *v19;
  if (*v19 != v19 + 1)
  {
    v22 = "";
    do
    {
      v23 = strlen(v22);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), v22, v23);
      MIL::Text::BasicSerializer::IDTypeBinding(a1, (v21 + 4), v21[7]);
      v24 = v21[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v21[2];
          v26 = *v25 == v21;
          v21 = v25;
        }

        while (!v26);
      }

      v22 = ", ";
      v21 = v25;
    }

    while (v25 != v20);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), ")", 1);
  if (*(MIL::IRObject::GetAttributes(a3) + 24))
  {
    v27 = *(a1 + 40);
    LOBYTE(v39[0]) = 32;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v39, 1);
    Attributes = MIL::IRObject::GetAttributes(a3);
    MIL::Text::BasicSerializer::AttributesMap(a1, Attributes);
  }

  std::string::append((a1 + 16), "    ", 4uLL);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), " ", 1);
  v29 = (*(*a3 + 40))(a3);
  (*(*a3 + 32))(a3);
  v30 = v38;
  v39[0] = v37;
  v39[1] = &v38->__vftable;
  MIL::Text::BasicSerializer::Block(a1, v29, v39);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (*((*(*a3 + 112))(a3) + 16) >= 2uLL)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), "\n", 1);
    v31 = *(a1 + 39);
    if (v31 >= 0)
    {
      v32 = a1 + 16;
    }

    else
    {
      v32 = *(a1 + 16);
    }

    if (v31 >= 0)
    {
      v33 = *(a1 + 39);
    }

    else
    {
      v33 = *(a1 + 24);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), v32, v33);
    v34 = (*(*a3 + 112))(a3);
    v35 = (*(*a3 + 32))(a3);
    MIL::Text::BasicSerializer::OpsetBlockMap(a1, v34, v35, a4);
  }

  MIL::Text::BasicSerializer::Unindent(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), ";", 1);
  return a1;
}

void sub_218084BB0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::IDTypeBinding(MIL::Text::BasicSerializer *a1, uint64_t a2, const MIL::IRValueType *a3)
{
  MIL::Text::BasicSerializer::Type(a1, a3);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 5), " ", 1);
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
  return a1;
}

uint64_t MIL::Text::BasicSerializer::Block(uint64_t a1, MIL::IRObject *a2, void **a3)
{
  v6 = (*(*a2 + 40))(a2);
  MIL::Text::BasicSerializer::BlockInputDecls(a1, v6);
  v7 = (*(*a2 + 40))(a2);
  if (*v7 != v7[1])
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), " ", 1);
  }

  if (*(MIL::IRObject::GetAttributes(a2) + 24))
  {
    Attributes = MIL::IRObject::GetAttributes(a2);
    MIL::Text::BasicSerializer::AttributesMap(a1, Attributes);
    v9 = *(a1 + 40);
    v24 = 32;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &v24, 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), "{", 1);
  v10 = (*(*a2 + 56))(a2);
  if (**v10 != *(*v10 + 8))
  {
    std::string::append((a1 + 16), "    ", 4uLL);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), "\n", 1);
    v11 = (*(*a2 + 56))(a2);
    v12 = **v11;
    v13 = (*v11)[1];
    while (v12 != v13)
    {
      v15 = *v12;
      v12 += 2;
      v14 = v15;
      v16 = *(a1 + 39);
      if (v16 >= 0)
      {
        v17 = a1 + 16;
      }

      else
      {
        v17 = *(a1 + 16);
      }

      if (v16 >= 0)
      {
        v18 = *(a1 + 39);
      }

      else
      {
        v18 = *(a1 + 24);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), v17, v18);
      MIL::Text::BasicSerializer::Op(a1, v14, a3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), "\n", 1);
    }

    MIL::Text::BasicSerializer::Unindent(a1);
    v19 = *(a1 + 39);
    if (v19 >= 0)
    {
      v20 = a1 + 16;
    }

    else
    {
      v20 = *(a1 + 16);
    }

    if (v19 >= 0)
    {
      v21 = *(a1 + 39);
    }

    else
    {
      v21 = *(a1 + 24);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), v20, v21);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), "} -> (", 6);
  v22 = (*(*a2 + 88))(a2);
  MIL::Text::BasicSerializer::IDList(a1, v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), ")", 1);
  return a1;
}

MIL::IROpset *anonymous namespace::TryGetOpsetNames@<X0>(MIL::IROpset *result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 16))(result);
    if (result)
    {
      MIL::IROpset::GetReversedOperatorNamesMap(result, v3);
      operator new();
    }
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_218084F68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t MIL::Text::BasicSerializer::OpsetBlockMap(uint64_t a1, __int128 **a2, const void **a3, MIL::IROpset *a4)
{
  memset(&v36, 0, sizeof(v36));
  std::vector<std::string>::reserve(&v36, a2[2]);
  v8 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      std::vector<std::string>::push_back[abi:ne200100](&v36, v8 + 2);
      v9 = *(v8 + 1);
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
          v10 = *(v8 + 2);
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v8 = v10;
    }

    while (v10 != a2 + 1);
  }

  v12 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v36.__end_ - v36.__begin_) >> 3));
  if (v36.__end_ == v36.__begin_)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(v36.__begin_, &v36.__end_->__r_.__value_.__l.__data_, &v32, v13, 1);
  begin = v36.__begin_;
  end = v36.__end_;
  if (v36.__begin_ != v36.__end_)
  {
    v16 = 1;
    do
    {
      v17 = std::map<std::string,std::unique_ptr<MIL::IRBlock>>::at(a2, &begin->__r_.__value_.__l.__data_);
      v18 = SHIBYTE(begin->__r_.__value_.__r.__words[2]);
      if (v18 >= 0)
      {
        size = HIBYTE(begin->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = begin->__r_.__value_.__l.__size_;
      }

      v20 = *(a3 + 23);
      v21 = v20;
      if (v20 < 0)
      {
        v20 = a3[1];
      }

      if (size != v20 || (v18 >= 0 ? (v22 = begin) : (v22 = begin->__r_.__value_.__r.__words[0]), v21 >= 0 ? (v23 = a3) : (v23 = *a3), memcmp(v22, v23, size)))
      {
        if (v16)
        {
          v24 = *v17;
          v25 = v33;
          v34 = v32;
          v35 = v33;
          MIL::Text::BasicSerializer::OpsetBlock(a1, begin, v24, &v34);
        }

        else
        {
          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), "\n", 1);
          v27 = *(a1 + 39);
          if (v27 >= 0)
          {
            v28 = a1 + 16;
          }

          else
          {
            v28 = *(a1 + 16);
          }

          if (v27 >= 0)
          {
            v29 = *(a1 + 39);
          }

          else
          {
            v29 = *(a1 + 24);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
          v30 = *v17;
          v25 = v33;
          v34 = v32;
          v35 = v33;
          MIL::Text::BasicSerializer::OpsetBlock(a1, begin, v30, &v34);
        }

        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        v16 = 0;
      }

      ++begin;
    }

    while (begin != end);
  }

  v34 = &v36;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v34);
  return a1;
}

void sub_2180851B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, char a14)
{
  a12 = &a14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t MIL::Text::BasicSerializer::OpsetBlock(uint64_t a1, uint64_t a2, MIL::IRObject *a3, void **a4)
{
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), "<", 1);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "> ", 2);

  return MIL::Text::BasicSerializer::Block(a1, a3, a4);
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::BlockInputDecls(MIL::Text::BasicSerializer *a1, uint64_t a2)
{
  if (*a2 != *(a2 + 8))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 5), "(", 1);
    MIL::Text::BasicSerializer::IDTypeBindingList(a1, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 5), ")", 1);
  }

  return a1;
}

uint64_t MIL::Text::BasicSerializer::Op(uint64_t a1, MIL::IRObject *a2, void **a3)
{
  v6 = (*(*a2 + 56))(a2);
  if (*(v6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v38, *v6, *(v6 + 8));
  }

  else
  {
    v7 = *v6;
    v38.__r_.__value_.__r.__words[2] = *(v6 + 16);
    *&v38.__r_.__value_.__l.__data_ = v7;
  }

  if (*a3)
  {
    v8 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(*a3, &v38.__r_.__value_.__l.__data_);
    if (v8)
    {
      std::string::operator=(&v38, (v8 + 5));
    }

    else if ((*(*a2 + 232))(a2))
    {
      v28 = (*(*a2 + 232))(a2);
      v29 = (*(*v28 + 16))(v28);
      v31 = v30;
      if (v30 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v30 >= 0x17)
      {
        operator new();
      }

      v37 = v30;
      if (v30)
      {
        memmove(__dst, v29, v30);
      }

      *(__dst + v31) = 0;
      v32 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v34, &v38.__r_.__value_.__l.__data_);
      if (v32)
      {
        std::string::operator=(&v38, (v32 + 5));
      }

      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      if (v37 < 0)
      {
        operator delete(__dst[0]);
      }
    }
  }

  v9 = (*(*a2 + 176))(a2);
  if (*v9 != *(v9 + 8))
  {
    MIL::Text::BasicSerializer::IDTypeBindingList(a1, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), " = ", 3);
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v38;
  }

  else
  {
    v10 = v38.__r_.__value_.__r.__words[0];
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v38.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), v10, size);
  if ((*(*a2 + 232))(a2))
  {
    if ((*(**(a1 + 320) + 104))(*(a1 + 320)) <= 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Program version 1.2+ required to specify opsets on operations.  Use MIL::Text::Serialize overload with the options parameter instead");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v12 = (*(*a2 + 232))(a2);
    v13 = (*(*v12 + 16))(v12);
    v15 = v14;
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v14 >= 0x17)
    {
      operator new();
    }

    v37 = v14;
    if (v14)
    {
      memmove(__dst, v13, v14);
    }

    *(__dst + v15) = 0;
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), "<", 1);
    if ((v37 & 0x80u) == 0)
    {
      v17 = __dst;
    }

    else
    {
      v17 = __dst[0];
    }

    if ((v37 & 0x80u) == 0)
    {
      v18 = v37;
    }

    else
    {
      v18 = __dst[1];
    }

    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ">", 1);
    if (v37 < 0)
    {
      operator delete(__dst[0]);
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), "(", 1);
  v20 = (*(*a2 + 160))(a2);
  MIL::Text::BasicSerializer::IDArgumentBindingMap(a1, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), ")", 1);
  Attributes = MIL::IRObject::GetAttributes(a2);
  MIL::Text::BasicSerializer::OpAttrsMap(a1, Attributes);
  std::string::append((a1 + 16), "    ", 4uLL);
  v22 = (*(*a2 + 208))(a2);
  if (**v22 != *(*v22 + 8))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), "\n", 1);
    v23 = *(a1 + 39);
    if (v23 >= 0)
    {
      v24 = a1 + 16;
    }

    else
    {
      v24 = *(a1 + 16);
    }

    if (v23 >= 0)
    {
      v25 = *(a1 + 39);
    }

    else
    {
      v25 = *(a1 + 24);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), v24, v25);
    v26 = (*(*a2 + 208))(a2);
    MIL::Text::BasicSerializer::BlockList(a1, v26);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), ";", 1);
  MIL::Text::BasicSerializer::Unindent(a1);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_218085884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::BasicSerializer::IDList(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = "";
    do
    {
      v6 = strlen(v5);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), v5, v6);
      v8 = *(v3 + 23);
      if (v8 >= 0)
      {
        v9 = v3;
      }

      else
      {
        v9 = *v3;
      }

      if (v8 >= 0)
      {
        v10 = *(v3 + 23);
      }

      else
      {
        v10 = *(v3 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
      v3 += 24;
      v5 = ", ";
    }

    while (v3 != v4);
  }

  return a1;
}

uint64_t MIL::Text::BasicSerializer::BlockList(uint64_t a1, void **a2)
{
  v3 = **a2;
  if (v3 != (*a2)[1])
  {
    MIL::Text::BasicSerializer::Block(a1, *v3);
    if ((*a2)[1] - **a2 >= 0x11uLL)
    {
      v5 = 1;
      v6 = 16;
      do
      {
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), "\n", 1);
        v8 = *(a1 + 39);
        if (v8 >= 0)
        {
          v9 = a1 + 16;
        }

        else
        {
          v9 = *(a1 + 16);
        }

        if (v8 >= 0)
        {
          v10 = *(a1 + 39);
        }

        else
        {
          v10 = *(a1 + 24);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
        MIL::Text::BasicSerializer::Block(a1, *(**a2 + v6));
        ++v5;
        v6 += 16;
      }

      while (v5 < ((*a2)[1] - **a2) >> 4);
    }
  }

  return a1;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::IDTypeBindingList(MIL::Text::BasicSerializer *a1, MIL::IRNamedValueType ***a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = "";
    do
    {
      v6 = strlen(v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 5), v5, v6);
      Name = MIL::IRNamedValueType::GetName(*v3);
      v8 = *v3;
      v3 += 2;
      Type = MIL::IRNamedValueType::GetType(v8);
      MIL::Text::BasicSerializer::IDTypeBinding(a1, Name, Type);
      v5 = ", ";
    }

    while (v3 != v4);
  }

  return a1;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::IDArgumentBindingMap(MIL::Text::BasicSerializer *a1, void *a2)
{
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 != a2 + 1)
  {
    v5 = "";
    do
    {
      v6 = strlen(v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 5), v5, v6);
      MIL::Text::BasicSerializer::IDArgumentBinding(a1, (v4 + 4), (v4 + 7));
      v7 = v4[1];
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
          v8 = v4[2];
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      v5 = ", ";
      v4 = v8;
    }

    while (v8 != v3);
  }

  return a1;
}

uint64_t MIL::Text::BasicSerializer::OpAttrsMap(uint64_t a1, void *a2)
{
  v3 = a2[3];
  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_8;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "TraceabilityInfo");
    if (std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, __p))
    {
      v5 = (*(**(a1 + 320) + 160))(*(a1 + 320)) ^ 1;
    }

    else
    {
      v5 = 0;
    }

    if (v8 < 0)
    {
      operator delete(__p[0]);
      if (v5)
      {
        return a1;
      }

      goto LABEL_8;
    }

    if ((v5 & 1) == 0)
    {
LABEL_8:
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), "[", 1);
      MIL::Text::BasicSerializer::IDValueBindingMap(a1, a2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), "]", 1);
    }
  }

  return a1;
}

void sub_218085CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::BasicSerializer::OpList(uint64_t a1, MIL::IRObject ****a2, void **a3)
{
  v4 = **a2;
  if (v4 != (*a2)[1])
  {
    MIL::Text::BasicSerializer::Op(a1, *v4, a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), "\n", 1);
    if (((*a2)[1] - **a2) >= 0x11)
    {
      v7 = 1;
      v8 = 2;
      do
      {
        v9 = *(a1 + 39);
        if (v9 >= 0)
        {
          v10 = a1 + 16;
        }

        else
        {
          v10 = *(a1 + 16);
        }

        if (v9 >= 0)
        {
          v11 = *(a1 + 39);
        }

        else
        {
          v11 = *(a1 + 24);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), v10, v11);
        MIL::Text::BasicSerializer::Op(a1, (**a2)[v8], a3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), "\n", 1);
        ++v7;
        v8 += 2;
      }

      while (v7 < ((*a2)[1] - **a2) >> 4);
    }
  }

  return a1;
}

uint64_t MIL::Text::BasicSerializer::IDValueBindingMap(uint64_t a1, void *a2)
{
  memset(&v31, 0, sizeof(v31));
  std::vector<std::string>::reserve(&v31, a2[3]);
  for (i = (a2 + 2); ; std::vector<std::string>::push_back[abi:ne200100](&v31, i + 1))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  v5 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v31.__end_ - v31.__begin_) >> 3));
  if (v31.__end_ == v31.__begin_)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(v31.__begin_, &v31.__end_->__r_.__value_.__l.__data_, v27, v6, 1);
  std::string::basic_string[abi:ne200100]<0>(v29, "BlobFileMutabilityInfo");
  begin = v31.__begin_;
  end = v31.__end_;
  if (v31.__begin_ != v31.__end_)
  {
    while (1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "TraceabilityInfo");
      v9 = SHIBYTE(begin->__r_.__value_.__r.__words[2]);
      if (v9 >= 0)
      {
        size = HIBYTE(begin->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = begin->__r_.__value_.__l.__size_;
      }

      v11 = v26;
      v12 = v26;
      if ((v26 & 0x80u) != 0)
      {
        v11 = __p[1];
      }

      if (size != v11)
      {
        break;
      }

      v13 = v9 >= 0 ? begin : begin->__r_.__value_.__r.__words[0];
      v14 = (v26 & 0x80u) == 0 ? __p : __p[0];
      if (memcmp(v13, v14, size))
      {
        break;
      }

      v15 = (*(**(a1 + 320) + 160))(*(a1 + 320));
      v16 = v15;
      if (v26 < 0)
      {
        operator delete(__p[0]);
        if (v16)
        {
          goto LABEL_27;
        }
      }

      else if (v15)
      {
        goto LABEL_27;
      }

LABEL_41:
      if (++begin == end)
      {
        goto LABEL_42;
      }
    }

    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_27:
    v17 = SHIBYTE(begin->__r_.__value_.__r.__words[2]);
    if (v17 >= 0)
    {
      v18 = HIBYTE(begin->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = begin->__r_.__value_.__l.__size_;
    }

    v19 = v30;
    if ((v30 & 0x80u) != 0)
    {
      v19 = v29[1];
    }

    if (v18 != v19 || (v17 >= 0 ? (v20 = begin) : (v20 = begin->__r_.__value_.__r.__words[0]), (v30 & 0x80u) == 0 ? (v21 = v29) : (v21 = v29[0]), memcmp(v20, v21, v18)))
    {
      std::string::basic_string[abi:ne200100]<0>(&v28, "[A-Za-z_][A-Za-z0-9_@]*");
      std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v27, &v28, 0);
    }

    goto LABEL_41;
  }

LABEL_42:
  v22 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, v29);
  if (v22)
  {
    MIL::Attributes::BlobFileMutabilityInfo::Make(v22[5], v23);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  __p[0] = &v31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  return a1;
}

void sub_21808630C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v16 - 209) < 0)
  {
    operator delete(*(v16 - 232));
    if ((v15 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&__p);
      if (*(v16 - 145) < 0)
      {
        operator delete(*(v16 - 168));
      }

      if (*(v16 - 121) < 0)
      {
        operator delete(*(v16 - 144));
      }

      __p = (v16 - 120);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::Value(MIL::Text::BasicSerializer *this, const MIL::IRValue *a2)
{
  v4 = (*(*a2 + 40))(a2);
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = v4;
  if (!(*(*v4 + 120))(v4))
  {
    goto LABEL_16;
  }

  (*(*v5 + 128))(&__p, v5);
  if ((v13 & 0x8000000000000000) != 0)
  {
    v6 = v12;
    if (v12)
    {
      goto LABEL_7;
    }

    operator delete(__p);
LABEL_16:
    v9 = (*(*a2 + 32))(a2);
    MIL::Text::BasicSerializer::Type(this, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), "(", 1);
    MIL::Text::BasicSerializer::ValueLiteral(this, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), ")", 1);
    return this;
  }

  if (!v13)
  {
    goto LABEL_16;
  }

  v6 = v12;
LABEL_7:
  if (v13 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v13 >= 0)
  {
    v8 = v13;
  }

  else
  {
    v8 = v6;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), p_p, v8);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  return this;
}

void sub_2180865AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::Type(MIL::Text::BasicSerializer *this, const MIL::IRValueType *a2)
{
  v4 = (*(*a2 + 24))(a2);
  if (v4)
  {
    MIL::Text::BasicSerializer::Type(this, v4);
  }

  else
  {
    v5 = (*(*a2 + 40))(a2);
    if (v5)
    {
      MIL::Text::BasicSerializer::Type(this, v5);
    }

    else
    {
      v6 = (*(*a2 + 32))(a2);
      if (v6)
      {
        MIL::Text::BasicSerializer::Type(this, v6);
      }

      else
      {
        v7 = (*(*a2 + 48))(a2);
        if (v7)
        {
          MIL::Text::BasicSerializer::Type(this, v7);
        }

        else
        {
          v8 = MIL::IRValueType::TryCastAsMemoryLayoutType(a2);
          if (v8)
          {
            MIL::Text::BasicSerializer::Type(this, v8);
          }

          else
          {
            v9 = MIL::IRValueType::TryCastAsStateType(a2);
            if (!v9)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Provided type is not supported by the serializer.");
              __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            MIL::Text::BasicSerializer::Type(this, v9);
          }
        }
      }
    }
  }

  return this;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::ValueLiteral(MIL::Text::BasicSerializer *this, const MIL::IRValue *a2)
{
  v4 = (*(*a2 + 40))(a2);
  if (v4)
  {

    return MIL::Text::BasicSerializer::Val(this, v4);
  }

  else
  {
    v6 = (*(*a2 + 56))(a2);
    if (v6)
    {
      MIL::Text::BasicSerializer::Val(this, v6);
    }

    else
    {
      v7 = (*(*a2 + 48))(a2);
      if (v7)
      {
        MIL::Text::BasicSerializer::Val(this, v7);
      }

      else
      {
        v8 = (*(*a2 + 64))(a2);
        if (!v8)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Value type is not supported by the serializer.");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        MIL::Text::BasicSerializer::Val(this, v8);
      }
    }

    return this;
  }
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::ValueAssign(MIL::Text::BasicSerializer *this, const MIL::IRValue *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), "= ", 2);

  return MIL::Text::BasicSerializer::Value(this, a2);
}

uint64_t MIL::Text::BasicSerializer::Val(MIL::Text::BasicSerializer *this, const MIL::IRTensorValue *a2)
{
  v4 = (*(*a2 + 32))(a2);
  switch((*(*v4 + 88))(v4))
  {
    case 3u:

      result = MIL::Text::BasicSerializer::Val<std::string>(this, v21);
      break;
    case 4u:

      result = MIL::Text::BasicSerializer::Val<MIL::Fp16>(this, v19);
      break;
    case 5u:

      result = MIL::Text::BasicSerializer::Val<float>(this, v20);
      break;
    case 6u:

      result = MIL::Text::BasicSerializer::Val<double>(this, v14);
      break;
    case 7u:

      result = MIL::Text::BasicSerializer::Val<MIL::Bf16>(this, v22);
      break;
    case 8u:
      __break(1u);
      JUMPOUT(0x2180872A4);
    case 9u:

      result = MIL::Text::BasicSerializer::Val<signed char>(this, v16);
      break;
    case 0xAu:

      result = MIL::Text::BasicSerializer::Val<short>(this, v12);
      break;
    case 0xBu:

      result = MIL::Text::BasicSerializer::Val<int>(this, v18);
      break;
    case 0xCu:

      result = MIL::Text::BasicSerializer::Val<long long>(this, v10);
      break;
    case 0xDu:

      result = MIL::Text::BasicSerializer::Val<MIL::Int4>(this, v17);
      break;
    case 0xEu:

      result = MIL::Text::BasicSerializer::Val<unsigned char>(this, v7);
      break;
    case 0xFu:

      result = MIL::Text::BasicSerializer::Val<unsigned short>(this, v9);
      break;
    case 0x10u:

      result = MIL::Text::BasicSerializer::Val<unsigned int>(this, v15);
      break;
    case 0x11u:

      result = MIL::Text::BasicSerializer::Val<unsigned long long>(this, v24);
      break;
    case 0x12u:
    case 0x13u:

      result = MIL::Text::BasicSerializer::Val<MIL::UInt2>(this, v13);
      break;
    case 0x14u:

      result = MIL::Text::BasicSerializer::Val<MIL::UInt4>(this, v25);
      break;
    case 0x15u:

      result = MIL::Text::BasicSerializer::Val<MIL::UInt1>(this, v8);
      break;
    case 0x16u:

      result = MIL::Text::BasicSerializer::Val<MIL::UInt3>(this, v26);
      break;
    case 0x17u:

      result = MIL::Text::BasicSerializer::Val<MIL::UInt6>(this, v23);
      break;
    case 0x18u:

      result = MIL::Text::BasicSerializer::Val<MIL::Fp8E4M3FN>(this, v27);
      break;
    case 0x19u:

      result = MIL::Text::BasicSerializer::Val<MIL::Fp8E5M2>(this, v11);
      break;
    default:

      result = MIL::Text::BasicSerializer::Val<BOOL>(this, v5);
      break;
  }

  return result;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::Val(MIL::Text::BasicSerializer *this, const MIL::IRTupleValue *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), "(", 1);
  v6[0] = MIL::IRTupleValue::GetValues(a2);
  v6[1] = v4;
  MIL::Text::BasicSerializer::ValueLiteralList(this, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), ")", 1);
  return this;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::Val(MIL::Text::BasicSerializer *this, const MIL::IRListValue *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), "[", 1);
  v6[0] = MIL::IRListValue::GetValues(a2);
  v6[1] = v4;
  MIL::Text::BasicSerializer::ValueLiteralList(this, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), "]", 1);
  return this;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::Val(MIL::Text::BasicSerializer *this, const MIL::IRDictionaryValue *a2)
{
  v51[2] = *MEMORY[0x277D85DE8];
  memset(&v49, 0, sizeof(v49));
  v4 = MIL::IRDictionaryValue::Size(a2);
  std::vector<std::string>::reserve(&v49, v4);
  v5 = MIL::IRDictionaryValue::begin(a2);
  v6 = MIL::IRDictionaryValue::end(a2);
  if (v5 != v6)
  {
    v7 = "{";
    v8 = ", ";
    do
    {
      (*(**(v5 + 16) + 72))(&v45);
      v9 = std::string::insert(&v45, 0, v7);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v46.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v46.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      v11 = std::string::append(&v46, v8);
      v12 = *&v11->__r_.__value_.__l.__data_;
      v47.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v47.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      (*(**(v5 + 32) + 72))(__p);
      if ((v44 & 0x80u) == 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if ((v44 & 0x80u) == 0)
      {
        v14 = v44;
      }

      else
      {
        v14 = __p[1];
      }

      v15 = std::string::append(&v47, v13, v14);
      v16 = *&v15->__r_.__value_.__l.__data_;
      v48.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&v48.__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      v17 = std::string::append(&v48, "}");
      v18 = v17->__r_.__value_.__r.__words[0];
      v51[0] = v17->__r_.__value_.__l.__size_;
      *(v51 + 7) = *(&v17->__r_.__value_.__r.__words[1] + 7);
      v19 = HIBYTE(v17->__r_.__value_.__r.__words[2]);
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      end = v49.__end_;
      if (v49.__end_ >= v49.__end_cap_.__value_)
      {
        v23 = v8;
        v24 = v7;
        v25 = 0xAAAAAAAAAAAAAAABLL * ((v49.__end_ - v49.__begin_) >> 3);
        v26 = v25 + 1;
        if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v49.__end_cap_.__value_ - v49.__begin_) >> 3) > v26)
        {
          v26 = 0x5555555555555556 * ((v49.__end_cap_.__value_ - v49.__begin_) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v49.__end_cap_.__value_ - v49.__begin_) >> 3) >= 0x555555555555555)
        {
          v27 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v27 = v26;
        }

        v50.__end_cap_.__value_ = &v49;
        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v49, v27);
        }

        v28 = 8 * ((v49.__end_ - v49.__begin_) >> 3);
        v29 = v51[0];
        *v28 = v18;
        *(v28 + 8) = v29;
        *(v28 + 15) = *(v51 + 7);
        *(v28 + 23) = v19;
        v51[0] = 0;
        *(v51 + 7) = 0;
        v22 = (24 * v25 + 24);
        v30 = (24 * v25 - (v49.__end_ - v49.__begin_));
        memcpy(v30, v49.__begin_, v49.__end_ - v49.__begin_);
        begin = v49.__begin_;
        value = v49.__end_cap_.__value_;
        v49.__begin_ = v30;
        v49.__end_ = v22;
        v49.__end_cap_.__value_ = 0;
        v50.__first_ = begin;
        v50.__end_ = begin;
        v50.__end_cap_.__value_ = value;
        v50.__begin_ = begin;
        std::__split_buffer<std::string>::~__split_buffer(&v50);
        v7 = v24;
        v8 = v23;
      }

      else
      {
        v21 = v51[0];
        v49.__end_->__r_.__value_.__l.__data_ = v18;
        end->__r_.__value_.__l.__size_ = v21;
        *(&end->__r_.__value_.__r.__words[1] + 7) = *(v51 + 7);
        *(&end->__r_.__value_.__s + 23) = v19;
        v51[0] = 0;
        *(v51 + 7) = 0;
        v22 = end + 1;
      }

      v49.__end_ = v22;
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if (v44 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }

      v5 = *v5;
    }

    while (v5 != v6);
  }

  v33 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v49.__end_ - v49.__begin_) >> 3));
  if (v49.__end_ == v49.__begin_)
  {
    v34 = 0;
  }

  else
  {
    v34 = v33;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(v49.__begin_, &v49.__end_->__r_.__value_.__l.__data_, &v50, v34, 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), "{", 1);
  v35 = v49.__begin_;
  v36 = v49.__end_;
  if (v49.__begin_ != v49.__end_)
  {
    v37 = "";
    do
    {
      v38 = strlen(v37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), v37, v38);
      v39 = SHIBYTE(v35->__r_.__value_.__r.__words[2]);
      if (v39 >= 0)
      {
        v40 = v35;
      }

      else
      {
        v40 = v35->__r_.__value_.__r.__words[0];
      }

      if (v39 >= 0)
      {
        size = HIBYTE(v35->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v35->__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), v40, size);
      ++v35;
      v37 = ", ";
    }

    while (v35 != v36);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), "}", 1);
  v50.__first_ = &v49;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v50);
  return this;
}

void sub_218087814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  __p = &a41;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::ValueLiteralList(MIL::Text::BasicSerializer *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *a2;
    v5 = 16 * v3;
    v6 = "";
    do
    {
      v7 = strlen(v6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 5), v6, v7);
      v8 = *v4;
      v4 += 2;
      MIL::Text::BasicSerializer::ValueLiteral(a1, v8);
      v6 = ", ";
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::Type(MIL::Text::BasicSerializer *this, const MIL::IRTensorValueType *a2)
{
  v4 = (*(*a2 + 80))(a2);
  if ((*(**(this + 40) + 104))(*(this + 40)) < 2 || !MIL::IRTensorValueType::IsScalar(a2) || v4[3])
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), "tensor<", 7);
    v10 = (*(*a2 + 88))(a2);
    MIL::IRDataTypeToString(v10, &__p);
    if ((v18 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v18 & 0x80u) == 0)
    {
      v12 = v18;
    }

    else
    {
      v12 = v17;
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, p_p, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", ", 2);
    if (v18 < 0)
    {
      operator delete(__p);
    }

    v14 = (*(*a2 + 96))(a2);
    MIL::Text::BasicSerializer::TensorShape(this, v14);
    if (v4[3])
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), ", ", 2);
      MIL::Text::BasicSerializer::AttributesMap(this, v4);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), ">", 1);
  }

  else
  {
    v5 = *(this + 5);
    v6 = (*(*a2 + 88))(a2);
    MIL::IRDataTypeToString(v6, &__p);
    if ((v18 & 0x80u) == 0)
    {
      v7 = &__p;
    }

    else
    {
      v7 = __p;
    }

    if ((v18 & 0x80u) == 0)
    {
      v8 = v18;
    }

    else
    {
      v8 = v17;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
    if (v18 < 0)
    {
      operator delete(__p);
    }
  }

  return this;
}

void sub_218087B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::Type(MIL::Text::BasicSerializer *this, const MIL::IRTupleValueType *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), "tuple<", 6);
  v4 = (*(*a2 + 64))(a2);
  MIL::Text::BasicSerializer::TypeList(this, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), ">", 1);
  return this;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::Type(MIL::Text::BasicSerializer *this, const MIL::IRListValueType *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), "list<", 5);
  v4 = (*(*a2 + 64))(a2);
  MIL::Text::BasicSerializer::Type(this, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), ", ", 2);
  v5 = (*(*a2 + 72))(a2);
  MIL::Text::BasicSerializer::Dimension(this, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), ">", 1);
  return this;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::Type(MIL::Text::BasicSerializer *this, const MIL::IRDictionaryValueType *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), "dict<", 5);
  v4 = (*(*a2 + 64))(a2);
  MIL::Text::BasicSerializer::Type(this, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), ", ", 2);
  v5 = (*(*a2 + 72))(a2);
  MIL::Text::BasicSerializer::Type(this, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), ">", 1);
  return this;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::Type(MIL::Text::BasicSerializer *this, const MIL::IRMemoryLayoutValueType *a2)
{
  if ((*(**(this + 40) + 104))(*(this + 40)) <= 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Program version 1.2+ required for memory layouts.  Use MIL::Text::Serialize overload with the options parameter instead");
    goto LABEL_10;
  }

  v4 = MIL::IRMemoryLayoutValueType::TryAsTensorBufferType(a2);
  if (!v4)
  {
    v5 = MIL::IRMemoryLayoutValueType::TryAsPixelBufferType(a2);
    if (v5)
    {
      MIL::Text::BasicSerializer::Type(this, v5);
      return this;
    }

    v6 = MIL::IRMemoryLayoutValueType::TryAsCircularBufferType(a2);
    if (v6)
    {
      MIL::Text::BasicSerializer::Type(this, v6);
      return this;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Provided memory layout type is not supported by the serializer.");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  MIL::Text::BasicSerializer::Type(this, v4);
  return this;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::Type(MIL::Text::BasicSerializer *this, const MIL::IRStateValueType *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), "state<", 6);
  WrappedType = MIL::IRStateValueType::GetWrappedType(a2);
  MIL::Text::BasicSerializer::Type(this, WrappedType);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), ">", 1);
  return this;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::TensorShape(MIL::Text::BasicSerializer *a1, const MIL::IRDimension ***a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 5), "[", 1);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = "";
    do
    {
      v7 = strlen(v6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 5), v6, v7);
      v8 = *v4++;
      MIL::Text::BasicSerializer::Dimension(a1, v8);
      v6 = ", ";
    }

    while (v4 != v5);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 5), "]", 1);
  return a1;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::Dimension(MIL::Text::BasicSerializer *this, const MIL::IRDimension *a2)
{
  v4 = (*(*a2 + 16))(a2);
  if (v4)
  {
    v5 = *(this + 5);
    v6 = (*(*v4 + 48))(v4);
    MEMORY[0x21CEAFB80](v5, v6);
  }

  else
  {
    v7 = (*(*a2 + 24))(a2);
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Dimension type is not supported by the serializer.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    MIL::Text::BasicSerializer::Dimension(this, v7);
  }

  return this;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::TypeList(MIL::Text::BasicSerializer *a1, const MIL::IRValueType ***a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = "";
    do
    {
      v6 = *v3++;
      v7 = strlen(v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 5), v5, v7);
      MIL::Text::BasicSerializer::Type(a1, v6);
      v5 = ", ";
    }

    while (v3 != v4);
  }

  return a1;
}

uint64_t MIL::Text::BasicSerializer::PropertyItem<unsigned char>(uint64_t a1, MIL::IRConstantProperty *this)
{
  v3 = *(a1 + 40);
  UInt8ScalarValue = MIL::IRConstantProperty::GetUInt8ScalarValue(this);
  MEMORY[0x21CEAFB70](v3, UInt8ScalarValue);
  return a1;
}

uint64_t MIL::Text::BasicSerializer::PropertyItem<unsigned long long>(uint64_t a1, MIL::IRConstantProperty *this)
{
  v3 = *(a1 + 40);
  UInt64ScalarValue = MIL::IRConstantProperty::GetUInt64ScalarValue(this);
  MEMORY[0x21CEAFB80](v3, UInt64ScalarValue);
  return a1;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::PropertyItem(MIL::Text::BasicSerializer *this, const MIL::IRUnknownProperty *a2)
{
  if (MIL::IRUnknownProperty::IsVariadic(a2))
  {
    v3 = "...";
    v4 = 3;
  }

  else
  {
    v3 = "?";
    v4 = 1;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), v3, v4);
  return this;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::Type(MIL::Text::BasicSerializer *this, const MIL::IRTensorBufferValueType *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), "tensor_buffer<", 14);
  v4 = *(this + 5);
  DataType = MIL::IRTensorBufferValueType::GetDataType(a2);
  MIL::IRDataTypeToString(DataType, __p);
  if ((v21 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v7 = v21;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", shape=", 8);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  Shape = MIL::IRTensorBufferValueType::GetShape(a2);
  MIL::Text::BasicSerializer::TensorShape(this, Shape);
  Strides = MIL::IRTensorBufferValueType::TryGetStrides(a2);
  v11 = *(this + 5);
  if (Strides)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", strides=", 10);
    v12 = MIL::IRTensorBufferValueType::GetStrides(a2);
    MIL::Text::BasicSerializer::PropertyList<long long>(this, v12);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", row_alignment_in_bytes=", 25);
    RowAlignmentInBytes = MIL::IRTensorBufferValueType::GetRowAlignmentInBytes(a2);
    v14 = MIL::IRProperty::AsConstant(RowAlignmentInBytes);
    v15 = *(this + 5);
    UInt64ScalarValue = MIL::IRConstantProperty::GetUInt64ScalarValue(v14);
    MEMORY[0x21CEAFB80](v15, UInt64ScalarValue);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), ", interleave_factors=", 21);
  InterleaveFactors = MIL::IRTensorBufferValueType::GetInterleaveFactors(a2);
  MIL::Text::BasicSerializer::PropertyList<unsigned char>(this, InterleaveFactors);
  if (*(MIL::IRTensorBufferValueType::GetAttributes(a2) + 24))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), ", ", 2);
    Attributes = MIL::IRTensorBufferValueType::GetAttributes(a2);
    MIL::Text::BasicSerializer::AttributesMap(this, Attributes);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), ">", 1);
  return this;
}

void sub_2180883E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::Type(MIL::Text::BasicSerializer *this, const MIL::IRPixelBufferValueType *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), "pixel_buffer<", 13);
  v4 = *(this + 5);
  PixelFormatType = MIL::IRPixelBufferValueType::GetPixelFormatType(a2);
  MIL::IRPixelFormatTypeToString(PixelFormatType, __p);
  if ((v16 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v7 = v16;
  }

  else
  {
    v7 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), ", shape=", 8);
  Shape = MIL::IRPixelBufferValueType::GetShape(a2);
  MIL::Text::BasicSerializer::TensorShape(this, Shape);
  BytesPerRow = MIL::IRPixelBufferValueType::TryGetBytesPerRow(a2);
  if (BytesPerRow)
  {
    v10 = BytesPerRow;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), ", bytes_per_row=", 16);
    MIL::Text::BasicSerializer::PropertyList<long long>(this, v10);
  }

  NumSlices = MIL::IRPixelBufferValueType::TryGetNumSlices(a2);
  if (NumSlices)
  {
    v12 = NumSlices;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), ", num_slices=", 13);
    MIL::Text::BasicSerializer::PropertyList<long long>(this, v12);
  }

  if (*(MIL::IRPixelBufferValueType::GetAttributes(a2) + 24))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), ", ", 2);
    Attributes = MIL::IRPixelBufferValueType::GetAttributes(a2);
    MIL::Text::BasicSerializer::AttributesMap(this, Attributes);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), ">", 1);
  return this;
}

void sub_218088564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::Type(MIL::Text::BasicSerializer *this, const MIL::IRCircularBufferValueType *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), "circular_buffer<", 16);
  v4 = *(this + 5);
  DataType = MIL::IRCircularBufferValueType::GetDataType(a2);
  MIL::IRDataTypeToString(DataType, __p);
  if ((v19 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v7 = v19;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", shape=", 8);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  Shape = MIL::IRCircularBufferValueType::GetShape(a2);
  MIL::Text::BasicSerializer::TensorShape(this, Shape);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), ", strides=", 10);
  Strides = MIL::IRCircularBufferValueType::GetStrides(a2);
  MIL::Text::BasicSerializer::PropertyList<long long>(this, Strides);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), ", interleave_factors=", 21);
  InterleaveFactors = MIL::IRCircularBufferValueType::GetInterleaveFactors(a2);
  MIL::Text::BasicSerializer::PropertyList<unsigned char>(this, InterleaveFactors);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), ", wrap_dim=", 11);
  WrapDim = MIL::IRCircularBufferValueType::GetWrapDim(a2);
  v13 = MIL::IRProperty::TryAsConstant(WrapDim);
  v14 = *(this + 5);
  Int64ScalarValue = MIL::IRConstantProperty::GetInt64ScalarValue(v13);
  MEMORY[0x21CEAFB70](v14, Int64ScalarValue);
  if (*(MIL::IRCircularBufferValueType::GetAttributes(a2) + 24))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), ", ", 2);
    Attributes = MIL::IRCircularBufferValueType::GetAttributes(a2);
    MIL::Text::BasicSerializer::AttributesMap(this, Attributes);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), ">", 1);
  return this;
}

void sub_218088708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::PropertyList<long long>(MIL::Text::BasicSerializer *a1, MIL::IRProperty ***a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 5), "[", 1);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = "";
    do
    {
      v7 = strlen(v6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 5), v6, v7);
      v8 = *v4++;
      MIL::Text::BasicSerializer::PropertyItem<long long>(a1, v8);
      v6 = ", ";
    }

    while (v4 != v5);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 5), "]", 1);
  return a1;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::PropertyList<unsigned char>(MIL::Text::BasicSerializer *a1, MIL::IRProperty ***a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 5), "[", 1);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = "";
    do
    {
      v7 = strlen(v6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 5), v6, v7);
      v8 = *v4++;
      MIL::Text::BasicSerializer::PropertyItem<unsigned char>(a1, v8);
      v6 = ", ";
    }

    while (v4 != v5);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 5), "]", 1);
  return a1;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::Dimension(MIL::Text::BasicSerializer *this, const MIL::IRConstantDimension *a2)
{
  v3 = *(this + 5);
  v4 = (*(*a2 + 48))(a2);
  MEMORY[0x21CEAFB80](v3, v4);
  return this;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::Dimension(MIL::Text::BasicSerializer *this, const MIL::IRUnknownDimension *a2)
{
  if ((*(*a2 + 32))(a2))
  {
    v3 = "...";
    v4 = 3;
  }

  else
  {
    v3 = "?";
    v4 = 1;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 5), v3, v4);
  return this;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::Argument(MIL::Text::BasicSerializer *this, const MIL::IRArgument *a2)
{
  if ((*(*a2 + 16))(a2))
  {
    v4 = *(this + 5);
    Name = MIL::IRArgument::GetName(a2);
    v6 = *(Name + 23);
    if (v6 >= 0)
    {
      v7 = Name;
    }

    else
    {
      v7 = *Name;
    }

    if (v6 >= 0)
    {
      v8 = *(Name + 23);
    }

    else
    {
      v8 = *(Name + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  }

  else
  {
    Value = MIL::IRArgument::GetValue(a2);
    MIL::Text::BasicSerializer::Value(this, Value);
  }

  return this;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::ArgumentList(MIL::Text::BasicSerializer *a1, const MIL::IRArgument ***a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = "";
    do
    {
      v6 = strlen(v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 5), v5, v6);
      v7 = *v3;
      v3 += 2;
      MIL::Text::BasicSerializer::Argument(a1, v7);
      v5 = ", ";
    }

    while (v3 != v4);
  }

  return a1;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::IDArgumentBinding(MIL::Text::BasicSerializer *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 5);
  v6 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, a2, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " = ", 3);
  v9 = *(a3 + 8) - *a3;
  if (v9 < 0x11)
  {
    if (v9 != 16)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      std::runtime_error::runtime_error(exception, &v12);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    MIL::Text::BasicSerializer::Argument(a1, **a3);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 5), "(", 1);
    MIL::Text::BasicSerializer::ArgumentList(a1, a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 5), ")", 1);
  }

  return a1;
}

void sub_218088B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t MIL::Text::BasicSerializer::IDValueBinding(MIL::Text::BasicSerializer *a1, uint64_t a2, const MIL::IRValue *a3)
{
  v5 = *(a1 + 5);
  v6 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, a2, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " ", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 5), "= ", 2);

  return MIL::Text::BasicSerializer::Value(a1, a3);
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::IDTypeBindingMap(MIL::Text::BasicSerializer *a1, void *a2)
{
  memset(&v14, 0, sizeof(v14));
  std::vector<std::string>::reserve(&v14, a2[3]);
  for (i = (a2 + 2); ; std::vector<std::string>::push_back[abi:ne200100](&v14, i + 1))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  v5 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v14.__end_ - v14.__begin_) >> 3));
  if (v14.__end_ == v14.__begin_)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(v14.__begin_, &v14.__end_->__r_.__value_.__l.__data_, &v15, v6, 1);
  begin = v14.__begin_;
  end = v14.__end_;
  if (v14.__begin_ != v14.__end_)
  {
    v9 = "";
    do
    {
      v10 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &begin->__r_.__value_.__l.__data_);
      if (!v10)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v11 = v10[5];
      v12 = strlen(v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 5), v9, v12);
      MIL::Text::BasicSerializer::IDTypeBinding(a1, begin++, v11);
      v9 = ", ";
    }

    while (begin != end);
  }

  v16 = &v14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v16);
  return a1;
}

void sub_218088D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

uint64_t MIL::Text::BasicSerializer::Val<BOOL>(uint64_t a1, MIL::IRTensorValue *a2)
{
  v4 = *(a1 + 384);
  if (v4)
  {
    Type = MIL::IRTypedTensorValue<BOOL>::GetType(a2);
    v6 = MIL::IRValueType::AsTensorType(Type);
    v7 = (*(*v6 + 16))(v6);
    v8 = v7 >= (*(**(a1 + 320) + 136))(*(a1 + 320));
  }

  else
  {
    v8 = MIL::IRTypedTensorValue<BOOL>::UsesFileStorage(a2);
  }

  v9 = MIL::IRTypedTensorValue<BOOL>::GetType(a2);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 88))(v10);
  v12 = v11;
  if (!v4 || !v8 || (v11 <= 0x19 ? (v13 = ((1 << v11) & 0x3F9EE30) == 0) : (v13 = 1), !v13))
  {
    if (v8)
    {
      memset(v71, 0, sizeof(v71));
      v72 = 1065353216;
      if (!v4)
      {
        FileProperties = MIL::IRTypedTensorValue<BOOL>::GetFileProperties(a2);
        if (v71 != FileProperties)
        {
          v72 = *(FileProperties + 32);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>(v71, *(FileProperties + 16), 0);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "type");
        v56 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
        if (v56)
        {
          MIL::IRValue::GetScalar<std::string>(v56[5], &__p);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "type");
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "path");
          v57 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (v57)
          {
            v59 = v57[5];
            v58 = v57[6];
            if (v58)
            {
              atomic_fetch_add_explicit(v58 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            MIL::IRValue::GetScalar<std::string>(v59, &__str);
            v60 = (*(**(a1 + 320) + 32))(*(a1 + 320));
            MIL::Util::ReplaceModelPaths(&__str, v60);
            v61 = (*(*v59 + 32))(v59);
            v62 = MIL::IRValueType::AsTensorType(v61);
            v67 = __str;
            memset(&__str, 0, sizeof(__str));
            MIL::IRTensorValueType::MakeStringValue(v62, &v67);
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (MIL::IRTypedTensorValue<BOOL>::UsesFileStorage(a2))
      {
        v14 = MIL::IRTypedTensorValue<BOOL>::GetFileProperties(a2);
        std::string::basic_string[abi:ne200100]<0>(&__p, "path");
        v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v14, &__p.__r_.__value_.__l.__data_);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v16 = v15[5];
        v17 = v15[6];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MIL::IRValue::GetScalar<std::string>(v16, &__p);
        __str.__r_.__value_.__r.__words[0] = &__p;
        v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 368, &__p.__r_.__value_.__l.__data_);
        v20 = *(v18 + 56);
        v19 = *(v18 + 64);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      else
      {
        v22 = *(a1 + 368);
        v20 = *(v22 + 56);
        v23 = *(v22 + 64);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }
      }

      memset(&__p, 0, sizeof(__p));
      v73 = 0;
      if (!MIL::IRTypedTensorValue<BOOL>::UsesFileStorage(a2))
      {
        goto LABEL_59;
      }

      v24 = MIL::IRTypedTensorValue<BOOL>::GetFileProperties(a2);
      std::string::basic_string[abi:ne200100]<0>(&__str, "path");
      v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      if (!v25)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v27 = v25[5];
      v26 = v25[6];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      MIL::IRValue::GetScalar<std::string>(v27, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __str;
      std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
      v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      v29 = v28;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
        if (v29)
        {
LABEL_39:
          std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
          v30 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
          if (!v30)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v31 = v30[5];
          v32 = v30[6];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v73 = MIL::IRValue::GetScalar<unsigned long long>(v31);
          if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_))
          {
            v33 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            v34 = v33;
            if (!v33)
            {
              goto LABEL_94;
            }

            if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v33 + 5, &v73))
            {
              if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v34 + 5, &v73))
              {
                v35 = 1;
                goto LABEL_50;
              }

LABEL_94:
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }
          }

          v35 = 0;
LABEL_50:
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v35)
          {
LABEL_78:
            v55 = MIL::IRTypedTensorValue<BOOL>::GetType(a2);
            (*(*v55 + 24))(v55);
            MIL::Blob::StorageWriter::GetFilePath(v20, &__str);
            MIL::IRTensorValueType::MakeValueFromBlobFile();
          }

LABEL_59:
          switch(v12)
          {
            case 4:
              v36 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp16>(v36);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp16>(v20);
              break;
            case 5:
              v51 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<float>(v51);
              v37 = MIL::Blob::StorageWriter::WriteData<float>(v20);
              break;
            case 9:
              v48 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<signed char>(v48);
              v37 = MIL::Blob::StorageWriter::WriteData<signed char>(v20);
              break;
            case 10:
              v50 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<short>(v50);
              v37 = MIL::Blob::StorageWriter::WriteData<short>(v20);
              break;
            case 11:
              v45 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<int>(v45);
              v37 = MIL::Blob::StorageWriter::WriteData<int>(v20);
              break;
            case 13:
              v47 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Int4>(v47);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Int4>(v20);
              break;
            case 14:
              v52 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned char>(v52);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned char>(v20);
              break;
            case 15:
              v49 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned short>(v49);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned short>(v20);
              break;
            case 16:
              v42 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned int>(v42);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned int>(v20);
              break;
            case 19:
              v39 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt2>(v39);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt2>(v20);
              break;
            case 20:
              v41 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt4>(v41);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt4>(v20);
              break;
            case 21:
              v38 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt1>(v38);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt1>(v20);
              break;
            case 22:
              v40 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt3>(v40);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt3>(v20);
              break;
            case 23:
              v43 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt6>(v43);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt6>(v20);
              break;
            case 24:
              v44 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v44);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E4M3FN>(v20);
              break;
            case 25:
              v46 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v46);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E5M2>(v20);
              break;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v12, &v68);
              v65 = std::string::insert(&v68, 0, "[MIL Serialization] Unsupported Data type ");
              v66 = *&v65->__r_.__value_.__l.__data_;
              __str.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
              *&__str.__r_.__value_.__l.__data_ = v66;
              v65->__r_.__value_.__l.__size_ = 0;
              v65->__r_.__value_.__r.__words[2] = 0;
              v65->__r_.__value_.__r.__words[0] = 0;
              std::logic_error::logic_error(exception, &__str);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          v53 = v37;
          if (MIL::IRTypedTensorValue<BOOL>::UsesFileStorage(a2))
          {
            __str.__r_.__value_.__r.__words[0] = &__p;
            v54 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            __str.__r_.__value_.__r.__words[0] = &v73;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v54 + 5, &v73)[3] = v53;
          }

          goto LABEL_78;
        }
      }

      else if (v28)
      {
        goto LABEL_39;
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      goto LABEL_59;
    }
  }

  ValHelper<BOOL>(a2, *(a1 + 40));
  return a1;
}

void sub_21808999C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v39 & 1) == 0)
    {
LABEL_8:
      if (a35 < 0)
      {
        operator delete(a30);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a37);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v38);
  goto LABEL_8;
}

void ValHelper<BOOL>(uint64_t a1, void *a2)
{
  Type = MIL::IRTypedTensorValue<BOOL>::GetType(a1);
  v5 = (*(*Type + 96))(Type);
  v11 = 0;
  v12 = 0;
  __p = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v5, v5[1], (v5[1] - *v5) >> 3);
  if (__p == v11)
  {
    ScalarValue = MIL::IRTypedTensorValue<BOOL>::GetScalarValue(a1);
    if (ScalarValue)
    {
      v7 = "true";
    }

    else
    {
      v7 = "false";
    }

    if (ScalarValue)
    {
      v8 = 4;
    }

    else
    {
      v8 = 5;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v7, v8);
  }

  Values = MIL::IRTypedTensorValue<BOOL>::GetValues(a1);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void sub_218089D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::BasicSerializer::Val<std::string>(uint64_t a1, MIL::IRTensorValue *a2)
{
  v4 = *(a1 + 384);
  if (v4)
  {
    Type = MIL::IRTypedTensorValue<std::string>::GetType(a2);
    v6 = MIL::IRValueType::AsTensorType(Type);
    v7 = (*(*v6 + 16))(v6);
    v8 = v7 >= (*(**(a1 + 320) + 136))(*(a1 + 320));
  }

  else
  {
    v8 = MIL::IRTypedTensorValue<std::string>::UsesFileStorage(a2);
  }

  v9 = MIL::IRTypedTensorValue<std::string>::GetType(a2);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 88))(v10);
  v12 = v11;
  if (!v4 || !v8 || (v11 <= 0x19 ? (v13 = ((1 << v11) & 0x3F9EE30) == 0) : (v13 = 1), !v13))
  {
    if (v8)
    {
      memset(v71, 0, sizeof(v71));
      v72 = 1065353216;
      if (!v4)
      {
        FileProperties = MIL::IRTypedTensorValue<std::string>::GetFileProperties(a2);
        if (v71 != FileProperties)
        {
          v72 = *(FileProperties + 32);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>(v71, *(FileProperties + 16), 0);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "type");
        v56 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
        if (v56)
        {
          MIL::IRValue::GetScalar<std::string>(v56[5], &__p);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "type");
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "path");
          v57 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (v57)
          {
            v59 = v57[5];
            v58 = v57[6];
            if (v58)
            {
              atomic_fetch_add_explicit(v58 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            MIL::IRValue::GetScalar<std::string>(v59, &__str);
            v60 = (*(**(a1 + 320) + 32))(*(a1 + 320));
            MIL::Util::ReplaceModelPaths(&__str, v60);
            v61 = (*(*v59 + 32))(v59);
            v62 = MIL::IRValueType::AsTensorType(v61);
            v67 = __str;
            memset(&__str, 0, sizeof(__str));
            MIL::IRTensorValueType::MakeStringValue(v62, &v67);
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (MIL::IRTypedTensorValue<std::string>::UsesFileStorage(a2))
      {
        v14 = MIL::IRTypedTensorValue<std::string>::GetFileProperties(a2);
        std::string::basic_string[abi:ne200100]<0>(&__p, "path");
        v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v14, &__p.__r_.__value_.__l.__data_);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v16 = v15[5];
        v17 = v15[6];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MIL::IRValue::GetScalar<std::string>(v16, &__p);
        __str.__r_.__value_.__r.__words[0] = &__p;
        v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 368, &__p.__r_.__value_.__l.__data_);
        v20 = *(v18 + 56);
        v19 = *(v18 + 64);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      else
      {
        v22 = *(a1 + 368);
        v20 = *(v22 + 56);
        v23 = *(v22 + 64);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }
      }

      memset(&__p, 0, sizeof(__p));
      v73 = 0;
      if (!MIL::IRTypedTensorValue<std::string>::UsesFileStorage(a2))
      {
        goto LABEL_59;
      }

      v24 = MIL::IRTypedTensorValue<std::string>::GetFileProperties(a2);
      std::string::basic_string[abi:ne200100]<0>(&__str, "path");
      v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      if (!v25)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v27 = v25[5];
      v26 = v25[6];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      MIL::IRValue::GetScalar<std::string>(v27, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __str;
      std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
      v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      v29 = v28;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
        if (v29)
        {
LABEL_39:
          std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
          v30 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
          if (!v30)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v31 = v30[5];
          v32 = v30[6];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v73 = MIL::IRValue::GetScalar<unsigned long long>(v31);
          if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_))
          {
            v33 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            v34 = v33;
            if (!v33)
            {
              goto LABEL_94;
            }

            if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v33 + 5, &v73))
            {
              if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v34 + 5, &v73))
              {
                v35 = 1;
                goto LABEL_50;
              }

LABEL_94:
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }
          }

          v35 = 0;
LABEL_50:
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v35)
          {
LABEL_78:
            v55 = MIL::IRTypedTensorValue<std::string>::GetType(a2);
            (*(*v55 + 24))(v55);
            MIL::Blob::StorageWriter::GetFilePath(v20, &__str);
            MIL::IRTensorValueType::MakeValueFromBlobFile();
          }

LABEL_59:
          switch(v12)
          {
            case 4:
              v36 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp16>(v36);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp16>(v20);
              break;
            case 5:
              v51 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<float>(v51);
              v37 = MIL::Blob::StorageWriter::WriteData<float>(v20);
              break;
            case 9:
              v48 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<signed char>(v48);
              v37 = MIL::Blob::StorageWriter::WriteData<signed char>(v20);
              break;
            case 10:
              v50 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<short>(v50);
              v37 = MIL::Blob::StorageWriter::WriteData<short>(v20);
              break;
            case 11:
              v45 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<int>(v45);
              v37 = MIL::Blob::StorageWriter::WriteData<int>(v20);
              break;
            case 13:
              v47 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Int4>(v47);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Int4>(v20);
              break;
            case 14:
              v52 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned char>(v52);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned char>(v20);
              break;
            case 15:
              v49 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned short>(v49);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned short>(v20);
              break;
            case 16:
              v42 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned int>(v42);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned int>(v20);
              break;
            case 19:
              v39 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt2>(v39);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt2>(v20);
              break;
            case 20:
              v41 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt4>(v41);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt4>(v20);
              break;
            case 21:
              v38 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt1>(v38);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt1>(v20);
              break;
            case 22:
              v40 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt3>(v40);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt3>(v20);
              break;
            case 23:
              v43 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt6>(v43);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt6>(v20);
              break;
            case 24:
              v44 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v44);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E4M3FN>(v20);
              break;
            case 25:
              v46 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v46);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E5M2>(v20);
              break;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v12, &v68);
              v65 = std::string::insert(&v68, 0, "[MIL Serialization] Unsupported Data type ");
              v66 = *&v65->__r_.__value_.__l.__data_;
              __str.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
              *&__str.__r_.__value_.__l.__data_ = v66;
              v65->__r_.__value_.__l.__size_ = 0;
              v65->__r_.__value_.__r.__words[2] = 0;
              v65->__r_.__value_.__r.__words[0] = 0;
              std::logic_error::logic_error(exception, &__str);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          v53 = v37;
          if (MIL::IRTypedTensorValue<std::string>::UsesFileStorage(a2))
          {
            __str.__r_.__value_.__r.__words[0] = &__p;
            v54 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            __str.__r_.__value_.__r.__words[0] = &v73;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v54 + 5, &v73)[3] = v53;
          }

          goto LABEL_78;
        }
      }

      else if (v28)
      {
        goto LABEL_39;
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      goto LABEL_59;
    }
  }

  ValHelper<std::string>(a2, *(a1 + 40));
  return a1;
}

void sub_21808A950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v39 & 1) == 0)
    {
LABEL_8:
      if (a35 < 0)
      {
        operator delete(a30);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a37);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v38);
  goto LABEL_8;
}

void ValHelper<std::string>(uint64_t a1, void *a2)
{
  Type = MIL::IRTypedTensorValue<std::string>::GetType(a1);
  v5 = (*(*Type + 96))(Type);
  v8 = 0;
  v9 = 0;
  v7 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v7, *v5, v5[1], (v5[1] - *v5) >> 3);
  if (v7 == v8)
  {
    MIL::IRTypedTensorValue<std::string>::GetScalarValue(a1, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  __p.__r_.__value_.__r.__words[0] = MIL::IRTypedTensorValue<std::string>::GetValues(a1);
  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }
}

void sub_21808ACF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::BasicSerializer::Val<MIL::Bf16>(uint64_t a1, MIL::IRTensorValue *a2)
{
  v4 = *(a1 + 384);
  if (v4)
  {
    Type = MIL::IRTypedTensorValue<MIL::Bf16>::GetType(a2);
    v6 = MIL::IRValueType::AsTensorType(Type);
    v7 = (*(*v6 + 16))(v6);
    v8 = v7 >= (*(**(a1 + 320) + 136))(*(a1 + 320));
  }

  else
  {
    v8 = MIL::IRTypedTensorValue<MIL::Bf16>::UsesFileStorage(a2);
  }

  v9 = MIL::IRTypedTensorValue<MIL::Bf16>::GetType(a2);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 88))(v10);
  v12 = v11;
  if (!v4 || !v8 || (v11 <= 0x19 ? (v13 = ((1 << v11) & 0x3F9EE30) == 0) : (v13 = 1), !v13))
  {
    if (v8)
    {
      memset(v71, 0, sizeof(v71));
      v72 = 1065353216;
      if (!v4)
      {
        FileProperties = MIL::IRTypedTensorValue<MIL::Bf16>::GetFileProperties(a2);
        if (v71 != FileProperties)
        {
          v72 = *(FileProperties + 32);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>(v71, *(FileProperties + 16), 0);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "type");
        v56 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
        if (v56)
        {
          MIL::IRValue::GetScalar<std::string>(v56[5], &__p);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "type");
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "path");
          v57 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (v57)
          {
            v59 = v57[5];
            v58 = v57[6];
            if (v58)
            {
              atomic_fetch_add_explicit(v58 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            MIL::IRValue::GetScalar<std::string>(v59, &__str);
            v60 = (*(**(a1 + 320) + 32))(*(a1 + 320));
            MIL::Util::ReplaceModelPaths(&__str, v60);
            v61 = (*(*v59 + 32))(v59);
            v62 = MIL::IRValueType::AsTensorType(v61);
            v67 = __str;
            memset(&__str, 0, sizeof(__str));
            MIL::IRTensorValueType::MakeStringValue(v62, &v67);
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (MIL::IRTypedTensorValue<MIL::Bf16>::UsesFileStorage(a2))
      {
        v14 = MIL::IRTypedTensorValue<MIL::Bf16>::GetFileProperties(a2);
        std::string::basic_string[abi:ne200100]<0>(&__p, "path");
        v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v14, &__p.__r_.__value_.__l.__data_);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v16 = v15[5];
        v17 = v15[6];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MIL::IRValue::GetScalar<std::string>(v16, &__p);
        __str.__r_.__value_.__r.__words[0] = &__p;
        v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 368, &__p.__r_.__value_.__l.__data_);
        v20 = *(v18 + 56);
        v19 = *(v18 + 64);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      else
      {
        v22 = *(a1 + 368);
        v20 = *(v22 + 56);
        v23 = *(v22 + 64);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }
      }

      memset(&__p, 0, sizeof(__p));
      v73 = 0;
      if (!MIL::IRTypedTensorValue<MIL::Bf16>::UsesFileStorage(a2))
      {
        goto LABEL_59;
      }

      v24 = MIL::IRTypedTensorValue<MIL::Bf16>::GetFileProperties(a2);
      std::string::basic_string[abi:ne200100]<0>(&__str, "path");
      v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      if (!v25)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v27 = v25[5];
      v26 = v25[6];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      MIL::IRValue::GetScalar<std::string>(v27, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __str;
      std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
      v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      v29 = v28;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
        if (v29)
        {
LABEL_39:
          std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
          v30 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
          if (!v30)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v31 = v30[5];
          v32 = v30[6];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v73 = MIL::IRValue::GetScalar<unsigned long long>(v31);
          if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_))
          {
            v33 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            v34 = v33;
            if (!v33)
            {
              goto LABEL_94;
            }

            if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v33 + 5, &v73))
            {
              if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v34 + 5, &v73))
              {
                v35 = 1;
                goto LABEL_50;
              }

LABEL_94:
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }
          }

          v35 = 0;
LABEL_50:
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v35)
          {
LABEL_78:
            v55 = MIL::IRTypedTensorValue<MIL::Bf16>::GetType(a2);
            (*(*v55 + 24))(v55);
            MIL::Blob::StorageWriter::GetFilePath(v20, &__str);
            MIL::IRTensorValueType::MakeValueFromBlobFile();
          }

LABEL_59:
          switch(v12)
          {
            case 4:
              v36 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp16>(v36);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp16>(v20);
              break;
            case 5:
              v51 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<float>(v51);
              v37 = MIL::Blob::StorageWriter::WriteData<float>(v20);
              break;
            case 9:
              v48 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<signed char>(v48);
              v37 = MIL::Blob::StorageWriter::WriteData<signed char>(v20);
              break;
            case 10:
              v50 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<short>(v50);
              v37 = MIL::Blob::StorageWriter::WriteData<short>(v20);
              break;
            case 11:
              v45 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<int>(v45);
              v37 = MIL::Blob::StorageWriter::WriteData<int>(v20);
              break;
            case 13:
              v47 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Int4>(v47);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Int4>(v20);
              break;
            case 14:
              v52 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned char>(v52);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned char>(v20);
              break;
            case 15:
              v49 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned short>(v49);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned short>(v20);
              break;
            case 16:
              v42 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned int>(v42);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned int>(v20);
              break;
            case 19:
              v39 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt2>(v39);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt2>(v20);
              break;
            case 20:
              v41 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt4>(v41);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt4>(v20);
              break;
            case 21:
              v38 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt1>(v38);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt1>(v20);
              break;
            case 22:
              v40 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt3>(v40);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt3>(v20);
              break;
            case 23:
              v43 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt6>(v43);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt6>(v20);
              break;
            case 24:
              v44 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v44);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E4M3FN>(v20);
              break;
            case 25:
              v46 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v46);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E5M2>(v20);
              break;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v12, &v68);
              v65 = std::string::insert(&v68, 0, "[MIL Serialization] Unsupported Data type ");
              v66 = *&v65->__r_.__value_.__l.__data_;
              __str.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
              *&__str.__r_.__value_.__l.__data_ = v66;
              v65->__r_.__value_.__l.__size_ = 0;
              v65->__r_.__value_.__r.__words[2] = 0;
              v65->__r_.__value_.__r.__words[0] = 0;
              std::logic_error::logic_error(exception, &__str);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          v53 = v37;
          if (MIL::IRTypedTensorValue<MIL::Bf16>::UsesFileStorage(a2))
          {
            __str.__r_.__value_.__r.__words[0] = &__p;
            v54 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            __str.__r_.__value_.__r.__words[0] = &v73;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v54 + 5, &v73)[3] = v53;
          }

          goto LABEL_78;
        }
      }

      else if (v28)
      {
        goto LABEL_39;
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      goto LABEL_59;
    }
  }

  ValHelper<MIL::Bf16>(a2, *(a1 + 40), *(a1 + 320));
  return a1;
}

void sub_21808B914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v39 & 1) == 0)
    {
LABEL_8:
      if (a35 < 0)
      {
        operator delete(a30);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a37);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v38);
  goto LABEL_8;
}

void ValHelper<MIL::Bf16>(uint64_t a1, void *a2, uint64_t a3)
{
  Type = MIL::IRTypedTensorValue<MIL::Bf16>::GetType(a1);
  v7 = (*(*Type + 96))(Type);
  v10 = 0;
  v11 = 0;
  __p = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v7, v7[1], (v7[1] - *v7) >> 3);
  if (__p == v10)
  {
    LOWORD(Values) = MIL::IRTypedTensorValue<MIL::Bf16>::GetScalarValue(a1);
    MIL::Bf16::GetFloat(&Values);
  }

  Values = MIL::IRTypedTensorValue<MIL::Bf16>::GetValues(a1);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_21808BCC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::BasicSerializer::Val<MIL::Fp16>(uint64_t a1, MIL::IRTensorValue *a2)
{
  v4 = *(a1 + 384);
  if (v4)
  {
    Type = MIL::IRTypedTensorValue<MIL::Fp16>::GetType(a2);
    v6 = MIL::IRValueType::AsTensorType(Type);
    v7 = (*(*v6 + 16))(v6);
    v8 = v7 >= (*(**(a1 + 320) + 136))(*(a1 + 320));
  }

  else
  {
    v8 = MIL::IRTypedTensorValue<MIL::Fp16>::UsesFileStorage(a2);
  }

  v9 = MIL::IRTypedTensorValue<MIL::Fp16>::GetType(a2);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 88))(v10);
  v12 = v11;
  if (!v4 || !v8 || (v11 <= 0x19 ? (v13 = ((1 << v11) & 0x3F9EE30) == 0) : (v13 = 1), !v13))
  {
    if (v8)
    {
      memset(v71, 0, sizeof(v71));
      v72 = 1065353216;
      if (!v4)
      {
        FileProperties = MIL::IRTypedTensorValue<MIL::Fp16>::GetFileProperties(a2);
        if (v71 != FileProperties)
        {
          v72 = *(FileProperties + 32);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>(v71, *(FileProperties + 16), 0);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "type");
        v56 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
        if (v56)
        {
          MIL::IRValue::GetScalar<std::string>(v56[5], &__p);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "type");
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "path");
          v57 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (v57)
          {
            v59 = v57[5];
            v58 = v57[6];
            if (v58)
            {
              atomic_fetch_add_explicit(v58 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            MIL::IRValue::GetScalar<std::string>(v59, &__str);
            v60 = (*(**(a1 + 320) + 32))(*(a1 + 320));
            MIL::Util::ReplaceModelPaths(&__str, v60);
            v61 = (*(*v59 + 32))(v59);
            v62 = MIL::IRValueType::AsTensorType(v61);
            v67 = __str;
            memset(&__str, 0, sizeof(__str));
            MIL::IRTensorValueType::MakeStringValue(v62, &v67);
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (MIL::IRTypedTensorValue<MIL::Fp16>::UsesFileStorage(a2))
      {
        v14 = MIL::IRTypedTensorValue<MIL::Fp16>::GetFileProperties(a2);
        std::string::basic_string[abi:ne200100]<0>(&__p, "path");
        v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v14, &__p.__r_.__value_.__l.__data_);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v16 = v15[5];
        v17 = v15[6];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MIL::IRValue::GetScalar<std::string>(v16, &__p);
        __str.__r_.__value_.__r.__words[0] = &__p;
        v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 368, &__p.__r_.__value_.__l.__data_);
        v20 = *(v18 + 56);
        v19 = *(v18 + 64);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      else
      {
        v22 = *(a1 + 368);
        v20 = *(v22 + 56);
        v23 = *(v22 + 64);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }
      }

      memset(&__p, 0, sizeof(__p));
      v73 = 0;
      if (!MIL::IRTypedTensorValue<MIL::Fp16>::UsesFileStorage(a2))
      {
        goto LABEL_59;
      }

      v24 = MIL::IRTypedTensorValue<MIL::Fp16>::GetFileProperties(a2);
      std::string::basic_string[abi:ne200100]<0>(&__str, "path");
      v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      if (!v25)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v27 = v25[5];
      v26 = v25[6];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      MIL::IRValue::GetScalar<std::string>(v27, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __str;
      std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
      v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      v29 = v28;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
        if (v29)
        {
LABEL_39:
          std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
          v30 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
          if (!v30)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v31 = v30[5];
          v32 = v30[6];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v73 = MIL::IRValue::GetScalar<unsigned long long>(v31);
          if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_))
          {
            v33 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            v34 = v33;
            if (!v33)
            {
              goto LABEL_94;
            }

            if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v33 + 5, &v73))
            {
              if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v34 + 5, &v73))
              {
                v35 = 1;
                goto LABEL_50;
              }

LABEL_94:
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }
          }

          v35 = 0;
LABEL_50:
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v35)
          {
LABEL_78:
            v55 = MIL::IRTypedTensorValue<MIL::Fp16>::GetType(a2);
            (*(*v55 + 24))(v55);
            MIL::Blob::StorageWriter::GetFilePath(v20, &__str);
            MIL::IRTensorValueType::MakeValueFromBlobFile();
          }

LABEL_59:
          switch(v12)
          {
            case 4:
              v36 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp16>(v36);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp16>(v20);
              break;
            case 5:
              v51 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<float>(v51);
              v37 = MIL::Blob::StorageWriter::WriteData<float>(v20);
              break;
            case 9:
              v48 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<signed char>(v48);
              v37 = MIL::Blob::StorageWriter::WriteData<signed char>(v20);
              break;
            case 10:
              v50 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<short>(v50);
              v37 = MIL::Blob::StorageWriter::WriteData<short>(v20);
              break;
            case 11:
              v45 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<int>(v45);
              v37 = MIL::Blob::StorageWriter::WriteData<int>(v20);
              break;
            case 13:
              v47 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Int4>(v47);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Int4>(v20);
              break;
            case 14:
              v52 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned char>(v52);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned char>(v20);
              break;
            case 15:
              v49 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned short>(v49);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned short>(v20);
              break;
            case 16:
              v42 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned int>(v42);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned int>(v20);
              break;
            case 19:
              v39 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt2>(v39);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt2>(v20);
              break;
            case 20:
              v41 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt4>(v41);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt4>(v20);
              break;
            case 21:
              v38 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt1>(v38);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt1>(v20);
              break;
            case 22:
              v40 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt3>(v40);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt3>(v20);
              break;
            case 23:
              v43 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt6>(v43);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt6>(v20);
              break;
            case 24:
              v44 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v44);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E4M3FN>(v20);
              break;
            case 25:
              v46 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v46);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E5M2>(v20);
              break;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v12, &v68);
              v65 = std::string::insert(&v68, 0, "[MIL Serialization] Unsupported Data type ");
              v66 = *&v65->__r_.__value_.__l.__data_;
              __str.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
              *&__str.__r_.__value_.__l.__data_ = v66;
              v65->__r_.__value_.__l.__size_ = 0;
              v65->__r_.__value_.__r.__words[2] = 0;
              v65->__r_.__value_.__r.__words[0] = 0;
              std::logic_error::logic_error(exception, &__str);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          v53 = v37;
          if (MIL::IRTypedTensorValue<MIL::Fp16>::UsesFileStorage(a2))
          {
            __str.__r_.__value_.__r.__words[0] = &__p;
            v54 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            __str.__r_.__value_.__r.__words[0] = &v73;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v54 + 5, &v73)[3] = v53;
          }

          goto LABEL_78;
        }
      }

      else if (v28)
      {
        goto LABEL_39;
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      goto LABEL_59;
    }
  }

  ValHelper<MIL::Fp16>(a2, *(a1 + 40), *(a1 + 320));
  return a1;
}

void sub_21808C8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v39 & 1) == 0)
    {
LABEL_8:
      if (a35 < 0)
      {
        operator delete(a30);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a37);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v38);
  goto LABEL_8;
}

void ValHelper<MIL::Fp16>(uint64_t a1, void *a2, uint64_t a3)
{
  Type = MIL::IRTypedTensorValue<MIL::Fp16>::GetType(a1);
  v7 = (*(*Type + 96))(Type);
  v10 = 0;
  v11 = 0;
  __p = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v7, v7[1], (v7[1] - *v7) >> 3);
  if (__p == v10)
  {
    LOWORD(Values) = MIL::IRTypedTensorValue<MIL::Fp16>::GetScalarValue(a1);
    MIL::Fp16::GetFloat(&Values);
  }

  Values = MIL::IRTypedTensorValue<MIL::Fp16>::GetValues(a1);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_21808CC7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::BasicSerializer::Val<MIL::Fp8E5M2>(uint64_t a1, MIL::IRTensorValue *a2)
{
  v4 = *(a1 + 384);
  if (v4)
  {
    Type = MIL::IRTypedTensorValue<MIL::Fp8E5M2>::GetType(a2);
    v6 = MIL::IRValueType::AsTensorType(Type);
    v7 = (*(*v6 + 16))(v6);
    v8 = v7 >= (*(**(a1 + 320) + 136))(*(a1 + 320));
  }

  else
  {
    v8 = MIL::IRTypedTensorValue<MIL::Fp8E5M2>::UsesFileStorage(a2);
  }

  v9 = MIL::IRTypedTensorValue<MIL::Fp8E5M2>::GetType(a2);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 88))(v10);
  v12 = v11;
  if (!v4 || !v8 || (v11 <= 0x19 ? (v13 = ((1 << v11) & 0x3F9EE30) == 0) : (v13 = 1), !v13))
  {
    if (v8)
    {
      memset(v71, 0, sizeof(v71));
      v72 = 1065353216;
      if (!v4)
      {
        FileProperties = MIL::IRTypedTensorValue<MIL::Fp8E5M2>::GetFileProperties(a2);
        if (v71 != FileProperties)
        {
          v72 = *(FileProperties + 32);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>(v71, *(FileProperties + 16), 0);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "type");
        v56 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
        if (v56)
        {
          MIL::IRValue::GetScalar<std::string>(v56[5], &__p);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "type");
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "path");
          v57 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (v57)
          {
            v59 = v57[5];
            v58 = v57[6];
            if (v58)
            {
              atomic_fetch_add_explicit(v58 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            MIL::IRValue::GetScalar<std::string>(v59, &__str);
            v60 = (*(**(a1 + 320) + 32))(*(a1 + 320));
            MIL::Util::ReplaceModelPaths(&__str, v60);
            v61 = (*(*v59 + 32))(v59);
            v62 = MIL::IRValueType::AsTensorType(v61);
            v67 = __str;
            memset(&__str, 0, sizeof(__str));
            MIL::IRTensorValueType::MakeStringValue(v62, &v67);
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (MIL::IRTypedTensorValue<MIL::Fp8E5M2>::UsesFileStorage(a2))
      {
        v14 = MIL::IRTypedTensorValue<MIL::Fp8E5M2>::GetFileProperties(a2);
        std::string::basic_string[abi:ne200100]<0>(&__p, "path");
        v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v14, &__p.__r_.__value_.__l.__data_);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v16 = v15[5];
        v17 = v15[6];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MIL::IRValue::GetScalar<std::string>(v16, &__p);
        __str.__r_.__value_.__r.__words[0] = &__p;
        v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 368, &__p.__r_.__value_.__l.__data_);
        v20 = *(v18 + 56);
        v19 = *(v18 + 64);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      else
      {
        v22 = *(a1 + 368);
        v20 = *(v22 + 56);
        v23 = *(v22 + 64);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }
      }

      memset(&__p, 0, sizeof(__p));
      v73 = 0;
      if (!MIL::IRTypedTensorValue<MIL::Fp8E5M2>::UsesFileStorage(a2))
      {
        goto LABEL_59;
      }

      v24 = MIL::IRTypedTensorValue<MIL::Fp8E5M2>::GetFileProperties(a2);
      std::string::basic_string[abi:ne200100]<0>(&__str, "path");
      v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      if (!v25)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v27 = v25[5];
      v26 = v25[6];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      MIL::IRValue::GetScalar<std::string>(v27, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __str;
      std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
      v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      v29 = v28;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
        if (v29)
        {
LABEL_39:
          std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
          v30 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
          if (!v30)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v31 = v30[5];
          v32 = v30[6];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v73 = MIL::IRValue::GetScalar<unsigned long long>(v31);
          if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_))
          {
            v33 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            v34 = v33;
            if (!v33)
            {
              goto LABEL_94;
            }

            if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v33 + 5, &v73))
            {
              if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v34 + 5, &v73))
              {
                v35 = 1;
                goto LABEL_50;
              }

LABEL_94:
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }
          }

          v35 = 0;
LABEL_50:
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v35)
          {
LABEL_78:
            v55 = MIL::IRTypedTensorValue<MIL::Fp8E5M2>::GetType(a2);
            (*(*v55 + 24))(v55);
            MIL::Blob::StorageWriter::GetFilePath(v20, &__str);
            MIL::IRTensorValueType::MakeValueFromBlobFile();
          }

LABEL_59:
          switch(v12)
          {
            case 4:
              v36 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp16>(v36);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp16>(v20);
              break;
            case 5:
              v51 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<float>(v51);
              v37 = MIL::Blob::StorageWriter::WriteData<float>(v20);
              break;
            case 9:
              v48 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<signed char>(v48);
              v37 = MIL::Blob::StorageWriter::WriteData<signed char>(v20);
              break;
            case 10:
              v50 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<short>(v50);
              v37 = MIL::Blob::StorageWriter::WriteData<short>(v20);
              break;
            case 11:
              v45 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<int>(v45);
              v37 = MIL::Blob::StorageWriter::WriteData<int>(v20);
              break;
            case 13:
              v47 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Int4>(v47);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Int4>(v20);
              break;
            case 14:
              v52 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned char>(v52);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned char>(v20);
              break;
            case 15:
              v49 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned short>(v49);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned short>(v20);
              break;
            case 16:
              v42 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned int>(v42);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned int>(v20);
              break;
            case 19:
              v39 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt2>(v39);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt2>(v20);
              break;
            case 20:
              v41 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt4>(v41);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt4>(v20);
              break;
            case 21:
              v38 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt1>(v38);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt1>(v20);
              break;
            case 22:
              v40 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt3>(v40);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt3>(v20);
              break;
            case 23:
              v43 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt6>(v43);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt6>(v20);
              break;
            case 24:
              v44 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v44);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E4M3FN>(v20);
              break;
            case 25:
              v46 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v46);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E5M2>(v20);
              break;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v12, &v68);
              v65 = std::string::insert(&v68, 0, "[MIL Serialization] Unsupported Data type ");
              v66 = *&v65->__r_.__value_.__l.__data_;
              __str.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
              *&__str.__r_.__value_.__l.__data_ = v66;
              v65->__r_.__value_.__l.__size_ = 0;
              v65->__r_.__value_.__r.__words[2] = 0;
              v65->__r_.__value_.__r.__words[0] = 0;
              std::logic_error::logic_error(exception, &__str);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          v53 = v37;
          if (MIL::IRTypedTensorValue<MIL::Fp8E5M2>::UsesFileStorage(a2))
          {
            __str.__r_.__value_.__r.__words[0] = &__p;
            v54 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            __str.__r_.__value_.__r.__words[0] = &v73;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v54 + 5, &v73)[3] = v53;
          }

          goto LABEL_78;
        }
      }

      else if (v28)
      {
        goto LABEL_39;
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      goto LABEL_59;
    }
  }

  ValHelper<MIL::Fp8E5M2>(a2, *(a1 + 40), *(a1 + 320));
  return a1;
}

void sub_21808D884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v39 & 1) == 0)
    {
LABEL_8:
      if (a35 < 0)
      {
        operator delete(a30);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a37);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v38);
  goto LABEL_8;
}

void ValHelper<MIL::Fp8E5M2>(uint64_t a1, void *a2, uint64_t a3)
{
  Type = MIL::IRTypedTensorValue<MIL::Fp8E5M2>::GetType(a1);
  v7 = (*(*Type + 96))(Type);
  v10 = 0;
  v11 = 0;
  __p = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v7, v7[1], (v7[1] - *v7) >> 3);
  if (__p == v10)
  {
    LOBYTE(Values) = MIL::IRTypedTensorValue<MIL::Fp8E5M2>::GetScalarValue(a1);
    MIL::Fp8E5M2::GetFloat(&Values);
  }

  Values = MIL::IRTypedTensorValue<MIL::Fp8E5M2>::GetValues(a1);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_21808DC34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::BasicSerializer::Val<MIL::Fp8E4M3FN>(uint64_t a1, MIL::IRTensorValue *a2)
{
  v4 = *(a1 + 384);
  if (v4)
  {
    Type = MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::GetType(a2);
    v6 = MIL::IRValueType::AsTensorType(Type);
    v7 = (*(*v6 + 16))(v6);
    v8 = v7 >= (*(**(a1 + 320) + 136))(*(a1 + 320));
  }

  else
  {
    v8 = MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::UsesFileStorage(a2);
  }

  v9 = MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::GetType(a2);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 88))(v10);
  v12 = v11;
  if (!v4 || !v8 || (v11 <= 0x19 ? (v13 = ((1 << v11) & 0x3F9EE30) == 0) : (v13 = 1), !v13))
  {
    if (v8)
    {
      memset(v71, 0, sizeof(v71));
      v72 = 1065353216;
      if (!v4)
      {
        FileProperties = MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::GetFileProperties(a2);
        if (v71 != FileProperties)
        {
          v72 = *(FileProperties + 32);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>(v71, *(FileProperties + 16), 0);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "type");
        v56 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
        if (v56)
        {
          MIL::IRValue::GetScalar<std::string>(v56[5], &__p);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "type");
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "path");
          v57 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (v57)
          {
            v59 = v57[5];
            v58 = v57[6];
            if (v58)
            {
              atomic_fetch_add_explicit(v58 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            MIL::IRValue::GetScalar<std::string>(v59, &__str);
            v60 = (*(**(a1 + 320) + 32))(*(a1 + 320));
            MIL::Util::ReplaceModelPaths(&__str, v60);
            v61 = (*(*v59 + 32))(v59);
            v62 = MIL::IRValueType::AsTensorType(v61);
            v67 = __str;
            memset(&__str, 0, sizeof(__str));
            MIL::IRTensorValueType::MakeStringValue(v62, &v67);
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::UsesFileStorage(a2))
      {
        v14 = MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::GetFileProperties(a2);
        std::string::basic_string[abi:ne200100]<0>(&__p, "path");
        v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v14, &__p.__r_.__value_.__l.__data_);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v16 = v15[5];
        v17 = v15[6];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MIL::IRValue::GetScalar<std::string>(v16, &__p);
        __str.__r_.__value_.__r.__words[0] = &__p;
        v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 368, &__p.__r_.__value_.__l.__data_);
        v20 = *(v18 + 56);
        v19 = *(v18 + 64);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      else
      {
        v22 = *(a1 + 368);
        v20 = *(v22 + 56);
        v23 = *(v22 + 64);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }
      }

      memset(&__p, 0, sizeof(__p));
      v73 = 0;
      if (!MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::UsesFileStorage(a2))
      {
        goto LABEL_59;
      }

      v24 = MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::GetFileProperties(a2);
      std::string::basic_string[abi:ne200100]<0>(&__str, "path");
      v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      if (!v25)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v27 = v25[5];
      v26 = v25[6];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      MIL::IRValue::GetScalar<std::string>(v27, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __str;
      std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
      v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      v29 = v28;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
        if (v29)
        {
LABEL_39:
          std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
          v30 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
          if (!v30)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v31 = v30[5];
          v32 = v30[6];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v73 = MIL::IRValue::GetScalar<unsigned long long>(v31);
          if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_))
          {
            v33 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            v34 = v33;
            if (!v33)
            {
              goto LABEL_94;
            }

            if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v33 + 5, &v73))
            {
              if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v34 + 5, &v73))
              {
                v35 = 1;
                goto LABEL_50;
              }

LABEL_94:
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }
          }

          v35 = 0;
LABEL_50:
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v35)
          {
LABEL_78:
            v55 = MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::GetType(a2);
            (*(*v55 + 24))(v55);
            MIL::Blob::StorageWriter::GetFilePath(v20, &__str);
            MIL::IRTensorValueType::MakeValueFromBlobFile();
          }

LABEL_59:
          switch(v12)
          {
            case 4:
              v36 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp16>(v36);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp16>(v20);
              break;
            case 5:
              v51 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<float>(v51);
              v37 = MIL::Blob::StorageWriter::WriteData<float>(v20);
              break;
            case 9:
              v48 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<signed char>(v48);
              v37 = MIL::Blob::StorageWriter::WriteData<signed char>(v20);
              break;
            case 10:
              v50 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<short>(v50);
              v37 = MIL::Blob::StorageWriter::WriteData<short>(v20);
              break;
            case 11:
              v45 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<int>(v45);
              v37 = MIL::Blob::StorageWriter::WriteData<int>(v20);
              break;
            case 13:
              v47 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Int4>(v47);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Int4>(v20);
              break;
            case 14:
              v52 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned char>(v52);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned char>(v20);
              break;
            case 15:
              v49 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned short>(v49);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned short>(v20);
              break;
            case 16:
              v42 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned int>(v42);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned int>(v20);
              break;
            case 19:
              v39 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt2>(v39);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt2>(v20);
              break;
            case 20:
              v41 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt4>(v41);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt4>(v20);
              break;
            case 21:
              v38 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt1>(v38);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt1>(v20);
              break;
            case 22:
              v40 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt3>(v40);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt3>(v20);
              break;
            case 23:
              v43 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt6>(v43);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt6>(v20);
              break;
            case 24:
              v44 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v44);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E4M3FN>(v20);
              break;
            case 25:
              v46 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v46);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E5M2>(v20);
              break;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v12, &v68);
              v65 = std::string::insert(&v68, 0, "[MIL Serialization] Unsupported Data type ");
              v66 = *&v65->__r_.__value_.__l.__data_;
              __str.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
              *&__str.__r_.__value_.__l.__data_ = v66;
              v65->__r_.__value_.__l.__size_ = 0;
              v65->__r_.__value_.__r.__words[2] = 0;
              v65->__r_.__value_.__r.__words[0] = 0;
              std::logic_error::logic_error(exception, &__str);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          v53 = v37;
          if (MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::UsesFileStorage(a2))
          {
            __str.__r_.__value_.__r.__words[0] = &__p;
            v54 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            __str.__r_.__value_.__r.__words[0] = &v73;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v54 + 5, &v73)[3] = v53;
          }

          goto LABEL_78;
        }
      }

      else if (v28)
      {
        goto LABEL_39;
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      goto LABEL_59;
    }
  }

  ValHelper<MIL::Fp8E4M3FN>(a2, *(a1 + 40), *(a1 + 320));
  return a1;
}

void sub_21808E83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v39 & 1) == 0)
    {
LABEL_8:
      if (a35 < 0)
      {
        operator delete(a30);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a37);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v38);
  goto LABEL_8;
}

void ValHelper<MIL::Fp8E4M3FN>(uint64_t a1, void *a2, uint64_t a3)
{
  Type = MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::GetType(a1);
  v7 = (*(*Type + 96))(Type);
  v10 = 0;
  v11 = 0;
  __p = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v7, v7[1], (v7[1] - *v7) >> 3);
  if (__p == v10)
  {
    LOBYTE(Values) = MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::GetScalarValue(a1);
    MIL::Fp8E4M3FN::GetFloat(&Values);
  }

  Values = MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::GetValues(a1);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_21808EBEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::BasicSerializer::Val<float>(uint64_t a1, MIL::IRTensorValue *a2)
{
  v4 = *(a1 + 384);
  if (v4)
  {
    Type = MIL::IRTypedTensorValue<float>::GetType(a2);
    v6 = MIL::IRValueType::AsTensorType(Type);
    v7 = (*(*v6 + 16))(v6);
    v8 = v7 >= (*(**(a1 + 320) + 136))(*(a1 + 320));
  }

  else
  {
    v8 = MIL::IRTypedTensorValue<float>::UsesFileStorage(a2);
  }

  v9 = MIL::IRTypedTensorValue<float>::GetType(a2);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 88))(v10);
  v12 = v11;
  if (!v4 || !v8 || (v11 <= 0x19 ? (v13 = ((1 << v11) & 0x3F9EE30) == 0) : (v13 = 1), !v13))
  {
    if (v8)
    {
      memset(v71, 0, sizeof(v71));
      v72 = 1065353216;
      if (!v4)
      {
        FileProperties = MIL::IRTypedTensorValue<float>::GetFileProperties(a2);
        if (v71 != FileProperties)
        {
          v72 = *(FileProperties + 32);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>(v71, *(FileProperties + 16), 0);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "type");
        v56 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
        if (v56)
        {
          MIL::IRValue::GetScalar<std::string>(v56[5], &__p);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "type");
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "path");
          v57 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (v57)
          {
            v59 = v57[5];
            v58 = v57[6];
            if (v58)
            {
              atomic_fetch_add_explicit(v58 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            MIL::IRValue::GetScalar<std::string>(v59, &__str);
            v60 = (*(**(a1 + 320) + 32))(*(a1 + 320));
            MIL::Util::ReplaceModelPaths(&__str, v60);
            v61 = (*(*v59 + 32))(v59);
            v62 = MIL::IRValueType::AsTensorType(v61);
            v67 = __str;
            memset(&__str, 0, sizeof(__str));
            MIL::IRTensorValueType::MakeStringValue(v62, &v67);
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (MIL::IRTypedTensorValue<float>::UsesFileStorage(a2))
      {
        v14 = MIL::IRTypedTensorValue<float>::GetFileProperties(a2);
        std::string::basic_string[abi:ne200100]<0>(&__p, "path");
        v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v14, &__p.__r_.__value_.__l.__data_);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v16 = v15[5];
        v17 = v15[6];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MIL::IRValue::GetScalar<std::string>(v16, &__p);
        __str.__r_.__value_.__r.__words[0] = &__p;
        v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 368, &__p.__r_.__value_.__l.__data_);
        v20 = *(v18 + 56);
        v19 = *(v18 + 64);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      else
      {
        v22 = *(a1 + 368);
        v20 = *(v22 + 56);
        v23 = *(v22 + 64);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }
      }

      memset(&__p, 0, sizeof(__p));
      v73 = 0;
      if (!MIL::IRTypedTensorValue<float>::UsesFileStorage(a2))
      {
        goto LABEL_59;
      }

      v24 = MIL::IRTypedTensorValue<float>::GetFileProperties(a2);
      std::string::basic_string[abi:ne200100]<0>(&__str, "path");
      v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      if (!v25)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v27 = v25[5];
      v26 = v25[6];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      MIL::IRValue::GetScalar<std::string>(v27, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __str;
      std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
      v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      v29 = v28;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
        if (v29)
        {
LABEL_39:
          std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
          v30 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
          if (!v30)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v31 = v30[5];
          v32 = v30[6];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v73 = MIL::IRValue::GetScalar<unsigned long long>(v31);
          if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_))
          {
            v33 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            v34 = v33;
            if (!v33)
            {
              goto LABEL_94;
            }

            if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v33 + 5, &v73))
            {
              if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v34 + 5, &v73))
              {
                v35 = 1;
                goto LABEL_50;
              }

LABEL_94:
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }
          }

          v35 = 0;
LABEL_50:
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v35)
          {
LABEL_78:
            v55 = MIL::IRTypedTensorValue<float>::GetType(a2);
            (*(*v55 + 24))(v55);
            MIL::Blob::StorageWriter::GetFilePath(v20, &__str);
            MIL::IRTensorValueType::MakeValueFromBlobFile();
          }

LABEL_59:
          switch(v12)
          {
            case 4:
              v36 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp16>(v36);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp16>(v20);
              break;
            case 5:
              v51 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<float>(v51);
              v37 = MIL::Blob::StorageWriter::WriteData<float>(v20);
              break;
            case 9:
              v48 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<signed char>(v48);
              v37 = MIL::Blob::StorageWriter::WriteData<signed char>(v20);
              break;
            case 10:
              v50 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<short>(v50);
              v37 = MIL::Blob::StorageWriter::WriteData<short>(v20);
              break;
            case 11:
              v45 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<int>(v45);
              v37 = MIL::Blob::StorageWriter::WriteData<int>(v20);
              break;
            case 13:
              v47 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Int4>(v47);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Int4>(v20);
              break;
            case 14:
              v52 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned char>(v52);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned char>(v20);
              break;
            case 15:
              v49 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned short>(v49);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned short>(v20);
              break;
            case 16:
              v42 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned int>(v42);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned int>(v20);
              break;
            case 19:
              v39 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt2>(v39);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt2>(v20);
              break;
            case 20:
              v41 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt4>(v41);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt4>(v20);
              break;
            case 21:
              v38 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt1>(v38);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt1>(v20);
              break;
            case 22:
              v40 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt3>(v40);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt3>(v20);
              break;
            case 23:
              v43 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt6>(v43);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt6>(v20);
              break;
            case 24:
              v44 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v44);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E4M3FN>(v20);
              break;
            case 25:
              v46 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v46);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E5M2>(v20);
              break;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v12, &v68);
              v65 = std::string::insert(&v68, 0, "[MIL Serialization] Unsupported Data type ");
              v66 = *&v65->__r_.__value_.__l.__data_;
              __str.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
              *&__str.__r_.__value_.__l.__data_ = v66;
              v65->__r_.__value_.__l.__size_ = 0;
              v65->__r_.__value_.__r.__words[2] = 0;
              v65->__r_.__value_.__r.__words[0] = 0;
              std::logic_error::logic_error(exception, &__str);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          v53 = v37;
          if (MIL::IRTypedTensorValue<float>::UsesFileStorage(a2))
          {
            __str.__r_.__value_.__r.__words[0] = &__p;
            v54 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            __str.__r_.__value_.__r.__words[0] = &v73;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v54 + 5, &v73)[3] = v53;
          }

          goto LABEL_78;
        }
      }

      else if (v28)
      {
        goto LABEL_39;
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      goto LABEL_59;
    }
  }

  ValHelper<float>(a2, *(a1 + 40), *(a1 + 320));
  return a1;
}