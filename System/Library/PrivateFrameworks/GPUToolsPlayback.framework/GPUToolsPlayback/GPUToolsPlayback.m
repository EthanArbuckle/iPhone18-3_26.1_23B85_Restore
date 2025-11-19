void std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>>(a1, v10);
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

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_24D6CA670(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
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

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
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

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_24D6CB228(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_24D6CB2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = DYMTLFunctionPlayer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_24D6CBD60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38)
{
  AutoPerfStatSamplingControl::~AutoPerfStatSamplingControl((v44 - 168));

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose_(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void DecodeRGB10A8_2P_XR10(void *a1, uint64_t a2)
{
  v14 = a1;
  v3 = [v14 iosurface];
  IOSurfaceLock(v3, 0, 0);
  PlaneCount = IOSurfaceGetPlaneCount(v3);
  if (PlaneCount)
  {
    v5 = 0;
    for (i = 0; i != PlaneCount; ++i)
    {
      HeightOfPlane = IOSurfaceGetHeightOfPlane(v3, i);
      WidthOfPlane = IOSurfaceGetWidthOfPlane(v3, i);
      BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(v3, i);
      BytesPerElementOfPlane = IOSurfaceGetBytesPerElementOfPlane(v3, i);
      BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(v3, i);
      if (HeightOfPlane)
      {
        v12 = BaseAddressOfPlane;
        v13 = BytesPerElementOfPlane * WidthOfPlane;
        do
        {
          memcpy(v12, (a2 + v5), v13);
          v5 += v13;
          v12 += BytesPerRowOfPlane;
          --HeightOfPlane;
        }

        while (HeightOfPlane);
      }
    }
  }

  IOSurfaceUnlock(v3, 0, 0);
}

void GPUTools::MTL::Utils::DYMTLDeviceDescriptor::~DYMTLDeviceDescriptor(GPUTools::MTL::Utils::DYMTLDeviceDescriptor *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
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

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void sub_24D6CD4EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  AutoPerfStatSamplingControl::~AutoPerfStatSamplingControl(va);
  _Unwind_Resume(a1);
}

objc_object *DYMTLGetOriginalObject(objc_object *a1)
{
  v1 = a1;
  Uid = sel_getUid("baseObject");
  while ((objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = ([(objc_object *)v1 methodForSelector:Uid])(v1, Uid);

    v1 = v3;
  }

  return v1;
}

uint64_t AutoPerfStatSamplingControl::AutoPerfStatSamplingControl(uint64_t a1, void *a2)
{
  v4 = a2;
  *(a1 + 16) = 0;
  objc_storeStrong((a1 + 16), a2);
  v5 = [*(a1 + 16) isStatEnabled];
  *(a1 + 8) = v5;
  *a1 = 0;
  if (v5)
  {
    *a1 = [*(a1 + 16) getStatLocations];
    [*(a1 + 16) setStatLocations:0];
  }

  return a1;
}

void AutoPerfStatSamplingControl::~AutoPerfStatSamplingControl(id *this)
{
  if (*(this + 8) == 1)
  {
    [this[2] setStatLocations:*this];
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void sub_24D6CE528(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
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

void std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
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

void std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(void *a1, unint64_t *a2)
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
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
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

      result = *result;
    }

    while (result);
  }

  return result;
}

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
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == v3)
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

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,objc_object  {objcproto9MTLDevice}* {__strong}>>(void *a1, unint64_t *a2)
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

void sub_24D6CE924(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void sub_24D6CEB80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__erase_unique<unsigned long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t *a2)
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

uint64_t std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24D6CEFAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, a2);
  }

  std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__hash_table<std::__hash_value_type<void *,unsigned long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void * const&>,std::tuple<>>(void *a1, void *a2)
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void sub_24D6CF4FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 22);
  if (v2)
  {
    if (*(a1 + 20) > a2)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (a2)
  {
    return 0;
  }

LABEL_5:
  switch(*(a1 + 8))
  {
    case 1:
      return *(*a1 + a2);
    case 2:
      return *(*a1 + a2);
    case 3:
      return *(*a1 + 2 * a2);
    case 4:
      return *(*a1 + 2 * a2);
    case 5:
      v5 = *(a1 + 12);
      result = *(*a1 + 4 * a2);
      if (v5 != 19)
      {
        return result;
      }

      v4 = vcvtd_n_f64_s32(result, 0x10uLL);
LABEL_10:
      result = v4;
      break;
    case 6:
      return *(*a1 + 4 * a2);
    case 7:
    case 8:
    case 0xB:
    case 0xC:
      return *(*a1 + 8 * a2);
    case 9:
      return *(*a1 + 4 * a2);
    case 0xA:
      v4 = *(*a1 + 8 * a2);
      goto LABEL_10;
    case 0xD:
      if ((v2 & 0x10) == 0)
      {
        return 0;
      }

      return GPUTools::FD::Argument::ViewAsGLObjectName(a1);
    default:
      return 0;
  }

  return result;
}

uint64_t GPUTools::FD::Argument::ViewAsScalarArray<unsigned int>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 22);
  if (v2)
  {
    if (*(a1 + 20) > a2)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (a2)
  {
    return 0;
  }

LABEL_5:
  switch(*(a1 + 8))
  {
    case 1:
      return *(*a1 + a2);
    case 2:
      return *(*a1 + a2);
    case 3:
      return *(*a1 + 2 * a2);
    case 4:
      return *(*a1 + 2 * a2);
    case 5:
      v5 = *(a1 + 12);
      result = *(*a1 + 4 * a2);
      if (v5 != 19)
      {
        return result;
      }

      v4 = vcvtd_n_f64_s32(result, 0x10uLL);
LABEL_14:
      result = v4;
      break;
    case 6:
      return *(*a1 + 4 * a2);
    case 7:
    case 0xB:
    case 0xC:
      return *(*a1 + 8 * a2);
    case 8:
      return *(*a1 + 8 * a2);
    case 9:
      return *(*a1 + 4 * a2);
    case 0xA:
      v4 = *(*a1 + 8 * a2);
      goto LABEL_14;
    case 0xD:
      if ((v2 & 0x10) == 0)
      {
        return 0;
      }

      return GPUTools::FD::Argument::ViewAsGLObjectName(a1);
    default:
      return 0;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

__n64 GPUTools::FD::Argument::ViewAsScalarArray<double>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 22);
  if (v2)
  {
    result.n64_f64[0] = 0.0;
    if (*(a1 + 20) <= a2)
    {
      return result;
    }
  }

  else
  {
    result.n64_f64[0] = 0.0;
    if (a2)
    {
      return result;
    }
  }

  switch(*(a1 + 8))
  {
    case 1:
      v6 = *(*a1 + a2);
      goto LABEL_17;
    case 2:
      result.n64_u8[0] = *(*a1 + a2);
      goto LABEL_21;
    case 3:
      v6 = *(*a1 + 2 * a2);
LABEL_17:
      result.n64_f64[0] = v6;
      return result;
    case 4:
      result.n64_u16[0] = *(*a1 + 2 * a2);
      goto LABEL_21;
    case 5:
      v4 = *(*a1 + 4 * a2);
      result.n64_f64[0] = v4;
      v5.n64_f64[0] = vcvtd_n_f64_s32(v4, 0x10uLL);
      if (*(a1 + 12) == 19)
      {
        return v5;
      }

      return result;
    case 6:
      result.n64_u32[0] = *(*a1 + 4 * a2);
      goto LABEL_21;
    case 7:
    case 0xB:
      result.n64_f64[0] = *(*a1 + 8 * a2);
      return result;
    case 8:
    case 0xC:
      result.n64_u64[0] = *(*a1 + 8 * a2);
LABEL_21:
      result.n64_f64[0] = result.n64_u64[0];
      break;
    case 9:
      result.n64_f64[0] = *(*a1 + 4 * a2);
      break;
    case 0xA:
      result.n64_u64[0] = *(*a1 + 8 * a2);
      break;
    case 0xD:
      if ((v2 & 0x10) != 0)
      {
        result.n64_f64[0] = GPUTools::FD::Argument::ViewAsGLObjectName(a1);
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t GPUTools::FD::Argument::ViewAsScalarArray<long long>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 22);
  if (v2)
  {
    if (*(a1 + 20) > a2)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (a2)
  {
    return 0;
  }

LABEL_5:
  switch(*(a1 + 8))
  {
    case 1:
      return *(*a1 + a2);
    case 2:
      return *(*a1 + a2);
    case 3:
      return *(*a1 + 2 * a2);
    case 4:
      return *(*a1 + 2 * a2);
    case 5:
      v5 = *(a1 + 12);
      result = *(*a1 + 4 * a2);
      if (v5 != 19)
      {
        return result;
      }

      v4 = vcvtd_n_f64_s32(result, 0x10uLL);
LABEL_10:
      result = v4;
      break;
    case 6:
      return *(*a1 + 4 * a2);
    case 7:
    case 8:
    case 0xB:
    case 0xC:
      return *(*a1 + 8 * a2);
    case 9:
      return *(*a1 + 4 * a2);
    case 0xA:
      v4 = *(*a1 + 8 * a2);
      goto LABEL_10;
    case 0xD:
      if ((v2 & 0x10) == 0)
      {
        return 0;
      }

      return GPUTools::FD::Argument::ViewAsGLObjectName(a1);
    default:
      return 0;
  }

  return result;
}

unint64_t GPUTools::FD::Argument::ViewAsScalarArray<MTLPixelFormat>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 22);
  if (v2)
  {
    if (*(a1 + 20) > a2)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (a2)
  {
    return 0;
  }

LABEL_5:
  switch(*(a1 + 8))
  {
    case 1:
      return *(*a1 + a2);
    case 2:
      return *(*a1 + a2);
    case 3:
      return *(*a1 + 2 * a2);
    case 4:
      return *(*a1 + 2 * a2);
    case 5:
      v5 = *(a1 + 12);
      result = *(*a1 + 4 * a2);
      if (v5 != 19)
      {
        return result;
      }

      v4 = vcvtd_n_f64_s32(result, 0x10uLL);
LABEL_10:
      result = v4;
      break;
    case 6:
      return *(*a1 + 4 * a2);
    case 7:
    case 8:
    case 0xB:
    case 0xC:
      return *(*a1 + 8 * a2);
    case 9:
      return *(*a1 + 4 * a2);
    case 0xA:
      v4 = *(*a1 + 8 * a2);
      goto LABEL_10;
    case 0xD:
      if ((v2 & 0x10) == 0)
      {
        return 0;
      }

      return GPUTools::FD::Argument::ViewAsGLObjectName(a1);
    default:
      return 0;
  }

  return result;
}

BOOL GPUTools::FD::Argument::ViewAsScalarArray<BOOL>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 22);
  if (v2)
  {
    if (*(a1 + 20) > a2)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (a2)
  {
    return 0;
  }

LABEL_5:
  switch(*(a1 + 8))
  {
    case 1:
    case 2:
      v4 = *(*a1 + a2);
      goto LABEL_16;
    case 3:
    case 4:
      v4 = *(*a1 + 2 * a2);
      goto LABEL_16;
    case 5:
      v4 = *(*a1 + 4 * a2);
      if (*(a1 + 12) != 19)
      {
        goto LABEL_16;
      }

      v5 = vcvtd_n_f64_s32(v4, 0x10uLL);
      goto LABEL_12;
    case 6:
      v4 = *(*a1 + 4 * a2);
LABEL_16:
      v3 = v4 == 0;
      goto LABEL_17;
    case 7:
    case 8:
    case 0xB:
    case 0xC:
      v3 = *(*a1 + 8 * a2) == 0;
      goto LABEL_17;
    case 9:
      v3 = *(*a1 + 4 * a2) == 0.0;
      goto LABEL_17;
    case 0xA:
      v5 = *(*a1 + 8 * a2);
LABEL_12:
      v3 = v5 == 0.0;
LABEL_17:
      result = !v3;
      break;
    case 0xD:
      if ((v2 & 0x10) == 0)
      {
        return 0;
      }

      result = GPUTools::FD::Argument::ViewAsGLObjectName(a1) != 0;
      break;
    default:
      return 0;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto15CAMetalDrawable}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(void *a1, unint64_t *a2)
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

void sub_24D6D107C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,BOOL>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto15CAMetalDrawable}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::piecewise_construct_t const&<>>(void *a1, unint64_t *a2)
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

void sub_24D6D150C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t GPUTools::FD::Argument::ViewAsScalarArray<int>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 22);
  if (v2)
  {
    if (*(a1 + 20) > a2)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (a2)
  {
    return 0;
  }

LABEL_5:
  switch(*(a1 + 8))
  {
    case 1:
      return *(*a1 + a2);
    case 2:
      return *(*a1 + a2);
    case 3:
      return *(*a1 + 2 * a2);
    case 4:
      return *(*a1 + 2 * a2);
    case 5:
      v5 = *(a1 + 12);
      result = *(*a1 + 4 * a2);
      if (v5 != 19)
      {
        return result;
      }

      v4 = vcvtd_n_f64_s32(result, 0x10uLL);
LABEL_14:
      result = v4;
      break;
    case 6:
      return *(*a1 + 4 * a2);
    case 7:
    case 0xB:
    case 0xC:
      return *(*a1 + 8 * a2);
    case 8:
      return *(*a1 + 8 * a2);
    case 9:
      return *(*a1 + 4 * a2);
    case 0xA:
      v4 = *(*a1 + 8 * a2);
      goto LABEL_14;
    case 0xD:
      if ((v2 & 0x10) == 0)
      {
        return 0;
      }

      return GPUTools::FD::Argument::ViewAsGLObjectName(a1);
    default:
      return 0;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,BOOL>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,BOOL>>>::~__hash_table(uint64_t a1)
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

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
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

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void DYMTLEncodeIndirectCommandBuffer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v8 = a1;
  v9 = a6;
  if (*a2 <= 0xFuLL)
  {
    v120 = v8;
    v132 = v8;
    v119 = v9;
    v10 = v9;
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v140 = 0u;
    GPUTools::MTL::Utils::DYMTLCreateIndirectCommandEncoder(a2, &v140);
    if (a3)
    {
      v11 = 0;
      while (1)
      {
        v12 = (a4 + *(&v146 + 1) * v11);
        v13 = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::commandType(&v140, v12);
        v14 = [v132 indirectRenderCommandAtIndex:v11];
        v15 = v14;
        if (v13 > 1)
        {
          break;
        }

        if (v13)
        {
          if (v13 == 1)
          {
            v36 = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::drawArguments(&v140, v12);
            [v15 drawPrimitives:*v36 vertexStart:*(v36 + 1) vertexCount:*(v36 + 2) instanceCount:*(v36 + 3) baseInstance:*(v36 + 4)];
          }

          goto LABEL_33;
        }

        [v14 reset];
LABEL_46:

        if (++v11 == a3)
        {
          goto LABEL_72;
        }
      }

      if (v13 == 2)
      {
        v37 = v12;
        v38 = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::drawIndexedArguments(&v140, v12);
        v39 = [v10 bufferIdAndOffsetForGPUVirtualAddress:*(v38 + 3)];
        v41 = v40;
        v42 = GetObjectForKey(a5, v39);
        v35 = DYMTLGetOriginalObject(v42);

        if (v35)
        {
          v43 = *(v38 + 5);
          [v15 drawIndexedPrimitives:*v38 indexCount:*(v38 + 1) indexType:*(v38 + 2) indexBuffer:v35 indexBufferOffset:v41 instanceCount:*(v38 + 4) baseVertex:v43 baseInstance:*(v38 + 6)];
          v12 = v37;
        }

        else
        {
          [v15 reset];
          v12 = v37;
          v35 = 0;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v44 = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::drawPatchesArguments(&v140, v12);
          v45 = [v10 bufferIdAndOffsetForGPUVirtualAddress:*(v44 + 3)];
          v47 = v46;
          v48 = GetObjectForKey(a5, v45);
          v125 = v47;
          v129 = v12;
          v49 = DYMTLGetOriginalObject(v48);

          v127 = v49;
          v50 = v49 == 0;
          v51 = v45 != 0;
          TessellationFactorArguments = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::getTessellationFactorArguments(&v140, v129);
          v53 = [v10 bufferIdAndOffsetForGPUVirtualAddress:*TessellationFactorArguments];
          v123 = v54;
          v55 = GetObjectForKey(a5, v53);
          v26 = DYMTLGetOriginalObject(v55);
          v56 = v51 ^ v50;

          if (v26)
          {
            v57 = v56;
          }

          else
          {
            v57 = 0;
          }

          if (v57 == 1)
          {
            v58 = *v44;
            v59 = *(v44 + 1);
            v60 = *(v44 + 2);
            v61 = *(v44 + 4);
            v117 = *(v44 + 5);
            v35 = v127;
            [v15 drawPatches:v58 patchStart:v59 patchCount:v60 patchIndexBuffer:v127 patchIndexBufferOffset:v125 instanceCount:v61 baseInstance:v117 tessellationFactorBuffer:v26 tessellationFactorBufferOffset:v123 tessellationFactorBufferInstanceStride:*(TessellationFactorArguments + 1)];
          }

          else
          {
            v35 = v127;
            [v15 reset];
          }

          v12 = v129;
        }

        else
        {
          if (v13 != 8)
          {
LABEL_33:
            if ((*(a2 + 9) & 1) == 0)
            {
              v62 = [v10 renderPipelineIdForUniqueIdentifier:{GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::getPipelineStateUniqueIdentifier(&v140, v12)}];
              v63 = GetObjectForKey(a5, v62);
              v64 = DYMTLGetOriginalObject(v63);

              [v15 setRenderPipelineState:v64];
            }

            if ((*(a2 + 8) & 1) == 0)
            {
              v65 = v12;
              VertexBuffers = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::getVertexBuffers(&v140, v12);
              v67 = *(a2 + 16);
              if (v67)
              {
                v68 = VertexBuffers;
                for (i = 0; i < v67; ++i)
                {
                  if (*&v68[8 * i])
                  {
                    v70 = [v10 bufferIdAndOffsetForGPUVirtualAddress:?];
                    v72 = v71;
                    v73 = GetObjectForKey(a5, v70);
                    v74 = DYMTLGetOriginalObject(v73);

                    [v15 setVertexBuffer:v74 offset:v72 atIndex:i];
                    v67 = *(a2 + 16);
                  }
                }
              }

              FragmentBuffers = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::getFragmentBuffers(&v140, v65);
              v76 = *(a2 + 24);
              if (v76)
              {
                v77 = FragmentBuffers;
                for (j = 0; j < v76; ++j)
                {
                  if (*&v77[8 * j])
                  {
                    v79 = [v10 bufferIdAndOffsetForGPUVirtualAddress:?];
                    v81 = v80;
                    v82 = GetObjectForKey(a5, v79);
                    v83 = DYMTLGetOriginalObject(v82);

                    [v15 setFragmentBuffer:v83 offset:v81 atIndex:j];
                    v76 = *(a2 + 24);
                  }
                }
              }
            }

            goto LABEL_46;
          }

          v124 = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::drawIndexedPatchesArguments(&v140, v12);
          v16 = [v10 bufferIdAndOffsetForGPUVirtualAddress:*(v124 + 3)];
          v18 = v17;
          v19 = GetObjectForKey(a5, v16);
          v128 = v12;
          v20 = DYMTLGetOriginalObject(v19);

          v126 = v20;
          v21 = [v10 bufferIdAndOffsetForGPUVirtualAddress:*(v124 + 4)];
          v122 = v22;
          v23 = GetObjectForKey(a5, v21);
          v24 = DYMTLGetOriginalObject(v23);
          v121 = v18;
          v25 = (v16 != 0) ^ (v20 == 0);

          v26 = v24;
          if (v24)
          {
            v27 = v25;
          }

          else
          {
            v27 = 0;
          }

          v28 = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::getTessellationFactorArguments(&v140, v128);
          v29 = [v10 bufferIdAndOffsetForGPUVirtualAddress:*v28];
          v31 = v30;
          v32 = GetObjectForKey(a5, v29);
          v33 = DYMTLGetOriginalObject(v32);

          if (v33)
          {
            v34 = v27;
          }

          else
          {
            v34 = 0;
          }

          if (v34 == 1)
          {
            v118 = v31;
            v35 = v126;
            [v15 drawIndexedPatches:*v124 patchStart:*(v124 + 1) patchCount:*(v124 + 2) patchIndexBuffer:v126 patchIndexBufferOffset:v121 controlPointIndexBuffer:v26 controlPointIndexBufferOffset:v122 instanceCount:*(v124 + 5) baseInstance:*(v124 + 6) tessellationFactorBuffer:v33 tessellationFactorBufferOffset:v118 tessellationFactorBufferInstanceStride:*(v28 + 1)];
          }

          else
          {
            v35 = v126;
            [v15 reset];
          }

          v12 = v128;
        }
      }

      goto LABEL_33;
    }

    goto LABEL_72;
  }

  if ((*a2 & 0xFFFFFFFFFFFFFF9FLL) == 0)
  {
    v120 = v8;
    v84 = v8;
    v119 = v9;
    v133 = v9;
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v140 = 0u;
    GPUTools::MTL::Utils::DYMTLCreateIndirectCommandEncoder(a2, &v140);
    if (!a3)
    {
LABEL_72:
      v9 = v119;

      v8 = v120;
      goto LABEL_73;
    }

    v85 = 0;
    while (1)
    {
      v86 = (a4 + *(&v146 + 1) * v85);
      v87 = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::commandType(&v140, v86);
      v88 = [v84 indirectComputeCommandAtIndex:v85];
      v89 = v88;
      if (v87 == 64)
      {
        break;
      }

      if (v87 == 32)
      {
        v90 = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::concurrentDispatchThreadgroupsArguments(&v140, v86);
        v91 = *(v90 + 2);
        v135 = *v90;
        *&v136 = v91;
        v92 = *(v90 + 5);
        v138 = *(v90 + 24);
        v139 = v92;
        [v89 concurrentDispatchThreadgroups:&v135 threadsPerThreadgroup:&v138];
        v93 = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::indirectDispatchArguments(&v140, v86);
        v94 = *(v93 + 1);
        v95 = *(v93 + 2);
        v135 = *v93;
        v136 = v94;
        v137 = v95;
        [v89 setStageInRegion:&v135];
        if (v93[64] == 1)
        {
LABEL_59:
          [v89 setBarrier];
        }

LABEL_60:
        if ((*(a2 + 9) & 1) == 0)
        {
          v102 = [v133 computePipelineIdForUniqueIdentifier:{GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::getPipelineStateUniqueIdentifier(&v140, v86)}];
          v103 = GetObjectForKey(a5, v102);
          v104 = DYMTLGetOriginalObject(v103);

          [v89 setComputePipelineState:v104];
        }

        if ((*(a2 + 8) & 1) == 0)
        {
          KernelBuffers = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::getKernelBuffers(&v140, v86);
          v106 = *(a2 + 48);
          if (v106)
          {
            v107 = KernelBuffers;
            for (k = 0; k < v106; ++k)
            {
              if (*&v107[8 * k])
              {
                v109 = [v133 bufferIdAndOffsetForGPUVirtualAddress:?];
                v111 = v110;
                v112 = GetObjectForKey(a5, v109);
                v113 = DYMTLGetOriginalObject(v112);

                [v89 setKernelBuffer:v113 offset:v111 atIndex:k];
                v106 = *(a2 + 48);
              }
            }
          }
        }

        ThreadgroupMemoryLength = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::getThreadgroupMemoryLength(&v140, v86);
        if (*(a2 + 64))
        {
          v115 = ThreadgroupMemoryLength;
          v116 = 0;
          do
          {
            [v89 setThreadgroupMemoryLength:*&v115[8 * v116] atIndex:v116];
            ++v116;
          }

          while (v116 < *(a2 + 64));
        }

        goto LABEL_71;
      }

      if (v87)
      {
        goto LABEL_60;
      }

      [v88 reset];
LABEL_71:

      if (++v85 == a3)
      {
        goto LABEL_72;
      }
    }

    v96 = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::concurrentDispatchThreadsArguments(&v140, v86);
    v97 = *(v96 + 2);
    v135 = *v96;
    *&v136 = v97;
    v98 = *(v96 + 5);
    v138 = *(v96 + 24);
    v139 = v98;
    [v89 concurrentDispatchThreads:&v135 threadsPerThreadgroup:&v138];
    v99 = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::indirectDispatchArguments(&v140, v86);
    v100 = *(v99 + 1);
    v101 = *(v99 + 2);
    v135 = *v99;
    v136 = v100;
    v137 = v101;
    [v89 setStageInRegion:&v135];
    if (v99[64] == 1)
    {
      goto LABEL_59;
    }

    goto LABEL_60;
  }

LABEL_73:
}

void sub_24D6D3B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24D6D40E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void *std::vector<GPUTools::MTL::Utils::DYMTLBufferGPUAddress>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<GPUTools::MTL::Utils::DYMTLBufferGPUAddress>>(result, a2);
    }

    std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void MakeDYMTLIndirectCommandBufferDescriptor(MTLIndirectCommandBufferDescriptor *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  v6 = v5;
  *a3 = [(MTLIndirectCommandBufferDescriptor *)v5 commandTypes];
  *(a3 + 9) = [(MTLIndirectCommandBufferDescriptor *)v6 inheritPipelineState];
  *(a3 + 8) = [(MTLIndirectCommandBufferDescriptor *)v6 inheritBuffers];
  *(a3 + 16) = [(MTLIndirectCommandBufferDescriptor *)v6 maxVertexBufferBindCount];
  *(a3 + 24) = [(MTLIndirectCommandBufferDescriptor *)v6 maxFragmentBufferBindCount];
  if (objc_opt_respondsToSelector())
  {
    *(a3 + 48) = [(MTLIndirectCommandBufferDescriptor *)v6 maxKernelBufferBindCount];
    *(a3 + 64) = a2;
  }
}

