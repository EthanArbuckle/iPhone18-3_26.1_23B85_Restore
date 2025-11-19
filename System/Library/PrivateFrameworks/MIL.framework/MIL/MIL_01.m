__n128 std::__function::__func<anonymous namespace::IRFunctionImpl::SetInputs(std::map<std::string,MIL::IRValueType const*> &&)::{lambda(void)#1},std::allocator<std::map<std::string,MIL::IRValueType const*> &&>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2829DE2B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::IRFunctionImpl::SetInputs(std::map<std::string,MIL::IRValueType const*> &&)::{lambda(void)#1},std::allocator<std::map<std::string,MIL::IRValueType const*> &&>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__move_assign(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(a1, *(a1 + 8));
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

__n128 std::__function::__func<anonymous namespace::IRFunctionImpl::SetParent(MIL::IRProgram const*)::{lambda(void)#1},std::allocator<anonymous namespace::IRFunctionImpl::SetParent(MIL::IRProgram const*)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2829DE330;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::IRFunctionImpl::SetParent(MIL::IRProgram const*)::{lambda(void)#1},std::allocator<anonymous namespace::IRFunctionImpl::SetParent(MIL::IRProgram const*)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *anonymous namespace::IRFunctionImpl::SpecializationsCopy@<X0>(void *this@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v3 = this[29];
  v4 = this + 30;
  if (v3 != this + 30)
  {
    do
    {
      (*(*v3[7] + 32))(&v10);
      if (*(v3 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v11, v3[4], v3[5]);
      }

      else
      {
        v11 = *(v3 + 4);
      }

      v5 = v10;
      v10 = 0;
      v12 = v5;
      std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unique_ptr<MIL::IRBlock>>>(a2, &v11.__r_.__value_.__l.__data_);
      v6 = v12;
      v12 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }

      this = v10;
      v10 = 0;
      if (this)
      {
        this = (*(*this + 8))(this);
      }

      v7 = v3[1];
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
          v8 = v3[2];
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != v4);
  }

  return this;
}

void sub_217F94040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::destroy(v10, *(v10 + 8));
  _Unwind_Resume(a1);
}

void sub_217F94190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17);
  _Unwind_Resume(a1);
}

void *std::map<std::string,MIL::IRValueType const*>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,MIL::IRValueType const*>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,MIL::IRValueType const*>,std::__tree_node<std::__value_type<std::string,MIL::IRValueType const*>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,MIL::IRValueType const*>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,MIL::IRValueType const*>,std::__tree_node<std::__value_type<std::string,MIL::IRValueType const*>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,MIL::IRValueType const*> const&>(v5, (v5 + 1), v4 + 4);
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

uint64_t std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,MIL::IRValueType const*> const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__construct_node<std::pair<std::string const,MIL::IRValueType const*> const&>();
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__find_equal<std::string>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !std::less<std::string>::operator()[abi:ne200100](a1, a5, (a2 + 32)))
  {
    if (!std::less<std::string>::operator()[abi:ne200100](a1, (a2 + 32), a5))
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
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a5, v15 + 4))
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

  if (std::less<std::string>::operator()[abi:ne200100](a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(a1, a3, a5);
}

void sub_217F94570(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,MIL::IRValueType const*>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,MIL::IRValueType const*>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void anonymous namespace::RenameFlexibleShapeInfoMap<std::vector<MIL::IRDimension const*>>(std::string **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::__node_handle_extract[abi:ne200100]<std::__basic_node_handle<std::__hash_node<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,void *>,std::allocator<std::pair<std::string const,std::vector<MIL::IRDimension const*>>>,std::__map_node_handle_specifics>>(a2, &v2->__r_.__value_.__l.__data_, &v8);
      if (v8)
      {
        std::string::operator=((v8 + 16), v2 + 1);
        if (v8)
        {
          std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::__node_insert_unique(a2, v8);
          if (v5)
          {
            v6 = 0;
            if (HIBYTE(v9) == 1)
            {
              HIBYTE(v9) = 0;
            }
          }

          else
          {
            v6 = v8;
          }

          v8 = 0;
          if ((v9 & 0x100) != 0)
          {
            HIBYTE(v9) = 0;
          }

          if (v6)
          {
            std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<MIL::IRDimension const*>>,0>(v6 + 16);
            operator delete(v6);
            v7 = v8;
            if (v8)
            {
              std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<MIL::IRDimension const*>>,0>(v8 + 16);
              operator delete(v7);
            }
          }
        }
      }

      v2 += 2;
    }

    while (v2 != v3);
  }
}

MIL::Attributes::FlexibleShapeInfo **std::unique_ptr<MIL::Attributes::FlexibleShapeInfo>::~unique_ptr[abi:ne200100](MIL::Attributes::FlexibleShapeInfo **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::Attributes::FlexibleShapeInfo::~FlexibleShapeInfo(v2);
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_217F94860(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,MIL::IRValueType const*>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__erase_unique<std::string>(uint64_t **a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::erase(a1, v3);
  return 1;
}

uint64_t *std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__remove_node_pointer(a1, a2);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

uint64_t std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<MIL::IRDimension const*>> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<MIL::IRDimension const*>> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::__construct_node_hash<std::pair<std::string const,std::vector<MIL::IRDimension const*>> const&>();
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

void sub_217F94BC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<MIL::IRDimension const*>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::vector<MIL::IRDimension const*>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&this[1], *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  return this;
}

void sub_217F94D10(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217F94D8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<MIL::IRDimension const*>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<MIL::IRDimension const*>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::__node_handle_extract[abi:ne200100]<std::__basic_node_handle<std::__hash_node<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,void *>,std::allocator<std::pair<std::string const,std::vector<MIL::IRDimension const*>>>,std::__map_node_handle_specifics>>@<X0>(void *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::remove(a1, result, v8);
    v6 = v8[0];
    v8[0] = 0;
    result = std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,void *>>>>::~unique_ptr[abi:ne200100](v8);
    v7 = 1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    *(a3 + 8) = 0;
  }

  *a3 = v6;
  *(a3 + 9) = v7;
  return result;
}

void *std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
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

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 16);
  *(v2 + 8) = v4;
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, (v2 + 16));
  if (v5)
  {
    return v5;
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, const void **a3)
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

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(a1, v18);
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
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

void std::__basic_node_handle<std::__hash_node<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,void *>,std::allocator<std::pair<std::string const,std::vector<MIL::IRDimension const*>>>,std::__map_node_handle_specifics>::__destroy_node_pointer[abi:ne200100](void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<MIL::IRDimension const*>>,0>(v1 + 16);
    operator delete(v1);
    *a1 = 0;
  }
}

uint64_t std::unordered_map<std::string,std::vector<std::pair<int,int>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<int,int>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<int,int>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<int,int>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<std::pair<int,int>>> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<int,int>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<int,int>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<int,int>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<std::pair<int,int>>> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<int,int>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<int,int>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<int,int>>>>>::__construct_node_hash<std::pair<std::string const,std::vector<std::pair<int,int>>> const&>();
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

void sub_217F955C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::vector<std::pair<int,int>>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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
  std::vector<std::pair<int,int>>::__init_with_size[abi:ne200100]<std::pair<int,int>*,std::pair<int,int>*>(&this[1], *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  return this;
}

void sub_217F956C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<int,int>>::__init_with_size[abi:ne200100]<std::pair<int,int>*,std::pair<int,int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217F95738(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>>>::__construct_node_hash<std::pair<std::string const,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>> const&>();
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

void sub_217F95A14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

std::string *std::pair<std::string const,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>::unordered_map(&this[1], a2 + 24);
  return this;
}

void sub_217F95C1C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>::~pair(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_217F95EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_217F95F90(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t **std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__node_handle_insert_unique[abi:ne200100]<std::__basic_node_handle<std::__tree_node<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,void *>,std::allocator<std::pair<std::string const,std::unique_ptr<MIL::IRBlock>>>,std::__map_node_handle_specifics>,std::__insert_return_type<std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__tree_node<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,void *>*,long>>,std::__basic_node_handle<std::__tree_node<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,void *>,std::allocator<std::pair<std::string const,std::unique_ptr<MIL::IRBlock>>>,std::__map_node_handle_specifics>>>@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  v5 = *a2;
  if (!*a2)
  {
    *a3 = result + 1;
    *(a3 + 8) = 0;
LABEL_9:
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    return result;
  }

  result = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(result, &v8, (v5 + 32));
  if (!*result)
  {
    result = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__insert_node_at(v3, v8, result, v5);
    *a2 = 0;
    if (*(a2 + 9) == 1)
    {
      *(a2 + 9) = 0;
    }

    *a3 = v5;
    *(a3 + 8) = 1;
    goto LABEL_9;
  }

  *a3 = *result;
  *(a3 + 8) = 0;
  *(a3 + 16) = *a2;
  v7 = *(a2 + 4);
  *(a3 + 24) = v7;
  *a2 = 0;
  if ((v7 & 0x100) != 0)
  {
    *(a2 + 9) = 0;
  }

  return result;
}

void std::__basic_node_handle<std::__tree_node<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,void *>,std::allocator<std::pair<std::string const,std::unique_ptr<MIL::IRBlock>>>,std::__map_node_handle_specifics>::__destroy_node_pointer[abi:ne200100](void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::IRBlock>>,0>(v1 + 32);
    operator delete(v1);
    *a1 = 0;
  }
}

uint64_t MIL::GetDTypeForPixelFormat(int a1)
{
  result = 14;
  if (a1 > 5)
  {
    if (a1 <= 0x3A)
    {
      if (((1 << a1) & 0x7803C000002C040) != 0)
      {
        return 4;
      }

      if (a1 == 41)
      {
        return 15;
      }

      if (((1 << a1) & 0x10000100000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unsupported pixel format type.");
        __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
      }
    }

    if ((a1 - 90) >= 2)
    {
      if (a1 != 100)
      {
        return result;
      }

      return 4;
    }

    return 15;
  }

  if (a1 == 2)
  {
    return 4;
  }

  if (a1 == 3 || a1 == 5)
  {
    return 5;
  }

  return result;
}

uint64_t MIL::IsBiPlanar420Format(int a1)
{
  if ((a1 - 21) < 7 || (a1 - 70) < 2)
  {
    return 1;
  }

  if (a1 == 20 || a1 == 40)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unsupported pixel format type.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  return 0;
}

void MIL::GetShapeForPlane(MIL::IRConstantDimension *this@<X0>, MIL::MILContext *ChannelDimForFormat@<X4>, int a3@<W1>, MIL::IRDimension ***a4@<X2>, unsigned int a5@<W3>, void *a6@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a3 != 100)
  {
    ChannelDimForFormat = MIL::GetChannelDimForFormat(a3, a5);
  }

  v11 = MIL::IRConstantDimension::Make(this, ChannelDimForFormat);
  v12 = *a4;
  v13 = a4[1];
  if (v13 - *a4 != 16)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "ImageShape does not have exactly 2 dimensions.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v14 = v11;
  __p = 0;
  v24 = 0;
  v25 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, v12, v13, 2uLL);
  v15 = MIL::IsBiPlanar420Format(a3) ^ 1;
  if (a5 != 1)
  {
    LOBYTE(v15) = 1;
  }

  if ((v15 & 1) == 0)
  {
    if ((*(***a4 + 16))(**a4))
    {
      v16 = MIL::IRDimension::AsConstant(**a4);
      v17 = (*(*v16 + 48))(v16);
      v18 = MIL::IRConstantDimension::Make(this, (v17 >> 1));
      *__p = v18;
    }

    if ((*(*(*a4)[1] + 16))((*a4)[1]))
    {
      v19 = MIL::IRDimension::AsConstant((*a4)[1]);
      v20 = (*(*v19 + 48))(v19);
      v21 = MIL::IRConstantDimension::Make(this, (v20 >> 1));
      *(__p + 1) = v21;
    }
  }

  v26[0] = v14;
  v26[1] = *__p;
  v26[2] = *(__p + 1);
  a6[1] = 0;
  a6[2] = 0;
  *a6 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(a6, v26, &v27, 3uLL);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }
}

