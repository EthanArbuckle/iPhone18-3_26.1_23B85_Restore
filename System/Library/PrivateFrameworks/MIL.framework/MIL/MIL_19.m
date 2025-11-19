void **anonymous namespace::TensorSymbolicShapeConstraintsImpl::AddDimension(void **result, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  if (a3 < 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "startIndex must be non-negative.");
    goto LABEL_17;
  }

  if ((a4 & 0x8000000000000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "endIndex must be negative.");
LABEL_17:
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v6 = result;
  v7 = result[5];
  v8 = result[6];
  if (v7 >= v8)
  {
    v11 = (result + 4);
    v12 = v6[4];
    v13 = 0x6DB6DB6DB6DB6DB7 * ((v7 - v12) >> 3);
    v14 = v13 + 1;
    if ((v13 + 1) > 0x492492492492492)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v12) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x249249249249249)
    {
      v16 = 0x492492492492492;
    }

    else
    {
      v16 = v14;
    }

    v25[4] = v6 + 4;
    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string,long long,long long>>>(v11, v16);
    }

    v17 = 56 * v13;
    *v17 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    v18 = *a5;
    *(v17 + 32) = *(a5 + 2);
    *(v17 + 16) = v18;
    *(a5 + 1) = 0;
    *(a5 + 2) = 0;
    *a5 = 0;
    *(v17 + 40) = a3;
    *(v17 + 48) = a4;
    v10 = 56 * v13 + 56;
    v19 = v6[4];
    v20 = v6[5] - v19;
    v21 = (56 * v13 - v20);
    memcpy(v21, v19, v20);
    v22 = v6[4];
    v6[4] = v21;
    v6[5] = v10;
    v23 = v6[6];
    v6[6] = 0;
    v25[2] = v22;
    v25[3] = v23;
    v25[0] = v22;
    v25[1] = v22;
    result = std::__split_buffer<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string,long long,long long>>::~__split_buffer(v25);
  }

  else
  {
    *v7 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    v9 = *a5;
    *(v7 + 4) = *(a5 + 2);
    *(v7 + 1) = v9;
    *(a5 + 1) = 0;
    *(a5 + 2) = 0;
    *a5 = 0;
    *(v7 + 5) = a3;
    *(v7 + 6) = a4;
    v10 = (v7 + 56);
  }

  v6[5] = v10;
  return result;
}

void **anonymous namespace::TensorSymbolicShapeConstraintsImpl::AddRank(void **result, uint64_t a2, __int128 *a3)
{
  v4 = result;
  v5 = result[8];
  v6 = result[9];
  if (v5 >= v6)
  {
    v9 = (result + 7);
    v10 = v4[7];
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v10) >> 3);
    v12 = v11 + 1;
    if (v11 + 1 > 0x666666666666666)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v13 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v10) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x333333333333333)
    {
      v14 = 0x666666666666666;
    }

    else
    {
      v14 = v12;
    }

    v22[4] = v4 + 7;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string>>>(v9, v14);
    }

    v15 = 40 * v11;
    *v15 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    v16 = *a3;
    *(v15 + 32) = *(a3 + 2);
    *(v15 + 16) = v16;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    *a3 = 0;
    v8 = 40 * v11 + 40;
    v17 = v4[7];
    v18 = v4[8] - v17;
    v19 = (40 * v11 - v18);
    memcpy(v19, v17, v18);
    v20 = v4[7];
    v4[7] = v19;
    v4[8] = v8;
    v21 = v4[9];
    v4[9] = 0;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    result = std::__split_buffer<std::pair<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string>>::~__split_buffer(v22);
  }

  else
  {
    *v5 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    v7 = *a3;
    *(v5 + 4) = *(a3 + 2);
    *(v5 + 1) = v7;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    *a3 = 0;
    v8 = (v5 + 40);
  }

  v4[8] = v8;
  return result;
}

void std::vector<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string,long long,long long>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 56;
        std::allocator<std::pair<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string,long long>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::allocator<std::pair<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t anonymous namespace::TensorSymbolicShapeConstraintsImpl::GetRankAndShape@<X0>(_anonymous_namespace_::TensorSymbolicShapeConstraintsImpl *this@<X0>, const MIL::IRValueType *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = (*(*this + 24))(this, a2);
  if (v5)
  {
    v6 = v5;
    Rank = MIL::IRTensorValueType::Rank(v5);
    Shape = (*(*v6 + 96))(v6);
LABEL_7:
    *a3 = Rank;
LABEL_8:
    a3[2] = 0;
    a3[3] = 0;
    a3[1] = 0;
    v15 = *Shape;
    v16 = Shape[1];
    v17 = (v16 - *Shape) >> 3;
    v18 = (a3 + 1);
    goto LABEL_9;
  }

  v9 = MIL::IRValueType::TryCastAsMemoryLayoutType(this);
  v10 = MIL::IRMemoryLayoutValueType::TryAsPixelBufferType(v9);
  if (v10)
  {
    v11 = v10;
    Rank = MIL::IRPixelBufferValueType::GetRank(v10);
    Shape = MIL::IRPixelBufferValueType::GetShape(v11);
    goto LABEL_7;
  }

  v12 = MIL::IRValueType::TryCastAsMemoryLayoutType(this);
  v13 = MIL::IRMemoryLayoutValueType::TryAsTensorBufferType(v12);
  if (v13)
  {
    v14 = v13;
    Rank = MIL::IRTensorBufferValueType::GetRank(v13);
    Shape = MIL::IRTensorBufferValueType::GetShape(v14);
    goto LABEL_7;
  }

  v20 = MIL::IRValueType::TryCastAsMemoryLayoutType(this);
  v21 = MIL::IRMemoryLayoutValueType::TryAsCircularBufferType(v20);
  if (v21)
  {
    v22 = v21;
    v23 = MIL::IRCircularBufferValueType::GetRank(v21);
    Shape = MIL::IRCircularBufferValueType::GetShape(v22);
    *a3 = v23;
    goto LABEL_8;
  }

  *a3 = -1;
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = 0;
  v18 = (a3 + 1);
  v15 = 0;
  v16 = 0;
  v17 = 0;
LABEL_9:

  return std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v18, v15, v16, v17);
}

const void **std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<long long &>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<long long &>>();
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

void sub_2180E21B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2180E2290(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::FormatShape(uint64_t *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  v10 = 91;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, &v10, 1);
  v2 = *a1;
  if (a1[1] != *a1)
  {
    v3 = 0;
    do
    {
      if (v3)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, ", ", 2);
        v2 = *a1;
      }

      MEMORY[0x21CEAFB70](&v5, *(v2 + 8 * v3++));
      v2 = *a1;
    }

    while (v3 < (a1[1] - *a1) >> 3);
  }

  v10 = 93;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, &v10, 1);
  std::stringbuf::str();
  v5 = *MEMORY[0x277D82828];
  *(&v5 + *(v5 - 24)) = *(MEMORY[0x277D82828] + 24);
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::ostream::~ostream();
  return MEMORY[0x21CEAFDA0](&v9);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<std::vector<long long>&>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::vector<long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<long long>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<std::vector<long long>&>>();
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

void sub_2180E26F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::vector<long long>>::pair[abi:ne200100]<std::string const&,std::vector<long long>&,0ul,0ul>(std::string *this, __int128 **a2, uint64_t **a3)
{
  v5 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    this->__r_.__value_.__r.__words[2] = *(v5 + 2);
    *&this->__r_.__value_.__l.__data_ = v6;
  }

  v7 = *a3;
  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&this[1], *v7, v7[1], (v7[1] - *v7) >> 3);
  return this;
}

void sub_2180E2818(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2180E2894(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string,long long>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string,long long>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string,long long>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string,long long>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<std::pair<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string>>::destroy[abi:ne200100](v4, i - 48);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string,long long,long long>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string,long long,long long>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string,long long,long long>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::tuple<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string,long long,long long>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    std::allocator<std::pair<std::shared_ptr<MIL::Validation::ConstraintTarget const>,std::string>>::destroy[abi:ne200100](v4, i - 56);
  }
}

void MIL::Validation::OpParameterConstraintTarget::Make()
{
  operator new();
}

{
  operator new();
}

void anonymous namespace::OpParameterConstraintTargetImpl::~OpParameterConstraintTargetImpl(void **this)
{
  *this = &unk_2829E9988;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2829E9988;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t anonymous namespace::OpParameterConstraintTargetImpl::TryGetType(_anonymous_namespace_::OpParameterConstraintTargetImpl *this, const MIL::IROperation *a2)
{
  (*(*this + 40))(&v7);
  if (v7)
  {
    ParameterType = (*(*v7 + 32))(v7);
  }

  else
  {
    ParameterType = MIL::IROperation::TryGetParameterType(a2, this + 8, *(this + 8));
  }

  v5 = ParameterType;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v5;
}

void sub_2180E2E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::OpParameterConstraintTargetImpl::ToString(_anonymous_namespace_::OpParameterConstraintTargetImpl *this@<X0>, std::string *a2@<X8>)
{
  std::operator+<char>();
  std::string::push_back(&v9, 91);
  v10 = v9;
  memset(&v9, 0, sizeof(v9));
  std::to_string(&__p, *(this + 8));
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

  v6 = std::string::append(&v10, p_p, size);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v11.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v11.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v11, 93);
  *a2 = v11;
  memset(&v11, 0, sizeof(v11));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_2180E2FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 25) < 0)
  {
    operator delete(*(v26 - 48));
  }

  if (a14 < 0)
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

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::OpOutputConstraintTargetImpl::TryGetType(_anonymous_namespace_::OpOutputConstraintTargetImpl *this, const MIL::IROperation *a2)
{
  (*(*this + 40))(&v7);
  if (v7)
  {
    OutputType = (*(*v7 + 32))(v7);
  }

  else
  {
    OutputType = MIL::IROperation::TryGetOutputType(a2, *(this + 1));
  }

  v5 = OutputType;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v5;
}

void sub_2180E3100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::OpOutputConstraintTargetImpl::TryGetValue(_anonymous_namespace_::OpOutputConstraintTargetImpl *this, const MIL::IROperation *a2)
{
  (*(*this + 40))(&v4);
  if (!v5)
  {
    return v4;
  }

  if (v5->__shared_owners_)
  {
    v2 = v4;
  }

  else
  {
    v2 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  return v2;
}

void anonymous namespace::OpOutputConstraintTargetImpl::TryGetValueSharedPtr(_anonymous_namespace_::OpOutputConstraintTargetImpl *this@<X0>, const MIL::IROperation *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(*a2 + 64))(a2);
  if ((*(*v6 + 104))(v6))
  {
    v7 = (*(*a2 + 64))(a2);
    (*(*v7 + 248))(v9);
    v8 = *(v9[0] + 16 * *(this + 1));
    *a3 = v8;
    if (*(&v8 + 1))
    {
      atomic_fetch_add_explicit((*(&v8 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v9;
    std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v10);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }
}

void anonymous namespace::OpOutputConstraintTargetImpl::ToString(_anonymous_namespace_::OpOutputConstraintTargetImpl *this@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v4, *(this + 1));
  v3 = std::string::insert(&v4, 0, "output at index ");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_2180E3314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::OpAttributeConstraintTargetImpl::~OpAttributeConstraintTargetImpl(void **this)
{
  *this = &unk_2829E9A48;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2829E9A48;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t anonymous namespace::OpAttributeConstraintTargetImpl::TryGetType(_anonymous_namespace_::OpAttributeConstraintTargetImpl *this, const MIL::IROperation *a2)
{
  (*(*this + 40))(&v7);
  if (v7)
  {
    ParameterType = (*(*v7 + 32))(v7);
  }

  else
  {
    ParameterType = MIL::IROperation::TryGetParameterType(a2, this + 8, 0);
  }

  v5 = ParameterType;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v5;
}

void sub_2180E34A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Validation::VerifyInputTensorDimAtGivenAxis(MIL::IRObject *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, MIL::ValidationResult *a4@<X8>)
{
  ParameterType = MIL::IROperation::GetParameterType(a1);
  v9 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v9 && (v10 = v9, (*(*v9 + 104))(v9)) && (v11 = (MIL::IRTensorValueType::Rank(v10) & (a2 >> 63)) + a2, v12 = (*(*v10 + 96))(v10), v11 < (v12[1] - *v12) >> 3) && (v13 = v12, (v14 = *(*v12 + 8 * v11)) != 0) && (*(*v14 + 16))(v14) && (v15 = (*(**(*v13 + 8 * v11) + 16))(*(*v13 + 8 * v11)), v16 = (*(*v15 + 48))(v15), v16 != a3))
  {
    v17 = v16;
    std::operator+<char>();
    v18 = std::string::append(&v48, "', the value of dimension at axis ");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v47, a2);
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v47;
    }

    else
    {
      v20 = v47.__r_.__value_.__r.__words[0];
    }

    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v47.__r_.__value_.__l.__size_;
    }

    v22 = std::string::append(&v49, v20, size);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v50, " must be ");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v51.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v51.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v46, a3);
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v46;
    }

    else
    {
      v26 = v46.__r_.__value_.__r.__words[0];
    }

    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v27 = v46.__r_.__value_.__l.__size_;
    }

    v28 = std::string::append(&v51, v26, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v52.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v52.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = std::string::append(&v52, " but it is ");
    v31 = *&v30->__r_.__value_.__l.__data_;
    v53.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v53.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v45, v17);
    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = &v45;
    }

    else
    {
      v32 = v45.__r_.__value_.__r.__words[0];
    }

    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v33 = v45.__r_.__value_.__l.__size_;
    }

    v34 = std::string::append(&v53, v32, v33);
    v35 = *&v34->__r_.__value_.__l.__data_;
    v54.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v54.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    v36 = std::string::append(&v54, " instead");
    v37 = v36->__r_.__value_.__r.__words[0];
    v38 = v36->__r_.__value_.__l.__size_;
    v55[0] = v36->__r_.__value_.__r.__words[2];
    *(v55 + 3) = *(&v36->__r_.__value_.__r.__words[2] + 3);
    v39 = SHIBYTE(v36->__r_.__value_.__r.__words[2]);
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v41 = LocationPtr[1];
    v43 = *LocationPtr;
    v44 = v41;
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v39 < 0)
    {
      std::string::__init_copy_ctor_external(&v42, v37, v38);
    }

    else
    {
      v42.__r_.__value_.__r.__words[0] = v37;
      v42.__r_.__value_.__l.__size_ = v38;
      LODWORD(v42.__r_.__value_.__r.__words[2]) = v55[0];
      *(&v42.__r_.__value_.__r.__words[2] + 3) = *(v55 + 3);
      *(&v42.__r_.__value_.__s + 23) = v39;
    }

    MIL::ValidationResult::ValidationResult(a4, &v43, 315, &v42);
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (v44)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
    }

    if (v39 < 0)
    {
      operator delete(v37);
    }
  }

  else
  {

    MIL::ValidationResult::ValidationResult(a4);
  }
}

void sub_2180E3944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (v55 < 0)
  {
    operator delete(v54);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Validation::VerifyOutputShapeMatchesInput(MIL::IRObject *a1@<X0>, MIL::ValidationResult *a2@<X8>)
{
  ParameterType = MIL::IROperation::GetParameterType(a1);
  v5 = (*(*ParameterType + 24))(ParameterType);
  OutputType = MIL::IROperation::GetOutputType(a1, 0);
  v7 = (*(*OutputType + 24))(OutputType);
  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v10 = LocationPtr[1];
    v29 = *LocationPtr;
    v30 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    v11 = std::string::append(&v26, " and output must both be tensors");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v28 = v11->__r_.__value_.__r.__words[2];
    *__p = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationResult::ValidationResult(a2, &v29, 313, __p);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    v13 = v30;
    if (v30)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = v7;
    v15 = (*(*v5 + 96))(v5);
    v16 = (*(*v14 + 96))(v14);
    v17 = *(v15 + 8) - *v15;
    if (v17 != *(v16 + 8) - *v16 || memcmp(*v15, *v16, v17))
    {
      v18 = MIL::IRObject::GetLocationPtr(a1);
      v19 = v18[1];
      v24 = *v18;
      v25 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::operator+<char>();
      v20 = std::string::append(&v26, " shape should match output shape");
      v21 = *&v20->__r_.__value_.__l.__data_;
      v23 = v20->__r_.__value_.__r.__words[2];
      *v22 = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a2, &v24, 313, v22);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(v22[0]);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      v13 = v25;
      if (!v25)
      {
        return;
      }

LABEL_13:
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      return;
    }

    MIL::ValidationResult::ValidationResult(a2);
  }
}

