void sub_24D6E4074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void *std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned long long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *std::vector<unsigned long long>::emplace_back<unsigned long long>(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
  return v6 - 1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_24D6E4670(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<unsigned long long,BOOL>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,BOOL>>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_24D6E49AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<unsigned long long,BOOL>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,BOOL>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto15MTLSamplerState}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto15MTLSamplerState}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto15MTLSamplerState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto15MTLSamplerState}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_24D6E4C54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<rencodeBufferData(unsigned long long,void *,objc_object  {objcproto18MTLArgumentEncoder}*,_MTLIndirectArgumentBufferLayout *,MTLStructType *,std::unordered_map<unsigned long long,std::set<DYMTLIABDecodingOp>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::less<std::set><std::pair<unsigned long long const>>> *,std::map<unsigned long long,std::vector<DYMTLOriginalProcessBuffer,std::less<std::set><std::vector>>,DYMTLIABDecodingOp<unsigned long long>,std::less<std::set><std::equal_to<unsigned long long><std::pair,std::less<std::set><std::vector>>>> const&,MTLStructType *<unsigned long long,unsigned long long,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>> const&,MTLStructType *<unsigned long long,std::map<unsigned long long,std::less<std::set><unsigned long long>>,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,std::less<std::set><unsigned long long>>>> const&,MTLStructType *<unsigned long long,objc_object  {objcproto15MTLSamplerState}* {__strong},std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,objc_object  {objcproto15MTLSamplerState}>>> &,MTLStructType *<unsigned long long,unsigned long long,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>> const,MTLStructType *<unsigned long long,unsigned long long,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>> const,MTLStructType *<unsigned long long,unsigned long long,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>> const,MTLStructType *<unsigned long long,objc_object * {__strong},std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,objc_object>>> const&,std::unordered_map<unsigned long long,std::set<DYMTLIABDecodingOp>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::less<std::set><std::pair<unsigned long long const>>> *<unsigned long long,unsigned long long,std::vector<DYMTLOriginalProcessBuffer,std::less<std::set><std::vector>>,std::equal_to<unsigned long long><std::pair,unsigned long long>> *,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>*,std::unordered_map<unsigned long long,std::set<DYMTLIABDecodingOp>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::less<std::set><std::pair<unsigned long long const>>> *<unsigned long long,unsigned long long,std::vector<DYMTLOriginalProcessBuffer,std::less<std::set><std::vector>>,std::equal_to<unsigned long long><std::pair,unsigned long long>>,std::unordered_map<unsigned long long,std::set<DYMTLIABDecodingOp>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::less<std::set><std::pair<unsigned long long const>>> *<unsigned long long,unsigned long long,std::vector<DYMTLOriginalProcessBuffer,std::less<std::set><std::vector>>,std::equal_to<unsigned long long><std::pair,unsigned long long>>,std::unordered_map<unsigned long long,std::set<DYMTLIABDecodingOp>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::less<std::set><std::pair<unsigned long long const>>> *<unsigned long long,unsigned long long,std::vector<DYMTLOriginalProcessBuffer,std::less<std::set><std::vector>>,std::equal_to<unsigned long long><std::pair,unsigned long long>>,std::unordered_map<unsigned long long,std::set<DYMTLIABDecodingOp>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::less<std::set><std::pair<unsigned long long const>>> *<unsigned long long,unsigned long long,std::vector<DYMTLOriginalProcessBuffer,std::less<std::set><std::vector>>,std::equal_to<unsigned long long><std::pair,unsigned long long>>,std::set const&,MTLStructType *<unsigned long long,MTLStructType *<unsigned long long,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>>>>,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,std::equal_to<unsigned long long><std::pair,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>>>>> *,objc_object  {objcproto9MTLBuffer}*,unsigned long long,_MTLArgumentBufferPatchingType *,DYIABPatcher *,DYCommandBufferUID)::$_1,std::less<std::set><DYIABPatcher>,void ()(MTLStructType,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2860B2808;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<rencodeBufferData(unsigned long long,void *,objc_object  {objcproto18MTLArgumentEncoder}*,_MTLIndirectArgumentBufferLayout *,MTLStructType *,std::unordered_map<unsigned long long,std::set<DYMTLIABDecodingOp>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::less<std::set><std::pair<unsigned long long const>>> *,std::map<unsigned long long,std::vector<DYMTLOriginalProcessBuffer,std::less<std::set><std::vector>>,DYMTLIABDecodingOp<unsigned long long>,std::less<std::set><std::equal_to<unsigned long long><std::pair,std::less<std::set><std::vector>>>> const&,MTLStructType *<unsigned long long,unsigned long long,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>> const&,MTLStructType *<unsigned long long,std::map<unsigned long long,std::less<std::set><unsigned long long>>,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,std::less<std::set><unsigned long long>>>> const&,MTLStructType *<unsigned long long,objc_object  {objcproto15MTLSamplerState}* {__strong},std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,objc_object  {objcproto15MTLSamplerState}>>> &,MTLStructType *<unsigned long long,unsigned long long,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>> const,MTLStructType *<unsigned long long,unsigned long long,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>> const,MTLStructType *<unsigned long long,unsigned long long,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>> const,MTLStructType *<unsigned long long,objc_object * {__strong},std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,objc_object>>> const&,std::unordered_map<unsigned long long,std::set<DYMTLIABDecodingOp>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::less<std::set><std::pair<unsigned long long const>>> *<unsigned long long,unsigned long long,std::vector<DYMTLOriginalProcessBuffer,std::less<std::set><std::vector>>,std::equal_to<unsigned long long><std::pair,unsigned long long>> *,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>*,std::unordered_map<unsigned long long,std::set<DYMTLIABDecodingOp>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::less<std::set><std::pair<unsigned long long const>>> *<unsigned long long,unsigned long long,std::vector<DYMTLOriginalProcessBuffer,std::less<std::set><std::vector>>,std::equal_to<unsigned long long><std::pair,unsigned long long>>,std::unordered_map<unsigned long long,std::set<DYMTLIABDecodingOp>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::less<std::set><std::pair<unsigned long long const>>> *<unsigned long long,unsigned long long,std::vector<DYMTLOriginalProcessBuffer,std::less<std::set><std::vector>>,std::equal_to<unsigned long long><std::pair,unsigned long long>>,std::unordered_map<unsigned long long,std::set<DYMTLIABDecodingOp>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::less<std::set><std::pair<unsigned long long const>>> *<unsigned long long,unsigned long long,std::vector<DYMTLOriginalProcessBuffer,std::less<std::set><std::vector>>,std::equal_to<unsigned long long><std::pair,unsigned long long>>,std::unordered_map<unsigned long long,std::set<DYMTLIABDecodingOp>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::less<std::set><std::pair<unsigned long long const>>> *<unsigned long long,unsigned long long,std::vector<DYMTLOriginalProcessBuffer,std::less<std::set><std::vector>>,std::equal_to<unsigned long long><std::pair,unsigned long long>>,std::set const&,MTLStructType *<unsigned long long,MTLStructType *<unsigned long long,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>>>>,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,std::equal_to<unsigned long long><std::pair,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>>>>> *,objc_object  {objcproto9MTLBuffer}*,unsigned long long,_MTLArgumentBufferPatchingType *,DYIABPatcher *,DYCommandBufferUID)::$_1,std::less<std::set><DYIABPatcher>,void ()(MTLStructType,unsigned long)>::operator()(uint64_t a1, id *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = [*a2 members];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___ZZL17rencodeBufferDatayPvPU29objcproto18MTLArgumentEncoder11objc_objectP32_MTLIndirectArgumentBufferLayoutP13MTLStructTypePNSt3__113unordered_mapIyNS6_3setI18DYMTLIABDecodingOpNS6_4lessIS9_EENS6_9allocatorIS9_EEEENS6_4hashIyEENS6_8equal_toIyEENSC_INS6_4pairIKySE_EEEEEERKNS6_3mapIyNS6_6vectorI26DYMTLOriginalProcessBufferNSC_ISR_EEEENSA_IyEENSC_INSJ_ISK_ST_EEEEEERKNS7_IyySG_SI_NSC_INSJ_ISK_yEEEEEERKNS7_IyNSQ_IyNSC_IyEEEESG_SI_NSC_INSJ_ISK_S16_EEEEEERNS7_IyU8__strongPU26objcproto15MTLSamplerState11objc_objectSG_SI_NSC_INSJ_ISK_S1E_EEEEEES14_S14_S14_RKNS7_IyU8__strongP11objc_objectSG_SI_NSC_INSJ_ISK_S1L_EEEEEEPNSP_IyySU_S11_EEPS12_S1T_S1T_S1T_S1T_RKS9_PNS7_IyNS7_IyS12_SG_SI_NSC_INSJ_ISK_S12_EEEEEESG_SI_NSC_INSJ_ISK_S1Y_EEEEEEPU19objcproto9MTLBuffer11objc_objectyP30_MTLArgumentBufferPatchingTypeP12DYIABPatcher18DYCommandBufferUIDENK3__1clES5_m_block_invoke;
  v6[3] = &__block_descriptor_72_e32_v32__0__MTLStructMember_8Q16_B24l;
  v6[4] = *(a1 + 8);
  v6[5] = v4;
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  [v5 enumerateObjectsUsingBlock:v6];
}

void ___ZZL17rencodeBufferDatayPvPU29objcproto18MTLArgumentEncoder11objc_objectP32_MTLIndirectArgumentBufferLayoutP13MTLStructTypePNSt3__113unordered_mapIyNS6_3setI18DYMTLIABDecodingOpNS6_4lessIS9_EENS6_9allocatorIS9_EEEENS6_4hashIyEENS6_8equal_toIyEENSC_INS6_4pairIKySE_EEEEEERKNS6_3mapIyNS6_6vectorI26DYMTLOriginalProcessBufferNSC_ISR_EEEENSA_IyEENSC_INSJ_ISK_ST_EEEEEERKNS7_IyySG_SI_NSC_INSJ_ISK_yEEEEEERKNS7_IyNSQ_IyNSC_IyEEEESG_SI_NSC_INSJ_ISK_S16_EEEEEERNS7_IyU8__strongPU26objcproto15MTLSamplerState11objc_objectSG_SI_NSC_INSJ_ISK_S1E_EEEEEES14_S14_S14_RKNS7_IyU8__strongP11objc_objectSG_SI_NSC_INSJ_ISK_S1L_EEEEEEPNSP_IyySU_S11_EEPS12_S1T_S1T_S1T_S1T_RKS9_PNS7_IyNS7_IyS12_SG_SI_NSC_INSJ_ISK_S12_EEEEEESG_SI_NSC_INSJ_ISK_S1Y_EEEEEEPU19objcproto9MTLBuffer11objc_objectyP30_MTLArgumentBufferPatchingTypeP12DYIABPatcher18DYCommandBufferUIDENK3__1clES5_m_block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 structType];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v11 structType];
    std::function<void ()(MTLStructType *,unsigned long)>::operator()(v4, v5, [v11 indirectArgumentIndex] + *(a1 + 40));
LABEL_5:

    goto LABEL_6;
  }

  v6 = [v11 arrayType];

  if (v6)
  {
    v7 = *(a1 + 48);
    v5 = [v11 arrayType];
    std::function<void ()(MTLArrayType *,unsigned long)>::operator()(v7, v5, [v11 indirectArgumentIndex] + *(a1 + 40));
    goto LABEL_5;
  }

  v8 = [v11 pointerType];
  v9 = [v8 elementStructType];
  IsArgumentBuffer = DYStructIsArgumentBuffer(v9);

  if (DYMTLDataTypeNeedsReencoding([v11 dataType], **(a1 + 56)))
  {
    rencodeBufferData(unsigned long long,void *,objc_object  {objcproto18MTLArgumentEncoder}*,_MTLIndirectArgumentBufferLayout *,MTLStructType *,std::unordered_map<unsigned long long,MTLStructType *::set<DYMTLIABDecodingOp,MTLStructType *::less<MTLStructType *::set>,MTLStructType *::allocator<MTLStructType *::set>>,MTLStructType *::hash<unsigned long long>,MTLStructType *::equal_to<unsigned long long>,MTLStructType *::less<MTLStructType *::set><MTLStructType *::pair<unsigned long long const,MTLStructType *::allocator<MTLStructType *::set>>>> *,MTLStructType *::map<unsigned long long,MTLStructType *::vector<DYMTLOriginalProcessBuffer,MTLStructType *::less<MTLStructType *::set><MTLStructType *::vector>>,DYMTLIABDecodingOp<unsigned long long>,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,MTLStructType *::less<MTLStructType *::set><MTLStructType *::vector>>>> const&,std::__1<unsigned long long,unsigned long long,MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>> const&,std::__1<unsigned long long,MTLStructType *::map<unsigned long long,MTLStructType *::less<MTLStructType *::set><unsigned long long>>,MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,MTLStructType *::less<MTLStructType *::set><unsigned long long>>>> const&,std::__1<unsigned long long,objc_object  {objcproto15MTLSamplerState}* {__strong},MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,objc_object  {objcproto15MTLSamplerState}>>> &,std::__1<unsigned long long,unsigned long long,MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>> const,std::__1<unsigned long long,unsigned long long,MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>> const,std::__1<unsigned long long,unsigned long long,MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>> const,std::__1<unsigned long long,objc_object * {__strong},MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,objc_object>>> const&,std::unordered_map<unsigned long long,MTLStructType *::set<DYMTLIABDecodingOp,MTLStructType *::less<MTLStructType *::set>,MTLStructType *::allocator<MTLStructType *::set>>,MTLStructType *::hash<unsigned long long>,MTLStructType *::equal_to<unsigned long long>,MTLStructType *::less<MTLStructType *::set><MTLStructType *::pair<unsigned long long const,MTLStructType *::allocator<MTLStructType *::set>>>> *<unsigned long long,unsigned long long,MTLStructType *::vector<DYMTLOriginalProcessBuffer,MTLStructType *::less<MTLStructType *::set><MTLStructType *::vector>>,MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>> *,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>*,std::unordered_map<unsigned long long,MTLStructType *::set<DYMTLIABDecodingOp,MTLStructType *::less<MTLStructType *::set>,MTLStructType *::allocator<MTLStructType *::set>>,MTLStructType *::hash<unsigned long long>,MTLStructType *::equal_to<unsigned long long>,MTLStructType *::less<MTLStructType *::set><MTLStructType *::pair<unsigned long long const,MTLStructType *::allocator<MTLStructType *::set>>>> *<unsigned long long,unsigned long long,MTLStructType *::vector<DYMTLOriginalProcessBuffer,MTLStructType *::less<MTLStructType *::set><MTLStructType *::vector>>,MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>,std::unordered_map<unsigned long long,MTLStructType *::set<DYMTLIABDecodingOp,MTLStructType *::less<MTLStructType *::set>,MTLStructType *::allocator<MTLStructType *::set>>,MTLStructType *::hash<unsigned long long>,MTLStructType *::equal_to<unsigned long long>,MTLStructType *::less<MTLStructType *::set><MTLStructType *::pair<unsigned long long const,MTLStructType *::allocator<MTLStructType *::set>>>> *<unsigned long long,unsigned long long,MTLStructType *::vector<DYMTLOriginalProcessBuffer,MTLStructType *::less<MTLStructType *::set><MTLStructType *::vector>>,MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>,std::unordered_map<unsigned long long,MTLStructType *::set<DYMTLIABDecodingOp,MTLStructType *::less<MTLStructType *::set>,MTLStructType *::allocator<MTLStructType *::set>>,MTLStructType *::hash<unsigned long long>,MTLStructType *::equal_to<unsigned long long>,MTLStructType *::less<MTLStructType *::set><MTLStructType *::pair<unsigned long long const,MTLStructType *::allocator<MTLStructType *::set>>>> *<unsigned long long,unsigned long long,MTLStructType *::vector<DYMTLOriginalProcessBuffer,MTLStructType *::less<MTLStructType *::set><MTLStructType *::vector>>,MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>,std::unordered_map<unsigned long long,MTLStructType *::set<DYMTLIABDecodingOp,MTLStructType *::less<MTLStructType *::set>,MTLStructType *::allocator<MTLStructType *::set>>,MTLStructType *::hash<unsigned long long>,MTLStructType *::equal_to<unsigned long long>,MTLStructType *::less<MTLStructType *::set><MTLStructType *::pair<unsigned long long const,MTLStructType *::allocator<MTLStructType *::set>>>> *<unsigned long long,unsigned long long,MTLStructType *::vector<DYMTLOriginalProcessBuffer,MTLStructType *::less<MTLStructType *::set><MTLStructType *::vector>>,MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>,MTLStructType *::set const&,std::__1<unsigned long long,std::__1<unsigned long long,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>,MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>>>>,MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>>>>> *,objc_object  {objcproto9MTLBuffer}*,unsigned long long,_MTLArgumentBufferPatchingType *,DYIABPatcher *,DYCommandBufferUID)::$_3::operator()( *(a1 + 64),  [v11 dataType],  objc_msgSend(v11, "indirectArgumentIndex") + *(a1 + 40),  IsArgumentBuffer);
  }

LABEL_6:
}

uint64_t DYStructIsArgumentBuffer(MTLStructType *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = [(MTLStructType *)v1 members];
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (!v4)
    {
      v12 = 0;
      goto LABEL_21;
    }

    v5 = *v16;
    while (1)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 dataType];
        if (v8 <= 1)
        {
          if (v8 != 1)
          {
            continue;
          }

          v11 = [v7 structType];
          IsArgumentBuffer = DYStructIsArgumentBuffer(v11);
        }

        else
        {
          if (v8 != 2)
          {
            v12 = 1;
            if ((v8 - 57) < 4 || (v8 - 78) < 3)
            {
              goto LABEL_21;
            }

            continue;
          }

          v9 = [v7 arrayType];
          IsArgumentBuffer = DYArrayIsArgumentBuffer(v9);
        }

        if (IsArgumentBuffer)
        {
          v12 = 1;
          goto LABEL_21;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v12 = 0;
      if (!v4)
      {
LABEL_21:

        goto LABEL_22;
      }
    }
  }

  v12 = 0;
LABEL_22:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t DYArrayIsArgumentBuffer(MTLArrayType *a1)
{
  v1 = a1;
  v2 = [(MTLArrayType *)v1 elementType];
  v3 = 1;
  if (v2 > 77)
  {
    if ((v2 - 78) >= 3)
    {
LABEL_7:
      v3 = 0;
    }
  }

  else if ((v2 - 57) >= 4)
  {
    if (v2 == 1)
    {
      v4 = [(MTLArrayType *)v1 elementStructType];
      IsArgumentBuffer = DYStructIsArgumentBuffer(v4);
      goto LABEL_9;
    }

    if (v2 == 2)
    {
      v4 = [(MTLArrayType *)v1 elementArrayType];
      IsArgumentBuffer = DYArrayIsArgumentBuffer(v4);
LABEL_9:
      v3 = IsArgumentBuffer;

      goto LABEL_10;
    }

    goto LABEL_7;
  }

LABEL_10:

  return v3;
}

void *std::__function::__value_func<void ()(MTLStructType *,unsigned long)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
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

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24D6E5478(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(MTLArrayType *,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(MTLStructType *,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void DYMTLReplayerIAB::~DYMTLReplayerIAB(DYMTLReplayerIAB *this)
{
  v2 = (this + 8);
  std::vector<DYMTLReplayerIAB::Usage>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<DYMTLReplayerIAB::Usage>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<DYMTLReplayerIAB::Usage>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<DYMTLReplayerIAB::Usage>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 24)
  {
  }

  *(a1 + 8) = a2;
}

void std::function<void ()(NSArray<MTLStructMember *> *,std::map<unsigned long long,unsigned long long> &,unsigned long)>::operator()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  v8 = a2;
  v6 = *(a1 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v6 + 48))(v6, &v8, a3, &v7);
}