BOOL DYMTLDrawRenderCommandEncoder(void *a1, uint64_t a2, uint64_t a3, GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = (a3 + *(a4 + 13) * a2);
  v13 = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::commandType(a4, v12);
  v14 = v13;
  if (v13)
  {
    if (v13 > 3)
    {
      if (v13 == 4)
      {
        TessellationFactorArguments = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::getTessellationFactorArguments(a4, v12);
        v39 = GPUTools::MTL::Utils::DYMTLTranslateGPUAddressToBuffer(a6, *TessellationFactorArguments);
        v41 = v40;
        v42 = GetObjectForKey(a5, v39);
        if (v42)
        {
          [v11 setTessellationFactorBuffer:v42 offset:v41 instanceStride:*(TessellationFactorArguments + 1)];
        }

        LODWORD(v43) = *(TessellationFactorArguments + 4);
        [v11 setTessellationFactorScale:v43];

        v44 = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::drawPatchesArguments(a4, v12);
        v45 = GPUTools::MTL::Utils::DYMTLTranslateGPUAddressToBuffer(a6, *(v44 + 3));
        v47 = v46;
        v48 = GetObjectForKey(a5, v45);
        v19 = v48;
        if (v42 && (v45 != 0) != (v48 == 0))
        {
          [v11 drawPatches:*v44 patchStart:*(v44 + 1) patchCount:*(v44 + 2) patchIndexBuffer:v48 patchIndexBufferOffset:v47 instanceCount:*(v44 + 4) baseInstance:*(v44 + 5)];
        }

        goto LABEL_26;
      }

      if (v13 == 8)
      {
        v21 = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::getTessellationFactorArguments(a4, v12);
        v22 = GPUTools::MTL::Utils::DYMTLTranslateGPUAddressToBuffer(a6, *v21);
        v24 = v23;
        v25 = GetObjectForKey(a5, v22);
        if (v25)
        {
          [v11 setTessellationFactorBuffer:v25 offset:v24 instanceStride:*(v21 + 1)];
        }

        LODWORD(v26) = *(v21 + 4);
        [v11 setTessellationFactorScale:v26];

        v27 = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::drawIndexedPatchesArguments(a4, v12);
        v28 = GPUTools::MTL::Utils::DYMTLTranslateGPUAddressToBuffer(a6, *(v27 + 3));
        v30 = v29;
        v19 = GetObjectForKey(a5, v28);
        if (v25)
        {
          v31 = (v28 != 0) ^ (v19 == 0);
        }

        else
        {
          v31 = 0;
        }

        v32 = GPUTools::MTL::Utils::DYMTLTranslateGPUAddressToBuffer(a6, *(v27 + 4));
        v34 = v33;
        v35 = GetObjectForKey(a5, v32);
        if (v35)
        {
          v36 = v31;
        }

        else
        {
          v36 = 0;
        }

        if (v36 == 1)
        {
          [v11 drawIndexedPatches:*v27 patchStart:*(v27 + 1) patchCount:*(v27 + 2) patchIndexBuffer:v19 patchIndexBufferOffset:v30 controlPointIndexBuffer:v35 controlPointIndexBufferOffset:v34 instanceCount:*(v27 + 5) baseInstance:*(v27 + 6)];
        }

        goto LABEL_26;
      }
    }

    else if (v13 == 1)
    {
      v37 = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::drawArguments(a4, v12);
      [v11 drawPrimitives:*v37 vertexStart:*(v37 + 1) vertexCount:*(v37 + 2) instanceCount:*(v37 + 3) baseInstance:*(v37 + 4)];
    }

    else if (v13 == 2)
    {
      v15 = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::drawIndexedArguments(a4, v12);
      v16 = GPUTools::MTL::Utils::DYMTLTranslateGPUAddressToBuffer(a6, *(v15 + 3));
      v18 = v17;
      v19 = GetObjectForKey(a5, v16);
      if (v19)
      {
        v20 = *(v15 + 5);
        [v11 drawIndexedPrimitives:*v15 indexCount:*(v15 + 1) indexType:*(v15 + 2) indexBuffer:v19 indexBufferOffset:v18 instanceCount:*(v15 + 4) baseVertex:v20 baseInstance:*(v15 + 6)];
      }

LABEL_26:
    }
  }

  return v14 != 0;
}

unint64_t DYMTSetupRenderCommandEncoder(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder *a5, void *a6, void *a7)
{
  v13 = a1;
  v14 = a7;
  v15 = (a4 + *(a5 + 13) * a3);
  if (*(a2 + 9))
  {
    v16 = 0;
  }

  else
  {
    v16 = [v14 renderPipelineIdForUniqueIdentifier:{GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::getPipelineStateUniqueIdentifier(a5, v15)}];
    v17 = GetObjectForKey(a6, v16);
    [v13 setRenderPipelineState:v17];
  }

  if ((*(a2 + 8) & 1) == 0)
  {
    v33 = v16;
    VertexBuffers = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::getVertexBuffers(a5, v15);
    if (*(a2 + 16))
    {
      v19 = VertexBuffers;
      v20 = 0;
      do
      {
        v21 = [v14 bufferIdAndOffsetForGPUVirtualAddress:*&v19[8 * v20]];
        v23 = v22;
        v24 = GetObjectForKey(a6, v21);
        [v13 setVertexBuffer:v24 offset:v23 atIndex:v20];

        ++v20;
      }

      while (v20 < *(a2 + 16));
    }

    FragmentBuffers = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::getFragmentBuffers(a5, v15);
    v16 = v33;
    if (*(a2 + 24))
    {
      v26 = FragmentBuffers;
      v27 = 0;
      do
      {
        v28 = [v14 bufferIdAndOffsetForGPUVirtualAddress:*&v26[8 * v27]];
        v30 = v29;
        v31 = GetObjectForKey(a6, v28);
        [v13 setFragmentBuffer:v31 offset:v30 atIndex:v27];

        ++v27;
      }

      while (v27 < *(a2 + 24));
    }
  }

  return v16;
}

void sub_24D6D60C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  a9 = &a11;
  std::vector<std::pair<unsigned long long,objc_object * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<unsigned long long,objc_object * {__strong}>>::push_back[abi:ne200100](void *a1, uint64_t *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::pair<unsigned long long,objc_object * {__strong}>>::__emplace_back_slow_path<std::pair<unsigned long long,objc_object * {__strong}>>(a1, a2);
  }

  else
  {
    v4 = *a2;
    v5 = a2[1];
    a2[1] = 0;
    *v3 = v4;
    v3[1] = v5;
    result = (v3 + 2);
  }

  a1[1] = result;
  return result;
}