void sub_2180E3D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL MIL::Validation::TypeShapeAndDataTypeMatch(MIL::Validation *this, const MIL::IRValueType *a2, const MIL::IRValueType *a3)
{
  if (this == a2)
  {
    return 1;
  }

  if (MIL::IRValueType::TryCastAsMemoryLayoutType(this) || MIL::IRValueType::TryCastAsMemoryLayoutType(a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "TypeShapeAndDataTypeMatch currently only supports tensors.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = (*(*this + 24))(this);
  v6 = (*(*a2 + 24))(a2);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = (*(*v5 + 96))(v5);
  v10 = (*(*v8 + 96))(v8);
  v11 = *(v9 + 8) - *v9;
  if (v11 != *(v10 + 8) - *v10 || memcmp(*v9, *v10, v11))
  {
    return 0;
  }

  v13 = (*(*v5 + 88))(v5);
  return v13 == (*(*v8 + 88))(v8);
}

void MIL::Validation::VerifyDimSizeIsNumChannels(MIL::IRValueType *a1@<X0>, MIL::IRValueType *a2@<X1>, uint64_t a3@<X2>, MIL::IRObject *a4@<X4>, int a5@<W5>, MIL::ValidationResult *a6@<X8>)
{
  v11 = MIL::IRValueType::AsTensorType(a1);
  v12 = (*(*v11 + 96))(v11);
  v79 = 0;
  v80 = 0;
  v78 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v78, *v12, v12[1], (v12[1] - *v12) >> 3);
  if ((v79 - v78) <= 0x10)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(a4);
    v14 = LocationPtr[1];
    v76 = *LocationPtr;
    v77 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    v15 = std::string::append(&v73, " should be at least rank 3");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v75 = v15->__r_.__value_.__r.__words[2];
    v74 = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationResult::ValidationResult(a6, &v76, 315, &v74);
    if (SHIBYTE(v75) < 0)
    {
      operator delete(v74);
    }

    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if (v77)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v77);
    }

    goto LABEL_26;
  }

  v17 = MIL::IRValueType::AsTensorType(a2);
  v18 = (*(*v17 + 96))(v17);
  memset(&v73, 0, sizeof(v73));
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v73, *v18, v18[1], (v18[1] - *v18) >> 3);
  if (v73.__r_.__value_.__l.__size_ - v73.__r_.__value_.__r.__words[0] == 8)
  {
    v19 = (*(**v73.__r_.__value_.__l.__data_ + 16))();
    if (v19)
    {
      v20 = (*(**(v78 + 1) + 16))(*(v78 + 1));
      v21 = v20;
      if (!v20)
      {
        goto LABEL_15;
      }

      if (!(*(*v20 + 48))(v20))
      {
        goto LABEL_15;
      }

      v22 = (*(*v21 + 48))(v21);
      if (v22 == (*(*v19 + 48))(v19))
      {
        goto LABEL_15;
      }

      if (a5)
      {
        if ((*(*v19 + 48))(v19) == 1)
        {
LABEL_15:
          MIL::ValidationResult::ValidationResult(a6);
          goto LABEL_24;
        }

        v32 = MIL::IRObject::GetLocationPtr(a4);
        v33 = v32[1];
        v62 = *v32;
        v63 = v33;
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::operator+<char>();
        v34 = std::string::append(&v58, "' shape: dimension 0 should be either 1 or equal ");
        v35 = *&v34->__r_.__value_.__l.__data_;
        v59.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
        *&v59.__r_.__value_.__l.__data_ = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        v36 = std::string::append(&v59, "to the size of the number of channels (the size of dimension 1) of input ");
        v37 = *&v36->__r_.__value_.__l.__data_;
        v68.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
        *&v68.__r_.__value_.__l.__data_ = v37;
        v36->__r_.__value_.__l.__size_ = 0;
        v36->__r_.__value_.__r.__words[2] = 0;
        v36->__r_.__value_.__r.__words[0] = 0;
        v38 = *(a3 + 23);
        if (v38 >= 0)
        {
          v39 = a3;
        }

        else
        {
          v39 = *a3;
        }

        if (v38 >= 0)
        {
          v40 = *(a3 + 23);
        }

        else
        {
          v40 = *(a3 + 8);
        }

        v41 = std::string::append(&v68, v39, v40);
        v42 = *&v41->__r_.__value_.__l.__data_;
        v61 = v41->__r_.__value_.__r.__words[2];
        *v60 = v42;
        v41->__r_.__value_.__l.__size_ = 0;
        v41->__r_.__value_.__r.__words[2] = 0;
        v41->__r_.__value_.__r.__words[0] = 0;
        MIL::ValidationResult::ValidationResult(a6, &v62, 315, v60);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(v60[0]);
        }

        if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v68.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        v27 = v63;
        if (!v63)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v43 = MIL::IRObject::GetLocationPtr(a4);
        v44 = v43[1];
        v56 = *v43;
        v57 = v44;
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::operator+<char>();
        v45 = std::string::append(&v58, "' shape: dimension 0 should be equal ");
        v46 = *&v45->__r_.__value_.__l.__data_;
        v59.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
        *&v59.__r_.__value_.__l.__data_ = v46;
        v45->__r_.__value_.__l.__size_ = 0;
        v45->__r_.__value_.__r.__words[2] = 0;
        v45->__r_.__value_.__r.__words[0] = 0;
        v47 = std::string::append(&v59, "to the size of the number of channels (the size of dimension 1) of input ");
        v48 = *&v47->__r_.__value_.__l.__data_;
        v68.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
        *&v68.__r_.__value_.__l.__data_ = v48;
        v47->__r_.__value_.__l.__size_ = 0;
        v47->__r_.__value_.__r.__words[2] = 0;
        v47->__r_.__value_.__r.__words[0] = 0;
        v49 = *(a3 + 23);
        if (v49 >= 0)
        {
          v50 = a3;
        }

        else
        {
          v50 = *a3;
        }

        if (v49 >= 0)
        {
          v51 = *(a3 + 23);
        }

        else
        {
          v51 = *(a3 + 8);
        }

        v52 = std::string::append(&v68, v50, v51);
        v53 = *&v52->__r_.__value_.__l.__data_;
        v55 = v52->__r_.__value_.__r.__words[2];
        *v54 = v53;
        v52->__r_.__value_.__l.__size_ = 0;
        v52->__r_.__value_.__r.__words[2] = 0;
        v52->__r_.__value_.__r.__words[0] = 0;
        MIL::ValidationResult::ValidationResult(a6, &v56, 315, v54);
        if (SHIBYTE(v55) < 0)
        {
          operator delete(v54[0]);
        }

        if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v68.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        v27 = v57;
        if (!v57)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v28 = MIL::IRObject::GetLocationPtr(a4);
      v29 = v28[1];
      v66 = *v28;
      v67 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::operator+<char>();
      v30 = std::string::append(&v68, "' shape: dimension 0 should be known at compilation");
      v31 = *&v30->__r_.__value_.__l.__data_;
      v65 = v30->__r_.__value_.__r.__words[2];
      *__p = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a6, &v66, 315, __p);
      if (SHIBYTE(v65) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      v27 = v67;
      if (!v67)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v23 = MIL::IRObject::GetLocationPtr(a4);
    v24 = v23[1];
    v71 = *v23;
    v72 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    v25 = std::string::append(&v68, " should be rank 1");
    v26 = *&v25->__r_.__value_.__l.__data_;
    v70 = v25->__r_.__value_.__r.__words[2];
    v69 = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationResult::ValidationResult(a6, &v71, 315, &v69);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(v69);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    v27 = v72;
    if (!v72)
    {
      goto LABEL_24;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
LABEL_24:
  if (v73.__r_.__value_.__r.__words[0])
  {
    v73.__r_.__value_.__l.__size_ = v73.__r_.__value_.__r.__words[0];
    operator delete(v73.__r_.__value_.__l.__data_);
  }

LABEL_26:
  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }
}

void sub_2180E45C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a38);
  }

  v55 = *(v53 - 152);
  if (v55)
  {
    *(v53 - 144) = v55;
    operator delete(v55);
  }

  v56 = *(v53 - 88);
  if (v56)
  {
    *(v53 - 80) = v56;
    operator delete(v56);
  }

  _Unwind_Resume(exception_object);
}

BOOL MIL::Validation::HasUniqueElementsInAxes(MIL::Validation *this, const MIL::IRTensorValue *a2)
{
  v2 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 1065353216;
  v4 = MIL::IRValue::AsTensor(this);
  Data = MIL::IRTensorValue::GetDataView<int>(v4);
  if (v6)
  {
    v7 = Data;
    v8 = 4 * v6;
    do
    {
      v13 = (v2 & (*v7 >> 31)) + *v7;
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int>(&v14, &v13);
      ++v7;
      v8 -= 4;
    }

    while (v8);
  }

  v9 = *(&v15 + 1);
  v10 = (*(*this + 32))(this);
  v11 = v9 == (*(*v10 + 16))(v10);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&v14);
  return v11;
}

void sub_2180E4890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void MIL::Validation::OpToTypeInferenceParams(MIL::IRObject *a1@<X0>, void *a2@<X1>, MIL::ValidationResult *a3@<X8>)
{
  v4 = (*(*a1 + 160))(a1);
  v5 = *v4;
  v29 = v4 + 1;
  if (*v4 == (v4 + 1))
  {
LABEL_22:
    MIL::ValidationResult::ValidationResult(a3);
    return;
  }

  v6 = a1 + 64;
  while (1)
  {
    v7 = *(v5 + 55);
    if ((v7 & 0x8000000000000000) != 0)
    {
      v7 = v5[5];
    }

    if (!v7)
    {
      LocationPtr = MIL::IRObject::GetLocationPtr(a1);
      v26 = LocationPtr[1];
      v44 = *LocationPtr;
      v45 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v42, "Operation parameter names must be non-empty.");
      MIL::ValidationResult::ValidationResult(a3, &v44, 316, v42);
      if (v43 < 0)
      {
        operator delete(v42[0]);
      }

      v20 = v45;
      if (v45)
      {
        goto LABEL_28;
      }

      return;
    }

    v31.__r_.__value_.__r.__words[0] = (v5 + 4);
    v8 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, v5 + 4);
    std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__assign_with_size[abi:ne200100]<std::shared_ptr<MIL::IRTypedArgument> const*,std::shared_ptr<MIL::IRTypedArgument> const*>(v8 + 5, 0, 0, 0);
    v9 = v5[7];
    if (v9 != v5[8])
    {
      break;
    }

    v15 = v5[1];
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
        v16 = v5[2];
        v17 = *v16 == v5;
        v5 = v16;
      }

      while (!v17);
    }

    v5 = v16;
    if (v16 == v29)
    {
      goto LABEL_22;
    }
  }

  v10 = (*(**v9 + 32))();
  if (!v10)
  {
    v31.__r_.__value_.__r.__words[0] = (v5 + 4);
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, v5 + 4);
    (*(**v9 + 48))(&v30);
    MIL::IRTypedArgument::Make();
  }

  v11 = v10;
  v12 = *(v10 + 23);
  if (v12 < 0)
  {
    v12 = *(v10 + 8);
  }

  if (v12)
  {
    (*(*v6 + 56))(&v37, v6, v10, 1);
    if (v37)
    {
      v31.__r_.__value_.__r.__words[0] = (v5 + 4);
      std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, v5 + 4);
      v36 = v37;
      v37 = 0uLL;
      MIL::IRTypedArgument::Make();
    }

    v13 = (*(*v6 + 24))(v6, v11, 1);
    if (v13)
    {
      v31.__r_.__value_.__r.__words[0] = (v5 + 4);
      std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, v5 + 4);
      MIL::IRTypedArgument::Make(v13, v14);
    }

    v21 = MIL::IRObject::GetLocationPtr(a1);
    v22 = v21[1];
    v34 = *v21;
    v35 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    v23 = std::string::append(&v31, "' used as operation input.");
    v24 = *&v23->__r_.__value_.__l.__data_;
    v33 = v23->__r_.__value_.__r.__words[2];
    *v32 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationResult::ValidationResult(a3, &v34, 305, v32);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32[0]);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    v20 = *(&v37 + 1);
    if (!*(&v37 + 1))
    {
      return;
    }

LABEL_28:
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    return;
  }

  v18 = MIL::IRObject::GetLocationPtr(a1);
  v19 = v18[1];
  v40 = *v18;
  v41 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Operation argument names must be non-empty.");
  MIL::ValidationResult::ValidationResult(a3, &v40, 301, __p);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v20 = v41;
  if (v41)
  {
    goto LABEL_28;
  }
}

void sub_2180E4EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (*(v41 - 105) < 0)
  {
    operator delete(*(v41 - 128));
  }

  v43 = *(v41 - 96);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  _Unwind_Resume(exception_object);
}

BOOL MIL::Validation::IsZeroOutOfRangeForReshape(void *a1, MIL::IRTensorValueType *this)
{
  v2 = 4 * a1[1];
  while (v2)
  {
    v3 = *(*a1 - 4 + v2);
    v2 -= 4;
    if (!v3)
    {
      return MIL::IRTensorValueType::Rank(this) < (v2 + 4) >> 2;
    }
  }

  return 0;
}

BOOL MIL::Validation::VariadicTensorsDTypesMatch(MIL::IRObject *a1, uint64_t a2)
{
  ParameterType = MIL::IROperation::GetParameterType(a1);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  v6 = (*(*v5 + 88))(v5);
  v7 = (*(*a1 + 152))(a1, a2);
  if (v7 < 2)
  {
    return 1;
  }

  v9 = v7;
  v10 = MIL::IROperation::GetParameterType(a1);
  v11 = MIL::IRValueType::AsTensorType(v10);
  if ((*(*v11 + 88))(v11) != v6)
  {
    return 0;
  }

  v12 = 2;
  do
  {
    v13 = v12;
    if (v9 == v12)
    {
      break;
    }

    v14 = MIL::IROperation::GetParameterType(a1);
    v15 = MIL::IRValueType::AsTensorType(v14);
    v16 = (*(*v15 + 88))(v15);
    v12 = v13 + 1;
  }

  while (v16 == v6);
  return v13 >= v9;
}

uint64_t MIL::Validation::IsEqualConstShape(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v6 = 0;
  while (1)
  {
    result = (*(**(v2 + 8 * v6) + 16))(*(v2 + 8 * v6));
    if (!result)
    {
      break;
    }

    result = (*(**(*a2 + 8 * v6) + 16))(*(*a2 + 8 * v6));
    if (!result)
    {
      break;
    }

    v8 = (*(**(*a1 + 8 * v6) + 16))(*(*a1 + 8 * v6));
    v9 = (*(*v8 + 48))(v8);
    v10 = (*(**(*a2 + 8 * v6) + 16))(*(*a2 + 8 * v6));
    if (v9 != (*(*v10 + 48))(v10))
    {
      return 0;
    }

    ++v6;
    v2 = *a1;
    if (v6 >= (a1[1] - *a1) >> 3)
    {
      return 1;
    }
  }

  return result;
}

void MIL::Validation::ValidateBaseArgReductionCommon(MIL::Validation *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v49, "output_dtype");
  IsParameterSet = MIL::IROperation::IsParameterSet(this, &v49.__r_.__value_.__l.__data_);
  v6 = IsParameterSet;
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!IsParameterSet)
    {
      goto LABEL_17;
    }

LABEL_5:
    OutputType = MIL::IROperation::GetOutputType(this, 0);
    v8 = MIL::IRValueType::AsTensorType(OutputType);
    v9 = (*(*v8 + 88))(v8);
    std::string::basic_string[abi:ne200100]<0>(&v48, "output_dtype");
    ParameterValue = MIL::IROperation::GetParameterValue(this);
    v11 = MIL::IRValue::AsTensor(ParameterValue);
    MIL::IRValue::GetScalar<std::string>(v11, &v49);
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    v12 = MIL::StringToIRDataType(&v49.__r_.__value_.__l.__data_, 0);
    if (v12 != v9)
    {
      LocationPtr = MIL::IRObject::GetLocationPtr(this);
      v14 = LocationPtr[1];
      v46 = *LocationPtr;
      v47 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "output_dtype, if set, must match the datatype of the output");
      MIL::ValidationResult::ValidationResult(a2, &v46, 315, __p);
      if (v45 < 0)
      {
        operator delete(__p[0]);
      }

      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (v12 != v9)
    {
      return;
    }

    goto LABEL_17;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_17:
  std::string::basic_string[abi:ne200100]<0>(&v49, "axis");
  v15 = MIL::IROperation::IsParameterSet(this, &v49.__r_.__value_.__l.__data_);
  v16 = v15;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
    if (!v16)
    {
LABEL_28:
      MIL::ValidationResult::ValidationResult(a2);
      return;
    }
  }

  else if (!v15)
  {
    goto LABEL_28;
  }

  std::string::basic_string[abi:ne200100]<0>(&v49, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v18 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (((*(*v18 + 104))(v18) & 1) == 0)
  {
    goto LABEL_28;
  }

  v19 = MIL::IRTensorValueType::Rank(v18);
  std::string::basic_string[abi:ne200100]<0>(&v49, "axis");
  v20 = MIL::IROperation::GetParameterValue(this);
  v21 = MIL::IRValue::GetScalar<int>(v20);
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (v21 < v19 && v21 >= -v19)
  {
    goto LABEL_28;
  }

  v22 = MIL::IRObject::GetLocationPtr(this);
  v23 = v22[1];
  v42 = *v22;
  v43 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*this + 56))(this);
  std::operator+<char>();
  v24 = std::string::append(&v38, ", 'axis' must be within range (-x_rank - 1, x_rank) (exclusive). Provided axis: ");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v37, v21);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &v37;
  }

  else
  {
    v26 = v37.__r_.__value_.__r.__words[0];
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v37.__r_.__value_.__l.__size_;
  }

  v28 = std::string::append(&v39, v26, size);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v48, "for input with rank: ");
  v31 = *&v30->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v36, v19);
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &v36;
  }

  else
  {
    v32 = v36.__r_.__value_.__r.__words[0];
  }

  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v33 = v36.__r_.__value_.__l.__size_;
  }

  v34 = std::string::append(&v49, v32, v33);
  v35 = *&v34->__r_.__value_.__l.__data_;
  v41 = v34->__r_.__value_.__r.__words[2];
  *v40 = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  MIL::ValidationResult::ValidationResult(a2, &v42, 315, v40);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }
}