__n128 std::__function::__func<decodeReplayerBuffer(objc_object  {objcproto9MTLBuffer}*,unsigned long long,_MTLIndirectArgumentBufferLayout *,MTLArgument *,std::map<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>,std::less<unsigned long long>,DYMTLOriginalProcessBuffer<std::pair<unsigned long long const>>> const&,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const&,std::map<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>,std::less<unsigned long long>,DYMTLOriginalProcessBuffer<std::pair<unsigned long long const>>> const&<unsigned long long,std::map<unsigned long long,DYMTLOriginalProcessBuffer<unsigned long long>>,std::hash,std::equal_to,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,DYMTLOriginalProcessBuffer<unsigned long long>>>> const&,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,MTLArgument *<unsigned long long,unsigned long long,std::less,std::less<unsigned long long><std::pair,unsigned long long>> const&,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::map<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>,std::less<unsigned long long>,DYMTLOriginalProcessBuffer<std::pair<unsigned long long const>>> const&<unsigned long long,objc_object * {__strong},std::hash,std::equal_to,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,objc_object *>>> const&)::$_0,DYMTLOriginalProcessBuffer<std::map<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>,std::less<unsigned long long>,DYMTLOriginalProcessBuffer<std::pair<unsigned long long const>>> const&<unsigned long long,objc_object * {__strong},std::hash,std::equal_to,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,objc_object *>>> const&>,void ()(MTLArrayType *,std::map<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>,std::less<unsigned long long>,DYMTLOriginalProcessBuffer<std::pair<unsigned long long const>>> const&<unsigned long long,std::map<unsigned long long,DYMTLOriginalProcessBuffer<unsigned long long>>,std::hash,std::equal_to,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,DYMTLOriginalProcessBuffer<unsigned long long>>>> const&&,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2860B2850;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<decodeReplayerBuffer(objc_object  {objcproto9MTLBuffer}*,unsigned long long,_MTLIndirectArgumentBufferLayout *,MTLArgument *,std::map<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>,std::less<unsigned long long>,DYMTLOriginalProcessBuffer<std::pair<unsigned long long const>>> const&,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const&,std::map<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>,std::less<unsigned long long>,DYMTLOriginalProcessBuffer<std::pair<unsigned long long const>>> const&<unsigned long long,std::map<unsigned long long,DYMTLOriginalProcessBuffer<unsigned long long>>,std::hash,std::equal_to,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,DYMTLOriginalProcessBuffer<unsigned long long>>>> const&,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,MTLArgument *<unsigned long long,unsigned long long,std::less,std::less<unsigned long long><std::pair,unsigned long long>> const&,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::map<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>,std::less<unsigned long long>,DYMTLOriginalProcessBuffer<std::pair<unsigned long long const>>> const&<unsigned long long,objc_object * {__strong},std::hash,std::equal_to,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,objc_object *>>> const&)::$_0,DYMTLOriginalProcessBuffer<std::map<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>,std::less<unsigned long long>,DYMTLOriginalProcessBuffer<std::pair<unsigned long long const>>> const&<unsigned long long,objc_object * {__strong},std::hash,std::equal_to,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,objc_object *>>> const&>,void ()(MTLArrayType *,std::map<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>,std::less<unsigned long long>,DYMTLOriginalProcessBuffer<std::pair<unsigned long long const>>> const&<unsigned long long,std::map<unsigned long long,DYMTLOriginalProcessBuffer<unsigned long long>>,std::hash,std::equal_to,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,DYMTLOriginalProcessBuffer<unsigned long long>>>> const&&,unsigned long)>::operator()(void *a1, id *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v16 = *a2;
  for (i = 0; ; i = v8 + 1)
  {
    v8 = i;
    if ([v16 arrayLength] <= i)
    {
      break;
    }

    v9 = [v16 elementStructType];

    if (v9)
    {
      v10 = a1[1];
      v11 = [v16 elementStructType];
      v12 = [v11 members];
      std::function<void ()(NSArray<MTLStructMember *> *,std::map<unsigned long long,unsigned long long> &,unsigned long)>::operator()(v10, v12, a3, v6 + [v16 argumentIndexStride] * v8);

LABEL_7:
      continue;
    }

    v13 = [v16 elementArrayType];

    if (v13)
    {
      v14 = a1[2];
      v11 = [v16 elementArrayType];
      std::function<void ()(MTLArrayType *,std::map<unsigned long long,unsigned long long> &,unsigned long)>::operator()(v14, v11, a3, v6 + [v16 argumentIndexStride] * v8);
      goto LABEL_7;
    }

    v15 = [v16 elementType];
    if ((v15 - 58) <= 0x16 && ((1 << (v15 - 58)) & 0x700007) != 0)
    {
      decodeReplayerBuffer(objc_object  {objcproto9MTLBuffer}*,unsigned long long,_MTLIndirectArgumentBufferLayout *,MTLArgument *,std::map<unsigned long long,MTLArgument *::vector<DYMTLOriginalProcessBuffer,MTLArgument *::allocator<MTLArgument *::vector>>,MTLArgument *::less<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::pair<unsigned long long const,MTLArgument *::allocator<MTLArgument *::vector>>>> const&,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const&,std::map<unsigned long long,MTLArgument *::vector<DYMTLOriginalProcessBuffer,MTLArgument *::allocator<MTLArgument *::vector>>,MTLArgument *::less<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::pair<unsigned long long const,MTLArgument *::allocator<MTLArgument *::vector>>>> const&<unsigned long long,std::map<unsigned long long,DYMTLOriginalProcessBuffer<unsigned long long>>,MTLArgument *::hash,MTLArgument *::equal_to,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,DYMTLOriginalProcessBuffer<unsigned long long>>>> const&,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const,std::__1<unsigned long long,unsigned long long,MTLArgument *::less,MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>> const&,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const,std::map<unsigned long long,MTLArgument *::vector<DYMTLOriginalProcessBuffer,MTLArgument *::allocator<MTLArgument *::vector>>,MTLArgument *::less<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::pair<unsigned long long const,MTLArgument *::allocator<MTLArgument *::vector>>>> const&<unsigned long long,objc_object * {__strong},MTLArgument *::hash,MTLArgument *::equal_to,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,objc_object *>>> const&)::$_2::operator()(a1[3], v15, v6 + [v16 argumentIndexStride] * v8, a3);
    }
  }
}

void std::function<void ()(MTLArrayType *,std::map<unsigned long long,unsigned long long> &,unsigned long)>::operator()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  v8 = a2;
  v6 = *(a1 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v6 + 48))(v6, &v8, a3, &v7);
}

void *decodeReplayerBuffer(objc_object  {objcproto9MTLBuffer}*,unsigned long long,_MTLIndirectArgumentBufferLayout *,MTLArgument *,std::map<unsigned long long,MTLArgument *::vector<DYMTLOriginalProcessBuffer,MTLArgument *::allocator<MTLArgument *::vector>>,MTLArgument *::less<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::pair<unsigned long long const,MTLArgument *::allocator<MTLArgument *::vector>>>> const&,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const&,std::map<unsigned long long,MTLArgument *::vector<DYMTLOriginalProcessBuffer,MTLArgument *::allocator<MTLArgument *::vector>>,MTLArgument *::less<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::pair<unsigned long long const,MTLArgument *::allocator<MTLArgument *::vector>>>> const&<unsigned long long,std::map<unsigned long long,DYMTLOriginalProcessBuffer<unsigned long long>>,MTLArgument *::hash,MTLArgument *::equal_to,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,DYMTLOriginalProcessBuffer<unsigned long long>>>> const&,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const,std::__1<unsigned long long,unsigned long long,MTLArgument *::less,MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>> const&,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const,std::map<unsigned long long,MTLArgument *::vector<DYMTLOriginalProcessBuffer,MTLArgument *::allocator<MTLArgument *::vector>>,MTLArgument *::less<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::pair<unsigned long long const,MTLArgument *::allocator<MTLArgument *::vector>>>> const&<unsigned long long,objc_object * {__strong},MTLArgument *::hash,MTLArgument *::equal_to,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,objc_object *>>> const&)::$_2::operator()(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v38[0] = -1;
  if (a2 > 77)
  {
    switch(a2)
    {
      case 'N':
        v38[0] = [**a1 uniqueIdentifierForRenderPipelineAtIndex:a3 inIndirectArgumentBuffer:**(a1 + 8) atOffset:**(a1 + 16)];
        v17 = *(a1 + 56);
        break;
      case 'O':
        v38[0] = [**a1 uniqueIdentifierForComputePipelineAtIndex:a3 inIndirectArgumentBuffer:**(a1 + 8) atOffset:**(a1 + 16)];
        v17 = *(a1 + 64);
        break;
      case 'P':
        v38[0] = [**a1 uniqueIdentifierForIndirectCommandBufferAtIndex:a3 inIndirectArgumentBuffer:**(a1 + 8) atOffset:**(a1 + 16)];
        v17 = *(a1 + 72);
        break;
      default:
        goto LABEL_28;
    }
  }

  else
  {
    switch(a2)
    {
      case ':':
        v38[0] = [**a1 uniqueIdentifierForTextureAtIndex:a3 inIndirectArgumentBuffer:**(a1 + 8) atOffset:**(a1 + 16)];
        v17 = *(a1 + 40);
        break;
      case ';':
        v38[0] = [**a1 uniqueIdentifierForSamplerAtIndex:a3 inIndirectArgumentBuffer:**(a1 + 8) atOffset:**(a1 + 16)];
        v17 = *(a1 + 48);
        break;
      case '<':
        v7 = [**a1 virtualAddressForBufferAtIndex:a3 inIndirectArgumentBuffer:**(a1 + 8) atOffset:**(a1 + 16)];
        v38[0] = v7;
        v8 = *(a1 + 24);
        v9 = v8 + 1;
        v10 = v8[1];
        if (v10)
        {
          v11 = v8 + 1;
          do
          {
            v12 = v10[4];
            v13 = v12 > v7;
            v14 = v12 <= v7;
            if (v13)
            {
              v11 = v10;
            }

            v10 = v10[v14];
          }

          while (v10);
          if (v11 != v9)
          {
            if (v11 == *v8)
            {
              v16 = v11;
            }

            else
            {
              v15 = *v11;
              if (*v11)
              {
                do
                {
                  v16 = v15;
                  v15 = v15[1];
                }

                while (v15);
              }

              else
              {
                do
                {
                  v16 = v11[2];
                  v18 = *v16 == v11;
                  v11 = v16;
                }

                while (v18);
              }
            }

LABEL_38:
            v24 = v16[4];
            if (v24 <= v7)
            {
              v25 = *(a1 + 32);
              v28 = *(v25 + 8);
              v26 = (v25 + 8);
              v27 = v28;
              if (v28)
              {
                v29 = v16[5];
                v30 = v26;
                do
                {
                  v31 = v27[4];
                  v32 = v31 >= v29;
                  v33 = v31 < v29;
                  if (v32)
                  {
                    v30 = v27;
                  }

                  v27 = v27[v33];
                }

                while (v27);
                if (v30 != v26 && v29 >= v30[4])
                {
                  v35 = v30[5];
                  v34 = v30[6];
                  if (v35 != v34)
                  {
                    v36 = v7 - v24;
                    while (v36 >= *(v35 + 8))
                    {
                      v35 += 16;
                      if (v35 == v34)
                      {
                        goto LABEL_28;
                      }
                    }

                    v20 = v29 + v36;
                    goto LABEL_27;
                  }
                }
              }
            }

            goto LABEL_28;
          }

          v9 = v11;
        }

        if (v8[2])
        {
          v23 = *v9;
          if (*v9)
          {
            do
            {
              v16 = v23;
              v23 = v23[1];
            }

            while (v23);
          }

          else
          {
            do
            {
              v16 = v9[2];
              v18 = *v16 == v9;
              v9 = v16;
            }

            while (v18);
          }
        }

        else
        {
          v16 = v9;
        }

        goto LABEL_38;
      default:
        goto LABEL_28;
    }
  }

  v19 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(v17, v38);
  if (v19)
  {
    v20 = v19[3];
LABEL_27:
    v38[0] = v20;
  }

LABEL_28:
  v21 = v38[0];
  v37 = a3;
  v38[2] = &v37;
  result = std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a4, &v37);
  result[5] = v21;
  return result;
}

__n128 std::__function::__func<decodeReplayerBuffer(objc_object  {objcproto9MTLBuffer}*,unsigned long long,_MTLIndirectArgumentBufferLayout *,MTLArgument *,std::map<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>,std::less<unsigned long long>,DYMTLOriginalProcessBuffer<std::pair<unsigned long long const>>> const&,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const&,std::map<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>,std::less<unsigned long long>,DYMTLOriginalProcessBuffer<std::pair<unsigned long long const>>> const&<unsigned long long,std::map<unsigned long long,DYMTLOriginalProcessBuffer<unsigned long long>>,std::hash,std::equal_to,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,DYMTLOriginalProcessBuffer<unsigned long long>>>> const&,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,MTLArgument *<unsigned long long,unsigned long long,std::less,std::less<unsigned long long><std::pair,unsigned long long>> const&,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::map<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>,std::less<unsigned long long>,DYMTLOriginalProcessBuffer<std::pair<unsigned long long const>>> const&<unsigned long long,objc_object * {__strong},std::hash,std::equal_to,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,objc_object *>>> const&)::$_1,DYMTLOriginalProcessBuffer<std::map<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>,std::less<unsigned long long>,DYMTLOriginalProcessBuffer<std::pair<unsigned long long const>>> const&<unsigned long long,objc_object * {__strong},std::hash,std::equal_to,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,objc_object *>>> const&>,void ()(NSArray<MTLStructMember *> *,std::map<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>,std::less<unsigned long long>,DYMTLOriginalProcessBuffer<std::pair<unsigned long long const>>> const&<unsigned long long,std::map<unsigned long long,DYMTLOriginalProcessBuffer<unsigned long long>>,std::hash,std::equal_to,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,DYMTLOriginalProcessBuffer<unsigned long long>>>> const&&,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2860B2898;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<decodeReplayerBuffer(objc_object  {objcproto9MTLBuffer}*,unsigned long long,_MTLIndirectArgumentBufferLayout *,MTLArgument *,std::map<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>,std::less<unsigned long long>,DYMTLOriginalProcessBuffer<std::pair<unsigned long long const>>> const&,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const&,std::map<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>,std::less<unsigned long long>,DYMTLOriginalProcessBuffer<std::pair<unsigned long long const>>> const&<unsigned long long,std::map<unsigned long long,DYMTLOriginalProcessBuffer<unsigned long long>>,std::hash,std::equal_to,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,DYMTLOriginalProcessBuffer<unsigned long long>>>> const&,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,MTLArgument *<unsigned long long,unsigned long long,std::less,std::less<unsigned long long><std::pair,unsigned long long>> const&,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::unordered_map<unsigned long long,unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,unsigned long long>>> const,std::map<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>,std::less<unsigned long long>,DYMTLOriginalProcessBuffer<std::pair<unsigned long long const>>> const&<unsigned long long,objc_object * {__strong},std::hash,std::equal_to,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,objc_object *>>> const&)::$_1,DYMTLOriginalProcessBuffer<std::map<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>,std::less<unsigned long long>,DYMTLOriginalProcessBuffer<std::pair<unsigned long long const>>> const&<unsigned long long,objc_object * {__strong},std::hash,std::equal_to,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,objc_object *>>> const&>,void ()(NSArray<MTLStructMember *> *,std::map<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>,std::less<unsigned long long>,DYMTLOriginalProcessBuffer<std::pair<unsigned long long const>>> const&<unsigned long long,std::map<unsigned long long,DYMTLOriginalProcessBuffer<unsigned long long>>,std::hash,std::equal_to,DYMTLOriginalProcessBuffer<std::less<unsigned long long><std::pair,DYMTLOriginalProcessBuffer<unsigned long long>>>> const&&,unsigned long)>::operator()(uint64_t a1, void **a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___ZZL20decodeReplayerBufferPU19objcproto9MTLBuffer11objc_objectyP32_MTLIndirectArgumentBufferLayoutP11MTLArgumentRKNSt3__13mapIyNS5_6vectorI26DYMTLOriginalProcessBufferNS5_9allocatorIS8_EEEENS5_4lessIyEENS9_INS5_4pairIKySB_EEEEEERKNS5_13unordered_mapIyyNS5_4hashIyEENS5_8equal_toIyEENS9_INSE_ISF_yEEEEEERKNSL_IyNS7_IyNS9_IyEEEESN_SP_NS9_INSE_ISF_SW_EEEEEESU_SU_SU_RKNS6_IyySD_SR_EESU_SU_SU_SU_SU_RKNSL_IyU8__strongP11objc_objectSN_SP_NS9_INSE_ISF_S17_EEEEEEENK3__1clEP7NSArrayIP15MTLStructMemberERS12_m_block_invoke;
  v7[3] = &__block_descriptor_72_e32_v32__0__MTLStructMember_8Q16_B24l;
  v7[4] = *(a1 + 8);
  v7[5] = a3;
  v7[6] = v5;
  v8 = *(a1 + 16);
  return [v4 enumerateObjectsUsingBlock:v7];
}

void ___ZZL20decodeReplayerBufferPU19objcproto9MTLBuffer11objc_objectyP32_MTLIndirectArgumentBufferLayoutP11MTLArgumentRKNSt3__13mapIyNS5_6vectorI26DYMTLOriginalProcessBufferNS5_9allocatorIS8_EEEENS5_4lessIyEENS9_INS5_4pairIKySB_EEEEEERKNS5_13unordered_mapIyyNS5_4hashIyEENS5_8equal_toIyEENS9_INSE_ISF_yEEEEEERKNSL_IyNS7_IyNS9_IyEEEESN_SP_NS9_INSE_ISF_SW_EEEEEESU_SU_SU_RKNS6_IyySD_SR_EESU_SU_SU_SU_SU_RKNSL_IyU8__strongP11objc_objectSN_SP_NS9_INSE_ISF_S17_EEEEEEENK3__1clEP7NSArrayIP15MTLStructMemberERS12_m_block_invoke(void *a1, void *a2)
{
  v9 = a2;
  v3 = [v9 structType];

  if (v3)
  {
    v4 = a1[4];
    v5 = [v9 structType];
    v6 = [v5 members];
    std::function<void ()(NSArray<MTLStructMember *> *,std::map<unsigned long long,unsigned long long> &,unsigned long)>::operator()(v4, v6, a1[5], [v9 indirectArgumentIndex] + a1[6]);

LABEL_5:
    goto LABEL_6;
  }

  v7 = [v9 arrayType];

  if (v7)
  {
    v8 = a1[7];
    v5 = [v9 arrayType];
    std::function<void ()(MTLArrayType *,std::map<unsigned long long,unsigned long long> &,unsigned long)>::operator()(v8, v5, a1[5], [v9 indirectArgumentIndex] + a1[6]);
    goto LABEL_5;
  }

  decodeReplayerBuffer(objc_object  {objcproto9MTLBuffer}*,unsigned long long,_MTLIndirectArgumentBufferLayout *,MTLArgument *,std::map<unsigned long long,MTLArgument *::vector<DYMTLOriginalProcessBuffer,MTLArgument *::allocator<MTLArgument *::vector>>,MTLArgument *::less<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::pair<unsigned long long const,MTLArgument *::allocator<MTLArgument *::vector>>>> const&,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const&,std::map<unsigned long long,MTLArgument *::vector<DYMTLOriginalProcessBuffer,MTLArgument *::allocator<MTLArgument *::vector>>,MTLArgument *::less<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::pair<unsigned long long const,MTLArgument *::allocator<MTLArgument *::vector>>>> const&<unsigned long long,std::map<unsigned long long,DYMTLOriginalProcessBuffer<unsigned long long>>,MTLArgument *::hash,MTLArgument *::equal_to,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,DYMTLOriginalProcessBuffer<unsigned long long>>>> const&,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const,std::__1<unsigned long long,unsigned long long,MTLArgument *::less,MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>> const&,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const,MTLArgument *::unordered_map<unsigned long long,unsigned long long,MTLArgument *::hash<unsigned long long>,MTLArgument *::equal_to<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,unsigned long long>>> const,std::map<unsigned long long,MTLArgument *::vector<DYMTLOriginalProcessBuffer,MTLArgument *::allocator<MTLArgument *::vector>>,MTLArgument *::less<unsigned long long>,DYMTLOriginalProcessBuffer<MTLArgument *::pair<unsigned long long const,MTLArgument *::allocator<MTLArgument *::vector>>>> const&<unsigned long long,objc_object * {__strong},MTLArgument *::hash,MTLArgument *::equal_to,DYMTLOriginalProcessBuffer<MTLArgument *::less<unsigned long long><MTLArgument *::pair,objc_object *>>> const&)::$_2::operator()(a1[8], [v9 dataType], objc_msgSend(v9, "indirectArgumentIndex") + a1[6], a1[5]);
LABEL_6:
}

void *std::__function::__value_func<void ()(NSArray<MTLStructMember *> *,std::map<unsigned long long,unsigned long long> &,unsigned long)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
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

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24D6E61F4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(MTLArrayType *,std::map<unsigned long long,unsigned long long> &,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(NSArray<MTLStructMember *> *,std::map<unsigned long long,unsigned long long> &,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::map<unsigned long long,unsigned long long>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned long long,unsigned long long>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long long,unsigned long long>,std::__tree_node<std::__value_type<unsigned long long,unsigned long long>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<unsigned long long,unsigned long long>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long long,unsigned long long>,std::__tree_node<std::__value_type<unsigned long long,unsigned long long>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::__emplace_hint_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long long> const&>(v5, v5 + 1, v4 + 4);
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

uint64_t std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::__emplace_hint_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long long> const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::__find_equal<unsigned long long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::__find_equal<unsigned long long>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::function<void ()(NSArray<MTLStructMember *> *,unsigned long)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4, &v6, &v5);
}

__n128 std::__function::__func<decodeOriginalBuffer(objc_object  {objcproto9MTLBuffer}*,unsigned long long,_MTLIndirectArgumentBufferLayout *,MTLArgument *,std::map<unsigned long long,unsigned long long> *)::$_0,std::less<unsigned long long><std::map<unsigned long long,unsigned long long> *>,void ()(MTLArrayType *,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2860B28E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<decodeOriginalBuffer(objc_object  {objcproto9MTLBuffer}*,unsigned long long,_MTLIndirectArgumentBufferLayout *,MTLArgument *,std::map<unsigned long long,unsigned long long> *)::$_0,std::less<unsigned long long><std::map<unsigned long long,unsigned long long> *>,void ()(MTLArrayType *,unsigned long)>::operator()(uint64_t a1, id *a2, uint64_t *a3)
{
  v4 = *a3;
  v14 = *a2;
  for (i = 0; ; i = v6 + 1)
  {
    v6 = i;
    if ([v14 arrayLength] <= i)
    {
      break;
    }

    v7 = [v14 elementStructType];

    if (v7)
    {
      v8 = *(a1 + 8);
      v9 = [v14 elementStructType];
      v10 = [v9 members];
      std::function<void ()(NSArray<MTLStructMember *> *,unsigned long)>::operator()(v8, v10, v4 + [v14 argumentIndexStride] * v6);

LABEL_7:
      continue;
    }

    v11 = [v14 elementArrayType];

    if (v11)
    {
      v12 = *(a1 + 16);
      v9 = [v14 elementArrayType];
      std::function<void ()(MTLArrayType *,unsigned long)>::operator()(v12, v9, v4 + [v14 argumentIndexStride] * v6);
      goto LABEL_7;
    }

    v13 = [v14 elementType];
    if ((v13 - 58) <= 0x16 && ((1 << (v13 - 58)) & 0x700007) != 0)
    {
      decodeOriginalBuffer(objc_object  {objcproto9MTLBuffer}*,unsigned long long,_MTLIndirectArgumentBufferLayout *,MTLArgument *,std::map<unsigned long long,unsigned long long,MTLArgument *::less<unsigned long long>,MTLArgument *::allocator<MTLArgument *::pair<unsigned long long const,unsigned long long>>> *)::$_2::operator()(*(a1 + 24), v13, v4 + [v14 argumentIndexStride] * v6);
    }
  }
}

void *decodeOriginalBuffer(objc_object  {objcproto9MTLBuffer}*,unsigned long long,_MTLIndirectArgumentBufferLayout *,MTLArgument *,std::map<unsigned long long,unsigned long long,MTLArgument *::less<unsigned long long>,MTLArgument *::allocator<MTLArgument *::pair<unsigned long long const,unsigned long long>>> *)::$_2::operator()(uint64_t **a1, uint64_t a2, unint64_t a3)
{
  v6 = **a1;
  v11 = a3;
  v12 = &v11;
  result = std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v6, &v11);
  if (result[5] != -1)
  {
    if (a2 > 77)
    {
      switch(a2)
      {
        case 'N':
          v8 = [*a1[1] uniqueIdentifierForRenderPipelineAtIndex:a3 inIndirectArgumentBuffer:*a1[2] atOffset:*a1[3]];
          break;
        case 'O':
          v8 = [*a1[1] uniqueIdentifierForComputePipelineAtIndex:a3 inIndirectArgumentBuffer:*a1[2] atOffset:*a1[3]];
          break;
        case 'P':
          v8 = [*a1[1] uniqueIdentifierForIndirectCommandBufferAtIndex:a3 inIndirectArgumentBuffer:*a1[2] atOffset:*a1[3]];
          break;
        default:
          return result;
      }
    }

    else
    {
      switch(a2)
      {
        case ':':
          v8 = [*a1[1] uniqueIdentifierForTextureAtIndex:a3 inIndirectArgumentBuffer:*a1[2] atOffset:*a1[3]];
          break;
        case ';':
          v8 = [*a1[1] uniqueIdentifierForSamplerAtIndex:a3 inIndirectArgumentBuffer:*a1[2] atOffset:*a1[3]];
          break;
        case '<':
          v8 = [*a1[1] virtualAddressForBufferAtIndex:a3 inIndirectArgumentBuffer:*a1[2] atOffset:*a1[3]];
          break;
        default:
          return result;
      }
    }

    v9 = v8;
    v10 = **a1;
    v11 = a3;
    v12 = &v11;
    result = std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v10, &v11);
    result[5] = v9;
  }

  return result;
}