uint64_t MIL::Util::GetRowAlignedStrides@<X0>(MIL::IRConstantProperty *a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](a6, (a3[1] - *a3) >> 3);
  v12 = *a3;
  v13 = a3[1];
  if (v13 == *a3)
  {
LABEL_5:
    v16 = *a4;
    if (a4[1] != *a4)
    {
      v17 = 0;
      do
      {
        v18 = MIL::IRProperty::AsConstant(*(v16 + 8 * v17));
        ScalarDataType = MIL::IRConstantProperty::GetScalarDataType(v18);
        if (ScalarDataType != 14)
        {
          if (ScalarDataType == 12)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::to_string(&v55, v17);
            v38 = std::string::insert(&v55, 0, "interleave_factor at index: ");
            v39 = *&v38->__r_.__value_.__l.__data_;
            v56.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
            *&v56.__r_.__value_.__l.__data_ = v39;
            v38->__r_.__value_.__l.__size_ = 0;
            v38->__r_.__value_.__r.__words[2] = 0;
            v38->__r_.__value_.__r.__words[0] = 0;
            v40 = std::string::append(&v56, " is of type Int64. This interleave is not supproted. ");
            v41 = *&v40->__r_.__value_.__l.__data_;
            v57.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
            *&v57.__r_.__value_.__l.__data_ = v41;
            v40->__r_.__value_.__l.__size_ = 0;
            v40->__r_.__value_.__r.__words[2] = 0;
            v40->__r_.__value_.__r.__words[0] = 0;
            std::logic_error::logic_error(exception, &v57);
            exception->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          v42 = __cxa_allocate_exception(0x10uLL);
          std::to_string(&v56, v17);
          v43 = std::string::insert(&v56, 0, "Unexpected types for interleave_factor at index: ");
          v44 = *&v43->__r_.__value_.__l.__data_;
          v57.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
          *&v57.__r_.__value_.__l.__data_ = v44;
          v43->__r_.__value_.__l.__size_ = 0;
          v43->__r_.__value_.__r.__words[2] = 0;
          v43->__r_.__value_.__r.__words[0] = 0;
          std::logic_error::logic_error(v42, &v57);
          v42->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v42, off_278235F80, MEMORY[0x277D82610]);
        }

        v20 = MIL::IRProperty::AsConstant(*(*a4 + 8 * v17));
        if (MIL::IRConstantProperty::GetUInt8ScalarValue(v20) != 1)
        {
          v45 = __cxa_allocate_exception(0x10uLL);
          std::to_string(&v55, v17);
          v46 = std::string::insert(&v55, 0, "interleave_factor at index: ");
          v47 = *&v46->__r_.__value_.__l.__data_;
          v56.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
          *&v56.__r_.__value_.__l.__data_ = v47;
          v46->__r_.__value_.__l.__size_ = 0;
          v46->__r_.__value_.__r.__words[2] = 0;
          v46->__r_.__value_.__r.__words[0] = 0;
          v48 = std::string::append(&v56, " is not 1. This interleave is not supproted.");
          v49 = *&v48->__r_.__value_.__l.__data_;
          v57.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
          *&v57.__r_.__value_.__l.__data_ = v49;
          v48->__r_.__value_.__l.__size_ = 0;
          v48->__r_.__value_.__r.__words[2] = 0;
          v48->__r_.__value_.__r.__words[0] = 0;
          std::logic_error::logic_error(v45, &v57);
          v45->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v45, off_278235F80, MEMORY[0x277D82610]);
        }

        ++v17;
        v16 = *a4;
      }

      while (v17 < (a4[1] - *a4) >> 3);
      v12 = *a3;
      v13 = a3[1];
    }

    if (v13 == v12)
    {
      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    v21 = MIL::IRDimension::AsConstant(*(v13 - 8));
    result = (*(*v21 + 48))(v21);
    v22 = a2 - 2;
    if ((a2 - 2) >= 0x10 || ((0xF79Du >> v22) & 1) == 0)
    {
      v50 = __cxa_allocate_exception(0x10uLL);
      MIL::IRDataTypeToString(a2, &v55);
      v51 = std::string::insert(&v55, 0, "Unsupported MIL IRDataType (");
      v52 = *&v51->__r_.__value_.__l.__data_;
      v56.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
      *&v56.__r_.__value_.__l.__data_ = v52;
      v51->__r_.__value_.__l.__size_ = 0;
      v51->__r_.__value_.__r.__words[2] = 0;
      v51->__r_.__value_.__r.__words[0] = 0;
      v53 = std::string::append(&v56, ")");
      v54 = *&v53->__r_.__value_.__l.__data_;
      v57.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
      *&v57.__r_.__value_.__l.__data_ = v54;
      v53->__r_.__value_.__l.__size_ = 0;
      v53->__r_.__value_.__r.__words[2] = 0;
      v53->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(v50, &v57);
      __cxa_throw(v50, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v23 = *a6;
    v24 = a6[1] - *a6;
    if (!v24)
    {
      return result;
    }

    v25 = 0;
    v26 = 0;
    v27 = (a5 + qword_218582F50[v22] * result - 1) / a5 * a5 / qword_218582F50[v22];
    v28 = v24 >> 3;
    while (1)
    {
      v29 = v28 + v25;
      if (!v25)
      {
        break;
      }

      v30 = v27;
      if (v29 + 1 == v28)
      {
        goto LABEL_20;
      }

      v31 = MIL::IRProperty::AsConstant(*(v23 + 8 * v29));
      Int64ScalarValue = MIL::IRConstantProperty::GetInt64ScalarValue(v31);
      v33 = (*(**(*a3 + 8 * v29) + 16))(*(*a3 + 8 * v29));
      v34 = MIL::IRDimension::AsConstant(v33);
      v35 = (*(*v34 + 48))(v34);
      result = MIL::IRConstantProperty::MakeInt64Scalar(a1, (v35 * Int64ScalarValue));
LABEL_21:
      *(*a6 + 8 * v29 - 8) = result;
      ++v26;
      v23 = *a6;
      v28 = (a6[1] - *a6) >> 3;
      --v25;
      if (v26 >= v28)
      {
        return result;
      }
    }

    v30 = 1;
LABEL_20:
    result = MIL::IRConstantProperty::MakeInt64Scalar(a1, v30);
    goto LABEL_21;
  }

  v14 = 0;
  while (1)
  {
    result = (*(**(v12 + 8 * v14) + 24))(*(v12 + 8 * v14));
    if (result)
    {
      break;
    }

    ++v14;
    v12 = *a3;
    v13 = a3[1];
    if (v14 >= (v13 - *a3) >> 3)
    {
      goto LABEL_5;
    }
  }

  if (a6[1] != *a6)
  {
    v36 = 0;
    do
    {
      result = MIL::IRUnknownProperty::Make(a1, 0);
      *(*a6 + 8 * v36++) = result;
    }

    while (v36 < (a6[1] - *a6) >> 3);
  }

  return result;
}

void sub_217F96A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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
    if ((v30 & 1) == 0)
    {
LABEL_10:
      v32 = *v28;
      if (*v28)
      {
        *(v28 + 8) = v32;
        operator delete(v32);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v29);
  goto LABEL_10;
}

uint64_t std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217F96B98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<MIL::IRProperty const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_217F96C10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRObject::~IRObject(MIL::IRObject *this)
{
  *this = &unk_2829DE3B0;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(this + 24);
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t MIL::IRObject::IRObject(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829DE3B0;
  *(a1 + 8) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 24, a3);
  if (!*(a1 + 8))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    MIL::UnknownLocation::Make(exception);
  }

  return a1;
}

void sub_217F96DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  __cxa_free_exception(v18);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v17 + 24);
  v20 = *(v17 + 16);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::IRObject::Equals(MIL::IRObject *this, const MIL::IRObject *a2)
{
  if (this == a2)
  {
    return 1;
  }

  if (*(this + 6) != *(a2 + 6))
  {
    return 0;
  }

  v4 = (this + 40);
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    result = MIL::IRObject::TryGetAttribute(a2, v4 + 2);
    if (!result)
    {
      return result;
    }

    if (((*(*v4[5] + 16))(v4[5], result) & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(*this + 24);

  return v6(this, a2);
}

const void *MIL::IRObject::TryGetAttribute(uint64_t a1, const void **a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 24), a2);
  if (!v2)
  {
    return 0;
  }

  v4 = v2[5];
  v3 = v2[6];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v4;
}

const void *MIL::IRObject::GetAttribute(uint64_t a1, const void **a2)
{
  result = MIL::IRObject::TryGetAttribute(a1, a2);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = a1;
    v6 = exception;
    v8 = *(v5 + 8);
    v7 = *(v5 + 16);
    v14[0] = v8;
    v14[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    v9 = std::string::append(&v11, "' does not exist.");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v13 = v9->__r_.__value_.__r.__words[2];
    v12 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    MIL::OutOfRangeError::OutOfRangeError(v6, v14, &v12);
  }

  return result;
}

void sub_217F97084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  v25 = *(v23 - 40);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v22)
  {
    __cxa_free_exception(v21);
  }

  _Unwind_Resume(exception_object);
}

const void **MIL::IRObject::TryGetAttributeSharedPtr@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 24), a2);
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

const void **std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::insert_or_assign[abi:ne200100]<std::shared_ptr<MIL::IRValue const>>(void *a1, const void **a2, __int128 *a3)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::string,std::shared_ptr<MIL::IRValue const>>(a1, a2);
  v5 = v4;
  if ((v6 & 1) == 0)
  {
    v7 = *a3;
    *a3 = 0;
    *(a3 + 1) = 0;
    v8 = v4[6];
    *(v5 + 5) = v7;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  return v5;
}

void MIL::IRObject::SetLocation(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    MIL::UnknownLocation::Make(exception);
  }

  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = *(a1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_217F97310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  __cxa_free_exception(v17);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void std::__shared_ptr_pointer<MIL::UnknownLocation  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::UnknownLocation  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::UnknownLocation  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(void *a1, const void **a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::string,std::shared_ptr<MIL::IRValue const>>(void *a1, const void **a2)
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

void sub_217F97794(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::clear(a1);
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

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__deallocate_node(a1, *(a1 + 16));
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

void MIL::IROperation::~IROperation(MIL::IROperation *this)
{
  MIL::IRValueQueryable::~IRValueQueryable((this + 64));

  MIL::IRObject::~IRObject(this);
}

void *MIL::IROperation::IROperation(void *a1, __int128 *a2, uint64_t *a3)
{
  v5 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  MIL::IRObject::IRObject(a1, &v5, a3);
  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
  }

  MIL::IRValueQueryable::IRValueQueryable(a1 + 8);
  *a1 = &unk_2829DE450;
  a1[8] = &unk_2829DE560;
  return a1;
}

uint64_t MIL::IROperation::GetArgumentName(MIL::IRObject *a1)
{
  result = (*(*a1 + 120))(a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v5 = LocationPtr[1];
    v11[0] = *LocationPtr;
    v11[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    v6 = std::string::append(&v8, " does not exist.");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    v9 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    MIL::OutOfRangeError::OutOfRangeError(exception, v11, &v9);
  }

  return result;
}

void sub_217F97AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  v25 = *(v23 - 40);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    if ((v22 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v22)
  {
LABEL_10:
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v21);
  goto LABEL_10;
}

uint64_t MIL::IROperation::GetArgumentValue(uint64_t a1)
{
  result = (*(*a1 + 128))(a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v3 = std::string::append(&v5, " does not exist.");
    v4 = *&v3->__r_.__value_.__l.__data_;
    v6.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
    *&v6.__r_.__value_.__l.__data_ = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    std::logic_error::logic_error(exception, &v6);
    exception->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  return result;
}

void sub_217F97C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t MIL::IROperation::TryGetParameterValue(void *a1, uint64_t a2, uint64_t a3)
{
  MIL::IROperation::TryGetParameterValueSharedPtr(a1, a2, a3, &v5);
  v3 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

void MIL::IROperation::TryGetParameterValueSharedPtr(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  (*(*a1 + 136))(&v10);
  if (v10)
  {
    v8 = v11;
    *a4 = v10;
    a4[1] = v8;
    a4 = &v10;
LABEL_3:
    *a4 = 0;
    a4[1] = 0;
    goto LABEL_6;
  }

  v9 = (*(*a1 + 120))(a1, a2, a3);
  if (!v9)
  {
    goto LABEL_3;
  }

  (*(a1[8] + 56))(a1 + 8, v9, 1);
LABEL_6:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_217F97DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IROperation::GetParameterValue(MIL::IRObject *a1)
{
  v2 = (*(*a1 + 128))(a1);
  if (!v2)
  {
    ArgumentName = MIL::IROperation::GetArgumentName(a1);
    if (*(ArgumentName + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *ArgumentName, *(ArgumentName + 8));
    }

    else
    {
      v4 = *ArgumentName;
      __p.__r_.__value_.__r.__words[2] = *(ArgumentName + 16);
      *&__p.__r_.__value_.__l.__data_ = v4;
    }

    v2 = (*(*(a1 + 8) + 40))(a1 + 8, &__p, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return v2;
}

void sub_217F97E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IROperation::TryGetParameterType(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 128))(a1);
  if (v6)
  {
    v7 = *(*v6 + 32);

    return v7();
  }

  else
  {
    result = (*(*a1 + 120))(a1, a2, a3);
    if (result)
    {
      v9 = *(a1[8] + 24);

      return v9(a1 + 8, result, 1);
    }
  }

  return result;
}

uint64_t MIL::IROperation::GetParameterType(MIL::IRObject *a1)
{
  v2 = (*(*a1 + 128))(a1);
  if (v2)
  {
    v3 = *(*v2 + 32);

    return v3();
  }

  else
  {
    ArgumentName = MIL::IROperation::GetArgumentName(a1);
    if (*(ArgumentName + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *ArgumentName, *(ArgumentName + 8));
    }

    else
    {
      v6 = *ArgumentName;
      __p.__r_.__value_.__r.__words[2] = *(ArgumentName + 16);
      *&__p.__r_.__value_.__l.__data_ = v6;
    }

    v7 = (*(*(a1 + 8) + 16))(a1 + 8, &__p, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return v7;
  }
}

void sub_217F980F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IROperation::TryGetOutputType(MIL::IROperation *this, unint64_t a2)
{
  v3 = (*(*this + 176))(this);
  v7 = 0;
  v8 = 0;
  v6 = 0;
  std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRNamedValueType>*,std::shared_ptr<MIL::IRNamedValueType>*>(&v6, *v3, v3[1], (v3[1] - *v3) >> 4);
  Type = 0;
  if (a2 < (v7 - v6) >> 4)
  {
    Type = MIL::IRNamedValueType::GetType(*(v6 + 16 * a2));
  }

  v9 = &v6;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v9);
  return Type;
}

void sub_217F981B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t MIL::IROperation::GetOutputType(MIL::IROperation *this, unint64_t a2)
{
  result = MIL::IROperation::TryGetOutputType(this, a2);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v7 = LocationPtr[1];
    v26[0] = *LocationPtr;
    v26[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    std::to_string(&v20, a2);
    v8 = std::string::insert(&v20, 0, "Output ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v21, " does not exist in a block with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = (*(*this + 192))(this);
    std::to_string(&v19, v12);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v19;
    }

    else
    {
      v13 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v19.__r_.__value_.__l.__size_;
    }

    v15 = std::string::append(&v22, v13, size);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v23, " outputs.");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v25 = v17->__r_.__value_.__r.__words[2];
    v24 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    MIL::OutOfRangeError::OutOfRangeError(exception, v26, &v24);
  }

  return result;
}

void sub_217F9836C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v42 - 57) < 0)
  {
    operator delete(*(v42 - 80));
  }

  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  v44 = *(v42 - 40);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
    if ((v40 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (!v40)
  {
LABEL_18:
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v41);
  goto LABEL_18;
}

BOOL MIL::IROperation::IsParameterSet(uint64_t a1, const void **a2)
{
  v4 = (*(*a1 + 160))(a1);
  v5 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(v4, a2);
  return (*(*a1 + 160))(a1) + 8 != v5;
}

void MIL::IROperation::Make()
{
  operator new();
}

{
  operator new();
}

void sub_217F985B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  MEMORY[0x21CEAFEA0](v12, v13);
  _Unwind_Resume(a1);
}

_anonymous_namespace_::IROperationImpl **std::unique_ptr<anonymous namespace::IROperationImpl>::~unique_ptr[abi:ne200100](_anonymous_namespace_::IROperationImpl **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void sub_217F9870C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  MEMORY[0x21CEAFEA0](v12, v13);
  _Unwind_Resume(a1);
}

void MIL::IROperation::Make(uint64_t a1, uint64_t a2, void *a3)
{
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  v4 = (a3 + 1);
  v3 = *a3;
  if (*a3 != a3 + 1)
  {
    do
    {
      v14 = 0uLL;
      v15 = 0;
      v5 = *(v3 + 7);
      if (v5 != *(v3 + 8))
      {
        v6 = *v5;
        v13 = *(v5 + 2);
        *__p = v6;
        *(v5 + 1) = 0;
        *(v5 + 2) = 0;
        *v5 = 0;
        MIL::IRArgument::Make();
      }

      std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>>::pair[abi:ne200100]<std::string const&,std::vector<std::shared_ptr<MIL::IRArgument>>,0>(&v10, v3 + 2, &v14);
      std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>>>(&v16, &v10.__r_.__value_.__l.__data_);
      v18 = &v11;
      std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v18);
      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }

      v10.__r_.__value_.__r.__words[0] = &v14;
      std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v10);
      v7 = *(v3 + 1);
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
          v8 = *(v3 + 2);
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != v4);
  }

  operator new();
}