void sub_2180E57F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, std::__shared_weak_count *a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v48 - 57) < 0)
  {
    operator delete(*(v48 - 80));
  }

  if (*(v48 - 89) < 0)
  {
    operator delete(*(v48 - 112));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a42);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Validation::GetIntTensorValueCasted(MIL::Validation *this@<X0>, const MIL::IRTensorValue *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = (*(*this + 32))(this, a2);
  v6 = (*(*v5 + 88))(v5);
  if (v6 <= 10)
  {
    if (v6 == 9)
    {
      Data = MIL::IRTensorValue::GetDataView<signed char>(this);
      v25 = v24;
      if (v24)
      {
        v26 = Data;
        do
        {
          v28 = *v26;
          std::vector<int>::push_back[abi:ne200100](a3, &v28);
          ++v26;
          --v25;
        }

        while (v25);
      }
    }

    else
    {
      if (v6 != 10)
      {
        goto LABEL_27;
      }

      v11 = MIL::IRTensorValue::GetDataView<short>(this);
      if (v12)
      {
        v13 = v11;
        v14 = 2 * v12;
        do
        {
          v28 = *v13;
          std::vector<int>::push_back[abi:ne200100](a3, &v28);
          ++v13;
          v14 -= 2;
        }

        while (v14);
      }
    }
  }

  else
  {
    switch(v6)
    {
      case 11:
        v15 = MIL::IRTensorValue::GetDataView<int>(this);
        if (v16)
        {
          v17 = v15;
          v18 = 4 * v16;
          do
          {
            v28 = *v17;
            std::vector<int>::push_back[abi:ne200100](a3, &v28);
            ++v17;
            v18 -= 4;
          }

          while (v18);
        }

        break;
      case 14:
        v19 = MIL::IRTensorValue::GetDataView<unsigned char>(this);
        v21 = v20;
        if (v20)
        {
          v22 = v19;
          do
          {
            v28 = *v22;
            std::vector<int>::push_back[abi:ne200100](a3, &v28);
            ++v22;
            --v21;
          }

          while (v21);
        }

        break;
      case 15:
        v7 = MIL::IRTensorValue::GetDataView<unsigned short>(this);
        if (v8)
        {
          v9 = v7;
          v10 = 2 * v8;
          do
          {
            v28 = *v9;
            std::vector<int>::push_back[abi:ne200100](a3, &v28);
            ++v9;
            v10 -= 2;
          }

          while (v10);
        }

        return;
      default:
LABEL_27:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Unsupported shape cast to int32_t.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }
}

void sub_2180E5B24(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void MIL::Validation::ValidateViaTypeInference(MIL::Validation *this, const MIL::IROperation *a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 1065353216;
  v3 = (*(*this + 160))(this, a2);
  v5 = (v3 + 8);
  v4 = *v3;
  if (*v3 != (v3 + 8))
  {
    do
    {
      *&v14 = v4 + 4;
      v6 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v17, v4 + 4);
      std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__assign_with_size[abi:ne200100]<std::shared_ptr<MIL::IRTypedArgument> const*,std::shared_ptr<MIL::IRTypedArgument> const*>(v6 + 5, 0, 0, 0);
      if (v4[8] != v4[7])
      {
        MIL::IROperation::TryGetParameterValueSharedPtr(this, (v4 + 4), 0, &v14);
        ParameterType = MIL::IROperation::GetParameterType(this);
        v8 = MIL::IRValueType::AsTensorType(ParameterType);
        if (v14)
        {
          v15 = v4 + 4;
          std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v17, v4 + 4);
          v16 = v14;
          if (*(&v14 + 1))
          {
            atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          MIL::IRTypedArgument::Make();
        }

        v9 = v8;
        v15 = v4 + 4;
        std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v17, v4 + 4);
        MIL::IRTypedArgument::Make(v9, v10);
      }

      v11 = v4[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v4[2];
          v13 = *v12 == v4;
          v4 = v12;
        }

        while (!v13);
      }

      v4 = v12;
    }

    while (v12 != v5);
  }

  MIL::MILContext::Make(v3);
}

void sub_2180E65BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  std::ostringstream::~ostringstream(&a34);
  operator delete(v35);
  v38 = *(v36 - 168);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(v36 - 144);
  _Unwind_Resume(a1);
}

BOOL MIL::Validation::CanBroadcastShapes(uint64_t **a1)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  std::vector<std::vector<float>>::reserve(&v23, 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1));
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v4 = 0;
    do
    {
      if (v4 <= (v2[1] - *v2) >> 3)
      {
        v4 = (v2[1] - *v2) >> 3;
      }

      __p = 0;
      v21 = 0;
      v22 = 0;
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v2, v2[1], (v2[1] - *v2) >> 3);
      v5 = v21 - 8;
      if (__p != v21 && v5 > __p)
      {
        v7 = __p + 8;
        do
        {
          v8 = *(v7 - 1);
          *(v7 - 1) = *v5;
          *v5 = v8;
          v5 -= 8;
          v9 = v7 >= v5;
          v7 += 8;
        }

        while (!v9);
      }

      std::vector<std::vector<float>>::push_back[abi:ne200100](&v23, &__p);
      if (__p)
      {
        v21 = __p;
        operator delete(__p);
      }

      v2 += 3;
    }

    while (v2 != v3);
    if (v4)
    {
      v10 = 0;
      for (i = 0; i != v4; v10 = i >= v4)
      {
        v12 = v23;
        v13 = v24;
        if (v23 != v24)
        {
          v14 = 1;
          do
          {
            if (i < (v12[1] - *v12) >> 3)
            {
              v15 = (*(**(*v12 + 8 * i) + 16))(*(*v12 + 8 * i));
              if (v15)
              {
                v16 = (*(*v15 + 48))(v15);
                if (v16 != 1 && v14 != 1 && v16 != v14)
                {
                  goto LABEL_35;
                }

                if (v16 > v14)
                {
                  v14 = v16;
                }
              }
            }

            v12 += 3;
          }

          while (v12 != v13);
        }

        ++i;
      }
    }
  }

  v10 = 1;
LABEL_35:
  __p = &v23;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  return v10;
}

void sub_2180E6B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  a9 = &a12;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_2180E6B48(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2180E6B30);
}

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int>(void *a1, int *a2)
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

void std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__assign_with_size[abi:ne200100]<std::shared_ptr<MIL::IRTypedArgument> const*,std::shared_ptr<MIL::IRTypedArgument> const*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
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
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRTypedArgument>>,std::shared_ptr<MIL::IRTypedArgument>*,std::shared_ptr<MIL::IRTypedArgument>*,std::shared_ptr<MIL::IRTypedArgument>*>(a1, (a2 + v12), a3, a1[1]);
  }
}

void std::__shared_ptr_pointer<MIL::MILContext  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::MILContext  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::MILContext  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void MIL::IRProgramValidator::Validate(MIL::IRProgramValidator *this@<X0>, const MIL::IRProgram *a2@<X1>, MIL::ValidationResult *a3@<X8>)
{
  v4 = *((*(*this + 72))(this, a2) + 16);
  if (!v4)
  {
LABEL_85:
    MIL::ValidationResult::ValidationResult(a3);
    return;
  }

  while (1)
  {
    v5 = *(v4 + 39);
    if (v5 < 0)
    {
      v5 = v4[3];
    }

    if (!v5)
    {
      LocationPtr = MIL::IRObject::GetLocationPtr(this);
      v39 = LocationPtr[1];
      v66.__r_.__value_.__r.__words[0] = *LocationPtr;
      v66.__r_.__value_.__l.__size_ = v39;
      if (v39)
      {
        atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&v67, "Function names must be non-empty.");
      MIL::ValidationResult::ValidationResult(v59, &v66, 202, &v67);
      goto LABEL_58;
    }

    Function = MIL::IRProgram::GetFunction(this);
    v7 = (*(*Function + 128))(Function);
    v9 = v7 + 1;
    v8 = *v7;
    if (*v7 != v7 + 1)
    {
      while (1)
      {
        v10 = *(v8 + 55);
        if (v10 < 0)
        {
          v10 = v8[5];
        }

        if (!v10)
        {
          break;
        }

        if ((*(*(this + 8) + 24))(this + 64, v8 + 4, 1))
        {
          v44 = MIL::IRObject::GetLocationPtr(Function);
          v45 = *(v44 + 8);
          __p = *v44;
          v62 = v45;
          if (v45)
          {
            atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::operator+<char>();
          v46 = std::string::append(&v66, "' shadows an earlier declaration.");
          v47 = *&v46->__r_.__value_.__l.__data_;
          v68 = v46->__r_.__value_.__r.__words[2];
          v67 = v47;
          v46->__r_.__value_.__l.__size_ = 0;
          v46->__r_.__value_.__r.__words[2] = 0;
          v46->__r_.__value_.__r.__words[0] = 0;
          MIL::ValidationResult::ValidationResult(v59, &__p, 207, &v67);
          goto LABEL_68;
        }

        if (!v8[7])
        {
          v48 = MIL::IRObject::GetLocationPtr(Function);
          v49 = v48[1];
          v66.__r_.__value_.__r.__words[0] = *v48;
          v66.__r_.__value_.__l.__size_ = v49;
          if (v49)
          {
            atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(&v67, "Function parameter types must be non-null.");
          MIL::ValidationResult::ValidationResult(v59, &v66, 208, &v67);
          goto LABEL_58;
        }

        v11 = v8[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v8[2];
            v13 = *v12 == v8;
            v8 = v12;
          }

          while (!v13);
        }

        v8 = v12;
        if (v12 == v9)
        {
          goto LABEL_17;
        }
      }

      v42 = MIL::IRObject::GetLocationPtr(Function);
      v43 = v42[1];
      v66.__r_.__value_.__r.__words[0] = *v42;
      v66.__r_.__value_.__l.__size_ = v43;
      if (v43)
      {
        atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&v67, "Function parameter names must be non-empty.");
      MIL::ValidationResult::ValidationResult(v59, &v66, 206, &v67);
LABEL_58:
      if (SHIBYTE(v68) < 0)
      {
        operator delete(v67);
      }

      size = v66.__r_.__value_.__l.__size_;
      if (v66.__r_.__value_.__l.__size_)
      {
        goto LABEL_61;
      }

      goto LABEL_62;
    }

LABEL_17:
    (*(*Function + 160))(&v67, Function);
    v14 = v67;
    v15 = (*(*Function + 40))(Function);
    v16 = (*(*v15 + 88))(v15);
    v18 = *v16;
    v17 = v16[1];
    if (v67)
    {
      *(&v67 + 1) = v67;
      operator delete(v67);
    }

    if ((*(&v14 + 1) - v14) >> 3 != 0xAAAAAAAAAAAAAAABLL * ((v17 - v18) >> 3))
    {
      v40 = MIL::IRObject::GetLocationPtr(Function);
      v41 = v40[1];
      v66.__r_.__value_.__r.__words[0] = *v40;
      v66.__r_.__value_.__l.__size_ = v41;
      if (v41)
      {
        atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&v67, "A function must return the same number of values as its block.");
      MIL::ValidationResult::ValidationResult(v59, &v66, 200, &v67);
      goto LABEL_58;
    }

    v19 = (*(*this + 40))(this);
    v20 = (*(*Function + 32))(Function);
    if ((*(*v19 + 16))(v19, v20))
    {
      v21 = (*(*Function + 112))(Function);
      v23 = v21 + 1;
      v22 = *v21;
      if (*v21 == v21 + 1)
      {
LABEL_29:
        (*(*Function + 160))(&v67, Function);
        if (*(&v67 + 1) == v67)
        {
LABEL_42:
          MIL::ValidationResult::ValidationResult(v59);
        }

        else
        {
          v29 = 0;
          v30 = 0;
          v31 = ((*(&v67 + 1) - v67) >> 3) <= 1 ? 1 : (*(&v67 + 1) - v67) >> 3;
          while (1)
          {
            if (v30 >= (*(&v67 + 1) - v67) >> 3)
            {
              std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
            }

            v32 = *(v67 + 8 * v30);
            v33 = (*(*Function + 40))(Function);
            v34 = (*(*v33 + 88))(v33);
            if (0xAAAAAAAAAAAAAAABLL * ((v34[1] - *v34) >> 3) <= v30)
            {
              std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
            }

            v35 = (*v34 + v29);
            if (*(v35 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v66, *v35, *(v35 + 1));
            }

            else
            {
              v36 = *v35;
              v66.__r_.__value_.__r.__words[2] = *(v35 + 2);
              *&v66.__r_.__value_.__l.__data_ = v36;
            }

            v37 = (*(*Function + 40))(Function);
            if (v32 != (*(*(v37 + 64) + 16))())
            {
              break;
            }

            if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v66.__r_.__value_.__l.__data_);
            }

            ++v30;
            v29 += 24;
            if (v31 == v30)
            {
              goto LABEL_42;
            }
          }

          v55 = MIL::IRObject::GetLocationPtr(Function);
          v56 = v55[1];
          v64 = *v55;
          v65 = v56;
          if (v56)
          {
            atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, "A function must return the same types as its block.");
          MIL::ValidationResult::ValidationResult(v59, &v64, 201, &__p);
          if (v63 < 0)
          {
            operator delete(__p);
          }

          if (v65)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v65);
          }

          if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v66.__r_.__value_.__l.__data_);
          }
        }

        if (v67)
        {
          *(&v67 + 1) = v67;
          operator delete(v67);
        }
      }

      else
      {
        while (1)
        {
          v24 = (*(*this + 40))(this);
          v25 = (*(*v24 + 16))(v24, v22 + 4);
          v26 = (*(*this + 40))(this);
          MIL::IROpset::GetReversedOperatorNamesMap(v25, &v66);
          std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&v66);
          if (((*(v67 + 16))(&v67) & 1) == 0)
          {
            break;
          }

          MIL::ValidationResult::~ValidationResult(&v67);
          v27 = v22[1];
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
              v28 = v22[2];
              v13 = *v28 == v22;
              v22 = v28;
            }

            while (!v13);
          }

          v22 = v28;
          if (v28 == v23)
          {
            goto LABEL_29;
          }
        }

        MIL::MILResult::MILResult(v59, &v67);
        v59[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
        v60 = v69;
        MIL::ValidationResult::~ValidationResult(&v67);
      }
    }

    else
    {
      v51 = MIL::IRObject::GetLocationPtr(Function);
      v52 = *(v51 + 8);
      __p = *v51;
      v62 = v52;
      if (v52)
      {
        atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*Function + 32))(Function);
      std::operator+<char>();
      v53 = std::string::append(&v66, "' not in context.");
      v54 = *&v53->__r_.__value_.__l.__data_;
      v68 = v53->__r_.__value_.__r.__words[2];
      v67 = v54;
      v53->__r_.__value_.__l.__size_ = 0;
      v53->__r_.__value_.__r.__words[2] = 0;
      v53->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(v59, &__p, 204, &v67);
LABEL_68:
      if (SHIBYTE(v68) < 0)
      {
        operator delete(v67);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      size = v62;
      if (v62)
      {
LABEL_61:
        std::__shared_weak_count::__release_shared[abi:ne200100](size);
      }
    }

LABEL_62:
    if (((*(v59[0].__r_.__value_.__r.__words[0] + 16))(v59) & 1) == 0)
    {
      break;
    }

    MIL::ValidationResult::~ValidationResult(v59);
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_85;
    }
  }

  v57 = MIL::MILResult::MILResult(a3, v59);
  v57->__r_.__value_.__r.__words[0] = &unk_2829E9B70;
  LODWORD(v57[2].__r_.__value_.__l.__data_) = v60;
  MIL::ValidationResult::~ValidationResult(v59);
}