__n128 std::__function::__func<decodeOriginalBuffer(objc_object  {objcproto9MTLBuffer}*,unsigned long long,_MTLIndirectArgumentBufferLayout *,MTLArgument *,std::map<unsigned long long,unsigned long long> *)::$_1,std::less<unsigned long long><std::map<unsigned long long,unsigned long long> *>,void ()(NSArray<MTLStructMember *> *,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2860B2928;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<decodeOriginalBuffer(objc_object  {objcproto9MTLBuffer}*,unsigned long long,_MTLIndirectArgumentBufferLayout *,MTLArgument *,std::map<unsigned long long,unsigned long long> *)::$_1,std::less<unsigned long long><std::map<unsigned long long,unsigned long long> *>,void ()(NSArray<MTLStructMember *> *,unsigned long)>::operator()(uint64_t a1, void **a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___ZZL20decodeOriginalBufferPU19objcproto9MTLBuffer11objc_objectyP32_MTLIndirectArgumentBufferLayoutP11MTLArgumentPNSt3__13mapIyyNS5_4lessIyEENS5_9allocatorINS5_4pairIKyyEEEEEEENK3__1clEP7NSArrayIP15MTLStructMemberEm_block_invoke;
  v6[3] = &__block_descriptor_64_e32_v32__0__MTLStructMember_8Q16_B24l;
  v6[4] = *(a1 + 8);
  v6[5] = v4;
  v7 = *(a1 + 16);
  return [v3 enumerateObjectsUsingBlock:v6];
}

void ___ZZL20decodeOriginalBufferPU19objcproto9MTLBuffer11objc_objectyP32_MTLIndirectArgumentBufferLayoutP11MTLArgumentPNSt3__13mapIyyNS5_4lessIyEENS5_9allocatorINS5_4pairIKyyEEEEEEENK3__1clEP7NSArrayIP15MTLStructMemberEm_block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 structType];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v9 structType];
    v6 = [v5 members];
    std::function<void ()(NSArray<MTLStructMember *> *,unsigned long)>::operator()(v4, v6, [v9 indirectArgumentIndex] + *(a1 + 40));

LABEL_5:
    goto LABEL_6;
  }

  v7 = [v9 arrayType];

  if (v7)
  {
    v8 = *(a1 + 48);
    v5 = [v9 arrayType];
    std::function<void ()(MTLArrayType *,unsigned long)>::operator()(v8, v5, [v9 indirectArgumentIndex] + *(a1 + 40));
    goto LABEL_5;
  }

  decodeOriginalBuffer(objc_object  {objcproto9MTLBuffer}*,unsigned long long,_MTLIndirectArgumentBufferLayout *,MTLArgument *,std::map<unsigned long long,unsigned long long,MTLArgument *::less<unsigned long long>,MTLArgument *::allocator<MTLArgument *::pair<unsigned long long const,unsigned long long>>> *)::$_2::operator()(*(a1 + 56), [v9 dataType], objc_msgSend(v9, "indirectArgumentIndex") + *(a1 + 40));
LABEL_6:
}

void *std::__function::__value_func<void ()(NSArray<MTLStructMember *> *,unsigned long)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
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

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24D6E6F80(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(NSArray<MTLStructMember *> *,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<DYCommandBufferUID>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>::~__hash_table(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::vector<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void std::vector<std::vector<GPUTools::MTL::Utils::DYMTLIndirectArgumentBufferInfo>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<GPUTools::MTL::Utils::DYMTLIndirectArgumentBufferInfo>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<GPUTools::MTL::Utils::DYMTLIndirectArgumentBufferInfo>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void **std::__split_buffer<std::vector<std::vector<GPUTools::MTL::Utils::DYMTLIndirectArgumentBufferInfo>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::vector<GPUTools::MTL::Utils::DYMTLIndirectArgumentBufferInfo>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::vector<GPUTools::MTL::Utils::DYMTLIndirectArgumentBufferInfo>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::vector<GPUTools::MTL::Utils::DYMTLIndirectArgumentBufferInfo>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void *std::__tree<std::__value_type<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<unsigned long long>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__tree<DYMTLIABDecodingOp>::destroy((a2 + 3), a2[4]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::__tree<DYMTLIABDecodingOp>::__emplace_unique_key_args<DYMTLIABDecodingOp,DYMTLIABDecodingOp const&>(uint64_t a1, uint64_t a2)
{
  result = *std::__tree<DYMTLIABDecodingOp>::__find_equal<DYMTLIABDecodingOp>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<DYMTLIABDecodingOp>::__construct_node<DYMTLIABDecodingOp const&>();
  }

  return result;
}

void *std::__tree<DYMTLIABDecodingOp>::__find_equal<DYMTLIABDecodingOp>(uint64_t a1, void *a2, uint64_t a3)
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
        if (!DYMTLIABDecodingOp::operator<(a3, (v4 + 4)))
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

      if (!DYMTLIABDecodingOp::operator<((v7 + 4), a3))
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

void sub_24D6E7A64(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<DYMTLIABDecodingOp,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

BOOL DYMTLIABDecodingOp::operator<(uint64_t a1, uint64_t a2)
{
  v6[0] = a1 + 8;
  v6[1] = a1 + 24;
  v6[2] = a1;
  v6[3] = a1 + 16;
  v2 = *(a2 + 8);
  v5[0] = a2 + 8;
  v5[1] = a2 + 24;
  v5[2] = a2;
  v5[3] = a2 + 16;
  v3 = *(a1 + 8);
  if (v3 < v2)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    return std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<unsigned long long const&,std::vector<unsigned long long> const&,unsigned long long const&,BOOL const&>,std::tuple<unsigned long long const&,std::vector<unsigned long long> const&,unsigned long long const&,BOOL const&>>(&v7, v6, v5);
  }

  return 0;
}

BOOL std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<unsigned long long const&,std::vector<unsigned long long> const&,unsigned long long const&,BOOL const&>,std::tuple<unsigned long long const&,std::vector<unsigned long long> const&,unsigned long long const&,BOOL const&>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a3 + 8);
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *v4;
  v8 = *(v4 + 8);
  if (v8 - v7 >= v6 - v5)
  {
    v9 = v6 - v5;
  }

  else
  {
    v9 = v8 - v7;
  }

  v10 = v7;
  v11 = v5;
  if (v9)
  {
    v12 = 8 * v9;
    v10 = v7;
    v11 = v5;
    while (*v11 == *v10)
    {
      ++v11;
      ++v10;
      v12 -= 8;
      if (!v12)
      {
        v11 = &v5[v9];
        break;
      }
    }
  }

  if (v10 != v8 && (v11 == v6 || *v11 < *v10))
  {
    return 1;
  }

  if (v9)
  {
    v13 = 8 * v9;
    v14 = &v7[v9];
    while (*v7 == *v5)
    {
      ++v7;
      ++v5;
      v13 -= 8;
      if (!v13)
      {
        v7 = v14;
        goto LABEL_17;
      }
    }
  }

  if (v5 != v6 && (v7 == v8 || *v7 < *v5))
  {
    return 0;
  }

LABEL_17:
  v15 = **(a2 + 16);
  v16 = **(a3 + 16);
  if (v15 < v16)
  {
    return 1;
  }

  return v16 >= v15 && **(a2 + 24) < **(a3 + 24);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<DYMTLIABDecodingOp,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[7];
    if (v3)
    {
      __p[8] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__tree<DYMTLIABDecodingOp>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<DYMTLIABDecodingOp>::destroy(a1, *a2);
    std::__tree<DYMTLIABDecodingOp>::destroy(a1, a2[1]);
    v4 = a2[7];
    if (v4)
    {
      a2[8] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t *std::__tree<DYMTLIABDecodingOp>::swap(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v5 = result[1];
  v4 = result[2];
  v3 = result + 1;
  *(result + 1) = *(a2 + 8);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (result[2])
  {
    result = (*v3 + 16);
  }

  *result = v3;
  v6 = (*(a2 + 8) + 16);
  if (!v4)
  {
    v6 = a2;
  }

  *v6 = a2 + 8;
  return result;
}

void *std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>>>::__deallocate_node(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__tree<DYMTLIABDecodingOp>::destroy((v2 + 3), v2[4]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__tree<DYMTLIABDecodingOp>::__emplace_hint_unique_key_args<DYMTLIABDecodingOp,DYMTLIABDecodingOp const&>(void *a1, void *a2, uint64_t a3)
{
  result = *std::__tree<DYMTLIABDecodingOp>::__find_equal<DYMTLIABDecodingOp>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<DYMTLIABDecodingOp>::__construct_node<DYMTLIABDecodingOp const&>();
  }

  return result;
}

uint64_t *std::__tree<DYMTLIABDecodingOp>::__find_equal<DYMTLIABDecodingOp>(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !DYMTLIABDecodingOp::operator<(a5, (a2 + 4)))
  {
    if (!DYMTLIABDecodingOp::operator<((a2 + 4), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
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
      if (!DYMTLIABDecodingOp::operator<(a5, (v15 + 4)))
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
      return v12 + 1;
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
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (DYMTLIABDecodingOp::operator<((v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<DYMTLIABDecodingOp>::__find_equal<DYMTLIABDecodingOp>(a1, a3, a5);
}

uint64_t std::__function::__value_func<MTLStructType * ()(MTLStructType *,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

id std::function<MTLStructType * ()(MTLArrayType *,unsigned long)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a3;
  v8 = a2;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, &v8, &v7);

  return v5;
}

uint64_t std::__function::__value_func<MTLStructType * ()(MTLArrayType *,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_24D6E8600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZZ82__DYMTLIndirectArgumentBufferManager_findStructTypeForArgumentIndex_inStructType__ENK3__1clEP13MTLStructTypem_block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = a2;
  v7 = *(a1 + 40);
  v16 = v6;
  if ([v6 indirectArgumentIndex] + v7 == **(a1 + 48) && objc_msgSend(v16, "dataType") == 60)
  {
    v8 = [v16 pointerType];
    v9 = [v8 elementStructType];
  }

  else
  {
    v10 = [v16 structType];

    if (v10)
    {
      v11 = *(a1 + 56);
      v8 = [v16 structType];
      v9 = std::function<MTLStructType * ()(MTLStructType *,unsigned long)>::operator()(v11, v8, [v16 indirectArgumentIndex] + *(a1 + 40));
    }

    else
    {
      v12 = [v16 arrayType];

      if (!v12)
      {
        goto LABEL_9;
      }

      v13 = *(a1 + 64);
      v8 = [v16 arrayType];
      v9 = std::function<MTLStructType * ()(MTLArrayType *,unsigned long)>::operator()(v13, v8, [v16 indirectArgumentIndex] + *(a1 + 40));
    }
  }

  v14 = *(*(a1 + 32) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v9;

LABEL_9:
  *a4 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void *std::__function::__value_func<MTLStructType * ()(MTLStructType *,unsigned long)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
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

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24D6E8A30(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::vector<DYMTLReplayerIAB::Usage>::__emplace_back_slow_path<DYMTLReplayerIAB::Usage const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<DYMTLReplayerIAB::Usage>>(a1, v6);
  }

  v7 = 24 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  v8 = *(a2 + 8);
  *v7 = *a2;
  *(v7 + 8) = v8;
  *(v7 + 16) = *(a2 + 16);
  *&v17 = v7 + 24;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DYMTLReplayerIAB::Usage>,DYMTLReplayerIAB::Usage*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<DYMTLReplayerIAB::Usage>::~__split_buffer(&v15);
  return v14;
}

void sub_24D6E8B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<DYMTLReplayerIAB::Usage>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<DYMTLReplayerIAB::Usage>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DYMTLReplayerIAB::Usage>,DYMTLReplayerIAB::Usage*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      *a4 = *v4;
      v5 = *(v4 + 8);
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *(a4 + 8) = v5;
      v4 += 24;
      a4 += 24;
    }

    while (v4 != a3);
    v10 = a4;
  }

  v8 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<DYMTLReplayerIAB::Usage>,DYMTLReplayerIAB::Usage*,DYMTLReplayerIAB::Usage*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DYMTLReplayerIAB::Usage>,DYMTLReplayerIAB::Usage*>>::~__exception_guard_exceptions[abi:ne200100](v7);
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<DYMTLReplayerIAB::Usage>,DYMTLReplayerIAB::Usage*,DYMTLReplayerIAB::Usage*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v4 += 24;
    }

    while (v4 != a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DYMTLReplayerIAB::Usage>,DYMTLReplayerIAB::Usage*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<DYMTLReplayerIAB::Usage>,std::reverse_iterator<DYMTLReplayerIAB::Usage*>,std::reverse_iterator<DYMTLReplayerIAB::Usage*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<DYMTLReplayerIAB::Usage>,std::reverse_iterator<DYMTLReplayerIAB::Usage*>,std::reverse_iterator<DYMTLReplayerIAB::Usage*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v6 -= 24;
    }

    while (v6 != a5);
  }
}

uint64_t std::__split_buffer<DYMTLReplayerIAB::Usage>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<DYMTLReplayerIAB::Usage>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<DYMTLReplayerIAB::Usage>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
  }
}

uint64_t std::vector<DYMTLReplayerIAB>::__construct_one_at_end[abi:ne200100]<DYMTLReplayerIAB const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  v4[2] = 0;
  v4[3] = 0;
  v4[1] = 0;
  result = std::vector<DYMTLReplayerIAB::Usage>::__init_with_size[abi:ne200100]<DYMTLReplayerIAB::Usage*,DYMTLReplayerIAB::Usage*>((v4 + 1), *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  *(a1 + 8) = v4 + 4;
  return result;
}

uint64_t std::vector<DYMTLReplayerIAB>::__emplace_back_slow_path<DYMTLReplayerIAB const&>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
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

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<DYMTLReplayerIAB>>(a1, v7);
  }

  v8 = (32 * v2);
  v15 = 0;
  v16 = v8;
  v17 = v8;
  *v8 = *a2;
  v8[2] = 0;
  v8[3] = 0;
  v8[1] = 0;
  std::vector<DYMTLReplayerIAB::Usage>::__init_with_size[abi:ne200100]<DYMTLReplayerIAB::Usage*,DYMTLReplayerIAB::Usage*>((v8 + 1), *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  *&v17 = v17 + 32;
  v9 = *(a1 + 8);
  v10 = (v16 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DYMTLReplayerIAB>,DYMTLReplayerIAB*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<DYMTLReplayerIAB>::~__split_buffer(&v15);
  return v14;
}

void sub_24D6E8F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<DYMTLReplayerIAB>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<DYMTLReplayerIAB::Usage>::__init_with_size[abi:ne200100]<DYMTLReplayerIAB::Usage*,DYMTLReplayerIAB::Usage*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<DYMTLReplayerIAB::Usage>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24D6E9020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<DYMTLReplayerIAB::Usage>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<DYMTLReplayerIAB::Usage>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<DYMTLReplayerIAB::Usage>>(a1, a2);
  }

  std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<DYMTLReplayerIAB::Usage>,DYMTLReplayerIAB::Usage*,DYMTLReplayerIAB::Usage*,DYMTLReplayerIAB::Usage*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v7 = a4;
  }

  else
  {
    v6 = a2;
    v7 = v13;
    do
    {
      v8 = *(v6 + 8);
      *v4 = *v6;
      v4[1] = v8;
      v4[2] = *(v6 + 16);
      v6 += 24;
      v7 += 3;
      v4 = v7;
    }

    while (v6 != a3);
    v13 = v7;
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DYMTLReplayerIAB::Usage>,DYMTLReplayerIAB::Usage*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v7;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<DYMTLReplayerIAB>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DYMTLReplayerIAB>,DYMTLReplayerIAB*>(uint64_t a1, void **a2, void **a3, void *a4)
{
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *v4 = 0;
      *a4 = v5;
      a4[1] = 0;
      a4[2] = 0;
      a4[3] = 0;
      *(a4 + 1) = *(v4 + 1);
      a4[3] = v4[3];
      v4[1] = 0;
      v4[2] = 0;
      v4[3] = 0;
      v4 += 4;
      a4 += 4;
    }

    while (v4 != a3);
    v10 = a4;
  }

  v8 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<DYMTLReplayerIAB>,DYMTLReplayerIAB*,DYMTLReplayerIAB*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DYMTLReplayerIAB>,DYMTLReplayerIAB*>>::~__exception_guard_exceptions[abi:ne200100](v7);
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<DYMTLReplayerIAB>,DYMTLReplayerIAB*,DYMTLReplayerIAB*>(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v8[3] = v3;
    v8[4] = v4;
    v6 = a2;
    do
    {
      v8[0] = v6 + 1;
      std::vector<DYMTLReplayerIAB::Usage>::__destroy_vector::operator()[abi:ne200100](v8);
      v7 = *v6;
      v6 += 4;
    }

    while (v6 != a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DYMTLReplayerIAB>,DYMTLReplayerIAB*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<DYMTLReplayerIAB>,std::reverse_iterator<DYMTLReplayerIAB*>,std::reverse_iterator<DYMTLReplayerIAB*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<DYMTLReplayerIAB>,std::reverse_iterator<DYMTLReplayerIAB*>,std::reverse_iterator<DYMTLReplayerIAB*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v10[3] = v5;
    v10[4] = v6;
    v8 = a3;
    do
    {
      v10[0] = (v8 - 24);
      std::vector<DYMTLReplayerIAB::Usage>::__destroy_vector::operator()[abi:ne200100](v10);
      v9 = *(v8 - 32);
      v8 -= 32;
    }

    while (v8 != a5);
  }
}

uint64_t std::__split_buffer<DYMTLReplayerIAB>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    v5 = (i - 24);
    std::vector<DYMTLReplayerIAB::Usage>::__destroy_vector::operator()[abi:ne200100](&v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<DYMTLReplayerIAB>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 32)
  {
    v6 = (i - 24);
    std::vector<DYMTLReplayerIAB::Usage>::__destroy_vector::operator()[abi:ne200100](&v6);
    v5 = *(i - 32);
  }

  *(a1 + 8) = a2;
}