void *GetObjectForKey(void *a1, unint64_t a2)
{
  v4 = a2;
  v2 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(a1, &v4);
  if (v2)
  {
    v2 = v2[3];
  }

  return v2;
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<GPUTools::MTL::Utils::DYMTLBufferGPUAddress>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,GPUTools::MTL::Utils::DYMTLBufferGPUAddress *,false>(__n128 *a1, unint64_t *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 3;
  v10 = a2 - 6;
  v11 = a2 - 9;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    v16 = 0xAAAAAAAAAAAAAAABLL * (a2 - v12);
    if (v16 <= 2)
    {
      if (v16 < 2)
      {
        return result;
      }

      if (v16 == 2)
      {
        v77 = *(a2 - 3);
        v73 = (a2 - 3);
        if (v77 >= *v12)
        {
          return result;
        }

        goto LABEL_75;
      }

      goto LABEL_10;
    }

    if (v16 == 3)
    {
      break;
    }

    if (v16 == 4)
    {
      v70 = (v12 + 3);
      v79 = v12[3];
      v80 = (v12 + 6);
      v81 = v12[6];
      if (v79 >= *v12)
      {
        if (v81 < v79)
        {
          v85 = v12[5];
          result = *v70;
          *v70 = *v80;
          v12[5] = v12[8];
          *v80 = result;
          v12[8] = v85;
          if (v12[3] < *v12)
          {
            v143 = v12[2];
            v115 = *v12;
            *v12 = *v70;
            v12[2] = v12[5];
            result = v115;
            *v70 = v115;
            v12[5] = v143;
          }
        }
      }

      else
      {
        if (v81 < v79)
        {
          v142 = v12[2];
          v114 = *v12;
          *v12 = *v80;
          v12[2] = v12[8];
          result = v114;
          *v80 = v114;
          v82 = v142;
          goto LABEL_102;
        }

        v144 = v12[2];
        v117 = *v12;
        *v12 = *v70;
        v12[2] = v12[5];
        result = v117;
        *v70 = v117;
        v12[5] = v144;
        if (v81 < v12[3])
        {
          v82 = v12[5];
          result = *v70;
          *v70 = *v80;
          v12[5] = v12[8];
          *v80 = result;
LABEL_102:
          v12[8] = v82;
        }
      }

      if (*v9 >= v80->n128_u64[0])
      {
        return result;
      }

      v91 = v12[8];
      result = *v80;
      v92 = *(a2 - 1);
      *v80 = *v9;
      v12[8] = v92;
      *v9 = result;
      *(a2 - 1) = v91;
      if (v80->n128_u64[0] >= v70->n128_u64[0])
      {
        return result;
      }

      v93 = v12[5];
      result = *v70;
      *v70 = *v80;
      v12[5] = v12[8];
      *v80 = result;
      v12[8] = v93;
LABEL_106:
      if (v12[3] < *v12)
      {
        v145 = v12[2];
        v118 = *v12;
        *v12 = *v70;
        v12[2] = v70[1].n128_u64[0];
        result = v118;
        *v70 = v118;
        v70[1].n128_u64[0] = v145;
      }

      return result;
    }

    if (v16 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GPUTools::MTL::Utils::DYMTLBufferGPUAddress *,0>(v12, (v12 + 3), v12 + 6, (v12 + 9), (a2 - 3), result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GPUTools::MTL::Utils::DYMTLBufferGPUAddress *>(v12, a2);
      }

      else if (v12 != a2)
      {
        v86 = v12 + 3;
        while (v86 != a2)
        {
          v87 = v86;
          v88 = a1[1].n128_u64[1];
          if (v88 < a1->n128_u64[0])
          {
            v116 = a1[2];
            v89 = v87;
            do
            {
              *v89 = *(v89 - 24);
              v89[1].n128_u64[0] = v89[-1].n128_u64[1];
              v90 = v89[-3].n128_u64[0];
              v89 = (v89 - 24);
            }

            while (v88 < v90);
            v89->n128_u64[0] = v88;
            result = v116;
            *(v89 + 8) = v116;
          }

          v86 = &v87[1].n128_u64[1];
          a1 = v87;
        }
      }

      return result;
    }

    if (v14 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GPUTools::MTL::Utils::DYMTLBufferGPUAddress *,GPUTools::MTL::Utils::DYMTLBufferGPUAddress *>(v12, a2, a2, a3);
      }

      return result;
    }

    v17 = v16 >> 1;
    v18 = &v12[3 * (v16 >> 1)];
    v19 = *v9;
    if (v15 >= 0xC01)
    {
      v20 = *v18;
      if (*v18 >= *v12)
      {
        if (v19 < v20)
        {
          v121 = v18[2];
          v97 = *v18;
          v24 = *v9;
          v18[2] = *(a2 - 1);
          *v18 = v24;
          *v9 = v97;
          *(a2 - 1) = v121;
          if (*v18 < *v12)
          {
            v122 = v12[2];
            v98 = *v12;
            v25 = *v18;
            v12[2] = v18[2];
            *v12 = v25;
            v18[2] = v122;
            *v18 = v98;
          }
        }
      }

      else
      {
        if (v19 < v20)
        {
          v119 = v12[2];
          v95 = *v12;
          v21 = *v9;
          v12[2] = *(a2 - 1);
          *v12 = v21;
          goto LABEL_27;
        }

        v125 = v12[2];
        v101 = *v12;
        v28 = *v18;
        v12[2] = v18[2];
        *v12 = v28;
        v18[2] = v125;
        *v18 = v101;
        if (*v9 < *v18)
        {
          v119 = v18[2];
          v95 = *v18;
          v29 = *v9;
          v18[2] = *(a2 - 1);
          *v18 = v29;
LABEL_27:
          *v9 = v95;
          *(a2 - 1) = v119;
        }
      }

      v30 = (v12 + 3);
      v31 = &v12[3 * v17];
      v34 = *(v31 - 3);
      v32 = v31 - 3;
      v33 = v34;
      v35 = *v10;
      if (v34 >= v12[3])
      {
        if (v35 < v33)
        {
          v126 = v32[2];
          v102 = *v32;
          v39 = *v10;
          v32[2] = *(a2 - 4);
          *v32 = v39;
          *v10 = v102;
          *(a2 - 4) = v126;
          if (*v32 < *v30)
          {
            v40 = *v30;
            v127 = v12[5];
            v41 = v32[2];
            *v30 = *v32;
            v12[5] = v41;
            v32[2] = v127;
            *v32 = v40;
          }
        }
      }

      else if (v35 >= v33)
      {
        v44 = *v30;
        v129 = v12[5];
        v45 = v32[2];
        *v30 = *v32;
        v12[5] = v45;
        v32[2] = v129;
        *v32 = v44;
        if (*v10 < *v32)
        {
          v130 = v32[2];
          v104 = *v32;
          v46 = *v10;
          v32[2] = *(a2 - 4);
          *v32 = v46;
          *v10 = v104;
          *(a2 - 4) = v130;
        }
      }

      else
      {
        v36 = v12[5];
        v37 = *v30;
        v38 = *(a2 - 4);
        *v30 = *v10;
        v12[5] = v38;
        *v10 = v37;
        *(a2 - 4) = v36;
      }

      v47 = (v12 + 6);
      v48 = &v12[3 * v17];
      v51 = v48[3];
      v49 = v48 + 3;
      v50 = v51;
      v52 = *v11;
      if (v51 >= v12[6])
      {
        if (v52 < v50)
        {
          v131 = v49[2];
          v105 = *v49;
          v56 = *v11;
          v49[2] = *(a2 - 7);
          *v49 = v56;
          *v11 = v105;
          *(a2 - 7) = v131;
          if (*v49 < *v47)
          {
            v57 = *v47;
            v132 = v12[8];
            v58 = v49[2];
            *v47 = *v49;
            v12[8] = v58;
            v49[2] = v132;
            *v49 = v57;
          }
        }
      }

      else if (v52 >= v50)
      {
        v59 = *v47;
        v133 = v12[8];
        v60 = v49[2];
        *v47 = *v49;
        v12[8] = v60;
        v49[2] = v133;
        *v49 = v59;
        if (*v11 < *v49)
        {
          v134 = v49[2];
          v106 = *v49;
          v61 = *v11;
          v49[2] = *(a2 - 7);
          *v49 = v61;
          *v11 = v106;
          *(a2 - 7) = v134;
        }
      }

      else
      {
        v53 = v12[8];
        v54 = *v47;
        v55 = *(a2 - 7);
        *v47 = *v11;
        v12[8] = v55;
        *v11 = v54;
        *(a2 - 7) = v53;
      }

      v62 = *v18;
      v63 = *v49;
      if (*v18 >= *v32)
      {
        if (v63 < v62)
        {
          v136 = v18[2];
          v108 = *v18;
          *v18 = *v49;
          v18[2] = v49[2];
          v49[2] = v136;
          *v49 = v108;
          if (*v18 < *v32)
          {
            v137 = v32[2];
            v109 = *v32;
            *v32 = *v18;
            v32[2] = v18[2];
            v18[2] = v137;
            *v18 = v109;
          }
        }
      }

      else
      {
        if (v63 < v62)
        {
          v135 = v32[2];
          v107 = *v32;
          *v32 = *v49;
          v32[2] = v49[2];
          goto LABEL_55;
        }

        v138 = v32[2];
        v110 = *v32;
        *v32 = *v18;
        v32[2] = v18[2];
        v18[2] = v138;
        *v18 = v110;
        if (*v49 < *v18)
        {
          v135 = v18[2];
          v107 = *v18;
          *v18 = *v49;
          v18[2] = v49[2];
LABEL_55:
          v49[2] = v135;
          *v49 = v107;
        }
      }

      v139 = v12[2];
      v111 = *v12;
      v64 = *v18;
      v12[2] = v18[2];
      *v12 = v64;
      v18[2] = v139;
      *v18 = v111;
      goto LABEL_57;
    }

    v22 = *v12;
    if (*v12 >= *v18)
    {
      if (v19 < v22)
      {
        v123 = v12[2];
        v99 = *v12;
        v26 = *v9;
        v12[2] = *(a2 - 1);
        *v12 = v26;
        *v9 = v99;
        *(a2 - 1) = v123;
        if (*v12 < *v18)
        {
          v124 = v18[2];
          v100 = *v18;
          v27 = *v12;
          v18[2] = v12[2];
          *v18 = v27;
          v12[2] = v124;
          *v12 = v100;
        }
      }
    }

    else
    {
      if (v19 < v22)
      {
        v120 = v18[2];
        v96 = *v18;
        v23 = *v9;
        v18[2] = *(a2 - 1);
        *v18 = v23;
LABEL_36:
        *v9 = v96;
        *(a2 - 1) = v120;
        goto LABEL_57;
      }

      v128 = v18[2];
      v103 = *v18;
      v42 = *v12;
      v18[2] = v12[2];
      *v18 = v42;
      v12[2] = v128;
      *v12 = v103;
      if (*v9 < *v12)
      {
        v120 = v12[2];
        v96 = *v12;
        v43 = *v9;
        v12[2] = *(a2 - 1);
        *v12 = v43;
        goto LABEL_36;
      }
    }

LABEL_57:
    if ((a5 & 1) == 0 && *(v12 - 3) >= *v12)
    {
      v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,GPUTools::MTL::Utils::DYMTLBufferGPUAddress *,std::__less<void,void> &>(v12, a2);
      goto LABEL_64;
    }

    v65 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,GPUTools::MTL::Utils::DYMTLBufferGPUAddress *,std::__less<void,void> &>(v12, a2);
    if ((v67 & 1) == 0)
    {
      goto LABEL_62;
    }

    v68 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GPUTools::MTL::Utils::DYMTLBufferGPUAddress *>(v12, v65, v66);
    v12 = (v65 + 3);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GPUTools::MTL::Utils::DYMTLBufferGPUAddress *>((v65 + 3), a2, v69))
    {
      a4 = -v14;
      a2 = v65;
      if (v68)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v68)
    {
LABEL_62:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,GPUTools::MTL::Utils::DYMTLBufferGPUAddress *,false>(a1, v65, a3, -v14, a5 & 1);
      v12 = (v65 + 3);
LABEL_64:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v70 = (v12 + 3);
  v71 = v12[3];
  v74 = *(a2 - 3);
  v73 = (a2 - 3);
  v72 = v74;
  if (v71 >= *v12)
  {
    if (v72 >= v71)
    {
      return result;
    }

    v83 = v12[5];
    result = *v70;
    v84 = v73[1].n128_u64[0];
    *v70 = *v73;
    v12[5] = v84;
    *v73 = result;
    v73[1].n128_u64[0] = v83;
    goto LABEL_106;
  }

  if (v72 < v71)
  {
LABEL_75:
    v141 = v12[2];
    v113 = *v12;
    v78 = *v73;
    v12[2] = v73[1].n128_u64[0];
    *v12 = v78;
    result = v113;
    *v73 = v113;
    v73[1].n128_u64[0] = v141;
    return result;
  }

  v140 = v12[2];
  v112 = *v12;
  *v12 = *v70;
  v12[2] = v12[5];
  result = v112;
  *v70 = v112;
  v12[5] = v140;
  if (v73->n128_u64[0] < v12[3])
  {
    v75 = v12[5];
    result = *v70;
    v76 = v73[1].n128_u64[0];
    *v70 = *v73;
    v12[5] = v76;
    *v73 = result;
    v73[1].n128_u64[0] = v75;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GPUTools::MTL::Utils::DYMTLBufferGPUAddress *,0>(__n128 *a1, __n128 *a2, unint64_t *a3, uint64_t a4, uint64_t a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a2->n128_u64[0] >= a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      v10 = a2[1].n128_i64[0];
      result = *a2;
      v11 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[2] = v10;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[2];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[2] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (*a3 < a2->n128_u64[0])
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    v17 = a3[2];
    result = *a3;
    v18 = *(a4 + 16);
    *a3 = *a4;
    a3[2] = v18;
    *a4 = result;
    *(a4 + 16) = v17;
    if (*a3 < a2->n128_u64[0])
    {
      v19 = a2[1].n128_i64[0];
      result = *a2;
      v20 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[2] = v19;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  if (*a5 < *a4)
  {
    v23 = *(a4 + 16);
    result = *a4;
    v24 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v24;
    *a5 = result;
    *(a5 + 16) = v23;
    if (*a4 < *a3)
    {
      v25 = a3[2];
      result = *a3;
      v26 = *(a4 + 16);
      *a3 = *a4;
      a3[2] = v26;
      *a4 = result;
      *(a4 + 16) = v25;
      if (*a3 < a2->n128_u64[0])
      {
        v27 = a2[1].n128_i64[0];
        result = *a2;
        v28 = a3[2];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[2] = v27;
        if (a2->n128_u64[0] < a1->n128_u64[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GPUTools::MTL::Utils::DYMTLBufferGPUAddress *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 24;
    if (result + 24 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 24);
        if (v6 < *v4)
        {
          v10 = *(v4 + 32);
          v7 = v3;
          while (1)
          {
            v8 = result + v7;
            *(v8 + 24) = *(result + v7);
            *(v8 + 40) = *(result + v7 + 16);
            if (!v7)
            {
              break;
            }

            v7 -= 24;
            if (v6 >= *(v8 - 24))
            {
              v9 = result + v7 + 24;
              goto LABEL_10;
            }
          }

          v9 = result;
LABEL_10:
          *v9 = v6;
          *(v9 + 8) = v10;
        }

        v2 = v5 + 24;
        v3 += 24;
        v4 = v5;
      }

      while (v5 + 24 != a2);
    }
  }

  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,GPUTools::MTL::Utils::DYMTLBufferGPUAddress *,std::__less<void,void> &>(unint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  if (*a1 >= *(a2 - 24))
  {
    v6 = a1 + 3;
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v6 += 3;
    }

    while (v2 >= *v4);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4[3];
      v4 += 3;
    }

    while (v2 >= v5);
  }

  if (v4 < a2)
  {
    do
    {
      v7 = *(a2 - 24);
      a2 -= 24;
    }

    while (v2 < v7);
  }

  while (v4 < a2)
  {
    v15 = v4[2];
    v14 = *v4;
    v8 = *a2;
    v4[2] = *(a2 + 16);
    *v4 = v8;
    *(a2 + 16) = v15;
    *a2 = v14;
    do
    {
      v9 = v4[3];
      v4 += 3;
    }

    while (v2 >= v9);
    do
    {
      v10 = *(a2 - 24);
      a2 -= 24;
    }

    while (v2 < v10);
  }

  if (v4 - 3 != a1)
  {
    v11 = *(v4 - 3);
    a1[2] = *(v4 - 1);
    *a1 = v11;
  }

  *(v4 - 3) = v2;
  *(v4 - 1) = v13;
  return v4;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,GPUTools::MTL::Utils::DYMTLBufferGPUAddress *,std::__less<void,void> &>(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 1);
  do
  {
    v5 = a1[v2 + 3];
    v2 += 3;
  }

  while (v5 < v3);
  v6 = &a1[v2];
  if (v2 == 3)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v8 = *(a2 - 24);
      a2 -= 24;
    }

    while (v8 >= v3);
  }

  else
  {
    do
    {
      v7 = *(a2 - 24);
      a2 -= 24;
    }

    while (v7 >= v3);
  }

  v9 = &a1[v2];
  if (v6 < a2)
  {
    v10 = a2;
    do
    {
      v11 = *v9;
      v12 = v9[2];
      v13 = *(v10 + 16);
      *v9 = *v10;
      v9[2] = v13;
      *(v10 + 16) = v12;
      *v10 = v11;
      do
      {
        v14 = v9[3];
        v9 += 3;
      }

      while (v14 < v3);
      do
      {
        v15 = *(v10 - 24);
        v10 -= 24;
      }

      while (v15 >= v3);
    }

    while (v9 < v10);
  }

  if (v9 - 3 != a1)
  {
    v16 = *(v9 - 3);
    a1[2] = *(v9 - 1);
    *a1 = v16;
  }

  *(v9 - 3) = v3;
  *(v9 - 1) = v18;
  return v9 - 3;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GPUTools::MTL::Utils::DYMTLBufferGPUAddress *>(uint64_t a1, _OWORD *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 24);
      v7 = *(a1 + 24);
      v9 = *(a2 - 3);
      v4 = (a2 - 24);
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v39;
          *(a1 + 40) = v38;
          if (v4->n128_u64[0] < *(a1 + 24))
          {
            v40 = *(a1 + 40);
            v41 = *v6;
            v42 = v4[1].n128_i64[0];
            *v6 = *v4;
            *(a1 + 40) = v42;
            *v4 = v41;
            v4[1].n128_u64[0] = v40;
          }

          return 1;
        }

LABEL_12:
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = v4[1].n128_i64[0];
        *a1 = *v4;
        *(a1 + 16) = v12;
        *v4 = v11;
        v4[1].n128_u64[0] = v10;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *v6;
      v29 = v4[1].n128_i64[0];
      *v6 = *v4;
      *(a1 + 40) = v29;
      *v4 = v28;
      v4[1].n128_u64[0] = v27;
LABEL_48:
      if (*(a1 + 24) < *a1)
      {
        v61 = *(a1 + 16);
        v62 = *a1;
        *a1 = *v6;
        *(a1 + 16) = v6[1].n128_u64[0];
        *v6 = v62;
        v6[1].n128_u64[0] = v61;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GPUTools::MTL::Utils::DYMTLBufferGPUAddress *,0>(a1, (a1 + 24), (a1 + 48), a1 + 72, a2 - 24, a3);
      return 1;
    }

    v6 = (a1 + 24);
    v20 = *(a1 + 24);
    v21 = (a1 + 48);
    v22 = *(a1 + 48);
    v23 = (a2 - 24);
    v24 = *a1;
    if (v20 >= *a1)
    {
      if (v22 < v20)
      {
        v34 = *(a1 + 40);
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 40) = *(a1 + 64);
        *v21 = v35;
        *(a1 + 64) = v34;
        if (v6->n128_u64[0] < v24)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_45;
    }

    if (v22 >= v20)
    {
      v54 = *(a1 + 16);
      v55 = *a1;
      *a1 = *v6;
      *(a1 + 16) = *(a1 + 40);
      *v6 = v55;
      *(a1 + 40) = v54;
      if (v22 >= *(a1 + 24))
      {
        goto LABEL_45;
      }

      v25 = *(a1 + 40);
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    *v21 = v26;
    *(a1 + 64) = v25;
LABEL_45:
    if (v23->n128_u64[0] >= v21->n128_u64[0])
    {
      return 1;
    }

    v56 = *(a1 + 64);
    v57 = *v21;
    v58 = *(a2 - 1);
    *v21 = *v23;
    *(a1 + 64) = v58;
    *v23 = v57;
    *(a2 - 1) = v56;
    if (v21->n128_u64[0] >= v6->n128_u64[0])
    {
      return 1;
    }

    v59 = *(a1 + 40);
    v60 = *v6;
    *v6 = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v60;
    *(a1 + 64) = v59;
    goto LABEL_48;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 3);
    v4 = (a2 - 24);
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 48);
  v15 = (a1 + 24);
  v16 = *(a1 + 24);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v30 = *(a1 + 40);
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v31;
      *(a1 + 64) = v30;
      if (v15->n128_u64[0] < v17)
      {
        v32 = *(a1 + 16);
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 16) = *(a1 + 40);
        *v15 = v33;
        *(a1 + 40) = v32;
      }
    }
  }

  else if (v14 >= v16)
  {
    v43 = *(a1 + 16);
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 16) = *(a1 + 40);
    *v15 = v44;
    *(a1 + 40) = v43;
    if (v14 < *(a1 + 24))
    {
      v45 = *(a1 + 40);
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v46;
      *(a1 + 64) = v45;
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 16) = *(a1 + 64);
    *v13 = v19;
    *(a1 + 64) = v18;
  }

  v47 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = *v47;
    if (*v47 < v13->n128_u64[0])
    {
      v64 = *(v47 + 8);
      v51 = v48;
      while (1)
      {
        v52 = a1 + v51;
        *(v52 + 72) = *(a1 + v51 + 48);
        *(v52 + 88) = *(a1 + v51 + 64);
        if (v51 == -48)
        {
          break;
        }

        v51 -= 24;
        if (v50 >= *(v52 + 24))
        {
          v53 = a1 + v51 + 72;
          goto LABEL_39;
        }
      }

      v53 = a1;
LABEL_39:
      *v53 = v50;
      *(v53 + 8) = v64;
      if (++v49 == 8)
      {
        return (v47 + 24) == a2;
      }
    }

    v13 = v47;
    v48 += 24;
    v47 = (v47 + 24);
    if (v47 == a2)
    {
      return 1;
    }
  }
}

unint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GPUTools::MTL::Utils::DYMTLBufferGPUAddress *,GPUTools::MTL::Utils::DYMTLBufferGPUAddress *>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[3 * v10];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GPUTools::MTL::Utils::DYMTLBufferGPUAddress *>(a1, a4, v9, v12);
        v12 -= 3;
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if (*v13 < *a1)
        {
          v14 = v13[2];
          v15 = *v13;
          v16 = a1[2];
          *v13 = *a1;
          v13[2] = v16;
          *a1 = v15;
          a1[2] = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GPUTools::MTL::Utils::DYMTLBufferGPUAddress *>(a1, a4, v9, a1);
        }

        v13 += 3;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      do
      {
        v18 = 0;
        v29 = *a1;
        v30 = a1[2];
        v19 = a1;
        do
        {
          v20 = &v19[3 * v18];
          v21 = v20 + 3;
          v22 = (2 * v18) | 1;
          v18 = 2 * v18 + 2;
          if (v18 >= v17)
          {
            v18 = v22;
          }

          else
          {
            v24 = v20[6];
            v23 = v20 + 6;
            if (*(v23 - 3) >= v24)
            {
              v18 = v22;
            }

            else
            {
              v21 = v23;
            }
          }

          v25 = *v21;
          v19[2] = v21[2];
          *v19 = v25;
          v19 = v21;
        }

        while (v18 <= ((v17 - 2) >> 1));
        v6 -= 3;
        if (v21 == v6)
        {
          v21[2] = v30;
          *v21 = v29;
        }

        else
        {
          v26 = *v6;
          v21[2] = v6[2];
          *v21 = v26;
          *v6 = v29;
          v6[2] = v30;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GPUTools::MTL::Utils::DYMTLBufferGPUAddress *>(a1, (v21 + 3), a4, 0xAAAAAAAAAAAAAAABLL * (v21 + 3 - a1));
        }
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GPUTools::MTL::Utils::DYMTLBufferGPUAddress *>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v5 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v6 = (a1 + 24 * v5);
      if (0x5555555555555556 * ((a4 - a1) >> 3) + 2 >= a3)
      {
        v7 = *v6;
      }

      else
      {
        v7 = *v6;
        v8 = v6[3];
        if (*v6 <= v8)
        {
          v7 = v6[3];
        }

        if (*v6 < v8)
        {
          v6 += 3;
          v5 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
        }
      }

      v9 = *a4;
      if (v7 >= *a4)
      {
        v16 = *(a4 + 1);
        do
        {
          v10 = a4;
          a4 = v6;
          v11 = *v6;
          v10[2] = v6[2];
          *v10 = v11;
          if (v4 < v5)
          {
            break;
          }

          v12 = (2 * v5) | 1;
          v6 = (a1 + 24 * v12);
          v5 = 2 * v5 + 2;
          if (v5 >= a3)
          {
            v13 = *v6;
            v5 = v12;
          }

          else
          {
            v13 = *v6;
            v14 = v6[3];
            if (*v6 <= v14)
            {
              v13 = v6[3];
            }

            if (*v6 >= v14)
            {
              v5 = v12;
            }

            else
            {
              v6 += 3;
            }
          }
        }

        while (v13 >= v9);
        *a4 = v9;
        result = v16;
        *(a4 + 1) = v16;
      }
    }
  }

  return result;
}

__n128 std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GPUTools::MTL::Utils::DYMTLBufferGPUAddress *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (a1 + 24 * v4);
    v6 = (a2 - 24);
    v7 = *(a2 - 24);
    if (*v5 < v7)
    {
      v11 = *(a2 - 16);
      do
      {
        v8 = v6;
        v6 = v5;
        v9 = *v5;
        *(v8 + 2) = *(v5 + 2);
        *v8 = v9;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (a1 + 24 * v4);
      }

      while (*v5 < v7);
      *v6 = v7;
      result = v11;
      *(v6 + 8) = v11;
    }
  }

  return result;
}

void std::vector<std::pair<unsigned long long,objc_object * {__strong}>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 2;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<std::pair<unsigned long long,objc_object * {__strong}>>::__emplace_back_slow_path<std::pair<unsigned long long,objc_object * {__strong}>>(void *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 3 > v6)
  {
    v6 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long long,objc_object * {__strong}>>>(a1, v6);
  }

  v9 = (16 * v5);
  v16 = 0;
  v17 = 16 * v5;
  v10 = *a2;
  v11 = a2[1];
  a2[1] = 0;
  *v9 = v10;
  v9[1] = v11;
  v18 = (16 * v5 + 16);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<unsigned long long,objc_object * {__strong}>>,std::pair<unsigned long long,objc_object * {__strong}>*>(a1, v3, v4, 0);
  v12 = *a1;
  *a1 = 0;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::pair<unsigned long long,objc_object * {__strong}>>::~__split_buffer(&v16);
  return v15;
}

void sub_24D6D8304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<unsigned long long,objc_object * {__strong}>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long long,objc_object * {__strong}>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<unsigned long long,objc_object * {__strong}>>,std::pair<unsigned long long,objc_object * {__strong}>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v6[1] = 0;
      *a4 = v7;
      a4[1] = v8;
      a4 += 2;
      v6 += 2;
    }

    while (v6 != a3);
    while (v5 != a3)
    {

      v5 += 2;
    }
  }
}

uint64_t std::__split_buffer<std::pair<unsigned long long,objc_object * {__strong}>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__value_func<void ()(void)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_24D6D86F0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_24D6D8D60(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);

  MEMORY[0x253031C80](va1);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t CommandBufferUIDFromString(NSString *a1)
{
  v1 = a1;
  v2 = [(NSString *)v1 componentsSeparatedByString:@"-"];
  v3 = MEMORY[0x277CCAC80];
  v4 = [v2 objectAtIndexedSubscript:0];
  v5 = [v3 scannerWithString:v4];

  [v5 scanUnsignedLongLong:&v8];
  v6 = [v2 objectAtIndexedSubscript:1];
  LODWORD(v9) = [v6 unsignedIntValue];

  return v8;
}

void sub_24D6D91AC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void ProcessPerBufferPatchingRequest(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  for (i = *(a1 + 32); i; i = *i)
  {
    v8 = GetMTLBufferFromObjectMap(a4, i[2]);
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      v12 = i[3];
      v11 = i[4];
      while (v12 != v11)
      {
        if (*v12 >= a3)
        {
          NSLog(&cfstr_BufferOffsetLl.isa, *v12, a3);
          break;
        }

        v13 = v12[1];
        if (v13 >= [v10 length])
        {
          NSLog(&cfstr_BufferOffsetLl_0.isa, v12[1], [v10 length]);
        }

        else
        {
          v14 = *v12;
          *(a2 + v14) = v12[1] + [v10 gpuAddress];
        }

        v12 += 2;
      }
    }

    else
    {
      NSLog(&cfstr_PointeeBufferL.isa, i[2]);
    }
  }
}