void sub_2180E78A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  v33 = *(v31 - 144);
  if (v33)
  {
    *(v31 - 136) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::ValidateBlock(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, MIL::IRObject *a4@<X3>, MIL::ValidationResult *a5@<X8>)
{
  v8 = a4 + 64;
  v9 = (*(*(a4 + 8) + 72))(a4 + 64);
  v10 = (*(*a4 + 40))(a4);
  v11 = *v10;
  v12 = *(v10 + 8);
  while (v11 != v12)
  {
    Name = MIL::IRNamedValueType::GetName(*v11);
    v14 = *(Name + 23);
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(Name + 8);
    }

    if (!v14)
    {
      LocationPtr = MIL::IRObject::GetLocationPtr(a4);
      v104 = LocationPtr[1];
      v135 = *LocationPtr;
      v136 = v104;
      if (v104)
      {
        atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v133, "Block parameter names must be non-empty.");
      MIL::ValidationResult::ValidationResult(a5, &v135, 105, v133);
      if (v134 < 0)
      {
        operator delete(v133[0]);
      }

      v105 = v136;
      if (!v136)
      {
        return;
      }

      goto LABEL_193;
    }

    if (v9 && (*(*v9 + 24))(v9, Name, 1))
    {
      v106 = MIL::IRObject::GetLocationPtr(a4);
      v107 = v106[1];
      v131 = *v106;
      v132 = v107;
      if (v107)
      {
        atomic_fetch_add_explicit(&v107->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::operator+<char>();
      v108 = std::string::append(__p, "' shadows an earlier declaration.");
      v109 = *&v108->__r_.__value_.__l.__data_;
      v130 = v108->__r_.__value_.__r.__words[2];
      v129 = v109;
      v108->__r_.__value_.__l.__size_ = 0;
      v108->__r_.__value_.__r.__words[2] = 0;
      v108->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a5, &v131, 106, &v129);
      if (SHIBYTE(v130) < 0)
      {
        operator delete(v129);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      v105 = v132;
      if (!v132)
      {
        return;
      }

      goto LABEL_193;
    }

    v11 += 2;
  }

  v15 = (*(*a4 + 88))(a4);
  v17 = *v15;
  v16 = v15[1];
  while (1)
  {
    if (v17 == v16)
    {
      v19 = (*(*a4 + 56))(a4);
      v21 = **v19;
      v20 = (*v19)[1];
      if (v21 == v20)
      {
LABEL_171:
        MIL::ValidationResult::ValidationResult(a5);
        return;
      }

      while (1)
      {
        v22 = *v21;
        v23 = (*(**v21 + 104))(*v21);
        v24 = v23 ? (*(*(v23 + 64) + 72))() : 0;
        (*(*v22 + 200))(__p, v22);
        size = __p[0].__r_.__value_.__l.__size_;
        for (i = __p[0].__r_.__value_.__r.__words[0]; i != size; i += 24)
        {
          if (v24 && (*(*v24 + 24))(v24, i, 1))
          {
            v36 = MIL::IRObject::GetLocationPtr(v22);
            v37 = v36[1];
            v143.__r_.__value_.__r.__words[0] = *v36;
            v143.__r_.__value_.__l.__size_ = v37;
            if (v37)
            {
              atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
            }

            std::operator+<char>();
            v38 = std::string::append(&v146, "' shadows an earlier declaration.");
            v39 = *&v38->__r_.__value_.__l.__data_;
            __dst.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
            *&__dst.__r_.__value_.__l.__data_ = v39;
            v38->__r_.__value_.__l.__size_ = 0;
            v38->__r_.__value_.__r.__words[2] = 0;
            v38->__r_.__value_.__r.__words[0] = 0;
            MIL::ValidationResult::ValidationResult(v119, &v143, 312, &__dst);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v146.__r_.__value_.__l.__data_);
            }

            if (v143.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v143.__r_.__value_.__l.__size_);
            }

            v146.__r_.__value_.__r.__words[0] = __p;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v146);
            goto LABEL_116;
          }
        }

        __dst.__r_.__value_.__r.__words[0] = __p;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__dst);
        v27 = (*(*v22 + 72))(v22);
        if (v27)
        {
          break;
        }

        v32 = MIL::IRObject::GetLocationPtr(v22);
        v33 = v32[1];
        v146.__r_.__value_.__r.__words[0] = *v32;
        v146.__r_.__value_.__l.__size_ = v33;
        if (v33)
        {
          atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
        }

        (*(*v22 + 56))(v22);
        std::operator+<char>();
        v34 = std::string::append(&__dst, " does not exist in this context.");
        v35 = *&v34->__r_.__value_.__l.__data_;
        __p[0].__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
        *&__p[0].__r_.__value_.__l.__data_ = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        MIL::ValidationResult::ValidationResult(v119, &v146, 309, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (v146.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v146.__r_.__value_.__l.__size_);
        }

LABEL_116:
        if (((*(v119[0].__r_.__value_.__r.__words[0] + 16))(v119) & 1) == 0)
        {
          v116 = MIL::MILResult::MILResult(a5, v119);
          v116->__r_.__value_.__r.__words[0] = &unk_2829E9B70;
          LODWORD(v116[2].__r_.__value_.__l.__data_) = v120;
          MIL::ValidationResult::~ValidationResult(v119);
          return;
        }

        MIL::ValidationResult::~ValidationResult(v119);
        v21 += 2;
        if (v21 == v20)
        {
          goto LABEL_171;
        }
      }

      v28 = v27;
      v29 = (*(*a2 + 16))(a2);
      if (v30 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v31 = v30;
      if (v30 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v30;
      if (v30)
      {
        memmove(&__dst, v29, v30);
      }

      __dst.__r_.__value_.__s.__data_[v31] = 0;
      if ((*(*v22 + 232))(v22))
      {
        v40 = (*(*v22 + 232))(v22);
        v41 = (*(*v40 + 16))(v40);
        MEMORY[0x21CEAF980](&__dst, v41, v42);
        v43 = (*(*a1 + 16))(a1, &__dst);
        if (v43 != (*(*v22 + 232))(v22))
        {
          v44 = MIL::IRObject::GetLocationPtr(v22);
          v45 = v44[1];
          v143.__r_.__value_.__r.__words[0] = *v44;
          v143.__r_.__value_.__l.__size_ = v45;
          if (v45)
          {
            atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
          }

          std::operator+<char>();
          v46 = std::string::append(&v146, " does not exist in this context.");
          v47 = *&v46->__r_.__value_.__l.__data_;
          __p[0].__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
          *&__p[0].__r_.__value_.__l.__data_ = v47;
          v46->__r_.__value_.__l.__size_ = 0;
          v46->__r_.__value_.__r.__words[2] = 0;
          v46->__r_.__value_.__r.__words[0] = 0;
          MIL::ValidationResult::ValidationResult(v119, &v143, 309, __p);
          goto LABEL_54;
        }

        v59 = (*(*v22 + 232))(v22);
        v60 = (*(*v22 + 232))(v22);
        MIL::IROpset::GetReversedOperatorNamesMap(v60, __p);
        v61 = (*(*v28 + 16))(v28);
        v62 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(__p, v61);
        if (v62)
        {
          Operator = MIL::IROpset::TryGetOperator(v59, v62 + 5);
        }

        else
        {
          Operator = 0;
        }

        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(__p);
        if (!Operator)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v49 = (*(*v28 + 16))(v28);
        v50 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v49);
        if (!v50 || (Operator = MIL::IROpset::TryGetOperator(a2, v50 + 5)) == 0)
        {
LABEL_87:
          v70 = MIL::IRObject::GetLocationPtr(v22);
          v71 = v70[1];
          v144 = *v70;
          v145 = v71;
          if (v71)
          {
            atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v22 + 56))(v22);
          std::operator+<char>();
          v72 = std::string::append(&v142, " does not exist in opset ");
          v73 = *&v72->__r_.__value_.__l.__data_;
          v143.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
          *&v143.__r_.__value_.__l.__data_ = v73;
          v72->__r_.__value_.__l.__size_ = 0;
          v72->__r_.__value_.__r.__words[2] = 0;
          v72->__r_.__value_.__r.__words[0] = 0;
          v74 = (*(*a2 + 16))(a2);
          v76 = v75;
          if (v75 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v75 >= 0x17)
          {
            operator new();
          }

          v141 = v75;
          if (v75)
          {
            memmove(&v139, v74, v75);
          }

          *(&v139 + v76) = 0;
          if ((v141 & 0x80u) == 0)
          {
            v77 = &v139;
          }

          else
          {
            v77 = v139;
          }

          if ((v141 & 0x80u) == 0)
          {
            v78 = v141;
          }

          else
          {
            v78 = v140;
          }

          v79 = std::string::append(&v143, v77, v78);
          v80 = *&v79->__r_.__value_.__l.__data_;
          v146.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
          *&v146.__r_.__value_.__l.__data_ = v80;
          v79->__r_.__value_.__l.__size_ = 0;
          v79->__r_.__value_.__r.__words[2] = 0;
          v79->__r_.__value_.__r.__words[0] = 0;
          v81 = std::string::append(&v146, ".");
          v82 = *&v81->__r_.__value_.__l.__data_;
          __p[0].__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
          *&__p[0].__r_.__value_.__l.__data_ = v82;
          v81->__r_.__value_.__l.__size_ = 0;
          v81->__r_.__value_.__r.__words[2] = 0;
          v81->__r_.__value_.__r.__words[0] = 0;
          MIL::ValidationResult::ValidationResult(v119, &v144, 309, __p);
          goto LABEL_102;
        }
      }

      if (v28 != Operator)
      {
        v52 = MIL::IRObject::GetLocationPtr(v22);
        v53 = v52[1];
        v144 = *v52;
        v145 = v53;
        if (v53)
        {
          atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v22 + 56))(v22);
        std::operator+<char>();
        v54 = std::string::append(&v142, ") referenced by this operation does not match the operator defined by expected opset ");
        v55 = *&v54->__r_.__value_.__l.__data_;
        v143.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
        *&v143.__r_.__value_.__l.__data_ = v55;
        v54->__r_.__value_.__l.__size_ = 0;
        v54->__r_.__value_.__r.__words[2] = 0;
        v54->__r_.__value_.__r.__words[0] = 0;
        v56 = (*(*a2 + 16))(a2);
        v58 = v57;
        if (v57 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v57 >= 0x17)
        {
          operator new();
        }

        v141 = v57;
        if (v57)
        {
          memmove(&v139, v56, v57);
        }

        *(&v139 + v58) = 0;
        if ((v141 & 0x80u) == 0)
        {
          v64 = &v139;
        }

        else
        {
          v64 = v139;
        }

        if ((v141 & 0x80u) == 0)
        {
          v65 = v141;
        }

        else
        {
          v65 = v140;
        }

        v66 = std::string::append(&v143, v64, v65);
        v67 = *&v66->__r_.__value_.__l.__data_;
        v146.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
        *&v146.__r_.__value_.__l.__data_ = v67;
        v66->__r_.__value_.__l.__size_ = 0;
        v66->__r_.__value_.__r.__words[2] = 0;
        v66->__r_.__value_.__r.__words[0] = 0;
        v68 = std::string::append(&v146, ". Is it an operator of the same name described by a different opset?");
        v69 = *&v68->__r_.__value_.__l.__data_;
        __p[0].__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
        *&__p[0].__r_.__value_.__l.__data_ = v69;
        v68->__r_.__value_.__l.__size_ = 0;
        v68->__r_.__value_.__r.__words[2] = 0;
        v68->__r_.__value_.__r.__words[0] = 0;
        MIL::ValidationResult::ValidationResult(v119, &v144, 309, __p);
LABEL_102:
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v146.__r_.__value_.__l.__data_);
        }

        if (v141 < 0)
        {
          operator delete(v139);
        }

        if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v143.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v142.__r_.__value_.__l.__data_);
        }

        v48 = v145;
        if (!v145)
        {
          goto LABEL_114;
        }

LABEL_113:
        std::__shared_weak_count::__release_shared[abi:ne200100](v48);
LABEL_114:
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        goto LABEL_116;
      }

      if (!(*(*v28 + 72))(v28))
      {
LABEL_144:
        (*(*v28 + 96))(__p, v28, v22);
        if ((*(__p[0].__r_.__value_.__r.__words[0] + 16))(__p))
        {
          MIL::ValidationResult::~ValidationResult(__p);
          v94 = (*(*v22 + 208))(v22);
          v95 = **v94;
          v96 = (*v94)[1];
          while (v95 != v96)
          {
            if (((*(__p[0].__r_.__value_.__r.__words[0] + 16))(__p) & 1) == 0)
            {
              goto LABEL_151;
            }

            MIL::ValidationResult::~ValidationResult(__p);
            v95 += 2;
          }

          MIL::ValidationResult::ValidationResult(v119);
        }

        else
        {
LABEL_151:
          MIL::MILResult::MILResult(v119, __p);
          v119[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
          v120 = v138;
          MIL::ValidationResult::~ValidationResult(__p);
        }

        goto LABEL_114;
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__dst.__r_.__value_.__l.__size_ == 5)
        {
          if (*__dst.__r_.__value_.__l.__data_ == 829648745 && *(__dst.__r_.__value_.__r.__words[0] + 4) == 53)
          {
            goto LABEL_144;
          }

          if (*__dst.__r_.__value_.__l.__data_ == 829648745 && *(__dst.__r_.__value_.__r.__words[0] + 4) == 54)
          {
            goto LABEL_144;
          }
        }

        if (__dst.__r_.__value_.__l.__size_ != 11)
        {
          goto LABEL_136;
        }

        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (HIBYTE(__dst.__r_.__value_.__r.__words[2]) == 5)
        {
          if (LODWORD(__dst.__r_.__value_.__l.__data_) == 829648745 && __dst.__r_.__value_.__s.__data_[4] == 53)
          {
            goto LABEL_144;
          }

          if (LODWORD(__dst.__r_.__value_.__l.__data_) == 829648745 && __dst.__r_.__value_.__s.__data_[4] == 54)
          {
            goto LABEL_144;
          }

          goto LABEL_136;
        }

        if (HIBYTE(__dst.__r_.__value_.__r.__words[2]) != 11)
        {
LABEL_136:
          v88 = (*(*v22 + 160))(v22);
          v90 = v88 + 1;
          v89 = *v88;
          if (*v88 != (v88 + 1))
          {
            while (1)
            {
              v91 = (*(*v28 + 64))(v28);
              if (!std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v91, v89 + 4))
              {
                break;
              }

              v92 = v89[1];
              if (v92)
              {
                do
                {
                  v93 = v92;
                  v92 = *v92;
                }

                while (v92);
              }

              else
              {
                do
                {
                  v93 = v89[2];
                  v85 = *v93 == v89;
                  v89 = v93;
                }

                while (!v85);
              }

              v89 = v93;
              if (v93 == v90)
              {
                goto LABEL_144;
              }
            }

            v97 = MIL::IRObject::GetLocationPtr(v22);
            v98 = v97[1];
            v143.__r_.__value_.__r.__words[0] = *v97;
            v143.__r_.__value_.__l.__size_ = v98;
            if (v98)
            {
              atomic_fetch_add_explicit((v98 + 8), 1uLL, memory_order_relaxed);
            }

            std::operator+<char>();
            v99 = std::string::append(&v146, "'.");
            v100 = *&v99->__r_.__value_.__l.__data_;
            __p[0].__r_.__value_.__r.__words[2] = v99->__r_.__value_.__r.__words[2];
            *&__p[0].__r_.__value_.__l.__data_ = v100;
            v99->__r_.__value_.__l.__size_ = 0;
            v99->__r_.__value_.__r.__words[2] = 0;
            v99->__r_.__value_.__r.__words[0] = 0;
            MIL::ValidationResult::ValidationResult(v119, &v143, 315, __p);
LABEL_54:
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v146.__r_.__value_.__l.__data_);
            }

            v48 = v143.__r_.__value_.__l.__size_;
            if (!v143.__r_.__value_.__l.__size_)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          }

          goto LABEL_144;
        }

        p_dst = &__dst;
      }

      v83 = p_dst->__r_.__value_.__r.__words[0];
      v84 = *(p_dst->__r_.__value_.__r.__words + 3);
      v85 = v83 == 0x72745F3631736F69 && v84 == 0x6E696172745F3631;
      if (v85)
      {
        goto LABEL_144;
      }

      goto LABEL_136;
    }

    v18 = *(v17 + 23);
    if (v18 < 0)
    {
      v18 = *(v17 + 8);
    }

    if (!v18)
    {
      break;
    }

    if (!(*(*v8 + 24))(v8, v17, 1))
    {
      v112 = MIL::IRObject::GetLocationPtr(a4);
      v113 = v112[1];
      v123 = *v112;
      v124 = v113;
      if (v113)
      {
        atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::operator+<char>();
      v114 = std::string::append(__p, "' used as block output.");
      v115 = *&v114->__r_.__value_.__l.__data_;
      v122 = v114->__r_.__value_.__r.__words[2];
      *v121 = v115;
      v114->__r_.__value_.__l.__size_ = 0;
      v114->__r_.__value_.__r.__words[2] = 0;
      v114->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a5, &v123, 104, v121);
      if (SHIBYTE(v122) < 0)
      {
        operator delete(v121[0]);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      v105 = v124;
      if (!v124)
      {
        return;
      }

LABEL_193:
      std::__shared_weak_count::__release_shared[abi:ne200100](v105);
      return;
    }

    v17 += 24;
  }

  v110 = MIL::IRObject::GetLocationPtr(a4);
  v111 = v110[1];
  v127 = *v110;
  v128 = v111;
  if (v111)
  {
    atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v125, "Block output names must be non-empty.");
  MIL::ValidationResult::ValidationResult(a5, &v127, 101, v125);
  if (v126 < 0)
  {
    operator delete(v125[0]);
  }

  v105 = v128;
  if (v128)
  {
    goto LABEL_193;
  }
}