void sub_217F989C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, std::__shared_weak_count *a27)
{
  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  MIL::IROperation::Make((v27 | 8), v28);
  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(v29 - 120, *(v29 - 112));
  _Unwind_Resume(a1);
}

void **std::vector<std::shared_ptr<MIL::IRArgument>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRBlock>>>(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

void sub_217F98C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  v13 = *(v11 - 40);
  *(v11 - 40) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>>::pair[abi:ne200100]<std::string const&,std::vector<std::shared_ptr<MIL::IRArgument>>,0>(std::string *this, __int128 *a2, uint64_t a3)
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
  *&this[1].__r_.__value_.__l.__data_ = *a3;
  this[1].__r_.__value_.__r.__words[2] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return this;
}

uint64_t std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>>::~pair(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t *std::shared_ptr<MIL::IRArgument>::shared_ptr[abi:ne200100]<MIL::IRArgument,std::default_delete<MIL::IRArgument>,0>(uint64_t *result, uint64_t *a2)
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

void std::__shared_ptr_pointer<MIL::IRArgument  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::IRArgument  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRArgument  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void anonymous namespace::IROperationImpl::~IROperationImpl(_anonymous_namespace_::IROperationImpl *this)
{
  v2 = *(this + 21);
  *(this + 21) = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0](v2, 0x60C4044C4A2DFLL);
  }

  v4 = (this + 144);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 120);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(this + 96, *(this + 13));
  v3 = *(this + 11);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MIL::IRValueQueryable::~IRValueQueryable((this + 64));
  MIL::IRObject::~IRObject(this);
}

{

  JUMPOUT(0x21CEAFEA0);
}

void non-virtual thunk toanonymous namespace::IROperationImpl::~IROperationImpl(_anonymous_namespace_::IROperationImpl *this)
{
}

{

  JUMPOUT(0x21CEAFEA0);
}

void anonymous namespace::IROperationImpl::IROperationImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  MIL::IROperation::IROperation(a1, &v18, a4);
  if (*(&v18 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
  }

  *a1 = &unk_2829DE650;
  *(a1 + 64) = &unk_2829DE798;
  *(a1 + 72) = 0;
  *(a1 + 80) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 96) = *a5;
  v14 = a5 + 1;
  v15 = a5[1];
  *(a1 + 104) = v15;
  v16 = a1 + 104;
  v17 = a5[2];
  *(a1 + 112) = v17;
  if (v17)
  {
    *(v15 + 16) = v16;
    *a5 = v14;
    *v14 = 0;
    a5[2] = 0;
  }

  else
  {
    *(a1 + 96) = v16;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = *a6;
  *(a1 + 136) = *(a6 + 16);
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = a8;
}

void sub_217F99128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::IROperationImpl::SetBlocks(uint64_t a1, uint64_t a2)
{
  std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vdeallocate((a1 + 144));
  *(a1 + 144) = *a2;
  *(a1 + 160) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  operator new();
}

void *anonymous namespace::IROperationImpl::SetParent(void *this, const MIL::IRBlock *a2)
{
  this[9] = a2;
  v2 = this[18];
  v3 = this[19];
  if (v2 != v3)
  {
    if (a2)
    {
      v4 = a2 + 64;
    }

    else
    {
      v4 = 0;
    }

    do
    {
      v5 = *v2;
      v2 += 2;
      this = (*(*v5 + 104))(v5, v4);
    }

    while (v2 != v3);
  }

  return this;
}

void *anonymous namespace::IROperationImpl::PopulateDefaultValues(_anonymous_namespace_::IROperationImpl *this)
{
  v6[7] = *MEMORY[0x277D85DE8];
  result = *(this + 10);
  if (result)
  {
    result = (*(*result + 72))(result);
    if (result)
    {
      for (i = result[2]; i; i = *i)
      {
        v4 = (*(*this + 160))(this);
        v5 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(v4, i + 2);
        result = (*(*this + 160))(this);
        if (result + 1 == v5)
        {
          result = (*(*i[5] + 80))(i[5]);
          if (result)
          {
            (*(*i[5] + 104))(v6);
            MIL::IRArgument::Make();
          }
        }
      }
    }
  }

  return result;
}

void sub_217F99548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

_anonymous_namespace_::IROperationImpl *anonymous namespace::IROperationImpl::EqualsImpl(_anonymous_namespace_::IROperationImpl **this, const MIL::IRObject *lpsrc)
{
  if (result)
  {
    v4 = result;
    v7 = *(OperatorName + 23);
    if (v7 >= 0)
    {
      v8 = *(OperatorName + 23);
    }

    else
    {
      v8 = *(OperatorName + 8);
    }

    v9 = *(v6 + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(v6 + 8);
    }

    if (v8 == v9)
    {
      v11 = v7 >= 0 ? OperatorName : *OperatorName;
      v12 = v10 >= 0 ? v6 : *v6;
      if (!memcmp(v11, v12, v8) && this[14] == *(v4 + 14))
      {
        v13 = this[12];
        if (v13 == (this + 13))
        {
LABEL_29:
          v23 = this[15];
          v24 = this[16];
          if (v24 - v23 == *(v4 + 16) - *(v4 + 15))
          {
            if (v24 == v23)
            {
LABEL_34:
              v27 = this[21];
              v28 = *(v4 + 21);
              v29 = **v27;
              v30 = *(*v27 + 8);
              if (v30 - v29 == *(*v28 + 8) - **v28)
              {
                if (v30 == v29)
                {
                  return (this[22] == *(v4 + 22));
                }

                v31 = 0;
                v32 = 0;
                while ((MIL::IRObject::Equals(*(v29 + v31), *(**v28 + v31)) & 1) != 0)
                {
                  ++v32;
                  v29 = **v27;
                  v31 += 16;
                  if (v32 >= (*(*v27 + 8) - v29) >> 4)
                  {
                    return (this[22] == *(v4 + 22));
                  }
                }
              }
            }

            else
            {
              v25 = 0;
              v26 = 0;
              while (MIL::IRNamedValueType::Equals(*(v23 + v25), *(*(v4 + 15) + v25)))
              {
                ++v26;
                v23 = this[15];
                v25 += 16;
                if (v26 >= (this[16] - v23) >> 4)
                {
                  goto LABEL_34;
                }
              }
            }
          }
        }

        else
        {
          while (1)
          {
            v14 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(v4 + 96, v13 + 4);
            if ((v4 + 104) == v14)
            {
              break;
            }

            v15 = v14;
            v16 = *(v13 + 7);
            v17 = *(v13 + 8);
            if (v17 - v16 != *(v14 + 64) - *(v14 + 56))
            {
              break;
            }

            if (v17 != v16)
            {
              v18 = 0;
              v19 = 0;
              while (((*(**(v16 + v18) + 56))(*(v16 + v18), *(*(v15 + 56) + v18)) & 1) != 0)
              {
                ++v19;
                v16 = *(v13 + 7);
                v18 += 16;
                if (v19 >= (*(v13 + 8) - v16) >> 4)
                {
                  goto LABEL_23;
                }
              }

              return 0;
            }

LABEL_23:
            v20 = *(v13 + 1);
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
                v21 = *(v13 + 2);
                v22 = *v21 == v13;
                v13 = v21;
              }

              while (!v22);
            }

            v13 = v21;
            if (v21 == (this + 13))
            {
              goto LABEL_29;
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_217F998E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void anonymous namespace::IROperationImpl::WithBlocks(uint64_t a1)
{
  MIL::IRObject::GetLocationPtr(a1);
  Attributes = MIL::IRObject::GetAttributes(a1);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v5, Attributes);
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100](&v4, (a1 + 96));
  memset(v3, 0, sizeof(v3));
  std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRNamedValueType>*,std::shared_ptr<MIL::IRNamedValueType>*>(v3, *(a1 + 120), *(a1 + 128), (*(a1 + 128) - *(a1 + 120)) >> 4);
}

void anonymous namespace::IROperationImpl::WithRenames(MIL::IRObject *a1, const void ***a2)
{
  v67[0] = 0;
  v67[1] = 0;
  v66 = v67;
  v3 = *(a1 + 12);
  if (v3 != (a1 + 104))
  {
    do
    {
      v4 = v3[7];
      if (v4 != v3[8])
      {
        if ((*(**v4 + 24))())
        {
          v69[0] = v3 + 4;
          std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v66, v3 + 4);
          (*(**v4 + 48))(&v65);
          MIL::IRArgument::Make();
        }

        v69[0] = v3 + 4;
        std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v66, v3 + 4);
        Name = MIL::IRArgument::GetName(*v4);
        if (*(Name + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v64, *Name, *(Name + 8));
        }

        else
        {
          v6 = *Name;
          v64.__r_.__value_.__r.__words[2] = *(Name + 16);
          *&v64.__r_.__value_.__l.__data_ = v6;
        }

        MIL::IRArgument::Make();
      }

      v7 = v3[1];
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
          v8 = v3[2];
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != (a1 + 104));
    v10 = v66;
    if (v66 != v67)
    {
      do
      {
        v12 = v10[7];
        v11 = v10[8];
        while (v12 != v11)
        {
          if (((*(**v12 + 24))() & 1) == 0)
          {
            v13 = *a2;
            v14 = a2[1];
            while (v13 != v14)
            {
              v15 = MIL::IRArgument::GetName(*v12);
              v16 = *(v13 + 23);
              if (v16 >= 0)
              {
                v17 = *(v13 + 23);
              }

              else
              {
                v17 = v13[1];
              }

              v18 = *(v15 + 23);
              v19 = v18;
              if ((v18 & 0x80u) != 0)
              {
                v18 = *(v15 + 8);
              }

              if (v17 == v18)
              {
                v20 = v16 >= 0 ? v13 : *v13;
                v21 = v19 >= 0 ? v15 : *v15;
                if (!memcmp(v20, v21, v17))
                {
                  if (*(v13 + 47) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v63, v13[3], v13[4]);
                  }

                  else
                  {
                    v63 = *(v13 + 1);
                  }

                  MIL::IRArgument::Make();
                }
              }

              v13 += 6;
            }
          }

          v12 += 2;
        }

        v22 = v10[1];
        if (v22)
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v10[2];
            v9 = *v23 == v10;
            v10 = v23;
          }

          while (!v9);
        }

        v10 = v23;
      }

      while (v23 != v67);
    }
  }

  __src = 0;
  v61 = 0;
  v62 = 0;
  std::vector<std::shared_ptr<MIL::IROperation>>::reserve(&__src, (*(a1 + 16) - *(a1 + 15)) >> 4);
  v24 = *(a1 + 15);
  if (v24 != *(a1 + 16))
  {
    v25 = MIL::IRNamedValueType::GetName(*v24);
    if (*(v25 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v59, *v25, *(v25 + 8));
    }

    else
    {
      v26 = *v25;
      v59.__r_.__value_.__r.__words[2] = *(v25 + 16);
      *&v59.__r_.__value_.__l.__data_ = v26;
    }

    MIL::IRNamedValueType::GetType(*v24);
    MIL::IRNamedValueType::Make();
  }

  v27 = *a2;
  v28 = a2[1];
  while (v27 != v28)
  {
    v29 = __src;
    v30 = v61;
    while (v29 != v30)
    {
      v31 = MIL::IRNamedValueType::GetName(*v29);
      v32 = *(v31 + 23);
      if (v32 >= 0)
      {
        v33 = *(v31 + 23);
      }

      else
      {
        v33 = v31[1];
      }

      v34 = *(v27 + 23);
      v35 = v34;
      if (v34 < 0)
      {
        v34 = v27[1];
      }

      if (v33 == v34)
      {
        if (v32 < 0)
        {
          v31 = *v31;
        }

        if (v35 >= 0)
        {
          v36 = v27;
        }

        else
        {
          v36 = *v27;
        }

        if (!memcmp(v31, v36, v33))
        {
          v37 = *v29;
          if (*(v27 + 47) < 0)
          {
            std::string::__init_copy_ctor_external(&v58, v27[3], v27[4]);
          }

          else
          {
            v58 = *(v27 + 1);
          }

          MIL::IRNamedValueType::SetName(v37, &v58);
          if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v58.__r_.__value_.__l.__data_);
          }
        }
      }

      v29 += 2;
    }

    v27 += 6;
  }

  v55 = 0;
  v56 = 0;
  v57 = 0;
  v38 = *(a1 + 18);
  for (i = *(a1 + 19); v38 != i; v38 += 16)
  {
    (*(**v38 + 120))(&v68);
    if (v68)
    {
      operator new();
    }

    v68 = 0;
    v40 = v56;
    if (v56 >= v57)
    {
      v41 = v55;
      v42 = v56 - v55;
      v43 = (v56 - v55) >> 4;
      v44 = v43 + 1;
      if ((v43 + 1) >> 60)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v45 = v57 - v55;
      if ((v57 - v55) >> 3 > v44)
      {
        v44 = v45 >> 3;
      }

      if (v45 >= 0x7FFFFFFFFFFFFFF0)
      {
        v46 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v46 = v44;
      }

      v69[4] = &v55;
      if (v46)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRBlock>>>(&v55, v46);
      }

      v47 = (v56 - v55) >> 4;
      v48 = (16 * v43);
      *v48 = 0;
      v48[1] = 0;
      v49 = (16 * v43 - 16 * v47);
      memcpy(v49, v41, v42);
      v50 = v55;
      v51 = v57;
      v55 = v49;
      v56 = (16 * v43 + 16);
      v57 = 0;
      v69[2] = v50;
      v69[3] = v51;
      v69[0] = v50;
      v69[1] = v50;
      std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(v69);
      v52 = v68;
      v56 = (16 * v43 + 16);
      v68 = 0;
      if (v52)
      {
        (*(*v52 + 8))(v52);
      }
    }

    else
    {
      *v56 = 0;
      *(v40 + 1) = 0;
      v56 = v40 + 16;
    }
  }

  MIL::IRObject::GetLocationPtr(a1);
  Attributes = MIL::IRObject::GetAttributes(a1);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v69, Attributes);
}