uint64_t std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,PerBufferPatchingRequest>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PerBufferPatchingRequest>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PerBufferPatchingRequest>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PerBufferPatchingRequest>>>::~__hash_table(result);

    JUMPOUT(0x253031F40);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,PerBufferPatchingRequest>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PerBufferPatchingRequest>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PerBufferPatchingRequest>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PerBufferPatchingRequest>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,PerBufferPatchingRequest>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PerBufferPatchingRequest>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PerBufferPatchingRequest>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PerBufferPatchingRequest>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,PerBufferPatchingRequest>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PerBufferPatchingRequest>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PerBufferPatchingRequest>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PerBufferPatchingRequest>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>>>::~__hash_table((v2 + 5));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t BufferAndOffsetFromDictionary(NSDictionary *a1)
{
  v1 = a1;
  UInt64WithKey = GetUInt64WithKey(v1, &cfstr_BufferDeviceOb.isa);
  GetUInt64WithKey(v1, &cfstr_BufferOffset.isa);

  return UInt64WithKey;
}

uint64_t GetUInt64WithKey(NSDictionary *a1, NSString *a2)
{
  v3 = a2;
  v4 = [(NSDictionary *)a1 objectForKeyedSubscript:v3];
  if (!v4)
  {
    NSLog(&cfstr_ErrorKeyNotFou.isa, v3);
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_ErrorIsNotANum.isa, v3);
    goto LABEL_6;
  }

  v5 = [v4 unsignedLongLongValue];
LABEL_7:

  return v5;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,PerBufferPatchingRequest>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PerBufferPatchingRequest>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PerBufferPatchingRequest>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PerBufferPatchingRequest>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void sub_24D6DA798(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,PerBufferPatchingRequest>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,PerBufferPatchingRequest>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,PerBufferPatchingRequest>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,PerBufferPatchingRequest>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>>>::~__hash_table(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

id DictionaryFromBufferAndOffset(void *a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"buffer_device_object";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*a1];
  v7[1] = @"buffer_offset";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[1]];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id GetMTLBufferFromObjectMap(void *a1, unint64_t a2)
{
  v6 = a2;
  v2 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(a1, &v6);
  if (v2)
  {
    v3 = v2[3];
    if ([v3 conformsToProtocol:&unk_2860CA848])
    {
      v4 = v3;
    }

    else
    {
      NSLog(&cfstr_ObjectLluIsNot.isa, v6);
      v4 = 0;
    }
  }

  else
  {
    NSLog(&cfstr_BufferLluNotFo.isa, v6);
    v4 = 0;
  }

  return v4;
}

uint64_t CPUAccessibleMTLBufferData::CPUAccessibleMTLBufferData(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *a1 = v6;
  v7 = v5;
  v8 = v7;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (!v7 || !*a1)
  {
    *(a1 + 8) = 0;
    v9 = v7;
    goto LABEL_6;
  }

  if ([v7 storageMode] == 2)
  {
    v9 = [*a1 commandBuffer];
    v10 = [v9 blitCommandEncoder];
    [v10 setLabel:@"Dyson - blit buffer from GPU"];
    v11 = [*(a1 + 8) device];
    v12 = [v11 newBufferWithLength:objc_msgSend(*(a1 + 8) options:{"length"), 0}];
    v13 = *(a1 + 16);
    *(a1 + 16) = v12;

    [v10 copyFromBuffer:*(a1 + 8) sourceOffset:0 toBuffer:*(a1 + 16) destinationOffset:0 size:{objc_msgSend(*(a1 + 8), "length")}];
    [v10 endEncoding];
    [v9 commit];
    [v9 waitUntilCompleted];

LABEL_6:
  }

  return a1;
}

void CPUAccessibleMTLBufferData::~CPUAccessibleMTLBufferData(CPUAccessibleMTLBufferData *this)
{
  v2 = *(this + 1);
  if (v2 && [v2 storageMode] == 2)
  {
    v3 = [*this commandBuffer];
    v4 = [v3 blitCommandEncoder];
    [v4 setLabel:@"Dyson - blit buffer from GPU"];
    [v4 copyFromBuffer:*(this + 2) sourceOffset:0 toBuffer:*(this + 1) destinationOffset:0 size:{objc_msgSend(*(this + 1), "length")}];
    [v4 endEncoding];
    [v3 commit];
    [v3 waitUntilCompleted];
  }
}

void std::__hash_table<std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,std::__unordered_map_hasher<DYCommandBufferUID,std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,DYCommandBufferUIDHash,std::equal_to<DYCommandBufferUID>,true>,std::__unordered_map_equal<DYCommandBufferUID,std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,std::equal_to<DYCommandBufferUID>,DYCommandBufferUIDHash,true>,std::allocator<std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,std::__unordered_map_hasher<DYCommandBufferUID,std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,DYCommandBufferUIDHash,std::equal_to<DYCommandBufferUID>,true>,std::__unordered_map_equal<DYCommandBufferUID,std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,std::equal_to<DYCommandBufferUID>,DYCommandBufferUIDHash,true>,std::allocator<std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>>>::__deallocate_node(a1, *(a1 + 16));
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

void std::__hash_table<std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,std::__unordered_map_hasher<DYCommandBufferUID,std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,DYCommandBufferUIDHash,std::equal_to<DYCommandBufferUID>,true>,std::__unordered_map_equal<DYCommandBufferUID,std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,std::equal_to<DYCommandBufferUID>,DYCommandBufferUIDHash,true>,std::allocator<std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>>>::__deallocate_node(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__tree<BufferEntry>::destroy((v2 + 4), v2[5]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__tree<BufferEntry>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<BufferEntry>::destroy(a1, *a2);
    std::__tree<BufferEntry>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<PatchingRequest>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<PatchingRequest>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<PatchingRequest>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<PatchingRequest>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::vector<PatchingRequest>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 3;
    std::vector<PatchingRequest>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void std::vector<PatchingRequest>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 2;
        std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100](v4 - 1, 0);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::vector<PatchingRequest>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v5 = *result;
  v4 = result[1];
  v6 = a2[1] + *result - v4;
  if (v4 != *result)
  {
    v7 = *result;
    v8 = a2[1] + *result - v4;
    do
    {
      v9 = *v7;
      *(v8 + 4) = *(v7 + 4);
      *v8 = v9;
      v10 = *(v7 + 1);
      *(v7 + 1) = 0;
      *(v8 + 8) = v10;
      v7 += 4;
      v8 += 16;
    }

    while (v7 != v4);
    do
    {
      result = std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100](v5 + 1, 0);
      v5 += 2;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *v3;
  *v3 = v6;
  v3[1] = v11;
  a2[1] = v11;
  v12 = v3[1];
  v3[1] = a2[2];
  a2[2] = v12;
  v13 = v3[2];
  v3[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PatchingRequest>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<PatchingRequest>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100]((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,OffsetPair *,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 a6)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return;
      }

      if (v15 == 2)
      {
        v42 = a2 - 1;
        v43 = a2[-1].n128_u64[0];
        if (v43 >= v12->n128_u64[0])
        {
          if (v12->n128_u64[0] < v43)
          {
            return;
          }

          v44 = a2[-1].n128_u64[1];
          goto LABEL_140;
        }

        goto LABEL_165;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,OffsetPair *,0>(v12, v12[1].n128_u64, v12 + 2, a2 - 1, a6);
      return;
    }

    if (v15 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,OffsetPair *,0>(v12, v12[1].n128_u64, v12 + 2, v12 + 3, a6);
      v48 = a2 - 1;
      v49 = a2[-1].n128_u64[0];
      v50 = v12[3].n128_u64[0];
      if (v49 < v50 || v50 >= v49 && a2[-1].n128_u64[1] < v12[3].n128_u64[1])
      {
        v51 = v12[3];
        v12[3] = *v48;
        *v48 = v51;
        v52 = v12[3].n128_u64[0];
        v53 = v12[2].n128_u64[0];
        if (v52 < v53 || v53 >= v52 && v12[3].n128_u64[1] < v12[2].n128_u64[1])
        {
          v54 = v12[2];
          v12[2] = v12[3];
          v12[3] = v54;
          v55 = v12[2].n128_u64[0];
          v56 = v12[1].n128_u64[0];
          if (v55 < v56 || v56 >= v55 && v12[2].n128_u64[1] < v12[1].n128_u64[1])
          {
            v57 = v12[1];
            v12[1] = v12[2];
            v12[2] = v57;
            v58 = v12[1].n128_u64[0];
            if (v58 < v12->n128_u64[0] || v12->n128_u64[0] >= v58 && v12[1].n128_u64[1] < v12->n128_u64[1])
            {
              v82 = *v12;
              *v12 = v12[1];
              v12[1] = v82;
            }
          }
        }
      }

      return;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,OffsetPair *>(v12->n128_u64, a2->n128_u64);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,OffsetPair *>(v12->n128_u64, a2->n128_u64);
      }

      return;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,OffsetPair *,OffsetPair *>(v12, a2, a2, a3);
      }

      return;
    }

    v16 = &v12[v15 >> 1];
    v17 = v16;
    if (v15 >= 0x81)
    {
      v18 = v16->n128_u64[0];
      if (v16->n128_u64[0] < v12->n128_u64[0] || v12->n128_u64[0] >= v18 && v16->n128_u64[1] < v12->n128_u64[1])
      {
        if (v9->n128_u64[0] < v18 || v18 >= v9->n128_u64[0] && a2[-1].n128_u64[1] < v16->n128_u64[1])
        {
          v64 = *v12;
          *v12 = *v9;
        }

        else
        {
          v70 = *v12;
          *v12 = *v16;
          *v16 = v70;
          if (v9->n128_u64[0] >= v16->n128_u64[0] && (v16->n128_u64[0] < v9->n128_u64[0] || a2[-1].n128_u64[1] >= v16->n128_u64[1]))
          {
            goto LABEL_34;
          }

          v64 = *v16;
          *v16 = *v9;
        }

        *v9 = v64;
        goto LABEL_34;
      }

      if (v9->n128_u64[0] < v18 || v18 >= v9->n128_u64[0] && a2[-1].n128_u64[1] < v16->n128_u64[1])
      {
        v66 = *v16;
        *v16 = *v9;
        *v9 = v66;
        if (v16->n128_u64[0] < v12->n128_u64[0] || v12->n128_u64[0] >= v16->n128_u64[0] && v16->n128_u64[1] < v12->n128_u64[1])
        {
          v67 = *v12;
          *v12 = *v16;
          *v16 = v67;
        }
      }

LABEL_34:
      v20 = v12 + 1;
      v21 = v12[1].n128_u64[0];
      v22 = v16 - 1;
      v23 = v16[-1].n128_u64[0];
      if (v23 < v21 || v21 >= v23 && v16[-1].n128_u64[1] < v12[1].n128_u64[1])
      {
        if (v10->n128_u64[0] < v23 || v23 >= v10->n128_u64[0] && a2[-2].n128_u64[1] < v16[-1].n128_u64[1])
        {
          v24 = *v20;
          *v20 = *v10;
        }

        else
        {
          v26 = *v20;
          *v20 = *v22;
          *v22 = v26;
          if (v10->n128_u64[0] >= v22->n128_u64[0] && (v22->n128_u64[0] < v10->n128_u64[0] || a2[-2].n128_u64[1] >= v16[-1].n128_u64[1]))
          {
            goto LABEL_52;
          }

          v73 = *v22;
          *v22 = *v10;
          v24 = v73;
        }

        *v10 = v24;
        goto LABEL_52;
      }

      if (v10->n128_u64[0] < v23 || v23 >= v10->n128_u64[0] && a2[-2].n128_u64[1] < v16[-1].n128_u64[1])
      {
        v71 = *v22;
        *v22 = *v10;
        *v10 = v71;
        if (v22->n128_u64[0] < v20->n128_u64[0] || v20->n128_u64[0] >= v22->n128_u64[0] && v16[-1].n128_u64[1] < v12[1].n128_u64[1])
        {
          v25 = *v20;
          *v20 = *v22;
          *v22 = v25;
        }
      }

LABEL_52:
      v27 = v12 + 2;
      v28 = v12[2].n128_u64[0];
      v31 = v16[1].n128_u64[0];
      v29 = v16 + 1;
      v30 = v31;
      if (v31 < v28 || v28 >= v30 && v29->n128_u64[1] < v12[2].n128_u64[1])
      {
        if (v11->n128_u64[0] < v30 || v30 >= v11->n128_u64[0] && a2[-3].n128_u64[1] < v29->n128_u64[1])
        {
          v32 = *v27;
          *v27 = *v11;
        }

        else
        {
          v34 = *v27;
          *v27 = *v29;
          *v29 = v34;
          if (v11->n128_u64[0] >= v29->n128_u64[0] && (v29->n128_u64[0] < v11->n128_u64[0] || a2[-3].n128_u64[1] >= v29->n128_u64[1]))
          {
            goto LABEL_65;
          }

          v75 = *v29;
          *v29 = *v11;
          v32 = v75;
        }

        *v11 = v32;
        goto LABEL_65;
      }

      if (v11->n128_u64[0] < v30 || v30 >= v11->n128_u64[0] && a2[-3].n128_u64[1] < v29->n128_u64[1])
      {
        v74 = *v29;
        *v29 = *v11;
        *v11 = v74;
        if (v29->n128_u64[0] < v27->n128_u64[0] || v27->n128_u64[0] >= v29->n128_u64[0] && v29->n128_u64[1] < v12[2].n128_u64[1])
        {
          v33 = *v27;
          *v27 = *v29;
          *v29 = v33;
        }
      }

LABEL_65:
      v35 = v17->n128_u64[0];
      if (v17->n128_u64[0] >= v22->n128_u64[0] && (v22->n128_u64[0] < v35 || v17->n128_u64[1] >= v22->n128_u64[1]))
      {
        if (v29->n128_u64[0] < v35 || v35 >= v29->n128_u64[0] && v29->n128_u64[1] < v17->n128_u64[1])
        {
          v77 = *v17;
          *v17 = *v29;
          *v29 = v77;
          if (v17->n128_u64[0] < v22->n128_u64[0] || v22->n128_u64[0] >= v17->n128_u64[0] && v17->n128_u64[1] < v22->n128_u64[1])
          {
            v78 = *v22;
            *v22 = *v17;
            *v17 = v78;
          }
        }

        goto LABEL_78;
      }

      if (v29->n128_u64[0] < v35 || v35 >= v29->n128_u64[0] && v29->n128_u64[1] < v17->n128_u64[1])
      {
        v76 = *v22;
        *v22 = *v29;
      }

      else
      {
        v79 = *v22;
        *v22 = *v17;
        *v17 = v79;
        if (v29->n128_u64[0] >= v17->n128_u64[0] && (v17->n128_u64[0] < v29->n128_u64[0] || v29->n128_u64[1] >= v17->n128_u64[1]))
        {
          goto LABEL_78;
        }

        v76 = *v17;
        *v17 = *v29;
      }

      *v29 = v76;
LABEL_78:
      v80 = *v12;
      *v12 = *v17;
      *v17 = v80;
      goto LABEL_79;
    }

    v19 = v12->n128_u64[0];
    if (v12->n128_u64[0] < v17->n128_u64[0] || v17->n128_u64[0] >= v19 && v12->n128_u64[1] < v17->n128_u64[1])
    {
      if (v9->n128_u64[0] < v19 || v19 >= v9->n128_u64[0] && a2[-1].n128_u64[1] < v12->n128_u64[1])
      {
        v65 = *v17;
        *v17 = *v9;
LABEL_46:
        *v9 = v65;
        goto LABEL_79;
      }

      v72 = *v17;
      *v17 = *v12;
      *v12 = v72;
      if (v9->n128_u64[0] < v12->n128_u64[0] || v12->n128_u64[0] >= v9->n128_u64[0] && a2[-1].n128_u64[1] < v12->n128_u64[1])
      {
        v65 = *v12;
        *v12 = *v9;
        goto LABEL_46;
      }
    }

    else if (v9->n128_u64[0] < v19 || v19 >= v9->n128_u64[0] && a2[-1].n128_u64[1] < v12->n128_u64[1])
    {
      v68 = *v12;
      *v12 = *v9;
      *v9 = v68;
      if (v12->n128_u64[0] < v17->n128_u64[0] || v17->n128_u64[0] >= v12->n128_u64[0] && v12->n128_u64[1] < v17->n128_u64[1])
      {
        v69 = *v17;
        *v17 = *v12;
        *v12 = v69;
      }
    }

LABEL_79:
    if ((a5 & 1) == 0)
    {
      v36 = v12[-1].n128_u64[0];
      if (v36 >= v12->n128_u64[0] && (v12->n128_u64[0] < v36 || v12[-1].n128_u64[1] >= v12->n128_u64[1]))
      {
        v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,OffsetPair *,std::__less<void,void> &>(v12->n128_u64, a2);
        goto LABEL_134;
      }
    }

    v37 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,OffsetPair *,std::__less<void,void> &>(v12->n128_u64, a2);
    if ((v39 & 1) == 0)
    {
      goto LABEL_132;
    }

    v40 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,OffsetPair *>(v12, v37, v38);
    v12 = v37 + 1;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,OffsetPair *>(v37 + 1, a2, v41))
    {
      a4 = -v14;
      a2 = v37;
      if (v40)
      {
        return;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v40)
    {
LABEL_132:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,OffsetPair *,false>(a1, v37, a3, -v14, a5 & 1);
      v12 = v37 + 1;
LABEL_134:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v42 = v12 + 1;
  v45 = v12[1].n128_u64[0];
  if (v45 < v12->n128_u64[0] || v12->n128_u64[0] >= v45 && v12[1].n128_u64[1] < v12->n128_u64[1])
  {
    v46 = a2[-1].n128_u64[0];
    if (v46 < v45 || v45 >= v46 && a2[-1].n128_u64[1] < v12[1].n128_u64[1])
    {
      v81 = *v12;
      *v12 = *v9;
      v47 = v81;
    }

    else
    {
      v84 = *v12;
      *v12 = *v42;
      *v42 = v84;
      v62 = v12[1].n128_u64[0];
      if (v9->n128_u64[0] >= v62 && (v62 < v9->n128_u64[0] || a2[-1].n128_u64[1] >= v12[1].n128_u64[1]))
      {
        return;
      }

      v47 = *v42;
      *v42 = *v9;
    }

    *v9 = v47;
    return;
  }

  v59 = a2[-1].n128_u64[0];
  if (v59 < v45 || v45 >= v59 && a2[-1].n128_u64[1] < v12[1].n128_u64[1])
  {
    v60 = *v42;
    *v42 = *v9;
    *v9 = v60;
    v61 = v12[1].n128_u64[0];
    if (v61 < v12->n128_u64[0])
    {
      goto LABEL_165;
    }

    if (v12->n128_u64[0] < v61)
    {
      return;
    }

    v44 = v12[1].n128_u64[1];
LABEL_140:
    if (v44 < v12->n128_u64[1])
    {
LABEL_165:
      v83 = *v12;
      *v12 = *v42;
      *v42 = v83;
    }
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,OffsetPair *,0>(__n128 *a1, unint64_t *a2, __n128 *a3, __n128 *a4, __n128 result)
{
  v5 = *a2;
  if (*a2 < a1->n128_u64[0] || a1->n128_u64[0] >= v5 && a2[1] < a1->n128_u64[1])
  {
    if (a3->n128_u64[0] < v5 || v5 >= a3->n128_u64[0] && a3->n128_u64[1] < a2[1])
    {
      result = *a1;
      *a1 = *a3;
    }

    else
    {
      result = *a1;
      *a1 = *a2;
      *a2 = result;
      if (a3->n128_u64[0] >= *a2 && (*a2 < a3->n128_u64[0] || a3->n128_u64[1] >= a2[1]))
      {
        goto LABEL_14;
      }

      result = *a2;
      *a2 = *a3;
    }

    *a3 = result;
  }

  else if (a3->n128_u64[0] < v5 || v5 >= a3->n128_u64[0] && a3->n128_u64[1] < a2[1])
  {
    result = *a2;
    *a2 = *a3;
    *a3 = result;
    if (*a2 < a1->n128_u64[0] || a1->n128_u64[0] >= *a2 && a2[1] < a1->n128_u64[1])
    {
      result = *a1;
      *a1 = *a2;
      *a2 = result;
    }
  }

LABEL_14:
  if (a4->n128_u64[0] < a3->n128_u64[0] || a3->n128_u64[0] >= a4->n128_u64[0] && a4->n128_u64[1] < a3->n128_u64[1])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_u64[0] < *a2 || *a2 >= a3->n128_u64[0] && a3->n128_u64[1] < a2[1])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2 < a1->n128_u64[0] || a1->n128_u64[0] >= *a2 && a2[1] < a1->n128_u64[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

unint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,OffsetPair *>(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      while (1)
      {
        v5 = v4;
        v4 = v2;
        v6 = v5[2];
        if (v6 < *v5)
        {
          break;
        }

        if (*v5 >= v6)
        {
          v7 = v5[3];
          if (v7 < v5[1])
          {
            goto LABEL_6;
          }
        }

LABEL_19:
        v2 = v4 + 2;
        v3 += 16;
        if (v4 + 2 == a2)
        {
          return result;
        }
      }

      v7 = v5[3];
LABEL_6:
      *v4 = *v5;
      v8 = result;
      if (v5 != result)
      {
        v9 = v3;
        while (1)
        {
          v10 = (result + v9);
          v11 = *(result + v9 - 16);
          if (v6 >= v11)
          {
            if (v11 < v6)
            {
              v8 = v5;
              goto LABEL_18;
            }

            if (v7 >= *(v10 - 1))
            {
              break;
            }
          }

          v5 -= 2;
          *v10 = *(result + v9 - 16);
          v9 -= 16;
          if (!v9)
          {
            v8 = result;
            goto LABEL_18;
          }
        }

        v8 = (result + v9);
      }

LABEL_18:
      *v8 = v6;
      v8[1] = v7;
      goto LABEL_19;
    }
  }

  return result;
}

unint64_t *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,OffsetPair *>(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    while (1)
    {
      if (result + 2 == a2)
      {
        return result;
      }

      v2 = result;
      result += 2;
      v3 = v2[2];
      if (v3 >= *v2)
      {
        if (*v2 >= v3)
        {
          v4 = v2[3];
          if (v4 < v2[1])
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        v4 = v2[3];
        do
        {
          do
          {
LABEL_5:
            v5 = v2;
            *(v2 + 1) = *v2;
            v7 = *(v2 - 2);
            v2 -= 2;
            v6 = v7;
          }

          while (v3 < v7);
        }

        while (v6 >= v3 && v4 < *(v5 - 1));
        *v5 = v3;
        v5[1] = v4;
      }
    }
  }

  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,OffsetPair *,std::__less<void,void> &>(unint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 - 16);
  if (*a1 < v4 || v4 >= v2 && v3 < *(a2 - 8))
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v2 >= v7 && (v6 < v2 || v3 >= i[1]));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 16; v2 < v4 || v4 >= v2 && v3 < *(a2 + 8); a2 -= 16)
    {
      v8 = *(a2 - 16);
      v4 = v8;
    }
  }

  while (i < a2)
  {
    v14 = *i;
    *i = *a2;
    *a2 = v14;
    do
    {
      v10 = i[2];
      i += 2;
      v9 = v10;
    }

    while (v2 >= v10 && (v9 < v2 || v3 >= i[1]));
    do
    {
      do
      {
        v12 = *(a2 - 16);
        a2 -= 16;
        v11 = v12;
      }

      while (v2 < v12);
    }

    while (v11 >= v2 && v3 < *(a2 + 8));
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 1);
  }

  *(i - 2) = v2;
  *(i - 1) = v3;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,OffsetPair *,std::__less<void,void> &>(unint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v3 < v5 || a1[v2 + 3] >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 8)
  {
    do
    {
      v8 = *(a2 - 16);
      a2 -= 16;
      v7 = v8;
    }

    while (v8 >= v3 && (v3 < v7 || *(a2 + 8) >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 16);
        a2 -= 16;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v3 < v9)
        {
          goto LABEL_19;
        }
      }

      while (*(a2 + 8) >= v4 && v6 < a2);
    }
  }

  v12 = v6;
  if (v6 < a2)
  {
    v13 = a2;
    do
    {
      v19 = *v12;
      *v12 = *v13;
      *v13 = v19;
      do
      {
        do
        {
          v15 = *(v12 + 16);
          v12 += 16;
          v14 = v15;
        }

        while (v15 < v3);
      }

      while (v3 >= v14 && *(v12 + 8) < v4);
      do
      {
        v17 = *(v13 - 16);
        v13 -= 16;
        v16 = v17;
      }

      while (v17 >= v3 && (v3 < v16 || *(v13 + 8) >= v4));
    }

    while (v12 < v13);
  }

  if ((v12 - 16) != a1)
  {
    *a1 = *(v12 - 16);
  }

  *(v12 - 16) = v3;
  *(v12 - 8) = v4;
  return v12 - 16;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,OffsetPair *>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v5 = a2 - a1;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v6 = a1 + 1;
        v21 = a1[1].n128_u64[0];
        v22 = a2 - 1;
        if (v21 < a1->n128_u64[0] || a1->n128_u64[0] >= v21 && a1[1].n128_u64[1] < a1->n128_u64[1])
        {
          v23 = a2[-1].n128_u64[0];
          if (v23 < v21 || v21 >= v23 && a2[-1].n128_u64[1] < a1[1].n128_u64[1])
          {
            v24 = *a1;
            *a1 = *v22;
          }

          else
          {
            v38 = *a1;
            *a1 = *v6;
            *v6 = v38;
            v39 = a1[1].n128_u64[0];
            if (v22->n128_u64[0] >= v39 && (v39 < v22->n128_u64[0] || a2[-1].n128_u64[1] >= a1[1].n128_u64[1]))
            {
              return 1;
            }

            v24 = *v6;
            *v6 = *v22;
          }

          *v22 = v24;
          return 1;
        }

        v31 = a2[-1].n128_u64[0];
        if (v31 < v21 || v21 >= v31 && a2[-1].n128_u64[1] < a1[1].n128_u64[1])
        {
          v32 = *v6;
          *v6 = *v22;
          *v22 = v32;
          v33 = a1[1].n128_u64[0];
          if (v33 < a1->n128_u64[0])
          {
            goto LABEL_28;
          }

          if (a1->n128_u64[0] < v33)
          {
            return 1;
          }

          v8 = a1[1].n128_u64[1];
          goto LABEL_7;
        }

        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,OffsetPair *,0>(a1, a1[1].n128_u64, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,OffsetPair *,0>(a1, a1[1].n128_u64, a1 + 2, a1 + 3, a3);
        v9 = a2 - 1;
        v10 = a2[-1].n128_u64[0];
        v11 = a1[3].n128_u64[0];
        if (v10 < v11 || v11 >= v10 && a2[-1].n128_u64[1] < a1[3].n128_u64[1])
        {
          v12 = a1[3];
          a1[3] = *v9;
          *v9 = v12;
          v13 = a1[3].n128_u64[0];
          v14 = a1[2].n128_u64[0];
          if (v13 < v14 || v14 >= v13 && a1[3].n128_u64[1] < a1[2].n128_u64[1])
          {
            v15 = a1[2];
            a1[2] = a1[3];
            a1[3] = v15;
            v16 = a1[2].n128_u64[0];
            v17 = a1[1].n128_u64[0];
            if (v16 < v17 || v17 >= v16 && a1[2].n128_u64[1] < a1[1].n128_u64[1])
            {
              v18 = a1[1];
              a1[1] = a1[2];
              a1[2] = v18;
              v19 = a1[1].n128_u64[0];
              if (v19 < a1->n128_u64[0] || a1->n128_u64[0] >= v19 && a1[1].n128_u64[1] < a1->n128_u64[1])
              {
                v20 = *a1;
                *a1 = a1[1];
                a1[1] = v20;
              }
            }
          }
        }

        break;
      default:
        goto LABEL_20;
    }

    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    v6 = a2 - 1;
    v7 = a2[-1].n128_u64[0];
    if (v7 < a1->n128_u64[0])
    {
      goto LABEL_28;
    }

    if (a1->n128_u64[0] < v7)
    {
      return 1;
    }

    v8 = a2[-1].n128_u64[1];