void std::vector<std::pair<unsigned long long,std::map<unsigned long long,unsigned long long>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 32;
        std::__tree<BufferEntry>::destroy((v4 - 24), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<std::pair<unsigned long long,std::map<unsigned long long,unsigned long long>>>::__emplace_back_slow_path<std::pair<unsigned long long,std::map<unsigned long long,unsigned long long>>>(uint64_t *a1, void *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
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

  v23 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long long,std::map<unsigned long long,unsigned long long>>>>(a1, v7);
  }

  v8 = (32 * v2);
  v20 = 0;
  v21 = v8;
  v9 = a2[1];
  *v8 = *a2;
  v8[1] = v9;
  v10 = a2 + 2;
  v11 = a2[2];
  *(&v22 + 1) = 0;
  *(32 * v2 + 0x10) = v11;
  v12 = 32 * v2 + 16;
  v13 = a2[3];
  v8[3] = v13;
  if (v13)
  {
    *(v11 + 16) = v12;
    a2[1] = v10;
    *v10 = 0;
    a2[3] = 0;
  }

  else
  {
    *(32 * v2 + 8) = v12;
  }

  *&v22 = v8 + 4;
  v14 = a1[1];
  v15 = v8 + *a1 - v14;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<unsigned long long,std::map<unsigned long long,unsigned long long>>>,std::pair<unsigned long long,std::map<unsigned long long,unsigned long long>>*>(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  std::__split_buffer<std::pair<unsigned long long,std::map<unsigned long long,unsigned long long>>>::~__split_buffer(&v20);
  return v19;
}

void sub_24D6E95AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<unsigned long long,std::map<unsigned long long,unsigned long long>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long long,std::map<unsigned long long,unsigned long long>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<unsigned long long,std::map<unsigned long long,unsigned long long>>>,std::pair<unsigned long long,std::map<unsigned long long,unsigned long long>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v17 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  if (a2 == a3)
  {
    v16 = 1;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = (a4 + v5);
      v7 = *(a2 + v5);
      v6[1] = *(a2 + v5 + 8);
      v8 = (a2 + v5 + 16);
      v9 = *v8;
      *v6 = v7;
      *(a4 + v5 + 16) = v9;
      v10 = a4 + v5 + 16;
      v11 = *(a2 + v5 + 24);
      v6[3] = v11;
      if (v11)
      {
        *(v9 + 16) = v10;
        *(a2 + v5 + 8) = v8;
        *v8 = 0;
        *(a2 + v5 + 24) = 0;
      }

      else
      {
        v6[1] = v10;
      }

      v5 += 32;
    }

    while (a2 + v5 != a3);
    v18 = a4 + v5;
    v16 = 1;
    if (a2 != a3)
    {
      v12 = a2 + 8;
      do
      {
        std::__tree<BufferEntry>::destroy(v12, *(v12 + 8));
        v13 = v12 + 24;
        v12 += 32;
      }

      while (v13 != a3);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<unsigned long long,std::map<unsigned long long,unsigned long long>>>,std::pair<unsigned long long,std::map<unsigned long long,unsigned long long>>*>>::~__exception_guard_exceptions[abi:ne200100](v15);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<unsigned long long,std::map<unsigned long long,unsigned long long>>>,std::pair<unsigned long long,std::map<unsigned long long,unsigned long long>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<unsigned long long,std::map<unsigned long long,unsigned long long>>>,std::pair<unsigned long long,std::map<unsigned long long,unsigned long long>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<unsigned long long,std::map<unsigned long long,unsigned long long>>>,std::pair<unsigned long long,std::map<unsigned long long,unsigned long long>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 32;
      std::__tree<BufferEntry>::destroy(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **std::__split_buffer<std::pair<unsigned long long,std::map<unsigned long long,unsigned long long>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::pair<unsigned long long,std::map<unsigned long long,unsigned long long>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<unsigned long long,std::map<unsigned long long,unsigned long long>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__tree<BufferEntry>::destroy(i - 24, *(i - 16));
  }
}

void std::vector<std::vector<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<std::vector<std::vector<GPUTools::MTL::Utils::DYMTLIndirectArgumentBufferInfo>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::vector<GPUTools::MTL::Utils::DYMTLIndirectArgumentBufferInfo>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::__tree<std::__value_type<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::vector<DYMTLReplayerIAB>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<DYMTLReplayerIAB>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_24D6EA458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  _Block_object_dispose((v15 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_24D6EA844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  _Block_object_dispose((v15 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_24D6EAC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  _Block_object_dispose((v15 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_24D6EB01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  _Block_object_dispose((v15 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_24D6EBF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  _Block_object_dispose(&STACK[0x218], 8);
  std::__tree<BufferEntry>::destroy(&STACK[0x248], STACK[0x250]);

  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__2(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

void sub_24D6ED040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39)
{
  _Block_object_dispose(&a32, 8);
  std::__tree<BufferEntry>::destroy(&a38, a39);

  _Unwind_Resume(a1);
}

void sub_24D6ED678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24D6EF574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  dy_defer::~dy_defer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<DYMTLOriginalProcessBuffer>::__init_with_size[abi:ne200100]<DYMTLOriginalProcessBuffer*,DYMTLOriginalProcessBuffer*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<DYMTLOriginalProcessBuffer>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24D6EF730(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<DYMTLOriginalProcessBuffer>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>>(a1, a2);
  }

  std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
}

void dy_defer::~dy_defer(dy_defer *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2);

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this);
}

void *std::__tree<std::__value_type<MTLTextureType,objc_object  {objcproto10MTLTexture}* {__strong}>,std::__map_value_compare<MTLTextureType,objc_object  {objcproto10MTLTexture}* {__strong},std::less<MTLTextureType>,true>,std::allocator<objc_object  {objcproto10MTLTexture}* {__strong}>>::__emplace_unique_key_args<MTLTextureType,std::piecewise_construct_t const&,std::tuple<MTLTextureType const&>,std::piecewise_construct_t const&<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<MTLTextureType,objc_object  {objcproto10MTLTexture}* {__strong}>,void *>,std::__tree_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__tree<std::__value_type<unsigned long,DYMTLBoundSamplerInfo>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,DYMTLBoundSamplerInfo>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,DYMTLBoundSamplerInfo>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void *std::__tree<std::__value_type<objc_object  {objcproto15MTLSamplerState}* {__strong},unsigned long long>,std::__map_value_compare<objc_object  {objcproto15MTLSamplerState}*,objc_object  {objcproto15MTLSamplerState}* {__strong},std::less<objc_object  {objcproto15MTLSamplerState}*>,true>,std::allocator<objc_object  {objcproto15MTLSamplerState}* {__strong}>>::__emplace_unique_key_args<objc_object  {objcproto15MTLSamplerState}*,std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto15MTLSamplerState} const {__strong}&>,std::piecewise_construct_t const&<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<objc_object  {objcproto15MTLSamplerState}* {__strong},unsigned long long>,void *>,std::__tree_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong}>,std::__unordered_map_hasher<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong},std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto9MTLBuffer}* {__strong}>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::piecewise_construct_t const&<>>(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_24D6EFD80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<objc_object  {objcproto15MTLSamplerState}* {__strong},unsigned long long>,std::__map_value_compare<objc_object  {objcproto15MTLSamplerState}*,objc_object  {objcproto15MTLSamplerState}* {__strong},std::less<objc_object  {objcproto15MTLSamplerState}*>,true>,std::allocator<objc_object  {objcproto15MTLSamplerState}* {__strong}>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<objc_object  {objcproto15MTLSamplerState}* {__strong},unsigned long long>,std::__map_value_compare<objc_object  {objcproto15MTLSamplerState}*,objc_object  {objcproto15MTLSamplerState}* {__strong},std::less<objc_object  {objcproto15MTLSamplerState}*>,true>,std::allocator<objc_object  {objcproto15MTLSamplerState}* {__strong}>>::destroy(a1, *a2);
    std::__tree<std::__value_type<objc_object  {objcproto15MTLSamplerState}* {__strong},unsigned long long>,std::__map_value_compare<objc_object  {objcproto15MTLSamplerState}*,objc_object  {objcproto15MTLSamplerState}* {__strong},std::less<objc_object  {objcproto15MTLSamplerState}*>,true>,std::allocator<objc_object  {objcproto15MTLSamplerState}* {__strong}>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<MTLTextureType,objc_object  {objcproto10MTLTexture}* {__strong}>,std::__map_value_compare<MTLTextureType,objc_object  {objcproto10MTLTexture}* {__strong},std::less<MTLTextureType>,true>,std::allocator<objc_object  {objcproto10MTLTexture}* {__strong}>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<MTLTextureType,objc_object  {objcproto10MTLTexture}* {__strong}>,std::__map_value_compare<MTLTextureType,objc_object  {objcproto10MTLTexture}* {__strong},std::less<MTLTextureType>,true>,std::allocator<objc_object  {objcproto10MTLTexture}* {__strong}>>::destroy(a1, *a2);
    std::__tree<std::__value_type<MTLTextureType,objc_object  {objcproto10MTLTexture}* {__strong}>,std::__map_value_compare<MTLTextureType,objc_object  {objcproto10MTLTexture}* {__strong},std::less<MTLTextureType>,true>,std::allocator<objc_object  {objcproto10MTLTexture}* {__strong}>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeModules(uint64_t a1)
{
  v1 = 0u;
  v2 = 0u;
  v3 = 1065353216;
  ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeModules(a1);
}

{
  v5[140] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 8);
  std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::destroy(a1, *(a1 + 8));
  *a1 = v2;
  *(a1 + 16) = 0;
  *v2 = 0;
  *&v3 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeThreadTracePoint;
  *(&v3 + 1) = 0;
  v4 = a1;
  std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>::pair[abi:ne200100]<char const(&)[24],std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&>,0>(v5, "tracepoint_thread_begin", &v3);
}

void sub_24D6F0968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(a10 + 8) = v12;
    operator delete(v12);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>>>::~__hash_table(&STACK[0x290]);
  _Unwind_Resume(a1);
}

unint64_t *ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeThreadTracePoint(ShaderDebugger::Metadata::MDSerializer *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(*a2 - 8 * *(*a2 + 8) + 16) + 128);
  v5 = *(v4 + 32);
  if (v5 > 0x40)
  {
    v6 = **(v4 + 24);
  }

  else
  {
    v6 = (*(v4 + 24) << -v5) >> -v5;
  }

  v7 = *(a2 + 4);
  ShaderDebugger::Metadata::MDSerializerLLVM3XXX::extractTracePointLocation(a1, *a2);
  v8 = *(*(v3 - 8 * *(v3 + 8) + 32) + 128);
  v9 = *(v8 + 32);
  if (v9 > 0x40)
  {
    LODWORD(v8) = **(v8 + 24);
  }

  else
  {
    v8 = (*(v8 + 24) << -v9) >> -v9;
  }

  return ShaderDebugger::Metadata::MDSerializer::serializeThreadTracepoint(a1, v3, v6 & 0xFFFFFF | (v7 << 24), v8);
}

uint64_t ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeFunctionBeginTracePoint(uint64_t a1, _DWORD *a2)
{
  v3 = *a2;
  v4 = *a2 - 8 * *(*a2 + 8);
  v5 = *(*(v4 + 16) + 128);
  v6 = *(v5 + 32);
  if (v6 > 0x40)
  {
    v7 = **(v5 + 24);
  }

  else
  {
    v7 = (*(v5 + 24) << -v6) >> -v6;
  }

  v8 = v7 & 0xFFFFFF | (a2[4] << 24);
  v9 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeSubprogram(a1, *(v4 + 32));

  return ShaderDebugger::Metadata::MDSerializer::serializeFunctionTracepoint(a1, v3, v8, 1uLL, v9, -1, -1);
}

uint64_t ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeFunctionEndTracePoint(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(*a2 - 8 * *(*a2 + 8) + 16) + 128);
  v5 = *(v4 + 32);
  if (v5 > 0x40)
  {
    v6 = **(v4 + 24);
  }

  else
  {
    v6 = (*(v4 + 24) << -v5) >> -v5;
  }

  v7 = v6 & 0xFFFFFF | (*(a2 + 4) << 24);
  TracePointLocation = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::extractTracePointLocation(a1, *a2);
  v9 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeSubprogram(a1, *(v3 - 8 * *(v3 + 8) + 32));

  return ShaderDebugger::Metadata::MDSerializer::serializeFunctionTracepoint(a1, v3, v7, 2uLL, v9, TracePointLocation, -1);
}

uint64_t ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeFunctionCallTracePoint(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(*a2 - 8 * *(*a2 + 8) + 16) + 128);
  v5 = *(v4 + 32);
  if (v5 > 0x40)
  {
    v6 = **(v4 + 24);
  }

  else
  {
    v6 = (*(v4 + 24) << -v5) >> -v5;
  }

  v7 = v6 & 0xFFFFFF | (*(a2 + 4) << 24);
  result = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::extractTracePointLocation(a1, *a2);
  v9 = result;
  v10 = *(v3 - 8 * *(v3 + 8) + 32);
  if (v10)
  {
    if (*v10)
    {
      if (*v10 == 17)
      {
        v11 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeSubprogram(a1, v10);

        return ShaderDebugger::Metadata::MDSerializer::serializeFunctionTracepoint(a1, v3, v7, 0, v11, v9, -1);
      }

      return result;
    }

    v15[0] = llvm::MDString::getString(v10);
    v15[1] = v13;
    llvm::StringRef::str(v15, __p);
    v12 = ShaderDebugger::Metadata::MDSerializer::serializeSubprogram(a1, -1, __p, v9);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "__gt_unnamed_function_call__");
    v12 = ShaderDebugger::Metadata::MDSerializer::serializeSubprogram(a1, -1, __p, v9);
  }

  v14 = v12;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  return ShaderDebugger::Metadata::MDSerializer::serializeFunctionTracepoint(a1, v3, v7, 0, v14, v9, -1);
}

void sub_24D6F0E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeVariableTracePoint(ShaderDebugger::Metadata::MDSerializer *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *a2 - 8 * *(*a2 + 8);
  v5 = *(*(v4 + 16) + 128);
  v6 = *(v5 + 32);
  if (v6 > 0x40)
  {
    v7 = **(v5 + 24);
  }

  else
  {
    v7 = (*(v5 + 24) << -v6) >> -v6;
  }

  v8 = *(*(v4 + 40) + 128);
  v9 = *(v8 + 32);
  if (v9 > 0x40)
  {
    v10 = **(v8 + 24);
  }

  else
  {
    v10 = (*(v8 + 24) << -v9) >> -v9;
  }

  v11 = *(a2 + 16);
  v12 = *(v4 + 32);
  v13 = *v12;
  if (*v12)
  {
    if (v13 == 24)
    {
      v21 = (v12 - *(v12 + 2))[3];
      v82[0] = 0;
      v82[1] = 0;
      v81 = v82;
      v22 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeType(a1, v21, &v81);
      std::__tree<BufferEntry>::destroy(&v81, v82[0]);
      Filename = llvm::DIVariable::getFilename(v12);
      v89 = v23;
      llvm::StringRef::str(&Filename, &v90);
      Directory = llvm::DIVariable::getDirectory(v12);
      v84 = v24;
      llvm::StringRef::str(&Directory, &__p);
      v25 = ShaderDebugger::Metadata::MDSerializer::serializeLocation(a1, v12 + 1, &v90, &__p, *(v12 + 6), -1);
      if (v87 < 0)
      {
        operator delete(__p);
      }

      if (v92 < 0)
      {
        operator delete(v90);
      }

      String = (v12 - *(v12 + 2))[1];
      if (String)
      {
        String = llvm::MDString::getString(String);
      }

      else
      {
        v27 = 0;
      }

      __p = String;
      v86 = v27;
      llvm::StringRef::str(&__p, &v90);
      v64 = ShaderDebugger::Metadata::MDSerializer::serializeGlobalVariable(a1, v12, &v90, v22, v25);
      goto LABEL_87;
    }

    if (v13 == 25)
    {
      v14 = (v12 - *(v12 + 2))[3];
      v94[0] = 0;
      v94[1] = 0;
      v93 = v94;
      v15 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeType(a1, v14, &v93);
      std::__tree<BufferEntry>::destroy(&v93, v94[0]);
      Filename = llvm::DIVariable::getFilename(v12);
      v89 = v16;
      llvm::StringRef::str(&Filename, &v90);
      Directory = llvm::DIVariable::getDirectory(v12);
      v84 = v17;
      llvm::StringRef::str(&Directory, &__p);
      v18 = ShaderDebugger::Metadata::MDSerializer::serializeLocation(a1, v12 + 1, &v90, &__p, *(v12 + 6), -1);
      if (v87 < 0)
      {
        operator delete(__p);
      }

      if (v92 < 0)
      {
        operator delete(v90);
      }

      v19 = (v12 - *(v12 + 2))[1];
      if (v19)
      {
        v19 = llvm::MDString::getString(v19);
      }

      else
      {
        v20 = 0;
      }

      __p = v19;
      v86 = v20;
      llvm::StringRef::str(&__p, &v90);
      v64 = ShaderDebugger::Metadata::MDSerializer::serializeLocalVariable(a1, v12, &v90, v15, v18, *(v12 + 16) != 0);
      goto LABEL_87;
    }

LABEL_82:
    v63 = -1;
    return ShaderDebugger::Metadata::MDSerializer::serializeVariableTracepoint(a1, v3, v7 & 0xFFFFFF | (v11 << 24), v63, v10);
  }

  v28 = *(a2 + 8);
  v29 = llvm::MDString::getString(*(v4 + 32));
  if (v30 < 0xD)
  {
    goto LABEL_82;
  }

  v31 = v29;
  if (*v29 != 0x765F6E7275746572 || *(v29 + 5) != 0x2865756C61765F6ELL)
  {
    goto LABEL_82;
  }

  v33 = v30;
  if (*(v29 + v30 - 1) != 41)
  {
    goto LABEL_82;
  }

  v72 = v28;
  std::string::basic_string[abi:ne200100]<0>(&v90, "return_value(");
  v34 = v91;
  if ((v92 & 0x80u) == 0)
  {
    v34 = v92;
  }

  v35 = v33 - 1;
  if (v33 < v34)
  {
    v34 = v33;
  }

  v77 = v34;
  v78 = v33 - 1;
  v36 = v35 >= v34;
  v37 = v35 - v34;
  if (v36)
  {
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  if ((v92 & 0x8000000000000000) != 0)
  {
    operator delete(v90);
  }

  v39 = *(v3 - 8 * *(v3 + 8) + 24);
  if (v39)
  {
    if (*v39 == 5)
    {
      Subprogram = llvm::DILocalScope::getSubprogram(*(v39 - 8 * *(v39 + 8)));
      if (Subprogram)
      {
LABEL_91:
        v66 = *(Subprogram - 8 * *(Subprogram + 8) + 32);
        if (v66)
        {
          v67 = *(v66 - 8 * *(v66 + 8) + 24);
          if (v67)
          {
            v68 = *(v67 + 8);
            if (v68)
            {
              v69 = *(v67 - 8 * v68);
              if (v69)
              {
                v80[0] = 0;
                v80[1] = 0;
                v79 = v80;
                v70 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeType(a1, v69, &v79);
                std::__tree<BufferEntry>::destroy(&v79, v80[0]);
                goto LABEL_97;
              }
            }
          }
        }

LABEL_96:
        v70 = -1;
        goto LABEL_97;
      }
    }
  }

  v41 = *(v72 + 88);
  if (!v41)
  {
    goto LABEL_96;
  }

  v74 = v31;
  __n = v38;
  v73 = v7;
  v42 = *(v72 + 80);
  v43 = 8 * v41;
  v76 = v10;
  do
  {
    Subprogram = *v42;
    v44 = *(*v42 - 8 * *(*v42 + 8) + 24);
    if (v44)
    {
      v44 = llvm::MDString::getString(v44);
    }

    else
    {
      v45 = 0;
    }

    __p = v44;
    v86 = v45;
    llvm::StringRef::str(&__p, &v90);
    v46 = v92;
    v47 = v92;
    v48 = v90;
    if ((v92 & 0x80u) != 0)
    {
      v46 = v91;
    }

    v49 = v46 == __n;
    if (v46 == __n && v78 > v77)
    {
      if ((v92 & 0x80u) == 0)
      {
        v51 = &v90;
      }

      else
      {
        v51 = v90;
      }

      v49 = memcmp(v51, v74 + v77, __n) == 0;
    }

    if (v47 < 0)
    {
      operator delete(v48);
    }

    if (v49)
    {
LABEL_90:
      LODWORD(v7) = v73;
      LODWORD(v10) = v76;
      goto LABEL_91;
    }

    ++v42;
    v43 -= 8;
    LODWORD(v10) = v76;
  }

  while (v43);
  v52 = *(v72 + 88);
  if (v52)
  {
    v53 = *(v72 + 80);
    v54 = 8 * v52;
    while (1)
    {
      Subprogram = *v53;
      v55 = *(*v53 - 8 * *(*v53 + 8) + 16);
      if (v55)
      {
        v55 = llvm::MDString::getString(v55);
      }

      else
      {
        v56 = 0;
      }

      __p = v55;
      v86 = v56;
      llvm::StringRef::str(&__p, &v90);
      v57 = v92;
      v58 = v92;
      v59 = v90;
      if ((v92 & 0x80u) != 0)
      {
        v57 = v91;
      }

      v60 = v57 == __n;
      if (v57 == __n && v78 > v77)
      {
        if ((v92 & 0x80u) == 0)
        {
          v62 = &v90;
        }

        else
        {
          v62 = v90;
        }

        v60 = memcmp(v62, v74 + v77, __n) == 0;
        if (v58 < 0)
        {
LABEL_79:
          operator delete(v59);
          if (v60)
          {
            goto LABEL_90;
          }

          goto LABEL_80;
        }
      }

      else if (v92 < 0)
      {
        goto LABEL_79;
      }

      if (v60)
      {
        goto LABEL_90;
      }

LABEL_80:
      ++v53;
      v54 -= 8;
      LODWORD(v7) = v73;
      LODWORD(v10) = v76;
      if (!v54)
      {
        goto LABEL_96;
      }
    }
  }

  v70 = -1;
  LODWORD(v7) = v73;
LABEL_97:
  v71 = *(v4 + 32);
  std::string::basic_string[abi:ne200100]<0>(&v90, "ret");
  v64 = ShaderDebugger::Metadata::MDSerializer::serializeLocalVariable(a1, v71, &v90, v70, -1, 0);
LABEL_87:
  v63 = v64;
  if (v92 < 0)
  {
    operator delete(v90);
  }

  return ShaderDebugger::Metadata::MDSerializer::serializeVariableTracepoint(a1, v3, v7 & 0xFFFFFF | (v11 << 24), v63, v10);
}

uint64_t ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeDataTracePoint(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(*a2 - 8 * *(*a2 + 8) + 16) + 128);
  v5 = *(v4 + 32);
  if (v5 > 0x40)
  {
    v6 = **(v4 + 24);
  }

  else
  {
    v6 = (*(v4 + 24) << -v5) >> -v5;
  }

  v7 = *(a2 + 4);
  TracePointLocation = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::extractTracePointLocation(a1, *a2);
  v9 = v3 - 8 * *(v3 + 8);
  v10 = *(*(v9 + 32) + 128);
  v11 = *(v10 + 32);
  if (v11 > 0x40)
  {
    v12 = **(v10 + 24);
  }

  else
  {
    v12 = (*(v10 + 24) << -v11) >> -v11;
  }

  v13 = *(*(v9 + 40) + 128);
  v14 = *(v13 + 32);
  if (v14 > 0x40)
  {
    v15 = **(v13 + 24);
  }

  else
  {
    v15 = (*(v13 + 24) << -v14) >> -v14;
  }

  return ShaderDebugger::Metadata::MDSerializer::serializeDataTracepoint(a1, v3, v6 & 0xFFFFFF | (v7 << 24), TracePointLocation, v12, v15);
}