void sub_217F9A37C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  *(v43 - 136) = &a12;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100]((v43 - 136));
  a12 = &a28;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(v43 - 160, *(v43 - 152));
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::IROperationImpl::GetOperatorName(_anonymous_namespace_::IROperationImpl *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = (*(*v1 + 16))(*(this + 10));
  v3 = *(v2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(v2 + 8);
  }

  if (!v3)
  {
LABEL_8:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Operation has no definition or definition has no name.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = *(*v1 + 16);

  return v4(v1);
}

uint64_t anonymous namespace::IROperationImpl::GetOperator(_anonymous_namespace_::IROperationImpl *this)
{
  result = *(this + 10);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Operator has not been defined.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t anonymous namespace::IROperationImpl::TryGetOperatorSharedPtr@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 88);
  *a2 = *(this + 80);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void anonymous namespace::IROperationImpl::SetOperator(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 88);
  *(a1 + 80) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t anonymous namespace::IROperationImpl::GetParentBlock(_anonymous_namespace_::IROperationImpl *this)
{
  result = *(this + 9);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v5 = LocationPtr[1];
    v7[0] = *LocationPtr;
    v7[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v6, "Cannot access non-existent parent of an IROperation.");
    MIL::InvalidOperationError::InvalidOperationError(exception, v7, v6);
  }

  return result;
}

void sub_217F9A7E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
    if ((v18 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v18)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v17);
  goto LABEL_8;
}

uint64_t anonymous namespace::IROperationImpl::TryGetArgumentName(uint64_t a1, const void **a2, unsigned int a3)
{
  v6 = (*(*a1 + 160))(a1);
  v7 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(v6, a2);
  if ((*(*a1 + 160))(a1) + 8 == v7)
  {
    return 0;
  }

  v8 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(a1 + 96, a2);
  if (a3 >= ((*(v8 + 64) - *(v8 + 56)) >> 4))
  {
    return 0;
  }

  v9 = *(**(*(std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(a1 + 96, a2) + 56) + 16 * a3) + 32);

  return v9();
}

uint64_t anonymous namespace::IROperationImpl::TryGetArgumentValue(uint64_t a1, const void **a2, unsigned int a3)
{
  v3 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

uint64_t anonymous namespace::IROperationImpl::TryGetArgumentValueSharedPtr@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v8 = (*(*a1 + 160))(a1);
  v9 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(v8, a2);
  result = (*(*a1 + 160))(a1);
  if (result + 8 == v9 || (result = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(a1 + 96, a2), a3 >= ((*(result + 64) - *(result + 56)) >> 4)))
  {
    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v11 = *(**(*(std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(a1 + 96, a2) + 56) + 16 * a3) + 48);

    return v11();
  }

  return result;
}

uint64_t anonymous namespace::IROperationImpl::GetNumArguments(MIL::IRObject *a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(a1 + 96, a2);
  if ((a1 + 104) == v3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v7 = LocationPtr[1];
    v13[0] = *LocationPtr;
    v13[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    v8 = std::string::append(&v10, " does not exist.");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    v11 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    MIL::OutOfRangeError::OutOfRangeError(exception, v13, &v11);
  }

  return (*(v3 + 64) - *(v3 + 56)) >> 4;
}

void sub_217F9ABB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  v25 = *(v23 - 40);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    if ((v22 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v22)
  {
LABEL_10:
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v21);
  goto LABEL_10;
}

void *anonymous namespace::IROperationImpl::SetArgumentMapping(_anonymous_namespace_::IROperationImpl *a1, void *a2)
{
  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__move_assign(a1 + 96, a2);
}

__n128 anonymous namespace::IROperationImpl::SetOutputs(uint64_t a1, __n128 *a2)
{
  std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vdeallocate((a1 + 120));
  result = *a2;
  *(a1 + 120) = *a2;
  *(a1 + 136) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void anonymous namespace::IROperationImpl::GetOutputNames(_anonymous_namespace_::IROperationImpl *this@<X0>, std::vector<std::string> *a2@<X8>)
{
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  std::vector<std::string>::reserve(a2, (*(this + 16) - *(this + 15)) >> 4);
  v5 = *(this + 15);
  v4 = *(this + 16);
  while (v5 != v4)
  {
    Name = MIL::IRNamedValueType::GetName(*v5);
    std::vector<std::string>::push_back[abi:ne200100](a2, Name);
    v5 += 2;
  }
}

void sub_217F9AD40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::IROperationImpl::UpdateInput(uint64_t a1, const void **a2, uint64_t a3)
{
  v3 = *(a1 + 96);
  v4 = (a1 + 104);
  if (v3 != (a1 + 104))
  {
    do
    {
      v7 = v3[7];
      if (v3[8] != v7)
      {
        v8 = 0;
        v9 = 0;
        do
        {
          if ((*(**(v7 + v8) + 16))(*(v7 + v8)))
          {
            Name = MIL::IRArgument::GetName(*(v7 + v8));
            v11 = *(Name + 23);
            if (v11 >= 0)
            {
              v12 = *(Name + 23);
            }

            else
            {
              v12 = Name[1];
            }

            v13 = *(a2 + 23);
            v14 = v13;
            if (v13 < 0)
            {
              v13 = a2[1];
            }

            if (v12 == v13)
            {
              if (v11 < 0)
              {
                Name = *Name;
              }

              if (v14 >= 0)
              {
                v15 = a2;
              }

              else
              {
                v15 = *a2;
              }

              if (!memcmp(Name, v15, v12))
              {
                v20 = *(a3 + 8);
                if (v20)
                {
                  atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
                }

                MIL::IRArgument::Make();
              }
            }
          }

          ++v9;
          v7 = v3[7];
          v8 += 16;
        }

        while (v9 < (v3[8] - v7) >> 4);
      }

      v16 = v3[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v3[2];
          v18 = *v17 == v3;
          v3 = v17;
        }

        while (!v18);
      }

      v3 = v17;
    }

    while (v17 != v4);
  }

  return 0;
}

void sub_217F9AF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12)
{
  if (a12)
  {
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::IROperationImpl::GetType(MIL::IRObject *a1)
{
  v2 = *(a1 + 9);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v7 = LocationPtr[1];
    v9[0] = *LocationPtr;
    v9[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v8, "Cannot query for a type when the parent block/scope is not set.");
    MIL::InvalidOperationError::InvalidOperationError(exception, v9, v8);
  }

  v3 = *(*(v2 + 64) + 16);

  return v3();
}

void sub_217F9B08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
    if ((v18 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v18)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v17);
  goto LABEL_8;
}

uint64_t anonymous namespace::IROperationImpl::TryGetType(uint64_t a1)
{
  result = *(a1 + 72);
  if (result)
  {
    return (*(*(result + 64) + 24))();
  }

  return result;
}

uint64_t anonymous namespace::IROperationImpl::GetTypes(_anonymous_namespace_::IROperationImpl *this)
{
  v2 = *(this + 9);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v7 = LocationPtr[1];
    v9[0] = *LocationPtr;
    v9[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v8, "Cannot query for a list of types in scope when the parent block/scope is not set.");
    MIL::InvalidOperationError::InvalidOperationError(exception, v9, v8);
  }

  v3 = *(*(v2 + 64) + 32);

  return v3();
}

void sub_217F9B1F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
    if ((v18 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v18)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v17);
  goto LABEL_8;
}

uint64_t anonymous namespace::IROperationImpl::GetValue(MIL::IRObject *a1)
{
  v2 = *(a1 + 9);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v7 = LocationPtr[1];
    v9[0] = *LocationPtr;
    v9[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v8, "Cannot query for a value when the parent block/scope is not set.");
    MIL::InvalidOperationError::InvalidOperationError(exception, v9, v8);
  }

  v3 = *(*(v2 + 64) + 40);

  return v3();
}

void sub_217F9B32C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
    if ((v18 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v18)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v17);
  goto LABEL_8;
}

uint64_t anonymous namespace::IROperationImpl::TryGetValue(uint64_t a1)
{
  result = *(a1 + 72);
  if (result)
  {
    return (*(*(result + 64) + 48))();
  }

  return result;
}

uint64_t anonymous namespace::IROperationImpl::TryGetValueSharedPtr@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 72);
  if (result)
  {
    return (*(*(result + 64) + 56))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t non-virtual thunk toanonymous namespace::IROperationImpl::TryGetType(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*(result + 64) + 24))();
  }

  return result;
}

uint64_t non-virtual thunk toanonymous namespace::IROperationImpl::TryGetValue(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*(result + 64) + 48))();
  }

  return result;
}

uint64_t non-virtual thunk toanonymous namespace::IROperationImpl::TryGetValueSharedPtr@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*(result + 64) + 56))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::vector<std::shared_ptr<MIL::IRArgument>>::__assign_with_size[abi:ne200100]<std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument> const*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
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

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRArgument>>,std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRArgument>>,std::shared_ptr<MIL::IRArgument>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRArgument>>,std::shared_ptr<MIL::IRArgument>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>,std::shared_ptr<MIL::IRNamedValueType>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_217F9BA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  MEMORY[0x21CEAFEA0](v13, v12);
  _Unwind_Resume(a1);
}

void *std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__tree_node<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__tree_node<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>> const&>(v5, (v5 + 1), v4 + 4);
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

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>> const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__construct_node<std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>> const&>();
  }

  return v3;
}

std::string *std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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
  std::vector<std::shared_ptr<MIL::IRArgument>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRArgument>*,std::shared_ptr<MIL::IRArgument>*>(&this[1], *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 4);
  return this;
}

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
  *&this[1].__r_.__value_.__l.__data_ = *(a2 + 24);
  this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  return this;
}

void sub_217F9BCD8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::shared_ptr<MIL::IRArgument>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRArgument>*,std::shared_ptr<MIL::IRArgument>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217F9BD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::shared_ptr<MIL::IRArgument>::operator=[abi:ne200100]<MIL::IRArgument,std::default_delete<MIL::IRArgument>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<MIL::IRArgument>::shared_ptr[abi:ne200100]<MIL::IRArgument,std::default_delete<MIL::IRArgument>,0>(&v6, a2);
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

void std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__move_assign(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(a1, *(a1 + 8));
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

void std::vector<std::string>::reserve(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < __n)
  {
    if (__n < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, __n);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
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

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
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

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__construct_node<std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>>>();
  }

  return v2;
}

void IRParameterImpl::~IRParameterImpl(IRParameterImpl *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  IRParameterImpl::~IRParameterImpl(this);

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IRParameter::Make()
{
  operator new();
}

{
  operator new();
}

void sub_217F9C420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MEMORY[0x21CEAFEA0](v10, v11);
  _Unwind_Resume(a1);
}

IRParameterImpl **std::unique_ptr<IRParameterImpl>::~unique_ptr[abi:ne200100](IRParameterImpl **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    IRParameterImpl::~IRParameterImpl(v2);
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void sub_217F9C51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MEMORY[0x21CEAFEA0](v10, v11);
  _Unwind_Resume(a1);
}

void *MIL::IRMemoryEffect::IRMemoryEffect(void *this)
{
  *this = &unk_2829DE890;
  return this;
}

{
  *this = &unk_2829DE890;
  return this;
}

void *MIL::IRMemoryEffect::TryAsStateReadEffect(void *this)
{
  if (this)
  {
  }

  return this;
}

void *MIL::IRMemoryEffect::AsStateReadEffect(MIL::IRMemoryEffect *this)
{
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

void *MIL::IRMemoryEffect::TryAsStateWriteEffect(void *this)
{
  if (this)
  {
  }

  return this;
}

void *MIL::IRMemoryEffect::AsStateWriteEffect(MIL::IRMemoryEffect *this)
{
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

void MIL::IRStateReadEffect::~IRStateReadEffect(MIL::IRStateReadEffect *this)
{
  v2 = *(this + 1);
  *this = &unk_2829DE8C0;
  *(this + 1) = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0](v2, 0xC400A2AC0F1);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_2829DE8C0;
  *(this + 1) = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0](v2, 0xC400A2AC0F1);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_2829DE8C0;
  *(this + 1) = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0](v2, 0xC400A2AC0F1);
  }

  JUMPOUT(0x21CEAFEA0);
}

void *MIL::IRStateReadEffect::IRStateReadEffect(void *this)
{
  *this = &unk_2829DE8C0;
  this[1] = 0;
  return this;
}

{
  *this = &unk_2829DE8C0;
  this[1] = 0;
  return this;
}

void *MIL::IRStateReadEffect::IRStateReadEffect(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829DE8C0;
  result[1] = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829DE8C0;
  result[1] = v2;
  return result;
}

void MIL::IRStateWriteEffect::~IRStateWriteEffect(MIL::IRStateWriteEffect *this)
{
  v2 = *(this + 1);
  *this = &unk_2829DE8E0;
  *(this + 1) = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0](v2, 0xC400A2AC0F1);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_2829DE8E0;
  *(this + 1) = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0](v2, 0xC400A2AC0F1);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_2829DE8E0;
  *(this + 1) = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0](v2, 0xC400A2AC0F1);
  }

  JUMPOUT(0x21CEAFEA0);
}

void *MIL::IRStateWriteEffect::IRStateWriteEffect(void *this)
{
  *this = &unk_2829DE8E0;
  this[1] = 0;
  return this;
}

{
  *this = &unk_2829DE8E0;
  this[1] = 0;
  return this;
}

void *MIL::IRStateWriteEffect::IRStateWriteEffect(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829DE8E0;
  result[1] = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829DE8E0;
  result[1] = v2;
  return result;
}

void IROperatorImpl::~IROperatorImpl(IROperatorImpl *this)
{
  std::__function::__value_func<std::vector<std::shared_ptr<MIL::IRValue const>> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](this + 336);
  v2 = *(this + 41);
  *(this + 41) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::__function::__value_func<std::vector<std::shared_ptr<MIL::IRValue const>> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>::~__value_func[abi:ne200100](this + 296);
  std::__function::__value_func<std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::~__value_func[abi:ne200100](this + 264);
  v3 = *(this + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__function::__value_func<void ()(MIL::IROperation &,std::shared_ptr<MIL::IRValue const>)>::~__value_func[abi:ne200100](this + 216);
  std::__function::__value_func<std::string ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](this + 184);
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](this + 152);
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](this + 120);
  v4 = *(this + 14);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = (this + 64);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v6);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  IROperatorImpl::~IROperatorImpl(this);

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IROperator::Make(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v11 = *MEMORY[0x277D85DE8];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  *a6 = 0;
  a6[1] = 0;
  *a7 = 0;
  a7[1] = 0;
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::__value_func[abi:ne200100](v10, a8);
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__value_func[abi:ne200100](v9, a9);
  std::make_unique[abi:ne200100]<IROperatorImpl,std::string,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,std::shared_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>,std::shared_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>,std::unique_ptr<MIL::IRMemoryEffect>,std::function<MIL::ValidationResult ()(MIL::IROperation const&)>,std::function<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>,0>();
}