LABEL_7:
    if (v8 >= a1->n128_u64[1])
    {
      return 1;
    }

LABEL_28:
    v34 = *a1;
    *a1 = *v6;
    *v6 = v34;
    return 1;
  }

LABEL_20:
  v25 = &a1[2];
  v26 = a1->n128_u64[0];
  v27 = a1 + 1;
  v28 = a1[1].n128_u64[0];
  if (v28 < a1->n128_u64[0] || v26 >= v28 && a1[1].n128_u64[1] < a1->n128_u64[1])
  {
    v29 = a1[2].n128_u64[0];
    if (v29 < v28 || v28 >= v29 && a1[2].n128_u64[1] < a1[1].n128_u64[1])
    {
      v30 = *a1;
      *a1 = *v25;
    }

    else
    {
      v40 = *a1;
      *a1 = *v27;
      *v27 = v40;
      v41 = a1[1].n128_u64[0];
      if (v29 >= v41 && (v41 < v29 || a1[2].n128_u64[1] >= a1[1].n128_u64[1]))
      {
        goto LABEL_47;
      }

      v30 = *v27;
      *v27 = *v25;
    }

    *v25 = v30;
    goto LABEL_47;
  }

  v35 = a1[2].n128_u64[0];
  if (v35 < v28 || v28 >= v35 && a1[2].n128_u64[1] < a1[1].n128_u64[1])
  {
    v36 = *v27;
    *v27 = *v25;
    *v25 = v36;
    if (v27->n128_u64[0] < v26 || v26 >= v27->n128_u64[0] && a1[1].n128_u64[1] < a1->n128_u64[1])
    {
      v37 = *a1;
      *a1 = *v27;
      *v27 = v37;
    }
  }

LABEL_47:
  v42 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v43 = 0;
  v44 = 0;
  while (2)
  {
    v45 = v42->n128_u64[0];
    if (v42->n128_u64[0] >= *v25)
    {
      if (*v25 < v45)
      {
        goto LABEL_62;
      }

      v46 = v42->n128_u64[1];
      if (v46 >= *(v25 + 8))
      {
        goto LABEL_62;
      }
    }

    else
    {
      v46 = v42->n128_u64[1];
    }

    *v42 = *v25;
    v47 = v43;
    while (1)
    {
      v48 = (a1 + v47);
      v49 = *(a1[1].n128_u64 + v47);
      if (v45 >= v49)
      {
        break;
      }

LABEL_55:
      v25 -= 16;
      v48[2] = *(a1 + v47 + 16);
      v47 -= 16;
      if (v47 == -32)
      {
        v25 = a1;
        goto LABEL_61;
      }
    }

    if (v49 >= v45)
    {
      if (v46 >= v48[1].n128_u64[1])
      {
        goto LABEL_61;
      }

      goto LABEL_55;
    }

    v25 = &a1[2] + v47;
LABEL_61:
    *v25 = v45;
    *(v25 + 8) = v46;
    if (++v44 != 8)
    {
LABEL_62:
      v25 = v42;
      v43 += 16;
      if (++v42 == a2)
      {
        return 1;
      }

      continue;
    }

    return &v42[1] == a2;
  }
}

__n128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,OffsetPair *,OffsetPair *>(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      n128_u64 = a1[v9].n128_u64;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,OffsetPair *>(a1, a4, v8, n128_u64);
        n128_u64 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if (v12->n128_u64[0] < a1->n128_u64[0] || a1->n128_u64[0] >= v12->n128_u64[0] && v12->n128_u64[1] < a1->n128_u64[1])
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,OffsetPair *>(a1, a4, v8, a1->n128_u64);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v18 = *a1;
        std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,OffsetPair *>(a1, a4, v8);
        if (v14 == v15)
        {
          *v15 = v18;
        }

        else
        {
          *v15 = *v14;
          *v14 = v18;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,OffsetPair *>(a1, &v15[1], a4, &v15[1] - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,OffsetPair *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        if (*v8 < v10 || v10 >= *v8 && v8[1] < v8[3])
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *a4;
      if (*v8 >= *a4)
      {
        v12 = a4[1];
        if (v11 < *v8 || v8[1] >= v12)
        {
          *a4 = *v8;
          if (v5 >= v7)
          {
            while (1)
            {
              v14 = 2 * v7;
              v7 = (2 * v7) | 1;
              v13 = (result + 16 * v7);
              v15 = v14 + 2;
              if (v15 < a3)
              {
                v16 = v13[2];
                if (*v13 < v16 || v16 >= *v13 && v13[1] < v13[3])
                {
                  v13 += 2;
                  v7 = v15;
                }
              }

              if (*v13 < v11 || v11 >= *v13 && v13[1] < v12)
              {
                break;
              }

              *v8 = *v13;
              v8 = v13;
              if (v5 < v7)
              {
                goto LABEL_13;
              }
            }
          }

          v13 = v8;
LABEL_13:
          *v13 = v11;
          v13[1] = v12;
        }
      }
    }
  }

  return result;
}

__n128 std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,OffsetPair *>(__n128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1;
    v5 = &a1[v3];
    a1 = v5 + 1;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[2].n128_u64[0];
      v9 = v5[1].n128_u64[0];
      if (v9 < v8 || v8 >= v9 && v5[1].n128_u64[1] < v5[2].n128_u64[1])
      {
        a1 = v5 + 2;
        v3 = v7;
      }
    }

    result = *a1;
    *v4 = *a1;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,OffsetPair *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v7 = *(a2 - 16);
    if (*v6 >= v7)
    {
      if (v7 < *v6)
      {
        return result;
      }

      v8 = *(a2 - 8);
      if (v6[1] >= v8)
      {
        return result;
      }
    }

    else
    {
      v8 = *(a2 - 8);
    }

    *(a2 - 16) = *v6;
    if (v4 >= 2)
    {
      while (1)
      {
        v10 = v5 - 1;
        v5 = (v5 - 1) >> 1;
        v9 = (result + 16 * v5);
        if (*v9 >= v7 && (v7 < *v9 || v9[1] >= v8))
        {
          break;
        }

        *v6 = *v9;
        v6 = (result + 16 * v5);
        if (v10 <= 1)
        {
          goto LABEL_10;
        }
      }
    }

    v9 = v6;
LABEL_10:
    *v9 = v7;
    v9[1] = v8;
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,PatchingRequest *,false>(uint64_t result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  v8 = result;
  v53 = a2;
  v54 = result;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = (v7 - v8) >> 4;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v46 = *(v7 - 4);
        v53 = v7 - 4;
        if (v46 < *v8)
        {
          v47 = &v54;
          v48 = &v53;
          return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(v47, v48);
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v53 = v7 - 4;
      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PatchingRequest *,0>(v8, (v8 + 16), (v8 + 32), v7 - 4);
    }

    if (v10 == 5)
    {
      v53 = v7 - 4;
      v58 = (v8 + 16);
      v59 = v8;
      v56 = (v8 + 48);
      v57 = (v8 + 32);
      v55 = v7 - 4;
      result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PatchingRequest *,0>(v8, (v8 + 16), (v8 + 32), (v8 + 48));
      if (*(v7 - 4) < *(v8 + 48))
      {
        result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v56, &v55);
        if (*v56 < *(v8 + 32))
        {
          result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v57, &v56);
          if (*v57 < *(v8 + 16))
          {
            result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v58, &v57);
            v49 = *v58;
            v50 = *v8;
            goto LABEL_90;
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      if (a5)
      {
        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PatchingRequest *>(v8, v7);
      }

      else
      {
        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PatchingRequest *>(v8, v7);
      }
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PatchingRequest *,PatchingRequest *>(v8, v7, v7, a3);
      }

      return result;
    }

    v11 = (v8 + 16 * (v10 >> 1));
    v12 = v11;
    v13 = v7 - 4;
    if (v10 < 0x81)
    {
      v58 = v8;
      v59 = (v8 + 16 * (v10 >> 1));
      v57 = (v7 - 4);
      v18 = *v8;
      v19 = *v13;
      if (*v8 >= *v11)
      {
        if (v19 < v18)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v58, &v57);
          if (*v58 < *v59)
          {
            v20 = &v59;
            v21 = &v58;
            goto LABEL_35;
          }
        }
      }

      else
      {
        v20 = &v59;
        if (v19 < v18)
        {
          goto LABEL_22;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v59, &v58);
        if (*v57 < *v58)
        {
          v20 = &v58;
LABEL_22:
          v21 = &v57;
LABEL_35:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(v20, v21);
        }
      }

      if (a5)
      {
        goto LABEL_37;
      }

      goto LABEL_61;
    }

    v58 = (v8 + 16 * (v10 >> 1));
    v59 = v8;
    v57 = (v7 - 4);
    v14 = *v11;
    v15 = *v13;
    if (*v11 < *v8)
    {
      v16 = &v59;
      if (v15 >= v14)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v59, &v58);
        if (*v57 >= *v58)
        {
          goto LABEL_27;
        }

        v16 = &v58;
      }

      v17 = &v57;
      goto LABEL_26;
    }

    if (v15 < v14)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v58, &v57);
      if (*v58 < *v59)
      {
        v16 = &v59;
        v17 = &v58;
LABEL_26:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(v16, v17);
      }
    }

LABEL_27:
    v23 = v11 - 4;
    v22 = *(v11 - 4);
    v24 = *(v8 + 16);
    v58 = v11 - 4;
    v59 = (v8 + 16);
    v25 = *(v7 - 8);
    v57 = (v7 - 8);
    if (v22 < v24)
    {
      v26 = &v59;
      if (v25 >= v22)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v59, &v58);
        if (*v57 >= *v58)
        {
          goto LABEL_42;
        }

        v26 = &v58;
      }

      v27 = &v57;
      goto LABEL_41;
    }

    if (v25 < v22)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v58, &v57);
      if (*v58 < *v59)
      {
        v26 = &v59;
        v27 = &v58;
LABEL_41:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(v26, v27);
      }
    }

LABEL_42:
    v30 = v11[4];
    v29 = v11 + 4;
    v28 = v30;
    v31 = *(v8 + 32);
    v58 = v29;
    v59 = (v8 + 32);
    v32 = *(v7 - 12);
    v57 = (v7 - 12);
    if (v30 < v31)
    {
      v33 = &v59;
      if (v32 >= v28)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v59, &v58);
        if (*v57 >= *v58)
        {
          goto LABEL_51;
        }

        v33 = &v58;
      }

      v34 = &v57;
      goto LABEL_50;
    }

    if (v32 < v28)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v58, &v57);
      if (*v58 < *v59)
      {
        v33 = &v59;
        v34 = &v58;
LABEL_50:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(v33, v34);
      }
    }

LABEL_51:
    v58 = v12;
    v59 = v23;
    v57 = v29;
    v35 = *v12;
    v36 = *v29;
    if (*v12 < *v23)
    {
      v37 = &v59;
      if (v36 >= v35)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v59, &v58);
        if (*v57 >= *v58)
        {
          goto LABEL_60;
        }

        v37 = &v58;
      }

      v38 = &v57;
      goto LABEL_59;
    }

    if (v36 < v35)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v58, &v57);
      if (*v58 < *v59)
      {
        v37 = &v59;
        v38 = &v58;
LABEL_59:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(v37, v38);
      }
    }

LABEL_60:
    v39 = *v8;
    BYTE4(v59) = *(v8 + 4);
    LODWORD(v59) = v39;
    v40 = *(v8 + 8);
    *(v8 + 8) = 0;
    LOBYTE(v39) = *(v12 + 4);
    *v8 = *v12;
    *(v8 + 4) = v39;
    v41 = *(v12 + 1);
    *(v12 + 1) = 0;
    std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100]((v8 + 8), v41);
    v42 = v59;
    *(v12 + 4) = BYTE4(v59);
    *v12 = v42;
    std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100](v12 + 1, v40);
    v8 = v54;
    if (a5)
    {
LABEL_37:
      v7 = v53;
      goto LABEL_62;
    }

LABEL_61:
    v7 = v53;
    if (*(v8 - 16) >= *v8)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,PatchingRequest *,std::__less<void,void> &>(v8, v53);
      v8 = result;
      goto LABEL_71;
    }

LABEL_62:
    v43 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,PatchingRequest *,std::__less<void,void> &>(v8, v7);
    if ((v44 & 1) == 0)
    {
      goto LABEL_69;
    }

    v45 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PatchingRequest *>(v8, v43);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PatchingRequest *>(v43 + 4, v7);
    if (result)
    {
      if (v45)
      {
        return result;
      }

      v53 = v43;
      v7 = v43;
    }

    else
    {
      if (!v45)
      {
LABEL_69:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,PatchingRequest *,false>(v8, v43, a3, -i, a5 & 1);
        v8 = (v43 + 4);
LABEL_71:
        a5 = 0;
        v54 = v8;
        a4 = -i;
        goto LABEL_2;
      }

      v54 = v43 + 4;
      v8 = (v43 + 4);
    }
  }

  v51 = *(v8 + 16);
  v58 = (v8 + 16);
  v59 = v8;
  v52 = *(v7 - 4);
  v57 = (v7 - 4);
  if (v51 < *v8)
  {
    v47 = &v59;
    if (v52 >= v51)
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v59, &v58);
      if (*v57 >= *v58)
      {
        return result;
      }

      v47 = &v58;
    }

    v48 = &v57;
    return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(v47, v48);
  }

  if (v52 < v51)
  {
    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v58, &v57);
    v49 = *v58;
    v50 = *v59;