unint64_t *ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeDataValueTracePoint(ShaderDebugger::Metadata::MDSerializer *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(*a2 - 8 * *(*a2 + 8) + 16) + 128);
  v5 = *(v4 + 32);
  if (v5 > 0x40)
  {
    v6 = **(v4 + 24);
  }

  else
  {
    v6 = (*(v4 + 24) << -v5) >> -v5;
  }

  v7 = *(a2 + 4);
  TracePointLocation = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::extractTracePointLocation(a1, *a2);
  v9 = *(v3 - 8 * *(v3 + 8) + 32);
  v10 = *v9;
  if (v10 == 24)
  {
    v18 = (v9 - *(v9 + 2))[3];
    v38[0] = 0;
    v38[1] = 0;
    v37 = v38;
    v19 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeType(a1, v18, &v37);
    std::__tree<BufferEntry>::destroy(&v37, v38[0]);
    Filename = llvm::DIVariable::getFilename(v9);
    v45 = v20;
    llvm::StringRef::str(&Filename, v46);
    Directory = llvm::DIVariable::getDirectory(v9);
    v40 = v21;
    llvm::StringRef::str(&Directory, &__p);
    v22 = ShaderDebugger::Metadata::MDSerializer::serializeLocation(a1, v9 + 1, v46, &__p, *(v9 + 6), -1);
    if (v43 < 0)
    {
      operator delete(__p);
    }

    if (v48 < 0)
    {
      operator delete(v46[0]);
    }

    String = (v9 - *(v9 + 2))[1];
    if (String)
    {
      String = llvm::MDString::getString(String);
    }

    else
    {
      v24 = 0;
    }

    __p = String;
    v42 = v24;
    llvm::StringRef::str(&__p, v46);
    v26 = ShaderDebugger::Metadata::MDSerializer::serializeGlobalVariable(a1, v9, v46, v19, v22);
  }

  else
  {
    if (v10 != 25)
    {
      v25 = -1;
      goto LABEL_25;
    }

    v11 = (v9 - *(v9 + 2))[3];
    v50[0] = 0;
    v50[1] = 0;
    v49 = v50;
    v12 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeType(a1, v11, &v49);
    std::__tree<BufferEntry>::destroy(&v49, v50[0]);
    Filename = llvm::DIVariable::getFilename(v9);
    v45 = v13;
    llvm::StringRef::str(&Filename, v46);
    Directory = llvm::DIVariable::getDirectory(v9);
    v40 = v14;
    llvm::StringRef::str(&Directory, &__p);
    v15 = ShaderDebugger::Metadata::MDSerializer::serializeLocation(a1, v9 + 1, v46, &__p, *(v9 + 6), -1);
    if (v43 < 0)
    {
      operator delete(__p);
    }

    if (v48 < 0)
    {
      operator delete(v46[0]);
    }

    v16 = (v9 - *(v9 + 2))[1];
    if (v16)
    {
      v16 = llvm::MDString::getString(v16);
    }

    else
    {
      v17 = 0;
    }

    __p = v16;
    v42 = v17;
    llvm::StringRef::str(&__p, v46);
    v26 = ShaderDebugger::Metadata::MDSerializer::serializeLocalVariable(a1, v9, v46, v12, v15, *(v9 + 16) != 0);
  }

  v25 = v26;
  if (v48 < 0)
  {
    operator delete(v46[0]);
  }

LABEL_25:
  v27 = *(v3 + 8);
  v28 = *(v3 - 8 * v27 + 40);
  if (*v28 == 6)
  {
    v29 = *(v28 + 24);
    v30 = *(v28 + 32);
    llvm::DIExpression::getFragmentInfo();
    if (v47)
    {
      v31 = v46[1];
    }

    else
    {
      v31 = 0;
    }

    if (v47)
    {
      v32 = v46[0];
    }

    else
    {
      v32 = 0;
    }

    v27 = *(v3 + 8);
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v33 = *(*(v3 - 8 * v27 + 48) + 128);
  v34 = *(v33 + 32);
  if (v34 > 0x40)
  {
    v35 = **(v33 + 24);
  }

  else
  {
    v35 = (*(v33 + 24) << -v34) >> -v34;
  }

  return ShaderDebugger::Metadata::MDSerializer::serializeDataValueTracepoint(a1, v3, v6 & 0xFFFFFF | (v7 << 24), TracePointLocation, v25, v35, v32, v31);
}

void sub_24D6F1970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeWaypointTracePoint(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v5 = *a2;
  v6 = *(*(*a2 - 8 * *(*a2 + 8) + 16) + 128);
  v7 = *(v6 + 32);
  if (v7 > 0x40)
  {
    v8 = **(v6 + 24);
  }

  else
  {
    v8 = (*(v6 + 24) << -v7) >> -v7;
  }

  v9 = v8 & 0xFFFFFF | (*(a2 + 4) << 24);
  TracePointLocation = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::extractTracePointLocation(a1, *a2);

  return ShaderDebugger::Metadata::MDSerializer::serializeWaypointTracepoint(a1, v5, v9, a3, TracePointLocation);
}

uint64_t std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>::~pair(uint64_t a1)
{
  std::__function::__value_func<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeModules(std::vector<std::unique_ptr<llvm::Module>> const&,std::unordered_map<unsigned int,std::string> const&,unsigned long long *)::$_0::operator()(int **a1, unsigned int *a2)
{
  if (a2)
  {
    String = llvm::MDString::getString(*&a2[-2 * a2[2]]);
    v14 = v4;
    llvm::StringRef::str(&String, __p);
    v5 = **a1;
    v6 = *&a2[-2 * a2[2] + 2];
    if (v6 && *v6 == 1)
    {
      v7 = *(v6 + 128);
      if (v7 && *(v7 + 16) == 3)
      {
        v9 = *(v7 - 32);
        v10 = (v9 + 24);
        if (*(v9 + 32) >= 0x41u)
        {
          v10 = *v10;
        }

        v5 = *v10;
      }
    }

    v11 = std::__hash_table<std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>>>::find<std::string>(a1[1], __p);
    if (v11)
    {
      v12 = a1[2];
      String = a2;
      v14 = v12;
      v15 = v5;
      v16 = 0;
      std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>::operator()((v11 + 5), &String);
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_24D6F1B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ShaderDebugger::Metadata::MDSerializerLLVM3XXX::extractTracePointLocation(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 8 * *(a2 + 8) + 24);
  if (!v2)
  {
    return -1;
  }

  v4 = *(v2 - 8 * *(v2 + 8));
  if (*v4 == 15 || (v4 = *(v4 - 8 * *(v4 + 8))) != 0)
  {
    String = *(v4 - 8 * *(v4 + 8));
    if (String)
    {
      String = llvm::MDString::getString(String);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    String = "";
  }

  v15[0] = String;
  v15[1] = v6;
  llvm::StringRef::str(v15, v16);
  v8 = *(v2 - 8 * *(v2 + 8));
  if (*v8 == 15 || (v8 = *(v8 - 8 * *(v8 + 8))) != 0)
  {
    v9 = *(v8 - 8 * *(v8 + 8) + 8);
    if (v9)
    {
      v9 = llvm::MDString::getString(v9);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v9 = "";
  }

  v12[0] = v9;
  v12[1] = v10;
  llvm::StringRef::str(v12, __p);
  v7 = ShaderDebugger::Metadata::MDSerializer::serializeLocation(a1, v2, v16, __p, *(v2 + 4), *(v2 + 2));
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  return v7;
}

void sub_24D6F1D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 - 17) < 0)
  {
    operator delete(*(v16 - 40));
  }

  _Unwind_Resume(exception_object);
}

const void **llvm::StringRef::str@<X0>(const void **this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  if (*this)
  {
    v4 = this[1];
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v4;
    if (v4)
    {
      this = memmove(a2, v3, v4);
    }

    *(a2 + v4) = 0;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return this;
}

uint64_t ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeSubprogram(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 1;
  v5 = a2;
  if (*a2 == 15 || (v5 = *(a2 - 8 * *(a2 + 8))) != 0)
  {
    String = *(v5 - 8 * *(v5 + 8));
    if (String)
    {
      String = llvm::MDString::getString(String);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    String = "";
  }

  v19[0] = String;
  v19[1] = v7;
  llvm::StringRef::str(v19, v20);
  v8 = a2;
  if (*a2 == 15 || (v8 = *(a2 - 8 * *(a2 + 8))) != 0)
  {
    v9 = *(v8 - 8 * *(v8 + 8) + 8);
    if (v9)
    {
      v9 = llvm::MDString::getString(v9);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v9 = "";
  }

  v16[0] = v9;
  v16[1] = v10;
  llvm::StringRef::str(v16, __p);
  v11 = ShaderDebugger::Metadata::MDSerializer::serializeLocation(a1, v4, v20, __p, *(a2 + 24), -1);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  v12 = *(a2 - 8 * *(a2 + 8) + 16);
  if (v12)
  {
    v12 = llvm::MDString::getString(v12);
  }

  else
  {
    v13 = 0;
  }

  __p[0] = v12;
  __p[1] = v13;
  llvm::StringRef::str(__p, v20);
  v14 = ShaderDebugger::Metadata::MDSerializer::serializeSubprogram(a1, a2, v20, v11);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  return v14;
}

void sub_24D6F1F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeType(ShaderDebugger::Metadata::MDSerializer *a1, unint64_t a2, uint64_t a3)
{
  v23 = a2;
  v5 = *(a3 + 8);
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = a3 + 8;
  do
  {
    v8 = *(v5 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * v10);
  }

  while (v5);
  if (v7 != a3 + 8 && *(v7 + 32) <= a2)
  {
    v22 = 3;
    v24 = &v22;
    v17 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, &v22);
    return ShaderDebugger::Metadata::MDSerializer::getLinearMetadataId(a1, (v17 + 5), a2);
  }

  else
  {
LABEL_9:
    std::__tree<llvm::DIType *>::__emplace_unique_key_args<llvm::DIType *,llvm::DIType * const&>(a3, &v23);
    v22 = 3;
    v24 = &v22;
    v11 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, &v22);
    v12 = ShaderDebugger::Metadata::MDSerializer::reserveAndLinearizeMetadataId(a1, (v11 + 5), v23);
    v13 = v23;
    v14 = *v23;
    if (v14 > 0xC)
    {
      if (v14 == 13)
      {
        std::set<llvm::DIType *>::set[abi:ne200100](v20, a3);
        ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeCompositeType(a1, v13, v20);
        v15 = v20[1];
        v16 = v20;
        goto LABEL_19;
      }

      if (v14 == 14)
      {
        std::set<llvm::DIType *>::set[abi:ne200100](v19, a3);
        ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeSubroutineType(a1, v13, v19);
        v15 = v19[1];
        v16 = v19;
        goto LABEL_19;
      }
    }

    else if (v14 == 11)
    {
      ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeBasicType(a1, v23);
    }

    else if (v14 == 12)
    {
      std::set<llvm::DIType *>::set[abi:ne200100](v21, a3);
      ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeDerivedType(a1, v13, v21);
      v15 = v21[1];
      v16 = v21;
LABEL_19:
      std::__tree<BufferEntry>::destroy(v16, v15);
    }
  }

  return v12;
}

llvm::MDString *llvm::DIVariable::getFilename(llvm::DIVariable *this)
{
  v1 = (this - *(this + 2))[2];
  if (!v1)
  {
    return "";
  }

  result = *(v1 - 8 * *(v1 + 8));
  if (result)
  {
    return llvm::MDString::getString(result);
  }

  return result;
}

llvm::MDString *llvm::DIVariable::getDirectory(llvm::DIVariable *this)
{
  v1 = (this - *(this + 2))[2];
  if (!v1)
  {
    return "";
  }

  result = *(v1 - 8 * *(v1 + 8) + 8);
  if (result)
  {
    return llvm::MDString::getString(result);
  }

  return result;
}

uint64_t ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeBasicType(uint64_t a1, uint64_t a2)
{
  String = *(a2 - 8 * *(a2 + 8) + 16);
  if (String)
  {
    String = llvm::MDString::getString(String);
  }

  else
  {
    v5 = 0;
  }

  v14[0] = String;
  v14[1] = v5;
  llvm::StringRef::str(v14, __p);
  v6 = *(a2 + 28);
  v7 = *(a2 + 48);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  Tag = llvm::DINode::getTag(a2);
  LODWORD(v13) = *(a2 + 52);
  v11 = ShaderDebugger::Metadata::MDSerializer::serializeBasicType(a1, a2, __p, v6, v9, v7, v8, Tag, v13);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  return v11;
}

void sub_24D6F2308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeDerivedType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  v6 = *(a2 - 8 * v5 + 24);
  if (v6)
  {
    std::set<llvm::DIType *>::set[abi:ne200100](v24, a3);
    v7 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeType(a1, v6, v24);
    std::__tree<BufferEntry>::destroy(v24, v24[1]);
    v8 = -*(a2 + 8);
  }

  else
  {
    v8 = -v5;
    v7 = -1;
  }

  v9 = *(a2 + 52);
  if (v9 >= 9)
  {
    v10 = 100;
  }

  else
  {
    v10 = *(a2 + 52);
  }

  if ((v9 & 0x100000000) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 100;
  }

  String = *(a2 + 8 * v8 + 16);
  if (String)
  {
    String = llvm::MDString::getString(String);
  }

  else
  {
    v13 = 0;
  }

  v21[0] = String;
  v21[1] = v13;
  llvm::StringRef::str(v21, __p);
  v14 = *(a2 + 28);
  v15 = *(a2 + 48);
  v17 = *(a2 + 32);
  v16 = *(a2 + 40);
  Tag = llvm::DINode::getTag(a2);
  v19 = ShaderDebugger::Metadata::MDSerializer::serializeDerivedType(a1, a2, __p, v14, v17, v15, v16, Tag, v7, v11);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  return v19;
}

uint64_t ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeCompositeType(ShaderDebugger::Metadata::MDSerializer *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  v7 = *(a2 - 8 * v6 + 24);
  if (v7)
  {
    std::set<llvm::DIType *>::set[abi:ne200100](v41, a3);
    v8 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeType(a1, v7, v41);
    std::__tree<BufferEntry>::destroy(v41, v41[1]);
    v9 = -*(a2 + 8);
  }

  else
  {
    v9 = -v6;
    v8 = -1;
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  v10 = *(a2 + 8 * v9 + 32);
  if (v10)
  {
    v11 = (v10 - 8 * *(v10 + 8));
  }

  else
  {
    v11 = 0;
  }

  if (v11 != v10)
  {
    do
    {
      v12 = *v11;
      v13 = **v11;
      if ((v13 - 11) < 4 || v13 == 33)
      {
        std::set<llvm::DIType *>::set[abi:ne200100](v37, a3);
        v14 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeType(a1, v12, v37);
        std::__tree<BufferEntry>::destroy(v37, v37[1]);
        __p[0] = 3;
        __p[1] = v14;
        std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::push_back[abi:ne200100](&v38, __p);
      }

      else if (v13 == 9)
      {
        Count = llvm::DISubrange::getCount(*v11);
        v16 = Count & 0xFFFFFFFFFFFFFFF8;
        if ((Count & 6) != 0 || v16 == 0)
        {
          v18 = -1;
        }

        else
        {
          v19 = *(v16 + 32);
          if (v19 > 0x40)
          {
            v18 = **(v16 + 24);
          }

          else
          {
            v18 = (*(v16 + 24) << -v19) >> -v19;
          }
        }

        LowerBound = llvm::DISubrange::getLowerBound(v12);
        v21 = 0;
        if ((LowerBound & 6) == 0)
        {
          v22 = LowerBound & 0xFFFFFFFFFFFFFFF8;
          if ((LowerBound & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v23 = *(v22 + 32);
            if (v23 > 0x40)
            {
              v21 = **(v22 + 24);
            }

            else
            {
              v21 = (*(v22 + 24) << -v23) >> -v23;
            }
          }
        }

        v24 = ShaderDebugger::Metadata::MDSerializer::serializeSubrange(a1, v12, v21, v18);
        __p[0] = 4;
        __p[1] = v24;
        std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::push_back[abi:ne200100](&v38, __p);
      }

      ++v11;
    }

    while (v11 != v10);
    v9 = -*(a2 + 8);
  }

  String = *(a2 + 8 * v9 + 16);
  if (String)
  {
    String = llvm::MDString::getString(String);
  }

  else
  {
    v26 = 0;
  }

  v34[0] = String;
  v34[1] = v26;
  llvm::StringRef::str(v34, __p);
  v27 = *(a2 + 28);
  v28 = *(a2 + 48);
  v30 = *(a2 + 32);
  v29 = *(a2 + 40);
  Tag = llvm::DINode::getTag(a2);
  v32 = ShaderDebugger::Metadata::MDSerializer::serializeCompositeType(a1, a2, __p, v27, v30, v28, v29, Tag, v8, &v38);
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  return v32;
}

uint64_t ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeSubroutineType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v5 = *(a2 + 8);
  v6 = -v5;
  v7 = *(a2 - 8 * v5 + 24);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8 >= 1)
    {
      v10 = 0;
      v11 = -v8;
      v12 = v7;
      do
      {
        v13 = *(v12 - 8 * *(v7 + 8));
        if (v10 || v13)
        {
          std::set<llvm::DIType *>::set[abi:ne200100](v27, a3);
          v14 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeType(a1, v13, v27);
          std::__tree<BufferEntry>::destroy(v27, v27[1]);
          __p[0] = 3;
          __p[1] = v14;
          std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::push_back[abi:ne200100](&v28, __p);
        }

        else
        {
          *__p = xmmword_24D740D60;
          std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::push_back[abi:ne200100](&v28, __p);
        }

        --v10;
        v12 += 8;
      }

      while (v11 != v10);
      v6 = -*(a2 + 8);
    }
  }

  String = *(a2 + 8 * v6 + 16);
  if (String)
  {
    String = llvm::MDString::getString(String);
  }

  else
  {
    v16 = 0;
  }

  v24[0] = String;
  v24[1] = v16;
  llvm::StringRef::str(v24, __p);
  v17 = *(a2 + 28);
  v18 = *(a2 + 48);
  v20 = *(a2 + 32);
  v19 = *(a2 + 40);
  Tag = llvm::DINode::getTag(a2);
  v22 = ShaderDebugger::Metadata::MDSerializer::serializeSubroutineType(a1, a2, __p, v17, v20, v18, v19, Tag, &v28);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  return v22;
}

void sub_24D6F2928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>::pair[abi:ne200100]<char const(&)[24],std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&>,0>(_BYTE *a1, char *a2, __int128 *a3)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5 = *a3;
  v6 = *(a3 + 2);
  *(v4 + 6) = 0;
  operator new();
}

void sub_24D6F2A0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&>>,void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2860B2A68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&>>,void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}

void std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>::pair[abi:ne200100]<char const(&)[26],std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&>,0>(_BYTE *a1, char *a2, __int128 *a3)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5 = *a3;
  v6 = *(a3 + 2);
  *(v4 + 6) = 0;
  operator new();
}

void sub_24D6F2B98(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>::pair[abi:ne200100]<char const(&)[16],std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&>,0>(_BYTE *a1, char *a2, __int128 *a3)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5 = *a3;
  v6 = *(a3 + 2);
  *(v4 + 6) = 0;
  operator new();
}

void sub_24D6F2C44(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>::pair[abi:ne200100]<char const(&)[20],std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&>,0>(_BYTE *a1, char *a2, __int128 *a3)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5 = *a3;
  v6 = *(a3 + 2);
  *(v4 + 6) = 0;
  operator new();
}

void sub_24D6F2CF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>::pair[abi:ne200100]<char const(&)[22],std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&>,0>(_BYTE *a1, char *a2, __int128 *a3)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5 = *a3;
  v6 = *(a3 + 2);
  *(v4 + 6) = 0;
  operator new();
}

void sub_24D6F2D9C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>::pair[abi:ne200100]<char const(&)[26],std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType>,0>(_BYTE *a1, char *a2, __int128 *a3)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5 = *a3;
  v6 = a3[1];
  *(v4 + 6) = 0;
  operator new();
}

void sub_24D6F2E3C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType>,std::allocator<std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType>>,void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2860B2AB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType>,std::allocator<std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType>>,void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2, a1[4]);
}

void std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>::pair[abi:ne200100]<char const(&)[28],std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType>,0>(_BYTE *a1, char *a2, __int128 *a3)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5 = *a3;
  v6 = a3[1];
  *(v4 + 6) = 0;
  operator new();
}

void sub_24D6F2FC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>::pair[abi:ne200100]<char const(&)[25],std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType>,0>(_BYTE *a1, char *a2, __int128 *a3)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5 = *a3;
  v6 = a3[1];
  *(v4 + 6) = 0;
  operator new();
}

void sub_24D6F3064(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>::pair[abi:ne200100]<char const(&)[27],std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType>,0>(_BYTE *a1, char *a2, __int128 *a3)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5 = *a3;
  v6 = a3[1];
  *(v4 + 6) = 0;
  operator new();
}

void sub_24D6F3104(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>::pair[abi:ne200100]<char const(&)[24],std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType>,0>(_BYTE *a1, char *a2, __int128 *a3)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5 = *a3;
  v6 = a3[1];
  *(v4 + 6) = 0;
  operator new();
}

void sub_24D6F31A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>::pair[abi:ne200100]<char const(&)[20],std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType>,0>(_BYTE *a1, char *a2, __int128 *a3)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5 = *a3;
  v6 = a3[1];
  *(v4 + 6) = 0;
  operator new();
}

void sub_24D6F3244(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>::pair[abi:ne200100]<char const(&)[23],std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&,ShaderDebugger::Metadata::MDWaypointTracePoint::TracePointWaypointType>,0>(_BYTE *a1, char *a2, __int128 *a3)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5 = *a3;
  v6 = a3[1];
  *(v4 + 6) = 0;
  operator new();
}

void sub_24D6F32E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>>>::find<std::string>(void *a1, const void **a2)
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

void llvm::DebugInfoFinder::~DebugInfoFinder(llvm::DebugInfoFinder *this)
{
  v2 = *(this + 51);
  if (v2 != *(this + 50))
  {
    free(v2);
  }

  v3 = *(this + 40);
  if (v3 != this + 336)
  {
    free(v3);
  }

  v4 = *(this + 30);
  if (v4 != this + 256)
  {
    free(v4);
  }

  v5 = *(this + 20);
  if (v5 != this + 176)
  {
    free(v5);
  }

  v6 = *(this + 10);
  if (v6 != this + 96)
  {
    free(v6);
  }

  if (*this != (this + 16))
  {
    free(*this);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__deallocate_node(int a1, void **__p)
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

void std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::destroy(a1, a2[1]);
    v4 = a2[11];
    if (v4)
    {
      a2[12] = v4;
      operator delete(v4);
    }

    v5 = a2[8];
    if (v5)
    {
      operator delete(v5);
    }

    v6 = a2[5];
    if (v6)
    {
      a2[6] = v6;
      operator delete(v6);
    }

    operator delete(a2);
  }
}