void sub_217F9CEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v18 - 128);
  if (a5)
  {
    MIL::IROperator::Make(a5);
  }

  MIL::IROperator::Make(v17 | 8);
  _Unwind_Resume(a1);
}

void MIL::IROperator::Make(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v11 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  v9 = *a2;
  *__p = v6;
  *a2 = 0;
  *(a2 + 1) = 0;
  v8 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v7 = 0;
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::__value_func[abi:ne200100](v13, a4);
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__value_func[abi:ne200100](v12, a5);
  MIL::IROperator::Make(__p, &v9, &v8, &v7, v13, v12);
}

void sub_217F9D250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v11 - 72);
  if (a3)
  {
    MIL::IROperator::Make(a3);
  }

  MIL::IROperator::Make(v10 | 8);
  _Unwind_Resume(a1);
}

void MIL::IROperator::Make(void *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    for (i = *(*a2 + 16); i; i = *i)
    {
      (*(*i[5] + 40))(i[5]);
    }
  }

  v12 = *a3;
  if (*a3)
  {
    v13 = a5;
    v14 = *v12;
    v15 = v12[1];
    if (*v12 != v15)
    {
      do
      {
        v16 = *v14;
        v14 += 2;
        (*(*v16 + 40))(v16);
      }

      while (v14 != v15);
    }

    a5 = v13;
  }

  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  *a2 = 0;
  a2[1] = 0;
  *a3 = 0;
  a3[1] = 0;
  *a4 = 0;
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::__value_func[abi:ne200100](v19, a5);
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__value_func[abi:ne200100](v18, a6);
  std::make_unique[abi:ne200100]<IROperatorImpl,std::string,unsigned long long &,unsigned long long &,unsigned long long &,unsigned long long &,std::shared_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>,std::shared_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>,std::unique_ptr<MIL::IRMemoryEffect>,std::function<MIL::ValidationResult ()(MIL::IROperation const&)>,std::function<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>,0>();
}

void sub_217F9D508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a27);
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v28 - 128);
  if (a14)
  {
    MIL::IROperator::Make(a14);
  }

  MIL::IROperator::Make(v27 | 8);
  _Unwind_Resume(a1);
}

void IRParameterImpl::SetOptional(IRParameterImpl *this, char a2)
{
  *(this + 25) = a2;
  if ((a2 & 1) == 0)
  {
    v3 = *(this + 5);
    *(this + 4) = 0;
    *(this + 5) = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

BOOL IRParameterImpl::IsValidType(IRParameterImpl *this, const MIL::IRValueType *a2, const MIL::IRValueType *a3)
{
  v4 = *(this + 1) + 16;
  do
  {
    v4 = *v4;
  }

  while (v4 && !MIL::IsEqualOrStrongerType(*(v4 + 16), a2, a3));
  return v4 != 0;
}

uint64_t IRParameterImpl::GetDefaultValue(IRParameterImpl *this)
{
  result = *(this + 4);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Default value has not been set.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t IRParameterImpl::TryGetDefaultValueSharedPtr@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 40);
  *a2 = *(this + 32);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void IRParameterImpl::SetDefaultValue(uint64_t a1, void *a2)
{
  if ((*(a1 + 25) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot set a default value for a non-optional IRParameter.");
LABEL_11:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = (*(**a2 + 32))();
  v6 = *(a1 + 8) + 16;
  do
  {
    v6 = *v6;
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Default value does not have a permitted type for this IRParameter.");
      goto LABEL_11;
    }
  }

  while ((MIL::IsEqualOrStrongerType(*(v6 + 16), v5, v4) & 1) == 0);
  v7 = *a2;
  *a2 = 0;
  a2[1] = 0;
  v8 = *(a1 + 40);
  *(a1 + 32) = v7;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void **IROperatorImpl::AddConstraints(void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[9];
  v4 = result[10];
  if (v5 >= v4)
  {
    v7 = (result + 8);
    v8 = v3[8];
    v9 = (v5 - v8) >> 4;
    if ((v9 + 1) >> 60)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v8;
    v11 = v10 >> 3;
    if (v10 >> 3 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v19[4] = v3 + 8;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::Validation::Constraints const>>>(v7, v12);
    }

    v13 = (16 * v9);
    *v13 = *a2;
    v6 = 16 * v9 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v14 = v3[8];
    v15 = v3[9] - v14;
    v16 = v13 - v15;
    memcpy(v13 - v15, v14, v15);
    v17 = v3[8];
    v3[8] = v16;
    v3[9] = v6;
    v18 = v3[10];
    v3[10] = 0;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[9] = v6;
  return result;
}

uint64_t IROperatorImpl::GetParameters(IROperatorImpl *this)
{
  result = *(this + 11);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Operator parameters have not been defined.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t IROperatorImpl::GetOutputs(IROperatorImpl *this)
{
  result = *(this + 13);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Operator outputs have not been defined.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void IROperatorImpl::Validate(IROperatorImpl *this@<X0>, const MIL::IROperation *a2@<X1>, MIL::ValidationResult *a3@<X8>)
{
  IROperatorImpl::ValidateInputs(this, a2, v22);
  if ((*(v22[0] + 2))(v22) & 1) != 0 && (MIL::ValidationResult::~ValidationResult(v22), IROperatorImpl::ValidateOutputs(this, a2, v22), ((*(v22[0] + 2))(v22)) && (MIL::ValidationResult::~ValidationResult(v22), IROperatorImpl::ValidateAttributes(this, a2, v22), ((*(v22[0] + 2))(v22)))
  {
    MIL::ValidationResult::~ValidationResult(v22);
    v6 = *(this + 8);
    v7 = *(this + 9);
    while (v6 != v7)
    {
      (*(**v6 + 16))(v22);
      if (((*(v22[0] + 2))(v22) & 1) == 0)
      {
        goto LABEL_29;
      }

      MIL::ValidationResult::~ValidationResult(v22);
      v6 += 16;
    }

    (*(*a2 + 200))(v21, a2);
    std::unordered_set<std::string>::unordered_set<std::__wrap_iter<std::string*>>(v22, v21[0], v21[1]);
    v8 = (*(*a2 + 160))(a2);
    v9 = v8 + 1;
    v10 = *v8;
    if (*v8 != v8 + 1)
    {
      do
      {
        v11 = v10[7];
        v12 = v10[8];
        while (v11 != v12)
        {
          if (((*(**v11 + 24))() & 1) == 0)
          {
            Name = MIL::IRArgument::GetName(*v11);
            if (*(Name + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *Name, *(Name + 8));
            }

            else
            {
              v14 = *Name;
              __p.__r_.__value_.__r.__words[2] = *(Name + 16);
              *&__p.__r_.__value_.__l.__data_ = v14;
            }

            if (std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v22, &__p.__r_.__value_.__l.__data_))
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Operator argument and output names must not be the same.");
              __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          v11 += 2;
        }

        v15 = v10[1];
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
            v16 = v10[2];
            v17 = *v16 == v10;
            v10 = v16;
          }

          while (!v17);
        }

        v10 = v16;
      }

      while (v16 != v9);
    }

    v18 = *(this + 18);
    if (v18)
    {
      (*(*v18 + 48))(v18, a2);
    }

    else
    {
      MIL::ValidationResult::ValidationResult(a3);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v22);
    v22[0] = v21;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v22);
  }

  else
  {
LABEL_29:
    MIL::MILResult::MILResult(a3, v22);
    *a3 = &unk_2829E9B70;
    *(a3 + 12) = v23;
    MIL::ValidationResult::~ValidationResult(v22);
  }
}

uint64_t IROperatorImpl::GetConstant@<X0>(IROperatorImpl *this@<X0>, const MIL::IROperation *a2@<X1>, void *a3@<X8>)
{
  result = *(this + 22);
  if (result)
  {
    return (*(*result + 48))(result, a2);
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

_BYTE *IROperatorImpl::GetCallee@<X0>(IROperatorImpl *this@<X0>, const MIL::IROperation *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *(this + 26);
  if (v3)
  {
    return (*(*v3 + 48))(v3, a2);
  }

  else
  {
    return std::string::basic_string[abi:ne200100]<0>(a3, "");
  }
}

uint64_t IROperatorImpl::SetSetConstantFunction(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 176) && !*(a1 + 360))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add SetConstantFunction to an IROperator that does not define a constant.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return std::__function::__value_func<void ()(MIL::IROperation &,std::shared_ptr<MIL::IRValue const>)>::operator=[abi:ne200100](a1 + 216, a2);
}

void IROperatorImpl::SetConstant(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (!*(a1 + 240))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "No SetConstantFunction is defined for this IROperator.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v3 = *(a1 + 240);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, a2, &v5);
  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
  }
}

uint64_t IROperatorImpl::GetAttributes(IROperatorImpl *this)
{
  result = *(this + 31);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Operator attributes have not been defined.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void IROperatorImpl::SetAttributes(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 256);
  *(a1 + 248) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void IROperatorImpl::InferOutputValueTypes(void *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (!a1[36])
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v29);
    std::operator+<char>();
    v14 = std::string::append(&v27, " ValueTypeInferenceFunction has not been defined.");
    v15 = *&v14->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &__p);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  IROperatorImpl::ValidateInputs(a1, a3, a4, &v29);
  if (!MIL::ValidationResult::IsGood(&v29))
  {
    v19 = __cxa_allocate_exception(0x48uLL);
    v23 = v30;
    v30 = 0uLL;
    v24 = v31;
    v25 = v32;
    v31 = 0uLL;
    v32 = 0;
    v22 = &unk_2829E9B70;
    v26 = v33;
    MIL::ValidationError::ValidationError(v19, &v22);
  }

  v12 = a3[1];
  v20 = *a3;
  v21 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a1[36];
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v13 + 48))(v13, a2, &v20, a4, a5, a6);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  MIL::ValidationResult::~ValidationResult(&v29);
}

void sub_217F9E378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a29 < 0)
  {
    operator delete(__p);
    if ((v31 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a30);
      _Unwind_Resume(a1);
    }
  }

  else if (!v31)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v30);
  goto LABEL_6;
}

uint64_t IROperatorImpl::InferOutputValues(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (!a1[40])
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&p_src);
    std::operator+<char>();
    v13 = std::string::append(&__src, " ValueInferenceFunction has not been defined.");
    v14 = *&v13->__r_.__value_.__l.__data_;
    *&v37 = *(&v13->__r_.__value_.__l + 2);
    *__p = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if ((SBYTE7(v37) & 0x80u) == 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if ((SBYTE7(v37) & 0x80u) == 0)
    {
      v16 = BYTE7(v37);
    }

    else
    {
      v16 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&p_src, v15, v16);
    if (SBYTE7(v37) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, __p);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *__p = 0u;
  v37 = 0u;
  v38 = 1065353216;
  for (i = *(a4 + 16); i; i = *i)
  {
    memset(&__src, 0, sizeof(__src));
    v8 = i[5];
    if (v8 != i[6])
    {
      v9 = v8[1];
      v34 = *v8;
      v35 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      MIL::IRTypedArgument::Make();
    }

    p_src = (i + 2);
    v10 = (std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(__p, i + 2) + 5);
    if (v10 != &__src)
    {
      std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__assign_with_size[abi:ne200100]<std::shared_ptr<MIL::IRTypedArgument>*,std::shared_ptr<MIL::IRTypedArgument>*>(v10, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_, (__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]) >> 4);
    }

    p_src = &__src;
    std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&p_src);
  }

  IROperatorImpl::ValidateInputs(a1, a3, __p, &p_src);
  if (!MIL::ValidationResult::IsGood(&p_src))
  {
    v18 = __cxa_allocate_exception(0x48uLL);
    v19 = v41;
    v41 = 0uLL;
    v30 = v19;
    v31 = v42;
    v32 = v43;
    v42 = 0uLL;
    v43 = 0;
    v29 = &unk_2829E9B70;
    v33 = v44;
    MIL::ValidationError::ValidationError(v18, &v29);
  }

  v11 = a3[1];
  v27 = *a3;
  v28 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::function<std::vector<std::shared_ptr<MIL::IRValue const>> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>::operator()((a1 + 37), a2, &v27, a4, a5, a6, a7);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  MIL::ValidationResult::~ValidationResult(&p_src);
  return std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(__p);
}

void sub_217F9E898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44)
{
  if (a34 < 0)
  {
    operator delete(__p);
    if ((v45 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a44);
      _Unwind_Resume(a1);
    }
  }

  else if (!v45)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v44);
  goto LABEL_6;
}

void IROperatorImpl::GetConstants(IROperatorImpl *this@<X0>, const MIL::IROperation *a2@<X1>, void *a3@<X8>)
{
  v16[31] = *MEMORY[0x277D85DE8];
  v4 = *(this + 22);
  v5 = *(this + 45);
  if (v4)
  {
    if (!v5)
    {
      (*(*v4 + 48))(&v14, v4, a2);
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      std::vector<std::shared_ptr<MIL::IRValue const>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRValue const> const*,std::shared_ptr<MIL::IRValue const> const*>(a3, &v14, v16, 1uLL);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      return;
    }
  }

  else if (!v5)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
    std::operator+<char>();
    v7 = std::string::append(&v12, " GetConstantFunction or GetConstantsFunction has not been defined.");
    v8 = *&v7->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &__p);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *(*v5 + 48);

  v6();
}

void sub_217F9EC20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a23);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::Validation::Constraints const>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void IROperatorImpl::ValidateInputs(IROperatorImpl *this@<X0>, const MIL::IROperation *a2@<X1>, MIL::ValidationResult *a3@<X8>)
{
  MIL::ValidationResult::ValidationResult(v11);
  memset(v9, 0, sizeof(v9));
  v10 = 1065353216;
  MIL::Validation::OpToTypeInferenceParams(a2, v9, v7);
  if ((*(v7[0] + 16))(v7))
  {
    MIL::ValidationResult::~ValidationResult(v7);
    LocationPtr = MIL::IRObject::GetLocationPtr(a2);
    MIL::IRObject::GetAttributes(a2);
    IROperatorImpl::ValidateInputs(this, LocationPtr, v9, a3);
  }

  else
  {
    MIL::MILResult::MILResult(a3, v7);
    *a3 = &unk_2829E9B70;
    *(a3 + 12) = v8;
    MIL::ValidationResult::~ValidationResult(v7);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(v9);
  MIL::ValidationResult::~ValidationResult(v11);
}

void sub_217F9EE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(va);
  MIL::ValidationResult::~ValidationResult((v9 - 88));
  _Unwind_Resume(a1);
}