void sub_2180E8B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  if (*(v56 - 137) < 0)
  {
    operator delete(*(v56 - 160));
  }

  v58 = *(v56 - 200);
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  if (*(v56 - 105) < 0)
  {
    operator delete(*(v56 - 128));
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValidationError::ValidationError(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *__p = *a3;
  v7 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  MIL::ValidationResult::ValidationResult(v9, &v8, a4, __p);
  MIL::ValidationError::ValidationError(a1, v9);
  MIL::ValidationResult::~ValidationResult(v9);
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
  MIL::ValidationResult::ValidationResult(v9, &v8, a4, __p);
  MIL::ValidationError::ValidationError(a1, v9);
  MIL::ValidationResult::~ValidationResult(v9);
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

void sub_2180E8EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, char a19)
{
  MIL::ValidationResult::~ValidationResult(&a19);
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

uint64_t MIL::ValidationError::ValidationError(uint64_t a1, uint64_t a2)
{
  MIL::MILResult::GetMessageWithLocation(a2, &__p);
  MIL::MILErrorWithResult::MILErrorWithResult(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_2829E9B08;
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
  *(a1 + 16) = &unk_2829E9B70;
  *(a1 + 64) = *(a2 + 48);
  return a1;
}

void sub_2180E9004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2180E90B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, char a19)
{
  MIL::ValidationResult::~ValidationResult(&a19);
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

void MIL::ValidationResult::~ValidationResult(void **this)
{
  MIL::MILResult::~MILResult(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::ValidationResult::ValidationResult(MIL::ValidationResult *this)
{
  result = MIL::MILResult::MILResult(this);
  *result = &unk_2829E9B70;
  *(result + 48) = 2;
  return result;
}

{
  result = MIL::MILResult::MILResult(this);
  *result = &unk_2829E9B70;
  *(result + 48) = 2;
  return result;
}

uint64_t MIL::ValidationResult::ValidationResult(uint64_t a1, __int128 *a2, int a3, uint64_t a4)
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

  *a1 = &unk_2829E9B70;
  *(a1 + 48) = a3;
  return a1;
}

void sub_2180E92C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
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

void *MIL::ValueInferenceUtils::GetCastedTensor<float>@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = MIL::ValueInference::Tensor<float>::Tensor(a2);
  v5 = (*(**a1 + 32))(v4);
  v6 = (*(*v5 + 88))(v5);
  if (v6 <= 8)
  {
    if (v6 > 4)
    {
      if (v6 == 5)
      {
        v33 = a1[1];
        v82 = *a1;
        v83 = v33;
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<float>::FromIRTensorValue(&v82, v60);
        if (v83)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }

        MIL::ValueInference::Tensor<float>::Cast<float>(v60, &v77);
        v34 = a2[1];
        if (v34)
        {
          a2[2] = v34;
          operator delete(v34);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v35 = a2[4];
        if (v35)
        {
          a2[5] = v35;
          operator delete(v35);
        }

        *(a2 + 2) = v79;
        v36 = v80;
        v37 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v36;
        a2[7] = v37;
        MIL::ValueInference::Tensor<float>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<float>::~Tensor(v60);
      }

      else
      {
        if (v6 != 7)
        {
          goto LABEL_93;
        }

        v18 = a1[1];
        v75 = *a1;
        v76 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<MIL::Bf16>::FromIRTensorValue(&v75, v60);
        if (v76)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v76);
        }

        MIL::ValueInference::Tensor<MIL::Bf16>::Cast<float>(v60, &v77);
        v19 = a2[1];
        if (v19)
        {
          a2[2] = v19;
          operator delete(v19);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v20 = a2[4];
        if (v20)
        {
          a2[5] = v20;
          operator delete(v20);
        }

        *(a2 + 2) = v79;
        v21 = v80;
        v22 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v21;
        a2[7] = v22;
        MIL::ValueInference::Tensor<float>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<MIL::Bf16>::~Tensor(v60);
      }
    }

    else if (v6 == 2)
    {
      v28 = a1[1];
      v69 = *a1;
      v70 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<BOOL>::FromIRTensorValue(&v69, v60);
      if (v70)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v70);
      }

      MIL::ValueInference::Tensor<BOOL>::Cast<float>(v60, &v77);
      v29 = a2[1];
      if (v29)
      {
        a2[2] = v29;
        operator delete(v29);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v30 = a2[4];
      if (v30)
      {
        a2[5] = v30;
        operator delete(v30);
      }

      *(a2 + 2) = v79;
      v31 = v80;
      v32 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v31;
      a2[7] = v32;
      MIL::ValueInference::Tensor<float>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<BOOL>::~Tensor(v60);
    }

    else
    {
      if (v6 != 4)
      {
        goto LABEL_93;
      }

      v13 = a1[1];
      v73 = *a1;
      v74 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<MIL::Fp16>::FromIRTensorValue(&v73, v60);
      if (v74)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v74);
      }

      MIL::ValueInference::Tensor<MIL::Fp16>::Cast<float>(v60, &v77);
      v14 = a2[1];
      if (v14)
      {
        a2[2] = v14;
        operator delete(v14);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v15 = a2[4];
      if (v15)
      {
        a2[5] = v15;
        operator delete(v15);
      }

      *(a2 + 2) = v79;
      v16 = v80;
      v17 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v16;
      a2[7] = v17;
      MIL::ValueInference::Tensor<float>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor(v60);
    }
  }

  else if (v6 <= 10)
  {
    if (v6 == 9)
    {
      v38 = a1[1];
      v67 = *a1;
      v68 = v38;
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<signed char>::FromIRTensorValue(&v67, v60);
      if (v68)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v68);
      }

      MIL::ValueInference::Tensor<signed char>::Cast<float>(v60, &v77);
      v39 = a2[1];
      if (v39)
      {
        a2[2] = v39;
        operator delete(v39);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v40 = a2[4];
      if (v40)
      {
        a2[5] = v40;
        operator delete(v40);
      }

      *(a2 + 2) = v79;
      v41 = v80;
      v42 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v41;
      a2[7] = v42;
      MIL::ValueInference::Tensor<float>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<signed char>::~Tensor(v60);
    }

    else
    {
      v23 = a1[1];
      v61 = *a1;
      v62 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<short>::FromIRTensorValue(&v61, v60);
      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      MIL::ValueInference::Tensor<short>::Cast<float>(v60, &v77);
      v24 = a2[1];
      if (v24)
      {
        a2[2] = v24;
        operator delete(v24);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v25 = a2[4];
      if (v25)
      {
        a2[5] = v25;
        operator delete(v25);
      }

      *(a2 + 2) = v79;
      v26 = v80;
      v27 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v26;
      a2[7] = v27;
      MIL::ValueInference::Tensor<float>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<short>::~Tensor(v60);
    }
  }

  else
  {
    switch(v6)
    {
      case 11:
        v43 = a1[1];
        v71 = *a1;
        v72 = v43;
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<int>::FromIRTensorValue(&v71, v60);
        if (v72)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v72);
        }

        MIL::ValueInference::Tensor<int>::Cast<float>(v60, &v77);
        v44 = a2[1];
        if (v44)
        {
          a2[2] = v44;
          operator delete(v44);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v45 = a2[4];
        if (v45)
        {
          a2[5] = v45;
          operator delete(v45);
        }

        *(a2 + 2) = v79;
        v46 = v80;
        v47 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v46;
        a2[7] = v47;
        MIL::ValueInference::Tensor<float>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<int>::~Tensor(v60);
      case 14:
        v48 = a1[1];
        v65 = *a1;
        v66 = v48;
        if (v48)
        {
          atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<unsigned char>::FromIRTensorValue(&v65, v60);
        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        MIL::ValueInference::Tensor<unsigned char>::Cast<float>(v60, &v77);
        v49 = a2[1];
        if (v49)
        {
          a2[2] = v49;
          operator delete(v49);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v50 = a2[4];
        if (v50)
        {
          a2[5] = v50;
          operator delete(v50);
        }

        *(a2 + 2) = v79;
        v51 = v80;
        v52 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v51;
        a2[7] = v52;
        MIL::ValueInference::Tensor<float>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<unsigned char>::~Tensor(v60);
      case 15:
        v7 = a1[1];
        v63 = *a1;
        v64 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<unsigned short>::FromIRTensorValue(&v63, v60);
        if (v64)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v64);
        }

        MIL::ValueInference::Tensor<unsigned short>::Cast<float>(v60, &v77);
        v8 = a2[1];
        if (v8)
        {
          a2[2] = v8;
          operator delete(v8);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v9 = a2[4];
        if (v9)
        {
          a2[5] = v9;
          operator delete(v9);
        }

        *(a2 + 2) = v79;
        v10 = v80;
        v11 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v10;
        a2[7] = v11;
        MIL::ValueInference::Tensor<float>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<unsigned short>::~Tensor(v60);
      default:
LABEL_93:
        std::ostringstream::basic_ostringstream[abi:ne200100](v60);
        v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "Unsupported Datatype ", 21);
        v54 = (*(**a1 + 32))();
        v55 = (*(*v54 + 88))(v54);
        MIL::IRDataTypeToString(v55, &v77);
        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = &v77;
        }

        else
        {
          v56 = v77.__r_.__value_.__r.__words[0];
        }

        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v77.__r_.__value_.__l.__size_;
        }

        v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v56, size);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ".", 1);
        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::logic_error::logic_error(exception, &v77);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }
}

void sub_2180E9B3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v5 - 105) < 0)
  {
    operator delete(*(v5 - 128));
    if ((v4 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(va);
      MIL::ValueInference::Tensor<float>::~Tensor(v2);
      _Unwind_Resume(a1);
    }
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v3);
  goto LABEL_6;
}

void *MIL::ValueInferenceUtils::GetCastedTensor<MIL::Fp16>@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = MIL::ValueInference::Tensor<MIL::Fp16>::Tensor(a2);
  v5 = (*(**a1 + 32))(v4);
  v6 = (*(*v5 + 88))(v5);
  if (v6 <= 8)
  {
    if (v6 > 4)
    {
      if (v6 == 5)
      {
        v33 = a1[1];
        v82 = *a1;
        v83 = v33;
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<float>::FromIRTensorValue(&v82, v60);
        if (v83)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }

        MIL::ValueInference::Tensor<float>::Cast<MIL::Fp16>(v60, &v77);
        v34 = a2[1];
        if (v34)
        {
          a2[2] = v34;
          operator delete(v34);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v35 = a2[4];
        if (v35)
        {
          a2[5] = v35;
          operator delete(v35);
        }

        *(a2 + 2) = v79;
        v36 = v80;
        v37 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v36;
        a2[7] = v37;
        MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<float>::~Tensor(v60);
      }

      else
      {
        if (v6 != 7)
        {
          goto LABEL_93;
        }

        v18 = a1[1];
        v75 = *a1;
        v76 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<MIL::Bf16>::FromIRTensorValue(&v75, v60);
        if (v76)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v76);
        }

        MIL::ValueInference::Tensor<MIL::Bf16>::Cast<MIL::Fp16>(v60, &v77);
        v19 = a2[1];
        if (v19)
        {
          a2[2] = v19;
          operator delete(v19);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v20 = a2[4];
        if (v20)
        {
          a2[5] = v20;
          operator delete(v20);
        }

        *(a2 + 2) = v79;
        v21 = v80;
        v22 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v21;
        a2[7] = v22;
        MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<MIL::Bf16>::~Tensor(v60);
      }
    }

    else if (v6 == 2)
    {
      v28 = a1[1];
      v69 = *a1;
      v70 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<BOOL>::FromIRTensorValue(&v69, v60);
      if (v70)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v70);
      }

      MIL::ValueInference::Tensor<BOOL>::Cast<MIL::Fp16>(v60, &v77);
      v29 = a2[1];
      if (v29)
      {
        a2[2] = v29;
        operator delete(v29);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v30 = a2[4];
      if (v30)
      {
        a2[5] = v30;
        operator delete(v30);
      }

      *(a2 + 2) = v79;
      v31 = v80;
      v32 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v31;
      a2[7] = v32;
      MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<BOOL>::~Tensor(v60);
    }

    else
    {
      if (v6 != 4)
      {
        goto LABEL_93;
      }

      v13 = a1[1];
      v73 = *a1;
      v74 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<MIL::Fp16>::FromIRTensorValue(&v73, v60);
      if (v74)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v74);
      }

      MIL::ValueInference::Tensor<MIL::Fp16>::Cast<MIL::Fp16>(v60, &v77);
      v14 = a2[1];
      if (v14)
      {
        a2[2] = v14;
        operator delete(v14);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v15 = a2[4];
      if (v15)
      {
        a2[5] = v15;
        operator delete(v15);
      }

      *(a2 + 2) = v79;
      v16 = v80;
      v17 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v16;
      a2[7] = v17;
      MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor(v60);
    }
  }

  else if (v6 <= 10)
  {
    if (v6 == 9)
    {
      v38 = a1[1];
      v67 = *a1;
      v68 = v38;
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<signed char>::FromIRTensorValue(&v67, v60);
      if (v68)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v68);
      }

      MIL::ValueInference::Tensor<signed char>::Cast<MIL::Fp16>(v60, &v77);
      v39 = a2[1];
      if (v39)
      {
        a2[2] = v39;
        operator delete(v39);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v40 = a2[4];
      if (v40)
      {
        a2[5] = v40;
        operator delete(v40);
      }

      *(a2 + 2) = v79;
      v41 = v80;
      v42 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v41;
      a2[7] = v42;
      MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<signed char>::~Tensor(v60);
    }

    else
    {
      v23 = a1[1];
      v61 = *a1;
      v62 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<short>::FromIRTensorValue(&v61, v60);
      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      MIL::ValueInference::Tensor<short>::Cast<MIL::Fp16>(v60, &v77);
      v24 = a2[1];
      if (v24)
      {
        a2[2] = v24;
        operator delete(v24);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v25 = a2[4];
      if (v25)
      {
        a2[5] = v25;
        operator delete(v25);
      }

      *(a2 + 2) = v79;
      v26 = v80;
      v27 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v26;
      a2[7] = v27;
      MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<short>::~Tensor(v60);
    }
  }

  else
  {
    switch(v6)
    {
      case 11:
        v43 = a1[1];
        v71 = *a1;
        v72 = v43;
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<int>::FromIRTensorValue(&v71, v60);
        if (v72)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v72);
        }

        MIL::ValueInference::Tensor<int>::Cast<MIL::Fp16>(v60, &v77);
        v44 = a2[1];
        if (v44)
        {
          a2[2] = v44;
          operator delete(v44);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v45 = a2[4];
        if (v45)
        {
          a2[5] = v45;
          operator delete(v45);
        }

        *(a2 + 2) = v79;
        v46 = v80;
        v47 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v46;
        a2[7] = v47;
        MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<int>::~Tensor(v60);
      case 14:
        v48 = a1[1];
        v65 = *a1;
        v66 = v48;
        if (v48)
        {
          atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<unsigned char>::FromIRTensorValue(&v65, v60);
        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        MIL::ValueInference::Tensor<unsigned char>::Cast<MIL::Fp16>(v60, &v77);
        v49 = a2[1];
        if (v49)
        {
          a2[2] = v49;
          operator delete(v49);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v50 = a2[4];
        if (v50)
        {
          a2[5] = v50;
          operator delete(v50);
        }

        *(a2 + 2) = v79;
        v51 = v80;
        v52 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v51;
        a2[7] = v52;
        MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<unsigned char>::~Tensor(v60);
      case 15:
        v7 = a1[1];
        v63 = *a1;
        v64 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<unsigned short>::FromIRTensorValue(&v63, v60);
        if (v64)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v64);
        }

        MIL::ValueInference::Tensor<unsigned short>::Cast<MIL::Fp16>(v60, &v77);
        v8 = a2[1];
        if (v8)
        {
          a2[2] = v8;
          operator delete(v8);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v9 = a2[4];
        if (v9)
        {
          a2[5] = v9;
          operator delete(v9);
        }

        *(a2 + 2) = v79;
        v10 = v80;
        v11 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v10;
        a2[7] = v11;
        MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<unsigned short>::~Tensor(v60);
      default:
LABEL_93:
        std::ostringstream::basic_ostringstream[abi:ne200100](v60);
        v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "Unsupported Datatype ", 21);
        v54 = (*(**a1 + 32))();
        v55 = (*(*v54 + 88))(v54);
        MIL::IRDataTypeToString(v55, &v77);
        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = &v77;
        }

        else
        {
          v56 = v77.__r_.__value_.__r.__words[0];
        }

        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v77.__r_.__value_.__l.__size_;
        }

        v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v56, size);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ".", 1);
        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::logic_error::logic_error(exception, &v77);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }
}

void sub_2180EA4C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v5 - 105) < 0)
  {
    operator delete(*(v5 - 128));
    if ((v4 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(va);
      MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor(v2);
      _Unwind_Resume(a1);
    }
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v3);
  goto LABEL_6;
}

void *MIL::ValueInferenceUtils::GetCastedTensor<MIL::Bf16>@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = MIL::ValueInference::Tensor<MIL::Bf16>::Tensor(a2);
  v5 = (*(**a1 + 32))(v4);
  v6 = (*(*v5 + 88))(v5);
  if (v6 <= 8)
  {
    if (v6 > 4)
    {
      if (v6 == 5)
      {
        v33 = a1[1];
        v82 = *a1;
        v83 = v33;
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<float>::FromIRTensorValue(&v82, v60);
        if (v83)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }

        MIL::ValueInference::Tensor<float>::Cast<MIL::Bf16>(v60, &v77);
        v34 = a2[1];
        if (v34)
        {
          a2[2] = v34;
          operator delete(v34);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v35 = a2[4];
        if (v35)
        {
          a2[5] = v35;
          operator delete(v35);
        }

        *(a2 + 2) = v79;
        v36 = v80;
        v37 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v36;
        a2[7] = v37;
        MIL::ValueInference::Tensor<MIL::Bf16>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<float>::~Tensor(v60);
      }

      else
      {
        if (v6 != 7)
        {
          goto LABEL_93;
        }

        v18 = a1[1];
        v75 = *a1;
        v76 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<MIL::Bf16>::FromIRTensorValue(&v75, v60);
        if (v76)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v76);
        }

        MIL::ValueInference::Tensor<MIL::Bf16>::Cast<MIL::Bf16>(v60, &v77);
        v19 = a2[1];
        if (v19)
        {
          a2[2] = v19;
          operator delete(v19);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v20 = a2[4];
        if (v20)
        {
          a2[5] = v20;
          operator delete(v20);
        }

        *(a2 + 2) = v79;
        v21 = v80;
        v22 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v21;
        a2[7] = v22;
        MIL::ValueInference::Tensor<MIL::Bf16>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<MIL::Bf16>::~Tensor(v60);
      }
    }

    else if (v6 == 2)
    {
      v28 = a1[1];
      v69 = *a1;
      v70 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<BOOL>::FromIRTensorValue(&v69, v60);
      if (v70)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v70);
      }

      MIL::ValueInference::Tensor<BOOL>::Cast<MIL::Bf16>(v60, &v77);
      v29 = a2[1];
      if (v29)
      {
        a2[2] = v29;
        operator delete(v29);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v30 = a2[4];
      if (v30)
      {
        a2[5] = v30;
        operator delete(v30);
      }

      *(a2 + 2) = v79;
      v31 = v80;
      v32 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v31;
      a2[7] = v32;
      MIL::ValueInference::Tensor<MIL::Bf16>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<BOOL>::~Tensor(v60);
    }

    else
    {
      if (v6 != 4)
      {
        goto LABEL_93;
      }

      v13 = a1[1];
      v73 = *a1;
      v74 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<MIL::Fp16>::FromIRTensorValue(&v73, v60);
      if (v74)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v74);
      }

      MIL::ValueInference::Tensor<MIL::Fp16>::Cast<MIL::Bf16>(v60, &v77);
      v14 = a2[1];
      if (v14)
      {
        a2[2] = v14;
        operator delete(v14);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v15 = a2[4];
      if (v15)
      {
        a2[5] = v15;
        operator delete(v15);
      }

      *(a2 + 2) = v79;
      v16 = v80;
      v17 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v16;
      a2[7] = v17;
      MIL::ValueInference::Tensor<MIL::Bf16>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor(v60);
    }
  }

  else if (v6 <= 10)
  {
    if (v6 == 9)
    {
      v38 = a1[1];
      v67 = *a1;
      v68 = v38;
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<signed char>::FromIRTensorValue(&v67, v60);
      if (v68)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v68);
      }

      MIL::ValueInference::Tensor<signed char>::Cast<MIL::Bf16>(v60, &v77);
      v39 = a2[1];
      if (v39)
      {
        a2[2] = v39;
        operator delete(v39);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v40 = a2[4];
      if (v40)
      {
        a2[5] = v40;
        operator delete(v40);
      }

      *(a2 + 2) = v79;
      v41 = v80;
      v42 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v41;
      a2[7] = v42;
      MIL::ValueInference::Tensor<MIL::Bf16>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<signed char>::~Tensor(v60);
    }

    else
    {
      v23 = a1[1];
      v61 = *a1;
      v62 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<short>::FromIRTensorValue(&v61, v60);
      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      MIL::ValueInference::Tensor<short>::Cast<MIL::Bf16>(v60, &v77);
      v24 = a2[1];
      if (v24)
      {
        a2[2] = v24;
        operator delete(v24);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v25 = a2[4];
      if (v25)
      {
        a2[5] = v25;
        operator delete(v25);
      }

      *(a2 + 2) = v79;
      v26 = v80;
      v27 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v26;
      a2[7] = v27;
      MIL::ValueInference::Tensor<MIL::Bf16>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<short>::~Tensor(v60);
    }
  }

  else
  {
    switch(v6)
    {
      case 11:
        v43 = a1[1];
        v71 = *a1;
        v72 = v43;
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<int>::FromIRTensorValue(&v71, v60);
        if (v72)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v72);
        }

        MIL::ValueInference::Tensor<int>::Cast<MIL::Bf16>(v60, &v77);
        v44 = a2[1];
        if (v44)
        {
          a2[2] = v44;
          operator delete(v44);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v45 = a2[4];
        if (v45)
        {
          a2[5] = v45;
          operator delete(v45);
        }

        *(a2 + 2) = v79;
        v46 = v80;
        v47 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v46;
        a2[7] = v47;
        MIL::ValueInference::Tensor<MIL::Bf16>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<int>::~Tensor(v60);
      case 14:
        v48 = a1[1];
        v65 = *a1;
        v66 = v48;
        if (v48)
        {
          atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<unsigned char>::FromIRTensorValue(&v65, v60);
        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        MIL::ValueInference::Tensor<unsigned char>::Cast<MIL::Bf16>(v60, &v77);
        v49 = a2[1];
        if (v49)
        {
          a2[2] = v49;
          operator delete(v49);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v50 = a2[4];
        if (v50)
        {
          a2[5] = v50;
          operator delete(v50);
        }

        *(a2 + 2) = v79;
        v51 = v80;
        v52 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v51;
        a2[7] = v52;
        MIL::ValueInference::Tensor<MIL::Bf16>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<unsigned char>::~Tensor(v60);
      case 15:
        v7 = a1[1];
        v63 = *a1;
        v64 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<unsigned short>::FromIRTensorValue(&v63, v60);
        if (v64)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v64);
        }

        MIL::ValueInference::Tensor<unsigned short>::Cast<MIL::Bf16>(v60, &v77);
        v8 = a2[1];
        if (v8)
        {
          a2[2] = v8;
          operator delete(v8);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v9 = a2[4];
        if (v9)
        {
          a2[5] = v9;
          operator delete(v9);
        }

        *(a2 + 2) = v79;
        v10 = v80;
        v11 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v10;
        a2[7] = v11;
        MIL::ValueInference::Tensor<MIL::Bf16>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<unsigned short>::~Tensor(v60);
      default:
LABEL_93:
        std::ostringstream::basic_ostringstream[abi:ne200100](v60);
        v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "Unsupported Datatype ", 21);
        v54 = (*(**a1 + 32))();
        v55 = (*(*v54 + 88))(v54);
        MIL::IRDataTypeToString(v55, &v77);
        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = &v77;
        }

        else
        {
          v56 = v77.__r_.__value_.__r.__words[0];
        }

        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v77.__r_.__value_.__l.__size_;
        }

        v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v56, size);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ".", 1);
        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::logic_error::logic_error(exception, &v77);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }
}