uint64_t std::unordered_map<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>::unordered_map(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 56 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>> const&>(a1, a2);
      a2 += 7;
      v5 -= 56;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>>>::__construct_node_hash<std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>> const&>();
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

void sub_24D6F3938(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  std::__function::__value_func<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>::__value_func[abi:ne200100](&this[1], a2 + 24);
  return this;
}

void sub_24D6F3A70(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,0>(uint64_t a1)
{
  std::__function::__value_func<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::find<unsigned int>(void *a1, unsigned int *a2)
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

void *std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void *std::__tree<llvm::DIType *>::__emplace_unique_key_args<llvm::DIType *,llvm::DIType * const&>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void *std::set<llvm::DIType *>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<llvm::DIType *>::insert[abi:ne200100]<std::__tree_const_iterator<llvm::DIType *,std::__tree_node<llvm::DIType *,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<llvm::DIType *>::insert[abi:ne200100]<std::__tree_const_iterator<llvm::DIType *,std::__tree_node<llvm::DIType *,void *> *,long>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<llvm::DIType *>::__emplace_hint_unique_key_args<llvm::DIType *,llvm::DIType * const&>(v5, v5 + 1, v4 + 4);
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

uint64_t std::__tree<llvm::DIType *>::__emplace_hint_unique_key_args<llvm::DIType *,llvm::DIType * const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::__find_equal<unsigned long long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void sub_24D6F40BC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

DYMTLParallelRenderCommandEncoderStateTracker *DYMTLNewStatefulParallelRenderCommandEncoder(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 parallelRenderCommandEncoderWithDescriptor:v3];
  v5 = [[DYMTLParallelRenderCommandEncoderStateTracker alloc] initWithEncoder:v4 descriptor:v3];

  return v5;
}

{
  v3 = a1;
  v4 = a2;
  v5 = [[DYMTLParallelRenderCommandEncoderStateTracker alloc] initWithDevice:v3 descriptor:v4];

  return v5;
}

id GPUTools::MTL::MakeMTLCompileOptions(GPUTools::MTL *this, const void *a2)
{
  if (this)
  {
    v3 = objc_opt_new();
    v4 = *this;
    v12 = (this + 8);
    v6 = GPUTools::ReadDynamicBufferObject(&v12, v5);
    [v3 setPreprocessorMacros:v6];

    v7 = *v12;
    v12 += 2;
    [v3 setFastMathEnabled:v7 != 0];
    v8 = *v12;
    v12 += 2;
    [v3 setDebuggingEnabled:v8 != 0];
    if (v4 > 0xF)
    {
      v9 = v12;
      v10 = v12 + 2;
    }

    else
    {
      if (v4 < 6)
      {
        goto LABEL_8;
      }

      v9 = v12 + 6;
      v10 = v12 + 8;
    }

    v12 = v10;
    [v3 setLanguageVersion:*v9];
  }

  else
  {
    v3 = 0;
  }

LABEL_8:

  return v3;
}

id GPUTools::ReadDynamicBufferObject(GPUTools *this, const void **a2)
{
  *this += 8 + ((**this + 7) & 0xFFFFFFFFFFFFFFF8);
  v2 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
  v3 = MEMORY[0x277D0AFD8];
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v4 setWithObjects:{v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  v13 = 0;
  v11 = [v3 unarchivedObjectOfClasses:v10 fromData:v2 error:&v13];

  return v11;
}

id GPUTools::MTL::MakeMTLFunctionConstantValue(GPUTools::MTL *this, const void *a2)
{
  v3 = objc_opt_new();
  v6 = *(this + 1);
  v4 = this + 8;
  for (i = v6; i != -1; i = *v4)
  {
    v7 = &v4[(strlen(v4 + 8) & 0xFFFFFFFFFFFFFFF8) + 8];
    v4 = (v7 + 32);
    v8 = *(v7 + 24);
    if (v8)
    {
      [v3 setConstantValue:v7 + 32 type:*(v7 + 8) atIndex:i];
      v4 += (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    }
  }

  return v3;
}

id GPUTools::MTL::MakeMTLTextureDescriptor(GPUTools::MTL *this, const void *a2)
{
  v3 = objc_opt_new();
  v4 = *this;
  [v3 setTextureType:*(this + 1)];
  [v3 setPixelFormat:*(this + 2)];
  [v3 setWidth:*(this + 3)];
  [v3 setHeight:*(this + 4)];
  [v3 setDepth:*(this + 5)];
  [v3 setMipmapLevelCount:*(this + 6)];
  [v3 setSampleCount:*(this + 7)];
  [v3 setArrayLength:*(this + 8)];
  v5 = 72;
  if (v4 < 3)
  {
    v5 = 80;
  }

  v6 = this + v5;
  [v3 setFramebufferOnly:*v6 != 0];
  [v3 setIsDrawable:*(v6 + 2) != 0];
  if (v4)
  {
    [v3 setUsage:*(v6 + 2)];
    v7 = v6 + 24;
  }

  else
  {
    v7 = v6 + 16;
  }

  [v3 setRotation:*v7];
  if (v4 >= 3)
  {
    if (*(v7 + 1) != 15)
    {
      [v3 setStorageMode:?];
    }

    [v3 setCpuCacheMode:*(v7 + 2)];
    if (v4 >= 0x15)
    {
      if (objc_opt_respondsToSelector())
      {
        [v3 setAllowGPUOptimizedContents:*(v7 + 3) != 0];
      }

      if (objc_opt_respondsToSelector())
      {
        [v3 setCompressionMode:*(v7 + 4)];
      }

      if (v4 != 21)
      {
        v8 = *(v7 + 5);
        v9 = *(v7 + 12);
        if (objc_opt_respondsToSelector())
        {
          [v3 setForceResourceIndex:v9 != 0];
          [v3 setResourceIndex:v8];
        }

        if (v4 >= 0x23)
        {
          v10 = v7[56];
          v12 = *(v7 + 8);
          v11 = *(v7 + 9);
          v13 = *(v7 + 10);
          if (objc_opt_respondsToSelector())
          {
            [v3 setSwizzle:v10 & 0xFFFFFFFF000000FFLL | (v12 << 8) | (v11 << 16) & 0xFFFFFFFF00FFFFFFLL | (v13 << 24)];
          }

          if (v4 >= 0x27 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v3 setSwizzleKey:*(v7 + 22)];
          }
        }
      }
    }
  }

  return v3;
}

id GPUTools::MTL::MakeMTLRenderPassDescriptor(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x277CD6F48] renderPassDescriptor];
  v5 = *a1;
  v45 = *(a1 + 8);
  __p[0] = &v45;
  [v4 setVisibilityResultBuffer:{std::__hash_table<std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::__unordered_map_hasher<unsigned long long, std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::hash<unsigned long long>, std::equal_to<unsigned long long>, true>, std::__unordered_map_equal<unsigned long long, std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::equal_to<unsigned long long>, std::hash<unsigned long long>, true>, std::allocator<std::__hash_value_type<unsigned long long, objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long, std::piecewise_construct_t const&, std::tuple<unsigned long long &&>, std::tuple<>>(a2, &v45)[3]}];
  v46 = (a1 + 24);
  for (i = *(a1 + 16); i != -1; v46 = (v10 + 1))
  {
    v7 = [v4 colorAttachments];
    v8 = [v7 objectAtIndexedSubscript:i];
    GPUTools::MTL::MakeMTLRenderPassAttachmentDescriptor(&v46, v8, a2, v5);
    v9 = v46;
    [v8 setClearColor:{*v46, v46[1], v46[2], v46[3]}];
    v10 = v9 + 4;
    if (v5 >= 0x27 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v8 setYInvert:*(v9 + 4) != 0];
      v10 = v9 + 5;
    }

    i = *v10;
  }

  v11 = [v4 depthAttachment];
  GPUTools::MTL::MakeMTLRenderPassAttachmentDescriptor(&v46, v11, a2, v5);
  v12 = v46;
  [v11 setClearDepth:*v46];
  v13 = v12 + 4;
  v46 = v12 + 4;
  if (v5 < 0x27)
  {

    if (v5 < 5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v11 setYInvert:*(v12 + 4) != 0];
      v13 = v12 + 5;
    }
  }

  v14 = [v4 depthAttachment];
  v15 = objc_opt_respondsToSelector();

  v46 = (v13 + 1);
  if (v15)
  {
    v16 = *v13;
    v17 = [v4 depthAttachment];
    [v17 setDepthResolveFilter:v16];
  }

LABEL_13:
  v18 = [v4 stencilAttachment];
  GPUTools::MTL::MakeMTLRenderPassAttachmentDescriptor(&v46, v18, a2, v5);
  v19 = v46;
  [v18 setClearStencil:*v46];
  v20 = v19 + 4;
  if (v5 < 0x27)
  {

    v21 = v19 + 4;
    if (v5 < 7)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v18 setYInvert:*(v19 + 4) != 0];
      v20 = v19 + 5;
    }
  }

  v21 = v20 + 1;
  v22 = *v20;
  if ((objc_opt_respondsToSelector() & (v22 != -1)) == 1)
  {
    [v4 setRenderTargetArrayLength:v22];
  }

  if (v5 >= 0xD)
  {
    v24 = *(v20 + 1);
    v23 = *(v20 + 2);
    v26 = *(v20 + 3);
    v25 = *(v20 + 4);
    v27 = *(v20 + 5);
    v43 = *(v20 + 6);
    v28 = *(v20 + 7);
    if ((objc_opt_respondsToSelector() & (v24 != -1)) == 1)
    {
      [v4 setImageblockSampleLength:v24];
      [v4 setThreadgroupMemoryLength:v23];
      [v4 setTileWidth:v26];
      [v4 setTileHeight:v25];
    }

    if ((objc_opt_respondsToSelector() & (v28 != -1)) == 1)
    {
      [v4 setDefaultRasterSampleCount:v28];
    }

    if ((objc_opt_respondsToSelector() & (v27 != -1)) == 1 && v43 != -1)
    {
      [v4 setRenderTargetWidth:v27];
      [v4 setRenderTargetHeight:v43];
    }

    if (v5 == 13)
    {
      v21 = v20 + 8;
    }

    else
    {
      v21 = v20 + 9;
      v29 = *(v20 + 8);
      if (v29)
      {
        std::vector<MTLSamplePosition>::vector[abi:ne200100](__p, *(v20 + 8));
        v30 = __p[0] + 4;
        v31 = v29;
        do
        {
          *(v30 - 1) = *v21;
          v32 = v21 + 2;
          *v30 = *(v21 + 2);
          v30 += 2;
          v21 += 2;
          --v31;
        }

        while (v31);
        [v4 setSamplePositions:? count:?];
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v21 = v32;
      }

      if (v5 >= 0x14)
      {
        v33 = [v4 stencilAttachment];
        v34 = objc_opt_respondsToSelector();

        if (v34)
        {
          v35 = *v21;
          if (*v21 != -1)
          {
            v36 = [v4 stencilAttachment];
            [v36 setStencilResolveFilter:v35];
          }
        }

        if (v5 < 0x18)
        {
          ++v21;
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            [v4 setOpenGLModeEnabled:*(v21 + 1) != 0];
          }

          if (v5 < 0x21)
          {
            v21 += 2;
          }

          else
          {
            if (objc_opt_respondsToSelector())
            {
              v45 = *(v21 + 2);
              __p[0] = &v45;
              [v4 setRasterizationRateMap:{std::__hash_table<std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::__unordered_map_hasher<unsigned long long, std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::hash<unsigned long long>, std::equal_to<unsigned long long>, true>, std::__unordered_map_equal<unsigned long long, std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::equal_to<unsigned long long>, std::hash<unsigned long long>, true>, std::allocator<std::__hash_value_type<unsigned long long, objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long, std::piecewise_construct_t const&, std::tuple<unsigned long long &&>, std::tuple<>>(a2, &v45)[3]}];
            }

            v21 += 3;
          }
        }
      }
    }
  }

LABEL_49:
  v37 = [v4 depthAttachment];
  v38 = [v37 texture];

  if (!v38)
  {
    [v4 setDepthAttachment:0];
  }

  v39 = [v4 stencilAttachment];
  v40 = [v39 texture];

  if (!v40)
  {
    [v4 setStencilAttachment:0];
  }

  if ((v5 & 0xFFFFFFFE) == 0x22)
  {
    v21 -= 3;
    do
    {
      v41 = *(v21 + 3);
      v21 += 4;
    }

    while (v41 != -1);
  }

  if (v5 >= 0x27 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 setDitherEnabled:*v21 != 0];
  }

  return v4;
}