uint64_t IROperatorImpl::ValidateOutputs@<X0>(IROperatorImpl *this@<X0>, const MIL::IROperation *a2@<X1>, MIL::ValidationResult *a3@<X8>)
{
  memset(v93, 0, sizeof(v93));
  v94 = 1065353216;
  if ((*(*a2 + 192))(a2) >= *(this + 6) && (*(*a2 + 192))(a2) <= *(this + 7))
  {
    v29 = *(this + 13);
    if (v29)
    {
      v30 = 0;
      for (i = 0; i < (*(*a2 + 192))(a2); ++i)
      {
        OutputType = MIL::IROperation::GetOutputType(a2, i);
        if (i >= (v29[1] - *v29) >> 4)
        {
          std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
        }

        v33 = OutputType;
        if (((*(**(*v29 + v30) + 72))(*(*v29 + v30), OutputType) & 1) == 0)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&v77);
          v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v77, "Output '", 8);
          v38 = MEMORY[0x21CEAFB40](v37, i);
          v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "' has incorrect type for operator '", 35);
          v40 = (*(*a2 + 56))(a2);
          v41 = *(v40 + 23);
          if (v41 >= 0)
          {
            v42 = v40;
          }

          else
          {
            v42 = *v40;
          }

          if (v41 >= 0)
          {
            v43 = *(v40 + 23);
          }

          else
          {
            v43 = *(v40 + 8);
          }

          v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, v42, v43);
          v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "'. Expected ", 12);
          if (i >= (v29[1] - *v29) >> 4)
          {
            std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
          }

          v46 = v45;
          v47 = (*(**(*v29 + v30) + 16))(*(*v29 + v30));
          if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v48 = &v91;
          }

          else
          {
            v48 = v91.__r_.__value_.__r.__words[0];
          }

          if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v91.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v91.__r_.__value_.__l.__size_;
          }

          v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v48, size);
          v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "; got ", 6);
          (*(*v33 + 56))(&v90, v33);
          if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v52 = &v90;
          }

          else
          {
            v52 = v90.__r_.__value_.__r.__words[0];
          }

          if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v53 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v53 = v90.__r_.__value_.__l.__size_;
          }

          v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, v52, v53);
          v89.__r_.__value_.__s.__data_[0] = 46;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, &v89, 1);
          if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v90.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v91.__r_.__value_.__l.__data_);
          }

          LocationPtr = MIL::IRObject::GetLocationPtr(a2);
          v56 = LocationPtr[1];
          v75 = *LocationPtr;
          v76 = v56;
          if (v56)
          {
            atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::stringbuf::str();
          MIL::ValidationResult::ValidationResult(a3, &v75, 313, &__p);
          if (v74 < 0)
          {
            operator delete(__p);
          }

          if (v76)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v76);
          }

          v77.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82828];
          *(v77.__r_.__value_.__r.__words + *(v77.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82828] + 24);
          v77.__r_.__value_.__l.__size_ = MEMORY[0x277D82878] + 16;
          if (v79 < 0)
          {
            operator delete(v78);
          }

          v77.__r_.__value_.__l.__size_ = MEMORY[0x277D82868] + 16;
          std::locale::~locale(&v77.__r_.__value_.__r.__words[2]);
          std::ostream::~ostream();
          MEMORY[0x21CEAFDA0](&v80);
          return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v93);
        }

        v30 += 16;
      }
    }

    (*(*a2 + 200))(&v77, a2);
    v35 = v77.__r_.__value_.__l.__size_;
    for (j = v77.__r_.__value_.__r.__words[0]; ; j += 24)
    {
      if (j == v35)
      {
        v91.__r_.__value_.__r.__words[0] = &v77;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v91);
        MIL::ValidationResult::ValidationResult(a3);
        return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v93);
      }

      v36 = *(j + 23);
      if (v36 < 0)
      {
        v36 = *(j + 8);
      }

      if (!v36)
      {
        break;
      }

      if (std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v93, j))
      {
        v61 = MIL::IRObject::GetLocationPtr(a2);
        v62 = v61[1];
        v67 = *v61;
        v68 = v62;
        if (v62)
        {
          atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::operator+<char>();
        v63 = std::string::append(&v91, "' as both an input and an output.");
        v64 = *&v63->__r_.__value_.__l.__data_;
        v66 = v63->__r_.__value_.__r.__words[2];
        *v65 = v64;
        v63->__r_.__value_.__l.__size_ = 0;
        v63->__r_.__value_.__r.__words[2] = 0;
        v63->__r_.__value_.__r.__words[0] = 0;
        MIL::ValidationResult::ValidationResult(a3, &v67, 303, v65);
        if (SHIBYTE(v66) < 0)
        {
          operator delete(v65[0]);
        }

        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v91.__r_.__value_.__l.__data_);
        }

        v59 = v68;
        if (!v68)
        {
          goto LABEL_102;
        }

LABEL_101:
        std::__shared_weak_count::__release_shared[abi:ne200100](v59);
        goto LABEL_102;
      }
    }

    v57 = MIL::IRObject::GetLocationPtr(a2);
    v58 = v57[1];
    v71 = *v57;
    v72 = v58;
    if (v58)
    {
      atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v69, "Operation output names must be non-empty.");
    MIL::ValidationResult::ValidationResult(a3, &v71, 311, v69);
    if (v70 < 0)
    {
      operator delete(v69[0]);
    }

    v59 = v72;
    if (v72)
    {
      goto LABEL_101;
    }

LABEL_102:
    v91.__r_.__value_.__r.__words[0] = &v77;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v91);
  }

  else
  {
    (*(*a2 + 56))(a2);
    std::operator+<char>();
    v6 = std::string::append(&v87, " number of outputs must be within the range (inclusive): ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v86, *(this + 6));
    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v86;
    }

    else
    {
      v8 = v86.__r_.__value_.__r.__words[0];
    }

    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = v86.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v88, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v89.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v89.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v89, " : ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v90.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v90.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v85, *(this + 7));
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v85;
    }

    else
    {
      v14 = v85.__r_.__value_.__r.__words[0];
    }

    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = v85.__r_.__value_.__l.__size_;
    }

    v16 = std::string::append(&v90, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v91.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v91.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v91, ". Provided ");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v77.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v77.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = (*(*a2 + 192))(a2);
    std::to_string(&v84, v20);
    if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v84;
    }

    else
    {
      v21 = v84.__r_.__value_.__r.__words[0];
    }

    if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = v84.__r_.__value_.__l.__size_;
    }

    v23 = std::string::append(&v77, v21, v22);
    v24 = v23->__r_.__value_.__r.__words[0];
    v25 = v23->__r_.__value_.__l.__size_;
    v92[0] = v23->__r_.__value_.__r.__words[2];
    *(v92 + 3) = *(&v23->__r_.__value_.__r.__words[2] + 3);
    v26 = SHIBYTE(v23->__r_.__value_.__r.__words[2]);
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v91.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    v27 = MIL::IRObject::GetLocationPtr(a2);
    v28 = v27[1];
    v82 = *v27;
    v83 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v26 < 0)
    {
      std::string::__init_copy_ctor_external(&v81, v24, v25);
    }

    else
    {
      v81.__r_.__value_.__r.__words[0] = v24;
      v81.__r_.__value_.__l.__size_ = v25;
      LODWORD(v81.__r_.__value_.__r.__words[2]) = v92[0];
      *(&v81.__r_.__value_.__r.__words[2] + 3) = *(v92 + 3);
      *(&v81.__r_.__value_.__s + 23) = v26;
    }

    MIL::ValidationResult::ValidationResult(a3, &v82, 310, &v81);
    if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v81.__r_.__value_.__l.__data_);
    }

    if (v83)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v83);
    }

    if (v26 < 0)
    {
      operator delete(v24);
    }
  }

  return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v93);
}

void sub_217F9F71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 121) < 0)
  {
    operator delete(*(v28 - 144));
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  *(v28 - 144) = &a28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v28 - 144));
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v28 - 112);
  _Unwind_Resume(a1);
}

void IROperatorImpl::ValidateAttributes(IROperatorImpl *this@<X0>, const MIL::IROperation *a2@<X1>, MIL::ValidationResult *a3@<X8>)
{
  v6 = *(MIL::IRObject::GetAttributes(a2) + 16);
  if (v6)
  {
    while (1)
    {
      if (!v6[5])
      {
        LocationPtr = MIL::IRObject::GetLocationPtr(a2);
        v14 = LocationPtr[1];
        v71 = *LocationPtr;
        v72 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::operator+<char>();
        v15 = std::string::append(&v65, "'.");
        v16 = *&v15->__r_.__value_.__l.__data_;
        v70 = v15->__r_.__value_.__r.__words[2];
        v69 = v16;
        v15->__r_.__value_.__l.__size_ = 0;
        v15->__r_.__value_.__r.__words[2] = 0;
        v15->__r_.__value_.__r.__words[0] = 0;
        MIL::ValidationResult::ValidationResult(a3, &v71, 307, &v69);
        if (SHIBYTE(v70) < 0)
        {
          operator delete(v69);
        }

        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v65.__r_.__value_.__l.__data_);
        }

        if (v72)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v72);
        }

        return;
      }

      v7 = *(this + 31);
      if (v7)
      {
        v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v7, v6 + 2);
        if (v8)
        {
          v9 = v8[5];
          v10 = (*(*v6[5] + 32))(v6[5]);
          if (((*(*v9 + 72))(v9, v10) & 1) == 0)
          {
            break;
          }
        }
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](&v65);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, "Attribute '", 11);
    v18 = *(v6 + 39);
    if (v18 >= 0)
    {
      v19 = (v6 + 2);
    }

    else
    {
      v19 = v6[2];
    }

    if (v18 >= 0)
    {
      v20 = *(v6 + 39);
    }

    else
    {
      v20 = v6[3];
    }

    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "' has incorrect type for operator '", 35);
    v23 = (*(*a2 + 56))(a2);
    v24 = *(v23 + 23);
    if (v24 >= 0)
    {
      v25 = v23;
    }

    else
    {
      v25 = *v23;
    }

    if (v24 >= 0)
    {
      v26 = *(v23 + 23);
    }

    else
    {
      v26 = *(v23 + 8);
    }

    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v25, v26);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "'. Expected ", 12);
    v29 = (*(*v9 + 16))(v9);
    if ((v64 & 0x80u) == 0)
    {
      v30 = v63;
    }

    else
    {
      v30 = v63[0];
    }

    if ((v64 & 0x80u) == 0)
    {
      v31 = v64;
    }

    else
    {
      v31 = v63[1];
    }

    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "; got ", 6);
    (*(*v10 + 56))(__p, v10);
    if ((v62 & 0x80u) == 0)
    {
      v34 = __p;
    }

    else
    {
      v34 = __p[0];
    }

    if ((v62 & 0x80u) == 0)
    {
      v35 = v62;
    }

    else
    {
      v35 = __p[1];
    }

    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v34, v35);
    v73 = 46;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, &v73, 1);
    if (v62 < 0)
    {
      operator delete(__p[0]);
    }

    if (v64 < 0)
    {
      operator delete(v63[0]);
    }

    v37 = MIL::IRObject::GetLocationPtr(a2);
    v38 = v37[1];
    v59 = *v37;
    v60 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::stringbuf::str();
    MIL::ValidationResult::ValidationResult(a3, &v59, 306, &v57);
    if (v58 < 0)
    {
      operator delete(v57);
    }

    v39 = v60;
    if (!v60)
    {
      goto LABEL_57;
    }

LABEL_56:
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    goto LABEL_57;
  }

LABEL_7:
  v11 = *(this + 31);
  if (!v11 || (v12 = *(v11 + 16)) == 0)
  {
LABEL_12:

    MIL::ValidationResult::ValidationResult(a3);
    return;
  }

  while (((*(*v12[5] + 40))(v12[5]) & 1) != 0 || MIL::IRObject::TryGetAttribute(a2, v12 + 2))
  {
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_12;
    }
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v65);
  v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, "Required attribute '", 20);
  v41 = *(v12 + 39);
  if (v41 >= 0)
  {
    v42 = (v12 + 2);
  }

  else
  {
    v42 = v12[2];
  }

  if (v41 >= 0)
  {
    v43 = *(v12 + 39);
  }

  else
  {
    v43 = v12[3];
  }

  v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, v42, v43);
  v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "' missing for operator '", 24);
  v46 = (*(*a2 + 56))(a2);
  v47 = *(v46 + 23);
  if (v47 >= 0)
  {
    v48 = v46;
  }

  else
  {
    v48 = *v46;
  }

  if (v47 >= 0)
  {
    v49 = *(v46 + 23);
  }

  else
  {
    v49 = *(v46 + 8);
  }

  v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, v48, v49);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "'.", 2);
  v51 = MIL::IRObject::GetLocationPtr(a2);
  v52 = v51[1];
  v55 = *v51;
  v56 = v52;
  if (v52)
  {
    atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::stringbuf::str();
  MIL::ValidationResult::ValidationResult(a3, &v55, 321, &v53);
  if (v54 < 0)
  {
    operator delete(v53);
  }

  v39 = v56;
  if (v56)
  {
    goto LABEL_56;
  }

LABEL_57:
  v65.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82828];
  *(v65.__r_.__value_.__r.__words + *(v65.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82828] + 24);
  v65.__r_.__value_.__l.__size_ = MEMORY[0x277D82878] + 16;
  if (v67 < 0)
  {
    operator delete(v66);
  }

  v65.__r_.__value_.__l.__size_ = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v65.__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  MEMORY[0x21CEAFDA0](&v68);
}

void sub_217F9FF54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  std::ostringstream::~ostringstream(&a38);
  _Unwind_Resume(a1);
}