LABEL_90:
    if (v49 < v50)
    {
      v47 = &v59;
      v48 = &v58;
      return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(v47, v48);
    }
  }

  return result;
}

uint64_t std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(int **a1, int **a2)
{
  v2 = *a1;
  v3 = *a2;
  v8 = **a1;
  v9 = *(*a1 + 4);
  v4 = *(*a1 + 1);
  *(v2 + 1) = 0;
  v5 = *v3;
  *(v2 + 4) = *(v3 + 4);
  *v2 = v5;
  v6 = *(v3 + 1);
  *(v3 + 1) = 0;
  std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100](v2 + 1, v6);
  *v3 = v8;
  *(v3 + 4) = v9;

  return std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100](v3 + 1, v4);
}

int *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PatchingRequest *,0>(int *result, int *a2, int *a3, int *a4)
{
  v7 = result;
  v14 = a2;
  v15 = result;
  v12 = a4;
  v13 = a3;
  v18 = result;
  v16 = a3;
  v17 = a2;
  v8 = *a2;
  v9 = *a3;
  if (*a2 >= *result)
  {
    if (v9 < v8)
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v17, &v16);
      if (*v17 < *v18)
      {
        v10 = &v18;
        v11 = &v17;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v10 = &v18;
    if (v9 < v8)
    {
LABEL_5:
      v11 = &v16;
LABEL_9:
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(v10, v11);
      goto LABEL_10;
    }

    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v18, &v17);
    if (*v16 < *v17)
    {
      v10 = &v17;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v13, &v12);
    if (*v13 < *a2)
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v14, &v13);
      if (*v14 < *v7)
      {
        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v15, &v14);
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PatchingRequest *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 16;
    if (result + 16 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v4;
        v8 = *(v6 + 16);
        if (v8 < *v6)
        {
          v9 = *(v4 + 4);
          v10 = *(v6 + 24);
          v11 = v5;
          *(v6 + 24) = 0;
          while (1)
          {
            v12 = v3 + v11;
            *(v12 + 16) = *(v3 + v11);
            *(v12 + 20) = *(v3 + v11 + 4);
            v13 = *(v3 + v11 + 8);
            *(v12 + 8) = 0;
            std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100]((v3 + v11 + 24), v13);
            if (!v11)
            {
              break;
            }

            v11 -= 16;
            if (v8 >= *(v12 - 16))
            {
              v14 = v3 + v11 + 16;
              goto LABEL_10;
            }
          }

          v14 = v3;
LABEL_10:
          *v14 = v8;
          *(v14 + 4) = v9;
          result = std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100]((v14 + 8), v10);
        }

        v4 = v7 + 16;
        v5 += 16;
        v6 = v7;
      }

      while (v7 + 16 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PatchingRequest *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result + 16;
    if (result + 16 != a2)
    {
      v4 = (result + 24);
      do
      {
        v5 = v3;
        v6 = *(result + 16);
        if (v6 < *result)
        {
          v7 = *(v3 + 4);
          v8 = *(result + 24);
          *(result + 24) = 0;
          v9 = v4;
          v10 = v4;
          do
          {
            *(v9 - 2) = *(v9 - 6);
            *(v9 - 4) = *(v9 - 20);
            v11 = *(v10 - 2);
            v10 -= 2;
            *v10 = 0;
            std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100](v9, v11);
            v12 = *(v9 - 10);
            v9 = v10;
          }

          while (v6 < v12);
          *(v10 - 2) = v6;
          *(v10 - 4) = v7;
          std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100](v10, v8);
        }

        v3 = v5 + 16;
        v4 += 2;
        result = v5;
      }

      while (v5 + 16 != a2);
    }
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,PatchingRequest *,std::__less<void,void> &>(uint64_t a1, int *a2)
{
  v17 = a2;
  v3 = *a1;
  v4 = *(a1 + 4);
  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3 >= *(a2 - 4))
  {
    v9 = (a1 + 16);
    do
    {
      v7 = v9;
      if (v9 >= a2)
      {
        break;
      }

      v9 += 4;
    }

    while (v3 >= *v7);
  }

  else
  {
    v7 = a1;
    do
    {
      v8 = v7[4];
      v7 += 4;
    }

    while (v3 >= v8);
  }

  v18 = v7;
  if (v7 < a2)
  {
    do
    {
      v10 = *(a2 - 4);
      a2 -= 4;
    }

    while (v3 < v10);
    v17 = a2;
  }

  if (v7 < a2)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v18, &v17);
      v7 = v18;
      do
      {
        v11 = v7[4];
        v7 += 4;
      }

      while (v3 >= v11);
      v18 = v7;
      v12 = v17;
      do
      {
        v13 = *(v12 - 4);
        v12 -= 4;
      }

      while (v3 < v13);
      v17 = v12;
    }

    while (v7 < v12);
  }

  if (v7 - 4 != a1)
  {
    v14 = *(v7 - 4);
    *(a1 + 4) = *(v7 - 12);
    *a1 = v14;
    v15 = *(v7 - 1);
    *(v7 - 1) = 0;
    std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100](v6, v15);
  }

  *(v7 - 4) = v3;
  *(v7 - 12) = v4;
  std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100](v7 - 1, v5);
  return v18;
}

int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,PatchingRequest *,std::__less<void,void> &>(uint64_t a1, int *a2)
{
  v4 = 0;
  v5 = *a1;
  v6 = *(a1 + 4);
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *(a1 + 8) = 0;
  do
  {
    v9 = *(a1 + v4 + 16);
    v4 += 16;
  }

  while (v9 < v5);
  v10 = a1 + v4;
  v21 = (a1 + v4);
  if (v4 == 16)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v12 = *(a2 - 4);
      a2 -= 4;
    }

    while (v12 >= v5);
  }

  else
  {
    do
    {
      v11 = *(a2 - 4);
      a2 -= 4;
    }

    while (v11 >= v5);
  }

  v20 = a2;
  v13 = (a1 + v4);
  if (v10 < a2)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v21, &v20);
      v13 = v21;
      do
      {
        v14 = v13[4];
        v13 += 4;
      }

      while (v14 < v5);
      v21 = v13;
      v15 = v20;
      do
      {
        v16 = *(v15 - 4);
        v15 -= 4;
      }

      while (v16 >= v5);
      v20 = v15;
    }

    while (v13 < v15);
  }

  if (v13 - 4 != a1)
  {
    v17 = *(v13 - 4);
    *(a1 + 4) = *(v13 - 12);
    *a1 = v17;
    v18 = *(v13 - 1);
    *(v13 - 1) = 0;
    std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100](v8, v18);
  }

  *(v13 - 4) = v5;
  *(v13 - 12) = v6;
  std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100](v13 - 1, v7);
  return v13 - 4;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PatchingRequest *>(int *a1, int *a2)
{
  v2 = a2;
  v25 = a2;
  v26 = a1;
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v10 = a1[4];
        v30 = (a1 + 4);
        v31 = a1;
        v11 = *(a2 - 4);
        v29 = (a2 - 4);
        if (v10 < *a1)
        {
          v6 = &v31;
          if (v11 >= v10)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v31, &v30);
            if (*v29 >= *v30)
            {
              return 1;
            }

            v6 = &v30;
          }

          v7 = &v29;
          goto LABEL_28;
        }

        if (v11 >= v10)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v30, &v29);
        v8 = *v30;
        v9 = *v31;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PatchingRequest *,0>(a1, a1 + 4, a1 + 8, a2 - 4);
        return 1;
      case 5:
        v30 = (a1 + 4);
        v31 = a1;
        v28 = (a1 + 12);
        v29 = (a1 + 8);
        v27 = a2 - 4;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PatchingRequest *,0>(a1, a1 + 4, a1 + 8, a1 + 12);
        if (*(v2 - 4) >= a1[12])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v28, &v27);
        if (*v28 >= a1[8])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v29, &v28);
        if (*v29 >= a1[4])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v30, &v29);
        v8 = *v30;
        v9 = *a1;
        break;
      default:
        goto LABEL_18;
    }

    if (v8 < v9)
    {
      v6 = &v31;
      v7 = &v30;
      goto LABEL_28;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 4);
    v25 = a2 - 4;
    if (v5 < *a1)
    {
      v6 = &v26;
      v7 = &v25;
LABEL_28:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(v6, v7);
    }

    return 1;
  }

LABEL_18:
  v13 = a1 + 8;
  v12 = a1[8];
  v14 = a1[4];
  v30 = (a1 + 4);
  v31 = a1;
  v29 = (a1 + 8);
  if (v14 < *a1)
  {
    v15 = &v31;
    if (v12 >= v14)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v31, &v30);
      if (*v29 >= *v30)
      {
        goto LABEL_33;
      }

      v15 = &v30;
    }

    v16 = &v29;
    goto LABEL_32;
  }

  if (v12 < v14)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v30, &v29);
    if (*v30 < *v31)
    {
      v15 = &v31;
      v16 = &v30;
LABEL_32:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(v15, v16);
    }
  }

LABEL_33:
  v17 = a1 + 12;
  if (a1 + 12 == v2)
  {
    return 1;
  }

  v18 = 0;
  while (1)
  {
    v19 = *v17;
    if (*v17 < *v13)
    {
      v20 = *(v17 + 4);
      v21 = *(v17 + 1);
      *(v17 + 1) = 0;
      do
      {
        v22 = v13;
        v13[4] = *v13;
        *(v13 + 20) = *(v13 + 4);
        v23 = *(v13 + 1);
        *(v13 + 1) = 0;
        std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100](v13 + 3, v23);
        if (v13 == v26)
        {
          break;
        }

        v13 -= 4;
      }

      while (v19 < *(v22 - 4));
      *v22 = v19;
      *(v22 + 4) = v20;
      std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100](v22 + 1, v21);
      ++v18;
      v2 = v25;
      if (v18 == 8)
      {
        break;
      }
    }

    v13 = v17;
    v17 += 4;
    if (v17 == v2)
    {
      return 1;
    }
  }

  return v17 + 4 == v25;
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PatchingRequest *,PatchingRequest *>(int *a1, int *a2, int *a3, uint64_t a4)
{
  v25 = a1;
  if (a1 != a2)
  {
    v7 = a1;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[4 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PatchingRequest *>(v7, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    v24 = a2;
    v12 = a2;
    if (a2 != a3)
    {
      do
      {
        if (*v12 < *v25)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<PatchingRequest *&,PatchingRequest *&>(&v24, &v25);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PatchingRequest *>(v25, a4, v8, v25);
          v12 = v24;
        }

        v12 += 4;
        v24 = v12;
      }

      while (v12 != a3);
      v7 = v25;
      v8 = (a2 - v25) >> 4;
    }

    if (v8 >= 2)
    {
      v13 = (a2 - 2);
      do
      {
        if (v8 >= 2)
        {
          v14 = *v7;
          v27 = *(v7 + 4);
          v26 = v14;
          v15 = *(v7 + 1);
          *(v7 + 1) = 0;
          v28 = v15;
          v16 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PatchingRequest *>(v7, a4, v8);
          v17 = v16;
          v18 = (v13 - 1);
          if (v13 - 1 == v16)
          {
            v21 = v26;
            *(v16 + 4) = v27;
            *v16 = v21;
            std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100](v16 + 1, v15);
          }

          else
          {
            v19 = *v18;
            *(v16 + 4) = *(v13 - 4);
            *v16 = v19;
            v20 = *v13;
            *v13 = 0;
            std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100](v16 + 1, v20);
            *v18 = v26;
            *(v13 - 4) = v27;
            v28 = 0;
            std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100](v13, v15);
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PatchingRequest *>(v7, (v17 + 4), a4, ((v17 + 4) - v7) >> 4);
          }
        }

        v13 -= 2;
      }

      while (v8-- > 2);
      return v24;
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PatchingRequest *>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = result;
    v6 = a4 - result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 4)
    {
      v9 = v6 >> 3;
      v10 = (v6 >> 3) + 1;
      v11 = (result + 16 * v10);
      v12 = v9 + 2;
      if (v9 + 2 >= a3)
      {
        v13 = *v11;
      }

      else
      {
        v13 = *v11;
        v14 = v11[4];
        if (*v11 <= v14)
        {
          v13 = v11[4];
        }

        if (*v11 < v14)
        {
          v11 += 4;
          v10 = v12;
        }
      }

      v15 = *a4;
      if (v13 >= *a4)
      {
        v16 = *(a4 + 4);
        v17 = *(a4 + 1);
        *(a4 + 1) = 0;
        do
        {
          v18 = v11;
          v19 = *v11;
          *(a4 + 4) = *(v18 + 4);
          *a4 = v19;
          v20 = *(v18 + 1);
          *(v18 + 1) = 0;
          std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100](a4 + 1, v20);
          if (v7 < v10)
          {
            break;
          }

          v11 = (v5 + 16 * ((2 * v10) | 1));
          if (2 * v10 + 2 >= a3)
          {
            v21 = *v11;
            v10 = (2 * v10) | 1;
          }

          else
          {
            v21 = *v11;
            v22 = v11[4];
            if (*v11 <= v22)
            {
              v21 = v11[4];
            }

            if (*v11 >= v22)
            {
              v10 = (2 * v10) | 1;
            }

            else
            {
              v11 += 4;
              v10 = 2 * v10 + 2;
            }
          }

          a4 = v18;
        }

        while (v21 >= v15);
        *v18 = v15;
        *(v18 + 4) = v16;

        return std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100](v18 + 1, v17);
      }
    }
  }

  return result;
}