id GPUTools::MTL::MakeMTLDepthStencilDescriptor(GPUTools::MTL *this, const void *a2)
{
  v3 = objc_opt_new();
  [v3 setDepthCompareFunction:*(this + 1)];
  [v3 setDepthWriteEnabled:*(this + 4) != 0];
  this = (this + 24);
  v10 = (this + (strlen(this) & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
  [v3 setLabel:v4];

  v6 = GPUTools::MTL::MakeMTLStencilDescriptor(&v10, v5);
  [v3 setFrontFaceStencil:v6];

  v8 = GPUTools::MTL::MakeMTLStencilDescriptor(&v10, v7);
  [v3 setBackFaceStencil:v8];

  return v3;
}

void sub_24D6F515C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id GPUTools::MTL::MakeMTLStencilDescriptor(uint64_t **this, const void **a2)
{
  ++*this;
  v3 = objc_opt_new();
  v4 = *(*this)++;
  [v3 setStencilCompareFunction:v4];
  v5 = *(*this)++;
  [v3 setStencilFailureOperation:v5];
  v6 = *(*this)++;
  [v3 setDepthFailureOperation:v6];
  v7 = *(*this)++;
  [v3 setDepthStencilPassOperation:v7];
  v8 = *(*this)++;
  [v3 setReadMask:v8];
  v9 = *(*this)++;
  [v3 setWriteMask:v9];

  return v3;
}

id GPUTools::MTL::MakeMTLSamplerDescriptor(GPUTools::MTL *this, const void *a2)
{
  v3 = objc_opt_new();
  v4 = *this;
  [v3 setMinFilter:*(this + 1)];
  [v3 setMagFilter:*(this + 2)];
  [v3 setMipFilter:*(this + 3)];
  [v3 setMaxAnisotropy:*(this + 4)];
  [v3 setSAddressMode:*(this + 5)];
  [v3 setTAddressMode:*(this + 6)];
  [v3 setRAddressMode:*(this + 7)];
  [v3 setNormalizedCoordinates:*(this + 16) != 0];
  LODWORD(v5) = *(this + 18);
  [v3 setLodMinClamp:v5];
  LODWORD(v6) = *(this + 20);
  [v3 setLodMaxClamp:v6];
  v7 = this + 88;
  v8 = strlen(v7);
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
  [v3 setLabel:v9];

  if (v4 >= 2)
  {
    v10 = &v7[v8 & 0xFFFFFFFFFFFFFFF8];
    [v3 setLodAverage:*(v10 + 2) != 0];
    if (v4 >= 8)
    {
      [v3 setCompareFunction:*(v10 + 4)];
      if (v4 > 0x10)
      {
        if (objc_opt_respondsToSelector())
        {
          [v3 setSupportArgumentBuffers:*(v10 + 8) != 0];
        }

        if (v4 >= 0x16)
        {
          v11 = *(v10 + 5);
          v12 = *(v10 + 12);
          if (objc_opt_respondsToSelector())
          {
            [v3 setForceResourceIndex:v12 != 0];
            [v3 setResourceIndex:v11];
          }

          if (v4 >= 0x1C)
          {
            v13 = *(v10 + 7);
            if (objc_opt_respondsToSelector())
            {
              [v3 setReductionMode:v13];
            }

            if (v4 >= 0x27)
            {
              v14 = *(v10 + 16);
              v15 = *(v10 + 18);
              v16 = *(v10 + 20);
              v17 = *(v10 + 22);
              v18 = *(v10 + 24);
              v19 = *(v10 + 26);
              if (objc_opt_respondsToSelector())
              {
                [v3 setBorderColorSPI:v14];
              }

              if (objc_opt_respondsToSelector())
              {
                [v3 setCustomBorderColorValue_0:v15];
              }

              if (objc_opt_respondsToSelector())
              {
                [v3 setCustomBorderColorValue_1:v16];
              }

              if (objc_opt_respondsToSelector())
              {
                [v3 setCustomBorderColorValue_2:v17];
              }

              if (objc_opt_respondsToSelector())
              {
                [v3 setCustomBorderColorValue_3:v18];
              }

              if (objc_opt_respondsToSelector())
              {
                [v3 setForceSeamsOnCubemapFiltering:v19 != 0];
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

id GPUTools::MTL::MakeMTLStageInputOutputDescriptor(uint64_t **this, const void **a2)
{
  v3 = objc_opt_new();
  if (GPUTools::MTL::_captureVersion >= 0x1A)
  {
    v4 = *(*this)++;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 31;
  }

  for (i = 0; i != v4; ++i)
  {
    v6 = *(*this)++;
    v7 = [v3 layouts];
    v8 = [v7 objectAtIndexedSubscript:i];
    [v8 setStride:v6];

    v9 = *(*this)++;
    v10 = [v3 layouts];
    v11 = [v10 objectAtIndexedSubscript:i];
    [v11 setStepRate:v9];

    v12 = *(*this)++;
    v13 = [v3 layouts];
    v14 = [v13 objectAtIndexedSubscript:i];
    [v14 setStepFunction:v12];
  }

  if (GPUTools::MTL::_captureVersion >= 0x1A)
  {
LABEL_8:
    v15 = *(*this)++;
    if (!v15)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v15 = 31;
LABEL_9:
  for (j = 0; j != v15; ++j)
  {
    v17 = *(*this)++;
    v18 = [v3 attributes];
    v19 = [v18 objectAtIndexedSubscript:j];
    [v19 setFormat:v17];

    v20 = *(*this)++;
    v21 = [v3 attributes];
    v22 = [v21 objectAtIndexedSubscript:j];
    [v22 setOffset:v20];

    v23 = *(*this)++;
    v24 = [v3 attributes];
    v25 = [v24 objectAtIndexedSubscript:j];
    [v25 setBufferIndex:v23];
  }

LABEL_11:
  v26 = *(*this)++;
  [v3 setIndexType:v26];
  v27 = *(*this)++;
  [v3 setIndexBufferIndex:v27];

  return v3;
}

id std::vector<objc_object  {objcproto10MTLTexture}* {__strong}>::push_back[abi:ne200100](void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto10MTLTexture}* {__strong}>>(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    std::vector<objc_object  {objcproto10MTLTexture}* {__strong}>::__swap_out_circular_buffer(a1, v13);
    v7 = a1[1];
    result = std::__split_buffer<objc_object  {objcproto10MTLTexture}* {__strong}>::~__split_buffer(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_24D6F58E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<objc_object  {objcproto10MTLTexture}* {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

id std::vector<objc_object  {objcproto9MTLBuffer}* {__strong}>::push_back[abi:ne200100](void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto10MTLTexture}* {__strong}>>(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    std::vector<objc_object  {objcproto10MTLTexture}* {__strong}>::__swap_out_circular_buffer(a1, v13);
    v7 = a1[1];
    result = std::__split_buffer<objc_object  {objcproto10MTLTexture}* {__strong}>::~__split_buffer(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_24D6F59DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<objc_object  {objcproto10MTLTexture}* {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

id std::vector<objc_object  {objcproto7MTLHeap}* {__strong}>::push_back[abi:ne200100](void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto10MTLTexture}* {__strong}>>(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    std::vector<objc_object  {objcproto10MTLTexture}* {__strong}>::__swap_out_circular_buffer(a1, v13);
    v7 = a1[1];
    result = std::__split_buffer<objc_object  {objcproto10MTLTexture}* {__strong}>::~__split_buffer(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_24D6F5AD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<objc_object  {objcproto10MTLTexture}* {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

id GPUTools::MTL::MakeIndirectCommandBufferOptimizedRangeList(GPUTools::MTL *this, const void *a2)
{
  v3 = *(this + 1);
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:v3];
  if (v3)
  {
    v5 = (this + 24);
    do
    {
      v6 = [MEMORY[0x277CCAE60] valueWithRange:{*(v5 - 1), *v5}];
      [v4 addObject:v6];
      v5 += 2;

      --v3;
    }

    while (v3);
  }

  v7 = [v4 copy];

  return v7;
}

id GPUTools::MTL::MakeMTLRenderPipelineDescriptor(uint64_t a1, void *a2)
{
  v4 = objc_opt_new();
  v5 = *a1;
  v63 = *(a1 + 8);
  v64 = &v63;
  [v4 setVertexFunction:{std::__hash_table<std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::__unordered_map_hasher<unsigned long long, std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::hash<unsigned long long>, std::equal_to<unsigned long long>, true>, std::__unordered_map_equal<unsigned long long, std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::equal_to<unsigned long long>, std::hash<unsigned long long>, true>, std::allocator<std::__hash_value_type<unsigned long long, objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long, std::piecewise_construct_t const&, std::tuple<unsigned long long &&>, std::tuple<>>(a2, &v63)[3]}];
  v63 = *(a1 + 16);
  v64 = &v63;
  [v4 setFragmentFunction:{std::__hash_table<std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::__unordered_map_hasher<unsigned long long, std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::hash<unsigned long long>, std::equal_to<unsigned long long>, true>, std::__unordered_map_equal<unsigned long long, std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::equal_to<unsigned long long>, std::hash<unsigned long long>, true>, std::allocator<std::__hash_value_type<unsigned long long, objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long, std::piecewise_construct_t const&, std::tuple<unsigned long long &&>, std::tuple<>>(a2, &v63)[3]}];
  v6 = objc_opt_new();
  v61 = a2;
  v62 = v5;
  if (GPUTools::MTL::_captureVersion >= 0x1A)
  {
    v7 = (a1 + 32);
    v8 = *(a1 + 24);
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = (a1 + 24);
    v8 = 31;
  }

  for (i = 0; i != v8; ++i)
  {
    v10 = v7;
    v12 = *v7;
    v11 = v7[1];
    v13 = v7[2];
    v14 = [v6 layouts];
    v15 = [v14 objectAtIndexedSubscript:i];
    [v15 setStride:v12];

    v16 = [v6 layouts];
    v17 = [v16 objectAtIndexedSubscript:i];
    [v17 setStepFunction:v13];

    v18 = [v6 layouts];
    v19 = [v18 objectAtIndexedSubscript:i];
    [v19 setStepRate:v11];

    v7 = v10 + 3;
  }

  v7 = v10 + 3;
  if (GPUTools::MTL::_captureVersion < 0x1A)
  {
    v20 = 31;
    goto LABEL_9;
  }

LABEL_8:
  v21 = *v7++;
  v20 = v21;
  if (v21)
  {
LABEL_9:
    v22 = 0;
    do
    {
      v23 = v7;
      v25 = *v7;
      v24 = v7[1];
      v26 = v23[2];
      v27 = [v6 attributes];
      v28 = [v27 objectAtIndexedSubscript:v22];
      [v28 setFormat:v25];

      v29 = [v6 attributes];
      v30 = [v29 objectAtIndexedSubscript:v22];
      [v30 setOffset:v24];

      v31 = [v6 attributes];
      v32 = [v31 objectAtIndexedSubscript:v22];
      [v32 setBufferIndex:v26];

      ++v22;
      v7 = v23 + 3;
    }

    while (v20 != v22);
    v7 = v23 + 3;
  }

  [v4 setVertexDescriptor:v6];

  v33 = objc_opt_respondsToSelector();
  v34 = *v7;
  if (v33)
  {
    [v4 setRasterSampleCount:v34];
  }

  else
  {
    [v4 setSampleCount:v34];
  }

  [v4 setSampleMask:v7[1]];
  LODWORD(v35) = *(v7 + 4);
  [v4 setSampleCoverage:v35];
  [v4 setAlphaToCoverageEnabled:*(v7 + 6) != 0];
  [v4 setAlphaToOneEnabled:*(v7 + 8) != 0];
  [v4 setRasterizationEnabled:*(v7 + 10) != 0];
  [v4 setDepthAttachmentPixelFormat:v7[6]];
  [v4 setStencilAttachmentPixelFormat:v7[7]];
  v36 = *(v7 + 16);
  v37 = (v7 + 9);
  if (v36)
  {
    for (j = 0; j != v36; ++j)
    {
      v39 = objc_opt_new();
      [v39 setBlendingEnabled:*v37 != 0];
      [v39 setSourceRGBBlendFactor:*(v37 + 8)];
      [v39 setDestinationRGBBlendFactor:*(v37 + 16)];
      [v39 setRgbBlendOperation:*(v37 + 24)];
      [v39 setSourceAlphaBlendFactor:*(v37 + 32)];
      [v39 setDestinationAlphaBlendFactor:*(v37 + 40)];
      [v39 setAlphaBlendOperation:*(v37 + 48)];
      [v39 setWriteMask:*(v37 + 56)];
      [v39 setPixelFormat:*(v37 + 64)];
      v40 = [v4 colorAttachments];
      [v40 setObject:v39 atIndexedSubscript:j];

      v37 += 72;
    }
  }

  v41 = strlen(v37);
  v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:v37];
  [v4 setLabel:v42];

  if (v62 >= 7)
  {
    v43 = v37 + (v41 & 0xFFFFFFFFFFFFFFF8);
    v44 = *(v43 + 8);
    if ((objc_opt_respondsToSelector() & (v44 != -1)) == 1)
    {
      [v4 setInputPrimitiveTopology:v44];
    }

    if (v62 >= 9)
    {
      [v4 setTessellationPartitionMode:*(v43 + 16)];
      [v4 setMaxTessellationFactor:*(v43 + 24)];
      [v4 setTessellationFactorScaleEnabled:*(v43 + 32) != 0];
      [v4 setTessellationFactorFormat:*(v43 + 40)];
      [v4 setTessellationControlPointIndexType:*(v43 + 48)];
      [v4 setTessellationFactorStepFunction:*(v43 + 56)];
      [v4 setTessellationOutputWindingOrder:*(v43 + 64)];
      if (v62 >= 0x12)
      {
        if (GPUTools::MTL::_captureVersion >= 0x1A)
        {
          v45 = (v43 + 80);
          v46 = *(v43 + 72);
        }

        else
        {
          v45 = (v43 + 72);
          v46 = 31;
        }

        if (objc_opt_respondsToSelector())
        {
          v47 = objc_opt_new();
          if (v46)
          {
            for (k = 0; k != v46; ++k)
            {
              v49 = *v45++;
              [v47 setMutability:v49];
              v50 = [v4 vertexBuffers];
              [v50 setObject:v47 atIndexedSubscript:k];
            }
          }
        }

        else if (v46)
        {
          v45 += (v46 - 1) + 1;
        }

        if (GPUTools::MTL::_captureVersion >= 0x1A)
        {
          v52 = *v45++;
          v51 = v52;
        }

        else
        {
          v51 = 31;
        }

        if (objc_opt_respondsToSelector())
        {
          v53 = objc_opt_new();
          if (v51)
          {
            for (m = 0; m != v51; ++m)
            {
              v55 = *v45++;
              [v53 setMutability:v55];
              v56 = [v4 fragmentBuffers];
              [v56 setObject:v53 atIndexedSubscript:m];
            }
          }
        }

        else if (v51)
        {
          v45 += (v51 - 1) + 1;
        }

        if (v62 >= 0x17)
        {
          v57 = *v45;
          if (objc_opt_respondsToSelector())
          {
            [v4 setSupportIndirectCommandBuffers:v57 != 0];
          }

          if (v62 >= 0x20)
          {
            v58 = v45[2];
            if (v58 != -1)
            {
              v59 = v45[1];
              if (objc_opt_respondsToSelector())
              {
                [v4 setVertexAmplificationMode:v59];
              }

              if (objc_opt_respondsToSelector())
              {
                [v4 setMaxVertexAmplificationCount:v58];
              }
            }

            if (v62 >= 0x26)
            {
              v63 = v45[3];
              if (objc_opt_respondsToSelector())
              {
                v64 = &v63;
                [v4 setPipelineLibrary:{std::__hash_table<std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::__unordered_map_hasher<unsigned long long, std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::hash<unsigned long long>, std::equal_to<unsigned long long>, true>, std::__unordered_map_equal<unsigned long long, std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::equal_to<unsigned long long>, std::hash<unsigned long long>, true>, std::allocator<std::__hash_value_type<unsigned long long, objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long, std::piecewise_construct_t const&, std::tuple<unsigned long long const&>, std::tuple<>>(v61, &v63)[3]}];
              }

              if (v62 != 38 && (objc_opt_respondsToSelector() & 1) != 0)
              {
                [v4 setLogicOperation:v45[4]];
                [v4 setAlphaTestFunction:v45[5]];
                [v4 setVertexDepthCompareClampMask:*(v45 + 12)];
                [v4 setFragmentDepthCompareClampMask:*(v45 + 14)];
                [v4 setLogicOperationEnabled:v45[8] != 0];
                [v4 setOpenGLModeEnabled:v45[9] != 0];
                [v4 setPointCoordLowerLeft:v45[10] != 0];
                [v4 setPointSizeOutputVS:v45[11] != 0];
                [v4 setTwoSideEnabled:v45[12] != 0];
                [v4 setAlphaTestEnabled:v45[13] != 0];
                [v4 setPointSmoothEnabled:v45[14] != 0];
                [v4 setClipDistanceEnableMask:v45[15] != 0];
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

id GPUTools::MTL::MakeMTLTileRenderPipelineDescriptor(const char *a1, void *a2)
{
  v4 = objc_opt_new();
  v6 = *a1;
  a1 += 8;
  v5 = v6;
  v7 = strlen(a1);
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  [v4 setLabel:v8];
  v9 = &a1[v7 & 0xFFFFFFFFFFFFFFF8];

  v25[0] = *(v9 + 1);
  v25[2] = v25;
  [v4 setTileFunction:{std::__hash_table<std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::__unordered_map_hasher<unsigned long long, std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::hash<unsigned long long>, std::equal_to<unsigned long long>, true>, std::__unordered_map_equal<unsigned long long, std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::equal_to<unsigned long long>, std::hash<unsigned long long>, true>, std::allocator<std::__hash_value_type<unsigned long long, objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long, std::piecewise_construct_t const&, std::tuple<unsigned long long &&>, std::tuple<>>(a2, v25)[3]}];
  v10 = objc_opt_respondsToSelector();
  v11 = *(v9 + 2);
  if (v10)
  {
    [v4 setRasterSampleCount:v11];
  }

  else
  {
    [v4 setSampleCount:v11];
  }

  v12 = v9 + 32;
  v13 = *(v9 + 6);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = objc_opt_new();
      v16 = *v12;
      v12 += 8;
      [v15 setPixelFormat:v16];
      v17 = [v4 colorAttachments];
      [v17 setObject:v15 atIndexedSubscript:i];
    }
  }

  v18 = v12 + 8;
  [v4 setThreadgroupSizeMatchesTileSize:*v12 != 0];
  if (v5 >= 0x12)
  {
    if (GPUTools::MTL::_captureVersion >= 0x1A)
    {
      v18 = v12 + 16;
      v19 = *(v12 + 2);
    }

    else
    {
      v19 = 31;
    }

    if (objc_opt_respondsToSelector())
    {
      v20 = objc_opt_new();
      if (v19)
      {
        v21 = 0;
        v22 = v19;
        do
        {
          [v20 setMutability:*&v18[8 * v21]];
          v23 = [v4 tileBuffers];
          [v23 setObject:v20 atIndexedSubscript:v21];

          ++v21;
        }

        while (v22 != v21);
      }
    }
  }

  return v4;
}

id GPUTools::MTL::MakeMTLComputePipelineDescriptor(uint64_t a1, void *a2)
{
  v4 = objc_opt_new();
  v5 = *a1;
  v24 = *(a1 + 8);
  v26 = &v24;
  [v4 setComputeFunction:{std::__hash_table<std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::__unordered_map_hasher<unsigned long long, std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::hash<unsigned long long>, std::equal_to<unsigned long long>, true>, std::__unordered_map_equal<unsigned long long, std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::equal_to<unsigned long long>, std::hash<unsigned long long>, true>, std::allocator<std::__hash_value_type<unsigned long long, objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long, std::piecewise_construct_t const&, std::tuple<unsigned long long &&>, std::tuple<>>(a2, &v24)[3]}];
  [v4 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:*(a1 + 16) != 0];
  a1 += 24;
  v6 = a1 + (strlen(a1) & 0xFFFFFFFFFFFFFFF8);
  v25 = (v6 + 8);
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  [v4 setLabel:v7];

  if (v5 < 0xB)
  {
    goto LABEL_34;
  }

  if (*(v6 + 8) != -1)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = GPUTools::MTL::MakeMTLStageInputOutputDescriptor(&v25, v8);
      [v4 setStageInputDescriptor:v9];

      goto LABEL_12;
    }

    if (GPUTools::MTL::_captureVersion > 0x19)
    {
      v13 = v6 + 24 * *(v6 + 8);
      v11 = v13 + 24;
      v12 = *(v13 + 16);
      if (!v12)
      {
LABEL_10:
        v10 = (v11 + 16);
        goto LABEL_11;
      }
    }

    else
    {
      v11 = v6 + 752;
      v12 = 31;
    }

    v11 += 24 * v12;
    goto LABEL_10;
  }

  v10 = (v6 + 16);
LABEL_11:
  v25 = v10;
LABEL_12:
  if (v5 >= 0x12)
  {
    if (GPUTools::MTL::_captureVersion >= 0x1A)
    {
      v14 = *v25++;
    }

    else
    {
      v14 = 31;
    }

    if (objc_opt_respondsToSelector())
    {
      v15 = objc_opt_new();
      v16 = v25;
      if (v14)
      {
        v17 = 0;
        v18 = 0;
        v19 = v14;
        do
        {
          [v15 setMutability:v16[v18]];
          v20 = [v4 buffers];
          [v20 setObject:v15 atIndexedSubscript:v18];

          ++v18;
          v17 -= 8;
        }

        while (v19 != v18);
        v16 = (v16 - v17);
      }
    }

    else if (v14)
    {
      v16 = &v25[v14];
    }

    else
    {
      v16 = v25;
    }

    if (v5 >= 0x1B)
    {
      v21 = *v16;
      if (objc_opt_respondsToSelector())
      {
        [v4 setSupportIndirectCommandBuffers:v21 != 0];
      }

      if (v5 >= 0x25)
      {
        v22 = v16[1];
        if (objc_opt_respondsToSelector())
        {
          [v4 setMaxTotalThreadsPerThreadgroup:v22];
        }

        if (v5 != 37)
        {
          v24 = v16[2];
          if (objc_opt_respondsToSelector())
          {
            v26 = &v24;
            [v4 setPipelineLibrary:{std::__hash_table<std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::__unordered_map_hasher<unsigned long long, std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::hash<unsigned long long>, std::equal_to<unsigned long long>, true>, std::__unordered_map_equal<unsigned long long, std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::equal_to<unsigned long long>, std::hash<unsigned long long>, true>, std::allocator<std::__hash_value_type<unsigned long long, objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long, std::piecewise_construct_t const&, std::tuple<unsigned long long const&>, std::tuple<>>(a2, &v24)[3]}];
          }
        }
      }
    }
  }

LABEL_34:

  return v4;
}

id GPUTools::MTL::MakeMTLIOCommandQueueDescriptor()
{
  v0 = objc_opt_new();

  return v0;
}

id GPUTools::MTL::MakeMTLCommandQueueDescriptor(uint64_t a1)
{
  v2 = *a1;
  v3 = objc_opt_new();
  [v3 setMaxCommandBufferCount:*(a1 + 8)];
  if (v2 >= 0x1E)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    if (objc_opt_respondsToSelector())
    {
      [v3 setQosLevel:v4];
      [v3 setCommitSynchronously:v5 != 0];
    }

    if (v2 >= 0x27 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v3 setIsOpenGLQueue:*(a1 + 32) != 0];
    }
  }

  return v3;
}

void GPUTools::MTL::DictionarySetInt(GPUTools::MTL *this, __CFDictionary *a2, const void *a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(this, a2, v5);
    CFRelease(v6);
  }
}

__IOSurface *GPUTools::MTL::MakeIOSurface(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  v44[0] = *(a1 + 8);
  v22 = v3;
  v23 = *(a1 + 24);
  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  v26 = *(a1 + 48);
  v27 = *(a1 + 56);
  v28 = *(a1 + 64);
  v29 = *(a1 + 72);
  v4 = *(a1 + 80);
  values = malloc_type_malloc(8 * v4, 0x80040B8603338uLL);
  numValues = v4;
  if (v4)
  {
    v5 = 0;
    v41 = *MEMORY[0x277CBECE8];
    v6 = a1 + 88;
    v40 = *MEMORY[0x277CD2B50];
    v39 = *MEMORY[0x277CD2B18];
    v38 = *MEMORY[0x277CD2A98];
    v37 = *MEMORY[0x277CD2AA0];
    v36 = *MEMORY[0x277CD2AF0];
    v35 = *MEMORY[0x277CD2AE8];
    v34 = *MEMORY[0x277CD2B38];
    v33 = *MEMORY[0x277CD2B40];
    v7 = values;
    v8 = v4;
    do
    {
      v9 = *v6;
      v10 = *(v6 + 8);
      v11 = *(v6 + 16);
      v12 = *(v6 + 24);
      v42 = *(v6 + 32);
      v43 = *(v6 + 40);
      Mutable = CFDictionaryCreateMutable(v41, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      GPUTools::MTL::DictionarySetInt(Mutable, v40, v9);
      GPUTools::MTL::DictionarySetInt(Mutable, v39, v10);
      GPUTools::MTL::DictionarySetInt(Mutable, v38, v11);
      GPUTools::MTL::DictionarySetInt(Mutable, v37, v12);
      GPUTools::MTL::DictionarySetInt(Mutable, v36, v42);
      GPUTools::MTL::DictionarySetInt(Mutable, v35, v43);
      GPUTools::MTL::DictionarySetInt(Mutable, v34, v5);
      GPUTools::MTL::DictionarySetInt(Mutable, v33, (v12 * v10));
      *v7++ = Mutable;
      v6 += 48;
      v5 += v12 * v10;
      --v8;
    }

    while (v8);
  }

  v14 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(a2, v44);
  if (v14)
  {
    v15 = v14[3];
  }

  else
  {
    v16 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    GPUTools::MTL::DictionarySetInt(v16, *MEMORY[0x277CD2948], v22);
    GPUTools::MTL::DictionarySetInt(v16, *MEMORY[0x277CD2B88], v23);
    GPUTools::MTL::DictionarySetInt(v16, *MEMORY[0x277CD2A28], v24);
    GPUTools::MTL::DictionarySetInt(v16, *MEMORY[0x277CD2960], v25);
    GPUTools::MTL::DictionarySetInt(v16, *MEMORY[0x277CD2968], v26);
    GPUTools::MTL::DictionarySetInt(v16, *MEMORY[0x277CD29F0], v27);
    GPUTools::MTL::DictionarySetInt(v16, *MEMORY[0x277CD29E8], v28);
    GPUTools::MTL::DictionarySetInt(v16, *MEMORY[0x277CD2A70], v29);
    v17 = v4;
    if (v4)
    {
      v18 = values;
      v19 = CFArrayCreate(0, values, numValues, MEMORY[0x277CBF128]);
      CFDictionarySetValue(v16, *MEMORY[0x277CD2B30], v19);
      CFRelease(v19);
      do
      {
        v20 = *v18++;
        CFRelease(v20);
        --v17;
      }

      while (v17);
    }

    v15 = IOSurfaceCreate(v16);
    std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,objc_object * {__strong}>(a2, v44);
  }

  free(values);
  return v15;
}

__n128 GPUTools::MTL::MakeMTLRegion@<Q0>(GPUTools::MTL *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 1);
  *a2 = *this;
  *(a2 + 16) = v3;
  result = *(this + 2);
  *(a2 + 32) = result;
  return result;
}

id GPUTools::MTL::MakeMTLHeapDescriptor(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *a1;
  [v2 setSize:*(a1 + 8)];
  [v2 setCpuCacheMode:*(a1 + 16)];
  [v2 setStorageMode:*(a1 + 24)];
  if (v3 >= 0x1D)
  {
    v4 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      [v2 setType:v4];
    }

    if (v3 >= 0x1F)
    {
      v6 = *(a1 + 48);
      v5 = *(a1 + 56);
      if (objc_opt_respondsToSelector())
      {
        [v2 setHazardTrackingMode:v6];
      }

      if (objc_opt_respondsToSelector())
      {
        [v2 setResourceOptions:v5];
      }
    }
  }

  return v2;
}

id GPUTools::MTL::MakeMTLRasterizationRateMapDescriptor(GPUTools::MTL *this, const void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = this + 8;
  v3 = strlen(this + 8);
  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
  v23 = &v23;
  v4 = &v2[v3 & 0xFFFFFFFFFFFFFFF8];
  v25 = *(v4 + 8);
  v5 = *(v4 + 4);
  v24 = *(v4 + 3);
  v6 = 8 * v5;
  MEMORY[0x28223BE20](v26);
  v7 = &v23 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v7, 8 * v5);
  if (v5)
  {
    v8 = 0;
    v9 = (v4 + 40);
    do
    {
      v10 = *v9;
      v11 = *(v9 + 1);
      v12 = *(v9 + 2);
      v13 = objc_alloc(MEMORY[0x277CD6F18]);
      *&v27 = v10;
      *(&v27 + 1) = v11;
      v28 = v12;
      v14 = [v13 initWithSampleCount:&v27];
      v9 += 6;
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          v16 = *v9;
          v9 += 2;
          *([v14 horizontalSampleStorage] + 4 * i) = v16;
        }
      }

      if (v11)
      {
        for (j = 0; j != v11; ++j)
        {
          v18 = *v9;
          v9 += 2;
          *([v14 verticalSampleStorage] + 4 * j) = v18;
        }
      }

      v19 = *&v7[8 * v8];
      *&v7[8 * v8] = v14;

      ++v8;
    }

    while (v8 != v5);
  }

  v27 = v25;
  v28 = v24;
  v20 = [MEMORY[0x277CD6F20] rasterizationRateMapDescriptorWithScreenSize:&v27 layerCount:v5 layers:&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [v20 setLabel:v26];
  if (v5)
  {
    do
    {

      v6 -= 8;
    }

    while (v6);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void sub_24D6F72C8(_Unwind_Exception *a1)
{
  if (v2)
  {
    do
    {

      v1 -= 8;
    }

    while (v1);
  }

  _Unwind_Resume(a1);
}

char *GPUTools::MTL::MakeMTLImageFilterFunctionInfo(GPUTools::MTL *this, const void *a2)
{
  v3 = *(this + 1);
  v4 = malloc_type_malloc(24 * v3, 0x1060040D275764BuLL);
  if (v3)
  {
    v5 = 0;
    v6 = this + 16;
    do
    {
      v7 = &v4[24 * v5];
      *v7 = *v6 != 0;
      v8 = *(v6 + 1);
      v6 += 16;
      *(v7 + 1) = v8;
      if (v8)
      {
        v9 = malloc_type_malloc(24 * v8, 0x1000040504FFAC1uLL);
        v10 = *(v7 + 1);
        if (v10)
        {
          v11 = v9 + 16;
          do
          {
            *(v11 - 1) = *v6;
            v12 = v6 + 24;
            *v11 = *(v6 + 2);
            v11 += 3;
            v6 += 24;
            --v10;
          }

          while (v10);
          v6 = v12;
        }
      }

      else
      {
        v9 = 0;
      }

      *(v7 + 2) = v9;
      ++v5;
    }

    while (v5 != v3);
  }

  return v4;
}

id GPUTools::MTL::MakeMTLArray(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v4];
  if (v4)
  {
    v6 = (a1 + 16);
    do
    {
      v7 = *v6++;
      v10[0] = v7;
      v10[2] = v10;
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(a2, v10)[3];
      [v5 addObject:v8];

      --v4;
    }

    while (v4);
  }

  return v5;
}

id GPUTools::MTL::MakeMTLArray(unint64_t *a1, uint64_t a2, void *a3)
{
  v4 = a2;
  for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:a2];
  {
    v7 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a3, a1)[3];
    [i addObject:v7];
    ++a1;
  }

  return i;
}

id GPUTools::MTL::MakeMTLCounterSampleBufferDescriptor(GPUTools::MTL *this, void *a2, objc_object *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_opt_new();
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = this + 8;
  v8 = strlen(this + 8);
  v9 = [v6 initWithUTF8String:this + 8];
  v10 = &v7[(v8 & 0xFFFFFFFFFFFFFFF8) + 8 + (strlen(&v7[(v8 & 0xFFFFFFFFFFFFFFF8) + 8]) & 0xFFFFFFFFFFFFFFF8)];
  v11 = (v10 + 24);
  v12 = *(v10 + 16);
  if (v12 >= 1)
  {
    do
    {
      v13 = &v11[(strlen(v11) & 0xFFFFFFFFFFFFFFF8) + 8];
      v11 = &v13[(strlen(v13) & 0xFFFFFFFFFFFFFFF8) + 8];
      --v12;
    }

    while (v12);
  }

  v14 = objc_alloc(MEMORY[0x277CCACA8]);
  v15 = strlen(v11);
  v16 = [v14 initWithUTF8String:v11];
  [v5 setLabel:v16];
  v17 = &v11[v15 & 0xFFFFFFFFFFFFFFF8];

  [v5 setStorageMode:*(v17 + 1)];
  [v5 setSampleCount:*(v17 + 2)];
  [v4 counterSets];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v18 = v28 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v19)
  {
    v20 = *v28;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v27 + 1) + 8 * i);
        v23 = [v22 name];
        v24 = [v23 isEqualToString:v9];

        if (v24)
        {
          [v5 setCounterSet:v22];
          goto LABEL_13;
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v25 = *MEMORY[0x277D85DE8];

  return v5;
}

double GPUTools::MTL::MakeViewportArray(GPUTools::MTL *this, char *a2)
{
  v2 = a2;
  v4 = malloc_type_malloc(48 * a2, 0x1000040EED21634uLL);
  if (v2)
  {
    v6 = this + 24;
    v7 = v4 + 24;
    do
    {
      *(v7 - 3) = *(v6 - 2);
      *(v7 - 2) = *(v6 - 1);
      *(v7 - 1) = *v6;
      *v7 = *(v6 + 1);
      *(v7 + 1) = *(v6 + 2);
      result = *(v6 + 3);
      *(v7 + 2) = result;
      v6 += 48;
      v7 += 48;
      --v2;
    }

    while (v2);
  }

  return result;
}

__n128 GPUTools::MTL::MakeScissorRectArray(GPUTools::MTL *this, char *a2)
{
  v2 = a2;
  v4 = malloc_type_malloc(32 * a2, 0x1000040E0EAB150uLL);
  if (v2)
  {
    v6 = v4 + 1;
    v7 = (this + 24);
    do
    {
      result = v7[-1];
      v8 = *v7;
      v6[-1] = result;
      *v6 = v8;
      v6 += 2;
      v7 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

__n128 GPUTools::MTL::MakeRegionArray(__n128 *this, char *a2)
{
  v2 = a2;
  v4 = malloc_type_malloc(48 * a2, 0x1000040EED21634uLL);
  if (v2)
  {
    v6 = v4 + 2;
    do
    {
      v7 = this[1];
      v6[-2] = *this;
      v6[-1] = v7;
      result = this[2];
      *v6 = result;
      v6 += 3;
      this += 3;
      --v2;
    }

    while (v2);
  }

  return result;
}

dispatch_data_t GPUTools::MTL::MakeDispatchDataT(GPUTools::MTL *this, size_t a2)
{
  v2 = dispatch_data_create(this, a2, 0, 0);

  return v2;
}

void GPUTools::MTL::MakeMTLRenderPassAttachmentDescriptor(void **a1, void *a2, void *a3, unsigned int a4)
{
  v7 = a2;
  v8 = *(*a1)++;
  v20 = v8;
  v21 = &v20;
  [v7 setTexture:{std::__hash_table<std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::__unordered_map_hasher<unsigned long long, std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::hash<unsigned long long>, std::equal_to<unsigned long long>, true>, std::__unordered_map_equal<unsigned long long, std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::equal_to<unsigned long long>, std::hash<unsigned long long>, true>, std::allocator<std::__hash_value_type<unsigned long long, objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long, std::piecewise_construct_t const&, std::tuple<unsigned long long &&>, std::tuple<>>(a3, &v20)[3]}];
  v9 = *(*a1)++;
  [v7 setLevel:v9];
  v10 = *(*a1)++;
  [v7 setSlice:v10];
  v11 = *(*a1)++;
  [v7 setDepthPlane:v11];
  v12 = *(*a1)++;
  v20 = v12;
  v21 = &v20;
  [v7 setResolveTexture:{std::__hash_table<std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::__unordered_map_hasher<unsigned long long, std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::hash<unsigned long long>, std::equal_to<unsigned long long>, true>, std::__unordered_map_equal<unsigned long long, std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::equal_to<unsigned long long>, std::hash<unsigned long long>, true>, std::allocator<std::__hash_value_type<unsigned long long, objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long, std::piecewise_construct_t const&, std::tuple<unsigned long long &&>, std::tuple<>>(a3, &v20)[3]}];
  v13 = *(*a1)++;
  [v7 setResolveLevel:v13];
  v14 = *(*a1)++;
  [v7 setResolveSlice:v14];
  v15 = *(*a1)++;
  [v7 setResolveDepthPlane:v15];
  v16 = *(*a1)++;
  [v7 setLoadAction:v16];
  v17 = *(*a1)++;
  [v7 setStoreAction:v17];
  if (a4 >= 0x13)
  {
    v18 = objc_opt_respondsToSelector();
    v19 = (*a1)++;
    if (v18)
    {
      [v7 setStoreActionOptions:*v19];
    }
  }
}

void *std::vector<MTLSamplePosition>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_24D6F7C1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<objc_object  {objcproto10MTLTexture}* {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<objc_object  {objcproto10MTLTexture}* {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto10MTLTexture}* {__strong}>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<objc_object  {objcproto10MTLTexture}* {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,objc_object * {__strong}>(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_24D6F805C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_24D6F87C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  _Block_object_dispose((v17 - 80), 8);

  _Unwind_Resume(a1);
}

void std::vector<DYMTLImageBlockArgument *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<DYMTLImageBlockArgument *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
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

uint64_t std::vector<DYMTLImageBlockMember>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = std::vector<DYMTLImageBlockMember>::__emplace_back_slow_path<DYMTLImageBlockMember const&>(a1, a2);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    v5 = *(a2 + 32);
    *(v4 + 16) = *(a2 + 16);
    *(v4 + 32) = v5;
    result = v4 + 40;
  }

  *(a1 + 8) = result;
  return result;
}

void *std::vector<DYMTLImageBlockArgument *>::__assign_with_size[abi:ne200100]<DYMTLImageBlockArgument **,DYMTLImageBlockArgument **>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<DYMTLImageBlockArgument *>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<DYMTLImageBlockArgument *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<DYMTLImageBlockArgument *>>(a1, a2);
  }

  std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<DYMTLImageBlockArgument *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<DYMTLImageBlockMember>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 40)
  {

    v5 = *(i - 40);
  }

  *(a1 + 8) = a2;
}

uint64_t std::vector<DYMTLImageBlockMember>::__emplace_back_slow_path<DYMTLImageBlockMember const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<DYMTLImageBlockMember>>(a1, v6);
  }

  v7 = 40 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  v8 = *(a2 + 32);
  *(v7 + 16) = *(a2 + 16);
  *(v7 + 32) = v8;
  *&v17 = v7 + 40;
  v9 = *(a1 + 8);
  v10 = v7 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DYMTLImageBlockMember>,DYMTLImageBlockMember*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<DYMTLImageBlockMember>::~__split_buffer(&v15);
  return v14;
}

void sub_24D6FBB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<DYMTLImageBlockMember>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<DYMTLImageBlockMember>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DYMTLImageBlockMember>,DYMTLImageBlockMember*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *v4 = 0;
      v4[1] = 0;
      *a4 = v5;
      v6 = *(v4 + 1);
      *(a4 + 32) = v4[4];
      *(a4 + 16) = v6;
      v4 += 5;
      a4 += 40;
    }

    while (v4 != a3);
    v11 = a4;
  }

  v9 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<DYMTLImageBlockMember>,DYMTLImageBlockMember*,DYMTLImageBlockMember*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DYMTLImageBlockMember>,DYMTLImageBlockMember*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<DYMTLImageBlockMember>,DYMTLImageBlockMember*,DYMTLImageBlockMember*>(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v5 = *v4;
      v4 += 5;
    }

    while (v4 != a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DYMTLImageBlockMember>,DYMTLImageBlockMember*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<DYMTLImageBlockMember>,std::reverse_iterator<DYMTLImageBlockMember*>,std::reverse_iterator<DYMTLImageBlockMember*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<DYMTLImageBlockMember>,std::reverse_iterator<DYMTLImageBlockMember*>,std::reverse_iterator<DYMTLImageBlockMember*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v7 = *(v6 - 40);
      v6 -= 40;
    }

    while (v6 != a5);
  }
}

uint64_t std::__split_buffer<DYMTLImageBlockMember>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<DYMTLImageBlockMember>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<DYMTLImageBlockMember>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
  }
}

id ShaderDebuggerMDSerializerLLVM3XXXBridge_Serialize(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v69[21] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v35 = a2;
  v33 = a3;
  v62 = 0;
  *v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0;
  v68[0] = v69;
  v68[1] = 0x400000000;
  v36 = v7;
  MEMORY[0x253031B60](v57);
  v54 = 0;
  v55 = 0;
  v56 = 0;
  memset(v52, 0, sizeof(v52));
  v53 = 1065353216;
  v8 = [v7 count];
  if (!v8)
  {
LABEL_19:
    v46[0] = 0;
    v46[1] = 0;
    v45 = v46;
    v47 = 0u;
    v48 = 0u;
    v49 = 1065353216;
    v50 = 0;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v23 = v33;
    v24 = [v23 countByEnumeratingWithState:&v41 objects:v58 count:16];
    if (v24)
    {
      v25 = *v42;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v42 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v41 + 1) + 8 * i);
          v28 = [v23 objectForKeyedSubscript:v27];
          v29 = v27;
          std::string::basic_string[abi:ne200100]<0>(&v39, [v27 UTF8String]);
          v30 = v28;
          std::string::basic_string[abi:ne200100]<0>(__p, [v28 UTF8String]);
          ShaderDebugger::Metadata::MDSerializer::addReferencedSourceFile(&v45, &v39, __p);
          if (v38 < 0)
          {
            operator delete(__p[0]);
          }

          if (v40 < 0)
          {
            operator delete(v39);
          }
        }

        v24 = [v23 countByEnumeratingWithState:&v41 objects:v58 count:16];
      }

      while (v24);
    }

    __p[0] = 0;
    ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeModules(&v45);
  }

  v9 = 0;
  while (1)
  {
    v10 = [v36 objectAtIndexedSubscript:v9];
    v11 = v10;
    [v10 bytes];
    [v10 length];
    llvm::MemoryBuffer::getMemBuffer();
    llvm::MemoryBuffer::getMemBufferRef(&v45, v39);
    llvm::parseIR();
    v12 = __p[0];
    if (__p[0])
    {
      v51 = (v55 - v54) >> 3;
      std::vector<std::unique_ptr<llvm::Module>>::push_back[abi:ne200100](&v54, __p);
      v13 = [v35 objectAtIndexedSubscript:v9];
      v14 = [MEMORY[0x277CBEB68] null];
      v15 = v13 == v14;

      if (!v15)
      {
        v16 = v13;
        v17 = [v13 UTF8String];
        v45 = &v51;
        v18 = std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v52, &v51);
        MEMORY[0x253031ED0](v18 + 3, v17);
      }
    }

    else
    {
      if ((SBYTE7(v64) & 0x80u) == 0)
      {
        v19 = &v63;
      }

      else
      {
        v19 = v63;
      }

      if ((SBYTE7(v64) & 0x80u) == 0)
      {
        v20 = SBYTE7(v64);
      }

      else
      {
        v20 = *(&v63 + 1);
      }

      v21 = objc_alloc(MEMORY[0x277CCACA8]);
      v13 = [v21 initWithBytes:v19 length:v20 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
      if (a5)
      {
        *a5 = GTShaderDebuggerMDSerializerError(1u, v13);
      }
    }

    std::unique_ptr<llvm::Module>::~unique_ptr[abi:ne200100](__p);
    v22 = v39;
    v39 = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    if (!v12)
    {
      break;
    }

    if (v8 == ++v9)
    {
      goto LABEL_19;
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::~__hash_table(v52);
  v45 = &v54;
  std::vector<std::unique_ptr<llvm::Module>>::__destroy_vector::operator()[abi:ne200100](&v45);
  llvm::LLVMContext::~LLVMContext(v57);
  llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(v68);
  if (v66)
  {
    *(&v66 + 1) = v66;
    operator delete(v66);
  }

  if (SHIBYTE(v65) < 0)
  {
    operator delete(*(&v64 + 1));
  }

  if (SBYTE7(v64) < 0)
  {
    operator delete(v63);
  }

  if (SBYTE7(v61) < 0)
  {
    operator delete(v60[0]);
  }

  v31 = *MEMORY[0x277D85DE8];

  return 0;
}

void sub_24D6FC2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  ShaderDebugger::Metadata::MDSerializer::~MDSerializer(&a29);
  std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::~__hash_table(&a39);
  a39 = &a44;
  std::vector<std::unique_ptr<llvm::Module>>::__destroy_vector::operator()[abi:ne200100](&a39);
  llvm::LLVMContext::~LLVMContext(&a47);
  llvm::SMDiagnostic::~SMDiagnostic(&a65);

  _Unwind_Resume(a1);
}

id GTShaderDebuggerMDSerializerError(unsigned int a1, NSString *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = MEMORY[0x277CCA9B8];
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = &stru_2860B3350;
  }

  v11 = *MEMORY[0x277CCA450];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v5 errorWithDomain:@"GTShaderDebuggerMDSerializerErrorDomain" code:a1 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t *std::vector<std::unique_ptr<llvm::Module>>::push_back[abi:ne200100](uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<DYMTLImageBlockArgument *>>(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::unique_ptr<llvm::Module>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

uint64_t *std::unique_ptr<llvm::Module>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x253031BB0]();
    MEMORY[0x253031F40](v3, 0x10B2C407FF26C1CLL);
  }

  return a1;
}

void llvm::SMDiagnostic::~SMDiagnostic(llvm::SMDiagnostic *this)
{
  llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(this + 128);
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

id ShaderDebuggerMDSerializerLLVM3XXXBridge_Serialize(void *a1, void *a2)
{
  v55[21] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v48 = 0;
  *v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0;
  v54[0] = v55;
  v54[1] = 0x400000000;
  MEMORY[0x253031B60](v42);
  memset(v41, 0, sizeof(v41));
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (!v6)
  {
LABEL_11:

    v32[0] = 0;
    v32[1] = 0;
    v31 = v32;
    v33 = 0u;
    v34 = 0u;
    v35 = 1065353216;
    v36 = 0;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = v4;
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v43 count:16];
    if (v13)
    {
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          v17 = [v12 objectForKeyedSubscript:v16];
          v18 = v16;
          std::string::basic_string[abi:ne200100]<0>(&v25, [v16 UTF8String]);
          v19 = v17;
          std::string::basic_string[abi:ne200100]<0>(__p, [v17 UTF8String]);
          ShaderDebugger::Metadata::MDSerializer::addReferencedSourceFile(&v31, &v25, __p);
          if (v24 < 0)
          {
            operator delete(__p[0]);
          }

          if (v26 < 0)
          {
            operator delete(v25);
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v27 objects:v43 count:16];
      }

      while (v13);
    }

    __p[0] = 0;
    ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeModules(&v31);
  }

  v7 = *v38;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v38 != v7)
    {
      objc_enumerationMutation(v5);
    }

    v9 = *(*(&v37 + 1) + 8 * v8);
    v10 = v9;
    [v9 bytes];
    [v9 length];
    llvm::MemoryBuffer::getMemBuffer();
    llvm::MemoryBuffer::getMemBufferRef(&v31, v25);
    llvm::parseIR();
    if (!__p[0])
    {
      break;
    }

    std::vector<std::unique_ptr<llvm::Module>>::push_back[abi:ne200100](v41, __p);
    std::unique_ptr<llvm::Module>::~unique_ptr[abi:ne200100](__p);
    v11 = v25;
    v25 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    if (v6 == ++v8)
    {
      v6 = [v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
      if (!v6)
      {
        goto LABEL_11;
      }

      goto LABEL_3;
    }
  }

  std::unique_ptr<llvm::Module>::~unique_ptr[abi:ne200100](__p);
  v20 = v25;
  v25 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v31 = v41;
  std::vector<std::unique_ptr<llvm::Module>>::__destroy_vector::operator()[abi:ne200100](&v31);
  llvm::LLVMContext::~LLVMContext(v42);
  llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(v54);
  if (v52)
  {
    *(&v52 + 1) = v52;
    operator delete(v52);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(*(&v50 + 1));
  }

  if (SBYTE7(v50) < 0)
  {
    operator delete(v49);
  }

  if (SBYTE7(v47) < 0)
  {
    operator delete(v46[0]);
  }

  v21 = *MEMORY[0x277D85DE8];

  return 0;
}