void IROperatorImpl::ValidateInputs(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, MIL::ValidationResult *a4@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  v8 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &__p[0].__r_.__value_.__l.__data_);
  v9 = v8;
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if (v9)
    {
LABEL_3:
      v10 = a2[1];
      v132 = *a2;
      v133 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v130, "Operation parameter names must be non-empty.");
      MIL::ValidationResult::ValidationResult(a4, &v132, 316, v130);
      if (v131 < 0)
      {
        operator delete(v130[0]);
      }

      v11 = v133;
      if (v133)
      {
LABEL_8:
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      return;
    }
  }

  else if (v8)
  {
    goto LABEL_3;
  }

  v12 = a1[11];
  if (v12 && (v13 = *(v12 + 16)) != 0)
  {
    while (1)
    {
      v14 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v13 + 2);
      if (v14)
      {
        memset(&v125, 0, sizeof(v125));
        std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRTypedArgument>*,std::shared_ptr<MIL::IRTypedArgument>*>(&v125, v14[5], v14[6], (v14[6] - v14[5]) >> 4);
        v15 = (*(*v13[5] + 56))(v13[5]);
        size = v125.__r_.__value_.__l.__size_;
        v17 = v125.__r_.__value_.__r.__words[0];
        if (v125.__r_.__value_.__l.__size_ - v125.__r_.__value_.__r.__words[0] == 16)
        {
          v18 = 1;
        }

        else
        {
          v18 = v15;
        }

        if (v18)
        {
          while (1)
          {
            if (v17 == size)
            {
              __p[0].__r_.__value_.__r.__words[0] = &v125;
              std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](__p);
              goto LABEL_33;
            }

            IsValueType = MIL::IRTypedArgument::IsValueType(*v17);
            v20 = *(*v13[5] + 24);
            if (IsValueType)
            {
              if (v20())
              {
                v79 = a2[1];
                v116 = *a2;
                v117 = v79;
                if (v79)
                {
                  atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                std::operator+<char>();
                v80 = std::string::append(__p, "' must be const");
                v81 = *&v80->__r_.__value_.__l.__data_;
                v115 = v80->__r_.__value_.__r.__words[2];
                v114 = v81;
                v80->__r_.__value_.__l.__size_ = 0;
                v80->__r_.__value_.__r.__words[2] = 0;
                v80->__r_.__value_.__r.__words[0] = 0;
                MIL::ValidationResult::ValidationResult(a4, &v116, 302, &v114);
                if (SHIBYTE(v115) < 0)
                {
                  operator delete(v114);
                }

                if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p[0].__r_.__value_.__l.__data_);
                }

                v55 = v117;
                if (v117)
                {
                  goto LABEL_136;
                }

                goto LABEL_137;
              }

              ValueType = MIL::IRTypedArgument::GetValueType(*v17);
            }

            else
            {
              if (v20())
              {
                Value = MIL::IRTypedArgument::GetValue(*v17);
                v23 = (*(*Value + 32))(Value);
                v24 = (*(*v23 + 24))(v23);
                if (v24)
                {
                  v25 = (*(*v24 + 96))(v24);
                  v26 = *v25;
                  v27 = v25[1];
                  while (v26 != v27)
                  {
                    if (!(*(**v26 + 16))())
                    {
                      v52 = a2[1];
                      v112 = *a2;
                      v113 = v52;
                      if (v52)
                      {
                        atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      std::operator+<char>();
                      v53 = std::string::append(__p, "' must be constant");
                      v54 = *&v53->__r_.__value_.__l.__data_;
                      v111 = v53->__r_.__value_.__r.__words[2];
                      v110 = v54;
                      v53->__r_.__value_.__l.__size_ = 0;
                      v53->__r_.__value_.__r.__words[2] = 0;
                      v53->__r_.__value_.__r.__words[0] = 0;
                      MIL::ValidationResult::ValidationResult(a4, &v112, 302, &v110);
                      if (SHIBYTE(v111) < 0)
                      {
                        operator delete(v110);
                      }

                      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p[0].__r_.__value_.__l.__data_);
                      }

                      v55 = v113;
                      if (v113)
                      {
                        goto LABEL_136;
                      }

                      goto LABEL_137;
                    }

                    v26 += 8;
                  }
                }
              }

              v28 = MIL::IRTypedArgument::GetValue(*v17);
              ValueType = (*(*v28 + 32))(v28);
            }

            v29 = ValueType;
            if (((*(*v13[5] + 72))(v13[5], ValueType) & 1) == 0)
            {
              std::ostringstream::basic_ostringstream[abi:ne200100](__p);
              v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Param '", 7);
              v57 = *(v13 + 39);
              if (v57 >= 0)
              {
                v58 = (v13 + 2);
              }

              else
              {
                v58 = v13[2];
              }

              if (v57 >= 0)
              {
                v59 = *(v13 + 39);
              }

              else
              {
                v59 = v13[3];
              }

              v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, v58, v59);
              v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "' has incorrect type for operator '", 35);
              v64 = a1[1];
              v63 = a1 + 1;
              v62 = v64;
              v65 = *(v63 + 23);
              if (v65 >= 0)
              {
                v66 = v63;
              }

              else
              {
                v66 = v62;
              }

              if (v65 >= 0)
              {
                v67 = *(v63 + 23);
              }

              else
              {
                v67 = v63[1];
              }

              v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, v66, v67);
              v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, "'. Expected ", 12);
              v70 = (*(*v13[5] + 16))(v13[5]);
              if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v71 = &v120;
              }

              else
              {
                v71 = v120.__r_.__value_.__r.__words[0];
              }

              if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v72 = HIBYTE(v120.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v72 = v120.__r_.__value_.__l.__size_;
              }

              v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, v71, v72);
              v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, "; got ", 6);
              (*(*v29 + 56))(&v119, v29);
              if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v75 = &v119;
              }

              else
              {
                v75 = v119.__r_.__value_.__r.__words[0];
              }

              if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v76 = HIBYTE(v119.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v76 = v119.__r_.__value_.__l.__size_;
              }

              v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, v75, v76);
              v118.__r_.__value_.__s.__data_[0] = 46;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, &v118, 1);
              if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v119.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v120.__r_.__value_.__l.__data_);
              }

              v78 = a2[1];
              v104 = *a2;
              v105 = v78;
              if (v78)
              {
                atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              std::stringbuf::str();
              MIL::ValidationResult::ValidationResult(a4, &v104, 304, &v102);
              if (v103 < 0)
              {
                operator delete(v102);
              }

              if (v105)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v105);
              }

              __p[0].__r_.__value_.__r.__words[0] = *MEMORY[0x277D82828];
              *(__p[0].__r_.__value_.__r.__words + *(__p[0].__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82828] + 24);
              __p[0].__r_.__value_.__l.__size_ = MEMORY[0x277D82878] + 16;
              if (v108 < 0)
              {
                operator delete(v107);
              }

              __p[0].__r_.__value_.__l.__size_ = MEMORY[0x277D82868] + 16;
              std::locale::~locale(&__p[0].__r_.__value_.__r.__words[2]);
              std::ostream::~ostream();
              MEMORY[0x21CEAFDA0](&v109);
              goto LABEL_137;
            }

            v17 += 2;
          }
        }

        v82 = a2[1];
        v123 = *a2;
        v124 = v82;
        if (v82)
        {
          atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::operator+<char>();
        v83 = std::string::append(&v119, "' has ");
        v84 = *&v83->__r_.__value_.__l.__data_;
        v120.__r_.__value_.__r.__words[2] = v83->__r_.__value_.__r.__words[2];
        *&v120.__r_.__value_.__l.__data_ = v84;
        v83->__r_.__value_.__l.__size_ = 0;
        v83->__r_.__value_.__r.__words[2] = 0;
        v83->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v118, (v125.__r_.__value_.__l.__size_ - v125.__r_.__value_.__r.__words[0]) >> 4);
        if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v85 = &v118;
        }

        else
        {
          v85 = v118.__r_.__value_.__r.__words[0];
        }

        if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v86 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v86 = v118.__r_.__value_.__l.__size_;
        }

        v87 = std::string::append(&v120, v85, v86);
        v88 = *&v87->__r_.__value_.__l.__data_;
        __p[0].__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
        *&__p[0].__r_.__value_.__l.__data_ = v88;
        v87->__r_.__value_.__l.__size_ = 0;
        v87->__r_.__value_.__r.__words[2] = 0;
        v87->__r_.__value_.__r.__words[0] = 0;
        v89 = std::string::append(__p, " args bound to it, but is not declared variadic. Non-variadic params must have exactly 1 arg binding.");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v122 = v89->__r_.__value_.__r.__words[2];
        v121 = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        MIL::ValidationResult::ValidationResult(a4, &v123, 320, &v121);
        if (SHIBYTE(v122) < 0)
        {
          operator delete(v121);
        }

        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v118.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v120.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v119.__r_.__value_.__l.__data_);
        }

        v55 = v124;
        if (v124)
        {
LABEL_136:
          std::__shared_weak_count::__release_shared[abi:ne200100](v55);
        }

LABEL_137:
        __p[0].__r_.__value_.__r.__words[0] = &v125;
        std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](__p);
        return;
      }

      if (((*(*v13[5] + 40))(v13[5]) & 1) == 0)
      {
        break;
      }

LABEL_33:
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_34;
      }
    }

    v91 = a2[1];
    v128 = *a2;
    v129 = v91;
    if (v91)
    {
      atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    v92 = std::string::append(__p, "' is missing");
    v93 = *&v92->__r_.__value_.__l.__data_;
    v127 = v92->__r_.__value_.__r.__words[2];
    v126 = v93;
    v92->__r_.__value_.__l.__size_ = 0;
    v92->__r_.__value_.__r.__words[2] = 0;
    v92->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationResult::ValidationResult(a4, &v128, 317, &v126);
    if (SHIBYTE(v127) < 0)
    {
      operator delete(v126);
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v11 = v129;
    if (v129)
    {
      goto LABEL_8;
    }
  }

  else
  {
LABEL_34:
    v30 = a3[3];
    if (v30 >= a1[4] && v30 <= a1[5])
    {
      MIL::ValidationResult::ValidationResult(a4);
    }

    else
    {
      std::operator+<char>();
      v31 = std::string::append(&v100, "' number of inputs must be within the range (inclusive): ");
      v32 = *&v31->__r_.__value_.__l.__data_;
      v118.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
      *&v118.__r_.__value_.__l.__data_ = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v99, a1[4]);
      if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v99;
      }

      else
      {
        v33 = v99.__r_.__value_.__r.__words[0];
      }

      if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v34 = v99.__r_.__value_.__l.__size_;
      }

      v35 = std::string::append(&v118, v33, v34);
      v36 = *&v35->__r_.__value_.__l.__data_;
      v119.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
      *&v119.__r_.__value_.__l.__data_ = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      v37 = std::string::append(&v119, " : ");
      v38 = *&v37->__r_.__value_.__l.__data_;
      v120.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
      *&v120.__r_.__value_.__l.__data_ = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v98, a1[5]);
      if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = &v98;
      }

      else
      {
        v39 = v98.__r_.__value_.__r.__words[0];
      }

      if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v40 = v98.__r_.__value_.__l.__size_;
      }

      v41 = std::string::append(&v120, v39, v40);
      v42 = *&v41->__r_.__value_.__l.__data_;
      v125.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
      *&v125.__r_.__value_.__l.__data_ = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      v43 = std::string::append(&v125, ". Provided ");
      v44 = *&v43->__r_.__value_.__l.__data_;
      __p[0].__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
      *&__p[0].__r_.__value_.__l.__data_ = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v97, a3[3]);
      if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = &v97;
      }

      else
      {
        v45 = v97.__r_.__value_.__r.__words[0];
      }

      if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = HIBYTE(v97.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v46 = v97.__r_.__value_.__l.__size_;
      }

      v47 = std::string::append(__p, v45, v46);
      v48 = v47->__r_.__value_.__r.__words[0];
      v49 = v47->__r_.__value_.__l.__size_;
      v101[0] = v47->__r_.__value_.__r.__words[2];
      *(v101 + 3) = *(&v47->__r_.__value_.__r.__words[2] + 3);
      v50 = SHIBYTE(v47->__r_.__value_.__r.__words[2]);
      v47->__r_.__value_.__l.__size_ = 0;
      v47->__r_.__value_.__r.__words[2] = 0;
      v47->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v125.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v120.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v119.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v118.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v100.__r_.__value_.__l.__data_);
      }

      v51 = a2[1];
      v95 = *a2;
      v96 = v51;
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v50 < 0)
      {
        std::string::__init_copy_ctor_external(&v94, v48, v49);
      }

      else
      {
        v94.__r_.__value_.__r.__words[0] = v48;
        v94.__r_.__value_.__l.__size_ = v49;
        LODWORD(v94.__r_.__value_.__r.__words[2]) = v101[0];
        *(&v94.__r_.__value_.__r.__words[2] + 3) = *(v101 + 3);
        *(&v94.__r_.__value_.__s + 23) = v50;
      }

      MIL::ValidationResult::ValidationResult(a4, &v95, 314, &v94);
      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v94.__r_.__value_.__l.__data_);
      }

      if (v96)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v96);
      }

      if (v50 < 0)
      {
        operator delete(v48);
      }
    }
  }
}

void sub_217FA0BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (*(v38 - 153) < 0)
  {
    operator delete(*(v38 - 176));
  }

  if (a38 < 0)
  {
    operator delete(__p);
  }

  v40 = *(v38 - 144);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::FormatTypeSet(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  LOBYTE(__p[0]) = 123;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, __p, 1);
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 1;
    do
    {
      if ((v3 & 1) == 0)
      {
        LOBYTE(__p[0]) = 44;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, __p, 1);
      }

      LOBYTE(__p[0]) = 32;
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, __p, 1);
      (*(*v2[2] + 56))(__p);
      if ((v9 & 0x80u) == 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      if ((v9 & 0x80u) == 0)
      {
        v6 = v9;
      }

      else
      {
        v6 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      v3 = 0;
      v2 = *v2;
    }

    while (v2);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " }", 2);
  std::stringbuf::str();
  v10 = *MEMORY[0x277D82828];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x21CEAFDA0](&v14);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x21CEAFDA0](a1 + 112);
  return a1;
}

uint64_t std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRTypedArgument>*,std::shared_ptr<MIL::IRTypedArgument>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217FA1324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRTypedArgument>>,std::shared_ptr<MIL::IRTypedArgument>*,std::shared_ptr<MIL::IRTypedArgument>*,std::shared_ptr<MIL::IRTypedArgument>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRTypedArgument>>,std::shared_ptr<MIL::IRTypedArgument>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRTypedArgument>>,std::shared_ptr<MIL::IRTypedArgument>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>,std::shared_ptr<MIL::IRNamedValueType>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