int *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PatchingRequest *>(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = (a3 - 2) / 2;
  do
  {
    v6 = &a1[4 * v4];
    v7 = v6 + 4;
    if (2 * v4 + 2 >= a3)
    {
      v4 = (2 * v4) | 1;
    }

    else
    {
      v9 = v6[8];
      v8 = v6 + 8;
      if (*(v8 - 4) >= v9)
      {
        v4 = (2 * v4) | 1;
      }

      else
      {
        v7 = v8;
        v4 = 2 * v4 + 2;
      }
    }

    v10 = *v7;
    *(a1 + 4) = *(v7 + 4);
    *a1 = v10;
    v11 = *(v7 + 1);
    *(v7 + 1) = 0;
    std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100](a1 + 1, v11);
    a1 = v7;
  }

  while (v4 <= v5);
  return v7;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PatchingRequest *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = result;
    v6 = v4 >> 1;
    v7 = (result + 16 * (v4 >> 1));
    v8 = (a2 - 16);
    v9 = *(a2 - 16);
    if (*v7 < v9)
    {
      v10 = *(a2 - 12);
      v11 = *(a2 - 8);
      *(a2 - 8) = 0;
      do
      {
        v12 = v7;
        v13 = *v7;
        *(v8 + 4) = *(v12 + 4);
        *v8 = v13;
        v14 = *(v12 + 1);
        *(v12 + 1) = 0;
        std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100](v8 + 1, v14);
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (v5 + 16 * v6);
        v8 = v12;
      }

      while (*v7 < v9);
      *v12 = v9;
      *(v12 + 4) = v10;

      return std::unique_ptr<std::unordered_map<unsigned long long,PerBufferPatchingRequest>>::reset[abi:ne200100](v12 + 1, v11);
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,std::__unordered_map_hasher<DYCommandBufferUID,std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,DYCommandBufferUIDHash,std::equal_to<DYCommandBufferUID>,true>,std::__unordered_map_equal<DYCommandBufferUID,std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,std::equal_to<DYCommandBufferUID>,DYCommandBufferUIDHash,true>,std::allocator<std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>>>::__emplace_unique_key_args<DYCommandBufferUID,std::piecewise_construct_t const&,std::tuple<DYCommandBufferUID const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *a2 ^ (2 * v2);
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2 ^ (2 * v2);
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = v3 & (*&v4 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (*a2 != v8[2] || v2 != *(v8 + 6))
  {
    goto LABEL_21;
  }

  return v8;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__tree<BufferEntry>::destroy((a2 + 4), a2[5]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::__tree<BufferEntry>::__emplace_unique_key_args<BufferEntry,BufferEntry const&>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<BufferEntry>::__find_equal<BufferEntry>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<BufferEntry>::__find_equal<BufferEntry>(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = a3 + 2;
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = v4 + 4;
        v14 = a3;
        v15 = v7;
        v10 = v4 + 6;
        v12 = v4 + 4;
        v13 = v4 + 6;
        if (!std::__tuple_less<2ul>::operator()[abi:ne200100]<std::tuple<BufferAndOffset const&,BufferAndOffset const&>,std::tuple<BufferAndOffset const&,BufferAndOffset const&>>(&v16, &v14, &v12))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      v14 = v9;
      v15 = v10;
      v12 = a3;
      v13 = v7;
      if (!std::__tuple_less<2ul>::operator()[abi:ne200100]<std::tuple<BufferAndOffset const&,BufferAndOffset const&>,std::tuple<BufferAndOffset const&,BufferAndOffset const&>>(&v16, &v14, &v12))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_10:
  *a2 = v8;
  return v5;
}

uint64_t *std::__tree<BufferEntry>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

BOOL std::__tuple_less<2ul>::operator()[abi:ne200100]<std::tuple<BufferAndOffset const&,BufferAndOffset const&>,std::tuple<BufferAndOffset const&,BufferAndOffset const&>>(uint64_t a1, unint64_t **a2, unint64_t **a3)
{
  v3 = **a2;
  v4 = **a3;
  result = 1;
  if (v3 >= v4)
  {
    if (v4 < v3)
    {
      return 0;
    }

    v6 = (*a2)[1];
    v7 = (*a3)[1];
    if (v6 >= v7)
    {
      if (v7 < v6)
      {
        return 0;
      }

      v8 = a2[1];
      v9 = a3[1];
      if (*v8 >= *v9 && (*v9 < *v8 || v8[1] >= v9[1]))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,std::__unordered_map_hasher<DYCommandBufferUID,std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,DYCommandBufferUIDHash,std::equal_to<DYCommandBufferUID>,true>,std::__unordered_map_equal<DYCommandBufferUID,std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,std::equal_to<DYCommandBufferUID>,DYCommandBufferUIDHash,true>,std::allocator<std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,std::__unordered_map_hasher<DYCommandBufferUID,std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,DYCommandBufferUIDHash,std::equal_to<DYCommandBufferUID>,true>,std::__unordered_map_equal<DYCommandBufferUID,std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,std::equal_to<DYCommandBufferUID>,DYCommandBufferUIDHash,true>,std::allocator<std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<PatchingRequest>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<PatchingRequest>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<PatchingRequest>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<PatchingRequest>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<PatchingRequest>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<PatchingRequest>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<PatchingRequest>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<PatchingRequest>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<PatchingRequest>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<PatchingRequest>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<PatchingRequest>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<PatchingRequest>>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 24);
      std::vector<PatchingRequest>::__destroy_vector::operator()[abi:ne200100](&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

id DYMTLGetAssociatedObject(void *a1, unsigned int a2)
{
  v2 = getAssociatedObject(a1, a2);

  return v2;
}

id getAssociatedObject(void *a1, unsigned int a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  if (v3 && a2 <= 4)
  {
    v5 = objc_getAssociatedObject(v3, &sAssociatedTypes + 4 * a2);
  }

  return v5;
}

id DYMTLGetNullableAssociatedObject(void *a1, unsigned int a2)
{
  v2 = getAssociatedObject(a1, a2);

  return v2;
}

void DYMTLSetAssociatedObject(void *a1, unsigned int a2, void *a3)
{
  object = a1;
  v5 = a3;
  if (a2 <= 4 && object && v5)
  {
    objc_setAssociatedObject(object, &sAssociatedTypes + 4 * a2, v5, 0x301);
  }
}

id DYMTLNewTexture(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 newTextureWithDescriptor:v3];
  DYMTLSetAssociatedObject(v4, 0, v3);

  return v4;
}

id DYMTLNewTextureView(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v13 = a1;
  v14 = v13;
  if (a5 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = a5;
  }

  if (a7 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = a7;
  }

  v17 = [v13 newTextureViewWithPixelFormat:a2 textureType:a3 levels:a4 slices:v15, a6, v16];
  v18 = getAssociatedObject(v14, 0);
  v19 = [v18 copy];

  [v19 setPixelFormat:a2];
  [v19 setTextureType:a3];
  [v19 setMipmapLevelCount:a5];
  [v19 setArrayLength:a7];
  DYMTLSetAssociatedObject(v17, 0, v19);

  return v17;
}

id DYMTLNewTextureViewSwizzled(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unsigned int a8)
{
  v15 = a1;
  v16 = v15;
  if (a5 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = a5;
  }

  if (a7 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = a7;
  }

  v19 = [v15 newTextureViewWithPixelFormat:a2 textureType:a3 levels:a4 slices:v17, a6, v18];
  v20 = getAssociatedObject(v16, 0);
  v21 = [v20 copy];

  [v21 setPixelFormat:a2];
  [v21 setTextureType:a3];
  [v21 setMipmapLevelCount:a5];
  [v21 setArrayLength:a7];
  [v21 setSwizzle:a8];
  DYMTLSetAssociatedObject(v19, 0, v21);

  return v19;
}

void DYMTLAddDrawableTextureDescriptor(void *a1)
{
  v2 = a1;
  v1 = getAssociatedObject(v2, 0);
  if (!v1)
  {
    v1 = objc_alloc_init(MEMORY[0x277CD7050]);
    [v1 setTextureType:{objc_msgSend(v2, "textureType")}];
    [v1 setPixelFormat:objc_msgSend(v2, "pixelFormat")];
    [v1 setWidth:{objc_msgSend(v2, "width")}];
    [v1 setHeight:{objc_msgSend(v2, "height")}];
    [v1 setDepth:{objc_msgSend(v2, "depth")}];
    [v1 setMipmapLevelCount:{objc_msgSend(v2, "mipmapLevelCount")}];
    [v1 setSampleCount:{objc_msgSend(v2, "sampleCount")}];
    [v1 setArrayLength:{objc_msgSend(v2, "arrayLength")}];
    [v1 setCpuCacheMode:{objc_msgSend(v2, "cpuCacheMode")}];
    [v1 setStorageMode:{objc_msgSend(v2, "storageMode")}];
    [v1 setUsage:{objc_msgSend(v2, "usage")}];
    DYMTLSetAssociatedObject(v2, 0, v1);
  }
}

id DYMTLNewRenderPipelineStateWithDescriptor(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3 & 0xFFFFFFFFFFF8FFFCLL;
  v10 = a3 & 0xFFFFFFFFFFF8FFFCLL | 0x50003;
  if (objc_opt_respondsToSelector())
  {
    v11 = [v8 pipelineLibrary];

    if (v11)
    {
      v10 = v9 | 0x10003;
    }
  }

  v15 = 0;
  v12 = [v7 newRenderPipelineStateWithDescriptor:v8 options:v10 reflection:&v15 error:a4];
  v13 = v15;
  DYMTLSetAssociatedObject(v12, 0, v8);
  DYMTLSetAssociatedObject(v12, 2u, v13);

  return v12;
}

id DYMTLNewRenderPipelineStateWithTileDescriptor(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v11 = 0;
  v8 = [a1 newRenderPipelineStateWithTileDescriptor:v7 options:a3 & 0xFFFFFFFFFFF8FFFCLL | 0x50003 reflection:&v11 error:a4];
  v9 = v11;
  DYMTLSetAssociatedObject(v8, 1u, v7);
  DYMTLSetAssociatedObject(v8, 2u, v9);

  return v8;
}

id DYMTLNewComputePipelineStateWithDescriptor(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3 & 0xFFFFFFFFFFF8FFFCLL;
  v10 = a3 & 0xFFFFFFFFFFF8FFFCLL | 0x50003;
  if (objc_opt_respondsToSelector())
  {
    v11 = [v8 pipelineLibrary];

    if (v11)
    {
      v10 = v9 | 0x10003;
    }
  }

  v15 = 0;
  v12 = [v7 newComputePipelineStateWithDescriptor:v8 options:v10 reflection:&v15 error:a4];
  v13 = v15;
  DYMTLSetAssociatedObject(v12, 0, v8);
  DYMTLSetAssociatedObject(v12, 2u, v13);

  return v12;
}

id DYMTLNewComputePipelineStateWithFunction(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v12 = 0;
  v8 = [a1 newComputePipelineStateWithFunction:v7 options:a3 & 0xFFFFFFFFFFF8FFFCLL | 0x50003 reflection:&v12 error:a4];
  v9 = v12;
  v10 = objc_alloc_init(MEMORY[0x277CD6D28]);
  [v10 setComputeFunction:v7];
  DYMTLSetAssociatedObject(v8, 0, v10);
  DYMTLSetAssociatedObject(v8, 2u, v9);

  return v8;
}

void sub_24D6E027C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_24D6E0310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::vector<std::vector<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>::push_back[abi:ne200100](void **result, uint64_t a2)
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
      std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>>(result, v10);
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
    result = std::__split_buffer<std::vector<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>::~__split_buffer(v16);
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

void sub_24D6E04CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::vector<GPUTools::MTL::Utils::DYMTLIndirectArgumentBufferInfo>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::vector<std::vector<std::vector<GPUTools::MTL::Utils::DYMTLIndirectArgumentBufferInfo>>>::push_back[abi:ne200100](void **result, uint64_t a2)
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
      std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>>(result, v10);
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
    result = std::__split_buffer<std::vector<std::vector<GPUTools::MTL::Utils::DYMTLIndirectArgumentBufferInfo>>>::~__split_buffer(v16);
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

void std::vector<unsigned long long>::push_back[abi:ne200100](const void **a1, void *a2)
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
}

void sub_24D6E0DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, void *a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<DYMTLIABDecodingOp>::destroy(&a15, a16);
  _Unwind_Resume(a1);
}

uint64_t std::set<DYMTLIABDecodingOp>::insert[abi:ne200100]<std::__tree_const_iterator<DYMTLIABDecodingOp,std::__tree_node<DYMTLIABDecodingOp,void *> *,long>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<DYMTLIABDecodingOp>::__emplace_hint_unique_key_args<DYMTLIABDecodingOp,DYMTLIABDecodingOp const&>(v5, v5 + 1, (v4 + 4));
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

void rencodeBufferData(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27)
{
  v34 = a22;
  v33 = a23;
  v35 = a25;
  v70[14] = *MEMORY[0x277D85DE8];
  v70[0] = a26;
  v70[1] = a27;
  v69 = a1;
  v68 = a2;
  v67 = a3;
  v36 = a4;
  v66 = a5;
  v37 = v34;
  v65 = v35;
  [v68 setArgumentBuffer:v37 offset:v33];
  DYMTLGetOriginalObject(v37);
  v63[0] = &a21;
  v63[1] = &v69;
  v64 = v63[2] = &a23;
  v38 = &v67;
  v39 = &v64;
  v40 = &a23;
  v41 = v63;
  v42 = a6;
  v43 = a13;
  v44 = &v68;
  v45 = &v65;
  v46 = &v69;
  v47 = v70;
  v48 = &a14;
  v49 = a20;
  v50 = &v66;
  v51 = &a21;
  v52 = a7;
  v53 = &a15;
  v54 = a9;
  v55 = a8;
  v56 = &a16;
  v57 = a10;
  v58 = &a17;
  v59 = a11;
  v60 = &a18;
  v61 = a12;
  v62 = &a19;
  v70[9] = 0;
  operator new();
}

void sub_24D6E1D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, void *a38)
{
  std::__function::__value_func<void ()(MTLArrayType *,unsigned long)>::~__value_func[abi:ne200100](v40 - 192);
  std::__function::__value_func<void ()(MTLStructType *,unsigned long)>::~__value_func[abi:ne200100](v40 - 160);

  _Unwind_Resume(a1);
}

void sub_24D6E1F1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<MTLStructType * ()(MTLArrayType *,unsigned long)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<MTLStructType * ()(MTLStructType *,unsigned long)>::~__value_func[abi:ne200100](va1);

  _Unwind_Resume(a1);
}

id std::function<MTLStructType * ()(MTLStructType *,unsigned long)>::operator()(uint64_t a1, void *a2, uint64_t a3)
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

void sub_24D6E2278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DYMTLReplayerIAB::~DYMTLReplayerIAB(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<DYMTLReplayerIAB>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<DYMTLReplayerIAB>::__emplace_back_slow_path<DYMTLReplayerIAB const&>(a1, a2);
  }

  else
  {
    std::vector<DYMTLReplayerIAB>::__construct_one_at_end[abi:ne200100]<DYMTLReplayerIAB const&>(a1, a2);
    result = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

void std::function<void ()(MTLStructType *,unsigned long)>::operator()(uint64_t a1, void *a2, uint64_t a3)
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

__n128 std::__function::__func<rencodeBufferData(unsigned long long,void *,objc_object  {objcproto18MTLArgumentEncoder}*,_MTLIndirectArgumentBufferLayout *,MTLStructType *,std::unordered_map<unsigned long long,std::set<DYMTLIABDecodingOp>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::less<std::set><std::pair<unsigned long long const>>> *,std::map<unsigned long long,std::vector<DYMTLOriginalProcessBuffer,std::less<std::set><std::vector>>,DYMTLIABDecodingOp<unsigned long long>,std::less<std::set><std::equal_to<unsigned long long><std::pair,std::less<std::set><std::vector>>>> const&,MTLStructType *<unsigned long long,unsigned long long,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>> const&,MTLStructType *<unsigned long long,std::map<unsigned long long,std::less<std::set><unsigned long long>>,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,std::less<std::set><unsigned long long>>>> const&,MTLStructType *<unsigned long long,objc_object  {objcproto15MTLSamplerState}* {__strong},std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,objc_object  {objcproto15MTLSamplerState}>>> &,MTLStructType *<unsigned long long,unsigned long long,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>> const,MTLStructType *<unsigned long long,unsigned long long,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>> const,MTLStructType *<unsigned long long,unsigned long long,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>> const,MTLStructType *<unsigned long long,objc_object * {__strong},std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,objc_object>>> const&,std::unordered_map<unsigned long long,std::set<DYMTLIABDecodingOp>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::less<std::set><std::pair<unsigned long long const>>> *<unsigned long long,unsigned long long,std::vector<DYMTLOriginalProcessBuffer,std::less<std::set><std::vector>>,std::equal_to<unsigned long long><std::pair,unsigned long long>> *,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>*,std::unordered_map<unsigned long long,std::set<DYMTLIABDecodingOp>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::less<std::set><std::pair<unsigned long long const>>> *<unsigned long long,unsigned long long,std::vector<DYMTLOriginalProcessBuffer,std::less<std::set><std::vector>>,std::equal_to<unsigned long long><std::pair,unsigned long long>>,std::unordered_map<unsigned long long,std::set<DYMTLIABDecodingOp>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::less<std::set><std::pair<unsigned long long const>>> *<unsigned long long,unsigned long long,std::vector<DYMTLOriginalProcessBuffer,std::less<std::set><std::vector>>,std::equal_to<unsigned long long><std::pair,unsigned long long>>,std::unordered_map<unsigned long long,std::set<DYMTLIABDecodingOp>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::less<std::set><std::pair<unsigned long long const>>> *<unsigned long long,unsigned long long,std::vector<DYMTLOriginalProcessBuffer,std::less<std::set><std::vector>>,std::equal_to<unsigned long long><std::pair,unsigned long long>>,std::unordered_map<unsigned long long,std::set<DYMTLIABDecodingOp>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::less<std::set><std::pair<unsigned long long const>>> *<unsigned long long,unsigned long long,std::vector<DYMTLOriginalProcessBuffer,std::less<std::set><std::vector>>,std::equal_to<unsigned long long><std::pair,unsigned long long>>,std::set const&,MTLStructType *<unsigned long long,MTLStructType *<unsigned long long,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>>>>,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,std::equal_to<unsigned long long><std::pair,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>>>>> *,objc_object  {objcproto9MTLBuffer}*,unsigned long long,_MTLArgumentBufferPatchingType *,DYIABPatcher *,DYCommandBufferUID)::$_0,std::less<std::set><DYIABPatcher>,void ()(MTLArrayType *,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2860B27C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<rencodeBufferData(unsigned long long,void *,objc_object  {objcproto18MTLArgumentEncoder}*,_MTLIndirectArgumentBufferLayout *,MTLStructType *,std::unordered_map<unsigned long long,std::set<DYMTLIABDecodingOp>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::less<std::set><std::pair<unsigned long long const>>> *,std::map<unsigned long long,std::vector<DYMTLOriginalProcessBuffer,std::less<std::set><std::vector>>,DYMTLIABDecodingOp<unsigned long long>,std::less<std::set><std::equal_to<unsigned long long><std::pair,std::less<std::set><std::vector>>>> const&,MTLStructType *<unsigned long long,unsigned long long,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>> const&,MTLStructType *<unsigned long long,std::map<unsigned long long,std::less<std::set><unsigned long long>>,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,std::less<std::set><unsigned long long>>>> const&,MTLStructType *<unsigned long long,objc_object  {objcproto15MTLSamplerState}* {__strong},std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,objc_object  {objcproto15MTLSamplerState}>>> &,MTLStructType *<unsigned long long,unsigned long long,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>> const,MTLStructType *<unsigned long long,unsigned long long,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>> const,MTLStructType *<unsigned long long,unsigned long long,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>> const,MTLStructType *<unsigned long long,objc_object * {__strong},std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,objc_object>>> const&,std::unordered_map<unsigned long long,std::set<DYMTLIABDecodingOp>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::less<std::set><std::pair<unsigned long long const>>> *<unsigned long long,unsigned long long,std::vector<DYMTLOriginalProcessBuffer,std::less<std::set><std::vector>>,std::equal_to<unsigned long long><std::pair,unsigned long long>> *,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>*,std::unordered_map<unsigned long long,std::set<DYMTLIABDecodingOp>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::less<std::set><std::pair<unsigned long long const>>> *<unsigned long long,unsigned long long,std::vector<DYMTLOriginalProcessBuffer,std::less<std::set><std::vector>>,std::equal_to<unsigned long long><std::pair,unsigned long long>>,std::unordered_map<unsigned long long,std::set<DYMTLIABDecodingOp>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::less<std::set><std::pair<unsigned long long const>>> *<unsigned long long,unsigned long long,std::vector<DYMTLOriginalProcessBuffer,std::less<std::set><std::vector>>,std::equal_to<unsigned long long><std::pair,unsigned long long>>,std::unordered_map<unsigned long long,std::set<DYMTLIABDecodingOp>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::less<std::set><std::pair<unsigned long long const>>> *<unsigned long long,unsigned long long,std::vector<DYMTLOriginalProcessBuffer,std::less<std::set><std::vector>>,std::equal_to<unsigned long long><std::pair,unsigned long long>>,std::unordered_map<unsigned long long,std::set<DYMTLIABDecodingOp>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::less<std::set><std::pair<unsigned long long const>>> *<unsigned long long,unsigned long long,std::vector<DYMTLOriginalProcessBuffer,std::less<std::set><std::vector>>,std::equal_to<unsigned long long><std::pair,unsigned long long>>,std::set const&,MTLStructType *<unsigned long long,MTLStructType *<unsigned long long,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>>>>,std::hash,std::equal_to,std::less<std::set><std::equal_to<unsigned long long><std::pair,std::equal_to<unsigned long long><std::pair,std::less<std::set><std::equal_to<unsigned long long><std::pair,unsigned long long>>>>>> *,objc_object  {objcproto9MTLBuffer}*,unsigned long long,_MTLArgumentBufferPatchingType *,DYIABPatcher *,DYCommandBufferUID)::$_0,std::less<std::set><DYIABPatcher>,void ()(MTLArrayType *,unsigned long)>::operator()(uint64_t a1, id *a2, uint64_t *a3)
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
      std::function<void ()(MTLStructType *,unsigned long)>::operator()(v8, v9, v4 + [v14 argumentIndexStride] * v6);
LABEL_7:

      continue;
    }

    v10 = [v14 elementArrayType];

    if (v10)
    {
      v11 = *(a1 + 16);
      v9 = [v14 elementArrayType];
      std::function<void ()(MTLArrayType *,unsigned long)>::operator()(v11, v9, v4 + [v14 argumentIndexStride] * v6);
      goto LABEL_7;
    }

    v12 = [v14 elementType];
    v13 = v12;
    if ((v12 - 58) <= 0x16 && ((1 << (v12 - 58)) & 0x700007) != 0)
    {
      if (DYMTLDataTypeNeedsReencoding(v12, **(a1 + 24)))
      {
        rencodeBufferData(unsigned long long,void *,objc_object  {objcproto18MTLArgumentEncoder}*,_MTLIndirectArgumentBufferLayout *,MTLStructType *,std::unordered_map<unsigned long long,MTLStructType *::set<DYMTLIABDecodingOp,MTLStructType *::less<MTLStructType *::set>,MTLStructType *::allocator<MTLStructType *::set>>,MTLStructType *::hash<unsigned long long>,MTLStructType *::equal_to<unsigned long long>,MTLStructType *::less<MTLStructType *::set><MTLStructType *::pair<unsigned long long const,MTLStructType *::allocator<MTLStructType *::set>>>> *,MTLStructType *::map<unsigned long long,MTLStructType *::vector<DYMTLOriginalProcessBuffer,MTLStructType *::less<MTLStructType *::set><MTLStructType *::vector>>,DYMTLIABDecodingOp<unsigned long long>,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,MTLStructType *::less<MTLStructType *::set><MTLStructType *::vector>>>> const&,std::__1<unsigned long long,unsigned long long,MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>> const&,std::__1<unsigned long long,MTLStructType *::map<unsigned long long,MTLStructType *::less<MTLStructType *::set><unsigned long long>>,MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,MTLStructType *::less<MTLStructType *::set><unsigned long long>>>> const&,std::__1<unsigned long long,objc_object  {objcproto15MTLSamplerState}* {__strong},MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,objc_object  {objcproto15MTLSamplerState}>>> &,std::__1<unsigned long long,unsigned long long,MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>> const,std::__1<unsigned long long,unsigned long long,MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>> const,std::__1<unsigned long long,unsigned long long,MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>> const,std::__1<unsigned long long,objc_object * {__strong},MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,objc_object>>> const&,std::unordered_map<unsigned long long,MTLStructType *::set<DYMTLIABDecodingOp,MTLStructType *::less<MTLStructType *::set>,MTLStructType *::allocator<MTLStructType *::set>>,MTLStructType *::hash<unsigned long long>,MTLStructType *::equal_to<unsigned long long>,MTLStructType *::less<MTLStructType *::set><MTLStructType *::pair<unsigned long long const,MTLStructType *::allocator<MTLStructType *::set>>>> *<unsigned long long,unsigned long long,MTLStructType *::vector<DYMTLOriginalProcessBuffer,MTLStructType *::less<MTLStructType *::set><MTLStructType *::vector>>,MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>> *,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>*,std::unordered_map<unsigned long long,MTLStructType *::set<DYMTLIABDecodingOp,MTLStructType *::less<MTLStructType *::set>,MTLStructType *::allocator<MTLStructType *::set>>,MTLStructType *::hash<unsigned long long>,MTLStructType *::equal_to<unsigned long long>,MTLStructType *::less<MTLStructType *::set><MTLStructType *::pair<unsigned long long const,MTLStructType *::allocator<MTLStructType *::set>>>> *<unsigned long long,unsigned long long,MTLStructType *::vector<DYMTLOriginalProcessBuffer,MTLStructType *::less<MTLStructType *::set><MTLStructType *::vector>>,MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>,std::unordered_map<unsigned long long,MTLStructType *::set<DYMTLIABDecodingOp,MTLStructType *::less<MTLStructType *::set>,MTLStructType *::allocator<MTLStructType *::set>>,MTLStructType *::hash<unsigned long long>,MTLStructType *::equal_to<unsigned long long>,MTLStructType *::less<MTLStructType *::set><MTLStructType *::pair<unsigned long long const,MTLStructType *::allocator<MTLStructType *::set>>>> *<unsigned long long,unsigned long long,MTLStructType *::vector<DYMTLOriginalProcessBuffer,MTLStructType *::less<MTLStructType *::set><MTLStructType *::vector>>,MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>,std::unordered_map<unsigned long long,MTLStructType *::set<DYMTLIABDecodingOp,MTLStructType *::less<MTLStructType *::set>,MTLStructType *::allocator<MTLStructType *::set>>,MTLStructType *::hash<unsigned long long>,MTLStructType *::equal_to<unsigned long long>,MTLStructType *::less<MTLStructType *::set><MTLStructType *::pair<unsigned long long const,MTLStructType *::allocator<MTLStructType *::set>>>> *<unsigned long long,unsigned long long,MTLStructType *::vector<DYMTLOriginalProcessBuffer,MTLStructType *::less<MTLStructType *::set><MTLStructType *::vector>>,MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>,std::unordered_map<unsigned long long,MTLStructType *::set<DYMTLIABDecodingOp,MTLStructType *::less<MTLStructType *::set>,MTLStructType *::allocator<MTLStructType *::set>>,MTLStructType *::hash<unsigned long long>,MTLStructType *::equal_to<unsigned long long>,MTLStructType *::less<MTLStructType *::set><MTLStructType *::pair<unsigned long long const,MTLStructType *::allocator<MTLStructType *::set>>>> *<unsigned long long,unsigned long long,MTLStructType *::vector<DYMTLOriginalProcessBuffer,MTLStructType *::less<MTLStructType *::set><MTLStructType *::vector>>,MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>,MTLStructType *::set const&,std::__1<unsigned long long,std::__1<unsigned long long,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>,MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>>>>,MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>>>>> *,objc_object  {objcproto9MTLBuffer}*,unsigned long long,_MTLArgumentBufferPatchingType *,DYIABPatcher *,DYCommandBufferUID)::$_3::operator()( *(a1 + 32),  v13,  v4 + [v14 argumentIndexStride] * v6,  0);
      }
    }
  }
}