void sub_24D6FCB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, char a46)
{
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  ShaderDebugger::Metadata::MDSerializer::~MDSerializer(&a25);
  __p = &a43;
  std::vector<std::unique_ptr<llvm::Module>>::__destroy_vector::operator()[abi:ne200100](&__p);
  llvm::LLVMContext::~LLVMContext(&a46);
  llvm::SMDiagnostic::~SMDiagnostic(&STACK[0x230]);

  _Unwind_Resume(a1);
}

uint64_t llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 40 * v3 - 24;
    v5 = -40 * v3;
    do
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v4 -= 40;
      v5 += 40;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void std::vector<std::unique_ptr<llvm::Module>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::unique_ptr<llvm::Module>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<llvm::Module>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<llvm::Module>::~unique_ptr[abi:ne200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
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

void sub_24D6FD188(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void std::vector<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 48 * a2;
  }
}

unint64_t anonymous namespace::AverageValue(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a1;
  if (v4 == v3)
  {
    return 0;
  }

  if ((v3 - v4) <= 0x10)
  {
    return *v4;
  }

  std::__sort<std::__less<unsigned long long,unsigned long long> &,unsigned long long *>();
  v6 = 0;
  v7 = *a1;
  v8 = (*(a1 + 1) - *a1) >> 3;
  v9 = (v8 + 2) / 3uLL;
  v10 = v8 - v9;
  if (v10 <= v9 + 1)
  {
    v10 = v9 + 1;
  }

  v11 = (v7 + 8 * v10);
  v12 = 8 * v10 - 8 * v9;
  v13 = (v7 + 8 * v9);
  do
  {
    v14 = *v13++;
    v6 += v14;
  }

  while (v13 != v11);
  return (v6 + (v12 >> 3) - 1) / (v12 >> 3);
}

void std::vector<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>::resize(void *a1, unint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 56 * a2;
  }
}

void sub_24D6FEF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__tree<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__map_value_compare<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::less<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::destroy(&a70, a71);

  _Unwind_Resume(a1);
}

void sub_24D7008D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  _Block_object_dispose((v14 - 152), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__85(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__86(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_24D700B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24D700EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  _Block_object_dispose(&a26, 8);

  _Block_object_dispose((v32 - 152), 8);
  v34 = *(v32 - 104);
  if (v34)
  {
    *(v32 - 96) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

void sub_24D701DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  std::__tree<DYMTLIABDecodingOp>::destroy(&a67, a68);

  _Unwind_Resume(a1);
}

void _ZZZ141__DYMTLDebugPlaybackEngineCounterSupport__profileFrameWithCounterListsForProfileInfoAsync_encoderPass_updateStatSampling_setConsistentState__EUb_ENK3__0clEb(uint64_t a1, char a2)
{
  if (*(**a1 + 104))
  {
    return;
  }

  v23 = [**(a1 + 8) objectForKeyedSubscript:@"perEncoderIndexDrawCallCount"];
  if ((**(a1 + 16) & 1) == 0)
  {
    if ((a2 & 1) == 0)
    {
      ++**(a1 + 24);
    }

    v4 = [**(a1 + 32) count];
    while (1)
    {
      while (1)
      {
        v5 = **(a1 + 40);
        if (v5 >= [**(a1 + 48) count])
        {
          goto LABEL_3;
        }

        v6 = [**(a1 + 48) objectAtIndexedSubscript:**(a1 + 40)];
        v7 = [v6 unsignedIntegerValue];

        if (**(a1 + 24) != v7)
        {
          goto LABEL_3;
        }

        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
        v9 = [v23 objectForKeyedSubscript:v8];
        v10 = [v9 unsignedIntegerValue];

        if (**(a1 + 56))
        {
          v10 = v10 != 0;
        }

        if (a2)
        {
          break;
        }

        ++**(a1 + 24);
        if (!v10)
        {
          goto LABEL_24;
        }

        v11 = objc_opt_new();
        v12 = *(a1 + 64);
        v13 = *v12;
        *v12 = v11;

        [**(a1 + 72) addObject:**(a1 + 64)];
LABEL_18:
        for (i = 0; i != v10; ++i)
        {
          v15 = objc_opt_new();
          for (j = v4; j; --j)
          {
            [v15 addObject:&unk_2860BA180];
          }

          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(**(a1 + 88), "count") - 1}];
          [v15 setObject:v17 atIndexedSubscript:**(a1 + 80)];

          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(**(a1 + 72), "count") - 1}];
          [v15 setObject:v18 atIndexedSubscript:**(a1 + 96)];

          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(**(a1 + 64), "count")}];
          [v15 setObject:v19 atIndexedSubscript:**(a1 + 104)];

          [**(a1 + 64) addObject:v15];
        }

        ++**(a1 + 40);
        if (a2)
        {
          ++**(a1 + 24);
          v20 = objc_opt_new();
          v21 = *(a1 + 64);
          v22 = *v21;
          *v21 = v20;

          [**(a1 + 72) addObject:**(a1 + 64)];
        }
      }

      if (v10)
      {
        goto LABEL_18;
      }

LABEL_24:
      ++**(a1 + 40);
    }
  }

LABEL_3:
}