void sub_2180EAE40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v5 - 105) < 0)
  {
    operator delete(*(v5 - 128));
    if ((v4 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(va);
      MIL::ValueInference::Tensor<MIL::Bf16>::~Tensor(v2);
      _Unwind_Resume(a1);
    }
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v3);
  goto LABEL_6;
}

void *MIL::ValueInferenceUtils::GetCastedTensor<int>@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = MIL::ValueInference::Tensor<int>::Tensor(a2);
  v5 = (*(**a1 + 32))(v4);
  v6 = (*(*v5 + 88))(v5);
  if (v6 <= 8)
  {
    if (v6 > 4)
    {
      if (v6 == 5)
      {
        v33 = a1[1];
        v82 = *a1;
        v83 = v33;
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<float>::FromIRTensorValue(&v82, v60);
        if (v83)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }

        MIL::ValueInference::Tensor<float>::Cast<int>(v60, &v77);
        v34 = a2[1];
        if (v34)
        {
          a2[2] = v34;
          operator delete(v34);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v35 = a2[4];
        if (v35)
        {
          a2[5] = v35;
          operator delete(v35);
        }

        *(a2 + 2) = v79;
        v36 = v80;
        v37 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v36;
        a2[7] = v37;
        MIL::ValueInference::Tensor<int>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<float>::~Tensor(v60);
      }

      else
      {
        if (v6 != 7)
        {
          goto LABEL_93;
        }

        v18 = a1[1];
        v75 = *a1;
        v76 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<MIL::Bf16>::FromIRTensorValue(&v75, v60);
        if (v76)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v76);
        }

        MIL::ValueInference::Tensor<MIL::Bf16>::Cast<int>(v60, &v77);
        v19 = a2[1];
        if (v19)
        {
          a2[2] = v19;
          operator delete(v19);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v20 = a2[4];
        if (v20)
        {
          a2[5] = v20;
          operator delete(v20);
        }

        *(a2 + 2) = v79;
        v21 = v80;
        v22 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v21;
        a2[7] = v22;
        MIL::ValueInference::Tensor<int>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<MIL::Bf16>::~Tensor(v60);
      }
    }

    else if (v6 == 2)
    {
      v28 = a1[1];
      v69 = *a1;
      v70 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<BOOL>::FromIRTensorValue(&v69, v60);
      if (v70)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v70);
      }

      MIL::ValueInference::Tensor<BOOL>::Cast<int>(v60, &v77);
      v29 = a2[1];
      if (v29)
      {
        a2[2] = v29;
        operator delete(v29);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v30 = a2[4];
      if (v30)
      {
        a2[5] = v30;
        operator delete(v30);
      }

      *(a2 + 2) = v79;
      v31 = v80;
      v32 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v31;
      a2[7] = v32;
      MIL::ValueInference::Tensor<int>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<BOOL>::~Tensor(v60);
    }

    else
    {
      if (v6 != 4)
      {
        goto LABEL_93;
      }

      v13 = a1[1];
      v73 = *a1;
      v74 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<MIL::Fp16>::FromIRTensorValue(&v73, v60);
      if (v74)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v74);
      }

      MIL::ValueInference::Tensor<MIL::Fp16>::Cast<int>(v60, &v77);
      v14 = a2[1];
      if (v14)
      {
        a2[2] = v14;
        operator delete(v14);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v15 = a2[4];
      if (v15)
      {
        a2[5] = v15;
        operator delete(v15);
      }

      *(a2 + 2) = v79;
      v16 = v80;
      v17 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v16;
      a2[7] = v17;
      MIL::ValueInference::Tensor<int>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor(v60);
    }
  }

  else if (v6 <= 10)
  {
    if (v6 == 9)
    {
      v38 = a1[1];
      v67 = *a1;
      v68 = v38;
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<signed char>::FromIRTensorValue(&v67, v60);
      if (v68)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v68);
      }

      MIL::ValueInference::Tensor<signed char>::Cast<int>(v60, &v77);
      v39 = a2[1];
      if (v39)
      {
        a2[2] = v39;
        operator delete(v39);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v40 = a2[4];
      if (v40)
      {
        a2[5] = v40;
        operator delete(v40);
      }

      *(a2 + 2) = v79;
      v41 = v80;
      v42 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v41;
      a2[7] = v42;
      MIL::ValueInference::Tensor<int>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<signed char>::~Tensor(v60);
    }

    else
    {
      v23 = a1[1];
      v61 = *a1;
      v62 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<short>::FromIRTensorValue(&v61, v60);
      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      MIL::ValueInference::Tensor<short>::Cast<int>(v60, &v77);
      v24 = a2[1];
      if (v24)
      {
        a2[2] = v24;
        operator delete(v24);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v25 = a2[4];
      if (v25)
      {
        a2[5] = v25;
        operator delete(v25);
      }

      *(a2 + 2) = v79;
      v26 = v80;
      v27 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v26;
      a2[7] = v27;
      MIL::ValueInference::Tensor<int>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<short>::~Tensor(v60);
    }
  }

  else
  {
    switch(v6)
    {
      case 11:
        v43 = a1[1];
        v71 = *a1;
        v72 = v43;
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<int>::FromIRTensorValue(&v71, v60);
        if (v72)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v72);
        }

        MIL::ValueInference::Tensor<int>::Cast<int>(v60, &v77);
        v44 = a2[1];
        if (v44)
        {
          a2[2] = v44;
          operator delete(v44);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v45 = a2[4];
        if (v45)
        {
          a2[5] = v45;
          operator delete(v45);
        }

        *(a2 + 2) = v79;
        v46 = v80;
        v47 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v46;
        a2[7] = v47;
        MIL::ValueInference::Tensor<int>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<int>::~Tensor(v60);
      case 14:
        v48 = a1[1];
        v65 = *a1;
        v66 = v48;
        if (v48)
        {
          atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<unsigned char>::FromIRTensorValue(&v65, v60);
        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        MIL::ValueInference::Tensor<unsigned char>::Cast<int>(v60, &v77);
        v49 = a2[1];
        if (v49)
        {
          a2[2] = v49;
          operator delete(v49);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v50 = a2[4];
        if (v50)
        {
          a2[5] = v50;
          operator delete(v50);
        }

        *(a2 + 2) = v79;
        v51 = v80;
        v52 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v51;
        a2[7] = v52;
        MIL::ValueInference::Tensor<int>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<unsigned char>::~Tensor(v60);
      case 15:
        v7 = a1[1];
        v63 = *a1;
        v64 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<unsigned short>::FromIRTensorValue(&v63, v60);
        if (v64)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v64);
        }

        MIL::ValueInference::Tensor<unsigned short>::Cast<int>(v60, &v77);
        v8 = a2[1];
        if (v8)
        {
          a2[2] = v8;
          operator delete(v8);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v9 = a2[4];
        if (v9)
        {
          a2[5] = v9;
          operator delete(v9);
        }

        *(a2 + 2) = v79;
        v10 = v80;
        v11 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v10;
        a2[7] = v11;
        MIL::ValueInference::Tensor<int>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<unsigned short>::~Tensor(v60);
      default:
LABEL_93:
        std::ostringstream::basic_ostringstream[abi:ne200100](v60);
        v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "Unsupported Datatype ", 21);
        v54 = (*(**a1 + 32))();
        v55 = (*(*v54 + 88))(v54);
        MIL::IRDataTypeToString(v55, &v77);
        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = &v77;
        }

        else
        {
          v56 = v77.__r_.__value_.__r.__words[0];
        }

        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v77.__r_.__value_.__l.__size_;
        }

        v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v56, size);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ".", 1);
        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::logic_error::logic_error(exception, &v77);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }
}

void sub_2180EB7B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v5 - 105) < 0)
  {
    operator delete(*(v5 - 128));
    if ((v4 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(va);
      MIL::ValueInference::Tensor<int>::~Tensor(v2);
      _Unwind_Resume(a1);
    }
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v3);
  goto LABEL_6;
}

void *MIL::ValueInferenceUtils::GetCastedTensor<BOOL>@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = MIL::ValueInference::Tensor<BOOL>::Tensor(a2);
  v5 = (*(**a1 + 32))(v4);
  v6 = (*(*v5 + 88))(v5);
  if (v6 <= 8)
  {
    if (v6 > 4)
    {
      if (v6 == 5)
      {
        v33 = a1[1];
        v82 = *a1;
        v83 = v33;
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<float>::FromIRTensorValue(&v82, v60);
        if (v83)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }

        MIL::ValueInference::Tensor<float>::Cast<BOOL>(v60, &v77);
        v34 = a2[1];
        if (v34)
        {
          a2[2] = v34;
          operator delete(v34);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v35 = a2[4];
        if (v35)
        {
          a2[5] = v35;
          operator delete(v35);
        }

        *(a2 + 2) = v79;
        v36 = v80;
        v37 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v36;
        a2[7] = v37;
        MIL::ValueInference::Tensor<BOOL>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<float>::~Tensor(v60);
      }

      else
      {
        if (v6 != 7)
        {
          goto LABEL_93;
        }

        v18 = a1[1];
        v75 = *a1;
        v76 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<MIL::Bf16>::FromIRTensorValue(&v75, v60);
        if (v76)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v76);
        }

        MIL::ValueInference::Tensor<MIL::Bf16>::Cast<BOOL>(v60, &v77);
        v19 = a2[1];
        if (v19)
        {
          a2[2] = v19;
          operator delete(v19);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v20 = a2[4];
        if (v20)
        {
          a2[5] = v20;
          operator delete(v20);
        }

        *(a2 + 2) = v79;
        v21 = v80;
        v22 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v21;
        a2[7] = v22;
        MIL::ValueInference::Tensor<BOOL>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<MIL::Bf16>::~Tensor(v60);
      }
    }

    else if (v6 == 2)
    {
      v28 = a1[1];
      v69 = *a1;
      v70 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<BOOL>::FromIRTensorValue(&v69, v60);
      if (v70)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v70);
      }

      MIL::ValueInference::Tensor<BOOL>::Cast<BOOL>(v60, &v77);
      v29 = a2[1];
      if (v29)
      {
        a2[2] = v29;
        operator delete(v29);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v30 = a2[4];
      if (v30)
      {
        a2[5] = v30;
        operator delete(v30);
      }

      *(a2 + 2) = v79;
      v31 = v80;
      v32 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v31;
      a2[7] = v32;
      MIL::ValueInference::Tensor<BOOL>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<BOOL>::~Tensor(v60);
    }

    else
    {
      if (v6 != 4)
      {
        goto LABEL_93;
      }

      v13 = a1[1];
      v73 = *a1;
      v74 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<MIL::Fp16>::FromIRTensorValue(&v73, v60);
      if (v74)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v74);
      }

      MIL::ValueInference::Tensor<MIL::Fp16>::Cast<BOOL>(v60, &v77);
      v14 = a2[1];
      if (v14)
      {
        a2[2] = v14;
        operator delete(v14);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v15 = a2[4];
      if (v15)
      {
        a2[5] = v15;
        operator delete(v15);
      }

      *(a2 + 2) = v79;
      v16 = v80;
      v17 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v16;
      a2[7] = v17;
      MIL::ValueInference::Tensor<BOOL>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor(v60);
    }
  }

  else if (v6 <= 10)
  {
    if (v6 == 9)
    {
      v38 = a1[1];
      v67 = *a1;
      v68 = v38;
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<signed char>::FromIRTensorValue(&v67, v60);
      if (v68)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v68);
      }

      MIL::ValueInference::Tensor<signed char>::Cast<BOOL>(v60, &v77);
      v39 = a2[1];
      if (v39)
      {
        a2[2] = v39;
        operator delete(v39);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v40 = a2[4];
      if (v40)
      {
        a2[5] = v40;
        operator delete(v40);
      }

      *(a2 + 2) = v79;
      v41 = v80;
      v42 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v41;
      a2[7] = v42;
      MIL::ValueInference::Tensor<BOOL>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<signed char>::~Tensor(v60);
    }

    else
    {
      v23 = a1[1];
      v61 = *a1;
      v62 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<short>::FromIRTensorValue(&v61, v60);
      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      MIL::ValueInference::Tensor<short>::Cast<BOOL>(v60, &v77);
      v24 = a2[1];
      if (v24)
      {
        a2[2] = v24;
        operator delete(v24);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v25 = a2[4];
      if (v25)
      {
        a2[5] = v25;
        operator delete(v25);
      }

      *(a2 + 2) = v79;
      v26 = v80;
      v27 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v26;
      a2[7] = v27;
      MIL::ValueInference::Tensor<BOOL>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<short>::~Tensor(v60);
    }
  }

  else
  {
    switch(v6)
    {
      case 11:
        v43 = a1[1];
        v71 = *a1;
        v72 = v43;
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<int>::FromIRTensorValue(&v71, v60);
        if (v72)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v72);
        }

        MIL::ValueInference::Tensor<int>::Cast<BOOL>(v60, &v77);
        v44 = a2[1];
        if (v44)
        {
          a2[2] = v44;
          operator delete(v44);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v45 = a2[4];
        if (v45)
        {
          a2[5] = v45;
          operator delete(v45);
        }

        *(a2 + 2) = v79;
        v46 = v80;
        v47 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v46;
        a2[7] = v47;
        MIL::ValueInference::Tensor<BOOL>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<int>::~Tensor(v60);
      case 14:
        v48 = a1[1];
        v65 = *a1;
        v66 = v48;
        if (v48)
        {
          atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<unsigned char>::FromIRTensorValue(&v65, v60);
        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        MIL::ValueInference::Tensor<unsigned char>::Cast<BOOL>(v60, &v77);
        v49 = a2[1];
        if (v49)
        {
          a2[2] = v49;
          operator delete(v49);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v50 = a2[4];
        if (v50)
        {
          a2[5] = v50;
          operator delete(v50);
        }

        *(a2 + 2) = v79;
        v51 = v80;
        v52 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v51;
        a2[7] = v52;
        MIL::ValueInference::Tensor<BOOL>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<unsigned char>::~Tensor(v60);
      case 15:
        v7 = a1[1];
        v63 = *a1;
        v64 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<unsigned short>::FromIRTensorValue(&v63, v60);
        if (v64)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v64);
        }

        MIL::ValueInference::Tensor<unsigned short>::Cast<BOOL>(v60, &v77);
        v8 = a2[1];
        if (v8)
        {
          a2[2] = v8;
          operator delete(v8);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v9 = a2[4];
        if (v9)
        {
          a2[5] = v9;
          operator delete(v9);
        }

        *(a2 + 2) = v79;
        v10 = v80;
        v11 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v10;
        a2[7] = v11;
        MIL::ValueInference::Tensor<BOOL>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<unsigned short>::~Tensor(v60);
      default:
LABEL_93:
        std::ostringstream::basic_ostringstream[abi:ne200100](v60);
        v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "Unsupported Datatype ", 21);
        v54 = (*(**a1 + 32))();
        v55 = (*(*v54 + 88))(v54);
        MIL::IRDataTypeToString(v55, &v77);
        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = &v77;
        }

        else
        {
          v56 = v77.__r_.__value_.__r.__words[0];
        }

        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v77.__r_.__value_.__l.__size_;
        }

        v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v56, size);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ".", 1);
        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::logic_error::logic_error(exception, &v77);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }
}

void sub_2180EC130(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v5 - 105) < 0)
  {
    operator delete(*(v5 - 128));
    if ((v4 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(va);
      MIL::ValueInference::Tensor<BOOL>::~Tensor(v2);
      _Unwind_Resume(a1);
    }
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v3);
  goto LABEL_6;
}