void std::function<void ()(MTLArrayType *,unsigned long)>::operator()(uint64_t a1, void *a2, uint64_t a3)
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

uint64_t DYMTLDataTypeNeedsReencoding(uint64_t a1, uint64_t a2)
{
  result = 1;
  if (a1 > 77)
  {
    if (a1 == 78 || a1 == 79)
    {
      result = 4;
    }

    else
    {
      if (a1 != 80)
      {
        return result;
      }

      result = 5;
    }
  }

  else if (a1 == 58)
  {
    result = 0;
  }

  else if (a1 != 59)
  {
    if (a1 != 60)
    {
      return result;
    }

    result = 3;
  }

  return *(a2 + 8 * result) == 2;
}

void rencodeBufferData(unsigned long long,void *,objc_object  {objcproto18MTLArgumentEncoder}*,_MTLIndirectArgumentBufferLayout *,MTLStructType *,std::unordered_map<unsigned long long,MTLStructType *::set<DYMTLIABDecodingOp,MTLStructType *::less<MTLStructType *::set>,MTLStructType *::allocator<MTLStructType *::set>>,MTLStructType *::hash<unsigned long long>,MTLStructType *::equal_to<unsigned long long>,MTLStructType *::less<MTLStructType *::set><MTLStructType *::pair<unsigned long long const,MTLStructType *::allocator<MTLStructType *::set>>>> *,MTLStructType *::map<unsigned long long,MTLStructType *::vector<DYMTLOriginalProcessBuffer,MTLStructType *::less<MTLStructType *::set><MTLStructType *::vector>>,DYMTLIABDecodingOp<unsigned long long>,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,MTLStructType *::less<MTLStructType *::set><MTLStructType *::vector>>>> const&,std::__1<unsigned long long,unsigned long long,MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>> const&,std::__1<unsigned long long,MTLStructType *::map<unsigned long long,MTLStructType *::less<MTLStructType *::set><unsigned long long>>,MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,MTLStructType *::less<MTLStructType *::set><unsigned long long>>>> const&,std::__1<unsigned long long,objc_object  {objcproto15MTLSamplerState}* {__strong},MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,objc_object  {objcproto15MTLSamplerState}>>> &,std::__1<unsigned long long,unsigned long long,MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>> const,std::__1<unsigned long long,unsigned long long,MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>> const,std::__1<unsigned long long,unsigned long long,MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>> const,std::__1<unsigned long long,objc_object * {__strong},MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,objc_object>>> const&,std::unordered_map<unsigned long long,MTLStructType *::set<DYMTLIABDecodingOp,MTLStructType *::less<MTLStructType *::set>,MTLStructType *::allocator<MTLStructType *::set>>,MTLStructType *::hash<unsigned long long>,MTLStructType *::equal_to<unsigned long long>,MTLStructType *::less<MTLStructType *::set><MTLStructType *::pair<unsigned long long const,MTLStructType *::allocator<MTLStructType *::set>>>> *<unsigned long long,unsigned long long,MTLStructType *::vector<DYMTLOriginalProcessBuffer,MTLStructType *::less<MTLStructType *::set><MTLStructType *::vector>>,MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>> *,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>*,std::unordered_map<unsigned long long,MTLStructType *::set<DYMTLIABDecodingOp,MTLStructType *::less<MTLStructType *::set>,MTLStructType *::allocator<MTLStructType *::set>>,MTLStructType *::hash<unsigned long long>,MTLStructType *::equal_to<unsigned long long>,MTLStructType *::less<MTLStructType *::set><MTLStructType *::pair<unsigned long long const,MTLStructType *::allocator<MTLStructType *::set>>>> *<unsigned long long,unsigned long long,MTLStructType *::vector<DYMTLOriginalProcessBuffer,MTLStructType *::less<MTLStructType *::set><MTLStructType *::vector>>,MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>,std::unordered_map<unsigned long long,MTLStructType *::set<DYMTLIABDecodingOp,MTLStructType *::less<MTLStructType *::set>,MTLStructType *::allocator<MTLStructType *::set>>,MTLStructType *::hash<unsigned long long>,MTLStructType *::equal_to<unsigned long long>,MTLStructType *::less<MTLStructType *::set><MTLStructType *::pair<unsigned long long const,MTLStructType *::allocator<MTLStructType *::set>>>> *<unsigned long long,unsigned long long,MTLStructType *::vector<DYMTLOriginalProcessBuffer,MTLStructType *::less<MTLStructType *::set><MTLStructType *::vector>>,MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>,std::unordered_map<unsigned long long,MTLStructType *::set<DYMTLIABDecodingOp,MTLStructType *::less<MTLStructType *::set>,MTLStructType *::allocator<MTLStructType *::set>>,MTLStructType *::hash<unsigned long long>,MTLStructType *::equal_to<unsigned long long>,MTLStructType *::less<MTLStructType *::set><MTLStructType *::pair<unsigned long long const,MTLStructType *::allocator<MTLStructType *::set>>>> *<unsigned long long,unsigned long long,MTLStructType *::vector<DYMTLOriginalProcessBuffer,MTLStructType *::less<MTLStructType *::set><MTLStructType *::vector>>,MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>,std::unordered_map<unsigned long long,MTLStructType *::set<DYMTLIABDecodingOp,MTLStructType *::less<MTLStructType *::set>,MTLStructType *::allocator<MTLStructType *::set>>,MTLStructType *::hash<unsigned long long>,MTLStructType *::equal_to<unsigned long long>,MTLStructType *::less<MTLStructType *::set><MTLStructType *::pair<unsigned long long const,MTLStructType *::allocator<MTLStructType *::set>>>> *<unsigned long long,unsigned long long,MTLStructType *::vector<DYMTLOriginalProcessBuffer,MTLStructType *::less<MTLStructType *::set><MTLStructType *::vector>>,MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>,MTLStructType *::set const&,std::__1<unsigned long long,std::__1<unsigned long long,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>,MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>>>>,MTLStructType *::hash,MTLStructType *::equal_to,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,MTLStructType *::less<MTLStructType *::set><MTLStructType *::equal_to<unsigned long long><MTLStructType *::pair,unsigned long long>>>>>> *,objc_object  {objcproto9MTLBuffer}*,unsigned long long,_MTLArgumentBufferPatchingType *,DYIABPatcher *,DYCommandBufferUID)::$_3::operator()(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  if (a2 > 77)
  {
    switch(a2)
    {
      case 'N':
        v49 = [**a1 uniqueIdentifierForRenderPipelineAtIndex:a3 inIndirectArgumentBuffer:**(a1 + 8) atOffset:**(a1 + 16)];
        *&v116 = v49;
        v50 = *(a1 + 24);
        v51 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(**v50, *(v50 + 8));
        if (v51)
        {
          v52 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(v51 + 3, *(v50 + 16));
          if (v52)
          {
            v109 = a3;
            v53 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(v52 + 3, &v109);
            if (v53)
            {
              if (v53[3] == v49)
              {
                return;
              }
            }
          }
        }

        v54 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(*(a1 + 152), &v116);
        if (!v54)
        {
          return;
        }

        v55 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(*(a1 + 40), v54 + 3);
        if (!v55)
        {
          return;
        }

        v28 = v55[3];
        if (([(objc_object *)v28 conformsToProtocol:&unk_2860CADD8]& 1) == 0)
        {
          goto LABEL_78;
        }

        [**(a1 + 48) setRenderPipelineState:v28 atIndex:a3];
        v56 = DYMTLGetOriginalObject(v28);
        v57 = [v56 uniqueIdentifier];

        v117 = v57;
        v58 = v116;
        v59 = **(a1 + 160);
        v109 = &v117;
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v59, &v117)[3] = v58;
        v33 = v117;
        if (v117 == v116)
        {
          goto LABEL_78;
        }

        break;
      case 'O':
        v66 = [**a1 uniqueIdentifierForComputePipelineAtIndex:a3 inIndirectArgumentBuffer:**(a1 + 8) atOffset:**(a1 + 16)];
        *&v116 = v66;
        v67 = *(a1 + 24);
        v68 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(**v67, *(v67 + 8));
        if (v68)
        {
          v69 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(v68 + 3, *(v67 + 16));
          if (v69)
          {
            v109 = a3;
            v70 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(v69 + 3, &v109);
            if (v70)
            {
              if (v70[3] == v66)
              {
                return;
              }
            }
          }
        }

        v71 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(*(a1 + 168), &v116);
        if (!v71)
        {
          return;
        }

        v72 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(*(a1 + 40), v71 + 3);
        if (!v72)
        {
          return;
        }

        v28 = v72[3];
        if (([(objc_object *)v28 conformsToProtocol:&unk_2860CB080]& 1) == 0)
        {
          goto LABEL_78;
        }

        [**(a1 + 48) setComputePipelineState:v28 atIndex:a3];
        v73 = DYMTLGetOriginalObject(v28);
        v74 = [v73 uniqueIdentifier];

        v117 = v74;
        v75 = v116;
        v76 = **(a1 + 176);
        v109 = &v117;
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v76, &v117)[3] = v75;
        v33 = v117;
        if (v117 == v116)
        {
          goto LABEL_78;
        }

        break;
      case 'P':
        v21 = [**a1 uniqueIdentifierForIndirectCommandBufferAtIndex:a3 inIndirectArgumentBuffer:**(a1 + 8) atOffset:**(a1 + 16)];
        *&v116 = v21;
        v22 = *(a1 + 24);
        v23 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(**v22, *(v22 + 8));
        if (v23)
        {
          v24 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(v23 + 3, *(v22 + 16));
          if (v24)
          {
            v109 = a3;
            v25 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(v24 + 3, &v109);
            if (v25)
            {
              if (v25[3] == v21)
              {
                return;
              }
            }
          }
        }

        v26 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(*(a1 + 184), &v116);
        if (!v26)
        {
          return;
        }

        v27 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(*(a1 + 40), v26 + 3);
        if (!v27)
        {
          return;
        }

        v28 = v27[3];
        if (!NSClassFromString(&cfstr_Mtlioaccelindi.isa) || (NSClassFromString(&cfstr_Mtlioaccelindi.isa), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (([(objc_object *)v28 conformsToProtocol:&unk_2860CB2E8]& 1) == 0)
          {
            goto LABEL_78;
          }
        }

        [**(a1 + 48) setIndirectCommandBuffer:v28 atIndex:a3];
        v29 = DYMTLGetOriginalObject(v28);
        v30 = [v29 uniqueIdentifier];

        v117 = v30;
        v31 = v116;
        v32 = **(a1 + 192);
        v109 = &v117;
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v32, &v117)[3] = v31;
        v33 = v117;
        if (v117 == v116)
        {
          goto LABEL_78;
        }

        break;
      default:
        return;
    }

    v77 = **(a1 + 104);
    v109 = *(a1 + 64);
    v78 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v77, v109);
    v109 = *(a1 + 16);
    v79 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v78 + 3, v109);
    v115 = a3;
    v109 = &v115;
    v48 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v79 + 3, &v115);
    goto LABEL_71;
  }

  if (a2 == 58)
  {
    v35 = [**a1 uniqueIdentifierForTextureAtIndex:a3 inIndirectArgumentBuffer:**(a1 + 8) atOffset:**(a1 + 16)];
    *&v116 = v35;
    v36 = *(a1 + 24);
    v37 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(**v36, *(v36 + 8));
    if (v37)
    {
      v38 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(v37 + 3, *(v36 + 16));
      if (v38)
      {
        v109 = a3;
        v39 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(v38 + 3, &v109);
        if (v39)
        {
          if (v39[3] == v35)
          {
            return;
          }
        }
      }
    }

    v40 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(*(a1 + 112), &v116);
    if (!v40)
    {
      return;
    }

    v41 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(*(a1 + 40), v40 + 3);
    if (!v41)
    {
      return;
    }

    v28 = v41[3];
    if (([(objc_object *)v28 conformsToProtocol:&unk_2860C54E8]& 1) != 0)
    {
      [**(a1 + 48) setTexture:v28 atIndex:a3];
      v42 = v116;
      v43 = **(a1 + 120);
      v44 = DYMTLGetOriginalObject(v28);
      v117 = [v44 uniqueIdentifier];
      v109 = &v117;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v43, &v117)[3] = v42;

      v33 = [**a1 uniqueIdentifierForTextureAtIndex:a3 inIndirectArgumentBuffer:**(a1 + 8) atOffset:**(a1 + 16)];
      if (v33 != v116)
      {
LABEL_43:
        v45 = **(a1 + 104);
        v109 = *(a1 + 64);
        v46 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v45, v109);
        v109 = *(a1 + 16);
        v47 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v46 + 3, v109);
        v117 = a3;
        v109 = &v117;
        v48 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v47 + 3, &v117);
LABEL_71:
        v48[3] = v33;
      }
    }

LABEL_78:

    return;
  }

  if (a2 == 59)
  {
    v60 = [**a1 uniqueIdentifierForSamplerAtIndex:a3 inIndirectArgumentBuffer:**(a1 + 8) atOffset:**(a1 + 16)];
    *&v116 = v60;
    v61 = *(a1 + 24);
    v62 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(**v61, *(v61 + 8));
    if (v62)
    {
      v63 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(v62 + 3, *(v61 + 16));
      if (v63)
      {
        v109 = a3;
        v64 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(v63 + 3, &v109);
        if (v64)
        {
          if (v64[3] == v60)
          {
            return;
          }
        }
      }
    }

    v65 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(*(a1 + 128), &v116);
    if (!v65 || (v28 = v65[3]) == 0)
    {
      v80 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(*(a1 + 136), &v116);
      if (v80)
      {
        v81 = v80[3];
        v82 = v80[4];
        while (v81 != v82)
        {
          v109 = *v81;
          v83 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(*(a1 + 40), &v109);
          if (v83)
          {
            v103 = v83[3];
            v28 = v103;
            if (!v28)
            {
              goto LABEL_78;
            }

            v104 = *(a1 + 128);
            v109 = &v116;
            v105 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto15MTLSamplerState}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto15MTLSamplerState}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto15MTLSamplerState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto15MTLSamplerState}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(v104, &v116);
            objc_storeStrong(v105 + 3, v103);
            v106 = v116;
            v107 = **(a1 + 144);
            v108 = DYMTLGetOriginalObject(v28);
            v117 = [v108 uniqueIdentifier];
            v109 = &v117;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v107, &v117)[3] = v106;

            goto LABEL_59;
          }

          ++v81;
        }
      }

      v28 = 0;
      goto LABEL_78;
    }

LABEL_59:
    if ([(objc_object *)v28 conformsToProtocol:&unk_2860CB168])
    {
      [**(a1 + 48) setSamplerState:v28 atIndex:a3];
      v33 = [**a1 uniqueIdentifierForSamplerAtIndex:a3 inIndirectArgumentBuffer:**(a1 + 8) atOffset:**(a1 + 16)];
      if (v33 != v116)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_78;
  }

  if (a2 != 60)
  {
    return;
  }

  v7 = [**a1 virtualAddressForBufferAtIndex:a3 inIndirectArgumentBuffer:**(a1 + 8) atOffset:**(a1 + 16)];
  v8 = *(a1 + 24);
  v9 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(**v8, *(v8 + 8));
  if (v9)
  {
    v10 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(v9 + 3, *(v8 + 16));
    if (v10)
    {
      v109 = a3;
      v11 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(v10 + 3, &v109);
      if (v11)
      {
        if (v11[3] == v7)
        {
          return;
        }
      }
    }
  }

  v12 = *(a1 + 32);
  v13 = v12 + 1;
  v14 = v12[1];
  if (v14)
  {
    v15 = v12 + 1;
    do
    {
      v16 = v14[4];
      v17 = v16 > v7;
      v18 = v16 <= v7;
      if (v17)
      {
        v15 = v14;
      }

      v14 = v14[v18];
    }

    while (v14);
    if (v15 != v13)
    {
      if (v15 == *v12)
      {
        v20 = v15;
      }

      else
      {
        v19 = *v15;
        if (*v15)
        {
          do
          {
            v20 = v19;
            v19 = v19[1];
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v15[2];
            v34 = *v20 == v15;
            v15 = v20;
          }

          while (v34);
        }
      }

      goto LABEL_89;
    }

    v13 = v15;
  }

  if (v12[2])
  {
    v84 = *v13;
    if (*v13)
    {
      do
      {
        v20 = v84;
        v84 = v84[1];
      }

      while (v84);
    }

    else
    {
      do
      {
        v20 = v13[2];
        v34 = *v20 == v13;
        v13 = v20;
      }

      while (v34);
    }
  }

  else
  {
    v20 = v13;
  }

LABEL_89:
  v85 = v20[4];
  if (v85 <= v7)
  {
    *&v116 = 0;
    v86 = v20[5];
    v87 = v20[6];
    while (v86 != v87)
    {
      if (*(v86 + 1) + v85 > v7)
      {
        v116 = *v86;
        if (v116)
        {
          v88 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(*(a1 + 40), &v116);
          if (v88)
          {
            v89 = v88[3];
            if (([(objc_object *)v89 conformsToProtocol:&unk_2860CA848]& 1) != 0)
            {
              [**(a1 + 48) setBuffer:v89 offset:v7 - v85 atIndex:a3];
              if ([**(a1 + 56) patchingMode] == 1)
              {
                v90 = **(a1 + 16) + 8 * a3;
                v91 = **(a1 + 56);
                v109 = **(a1 + 64);
                v110 = v90;
                v111 = v116;
                __p = (v7 - v85);
                [v91 insertPatchingOp:&v109 commandBufferUid:{**(a1 + 72), *(*(a1 + 72) + 8)}];
              }

              v92 = DYMTLGetOriginalObject(v89);
              v93 = [v92 gpuAddress];

              v115 = v93;
              v94 = **(a1 + 80);
              v109 = &v115;
              std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v94, &v115)[5] = v85;
              if (a4)
              {
                __p = 0;
                v113 = 0;
                v114 = 0;
                v95 = *(a1 + 88);
                v96 = *(v95 + 8);
                v109 = (v7 - v85);
                v110 = v96;
                if (&v109 != v95)
                {
                  std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *(v95 + 24), *(v95 + 32), (*(v95 + 32) - *(v95 + 24)) >> 3);
                }

                v117 = a3;
                std::vector<unsigned long long>::emplace_back<unsigned long long>(&__p, &v117);
                LOBYTE(v111) = 1;
                v97 = **(a1 + 96);
                v117 = &v116;
                v98 = std::__hash_table<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v97, &v116);
                std::__tree<DYMTLIABDecodingOp>::__emplace_unique_key_args<DYMTLIABDecodingOp,DYMTLIABDecodingOp const&>((v98 + 3), &v109);
                if (__p)
                {
                  v113 = __p;
                  operator delete(__p);
                }
              }

              v99 = [**a1 virtualAddressForBufferAtIndex:a3 inIndirectArgumentBuffer:**(a1 + 8) atOffset:**(a1 + 16)];
              if (v7 != v99)
              {
                v100 = **(a1 + 104);
                v109 = *(a1 + 64);
                v101 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v100, v109);
                v109 = *(a1 + 16);
                v102 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v101 + 3, v109);
                v117 = a3;
                v109 = &v117;
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v102 + 3, &v117)[3] = v99;
              }
            }
          }
        }

        return;
      }

      ++v86;
    }
  }
}