std::string *MIL::MILResult::MILResult(std::string *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  a1->__r_.__value_.__r.__words[0] = &unk_2829E6218;
  a1->__r_.__value_.__l.__size_ = v4;
  a1->__r_.__value_.__r.__words[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 1, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v5 = *(a2 + 24);
    a1[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
    *&a1[1].__r_.__value_.__l.__data_ = v5;
  }

  return a1;
}

void sub_217FA1508(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **anonymous namespace::GetInputNames(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 160))(a1);
  v5 = v4 + 1;
  v6 = *v4;
  if (*v4 != v4 + 1)
  {
    do
    {
      v7 = v6[7];
      v8 = v6[8];
      while (v7 != v8)
      {
        if ((*(**v7 + 16))())
        {
          Name = MIL::IRArgument::GetName(*v7);
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a2, Name);
        }

        v7 += 2;
      }

      v10 = v6[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != v5);
  }

  result = (*(*a1 + 208))(a1);
  v14 = **result;
  v15 = (*result)[1];
  while (v14 != v15)
  {
    result = (*(**v14 + 56))();
    v16 = **result;
    v17 = (*result)[1];
    while (v16 != v17)
    {
      v18 = *v16;
      v16 += 2;
    }

    v14 += 16;
  }

  return result;
}

uint64_t std::unordered_set<std::string>::unordered_set<std::__wrap_iter<std::string*>>(uint64_t a1, const void **a2, const void **a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, v5);
      v5 += 3;
    }

    while (v5 != a3);
  }

  return a1;
}

uint64_t std::__function::__value_func<std::string ()(MIL::IROperation const&)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<std::string ()(MIL::IROperation const&)>::operator=[abi:ne200100](a1);
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

uint64_t std::__function::__value_func<std::string ()(MIL::IROperation const&)>::operator=[abi:ne200100](uint64_t a1)
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

void *std::function<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
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

void sub_217FA1B88(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(MIL::IROperation &,std::shared_ptr<MIL::IRValue const>)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(MIL::IROperation &,std::shared_ptr<MIL::IRValue const>)>::operator=[abi:ne200100](a1);
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

uint64_t std::__function::__value_func<void ()(MIL::IROperation &,std::shared_ptr<MIL::IRValue const>)>::operator=[abi:ne200100](uint64_t a1)
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

void *std::function<std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
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

void sub_217FA2000(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::function<std::vector<std::shared_ptr<MIL::IRValue const>> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = a7;
  v7 = *(a1 + 24);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v7 + 48))(v7, a2, a3, a4, a5, a6, &v9);
}

void std::__shared_ptr_pointer<MIL::IRTypedArgument  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::IRTypedArgument  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRTypedArgument  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_217FA236C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__assign_with_size[abi:ne200100]<std::shared_ptr<MIL::IRTypedArgument>*,std::shared_ptr<MIL::IRTypedArgument>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
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

void *std::function<std::vector<std::shared_ptr<MIL::IRValue const>> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<std::shared_ptr<MIL::IRValue const>> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<std::vector<std::shared_ptr<MIL::IRValue const>> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<std::vector<std::shared_ptr<MIL::IRValue const>> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<std::vector<std::shared_ptr<MIL::IRValue const>> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<std::vector<std::shared_ptr<MIL::IRValue const>> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
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

void sub_217FA2924(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::vector<std::shared_ptr<MIL::IRValue const>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRValue const> const*,std::shared_ptr<MIL::IRValue const> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<MIL::IRValue const>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217FA2998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<MIL::IRValue const>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::Validation::Constraints const>>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRValue const>>,std::shared_ptr<MIL::IRValue const> const*,std::shared_ptr<MIL::IRValue const> const*,std::shared_ptr<MIL::IRValue const>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRValue const>>,std::shared_ptr<MIL::IRValue const>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRValue const>>,std::shared_ptr<MIL::IRValue const>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>,std::shared_ptr<MIL::IRNamedValueType>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void *std::function<std::vector<std::shared_ptr<MIL::IRValue const>> ()(MIL::IROperation const&)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<std::shared_ptr<MIL::IRValue const>> ()(MIL::IROperation const&)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<std::vector<std::shared_ptr<MIL::IRValue const>> ()(MIL::IROperation const&)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<std::vector<std::shared_ptr<MIL::IRValue const>> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<std::vector<std::shared_ptr<MIL::IRValue const>> ()(MIL::IROperation const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<std::vector<std::shared_ptr<MIL::IRValue const>> ()(MIL::IROperation const&)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
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

void sub_217FA2E18(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 IRParameterImpl::IRParameterImpl(uint64_t a1, __n128 *a2, char a3, char a4, char a5)
{
  *a1 = &unk_2829DEA18;
  result = *a2;
  *(a1 + 8) = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  *(a1 + 24) = a3;
  *(a1 + 25) = a4;
  *(a1 + 26) = a5;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (!*(a1 + 8))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "validTypeSet cannot be null");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  return result;
}

void sub_217FA2EE4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<std::unordered_set<MIL::IRValueType const*>>::__shared_ptr_emplace[abi:ne200100]<std::initializer_list<MIL::IRValueType const*> &,std::allocator<std::unordered_set<MIL::IRValueType const*>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829DEC98;
  std::unordered_set<MIL::IRValueType const*>::unordered_set((a1 + 3), *a2, *(a2 + 8));
  return a1;
}

void std::__shared_ptr_emplace<std::unordered_set<MIL::IRValueType const*>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829DEC98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::unordered_set<MIL::IRValueType const*>::unordered_set(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::__emplace_unique_key_args<MIL::IRValueType const*,MIL::IRValueType const* const&>(a1, a2++);
      v5 -= 8;
    }

    while (v5);
  }

  return a1;
}

void *std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::__emplace_unique_key_args<MIL::IRValueType const*,MIL::IRValueType const* const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::string ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(MIL::IROperation &,std::shared_ptr<MIL::IRValue const>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::vector<std::shared_ptr<MIL::IRValue const>> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::vector<std::shared_ptr<MIL::IRValue const>> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t IROperatorImpl::IROperatorImpl(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  *a1 = &unk_2829DEAF8;
  v12 = *a2;
  *(a1 + 24) = *(a2 + 2);
  *(a1 + 8) = v12;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 48) = a5;
  *(a1 + 56) = a6;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = *a7;
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a1 + 104) = *a8;
  *a8 = 0;
  *(a8 + 8) = 0;
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::__value_func[abi:ne200100](a1 + 120, a10);
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__value_func[abi:ne200100](a1 + 152, a11);
  *(a1 + 208) = 0;
  *(a1 + 288) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  v13 = *a9;
  *a9 = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = v13;
  *(a1 + 360) = 0;
  return a1;
}

void *std::__shared_ptr_emplace<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::__shared_ptr_emplace[abi:ne200100]<std::initializer_list<std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>> &,std::allocator<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829DECE8;
  std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>::unordered_map((a1 + 3), *a2, *(a2 + 8));
  return a1;
}

void std::__shared_ptr_emplace<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829DECE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>::unordered_map(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 40 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::IRParameter>> const&>(a1, a2);
      a2 += 5;
      v5 -= 40;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::IRParameter>> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<MIL::IRParameter>> const&>();
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

void sub_217FA3CEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_emplace<std::vector<std::shared_ptr<MIL::IRParameter>>>::__shared_ptr_emplace[abi:ne200100]<std::initializer_list<std::shared_ptr<MIL::IRParameter>> &,std::allocator<std::vector<std::shared_ptr<MIL::IRParameter>>>,0>(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_2829DED38;
  v4 = *a2;
  v3 = a2[1];
  v5 = *a2 + 16 * v3;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  std::vector<std::shared_ptr<MIL::IRParameter>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRParameter> const*,std::shared_ptr<MIL::IRParameter> const*>(a1 + 24, v4, v5, v3);
  return a1;
}

void std::__shared_ptr_emplace<std::vector<std::shared_ptr<MIL::IRParameter>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829DED38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::vector<std::shared_ptr<MIL::IRParameter>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRParameter> const*,std::shared_ptr<MIL::IRParameter> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217FA3F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRParameter>>,std::shared_ptr<MIL::IRParameter> const*,std::shared_ptr<MIL::IRParameter> const*,std::shared_ptr<MIL::IRParameter>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRParameter>>,std::shared_ptr<MIL::IRParameter>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRParameter>>,std::shared_ptr<MIL::IRParameter>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>,std::shared_ptr<MIL::IRNamedValueType>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void MIL::IROpset::RegisterOp(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = (*(*a1 + 16))(a1);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v8 = v5;
  if (v5)
  {
    memmove(&__dst, v4, v5);
  }

  *(&__dst + v6) = 0;
  MIL::IROpsetImpl::RegisterOp(v3, &__dst, a2);
  if (v8 < 0)
  {
    operator delete(__dst);
  }
}

void sub_217FA41A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IROpsetImpl::RegisterOp(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(**a3 + 16))();
  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, *v5, *(v5 + 8));
  }

  else
  {
    v6 = *v5;
    v33.__r_.__value_.__r.__words[2] = *(v5 + 16);
    *&v33.__r_.__value_.__l.__data_ = v6;
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>>>::__emplace_unique_key_args<std::string,std::string&,std::shared_ptr<MIL::IROperator const>>(a1, &v33.__r_.__value_.__l.__data_);
  if ((v7 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v10 = std::string::append(&v29, "' in opset '");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
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

    v15 = std::string::append(&v30, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v31, "'.");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v32);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::string&,std::string&>(a1 + 10, &v33.__r_.__value_.__l.__data_);
  if ((v8 & 1) == 0)
  {
    v19 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v20 = std::string::append(&v29, "' in opset '");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = *(a2 + 23);
    if (v22 >= 0)
    {
      v23 = a2;
    }

    else
    {
      v23 = *a2;
    }

    if (v22 >= 0)
    {
      v24 = *(a2 + 23);
    }

    else
    {
      v24 = *(a2 + 8);
    }

    v25 = std::string::append(&v30, v23, v24);
    v26 = *&v25->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = std::string::append(&v31, "'.");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v19, &v32);
    __cxa_throw(v19, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }
}

void sub_217FA444C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v36 & 1) == 0)
    {
LABEL_12:
      if (*(v37 - 41) < 0)
      {
        operator delete(*(v37 - 64));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v35);
  goto LABEL_12;
}

uint64_t MIL::IROpset::GetOperator(void *a1, const void **a2)
{
  v3 = a1[1];
  v4 = (*(*a1 + 16))(a1);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v10 = v5;
  if (v5)
  {
    memmove(&__dst, v4, v5);
  }

  *(&__dst + v6) = 0;
  Operator = MIL::IROpsetImpl::GetOperator(v3, &__dst, a2);
  if (v10 < 0)
  {
    operator delete(__dst);
  }

  return Operator;
}

void sub_217FA4614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IROpsetImpl::GetOperator(void *a1, uint64_t a2, const void **a3)
{
  result = MIL::IROpsetImpl::TryGetOperator(a1, a3);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v6 = std::string::append(&v15, "' has been registered in opset '");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
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

    v11 = std::string::append(&v16, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v17, "'.");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v18);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FA4750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

const void **MIL::IROpsetImpl::TryGetOperatorSharedPtr@<X0>(void *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a1, a2);
  if (!result)
  {
    result = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a1 + 5, a2);
    if (!result)
    {
      *a3 = 0;
      a3[1] = 0;
      return result;
    }

    v7 = result[8];
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v7 + 48))(&v10);
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>>>::__emplace_unique_key_args<std::string,std::string const&,std::unique_ptr<MIL::IROperator>>(a1, a2);
    v8 = v10;
    v10 = 0;
    if (v8)
    {
      (*(*v8 + 1))(v8);
    }

    v10 = a2;
    result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a2);
  }

  v9 = result[6];
  *a3 = result[5];
  a3[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_217FA48F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IROpsetImpl::TryGetOperatorSharedPtr(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IROpsetImpl::TryGetOperator(void *a1, const void **a2)
{
  MIL::IROpsetImpl::TryGetOperatorSharedPtr(a1, a2, &v4);
  v2 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

uint64_t MIL::IROpset::GetOperatorDescription(void *a1, const void **a2)
{
  v3 = a1[1];
  v4 = (*(*a1 + 16))(a1);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v10 = v5;
  if (v5)
  {
    memmove(&__dst, v4, v5);
  }

  *(&__dst + v6) = 0;
  Operator = MIL::IROpsetImpl::GetOperator(v3, &__dst, a2);
  if (v10 < 0)
  {
    operator delete(__dst);
  }

  return Operator;
}

void sub_217FA4A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IROpset::GetOperatorDescription(MIL::IROpset *this, const MIL::IROperation *a2)
{
  v3 = *(this + 1);
  v4 = (*(*this + 16))(this);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v11 = v5;
  if (v5)
  {
    memmove(&__dst, v4, v5);
  }

  *(&__dst + v6) = 0;
  v7 = (*(*a2 + 56))(a2);
  Operator = MIL::IROpsetImpl::GetOperator(v3, &__dst, v7);
  if (v11 < 0)
  {
    operator delete(__dst);
  }

  return Operator;
}

void sub_217FA4B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IROpset::TryGetOperatorDescription(MIL::IROpset *this, const MIL::IROperation *a2)
{
  v2 = *(this + 1);
  v3 = (*(*a2 + 56))(a2);

  return MIL::IROpsetImpl::TryGetOperator(v2, v3);
}

const void **MIL::IROpset::TryGetOperatorDescriptionSharedPtr@<X0>(MIL::IROpset *this@<X0>, const MIL::IROperation *a2@<X1>, void *a3@<X8>)
{
  v4 = *(this + 1);
  v5 = (*(*a2 + 56))(a2);

  return MIL::IROpsetImpl::TryGetOperatorSharedPtr(v4, v5, a3);
}

const void **MIL::IROpset::GetNamedOperatorMap(MIL::IROpset *this)
{
  v1 = *(this + 1);
  MIL::IROpsetImpl::AlignData(v1);
  return v1;
}

void MIL::IROpset::IROpset(MIL::IROpset *this)
{
  *(this + 1) = 0;
  *this = &unk_2829DED88;
  v7 = 0u;
  v8 = 0u;
  v9 = 1065353216;
  v4 = 0u;
  v5 = 0u;
  v6 = 1065353216;
  v1 = 0u;
  v2 = 0u;
  v3 = 1065353216;
  std::make_unique[abi:ne200100]<MIL::IROpsetImpl,std::unordered_map<std::string,std::shared_ptr<MIL::IROperator const>> &,std::unordered_map<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>> &,std::unordered_map<std::string,std::string> &,0>();
}

void sub_217FA4D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(va);
  std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(va1);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v4 - 64);
  std::unique_ptr<MIL::IROpsetImpl>::reset[abi:ne200100](v3, 0);
  _Unwind_Resume(a1);
}

void sub_217FA4E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(va);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(va1);
  MEMORY[0x21CEAFEA0](v7, v8);
  _Unwind_Resume(a1);
}