void *MIL::ValueInferenceUtils::GetCastedTensor<signed char>@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = MIL::ValueInference::Tensor<signed char>::Tensor(a2);
  v5 = (*(**a1 + 32))(v4);
  v6 = (*(*v5 + 88))(v5);
  if (v6 <= 8)
  {
    if (v6 > 4)
    {
      if (v6 == 5)
      {
        v33 = a1[1];
        v82 = *a1;
        v83 = v33;
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<float>::FromIRTensorValue(&v82, v60);
        if (v83)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }

        MIL::ValueInference::Tensor<float>::Cast<signed char>(v60, &v77);
        v34 = a2[1];
        if (v34)
        {
          a2[2] = v34;
          operator delete(v34);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v35 = a2[4];
        if (v35)
        {
          a2[5] = v35;
          operator delete(v35);
        }

        *(a2 + 2) = v79;
        v36 = v80;
        v37 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v36;
        a2[7] = v37;
        MIL::ValueInference::Tensor<signed char>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<float>::~Tensor(v60);
      }

      else
      {
        if (v6 != 7)
        {
          goto LABEL_93;
        }

        v18 = a1[1];
        v75 = *a1;
        v76 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<MIL::Bf16>::FromIRTensorValue(&v75, v60);
        if (v76)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v76);
        }

        MIL::ValueInference::Tensor<MIL::Bf16>::Cast<signed char>(v60, &v77);
        v19 = a2[1];
        if (v19)
        {
          a2[2] = v19;
          operator delete(v19);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v20 = a2[4];
        if (v20)
        {
          a2[5] = v20;
          operator delete(v20);
        }

        *(a2 + 2) = v79;
        v21 = v80;
        v22 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v21;
        a2[7] = v22;
        MIL::ValueInference::Tensor<signed char>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<MIL::Bf16>::~Tensor(v60);
      }
    }

    else if (v6 == 2)
    {
      v28 = a1[1];
      v69 = *a1;
      v70 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<BOOL>::FromIRTensorValue(&v69, v60);
      if (v70)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v70);
      }

      MIL::ValueInference::Tensor<BOOL>::Cast<signed char>(v60, &v77);
      v29 = a2[1];
      if (v29)
      {
        a2[2] = v29;
        operator delete(v29);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v30 = a2[4];
      if (v30)
      {
        a2[5] = v30;
        operator delete(v30);
      }

      *(a2 + 2) = v79;
      v31 = v80;
      v32 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v31;
      a2[7] = v32;
      MIL::ValueInference::Tensor<signed char>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<BOOL>::~Tensor(v60);
    }

    else
    {
      if (v6 != 4)
      {
        goto LABEL_93;
      }

      v13 = a1[1];
      v73 = *a1;
      v74 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<MIL::Fp16>::FromIRTensorValue(&v73, v60);
      if (v74)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v74);
      }

      MIL::ValueInference::Tensor<MIL::Fp16>::Cast<signed char>(v60, &v77);
      v14 = a2[1];
      if (v14)
      {
        a2[2] = v14;
        operator delete(v14);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v15 = a2[4];
      if (v15)
      {
        a2[5] = v15;
        operator delete(v15);
      }

      *(a2 + 2) = v79;
      v16 = v80;
      v17 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v16;
      a2[7] = v17;
      MIL::ValueInference::Tensor<signed char>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor(v60);
    }
  }

  else if (v6 <= 10)
  {
    if (v6 == 9)
    {
      v38 = a1[1];
      v67 = *a1;
      v68 = v38;
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<signed char>::FromIRTensorValue(&v67, v60);
      if (v68)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v68);
      }

      MIL::ValueInference::Tensor<signed char>::Cast<signed char>(v60, &v77);
      v39 = a2[1];
      if (v39)
      {
        a2[2] = v39;
        operator delete(v39);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v40 = a2[4];
      if (v40)
      {
        a2[5] = v40;
        operator delete(v40);
      }

      *(a2 + 2) = v79;
      v41 = v80;
      v42 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v41;
      a2[7] = v42;
      MIL::ValueInference::Tensor<signed char>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<signed char>::~Tensor(v60);
    }

    else
    {
      v23 = a1[1];
      v61 = *a1;
      v62 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<short>::FromIRTensorValue(&v61, v60);
      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      MIL::ValueInference::Tensor<short>::Cast<signed char>(v60, &v77);
      v24 = a2[1];
      if (v24)
      {
        a2[2] = v24;
        operator delete(v24);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v25 = a2[4];
      if (v25)
      {
        a2[5] = v25;
        operator delete(v25);
      }

      *(a2 + 2) = v79;
      v26 = v80;
      v27 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v26;
      a2[7] = v27;
      MIL::ValueInference::Tensor<signed char>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<short>::~Tensor(v60);
    }
  }

  else
  {
    switch(v6)
    {
      case 11:
        v43 = a1[1];
        v71 = *a1;
        v72 = v43;
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<int>::FromIRTensorValue(&v71, v60);
        if (v72)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v72);
        }

        MIL::ValueInference::Tensor<int>::Cast<signed char>(v60, &v77);
        v44 = a2[1];
        if (v44)
        {
          a2[2] = v44;
          operator delete(v44);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v45 = a2[4];
        if (v45)
        {
          a2[5] = v45;
          operator delete(v45);
        }

        *(a2 + 2) = v79;
        v46 = v80;
        v47 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v46;
        a2[7] = v47;
        MIL::ValueInference::Tensor<signed char>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<int>::~Tensor(v60);
      case 14:
        v48 = a1[1];
        v65 = *a1;
        v66 = v48;
        if (v48)
        {
          atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<unsigned char>::FromIRTensorValue(&v65, v60);
        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        MIL::ValueInference::Tensor<unsigned char>::Cast<signed char>(v60, &v77);
        v49 = a2[1];
        if (v49)
        {
          a2[2] = v49;
          operator delete(v49);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v50 = a2[4];
        if (v50)
        {
          a2[5] = v50;
          operator delete(v50);
        }

        *(a2 + 2) = v79;
        v51 = v80;
        v52 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v51;
        a2[7] = v52;
        MIL::ValueInference::Tensor<signed char>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<unsigned char>::~Tensor(v60);
      case 15:
        v7 = a1[1];
        v63 = *a1;
        v64 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<unsigned short>::FromIRTensorValue(&v63, v60);
        if (v64)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v64);
        }

        MIL::ValueInference::Tensor<unsigned short>::Cast<signed char>(v60, &v77);
        v8 = a2[1];
        if (v8)
        {
          a2[2] = v8;
          operator delete(v8);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v9 = a2[4];
        if (v9)
        {
          a2[5] = v9;
          operator delete(v9);
        }

        *(a2 + 2) = v79;
        v10 = v80;
        v11 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v10;
        a2[7] = v11;
        MIL::ValueInference::Tensor<signed char>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<unsigned short>::~Tensor(v60);
      default:
LABEL_93:
        std::ostringstream::basic_ostringstream[abi:ne200100](v60);
        v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "Unsupported Datatype ", 21);
        v54 = (*(**a1 + 32))();
        v55 = (*(*v54 + 88))(v54);
        MIL::IRDataTypeToString(v55, &v77);
        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = &v77;
        }

        else
        {
          v56 = v77.__r_.__value_.__r.__words[0];
        }

        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v77.__r_.__value_.__l.__size_;
        }

        v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v56, size);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ".", 1);
        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::logic_error::logic_error(exception, &v77);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }
}

void sub_2180ECAA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v5 - 105) < 0)
  {
    operator delete(*(v5 - 128));
    if ((v4 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(va);
      MIL::ValueInference::Tensor<signed char>::~Tensor(v2);
      _Unwind_Resume(a1);
    }
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v3);
  goto LABEL_6;
}

void *MIL::ValueInferenceUtils::GetCastedTensor<unsigned char>@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = MIL::ValueInference::Tensor<unsigned char>::Tensor(a2);
  v5 = (*(**a1 + 32))(v4);
  v6 = (*(*v5 + 88))(v5);
  if (v6 <= 8)
  {
    if (v6 > 4)
    {
      if (v6 == 5)
      {
        v33 = a1[1];
        v82 = *a1;
        v83 = v33;
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<float>::FromIRTensorValue(&v82, v60);
        if (v83)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }

        MIL::ValueInference::Tensor<float>::Cast<unsigned char>(v60, &v77);
        v34 = a2[1];
        if (v34)
        {
          a2[2] = v34;
          operator delete(v34);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v35 = a2[4];
        if (v35)
        {
          a2[5] = v35;
          operator delete(v35);
        }

        *(a2 + 2) = v79;
        v36 = v80;
        v37 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v36;
        a2[7] = v37;
        MIL::ValueInference::Tensor<unsigned char>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<float>::~Tensor(v60);
      }

      else
      {
        if (v6 != 7)
        {
          goto LABEL_93;
        }

        v18 = a1[1];
        v75 = *a1;
        v76 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<MIL::Bf16>::FromIRTensorValue(&v75, v60);
        if (v76)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v76);
        }

        MIL::ValueInference::Tensor<MIL::Bf16>::Cast<unsigned char>(v60, &v77);
        v19 = a2[1];
        if (v19)
        {
          a2[2] = v19;
          operator delete(v19);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v20 = a2[4];
        if (v20)
        {
          a2[5] = v20;
          operator delete(v20);
        }

        *(a2 + 2) = v79;
        v21 = v80;
        v22 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v21;
        a2[7] = v22;
        MIL::ValueInference::Tensor<unsigned char>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<MIL::Bf16>::~Tensor(v60);
      }
    }

    else if (v6 == 2)
    {
      v28 = a1[1];
      v69 = *a1;
      v70 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<BOOL>::FromIRTensorValue(&v69, v60);
      if (v70)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v70);
      }

      MIL::ValueInference::Tensor<BOOL>::Cast<unsigned char>(v60, &v77);
      v29 = a2[1];
      if (v29)
      {
        a2[2] = v29;
        operator delete(v29);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v30 = a2[4];
      if (v30)
      {
        a2[5] = v30;
        operator delete(v30);
      }

      *(a2 + 2) = v79;
      v31 = v80;
      v32 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v31;
      a2[7] = v32;
      MIL::ValueInference::Tensor<unsigned char>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<BOOL>::~Tensor(v60);
    }

    else
    {
      if (v6 != 4)
      {
        goto LABEL_93;
      }

      v13 = a1[1];
      v73 = *a1;
      v74 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<MIL::Fp16>::FromIRTensorValue(&v73, v60);
      if (v74)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v74);
      }

      MIL::ValueInference::Tensor<MIL::Fp16>::Cast<unsigned char>(v60, &v77);
      v14 = a2[1];
      if (v14)
      {
        a2[2] = v14;
        operator delete(v14);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v15 = a2[4];
      if (v15)
      {
        a2[5] = v15;
        operator delete(v15);
      }

      *(a2 + 2) = v79;
      v16 = v80;
      v17 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v16;
      a2[7] = v17;
      MIL::ValueInference::Tensor<unsigned char>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor(v60);
    }
  }

  else if (v6 <= 10)
  {
    if (v6 == 9)
    {
      v38 = a1[1];
      v67 = *a1;
      v68 = v38;
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<signed char>::FromIRTensorValue(&v67, v60);
      if (v68)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v68);
      }

      MIL::ValueInference::Tensor<signed char>::Cast<unsigned char>(v60, &v77);
      v39 = a2[1];
      if (v39)
      {
        a2[2] = v39;
        operator delete(v39);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v40 = a2[4];
      if (v40)
      {
        a2[5] = v40;
        operator delete(v40);
      }

      *(a2 + 2) = v79;
      v41 = v80;
      v42 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v41;
      a2[7] = v42;
      MIL::ValueInference::Tensor<unsigned char>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<signed char>::~Tensor(v60);
    }

    else
    {
      v23 = a1[1];
      v61 = *a1;
      v62 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<short>::FromIRTensorValue(&v61, v60);
      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      MIL::ValueInference::Tensor<short>::Cast<unsigned char>(v60, &v77);
      v24 = a2[1];
      if (v24)
      {
        a2[2] = v24;
        operator delete(v24);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v25 = a2[4];
      if (v25)
      {
        a2[5] = v25;
        operator delete(v25);
      }

      *(a2 + 2) = v79;
      v26 = v80;
      v27 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v26;
      a2[7] = v27;
      MIL::ValueInference::Tensor<unsigned char>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<short>::~Tensor(v60);
    }
  }

  else
  {
    switch(v6)
    {
      case 11:
        v43 = a1[1];
        v71 = *a1;
        v72 = v43;
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<int>::FromIRTensorValue(&v71, v60);
        if (v72)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v72);
        }

        MIL::ValueInference::Tensor<int>::Cast<unsigned char>(v60, &v77);
        v44 = a2[1];
        if (v44)
        {
          a2[2] = v44;
          operator delete(v44);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v45 = a2[4];
        if (v45)
        {
          a2[5] = v45;
          operator delete(v45);
        }

        *(a2 + 2) = v79;
        v46 = v80;
        v47 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v46;
        a2[7] = v47;
        MIL::ValueInference::Tensor<unsigned char>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<int>::~Tensor(v60);
      case 14:
        v48 = a1[1];
        v65 = *a1;
        v66 = v48;
        if (v48)
        {
          atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<unsigned char>::FromIRTensorValue(&v65, v60);
        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        MIL::ValueInference::Tensor<unsigned char>::Cast<unsigned char>(v60, &v77);
        v49 = a2[1];
        if (v49)
        {
          a2[2] = v49;
          operator delete(v49);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v50 = a2[4];
        if (v50)
        {
          a2[5] = v50;
          operator delete(v50);
        }

        *(a2 + 2) = v79;
        v51 = v80;
        v52 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v51;
        a2[7] = v52;
        MIL::ValueInference::Tensor<unsigned char>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<unsigned char>::~Tensor(v60);
      case 15:
        v7 = a1[1];
        v63 = *a1;
        v64 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<unsigned short>::FromIRTensorValue(&v63, v60);
        if (v64)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v64);
        }

        MIL::ValueInference::Tensor<unsigned short>::Cast<unsigned char>(v60, &v77);
        v8 = a2[1];
        if (v8)
        {
          a2[2] = v8;
          operator delete(v8);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v9 = a2[4];
        if (v9)
        {
          a2[5] = v9;
          operator delete(v9);
        }

        *(a2 + 2) = v79;
        v10 = v80;
        v11 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v10;
        a2[7] = v11;
        MIL::ValueInference::Tensor<unsigned char>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<unsigned short>::~Tensor(v60);
      default:
LABEL_93:
        std::ostringstream::basic_ostringstream[abi:ne200100](v60);
        v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "Unsupported Datatype ", 21);
        v54 = (*(**a1 + 32))();
        v55 = (*(*v54 + 88))(v54);
        MIL::IRDataTypeToString(v55, &v77);
        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = &v77;
        }

        else
        {
          v56 = v77.__r_.__value_.__r.__words[0];
        }

        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v77.__r_.__value_.__l.__size_;
        }

        v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v56, size);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ".", 1);
        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::logic_error::logic_error(exception, &v77);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }
}

void sub_2180ED420(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v5 - 105) < 0)
  {
    operator delete(*(v5 - 128));
    if ((v4 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(va);
      MIL::ValueInference::Tensor<unsigned char>::~Tensor(v2);
      _Unwind_Resume(a1);
    }
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v3);
  goto LABEL_6;
}

void *MIL::ValueInferenceUtils::GetCastedTensor<unsigned short>@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = MIL::ValueInference::Tensor<unsigned short>::Tensor(a2);
  v5 = (*(**a1 + 32))(v4);
  v6 = (*(*v5 + 88))(v5);
  if (v6 <= 8)
  {
    if (v6 > 4)
    {
      if (v6 == 5)
      {
        v33 = a1[1];
        v82 = *a1;
        v83 = v33;
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<float>::FromIRTensorValue(&v82, v60);
        if (v83)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }

        MIL::ValueInference::Tensor<float>::Cast<unsigned short>(v60, &v77);
        v34 = a2[1];
        if (v34)
        {
          a2[2] = v34;
          operator delete(v34);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v35 = a2[4];
        if (v35)
        {
          a2[5] = v35;
          operator delete(v35);
        }

        *(a2 + 2) = v79;
        v36 = v80;
        v37 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v36;
        a2[7] = v37;
        MIL::ValueInference::Tensor<unsigned short>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<float>::~Tensor(v60);
      }

      else
      {
        if (v6 != 7)
        {
          goto LABEL_93;
        }

        v18 = a1[1];
        v75 = *a1;
        v76 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<MIL::Bf16>::FromIRTensorValue(&v75, v60);
        if (v76)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v76);
        }

        MIL::ValueInference::Tensor<MIL::Bf16>::Cast<unsigned short>(v60, &v77);
        v19 = a2[1];
        if (v19)
        {
          a2[2] = v19;
          operator delete(v19);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v20 = a2[4];
        if (v20)
        {
          a2[5] = v20;
          operator delete(v20);
        }

        *(a2 + 2) = v79;
        v21 = v80;
        v22 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v21;
        a2[7] = v22;
        MIL::ValueInference::Tensor<unsigned short>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<MIL::Bf16>::~Tensor(v60);
      }
    }

    else if (v6 == 2)
    {
      v28 = a1[1];
      v69 = *a1;
      v70 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<BOOL>::FromIRTensorValue(&v69, v60);
      if (v70)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v70);
      }

      MIL::ValueInference::Tensor<BOOL>::Cast<unsigned short>(v60, &v77);
      v29 = a2[1];
      if (v29)
      {
        a2[2] = v29;
        operator delete(v29);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v30 = a2[4];
      if (v30)
      {
        a2[5] = v30;
        operator delete(v30);
      }

      *(a2 + 2) = v79;
      v31 = v80;
      v32 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v31;
      a2[7] = v32;
      MIL::ValueInference::Tensor<unsigned short>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<BOOL>::~Tensor(v60);
    }

    else
    {
      if (v6 != 4)
      {
        goto LABEL_93;
      }

      v13 = a1[1];
      v73 = *a1;
      v74 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<MIL::Fp16>::FromIRTensorValue(&v73, v60);
      if (v74)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v74);
      }

      MIL::ValueInference::Tensor<MIL::Fp16>::Cast<unsigned short>(v60, &v77);
      v14 = a2[1];
      if (v14)
      {
        a2[2] = v14;
        operator delete(v14);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v15 = a2[4];
      if (v15)
      {
        a2[5] = v15;
        operator delete(v15);
      }

      *(a2 + 2) = v79;
      v16 = v80;
      v17 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v16;
      a2[7] = v17;
      MIL::ValueInference::Tensor<unsigned short>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor(v60);
    }
  }

  else if (v6 <= 10)
  {
    if (v6 == 9)
    {
      v38 = a1[1];
      v67 = *a1;
      v68 = v38;
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<signed char>::FromIRTensorValue(&v67, v60);
      if (v68)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v68);
      }

      MIL::ValueInference::Tensor<signed char>::Cast<unsigned short>(v60, &v77);
      v39 = a2[1];
      if (v39)
      {
        a2[2] = v39;
        operator delete(v39);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v40 = a2[4];
      if (v40)
      {
        a2[5] = v40;
        operator delete(v40);
      }

      *(a2 + 2) = v79;
      v41 = v80;
      v42 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v41;
      a2[7] = v42;
      MIL::ValueInference::Tensor<unsigned short>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<signed char>::~Tensor(v60);
    }

    else
    {
      v23 = a1[1];
      v61 = *a1;
      v62 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<short>::FromIRTensorValue(&v61, v60);
      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      MIL::ValueInference::Tensor<short>::Cast<unsigned short>(v60, &v77);
      v24 = a2[1];
      if (v24)
      {
        a2[2] = v24;
        operator delete(v24);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v25 = a2[4];
      if (v25)
      {
        a2[5] = v25;
        operator delete(v25);
      }

      *(a2 + 2) = v79;
      v26 = v80;
      v27 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v26;
      a2[7] = v27;
      MIL::ValueInference::Tensor<unsigned short>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<short>::~Tensor(v60);
    }
  }

  else
  {
    switch(v6)
    {
      case 11:
        v43 = a1[1];
        v71 = *a1;
        v72 = v43;
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<int>::FromIRTensorValue(&v71, v60);
        if (v72)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v72);
        }

        MIL::ValueInference::Tensor<int>::Cast<unsigned short>(v60, &v77);
        v44 = a2[1];
        if (v44)
        {
          a2[2] = v44;
          operator delete(v44);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v45 = a2[4];
        if (v45)
        {
          a2[5] = v45;
          operator delete(v45);
        }

        *(a2 + 2) = v79;
        v46 = v80;
        v47 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v46;
        a2[7] = v47;
        MIL::ValueInference::Tensor<unsigned short>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<int>::~Tensor(v60);
      case 14:
        v48 = a1[1];
        v65 = *a1;
        v66 = v48;
        if (v48)
        {
          atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<unsigned char>::FromIRTensorValue(&v65, v60);
        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        MIL::ValueInference::Tensor<unsigned char>::Cast<unsigned short>(v60, &v77);
        v49 = a2[1];
        if (v49)
        {
          a2[2] = v49;
          operator delete(v49);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v50 = a2[4];
        if (v50)
        {
          a2[5] = v50;
          operator delete(v50);
        }

        *(a2 + 2) = v79;
        v51 = v80;
        v52 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v51;
        a2[7] = v52;
        MIL::ValueInference::Tensor<unsigned short>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<unsigned char>::~Tensor(v60);
      case 15:
        v7 = a1[1];
        v63 = *a1;
        v64 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<unsigned short>::FromIRTensorValue(&v63, v60);
        if (v64)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v64);
        }

        MIL::ValueInference::Tensor<unsigned short>::Cast<unsigned short>(v60, &v77);
        v8 = a2[1];
        if (v8)
        {
          a2[2] = v8;
          operator delete(v8);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v9 = a2[4];
        if (v9)
        {
          a2[5] = v9;
          operator delete(v9);
        }

        *(a2 + 2) = v79;
        v10 = v80;
        v11 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v10;
        a2[7] = v11;
        MIL::ValueInference::Tensor<unsigned short>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<unsigned short>::~Tensor(v60);
      default:
LABEL_93:
        std::ostringstream::basic_ostringstream[abi:ne200100](v60);
        v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "Unsupported Datatype ", 21);
        v54 = (*(**a1 + 32))();
        v55 = (*(*v54 + 88))(v54);
        MIL::IRDataTypeToString(v55, &v77);
        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = &v77;
        }

        else
        {
          v56 = v77.__r_.__value_.__r.__words[0];
        }

        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v77.__r_.__value_.__l.__size_;
        }

        v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v56, size);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ".", 1);
        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::logic_error::logic_error(exception, &v77);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }
}

void sub_2180EDD98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v5 - 105) < 0)
  {
    operator delete(*(v5 - 128));
    if ((v4 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(va);
      MIL::ValueInference::Tensor<unsigned short>::~Tensor(v2);
      _Unwind_Resume(a1);
    }
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v3);
  goto LABEL_6;
}

void *MIL::ValueInferenceUtils::GetCastedTensor<short>@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = MIL::ValueInference::Tensor<short>::Tensor(a2);
  v5 = (*(**a1 + 32))(v4);
  v6 = (*(*v5 + 88))(v5);
  if (v6 <= 8)
  {
    if (v6 > 4)
    {
      if (v6 == 5)
      {
        v33 = a1[1];
        v82 = *a1;
        v83 = v33;
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<float>::FromIRTensorValue(&v82, v60);
        if (v83)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }

        MIL::ValueInference::Tensor<float>::Cast<short>(v60, &v77);
        v34 = a2[1];
        if (v34)
        {
          a2[2] = v34;
          operator delete(v34);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v35 = a2[4];
        if (v35)
        {
          a2[5] = v35;
          operator delete(v35);
        }

        *(a2 + 2) = v79;
        v36 = v80;
        v37 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v36;
        a2[7] = v37;
        MIL::ValueInference::Tensor<short>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<float>::~Tensor(v60);
      }

      else
      {
        if (v6 != 7)
        {
          goto LABEL_93;
        }

        v18 = a1[1];
        v75 = *a1;
        v76 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<MIL::Bf16>::FromIRTensorValue(&v75, v60);
        if (v76)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v76);
        }

        MIL::ValueInference::Tensor<MIL::Bf16>::Cast<short>(v60, &v77);
        v19 = a2[1];
        if (v19)
        {
          a2[2] = v19;
          operator delete(v19);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v20 = a2[4];
        if (v20)
        {
          a2[5] = v20;
          operator delete(v20);
        }

        *(a2 + 2) = v79;
        v21 = v80;
        v22 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v21;
        a2[7] = v22;
        MIL::ValueInference::Tensor<short>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<MIL::Bf16>::~Tensor(v60);
      }
    }

    else if (v6 == 2)
    {
      v28 = a1[1];
      v69 = *a1;
      v70 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<BOOL>::FromIRTensorValue(&v69, v60);
      if (v70)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v70);
      }

      MIL::ValueInference::Tensor<BOOL>::Cast<short>(v60, &v77);
      v29 = a2[1];
      if (v29)
      {
        a2[2] = v29;
        operator delete(v29);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v30 = a2[4];
      if (v30)
      {
        a2[5] = v30;
        operator delete(v30);
      }

      *(a2 + 2) = v79;
      v31 = v80;
      v32 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v31;
      a2[7] = v32;
      MIL::ValueInference::Tensor<short>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<BOOL>::~Tensor(v60);
    }

    else
    {
      if (v6 != 4)
      {
        goto LABEL_93;
      }

      v13 = a1[1];
      v73 = *a1;
      v74 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<MIL::Fp16>::FromIRTensorValue(&v73, v60);
      if (v74)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v74);
      }

      MIL::ValueInference::Tensor<MIL::Fp16>::Cast<short>(v60, &v77);
      v14 = a2[1];
      if (v14)
      {
        a2[2] = v14;
        operator delete(v14);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v15 = a2[4];
      if (v15)
      {
        a2[5] = v15;
        operator delete(v15);
      }

      *(a2 + 2) = v79;
      v16 = v80;
      v17 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v16;
      a2[7] = v17;
      MIL::ValueInference::Tensor<short>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor(v60);
    }
  }

  else if (v6 <= 10)
  {
    if (v6 == 9)
    {
      v38 = a1[1];
      v67 = *a1;
      v68 = v38;
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<signed char>::FromIRTensorValue(&v67, v60);
      if (v68)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v68);
      }

      MIL::ValueInference::Tensor<signed char>::Cast<short>(v60, &v77);
      v39 = a2[1];
      if (v39)
      {
        a2[2] = v39;
        operator delete(v39);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v40 = a2[4];
      if (v40)
      {
        a2[5] = v40;
        operator delete(v40);
      }

      *(a2 + 2) = v79;
      v41 = v80;
      v42 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v41;
      a2[7] = v42;
      MIL::ValueInference::Tensor<short>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<signed char>::~Tensor(v60);
    }

    else
    {
      v23 = a1[1];
      v61 = *a1;
      v62 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueInference::Tensor<short>::FromIRTensorValue(&v61, v60);
      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      MIL::ValueInference::Tensor<short>::Cast<short>(v60, &v77);
      v24 = a2[1];
      if (v24)
      {
        a2[2] = v24;
        operator delete(v24);
      }

      *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
      a2[3] = v78;
      v78 = 0;
      *&v77.__r_.__value_.__r.__words[1] = 0uLL;
      v25 = a2[4];
      if (v25)
      {
        a2[5] = v25;
        operator delete(v25);
      }

      *(a2 + 2) = v79;
      v26 = v80;
      v27 = v81;
      v80 = 0;
      v79 = 0uLL;
      a2[6] = v26;
      a2[7] = v27;
      MIL::ValueInference::Tensor<short>::~Tensor(&v77);
      return MIL::ValueInference::Tensor<short>::~Tensor(v60);
    }
  }

  else
  {
    switch(v6)
    {
      case 11:
        v43 = a1[1];
        v71 = *a1;
        v72 = v43;
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<int>::FromIRTensorValue(&v71, v60);
        if (v72)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v72);
        }

        MIL::ValueInference::Tensor<int>::Cast<short>(v60, &v77);
        v44 = a2[1];
        if (v44)
        {
          a2[2] = v44;
          operator delete(v44);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v45 = a2[4];
        if (v45)
        {
          a2[5] = v45;
          operator delete(v45);
        }

        *(a2 + 2) = v79;
        v46 = v80;
        v47 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v46;
        a2[7] = v47;
        MIL::ValueInference::Tensor<short>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<int>::~Tensor(v60);
      case 14:
        v48 = a1[1];
        v65 = *a1;
        v66 = v48;
        if (v48)
        {
          atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<unsigned char>::FromIRTensorValue(&v65, v60);
        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        MIL::ValueInference::Tensor<unsigned char>::Cast<short>(v60, &v77);
        v49 = a2[1];
        if (v49)
        {
          a2[2] = v49;
          operator delete(v49);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v50 = a2[4];
        if (v50)
        {
          a2[5] = v50;
          operator delete(v50);
        }

        *(a2 + 2) = v79;
        v51 = v80;
        v52 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v51;
        a2[7] = v52;
        MIL::ValueInference::Tensor<short>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<unsigned char>::~Tensor(v60);
      case 15:
        v7 = a1[1];
        v63 = *a1;
        v64 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<unsigned short>::FromIRTensorValue(&v63, v60);
        if (v64)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v64);
        }

        MIL::ValueInference::Tensor<unsigned short>::Cast<short>(v60, &v77);
        v8 = a2[1];
        if (v8)
        {
          a2[2] = v8;
          operator delete(v8);
        }

        *(a2 + 1) = *&v77.__r_.__value_.__r.__words[1];
        a2[3] = v78;
        v78 = 0;
        *&v77.__r_.__value_.__r.__words[1] = 0uLL;
        v9 = a2[4];
        if (v9)
        {
          a2[5] = v9;
          operator delete(v9);
        }

        *(a2 + 2) = v79;
        v10 = v80;
        v11 = v81;
        v80 = 0;
        v79 = 0uLL;
        a2[6] = v10;
        a2[7] = v11;
        MIL::ValueInference::Tensor<short>::~Tensor(&v77);
        return MIL::ValueInference::Tensor<unsigned short>::~Tensor(v60);
      default:
LABEL_93:
        std::ostringstream::basic_ostringstream[abi:ne200100](v60);
        v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "Unsupported Datatype ", 21);
        v54 = (*(**a1 + 32))();
        v55 = (*(*v54 + 88))(v54);
        MIL::IRDataTypeToString(v55, &v77);
        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = &v77;
        }

        else
        {
          v56 = v77.__r_.__value_.__r.__words[0];
        }

        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v77.__r_.__value_.__l.__size_;
        }

        v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v56, size);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ".", 1);
        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::logic_error::logic_error(exception, &v77);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }
}

void sub_2180EE710(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v5 - 105) < 0)
  {
    operator delete(*(v5 - 128));
    if ((v4 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(va);
      MIL::ValueInference::Tensor<short>::~Tensor(v2);
      _Unwind_Resume(a1);
    }
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v3);
  goto LABEL_6;
}

void *MIL::ValueInference::Tensor<MIL::Bf16>::~Tensor(void *a1)
{
  *a1 = &unk_2829E9BB8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void MIL::ValueInference::Tensor<MIL::Bf16>::~Tensor(void *a1)
{
  MIL::ValueInference::Tensor<MIL::Bf16>::~Tensor(a1);

  JUMPOUT(0x21CEAFEA0);
}

void *MIL::ValueInference::Tensor<int>::~Tensor(void *a1)
{
  *a1 = &unk_2829E9BE8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void MIL::ValueInference::Tensor<int>::~Tensor(void *a1)
{
  MIL::ValueInference::Tensor<int>::~Tensor(a1);

  JUMPOUT(0x21CEAFEA0);
}

void *MIL::ValueInference::Tensor<BOOL>::~Tensor(void *a1)
{
  *a1 = &unk_2829E9C18;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void MIL::ValueInference::Tensor<BOOL>::~Tensor(void *a1)
{
  MIL::ValueInference::Tensor<BOOL>::~Tensor(a1);

  JUMPOUT(0x21CEAFEA0);
}

void *MIL::ValueInference::Tensor<unsigned short>::~Tensor(void *a1)
{
  *a1 = &unk_2829E9C48;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void MIL::ValueInference::Tensor<unsigned short>::~Tensor(void *a1)
{
  MIL::ValueInference::Tensor<unsigned short>::~Tensor(a1);

  JUMPOUT(0x21CEAFEA0);
}

void *MIL::ValueInference::Tensor<short>::~Tensor(void *a1)
{
  *a1 = &unk_2829E9C78;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void MIL::ValueInference::Tensor<short>::~Tensor(void *a1)
{
  MIL::ValueInference::Tensor<short>::~Tensor(a1);

  JUMPOUT(0x21CEAFEA0);
}

void MIL::ValueInference::Tensor<float>::Cast<float>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&__p, v6, v7, (v7 - v6) >> 2);
  MIL::ValueInference::Tensor<float>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_2180EEC38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<float>::Cast<int>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&__p, v6, v7, (v7 - v6) >> 2);
  MIL::ValueInference::Tensor<int>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_2180EED04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<float>::Cast<short>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<short>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&__p, v6, v7, (v7 - v6) >> 2);
  MIL::ValueInference::Tensor<short>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_2180EEDD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<float>::Cast<unsigned short>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&__p, v6, v7, (v7 - v6) >> 2);
  MIL::ValueInference::Tensor<unsigned short>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_2180EEE9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<float>::Cast<signed char>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<signed char>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&__p, v6, v7, (v7 - v6) >> 2);
  MIL::ValueInference::Tensor<signed char>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_2180EEF68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<float>::Cast<unsigned char>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&__p, v6, v7, (v7 - v6) >> 2);
  MIL::ValueInference::Tensor<unsigned char>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_2180EF034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<int>::Cast<int>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&__p, v6, v7, (v7 - v6) >> 2);
  MIL::ValueInference::Tensor<int>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_2180EF100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<int>::Cast<float>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&__p, v6, v7, (v7 - v6) >> 2);
  MIL::ValueInference::Tensor<float>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_2180EF1C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<int>::Cast<short>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<short>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&__p, v6, v7, (v7 - v6) >> 2);
  MIL::ValueInference::Tensor<short>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_2180EF290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<int>::Cast<unsigned short>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&__p, v6, v7, (v7 - v6) >> 2);
  MIL::ValueInference::Tensor<unsigned short>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_2180EF358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<int>::Cast<signed char>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<signed char>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&__p, v6, v7, (v7 - v6) >> 2);
  MIL::ValueInference::Tensor<signed char>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_2180EF420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<int>::Cast<unsigned char>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&__p, v6, v7, (v7 - v6) >> 2);
  MIL::ValueInference::Tensor<unsigned char>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_2180EF4E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<BOOL>::Cast<BOOL>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&__p, v6, v7, v7 - v6);
  MIL::ValueInference::Tensor<BOOL>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_2180EF5AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<BOOL>::Cast<float>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&__p, v6, v7, v7 - v6);
  MIL::ValueInference::Tensor<float>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_2180EF674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<BOOL>::Cast<int>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&__p, v6, v7, v7 - v6);
  MIL::ValueInference::Tensor<int>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_2180EF738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<BOOL>::Cast<short>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<short>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&__p, v6, v7, v7 - v6);
  MIL::ValueInference::Tensor<short>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_2180EF7FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<BOOL>::Cast<unsigned short>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&__p, v6, v7, v7 - v6);
  MIL::ValueInference::Tensor<unsigned short>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_2180EF8C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<BOOL>::Cast<signed char>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<signed char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&__p, v6, v7, v7 - v6);
  MIL::ValueInference::Tensor<signed char>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_2180EF984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<BOOL>::Cast<unsigned char>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&__p, v6, v7, v7 - v6);
  MIL::ValueInference::Tensor<unsigned char>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_2180EFA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<short>::Cast<short>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<short>::__init_with_size[abi:ne200100]<std::__wrap_iter<short const*>,std::__wrap_iter<short const*>>(&__p, v6, v7, (v7 - v6) >> 1);
  MIL::ValueInference::Tensor<short>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_2180EFB10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<short>::Cast<signed char>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<signed char>::__init_with_size[abi:ne200100]<std::__wrap_iter<short const*>,std::__wrap_iter<short const*>>(&__p, v6, v7, (v7 - v6) >> 1);
  MIL::ValueInference::Tensor<signed char>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_2180EFBD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<short>::Cast<float>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<short const*>,std::__wrap_iter<short const*>>(&__p, v6, v7, (v7 - v6) >> 1);
  MIL::ValueInference::Tensor<float>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_2180EFCA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<short>::Cast<int>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<short const*>,std::__wrap_iter<short const*>>(&__p, v6, v7, (v7 - v6) >> 1);
  MIL::ValueInference::Tensor<int>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_2180EFD68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<short>::Cast<unsigned short>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<std::__wrap_iter<short const*>,std::__wrap_iter<short const*>>(&__p, v6, v7, (v7 - v6) >> 1);
  MIL::ValueInference::Tensor<unsigned short>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_2180EFE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<short>::Cast<unsigned char>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<short const*>,std::__wrap_iter<short const*>>(&__p, v6, v7, (v7 - v6) >> 1);
  MIL::ValueInference::Tensor<unsigned char>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}